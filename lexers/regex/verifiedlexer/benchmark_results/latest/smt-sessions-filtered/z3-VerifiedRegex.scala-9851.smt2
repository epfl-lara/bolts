; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!515740 () Bool)

(assert start!515740)

(declare-fun b!4912864 () Bool)

(declare-fun e!3070740 () Bool)

(declare-fun tp!1381436 () Bool)

(assert (=> b!4912864 (= e!3070740 tp!1381436)))

(declare-fun b!4912865 () Bool)

(declare-fun tp!1381437 () Bool)

(declare-fun tp!1381434 () Bool)

(assert (=> b!4912865 (= e!3070740 (and tp!1381437 tp!1381434))))

(declare-fun res!2098624 () Bool)

(declare-fun e!3070742 () Bool)

(assert (=> start!515740 (=> (not res!2098624) (not e!3070742))))

(declare-datatypes ((C!26888 0))(
  ( (C!26889 (val!22778 Int)) )
))
(declare-datatypes ((Regex!13345 0))(
  ( (ElementMatch!13345 (c!835065 C!26888)) (Concat!21918 (regOne!27202 Regex!13345) (regTwo!27202 Regex!13345)) (EmptyExpr!13345) (Star!13345 (reg!13674 Regex!13345)) (EmptyLang!13345) (Union!13345 (regOne!27203 Regex!13345) (regTwo!27203 Regex!13345)) )
))
(declare-fun r!15208 () Regex!13345)

(declare-fun validRegex!5934 (Regex!13345) Bool)

(assert (=> start!515740 (= res!2098624 (validRegex!5934 r!15208))))

(assert (=> start!515740 e!3070742))

(assert (=> start!515740 e!3070740))

(declare-datatypes ((List!56741 0))(
  ( (Nil!56617) (Cons!56617 (h!63065 C!26888) (t!367147 List!56741)) )
))
(declare-datatypes ((IArray!29737 0))(
  ( (IArray!29738 (innerList!14926 List!56741)) )
))
(declare-datatypes ((Conc!14838 0))(
  ( (Node!14838 (left!41271 Conc!14838) (right!41601 Conc!14838) (csize!29906 Int) (cheight!15049 Int)) (Leaf!24690 (xs!18154 IArray!29737) (csize!29907 Int)) (Empty!14838) )
))
(declare-datatypes ((BalanceConc!29106 0))(
  ( (BalanceConc!29107 (c!835066 Conc!14838)) )
))
(declare-fun input!6475 () BalanceConc!29106)

(declare-fun e!3070741 () Bool)

(declare-fun inv!73243 (BalanceConc!29106) Bool)

(assert (=> start!515740 (and (inv!73243 input!6475) e!3070741)))

(declare-fun b!4912866 () Bool)

(declare-fun tp!1381432 () Bool)

(declare-fun inv!73244 (Conc!14838) Bool)

(assert (=> b!4912866 (= e!3070741 (and (inv!73244 (c!835066 input!6475)) tp!1381432))))

(declare-fun b!4912867 () Bool)

(declare-fun tp_is_empty!35891 () Bool)

(assert (=> b!4912867 (= e!3070740 tp_is_empty!35891)))

(declare-fun b!4912868 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!56742 0))(
  ( (Nil!56618) (Cons!56618 (h!63066 Regex!13345) (t!367148 List!56742)) )
))
(declare-datatypes ((Context!5974 0))(
  ( (Context!5975 (exprs!3487 List!56742)) )
))
(declare-fun lt!2017125 () (InoxSet Context!5974))

(declare-datatypes ((List!56743 0))(
  ( (Nil!56619) (Cons!56619 (h!63067 Context!5974) (t!367149 List!56743)) )
))
(declare-fun unfocusZipper!249 (List!56743) Regex!13345)

(declare-fun toList!7935 ((InoxSet Context!5974)) List!56743)

(assert (=> b!4912868 (= e!3070742 (not (= (unfocusZipper!249 (toList!7935 lt!2017125)) r!15208)))))

(declare-fun lt!2017124 () List!56741)

(declare-fun list!17882 (BalanceConc!29106) List!56741)

(assert (=> b!4912868 (= lt!2017124 (list!17882 input!6475))))

(declare-fun focus!343 (Regex!13345) (InoxSet Context!5974))

(assert (=> b!4912868 (= lt!2017125 (focus!343 r!15208))))

(declare-fun b!4912869 () Bool)

(declare-fun tp!1381435 () Bool)

(declare-fun tp!1381433 () Bool)

(assert (=> b!4912869 (= e!3070740 (and tp!1381435 tp!1381433))))

(assert (= (and start!515740 res!2098624) b!4912868))

(get-info :version)

(assert (= (and start!515740 ((_ is ElementMatch!13345) r!15208)) b!4912867))

(assert (= (and start!515740 ((_ is Concat!21918) r!15208)) b!4912865))

(assert (= (and start!515740 ((_ is Star!13345) r!15208)) b!4912864))

(assert (= (and start!515740 ((_ is Union!13345) r!15208)) b!4912869))

(assert (= start!515740 b!4912866))

(declare-fun m!5922744 () Bool)

(assert (=> start!515740 m!5922744))

(declare-fun m!5922746 () Bool)

(assert (=> start!515740 m!5922746))

(declare-fun m!5922748 () Bool)

(assert (=> b!4912866 m!5922748))

(declare-fun m!5922750 () Bool)

(assert (=> b!4912868 m!5922750))

(assert (=> b!4912868 m!5922750))

(declare-fun m!5922752 () Bool)

(assert (=> b!4912868 m!5922752))

(declare-fun m!5922754 () Bool)

(assert (=> b!4912868 m!5922754))

(declare-fun m!5922756 () Bool)

(assert (=> b!4912868 m!5922756))

(check-sat (not b!4912866) (not b!4912864) tp_is_empty!35891 (not b!4912868) (not b!4912869) (not b!4912865) (not start!515740))
(check-sat)
(get-model)

(declare-fun d!1578656 () Bool)

(declare-fun c!835069 () Bool)

(assert (=> d!1578656 (= c!835069 ((_ is Node!14838) (c!835066 input!6475)))))

(declare-fun e!3070747 () Bool)

(assert (=> d!1578656 (= (inv!73244 (c!835066 input!6475)) e!3070747)))

(declare-fun b!4912876 () Bool)

(declare-fun inv!73245 (Conc!14838) Bool)

(assert (=> b!4912876 (= e!3070747 (inv!73245 (c!835066 input!6475)))))

(declare-fun b!4912877 () Bool)

(declare-fun e!3070748 () Bool)

(assert (=> b!4912877 (= e!3070747 e!3070748)))

(declare-fun res!2098627 () Bool)

(assert (=> b!4912877 (= res!2098627 (not ((_ is Leaf!24690) (c!835066 input!6475))))))

(assert (=> b!4912877 (=> res!2098627 e!3070748)))

(declare-fun b!4912878 () Bool)

(declare-fun inv!73246 (Conc!14838) Bool)

(assert (=> b!4912878 (= e!3070748 (inv!73246 (c!835066 input!6475)))))

(assert (= (and d!1578656 c!835069) b!4912876))

(assert (= (and d!1578656 (not c!835069)) b!4912877))

(assert (= (and b!4912877 (not res!2098627)) b!4912878))

(declare-fun m!5922758 () Bool)

(assert (=> b!4912876 m!5922758))

(declare-fun m!5922760 () Bool)

(assert (=> b!4912878 m!5922760))

(assert (=> b!4912866 d!1578656))

(declare-fun b!4912903 () Bool)

(declare-fun e!3070770 () Bool)

(declare-fun e!3070768 () Bool)

(assert (=> b!4912903 (= e!3070770 e!3070768)))

(declare-fun c!835077 () Bool)

(assert (=> b!4912903 (= c!835077 ((_ is Union!13345) r!15208))))

(declare-fun b!4912904 () Bool)

(declare-fun e!3070772 () Bool)

(declare-fun call!341201 () Bool)

(assert (=> b!4912904 (= e!3070772 call!341201)))

(declare-fun bm!341196 () Bool)

(assert (=> bm!341196 (= call!341201 (validRegex!5934 (ite c!835077 (regTwo!27203 r!15208) (regOne!27202 r!15208))))))

(declare-fun b!4912905 () Bool)

(declare-fun res!2098640 () Bool)

(assert (=> b!4912905 (=> (not res!2098640) (not e!3070772))))

(declare-fun call!341202 () Bool)

(assert (=> b!4912905 (= res!2098640 call!341202)))

(assert (=> b!4912905 (= e!3070768 e!3070772)))

(declare-fun b!4912906 () Bool)

(declare-fun e!3070769 () Bool)

(declare-fun call!341203 () Bool)

(assert (=> b!4912906 (= e!3070769 call!341203)))

(declare-fun b!4912908 () Bool)

(assert (=> b!4912908 (= e!3070770 e!3070769)))

(declare-fun res!2098642 () Bool)

(declare-fun nullable!4600 (Regex!13345) Bool)

(assert (=> b!4912908 (= res!2098642 (not (nullable!4600 (reg!13674 r!15208))))))

(assert (=> b!4912908 (=> (not res!2098642) (not e!3070769))))

(declare-fun bm!341197 () Bool)

(assert (=> bm!341197 (= call!341202 call!341203)))

(declare-fun b!4912909 () Bool)

(declare-fun e!3070771 () Bool)

(declare-fun e!3070773 () Bool)

(assert (=> b!4912909 (= e!3070771 e!3070773)))

(declare-fun res!2098643 () Bool)

(assert (=> b!4912909 (=> (not res!2098643) (not e!3070773))))

(assert (=> b!4912909 (= res!2098643 call!341201)))

(declare-fun b!4912910 () Bool)

(declare-fun res!2098644 () Bool)

(assert (=> b!4912910 (=> res!2098644 e!3070771)))

(assert (=> b!4912910 (= res!2098644 (not ((_ is Concat!21918) r!15208)))))

(assert (=> b!4912910 (= e!3070768 e!3070771)))

(declare-fun b!4912911 () Bool)

(assert (=> b!4912911 (= e!3070773 call!341202)))

(declare-fun bm!341198 () Bool)

(declare-fun c!835076 () Bool)

(assert (=> bm!341198 (= call!341203 (validRegex!5934 (ite c!835076 (reg!13674 r!15208) (ite c!835077 (regOne!27203 r!15208) (regTwo!27202 r!15208)))))))

(declare-fun d!1578660 () Bool)

(declare-fun res!2098641 () Bool)

(declare-fun e!3070767 () Bool)

(assert (=> d!1578660 (=> res!2098641 e!3070767)))

(assert (=> d!1578660 (= res!2098641 ((_ is ElementMatch!13345) r!15208))))

(assert (=> d!1578660 (= (validRegex!5934 r!15208) e!3070767)))

(declare-fun b!4912907 () Bool)

(assert (=> b!4912907 (= e!3070767 e!3070770)))

(assert (=> b!4912907 (= c!835076 ((_ is Star!13345) r!15208))))

(assert (= (and d!1578660 (not res!2098641)) b!4912907))

(assert (= (and b!4912907 c!835076) b!4912908))

(assert (= (and b!4912907 (not c!835076)) b!4912903))

(assert (= (and b!4912908 res!2098642) b!4912906))

(assert (= (and b!4912903 c!835077) b!4912905))

(assert (= (and b!4912903 (not c!835077)) b!4912910))

(assert (= (and b!4912905 res!2098640) b!4912904))

(assert (= (and b!4912910 (not res!2098644)) b!4912909))

(assert (= (and b!4912909 res!2098643) b!4912911))

(assert (= (or b!4912904 b!4912909) bm!341196))

(assert (= (or b!4912905 b!4912911) bm!341197))

(assert (= (or b!4912906 bm!341197) bm!341198))

(declare-fun m!5922762 () Bool)

(assert (=> bm!341196 m!5922762))

(declare-fun m!5922764 () Bool)

(assert (=> b!4912908 m!5922764))

(declare-fun m!5922766 () Bool)

(assert (=> bm!341198 m!5922766))

(assert (=> start!515740 d!1578660))

(declare-fun d!1578662 () Bool)

(declare-fun isBalanced!4057 (Conc!14838) Bool)

(assert (=> d!1578662 (= (inv!73243 input!6475) (isBalanced!4057 (c!835066 input!6475)))))

(declare-fun bs!1177593 () Bool)

(assert (= bs!1177593 d!1578662))

(declare-fun m!5922772 () Bool)

(assert (=> bs!1177593 m!5922772))

(assert (=> start!515740 d!1578662))

(declare-fun d!1578666 () Bool)

(declare-fun lt!2017128 () Regex!13345)

(assert (=> d!1578666 (validRegex!5934 lt!2017128)))

(declare-fun generalisedUnion!557 (List!56742) Regex!13345)

(declare-fun unfocusZipperList!70 (List!56743) List!56742)

(assert (=> d!1578666 (= lt!2017128 (generalisedUnion!557 (unfocusZipperList!70 (toList!7935 lt!2017125))))))

(assert (=> d!1578666 (= (unfocusZipper!249 (toList!7935 lt!2017125)) lt!2017128)))

(declare-fun bs!1177594 () Bool)

(assert (= bs!1177594 d!1578666))

(declare-fun m!5922774 () Bool)

(assert (=> bs!1177594 m!5922774))

(assert (=> bs!1177594 m!5922750))

(declare-fun m!5922776 () Bool)

(assert (=> bs!1177594 m!5922776))

(assert (=> bs!1177594 m!5922776))

(declare-fun m!5922778 () Bool)

(assert (=> bs!1177594 m!5922778))

(assert (=> b!4912868 d!1578666))

(declare-fun d!1578668 () Bool)

(declare-fun e!3070778 () Bool)

(assert (=> d!1578668 e!3070778))

(declare-fun res!2098648 () Bool)

(assert (=> d!1578668 (=> (not res!2098648) (not e!3070778))))

(declare-fun lt!2017134 () List!56743)

(declare-fun noDuplicate!983 (List!56743) Bool)

(assert (=> d!1578668 (= res!2098648 (noDuplicate!983 lt!2017134))))

(declare-fun choose!35951 ((InoxSet Context!5974)) List!56743)

(assert (=> d!1578668 (= lt!2017134 (choose!35951 lt!2017125))))

(assert (=> d!1578668 (= (toList!7935 lt!2017125) lt!2017134)))

(declare-fun b!4912917 () Bool)

(declare-fun content!10043 (List!56743) (InoxSet Context!5974))

(assert (=> b!4912917 (= e!3070778 (= (content!10043 lt!2017134) lt!2017125))))

(assert (= (and d!1578668 res!2098648) b!4912917))

(declare-fun m!5922786 () Bool)

(assert (=> d!1578668 m!5922786))

(declare-fun m!5922788 () Bool)

(assert (=> d!1578668 m!5922788))

(declare-fun m!5922790 () Bool)

(assert (=> b!4912917 m!5922790))

(assert (=> b!4912868 d!1578668))

(declare-fun d!1578672 () Bool)

(declare-fun list!17883 (Conc!14838) List!56741)

(assert (=> d!1578672 (= (list!17882 input!6475) (list!17883 (c!835066 input!6475)))))

(declare-fun bs!1177596 () Bool)

(assert (= bs!1177596 d!1578672))

(declare-fun m!5922792 () Bool)

(assert (=> bs!1177596 m!5922792))

(assert (=> b!4912868 d!1578672))

(declare-fun d!1578674 () Bool)

(declare-fun e!3070784 () Bool)

(assert (=> d!1578674 e!3070784))

(declare-fun res!2098655 () Bool)

(assert (=> d!1578674 (=> (not res!2098655) (not e!3070784))))

(assert (=> d!1578674 (= res!2098655 (validRegex!5934 r!15208))))

(assert (=> d!1578674 (= (focus!343 r!15208) (store ((as const (Array Context!5974 Bool)) false) (Context!5975 (Cons!56618 r!15208 Nil!56618)) true))))

(declare-fun b!4912923 () Bool)

(assert (=> b!4912923 (= e!3070784 (= (unfocusZipper!249 (toList!7935 (store ((as const (Array Context!5974 Bool)) false) (Context!5975 (Cons!56618 r!15208 Nil!56618)) true))) r!15208))))

(assert (= (and d!1578674 res!2098655) b!4912923))

(assert (=> d!1578674 m!5922744))

(declare-fun m!5922800 () Bool)

(assert (=> d!1578674 m!5922800))

(assert (=> b!4912923 m!5922800))

(assert (=> b!4912923 m!5922800))

(declare-fun m!5922802 () Bool)

(assert (=> b!4912923 m!5922802))

(assert (=> b!4912923 m!5922802))

(declare-fun m!5922804 () Bool)

(assert (=> b!4912923 m!5922804))

(assert (=> b!4912868 d!1578674))

(declare-fun e!3070789 () Bool)

(declare-fun tp!1381445 () Bool)

(declare-fun b!4912932 () Bool)

(declare-fun tp!1381444 () Bool)

(assert (=> b!4912932 (= e!3070789 (and (inv!73244 (left!41271 (c!835066 input!6475))) tp!1381445 (inv!73244 (right!41601 (c!835066 input!6475))) tp!1381444))))

(declare-fun b!4912934 () Bool)

(declare-fun e!3070790 () Bool)

(declare-fun tp!1381446 () Bool)

(assert (=> b!4912934 (= e!3070790 tp!1381446)))

(declare-fun b!4912933 () Bool)

(declare-fun inv!73247 (IArray!29737) Bool)

(assert (=> b!4912933 (= e!3070789 (and (inv!73247 (xs!18154 (c!835066 input!6475))) e!3070790))))

(assert (=> b!4912866 (= tp!1381432 (and (inv!73244 (c!835066 input!6475)) e!3070789))))

(assert (= (and b!4912866 ((_ is Node!14838) (c!835066 input!6475))) b!4912932))

(assert (= b!4912933 b!4912934))

(assert (= (and b!4912866 ((_ is Leaf!24690) (c!835066 input!6475))) b!4912933))

(declare-fun m!5922808 () Bool)

(assert (=> b!4912932 m!5922808))

(declare-fun m!5922810 () Bool)

(assert (=> b!4912932 m!5922810))

(declare-fun m!5922812 () Bool)

(assert (=> b!4912933 m!5922812))

(assert (=> b!4912866 m!5922748))

(declare-fun b!4912945 () Bool)

(declare-fun e!3070793 () Bool)

(assert (=> b!4912945 (= e!3070793 tp_is_empty!35891)))

(declare-fun b!4912947 () Bool)

(declare-fun tp!1381457 () Bool)

(assert (=> b!4912947 (= e!3070793 tp!1381457)))

(assert (=> b!4912869 (= tp!1381435 e!3070793)))

(declare-fun b!4912948 () Bool)

(declare-fun tp!1381458 () Bool)

(declare-fun tp!1381461 () Bool)

(assert (=> b!4912948 (= e!3070793 (and tp!1381458 tp!1381461))))

(declare-fun b!4912946 () Bool)

(declare-fun tp!1381460 () Bool)

(declare-fun tp!1381459 () Bool)

(assert (=> b!4912946 (= e!3070793 (and tp!1381460 tp!1381459))))

(assert (= (and b!4912869 ((_ is ElementMatch!13345) (regOne!27203 r!15208))) b!4912945))

(assert (= (and b!4912869 ((_ is Concat!21918) (regOne!27203 r!15208))) b!4912946))

(assert (= (and b!4912869 ((_ is Star!13345) (regOne!27203 r!15208))) b!4912947))

(assert (= (and b!4912869 ((_ is Union!13345) (regOne!27203 r!15208))) b!4912948))

(declare-fun b!4912949 () Bool)

(declare-fun e!3070794 () Bool)

(assert (=> b!4912949 (= e!3070794 tp_is_empty!35891)))

(declare-fun b!4912951 () Bool)

(declare-fun tp!1381462 () Bool)

(assert (=> b!4912951 (= e!3070794 tp!1381462)))

(assert (=> b!4912869 (= tp!1381433 e!3070794)))

(declare-fun b!4912952 () Bool)

(declare-fun tp!1381463 () Bool)

(declare-fun tp!1381466 () Bool)

(assert (=> b!4912952 (= e!3070794 (and tp!1381463 tp!1381466))))

(declare-fun b!4912950 () Bool)

(declare-fun tp!1381465 () Bool)

(declare-fun tp!1381464 () Bool)

(assert (=> b!4912950 (= e!3070794 (and tp!1381465 tp!1381464))))

(assert (= (and b!4912869 ((_ is ElementMatch!13345) (regTwo!27203 r!15208))) b!4912949))

(assert (= (and b!4912869 ((_ is Concat!21918) (regTwo!27203 r!15208))) b!4912950))

(assert (= (and b!4912869 ((_ is Star!13345) (regTwo!27203 r!15208))) b!4912951))

(assert (= (and b!4912869 ((_ is Union!13345) (regTwo!27203 r!15208))) b!4912952))

(declare-fun b!4912953 () Bool)

(declare-fun e!3070795 () Bool)

(assert (=> b!4912953 (= e!3070795 tp_is_empty!35891)))

(declare-fun b!4912955 () Bool)

(declare-fun tp!1381467 () Bool)

(assert (=> b!4912955 (= e!3070795 tp!1381467)))

(assert (=> b!4912864 (= tp!1381436 e!3070795)))

(declare-fun b!4912956 () Bool)

(declare-fun tp!1381468 () Bool)

(declare-fun tp!1381471 () Bool)

(assert (=> b!4912956 (= e!3070795 (and tp!1381468 tp!1381471))))

(declare-fun b!4912954 () Bool)

(declare-fun tp!1381470 () Bool)

(declare-fun tp!1381469 () Bool)

(assert (=> b!4912954 (= e!3070795 (and tp!1381470 tp!1381469))))

(assert (= (and b!4912864 ((_ is ElementMatch!13345) (reg!13674 r!15208))) b!4912953))

(assert (= (and b!4912864 ((_ is Concat!21918) (reg!13674 r!15208))) b!4912954))

(assert (= (and b!4912864 ((_ is Star!13345) (reg!13674 r!15208))) b!4912955))

(assert (= (and b!4912864 ((_ is Union!13345) (reg!13674 r!15208))) b!4912956))

(declare-fun b!4912957 () Bool)

(declare-fun e!3070796 () Bool)

(assert (=> b!4912957 (= e!3070796 tp_is_empty!35891)))

(declare-fun b!4912959 () Bool)

(declare-fun tp!1381472 () Bool)

(assert (=> b!4912959 (= e!3070796 tp!1381472)))

(assert (=> b!4912865 (= tp!1381437 e!3070796)))

(declare-fun b!4912960 () Bool)

(declare-fun tp!1381473 () Bool)

(declare-fun tp!1381476 () Bool)

(assert (=> b!4912960 (= e!3070796 (and tp!1381473 tp!1381476))))

(declare-fun b!4912958 () Bool)

(declare-fun tp!1381475 () Bool)

(declare-fun tp!1381474 () Bool)

(assert (=> b!4912958 (= e!3070796 (and tp!1381475 tp!1381474))))

(assert (= (and b!4912865 ((_ is ElementMatch!13345) (regOne!27202 r!15208))) b!4912957))

(assert (= (and b!4912865 ((_ is Concat!21918) (regOne!27202 r!15208))) b!4912958))

(assert (= (and b!4912865 ((_ is Star!13345) (regOne!27202 r!15208))) b!4912959))

(assert (= (and b!4912865 ((_ is Union!13345) (regOne!27202 r!15208))) b!4912960))

(declare-fun b!4912961 () Bool)

(declare-fun e!3070797 () Bool)

(assert (=> b!4912961 (= e!3070797 tp_is_empty!35891)))

(declare-fun b!4912963 () Bool)

(declare-fun tp!1381477 () Bool)

(assert (=> b!4912963 (= e!3070797 tp!1381477)))

(assert (=> b!4912865 (= tp!1381434 e!3070797)))

(declare-fun b!4912964 () Bool)

(declare-fun tp!1381478 () Bool)

(declare-fun tp!1381481 () Bool)

(assert (=> b!4912964 (= e!3070797 (and tp!1381478 tp!1381481))))

(declare-fun b!4912962 () Bool)

(declare-fun tp!1381480 () Bool)

(declare-fun tp!1381479 () Bool)

(assert (=> b!4912962 (= e!3070797 (and tp!1381480 tp!1381479))))

(assert (= (and b!4912865 ((_ is ElementMatch!13345) (regTwo!27202 r!15208))) b!4912961))

(assert (= (and b!4912865 ((_ is Concat!21918) (regTwo!27202 r!15208))) b!4912962))

(assert (= (and b!4912865 ((_ is Star!13345) (regTwo!27202 r!15208))) b!4912963))

(assert (= (and b!4912865 ((_ is Union!13345) (regTwo!27202 r!15208))) b!4912964))

(check-sat (not bm!341196) (not b!4912917) (not b!4912933) (not b!4912866) (not b!4912934) (not b!4912955) (not b!4912951) (not b!4912946) (not b!4912958) (not b!4912954) (not b!4912950) (not d!1578666) tp_is_empty!35891 (not d!1578668) (not b!4912932) (not b!4912923) (not b!4912960) (not b!4912962) (not b!4912964) (not b!4912876) (not d!1578662) (not d!1578674) (not d!1578672) (not bm!341198) (not b!4912959) (not b!4912963) (not b!4912956) (not b!4912952) (not b!4912878) (not b!4912948) (not b!4912947) (not b!4912908))
(check-sat)
