TEST_VSNS := $(patsubst %,test-%,$(VERSIONS))

.PHONE: test $(TEST_VSNS)

test: $(TEST_VSNS)

test-%:
	$(call assert_vsn,$*)

define erl_eval
	docker run --rm -it efcasado/erlang:$(1) erl -noshell -eval $(2) -s init stop
endef

# This allows us to scape the ',' character within a GNU Make file
, := ,

define assert_vsn
	@VSN=`echo $(1) | sed "s/\(.*\)-slim/\1/g"`; \
	echo "[TEST] assert_vsn $(1) $$VSN"; \
	case $$VSN in \
		R*) $(call erl_eval,$(1),"\"$$VSN\" = erlang:system_info(otp_release)$(,) halt(0).") ;; \
		*) $(call erl_eval,$(1),"{ok$(,) <<\"$$VSN\\n\">>} = file:read_file(filename:join([code:root_dir()$(,) \"releases\"$(,) erlang:system_info(otp_release)$(,) \"OTP_VERSION\"]))$(,) halt(0).") ;; \
	esac
endef
