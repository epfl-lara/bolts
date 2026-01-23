; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239544 () Bool)

(assert start!239544)

(declare-fun b!2454421 () Bool)

(declare-fun e!1557483 () Bool)

(declare-fun tp!780721 () Bool)

(assert (=> b!2454421 (= e!1557483 tp!780721)))

(declare-fun b!2454422 () Bool)

(declare-fun res!1040781 () Bool)

(declare-fun e!1557484 () Bool)

(assert (=> b!2454422 (=> (not res!1040781) (not e!1557484))))

(declare-datatypes ((C!14598 0))(
  ( (C!14599 (val!8541 Int)) )
))
(declare-datatypes ((Regex!7220 0))(
  ( (ElementMatch!7220 (c!391682 C!14598)) (Concat!11856 (regOne!14952 Regex!7220) (regTwo!14952 Regex!7220)) (EmptyExpr!7220) (Star!7220 (reg!7549 Regex!7220)) (EmptyLang!7220) (Union!7220 (regOne!14953 Regex!7220) (regTwo!14953 Regex!7220)) )
))
(declare-fun r!13927 () Regex!7220)

(declare-datatypes ((List!28676 0))(
  ( (Nil!28578) (Cons!28578 (h!33979 Regex!7220) (t!208653 List!28676)) )
))
(declare-fun l!9164 () List!28676)

(declare-fun generalisedConcat!321 (List!28676) Regex!7220)

(assert (=> b!2454422 (= res!1040781 (= r!13927 (generalisedConcat!321 l!9164)))))

(declare-fun b!2454423 () Bool)

(declare-fun res!1040784 () Bool)

(declare-fun e!1557487 () Bool)

(assert (=> b!2454423 (=> res!1040784 e!1557487)))

(declare-fun isEmpty!16606 (List!28676) Bool)

(assert (=> b!2454423 (= res!1040784 (isEmpty!16606 l!9164))))

(declare-fun b!2454425 () Bool)

(declare-fun e!1557481 () Bool)

(declare-fun tp_is_empty!11853 () Bool)

(declare-fun tp!780722 () Bool)

(assert (=> b!2454425 (= e!1557481 (and tp_is_empty!11853 tp!780722))))

(declare-fun b!2454426 () Bool)

(declare-fun e!1557479 () Bool)

(declare-datatypes ((List!28677 0))(
  ( (Nil!28579) (Cons!28579 (h!33980 C!14598) (t!208654 List!28677)) )
))
(declare-fun s!9460 () List!28677)

(declare-datatypes ((tuple2!28168 0))(
  ( (tuple2!28169 (_1!16625 List!28677) (_2!16625 List!28677)) )
))
(declare-fun lt!880117 () tuple2!28168)

(declare-fun ++!7108 (List!28677 List!28677) List!28677)

(assert (=> b!2454426 (= e!1557479 (= s!9460 (++!7108 (_1!16625 lt!880117) (_2!16625 lt!880117))))))

(declare-fun b!2454427 () Bool)

(declare-fun res!1040782 () Bool)

(assert (=> b!2454427 (=> res!1040782 e!1557479)))

(assert (=> b!2454427 (= res!1040782 false)))

(declare-fun b!2454428 () Bool)

(declare-fun e!1557480 () Bool)

(declare-fun e!1557482 () Bool)

(assert (=> b!2454428 (= e!1557480 e!1557482)))

(declare-fun res!1040775 () Bool)

(assert (=> b!2454428 (=> res!1040775 e!1557482)))

(declare-datatypes ((Option!5695 0))(
  ( (None!5694) (Some!5694 (v!31102 tuple2!28168)) )
))
(declare-fun lt!880118 () Option!5695)

(declare-fun isDefined!4521 (Option!5695) Bool)

(assert (=> b!2454428 (= res!1040775 (not (isDefined!4521 lt!880118)))))

(declare-fun lt!880119 () Regex!7220)

(declare-fun findConcatSeparation!803 (Regex!7220 Regex!7220 List!28677 List!28677 List!28677) Option!5695)

(assert (=> b!2454428 (= lt!880118 (findConcatSeparation!803 lt!880119 EmptyExpr!7220 Nil!28579 s!9460 s!9460))))

(declare-fun b!2454429 () Bool)

(assert (=> b!2454429 (= e!1557484 (not e!1557487))))

(declare-fun res!1040776 () Bool)

(assert (=> b!2454429 (=> res!1040776 e!1557487)))

(assert (=> b!2454429 (= res!1040776 (or (is-Concat!11856 r!13927) (is-EmptyExpr!7220 r!13927)))))

(declare-fun matchR!3335 (Regex!7220 List!28677) Bool)

(declare-fun matchRSpec!1067 (Regex!7220 List!28677) Bool)

(assert (=> b!2454429 (= (matchR!3335 r!13927 s!9460) (matchRSpec!1067 r!13927 s!9460))))

(declare-datatypes ((Unit!41895 0))(
  ( (Unit!41896) )
))
(declare-fun lt!880121 () Unit!41895)

(declare-fun mainMatchTheorem!1067 (Regex!7220 List!28677) Unit!41895)

(assert (=> b!2454429 (= lt!880121 (mainMatchTheorem!1067 r!13927 s!9460))))

(declare-fun b!2454430 () Bool)

(declare-fun res!1040779 () Bool)

(declare-fun e!1557486 () Bool)

(assert (=> b!2454430 (=> res!1040779 e!1557486)))

(declare-fun lt!880120 () List!28676)

(assert (=> b!2454430 (= res!1040779 (not (= (generalisedConcat!321 lt!880120) EmptyExpr!7220)))))

(declare-fun b!2454431 () Bool)

(assert (=> b!2454431 (= e!1557486 e!1557480)))

(declare-fun res!1040778 () Bool)

(assert (=> b!2454431 (=> res!1040778 e!1557480)))

(assert (=> b!2454431 (= res!1040778 (matchR!3335 lt!880119 s!9460))))

(declare-fun head!5598 (List!28676) Regex!7220)

(assert (=> b!2454431 (= lt!880119 (head!5598 l!9164))))

(declare-fun b!2454432 () Bool)

(declare-fun tp!780723 () Bool)

(declare-fun tp!780716 () Bool)

(assert (=> b!2454432 (= e!1557483 (and tp!780723 tp!780716))))

(declare-fun b!2454424 () Bool)

(declare-fun e!1557485 () Bool)

(declare-fun tp!780718 () Bool)

(declare-fun tp!780719 () Bool)

(assert (=> b!2454424 (= e!1557485 (and tp!780718 tp!780719))))

(declare-fun res!1040777 () Bool)

(assert (=> start!239544 (=> (not res!1040777) (not e!1557484))))

(declare-fun lambda!92980 () Int)

(declare-fun forall!5854 (List!28676 Int) Bool)

(assert (=> start!239544 (= res!1040777 (forall!5854 l!9164 lambda!92980))))

(assert (=> start!239544 e!1557484))

(assert (=> start!239544 e!1557485))

(assert (=> start!239544 e!1557483))

(assert (=> start!239544 e!1557481))

(declare-fun b!2454433 () Bool)

(assert (=> b!2454433 (= e!1557487 e!1557486)))

(declare-fun res!1040783 () Bool)

(assert (=> b!2454433 (=> res!1040783 e!1557486)))

(assert (=> b!2454433 (= res!1040783 (not (isEmpty!16606 lt!880120)))))

(declare-fun tail!3871 (List!28676) List!28676)

(assert (=> b!2454433 (= lt!880120 (tail!3871 l!9164))))

(declare-fun b!2454434 () Bool)

(assert (=> b!2454434 (= e!1557482 e!1557479)))

(declare-fun res!1040780 () Bool)

(assert (=> b!2454434 (=> res!1040780 e!1557479)))

(declare-fun validRegex!2912 (Regex!7220) Bool)

(assert (=> b!2454434 (= res!1040780 (not (validRegex!2912 lt!880119)))))

(declare-fun get!8837 (Option!5695) tuple2!28168)

(assert (=> b!2454434 (= lt!880117 (get!8837 lt!880118))))

(declare-fun b!2454435 () Bool)

(declare-fun tp!780720 () Bool)

(declare-fun tp!780717 () Bool)

(assert (=> b!2454435 (= e!1557483 (and tp!780720 tp!780717))))

(declare-fun b!2454436 () Bool)

(assert (=> b!2454436 (= e!1557483 tp_is_empty!11853)))

(assert (= (and start!239544 res!1040777) b!2454422))

(assert (= (and b!2454422 res!1040781) b!2454429))

(assert (= (and b!2454429 (not res!1040776)) b!2454423))

(assert (= (and b!2454423 (not res!1040784)) b!2454433))

(assert (= (and b!2454433 (not res!1040783)) b!2454430))

(assert (= (and b!2454430 (not res!1040779)) b!2454431))

(assert (= (and b!2454431 (not res!1040778)) b!2454428))

(assert (= (and b!2454428 (not res!1040775)) b!2454434))

(assert (= (and b!2454434 (not res!1040780)) b!2454427))

(assert (= (and b!2454427 (not res!1040782)) b!2454426))

(assert (= (and start!239544 (is-Cons!28578 l!9164)) b!2454424))

(assert (= (and start!239544 (is-ElementMatch!7220 r!13927)) b!2454436))

(assert (= (and start!239544 (is-Concat!11856 r!13927)) b!2454435))

(assert (= (and start!239544 (is-Star!7220 r!13927)) b!2454421))

(assert (= (and start!239544 (is-Union!7220 r!13927)) b!2454432))

(assert (= (and start!239544 (is-Cons!28579 s!9460)) b!2454425))

(declare-fun m!2826339 () Bool)

(assert (=> start!239544 m!2826339))

(declare-fun m!2826341 () Bool)

(assert (=> b!2454431 m!2826341))

(declare-fun m!2826343 () Bool)

(assert (=> b!2454431 m!2826343))

(declare-fun m!2826345 () Bool)

(assert (=> b!2454428 m!2826345))

(declare-fun m!2826347 () Bool)

(assert (=> b!2454428 m!2826347))

(declare-fun m!2826349 () Bool)

(assert (=> b!2454430 m!2826349))

(declare-fun m!2826351 () Bool)

(assert (=> b!2454434 m!2826351))

(declare-fun m!2826353 () Bool)

(assert (=> b!2454434 m!2826353))

(declare-fun m!2826355 () Bool)

(assert (=> b!2454429 m!2826355))

(declare-fun m!2826357 () Bool)

(assert (=> b!2454429 m!2826357))

(declare-fun m!2826359 () Bool)

(assert (=> b!2454429 m!2826359))

(declare-fun m!2826361 () Bool)

(assert (=> b!2454433 m!2826361))

(declare-fun m!2826363 () Bool)

(assert (=> b!2454433 m!2826363))

(declare-fun m!2826365 () Bool)

(assert (=> b!2454422 m!2826365))

(declare-fun m!2826367 () Bool)

(assert (=> b!2454423 m!2826367))

(declare-fun m!2826369 () Bool)

(assert (=> b!2454426 m!2826369))

(push 1)

(assert (not b!2454422))

(assert (not b!2454434))

(assert (not b!2454432))

(assert (not b!2454430))

(assert (not b!2454431))

(assert (not b!2454426))

(assert (not b!2454423))

(assert (not start!239544))

(assert tp_is_empty!11853)

(assert (not b!2454435))

(assert (not b!2454429))

(assert (not b!2454433))

(assert (not b!2454424))

(assert (not b!2454425))

(assert (not b!2454428))

(assert (not b!2454421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2454513 () Bool)

(declare-fun e!1557534 () Bool)

(declare-fun e!1557531 () Bool)

(assert (=> b!2454513 (= e!1557534 e!1557531)))

(declare-fun res!1040832 () Bool)

(assert (=> b!2454513 (=> (not res!1040832) (not e!1557531))))

(declare-fun lt!880139 () Bool)

(assert (=> b!2454513 (= res!1040832 (not lt!880139))))

(declare-fun b!2454514 () Bool)

(declare-fun e!1557533 () Bool)

(declare-fun call!150773 () Bool)

(assert (=> b!2454514 (= e!1557533 (= lt!880139 call!150773))))

(declare-fun b!2454515 () Bool)

(declare-fun e!1557535 () Bool)

(declare-fun nullable!2215 (Regex!7220) Bool)

(assert (=> b!2454515 (= e!1557535 (nullable!2215 lt!880119))))

(declare-fun b!2454516 () Bool)

(declare-fun e!1557532 () Bool)

(declare-fun head!5600 (List!28677) C!14598)

(assert (=> b!2454516 (= e!1557532 (not (= (head!5600 s!9460) (c!391682 lt!880119))))))

(declare-fun d!707145 () Bool)

(assert (=> d!707145 e!1557533))

(declare-fun c!391690 () Bool)

(assert (=> d!707145 (= c!391690 (is-EmptyExpr!7220 lt!880119))))

(assert (=> d!707145 (= lt!880139 e!1557535)))

(declare-fun c!391691 () Bool)

(declare-fun isEmpty!16608 (List!28677) Bool)

(assert (=> d!707145 (= c!391691 (isEmpty!16608 s!9460))))

(assert (=> d!707145 (validRegex!2912 lt!880119)))

(assert (=> d!707145 (= (matchR!3335 lt!880119 s!9460) lt!880139)))

(declare-fun b!2454517 () Bool)

(declare-fun e!1557530 () Bool)

(assert (=> b!2454517 (= e!1557533 e!1557530)))

(declare-fun c!391692 () Bool)

(assert (=> b!2454517 (= c!391692 (is-EmptyLang!7220 lt!880119))))

(declare-fun b!2454518 () Bool)

(declare-fun res!1040838 () Bool)

(assert (=> b!2454518 (=> res!1040838 e!1557534)))

(declare-fun e!1557529 () Bool)

(assert (=> b!2454518 (= res!1040838 e!1557529)))

(declare-fun res!1040835 () Bool)

(assert (=> b!2454518 (=> (not res!1040835) (not e!1557529))))

(assert (=> b!2454518 (= res!1040835 lt!880139)))

(declare-fun b!2454519 () Bool)

(declare-fun res!1040836 () Bool)

(assert (=> b!2454519 (=> res!1040836 e!1557532)))

(declare-fun tail!3873 (List!28677) List!28677)

(assert (=> b!2454519 (= res!1040836 (not (isEmpty!16608 (tail!3873 s!9460))))))

(declare-fun b!2454520 () Bool)

(declare-fun res!1040837 () Bool)

(assert (=> b!2454520 (=> (not res!1040837) (not e!1557529))))

(assert (=> b!2454520 (= res!1040837 (not call!150773))))

(declare-fun b!2454521 () Bool)

(assert (=> b!2454521 (= e!1557529 (= (head!5600 s!9460) (c!391682 lt!880119)))))

(declare-fun b!2454522 () Bool)

(assert (=> b!2454522 (= e!1557531 e!1557532)))

(declare-fun res!1040831 () Bool)

(assert (=> b!2454522 (=> res!1040831 e!1557532)))

(assert (=> b!2454522 (= res!1040831 call!150773)))

(declare-fun b!2454523 () Bool)

(declare-fun res!1040834 () Bool)

(assert (=> b!2454523 (=> (not res!1040834) (not e!1557529))))

(assert (=> b!2454523 (= res!1040834 (isEmpty!16608 (tail!3873 s!9460)))))

(declare-fun bm!150768 () Bool)

(assert (=> bm!150768 (= call!150773 (isEmpty!16608 s!9460))))

(declare-fun b!2454524 () Bool)

(declare-fun derivativeStep!1869 (Regex!7220 C!14598) Regex!7220)

(assert (=> b!2454524 (= e!1557535 (matchR!3335 (derivativeStep!1869 lt!880119 (head!5600 s!9460)) (tail!3873 s!9460)))))

(declare-fun b!2454525 () Bool)

(declare-fun res!1040833 () Bool)

(assert (=> b!2454525 (=> res!1040833 e!1557534)))

(assert (=> b!2454525 (= res!1040833 (not (is-ElementMatch!7220 lt!880119)))))

(assert (=> b!2454525 (= e!1557530 e!1557534)))

(declare-fun b!2454526 () Bool)

(assert (=> b!2454526 (= e!1557530 (not lt!880139))))

(assert (= (and d!707145 c!391691) b!2454515))

(assert (= (and d!707145 (not c!391691)) b!2454524))

(assert (= (and d!707145 c!391690) b!2454514))

(assert (= (and d!707145 (not c!391690)) b!2454517))

(assert (= (and b!2454517 c!391692) b!2454526))

(assert (= (and b!2454517 (not c!391692)) b!2454525))

(assert (= (and b!2454525 (not res!1040833)) b!2454518))

(assert (= (and b!2454518 res!1040835) b!2454520))

(assert (= (and b!2454520 res!1040837) b!2454523))

(assert (= (and b!2454523 res!1040834) b!2454521))

(assert (= (and b!2454518 (not res!1040838)) b!2454513))

(assert (= (and b!2454513 res!1040832) b!2454522))

(assert (= (and b!2454522 (not res!1040831)) b!2454519))

(assert (= (and b!2454519 (not res!1040836)) b!2454516))

(assert (= (or b!2454514 b!2454520 b!2454522) bm!150768))

(declare-fun m!2826403 () Bool)

(assert (=> d!707145 m!2826403))

(assert (=> d!707145 m!2826351))

(assert (=> bm!150768 m!2826403))

(declare-fun m!2826405 () Bool)

(assert (=> b!2454521 m!2826405))

(declare-fun m!2826407 () Bool)

(assert (=> b!2454519 m!2826407))

(assert (=> b!2454519 m!2826407))

(declare-fun m!2826409 () Bool)

(assert (=> b!2454519 m!2826409))

(assert (=> b!2454524 m!2826405))

(assert (=> b!2454524 m!2826405))

(declare-fun m!2826411 () Bool)

(assert (=> b!2454524 m!2826411))

(assert (=> b!2454524 m!2826407))

(assert (=> b!2454524 m!2826411))

(assert (=> b!2454524 m!2826407))

(declare-fun m!2826413 () Bool)

(assert (=> b!2454524 m!2826413))

(declare-fun m!2826415 () Bool)

(assert (=> b!2454515 m!2826415))

(assert (=> b!2454523 m!2826407))

(assert (=> b!2454523 m!2826407))

(assert (=> b!2454523 m!2826409))

(assert (=> b!2454516 m!2826405))

(assert (=> b!2454431 d!707145))

(declare-fun d!707149 () Bool)

(assert (=> d!707149 (= (head!5598 l!9164) (h!33979 l!9164))))

(assert (=> b!2454431 d!707149))

(declare-fun b!2454544 () Bool)

(declare-fun e!1557545 () List!28677)

(assert (=> b!2454544 (= e!1557545 (Cons!28579 (h!33980 (_1!16625 lt!880117)) (++!7108 (t!208654 (_1!16625 lt!880117)) (_2!16625 lt!880117))))))

(declare-fun b!2454543 () Bool)

(assert (=> b!2454543 (= e!1557545 (_2!16625 lt!880117))))

(declare-fun b!2454546 () Bool)

(declare-fun e!1557544 () Bool)

(declare-fun lt!880144 () List!28677)

(assert (=> b!2454546 (= e!1557544 (or (not (= (_2!16625 lt!880117) Nil!28579)) (= lt!880144 (_1!16625 lt!880117))))))

(declare-fun b!2454545 () Bool)

(declare-fun res!1040843 () Bool)

(assert (=> b!2454545 (=> (not res!1040843) (not e!1557544))))

(declare-fun size!22273 (List!28677) Int)

(assert (=> b!2454545 (= res!1040843 (= (size!22273 lt!880144) (+ (size!22273 (_1!16625 lt!880117)) (size!22273 (_2!16625 lt!880117)))))))

(declare-fun d!707151 () Bool)

(assert (=> d!707151 e!1557544))

(declare-fun res!1040844 () Bool)

(assert (=> d!707151 (=> (not res!1040844) (not e!1557544))))

(declare-fun content!3935 (List!28677) (Set C!14598))

(assert (=> d!707151 (= res!1040844 (= (content!3935 lt!880144) (set.union (content!3935 (_1!16625 lt!880117)) (content!3935 (_2!16625 lt!880117)))))))

(assert (=> d!707151 (= lt!880144 e!1557545)))

(declare-fun c!391699 () Bool)

(assert (=> d!707151 (= c!391699 (is-Nil!28579 (_1!16625 lt!880117)))))

(assert (=> d!707151 (= (++!7108 (_1!16625 lt!880117) (_2!16625 lt!880117)) lt!880144)))

(assert (= (and d!707151 c!391699) b!2454543))

(assert (= (and d!707151 (not c!391699)) b!2454544))

(assert (= (and d!707151 res!1040844) b!2454545))

(assert (= (and b!2454545 res!1040843) b!2454546))

(declare-fun m!2826417 () Bool)

(assert (=> b!2454544 m!2826417))

(declare-fun m!2826419 () Bool)

(assert (=> b!2454545 m!2826419))

(declare-fun m!2826421 () Bool)

(assert (=> b!2454545 m!2826421))

(declare-fun m!2826423 () Bool)

(assert (=> b!2454545 m!2826423))

(declare-fun m!2826425 () Bool)

(assert (=> d!707151 m!2826425))

(declare-fun m!2826427 () Bool)

(assert (=> d!707151 m!2826427))

(declare-fun m!2826429 () Bool)

(assert (=> d!707151 m!2826429))

(assert (=> b!2454426 d!707151))

(declare-fun d!707153 () Bool)

(declare-fun res!1040865 () Bool)

(declare-fun e!1557560 () Bool)

(assert (=> d!707153 (=> res!1040865 e!1557560)))

(assert (=> d!707153 (= res!1040865 (is-Nil!28578 l!9164))))

(assert (=> d!707153 (= (forall!5854 l!9164 lambda!92980) e!1557560)))

(declare-fun b!2454571 () Bool)

(declare-fun e!1557561 () Bool)

(assert (=> b!2454571 (= e!1557560 e!1557561)))

(declare-fun res!1040866 () Bool)

(assert (=> b!2454571 (=> (not res!1040866) (not e!1557561))))

(declare-fun dynLambda!12272 (Int Regex!7220) Bool)

(assert (=> b!2454571 (= res!1040866 (dynLambda!12272 lambda!92980 (h!33979 l!9164)))))

(declare-fun b!2454572 () Bool)

(assert (=> b!2454572 (= e!1557561 (forall!5854 (t!208653 l!9164) lambda!92980))))

(assert (= (and d!707153 (not res!1040865)) b!2454571))

(assert (= (and b!2454571 res!1040866) b!2454572))

(declare-fun b_lambda!75143 () Bool)

(assert (=> (not b_lambda!75143) (not b!2454571)))

(declare-fun m!2826431 () Bool)

(assert (=> b!2454571 m!2826431))

(declare-fun m!2826433 () Bool)

(assert (=> b!2454572 m!2826433))

(assert (=> start!239544 d!707153))

(declare-fun bs!465838 () Bool)

(declare-fun d!707155 () Bool)

(assert (= bs!465838 (and d!707155 start!239544)))

(declare-fun lambda!92986 () Int)

(assert (=> bs!465838 (= lambda!92986 lambda!92980)))

(declare-fun b!2454593 () Bool)

(declare-fun e!1557576 () Bool)

(declare-fun lt!880147 () Regex!7220)

(assert (=> b!2454593 (= e!1557576 (= lt!880147 (head!5598 l!9164)))))

(declare-fun b!2454594 () Bool)

(declare-fun isConcat!234 (Regex!7220) Bool)

(assert (=> b!2454594 (= e!1557576 (isConcat!234 lt!880147))))

(declare-fun b!2454595 () Bool)

(declare-fun e!1557579 () Bool)

(declare-fun e!1557575 () Bool)

(assert (=> b!2454595 (= e!1557579 e!1557575)))

(declare-fun c!391710 () Bool)

(assert (=> b!2454595 (= c!391710 (isEmpty!16606 l!9164))))

(assert (=> d!707155 e!1557579))

(declare-fun res!1040871 () Bool)

(assert (=> d!707155 (=> (not res!1040871) (not e!1557579))))

(assert (=> d!707155 (= res!1040871 (validRegex!2912 lt!880147))))

(declare-fun e!1557578 () Regex!7220)

(assert (=> d!707155 (= lt!880147 e!1557578)))

(declare-fun c!391712 () Bool)

(declare-fun e!1557574 () Bool)

(assert (=> d!707155 (= c!391712 e!1557574)))

(declare-fun res!1040872 () Bool)

(assert (=> d!707155 (=> (not res!1040872) (not e!1557574))))

(assert (=> d!707155 (= res!1040872 (is-Cons!28578 l!9164))))

(assert (=> d!707155 (forall!5854 l!9164 lambda!92986)))

(assert (=> d!707155 (= (generalisedConcat!321 l!9164) lt!880147)))

(declare-fun b!2454596 () Bool)

(declare-fun e!1557577 () Regex!7220)

(assert (=> b!2454596 (= e!1557578 e!1557577)))

(declare-fun c!391713 () Bool)

(assert (=> b!2454596 (= c!391713 (is-Cons!28578 l!9164))))

(declare-fun b!2454597 () Bool)

(assert (=> b!2454597 (= e!1557574 (isEmpty!16606 (t!208653 l!9164)))))

(declare-fun b!2454598 () Bool)

(assert (=> b!2454598 (= e!1557577 (Concat!11856 (h!33979 l!9164) (generalisedConcat!321 (t!208653 l!9164))))))

(declare-fun b!2454599 () Bool)

(declare-fun isEmptyExpr!234 (Regex!7220) Bool)

(assert (=> b!2454599 (= e!1557575 (isEmptyExpr!234 lt!880147))))

(declare-fun b!2454600 () Bool)

(assert (=> b!2454600 (= e!1557578 (h!33979 l!9164))))

(declare-fun b!2454601 () Bool)

(assert (=> b!2454601 (= e!1557577 EmptyExpr!7220)))

(declare-fun b!2454602 () Bool)

(assert (=> b!2454602 (= e!1557575 e!1557576)))

(declare-fun c!391711 () Bool)

(assert (=> b!2454602 (= c!391711 (isEmpty!16606 (tail!3871 l!9164)))))

(assert (= (and d!707155 res!1040872) b!2454597))

(assert (= (and d!707155 c!391712) b!2454600))

(assert (= (and d!707155 (not c!391712)) b!2454596))

(assert (= (and b!2454596 c!391713) b!2454598))

(assert (= (and b!2454596 (not c!391713)) b!2454601))

(assert (= (and d!707155 res!1040871) b!2454595))

(assert (= (and b!2454595 c!391710) b!2454599))

(assert (= (and b!2454595 (not c!391710)) b!2454602))

(assert (= (and b!2454602 c!391711) b!2454593))

(assert (= (and b!2454602 (not c!391711)) b!2454594))

(declare-fun m!2826435 () Bool)

(assert (=> b!2454599 m!2826435))

(declare-fun m!2826437 () Bool)

(assert (=> b!2454598 m!2826437))

(assert (=> b!2454595 m!2826367))

(declare-fun m!2826439 () Bool)

(assert (=> b!2454597 m!2826439))

(declare-fun m!2826441 () Bool)

(assert (=> b!2454594 m!2826441))

(declare-fun m!2826443 () Bool)

(assert (=> d!707155 m!2826443))

(declare-fun m!2826445 () Bool)

(assert (=> d!707155 m!2826445))

(assert (=> b!2454602 m!2826363))

(assert (=> b!2454602 m!2826363))

(declare-fun m!2826447 () Bool)

(assert (=> b!2454602 m!2826447))

(assert (=> b!2454593 m!2826343))

(assert (=> b!2454422 d!707155))

(declare-fun d!707157 () Bool)

(assert (=> d!707157 (= (isEmpty!16606 l!9164) (is-Nil!28578 l!9164))))

(assert (=> b!2454423 d!707157))

(declare-fun bm!150778 () Bool)

(declare-fun call!150785 () Bool)

(declare-fun c!391721 () Bool)

(assert (=> bm!150778 (= call!150785 (validRegex!2912 (ite c!391721 (regOne!14953 lt!880119) (regTwo!14952 lt!880119))))))

(declare-fun bm!150779 () Bool)

(declare-fun c!391722 () Bool)

(declare-fun call!150783 () Bool)

(assert (=> bm!150779 (= call!150783 (validRegex!2912 (ite c!391722 (reg!7549 lt!880119) (ite c!391721 (regTwo!14953 lt!880119) (regOne!14952 lt!880119)))))))

(declare-fun b!2454635 () Bool)

(declare-fun e!1557602 () Bool)

(declare-fun e!1557604 () Bool)

(assert (=> b!2454635 (= e!1557602 e!1557604)))

(assert (=> b!2454635 (= c!391722 (is-Star!7220 lt!880119))))

(declare-fun b!2454636 () Bool)

(declare-fun e!1557606 () Bool)

(assert (=> b!2454636 (= e!1557604 e!1557606)))

(assert (=> b!2454636 (= c!391721 (is-Union!7220 lt!880119))))

(declare-fun b!2454637 () Bool)

(declare-fun res!1040892 () Bool)

(declare-fun e!1557605 () Bool)

(assert (=> b!2454637 (=> res!1040892 e!1557605)))

(assert (=> b!2454637 (= res!1040892 (not (is-Concat!11856 lt!880119)))))

(assert (=> b!2454637 (= e!1557606 e!1557605)))

(declare-fun b!2454638 () Bool)

(declare-fun e!1557603 () Bool)

(assert (=> b!2454638 (= e!1557605 e!1557603)))

(declare-fun res!1040891 () Bool)

(assert (=> b!2454638 (=> (not res!1040891) (not e!1557603))))

(declare-fun call!150784 () Bool)

(assert (=> b!2454638 (= res!1040891 call!150784)))

(declare-fun b!2454639 () Bool)

(declare-fun e!1557601 () Bool)

(assert (=> b!2454639 (= e!1557601 call!150783)))

(declare-fun bm!150780 () Bool)

(assert (=> bm!150780 (= call!150784 call!150783)))

(declare-fun b!2454641 () Bool)

(assert (=> b!2454641 (= e!1557603 call!150785)))

(declare-fun d!707159 () Bool)

(declare-fun res!1040893 () Bool)

(assert (=> d!707159 (=> res!1040893 e!1557602)))

(assert (=> d!707159 (= res!1040893 (is-ElementMatch!7220 lt!880119))))

(assert (=> d!707159 (= (validRegex!2912 lt!880119) e!1557602)))

(declare-fun b!2454640 () Bool)

(assert (=> b!2454640 (= e!1557604 e!1557601)))

(declare-fun res!1040894 () Bool)

(assert (=> b!2454640 (= res!1040894 (not (nullable!2215 (reg!7549 lt!880119))))))

(assert (=> b!2454640 (=> (not res!1040894) (not e!1557601))))

(declare-fun b!2454642 () Bool)

(declare-fun e!1557607 () Bool)

(assert (=> b!2454642 (= e!1557607 call!150784)))

(declare-fun b!2454643 () Bool)

(declare-fun res!1040895 () Bool)

(assert (=> b!2454643 (=> (not res!1040895) (not e!1557607))))

(assert (=> b!2454643 (= res!1040895 call!150785)))

(assert (=> b!2454643 (= e!1557606 e!1557607)))

(assert (= (and d!707159 (not res!1040893)) b!2454635))

(assert (= (and b!2454635 c!391722) b!2454640))

(assert (= (and b!2454635 (not c!391722)) b!2454636))

(assert (= (and b!2454640 res!1040894) b!2454639))

(assert (= (and b!2454636 c!391721) b!2454643))

(assert (= (and b!2454636 (not c!391721)) b!2454637))

(assert (= (and b!2454643 res!1040895) b!2454642))

(assert (= (and b!2454637 (not res!1040892)) b!2454638))

(assert (= (and b!2454638 res!1040891) b!2454641))

(assert (= (or b!2454643 b!2454641) bm!150778))

(assert (= (or b!2454642 b!2454638) bm!150780))

(assert (= (or b!2454639 bm!150780) bm!150779))

(declare-fun m!2826463 () Bool)

(assert (=> bm!150778 m!2826463))

(declare-fun m!2826465 () Bool)

(assert (=> bm!150779 m!2826465))

(declare-fun m!2826467 () Bool)

(assert (=> b!2454640 m!2826467))

(assert (=> b!2454434 d!707159))

(declare-fun d!707165 () Bool)

(assert (=> d!707165 (= (get!8837 lt!880118) (v!31102 lt!880118))))

(assert (=> b!2454434 d!707165))

(declare-fun d!707167 () Bool)

(assert (=> d!707167 (= (isEmpty!16606 lt!880120) (is-Nil!28578 lt!880120))))

(assert (=> b!2454433 d!707167))

(declare-fun d!707169 () Bool)

(assert (=> d!707169 (= (tail!3871 l!9164) (t!208653 l!9164))))

(assert (=> b!2454433 d!707169))

(declare-fun d!707171 () Bool)

(declare-fun isEmpty!16609 (Option!5695) Bool)

(assert (=> d!707171 (= (isDefined!4521 lt!880118) (not (isEmpty!16609 lt!880118)))))

(declare-fun bs!465839 () Bool)

(assert (= bs!465839 d!707171))

(declare-fun m!2826469 () Bool)

(assert (=> bs!465839 m!2826469))

(assert (=> b!2454428 d!707171))

(declare-fun b!2454674 () Bool)

(declare-fun e!1557624 () Bool)

(declare-fun lt!880159 () Option!5695)

(assert (=> b!2454674 (= e!1557624 (not (isDefined!4521 lt!880159)))))

(declare-fun b!2454675 () Bool)

(declare-fun e!1557626 () Option!5695)

(assert (=> b!2454675 (= e!1557626 None!5694)))

(declare-fun b!2454676 () Bool)

(declare-fun e!1557628 () Option!5695)

(assert (=> b!2454676 (= e!1557628 e!1557626)))

(declare-fun c!391731 () Bool)

(assert (=> b!2454676 (= c!391731 (is-Nil!28579 s!9460))))

(declare-fun d!707173 () Bool)

(assert (=> d!707173 e!1557624))

(declare-fun res!1040913 () Bool)

(assert (=> d!707173 (=> res!1040913 e!1557624)))

(declare-fun e!1557627 () Bool)

(assert (=> d!707173 (= res!1040913 e!1557627)))

(declare-fun res!1040916 () Bool)

(assert (=> d!707173 (=> (not res!1040916) (not e!1557627))))

(assert (=> d!707173 (= res!1040916 (isDefined!4521 lt!880159))))

(assert (=> d!707173 (= lt!880159 e!1557628)))

(declare-fun c!391730 () Bool)

(declare-fun e!1557625 () Bool)

(assert (=> d!707173 (= c!391730 e!1557625)))

(declare-fun res!1040914 () Bool)

(assert (=> d!707173 (=> (not res!1040914) (not e!1557625))))

(assert (=> d!707173 (= res!1040914 (matchR!3335 lt!880119 Nil!28579))))

(assert (=> d!707173 (validRegex!2912 lt!880119)))

(assert (=> d!707173 (= (findConcatSeparation!803 lt!880119 EmptyExpr!7220 Nil!28579 s!9460 s!9460) lt!880159)))

(declare-fun b!2454677 () Bool)

(assert (=> b!2454677 (= e!1557627 (= (++!7108 (_1!16625 (get!8837 lt!880159)) (_2!16625 (get!8837 lt!880159))) s!9460))))

(declare-fun b!2454678 () Bool)

(assert (=> b!2454678 (= e!1557628 (Some!5694 (tuple2!28169 Nil!28579 s!9460)))))

(declare-fun b!2454679 () Bool)

(declare-fun res!1040915 () Bool)

(assert (=> b!2454679 (=> (not res!1040915) (not e!1557627))))

(assert (=> b!2454679 (= res!1040915 (matchR!3335 EmptyExpr!7220 (_2!16625 (get!8837 lt!880159))))))

(declare-fun b!2454680 () Bool)

(declare-fun lt!880158 () Unit!41895)

(declare-fun lt!880160 () Unit!41895)

(assert (=> b!2454680 (= lt!880158 lt!880160)))

(assert (=> b!2454680 (= (++!7108 (++!7108 Nil!28579 (Cons!28579 (h!33980 s!9460) Nil!28579)) (t!208654 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!709 (List!28677 C!14598 List!28677 List!28677) Unit!41895)

(assert (=> b!2454680 (= lt!880160 (lemmaMoveElementToOtherListKeepsConcatEq!709 Nil!28579 (h!33980 s!9460) (t!208654 s!9460) s!9460))))

(assert (=> b!2454680 (= e!1557626 (findConcatSeparation!803 lt!880119 EmptyExpr!7220 (++!7108 Nil!28579 (Cons!28579 (h!33980 s!9460) Nil!28579)) (t!208654 s!9460) s!9460))))

(declare-fun b!2454681 () Bool)

(assert (=> b!2454681 (= e!1557625 (matchR!3335 EmptyExpr!7220 s!9460))))

(declare-fun b!2454682 () Bool)

(declare-fun res!1040912 () Bool)

(assert (=> b!2454682 (=> (not res!1040912) (not e!1557627))))

(assert (=> b!2454682 (= res!1040912 (matchR!3335 lt!880119 (_1!16625 (get!8837 lt!880159))))))

(assert (= (and d!707173 res!1040914) b!2454681))

(assert (= (and d!707173 c!391730) b!2454678))

(assert (= (and d!707173 (not c!391730)) b!2454676))

(assert (= (and b!2454676 c!391731) b!2454675))

(assert (= (and b!2454676 (not c!391731)) b!2454680))

(assert (= (and d!707173 res!1040916) b!2454682))

(assert (= (and b!2454682 res!1040912) b!2454679))

(assert (= (and b!2454679 res!1040915) b!2454677))

(assert (= (and d!707173 (not res!1040913)) b!2454674))

(declare-fun m!2826485 () Bool)

(assert (=> b!2454682 m!2826485))

(declare-fun m!2826487 () Bool)

(assert (=> b!2454682 m!2826487))

(declare-fun m!2826489 () Bool)

(assert (=> d!707173 m!2826489))

(declare-fun m!2826491 () Bool)

(assert (=> d!707173 m!2826491))

(assert (=> d!707173 m!2826351))

(assert (=> b!2454677 m!2826485))

(declare-fun m!2826493 () Bool)

(assert (=> b!2454677 m!2826493))

(declare-fun m!2826495 () Bool)

(assert (=> b!2454680 m!2826495))

(assert (=> b!2454680 m!2826495))

(declare-fun m!2826497 () Bool)

(assert (=> b!2454680 m!2826497))

(declare-fun m!2826499 () Bool)

(assert (=> b!2454680 m!2826499))

(assert (=> b!2454680 m!2826495))

(declare-fun m!2826501 () Bool)

(assert (=> b!2454680 m!2826501))

(declare-fun m!2826503 () Bool)

(assert (=> b!2454681 m!2826503))

(assert (=> b!2454679 m!2826485))

(declare-fun m!2826505 () Bool)

(assert (=> b!2454679 m!2826505))

(assert (=> b!2454674 m!2826489))

(assert (=> b!2454428 d!707173))

(declare-fun bs!465840 () Bool)

(declare-fun d!707177 () Bool)

(assert (= bs!465840 (and d!707177 start!239544)))

(declare-fun lambda!92987 () Int)

(assert (=> bs!465840 (= lambda!92987 lambda!92980)))

(declare-fun bs!465841 () Bool)

(assert (= bs!465841 (and d!707177 d!707155)))

(assert (=> bs!465841 (= lambda!92987 lambda!92986)))

(declare-fun b!2454683 () Bool)

(declare-fun e!1557631 () Bool)

(declare-fun lt!880161 () Regex!7220)

(assert (=> b!2454683 (= e!1557631 (= lt!880161 (head!5598 lt!880120)))))

(declare-fun b!2454684 () Bool)

(assert (=> b!2454684 (= e!1557631 (isConcat!234 lt!880161))))

(declare-fun b!2454685 () Bool)

(declare-fun e!1557634 () Bool)

(declare-fun e!1557630 () Bool)

(assert (=> b!2454685 (= e!1557634 e!1557630)))

(declare-fun c!391732 () Bool)

(assert (=> b!2454685 (= c!391732 (isEmpty!16606 lt!880120))))

(assert (=> d!707177 e!1557634))

(declare-fun res!1040917 () Bool)

(assert (=> d!707177 (=> (not res!1040917) (not e!1557634))))

(assert (=> d!707177 (= res!1040917 (validRegex!2912 lt!880161))))

(declare-fun e!1557633 () Regex!7220)

(assert (=> d!707177 (= lt!880161 e!1557633)))

(declare-fun c!391734 () Bool)

(declare-fun e!1557629 () Bool)

(assert (=> d!707177 (= c!391734 e!1557629)))

(declare-fun res!1040918 () Bool)

(assert (=> d!707177 (=> (not res!1040918) (not e!1557629))))

(assert (=> d!707177 (= res!1040918 (is-Cons!28578 lt!880120))))

(assert (=> d!707177 (forall!5854 lt!880120 lambda!92987)))

(assert (=> d!707177 (= (generalisedConcat!321 lt!880120) lt!880161)))

(declare-fun b!2454686 () Bool)

(declare-fun e!1557632 () Regex!7220)

(assert (=> b!2454686 (= e!1557633 e!1557632)))

(declare-fun c!391735 () Bool)

(assert (=> b!2454686 (= c!391735 (is-Cons!28578 lt!880120))))

(declare-fun b!2454687 () Bool)

(assert (=> b!2454687 (= e!1557629 (isEmpty!16606 (t!208653 lt!880120)))))

(declare-fun b!2454688 () Bool)

(assert (=> b!2454688 (= e!1557632 (Concat!11856 (h!33979 lt!880120) (generalisedConcat!321 (t!208653 lt!880120))))))

(declare-fun b!2454689 () Bool)

(assert (=> b!2454689 (= e!1557630 (isEmptyExpr!234 lt!880161))))

(declare-fun b!2454690 () Bool)

(assert (=> b!2454690 (= e!1557633 (h!33979 lt!880120))))

(declare-fun b!2454691 () Bool)

(assert (=> b!2454691 (= e!1557632 EmptyExpr!7220)))

(declare-fun b!2454692 () Bool)

(assert (=> b!2454692 (= e!1557630 e!1557631)))

(declare-fun c!391733 () Bool)

(assert (=> b!2454692 (= c!391733 (isEmpty!16606 (tail!3871 lt!880120)))))

(assert (= (and d!707177 res!1040918) b!2454687))

(assert (= (and d!707177 c!391734) b!2454690))

(assert (= (and d!707177 (not c!391734)) b!2454686))

(assert (= (and b!2454686 c!391735) b!2454688))

(assert (= (and b!2454686 (not c!391735)) b!2454691))

(assert (= (and d!707177 res!1040917) b!2454685))

(assert (= (and b!2454685 c!391732) b!2454689))

(assert (= (and b!2454685 (not c!391732)) b!2454692))

(assert (= (and b!2454692 c!391733) b!2454683))

(assert (= (and b!2454692 (not c!391733)) b!2454684))

(declare-fun m!2826507 () Bool)

(assert (=> b!2454689 m!2826507))

(declare-fun m!2826509 () Bool)

(assert (=> b!2454688 m!2826509))

(assert (=> b!2454685 m!2826361))

(declare-fun m!2826511 () Bool)

(assert (=> b!2454687 m!2826511))

(declare-fun m!2826513 () Bool)

(assert (=> b!2454684 m!2826513))

(declare-fun m!2826515 () Bool)

(assert (=> d!707177 m!2826515))

(declare-fun m!2826517 () Bool)

(assert (=> d!707177 m!2826517))

(declare-fun m!2826519 () Bool)

(assert (=> b!2454692 m!2826519))

(assert (=> b!2454692 m!2826519))

(declare-fun m!2826521 () Bool)

(assert (=> b!2454692 m!2826521))

(declare-fun m!2826523 () Bool)

(assert (=> b!2454683 m!2826523))

(assert (=> b!2454430 d!707177))

(declare-fun b!2454693 () Bool)

(declare-fun e!1557640 () Bool)

(declare-fun e!1557637 () Bool)

(assert (=> b!2454693 (= e!1557640 e!1557637)))

(declare-fun res!1040920 () Bool)

(assert (=> b!2454693 (=> (not res!1040920) (not e!1557637))))

(declare-fun lt!880162 () Bool)

(assert (=> b!2454693 (= res!1040920 (not lt!880162))))

(declare-fun b!2454694 () Bool)

(declare-fun e!1557639 () Bool)

(declare-fun call!150786 () Bool)

(assert (=> b!2454694 (= e!1557639 (= lt!880162 call!150786))))

(declare-fun b!2454695 () Bool)

(declare-fun e!1557641 () Bool)

(assert (=> b!2454695 (= e!1557641 (nullable!2215 r!13927))))

(declare-fun b!2454696 () Bool)

(declare-fun e!1557638 () Bool)

(assert (=> b!2454696 (= e!1557638 (not (= (head!5600 s!9460) (c!391682 r!13927))))))

(declare-fun d!707179 () Bool)

(assert (=> d!707179 e!1557639))

(declare-fun c!391736 () Bool)

(assert (=> d!707179 (= c!391736 (is-EmptyExpr!7220 r!13927))))

(assert (=> d!707179 (= lt!880162 e!1557641)))

(declare-fun c!391737 () Bool)

(assert (=> d!707179 (= c!391737 (isEmpty!16608 s!9460))))

(assert (=> d!707179 (validRegex!2912 r!13927)))

(assert (=> d!707179 (= (matchR!3335 r!13927 s!9460) lt!880162)))

(declare-fun b!2454697 () Bool)

(declare-fun e!1557636 () Bool)

(assert (=> b!2454697 (= e!1557639 e!1557636)))

(declare-fun c!391738 () Bool)

(assert (=> b!2454697 (= c!391738 (is-EmptyLang!7220 r!13927))))

(declare-fun b!2454698 () Bool)

(declare-fun res!1040926 () Bool)

(assert (=> b!2454698 (=> res!1040926 e!1557640)))

(declare-fun e!1557635 () Bool)

(assert (=> b!2454698 (= res!1040926 e!1557635)))

(declare-fun res!1040923 () Bool)

(assert (=> b!2454698 (=> (not res!1040923) (not e!1557635))))

(assert (=> b!2454698 (= res!1040923 lt!880162)))

(declare-fun b!2454699 () Bool)

(declare-fun res!1040924 () Bool)

(assert (=> b!2454699 (=> res!1040924 e!1557638)))

(assert (=> b!2454699 (= res!1040924 (not (isEmpty!16608 (tail!3873 s!9460))))))

(declare-fun b!2454700 () Bool)

(declare-fun res!1040925 () Bool)

(assert (=> b!2454700 (=> (not res!1040925) (not e!1557635))))

(assert (=> b!2454700 (= res!1040925 (not call!150786))))

(declare-fun b!2454701 () Bool)

(assert (=> b!2454701 (= e!1557635 (= (head!5600 s!9460) (c!391682 r!13927)))))

(declare-fun b!2454702 () Bool)

(assert (=> b!2454702 (= e!1557637 e!1557638)))

(declare-fun res!1040919 () Bool)

(assert (=> b!2454702 (=> res!1040919 e!1557638)))

(assert (=> b!2454702 (= res!1040919 call!150786)))

(declare-fun b!2454703 () Bool)

(declare-fun res!1040922 () Bool)

(assert (=> b!2454703 (=> (not res!1040922) (not e!1557635))))

(assert (=> b!2454703 (= res!1040922 (isEmpty!16608 (tail!3873 s!9460)))))

(declare-fun bm!150781 () Bool)

(assert (=> bm!150781 (= call!150786 (isEmpty!16608 s!9460))))

(declare-fun b!2454704 () Bool)

(assert (=> b!2454704 (= e!1557641 (matchR!3335 (derivativeStep!1869 r!13927 (head!5600 s!9460)) (tail!3873 s!9460)))))

(declare-fun b!2454705 () Bool)

(declare-fun res!1040921 () Bool)

(assert (=> b!2454705 (=> res!1040921 e!1557640)))

(assert (=> b!2454705 (= res!1040921 (not (is-ElementMatch!7220 r!13927)))))

(assert (=> b!2454705 (= e!1557636 e!1557640)))

(declare-fun b!2454706 () Bool)

(assert (=> b!2454706 (= e!1557636 (not lt!880162))))

(assert (= (and d!707179 c!391737) b!2454695))

(assert (= (and d!707179 (not c!391737)) b!2454704))

(assert (= (and d!707179 c!391736) b!2454694))

(assert (= (and d!707179 (not c!391736)) b!2454697))

(assert (= (and b!2454697 c!391738) b!2454706))

(assert (= (and b!2454697 (not c!391738)) b!2454705))

(assert (= (and b!2454705 (not res!1040921)) b!2454698))

(assert (= (and b!2454698 res!1040923) b!2454700))

(assert (= (and b!2454700 res!1040925) b!2454703))

(assert (= (and b!2454703 res!1040922) b!2454701))

(assert (= (and b!2454698 (not res!1040926)) b!2454693))

(assert (= (and b!2454693 res!1040920) b!2454702))

(assert (= (and b!2454702 (not res!1040919)) b!2454699))

(assert (= (and b!2454699 (not res!1040924)) b!2454696))

(assert (= (or b!2454694 b!2454700 b!2454702) bm!150781))

(assert (=> d!707179 m!2826403))

(declare-fun m!2826525 () Bool)

(assert (=> d!707179 m!2826525))

(assert (=> bm!150781 m!2826403))

(assert (=> b!2454701 m!2826405))

(assert (=> b!2454699 m!2826407))

(assert (=> b!2454699 m!2826407))

(assert (=> b!2454699 m!2826409))

(assert (=> b!2454704 m!2826405))

(assert (=> b!2454704 m!2826405))

(declare-fun m!2826527 () Bool)

(assert (=> b!2454704 m!2826527))

(assert (=> b!2454704 m!2826407))

(assert (=> b!2454704 m!2826527))

(assert (=> b!2454704 m!2826407))

(declare-fun m!2826529 () Bool)

(assert (=> b!2454704 m!2826529))

(declare-fun m!2826531 () Bool)

(assert (=> b!2454695 m!2826531))

(assert (=> b!2454703 m!2826407))

(assert (=> b!2454703 m!2826407))

(assert (=> b!2454703 m!2826409))

(assert (=> b!2454696 m!2826405))

(assert (=> b!2454429 d!707179))

(declare-fun b!2454784 () Bool)

(assert (=> b!2454784 true))

(assert (=> b!2454784 true))

(declare-fun bs!465843 () Bool)

(declare-fun b!2454793 () Bool)

(assert (= bs!465843 (and b!2454793 b!2454784)))

(declare-fun lambda!92996 () Int)

(declare-fun lambda!92995 () Int)

(assert (=> bs!465843 (not (= lambda!92996 lambda!92995))))

(assert (=> b!2454793 true))

(assert (=> b!2454793 true))

(declare-fun b!2454783 () Bool)

(declare-fun e!1557686 () Bool)

(assert (=> b!2454783 (= e!1557686 (matchRSpec!1067 (regTwo!14953 r!13927) s!9460))))

(declare-fun e!1557688 () Bool)

(declare-fun call!150793 () Bool)

(assert (=> b!2454784 (= e!1557688 call!150793)))

(declare-fun bm!150787 () Bool)

(declare-fun call!150792 () Bool)

(assert (=> bm!150787 (= call!150792 (isEmpty!16608 s!9460))))

(declare-fun b!2454785 () Bool)

(declare-fun e!1557690 () Bool)

(assert (=> b!2454785 (= e!1557690 e!1557686)))

(declare-fun res!1040958 () Bool)

(assert (=> b!2454785 (= res!1040958 (matchRSpec!1067 (regOne!14953 r!13927) s!9460))))

(assert (=> b!2454785 (=> res!1040958 e!1557686)))

(declare-fun b!2454786 () Bool)

(declare-fun c!391765 () Bool)

(assert (=> b!2454786 (= c!391765 (is-ElementMatch!7220 r!13927))))

(declare-fun e!1557685 () Bool)

(declare-fun e!1557691 () Bool)

(assert (=> b!2454786 (= e!1557685 e!1557691)))

(declare-fun b!2454787 () Bool)

(declare-fun e!1557689 () Bool)

(assert (=> b!2454787 (= e!1557689 call!150792)))

(declare-fun b!2454788 () Bool)

(declare-fun e!1557687 () Bool)

(assert (=> b!2454788 (= e!1557690 e!1557687)))

(declare-fun c!391763 () Bool)

(assert (=> b!2454788 (= c!391763 (is-Star!7220 r!13927))))

(declare-fun b!2454789 () Bool)

(assert (=> b!2454789 (= e!1557691 (= s!9460 (Cons!28579 (c!391682 r!13927) Nil!28579)))))

(declare-fun b!2454790 () Bool)

(assert (=> b!2454790 (= e!1557689 e!1557685)))

(declare-fun res!1040957 () Bool)

(assert (=> b!2454790 (= res!1040957 (not (is-EmptyLang!7220 r!13927)))))

(assert (=> b!2454790 (=> (not res!1040957) (not e!1557685))))

(declare-fun b!2454791 () Bool)

(declare-fun res!1040959 () Bool)

(assert (=> b!2454791 (=> res!1040959 e!1557688)))

(assert (=> b!2454791 (= res!1040959 call!150792)))

(assert (=> b!2454791 (= e!1557687 e!1557688)))

(declare-fun b!2454792 () Bool)

(declare-fun c!391764 () Bool)

(assert (=> b!2454792 (= c!391764 (is-Union!7220 r!13927))))

(assert (=> b!2454792 (= e!1557691 e!1557690)))

(assert (=> b!2454793 (= e!1557687 call!150793)))

(declare-fun bm!150788 () Bool)

(declare-fun Exists!1241 (Int) Bool)

(assert (=> bm!150788 (= call!150793 (Exists!1241 (ite c!391763 lambda!92995 lambda!92996)))))

(declare-fun d!707181 () Bool)

(declare-fun c!391762 () Bool)

(assert (=> d!707181 (= c!391762 (is-EmptyExpr!7220 r!13927))))

(assert (=> d!707181 (= (matchRSpec!1067 r!13927 s!9460) e!1557689)))

(assert (= (and d!707181 c!391762) b!2454787))

(assert (= (and d!707181 (not c!391762)) b!2454790))

(assert (= (and b!2454790 res!1040957) b!2454786))

(assert (= (and b!2454786 c!391765) b!2454789))

(assert (= (and b!2454786 (not c!391765)) b!2454792))

(assert (= (and b!2454792 c!391764) b!2454785))

(assert (= (and b!2454792 (not c!391764)) b!2454788))

(assert (= (and b!2454785 (not res!1040958)) b!2454783))

(assert (= (and b!2454788 c!391763) b!2454791))

(assert (= (and b!2454788 (not c!391763)) b!2454793))

(assert (= (and b!2454791 (not res!1040959)) b!2454784))

(assert (= (or b!2454784 b!2454793) bm!150788))

(assert (= (or b!2454787 b!2454791) bm!150787))

(declare-fun m!2826555 () Bool)

(assert (=> b!2454783 m!2826555))

(assert (=> bm!150787 m!2826403))

(declare-fun m!2826557 () Bool)

(assert (=> b!2454785 m!2826557))

(declare-fun m!2826559 () Bool)

(assert (=> bm!150788 m!2826559))

(assert (=> b!2454429 d!707181))

(declare-fun d!707187 () Bool)

(assert (=> d!707187 (= (matchR!3335 r!13927 s!9460) (matchRSpec!1067 r!13927 s!9460))))

(declare-fun lt!880169 () Unit!41895)

(declare-fun choose!14541 (Regex!7220 List!28677) Unit!41895)

(assert (=> d!707187 (= lt!880169 (choose!14541 r!13927 s!9460))))

(assert (=> d!707187 (validRegex!2912 r!13927)))

(assert (=> d!707187 (= (mainMatchTheorem!1067 r!13927 s!9460) lt!880169)))

(declare-fun bs!465844 () Bool)

(assert (= bs!465844 d!707187))

(assert (=> bs!465844 m!2826355))

(assert (=> bs!465844 m!2826357))

(declare-fun m!2826561 () Bool)

(assert (=> bs!465844 m!2826561))

(assert (=> bs!465844 m!2826525))

(assert (=> b!2454429 d!707187))

(declare-fun b!2454802 () Bool)

(declare-fun e!1557694 () Bool)

(declare-fun tp!780750 () Bool)

(assert (=> b!2454802 (= e!1557694 (and tp_is_empty!11853 tp!780750))))

(assert (=> b!2454425 (= tp!780722 e!1557694)))

(assert (= (and b!2454425 (is-Cons!28579 (t!208654 s!9460))) b!2454802))

(declare-fun b!2454813 () Bool)

(declare-fun e!1557697 () Bool)

(assert (=> b!2454813 (= e!1557697 tp_is_empty!11853)))

(declare-fun b!2454815 () Bool)

(declare-fun tp!780764 () Bool)

(assert (=> b!2454815 (= e!1557697 tp!780764)))

(assert (=> b!2454421 (= tp!780721 e!1557697)))

(declare-fun b!2454814 () Bool)

(declare-fun tp!780762 () Bool)

(declare-fun tp!780763 () Bool)

(assert (=> b!2454814 (= e!1557697 (and tp!780762 tp!780763))))

(declare-fun b!2454816 () Bool)

(declare-fun tp!780765 () Bool)

(declare-fun tp!780761 () Bool)

(assert (=> b!2454816 (= e!1557697 (and tp!780765 tp!780761))))

(assert (= (and b!2454421 (is-ElementMatch!7220 (reg!7549 r!13927))) b!2454813))

(assert (= (and b!2454421 (is-Concat!11856 (reg!7549 r!13927))) b!2454814))

(assert (= (and b!2454421 (is-Star!7220 (reg!7549 r!13927))) b!2454815))

(assert (= (and b!2454421 (is-Union!7220 (reg!7549 r!13927))) b!2454816))

(declare-fun b!2454817 () Bool)

(declare-fun e!1557698 () Bool)

(assert (=> b!2454817 (= e!1557698 tp_is_empty!11853)))

(declare-fun b!2454819 () Bool)

(declare-fun tp!780769 () Bool)

(assert (=> b!2454819 (= e!1557698 tp!780769)))

(assert (=> b!2454432 (= tp!780723 e!1557698)))

(declare-fun b!2454818 () Bool)

(declare-fun tp!780767 () Bool)

(declare-fun tp!780768 () Bool)

(assert (=> b!2454818 (= e!1557698 (and tp!780767 tp!780768))))

(declare-fun b!2454820 () Bool)

(declare-fun tp!780770 () Bool)

(declare-fun tp!780766 () Bool)

(assert (=> b!2454820 (= e!1557698 (and tp!780770 tp!780766))))

(assert (= (and b!2454432 (is-ElementMatch!7220 (regOne!14953 r!13927))) b!2454817))

(assert (= (and b!2454432 (is-Concat!11856 (regOne!14953 r!13927))) b!2454818))

(assert (= (and b!2454432 (is-Star!7220 (regOne!14953 r!13927))) b!2454819))

(assert (= (and b!2454432 (is-Union!7220 (regOne!14953 r!13927))) b!2454820))

(declare-fun b!2454821 () Bool)

(declare-fun e!1557699 () Bool)

(assert (=> b!2454821 (= e!1557699 tp_is_empty!11853)))

(declare-fun b!2454823 () Bool)

(declare-fun tp!780774 () Bool)

(assert (=> b!2454823 (= e!1557699 tp!780774)))

(assert (=> b!2454432 (= tp!780716 e!1557699)))

(declare-fun b!2454822 () Bool)

(declare-fun tp!780772 () Bool)

(declare-fun tp!780773 () Bool)

(assert (=> b!2454822 (= e!1557699 (and tp!780772 tp!780773))))

(declare-fun b!2454824 () Bool)

(declare-fun tp!780775 () Bool)

(declare-fun tp!780771 () Bool)

(assert (=> b!2454824 (= e!1557699 (and tp!780775 tp!780771))))

(assert (= (and b!2454432 (is-ElementMatch!7220 (regTwo!14953 r!13927))) b!2454821))

(assert (= (and b!2454432 (is-Concat!11856 (regTwo!14953 r!13927))) b!2454822))

(assert (= (and b!2454432 (is-Star!7220 (regTwo!14953 r!13927))) b!2454823))

(assert (= (and b!2454432 (is-Union!7220 (regTwo!14953 r!13927))) b!2454824))

(declare-fun b!2454825 () Bool)

(declare-fun e!1557700 () Bool)

(assert (=> b!2454825 (= e!1557700 tp_is_empty!11853)))

(declare-fun b!2454827 () Bool)

(declare-fun tp!780779 () Bool)

(assert (=> b!2454827 (= e!1557700 tp!780779)))

(assert (=> b!2454435 (= tp!780720 e!1557700)))

(declare-fun b!2454826 () Bool)

(declare-fun tp!780777 () Bool)

(declare-fun tp!780778 () Bool)

(assert (=> b!2454826 (= e!1557700 (and tp!780777 tp!780778))))

(declare-fun b!2454828 () Bool)

(declare-fun tp!780780 () Bool)

(declare-fun tp!780776 () Bool)

(assert (=> b!2454828 (= e!1557700 (and tp!780780 tp!780776))))

(assert (= (and b!2454435 (is-ElementMatch!7220 (regOne!14952 r!13927))) b!2454825))

(assert (= (and b!2454435 (is-Concat!11856 (regOne!14952 r!13927))) b!2454826))

(assert (= (and b!2454435 (is-Star!7220 (regOne!14952 r!13927))) b!2454827))

(assert (= (and b!2454435 (is-Union!7220 (regOne!14952 r!13927))) b!2454828))

(declare-fun b!2454829 () Bool)

(declare-fun e!1557701 () Bool)

(assert (=> b!2454829 (= e!1557701 tp_is_empty!11853)))

(declare-fun b!2454831 () Bool)

(declare-fun tp!780784 () Bool)

(assert (=> b!2454831 (= e!1557701 tp!780784)))

(assert (=> b!2454435 (= tp!780717 e!1557701)))

(declare-fun b!2454830 () Bool)

(declare-fun tp!780782 () Bool)

(declare-fun tp!780783 () Bool)

(assert (=> b!2454830 (= e!1557701 (and tp!780782 tp!780783))))

(declare-fun b!2454832 () Bool)

(declare-fun tp!780785 () Bool)

(declare-fun tp!780781 () Bool)

(assert (=> b!2454832 (= e!1557701 (and tp!780785 tp!780781))))

(assert (= (and b!2454435 (is-ElementMatch!7220 (regTwo!14952 r!13927))) b!2454829))

(assert (= (and b!2454435 (is-Concat!11856 (regTwo!14952 r!13927))) b!2454830))

(assert (= (and b!2454435 (is-Star!7220 (regTwo!14952 r!13927))) b!2454831))

(assert (= (and b!2454435 (is-Union!7220 (regTwo!14952 r!13927))) b!2454832))

(declare-fun b!2454833 () Bool)

(declare-fun e!1557702 () Bool)

(assert (=> b!2454833 (= e!1557702 tp_is_empty!11853)))

(declare-fun b!2454835 () Bool)

(declare-fun tp!780789 () Bool)

(assert (=> b!2454835 (= e!1557702 tp!780789)))

(assert (=> b!2454424 (= tp!780718 e!1557702)))

(declare-fun b!2454834 () Bool)

(declare-fun tp!780787 () Bool)

(declare-fun tp!780788 () Bool)

(assert (=> b!2454834 (= e!1557702 (and tp!780787 tp!780788))))

(declare-fun b!2454836 () Bool)

(declare-fun tp!780790 () Bool)

(declare-fun tp!780786 () Bool)

(assert (=> b!2454836 (= e!1557702 (and tp!780790 tp!780786))))

(assert (= (and b!2454424 (is-ElementMatch!7220 (h!33979 l!9164))) b!2454833))

(assert (= (and b!2454424 (is-Concat!11856 (h!33979 l!9164))) b!2454834))

(assert (= (and b!2454424 (is-Star!7220 (h!33979 l!9164))) b!2454835))

(assert (= (and b!2454424 (is-Union!7220 (h!33979 l!9164))) b!2454836))

(declare-fun b!2454841 () Bool)

(declare-fun e!1557705 () Bool)

(declare-fun tp!780795 () Bool)

(declare-fun tp!780796 () Bool)

(assert (=> b!2454841 (= e!1557705 (and tp!780795 tp!780796))))

(assert (=> b!2454424 (= tp!780719 e!1557705)))

(assert (= (and b!2454424 (is-Cons!28578 (t!208653 l!9164))) b!2454841))

(declare-fun b_lambda!75145 () Bool)

(assert (= b_lambda!75143 (or start!239544 b_lambda!75145)))

(declare-fun bs!465845 () Bool)

(declare-fun d!707189 () Bool)

(assert (= bs!465845 (and d!707189 start!239544)))

(assert (=> bs!465845 (= (dynLambda!12272 lambda!92980 (h!33979 l!9164)) (validRegex!2912 (h!33979 l!9164)))))

(declare-fun m!2826563 () Bool)

(assert (=> bs!465845 m!2826563))

(assert (=> b!2454571 d!707189))

(push 1)

(assert (not d!707171))

(assert (not b!2454785))

(assert (not b!2454677))

(assert (not b!2454830))

(assert (not d!707151))

(assert (not b!2454699))

(assert (not b!2454841))

(assert (not b!2454828))

(assert (not b!2454689))

(assert (not bs!465845))

(assert (not b!2454692))

(assert (not b!2454834))

(assert tp_is_empty!11853)

(assert (not bm!150788))

(assert (not b!2454687))

(assert (not b!2454599))

(assert (not b!2454703))

(assert (not b!2454597))

(assert (not b!2454544))

(assert (not b!2454831))

(assert (not d!707145))

(assert (not b!2454680))

(assert (not b!2454818))

(assert (not bm!150787))

(assert (not b!2454674))

(assert (not b!2454688))

(assert (not d!707177))

(assert (not b!2454515))

(assert (not b!2454572))

(assert (not b!2454521))

(assert (not b!2454519))

(assert (not bm!150768))

(assert (not b!2454802))

(assert (not bm!150781))

(assert (not b!2454827))

(assert (not bm!150779))

(assert (not b!2454815))

(assert (not b!2454832))

(assert (not b!2454783))

(assert (not b_lambda!75145))

(assert (not b!2454685))

(assert (not b!2454593))

(assert (not d!707187))

(assert (not b!2454640))

(assert (not b!2454682))

(assert (not b!2454695))

(assert (not b!2454819))

(assert (not b!2454598))

(assert (not b!2454696))

(assert (not b!2454824))

(assert (not b!2454826))

(assert (not b!2454822))

(assert (not b!2454820))

(assert (not b!2454701))

(assert (not b!2454836))

(assert (not b!2454816))

(assert (not b!2454524))

(assert (not b!2454679))

(assert (not b!2454683))

(assert (not d!707155))

(assert (not b!2454545))

(assert (not b!2454595))

(assert (not b!2454516))

(assert (not b!2454814))

(assert (not b!2454835))

(assert (not b!2454602))

(assert (not b!2454523))

(assert (not b!2454684))

(assert (not d!707173))

(assert (not b!2454823))

(assert (not b!2454681))

(assert (not d!707179))

(assert (not bm!150778))

(assert (not b!2454594))

(assert (not b!2454704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

