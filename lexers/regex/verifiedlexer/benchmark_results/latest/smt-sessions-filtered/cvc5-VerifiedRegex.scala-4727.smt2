; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244478 () Bool)

(assert start!244478)

(declare-fun b!2505431 () Bool)

(declare-fun e!1588583 () Bool)

(declare-datatypes ((C!15014 0))(
  ( (C!15015 (val!9159 Int)) )
))
(declare-datatypes ((Regex!7428 0))(
  ( (ElementMatch!7428 (c!398896 C!15014)) (Concat!12124 (regOne!15368 Regex!7428) (regTwo!15368 Regex!7428)) (EmptyExpr!7428) (Star!7428 (reg!7757 Regex!7428)) (EmptyLang!7428) (Union!7428 (regOne!15369 Regex!7428) (regTwo!15369 Regex!7428)) )
))
(declare-fun r!27340 () Regex!7428)

(declare-fun validRegex!3054 (Regex!7428) Bool)

(assert (=> b!2505431 (= e!1588583 (validRegex!3054 (regTwo!15368 r!27340)))))

(declare-fun b!2505432 () Bool)

(declare-fun e!1588588 () Bool)

(declare-fun e!1588584 () Bool)

(assert (=> b!2505432 (= e!1588588 (not e!1588584))))

(declare-fun res!1059272 () Bool)

(assert (=> b!2505432 (=> res!1059272 e!1588584)))

(declare-fun lt!896571 () Bool)

(assert (=> b!2505432 (= res!1059272 (not lt!896571))))

(declare-fun e!1588587 () Bool)

(assert (=> b!2505432 e!1588587))

(declare-fun res!1059273 () Bool)

(assert (=> b!2505432 (=> res!1059273 e!1588587)))

(assert (=> b!2505432 (= res!1059273 lt!896571)))

(declare-fun lt!896569 () Regex!7428)

(declare-datatypes ((List!29493 0))(
  ( (Nil!29393) (Cons!29393 (h!34813 C!15014) (t!211192 List!29493)) )
))
(declare-fun tl!4068 () List!29493)

(declare-fun matchR!3431 (Regex!7428 List!29493) Bool)

(assert (=> b!2505432 (= lt!896571 (matchR!3431 lt!896569 tl!4068))))

(declare-datatypes ((Unit!43113 0))(
  ( (Unit!43114) )
))
(declare-fun lt!896570 () Unit!43113)

(declare-fun lt!896575 () Regex!7428)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!123 (Regex!7428 Regex!7428 List!29493) Unit!43113)

(assert (=> b!2505432 (= lt!896570 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!123 lt!896569 lt!896575 tl!4068))))

(declare-fun lt!896572 () Regex!7428)

(declare-fun derivative!123 (Regex!7428 List!29493) Regex!7428)

(assert (=> b!2505432 (= (matchR!3431 lt!896572 tl!4068) (matchR!3431 (derivative!123 lt!896572 tl!4068) Nil!29393))))

(declare-fun lt!896574 () Unit!43113)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!77 (Regex!7428 List!29493) Unit!43113)

(assert (=> b!2505432 (= lt!896574 (lemmaMatchRIsSameAsWholeDerivativeAndNil!77 lt!896572 tl!4068))))

(assert (=> b!2505432 (= lt!896572 (Union!7428 lt!896569 lt!896575))))

(declare-fun c!14016 () C!15014)

(declare-fun derivativeStep!1997 (Regex!7428 C!15014) Regex!7428)

(assert (=> b!2505432 (= lt!896575 (derivativeStep!1997 (regTwo!15368 r!27340) c!14016))))

(declare-fun lt!896577 () Regex!7428)

(assert (=> b!2505432 (= lt!896569 (Concat!12124 lt!896577 (regTwo!15368 r!27340)))))

(assert (=> b!2505432 (= lt!896577 (derivativeStep!1997 (regOne!15368 r!27340) c!14016))))

(declare-fun b!2505433 () Bool)

(declare-fun res!1059268 () Bool)

(assert (=> b!2505433 (=> (not res!1059268) (not e!1588588))))

(declare-fun nullable!2345 (Regex!7428) Bool)

(assert (=> b!2505433 (= res!1059268 (nullable!2345 (regOne!15368 r!27340)))))

(declare-fun b!2505434 () Bool)

(assert (=> b!2505434 (= e!1588584 e!1588583)))

(declare-fun res!1059267 () Bool)

(assert (=> b!2505434 (=> res!1059267 e!1588583)))

(declare-datatypes ((tuple2!29434 0))(
  ( (tuple2!29435 (_1!17259 List!29493) (_2!17259 List!29493)) )
))
(declare-fun lt!896573 () tuple2!29434)

(declare-fun ++!7188 (List!29493 List!29493) List!29493)

(assert (=> b!2505434 (= res!1059267 (not (= (++!7188 (_1!17259 lt!896573) (_2!17259 lt!896573)) tl!4068)))))

(declare-datatypes ((Option!5837 0))(
  ( (None!5836) (Some!5836 (v!31767 tuple2!29434)) )
))
(declare-fun lt!896578 () Option!5837)

(declare-fun get!9132 (Option!5837) tuple2!29434)

(assert (=> b!2505434 (= lt!896573 (get!9132 lt!896578))))

(declare-fun isDefined!4659 (Option!5837) Bool)

(assert (=> b!2505434 (isDefined!4659 lt!896578)))

(declare-fun findConcatSeparation!859 (Regex!7428 Regex!7428 List!29493 List!29493 List!29493) Option!5837)

(assert (=> b!2505434 (= lt!896578 (findConcatSeparation!859 lt!896577 (regTwo!15368 r!27340) Nil!29393 tl!4068 tl!4068))))

(declare-fun lt!896576 () Unit!43113)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!141 (Regex!7428 Regex!7428 List!29493) Unit!43113)

(assert (=> b!2505434 (= lt!896576 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!141 lt!896577 (regTwo!15368 r!27340) tl!4068))))

(declare-fun b!2505435 () Bool)

(declare-fun e!1588585 () Bool)

(declare-fun tp!801673 () Bool)

(declare-fun tp!801671 () Bool)

(assert (=> b!2505435 (= e!1588585 (and tp!801673 tp!801671))))

(declare-fun b!2505436 () Bool)

(declare-fun tp!801674 () Bool)

(assert (=> b!2505436 (= e!1588585 tp!801674)))

(declare-fun b!2505437 () Bool)

(declare-fun e!1588586 () Bool)

(declare-fun tp_is_empty!12711 () Bool)

(declare-fun tp!801675 () Bool)

(assert (=> b!2505437 (= e!1588586 (and tp_is_empty!12711 tp!801675))))

(declare-fun b!2505438 () Bool)

(declare-fun res!1059270 () Bool)

(assert (=> b!2505438 (=> res!1059270 e!1588583)))

(assert (=> b!2505438 (= res!1059270 (not (matchR!3431 lt!896577 (_1!17259 lt!896573))))))

(declare-fun b!2505439 () Bool)

(assert (=> b!2505439 (= e!1588585 tp_is_empty!12711)))

(declare-fun b!2505440 () Bool)

(assert (=> b!2505440 (= e!1588587 (matchR!3431 lt!896575 tl!4068))))

(declare-fun b!2505441 () Bool)

(declare-fun tp!801676 () Bool)

(declare-fun tp!801672 () Bool)

(assert (=> b!2505441 (= e!1588585 (and tp!801676 tp!801672))))

(declare-fun res!1059269 () Bool)

(assert (=> start!244478 (=> (not res!1059269) (not e!1588588))))

(assert (=> start!244478 (= res!1059269 (validRegex!3054 r!27340))))

(assert (=> start!244478 e!1588588))

(assert (=> start!244478 e!1588585))

(assert (=> start!244478 tp_is_empty!12711))

(assert (=> start!244478 e!1588586))

(declare-fun b!2505442 () Bool)

(declare-fun res!1059271 () Bool)

(assert (=> b!2505442 (=> (not res!1059271) (not e!1588588))))

(assert (=> b!2505442 (= res!1059271 (and (not (is-EmptyExpr!7428 r!27340)) (not (is-EmptyLang!7428 r!27340)) (not (is-ElementMatch!7428 r!27340)) (not (is-Union!7428 r!27340)) (not (is-Star!7428 r!27340))))))

(declare-fun b!2505443 () Bool)

(declare-fun res!1059274 () Bool)

(assert (=> b!2505443 (=> (not res!1059274) (not e!1588588))))

(assert (=> b!2505443 (= res!1059274 (nullable!2345 (derivative!123 (derivativeStep!1997 r!27340 c!14016) tl!4068)))))

(assert (= (and start!244478 res!1059269) b!2505443))

(assert (= (and b!2505443 res!1059274) b!2505442))

(assert (= (and b!2505442 res!1059271) b!2505433))

(assert (= (and b!2505433 res!1059268) b!2505432))

(assert (= (and b!2505432 (not res!1059273)) b!2505440))

(assert (= (and b!2505432 (not res!1059272)) b!2505434))

(assert (= (and b!2505434 (not res!1059267)) b!2505438))

(assert (= (and b!2505438 (not res!1059270)) b!2505431))

(assert (= (and start!244478 (is-ElementMatch!7428 r!27340)) b!2505439))

(assert (= (and start!244478 (is-Concat!12124 r!27340)) b!2505441))

(assert (= (and start!244478 (is-Star!7428 r!27340)) b!2505436))

(assert (= (and start!244478 (is-Union!7428 r!27340)) b!2505435))

(assert (= (and start!244478 (is-Cons!29393 tl!4068)) b!2505437))

(declare-fun m!2866217 () Bool)

(assert (=> b!2505440 m!2866217))

(declare-fun m!2866219 () Bool)

(assert (=> b!2505431 m!2866219))

(declare-fun m!2866221 () Bool)

(assert (=> b!2505438 m!2866221))

(declare-fun m!2866223 () Bool)

(assert (=> start!244478 m!2866223))

(declare-fun m!2866225 () Bool)

(assert (=> b!2505434 m!2866225))

(declare-fun m!2866227 () Bool)

(assert (=> b!2505434 m!2866227))

(declare-fun m!2866229 () Bool)

(assert (=> b!2505434 m!2866229))

(declare-fun m!2866231 () Bool)

(assert (=> b!2505434 m!2866231))

(declare-fun m!2866233 () Bool)

(assert (=> b!2505434 m!2866233))

(declare-fun m!2866235 () Bool)

(assert (=> b!2505443 m!2866235))

(assert (=> b!2505443 m!2866235))

(declare-fun m!2866237 () Bool)

(assert (=> b!2505443 m!2866237))

(assert (=> b!2505443 m!2866237))

(declare-fun m!2866239 () Bool)

(assert (=> b!2505443 m!2866239))

(declare-fun m!2866241 () Bool)

(assert (=> b!2505433 m!2866241))

(declare-fun m!2866243 () Bool)

(assert (=> b!2505432 m!2866243))

(declare-fun m!2866245 () Bool)

(assert (=> b!2505432 m!2866245))

(declare-fun m!2866247 () Bool)

(assert (=> b!2505432 m!2866247))

(declare-fun m!2866249 () Bool)

(assert (=> b!2505432 m!2866249))

(declare-fun m!2866251 () Bool)

(assert (=> b!2505432 m!2866251))

(declare-fun m!2866253 () Bool)

(assert (=> b!2505432 m!2866253))

(assert (=> b!2505432 m!2866245))

(declare-fun m!2866255 () Bool)

(assert (=> b!2505432 m!2866255))

(declare-fun m!2866257 () Bool)

(assert (=> b!2505432 m!2866257))

(push 1)

(assert tp_is_empty!12711)

(assert (not b!2505436))

(assert (not b!2505435))

(assert (not b!2505432))

(assert (not b!2505434))

(assert (not b!2505438))

(assert (not b!2505443))

(assert (not b!2505440))

(assert (not b!2505431))

(assert (not b!2505433))

(assert (not b!2505441))

(assert (not b!2505437))

(assert (not start!244478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2505519 () Bool)

(declare-fun e!1588639 () Bool)

(declare-fun e!1588637 () Bool)

(assert (=> b!2505519 (= e!1588639 e!1588637)))

(declare-fun res!1059323 () Bool)

(assert (=> b!2505519 (= res!1059323 (not (nullable!2345 (reg!7757 r!27340))))))

(assert (=> b!2505519 (=> (not res!1059323) (not e!1588637))))

(declare-fun b!2505520 () Bool)

(declare-fun e!1588641 () Bool)

(declare-fun e!1588635 () Bool)

(assert (=> b!2505520 (= e!1588641 e!1588635)))

(declare-fun res!1059322 () Bool)

(assert (=> b!2505520 (=> (not res!1059322) (not e!1588635))))

(declare-fun call!155085 () Bool)

(assert (=> b!2505520 (= res!1059322 call!155085)))

(declare-fun b!2505521 () Bool)

(declare-fun e!1588640 () Bool)

(assert (=> b!2505521 (= e!1588639 e!1588640)))

(declare-fun c!398907 () Bool)

(assert (=> b!2505521 (= c!398907 (is-Union!7428 r!27340))))

(declare-fun b!2505522 () Bool)

(declare-fun res!1059321 () Bool)

(assert (=> b!2505522 (=> res!1059321 e!1588641)))

(assert (=> b!2505522 (= res!1059321 (not (is-Concat!12124 r!27340)))))

(assert (=> b!2505522 (= e!1588640 e!1588641)))

(declare-fun b!2505523 () Bool)

(declare-fun call!155084 () Bool)

(assert (=> b!2505523 (= e!1588637 call!155084)))

(declare-fun d!716000 () Bool)

(declare-fun res!1059320 () Bool)

(declare-fun e!1588638 () Bool)

(assert (=> d!716000 (=> res!1059320 e!1588638)))

(assert (=> d!716000 (= res!1059320 (is-ElementMatch!7428 r!27340))))

(assert (=> d!716000 (= (validRegex!3054 r!27340) e!1588638)))

(declare-fun b!2505524 () Bool)

(assert (=> b!2505524 (= e!1588638 e!1588639)))

(declare-fun c!398906 () Bool)

(assert (=> b!2505524 (= c!398906 (is-Star!7428 r!27340))))

(declare-fun bm!155079 () Bool)

(assert (=> bm!155079 (= call!155085 (validRegex!3054 (ite c!398907 (regTwo!15369 r!27340) (regOne!15368 r!27340))))))

(declare-fun bm!155080 () Bool)

(declare-fun call!155086 () Bool)

(assert (=> bm!155080 (= call!155086 call!155084)))

(declare-fun bm!155081 () Bool)

(assert (=> bm!155081 (= call!155084 (validRegex!3054 (ite c!398906 (reg!7757 r!27340) (ite c!398907 (regOne!15369 r!27340) (regTwo!15368 r!27340)))))))

(declare-fun b!2505525 () Bool)

(assert (=> b!2505525 (= e!1588635 call!155086)))

(declare-fun b!2505526 () Bool)

(declare-fun res!1059319 () Bool)

(declare-fun e!1588636 () Bool)

(assert (=> b!2505526 (=> (not res!1059319) (not e!1588636))))

(assert (=> b!2505526 (= res!1059319 call!155086)))

(assert (=> b!2505526 (= e!1588640 e!1588636)))

(declare-fun b!2505527 () Bool)

(assert (=> b!2505527 (= e!1588636 call!155085)))

(assert (= (and d!716000 (not res!1059320)) b!2505524))

(assert (= (and b!2505524 c!398906) b!2505519))

(assert (= (and b!2505524 (not c!398906)) b!2505521))

(assert (= (and b!2505519 res!1059323) b!2505523))

(assert (= (and b!2505521 c!398907) b!2505526))

(assert (= (and b!2505521 (not c!398907)) b!2505522))

(assert (= (and b!2505526 res!1059319) b!2505527))

(assert (= (and b!2505522 (not res!1059321)) b!2505520))

(assert (= (and b!2505520 res!1059322) b!2505525))

(assert (= (or b!2505526 b!2505525) bm!155080))

(assert (= (or b!2505527 b!2505520) bm!155079))

(assert (= (or b!2505523 bm!155080) bm!155081))

(declare-fun m!2866301 () Bool)

(assert (=> b!2505519 m!2866301))

(declare-fun m!2866303 () Bool)

(assert (=> bm!155079 m!2866303))

(declare-fun m!2866305 () Bool)

(assert (=> bm!155081 m!2866305))

(assert (=> start!244478 d!716000))

(declare-fun d!716004 () Bool)

(declare-fun e!1588671 () Bool)

(assert (=> d!716004 e!1588671))

(declare-fun c!398920 () Bool)

(assert (=> d!716004 (= c!398920 (is-EmptyExpr!7428 lt!896575))))

(declare-fun lt!896614 () Bool)

(declare-fun e!1588676 () Bool)

(assert (=> d!716004 (= lt!896614 e!1588676)))

(declare-fun c!398919 () Bool)

(declare-fun isEmpty!16861 (List!29493) Bool)

(assert (=> d!716004 (= c!398919 (isEmpty!16861 tl!4068))))

(assert (=> d!716004 (validRegex!3054 lt!896575)))

(assert (=> d!716004 (= (matchR!3431 lt!896575 tl!4068) lt!896614)))

(declare-fun b!2505574 () Bool)

(declare-fun e!1588670 () Bool)

(declare-fun head!5713 (List!29493) C!15014)

(assert (=> b!2505574 (= e!1588670 (= (head!5713 tl!4068) (c!398896 lt!896575)))))

(declare-fun b!2505575 () Bool)

(assert (=> b!2505575 (= e!1588676 (nullable!2345 lt!896575))))

(declare-fun b!2505576 () Bool)

(declare-fun e!1588674 () Bool)

(assert (=> b!2505576 (= e!1588674 (not lt!896614))))

(declare-fun b!2505577 () Bool)

(declare-fun res!1059355 () Bool)

(assert (=> b!2505577 (=> (not res!1059355) (not e!1588670))))

(declare-fun tail!3990 (List!29493) List!29493)

(assert (=> b!2505577 (= res!1059355 (isEmpty!16861 (tail!3990 tl!4068)))))

(declare-fun b!2505578 () Bool)

(declare-fun e!1588672 () Bool)

(assert (=> b!2505578 (= e!1588672 (not (= (head!5713 tl!4068) (c!398896 lt!896575))))))

(declare-fun b!2505579 () Bool)

(declare-fun e!1588673 () Bool)

(declare-fun e!1588675 () Bool)

(assert (=> b!2505579 (= e!1588673 e!1588675)))

(declare-fun res!1059353 () Bool)

(assert (=> b!2505579 (=> (not res!1059353) (not e!1588675))))

(assert (=> b!2505579 (= res!1059353 (not lt!896614))))

(declare-fun b!2505580 () Bool)

(assert (=> b!2505580 (= e!1588671 e!1588674)))

(declare-fun c!398918 () Bool)

(assert (=> b!2505580 (= c!398918 (is-EmptyLang!7428 lt!896575))))

(declare-fun b!2505581 () Bool)

(declare-fun res!1059357 () Bool)

(assert (=> b!2505581 (=> res!1059357 e!1588672)))

(assert (=> b!2505581 (= res!1059357 (not (isEmpty!16861 (tail!3990 tl!4068))))))

(declare-fun b!2505582 () Bool)

(declare-fun res!1059351 () Bool)

(assert (=> b!2505582 (=> res!1059351 e!1588673)))

(assert (=> b!2505582 (= res!1059351 (not (is-ElementMatch!7428 lt!896575)))))

(assert (=> b!2505582 (= e!1588674 e!1588673)))

(declare-fun b!2505583 () Bool)

(declare-fun res!1059354 () Bool)

(assert (=> b!2505583 (=> res!1059354 e!1588673)))

(assert (=> b!2505583 (= res!1059354 e!1588670)))

(declare-fun res!1059356 () Bool)

(assert (=> b!2505583 (=> (not res!1059356) (not e!1588670))))

(assert (=> b!2505583 (= res!1059356 lt!896614)))

(declare-fun bm!155090 () Bool)

(declare-fun call!155095 () Bool)

(assert (=> bm!155090 (= call!155095 (isEmpty!16861 tl!4068))))

(declare-fun b!2505584 () Bool)

(assert (=> b!2505584 (= e!1588671 (= lt!896614 call!155095))))

(declare-fun b!2505585 () Bool)

(declare-fun res!1059352 () Bool)

(assert (=> b!2505585 (=> (not res!1059352) (not e!1588670))))

(assert (=> b!2505585 (= res!1059352 (not call!155095))))

(declare-fun b!2505586 () Bool)

(assert (=> b!2505586 (= e!1588675 e!1588672)))

(declare-fun res!1059350 () Bool)

(assert (=> b!2505586 (=> res!1059350 e!1588672)))

(assert (=> b!2505586 (= res!1059350 call!155095)))

(declare-fun b!2505587 () Bool)

(assert (=> b!2505587 (= e!1588676 (matchR!3431 (derivativeStep!1997 lt!896575 (head!5713 tl!4068)) (tail!3990 tl!4068)))))

(assert (= (and d!716004 c!398919) b!2505575))

(assert (= (and d!716004 (not c!398919)) b!2505587))

(assert (= (and d!716004 c!398920) b!2505584))

(assert (= (and d!716004 (not c!398920)) b!2505580))

(assert (= (and b!2505580 c!398918) b!2505576))

(assert (= (and b!2505580 (not c!398918)) b!2505582))

(assert (= (and b!2505582 (not res!1059351)) b!2505583))

(assert (= (and b!2505583 res!1059356) b!2505585))

(assert (= (and b!2505585 res!1059352) b!2505577))

(assert (= (and b!2505577 res!1059355) b!2505574))

(assert (= (and b!2505583 (not res!1059354)) b!2505579))

(assert (= (and b!2505579 res!1059353) b!2505586))

(assert (= (and b!2505586 (not res!1059350)) b!2505581))

(assert (= (and b!2505581 (not res!1059357)) b!2505578))

(assert (= (or b!2505584 b!2505585 b!2505586) bm!155090))

(declare-fun m!2866327 () Bool)

(assert (=> b!2505578 m!2866327))

(declare-fun m!2866329 () Bool)

(assert (=> bm!155090 m!2866329))

(declare-fun m!2866331 () Bool)

(assert (=> b!2505575 m!2866331))

(assert (=> b!2505587 m!2866327))

(assert (=> b!2505587 m!2866327))

(declare-fun m!2866333 () Bool)

(assert (=> b!2505587 m!2866333))

(declare-fun m!2866335 () Bool)

(assert (=> b!2505587 m!2866335))

(assert (=> b!2505587 m!2866333))

(assert (=> b!2505587 m!2866335))

(declare-fun m!2866337 () Bool)

(assert (=> b!2505587 m!2866337))

(assert (=> d!716004 m!2866329))

(declare-fun m!2866339 () Bool)

(assert (=> d!716004 m!2866339))

(assert (=> b!2505581 m!2866335))

(assert (=> b!2505581 m!2866335))

(declare-fun m!2866341 () Bool)

(assert (=> b!2505581 m!2866341))

(assert (=> b!2505577 m!2866335))

(assert (=> b!2505577 m!2866335))

(assert (=> b!2505577 m!2866341))

(assert (=> b!2505574 m!2866327))

(assert (=> b!2505440 d!716004))

(declare-fun b!2505618 () Bool)

(declare-fun e!1588694 () Option!5837)

(declare-fun e!1588695 () Option!5837)

(assert (=> b!2505618 (= e!1588694 e!1588695)))

(declare-fun c!398928 () Bool)

(assert (=> b!2505618 (= c!398928 (is-Nil!29393 tl!4068))))

(declare-fun b!2505619 () Bool)

(declare-fun e!1588693 () Bool)

(declare-fun lt!896625 () Option!5837)

(assert (=> b!2505619 (= e!1588693 (= (++!7188 (_1!17259 (get!9132 lt!896625)) (_2!17259 (get!9132 lt!896625))) tl!4068))))

(declare-fun b!2505620 () Bool)

(declare-fun res!1059374 () Bool)

(assert (=> b!2505620 (=> (not res!1059374) (not e!1588693))))

(assert (=> b!2505620 (= res!1059374 (matchR!3431 lt!896577 (_1!17259 (get!9132 lt!896625))))))

(declare-fun b!2505621 () Bool)

(declare-fun e!1588697 () Bool)

(assert (=> b!2505621 (= e!1588697 (matchR!3431 (regTwo!15368 r!27340) tl!4068))))

(declare-fun b!2505622 () Bool)

(declare-fun e!1588696 () Bool)

(assert (=> b!2505622 (= e!1588696 (not (isDefined!4659 lt!896625)))))

(declare-fun d!716014 () Bool)

(assert (=> d!716014 e!1588696))

(declare-fun res!1059378 () Bool)

(assert (=> d!716014 (=> res!1059378 e!1588696)))

(assert (=> d!716014 (= res!1059378 e!1588693)))

(declare-fun res!1059377 () Bool)

(assert (=> d!716014 (=> (not res!1059377) (not e!1588693))))

(assert (=> d!716014 (= res!1059377 (isDefined!4659 lt!896625))))

(assert (=> d!716014 (= lt!896625 e!1588694)))

(declare-fun c!398929 () Bool)

(assert (=> d!716014 (= c!398929 e!1588697)))

(declare-fun res!1059375 () Bool)

(assert (=> d!716014 (=> (not res!1059375) (not e!1588697))))

(assert (=> d!716014 (= res!1059375 (matchR!3431 lt!896577 Nil!29393))))

(assert (=> d!716014 (validRegex!3054 lt!896577)))

(assert (=> d!716014 (= (findConcatSeparation!859 lt!896577 (regTwo!15368 r!27340) Nil!29393 tl!4068 tl!4068) lt!896625)))

(declare-fun b!2505623 () Bool)

(declare-fun lt!896624 () Unit!43113)

(declare-fun lt!896626 () Unit!43113)

(assert (=> b!2505623 (= lt!896624 lt!896626)))

(assert (=> b!2505623 (= (++!7188 (++!7188 Nil!29393 (Cons!29393 (h!34813 tl!4068) Nil!29393)) (t!211192 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!738 (List!29493 C!15014 List!29493 List!29493) Unit!43113)

(assert (=> b!2505623 (= lt!896626 (lemmaMoveElementToOtherListKeepsConcatEq!738 Nil!29393 (h!34813 tl!4068) (t!211192 tl!4068) tl!4068))))

(assert (=> b!2505623 (= e!1588695 (findConcatSeparation!859 lt!896577 (regTwo!15368 r!27340) (++!7188 Nil!29393 (Cons!29393 (h!34813 tl!4068) Nil!29393)) (t!211192 tl!4068) tl!4068))))

(declare-fun b!2505624 () Bool)

(declare-fun res!1059376 () Bool)

(assert (=> b!2505624 (=> (not res!1059376) (not e!1588693))))

(assert (=> b!2505624 (= res!1059376 (matchR!3431 (regTwo!15368 r!27340) (_2!17259 (get!9132 lt!896625))))))

(declare-fun b!2505625 () Bool)

(assert (=> b!2505625 (= e!1588694 (Some!5836 (tuple2!29435 Nil!29393 tl!4068)))))

(declare-fun b!2505626 () Bool)

(assert (=> b!2505626 (= e!1588695 None!5836)))

(assert (= (and d!716014 res!1059375) b!2505621))

(assert (= (and d!716014 c!398929) b!2505625))

(assert (= (and d!716014 (not c!398929)) b!2505618))

(assert (= (and b!2505618 c!398928) b!2505626))

(assert (= (and b!2505618 (not c!398928)) b!2505623))

(assert (= (and d!716014 res!1059377) b!2505620))

(assert (= (and b!2505620 res!1059374) b!2505624))

(assert (= (and b!2505624 res!1059376) b!2505619))

(assert (= (and d!716014 (not res!1059378)) b!2505622))

(declare-fun m!2866357 () Bool)

(assert (=> b!2505622 m!2866357))

(assert (=> d!716014 m!2866357))

(declare-fun m!2866359 () Bool)

(assert (=> d!716014 m!2866359))

(declare-fun m!2866361 () Bool)

(assert (=> d!716014 m!2866361))

(declare-fun m!2866363 () Bool)

(assert (=> b!2505619 m!2866363))

(declare-fun m!2866365 () Bool)

(assert (=> b!2505619 m!2866365))

(declare-fun m!2866367 () Bool)

(assert (=> b!2505621 m!2866367))

(assert (=> b!2505624 m!2866363))

(declare-fun m!2866369 () Bool)

(assert (=> b!2505624 m!2866369))

(assert (=> b!2505620 m!2866363))

(declare-fun m!2866371 () Bool)

(assert (=> b!2505620 m!2866371))

(declare-fun m!2866373 () Bool)

(assert (=> b!2505623 m!2866373))

(assert (=> b!2505623 m!2866373))

(declare-fun m!2866375 () Bool)

(assert (=> b!2505623 m!2866375))

(declare-fun m!2866377 () Bool)

(assert (=> b!2505623 m!2866377))

(assert (=> b!2505623 m!2866373))

(declare-fun m!2866379 () Bool)

(assert (=> b!2505623 m!2866379))

(assert (=> b!2505434 d!716014))

(declare-fun d!716018 () Bool)

(assert (=> d!716018 (isDefined!4659 (findConcatSeparation!859 lt!896577 (regTwo!15368 r!27340) Nil!29393 tl!4068 tl!4068))))

(declare-fun lt!896635 () Unit!43113)

(declare-fun choose!14809 (Regex!7428 Regex!7428 List!29493) Unit!43113)

(assert (=> d!716018 (= lt!896635 (choose!14809 lt!896577 (regTwo!15368 r!27340) tl!4068))))

(assert (=> d!716018 (validRegex!3054 lt!896577)))

(assert (=> d!716018 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!141 lt!896577 (regTwo!15368 r!27340) tl!4068) lt!896635)))

(declare-fun bs!468662 () Bool)

(assert (= bs!468662 d!716018))

(assert (=> bs!468662 m!2866229))

(assert (=> bs!468662 m!2866229))

(declare-fun m!2866381 () Bool)

(assert (=> bs!468662 m!2866381))

(declare-fun m!2866383 () Bool)

(assert (=> bs!468662 m!2866383))

(assert (=> bs!468662 m!2866361))

(assert (=> b!2505434 d!716018))

(declare-fun d!716020 () Bool)

(assert (=> d!716020 (= (get!9132 lt!896578) (v!31767 lt!896578))))

(assert (=> b!2505434 d!716020))

(declare-fun d!716022 () Bool)

(declare-fun isEmpty!16862 (Option!5837) Bool)

(assert (=> d!716022 (= (isDefined!4659 lt!896578) (not (isEmpty!16862 lt!896578)))))

(declare-fun bs!468663 () Bool)

(assert (= bs!468663 d!716022))

(declare-fun m!2866385 () Bool)

(assert (=> bs!468663 m!2866385))

(assert (=> b!2505434 d!716022))

(declare-fun b!2505662 () Bool)

(declare-fun e!1588717 () List!29493)

(assert (=> b!2505662 (= e!1588717 (_2!17259 lt!896573))))

(declare-fun d!716024 () Bool)

(declare-fun e!1588718 () Bool)

(assert (=> d!716024 e!1588718))

(declare-fun res!1059399 () Bool)

(assert (=> d!716024 (=> (not res!1059399) (not e!1588718))))

(declare-fun lt!896641 () List!29493)

(declare-fun content!4009 (List!29493) (Set C!15014))

(assert (=> d!716024 (= res!1059399 (= (content!4009 lt!896641) (set.union (content!4009 (_1!17259 lt!896573)) (content!4009 (_2!17259 lt!896573)))))))

(assert (=> d!716024 (= lt!896641 e!1588717)))

(declare-fun c!398938 () Bool)

(assert (=> d!716024 (= c!398938 (is-Nil!29393 (_1!17259 lt!896573)))))

(assert (=> d!716024 (= (++!7188 (_1!17259 lt!896573) (_2!17259 lt!896573)) lt!896641)))

(declare-fun b!2505664 () Bool)

(declare-fun res!1059398 () Bool)

(assert (=> b!2505664 (=> (not res!1059398) (not e!1588718))))

(declare-fun size!22893 (List!29493) Int)

(assert (=> b!2505664 (= res!1059398 (= (size!22893 lt!896641) (+ (size!22893 (_1!17259 lt!896573)) (size!22893 (_2!17259 lt!896573)))))))

(declare-fun b!2505663 () Bool)

(assert (=> b!2505663 (= e!1588717 (Cons!29393 (h!34813 (_1!17259 lt!896573)) (++!7188 (t!211192 (_1!17259 lt!896573)) (_2!17259 lt!896573))))))

(declare-fun b!2505665 () Bool)

(assert (=> b!2505665 (= e!1588718 (or (not (= (_2!17259 lt!896573) Nil!29393)) (= lt!896641 (_1!17259 lt!896573))))))

(assert (= (and d!716024 c!398938) b!2505662))

(assert (= (and d!716024 (not c!398938)) b!2505663))

(assert (= (and d!716024 res!1059399) b!2505664))

(assert (= (and b!2505664 res!1059398) b!2505665))

(declare-fun m!2866409 () Bool)

(assert (=> d!716024 m!2866409))

(declare-fun m!2866411 () Bool)

(assert (=> d!716024 m!2866411))

(declare-fun m!2866413 () Bool)

(assert (=> d!716024 m!2866413))

(declare-fun m!2866415 () Bool)

(assert (=> b!2505664 m!2866415))

(declare-fun m!2866417 () Bool)

(assert (=> b!2505664 m!2866417))

(declare-fun m!2866419 () Bool)

(assert (=> b!2505664 m!2866419))

(declare-fun m!2866421 () Bool)

(assert (=> b!2505663 m!2866421))

(assert (=> b!2505434 d!716024))

(declare-fun b!2505666 () Bool)

(declare-fun e!1588723 () Bool)

(declare-fun e!1588721 () Bool)

(assert (=> b!2505666 (= e!1588723 e!1588721)))

(declare-fun res!1059404 () Bool)

(assert (=> b!2505666 (= res!1059404 (not (nullable!2345 (reg!7757 (regTwo!15368 r!27340)))))))

(assert (=> b!2505666 (=> (not res!1059404) (not e!1588721))))

(declare-fun b!2505667 () Bool)

(declare-fun e!1588725 () Bool)

(declare-fun e!1588719 () Bool)

(assert (=> b!2505667 (= e!1588725 e!1588719)))

(declare-fun res!1059403 () Bool)

(assert (=> b!2505667 (=> (not res!1059403) (not e!1588719))))

(declare-fun call!155097 () Bool)

(assert (=> b!2505667 (= res!1059403 call!155097)))

(declare-fun b!2505668 () Bool)

(declare-fun e!1588724 () Bool)

(assert (=> b!2505668 (= e!1588723 e!1588724)))

(declare-fun c!398940 () Bool)

(assert (=> b!2505668 (= c!398940 (is-Union!7428 (regTwo!15368 r!27340)))))

(declare-fun b!2505669 () Bool)

(declare-fun res!1059402 () Bool)

(assert (=> b!2505669 (=> res!1059402 e!1588725)))

(assert (=> b!2505669 (= res!1059402 (not (is-Concat!12124 (regTwo!15368 r!27340))))))

(assert (=> b!2505669 (= e!1588724 e!1588725)))

(declare-fun b!2505670 () Bool)

(declare-fun call!155096 () Bool)

(assert (=> b!2505670 (= e!1588721 call!155096)))

(declare-fun d!716030 () Bool)

(declare-fun res!1059401 () Bool)

(declare-fun e!1588722 () Bool)

(assert (=> d!716030 (=> res!1059401 e!1588722)))

(assert (=> d!716030 (= res!1059401 (is-ElementMatch!7428 (regTwo!15368 r!27340)))))

(assert (=> d!716030 (= (validRegex!3054 (regTwo!15368 r!27340)) e!1588722)))

(declare-fun b!2505671 () Bool)

(assert (=> b!2505671 (= e!1588722 e!1588723)))

(declare-fun c!398939 () Bool)

(assert (=> b!2505671 (= c!398939 (is-Star!7428 (regTwo!15368 r!27340)))))

(declare-fun bm!155091 () Bool)

(assert (=> bm!155091 (= call!155097 (validRegex!3054 (ite c!398940 (regTwo!15369 (regTwo!15368 r!27340)) (regOne!15368 (regTwo!15368 r!27340)))))))

(declare-fun bm!155092 () Bool)

(declare-fun call!155098 () Bool)

(assert (=> bm!155092 (= call!155098 call!155096)))

(declare-fun bm!155093 () Bool)

(assert (=> bm!155093 (= call!155096 (validRegex!3054 (ite c!398939 (reg!7757 (regTwo!15368 r!27340)) (ite c!398940 (regOne!15369 (regTwo!15368 r!27340)) (regTwo!15368 (regTwo!15368 r!27340))))))))

(declare-fun b!2505672 () Bool)

(assert (=> b!2505672 (= e!1588719 call!155098)))

(declare-fun b!2505673 () Bool)

(declare-fun res!1059400 () Bool)

(declare-fun e!1588720 () Bool)

(assert (=> b!2505673 (=> (not res!1059400) (not e!1588720))))

(assert (=> b!2505673 (= res!1059400 call!155098)))

(assert (=> b!2505673 (= e!1588724 e!1588720)))

(declare-fun b!2505674 () Bool)

(assert (=> b!2505674 (= e!1588720 call!155097)))

(assert (= (and d!716030 (not res!1059401)) b!2505671))

(assert (= (and b!2505671 c!398939) b!2505666))

(assert (= (and b!2505671 (not c!398939)) b!2505668))

(assert (= (and b!2505666 res!1059404) b!2505670))

(assert (= (and b!2505668 c!398940) b!2505673))

(assert (= (and b!2505668 (not c!398940)) b!2505669))

(assert (= (and b!2505673 res!1059400) b!2505674))

(assert (= (and b!2505669 (not res!1059402)) b!2505667))

(assert (= (and b!2505667 res!1059403) b!2505672))

(assert (= (or b!2505673 b!2505672) bm!155092))

(assert (= (or b!2505674 b!2505667) bm!155091))

(assert (= (or b!2505670 bm!155092) bm!155093))

(declare-fun m!2866423 () Bool)

(assert (=> b!2505666 m!2866423))

(declare-fun m!2866425 () Bool)

(assert (=> bm!155091 m!2866425))

(declare-fun m!2866427 () Bool)

(assert (=> bm!155093 m!2866427))

(assert (=> b!2505431 d!716030))

(declare-fun d!716032 () Bool)

(declare-fun nullableFct!609 (Regex!7428) Bool)

(assert (=> d!716032 (= (nullable!2345 (derivative!123 (derivativeStep!1997 r!27340 c!14016) tl!4068)) (nullableFct!609 (derivative!123 (derivativeStep!1997 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468664 () Bool)

(assert (= bs!468664 d!716032))

(assert (=> bs!468664 m!2866237))

(declare-fun m!2866429 () Bool)

(assert (=> bs!468664 m!2866429))

(assert (=> b!2505443 d!716032))

(declare-fun d!716034 () Bool)

(declare-fun lt!896644 () Regex!7428)

(assert (=> d!716034 (validRegex!3054 lt!896644)))

(declare-fun e!1588728 () Regex!7428)

(assert (=> d!716034 (= lt!896644 e!1588728)))

(declare-fun c!398943 () Bool)

(assert (=> d!716034 (= c!398943 (is-Cons!29393 tl!4068))))

(assert (=> d!716034 (validRegex!3054 (derivativeStep!1997 r!27340 c!14016))))

(assert (=> d!716034 (= (derivative!123 (derivativeStep!1997 r!27340 c!14016) tl!4068) lt!896644)))

(declare-fun b!2505679 () Bool)

(assert (=> b!2505679 (= e!1588728 (derivative!123 (derivativeStep!1997 (derivativeStep!1997 r!27340 c!14016) (h!34813 tl!4068)) (t!211192 tl!4068)))))

(declare-fun b!2505680 () Bool)

(assert (=> b!2505680 (= e!1588728 (derivativeStep!1997 r!27340 c!14016))))

(assert (= (and d!716034 c!398943) b!2505679))

(assert (= (and d!716034 (not c!398943)) b!2505680))

(declare-fun m!2866431 () Bool)

(assert (=> d!716034 m!2866431))

(assert (=> d!716034 m!2866235))

(declare-fun m!2866433 () Bool)

(assert (=> d!716034 m!2866433))

(assert (=> b!2505679 m!2866235))

(declare-fun m!2866435 () Bool)

(assert (=> b!2505679 m!2866435))

(assert (=> b!2505679 m!2866435))

(declare-fun m!2866437 () Bool)

(assert (=> b!2505679 m!2866437))

(assert (=> b!2505443 d!716034))

(declare-fun d!716036 () Bool)

(declare-fun lt!896649 () Regex!7428)

(assert (=> d!716036 (validRegex!3054 lt!896649)))

(declare-fun e!1588753 () Regex!7428)

(assert (=> d!716036 (= lt!896649 e!1588753)))

(declare-fun c!398962 () Bool)

(assert (=> d!716036 (= c!398962 (or (is-EmptyExpr!7428 r!27340) (is-EmptyLang!7428 r!27340)))))

(assert (=> d!716036 (validRegex!3054 r!27340)))

(assert (=> d!716036 (= (derivativeStep!1997 r!27340 c!14016) lt!896649)))

(declare-fun bm!155104 () Bool)

(declare-fun call!155112 () Regex!7428)

(declare-fun call!155111 () Regex!7428)

(assert (=> bm!155104 (= call!155112 call!155111)))

(declare-fun b!2505729 () Bool)

(declare-fun e!1588757 () Regex!7428)

(declare-fun e!1588755 () Regex!7428)

(assert (=> b!2505729 (= e!1588757 e!1588755)))

(declare-fun c!398963 () Bool)

(assert (=> b!2505729 (= c!398963 (is-Star!7428 r!27340))))

(declare-fun b!2505730 () Bool)

(declare-fun c!398960 () Bool)

(assert (=> b!2505730 (= c!398960 (nullable!2345 (regOne!15368 r!27340)))))

(declare-fun e!1588754 () Regex!7428)

(assert (=> b!2505730 (= e!1588755 e!1588754)))

(declare-fun b!2505731 () Bool)

(assert (=> b!2505731 (= e!1588755 (Concat!12124 call!155111 r!27340))))

(declare-fun b!2505732 () Bool)

(assert (=> b!2505732 (= e!1588754 (Union!7428 (Concat!12124 call!155112 (regTwo!15368 r!27340)) EmptyLang!7428))))

(declare-fun call!155110 () Regex!7428)

(declare-fun b!2505733 () Bool)

(assert (=> b!2505733 (= e!1588754 (Union!7428 (Concat!12124 call!155112 (regTwo!15368 r!27340)) call!155110))))

(declare-fun b!2505734 () Bool)

(assert (=> b!2505734 (= e!1588753 EmptyLang!7428)))

(declare-fun b!2505735 () Bool)

(declare-fun e!1588756 () Regex!7428)

(assert (=> b!2505735 (= e!1588756 (ite (= c!14016 (c!398896 r!27340)) EmptyExpr!7428 EmptyLang!7428))))

(declare-fun bm!155105 () Bool)

(declare-fun call!155109 () Regex!7428)

(assert (=> bm!155105 (= call!155111 call!155109)))

(declare-fun bm!155106 () Bool)

(declare-fun c!398961 () Bool)

(assert (=> bm!155106 (= call!155109 (derivativeStep!1997 (ite c!398961 (regOne!15369 r!27340) (ite c!398963 (reg!7757 r!27340) (regOne!15368 r!27340))) c!14016))))

(declare-fun b!2505736 () Bool)

(assert (=> b!2505736 (= e!1588757 (Union!7428 call!155109 call!155110))))

(declare-fun b!2505737 () Bool)

(assert (=> b!2505737 (= e!1588753 e!1588756)))

(declare-fun c!398964 () Bool)

(assert (=> b!2505737 (= c!398964 (is-ElementMatch!7428 r!27340))))

(declare-fun b!2505738 () Bool)

(assert (=> b!2505738 (= c!398961 (is-Union!7428 r!27340))))

(assert (=> b!2505738 (= e!1588756 e!1588757)))

(declare-fun bm!155107 () Bool)

(assert (=> bm!155107 (= call!155110 (derivativeStep!1997 (ite c!398961 (regTwo!15369 r!27340) (regTwo!15368 r!27340)) c!14016))))

(assert (= (and d!716036 c!398962) b!2505734))

(assert (= (and d!716036 (not c!398962)) b!2505737))

(assert (= (and b!2505737 c!398964) b!2505735))

(assert (= (and b!2505737 (not c!398964)) b!2505738))

(assert (= (and b!2505738 c!398961) b!2505736))

(assert (= (and b!2505738 (not c!398961)) b!2505729))

(assert (= (and b!2505729 c!398963) b!2505731))

(assert (= (and b!2505729 (not c!398963)) b!2505730))

(assert (= (and b!2505730 c!398960) b!2505733))

(assert (= (and b!2505730 (not c!398960)) b!2505732))

(assert (= (or b!2505733 b!2505732) bm!155104))

(assert (= (or b!2505731 bm!155104) bm!155105))

(assert (= (or b!2505736 b!2505733) bm!155107))

(assert (= (or b!2505736 bm!155105) bm!155106))

(declare-fun m!2866439 () Bool)

(assert (=> d!716036 m!2866439))

(assert (=> d!716036 m!2866223))

(assert (=> b!2505730 m!2866241))

(declare-fun m!2866441 () Bool)

(assert (=> bm!155106 m!2866441))

(declare-fun m!2866443 () Bool)

(assert (=> bm!155107 m!2866443))

(assert (=> b!2505443 d!716036))

(declare-fun d!716038 () Bool)

(assert (=> d!716038 (= (matchR!3431 lt!896572 tl!4068) (matchR!3431 (derivative!123 lt!896572 tl!4068) Nil!29393))))

(declare-fun lt!896653 () Unit!43113)

(declare-fun choose!14810 (Regex!7428 List!29493) Unit!43113)

(assert (=> d!716038 (= lt!896653 (choose!14810 lt!896572 tl!4068))))

(assert (=> d!716038 (validRegex!3054 lt!896572)))

(assert (=> d!716038 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!77 lt!896572 tl!4068) lt!896653)))

(declare-fun bs!468665 () Bool)

(assert (= bs!468665 d!716038))

(assert (=> bs!468665 m!2866245))

(assert (=> bs!468665 m!2866243))

(assert (=> bs!468665 m!2866245))

(assert (=> bs!468665 m!2866247))

(declare-fun m!2866445 () Bool)

(assert (=> bs!468665 m!2866445))

(declare-fun m!2866447 () Bool)

(assert (=> bs!468665 m!2866447))

(assert (=> b!2505432 d!716038))

(declare-fun d!716040 () Bool)

(declare-fun e!1588766 () Bool)

(assert (=> d!716040 e!1588766))

(declare-fun c!398970 () Bool)

(assert (=> d!716040 (= c!398970 (is-EmptyExpr!7428 lt!896569))))

(declare-fun lt!896654 () Bool)

(declare-fun e!1588771 () Bool)

(assert (=> d!716040 (= lt!896654 e!1588771)))

(declare-fun c!398969 () Bool)

(assert (=> d!716040 (= c!398969 (isEmpty!16861 tl!4068))))

(assert (=> d!716040 (validRegex!3054 lt!896569)))

(assert (=> d!716040 (= (matchR!3431 lt!896569 tl!4068) lt!896654)))

(declare-fun b!2505753 () Bool)

(declare-fun e!1588765 () Bool)

(assert (=> b!2505753 (= e!1588765 (= (head!5713 tl!4068) (c!398896 lt!896569)))))

(declare-fun b!2505754 () Bool)

(assert (=> b!2505754 (= e!1588771 (nullable!2345 lt!896569))))

(declare-fun b!2505755 () Bool)

(declare-fun e!1588769 () Bool)

(assert (=> b!2505755 (= e!1588769 (not lt!896654))))

(declare-fun b!2505756 () Bool)

(declare-fun res!1059434 () Bool)

(assert (=> b!2505756 (=> (not res!1059434) (not e!1588765))))

(assert (=> b!2505756 (= res!1059434 (isEmpty!16861 (tail!3990 tl!4068)))))

(declare-fun b!2505757 () Bool)

(declare-fun e!1588767 () Bool)

(assert (=> b!2505757 (= e!1588767 (not (= (head!5713 tl!4068) (c!398896 lt!896569))))))

(declare-fun b!2505758 () Bool)

(declare-fun e!1588768 () Bool)

(declare-fun e!1588770 () Bool)

(assert (=> b!2505758 (= e!1588768 e!1588770)))

(declare-fun res!1059432 () Bool)

(assert (=> b!2505758 (=> (not res!1059432) (not e!1588770))))

(assert (=> b!2505758 (= res!1059432 (not lt!896654))))

(declare-fun b!2505759 () Bool)

(assert (=> b!2505759 (= e!1588766 e!1588769)))

(declare-fun c!398968 () Bool)

(assert (=> b!2505759 (= c!398968 (is-EmptyLang!7428 lt!896569))))

(declare-fun b!2505760 () Bool)

(declare-fun res!1059436 () Bool)

(assert (=> b!2505760 (=> res!1059436 e!1588767)))

(assert (=> b!2505760 (= res!1059436 (not (isEmpty!16861 (tail!3990 tl!4068))))))

(declare-fun b!2505761 () Bool)

(declare-fun res!1059430 () Bool)

(assert (=> b!2505761 (=> res!1059430 e!1588768)))

(assert (=> b!2505761 (= res!1059430 (not (is-ElementMatch!7428 lt!896569)))))

(assert (=> b!2505761 (= e!1588769 e!1588768)))

(declare-fun b!2505762 () Bool)

(declare-fun res!1059433 () Bool)

(assert (=> b!2505762 (=> res!1059433 e!1588768)))

(assert (=> b!2505762 (= res!1059433 e!1588765)))

(declare-fun res!1059435 () Bool)

(assert (=> b!2505762 (=> (not res!1059435) (not e!1588765))))

(assert (=> b!2505762 (= res!1059435 lt!896654)))

(declare-fun bm!155109 () Bool)

(declare-fun call!155114 () Bool)

(assert (=> bm!155109 (= call!155114 (isEmpty!16861 tl!4068))))

(declare-fun b!2505763 () Bool)

(assert (=> b!2505763 (= e!1588766 (= lt!896654 call!155114))))

(declare-fun b!2505764 () Bool)

(declare-fun res!1059431 () Bool)

(assert (=> b!2505764 (=> (not res!1059431) (not e!1588765))))

(assert (=> b!2505764 (= res!1059431 (not call!155114))))

(declare-fun b!2505765 () Bool)

(assert (=> b!2505765 (= e!1588770 e!1588767)))

(declare-fun res!1059429 () Bool)

(assert (=> b!2505765 (=> res!1059429 e!1588767)))

(assert (=> b!2505765 (= res!1059429 call!155114)))

(declare-fun b!2505766 () Bool)

(assert (=> b!2505766 (= e!1588771 (matchR!3431 (derivativeStep!1997 lt!896569 (head!5713 tl!4068)) (tail!3990 tl!4068)))))

(assert (= (and d!716040 c!398969) b!2505754))

(assert (= (and d!716040 (not c!398969)) b!2505766))

(assert (= (and d!716040 c!398970) b!2505763))

(assert (= (and d!716040 (not c!398970)) b!2505759))

(assert (= (and b!2505759 c!398968) b!2505755))

(assert (= (and b!2505759 (not c!398968)) b!2505761))

(assert (= (and b!2505761 (not res!1059430)) b!2505762))

(assert (= (and b!2505762 res!1059435) b!2505764))

(assert (= (and b!2505764 res!1059431) b!2505756))

(assert (= (and b!2505756 res!1059434) b!2505753))

(assert (= (and b!2505762 (not res!1059433)) b!2505758))

(assert (= (and b!2505758 res!1059432) b!2505765))

(assert (= (and b!2505765 (not res!1059429)) b!2505760))

(assert (= (and b!2505760 (not res!1059436)) b!2505757))

(assert (= (or b!2505763 b!2505764 b!2505765) bm!155109))

(assert (=> b!2505757 m!2866327))

(assert (=> bm!155109 m!2866329))

(declare-fun m!2866449 () Bool)

(assert (=> b!2505754 m!2866449))

(assert (=> b!2505766 m!2866327))

(assert (=> b!2505766 m!2866327))

(declare-fun m!2866453 () Bool)

(assert (=> b!2505766 m!2866453))

(assert (=> b!2505766 m!2866335))

(assert (=> b!2505766 m!2866453))

(assert (=> b!2505766 m!2866335))

(declare-fun m!2866455 () Bool)

(assert (=> b!2505766 m!2866455))

(assert (=> d!716040 m!2866329))

(declare-fun m!2866459 () Bool)

(assert (=> d!716040 m!2866459))

(assert (=> b!2505760 m!2866335))

(assert (=> b!2505760 m!2866335))

(assert (=> b!2505760 m!2866341))

(assert (=> b!2505756 m!2866335))

(assert (=> b!2505756 m!2866335))

(assert (=> b!2505756 m!2866341))

(assert (=> b!2505753 m!2866327))

(assert (=> b!2505432 d!716040))

(declare-fun d!716042 () Bool)

(declare-fun e!1588773 () Bool)

(assert (=> d!716042 e!1588773))

(declare-fun c!398973 () Bool)

(assert (=> d!716042 (= c!398973 (is-EmptyExpr!7428 (derivative!123 lt!896572 tl!4068)))))

(declare-fun lt!896655 () Bool)

(declare-fun e!1588778 () Bool)

(assert (=> d!716042 (= lt!896655 e!1588778)))

(declare-fun c!398972 () Bool)

(assert (=> d!716042 (= c!398972 (isEmpty!16861 Nil!29393))))

(assert (=> d!716042 (validRegex!3054 (derivative!123 lt!896572 tl!4068))))

(assert (=> d!716042 (= (matchR!3431 (derivative!123 lt!896572 tl!4068) Nil!29393) lt!896655)))

(declare-fun b!2505767 () Bool)

(declare-fun e!1588772 () Bool)

(assert (=> b!2505767 (= e!1588772 (= (head!5713 Nil!29393) (c!398896 (derivative!123 lt!896572 tl!4068))))))

(declare-fun b!2505768 () Bool)

(assert (=> b!2505768 (= e!1588778 (nullable!2345 (derivative!123 lt!896572 tl!4068)))))

(declare-fun b!2505769 () Bool)

(declare-fun e!1588776 () Bool)

(assert (=> b!2505769 (= e!1588776 (not lt!896655))))

(declare-fun b!2505770 () Bool)

(declare-fun res!1059442 () Bool)

(assert (=> b!2505770 (=> (not res!1059442) (not e!1588772))))

(assert (=> b!2505770 (= res!1059442 (isEmpty!16861 (tail!3990 Nil!29393)))))

(declare-fun b!2505771 () Bool)

(declare-fun e!1588774 () Bool)

(assert (=> b!2505771 (= e!1588774 (not (= (head!5713 Nil!29393) (c!398896 (derivative!123 lt!896572 tl!4068)))))))

(declare-fun b!2505772 () Bool)

(declare-fun e!1588775 () Bool)

(declare-fun e!1588777 () Bool)

(assert (=> b!2505772 (= e!1588775 e!1588777)))

(declare-fun res!1059440 () Bool)

(assert (=> b!2505772 (=> (not res!1059440) (not e!1588777))))

(assert (=> b!2505772 (= res!1059440 (not lt!896655))))

(declare-fun b!2505773 () Bool)

(assert (=> b!2505773 (= e!1588773 e!1588776)))

(declare-fun c!398971 () Bool)

(assert (=> b!2505773 (= c!398971 (is-EmptyLang!7428 (derivative!123 lt!896572 tl!4068)))))

(declare-fun b!2505774 () Bool)

(declare-fun res!1059444 () Bool)

(assert (=> b!2505774 (=> res!1059444 e!1588774)))

(assert (=> b!2505774 (= res!1059444 (not (isEmpty!16861 (tail!3990 Nil!29393))))))

(declare-fun b!2505775 () Bool)

(declare-fun res!1059438 () Bool)

(assert (=> b!2505775 (=> res!1059438 e!1588775)))

(assert (=> b!2505775 (= res!1059438 (not (is-ElementMatch!7428 (derivative!123 lt!896572 tl!4068))))))

(assert (=> b!2505775 (= e!1588776 e!1588775)))

(declare-fun b!2505776 () Bool)

(declare-fun res!1059441 () Bool)

(assert (=> b!2505776 (=> res!1059441 e!1588775)))

(assert (=> b!2505776 (= res!1059441 e!1588772)))

(declare-fun res!1059443 () Bool)

(assert (=> b!2505776 (=> (not res!1059443) (not e!1588772))))

(assert (=> b!2505776 (= res!1059443 lt!896655)))

(declare-fun bm!155110 () Bool)

(declare-fun call!155115 () Bool)

(assert (=> bm!155110 (= call!155115 (isEmpty!16861 Nil!29393))))

(declare-fun b!2505777 () Bool)

(assert (=> b!2505777 (= e!1588773 (= lt!896655 call!155115))))

(declare-fun b!2505778 () Bool)

(declare-fun res!1059439 () Bool)

(assert (=> b!2505778 (=> (not res!1059439) (not e!1588772))))

(assert (=> b!2505778 (= res!1059439 (not call!155115))))

(declare-fun b!2505779 () Bool)

(assert (=> b!2505779 (= e!1588777 e!1588774)))

(declare-fun res!1059437 () Bool)

(assert (=> b!2505779 (=> res!1059437 e!1588774)))

(assert (=> b!2505779 (= res!1059437 call!155115)))

(declare-fun b!2505780 () Bool)

(assert (=> b!2505780 (= e!1588778 (matchR!3431 (derivativeStep!1997 (derivative!123 lt!896572 tl!4068) (head!5713 Nil!29393)) (tail!3990 Nil!29393)))))

(assert (= (and d!716042 c!398972) b!2505768))

(assert (= (and d!716042 (not c!398972)) b!2505780))

(assert (= (and d!716042 c!398973) b!2505777))

(assert (= (and d!716042 (not c!398973)) b!2505773))

(assert (= (and b!2505773 c!398971) b!2505769))

(assert (= (and b!2505773 (not c!398971)) b!2505775))

(assert (= (and b!2505775 (not res!1059438)) b!2505776))

(assert (= (and b!2505776 res!1059443) b!2505778))

(assert (= (and b!2505778 res!1059439) b!2505770))

(assert (= (and b!2505770 res!1059442) b!2505767))

(assert (= (and b!2505776 (not res!1059441)) b!2505772))

(assert (= (and b!2505772 res!1059440) b!2505779))

(assert (= (and b!2505779 (not res!1059437)) b!2505774))

(assert (= (and b!2505774 (not res!1059444)) b!2505771))

(assert (= (or b!2505777 b!2505778 b!2505779) bm!155110))

(declare-fun m!2866473 () Bool)

(assert (=> b!2505771 m!2866473))

(declare-fun m!2866475 () Bool)

(assert (=> bm!155110 m!2866475))

(assert (=> b!2505768 m!2866245))

(declare-fun m!2866477 () Bool)

(assert (=> b!2505768 m!2866477))

(assert (=> b!2505780 m!2866473))

(assert (=> b!2505780 m!2866245))

(assert (=> b!2505780 m!2866473))

(declare-fun m!2866479 () Bool)

(assert (=> b!2505780 m!2866479))

(declare-fun m!2866481 () Bool)

(assert (=> b!2505780 m!2866481))

(assert (=> b!2505780 m!2866479))

(assert (=> b!2505780 m!2866481))

(declare-fun m!2866483 () Bool)

(assert (=> b!2505780 m!2866483))

(assert (=> d!716042 m!2866475))

(assert (=> d!716042 m!2866245))

(declare-fun m!2866485 () Bool)

(assert (=> d!716042 m!2866485))

(assert (=> b!2505774 m!2866481))

(assert (=> b!2505774 m!2866481))

(declare-fun m!2866487 () Bool)

(assert (=> b!2505774 m!2866487))

(assert (=> b!2505770 m!2866481))

(assert (=> b!2505770 m!2866481))

(assert (=> b!2505770 m!2866487))

(assert (=> b!2505767 m!2866473))

(assert (=> b!2505432 d!716042))

(declare-fun d!716046 () Bool)

(declare-fun e!1588791 () Bool)

(assert (=> d!716046 e!1588791))

(declare-fun res!1059458 () Bool)

(assert (=> d!716046 (=> res!1059458 e!1588791)))

(assert (=> d!716046 (= res!1059458 (matchR!3431 lt!896569 tl!4068))))

(declare-fun lt!896659 () Unit!43113)

(declare-fun choose!14812 (Regex!7428 Regex!7428 List!29493) Unit!43113)

(assert (=> d!716046 (= lt!896659 (choose!14812 lt!896569 lt!896575 tl!4068))))

(declare-fun e!1588790 () Bool)

(assert (=> d!716046 e!1588790))

(declare-fun res!1059457 () Bool)

(assert (=> d!716046 (=> (not res!1059457) (not e!1588790))))

(assert (=> d!716046 (= res!1059457 (validRegex!3054 lt!896569))))

(assert (=> d!716046 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!123 lt!896569 lt!896575 tl!4068) lt!896659)))

(declare-fun b!2505799 () Bool)

(assert (=> b!2505799 (= e!1588790 (validRegex!3054 lt!896575))))

(declare-fun b!2505800 () Bool)

(assert (=> b!2505800 (= e!1588791 (matchR!3431 lt!896575 tl!4068))))

(assert (= (and d!716046 res!1059457) b!2505799))

(assert (= (and d!716046 (not res!1059458)) b!2505800))

(assert (=> d!716046 m!2866253))

(declare-fun m!2866505 () Bool)

(assert (=> d!716046 m!2866505))

(assert (=> d!716046 m!2866459))

(assert (=> b!2505799 m!2866339))

(assert (=> b!2505800 m!2866217))

(assert (=> b!2505432 d!716046))

(declare-fun d!716050 () Bool)

(declare-fun lt!896660 () Regex!7428)

(assert (=> d!716050 (validRegex!3054 lt!896660)))

(declare-fun e!1588792 () Regex!7428)

(assert (=> d!716050 (= lt!896660 e!1588792)))

(declare-fun c!398979 () Bool)

(assert (=> d!716050 (= c!398979 (or (is-EmptyExpr!7428 (regTwo!15368 r!27340)) (is-EmptyLang!7428 (regTwo!15368 r!27340))))))

(assert (=> d!716050 (validRegex!3054 (regTwo!15368 r!27340))))

(assert (=> d!716050 (= (derivativeStep!1997 (regTwo!15368 r!27340) c!14016) lt!896660)))

(declare-fun bm!155112 () Bool)

(declare-fun call!155120 () Regex!7428)

(declare-fun call!155119 () Regex!7428)

(assert (=> bm!155112 (= call!155120 call!155119)))

(declare-fun b!2505801 () Bool)

(declare-fun e!1588796 () Regex!7428)

(declare-fun e!1588794 () Regex!7428)

(assert (=> b!2505801 (= e!1588796 e!1588794)))

(declare-fun c!398980 () Bool)

(assert (=> b!2505801 (= c!398980 (is-Star!7428 (regTwo!15368 r!27340)))))

(declare-fun b!2505802 () Bool)

(declare-fun c!398977 () Bool)

(assert (=> b!2505802 (= c!398977 (nullable!2345 (regOne!15368 (regTwo!15368 r!27340))))))

(declare-fun e!1588793 () Regex!7428)

(assert (=> b!2505802 (= e!1588794 e!1588793)))

(declare-fun b!2505803 () Bool)

(assert (=> b!2505803 (= e!1588794 (Concat!12124 call!155119 (regTwo!15368 r!27340)))))

(declare-fun b!2505804 () Bool)

(assert (=> b!2505804 (= e!1588793 (Union!7428 (Concat!12124 call!155120 (regTwo!15368 (regTwo!15368 r!27340))) EmptyLang!7428))))

(declare-fun b!2505805 () Bool)

(declare-fun call!155118 () Regex!7428)

(assert (=> b!2505805 (= e!1588793 (Union!7428 (Concat!12124 call!155120 (regTwo!15368 (regTwo!15368 r!27340))) call!155118))))

(declare-fun b!2505806 () Bool)

(assert (=> b!2505806 (= e!1588792 EmptyLang!7428)))

(declare-fun b!2505807 () Bool)

(declare-fun e!1588795 () Regex!7428)

(assert (=> b!2505807 (= e!1588795 (ite (= c!14016 (c!398896 (regTwo!15368 r!27340))) EmptyExpr!7428 EmptyLang!7428))))

(declare-fun bm!155113 () Bool)

(declare-fun call!155117 () Regex!7428)

(assert (=> bm!155113 (= call!155119 call!155117)))

(declare-fun c!398978 () Bool)

(declare-fun bm!155114 () Bool)

(assert (=> bm!155114 (= call!155117 (derivativeStep!1997 (ite c!398978 (regOne!15369 (regTwo!15368 r!27340)) (ite c!398980 (reg!7757 (regTwo!15368 r!27340)) (regOne!15368 (regTwo!15368 r!27340)))) c!14016))))

(declare-fun b!2505808 () Bool)

(assert (=> b!2505808 (= e!1588796 (Union!7428 call!155117 call!155118))))

(declare-fun b!2505809 () Bool)

(assert (=> b!2505809 (= e!1588792 e!1588795)))

(declare-fun c!398981 () Bool)

(assert (=> b!2505809 (= c!398981 (is-ElementMatch!7428 (regTwo!15368 r!27340)))))

(declare-fun b!2505810 () Bool)

(assert (=> b!2505810 (= c!398978 (is-Union!7428 (regTwo!15368 r!27340)))))

(assert (=> b!2505810 (= e!1588795 e!1588796)))

(declare-fun bm!155115 () Bool)

(assert (=> bm!155115 (= call!155118 (derivativeStep!1997 (ite c!398978 (regTwo!15369 (regTwo!15368 r!27340)) (regTwo!15368 (regTwo!15368 r!27340))) c!14016))))

(assert (= (and d!716050 c!398979) b!2505806))

(assert (= (and d!716050 (not c!398979)) b!2505809))

(assert (= (and b!2505809 c!398981) b!2505807))

(assert (= (and b!2505809 (not c!398981)) b!2505810))

(assert (= (and b!2505810 c!398978) b!2505808))

(assert (= (and b!2505810 (not c!398978)) b!2505801))

(assert (= (and b!2505801 c!398980) b!2505803))

(assert (= (and b!2505801 (not c!398980)) b!2505802))

(assert (= (and b!2505802 c!398977) b!2505805))

(assert (= (and b!2505802 (not c!398977)) b!2505804))

(assert (= (or b!2505805 b!2505804) bm!155112))

(assert (= (or b!2505803 bm!155112) bm!155113))

(assert (= (or b!2505808 b!2505805) bm!155115))

(assert (= (or b!2505808 bm!155113) bm!155114))

(declare-fun m!2866507 () Bool)

(assert (=> d!716050 m!2866507))

(assert (=> d!716050 m!2866219))

(declare-fun m!2866509 () Bool)

(assert (=> b!2505802 m!2866509))

(declare-fun m!2866511 () Bool)

(assert (=> bm!155114 m!2866511))

(declare-fun m!2866513 () Bool)

(assert (=> bm!155115 m!2866513))

(assert (=> b!2505432 d!716050))

(declare-fun d!716052 () Bool)

(declare-fun lt!896661 () Regex!7428)

(assert (=> d!716052 (validRegex!3054 lt!896661)))

(declare-fun e!1588797 () Regex!7428)

(assert (=> d!716052 (= lt!896661 e!1588797)))

(declare-fun c!398984 () Bool)

(assert (=> d!716052 (= c!398984 (or (is-EmptyExpr!7428 (regOne!15368 r!27340)) (is-EmptyLang!7428 (regOne!15368 r!27340))))))

(assert (=> d!716052 (validRegex!3054 (regOne!15368 r!27340))))

(assert (=> d!716052 (= (derivativeStep!1997 (regOne!15368 r!27340) c!14016) lt!896661)))

(declare-fun bm!155116 () Bool)

(declare-fun call!155124 () Regex!7428)

(declare-fun call!155123 () Regex!7428)

(assert (=> bm!155116 (= call!155124 call!155123)))

(declare-fun b!2505811 () Bool)

(declare-fun e!1588801 () Regex!7428)

(declare-fun e!1588799 () Regex!7428)

(assert (=> b!2505811 (= e!1588801 e!1588799)))

(declare-fun c!398985 () Bool)

(assert (=> b!2505811 (= c!398985 (is-Star!7428 (regOne!15368 r!27340)))))

(declare-fun b!2505812 () Bool)

(declare-fun c!398982 () Bool)

(assert (=> b!2505812 (= c!398982 (nullable!2345 (regOne!15368 (regOne!15368 r!27340))))))

(declare-fun e!1588798 () Regex!7428)

(assert (=> b!2505812 (= e!1588799 e!1588798)))

(declare-fun b!2505813 () Bool)

(assert (=> b!2505813 (= e!1588799 (Concat!12124 call!155123 (regOne!15368 r!27340)))))

(declare-fun b!2505814 () Bool)

(assert (=> b!2505814 (= e!1588798 (Union!7428 (Concat!12124 call!155124 (regTwo!15368 (regOne!15368 r!27340))) EmptyLang!7428))))

(declare-fun b!2505815 () Bool)

(declare-fun call!155122 () Regex!7428)

(assert (=> b!2505815 (= e!1588798 (Union!7428 (Concat!12124 call!155124 (regTwo!15368 (regOne!15368 r!27340))) call!155122))))

(declare-fun b!2505816 () Bool)

(assert (=> b!2505816 (= e!1588797 EmptyLang!7428)))

(declare-fun b!2505817 () Bool)

(declare-fun e!1588800 () Regex!7428)

(assert (=> b!2505817 (= e!1588800 (ite (= c!14016 (c!398896 (regOne!15368 r!27340))) EmptyExpr!7428 EmptyLang!7428))))

(declare-fun bm!155117 () Bool)

(declare-fun call!155121 () Regex!7428)

(assert (=> bm!155117 (= call!155123 call!155121)))

(declare-fun bm!155118 () Bool)

(declare-fun c!398983 () Bool)

(assert (=> bm!155118 (= call!155121 (derivativeStep!1997 (ite c!398983 (regOne!15369 (regOne!15368 r!27340)) (ite c!398985 (reg!7757 (regOne!15368 r!27340)) (regOne!15368 (regOne!15368 r!27340)))) c!14016))))

(declare-fun b!2505818 () Bool)

(assert (=> b!2505818 (= e!1588801 (Union!7428 call!155121 call!155122))))

(declare-fun b!2505819 () Bool)

(assert (=> b!2505819 (= e!1588797 e!1588800)))

(declare-fun c!398986 () Bool)

(assert (=> b!2505819 (= c!398986 (is-ElementMatch!7428 (regOne!15368 r!27340)))))

(declare-fun b!2505820 () Bool)

(assert (=> b!2505820 (= c!398983 (is-Union!7428 (regOne!15368 r!27340)))))

(assert (=> b!2505820 (= e!1588800 e!1588801)))

(declare-fun bm!155119 () Bool)

(assert (=> bm!155119 (= call!155122 (derivativeStep!1997 (ite c!398983 (regTwo!15369 (regOne!15368 r!27340)) (regTwo!15368 (regOne!15368 r!27340))) c!14016))))

(assert (= (and d!716052 c!398984) b!2505816))

(assert (= (and d!716052 (not c!398984)) b!2505819))

(assert (= (and b!2505819 c!398986) b!2505817))

(assert (= (and b!2505819 (not c!398986)) b!2505820))

(assert (= (and b!2505820 c!398983) b!2505818))

(assert (= (and b!2505820 (not c!398983)) b!2505811))

(assert (= (and b!2505811 c!398985) b!2505813))

(assert (= (and b!2505811 (not c!398985)) b!2505812))

(assert (= (and b!2505812 c!398982) b!2505815))

(assert (= (and b!2505812 (not c!398982)) b!2505814))

(assert (= (or b!2505815 b!2505814) bm!155116))

(assert (= (or b!2505813 bm!155116) bm!155117))

(assert (= (or b!2505818 b!2505815) bm!155119))

(assert (= (or b!2505818 bm!155117) bm!155118))

(declare-fun m!2866515 () Bool)

(assert (=> d!716052 m!2866515))

(declare-fun m!2866517 () Bool)

(assert (=> d!716052 m!2866517))

(declare-fun m!2866519 () Bool)

(assert (=> b!2505812 m!2866519))

(declare-fun m!2866521 () Bool)

(assert (=> bm!155118 m!2866521))

(declare-fun m!2866523 () Bool)

(assert (=> bm!155119 m!2866523))

(assert (=> b!2505432 d!716052))

(declare-fun d!716054 () Bool)

(declare-fun lt!896662 () Regex!7428)

(assert (=> d!716054 (validRegex!3054 lt!896662)))

(declare-fun e!1588802 () Regex!7428)

(assert (=> d!716054 (= lt!896662 e!1588802)))

(declare-fun c!398987 () Bool)

(assert (=> d!716054 (= c!398987 (is-Cons!29393 tl!4068))))

(assert (=> d!716054 (validRegex!3054 lt!896572)))

(assert (=> d!716054 (= (derivative!123 lt!896572 tl!4068) lt!896662)))

(declare-fun b!2505821 () Bool)

(assert (=> b!2505821 (= e!1588802 (derivative!123 (derivativeStep!1997 lt!896572 (h!34813 tl!4068)) (t!211192 tl!4068)))))

(declare-fun b!2505822 () Bool)

(assert (=> b!2505822 (= e!1588802 lt!896572)))

(assert (= (and d!716054 c!398987) b!2505821))

(assert (= (and d!716054 (not c!398987)) b!2505822))

(declare-fun m!2866525 () Bool)

(assert (=> d!716054 m!2866525))

(assert (=> d!716054 m!2866447))

(declare-fun m!2866527 () Bool)

(assert (=> b!2505821 m!2866527))

(assert (=> b!2505821 m!2866527))

(declare-fun m!2866529 () Bool)

(assert (=> b!2505821 m!2866529))

(assert (=> b!2505432 d!716054))

(declare-fun d!716056 () Bool)

(declare-fun e!1588804 () Bool)

(assert (=> d!716056 e!1588804))

(declare-fun c!398990 () Bool)

(assert (=> d!716056 (= c!398990 (is-EmptyExpr!7428 lt!896572))))

(declare-fun lt!896663 () Bool)

(declare-fun e!1588809 () Bool)

(assert (=> d!716056 (= lt!896663 e!1588809)))

(declare-fun c!398989 () Bool)

(assert (=> d!716056 (= c!398989 (isEmpty!16861 tl!4068))))

(assert (=> d!716056 (validRegex!3054 lt!896572)))

(assert (=> d!716056 (= (matchR!3431 lt!896572 tl!4068) lt!896663)))

(declare-fun b!2505823 () Bool)

(declare-fun e!1588803 () Bool)

(assert (=> b!2505823 (= e!1588803 (= (head!5713 tl!4068) (c!398896 lt!896572)))))

(declare-fun b!2505824 () Bool)

(assert (=> b!2505824 (= e!1588809 (nullable!2345 lt!896572))))

(declare-fun b!2505825 () Bool)

(declare-fun e!1588807 () Bool)

(assert (=> b!2505825 (= e!1588807 (not lt!896663))))

(declare-fun b!2505826 () Bool)

(declare-fun res!1059464 () Bool)

(assert (=> b!2505826 (=> (not res!1059464) (not e!1588803))))

(assert (=> b!2505826 (= res!1059464 (isEmpty!16861 (tail!3990 tl!4068)))))

(declare-fun b!2505827 () Bool)

(declare-fun e!1588805 () Bool)

(assert (=> b!2505827 (= e!1588805 (not (= (head!5713 tl!4068) (c!398896 lt!896572))))))

(declare-fun b!2505828 () Bool)

(declare-fun e!1588806 () Bool)

(declare-fun e!1588808 () Bool)

(assert (=> b!2505828 (= e!1588806 e!1588808)))

(declare-fun res!1059462 () Bool)

(assert (=> b!2505828 (=> (not res!1059462) (not e!1588808))))

(assert (=> b!2505828 (= res!1059462 (not lt!896663))))

(declare-fun b!2505829 () Bool)

(assert (=> b!2505829 (= e!1588804 e!1588807)))

(declare-fun c!398988 () Bool)

(assert (=> b!2505829 (= c!398988 (is-EmptyLang!7428 lt!896572))))

(declare-fun b!2505830 () Bool)

(declare-fun res!1059466 () Bool)

(assert (=> b!2505830 (=> res!1059466 e!1588805)))

(assert (=> b!2505830 (= res!1059466 (not (isEmpty!16861 (tail!3990 tl!4068))))))

(declare-fun b!2505831 () Bool)

(declare-fun res!1059460 () Bool)

(assert (=> b!2505831 (=> res!1059460 e!1588806)))

(assert (=> b!2505831 (= res!1059460 (not (is-ElementMatch!7428 lt!896572)))))

(assert (=> b!2505831 (= e!1588807 e!1588806)))

(declare-fun b!2505832 () Bool)

(declare-fun res!1059463 () Bool)

(assert (=> b!2505832 (=> res!1059463 e!1588806)))

(assert (=> b!2505832 (= res!1059463 e!1588803)))

(declare-fun res!1059465 () Bool)

(assert (=> b!2505832 (=> (not res!1059465) (not e!1588803))))

(assert (=> b!2505832 (= res!1059465 lt!896663)))

(declare-fun bm!155120 () Bool)

(declare-fun call!155125 () Bool)

(assert (=> bm!155120 (= call!155125 (isEmpty!16861 tl!4068))))

(declare-fun b!2505833 () Bool)

(assert (=> b!2505833 (= e!1588804 (= lt!896663 call!155125))))

(declare-fun b!2505834 () Bool)

(declare-fun res!1059461 () Bool)

(assert (=> b!2505834 (=> (not res!1059461) (not e!1588803))))

(assert (=> b!2505834 (= res!1059461 (not call!155125))))

(declare-fun b!2505835 () Bool)

(assert (=> b!2505835 (= e!1588808 e!1588805)))

(declare-fun res!1059459 () Bool)

(assert (=> b!2505835 (=> res!1059459 e!1588805)))

(assert (=> b!2505835 (= res!1059459 call!155125)))

(declare-fun b!2505836 () Bool)

(assert (=> b!2505836 (= e!1588809 (matchR!3431 (derivativeStep!1997 lt!896572 (head!5713 tl!4068)) (tail!3990 tl!4068)))))

(assert (= (and d!716056 c!398989) b!2505824))

(assert (= (and d!716056 (not c!398989)) b!2505836))

(assert (= (and d!716056 c!398990) b!2505833))

(assert (= (and d!716056 (not c!398990)) b!2505829))

(assert (= (and b!2505829 c!398988) b!2505825))

(assert (= (and b!2505829 (not c!398988)) b!2505831))

(assert (= (and b!2505831 (not res!1059460)) b!2505832))

(assert (= (and b!2505832 res!1059465) b!2505834))

(assert (= (and b!2505834 res!1059461) b!2505826))

(assert (= (and b!2505826 res!1059464) b!2505823))

(assert (= (and b!2505832 (not res!1059463)) b!2505828))

(assert (= (and b!2505828 res!1059462) b!2505835))

(assert (= (and b!2505835 (not res!1059459)) b!2505830))

(assert (= (and b!2505830 (not res!1059466)) b!2505827))

(assert (= (or b!2505833 b!2505834 b!2505835) bm!155120))

(assert (=> b!2505827 m!2866327))

(assert (=> bm!155120 m!2866329))

(declare-fun m!2866531 () Bool)

(assert (=> b!2505824 m!2866531))

(assert (=> b!2505836 m!2866327))

(assert (=> b!2505836 m!2866327))

(declare-fun m!2866533 () Bool)

(assert (=> b!2505836 m!2866533))

(assert (=> b!2505836 m!2866335))

(assert (=> b!2505836 m!2866533))

(assert (=> b!2505836 m!2866335))

(declare-fun m!2866535 () Bool)

(assert (=> b!2505836 m!2866535))

(assert (=> d!716056 m!2866329))

(assert (=> d!716056 m!2866447))

(assert (=> b!2505830 m!2866335))

(assert (=> b!2505830 m!2866335))

(assert (=> b!2505830 m!2866341))

(assert (=> b!2505826 m!2866335))

(assert (=> b!2505826 m!2866335))

(assert (=> b!2505826 m!2866341))

(assert (=> b!2505823 m!2866327))

(assert (=> b!2505432 d!716056))

(declare-fun d!716058 () Bool)

(assert (=> d!716058 (= (nullable!2345 (regOne!15368 r!27340)) (nullableFct!609 (regOne!15368 r!27340)))))

(declare-fun bs!468666 () Bool)

(assert (= bs!468666 d!716058))

(declare-fun m!2866537 () Bool)

(assert (=> bs!468666 m!2866537))

(assert (=> b!2505433 d!716058))

(declare-fun d!716060 () Bool)

(declare-fun e!1588813 () Bool)

(assert (=> d!716060 e!1588813))

(declare-fun c!398995 () Bool)

(assert (=> d!716060 (= c!398995 (is-EmptyExpr!7428 lt!896577))))

(declare-fun lt!896666 () Bool)

(declare-fun e!1588818 () Bool)

(assert (=> d!716060 (= lt!896666 e!1588818)))

(declare-fun c!398994 () Bool)

(assert (=> d!716060 (= c!398994 (isEmpty!16861 (_1!17259 lt!896573)))))

(assert (=> d!716060 (validRegex!3054 lt!896577)))

(assert (=> d!716060 (= (matchR!3431 lt!896577 (_1!17259 lt!896573)) lt!896666)))

(declare-fun b!2505841 () Bool)

(declare-fun e!1588812 () Bool)

(assert (=> b!2505841 (= e!1588812 (= (head!5713 (_1!17259 lt!896573)) (c!398896 lt!896577)))))

(declare-fun b!2505842 () Bool)

(assert (=> b!2505842 (= e!1588818 (nullable!2345 lt!896577))))

(declare-fun b!2505843 () Bool)

(declare-fun e!1588816 () Bool)

(assert (=> b!2505843 (= e!1588816 (not lt!896666))))

(declare-fun b!2505844 () Bool)

(declare-fun res!1059472 () Bool)

(assert (=> b!2505844 (=> (not res!1059472) (not e!1588812))))

(assert (=> b!2505844 (= res!1059472 (isEmpty!16861 (tail!3990 (_1!17259 lt!896573))))))

(declare-fun b!2505845 () Bool)

(declare-fun e!1588814 () Bool)

(assert (=> b!2505845 (= e!1588814 (not (= (head!5713 (_1!17259 lt!896573)) (c!398896 lt!896577))))))

(declare-fun b!2505846 () Bool)

(declare-fun e!1588815 () Bool)

(declare-fun e!1588817 () Bool)

(assert (=> b!2505846 (= e!1588815 e!1588817)))

(declare-fun res!1059470 () Bool)

(assert (=> b!2505846 (=> (not res!1059470) (not e!1588817))))

(assert (=> b!2505846 (= res!1059470 (not lt!896666))))

(declare-fun b!2505847 () Bool)

(assert (=> b!2505847 (= e!1588813 e!1588816)))

(declare-fun c!398993 () Bool)

(assert (=> b!2505847 (= c!398993 (is-EmptyLang!7428 lt!896577))))

(declare-fun b!2505848 () Bool)

(declare-fun res!1059474 () Bool)

(assert (=> b!2505848 (=> res!1059474 e!1588814)))

(assert (=> b!2505848 (= res!1059474 (not (isEmpty!16861 (tail!3990 (_1!17259 lt!896573)))))))

(declare-fun b!2505849 () Bool)

(declare-fun res!1059468 () Bool)

(assert (=> b!2505849 (=> res!1059468 e!1588815)))

(assert (=> b!2505849 (= res!1059468 (not (is-ElementMatch!7428 lt!896577)))))

(assert (=> b!2505849 (= e!1588816 e!1588815)))

(declare-fun b!2505850 () Bool)

(declare-fun res!1059471 () Bool)

(assert (=> b!2505850 (=> res!1059471 e!1588815)))

(assert (=> b!2505850 (= res!1059471 e!1588812)))

(declare-fun res!1059473 () Bool)

(assert (=> b!2505850 (=> (not res!1059473) (not e!1588812))))

(assert (=> b!2505850 (= res!1059473 lt!896666)))

(declare-fun bm!155121 () Bool)

(declare-fun call!155126 () Bool)

(assert (=> bm!155121 (= call!155126 (isEmpty!16861 (_1!17259 lt!896573)))))

(declare-fun b!2505851 () Bool)

(assert (=> b!2505851 (= e!1588813 (= lt!896666 call!155126))))

(declare-fun b!2505852 () Bool)

(declare-fun res!1059469 () Bool)

(assert (=> b!2505852 (=> (not res!1059469) (not e!1588812))))

(assert (=> b!2505852 (= res!1059469 (not call!155126))))

(declare-fun b!2505853 () Bool)

(assert (=> b!2505853 (= e!1588817 e!1588814)))

(declare-fun res!1059467 () Bool)

(assert (=> b!2505853 (=> res!1059467 e!1588814)))

(assert (=> b!2505853 (= res!1059467 call!155126)))

(declare-fun b!2505854 () Bool)

(assert (=> b!2505854 (= e!1588818 (matchR!3431 (derivativeStep!1997 lt!896577 (head!5713 (_1!17259 lt!896573))) (tail!3990 (_1!17259 lt!896573))))))

(assert (= (and d!716060 c!398994) b!2505842))

(assert (= (and d!716060 (not c!398994)) b!2505854))

(assert (= (and d!716060 c!398995) b!2505851))

(assert (= (and d!716060 (not c!398995)) b!2505847))

(assert (= (and b!2505847 c!398993) b!2505843))

(assert (= (and b!2505847 (not c!398993)) b!2505849))

(assert (= (and b!2505849 (not res!1059468)) b!2505850))

(assert (= (and b!2505850 res!1059473) b!2505852))

(assert (= (and b!2505852 res!1059469) b!2505844))

(assert (= (and b!2505844 res!1059472) b!2505841))

(assert (= (and b!2505850 (not res!1059471)) b!2505846))

(assert (= (and b!2505846 res!1059470) b!2505853))

(assert (= (and b!2505853 (not res!1059467)) b!2505848))

(assert (= (and b!2505848 (not res!1059474)) b!2505845))

(assert (= (or b!2505851 b!2505852 b!2505853) bm!155121))

(declare-fun m!2866539 () Bool)

(assert (=> b!2505845 m!2866539))

(declare-fun m!2866541 () Bool)

(assert (=> bm!155121 m!2866541))

(declare-fun m!2866543 () Bool)

(assert (=> b!2505842 m!2866543))

(assert (=> b!2505854 m!2866539))

(assert (=> b!2505854 m!2866539))

(declare-fun m!2866545 () Bool)

(assert (=> b!2505854 m!2866545))

(declare-fun m!2866547 () Bool)

(assert (=> b!2505854 m!2866547))

(assert (=> b!2505854 m!2866545))

(assert (=> b!2505854 m!2866547))

(declare-fun m!2866549 () Bool)

(assert (=> b!2505854 m!2866549))

(assert (=> d!716060 m!2866541))

(assert (=> d!716060 m!2866361))

(assert (=> b!2505848 m!2866547))

(assert (=> b!2505848 m!2866547))

(declare-fun m!2866551 () Bool)

(assert (=> b!2505848 m!2866551))

(assert (=> b!2505844 m!2866547))

(assert (=> b!2505844 m!2866547))

(assert (=> b!2505844 m!2866551))

(assert (=> b!2505841 m!2866539))

(assert (=> b!2505438 d!716060))

(declare-fun b!2505866 () Bool)

(declare-fun e!1588821 () Bool)

(declare-fun tp!801707 () Bool)

(declare-fun tp!801705 () Bool)

(assert (=> b!2505866 (= e!1588821 (and tp!801707 tp!801705))))

(declare-fun b!2505867 () Bool)

(declare-fun tp!801709 () Bool)

(assert (=> b!2505867 (= e!1588821 tp!801709)))

(assert (=> b!2505435 (= tp!801673 e!1588821)))

(declare-fun b!2505868 () Bool)

(declare-fun tp!801706 () Bool)

(declare-fun tp!801708 () Bool)

(assert (=> b!2505868 (= e!1588821 (and tp!801706 tp!801708))))

(declare-fun b!2505865 () Bool)

(assert (=> b!2505865 (= e!1588821 tp_is_empty!12711)))

(assert (= (and b!2505435 (is-ElementMatch!7428 (regOne!15369 r!27340))) b!2505865))

(assert (= (and b!2505435 (is-Concat!12124 (regOne!15369 r!27340))) b!2505866))

(assert (= (and b!2505435 (is-Star!7428 (regOne!15369 r!27340))) b!2505867))

(assert (= (and b!2505435 (is-Union!7428 (regOne!15369 r!27340))) b!2505868))

(declare-fun b!2505872 () Bool)

(declare-fun e!1588823 () Bool)

(declare-fun tp!801712 () Bool)

(declare-fun tp!801710 () Bool)

(assert (=> b!2505872 (= e!1588823 (and tp!801712 tp!801710))))

(declare-fun b!2505873 () Bool)

(declare-fun tp!801714 () Bool)

(assert (=> b!2505873 (= e!1588823 tp!801714)))

(assert (=> b!2505435 (= tp!801671 e!1588823)))

(declare-fun b!2505874 () Bool)

(declare-fun tp!801711 () Bool)

(declare-fun tp!801713 () Bool)

(assert (=> b!2505874 (= e!1588823 (and tp!801711 tp!801713))))

(declare-fun b!2505871 () Bool)

(assert (=> b!2505871 (= e!1588823 tp_is_empty!12711)))

(assert (= (and b!2505435 (is-ElementMatch!7428 (regTwo!15369 r!27340))) b!2505871))

(assert (= (and b!2505435 (is-Concat!12124 (regTwo!15369 r!27340))) b!2505872))

(assert (= (and b!2505435 (is-Star!7428 (regTwo!15369 r!27340))) b!2505873))

(assert (= (and b!2505435 (is-Union!7428 (regTwo!15369 r!27340))) b!2505874))

(declare-fun b!2505876 () Bool)

(declare-fun e!1588824 () Bool)

(declare-fun tp!801717 () Bool)

(declare-fun tp!801715 () Bool)

(assert (=> b!2505876 (= e!1588824 (and tp!801717 tp!801715))))

(declare-fun b!2505877 () Bool)

(declare-fun tp!801719 () Bool)

(assert (=> b!2505877 (= e!1588824 tp!801719)))

(assert (=> b!2505436 (= tp!801674 e!1588824)))

(declare-fun b!2505878 () Bool)

(declare-fun tp!801716 () Bool)

(declare-fun tp!801718 () Bool)

(assert (=> b!2505878 (= e!1588824 (and tp!801716 tp!801718))))

(declare-fun b!2505875 () Bool)

(assert (=> b!2505875 (= e!1588824 tp_is_empty!12711)))

(assert (= (and b!2505436 (is-ElementMatch!7428 (reg!7757 r!27340))) b!2505875))

(assert (= (and b!2505436 (is-Concat!12124 (reg!7757 r!27340))) b!2505876))

(assert (= (and b!2505436 (is-Star!7428 (reg!7757 r!27340))) b!2505877))

(assert (= (and b!2505436 (is-Union!7428 (reg!7757 r!27340))) b!2505878))

(declare-fun b!2505880 () Bool)

(declare-fun e!1588825 () Bool)

(declare-fun tp!801722 () Bool)

(declare-fun tp!801720 () Bool)

(assert (=> b!2505880 (= e!1588825 (and tp!801722 tp!801720))))

(declare-fun b!2505881 () Bool)

(declare-fun tp!801724 () Bool)

(assert (=> b!2505881 (= e!1588825 tp!801724)))

(assert (=> b!2505441 (= tp!801676 e!1588825)))

(declare-fun b!2505882 () Bool)

(declare-fun tp!801721 () Bool)

(declare-fun tp!801723 () Bool)

(assert (=> b!2505882 (= e!1588825 (and tp!801721 tp!801723))))

(declare-fun b!2505879 () Bool)

(assert (=> b!2505879 (= e!1588825 tp_is_empty!12711)))

(assert (= (and b!2505441 (is-ElementMatch!7428 (regOne!15368 r!27340))) b!2505879))

(assert (= (and b!2505441 (is-Concat!12124 (regOne!15368 r!27340))) b!2505880))

(assert (= (and b!2505441 (is-Star!7428 (regOne!15368 r!27340))) b!2505881))

(assert (= (and b!2505441 (is-Union!7428 (regOne!15368 r!27340))) b!2505882))

(declare-fun b!2505884 () Bool)

(declare-fun e!1588826 () Bool)

(declare-fun tp!801727 () Bool)

(declare-fun tp!801725 () Bool)

(assert (=> b!2505884 (= e!1588826 (and tp!801727 tp!801725))))

(declare-fun b!2505885 () Bool)

(declare-fun tp!801729 () Bool)

(assert (=> b!2505885 (= e!1588826 tp!801729)))

(assert (=> b!2505441 (= tp!801672 e!1588826)))

(declare-fun b!2505886 () Bool)

(declare-fun tp!801726 () Bool)

(declare-fun tp!801728 () Bool)

(assert (=> b!2505886 (= e!1588826 (and tp!801726 tp!801728))))

(declare-fun b!2505883 () Bool)

(assert (=> b!2505883 (= e!1588826 tp_is_empty!12711)))

(assert (= (and b!2505441 (is-ElementMatch!7428 (regTwo!15368 r!27340))) b!2505883))

(assert (= (and b!2505441 (is-Concat!12124 (regTwo!15368 r!27340))) b!2505884))

(assert (= (and b!2505441 (is-Star!7428 (regTwo!15368 r!27340))) b!2505885))

(assert (= (and b!2505441 (is-Union!7428 (regTwo!15368 r!27340))) b!2505886))

(declare-fun b!2505905 () Bool)

(declare-fun e!1588836 () Bool)

(declare-fun tp!801732 () Bool)

(assert (=> b!2505905 (= e!1588836 (and tp_is_empty!12711 tp!801732))))

(assert (=> b!2505437 (= tp!801675 e!1588836)))

(assert (= (and b!2505437 (is-Cons!29393 (t!211192 tl!4068))) b!2505905))

(push 1)

(assert (not b!2505760))

(assert (not bm!155093))

(assert (not bm!155120))

(assert (not b!2505866))

(assert (not d!716022))

(assert (not bm!155110))

(assert (not b!2505577))

(assert tp_is_empty!12711)

(assert (not d!716036))

(assert (not d!716052))

(assert (not d!716060))

(assert (not b!2505905))

(assert (not b!2505519))

(assert (not bm!155114))

(assert (not d!716042))

(assert (not b!2505771))

(assert (not b!2505574))

(assert (not b!2505878))

(assert (not b!2505581))

(assert (not b!2505767))

(assert (not b!2505848))

(assert (not b!2505868))

(assert (not b!2505884))

(assert (not d!716040))

(assert (not bm!155107))

(assert (not b!2505841))

(assert (not b!2505802))

(assert (not d!716046))

(assert (not b!2505830))

(assert (not b!2505753))

(assert (not b!2505623))

(assert (not b!2505575))

(assert (not b!2505799))

(assert (not b!2505619))

(assert (not d!716032))

(assert (not b!2505766))

(assert (not b!2505757))

(assert (not b!2505845))

(assert (not d!716024))

(assert (not d!716056))

(assert (not b!2505877))

(assert (not bm!155121))

(assert (not b!2505842))

(assert (not b!2505621))

(assert (not b!2505872))

(assert (not b!2505880))

(assert (not b!2505881))

(assert (not b!2505874))

(assert (not bm!155081))

(assert (not b!2505663))

(assert (not bm!155090))

(assert (not b!2505679))

(assert (not b!2505754))

(assert (not b!2505844))

(assert (not b!2505882))

(assert (not d!716034))

(assert (not b!2505578))

(assert (not d!716058))

(assert (not b!2505800))

(assert (not b!2505886))

(assert (not b!2505812))

(assert (not bm!155119))

(assert (not b!2505780))

(assert (not bm!155079))

(assert (not b!2505756))

(assert (not b!2505821))

(assert (not b!2505770))

(assert (not b!2505873))

(assert (not bm!155106))

(assert (not d!716018))

(assert (not b!2505824))

(assert (not b!2505854))

(assert (not d!716054))

(assert (not d!716038))

(assert (not b!2505823))

(assert (not bm!155109))

(assert (not b!2505774))

(assert (not bm!155091))

(assert (not b!2505768))

(assert (not d!716004))

(assert (not b!2505587))

(assert (not b!2505836))

(assert (not bm!155115))

(assert (not b!2505876))

(assert (not b!2505622))

(assert (not b!2505826))

(assert (not b!2505666))

(assert (not d!716050))

(assert (not b!2505730))

(assert (not bm!155118))

(assert (not b!2505620))

(assert (not b!2505664))

(assert (not b!2505624))

(assert (not b!2505867))

(assert (not b!2505827))

(assert (not d!716014))

(assert (not b!2505885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

