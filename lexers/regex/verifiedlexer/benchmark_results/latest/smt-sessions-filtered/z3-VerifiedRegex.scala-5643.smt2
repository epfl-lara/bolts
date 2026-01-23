; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282062 () Bool)

(assert start!282062)

(declare-fun b!2893961 () Bool)

(declare-fun e!1828648 () Bool)

(declare-fun tp!929075 () Bool)

(declare-fun tp!929079 () Bool)

(assert (=> b!2893961 (= e!1828648 (and tp!929075 tp!929079))))

(declare-fun b!2893962 () Bool)

(declare-fun e!1828647 () Bool)

(declare-fun e!1828649 () Bool)

(assert (=> b!2893962 (= e!1828647 e!1828649)))

(declare-fun res!1197118 () Bool)

(assert (=> b!2893962 (=> (not res!1197118) (not e!1828649))))

(declare-datatypes ((C!17864 0))(
  ( (C!17865 (val!10966 Int)) )
))
(declare-datatypes ((Regex!8841 0))(
  ( (ElementMatch!8841 (c!470792 C!17864)) (Concat!14162 (regOne!18194 Regex!8841) (regTwo!18194 Regex!8841)) (EmptyExpr!8841) (Star!8841 (reg!9170 Regex!8841)) (EmptyLang!8841) (Union!8841 (regOne!18195 Regex!8841) (regTwo!18195 Regex!8841)) )
))
(declare-fun r!23079 () Regex!8841)

(declare-fun validRegex!3614 (Regex!8841) Bool)

(assert (=> b!2893962 (= res!1197118 (validRegex!3614 (regTwo!18195 r!23079)))))

(declare-datatypes ((List!34642 0))(
  ( (Nil!34518) (Cons!34518 (h!39938 C!17864) (t!233685 List!34642)) )
))
(declare-fun lt!1021334 () List!34642)

(declare-fun matchR!3805 (Regex!8841 List!34642) Bool)

(assert (=> b!2893962 (matchR!3805 (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079)) lt!1021334)))

(declare-datatypes ((Unit!48099 0))(
  ( (Unit!48100) )
))
(declare-fun lt!1021333 () Unit!48099)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!46 (Regex!8841 Regex!8841 List!34642) Unit!48099)

(assert (=> b!2893962 (= lt!1021333 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!46 (regTwo!18195 r!23079) (regOne!18195 r!23079) lt!1021334))))

(declare-fun res!1197116 () Bool)

(declare-fun e!1828646 () Bool)

(assert (=> start!282062 (=> (not res!1197116) (not e!1828646))))

(assert (=> start!282062 (= res!1197116 (validRegex!3614 r!23079))))

(assert (=> start!282062 e!1828646))

(assert (=> start!282062 e!1828648))

(declare-fun b!2893963 () Bool)

(declare-fun tp!929078 () Bool)

(assert (=> b!2893963 (= e!1828648 tp!929078)))

(declare-fun b!2893964 () Bool)

(assert (=> b!2893964 (= e!1828649 (validRegex!3614 (regOne!18195 r!23079)))))

(declare-fun b!2893965 () Bool)

(declare-fun res!1197117 () Bool)

(assert (=> b!2893965 (=> (not res!1197117) (not e!1828646))))

(get-info :version)

(assert (=> b!2893965 (= res!1197117 (and (not ((_ is EmptyExpr!8841) r!23079)) (not ((_ is EmptyLang!8841) r!23079)) (not ((_ is ElementMatch!8841) r!23079)) (not ((_ is Star!8841) r!23079)) ((_ is Union!8841) r!23079)))))

(declare-fun b!2893966 () Bool)

(assert (=> b!2893966 (= e!1828646 (not e!1828647))))

(declare-fun res!1197114 () Bool)

(assert (=> b!2893966 (=> res!1197114 e!1828647)))

(declare-datatypes ((Option!6514 0))(
  ( (None!6513) (Some!6513 (v!34639 List!34642)) )
))
(declare-fun lt!1021336 () Option!6514)

(declare-fun isDefined!5078 (Option!6514) Bool)

(assert (=> b!2893966 (= res!1197114 (not (isDefined!5078 lt!1021336)))))

(assert (=> b!2893966 (matchR!3805 (regTwo!18195 r!23079) lt!1021334)))

(declare-fun get!10458 (Option!6514) List!34642)

(assert (=> b!2893966 (= lt!1021334 (get!10458 lt!1021336))))

(declare-fun lt!1021335 () Unit!48099)

(declare-fun lemmaGetWitnessMatches!104 (Regex!8841) Unit!48099)

(assert (=> b!2893966 (= lt!1021335 (lemmaGetWitnessMatches!104 (regTwo!18195 r!23079)))))

(declare-fun getLanguageWitness!548 (Regex!8841) Option!6514)

(assert (=> b!2893966 (= lt!1021336 (getLanguageWitness!548 (regTwo!18195 r!23079)))))

(declare-fun b!2893967 () Bool)

(declare-fun tp_is_empty!15269 () Bool)

(assert (=> b!2893967 (= e!1828648 tp_is_empty!15269)))

(declare-fun b!2893968 () Bool)

(declare-fun res!1197119 () Bool)

(assert (=> b!2893968 (=> (not res!1197119) (not e!1828646))))

(assert (=> b!2893968 (= res!1197119 (not ((_ is Some!6513) (getLanguageWitness!548 (regOne!18195 r!23079)))))))

(declare-fun b!2893969 () Bool)

(declare-fun tp!929076 () Bool)

(declare-fun tp!929077 () Bool)

(assert (=> b!2893969 (= e!1828648 (and tp!929076 tp!929077))))

(declare-fun b!2893970 () Bool)

(declare-fun res!1197115 () Bool)

(assert (=> b!2893970 (=> (not res!1197115) (not e!1828646))))

(assert (=> b!2893970 (= res!1197115 (isDefined!5078 (getLanguageWitness!548 r!23079)))))

(assert (= (and start!282062 res!1197116) b!2893970))

(assert (= (and b!2893970 res!1197115) b!2893965))

(assert (= (and b!2893965 res!1197117) b!2893968))

(assert (= (and b!2893968 res!1197119) b!2893966))

(assert (= (and b!2893966 (not res!1197114)) b!2893962))

(assert (= (and b!2893962 res!1197118) b!2893964))

(assert (= (and start!282062 ((_ is ElementMatch!8841) r!23079)) b!2893967))

(assert (= (and start!282062 ((_ is Concat!14162) r!23079)) b!2893969))

(assert (= (and start!282062 ((_ is Star!8841) r!23079)) b!2893963))

(assert (= (and start!282062 ((_ is Union!8841) r!23079)) b!2893961))

(declare-fun m!3303425 () Bool)

(assert (=> b!2893964 m!3303425))

(declare-fun m!3303427 () Bool)

(assert (=> start!282062 m!3303427))

(declare-fun m!3303429 () Bool)

(assert (=> b!2893966 m!3303429))

(declare-fun m!3303431 () Bool)

(assert (=> b!2893966 m!3303431))

(declare-fun m!3303433 () Bool)

(assert (=> b!2893966 m!3303433))

(declare-fun m!3303435 () Bool)

(assert (=> b!2893966 m!3303435))

(declare-fun m!3303437 () Bool)

(assert (=> b!2893966 m!3303437))

(declare-fun m!3303439 () Bool)

(assert (=> b!2893970 m!3303439))

(assert (=> b!2893970 m!3303439))

(declare-fun m!3303441 () Bool)

(assert (=> b!2893970 m!3303441))

(declare-fun m!3303443 () Bool)

(assert (=> b!2893968 m!3303443))

(declare-fun m!3303445 () Bool)

(assert (=> b!2893962 m!3303445))

(declare-fun m!3303447 () Bool)

(assert (=> b!2893962 m!3303447))

(declare-fun m!3303449 () Bool)

(assert (=> b!2893962 m!3303449))

(check-sat (not b!2893966) (not b!2893968) (not b!2893970) tp_is_empty!15269 (not start!282062) (not b!2893963) (not b!2893962) (not b!2893964) (not b!2893969) (not b!2893961))
(check-sat)
(get-model)

(declare-fun b!2894051 () Bool)

(declare-fun e!1828693 () Option!6514)

(declare-fun e!1828692 () Option!6514)

(assert (=> b!2894051 (= e!1828693 e!1828692)))

(declare-fun lt!1021353 () Option!6514)

(declare-fun call!188146 () Option!6514)

(assert (=> b!2894051 (= lt!1021353 call!188146)))

(declare-fun c!470837 () Bool)

(assert (=> b!2894051 (= c!470837 ((_ is Some!6513) lt!1021353))))

(declare-fun b!2894052 () Bool)

(declare-fun e!1828691 () Option!6514)

(assert (=> b!2894052 (= e!1828691 None!6513)))

(declare-fun b!2894053 () Bool)

(declare-fun e!1828697 () Option!6514)

(assert (=> b!2894053 (= e!1828697 None!6513)))

(declare-fun b!2894055 () Bool)

(declare-fun e!1828695 () Option!6514)

(assert (=> b!2894055 (= e!1828695 e!1828697)))

(declare-fun c!470835 () Bool)

(assert (=> b!2894055 (= c!470835 ((_ is EmptyLang!8841) (regTwo!18195 r!23079)))))

(declare-fun b!2894056 () Bool)

(declare-fun e!1828694 () Option!6514)

(declare-fun e!1828690 () Option!6514)

(assert (=> b!2894056 (= e!1828694 e!1828690)))

(declare-fun c!470834 () Bool)

(assert (=> b!2894056 (= c!470834 ((_ is Star!8841) (regTwo!18195 r!23079)))))

(declare-fun b!2894057 () Bool)

(declare-fun c!470839 () Bool)

(declare-fun lt!1021354 () Option!6514)

(assert (=> b!2894057 (= c!470839 ((_ is Some!6513) lt!1021354))))

(declare-fun call!188145 () Option!6514)

(assert (=> b!2894057 (= lt!1021354 call!188145)))

(assert (=> b!2894057 (= e!1828692 e!1828691)))

(declare-fun b!2894058 () Bool)

(declare-fun ++!8239 (List!34642 List!34642) List!34642)

(assert (=> b!2894058 (= e!1828691 (Some!6513 (++!8239 (v!34639 lt!1021353) (v!34639 lt!1021354))))))

(declare-fun b!2894059 () Bool)

(assert (=> b!2894059 (= e!1828692 None!6513)))

(declare-fun b!2894060 () Bool)

(declare-fun e!1828696 () Option!6514)

(assert (=> b!2894060 (= e!1828693 e!1828696)))

(declare-fun lt!1021352 () Option!6514)

(assert (=> b!2894060 (= lt!1021352 call!188145)))

(declare-fun c!470836 () Bool)

(assert (=> b!2894060 (= c!470836 ((_ is Some!6513) lt!1021352))))

(declare-fun b!2894061 () Bool)

(declare-fun c!470840 () Bool)

(assert (=> b!2894061 (= c!470840 ((_ is ElementMatch!8841) (regTwo!18195 r!23079)))))

(assert (=> b!2894061 (= e!1828697 e!1828694)))

(declare-fun b!2894062 () Bool)

(assert (=> b!2894062 (= e!1828690 (Some!6513 Nil!34518))))

(declare-fun b!2894063 () Bool)

(assert (=> b!2894063 (= e!1828695 (Some!6513 Nil!34518))))

(declare-fun d!834674 () Bool)

(declare-fun c!470838 () Bool)

(assert (=> d!834674 (= c!470838 ((_ is EmptyExpr!8841) (regTwo!18195 r!23079)))))

(assert (=> d!834674 (= (getLanguageWitness!548 (regTwo!18195 r!23079)) e!1828695)))

(declare-fun b!2894054 () Bool)

(assert (=> b!2894054 (= e!1828696 lt!1021352)))

(declare-fun b!2894064 () Bool)

(assert (=> b!2894064 (= e!1828696 call!188146)))

(declare-fun bm!188140 () Bool)

(declare-fun c!470833 () Bool)

(assert (=> bm!188140 (= call!188146 (getLanguageWitness!548 (ite c!470833 (regTwo!18195 (regTwo!18195 r!23079)) (regOne!18194 (regTwo!18195 r!23079)))))))

(declare-fun b!2894065 () Bool)

(assert (=> b!2894065 (= c!470833 ((_ is Union!8841) (regTwo!18195 r!23079)))))

(assert (=> b!2894065 (= e!1828690 e!1828693)))

(declare-fun b!2894066 () Bool)

(assert (=> b!2894066 (= e!1828694 (Some!6513 (Cons!34518 (c!470792 (regTwo!18195 r!23079)) Nil!34518)))))

(declare-fun bm!188141 () Bool)

(assert (=> bm!188141 (= call!188145 (getLanguageWitness!548 (ite c!470833 (regOne!18195 (regTwo!18195 r!23079)) (regTwo!18194 (regTwo!18195 r!23079)))))))

(assert (= (and d!834674 c!470838) b!2894063))

(assert (= (and d!834674 (not c!470838)) b!2894055))

(assert (= (and b!2894055 c!470835) b!2894053))

(assert (= (and b!2894055 (not c!470835)) b!2894061))

(assert (= (and b!2894061 c!470840) b!2894066))

(assert (= (and b!2894061 (not c!470840)) b!2894056))

(assert (= (and b!2894056 c!470834) b!2894062))

(assert (= (and b!2894056 (not c!470834)) b!2894065))

(assert (= (and b!2894065 c!470833) b!2894060))

(assert (= (and b!2894065 (not c!470833)) b!2894051))

(assert (= (and b!2894060 c!470836) b!2894054))

(assert (= (and b!2894060 (not c!470836)) b!2894064))

(assert (= (and b!2894051 c!470837) b!2894057))

(assert (= (and b!2894051 (not c!470837)) b!2894059))

(assert (= (and b!2894057 c!470839) b!2894058))

(assert (= (and b!2894057 (not c!470839)) b!2894052))

(assert (= (or b!2894064 b!2894051) bm!188140))

(assert (= (or b!2894060 b!2894057) bm!188141))

(declare-fun m!3303457 () Bool)

(assert (=> b!2894058 m!3303457))

(declare-fun m!3303459 () Bool)

(assert (=> bm!188140 m!3303459))

(declare-fun m!3303461 () Bool)

(assert (=> bm!188141 m!3303461))

(assert (=> b!2893966 d!834674))

(declare-fun d!834678 () Bool)

(assert (=> d!834678 (matchR!3805 (regTwo!18195 r!23079) (get!10458 (getLanguageWitness!548 (regTwo!18195 r!23079))))))

(declare-fun lt!1021360 () Unit!48099)

(declare-fun choose!17065 (Regex!8841) Unit!48099)

(assert (=> d!834678 (= lt!1021360 (choose!17065 (regTwo!18195 r!23079)))))

(assert (=> d!834678 (validRegex!3614 (regTwo!18195 r!23079))))

(assert (=> d!834678 (= (lemmaGetWitnessMatches!104 (regTwo!18195 r!23079)) lt!1021360)))

(declare-fun bs!523918 () Bool)

(assert (= bs!523918 d!834678))

(declare-fun m!3303469 () Bool)

(assert (=> bs!523918 m!3303469))

(declare-fun m!3303471 () Bool)

(assert (=> bs!523918 m!3303471))

(declare-fun m!3303473 () Bool)

(assert (=> bs!523918 m!3303473))

(assert (=> bs!523918 m!3303433))

(assert (=> bs!523918 m!3303471))

(assert (=> bs!523918 m!3303433))

(assert (=> bs!523918 m!3303445))

(assert (=> b!2893966 d!834678))

(declare-fun d!834682 () Bool)

(declare-fun isEmpty!18821 (Option!6514) Bool)

(assert (=> d!834682 (= (isDefined!5078 lt!1021336) (not (isEmpty!18821 lt!1021336)))))

(declare-fun bs!523919 () Bool)

(assert (= bs!523919 d!834682))

(declare-fun m!3303475 () Bool)

(assert (=> bs!523919 m!3303475))

(assert (=> b!2893966 d!834682))

(declare-fun d!834684 () Bool)

(assert (=> d!834684 (= (get!10458 lt!1021336) (v!34639 lt!1021336))))

(assert (=> b!2893966 d!834684))

(declare-fun b!2894141 () Bool)

(declare-fun res!1197165 () Bool)

(declare-fun e!1828741 () Bool)

(assert (=> b!2894141 (=> res!1197165 e!1828741)))

(declare-fun e!1828740 () Bool)

(assert (=> b!2894141 (= res!1197165 e!1828740)))

(declare-fun res!1197169 () Bool)

(assert (=> b!2894141 (=> (not res!1197169) (not e!1828740))))

(declare-fun lt!1021366 () Bool)

(assert (=> b!2894141 (= res!1197169 lt!1021366)))

(declare-fun b!2894142 () Bool)

(declare-fun e!1828737 () Bool)

(assert (=> b!2894142 (= e!1828741 e!1828737)))

(declare-fun res!1197163 () Bool)

(assert (=> b!2894142 (=> (not res!1197163) (not e!1828737))))

(assert (=> b!2894142 (= res!1197163 (not lt!1021366))))

(declare-fun b!2894143 () Bool)

(declare-fun e!1828736 () Bool)

(declare-fun derivativeStep!2360 (Regex!8841 C!17864) Regex!8841)

(declare-fun head!6389 (List!34642) C!17864)

(declare-fun tail!4614 (List!34642) List!34642)

(assert (=> b!2894143 (= e!1828736 (matchR!3805 (derivativeStep!2360 (regTwo!18195 r!23079) (head!6389 lt!1021334)) (tail!4614 lt!1021334)))))

(declare-fun b!2894144 () Bool)

(declare-fun res!1197162 () Bool)

(assert (=> b!2894144 (=> res!1197162 e!1828741)))

(assert (=> b!2894144 (= res!1197162 (not ((_ is ElementMatch!8841) (regTwo!18195 r!23079))))))

(declare-fun e!1828739 () Bool)

(assert (=> b!2894144 (= e!1828739 e!1828741)))

(declare-fun b!2894145 () Bool)

(declare-fun e!1828735 () Bool)

(declare-fun call!188152 () Bool)

(assert (=> b!2894145 (= e!1828735 (= lt!1021366 call!188152))))

(declare-fun d!834686 () Bool)

(assert (=> d!834686 e!1828735))

(declare-fun c!470858 () Bool)

(assert (=> d!834686 (= c!470858 ((_ is EmptyExpr!8841) (regTwo!18195 r!23079)))))

(assert (=> d!834686 (= lt!1021366 e!1828736)))

(declare-fun c!470857 () Bool)

(declare-fun isEmpty!18822 (List!34642) Bool)

(assert (=> d!834686 (= c!470857 (isEmpty!18822 lt!1021334))))

(assert (=> d!834686 (validRegex!3614 (regTwo!18195 r!23079))))

(assert (=> d!834686 (= (matchR!3805 (regTwo!18195 r!23079) lt!1021334) lt!1021366)))

(declare-fun b!2894146 () Bool)

(assert (=> b!2894146 (= e!1828739 (not lt!1021366))))

(declare-fun b!2894147 () Bool)

(declare-fun nullable!2741 (Regex!8841) Bool)

(assert (=> b!2894147 (= e!1828736 (nullable!2741 (regTwo!18195 r!23079)))))

(declare-fun b!2894148 () Bool)

(declare-fun res!1197164 () Bool)

(assert (=> b!2894148 (=> (not res!1197164) (not e!1828740))))

(assert (=> b!2894148 (= res!1197164 (isEmpty!18822 (tail!4614 lt!1021334)))))

(declare-fun bm!188147 () Bool)

(assert (=> bm!188147 (= call!188152 (isEmpty!18822 lt!1021334))))

(declare-fun b!2894149 () Bool)

(declare-fun e!1828738 () Bool)

(assert (=> b!2894149 (= e!1828738 (not (= (head!6389 lt!1021334) (c!470792 (regTwo!18195 r!23079)))))))

(declare-fun b!2894150 () Bool)

(assert (=> b!2894150 (= e!1828740 (= (head!6389 lt!1021334) (c!470792 (regTwo!18195 r!23079))))))

(declare-fun b!2894151 () Bool)

(declare-fun res!1197167 () Bool)

(assert (=> b!2894151 (=> (not res!1197167) (not e!1828740))))

(assert (=> b!2894151 (= res!1197167 (not call!188152))))

(declare-fun b!2894152 () Bool)

(declare-fun res!1197166 () Bool)

(assert (=> b!2894152 (=> res!1197166 e!1828738)))

(assert (=> b!2894152 (= res!1197166 (not (isEmpty!18822 (tail!4614 lt!1021334))))))

(declare-fun b!2894153 () Bool)

(assert (=> b!2894153 (= e!1828735 e!1828739)))

(declare-fun c!470856 () Bool)

(assert (=> b!2894153 (= c!470856 ((_ is EmptyLang!8841) (regTwo!18195 r!23079)))))

(declare-fun b!2894154 () Bool)

(assert (=> b!2894154 (= e!1828737 e!1828738)))

(declare-fun res!1197168 () Bool)

(assert (=> b!2894154 (=> res!1197168 e!1828738)))

(assert (=> b!2894154 (= res!1197168 call!188152)))

(assert (= (and d!834686 c!470857) b!2894147))

(assert (= (and d!834686 (not c!470857)) b!2894143))

(assert (= (and d!834686 c!470858) b!2894145))

(assert (= (and d!834686 (not c!470858)) b!2894153))

(assert (= (and b!2894153 c!470856) b!2894146))

(assert (= (and b!2894153 (not c!470856)) b!2894144))

(assert (= (and b!2894144 (not res!1197162)) b!2894141))

(assert (= (and b!2894141 res!1197169) b!2894151))

(assert (= (and b!2894151 res!1197167) b!2894148))

(assert (= (and b!2894148 res!1197164) b!2894150))

(assert (= (and b!2894141 (not res!1197165)) b!2894142))

(assert (= (and b!2894142 res!1197163) b!2894154))

(assert (= (and b!2894154 (not res!1197168)) b!2894152))

(assert (= (and b!2894152 (not res!1197166)) b!2894149))

(assert (= (or b!2894145 b!2894151 b!2894154) bm!188147))

(declare-fun m!3303493 () Bool)

(assert (=> b!2894149 m!3303493))

(declare-fun m!3303495 () Bool)

(assert (=> b!2894152 m!3303495))

(assert (=> b!2894152 m!3303495))

(declare-fun m!3303497 () Bool)

(assert (=> b!2894152 m!3303497))

(assert (=> b!2894150 m!3303493))

(assert (=> b!2894148 m!3303495))

(assert (=> b!2894148 m!3303495))

(assert (=> b!2894148 m!3303497))

(declare-fun m!3303499 () Bool)

(assert (=> b!2894147 m!3303499))

(declare-fun m!3303501 () Bool)

(assert (=> d!834686 m!3303501))

(assert (=> d!834686 m!3303445))

(assert (=> b!2894143 m!3303493))

(assert (=> b!2894143 m!3303493))

(declare-fun m!3303503 () Bool)

(assert (=> b!2894143 m!3303503))

(assert (=> b!2894143 m!3303495))

(assert (=> b!2894143 m!3303503))

(assert (=> b!2894143 m!3303495))

(declare-fun m!3303505 () Bool)

(assert (=> b!2894143 m!3303505))

(assert (=> bm!188147 m!3303501))

(assert (=> b!2893966 d!834686))

(declare-fun b!2894212 () Bool)

(declare-fun e!1828790 () Bool)

(declare-fun call!188171 () Bool)

(assert (=> b!2894212 (= e!1828790 call!188171)))

(declare-fun b!2894213 () Bool)

(declare-fun e!1828786 () Bool)

(declare-fun e!1828788 () Bool)

(assert (=> b!2894213 (= e!1828786 e!1828788)))

(declare-fun res!1197206 () Bool)

(assert (=> b!2894213 (=> (not res!1197206) (not e!1828788))))

(declare-fun call!188169 () Bool)

(assert (=> b!2894213 (= res!1197206 call!188169)))

(declare-fun bm!188164 () Bool)

(declare-fun c!470872 () Bool)

(assert (=> bm!188164 (= call!188169 (validRegex!3614 (ite c!470872 (regOne!18195 (regTwo!18195 r!23079)) (regOne!18194 (regTwo!18195 r!23079)))))))

(declare-fun c!470873 () Bool)

(declare-fun bm!188165 () Bool)

(assert (=> bm!188165 (= call!188171 (validRegex!3614 (ite c!470873 (reg!9170 (regTwo!18195 r!23079)) (ite c!470872 (regTwo!18195 (regTwo!18195 r!23079)) (regTwo!18194 (regTwo!18195 r!23079))))))))

(declare-fun b!2894214 () Bool)

(declare-fun e!1828789 () Bool)

(declare-fun e!1828785 () Bool)

(assert (=> b!2894214 (= e!1828789 e!1828785)))

(assert (=> b!2894214 (= c!470872 ((_ is Union!8841) (regTwo!18195 r!23079)))))

(declare-fun b!2894215 () Bool)

(assert (=> b!2894215 (= e!1828789 e!1828790)))

(declare-fun res!1197203 () Bool)

(assert (=> b!2894215 (= res!1197203 (not (nullable!2741 (reg!9170 (regTwo!18195 r!23079)))))))

(assert (=> b!2894215 (=> (not res!1197203) (not e!1828790))))

(declare-fun b!2894216 () Bool)

(declare-fun res!1197207 () Bool)

(assert (=> b!2894216 (=> res!1197207 e!1828786)))

(assert (=> b!2894216 (= res!1197207 (not ((_ is Concat!14162) (regTwo!18195 r!23079))))))

(assert (=> b!2894216 (= e!1828785 e!1828786)))

(declare-fun b!2894218 () Bool)

(declare-fun e!1828787 () Bool)

(assert (=> b!2894218 (= e!1828787 e!1828789)))

(assert (=> b!2894218 (= c!470873 ((_ is Star!8841) (regTwo!18195 r!23079)))))

(declare-fun b!2894219 () Bool)

(declare-fun res!1197205 () Bool)

(declare-fun e!1828784 () Bool)

(assert (=> b!2894219 (=> (not res!1197205) (not e!1828784))))

(assert (=> b!2894219 (= res!1197205 call!188169)))

(assert (=> b!2894219 (= e!1828785 e!1828784)))

(declare-fun bm!188166 () Bool)

(declare-fun call!188170 () Bool)

(assert (=> bm!188166 (= call!188170 call!188171)))

(declare-fun b!2894220 () Bool)

(assert (=> b!2894220 (= e!1828788 call!188170)))

(declare-fun b!2894217 () Bool)

(assert (=> b!2894217 (= e!1828784 call!188170)))

(declare-fun d!834694 () Bool)

(declare-fun res!1197204 () Bool)

(assert (=> d!834694 (=> res!1197204 e!1828787)))

(assert (=> d!834694 (= res!1197204 ((_ is ElementMatch!8841) (regTwo!18195 r!23079)))))

(assert (=> d!834694 (= (validRegex!3614 (regTwo!18195 r!23079)) e!1828787)))

(assert (= (and d!834694 (not res!1197204)) b!2894218))

(assert (= (and b!2894218 c!470873) b!2894215))

(assert (= (and b!2894218 (not c!470873)) b!2894214))

(assert (= (and b!2894215 res!1197203) b!2894212))

(assert (= (and b!2894214 c!470872) b!2894219))

(assert (= (and b!2894214 (not c!470872)) b!2894216))

(assert (= (and b!2894219 res!1197205) b!2894217))

(assert (= (and b!2894216 (not res!1197207)) b!2894213))

(assert (= (and b!2894213 res!1197206) b!2894220))

(assert (= (or b!2894217 b!2894220) bm!188166))

(assert (= (or b!2894219 b!2894213) bm!188164))

(assert (= (or b!2894212 bm!188166) bm!188165))

(declare-fun m!3303523 () Bool)

(assert (=> bm!188164 m!3303523))

(declare-fun m!3303525 () Bool)

(assert (=> bm!188165 m!3303525))

(declare-fun m!3303527 () Bool)

(assert (=> b!2894215 m!3303527))

(assert (=> b!2893962 d!834694))

(declare-fun b!2894231 () Bool)

(declare-fun res!1197217 () Bool)

(declare-fun e!1828805 () Bool)

(assert (=> b!2894231 (=> res!1197217 e!1828805)))

(declare-fun e!1828804 () Bool)

(assert (=> b!2894231 (= res!1197217 e!1828804)))

(declare-fun res!1197221 () Bool)

(assert (=> b!2894231 (=> (not res!1197221) (not e!1828804))))

(declare-fun lt!1021371 () Bool)

(assert (=> b!2894231 (= res!1197221 lt!1021371)))

(declare-fun b!2894232 () Bool)

(declare-fun e!1828801 () Bool)

(assert (=> b!2894232 (= e!1828805 e!1828801)))

(declare-fun res!1197215 () Bool)

(assert (=> b!2894232 (=> (not res!1197215) (not e!1828801))))

(assert (=> b!2894232 (= res!1197215 (not lt!1021371))))

(declare-fun b!2894233 () Bool)

(declare-fun e!1828800 () Bool)

(assert (=> b!2894233 (= e!1828800 (matchR!3805 (derivativeStep!2360 (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079)) (head!6389 lt!1021334)) (tail!4614 lt!1021334)))))

(declare-fun b!2894234 () Bool)

(declare-fun res!1197214 () Bool)

(assert (=> b!2894234 (=> res!1197214 e!1828805)))

(assert (=> b!2894234 (= res!1197214 (not ((_ is ElementMatch!8841) (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079)))))))

(declare-fun e!1828803 () Bool)

(assert (=> b!2894234 (= e!1828803 e!1828805)))

(declare-fun b!2894235 () Bool)

(declare-fun e!1828799 () Bool)

(declare-fun call!188175 () Bool)

(assert (=> b!2894235 (= e!1828799 (= lt!1021371 call!188175))))

(declare-fun d!834702 () Bool)

(assert (=> d!834702 e!1828799))

(declare-fun c!470878 () Bool)

(assert (=> d!834702 (= c!470878 ((_ is EmptyExpr!8841) (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079))))))

(assert (=> d!834702 (= lt!1021371 e!1828800)))

(declare-fun c!470877 () Bool)

(assert (=> d!834702 (= c!470877 (isEmpty!18822 lt!1021334))))

(assert (=> d!834702 (validRegex!3614 (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079)))))

(assert (=> d!834702 (= (matchR!3805 (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079)) lt!1021334) lt!1021371)))

(declare-fun b!2894236 () Bool)

(assert (=> b!2894236 (= e!1828803 (not lt!1021371))))

(declare-fun b!2894237 () Bool)

(assert (=> b!2894237 (= e!1828800 (nullable!2741 (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079))))))

(declare-fun b!2894238 () Bool)

(declare-fun res!1197216 () Bool)

(assert (=> b!2894238 (=> (not res!1197216) (not e!1828804))))

(assert (=> b!2894238 (= res!1197216 (isEmpty!18822 (tail!4614 lt!1021334)))))

(declare-fun bm!188170 () Bool)

(assert (=> bm!188170 (= call!188175 (isEmpty!18822 lt!1021334))))

(declare-fun b!2894239 () Bool)

(declare-fun e!1828802 () Bool)

(assert (=> b!2894239 (= e!1828802 (not (= (head!6389 lt!1021334) (c!470792 (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079))))))))

(declare-fun b!2894240 () Bool)

(assert (=> b!2894240 (= e!1828804 (= (head!6389 lt!1021334) (c!470792 (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079)))))))

(declare-fun b!2894241 () Bool)

(declare-fun res!1197219 () Bool)

(assert (=> b!2894241 (=> (not res!1197219) (not e!1828804))))

(assert (=> b!2894241 (= res!1197219 (not call!188175))))

(declare-fun b!2894242 () Bool)

(declare-fun res!1197218 () Bool)

(assert (=> b!2894242 (=> res!1197218 e!1828802)))

(assert (=> b!2894242 (= res!1197218 (not (isEmpty!18822 (tail!4614 lt!1021334))))))

(declare-fun b!2894243 () Bool)

(assert (=> b!2894243 (= e!1828799 e!1828803)))

(declare-fun c!470876 () Bool)

(assert (=> b!2894243 (= c!470876 ((_ is EmptyLang!8841) (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079))))))

(declare-fun b!2894244 () Bool)

(assert (=> b!2894244 (= e!1828801 e!1828802)))

(declare-fun res!1197220 () Bool)

(assert (=> b!2894244 (=> res!1197220 e!1828802)))

(assert (=> b!2894244 (= res!1197220 call!188175)))

(assert (= (and d!834702 c!470877) b!2894237))

(assert (= (and d!834702 (not c!470877)) b!2894233))

(assert (= (and d!834702 c!470878) b!2894235))

(assert (= (and d!834702 (not c!470878)) b!2894243))

(assert (= (and b!2894243 c!470876) b!2894236))

(assert (= (and b!2894243 (not c!470876)) b!2894234))

(assert (= (and b!2894234 (not res!1197214)) b!2894231))

(assert (= (and b!2894231 res!1197221) b!2894241))

(assert (= (and b!2894241 res!1197219) b!2894238))

(assert (= (and b!2894238 res!1197216) b!2894240))

(assert (= (and b!2894231 (not res!1197217)) b!2894232))

(assert (= (and b!2894232 res!1197215) b!2894244))

(assert (= (and b!2894244 (not res!1197220)) b!2894242))

(assert (= (and b!2894242 (not res!1197218)) b!2894239))

(assert (= (or b!2894235 b!2894241 b!2894244) bm!188170))

(assert (=> b!2894239 m!3303493))

(assert (=> b!2894242 m!3303495))

(assert (=> b!2894242 m!3303495))

(assert (=> b!2894242 m!3303497))

(assert (=> b!2894240 m!3303493))

(assert (=> b!2894238 m!3303495))

(assert (=> b!2894238 m!3303495))

(assert (=> b!2894238 m!3303497))

(declare-fun m!3303535 () Bool)

(assert (=> b!2894237 m!3303535))

(assert (=> d!834702 m!3303501))

(declare-fun m!3303537 () Bool)

(assert (=> d!834702 m!3303537))

(assert (=> b!2894233 m!3303493))

(assert (=> b!2894233 m!3303493))

(declare-fun m!3303539 () Bool)

(assert (=> b!2894233 m!3303539))

(assert (=> b!2894233 m!3303495))

(assert (=> b!2894233 m!3303539))

(assert (=> b!2894233 m!3303495))

(declare-fun m!3303545 () Bool)

(assert (=> b!2894233 m!3303545))

(assert (=> bm!188170 m!3303501))

(assert (=> b!2893962 d!834702))

(declare-fun d!834708 () Bool)

(assert (=> d!834708 (matchR!3805 (Union!8841 (regTwo!18195 r!23079) (regOne!18195 r!23079)) lt!1021334)))

(declare-fun lt!1021380 () Unit!48099)

(declare-fun choose!17067 (Regex!8841 Regex!8841 List!34642) Unit!48099)

(assert (=> d!834708 (= lt!1021380 (choose!17067 (regTwo!18195 r!23079) (regOne!18195 r!23079) lt!1021334))))

(declare-fun e!1828838 () Bool)

(assert (=> d!834708 e!1828838))

(declare-fun res!1197229 () Bool)

(assert (=> d!834708 (=> (not res!1197229) (not e!1828838))))

(assert (=> d!834708 (= res!1197229 (validRegex!3614 (regTwo!18195 r!23079)))))

(assert (=> d!834708 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!46 (regTwo!18195 r!23079) (regOne!18195 r!23079) lt!1021334) lt!1021380)))

(declare-fun b!2894318 () Bool)

(assert (=> b!2894318 (= e!1828838 (validRegex!3614 (regOne!18195 r!23079)))))

(assert (= (and d!834708 res!1197229) b!2894318))

(assert (=> d!834708 m!3303447))

(declare-fun m!3303563 () Bool)

(assert (=> d!834708 m!3303563))

(assert (=> d!834708 m!3303445))

(assert (=> b!2894318 m!3303425))

(assert (=> b!2893962 d!834708))

(declare-fun b!2894319 () Bool)

(declare-fun e!1828845 () Bool)

(declare-fun call!188185 () Bool)

(assert (=> b!2894319 (= e!1828845 call!188185)))

(declare-fun b!2894320 () Bool)

(declare-fun e!1828841 () Bool)

(declare-fun e!1828843 () Bool)

(assert (=> b!2894320 (= e!1828841 e!1828843)))

(declare-fun res!1197233 () Bool)

(assert (=> b!2894320 (=> (not res!1197233) (not e!1828843))))

(declare-fun call!188183 () Bool)

(assert (=> b!2894320 (= res!1197233 call!188183)))

(declare-fun bm!188178 () Bool)

(declare-fun c!470897 () Bool)

(assert (=> bm!188178 (= call!188183 (validRegex!3614 (ite c!470897 (regOne!18195 r!23079) (regOne!18194 r!23079))))))

(declare-fun bm!188179 () Bool)

(declare-fun c!470898 () Bool)

(assert (=> bm!188179 (= call!188185 (validRegex!3614 (ite c!470898 (reg!9170 r!23079) (ite c!470897 (regTwo!18195 r!23079) (regTwo!18194 r!23079)))))))

(declare-fun b!2894321 () Bool)

(declare-fun e!1828844 () Bool)

(declare-fun e!1828840 () Bool)

(assert (=> b!2894321 (= e!1828844 e!1828840)))

(assert (=> b!2894321 (= c!470897 ((_ is Union!8841) r!23079))))

(declare-fun b!2894322 () Bool)

(assert (=> b!2894322 (= e!1828844 e!1828845)))

(declare-fun res!1197230 () Bool)

(assert (=> b!2894322 (= res!1197230 (not (nullable!2741 (reg!9170 r!23079))))))

(assert (=> b!2894322 (=> (not res!1197230) (not e!1828845))))

(declare-fun b!2894323 () Bool)

(declare-fun res!1197234 () Bool)

(assert (=> b!2894323 (=> res!1197234 e!1828841)))

(assert (=> b!2894323 (= res!1197234 (not ((_ is Concat!14162) r!23079)))))

(assert (=> b!2894323 (= e!1828840 e!1828841)))

(declare-fun b!2894325 () Bool)

(declare-fun e!1828842 () Bool)

(assert (=> b!2894325 (= e!1828842 e!1828844)))

(assert (=> b!2894325 (= c!470898 ((_ is Star!8841) r!23079))))

(declare-fun b!2894326 () Bool)

(declare-fun res!1197232 () Bool)

(declare-fun e!1828839 () Bool)

(assert (=> b!2894326 (=> (not res!1197232) (not e!1828839))))

(assert (=> b!2894326 (= res!1197232 call!188183)))

(assert (=> b!2894326 (= e!1828840 e!1828839)))

(declare-fun bm!188180 () Bool)

(declare-fun call!188184 () Bool)

(assert (=> bm!188180 (= call!188184 call!188185)))

(declare-fun b!2894327 () Bool)

(assert (=> b!2894327 (= e!1828843 call!188184)))

(declare-fun b!2894324 () Bool)

(assert (=> b!2894324 (= e!1828839 call!188184)))

(declare-fun d!834714 () Bool)

(declare-fun res!1197231 () Bool)

(assert (=> d!834714 (=> res!1197231 e!1828842)))

(assert (=> d!834714 (= res!1197231 ((_ is ElementMatch!8841) r!23079))))

(assert (=> d!834714 (= (validRegex!3614 r!23079) e!1828842)))

(assert (= (and d!834714 (not res!1197231)) b!2894325))

(assert (= (and b!2894325 c!470898) b!2894322))

(assert (= (and b!2894325 (not c!470898)) b!2894321))

(assert (= (and b!2894322 res!1197230) b!2894319))

(assert (= (and b!2894321 c!470897) b!2894326))

(assert (= (and b!2894321 (not c!470897)) b!2894323))

(assert (= (and b!2894326 res!1197232) b!2894324))

(assert (= (and b!2894323 (not res!1197234)) b!2894320))

(assert (= (and b!2894320 res!1197233) b!2894327))

(assert (= (or b!2894324 b!2894327) bm!188180))

(assert (= (or b!2894326 b!2894320) bm!188178))

(assert (= (or b!2894319 bm!188180) bm!188179))

(declare-fun m!3303565 () Bool)

(assert (=> bm!188178 m!3303565))

(declare-fun m!3303567 () Bool)

(assert (=> bm!188179 m!3303567))

(declare-fun m!3303569 () Bool)

(assert (=> b!2894322 m!3303569))

(assert (=> start!282062 d!834714))

(declare-fun b!2894328 () Bool)

(declare-fun e!1828849 () Option!6514)

(declare-fun e!1828848 () Option!6514)

(assert (=> b!2894328 (= e!1828849 e!1828848)))

(declare-fun lt!1021382 () Option!6514)

(declare-fun call!188187 () Option!6514)

(assert (=> b!2894328 (= lt!1021382 call!188187)))

(declare-fun c!470903 () Bool)

(assert (=> b!2894328 (= c!470903 ((_ is Some!6513) lt!1021382))))

(declare-fun b!2894329 () Bool)

(declare-fun e!1828847 () Option!6514)

(assert (=> b!2894329 (= e!1828847 None!6513)))

(declare-fun b!2894330 () Bool)

(declare-fun e!1828853 () Option!6514)

(assert (=> b!2894330 (= e!1828853 None!6513)))

(declare-fun b!2894332 () Bool)

(declare-fun e!1828851 () Option!6514)

(assert (=> b!2894332 (= e!1828851 e!1828853)))

(declare-fun c!470901 () Bool)

(assert (=> b!2894332 (= c!470901 ((_ is EmptyLang!8841) (regOne!18195 r!23079)))))

(declare-fun b!2894333 () Bool)

(declare-fun e!1828850 () Option!6514)

(declare-fun e!1828846 () Option!6514)

(assert (=> b!2894333 (= e!1828850 e!1828846)))

(declare-fun c!470900 () Bool)

(assert (=> b!2894333 (= c!470900 ((_ is Star!8841) (regOne!18195 r!23079)))))

(declare-fun b!2894334 () Bool)

(declare-fun c!470905 () Bool)

(declare-fun lt!1021383 () Option!6514)

(assert (=> b!2894334 (= c!470905 ((_ is Some!6513) lt!1021383))))

(declare-fun call!188186 () Option!6514)

(assert (=> b!2894334 (= lt!1021383 call!188186)))

(assert (=> b!2894334 (= e!1828848 e!1828847)))

(declare-fun b!2894335 () Bool)

(assert (=> b!2894335 (= e!1828847 (Some!6513 (++!8239 (v!34639 lt!1021382) (v!34639 lt!1021383))))))

(declare-fun b!2894336 () Bool)

(assert (=> b!2894336 (= e!1828848 None!6513)))

(declare-fun b!2894337 () Bool)

(declare-fun e!1828852 () Option!6514)

(assert (=> b!2894337 (= e!1828849 e!1828852)))

(declare-fun lt!1021381 () Option!6514)

(assert (=> b!2894337 (= lt!1021381 call!188186)))

(declare-fun c!470902 () Bool)

(assert (=> b!2894337 (= c!470902 ((_ is Some!6513) lt!1021381))))

(declare-fun b!2894338 () Bool)

(declare-fun c!470906 () Bool)

(assert (=> b!2894338 (= c!470906 ((_ is ElementMatch!8841) (regOne!18195 r!23079)))))

(assert (=> b!2894338 (= e!1828853 e!1828850)))

(declare-fun b!2894339 () Bool)

(assert (=> b!2894339 (= e!1828846 (Some!6513 Nil!34518))))

(declare-fun b!2894340 () Bool)

(assert (=> b!2894340 (= e!1828851 (Some!6513 Nil!34518))))

(declare-fun d!834716 () Bool)

(declare-fun c!470904 () Bool)

(assert (=> d!834716 (= c!470904 ((_ is EmptyExpr!8841) (regOne!18195 r!23079)))))

(assert (=> d!834716 (= (getLanguageWitness!548 (regOne!18195 r!23079)) e!1828851)))

(declare-fun b!2894331 () Bool)

(assert (=> b!2894331 (= e!1828852 lt!1021381)))

(declare-fun b!2894341 () Bool)

(assert (=> b!2894341 (= e!1828852 call!188187)))

(declare-fun bm!188181 () Bool)

(declare-fun c!470899 () Bool)

(assert (=> bm!188181 (= call!188187 (getLanguageWitness!548 (ite c!470899 (regTwo!18195 (regOne!18195 r!23079)) (regOne!18194 (regOne!18195 r!23079)))))))

(declare-fun b!2894342 () Bool)

(assert (=> b!2894342 (= c!470899 ((_ is Union!8841) (regOne!18195 r!23079)))))

(assert (=> b!2894342 (= e!1828846 e!1828849)))

(declare-fun b!2894343 () Bool)

(assert (=> b!2894343 (= e!1828850 (Some!6513 (Cons!34518 (c!470792 (regOne!18195 r!23079)) Nil!34518)))))

(declare-fun bm!188182 () Bool)

(assert (=> bm!188182 (= call!188186 (getLanguageWitness!548 (ite c!470899 (regOne!18195 (regOne!18195 r!23079)) (regTwo!18194 (regOne!18195 r!23079)))))))

(assert (= (and d!834716 c!470904) b!2894340))

(assert (= (and d!834716 (not c!470904)) b!2894332))

(assert (= (and b!2894332 c!470901) b!2894330))

(assert (= (and b!2894332 (not c!470901)) b!2894338))

(assert (= (and b!2894338 c!470906) b!2894343))

(assert (= (and b!2894338 (not c!470906)) b!2894333))

(assert (= (and b!2894333 c!470900) b!2894339))

(assert (= (and b!2894333 (not c!470900)) b!2894342))

(assert (= (and b!2894342 c!470899) b!2894337))

(assert (= (and b!2894342 (not c!470899)) b!2894328))

(assert (= (and b!2894337 c!470902) b!2894331))

(assert (= (and b!2894337 (not c!470902)) b!2894341))

(assert (= (and b!2894328 c!470903) b!2894334))

(assert (= (and b!2894328 (not c!470903)) b!2894336))

(assert (= (and b!2894334 c!470905) b!2894335))

(assert (= (and b!2894334 (not c!470905)) b!2894329))

(assert (= (or b!2894341 b!2894328) bm!188181))

(assert (= (or b!2894337 b!2894334) bm!188182))

(declare-fun m!3303571 () Bool)

(assert (=> b!2894335 m!3303571))

(declare-fun m!3303573 () Bool)

(assert (=> bm!188181 m!3303573))

(declare-fun m!3303575 () Bool)

(assert (=> bm!188182 m!3303575))

(assert (=> b!2893968 d!834716))

(declare-fun d!834718 () Bool)

(assert (=> d!834718 (= (isDefined!5078 (getLanguageWitness!548 r!23079)) (not (isEmpty!18821 (getLanguageWitness!548 r!23079))))))

(declare-fun bs!523922 () Bool)

(assert (= bs!523922 d!834718))

(assert (=> bs!523922 m!3303439))

(declare-fun m!3303577 () Bool)

(assert (=> bs!523922 m!3303577))

(assert (=> b!2893970 d!834718))

(declare-fun b!2894344 () Bool)

(declare-fun e!1828857 () Option!6514)

(declare-fun e!1828856 () Option!6514)

(assert (=> b!2894344 (= e!1828857 e!1828856)))

(declare-fun lt!1021385 () Option!6514)

(declare-fun call!188189 () Option!6514)

(assert (=> b!2894344 (= lt!1021385 call!188189)))

(declare-fun c!470911 () Bool)

(assert (=> b!2894344 (= c!470911 ((_ is Some!6513) lt!1021385))))

(declare-fun b!2894345 () Bool)

(declare-fun e!1828855 () Option!6514)

(assert (=> b!2894345 (= e!1828855 None!6513)))

(declare-fun b!2894346 () Bool)

(declare-fun e!1828861 () Option!6514)

(assert (=> b!2894346 (= e!1828861 None!6513)))

(declare-fun b!2894348 () Bool)

(declare-fun e!1828859 () Option!6514)

(assert (=> b!2894348 (= e!1828859 e!1828861)))

(declare-fun c!470909 () Bool)

(assert (=> b!2894348 (= c!470909 ((_ is EmptyLang!8841) r!23079))))

(declare-fun b!2894349 () Bool)

(declare-fun e!1828858 () Option!6514)

(declare-fun e!1828854 () Option!6514)

(assert (=> b!2894349 (= e!1828858 e!1828854)))

(declare-fun c!470908 () Bool)

(assert (=> b!2894349 (= c!470908 ((_ is Star!8841) r!23079))))

(declare-fun b!2894350 () Bool)

(declare-fun c!470913 () Bool)

(declare-fun lt!1021386 () Option!6514)

(assert (=> b!2894350 (= c!470913 ((_ is Some!6513) lt!1021386))))

(declare-fun call!188188 () Option!6514)

(assert (=> b!2894350 (= lt!1021386 call!188188)))

(assert (=> b!2894350 (= e!1828856 e!1828855)))

(declare-fun b!2894351 () Bool)

(assert (=> b!2894351 (= e!1828855 (Some!6513 (++!8239 (v!34639 lt!1021385) (v!34639 lt!1021386))))))

(declare-fun b!2894352 () Bool)

(assert (=> b!2894352 (= e!1828856 None!6513)))

(declare-fun b!2894353 () Bool)

(declare-fun e!1828860 () Option!6514)

(assert (=> b!2894353 (= e!1828857 e!1828860)))

(declare-fun lt!1021384 () Option!6514)

(assert (=> b!2894353 (= lt!1021384 call!188188)))

(declare-fun c!470910 () Bool)

(assert (=> b!2894353 (= c!470910 ((_ is Some!6513) lt!1021384))))

(declare-fun b!2894354 () Bool)

(declare-fun c!470914 () Bool)

(assert (=> b!2894354 (= c!470914 ((_ is ElementMatch!8841) r!23079))))

(assert (=> b!2894354 (= e!1828861 e!1828858)))

(declare-fun b!2894355 () Bool)

(assert (=> b!2894355 (= e!1828854 (Some!6513 Nil!34518))))

(declare-fun b!2894356 () Bool)

(assert (=> b!2894356 (= e!1828859 (Some!6513 Nil!34518))))

(declare-fun d!834720 () Bool)

(declare-fun c!470912 () Bool)

(assert (=> d!834720 (= c!470912 ((_ is EmptyExpr!8841) r!23079))))

(assert (=> d!834720 (= (getLanguageWitness!548 r!23079) e!1828859)))

(declare-fun b!2894347 () Bool)

(assert (=> b!2894347 (= e!1828860 lt!1021384)))

(declare-fun b!2894357 () Bool)

(assert (=> b!2894357 (= e!1828860 call!188189)))

(declare-fun bm!188183 () Bool)

(declare-fun c!470907 () Bool)

(assert (=> bm!188183 (= call!188189 (getLanguageWitness!548 (ite c!470907 (regTwo!18195 r!23079) (regOne!18194 r!23079))))))

(declare-fun b!2894358 () Bool)

(assert (=> b!2894358 (= c!470907 ((_ is Union!8841) r!23079))))

(assert (=> b!2894358 (= e!1828854 e!1828857)))

(declare-fun b!2894359 () Bool)

(assert (=> b!2894359 (= e!1828858 (Some!6513 (Cons!34518 (c!470792 r!23079) Nil!34518)))))

(declare-fun bm!188184 () Bool)

(assert (=> bm!188184 (= call!188188 (getLanguageWitness!548 (ite c!470907 (regOne!18195 r!23079) (regTwo!18194 r!23079))))))

(assert (= (and d!834720 c!470912) b!2894356))

(assert (= (and d!834720 (not c!470912)) b!2894348))

(assert (= (and b!2894348 c!470909) b!2894346))

(assert (= (and b!2894348 (not c!470909)) b!2894354))

(assert (= (and b!2894354 c!470914) b!2894359))

(assert (= (and b!2894354 (not c!470914)) b!2894349))

(assert (= (and b!2894349 c!470908) b!2894355))

(assert (= (and b!2894349 (not c!470908)) b!2894358))

(assert (= (and b!2894358 c!470907) b!2894353))

(assert (= (and b!2894358 (not c!470907)) b!2894344))

(assert (= (and b!2894353 c!470910) b!2894347))

(assert (= (and b!2894353 (not c!470910)) b!2894357))

(assert (= (and b!2894344 c!470911) b!2894350))

(assert (= (and b!2894344 (not c!470911)) b!2894352))

(assert (= (and b!2894350 c!470913) b!2894351))

(assert (= (and b!2894350 (not c!470913)) b!2894345))

(assert (= (or b!2894357 b!2894344) bm!188183))

(assert (= (or b!2894353 b!2894350) bm!188184))

(declare-fun m!3303579 () Bool)

(assert (=> b!2894351 m!3303579))

(declare-fun m!3303581 () Bool)

(assert (=> bm!188183 m!3303581))

(declare-fun m!3303583 () Bool)

(assert (=> bm!188184 m!3303583))

(assert (=> b!2893970 d!834720))

(declare-fun b!2894360 () Bool)

(declare-fun e!1828868 () Bool)

(declare-fun call!188192 () Bool)

(assert (=> b!2894360 (= e!1828868 call!188192)))

(declare-fun b!2894361 () Bool)

(declare-fun e!1828864 () Bool)

(declare-fun e!1828866 () Bool)

(assert (=> b!2894361 (= e!1828864 e!1828866)))

(declare-fun res!1197238 () Bool)

(assert (=> b!2894361 (=> (not res!1197238) (not e!1828866))))

(declare-fun call!188190 () Bool)

(assert (=> b!2894361 (= res!1197238 call!188190)))

(declare-fun bm!188185 () Bool)

(declare-fun c!470915 () Bool)

(assert (=> bm!188185 (= call!188190 (validRegex!3614 (ite c!470915 (regOne!18195 (regOne!18195 r!23079)) (regOne!18194 (regOne!18195 r!23079)))))))

(declare-fun bm!188186 () Bool)

(declare-fun c!470916 () Bool)

(assert (=> bm!188186 (= call!188192 (validRegex!3614 (ite c!470916 (reg!9170 (regOne!18195 r!23079)) (ite c!470915 (regTwo!18195 (regOne!18195 r!23079)) (regTwo!18194 (regOne!18195 r!23079))))))))

(declare-fun b!2894362 () Bool)

(declare-fun e!1828867 () Bool)

(declare-fun e!1828863 () Bool)

(assert (=> b!2894362 (= e!1828867 e!1828863)))

(assert (=> b!2894362 (= c!470915 ((_ is Union!8841) (regOne!18195 r!23079)))))

(declare-fun b!2894363 () Bool)

(assert (=> b!2894363 (= e!1828867 e!1828868)))

(declare-fun res!1197235 () Bool)

(assert (=> b!2894363 (= res!1197235 (not (nullable!2741 (reg!9170 (regOne!18195 r!23079)))))))

(assert (=> b!2894363 (=> (not res!1197235) (not e!1828868))))

(declare-fun b!2894364 () Bool)

(declare-fun res!1197239 () Bool)

(assert (=> b!2894364 (=> res!1197239 e!1828864)))

(assert (=> b!2894364 (= res!1197239 (not ((_ is Concat!14162) (regOne!18195 r!23079))))))

(assert (=> b!2894364 (= e!1828863 e!1828864)))

(declare-fun b!2894366 () Bool)

(declare-fun e!1828865 () Bool)

(assert (=> b!2894366 (= e!1828865 e!1828867)))

(assert (=> b!2894366 (= c!470916 ((_ is Star!8841) (regOne!18195 r!23079)))))

(declare-fun b!2894367 () Bool)

(declare-fun res!1197237 () Bool)

(declare-fun e!1828862 () Bool)

(assert (=> b!2894367 (=> (not res!1197237) (not e!1828862))))

(assert (=> b!2894367 (= res!1197237 call!188190)))

(assert (=> b!2894367 (= e!1828863 e!1828862)))

(declare-fun bm!188187 () Bool)

(declare-fun call!188191 () Bool)

(assert (=> bm!188187 (= call!188191 call!188192)))

(declare-fun b!2894368 () Bool)

(assert (=> b!2894368 (= e!1828866 call!188191)))

(declare-fun b!2894365 () Bool)

(assert (=> b!2894365 (= e!1828862 call!188191)))

(declare-fun d!834722 () Bool)

(declare-fun res!1197236 () Bool)

(assert (=> d!834722 (=> res!1197236 e!1828865)))

(assert (=> d!834722 (= res!1197236 ((_ is ElementMatch!8841) (regOne!18195 r!23079)))))

(assert (=> d!834722 (= (validRegex!3614 (regOne!18195 r!23079)) e!1828865)))

(assert (= (and d!834722 (not res!1197236)) b!2894366))

(assert (= (and b!2894366 c!470916) b!2894363))

(assert (= (and b!2894366 (not c!470916)) b!2894362))

(assert (= (and b!2894363 res!1197235) b!2894360))

(assert (= (and b!2894362 c!470915) b!2894367))

(assert (= (and b!2894362 (not c!470915)) b!2894364))

(assert (= (and b!2894367 res!1197237) b!2894365))

(assert (= (and b!2894364 (not res!1197239)) b!2894361))

(assert (= (and b!2894361 res!1197238) b!2894368))

(assert (= (or b!2894365 b!2894368) bm!188187))

(assert (= (or b!2894367 b!2894361) bm!188185))

(assert (= (or b!2894360 bm!188187) bm!188186))

(declare-fun m!3303585 () Bool)

(assert (=> bm!188185 m!3303585))

(declare-fun m!3303587 () Bool)

(assert (=> bm!188186 m!3303587))

(declare-fun m!3303589 () Bool)

(assert (=> b!2894363 m!3303589))

(assert (=> b!2893964 d!834722))

(declare-fun b!2894379 () Bool)

(declare-fun e!1828871 () Bool)

(assert (=> b!2894379 (= e!1828871 tp_is_empty!15269)))

(declare-fun b!2894381 () Bool)

(declare-fun tp!929129 () Bool)

(assert (=> b!2894381 (= e!1828871 tp!929129)))

(assert (=> b!2893961 (= tp!929075 e!1828871)))

(declare-fun b!2894380 () Bool)

(declare-fun tp!929125 () Bool)

(declare-fun tp!929126 () Bool)

(assert (=> b!2894380 (= e!1828871 (and tp!929125 tp!929126))))

(declare-fun b!2894382 () Bool)

(declare-fun tp!929128 () Bool)

(declare-fun tp!929127 () Bool)

(assert (=> b!2894382 (= e!1828871 (and tp!929128 tp!929127))))

(assert (= (and b!2893961 ((_ is ElementMatch!8841) (regOne!18195 r!23079))) b!2894379))

(assert (= (and b!2893961 ((_ is Concat!14162) (regOne!18195 r!23079))) b!2894380))

(assert (= (and b!2893961 ((_ is Star!8841) (regOne!18195 r!23079))) b!2894381))

(assert (= (and b!2893961 ((_ is Union!8841) (regOne!18195 r!23079))) b!2894382))

(declare-fun b!2894383 () Bool)

(declare-fun e!1828872 () Bool)

(assert (=> b!2894383 (= e!1828872 tp_is_empty!15269)))

(declare-fun b!2894385 () Bool)

(declare-fun tp!929134 () Bool)

(assert (=> b!2894385 (= e!1828872 tp!929134)))

(assert (=> b!2893961 (= tp!929079 e!1828872)))

(declare-fun b!2894384 () Bool)

(declare-fun tp!929130 () Bool)

(declare-fun tp!929131 () Bool)

(assert (=> b!2894384 (= e!1828872 (and tp!929130 tp!929131))))

(declare-fun b!2894386 () Bool)

(declare-fun tp!929133 () Bool)

(declare-fun tp!929132 () Bool)

(assert (=> b!2894386 (= e!1828872 (and tp!929133 tp!929132))))

(assert (= (and b!2893961 ((_ is ElementMatch!8841) (regTwo!18195 r!23079))) b!2894383))

(assert (= (and b!2893961 ((_ is Concat!14162) (regTwo!18195 r!23079))) b!2894384))

(assert (= (and b!2893961 ((_ is Star!8841) (regTwo!18195 r!23079))) b!2894385))

(assert (= (and b!2893961 ((_ is Union!8841) (regTwo!18195 r!23079))) b!2894386))

(declare-fun b!2894387 () Bool)

(declare-fun e!1828873 () Bool)

(assert (=> b!2894387 (= e!1828873 tp_is_empty!15269)))

(declare-fun b!2894389 () Bool)

(declare-fun tp!929139 () Bool)

(assert (=> b!2894389 (= e!1828873 tp!929139)))

(assert (=> b!2893963 (= tp!929078 e!1828873)))

(declare-fun b!2894388 () Bool)

(declare-fun tp!929135 () Bool)

(declare-fun tp!929136 () Bool)

(assert (=> b!2894388 (= e!1828873 (and tp!929135 tp!929136))))

(declare-fun b!2894390 () Bool)

(declare-fun tp!929138 () Bool)

(declare-fun tp!929137 () Bool)

(assert (=> b!2894390 (= e!1828873 (and tp!929138 tp!929137))))

(assert (= (and b!2893963 ((_ is ElementMatch!8841) (reg!9170 r!23079))) b!2894387))

(assert (= (and b!2893963 ((_ is Concat!14162) (reg!9170 r!23079))) b!2894388))

(assert (= (and b!2893963 ((_ is Star!8841) (reg!9170 r!23079))) b!2894389))

(assert (= (and b!2893963 ((_ is Union!8841) (reg!9170 r!23079))) b!2894390))

(declare-fun b!2894391 () Bool)

(declare-fun e!1828874 () Bool)

(assert (=> b!2894391 (= e!1828874 tp_is_empty!15269)))

(declare-fun b!2894393 () Bool)

(declare-fun tp!929144 () Bool)

(assert (=> b!2894393 (= e!1828874 tp!929144)))

(assert (=> b!2893969 (= tp!929076 e!1828874)))

(declare-fun b!2894392 () Bool)

(declare-fun tp!929140 () Bool)

(declare-fun tp!929141 () Bool)

(assert (=> b!2894392 (= e!1828874 (and tp!929140 tp!929141))))

(declare-fun b!2894394 () Bool)

(declare-fun tp!929143 () Bool)

(declare-fun tp!929142 () Bool)

(assert (=> b!2894394 (= e!1828874 (and tp!929143 tp!929142))))

(assert (= (and b!2893969 ((_ is ElementMatch!8841) (regOne!18194 r!23079))) b!2894391))

(assert (= (and b!2893969 ((_ is Concat!14162) (regOne!18194 r!23079))) b!2894392))

(assert (= (and b!2893969 ((_ is Star!8841) (regOne!18194 r!23079))) b!2894393))

(assert (= (and b!2893969 ((_ is Union!8841) (regOne!18194 r!23079))) b!2894394))

(declare-fun b!2894395 () Bool)

(declare-fun e!1828875 () Bool)

(assert (=> b!2894395 (= e!1828875 tp_is_empty!15269)))

(declare-fun b!2894397 () Bool)

(declare-fun tp!929149 () Bool)

(assert (=> b!2894397 (= e!1828875 tp!929149)))

(assert (=> b!2893969 (= tp!929077 e!1828875)))

(declare-fun b!2894396 () Bool)

(declare-fun tp!929145 () Bool)

(declare-fun tp!929146 () Bool)

(assert (=> b!2894396 (= e!1828875 (and tp!929145 tp!929146))))

(declare-fun b!2894398 () Bool)

(declare-fun tp!929148 () Bool)

(declare-fun tp!929147 () Bool)

(assert (=> b!2894398 (= e!1828875 (and tp!929148 tp!929147))))

(assert (= (and b!2893969 ((_ is ElementMatch!8841) (regTwo!18194 r!23079))) b!2894395))

(assert (= (and b!2893969 ((_ is Concat!14162) (regTwo!18194 r!23079))) b!2894396))

(assert (= (and b!2893969 ((_ is Star!8841) (regTwo!18194 r!23079))) b!2894397))

(assert (= (and b!2893969 ((_ is Union!8841) (regTwo!18194 r!23079))) b!2894398))

(check-sat (not bm!188185) tp_is_empty!15269 (not b!2894318) (not b!2894389) (not b!2894143) (not b!2894363) (not b!2894150) (not d!834708) (not bm!188184) (not d!834678) (not b!2894380) (not b!2894394) (not b!2894396) (not b!2894239) (not b!2894058) (not bm!188140) (not d!834718) (not b!2894385) (not d!834702) (not bm!188181) (not b!2894398) (not b!2894148) (not b!2894238) (not b!2894390) (not bm!188141) (not b!2894147) (not b!2894240) (not b!2894384) (not b!2894381) (not b!2894215) (not b!2894392) (not bm!188178) (not bm!188182) (not b!2894242) (not b!2894397) (not b!2894393) (not b!2894152) (not bm!188183) (not b!2894351) (not b!2894335) (not b!2894149) (not bm!188186) (not b!2894322) (not bm!188164) (not bm!188165) (not b!2894388) (not b!2894237) (not d!834682) (not bm!188147) (not bm!188179) (not bm!188170) (not b!2894386) (not b!2894382) (not b!2894233) (not d!834686))
(check-sat)
