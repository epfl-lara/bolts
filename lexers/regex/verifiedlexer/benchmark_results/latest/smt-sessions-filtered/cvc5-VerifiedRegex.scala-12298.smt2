; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690802 () Bool)

(assert start!690802)

(declare-fun b!7096683 () Bool)

(declare-fun res!2897938 () Bool)

(declare-fun e!4265866 () Bool)

(assert (=> b!7096683 (=> (not res!2897938) (not e!4265866))))

(declare-datatypes ((C!35946 0))(
  ( (C!35947 (val!27679 Int)) )
))
(declare-datatypes ((Regex!17838 0))(
  ( (ElementMatch!17838 (c!1324345 C!35946)) (Concat!26683 (regOne!36188 Regex!17838) (regTwo!36188 Regex!17838)) (EmptyExpr!17838) (Star!17838 (reg!18167 Regex!17838)) (EmptyLang!17838) (Union!17838 (regOne!36189 Regex!17838) (regTwo!36189 Regex!17838)) )
))
(declare-fun r!11554 () Regex!17838)

(declare-fun a!1901 () C!35946)

(assert (=> b!7096683 (= res!2897938 (and (or (not (is-ElementMatch!17838 r!11554)) (not (= (c!1324345 r!11554) a!1901))) (not (is-Union!17838 r!11554))))))

(declare-fun b!7096684 () Bool)

(declare-fun e!4265863 () Bool)

(declare-fun tp!1950181 () Bool)

(declare-fun tp!1950184 () Bool)

(assert (=> b!7096684 (= e!4265863 (and tp!1950181 tp!1950184))))

(declare-fun b!7096685 () Bool)

(declare-fun e!4265865 () Bool)

(declare-fun nullable!7478 (Regex!17838) Bool)

(assert (=> b!7096685 (= e!4265865 (not (nullable!7478 (regOne!36188 r!11554))))))

(declare-fun b!7096686 () Bool)

(declare-fun res!2897939 () Bool)

(assert (=> b!7096686 (=> (not res!2897939) (not e!4265866))))

(assert (=> b!7096686 (= res!2897939 (and (not (is-Concat!26683 r!11554)) (is-Star!17838 r!11554)))))

(declare-fun res!2897937 () Bool)

(assert (=> start!690802 (=> (not res!2897937) (not e!4265866))))

(declare-fun validRegex!9113 (Regex!17838) Bool)

(assert (=> start!690802 (= res!2897937 (validRegex!9113 r!11554))))

(assert (=> start!690802 e!4265866))

(assert (=> start!690802 e!4265863))

(declare-fun tp_is_empty!44909 () Bool)

(assert (=> start!690802 tp_is_empty!44909))

(declare-datatypes ((List!68801 0))(
  ( (Nil!68677) (Cons!68677 (h!75125 Regex!17838) (t!382604 List!68801)) )
))
(declare-datatypes ((Context!13668 0))(
  ( (Context!13669 (exprs!7334 List!68801)) )
))
(declare-fun c!9994 () Context!13668)

(declare-fun e!4265864 () Bool)

(declare-fun inv!87461 (Context!13668) Bool)

(assert (=> start!690802 (and (inv!87461 c!9994) e!4265864)))

(declare-fun b!7096687 () Bool)

(assert (=> b!7096687 (= e!4265863 tp_is_empty!44909)))

(declare-fun b!7096688 () Bool)

(declare-fun lambda!430548 () Int)

(declare-fun forall!16758 (List!68801 Int) Bool)

(assert (=> b!7096688 (= e!4265866 (not (forall!16758 (exprs!7334 c!9994) lambda!430548)))))

(declare-fun b!7096689 () Bool)

(declare-fun res!2897935 () Bool)

(assert (=> b!7096689 (=> (not res!2897935) (not e!4265866))))

(assert (=> b!7096689 (= res!2897935 e!4265865)))

(declare-fun res!2897936 () Bool)

(assert (=> b!7096689 (=> res!2897936 e!4265865)))

(assert (=> b!7096689 (= res!2897936 (not (is-Concat!26683 r!11554)))))

(declare-fun b!7096690 () Bool)

(declare-fun tp!1950186 () Bool)

(assert (=> b!7096690 (= e!4265863 tp!1950186)))

(declare-fun b!7096691 () Bool)

(declare-fun tp!1950183 () Bool)

(declare-fun tp!1950185 () Bool)

(assert (=> b!7096691 (= e!4265863 (and tp!1950183 tp!1950185))))

(declare-fun b!7096692 () Bool)

(declare-fun tp!1950182 () Bool)

(assert (=> b!7096692 (= e!4265864 tp!1950182)))

(assert (= (and start!690802 res!2897937) b!7096683))

(assert (= (and b!7096683 res!2897938) b!7096689))

(assert (= (and b!7096689 (not res!2897936)) b!7096685))

(assert (= (and b!7096689 res!2897935) b!7096686))

(assert (= (and b!7096686 res!2897939) b!7096688))

(assert (= (and start!690802 (is-ElementMatch!17838 r!11554)) b!7096687))

(assert (= (and start!690802 (is-Concat!26683 r!11554)) b!7096691))

(assert (= (and start!690802 (is-Star!17838 r!11554)) b!7096690))

(assert (= (and start!690802 (is-Union!17838 r!11554)) b!7096684))

(assert (= start!690802 b!7096692))

(declare-fun m!7824096 () Bool)

(assert (=> b!7096685 m!7824096))

(declare-fun m!7824098 () Bool)

(assert (=> start!690802 m!7824098))

(declare-fun m!7824100 () Bool)

(assert (=> start!690802 m!7824100))

(declare-fun m!7824102 () Bool)

(assert (=> b!7096688 m!7824102))

(push 1)

(assert (not b!7096690))

(assert (not start!690802))

(assert (not b!7096685))

(assert tp_is_empty!44909)

(assert (not b!7096691))

(assert (not b!7096684))

(assert (not b!7096692))

(assert (not b!7096688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2217933 () Bool)

(declare-fun nullableFct!2875 (Regex!17838) Bool)

(assert (=> d!2217933 (= (nullable!7478 (regOne!36188 r!11554)) (nullableFct!2875 (regOne!36188 r!11554)))))

(declare-fun bs!1883973 () Bool)

(assert (= bs!1883973 d!2217933))

(declare-fun m!7824112 () Bool)

(assert (=> bs!1883973 m!7824112))

(assert (=> b!7096685 d!2217933))

(declare-fun b!7096747 () Bool)

(declare-fun e!4265900 () Bool)

(declare-fun e!4265902 () Bool)

(assert (=> b!7096747 (= e!4265900 e!4265902)))

(declare-fun c!1324351 () Bool)

(assert (=> b!7096747 (= c!1324351 (is-Star!17838 r!11554))))

(declare-fun b!7096748 () Bool)

(declare-fun e!4265899 () Bool)

(assert (=> b!7096748 (= e!4265902 e!4265899)))

(declare-fun c!1324352 () Bool)

(assert (=> b!7096748 (= c!1324352 (is-Union!17838 r!11554))))

(declare-fun b!7096749 () Bool)

(declare-fun e!4265905 () Bool)

(declare-fun call!645914 () Bool)

(assert (=> b!7096749 (= e!4265905 call!645914)))

(declare-fun bm!645907 () Bool)

(declare-fun call!645913 () Bool)

(declare-fun call!645912 () Bool)

(assert (=> bm!645907 (= call!645913 call!645912)))

(declare-fun b!7096750 () Bool)

(declare-fun e!4265904 () Bool)

(assert (=> b!7096750 (= e!4265904 e!4265905)))

(declare-fun res!2897974 () Bool)

(assert (=> b!7096750 (=> (not res!2897974) (not e!4265905))))

(assert (=> b!7096750 (= res!2897974 call!645913)))

(declare-fun d!2217937 () Bool)

(declare-fun res!2897975 () Bool)

(assert (=> d!2217937 (=> res!2897975 e!4265900)))

(assert (=> d!2217937 (= res!2897975 (is-ElementMatch!17838 r!11554))))

(assert (=> d!2217937 (= (validRegex!9113 r!11554) e!4265900)))

(declare-fun bm!645908 () Bool)

(assert (=> bm!645908 (= call!645912 (validRegex!9113 (ite c!1324351 (reg!18167 r!11554) (ite c!1324352 (regTwo!36189 r!11554) (regOne!36188 r!11554)))))))

(declare-fun b!7096751 () Bool)

(declare-fun e!4265901 () Bool)

(assert (=> b!7096751 (= e!4265901 call!645913)))

(declare-fun b!7096752 () Bool)

(declare-fun e!4265903 () Bool)

(assert (=> b!7096752 (= e!4265903 call!645912)))

(declare-fun bm!645909 () Bool)

(assert (=> bm!645909 (= call!645914 (validRegex!9113 (ite c!1324352 (regOne!36189 r!11554) (regTwo!36188 r!11554))))))

(declare-fun b!7096753 () Bool)

(declare-fun res!2897972 () Bool)

(assert (=> b!7096753 (=> (not res!2897972) (not e!4265901))))

(assert (=> b!7096753 (= res!2897972 call!645914)))

(assert (=> b!7096753 (= e!4265899 e!4265901)))

(declare-fun b!7096754 () Bool)

(declare-fun res!2897973 () Bool)

(assert (=> b!7096754 (=> res!2897973 e!4265904)))

(assert (=> b!7096754 (= res!2897973 (not (is-Concat!26683 r!11554)))))

(assert (=> b!7096754 (= e!4265899 e!4265904)))

(declare-fun b!7096755 () Bool)

(assert (=> b!7096755 (= e!4265902 e!4265903)))

(declare-fun res!2897971 () Bool)

(assert (=> b!7096755 (= res!2897971 (not (nullable!7478 (reg!18167 r!11554))))))

(assert (=> b!7096755 (=> (not res!2897971) (not e!4265903))))

(assert (= (and d!2217937 (not res!2897975)) b!7096747))

(assert (= (and b!7096747 c!1324351) b!7096755))

(assert (= (and b!7096747 (not c!1324351)) b!7096748))

(assert (= (and b!7096755 res!2897971) b!7096752))

(assert (= (and b!7096748 c!1324352) b!7096753))

(assert (= (and b!7096748 (not c!1324352)) b!7096754))

(assert (= (and b!7096753 res!2897972) b!7096751))

(assert (= (and b!7096754 (not res!2897973)) b!7096750))

(assert (= (and b!7096750 res!2897974) b!7096749))

(assert (= (or b!7096753 b!7096749) bm!645909))

(assert (= (or b!7096751 b!7096750) bm!645907))

(assert (= (or b!7096752 bm!645907) bm!645908))

(declare-fun m!7824120 () Bool)

(assert (=> bm!645908 m!7824120))

(declare-fun m!7824122 () Bool)

(assert (=> bm!645909 m!7824122))

(declare-fun m!7824124 () Bool)

(assert (=> b!7096755 m!7824124))

(assert (=> start!690802 d!2217937))

(declare-fun bs!1883975 () Bool)

(declare-fun d!2217943 () Bool)

(assert (= bs!1883975 (and d!2217943 b!7096688)))

(declare-fun lambda!430554 () Int)

(assert (=> bs!1883975 (= lambda!430554 lambda!430548)))

(assert (=> d!2217943 (= (inv!87461 c!9994) (forall!16758 (exprs!7334 c!9994) lambda!430554))))

(declare-fun bs!1883976 () Bool)

(assert (= bs!1883976 d!2217943))

(declare-fun m!7824126 () Bool)

(assert (=> bs!1883976 m!7824126))

(assert (=> start!690802 d!2217943))

(declare-fun d!2217945 () Bool)

(declare-fun res!2897990 () Bool)

(declare-fun e!4265924 () Bool)

(assert (=> d!2217945 (=> res!2897990 e!4265924)))

(assert (=> d!2217945 (= res!2897990 (is-Nil!68677 (exprs!7334 c!9994)))))

(assert (=> d!2217945 (= (forall!16758 (exprs!7334 c!9994) lambda!430548) e!4265924)))

(declare-fun b!7096778 () Bool)

(declare-fun e!4265925 () Bool)

(assert (=> b!7096778 (= e!4265924 e!4265925)))

(declare-fun res!2897991 () Bool)

(assert (=> b!7096778 (=> (not res!2897991) (not e!4265925))))

(declare-fun dynLambda!28023 (Int Regex!17838) Bool)

(assert (=> b!7096778 (= res!2897991 (dynLambda!28023 lambda!430548 (h!75125 (exprs!7334 c!9994))))))

(declare-fun b!7096779 () Bool)

(assert (=> b!7096779 (= e!4265925 (forall!16758 (t!382604 (exprs!7334 c!9994)) lambda!430548))))

(assert (= (and d!2217945 (not res!2897990)) b!7096778))

(assert (= (and b!7096778 res!2897991) b!7096779))

(declare-fun b_lambda!271171 () Bool)

(assert (=> (not b_lambda!271171) (not b!7096778)))

(declare-fun m!7824128 () Bool)

(assert (=> b!7096778 m!7824128))

(declare-fun m!7824130 () Bool)

(assert (=> b!7096779 m!7824130))

(assert (=> b!7096688 d!2217945))

(declare-fun b!7096792 () Bool)

(declare-fun e!4265928 () Bool)

(declare-fun tp!1950218 () Bool)

(assert (=> b!7096792 (= e!4265928 tp!1950218)))

(declare-fun b!7096793 () Bool)

(declare-fun tp!1950219 () Bool)

(declare-fun tp!1950216 () Bool)

(assert (=> b!7096793 (= e!4265928 (and tp!1950219 tp!1950216))))

(declare-fun b!7096790 () Bool)

(assert (=> b!7096790 (= e!4265928 tp_is_empty!44909)))

(assert (=> b!7096691 (= tp!1950183 e!4265928)))

(declare-fun b!7096791 () Bool)

(declare-fun tp!1950215 () Bool)

(declare-fun tp!1950217 () Bool)

(assert (=> b!7096791 (= e!4265928 (and tp!1950215 tp!1950217))))

(assert (= (and b!7096691 (is-ElementMatch!17838 (regOne!36188 r!11554))) b!7096790))

(assert (= (and b!7096691 (is-Concat!26683 (regOne!36188 r!11554))) b!7096791))

(assert (= (and b!7096691 (is-Star!17838 (regOne!36188 r!11554))) b!7096792))

(assert (= (and b!7096691 (is-Union!17838 (regOne!36188 r!11554))) b!7096793))

(declare-fun b!7096796 () Bool)

(declare-fun e!4265929 () Bool)

(declare-fun tp!1950223 () Bool)

(assert (=> b!7096796 (= e!4265929 tp!1950223)))

(declare-fun b!7096797 () Bool)

(declare-fun tp!1950224 () Bool)

(declare-fun tp!1950221 () Bool)

(assert (=> b!7096797 (= e!4265929 (and tp!1950224 tp!1950221))))

(declare-fun b!7096794 () Bool)

(assert (=> b!7096794 (= e!4265929 tp_is_empty!44909)))

(assert (=> b!7096691 (= tp!1950185 e!4265929)))

(declare-fun b!7096795 () Bool)

(declare-fun tp!1950220 () Bool)

(declare-fun tp!1950222 () Bool)

(assert (=> b!7096795 (= e!4265929 (and tp!1950220 tp!1950222))))

(assert (= (and b!7096691 (is-ElementMatch!17838 (regTwo!36188 r!11554))) b!7096794))

(assert (= (and b!7096691 (is-Concat!26683 (regTwo!36188 r!11554))) b!7096795))

(assert (= (and b!7096691 (is-Star!17838 (regTwo!36188 r!11554))) b!7096796))

(assert (= (and b!7096691 (is-Union!17838 (regTwo!36188 r!11554))) b!7096797))

(declare-fun b!7096802 () Bool)

(declare-fun e!4265932 () Bool)

(declare-fun tp!1950229 () Bool)

(declare-fun tp!1950230 () Bool)

(assert (=> b!7096802 (= e!4265932 (and tp!1950229 tp!1950230))))

(assert (=> b!7096692 (= tp!1950182 e!4265932)))

(assert (= (and b!7096692 (is-Cons!68677 (exprs!7334 c!9994))) b!7096802))

(declare-fun b!7096805 () Bool)

(declare-fun e!4265933 () Bool)

(declare-fun tp!1950234 () Bool)

(assert (=> b!7096805 (= e!4265933 tp!1950234)))

(declare-fun b!7096806 () Bool)

(declare-fun tp!1950235 () Bool)

(declare-fun tp!1950232 () Bool)

(assert (=> b!7096806 (= e!4265933 (and tp!1950235 tp!1950232))))

(declare-fun b!7096803 () Bool)

(assert (=> b!7096803 (= e!4265933 tp_is_empty!44909)))

(assert (=> b!7096684 (= tp!1950181 e!4265933)))

(declare-fun b!7096804 () Bool)

(declare-fun tp!1950231 () Bool)

(declare-fun tp!1950233 () Bool)

(assert (=> b!7096804 (= e!4265933 (and tp!1950231 tp!1950233))))

(assert (= (and b!7096684 (is-ElementMatch!17838 (regOne!36189 r!11554))) b!7096803))

(assert (= (and b!7096684 (is-Concat!26683 (regOne!36189 r!11554))) b!7096804))

(assert (= (and b!7096684 (is-Star!17838 (regOne!36189 r!11554))) b!7096805))

(assert (= (and b!7096684 (is-Union!17838 (regOne!36189 r!11554))) b!7096806))

(declare-fun b!7096809 () Bool)

(declare-fun e!4265934 () Bool)

(declare-fun tp!1950239 () Bool)

(assert (=> b!7096809 (= e!4265934 tp!1950239)))

(declare-fun b!7096810 () Bool)

(declare-fun tp!1950240 () Bool)

(declare-fun tp!1950237 () Bool)

(assert (=> b!7096810 (= e!4265934 (and tp!1950240 tp!1950237))))

(declare-fun b!7096807 () Bool)

(assert (=> b!7096807 (= e!4265934 tp_is_empty!44909)))

(assert (=> b!7096684 (= tp!1950184 e!4265934)))

(declare-fun b!7096808 () Bool)

(declare-fun tp!1950236 () Bool)

(declare-fun tp!1950238 () Bool)

(assert (=> b!7096808 (= e!4265934 (and tp!1950236 tp!1950238))))

(assert (= (and b!7096684 (is-ElementMatch!17838 (regTwo!36189 r!11554))) b!7096807))

(assert (= (and b!7096684 (is-Concat!26683 (regTwo!36189 r!11554))) b!7096808))

(assert (= (and b!7096684 (is-Star!17838 (regTwo!36189 r!11554))) b!7096809))

(assert (= (and b!7096684 (is-Union!17838 (regTwo!36189 r!11554))) b!7096810))

(declare-fun b!7096813 () Bool)

(declare-fun e!4265935 () Bool)

(declare-fun tp!1950244 () Bool)

(assert (=> b!7096813 (= e!4265935 tp!1950244)))

(declare-fun b!7096814 () Bool)

(declare-fun tp!1950245 () Bool)

(declare-fun tp!1950242 () Bool)

(assert (=> b!7096814 (= e!4265935 (and tp!1950245 tp!1950242))))

(declare-fun b!7096811 () Bool)

(assert (=> b!7096811 (= e!4265935 tp_is_empty!44909)))

(assert (=> b!7096690 (= tp!1950186 e!4265935)))

(declare-fun b!7096812 () Bool)

(declare-fun tp!1950241 () Bool)

(declare-fun tp!1950243 () Bool)

(assert (=> b!7096812 (= e!4265935 (and tp!1950241 tp!1950243))))

(assert (= (and b!7096690 (is-ElementMatch!17838 (reg!18167 r!11554))) b!7096811))

(assert (= (and b!7096690 (is-Concat!26683 (reg!18167 r!11554))) b!7096812))

(assert (= (and b!7096690 (is-Star!17838 (reg!18167 r!11554))) b!7096813))

(assert (= (and b!7096690 (is-Union!17838 (reg!18167 r!11554))) b!7096814))

(declare-fun b_lambda!271173 () Bool)

(assert (= b_lambda!271171 (or b!7096688 b_lambda!271173)))

(declare-fun bs!1883977 () Bool)

(declare-fun d!2217947 () Bool)

(assert (= bs!1883977 (and d!2217947 b!7096688)))

(assert (=> bs!1883977 (= (dynLambda!28023 lambda!430548 (h!75125 (exprs!7334 c!9994))) (validRegex!9113 (h!75125 (exprs!7334 c!9994))))))

(declare-fun m!7824132 () Bool)

(assert (=> bs!1883977 m!7824132))

(assert (=> b!7096778 d!2217947))

(push 1)

(assert (not b!7096813))

(assert (not bm!645908))

(assert (not b!7096792))

(assert (not b!7096779))

(assert (not b!7096809))

(assert (not b!7096796))

(assert (not b!7096804))

(assert (not b!7096795))

(assert (not b_lambda!271173))

(assert (not d!2217933))

(assert (not b!7096806))

(assert (not b!7096814))

(assert (not b!7096805))

(assert (not b!7096808))

(assert (not b!7096791))

(assert (not b!7096810))

(assert (not d!2217943))

(assert (not b!7096797))

(assert (not bs!1883977))

(assert (not b!7096812))

(assert (not b!7096793))

(assert (not bm!645909))

(assert (not b!7096802))

(assert tp_is_empty!44909)

(assert (not b!7096755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

