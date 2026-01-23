; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689646 () Bool)

(assert start!689646)

(declare-fun b!7085303 () Bool)

(declare-fun e!4259642 () Bool)

(declare-fun tp!1945104 () Bool)

(declare-fun tp!1945105 () Bool)

(assert (=> b!7085303 (= e!4259642 (and tp!1945104 tp!1945105))))

(declare-fun b!7085304 () Bool)

(declare-fun tp!1945106 () Bool)

(declare-fun tp!1945102 () Bool)

(assert (=> b!7085304 (= e!4259642 (and tp!1945106 tp!1945102))))

(declare-fun b!7085305 () Bool)

(declare-fun e!4259641 () Bool)

(declare-datatypes ((C!35746 0))(
  ( (C!35747 (val!27579 Int)) )
))
(declare-datatypes ((Regex!17738 0))(
  ( (ElementMatch!17738 (c!1322429 C!35746)) (Concat!26583 (regOne!35988 Regex!17738) (regTwo!35988 Regex!17738)) (EmptyExpr!17738) (Star!17738 (reg!18067 Regex!17738)) (EmptyLang!17738) (Union!17738 (regOne!35989 Regex!17738) (regTwo!35989 Regex!17738)) )
))
(declare-datatypes ((List!68701 0))(
  ( (Nil!68577) (Cons!68577 (h!75025 Regex!17738) (t!382486 List!68701)) )
))
(declare-datatypes ((Context!13468 0))(
  ( (Context!13469 (exprs!7234 List!68701)) )
))
(declare-fun c!9994 () Context!13468)

(declare-fun lambda!428998 () Int)

(declare-fun forall!16688 (List!68701 Int) Bool)

(assert (=> b!7085305 (= e!4259641 (not (forall!16688 (exprs!7234 c!9994) lambda!428998)))))

(declare-fun b!7085306 () Bool)

(declare-fun tp!1945103 () Bool)

(assert (=> b!7085306 (= e!4259642 tp!1945103)))

(declare-fun b!7085307 () Bool)

(declare-fun res!2894424 () Bool)

(assert (=> b!7085307 (=> (not res!2894424) (not e!4259641))))

(declare-fun r!11554 () Regex!17738)

(declare-fun a!1901 () C!35746)

(assert (=> b!7085307 (= res!2894424 (and (or (not (is-ElementMatch!17738 r!11554)) (not (= (c!1322429 r!11554) a!1901))) (is-Union!17738 r!11554)))))

(declare-fun res!2894423 () Bool)

(assert (=> start!689646 (=> (not res!2894423) (not e!4259641))))

(declare-fun validRegex!9013 (Regex!17738) Bool)

(assert (=> start!689646 (= res!2894423 (validRegex!9013 r!11554))))

(assert (=> start!689646 e!4259641))

(assert (=> start!689646 e!4259642))

(declare-fun tp_is_empty!44709 () Bool)

(assert (=> start!689646 tp_is_empty!44709))

(declare-fun e!4259643 () Bool)

(declare-fun inv!87211 (Context!13468) Bool)

(assert (=> start!689646 (and (inv!87211 c!9994) e!4259643)))

(declare-fun b!7085308 () Bool)

(assert (=> b!7085308 (= e!4259642 tp_is_empty!44709)))

(declare-fun b!7085309 () Bool)

(declare-fun tp!1945101 () Bool)

(assert (=> b!7085309 (= e!4259643 tp!1945101)))

(assert (= (and start!689646 res!2894423) b!7085307))

(assert (= (and b!7085307 res!2894424) b!7085305))

(assert (= (and start!689646 (is-ElementMatch!17738 r!11554)) b!7085308))

(assert (= (and start!689646 (is-Concat!26583 r!11554)) b!7085303))

(assert (= (and start!689646 (is-Star!17738 r!11554)) b!7085306))

(assert (= (and start!689646 (is-Union!17738 r!11554)) b!7085304))

(assert (= start!689646 b!7085309))

(declare-fun m!7816712 () Bool)

(assert (=> b!7085305 m!7816712))

(declare-fun m!7816714 () Bool)

(assert (=> start!689646 m!7816714))

(declare-fun m!7816716 () Bool)

(assert (=> start!689646 m!7816716))

(push 1)

(assert (not b!7085306))

(assert (not b!7085304))

(assert (not start!689646))

(assert (not b!7085303))

(assert (not b!7085305))

(assert (not b!7085309))

(assert tp_is_empty!44709)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1322436 () Bool)

(declare-fun call!643832 () Bool)

(declare-fun bm!643825 () Bool)

(declare-fun c!1322435 () Bool)

(assert (=> bm!643825 (= call!643832 (validRegex!9013 (ite c!1322435 (reg!18067 r!11554) (ite c!1322436 (regTwo!35989 r!11554) (regOne!35988 r!11554)))))))

(declare-fun b!7085353 () Bool)

(declare-fun res!2894447 () Bool)

(declare-fun e!4259671 () Bool)

(assert (=> b!7085353 (=> (not res!2894447) (not e!4259671))))

(declare-fun call!643830 () Bool)

(assert (=> b!7085353 (= res!2894447 call!643830)))

(declare-fun e!4259677 () Bool)

(assert (=> b!7085353 (= e!4259677 e!4259671)))

(declare-fun b!7085354 () Bool)

(declare-fun e!4259672 () Bool)

(declare-fun e!4259675 () Bool)

(assert (=> b!7085354 (= e!4259672 e!4259675)))

(declare-fun res!2894445 () Bool)

(declare-fun nullable!7389 (Regex!17738) Bool)

(assert (=> b!7085354 (= res!2894445 (not (nullable!7389 (reg!18067 r!11554))))))

(assert (=> b!7085354 (=> (not res!2894445) (not e!4259675))))

(declare-fun b!7085355 () Bool)

(declare-fun e!4259674 () Bool)

(assert (=> b!7085355 (= e!4259674 call!643830)))

(declare-fun b!7085356 () Bool)

(assert (=> b!7085356 (= e!4259672 e!4259677)))

(assert (=> b!7085356 (= c!1322436 (is-Union!17738 r!11554))))

(declare-fun b!7085358 () Bool)

(declare-fun e!4259673 () Bool)

(assert (=> b!7085358 (= e!4259673 e!4259674)))

(declare-fun res!2894449 () Bool)

(assert (=> b!7085358 (=> (not res!2894449) (not e!4259674))))

(declare-fun call!643831 () Bool)

(assert (=> b!7085358 (= res!2894449 call!643831)))

(declare-fun b!7085359 () Bool)

(assert (=> b!7085359 (= e!4259671 call!643831)))

(declare-fun b!7085360 () Bool)

(declare-fun e!4259676 () Bool)

(assert (=> b!7085360 (= e!4259676 e!4259672)))

(assert (=> b!7085360 (= c!1322435 (is-Star!17738 r!11554))))

(declare-fun bm!643826 () Bool)

(assert (=> bm!643826 (= call!643830 (validRegex!9013 (ite c!1322436 (regOne!35989 r!11554) (regTwo!35988 r!11554))))))

(declare-fun d!2215951 () Bool)

(declare-fun res!2894446 () Bool)

(assert (=> d!2215951 (=> res!2894446 e!4259676)))

(assert (=> d!2215951 (= res!2894446 (is-ElementMatch!17738 r!11554))))

(assert (=> d!2215951 (= (validRegex!9013 r!11554) e!4259676)))

(declare-fun b!7085357 () Bool)

(declare-fun res!2894448 () Bool)

(assert (=> b!7085357 (=> res!2894448 e!4259673)))

(assert (=> b!7085357 (= res!2894448 (not (is-Concat!26583 r!11554)))))

(assert (=> b!7085357 (= e!4259677 e!4259673)))

(declare-fun bm!643827 () Bool)

(assert (=> bm!643827 (= call!643831 call!643832)))

(declare-fun b!7085361 () Bool)

(assert (=> b!7085361 (= e!4259675 call!643832)))

(assert (= (and d!2215951 (not res!2894446)) b!7085360))

(assert (= (and b!7085360 c!1322435) b!7085354))

(assert (= (and b!7085360 (not c!1322435)) b!7085356))

(assert (= (and b!7085354 res!2894445) b!7085361))

(assert (= (and b!7085356 c!1322436) b!7085353))

(assert (= (and b!7085356 (not c!1322436)) b!7085357))

(assert (= (and b!7085353 res!2894447) b!7085359))

(assert (= (and b!7085357 (not res!2894448)) b!7085358))

(assert (= (and b!7085358 res!2894449) b!7085355))

(assert (= (or b!7085353 b!7085355) bm!643826))

(assert (= (or b!7085359 b!7085358) bm!643827))

(assert (= (or b!7085361 bm!643827) bm!643825))

(declare-fun m!7816724 () Bool)

(assert (=> bm!643825 m!7816724))

(declare-fun m!7816726 () Bool)

(assert (=> b!7085354 m!7816726))

(declare-fun m!7816728 () Bool)

(assert (=> bm!643826 m!7816728))

(assert (=> start!689646 d!2215951))

(declare-fun bs!1882899 () Bool)

(declare-fun d!2215955 () Bool)

(assert (= bs!1882899 (and d!2215955 b!7085305)))

(declare-fun lambda!429004 () Int)

(assert (=> bs!1882899 (= lambda!429004 lambda!428998)))

(assert (=> d!2215955 (= (inv!87211 c!9994) (forall!16688 (exprs!7234 c!9994) lambda!429004))))

(declare-fun bs!1882900 () Bool)

(assert (= bs!1882900 d!2215955))

(declare-fun m!7816734 () Bool)

(assert (=> bs!1882900 m!7816734))

(assert (=> start!689646 d!2215955))

(declare-fun d!2215959 () Bool)

(declare-fun res!2894456 () Bool)

(declare-fun e!4259684 () Bool)

(assert (=> d!2215959 (=> res!2894456 e!4259684)))

(assert (=> d!2215959 (= res!2894456 (is-Nil!68577 (exprs!7234 c!9994)))))

(assert (=> d!2215959 (= (forall!16688 (exprs!7234 c!9994) lambda!428998) e!4259684)))

(declare-fun b!7085368 () Bool)

(declare-fun e!4259685 () Bool)

(assert (=> b!7085368 (= e!4259684 e!4259685)))

(declare-fun res!2894457 () Bool)

(assert (=> b!7085368 (=> (not res!2894457) (not e!4259685))))

(declare-fun dynLambda!27968 (Int Regex!17738) Bool)

(assert (=> b!7085368 (= res!2894457 (dynLambda!27968 lambda!428998 (h!75025 (exprs!7234 c!9994))))))

(declare-fun b!7085369 () Bool)

(assert (=> b!7085369 (= e!4259685 (forall!16688 (t!382486 (exprs!7234 c!9994)) lambda!428998))))

(assert (= (and d!2215959 (not res!2894456)) b!7085368))

(assert (= (and b!7085368 res!2894457) b!7085369))

(declare-fun b_lambda!270835 () Bool)

(assert (=> (not b_lambda!270835) (not b!7085368)))

(declare-fun m!7816736 () Bool)

(assert (=> b!7085368 m!7816736))

(declare-fun m!7816738 () Bool)

(assert (=> b!7085369 m!7816738))

(assert (=> b!7085305 d!2215959))

(declare-fun b!7085384 () Bool)

(declare-fun e!4259690 () Bool)

(declare-fun tp!1945135 () Bool)

(assert (=> b!7085384 (= e!4259690 tp!1945135)))

(declare-fun b!7085382 () Bool)

(assert (=> b!7085382 (= e!4259690 tp_is_empty!44709)))

(declare-fun b!7085385 () Bool)

(declare-fun tp!1945138 () Bool)

(declare-fun tp!1945136 () Bool)

(assert (=> b!7085385 (= e!4259690 (and tp!1945138 tp!1945136))))

(assert (=> b!7085303 (= tp!1945104 e!4259690)))

(declare-fun b!7085383 () Bool)

(declare-fun tp!1945139 () Bool)

(declare-fun tp!1945137 () Bool)

(assert (=> b!7085383 (= e!4259690 (and tp!1945139 tp!1945137))))

(assert (= (and b!7085303 (is-ElementMatch!17738 (regOne!35988 r!11554))) b!7085382))

(assert (= (and b!7085303 (is-Concat!26583 (regOne!35988 r!11554))) b!7085383))

(assert (= (and b!7085303 (is-Star!17738 (regOne!35988 r!11554))) b!7085384))

(assert (= (and b!7085303 (is-Union!17738 (regOne!35988 r!11554))) b!7085385))

(declare-fun b!7085392 () Bool)

(declare-fun e!4259693 () Bool)

(declare-fun tp!1945140 () Bool)

(assert (=> b!7085392 (= e!4259693 tp!1945140)))

(declare-fun b!7085390 () Bool)

(assert (=> b!7085390 (= e!4259693 tp_is_empty!44709)))

(declare-fun b!7085393 () Bool)

(declare-fun tp!1945143 () Bool)

(declare-fun tp!1945141 () Bool)

(assert (=> b!7085393 (= e!4259693 (and tp!1945143 tp!1945141))))

(assert (=> b!7085303 (= tp!1945105 e!4259693)))

(declare-fun b!7085391 () Bool)

(declare-fun tp!1945144 () Bool)

(declare-fun tp!1945142 () Bool)

(assert (=> b!7085391 (= e!4259693 (and tp!1945144 tp!1945142))))

(assert (= (and b!7085303 (is-ElementMatch!17738 (regTwo!35988 r!11554))) b!7085390))

(assert (= (and b!7085303 (is-Concat!26583 (regTwo!35988 r!11554))) b!7085391))

(assert (= (and b!7085303 (is-Star!17738 (regTwo!35988 r!11554))) b!7085392))

(assert (= (and b!7085303 (is-Union!17738 (regTwo!35988 r!11554))) b!7085393))

(declare-fun b!7085410 () Bool)

(declare-fun e!4259706 () Bool)

(declare-fun tp!1945149 () Bool)

(declare-fun tp!1945150 () Bool)

(assert (=> b!7085410 (= e!4259706 (and tp!1945149 tp!1945150))))

(assert (=> b!7085309 (= tp!1945101 e!4259706)))

(assert (= (and b!7085309 (is-Cons!68577 (exprs!7234 c!9994))) b!7085410))

(declare-fun b!7085413 () Bool)

(declare-fun e!4259707 () Bool)

(declare-fun tp!1945151 () Bool)

(assert (=> b!7085413 (= e!4259707 tp!1945151)))

(declare-fun b!7085411 () Bool)

(assert (=> b!7085411 (= e!4259707 tp_is_empty!44709)))

(declare-fun b!7085414 () Bool)

(declare-fun tp!1945154 () Bool)

(declare-fun tp!1945152 () Bool)

(assert (=> b!7085414 (= e!4259707 (and tp!1945154 tp!1945152))))

(assert (=> b!7085304 (= tp!1945106 e!4259707)))

(declare-fun b!7085412 () Bool)

(declare-fun tp!1945155 () Bool)

(declare-fun tp!1945153 () Bool)

(assert (=> b!7085412 (= e!4259707 (and tp!1945155 tp!1945153))))

(assert (= (and b!7085304 (is-ElementMatch!17738 (regOne!35989 r!11554))) b!7085411))

(assert (= (and b!7085304 (is-Concat!26583 (regOne!35989 r!11554))) b!7085412))

(assert (= (and b!7085304 (is-Star!17738 (regOne!35989 r!11554))) b!7085413))

(assert (= (and b!7085304 (is-Union!17738 (regOne!35989 r!11554))) b!7085414))

(declare-fun b!7085417 () Bool)

(declare-fun e!4259708 () Bool)

(declare-fun tp!1945156 () Bool)

(assert (=> b!7085417 (= e!4259708 tp!1945156)))

(declare-fun b!7085415 () Bool)

(assert (=> b!7085415 (= e!4259708 tp_is_empty!44709)))

(declare-fun b!7085418 () Bool)

(declare-fun tp!1945159 () Bool)

(declare-fun tp!1945157 () Bool)

(assert (=> b!7085418 (= e!4259708 (and tp!1945159 tp!1945157))))

(assert (=> b!7085304 (= tp!1945102 e!4259708)))

(declare-fun b!7085416 () Bool)

(declare-fun tp!1945160 () Bool)

(declare-fun tp!1945158 () Bool)

(assert (=> b!7085416 (= e!4259708 (and tp!1945160 tp!1945158))))

(assert (= (and b!7085304 (is-ElementMatch!17738 (regTwo!35989 r!11554))) b!7085415))

(assert (= (and b!7085304 (is-Concat!26583 (regTwo!35989 r!11554))) b!7085416))

(assert (= (and b!7085304 (is-Star!17738 (regTwo!35989 r!11554))) b!7085417))

(assert (= (and b!7085304 (is-Union!17738 (regTwo!35989 r!11554))) b!7085418))

(declare-fun b!7085421 () Bool)

(declare-fun e!4259709 () Bool)

(declare-fun tp!1945161 () Bool)

(assert (=> b!7085421 (= e!4259709 tp!1945161)))

(declare-fun b!7085419 () Bool)

(assert (=> b!7085419 (= e!4259709 tp_is_empty!44709)))

(declare-fun b!7085422 () Bool)

(declare-fun tp!1945164 () Bool)

(declare-fun tp!1945162 () Bool)

(assert (=> b!7085422 (= e!4259709 (and tp!1945164 tp!1945162))))

(assert (=> b!7085306 (= tp!1945103 e!4259709)))

(declare-fun b!7085420 () Bool)

(declare-fun tp!1945165 () Bool)

(declare-fun tp!1945163 () Bool)

(assert (=> b!7085420 (= e!4259709 (and tp!1945165 tp!1945163))))

(assert (= (and b!7085306 (is-ElementMatch!17738 (reg!18067 r!11554))) b!7085419))

(assert (= (and b!7085306 (is-Concat!26583 (reg!18067 r!11554))) b!7085420))

(assert (= (and b!7085306 (is-Star!17738 (reg!18067 r!11554))) b!7085421))

(assert (= (and b!7085306 (is-Union!17738 (reg!18067 r!11554))) b!7085422))

(declare-fun b_lambda!270837 () Bool)

(assert (= b_lambda!270835 (or b!7085305 b_lambda!270837)))

(declare-fun bs!1882901 () Bool)

(declare-fun d!2215961 () Bool)

(assert (= bs!1882901 (and d!2215961 b!7085305)))

(assert (=> bs!1882901 (= (dynLambda!27968 lambda!428998 (h!75025 (exprs!7234 c!9994))) (validRegex!9013 (h!75025 (exprs!7234 c!9994))))))

(declare-fun m!7816740 () Bool)

(assert (=> bs!1882901 m!7816740))

(assert (=> b!7085368 d!2215961))

(push 1)

(assert (not b!7085414))

(assert (not b!7085391))

(assert (not b!7085369))

(assert (not b!7085420))

(assert (not b!7085392))

(assert (not b!7085422))

(assert (not b!7085385))

(assert (not bm!643825))

(assert (not b!7085416))

(assert tp_is_empty!44709)

(assert (not bm!643826))

(assert (not b!7085412))

(assert (not b!7085417))

(assert (not b!7085393))

(assert (not b!7085410))

(assert (not b_lambda!270837))

(assert (not d!2215955))

(assert (not b!7085413))

(assert (not b!7085418))

(assert (not b!7085354))

(assert (not b!7085383))

(assert (not bs!1882901))

(assert (not b!7085421))

(assert (not b!7085384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

