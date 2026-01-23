; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89034 () Bool)

(assert start!89034)

(declare-fun b!1022717 () Bool)

(assert (=> b!1022717 true))

(assert (=> b!1022717 true))

(declare-fun lambda!36426 () Int)

(declare-fun lambda!36425 () Int)

(assert (=> b!1022717 (not (= lambda!36426 lambda!36425))))

(assert (=> b!1022717 true))

(assert (=> b!1022717 true))

(declare-fun b!1022706 () Bool)

(declare-fun e!652906 () Bool)

(declare-fun tp_is_empty!5301 () Bool)

(assert (=> b!1022706 (= e!652906 tp_is_empty!5301)))

(declare-fun b!1022707 () Bool)

(declare-fun tp!310540 () Bool)

(declare-fun tp!310535 () Bool)

(assert (=> b!1022707 (= e!652906 (and tp!310540 tp!310535))))

(declare-fun b!1022708 () Bool)

(declare-fun res!459610 () Bool)

(declare-fun e!652908 () Bool)

(assert (=> b!1022708 (=> res!459610 e!652908)))

(declare-datatypes ((C!6228 0))(
  ( (C!6229 (val!3362 Int)) )
))
(declare-datatypes ((List!10059 0))(
  ( (Nil!10043) (Cons!10043 (h!15444 C!6228) (t!101105 List!10059)) )
))
(declare-datatypes ((tuple2!11440 0))(
  ( (tuple2!11441 (_1!6546 List!10059) (_2!6546 List!10059)) )
))
(declare-datatypes ((Option!2362 0))(
  ( (None!2361) (Some!2361 (v!19778 tuple2!11440)) )
))
(declare-fun lt!354715 () Option!2362)

(declare-fun isEmpty!6405 (Option!2362) Bool)

(assert (=> b!1022708 (= res!459610 (not (isEmpty!6405 lt!354715)))))

(declare-fun b!1022709 () Bool)

(declare-fun e!652907 () Bool)

(declare-fun tp!310539 () Bool)

(assert (=> b!1022709 (= e!652907 (and tp_is_empty!5301 tp!310539))))

(declare-fun b!1022710 () Bool)

(declare-fun res!459605 () Bool)

(declare-fun e!652910 () Bool)

(assert (=> b!1022710 (=> res!459605 e!652910)))

(declare-datatypes ((Regex!2829 0))(
  ( (ElementMatch!2829 (c!169488 C!6228)) (Concat!4662 (regOne!6170 Regex!2829) (regTwo!6170 Regex!2829)) (EmptyExpr!2829) (Star!2829 (reg!3158 Regex!2829)) (EmptyLang!2829) (Union!2829 (regOne!6171 Regex!2829) (regTwo!6171 Regex!2829)) )
))
(declare-fun r!15766 () Regex!2829)

(declare-fun validRegex!1298 (Regex!2829) Bool)

(assert (=> b!1022710 (= res!459605 (not (validRegex!1298 (regTwo!6170 r!15766))))))

(declare-fun b!1022711 () Bool)

(declare-fun res!459603 () Bool)

(assert (=> b!1022711 (=> res!459603 e!652910)))

(declare-fun isPrefix!1011 (List!10059 List!10059) Bool)

(assert (=> b!1022711 (= res!459603 (not (isPrefix!1011 Nil!10043 Nil!10043)))))

(declare-fun b!1022712 () Bool)

(declare-fun res!459606 () Bool)

(assert (=> b!1022712 (=> res!459606 e!652910)))

(declare-fun s!10566 () List!10059)

(declare-fun ++!2747 (List!10059 List!10059) List!10059)

(assert (=> b!1022712 (= res!459606 (not (= (++!2747 Nil!10043 s!10566) s!10566)))))

(declare-fun b!1022713 () Bool)

(assert (=> b!1022713 (= e!652908 e!652910)))

(declare-fun res!459609 () Bool)

(assert (=> b!1022713 (=> res!459609 e!652910)))

(declare-fun lt!354709 () Bool)

(declare-fun lt!354714 () Bool)

(assert (=> b!1022713 (= res!459609 (or (not lt!354709) (not lt!354714)))))

(assert (=> b!1022713 (= lt!354714 lt!354709)))

(declare-fun lt!354712 () Regex!2829)

(declare-fun matchR!1365 (Regex!2829 List!10059) Bool)

(assert (=> b!1022713 (= lt!354709 (matchR!1365 lt!354712 s!10566))))

(assert (=> b!1022713 (= lt!354714 (matchR!1365 (regTwo!6170 r!15766) s!10566))))

(declare-fun removeUselessConcat!398 (Regex!2829) Regex!2829)

(assert (=> b!1022713 (= lt!354712 (removeUselessConcat!398 (regTwo!6170 r!15766)))))

(declare-datatypes ((Unit!15333 0))(
  ( (Unit!15334) )
))
(declare-fun lt!354711 () Unit!15333)

(declare-fun lemmaRemoveUselessConcatSound!238 (Regex!2829 List!10059) Unit!15333)

(assert (=> b!1022713 (= lt!354711 (lemmaRemoveUselessConcatSound!238 (regTwo!6170 r!15766) s!10566))))

(declare-fun b!1022714 () Bool)

(declare-fun e!652911 () Bool)

(declare-fun e!652909 () Bool)

(assert (=> b!1022714 (= e!652911 (not e!652909))))

(declare-fun res!459608 () Bool)

(assert (=> b!1022714 (=> res!459608 e!652909)))

(declare-fun lt!354710 () Bool)

(get-info :version)

(assert (=> b!1022714 (= res!459608 (or lt!354710 (not ((_ is Concat!4662) r!15766)) (not ((_ is EmptyExpr!2829) (regOne!6170 r!15766)))))))

(declare-fun matchRSpec!628 (Regex!2829 List!10059) Bool)

(assert (=> b!1022714 (= lt!354710 (matchRSpec!628 r!15766 s!10566))))

(assert (=> b!1022714 (= lt!354710 (matchR!1365 r!15766 s!10566))))

(declare-fun lt!354708 () Unit!15333)

(declare-fun mainMatchTheorem!628 (Regex!2829 List!10059) Unit!15333)

(assert (=> b!1022714 (= lt!354708 (mainMatchTheorem!628 r!15766 s!10566))))

(declare-fun b!1022715 () Bool)

(declare-fun tp!310536 () Bool)

(declare-fun tp!310537 () Bool)

(assert (=> b!1022715 (= e!652906 (and tp!310536 tp!310537))))

(declare-fun res!459607 () Bool)

(assert (=> start!89034 (=> (not res!459607) (not e!652911))))

(assert (=> start!89034 (= res!459607 (validRegex!1298 r!15766))))

(assert (=> start!89034 e!652911))

(assert (=> start!89034 e!652906))

(assert (=> start!89034 e!652907))

(declare-fun b!1022705 () Bool)

(declare-fun tp!310538 () Bool)

(assert (=> b!1022705 (= e!652906 tp!310538)))

(declare-fun b!1022716 () Bool)

(assert (=> b!1022716 (= e!652910 (matchR!1365 EmptyExpr!2829 Nil!10043))))

(assert (=> b!1022717 (= e!652909 e!652908)))

(declare-fun res!459604 () Bool)

(assert (=> b!1022717 (=> res!459604 e!652908)))

(declare-fun isEmpty!6406 (List!10059) Bool)

(assert (=> b!1022717 (= res!459604 (isEmpty!6406 s!10566))))

(declare-fun Exists!558 (Int) Bool)

(assert (=> b!1022717 (= (Exists!558 lambda!36425) (Exists!558 lambda!36426))))

(declare-fun lt!354707 () Unit!15333)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!260 (Regex!2829 Regex!2829 List!10059) Unit!15333)

(assert (=> b!1022717 (= lt!354707 (lemmaExistCutMatchRandMatchRSpecEquivalent!260 EmptyExpr!2829 (regTwo!6170 r!15766) s!10566))))

(declare-fun isDefined!2004 (Option!2362) Bool)

(assert (=> b!1022717 (= (isDefined!2004 lt!354715) (Exists!558 lambda!36425))))

(declare-fun findConcatSeparation!468 (Regex!2829 Regex!2829 List!10059 List!10059 List!10059) Option!2362)

(assert (=> b!1022717 (= lt!354715 (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) Nil!10043 s!10566 s!10566))))

(declare-fun lt!354713 () Unit!15333)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!468 (Regex!2829 Regex!2829 List!10059) Unit!15333)

(assert (=> b!1022717 (= lt!354713 (lemmaFindConcatSeparationEquivalentToExists!468 EmptyExpr!2829 (regTwo!6170 r!15766) s!10566))))

(assert (= (and start!89034 res!459607) b!1022714))

(assert (= (and b!1022714 (not res!459608)) b!1022717))

(assert (= (and b!1022717 (not res!459604)) b!1022708))

(assert (= (and b!1022708 (not res!459610)) b!1022713))

(assert (= (and b!1022713 (not res!459609)) b!1022710))

(assert (= (and b!1022710 (not res!459605)) b!1022712))

(assert (= (and b!1022712 (not res!459606)) b!1022711))

(assert (= (and b!1022711 (not res!459603)) b!1022716))

(assert (= (and start!89034 ((_ is ElementMatch!2829) r!15766)) b!1022706))

(assert (= (and start!89034 ((_ is Concat!4662) r!15766)) b!1022715))

(assert (= (and start!89034 ((_ is Star!2829) r!15766)) b!1022705))

(assert (= (and start!89034 ((_ is Union!2829) r!15766)) b!1022707))

(assert (= (and start!89034 ((_ is Cons!10043) s!10566)) b!1022709))

(declare-fun m!1200813 () Bool)

(assert (=> b!1022713 m!1200813))

(declare-fun m!1200815 () Bool)

(assert (=> b!1022713 m!1200815))

(declare-fun m!1200817 () Bool)

(assert (=> b!1022713 m!1200817))

(declare-fun m!1200819 () Bool)

(assert (=> b!1022713 m!1200819))

(declare-fun m!1200821 () Bool)

(assert (=> b!1022712 m!1200821))

(declare-fun m!1200823 () Bool)

(assert (=> b!1022710 m!1200823))

(declare-fun m!1200825 () Bool)

(assert (=> b!1022708 m!1200825))

(declare-fun m!1200827 () Bool)

(assert (=> b!1022714 m!1200827))

(declare-fun m!1200829 () Bool)

(assert (=> b!1022714 m!1200829))

(declare-fun m!1200831 () Bool)

(assert (=> b!1022714 m!1200831))

(declare-fun m!1200833 () Bool)

(assert (=> b!1022716 m!1200833))

(declare-fun m!1200835 () Bool)

(assert (=> b!1022717 m!1200835))

(declare-fun m!1200837 () Bool)

(assert (=> b!1022717 m!1200837))

(declare-fun m!1200839 () Bool)

(assert (=> b!1022717 m!1200839))

(assert (=> b!1022717 m!1200837))

(declare-fun m!1200841 () Bool)

(assert (=> b!1022717 m!1200841))

(declare-fun m!1200843 () Bool)

(assert (=> b!1022717 m!1200843))

(declare-fun m!1200845 () Bool)

(assert (=> b!1022717 m!1200845))

(declare-fun m!1200847 () Bool)

(assert (=> b!1022717 m!1200847))

(declare-fun m!1200849 () Bool)

(assert (=> start!89034 m!1200849))

(declare-fun m!1200851 () Bool)

(assert (=> b!1022711 m!1200851))

(check-sat (not b!1022712) tp_is_empty!5301 (not start!89034) (not b!1022711) (not b!1022705) (not b!1022707) (not b!1022710) (not b!1022713) (not b!1022716) (not b!1022714) (not b!1022709) (not b!1022715) (not b!1022717) (not b!1022708))
(check-sat)
(get-model)

(declare-fun b!1022792 () Bool)

(declare-fun res!459656 () Bool)

(declare-fun e!652953 () Bool)

(assert (=> b!1022792 (=> res!459656 e!652953)))

(declare-fun e!652950 () Bool)

(assert (=> b!1022792 (= res!459656 e!652950)))

(declare-fun res!459654 () Bool)

(assert (=> b!1022792 (=> (not res!459654) (not e!652950))))

(declare-fun lt!354721 () Bool)

(assert (=> b!1022792 (= res!459654 lt!354721)))

(declare-fun b!1022793 () Bool)

(declare-fun e!652948 () Bool)

(assert (=> b!1022793 (= e!652953 e!652948)))

(declare-fun res!459657 () Bool)

(assert (=> b!1022793 (=> (not res!459657) (not e!652948))))

(assert (=> b!1022793 (= res!459657 (not lt!354721))))

(declare-fun b!1022794 () Bool)

(declare-fun e!652952 () Bool)

(declare-fun head!1886 (List!10059) C!6228)

(assert (=> b!1022794 (= e!652952 (not (= (head!1886 Nil!10043) (c!169488 EmptyExpr!2829))))))

(declare-fun b!1022795 () Bool)

(assert (=> b!1022795 (= e!652950 (= (head!1886 Nil!10043) (c!169488 EmptyExpr!2829)))))

(declare-fun b!1022796 () Bool)

(declare-fun res!459658 () Bool)

(assert (=> b!1022796 (=> (not res!459658) (not e!652950))))

(declare-fun call!70075 () Bool)

(assert (=> b!1022796 (= res!459658 (not call!70075))))

(declare-fun b!1022797 () Bool)

(declare-fun e!652951 () Bool)

(declare-fun e!652947 () Bool)

(assert (=> b!1022797 (= e!652951 e!652947)))

(declare-fun c!169504 () Bool)

(assert (=> b!1022797 (= c!169504 ((_ is EmptyLang!2829) EmptyExpr!2829))))

(declare-fun b!1022798 () Bool)

(declare-fun res!459655 () Bool)

(assert (=> b!1022798 (=> res!459655 e!652952)))

(declare-fun tail!1447 (List!10059) List!10059)

(assert (=> b!1022798 (= res!459655 (not (isEmpty!6406 (tail!1447 Nil!10043))))))

(declare-fun b!1022799 () Bool)

(declare-fun e!652949 () Bool)

(declare-fun derivativeStep!731 (Regex!2829 C!6228) Regex!2829)

(assert (=> b!1022799 (= e!652949 (matchR!1365 (derivativeStep!731 EmptyExpr!2829 (head!1886 Nil!10043)) (tail!1447 Nil!10043)))))

(declare-fun b!1022800 () Bool)

(declare-fun nullable!930 (Regex!2829) Bool)

(assert (=> b!1022800 (= e!652949 (nullable!930 EmptyExpr!2829))))

(declare-fun b!1022802 () Bool)

(declare-fun res!459651 () Bool)

(assert (=> b!1022802 (=> (not res!459651) (not e!652950))))

(assert (=> b!1022802 (= res!459651 (isEmpty!6406 (tail!1447 Nil!10043)))))

(declare-fun b!1022803 () Bool)

(assert (=> b!1022803 (= e!652948 e!652952)))

(declare-fun res!459652 () Bool)

(assert (=> b!1022803 (=> res!459652 e!652952)))

(assert (=> b!1022803 (= res!459652 call!70075)))

(declare-fun b!1022804 () Bool)

(assert (=> b!1022804 (= e!652947 (not lt!354721))))

(declare-fun b!1022805 () Bool)

(declare-fun res!459653 () Bool)

(assert (=> b!1022805 (=> res!459653 e!652953)))

(assert (=> b!1022805 (= res!459653 (not ((_ is ElementMatch!2829) EmptyExpr!2829)))))

(assert (=> b!1022805 (= e!652947 e!652953)))

(declare-fun bm!70070 () Bool)

(assert (=> bm!70070 (= call!70075 (isEmpty!6406 Nil!10043))))

(declare-fun d!294572 () Bool)

(assert (=> d!294572 e!652951))

(declare-fun c!169505 () Bool)

(assert (=> d!294572 (= c!169505 ((_ is EmptyExpr!2829) EmptyExpr!2829))))

(assert (=> d!294572 (= lt!354721 e!652949)))

(declare-fun c!169506 () Bool)

(assert (=> d!294572 (= c!169506 (isEmpty!6406 Nil!10043))))

(assert (=> d!294572 (validRegex!1298 EmptyExpr!2829)))

(assert (=> d!294572 (= (matchR!1365 EmptyExpr!2829 Nil!10043) lt!354721)))

(declare-fun b!1022801 () Bool)

(assert (=> b!1022801 (= e!652951 (= lt!354721 call!70075))))

(assert (= (and d!294572 c!169506) b!1022800))

(assert (= (and d!294572 (not c!169506)) b!1022799))

(assert (= (and d!294572 c!169505) b!1022801))

(assert (= (and d!294572 (not c!169505)) b!1022797))

(assert (= (and b!1022797 c!169504) b!1022804))

(assert (= (and b!1022797 (not c!169504)) b!1022805))

(assert (= (and b!1022805 (not res!459653)) b!1022792))

(assert (= (and b!1022792 res!459654) b!1022796))

(assert (= (and b!1022796 res!459658) b!1022802))

(assert (= (and b!1022802 res!459651) b!1022795))

(assert (= (and b!1022792 (not res!459656)) b!1022793))

(assert (= (and b!1022793 res!459657) b!1022803))

(assert (= (and b!1022803 (not res!459652)) b!1022798))

(assert (= (and b!1022798 (not res!459655)) b!1022794))

(assert (= (or b!1022801 b!1022796 b!1022803) bm!70070))

(declare-fun m!1200869 () Bool)

(assert (=> b!1022795 m!1200869))

(declare-fun m!1200871 () Bool)

(assert (=> d!294572 m!1200871))

(declare-fun m!1200873 () Bool)

(assert (=> d!294572 m!1200873))

(assert (=> b!1022794 m!1200869))

(declare-fun m!1200875 () Bool)

(assert (=> b!1022800 m!1200875))

(assert (=> bm!70070 m!1200871))

(declare-fun m!1200877 () Bool)

(assert (=> b!1022802 m!1200877))

(assert (=> b!1022802 m!1200877))

(declare-fun m!1200879 () Bool)

(assert (=> b!1022802 m!1200879))

(assert (=> b!1022799 m!1200869))

(assert (=> b!1022799 m!1200869))

(declare-fun m!1200881 () Bool)

(assert (=> b!1022799 m!1200881))

(assert (=> b!1022799 m!1200877))

(assert (=> b!1022799 m!1200881))

(assert (=> b!1022799 m!1200877))

(declare-fun m!1200883 () Bool)

(assert (=> b!1022799 m!1200883))

(assert (=> b!1022798 m!1200877))

(assert (=> b!1022798 m!1200877))

(assert (=> b!1022798 m!1200879))

(assert (=> b!1022716 d!294572))

(declare-fun d!294578 () Bool)

(declare-fun res!459675 () Bool)

(declare-fun e!652979 () Bool)

(assert (=> d!294578 (=> res!459675 e!652979)))

(assert (=> d!294578 (= res!459675 ((_ is ElementMatch!2829) r!15766))))

(assert (=> d!294578 (= (validRegex!1298 r!15766) e!652979)))

(declare-fun b!1022836 () Bool)

(declare-fun e!652977 () Bool)

(declare-fun call!70084 () Bool)

(assert (=> b!1022836 (= e!652977 call!70084)))

(declare-fun b!1022837 () Bool)

(declare-fun e!652978 () Bool)

(assert (=> b!1022837 (= e!652978 e!652977)))

(declare-fun res!459676 () Bool)

(assert (=> b!1022837 (= res!459676 (not (nullable!930 (reg!3158 r!15766))))))

(assert (=> b!1022837 (=> (not res!459676) (not e!652977))))

(declare-fun b!1022838 () Bool)

(assert (=> b!1022838 (= e!652979 e!652978)))

(declare-fun c!169515 () Bool)

(assert (=> b!1022838 (= c!169515 ((_ is Star!2829) r!15766))))

(declare-fun b!1022839 () Bool)

(declare-fun e!652974 () Bool)

(declare-fun e!652975 () Bool)

(assert (=> b!1022839 (= e!652974 e!652975)))

(declare-fun res!459679 () Bool)

(assert (=> b!1022839 (=> (not res!459679) (not e!652975))))

(declare-fun call!70082 () Bool)

(assert (=> b!1022839 (= res!459679 call!70082)))

(declare-fun b!1022840 () Bool)

(declare-fun call!70083 () Bool)

(assert (=> b!1022840 (= e!652975 call!70083)))

(declare-fun b!1022841 () Bool)

(declare-fun res!459677 () Bool)

(assert (=> b!1022841 (=> res!459677 e!652974)))

(assert (=> b!1022841 (= res!459677 (not ((_ is Concat!4662) r!15766)))))

(declare-fun e!652980 () Bool)

(assert (=> b!1022841 (= e!652980 e!652974)))

(declare-fun bm!70077 () Bool)

(declare-fun c!169514 () Bool)

(assert (=> bm!70077 (= call!70083 (validRegex!1298 (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))))))

(declare-fun bm!70078 () Bool)

(assert (=> bm!70078 (= call!70084 (validRegex!1298 (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))))))

(declare-fun b!1022842 () Bool)

(declare-fun e!652976 () Bool)

(assert (=> b!1022842 (= e!652976 call!70083)))

(declare-fun b!1022843 () Bool)

(declare-fun res!459678 () Bool)

(assert (=> b!1022843 (=> (not res!459678) (not e!652976))))

(assert (=> b!1022843 (= res!459678 call!70082)))

(assert (=> b!1022843 (= e!652980 e!652976)))

(declare-fun b!1022844 () Bool)

(assert (=> b!1022844 (= e!652978 e!652980)))

(assert (=> b!1022844 (= c!169514 ((_ is Union!2829) r!15766))))

(declare-fun bm!70079 () Bool)

(assert (=> bm!70079 (= call!70082 call!70084)))

(assert (= (and d!294578 (not res!459675)) b!1022838))

(assert (= (and b!1022838 c!169515) b!1022837))

(assert (= (and b!1022838 (not c!169515)) b!1022844))

(assert (= (and b!1022837 res!459676) b!1022836))

(assert (= (and b!1022844 c!169514) b!1022843))

(assert (= (and b!1022844 (not c!169514)) b!1022841))

(assert (= (and b!1022843 res!459678) b!1022842))

(assert (= (and b!1022841 (not res!459677)) b!1022839))

(assert (= (and b!1022839 res!459679) b!1022840))

(assert (= (or b!1022842 b!1022840) bm!70077))

(assert (= (or b!1022843 b!1022839) bm!70079))

(assert (= (or b!1022836 bm!70079) bm!70078))

(declare-fun m!1200899 () Bool)

(assert (=> b!1022837 m!1200899))

(declare-fun m!1200901 () Bool)

(assert (=> bm!70077 m!1200901))

(declare-fun m!1200903 () Bool)

(assert (=> bm!70078 m!1200903))

(assert (=> start!89034 d!294578))

(declare-fun d!294582 () Bool)

(declare-fun res!459688 () Bool)

(declare-fun e!653000 () Bool)

(assert (=> d!294582 (=> res!459688 e!653000)))

(assert (=> d!294582 (= res!459688 ((_ is ElementMatch!2829) (regTwo!6170 r!15766)))))

(assert (=> d!294582 (= (validRegex!1298 (regTwo!6170 r!15766)) e!653000)))

(declare-fun b!1022861 () Bool)

(declare-fun e!652996 () Bool)

(declare-fun call!70087 () Bool)

(assert (=> b!1022861 (= e!652996 call!70087)))

(declare-fun b!1022864 () Bool)

(declare-fun e!652997 () Bool)

(assert (=> b!1022864 (= e!652997 e!652996)))

(declare-fun res!459689 () Bool)

(assert (=> b!1022864 (= res!459689 (not (nullable!930 (reg!3158 (regTwo!6170 r!15766)))))))

(assert (=> b!1022864 (=> (not res!459689) (not e!652996))))

(declare-fun b!1022865 () Bool)

(assert (=> b!1022865 (= e!653000 e!652997)))

(declare-fun c!169521 () Bool)

(assert (=> b!1022865 (= c!169521 ((_ is Star!2829) (regTwo!6170 r!15766)))))

(declare-fun b!1022866 () Bool)

(declare-fun e!652993 () Bool)

(declare-fun e!652994 () Bool)

(assert (=> b!1022866 (= e!652993 e!652994)))

(declare-fun res!459694 () Bool)

(assert (=> b!1022866 (=> (not res!459694) (not e!652994))))

(declare-fun call!70085 () Bool)

(assert (=> b!1022866 (= res!459694 call!70085)))

(declare-fun b!1022867 () Bool)

(declare-fun call!70086 () Bool)

(assert (=> b!1022867 (= e!652994 call!70086)))

(declare-fun b!1022868 () Bool)

(declare-fun res!459692 () Bool)

(assert (=> b!1022868 (=> res!459692 e!652993)))

(assert (=> b!1022868 (= res!459692 (not ((_ is Concat!4662) (regTwo!6170 r!15766))))))

(declare-fun e!653001 () Bool)

(assert (=> b!1022868 (= e!653001 e!652993)))

(declare-fun bm!70080 () Bool)

(declare-fun c!169520 () Bool)

(assert (=> bm!70080 (= call!70086 (validRegex!1298 (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))))))

(declare-fun bm!70081 () Bool)

(assert (=> bm!70081 (= call!70087 (validRegex!1298 (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))))))

(declare-fun b!1022869 () Bool)

(declare-fun e!652995 () Bool)

(assert (=> b!1022869 (= e!652995 call!70086)))

(declare-fun b!1022870 () Bool)

(declare-fun res!459693 () Bool)

(assert (=> b!1022870 (=> (not res!459693) (not e!652995))))

(assert (=> b!1022870 (= res!459693 call!70085)))

(assert (=> b!1022870 (= e!653001 e!652995)))

(declare-fun b!1022871 () Bool)

(assert (=> b!1022871 (= e!652997 e!653001)))

(assert (=> b!1022871 (= c!169520 ((_ is Union!2829) (regTwo!6170 r!15766)))))

(declare-fun bm!70082 () Bool)

(assert (=> bm!70082 (= call!70085 call!70087)))

(assert (= (and d!294582 (not res!459688)) b!1022865))

(assert (= (and b!1022865 c!169521) b!1022864))

(assert (= (and b!1022865 (not c!169521)) b!1022871))

(assert (= (and b!1022864 res!459689) b!1022861))

(assert (= (and b!1022871 c!169520) b!1022870))

(assert (= (and b!1022871 (not c!169520)) b!1022868))

(assert (= (and b!1022870 res!459693) b!1022869))

(assert (= (and b!1022868 (not res!459692)) b!1022866))

(assert (= (and b!1022866 res!459694) b!1022867))

(assert (= (or b!1022869 b!1022867) bm!70080))

(assert (= (or b!1022870 b!1022866) bm!70082))

(assert (= (or b!1022861 bm!70082) bm!70081))

(declare-fun m!1200905 () Bool)

(assert (=> b!1022864 m!1200905))

(declare-fun m!1200907 () Bool)

(assert (=> bm!70080 m!1200907))

(declare-fun m!1200909 () Bool)

(assert (=> bm!70081 m!1200909))

(assert (=> b!1022710 d!294582))

(declare-fun bs!246766 () Bool)

(declare-fun b!1022970 () Bool)

(assert (= bs!246766 (and b!1022970 b!1022717)))

(declare-fun lambda!36431 () Int)

(assert (=> bs!246766 (not (= lambda!36431 lambda!36425))))

(assert (=> bs!246766 (not (= lambda!36431 lambda!36426))))

(assert (=> b!1022970 true))

(assert (=> b!1022970 true))

(declare-fun bs!246767 () Bool)

(declare-fun b!1022971 () Bool)

(assert (= bs!246767 (and b!1022971 b!1022717)))

(declare-fun lambda!36432 () Int)

(assert (=> bs!246767 (not (= lambda!36432 lambda!36425))))

(assert (=> bs!246767 (= (= (regOne!6170 r!15766) EmptyExpr!2829) (= lambda!36432 lambda!36426))))

(declare-fun bs!246768 () Bool)

(assert (= bs!246768 (and b!1022971 b!1022970)))

(assert (=> bs!246768 (not (= lambda!36432 lambda!36431))))

(assert (=> b!1022971 true))

(assert (=> b!1022971 true))

(declare-fun b!1022963 () Bool)

(declare-fun e!653055 () Bool)

(declare-fun call!70114 () Bool)

(assert (=> b!1022963 (= e!653055 call!70114)))

(declare-fun b!1022964 () Bool)

(declare-fun e!653053 () Bool)

(assert (=> b!1022964 (= e!653053 (= s!10566 (Cons!10043 (c!169488 r!15766) Nil!10043)))))

(declare-fun b!1022965 () Bool)

(declare-fun c!169550 () Bool)

(assert (=> b!1022965 (= c!169550 ((_ is Union!2829) r!15766))))

(declare-fun e!653059 () Bool)

(assert (=> b!1022965 (= e!653053 e!653059)))

(declare-fun b!1022966 () Bool)

(declare-fun e!653056 () Bool)

(assert (=> b!1022966 (= e!653056 (matchRSpec!628 (regTwo!6171 r!15766) s!10566))))

(declare-fun d!294584 () Bool)

(declare-fun c!169548 () Bool)

(assert (=> d!294584 (= c!169548 ((_ is EmptyExpr!2829) r!15766))))

(assert (=> d!294584 (= (matchRSpec!628 r!15766 s!10566) e!653055)))

(declare-fun bm!70108 () Bool)

(declare-fun call!70113 () Bool)

(declare-fun c!169549 () Bool)

(assert (=> bm!70108 (= call!70113 (Exists!558 (ite c!169549 lambda!36431 lambda!36432)))))

(declare-fun bm!70109 () Bool)

(assert (=> bm!70109 (= call!70114 (isEmpty!6406 s!10566))))

(declare-fun b!1022967 () Bool)

(declare-fun res!459735 () Bool)

(declare-fun e!653054 () Bool)

(assert (=> b!1022967 (=> res!459735 e!653054)))

(assert (=> b!1022967 (= res!459735 call!70114)))

(declare-fun e!653058 () Bool)

(assert (=> b!1022967 (= e!653058 e!653054)))

(declare-fun b!1022968 () Bool)

(assert (=> b!1022968 (= e!653059 e!653058)))

(assert (=> b!1022968 (= c!169549 ((_ is Star!2829) r!15766))))

(declare-fun b!1022969 () Bool)

(declare-fun c!169551 () Bool)

(assert (=> b!1022969 (= c!169551 ((_ is ElementMatch!2829) r!15766))))

(declare-fun e!653057 () Bool)

(assert (=> b!1022969 (= e!653057 e!653053)))

(assert (=> b!1022970 (= e!653054 call!70113)))

(assert (=> b!1022971 (= e!653058 call!70113)))

(declare-fun b!1022972 () Bool)

(assert (=> b!1022972 (= e!653059 e!653056)))

(declare-fun res!459736 () Bool)

(assert (=> b!1022972 (= res!459736 (matchRSpec!628 (regOne!6171 r!15766) s!10566))))

(assert (=> b!1022972 (=> res!459736 e!653056)))

(declare-fun b!1022973 () Bool)

(assert (=> b!1022973 (= e!653055 e!653057)))

(declare-fun res!459734 () Bool)

(assert (=> b!1022973 (= res!459734 (not ((_ is EmptyLang!2829) r!15766)))))

(assert (=> b!1022973 (=> (not res!459734) (not e!653057))))

(assert (= (and d!294584 c!169548) b!1022963))

(assert (= (and d!294584 (not c!169548)) b!1022973))

(assert (= (and b!1022973 res!459734) b!1022969))

(assert (= (and b!1022969 c!169551) b!1022964))

(assert (= (and b!1022969 (not c!169551)) b!1022965))

(assert (= (and b!1022965 c!169550) b!1022972))

(assert (= (and b!1022965 (not c!169550)) b!1022968))

(assert (= (and b!1022972 (not res!459736)) b!1022966))

(assert (= (and b!1022968 c!169549) b!1022967))

(assert (= (and b!1022968 (not c!169549)) b!1022971))

(assert (= (and b!1022967 (not res!459735)) b!1022970))

(assert (= (or b!1022970 b!1022971) bm!70108))

(assert (= (or b!1022963 b!1022967) bm!70109))

(declare-fun m!1200945 () Bool)

(assert (=> b!1022966 m!1200945))

(declare-fun m!1200947 () Bool)

(assert (=> bm!70108 m!1200947))

(assert (=> bm!70109 m!1200845))

(declare-fun m!1200949 () Bool)

(assert (=> b!1022972 m!1200949))

(assert (=> b!1022714 d!294584))

(declare-fun b!1022985 () Bool)

(declare-fun res!459743 () Bool)

(declare-fun e!653072 () Bool)

(assert (=> b!1022985 (=> res!459743 e!653072)))

(declare-fun e!653069 () Bool)

(assert (=> b!1022985 (= res!459743 e!653069)))

(declare-fun res!459741 () Bool)

(assert (=> b!1022985 (=> (not res!459741) (not e!653069))))

(declare-fun lt!354730 () Bool)

(assert (=> b!1022985 (= res!459741 lt!354730)))

(declare-fun b!1022986 () Bool)

(declare-fun e!653067 () Bool)

(assert (=> b!1022986 (= e!653072 e!653067)))

(declare-fun res!459744 () Bool)

(assert (=> b!1022986 (=> (not res!459744) (not e!653067))))

(assert (=> b!1022986 (= res!459744 (not lt!354730))))

(declare-fun b!1022987 () Bool)

(declare-fun e!653071 () Bool)

(assert (=> b!1022987 (= e!653071 (not (= (head!1886 s!10566) (c!169488 r!15766))))))

(declare-fun b!1022988 () Bool)

(assert (=> b!1022988 (= e!653069 (= (head!1886 s!10566) (c!169488 r!15766)))))

(declare-fun b!1022989 () Bool)

(declare-fun res!459745 () Bool)

(assert (=> b!1022989 (=> (not res!459745) (not e!653069))))

(declare-fun call!70120 () Bool)

(assert (=> b!1022989 (= res!459745 (not call!70120))))

(declare-fun b!1022990 () Bool)

(declare-fun e!653070 () Bool)

(declare-fun e!653066 () Bool)

(assert (=> b!1022990 (= e!653070 e!653066)))

(declare-fun c!169557 () Bool)

(assert (=> b!1022990 (= c!169557 ((_ is EmptyLang!2829) r!15766))))

(declare-fun b!1022991 () Bool)

(declare-fun res!459742 () Bool)

(assert (=> b!1022991 (=> res!459742 e!653071)))

(assert (=> b!1022991 (= res!459742 (not (isEmpty!6406 (tail!1447 s!10566))))))

(declare-fun b!1022992 () Bool)

(declare-fun e!653068 () Bool)

(assert (=> b!1022992 (= e!653068 (matchR!1365 (derivativeStep!731 r!15766 (head!1886 s!10566)) (tail!1447 s!10566)))))

(declare-fun b!1022993 () Bool)

(assert (=> b!1022993 (= e!653068 (nullable!930 r!15766))))

(declare-fun b!1022995 () Bool)

(declare-fun res!459738 () Bool)

(assert (=> b!1022995 (=> (not res!459738) (not e!653069))))

(assert (=> b!1022995 (= res!459738 (isEmpty!6406 (tail!1447 s!10566)))))

(declare-fun b!1022996 () Bool)

(assert (=> b!1022996 (= e!653067 e!653071)))

(declare-fun res!459739 () Bool)

(assert (=> b!1022996 (=> res!459739 e!653071)))

(assert (=> b!1022996 (= res!459739 call!70120)))

(declare-fun b!1022997 () Bool)

(assert (=> b!1022997 (= e!653066 (not lt!354730))))

(declare-fun b!1022998 () Bool)

(declare-fun res!459740 () Bool)

(assert (=> b!1022998 (=> res!459740 e!653072)))

(assert (=> b!1022998 (= res!459740 (not ((_ is ElementMatch!2829) r!15766)))))

(assert (=> b!1022998 (= e!653066 e!653072)))

(declare-fun bm!70115 () Bool)

(assert (=> bm!70115 (= call!70120 (isEmpty!6406 s!10566))))

(declare-fun d!294594 () Bool)

(assert (=> d!294594 e!653070))

(declare-fun c!169558 () Bool)

(assert (=> d!294594 (= c!169558 ((_ is EmptyExpr!2829) r!15766))))

(assert (=> d!294594 (= lt!354730 e!653068)))

(declare-fun c!169559 () Bool)

(assert (=> d!294594 (= c!169559 (isEmpty!6406 s!10566))))

(assert (=> d!294594 (validRegex!1298 r!15766)))

(assert (=> d!294594 (= (matchR!1365 r!15766 s!10566) lt!354730)))

(declare-fun b!1022994 () Bool)

(assert (=> b!1022994 (= e!653070 (= lt!354730 call!70120))))

(assert (= (and d!294594 c!169559) b!1022993))

(assert (= (and d!294594 (not c!169559)) b!1022992))

(assert (= (and d!294594 c!169558) b!1022994))

(assert (= (and d!294594 (not c!169558)) b!1022990))

(assert (= (and b!1022990 c!169557) b!1022997))

(assert (= (and b!1022990 (not c!169557)) b!1022998))

(assert (= (and b!1022998 (not res!459740)) b!1022985))

(assert (= (and b!1022985 res!459741) b!1022989))

(assert (= (and b!1022989 res!459745) b!1022995))

(assert (= (and b!1022995 res!459738) b!1022988))

(assert (= (and b!1022985 (not res!459743)) b!1022986))

(assert (= (and b!1022986 res!459744) b!1022996))

(assert (= (and b!1022996 (not res!459739)) b!1022991))

(assert (= (and b!1022991 (not res!459742)) b!1022987))

(assert (= (or b!1022994 b!1022989 b!1022996) bm!70115))

(declare-fun m!1200951 () Bool)

(assert (=> b!1022988 m!1200951))

(assert (=> d!294594 m!1200845))

(assert (=> d!294594 m!1200849))

(assert (=> b!1022987 m!1200951))

(declare-fun m!1200953 () Bool)

(assert (=> b!1022993 m!1200953))

(assert (=> bm!70115 m!1200845))

(declare-fun m!1200955 () Bool)

(assert (=> b!1022995 m!1200955))

(assert (=> b!1022995 m!1200955))

(declare-fun m!1200957 () Bool)

(assert (=> b!1022995 m!1200957))

(assert (=> b!1022992 m!1200951))

(assert (=> b!1022992 m!1200951))

(declare-fun m!1200959 () Bool)

(assert (=> b!1022992 m!1200959))

(assert (=> b!1022992 m!1200955))

(assert (=> b!1022992 m!1200959))

(assert (=> b!1022992 m!1200955))

(declare-fun m!1200961 () Bool)

(assert (=> b!1022992 m!1200961))

(assert (=> b!1022991 m!1200955))

(assert (=> b!1022991 m!1200955))

(assert (=> b!1022991 m!1200957))

(assert (=> b!1022714 d!294594))

(declare-fun d!294596 () Bool)

(assert (=> d!294596 (= (matchR!1365 r!15766 s!10566) (matchRSpec!628 r!15766 s!10566))))

(declare-fun lt!354736 () Unit!15333)

(declare-fun choose!6476 (Regex!2829 List!10059) Unit!15333)

(assert (=> d!294596 (= lt!354736 (choose!6476 r!15766 s!10566))))

(assert (=> d!294596 (validRegex!1298 r!15766)))

(assert (=> d!294596 (= (mainMatchTheorem!628 r!15766 s!10566) lt!354736)))

(declare-fun bs!246770 () Bool)

(assert (= bs!246770 d!294596))

(assert (=> bs!246770 m!1200829))

(assert (=> bs!246770 m!1200827))

(declare-fun m!1200967 () Bool)

(assert (=> bs!246770 m!1200967))

(assert (=> bs!246770 m!1200849))

(assert (=> b!1022714 d!294596))

(declare-fun b!1022999 () Bool)

(declare-fun res!459751 () Bool)

(declare-fun e!653079 () Bool)

(assert (=> b!1022999 (=> res!459751 e!653079)))

(declare-fun e!653076 () Bool)

(assert (=> b!1022999 (= res!459751 e!653076)))

(declare-fun res!459749 () Bool)

(assert (=> b!1022999 (=> (not res!459749) (not e!653076))))

(declare-fun lt!354737 () Bool)

(assert (=> b!1022999 (= res!459749 lt!354737)))

(declare-fun b!1023000 () Bool)

(declare-fun e!653074 () Bool)

(assert (=> b!1023000 (= e!653079 e!653074)))

(declare-fun res!459752 () Bool)

(assert (=> b!1023000 (=> (not res!459752) (not e!653074))))

(assert (=> b!1023000 (= res!459752 (not lt!354737))))

(declare-fun b!1023001 () Bool)

(declare-fun e!653078 () Bool)

(assert (=> b!1023001 (= e!653078 (not (= (head!1886 s!10566) (c!169488 lt!354712))))))

(declare-fun b!1023002 () Bool)

(assert (=> b!1023002 (= e!653076 (= (head!1886 s!10566) (c!169488 lt!354712)))))

(declare-fun b!1023003 () Bool)

(declare-fun res!459753 () Bool)

(assert (=> b!1023003 (=> (not res!459753) (not e!653076))))

(declare-fun call!70121 () Bool)

(assert (=> b!1023003 (= res!459753 (not call!70121))))

(declare-fun b!1023004 () Bool)

(declare-fun e!653077 () Bool)

(declare-fun e!653073 () Bool)

(assert (=> b!1023004 (= e!653077 e!653073)))

(declare-fun c!169560 () Bool)

(assert (=> b!1023004 (= c!169560 ((_ is EmptyLang!2829) lt!354712))))

(declare-fun b!1023005 () Bool)

(declare-fun res!459750 () Bool)

(assert (=> b!1023005 (=> res!459750 e!653078)))

(assert (=> b!1023005 (= res!459750 (not (isEmpty!6406 (tail!1447 s!10566))))))

(declare-fun b!1023006 () Bool)

(declare-fun e!653075 () Bool)

(assert (=> b!1023006 (= e!653075 (matchR!1365 (derivativeStep!731 lt!354712 (head!1886 s!10566)) (tail!1447 s!10566)))))

(declare-fun b!1023007 () Bool)

(assert (=> b!1023007 (= e!653075 (nullable!930 lt!354712))))

(declare-fun b!1023009 () Bool)

(declare-fun res!459746 () Bool)

(assert (=> b!1023009 (=> (not res!459746) (not e!653076))))

(assert (=> b!1023009 (= res!459746 (isEmpty!6406 (tail!1447 s!10566)))))

(declare-fun b!1023010 () Bool)

(assert (=> b!1023010 (= e!653074 e!653078)))

(declare-fun res!459747 () Bool)

(assert (=> b!1023010 (=> res!459747 e!653078)))

(assert (=> b!1023010 (= res!459747 call!70121)))

(declare-fun b!1023011 () Bool)

(assert (=> b!1023011 (= e!653073 (not lt!354737))))

(declare-fun b!1023012 () Bool)

(declare-fun res!459748 () Bool)

(assert (=> b!1023012 (=> res!459748 e!653079)))

(assert (=> b!1023012 (= res!459748 (not ((_ is ElementMatch!2829) lt!354712)))))

(assert (=> b!1023012 (= e!653073 e!653079)))

(declare-fun bm!70116 () Bool)

(assert (=> bm!70116 (= call!70121 (isEmpty!6406 s!10566))))

(declare-fun d!294600 () Bool)

(assert (=> d!294600 e!653077))

(declare-fun c!169561 () Bool)

(assert (=> d!294600 (= c!169561 ((_ is EmptyExpr!2829) lt!354712))))

(assert (=> d!294600 (= lt!354737 e!653075)))

(declare-fun c!169562 () Bool)

(assert (=> d!294600 (= c!169562 (isEmpty!6406 s!10566))))

(assert (=> d!294600 (validRegex!1298 lt!354712)))

(assert (=> d!294600 (= (matchR!1365 lt!354712 s!10566) lt!354737)))

(declare-fun b!1023008 () Bool)

(assert (=> b!1023008 (= e!653077 (= lt!354737 call!70121))))

(assert (= (and d!294600 c!169562) b!1023007))

(assert (= (and d!294600 (not c!169562)) b!1023006))

(assert (= (and d!294600 c!169561) b!1023008))

(assert (= (and d!294600 (not c!169561)) b!1023004))

(assert (= (and b!1023004 c!169560) b!1023011))

(assert (= (and b!1023004 (not c!169560)) b!1023012))

(assert (= (and b!1023012 (not res!459748)) b!1022999))

(assert (= (and b!1022999 res!459749) b!1023003))

(assert (= (and b!1023003 res!459753) b!1023009))

(assert (= (and b!1023009 res!459746) b!1023002))

(assert (= (and b!1022999 (not res!459751)) b!1023000))

(assert (= (and b!1023000 res!459752) b!1023010))

(assert (= (and b!1023010 (not res!459747)) b!1023005))

(assert (= (and b!1023005 (not res!459750)) b!1023001))

(assert (= (or b!1023008 b!1023003 b!1023010) bm!70116))

(assert (=> b!1023002 m!1200951))

(assert (=> d!294600 m!1200845))

(declare-fun m!1200969 () Bool)

(assert (=> d!294600 m!1200969))

(assert (=> b!1023001 m!1200951))

(declare-fun m!1200971 () Bool)

(assert (=> b!1023007 m!1200971))

(assert (=> bm!70116 m!1200845))

(assert (=> b!1023009 m!1200955))

(assert (=> b!1023009 m!1200955))

(assert (=> b!1023009 m!1200957))

(assert (=> b!1023006 m!1200951))

(assert (=> b!1023006 m!1200951))

(declare-fun m!1200973 () Bool)

(assert (=> b!1023006 m!1200973))

(assert (=> b!1023006 m!1200955))

(assert (=> b!1023006 m!1200973))

(assert (=> b!1023006 m!1200955))

(declare-fun m!1200975 () Bool)

(assert (=> b!1023006 m!1200975))

(assert (=> b!1023005 m!1200955))

(assert (=> b!1023005 m!1200955))

(assert (=> b!1023005 m!1200957))

(assert (=> b!1022713 d!294600))

(declare-fun b!1023013 () Bool)

(declare-fun res!459759 () Bool)

(declare-fun e!653086 () Bool)

(assert (=> b!1023013 (=> res!459759 e!653086)))

(declare-fun e!653083 () Bool)

(assert (=> b!1023013 (= res!459759 e!653083)))

(declare-fun res!459757 () Bool)

(assert (=> b!1023013 (=> (not res!459757) (not e!653083))))

(declare-fun lt!354738 () Bool)

(assert (=> b!1023013 (= res!459757 lt!354738)))

(declare-fun b!1023014 () Bool)

(declare-fun e!653081 () Bool)

(assert (=> b!1023014 (= e!653086 e!653081)))

(declare-fun res!459760 () Bool)

(assert (=> b!1023014 (=> (not res!459760) (not e!653081))))

(assert (=> b!1023014 (= res!459760 (not lt!354738))))

(declare-fun b!1023015 () Bool)

(declare-fun e!653085 () Bool)

(assert (=> b!1023015 (= e!653085 (not (= (head!1886 s!10566) (c!169488 (regTwo!6170 r!15766)))))))

(declare-fun b!1023016 () Bool)

(assert (=> b!1023016 (= e!653083 (= (head!1886 s!10566) (c!169488 (regTwo!6170 r!15766))))))

(declare-fun b!1023017 () Bool)

(declare-fun res!459761 () Bool)

(assert (=> b!1023017 (=> (not res!459761) (not e!653083))))

(declare-fun call!70122 () Bool)

(assert (=> b!1023017 (= res!459761 (not call!70122))))

(declare-fun b!1023018 () Bool)

(declare-fun e!653084 () Bool)

(declare-fun e!653080 () Bool)

(assert (=> b!1023018 (= e!653084 e!653080)))

(declare-fun c!169563 () Bool)

(assert (=> b!1023018 (= c!169563 ((_ is EmptyLang!2829) (regTwo!6170 r!15766)))))

(declare-fun b!1023019 () Bool)

(declare-fun res!459758 () Bool)

(assert (=> b!1023019 (=> res!459758 e!653085)))

(assert (=> b!1023019 (= res!459758 (not (isEmpty!6406 (tail!1447 s!10566))))))

(declare-fun b!1023020 () Bool)

(declare-fun e!653082 () Bool)

(assert (=> b!1023020 (= e!653082 (matchR!1365 (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566)) (tail!1447 s!10566)))))

(declare-fun b!1023021 () Bool)

(assert (=> b!1023021 (= e!653082 (nullable!930 (regTwo!6170 r!15766)))))

(declare-fun b!1023023 () Bool)

(declare-fun res!459754 () Bool)

(assert (=> b!1023023 (=> (not res!459754) (not e!653083))))

(assert (=> b!1023023 (= res!459754 (isEmpty!6406 (tail!1447 s!10566)))))

(declare-fun b!1023024 () Bool)

(assert (=> b!1023024 (= e!653081 e!653085)))

(declare-fun res!459755 () Bool)

(assert (=> b!1023024 (=> res!459755 e!653085)))

(assert (=> b!1023024 (= res!459755 call!70122)))

(declare-fun b!1023025 () Bool)

(assert (=> b!1023025 (= e!653080 (not lt!354738))))

(declare-fun b!1023026 () Bool)

(declare-fun res!459756 () Bool)

(assert (=> b!1023026 (=> res!459756 e!653086)))

(assert (=> b!1023026 (= res!459756 (not ((_ is ElementMatch!2829) (regTwo!6170 r!15766))))))

(assert (=> b!1023026 (= e!653080 e!653086)))

(declare-fun bm!70117 () Bool)

(assert (=> bm!70117 (= call!70122 (isEmpty!6406 s!10566))))

(declare-fun d!294602 () Bool)

(assert (=> d!294602 e!653084))

(declare-fun c!169564 () Bool)

(assert (=> d!294602 (= c!169564 ((_ is EmptyExpr!2829) (regTwo!6170 r!15766)))))

(assert (=> d!294602 (= lt!354738 e!653082)))

(declare-fun c!169565 () Bool)

(assert (=> d!294602 (= c!169565 (isEmpty!6406 s!10566))))

(assert (=> d!294602 (validRegex!1298 (regTwo!6170 r!15766))))

(assert (=> d!294602 (= (matchR!1365 (regTwo!6170 r!15766) s!10566) lt!354738)))

(declare-fun b!1023022 () Bool)

(assert (=> b!1023022 (= e!653084 (= lt!354738 call!70122))))

(assert (= (and d!294602 c!169565) b!1023021))

(assert (= (and d!294602 (not c!169565)) b!1023020))

(assert (= (and d!294602 c!169564) b!1023022))

(assert (= (and d!294602 (not c!169564)) b!1023018))

(assert (= (and b!1023018 c!169563) b!1023025))

(assert (= (and b!1023018 (not c!169563)) b!1023026))

(assert (= (and b!1023026 (not res!459756)) b!1023013))

(assert (= (and b!1023013 res!459757) b!1023017))

(assert (= (and b!1023017 res!459761) b!1023023))

(assert (= (and b!1023023 res!459754) b!1023016))

(assert (= (and b!1023013 (not res!459759)) b!1023014))

(assert (= (and b!1023014 res!459760) b!1023024))

(assert (= (and b!1023024 (not res!459755)) b!1023019))

(assert (= (and b!1023019 (not res!459758)) b!1023015))

(assert (= (or b!1023022 b!1023017 b!1023024) bm!70117))

(assert (=> b!1023016 m!1200951))

(assert (=> d!294602 m!1200845))

(assert (=> d!294602 m!1200823))

(assert (=> b!1023015 m!1200951))

(declare-fun m!1200977 () Bool)

(assert (=> b!1023021 m!1200977))

(assert (=> bm!70117 m!1200845))

(assert (=> b!1023023 m!1200955))

(assert (=> b!1023023 m!1200955))

(assert (=> b!1023023 m!1200957))

(assert (=> b!1023020 m!1200951))

(assert (=> b!1023020 m!1200951))

(declare-fun m!1200979 () Bool)

(assert (=> b!1023020 m!1200979))

(assert (=> b!1023020 m!1200955))

(assert (=> b!1023020 m!1200979))

(assert (=> b!1023020 m!1200955))

(declare-fun m!1200981 () Bool)

(assert (=> b!1023020 m!1200981))

(assert (=> b!1023019 m!1200955))

(assert (=> b!1023019 m!1200955))

(assert (=> b!1023019 m!1200957))

(assert (=> b!1022713 d!294602))

(declare-fun b!1023081 () Bool)

(declare-fun c!169587 () Bool)

(assert (=> b!1023081 (= c!169587 ((_ is Concat!4662) (regTwo!6170 r!15766)))))

(declare-fun e!653122 () Regex!2829)

(declare-fun e!653117 () Regex!2829)

(assert (=> b!1023081 (= e!653122 e!653117)))

(declare-fun b!1023082 () Bool)

(declare-fun call!70138 () Regex!2829)

(declare-fun call!70139 () Regex!2829)

(assert (=> b!1023082 (= e!653117 (Concat!4662 call!70138 call!70139))))

(declare-fun b!1023083 () Bool)

(declare-fun e!653120 () Regex!2829)

(assert (=> b!1023083 (= e!653120 (regTwo!6170 r!15766))))

(declare-fun b!1023084 () Bool)

(declare-fun c!169586 () Bool)

(assert (=> b!1023084 (= c!169586 ((_ is Star!2829) (regTwo!6170 r!15766)))))

(declare-fun e!653121 () Regex!2829)

(assert (=> b!1023084 (= e!653121 e!653120)))

(declare-fun d!294604 () Bool)

(declare-fun e!653119 () Bool)

(assert (=> d!294604 e!653119))

(declare-fun res!459780 () Bool)

(assert (=> d!294604 (=> (not res!459780) (not e!653119))))

(declare-fun lt!354741 () Regex!2829)

(assert (=> d!294604 (= res!459780 (validRegex!1298 lt!354741))))

(declare-fun e!653118 () Regex!2829)

(assert (=> d!294604 (= lt!354741 e!653118)))

(declare-fun c!169585 () Bool)

(assert (=> d!294604 (= c!169585 (and ((_ is Concat!4662) (regTwo!6170 r!15766)) ((_ is EmptyExpr!2829) (regOne!6170 (regTwo!6170 r!15766)))))))

(assert (=> d!294604 (validRegex!1298 (regTwo!6170 r!15766))))

(assert (=> d!294604 (= (removeUselessConcat!398 (regTwo!6170 r!15766)) lt!354741)))

(declare-fun bm!70132 () Bool)

(declare-fun call!70137 () Regex!2829)

(assert (=> bm!70132 (= call!70137 call!70138)))

(declare-fun bm!70133 () Bool)

(declare-fun call!70141 () Regex!2829)

(assert (=> bm!70133 (= call!70138 call!70141)))

(declare-fun b!1023085 () Bool)

(assert (=> b!1023085 (= e!653121 (Union!2829 call!70139 call!70137))))

(declare-fun b!1023086 () Bool)

(assert (=> b!1023086 (= e!653117 e!653121)))

(declare-fun c!169584 () Bool)

(assert (=> b!1023086 (= c!169584 ((_ is Union!2829) (regTwo!6170 r!15766)))))

(declare-fun b!1023087 () Bool)

(assert (=> b!1023087 (= e!653119 (= (nullable!930 lt!354741) (nullable!930 (regTwo!6170 r!15766))))))

(declare-fun b!1023088 () Bool)

(assert (=> b!1023088 (= e!653122 call!70141)))

(declare-fun bm!70134 () Bool)

(assert (=> bm!70134 (= call!70139 (removeUselessConcat!398 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))))))

(declare-fun call!70140 () Regex!2829)

(declare-fun bm!70135 () Bool)

(declare-fun c!169588 () Bool)

(assert (=> bm!70135 (= call!70140 (removeUselessConcat!398 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))))))

(declare-fun b!1023089 () Bool)

(assert (=> b!1023089 (= e!653118 e!653122)))

(assert (=> b!1023089 (= c!169588 (and ((_ is Concat!4662) (regTwo!6170 r!15766)) ((_ is EmptyExpr!2829) (regTwo!6170 (regTwo!6170 r!15766)))))))

(declare-fun b!1023090 () Bool)

(assert (=> b!1023090 (= e!653118 call!70140)))

(declare-fun bm!70136 () Bool)

(assert (=> bm!70136 (= call!70141 call!70140)))

(declare-fun b!1023091 () Bool)

(assert (=> b!1023091 (= e!653120 (Star!2829 call!70137))))

(assert (= (and d!294604 c!169585) b!1023090))

(assert (= (and d!294604 (not c!169585)) b!1023089))

(assert (= (and b!1023089 c!169588) b!1023088))

(assert (= (and b!1023089 (not c!169588)) b!1023081))

(assert (= (and b!1023081 c!169587) b!1023082))

(assert (= (and b!1023081 (not c!169587)) b!1023086))

(assert (= (and b!1023086 c!169584) b!1023085))

(assert (= (and b!1023086 (not c!169584)) b!1023084))

(assert (= (and b!1023084 c!169586) b!1023091))

(assert (= (and b!1023084 (not c!169586)) b!1023083))

(assert (= (or b!1023085 b!1023091) bm!70132))

(assert (= (or b!1023082 b!1023085) bm!70134))

(assert (= (or b!1023082 bm!70132) bm!70133))

(assert (= (or b!1023088 bm!70133) bm!70136))

(assert (= (or b!1023090 bm!70136) bm!70135))

(assert (= (and d!294604 res!459780) b!1023087))

(declare-fun m!1200983 () Bool)

(assert (=> d!294604 m!1200983))

(assert (=> d!294604 m!1200823))

(declare-fun m!1200985 () Bool)

(assert (=> b!1023087 m!1200985))

(assert (=> b!1023087 m!1200977))

(declare-fun m!1200987 () Bool)

(assert (=> bm!70134 m!1200987))

(declare-fun m!1200989 () Bool)

(assert (=> bm!70135 m!1200989))

(assert (=> b!1022713 d!294604))

(declare-fun d!294606 () Bool)

(assert (=> d!294606 (= (matchR!1365 (regTwo!6170 r!15766) s!10566) (matchR!1365 (removeUselessConcat!398 (regTwo!6170 r!15766)) s!10566))))

(declare-fun lt!354745 () Unit!15333)

(declare-fun choose!6477 (Regex!2829 List!10059) Unit!15333)

(assert (=> d!294606 (= lt!354745 (choose!6477 (regTwo!6170 r!15766) s!10566))))

(assert (=> d!294606 (validRegex!1298 (regTwo!6170 r!15766))))

(assert (=> d!294606 (= (lemmaRemoveUselessConcatSound!238 (regTwo!6170 r!15766) s!10566) lt!354745)))

(declare-fun bs!246774 () Bool)

(assert (= bs!246774 d!294606))

(declare-fun m!1201001 () Bool)

(assert (=> bs!246774 m!1201001))

(assert (=> bs!246774 m!1200823))

(assert (=> bs!246774 m!1200817))

(declare-fun m!1201005 () Bool)

(assert (=> bs!246774 m!1201005))

(assert (=> bs!246774 m!1200815))

(assert (=> bs!246774 m!1200817))

(assert (=> b!1022713 d!294606))

(declare-fun d!294612 () Bool)

(assert (=> d!294612 (= (isEmpty!6405 lt!354715) (not ((_ is Some!2361) lt!354715)))))

(assert (=> b!1022708 d!294612))

(declare-fun d!294614 () Bool)

(assert (=> d!294614 (= (isDefined!2004 lt!354715) (not (isEmpty!6405 lt!354715)))))

(declare-fun bs!246775 () Bool)

(assert (= bs!246775 d!294614))

(assert (=> bs!246775 m!1200825))

(assert (=> b!1022717 d!294614))

(declare-fun d!294616 () Bool)

(declare-fun choose!6479 (Int) Bool)

(assert (=> d!294616 (= (Exists!558 lambda!36426) (choose!6479 lambda!36426))))

(declare-fun bs!246776 () Bool)

(assert (= bs!246776 d!294616))

(declare-fun m!1201007 () Bool)

(assert (=> bs!246776 m!1201007))

(assert (=> b!1022717 d!294616))

(declare-fun d!294618 () Bool)

(assert (=> d!294618 (= (isEmpty!6406 s!10566) ((_ is Nil!10043) s!10566))))

(assert (=> b!1022717 d!294618))

(declare-fun b!1023139 () Bool)

(declare-fun e!653152 () Option!2362)

(declare-fun e!653149 () Option!2362)

(assert (=> b!1023139 (= e!653152 e!653149)))

(declare-fun c!169601 () Bool)

(assert (=> b!1023139 (= c!169601 ((_ is Nil!10043) s!10566))))

(declare-fun b!1023140 () Bool)

(declare-fun res!459806 () Bool)

(declare-fun e!653153 () Bool)

(assert (=> b!1023140 (=> (not res!459806) (not e!653153))))

(declare-fun lt!354759 () Option!2362)

(declare-fun get!3542 (Option!2362) tuple2!11440)

(assert (=> b!1023140 (= res!459806 (matchR!1365 EmptyExpr!2829 (_1!6546 (get!3542 lt!354759))))))

(declare-fun b!1023141 () Bool)

(assert (=> b!1023141 (= e!653149 None!2361)))

(declare-fun b!1023142 () Bool)

(assert (=> b!1023142 (= e!653153 (= (++!2747 (_1!6546 (get!3542 lt!354759)) (_2!6546 (get!3542 lt!354759))) s!10566))))

(declare-fun b!1023143 () Bool)

(assert (=> b!1023143 (= e!653152 (Some!2361 (tuple2!11441 Nil!10043 s!10566)))))

(declare-fun d!294620 () Bool)

(declare-fun e!653150 () Bool)

(assert (=> d!294620 e!653150))

(declare-fun res!459808 () Bool)

(assert (=> d!294620 (=> res!459808 e!653150)))

(assert (=> d!294620 (= res!459808 e!653153)))

(declare-fun res!459807 () Bool)

(assert (=> d!294620 (=> (not res!459807) (not e!653153))))

(assert (=> d!294620 (= res!459807 (isDefined!2004 lt!354759))))

(assert (=> d!294620 (= lt!354759 e!653152)))

(declare-fun c!169600 () Bool)

(declare-fun e!653151 () Bool)

(assert (=> d!294620 (= c!169600 e!653151)))

(declare-fun res!459810 () Bool)

(assert (=> d!294620 (=> (not res!459810) (not e!653151))))

(assert (=> d!294620 (= res!459810 (matchR!1365 EmptyExpr!2829 Nil!10043))))

(assert (=> d!294620 (validRegex!1298 EmptyExpr!2829)))

(assert (=> d!294620 (= (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) Nil!10043 s!10566 s!10566) lt!354759)))

(declare-fun b!1023144 () Bool)

(declare-fun lt!354760 () Unit!15333)

(declare-fun lt!354758 () Unit!15333)

(assert (=> b!1023144 (= lt!354760 lt!354758)))

(assert (=> b!1023144 (= (++!2747 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (t!101105 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!343 (List!10059 C!6228 List!10059 List!10059) Unit!15333)

(assert (=> b!1023144 (= lt!354758 (lemmaMoveElementToOtherListKeepsConcatEq!343 Nil!10043 (h!15444 s!10566) (t!101105 s!10566) s!10566))))

(assert (=> b!1023144 (= e!653149 (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (t!101105 s!10566) s!10566))))

(declare-fun b!1023145 () Bool)

(assert (=> b!1023145 (= e!653150 (not (isDefined!2004 lt!354759)))))

(declare-fun b!1023146 () Bool)

(declare-fun res!459809 () Bool)

(assert (=> b!1023146 (=> (not res!459809) (not e!653153))))

(assert (=> b!1023146 (= res!459809 (matchR!1365 (regTwo!6170 r!15766) (_2!6546 (get!3542 lt!354759))))))

(declare-fun b!1023147 () Bool)

(assert (=> b!1023147 (= e!653151 (matchR!1365 (regTwo!6170 r!15766) s!10566))))

(assert (= (and d!294620 res!459810) b!1023147))

(assert (= (and d!294620 c!169600) b!1023143))

(assert (= (and d!294620 (not c!169600)) b!1023139))

(assert (= (and b!1023139 c!169601) b!1023141))

(assert (= (and b!1023139 (not c!169601)) b!1023144))

(assert (= (and d!294620 res!459807) b!1023140))

(assert (= (and b!1023140 res!459806) b!1023146))

(assert (= (and b!1023146 res!459809) b!1023142))

(assert (= (and d!294620 (not res!459808)) b!1023145))

(declare-fun m!1201019 () Bool)

(assert (=> d!294620 m!1201019))

(assert (=> d!294620 m!1200833))

(assert (=> d!294620 m!1200873))

(declare-fun m!1201021 () Bool)

(assert (=> b!1023146 m!1201021))

(declare-fun m!1201023 () Bool)

(assert (=> b!1023146 m!1201023))

(assert (=> b!1023145 m!1201019))

(assert (=> b!1023147 m!1200815))

(declare-fun m!1201025 () Bool)

(assert (=> b!1023144 m!1201025))

(assert (=> b!1023144 m!1201025))

(declare-fun m!1201027 () Bool)

(assert (=> b!1023144 m!1201027))

(declare-fun m!1201029 () Bool)

(assert (=> b!1023144 m!1201029))

(assert (=> b!1023144 m!1201025))

(declare-fun m!1201031 () Bool)

(assert (=> b!1023144 m!1201031))

(assert (=> b!1023142 m!1201021))

(declare-fun m!1201033 () Bool)

(assert (=> b!1023142 m!1201033))

(assert (=> b!1023140 m!1201021))

(declare-fun m!1201035 () Bool)

(assert (=> b!1023140 m!1201035))

(assert (=> b!1022717 d!294620))

(declare-fun bs!246790 () Bool)

(declare-fun d!294630 () Bool)

(assert (= bs!246790 (and d!294630 b!1022717)))

(declare-fun lambda!36450 () Int)

(assert (=> bs!246790 (= lambda!36450 lambda!36425)))

(assert (=> bs!246790 (not (= lambda!36450 lambda!36426))))

(declare-fun bs!246791 () Bool)

(assert (= bs!246791 (and d!294630 b!1022970)))

(assert (=> bs!246791 (not (= lambda!36450 lambda!36431))))

(declare-fun bs!246792 () Bool)

(assert (= bs!246792 (and d!294630 b!1022971)))

(assert (=> bs!246792 (not (= lambda!36450 lambda!36432))))

(assert (=> d!294630 true))

(assert (=> d!294630 true))

(assert (=> d!294630 true))

(assert (=> d!294630 (= (isDefined!2004 (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) Nil!10043 s!10566 s!10566)) (Exists!558 lambda!36450))))

(declare-fun lt!354766 () Unit!15333)

(declare-fun choose!6480 (Regex!2829 Regex!2829 List!10059) Unit!15333)

(assert (=> d!294630 (= lt!354766 (choose!6480 EmptyExpr!2829 (regTwo!6170 r!15766) s!10566))))

(assert (=> d!294630 (validRegex!1298 EmptyExpr!2829)))

(assert (=> d!294630 (= (lemmaFindConcatSeparationEquivalentToExists!468 EmptyExpr!2829 (regTwo!6170 r!15766) s!10566) lt!354766)))

(declare-fun bs!246793 () Bool)

(assert (= bs!246793 d!294630))

(assert (=> bs!246793 m!1200847))

(declare-fun m!1201045 () Bool)

(assert (=> bs!246793 m!1201045))

(declare-fun m!1201047 () Bool)

(assert (=> bs!246793 m!1201047))

(assert (=> bs!246793 m!1200873))

(declare-fun m!1201049 () Bool)

(assert (=> bs!246793 m!1201049))

(assert (=> bs!246793 m!1200847))

(assert (=> b!1022717 d!294630))

(declare-fun bs!246794 () Bool)

(declare-fun d!294638 () Bool)

(assert (= bs!246794 (and d!294638 b!1022717)))

(declare-fun lambda!36455 () Int)

(assert (=> bs!246794 (not (= lambda!36455 lambda!36426))))

(declare-fun bs!246795 () Bool)

(assert (= bs!246795 (and d!294638 b!1022970)))

(assert (=> bs!246795 (not (= lambda!36455 lambda!36431))))

(declare-fun bs!246796 () Bool)

(assert (= bs!246796 (and d!294638 d!294630)))

(assert (=> bs!246796 (= lambda!36455 lambda!36450)))

(assert (=> bs!246794 (= lambda!36455 lambda!36425)))

(declare-fun bs!246797 () Bool)

(assert (= bs!246797 (and d!294638 b!1022971)))

(assert (=> bs!246797 (not (= lambda!36455 lambda!36432))))

(assert (=> d!294638 true))

(assert (=> d!294638 true))

(assert (=> d!294638 true))

(declare-fun lambda!36456 () Int)

(assert (=> bs!246794 (= lambda!36456 lambda!36426)))

(assert (=> bs!246795 (not (= lambda!36456 lambda!36431))))

(assert (=> bs!246796 (not (= lambda!36456 lambda!36450))))

(declare-fun bs!246798 () Bool)

(assert (= bs!246798 d!294638))

(assert (=> bs!246798 (not (= lambda!36456 lambda!36455))))

(assert (=> bs!246794 (not (= lambda!36456 lambda!36425))))

(assert (=> bs!246797 (= (= EmptyExpr!2829 (regOne!6170 r!15766)) (= lambda!36456 lambda!36432))))

(assert (=> d!294638 true))

(assert (=> d!294638 true))

(assert (=> d!294638 true))

(assert (=> d!294638 (= (Exists!558 lambda!36455) (Exists!558 lambda!36456))))

(declare-fun lt!354775 () Unit!15333)

(declare-fun choose!6481 (Regex!2829 Regex!2829 List!10059) Unit!15333)

(assert (=> d!294638 (= lt!354775 (choose!6481 EmptyExpr!2829 (regTwo!6170 r!15766) s!10566))))

(assert (=> d!294638 (validRegex!1298 EmptyExpr!2829)))

(assert (=> d!294638 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!260 EmptyExpr!2829 (regTwo!6170 r!15766) s!10566) lt!354775)))

(declare-fun m!1201051 () Bool)

(assert (=> bs!246798 m!1201051))

(declare-fun m!1201053 () Bool)

(assert (=> bs!246798 m!1201053))

(declare-fun m!1201055 () Bool)

(assert (=> bs!246798 m!1201055))

(assert (=> bs!246798 m!1200873))

(assert (=> b!1022717 d!294638))

(declare-fun d!294640 () Bool)

(assert (=> d!294640 (= (Exists!558 lambda!36425) (choose!6479 lambda!36425))))

(declare-fun bs!246799 () Bool)

(assert (= bs!246799 d!294640))

(declare-fun m!1201057 () Bool)

(assert (=> bs!246799 m!1201057))

(assert (=> b!1022717 d!294640))

(declare-fun b!1023206 () Bool)

(declare-fun e!653183 () Bool)

(declare-fun lt!354781 () List!10059)

(assert (=> b!1023206 (= e!653183 (or (not (= s!10566 Nil!10043)) (= lt!354781 Nil!10043)))))

(declare-fun b!1023205 () Bool)

(declare-fun res!459851 () Bool)

(assert (=> b!1023205 (=> (not res!459851) (not e!653183))))

(declare-fun size!7985 (List!10059) Int)

(assert (=> b!1023205 (= res!459851 (= (size!7985 lt!354781) (+ (size!7985 Nil!10043) (size!7985 s!10566))))))

(declare-fun b!1023203 () Bool)

(declare-fun e!653184 () List!10059)

(assert (=> b!1023203 (= e!653184 s!10566)))

(declare-fun b!1023204 () Bool)

(assert (=> b!1023204 (= e!653184 (Cons!10043 (h!15444 Nil!10043) (++!2747 (t!101105 Nil!10043) s!10566)))))

(declare-fun d!294642 () Bool)

(assert (=> d!294642 e!653183))

(declare-fun res!459850 () Bool)

(assert (=> d!294642 (=> (not res!459850) (not e!653183))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1442 (List!10059) (InoxSet C!6228))

(assert (=> d!294642 (= res!459850 (= (content!1442 lt!354781) ((_ map or) (content!1442 Nil!10043) (content!1442 s!10566))))))

(assert (=> d!294642 (= lt!354781 e!653184)))

(declare-fun c!169610 () Bool)

(assert (=> d!294642 (= c!169610 ((_ is Nil!10043) Nil!10043))))

(assert (=> d!294642 (= (++!2747 Nil!10043 s!10566) lt!354781)))

(assert (= (and d!294642 c!169610) b!1023203))

(assert (= (and d!294642 (not c!169610)) b!1023204))

(assert (= (and d!294642 res!459850) b!1023205))

(assert (= (and b!1023205 res!459851) b!1023206))

(declare-fun m!1201077 () Bool)

(assert (=> b!1023205 m!1201077))

(declare-fun m!1201079 () Bool)

(assert (=> b!1023205 m!1201079))

(declare-fun m!1201081 () Bool)

(assert (=> b!1023205 m!1201081))

(declare-fun m!1201083 () Bool)

(assert (=> b!1023204 m!1201083))

(declare-fun m!1201085 () Bool)

(assert (=> d!294642 m!1201085))

(declare-fun m!1201087 () Bool)

(assert (=> d!294642 m!1201087))

(declare-fun m!1201089 () Bool)

(assert (=> d!294642 m!1201089))

(assert (=> b!1022712 d!294642))

(declare-fun b!1023251 () Bool)

(declare-fun e!653212 () Bool)

(declare-fun e!653213 () Bool)

(assert (=> b!1023251 (= e!653212 e!653213)))

(declare-fun res!459877 () Bool)

(assert (=> b!1023251 (=> (not res!459877) (not e!653213))))

(assert (=> b!1023251 (= res!459877 (not ((_ is Nil!10043) Nil!10043)))))

(declare-fun b!1023252 () Bool)

(declare-fun res!459880 () Bool)

(assert (=> b!1023252 (=> (not res!459880) (not e!653213))))

(assert (=> b!1023252 (= res!459880 (= (head!1886 Nil!10043) (head!1886 Nil!10043)))))

(declare-fun b!1023253 () Bool)

(assert (=> b!1023253 (= e!653213 (isPrefix!1011 (tail!1447 Nil!10043) (tail!1447 Nil!10043)))))

(declare-fun d!294646 () Bool)

(declare-fun e!653214 () Bool)

(assert (=> d!294646 e!653214))

(declare-fun res!459878 () Bool)

(assert (=> d!294646 (=> res!459878 e!653214)))

(declare-fun lt!354787 () Bool)

(assert (=> d!294646 (= res!459878 (not lt!354787))))

(assert (=> d!294646 (= lt!354787 e!653212)))

(declare-fun res!459879 () Bool)

(assert (=> d!294646 (=> res!459879 e!653212)))

(assert (=> d!294646 (= res!459879 ((_ is Nil!10043) Nil!10043))))

(assert (=> d!294646 (= (isPrefix!1011 Nil!10043 Nil!10043) lt!354787)))

(declare-fun b!1023254 () Bool)

(assert (=> b!1023254 (= e!653214 (>= (size!7985 Nil!10043) (size!7985 Nil!10043)))))

(assert (= (and d!294646 (not res!459879)) b!1023251))

(assert (= (and b!1023251 res!459877) b!1023252))

(assert (= (and b!1023252 res!459880) b!1023253))

(assert (= (and d!294646 (not res!459878)) b!1023254))

(assert (=> b!1023252 m!1200869))

(assert (=> b!1023252 m!1200869))

(assert (=> b!1023253 m!1200877))

(assert (=> b!1023253 m!1200877))

(assert (=> b!1023253 m!1200877))

(assert (=> b!1023253 m!1200877))

(declare-fun m!1201099 () Bool)

(assert (=> b!1023253 m!1201099))

(assert (=> b!1023254 m!1201079))

(assert (=> b!1023254 m!1201079))

(assert (=> b!1022711 d!294646))

(declare-fun e!653222 () Bool)

(assert (=> b!1022705 (= tp!310538 e!653222)))

(declare-fun b!1023288 () Bool)

(declare-fun tp!310593 () Bool)

(declare-fun tp!310590 () Bool)

(assert (=> b!1023288 (= e!653222 (and tp!310593 tp!310590))))

(declare-fun b!1023285 () Bool)

(assert (=> b!1023285 (= e!653222 tp_is_empty!5301)))

(declare-fun b!1023286 () Bool)

(declare-fun tp!310592 () Bool)

(declare-fun tp!310589 () Bool)

(assert (=> b!1023286 (= e!653222 (and tp!310592 tp!310589))))

(declare-fun b!1023287 () Bool)

(declare-fun tp!310591 () Bool)

(assert (=> b!1023287 (= e!653222 tp!310591)))

(assert (= (and b!1022705 ((_ is ElementMatch!2829) (reg!3158 r!15766))) b!1023285))

(assert (= (and b!1022705 ((_ is Concat!4662) (reg!3158 r!15766))) b!1023286))

(assert (= (and b!1022705 ((_ is Star!2829) (reg!3158 r!15766))) b!1023287))

(assert (= (and b!1022705 ((_ is Union!2829) (reg!3158 r!15766))) b!1023288))

(declare-fun e!653223 () Bool)

(assert (=> b!1022715 (= tp!310536 e!653223)))

(declare-fun b!1023292 () Bool)

(declare-fun tp!310598 () Bool)

(declare-fun tp!310595 () Bool)

(assert (=> b!1023292 (= e!653223 (and tp!310598 tp!310595))))

(declare-fun b!1023289 () Bool)

(assert (=> b!1023289 (= e!653223 tp_is_empty!5301)))

(declare-fun b!1023290 () Bool)

(declare-fun tp!310597 () Bool)

(declare-fun tp!310594 () Bool)

(assert (=> b!1023290 (= e!653223 (and tp!310597 tp!310594))))

(declare-fun b!1023291 () Bool)

(declare-fun tp!310596 () Bool)

(assert (=> b!1023291 (= e!653223 tp!310596)))

(assert (= (and b!1022715 ((_ is ElementMatch!2829) (regOne!6170 r!15766))) b!1023289))

(assert (= (and b!1022715 ((_ is Concat!4662) (regOne!6170 r!15766))) b!1023290))

(assert (= (and b!1022715 ((_ is Star!2829) (regOne!6170 r!15766))) b!1023291))

(assert (= (and b!1022715 ((_ is Union!2829) (regOne!6170 r!15766))) b!1023292))

(declare-fun e!653224 () Bool)

(assert (=> b!1022715 (= tp!310537 e!653224)))

(declare-fun b!1023296 () Bool)

(declare-fun tp!310603 () Bool)

(declare-fun tp!310600 () Bool)

(assert (=> b!1023296 (= e!653224 (and tp!310603 tp!310600))))

(declare-fun b!1023293 () Bool)

(assert (=> b!1023293 (= e!653224 tp_is_empty!5301)))

(declare-fun b!1023294 () Bool)

(declare-fun tp!310602 () Bool)

(declare-fun tp!310599 () Bool)

(assert (=> b!1023294 (= e!653224 (and tp!310602 tp!310599))))

(declare-fun b!1023295 () Bool)

(declare-fun tp!310601 () Bool)

(assert (=> b!1023295 (= e!653224 tp!310601)))

(assert (= (and b!1022715 ((_ is ElementMatch!2829) (regTwo!6170 r!15766))) b!1023293))

(assert (= (and b!1022715 ((_ is Concat!4662) (regTwo!6170 r!15766))) b!1023294))

(assert (= (and b!1022715 ((_ is Star!2829) (regTwo!6170 r!15766))) b!1023295))

(assert (= (and b!1022715 ((_ is Union!2829) (regTwo!6170 r!15766))) b!1023296))

(declare-fun b!1023301 () Bool)

(declare-fun e!653227 () Bool)

(declare-fun tp!310606 () Bool)

(assert (=> b!1023301 (= e!653227 (and tp_is_empty!5301 tp!310606))))

(assert (=> b!1022709 (= tp!310539 e!653227)))

(assert (= (and b!1022709 ((_ is Cons!10043) (t!101105 s!10566))) b!1023301))

(declare-fun e!653228 () Bool)

(assert (=> b!1022707 (= tp!310540 e!653228)))

(declare-fun b!1023305 () Bool)

(declare-fun tp!310611 () Bool)

(declare-fun tp!310608 () Bool)

(assert (=> b!1023305 (= e!653228 (and tp!310611 tp!310608))))

(declare-fun b!1023302 () Bool)

(assert (=> b!1023302 (= e!653228 tp_is_empty!5301)))

(declare-fun b!1023303 () Bool)

(declare-fun tp!310610 () Bool)

(declare-fun tp!310607 () Bool)

(assert (=> b!1023303 (= e!653228 (and tp!310610 tp!310607))))

(declare-fun b!1023304 () Bool)

(declare-fun tp!310609 () Bool)

(assert (=> b!1023304 (= e!653228 tp!310609)))

(assert (= (and b!1022707 ((_ is ElementMatch!2829) (regOne!6171 r!15766))) b!1023302))

(assert (= (and b!1022707 ((_ is Concat!4662) (regOne!6171 r!15766))) b!1023303))

(assert (= (and b!1022707 ((_ is Star!2829) (regOne!6171 r!15766))) b!1023304))

(assert (= (and b!1022707 ((_ is Union!2829) (regOne!6171 r!15766))) b!1023305))

(declare-fun e!653229 () Bool)

(assert (=> b!1022707 (= tp!310535 e!653229)))

(declare-fun b!1023309 () Bool)

(declare-fun tp!310616 () Bool)

(declare-fun tp!310613 () Bool)

(assert (=> b!1023309 (= e!653229 (and tp!310616 tp!310613))))

(declare-fun b!1023306 () Bool)

(assert (=> b!1023306 (= e!653229 tp_is_empty!5301)))

(declare-fun b!1023307 () Bool)

(declare-fun tp!310615 () Bool)

(declare-fun tp!310612 () Bool)

(assert (=> b!1023307 (= e!653229 (and tp!310615 tp!310612))))

(declare-fun b!1023308 () Bool)

(declare-fun tp!310614 () Bool)

(assert (=> b!1023308 (= e!653229 tp!310614)))

(assert (= (and b!1022707 ((_ is ElementMatch!2829) (regTwo!6171 r!15766))) b!1023306))

(assert (= (and b!1022707 ((_ is Concat!4662) (regTwo!6171 r!15766))) b!1023307))

(assert (= (and b!1022707 ((_ is Star!2829) (regTwo!6171 r!15766))) b!1023308))

(assert (= (and b!1022707 ((_ is Union!2829) (regTwo!6171 r!15766))) b!1023309))

(check-sat (not b!1022993) (not b!1023294) (not b!1022991) (not b!1023204) (not b!1023252) (not bm!70109) (not b!1023295) (not d!294604) (not b!1022864) (not b!1023087) (not b!1022992) (not b!1023308) (not b!1023140) (not b!1023287) (not bm!70117) (not b!1022799) (not d!294630) (not b!1023290) (not b!1023142) (not b!1023144) (not d!294616) (not b!1023288) (not b!1023002) (not b!1023292) (not b!1022966) (not b!1023009) (not b!1023305) (not bm!70116) (not b!1022795) (not b!1022972) (not bm!70135) (not d!294642) (not b!1023304) (not b!1023296) (not bm!70077) (not b!1022988) (not b!1023021) (not b!1023015) (not d!294640) (not d!294594) (not b!1022995) (not d!294572) (not bm!70080) (not b!1023001) (not b!1023016) (not b!1023286) (not b!1022794) (not b!1023146) tp_is_empty!5301 (not b!1022987) (not b!1023005) (not bm!70081) (not bm!70078) (not bm!70070) (not b!1022802) (not b!1023019) (not b!1023291) (not b!1023145) (not b!1023020) (not d!294596) (not b!1023253) (not b!1022800) (not d!294606) (not b!1023301) (not bm!70108) (not b!1022837) (not b!1023007) (not d!294614) (not d!294602) (not b!1023254) (not b!1022798) (not bm!70134) (not bm!70115) (not b!1023147) (not b!1023023) (not b!1023303) (not b!1023309) (not d!294638) (not b!1023307) (not b!1023205) (not d!294600) (not d!294620) (not b!1023006))
(check-sat)
(get-model)

(declare-fun d!294650 () Bool)

(declare-fun lt!354790 () Int)

(assert (=> d!294650 (>= lt!354790 0)))

(declare-fun e!653232 () Int)

(assert (=> d!294650 (= lt!354790 e!653232)))

(declare-fun c!169615 () Bool)

(assert (=> d!294650 (= c!169615 ((_ is Nil!10043) lt!354781))))

(assert (=> d!294650 (= (size!7985 lt!354781) lt!354790)))

(declare-fun b!1023314 () Bool)

(assert (=> b!1023314 (= e!653232 0)))

(declare-fun b!1023315 () Bool)

(assert (=> b!1023315 (= e!653232 (+ 1 (size!7985 (t!101105 lt!354781))))))

(assert (= (and d!294650 c!169615) b!1023314))

(assert (= (and d!294650 (not c!169615)) b!1023315))

(declare-fun m!1201101 () Bool)

(assert (=> b!1023315 m!1201101))

(assert (=> b!1023205 d!294650))

(declare-fun d!294652 () Bool)

(declare-fun lt!354791 () Int)

(assert (=> d!294652 (>= lt!354791 0)))

(declare-fun e!653233 () Int)

(assert (=> d!294652 (= lt!354791 e!653233)))

(declare-fun c!169616 () Bool)

(assert (=> d!294652 (= c!169616 ((_ is Nil!10043) Nil!10043))))

(assert (=> d!294652 (= (size!7985 Nil!10043) lt!354791)))

(declare-fun b!1023316 () Bool)

(assert (=> b!1023316 (= e!653233 0)))

(declare-fun b!1023317 () Bool)

(assert (=> b!1023317 (= e!653233 (+ 1 (size!7985 (t!101105 Nil!10043))))))

(assert (= (and d!294652 c!169616) b!1023316))

(assert (= (and d!294652 (not c!169616)) b!1023317))

(declare-fun m!1201103 () Bool)

(assert (=> b!1023317 m!1201103))

(assert (=> b!1023205 d!294652))

(declare-fun d!294654 () Bool)

(declare-fun lt!354792 () Int)

(assert (=> d!294654 (>= lt!354792 0)))

(declare-fun e!653234 () Int)

(assert (=> d!294654 (= lt!354792 e!653234)))

(declare-fun c!169617 () Bool)

(assert (=> d!294654 (= c!169617 ((_ is Nil!10043) s!10566))))

(assert (=> d!294654 (= (size!7985 s!10566) lt!354792)))

(declare-fun b!1023318 () Bool)

(assert (=> b!1023318 (= e!653234 0)))

(declare-fun b!1023319 () Bool)

(assert (=> b!1023319 (= e!653234 (+ 1 (size!7985 (t!101105 s!10566))))))

(assert (= (and d!294654 c!169617) b!1023318))

(assert (= (and d!294654 (not c!169617)) b!1023319))

(declare-fun m!1201105 () Bool)

(assert (=> b!1023319 m!1201105))

(assert (=> b!1023205 d!294654))

(declare-fun d!294656 () Bool)

(assert (=> d!294656 (= (head!1886 s!10566) (h!15444 s!10566))))

(assert (=> b!1022987 d!294656))

(declare-fun d!294658 () Bool)

(assert (=> d!294658 (= (isEmpty!6406 (tail!1447 s!10566)) ((_ is Nil!10043) (tail!1447 s!10566)))))

(assert (=> b!1023023 d!294658))

(declare-fun d!294660 () Bool)

(assert (=> d!294660 (= (tail!1447 s!10566) (t!101105 s!10566))))

(assert (=> b!1023023 d!294660))

(declare-fun b!1023320 () Bool)

(declare-fun res!459886 () Bool)

(declare-fun e!653241 () Bool)

(assert (=> b!1023320 (=> res!459886 e!653241)))

(declare-fun e!653238 () Bool)

(assert (=> b!1023320 (= res!459886 e!653238)))

(declare-fun res!459884 () Bool)

(assert (=> b!1023320 (=> (not res!459884) (not e!653238))))

(declare-fun lt!354793 () Bool)

(assert (=> b!1023320 (= res!459884 lt!354793)))

(declare-fun b!1023321 () Bool)

(declare-fun e!653236 () Bool)

(assert (=> b!1023321 (= e!653241 e!653236)))

(declare-fun res!459887 () Bool)

(assert (=> b!1023321 (=> (not res!459887) (not e!653236))))

(assert (=> b!1023321 (= res!459887 (not lt!354793))))

(declare-fun b!1023322 () Bool)

(declare-fun e!653240 () Bool)

(assert (=> b!1023322 (= e!653240 (not (= (head!1886 (_2!6546 (get!3542 lt!354759))) (c!169488 (regTwo!6170 r!15766)))))))

(declare-fun b!1023323 () Bool)

(assert (=> b!1023323 (= e!653238 (= (head!1886 (_2!6546 (get!3542 lt!354759))) (c!169488 (regTwo!6170 r!15766))))))

(declare-fun b!1023324 () Bool)

(declare-fun res!459888 () Bool)

(assert (=> b!1023324 (=> (not res!459888) (not e!653238))))

(declare-fun call!70148 () Bool)

(assert (=> b!1023324 (= res!459888 (not call!70148))))

(declare-fun b!1023325 () Bool)

(declare-fun e!653239 () Bool)

(declare-fun e!653235 () Bool)

(assert (=> b!1023325 (= e!653239 e!653235)))

(declare-fun c!169618 () Bool)

(assert (=> b!1023325 (= c!169618 ((_ is EmptyLang!2829) (regTwo!6170 r!15766)))))

(declare-fun b!1023326 () Bool)

(declare-fun res!459885 () Bool)

(assert (=> b!1023326 (=> res!459885 e!653240)))

(assert (=> b!1023326 (= res!459885 (not (isEmpty!6406 (tail!1447 (_2!6546 (get!3542 lt!354759))))))))

(declare-fun b!1023327 () Bool)

(declare-fun e!653237 () Bool)

(assert (=> b!1023327 (= e!653237 (matchR!1365 (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 (_2!6546 (get!3542 lt!354759)))) (tail!1447 (_2!6546 (get!3542 lt!354759)))))))

(declare-fun b!1023328 () Bool)

(assert (=> b!1023328 (= e!653237 (nullable!930 (regTwo!6170 r!15766)))))

(declare-fun b!1023330 () Bool)

(declare-fun res!459881 () Bool)

(assert (=> b!1023330 (=> (not res!459881) (not e!653238))))

(assert (=> b!1023330 (= res!459881 (isEmpty!6406 (tail!1447 (_2!6546 (get!3542 lt!354759)))))))

(declare-fun b!1023331 () Bool)

(assert (=> b!1023331 (= e!653236 e!653240)))

(declare-fun res!459882 () Bool)

(assert (=> b!1023331 (=> res!459882 e!653240)))

(assert (=> b!1023331 (= res!459882 call!70148)))

(declare-fun b!1023332 () Bool)

(assert (=> b!1023332 (= e!653235 (not lt!354793))))

(declare-fun b!1023333 () Bool)

(declare-fun res!459883 () Bool)

(assert (=> b!1023333 (=> res!459883 e!653241)))

(assert (=> b!1023333 (= res!459883 (not ((_ is ElementMatch!2829) (regTwo!6170 r!15766))))))

(assert (=> b!1023333 (= e!653235 e!653241)))

(declare-fun bm!70143 () Bool)

(assert (=> bm!70143 (= call!70148 (isEmpty!6406 (_2!6546 (get!3542 lt!354759))))))

(declare-fun d!294662 () Bool)

(assert (=> d!294662 e!653239))

(declare-fun c!169619 () Bool)

(assert (=> d!294662 (= c!169619 ((_ is EmptyExpr!2829) (regTwo!6170 r!15766)))))

(assert (=> d!294662 (= lt!354793 e!653237)))

(declare-fun c!169620 () Bool)

(assert (=> d!294662 (= c!169620 (isEmpty!6406 (_2!6546 (get!3542 lt!354759))))))

(assert (=> d!294662 (validRegex!1298 (regTwo!6170 r!15766))))

(assert (=> d!294662 (= (matchR!1365 (regTwo!6170 r!15766) (_2!6546 (get!3542 lt!354759))) lt!354793)))

(declare-fun b!1023329 () Bool)

(assert (=> b!1023329 (= e!653239 (= lt!354793 call!70148))))

(assert (= (and d!294662 c!169620) b!1023328))

(assert (= (and d!294662 (not c!169620)) b!1023327))

(assert (= (and d!294662 c!169619) b!1023329))

(assert (= (and d!294662 (not c!169619)) b!1023325))

(assert (= (and b!1023325 c!169618) b!1023332))

(assert (= (and b!1023325 (not c!169618)) b!1023333))

(assert (= (and b!1023333 (not res!459883)) b!1023320))

(assert (= (and b!1023320 res!459884) b!1023324))

(assert (= (and b!1023324 res!459888) b!1023330))

(assert (= (and b!1023330 res!459881) b!1023323))

(assert (= (and b!1023320 (not res!459886)) b!1023321))

(assert (= (and b!1023321 res!459887) b!1023331))

(assert (= (and b!1023331 (not res!459882)) b!1023326))

(assert (= (and b!1023326 (not res!459885)) b!1023322))

(assert (= (or b!1023329 b!1023324 b!1023331) bm!70143))

(declare-fun m!1201107 () Bool)

(assert (=> b!1023323 m!1201107))

(declare-fun m!1201109 () Bool)

(assert (=> d!294662 m!1201109))

(assert (=> d!294662 m!1200823))

(assert (=> b!1023322 m!1201107))

(assert (=> b!1023328 m!1200977))

(assert (=> bm!70143 m!1201109))

(declare-fun m!1201111 () Bool)

(assert (=> b!1023330 m!1201111))

(assert (=> b!1023330 m!1201111))

(declare-fun m!1201113 () Bool)

(assert (=> b!1023330 m!1201113))

(assert (=> b!1023327 m!1201107))

(assert (=> b!1023327 m!1201107))

(declare-fun m!1201115 () Bool)

(assert (=> b!1023327 m!1201115))

(assert (=> b!1023327 m!1201111))

(assert (=> b!1023327 m!1201115))

(assert (=> b!1023327 m!1201111))

(declare-fun m!1201117 () Bool)

(assert (=> b!1023327 m!1201117))

(assert (=> b!1023326 m!1201111))

(assert (=> b!1023326 m!1201111))

(assert (=> b!1023326 m!1201113))

(assert (=> b!1023146 d!294662))

(declare-fun d!294664 () Bool)

(assert (=> d!294664 (= (get!3542 lt!354759) (v!19778 lt!354759))))

(assert (=> b!1023146 d!294664))

(assert (=> b!1022991 d!294658))

(assert (=> b!1022991 d!294660))

(assert (=> bm!70117 d!294618))

(declare-fun d!294666 () Bool)

(assert (not d!294666))

(assert (=> b!1022798 d!294666))

(declare-fun d!294668 () Bool)

(assert (not d!294668))

(assert (=> b!1022798 d!294668))

(assert (=> d!294606 d!294582))

(declare-fun b!1023334 () Bool)

(declare-fun res!459894 () Bool)

(declare-fun e!653248 () Bool)

(assert (=> b!1023334 (=> res!459894 e!653248)))

(declare-fun e!653245 () Bool)

(assert (=> b!1023334 (= res!459894 e!653245)))

(declare-fun res!459892 () Bool)

(assert (=> b!1023334 (=> (not res!459892) (not e!653245))))

(declare-fun lt!354794 () Bool)

(assert (=> b!1023334 (= res!459892 lt!354794)))

(declare-fun b!1023335 () Bool)

(declare-fun e!653243 () Bool)

(assert (=> b!1023335 (= e!653248 e!653243)))

(declare-fun res!459895 () Bool)

(assert (=> b!1023335 (=> (not res!459895) (not e!653243))))

(assert (=> b!1023335 (= res!459895 (not lt!354794))))

(declare-fun b!1023336 () Bool)

(declare-fun e!653247 () Bool)

(assert (=> b!1023336 (= e!653247 (not (= (head!1886 s!10566) (c!169488 (removeUselessConcat!398 (regTwo!6170 r!15766))))))))

(declare-fun b!1023337 () Bool)

(assert (=> b!1023337 (= e!653245 (= (head!1886 s!10566) (c!169488 (removeUselessConcat!398 (regTwo!6170 r!15766)))))))

(declare-fun b!1023338 () Bool)

(declare-fun res!459896 () Bool)

(assert (=> b!1023338 (=> (not res!459896) (not e!653245))))

(declare-fun call!70149 () Bool)

(assert (=> b!1023338 (= res!459896 (not call!70149))))

(declare-fun b!1023339 () Bool)

(declare-fun e!653246 () Bool)

(declare-fun e!653242 () Bool)

(assert (=> b!1023339 (= e!653246 e!653242)))

(declare-fun c!169621 () Bool)

(assert (=> b!1023339 (= c!169621 ((_ is EmptyLang!2829) (removeUselessConcat!398 (regTwo!6170 r!15766))))))

(declare-fun b!1023340 () Bool)

(declare-fun res!459893 () Bool)

(assert (=> b!1023340 (=> res!459893 e!653247)))

(assert (=> b!1023340 (= res!459893 (not (isEmpty!6406 (tail!1447 s!10566))))))

(declare-fun b!1023341 () Bool)

(declare-fun e!653244 () Bool)

(assert (=> b!1023341 (= e!653244 (matchR!1365 (derivativeStep!731 (removeUselessConcat!398 (regTwo!6170 r!15766)) (head!1886 s!10566)) (tail!1447 s!10566)))))

(declare-fun b!1023342 () Bool)

(assert (=> b!1023342 (= e!653244 (nullable!930 (removeUselessConcat!398 (regTwo!6170 r!15766))))))

(declare-fun b!1023344 () Bool)

(declare-fun res!459889 () Bool)

(assert (=> b!1023344 (=> (not res!459889) (not e!653245))))

(assert (=> b!1023344 (= res!459889 (isEmpty!6406 (tail!1447 s!10566)))))

(declare-fun b!1023345 () Bool)

(assert (=> b!1023345 (= e!653243 e!653247)))

(declare-fun res!459890 () Bool)

(assert (=> b!1023345 (=> res!459890 e!653247)))

(assert (=> b!1023345 (= res!459890 call!70149)))

(declare-fun b!1023346 () Bool)

(assert (=> b!1023346 (= e!653242 (not lt!354794))))

(declare-fun b!1023347 () Bool)

(declare-fun res!459891 () Bool)

(assert (=> b!1023347 (=> res!459891 e!653248)))

(assert (=> b!1023347 (= res!459891 (not ((_ is ElementMatch!2829) (removeUselessConcat!398 (regTwo!6170 r!15766)))))))

(assert (=> b!1023347 (= e!653242 e!653248)))

(declare-fun bm!70144 () Bool)

(assert (=> bm!70144 (= call!70149 (isEmpty!6406 s!10566))))

(declare-fun d!294670 () Bool)

(assert (=> d!294670 e!653246))

(declare-fun c!169622 () Bool)

(assert (=> d!294670 (= c!169622 ((_ is EmptyExpr!2829) (removeUselessConcat!398 (regTwo!6170 r!15766))))))

(assert (=> d!294670 (= lt!354794 e!653244)))

(declare-fun c!169623 () Bool)

(assert (=> d!294670 (= c!169623 (isEmpty!6406 s!10566))))

(assert (=> d!294670 (validRegex!1298 (removeUselessConcat!398 (regTwo!6170 r!15766)))))

(assert (=> d!294670 (= (matchR!1365 (removeUselessConcat!398 (regTwo!6170 r!15766)) s!10566) lt!354794)))

(declare-fun b!1023343 () Bool)

(assert (=> b!1023343 (= e!653246 (= lt!354794 call!70149))))

(assert (= (and d!294670 c!169623) b!1023342))

(assert (= (and d!294670 (not c!169623)) b!1023341))

(assert (= (and d!294670 c!169622) b!1023343))

(assert (= (and d!294670 (not c!169622)) b!1023339))

(assert (= (and b!1023339 c!169621) b!1023346))

(assert (= (and b!1023339 (not c!169621)) b!1023347))

(assert (= (and b!1023347 (not res!459891)) b!1023334))

(assert (= (and b!1023334 res!459892) b!1023338))

(assert (= (and b!1023338 res!459896) b!1023344))

(assert (= (and b!1023344 res!459889) b!1023337))

(assert (= (and b!1023334 (not res!459894)) b!1023335))

(assert (= (and b!1023335 res!459895) b!1023345))

(assert (= (and b!1023345 (not res!459890)) b!1023340))

(assert (= (and b!1023340 (not res!459893)) b!1023336))

(assert (= (or b!1023343 b!1023338 b!1023345) bm!70144))

(assert (=> b!1023337 m!1200951))

(assert (=> d!294670 m!1200845))

(assert (=> d!294670 m!1200817))

(declare-fun m!1201119 () Bool)

(assert (=> d!294670 m!1201119))

(assert (=> b!1023336 m!1200951))

(assert (=> b!1023342 m!1200817))

(declare-fun m!1201121 () Bool)

(assert (=> b!1023342 m!1201121))

(assert (=> bm!70144 m!1200845))

(assert (=> b!1023344 m!1200955))

(assert (=> b!1023344 m!1200955))

(assert (=> b!1023344 m!1200957))

(assert (=> b!1023341 m!1200951))

(assert (=> b!1023341 m!1200817))

(assert (=> b!1023341 m!1200951))

(declare-fun m!1201123 () Bool)

(assert (=> b!1023341 m!1201123))

(assert (=> b!1023341 m!1200955))

(assert (=> b!1023341 m!1201123))

(assert (=> b!1023341 m!1200955))

(declare-fun m!1201125 () Bool)

(assert (=> b!1023341 m!1201125))

(assert (=> b!1023340 m!1200955))

(assert (=> b!1023340 m!1200955))

(assert (=> b!1023340 m!1200957))

(assert (=> d!294606 d!294670))

(assert (=> d!294606 d!294604))

(declare-fun d!294672 () Bool)

(assert (=> d!294672 (= (matchR!1365 (regTwo!6170 r!15766) s!10566) (matchR!1365 (removeUselessConcat!398 (regTwo!6170 r!15766)) s!10566))))

(assert (=> d!294672 true))

(declare-fun _$94!385 () Unit!15333)

(assert (=> d!294672 (= (choose!6477 (regTwo!6170 r!15766) s!10566) _$94!385)))

(declare-fun bs!246800 () Bool)

(assert (= bs!246800 d!294672))

(assert (=> bs!246800 m!1200815))

(assert (=> bs!246800 m!1200817))

(assert (=> bs!246800 m!1200817))

(assert (=> bs!246800 m!1201005))

(assert (=> d!294606 d!294672))

(assert (=> d!294606 d!294602))

(declare-fun d!294674 () Bool)

(declare-fun nullableFct!216 (Regex!2829) Bool)

(assert (=> d!294674 (= (nullable!930 (reg!3158 r!15766)) (nullableFct!216 (reg!3158 r!15766)))))

(declare-fun bs!246801 () Bool)

(assert (= bs!246801 d!294674))

(declare-fun m!1201127 () Bool)

(assert (=> bs!246801 m!1201127))

(assert (=> b!1022837 d!294674))

(assert (=> b!1022802 d!294666))

(assert (=> b!1022802 d!294668))

(declare-fun d!294676 () Bool)

(assert (=> d!294676 (= (nullable!930 r!15766) (nullableFct!216 r!15766))))

(declare-fun bs!246802 () Bool)

(assert (= bs!246802 d!294676))

(declare-fun m!1201129 () Bool)

(assert (=> bs!246802 m!1201129))

(assert (=> b!1022993 d!294676))

(declare-fun d!294678 () Bool)

(assert (=> d!294678 (= (nullable!930 (reg!3158 (regTwo!6170 r!15766))) (nullableFct!216 (reg!3158 (regTwo!6170 r!15766))))))

(declare-fun bs!246803 () Bool)

(assert (= bs!246803 d!294678))

(declare-fun m!1201131 () Bool)

(assert (=> bs!246803 m!1201131))

(assert (=> b!1022864 d!294678))

(declare-fun d!294680 () Bool)

(assert (not d!294680))

(assert (=> b!1023253 d!294680))

(assert (=> b!1023253 d!294668))

(declare-fun d!294682 () Bool)

(assert (=> d!294682 true))

(assert (=> d!294682 true))

(declare-fun res!459899 () Bool)

(assert (=> d!294682 (= (choose!6479 lambda!36425) res!459899)))

(assert (=> d!294640 d!294682))

(declare-fun d!294684 () Bool)

(assert (=> d!294684 (= (nullable!930 EmptyExpr!2829) true)))

(assert (=> b!1022800 d!294684))

(declare-fun d!294686 () Bool)

(assert (=> d!294686 (= (isDefined!2004 lt!354759) (not (isEmpty!6405 lt!354759)))))

(declare-fun bs!246804 () Bool)

(assert (= bs!246804 d!294686))

(declare-fun m!1201133 () Bool)

(assert (=> bs!246804 m!1201133))

(assert (=> d!294620 d!294686))

(assert (=> d!294620 d!294572))

(declare-fun d!294688 () Bool)

(assert (=> d!294688 (= (validRegex!1298 EmptyExpr!2829) true)))

(assert (=> d!294620 d!294688))

(assert (=> d!294600 d!294618))

(declare-fun d!294690 () Bool)

(declare-fun res!459900 () Bool)

(declare-fun e!653254 () Bool)

(assert (=> d!294690 (=> res!459900 e!653254)))

(assert (=> d!294690 (= res!459900 ((_ is ElementMatch!2829) lt!354712))))

(assert (=> d!294690 (= (validRegex!1298 lt!354712) e!653254)))

(declare-fun b!1023348 () Bool)

(declare-fun e!653252 () Bool)

(declare-fun call!70152 () Bool)

(assert (=> b!1023348 (= e!653252 call!70152)))

(declare-fun b!1023349 () Bool)

(declare-fun e!653253 () Bool)

(assert (=> b!1023349 (= e!653253 e!653252)))

(declare-fun res!459901 () Bool)

(assert (=> b!1023349 (= res!459901 (not (nullable!930 (reg!3158 lt!354712))))))

(assert (=> b!1023349 (=> (not res!459901) (not e!653252))))

(declare-fun b!1023350 () Bool)

(assert (=> b!1023350 (= e!653254 e!653253)))

(declare-fun c!169625 () Bool)

(assert (=> b!1023350 (= c!169625 ((_ is Star!2829) lt!354712))))

(declare-fun b!1023351 () Bool)

(declare-fun e!653249 () Bool)

(declare-fun e!653250 () Bool)

(assert (=> b!1023351 (= e!653249 e!653250)))

(declare-fun res!459904 () Bool)

(assert (=> b!1023351 (=> (not res!459904) (not e!653250))))

(declare-fun call!70150 () Bool)

(assert (=> b!1023351 (= res!459904 call!70150)))

(declare-fun b!1023352 () Bool)

(declare-fun call!70151 () Bool)

(assert (=> b!1023352 (= e!653250 call!70151)))

(declare-fun b!1023353 () Bool)

(declare-fun res!459902 () Bool)

(assert (=> b!1023353 (=> res!459902 e!653249)))

(assert (=> b!1023353 (= res!459902 (not ((_ is Concat!4662) lt!354712)))))

(declare-fun e!653255 () Bool)

(assert (=> b!1023353 (= e!653255 e!653249)))

(declare-fun bm!70145 () Bool)

(declare-fun c!169624 () Bool)

(assert (=> bm!70145 (= call!70151 (validRegex!1298 (ite c!169624 (regTwo!6171 lt!354712) (regTwo!6170 lt!354712))))))

(declare-fun bm!70146 () Bool)

(assert (=> bm!70146 (= call!70152 (validRegex!1298 (ite c!169625 (reg!3158 lt!354712) (ite c!169624 (regOne!6171 lt!354712) (regOne!6170 lt!354712)))))))

(declare-fun b!1023354 () Bool)

(declare-fun e!653251 () Bool)

(assert (=> b!1023354 (= e!653251 call!70151)))

(declare-fun b!1023355 () Bool)

(declare-fun res!459903 () Bool)

(assert (=> b!1023355 (=> (not res!459903) (not e!653251))))

(assert (=> b!1023355 (= res!459903 call!70150)))

(assert (=> b!1023355 (= e!653255 e!653251)))

(declare-fun b!1023356 () Bool)

(assert (=> b!1023356 (= e!653253 e!653255)))

(assert (=> b!1023356 (= c!169624 ((_ is Union!2829) lt!354712))))

(declare-fun bm!70147 () Bool)

(assert (=> bm!70147 (= call!70150 call!70152)))

(assert (= (and d!294690 (not res!459900)) b!1023350))

(assert (= (and b!1023350 c!169625) b!1023349))

(assert (= (and b!1023350 (not c!169625)) b!1023356))

(assert (= (and b!1023349 res!459901) b!1023348))

(assert (= (and b!1023356 c!169624) b!1023355))

(assert (= (and b!1023356 (not c!169624)) b!1023353))

(assert (= (and b!1023355 res!459903) b!1023354))

(assert (= (and b!1023353 (not res!459902)) b!1023351))

(assert (= (and b!1023351 res!459904) b!1023352))

(assert (= (or b!1023354 b!1023352) bm!70145))

(assert (= (or b!1023355 b!1023351) bm!70147))

(assert (= (or b!1023348 bm!70147) bm!70146))

(declare-fun m!1201135 () Bool)

(assert (=> b!1023349 m!1201135))

(declare-fun m!1201137 () Bool)

(assert (=> bm!70145 m!1201137))

(declare-fun m!1201139 () Bool)

(assert (=> bm!70146 m!1201139))

(assert (=> d!294600 d!294690))

(assert (=> b!1022995 d!294658))

(assert (=> b!1022995 d!294660))

(declare-fun d!294692 () Bool)

(declare-fun res!459905 () Bool)

(declare-fun e!653261 () Bool)

(assert (=> d!294692 (=> res!459905 e!653261)))

(assert (=> d!294692 (= res!459905 ((_ is ElementMatch!2829) (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))))))

(assert (=> d!294692 (= (validRegex!1298 (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))) e!653261)))

(declare-fun b!1023357 () Bool)

(declare-fun e!653259 () Bool)

(declare-fun call!70155 () Bool)

(assert (=> b!1023357 (= e!653259 call!70155)))

(declare-fun b!1023358 () Bool)

(declare-fun e!653260 () Bool)

(assert (=> b!1023358 (= e!653260 e!653259)))

(declare-fun res!459906 () Bool)

(assert (=> b!1023358 (= res!459906 (not (nullable!930 (reg!3158 (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))))))))

(assert (=> b!1023358 (=> (not res!459906) (not e!653259))))

(declare-fun b!1023359 () Bool)

(assert (=> b!1023359 (= e!653261 e!653260)))

(declare-fun c!169627 () Bool)

(assert (=> b!1023359 (= c!169627 ((_ is Star!2829) (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))))))

(declare-fun b!1023360 () Bool)

(declare-fun e!653256 () Bool)

(declare-fun e!653257 () Bool)

(assert (=> b!1023360 (= e!653256 e!653257)))

(declare-fun res!459909 () Bool)

(assert (=> b!1023360 (=> (not res!459909) (not e!653257))))

(declare-fun call!70153 () Bool)

(assert (=> b!1023360 (= res!459909 call!70153)))

(declare-fun b!1023361 () Bool)

(declare-fun call!70154 () Bool)

(assert (=> b!1023361 (= e!653257 call!70154)))

(declare-fun b!1023362 () Bool)

(declare-fun res!459907 () Bool)

(assert (=> b!1023362 (=> res!459907 e!653256)))

(assert (=> b!1023362 (= res!459907 (not ((_ is Concat!4662) (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766))))))))

(declare-fun e!653262 () Bool)

(assert (=> b!1023362 (= e!653262 e!653256)))

(declare-fun bm!70148 () Bool)

(declare-fun c!169626 () Bool)

(assert (=> bm!70148 (= call!70154 (validRegex!1298 (ite c!169626 (regTwo!6171 (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))) (regTwo!6170 (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))))))))

(declare-fun bm!70149 () Bool)

(assert (=> bm!70149 (= call!70155 (validRegex!1298 (ite c!169627 (reg!3158 (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))) (ite c!169626 (regOne!6171 (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))) (regOne!6170 (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766))))))))))

(declare-fun b!1023363 () Bool)

(declare-fun e!653258 () Bool)

(assert (=> b!1023363 (= e!653258 call!70154)))

(declare-fun b!1023364 () Bool)

(declare-fun res!459908 () Bool)

(assert (=> b!1023364 (=> (not res!459908) (not e!653258))))

(assert (=> b!1023364 (= res!459908 call!70153)))

(assert (=> b!1023364 (= e!653262 e!653258)))

(declare-fun b!1023365 () Bool)

(assert (=> b!1023365 (= e!653260 e!653262)))

(assert (=> b!1023365 (= c!169626 ((_ is Union!2829) (ite c!169515 (reg!3158 r!15766) (ite c!169514 (regOne!6171 r!15766) (regOne!6170 r!15766)))))))

(declare-fun bm!70150 () Bool)

(assert (=> bm!70150 (= call!70153 call!70155)))

(assert (= (and d!294692 (not res!459905)) b!1023359))

(assert (= (and b!1023359 c!169627) b!1023358))

(assert (= (and b!1023359 (not c!169627)) b!1023365))

(assert (= (and b!1023358 res!459906) b!1023357))

(assert (= (and b!1023365 c!169626) b!1023364))

(assert (= (and b!1023365 (not c!169626)) b!1023362))

(assert (= (and b!1023364 res!459908) b!1023363))

(assert (= (and b!1023362 (not res!459907)) b!1023360))

(assert (= (and b!1023360 res!459909) b!1023361))

(assert (= (or b!1023363 b!1023361) bm!70148))

(assert (= (or b!1023364 b!1023360) bm!70150))

(assert (= (or b!1023357 bm!70150) bm!70149))

(declare-fun m!1201141 () Bool)

(assert (=> b!1023358 m!1201141))

(declare-fun m!1201143 () Bool)

(assert (=> bm!70148 m!1201143))

(declare-fun m!1201145 () Bool)

(assert (=> bm!70149 m!1201145))

(assert (=> bm!70078 d!294692))

(assert (=> bm!70115 d!294618))

(declare-fun d!294694 () Bool)

(assert (=> d!294694 (= (isEmpty!6406 Nil!10043) true)))

(assert (=> bm!70070 d!294694))

(assert (=> b!1023001 d!294656))

(assert (=> d!294614 d!294612))

(assert (=> b!1023016 d!294656))

(assert (=> b!1023005 d!294658))

(assert (=> b!1023005 d!294660))

(declare-fun d!294696 () Bool)

(declare-fun res!459910 () Bool)

(declare-fun e!653268 () Bool)

(assert (=> d!294696 (=> res!459910 e!653268)))

(assert (=> d!294696 (= res!459910 ((_ is ElementMatch!2829) (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))))))

(assert (=> d!294696 (= (validRegex!1298 (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))) e!653268)))

(declare-fun b!1023366 () Bool)

(declare-fun e!653266 () Bool)

(declare-fun call!70158 () Bool)

(assert (=> b!1023366 (= e!653266 call!70158)))

(declare-fun b!1023367 () Bool)

(declare-fun e!653267 () Bool)

(assert (=> b!1023367 (= e!653267 e!653266)))

(declare-fun res!459911 () Bool)

(assert (=> b!1023367 (= res!459911 (not (nullable!930 (reg!3158 (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))))))))

(assert (=> b!1023367 (=> (not res!459911) (not e!653266))))

(declare-fun b!1023368 () Bool)

(assert (=> b!1023368 (= e!653268 e!653267)))

(declare-fun c!169629 () Bool)

(assert (=> b!1023368 (= c!169629 ((_ is Star!2829) (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))))))

(declare-fun b!1023369 () Bool)

(declare-fun e!653263 () Bool)

(declare-fun e!653264 () Bool)

(assert (=> b!1023369 (= e!653263 e!653264)))

(declare-fun res!459914 () Bool)

(assert (=> b!1023369 (=> (not res!459914) (not e!653264))))

(declare-fun call!70156 () Bool)

(assert (=> b!1023369 (= res!459914 call!70156)))

(declare-fun b!1023370 () Bool)

(declare-fun call!70157 () Bool)

(assert (=> b!1023370 (= e!653264 call!70157)))

(declare-fun b!1023371 () Bool)

(declare-fun res!459912 () Bool)

(assert (=> b!1023371 (=> res!459912 e!653263)))

(assert (=> b!1023371 (= res!459912 (not ((_ is Concat!4662) (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766)))))))))

(declare-fun e!653269 () Bool)

(assert (=> b!1023371 (= e!653269 e!653263)))

(declare-fun bm!70151 () Bool)

(declare-fun c!169628 () Bool)

(assert (=> bm!70151 (= call!70157 (validRegex!1298 (ite c!169628 (regTwo!6171 (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))) (regTwo!6170 (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))))))))

(declare-fun bm!70152 () Bool)

(assert (=> bm!70152 (= call!70158 (validRegex!1298 (ite c!169629 (reg!3158 (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))) (ite c!169628 (regOne!6171 (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))) (regOne!6170 (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766)))))))))))

(declare-fun b!1023372 () Bool)

(declare-fun e!653265 () Bool)

(assert (=> b!1023372 (= e!653265 call!70157)))

(declare-fun b!1023373 () Bool)

(declare-fun res!459913 () Bool)

(assert (=> b!1023373 (=> (not res!459913) (not e!653265))))

(assert (=> b!1023373 (= res!459913 call!70156)))

(assert (=> b!1023373 (= e!653269 e!653265)))

(declare-fun b!1023374 () Bool)

(assert (=> b!1023374 (= e!653267 e!653269)))

(assert (=> b!1023374 (= c!169628 ((_ is Union!2829) (ite c!169521 (reg!3158 (regTwo!6170 r!15766)) (ite c!169520 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))))))

(declare-fun bm!70153 () Bool)

(assert (=> bm!70153 (= call!70156 call!70158)))

(assert (= (and d!294696 (not res!459910)) b!1023368))

(assert (= (and b!1023368 c!169629) b!1023367))

(assert (= (and b!1023368 (not c!169629)) b!1023374))

(assert (= (and b!1023367 res!459911) b!1023366))

(assert (= (and b!1023374 c!169628) b!1023373))

(assert (= (and b!1023374 (not c!169628)) b!1023371))

(assert (= (and b!1023373 res!459913) b!1023372))

(assert (= (and b!1023371 (not res!459912)) b!1023369))

(assert (= (and b!1023369 res!459914) b!1023370))

(assert (= (or b!1023372 b!1023370) bm!70151))

(assert (= (or b!1023373 b!1023369) bm!70153))

(assert (= (or b!1023366 bm!70153) bm!70152))

(declare-fun m!1201147 () Bool)

(assert (=> b!1023367 m!1201147))

(declare-fun m!1201149 () Bool)

(assert (=> bm!70151 m!1201149))

(declare-fun m!1201151 () Bool)

(assert (=> bm!70152 m!1201151))

(assert (=> bm!70081 d!294696))

(declare-fun d!294698 () Bool)

(assert (=> d!294698 (= (nullable!930 lt!354712) (nullableFct!216 lt!354712))))

(declare-fun bs!246805 () Bool)

(assert (= bs!246805 d!294698))

(declare-fun m!1201153 () Bool)

(assert (=> bs!246805 m!1201153))

(assert (=> b!1023007 d!294698))

(declare-fun d!294700 () Bool)

(assert (=> d!294700 true))

(assert (=> d!294700 true))

(declare-fun res!459915 () Bool)

(assert (=> d!294700 (= (choose!6479 lambda!36426) res!459915)))

(assert (=> d!294616 d!294700))

(declare-fun bs!246806 () Bool)

(declare-fun b!1023382 () Bool)

(assert (= bs!246806 (and b!1023382 b!1022717)))

(declare-fun lambda!36457 () Int)

(assert (=> bs!246806 (not (= lambda!36457 lambda!36426))))

(declare-fun bs!246807 () Bool)

(assert (= bs!246807 (and b!1023382 b!1022970)))

(assert (=> bs!246807 (= (and (= (reg!3158 (regTwo!6171 r!15766)) (reg!3158 r!15766)) (= (regTwo!6171 r!15766) r!15766)) (= lambda!36457 lambda!36431))))

(declare-fun bs!246808 () Bool)

(assert (= bs!246808 (and b!1023382 d!294630)))

(assert (=> bs!246808 (not (= lambda!36457 lambda!36450))))

(declare-fun bs!246809 () Bool)

(assert (= bs!246809 (and b!1023382 d!294638)))

(assert (=> bs!246809 (not (= lambda!36457 lambda!36456))))

(assert (=> bs!246809 (not (= lambda!36457 lambda!36455))))

(assert (=> bs!246806 (not (= lambda!36457 lambda!36425))))

(declare-fun bs!246810 () Bool)

(assert (= bs!246810 (and b!1023382 b!1022971)))

(assert (=> bs!246810 (not (= lambda!36457 lambda!36432))))

(assert (=> b!1023382 true))

(assert (=> b!1023382 true))

(declare-fun bs!246811 () Bool)

(declare-fun b!1023383 () Bool)

(assert (= bs!246811 (and b!1023383 b!1023382)))

(declare-fun lambda!36458 () Int)

(assert (=> bs!246811 (not (= lambda!36458 lambda!36457))))

(declare-fun bs!246812 () Bool)

(assert (= bs!246812 (and b!1023383 b!1022717)))

(assert (=> bs!246812 (= (and (= (regOne!6170 (regTwo!6171 r!15766)) EmptyExpr!2829) (= (regTwo!6170 (regTwo!6171 r!15766)) (regTwo!6170 r!15766))) (= lambda!36458 lambda!36426))))

(declare-fun bs!246813 () Bool)

(assert (= bs!246813 (and b!1023383 b!1022970)))

(assert (=> bs!246813 (not (= lambda!36458 lambda!36431))))

(declare-fun bs!246814 () Bool)

(assert (= bs!246814 (and b!1023383 d!294630)))

(assert (=> bs!246814 (not (= lambda!36458 lambda!36450))))

(declare-fun bs!246815 () Bool)

(assert (= bs!246815 (and b!1023383 d!294638)))

(assert (=> bs!246815 (= (and (= (regOne!6170 (regTwo!6171 r!15766)) EmptyExpr!2829) (= (regTwo!6170 (regTwo!6171 r!15766)) (regTwo!6170 r!15766))) (= lambda!36458 lambda!36456))))

(assert (=> bs!246815 (not (= lambda!36458 lambda!36455))))

(assert (=> bs!246812 (not (= lambda!36458 lambda!36425))))

(declare-fun bs!246816 () Bool)

(assert (= bs!246816 (and b!1023383 b!1022971)))

(assert (=> bs!246816 (= (and (= (regOne!6170 (regTwo!6171 r!15766)) (regOne!6170 r!15766)) (= (regTwo!6170 (regTwo!6171 r!15766)) (regTwo!6170 r!15766))) (= lambda!36458 lambda!36432))))

(assert (=> b!1023383 true))

(assert (=> b!1023383 true))

(declare-fun b!1023375 () Bool)

(declare-fun e!653272 () Bool)

(declare-fun call!70160 () Bool)

(assert (=> b!1023375 (= e!653272 call!70160)))

(declare-fun b!1023376 () Bool)

(declare-fun e!653270 () Bool)

(assert (=> b!1023376 (= e!653270 (= s!10566 (Cons!10043 (c!169488 (regTwo!6171 r!15766)) Nil!10043)))))

(declare-fun b!1023377 () Bool)

(declare-fun c!169632 () Bool)

(assert (=> b!1023377 (= c!169632 ((_ is Union!2829) (regTwo!6171 r!15766)))))

(declare-fun e!653276 () Bool)

(assert (=> b!1023377 (= e!653270 e!653276)))

(declare-fun b!1023378 () Bool)

(declare-fun e!653273 () Bool)

(assert (=> b!1023378 (= e!653273 (matchRSpec!628 (regTwo!6171 (regTwo!6171 r!15766)) s!10566))))

(declare-fun d!294702 () Bool)

(declare-fun c!169630 () Bool)

(assert (=> d!294702 (= c!169630 ((_ is EmptyExpr!2829) (regTwo!6171 r!15766)))))

(assert (=> d!294702 (= (matchRSpec!628 (regTwo!6171 r!15766) s!10566) e!653272)))

(declare-fun bm!70154 () Bool)

(declare-fun call!70159 () Bool)

(declare-fun c!169631 () Bool)

(assert (=> bm!70154 (= call!70159 (Exists!558 (ite c!169631 lambda!36457 lambda!36458)))))

(declare-fun bm!70155 () Bool)

(assert (=> bm!70155 (= call!70160 (isEmpty!6406 s!10566))))

(declare-fun b!1023379 () Bool)

(declare-fun res!459917 () Bool)

(declare-fun e!653271 () Bool)

(assert (=> b!1023379 (=> res!459917 e!653271)))

(assert (=> b!1023379 (= res!459917 call!70160)))

(declare-fun e!653275 () Bool)

(assert (=> b!1023379 (= e!653275 e!653271)))

(declare-fun b!1023380 () Bool)

(assert (=> b!1023380 (= e!653276 e!653275)))

(assert (=> b!1023380 (= c!169631 ((_ is Star!2829) (regTwo!6171 r!15766)))))

(declare-fun b!1023381 () Bool)

(declare-fun c!169633 () Bool)

(assert (=> b!1023381 (= c!169633 ((_ is ElementMatch!2829) (regTwo!6171 r!15766)))))

(declare-fun e!653274 () Bool)

(assert (=> b!1023381 (= e!653274 e!653270)))

(assert (=> b!1023382 (= e!653271 call!70159)))

(assert (=> b!1023383 (= e!653275 call!70159)))

(declare-fun b!1023384 () Bool)

(assert (=> b!1023384 (= e!653276 e!653273)))

(declare-fun res!459918 () Bool)

(assert (=> b!1023384 (= res!459918 (matchRSpec!628 (regOne!6171 (regTwo!6171 r!15766)) s!10566))))

(assert (=> b!1023384 (=> res!459918 e!653273)))

(declare-fun b!1023385 () Bool)

(assert (=> b!1023385 (= e!653272 e!653274)))

(declare-fun res!459916 () Bool)

(assert (=> b!1023385 (= res!459916 (not ((_ is EmptyLang!2829) (regTwo!6171 r!15766))))))

(assert (=> b!1023385 (=> (not res!459916) (not e!653274))))

(assert (= (and d!294702 c!169630) b!1023375))

(assert (= (and d!294702 (not c!169630)) b!1023385))

(assert (= (and b!1023385 res!459916) b!1023381))

(assert (= (and b!1023381 c!169633) b!1023376))

(assert (= (and b!1023381 (not c!169633)) b!1023377))

(assert (= (and b!1023377 c!169632) b!1023384))

(assert (= (and b!1023377 (not c!169632)) b!1023380))

(assert (= (and b!1023384 (not res!459918)) b!1023378))

(assert (= (and b!1023380 c!169631) b!1023379))

(assert (= (and b!1023380 (not c!169631)) b!1023383))

(assert (= (and b!1023379 (not res!459917)) b!1023382))

(assert (= (or b!1023382 b!1023383) bm!70154))

(assert (= (or b!1023375 b!1023379) bm!70155))

(declare-fun m!1201155 () Bool)

(assert (=> b!1023378 m!1201155))

(declare-fun m!1201157 () Bool)

(assert (=> bm!70154 m!1201157))

(assert (=> bm!70155 m!1200845))

(declare-fun m!1201159 () Bool)

(assert (=> b!1023384 m!1201159))

(assert (=> b!1022966 d!294702))

(assert (=> bm!70109 d!294618))

(declare-fun b!1023386 () Bool)

(declare-fun res!459924 () Bool)

(declare-fun e!653283 () Bool)

(assert (=> b!1023386 (=> res!459924 e!653283)))

(declare-fun e!653280 () Bool)

(assert (=> b!1023386 (= res!459924 e!653280)))

(declare-fun res!459922 () Bool)

(assert (=> b!1023386 (=> (not res!459922) (not e!653280))))

(declare-fun lt!354795 () Bool)

(assert (=> b!1023386 (= res!459922 lt!354795)))

(declare-fun b!1023387 () Bool)

(declare-fun e!653278 () Bool)

(assert (=> b!1023387 (= e!653283 e!653278)))

(declare-fun res!459925 () Bool)

(assert (=> b!1023387 (=> (not res!459925) (not e!653278))))

(assert (=> b!1023387 (= res!459925 (not lt!354795))))

(declare-fun b!1023388 () Bool)

(declare-fun e!653282 () Bool)

(assert (=> b!1023388 (= e!653282 (not (= (head!1886 (tail!1447 s!10566)) (c!169488 (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566))))))))

(declare-fun b!1023389 () Bool)

(assert (=> b!1023389 (= e!653280 (= (head!1886 (tail!1447 s!10566)) (c!169488 (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566)))))))

(declare-fun b!1023390 () Bool)

(declare-fun res!459926 () Bool)

(assert (=> b!1023390 (=> (not res!459926) (not e!653280))))

(declare-fun call!70161 () Bool)

(assert (=> b!1023390 (= res!459926 (not call!70161))))

(declare-fun b!1023391 () Bool)

(declare-fun e!653281 () Bool)

(declare-fun e!653277 () Bool)

(assert (=> b!1023391 (= e!653281 e!653277)))

(declare-fun c!169634 () Bool)

(assert (=> b!1023391 (= c!169634 ((_ is EmptyLang!2829) (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566))))))

(declare-fun b!1023392 () Bool)

(declare-fun res!459923 () Bool)

(assert (=> b!1023392 (=> res!459923 e!653282)))

(assert (=> b!1023392 (= res!459923 (not (isEmpty!6406 (tail!1447 (tail!1447 s!10566)))))))

(declare-fun b!1023393 () Bool)

(declare-fun e!653279 () Bool)

(assert (=> b!1023393 (= e!653279 (matchR!1365 (derivativeStep!731 (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566)) (head!1886 (tail!1447 s!10566))) (tail!1447 (tail!1447 s!10566))))))

(declare-fun b!1023394 () Bool)

(assert (=> b!1023394 (= e!653279 (nullable!930 (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566))))))

(declare-fun b!1023396 () Bool)

(declare-fun res!459919 () Bool)

(assert (=> b!1023396 (=> (not res!459919) (not e!653280))))

(assert (=> b!1023396 (= res!459919 (isEmpty!6406 (tail!1447 (tail!1447 s!10566))))))

(declare-fun b!1023397 () Bool)

(assert (=> b!1023397 (= e!653278 e!653282)))

(declare-fun res!459920 () Bool)

(assert (=> b!1023397 (=> res!459920 e!653282)))

(assert (=> b!1023397 (= res!459920 call!70161)))

(declare-fun b!1023398 () Bool)

(assert (=> b!1023398 (= e!653277 (not lt!354795))))

(declare-fun b!1023399 () Bool)

(declare-fun res!459921 () Bool)

(assert (=> b!1023399 (=> res!459921 e!653283)))

(assert (=> b!1023399 (= res!459921 (not ((_ is ElementMatch!2829) (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566)))))))

(assert (=> b!1023399 (= e!653277 e!653283)))

(declare-fun bm!70156 () Bool)

(assert (=> bm!70156 (= call!70161 (isEmpty!6406 (tail!1447 s!10566)))))

(declare-fun d!294704 () Bool)

(assert (=> d!294704 e!653281))

(declare-fun c!169635 () Bool)

(assert (=> d!294704 (= c!169635 ((_ is EmptyExpr!2829) (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566))))))

(assert (=> d!294704 (= lt!354795 e!653279)))

(declare-fun c!169636 () Bool)

(assert (=> d!294704 (= c!169636 (isEmpty!6406 (tail!1447 s!10566)))))

(assert (=> d!294704 (validRegex!1298 (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566)))))

(assert (=> d!294704 (= (matchR!1365 (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566)) (tail!1447 s!10566)) lt!354795)))

(declare-fun b!1023395 () Bool)

(assert (=> b!1023395 (= e!653281 (= lt!354795 call!70161))))

(assert (= (and d!294704 c!169636) b!1023394))

(assert (= (and d!294704 (not c!169636)) b!1023393))

(assert (= (and d!294704 c!169635) b!1023395))

(assert (= (and d!294704 (not c!169635)) b!1023391))

(assert (= (and b!1023391 c!169634) b!1023398))

(assert (= (and b!1023391 (not c!169634)) b!1023399))

(assert (= (and b!1023399 (not res!459921)) b!1023386))

(assert (= (and b!1023386 res!459922) b!1023390))

(assert (= (and b!1023390 res!459926) b!1023396))

(assert (= (and b!1023396 res!459919) b!1023389))

(assert (= (and b!1023386 (not res!459924)) b!1023387))

(assert (= (and b!1023387 res!459925) b!1023397))

(assert (= (and b!1023397 (not res!459920)) b!1023392))

(assert (= (and b!1023392 (not res!459923)) b!1023388))

(assert (= (or b!1023395 b!1023390 b!1023397) bm!70156))

(assert (=> b!1023389 m!1200955))

(declare-fun m!1201161 () Bool)

(assert (=> b!1023389 m!1201161))

(assert (=> d!294704 m!1200955))

(assert (=> d!294704 m!1200957))

(assert (=> d!294704 m!1200979))

(declare-fun m!1201163 () Bool)

(assert (=> d!294704 m!1201163))

(assert (=> b!1023388 m!1200955))

(assert (=> b!1023388 m!1201161))

(assert (=> b!1023394 m!1200979))

(declare-fun m!1201165 () Bool)

(assert (=> b!1023394 m!1201165))

(assert (=> bm!70156 m!1200955))

(assert (=> bm!70156 m!1200957))

(assert (=> b!1023396 m!1200955))

(declare-fun m!1201167 () Bool)

(assert (=> b!1023396 m!1201167))

(assert (=> b!1023396 m!1201167))

(declare-fun m!1201169 () Bool)

(assert (=> b!1023396 m!1201169))

(assert (=> b!1023393 m!1200955))

(assert (=> b!1023393 m!1201161))

(assert (=> b!1023393 m!1200979))

(assert (=> b!1023393 m!1201161))

(declare-fun m!1201171 () Bool)

(assert (=> b!1023393 m!1201171))

(assert (=> b!1023393 m!1200955))

(assert (=> b!1023393 m!1201167))

(assert (=> b!1023393 m!1201171))

(assert (=> b!1023393 m!1201167))

(declare-fun m!1201173 () Bool)

(assert (=> b!1023393 m!1201173))

(assert (=> b!1023392 m!1200955))

(assert (=> b!1023392 m!1201167))

(assert (=> b!1023392 m!1201167))

(assert (=> b!1023392 m!1201169))

(assert (=> b!1023020 d!294704))

(declare-fun call!70171 () Regex!2829)

(declare-fun bm!70165 () Bool)

(declare-fun c!169649 () Bool)

(assert (=> bm!70165 (= call!70171 (derivativeStep!731 (ite c!169649 (regOne!6171 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))) (head!1886 s!10566)))))

(declare-fun d!294706 () Bool)

(declare-fun lt!354798 () Regex!2829)

(assert (=> d!294706 (validRegex!1298 lt!354798)))

(declare-fun e!653297 () Regex!2829)

(assert (=> d!294706 (= lt!354798 e!653297)))

(declare-fun c!169647 () Bool)

(assert (=> d!294706 (= c!169647 (or ((_ is EmptyExpr!2829) (regTwo!6170 r!15766)) ((_ is EmptyLang!2829) (regTwo!6170 r!15766))))))

(assert (=> d!294706 (validRegex!1298 (regTwo!6170 r!15766))))

(assert (=> d!294706 (= (derivativeStep!731 (regTwo!6170 r!15766) (head!1886 s!10566)) lt!354798)))

(declare-fun bm!70166 () Bool)

(declare-fun c!169650 () Bool)

(declare-fun c!169648 () Bool)

(declare-fun call!70173 () Regex!2829)

(assert (=> bm!70166 (= call!70173 (derivativeStep!731 (ite c!169649 (regTwo!6171 (regTwo!6170 r!15766)) (ite c!169648 (reg!3158 (regTwo!6170 r!15766)) (ite c!169650 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6170 (regTwo!6170 r!15766))))) (head!1886 s!10566)))))

(declare-fun b!1023420 () Bool)

(declare-fun e!653294 () Regex!2829)

(assert (=> b!1023420 (= e!653294 (ite (= (head!1886 s!10566) (c!169488 (regTwo!6170 r!15766))) EmptyExpr!2829 EmptyLang!2829))))

(declare-fun b!1023421 () Bool)

(assert (=> b!1023421 (= e!653297 e!653294)))

(declare-fun c!169651 () Bool)

(assert (=> b!1023421 (= c!169651 ((_ is ElementMatch!2829) (regTwo!6170 r!15766)))))

(declare-fun b!1023422 () Bool)

(declare-fun e!653295 () Regex!2829)

(assert (=> b!1023422 (= e!653295 (Union!2829 call!70171 call!70173))))

(declare-fun b!1023423 () Bool)

(declare-fun e!653296 () Regex!2829)

(assert (=> b!1023423 (= e!653295 e!653296)))

(assert (=> b!1023423 (= c!169648 ((_ is Star!2829) (regTwo!6170 r!15766)))))

(declare-fun b!1023424 () Bool)

(declare-fun e!653298 () Regex!2829)

(declare-fun call!70172 () Regex!2829)

(assert (=> b!1023424 (= e!653298 (Union!2829 (Concat!4662 call!70172 (regTwo!6170 (regTwo!6170 r!15766))) EmptyLang!2829))))

(declare-fun b!1023425 () Bool)

(declare-fun call!70170 () Regex!2829)

(assert (=> b!1023425 (= e!653296 (Concat!4662 call!70170 (regTwo!6170 r!15766)))))

(declare-fun b!1023426 () Bool)

(assert (=> b!1023426 (= c!169650 (nullable!930 (regOne!6170 (regTwo!6170 r!15766))))))

(assert (=> b!1023426 (= e!653296 e!653298)))

(declare-fun bm!70167 () Bool)

(assert (=> bm!70167 (= call!70172 call!70170)))

(declare-fun b!1023427 () Bool)

(assert (=> b!1023427 (= c!169649 ((_ is Union!2829) (regTwo!6170 r!15766)))))

(assert (=> b!1023427 (= e!653294 e!653295)))

(declare-fun bm!70168 () Bool)

(assert (=> bm!70168 (= call!70170 call!70173)))

(declare-fun b!1023428 () Bool)

(assert (=> b!1023428 (= e!653297 EmptyLang!2829)))

(declare-fun b!1023429 () Bool)

(assert (=> b!1023429 (= e!653298 (Union!2829 (Concat!4662 call!70171 (regTwo!6170 (regTwo!6170 r!15766))) call!70172))))

(assert (= (and d!294706 c!169647) b!1023428))

(assert (= (and d!294706 (not c!169647)) b!1023421))

(assert (= (and b!1023421 c!169651) b!1023420))

(assert (= (and b!1023421 (not c!169651)) b!1023427))

(assert (= (and b!1023427 c!169649) b!1023422))

(assert (= (and b!1023427 (not c!169649)) b!1023423))

(assert (= (and b!1023423 c!169648) b!1023425))

(assert (= (and b!1023423 (not c!169648)) b!1023426))

(assert (= (and b!1023426 c!169650) b!1023429))

(assert (= (and b!1023426 (not c!169650)) b!1023424))

(assert (= (or b!1023429 b!1023424) bm!70167))

(assert (= (or b!1023425 bm!70167) bm!70168))

(assert (= (or b!1023422 b!1023429) bm!70165))

(assert (= (or b!1023422 bm!70168) bm!70166))

(assert (=> bm!70165 m!1200951))

(declare-fun m!1201175 () Bool)

(assert (=> bm!70165 m!1201175))

(declare-fun m!1201177 () Bool)

(assert (=> d!294706 m!1201177))

(assert (=> d!294706 m!1200823))

(assert (=> bm!70166 m!1200951))

(declare-fun m!1201179 () Bool)

(assert (=> bm!70166 m!1201179))

(declare-fun m!1201181 () Bool)

(assert (=> b!1023426 m!1201181))

(assert (=> b!1023020 d!294706))

(assert (=> b!1023020 d!294656))

(assert (=> b!1023020 d!294660))

(assert (=> b!1023009 d!294658))

(assert (=> b!1023009 d!294660))

(assert (=> d!294572 d!294694))

(assert (=> d!294572 d!294688))

(assert (=> b!1022988 d!294656))

(assert (=> bm!70116 d!294618))

(assert (=> b!1023147 d!294602))

(declare-fun d!294708 () Bool)

(assert (not d!294708))

(assert (=> b!1022795 d!294708))

(assert (=> b!1023145 d!294686))

(declare-fun d!294710 () Bool)

(assert (=> d!294710 (= (Exists!558 lambda!36455) (choose!6479 lambda!36455))))

(declare-fun bs!246817 () Bool)

(assert (= bs!246817 d!294710))

(declare-fun m!1201183 () Bool)

(assert (=> bs!246817 m!1201183))

(assert (=> d!294638 d!294710))

(declare-fun d!294712 () Bool)

(assert (=> d!294712 (= (Exists!558 lambda!36456) (choose!6479 lambda!36456))))

(declare-fun bs!246818 () Bool)

(assert (= bs!246818 d!294712))

(declare-fun m!1201185 () Bool)

(assert (=> bs!246818 m!1201185))

(assert (=> d!294638 d!294712))

(declare-fun bs!246819 () Bool)

(declare-fun d!294714 () Bool)

(assert (= bs!246819 (and d!294714 b!1023382)))

(declare-fun lambda!36463 () Int)

(assert (=> bs!246819 (not (= lambda!36463 lambda!36457))))

(declare-fun bs!246820 () Bool)

(assert (= bs!246820 (and d!294714 b!1022717)))

(assert (=> bs!246820 (not (= lambda!36463 lambda!36426))))

(declare-fun bs!246821 () Bool)

(assert (= bs!246821 (and d!294714 b!1022970)))

(assert (=> bs!246821 (not (= lambda!36463 lambda!36431))))

(declare-fun bs!246822 () Bool)

(assert (= bs!246822 (and d!294714 d!294630)))

(assert (=> bs!246822 (= lambda!36463 lambda!36450)))

(declare-fun bs!246823 () Bool)

(assert (= bs!246823 (and d!294714 d!294638)))

(assert (=> bs!246823 (not (= lambda!36463 lambda!36456))))

(assert (=> bs!246823 (= lambda!36463 lambda!36455)))

(assert (=> bs!246820 (= lambda!36463 lambda!36425)))

(declare-fun bs!246824 () Bool)

(assert (= bs!246824 (and d!294714 b!1022971)))

(assert (=> bs!246824 (not (= lambda!36463 lambda!36432))))

(declare-fun bs!246825 () Bool)

(assert (= bs!246825 (and d!294714 b!1023383)))

(assert (=> bs!246825 (not (= lambda!36463 lambda!36458))))

(assert (=> d!294714 true))

(assert (=> d!294714 true))

(assert (=> d!294714 true))

(declare-fun lambda!36464 () Int)

(assert (=> bs!246819 (not (= lambda!36464 lambda!36457))))

(assert (=> bs!246820 (= lambda!36464 lambda!36426)))

(assert (=> bs!246821 (not (= lambda!36464 lambda!36431))))

(assert (=> bs!246822 (not (= lambda!36464 lambda!36450))))

(assert (=> bs!246823 (= lambda!36464 lambda!36456)))

(declare-fun bs!246826 () Bool)

(assert (= bs!246826 d!294714))

(assert (=> bs!246826 (not (= lambda!36464 lambda!36463))))

(assert (=> bs!246823 (not (= lambda!36464 lambda!36455))))

(assert (=> bs!246820 (not (= lambda!36464 lambda!36425))))

(assert (=> bs!246824 (= (= EmptyExpr!2829 (regOne!6170 r!15766)) (= lambda!36464 lambda!36432))))

(assert (=> bs!246825 (= (and (= EmptyExpr!2829 (regOne!6170 (regTwo!6171 r!15766))) (= (regTwo!6170 r!15766) (regTwo!6170 (regTwo!6171 r!15766)))) (= lambda!36464 lambda!36458))))

(assert (=> d!294714 true))

(assert (=> d!294714 true))

(assert (=> d!294714 true))

(assert (=> d!294714 (= (Exists!558 lambda!36463) (Exists!558 lambda!36464))))

(assert (=> d!294714 true))

(declare-fun _$90!849 () Unit!15333)

(assert (=> d!294714 (= (choose!6481 EmptyExpr!2829 (regTwo!6170 r!15766) s!10566) _$90!849)))

(declare-fun m!1201187 () Bool)

(assert (=> bs!246826 m!1201187))

(declare-fun m!1201189 () Bool)

(assert (=> bs!246826 m!1201189))

(assert (=> d!294638 d!294714))

(assert (=> d!294638 d!294688))

(declare-fun d!294716 () Bool)

(assert (not d!294716))

(assert (=> b!1023204 d!294716))

(declare-fun d!294718 () Bool)

(assert (not d!294718))

(assert (=> b!1022799 d!294718))

(declare-fun d!294720 () Bool)

(assert (not d!294720))

(assert (=> b!1022799 d!294720))

(assert (=> b!1022799 d!294708))

(assert (=> b!1022799 d!294668))

(declare-fun bs!246827 () Bool)

(declare-fun b!1023445 () Bool)

(assert (= bs!246827 (and b!1023445 b!1023382)))

(declare-fun lambda!36465 () Int)

(assert (=> bs!246827 (= (and (= (reg!3158 (regOne!6171 r!15766)) (reg!3158 (regTwo!6171 r!15766))) (= (regOne!6171 r!15766) (regTwo!6171 r!15766))) (= lambda!36465 lambda!36457))))

(declare-fun bs!246828 () Bool)

(assert (= bs!246828 (and b!1023445 b!1022717)))

(assert (=> bs!246828 (not (= lambda!36465 lambda!36426))))

(declare-fun bs!246829 () Bool)

(assert (= bs!246829 (and b!1023445 b!1022970)))

(assert (=> bs!246829 (= (and (= (reg!3158 (regOne!6171 r!15766)) (reg!3158 r!15766)) (= (regOne!6171 r!15766) r!15766)) (= lambda!36465 lambda!36431))))

(declare-fun bs!246830 () Bool)

(assert (= bs!246830 (and b!1023445 d!294638)))

(assert (=> bs!246830 (not (= lambda!36465 lambda!36456))))

(declare-fun bs!246831 () Bool)

(assert (= bs!246831 (and b!1023445 d!294714)))

(assert (=> bs!246831 (not (= lambda!36465 lambda!36463))))

(assert (=> bs!246830 (not (= lambda!36465 lambda!36455))))

(assert (=> bs!246828 (not (= lambda!36465 lambda!36425))))

(declare-fun bs!246832 () Bool)

(assert (= bs!246832 (and b!1023445 b!1022971)))

(assert (=> bs!246832 (not (= lambda!36465 lambda!36432))))

(declare-fun bs!246833 () Bool)

(assert (= bs!246833 (and b!1023445 b!1023383)))

(assert (=> bs!246833 (not (= lambda!36465 lambda!36458))))

(assert (=> bs!246831 (not (= lambda!36465 lambda!36464))))

(declare-fun bs!246834 () Bool)

(assert (= bs!246834 (and b!1023445 d!294630)))

(assert (=> bs!246834 (not (= lambda!36465 lambda!36450))))

(assert (=> b!1023445 true))

(assert (=> b!1023445 true))

(declare-fun bs!246835 () Bool)

(declare-fun b!1023446 () Bool)

(assert (= bs!246835 (and b!1023446 b!1023382)))

(declare-fun lambda!36466 () Int)

(assert (=> bs!246835 (not (= lambda!36466 lambda!36457))))

(declare-fun bs!246836 () Bool)

(assert (= bs!246836 (and b!1023446 b!1022717)))

(assert (=> bs!246836 (= (and (= (regOne!6170 (regOne!6171 r!15766)) EmptyExpr!2829) (= (regTwo!6170 (regOne!6171 r!15766)) (regTwo!6170 r!15766))) (= lambda!36466 lambda!36426))))

(declare-fun bs!246837 () Bool)

(assert (= bs!246837 (and b!1023446 b!1022970)))

(assert (=> bs!246837 (not (= lambda!36466 lambda!36431))))

(declare-fun bs!246838 () Bool)

(assert (= bs!246838 (and b!1023446 d!294638)))

(assert (=> bs!246838 (= (and (= (regOne!6170 (regOne!6171 r!15766)) EmptyExpr!2829) (= (regTwo!6170 (regOne!6171 r!15766)) (regTwo!6170 r!15766))) (= lambda!36466 lambda!36456))))

(declare-fun bs!246839 () Bool)

(assert (= bs!246839 (and b!1023446 d!294714)))

(assert (=> bs!246839 (not (= lambda!36466 lambda!36463))))

(assert (=> bs!246838 (not (= lambda!36466 lambda!36455))))

(assert (=> bs!246836 (not (= lambda!36466 lambda!36425))))

(declare-fun bs!246840 () Bool)

(assert (= bs!246840 (and b!1023446 b!1023445)))

(assert (=> bs!246840 (not (= lambda!36466 lambda!36465))))

(declare-fun bs!246841 () Bool)

(assert (= bs!246841 (and b!1023446 b!1022971)))

(assert (=> bs!246841 (= (and (= (regOne!6170 (regOne!6171 r!15766)) (regOne!6170 r!15766)) (= (regTwo!6170 (regOne!6171 r!15766)) (regTwo!6170 r!15766))) (= lambda!36466 lambda!36432))))

(declare-fun bs!246842 () Bool)

(assert (= bs!246842 (and b!1023446 b!1023383)))

(assert (=> bs!246842 (= (and (= (regOne!6170 (regOne!6171 r!15766)) (regOne!6170 (regTwo!6171 r!15766))) (= (regTwo!6170 (regOne!6171 r!15766)) (regTwo!6170 (regTwo!6171 r!15766)))) (= lambda!36466 lambda!36458))))

(assert (=> bs!246839 (= (and (= (regOne!6170 (regOne!6171 r!15766)) EmptyExpr!2829) (= (regTwo!6170 (regOne!6171 r!15766)) (regTwo!6170 r!15766))) (= lambda!36466 lambda!36464))))

(declare-fun bs!246843 () Bool)

(assert (= bs!246843 (and b!1023446 d!294630)))

(assert (=> bs!246843 (not (= lambda!36466 lambda!36450))))

(assert (=> b!1023446 true))

(assert (=> b!1023446 true))

(declare-fun b!1023438 () Bool)

(declare-fun e!653305 () Bool)

(declare-fun call!70175 () Bool)

(assert (=> b!1023438 (= e!653305 call!70175)))

(declare-fun b!1023439 () Bool)

(declare-fun e!653303 () Bool)

(assert (=> b!1023439 (= e!653303 (= s!10566 (Cons!10043 (c!169488 (regOne!6171 r!15766)) Nil!10043)))))

(declare-fun b!1023440 () Bool)

(declare-fun c!169654 () Bool)

(assert (=> b!1023440 (= c!169654 ((_ is Union!2829) (regOne!6171 r!15766)))))

(declare-fun e!653309 () Bool)

(assert (=> b!1023440 (= e!653303 e!653309)))

(declare-fun b!1023441 () Bool)

(declare-fun e!653306 () Bool)

(assert (=> b!1023441 (= e!653306 (matchRSpec!628 (regTwo!6171 (regOne!6171 r!15766)) s!10566))))

(declare-fun d!294722 () Bool)

(declare-fun c!169652 () Bool)

(assert (=> d!294722 (= c!169652 ((_ is EmptyExpr!2829) (regOne!6171 r!15766)))))

(assert (=> d!294722 (= (matchRSpec!628 (regOne!6171 r!15766) s!10566) e!653305)))

(declare-fun c!169653 () Bool)

(declare-fun call!70174 () Bool)

(declare-fun bm!70169 () Bool)

(assert (=> bm!70169 (= call!70174 (Exists!558 (ite c!169653 lambda!36465 lambda!36466)))))

(declare-fun bm!70170 () Bool)

(assert (=> bm!70170 (= call!70175 (isEmpty!6406 s!10566))))

(declare-fun b!1023442 () Bool)

(declare-fun res!459936 () Bool)

(declare-fun e!653304 () Bool)

(assert (=> b!1023442 (=> res!459936 e!653304)))

(assert (=> b!1023442 (= res!459936 call!70175)))

(declare-fun e!653308 () Bool)

(assert (=> b!1023442 (= e!653308 e!653304)))

(declare-fun b!1023443 () Bool)

(assert (=> b!1023443 (= e!653309 e!653308)))

(assert (=> b!1023443 (= c!169653 ((_ is Star!2829) (regOne!6171 r!15766)))))

(declare-fun b!1023444 () Bool)

(declare-fun c!169655 () Bool)

(assert (=> b!1023444 (= c!169655 ((_ is ElementMatch!2829) (regOne!6171 r!15766)))))

(declare-fun e!653307 () Bool)

(assert (=> b!1023444 (= e!653307 e!653303)))

(assert (=> b!1023445 (= e!653304 call!70174)))

(assert (=> b!1023446 (= e!653308 call!70174)))

(declare-fun b!1023447 () Bool)

(assert (=> b!1023447 (= e!653309 e!653306)))

(declare-fun res!459937 () Bool)

(assert (=> b!1023447 (= res!459937 (matchRSpec!628 (regOne!6171 (regOne!6171 r!15766)) s!10566))))

(assert (=> b!1023447 (=> res!459937 e!653306)))

(declare-fun b!1023448 () Bool)

(assert (=> b!1023448 (= e!653305 e!653307)))

(declare-fun res!459935 () Bool)

(assert (=> b!1023448 (= res!459935 (not ((_ is EmptyLang!2829) (regOne!6171 r!15766))))))

(assert (=> b!1023448 (=> (not res!459935) (not e!653307))))

(assert (= (and d!294722 c!169652) b!1023438))

(assert (= (and d!294722 (not c!169652)) b!1023448))

(assert (= (and b!1023448 res!459935) b!1023444))

(assert (= (and b!1023444 c!169655) b!1023439))

(assert (= (and b!1023444 (not c!169655)) b!1023440))

(assert (= (and b!1023440 c!169654) b!1023447))

(assert (= (and b!1023440 (not c!169654)) b!1023443))

(assert (= (and b!1023447 (not res!459937)) b!1023441))

(assert (= (and b!1023443 c!169653) b!1023442))

(assert (= (and b!1023443 (not c!169653)) b!1023446))

(assert (= (and b!1023442 (not res!459936)) b!1023445))

(assert (= (or b!1023445 b!1023446) bm!70169))

(assert (= (or b!1023438 b!1023442) bm!70170))

(declare-fun m!1201191 () Bool)

(assert (=> b!1023441 m!1201191))

(declare-fun m!1201193 () Bool)

(assert (=> bm!70169 m!1201193))

(assert (=> bm!70170 m!1200845))

(declare-fun m!1201195 () Bool)

(assert (=> b!1023447 m!1201195))

(assert (=> b!1022972 d!294722))

(declare-fun d!294724 () Bool)

(declare-fun res!459938 () Bool)

(declare-fun e!653315 () Bool)

(assert (=> d!294724 (=> res!459938 e!653315)))

(assert (=> d!294724 (= res!459938 ((_ is ElementMatch!2829) lt!354741))))

(assert (=> d!294724 (= (validRegex!1298 lt!354741) e!653315)))

(declare-fun b!1023449 () Bool)

(declare-fun e!653313 () Bool)

(declare-fun call!70178 () Bool)

(assert (=> b!1023449 (= e!653313 call!70178)))

(declare-fun b!1023450 () Bool)

(declare-fun e!653314 () Bool)

(assert (=> b!1023450 (= e!653314 e!653313)))

(declare-fun res!459939 () Bool)

(assert (=> b!1023450 (= res!459939 (not (nullable!930 (reg!3158 lt!354741))))))

(assert (=> b!1023450 (=> (not res!459939) (not e!653313))))

(declare-fun b!1023451 () Bool)

(assert (=> b!1023451 (= e!653315 e!653314)))

(declare-fun c!169657 () Bool)

(assert (=> b!1023451 (= c!169657 ((_ is Star!2829) lt!354741))))

(declare-fun b!1023452 () Bool)

(declare-fun e!653310 () Bool)

(declare-fun e!653311 () Bool)

(assert (=> b!1023452 (= e!653310 e!653311)))

(declare-fun res!459942 () Bool)

(assert (=> b!1023452 (=> (not res!459942) (not e!653311))))

(declare-fun call!70176 () Bool)

(assert (=> b!1023452 (= res!459942 call!70176)))

(declare-fun b!1023453 () Bool)

(declare-fun call!70177 () Bool)

(assert (=> b!1023453 (= e!653311 call!70177)))

(declare-fun b!1023454 () Bool)

(declare-fun res!459940 () Bool)

(assert (=> b!1023454 (=> res!459940 e!653310)))

(assert (=> b!1023454 (= res!459940 (not ((_ is Concat!4662) lt!354741)))))

(declare-fun e!653316 () Bool)

(assert (=> b!1023454 (= e!653316 e!653310)))

(declare-fun bm!70171 () Bool)

(declare-fun c!169656 () Bool)

(assert (=> bm!70171 (= call!70177 (validRegex!1298 (ite c!169656 (regTwo!6171 lt!354741) (regTwo!6170 lt!354741))))))

(declare-fun bm!70172 () Bool)

(assert (=> bm!70172 (= call!70178 (validRegex!1298 (ite c!169657 (reg!3158 lt!354741) (ite c!169656 (regOne!6171 lt!354741) (regOne!6170 lt!354741)))))))

(declare-fun b!1023455 () Bool)

(declare-fun e!653312 () Bool)

(assert (=> b!1023455 (= e!653312 call!70177)))

(declare-fun b!1023456 () Bool)

(declare-fun res!459941 () Bool)

(assert (=> b!1023456 (=> (not res!459941) (not e!653312))))

(assert (=> b!1023456 (= res!459941 call!70176)))

(assert (=> b!1023456 (= e!653316 e!653312)))

(declare-fun b!1023457 () Bool)

(assert (=> b!1023457 (= e!653314 e!653316)))

(assert (=> b!1023457 (= c!169656 ((_ is Union!2829) lt!354741))))

(declare-fun bm!70173 () Bool)

(assert (=> bm!70173 (= call!70176 call!70178)))

(assert (= (and d!294724 (not res!459938)) b!1023451))

(assert (= (and b!1023451 c!169657) b!1023450))

(assert (= (and b!1023451 (not c!169657)) b!1023457))

(assert (= (and b!1023450 res!459939) b!1023449))

(assert (= (and b!1023457 c!169656) b!1023456))

(assert (= (and b!1023457 (not c!169656)) b!1023454))

(assert (= (and b!1023456 res!459941) b!1023455))

(assert (= (and b!1023454 (not res!459940)) b!1023452))

(assert (= (and b!1023452 res!459942) b!1023453))

(assert (= (or b!1023455 b!1023453) bm!70171))

(assert (= (or b!1023456 b!1023452) bm!70173))

(assert (= (or b!1023449 bm!70173) bm!70172))

(declare-fun m!1201197 () Bool)

(assert (=> b!1023450 m!1201197))

(declare-fun m!1201199 () Bool)

(assert (=> bm!70171 m!1201199))

(declare-fun m!1201201 () Bool)

(assert (=> bm!70172 m!1201201))

(assert (=> d!294604 d!294724))

(assert (=> d!294604 d!294582))

(assert (=> d!294630 d!294620))

(declare-fun bs!246844 () Bool)

(declare-fun d!294726 () Bool)

(assert (= bs!246844 (and d!294726 b!1023382)))

(declare-fun lambda!36469 () Int)

(assert (=> bs!246844 (not (= lambda!36469 lambda!36457))))

(declare-fun bs!246845 () Bool)

(assert (= bs!246845 (and d!294726 b!1022717)))

(assert (=> bs!246845 (not (= lambda!36469 lambda!36426))))

(declare-fun bs!246846 () Bool)

(assert (= bs!246846 (and d!294726 b!1022970)))

(assert (=> bs!246846 (not (= lambda!36469 lambda!36431))))

(declare-fun bs!246847 () Bool)

(assert (= bs!246847 (and d!294726 d!294638)))

(assert (=> bs!246847 (not (= lambda!36469 lambda!36456))))

(declare-fun bs!246848 () Bool)

(assert (= bs!246848 (and d!294726 b!1023446)))

(assert (=> bs!246848 (not (= lambda!36469 lambda!36466))))

(declare-fun bs!246849 () Bool)

(assert (= bs!246849 (and d!294726 d!294714)))

(assert (=> bs!246849 (= lambda!36469 lambda!36463)))

(assert (=> bs!246847 (= lambda!36469 lambda!36455)))

(assert (=> bs!246845 (= lambda!36469 lambda!36425)))

(declare-fun bs!246850 () Bool)

(assert (= bs!246850 (and d!294726 b!1023445)))

(assert (=> bs!246850 (not (= lambda!36469 lambda!36465))))

(declare-fun bs!246851 () Bool)

(assert (= bs!246851 (and d!294726 b!1022971)))

(assert (=> bs!246851 (not (= lambda!36469 lambda!36432))))

(declare-fun bs!246852 () Bool)

(assert (= bs!246852 (and d!294726 b!1023383)))

(assert (=> bs!246852 (not (= lambda!36469 lambda!36458))))

(assert (=> bs!246849 (not (= lambda!36469 lambda!36464))))

(declare-fun bs!246853 () Bool)

(assert (= bs!246853 (and d!294726 d!294630)))

(assert (=> bs!246853 (= lambda!36469 lambda!36450)))

(assert (=> d!294726 true))

(assert (=> d!294726 true))

(assert (=> d!294726 true))

(assert (=> d!294726 (= (isDefined!2004 (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) Nil!10043 s!10566 s!10566)) (Exists!558 lambda!36469))))

(assert (=> d!294726 true))

(declare-fun _$89!1197 () Unit!15333)

(assert (=> d!294726 (= (choose!6480 EmptyExpr!2829 (regTwo!6170 r!15766) s!10566) _$89!1197)))

(declare-fun bs!246854 () Bool)

(assert (= bs!246854 d!294726))

(assert (=> bs!246854 m!1200847))

(assert (=> bs!246854 m!1200847))

(assert (=> bs!246854 m!1201045))

(declare-fun m!1201203 () Bool)

(assert (=> bs!246854 m!1201203))

(assert (=> d!294630 d!294726))

(declare-fun d!294728 () Bool)

(assert (=> d!294728 (= (isDefined!2004 (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) Nil!10043 s!10566 s!10566)) (not (isEmpty!6405 (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) Nil!10043 s!10566 s!10566))))))

(declare-fun bs!246855 () Bool)

(assert (= bs!246855 d!294728))

(assert (=> bs!246855 m!1200847))

(declare-fun m!1201205 () Bool)

(assert (=> bs!246855 m!1201205))

(assert (=> d!294630 d!294728))

(assert (=> d!294630 d!294688))

(declare-fun d!294730 () Bool)

(assert (=> d!294730 (= (Exists!558 lambda!36450) (choose!6479 lambda!36450))))

(declare-fun bs!246856 () Bool)

(assert (= bs!246856 d!294730))

(declare-fun m!1201207 () Bool)

(assert (=> bs!246856 m!1201207))

(assert (=> d!294630 d!294730))

(declare-fun b!1023462 () Bool)

(declare-fun res!459952 () Bool)

(declare-fun e!653325 () Bool)

(assert (=> b!1023462 (=> res!459952 e!653325)))

(declare-fun e!653322 () Bool)

(assert (=> b!1023462 (= res!459952 e!653322)))

(declare-fun res!459950 () Bool)

(assert (=> b!1023462 (=> (not res!459950) (not e!653322))))

(declare-fun lt!354799 () Bool)

(assert (=> b!1023462 (= res!459950 lt!354799)))

(declare-fun b!1023463 () Bool)

(declare-fun e!653320 () Bool)

(assert (=> b!1023463 (= e!653325 e!653320)))

(declare-fun res!459953 () Bool)

(assert (=> b!1023463 (=> (not res!459953) (not e!653320))))

(assert (=> b!1023463 (= res!459953 (not lt!354799))))

(declare-fun b!1023464 () Bool)

(declare-fun e!653324 () Bool)

(assert (=> b!1023464 (= e!653324 (not (= (head!1886 (tail!1447 s!10566)) (c!169488 (derivativeStep!731 r!15766 (head!1886 s!10566))))))))

(declare-fun b!1023465 () Bool)

(assert (=> b!1023465 (= e!653322 (= (head!1886 (tail!1447 s!10566)) (c!169488 (derivativeStep!731 r!15766 (head!1886 s!10566)))))))

(declare-fun b!1023466 () Bool)

(declare-fun res!459954 () Bool)

(assert (=> b!1023466 (=> (not res!459954) (not e!653322))))

(declare-fun call!70179 () Bool)

(assert (=> b!1023466 (= res!459954 (not call!70179))))

(declare-fun b!1023467 () Bool)

(declare-fun e!653323 () Bool)

(declare-fun e!653319 () Bool)

(assert (=> b!1023467 (= e!653323 e!653319)))

(declare-fun c!169658 () Bool)

(assert (=> b!1023467 (= c!169658 ((_ is EmptyLang!2829) (derivativeStep!731 r!15766 (head!1886 s!10566))))))

(declare-fun b!1023468 () Bool)

(declare-fun res!459951 () Bool)

(assert (=> b!1023468 (=> res!459951 e!653324)))

(assert (=> b!1023468 (= res!459951 (not (isEmpty!6406 (tail!1447 (tail!1447 s!10566)))))))

(declare-fun b!1023469 () Bool)

(declare-fun e!653321 () Bool)

(assert (=> b!1023469 (= e!653321 (matchR!1365 (derivativeStep!731 (derivativeStep!731 r!15766 (head!1886 s!10566)) (head!1886 (tail!1447 s!10566))) (tail!1447 (tail!1447 s!10566))))))

(declare-fun b!1023470 () Bool)

(assert (=> b!1023470 (= e!653321 (nullable!930 (derivativeStep!731 r!15766 (head!1886 s!10566))))))

(declare-fun b!1023472 () Bool)

(declare-fun res!459947 () Bool)

(assert (=> b!1023472 (=> (not res!459947) (not e!653322))))

(assert (=> b!1023472 (= res!459947 (isEmpty!6406 (tail!1447 (tail!1447 s!10566))))))

(declare-fun b!1023473 () Bool)

(assert (=> b!1023473 (= e!653320 e!653324)))

(declare-fun res!459948 () Bool)

(assert (=> b!1023473 (=> res!459948 e!653324)))

(assert (=> b!1023473 (= res!459948 call!70179)))

(declare-fun b!1023474 () Bool)

(assert (=> b!1023474 (= e!653319 (not lt!354799))))

(declare-fun b!1023475 () Bool)

(declare-fun res!459949 () Bool)

(assert (=> b!1023475 (=> res!459949 e!653325)))

(assert (=> b!1023475 (= res!459949 (not ((_ is ElementMatch!2829) (derivativeStep!731 r!15766 (head!1886 s!10566)))))))

(assert (=> b!1023475 (= e!653319 e!653325)))

(declare-fun bm!70174 () Bool)

(assert (=> bm!70174 (= call!70179 (isEmpty!6406 (tail!1447 s!10566)))))

(declare-fun d!294732 () Bool)

(assert (=> d!294732 e!653323))

(declare-fun c!169659 () Bool)

(assert (=> d!294732 (= c!169659 ((_ is EmptyExpr!2829) (derivativeStep!731 r!15766 (head!1886 s!10566))))))

(assert (=> d!294732 (= lt!354799 e!653321)))

(declare-fun c!169660 () Bool)

(assert (=> d!294732 (= c!169660 (isEmpty!6406 (tail!1447 s!10566)))))

(assert (=> d!294732 (validRegex!1298 (derivativeStep!731 r!15766 (head!1886 s!10566)))))

(assert (=> d!294732 (= (matchR!1365 (derivativeStep!731 r!15766 (head!1886 s!10566)) (tail!1447 s!10566)) lt!354799)))

(declare-fun b!1023471 () Bool)

(assert (=> b!1023471 (= e!653323 (= lt!354799 call!70179))))

(assert (= (and d!294732 c!169660) b!1023470))

(assert (= (and d!294732 (not c!169660)) b!1023469))

(assert (= (and d!294732 c!169659) b!1023471))

(assert (= (and d!294732 (not c!169659)) b!1023467))

(assert (= (and b!1023467 c!169658) b!1023474))

(assert (= (and b!1023467 (not c!169658)) b!1023475))

(assert (= (and b!1023475 (not res!459949)) b!1023462))

(assert (= (and b!1023462 res!459950) b!1023466))

(assert (= (and b!1023466 res!459954) b!1023472))

(assert (= (and b!1023472 res!459947) b!1023465))

(assert (= (and b!1023462 (not res!459952)) b!1023463))

(assert (= (and b!1023463 res!459953) b!1023473))

(assert (= (and b!1023473 (not res!459948)) b!1023468))

(assert (= (and b!1023468 (not res!459951)) b!1023464))

(assert (= (or b!1023471 b!1023466 b!1023473) bm!70174))

(assert (=> b!1023465 m!1200955))

(assert (=> b!1023465 m!1201161))

(assert (=> d!294732 m!1200955))

(assert (=> d!294732 m!1200957))

(assert (=> d!294732 m!1200959))

(declare-fun m!1201209 () Bool)

(assert (=> d!294732 m!1201209))

(assert (=> b!1023464 m!1200955))

(assert (=> b!1023464 m!1201161))

(assert (=> b!1023470 m!1200959))

(declare-fun m!1201211 () Bool)

(assert (=> b!1023470 m!1201211))

(assert (=> bm!70174 m!1200955))

(assert (=> bm!70174 m!1200957))

(assert (=> b!1023472 m!1200955))

(assert (=> b!1023472 m!1201167))

(assert (=> b!1023472 m!1201167))

(assert (=> b!1023472 m!1201169))

(assert (=> b!1023469 m!1200955))

(assert (=> b!1023469 m!1201161))

(assert (=> b!1023469 m!1200959))

(assert (=> b!1023469 m!1201161))

(declare-fun m!1201213 () Bool)

(assert (=> b!1023469 m!1201213))

(assert (=> b!1023469 m!1200955))

(assert (=> b!1023469 m!1201167))

(assert (=> b!1023469 m!1201213))

(assert (=> b!1023469 m!1201167))

(declare-fun m!1201215 () Bool)

(assert (=> b!1023469 m!1201215))

(assert (=> b!1023468 m!1200955))

(assert (=> b!1023468 m!1201167))

(assert (=> b!1023468 m!1201167))

(assert (=> b!1023468 m!1201169))

(assert (=> b!1022992 d!294732))

(declare-fun call!70181 () Regex!2829)

(declare-fun c!169663 () Bool)

(declare-fun bm!70175 () Bool)

(assert (=> bm!70175 (= call!70181 (derivativeStep!731 (ite c!169663 (regOne!6171 r!15766) (regOne!6170 r!15766)) (head!1886 s!10566)))))

(declare-fun d!294734 () Bool)

(declare-fun lt!354800 () Regex!2829)

(assert (=> d!294734 (validRegex!1298 lt!354800)))

(declare-fun e!653329 () Regex!2829)

(assert (=> d!294734 (= lt!354800 e!653329)))

(declare-fun c!169661 () Bool)

(assert (=> d!294734 (= c!169661 (or ((_ is EmptyExpr!2829) r!15766) ((_ is EmptyLang!2829) r!15766)))))

(assert (=> d!294734 (validRegex!1298 r!15766)))

(assert (=> d!294734 (= (derivativeStep!731 r!15766 (head!1886 s!10566)) lt!354800)))

(declare-fun call!70183 () Regex!2829)

(declare-fun bm!70176 () Bool)

(declare-fun c!169664 () Bool)

(declare-fun c!169662 () Bool)

(assert (=> bm!70176 (= call!70183 (derivativeStep!731 (ite c!169663 (regTwo!6171 r!15766) (ite c!169662 (reg!3158 r!15766) (ite c!169664 (regTwo!6170 r!15766) (regOne!6170 r!15766)))) (head!1886 s!10566)))))

(declare-fun b!1023476 () Bool)

(declare-fun e!653326 () Regex!2829)

(assert (=> b!1023476 (= e!653326 (ite (= (head!1886 s!10566) (c!169488 r!15766)) EmptyExpr!2829 EmptyLang!2829))))

(declare-fun b!1023477 () Bool)

(assert (=> b!1023477 (= e!653329 e!653326)))

(declare-fun c!169665 () Bool)

(assert (=> b!1023477 (= c!169665 ((_ is ElementMatch!2829) r!15766))))

(declare-fun b!1023478 () Bool)

(declare-fun e!653327 () Regex!2829)

(assert (=> b!1023478 (= e!653327 (Union!2829 call!70181 call!70183))))

(declare-fun b!1023479 () Bool)

(declare-fun e!653328 () Regex!2829)

(assert (=> b!1023479 (= e!653327 e!653328)))

(assert (=> b!1023479 (= c!169662 ((_ is Star!2829) r!15766))))

(declare-fun b!1023480 () Bool)

(declare-fun e!653330 () Regex!2829)

(declare-fun call!70182 () Regex!2829)

(assert (=> b!1023480 (= e!653330 (Union!2829 (Concat!4662 call!70182 (regTwo!6170 r!15766)) EmptyLang!2829))))

(declare-fun b!1023481 () Bool)

(declare-fun call!70180 () Regex!2829)

(assert (=> b!1023481 (= e!653328 (Concat!4662 call!70180 r!15766))))

(declare-fun b!1023482 () Bool)

(assert (=> b!1023482 (= c!169664 (nullable!930 (regOne!6170 r!15766)))))

(assert (=> b!1023482 (= e!653328 e!653330)))

(declare-fun bm!70177 () Bool)

(assert (=> bm!70177 (= call!70182 call!70180)))

(declare-fun b!1023483 () Bool)

(assert (=> b!1023483 (= c!169663 ((_ is Union!2829) r!15766))))

(assert (=> b!1023483 (= e!653326 e!653327)))

(declare-fun bm!70178 () Bool)

(assert (=> bm!70178 (= call!70180 call!70183)))

(declare-fun b!1023484 () Bool)

(assert (=> b!1023484 (= e!653329 EmptyLang!2829)))

(declare-fun b!1023485 () Bool)

(assert (=> b!1023485 (= e!653330 (Union!2829 (Concat!4662 call!70181 (regTwo!6170 r!15766)) call!70182))))

(assert (= (and d!294734 c!169661) b!1023484))

(assert (= (and d!294734 (not c!169661)) b!1023477))

(assert (= (and b!1023477 c!169665) b!1023476))

(assert (= (and b!1023477 (not c!169665)) b!1023483))

(assert (= (and b!1023483 c!169663) b!1023478))

(assert (= (and b!1023483 (not c!169663)) b!1023479))

(assert (= (and b!1023479 c!169662) b!1023481))

(assert (= (and b!1023479 (not c!169662)) b!1023482))

(assert (= (and b!1023482 c!169664) b!1023485))

(assert (= (and b!1023482 (not c!169664)) b!1023480))

(assert (= (or b!1023485 b!1023480) bm!70177))

(assert (= (or b!1023481 bm!70177) bm!70178))

(assert (= (or b!1023478 b!1023485) bm!70175))

(assert (= (or b!1023478 bm!70178) bm!70176))

(assert (=> bm!70175 m!1200951))

(declare-fun m!1201217 () Bool)

(assert (=> bm!70175 m!1201217))

(declare-fun m!1201219 () Bool)

(assert (=> d!294734 m!1201219))

(assert (=> d!294734 m!1200849))

(assert (=> bm!70176 m!1200951))

(declare-fun m!1201221 () Bool)

(assert (=> bm!70176 m!1201221))

(declare-fun m!1201223 () Bool)

(assert (=> b!1023482 m!1201223))

(assert (=> b!1022992 d!294734))

(assert (=> b!1022992 d!294656))

(assert (=> b!1022992 d!294660))

(assert (=> d!294596 d!294594))

(assert (=> d!294596 d!294584))

(declare-fun d!294736 () Bool)

(assert (=> d!294736 (= (matchR!1365 r!15766 s!10566) (matchRSpec!628 r!15766 s!10566))))

(assert (=> d!294736 true))

(declare-fun _$88!3079 () Unit!15333)

(assert (=> d!294736 (= (choose!6476 r!15766 s!10566) _$88!3079)))

(declare-fun bs!246857 () Bool)

(assert (= bs!246857 d!294736))

(assert (=> bs!246857 m!1200829))

(assert (=> bs!246857 m!1200827))

(assert (=> d!294596 d!294736))

(assert (=> d!294596 d!294578))

(declare-fun d!294738 () Bool)

(assert (=> d!294738 (= (nullable!930 lt!354741) (nullableFct!216 lt!354741))))

(declare-fun bs!246858 () Bool)

(assert (= bs!246858 d!294738))

(declare-fun m!1201225 () Bool)

(assert (=> bs!246858 m!1201225))

(assert (=> b!1023087 d!294738))

(declare-fun d!294740 () Bool)

(assert (=> d!294740 (= (nullable!930 (regTwo!6170 r!15766)) (nullableFct!216 (regTwo!6170 r!15766)))))

(declare-fun bs!246859 () Bool)

(assert (= bs!246859 d!294740))

(declare-fun m!1201227 () Bool)

(assert (=> bs!246859 m!1201227))

(assert (=> b!1023087 d!294740))

(assert (=> b!1023252 d!294708))

(declare-fun b!1023486 () Bool)

(declare-fun c!169669 () Bool)

(assert (=> b!1023486 (= c!169669 ((_ is Concat!4662) (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))))))

(declare-fun e!653336 () Regex!2829)

(declare-fun e!653331 () Regex!2829)

(assert (=> b!1023486 (= e!653336 e!653331)))

(declare-fun b!1023487 () Bool)

(declare-fun call!70185 () Regex!2829)

(declare-fun call!70186 () Regex!2829)

(assert (=> b!1023487 (= e!653331 (Concat!4662 call!70185 call!70186))))

(declare-fun b!1023488 () Bool)

(declare-fun e!653334 () Regex!2829)

(assert (=> b!1023488 (= e!653334 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766))))))

(declare-fun b!1023489 () Bool)

(declare-fun c!169668 () Bool)

(assert (=> b!1023489 (= c!169668 ((_ is Star!2829) (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))))))

(declare-fun e!653335 () Regex!2829)

(assert (=> b!1023489 (= e!653335 e!653334)))

(declare-fun d!294742 () Bool)

(declare-fun e!653333 () Bool)

(assert (=> d!294742 e!653333))

(declare-fun res!459955 () Bool)

(assert (=> d!294742 (=> (not res!459955) (not e!653333))))

(declare-fun lt!354801 () Regex!2829)

(assert (=> d!294742 (= res!459955 (validRegex!1298 lt!354801))))

(declare-fun e!653332 () Regex!2829)

(assert (=> d!294742 (= lt!354801 e!653332)))

(declare-fun c!169667 () Bool)

(assert (=> d!294742 (= c!169667 (and ((_ is Concat!4662) (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))) ((_ is EmptyExpr!2829) (regOne!6170 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))))))))

(assert (=> d!294742 (validRegex!1298 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766))))))

(assert (=> d!294742 (= (removeUselessConcat!398 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))) lt!354801)))

(declare-fun bm!70179 () Bool)

(declare-fun call!70184 () Regex!2829)

(assert (=> bm!70179 (= call!70184 call!70185)))

(declare-fun bm!70180 () Bool)

(declare-fun call!70188 () Regex!2829)

(assert (=> bm!70180 (= call!70185 call!70188)))

(declare-fun b!1023490 () Bool)

(assert (=> b!1023490 (= e!653335 (Union!2829 call!70186 call!70184))))

(declare-fun b!1023491 () Bool)

(assert (=> b!1023491 (= e!653331 e!653335)))

(declare-fun c!169666 () Bool)

(assert (=> b!1023491 (= c!169666 ((_ is Union!2829) (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))))))

(declare-fun b!1023492 () Bool)

(assert (=> b!1023492 (= e!653333 (= (nullable!930 lt!354801) (nullable!930 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766))))))))

(declare-fun b!1023493 () Bool)

(assert (=> b!1023493 (= e!653336 call!70188)))

(declare-fun bm!70181 () Bool)

(assert (=> bm!70181 (= call!70186 (removeUselessConcat!398 (ite c!169669 (regTwo!6170 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))) (regOne!6171 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))))))))

(declare-fun bm!70182 () Bool)

(declare-fun call!70187 () Regex!2829)

(declare-fun c!169670 () Bool)

(assert (=> bm!70182 (= call!70187 (removeUselessConcat!398 (ite c!169667 (regTwo!6170 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))) (ite (or c!169670 c!169669) (regOne!6170 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))) (ite c!169666 (regTwo!6171 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))) (reg!3158 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))))))))))

(declare-fun b!1023494 () Bool)

(assert (=> b!1023494 (= e!653332 e!653336)))

(assert (=> b!1023494 (= c!169670 (and ((_ is Concat!4662) (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))) ((_ is EmptyExpr!2829) (regTwo!6170 (ite c!169587 (regTwo!6170 (regTwo!6170 r!15766)) (regOne!6171 (regTwo!6170 r!15766)))))))))

(declare-fun b!1023495 () Bool)

(assert (=> b!1023495 (= e!653332 call!70187)))

(declare-fun bm!70183 () Bool)

(assert (=> bm!70183 (= call!70188 call!70187)))

(declare-fun b!1023496 () Bool)

(assert (=> b!1023496 (= e!653334 (Star!2829 call!70184))))

(assert (= (and d!294742 c!169667) b!1023495))

(assert (= (and d!294742 (not c!169667)) b!1023494))

(assert (= (and b!1023494 c!169670) b!1023493))

(assert (= (and b!1023494 (not c!169670)) b!1023486))

(assert (= (and b!1023486 c!169669) b!1023487))

(assert (= (and b!1023486 (not c!169669)) b!1023491))

(assert (= (and b!1023491 c!169666) b!1023490))

(assert (= (and b!1023491 (not c!169666)) b!1023489))

(assert (= (and b!1023489 c!169668) b!1023496))

(assert (= (and b!1023489 (not c!169668)) b!1023488))

(assert (= (or b!1023490 b!1023496) bm!70179))

(assert (= (or b!1023487 b!1023490) bm!70181))

(assert (= (or b!1023487 bm!70179) bm!70180))

(assert (= (or b!1023493 bm!70180) bm!70183))

(assert (= (or b!1023495 bm!70183) bm!70182))

(assert (= (and d!294742 res!459955) b!1023492))

(declare-fun m!1201229 () Bool)

(assert (=> d!294742 m!1201229))

(declare-fun m!1201231 () Bool)

(assert (=> d!294742 m!1201231))

(declare-fun m!1201233 () Bool)

(assert (=> b!1023492 m!1201233))

(declare-fun m!1201235 () Bool)

(assert (=> b!1023492 m!1201235))

(declare-fun m!1201237 () Bool)

(assert (=> bm!70181 m!1201237))

(declare-fun m!1201239 () Bool)

(assert (=> bm!70182 m!1201239))

(assert (=> bm!70134 d!294742))

(declare-fun d!294744 () Bool)

(declare-fun c!169673 () Bool)

(assert (=> d!294744 (= c!169673 ((_ is Nil!10043) lt!354781))))

(declare-fun e!653339 () (InoxSet C!6228))

(assert (=> d!294744 (= (content!1442 lt!354781) e!653339)))

(declare-fun b!1023501 () Bool)

(assert (=> b!1023501 (= e!653339 ((as const (Array C!6228 Bool)) false))))

(declare-fun b!1023502 () Bool)

(assert (=> b!1023502 (= e!653339 ((_ map or) (store ((as const (Array C!6228 Bool)) false) (h!15444 lt!354781) true) (content!1442 (t!101105 lt!354781))))))

(assert (= (and d!294744 c!169673) b!1023501))

(assert (= (and d!294744 (not c!169673)) b!1023502))

(declare-fun m!1201241 () Bool)

(assert (=> b!1023502 m!1201241))

(declare-fun m!1201243 () Bool)

(assert (=> b!1023502 m!1201243))

(assert (=> d!294642 d!294744))

(declare-fun d!294746 () Bool)

(assert (=> d!294746 (= (content!1442 Nil!10043) ((as const (Array C!6228 Bool)) false))))

(assert (=> d!294642 d!294746))

(declare-fun d!294748 () Bool)

(declare-fun c!169674 () Bool)

(assert (=> d!294748 (= c!169674 ((_ is Nil!10043) s!10566))))

(declare-fun e!653340 () (InoxSet C!6228))

(assert (=> d!294748 (= (content!1442 s!10566) e!653340)))

(declare-fun b!1023503 () Bool)

(assert (=> b!1023503 (= e!653340 ((as const (Array C!6228 Bool)) false))))

(declare-fun b!1023504 () Bool)

(assert (=> b!1023504 (= e!653340 ((_ map or) (store ((as const (Array C!6228 Bool)) false) (h!15444 s!10566) true) (content!1442 (t!101105 s!10566))))))

(assert (= (and d!294748 c!169674) b!1023503))

(assert (= (and d!294748 (not c!169674)) b!1023504))

(declare-fun m!1201245 () Bool)

(assert (=> b!1023504 m!1201245))

(declare-fun m!1201247 () Bool)

(assert (=> b!1023504 m!1201247))

(assert (=> d!294642 d!294748))

(assert (=> b!1023254 d!294652))

(assert (=> d!294602 d!294618))

(assert (=> d!294602 d!294582))

(declare-fun b!1023505 () Bool)

(declare-fun c!169678 () Bool)

(assert (=> b!1023505 (= c!169678 ((_ is Concat!4662) (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))))))

(declare-fun e!653346 () Regex!2829)

(declare-fun e!653341 () Regex!2829)

(assert (=> b!1023505 (= e!653346 e!653341)))

(declare-fun b!1023506 () Bool)

(declare-fun call!70190 () Regex!2829)

(declare-fun call!70191 () Regex!2829)

(assert (=> b!1023506 (= e!653341 (Concat!4662 call!70190 call!70191))))

(declare-fun b!1023507 () Bool)

(declare-fun e!653344 () Regex!2829)

(assert (=> b!1023507 (= e!653344 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766))))))))

(declare-fun b!1023508 () Bool)

(declare-fun c!169677 () Bool)

(assert (=> b!1023508 (= c!169677 ((_ is Star!2829) (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))))))

(declare-fun e!653345 () Regex!2829)

(assert (=> b!1023508 (= e!653345 e!653344)))

(declare-fun d!294750 () Bool)

(declare-fun e!653343 () Bool)

(assert (=> d!294750 e!653343))

(declare-fun res!459956 () Bool)

(assert (=> d!294750 (=> (not res!459956) (not e!653343))))

(declare-fun lt!354802 () Regex!2829)

(assert (=> d!294750 (= res!459956 (validRegex!1298 lt!354802))))

(declare-fun e!653342 () Regex!2829)

(assert (=> d!294750 (= lt!354802 e!653342)))

(declare-fun c!169676 () Bool)

(assert (=> d!294750 (= c!169676 (and ((_ is Concat!4662) (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))) ((_ is EmptyExpr!2829) (regOne!6170 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))))))))

(assert (=> d!294750 (validRegex!1298 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766))))))))

(assert (=> d!294750 (= (removeUselessConcat!398 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))) lt!354802)))

(declare-fun bm!70184 () Bool)

(declare-fun call!70189 () Regex!2829)

(assert (=> bm!70184 (= call!70189 call!70190)))

(declare-fun bm!70185 () Bool)

(declare-fun call!70193 () Regex!2829)

(assert (=> bm!70185 (= call!70190 call!70193)))

(declare-fun b!1023509 () Bool)

(assert (=> b!1023509 (= e!653345 (Union!2829 call!70191 call!70189))))

(declare-fun b!1023510 () Bool)

(assert (=> b!1023510 (= e!653341 e!653345)))

(declare-fun c!169675 () Bool)

(assert (=> b!1023510 (= c!169675 ((_ is Union!2829) (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))))))

(declare-fun b!1023511 () Bool)

(assert (=> b!1023511 (= e!653343 (= (nullable!930 lt!354802) (nullable!930 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766))))))))))

(declare-fun b!1023512 () Bool)

(assert (=> b!1023512 (= e!653346 call!70193)))

(declare-fun bm!70186 () Bool)

(assert (=> bm!70186 (= call!70191 (removeUselessConcat!398 (ite c!169678 (regTwo!6170 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))) (regOne!6171 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))))))))

(declare-fun bm!70187 () Bool)

(declare-fun call!70192 () Regex!2829)

(declare-fun c!169679 () Bool)

(assert (=> bm!70187 (= call!70192 (removeUselessConcat!398 (ite c!169676 (regTwo!6170 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))) (ite (or c!169679 c!169678) (regOne!6170 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))) (ite c!169675 (regTwo!6171 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))) (reg!3158 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))))))))))

(declare-fun b!1023513 () Bool)

(assert (=> b!1023513 (= e!653342 e!653346)))

(assert (=> b!1023513 (= c!169679 (and ((_ is Concat!4662) (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))) ((_ is EmptyExpr!2829) (regTwo!6170 (ite c!169585 (regTwo!6170 (regTwo!6170 r!15766)) (ite (or c!169588 c!169587) (regOne!6170 (regTwo!6170 r!15766)) (ite c!169584 (regTwo!6171 (regTwo!6170 r!15766)) (reg!3158 (regTwo!6170 r!15766)))))))))))

(declare-fun b!1023514 () Bool)

(assert (=> b!1023514 (= e!653342 call!70192)))

(declare-fun bm!70188 () Bool)

(assert (=> bm!70188 (= call!70193 call!70192)))

(declare-fun b!1023515 () Bool)

(assert (=> b!1023515 (= e!653344 (Star!2829 call!70189))))

(assert (= (and d!294750 c!169676) b!1023514))

(assert (= (and d!294750 (not c!169676)) b!1023513))

(assert (= (and b!1023513 c!169679) b!1023512))

(assert (= (and b!1023513 (not c!169679)) b!1023505))

(assert (= (and b!1023505 c!169678) b!1023506))

(assert (= (and b!1023505 (not c!169678)) b!1023510))

(assert (= (and b!1023510 c!169675) b!1023509))

(assert (= (and b!1023510 (not c!169675)) b!1023508))

(assert (= (and b!1023508 c!169677) b!1023515))

(assert (= (and b!1023508 (not c!169677)) b!1023507))

(assert (= (or b!1023509 b!1023515) bm!70184))

(assert (= (or b!1023506 b!1023509) bm!70186))

(assert (= (or b!1023506 bm!70184) bm!70185))

(assert (= (or b!1023512 bm!70185) bm!70188))

(assert (= (or b!1023514 bm!70188) bm!70187))

(assert (= (and d!294750 res!459956) b!1023511))

(declare-fun m!1201249 () Bool)

(assert (=> d!294750 m!1201249))

(declare-fun m!1201251 () Bool)

(assert (=> d!294750 m!1201251))

(declare-fun m!1201253 () Bool)

(assert (=> b!1023511 m!1201253))

(declare-fun m!1201255 () Bool)

(assert (=> b!1023511 m!1201255))

(declare-fun m!1201257 () Bool)

(assert (=> bm!70186 m!1201257))

(declare-fun m!1201259 () Bool)

(assert (=> bm!70187 m!1201259))

(assert (=> bm!70135 d!294750))

(declare-fun d!294752 () Bool)

(declare-fun res!459957 () Bool)

(declare-fun e!653352 () Bool)

(assert (=> d!294752 (=> res!459957 e!653352)))

(assert (=> d!294752 (= res!459957 ((_ is ElementMatch!2829) (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))))))

(assert (=> d!294752 (= (validRegex!1298 (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))) e!653352)))

(declare-fun b!1023516 () Bool)

(declare-fun e!653350 () Bool)

(declare-fun call!70196 () Bool)

(assert (=> b!1023516 (= e!653350 call!70196)))

(declare-fun b!1023517 () Bool)

(declare-fun e!653351 () Bool)

(assert (=> b!1023517 (= e!653351 e!653350)))

(declare-fun res!459958 () Bool)

(assert (=> b!1023517 (= res!459958 (not (nullable!930 (reg!3158 (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))))))))

(assert (=> b!1023517 (=> (not res!459958) (not e!653350))))

(declare-fun b!1023518 () Bool)

(assert (=> b!1023518 (= e!653352 e!653351)))

(declare-fun c!169681 () Bool)

(assert (=> b!1023518 (= c!169681 ((_ is Star!2829) (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))))))

(declare-fun b!1023519 () Bool)

(declare-fun e!653347 () Bool)

(declare-fun e!653348 () Bool)

(assert (=> b!1023519 (= e!653347 e!653348)))

(declare-fun res!459961 () Bool)

(assert (=> b!1023519 (=> (not res!459961) (not e!653348))))

(declare-fun call!70194 () Bool)

(assert (=> b!1023519 (= res!459961 call!70194)))

(declare-fun b!1023520 () Bool)

(declare-fun call!70195 () Bool)

(assert (=> b!1023520 (= e!653348 call!70195)))

(declare-fun b!1023521 () Bool)

(declare-fun res!459959 () Bool)

(assert (=> b!1023521 (=> res!459959 e!653347)))

(assert (=> b!1023521 (= res!459959 (not ((_ is Concat!4662) (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766)))))))

(declare-fun e!653353 () Bool)

(assert (=> b!1023521 (= e!653353 e!653347)))

(declare-fun bm!70189 () Bool)

(declare-fun c!169680 () Bool)

(assert (=> bm!70189 (= call!70195 (validRegex!1298 (ite c!169680 (regTwo!6171 (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))) (regTwo!6170 (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))))))))

(declare-fun bm!70190 () Bool)

(assert (=> bm!70190 (= call!70196 (validRegex!1298 (ite c!169681 (reg!3158 (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))) (ite c!169680 (regOne!6171 (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))) (regOne!6170 (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766)))))))))

(declare-fun b!1023522 () Bool)

(declare-fun e!653349 () Bool)

(assert (=> b!1023522 (= e!653349 call!70195)))

(declare-fun b!1023523 () Bool)

(declare-fun res!459960 () Bool)

(assert (=> b!1023523 (=> (not res!459960) (not e!653349))))

(assert (=> b!1023523 (= res!459960 call!70194)))

(assert (=> b!1023523 (= e!653353 e!653349)))

(declare-fun b!1023524 () Bool)

(assert (=> b!1023524 (= e!653351 e!653353)))

(assert (=> b!1023524 (= c!169680 ((_ is Union!2829) (ite c!169514 (regTwo!6171 r!15766) (regTwo!6170 r!15766))))))

(declare-fun bm!70191 () Bool)

(assert (=> bm!70191 (= call!70194 call!70196)))

(assert (= (and d!294752 (not res!459957)) b!1023518))

(assert (= (and b!1023518 c!169681) b!1023517))

(assert (= (and b!1023518 (not c!169681)) b!1023524))

(assert (= (and b!1023517 res!459958) b!1023516))

(assert (= (and b!1023524 c!169680) b!1023523))

(assert (= (and b!1023524 (not c!169680)) b!1023521))

(assert (= (and b!1023523 res!459960) b!1023522))

(assert (= (and b!1023521 (not res!459959)) b!1023519))

(assert (= (and b!1023519 res!459961) b!1023520))

(assert (= (or b!1023522 b!1023520) bm!70189))

(assert (= (or b!1023523 b!1023519) bm!70191))

(assert (= (or b!1023516 bm!70191) bm!70190))

(declare-fun m!1201261 () Bool)

(assert (=> b!1023517 m!1201261))

(declare-fun m!1201263 () Bool)

(assert (=> bm!70189 m!1201263))

(declare-fun m!1201265 () Bool)

(assert (=> bm!70190 m!1201265))

(assert (=> bm!70077 d!294752))

(declare-fun d!294754 () Bool)

(declare-fun res!459962 () Bool)

(declare-fun e!653359 () Bool)

(assert (=> d!294754 (=> res!459962 e!653359)))

(assert (=> d!294754 (= res!459962 ((_ is ElementMatch!2829) (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))))))

(assert (=> d!294754 (= (validRegex!1298 (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))) e!653359)))

(declare-fun b!1023525 () Bool)

(declare-fun e!653357 () Bool)

(declare-fun call!70199 () Bool)

(assert (=> b!1023525 (= e!653357 call!70199)))

(declare-fun b!1023526 () Bool)

(declare-fun e!653358 () Bool)

(assert (=> b!1023526 (= e!653358 e!653357)))

(declare-fun res!459963 () Bool)

(assert (=> b!1023526 (= res!459963 (not (nullable!930 (reg!3158 (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))))))))

(assert (=> b!1023526 (=> (not res!459963) (not e!653357))))

(declare-fun b!1023527 () Bool)

(assert (=> b!1023527 (= e!653359 e!653358)))

(declare-fun c!169683 () Bool)

(assert (=> b!1023527 (= c!169683 ((_ is Star!2829) (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))))))

(declare-fun b!1023528 () Bool)

(declare-fun e!653354 () Bool)

(declare-fun e!653355 () Bool)

(assert (=> b!1023528 (= e!653354 e!653355)))

(declare-fun res!459966 () Bool)

(assert (=> b!1023528 (=> (not res!459966) (not e!653355))))

(declare-fun call!70197 () Bool)

(assert (=> b!1023528 (= res!459966 call!70197)))

(declare-fun b!1023529 () Bool)

(declare-fun call!70198 () Bool)

(assert (=> b!1023529 (= e!653355 call!70198)))

(declare-fun b!1023530 () Bool)

(declare-fun res!459964 () Bool)

(assert (=> b!1023530 (=> res!459964 e!653354)))

(assert (=> b!1023530 (= res!459964 (not ((_ is Concat!4662) (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766))))))))

(declare-fun e!653360 () Bool)

(assert (=> b!1023530 (= e!653360 e!653354)))

(declare-fun c!169682 () Bool)

(declare-fun bm!70192 () Bool)

(assert (=> bm!70192 (= call!70198 (validRegex!1298 (ite c!169682 (regTwo!6171 (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))) (regTwo!6170 (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))))))))

(declare-fun bm!70193 () Bool)

(assert (=> bm!70193 (= call!70199 (validRegex!1298 (ite c!169683 (reg!3158 (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))) (ite c!169682 (regOne!6171 (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))) (regOne!6170 (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766))))))))))

(declare-fun b!1023531 () Bool)

(declare-fun e!653356 () Bool)

(assert (=> b!1023531 (= e!653356 call!70198)))

(declare-fun b!1023532 () Bool)

(declare-fun res!459965 () Bool)

(assert (=> b!1023532 (=> (not res!459965) (not e!653356))))

(assert (=> b!1023532 (= res!459965 call!70197)))

(assert (=> b!1023532 (= e!653360 e!653356)))

(declare-fun b!1023533 () Bool)

(assert (=> b!1023533 (= e!653358 e!653360)))

(assert (=> b!1023533 (= c!169682 ((_ is Union!2829) (ite c!169520 (regTwo!6171 (regTwo!6170 r!15766)) (regTwo!6170 (regTwo!6170 r!15766)))))))

(declare-fun bm!70194 () Bool)

(assert (=> bm!70194 (= call!70197 call!70199)))

(assert (= (and d!294754 (not res!459962)) b!1023527))

(assert (= (and b!1023527 c!169683) b!1023526))

(assert (= (and b!1023527 (not c!169683)) b!1023533))

(assert (= (and b!1023526 res!459963) b!1023525))

(assert (= (and b!1023533 c!169682) b!1023532))

(assert (= (and b!1023533 (not c!169682)) b!1023530))

(assert (= (and b!1023532 res!459965) b!1023531))

(assert (= (and b!1023530 (not res!459964)) b!1023528))

(assert (= (and b!1023528 res!459966) b!1023529))

(assert (= (or b!1023531 b!1023529) bm!70192))

(assert (= (or b!1023532 b!1023528) bm!70194))

(assert (= (or b!1023525 bm!70194) bm!70193))

(declare-fun m!1201267 () Bool)

(assert (=> b!1023526 m!1201267))

(declare-fun m!1201269 () Bool)

(assert (=> bm!70192 m!1201269))

(declare-fun m!1201271 () Bool)

(assert (=> bm!70193 m!1201271))

(assert (=> bm!70080 d!294754))

(assert (=> b!1023002 d!294656))

(assert (=> b!1023015 d!294656))

(assert (=> b!1023019 d!294658))

(assert (=> b!1023019 d!294660))

(declare-fun b!1023537 () Bool)

(declare-fun e!653361 () Bool)

(declare-fun lt!354803 () List!10059)

(assert (=> b!1023537 (= e!653361 (or (not (= (_2!6546 (get!3542 lt!354759)) Nil!10043)) (= lt!354803 (_1!6546 (get!3542 lt!354759)))))))

(declare-fun b!1023536 () Bool)

(declare-fun res!459968 () Bool)

(assert (=> b!1023536 (=> (not res!459968) (not e!653361))))

(assert (=> b!1023536 (= res!459968 (= (size!7985 lt!354803) (+ (size!7985 (_1!6546 (get!3542 lt!354759))) (size!7985 (_2!6546 (get!3542 lt!354759))))))))

(declare-fun b!1023534 () Bool)

(declare-fun e!653362 () List!10059)

(assert (=> b!1023534 (= e!653362 (_2!6546 (get!3542 lt!354759)))))

(declare-fun b!1023535 () Bool)

(assert (=> b!1023535 (= e!653362 (Cons!10043 (h!15444 (_1!6546 (get!3542 lt!354759))) (++!2747 (t!101105 (_1!6546 (get!3542 lt!354759))) (_2!6546 (get!3542 lt!354759)))))))

(declare-fun d!294756 () Bool)

(assert (=> d!294756 e!653361))

(declare-fun res!459967 () Bool)

(assert (=> d!294756 (=> (not res!459967) (not e!653361))))

(assert (=> d!294756 (= res!459967 (= (content!1442 lt!354803) ((_ map or) (content!1442 (_1!6546 (get!3542 lt!354759))) (content!1442 (_2!6546 (get!3542 lt!354759))))))))

(assert (=> d!294756 (= lt!354803 e!653362)))

(declare-fun c!169684 () Bool)

(assert (=> d!294756 (= c!169684 ((_ is Nil!10043) (_1!6546 (get!3542 lt!354759))))))

(assert (=> d!294756 (= (++!2747 (_1!6546 (get!3542 lt!354759)) (_2!6546 (get!3542 lt!354759))) lt!354803)))

(assert (= (and d!294756 c!169684) b!1023534))

(assert (= (and d!294756 (not c!169684)) b!1023535))

(assert (= (and d!294756 res!459967) b!1023536))

(assert (= (and b!1023536 res!459968) b!1023537))

(declare-fun m!1201273 () Bool)

(assert (=> b!1023536 m!1201273))

(declare-fun m!1201275 () Bool)

(assert (=> b!1023536 m!1201275))

(declare-fun m!1201277 () Bool)

(assert (=> b!1023536 m!1201277))

(declare-fun m!1201279 () Bool)

(assert (=> b!1023535 m!1201279))

(declare-fun m!1201281 () Bool)

(assert (=> d!294756 m!1201281))

(declare-fun m!1201283 () Bool)

(assert (=> d!294756 m!1201283))

(declare-fun m!1201285 () Bool)

(assert (=> d!294756 m!1201285))

(assert (=> b!1023142 d!294756))

(assert (=> b!1023142 d!294664))

(declare-fun b!1023538 () Bool)

(declare-fun res!459974 () Bool)

(declare-fun e!653369 () Bool)

(assert (=> b!1023538 (=> res!459974 e!653369)))

(declare-fun e!653366 () Bool)

(assert (=> b!1023538 (= res!459974 e!653366)))

(declare-fun res!459972 () Bool)

(assert (=> b!1023538 (=> (not res!459972) (not e!653366))))

(declare-fun lt!354804 () Bool)

(assert (=> b!1023538 (= res!459972 lt!354804)))

(declare-fun b!1023539 () Bool)

(declare-fun e!653364 () Bool)

(assert (=> b!1023539 (= e!653369 e!653364)))

(declare-fun res!459975 () Bool)

(assert (=> b!1023539 (=> (not res!459975) (not e!653364))))

(assert (=> b!1023539 (= res!459975 (not lt!354804))))

(declare-fun b!1023540 () Bool)

(declare-fun e!653368 () Bool)

(assert (=> b!1023540 (= e!653368 (not (= (head!1886 (_1!6546 (get!3542 lt!354759))) (c!169488 EmptyExpr!2829))))))

(declare-fun b!1023541 () Bool)

(assert (=> b!1023541 (= e!653366 (= (head!1886 (_1!6546 (get!3542 lt!354759))) (c!169488 EmptyExpr!2829)))))

(declare-fun b!1023542 () Bool)

(declare-fun res!459976 () Bool)

(assert (=> b!1023542 (=> (not res!459976) (not e!653366))))

(declare-fun call!70200 () Bool)

(assert (=> b!1023542 (= res!459976 (not call!70200))))

(declare-fun b!1023543 () Bool)

(declare-fun e!653367 () Bool)

(declare-fun e!653363 () Bool)

(assert (=> b!1023543 (= e!653367 e!653363)))

(declare-fun c!169685 () Bool)

(assert (=> b!1023543 (= c!169685 ((_ is EmptyLang!2829) EmptyExpr!2829))))

(declare-fun b!1023544 () Bool)

(declare-fun res!459973 () Bool)

(assert (=> b!1023544 (=> res!459973 e!653368)))

(assert (=> b!1023544 (= res!459973 (not (isEmpty!6406 (tail!1447 (_1!6546 (get!3542 lt!354759))))))))

(declare-fun b!1023545 () Bool)

(declare-fun e!653365 () Bool)

(assert (=> b!1023545 (= e!653365 (matchR!1365 (derivativeStep!731 EmptyExpr!2829 (head!1886 (_1!6546 (get!3542 lt!354759)))) (tail!1447 (_1!6546 (get!3542 lt!354759)))))))

(declare-fun b!1023546 () Bool)

(assert (=> b!1023546 (= e!653365 (nullable!930 EmptyExpr!2829))))

(declare-fun b!1023548 () Bool)

(declare-fun res!459969 () Bool)

(assert (=> b!1023548 (=> (not res!459969) (not e!653366))))

(assert (=> b!1023548 (= res!459969 (isEmpty!6406 (tail!1447 (_1!6546 (get!3542 lt!354759)))))))

(declare-fun b!1023549 () Bool)

(assert (=> b!1023549 (= e!653364 e!653368)))

(declare-fun res!459970 () Bool)

(assert (=> b!1023549 (=> res!459970 e!653368)))

(assert (=> b!1023549 (= res!459970 call!70200)))

(declare-fun b!1023550 () Bool)

(assert (=> b!1023550 (= e!653363 (not lt!354804))))

(declare-fun b!1023551 () Bool)

(declare-fun res!459971 () Bool)

(assert (=> b!1023551 (=> res!459971 e!653369)))

(assert (=> b!1023551 (= res!459971 (not ((_ is ElementMatch!2829) EmptyExpr!2829)))))

(assert (=> b!1023551 (= e!653363 e!653369)))

(declare-fun bm!70195 () Bool)

(assert (=> bm!70195 (= call!70200 (isEmpty!6406 (_1!6546 (get!3542 lt!354759))))))

(declare-fun d!294758 () Bool)

(assert (=> d!294758 e!653367))

(declare-fun c!169686 () Bool)

(assert (=> d!294758 (= c!169686 ((_ is EmptyExpr!2829) EmptyExpr!2829))))

(assert (=> d!294758 (= lt!354804 e!653365)))

(declare-fun c!169687 () Bool)

(assert (=> d!294758 (= c!169687 (isEmpty!6406 (_1!6546 (get!3542 lt!354759))))))

(assert (=> d!294758 (validRegex!1298 EmptyExpr!2829)))

(assert (=> d!294758 (= (matchR!1365 EmptyExpr!2829 (_1!6546 (get!3542 lt!354759))) lt!354804)))

(declare-fun b!1023547 () Bool)

(assert (=> b!1023547 (= e!653367 (= lt!354804 call!70200))))

(assert (= (and d!294758 c!169687) b!1023546))

(assert (= (and d!294758 (not c!169687)) b!1023545))

(assert (= (and d!294758 c!169686) b!1023547))

(assert (= (and d!294758 (not c!169686)) b!1023543))

(assert (= (and b!1023543 c!169685) b!1023550))

(assert (= (and b!1023543 (not c!169685)) b!1023551))

(assert (= (and b!1023551 (not res!459971)) b!1023538))

(assert (= (and b!1023538 res!459972) b!1023542))

(assert (= (and b!1023542 res!459976) b!1023548))

(assert (= (and b!1023548 res!459969) b!1023541))

(assert (= (and b!1023538 (not res!459974)) b!1023539))

(assert (= (and b!1023539 res!459975) b!1023549))

(assert (= (and b!1023549 (not res!459970)) b!1023544))

(assert (= (and b!1023544 (not res!459973)) b!1023540))

(assert (= (or b!1023547 b!1023542 b!1023549) bm!70195))

(declare-fun m!1201287 () Bool)

(assert (=> b!1023541 m!1201287))

(declare-fun m!1201289 () Bool)

(assert (=> d!294758 m!1201289))

(assert (=> d!294758 m!1200873))

(assert (=> b!1023540 m!1201287))

(assert (=> b!1023546 m!1200875))

(assert (=> bm!70195 m!1201289))

(declare-fun m!1201291 () Bool)

(assert (=> b!1023548 m!1201291))

(assert (=> b!1023548 m!1201291))

(declare-fun m!1201293 () Bool)

(assert (=> b!1023548 m!1201293))

(assert (=> b!1023545 m!1201287))

(assert (=> b!1023545 m!1201287))

(declare-fun m!1201295 () Bool)

(assert (=> b!1023545 m!1201295))

(assert (=> b!1023545 m!1201291))

(assert (=> b!1023545 m!1201295))

(assert (=> b!1023545 m!1201291))

(declare-fun m!1201297 () Bool)

(assert (=> b!1023545 m!1201297))

(assert (=> b!1023544 m!1201291))

(assert (=> b!1023544 m!1201291))

(assert (=> b!1023544 m!1201293))

(assert (=> b!1023140 d!294758))

(assert (=> b!1023140 d!294664))

(declare-fun b!1023552 () Bool)

(declare-fun res!459982 () Bool)

(declare-fun e!653376 () Bool)

(assert (=> b!1023552 (=> res!459982 e!653376)))

(declare-fun e!653373 () Bool)

(assert (=> b!1023552 (= res!459982 e!653373)))

(declare-fun res!459980 () Bool)

(assert (=> b!1023552 (=> (not res!459980) (not e!653373))))

(declare-fun lt!354805 () Bool)

(assert (=> b!1023552 (= res!459980 lt!354805)))

(declare-fun b!1023553 () Bool)

(declare-fun e!653371 () Bool)

(assert (=> b!1023553 (= e!653376 e!653371)))

(declare-fun res!459983 () Bool)

(assert (=> b!1023553 (=> (not res!459983) (not e!653371))))

(assert (=> b!1023553 (= res!459983 (not lt!354805))))

(declare-fun b!1023554 () Bool)

(declare-fun e!653375 () Bool)

(assert (=> b!1023554 (= e!653375 (not (= (head!1886 (tail!1447 s!10566)) (c!169488 (derivativeStep!731 lt!354712 (head!1886 s!10566))))))))

(declare-fun b!1023555 () Bool)

(assert (=> b!1023555 (= e!653373 (= (head!1886 (tail!1447 s!10566)) (c!169488 (derivativeStep!731 lt!354712 (head!1886 s!10566)))))))

(declare-fun b!1023556 () Bool)

(declare-fun res!459984 () Bool)

(assert (=> b!1023556 (=> (not res!459984) (not e!653373))))

(declare-fun call!70201 () Bool)

(assert (=> b!1023556 (= res!459984 (not call!70201))))

(declare-fun b!1023557 () Bool)

(declare-fun e!653374 () Bool)

(declare-fun e!653370 () Bool)

(assert (=> b!1023557 (= e!653374 e!653370)))

(declare-fun c!169688 () Bool)

(assert (=> b!1023557 (= c!169688 ((_ is EmptyLang!2829) (derivativeStep!731 lt!354712 (head!1886 s!10566))))))

(declare-fun b!1023558 () Bool)

(declare-fun res!459981 () Bool)

(assert (=> b!1023558 (=> res!459981 e!653375)))

(assert (=> b!1023558 (= res!459981 (not (isEmpty!6406 (tail!1447 (tail!1447 s!10566)))))))

(declare-fun b!1023559 () Bool)

(declare-fun e!653372 () Bool)

(assert (=> b!1023559 (= e!653372 (matchR!1365 (derivativeStep!731 (derivativeStep!731 lt!354712 (head!1886 s!10566)) (head!1886 (tail!1447 s!10566))) (tail!1447 (tail!1447 s!10566))))))

(declare-fun b!1023560 () Bool)

(assert (=> b!1023560 (= e!653372 (nullable!930 (derivativeStep!731 lt!354712 (head!1886 s!10566))))))

(declare-fun b!1023562 () Bool)

(declare-fun res!459977 () Bool)

(assert (=> b!1023562 (=> (not res!459977) (not e!653373))))

(assert (=> b!1023562 (= res!459977 (isEmpty!6406 (tail!1447 (tail!1447 s!10566))))))

(declare-fun b!1023563 () Bool)

(assert (=> b!1023563 (= e!653371 e!653375)))

(declare-fun res!459978 () Bool)

(assert (=> b!1023563 (=> res!459978 e!653375)))

(assert (=> b!1023563 (= res!459978 call!70201)))

(declare-fun b!1023564 () Bool)

(assert (=> b!1023564 (= e!653370 (not lt!354805))))

(declare-fun b!1023565 () Bool)

(declare-fun res!459979 () Bool)

(assert (=> b!1023565 (=> res!459979 e!653376)))

(assert (=> b!1023565 (= res!459979 (not ((_ is ElementMatch!2829) (derivativeStep!731 lt!354712 (head!1886 s!10566)))))))

(assert (=> b!1023565 (= e!653370 e!653376)))

(declare-fun bm!70196 () Bool)

(assert (=> bm!70196 (= call!70201 (isEmpty!6406 (tail!1447 s!10566)))))

(declare-fun d!294760 () Bool)

(assert (=> d!294760 e!653374))

(declare-fun c!169689 () Bool)

(assert (=> d!294760 (= c!169689 ((_ is EmptyExpr!2829) (derivativeStep!731 lt!354712 (head!1886 s!10566))))))

(assert (=> d!294760 (= lt!354805 e!653372)))

(declare-fun c!169690 () Bool)

(assert (=> d!294760 (= c!169690 (isEmpty!6406 (tail!1447 s!10566)))))

(assert (=> d!294760 (validRegex!1298 (derivativeStep!731 lt!354712 (head!1886 s!10566)))))

(assert (=> d!294760 (= (matchR!1365 (derivativeStep!731 lt!354712 (head!1886 s!10566)) (tail!1447 s!10566)) lt!354805)))

(declare-fun b!1023561 () Bool)

(assert (=> b!1023561 (= e!653374 (= lt!354805 call!70201))))

(assert (= (and d!294760 c!169690) b!1023560))

(assert (= (and d!294760 (not c!169690)) b!1023559))

(assert (= (and d!294760 c!169689) b!1023561))

(assert (= (and d!294760 (not c!169689)) b!1023557))

(assert (= (and b!1023557 c!169688) b!1023564))

(assert (= (and b!1023557 (not c!169688)) b!1023565))

(assert (= (and b!1023565 (not res!459979)) b!1023552))

(assert (= (and b!1023552 res!459980) b!1023556))

(assert (= (and b!1023556 res!459984) b!1023562))

(assert (= (and b!1023562 res!459977) b!1023555))

(assert (= (and b!1023552 (not res!459982)) b!1023553))

(assert (= (and b!1023553 res!459983) b!1023563))

(assert (= (and b!1023563 (not res!459978)) b!1023558))

(assert (= (and b!1023558 (not res!459981)) b!1023554))

(assert (= (or b!1023561 b!1023556 b!1023563) bm!70196))

(assert (=> b!1023555 m!1200955))

(assert (=> b!1023555 m!1201161))

(assert (=> d!294760 m!1200955))

(assert (=> d!294760 m!1200957))

(assert (=> d!294760 m!1200973))

(declare-fun m!1201299 () Bool)

(assert (=> d!294760 m!1201299))

(assert (=> b!1023554 m!1200955))

(assert (=> b!1023554 m!1201161))

(assert (=> b!1023560 m!1200973))

(declare-fun m!1201301 () Bool)

(assert (=> b!1023560 m!1201301))

(assert (=> bm!70196 m!1200955))

(assert (=> bm!70196 m!1200957))

(assert (=> b!1023562 m!1200955))

(assert (=> b!1023562 m!1201167))

(assert (=> b!1023562 m!1201167))

(assert (=> b!1023562 m!1201169))

(assert (=> b!1023559 m!1200955))

(assert (=> b!1023559 m!1201161))

(assert (=> b!1023559 m!1200973))

(assert (=> b!1023559 m!1201161))

(declare-fun m!1201303 () Bool)

(assert (=> b!1023559 m!1201303))

(assert (=> b!1023559 m!1200955))

(assert (=> b!1023559 m!1201167))

(assert (=> b!1023559 m!1201303))

(assert (=> b!1023559 m!1201167))

(declare-fun m!1201305 () Bool)

(assert (=> b!1023559 m!1201305))

(assert (=> b!1023558 m!1200955))

(assert (=> b!1023558 m!1201167))

(assert (=> b!1023558 m!1201167))

(assert (=> b!1023558 m!1201169))

(assert (=> b!1023006 d!294760))

(declare-fun call!70203 () Regex!2829)

(declare-fun c!169693 () Bool)

(declare-fun bm!70197 () Bool)

(assert (=> bm!70197 (= call!70203 (derivativeStep!731 (ite c!169693 (regOne!6171 lt!354712) (regOne!6170 lt!354712)) (head!1886 s!10566)))))

(declare-fun d!294762 () Bool)

(declare-fun lt!354806 () Regex!2829)

(assert (=> d!294762 (validRegex!1298 lt!354806)))

(declare-fun e!653380 () Regex!2829)

(assert (=> d!294762 (= lt!354806 e!653380)))

(declare-fun c!169691 () Bool)

(assert (=> d!294762 (= c!169691 (or ((_ is EmptyExpr!2829) lt!354712) ((_ is EmptyLang!2829) lt!354712)))))

(assert (=> d!294762 (validRegex!1298 lt!354712)))

(assert (=> d!294762 (= (derivativeStep!731 lt!354712 (head!1886 s!10566)) lt!354806)))

(declare-fun c!169692 () Bool)

(declare-fun c!169694 () Bool)

(declare-fun call!70205 () Regex!2829)

(declare-fun bm!70198 () Bool)

(assert (=> bm!70198 (= call!70205 (derivativeStep!731 (ite c!169693 (regTwo!6171 lt!354712) (ite c!169692 (reg!3158 lt!354712) (ite c!169694 (regTwo!6170 lt!354712) (regOne!6170 lt!354712)))) (head!1886 s!10566)))))

(declare-fun b!1023566 () Bool)

(declare-fun e!653377 () Regex!2829)

(assert (=> b!1023566 (= e!653377 (ite (= (head!1886 s!10566) (c!169488 lt!354712)) EmptyExpr!2829 EmptyLang!2829))))

(declare-fun b!1023567 () Bool)

(assert (=> b!1023567 (= e!653380 e!653377)))

(declare-fun c!169695 () Bool)

(assert (=> b!1023567 (= c!169695 ((_ is ElementMatch!2829) lt!354712))))

(declare-fun b!1023568 () Bool)

(declare-fun e!653378 () Regex!2829)

(assert (=> b!1023568 (= e!653378 (Union!2829 call!70203 call!70205))))

(declare-fun b!1023569 () Bool)

(declare-fun e!653379 () Regex!2829)

(assert (=> b!1023569 (= e!653378 e!653379)))

(assert (=> b!1023569 (= c!169692 ((_ is Star!2829) lt!354712))))

(declare-fun b!1023570 () Bool)

(declare-fun e!653381 () Regex!2829)

(declare-fun call!70204 () Regex!2829)

(assert (=> b!1023570 (= e!653381 (Union!2829 (Concat!4662 call!70204 (regTwo!6170 lt!354712)) EmptyLang!2829))))

(declare-fun b!1023571 () Bool)

(declare-fun call!70202 () Regex!2829)

(assert (=> b!1023571 (= e!653379 (Concat!4662 call!70202 lt!354712))))

(declare-fun b!1023572 () Bool)

(assert (=> b!1023572 (= c!169694 (nullable!930 (regOne!6170 lt!354712)))))

(assert (=> b!1023572 (= e!653379 e!653381)))

(declare-fun bm!70199 () Bool)

(assert (=> bm!70199 (= call!70204 call!70202)))

(declare-fun b!1023573 () Bool)

(assert (=> b!1023573 (= c!169693 ((_ is Union!2829) lt!354712))))

(assert (=> b!1023573 (= e!653377 e!653378)))

(declare-fun bm!70200 () Bool)

(assert (=> bm!70200 (= call!70202 call!70205)))

(declare-fun b!1023574 () Bool)

(assert (=> b!1023574 (= e!653380 EmptyLang!2829)))

(declare-fun b!1023575 () Bool)

(assert (=> b!1023575 (= e!653381 (Union!2829 (Concat!4662 call!70203 (regTwo!6170 lt!354712)) call!70204))))

(assert (= (and d!294762 c!169691) b!1023574))

(assert (= (and d!294762 (not c!169691)) b!1023567))

(assert (= (and b!1023567 c!169695) b!1023566))

(assert (= (and b!1023567 (not c!169695)) b!1023573))

(assert (= (and b!1023573 c!169693) b!1023568))

(assert (= (and b!1023573 (not c!169693)) b!1023569))

(assert (= (and b!1023569 c!169692) b!1023571))

(assert (= (and b!1023569 (not c!169692)) b!1023572))

(assert (= (and b!1023572 c!169694) b!1023575))

(assert (= (and b!1023572 (not c!169694)) b!1023570))

(assert (= (or b!1023575 b!1023570) bm!70199))

(assert (= (or b!1023571 bm!70199) bm!70200))

(assert (= (or b!1023568 b!1023575) bm!70197))

(assert (= (or b!1023568 bm!70200) bm!70198))

(assert (=> bm!70197 m!1200951))

(declare-fun m!1201307 () Bool)

(assert (=> bm!70197 m!1201307))

(declare-fun m!1201309 () Bool)

(assert (=> d!294762 m!1201309))

(assert (=> d!294762 m!1200969))

(assert (=> bm!70198 m!1200951))

(declare-fun m!1201311 () Bool)

(assert (=> bm!70198 m!1201311))

(declare-fun m!1201313 () Bool)

(assert (=> b!1023572 m!1201313))

(assert (=> b!1023006 d!294762))

(assert (=> b!1023006 d!294656))

(assert (=> b!1023006 d!294660))

(assert (=> d!294594 d!294618))

(assert (=> d!294594 d!294578))

(assert (=> b!1022794 d!294708))

(assert (=> b!1023021 d!294740))

(declare-fun b!1023579 () Bool)

(declare-fun e!653382 () Bool)

(declare-fun lt!354807 () List!10059)

(assert (=> b!1023579 (= e!653382 (or (not (= (t!101105 s!10566) Nil!10043)) (= lt!354807 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)))))))

(declare-fun b!1023578 () Bool)

(declare-fun res!459986 () Bool)

(assert (=> b!1023578 (=> (not res!459986) (not e!653382))))

(assert (=> b!1023578 (= res!459986 (= (size!7985 lt!354807) (+ (size!7985 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043))) (size!7985 (t!101105 s!10566)))))))

(declare-fun b!1023576 () Bool)

(declare-fun e!653383 () List!10059)

(assert (=> b!1023576 (= e!653383 (t!101105 s!10566))))

(declare-fun b!1023577 () Bool)

(assert (=> b!1023577 (= e!653383 (Cons!10043 (h!15444 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043))) (++!2747 (t!101105 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043))) (t!101105 s!10566))))))

(declare-fun d!294764 () Bool)

(assert (=> d!294764 e!653382))

(declare-fun res!459985 () Bool)

(assert (=> d!294764 (=> (not res!459985) (not e!653382))))

(assert (=> d!294764 (= res!459985 (= (content!1442 lt!354807) ((_ map or) (content!1442 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043))) (content!1442 (t!101105 s!10566)))))))

(assert (=> d!294764 (= lt!354807 e!653383)))

(declare-fun c!169696 () Bool)

(assert (=> d!294764 (= c!169696 ((_ is Nil!10043) (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043))))))

(assert (=> d!294764 (= (++!2747 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (t!101105 s!10566)) lt!354807)))

(assert (= (and d!294764 c!169696) b!1023576))

(assert (= (and d!294764 (not c!169696)) b!1023577))

(assert (= (and d!294764 res!459985) b!1023578))

(assert (= (and b!1023578 res!459986) b!1023579))

(declare-fun m!1201315 () Bool)

(assert (=> b!1023578 m!1201315))

(assert (=> b!1023578 m!1201025))

(declare-fun m!1201317 () Bool)

(assert (=> b!1023578 m!1201317))

(assert (=> b!1023578 m!1201105))

(declare-fun m!1201319 () Bool)

(assert (=> b!1023577 m!1201319))

(declare-fun m!1201321 () Bool)

(assert (=> d!294764 m!1201321))

(assert (=> d!294764 m!1201025))

(declare-fun m!1201323 () Bool)

(assert (=> d!294764 m!1201323))

(assert (=> d!294764 m!1201247))

(assert (=> b!1023144 d!294764))

(declare-fun b!1023583 () Bool)

(declare-fun e!653384 () Bool)

(declare-fun lt!354808 () List!10059)

(assert (=> b!1023583 (= e!653384 (or (not (= (Cons!10043 (h!15444 s!10566) Nil!10043) Nil!10043)) (= lt!354808 Nil!10043)))))

(declare-fun b!1023582 () Bool)

(declare-fun res!459988 () Bool)

(assert (=> b!1023582 (=> (not res!459988) (not e!653384))))

(assert (=> b!1023582 (= res!459988 (= (size!7985 lt!354808) (+ (size!7985 Nil!10043) (size!7985 (Cons!10043 (h!15444 s!10566) Nil!10043)))))))

(declare-fun b!1023580 () Bool)

(declare-fun e!653385 () List!10059)

(assert (=> b!1023580 (= e!653385 (Cons!10043 (h!15444 s!10566) Nil!10043))))

(declare-fun b!1023581 () Bool)

(assert (=> b!1023581 (= e!653385 (Cons!10043 (h!15444 Nil!10043) (++!2747 (t!101105 Nil!10043) (Cons!10043 (h!15444 s!10566) Nil!10043))))))

(declare-fun d!294766 () Bool)

(assert (=> d!294766 e!653384))

(declare-fun res!459987 () Bool)

(assert (=> d!294766 (=> (not res!459987) (not e!653384))))

(assert (=> d!294766 (= res!459987 (= (content!1442 lt!354808) ((_ map or) (content!1442 Nil!10043) (content!1442 (Cons!10043 (h!15444 s!10566) Nil!10043)))))))

(assert (=> d!294766 (= lt!354808 e!653385)))

(declare-fun c!169697 () Bool)

(assert (=> d!294766 (= c!169697 ((_ is Nil!10043) Nil!10043))))

(assert (=> d!294766 (= (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) lt!354808)))

(assert (= (and d!294766 c!169697) b!1023580))

(assert (= (and d!294766 (not c!169697)) b!1023581))

(assert (= (and d!294766 res!459987) b!1023582))

(assert (= (and b!1023582 res!459988) b!1023583))

(declare-fun m!1201325 () Bool)

(assert (=> b!1023582 m!1201325))

(assert (=> b!1023582 m!1201079))

(declare-fun m!1201327 () Bool)

(assert (=> b!1023582 m!1201327))

(declare-fun m!1201329 () Bool)

(assert (=> b!1023581 m!1201329))

(declare-fun m!1201331 () Bool)

(assert (=> d!294766 m!1201331))

(assert (=> d!294766 m!1201087))

(declare-fun m!1201333 () Bool)

(assert (=> d!294766 m!1201333))

(assert (=> b!1023144 d!294766))

(declare-fun d!294768 () Bool)

(assert (=> d!294768 (= (++!2747 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (t!101105 s!10566)) s!10566)))

(declare-fun lt!354811 () Unit!15333)

(declare-fun choose!6487 (List!10059 C!6228 List!10059 List!10059) Unit!15333)

(assert (=> d!294768 (= lt!354811 (choose!6487 Nil!10043 (h!15444 s!10566) (t!101105 s!10566) s!10566))))

(assert (=> d!294768 (= (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) (t!101105 s!10566))) s!10566)))

(assert (=> d!294768 (= (lemmaMoveElementToOtherListKeepsConcatEq!343 Nil!10043 (h!15444 s!10566) (t!101105 s!10566) s!10566) lt!354811)))

(declare-fun bs!246860 () Bool)

(assert (= bs!246860 d!294768))

(assert (=> bs!246860 m!1201025))

(assert (=> bs!246860 m!1201025))

(assert (=> bs!246860 m!1201027))

(declare-fun m!1201335 () Bool)

(assert (=> bs!246860 m!1201335))

(declare-fun m!1201337 () Bool)

(assert (=> bs!246860 m!1201337))

(assert (=> b!1023144 d!294768))

(declare-fun b!1023584 () Bool)

(declare-fun e!653389 () Option!2362)

(declare-fun e!653386 () Option!2362)

(assert (=> b!1023584 (= e!653389 e!653386)))

(declare-fun c!169699 () Bool)

(assert (=> b!1023584 (= c!169699 ((_ is Nil!10043) (t!101105 s!10566)))))

(declare-fun b!1023585 () Bool)

(declare-fun res!459989 () Bool)

(declare-fun e!653390 () Bool)

(assert (=> b!1023585 (=> (not res!459989) (not e!653390))))

(declare-fun lt!354813 () Option!2362)

(assert (=> b!1023585 (= res!459989 (matchR!1365 EmptyExpr!2829 (_1!6546 (get!3542 lt!354813))))))

(declare-fun b!1023586 () Bool)

(assert (=> b!1023586 (= e!653386 None!2361)))

(declare-fun b!1023587 () Bool)

(assert (=> b!1023587 (= e!653390 (= (++!2747 (_1!6546 (get!3542 lt!354813)) (_2!6546 (get!3542 lt!354813))) s!10566))))

(declare-fun b!1023588 () Bool)

(assert (=> b!1023588 (= e!653389 (Some!2361 (tuple2!11441 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (t!101105 s!10566))))))

(declare-fun d!294770 () Bool)

(declare-fun e!653387 () Bool)

(assert (=> d!294770 e!653387))

(declare-fun res!459991 () Bool)

(assert (=> d!294770 (=> res!459991 e!653387)))

(assert (=> d!294770 (= res!459991 e!653390)))

(declare-fun res!459990 () Bool)

(assert (=> d!294770 (=> (not res!459990) (not e!653390))))

(assert (=> d!294770 (= res!459990 (isDefined!2004 lt!354813))))

(assert (=> d!294770 (= lt!354813 e!653389)))

(declare-fun c!169698 () Bool)

(declare-fun e!653388 () Bool)

(assert (=> d!294770 (= c!169698 e!653388)))

(declare-fun res!459993 () Bool)

(assert (=> d!294770 (=> (not res!459993) (not e!653388))))

(assert (=> d!294770 (= res!459993 (matchR!1365 EmptyExpr!2829 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043))))))

(assert (=> d!294770 (validRegex!1298 EmptyExpr!2829)))

(assert (=> d!294770 (= (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (t!101105 s!10566) s!10566) lt!354813)))

(declare-fun b!1023589 () Bool)

(declare-fun lt!354814 () Unit!15333)

(declare-fun lt!354812 () Unit!15333)

(assert (=> b!1023589 (= lt!354814 lt!354812)))

(assert (=> b!1023589 (= (++!2747 (++!2747 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (Cons!10043 (h!15444 (t!101105 s!10566)) Nil!10043)) (t!101105 (t!101105 s!10566))) s!10566)))

(assert (=> b!1023589 (= lt!354812 (lemmaMoveElementToOtherListKeepsConcatEq!343 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (h!15444 (t!101105 s!10566)) (t!101105 (t!101105 s!10566)) s!10566))))

(assert (=> b!1023589 (= e!653386 (findConcatSeparation!468 EmptyExpr!2829 (regTwo!6170 r!15766) (++!2747 (++!2747 Nil!10043 (Cons!10043 (h!15444 s!10566) Nil!10043)) (Cons!10043 (h!15444 (t!101105 s!10566)) Nil!10043)) (t!101105 (t!101105 s!10566)) s!10566))))

(declare-fun b!1023590 () Bool)

(assert (=> b!1023590 (= e!653387 (not (isDefined!2004 lt!354813)))))

(declare-fun b!1023591 () Bool)

(declare-fun res!459992 () Bool)

(assert (=> b!1023591 (=> (not res!459992) (not e!653390))))

(assert (=> b!1023591 (= res!459992 (matchR!1365 (regTwo!6170 r!15766) (_2!6546 (get!3542 lt!354813))))))

(declare-fun b!1023592 () Bool)

(assert (=> b!1023592 (= e!653388 (matchR!1365 (regTwo!6170 r!15766) (t!101105 s!10566)))))

(assert (= (and d!294770 res!459993) b!1023592))

(assert (= (and d!294770 c!169698) b!1023588))

(assert (= (and d!294770 (not c!169698)) b!1023584))

(assert (= (and b!1023584 c!169699) b!1023586))

(assert (= (and b!1023584 (not c!169699)) b!1023589))

(assert (= (and d!294770 res!459990) b!1023585))

(assert (= (and b!1023585 res!459989) b!1023591))

(assert (= (and b!1023591 res!459992) b!1023587))

(assert (= (and d!294770 (not res!459991)) b!1023590))

(declare-fun m!1201339 () Bool)

(assert (=> d!294770 m!1201339))

(assert (=> d!294770 m!1201025))

(declare-fun m!1201341 () Bool)

(assert (=> d!294770 m!1201341))

(assert (=> d!294770 m!1200873))

(declare-fun m!1201343 () Bool)

(assert (=> b!1023591 m!1201343))

(declare-fun m!1201345 () Bool)

(assert (=> b!1023591 m!1201345))

(assert (=> b!1023590 m!1201339))

(declare-fun m!1201347 () Bool)

(assert (=> b!1023592 m!1201347))

(assert (=> b!1023589 m!1201025))

(declare-fun m!1201349 () Bool)

(assert (=> b!1023589 m!1201349))

(assert (=> b!1023589 m!1201349))

(declare-fun m!1201351 () Bool)

(assert (=> b!1023589 m!1201351))

(assert (=> b!1023589 m!1201025))

(declare-fun m!1201353 () Bool)

(assert (=> b!1023589 m!1201353))

(assert (=> b!1023589 m!1201349))

(declare-fun m!1201355 () Bool)

(assert (=> b!1023589 m!1201355))

(assert (=> b!1023587 m!1201343))

(declare-fun m!1201357 () Bool)

(assert (=> b!1023587 m!1201357))

(assert (=> b!1023585 m!1201343))

(declare-fun m!1201359 () Bool)

(assert (=> b!1023585 m!1201359))

(assert (=> b!1023144 d!294770))

(declare-fun d!294772 () Bool)

(assert (=> d!294772 (= (Exists!558 (ite c!169549 lambda!36431 lambda!36432)) (choose!6479 (ite c!169549 lambda!36431 lambda!36432)))))

(declare-fun bs!246861 () Bool)

(assert (= bs!246861 d!294772))

(declare-fun m!1201361 () Bool)

(assert (=> bs!246861 m!1201361))

(assert (=> bm!70108 d!294772))

(declare-fun e!653391 () Bool)

(assert (=> b!1023304 (= tp!310609 e!653391)))

(declare-fun b!1023596 () Bool)

(declare-fun tp!310621 () Bool)

(declare-fun tp!310618 () Bool)

(assert (=> b!1023596 (= e!653391 (and tp!310621 tp!310618))))

(declare-fun b!1023593 () Bool)

(assert (=> b!1023593 (= e!653391 tp_is_empty!5301)))

(declare-fun b!1023594 () Bool)

(declare-fun tp!310620 () Bool)

(declare-fun tp!310617 () Bool)

(assert (=> b!1023594 (= e!653391 (and tp!310620 tp!310617))))

(declare-fun b!1023595 () Bool)

(declare-fun tp!310619 () Bool)

(assert (=> b!1023595 (= e!653391 tp!310619)))

(assert (= (and b!1023304 ((_ is ElementMatch!2829) (reg!3158 (regOne!6171 r!15766)))) b!1023593))

(assert (= (and b!1023304 ((_ is Concat!4662) (reg!3158 (regOne!6171 r!15766)))) b!1023594))

(assert (= (and b!1023304 ((_ is Star!2829) (reg!3158 (regOne!6171 r!15766)))) b!1023595))

(assert (= (and b!1023304 ((_ is Union!2829) (reg!3158 (regOne!6171 r!15766)))) b!1023596))

(declare-fun e!653392 () Bool)

(assert (=> b!1023309 (= tp!310616 e!653392)))

(declare-fun b!1023600 () Bool)

(declare-fun tp!310626 () Bool)

(declare-fun tp!310623 () Bool)

(assert (=> b!1023600 (= e!653392 (and tp!310626 tp!310623))))

(declare-fun b!1023597 () Bool)

(assert (=> b!1023597 (= e!653392 tp_is_empty!5301)))

(declare-fun b!1023598 () Bool)

(declare-fun tp!310625 () Bool)

(declare-fun tp!310622 () Bool)

(assert (=> b!1023598 (= e!653392 (and tp!310625 tp!310622))))

(declare-fun b!1023599 () Bool)

(declare-fun tp!310624 () Bool)

(assert (=> b!1023599 (= e!653392 tp!310624)))

(assert (= (and b!1023309 ((_ is ElementMatch!2829) (regOne!6171 (regTwo!6171 r!15766)))) b!1023597))

(assert (= (and b!1023309 ((_ is Concat!4662) (regOne!6171 (regTwo!6171 r!15766)))) b!1023598))

(assert (= (and b!1023309 ((_ is Star!2829) (regOne!6171 (regTwo!6171 r!15766)))) b!1023599))

(assert (= (and b!1023309 ((_ is Union!2829) (regOne!6171 (regTwo!6171 r!15766)))) b!1023600))

(declare-fun e!653393 () Bool)

(assert (=> b!1023309 (= tp!310613 e!653393)))

(declare-fun b!1023604 () Bool)

(declare-fun tp!310631 () Bool)

(declare-fun tp!310628 () Bool)

(assert (=> b!1023604 (= e!653393 (and tp!310631 tp!310628))))

(declare-fun b!1023601 () Bool)

(assert (=> b!1023601 (= e!653393 tp_is_empty!5301)))

(declare-fun b!1023602 () Bool)

(declare-fun tp!310630 () Bool)

(declare-fun tp!310627 () Bool)

(assert (=> b!1023602 (= e!653393 (and tp!310630 tp!310627))))

(declare-fun b!1023603 () Bool)

(declare-fun tp!310629 () Bool)

(assert (=> b!1023603 (= e!653393 tp!310629)))

(assert (= (and b!1023309 ((_ is ElementMatch!2829) (regTwo!6171 (regTwo!6171 r!15766)))) b!1023601))

(assert (= (and b!1023309 ((_ is Concat!4662) (regTwo!6171 (regTwo!6171 r!15766)))) b!1023602))

(assert (= (and b!1023309 ((_ is Star!2829) (regTwo!6171 (regTwo!6171 r!15766)))) b!1023603))

(assert (= (and b!1023309 ((_ is Union!2829) (regTwo!6171 (regTwo!6171 r!15766)))) b!1023604))

(declare-fun e!653394 () Bool)

(assert (=> b!1023307 (= tp!310615 e!653394)))

(declare-fun b!1023608 () Bool)

(declare-fun tp!310636 () Bool)

(declare-fun tp!310633 () Bool)

(assert (=> b!1023608 (= e!653394 (and tp!310636 tp!310633))))

(declare-fun b!1023605 () Bool)

(assert (=> b!1023605 (= e!653394 tp_is_empty!5301)))

(declare-fun b!1023606 () Bool)

(declare-fun tp!310635 () Bool)

(declare-fun tp!310632 () Bool)

(assert (=> b!1023606 (= e!653394 (and tp!310635 tp!310632))))

(declare-fun b!1023607 () Bool)

(declare-fun tp!310634 () Bool)

(assert (=> b!1023607 (= e!653394 tp!310634)))

(assert (= (and b!1023307 ((_ is ElementMatch!2829) (regOne!6170 (regTwo!6171 r!15766)))) b!1023605))

(assert (= (and b!1023307 ((_ is Concat!4662) (regOne!6170 (regTwo!6171 r!15766)))) b!1023606))

(assert (= (and b!1023307 ((_ is Star!2829) (regOne!6170 (regTwo!6171 r!15766)))) b!1023607))

(assert (= (and b!1023307 ((_ is Union!2829) (regOne!6170 (regTwo!6171 r!15766)))) b!1023608))

(declare-fun e!653395 () Bool)

(assert (=> b!1023307 (= tp!310612 e!653395)))

(declare-fun b!1023612 () Bool)

(declare-fun tp!310641 () Bool)

(declare-fun tp!310638 () Bool)

(assert (=> b!1023612 (= e!653395 (and tp!310641 tp!310638))))

(declare-fun b!1023609 () Bool)

(assert (=> b!1023609 (= e!653395 tp_is_empty!5301)))

(declare-fun b!1023610 () Bool)

(declare-fun tp!310640 () Bool)

(declare-fun tp!310637 () Bool)

(assert (=> b!1023610 (= e!653395 (and tp!310640 tp!310637))))

(declare-fun b!1023611 () Bool)

(declare-fun tp!310639 () Bool)

(assert (=> b!1023611 (= e!653395 tp!310639)))

(assert (= (and b!1023307 ((_ is ElementMatch!2829) (regTwo!6170 (regTwo!6171 r!15766)))) b!1023609))

(assert (= (and b!1023307 ((_ is Concat!4662) (regTwo!6170 (regTwo!6171 r!15766)))) b!1023610))

(assert (= (and b!1023307 ((_ is Star!2829) (regTwo!6170 (regTwo!6171 r!15766)))) b!1023611))

(assert (= (and b!1023307 ((_ is Union!2829) (regTwo!6170 (regTwo!6171 r!15766)))) b!1023612))

(declare-fun e!653396 () Bool)

(assert (=> b!1023288 (= tp!310593 e!653396)))

(declare-fun b!1023616 () Bool)

(declare-fun tp!310646 () Bool)

(declare-fun tp!310643 () Bool)

(assert (=> b!1023616 (= e!653396 (and tp!310646 tp!310643))))

(declare-fun b!1023613 () Bool)

(assert (=> b!1023613 (= e!653396 tp_is_empty!5301)))

(declare-fun b!1023614 () Bool)

(declare-fun tp!310645 () Bool)

(declare-fun tp!310642 () Bool)

(assert (=> b!1023614 (= e!653396 (and tp!310645 tp!310642))))

(declare-fun b!1023615 () Bool)

(declare-fun tp!310644 () Bool)

(assert (=> b!1023615 (= e!653396 tp!310644)))

(assert (= (and b!1023288 ((_ is ElementMatch!2829) (regOne!6171 (reg!3158 r!15766)))) b!1023613))

(assert (= (and b!1023288 ((_ is Concat!4662) (regOne!6171 (reg!3158 r!15766)))) b!1023614))

(assert (= (and b!1023288 ((_ is Star!2829) (regOne!6171 (reg!3158 r!15766)))) b!1023615))

(assert (= (and b!1023288 ((_ is Union!2829) (regOne!6171 (reg!3158 r!15766)))) b!1023616))

(declare-fun e!653397 () Bool)

(assert (=> b!1023288 (= tp!310590 e!653397)))

(declare-fun b!1023620 () Bool)

(declare-fun tp!310651 () Bool)

(declare-fun tp!310648 () Bool)

(assert (=> b!1023620 (= e!653397 (and tp!310651 tp!310648))))

(declare-fun b!1023617 () Bool)

(assert (=> b!1023617 (= e!653397 tp_is_empty!5301)))

(declare-fun b!1023618 () Bool)

(declare-fun tp!310650 () Bool)

(declare-fun tp!310647 () Bool)

(assert (=> b!1023618 (= e!653397 (and tp!310650 tp!310647))))

(declare-fun b!1023619 () Bool)

(declare-fun tp!310649 () Bool)

(assert (=> b!1023619 (= e!653397 tp!310649)))

(assert (= (and b!1023288 ((_ is ElementMatch!2829) (regTwo!6171 (reg!3158 r!15766)))) b!1023617))

(assert (= (and b!1023288 ((_ is Concat!4662) (regTwo!6171 (reg!3158 r!15766)))) b!1023618))

(assert (= (and b!1023288 ((_ is Star!2829) (regTwo!6171 (reg!3158 r!15766)))) b!1023619))

(assert (= (and b!1023288 ((_ is Union!2829) (regTwo!6171 (reg!3158 r!15766)))) b!1023620))

(declare-fun e!653398 () Bool)

(assert (=> b!1023303 (= tp!310610 e!653398)))

(declare-fun b!1023624 () Bool)

(declare-fun tp!310656 () Bool)

(declare-fun tp!310653 () Bool)

(assert (=> b!1023624 (= e!653398 (and tp!310656 tp!310653))))

(declare-fun b!1023621 () Bool)

(assert (=> b!1023621 (= e!653398 tp_is_empty!5301)))

(declare-fun b!1023622 () Bool)

(declare-fun tp!310655 () Bool)

(declare-fun tp!310652 () Bool)

(assert (=> b!1023622 (= e!653398 (and tp!310655 tp!310652))))

(declare-fun b!1023623 () Bool)

(declare-fun tp!310654 () Bool)

(assert (=> b!1023623 (= e!653398 tp!310654)))

(assert (= (and b!1023303 ((_ is ElementMatch!2829) (regOne!6170 (regOne!6171 r!15766)))) b!1023621))

(assert (= (and b!1023303 ((_ is Concat!4662) (regOne!6170 (regOne!6171 r!15766)))) b!1023622))

(assert (= (and b!1023303 ((_ is Star!2829) (regOne!6170 (regOne!6171 r!15766)))) b!1023623))

(assert (= (and b!1023303 ((_ is Union!2829) (regOne!6170 (regOne!6171 r!15766)))) b!1023624))

(declare-fun e!653399 () Bool)

(assert (=> b!1023303 (= tp!310607 e!653399)))

(declare-fun b!1023628 () Bool)

(declare-fun tp!310661 () Bool)

(declare-fun tp!310658 () Bool)

(assert (=> b!1023628 (= e!653399 (and tp!310661 tp!310658))))

(declare-fun b!1023625 () Bool)

(assert (=> b!1023625 (= e!653399 tp_is_empty!5301)))

(declare-fun b!1023626 () Bool)

(declare-fun tp!310660 () Bool)

(declare-fun tp!310657 () Bool)

(assert (=> b!1023626 (= e!653399 (and tp!310660 tp!310657))))

(declare-fun b!1023627 () Bool)

(declare-fun tp!310659 () Bool)

(assert (=> b!1023627 (= e!653399 tp!310659)))

(assert (= (and b!1023303 ((_ is ElementMatch!2829) (regTwo!6170 (regOne!6171 r!15766)))) b!1023625))

(assert (= (and b!1023303 ((_ is Concat!4662) (regTwo!6170 (regOne!6171 r!15766)))) b!1023626))

(assert (= (and b!1023303 ((_ is Star!2829) (regTwo!6170 (regOne!6171 r!15766)))) b!1023627))

(assert (= (and b!1023303 ((_ is Union!2829) (regTwo!6170 (regOne!6171 r!15766)))) b!1023628))

(declare-fun e!653400 () Bool)

(assert (=> b!1023308 (= tp!310614 e!653400)))

(declare-fun b!1023632 () Bool)

(declare-fun tp!310666 () Bool)

(declare-fun tp!310663 () Bool)

(assert (=> b!1023632 (= e!653400 (and tp!310666 tp!310663))))

(declare-fun b!1023629 () Bool)

(assert (=> b!1023629 (= e!653400 tp_is_empty!5301)))

(declare-fun b!1023630 () Bool)

(declare-fun tp!310665 () Bool)

(declare-fun tp!310662 () Bool)

(assert (=> b!1023630 (= e!653400 (and tp!310665 tp!310662))))

(declare-fun b!1023631 () Bool)

(declare-fun tp!310664 () Bool)

(assert (=> b!1023631 (= e!653400 tp!310664)))

(assert (= (and b!1023308 ((_ is ElementMatch!2829) (reg!3158 (regTwo!6171 r!15766)))) b!1023629))

(assert (= (and b!1023308 ((_ is Concat!4662) (reg!3158 (regTwo!6171 r!15766)))) b!1023630))

(assert (= (and b!1023308 ((_ is Star!2829) (reg!3158 (regTwo!6171 r!15766)))) b!1023631))

(assert (= (and b!1023308 ((_ is Union!2829) (reg!3158 (regTwo!6171 r!15766)))) b!1023632))

(declare-fun e!653401 () Bool)

(assert (=> b!1023305 (= tp!310611 e!653401)))

(declare-fun b!1023636 () Bool)

(declare-fun tp!310671 () Bool)

(declare-fun tp!310668 () Bool)

(assert (=> b!1023636 (= e!653401 (and tp!310671 tp!310668))))

(declare-fun b!1023633 () Bool)

(assert (=> b!1023633 (= e!653401 tp_is_empty!5301)))

(declare-fun b!1023634 () Bool)

(declare-fun tp!310670 () Bool)

(declare-fun tp!310667 () Bool)

(assert (=> b!1023634 (= e!653401 (and tp!310670 tp!310667))))

(declare-fun b!1023635 () Bool)

(declare-fun tp!310669 () Bool)

(assert (=> b!1023635 (= e!653401 tp!310669)))

(assert (= (and b!1023305 ((_ is ElementMatch!2829) (regOne!6171 (regOne!6171 r!15766)))) b!1023633))

(assert (= (and b!1023305 ((_ is Concat!4662) (regOne!6171 (regOne!6171 r!15766)))) b!1023634))

(assert (= (and b!1023305 ((_ is Star!2829) (regOne!6171 (regOne!6171 r!15766)))) b!1023635))

(assert (= (and b!1023305 ((_ is Union!2829) (regOne!6171 (regOne!6171 r!15766)))) b!1023636))

(declare-fun e!653402 () Bool)

(assert (=> b!1023305 (= tp!310608 e!653402)))

(declare-fun b!1023640 () Bool)

(declare-fun tp!310676 () Bool)

(declare-fun tp!310673 () Bool)

(assert (=> b!1023640 (= e!653402 (and tp!310676 tp!310673))))

(declare-fun b!1023637 () Bool)

(assert (=> b!1023637 (= e!653402 tp_is_empty!5301)))

(declare-fun b!1023638 () Bool)

(declare-fun tp!310675 () Bool)

(declare-fun tp!310672 () Bool)

(assert (=> b!1023638 (= e!653402 (and tp!310675 tp!310672))))

(declare-fun b!1023639 () Bool)

(declare-fun tp!310674 () Bool)

(assert (=> b!1023639 (= e!653402 tp!310674)))

(assert (= (and b!1023305 ((_ is ElementMatch!2829) (regTwo!6171 (regOne!6171 r!15766)))) b!1023637))

(assert (= (and b!1023305 ((_ is Concat!4662) (regTwo!6171 (regOne!6171 r!15766)))) b!1023638))

(assert (= (and b!1023305 ((_ is Star!2829) (regTwo!6171 (regOne!6171 r!15766)))) b!1023639))

(assert (= (and b!1023305 ((_ is Union!2829) (regTwo!6171 (regOne!6171 r!15766)))) b!1023640))

(declare-fun b!1023641 () Bool)

(declare-fun e!653403 () Bool)

(declare-fun tp!310677 () Bool)

(assert (=> b!1023641 (= e!653403 (and tp_is_empty!5301 tp!310677))))

(assert (=> b!1023301 (= tp!310606 e!653403)))

(assert (= (and b!1023301 ((_ is Cons!10043) (t!101105 (t!101105 s!10566)))) b!1023641))

(declare-fun e!653404 () Bool)

(assert (=> b!1023294 (= tp!310602 e!653404)))

(declare-fun b!1023645 () Bool)

(declare-fun tp!310682 () Bool)

(declare-fun tp!310679 () Bool)

(assert (=> b!1023645 (= e!653404 (and tp!310682 tp!310679))))

(declare-fun b!1023642 () Bool)

(assert (=> b!1023642 (= e!653404 tp_is_empty!5301)))

(declare-fun b!1023643 () Bool)

(declare-fun tp!310681 () Bool)

(declare-fun tp!310678 () Bool)

(assert (=> b!1023643 (= e!653404 (and tp!310681 tp!310678))))

(declare-fun b!1023644 () Bool)

(declare-fun tp!310680 () Bool)

(assert (=> b!1023644 (= e!653404 tp!310680)))

(assert (= (and b!1023294 ((_ is ElementMatch!2829) (regOne!6170 (regTwo!6170 r!15766)))) b!1023642))

(assert (= (and b!1023294 ((_ is Concat!4662) (regOne!6170 (regTwo!6170 r!15766)))) b!1023643))

(assert (= (and b!1023294 ((_ is Star!2829) (regOne!6170 (regTwo!6170 r!15766)))) b!1023644))

(assert (= (and b!1023294 ((_ is Union!2829) (regOne!6170 (regTwo!6170 r!15766)))) b!1023645))

(declare-fun e!653405 () Bool)

(assert (=> b!1023294 (= tp!310599 e!653405)))

(declare-fun b!1023649 () Bool)

(declare-fun tp!310687 () Bool)

(declare-fun tp!310684 () Bool)

(assert (=> b!1023649 (= e!653405 (and tp!310687 tp!310684))))

(declare-fun b!1023646 () Bool)

(assert (=> b!1023646 (= e!653405 tp_is_empty!5301)))

(declare-fun b!1023647 () Bool)

(declare-fun tp!310686 () Bool)

(declare-fun tp!310683 () Bool)

(assert (=> b!1023647 (= e!653405 (and tp!310686 tp!310683))))

(declare-fun b!1023648 () Bool)

(declare-fun tp!310685 () Bool)

(assert (=> b!1023648 (= e!653405 tp!310685)))

(assert (= (and b!1023294 ((_ is ElementMatch!2829) (regTwo!6170 (regTwo!6170 r!15766)))) b!1023646))

(assert (= (and b!1023294 ((_ is Concat!4662) (regTwo!6170 (regTwo!6170 r!15766)))) b!1023647))

(assert (= (and b!1023294 ((_ is Star!2829) (regTwo!6170 (regTwo!6170 r!15766)))) b!1023648))

(assert (= (and b!1023294 ((_ is Union!2829) (regTwo!6170 (regTwo!6170 r!15766)))) b!1023649))

(declare-fun e!653406 () Bool)

(assert (=> b!1023291 (= tp!310596 e!653406)))

(declare-fun b!1023653 () Bool)

(declare-fun tp!310692 () Bool)

(declare-fun tp!310689 () Bool)

(assert (=> b!1023653 (= e!653406 (and tp!310692 tp!310689))))

(declare-fun b!1023650 () Bool)

(assert (=> b!1023650 (= e!653406 tp_is_empty!5301)))

(declare-fun b!1023651 () Bool)

(declare-fun tp!310691 () Bool)

(declare-fun tp!310688 () Bool)

(assert (=> b!1023651 (= e!653406 (and tp!310691 tp!310688))))

(declare-fun b!1023652 () Bool)

(declare-fun tp!310690 () Bool)

(assert (=> b!1023652 (= e!653406 tp!310690)))

(assert (= (and b!1023291 ((_ is ElementMatch!2829) (reg!3158 (regOne!6170 r!15766)))) b!1023650))

(assert (= (and b!1023291 ((_ is Concat!4662) (reg!3158 (regOne!6170 r!15766)))) b!1023651))

(assert (= (and b!1023291 ((_ is Star!2829) (reg!3158 (regOne!6170 r!15766)))) b!1023652))

(assert (= (and b!1023291 ((_ is Union!2829) (reg!3158 (regOne!6170 r!15766)))) b!1023653))

(declare-fun e!653407 () Bool)

(assert (=> b!1023296 (= tp!310603 e!653407)))

(declare-fun b!1023657 () Bool)

(declare-fun tp!310697 () Bool)

(declare-fun tp!310694 () Bool)

(assert (=> b!1023657 (= e!653407 (and tp!310697 tp!310694))))

(declare-fun b!1023654 () Bool)

(assert (=> b!1023654 (= e!653407 tp_is_empty!5301)))

(declare-fun b!1023655 () Bool)

(declare-fun tp!310696 () Bool)

(declare-fun tp!310693 () Bool)

(assert (=> b!1023655 (= e!653407 (and tp!310696 tp!310693))))

(declare-fun b!1023656 () Bool)

(declare-fun tp!310695 () Bool)

(assert (=> b!1023656 (= e!653407 tp!310695)))

(assert (= (and b!1023296 ((_ is ElementMatch!2829) (regOne!6171 (regTwo!6170 r!15766)))) b!1023654))

(assert (= (and b!1023296 ((_ is Concat!4662) (regOne!6171 (regTwo!6170 r!15766)))) b!1023655))

(assert (= (and b!1023296 ((_ is Star!2829) (regOne!6171 (regTwo!6170 r!15766)))) b!1023656))

(assert (= (and b!1023296 ((_ is Union!2829) (regOne!6171 (regTwo!6170 r!15766)))) b!1023657))

(declare-fun e!653408 () Bool)

(assert (=> b!1023296 (= tp!310600 e!653408)))

(declare-fun b!1023661 () Bool)

(declare-fun tp!310702 () Bool)

(declare-fun tp!310699 () Bool)

(assert (=> b!1023661 (= e!653408 (and tp!310702 tp!310699))))

(declare-fun b!1023658 () Bool)

(assert (=> b!1023658 (= e!653408 tp_is_empty!5301)))

(declare-fun b!1023659 () Bool)

(declare-fun tp!310701 () Bool)

(declare-fun tp!310698 () Bool)

(assert (=> b!1023659 (= e!653408 (and tp!310701 tp!310698))))

(declare-fun b!1023660 () Bool)

(declare-fun tp!310700 () Bool)

(assert (=> b!1023660 (= e!653408 tp!310700)))

(assert (= (and b!1023296 ((_ is ElementMatch!2829) (regTwo!6171 (regTwo!6170 r!15766)))) b!1023658))

(assert (= (and b!1023296 ((_ is Concat!4662) (regTwo!6171 (regTwo!6170 r!15766)))) b!1023659))

(assert (= (and b!1023296 ((_ is Star!2829) (regTwo!6171 (regTwo!6170 r!15766)))) b!1023660))

(assert (= (and b!1023296 ((_ is Union!2829) (regTwo!6171 (regTwo!6170 r!15766)))) b!1023661))

(declare-fun e!653409 () Bool)

(assert (=> b!1023287 (= tp!310591 e!653409)))

(declare-fun b!1023665 () Bool)

(declare-fun tp!310707 () Bool)

(declare-fun tp!310704 () Bool)

(assert (=> b!1023665 (= e!653409 (and tp!310707 tp!310704))))

(declare-fun b!1023662 () Bool)

(assert (=> b!1023662 (= e!653409 tp_is_empty!5301)))

(declare-fun b!1023663 () Bool)

(declare-fun tp!310706 () Bool)

(declare-fun tp!310703 () Bool)

(assert (=> b!1023663 (= e!653409 (and tp!310706 tp!310703))))

(declare-fun b!1023664 () Bool)

(declare-fun tp!310705 () Bool)

(assert (=> b!1023664 (= e!653409 tp!310705)))

(assert (= (and b!1023287 ((_ is ElementMatch!2829) (reg!3158 (reg!3158 r!15766)))) b!1023662))

(assert (= (and b!1023287 ((_ is Concat!4662) (reg!3158 (reg!3158 r!15766)))) b!1023663))

(assert (= (and b!1023287 ((_ is Star!2829) (reg!3158 (reg!3158 r!15766)))) b!1023664))

(assert (= (and b!1023287 ((_ is Union!2829) (reg!3158 (reg!3158 r!15766)))) b!1023665))

(declare-fun e!653410 () Bool)

(assert (=> b!1023292 (= tp!310598 e!653410)))

(declare-fun b!1023669 () Bool)

(declare-fun tp!310712 () Bool)

(declare-fun tp!310709 () Bool)

(assert (=> b!1023669 (= e!653410 (and tp!310712 tp!310709))))

(declare-fun b!1023666 () Bool)

(assert (=> b!1023666 (= e!653410 tp_is_empty!5301)))

(declare-fun b!1023667 () Bool)

(declare-fun tp!310711 () Bool)

(declare-fun tp!310708 () Bool)

(assert (=> b!1023667 (= e!653410 (and tp!310711 tp!310708))))

(declare-fun b!1023668 () Bool)

(declare-fun tp!310710 () Bool)

(assert (=> b!1023668 (= e!653410 tp!310710)))

(assert (= (and b!1023292 ((_ is ElementMatch!2829) (regOne!6171 (regOne!6170 r!15766)))) b!1023666))

(assert (= (and b!1023292 ((_ is Concat!4662) (regOne!6171 (regOne!6170 r!15766)))) b!1023667))

(assert (= (and b!1023292 ((_ is Star!2829) (regOne!6171 (regOne!6170 r!15766)))) b!1023668))

(assert (= (and b!1023292 ((_ is Union!2829) (regOne!6171 (regOne!6170 r!15766)))) b!1023669))

(declare-fun e!653411 () Bool)

(assert (=> b!1023292 (= tp!310595 e!653411)))

(declare-fun b!1023673 () Bool)

(declare-fun tp!310717 () Bool)

(declare-fun tp!310714 () Bool)

(assert (=> b!1023673 (= e!653411 (and tp!310717 tp!310714))))

(declare-fun b!1023670 () Bool)

(assert (=> b!1023670 (= e!653411 tp_is_empty!5301)))

(declare-fun b!1023671 () Bool)

(declare-fun tp!310716 () Bool)

(declare-fun tp!310713 () Bool)

(assert (=> b!1023671 (= e!653411 (and tp!310716 tp!310713))))

(declare-fun b!1023672 () Bool)

(declare-fun tp!310715 () Bool)

(assert (=> b!1023672 (= e!653411 tp!310715)))

(assert (= (and b!1023292 ((_ is ElementMatch!2829) (regTwo!6171 (regOne!6170 r!15766)))) b!1023670))

(assert (= (and b!1023292 ((_ is Concat!4662) (regTwo!6171 (regOne!6170 r!15766)))) b!1023671))

(assert (= (and b!1023292 ((_ is Star!2829) (regTwo!6171 (regOne!6170 r!15766)))) b!1023672))

(assert (= (and b!1023292 ((_ is Union!2829) (regTwo!6171 (regOne!6170 r!15766)))) b!1023673))

(declare-fun e!653412 () Bool)

(assert (=> b!1023290 (= tp!310597 e!653412)))

(declare-fun b!1023677 () Bool)

(declare-fun tp!310722 () Bool)

(declare-fun tp!310719 () Bool)

(assert (=> b!1023677 (= e!653412 (and tp!310722 tp!310719))))

(declare-fun b!1023674 () Bool)

(assert (=> b!1023674 (= e!653412 tp_is_empty!5301)))

(declare-fun b!1023675 () Bool)

(declare-fun tp!310721 () Bool)

(declare-fun tp!310718 () Bool)

(assert (=> b!1023675 (= e!653412 (and tp!310721 tp!310718))))

(declare-fun b!1023676 () Bool)

(declare-fun tp!310720 () Bool)

(assert (=> b!1023676 (= e!653412 tp!310720)))

(assert (= (and b!1023290 ((_ is ElementMatch!2829) (regOne!6170 (regOne!6170 r!15766)))) b!1023674))

(assert (= (and b!1023290 ((_ is Concat!4662) (regOne!6170 (regOne!6170 r!15766)))) b!1023675))

(assert (= (and b!1023290 ((_ is Star!2829) (regOne!6170 (regOne!6170 r!15766)))) b!1023676))

(assert (= (and b!1023290 ((_ is Union!2829) (regOne!6170 (regOne!6170 r!15766)))) b!1023677))

(declare-fun e!653413 () Bool)

(assert (=> b!1023290 (= tp!310594 e!653413)))

(declare-fun b!1023681 () Bool)

(declare-fun tp!310727 () Bool)

(declare-fun tp!310724 () Bool)

(assert (=> b!1023681 (= e!653413 (and tp!310727 tp!310724))))

(declare-fun b!1023678 () Bool)

(assert (=> b!1023678 (= e!653413 tp_is_empty!5301)))

(declare-fun b!1023679 () Bool)

(declare-fun tp!310726 () Bool)

(declare-fun tp!310723 () Bool)

(assert (=> b!1023679 (= e!653413 (and tp!310726 tp!310723))))

(declare-fun b!1023680 () Bool)

(declare-fun tp!310725 () Bool)

(assert (=> b!1023680 (= e!653413 tp!310725)))

(assert (= (and b!1023290 ((_ is ElementMatch!2829) (regTwo!6170 (regOne!6170 r!15766)))) b!1023678))

(assert (= (and b!1023290 ((_ is Concat!4662) (regTwo!6170 (regOne!6170 r!15766)))) b!1023679))

(assert (= (and b!1023290 ((_ is Star!2829) (regTwo!6170 (regOne!6170 r!15766)))) b!1023680))

(assert (= (and b!1023290 ((_ is Union!2829) (regTwo!6170 (regOne!6170 r!15766)))) b!1023681))

(declare-fun e!653414 () Bool)

(assert (=> b!1023295 (= tp!310601 e!653414)))

(declare-fun b!1023685 () Bool)

(declare-fun tp!310732 () Bool)

(declare-fun tp!310729 () Bool)

(assert (=> b!1023685 (= e!653414 (and tp!310732 tp!310729))))

(declare-fun b!1023682 () Bool)

(assert (=> b!1023682 (= e!653414 tp_is_empty!5301)))

(declare-fun b!1023683 () Bool)

(declare-fun tp!310731 () Bool)

(declare-fun tp!310728 () Bool)

(assert (=> b!1023683 (= e!653414 (and tp!310731 tp!310728))))

(declare-fun b!1023684 () Bool)

(declare-fun tp!310730 () Bool)

(assert (=> b!1023684 (= e!653414 tp!310730)))

(assert (= (and b!1023295 ((_ is ElementMatch!2829) (reg!3158 (regTwo!6170 r!15766)))) b!1023682))

(assert (= (and b!1023295 ((_ is Concat!4662) (reg!3158 (regTwo!6170 r!15766)))) b!1023683))

(assert (= (and b!1023295 ((_ is Star!2829) (reg!3158 (regTwo!6170 r!15766)))) b!1023684))

(assert (= (and b!1023295 ((_ is Union!2829) (reg!3158 (regTwo!6170 r!15766)))) b!1023685))

(declare-fun e!653415 () Bool)

(assert (=> b!1023286 (= tp!310592 e!653415)))

(declare-fun b!1023689 () Bool)

(declare-fun tp!310737 () Bool)

(declare-fun tp!310734 () Bool)

(assert (=> b!1023689 (= e!653415 (and tp!310737 tp!310734))))

(declare-fun b!1023686 () Bool)

(assert (=> b!1023686 (= e!653415 tp_is_empty!5301)))

(declare-fun b!1023687 () Bool)

(declare-fun tp!310736 () Bool)

(declare-fun tp!310733 () Bool)

(assert (=> b!1023687 (= e!653415 (and tp!310736 tp!310733))))

(declare-fun b!1023688 () Bool)

(declare-fun tp!310735 () Bool)

(assert (=> b!1023688 (= e!653415 tp!310735)))

(assert (= (and b!1023286 ((_ is ElementMatch!2829) (regOne!6170 (reg!3158 r!15766)))) b!1023686))

(assert (= (and b!1023286 ((_ is Concat!4662) (regOne!6170 (reg!3158 r!15766)))) b!1023687))

(assert (= (and b!1023286 ((_ is Star!2829) (regOne!6170 (reg!3158 r!15766)))) b!1023688))

(assert (= (and b!1023286 ((_ is Union!2829) (regOne!6170 (reg!3158 r!15766)))) b!1023689))

(declare-fun e!653416 () Bool)

(assert (=> b!1023286 (= tp!310589 e!653416)))

(declare-fun b!1023693 () Bool)

(declare-fun tp!310742 () Bool)

(declare-fun tp!310739 () Bool)

(assert (=> b!1023693 (= e!653416 (and tp!310742 tp!310739))))

(declare-fun b!1023690 () Bool)

(assert (=> b!1023690 (= e!653416 tp_is_empty!5301)))

(declare-fun b!1023691 () Bool)

(declare-fun tp!310741 () Bool)

(declare-fun tp!310738 () Bool)

(assert (=> b!1023691 (= e!653416 (and tp!310741 tp!310738))))

(declare-fun b!1023692 () Bool)

(declare-fun tp!310740 () Bool)

(assert (=> b!1023692 (= e!653416 tp!310740)))

(assert (= (and b!1023286 ((_ is ElementMatch!2829) (regTwo!6170 (reg!3158 r!15766)))) b!1023690))

(assert (= (and b!1023286 ((_ is Concat!4662) (regTwo!6170 (reg!3158 r!15766)))) b!1023691))

(assert (= (and b!1023286 ((_ is Star!2829) (regTwo!6170 (reg!3158 r!15766)))) b!1023692))

(assert (= (and b!1023286 ((_ is Union!2829) (regTwo!6170 (reg!3158 r!15766)))) b!1023693))

(check-sat (not b!1023540) (not b!1023615) (not b!1023652) (not b!1023611) (not d!294764) (not b!1023631) (not d!294670) (not b!1023645) (not b!1023591) (not b!1023315) (not bm!70144) (not d!294740) (not b!1023627) (not b!1023634) (not bm!70143) (not bm!70166) (not b!1023581) (not b!1023604) (not b!1023492) (not bm!70186) (not b!1023649) (not b!1023469) (not bm!70181) (not b!1023692) (not b!1023447) (not d!294730) (not b!1023384) (not d!294732) (not b!1023602) (not d!294772) (not b!1023641) (not b!1023673) (not b!1023546) (not b!1023517) (not b!1023358) (not d!294742) (not b!1023672) (not b!1023612) (not b!1023668) (not bm!70171) (not b!1023688) (not b!1023677) (not b!1023681) (not bm!70193) (not b!1023619) (not b!1023394) (not b!1023560) (not b!1023468) (not b!1023636) (not b!1023635) (not d!294736) (not b!1023663) (not b!1023367) (not b!1023651) (not b!1023667) (not b!1023502) (not b!1023388) (not b!1023558) (not b!1023378) (not b!1023594) (not d!294704) (not b!1023465) (not b!1023608) (not d!294756) (not b!1023683) (not b!1023450) (not b!1023600) (not bm!70145) (not bm!70182) (not b!1023330) (not d!294766) (not b!1023643) (not b!1023595) (not b!1023559) (not b!1023623) (not b!1023618) (not b!1023323) (not b!1023679) (not d!294760) (not b!1023622) (not b!1023648) (not b!1023665) (not b!1023545) (not b!1023664) (not b!1023607) (not b!1023685) (not b!1023472) (not b!1023655) (not b!1023548) (not d!294662) (not b!1023638) (not b!1023317) (not b!1023554) (not b!1023659) (not b!1023684) (not d!294678) (not b!1023616) (not bm!70197) (not b!1023647) (not d!294686) (not bm!70155) (not b!1023614) (not b!1023578) (not bm!70198) (not bm!70165) (not b!1023660) (not bm!70195) (not b!1023585) (not d!294706) (not b!1023599) (not bm!70190) (not b!1023396) (not bm!70169) (not d!294674) (not b!1023671) (not b!1023626) (not b!1023470) (not bm!70151) (not b!1023340) (not bm!70189) (not bm!70154) tp_is_empty!5301 (not b!1023577) (not b!1023669) (not b!1023344) (not d!294710) (not d!294714) (not d!294738) (not d!294758) (not b!1023640) (not b!1023511) (not bm!70170) (not d!294734) (not b!1023535) (not b!1023632) (not bm!70146) (not b!1023620) (not bm!70196) (not b!1023603) (not d!294672) (not b!1023562) (not d!294698) (not b!1023675) (not b!1023544) (not b!1023639) (not d!294750) (not b!1023326) (not bm!70174) (not b!1023691) (not bm!70175) (not b!1023342) (not b!1023606) (not b!1023464) (not b!1023693) (not b!1023392) (not b!1023504) (not d!294762) (not b!1023656) (not b!1023555) (not d!294770) (not d!294676) (not b!1023598) (not bm!70148) (not b!1023336) (not b!1023676) (not b!1023628) (not d!294726) (not b!1023572) (not b!1023657) (not b!1023680) (not bm!70176) (not b!1023341) (not b!1023389) (not bm!70192) (not b!1023624) (not b!1023689) (not b!1023589) (not b!1023541) (not b!1023582) (not b!1023590) (not b!1023596) (not b!1023337) (not bm!70172) (not b!1023482) (not b!1023327) (not b!1023587) (not d!294728) (not d!294768) (not b!1023687) (not b!1023644) (not b!1023319) (not d!294712) (not bm!70152) (not b!1023592) (not b!1023441) (not b!1023328) (not b!1023393) (not b!1023653) (not b!1023661) (not b!1023322) (not b!1023630) (not b!1023349) (not b!1023610) (not b!1023536) (not bm!70187) (not bm!70149) (not b!1023426) (not b!1023526) (not bm!70156))
(check-sat)
