; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89540 () Bool)

(assert start!89540)

(declare-fun b!1028605 () Bool)

(assert (=> b!1028605 true))

(assert (=> b!1028605 true))

(declare-fun lambda!36824 () Int)

(declare-fun lambda!36823 () Int)

(assert (=> b!1028605 (not (= lambda!36824 lambda!36823))))

(assert (=> b!1028605 true))

(assert (=> b!1028605 true))

(declare-fun b!1028596 () Bool)

(declare-fun res!462095 () Bool)

(declare-fun e!655995 () Bool)

(assert (=> b!1028596 (=> res!462095 e!655995)))

(assert (=> b!1028596 (= res!462095 false)))

(declare-fun res!462094 () Bool)

(declare-fun e!655996 () Bool)

(assert (=> start!89540 (=> (not res!462094) (not e!655996))))

(declare-datatypes ((C!6274 0))(
  ( (C!6275 (val!3385 Int)) )
))
(declare-datatypes ((Regex!2852 0))(
  ( (ElementMatch!2852 (c!170585 C!6274)) (Concat!4685 (regOne!6216 Regex!2852) (regTwo!6216 Regex!2852)) (EmptyExpr!2852) (Star!2852 (reg!3181 Regex!2852)) (EmptyLang!2852) (Union!2852 (regOne!6217 Regex!2852) (regTwo!6217 Regex!2852)) )
))
(declare-fun r!15766 () Regex!2852)

(declare-fun validRegex!1321 (Regex!2852) Bool)

(assert (=> start!89540 (= res!462094 (validRegex!1321 r!15766))))

(assert (=> start!89540 e!655996))

(declare-fun e!655997 () Bool)

(assert (=> start!89540 e!655997))

(declare-fun e!655994 () Bool)

(assert (=> start!89540 e!655994))

(declare-fun b!1028597 () Bool)

(declare-fun tp!311888 () Bool)

(assert (=> b!1028597 (= e!655997 tp!311888)))

(declare-fun b!1028598 () Bool)

(declare-fun e!655992 () Bool)

(assert (=> b!1028598 (= e!655992 e!655995)))

(declare-fun res!462098 () Bool)

(assert (=> b!1028598 (=> res!462098 e!655995)))

(declare-fun lt!355631 () Bool)

(declare-fun lt!355627 () Bool)

(assert (=> b!1028598 (= res!462098 (or (not lt!355631) (not lt!355627)))))

(assert (=> b!1028598 (= lt!355627 lt!355631)))

(declare-fun lt!355632 () Regex!2852)

(declare-datatypes ((List!10082 0))(
  ( (Nil!10066) (Cons!10066 (h!15467 C!6274) (t!101128 List!10082)) )
))
(declare-fun s!10566 () List!10082)

(declare-fun matchR!1388 (Regex!2852 List!10082) Bool)

(assert (=> b!1028598 (= lt!355631 (matchR!1388 lt!355632 s!10566))))

(assert (=> b!1028598 (= lt!355627 (matchR!1388 (regOne!6216 r!15766) s!10566))))

(declare-fun removeUselessConcat!409 (Regex!2852) Regex!2852)

(assert (=> b!1028598 (= lt!355632 (removeUselessConcat!409 (regOne!6216 r!15766)))))

(declare-datatypes ((Unit!15379 0))(
  ( (Unit!15380) )
))
(declare-fun lt!355628 () Unit!15379)

(declare-fun lemmaRemoveUselessConcatSound!247 (Regex!2852 List!10082) Unit!15379)

(assert (=> b!1028598 (= lt!355628 (lemmaRemoveUselessConcatSound!247 (regOne!6216 r!15766) s!10566))))

(declare-fun b!1028599 () Bool)

(declare-fun res!462099 () Bool)

(assert (=> b!1028599 (=> res!462099 e!655992)))

(declare-datatypes ((tuple2!11478 0))(
  ( (tuple2!11479 (_1!6565 List!10082) (_2!6565 List!10082)) )
))
(declare-datatypes ((Option!2381 0))(
  ( (None!2380) (Some!2380 (v!19797 tuple2!11478)) )
))
(declare-fun lt!355625 () Option!2381)

(declare-fun isEmpty!6441 (Option!2381) Bool)

(assert (=> b!1028599 (= res!462099 (not (isEmpty!6441 lt!355625)))))

(declare-fun b!1028600 () Bool)

(declare-fun ++!2760 (List!10082 List!10082) List!10082)

(assert (=> b!1028600 (= e!655995 (= (++!2760 s!10566 Nil!10066) s!10566))))

(declare-fun b!1028601 () Bool)

(declare-fun tp!311889 () Bool)

(declare-fun tp!311890 () Bool)

(assert (=> b!1028601 (= e!655997 (and tp!311889 tp!311890))))

(declare-fun b!1028602 () Bool)

(declare-fun e!655993 () Bool)

(assert (=> b!1028602 (= e!655996 (not e!655993))))

(declare-fun res!462096 () Bool)

(assert (=> b!1028602 (=> res!462096 e!655993)))

(declare-fun lt!355630 () Bool)

(assert (=> b!1028602 (= res!462096 (or lt!355630 (and (is-Concat!4685 r!15766) (is-EmptyExpr!2852 (regOne!6216 r!15766))) (not (is-Concat!4685 r!15766)) (not (is-EmptyExpr!2852 (regTwo!6216 r!15766)))))))

(declare-fun matchRSpec!651 (Regex!2852 List!10082) Bool)

(assert (=> b!1028602 (= lt!355630 (matchRSpec!651 r!15766 s!10566))))

(assert (=> b!1028602 (= lt!355630 (matchR!1388 r!15766 s!10566))))

(declare-fun lt!355626 () Unit!15379)

(declare-fun mainMatchTheorem!651 (Regex!2852 List!10082) Unit!15379)

(assert (=> b!1028602 (= lt!355626 (mainMatchTheorem!651 r!15766 s!10566))))

(declare-fun b!1028603 () Bool)

(declare-fun tp!311885 () Bool)

(declare-fun tp!311886 () Bool)

(assert (=> b!1028603 (= e!655997 (and tp!311885 tp!311886))))

(declare-fun b!1028604 () Bool)

(declare-fun tp_is_empty!5347 () Bool)

(declare-fun tp!311887 () Bool)

(assert (=> b!1028604 (= e!655994 (and tp_is_empty!5347 tp!311887))))

(assert (=> b!1028605 (= e!655993 e!655992)))

(declare-fun res!462093 () Bool)

(assert (=> b!1028605 (=> res!462093 e!655992)))

(declare-fun isEmpty!6442 (List!10082) Bool)

(assert (=> b!1028605 (= res!462093 (isEmpty!6442 s!10566))))

(declare-fun Exists!579 (Int) Bool)

(assert (=> b!1028605 (= (Exists!579 lambda!36823) (Exists!579 lambda!36824))))

(declare-fun lt!355624 () Unit!15379)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!275 (Regex!2852 Regex!2852 List!10082) Unit!15379)

(assert (=> b!1028605 (= lt!355624 (lemmaExistCutMatchRandMatchRSpecEquivalent!275 (regOne!6216 r!15766) EmptyExpr!2852 s!10566))))

(declare-fun isDefined!2023 (Option!2381) Bool)

(assert (=> b!1028605 (= (isDefined!2023 lt!355625) (Exists!579 lambda!36823))))

(declare-fun findConcatSeparation!487 (Regex!2852 Regex!2852 List!10082 List!10082 List!10082) Option!2381)

(assert (=> b!1028605 (= lt!355625 (findConcatSeparation!487 (regOne!6216 r!15766) EmptyExpr!2852 Nil!10066 s!10566 s!10566))))

(declare-fun lt!355629 () Unit!15379)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!487 (Regex!2852 Regex!2852 List!10082) Unit!15379)

(assert (=> b!1028605 (= lt!355629 (lemmaFindConcatSeparationEquivalentToExists!487 (regOne!6216 r!15766) EmptyExpr!2852 s!10566))))

(declare-fun b!1028606 () Bool)

(declare-fun res!462097 () Bool)

(assert (=> b!1028606 (=> res!462097 e!655995)))

(assert (=> b!1028606 (= res!462097 (not (validRegex!1321 (regOne!6216 r!15766))))))

(declare-fun b!1028607 () Bool)

(assert (=> b!1028607 (= e!655997 tp_is_empty!5347)))

(assert (= (and start!89540 res!462094) b!1028602))

(assert (= (and b!1028602 (not res!462096)) b!1028605))

(assert (= (and b!1028605 (not res!462093)) b!1028599))

(assert (= (and b!1028599 (not res!462099)) b!1028598))

(assert (= (and b!1028598 (not res!462098)) b!1028606))

(assert (= (and b!1028606 (not res!462097)) b!1028596))

(assert (= (and b!1028596 (not res!462095)) b!1028600))

(assert (= (and start!89540 (is-ElementMatch!2852 r!15766)) b!1028607))

(assert (= (and start!89540 (is-Concat!4685 r!15766)) b!1028603))

(assert (= (and start!89540 (is-Star!2852 r!15766)) b!1028597))

(assert (= (and start!89540 (is-Union!2852 r!15766)) b!1028601))

(assert (= (and start!89540 (is-Cons!10066 s!10566)) b!1028604))

(declare-fun m!1203461 () Bool)

(assert (=> b!1028599 m!1203461))

(declare-fun m!1203463 () Bool)

(assert (=> b!1028598 m!1203463))

(declare-fun m!1203465 () Bool)

(assert (=> b!1028598 m!1203465))

(declare-fun m!1203467 () Bool)

(assert (=> b!1028598 m!1203467))

(declare-fun m!1203469 () Bool)

(assert (=> b!1028598 m!1203469))

(declare-fun m!1203471 () Bool)

(assert (=> b!1028600 m!1203471))

(declare-fun m!1203473 () Bool)

(assert (=> b!1028606 m!1203473))

(declare-fun m!1203475 () Bool)

(assert (=> b!1028605 m!1203475))

(declare-fun m!1203477 () Bool)

(assert (=> b!1028605 m!1203477))

(declare-fun m!1203479 () Bool)

(assert (=> b!1028605 m!1203479))

(declare-fun m!1203481 () Bool)

(assert (=> b!1028605 m!1203481))

(declare-fun m!1203483 () Bool)

(assert (=> b!1028605 m!1203483))

(assert (=> b!1028605 m!1203481))

(declare-fun m!1203485 () Bool)

(assert (=> b!1028605 m!1203485))

(declare-fun m!1203487 () Bool)

(assert (=> b!1028605 m!1203487))

(declare-fun m!1203489 () Bool)

(assert (=> b!1028602 m!1203489))

(declare-fun m!1203491 () Bool)

(assert (=> b!1028602 m!1203491))

(declare-fun m!1203493 () Bool)

(assert (=> b!1028602 m!1203493))

(declare-fun m!1203495 () Bool)

(assert (=> start!89540 m!1203495))

(push 1)

(assert (not b!1028597))

(assert tp_is_empty!5347)

(assert (not b!1028598))

(assert (not b!1028603))

(assert (not b!1028601))

(assert (not b!1028599))

(assert (not start!89540))

(assert (not b!1028605))

(assert (not b!1028600))

(assert (not b!1028606))

(assert (not b!1028602))

(assert (not b!1028604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!295342 () Bool)

(assert (=> d!295342 (= (isEmpty!6441 lt!355625) (not (is-Some!2380 lt!355625)))))

(assert (=> b!1028599 d!295342))

(declare-fun b!1028692 () Bool)

(declare-fun e!656042 () Bool)

(declare-fun e!656040 () Bool)

(assert (=> b!1028692 (= e!656042 e!656040)))

(declare-fun res!462153 () Bool)

(assert (=> b!1028692 (=> (not res!462153) (not e!656040))))

(declare-fun lt!355662 () Bool)

(assert (=> b!1028692 (= res!462153 (not lt!355662))))

(declare-fun b!1028693 () Bool)

(declare-fun e!656041 () Bool)

(declare-fun head!1902 (List!10082) C!6274)

(assert (=> b!1028693 (= e!656041 (not (= (head!1902 s!10566) (c!170585 lt!355632))))))

(declare-fun b!1028694 () Bool)

(declare-fun res!462155 () Bool)

(declare-fun e!656036 () Bool)

(assert (=> b!1028694 (=> (not res!462155) (not e!656036))))

(declare-fun tail!1464 (List!10082) List!10082)

(assert (=> b!1028694 (= res!462155 (isEmpty!6442 (tail!1464 s!10566)))))

(declare-fun d!295344 () Bool)

(declare-fun e!656038 () Bool)

(assert (=> d!295344 e!656038))

(declare-fun c!170595 () Bool)

(assert (=> d!295344 (= c!170595 (is-EmptyExpr!2852 lt!355632))))

(declare-fun e!656037 () Bool)

(assert (=> d!295344 (= lt!355662 e!656037)))

(declare-fun c!170594 () Bool)

(assert (=> d!295344 (= c!170594 (isEmpty!6442 s!10566))))

(assert (=> d!295344 (validRegex!1321 lt!355632)))

(assert (=> d!295344 (= (matchR!1388 lt!355632 s!10566) lt!355662)))

(declare-fun b!1028695 () Bool)

(declare-fun res!462154 () Bool)

(assert (=> b!1028695 (=> (not res!462154) (not e!656036))))

(declare-fun call!70786 () Bool)

(assert (=> b!1028695 (= res!462154 (not call!70786))))

(declare-fun b!1028696 () Bool)

(assert (=> b!1028696 (= e!656038 (= lt!355662 call!70786))))

(declare-fun b!1028697 () Bool)

(declare-fun derivativeStep!748 (Regex!2852 C!6274) Regex!2852)

(assert (=> b!1028697 (= e!656037 (matchR!1388 (derivativeStep!748 lt!355632 (head!1902 s!10566)) (tail!1464 s!10566)))))

(declare-fun b!1028698 () Bool)

(declare-fun res!462156 () Bool)

(assert (=> b!1028698 (=> res!462156 e!656042)))

(assert (=> b!1028698 (= res!462156 (not (is-ElementMatch!2852 lt!355632)))))

(declare-fun e!656039 () Bool)

(assert (=> b!1028698 (= e!656039 e!656042)))

(declare-fun bm!70781 () Bool)

(assert (=> bm!70781 (= call!70786 (isEmpty!6442 s!10566))))

(declare-fun b!1028699 () Bool)

(assert (=> b!1028699 (= e!656040 e!656041)))

(declare-fun res!462152 () Bool)

(assert (=> b!1028699 (=> res!462152 e!656041)))

(assert (=> b!1028699 (= res!462152 call!70786)))

(declare-fun b!1028700 () Bool)

(declare-fun res!462151 () Bool)

(assert (=> b!1028700 (=> res!462151 e!656041)))

(assert (=> b!1028700 (= res!462151 (not (isEmpty!6442 (tail!1464 s!10566))))))

(declare-fun b!1028701 () Bool)

(assert (=> b!1028701 (= e!656039 (not lt!355662))))

(declare-fun b!1028702 () Bool)

(declare-fun nullable!947 (Regex!2852) Bool)

(assert (=> b!1028702 (= e!656037 (nullable!947 lt!355632))))

(declare-fun b!1028703 () Bool)

(assert (=> b!1028703 (= e!656038 e!656039)))

(declare-fun c!170593 () Bool)

(assert (=> b!1028703 (= c!170593 (is-EmptyLang!2852 lt!355632))))

(declare-fun b!1028704 () Bool)

(assert (=> b!1028704 (= e!656036 (= (head!1902 s!10566) (c!170585 lt!355632)))))

(declare-fun b!1028705 () Bool)

(declare-fun res!462149 () Bool)

(assert (=> b!1028705 (=> res!462149 e!656042)))

(assert (=> b!1028705 (= res!462149 e!656036)))

(declare-fun res!462150 () Bool)

(assert (=> b!1028705 (=> (not res!462150) (not e!656036))))

(assert (=> b!1028705 (= res!462150 lt!355662)))

(assert (= (and d!295344 c!170594) b!1028702))

(assert (= (and d!295344 (not c!170594)) b!1028697))

(assert (= (and d!295344 c!170595) b!1028696))

(assert (= (and d!295344 (not c!170595)) b!1028703))

(assert (= (and b!1028703 c!170593) b!1028701))

(assert (= (and b!1028703 (not c!170593)) b!1028698))

(assert (= (and b!1028698 (not res!462156)) b!1028705))

(assert (= (and b!1028705 res!462150) b!1028695))

(assert (= (and b!1028695 res!462154) b!1028694))

(assert (= (and b!1028694 res!462155) b!1028704))

(assert (= (and b!1028705 (not res!462149)) b!1028692))

(assert (= (and b!1028692 res!462153) b!1028699))

(assert (= (and b!1028699 (not res!462152)) b!1028700))

(assert (= (and b!1028700 (not res!462151)) b!1028693))

(assert (= (or b!1028696 b!1028695 b!1028699) bm!70781))

(declare-fun m!1203533 () Bool)

(assert (=> b!1028702 m!1203533))

(declare-fun m!1203535 () Bool)

(assert (=> b!1028697 m!1203535))

(assert (=> b!1028697 m!1203535))

(declare-fun m!1203537 () Bool)

(assert (=> b!1028697 m!1203537))

(declare-fun m!1203539 () Bool)

(assert (=> b!1028697 m!1203539))

(assert (=> b!1028697 m!1203537))

(assert (=> b!1028697 m!1203539))

(declare-fun m!1203541 () Bool)

(assert (=> b!1028697 m!1203541))

(assert (=> d!295344 m!1203485))

(declare-fun m!1203543 () Bool)

(assert (=> d!295344 m!1203543))

(assert (=> b!1028693 m!1203535))

(assert (=> b!1028704 m!1203535))

(assert (=> b!1028694 m!1203539))

(assert (=> b!1028694 m!1203539))

(declare-fun m!1203545 () Bool)

(assert (=> b!1028694 m!1203545))

(assert (=> bm!70781 m!1203485))

(assert (=> b!1028700 m!1203539))

(assert (=> b!1028700 m!1203539))

(assert (=> b!1028700 m!1203545))

(assert (=> b!1028598 d!295344))

(declare-fun b!1028706 () Bool)

(declare-fun e!656049 () Bool)

(declare-fun e!656047 () Bool)

(assert (=> b!1028706 (= e!656049 e!656047)))

(declare-fun res!462161 () Bool)

(assert (=> b!1028706 (=> (not res!462161) (not e!656047))))

(declare-fun lt!355663 () Bool)

(assert (=> b!1028706 (= res!462161 (not lt!355663))))

(declare-fun b!1028707 () Bool)

(declare-fun e!656048 () Bool)

(assert (=> b!1028707 (= e!656048 (not (= (head!1902 s!10566) (c!170585 (regOne!6216 r!15766)))))))

(declare-fun b!1028708 () Bool)

(declare-fun res!462163 () Bool)

(declare-fun e!656043 () Bool)

(assert (=> b!1028708 (=> (not res!462163) (not e!656043))))

(assert (=> b!1028708 (= res!462163 (isEmpty!6442 (tail!1464 s!10566)))))

(declare-fun d!295348 () Bool)

(declare-fun e!656045 () Bool)

(assert (=> d!295348 e!656045))

(declare-fun c!170598 () Bool)

(assert (=> d!295348 (= c!170598 (is-EmptyExpr!2852 (regOne!6216 r!15766)))))

(declare-fun e!656044 () Bool)

(assert (=> d!295348 (= lt!355663 e!656044)))

(declare-fun c!170597 () Bool)

(assert (=> d!295348 (= c!170597 (isEmpty!6442 s!10566))))

(assert (=> d!295348 (validRegex!1321 (regOne!6216 r!15766))))

(assert (=> d!295348 (= (matchR!1388 (regOne!6216 r!15766) s!10566) lt!355663)))

(declare-fun b!1028709 () Bool)

(declare-fun res!462162 () Bool)

(assert (=> b!1028709 (=> (not res!462162) (not e!656043))))

(declare-fun call!70787 () Bool)

(assert (=> b!1028709 (= res!462162 (not call!70787))))

(declare-fun b!1028710 () Bool)

(assert (=> b!1028710 (= e!656045 (= lt!355663 call!70787))))

(declare-fun b!1028711 () Bool)

(assert (=> b!1028711 (= e!656044 (matchR!1388 (derivativeStep!748 (regOne!6216 r!15766) (head!1902 s!10566)) (tail!1464 s!10566)))))

(declare-fun b!1028712 () Bool)

(declare-fun res!462164 () Bool)

(assert (=> b!1028712 (=> res!462164 e!656049)))

(assert (=> b!1028712 (= res!462164 (not (is-ElementMatch!2852 (regOne!6216 r!15766))))))

(declare-fun e!656046 () Bool)

(assert (=> b!1028712 (= e!656046 e!656049)))

(declare-fun bm!70782 () Bool)

(assert (=> bm!70782 (= call!70787 (isEmpty!6442 s!10566))))

(declare-fun b!1028713 () Bool)

(assert (=> b!1028713 (= e!656047 e!656048)))

(declare-fun res!462160 () Bool)

(assert (=> b!1028713 (=> res!462160 e!656048)))

(assert (=> b!1028713 (= res!462160 call!70787)))

(declare-fun b!1028714 () Bool)

(declare-fun res!462159 () Bool)

(assert (=> b!1028714 (=> res!462159 e!656048)))

(assert (=> b!1028714 (= res!462159 (not (isEmpty!6442 (tail!1464 s!10566))))))

(declare-fun b!1028715 () Bool)

(assert (=> b!1028715 (= e!656046 (not lt!355663))))

(declare-fun b!1028716 () Bool)

(assert (=> b!1028716 (= e!656044 (nullable!947 (regOne!6216 r!15766)))))

(declare-fun b!1028717 () Bool)

(assert (=> b!1028717 (= e!656045 e!656046)))

(declare-fun c!170596 () Bool)

(assert (=> b!1028717 (= c!170596 (is-EmptyLang!2852 (regOne!6216 r!15766)))))

(declare-fun b!1028718 () Bool)

(assert (=> b!1028718 (= e!656043 (= (head!1902 s!10566) (c!170585 (regOne!6216 r!15766))))))

(declare-fun b!1028719 () Bool)

(declare-fun res!462157 () Bool)

(assert (=> b!1028719 (=> res!462157 e!656049)))

(assert (=> b!1028719 (= res!462157 e!656043)))

(declare-fun res!462158 () Bool)

(assert (=> b!1028719 (=> (not res!462158) (not e!656043))))

(assert (=> b!1028719 (= res!462158 lt!355663)))

(assert (= (and d!295348 c!170597) b!1028716))

(assert (= (and d!295348 (not c!170597)) b!1028711))

(assert (= (and d!295348 c!170598) b!1028710))

(assert (= (and d!295348 (not c!170598)) b!1028717))

(assert (= (and b!1028717 c!170596) b!1028715))

(assert (= (and b!1028717 (not c!170596)) b!1028712))

(assert (= (and b!1028712 (not res!462164)) b!1028719))

(assert (= (and b!1028719 res!462158) b!1028709))

(assert (= (and b!1028709 res!462162) b!1028708))

(assert (= (and b!1028708 res!462163) b!1028718))

(assert (= (and b!1028719 (not res!462157)) b!1028706))

(assert (= (and b!1028706 res!462161) b!1028713))

(assert (= (and b!1028713 (not res!462160)) b!1028714))

(assert (= (and b!1028714 (not res!462159)) b!1028707))

(assert (= (or b!1028710 b!1028709 b!1028713) bm!70782))

(declare-fun m!1203547 () Bool)

(assert (=> b!1028716 m!1203547))

(assert (=> b!1028711 m!1203535))

(assert (=> b!1028711 m!1203535))

(declare-fun m!1203549 () Bool)

(assert (=> b!1028711 m!1203549))

(assert (=> b!1028711 m!1203539))

(assert (=> b!1028711 m!1203549))

(assert (=> b!1028711 m!1203539))

(declare-fun m!1203551 () Bool)

(assert (=> b!1028711 m!1203551))

(assert (=> d!295348 m!1203485))

(assert (=> d!295348 m!1203473))

(assert (=> b!1028707 m!1203535))

(assert (=> b!1028718 m!1203535))

(assert (=> b!1028708 m!1203539))

(assert (=> b!1028708 m!1203539))

(assert (=> b!1028708 m!1203545))

(assert (=> bm!70782 m!1203485))

(assert (=> b!1028714 m!1203539))

(assert (=> b!1028714 m!1203539))

(assert (=> b!1028714 m!1203545))

(assert (=> b!1028598 d!295348))

(declare-fun bm!70793 () Bool)

(declare-fun call!70800 () Regex!2852)

(declare-fun c!170615 () Bool)

(assert (=> bm!70793 (= call!70800 (removeUselessConcat!409 (ite c!170615 (regOne!6216 (regOne!6216 r!15766)) (regOne!6217 (regOne!6216 r!15766)))))))

(declare-fun b!1028750 () Bool)

(assert (=> b!1028750 (= c!170615 (is-Concat!4685 (regOne!6216 r!15766)))))

(declare-fun e!656070 () Regex!2852)

(declare-fun e!656071 () Regex!2852)

(assert (=> b!1028750 (= e!656070 e!656071)))

(declare-fun d!295350 () Bool)

(declare-fun e!656067 () Bool)

(assert (=> d!295350 e!656067))

(declare-fun res!462167 () Bool)

(assert (=> d!295350 (=> (not res!462167) (not e!656067))))

(declare-fun lt!355668 () Regex!2852)

(assert (=> d!295350 (= res!462167 (validRegex!1321 lt!355668))))

(declare-fun e!656069 () Regex!2852)

(assert (=> d!295350 (= lt!355668 e!656069)))

(declare-fun c!170617 () Bool)

(assert (=> d!295350 (= c!170617 (and (is-Concat!4685 (regOne!6216 r!15766)) (is-EmptyExpr!2852 (regOne!6216 (regOne!6216 r!15766)))))))

(assert (=> d!295350 (validRegex!1321 (regOne!6216 r!15766))))

(assert (=> d!295350 (= (removeUselessConcat!409 (regOne!6216 r!15766)) lt!355668)))

(declare-fun bm!70794 () Bool)

(declare-fun call!70801 () Regex!2852)

(declare-fun call!70798 () Regex!2852)

(assert (=> bm!70794 (= call!70801 call!70798)))

(declare-fun bm!70795 () Bool)

(declare-fun call!70802 () Regex!2852)

(assert (=> bm!70795 (= call!70798 call!70802)))

(declare-fun b!1028751 () Bool)

(declare-fun e!656068 () Regex!2852)

(assert (=> b!1028751 (= e!656068 (regOne!6216 r!15766))))

(declare-fun b!1028752 () Bool)

(declare-fun e!656066 () Regex!2852)

(assert (=> b!1028752 (= e!656066 (Union!2852 call!70800 call!70801))))

(declare-fun b!1028753 () Bool)

(assert (=> b!1028753 (= e!656067 (= (nullable!947 lt!355668) (nullable!947 (regOne!6216 r!15766))))))

(declare-fun b!1028754 () Bool)

(declare-fun call!70799 () Regex!2852)

(assert (=> b!1028754 (= e!656069 call!70799)))

(declare-fun b!1028755 () Bool)

(assert (=> b!1028755 (= e!656070 call!70802)))

(declare-fun bm!70796 () Bool)

(assert (=> bm!70796 (= call!70802 call!70799)))

(declare-fun c!170614 () Bool)

(declare-fun bm!70797 () Bool)

(declare-fun c!170616 () Bool)

(assert (=> bm!70797 (= call!70799 (removeUselessConcat!409 (ite c!170617 (regTwo!6216 (regOne!6216 r!15766)) (ite c!170614 (regOne!6216 (regOne!6216 r!15766)) (ite c!170615 (regTwo!6216 (regOne!6216 r!15766)) (ite c!170616 (regTwo!6217 (regOne!6216 r!15766)) (reg!3181 (regOne!6216 r!15766))))))))))

(declare-fun b!1028756 () Bool)

(assert (=> b!1028756 (= e!656071 (Concat!4685 call!70800 call!70798))))

(declare-fun b!1028757 () Bool)

(assert (=> b!1028757 (= e!656068 (Star!2852 call!70801))))

(declare-fun b!1028758 () Bool)

(assert (=> b!1028758 (= e!656069 e!656070)))

(assert (=> b!1028758 (= c!170614 (and (is-Concat!4685 (regOne!6216 r!15766)) (is-EmptyExpr!2852 (regTwo!6216 (regOne!6216 r!15766)))))))

(declare-fun b!1028759 () Bool)

(assert (=> b!1028759 (= e!656071 e!656066)))

(assert (=> b!1028759 (= c!170616 (is-Union!2852 (regOne!6216 r!15766)))))

(declare-fun b!1028760 () Bool)

(declare-fun c!170613 () Bool)

(assert (=> b!1028760 (= c!170613 (is-Star!2852 (regOne!6216 r!15766)))))

(assert (=> b!1028760 (= e!656066 e!656068)))

(assert (= (and d!295350 c!170617) b!1028754))

(assert (= (and d!295350 (not c!170617)) b!1028758))

(assert (= (and b!1028758 c!170614) b!1028755))

(assert (= (and b!1028758 (not c!170614)) b!1028750))

(assert (= (and b!1028750 c!170615) b!1028756))

(assert (= (and b!1028750 (not c!170615)) b!1028759))

(assert (= (and b!1028759 c!170616) b!1028752))

(assert (= (and b!1028759 (not c!170616)) b!1028760))

(assert (= (and b!1028760 c!170613) b!1028757))

(assert (= (and b!1028760 (not c!170613)) b!1028751))

(assert (= (or b!1028752 b!1028757) bm!70794))

(assert (= (or b!1028756 bm!70794) bm!70795))

(assert (= (or b!1028756 b!1028752) bm!70793))

(assert (= (or b!1028755 bm!70795) bm!70796))

(assert (= (or b!1028754 bm!70796) bm!70797))

(assert (= (and d!295350 res!462167) b!1028753))

(declare-fun m!1203553 () Bool)

(assert (=> bm!70793 m!1203553))

(declare-fun m!1203555 () Bool)

(assert (=> d!295350 m!1203555))

(assert (=> d!295350 m!1203473))

(declare-fun m!1203557 () Bool)

(assert (=> b!1028753 m!1203557))

(assert (=> b!1028753 m!1203547))

(declare-fun m!1203559 () Bool)

(assert (=> bm!70797 m!1203559))

(assert (=> b!1028598 d!295350))

(declare-fun d!295352 () Bool)

(assert (=> d!295352 (= (matchR!1388 (regOne!6216 r!15766) s!10566) (matchR!1388 (removeUselessConcat!409 (regOne!6216 r!15766)) s!10566))))

(declare-fun lt!355671 () Unit!15379)

(declare-fun choose!6543 (Regex!2852 List!10082) Unit!15379)

(assert (=> d!295352 (= lt!355671 (choose!6543 (regOne!6216 r!15766) s!10566))))

(assert (=> d!295352 (validRegex!1321 (regOne!6216 r!15766))))

(assert (=> d!295352 (= (lemmaRemoveUselessConcatSound!247 (regOne!6216 r!15766) s!10566) lt!355671)))

(declare-fun bs!247172 () Bool)

(assert (= bs!247172 d!295352))

(declare-fun m!1203561 () Bool)

(assert (=> bs!247172 m!1203561))

(assert (=> bs!247172 m!1203465))

(assert (=> bs!247172 m!1203467))

(declare-fun m!1203563 () Bool)

(assert (=> bs!247172 m!1203563))

(assert (=> bs!247172 m!1203473))

(assert (=> bs!247172 m!1203467))

(assert (=> b!1028598 d!295352))

(declare-fun bs!247173 () Bool)

(declare-fun b!1028843 () Bool)

(assert (= bs!247173 (and b!1028843 b!1028605)))

(declare-fun lambda!36837 () Int)

(assert (=> bs!247173 (not (= lambda!36837 lambda!36823))))

(assert (=> bs!247173 (not (= lambda!36837 lambda!36824))))

(assert (=> b!1028843 true))

(assert (=> b!1028843 true))

(declare-fun bs!247174 () Bool)

(declare-fun b!1028844 () Bool)

(assert (= bs!247174 (and b!1028844 b!1028605)))

(declare-fun lambda!36838 () Int)

(assert (=> bs!247174 (not (= lambda!36838 lambda!36823))))

(assert (=> bs!247174 (= (= (regTwo!6216 r!15766) EmptyExpr!2852) (= lambda!36838 lambda!36824))))

(declare-fun bs!247175 () Bool)

(assert (= bs!247175 (and b!1028844 b!1028843)))

(assert (=> bs!247175 (not (= lambda!36838 lambda!36837))))

(assert (=> b!1028844 true))

(assert (=> b!1028844 true))

(declare-fun b!1028841 () Bool)

(declare-fun c!170637 () Bool)

(assert (=> b!1028841 (= c!170637 (is-ElementMatch!2852 r!15766))))

(declare-fun e!656120 () Bool)

(declare-fun e!656116 () Bool)

(assert (=> b!1028841 (= e!656120 e!656116)))

(declare-fun b!1028842 () Bool)

(declare-fun e!656115 () Bool)

(declare-fun call!70812 () Bool)

(assert (=> b!1028842 (= e!656115 call!70812)))

(declare-fun e!656114 () Bool)

(declare-fun call!70811 () Bool)

(assert (=> b!1028843 (= e!656114 call!70811)))

(declare-fun e!656117 () Bool)

(assert (=> b!1028844 (= e!656117 call!70811)))

(declare-fun b!1028845 () Bool)

(declare-fun e!656119 () Bool)

(declare-fun e!656118 () Bool)

(assert (=> b!1028845 (= e!656119 e!656118)))

(declare-fun res!462217 () Bool)

(assert (=> b!1028845 (= res!462217 (matchRSpec!651 (regOne!6217 r!15766) s!10566))))

(assert (=> b!1028845 (=> res!462217 e!656118)))

(declare-fun b!1028846 () Bool)

(assert (=> b!1028846 (= e!656119 e!656117)))

(declare-fun c!170635 () Bool)

(assert (=> b!1028846 (= c!170635 (is-Star!2852 r!15766))))

(declare-fun bm!70806 () Bool)

(assert (=> bm!70806 (= call!70811 (Exists!579 (ite c!170635 lambda!36837 lambda!36838)))))

(declare-fun d!295354 () Bool)

(declare-fun c!170636 () Bool)

(assert (=> d!295354 (= c!170636 (is-EmptyExpr!2852 r!15766))))

(assert (=> d!295354 (= (matchRSpec!651 r!15766 s!10566) e!656115)))

(declare-fun bm!70807 () Bool)

(assert (=> bm!70807 (= call!70812 (isEmpty!6442 s!10566))))

(declare-fun b!1028847 () Bool)

(assert (=> b!1028847 (= e!656115 e!656120)))

(declare-fun res!462218 () Bool)

(assert (=> b!1028847 (= res!462218 (not (is-EmptyLang!2852 r!15766)))))

(assert (=> b!1028847 (=> (not res!462218) (not e!656120))))

(declare-fun b!1028848 () Bool)

(declare-fun c!170634 () Bool)

(assert (=> b!1028848 (= c!170634 (is-Union!2852 r!15766))))

(assert (=> b!1028848 (= e!656116 e!656119)))

(declare-fun b!1028849 () Bool)

(declare-fun res!462216 () Bool)

(assert (=> b!1028849 (=> res!462216 e!656114)))

(assert (=> b!1028849 (= res!462216 call!70812)))

(assert (=> b!1028849 (= e!656117 e!656114)))

(declare-fun b!1028850 () Bool)

(assert (=> b!1028850 (= e!656118 (matchRSpec!651 (regTwo!6217 r!15766) s!10566))))

(declare-fun b!1028851 () Bool)

(assert (=> b!1028851 (= e!656116 (= s!10566 (Cons!10066 (c!170585 r!15766) Nil!10066)))))

(assert (= (and d!295354 c!170636) b!1028842))

(assert (= (and d!295354 (not c!170636)) b!1028847))

(assert (= (and b!1028847 res!462218) b!1028841))

(assert (= (and b!1028841 c!170637) b!1028851))

(assert (= (and b!1028841 (not c!170637)) b!1028848))

(assert (= (and b!1028848 c!170634) b!1028845))

(assert (= (and b!1028848 (not c!170634)) b!1028846))

(assert (= (and b!1028845 (not res!462217)) b!1028850))

(assert (= (and b!1028846 c!170635) b!1028849))

(assert (= (and b!1028846 (not c!170635)) b!1028844))

(assert (= (and b!1028849 (not res!462216)) b!1028843))

(assert (= (or b!1028843 b!1028844) bm!70806))

(assert (= (or b!1028842 b!1028849) bm!70807))

(declare-fun m!1203585 () Bool)

(assert (=> b!1028845 m!1203585))

(declare-fun m!1203587 () Bool)

(assert (=> bm!70806 m!1203587))

(assert (=> bm!70807 m!1203485))

(declare-fun m!1203589 () Bool)

(assert (=> b!1028850 m!1203589))

(assert (=> b!1028602 d!295354))

(declare-fun b!1028852 () Bool)

(declare-fun e!656127 () Bool)

(declare-fun e!656125 () Bool)

(assert (=> b!1028852 (= e!656127 e!656125)))

(declare-fun res!462223 () Bool)

(assert (=> b!1028852 (=> (not res!462223) (not e!656125))))

(declare-fun lt!355674 () Bool)

(assert (=> b!1028852 (= res!462223 (not lt!355674))))

(declare-fun b!1028853 () Bool)

(declare-fun e!656126 () Bool)

(assert (=> b!1028853 (= e!656126 (not (= (head!1902 s!10566) (c!170585 r!15766))))))

(declare-fun b!1028854 () Bool)

(declare-fun res!462225 () Bool)

(declare-fun e!656121 () Bool)

(assert (=> b!1028854 (=> (not res!462225) (not e!656121))))

(assert (=> b!1028854 (= res!462225 (isEmpty!6442 (tail!1464 s!10566)))))

(declare-fun d!295360 () Bool)

(declare-fun e!656123 () Bool)

(assert (=> d!295360 e!656123))

(declare-fun c!170640 () Bool)

(assert (=> d!295360 (= c!170640 (is-EmptyExpr!2852 r!15766))))

(declare-fun e!656122 () Bool)

(assert (=> d!295360 (= lt!355674 e!656122)))

(declare-fun c!170639 () Bool)

(assert (=> d!295360 (= c!170639 (isEmpty!6442 s!10566))))

(assert (=> d!295360 (validRegex!1321 r!15766)))

(assert (=> d!295360 (= (matchR!1388 r!15766 s!10566) lt!355674)))

(declare-fun b!1028855 () Bool)

(declare-fun res!462224 () Bool)

(assert (=> b!1028855 (=> (not res!462224) (not e!656121))))

(declare-fun call!70813 () Bool)

(assert (=> b!1028855 (= res!462224 (not call!70813))))

(declare-fun b!1028856 () Bool)

(assert (=> b!1028856 (= e!656123 (= lt!355674 call!70813))))

(declare-fun b!1028857 () Bool)

(assert (=> b!1028857 (= e!656122 (matchR!1388 (derivativeStep!748 r!15766 (head!1902 s!10566)) (tail!1464 s!10566)))))

(declare-fun b!1028858 () Bool)

(declare-fun res!462226 () Bool)

(assert (=> b!1028858 (=> res!462226 e!656127)))

(assert (=> b!1028858 (= res!462226 (not (is-ElementMatch!2852 r!15766)))))

(declare-fun e!656124 () Bool)

(assert (=> b!1028858 (= e!656124 e!656127)))

(declare-fun bm!70808 () Bool)

(assert (=> bm!70808 (= call!70813 (isEmpty!6442 s!10566))))

(declare-fun b!1028859 () Bool)

(assert (=> b!1028859 (= e!656125 e!656126)))

(declare-fun res!462222 () Bool)

(assert (=> b!1028859 (=> res!462222 e!656126)))

(assert (=> b!1028859 (= res!462222 call!70813)))

(declare-fun b!1028860 () Bool)

(declare-fun res!462221 () Bool)

(assert (=> b!1028860 (=> res!462221 e!656126)))

(assert (=> b!1028860 (= res!462221 (not (isEmpty!6442 (tail!1464 s!10566))))))

(declare-fun b!1028861 () Bool)

(assert (=> b!1028861 (= e!656124 (not lt!355674))))

(declare-fun b!1028862 () Bool)

(assert (=> b!1028862 (= e!656122 (nullable!947 r!15766))))

(declare-fun b!1028863 () Bool)

(assert (=> b!1028863 (= e!656123 e!656124)))

(declare-fun c!170638 () Bool)

(assert (=> b!1028863 (= c!170638 (is-EmptyLang!2852 r!15766))))

(declare-fun b!1028864 () Bool)

(assert (=> b!1028864 (= e!656121 (= (head!1902 s!10566) (c!170585 r!15766)))))

(declare-fun b!1028865 () Bool)

(declare-fun res!462219 () Bool)

(assert (=> b!1028865 (=> res!462219 e!656127)))

(assert (=> b!1028865 (= res!462219 e!656121)))

(declare-fun res!462220 () Bool)

(assert (=> b!1028865 (=> (not res!462220) (not e!656121))))

(assert (=> b!1028865 (= res!462220 lt!355674)))

(assert (= (and d!295360 c!170639) b!1028862))

(assert (= (and d!295360 (not c!170639)) b!1028857))

(assert (= (and d!295360 c!170640) b!1028856))

(assert (= (and d!295360 (not c!170640)) b!1028863))

(assert (= (and b!1028863 c!170638) b!1028861))

(assert (= (and b!1028863 (not c!170638)) b!1028858))

(assert (= (and b!1028858 (not res!462226)) b!1028865))

(assert (= (and b!1028865 res!462220) b!1028855))

(assert (= (and b!1028855 res!462224) b!1028854))

(assert (= (and b!1028854 res!462225) b!1028864))

(assert (= (and b!1028865 (not res!462219)) b!1028852))

(assert (= (and b!1028852 res!462223) b!1028859))

(assert (= (and b!1028859 (not res!462222)) b!1028860))

(assert (= (and b!1028860 (not res!462221)) b!1028853))

(assert (= (or b!1028856 b!1028855 b!1028859) bm!70808))

(declare-fun m!1203591 () Bool)

(assert (=> b!1028862 m!1203591))

(assert (=> b!1028857 m!1203535))

(assert (=> b!1028857 m!1203535))

(declare-fun m!1203593 () Bool)

(assert (=> b!1028857 m!1203593))

(assert (=> b!1028857 m!1203539))

(assert (=> b!1028857 m!1203593))

(assert (=> b!1028857 m!1203539))

(declare-fun m!1203595 () Bool)

(assert (=> b!1028857 m!1203595))

(assert (=> d!295360 m!1203485))

(assert (=> d!295360 m!1203495))

(assert (=> b!1028853 m!1203535))

(assert (=> b!1028864 m!1203535))

(assert (=> b!1028854 m!1203539))

(assert (=> b!1028854 m!1203539))

(assert (=> b!1028854 m!1203545))

(assert (=> bm!70808 m!1203485))

(assert (=> b!1028860 m!1203539))

(assert (=> b!1028860 m!1203539))

(assert (=> b!1028860 m!1203545))

(assert (=> b!1028602 d!295360))

(declare-fun d!295362 () Bool)

(assert (=> d!295362 (= (matchR!1388 r!15766 s!10566) (matchRSpec!651 r!15766 s!10566))))

(declare-fun lt!355677 () Unit!15379)

(declare-fun choose!6544 (Regex!2852 List!10082) Unit!15379)

(assert (=> d!295362 (= lt!355677 (choose!6544 r!15766 s!10566))))

(assert (=> d!295362 (validRegex!1321 r!15766)))

(assert (=> d!295362 (= (mainMatchTheorem!651 r!15766 s!10566) lt!355677)))

(declare-fun bs!247176 () Bool)

(assert (= bs!247176 d!295362))

(assert (=> bs!247176 m!1203491))

(assert (=> bs!247176 m!1203489))

(declare-fun m!1203597 () Bool)

(assert (=> bs!247176 m!1203597))

(assert (=> bs!247176 m!1203495))

(assert (=> b!1028602 d!295362))

(declare-fun b!1028904 () Bool)

(declare-fun e!656154 () Bool)

(declare-fun e!656158 () Bool)

(assert (=> b!1028904 (= e!656154 e!656158)))

(declare-fun res!462239 () Bool)

(assert (=> b!1028904 (=> (not res!462239) (not e!656158))))

(declare-fun call!70830 () Bool)

(assert (=> b!1028904 (= res!462239 call!70830)))

(declare-fun b!1028905 () Bool)

(declare-fun e!656153 () Bool)

(declare-fun e!656157 () Bool)

(assert (=> b!1028905 (= e!656153 e!656157)))

(declare-fun c!170656 () Bool)

(assert (=> b!1028905 (= c!170656 (is-Union!2852 r!15766))))

(declare-fun b!1028906 () Bool)

(declare-fun e!656152 () Bool)

(assert (=> b!1028906 (= e!656153 e!656152)))

(declare-fun res!462238 () Bool)

(assert (=> b!1028906 (= res!462238 (not (nullable!947 (reg!3181 r!15766))))))

(assert (=> b!1028906 (=> (not res!462238) (not e!656152))))

(declare-fun b!1028907 () Bool)

(declare-fun call!70829 () Bool)

(assert (=> b!1028907 (= e!656152 call!70829)))

(declare-fun b!1028908 () Bool)

(declare-fun res!462240 () Bool)

(declare-fun e!656155 () Bool)

(assert (=> b!1028908 (=> (not res!462240) (not e!656155))))

(assert (=> b!1028908 (= res!462240 call!70830)))

(assert (=> b!1028908 (= e!656157 e!656155)))

(declare-fun d!295364 () Bool)

(declare-fun res!462241 () Bool)

(declare-fun e!656156 () Bool)

(assert (=> d!295364 (=> res!462241 e!656156)))

(assert (=> d!295364 (= res!462241 (is-ElementMatch!2852 r!15766))))

(assert (=> d!295364 (= (validRegex!1321 r!15766) e!656156)))

(declare-fun c!170655 () Bool)

(declare-fun bm!70823 () Bool)

(assert (=> bm!70823 (= call!70829 (validRegex!1321 (ite c!170655 (reg!3181 r!15766) (ite c!170656 (regTwo!6217 r!15766) (regTwo!6216 r!15766)))))))

(declare-fun bm!70824 () Bool)

(assert (=> bm!70824 (= call!70830 (validRegex!1321 (ite c!170656 (regOne!6217 r!15766) (regOne!6216 r!15766))))))

(declare-fun b!1028909 () Bool)

(declare-fun call!70828 () Bool)

(assert (=> b!1028909 (= e!656158 call!70828)))

(declare-fun b!1028910 () Bool)

(declare-fun res!462237 () Bool)

(assert (=> b!1028910 (=> res!462237 e!656154)))

(assert (=> b!1028910 (= res!462237 (not (is-Concat!4685 r!15766)))))

(assert (=> b!1028910 (= e!656157 e!656154)))

(declare-fun bm!70825 () Bool)

(assert (=> bm!70825 (= call!70828 call!70829)))

(declare-fun b!1028911 () Bool)

(assert (=> b!1028911 (= e!656156 e!656153)))

(assert (=> b!1028911 (= c!170655 (is-Star!2852 r!15766))))

(declare-fun b!1028912 () Bool)

(assert (=> b!1028912 (= e!656155 call!70828)))

(assert (= (and d!295364 (not res!462241)) b!1028911))

(assert (= (and b!1028911 c!170655) b!1028906))

(assert (= (and b!1028911 (not c!170655)) b!1028905))

(assert (= (and b!1028906 res!462238) b!1028907))

(assert (= (and b!1028905 c!170656) b!1028908))

(assert (= (and b!1028905 (not c!170656)) b!1028910))

(assert (= (and b!1028908 res!462240) b!1028912))

(assert (= (and b!1028910 (not res!462237)) b!1028904))

(assert (= (and b!1028904 res!462239) b!1028909))

(assert (= (or b!1028912 b!1028909) bm!70825))

(assert (= (or b!1028908 b!1028904) bm!70824))

(assert (= (or b!1028907 bm!70825) bm!70823))

(declare-fun m!1203599 () Bool)

(assert (=> b!1028906 m!1203599))

(declare-fun m!1203601 () Bool)

(assert (=> bm!70823 m!1203601))

(declare-fun m!1203603 () Bool)

(assert (=> bm!70824 m!1203603))

(assert (=> start!89540 d!295364))

(declare-fun b!1028913 () Bool)

(declare-fun e!656161 () Bool)

(declare-fun e!656165 () Bool)

(assert (=> b!1028913 (= e!656161 e!656165)))

(declare-fun res!462244 () Bool)

(assert (=> b!1028913 (=> (not res!462244) (not e!656165))))

(declare-fun call!70835 () Bool)

(assert (=> b!1028913 (= res!462244 call!70835)))

(declare-fun b!1028914 () Bool)

(declare-fun e!656160 () Bool)

(declare-fun e!656164 () Bool)

(assert (=> b!1028914 (= e!656160 e!656164)))

(declare-fun c!170658 () Bool)

(assert (=> b!1028914 (= c!170658 (is-Union!2852 (regOne!6216 r!15766)))))

(declare-fun b!1028915 () Bool)

(declare-fun e!656159 () Bool)

(assert (=> b!1028915 (= e!656160 e!656159)))

(declare-fun res!462243 () Bool)

(assert (=> b!1028915 (= res!462243 (not (nullable!947 (reg!3181 (regOne!6216 r!15766)))))))

(assert (=> b!1028915 (=> (not res!462243) (not e!656159))))

(declare-fun b!1028916 () Bool)

(declare-fun call!70834 () Bool)

(assert (=> b!1028916 (= e!656159 call!70834)))

(declare-fun b!1028917 () Bool)

(declare-fun res!462245 () Bool)

(declare-fun e!656162 () Bool)

(assert (=> b!1028917 (=> (not res!462245) (not e!656162))))

(assert (=> b!1028917 (= res!462245 call!70835)))

(assert (=> b!1028917 (= e!656164 e!656162)))

(declare-fun d!295366 () Bool)

(declare-fun res!462246 () Bool)

(declare-fun e!656163 () Bool)

(assert (=> d!295366 (=> res!462246 e!656163)))

(assert (=> d!295366 (= res!462246 (is-ElementMatch!2852 (regOne!6216 r!15766)))))

(assert (=> d!295366 (= (validRegex!1321 (regOne!6216 r!15766)) e!656163)))

(declare-fun c!170657 () Bool)

(declare-fun bm!70828 () Bool)

(assert (=> bm!70828 (= call!70834 (validRegex!1321 (ite c!170657 (reg!3181 (regOne!6216 r!15766)) (ite c!170658 (regTwo!6217 (regOne!6216 r!15766)) (regTwo!6216 (regOne!6216 r!15766))))))))

(declare-fun bm!70829 () Bool)

(assert (=> bm!70829 (= call!70835 (validRegex!1321 (ite c!170658 (regOne!6217 (regOne!6216 r!15766)) (regOne!6216 (regOne!6216 r!15766)))))))

(declare-fun b!1028918 () Bool)

(declare-fun call!70833 () Bool)

(assert (=> b!1028918 (= e!656165 call!70833)))

(declare-fun b!1028919 () Bool)

(declare-fun res!462242 () Bool)

(assert (=> b!1028919 (=> res!462242 e!656161)))

(assert (=> b!1028919 (= res!462242 (not (is-Concat!4685 (regOne!6216 r!15766))))))

(assert (=> b!1028919 (= e!656164 e!656161)))

(declare-fun bm!70830 () Bool)

(assert (=> bm!70830 (= call!70833 call!70834)))

(declare-fun b!1028920 () Bool)

(assert (=> b!1028920 (= e!656163 e!656160)))

(assert (=> b!1028920 (= c!170657 (is-Star!2852 (regOne!6216 r!15766)))))

(declare-fun b!1028921 () Bool)

(assert (=> b!1028921 (= e!656162 call!70833)))

(assert (= (and d!295366 (not res!462246)) b!1028920))

(assert (= (and b!1028920 c!170657) b!1028915))

(assert (= (and b!1028920 (not c!170657)) b!1028914))

(assert (= (and b!1028915 res!462243) b!1028916))

(assert (= (and b!1028914 c!170658) b!1028917))

(assert (= (and b!1028914 (not c!170658)) b!1028919))

(assert (= (and b!1028917 res!462245) b!1028921))

(assert (= (and b!1028919 (not res!462242)) b!1028913))

(assert (= (and b!1028913 res!462244) b!1028918))

(assert (= (or b!1028921 b!1028918) bm!70830))

(assert (= (or b!1028917 b!1028913) bm!70829))

(assert (= (or b!1028916 bm!70830) bm!70828))

(declare-fun m!1203605 () Bool)

(assert (=> b!1028915 m!1203605))

(declare-fun m!1203607 () Bool)

(assert (=> bm!70828 m!1203607))

(declare-fun m!1203609 () Bool)

(assert (=> bm!70829 m!1203609))

(assert (=> b!1028606 d!295366))

(declare-fun b!1028932 () Bool)

(declare-fun e!656172 () List!10082)

(assert (=> b!1028932 (= e!656172 Nil!10066)))

(declare-fun b!1028934 () Bool)

(declare-fun res!462253 () Bool)

(declare-fun e!656173 () Bool)

(assert (=> b!1028934 (=> (not res!462253) (not e!656173))))

(declare-fun lt!355682 () List!10082)

(declare-fun size!7988 (List!10082) Int)

(assert (=> b!1028934 (= res!462253 (= (size!7988 lt!355682) (+ (size!7988 s!10566) (size!7988 Nil!10066))))))

(declare-fun b!1028933 () Bool)

(assert (=> b!1028933 (= e!656172 (Cons!10066 (h!15467 s!10566) (++!2760 (t!101128 s!10566) Nil!10066)))))

(declare-fun b!1028935 () Bool)

(assert (=> b!1028935 (= e!656173 (or (not (= Nil!10066 Nil!10066)) (= lt!355682 s!10566)))))

(declare-fun d!295368 () Bool)

(assert (=> d!295368 e!656173))

(declare-fun res!462254 () Bool)

(assert (=> d!295368 (=> (not res!462254) (not e!656173))))

(declare-fun content!1443 (List!10082) (Set C!6274))

(assert (=> d!295368 (= res!462254 (= (content!1443 lt!355682) (set.union (content!1443 s!10566) (content!1443 Nil!10066))))))

(assert (=> d!295368 (= lt!355682 e!656172)))

(declare-fun c!170661 () Bool)

(assert (=> d!295368 (= c!170661 (is-Nil!10066 s!10566))))

(assert (=> d!295368 (= (++!2760 s!10566 Nil!10066) lt!355682)))

(assert (= (and d!295368 c!170661) b!1028932))

(assert (= (and d!295368 (not c!170661)) b!1028933))

(assert (= (and d!295368 res!462254) b!1028934))

(assert (= (and b!1028934 res!462253) b!1028935))

(declare-fun m!1203611 () Bool)

(assert (=> b!1028934 m!1203611))

(declare-fun m!1203613 () Bool)

(assert (=> b!1028934 m!1203613))

(declare-fun m!1203615 () Bool)

(assert (=> b!1028934 m!1203615))

(declare-fun m!1203617 () Bool)

(assert (=> b!1028933 m!1203617))

(declare-fun m!1203619 () Bool)

(assert (=> d!295368 m!1203619))

(declare-fun m!1203621 () Bool)

(assert (=> d!295368 m!1203621))

(declare-fun m!1203623 () Bool)

(assert (=> d!295368 m!1203623))

(assert (=> b!1028600 d!295368))

(declare-fun d!295370 () Bool)

(declare-fun choose!6545 (Int) Bool)

(assert (=> d!295370 (= (Exists!579 lambda!36824) (choose!6545 lambda!36824))))

(declare-fun bs!247177 () Bool)

(assert (= bs!247177 d!295370))

(declare-fun m!1203625 () Bool)

(assert (=> bs!247177 m!1203625))

(assert (=> b!1028605 d!295370))

(declare-fun b!1028965 () Bool)

(declare-fun res!462266 () Bool)

(declare-fun e!656193 () Bool)

(assert (=> b!1028965 (=> (not res!462266) (not e!656193))))

(declare-fun lt!355693 () Option!2381)

(declare-fun get!3568 (Option!2381) tuple2!11478)

(assert (=> b!1028965 (= res!462266 (matchR!1388 (regOne!6216 r!15766) (_1!6565 (get!3568 lt!355693))))))

(declare-fun d!295372 () Bool)

(declare-fun e!656190 () Bool)

(assert (=> d!295372 e!656190))

(declare-fun res!462270 () Bool)

(assert (=> d!295372 (=> res!462270 e!656190)))

(assert (=> d!295372 (= res!462270 e!656193)))

(declare-fun res!462268 () Bool)

(assert (=> d!295372 (=> (not res!462268) (not e!656193))))

(assert (=> d!295372 (= res!462268 (isDefined!2023 lt!355693))))

(declare-fun e!656194 () Option!2381)

(assert (=> d!295372 (= lt!355693 e!656194)))

(declare-fun c!170672 () Bool)

(declare-fun e!656191 () Bool)

(assert (=> d!295372 (= c!170672 e!656191)))

(declare-fun res!462269 () Bool)

(assert (=> d!295372 (=> (not res!462269) (not e!656191))))

(assert (=> d!295372 (= res!462269 (matchR!1388 (regOne!6216 r!15766) Nil!10066))))

(assert (=> d!295372 (validRegex!1321 (regOne!6216 r!15766))))

(assert (=> d!295372 (= (findConcatSeparation!487 (regOne!6216 r!15766) EmptyExpr!2852 Nil!10066 s!10566 s!10566) lt!355693)))

(declare-fun b!1028966 () Bool)

(declare-fun res!462267 () Bool)

(assert (=> b!1028966 (=> (not res!462267) (not e!656193))))

(assert (=> b!1028966 (= res!462267 (matchR!1388 EmptyExpr!2852 (_2!6565 (get!3568 lt!355693))))))

(declare-fun b!1028967 () Bool)

(assert (=> b!1028967 (= e!656191 (matchR!1388 EmptyExpr!2852 s!10566))))

(declare-fun b!1028968 () Bool)

(declare-fun e!656192 () Option!2381)

(assert (=> b!1028968 (= e!656192 None!2380)))

(declare-fun b!1028969 () Bool)

(assert (=> b!1028969 (= e!656190 (not (isDefined!2023 lt!355693)))))

(declare-fun b!1028970 () Bool)

(declare-fun lt!355695 () Unit!15379)

(declare-fun lt!355694 () Unit!15379)

(assert (=> b!1028970 (= lt!355695 lt!355694)))

(assert (=> b!1028970 (= (++!2760 (++!2760 Nil!10066 (Cons!10066 (h!15467 s!10566) Nil!10066)) (t!101128 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!357 (List!10082 C!6274 List!10082 List!10082) Unit!15379)

(assert (=> b!1028970 (= lt!355694 (lemmaMoveElementToOtherListKeepsConcatEq!357 Nil!10066 (h!15467 s!10566) (t!101128 s!10566) s!10566))))

(assert (=> b!1028970 (= e!656192 (findConcatSeparation!487 (regOne!6216 r!15766) EmptyExpr!2852 (++!2760 Nil!10066 (Cons!10066 (h!15467 s!10566) Nil!10066)) (t!101128 s!10566) s!10566))))

(declare-fun b!1028971 () Bool)

(assert (=> b!1028971 (= e!656193 (= (++!2760 (_1!6565 (get!3568 lt!355693)) (_2!6565 (get!3568 lt!355693))) s!10566))))

(declare-fun b!1028972 () Bool)

(assert (=> b!1028972 (= e!656194 (Some!2380 (tuple2!11479 Nil!10066 s!10566)))))

(declare-fun b!1028973 () Bool)

(assert (=> b!1028973 (= e!656194 e!656192)))

(declare-fun c!170671 () Bool)

(assert (=> b!1028973 (= c!170671 (is-Nil!10066 s!10566))))

(assert (= (and d!295372 res!462269) b!1028967))

(assert (= (and d!295372 c!170672) b!1028972))

(assert (= (and d!295372 (not c!170672)) b!1028973))

(assert (= (and b!1028973 c!170671) b!1028968))

(assert (= (and b!1028973 (not c!170671)) b!1028970))

(assert (= (and d!295372 res!462268) b!1028965))

(assert (= (and b!1028965 res!462266) b!1028966))

(assert (= (and b!1028966 res!462267) b!1028971))

(assert (= (and d!295372 (not res!462270)) b!1028969))

(declare-fun m!1203639 () Bool)

(assert (=> b!1028969 m!1203639))

(declare-fun m!1203641 () Bool)

(assert (=> b!1028967 m!1203641))

(declare-fun m!1203643 () Bool)

(assert (=> b!1028965 m!1203643))

(declare-fun m!1203645 () Bool)

(assert (=> b!1028965 m!1203645))

(assert (=> b!1028966 m!1203643))

(declare-fun m!1203647 () Bool)

(assert (=> b!1028966 m!1203647))

(declare-fun m!1203649 () Bool)

(assert (=> b!1028970 m!1203649))

(assert (=> b!1028970 m!1203649))

(declare-fun m!1203651 () Bool)

(assert (=> b!1028970 m!1203651))

(declare-fun m!1203653 () Bool)

(assert (=> b!1028970 m!1203653))

(assert (=> b!1028970 m!1203649))

(declare-fun m!1203655 () Bool)

(assert (=> b!1028970 m!1203655))

(assert (=> b!1028971 m!1203643))

(declare-fun m!1203657 () Bool)

(assert (=> b!1028971 m!1203657))

(assert (=> d!295372 m!1203639))

(declare-fun m!1203659 () Bool)

(assert (=> d!295372 m!1203659))

(assert (=> d!295372 m!1203473))

(assert (=> b!1028605 d!295372))

(declare-fun d!295380 () Bool)

(assert (=> d!295380 (= (isEmpty!6442 s!10566) (is-Nil!10066 s!10566))))

(assert (=> b!1028605 d!295380))

(declare-fun d!295382 () Bool)

(assert (=> d!295382 (= (Exists!579 lambda!36823) (choose!6545 lambda!36823))))

(declare-fun bs!247179 () Bool)

(assert (= bs!247179 d!295382))

(declare-fun m!1203661 () Bool)

(assert (=> bs!247179 m!1203661))

(assert (=> b!1028605 d!295382))

(declare-fun bs!247180 () Bool)

(declare-fun d!295384 () Bool)

(assert (= bs!247180 (and d!295384 b!1028605)))

(declare-fun lambda!36841 () Int)

(assert (=> bs!247180 (= lambda!36841 lambda!36823)))

(assert (=> bs!247180 (not (= lambda!36841 lambda!36824))))

(declare-fun bs!247181 () Bool)

(assert (= bs!247181 (and d!295384 b!1028843)))

(assert (=> bs!247181 (not (= lambda!36841 lambda!36837))))

(declare-fun bs!247182 () Bool)

(assert (= bs!247182 (and d!295384 b!1028844)))

(assert (=> bs!247182 (not (= lambda!36841 lambda!36838))))

(assert (=> d!295384 true))

(assert (=> d!295384 true))

(assert (=> d!295384 true))

(assert (=> d!295384 (= (isDefined!2023 (findConcatSeparation!487 (regOne!6216 r!15766) EmptyExpr!2852 Nil!10066 s!10566 s!10566)) (Exists!579 lambda!36841))))

(declare-fun lt!355698 () Unit!15379)

(declare-fun choose!6546 (Regex!2852 Regex!2852 List!10082) Unit!15379)

(assert (=> d!295384 (= lt!355698 (choose!6546 (regOne!6216 r!15766) EmptyExpr!2852 s!10566))))

(assert (=> d!295384 (validRegex!1321 (regOne!6216 r!15766))))

(assert (=> d!295384 (= (lemmaFindConcatSeparationEquivalentToExists!487 (regOne!6216 r!15766) EmptyExpr!2852 s!10566) lt!355698)))

(declare-fun bs!247183 () Bool)

(assert (= bs!247183 d!295384))

(declare-fun m!1203663 () Bool)

(assert (=> bs!247183 m!1203663))

(declare-fun m!1203665 () Bool)

(assert (=> bs!247183 m!1203665))

(assert (=> bs!247183 m!1203473))

(assert (=> bs!247183 m!1203477))

(declare-fun m!1203667 () Bool)

(assert (=> bs!247183 m!1203667))

(assert (=> bs!247183 m!1203477))

(assert (=> b!1028605 d!295384))

(declare-fun bs!247184 () Bool)

(declare-fun d!295386 () Bool)

(assert (= bs!247184 (and d!295386 b!1028605)))

(declare-fun lambda!36850 () Int)

(assert (=> bs!247184 (= lambda!36850 lambda!36823)))

(declare-fun bs!247185 () Bool)

(assert (= bs!247185 (and d!295386 b!1028843)))

(assert (=> bs!247185 (not (= lambda!36850 lambda!36837))))

(declare-fun bs!247186 () Bool)

(assert (= bs!247186 (and d!295386 b!1028844)))

(assert (=> bs!247186 (not (= lambda!36850 lambda!36838))))

(declare-fun bs!247187 () Bool)

(assert (= bs!247187 (and d!295386 d!295384)))

(assert (=> bs!247187 (= lambda!36850 lambda!36841)))

(assert (=> bs!247184 (not (= lambda!36850 lambda!36824))))

(assert (=> d!295386 true))

(assert (=> d!295386 true))

(assert (=> d!295386 true))

(declare-fun lambda!36851 () Int)

(assert (=> bs!247184 (not (= lambda!36851 lambda!36823))))

(assert (=> bs!247185 (not (= lambda!36851 lambda!36837))))

(assert (=> bs!247186 (= (= EmptyExpr!2852 (regTwo!6216 r!15766)) (= lambda!36851 lambda!36838))))

(assert (=> bs!247187 (not (= lambda!36851 lambda!36841))))

(declare-fun bs!247188 () Bool)

(assert (= bs!247188 d!295386))

(assert (=> bs!247188 (not (= lambda!36851 lambda!36850))))

(assert (=> bs!247184 (= lambda!36851 lambda!36824)))

(assert (=> d!295386 true))

(assert (=> d!295386 true))

(assert (=> d!295386 true))

(assert (=> d!295386 (= (Exists!579 lambda!36850) (Exists!579 lambda!36851))))

(declare-fun lt!355701 () Unit!15379)

(declare-fun choose!6547 (Regex!2852 Regex!2852 List!10082) Unit!15379)

(assert (=> d!295386 (= lt!355701 (choose!6547 (regOne!6216 r!15766) EmptyExpr!2852 s!10566))))

(assert (=> d!295386 (validRegex!1321 (regOne!6216 r!15766))))

(assert (=> d!295386 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!275 (regOne!6216 r!15766) EmptyExpr!2852 s!10566) lt!355701)))

(declare-fun m!1203669 () Bool)

(assert (=> bs!247188 m!1203669))

(declare-fun m!1203671 () Bool)

(assert (=> bs!247188 m!1203671))

(declare-fun m!1203673 () Bool)

(assert (=> bs!247188 m!1203673))

(assert (=> bs!247188 m!1203473))

(assert (=> b!1028605 d!295386))

(declare-fun d!295388 () Bool)

(assert (=> d!295388 (= (isDefined!2023 lt!355625) (not (isEmpty!6441 lt!355625)))))

(declare-fun bs!247189 () Bool)

(assert (= bs!247189 d!295388))

(assert (=> bs!247189 m!1203461))

(assert (=> b!1028605 d!295388))

(declare-fun b!1029022 () Bool)

(declare-fun e!656221 () Bool)

(declare-fun tp!311911 () Bool)

(assert (=> b!1029022 (= e!656221 (and tp_is_empty!5347 tp!311911))))

(assert (=> b!1028604 (= tp!311887 e!656221)))

(assert (= (and b!1028604 (is-Cons!10066 (t!101128 s!10566))) b!1029022))

(declare-fun b!1029034 () Bool)

(declare-fun e!656224 () Bool)

(declare-fun tp!311926 () Bool)

(declare-fun tp!311925 () Bool)

(assert (=> b!1029034 (= e!656224 (and tp!311926 tp!311925))))

(declare-fun b!1029035 () Bool)

(declare-fun tp!311922 () Bool)

(assert (=> b!1029035 (= e!656224 tp!311922)))

(declare-fun b!1029033 () Bool)

(assert (=> b!1029033 (= e!656224 tp_is_empty!5347)))

(assert (=> b!1028603 (= tp!311885 e!656224)))

(declare-fun b!1029036 () Bool)

(declare-fun tp!311924 () Bool)

(declare-fun tp!311923 () Bool)

(assert (=> b!1029036 (= e!656224 (and tp!311924 tp!311923))))

(assert (= (and b!1028603 (is-ElementMatch!2852 (regOne!6216 r!15766))) b!1029033))

(assert (= (and b!1028603 (is-Concat!4685 (regOne!6216 r!15766))) b!1029034))

(assert (= (and b!1028603 (is-Star!2852 (regOne!6216 r!15766))) b!1029035))

(assert (= (and b!1028603 (is-Union!2852 (regOne!6216 r!15766))) b!1029036))

(declare-fun b!1029038 () Bool)

(declare-fun e!656225 () Bool)

(declare-fun tp!311931 () Bool)

(declare-fun tp!311930 () Bool)

(assert (=> b!1029038 (= e!656225 (and tp!311931 tp!311930))))

(declare-fun b!1029039 () Bool)

(declare-fun tp!311927 () Bool)

(assert (=> b!1029039 (= e!656225 tp!311927)))

(declare-fun b!1029037 () Bool)

(assert (=> b!1029037 (= e!656225 tp_is_empty!5347)))

(assert (=> b!1028603 (= tp!311886 e!656225)))

(declare-fun b!1029040 () Bool)

(declare-fun tp!311929 () Bool)

(declare-fun tp!311928 () Bool)

(assert (=> b!1029040 (= e!656225 (and tp!311929 tp!311928))))

(assert (= (and b!1028603 (is-ElementMatch!2852 (regTwo!6216 r!15766))) b!1029037))

(assert (= (and b!1028603 (is-Concat!4685 (regTwo!6216 r!15766))) b!1029038))

(assert (= (and b!1028603 (is-Star!2852 (regTwo!6216 r!15766))) b!1029039))

(assert (= (and b!1028603 (is-Union!2852 (regTwo!6216 r!15766))) b!1029040))

(declare-fun b!1029042 () Bool)

(declare-fun e!656226 () Bool)

(declare-fun tp!311936 () Bool)

(declare-fun tp!311935 () Bool)

(assert (=> b!1029042 (= e!656226 (and tp!311936 tp!311935))))

(declare-fun b!1029043 () Bool)

(declare-fun tp!311932 () Bool)

(assert (=> b!1029043 (= e!656226 tp!311932)))

(declare-fun b!1029041 () Bool)

(assert (=> b!1029041 (= e!656226 tp_is_empty!5347)))

(assert (=> b!1028597 (= tp!311888 e!656226)))

(declare-fun b!1029044 () Bool)

(declare-fun tp!311934 () Bool)

(declare-fun tp!311933 () Bool)

(assert (=> b!1029044 (= e!656226 (and tp!311934 tp!311933))))

(assert (= (and b!1028597 (is-ElementMatch!2852 (reg!3181 r!15766))) b!1029041))

(assert (= (and b!1028597 (is-Concat!4685 (reg!3181 r!15766))) b!1029042))

(assert (= (and b!1028597 (is-Star!2852 (reg!3181 r!15766))) b!1029043))

(assert (= (and b!1028597 (is-Union!2852 (reg!3181 r!15766))) b!1029044))

(declare-fun b!1029046 () Bool)

(declare-fun e!656227 () Bool)

(declare-fun tp!311941 () Bool)

(declare-fun tp!311940 () Bool)

(assert (=> b!1029046 (= e!656227 (and tp!311941 tp!311940))))

(declare-fun b!1029047 () Bool)

(declare-fun tp!311937 () Bool)

(assert (=> b!1029047 (= e!656227 tp!311937)))

(declare-fun b!1029045 () Bool)

(assert (=> b!1029045 (= e!656227 tp_is_empty!5347)))

(assert (=> b!1028601 (= tp!311889 e!656227)))

(declare-fun b!1029048 () Bool)

(declare-fun tp!311939 () Bool)

(declare-fun tp!311938 () Bool)

(assert (=> b!1029048 (= e!656227 (and tp!311939 tp!311938))))

(assert (= (and b!1028601 (is-ElementMatch!2852 (regOne!6217 r!15766))) b!1029045))

(assert (= (and b!1028601 (is-Concat!4685 (regOne!6217 r!15766))) b!1029046))

(assert (= (and b!1028601 (is-Star!2852 (regOne!6217 r!15766))) b!1029047))

(assert (= (and b!1028601 (is-Union!2852 (regOne!6217 r!15766))) b!1029048))

(declare-fun b!1029050 () Bool)

(declare-fun e!656228 () Bool)

(declare-fun tp!311946 () Bool)

(declare-fun tp!311945 () Bool)

(assert (=> b!1029050 (= e!656228 (and tp!311946 tp!311945))))

(declare-fun b!1029051 () Bool)

(declare-fun tp!311942 () Bool)

(assert (=> b!1029051 (= e!656228 tp!311942)))

(declare-fun b!1029049 () Bool)

(assert (=> b!1029049 (= e!656228 tp_is_empty!5347)))

(assert (=> b!1028601 (= tp!311890 e!656228)))

(declare-fun b!1029052 () Bool)

(declare-fun tp!311944 () Bool)

(declare-fun tp!311943 () Bool)

(assert (=> b!1029052 (= e!656228 (and tp!311944 tp!311943))))

(assert (= (and b!1028601 (is-ElementMatch!2852 (regTwo!6217 r!15766))) b!1029049))

(assert (= (and b!1028601 (is-Concat!4685 (regTwo!6217 r!15766))) b!1029050))

(assert (= (and b!1028601 (is-Star!2852 (regTwo!6217 r!15766))) b!1029051))

(assert (= (and b!1028601 (is-Union!2852 (regTwo!6217 r!15766))) b!1029052))

(push 1)

(assert (not b!1029040))

(assert (not b!1028716))

(assert (not b!1028850))

(assert (not b!1028862))

(assert (not d!295352))

(assert (not b!1028854))

(assert (not b!1028857))

(assert (not bm!70808))

(assert (not b!1028971))

(assert (not bm!70781))

(assert (not b!1029039))

(assert (not b!1028694))

(assert (not b!1028853))

(assert (not b!1028753))

(assert (not b!1029047))

(assert (not bm!70797))

(assert (not b!1028915))

(assert (not b!1028704))

(assert (not b!1029036))

(assert (not b!1028845))

(assert (not b!1029022))

(assert (not b!1028711))

(assert (not b!1028934))

(assert (not b!1029034))

(assert (not d!295362))

(assert (not d!295388))

(assert (not b!1029051))

(assert (not d!295360))

(assert (not b!1029044))

(assert (not b!1028693))

(assert (not b!1029048))

(assert (not b!1028970))

(assert (not b!1028860))

(assert (not bm!70782))

(assert (not d!295350))

(assert (not b!1029043))

(assert (not b!1029050))

(assert (not b!1029035))

(assert tp_is_empty!5347)

(assert (not d!295344))

(assert (not b!1028714))

(assert (not d!295368))

(assert (not bm!70807))

(assert (not b!1028707))

(assert (not b!1029042))

(assert (not b!1028933))

(assert (not b!1028864))

(assert (not b!1029046))

(assert (not b!1029052))

(assert (not b!1029038))

(assert (not bm!70793))

(assert (not bm!70806))

(assert (not b!1028697))

(assert (not b!1028969))

(assert (not b!1028700))

(assert (not d!295370))

(assert (not bm!70828))

(assert (not b!1028718))

(assert (not bm!70824))

(assert (not d!295348))

(assert (not d!295372))

(assert (not bm!70823))

(assert (not bm!70829))

(assert (not d!295384))

(assert (not d!295386))

(assert (not b!1028965))

(assert (not b!1028708))

(assert (not b!1028967))

(assert (not b!1028906))

(assert (not d!295382))

(assert (not b!1028702))

(assert (not b!1028966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

