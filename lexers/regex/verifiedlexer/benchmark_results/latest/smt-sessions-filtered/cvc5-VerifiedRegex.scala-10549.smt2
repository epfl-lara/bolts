; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543188 () Bool)

(assert start!543188)

(declare-fun b!5133757 () Bool)

(declare-fun e!3202033 () Bool)

(declare-fun tp!1432026 () Bool)

(assert (=> b!5133757 (= e!3202033 tp!1432026)))

(declare-fun b!5133755 () Bool)

(declare-fun res!2186677 () Bool)

(declare-fun e!3202034 () Bool)

(assert (=> b!5133755 (=> (not res!2186677) (not e!3202034))))

(declare-datatypes ((C!29042 0))(
  ( (C!29043 (val!24173 Int)) )
))
(declare-datatypes ((Regex!14388 0))(
  ( (ElementMatch!14388 (c!883591 C!29042)) (Concat!23233 (regOne!29288 Regex!14388) (regTwo!29288 Regex!14388)) (EmptyExpr!14388) (Star!14388 (reg!14717 Regex!14388)) (EmptyLang!14388) (Union!14388 (regOne!29289 Regex!14388) (regTwo!29289 Regex!14388)) )
))
(declare-datatypes ((List!59711 0))(
  ( (Nil!59587) (Cons!59587 (h!66035 Regex!14388) (t!372738 List!59711)) )
))
(declare-datatypes ((Context!7544 0))(
  ( (Context!7545 (exprs!4272 List!59711)) )
))
(declare-fun ctx!74 () Context!7544)

(declare-fun nullable!4761 (Regex!14388) Bool)

(assert (=> b!5133755 (= res!2186677 (nullable!4761 (h!66035 (exprs!4272 ctx!74))))))

(declare-fun b!5133756 () Bool)

(declare-fun validRegex!6248 (Regex!14388) Bool)

(assert (=> b!5133756 (= e!3202034 (not (validRegex!6248 (h!66035 (exprs!4272 ctx!74)))))))

(declare-fun res!2186679 () Bool)

(assert (=> start!543188 (=> (not res!2186679) (not e!3202034))))

(declare-fun lostCause!1338 (Context!7544) Bool)

(assert (=> start!543188 (= res!2186679 (lostCause!1338 ctx!74))))

(assert (=> start!543188 e!3202034))

(declare-fun inv!79152 (Context!7544) Bool)

(assert (=> start!543188 (and (inv!79152 ctx!74) e!3202033)))

(declare-fun b!5133754 () Bool)

(declare-fun res!2186678 () Bool)

(assert (=> b!5133754 (=> (not res!2186678) (not e!3202034))))

(assert (=> b!5133754 (= res!2186678 (is-Cons!59587 (exprs!4272 ctx!74)))))

(assert (= (and start!543188 res!2186679) b!5133754))

(assert (= (and b!5133754 res!2186678) b!5133755))

(assert (= (and b!5133755 res!2186677) b!5133756))

(assert (= start!543188 b!5133757))

(declare-fun m!6199894 () Bool)

(assert (=> b!5133755 m!6199894))

(declare-fun m!6199896 () Bool)

(assert (=> b!5133756 m!6199896))

(declare-fun m!6199898 () Bool)

(assert (=> start!543188 m!6199898))

(declare-fun m!6199900 () Bool)

(assert (=> start!543188 m!6199900))

(push 1)

(assert (not b!5133755))

(assert (not start!543188))

(assert (not b!5133756))

(assert (not b!5133757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1661174 () Bool)

(declare-fun nullableFct!1285 (Regex!14388) Bool)

(assert (=> d!1661174 (= (nullable!4761 (h!66035 (exprs!4272 ctx!74))) (nullableFct!1285 (h!66035 (exprs!4272 ctx!74))))))

(declare-fun bs!1199397 () Bool)

(assert (= bs!1199397 d!1661174))

(declare-fun m!6199910 () Bool)

(assert (=> bs!1199397 m!6199910))

(assert (=> b!5133755 d!1661174))

(declare-fun d!1661176 () Bool)

(declare-fun lambda!255492 () Int)

(declare-fun exists!1713 (List!59711 Int) Bool)

(assert (=> d!1661176 (= (lostCause!1338 ctx!74) (exists!1713 (exprs!4272 ctx!74) lambda!255492))))

(declare-fun bs!1199399 () Bool)

(assert (= bs!1199399 d!1661176))

(declare-fun m!6199920 () Bool)

(assert (=> bs!1199399 m!6199920))

(assert (=> start!543188 d!1661176))

(declare-fun bs!1199400 () Bool)

(declare-fun d!1661184 () Bool)

(assert (= bs!1199400 (and d!1661184 d!1661176)))

(declare-fun lambda!255495 () Int)

(assert (=> bs!1199400 (not (= lambda!255495 lambda!255492))))

(declare-fun forall!13837 (List!59711 Int) Bool)

(assert (=> d!1661184 (= (inv!79152 ctx!74) (forall!13837 (exprs!4272 ctx!74) lambda!255495))))

(declare-fun bs!1199401 () Bool)

(assert (= bs!1199401 d!1661184))

(declare-fun m!6199922 () Bool)

(assert (=> bs!1199401 m!6199922))

(assert (=> start!543188 d!1661184))

(declare-fun bm!357412 () Bool)

(declare-fun call!357419 () Bool)

(declare-fun c!883604 () Bool)

(assert (=> bm!357412 (= call!357419 (validRegex!6248 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))))))

(declare-fun b!5133816 () Bool)

(declare-fun e!3202077 () Bool)

(declare-fun e!3202079 () Bool)

(assert (=> b!5133816 (= e!3202077 e!3202079)))

(assert (=> b!5133816 (= c!883604 (is-Union!14388 (h!66035 (exprs!4272 ctx!74))))))

(declare-fun bm!357413 () Bool)

(declare-fun call!357418 () Bool)

(declare-fun call!357417 () Bool)

(assert (=> bm!357413 (= call!357418 call!357417)))

(declare-fun b!5133817 () Bool)

(declare-fun e!3202078 () Bool)

(assert (=> b!5133817 (= e!3202077 e!3202078)))

(declare-fun res!2186717 () Bool)

(assert (=> b!5133817 (= res!2186717 (not (nullable!4761 (reg!14717 (h!66035 (exprs!4272 ctx!74))))))))

(assert (=> b!5133817 (=> (not res!2186717) (not e!3202078))))

(declare-fun b!5133818 () Bool)

(declare-fun e!3202076 () Bool)

(assert (=> b!5133818 (= e!3202076 call!357419)))

(declare-fun b!5133819 () Bool)

(assert (=> b!5133819 (= e!3202078 call!357417)))

(declare-fun bm!357414 () Bool)

(declare-fun c!883603 () Bool)

(assert (=> bm!357414 (= call!357417 (validRegex!6248 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))))))

(declare-fun d!1661186 () Bool)

(declare-fun res!2186715 () Bool)

(declare-fun e!3202081 () Bool)

(assert (=> d!1661186 (=> res!2186715 e!3202081)))

(assert (=> d!1661186 (= res!2186715 (is-ElementMatch!14388 (h!66035 (exprs!4272 ctx!74))))))

(assert (=> d!1661186 (= (validRegex!6248 (h!66035 (exprs!4272 ctx!74))) e!3202081)))

(declare-fun b!5133815 () Bool)

(declare-fun res!2186714 () Bool)

(declare-fun e!3202080 () Bool)

(assert (=> b!5133815 (=> (not res!2186714) (not e!3202080))))

(assert (=> b!5133815 (= res!2186714 call!357419)))

(assert (=> b!5133815 (= e!3202079 e!3202080)))

(declare-fun b!5133820 () Bool)

(declare-fun res!2186716 () Bool)

(declare-fun e!3202082 () Bool)

(assert (=> b!5133820 (=> res!2186716 e!3202082)))

(assert (=> b!5133820 (= res!2186716 (not (is-Concat!23233 (h!66035 (exprs!4272 ctx!74)))))))

(assert (=> b!5133820 (= e!3202079 e!3202082)))

(declare-fun b!5133821 () Bool)

(assert (=> b!5133821 (= e!3202081 e!3202077)))

(assert (=> b!5133821 (= c!883603 (is-Star!14388 (h!66035 (exprs!4272 ctx!74))))))

(declare-fun b!5133822 () Bool)

(assert (=> b!5133822 (= e!3202082 e!3202076)))

(declare-fun res!2186718 () Bool)

(assert (=> b!5133822 (=> (not res!2186718) (not e!3202076))))

(assert (=> b!5133822 (= res!2186718 call!357418)))

(declare-fun b!5133823 () Bool)

(assert (=> b!5133823 (= e!3202080 call!357418)))

(assert (= (and d!1661186 (not res!2186715)) b!5133821))

(assert (= (and b!5133821 c!883603) b!5133817))

(assert (= (and b!5133821 (not c!883603)) b!5133816))

(assert (= (and b!5133817 res!2186717) b!5133819))

(assert (= (and b!5133816 c!883604) b!5133815))

(assert (= (and b!5133816 (not c!883604)) b!5133820))

(assert (= (and b!5133815 res!2186714) b!5133823))

(assert (= (and b!5133820 (not res!2186716)) b!5133822))

(assert (= (and b!5133822 res!2186718) b!5133818))

(assert (= (or b!5133815 b!5133818) bm!357412))

(assert (= (or b!5133823 b!5133822) bm!357413))

(assert (= (or b!5133819 bm!357413) bm!357414))

(declare-fun m!6199924 () Bool)

(assert (=> bm!357412 m!6199924))

(declare-fun m!6199926 () Bool)

(assert (=> b!5133817 m!6199926))

(declare-fun m!6199928 () Bool)

(assert (=> bm!357414 m!6199928))

(assert (=> b!5133756 d!1661186))

(declare-fun b!5133828 () Bool)

(declare-fun e!3202085 () Bool)

(declare-fun tp!1432034 () Bool)

(declare-fun tp!1432035 () Bool)

(assert (=> b!5133828 (= e!3202085 (and tp!1432034 tp!1432035))))

(assert (=> b!5133757 (= tp!1432026 e!3202085)))

(assert (= (and b!5133757 (is-Cons!59587 (exprs!4272 ctx!74))) b!5133828))

(push 1)

(assert (not d!1661174))

(assert (not bm!357414))

(assert (not d!1661176))

(assert (not b!5133817))

(assert (not d!1661184))

(assert (not b!5133828))

(assert (not bm!357412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!883606 () Bool)

(declare-fun call!357422 () Bool)

(declare-fun bm!357415 () Bool)

(assert (=> bm!357415 (= call!357422 (validRegex!6248 (ite c!883606 (regOne!29289 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))) (regTwo!29288 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))))))))

(declare-fun b!5133830 () Bool)

(declare-fun e!3202087 () Bool)

(declare-fun e!3202089 () Bool)

(assert (=> b!5133830 (= e!3202087 e!3202089)))

(assert (=> b!5133830 (= c!883606 (is-Union!14388 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))))))

(declare-fun bm!357416 () Bool)

(declare-fun call!357421 () Bool)

(declare-fun call!357420 () Bool)

(assert (=> bm!357416 (= call!357421 call!357420)))

(declare-fun b!5133831 () Bool)

(declare-fun e!3202088 () Bool)

(assert (=> b!5133831 (= e!3202087 e!3202088)))

(declare-fun res!2186722 () Bool)

(assert (=> b!5133831 (= res!2186722 (not (nullable!4761 (reg!14717 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))))))))

(assert (=> b!5133831 (=> (not res!2186722) (not e!3202088))))

(declare-fun b!5133832 () Bool)

(declare-fun e!3202086 () Bool)

(assert (=> b!5133832 (= e!3202086 call!357422)))

(declare-fun b!5133833 () Bool)

(assert (=> b!5133833 (= e!3202088 call!357420)))

(declare-fun bm!357417 () Bool)

(declare-fun c!883605 () Bool)

(assert (=> bm!357417 (= call!357420 (validRegex!6248 (ite c!883605 (reg!14717 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))) (ite c!883606 (regTwo!29289 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))) (regOne!29288 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74))))))))))))

(declare-fun d!1661188 () Bool)

(declare-fun res!2186720 () Bool)

(declare-fun e!3202091 () Bool)

(assert (=> d!1661188 (=> res!2186720 e!3202091)))

(assert (=> d!1661188 (= res!2186720 (is-ElementMatch!14388 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))))))

(assert (=> d!1661188 (= (validRegex!6248 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))) e!3202091)))

(declare-fun b!5133829 () Bool)

(declare-fun res!2186719 () Bool)

(declare-fun e!3202090 () Bool)

(assert (=> b!5133829 (=> (not res!2186719) (not e!3202090))))

(assert (=> b!5133829 (= res!2186719 call!357422)))

(assert (=> b!5133829 (= e!3202089 e!3202090)))

(declare-fun b!5133834 () Bool)

(declare-fun res!2186721 () Bool)

(declare-fun e!3202092 () Bool)

(assert (=> b!5133834 (=> res!2186721 e!3202092)))

(assert (=> b!5133834 (= res!2186721 (not (is-Concat!23233 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74))))))))))

(assert (=> b!5133834 (= e!3202089 e!3202092)))

(declare-fun b!5133835 () Bool)

(assert (=> b!5133835 (= e!3202091 e!3202087)))

(assert (=> b!5133835 (= c!883605 (is-Star!14388 (ite c!883603 (reg!14717 (h!66035 (exprs!4272 ctx!74))) (ite c!883604 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74)))))))))

(declare-fun b!5133836 () Bool)

(assert (=> b!5133836 (= e!3202092 e!3202086)))

(declare-fun res!2186723 () Bool)

(assert (=> b!5133836 (=> (not res!2186723) (not e!3202086))))

(assert (=> b!5133836 (= res!2186723 call!357421)))

(declare-fun b!5133837 () Bool)

(assert (=> b!5133837 (= e!3202090 call!357421)))

(assert (= (and d!1661188 (not res!2186720)) b!5133835))

(assert (= (and b!5133835 c!883605) b!5133831))

(assert (= (and b!5133835 (not c!883605)) b!5133830))

(assert (= (and b!5133831 res!2186722) b!5133833))

(assert (= (and b!5133830 c!883606) b!5133829))

(assert (= (and b!5133830 (not c!883606)) b!5133834))

(assert (= (and b!5133829 res!2186719) b!5133837))

(assert (= (and b!5133834 (not res!2186721)) b!5133836))

(assert (= (and b!5133836 res!2186723) b!5133832))

(assert (= (or b!5133829 b!5133832) bm!357415))

(assert (= (or b!5133837 b!5133836) bm!357416))

(assert (= (or b!5133833 bm!357416) bm!357417))

(declare-fun m!6199930 () Bool)

(assert (=> bm!357415 m!6199930))

(declare-fun m!6199932 () Bool)

(assert (=> b!5133831 m!6199932))

(declare-fun m!6199934 () Bool)

(assert (=> bm!357417 m!6199934))

(assert (=> bm!357414 d!1661188))

(declare-fun c!883608 () Bool)

(declare-fun call!357425 () Bool)

(declare-fun bm!357418 () Bool)

(assert (=> bm!357418 (= call!357425 (validRegex!6248 (ite c!883608 (regOne!29289 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))) (regTwo!29288 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))))))))

(declare-fun b!5133839 () Bool)

(declare-fun e!3202094 () Bool)

(declare-fun e!3202096 () Bool)

(assert (=> b!5133839 (= e!3202094 e!3202096)))

(assert (=> b!5133839 (= c!883608 (is-Union!14388 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))))))

(declare-fun bm!357419 () Bool)

(declare-fun call!357424 () Bool)

(declare-fun call!357423 () Bool)

(assert (=> bm!357419 (= call!357424 call!357423)))

(declare-fun b!5133840 () Bool)

(declare-fun e!3202095 () Bool)

(assert (=> b!5133840 (= e!3202094 e!3202095)))

(declare-fun res!2186727 () Bool)

(assert (=> b!5133840 (= res!2186727 (not (nullable!4761 (reg!14717 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))))))))

(assert (=> b!5133840 (=> (not res!2186727) (not e!3202095))))

(declare-fun b!5133841 () Bool)

(declare-fun e!3202093 () Bool)

(assert (=> b!5133841 (= e!3202093 call!357425)))

(declare-fun b!5133842 () Bool)

(assert (=> b!5133842 (= e!3202095 call!357423)))

(declare-fun bm!357420 () Bool)

(declare-fun c!883607 () Bool)

(assert (=> bm!357420 (= call!357423 (validRegex!6248 (ite c!883607 (reg!14717 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))) (ite c!883608 (regTwo!29289 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))) (regOne!29288 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74)))))))))))

(declare-fun d!1661190 () Bool)

(declare-fun res!2186725 () Bool)

(declare-fun e!3202098 () Bool)

(assert (=> d!1661190 (=> res!2186725 e!3202098)))

(assert (=> d!1661190 (= res!2186725 (is-ElementMatch!14388 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))))))

(assert (=> d!1661190 (= (validRegex!6248 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))) e!3202098)))

(declare-fun b!5133838 () Bool)

(declare-fun res!2186724 () Bool)

(declare-fun e!3202097 () Bool)

(assert (=> b!5133838 (=> (not res!2186724) (not e!3202097))))

(assert (=> b!5133838 (= res!2186724 call!357425)))

(assert (=> b!5133838 (= e!3202096 e!3202097)))

(declare-fun b!5133843 () Bool)

(declare-fun res!2186726 () Bool)

(declare-fun e!3202099 () Bool)

(assert (=> b!5133843 (=> res!2186726 e!3202099)))

(assert (=> b!5133843 (= res!2186726 (not (is-Concat!23233 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74)))))))))

(assert (=> b!5133843 (= e!3202096 e!3202099)))

(declare-fun b!5133844 () Bool)

(assert (=> b!5133844 (= e!3202098 e!3202094)))

(assert (=> b!5133844 (= c!883607 (is-Star!14388 (ite c!883604 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))))))

(declare-fun b!5133845 () Bool)

(assert (=> b!5133845 (= e!3202099 e!3202093)))

(declare-fun res!2186728 () Bool)

(assert (=> b!5133845 (=> (not res!2186728) (not e!3202093))))

(assert (=> b!5133845 (= res!2186728 call!357424)))

(declare-fun b!5133846 () Bool)

(assert (=> b!5133846 (= e!3202097 call!357424)))

(assert (= (and d!1661190 (not res!2186725)) b!5133844))

(assert (= (and b!5133844 c!883607) b!5133840))

(assert (= (and b!5133844 (not c!883607)) b!5133839))

(assert (= (and b!5133840 res!2186727) b!5133842))

(assert (= (and b!5133839 c!883608) b!5133838))

(assert (= (and b!5133839 (not c!883608)) b!5133843))

(assert (= (and b!5133838 res!2186724) b!5133846))

(assert (= (and b!5133843 (not res!2186726)) b!5133845))

(assert (= (and b!5133845 res!2186728) b!5133841))

(assert (= (or b!5133838 b!5133841) bm!357418))

(assert (= (or b!5133846 b!5133845) bm!357419))

(assert (= (or b!5133842 bm!357419) bm!357420))

(declare-fun m!6199936 () Bool)

(assert (=> bm!357418 m!6199936))

(declare-fun m!6199938 () Bool)

(assert (=> b!5133840 m!6199938))

(declare-fun m!6199940 () Bool)

(assert (=> bm!357420 m!6199940))

(assert (=> bm!357412 d!1661190))

(declare-fun bs!1199402 () Bool)

(declare-fun d!1661192 () Bool)

(assert (= bs!1199402 (and d!1661192 d!1661176)))

(declare-fun lambda!255498 () Int)

(assert (=> bs!1199402 (not (= lambda!255498 lambda!255492))))

(declare-fun bs!1199403 () Bool)

(assert (= bs!1199403 (and d!1661192 d!1661184)))

(assert (=> bs!1199403 (not (= lambda!255498 lambda!255495))))

(assert (=> d!1661192 true))

(declare-fun order!26899 () Int)

(declare-fun dynLambda!23720 (Int Int) Int)

(assert (=> d!1661192 (< (dynLambda!23720 order!26899 lambda!255492) (dynLambda!23720 order!26899 lambda!255498))))

(assert (=> d!1661192 (= (exists!1713 (exprs!4272 ctx!74) lambda!255492) (not (forall!13837 (exprs!4272 ctx!74) lambda!255498)))))

(declare-fun bs!1199404 () Bool)

(assert (= bs!1199404 d!1661192))

(declare-fun m!6199942 () Bool)

(assert (=> bs!1199404 m!6199942))

(assert (=> d!1661176 d!1661192))

(declare-fun d!1661194 () Bool)

(assert (=> d!1661194 (= (nullable!4761 (reg!14717 (h!66035 (exprs!4272 ctx!74)))) (nullableFct!1285 (reg!14717 (h!66035 (exprs!4272 ctx!74)))))))

(declare-fun bs!1199405 () Bool)

(assert (= bs!1199405 d!1661194))

(declare-fun m!6199944 () Bool)

(assert (=> bs!1199405 m!6199944))

(assert (=> b!5133817 d!1661194))

(declare-fun d!1661196 () Bool)

(declare-fun res!2186733 () Bool)

(declare-fun e!3202104 () Bool)

(assert (=> d!1661196 (=> res!2186733 e!3202104)))

(assert (=> d!1661196 (= res!2186733 (is-Nil!59587 (exprs!4272 ctx!74)))))

(assert (=> d!1661196 (= (forall!13837 (exprs!4272 ctx!74) lambda!255495) e!3202104)))

(declare-fun b!5133853 () Bool)

(declare-fun e!3202105 () Bool)

(assert (=> b!5133853 (= e!3202104 e!3202105)))

(declare-fun res!2186734 () Bool)

(assert (=> b!5133853 (=> (not res!2186734) (not e!3202105))))

(declare-fun dynLambda!23721 (Int Regex!14388) Bool)

(assert (=> b!5133853 (= res!2186734 (dynLambda!23721 lambda!255495 (h!66035 (exprs!4272 ctx!74))))))

(declare-fun b!5133854 () Bool)

(assert (=> b!5133854 (= e!3202105 (forall!13837 (t!372738 (exprs!4272 ctx!74)) lambda!255495))))

(assert (= (and d!1661196 (not res!2186733)) b!5133853))

(assert (= (and b!5133853 res!2186734) b!5133854))

(declare-fun b_lambda!199989 () Bool)

(assert (=> (not b_lambda!199989) (not b!5133853)))

(declare-fun m!6199946 () Bool)

(assert (=> b!5133853 m!6199946))

(declare-fun m!6199948 () Bool)

(assert (=> b!5133854 m!6199948))

(assert (=> d!1661184 d!1661196))

(declare-fun b!5133869 () Bool)

(declare-fun e!3202118 () Bool)

(declare-fun e!3202119 () Bool)

(assert (=> b!5133869 (= e!3202118 e!3202119)))

(declare-fun c!883611 () Bool)

(assert (=> b!5133869 (= c!883611 (is-Union!14388 (h!66035 (exprs!4272 ctx!74))))))

(declare-fun b!5133870 () Bool)

(declare-fun e!3202122 () Bool)

(declare-fun e!3202120 () Bool)

(assert (=> b!5133870 (= e!3202122 e!3202120)))

(declare-fun res!2186745 () Bool)

(assert (=> b!5133870 (=> (not res!2186745) (not e!3202120))))

(assert (=> b!5133870 (= res!2186745 (and (not (is-EmptyLang!14388 (h!66035 (exprs!4272 ctx!74)))) (not (is-ElementMatch!14388 (h!66035 (exprs!4272 ctx!74))))))))

(declare-fun b!5133871 () Bool)

(assert (=> b!5133871 (= e!3202120 e!3202118)))

(declare-fun res!2186746 () Bool)

(assert (=> b!5133871 (=> res!2186746 e!3202118)))

(assert (=> b!5133871 (= res!2186746 (is-Star!14388 (h!66035 (exprs!4272 ctx!74))))))

(declare-fun bm!357425 () Bool)

(declare-fun call!357431 () Bool)

(assert (=> bm!357425 (= call!357431 (nullable!4761 (ite c!883611 (regOne!29289 (h!66035 (exprs!4272 ctx!74))) (regOne!29288 (h!66035 (exprs!4272 ctx!74))))))))

(declare-fun bm!357426 () Bool)

(declare-fun call!357430 () Bool)

(assert (=> bm!357426 (= call!357430 (nullable!4761 (ite c!883611 (regTwo!29289 (h!66035 (exprs!4272 ctx!74))) (regTwo!29288 (h!66035 (exprs!4272 ctx!74))))))))

(declare-fun b!5133872 () Bool)

(declare-fun e!3202123 () Bool)

(assert (=> b!5133872 (= e!3202119 e!3202123)))

(declare-fun res!2186749 () Bool)

(assert (=> b!5133872 (= res!2186749 call!357431)))

(assert (=> b!5133872 (=> res!2186749 e!3202123)))

(declare-fun d!1661198 () Bool)

(declare-fun res!2186747 () Bool)

(assert (=> d!1661198 (=> res!2186747 e!3202122)))

(assert (=> d!1661198 (= res!2186747 (is-EmptyExpr!14388 (h!66035 (exprs!4272 ctx!74))))))

(assert (=> d!1661198 (= (nullableFct!1285 (h!66035 (exprs!4272 ctx!74))) e!3202122)))

(declare-fun b!5133873 () Bool)

(declare-fun e!3202121 () Bool)

(assert (=> b!5133873 (= e!3202121 call!357430)))

(declare-fun b!5133874 () Bool)

(assert (=> b!5133874 (= e!3202119 e!3202121)))

(declare-fun res!2186748 () Bool)

(assert (=> b!5133874 (= res!2186748 call!357431)))

(assert (=> b!5133874 (=> (not res!2186748) (not e!3202121))))

(declare-fun b!5133875 () Bool)

(assert (=> b!5133875 (= e!3202123 call!357430)))

(assert (= (and d!1661198 (not res!2186747)) b!5133870))

(assert (= (and b!5133870 res!2186745) b!5133871))

(assert (= (and b!5133871 (not res!2186746)) b!5133869))

(assert (= (and b!5133869 c!883611) b!5133872))

(assert (= (and b!5133869 (not c!883611)) b!5133874))

(assert (= (and b!5133872 (not res!2186749)) b!5133875))

(assert (= (and b!5133874 res!2186748) b!5133873))

(assert (= (or b!5133875 b!5133873) bm!357426))

(assert (= (or b!5133872 b!5133874) bm!357425))

(declare-fun m!6199952 () Bool)

(assert (=> bm!357425 m!6199952))

(declare-fun m!6199954 () Bool)

(assert (=> bm!357426 m!6199954))

(assert (=> d!1661174 d!1661198))

(declare-fun b!5133891 () Bool)

(declare-fun e!3202128 () Bool)

(declare-fun tp!1432050 () Bool)

(declare-fun tp!1432047 () Bool)

(assert (=> b!5133891 (= e!3202128 (and tp!1432050 tp!1432047))))

(declare-fun b!5133893 () Bool)

(declare-fun tp!1432048 () Bool)

(declare-fun tp!1432049 () Bool)

(assert (=> b!5133893 (= e!3202128 (and tp!1432048 tp!1432049))))

(declare-fun b!5133890 () Bool)

(declare-fun tp_is_empty!37933 () Bool)

(assert (=> b!5133890 (= e!3202128 tp_is_empty!37933)))

(assert (=> b!5133828 (= tp!1432034 e!3202128)))

(declare-fun b!5133892 () Bool)

(declare-fun tp!1432046 () Bool)

(assert (=> b!5133892 (= e!3202128 tp!1432046)))

(assert (= (and b!5133828 (is-ElementMatch!14388 (h!66035 (exprs!4272 ctx!74)))) b!5133890))

(assert (= (and b!5133828 (is-Concat!23233 (h!66035 (exprs!4272 ctx!74)))) b!5133891))

(assert (= (and b!5133828 (is-Star!14388 (h!66035 (exprs!4272 ctx!74)))) b!5133892))

(assert (= (and b!5133828 (is-Union!14388 (h!66035 (exprs!4272 ctx!74)))) b!5133893))

(declare-fun b!5133894 () Bool)

(declare-fun e!3202129 () Bool)

(declare-fun tp!1432055 () Bool)

(declare-fun tp!1432056 () Bool)

(assert (=> b!5133894 (= e!3202129 (and tp!1432055 tp!1432056))))

(assert (=> b!5133828 (= tp!1432035 e!3202129)))

(assert (= (and b!5133828 (is-Cons!59587 (t!372738 (exprs!4272 ctx!74)))) b!5133894))

(declare-fun b_lambda!199991 () Bool)

(assert (= b_lambda!199989 (or d!1661184 b_lambda!199991)))

(declare-fun bs!1199409 () Bool)

(declare-fun d!1661202 () Bool)

(assert (= bs!1199409 (and d!1661202 d!1661184)))

(assert (=> bs!1199409 (= (dynLambda!23721 lambda!255495 (h!66035 (exprs!4272 ctx!74))) (validRegex!6248 (h!66035 (exprs!4272 ctx!74))))))

(assert (=> bs!1199409 m!6199896))

(assert (=> b!5133853 d!1661202))

(push 1)

(assert (not b!5133840))

(assert (not bm!357426))

(assert tp_is_empty!37933)

(assert (not b!5133854))

(assert (not b!5133894))

(assert (not bm!357418))

(assert (not bm!357425))

(assert (not bm!357415))

(assert (not d!1661192))

(assert (not bs!1199409))

(assert (not b!5133893))

(assert (not bm!357417))

(assert (not b!5133891))

(assert (not bm!357420))

(assert (not d!1661194))

(assert (not b!5133831))

(assert (not b_lambda!199991))

(assert (not b!5133892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

