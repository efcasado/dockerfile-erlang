TEST_VSNS := $(patsubst %,test-%,$(VERSIONS))

.PHONE: test $(TEST_VSNS)

test: $(TEST_VSNS)

test-%-slim:
	$(call assert_vsn,$*)

test-%:
	$(call assert_vsn,$*)

define erl_eval
	docker run --rm -it efcasado/erlang:$(1) erl -noshell -eval $(2) -s init stop
endef

# This allows us to scape the ',' character within a GNU Make file
, := ,

define assert_vsn
	@if [[ $(1) == R* ]]; then \
		$(call erl_eval,$(1),"\"$(1)\" = erlang:system_info(otp_release)$(,) halt(0)."); \
	else \
		$(call erl_eval,$(1),"{ok$(,) <<\"$(1)\\n\">>} = file:read_file(filename:join([code:root_dir()$(,) \"releases\"$(,) erlang:system_info(otp_release)$(,) \"OTP_VERSION\"]))$(,) halt(0)."); \
	fi
endef
