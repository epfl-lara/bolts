; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542992 () Bool)

(assert start!542992)

(declare-fun b!5132821 () Bool)

(assert (=> b!5132821 true))

(declare-fun bs!1198905 () Bool)

(declare-fun b!5132820 () Bool)

(declare-fun b!5132817 () Bool)

(assert (= bs!1198905 (and b!5132820 b!5132817)))

(declare-fun lambda!255093 () Int)

(declare-fun lambda!255092 () Int)

(assert (=> bs!1198905 (not (= lambda!255093 lambda!255092))))

(declare-fun bs!1198906 () Bool)

(declare-fun b!5132822 () Bool)

(assert (= bs!1198906 (and b!5132822 b!5132817)))

(declare-fun lambda!255094 () Int)

(assert (=> bs!1198906 (not (= lambda!255094 lambda!255092))))

(declare-fun bs!1198907 () Bool)

(assert (= bs!1198907 (and b!5132822 b!5132820)))

(assert (=> bs!1198907 (not (= lambda!255094 lambda!255093))))

(assert (=> b!5132822 true))

(assert (=> b!5132822 true))

(declare-fun setIsEmpty!31206 () Bool)

(declare-fun setRes!31206 () Bool)

(assert (=> setIsEmpty!31206 setRes!31206))

(declare-fun b!5132814 () Bool)

(declare-fun res!2186148 () Bool)

(declare-fun e!3201412 () Bool)

(assert (=> b!5132814 (=> (not res!2186148) (not e!3201412))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28992 0))(
  ( (C!28993 (val!24148 Int)) )
))
(declare-datatypes ((Regex!14363 0))(
  ( (ElementMatch!14363 (c!883302 C!28992)) (Concat!23208 (regOne!29238 Regex!14363) (regTwo!29238 Regex!14363)) (EmptyExpr!14363) (Star!14363 (reg!14692 Regex!14363)) (EmptyLang!14363) (Union!14363 (regOne!29239 Regex!14363) (regTwo!29239 Regex!14363)) )
))
(declare-datatypes ((List!59669 0))(
  ( (Nil!59545) (Cons!59545 (h!65993 Regex!14363) (t!372696 List!59669)) )
))
(declare-datatypes ((Context!7494 0))(
  ( (Context!7495 (exprs!4247 List!59669)) )
))
(declare-fun z!1054 () (InoxSet Context!7494))

(declare-fun forall!13811 ((InoxSet Context!7494) Int) Bool)

(assert (=> b!5132814 (= res!2186148 (forall!13811 z!1054 lambda!255092))))

(declare-fun res!2186155 () Bool)

(declare-fun e!3201419 () Bool)

(assert (=> start!542992 (=> (not res!2186155) (not e!3201419))))

(declare-fun lostCauseZipper!1207 ((InoxSet Context!7494)) Bool)

(assert (=> start!542992 (= res!2186155 (lostCauseZipper!1207 z!1054))))

(assert (=> start!542992 e!3201419))

(declare-fun condSetEmpty!31206 () Bool)

(assert (=> start!542992 (= condSetEmpty!31206 (= z!1054 ((as const (Array Context!7494 Bool)) false)))))

(assert (=> start!542992 setRes!31206))

(declare-fun tp_is_empty!37899 () Bool)

(assert (=> start!542992 tp_is_empty!37899))

(declare-fun b!5132815 () Bool)

(declare-fun e!3201413 () Bool)

(declare-fun tp!1431849 () Bool)

(assert (=> b!5132815 (= e!3201413 tp!1431849)))

(declare-fun b!5132816 () Bool)

(declare-fun res!2186156 () Bool)

(declare-fun e!3201420 () Bool)

(assert (=> b!5132816 (=> res!2186156 e!3201420)))

(declare-fun lt!2118094 () Context!7494)

(declare-fun lostCause!1306 (Context!7494) Bool)

(assert (=> b!5132816 (= res!2186156 (lostCause!1306 lt!2118094))))

(declare-fun e!3201415 () Bool)

(assert (=> b!5132817 (= e!3201415 e!3201412)))

(declare-fun res!2186154 () Bool)

(assert (=> b!5132817 (=> (not res!2186154) (not e!3201412))))

(declare-fun lt!2118091 () (InoxSet Context!7494))

(declare-fun lt!2118096 () Bool)

(assert (=> b!5132817 (= res!2186154 (= lt!2118096 (forall!13811 lt!2118091 lambda!255092)))))

(assert (=> b!5132817 (= lt!2118096 (lostCauseZipper!1207 lt!2118091))))

(declare-fun b!5132818 () Bool)

(declare-fun e!3201418 () Bool)

(declare-fun lt!2118090 () (InoxSet Context!7494))

(assert (=> b!5132818 (= e!3201418 (lostCauseZipper!1207 lt!2118090))))

(declare-fun lt!2118099 () Context!7494)

(declare-fun a!1233 () C!28992)

(declare-fun derivationStepZipperUp!71 (Context!7494 C!28992) (InoxSet Context!7494))

(assert (=> b!5132818 (lostCauseZipper!1207 (derivationStepZipperUp!71 lt!2118099 a!1233))))

(declare-datatypes ((Unit!150857 0))(
  ( (Unit!150858) )
))
(declare-fun lt!2118097 () Unit!150857)

(declare-fun lemmaLostCauseFixPointDerivUp!4 (Context!7494 C!28992) Unit!150857)

(assert (=> b!5132818 (= lt!2118097 (lemmaLostCauseFixPointDerivUp!4 lt!2118099 a!1233))))

(declare-fun b!5132819 () Bool)

(declare-fun e!3201414 () Bool)

(declare-fun e!3201416 () Bool)

(assert (=> b!5132819 (= e!3201414 e!3201416)))

(declare-fun res!2186153 () Bool)

(assert (=> b!5132819 (=> res!2186153 e!3201416)))

(assert (=> b!5132819 (= res!2186153 (not (select lt!2118090 lt!2118094)))))

(assert (=> b!5132819 (= lt!2118090 (derivationStepZipperUp!71 lt!2118099 a!1233))))

(declare-fun tp!1431848 () Bool)

(declare-fun setElem!31206 () Context!7494)

(declare-fun setNonEmpty!31206 () Bool)

(declare-fun inv!79088 (Context!7494) Bool)

(assert (=> setNonEmpty!31206 (= setRes!31206 (and tp!1431848 (inv!79088 setElem!31206) e!3201413))))

(declare-fun setRest!31206 () (InoxSet Context!7494))

(assert (=> setNonEmpty!31206 (= z!1054 ((_ map or) (store ((as const (Array Context!7494 Bool)) false) setElem!31206 true) setRest!31206))))

(declare-fun e!3201411 () Bool)

(assert (=> b!5132820 (= e!3201412 (not e!3201411))))

(declare-fun res!2186152 () Bool)

(assert (=> b!5132820 (=> res!2186152 e!3201411)))

(declare-fun exists!1690 ((InoxSet Context!7494) Int) Bool)

(assert (=> b!5132820 (= res!2186152 (not (exists!1690 lt!2118091 lambda!255093)))))

(declare-datatypes ((List!59670 0))(
  ( (Nil!59546) (Cons!59546 (h!65994 Context!7494) (t!372697 List!59670)) )
))
(declare-fun lt!2118098 () List!59670)

(declare-fun exists!1691 (List!59670 Int) Bool)

(assert (=> b!5132820 (exists!1691 lt!2118098 lambda!255093)))

(declare-fun lt!2118092 () Unit!150857)

(declare-fun lemmaNotForallThenExists!396 (List!59670 Int) Unit!150857)

(assert (=> b!5132820 (= lt!2118092 (lemmaNotForallThenExists!396 lt!2118098 lambda!255092))))

(declare-fun toList!8348 ((InoxSet Context!7494)) List!59670)

(assert (=> b!5132820 (= lt!2118098 (toList!8348 lt!2118091))))

(assert (=> b!5132821 (= e!3201419 e!3201415)))

(declare-fun res!2186159 () Bool)

(assert (=> b!5132821 (=> (not res!2186159) (not e!3201415))))

(declare-fun lambda!255091 () Int)

(declare-fun flatMap!414 ((InoxSet Context!7494) Int) (InoxSet Context!7494))

(assert (=> b!5132821 (= res!2186159 (= lt!2118091 (flatMap!414 z!1054 lambda!255091)))))

(declare-fun derivationStepZipper!918 ((InoxSet Context!7494) C!28992) (InoxSet Context!7494))

(assert (=> b!5132821 (= lt!2118091 (derivationStepZipper!918 z!1054 a!1233))))

(declare-fun e!3201417 () Bool)

(assert (=> b!5132822 (= e!3201420 e!3201417)))

(declare-fun res!2186149 () Bool)

(assert (=> b!5132822 (=> res!2186149 e!3201417)))

(assert (=> b!5132822 (= res!2186149 (not (exists!1690 z!1054 lambda!255094)))))

(assert (=> b!5132822 (exists!1690 z!1054 lambda!255094)))

(declare-fun lt!2118093 () Unit!150857)

(declare-fun lemmaFlatMapPost!18 ((InoxSet Context!7494) Int Context!7494) Unit!150857)

(assert (=> b!5132822 (= lt!2118093 (lemmaFlatMapPost!18 z!1054 lambda!255091 lt!2118094))))

(declare-fun b!5132823 () Bool)

(assert (=> b!5132823 (= e!3201411 e!3201420)))

(declare-fun res!2186157 () Bool)

(assert (=> b!5132823 (=> res!2186157 e!3201420)))

(assert (=> b!5132823 (= res!2186157 (not (select lt!2118091 lt!2118094)))))

(declare-fun getWitness!818 (List!59670 Int) Context!7494)

(assert (=> b!5132823 (= lt!2118094 (getWitness!818 lt!2118098 lambda!255093))))

(declare-fun b!5132824 () Bool)

(assert (=> b!5132824 (= e!3201417 e!3201414)))

(declare-fun res!2186150 () Bool)

(assert (=> b!5132824 (=> res!2186150 e!3201414)))

(assert (=> b!5132824 (= res!2186150 (not (select z!1054 lt!2118099)))))

(declare-fun getWitness!819 ((InoxSet Context!7494) Int) Context!7494)

(assert (=> b!5132824 (= lt!2118099 (getWitness!819 z!1054 lambda!255094))))

(declare-fun b!5132825 () Bool)

(assert (=> b!5132825 (= e!3201416 e!3201418)))

(declare-fun res!2186151 () Bool)

(assert (=> b!5132825 (=> res!2186151 e!3201418)))

(assert (=> b!5132825 (= res!2186151 (not (lostCause!1306 lt!2118099)))))

(declare-fun lt!2118095 () Unit!150857)

(declare-fun forallContained!4625 (List!59670 Int Context!7494) Unit!150857)

(assert (=> b!5132825 (= lt!2118095 (forallContained!4625 (toList!8348 z!1054) lambda!255092 lt!2118099))))

(declare-fun b!5132826 () Bool)

(declare-fun res!2186158 () Bool)

(assert (=> b!5132826 (=> (not res!2186158) (not e!3201412))))

(assert (=> b!5132826 (= res!2186158 (not lt!2118096))))

(declare-fun b!5132827 () Bool)

(declare-fun res!2186160 () Bool)

(assert (=> b!5132827 (=> (not res!2186160) (not e!3201412))))

(assert (=> b!5132827 (= res!2186160 (not (forall!13811 lt!2118091 lambda!255092)))))

(assert (= (and start!542992 res!2186155) b!5132821))

(assert (= (and b!5132821 res!2186159) b!5132817))

(assert (= (and b!5132817 res!2186154) b!5132814))

(assert (= (and b!5132814 res!2186148) b!5132826))

(assert (= (and b!5132826 res!2186158) b!5132827))

(assert (= (and b!5132827 res!2186160) b!5132820))

(assert (= (and b!5132820 (not res!2186152)) b!5132823))

(assert (= (and b!5132823 (not res!2186157)) b!5132816))

(assert (= (and b!5132816 (not res!2186156)) b!5132822))

(assert (= (and b!5132822 (not res!2186149)) b!5132824))

(assert (= (and b!5132824 (not res!2186150)) b!5132819))

(assert (= (and b!5132819 (not res!2186153)) b!5132825))

(assert (= (and b!5132825 (not res!2186151)) b!5132818))

(assert (= (and start!542992 condSetEmpty!31206) setIsEmpty!31206))

(assert (= (and start!542992 (not condSetEmpty!31206)) setNonEmpty!31206))

(assert (= setNonEmpty!31206 b!5132815))

(declare-fun m!6198730 () Bool)

(assert (=> b!5132822 m!6198730))

(assert (=> b!5132822 m!6198730))

(declare-fun m!6198732 () Bool)

(assert (=> b!5132822 m!6198732))

(declare-fun m!6198734 () Bool)

(assert (=> setNonEmpty!31206 m!6198734))

(declare-fun m!6198736 () Bool)

(assert (=> b!5132824 m!6198736))

(declare-fun m!6198738 () Bool)

(assert (=> b!5132824 m!6198738))

(declare-fun m!6198740 () Bool)

(assert (=> b!5132823 m!6198740))

(declare-fun m!6198742 () Bool)

(assert (=> b!5132823 m!6198742))

(declare-fun m!6198744 () Bool)

(assert (=> b!5132817 m!6198744))

(declare-fun m!6198746 () Bool)

(assert (=> b!5132817 m!6198746))

(declare-fun m!6198748 () Bool)

(assert (=> b!5132814 m!6198748))

(declare-fun m!6198750 () Bool)

(assert (=> b!5132820 m!6198750))

(declare-fun m!6198752 () Bool)

(assert (=> b!5132820 m!6198752))

(declare-fun m!6198754 () Bool)

(assert (=> b!5132820 m!6198754))

(declare-fun m!6198756 () Bool)

(assert (=> b!5132820 m!6198756))

(declare-fun m!6198758 () Bool)

(assert (=> start!542992 m!6198758))

(declare-fun m!6198760 () Bool)

(assert (=> b!5132819 m!6198760))

(declare-fun m!6198762 () Bool)

(assert (=> b!5132819 m!6198762))

(declare-fun m!6198764 () Bool)

(assert (=> b!5132825 m!6198764))

(declare-fun m!6198766 () Bool)

(assert (=> b!5132825 m!6198766))

(assert (=> b!5132825 m!6198766))

(declare-fun m!6198768 () Bool)

(assert (=> b!5132825 m!6198768))

(declare-fun m!6198770 () Bool)

(assert (=> b!5132821 m!6198770))

(declare-fun m!6198772 () Bool)

(assert (=> b!5132821 m!6198772))

(declare-fun m!6198774 () Bool)

(assert (=> b!5132816 m!6198774))

(assert (=> b!5132827 m!6198744))

(declare-fun m!6198776 () Bool)

(assert (=> b!5132818 m!6198776))

(assert (=> b!5132818 m!6198762))

(assert (=> b!5132818 m!6198762))

(declare-fun m!6198778 () Bool)

(assert (=> b!5132818 m!6198778))

(declare-fun m!6198780 () Bool)

(assert (=> b!5132818 m!6198780))

(check-sat (not start!542992) (not b!5132819) (not b!5132825) (not b!5132818) (not b!5132821) (not b!5132824) (not b!5132822) (not b!5132823) (not b!5132816) (not setNonEmpty!31206) (not b!5132817) (not b!5132820) (not b!5132814) (not b!5132815) tp_is_empty!37899 (not b!5132827))
(check-sat)
