; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91354 () Bool)

(assert start!91354)

(declare-fun b!1063687 () Bool)

(assert (=> b!1063687 true))

(assert (=> b!1063687 true))

(assert (=> b!1063687 true))

(declare-fun lambda!38436 () Int)

(declare-fun lambda!38435 () Int)

(assert (=> b!1063687 (not (= lambda!38436 lambda!38435))))

(assert (=> b!1063687 true))

(assert (=> b!1063687 true))

(assert (=> b!1063687 true))

(declare-fun res!475219 () Bool)

(declare-fun e!674763 () Bool)

(assert (=> start!91354 (=> (not res!475219) (not e!674763))))

(declare-datatypes ((C!6436 0))(
  ( (C!6437 (val!3466 Int)) )
))
(declare-datatypes ((Regex!2933 0))(
  ( (ElementMatch!2933 (c!178316 C!6436)) (Concat!4766 (regOne!6378 Regex!2933) (regTwo!6378 Regex!2933)) (EmptyExpr!2933) (Star!2933 (reg!3262 Regex!2933)) (EmptyLang!2933) (Union!2933 (regOne!6379 Regex!2933) (regTwo!6379 Regex!2933)) )
))
(declare-fun r!15766 () Regex!2933)

(declare-fun validRegex!1402 (Regex!2933) Bool)

(assert (=> start!91354 (= res!475219 (validRegex!1402 r!15766))))

(assert (=> start!91354 e!674763))

(declare-fun e!674764 () Bool)

(assert (=> start!91354 e!674764))

(declare-fun e!674762 () Bool)

(assert (=> start!91354 e!674762))

(declare-fun b!1063685 () Bool)

(declare-fun tp!319415 () Bool)

(declare-fun tp!319419 () Bool)

(assert (=> b!1063685 (= e!674764 (and tp!319415 tp!319419))))

(declare-fun b!1063686 () Bool)

(declare-fun e!674766 () Bool)

(assert (=> b!1063686 (= e!674763 (not e!674766))))

(declare-fun res!475221 () Bool)

(assert (=> b!1063686 (=> res!475221 e!674766)))

(declare-fun lt!360182 () Bool)

(get-info :version)

(assert (=> b!1063686 (= res!475221 (or lt!360182 (and ((_ is Concat!4766) r!15766) ((_ is EmptyExpr!2933) (regOne!6378 r!15766))) (and ((_ is Concat!4766) r!15766) ((_ is EmptyExpr!2933) (regTwo!6378 r!15766))) ((_ is Concat!4766) r!15766) ((_ is Union!2933) r!15766) (not ((_ is Star!2933) r!15766))))))

(declare-datatypes ((List!10163 0))(
  ( (Nil!10147) (Cons!10147 (h!15548 C!6436) (t!101209 List!10163)) )
))
(declare-fun s!10566 () List!10163)

(declare-fun matchRSpec!732 (Regex!2933 List!10163) Bool)

(assert (=> b!1063686 (= lt!360182 (matchRSpec!732 r!15766 s!10566))))

(declare-fun matchR!1469 (Regex!2933 List!10163) Bool)

(assert (=> b!1063686 (= lt!360182 (matchR!1469 r!15766 s!10566))))

(declare-datatypes ((Unit!15541 0))(
  ( (Unit!15542) )
))
(declare-fun lt!360183 () Unit!15541)

(declare-fun mainMatchTheorem!732 (Regex!2933 List!10163) Unit!15541)

(assert (=> b!1063686 (= lt!360183 (mainMatchTheorem!732 r!15766 s!10566))))

(declare-fun e!674765 () Bool)

(assert (=> b!1063687 (= e!674766 e!674765)))

(declare-fun res!475220 () Bool)

(assert (=> b!1063687 (=> res!475220 e!674765)))

(declare-fun lt!360184 () Regex!2933)

(assert (=> b!1063687 (= res!475220 (not (matchR!1469 lt!360184 s!10566)))))

(declare-fun removeUselessConcat!474 (Regex!2933) Regex!2933)

(assert (=> b!1063687 (= lt!360184 (Star!2933 (removeUselessConcat!474 (reg!3262 r!15766))))))

(declare-fun Exists!656 (Int) Bool)

(assert (=> b!1063687 (= (Exists!656 lambda!38435) (Exists!656 lambda!38436))))

(declare-fun lt!360186 () Unit!15541)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!174 (Regex!2933 List!10163) Unit!15541)

(assert (=> b!1063687 (= lt!360186 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!174 (reg!3262 r!15766) s!10566))))

(declare-fun lt!360185 () Regex!2933)

(declare-datatypes ((tuple2!11580 0))(
  ( (tuple2!11581 (_1!6616 List!10163) (_2!6616 List!10163)) )
))
(declare-datatypes ((Option!2432 0))(
  ( (None!2431) (Some!2431 (v!19848 tuple2!11580)) )
))
(declare-fun isDefined!2074 (Option!2432) Bool)

(declare-fun findConcatSeparation!538 (Regex!2933 Regex!2933 List!10163 List!10163 List!10163) Option!2432)

(assert (=> b!1063687 (= (isDefined!2074 (findConcatSeparation!538 (reg!3262 r!15766) lt!360185 Nil!10147 s!10566 s!10566)) (Exists!656 lambda!38435))))

(declare-fun lt!360187 () Unit!15541)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!538 (Regex!2933 Regex!2933 List!10163) Unit!15541)

(assert (=> b!1063687 (= lt!360187 (lemmaFindConcatSeparationEquivalentToExists!538 (reg!3262 r!15766) lt!360185 s!10566))))

(assert (=> b!1063687 (= lt!360185 (Star!2933 (reg!3262 r!15766)))))

(declare-fun b!1063688 () Bool)

(declare-fun tp_is_empty!5509 () Bool)

(assert (=> b!1063688 (= e!674764 tp_is_empty!5509)))

(declare-fun b!1063689 () Bool)

(declare-fun tp!319416 () Bool)

(declare-fun tp!319417 () Bool)

(assert (=> b!1063689 (= e!674764 (and tp!319416 tp!319417))))

(declare-fun b!1063690 () Bool)

(declare-fun tp!319418 () Bool)

(assert (=> b!1063690 (= e!674764 tp!319418)))

(declare-fun b!1063691 () Bool)

(declare-fun tp!319420 () Bool)

(assert (=> b!1063691 (= e!674762 (and tp_is_empty!5509 tp!319420))))

(declare-fun b!1063692 () Bool)

(assert (=> b!1063692 (= e!674765 (validRegex!1402 lt!360184))))

(assert (= (and start!91354 res!475219) b!1063686))

(assert (= (and b!1063686 (not res!475221)) b!1063687))

(assert (= (and b!1063687 (not res!475220)) b!1063692))

(assert (= (and start!91354 ((_ is ElementMatch!2933) r!15766)) b!1063688))

(assert (= (and start!91354 ((_ is Concat!4766) r!15766)) b!1063689))

(assert (= (and start!91354 ((_ is Star!2933) r!15766)) b!1063690))

(assert (= (and start!91354 ((_ is Union!2933) r!15766)) b!1063685))

(assert (= (and start!91354 ((_ is Cons!10147) s!10566)) b!1063691))

(declare-fun m!1222067 () Bool)

(assert (=> start!91354 m!1222067))

(declare-fun m!1222069 () Bool)

(assert (=> b!1063686 m!1222069))

(declare-fun m!1222071 () Bool)

(assert (=> b!1063686 m!1222071))

(declare-fun m!1222073 () Bool)

(assert (=> b!1063686 m!1222073))

(declare-fun m!1222075 () Bool)

(assert (=> b!1063687 m!1222075))

(declare-fun m!1222077 () Bool)

(assert (=> b!1063687 m!1222077))

(declare-fun m!1222079 () Bool)

(assert (=> b!1063687 m!1222079))

(declare-fun m!1222081 () Bool)

(assert (=> b!1063687 m!1222081))

(declare-fun m!1222083 () Bool)

(assert (=> b!1063687 m!1222083))

(declare-fun m!1222085 () Bool)

(assert (=> b!1063687 m!1222085))

(assert (=> b!1063687 m!1222075))

(assert (=> b!1063687 m!1222081))

(declare-fun m!1222087 () Bool)

(assert (=> b!1063687 m!1222087))

(declare-fun m!1222089 () Bool)

(assert (=> b!1063687 m!1222089))

(declare-fun m!1222091 () Bool)

(assert (=> b!1063692 m!1222091))

(check-sat (not b!1063692) (not start!91354) (not b!1063685) (not b!1063686) (not b!1063687) (not b!1063689) (not b!1063690) (not b!1063691) tp_is_empty!5509)
(check-sat)
(get-model)

(declare-fun b!1063715 () Bool)

(declare-fun res!475235 () Bool)

(declare-fun e!674782 () Bool)

(assert (=> b!1063715 (=> res!475235 e!674782)))

(assert (=> b!1063715 (= res!475235 (not ((_ is Concat!4766) r!15766)))))

(declare-fun e!674785 () Bool)

(assert (=> b!1063715 (= e!674785 e!674782)))

(declare-fun b!1063716 () Bool)

(declare-fun res!475234 () Bool)

(declare-fun e!674784 () Bool)

(assert (=> b!1063716 (=> (not res!475234) (not e!674784))))

(declare-fun call!76627 () Bool)

(assert (=> b!1063716 (= res!475234 call!76627)))

(assert (=> b!1063716 (= e!674785 e!674784)))

(declare-fun b!1063717 () Bool)

(declare-fun e!674787 () Bool)

(declare-fun call!76628 () Bool)

(assert (=> b!1063717 (= e!674787 call!76628)))

(declare-fun b!1063718 () Bool)

(declare-fun e!674783 () Bool)

(declare-fun e!674786 () Bool)

(assert (=> b!1063718 (= e!674783 e!674786)))

(declare-fun c!178321 () Bool)

(assert (=> b!1063718 (= c!178321 ((_ is Star!2933) r!15766))))

(declare-fun b!1063719 () Bool)

(assert (=> b!1063719 (= e!674786 e!674787)))

(declare-fun res!475236 () Bool)

(declare-fun nullable!1019 (Regex!2933) Bool)

(assert (=> b!1063719 (= res!475236 (not (nullable!1019 (reg!3262 r!15766))))))

(assert (=> b!1063719 (=> (not res!475236) (not e!674787))))

(declare-fun b!1063721 () Bool)

(declare-fun call!76629 () Bool)

(assert (=> b!1063721 (= e!674784 call!76629)))

(declare-fun b!1063722 () Bool)

(declare-fun e!674781 () Bool)

(assert (=> b!1063722 (= e!674781 call!76629)))

(declare-fun bm!76622 () Bool)

(assert (=> bm!76622 (= call!76627 call!76628)))

(declare-fun bm!76623 () Bool)

(declare-fun c!178322 () Bool)

(assert (=> bm!76623 (= call!76629 (validRegex!1402 (ite c!178322 (regTwo!6379 r!15766) (regTwo!6378 r!15766))))))

(declare-fun bm!76624 () Bool)

(assert (=> bm!76624 (= call!76628 (validRegex!1402 (ite c!178321 (reg!3262 r!15766) (ite c!178322 (regOne!6379 r!15766) (regOne!6378 r!15766)))))))

(declare-fun b!1063723 () Bool)

(assert (=> b!1063723 (= e!674782 e!674781)))

(declare-fun res!475232 () Bool)

(assert (=> b!1063723 (=> (not res!475232) (not e!674781))))

(assert (=> b!1063723 (= res!475232 call!76627)))

(declare-fun b!1063720 () Bool)

(assert (=> b!1063720 (= e!674786 e!674785)))

(assert (=> b!1063720 (= c!178322 ((_ is Union!2933) r!15766))))

(declare-fun d!300880 () Bool)

(declare-fun res!475233 () Bool)

(assert (=> d!300880 (=> res!475233 e!674783)))

(assert (=> d!300880 (= res!475233 ((_ is ElementMatch!2933) r!15766))))

(assert (=> d!300880 (= (validRegex!1402 r!15766) e!674783)))

(assert (= (and d!300880 (not res!475233)) b!1063718))

(assert (= (and b!1063718 c!178321) b!1063719))

(assert (= (and b!1063718 (not c!178321)) b!1063720))

(assert (= (and b!1063719 res!475236) b!1063717))

(assert (= (and b!1063720 c!178322) b!1063716))

(assert (= (and b!1063720 (not c!178322)) b!1063715))

(assert (= (and b!1063716 res!475234) b!1063721))

(assert (= (and b!1063715 (not res!475235)) b!1063723))

(assert (= (and b!1063723 res!475232) b!1063722))

(assert (= (or b!1063721 b!1063722) bm!76623))

(assert (= (or b!1063716 b!1063723) bm!76622))

(assert (= (or b!1063717 bm!76622) bm!76624))

(declare-fun m!1222093 () Bool)

(assert (=> b!1063719 m!1222093))

(declare-fun m!1222095 () Bool)

(assert (=> bm!76623 m!1222095))

(declare-fun m!1222097 () Bool)

(assert (=> bm!76624 m!1222097))

(assert (=> start!91354 d!300880))

(declare-fun bs!251920 () Bool)

(declare-fun b!1063789 () Bool)

(assert (= bs!251920 (and b!1063789 b!1063687)))

(declare-fun lambda!38445 () Int)

(assert (=> bs!251920 (not (= lambda!38445 lambda!38435))))

(assert (=> bs!251920 (= (= r!15766 lt!360185) (= lambda!38445 lambda!38436))))

(assert (=> b!1063789 true))

(assert (=> b!1063789 true))

(declare-fun bs!251921 () Bool)

(declare-fun b!1063795 () Bool)

(assert (= bs!251921 (and b!1063795 b!1063687)))

(declare-fun lambda!38446 () Int)

(assert (=> bs!251921 (not (= lambda!38446 lambda!38435))))

(assert (=> bs!251921 (not (= lambda!38446 lambda!38436))))

(declare-fun bs!251922 () Bool)

(assert (= bs!251922 (and b!1063795 b!1063789)))

(assert (=> bs!251922 (not (= lambda!38446 lambda!38445))))

(assert (=> b!1063795 true))

(assert (=> b!1063795 true))

(declare-fun b!1063788 () Bool)

(declare-fun c!178340 () Bool)

(assert (=> b!1063788 (= c!178340 ((_ is ElementMatch!2933) r!15766))))

(declare-fun e!674830 () Bool)

(declare-fun e!674829 () Bool)

(assert (=> b!1063788 (= e!674830 e!674829)))

(declare-fun bm!76631 () Bool)

(declare-fun call!76637 () Bool)

(declare-fun isEmpty!6560 (List!10163) Bool)

(assert (=> bm!76631 (= call!76637 (isEmpty!6560 s!10566))))

(declare-fun e!674825 () Bool)

(declare-fun call!76636 () Bool)

(assert (=> b!1063789 (= e!674825 call!76636)))

(declare-fun b!1063790 () Bool)

(declare-fun c!178342 () Bool)

(assert (=> b!1063790 (= c!178342 ((_ is Union!2933) r!15766))))

(declare-fun e!674827 () Bool)

(assert (=> b!1063790 (= e!674829 e!674827)))

(declare-fun b!1063791 () Bool)

(declare-fun e!674828 () Bool)

(assert (=> b!1063791 (= e!674828 e!674830)))

(declare-fun res!475270 () Bool)

(assert (=> b!1063791 (= res!475270 (not ((_ is EmptyLang!2933) r!15766)))))

(assert (=> b!1063791 (=> (not res!475270) (not e!674830))))

(declare-fun b!1063792 () Bool)

(declare-fun e!674824 () Bool)

(assert (=> b!1063792 (= e!674827 e!674824)))

(declare-fun c!178341 () Bool)

(assert (=> b!1063792 (= c!178341 ((_ is Star!2933) r!15766))))

(declare-fun b!1063793 () Bool)

(assert (=> b!1063793 (= e!674828 call!76637)))

(declare-fun d!300882 () Bool)

(declare-fun c!178339 () Bool)

(assert (=> d!300882 (= c!178339 ((_ is EmptyExpr!2933) r!15766))))

(assert (=> d!300882 (= (matchRSpec!732 r!15766 s!10566) e!674828)))

(declare-fun b!1063794 () Bool)

(declare-fun res!475269 () Bool)

(assert (=> b!1063794 (=> res!475269 e!674825)))

(assert (=> b!1063794 (= res!475269 call!76637)))

(assert (=> b!1063794 (= e!674824 e!674825)))

(assert (=> b!1063795 (= e!674824 call!76636)))

(declare-fun b!1063796 () Bool)

(declare-fun e!674826 () Bool)

(assert (=> b!1063796 (= e!674827 e!674826)))

(declare-fun res!475271 () Bool)

(assert (=> b!1063796 (= res!475271 (matchRSpec!732 (regOne!6379 r!15766) s!10566))))

(assert (=> b!1063796 (=> res!475271 e!674826)))

(declare-fun bm!76632 () Bool)

(assert (=> bm!76632 (= call!76636 (Exists!656 (ite c!178341 lambda!38445 lambda!38446)))))

(declare-fun b!1063797 () Bool)

(assert (=> b!1063797 (= e!674829 (= s!10566 (Cons!10147 (c!178316 r!15766) Nil!10147)))))

(declare-fun b!1063798 () Bool)

(assert (=> b!1063798 (= e!674826 (matchRSpec!732 (regTwo!6379 r!15766) s!10566))))

(assert (= (and d!300882 c!178339) b!1063793))

(assert (= (and d!300882 (not c!178339)) b!1063791))

(assert (= (and b!1063791 res!475270) b!1063788))

(assert (= (and b!1063788 c!178340) b!1063797))

(assert (= (and b!1063788 (not c!178340)) b!1063790))

(assert (= (and b!1063790 c!178342) b!1063796))

(assert (= (and b!1063790 (not c!178342)) b!1063792))

(assert (= (and b!1063796 (not res!475271)) b!1063798))

(assert (= (and b!1063792 c!178341) b!1063794))

(assert (= (and b!1063792 (not c!178341)) b!1063795))

(assert (= (and b!1063794 (not res!475269)) b!1063789))

(assert (= (or b!1063789 b!1063795) bm!76632))

(assert (= (or b!1063793 b!1063794) bm!76631))

(declare-fun m!1222099 () Bool)

(assert (=> bm!76631 m!1222099))

(declare-fun m!1222101 () Bool)

(assert (=> b!1063796 m!1222101))

(declare-fun m!1222103 () Bool)

(assert (=> bm!76632 m!1222103))

(declare-fun m!1222105 () Bool)

(assert (=> b!1063798 m!1222105))

(assert (=> b!1063686 d!300882))

(declare-fun b!1063867 () Bool)

(declare-fun e!674867 () Bool)

(declare-fun head!1973 (List!10163) C!6436)

(assert (=> b!1063867 (= e!674867 (= (head!1973 s!10566) (c!178316 r!15766)))))

(declare-fun b!1063868 () Bool)

(declare-fun res!475314 () Bool)

(assert (=> b!1063868 (=> (not res!475314) (not e!674867))))

(declare-fun call!76646 () Bool)

(assert (=> b!1063868 (= res!475314 (not call!76646))))

(declare-fun b!1063869 () Bool)

(declare-fun res!475313 () Bool)

(declare-fun e!674868 () Bool)

(assert (=> b!1063869 (=> res!475313 e!674868)))

(assert (=> b!1063869 (= res!475313 (not ((_ is ElementMatch!2933) r!15766)))))

(declare-fun e!674869 () Bool)

(assert (=> b!1063869 (= e!674869 e!674868)))

(declare-fun b!1063870 () Bool)

(declare-fun e!674872 () Bool)

(assert (=> b!1063870 (= e!674872 (nullable!1019 r!15766))))

(declare-fun b!1063871 () Bool)

(declare-fun e!674871 () Bool)

(assert (=> b!1063871 (= e!674871 e!674869)))

(declare-fun c!178359 () Bool)

(assert (=> b!1063871 (= c!178359 ((_ is EmptyLang!2933) r!15766))))

(declare-fun b!1063872 () Bool)

(declare-fun e!674866 () Bool)

(assert (=> b!1063872 (= e!674868 e!674866)))

(declare-fun res!475309 () Bool)

(assert (=> b!1063872 (=> (not res!475309) (not e!674866))))

(declare-fun lt!360192 () Bool)

(assert (=> b!1063872 (= res!475309 (not lt!360192))))

(declare-fun b!1063873 () Bool)

(assert (=> b!1063873 (= e!674871 (= lt!360192 call!76646))))

(declare-fun b!1063874 () Bool)

(declare-fun derivativeStep!818 (Regex!2933 C!6436) Regex!2933)

(declare-fun tail!1535 (List!10163) List!10163)

(assert (=> b!1063874 (= e!674872 (matchR!1469 (derivativeStep!818 r!15766 (head!1973 s!10566)) (tail!1535 s!10566)))))

(declare-fun b!1063866 () Bool)

(declare-fun e!674870 () Bool)

(assert (=> b!1063866 (= e!674866 e!674870)))

(declare-fun res!475308 () Bool)

(assert (=> b!1063866 (=> res!475308 e!674870)))

(assert (=> b!1063866 (= res!475308 call!76646)))

(declare-fun d!300886 () Bool)

(assert (=> d!300886 e!674871))

(declare-fun c!178360 () Bool)

(assert (=> d!300886 (= c!178360 ((_ is EmptyExpr!2933) r!15766))))

(assert (=> d!300886 (= lt!360192 e!674872)))

(declare-fun c!178361 () Bool)

(assert (=> d!300886 (= c!178361 (isEmpty!6560 s!10566))))

(assert (=> d!300886 (validRegex!1402 r!15766)))

(assert (=> d!300886 (= (matchR!1469 r!15766 s!10566) lt!360192)))

(declare-fun b!1063875 () Bool)

(assert (=> b!1063875 (= e!674869 (not lt!360192))))

(declare-fun b!1063876 () Bool)

(declare-fun res!475307 () Bool)

(assert (=> b!1063876 (=> (not res!475307) (not e!674867))))

(assert (=> b!1063876 (= res!475307 (isEmpty!6560 (tail!1535 s!10566)))))

(declare-fun b!1063877 () Bool)

(declare-fun res!475310 () Bool)

(assert (=> b!1063877 (=> res!475310 e!674870)))

(assert (=> b!1063877 (= res!475310 (not (isEmpty!6560 (tail!1535 s!10566))))))

(declare-fun b!1063878 () Bool)

(declare-fun res!475312 () Bool)

(assert (=> b!1063878 (=> res!475312 e!674868)))

(assert (=> b!1063878 (= res!475312 e!674867)))

(declare-fun res!475311 () Bool)

(assert (=> b!1063878 (=> (not res!475311) (not e!674867))))

(assert (=> b!1063878 (= res!475311 lt!360192)))

(declare-fun b!1063879 () Bool)

(assert (=> b!1063879 (= e!674870 (not (= (head!1973 s!10566) (c!178316 r!15766))))))

(declare-fun bm!76641 () Bool)

(assert (=> bm!76641 (= call!76646 (isEmpty!6560 s!10566))))

(assert (= (and d!300886 c!178361) b!1063870))

(assert (= (and d!300886 (not c!178361)) b!1063874))

(assert (= (and d!300886 c!178360) b!1063873))

(assert (= (and d!300886 (not c!178360)) b!1063871))

(assert (= (and b!1063871 c!178359) b!1063875))

(assert (= (and b!1063871 (not c!178359)) b!1063869))

(assert (= (and b!1063869 (not res!475313)) b!1063878))

(assert (= (and b!1063878 res!475311) b!1063868))

(assert (= (and b!1063868 res!475314) b!1063876))

(assert (= (and b!1063876 res!475307) b!1063867))

(assert (= (and b!1063878 (not res!475312)) b!1063872))

(assert (= (and b!1063872 res!475309) b!1063866))

(assert (= (and b!1063866 (not res!475308)) b!1063877))

(assert (= (and b!1063877 (not res!475310)) b!1063879))

(assert (= (or b!1063873 b!1063866 b!1063868) bm!76641))

(assert (=> d!300886 m!1222099))

(assert (=> d!300886 m!1222067))

(declare-fun m!1222115 () Bool)

(assert (=> b!1063867 m!1222115))

(declare-fun m!1222117 () Bool)

(assert (=> b!1063877 m!1222117))

(assert (=> b!1063877 m!1222117))

(declare-fun m!1222119 () Bool)

(assert (=> b!1063877 m!1222119))

(assert (=> b!1063874 m!1222115))

(assert (=> b!1063874 m!1222115))

(declare-fun m!1222121 () Bool)

(assert (=> b!1063874 m!1222121))

(assert (=> b!1063874 m!1222117))

(assert (=> b!1063874 m!1222121))

(assert (=> b!1063874 m!1222117))

(declare-fun m!1222123 () Bool)

(assert (=> b!1063874 m!1222123))

(assert (=> bm!76641 m!1222099))

(declare-fun m!1222125 () Bool)

(assert (=> b!1063870 m!1222125))

(assert (=> b!1063876 m!1222117))

(assert (=> b!1063876 m!1222117))

(assert (=> b!1063876 m!1222119))

(assert (=> b!1063879 m!1222115))

(assert (=> b!1063686 d!300886))

(declare-fun d!300890 () Bool)

(assert (=> d!300890 (= (matchR!1469 r!15766 s!10566) (matchRSpec!732 r!15766 s!10566))))

(declare-fun lt!360196 () Unit!15541)

(declare-fun choose!6776 (Regex!2933 List!10163) Unit!15541)

(assert (=> d!300890 (= lt!360196 (choose!6776 r!15766 s!10566))))

(assert (=> d!300890 (validRegex!1402 r!15766)))

(assert (=> d!300890 (= (mainMatchTheorem!732 r!15766 s!10566) lt!360196)))

(declare-fun bs!251926 () Bool)

(assert (= bs!251926 d!300890))

(assert (=> bs!251926 m!1222071))

(assert (=> bs!251926 m!1222069))

(declare-fun m!1222129 () Bool)

(assert (=> bs!251926 m!1222129))

(assert (=> bs!251926 m!1222067))

(assert (=> b!1063686 d!300890))

(declare-fun b!1063894 () Bool)

(declare-fun res!475326 () Bool)

(declare-fun e!674881 () Bool)

(assert (=> b!1063894 (=> res!475326 e!674881)))

(assert (=> b!1063894 (= res!475326 (not ((_ is Concat!4766) lt!360184)))))

(declare-fun e!674884 () Bool)

(assert (=> b!1063894 (= e!674884 e!674881)))

(declare-fun b!1063895 () Bool)

(declare-fun res!475325 () Bool)

(declare-fun e!674883 () Bool)

(assert (=> b!1063895 (=> (not res!475325) (not e!674883))))

(declare-fun call!76648 () Bool)

(assert (=> b!1063895 (= res!475325 call!76648)))

(assert (=> b!1063895 (= e!674884 e!674883)))

(declare-fun b!1063896 () Bool)

(declare-fun e!674886 () Bool)

(declare-fun call!76649 () Bool)

(assert (=> b!1063896 (= e!674886 call!76649)))

(declare-fun b!1063897 () Bool)

(declare-fun e!674882 () Bool)

(declare-fun e!674885 () Bool)

(assert (=> b!1063897 (= e!674882 e!674885)))

(declare-fun c!178365 () Bool)

(assert (=> b!1063897 (= c!178365 ((_ is Star!2933) lt!360184))))

(declare-fun b!1063898 () Bool)

(assert (=> b!1063898 (= e!674885 e!674886)))

(declare-fun res!475327 () Bool)

(assert (=> b!1063898 (= res!475327 (not (nullable!1019 (reg!3262 lt!360184))))))

(assert (=> b!1063898 (=> (not res!475327) (not e!674886))))

(declare-fun b!1063900 () Bool)

(declare-fun call!76650 () Bool)

(assert (=> b!1063900 (= e!674883 call!76650)))

(declare-fun b!1063901 () Bool)

(declare-fun e!674880 () Bool)

(assert (=> b!1063901 (= e!674880 call!76650)))

(declare-fun bm!76643 () Bool)

(assert (=> bm!76643 (= call!76648 call!76649)))

(declare-fun bm!76644 () Bool)

(declare-fun c!178366 () Bool)

(assert (=> bm!76644 (= call!76650 (validRegex!1402 (ite c!178366 (regTwo!6379 lt!360184) (regTwo!6378 lt!360184))))))

(declare-fun bm!76645 () Bool)

(assert (=> bm!76645 (= call!76649 (validRegex!1402 (ite c!178365 (reg!3262 lt!360184) (ite c!178366 (regOne!6379 lt!360184) (regOne!6378 lt!360184)))))))

(declare-fun b!1063902 () Bool)

(assert (=> b!1063902 (= e!674881 e!674880)))

(declare-fun res!475323 () Bool)

(assert (=> b!1063902 (=> (not res!475323) (not e!674880))))

(assert (=> b!1063902 (= res!475323 call!76648)))

(declare-fun b!1063899 () Bool)

(assert (=> b!1063899 (= e!674885 e!674884)))

(assert (=> b!1063899 (= c!178366 ((_ is Union!2933) lt!360184))))

(declare-fun d!300892 () Bool)

(declare-fun res!475324 () Bool)

(assert (=> d!300892 (=> res!475324 e!674882)))

(assert (=> d!300892 (= res!475324 ((_ is ElementMatch!2933) lt!360184))))

(assert (=> d!300892 (= (validRegex!1402 lt!360184) e!674882)))

(assert (= (and d!300892 (not res!475324)) b!1063897))

(assert (= (and b!1063897 c!178365) b!1063898))

(assert (= (and b!1063897 (not c!178365)) b!1063899))

(assert (= (and b!1063898 res!475327) b!1063896))

(assert (= (and b!1063899 c!178366) b!1063895))

(assert (= (and b!1063899 (not c!178366)) b!1063894))

(assert (= (and b!1063895 res!475325) b!1063900))

(assert (= (and b!1063894 (not res!475326)) b!1063902))

(assert (= (and b!1063902 res!475323) b!1063901))

(assert (= (or b!1063900 b!1063901) bm!76644))

(assert (= (or b!1063895 b!1063902) bm!76643))

(assert (= (or b!1063896 bm!76643) bm!76645))

(declare-fun m!1222141 () Bool)

(assert (=> b!1063898 m!1222141))

(declare-fun m!1222143 () Bool)

(assert (=> bm!76644 m!1222143))

(declare-fun m!1222145 () Bool)

(assert (=> bm!76645 m!1222145))

(assert (=> b!1063692 d!300892))

(declare-fun d!300896 () Bool)

(declare-fun choose!6777 (Int) Bool)

(assert (=> d!300896 (= (Exists!656 lambda!38435) (choose!6777 lambda!38435))))

(declare-fun bs!251927 () Bool)

(assert (= bs!251927 d!300896))

(declare-fun m!1222147 () Bool)

(assert (=> bs!251927 m!1222147))

(assert (=> b!1063687 d!300896))

(declare-fun bs!251930 () Bool)

(declare-fun d!300898 () Bool)

(assert (= bs!251930 (and d!300898 b!1063687)))

(declare-fun lambda!38453 () Int)

(assert (=> bs!251930 (= (= (Star!2933 (reg!3262 r!15766)) lt!360185) (= lambda!38453 lambda!38435))))

(assert (=> bs!251930 (not (= lambda!38453 lambda!38436))))

(declare-fun bs!251931 () Bool)

(assert (= bs!251931 (and d!300898 b!1063789)))

(assert (=> bs!251931 (not (= lambda!38453 lambda!38445))))

(declare-fun bs!251932 () Bool)

(assert (= bs!251932 (and d!300898 b!1063795)))

(assert (=> bs!251932 (not (= lambda!38453 lambda!38446))))

(assert (=> d!300898 true))

(assert (=> d!300898 true))

(declare-fun lambda!38454 () Int)

(assert (=> bs!251932 (not (= lambda!38454 lambda!38446))))

(declare-fun bs!251933 () Bool)

(assert (= bs!251933 d!300898))

(assert (=> bs!251933 (not (= lambda!38454 lambda!38453))))

(assert (=> bs!251930 (= (= (Star!2933 (reg!3262 r!15766)) lt!360185) (= lambda!38454 lambda!38436))))

(assert (=> bs!251931 (= (= (Star!2933 (reg!3262 r!15766)) r!15766) (= lambda!38454 lambda!38445))))

(assert (=> bs!251930 (not (= lambda!38454 lambda!38435))))

(assert (=> d!300898 true))

(assert (=> d!300898 true))

(assert (=> d!300898 (= (Exists!656 lambda!38453) (Exists!656 lambda!38454))))

(declare-fun lt!360203 () Unit!15541)

(declare-fun choose!6778 (Regex!2933 List!10163) Unit!15541)

(assert (=> d!300898 (= lt!360203 (choose!6778 (reg!3262 r!15766) s!10566))))

(assert (=> d!300898 (validRegex!1402 (reg!3262 r!15766))))

(assert (=> d!300898 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!174 (reg!3262 r!15766) s!10566) lt!360203)))

(declare-fun m!1222165 () Bool)

(assert (=> bs!251933 m!1222165))

(declare-fun m!1222167 () Bool)

(assert (=> bs!251933 m!1222167))

(declare-fun m!1222169 () Bool)

(assert (=> bs!251933 m!1222169))

(declare-fun m!1222171 () Bool)

(assert (=> bs!251933 m!1222171))

(assert (=> b!1063687 d!300898))

(declare-fun bs!251938 () Bool)

(declare-fun d!300908 () Bool)

(assert (= bs!251938 (and d!300908 b!1063795)))

(declare-fun lambda!38460 () Int)

(assert (=> bs!251938 (not (= lambda!38460 lambda!38446))))

(declare-fun bs!251939 () Bool)

(assert (= bs!251939 (and d!300908 d!300898)))

(assert (=> bs!251939 (not (= lambda!38460 lambda!38454))))

(assert (=> bs!251939 (= (= lt!360185 (Star!2933 (reg!3262 r!15766))) (= lambda!38460 lambda!38453))))

(declare-fun bs!251940 () Bool)

(assert (= bs!251940 (and d!300908 b!1063687)))

(assert (=> bs!251940 (not (= lambda!38460 lambda!38436))))

(declare-fun bs!251941 () Bool)

(assert (= bs!251941 (and d!300908 b!1063789)))

(assert (=> bs!251941 (not (= lambda!38460 lambda!38445))))

(assert (=> bs!251940 (= lambda!38460 lambda!38435)))

(assert (=> d!300908 true))

(assert (=> d!300908 true))

(assert (=> d!300908 true))

(assert (=> d!300908 (= (isDefined!2074 (findConcatSeparation!538 (reg!3262 r!15766) lt!360185 Nil!10147 s!10566 s!10566)) (Exists!656 lambda!38460))))

(declare-fun lt!360209 () Unit!15541)

(declare-fun choose!6780 (Regex!2933 Regex!2933 List!10163) Unit!15541)

(assert (=> d!300908 (= lt!360209 (choose!6780 (reg!3262 r!15766) lt!360185 s!10566))))

(assert (=> d!300908 (validRegex!1402 (reg!3262 r!15766))))

(assert (=> d!300908 (= (lemmaFindConcatSeparationEquivalentToExists!538 (reg!3262 r!15766) lt!360185 s!10566) lt!360209)))

(declare-fun bs!251942 () Bool)

(assert (= bs!251942 d!300908))

(assert (=> bs!251942 m!1222081))

(declare-fun m!1222179 () Bool)

(assert (=> bs!251942 m!1222179))

(declare-fun m!1222181 () Bool)

(assert (=> bs!251942 m!1222181))

(assert (=> bs!251942 m!1222081))

(assert (=> bs!251942 m!1222087))

(assert (=> bs!251942 m!1222171))

(assert (=> b!1063687 d!300908))

(declare-fun d!300912 () Bool)

(declare-fun isEmpty!6562 (Option!2432) Bool)

(assert (=> d!300912 (= (isDefined!2074 (findConcatSeparation!538 (reg!3262 r!15766) lt!360185 Nil!10147 s!10566 s!10566)) (not (isEmpty!6562 (findConcatSeparation!538 (reg!3262 r!15766) lt!360185 Nil!10147 s!10566 s!10566))))))

(declare-fun bs!251943 () Bool)

(assert (= bs!251943 d!300912))

(assert (=> bs!251943 m!1222081))

(declare-fun m!1222183 () Bool)

(assert (=> bs!251943 m!1222183))

(assert (=> b!1063687 d!300912))

(declare-fun b!1063963 () Bool)

(declare-fun e!674924 () Bool)

(assert (=> b!1063963 (= e!674924 (= (head!1973 s!10566) (c!178316 lt!360184)))))

(declare-fun b!1063964 () Bool)

(declare-fun res!475376 () Bool)

(assert (=> b!1063964 (=> (not res!475376) (not e!674924))))

(declare-fun call!76661 () Bool)

(assert (=> b!1063964 (= res!475376 (not call!76661))))

(declare-fun b!1063965 () Bool)

(declare-fun res!475375 () Bool)

(declare-fun e!674925 () Bool)

(assert (=> b!1063965 (=> res!475375 e!674925)))

(assert (=> b!1063965 (= res!475375 (not ((_ is ElementMatch!2933) lt!360184)))))

(declare-fun e!674926 () Bool)

(assert (=> b!1063965 (= e!674926 e!674925)))

(declare-fun b!1063966 () Bool)

(declare-fun e!674929 () Bool)

(assert (=> b!1063966 (= e!674929 (nullable!1019 lt!360184))))

(declare-fun b!1063967 () Bool)

(declare-fun e!674928 () Bool)

(assert (=> b!1063967 (= e!674928 e!674926)))

(declare-fun c!178376 () Bool)

(assert (=> b!1063967 (= c!178376 ((_ is EmptyLang!2933) lt!360184))))

(declare-fun b!1063968 () Bool)

(declare-fun e!674923 () Bool)

(assert (=> b!1063968 (= e!674925 e!674923)))

(declare-fun res!475371 () Bool)

(assert (=> b!1063968 (=> (not res!475371) (not e!674923))))

(declare-fun lt!360210 () Bool)

(assert (=> b!1063968 (= res!475371 (not lt!360210))))

(declare-fun b!1063969 () Bool)

(assert (=> b!1063969 (= e!674928 (= lt!360210 call!76661))))

(declare-fun b!1063970 () Bool)

(assert (=> b!1063970 (= e!674929 (matchR!1469 (derivativeStep!818 lt!360184 (head!1973 s!10566)) (tail!1535 s!10566)))))

(declare-fun b!1063962 () Bool)

(declare-fun e!674927 () Bool)

(assert (=> b!1063962 (= e!674923 e!674927)))

(declare-fun res!475370 () Bool)

(assert (=> b!1063962 (=> res!475370 e!674927)))

(assert (=> b!1063962 (= res!475370 call!76661)))

(declare-fun d!300914 () Bool)

(assert (=> d!300914 e!674928))

(declare-fun c!178377 () Bool)

(assert (=> d!300914 (= c!178377 ((_ is EmptyExpr!2933) lt!360184))))

(assert (=> d!300914 (= lt!360210 e!674929)))

(declare-fun c!178378 () Bool)

(assert (=> d!300914 (= c!178378 (isEmpty!6560 s!10566))))

(assert (=> d!300914 (validRegex!1402 lt!360184)))

(assert (=> d!300914 (= (matchR!1469 lt!360184 s!10566) lt!360210)))

(declare-fun b!1063971 () Bool)

(assert (=> b!1063971 (= e!674926 (not lt!360210))))

(declare-fun b!1063972 () Bool)

(declare-fun res!475369 () Bool)

(assert (=> b!1063972 (=> (not res!475369) (not e!674924))))

(assert (=> b!1063972 (= res!475369 (isEmpty!6560 (tail!1535 s!10566)))))

(declare-fun b!1063973 () Bool)

(declare-fun res!475372 () Bool)

(assert (=> b!1063973 (=> res!475372 e!674927)))

(assert (=> b!1063973 (= res!475372 (not (isEmpty!6560 (tail!1535 s!10566))))))

(declare-fun b!1063974 () Bool)

(declare-fun res!475374 () Bool)

(assert (=> b!1063974 (=> res!475374 e!674925)))

(assert (=> b!1063974 (= res!475374 e!674924)))

(declare-fun res!475373 () Bool)

(assert (=> b!1063974 (=> (not res!475373) (not e!674924))))

(assert (=> b!1063974 (= res!475373 lt!360210)))

(declare-fun b!1063975 () Bool)

(assert (=> b!1063975 (= e!674927 (not (= (head!1973 s!10566) (c!178316 lt!360184))))))

(declare-fun bm!76656 () Bool)

(assert (=> bm!76656 (= call!76661 (isEmpty!6560 s!10566))))

(assert (= (and d!300914 c!178378) b!1063966))

(assert (= (and d!300914 (not c!178378)) b!1063970))

(assert (= (and d!300914 c!178377) b!1063969))

(assert (= (and d!300914 (not c!178377)) b!1063967))

(assert (= (and b!1063967 c!178376) b!1063971))

(assert (= (and b!1063967 (not c!178376)) b!1063965))

(assert (= (and b!1063965 (not res!475375)) b!1063974))

(assert (= (and b!1063974 res!475373) b!1063964))

(assert (= (and b!1063964 res!475376) b!1063972))

(assert (= (and b!1063972 res!475369) b!1063963))

(assert (= (and b!1063974 (not res!475374)) b!1063968))

(assert (= (and b!1063968 res!475371) b!1063962))

(assert (= (and b!1063962 (not res!475370)) b!1063973))

(assert (= (and b!1063973 (not res!475372)) b!1063975))

(assert (= (or b!1063969 b!1063962 b!1063964) bm!76656))

(assert (=> d!300914 m!1222099))

(assert (=> d!300914 m!1222091))

(assert (=> b!1063963 m!1222115))

(assert (=> b!1063973 m!1222117))

(assert (=> b!1063973 m!1222117))

(assert (=> b!1063973 m!1222119))

(assert (=> b!1063970 m!1222115))

(assert (=> b!1063970 m!1222115))

(declare-fun m!1222185 () Bool)

(assert (=> b!1063970 m!1222185))

(assert (=> b!1063970 m!1222117))

(assert (=> b!1063970 m!1222185))

(assert (=> b!1063970 m!1222117))

(declare-fun m!1222187 () Bool)

(assert (=> b!1063970 m!1222187))

(assert (=> bm!76656 m!1222099))

(declare-fun m!1222189 () Bool)

(assert (=> b!1063966 m!1222189))

(assert (=> b!1063972 m!1222117))

(assert (=> b!1063972 m!1222117))

(assert (=> b!1063972 m!1222119))

(assert (=> b!1063975 m!1222115))

(assert (=> b!1063687 d!300914))

(declare-fun d!300916 () Bool)

(assert (=> d!300916 (= (Exists!656 lambda!38436) (choose!6777 lambda!38436))))

(declare-fun bs!251944 () Bool)

(assert (= bs!251944 d!300916))

(declare-fun m!1222191 () Bool)

(assert (=> bs!251944 m!1222191))

(assert (=> b!1063687 d!300916))

(declare-fun b!1064025 () Bool)

(declare-fun e!674954 () Bool)

(declare-fun lt!360223 () Option!2432)

(declare-fun ++!2804 (List!10163 List!10163) List!10163)

(declare-fun get!3648 (Option!2432) tuple2!11580)

(assert (=> b!1064025 (= e!674954 (= (++!2804 (_1!6616 (get!3648 lt!360223)) (_2!6616 (get!3648 lt!360223))) s!10566))))

(declare-fun b!1064026 () Bool)

(declare-fun e!674957 () Option!2432)

(assert (=> b!1064026 (= e!674957 (Some!2431 (tuple2!11581 Nil!10147 s!10566)))))

(declare-fun b!1064027 () Bool)

(declare-fun res!475399 () Bool)

(assert (=> b!1064027 (=> (not res!475399) (not e!674954))))

(assert (=> b!1064027 (= res!475399 (matchR!1469 lt!360185 (_2!6616 (get!3648 lt!360223))))))

(declare-fun b!1064028 () Bool)

(declare-fun e!674956 () Bool)

(assert (=> b!1064028 (= e!674956 (matchR!1469 lt!360185 s!10566))))

(declare-fun b!1064029 () Bool)

(declare-fun e!674955 () Bool)

(assert (=> b!1064029 (= e!674955 (not (isDefined!2074 lt!360223)))))

(declare-fun b!1064030 () Bool)

(declare-fun lt!360224 () Unit!15541)

(declare-fun lt!360222 () Unit!15541)

(assert (=> b!1064030 (= lt!360224 lt!360222)))

(assert (=> b!1064030 (= (++!2804 (++!2804 Nil!10147 (Cons!10147 (h!15548 s!10566) Nil!10147)) (t!101209 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!397 (List!10163 C!6436 List!10163 List!10163) Unit!15541)

(assert (=> b!1064030 (= lt!360222 (lemmaMoveElementToOtherListKeepsConcatEq!397 Nil!10147 (h!15548 s!10566) (t!101209 s!10566) s!10566))))

(declare-fun e!674958 () Option!2432)

(assert (=> b!1064030 (= e!674958 (findConcatSeparation!538 (reg!3262 r!15766) lt!360185 (++!2804 Nil!10147 (Cons!10147 (h!15548 s!10566) Nil!10147)) (t!101209 s!10566) s!10566))))

(declare-fun d!300918 () Bool)

(assert (=> d!300918 e!674955))

(declare-fun res!475398 () Bool)

(assert (=> d!300918 (=> res!475398 e!674955)))

(assert (=> d!300918 (= res!475398 e!674954)))

(declare-fun res!475400 () Bool)

(assert (=> d!300918 (=> (not res!475400) (not e!674954))))

(assert (=> d!300918 (= res!475400 (isDefined!2074 lt!360223))))

(assert (=> d!300918 (= lt!360223 e!674957)))

(declare-fun c!178394 () Bool)

(assert (=> d!300918 (= c!178394 e!674956)))

(declare-fun res!475397 () Bool)

(assert (=> d!300918 (=> (not res!475397) (not e!674956))))

(assert (=> d!300918 (= res!475397 (matchR!1469 (reg!3262 r!15766) Nil!10147))))

(assert (=> d!300918 (validRegex!1402 (reg!3262 r!15766))))

(assert (=> d!300918 (= (findConcatSeparation!538 (reg!3262 r!15766) lt!360185 Nil!10147 s!10566 s!10566) lt!360223)))

(declare-fun b!1064024 () Bool)

(assert (=> b!1064024 (= e!674957 e!674958)))

(declare-fun c!178393 () Bool)

(assert (=> b!1064024 (= c!178393 ((_ is Nil!10147) s!10566))))

(declare-fun b!1064031 () Bool)

(declare-fun res!475401 () Bool)

(assert (=> b!1064031 (=> (not res!475401) (not e!674954))))

(assert (=> b!1064031 (= res!475401 (matchR!1469 (reg!3262 r!15766) (_1!6616 (get!3648 lt!360223))))))

(declare-fun b!1064032 () Bool)

(assert (=> b!1064032 (= e!674958 None!2431)))

(assert (= (and d!300918 res!475397) b!1064028))

(assert (= (and d!300918 c!178394) b!1064026))

(assert (= (and d!300918 (not c!178394)) b!1064024))

(assert (= (and b!1064024 c!178393) b!1064032))

(assert (= (and b!1064024 (not c!178393)) b!1064030))

(assert (= (and d!300918 res!475400) b!1064031))

(assert (= (and b!1064031 res!475401) b!1064027))

(assert (= (and b!1064027 res!475399) b!1064025))

(assert (= (and d!300918 (not res!475398)) b!1064029))

(declare-fun m!1222201 () Bool)

(assert (=> b!1064027 m!1222201))

(declare-fun m!1222203 () Bool)

(assert (=> b!1064027 m!1222203))

(declare-fun m!1222205 () Bool)

(assert (=> d!300918 m!1222205))

(declare-fun m!1222207 () Bool)

(assert (=> d!300918 m!1222207))

(assert (=> d!300918 m!1222171))

(assert (=> b!1064029 m!1222205))

(assert (=> b!1064025 m!1222201))

(declare-fun m!1222209 () Bool)

(assert (=> b!1064025 m!1222209))

(assert (=> b!1064031 m!1222201))

(declare-fun m!1222211 () Bool)

(assert (=> b!1064031 m!1222211))

(declare-fun m!1222213 () Bool)

(assert (=> b!1064028 m!1222213))

(declare-fun m!1222215 () Bool)

(assert (=> b!1064030 m!1222215))

(assert (=> b!1064030 m!1222215))

(declare-fun m!1222217 () Bool)

(assert (=> b!1064030 m!1222217))

(declare-fun m!1222219 () Bool)

(assert (=> b!1064030 m!1222219))

(assert (=> b!1064030 m!1222215))

(declare-fun m!1222221 () Bool)

(assert (=> b!1064030 m!1222221))

(assert (=> b!1063687 d!300918))

(declare-fun b!1064068 () Bool)

(declare-fun c!178411 () Bool)

(assert (=> b!1064068 (= c!178411 ((_ is Concat!4766) (reg!3262 r!15766)))))

(declare-fun e!674980 () Regex!2933)

(declare-fun e!674983 () Regex!2933)

(assert (=> b!1064068 (= e!674980 e!674983)))

(declare-fun b!1064069 () Bool)

(declare-fun e!674981 () Regex!2933)

(assert (=> b!1064069 (= e!674981 (reg!3262 r!15766))))

(declare-fun d!300924 () Bool)

(declare-fun e!674979 () Bool)

(assert (=> d!300924 e!674979))

(declare-fun res!475407 () Bool)

(assert (=> d!300924 (=> (not res!475407) (not e!674979))))

(declare-fun lt!360228 () Regex!2933)

(assert (=> d!300924 (= res!475407 (validRegex!1402 lt!360228))))

(declare-fun e!674984 () Regex!2933)

(assert (=> d!300924 (= lt!360228 e!674984)))

(declare-fun c!178410 () Bool)

(assert (=> d!300924 (= c!178410 (and ((_ is Concat!4766) (reg!3262 r!15766)) ((_ is EmptyExpr!2933) (regOne!6378 (reg!3262 r!15766)))))))

(assert (=> d!300924 (validRegex!1402 (reg!3262 r!15766))))

(assert (=> d!300924 (= (removeUselessConcat!474 (reg!3262 r!15766)) lt!360228)))

(declare-fun bm!76682 () Bool)

(declare-fun call!76689 () Regex!2933)

(declare-fun call!76691 () Regex!2933)

(assert (=> bm!76682 (= call!76689 call!76691)))

(declare-fun b!1064070 () Bool)

(declare-fun e!674982 () Regex!2933)

(assert (=> b!1064070 (= e!674983 e!674982)))

(declare-fun c!178413 () Bool)

(assert (=> b!1064070 (= c!178413 ((_ is Union!2933) (reg!3262 r!15766)))))

(declare-fun b!1064071 () Bool)

(assert (=> b!1064071 (= e!674984 e!674980)))

(declare-fun c!178412 () Bool)

(assert (=> b!1064071 (= c!178412 (and ((_ is Concat!4766) (reg!3262 r!15766)) ((_ is EmptyExpr!2933) (regTwo!6378 (reg!3262 r!15766)))))))

(declare-fun bm!76683 () Bool)

(declare-fun call!76688 () Regex!2933)

(assert (=> bm!76683 (= call!76688 (removeUselessConcat!474 (ite c!178410 (regTwo!6378 (reg!3262 r!15766)) (ite (or c!178412 c!178411) (regOne!6378 (reg!3262 r!15766)) (ite c!178413 (regTwo!6379 (reg!3262 r!15766)) (reg!3262 (reg!3262 r!15766)))))))))

(declare-fun b!1064072 () Bool)

(declare-fun c!178414 () Bool)

(assert (=> b!1064072 (= c!178414 ((_ is Star!2933) (reg!3262 r!15766)))))

(assert (=> b!1064072 (= e!674982 e!674981)))

(declare-fun b!1064073 () Bool)

(declare-fun call!76687 () Regex!2933)

(assert (=> b!1064073 (= e!674983 (Concat!4766 call!76689 call!76687))))

(declare-fun bm!76684 () Bool)

(assert (=> bm!76684 (= call!76687 (removeUselessConcat!474 (ite c!178411 (regTwo!6378 (reg!3262 r!15766)) (regOne!6379 (reg!3262 r!15766)))))))

(declare-fun bm!76685 () Bool)

(declare-fun call!76690 () Regex!2933)

(assert (=> bm!76685 (= call!76690 call!76689)))

(declare-fun b!1064074 () Bool)

(assert (=> b!1064074 (= e!674984 call!76688)))

(declare-fun b!1064075 () Bool)

(assert (=> b!1064075 (= e!674979 (= (nullable!1019 lt!360228) (nullable!1019 (reg!3262 r!15766))))))

(declare-fun bm!76686 () Bool)

(assert (=> bm!76686 (= call!76691 call!76688)))

(declare-fun b!1064076 () Bool)

(assert (=> b!1064076 (= e!674981 (Star!2933 call!76690))))

(declare-fun b!1064077 () Bool)

(assert (=> b!1064077 (= e!674982 (Union!2933 call!76687 call!76690))))

(declare-fun b!1064078 () Bool)

(assert (=> b!1064078 (= e!674980 call!76691)))

(assert (= (and d!300924 c!178410) b!1064074))

(assert (= (and d!300924 (not c!178410)) b!1064071))

(assert (= (and b!1064071 c!178412) b!1064078))

(assert (= (and b!1064071 (not c!178412)) b!1064068))

(assert (= (and b!1064068 c!178411) b!1064073))

(assert (= (and b!1064068 (not c!178411)) b!1064070))

(assert (= (and b!1064070 c!178413) b!1064077))

(assert (= (and b!1064070 (not c!178413)) b!1064072))

(assert (= (and b!1064072 c!178414) b!1064076))

(assert (= (and b!1064072 (not c!178414)) b!1064069))

(assert (= (or b!1064077 b!1064076) bm!76685))

(assert (= (or b!1064073 b!1064077) bm!76684))

(assert (= (or b!1064073 bm!76685) bm!76682))

(assert (= (or b!1064078 bm!76682) bm!76686))

(assert (= (or b!1064074 bm!76686) bm!76683))

(assert (= (and d!300924 res!475407) b!1064075))

(declare-fun m!1222233 () Bool)

(assert (=> d!300924 m!1222233))

(assert (=> d!300924 m!1222171))

(declare-fun m!1222235 () Bool)

(assert (=> bm!76683 m!1222235))

(declare-fun m!1222237 () Bool)

(assert (=> bm!76684 m!1222237))

(declare-fun m!1222239 () Bool)

(assert (=> b!1064075 m!1222239))

(assert (=> b!1064075 m!1222093))

(assert (=> b!1063687 d!300924))

(declare-fun e!674987 () Bool)

(assert (=> b!1063689 (= tp!319416 e!674987)))

(declare-fun b!1064090 () Bool)

(declare-fun tp!319432 () Bool)

(declare-fun tp!319435 () Bool)

(assert (=> b!1064090 (= e!674987 (and tp!319432 tp!319435))))

(declare-fun b!1064091 () Bool)

(declare-fun tp!319433 () Bool)

(assert (=> b!1064091 (= e!674987 tp!319433)))

(declare-fun b!1064089 () Bool)

(assert (=> b!1064089 (= e!674987 tp_is_empty!5509)))

(declare-fun b!1064092 () Bool)

(declare-fun tp!319431 () Bool)

(declare-fun tp!319434 () Bool)

(assert (=> b!1064092 (= e!674987 (and tp!319431 tp!319434))))

(assert (= (and b!1063689 ((_ is ElementMatch!2933) (regOne!6378 r!15766))) b!1064089))

(assert (= (and b!1063689 ((_ is Concat!4766) (regOne!6378 r!15766))) b!1064090))

(assert (= (and b!1063689 ((_ is Star!2933) (regOne!6378 r!15766))) b!1064091))

(assert (= (and b!1063689 ((_ is Union!2933) (regOne!6378 r!15766))) b!1064092))

(declare-fun e!674988 () Bool)

(assert (=> b!1063689 (= tp!319417 e!674988)))

(declare-fun b!1064094 () Bool)

(declare-fun tp!319437 () Bool)

(declare-fun tp!319440 () Bool)

(assert (=> b!1064094 (= e!674988 (and tp!319437 tp!319440))))

(declare-fun b!1064095 () Bool)

(declare-fun tp!319438 () Bool)

(assert (=> b!1064095 (= e!674988 tp!319438)))

(declare-fun b!1064093 () Bool)

(assert (=> b!1064093 (= e!674988 tp_is_empty!5509)))

(declare-fun b!1064096 () Bool)

(declare-fun tp!319436 () Bool)

(declare-fun tp!319439 () Bool)

(assert (=> b!1064096 (= e!674988 (and tp!319436 tp!319439))))

(assert (= (and b!1063689 ((_ is ElementMatch!2933) (regTwo!6378 r!15766))) b!1064093))

(assert (= (and b!1063689 ((_ is Concat!4766) (regTwo!6378 r!15766))) b!1064094))

(assert (= (and b!1063689 ((_ is Star!2933) (regTwo!6378 r!15766))) b!1064095))

(assert (= (and b!1063689 ((_ is Union!2933) (regTwo!6378 r!15766))) b!1064096))

(declare-fun e!674989 () Bool)

(assert (=> b!1063690 (= tp!319418 e!674989)))

(declare-fun b!1064098 () Bool)

(declare-fun tp!319442 () Bool)

(declare-fun tp!319445 () Bool)

(assert (=> b!1064098 (= e!674989 (and tp!319442 tp!319445))))

(declare-fun b!1064099 () Bool)

(declare-fun tp!319443 () Bool)

(assert (=> b!1064099 (= e!674989 tp!319443)))

(declare-fun b!1064097 () Bool)

(assert (=> b!1064097 (= e!674989 tp_is_empty!5509)))

(declare-fun b!1064100 () Bool)

(declare-fun tp!319441 () Bool)

(declare-fun tp!319444 () Bool)

(assert (=> b!1064100 (= e!674989 (and tp!319441 tp!319444))))

(assert (= (and b!1063690 ((_ is ElementMatch!2933) (reg!3262 r!15766))) b!1064097))

(assert (= (and b!1063690 ((_ is Concat!4766) (reg!3262 r!15766))) b!1064098))

(assert (= (and b!1063690 ((_ is Star!2933) (reg!3262 r!15766))) b!1064099))

(assert (= (and b!1063690 ((_ is Union!2933) (reg!3262 r!15766))) b!1064100))

(declare-fun e!674990 () Bool)

(assert (=> b!1063685 (= tp!319415 e!674990)))

(declare-fun b!1064102 () Bool)

(declare-fun tp!319447 () Bool)

(declare-fun tp!319450 () Bool)

(assert (=> b!1064102 (= e!674990 (and tp!319447 tp!319450))))

(declare-fun b!1064103 () Bool)

(declare-fun tp!319448 () Bool)

(assert (=> b!1064103 (= e!674990 tp!319448)))

(declare-fun b!1064101 () Bool)

(assert (=> b!1064101 (= e!674990 tp_is_empty!5509)))

(declare-fun b!1064104 () Bool)

(declare-fun tp!319446 () Bool)

(declare-fun tp!319449 () Bool)

(assert (=> b!1064104 (= e!674990 (and tp!319446 tp!319449))))

(assert (= (and b!1063685 ((_ is ElementMatch!2933) (regOne!6379 r!15766))) b!1064101))

(assert (= (and b!1063685 ((_ is Concat!4766) (regOne!6379 r!15766))) b!1064102))

(assert (= (and b!1063685 ((_ is Star!2933) (regOne!6379 r!15766))) b!1064103))

(assert (= (and b!1063685 ((_ is Union!2933) (regOne!6379 r!15766))) b!1064104))

(declare-fun e!674991 () Bool)

(assert (=> b!1063685 (= tp!319419 e!674991)))

(declare-fun b!1064106 () Bool)

(declare-fun tp!319452 () Bool)

(declare-fun tp!319455 () Bool)

(assert (=> b!1064106 (= e!674991 (and tp!319452 tp!319455))))

(declare-fun b!1064107 () Bool)

(declare-fun tp!319453 () Bool)

(assert (=> b!1064107 (= e!674991 tp!319453)))

(declare-fun b!1064105 () Bool)

(assert (=> b!1064105 (= e!674991 tp_is_empty!5509)))

(declare-fun b!1064108 () Bool)

(declare-fun tp!319451 () Bool)

(declare-fun tp!319454 () Bool)

(assert (=> b!1064108 (= e!674991 (and tp!319451 tp!319454))))

(assert (= (and b!1063685 ((_ is ElementMatch!2933) (regTwo!6379 r!15766))) b!1064105))

(assert (= (and b!1063685 ((_ is Concat!4766) (regTwo!6379 r!15766))) b!1064106))

(assert (= (and b!1063685 ((_ is Star!2933) (regTwo!6379 r!15766))) b!1064107))

(assert (= (and b!1063685 ((_ is Union!2933) (regTwo!6379 r!15766))) b!1064108))

(declare-fun b!1064113 () Bool)

(declare-fun e!674994 () Bool)

(declare-fun tp!319458 () Bool)

(assert (=> b!1064113 (= e!674994 (and tp_is_empty!5509 tp!319458))))

(assert (=> b!1063691 (= tp!319420 e!674994)))

(assert (= (and b!1063691 ((_ is Cons!10147) (t!101209 s!10566))) b!1064113))

(check-sat (not b!1063973) (not d!300914) (not b!1064027) (not b!1064098) (not b!1064107) (not d!300896) (not b!1064025) (not bm!76623) (not b!1064094) (not bm!76644) (not d!300924) (not b!1063870) (not b!1063876) (not bm!76641) (not bm!76631) (not b!1063867) (not bm!76683) (not bm!76645) (not b!1064030) (not d!300918) (not bm!76624) (not b!1064108) (not bm!76656) (not b!1064028) (not b!1064031) (not b!1063879) (not b!1064103) (not bm!76632) (not b!1063798) (not b!1063719) (not b!1063975) (not d!300912) (not d!300908) (not b!1064102) (not b!1063963) (not d!300890) (not d!300898) (not b!1064099) (not d!300916) (not b!1064092) (not b!1063898) (not b!1063966) (not b!1064096) (not b!1064106) (not b!1063970) (not bm!76684) (not b!1063972) tp_is_empty!5509 (not b!1064090) (not b!1064104) (not b!1063796) (not b!1064075) (not b!1064113) (not b!1064100) (not b!1064091) (not b!1064095) (not b!1063877) (not b!1064029) (not b!1063874) (not d!300886))
(check-sat)
