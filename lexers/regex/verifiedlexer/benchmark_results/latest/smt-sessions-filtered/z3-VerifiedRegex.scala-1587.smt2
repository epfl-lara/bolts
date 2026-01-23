; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81986 () Bool)

(assert start!81986)

(declare-fun b!911796 () Bool)

(assert (=> b!911796 true))

(assert (=> b!911796 true))

(declare-fun lambda!29108 () Int)

(declare-fun lambda!29107 () Int)

(assert (=> b!911796 (not (= lambda!29108 lambda!29107))))

(assert (=> b!911796 true))

(assert (=> b!911796 true))

(declare-fun e!594707 () Bool)

(declare-fun e!594704 () Bool)

(assert (=> b!911796 (= e!594707 e!594704)))

(declare-fun res!414654 () Bool)

(assert (=> b!911796 (=> res!414654 e!594704)))

(declare-datatypes ((C!5436 0))(
  ( (C!5437 (val!2966 Int)) )
))
(declare-datatypes ((List!9663 0))(
  ( (Nil!9647) (Cons!9647 (h!15048 C!5436) (t!100709 List!9663)) )
))
(declare-fun s!10566 () List!9663)

(declare-fun isEmpty!5869 (List!9663) Bool)

(assert (=> b!911796 (= res!414654 (isEmpty!5869 s!10566))))

(declare-fun Exists!206 (Int) Bool)

(assert (=> b!911796 (= (Exists!206 lambda!29107) (Exists!206 lambda!29108))))

(declare-datatypes ((Unit!14485 0))(
  ( (Unit!14486) )
))
(declare-fun lt!336827 () Unit!14485)

(declare-datatypes ((Regex!2433 0))(
  ( (ElementMatch!2433 (c!147706 C!5436)) (Concat!4266 (regOne!5378 Regex!2433) (regTwo!5378 Regex!2433)) (EmptyExpr!2433) (Star!2433 (reg!2762 Regex!2433)) (EmptyLang!2433) (Union!2433 (regOne!5379 Regex!2433) (regTwo!5379 Regex!2433)) )
))
(declare-fun r!15766 () Regex!2433)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!120 (Regex!2433 Regex!2433 List!9663) Unit!14485)

(assert (=> b!911796 (= lt!336827 (lemmaExistCutMatchRandMatchRSpecEquivalent!120 (regOne!5378 r!15766) EmptyExpr!2433 s!10566))))

(declare-fun lt!336833 () Bool)

(assert (=> b!911796 (= lt!336833 (Exists!206 lambda!29107))))

(declare-datatypes ((tuple2!10856 0))(
  ( (tuple2!10857 (_1!6254 List!9663) (_2!6254 List!9663)) )
))
(declare-datatypes ((Option!2070 0))(
  ( (None!2069) (Some!2069 (v!19486 tuple2!10856)) )
))
(declare-fun lt!336826 () Option!2070)

(declare-fun isDefined!1712 (Option!2070) Bool)

(assert (=> b!911796 (= lt!336833 (isDefined!1712 lt!336826))))

(declare-fun findConcatSeparation!176 (Regex!2433 Regex!2433 List!9663 List!9663 List!9663) Option!2070)

(assert (=> b!911796 (= lt!336826 (findConcatSeparation!176 (regOne!5378 r!15766) EmptyExpr!2433 Nil!9647 s!10566 s!10566))))

(declare-fun lt!336829 () Unit!14485)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!176 (Regex!2433 Regex!2433 List!9663) Unit!14485)

(assert (=> b!911796 (= lt!336829 (lemmaFindConcatSeparationEquivalentToExists!176 (regOne!5378 r!15766) EmptyExpr!2433 s!10566))))

(declare-fun b!911797 () Bool)

(declare-fun e!594706 () Bool)

(declare-fun tp!285040 () Bool)

(assert (=> b!911797 (= e!594706 tp!285040)))

(declare-fun res!414655 () Bool)

(declare-fun e!594709 () Bool)

(assert (=> start!81986 (=> (not res!414655) (not e!594709))))

(declare-fun validRegex!902 (Regex!2433) Bool)

(assert (=> start!81986 (= res!414655 (validRegex!902 r!15766))))

(assert (=> start!81986 e!594709))

(assert (=> start!81986 e!594706))

(declare-fun e!594705 () Bool)

(assert (=> start!81986 e!594705))

(declare-fun b!911798 () Bool)

(declare-fun res!414658 () Bool)

(assert (=> b!911798 (=> res!414658 e!594704)))

(declare-fun isEmpty!5870 (Option!2070) Bool)

(assert (=> b!911798 (= res!414658 (not (isEmpty!5870 lt!336826)))))

(declare-fun b!911799 () Bool)

(declare-fun tp!285041 () Bool)

(declare-fun tp!285042 () Bool)

(assert (=> b!911799 (= e!594706 (and tp!285041 tp!285042))))

(declare-fun b!911800 () Bool)

(assert (=> b!911800 (= e!594709 (not e!594707))))

(declare-fun res!414656 () Bool)

(assert (=> b!911800 (=> res!414656 e!594707)))

(declare-fun lt!336828 () Bool)

(get-info :version)

(assert (=> b!911800 (= res!414656 (or lt!336828 (and ((_ is Concat!4266) r!15766) ((_ is EmptyExpr!2433) (regOne!5378 r!15766))) (not ((_ is Concat!4266) r!15766)) (not ((_ is EmptyExpr!2433) (regTwo!5378 r!15766)))))))

(declare-fun matchRSpec!234 (Regex!2433 List!9663) Bool)

(assert (=> b!911800 (= lt!336828 (matchRSpec!234 r!15766 s!10566))))

(declare-fun matchR!971 (Regex!2433 List!9663) Bool)

(assert (=> b!911800 (= lt!336828 (matchR!971 r!15766 s!10566))))

(declare-fun lt!336831 () Unit!14485)

(declare-fun mainMatchTheorem!234 (Regex!2433 List!9663) Unit!14485)

(assert (=> b!911800 (= lt!336831 (mainMatchTheorem!234 r!15766 s!10566))))

(declare-fun b!911801 () Bool)

(declare-fun e!594708 () Bool)

(assert (=> b!911801 (= e!594704 e!594708)))

(declare-fun res!414657 () Bool)

(assert (=> b!911801 (=> res!414657 e!594708)))

(declare-fun lt!336830 () Bool)

(declare-fun lt!336832 () Bool)

(assert (=> b!911801 (= res!414657 (or (not lt!336830) (not lt!336832)))))

(assert (=> b!911801 (= lt!336832 lt!336830)))

(declare-fun lt!336823 () Regex!2433)

(assert (=> b!911801 (= lt!336830 (matchR!971 lt!336823 s!10566))))

(assert (=> b!911801 (= lt!336832 (matchR!971 (regOne!5378 r!15766) s!10566))))

(declare-fun removeUselessConcat!118 (Regex!2433) Regex!2433)

(assert (=> b!911801 (= lt!336823 (removeUselessConcat!118 (regOne!5378 r!15766)))))

(declare-fun lt!336825 () Unit!14485)

(declare-fun lemmaRemoveUselessConcatSound!104 (Regex!2433 List!9663) Unit!14485)

(assert (=> b!911801 (= lt!336825 (lemmaRemoveUselessConcatSound!104 (regOne!5378 r!15766) s!10566))))

(declare-fun b!911802 () Bool)

(declare-fun tp!285039 () Bool)

(declare-fun tp!285043 () Bool)

(assert (=> b!911802 (= e!594706 (and tp!285039 tp!285043))))

(declare-fun b!911803 () Bool)

(assert (=> b!911803 (= e!594708 true)))

(assert (=> b!911803 lt!336833))

(declare-fun lt!336824 () Unit!14485)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!4 (Regex!2433 Regex!2433 List!9663 List!9663 List!9663 List!9663 List!9663) Unit!14485)

(assert (=> b!911803 (= lt!336824 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!4 (regOne!5378 r!15766) EmptyExpr!2433 s!10566 Nil!9647 s!10566 Nil!9647 s!10566))))

(declare-fun b!911804 () Bool)

(declare-fun tp_is_empty!4509 () Bool)

(assert (=> b!911804 (= e!594706 tp_is_empty!4509)))

(declare-fun b!911805 () Bool)

(declare-fun tp!285044 () Bool)

(assert (=> b!911805 (= e!594705 (and tp_is_empty!4509 tp!285044))))

(assert (= (and start!81986 res!414655) b!911800))

(assert (= (and b!911800 (not res!414656)) b!911796))

(assert (= (and b!911796 (not res!414654)) b!911798))

(assert (= (and b!911798 (not res!414658)) b!911801))

(assert (= (and b!911801 (not res!414657)) b!911803))

(assert (= (and start!81986 ((_ is ElementMatch!2433) r!15766)) b!911804))

(assert (= (and start!81986 ((_ is Concat!4266) r!15766)) b!911802))

(assert (= (and start!81986 ((_ is Star!2433) r!15766)) b!911797))

(assert (= (and start!81986 ((_ is Union!2433) r!15766)) b!911799))

(assert (= (and start!81986 ((_ is Cons!9647) s!10566)) b!911805))

(declare-fun m!1143631 () Bool)

(assert (=> b!911800 m!1143631))

(declare-fun m!1143633 () Bool)

(assert (=> b!911800 m!1143633))

(declare-fun m!1143635 () Bool)

(assert (=> b!911800 m!1143635))

(declare-fun m!1143637 () Bool)

(assert (=> b!911801 m!1143637))

(declare-fun m!1143639 () Bool)

(assert (=> b!911801 m!1143639))

(declare-fun m!1143641 () Bool)

(assert (=> b!911801 m!1143641))

(declare-fun m!1143643 () Bool)

(assert (=> b!911801 m!1143643))

(declare-fun m!1143645 () Bool)

(assert (=> b!911796 m!1143645))

(declare-fun m!1143647 () Bool)

(assert (=> b!911796 m!1143647))

(declare-fun m!1143649 () Bool)

(assert (=> b!911796 m!1143649))

(declare-fun m!1143651 () Bool)

(assert (=> b!911796 m!1143651))

(assert (=> b!911796 m!1143651))

(declare-fun m!1143653 () Bool)

(assert (=> b!911796 m!1143653))

(declare-fun m!1143655 () Bool)

(assert (=> b!911796 m!1143655))

(declare-fun m!1143657 () Bool)

(assert (=> b!911796 m!1143657))

(declare-fun m!1143659 () Bool)

(assert (=> b!911798 m!1143659))

(declare-fun m!1143661 () Bool)

(assert (=> start!81986 m!1143661))

(declare-fun m!1143663 () Bool)

(assert (=> b!911803 m!1143663))

(check-sat (not b!911798) (not start!81986) tp_is_empty!4509 (not b!911800) (not b!911802) (not b!911803) (not b!911797) (not b!911805) (not b!911799) (not b!911796) (not b!911801))
(check-sat)
