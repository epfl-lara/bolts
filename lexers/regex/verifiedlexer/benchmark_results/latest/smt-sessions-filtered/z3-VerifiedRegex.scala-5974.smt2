; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292504 () Bool)

(assert start!292504)

(declare-fun b!3065526 () Bool)

(assert (=> b!3065526 true))

(assert (=> b!3065526 true))

(declare-fun lambda!113986 () Int)

(declare-fun lambda!113985 () Int)

(assert (=> b!3065526 (not (= lambda!113986 lambda!113985))))

(assert (=> b!3065526 true))

(assert (=> b!3065526 true))

(declare-fun b!3065520 () Bool)

(declare-fun e!1919102 () Bool)

(declare-fun tp!968000 () Bool)

(declare-fun tp!967998 () Bool)

(assert (=> b!3065520 (= e!1919102 (and tp!968000 tp!967998))))

(declare-fun b!3065521 () Bool)

(declare-fun e!1919103 () Bool)

(declare-fun e!1919104 () Bool)

(assert (=> b!3065521 (= e!1919103 e!1919104)))

(declare-fun res!1258453 () Bool)

(assert (=> b!3065521 (=> res!1258453 e!1919104)))

(declare-fun lt!1050679 () Bool)

(assert (=> b!3065521 (= res!1258453 (not lt!1050679))))

(declare-datatypes ((C!19184 0))(
  ( (C!19185 (val!11628 Int)) )
))
(declare-datatypes ((Regex!9499 0))(
  ( (ElementMatch!9499 (c!509203 C!19184)) (Concat!14820 (regOne!19510 Regex!9499) (regTwo!19510 Regex!9499)) (EmptyExpr!9499) (Star!9499 (reg!9828 Regex!9499)) (EmptyLang!9499) (Union!9499 (regOne!19511 Regex!9499) (regTwo!19511 Regex!9499)) )
))
(declare-fun lt!1050681 () Regex!9499)

(declare-datatypes ((List!35364 0))(
  ( (Nil!35240) (Cons!35240 (h!40660 C!19184) (t!234429 List!35364)) )
))
(declare-fun s!11993 () List!35364)

(declare-fun matchR!4381 (Regex!9499 List!35364) Bool)

(assert (=> b!3065521 (= lt!1050679 (matchR!4381 lt!1050681 s!11993))))

(declare-fun r!17423 () Regex!9499)

(assert (=> b!3065521 (= lt!1050679 (matchR!4381 (regTwo!19510 r!17423) s!11993))))

(declare-datatypes ((Unit!49437 0))(
  ( (Unit!49438) )
))
(declare-fun lt!1050676 () Unit!49437)

(declare-fun lemmaSimplifySound!284 (Regex!9499 List!35364) Unit!49437)

(assert (=> b!3065521 (= lt!1050676 (lemmaSimplifySound!284 (regTwo!19510 r!17423) s!11993))))

(declare-fun b!3065522 () Bool)

(declare-fun e!1919100 () Bool)

(declare-fun tp_is_empty!16561 () Bool)

(declare-fun tp!967999 () Bool)

(assert (=> b!3065522 (= e!1919100 (and tp_is_empty!16561 tp!967999))))

(declare-fun b!3065523 () Bool)

(declare-fun e!1919101 () Bool)

(declare-fun e!1919105 () Bool)

(assert (=> b!3065523 (= e!1919101 (not e!1919105))))

(declare-fun res!1258460 () Bool)

(assert (=> b!3065523 (=> res!1258460 e!1919105)))

(declare-fun lt!1050680 () Bool)

(get-info :version)

(assert (=> b!3065523 (= res!1258460 (or lt!1050680 (not ((_ is Concat!14820) r!17423))))))

(declare-fun matchRSpec!1636 (Regex!9499 List!35364) Bool)

(assert (=> b!3065523 (= lt!1050680 (matchRSpec!1636 r!17423 s!11993))))

(assert (=> b!3065523 (= lt!1050680 (matchR!4381 r!17423 s!11993))))

(declare-fun lt!1050678 () Unit!49437)

(declare-fun mainMatchTheorem!1636 (Regex!9499 List!35364) Unit!49437)

(assert (=> b!3065523 (= lt!1050678 (mainMatchTheorem!1636 r!17423 s!11993))))

(declare-fun b!3065524 () Bool)

(assert (=> b!3065524 (= e!1919102 tp_is_empty!16561)))

(declare-fun b!3065525 () Bool)

(declare-fun res!1258455 () Bool)

(assert (=> b!3065525 (=> res!1258455 e!1919104)))

(assert (=> b!3065525 (= res!1258455 (not (matchR!4381 (regOne!19510 r!17423) Nil!35240)))))

(assert (=> b!3065526 (= e!1919104 false)))

(declare-fun Exists!1762 (Int) Bool)

(assert (=> b!3065526 (= (Exists!1762 lambda!113985) (Exists!1762 lambda!113986))))

(declare-fun lt!1050677 () Unit!49437)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!558 (Regex!9499 Regex!9499 List!35364) Unit!49437)

(assert (=> b!3065526 (= lt!1050677 (lemmaExistCutMatchRandMatchRSpecEquivalent!558 (regOne!19510 r!17423) (regTwo!19510 r!17423) s!11993))))

(assert (=> b!3065526 (Exists!1762 lambda!113985)))

(declare-fun lt!1050682 () Unit!49437)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!984 (Regex!9499 Regex!9499 List!35364) Unit!49437)

(assert (=> b!3065526 (= lt!1050682 (lemmaFindConcatSeparationEquivalentToExists!984 (regOne!19510 r!17423) (regTwo!19510 r!17423) s!11993))))

(declare-datatypes ((tuple2!34168 0))(
  ( (tuple2!34169 (_1!20216 List!35364) (_2!20216 List!35364)) )
))
(declare-datatypes ((Option!6816 0))(
  ( (None!6815) (Some!6815 (v!34949 tuple2!34168)) )
))
(declare-fun isDefined!5367 (Option!6816) Bool)

(declare-fun findConcatSeparation!1210 (Regex!9499 Regex!9499 List!35364 List!35364 List!35364) Option!6816)

(assert (=> b!3065526 (isDefined!5367 (findConcatSeparation!1210 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993))))

(declare-fun lt!1050684 () Unit!49437)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!30 (Regex!9499 Regex!9499 List!35364 List!35364 List!35364 List!35364 List!35364) Unit!49437)

(assert (=> b!3065526 (= lt!1050684 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!30 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993 Nil!35240 s!11993))))

(declare-fun b!3065527 () Bool)

(declare-fun res!1258459 () Bool)

(assert (=> b!3065527 (=> res!1258459 e!1919103)))

(declare-fun lt!1050683 () Regex!9499)

(declare-fun isEmptyExpr!556 (Regex!9499) Bool)

(assert (=> b!3065527 (= res!1258459 (not (isEmptyExpr!556 lt!1050683)))))

(declare-fun b!3065528 () Bool)

(declare-fun res!1258456 () Bool)

(assert (=> b!3065528 (=> res!1258456 e!1919105)))

(declare-fun isEmpty!19563 (List!35364) Bool)

(assert (=> b!3065528 (= res!1258456 (isEmpty!19563 s!11993))))

(declare-fun b!3065529 () Bool)

(declare-fun res!1258457 () Bool)

(assert (=> b!3065529 (=> res!1258457 e!1919104)))

(declare-fun nullable!3145 (Regex!9499) Bool)

(assert (=> b!3065529 (= res!1258457 (not (nullable!3145 (regOne!19510 r!17423))))))

(declare-fun b!3065530 () Bool)

(assert (=> b!3065530 (= e!1919105 e!1919103)))

(declare-fun res!1258452 () Bool)

(assert (=> b!3065530 (=> res!1258452 e!1919103)))

(declare-fun isEmptyLang!550 (Regex!9499) Bool)

(assert (=> b!3065530 (= res!1258452 (isEmptyLang!550 lt!1050683))))

(declare-fun simplify!454 (Regex!9499) Regex!9499)

(assert (=> b!3065530 (= lt!1050681 (simplify!454 (regTwo!19510 r!17423)))))

(assert (=> b!3065530 (= lt!1050683 (simplify!454 (regOne!19510 r!17423)))))

(declare-fun b!3065531 () Bool)

(declare-fun tp!967996 () Bool)

(declare-fun tp!967997 () Bool)

(assert (=> b!3065531 (= e!1919102 (and tp!967996 tp!967997))))

(declare-fun b!3065532 () Bool)

(declare-fun tp!968001 () Bool)

(assert (=> b!3065532 (= e!1919102 tp!968001)))

(declare-fun res!1258454 () Bool)

(assert (=> start!292504 (=> (not res!1258454) (not e!1919101))))

(declare-fun validRegex!4232 (Regex!9499) Bool)

(assert (=> start!292504 (= res!1258454 (validRegex!4232 r!17423))))

(assert (=> start!292504 e!1919101))

(assert (=> start!292504 e!1919102))

(assert (=> start!292504 e!1919100))

(declare-fun b!3065533 () Bool)

(declare-fun res!1258458 () Bool)

(assert (=> b!3065533 (=> res!1258458 e!1919103)))

(assert (=> b!3065533 (= res!1258458 (isEmptyLang!550 lt!1050681))))

(assert (= (and start!292504 res!1258454) b!3065523))

(assert (= (and b!3065523 (not res!1258460)) b!3065528))

(assert (= (and b!3065528 (not res!1258456)) b!3065530))

(assert (= (and b!3065530 (not res!1258452)) b!3065533))

(assert (= (and b!3065533 (not res!1258458)) b!3065527))

(assert (= (and b!3065527 (not res!1258459)) b!3065521))

(assert (= (and b!3065521 (not res!1258453)) b!3065529))

(assert (= (and b!3065529 (not res!1258457)) b!3065525))

(assert (= (and b!3065525 (not res!1258455)) b!3065526))

(assert (= (and start!292504 ((_ is ElementMatch!9499) r!17423)) b!3065524))

(assert (= (and start!292504 ((_ is Concat!14820) r!17423)) b!3065531))

(assert (= (and start!292504 ((_ is Star!9499) r!17423)) b!3065532))

(assert (= (and start!292504 ((_ is Union!9499) r!17423)) b!3065520))

(assert (= (and start!292504 ((_ is Cons!35240) s!11993)) b!3065522))

(declare-fun m!3383505 () Bool)

(assert (=> b!3065530 m!3383505))

(declare-fun m!3383507 () Bool)

(assert (=> b!3065530 m!3383507))

(declare-fun m!3383509 () Bool)

(assert (=> b!3065530 m!3383509))

(declare-fun m!3383511 () Bool)

(assert (=> b!3065523 m!3383511))

(declare-fun m!3383513 () Bool)

(assert (=> b!3065523 m!3383513))

(declare-fun m!3383515 () Bool)

(assert (=> b!3065523 m!3383515))

(declare-fun m!3383517 () Bool)

(assert (=> b!3065533 m!3383517))

(declare-fun m!3383519 () Bool)

(assert (=> b!3065529 m!3383519))

(declare-fun m!3383521 () Bool)

(assert (=> b!3065525 m!3383521))

(declare-fun m!3383523 () Bool)

(assert (=> b!3065528 m!3383523))

(declare-fun m!3383525 () Bool)

(assert (=> b!3065527 m!3383525))

(declare-fun m!3383527 () Bool)

(assert (=> b!3065521 m!3383527))

(declare-fun m!3383529 () Bool)

(assert (=> b!3065521 m!3383529))

(declare-fun m!3383531 () Bool)

(assert (=> b!3065521 m!3383531))

(declare-fun m!3383533 () Bool)

(assert (=> b!3065526 m!3383533))

(declare-fun m!3383535 () Bool)

(assert (=> b!3065526 m!3383535))

(declare-fun m!3383537 () Bool)

(assert (=> b!3065526 m!3383537))

(declare-fun m!3383539 () Bool)

(assert (=> b!3065526 m!3383539))

(assert (=> b!3065526 m!3383535))

(assert (=> b!3065526 m!3383539))

(declare-fun m!3383541 () Bool)

(assert (=> b!3065526 m!3383541))

(declare-fun m!3383543 () Bool)

(assert (=> b!3065526 m!3383543))

(declare-fun m!3383545 () Bool)

(assert (=> b!3065526 m!3383545))

(declare-fun m!3383547 () Bool)

(assert (=> start!292504 m!3383547))

(check-sat (not b!3065526) (not b!3065529) (not b!3065530) (not b!3065533) (not b!3065523) (not b!3065521) (not b!3065531) (not b!3065528) (not b!3065525) (not start!292504) (not b!3065520) (not b!3065527) (not b!3065522) (not b!3065532) tp_is_empty!16561)
(check-sat)
(get-model)

(declare-fun b!3065604 () Bool)

(declare-fun e!1919152 () Bool)

(declare-fun e!1919151 () Bool)

(assert (=> b!3065604 (= e!1919152 e!1919151)))

(declare-fun res!1258476 () Bool)

(assert (=> b!3065604 (=> (not res!1258476) (not e!1919151))))

(declare-fun call!212363 () Bool)

(assert (=> b!3065604 (= res!1258476 call!212363)))

(declare-fun b!3065605 () Bool)

(declare-fun e!1919150 () Bool)

(assert (=> b!3065605 (= e!1919150 call!212363)))

(declare-fun d!855713 () Bool)

(declare-fun res!1258475 () Bool)

(declare-fun e!1919149 () Bool)

(assert (=> d!855713 (=> res!1258475 e!1919149)))

(assert (=> d!855713 (= res!1258475 ((_ is ElementMatch!9499) r!17423))))

(assert (=> d!855713 (= (validRegex!4232 r!17423) e!1919149)))

(declare-fun b!3065606 () Bool)

(declare-fun e!1919148 () Bool)

(assert (=> b!3065606 (= e!1919149 e!1919148)))

(declare-fun c!509231 () Bool)

(assert (=> b!3065606 (= c!509231 ((_ is Star!9499) r!17423))))

(declare-fun b!3065607 () Bool)

(declare-fun call!212365 () Bool)

(assert (=> b!3065607 (= e!1919151 call!212365)))

(declare-fun c!509230 () Bool)

(declare-fun call!212364 () Bool)

(declare-fun bm!212356 () Bool)

(assert (=> bm!212356 (= call!212364 (validRegex!4232 (ite c!509231 (reg!9828 r!17423) (ite c!509230 (regTwo!19511 r!17423) (regOne!19510 r!17423)))))))

(declare-fun b!3065608 () Bool)

(declare-fun e!1919147 () Bool)

(assert (=> b!3065608 (= e!1919148 e!1919147)))

(declare-fun res!1258479 () Bool)

(assert (=> b!3065608 (= res!1258479 (not (nullable!3145 (reg!9828 r!17423))))))

(assert (=> b!3065608 (=> (not res!1258479) (not e!1919147))))

(declare-fun bm!212359 () Bool)

(assert (=> bm!212359 (= call!212363 call!212364)))

(declare-fun b!3065609 () Bool)

(assert (=> b!3065609 (= e!1919147 call!212364)))

(declare-fun bm!212360 () Bool)

(assert (=> bm!212360 (= call!212365 (validRegex!4232 (ite c!509230 (regOne!19511 r!17423) (regTwo!19510 r!17423))))))

(declare-fun b!3065610 () Bool)

(declare-fun res!1258477 () Bool)

(assert (=> b!3065610 (=> (not res!1258477) (not e!1919150))))

(assert (=> b!3065610 (= res!1258477 call!212365)))

(declare-fun e!1919146 () Bool)

(assert (=> b!3065610 (= e!1919146 e!1919150)))

(declare-fun b!3065611 () Bool)

(declare-fun res!1258478 () Bool)

(assert (=> b!3065611 (=> res!1258478 e!1919152)))

(assert (=> b!3065611 (= res!1258478 (not ((_ is Concat!14820) r!17423)))))

(assert (=> b!3065611 (= e!1919146 e!1919152)))

(declare-fun b!3065612 () Bool)

(assert (=> b!3065612 (= e!1919148 e!1919146)))

(assert (=> b!3065612 (= c!509230 ((_ is Union!9499) r!17423))))

(assert (= (and d!855713 (not res!1258475)) b!3065606))

(assert (= (and b!3065606 c!509231) b!3065608))

(assert (= (and b!3065606 (not c!509231)) b!3065612))

(assert (= (and b!3065608 res!1258479) b!3065609))

(assert (= (and b!3065612 c!509230) b!3065610))

(assert (= (and b!3065612 (not c!509230)) b!3065611))

(assert (= (and b!3065610 res!1258477) b!3065605))

(assert (= (and b!3065611 (not res!1258478)) b!3065604))

(assert (= (and b!3065604 res!1258476) b!3065607))

(assert (= (or b!3065610 b!3065607) bm!212360))

(assert (= (or b!3065605 b!3065604) bm!212359))

(assert (= (or b!3065609 bm!212359) bm!212356))

(declare-fun m!3383549 () Bool)

(assert (=> bm!212356 m!3383549))

(declare-fun m!3383551 () Bool)

(assert (=> b!3065608 m!3383551))

(declare-fun m!3383553 () Bool)

(assert (=> bm!212360 m!3383553))

(assert (=> start!292504 d!855713))

(declare-fun b!3065749 () Bool)

(declare-fun res!1258540 () Bool)

(declare-fun e!1919226 () Bool)

(assert (=> b!3065749 (=> res!1258540 e!1919226)))

(declare-fun e!1919230 () Bool)

(assert (=> b!3065749 (= res!1258540 e!1919230)))

(declare-fun res!1258539 () Bool)

(assert (=> b!3065749 (=> (not res!1258539) (not e!1919230))))

(declare-fun lt!1050715 () Bool)

(assert (=> b!3065749 (= res!1258539 lt!1050715)))

(declare-fun b!3065750 () Bool)

(declare-fun e!1919231 () Bool)

(declare-fun e!1919225 () Bool)

(assert (=> b!3065750 (= e!1919231 e!1919225)))

(declare-fun res!1258538 () Bool)

(assert (=> b!3065750 (=> res!1258538 e!1919225)))

(declare-fun call!212398 () Bool)

(assert (=> b!3065750 (= res!1258538 call!212398)))

(declare-fun b!3065751 () Bool)

(declare-fun e!1919229 () Bool)

(assert (=> b!3065751 (= e!1919229 (not lt!1050715))))

(declare-fun b!3065752 () Bool)

(declare-fun e!1919228 () Bool)

(assert (=> b!3065752 (= e!1919228 (= lt!1050715 call!212398))))

(declare-fun b!3065753 () Bool)

(declare-fun res!1258542 () Bool)

(assert (=> b!3065753 (=> res!1258542 e!1919226)))

(assert (=> b!3065753 (= res!1258542 (not ((_ is ElementMatch!9499) (regOne!19510 r!17423))))))

(assert (=> b!3065753 (= e!1919229 e!1919226)))

(declare-fun b!3065755 () Bool)

(declare-fun head!6800 (List!35364) C!19184)

(assert (=> b!3065755 (= e!1919230 (= (head!6800 Nil!35240) (c!509203 (regOne!19510 r!17423))))))

(declare-fun b!3065756 () Bool)

(declare-fun e!1919227 () Bool)

(declare-fun derivativeStep!2741 (Regex!9499 C!19184) Regex!9499)

(declare-fun tail!5026 (List!35364) List!35364)

(assert (=> b!3065756 (= e!1919227 (matchR!4381 (derivativeStep!2741 (regOne!19510 r!17423) (head!6800 Nil!35240)) (tail!5026 Nil!35240)))))

(declare-fun b!3065757 () Bool)

(declare-fun res!1258543 () Bool)

(assert (=> b!3065757 (=> res!1258543 e!1919225)))

(assert (=> b!3065757 (= res!1258543 (not (isEmpty!19563 (tail!5026 Nil!35240))))))

(declare-fun b!3065758 () Bool)

(assert (=> b!3065758 (= e!1919228 e!1919229)))

(declare-fun c!509272 () Bool)

(assert (=> b!3065758 (= c!509272 ((_ is EmptyLang!9499) (regOne!19510 r!17423)))))

(declare-fun b!3065759 () Bool)

(declare-fun res!1258536 () Bool)

(assert (=> b!3065759 (=> (not res!1258536) (not e!1919230))))

(assert (=> b!3065759 (= res!1258536 (isEmpty!19563 (tail!5026 Nil!35240)))))

(declare-fun b!3065760 () Bool)

(assert (=> b!3065760 (= e!1919227 (nullable!3145 (regOne!19510 r!17423)))))

(declare-fun bm!212393 () Bool)

(assert (=> bm!212393 (= call!212398 (isEmpty!19563 Nil!35240))))

(declare-fun b!3065761 () Bool)

(declare-fun res!1258537 () Bool)

(assert (=> b!3065761 (=> (not res!1258537) (not e!1919230))))

(assert (=> b!3065761 (= res!1258537 (not call!212398))))

(declare-fun b!3065762 () Bool)

(assert (=> b!3065762 (= e!1919225 (not (= (head!6800 Nil!35240) (c!509203 (regOne!19510 r!17423)))))))

(declare-fun d!855721 () Bool)

(assert (=> d!855721 e!1919228))

(declare-fun c!509273 () Bool)

(assert (=> d!855721 (= c!509273 ((_ is EmptyExpr!9499) (regOne!19510 r!17423)))))

(assert (=> d!855721 (= lt!1050715 e!1919227)))

(declare-fun c!509274 () Bool)

(assert (=> d!855721 (= c!509274 (isEmpty!19563 Nil!35240))))

(assert (=> d!855721 (validRegex!4232 (regOne!19510 r!17423))))

(assert (=> d!855721 (= (matchR!4381 (regOne!19510 r!17423) Nil!35240) lt!1050715)))

(declare-fun b!3065754 () Bool)

(assert (=> b!3065754 (= e!1919226 e!1919231)))

(declare-fun res!1258541 () Bool)

(assert (=> b!3065754 (=> (not res!1258541) (not e!1919231))))

(assert (=> b!3065754 (= res!1258541 (not lt!1050715))))

(assert (= (and d!855721 c!509274) b!3065760))

(assert (= (and d!855721 (not c!509274)) b!3065756))

(assert (= (and d!855721 c!509273) b!3065752))

(assert (= (and d!855721 (not c!509273)) b!3065758))

(assert (= (and b!3065758 c!509272) b!3065751))

(assert (= (and b!3065758 (not c!509272)) b!3065753))

(assert (= (and b!3065753 (not res!1258542)) b!3065749))

(assert (= (and b!3065749 res!1258539) b!3065761))

(assert (= (and b!3065761 res!1258537) b!3065759))

(assert (= (and b!3065759 res!1258536) b!3065755))

(assert (= (and b!3065749 (not res!1258540)) b!3065754))

(assert (= (and b!3065754 res!1258541) b!3065750))

(assert (= (and b!3065750 (not res!1258538)) b!3065757))

(assert (= (and b!3065757 (not res!1258543)) b!3065762))

(assert (= (or b!3065752 b!3065750 b!3065761) bm!212393))

(declare-fun m!3383611 () Bool)

(assert (=> bm!212393 m!3383611))

(declare-fun m!3383613 () Bool)

(assert (=> b!3065759 m!3383613))

(assert (=> b!3065759 m!3383613))

(declare-fun m!3383615 () Bool)

(assert (=> b!3065759 m!3383615))

(declare-fun m!3383617 () Bool)

(assert (=> b!3065755 m!3383617))

(assert (=> d!855721 m!3383611))

(declare-fun m!3383619 () Bool)

(assert (=> d!855721 m!3383619))

(assert (=> b!3065757 m!3383613))

(assert (=> b!3065757 m!3383613))

(assert (=> b!3065757 m!3383615))

(assert (=> b!3065762 m!3383617))

(assert (=> b!3065756 m!3383617))

(assert (=> b!3065756 m!3383617))

(declare-fun m!3383621 () Bool)

(assert (=> b!3065756 m!3383621))

(assert (=> b!3065756 m!3383613))

(assert (=> b!3065756 m!3383621))

(assert (=> b!3065756 m!3383613))

(declare-fun m!3383623 () Bool)

(assert (=> b!3065756 m!3383623))

(assert (=> b!3065760 m!3383519))

(assert (=> b!3065525 d!855721))

(declare-fun bs!532563 () Bool)

(declare-fun d!855733 () Bool)

(assert (= bs!532563 (and d!855733 b!3065526)))

(declare-fun lambda!113997 () Int)

(assert (=> bs!532563 (= lambda!113997 lambda!113985)))

(assert (=> bs!532563 (not (= lambda!113997 lambda!113986))))

(assert (=> d!855733 true))

(assert (=> d!855733 true))

(assert (=> d!855733 true))

(declare-fun lambda!113998 () Int)

(assert (=> bs!532563 (not (= lambda!113998 lambda!113985))))

(assert (=> bs!532563 (= lambda!113998 lambda!113986)))

(declare-fun bs!532565 () Bool)

(assert (= bs!532565 d!855733))

(assert (=> bs!532565 (not (= lambda!113998 lambda!113997))))

(assert (=> d!855733 true))

(assert (=> d!855733 true))

(assert (=> d!855733 true))

(assert (=> d!855733 (= (Exists!1762 lambda!113997) (Exists!1762 lambda!113998))))

(declare-fun lt!1050724 () Unit!49437)

(declare-fun choose!18168 (Regex!9499 Regex!9499 List!35364) Unit!49437)

(assert (=> d!855733 (= lt!1050724 (choose!18168 (regOne!19510 r!17423) (regTwo!19510 r!17423) s!11993))))

(assert (=> d!855733 (validRegex!4232 (regOne!19510 r!17423))))

(assert (=> d!855733 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!558 (regOne!19510 r!17423) (regTwo!19510 r!17423) s!11993) lt!1050724)))

(declare-fun m!3383647 () Bool)

(assert (=> bs!532565 m!3383647))

(declare-fun m!3383649 () Bool)

(assert (=> bs!532565 m!3383649))

(declare-fun m!3383651 () Bool)

(assert (=> bs!532565 m!3383651))

(assert (=> bs!532565 m!3383619))

(assert (=> b!3065526 d!855733))

(declare-fun d!855747 () Bool)

(assert (=> d!855747 (isDefined!5367 (findConcatSeparation!1210 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993))))

(declare-fun lt!1050736 () Unit!49437)

(declare-fun choose!18169 (Regex!9499 Regex!9499 List!35364 List!35364 List!35364 List!35364 List!35364) Unit!49437)

(assert (=> d!855747 (= lt!1050736 (choose!18169 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993 Nil!35240 s!11993))))

(assert (=> d!855747 (validRegex!4232 (regOne!19510 r!17423))))

(assert (=> d!855747 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!30 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993 Nil!35240 s!11993) lt!1050736)))

(declare-fun bs!532566 () Bool)

(assert (= bs!532566 d!855747))

(assert (=> bs!532566 m!3383535))

(assert (=> bs!532566 m!3383535))

(assert (=> bs!532566 m!3383537))

(declare-fun m!3383653 () Bool)

(assert (=> bs!532566 m!3383653))

(assert (=> bs!532566 m!3383619))

(assert (=> b!3065526 d!855747))

(declare-fun d!855749 () Bool)

(declare-fun isEmpty!19565 (Option!6816) Bool)

(assert (=> d!855749 (= (isDefined!5367 (findConcatSeparation!1210 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993)) (not (isEmpty!19565 (findConcatSeparation!1210 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993))))))

(declare-fun bs!532567 () Bool)

(assert (= bs!532567 d!855749))

(assert (=> bs!532567 m!3383535))

(declare-fun m!3383655 () Bool)

(assert (=> bs!532567 m!3383655))

(assert (=> b!3065526 d!855749))

(declare-fun d!855751 () Bool)

(declare-fun e!1919327 () Bool)

(assert (=> d!855751 e!1919327))

(declare-fun res!1258641 () Bool)

(assert (=> d!855751 (=> res!1258641 e!1919327)))

(declare-fun e!1919329 () Bool)

(assert (=> d!855751 (= res!1258641 e!1919329)))

(declare-fun res!1258640 () Bool)

(assert (=> d!855751 (=> (not res!1258640) (not e!1919329))))

(declare-fun lt!1050753 () Option!6816)

(assert (=> d!855751 (= res!1258640 (isDefined!5367 lt!1050753))))

(declare-fun e!1919330 () Option!6816)

(assert (=> d!855751 (= lt!1050753 e!1919330)))

(declare-fun c!509310 () Bool)

(declare-fun e!1919328 () Bool)

(assert (=> d!855751 (= c!509310 e!1919328)))

(declare-fun res!1258642 () Bool)

(assert (=> d!855751 (=> (not res!1258642) (not e!1919328))))

(assert (=> d!855751 (= res!1258642 (matchR!4381 (regOne!19510 r!17423) Nil!35240))))

(assert (=> d!855751 (validRegex!4232 (regOne!19510 r!17423))))

(assert (=> d!855751 (= (findConcatSeparation!1210 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993) lt!1050753)))

(declare-fun b!3065926 () Bool)

(assert (=> b!3065926 (= e!1919328 (matchR!4381 (regTwo!19510 r!17423) s!11993))))

(declare-fun b!3065927 () Bool)

(declare-fun res!1258643 () Bool)

(assert (=> b!3065927 (=> (not res!1258643) (not e!1919329))))

(declare-fun get!11032 (Option!6816) tuple2!34168)

(assert (=> b!3065927 (= res!1258643 (matchR!4381 (regTwo!19510 r!17423) (_2!20216 (get!11032 lt!1050753))))))

(declare-fun b!3065928 () Bool)

(declare-fun lt!1050752 () Unit!49437)

(declare-fun lt!1050751 () Unit!49437)

(assert (=> b!3065928 (= lt!1050752 lt!1050751)))

(declare-fun ++!8464 (List!35364 List!35364) List!35364)

(assert (=> b!3065928 (= (++!8464 (++!8464 Nil!35240 (Cons!35240 (h!40660 s!11993) Nil!35240)) (t!234429 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1067 (List!35364 C!19184 List!35364 List!35364) Unit!49437)

(assert (=> b!3065928 (= lt!1050751 (lemmaMoveElementToOtherListKeepsConcatEq!1067 Nil!35240 (h!40660 s!11993) (t!234429 s!11993) s!11993))))

(declare-fun e!1919331 () Option!6816)

(assert (=> b!3065928 (= e!1919331 (findConcatSeparation!1210 (regOne!19510 r!17423) (regTwo!19510 r!17423) (++!8464 Nil!35240 (Cons!35240 (h!40660 s!11993) Nil!35240)) (t!234429 s!11993) s!11993))))

(declare-fun b!3065929 () Bool)

(assert (=> b!3065929 (= e!1919329 (= (++!8464 (_1!20216 (get!11032 lt!1050753)) (_2!20216 (get!11032 lt!1050753))) s!11993))))

(declare-fun b!3065930 () Bool)

(declare-fun res!1258639 () Bool)

(assert (=> b!3065930 (=> (not res!1258639) (not e!1919329))))

(assert (=> b!3065930 (= res!1258639 (matchR!4381 (regOne!19510 r!17423) (_1!20216 (get!11032 lt!1050753))))))

(declare-fun b!3065931 () Bool)

(assert (=> b!3065931 (= e!1919330 e!1919331)))

(declare-fun c!509309 () Bool)

(assert (=> b!3065931 (= c!509309 ((_ is Nil!35240) s!11993))))

(declare-fun b!3065932 () Bool)

(assert (=> b!3065932 (= e!1919330 (Some!6815 (tuple2!34169 Nil!35240 s!11993)))))

(declare-fun b!3065933 () Bool)

(assert (=> b!3065933 (= e!1919331 None!6815)))

(declare-fun b!3065934 () Bool)

(assert (=> b!3065934 (= e!1919327 (not (isDefined!5367 lt!1050753)))))

(assert (= (and d!855751 res!1258642) b!3065926))

(assert (= (and d!855751 c!509310) b!3065932))

(assert (= (and d!855751 (not c!509310)) b!3065931))

(assert (= (and b!3065931 c!509309) b!3065933))

(assert (= (and b!3065931 (not c!509309)) b!3065928))

(assert (= (and d!855751 res!1258640) b!3065930))

(assert (= (and b!3065930 res!1258639) b!3065927))

(assert (= (and b!3065927 res!1258643) b!3065929))

(assert (= (and d!855751 (not res!1258641)) b!3065934))

(assert (=> b!3065926 m!3383529))

(declare-fun m!3383709 () Bool)

(assert (=> b!3065934 m!3383709))

(declare-fun m!3383711 () Bool)

(assert (=> b!3065927 m!3383711))

(declare-fun m!3383713 () Bool)

(assert (=> b!3065927 m!3383713))

(assert (=> b!3065930 m!3383711))

(declare-fun m!3383715 () Bool)

(assert (=> b!3065930 m!3383715))

(assert (=> d!855751 m!3383709))

(assert (=> d!855751 m!3383521))

(assert (=> d!855751 m!3383619))

(declare-fun m!3383717 () Bool)

(assert (=> b!3065928 m!3383717))

(assert (=> b!3065928 m!3383717))

(declare-fun m!3383719 () Bool)

(assert (=> b!3065928 m!3383719))

(declare-fun m!3383721 () Bool)

(assert (=> b!3065928 m!3383721))

(assert (=> b!3065928 m!3383717))

(declare-fun m!3383723 () Bool)

(assert (=> b!3065928 m!3383723))

(assert (=> b!3065929 m!3383711))

(declare-fun m!3383725 () Bool)

(assert (=> b!3065929 m!3383725))

(assert (=> b!3065526 d!855751))

(declare-fun bs!532581 () Bool)

(declare-fun d!855769 () Bool)

(assert (= bs!532581 (and d!855769 b!3065526)))

(declare-fun lambda!114010 () Int)

(assert (=> bs!532581 (= lambda!114010 lambda!113985)))

(assert (=> bs!532581 (not (= lambda!114010 lambda!113986))))

(declare-fun bs!532582 () Bool)

(assert (= bs!532582 (and d!855769 d!855733)))

(assert (=> bs!532582 (= lambda!114010 lambda!113997)))

(assert (=> bs!532582 (not (= lambda!114010 lambda!113998))))

(assert (=> d!855769 true))

(assert (=> d!855769 true))

(assert (=> d!855769 true))

(assert (=> d!855769 (= (isDefined!5367 (findConcatSeparation!1210 (regOne!19510 r!17423) (regTwo!19510 r!17423) Nil!35240 s!11993 s!11993)) (Exists!1762 lambda!114010))))

(declare-fun lt!1050759 () Unit!49437)

(declare-fun choose!18170 (Regex!9499 Regex!9499 List!35364) Unit!49437)

(assert (=> d!855769 (= lt!1050759 (choose!18170 (regOne!19510 r!17423) (regTwo!19510 r!17423) s!11993))))

(assert (=> d!855769 (validRegex!4232 (regOne!19510 r!17423))))

(assert (=> d!855769 (= (lemmaFindConcatSeparationEquivalentToExists!984 (regOne!19510 r!17423) (regTwo!19510 r!17423) s!11993) lt!1050759)))

(declare-fun bs!532583 () Bool)

(assert (= bs!532583 d!855769))

(declare-fun m!3383727 () Bool)

(assert (=> bs!532583 m!3383727))

(assert (=> bs!532583 m!3383535))

(assert (=> bs!532583 m!3383535))

(assert (=> bs!532583 m!3383537))

(assert (=> bs!532583 m!3383619))

(declare-fun m!3383729 () Bool)

(assert (=> bs!532583 m!3383729))

(assert (=> b!3065526 d!855769))

(declare-fun d!855771 () Bool)

(declare-fun choose!18171 (Int) Bool)

(assert (=> d!855771 (= (Exists!1762 lambda!113986) (choose!18171 lambda!113986))))

(declare-fun bs!532584 () Bool)

(assert (= bs!532584 d!855771))

(declare-fun m!3383731 () Bool)

(assert (=> bs!532584 m!3383731))

(assert (=> b!3065526 d!855771))

(declare-fun d!855773 () Bool)

(assert (=> d!855773 (= (Exists!1762 lambda!113985) (choose!18171 lambda!113985))))

(declare-fun bs!532585 () Bool)

(assert (= bs!532585 d!855773))

(declare-fun m!3383733 () Bool)

(assert (=> bs!532585 m!3383733))

(assert (=> b!3065526 d!855773))

(declare-fun d!855775 () Bool)

(declare-fun nullableFct!905 (Regex!9499) Bool)

(assert (=> d!855775 (= (nullable!3145 (regOne!19510 r!17423)) (nullableFct!905 (regOne!19510 r!17423)))))

(declare-fun bs!532586 () Bool)

(assert (= bs!532586 d!855775))

(declare-fun m!3383735 () Bool)

(assert (=> bs!532586 m!3383735))

(assert (=> b!3065529 d!855775))

(declare-fun d!855777 () Bool)

(assert (=> d!855777 (= (isEmptyLang!550 lt!1050683) ((_ is EmptyLang!9499) lt!1050683))))

(assert (=> b!3065530 d!855777))

(declare-fun b!3066024 () Bool)

(declare-fun e!1919380 () Regex!9499)

(declare-fun e!1919377 () Regex!9499)

(assert (=> b!3066024 (= e!1919380 e!1919377)))

(declare-fun c!509334 () Bool)

(assert (=> b!3066024 (= c!509334 ((_ is ElementMatch!9499) (regTwo!19510 r!17423)))))

(declare-fun b!3066025 () Bool)

(declare-fun e!1919384 () Regex!9499)

(declare-fun e!1919378 () Regex!9499)

(assert (=> b!3066025 (= e!1919384 e!1919378)))

(declare-fun lt!1050774 () Regex!9499)

(declare-fun call!212434 () Regex!9499)

(assert (=> b!3066025 (= lt!1050774 call!212434)))

(declare-fun lt!1050777 () Regex!9499)

(declare-fun call!212435 () Regex!9499)

(assert (=> b!3066025 (= lt!1050777 call!212435)))

(declare-fun c!509343 () Bool)

(declare-fun call!212432 () Bool)

(assert (=> b!3066025 (= c!509343 call!212432)))

(declare-fun b!3066026 () Bool)

(declare-fun c!509338 () Bool)

(declare-fun lt!1050772 () Regex!9499)

(assert (=> b!3066026 (= c!509338 (isEmptyExpr!556 lt!1050772))))

(declare-fun e!1919381 () Regex!9499)

(declare-fun e!1919376 () Regex!9499)

(assert (=> b!3066026 (= e!1919381 e!1919376)))

(declare-fun d!855779 () Bool)

(declare-fun e!1919372 () Bool)

(assert (=> d!855779 e!1919372))

(declare-fun res!1258655 () Bool)

(assert (=> d!855779 (=> (not res!1258655) (not e!1919372))))

(declare-fun lt!1050775 () Regex!9499)

(assert (=> d!855779 (= res!1258655 (validRegex!4232 lt!1050775))))

(assert (=> d!855779 (= lt!1050775 e!1919380)))

(declare-fun c!509341 () Bool)

(assert (=> d!855779 (= c!509341 ((_ is EmptyLang!9499) (regTwo!19510 r!17423)))))

(assert (=> d!855779 (validRegex!4232 (regTwo!19510 r!17423))))

(assert (=> d!855779 (= (simplify!454 (regTwo!19510 r!17423)) lt!1050775)))

(declare-fun bm!212425 () Bool)

(declare-fun call!212436 () Bool)

(declare-fun call!212433 () Bool)

(assert (=> bm!212425 (= call!212436 call!212433)))

(declare-fun c!509336 () Bool)

(declare-fun call!212431 () Regex!9499)

(declare-fun c!509342 () Bool)

(declare-fun bm!212426 () Bool)

(assert (=> bm!212426 (= call!212431 (simplify!454 (ite c!509342 (reg!9828 (regTwo!19510 r!17423)) (ite c!509336 (regOne!19511 (regTwo!19510 r!17423)) (regTwo!19510 (regTwo!19510 r!17423))))))))

(declare-fun lt!1050773 () Regex!9499)

(declare-fun bm!212427 () Bool)

(assert (=> bm!212427 (= call!212433 (isEmptyLang!550 (ite c!509342 lt!1050773 (ite c!509336 lt!1050777 lt!1050772))))))

(declare-fun b!3066027 () Bool)

(declare-fun c!509337 () Bool)

(declare-fun e!1919379 () Bool)

(assert (=> b!3066027 (= c!509337 e!1919379)))

(declare-fun res!1258654 () Bool)

(assert (=> b!3066027 (=> res!1258654 e!1919379)))

(assert (=> b!3066027 (= res!1258654 call!212433)))

(assert (=> b!3066027 (= lt!1050773 call!212431)))

(declare-fun e!1919385 () Regex!9499)

(declare-fun e!1919373 () Regex!9499)

(assert (=> b!3066027 (= e!1919385 e!1919373)))

(declare-fun b!3066028 () Bool)

(assert (=> b!3066028 (= e!1919381 EmptyLang!9499)))

(declare-fun b!3066029 () Bool)

(declare-fun e!1919374 () Regex!9499)

(assert (=> b!3066029 (= e!1919374 EmptyExpr!9499)))

(declare-fun b!3066030 () Bool)

(declare-fun call!212430 () Bool)

(assert (=> b!3066030 (= e!1919379 call!212430)))

(declare-fun b!3066031 () Bool)

(assert (=> b!3066031 (= e!1919372 (= (nullable!3145 lt!1050775) (nullable!3145 (regTwo!19510 r!17423))))))

(declare-fun b!3066032 () Bool)

(assert (=> b!3066032 (= e!1919374 e!1919385)))

(assert (=> b!3066032 (= c!509342 ((_ is Star!9499) (regTwo!19510 r!17423)))))

(declare-fun b!3066033 () Bool)

(assert (=> b!3066033 (= e!1919373 (Star!9499 lt!1050773))))

(declare-fun bm!212428 () Bool)

(assert (=> bm!212428 (= call!212435 (simplify!454 (ite c!509336 (regTwo!19511 (regTwo!19510 r!17423)) (regOne!19510 (regTwo!19510 r!17423)))))))

(declare-fun bm!212429 () Bool)

(assert (=> bm!212429 (= call!212434 call!212431)))

(declare-fun b!3066034 () Bool)

(assert (=> b!3066034 (= e!1919377 (regTwo!19510 r!17423))))

(declare-fun bm!212430 () Bool)

(declare-fun lt!1050776 () Regex!9499)

(assert (=> bm!212430 (= call!212432 (isEmptyLang!550 (ite c!509336 lt!1050774 lt!1050776)))))

(declare-fun b!3066035 () Bool)

(declare-fun c!509333 () Bool)

(assert (=> b!3066035 (= c!509333 ((_ is EmptyExpr!9499) (regTwo!19510 r!17423)))))

(assert (=> b!3066035 (= e!1919377 e!1919374)))

(declare-fun b!3066036 () Bool)

(assert (=> b!3066036 (= e!1919373 EmptyExpr!9499)))

(declare-fun b!3066037 () Bool)

(declare-fun c!509340 () Bool)

(assert (=> b!3066037 (= c!509340 call!212436)))

(declare-fun e!1919383 () Regex!9499)

(assert (=> b!3066037 (= e!1919378 e!1919383)))

(declare-fun b!3066038 () Bool)

(declare-fun e!1919375 () Bool)

(assert (=> b!3066038 (= e!1919375 call!212432)))

(declare-fun b!3066039 () Bool)

(assert (=> b!3066039 (= e!1919378 lt!1050777)))

(declare-fun b!3066040 () Bool)

(assert (=> b!3066040 (= e!1919380 EmptyLang!9499)))

(declare-fun b!3066041 () Bool)

(assert (=> b!3066041 (= e!1919383 lt!1050774)))

(declare-fun b!3066042 () Bool)

(declare-fun e!1919382 () Regex!9499)

(assert (=> b!3066042 (= e!1919376 e!1919382)))

(declare-fun c!509335 () Bool)

(assert (=> b!3066042 (= c!509335 call!212430)))

(declare-fun b!3066043 () Bool)

(assert (=> b!3066043 (= c!509336 ((_ is Union!9499) (regTwo!19510 r!17423)))))

(assert (=> b!3066043 (= e!1919385 e!1919384)))

(declare-fun b!3066044 () Bool)

(assert (=> b!3066044 (= e!1919382 (Concat!14820 lt!1050772 lt!1050776))))

(declare-fun bm!212431 () Bool)

(assert (=> bm!212431 (= call!212430 (isEmptyExpr!556 (ite c!509342 lt!1050773 lt!1050776)))))

(declare-fun b!3066045 () Bool)

(assert (=> b!3066045 (= e!1919376 lt!1050776)))

(declare-fun b!3066046 () Bool)

(assert (=> b!3066046 (= e!1919384 e!1919381)))

(assert (=> b!3066046 (= lt!1050772 call!212435)))

(assert (=> b!3066046 (= lt!1050776 call!212434)))

(declare-fun res!1258656 () Bool)

(assert (=> b!3066046 (= res!1258656 call!212436)))

(assert (=> b!3066046 (=> res!1258656 e!1919375)))

(declare-fun c!509339 () Bool)

(assert (=> b!3066046 (= c!509339 e!1919375)))

(declare-fun b!3066047 () Bool)

(assert (=> b!3066047 (= e!1919382 lt!1050772)))

(declare-fun b!3066048 () Bool)

(assert (=> b!3066048 (= e!1919383 (Union!9499 lt!1050774 lt!1050777))))

(assert (= (and d!855779 c!509341) b!3066040))

(assert (= (and d!855779 (not c!509341)) b!3066024))

(assert (= (and b!3066024 c!509334) b!3066034))

(assert (= (and b!3066024 (not c!509334)) b!3066035))

(assert (= (and b!3066035 c!509333) b!3066029))

(assert (= (and b!3066035 (not c!509333)) b!3066032))

(assert (= (and b!3066032 c!509342) b!3066027))

(assert (= (and b!3066032 (not c!509342)) b!3066043))

(assert (= (and b!3066027 (not res!1258654)) b!3066030))

(assert (= (and b!3066027 c!509337) b!3066036))

(assert (= (and b!3066027 (not c!509337)) b!3066033))

(assert (= (and b!3066043 c!509336) b!3066025))

(assert (= (and b!3066043 (not c!509336)) b!3066046))

(assert (= (and b!3066025 c!509343) b!3066039))

(assert (= (and b!3066025 (not c!509343)) b!3066037))

(assert (= (and b!3066037 c!509340) b!3066041))

(assert (= (and b!3066037 (not c!509340)) b!3066048))

(assert (= (and b!3066046 (not res!1258656)) b!3066038))

(assert (= (and b!3066046 c!509339) b!3066028))

(assert (= (and b!3066046 (not c!509339)) b!3066026))

(assert (= (and b!3066026 c!509338) b!3066045))

(assert (= (and b!3066026 (not c!509338)) b!3066042))

(assert (= (and b!3066042 c!509335) b!3066047))

(assert (= (and b!3066042 (not c!509335)) b!3066044))

(assert (= (or b!3066025 b!3066046) bm!212429))

(assert (= (or b!3066025 b!3066046) bm!212428))

(assert (= (or b!3066037 b!3066046) bm!212425))

(assert (= (or b!3066025 b!3066038) bm!212430))

(assert (= (or b!3066030 b!3066042) bm!212431))

(assert (= (or b!3066027 bm!212429) bm!212426))

(assert (= (or b!3066027 bm!212425) bm!212427))

(assert (= (and d!855779 res!1258655) b!3066031))

(declare-fun m!3383737 () Bool)

(assert (=> bm!212426 m!3383737))

(declare-fun m!3383739 () Bool)

(assert (=> b!3066026 m!3383739))

(declare-fun m!3383741 () Bool)

(assert (=> bm!212430 m!3383741))

(declare-fun m!3383743 () Bool)

(assert (=> bm!212427 m!3383743))

(declare-fun m!3383745 () Bool)

(assert (=> d!855779 m!3383745))

(declare-fun m!3383747 () Bool)

(assert (=> d!855779 m!3383747))

(declare-fun m!3383749 () Bool)

(assert (=> bm!212428 m!3383749))

(declare-fun m!3383751 () Bool)

(assert (=> bm!212431 m!3383751))

(declare-fun m!3383753 () Bool)

(assert (=> b!3066031 m!3383753))

(declare-fun m!3383755 () Bool)

(assert (=> b!3066031 m!3383755))

(assert (=> b!3065530 d!855779))

(declare-fun b!3066049 () Bool)

(declare-fun e!1919394 () Regex!9499)

(declare-fun e!1919391 () Regex!9499)

(assert (=> b!3066049 (= e!1919394 e!1919391)))

(declare-fun c!509345 () Bool)

(assert (=> b!3066049 (= c!509345 ((_ is ElementMatch!9499) (regOne!19510 r!17423)))))

(declare-fun b!3066050 () Bool)

(declare-fun e!1919398 () Regex!9499)

(declare-fun e!1919392 () Regex!9499)

(assert (=> b!3066050 (= e!1919398 e!1919392)))

(declare-fun lt!1050780 () Regex!9499)

(declare-fun call!212441 () Regex!9499)

(assert (=> b!3066050 (= lt!1050780 call!212441)))

(declare-fun lt!1050783 () Regex!9499)

(declare-fun call!212442 () Regex!9499)

(assert (=> b!3066050 (= lt!1050783 call!212442)))

(declare-fun c!509354 () Bool)

(declare-fun call!212439 () Bool)

(assert (=> b!3066050 (= c!509354 call!212439)))

(declare-fun b!3066051 () Bool)

(declare-fun c!509349 () Bool)

(declare-fun lt!1050778 () Regex!9499)

(assert (=> b!3066051 (= c!509349 (isEmptyExpr!556 lt!1050778))))

(declare-fun e!1919395 () Regex!9499)

(declare-fun e!1919390 () Regex!9499)

(assert (=> b!3066051 (= e!1919395 e!1919390)))

(declare-fun d!855781 () Bool)

(declare-fun e!1919386 () Bool)

(assert (=> d!855781 e!1919386))

(declare-fun res!1258658 () Bool)

(assert (=> d!855781 (=> (not res!1258658) (not e!1919386))))

(declare-fun lt!1050781 () Regex!9499)

(assert (=> d!855781 (= res!1258658 (validRegex!4232 lt!1050781))))

(assert (=> d!855781 (= lt!1050781 e!1919394)))

(declare-fun c!509352 () Bool)

(assert (=> d!855781 (= c!509352 ((_ is EmptyLang!9499) (regOne!19510 r!17423)))))

(assert (=> d!855781 (validRegex!4232 (regOne!19510 r!17423))))

(assert (=> d!855781 (= (simplify!454 (regOne!19510 r!17423)) lt!1050781)))

(declare-fun bm!212432 () Bool)

(declare-fun call!212443 () Bool)

(declare-fun call!212440 () Bool)

(assert (=> bm!212432 (= call!212443 call!212440)))

(declare-fun call!212438 () Regex!9499)

(declare-fun bm!212433 () Bool)

(declare-fun c!509353 () Bool)

(declare-fun c!509347 () Bool)

(assert (=> bm!212433 (= call!212438 (simplify!454 (ite c!509353 (reg!9828 (regOne!19510 r!17423)) (ite c!509347 (regOne!19511 (regOne!19510 r!17423)) (regTwo!19510 (regOne!19510 r!17423))))))))

(declare-fun lt!1050779 () Regex!9499)

(declare-fun bm!212434 () Bool)

(assert (=> bm!212434 (= call!212440 (isEmptyLang!550 (ite c!509353 lt!1050779 (ite c!509347 lt!1050783 lt!1050778))))))

(declare-fun b!3066052 () Bool)

(declare-fun c!509348 () Bool)

(declare-fun e!1919393 () Bool)

(assert (=> b!3066052 (= c!509348 e!1919393)))

(declare-fun res!1258657 () Bool)

(assert (=> b!3066052 (=> res!1258657 e!1919393)))

(assert (=> b!3066052 (= res!1258657 call!212440)))

(assert (=> b!3066052 (= lt!1050779 call!212438)))

(declare-fun e!1919399 () Regex!9499)

(declare-fun e!1919387 () Regex!9499)

(assert (=> b!3066052 (= e!1919399 e!1919387)))

(declare-fun b!3066053 () Bool)

(assert (=> b!3066053 (= e!1919395 EmptyLang!9499)))

(declare-fun b!3066054 () Bool)

(declare-fun e!1919388 () Regex!9499)

(assert (=> b!3066054 (= e!1919388 EmptyExpr!9499)))

(declare-fun b!3066055 () Bool)

(declare-fun call!212437 () Bool)

(assert (=> b!3066055 (= e!1919393 call!212437)))

(declare-fun b!3066056 () Bool)

(assert (=> b!3066056 (= e!1919386 (= (nullable!3145 lt!1050781) (nullable!3145 (regOne!19510 r!17423))))))

(declare-fun b!3066057 () Bool)

(assert (=> b!3066057 (= e!1919388 e!1919399)))

(assert (=> b!3066057 (= c!509353 ((_ is Star!9499) (regOne!19510 r!17423)))))

(declare-fun b!3066058 () Bool)

(assert (=> b!3066058 (= e!1919387 (Star!9499 lt!1050779))))

(declare-fun bm!212435 () Bool)

(assert (=> bm!212435 (= call!212442 (simplify!454 (ite c!509347 (regTwo!19511 (regOne!19510 r!17423)) (regOne!19510 (regOne!19510 r!17423)))))))

(declare-fun bm!212436 () Bool)

(assert (=> bm!212436 (= call!212441 call!212438)))

(declare-fun b!3066059 () Bool)

(assert (=> b!3066059 (= e!1919391 (regOne!19510 r!17423))))

(declare-fun lt!1050782 () Regex!9499)

(declare-fun bm!212437 () Bool)

(assert (=> bm!212437 (= call!212439 (isEmptyLang!550 (ite c!509347 lt!1050780 lt!1050782)))))

(declare-fun b!3066060 () Bool)

(declare-fun c!509344 () Bool)

(assert (=> b!3066060 (= c!509344 ((_ is EmptyExpr!9499) (regOne!19510 r!17423)))))

(assert (=> b!3066060 (= e!1919391 e!1919388)))

(declare-fun b!3066061 () Bool)

(assert (=> b!3066061 (= e!1919387 EmptyExpr!9499)))

(declare-fun b!3066062 () Bool)

(declare-fun c!509351 () Bool)

(assert (=> b!3066062 (= c!509351 call!212443)))

(declare-fun e!1919397 () Regex!9499)

(assert (=> b!3066062 (= e!1919392 e!1919397)))

(declare-fun b!3066063 () Bool)

(declare-fun e!1919389 () Bool)

(assert (=> b!3066063 (= e!1919389 call!212439)))

(declare-fun b!3066064 () Bool)

(assert (=> b!3066064 (= e!1919392 lt!1050783)))

(declare-fun b!3066065 () Bool)

(assert (=> b!3066065 (= e!1919394 EmptyLang!9499)))

(declare-fun b!3066066 () Bool)

(assert (=> b!3066066 (= e!1919397 lt!1050780)))

(declare-fun b!3066067 () Bool)

(declare-fun e!1919396 () Regex!9499)

(assert (=> b!3066067 (= e!1919390 e!1919396)))

(declare-fun c!509346 () Bool)

(assert (=> b!3066067 (= c!509346 call!212437)))

(declare-fun b!3066068 () Bool)

(assert (=> b!3066068 (= c!509347 ((_ is Union!9499) (regOne!19510 r!17423)))))

(assert (=> b!3066068 (= e!1919399 e!1919398)))

(declare-fun b!3066069 () Bool)

(assert (=> b!3066069 (= e!1919396 (Concat!14820 lt!1050778 lt!1050782))))

(declare-fun bm!212438 () Bool)

(assert (=> bm!212438 (= call!212437 (isEmptyExpr!556 (ite c!509353 lt!1050779 lt!1050782)))))

(declare-fun b!3066070 () Bool)

(assert (=> b!3066070 (= e!1919390 lt!1050782)))

(declare-fun b!3066071 () Bool)

(assert (=> b!3066071 (= e!1919398 e!1919395)))

(assert (=> b!3066071 (= lt!1050778 call!212442)))

(assert (=> b!3066071 (= lt!1050782 call!212441)))

(declare-fun res!1258659 () Bool)

(assert (=> b!3066071 (= res!1258659 call!212443)))

(assert (=> b!3066071 (=> res!1258659 e!1919389)))

(declare-fun c!509350 () Bool)

(assert (=> b!3066071 (= c!509350 e!1919389)))

(declare-fun b!3066072 () Bool)

(assert (=> b!3066072 (= e!1919396 lt!1050778)))

(declare-fun b!3066073 () Bool)

(assert (=> b!3066073 (= e!1919397 (Union!9499 lt!1050780 lt!1050783))))

(assert (= (and d!855781 c!509352) b!3066065))

(assert (= (and d!855781 (not c!509352)) b!3066049))

(assert (= (and b!3066049 c!509345) b!3066059))

(assert (= (and b!3066049 (not c!509345)) b!3066060))

(assert (= (and b!3066060 c!509344) b!3066054))

(assert (= (and b!3066060 (not c!509344)) b!3066057))

(assert (= (and b!3066057 c!509353) b!3066052))

(assert (= (and b!3066057 (not c!509353)) b!3066068))

(assert (= (and b!3066052 (not res!1258657)) b!3066055))

(assert (= (and b!3066052 c!509348) b!3066061))

(assert (= (and b!3066052 (not c!509348)) b!3066058))

(assert (= (and b!3066068 c!509347) b!3066050))

(assert (= (and b!3066068 (not c!509347)) b!3066071))

(assert (= (and b!3066050 c!509354) b!3066064))

(assert (= (and b!3066050 (not c!509354)) b!3066062))

(assert (= (and b!3066062 c!509351) b!3066066))

(assert (= (and b!3066062 (not c!509351)) b!3066073))

(assert (= (and b!3066071 (not res!1258659)) b!3066063))

(assert (= (and b!3066071 c!509350) b!3066053))

(assert (= (and b!3066071 (not c!509350)) b!3066051))

(assert (= (and b!3066051 c!509349) b!3066070))

(assert (= (and b!3066051 (not c!509349)) b!3066067))

(assert (= (and b!3066067 c!509346) b!3066072))

(assert (= (and b!3066067 (not c!509346)) b!3066069))

(assert (= (or b!3066050 b!3066071) bm!212436))

(assert (= (or b!3066050 b!3066071) bm!212435))

(assert (= (or b!3066062 b!3066071) bm!212432))

(assert (= (or b!3066050 b!3066063) bm!212437))

(assert (= (or b!3066055 b!3066067) bm!212438))

(assert (= (or b!3066052 bm!212436) bm!212433))

(assert (= (or b!3066052 bm!212432) bm!212434))

(assert (= (and d!855781 res!1258658) b!3066056))

(declare-fun m!3383757 () Bool)

(assert (=> bm!212433 m!3383757))

(declare-fun m!3383759 () Bool)

(assert (=> b!3066051 m!3383759))

(declare-fun m!3383761 () Bool)

(assert (=> bm!212437 m!3383761))

(declare-fun m!3383763 () Bool)

(assert (=> bm!212434 m!3383763))

(declare-fun m!3383765 () Bool)

(assert (=> d!855781 m!3383765))

(assert (=> d!855781 m!3383619))

(declare-fun m!3383767 () Bool)

(assert (=> bm!212435 m!3383767))

(declare-fun m!3383769 () Bool)

(assert (=> bm!212438 m!3383769))

(declare-fun m!3383771 () Bool)

(assert (=> b!3066056 m!3383771))

(assert (=> b!3066056 m!3383519))

(assert (=> b!3065530 d!855781))

(declare-fun d!855783 () Bool)

(assert (=> d!855783 (= (isEmpty!19563 s!11993) ((_ is Nil!35240) s!11993))))

(assert (=> b!3065528 d!855783))

(declare-fun d!855785 () Bool)

(assert (=> d!855785 (= (isEmptyLang!550 lt!1050681) ((_ is EmptyLang!9499) lt!1050681))))

(assert (=> b!3065533 d!855785))

(declare-fun bs!532587 () Bool)

(declare-fun b!3066108 () Bool)

(assert (= bs!532587 (and b!3066108 d!855769)))

(declare-fun lambda!114015 () Int)

(assert (=> bs!532587 (not (= lambda!114015 lambda!114010))))

(declare-fun bs!532588 () Bool)

(assert (= bs!532588 (and b!3066108 b!3065526)))

(assert (=> bs!532588 (not (= lambda!114015 lambda!113985))))

(assert (=> bs!532588 (not (= lambda!114015 lambda!113986))))

(declare-fun bs!532589 () Bool)

(assert (= bs!532589 (and b!3066108 d!855733)))

(assert (=> bs!532589 (not (= lambda!114015 lambda!113997))))

(assert (=> bs!532589 (not (= lambda!114015 lambda!113998))))

(assert (=> b!3066108 true))

(assert (=> b!3066108 true))

(declare-fun bs!532590 () Bool)

(declare-fun b!3066109 () Bool)

(assert (= bs!532590 (and b!3066109 b!3066108)))

(declare-fun lambda!114016 () Int)

(assert (=> bs!532590 (not (= lambda!114016 lambda!114015))))

(declare-fun bs!532591 () Bool)

(assert (= bs!532591 (and b!3066109 d!855769)))

(assert (=> bs!532591 (not (= lambda!114016 lambda!114010))))

(declare-fun bs!532592 () Bool)

(assert (= bs!532592 (and b!3066109 b!3065526)))

(assert (=> bs!532592 (not (= lambda!114016 lambda!113985))))

(assert (=> bs!532592 (= lambda!114016 lambda!113986)))

(declare-fun bs!532593 () Bool)

(assert (= bs!532593 (and b!3066109 d!855733)))

(assert (=> bs!532593 (not (= lambda!114016 lambda!113997))))

(assert (=> bs!532593 (= lambda!114016 lambda!113998)))

(assert (=> b!3066109 true))

(assert (=> b!3066109 true))

(declare-fun bm!212443 () Bool)

(declare-fun call!212448 () Bool)

(declare-fun c!509366 () Bool)

(assert (=> bm!212443 (= call!212448 (Exists!1762 (ite c!509366 lambda!114015 lambda!114016)))))

(declare-fun b!3066106 () Bool)

(declare-fun e!1919423 () Bool)

(declare-fun call!212449 () Bool)

(assert (=> b!3066106 (= e!1919423 call!212449)))

(declare-fun b!3066107 () Bool)

(declare-fun c!509363 () Bool)

(assert (=> b!3066107 (= c!509363 ((_ is ElementMatch!9499) r!17423))))

(declare-fun e!1919421 () Bool)

(declare-fun e!1919422 () Bool)

(assert (=> b!3066107 (= e!1919421 e!1919422)))

(declare-fun e!1919418 () Bool)

(assert (=> b!3066108 (= e!1919418 call!212448)))

(declare-fun e!1919424 () Bool)

(assert (=> b!3066109 (= e!1919424 call!212448)))

(declare-fun d!855787 () Bool)

(declare-fun c!509364 () Bool)

(assert (=> d!855787 (= c!509364 ((_ is EmptyExpr!9499) r!17423))))

(assert (=> d!855787 (= (matchRSpec!1636 r!17423 s!11993) e!1919423)))

(declare-fun bm!212444 () Bool)

(assert (=> bm!212444 (= call!212449 (isEmpty!19563 s!11993))))

(declare-fun b!3066110 () Bool)

(assert (=> b!3066110 (= e!1919423 e!1919421)))

(declare-fun res!1258678 () Bool)

(assert (=> b!3066110 (= res!1258678 (not ((_ is EmptyLang!9499) r!17423)))))

(assert (=> b!3066110 (=> (not res!1258678) (not e!1919421))))

(declare-fun b!3066111 () Bool)

(declare-fun res!1258676 () Bool)

(assert (=> b!3066111 (=> res!1258676 e!1919418)))

(assert (=> b!3066111 (= res!1258676 call!212449)))

(assert (=> b!3066111 (= e!1919424 e!1919418)))

(declare-fun b!3066112 () Bool)

(declare-fun e!1919420 () Bool)

(declare-fun e!1919419 () Bool)

(assert (=> b!3066112 (= e!1919420 e!1919419)))

(declare-fun res!1258677 () Bool)

(assert (=> b!3066112 (= res!1258677 (matchRSpec!1636 (regOne!19511 r!17423) s!11993))))

(assert (=> b!3066112 (=> res!1258677 e!1919419)))

(declare-fun b!3066113 () Bool)

(declare-fun c!509365 () Bool)

(assert (=> b!3066113 (= c!509365 ((_ is Union!9499) r!17423))))

(assert (=> b!3066113 (= e!1919422 e!1919420)))

(declare-fun b!3066114 () Bool)

(assert (=> b!3066114 (= e!1919422 (= s!11993 (Cons!35240 (c!509203 r!17423) Nil!35240)))))

(declare-fun b!3066115 () Bool)

(assert (=> b!3066115 (= e!1919419 (matchRSpec!1636 (regTwo!19511 r!17423) s!11993))))

(declare-fun b!3066116 () Bool)

(assert (=> b!3066116 (= e!1919420 e!1919424)))

(assert (=> b!3066116 (= c!509366 ((_ is Star!9499) r!17423))))

(assert (= (and d!855787 c!509364) b!3066106))

(assert (= (and d!855787 (not c!509364)) b!3066110))

(assert (= (and b!3066110 res!1258678) b!3066107))

(assert (= (and b!3066107 c!509363) b!3066114))

(assert (= (and b!3066107 (not c!509363)) b!3066113))

(assert (= (and b!3066113 c!509365) b!3066112))

(assert (= (and b!3066113 (not c!509365)) b!3066116))

(assert (= (and b!3066112 (not res!1258677)) b!3066115))

(assert (= (and b!3066116 c!509366) b!3066111))

(assert (= (and b!3066116 (not c!509366)) b!3066109))

(assert (= (and b!3066111 (not res!1258676)) b!3066108))

(assert (= (or b!3066108 b!3066109) bm!212443))

(assert (= (or b!3066106 b!3066111) bm!212444))

(declare-fun m!3383773 () Bool)

(assert (=> bm!212443 m!3383773))

(assert (=> bm!212444 m!3383523))

(declare-fun m!3383775 () Bool)

(assert (=> b!3066112 m!3383775))

(declare-fun m!3383777 () Bool)

(assert (=> b!3066115 m!3383777))

(assert (=> b!3065523 d!855787))

(declare-fun b!3066117 () Bool)

(declare-fun res!1258683 () Bool)

(declare-fun e!1919426 () Bool)

(assert (=> b!3066117 (=> res!1258683 e!1919426)))

(declare-fun e!1919430 () Bool)

(assert (=> b!3066117 (= res!1258683 e!1919430)))

(declare-fun res!1258682 () Bool)

(assert (=> b!3066117 (=> (not res!1258682) (not e!1919430))))

(declare-fun lt!1050784 () Bool)

(assert (=> b!3066117 (= res!1258682 lt!1050784)))

(declare-fun b!3066118 () Bool)

(declare-fun e!1919431 () Bool)

(declare-fun e!1919425 () Bool)

(assert (=> b!3066118 (= e!1919431 e!1919425)))

(declare-fun res!1258681 () Bool)

(assert (=> b!3066118 (=> res!1258681 e!1919425)))

(declare-fun call!212450 () Bool)

(assert (=> b!3066118 (= res!1258681 call!212450)))

(declare-fun b!3066119 () Bool)

(declare-fun e!1919429 () Bool)

(assert (=> b!3066119 (= e!1919429 (not lt!1050784))))

(declare-fun b!3066120 () Bool)

(declare-fun e!1919428 () Bool)

(assert (=> b!3066120 (= e!1919428 (= lt!1050784 call!212450))))

(declare-fun b!3066121 () Bool)

(declare-fun res!1258685 () Bool)

(assert (=> b!3066121 (=> res!1258685 e!1919426)))

(assert (=> b!3066121 (= res!1258685 (not ((_ is ElementMatch!9499) r!17423)))))

(assert (=> b!3066121 (= e!1919429 e!1919426)))

(declare-fun b!3066123 () Bool)

(assert (=> b!3066123 (= e!1919430 (= (head!6800 s!11993) (c!509203 r!17423)))))

(declare-fun b!3066124 () Bool)

(declare-fun e!1919427 () Bool)

(assert (=> b!3066124 (= e!1919427 (matchR!4381 (derivativeStep!2741 r!17423 (head!6800 s!11993)) (tail!5026 s!11993)))))

(declare-fun b!3066125 () Bool)

(declare-fun res!1258686 () Bool)

(assert (=> b!3066125 (=> res!1258686 e!1919425)))

(assert (=> b!3066125 (= res!1258686 (not (isEmpty!19563 (tail!5026 s!11993))))))

(declare-fun b!3066126 () Bool)

(assert (=> b!3066126 (= e!1919428 e!1919429)))

(declare-fun c!509367 () Bool)

(assert (=> b!3066126 (= c!509367 ((_ is EmptyLang!9499) r!17423))))

(declare-fun b!3066127 () Bool)

(declare-fun res!1258679 () Bool)

(assert (=> b!3066127 (=> (not res!1258679) (not e!1919430))))

(assert (=> b!3066127 (= res!1258679 (isEmpty!19563 (tail!5026 s!11993)))))

(declare-fun b!3066128 () Bool)

(assert (=> b!3066128 (= e!1919427 (nullable!3145 r!17423))))

(declare-fun bm!212445 () Bool)

(assert (=> bm!212445 (= call!212450 (isEmpty!19563 s!11993))))

(declare-fun b!3066129 () Bool)

(declare-fun res!1258680 () Bool)

(assert (=> b!3066129 (=> (not res!1258680) (not e!1919430))))

(assert (=> b!3066129 (= res!1258680 (not call!212450))))

(declare-fun b!3066130 () Bool)

(assert (=> b!3066130 (= e!1919425 (not (= (head!6800 s!11993) (c!509203 r!17423))))))

(declare-fun d!855789 () Bool)

(assert (=> d!855789 e!1919428))

(declare-fun c!509368 () Bool)

(assert (=> d!855789 (= c!509368 ((_ is EmptyExpr!9499) r!17423))))

(assert (=> d!855789 (= lt!1050784 e!1919427)))

(declare-fun c!509369 () Bool)

(assert (=> d!855789 (= c!509369 (isEmpty!19563 s!11993))))

(assert (=> d!855789 (validRegex!4232 r!17423)))

(assert (=> d!855789 (= (matchR!4381 r!17423 s!11993) lt!1050784)))

(declare-fun b!3066122 () Bool)

(assert (=> b!3066122 (= e!1919426 e!1919431)))

(declare-fun res!1258684 () Bool)

(assert (=> b!3066122 (=> (not res!1258684) (not e!1919431))))

(assert (=> b!3066122 (= res!1258684 (not lt!1050784))))

(assert (= (and d!855789 c!509369) b!3066128))

(assert (= (and d!855789 (not c!509369)) b!3066124))

(assert (= (and d!855789 c!509368) b!3066120))

(assert (= (and d!855789 (not c!509368)) b!3066126))

(assert (= (and b!3066126 c!509367) b!3066119))

(assert (= (and b!3066126 (not c!509367)) b!3066121))

(assert (= (and b!3066121 (not res!1258685)) b!3066117))

(assert (= (and b!3066117 res!1258682) b!3066129))

(assert (= (and b!3066129 res!1258680) b!3066127))

(assert (= (and b!3066127 res!1258679) b!3066123))

(assert (= (and b!3066117 (not res!1258683)) b!3066122))

(assert (= (and b!3066122 res!1258684) b!3066118))

(assert (= (and b!3066118 (not res!1258681)) b!3066125))

(assert (= (and b!3066125 (not res!1258686)) b!3066130))

(assert (= (or b!3066120 b!3066118 b!3066129) bm!212445))

(assert (=> bm!212445 m!3383523))

(declare-fun m!3383779 () Bool)

(assert (=> b!3066127 m!3383779))

(assert (=> b!3066127 m!3383779))

(declare-fun m!3383781 () Bool)

(assert (=> b!3066127 m!3383781))

(declare-fun m!3383783 () Bool)

(assert (=> b!3066123 m!3383783))

(assert (=> d!855789 m!3383523))

(assert (=> d!855789 m!3383547))

(assert (=> b!3066125 m!3383779))

(assert (=> b!3066125 m!3383779))

(assert (=> b!3066125 m!3383781))

(assert (=> b!3066130 m!3383783))

(assert (=> b!3066124 m!3383783))

(assert (=> b!3066124 m!3383783))

(declare-fun m!3383785 () Bool)

(assert (=> b!3066124 m!3383785))

(assert (=> b!3066124 m!3383779))

(assert (=> b!3066124 m!3383785))

(assert (=> b!3066124 m!3383779))

(declare-fun m!3383787 () Bool)

(assert (=> b!3066124 m!3383787))

(declare-fun m!3383789 () Bool)

(assert (=> b!3066128 m!3383789))

(assert (=> b!3065523 d!855789))

(declare-fun d!855791 () Bool)

(assert (=> d!855791 (= (matchR!4381 r!17423 s!11993) (matchRSpec!1636 r!17423 s!11993))))

(declare-fun lt!1050787 () Unit!49437)

(declare-fun choose!18173 (Regex!9499 List!35364) Unit!49437)

(assert (=> d!855791 (= lt!1050787 (choose!18173 r!17423 s!11993))))

(assert (=> d!855791 (validRegex!4232 r!17423)))

(assert (=> d!855791 (= (mainMatchTheorem!1636 r!17423 s!11993) lt!1050787)))

(declare-fun bs!532594 () Bool)

(assert (= bs!532594 d!855791))

(assert (=> bs!532594 m!3383513))

(assert (=> bs!532594 m!3383511))

(declare-fun m!3383791 () Bool)

(assert (=> bs!532594 m!3383791))

(assert (=> bs!532594 m!3383547))

(assert (=> b!3065523 d!855791))

(declare-fun b!3066131 () Bool)

(declare-fun res!1258691 () Bool)

(declare-fun e!1919433 () Bool)

(assert (=> b!3066131 (=> res!1258691 e!1919433)))

(declare-fun e!1919437 () Bool)

(assert (=> b!3066131 (= res!1258691 e!1919437)))

(declare-fun res!1258690 () Bool)

(assert (=> b!3066131 (=> (not res!1258690) (not e!1919437))))

(declare-fun lt!1050788 () Bool)

(assert (=> b!3066131 (= res!1258690 lt!1050788)))

(declare-fun b!3066132 () Bool)

(declare-fun e!1919438 () Bool)

(declare-fun e!1919432 () Bool)

(assert (=> b!3066132 (= e!1919438 e!1919432)))

(declare-fun res!1258689 () Bool)

(assert (=> b!3066132 (=> res!1258689 e!1919432)))

(declare-fun call!212451 () Bool)

(assert (=> b!3066132 (= res!1258689 call!212451)))

(declare-fun b!3066133 () Bool)

(declare-fun e!1919436 () Bool)

(assert (=> b!3066133 (= e!1919436 (not lt!1050788))))

(declare-fun b!3066134 () Bool)

(declare-fun e!1919435 () Bool)

(assert (=> b!3066134 (= e!1919435 (= lt!1050788 call!212451))))

(declare-fun b!3066135 () Bool)

(declare-fun res!1258693 () Bool)

(assert (=> b!3066135 (=> res!1258693 e!1919433)))

(assert (=> b!3066135 (= res!1258693 (not ((_ is ElementMatch!9499) lt!1050681)))))

(assert (=> b!3066135 (= e!1919436 e!1919433)))

(declare-fun b!3066137 () Bool)

(assert (=> b!3066137 (= e!1919437 (= (head!6800 s!11993) (c!509203 lt!1050681)))))

(declare-fun b!3066138 () Bool)

(declare-fun e!1919434 () Bool)

(assert (=> b!3066138 (= e!1919434 (matchR!4381 (derivativeStep!2741 lt!1050681 (head!6800 s!11993)) (tail!5026 s!11993)))))

(declare-fun b!3066139 () Bool)

(declare-fun res!1258694 () Bool)

(assert (=> b!3066139 (=> res!1258694 e!1919432)))

(assert (=> b!3066139 (= res!1258694 (not (isEmpty!19563 (tail!5026 s!11993))))))

(declare-fun b!3066140 () Bool)

(assert (=> b!3066140 (= e!1919435 e!1919436)))

(declare-fun c!509370 () Bool)

(assert (=> b!3066140 (= c!509370 ((_ is EmptyLang!9499) lt!1050681))))

(declare-fun b!3066141 () Bool)

(declare-fun res!1258687 () Bool)

(assert (=> b!3066141 (=> (not res!1258687) (not e!1919437))))

(assert (=> b!3066141 (= res!1258687 (isEmpty!19563 (tail!5026 s!11993)))))

(declare-fun b!3066142 () Bool)

(assert (=> b!3066142 (= e!1919434 (nullable!3145 lt!1050681))))

(declare-fun bm!212446 () Bool)

(assert (=> bm!212446 (= call!212451 (isEmpty!19563 s!11993))))

(declare-fun b!3066143 () Bool)

(declare-fun res!1258688 () Bool)

(assert (=> b!3066143 (=> (not res!1258688) (not e!1919437))))

(assert (=> b!3066143 (= res!1258688 (not call!212451))))

(declare-fun b!3066144 () Bool)

(assert (=> b!3066144 (= e!1919432 (not (= (head!6800 s!11993) (c!509203 lt!1050681))))))

(declare-fun d!855793 () Bool)

(assert (=> d!855793 e!1919435))

(declare-fun c!509371 () Bool)

(assert (=> d!855793 (= c!509371 ((_ is EmptyExpr!9499) lt!1050681))))

(assert (=> d!855793 (= lt!1050788 e!1919434)))

(declare-fun c!509372 () Bool)

(assert (=> d!855793 (= c!509372 (isEmpty!19563 s!11993))))

(assert (=> d!855793 (validRegex!4232 lt!1050681)))

(assert (=> d!855793 (= (matchR!4381 lt!1050681 s!11993) lt!1050788)))

(declare-fun b!3066136 () Bool)

(assert (=> b!3066136 (= e!1919433 e!1919438)))

(declare-fun res!1258692 () Bool)

(assert (=> b!3066136 (=> (not res!1258692) (not e!1919438))))

(assert (=> b!3066136 (= res!1258692 (not lt!1050788))))

(assert (= (and d!855793 c!509372) b!3066142))

(assert (= (and d!855793 (not c!509372)) b!3066138))

(assert (= (and d!855793 c!509371) b!3066134))

(assert (= (and d!855793 (not c!509371)) b!3066140))

(assert (= (and b!3066140 c!509370) b!3066133))

(assert (= (and b!3066140 (not c!509370)) b!3066135))

(assert (= (and b!3066135 (not res!1258693)) b!3066131))

(assert (= (and b!3066131 res!1258690) b!3066143))

(assert (= (and b!3066143 res!1258688) b!3066141))

(assert (= (and b!3066141 res!1258687) b!3066137))

(assert (= (and b!3066131 (not res!1258691)) b!3066136))

(assert (= (and b!3066136 res!1258692) b!3066132))

(assert (= (and b!3066132 (not res!1258689)) b!3066139))

(assert (= (and b!3066139 (not res!1258694)) b!3066144))

(assert (= (or b!3066134 b!3066132 b!3066143) bm!212446))

(assert (=> bm!212446 m!3383523))

(assert (=> b!3066141 m!3383779))

(assert (=> b!3066141 m!3383779))

(assert (=> b!3066141 m!3383781))

(assert (=> b!3066137 m!3383783))

(assert (=> d!855793 m!3383523))

(declare-fun m!3383793 () Bool)

(assert (=> d!855793 m!3383793))

(assert (=> b!3066139 m!3383779))

(assert (=> b!3066139 m!3383779))

(assert (=> b!3066139 m!3383781))

(assert (=> b!3066144 m!3383783))

(assert (=> b!3066138 m!3383783))

(assert (=> b!3066138 m!3383783))

(declare-fun m!3383795 () Bool)

(assert (=> b!3066138 m!3383795))

(assert (=> b!3066138 m!3383779))

(assert (=> b!3066138 m!3383795))

(assert (=> b!3066138 m!3383779))

(declare-fun m!3383797 () Bool)

(assert (=> b!3066138 m!3383797))

(declare-fun m!3383799 () Bool)

(assert (=> b!3066142 m!3383799))

(assert (=> b!3065521 d!855793))

(declare-fun b!3066145 () Bool)

(declare-fun res!1258699 () Bool)

(declare-fun e!1919440 () Bool)

(assert (=> b!3066145 (=> res!1258699 e!1919440)))

(declare-fun e!1919444 () Bool)

(assert (=> b!3066145 (= res!1258699 e!1919444)))

(declare-fun res!1258698 () Bool)

(assert (=> b!3066145 (=> (not res!1258698) (not e!1919444))))

(declare-fun lt!1050789 () Bool)

(assert (=> b!3066145 (= res!1258698 lt!1050789)))

(declare-fun b!3066146 () Bool)

(declare-fun e!1919445 () Bool)

(declare-fun e!1919439 () Bool)

(assert (=> b!3066146 (= e!1919445 e!1919439)))

(declare-fun res!1258697 () Bool)

(assert (=> b!3066146 (=> res!1258697 e!1919439)))

(declare-fun call!212452 () Bool)

(assert (=> b!3066146 (= res!1258697 call!212452)))

(declare-fun b!3066147 () Bool)

(declare-fun e!1919443 () Bool)

(assert (=> b!3066147 (= e!1919443 (not lt!1050789))))

(declare-fun b!3066148 () Bool)

(declare-fun e!1919442 () Bool)

(assert (=> b!3066148 (= e!1919442 (= lt!1050789 call!212452))))

(declare-fun b!3066149 () Bool)

(declare-fun res!1258701 () Bool)

(assert (=> b!3066149 (=> res!1258701 e!1919440)))

(assert (=> b!3066149 (= res!1258701 (not ((_ is ElementMatch!9499) (regTwo!19510 r!17423))))))

(assert (=> b!3066149 (= e!1919443 e!1919440)))

(declare-fun b!3066151 () Bool)

(assert (=> b!3066151 (= e!1919444 (= (head!6800 s!11993) (c!509203 (regTwo!19510 r!17423))))))

(declare-fun b!3066152 () Bool)

(declare-fun e!1919441 () Bool)

(assert (=> b!3066152 (= e!1919441 (matchR!4381 (derivativeStep!2741 (regTwo!19510 r!17423) (head!6800 s!11993)) (tail!5026 s!11993)))))

(declare-fun b!3066153 () Bool)

(declare-fun res!1258702 () Bool)

(assert (=> b!3066153 (=> res!1258702 e!1919439)))

(assert (=> b!3066153 (= res!1258702 (not (isEmpty!19563 (tail!5026 s!11993))))))

(declare-fun b!3066154 () Bool)

(assert (=> b!3066154 (= e!1919442 e!1919443)))

(declare-fun c!509373 () Bool)

(assert (=> b!3066154 (= c!509373 ((_ is EmptyLang!9499) (regTwo!19510 r!17423)))))

(declare-fun b!3066155 () Bool)

(declare-fun res!1258695 () Bool)

(assert (=> b!3066155 (=> (not res!1258695) (not e!1919444))))

(assert (=> b!3066155 (= res!1258695 (isEmpty!19563 (tail!5026 s!11993)))))

(declare-fun b!3066156 () Bool)

(assert (=> b!3066156 (= e!1919441 (nullable!3145 (regTwo!19510 r!17423)))))

(declare-fun bm!212447 () Bool)

(assert (=> bm!212447 (= call!212452 (isEmpty!19563 s!11993))))

(declare-fun b!3066157 () Bool)

(declare-fun res!1258696 () Bool)

(assert (=> b!3066157 (=> (not res!1258696) (not e!1919444))))

(assert (=> b!3066157 (= res!1258696 (not call!212452))))

(declare-fun b!3066158 () Bool)

(assert (=> b!3066158 (= e!1919439 (not (= (head!6800 s!11993) (c!509203 (regTwo!19510 r!17423)))))))

(declare-fun d!855795 () Bool)

(assert (=> d!855795 e!1919442))

(declare-fun c!509374 () Bool)

(assert (=> d!855795 (= c!509374 ((_ is EmptyExpr!9499) (regTwo!19510 r!17423)))))

(assert (=> d!855795 (= lt!1050789 e!1919441)))

(declare-fun c!509375 () Bool)

(assert (=> d!855795 (= c!509375 (isEmpty!19563 s!11993))))

(assert (=> d!855795 (validRegex!4232 (regTwo!19510 r!17423))))

(assert (=> d!855795 (= (matchR!4381 (regTwo!19510 r!17423) s!11993) lt!1050789)))

(declare-fun b!3066150 () Bool)

(assert (=> b!3066150 (= e!1919440 e!1919445)))

(declare-fun res!1258700 () Bool)

(assert (=> b!3066150 (=> (not res!1258700) (not e!1919445))))

(assert (=> b!3066150 (= res!1258700 (not lt!1050789))))

(assert (= (and d!855795 c!509375) b!3066156))

(assert (= (and d!855795 (not c!509375)) b!3066152))

(assert (= (and d!855795 c!509374) b!3066148))

(assert (= (and d!855795 (not c!509374)) b!3066154))

(assert (= (and b!3066154 c!509373) b!3066147))

(assert (= (and b!3066154 (not c!509373)) b!3066149))

(assert (= (and b!3066149 (not res!1258701)) b!3066145))

(assert (= (and b!3066145 res!1258698) b!3066157))

(assert (= (and b!3066157 res!1258696) b!3066155))

(assert (= (and b!3066155 res!1258695) b!3066151))

(assert (= (and b!3066145 (not res!1258699)) b!3066150))

(assert (= (and b!3066150 res!1258700) b!3066146))

(assert (= (and b!3066146 (not res!1258697)) b!3066153))

(assert (= (and b!3066153 (not res!1258702)) b!3066158))

(assert (= (or b!3066148 b!3066146 b!3066157) bm!212447))

(assert (=> bm!212447 m!3383523))

(assert (=> b!3066155 m!3383779))

(assert (=> b!3066155 m!3383779))

(assert (=> b!3066155 m!3383781))

(assert (=> b!3066151 m!3383783))

(assert (=> d!855795 m!3383523))

(assert (=> d!855795 m!3383747))

(assert (=> b!3066153 m!3383779))

(assert (=> b!3066153 m!3383779))

(assert (=> b!3066153 m!3383781))

(assert (=> b!3066158 m!3383783))

(assert (=> b!3066152 m!3383783))

(assert (=> b!3066152 m!3383783))

(declare-fun m!3383801 () Bool)

(assert (=> b!3066152 m!3383801))

(assert (=> b!3066152 m!3383779))

(assert (=> b!3066152 m!3383801))

(assert (=> b!3066152 m!3383779))

(declare-fun m!3383803 () Bool)

(assert (=> b!3066152 m!3383803))

(assert (=> b!3066156 m!3383755))

(assert (=> b!3065521 d!855795))

(declare-fun d!855797 () Bool)

(assert (=> d!855797 (= (matchR!4381 (regTwo!19510 r!17423) s!11993) (matchR!4381 (simplify!454 (regTwo!19510 r!17423)) s!11993))))

(declare-fun lt!1050792 () Unit!49437)

(declare-fun choose!18174 (Regex!9499 List!35364) Unit!49437)

(assert (=> d!855797 (= lt!1050792 (choose!18174 (regTwo!19510 r!17423) s!11993))))

(assert (=> d!855797 (validRegex!4232 (regTwo!19510 r!17423))))

(assert (=> d!855797 (= (lemmaSimplifySound!284 (regTwo!19510 r!17423) s!11993) lt!1050792)))

(declare-fun bs!532595 () Bool)

(assert (= bs!532595 d!855797))

(assert (=> bs!532595 m!3383507))

(assert (=> bs!532595 m!3383507))

(declare-fun m!3383805 () Bool)

(assert (=> bs!532595 m!3383805))

(assert (=> bs!532595 m!3383747))

(declare-fun m!3383807 () Bool)

(assert (=> bs!532595 m!3383807))

(assert (=> bs!532595 m!3383529))

(assert (=> b!3065521 d!855797))

(declare-fun d!855799 () Bool)

(assert (=> d!855799 (= (isEmptyExpr!556 lt!1050683) ((_ is EmptyExpr!9499) lt!1050683))))

(assert (=> b!3065527 d!855799))

(declare-fun b!3066170 () Bool)

(declare-fun e!1919448 () Bool)

(declare-fun tp!968051 () Bool)

(declare-fun tp!968052 () Bool)

(assert (=> b!3066170 (= e!1919448 (and tp!968051 tp!968052))))

(assert (=> b!3065520 (= tp!968000 e!1919448)))

(declare-fun b!3066172 () Bool)

(declare-fun tp!968053 () Bool)

(declare-fun tp!968050 () Bool)

(assert (=> b!3066172 (= e!1919448 (and tp!968053 tp!968050))))

(declare-fun b!3066169 () Bool)

(assert (=> b!3066169 (= e!1919448 tp_is_empty!16561)))

(declare-fun b!3066171 () Bool)

(declare-fun tp!968054 () Bool)

(assert (=> b!3066171 (= e!1919448 tp!968054)))

(assert (= (and b!3065520 ((_ is ElementMatch!9499) (regOne!19511 r!17423))) b!3066169))

(assert (= (and b!3065520 ((_ is Concat!14820) (regOne!19511 r!17423))) b!3066170))

(assert (= (and b!3065520 ((_ is Star!9499) (regOne!19511 r!17423))) b!3066171))

(assert (= (and b!3065520 ((_ is Union!9499) (regOne!19511 r!17423))) b!3066172))

(declare-fun b!3066174 () Bool)

(declare-fun e!1919449 () Bool)

(declare-fun tp!968056 () Bool)

(declare-fun tp!968057 () Bool)

(assert (=> b!3066174 (= e!1919449 (and tp!968056 tp!968057))))

(assert (=> b!3065520 (= tp!967998 e!1919449)))

(declare-fun b!3066176 () Bool)

(declare-fun tp!968058 () Bool)

(declare-fun tp!968055 () Bool)

(assert (=> b!3066176 (= e!1919449 (and tp!968058 tp!968055))))

(declare-fun b!3066173 () Bool)

(assert (=> b!3066173 (= e!1919449 tp_is_empty!16561)))

(declare-fun b!3066175 () Bool)

(declare-fun tp!968059 () Bool)

(assert (=> b!3066175 (= e!1919449 tp!968059)))

(assert (= (and b!3065520 ((_ is ElementMatch!9499) (regTwo!19511 r!17423))) b!3066173))

(assert (= (and b!3065520 ((_ is Concat!14820) (regTwo!19511 r!17423))) b!3066174))

(assert (= (and b!3065520 ((_ is Star!9499) (regTwo!19511 r!17423))) b!3066175))

(assert (= (and b!3065520 ((_ is Union!9499) (regTwo!19511 r!17423))) b!3066176))

(declare-fun b!3066178 () Bool)

(declare-fun e!1919450 () Bool)

(declare-fun tp!968061 () Bool)

(declare-fun tp!968062 () Bool)

(assert (=> b!3066178 (= e!1919450 (and tp!968061 tp!968062))))

(assert (=> b!3065531 (= tp!967996 e!1919450)))

(declare-fun b!3066180 () Bool)

(declare-fun tp!968063 () Bool)

(declare-fun tp!968060 () Bool)

(assert (=> b!3066180 (= e!1919450 (and tp!968063 tp!968060))))

(declare-fun b!3066177 () Bool)

(assert (=> b!3066177 (= e!1919450 tp_is_empty!16561)))

(declare-fun b!3066179 () Bool)

(declare-fun tp!968064 () Bool)

(assert (=> b!3066179 (= e!1919450 tp!968064)))

(assert (= (and b!3065531 ((_ is ElementMatch!9499) (regOne!19510 r!17423))) b!3066177))

(assert (= (and b!3065531 ((_ is Concat!14820) (regOne!19510 r!17423))) b!3066178))

(assert (= (and b!3065531 ((_ is Star!9499) (regOne!19510 r!17423))) b!3066179))

(assert (= (and b!3065531 ((_ is Union!9499) (regOne!19510 r!17423))) b!3066180))

(declare-fun b!3066182 () Bool)

(declare-fun e!1919451 () Bool)

(declare-fun tp!968066 () Bool)

(declare-fun tp!968067 () Bool)

(assert (=> b!3066182 (= e!1919451 (and tp!968066 tp!968067))))

(assert (=> b!3065531 (= tp!967997 e!1919451)))

(declare-fun b!3066184 () Bool)

(declare-fun tp!968068 () Bool)

(declare-fun tp!968065 () Bool)

(assert (=> b!3066184 (= e!1919451 (and tp!968068 tp!968065))))

(declare-fun b!3066181 () Bool)

(assert (=> b!3066181 (= e!1919451 tp_is_empty!16561)))

(declare-fun b!3066183 () Bool)

(declare-fun tp!968069 () Bool)

(assert (=> b!3066183 (= e!1919451 tp!968069)))

(assert (= (and b!3065531 ((_ is ElementMatch!9499) (regTwo!19510 r!17423))) b!3066181))

(assert (= (and b!3065531 ((_ is Concat!14820) (regTwo!19510 r!17423))) b!3066182))

(assert (= (and b!3065531 ((_ is Star!9499) (regTwo!19510 r!17423))) b!3066183))

(assert (= (and b!3065531 ((_ is Union!9499) (regTwo!19510 r!17423))) b!3066184))

(declare-fun b!3066186 () Bool)

(declare-fun e!1919452 () Bool)

(declare-fun tp!968071 () Bool)

(declare-fun tp!968072 () Bool)

(assert (=> b!3066186 (= e!1919452 (and tp!968071 tp!968072))))

(assert (=> b!3065532 (= tp!968001 e!1919452)))

(declare-fun b!3066188 () Bool)

(declare-fun tp!968073 () Bool)

(declare-fun tp!968070 () Bool)

(assert (=> b!3066188 (= e!1919452 (and tp!968073 tp!968070))))

(declare-fun b!3066185 () Bool)

(assert (=> b!3066185 (= e!1919452 tp_is_empty!16561)))

(declare-fun b!3066187 () Bool)

(declare-fun tp!968074 () Bool)

(assert (=> b!3066187 (= e!1919452 tp!968074)))

(assert (= (and b!3065532 ((_ is ElementMatch!9499) (reg!9828 r!17423))) b!3066185))

(assert (= (and b!3065532 ((_ is Concat!14820) (reg!9828 r!17423))) b!3066186))

(assert (= (and b!3065532 ((_ is Star!9499) (reg!9828 r!17423))) b!3066187))

(assert (= (and b!3065532 ((_ is Union!9499) (reg!9828 r!17423))) b!3066188))

(declare-fun b!3066193 () Bool)

(declare-fun e!1919455 () Bool)

(declare-fun tp!968077 () Bool)

(assert (=> b!3066193 (= e!1919455 (and tp_is_empty!16561 tp!968077))))

(assert (=> b!3065522 (= tp!967999 e!1919455)))

(assert (= (and b!3065522 ((_ is Cons!35240) (t!234429 s!11993))) b!3066193))

(check-sat (not b!3066186) (not bm!212393) (not b!3066178) (not b!3066031) (not b!3066115) (not b!3065760) (not b!3066155) (not d!855781) (not b!3066176) (not b!3066137) (not b!3065757) (not d!855795) (not b!3066144) (not b!3066156) (not b!3066128) (not b!3065759) (not d!855779) (not bm!212438) (not b!3065926) (not b!3066138) (not bm!212446) (not d!855769) (not b!3066184) (not b!3065756) (not b!3066158) (not b!3066123) (not b!3065928) (not b!3066056) (not d!855749) (not bm!212426) (not b!3066175) (not b!3065608) (not b!3066187) (not b!3066180) (not bm!212434) (not b!3066151) (not d!855751) (not b!3066174) (not b!3066170) (not d!855721) (not d!855789) (not d!855771) tp_is_empty!16561 (not bm!212443) (not b!3066182) (not bm!212433) (not b!3066188) (not b!3066183) (not b!3066142) (not b!3066171) (not b!3066124) (not b!3065755) (not b!3066139) (not bm!212360) (not b!3066127) (not bm!212430) (not b!3065762) (not b!3066130) (not bm!212431) (not b!3066152) (not b!3066172) (not d!855747) (not b!3066193) (not bm!212428) (not b!3066153) (not bm!212427) (not d!855773) (not bm!212356) (not b!3065930) (not d!855775) (not d!855791) (not d!855733) (not d!855793) (not d!855797) (not b!3065934) (not bm!212444) (not bm!212447) (not b!3065929) (not b!3066112) (not bm!212445) (not b!3066125) (not bm!212437) (not b!3066179) (not b!3066026) (not b!3066051) (not b!3065927) (not bm!212435) (not b!3066141))
(check-sat)
