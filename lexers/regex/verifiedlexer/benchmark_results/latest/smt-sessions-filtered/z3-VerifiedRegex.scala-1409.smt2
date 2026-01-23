; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74034 () Bool)

(assert start!74034)

(declare-fun b!831072 () Bool)

(declare-fun e!547449 () Bool)

(declare-datatypes ((C!4724 0))(
  ( (C!4725 (val!2610 Int)) )
))
(declare-datatypes ((Regex!2077 0))(
  ( (ElementMatch!2077 (c!135348 C!4724)) (Concat!3808 (regOne!4666 Regex!2077) (regTwo!4666 Regex!2077)) (EmptyExpr!2077) (Star!2077 (reg!2406 Regex!2077)) (EmptyLang!2077) (Union!2077 (regOne!4667 Regex!2077) (regTwo!4667 Regex!2077)) )
))
(declare-fun r!27177 () Regex!2077)

(declare-fun c!13916 () C!4724)

(declare-datatypes ((List!8903 0))(
  ( (Nil!8887) (Cons!8887 (h!14288 C!4724) (t!93195 List!8903)) )
))
(declare-fun contains!1668 (List!8903 C!4724) Bool)

(declare-fun usedCharacters!166 (Regex!2077) List!8903)

(assert (=> b!831072 (= e!547449 (not (contains!1668 (usedCharacters!166 r!27177) c!13916)))))

(assert (=> b!831072 (contains!1668 (usedCharacters!166 (regOne!4666 r!27177)) c!13916)))

(declare-datatypes ((Unit!13383 0))(
  ( (Unit!13384) )
))
(declare-fun lt!317729 () Unit!13383)

(declare-fun lemmaUsedCharsContainsAllFirstChars!8 (Regex!2077 C!4724) Unit!13383)

(assert (=> b!831072 (= lt!317729 (lemmaUsedCharsContainsAllFirstChars!8 (regOne!4666 r!27177) c!13916))))

(declare-fun b!831073 () Bool)

(declare-fun e!547448 () Bool)

(declare-fun tp!260264 () Bool)

(assert (=> b!831073 (= e!547448 tp!260264)))

(declare-fun b!831074 () Bool)

(declare-fun tp!260260 () Bool)

(declare-fun tp!260261 () Bool)

(assert (=> b!831074 (= e!547448 (and tp!260260 tp!260261))))

(declare-fun b!831076 () Bool)

(declare-fun res!381452 () Bool)

(assert (=> b!831076 (=> (not res!381452) (not e!547449))))

(declare-fun validRegex!630 (Regex!2077) Bool)

(assert (=> b!831076 (= res!381452 (validRegex!630 (regOne!4666 r!27177)))))

(declare-fun b!831077 () Bool)

(declare-fun res!381448 () Bool)

(assert (=> b!831077 (=> (not res!381448) (not e!547449))))

(declare-fun firstChars!48 (Regex!2077) List!8903)

(assert (=> b!831077 (= res!381448 (contains!1668 (firstChars!48 r!27177) c!13916))))

(declare-fun b!831078 () Bool)

(declare-fun res!381453 () Bool)

(assert (=> b!831078 (=> (not res!381453) (not e!547449))))

(declare-fun nullable!528 (Regex!2077) Bool)

(assert (=> b!831078 (= res!381453 (nullable!528 (regOne!4666 r!27177)))))

(declare-fun b!831079 () Bool)

(declare-fun res!381451 () Bool)

(assert (=> b!831079 (=> (not res!381451) (not e!547449))))

(get-info :version)

(assert (=> b!831079 (= res!381451 (and (not ((_ is EmptyExpr!2077) r!27177)) (not ((_ is EmptyLang!2077) r!27177)) (not ((_ is ElementMatch!2077) r!27177)) (not ((_ is Star!2077) r!27177)) (not ((_ is Union!2077) r!27177))))))

(declare-fun res!381449 () Bool)

(assert (=> start!74034 (=> (not res!381449) (not e!547449))))

(assert (=> start!74034 (= res!381449 (validRegex!630 r!27177))))

(assert (=> start!74034 e!547449))

(assert (=> start!74034 e!547448))

(declare-fun tp_is_empty!3877 () Bool)

(assert (=> start!74034 tp_is_empty!3877))

(declare-fun b!831075 () Bool)

(declare-fun tp!260263 () Bool)

(declare-fun tp!260262 () Bool)

(assert (=> b!831075 (= e!547448 (and tp!260263 tp!260262))))

(declare-fun b!831080 () Bool)

(declare-fun res!381450 () Bool)

(assert (=> b!831080 (=> (not res!381450) (not e!547449))))

(assert (=> b!831080 (= res!381450 (contains!1668 (firstChars!48 (regOne!4666 r!27177)) c!13916))))

(declare-fun b!831081 () Bool)

(assert (=> b!831081 (= e!547448 tp_is_empty!3877)))

(assert (= (and start!74034 res!381449) b!831077))

(assert (= (and b!831077 res!381448) b!831079))

(assert (= (and b!831079 res!381451) b!831078))

(assert (= (and b!831078 res!381453) b!831080))

(assert (= (and b!831080 res!381450) b!831076))

(assert (= (and b!831076 res!381452) b!831072))

(assert (= (and start!74034 ((_ is ElementMatch!2077) r!27177)) b!831081))

(assert (= (and start!74034 ((_ is Concat!3808) r!27177)) b!831074))

(assert (= (and start!74034 ((_ is Star!2077) r!27177)) b!831073))

(assert (= (and start!74034 ((_ is Union!2077) r!27177)) b!831075))

(declare-fun m!1067685 () Bool)

(assert (=> b!831078 m!1067685))

(declare-fun m!1067687 () Bool)

(assert (=> start!74034 m!1067687))

(declare-fun m!1067689 () Bool)

(assert (=> b!831072 m!1067689))

(declare-fun m!1067691 () Bool)

(assert (=> b!831072 m!1067691))

(assert (=> b!831072 m!1067689))

(declare-fun m!1067693 () Bool)

(assert (=> b!831072 m!1067693))

(declare-fun m!1067695 () Bool)

(assert (=> b!831072 m!1067695))

(assert (=> b!831072 m!1067695))

(declare-fun m!1067697 () Bool)

(assert (=> b!831072 m!1067697))

(declare-fun m!1067699 () Bool)

(assert (=> b!831080 m!1067699))

(assert (=> b!831080 m!1067699))

(declare-fun m!1067701 () Bool)

(assert (=> b!831080 m!1067701))

(declare-fun m!1067703 () Bool)

(assert (=> b!831076 m!1067703))

(declare-fun m!1067705 () Bool)

(assert (=> b!831077 m!1067705))

(assert (=> b!831077 m!1067705))

(declare-fun m!1067707 () Bool)

(assert (=> b!831077 m!1067707))

(check-sat (not b!831072) (not b!831075) (not b!831077) tp_is_empty!3877 (not b!831078) (not start!74034) (not b!831074) (not b!831076) (not b!831080) (not b!831073))
(check-sat)
(get-model)

(declare-fun bm!49017 () Bool)

(declare-fun call!49023 () Bool)

(declare-fun c!135360 () Bool)

(assert (=> bm!49017 (= call!49023 (validRegex!630 (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(declare-fun b!831119 () Bool)

(declare-fun res!381481 () Bool)

(declare-fun e!547482 () Bool)

(assert (=> b!831119 (=> (not res!381481) (not e!547482))))

(declare-fun call!49027 () Bool)

(assert (=> b!831119 (= res!381481 call!49027)))

(declare-fun e!547484 () Bool)

(assert (=> b!831119 (= e!547484 e!547482)))

(declare-fun b!831120 () Bool)

(assert (=> b!831120 (= e!547482 call!49023)))

(declare-fun b!831122 () Bool)

(declare-fun res!381479 () Bool)

(declare-fun e!547481 () Bool)

(assert (=> b!831122 (=> res!381479 e!547481)))

(assert (=> b!831122 (= res!381479 (not ((_ is Concat!3808) (regOne!4666 r!27177))))))

(assert (=> b!831122 (= e!547484 e!547481)))

(declare-fun b!831124 () Bool)

(declare-fun e!547491 () Bool)

(assert (=> b!831124 (= e!547491 call!49027)))

(declare-fun b!831125 () Bool)

(assert (=> b!831125 (= e!547481 e!547491)))

(declare-fun res!381474 () Bool)

(assert (=> b!831125 (=> (not res!381474) (not e!547491))))

(assert (=> b!831125 (= res!381474 call!49023)))

(declare-fun b!831127 () Bool)

(declare-fun e!547486 () Bool)

(assert (=> b!831127 (= e!547486 e!547484)))

(assert (=> b!831127 (= c!135360 ((_ is Union!2077) (regOne!4666 r!27177)))))

(declare-fun d!260170 () Bool)

(declare-fun res!381475 () Bool)

(declare-fun e!547485 () Bool)

(assert (=> d!260170 (=> res!381475 e!547485)))

(assert (=> d!260170 (= res!381475 ((_ is ElementMatch!2077) (regOne!4666 r!27177)))))

(assert (=> d!260170 (= (validRegex!630 (regOne!4666 r!27177)) e!547485)))

(declare-fun b!831129 () Bool)

(assert (=> b!831129 (= e!547485 e!547486)))

(declare-fun c!135357 () Bool)

(assert (=> b!831129 (= c!135357 ((_ is Star!2077) (regOne!4666 r!27177)))))

(declare-fun b!831131 () Bool)

(declare-fun e!547490 () Bool)

(assert (=> b!831131 (= e!547486 e!547490)))

(declare-fun res!381478 () Bool)

(assert (=> b!831131 (= res!381478 (not (nullable!528 (reg!2406 (regOne!4666 r!27177)))))))

(assert (=> b!831131 (=> (not res!381478) (not e!547490))))

(declare-fun b!831133 () Bool)

(declare-fun call!49026 () Bool)

(assert (=> b!831133 (= e!547490 call!49026)))

(declare-fun bm!49021 () Bool)

(assert (=> bm!49021 (= call!49027 call!49026)))

(declare-fun bm!49022 () Bool)

(assert (=> bm!49022 (= call!49026 (validRegex!630 (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(assert (= (and d!260170 (not res!381475)) b!831129))

(assert (= (and b!831129 c!135357) b!831131))

(assert (= (and b!831129 (not c!135357)) b!831127))

(assert (= (and b!831131 res!381478) b!831133))

(assert (= (and b!831127 c!135360) b!831119))

(assert (= (and b!831127 (not c!135360)) b!831122))

(assert (= (and b!831119 res!381481) b!831120))

(assert (= (and b!831122 (not res!381479)) b!831125))

(assert (= (and b!831125 res!381474) b!831124))

(assert (= (or b!831119 b!831124) bm!49021))

(assert (= (or b!831120 b!831125) bm!49017))

(assert (= (or b!831133 bm!49021) bm!49022))

(declare-fun m!1067709 () Bool)

(assert (=> bm!49017 m!1067709))

(declare-fun m!1067713 () Bool)

(assert (=> b!831131 m!1067713))

(declare-fun m!1067719 () Bool)

(assert (=> bm!49022 m!1067719))

(assert (=> b!831076 d!260170))

(declare-fun bm!49023 () Bool)

(declare-fun call!49028 () Bool)

(declare-fun c!135362 () Bool)

(assert (=> bm!49023 (= call!49028 (validRegex!630 (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))

(declare-fun b!831136 () Bool)

(declare-fun res!381488 () Bool)

(declare-fun e!547493 () Bool)

(assert (=> b!831136 (=> (not res!381488) (not e!547493))))

(declare-fun call!49030 () Bool)

(assert (=> b!831136 (= res!381488 call!49030)))

(declare-fun e!547494 () Bool)

(assert (=> b!831136 (= e!547494 e!547493)))

(declare-fun b!831137 () Bool)

(assert (=> b!831137 (= e!547493 call!49028)))

(declare-fun b!831138 () Bool)

(declare-fun res!381487 () Bool)

(declare-fun e!547492 () Bool)

(assert (=> b!831138 (=> res!381487 e!547492)))

(assert (=> b!831138 (= res!381487 (not ((_ is Concat!3808) r!27177)))))

(assert (=> b!831138 (= e!547494 e!547492)))

(declare-fun b!831139 () Bool)

(declare-fun e!547498 () Bool)

(assert (=> b!831139 (= e!547498 call!49030)))

(declare-fun b!831140 () Bool)

(assert (=> b!831140 (= e!547492 e!547498)))

(declare-fun res!381484 () Bool)

(assert (=> b!831140 (=> (not res!381484) (not e!547498))))

(assert (=> b!831140 (= res!381484 call!49028)))

(declare-fun b!831141 () Bool)

(declare-fun e!547496 () Bool)

(assert (=> b!831141 (= e!547496 e!547494)))

(assert (=> b!831141 (= c!135362 ((_ is Union!2077) r!27177))))

(declare-fun d!260176 () Bool)

(declare-fun res!381485 () Bool)

(declare-fun e!547495 () Bool)

(assert (=> d!260176 (=> res!381485 e!547495)))

(assert (=> d!260176 (= res!381485 ((_ is ElementMatch!2077) r!27177))))

(assert (=> d!260176 (= (validRegex!630 r!27177) e!547495)))

(declare-fun b!831142 () Bool)

(assert (=> b!831142 (= e!547495 e!547496)))

(declare-fun c!135361 () Bool)

(assert (=> b!831142 (= c!135361 ((_ is Star!2077) r!27177))))

(declare-fun b!831143 () Bool)

(declare-fun e!547497 () Bool)

(assert (=> b!831143 (= e!547496 e!547497)))

(declare-fun res!381486 () Bool)

(assert (=> b!831143 (= res!381486 (not (nullable!528 (reg!2406 r!27177))))))

(assert (=> b!831143 (=> (not res!381486) (not e!547497))))

(declare-fun b!831144 () Bool)

(declare-fun call!49029 () Bool)

(assert (=> b!831144 (= e!547497 call!49029)))

(declare-fun bm!49024 () Bool)

(assert (=> bm!49024 (= call!49030 call!49029)))

(declare-fun bm!49025 () Bool)

(assert (=> bm!49025 (= call!49029 (validRegex!630 (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(assert (= (and d!260176 (not res!381485)) b!831142))

(assert (= (and b!831142 c!135361) b!831143))

(assert (= (and b!831142 (not c!135361)) b!831141))

(assert (= (and b!831143 res!381486) b!831144))

(assert (= (and b!831141 c!135362) b!831136))

(assert (= (and b!831141 (not c!135362)) b!831138))

(assert (= (and b!831136 res!381488) b!831137))

(assert (= (and b!831138 (not res!381487)) b!831140))

(assert (= (and b!831140 res!381484) b!831139))

(assert (= (or b!831136 b!831139) bm!49024))

(assert (= (or b!831137 b!831140) bm!49023))

(assert (= (or b!831144 bm!49024) bm!49025))

(declare-fun m!1067721 () Bool)

(assert (=> bm!49023 m!1067721))

(declare-fun m!1067723 () Bool)

(assert (=> b!831143 m!1067723))

(declare-fun m!1067725 () Bool)

(assert (=> bm!49025 m!1067725))

(assert (=> start!74034 d!260176))

(declare-fun b!831187 () Bool)

(declare-fun e!547523 () List!8903)

(declare-fun call!49051 () List!8903)

(assert (=> b!831187 (= e!547523 call!49051)))

(declare-fun b!831188 () Bool)

(declare-fun e!547524 () List!8903)

(assert (=> b!831188 (= e!547524 (Cons!8887 (c!135348 (regOne!4666 r!27177)) Nil!8887))))

(declare-fun b!831189 () Bool)

(declare-fun e!547525 () List!8903)

(assert (=> b!831189 (= e!547523 e!547525)))

(declare-fun c!135384 () Bool)

(assert (=> b!831189 (= c!135384 ((_ is Union!2077) (regOne!4666 r!27177)))))

(declare-fun b!831190 () Bool)

(declare-fun call!49049 () List!8903)

(assert (=> b!831190 (= e!547525 call!49049)))

(declare-fun d!260178 () Bool)

(declare-fun c!135383 () Bool)

(assert (=> d!260178 (= c!135383 (or ((_ is EmptyExpr!2077) (regOne!4666 r!27177)) ((_ is EmptyLang!2077) (regOne!4666 r!27177))))))

(declare-fun e!547526 () List!8903)

(assert (=> d!260178 (= (usedCharacters!166 (regOne!4666 r!27177)) e!547526)))

(declare-fun call!49050 () List!8903)

(declare-fun call!49052 () List!8903)

(declare-fun bm!49044 () Bool)

(declare-fun ++!2303 (List!8903 List!8903) List!8903)

(assert (=> bm!49044 (= call!49049 (++!2303 (ite c!135384 call!49052 call!49050) (ite c!135384 call!49050 call!49052)))))

(declare-fun bm!49045 () Bool)

(assert (=> bm!49045 (= call!49050 (usedCharacters!166 (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(declare-fun b!831191 () Bool)

(assert (=> b!831191 (= e!547526 Nil!8887)))

(declare-fun b!831192 () Bool)

(assert (=> b!831192 (= e!547526 e!547524)))

(declare-fun c!135382 () Bool)

(assert (=> b!831192 (= c!135382 ((_ is ElementMatch!2077) (regOne!4666 r!27177)))))

(declare-fun b!831193 () Bool)

(declare-fun c!135381 () Bool)

(assert (=> b!831193 (= c!135381 ((_ is Star!2077) (regOne!4666 r!27177)))))

(assert (=> b!831193 (= e!547524 e!547523)))

(declare-fun b!831194 () Bool)

(assert (=> b!831194 (= e!547525 call!49049)))

(declare-fun bm!49046 () Bool)

(assert (=> bm!49046 (= call!49051 (usedCharacters!166 (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(declare-fun bm!49047 () Bool)

(assert (=> bm!49047 (= call!49052 call!49051)))

(assert (= (and d!260178 c!135383) b!831191))

(assert (= (and d!260178 (not c!135383)) b!831192))

(assert (= (and b!831192 c!135382) b!831188))

(assert (= (and b!831192 (not c!135382)) b!831193))

(assert (= (and b!831193 c!135381) b!831187))

(assert (= (and b!831193 (not c!135381)) b!831189))

(assert (= (and b!831189 c!135384) b!831190))

(assert (= (and b!831189 (not c!135384)) b!831194))

(assert (= (or b!831190 b!831194) bm!49045))

(assert (= (or b!831190 b!831194) bm!49047))

(assert (= (or b!831190 b!831194) bm!49044))

(assert (= (or b!831187 bm!49047) bm!49046))

(declare-fun m!1067733 () Bool)

(assert (=> bm!49044 m!1067733))

(declare-fun m!1067735 () Bool)

(assert (=> bm!49045 m!1067735))

(declare-fun m!1067737 () Bool)

(assert (=> bm!49046 m!1067737))

(assert (=> b!831072 d!260178))

(declare-fun d!260182 () Bool)

(declare-fun lt!317735 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1316 (List!8903) (InoxSet C!4724))

(assert (=> d!260182 (= lt!317735 (select (content!1316 (usedCharacters!166 (regOne!4666 r!27177))) c!13916))))

(declare-fun e!547532 () Bool)

(assert (=> d!260182 (= lt!317735 e!547532)))

(declare-fun res!381499 () Bool)

(assert (=> d!260182 (=> (not res!381499) (not e!547532))))

(assert (=> d!260182 (= res!381499 ((_ is Cons!8887) (usedCharacters!166 (regOne!4666 r!27177))))))

(assert (=> d!260182 (= (contains!1668 (usedCharacters!166 (regOne!4666 r!27177)) c!13916) lt!317735)))

(declare-fun b!831199 () Bool)

(declare-fun e!547531 () Bool)

(assert (=> b!831199 (= e!547532 e!547531)))

(declare-fun res!381500 () Bool)

(assert (=> b!831199 (=> res!381500 e!547531)))

(assert (=> b!831199 (= res!381500 (= (h!14288 (usedCharacters!166 (regOne!4666 r!27177))) c!13916))))

(declare-fun b!831200 () Bool)

(assert (=> b!831200 (= e!547531 (contains!1668 (t!93195 (usedCharacters!166 (regOne!4666 r!27177))) c!13916))))

(assert (= (and d!260182 res!381499) b!831199))

(assert (= (and b!831199 (not res!381500)) b!831200))

(assert (=> d!260182 m!1067695))

(declare-fun m!1067739 () Bool)

(assert (=> d!260182 m!1067739))

(declare-fun m!1067741 () Bool)

(assert (=> d!260182 m!1067741))

(declare-fun m!1067743 () Bool)

(assert (=> b!831200 m!1067743))

(assert (=> b!831072 d!260182))

(declare-fun b!831211 () Bool)

(declare-fun e!547538 () List!8903)

(declare-fun call!49060 () List!8903)

(assert (=> b!831211 (= e!547538 call!49060)))

(declare-fun b!831212 () Bool)

(declare-fun e!547539 () List!8903)

(assert (=> b!831212 (= e!547539 (Cons!8887 (c!135348 r!27177) Nil!8887))))

(declare-fun b!831213 () Bool)

(declare-fun e!547540 () List!8903)

(assert (=> b!831213 (= e!547538 e!547540)))

(declare-fun c!135393 () Bool)

(assert (=> b!831213 (= c!135393 ((_ is Union!2077) r!27177))))

(declare-fun b!831214 () Bool)

(declare-fun call!49058 () List!8903)

(assert (=> b!831214 (= e!547540 call!49058)))

(declare-fun d!260184 () Bool)

(declare-fun c!135392 () Bool)

(assert (=> d!260184 (= c!135392 (or ((_ is EmptyExpr!2077) r!27177) ((_ is EmptyLang!2077) r!27177)))))

(declare-fun e!547541 () List!8903)

(assert (=> d!260184 (= (usedCharacters!166 r!27177) e!547541)))

(declare-fun call!49059 () List!8903)

(declare-fun call!49061 () List!8903)

(declare-fun bm!49053 () Bool)

(assert (=> bm!49053 (= call!49058 (++!2303 (ite c!135393 call!49061 call!49059) (ite c!135393 call!49059 call!49061)))))

(declare-fun bm!49054 () Bool)

(assert (=> bm!49054 (= call!49059 (usedCharacters!166 (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))

(declare-fun b!831215 () Bool)

(assert (=> b!831215 (= e!547541 Nil!8887)))

(declare-fun b!831216 () Bool)

(assert (=> b!831216 (= e!547541 e!547539)))

(declare-fun c!135391 () Bool)

(assert (=> b!831216 (= c!135391 ((_ is ElementMatch!2077) r!27177))))

(declare-fun b!831217 () Bool)

(declare-fun c!135390 () Bool)

(assert (=> b!831217 (= c!135390 ((_ is Star!2077) r!27177))))

(assert (=> b!831217 (= e!547539 e!547538)))

(declare-fun b!831218 () Bool)

(assert (=> b!831218 (= e!547540 call!49058)))

(declare-fun bm!49055 () Bool)

(assert (=> bm!49055 (= call!49060 (usedCharacters!166 (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(declare-fun bm!49056 () Bool)

(assert (=> bm!49056 (= call!49061 call!49060)))

(assert (= (and d!260184 c!135392) b!831215))

(assert (= (and d!260184 (not c!135392)) b!831216))

(assert (= (and b!831216 c!135391) b!831212))

(assert (= (and b!831216 (not c!135391)) b!831217))

(assert (= (and b!831217 c!135390) b!831211))

(assert (= (and b!831217 (not c!135390)) b!831213))

(assert (= (and b!831213 c!135393) b!831214))

(assert (= (and b!831213 (not c!135393)) b!831218))

(assert (= (or b!831214 b!831218) bm!49054))

(assert (= (or b!831214 b!831218) bm!49056))

(assert (= (or b!831214 b!831218) bm!49053))

(assert (= (or b!831211 bm!49056) bm!49055))

(declare-fun m!1067745 () Bool)

(assert (=> bm!49053 m!1067745))

(declare-fun m!1067749 () Bool)

(assert (=> bm!49054 m!1067749))

(declare-fun m!1067753 () Bool)

(assert (=> bm!49055 m!1067753))

(assert (=> b!831072 d!260184))

(declare-fun d!260186 () Bool)

(declare-fun lt!317736 () Bool)

(assert (=> d!260186 (= lt!317736 (select (content!1316 (usedCharacters!166 r!27177)) c!13916))))

(declare-fun e!547543 () Bool)

(assert (=> d!260186 (= lt!317736 e!547543)))

(declare-fun res!381501 () Bool)

(assert (=> d!260186 (=> (not res!381501) (not e!547543))))

(assert (=> d!260186 (= res!381501 ((_ is Cons!8887) (usedCharacters!166 r!27177)))))

(assert (=> d!260186 (= (contains!1668 (usedCharacters!166 r!27177) c!13916) lt!317736)))

(declare-fun b!831219 () Bool)

(declare-fun e!547542 () Bool)

(assert (=> b!831219 (= e!547543 e!547542)))

(declare-fun res!381502 () Bool)

(assert (=> b!831219 (=> res!381502 e!547542)))

(assert (=> b!831219 (= res!381502 (= (h!14288 (usedCharacters!166 r!27177)) c!13916))))

(declare-fun b!831220 () Bool)

(assert (=> b!831220 (= e!547542 (contains!1668 (t!93195 (usedCharacters!166 r!27177)) c!13916))))

(assert (= (and d!260186 res!381501) b!831219))

(assert (= (and b!831219 (not res!381502)) b!831220))

(assert (=> d!260186 m!1067689))

(declare-fun m!1067759 () Bool)

(assert (=> d!260186 m!1067759))

(declare-fun m!1067761 () Bool)

(assert (=> d!260186 m!1067761))

(declare-fun m!1067763 () Bool)

(assert (=> b!831220 m!1067763))

(assert (=> b!831072 d!260186))

(declare-fun d!260190 () Bool)

(assert (=> d!260190 (contains!1668 (usedCharacters!166 (regOne!4666 r!27177)) c!13916)))

(declare-fun lt!317740 () Unit!13383)

(declare-fun choose!4935 (Regex!2077 C!4724) Unit!13383)

(assert (=> d!260190 (= lt!317740 (choose!4935 (regOne!4666 r!27177) c!13916))))

(assert (=> d!260190 (validRegex!630 (regOne!4666 r!27177))))

(assert (=> d!260190 (= (lemmaUsedCharsContainsAllFirstChars!8 (regOne!4666 r!27177) c!13916) lt!317740)))

(declare-fun bs!229655 () Bool)

(assert (= bs!229655 d!260190))

(assert (=> bs!229655 m!1067695))

(assert (=> bs!229655 m!1067695))

(assert (=> bs!229655 m!1067697))

(declare-fun m!1067785 () Bool)

(assert (=> bs!229655 m!1067785))

(assert (=> bs!229655 m!1067703))

(assert (=> b!831072 d!260190))

(declare-fun d!260200 () Bool)

(declare-fun lt!317741 () Bool)

(assert (=> d!260200 (= lt!317741 (select (content!1316 (firstChars!48 r!27177)) c!13916))))

(declare-fun e!547559 () Bool)

(assert (=> d!260200 (= lt!317741 e!547559)))

(declare-fun res!381510 () Bool)

(assert (=> d!260200 (=> (not res!381510) (not e!547559))))

(assert (=> d!260200 (= res!381510 ((_ is Cons!8887) (firstChars!48 r!27177)))))

(assert (=> d!260200 (= (contains!1668 (firstChars!48 r!27177) c!13916) lt!317741)))

(declare-fun b!831242 () Bool)

(declare-fun e!547558 () Bool)

(assert (=> b!831242 (= e!547559 e!547558)))

(declare-fun res!381511 () Bool)

(assert (=> b!831242 (=> res!381511 e!547558)))

(assert (=> b!831242 (= res!381511 (= (h!14288 (firstChars!48 r!27177)) c!13916))))

(declare-fun b!831243 () Bool)

(assert (=> b!831243 (= e!547558 (contains!1668 (t!93195 (firstChars!48 r!27177)) c!13916))))

(assert (= (and d!260200 res!381510) b!831242))

(assert (= (and b!831242 (not res!381511)) b!831243))

(assert (=> d!260200 m!1067705))

(declare-fun m!1067787 () Bool)

(assert (=> d!260200 m!1067787))

(declare-fun m!1067789 () Bool)

(assert (=> d!260200 m!1067789))

(declare-fun m!1067791 () Bool)

(assert (=> b!831243 m!1067791))

(assert (=> b!831077 d!260200))

(declare-fun b!831298 () Bool)

(declare-fun e!547591 () List!8903)

(declare-fun call!49098 () List!8903)

(assert (=> b!831298 (= e!547591 call!49098)))

(declare-fun b!831299 () Bool)

(declare-fun e!547589 () List!8903)

(declare-fun call!49096 () List!8903)

(assert (=> b!831299 (= e!547589 call!49096)))

(declare-fun b!831300 () Bool)

(declare-fun call!49099 () List!8903)

(assert (=> b!831300 (= e!547591 call!49099)))

(declare-fun b!831301 () Bool)

(declare-fun e!547588 () List!8903)

(declare-fun e!547590 () List!8903)

(assert (=> b!831301 (= e!547588 e!547590)))

(declare-fun c!135432 () Bool)

(assert (=> b!831301 (= c!135432 ((_ is ElementMatch!2077) r!27177))))

(declare-fun b!831302 () Bool)

(assert (=> b!831302 (= e!547588 Nil!8887)))

(declare-fun bm!49091 () Bool)

(declare-fun call!49097 () List!8903)

(declare-fun c!135431 () Bool)

(assert (=> bm!49091 (= call!49097 (firstChars!48 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))

(declare-fun b!831303 () Bool)

(declare-fun e!547592 () List!8903)

(assert (=> b!831303 (= e!547592 call!49098)))

(declare-fun bm!49092 () Bool)

(declare-fun call!49100 () List!8903)

(assert (=> bm!49092 (= call!49100 call!49096)))

(declare-fun bm!49093 () Bool)

(assert (=> bm!49093 (= call!49099 call!49100)))

(declare-fun b!831305 () Bool)

(declare-fun c!135429 () Bool)

(assert (=> b!831305 (= c!135429 (nullable!528 (regOne!4666 r!27177)))))

(assert (=> b!831305 (= e!547592 e!547591)))

(declare-fun bm!49094 () Bool)

(declare-fun c!135430 () Bool)

(assert (=> bm!49094 (= call!49096 (firstChars!48 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))

(declare-fun bm!49095 () Bool)

(assert (=> bm!49095 (= call!49098 (++!2303 (ite c!135431 call!49097 call!49099) (ite c!135431 call!49100 call!49097)))))

(declare-fun b!831306 () Bool)

(assert (=> b!831306 (= c!135430 ((_ is Star!2077) r!27177))))

(assert (=> b!831306 (= e!547590 e!547589)))

(declare-fun b!831307 () Bool)

(assert (=> b!831307 (= e!547590 (Cons!8887 (c!135348 r!27177) Nil!8887))))

(declare-fun d!260202 () Bool)

(declare-fun c!135428 () Bool)

(assert (=> d!260202 (= c!135428 (or ((_ is EmptyExpr!2077) r!27177) ((_ is EmptyLang!2077) r!27177)))))

(assert (=> d!260202 (= (firstChars!48 r!27177) e!547588)))

(declare-fun b!831304 () Bool)

(assert (=> b!831304 (= e!547589 e!547592)))

(assert (=> b!831304 (= c!135431 ((_ is Union!2077) r!27177))))

(assert (= (and d!260202 c!135428) b!831302))

(assert (= (and d!260202 (not c!135428)) b!831301))

(assert (= (and b!831301 c!135432) b!831307))

(assert (= (and b!831301 (not c!135432)) b!831306))

(assert (= (and b!831306 c!135430) b!831299))

(assert (= (and b!831306 (not c!135430)) b!831304))

(assert (= (and b!831304 c!135431) b!831303))

(assert (= (and b!831304 (not c!135431)) b!831305))

(assert (= (and b!831305 c!135429) b!831298))

(assert (= (and b!831305 (not c!135429)) b!831300))

(assert (= (or b!831298 b!831300) bm!49093))

(assert (= (or b!831303 bm!49093) bm!49092))

(assert (= (or b!831303 b!831298) bm!49091))

(assert (= (or b!831303 b!831298) bm!49095))

(assert (= (or b!831299 bm!49092) bm!49094))

(declare-fun m!1067817 () Bool)

(assert (=> bm!49091 m!1067817))

(assert (=> b!831305 m!1067685))

(declare-fun m!1067819 () Bool)

(assert (=> bm!49094 m!1067819))

(declare-fun m!1067821 () Bool)

(assert (=> bm!49095 m!1067821))

(assert (=> b!831077 d!260202))

(declare-fun d!260212 () Bool)

(declare-fun nullableFct!166 (Regex!2077) Bool)

(assert (=> d!260212 (= (nullable!528 (regOne!4666 r!27177)) (nullableFct!166 (regOne!4666 r!27177)))))

(declare-fun bs!229656 () Bool)

(assert (= bs!229656 d!260212))

(declare-fun m!1067823 () Bool)

(assert (=> bs!229656 m!1067823))

(assert (=> b!831078 d!260212))

(declare-fun d!260214 () Bool)

(declare-fun lt!317744 () Bool)

(assert (=> d!260214 (= lt!317744 (select (content!1316 (firstChars!48 (regOne!4666 r!27177))) c!13916))))

(declare-fun e!547596 () Bool)

(assert (=> d!260214 (= lt!317744 e!547596)))

(declare-fun res!381516 () Bool)

(assert (=> d!260214 (=> (not res!381516) (not e!547596))))

(assert (=> d!260214 (= res!381516 ((_ is Cons!8887) (firstChars!48 (regOne!4666 r!27177))))))

(assert (=> d!260214 (= (contains!1668 (firstChars!48 (regOne!4666 r!27177)) c!13916) lt!317744)))

(declare-fun b!831310 () Bool)

(declare-fun e!547595 () Bool)

(assert (=> b!831310 (= e!547596 e!547595)))

(declare-fun res!381517 () Bool)

(assert (=> b!831310 (=> res!381517 e!547595)))

(assert (=> b!831310 (= res!381517 (= (h!14288 (firstChars!48 (regOne!4666 r!27177))) c!13916))))

(declare-fun b!831311 () Bool)

(assert (=> b!831311 (= e!547595 (contains!1668 (t!93195 (firstChars!48 (regOne!4666 r!27177))) c!13916))))

(assert (= (and d!260214 res!381516) b!831310))

(assert (= (and b!831310 (not res!381517)) b!831311))

(assert (=> d!260214 m!1067699))

(declare-fun m!1067825 () Bool)

(assert (=> d!260214 m!1067825))

(declare-fun m!1067827 () Bool)

(assert (=> d!260214 m!1067827))

(declare-fun m!1067829 () Bool)

(assert (=> b!831311 m!1067829))

(assert (=> b!831080 d!260214))

(declare-fun b!831312 () Bool)

(declare-fun e!547600 () List!8903)

(declare-fun call!49103 () List!8903)

(assert (=> b!831312 (= e!547600 call!49103)))

(declare-fun b!831313 () Bool)

(declare-fun e!547598 () List!8903)

(declare-fun call!49101 () List!8903)

(assert (=> b!831313 (= e!547598 call!49101)))

(declare-fun b!831314 () Bool)

(declare-fun call!49104 () List!8903)

(assert (=> b!831314 (= e!547600 call!49104)))

(declare-fun b!831315 () Bool)

(declare-fun e!547597 () List!8903)

(declare-fun e!547599 () List!8903)

(assert (=> b!831315 (= e!547597 e!547599)))

(declare-fun c!135437 () Bool)

(assert (=> b!831315 (= c!135437 ((_ is ElementMatch!2077) (regOne!4666 r!27177)))))

(declare-fun b!831316 () Bool)

(assert (=> b!831316 (= e!547597 Nil!8887)))

(declare-fun bm!49096 () Bool)

(declare-fun call!49102 () List!8903)

(declare-fun c!135436 () Bool)

(assert (=> bm!49096 (= call!49102 (firstChars!48 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))

(declare-fun b!831317 () Bool)

(declare-fun e!547601 () List!8903)

(assert (=> b!831317 (= e!547601 call!49103)))

(declare-fun bm!49097 () Bool)

(declare-fun call!49105 () List!8903)

(assert (=> bm!49097 (= call!49105 call!49101)))

(declare-fun bm!49098 () Bool)

(assert (=> bm!49098 (= call!49104 call!49105)))

(declare-fun b!831319 () Bool)

(declare-fun c!135434 () Bool)

(assert (=> b!831319 (= c!135434 (nullable!528 (regOne!4666 (regOne!4666 r!27177))))))

(assert (=> b!831319 (= e!547601 e!547600)))

(declare-fun bm!49099 () Bool)

(declare-fun c!135435 () Bool)

(assert (=> bm!49099 (= call!49101 (firstChars!48 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))

(declare-fun bm!49100 () Bool)

(assert (=> bm!49100 (= call!49103 (++!2303 (ite c!135436 call!49102 call!49104) (ite c!135436 call!49105 call!49102)))))

(declare-fun b!831320 () Bool)

(assert (=> b!831320 (= c!135435 ((_ is Star!2077) (regOne!4666 r!27177)))))

(assert (=> b!831320 (= e!547599 e!547598)))

(declare-fun b!831321 () Bool)

(assert (=> b!831321 (= e!547599 (Cons!8887 (c!135348 (regOne!4666 r!27177)) Nil!8887))))

(declare-fun d!260216 () Bool)

(declare-fun c!135433 () Bool)

(assert (=> d!260216 (= c!135433 (or ((_ is EmptyExpr!2077) (regOne!4666 r!27177)) ((_ is EmptyLang!2077) (regOne!4666 r!27177))))))

(assert (=> d!260216 (= (firstChars!48 (regOne!4666 r!27177)) e!547597)))

(declare-fun b!831318 () Bool)

(assert (=> b!831318 (= e!547598 e!547601)))

(assert (=> b!831318 (= c!135436 ((_ is Union!2077) (regOne!4666 r!27177)))))

(assert (= (and d!260216 c!135433) b!831316))

(assert (= (and d!260216 (not c!135433)) b!831315))

(assert (= (and b!831315 c!135437) b!831321))

(assert (= (and b!831315 (not c!135437)) b!831320))

(assert (= (and b!831320 c!135435) b!831313))

(assert (= (and b!831320 (not c!135435)) b!831318))

(assert (= (and b!831318 c!135436) b!831317))

(assert (= (and b!831318 (not c!135436)) b!831319))

(assert (= (and b!831319 c!135434) b!831312))

(assert (= (and b!831319 (not c!135434)) b!831314))

(assert (= (or b!831312 b!831314) bm!49098))

(assert (= (or b!831317 bm!49098) bm!49097))

(assert (= (or b!831317 b!831312) bm!49096))

(assert (= (or b!831317 b!831312) bm!49100))

(assert (= (or b!831313 bm!49097) bm!49099))

(declare-fun m!1067831 () Bool)

(assert (=> bm!49096 m!1067831))

(declare-fun m!1067833 () Bool)

(assert (=> b!831319 m!1067833))

(declare-fun m!1067835 () Bool)

(assert (=> bm!49099 m!1067835))

(declare-fun m!1067839 () Bool)

(assert (=> bm!49100 m!1067839))

(assert (=> b!831080 d!260216))

(declare-fun b!831348 () Bool)

(declare-fun e!547606 () Bool)

(declare-fun tp!260290 () Bool)

(declare-fun tp!260293 () Bool)

(assert (=> b!831348 (= e!547606 (and tp!260290 tp!260293))))

(declare-fun b!831342 () Bool)

(assert (=> b!831342 (= e!547606 tp_is_empty!3877)))

(declare-fun b!831346 () Bool)

(declare-fun tp!260285 () Bool)

(assert (=> b!831346 (= e!547606 tp!260285)))

(assert (=> b!831075 (= tp!260263 e!547606)))

(declare-fun b!831344 () Bool)

(declare-fun tp!260288 () Bool)

(declare-fun tp!260291 () Bool)

(assert (=> b!831344 (= e!547606 (and tp!260288 tp!260291))))

(assert (= (and b!831075 ((_ is ElementMatch!2077) (regOne!4667 r!27177))) b!831342))

(assert (= (and b!831075 ((_ is Concat!3808) (regOne!4667 r!27177))) b!831344))

(assert (= (and b!831075 ((_ is Star!2077) (regOne!4667 r!27177))) b!831346))

(assert (= (and b!831075 ((_ is Union!2077) (regOne!4667 r!27177))) b!831348))

(declare-fun b!831357 () Bool)

(declare-fun e!547608 () Bool)

(declare-fun tp!260300 () Bool)

(declare-fun tp!260304 () Bool)

(assert (=> b!831357 (= e!547608 (and tp!260300 tp!260304))))

(declare-fun b!831351 () Bool)

(assert (=> b!831351 (= e!547608 tp_is_empty!3877)))

(declare-fun b!831355 () Bool)

(declare-fun tp!260296 () Bool)

(assert (=> b!831355 (= e!547608 tp!260296)))

(assert (=> b!831075 (= tp!260262 e!547608)))

(declare-fun b!831353 () Bool)

(declare-fun tp!260299 () Bool)

(declare-fun tp!260302 () Bool)

(assert (=> b!831353 (= e!547608 (and tp!260299 tp!260302))))

(assert (= (and b!831075 ((_ is ElementMatch!2077) (regTwo!4667 r!27177))) b!831351))

(assert (= (and b!831075 ((_ is Concat!3808) (regTwo!4667 r!27177))) b!831353))

(assert (= (and b!831075 ((_ is Star!2077) (regTwo!4667 r!27177))) b!831355))

(assert (= (and b!831075 ((_ is Union!2077) (regTwo!4667 r!27177))) b!831357))

(declare-fun b!831364 () Bool)

(declare-fun e!547610 () Bool)

(declare-fun tp!260310 () Bool)

(declare-fun tp!260313 () Bool)

(assert (=> b!831364 (= e!547610 (and tp!260310 tp!260313))))

(declare-fun b!831358 () Bool)

(assert (=> b!831358 (= e!547610 tp_is_empty!3877)))

(declare-fun b!831362 () Bool)

(declare-fun tp!260305 () Bool)

(assert (=> b!831362 (= e!547610 tp!260305)))

(assert (=> b!831073 (= tp!260264 e!547610)))

(declare-fun b!831360 () Bool)

(declare-fun tp!260308 () Bool)

(declare-fun tp!260311 () Bool)

(assert (=> b!831360 (= e!547610 (and tp!260308 tp!260311))))

(assert (= (and b!831073 ((_ is ElementMatch!2077) (reg!2406 r!27177))) b!831358))

(assert (= (and b!831073 ((_ is Concat!3808) (reg!2406 r!27177))) b!831360))

(assert (= (and b!831073 ((_ is Star!2077) (reg!2406 r!27177))) b!831362))

(assert (= (and b!831073 ((_ is Union!2077) (reg!2406 r!27177))) b!831364))

(declare-fun b!831373 () Bool)

(declare-fun e!547612 () Bool)

(declare-fun tp!260320 () Bool)

(declare-fun tp!260324 () Bool)

(assert (=> b!831373 (= e!547612 (and tp!260320 tp!260324))))

(declare-fun b!831367 () Bool)

(assert (=> b!831367 (= e!547612 tp_is_empty!3877)))

(declare-fun b!831371 () Bool)

(declare-fun tp!260316 () Bool)

(assert (=> b!831371 (= e!547612 tp!260316)))

(assert (=> b!831074 (= tp!260260 e!547612)))

(declare-fun b!831369 () Bool)

(declare-fun tp!260319 () Bool)

(declare-fun tp!260322 () Bool)

(assert (=> b!831369 (= e!547612 (and tp!260319 tp!260322))))

(assert (= (and b!831074 ((_ is ElementMatch!2077) (regOne!4666 r!27177))) b!831367))

(assert (= (and b!831074 ((_ is Concat!3808) (regOne!4666 r!27177))) b!831369))

(assert (= (and b!831074 ((_ is Star!2077) (regOne!4666 r!27177))) b!831371))

(assert (= (and b!831074 ((_ is Union!2077) (regOne!4666 r!27177))) b!831373))

(declare-fun b!831380 () Bool)

(declare-fun e!547614 () Bool)

(declare-fun tp!260330 () Bool)

(declare-fun tp!260333 () Bool)

(assert (=> b!831380 (= e!547614 (and tp!260330 tp!260333))))

(declare-fun b!831374 () Bool)

(assert (=> b!831374 (= e!547614 tp_is_empty!3877)))

(declare-fun b!831378 () Bool)

(declare-fun tp!260325 () Bool)

(assert (=> b!831378 (= e!547614 tp!260325)))

(assert (=> b!831074 (= tp!260261 e!547614)))

(declare-fun b!831376 () Bool)

(declare-fun tp!260328 () Bool)

(declare-fun tp!260331 () Bool)

(assert (=> b!831376 (= e!547614 (and tp!260328 tp!260331))))

(assert (= (and b!831074 ((_ is ElementMatch!2077) (regTwo!4666 r!27177))) b!831374))

(assert (= (and b!831074 ((_ is Concat!3808) (regTwo!4666 r!27177))) b!831376))

(assert (= (and b!831074 ((_ is Star!2077) (regTwo!4666 r!27177))) b!831378))

(assert (= (and b!831074 ((_ is Union!2077) (regTwo!4666 r!27177))) b!831380))

(check-sat (not bm!49022) (not bm!49045) (not d!260182) (not d!260212) (not bm!49099) (not b!831305) (not b!831364) (not b!831243) (not b!831369) (not b!831355) (not b!831131) (not d!260190) (not b!831311) (not bm!49100) (not bm!49023) (not bm!49055) (not b!831220) (not bm!49046) (not b!831357) tp_is_empty!3877 (not b!831371) (not b!831143) (not b!831319) (not b!831373) (not b!831376) (not b!831344) (not bm!49094) (not b!831346) (not d!260200) (not b!831378) (not b!831353) (not b!831348) (not b!831362) (not bm!49025) (not bm!49044) (not bm!49096) (not bm!49054) (not bm!49091) (not bm!49017) (not d!260186) (not b!831200) (not b!831360) (not d!260214) (not bm!49095) (not b!831380) (not bm!49053))
(check-sat)
(get-model)

(assert (=> d!260190 d!260182))

(assert (=> d!260190 d!260178))

(declare-fun d!260218 () Bool)

(assert (=> d!260218 (contains!1668 (usedCharacters!166 (regOne!4666 r!27177)) c!13916)))

(assert (=> d!260218 true))

(declare-fun _$135!79 () Unit!13383)

(assert (=> d!260218 (= (choose!4935 (regOne!4666 r!27177) c!13916) _$135!79)))

(declare-fun bs!229658 () Bool)

(assert (= bs!229658 d!260218))

(assert (=> bs!229658 m!1067695))

(assert (=> bs!229658 m!1067695))

(assert (=> bs!229658 m!1067697))

(assert (=> d!260190 d!260218))

(assert (=> d!260190 d!260170))

(declare-fun d!260220 () Bool)

(declare-fun c!135442 () Bool)

(assert (=> d!260220 (= c!135442 ((_ is Nil!8887) (usedCharacters!166 (regOne!4666 r!27177))))))

(declare-fun e!547618 () (InoxSet C!4724))

(assert (=> d!260220 (= (content!1316 (usedCharacters!166 (regOne!4666 r!27177))) e!547618)))

(declare-fun b!831386 () Bool)

(assert (=> b!831386 (= e!547618 ((as const (Array C!4724 Bool)) false))))

(declare-fun b!831387 () Bool)

(assert (=> b!831387 (= e!547618 ((_ map or) (store ((as const (Array C!4724 Bool)) false) (h!14288 (usedCharacters!166 (regOne!4666 r!27177))) true) (content!1316 (t!93195 (usedCharacters!166 (regOne!4666 r!27177))))))))

(assert (= (and d!260220 c!135442) b!831386))

(assert (= (and d!260220 (not c!135442)) b!831387))

(declare-fun m!1067841 () Bool)

(assert (=> b!831387 m!1067841))

(declare-fun m!1067843 () Bool)

(assert (=> b!831387 m!1067843))

(assert (=> d!260182 d!260220))

(declare-fun b!831402 () Bool)

(declare-fun e!547636 () Bool)

(declare-fun call!49110 () Bool)

(assert (=> b!831402 (= e!547636 call!49110)))

(declare-fun d!260222 () Bool)

(declare-fun res!381530 () Bool)

(declare-fun e!547632 () Bool)

(assert (=> d!260222 (=> res!381530 e!547632)))

(assert (=> d!260222 (= res!381530 ((_ is EmptyExpr!2077) (regOne!4666 r!27177)))))

(assert (=> d!260222 (= (nullableFct!166 (regOne!4666 r!27177)) e!547632)))

(declare-fun b!831403 () Bool)

(declare-fun e!547631 () Bool)

(declare-fun e!547633 () Bool)

(assert (=> b!831403 (= e!547631 e!547633)))

(declare-fun res!381529 () Bool)

(assert (=> b!831403 (=> res!381529 e!547633)))

(assert (=> b!831403 (= res!381529 ((_ is Star!2077) (regOne!4666 r!27177)))))

(declare-fun b!831404 () Bool)

(declare-fun e!547634 () Bool)

(declare-fun e!547635 () Bool)

(assert (=> b!831404 (= e!547634 e!547635)))

(declare-fun res!381532 () Bool)

(assert (=> b!831404 (= res!381532 call!49110)))

(assert (=> b!831404 (=> (not res!381532) (not e!547635))))

(declare-fun b!831405 () Bool)

(assert (=> b!831405 (= e!547634 e!547636)))

(declare-fun res!381528 () Bool)

(declare-fun call!49111 () Bool)

(assert (=> b!831405 (= res!381528 call!49111)))

(assert (=> b!831405 (=> res!381528 e!547636)))

(declare-fun b!831406 () Bool)

(assert (=> b!831406 (= e!547632 e!547631)))

(declare-fun res!381531 () Bool)

(assert (=> b!831406 (=> (not res!381531) (not e!547631))))

(assert (=> b!831406 (= res!381531 (and (not ((_ is EmptyLang!2077) (regOne!4666 r!27177))) (not ((_ is ElementMatch!2077) (regOne!4666 r!27177)))))))

(declare-fun b!831407 () Bool)

(assert (=> b!831407 (= e!547633 e!547634)))

(declare-fun c!135445 () Bool)

(assert (=> b!831407 (= c!135445 ((_ is Union!2077) (regOne!4666 r!27177)))))

(declare-fun bm!49105 () Bool)

(assert (=> bm!49105 (= call!49111 (nullable!528 (ite c!135445 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))

(declare-fun bm!49106 () Bool)

(assert (=> bm!49106 (= call!49110 (nullable!528 (ite c!135445 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(declare-fun b!831408 () Bool)

(assert (=> b!831408 (= e!547635 call!49111)))

(assert (= (and d!260222 (not res!381530)) b!831406))

(assert (= (and b!831406 res!381531) b!831403))

(assert (= (and b!831403 (not res!381529)) b!831407))

(assert (= (and b!831407 c!135445) b!831405))

(assert (= (and b!831407 (not c!135445)) b!831404))

(assert (= (and b!831405 (not res!381528)) b!831402))

(assert (= (and b!831404 res!381532) b!831408))

(assert (= (or b!831405 b!831408) bm!49105))

(assert (= (or b!831402 b!831404) bm!49106))

(declare-fun m!1067845 () Bool)

(assert (=> bm!49105 m!1067845))

(declare-fun m!1067847 () Bool)

(assert (=> bm!49106 m!1067847))

(assert (=> d!260212 d!260222))

(declare-fun b!831409 () Bool)

(declare-fun e!547637 () List!8903)

(declare-fun call!49114 () List!8903)

(assert (=> b!831409 (= e!547637 call!49114)))

(declare-fun b!831410 () Bool)

(declare-fun e!547638 () List!8903)

(assert (=> b!831410 (= e!547638 (Cons!8887 (c!135348 (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) Nil!8887))))

(declare-fun b!831411 () Bool)

(declare-fun e!547639 () List!8903)

(assert (=> b!831411 (= e!547637 e!547639)))

(declare-fun c!135449 () Bool)

(assert (=> b!831411 (= c!135449 ((_ is Union!2077) (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(declare-fun b!831412 () Bool)

(declare-fun call!49112 () List!8903)

(assert (=> b!831412 (= e!547639 call!49112)))

(declare-fun d!260224 () Bool)

(declare-fun c!135448 () Bool)

(assert (=> d!260224 (= c!135448 (or ((_ is EmptyExpr!2077) (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) ((_ is EmptyLang!2077) (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))))

(declare-fun e!547640 () List!8903)

(assert (=> d!260224 (= (usedCharacters!166 (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) e!547640)))

(declare-fun call!49113 () List!8903)

(declare-fun call!49115 () List!8903)

(declare-fun bm!49107 () Bool)

(assert (=> bm!49107 (= call!49112 (++!2303 (ite c!135449 call!49115 call!49113) (ite c!135449 call!49113 call!49115)))))

(declare-fun bm!49108 () Bool)

(assert (=> bm!49108 (= call!49113 (usedCharacters!166 (ite c!135449 (regTwo!4667 (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) (regOne!4666 (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))))

(declare-fun b!831413 () Bool)

(assert (=> b!831413 (= e!547640 Nil!8887)))

(declare-fun b!831414 () Bool)

(assert (=> b!831414 (= e!547640 e!547638)))

(declare-fun c!135447 () Bool)

(assert (=> b!831414 (= c!135447 ((_ is ElementMatch!2077) (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(declare-fun c!135446 () Bool)

(declare-fun b!831415 () Bool)

(assert (=> b!831415 (= c!135446 ((_ is Star!2077) (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(assert (=> b!831415 (= e!547638 e!547637)))

(declare-fun b!831416 () Bool)

(assert (=> b!831416 (= e!547639 call!49112)))

(declare-fun bm!49109 () Bool)

(assert (=> bm!49109 (= call!49114 (usedCharacters!166 (ite c!135446 (reg!2406 (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) (ite c!135449 (regOne!4667 (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) (regTwo!4666 (ite c!135390 (reg!2406 r!27177) (ite c!135393 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))))))

(declare-fun bm!49110 () Bool)

(assert (=> bm!49110 (= call!49115 call!49114)))

(assert (= (and d!260224 c!135448) b!831413))

(assert (= (and d!260224 (not c!135448)) b!831414))

(assert (= (and b!831414 c!135447) b!831410))

(assert (= (and b!831414 (not c!135447)) b!831415))

(assert (= (and b!831415 c!135446) b!831409))

(assert (= (and b!831415 (not c!135446)) b!831411))

(assert (= (and b!831411 c!135449) b!831412))

(assert (= (and b!831411 (not c!135449)) b!831416))

(assert (= (or b!831412 b!831416) bm!49108))

(assert (= (or b!831412 b!831416) bm!49110))

(assert (= (or b!831412 b!831416) bm!49107))

(assert (= (or b!831409 bm!49110) bm!49109))

(declare-fun m!1067849 () Bool)

(assert (=> bm!49107 m!1067849))

(declare-fun m!1067851 () Bool)

(assert (=> bm!49108 m!1067851))

(declare-fun m!1067853 () Bool)

(assert (=> bm!49109 m!1067853))

(assert (=> bm!49055 d!260224))

(declare-fun d!260226 () Bool)

(assert (=> d!260226 (= (nullable!528 (reg!2406 r!27177)) (nullableFct!166 (reg!2406 r!27177)))))

(declare-fun bs!229659 () Bool)

(assert (= bs!229659 d!260226))

(declare-fun m!1067855 () Bool)

(assert (=> bs!229659 m!1067855))

(assert (=> b!831143 d!260226))

(declare-fun bm!49111 () Bool)

(declare-fun c!135451 () Bool)

(declare-fun call!49116 () Bool)

(assert (=> bm!49111 (= call!49116 (validRegex!630 (ite c!135451 (regTwo!4667 (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) (regOne!4666 (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))))

(declare-fun b!831417 () Bool)

(declare-fun res!381537 () Bool)

(declare-fun e!547642 () Bool)

(assert (=> b!831417 (=> (not res!381537) (not e!547642))))

(declare-fun call!49118 () Bool)

(assert (=> b!831417 (= res!381537 call!49118)))

(declare-fun e!547643 () Bool)

(assert (=> b!831417 (= e!547643 e!547642)))

(declare-fun b!831418 () Bool)

(assert (=> b!831418 (= e!547642 call!49116)))

(declare-fun b!831419 () Bool)

(declare-fun res!381536 () Bool)

(declare-fun e!547641 () Bool)

(assert (=> b!831419 (=> res!381536 e!547641)))

(assert (=> b!831419 (= res!381536 (not ((_ is Concat!3808) (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))

(assert (=> b!831419 (= e!547643 e!547641)))

(declare-fun b!831420 () Bool)

(declare-fun e!547647 () Bool)

(assert (=> b!831420 (= e!547647 call!49118)))

(declare-fun b!831421 () Bool)

(assert (=> b!831421 (= e!547641 e!547647)))

(declare-fun res!381533 () Bool)

(assert (=> b!831421 (=> (not res!381533) (not e!547647))))

(assert (=> b!831421 (= res!381533 call!49116)))

(declare-fun b!831422 () Bool)

(declare-fun e!547645 () Bool)

(assert (=> b!831422 (= e!547645 e!547643)))

(assert (=> b!831422 (= c!135451 ((_ is Union!2077) (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(declare-fun d!260228 () Bool)

(declare-fun res!381534 () Bool)

(declare-fun e!547644 () Bool)

(assert (=> d!260228 (=> res!381534 e!547644)))

(assert (=> d!260228 (= res!381534 ((_ is ElementMatch!2077) (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(assert (=> d!260228 (= (validRegex!630 (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) e!547644)))

(declare-fun b!831423 () Bool)

(assert (=> b!831423 (= e!547644 e!547645)))

(declare-fun c!135450 () Bool)

(assert (=> b!831423 (= c!135450 ((_ is Star!2077) (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(declare-fun b!831424 () Bool)

(declare-fun e!547646 () Bool)

(assert (=> b!831424 (= e!547645 e!547646)))

(declare-fun res!381535 () Bool)

(assert (=> b!831424 (= res!381535 (not (nullable!528 (reg!2406 (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))))

(assert (=> b!831424 (=> (not res!381535) (not e!547646))))

(declare-fun b!831425 () Bool)

(declare-fun call!49117 () Bool)

(assert (=> b!831425 (= e!547646 call!49117)))

(declare-fun bm!49112 () Bool)

(assert (=> bm!49112 (= call!49118 call!49117)))

(declare-fun bm!49113 () Bool)

(assert (=> bm!49113 (= call!49117 (validRegex!630 (ite c!135450 (reg!2406 (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) (ite c!135451 (regOne!4667 (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) (regTwo!4666 (ite c!135360 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))))

(assert (= (and d!260228 (not res!381534)) b!831423))

(assert (= (and b!831423 c!135450) b!831424))

(assert (= (and b!831423 (not c!135450)) b!831422))

(assert (= (and b!831424 res!381535) b!831425))

(assert (= (and b!831422 c!135451) b!831417))

(assert (= (and b!831422 (not c!135451)) b!831419))

(assert (= (and b!831417 res!381537) b!831418))

(assert (= (and b!831419 (not res!381536)) b!831421))

(assert (= (and b!831421 res!381533) b!831420))

(assert (= (or b!831417 b!831420) bm!49112))

(assert (= (or b!831418 b!831421) bm!49111))

(assert (= (or b!831425 bm!49112) bm!49113))

(declare-fun m!1067857 () Bool)

(assert (=> bm!49111 m!1067857))

(declare-fun m!1067859 () Bool)

(assert (=> b!831424 m!1067859))

(declare-fun m!1067861 () Bool)

(assert (=> bm!49113 m!1067861))

(assert (=> bm!49017 d!260228))

(declare-fun b!831426 () Bool)

(declare-fun e!547651 () List!8903)

(declare-fun call!49121 () List!8903)

(assert (=> b!831426 (= e!547651 call!49121)))

(declare-fun b!831427 () Bool)

(declare-fun e!547649 () List!8903)

(declare-fun call!49119 () List!8903)

(assert (=> b!831427 (= e!547649 call!49119)))

(declare-fun b!831428 () Bool)

(declare-fun call!49122 () List!8903)

(assert (=> b!831428 (= e!547651 call!49122)))

(declare-fun b!831429 () Bool)

(declare-fun e!547648 () List!8903)

(declare-fun e!547650 () List!8903)

(assert (=> b!831429 (= e!547648 e!547650)))

(declare-fun c!135456 () Bool)

(assert (=> b!831429 (= c!135456 ((_ is ElementMatch!2077) (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))

(declare-fun b!831430 () Bool)

(assert (=> b!831430 (= e!547648 Nil!8887)))

(declare-fun call!49120 () List!8903)

(declare-fun bm!49114 () Bool)

(declare-fun c!135455 () Bool)

(assert (=> bm!49114 (= call!49120 (firstChars!48 (ite c!135455 (regOne!4667 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))) (regTwo!4666 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))))

(declare-fun b!831431 () Bool)

(declare-fun e!547652 () List!8903)

(assert (=> b!831431 (= e!547652 call!49121)))

(declare-fun bm!49115 () Bool)

(declare-fun call!49123 () List!8903)

(assert (=> bm!49115 (= call!49123 call!49119)))

(declare-fun bm!49116 () Bool)

(assert (=> bm!49116 (= call!49122 call!49123)))

(declare-fun b!831433 () Bool)

(declare-fun c!135453 () Bool)

(assert (=> b!831433 (= c!135453 (nullable!528 (regOne!4666 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(assert (=> b!831433 (= e!547652 e!547651)))

(declare-fun c!135454 () Bool)

(declare-fun bm!49117 () Bool)

(assert (=> bm!49117 (= call!49119 (firstChars!48 (ite c!135454 (reg!2406 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))) (ite c!135455 (regTwo!4667 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))) (regOne!4666 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))))

(declare-fun bm!49118 () Bool)

(assert (=> bm!49118 (= call!49121 (++!2303 (ite c!135455 call!49120 call!49122) (ite c!135455 call!49123 call!49120)))))

(declare-fun b!831434 () Bool)

(assert (=> b!831434 (= c!135454 ((_ is Star!2077) (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))

(assert (=> b!831434 (= e!547650 e!547649)))

(declare-fun b!831435 () Bool)

(assert (=> b!831435 (= e!547650 (Cons!8887 (c!135348 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))) Nil!8887))))

(declare-fun d!260230 () Bool)

(declare-fun c!135452 () Bool)

(assert (=> d!260230 (= c!135452 (or ((_ is EmptyExpr!2077) (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))) ((_ is EmptyLang!2077) (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(assert (=> d!260230 (= (firstChars!48 (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))) e!547648)))

(declare-fun b!831432 () Bool)

(assert (=> b!831432 (= e!547649 e!547652)))

(assert (=> b!831432 (= c!135455 ((_ is Union!2077) (ite c!135436 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))

(assert (= (and d!260230 c!135452) b!831430))

(assert (= (and d!260230 (not c!135452)) b!831429))

(assert (= (and b!831429 c!135456) b!831435))

(assert (= (and b!831429 (not c!135456)) b!831434))

(assert (= (and b!831434 c!135454) b!831427))

(assert (= (and b!831434 (not c!135454)) b!831432))

(assert (= (and b!831432 c!135455) b!831431))

(assert (= (and b!831432 (not c!135455)) b!831433))

(assert (= (and b!831433 c!135453) b!831426))

(assert (= (and b!831433 (not c!135453)) b!831428))

(assert (= (or b!831426 b!831428) bm!49116))

(assert (= (or b!831431 bm!49116) bm!49115))

(assert (= (or b!831431 b!831426) bm!49114))

(assert (= (or b!831431 b!831426) bm!49118))

(assert (= (or b!831427 bm!49115) bm!49117))

(declare-fun m!1067863 () Bool)

(assert (=> bm!49114 m!1067863))

(declare-fun m!1067865 () Bool)

(assert (=> b!831433 m!1067865))

(declare-fun m!1067867 () Bool)

(assert (=> bm!49117 m!1067867))

(declare-fun m!1067869 () Bool)

(assert (=> bm!49118 m!1067869))

(assert (=> bm!49096 d!260230))

(declare-fun b!831446 () Bool)

(declare-fun res!381542 () Bool)

(declare-fun e!547658 () Bool)

(assert (=> b!831446 (=> (not res!381542) (not e!547658))))

(declare-fun lt!317750 () List!8903)

(declare-fun size!7481 (List!8903) Int)

(assert (=> b!831446 (= res!381542 (= (size!7481 lt!317750) (+ (size!7481 (ite c!135431 call!49097 call!49099)) (size!7481 (ite c!135431 call!49100 call!49097)))))))

(declare-fun d!260232 () Bool)

(assert (=> d!260232 e!547658))

(declare-fun res!381543 () Bool)

(assert (=> d!260232 (=> (not res!381543) (not e!547658))))

(assert (=> d!260232 (= res!381543 (= (content!1316 lt!317750) ((_ map or) (content!1316 (ite c!135431 call!49097 call!49099)) (content!1316 (ite c!135431 call!49100 call!49097)))))))

(declare-fun e!547657 () List!8903)

(assert (=> d!260232 (= lt!317750 e!547657)))

(declare-fun c!135459 () Bool)

(assert (=> d!260232 (= c!135459 ((_ is Nil!8887) (ite c!135431 call!49097 call!49099)))))

(assert (=> d!260232 (= (++!2303 (ite c!135431 call!49097 call!49099) (ite c!135431 call!49100 call!49097)) lt!317750)))

(declare-fun b!831444 () Bool)

(assert (=> b!831444 (= e!547657 (ite c!135431 call!49100 call!49097))))

(declare-fun b!831445 () Bool)

(assert (=> b!831445 (= e!547657 (Cons!8887 (h!14288 (ite c!135431 call!49097 call!49099)) (++!2303 (t!93195 (ite c!135431 call!49097 call!49099)) (ite c!135431 call!49100 call!49097))))))

(declare-fun b!831447 () Bool)

(assert (=> b!831447 (= e!547658 (or (not (= (ite c!135431 call!49100 call!49097) Nil!8887)) (= lt!317750 (ite c!135431 call!49097 call!49099))))))

(assert (= (and d!260232 c!135459) b!831444))

(assert (= (and d!260232 (not c!135459)) b!831445))

(assert (= (and d!260232 res!381543) b!831446))

(assert (= (and b!831446 res!381542) b!831447))

(declare-fun m!1067871 () Bool)

(assert (=> b!831446 m!1067871))

(declare-fun m!1067873 () Bool)

(assert (=> b!831446 m!1067873))

(declare-fun m!1067875 () Bool)

(assert (=> b!831446 m!1067875))

(declare-fun m!1067877 () Bool)

(assert (=> d!260232 m!1067877))

(declare-fun m!1067879 () Bool)

(assert (=> d!260232 m!1067879))

(declare-fun m!1067881 () Bool)

(assert (=> d!260232 m!1067881))

(declare-fun m!1067883 () Bool)

(assert (=> b!831445 m!1067883))

(assert (=> bm!49095 d!260232))

(declare-fun call!49124 () Bool)

(declare-fun bm!49119 () Bool)

(declare-fun c!135461 () Bool)

(assert (=> bm!49119 (= call!49124 (validRegex!630 (ite c!135461 (regTwo!4667 (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) (regOne!4666 (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))))

(declare-fun b!831448 () Bool)

(declare-fun res!381548 () Bool)

(declare-fun e!547660 () Bool)

(assert (=> b!831448 (=> (not res!381548) (not e!547660))))

(declare-fun call!49126 () Bool)

(assert (=> b!831448 (= res!381548 call!49126)))

(declare-fun e!547661 () Bool)

(assert (=> b!831448 (= e!547661 e!547660)))

(declare-fun b!831449 () Bool)

(assert (=> b!831449 (= e!547660 call!49124)))

(declare-fun b!831450 () Bool)

(declare-fun res!381547 () Bool)

(declare-fun e!547659 () Bool)

(assert (=> b!831450 (=> res!381547 e!547659)))

(assert (=> b!831450 (= res!381547 (not ((_ is Concat!3808) (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))))

(assert (=> b!831450 (= e!547661 e!547659)))

(declare-fun b!831451 () Bool)

(declare-fun e!547665 () Bool)

(assert (=> b!831451 (= e!547665 call!49126)))

(declare-fun b!831452 () Bool)

(assert (=> b!831452 (= e!547659 e!547665)))

(declare-fun res!381544 () Bool)

(assert (=> b!831452 (=> (not res!381544) (not e!547665))))

(assert (=> b!831452 (= res!381544 call!49124)))

(declare-fun b!831453 () Bool)

(declare-fun e!547663 () Bool)

(assert (=> b!831453 (= e!547663 e!547661)))

(assert (=> b!831453 (= c!135461 ((_ is Union!2077) (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(declare-fun d!260234 () Bool)

(declare-fun res!381545 () Bool)

(declare-fun e!547662 () Bool)

(assert (=> d!260234 (=> res!381545 e!547662)))

(assert (=> d!260234 (= res!381545 ((_ is ElementMatch!2077) (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(assert (=> d!260234 (= (validRegex!630 (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) e!547662)))

(declare-fun b!831454 () Bool)

(assert (=> b!831454 (= e!547662 e!547663)))

(declare-fun c!135460 () Bool)

(assert (=> b!831454 (= c!135460 ((_ is Star!2077) (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(declare-fun b!831455 () Bool)

(declare-fun e!547664 () Bool)

(assert (=> b!831455 (= e!547663 e!547664)))

(declare-fun res!381546 () Bool)

(assert (=> b!831455 (= res!381546 (not (nullable!528 (reg!2406 (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))))

(assert (=> b!831455 (=> (not res!381546) (not e!547664))))

(declare-fun b!831456 () Bool)

(declare-fun call!49125 () Bool)

(assert (=> b!831456 (= e!547664 call!49125)))

(declare-fun bm!49120 () Bool)

(assert (=> bm!49120 (= call!49126 call!49125)))

(declare-fun bm!49121 () Bool)

(assert (=> bm!49121 (= call!49125 (validRegex!630 (ite c!135460 (reg!2406 (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) (ite c!135461 (regOne!4667 (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177)))) (regTwo!4666 (ite c!135361 (reg!2406 r!27177) (ite c!135362 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))))))

(assert (= (and d!260234 (not res!381545)) b!831454))

(assert (= (and b!831454 c!135460) b!831455))

(assert (= (and b!831454 (not c!135460)) b!831453))

(assert (= (and b!831455 res!381546) b!831456))

(assert (= (and b!831453 c!135461) b!831448))

(assert (= (and b!831453 (not c!135461)) b!831450))

(assert (= (and b!831448 res!381548) b!831449))

(assert (= (and b!831450 (not res!381547)) b!831452))

(assert (= (and b!831452 res!381544) b!831451))

(assert (= (or b!831448 b!831451) bm!49120))

(assert (= (or b!831449 b!831452) bm!49119))

(assert (= (or b!831456 bm!49120) bm!49121))

(declare-fun m!1067885 () Bool)

(assert (=> bm!49119 m!1067885))

(declare-fun m!1067887 () Bool)

(assert (=> b!831455 m!1067887))

(declare-fun m!1067889 () Bool)

(assert (=> bm!49121 m!1067889))

(assert (=> bm!49025 d!260234))

(declare-fun d!260236 () Bool)

(declare-fun lt!317751 () Bool)

(assert (=> d!260236 (= lt!317751 (select (content!1316 (t!93195 (usedCharacters!166 r!27177))) c!13916))))

(declare-fun e!547667 () Bool)

(assert (=> d!260236 (= lt!317751 e!547667)))

(declare-fun res!381549 () Bool)

(assert (=> d!260236 (=> (not res!381549) (not e!547667))))

(assert (=> d!260236 (= res!381549 ((_ is Cons!8887) (t!93195 (usedCharacters!166 r!27177))))))

(assert (=> d!260236 (= (contains!1668 (t!93195 (usedCharacters!166 r!27177)) c!13916) lt!317751)))

(declare-fun b!831457 () Bool)

(declare-fun e!547666 () Bool)

(assert (=> b!831457 (= e!547667 e!547666)))

(declare-fun res!381550 () Bool)

(assert (=> b!831457 (=> res!381550 e!547666)))

(assert (=> b!831457 (= res!381550 (= (h!14288 (t!93195 (usedCharacters!166 r!27177))) c!13916))))

(declare-fun b!831458 () Bool)

(assert (=> b!831458 (= e!547666 (contains!1668 (t!93195 (t!93195 (usedCharacters!166 r!27177))) c!13916))))

(assert (= (and d!260236 res!381549) b!831457))

(assert (= (and b!831457 (not res!381550)) b!831458))

(declare-fun m!1067891 () Bool)

(assert (=> d!260236 m!1067891))

(declare-fun m!1067893 () Bool)

(assert (=> d!260236 m!1067893))

(declare-fun m!1067895 () Bool)

(assert (=> b!831458 m!1067895))

(assert (=> b!831220 d!260236))

(declare-fun b!831461 () Bool)

(declare-fun res!381551 () Bool)

(declare-fun e!547669 () Bool)

(assert (=> b!831461 (=> (not res!381551) (not e!547669))))

(declare-fun lt!317752 () List!8903)

(assert (=> b!831461 (= res!381551 (= (size!7481 lt!317752) (+ (size!7481 (ite c!135384 call!49052 call!49050)) (size!7481 (ite c!135384 call!49050 call!49052)))))))

(declare-fun d!260238 () Bool)

(assert (=> d!260238 e!547669))

(declare-fun res!381552 () Bool)

(assert (=> d!260238 (=> (not res!381552) (not e!547669))))

(assert (=> d!260238 (= res!381552 (= (content!1316 lt!317752) ((_ map or) (content!1316 (ite c!135384 call!49052 call!49050)) (content!1316 (ite c!135384 call!49050 call!49052)))))))

(declare-fun e!547668 () List!8903)

(assert (=> d!260238 (= lt!317752 e!547668)))

(declare-fun c!135462 () Bool)

(assert (=> d!260238 (= c!135462 ((_ is Nil!8887) (ite c!135384 call!49052 call!49050)))))

(assert (=> d!260238 (= (++!2303 (ite c!135384 call!49052 call!49050) (ite c!135384 call!49050 call!49052)) lt!317752)))

(declare-fun b!831459 () Bool)

(assert (=> b!831459 (= e!547668 (ite c!135384 call!49050 call!49052))))

(declare-fun b!831460 () Bool)

(assert (=> b!831460 (= e!547668 (Cons!8887 (h!14288 (ite c!135384 call!49052 call!49050)) (++!2303 (t!93195 (ite c!135384 call!49052 call!49050)) (ite c!135384 call!49050 call!49052))))))

(declare-fun b!831462 () Bool)

(assert (=> b!831462 (= e!547669 (or (not (= (ite c!135384 call!49050 call!49052) Nil!8887)) (= lt!317752 (ite c!135384 call!49052 call!49050))))))

(assert (= (and d!260238 c!135462) b!831459))

(assert (= (and d!260238 (not c!135462)) b!831460))

(assert (= (and d!260238 res!381552) b!831461))

(assert (= (and b!831461 res!381551) b!831462))

(declare-fun m!1067897 () Bool)

(assert (=> b!831461 m!1067897))

(declare-fun m!1067899 () Bool)

(assert (=> b!831461 m!1067899))

(declare-fun m!1067901 () Bool)

(assert (=> b!831461 m!1067901))

(declare-fun m!1067903 () Bool)

(assert (=> d!260238 m!1067903))

(declare-fun m!1067905 () Bool)

(assert (=> d!260238 m!1067905))

(declare-fun m!1067907 () Bool)

(assert (=> d!260238 m!1067907))

(declare-fun m!1067909 () Bool)

(assert (=> b!831460 m!1067909))

(assert (=> bm!49044 d!260238))

(declare-fun d!260240 () Bool)

(assert (=> d!260240 (= (nullable!528 (regOne!4666 (regOne!4666 r!27177))) (nullableFct!166 (regOne!4666 (regOne!4666 r!27177))))))

(declare-fun bs!229660 () Bool)

(assert (= bs!229660 d!260240))

(declare-fun m!1067911 () Bool)

(assert (=> bs!229660 m!1067911))

(assert (=> b!831319 d!260240))

(declare-fun b!831463 () Bool)

(declare-fun e!547670 () List!8903)

(declare-fun call!49129 () List!8903)

(assert (=> b!831463 (= e!547670 call!49129)))

(declare-fun b!831464 () Bool)

(declare-fun e!547671 () List!8903)

(assert (=> b!831464 (= e!547671 (Cons!8887 (c!135348 (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) Nil!8887))))

(declare-fun b!831465 () Bool)

(declare-fun e!547672 () List!8903)

(assert (=> b!831465 (= e!547670 e!547672)))

(declare-fun c!135466 () Bool)

(assert (=> b!831465 (= c!135466 ((_ is Union!2077) (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(declare-fun b!831466 () Bool)

(declare-fun call!49127 () List!8903)

(assert (=> b!831466 (= e!547672 call!49127)))

(declare-fun d!260242 () Bool)

(declare-fun c!135465 () Bool)

(assert (=> d!260242 (= c!135465 (or ((_ is EmptyExpr!2077) (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) ((_ is EmptyLang!2077) (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))

(declare-fun e!547673 () List!8903)

(assert (=> d!260242 (= (usedCharacters!166 (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) e!547673)))

(declare-fun call!49128 () List!8903)

(declare-fun bm!49122 () Bool)

(declare-fun call!49130 () List!8903)

(assert (=> bm!49122 (= call!49127 (++!2303 (ite c!135466 call!49130 call!49128) (ite c!135466 call!49128 call!49130)))))

(declare-fun bm!49123 () Bool)

(assert (=> bm!49123 (= call!49128 (usedCharacters!166 (ite c!135466 (regTwo!4667 (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) (regOne!4666 (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))))

(declare-fun b!831467 () Bool)

(assert (=> b!831467 (= e!547673 Nil!8887)))

(declare-fun b!831468 () Bool)

(assert (=> b!831468 (= e!547673 e!547671)))

(declare-fun c!135464 () Bool)

(assert (=> b!831468 (= c!135464 ((_ is ElementMatch!2077) (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(declare-fun b!831469 () Bool)

(declare-fun c!135463 () Bool)

(assert (=> b!831469 (= c!135463 ((_ is Star!2077) (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))

(assert (=> b!831469 (= e!547671 e!547670)))

(declare-fun b!831470 () Bool)

(assert (=> b!831470 (= e!547672 call!49127)))

(declare-fun bm!49124 () Bool)

(assert (=> bm!49124 (= call!49129 (usedCharacters!166 (ite c!135463 (reg!2406 (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) (ite c!135466 (regOne!4667 (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))) (regTwo!4666 (ite c!135384 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))))

(declare-fun bm!49125 () Bool)

(assert (=> bm!49125 (= call!49130 call!49129)))

(assert (= (and d!260242 c!135465) b!831467))

(assert (= (and d!260242 (not c!135465)) b!831468))

(assert (= (and b!831468 c!135464) b!831464))

(assert (= (and b!831468 (not c!135464)) b!831469))

(assert (= (and b!831469 c!135463) b!831463))

(assert (= (and b!831469 (not c!135463)) b!831465))

(assert (= (and b!831465 c!135466) b!831466))

(assert (= (and b!831465 (not c!135466)) b!831470))

(assert (= (or b!831466 b!831470) bm!49123))

(assert (= (or b!831466 b!831470) bm!49125))

(assert (= (or b!831466 b!831470) bm!49122))

(assert (= (or b!831463 bm!49125) bm!49124))

(declare-fun m!1067913 () Bool)

(assert (=> bm!49122 m!1067913))

(declare-fun m!1067915 () Bool)

(assert (=> bm!49123 m!1067915))

(declare-fun m!1067917 () Bool)

(assert (=> bm!49124 m!1067917))

(assert (=> bm!49045 d!260242))

(declare-fun call!49131 () Bool)

(declare-fun bm!49126 () Bool)

(declare-fun c!135468 () Bool)

(assert (=> bm!49126 (= call!49131 (validRegex!630 (ite c!135468 (regTwo!4667 (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) (regOne!4666 (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))))

(declare-fun b!831471 () Bool)

(declare-fun res!381557 () Bool)

(declare-fun e!547675 () Bool)

(assert (=> b!831471 (=> (not res!381557) (not e!547675))))

(declare-fun call!49133 () Bool)

(assert (=> b!831471 (= res!381557 call!49133)))

(declare-fun e!547676 () Bool)

(assert (=> b!831471 (= e!547676 e!547675)))

(declare-fun b!831472 () Bool)

(assert (=> b!831472 (= e!547675 call!49131)))

(declare-fun b!831473 () Bool)

(declare-fun res!381556 () Bool)

(declare-fun e!547674 () Bool)

(assert (=> b!831473 (=> res!381556 e!547674)))

(assert (=> b!831473 (= res!381556 (not ((_ is Concat!3808) (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))))

(assert (=> b!831473 (= e!547676 e!547674)))

(declare-fun b!831474 () Bool)

(declare-fun e!547680 () Bool)

(assert (=> b!831474 (= e!547680 call!49133)))

(declare-fun b!831475 () Bool)

(assert (=> b!831475 (= e!547674 e!547680)))

(declare-fun res!381553 () Bool)

(assert (=> b!831475 (=> (not res!381553) (not e!547680))))

(assert (=> b!831475 (= res!381553 call!49131)))

(declare-fun b!831476 () Bool)

(declare-fun e!547678 () Bool)

(assert (=> b!831476 (= e!547678 e!547676)))

(assert (=> b!831476 (= c!135468 ((_ is Union!2077) (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(declare-fun d!260244 () Bool)

(declare-fun res!381554 () Bool)

(declare-fun e!547677 () Bool)

(assert (=> d!260244 (=> res!381554 e!547677)))

(assert (=> d!260244 (= res!381554 ((_ is ElementMatch!2077) (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(assert (=> d!260244 (= (validRegex!630 (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) e!547677)))

(declare-fun b!831477 () Bool)

(assert (=> b!831477 (= e!547677 e!547678)))

(declare-fun c!135467 () Bool)

(assert (=> b!831477 (= c!135467 ((_ is Star!2077) (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(declare-fun b!831478 () Bool)

(declare-fun e!547679 () Bool)

(assert (=> b!831478 (= e!547678 e!547679)))

(declare-fun res!381555 () Bool)

(assert (=> b!831478 (= res!381555 (not (nullable!528 (reg!2406 (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))))

(assert (=> b!831478 (=> (not res!381555) (not e!547679))))

(declare-fun b!831479 () Bool)

(declare-fun call!49132 () Bool)

(assert (=> b!831479 (= e!547679 call!49132)))

(declare-fun bm!49127 () Bool)

(assert (=> bm!49127 (= call!49133 call!49132)))

(declare-fun bm!49128 () Bool)

(assert (=> bm!49128 (= call!49132 (validRegex!630 (ite c!135467 (reg!2406 (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) (ite c!135468 (regOne!4667 (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) (regTwo!4666 (ite c!135357 (reg!2406 (regOne!4666 r!27177)) (ite c!135360 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))))))

(assert (= (and d!260244 (not res!381554)) b!831477))

(assert (= (and b!831477 c!135467) b!831478))

(assert (= (and b!831477 (not c!135467)) b!831476))

(assert (= (and b!831478 res!381555) b!831479))

(assert (= (and b!831476 c!135468) b!831471))

(assert (= (and b!831476 (not c!135468)) b!831473))

(assert (= (and b!831471 res!381557) b!831472))

(assert (= (and b!831473 (not res!381556)) b!831475))

(assert (= (and b!831475 res!381553) b!831474))

(assert (= (or b!831471 b!831474) bm!49127))

(assert (= (or b!831472 b!831475) bm!49126))

(assert (= (or b!831479 bm!49127) bm!49128))

(declare-fun m!1067919 () Bool)

(assert (=> bm!49126 m!1067919))

(declare-fun m!1067921 () Bool)

(assert (=> b!831478 m!1067921))

(declare-fun m!1067923 () Bool)

(assert (=> bm!49128 m!1067923))

(assert (=> bm!49022 d!260244))

(declare-fun d!260246 () Bool)

(declare-fun lt!317753 () Bool)

(assert (=> d!260246 (= lt!317753 (select (content!1316 (t!93195 (firstChars!48 r!27177))) c!13916))))

(declare-fun e!547682 () Bool)

(assert (=> d!260246 (= lt!317753 e!547682)))

(declare-fun res!381558 () Bool)

(assert (=> d!260246 (=> (not res!381558) (not e!547682))))

(assert (=> d!260246 (= res!381558 ((_ is Cons!8887) (t!93195 (firstChars!48 r!27177))))))

(assert (=> d!260246 (= (contains!1668 (t!93195 (firstChars!48 r!27177)) c!13916) lt!317753)))

(declare-fun b!831480 () Bool)

(declare-fun e!547681 () Bool)

(assert (=> b!831480 (= e!547682 e!547681)))

(declare-fun res!381559 () Bool)

(assert (=> b!831480 (=> res!381559 e!547681)))

(assert (=> b!831480 (= res!381559 (= (h!14288 (t!93195 (firstChars!48 r!27177))) c!13916))))

(declare-fun b!831481 () Bool)

(assert (=> b!831481 (= e!547681 (contains!1668 (t!93195 (t!93195 (firstChars!48 r!27177))) c!13916))))

(assert (= (and d!260246 res!381558) b!831480))

(assert (= (and b!831480 (not res!381559)) b!831481))

(declare-fun m!1067925 () Bool)

(assert (=> d!260246 m!1067925))

(declare-fun m!1067927 () Bool)

(assert (=> d!260246 m!1067927))

(declare-fun m!1067929 () Bool)

(assert (=> b!831481 m!1067929))

(assert (=> b!831243 d!260246))

(declare-fun d!260248 () Bool)

(declare-fun lt!317754 () Bool)

(assert (=> d!260248 (= lt!317754 (select (content!1316 (t!93195 (usedCharacters!166 (regOne!4666 r!27177)))) c!13916))))

(declare-fun e!547684 () Bool)

(assert (=> d!260248 (= lt!317754 e!547684)))

(declare-fun res!381560 () Bool)

(assert (=> d!260248 (=> (not res!381560) (not e!547684))))

(assert (=> d!260248 (= res!381560 ((_ is Cons!8887) (t!93195 (usedCharacters!166 (regOne!4666 r!27177)))))))

(assert (=> d!260248 (= (contains!1668 (t!93195 (usedCharacters!166 (regOne!4666 r!27177))) c!13916) lt!317754)))

(declare-fun b!831482 () Bool)

(declare-fun e!547683 () Bool)

(assert (=> b!831482 (= e!547684 e!547683)))

(declare-fun res!381561 () Bool)

(assert (=> b!831482 (=> res!381561 e!547683)))

(assert (=> b!831482 (= res!381561 (= (h!14288 (t!93195 (usedCharacters!166 (regOne!4666 r!27177)))) c!13916))))

(declare-fun b!831483 () Bool)

(assert (=> b!831483 (= e!547683 (contains!1668 (t!93195 (t!93195 (usedCharacters!166 (regOne!4666 r!27177)))) c!13916))))

(assert (= (and d!260248 res!381560) b!831482))

(assert (= (and b!831482 (not res!381561)) b!831483))

(assert (=> d!260248 m!1067843))

(declare-fun m!1067931 () Bool)

(assert (=> d!260248 m!1067931))

(declare-fun m!1067933 () Bool)

(assert (=> b!831483 m!1067933))

(assert (=> b!831200 d!260248))

(declare-fun b!831484 () Bool)

(declare-fun e!547688 () List!8903)

(declare-fun call!49136 () List!8903)

(assert (=> b!831484 (= e!547688 call!49136)))

(declare-fun b!831485 () Bool)

(declare-fun e!547686 () List!8903)

(declare-fun call!49134 () List!8903)

(assert (=> b!831485 (= e!547686 call!49134)))

(declare-fun b!831486 () Bool)

(declare-fun call!49137 () List!8903)

(assert (=> b!831486 (= e!547688 call!49137)))

(declare-fun b!831487 () Bool)

(declare-fun e!547685 () List!8903)

(declare-fun e!547687 () List!8903)

(assert (=> b!831487 (= e!547685 e!547687)))

(declare-fun c!135473 () Bool)

(assert (=> b!831487 (= c!135473 ((_ is ElementMatch!2077) (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))

(declare-fun b!831488 () Bool)

(assert (=> b!831488 (= e!547685 Nil!8887)))

(declare-fun c!135472 () Bool)

(declare-fun bm!49129 () Bool)

(declare-fun call!49135 () List!8903)

(assert (=> bm!49129 (= call!49135 (firstChars!48 (ite c!135472 (regOne!4667 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))) (regTwo!4666 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))))

(declare-fun b!831489 () Bool)

(declare-fun e!547689 () List!8903)

(assert (=> b!831489 (= e!547689 call!49136)))

(declare-fun bm!49130 () Bool)

(declare-fun call!49138 () List!8903)

(assert (=> bm!49130 (= call!49138 call!49134)))

(declare-fun bm!49131 () Bool)

(assert (=> bm!49131 (= call!49137 call!49138)))

(declare-fun b!831491 () Bool)

(declare-fun c!135470 () Bool)

(assert (=> b!831491 (= c!135470 (nullable!528 (regOne!4666 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(assert (=> b!831491 (= e!547689 e!547688)))

(declare-fun bm!49132 () Bool)

(declare-fun c!135471 () Bool)

(assert (=> bm!49132 (= call!49134 (firstChars!48 (ite c!135471 (reg!2406 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))) (ite c!135472 (regTwo!4667 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))) (regOne!4666 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))))

(declare-fun bm!49133 () Bool)

(assert (=> bm!49133 (= call!49136 (++!2303 (ite c!135472 call!49135 call!49137) (ite c!135472 call!49138 call!49135)))))

(declare-fun b!831492 () Bool)

(assert (=> b!831492 (= c!135471 ((_ is Star!2077) (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))

(assert (=> b!831492 (= e!547687 e!547686)))

(declare-fun b!831493 () Bool)

(assert (=> b!831493 (= e!547687 (Cons!8887 (c!135348 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))) Nil!8887))))

(declare-fun d!260250 () Bool)

(declare-fun c!135469 () Bool)

(assert (=> d!260250 (= c!135469 (or ((_ is EmptyExpr!2077) (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))) ((_ is EmptyLang!2077) (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177)))))))

(assert (=> d!260250 (= (firstChars!48 (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))) e!547685)))

(declare-fun b!831490 () Bool)

(assert (=> b!831490 (= e!547686 e!547689)))

(assert (=> b!831490 (= c!135472 ((_ is Union!2077) (ite c!135431 (regOne!4667 r!27177) (regTwo!4666 r!27177))))))

(assert (= (and d!260250 c!135469) b!831488))

(assert (= (and d!260250 (not c!135469)) b!831487))

(assert (= (and b!831487 c!135473) b!831493))

(assert (= (and b!831487 (not c!135473)) b!831492))

(assert (= (and b!831492 c!135471) b!831485))

(assert (= (and b!831492 (not c!135471)) b!831490))

(assert (= (and b!831490 c!135472) b!831489))

(assert (= (and b!831490 (not c!135472)) b!831491))

(assert (= (and b!831491 c!135470) b!831484))

(assert (= (and b!831491 (not c!135470)) b!831486))

(assert (= (or b!831484 b!831486) bm!49131))

(assert (= (or b!831489 bm!49131) bm!49130))

(assert (= (or b!831489 b!831484) bm!49129))

(assert (= (or b!831489 b!831484) bm!49133))

(assert (= (or b!831485 bm!49130) bm!49132))

(declare-fun m!1067935 () Bool)

(assert (=> bm!49129 m!1067935))

(declare-fun m!1067937 () Bool)

(assert (=> b!831491 m!1067937))

(declare-fun m!1067939 () Bool)

(assert (=> bm!49132 m!1067939))

(declare-fun m!1067941 () Bool)

(assert (=> bm!49133 m!1067941))

(assert (=> bm!49091 d!260250))

(declare-fun b!831494 () Bool)

(declare-fun e!547690 () List!8903)

(declare-fun call!49141 () List!8903)

(assert (=> b!831494 (= e!547690 call!49141)))

(declare-fun b!831495 () Bool)

(declare-fun e!547691 () List!8903)

(assert (=> b!831495 (= e!547691 (Cons!8887 (c!135348 (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) Nil!8887))))

(declare-fun b!831496 () Bool)

(declare-fun e!547692 () List!8903)

(assert (=> b!831496 (= e!547690 e!547692)))

(declare-fun c!135477 () Bool)

(assert (=> b!831496 (= c!135477 ((_ is Union!2077) (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(declare-fun b!831497 () Bool)

(declare-fun call!49139 () List!8903)

(assert (=> b!831497 (= e!547692 call!49139)))

(declare-fun d!260252 () Bool)

(declare-fun c!135476 () Bool)

(assert (=> d!260252 (= c!135476 (or ((_ is EmptyExpr!2077) (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) ((_ is EmptyLang!2077) (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))))

(declare-fun e!547693 () List!8903)

(assert (=> d!260252 (= (usedCharacters!166 (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) e!547693)))

(declare-fun call!49140 () List!8903)

(declare-fun bm!49134 () Bool)

(declare-fun call!49142 () List!8903)

(assert (=> bm!49134 (= call!49139 (++!2303 (ite c!135477 call!49142 call!49140) (ite c!135477 call!49140 call!49142)))))

(declare-fun bm!49135 () Bool)

(assert (=> bm!49135 (= call!49140 (usedCharacters!166 (ite c!135477 (regTwo!4667 (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) (regOne!4666 (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))))

(declare-fun b!831498 () Bool)

(assert (=> b!831498 (= e!547693 Nil!8887)))

(declare-fun b!831499 () Bool)

(assert (=> b!831499 (= e!547693 e!547691)))

(declare-fun c!135475 () Bool)

(assert (=> b!831499 (= c!135475 ((_ is ElementMatch!2077) (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(declare-fun b!831500 () Bool)

(declare-fun c!135474 () Bool)

(assert (=> b!831500 (= c!135474 ((_ is Star!2077) (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))))))

(assert (=> b!831500 (= e!547691 e!547690)))

(declare-fun b!831501 () Bool)

(assert (=> b!831501 (= e!547692 call!49139)))

(declare-fun bm!49136 () Bool)

(assert (=> bm!49136 (= call!49141 (usedCharacters!166 (ite c!135474 (reg!2406 (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) (ite c!135477 (regOne!4667 (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177))))) (regTwo!4666 (ite c!135381 (reg!2406 (regOne!4666 r!27177)) (ite c!135384 (regOne!4667 (regOne!4666 r!27177)) (regTwo!4666 (regOne!4666 r!27177)))))))))))

(declare-fun bm!49137 () Bool)

(assert (=> bm!49137 (= call!49142 call!49141)))

(assert (= (and d!260252 c!135476) b!831498))

(assert (= (and d!260252 (not c!135476)) b!831499))

(assert (= (and b!831499 c!135475) b!831495))

(assert (= (and b!831499 (not c!135475)) b!831500))

(assert (= (and b!831500 c!135474) b!831494))

(assert (= (and b!831500 (not c!135474)) b!831496))

(assert (= (and b!831496 c!135477) b!831497))

(assert (= (and b!831496 (not c!135477)) b!831501))

(assert (= (or b!831497 b!831501) bm!49135))

(assert (= (or b!831497 b!831501) bm!49137))

(assert (= (or b!831497 b!831501) bm!49134))

(assert (= (or b!831494 bm!49137) bm!49136))

(declare-fun m!1067943 () Bool)

(assert (=> bm!49134 m!1067943))

(declare-fun m!1067945 () Bool)

(assert (=> bm!49135 m!1067945))

(declare-fun m!1067947 () Bool)

(assert (=> bm!49136 m!1067947))

(assert (=> bm!49046 d!260252))

(declare-fun b!831502 () Bool)

(declare-fun e!547697 () List!8903)

(declare-fun call!49145 () List!8903)

(assert (=> b!831502 (= e!547697 call!49145)))

(declare-fun b!831503 () Bool)

(declare-fun e!547695 () List!8903)

(declare-fun call!49143 () List!8903)

(assert (=> b!831503 (= e!547695 call!49143)))

(declare-fun b!831504 () Bool)

(declare-fun call!49146 () List!8903)

(assert (=> b!831504 (= e!547697 call!49146)))

(declare-fun b!831505 () Bool)

(declare-fun e!547694 () List!8903)

(declare-fun e!547696 () List!8903)

(assert (=> b!831505 (= e!547694 e!547696)))

(declare-fun c!135482 () Bool)

(assert (=> b!831505 (= c!135482 ((_ is ElementMatch!2077) (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))

(declare-fun b!831506 () Bool)

(assert (=> b!831506 (= e!547694 Nil!8887)))

(declare-fun call!49144 () List!8903)

(declare-fun bm!49138 () Bool)

(declare-fun c!135481 () Bool)

(assert (=> bm!49138 (= call!49144 (firstChars!48 (ite c!135481 (regOne!4667 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))) (regTwo!4666 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))))

(declare-fun b!831507 () Bool)

(declare-fun e!547698 () List!8903)

(assert (=> b!831507 (= e!547698 call!49145)))

(declare-fun bm!49139 () Bool)

(declare-fun call!49147 () List!8903)

(assert (=> bm!49139 (= call!49147 call!49143)))

(declare-fun bm!49140 () Bool)

(assert (=> bm!49140 (= call!49146 call!49147)))

(declare-fun c!135479 () Bool)

(declare-fun b!831509 () Bool)

(assert (=> b!831509 (= c!135479 (nullable!528 (regOne!4666 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))))

(assert (=> b!831509 (= e!547698 e!547697)))

(declare-fun c!135480 () Bool)

(declare-fun bm!49141 () Bool)

(assert (=> bm!49141 (= call!49143 (firstChars!48 (ite c!135480 (reg!2406 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))) (ite c!135481 (regTwo!4667 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))) (regOne!4666 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))))))

(declare-fun bm!49142 () Bool)

(assert (=> bm!49142 (= call!49145 (++!2303 (ite c!135481 call!49144 call!49146) (ite c!135481 call!49147 call!49144)))))

(declare-fun b!831510 () Bool)

(assert (=> b!831510 (= c!135480 ((_ is Star!2077) (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))

(assert (=> b!831510 (= e!547696 e!547695)))

(declare-fun b!831511 () Bool)

(assert (=> b!831511 (= e!547696 (Cons!8887 (c!135348 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))) Nil!8887))))

(declare-fun d!260254 () Bool)

(declare-fun c!135478 () Bool)

(assert (=> d!260254 (= c!135478 (or ((_ is EmptyExpr!2077) (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))) ((_ is EmptyLang!2077) (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177)))))))))

(assert (=> d!260254 (= (firstChars!48 (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))) e!547694)))

(declare-fun b!831508 () Bool)

(assert (=> b!831508 (= e!547695 e!547698)))

(assert (=> b!831508 (= c!135481 ((_ is Union!2077) (ite c!135435 (reg!2406 (regOne!4666 r!27177)) (ite c!135436 (regTwo!4667 (regOne!4666 r!27177)) (regOne!4666 (regOne!4666 r!27177))))))))

(assert (= (and d!260254 c!135478) b!831506))

(assert (= (and d!260254 (not c!135478)) b!831505))

(assert (= (and b!831505 c!135482) b!831511))

(assert (= (and b!831505 (not c!135482)) b!831510))

(assert (= (and b!831510 c!135480) b!831503))

(assert (= (and b!831510 (not c!135480)) b!831508))

(assert (= (and b!831508 c!135481) b!831507))

(assert (= (and b!831508 (not c!135481)) b!831509))

(assert (= (and b!831509 c!135479) b!831502))

(assert (= (and b!831509 (not c!135479)) b!831504))

(assert (= (or b!831502 b!831504) bm!49140))

(assert (= (or b!831507 bm!49140) bm!49139))

(assert (= (or b!831507 b!831502) bm!49138))

(assert (= (or b!831507 b!831502) bm!49142))

(assert (= (or b!831503 bm!49139) bm!49141))

(declare-fun m!1067949 () Bool)

(assert (=> bm!49138 m!1067949))

(declare-fun m!1067951 () Bool)

(assert (=> b!831509 m!1067951))

(declare-fun m!1067953 () Bool)

(assert (=> bm!49141 m!1067953))

(declare-fun m!1067955 () Bool)

(assert (=> bm!49142 m!1067955))

(assert (=> bm!49099 d!260254))

(declare-fun d!260256 () Bool)

(declare-fun c!135483 () Bool)

(assert (=> d!260256 (= c!135483 ((_ is Nil!8887) (firstChars!48 (regOne!4666 r!27177))))))

(declare-fun e!547699 () (InoxSet C!4724))

(assert (=> d!260256 (= (content!1316 (firstChars!48 (regOne!4666 r!27177))) e!547699)))

(declare-fun b!831512 () Bool)

(assert (=> b!831512 (= e!547699 ((as const (Array C!4724 Bool)) false))))

(declare-fun b!831513 () Bool)

(assert (=> b!831513 (= e!547699 ((_ map or) (store ((as const (Array C!4724 Bool)) false) (h!14288 (firstChars!48 (regOne!4666 r!27177))) true) (content!1316 (t!93195 (firstChars!48 (regOne!4666 r!27177))))))))

(assert (= (and d!260256 c!135483) b!831512))

(assert (= (and d!260256 (not c!135483)) b!831513))

(declare-fun m!1067957 () Bool)

(assert (=> b!831513 m!1067957))

(declare-fun m!1067959 () Bool)

(assert (=> b!831513 m!1067959))

(assert (=> d!260214 d!260256))

(declare-fun b!831516 () Bool)

(declare-fun res!381562 () Bool)

(declare-fun e!547701 () Bool)

(assert (=> b!831516 (=> (not res!381562) (not e!547701))))

(declare-fun lt!317755 () List!8903)

(assert (=> b!831516 (= res!381562 (= (size!7481 lt!317755) (+ (size!7481 (ite c!135436 call!49102 call!49104)) (size!7481 (ite c!135436 call!49105 call!49102)))))))

(declare-fun d!260258 () Bool)

(assert (=> d!260258 e!547701))

(declare-fun res!381563 () Bool)

(assert (=> d!260258 (=> (not res!381563) (not e!547701))))

(assert (=> d!260258 (= res!381563 (= (content!1316 lt!317755) ((_ map or) (content!1316 (ite c!135436 call!49102 call!49104)) (content!1316 (ite c!135436 call!49105 call!49102)))))))

(declare-fun e!547700 () List!8903)

(assert (=> d!260258 (= lt!317755 e!547700)))

(declare-fun c!135484 () Bool)

(assert (=> d!260258 (= c!135484 ((_ is Nil!8887) (ite c!135436 call!49102 call!49104)))))

(assert (=> d!260258 (= (++!2303 (ite c!135436 call!49102 call!49104) (ite c!135436 call!49105 call!49102)) lt!317755)))

(declare-fun b!831514 () Bool)

(assert (=> b!831514 (= e!547700 (ite c!135436 call!49105 call!49102))))

(declare-fun b!831515 () Bool)

(assert (=> b!831515 (= e!547700 (Cons!8887 (h!14288 (ite c!135436 call!49102 call!49104)) (++!2303 (t!93195 (ite c!135436 call!49102 call!49104)) (ite c!135436 call!49105 call!49102))))))

(declare-fun b!831517 () Bool)

(assert (=> b!831517 (= e!547701 (or (not (= (ite c!135436 call!49105 call!49102) Nil!8887)) (= lt!317755 (ite c!135436 call!49102 call!49104))))))

(assert (= (and d!260258 c!135484) b!831514))

(assert (= (and d!260258 (not c!135484)) b!831515))

(assert (= (and d!260258 res!381563) b!831516))

(assert (= (and b!831516 res!381562) b!831517))

(declare-fun m!1067961 () Bool)

(assert (=> b!831516 m!1067961))

(declare-fun m!1067963 () Bool)

(assert (=> b!831516 m!1067963))

(declare-fun m!1067965 () Bool)

(assert (=> b!831516 m!1067965))

(declare-fun m!1067967 () Bool)

(assert (=> d!260258 m!1067967))

(declare-fun m!1067969 () Bool)

(assert (=> d!260258 m!1067969))

(declare-fun m!1067971 () Bool)

(assert (=> d!260258 m!1067971))

(declare-fun m!1067973 () Bool)

(assert (=> b!831515 m!1067973))

(assert (=> bm!49100 d!260258))

(declare-fun d!260260 () Bool)

(declare-fun c!135485 () Bool)

(assert (=> d!260260 (= c!135485 ((_ is Nil!8887) (usedCharacters!166 r!27177)))))

(declare-fun e!547702 () (InoxSet C!4724))

(assert (=> d!260260 (= (content!1316 (usedCharacters!166 r!27177)) e!547702)))

(declare-fun b!831518 () Bool)

(assert (=> b!831518 (= e!547702 ((as const (Array C!4724 Bool)) false))))

(declare-fun b!831519 () Bool)

(assert (=> b!831519 (= e!547702 ((_ map or) (store ((as const (Array C!4724 Bool)) false) (h!14288 (usedCharacters!166 r!27177)) true) (content!1316 (t!93195 (usedCharacters!166 r!27177)))))))

(assert (= (and d!260260 c!135485) b!831518))

(assert (= (and d!260260 (not c!135485)) b!831519))

(declare-fun m!1067975 () Bool)

(assert (=> b!831519 m!1067975))

(assert (=> b!831519 m!1067891))

(assert (=> d!260186 d!260260))

(assert (=> b!831305 d!260212))

(declare-fun b!831522 () Bool)

(declare-fun res!381564 () Bool)

(declare-fun e!547704 () Bool)

(assert (=> b!831522 (=> (not res!381564) (not e!547704))))

(declare-fun lt!317756 () List!8903)

(assert (=> b!831522 (= res!381564 (= (size!7481 lt!317756) (+ (size!7481 (ite c!135393 call!49061 call!49059)) (size!7481 (ite c!135393 call!49059 call!49061)))))))

(declare-fun d!260262 () Bool)

(assert (=> d!260262 e!547704))

(declare-fun res!381565 () Bool)

(assert (=> d!260262 (=> (not res!381565) (not e!547704))))

(assert (=> d!260262 (= res!381565 (= (content!1316 lt!317756) ((_ map or) (content!1316 (ite c!135393 call!49061 call!49059)) (content!1316 (ite c!135393 call!49059 call!49061)))))))

(declare-fun e!547703 () List!8903)

(assert (=> d!260262 (= lt!317756 e!547703)))

(declare-fun c!135486 () Bool)

(assert (=> d!260262 (= c!135486 ((_ is Nil!8887) (ite c!135393 call!49061 call!49059)))))

(assert (=> d!260262 (= (++!2303 (ite c!135393 call!49061 call!49059) (ite c!135393 call!49059 call!49061)) lt!317756)))

(declare-fun b!831520 () Bool)

(assert (=> b!831520 (= e!547703 (ite c!135393 call!49059 call!49061))))

(declare-fun b!831521 () Bool)

(assert (=> b!831521 (= e!547703 (Cons!8887 (h!14288 (ite c!135393 call!49061 call!49059)) (++!2303 (t!93195 (ite c!135393 call!49061 call!49059)) (ite c!135393 call!49059 call!49061))))))

(declare-fun b!831523 () Bool)

(assert (=> b!831523 (= e!547704 (or (not (= (ite c!135393 call!49059 call!49061) Nil!8887)) (= lt!317756 (ite c!135393 call!49061 call!49059))))))

(assert (= (and d!260262 c!135486) b!831520))

(assert (= (and d!260262 (not c!135486)) b!831521))

(assert (= (and d!260262 res!381565) b!831522))

(assert (= (and b!831522 res!381564) b!831523))

(declare-fun m!1067977 () Bool)

(assert (=> b!831522 m!1067977))

(declare-fun m!1067979 () Bool)

(assert (=> b!831522 m!1067979))

(declare-fun m!1067981 () Bool)

(assert (=> b!831522 m!1067981))

(declare-fun m!1067983 () Bool)

(assert (=> d!260262 m!1067983))

(declare-fun m!1067985 () Bool)

(assert (=> d!260262 m!1067985))

(declare-fun m!1067987 () Bool)

(assert (=> d!260262 m!1067987))

(declare-fun m!1067989 () Bool)

(assert (=> b!831521 m!1067989))

(assert (=> bm!49053 d!260262))

(declare-fun d!260264 () Bool)

(declare-fun c!135487 () Bool)

(assert (=> d!260264 (= c!135487 ((_ is Nil!8887) (firstChars!48 r!27177)))))

(declare-fun e!547705 () (InoxSet C!4724))

(assert (=> d!260264 (= (content!1316 (firstChars!48 r!27177)) e!547705)))

(declare-fun b!831524 () Bool)

(assert (=> b!831524 (= e!547705 ((as const (Array C!4724 Bool)) false))))

(declare-fun b!831525 () Bool)

(assert (=> b!831525 (= e!547705 ((_ map or) (store ((as const (Array C!4724 Bool)) false) (h!14288 (firstChars!48 r!27177)) true) (content!1316 (t!93195 (firstChars!48 r!27177)))))))

(assert (= (and d!260264 c!135487) b!831524))

(assert (= (and d!260264 (not c!135487)) b!831525))

(declare-fun m!1067991 () Bool)

(assert (=> b!831525 m!1067991))

(assert (=> b!831525 m!1067925))

(assert (=> d!260200 d!260264))

(declare-fun b!831526 () Bool)

(declare-fun e!547709 () List!8903)

(declare-fun call!49150 () List!8903)

(assert (=> b!831526 (= e!547709 call!49150)))

(declare-fun b!831527 () Bool)

(declare-fun e!547707 () List!8903)

(declare-fun call!49148 () List!8903)

(assert (=> b!831527 (= e!547707 call!49148)))

(declare-fun b!831528 () Bool)

(declare-fun call!49151 () List!8903)

(assert (=> b!831528 (= e!547709 call!49151)))

(declare-fun b!831529 () Bool)

(declare-fun e!547706 () List!8903)

(declare-fun e!547708 () List!8903)

(assert (=> b!831529 (= e!547706 e!547708)))

(declare-fun c!135492 () Bool)

(assert (=> b!831529 (= c!135492 ((_ is ElementMatch!2077) (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))

(declare-fun b!831530 () Bool)

(assert (=> b!831530 (= e!547706 Nil!8887)))

(declare-fun bm!49143 () Bool)

(declare-fun call!49149 () List!8903)

(declare-fun c!135491 () Bool)

(assert (=> bm!49143 (= call!49149 (firstChars!48 (ite c!135491 (regOne!4667 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))) (regTwo!4666 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))))

(declare-fun b!831531 () Bool)

(declare-fun e!547710 () List!8903)

(assert (=> b!831531 (= e!547710 call!49150)))

(declare-fun bm!49144 () Bool)

(declare-fun call!49152 () List!8903)

(assert (=> bm!49144 (= call!49152 call!49148)))

(declare-fun bm!49145 () Bool)

(assert (=> bm!49145 (= call!49151 call!49152)))

(declare-fun b!831533 () Bool)

(declare-fun c!135489 () Bool)

(assert (=> b!831533 (= c!135489 (nullable!528 (regOne!4666 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))))

(assert (=> b!831533 (= e!547710 e!547709)))

(declare-fun c!135490 () Bool)

(declare-fun bm!49146 () Bool)

(assert (=> bm!49146 (= call!49148 (firstChars!48 (ite c!135490 (reg!2406 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))) (ite c!135491 (regTwo!4667 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))) (regOne!4666 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))))))

(declare-fun bm!49147 () Bool)

(assert (=> bm!49147 (= call!49150 (++!2303 (ite c!135491 call!49149 call!49151) (ite c!135491 call!49152 call!49149)))))

(declare-fun b!831534 () Bool)

(assert (=> b!831534 (= c!135490 ((_ is Star!2077) (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))

(assert (=> b!831534 (= e!547708 e!547707)))

(declare-fun b!831535 () Bool)

(assert (=> b!831535 (= e!547708 (Cons!8887 (c!135348 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))) Nil!8887))))

(declare-fun d!260266 () Bool)

(declare-fun c!135488 () Bool)

(assert (=> d!260266 (= c!135488 (or ((_ is EmptyExpr!2077) (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))) ((_ is EmptyLang!2077) (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))))

(assert (=> d!260266 (= (firstChars!48 (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))) e!547706)))

(declare-fun b!831532 () Bool)

(assert (=> b!831532 (= e!547707 e!547710)))

(assert (=> b!831532 (= c!135491 ((_ is Union!2077) (ite c!135430 (reg!2406 r!27177) (ite c!135431 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))

(assert (= (and d!260266 c!135488) b!831530))

(assert (= (and d!260266 (not c!135488)) b!831529))

(assert (= (and b!831529 c!135492) b!831535))

(assert (= (and b!831529 (not c!135492)) b!831534))

(assert (= (and b!831534 c!135490) b!831527))

(assert (= (and b!831534 (not c!135490)) b!831532))

(assert (= (and b!831532 c!135491) b!831531))

(assert (= (and b!831532 (not c!135491)) b!831533))

(assert (= (and b!831533 c!135489) b!831526))

(assert (= (and b!831533 (not c!135489)) b!831528))

(assert (= (or b!831526 b!831528) bm!49145))

(assert (= (or b!831531 bm!49145) bm!49144))

(assert (= (or b!831531 b!831526) bm!49143))

(assert (= (or b!831531 b!831526) bm!49147))

(assert (= (or b!831527 bm!49144) bm!49146))

(declare-fun m!1067993 () Bool)

(assert (=> bm!49143 m!1067993))

(declare-fun m!1067995 () Bool)

(assert (=> b!831533 m!1067995))

(declare-fun m!1067997 () Bool)

(assert (=> bm!49146 m!1067997))

(declare-fun m!1067999 () Bool)

(assert (=> bm!49147 m!1067999))

(assert (=> bm!49094 d!260266))

(declare-fun b!831536 () Bool)

(declare-fun e!547711 () List!8903)

(declare-fun call!49155 () List!8903)

(assert (=> b!831536 (= e!547711 call!49155)))

(declare-fun b!831537 () Bool)

(declare-fun e!547712 () List!8903)

(assert (=> b!831537 (= e!547712 (Cons!8887 (c!135348 (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))) Nil!8887))))

(declare-fun b!831538 () Bool)

(declare-fun e!547713 () List!8903)

(assert (=> b!831538 (= e!547711 e!547713)))

(declare-fun c!135496 () Bool)

(assert (=> b!831538 (= c!135496 ((_ is Union!2077) (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))

(declare-fun b!831539 () Bool)

(declare-fun call!49153 () List!8903)

(assert (=> b!831539 (= e!547713 call!49153)))

(declare-fun d!260268 () Bool)

(declare-fun c!135495 () Bool)

(assert (=> d!260268 (= c!135495 (or ((_ is EmptyExpr!2077) (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))) ((_ is EmptyLang!2077) (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))

(declare-fun e!547714 () List!8903)

(assert (=> d!260268 (= (usedCharacters!166 (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))) e!547714)))

(declare-fun bm!49148 () Bool)

(declare-fun call!49156 () List!8903)

(declare-fun call!49154 () List!8903)

(assert (=> bm!49148 (= call!49153 (++!2303 (ite c!135496 call!49156 call!49154) (ite c!135496 call!49154 call!49156)))))

(declare-fun bm!49149 () Bool)

(assert (=> bm!49149 (= call!49154 (usedCharacters!166 (ite c!135496 (regTwo!4667 (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))) (regOne!4666 (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))))

(declare-fun b!831540 () Bool)

(assert (=> b!831540 (= e!547714 Nil!8887)))

(declare-fun b!831541 () Bool)

(assert (=> b!831541 (= e!547714 e!547712)))

(declare-fun c!135494 () Bool)

(assert (=> b!831541 (= c!135494 ((_ is ElementMatch!2077) (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))

(declare-fun b!831542 () Bool)

(declare-fun c!135493 () Bool)

(assert (=> b!831542 (= c!135493 ((_ is Star!2077) (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))

(assert (=> b!831542 (= e!547712 e!547711)))

(declare-fun b!831543 () Bool)

(assert (=> b!831543 (= e!547713 call!49153)))

(declare-fun bm!49150 () Bool)

(assert (=> bm!49150 (= call!49155 (usedCharacters!166 (ite c!135493 (reg!2406 (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))) (ite c!135496 (regOne!4667 (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177))) (regTwo!4666 (ite c!135393 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))))

(declare-fun bm!49151 () Bool)

(assert (=> bm!49151 (= call!49156 call!49155)))

(assert (= (and d!260268 c!135495) b!831540))

(assert (= (and d!260268 (not c!135495)) b!831541))

(assert (= (and b!831541 c!135494) b!831537))

(assert (= (and b!831541 (not c!135494)) b!831542))

(assert (= (and b!831542 c!135493) b!831536))

(assert (= (and b!831542 (not c!135493)) b!831538))

(assert (= (and b!831538 c!135496) b!831539))

(assert (= (and b!831538 (not c!135496)) b!831543))

(assert (= (or b!831539 b!831543) bm!49149))

(assert (= (or b!831539 b!831543) bm!49151))

(assert (= (or b!831539 b!831543) bm!49148))

(assert (= (or b!831536 bm!49151) bm!49150))

(declare-fun m!1068001 () Bool)

(assert (=> bm!49148 m!1068001))

(declare-fun m!1068003 () Bool)

(assert (=> bm!49149 m!1068003))

(declare-fun m!1068005 () Bool)

(assert (=> bm!49150 m!1068005))

(assert (=> bm!49054 d!260268))

(declare-fun d!260270 () Bool)

(assert (=> d!260270 (= (nullable!528 (reg!2406 (regOne!4666 r!27177))) (nullableFct!166 (reg!2406 (regOne!4666 r!27177))))))

(declare-fun bs!229661 () Bool)

(assert (= bs!229661 d!260270))

(declare-fun m!1068007 () Bool)

(assert (=> bs!229661 m!1068007))

(assert (=> b!831131 d!260270))

(declare-fun bm!49152 () Bool)

(declare-fun call!49157 () Bool)

(declare-fun c!135498 () Bool)

(assert (=> bm!49152 (= call!49157 (validRegex!630 (ite c!135498 (regTwo!4667 (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))) (regOne!4666 (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))))

(declare-fun b!831544 () Bool)

(declare-fun res!381570 () Bool)

(declare-fun e!547716 () Bool)

(assert (=> b!831544 (=> (not res!381570) (not e!547716))))

(declare-fun call!49159 () Bool)

(assert (=> b!831544 (= res!381570 call!49159)))

(declare-fun e!547717 () Bool)

(assert (=> b!831544 (= e!547717 e!547716)))

(declare-fun b!831545 () Bool)

(assert (=> b!831545 (= e!547716 call!49157)))

(declare-fun b!831546 () Bool)

(declare-fun res!381569 () Bool)

(declare-fun e!547715 () Bool)

(assert (=> b!831546 (=> res!381569 e!547715)))

(assert (=> b!831546 (= res!381569 (not ((_ is Concat!3808) (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))

(assert (=> b!831546 (= e!547717 e!547715)))

(declare-fun b!831547 () Bool)

(declare-fun e!547721 () Bool)

(assert (=> b!831547 (= e!547721 call!49159)))

(declare-fun b!831548 () Bool)

(assert (=> b!831548 (= e!547715 e!547721)))

(declare-fun res!381566 () Bool)

(assert (=> b!831548 (=> (not res!381566) (not e!547721))))

(assert (=> b!831548 (= res!381566 call!49157)))

(declare-fun b!831549 () Bool)

(declare-fun e!547719 () Bool)

(assert (=> b!831549 (= e!547719 e!547717)))

(assert (=> b!831549 (= c!135498 ((_ is Union!2077) (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))

(declare-fun d!260272 () Bool)

(declare-fun res!381567 () Bool)

(declare-fun e!547718 () Bool)

(assert (=> d!260272 (=> res!381567 e!547718)))

(assert (=> d!260272 (= res!381567 ((_ is ElementMatch!2077) (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))

(assert (=> d!260272 (= (validRegex!630 (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))) e!547718)))

(declare-fun b!831550 () Bool)

(assert (=> b!831550 (= e!547718 e!547719)))

(declare-fun c!135497 () Bool)

(assert (=> b!831550 (= c!135497 ((_ is Star!2077) (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))

(declare-fun b!831551 () Bool)

(declare-fun e!547720 () Bool)

(assert (=> b!831551 (= e!547719 e!547720)))

(declare-fun res!381568 () Bool)

(assert (=> b!831551 (= res!381568 (not (nullable!528 (reg!2406 (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))))))))

(assert (=> b!831551 (=> (not res!381568) (not e!547720))))

(declare-fun b!831552 () Bool)

(declare-fun call!49158 () Bool)

(assert (=> b!831552 (= e!547720 call!49158)))

(declare-fun bm!49153 () Bool)

(assert (=> bm!49153 (= call!49159 call!49158)))

(declare-fun bm!49154 () Bool)

(assert (=> bm!49154 (= call!49158 (validRegex!630 (ite c!135497 (reg!2406 (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))) (ite c!135498 (regOne!4667 (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177))) (regTwo!4666 (ite c!135362 (regTwo!4667 r!27177) (regOne!4666 r!27177)))))))))

(assert (= (and d!260272 (not res!381567)) b!831550))

(assert (= (and b!831550 c!135497) b!831551))

(assert (= (and b!831550 (not c!135497)) b!831549))

(assert (= (and b!831551 res!381568) b!831552))

(assert (= (and b!831549 c!135498) b!831544))

(assert (= (and b!831549 (not c!135498)) b!831546))

(assert (= (and b!831544 res!381570) b!831545))

(assert (= (and b!831546 (not res!381569)) b!831548))

(assert (= (and b!831548 res!381566) b!831547))

(assert (= (or b!831544 b!831547) bm!49153))

(assert (= (or b!831545 b!831548) bm!49152))

(assert (= (or b!831552 bm!49153) bm!49154))

(declare-fun m!1068009 () Bool)

(assert (=> bm!49152 m!1068009))

(declare-fun m!1068011 () Bool)

(assert (=> b!831551 m!1068011))

(declare-fun m!1068013 () Bool)

(assert (=> bm!49154 m!1068013))

(assert (=> bm!49023 d!260272))

(declare-fun d!260274 () Bool)

(declare-fun lt!317757 () Bool)

(assert (=> d!260274 (= lt!317757 (select (content!1316 (t!93195 (firstChars!48 (regOne!4666 r!27177)))) c!13916))))

(declare-fun e!547723 () Bool)

(assert (=> d!260274 (= lt!317757 e!547723)))

(declare-fun res!381571 () Bool)

(assert (=> d!260274 (=> (not res!381571) (not e!547723))))

(assert (=> d!260274 (= res!381571 ((_ is Cons!8887) (t!93195 (firstChars!48 (regOne!4666 r!27177)))))))

(assert (=> d!260274 (= (contains!1668 (t!93195 (firstChars!48 (regOne!4666 r!27177))) c!13916) lt!317757)))

(declare-fun b!831553 () Bool)

(declare-fun e!547722 () Bool)

(assert (=> b!831553 (= e!547723 e!547722)))

(declare-fun res!381572 () Bool)

(assert (=> b!831553 (=> res!381572 e!547722)))

(assert (=> b!831553 (= res!381572 (= (h!14288 (t!93195 (firstChars!48 (regOne!4666 r!27177)))) c!13916))))

(declare-fun b!831554 () Bool)

(assert (=> b!831554 (= e!547722 (contains!1668 (t!93195 (t!93195 (firstChars!48 (regOne!4666 r!27177)))) c!13916))))

(assert (= (and d!260274 res!381571) b!831553))

(assert (= (and b!831553 (not res!381572)) b!831554))

(assert (=> d!260274 m!1067959))

(declare-fun m!1068015 () Bool)

(assert (=> d!260274 m!1068015))

(declare-fun m!1068017 () Bool)

(assert (=> b!831554 m!1068017))

(assert (=> b!831311 d!260274))

(declare-fun b!831558 () Bool)

(declare-fun e!547724 () Bool)

(declare-fun tp!260337 () Bool)

(declare-fun tp!260339 () Bool)

(assert (=> b!831558 (= e!547724 (and tp!260337 tp!260339))))

(declare-fun b!831555 () Bool)

(assert (=> b!831555 (= e!547724 tp_is_empty!3877)))

(declare-fun b!831557 () Bool)

(declare-fun tp!260335 () Bool)

(assert (=> b!831557 (= e!547724 tp!260335)))

(assert (=> b!831344 (= tp!260288 e!547724)))

(declare-fun b!831556 () Bool)

(declare-fun tp!260336 () Bool)

(declare-fun tp!260338 () Bool)

(assert (=> b!831556 (= e!547724 (and tp!260336 tp!260338))))

(assert (= (and b!831344 ((_ is ElementMatch!2077) (regOne!4666 (regOne!4667 r!27177)))) b!831555))

(assert (= (and b!831344 ((_ is Concat!3808) (regOne!4666 (regOne!4667 r!27177)))) b!831556))

(assert (= (and b!831344 ((_ is Star!2077) (regOne!4666 (regOne!4667 r!27177)))) b!831557))

(assert (= (and b!831344 ((_ is Union!2077) (regOne!4666 (regOne!4667 r!27177)))) b!831558))

(declare-fun b!831562 () Bool)

(declare-fun e!547725 () Bool)

(declare-fun tp!260342 () Bool)

(declare-fun tp!260344 () Bool)

(assert (=> b!831562 (= e!547725 (and tp!260342 tp!260344))))

(declare-fun b!831559 () Bool)

(assert (=> b!831559 (= e!547725 tp_is_empty!3877)))

(declare-fun b!831561 () Bool)

(declare-fun tp!260340 () Bool)

(assert (=> b!831561 (= e!547725 tp!260340)))

(assert (=> b!831344 (= tp!260291 e!547725)))

(declare-fun b!831560 () Bool)

(declare-fun tp!260341 () Bool)

(declare-fun tp!260343 () Bool)

(assert (=> b!831560 (= e!547725 (and tp!260341 tp!260343))))

(assert (= (and b!831344 ((_ is ElementMatch!2077) (regTwo!4666 (regOne!4667 r!27177)))) b!831559))

(assert (= (and b!831344 ((_ is Concat!3808) (regTwo!4666 (regOne!4667 r!27177)))) b!831560))

(assert (= (and b!831344 ((_ is Star!2077) (regTwo!4666 (regOne!4667 r!27177)))) b!831561))

(assert (= (and b!831344 ((_ is Union!2077) (regTwo!4666 (regOne!4667 r!27177)))) b!831562))

(declare-fun b!831566 () Bool)

(declare-fun e!547726 () Bool)

(declare-fun tp!260347 () Bool)

(declare-fun tp!260349 () Bool)

(assert (=> b!831566 (= e!547726 (and tp!260347 tp!260349))))

(declare-fun b!831563 () Bool)

(assert (=> b!831563 (= e!547726 tp_is_empty!3877)))

(declare-fun b!831565 () Bool)

(declare-fun tp!260345 () Bool)

(assert (=> b!831565 (= e!547726 tp!260345)))

(assert (=> b!831373 (= tp!260320 e!547726)))

(declare-fun b!831564 () Bool)

(declare-fun tp!260346 () Bool)

(declare-fun tp!260348 () Bool)

(assert (=> b!831564 (= e!547726 (and tp!260346 tp!260348))))

(assert (= (and b!831373 ((_ is ElementMatch!2077) (regOne!4667 (regOne!4666 r!27177)))) b!831563))

(assert (= (and b!831373 ((_ is Concat!3808) (regOne!4667 (regOne!4666 r!27177)))) b!831564))

(assert (= (and b!831373 ((_ is Star!2077) (regOne!4667 (regOne!4666 r!27177)))) b!831565))

(assert (= (and b!831373 ((_ is Union!2077) (regOne!4667 (regOne!4666 r!27177)))) b!831566))

(declare-fun b!831570 () Bool)

(declare-fun e!547727 () Bool)

(declare-fun tp!260352 () Bool)

(declare-fun tp!260354 () Bool)

(assert (=> b!831570 (= e!547727 (and tp!260352 tp!260354))))

(declare-fun b!831567 () Bool)

(assert (=> b!831567 (= e!547727 tp_is_empty!3877)))

(declare-fun b!831569 () Bool)

(declare-fun tp!260350 () Bool)

(assert (=> b!831569 (= e!547727 tp!260350)))

(assert (=> b!831373 (= tp!260324 e!547727)))

(declare-fun b!831568 () Bool)

(declare-fun tp!260351 () Bool)

(declare-fun tp!260353 () Bool)

(assert (=> b!831568 (= e!547727 (and tp!260351 tp!260353))))

(assert (= (and b!831373 ((_ is ElementMatch!2077) (regTwo!4667 (regOne!4666 r!27177)))) b!831567))

(assert (= (and b!831373 ((_ is Concat!3808) (regTwo!4667 (regOne!4666 r!27177)))) b!831568))

(assert (= (and b!831373 ((_ is Star!2077) (regTwo!4667 (regOne!4666 r!27177)))) b!831569))

(assert (= (and b!831373 ((_ is Union!2077) (regTwo!4667 (regOne!4666 r!27177)))) b!831570))

(declare-fun b!831574 () Bool)

(declare-fun e!547728 () Bool)

(declare-fun tp!260357 () Bool)

(declare-fun tp!260359 () Bool)

(assert (=> b!831574 (= e!547728 (and tp!260357 tp!260359))))

(declare-fun b!831571 () Bool)

(assert (=> b!831571 (= e!547728 tp_is_empty!3877)))

(declare-fun b!831573 () Bool)

(declare-fun tp!260355 () Bool)

(assert (=> b!831573 (= e!547728 tp!260355)))

(assert (=> b!831364 (= tp!260310 e!547728)))

(declare-fun b!831572 () Bool)

(declare-fun tp!260356 () Bool)

(declare-fun tp!260358 () Bool)

(assert (=> b!831572 (= e!547728 (and tp!260356 tp!260358))))

(assert (= (and b!831364 ((_ is ElementMatch!2077) (regOne!4667 (reg!2406 r!27177)))) b!831571))

(assert (= (and b!831364 ((_ is Concat!3808) (regOne!4667 (reg!2406 r!27177)))) b!831572))

(assert (= (and b!831364 ((_ is Star!2077) (regOne!4667 (reg!2406 r!27177)))) b!831573))

(assert (= (and b!831364 ((_ is Union!2077) (regOne!4667 (reg!2406 r!27177)))) b!831574))

(declare-fun b!831578 () Bool)

(declare-fun e!547729 () Bool)

(declare-fun tp!260362 () Bool)

(declare-fun tp!260364 () Bool)

(assert (=> b!831578 (= e!547729 (and tp!260362 tp!260364))))

(declare-fun b!831575 () Bool)

(assert (=> b!831575 (= e!547729 tp_is_empty!3877)))

(declare-fun b!831577 () Bool)

(declare-fun tp!260360 () Bool)

(assert (=> b!831577 (= e!547729 tp!260360)))

(assert (=> b!831364 (= tp!260313 e!547729)))

(declare-fun b!831576 () Bool)

(declare-fun tp!260361 () Bool)

(declare-fun tp!260363 () Bool)

(assert (=> b!831576 (= e!547729 (and tp!260361 tp!260363))))

(assert (= (and b!831364 ((_ is ElementMatch!2077) (regTwo!4667 (reg!2406 r!27177)))) b!831575))

(assert (= (and b!831364 ((_ is Concat!3808) (regTwo!4667 (reg!2406 r!27177)))) b!831576))

(assert (= (and b!831364 ((_ is Star!2077) (regTwo!4667 (reg!2406 r!27177)))) b!831577))

(assert (= (and b!831364 ((_ is Union!2077) (regTwo!4667 (reg!2406 r!27177)))) b!831578))

(declare-fun b!831582 () Bool)

(declare-fun e!547730 () Bool)

(declare-fun tp!260367 () Bool)

(declare-fun tp!260369 () Bool)

(assert (=> b!831582 (= e!547730 (and tp!260367 tp!260369))))

(declare-fun b!831579 () Bool)

(assert (=> b!831579 (= e!547730 tp_is_empty!3877)))

(declare-fun b!831581 () Bool)

(declare-fun tp!260365 () Bool)

(assert (=> b!831581 (= e!547730 tp!260365)))

(assert (=> b!831355 (= tp!260296 e!547730)))

(declare-fun b!831580 () Bool)

(declare-fun tp!260366 () Bool)

(declare-fun tp!260368 () Bool)

(assert (=> b!831580 (= e!547730 (and tp!260366 tp!260368))))

(assert (= (and b!831355 ((_ is ElementMatch!2077) (reg!2406 (regTwo!4667 r!27177)))) b!831579))

(assert (= (and b!831355 ((_ is Concat!3808) (reg!2406 (regTwo!4667 r!27177)))) b!831580))

(assert (= (and b!831355 ((_ is Star!2077) (reg!2406 (regTwo!4667 r!27177)))) b!831581))

(assert (= (and b!831355 ((_ is Union!2077) (reg!2406 (regTwo!4667 r!27177)))) b!831582))

(declare-fun b!831586 () Bool)

(declare-fun e!547731 () Bool)

(declare-fun tp!260372 () Bool)

(declare-fun tp!260374 () Bool)

(assert (=> b!831586 (= e!547731 (and tp!260372 tp!260374))))

(declare-fun b!831583 () Bool)

(assert (=> b!831583 (= e!547731 tp_is_empty!3877)))

(declare-fun b!831585 () Bool)

(declare-fun tp!260370 () Bool)

(assert (=> b!831585 (= e!547731 tp!260370)))

(assert (=> b!831346 (= tp!260285 e!547731)))

(declare-fun b!831584 () Bool)

(declare-fun tp!260371 () Bool)

(declare-fun tp!260373 () Bool)

(assert (=> b!831584 (= e!547731 (and tp!260371 tp!260373))))

(assert (= (and b!831346 ((_ is ElementMatch!2077) (reg!2406 (regOne!4667 r!27177)))) b!831583))

(assert (= (and b!831346 ((_ is Concat!3808) (reg!2406 (regOne!4667 r!27177)))) b!831584))

(assert (= (and b!831346 ((_ is Star!2077) (reg!2406 (regOne!4667 r!27177)))) b!831585))

(assert (= (and b!831346 ((_ is Union!2077) (reg!2406 (regOne!4667 r!27177)))) b!831586))

(declare-fun b!831590 () Bool)

(declare-fun e!547732 () Bool)

(declare-fun tp!260377 () Bool)

(declare-fun tp!260379 () Bool)

(assert (=> b!831590 (= e!547732 (and tp!260377 tp!260379))))

(declare-fun b!831587 () Bool)

(assert (=> b!831587 (= e!547732 tp_is_empty!3877)))

(declare-fun b!831589 () Bool)

(declare-fun tp!260375 () Bool)

(assert (=> b!831589 (= e!547732 tp!260375)))

(assert (=> b!831360 (= tp!260308 e!547732)))

(declare-fun b!831588 () Bool)

(declare-fun tp!260376 () Bool)

(declare-fun tp!260378 () Bool)

(assert (=> b!831588 (= e!547732 (and tp!260376 tp!260378))))

(assert (= (and b!831360 ((_ is ElementMatch!2077) (regOne!4666 (reg!2406 r!27177)))) b!831587))

(assert (= (and b!831360 ((_ is Concat!3808) (regOne!4666 (reg!2406 r!27177)))) b!831588))

(assert (= (and b!831360 ((_ is Star!2077) (regOne!4666 (reg!2406 r!27177)))) b!831589))

(assert (= (and b!831360 ((_ is Union!2077) (regOne!4666 (reg!2406 r!27177)))) b!831590))

(declare-fun b!831594 () Bool)

(declare-fun e!547733 () Bool)

(declare-fun tp!260382 () Bool)

(declare-fun tp!260384 () Bool)

(assert (=> b!831594 (= e!547733 (and tp!260382 tp!260384))))

(declare-fun b!831591 () Bool)

(assert (=> b!831591 (= e!547733 tp_is_empty!3877)))

(declare-fun b!831593 () Bool)

(declare-fun tp!260380 () Bool)

(assert (=> b!831593 (= e!547733 tp!260380)))

(assert (=> b!831360 (= tp!260311 e!547733)))

(declare-fun b!831592 () Bool)

(declare-fun tp!260381 () Bool)

(declare-fun tp!260383 () Bool)

(assert (=> b!831592 (= e!547733 (and tp!260381 tp!260383))))

(assert (= (and b!831360 ((_ is ElementMatch!2077) (regTwo!4666 (reg!2406 r!27177)))) b!831591))

(assert (= (and b!831360 ((_ is Concat!3808) (regTwo!4666 (reg!2406 r!27177)))) b!831592))

(assert (= (and b!831360 ((_ is Star!2077) (regTwo!4666 (reg!2406 r!27177)))) b!831593))

(assert (= (and b!831360 ((_ is Union!2077) (regTwo!4666 (reg!2406 r!27177)))) b!831594))

(declare-fun b!831598 () Bool)

(declare-fun e!547734 () Bool)

(declare-fun tp!260387 () Bool)

(declare-fun tp!260389 () Bool)

(assert (=> b!831598 (= e!547734 (and tp!260387 tp!260389))))

(declare-fun b!831595 () Bool)

(assert (=> b!831595 (= e!547734 tp_is_empty!3877)))

(declare-fun b!831597 () Bool)

(declare-fun tp!260385 () Bool)

(assert (=> b!831597 (= e!547734 tp!260385)))

(assert (=> b!831380 (= tp!260330 e!547734)))

(declare-fun b!831596 () Bool)

(declare-fun tp!260386 () Bool)

(declare-fun tp!260388 () Bool)

(assert (=> b!831596 (= e!547734 (and tp!260386 tp!260388))))

(assert (= (and b!831380 ((_ is ElementMatch!2077) (regOne!4667 (regTwo!4666 r!27177)))) b!831595))

(assert (= (and b!831380 ((_ is Concat!3808) (regOne!4667 (regTwo!4666 r!27177)))) b!831596))

(assert (= (and b!831380 ((_ is Star!2077) (regOne!4667 (regTwo!4666 r!27177)))) b!831597))

(assert (= (and b!831380 ((_ is Union!2077) (regOne!4667 (regTwo!4666 r!27177)))) b!831598))

(declare-fun b!831602 () Bool)

(declare-fun e!547735 () Bool)

(declare-fun tp!260392 () Bool)

(declare-fun tp!260394 () Bool)

(assert (=> b!831602 (= e!547735 (and tp!260392 tp!260394))))

(declare-fun b!831599 () Bool)

(assert (=> b!831599 (= e!547735 tp_is_empty!3877)))

(declare-fun b!831601 () Bool)

(declare-fun tp!260390 () Bool)

(assert (=> b!831601 (= e!547735 tp!260390)))

(assert (=> b!831380 (= tp!260333 e!547735)))

(declare-fun b!831600 () Bool)

(declare-fun tp!260391 () Bool)

(declare-fun tp!260393 () Bool)

(assert (=> b!831600 (= e!547735 (and tp!260391 tp!260393))))

(assert (= (and b!831380 ((_ is ElementMatch!2077) (regTwo!4667 (regTwo!4666 r!27177)))) b!831599))

(assert (= (and b!831380 ((_ is Concat!3808) (regTwo!4667 (regTwo!4666 r!27177)))) b!831600))

(assert (= (and b!831380 ((_ is Star!2077) (regTwo!4667 (regTwo!4666 r!27177)))) b!831601))

(assert (= (and b!831380 ((_ is Union!2077) (regTwo!4667 (regTwo!4666 r!27177)))) b!831602))

(declare-fun b!831606 () Bool)

(declare-fun e!547736 () Bool)

(declare-fun tp!260397 () Bool)

(declare-fun tp!260399 () Bool)

(assert (=> b!831606 (= e!547736 (and tp!260397 tp!260399))))

(declare-fun b!831603 () Bool)

(assert (=> b!831603 (= e!547736 tp_is_empty!3877)))

(declare-fun b!831605 () Bool)

(declare-fun tp!260395 () Bool)

(assert (=> b!831605 (= e!547736 tp!260395)))

(assert (=> b!831371 (= tp!260316 e!547736)))

(declare-fun b!831604 () Bool)

(declare-fun tp!260396 () Bool)

(declare-fun tp!260398 () Bool)

(assert (=> b!831604 (= e!547736 (and tp!260396 tp!260398))))

(assert (= (and b!831371 ((_ is ElementMatch!2077) (reg!2406 (regOne!4666 r!27177)))) b!831603))

(assert (= (and b!831371 ((_ is Concat!3808) (reg!2406 (regOne!4666 r!27177)))) b!831604))

(assert (= (and b!831371 ((_ is Star!2077) (reg!2406 (regOne!4666 r!27177)))) b!831605))

(assert (= (and b!831371 ((_ is Union!2077) (reg!2406 (regOne!4666 r!27177)))) b!831606))

(declare-fun b!831610 () Bool)

(declare-fun e!547737 () Bool)

(declare-fun tp!260402 () Bool)

(declare-fun tp!260404 () Bool)

(assert (=> b!831610 (= e!547737 (and tp!260402 tp!260404))))

(declare-fun b!831607 () Bool)

(assert (=> b!831607 (= e!547737 tp_is_empty!3877)))

(declare-fun b!831609 () Bool)

(declare-fun tp!260400 () Bool)

(assert (=> b!831609 (= e!547737 tp!260400)))

(assert (=> b!831362 (= tp!260305 e!547737)))

(declare-fun b!831608 () Bool)

(declare-fun tp!260401 () Bool)

(declare-fun tp!260403 () Bool)

(assert (=> b!831608 (= e!547737 (and tp!260401 tp!260403))))

(assert (= (and b!831362 ((_ is ElementMatch!2077) (reg!2406 (reg!2406 r!27177)))) b!831607))

(assert (= (and b!831362 ((_ is Concat!3808) (reg!2406 (reg!2406 r!27177)))) b!831608))

(assert (= (and b!831362 ((_ is Star!2077) (reg!2406 (reg!2406 r!27177)))) b!831609))

(assert (= (and b!831362 ((_ is Union!2077) (reg!2406 (reg!2406 r!27177)))) b!831610))

(declare-fun b!831614 () Bool)

(declare-fun e!547738 () Bool)

(declare-fun tp!260407 () Bool)

(declare-fun tp!260409 () Bool)

(assert (=> b!831614 (= e!547738 (and tp!260407 tp!260409))))

(declare-fun b!831611 () Bool)

(assert (=> b!831611 (= e!547738 tp_is_empty!3877)))

(declare-fun b!831613 () Bool)

(declare-fun tp!260405 () Bool)

(assert (=> b!831613 (= e!547738 tp!260405)))

(assert (=> b!831353 (= tp!260299 e!547738)))

(declare-fun b!831612 () Bool)

(declare-fun tp!260406 () Bool)

(declare-fun tp!260408 () Bool)

(assert (=> b!831612 (= e!547738 (and tp!260406 tp!260408))))

(assert (= (and b!831353 ((_ is ElementMatch!2077) (regOne!4666 (regTwo!4667 r!27177)))) b!831611))

(assert (= (and b!831353 ((_ is Concat!3808) (regOne!4666 (regTwo!4667 r!27177)))) b!831612))

(assert (= (and b!831353 ((_ is Star!2077) (regOne!4666 (regTwo!4667 r!27177)))) b!831613))

(assert (= (and b!831353 ((_ is Union!2077) (regOne!4666 (regTwo!4667 r!27177)))) b!831614))

(declare-fun b!831618 () Bool)

(declare-fun e!547739 () Bool)

(declare-fun tp!260412 () Bool)

(declare-fun tp!260414 () Bool)

(assert (=> b!831618 (= e!547739 (and tp!260412 tp!260414))))

(declare-fun b!831615 () Bool)

(assert (=> b!831615 (= e!547739 tp_is_empty!3877)))

(declare-fun b!831617 () Bool)

(declare-fun tp!260410 () Bool)

(assert (=> b!831617 (= e!547739 tp!260410)))

(assert (=> b!831353 (= tp!260302 e!547739)))

(declare-fun b!831616 () Bool)

(declare-fun tp!260411 () Bool)

(declare-fun tp!260413 () Bool)

(assert (=> b!831616 (= e!547739 (and tp!260411 tp!260413))))

(assert (= (and b!831353 ((_ is ElementMatch!2077) (regTwo!4666 (regTwo!4667 r!27177)))) b!831615))

(assert (= (and b!831353 ((_ is Concat!3808) (regTwo!4666 (regTwo!4667 r!27177)))) b!831616))

(assert (= (and b!831353 ((_ is Star!2077) (regTwo!4666 (regTwo!4667 r!27177)))) b!831617))

(assert (= (and b!831353 ((_ is Union!2077) (regTwo!4666 (regTwo!4667 r!27177)))) b!831618))

(declare-fun b!831622 () Bool)

(declare-fun e!547740 () Bool)

(declare-fun tp!260417 () Bool)

(declare-fun tp!260419 () Bool)

(assert (=> b!831622 (= e!547740 (and tp!260417 tp!260419))))

(declare-fun b!831619 () Bool)

(assert (=> b!831619 (= e!547740 tp_is_empty!3877)))

(declare-fun b!831621 () Bool)

(declare-fun tp!260415 () Bool)

(assert (=> b!831621 (= e!547740 tp!260415)))

(assert (=> b!831376 (= tp!260328 e!547740)))

(declare-fun b!831620 () Bool)

(declare-fun tp!260416 () Bool)

(declare-fun tp!260418 () Bool)

(assert (=> b!831620 (= e!547740 (and tp!260416 tp!260418))))

(assert (= (and b!831376 ((_ is ElementMatch!2077) (regOne!4666 (regTwo!4666 r!27177)))) b!831619))

(assert (= (and b!831376 ((_ is Concat!3808) (regOne!4666 (regTwo!4666 r!27177)))) b!831620))

(assert (= (and b!831376 ((_ is Star!2077) (regOne!4666 (regTwo!4666 r!27177)))) b!831621))

(assert (= (and b!831376 ((_ is Union!2077) (regOne!4666 (regTwo!4666 r!27177)))) b!831622))

(declare-fun b!831626 () Bool)

(declare-fun e!547741 () Bool)

(declare-fun tp!260422 () Bool)

(declare-fun tp!260424 () Bool)

(assert (=> b!831626 (= e!547741 (and tp!260422 tp!260424))))

(declare-fun b!831623 () Bool)

(assert (=> b!831623 (= e!547741 tp_is_empty!3877)))

(declare-fun b!831625 () Bool)

(declare-fun tp!260420 () Bool)

(assert (=> b!831625 (= e!547741 tp!260420)))

(assert (=> b!831376 (= tp!260331 e!547741)))

(declare-fun b!831624 () Bool)

(declare-fun tp!260421 () Bool)

(declare-fun tp!260423 () Bool)

(assert (=> b!831624 (= e!547741 (and tp!260421 tp!260423))))

(assert (= (and b!831376 ((_ is ElementMatch!2077) (regTwo!4666 (regTwo!4666 r!27177)))) b!831623))

(assert (= (and b!831376 ((_ is Concat!3808) (regTwo!4666 (regTwo!4666 r!27177)))) b!831624))

(assert (= (and b!831376 ((_ is Star!2077) (regTwo!4666 (regTwo!4666 r!27177)))) b!831625))

(assert (= (and b!831376 ((_ is Union!2077) (regTwo!4666 (regTwo!4666 r!27177)))) b!831626))

(declare-fun b!831630 () Bool)

(declare-fun e!547742 () Bool)

(declare-fun tp!260427 () Bool)

(declare-fun tp!260429 () Bool)

(assert (=> b!831630 (= e!547742 (and tp!260427 tp!260429))))

(declare-fun b!831627 () Bool)

(assert (=> b!831627 (= e!547742 tp_is_empty!3877)))

(declare-fun b!831629 () Bool)

(declare-fun tp!260425 () Bool)

(assert (=> b!831629 (= e!547742 tp!260425)))

(assert (=> b!831378 (= tp!260325 e!547742)))

(declare-fun b!831628 () Bool)

(declare-fun tp!260426 () Bool)

(declare-fun tp!260428 () Bool)

(assert (=> b!831628 (= e!547742 (and tp!260426 tp!260428))))

(assert (= (and b!831378 ((_ is ElementMatch!2077) (reg!2406 (regTwo!4666 r!27177)))) b!831627))

(assert (= (and b!831378 ((_ is Concat!3808) (reg!2406 (regTwo!4666 r!27177)))) b!831628))

(assert (= (and b!831378 ((_ is Star!2077) (reg!2406 (regTwo!4666 r!27177)))) b!831629))

(assert (= (and b!831378 ((_ is Union!2077) (reg!2406 (regTwo!4666 r!27177)))) b!831630))

(declare-fun b!831634 () Bool)

(declare-fun e!547743 () Bool)

(declare-fun tp!260432 () Bool)

(declare-fun tp!260434 () Bool)

(assert (=> b!831634 (= e!547743 (and tp!260432 tp!260434))))

(declare-fun b!831631 () Bool)

(assert (=> b!831631 (= e!547743 tp_is_empty!3877)))

(declare-fun b!831633 () Bool)

(declare-fun tp!260430 () Bool)

(assert (=> b!831633 (= e!547743 tp!260430)))

(assert (=> b!831369 (= tp!260319 e!547743)))

(declare-fun b!831632 () Bool)

(declare-fun tp!260431 () Bool)

(declare-fun tp!260433 () Bool)

(assert (=> b!831632 (= e!547743 (and tp!260431 tp!260433))))

(assert (= (and b!831369 ((_ is ElementMatch!2077) (regOne!4666 (regOne!4666 r!27177)))) b!831631))

(assert (= (and b!831369 ((_ is Concat!3808) (regOne!4666 (regOne!4666 r!27177)))) b!831632))

(assert (= (and b!831369 ((_ is Star!2077) (regOne!4666 (regOne!4666 r!27177)))) b!831633))

(assert (= (and b!831369 ((_ is Union!2077) (regOne!4666 (regOne!4666 r!27177)))) b!831634))

(declare-fun b!831638 () Bool)

(declare-fun e!547744 () Bool)

(declare-fun tp!260437 () Bool)

(declare-fun tp!260439 () Bool)

(assert (=> b!831638 (= e!547744 (and tp!260437 tp!260439))))

(declare-fun b!831635 () Bool)

(assert (=> b!831635 (= e!547744 tp_is_empty!3877)))

(declare-fun b!831637 () Bool)

(declare-fun tp!260435 () Bool)

(assert (=> b!831637 (= e!547744 tp!260435)))

(assert (=> b!831369 (= tp!260322 e!547744)))

(declare-fun b!831636 () Bool)

(declare-fun tp!260436 () Bool)

(declare-fun tp!260438 () Bool)

(assert (=> b!831636 (= e!547744 (and tp!260436 tp!260438))))

(assert (= (and b!831369 ((_ is ElementMatch!2077) (regTwo!4666 (regOne!4666 r!27177)))) b!831635))

(assert (= (and b!831369 ((_ is Concat!3808) (regTwo!4666 (regOne!4666 r!27177)))) b!831636))

(assert (= (and b!831369 ((_ is Star!2077) (regTwo!4666 (regOne!4666 r!27177)))) b!831637))

(assert (= (and b!831369 ((_ is Union!2077) (regTwo!4666 (regOne!4666 r!27177)))) b!831638))

(declare-fun b!831642 () Bool)

(declare-fun e!547745 () Bool)

(declare-fun tp!260442 () Bool)

(declare-fun tp!260444 () Bool)

(assert (=> b!831642 (= e!547745 (and tp!260442 tp!260444))))

(declare-fun b!831639 () Bool)

(assert (=> b!831639 (= e!547745 tp_is_empty!3877)))

(declare-fun b!831641 () Bool)

(declare-fun tp!260440 () Bool)

(assert (=> b!831641 (= e!547745 tp!260440)))

(assert (=> b!831357 (= tp!260300 e!547745)))

(declare-fun b!831640 () Bool)

(declare-fun tp!260441 () Bool)

(declare-fun tp!260443 () Bool)

(assert (=> b!831640 (= e!547745 (and tp!260441 tp!260443))))

(assert (= (and b!831357 ((_ is ElementMatch!2077) (regOne!4667 (regTwo!4667 r!27177)))) b!831639))

(assert (= (and b!831357 ((_ is Concat!3808) (regOne!4667 (regTwo!4667 r!27177)))) b!831640))

(assert (= (and b!831357 ((_ is Star!2077) (regOne!4667 (regTwo!4667 r!27177)))) b!831641))

(assert (= (and b!831357 ((_ is Union!2077) (regOne!4667 (regTwo!4667 r!27177)))) b!831642))

(declare-fun b!831646 () Bool)

(declare-fun e!547746 () Bool)

(declare-fun tp!260447 () Bool)

(declare-fun tp!260449 () Bool)

(assert (=> b!831646 (= e!547746 (and tp!260447 tp!260449))))

(declare-fun b!831643 () Bool)

(assert (=> b!831643 (= e!547746 tp_is_empty!3877)))

(declare-fun b!831645 () Bool)

(declare-fun tp!260445 () Bool)

(assert (=> b!831645 (= e!547746 tp!260445)))

(assert (=> b!831357 (= tp!260304 e!547746)))

(declare-fun b!831644 () Bool)

(declare-fun tp!260446 () Bool)

(declare-fun tp!260448 () Bool)

(assert (=> b!831644 (= e!547746 (and tp!260446 tp!260448))))

(assert (= (and b!831357 ((_ is ElementMatch!2077) (regTwo!4667 (regTwo!4667 r!27177)))) b!831643))

(assert (= (and b!831357 ((_ is Concat!3808) (regTwo!4667 (regTwo!4667 r!27177)))) b!831644))

(assert (= (and b!831357 ((_ is Star!2077) (regTwo!4667 (regTwo!4667 r!27177)))) b!831645))

(assert (= (and b!831357 ((_ is Union!2077) (regTwo!4667 (regTwo!4667 r!27177)))) b!831646))

(declare-fun b!831650 () Bool)

(declare-fun e!547747 () Bool)

(declare-fun tp!260452 () Bool)

(declare-fun tp!260454 () Bool)

(assert (=> b!831650 (= e!547747 (and tp!260452 tp!260454))))

(declare-fun b!831647 () Bool)

(assert (=> b!831647 (= e!547747 tp_is_empty!3877)))

(declare-fun b!831649 () Bool)

(declare-fun tp!260450 () Bool)

(assert (=> b!831649 (= e!547747 tp!260450)))

(assert (=> b!831348 (= tp!260290 e!547747)))

(declare-fun b!831648 () Bool)

(declare-fun tp!260451 () Bool)

(declare-fun tp!260453 () Bool)

(assert (=> b!831648 (= e!547747 (and tp!260451 tp!260453))))

(assert (= (and b!831348 ((_ is ElementMatch!2077) (regOne!4667 (regOne!4667 r!27177)))) b!831647))

(assert (= (and b!831348 ((_ is Concat!3808) (regOne!4667 (regOne!4667 r!27177)))) b!831648))

(assert (= (and b!831348 ((_ is Star!2077) (regOne!4667 (regOne!4667 r!27177)))) b!831649))

(assert (= (and b!831348 ((_ is Union!2077) (regOne!4667 (regOne!4667 r!27177)))) b!831650))

(declare-fun b!831654 () Bool)

(declare-fun e!547748 () Bool)

(declare-fun tp!260457 () Bool)

(declare-fun tp!260459 () Bool)

(assert (=> b!831654 (= e!547748 (and tp!260457 tp!260459))))

(declare-fun b!831651 () Bool)

(assert (=> b!831651 (= e!547748 tp_is_empty!3877)))

(declare-fun b!831653 () Bool)

(declare-fun tp!260455 () Bool)

(assert (=> b!831653 (= e!547748 tp!260455)))

(assert (=> b!831348 (= tp!260293 e!547748)))

(declare-fun b!831652 () Bool)

(declare-fun tp!260456 () Bool)

(declare-fun tp!260458 () Bool)

(assert (=> b!831652 (= e!547748 (and tp!260456 tp!260458))))

(assert (= (and b!831348 ((_ is ElementMatch!2077) (regTwo!4667 (regOne!4667 r!27177)))) b!831651))

(assert (= (and b!831348 ((_ is Concat!3808) (regTwo!4667 (regOne!4667 r!27177)))) b!831652))

(assert (= (and b!831348 ((_ is Star!2077) (regTwo!4667 (regOne!4667 r!27177)))) b!831653))

(assert (= (and b!831348 ((_ is Union!2077) (regTwo!4667 (regOne!4667 r!27177)))) b!831654))

(check-sat (not b!831584) (not b!831638) (not b!831577) (not bm!49147) (not b!831554) (not b!831455) (not b!831654) (not d!260270) (not b!831573) (not bm!49108) (not b!831445) (not b!831516) (not b!831566) (not b!831483) (not b!831586) (not b!831551) (not b!831601) (not bm!49134) (not bm!49128) (not bm!49146) (not b!831600) (not bm!49118) (not b!831629) (not b!831582) (not b!831641) (not b!831646) (not bm!49135) (not b!831645) (not bm!49148) (not b!831652) (not bm!49117) (not d!260226) (not b!831522) (not d!260236) (not b!831614) (not b!831509) (not b!831525) (not b!831636) (not b!831588) (not bm!49106) (not bm!49136) (not b!831610) (not d!260248) (not d!260238) (not b!831569) (not b!831620) (not b!831604) (not b!831521) (not b!831608) (not b!831592) (not b!831594) (not b!831628) (not b!831598) (not b!831625) (not b!831565) (not bm!49121) (not b!831576) (not b!831562) (not b!831634) (not bm!49111) (not b!831630) (not b!831650) (not b!831491) (not b!831605) (not b!831649) tp_is_empty!3877 (not b!831621) (not b!831515) (not b!831387) (not b!831596) (not b!831593) (not bm!49123) (not d!260218) (not bm!49129) (not b!831560) (not bm!49149) (not d!260258) (not b!831606) (not bm!49124) (not b!831648) (not d!260232) (not b!831433) (not bm!49114) (not b!831617) (not b!831589) (not bm!49122) (not b!831640) (not bm!49138) (not b!831653) (not b!831642) (not bm!49142) (not b!831616) (not b!831533) (not bm!49113) (not b!831612) (not b!831578) (not bm!49109) (not b!831581) (not b!831644) (not bm!49154) (not b!831460) (not d!260262) (not b!831632) (not b!831626) (not b!831602) (not b!831613) (not b!831618) (not b!831590) (not b!831572) (not bm!49132) (not b!831424) (not d!260246) (not b!831624) (not d!260274) (not b!831622) (not d!260240) (not b!831637) (not bm!49150) (not bm!49119) (not b!831458) (not bm!49107) (not bm!49141) (not b!831461) (not b!831609) (not b!831564) (not b!831633) (not b!831557) (not bm!49105) (not b!831446) (not b!831478) (not b!831558) (not b!831568) (not b!831481) (not b!831570) (not b!831556) (not bm!49126) (not bm!49143) (not bm!49152) (not b!831585) (not b!831574) (not b!831519) (not b!831580) (not b!831597) (not b!831513) (not b!831561) (not bm!49133))
(check-sat)
