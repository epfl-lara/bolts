; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85938 () Bool)

(assert start!85938)

(declare-fun b!965521 () Bool)

(assert (=> b!965521 true))

(assert (=> b!965521 true))

(assert (=> b!965521 true))

(declare-fun lambda!33956 () Int)

(declare-fun lambda!33955 () Int)

(assert (=> b!965521 (not (= lambda!33956 lambda!33955))))

(assert (=> b!965521 true))

(assert (=> b!965521 true))

(assert (=> b!965521 true))

(declare-fun bs!241509 () Bool)

(declare-fun b!965526 () Bool)

(assert (= bs!241509 (and b!965526 b!965521)))

(declare-fun lambda!33957 () Int)

(declare-datatypes ((C!5940 0))(
  ( (C!5941 (val!3218 Int)) )
))
(declare-datatypes ((Regex!2685 0))(
  ( (ElementMatch!2685 (c!157308 C!5940)) (Concat!4518 (regOne!5882 Regex!2685) (regTwo!5882 Regex!2685)) (EmptyExpr!2685) (Star!2685 (reg!3014 Regex!2685)) (EmptyLang!2685) (Union!2685 (regOne!5883 Regex!2685) (regTwo!5883 Regex!2685)) )
))
(declare-fun lt!347831 () Regex!2685)

(declare-fun r!15766 () Regex!2685)

(declare-fun lt!347825 () Regex!2685)

(declare-fun lt!347823 () Regex!2685)

(assert (=> bs!241509 (= (and (= lt!347831 (reg!3014 r!15766)) (= lt!347823 lt!347825)) (= lambda!33957 lambda!33955))))

(assert (=> bs!241509 (not (= lambda!33957 lambda!33956))))

(assert (=> b!965526 true))

(assert (=> b!965526 true))

(assert (=> b!965526 true))

(declare-fun lambda!33958 () Int)

(assert (=> bs!241509 (not (= lambda!33958 lambda!33955))))

(assert (=> bs!241509 (= (and (= lt!347831 (reg!3014 r!15766)) (= lt!347823 lt!347825)) (= lambda!33958 lambda!33956))))

(assert (=> b!965526 (not (= lambda!33958 lambda!33957))))

(assert (=> b!965526 true))

(assert (=> b!965526 true))

(assert (=> b!965526 true))

(declare-fun b!965518 () Bool)

(declare-fun res!438968 () Bool)

(declare-fun e!623104 () Bool)

(assert (=> b!965518 (=> res!438968 e!623104)))

(declare-fun lt!347826 () Bool)

(assert (=> b!965518 (= res!438968 (not lt!347826))))

(declare-fun res!438969 () Bool)

(declare-fun e!623106 () Bool)

(assert (=> start!85938 (=> (not res!438969) (not e!623106))))

(declare-fun validRegex!1154 (Regex!2685) Bool)

(assert (=> start!85938 (= res!438969 (validRegex!1154 r!15766))))

(assert (=> start!85938 e!623106))

(declare-fun e!623102 () Bool)

(assert (=> start!85938 e!623102))

(declare-fun e!623100 () Bool)

(assert (=> start!85938 e!623100))

(declare-fun lt!347829 () Int)

(declare-fun e!623101 () Bool)

(declare-fun lt!347824 () Int)

(declare-fun lt!347837 () Int)

(declare-fun b!965519 () Bool)

(assert (=> b!965519 (= e!623101 (or (not (= (+ lt!347829 lt!347837) lt!347824)) (= lt!347829 0)))))

(declare-datatypes ((List!9915 0))(
  ( (Nil!9899) (Cons!9899 (h!15300 C!5940) (t!100961 List!9915)) )
))
(declare-datatypes ((tuple2!11248 0))(
  ( (tuple2!11249 (_1!6450 List!9915) (_2!6450 List!9915)) )
))
(declare-fun lt!347821 () tuple2!11248)

(declare-fun size!7935 (List!9915) Int)

(assert (=> b!965519 (= lt!347829 (size!7935 (_1!6450 lt!347821)))))

(declare-fun b!965520 () Bool)

(declare-fun tp_is_empty!5013 () Bool)

(assert (=> b!965520 (= e!623102 tp_is_empty!5013)))

(declare-fun e!623105 () Bool)

(declare-fun e!623107 () Bool)

(assert (=> b!965521 (= e!623105 e!623107)))

(declare-fun res!438972 () Bool)

(assert (=> b!965521 (=> res!438972 e!623107)))

(declare-fun s!10566 () List!9915)

(declare-fun matchR!1223 (Regex!2685 List!9915) Bool)

(assert (=> b!965521 (= res!438972 (not (matchR!1223 lt!347823 s!10566)))))

(assert (=> b!965521 (= lt!347823 (Star!2685 lt!347831))))

(declare-fun removeUselessConcat!332 (Regex!2685) Regex!2685)

(assert (=> b!965521 (= lt!347831 (removeUselessConcat!332 (reg!3014 r!15766)))))

(declare-fun Exists!428 (Int) Bool)

(assert (=> b!965521 (= (Exists!428 lambda!33955) (Exists!428 lambda!33956))))

(declare-datatypes ((Unit!15025 0))(
  ( (Unit!15026) )
))
(declare-fun lt!347836 () Unit!15025)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!146 (Regex!2685 List!9915) Unit!15025)

(assert (=> b!965521 (= lt!347836 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!146 (reg!3014 r!15766) s!10566))))

(declare-datatypes ((Option!2266 0))(
  ( (None!2265) (Some!2265 (v!19682 tuple2!11248)) )
))
(declare-fun isDefined!1908 (Option!2266) Bool)

(declare-fun findConcatSeparation!372 (Regex!2685 Regex!2685 List!9915 List!9915 List!9915) Option!2266)

(assert (=> b!965521 (= (isDefined!1908 (findConcatSeparation!372 (reg!3014 r!15766) lt!347825 Nil!9899 s!10566 s!10566)) (Exists!428 lambda!33955))))

(declare-fun lt!347827 () Unit!15025)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!372 (Regex!2685 Regex!2685 List!9915) Unit!15025)

(assert (=> b!965521 (= lt!347827 (lemmaFindConcatSeparationEquivalentToExists!372 (reg!3014 r!15766) lt!347825 s!10566))))

(assert (=> b!965521 (= lt!347825 (Star!2685 (reg!3014 r!15766)))))

(declare-fun b!965522 () Bool)

(declare-fun tp!296262 () Bool)

(declare-fun tp!296263 () Bool)

(assert (=> b!965522 (= e!623102 (and tp!296262 tp!296263))))

(declare-fun b!965523 () Bool)

(declare-fun tp!296264 () Bool)

(declare-fun tp!296261 () Bool)

(assert (=> b!965523 (= e!623102 (and tp!296264 tp!296261))))

(declare-fun b!965524 () Bool)

(declare-fun res!438970 () Bool)

(assert (=> b!965524 (=> res!438970 e!623101)))

(declare-fun ++!2673 (List!9915 List!9915) List!9915)

(assert (=> b!965524 (= res!438970 (not (= (++!2673 (_1!6450 lt!347821) (_2!6450 lt!347821)) s!10566)))))

(declare-fun b!965525 () Bool)

(declare-fun tp!296260 () Bool)

(assert (=> b!965525 (= e!623100 (and tp_is_empty!5013 tp!296260))))

(assert (=> b!965526 (= e!623107 e!623104)))

(declare-fun res!438973 () Bool)

(assert (=> b!965526 (=> res!438973 e!623104)))

(declare-fun isEmpty!6203 (List!9915) Bool)

(assert (=> b!965526 (= res!438973 (isEmpty!6203 s!10566))))

(assert (=> b!965526 (= (Exists!428 lambda!33957) (Exists!428 lambda!33958))))

(declare-fun lt!347832 () Unit!15025)

(assert (=> b!965526 (= lt!347832 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!146 lt!347831 s!10566))))

(assert (=> b!965526 (= lt!347826 (Exists!428 lambda!33957))))

(declare-fun lt!347828 () Option!2266)

(assert (=> b!965526 (= lt!347826 (isDefined!1908 lt!347828))))

(assert (=> b!965526 (= lt!347828 (findConcatSeparation!372 lt!347831 lt!347823 Nil!9899 s!10566 s!10566))))

(declare-fun lt!347830 () Unit!15025)

(assert (=> b!965526 (= lt!347830 (lemmaFindConcatSeparationEquivalentToExists!372 lt!347831 lt!347823 s!10566))))

(declare-fun matchRSpec!486 (Regex!2685 List!9915) Bool)

(assert (=> b!965526 (matchRSpec!486 lt!347823 s!10566)))

(declare-fun lt!347835 () Unit!15025)

(declare-fun mainMatchTheorem!486 (Regex!2685 List!9915) Unit!15025)

(assert (=> b!965526 (= lt!347835 (mainMatchTheorem!486 lt!347823 s!10566))))

(declare-fun b!965527 () Bool)

(assert (=> b!965527 (= e!623106 (not e!623105))))

(declare-fun res!438967 () Bool)

(assert (=> b!965527 (=> res!438967 e!623105)))

(declare-fun lt!347833 () Bool)

(get-info :version)

(assert (=> b!965527 (= res!438967 (or lt!347833 (and ((_ is Concat!4518) r!15766) ((_ is EmptyExpr!2685) (regOne!5882 r!15766))) (and ((_ is Concat!4518) r!15766) ((_ is EmptyExpr!2685) (regTwo!5882 r!15766))) ((_ is Concat!4518) r!15766) ((_ is Union!2685) r!15766) (not ((_ is Star!2685) r!15766))))))

(assert (=> b!965527 (= lt!347833 (matchRSpec!486 r!15766 s!10566))))

(assert (=> b!965527 (= lt!347833 (matchR!1223 r!15766 s!10566))))

(declare-fun lt!347834 () Unit!15025)

(assert (=> b!965527 (= lt!347834 (mainMatchTheorem!486 r!15766 s!10566))))

(declare-fun b!965528 () Bool)

(declare-fun tp!296259 () Bool)

(assert (=> b!965528 (= e!623102 tp!296259)))

(declare-fun b!965529 () Bool)

(declare-fun res!438974 () Bool)

(declare-fun e!623103 () Bool)

(assert (=> b!965529 (=> res!438974 e!623103)))

(assert (=> b!965529 (= res!438974 (not (matchR!1223 lt!347823 (_2!6450 lt!347821))))))

(declare-fun b!965530 () Bool)

(assert (=> b!965530 (= e!623103 e!623101)))

(declare-fun res!438966 () Bool)

(assert (=> b!965530 (=> res!438966 e!623101)))

(assert (=> b!965530 (= res!438966 (not (= lt!347837 lt!347824)))))

(assert (=> b!965530 (= lt!347824 (size!7935 s!10566))))

(assert (=> b!965530 (= lt!347837 (size!7935 (_2!6450 lt!347821)))))

(assert (=> b!965530 (matchR!1223 (reg!3014 r!15766) (_1!6450 lt!347821))))

(declare-fun lt!347822 () Unit!15025)

(declare-fun lemmaRemoveUselessConcatSound!184 (Regex!2685 List!9915) Unit!15025)

(assert (=> b!965530 (= lt!347822 (lemmaRemoveUselessConcatSound!184 (reg!3014 r!15766) (_1!6450 lt!347821)))))

(declare-fun b!965531 () Bool)

(assert (=> b!965531 (= e!623104 e!623103)))

(declare-fun res!438971 () Bool)

(assert (=> b!965531 (=> res!438971 e!623103)))

(assert (=> b!965531 (= res!438971 (not (matchR!1223 lt!347831 (_1!6450 lt!347821))))))

(declare-fun get!3392 (Option!2266) tuple2!11248)

(assert (=> b!965531 (= lt!347821 (get!3392 lt!347828))))

(assert (= (and start!85938 res!438969) b!965527))

(assert (= (and b!965527 (not res!438967)) b!965521))

(assert (= (and b!965521 (not res!438972)) b!965526))

(assert (= (and b!965526 (not res!438973)) b!965518))

(assert (= (and b!965518 (not res!438968)) b!965531))

(assert (= (and b!965531 (not res!438971)) b!965529))

(assert (= (and b!965529 (not res!438974)) b!965530))

(assert (= (and b!965530 (not res!438966)) b!965524))

(assert (= (and b!965524 (not res!438970)) b!965519))

(assert (= (and start!85938 ((_ is ElementMatch!2685) r!15766)) b!965520))

(assert (= (and start!85938 ((_ is Concat!4518) r!15766)) b!965523))

(assert (= (and start!85938 ((_ is Star!2685) r!15766)) b!965528))

(assert (= (and start!85938 ((_ is Union!2685) r!15766)) b!965522))

(assert (= (and start!85938 ((_ is Cons!9899) s!10566)) b!965525))

(declare-fun m!1171769 () Bool)

(assert (=> b!965527 m!1171769))

(declare-fun m!1171771 () Bool)

(assert (=> b!965527 m!1171771))

(declare-fun m!1171773 () Bool)

(assert (=> b!965527 m!1171773))

(declare-fun m!1171775 () Bool)

(assert (=> b!965521 m!1171775))

(declare-fun m!1171777 () Bool)

(assert (=> b!965521 m!1171777))

(declare-fun m!1171779 () Bool)

(assert (=> b!965521 m!1171779))

(declare-fun m!1171781 () Bool)

(assert (=> b!965521 m!1171781))

(declare-fun m!1171783 () Bool)

(assert (=> b!965521 m!1171783))

(declare-fun m!1171785 () Bool)

(assert (=> b!965521 m!1171785))

(assert (=> b!965521 m!1171777))

(declare-fun m!1171787 () Bool)

(assert (=> b!965521 m!1171787))

(assert (=> b!965521 m!1171781))

(declare-fun m!1171789 () Bool)

(assert (=> b!965521 m!1171789))

(declare-fun m!1171791 () Bool)

(assert (=> start!85938 m!1171791))

(declare-fun m!1171793 () Bool)

(assert (=> b!965531 m!1171793))

(declare-fun m!1171795 () Bool)

(assert (=> b!965531 m!1171795))

(declare-fun m!1171797 () Bool)

(assert (=> b!965519 m!1171797))

(declare-fun m!1171799 () Bool)

(assert (=> b!965524 m!1171799))

(declare-fun m!1171801 () Bool)

(assert (=> b!965529 m!1171801))

(declare-fun m!1171803 () Bool)

(assert (=> b!965530 m!1171803))

(declare-fun m!1171805 () Bool)

(assert (=> b!965530 m!1171805))

(declare-fun m!1171807 () Bool)

(assert (=> b!965530 m!1171807))

(declare-fun m!1171809 () Bool)

(assert (=> b!965530 m!1171809))

(declare-fun m!1171811 () Bool)

(assert (=> b!965526 m!1171811))

(declare-fun m!1171813 () Bool)

(assert (=> b!965526 m!1171813))

(declare-fun m!1171815 () Bool)

(assert (=> b!965526 m!1171815))

(declare-fun m!1171817 () Bool)

(assert (=> b!965526 m!1171817))

(declare-fun m!1171819 () Bool)

(assert (=> b!965526 m!1171819))

(declare-fun m!1171821 () Bool)

(assert (=> b!965526 m!1171821))

(declare-fun m!1171823 () Bool)

(assert (=> b!965526 m!1171823))

(assert (=> b!965526 m!1171821))

(declare-fun m!1171825 () Bool)

(assert (=> b!965526 m!1171825))

(declare-fun m!1171827 () Bool)

(assert (=> b!965526 m!1171827))

(check-sat (not start!85938) tp_is_empty!5013 (not b!965526) (not b!965530) (not b!965521) (not b!965531) (not b!965519) (not b!965529) (not b!965522) (not b!965525) (not b!965523) (not b!965527) (not b!965528) (not b!965524))
(check-sat)
