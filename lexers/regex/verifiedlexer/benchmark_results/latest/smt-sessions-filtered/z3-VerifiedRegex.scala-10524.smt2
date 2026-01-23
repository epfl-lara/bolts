; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542400 () Bool)

(assert start!542400)

(declare-fun b!5130851 () Bool)

(assert (=> b!5130851 true))

(declare-fun bs!1195862 () Bool)

(declare-fun b!5130842 () Bool)

(declare-fun b!5130845 () Bool)

(assert (= bs!1195862 (and b!5130842 b!5130845)))

(declare-fun lambda!253909 () Int)

(declare-fun lambda!253908 () Int)

(assert (=> bs!1195862 (not (= lambda!253909 lambda!253908))))

(declare-fun bs!1195863 () Bool)

(declare-fun b!5130857 () Bool)

(assert (= bs!1195863 (and b!5130857 b!5130845)))

(declare-fun lambda!253910 () Int)

(assert (=> bs!1195863 (not (= lambda!253910 lambda!253908))))

(declare-fun bs!1195864 () Bool)

(assert (= bs!1195864 (and b!5130857 b!5130842)))

(assert (=> bs!1195864 (not (= lambda!253910 lambda!253909))))

(assert (=> b!5130857 true))

(assert (=> b!5130857 true))

(declare-fun e!3200035 () Bool)

(declare-fun e!3200038 () Bool)

(assert (=> b!5130842 (= e!3200035 (not e!3200038))))

(declare-fun res!2185207 () Bool)

(assert (=> b!5130842 (=> res!2185207 e!3200038)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28944 0))(
  ( (C!28945 (val!24124 Int)) )
))
(declare-datatypes ((Regex!14339 0))(
  ( (ElementMatch!14339 (c!882601 C!28944)) (Concat!23184 (regOne!29190 Regex!14339) (regTwo!29190 Regex!14339)) (EmptyExpr!14339) (Star!14339 (reg!14668 Regex!14339)) (EmptyLang!14339) (Union!14339 (regOne!29191 Regex!14339) (regTwo!29191 Regex!14339)) )
))
(declare-datatypes ((List!59607 0))(
  ( (Nil!59483) (Cons!59483 (h!65931 Regex!14339) (t!372634 List!59607)) )
))
(declare-datatypes ((Context!7446 0))(
  ( (Context!7447 (exprs!4223 List!59607)) )
))
(declare-fun lt!2116675 () (InoxSet Context!7446))

(declare-fun exists!1643 ((InoxSet Context!7446) Int) Bool)

(assert (=> b!5130842 (= res!2185207 (not (exists!1643 lt!2116675 lambda!253909)))))

(declare-datatypes ((List!59608 0))(
  ( (Nil!59484) (Cons!59484 (h!65932 Context!7446) (t!372635 List!59608)) )
))
(declare-fun lt!2116678 () List!59608)

(declare-fun exists!1644 (List!59608 Int) Bool)

(assert (=> b!5130842 (exists!1644 lt!2116678 lambda!253909)))

(declare-datatypes ((Unit!150733 0))(
  ( (Unit!150734) )
))
(declare-fun lt!2116674 () Unit!150733)

(declare-fun lemmaNotForallThenExists!377 (List!59608 Int) Unit!150733)

(assert (=> b!5130842 (= lt!2116674 (lemmaNotForallThenExists!377 lt!2116678 lambda!253908))))

(declare-fun toList!8329 ((InoxSet Context!7446)) List!59608)

(assert (=> b!5130842 (= lt!2116678 (toList!8329 lt!2116675))))

(declare-fun b!5130843 () Bool)

(declare-fun res!2185213 () Bool)

(assert (=> b!5130843 (=> (not res!2185213) (not e!3200035))))

(declare-fun lt!2116673 () Bool)

(assert (=> b!5130843 (= res!2185213 (not lt!2116673))))

(declare-fun b!5130844 () Bool)

(declare-fun res!2185203 () Bool)

(declare-fun e!3200029 () Bool)

(assert (=> b!5130844 (=> res!2185203 e!3200029)))

(declare-fun lt!2116679 () Context!7446)

(declare-fun lostCause!1292 (Context!7446) Bool)

(assert (=> b!5130844 (= res!2185203 (lostCause!1292 lt!2116679))))

(declare-fun res!2185202 () Bool)

(declare-fun e!3200031 () Bool)

(assert (=> start!542400 (=> (not res!2185202) (not e!3200031))))

(declare-fun z!1054 () (InoxSet Context!7446))

(declare-fun lostCauseZipper!1183 ((InoxSet Context!7446)) Bool)

(assert (=> start!542400 (= res!2185202 (lostCauseZipper!1183 z!1054))))

(assert (=> start!542400 e!3200031))

(declare-fun condSetEmpty!31058 () Bool)

(assert (=> start!542400 (= condSetEmpty!31058 (= z!1054 ((as const (Array Context!7446 Bool)) false)))))

(declare-fun setRes!31058 () Bool)

(assert (=> start!542400 setRes!31058))

(declare-fun tp_is_empty!37851 () Bool)

(assert (=> start!542400 tp_is_empty!37851))

(declare-fun e!3200036 () Bool)

(assert (=> b!5130845 (= e!3200036 e!3200035)))

(declare-fun res!2185209 () Bool)

(assert (=> b!5130845 (=> (not res!2185209) (not e!3200035))))

(declare-fun forall!13758 ((InoxSet Context!7446) Int) Bool)

(assert (=> b!5130845 (= res!2185209 (= lt!2116673 (forall!13758 lt!2116675 lambda!253908)))))

(assert (=> b!5130845 (= lt!2116673 (lostCauseZipper!1183 lt!2116675))))

(declare-fun b!5130846 () Bool)

(declare-fun e!3200034 () Bool)

(declare-fun lt!2116670 () List!59608)

(declare-fun contains!19636 (List!59608 Context!7446) Bool)

(assert (=> b!5130846 (= e!3200034 (contains!19636 lt!2116670 lt!2116679))))

(declare-fun tp!1431325 () Bool)

(declare-fun setElem!31058 () Context!7446)

(declare-fun setNonEmpty!31058 () Bool)

(declare-fun e!3200028 () Bool)

(declare-fun inv!79028 (Context!7446) Bool)

(assert (=> setNonEmpty!31058 (= setRes!31058 (and tp!1431325 (inv!79028 setElem!31058) e!3200028))))

(declare-fun setRest!31058 () (InoxSet Context!7446))

(assert (=> setNonEmpty!31058 (= z!1054 ((_ map or) (store ((as const (Array Context!7446 Bool)) false) setElem!31058 true) setRest!31058))))

(declare-fun b!5130847 () Bool)

(declare-fun e!3200030 () Bool)

(declare-fun e!3200032 () Bool)

(assert (=> b!5130847 (= e!3200030 e!3200032)))

(declare-fun res!2185211 () Bool)

(assert (=> b!5130847 (=> res!2185211 e!3200032)))

(declare-fun lt!2116676 () (InoxSet Context!7446))

(assert (=> b!5130847 (= res!2185211 (not (lostCauseZipper!1183 lt!2116676)))))

(declare-fun lt!2116671 () Context!7446)

(declare-fun a!1233 () C!28944)

(declare-fun derivationStepZipperUp!64 (Context!7446 C!28944) (InoxSet Context!7446))

(assert (=> b!5130847 (lostCauseZipper!1183 (derivationStepZipperUp!64 lt!2116671 a!1233))))

(declare-fun lt!2116672 () Unit!150733)

(declare-fun lemmaLostCauseFixPointDerivUp!2 (Context!7446 C!28944) Unit!150733)

(assert (=> b!5130847 (= lt!2116672 (lemmaLostCauseFixPointDerivUp!2 lt!2116671 a!1233))))

(declare-fun b!5130848 () Bool)

(declare-fun tp!1431324 () Bool)

(assert (=> b!5130848 (= e!3200028 tp!1431324)))

(declare-fun b!5130849 () Bool)

(assert (=> b!5130849 (= e!3200038 e!3200029)))

(declare-fun res!2185215 () Bool)

(assert (=> b!5130849 (=> res!2185215 e!3200029)))

(assert (=> b!5130849 (= res!2185215 (not (select lt!2116675 lt!2116679)))))

(declare-fun getWitness!794 (List!59608 Int) Context!7446)

(assert (=> b!5130849 (= lt!2116679 (getWitness!794 lt!2116678 lambda!253909))))

(declare-fun b!5130850 () Bool)

(declare-fun e!3200039 () Bool)

(declare-fun e!3200033 () Bool)

(assert (=> b!5130850 (= e!3200039 e!3200033)))

(declare-fun res!2185210 () Bool)

(assert (=> b!5130850 (=> res!2185210 e!3200033)))

(assert (=> b!5130850 (= res!2185210 (not (select lt!2116676 lt!2116679)))))

(assert (=> b!5130850 (= lt!2116676 (derivationStepZipperUp!64 lt!2116671 a!1233))))

(assert (=> b!5130851 (= e!3200031 e!3200036)))

(declare-fun res!2185206 () Bool)

(assert (=> b!5130851 (=> (not res!2185206) (not e!3200036))))

(declare-fun lambda!253907 () Int)

(declare-fun flatMap!390 ((InoxSet Context!7446) Int) (InoxSet Context!7446))

(assert (=> b!5130851 (= res!2185206 (= lt!2116675 (flatMap!390 z!1054 lambda!253907)))))

(declare-fun derivationStepZipper!894 ((InoxSet Context!7446) C!28944) (InoxSet Context!7446))

(assert (=> b!5130851 (= lt!2116675 (derivationStepZipper!894 z!1054 a!1233))))

(declare-fun b!5130852 () Bool)

(declare-fun res!2185216 () Bool)

(assert (=> b!5130852 (=> (not res!2185216) (not e!3200035))))

(assert (=> b!5130852 (= res!2185216 (not (forall!13758 lt!2116675 lambda!253908)))))

(declare-fun setIsEmpty!31058 () Bool)

(assert (=> setIsEmpty!31058 setRes!31058))

(declare-fun b!5130853 () Bool)

(declare-fun res!2185212 () Bool)

(assert (=> b!5130853 (=> (not res!2185212) (not e!3200035))))

(assert (=> b!5130853 (= res!2185212 (forall!13758 z!1054 lambda!253908))))

(declare-fun b!5130854 () Bool)

(declare-fun e!3200037 () Bool)

(assert (=> b!5130854 (= e!3200037 e!3200039)))

(declare-fun res!2185204 () Bool)

(assert (=> b!5130854 (=> res!2185204 e!3200039)))

(assert (=> b!5130854 (= res!2185204 (not (select z!1054 lt!2116671)))))

(declare-fun getWitness!795 ((InoxSet Context!7446) Int) Context!7446)

(assert (=> b!5130854 (= lt!2116671 (getWitness!795 z!1054 lambda!253910))))

(declare-fun b!5130855 () Bool)

(assert (=> b!5130855 (= e!3200032 e!3200034)))

(declare-fun res!2185205 () Bool)

(assert (=> b!5130855 (=> (not res!2185205) (not e!3200034))))

(declare-fun forall!13759 (List!59608 Int) Bool)

(assert (=> b!5130855 (= res!2185205 (forall!13759 lt!2116670 lambda!253908))))

(assert (=> b!5130855 (= lt!2116670 (toList!8329 lt!2116676))))

(declare-fun b!5130856 () Bool)

(assert (=> b!5130856 (= e!3200033 e!3200030)))

(declare-fun res!2185208 () Bool)

(assert (=> b!5130856 (=> res!2185208 e!3200030)))

(assert (=> b!5130856 (= res!2185208 (not (lostCause!1292 lt!2116671)))))

(declare-fun lt!2116677 () Unit!150733)

(declare-fun forallContained!4621 (List!59608 Int Context!7446) Unit!150733)

(assert (=> b!5130856 (= lt!2116677 (forallContained!4621 (toList!8329 z!1054) lambda!253908 lt!2116671))))

(assert (=> b!5130857 (= e!3200029 e!3200037)))

(declare-fun res!2185214 () Bool)

(assert (=> b!5130857 (=> res!2185214 e!3200037)))

(assert (=> b!5130857 (= res!2185214 (not (exists!1643 z!1054 lambda!253910)))))

(assert (=> b!5130857 (exists!1643 z!1054 lambda!253910)))

(declare-fun lt!2116680 () Unit!150733)

(declare-fun lemmaFlatMapPost!8 ((InoxSet Context!7446) Int Context!7446) Unit!150733)

(assert (=> b!5130857 (= lt!2116680 (lemmaFlatMapPost!8 z!1054 lambda!253907 lt!2116679))))

(assert (= (and start!542400 res!2185202) b!5130851))

(assert (= (and b!5130851 res!2185206) b!5130845))

(assert (= (and b!5130845 res!2185209) b!5130853))

(assert (= (and b!5130853 res!2185212) b!5130843))

(assert (= (and b!5130843 res!2185213) b!5130852))

(assert (= (and b!5130852 res!2185216) b!5130842))

(assert (= (and b!5130842 (not res!2185207)) b!5130849))

(assert (= (and b!5130849 (not res!2185215)) b!5130844))

(assert (= (and b!5130844 (not res!2185203)) b!5130857))

(assert (= (and b!5130857 (not res!2185214)) b!5130854))

(assert (= (and b!5130854 (not res!2185204)) b!5130850))

(assert (= (and b!5130850 (not res!2185210)) b!5130856))

(assert (= (and b!5130856 (not res!2185208)) b!5130847))

(assert (= (and b!5130847 (not res!2185211)) b!5130855))

(assert (= (and b!5130855 res!2185205) b!5130846))

(assert (= (and start!542400 condSetEmpty!31058) setIsEmpty!31058))

(assert (= (and start!542400 (not condSetEmpty!31058)) setNonEmpty!31058))

(assert (= setNonEmpty!31058 b!5130848))

(declare-fun m!6195664 () Bool)

(assert (=> b!5130857 m!6195664))

(assert (=> b!5130857 m!6195664))

(declare-fun m!6195666 () Bool)

(assert (=> b!5130857 m!6195666))

(declare-fun m!6195668 () Bool)

(assert (=> b!5130853 m!6195668))

(declare-fun m!6195670 () Bool)

(assert (=> b!5130847 m!6195670))

(declare-fun m!6195672 () Bool)

(assert (=> b!5130847 m!6195672))

(assert (=> b!5130847 m!6195672))

(declare-fun m!6195674 () Bool)

(assert (=> b!5130847 m!6195674))

(declare-fun m!6195676 () Bool)

(assert (=> b!5130847 m!6195676))

(declare-fun m!6195678 () Bool)

(assert (=> b!5130845 m!6195678))

(declare-fun m!6195680 () Bool)

(assert (=> b!5130845 m!6195680))

(assert (=> b!5130852 m!6195678))

(declare-fun m!6195682 () Bool)

(assert (=> b!5130842 m!6195682))

(declare-fun m!6195684 () Bool)

(assert (=> b!5130842 m!6195684))

(declare-fun m!6195686 () Bool)

(assert (=> b!5130842 m!6195686))

(declare-fun m!6195688 () Bool)

(assert (=> b!5130842 m!6195688))

(declare-fun m!6195690 () Bool)

(assert (=> setNonEmpty!31058 m!6195690))

(declare-fun m!6195692 () Bool)

(assert (=> b!5130854 m!6195692))

(declare-fun m!6195694 () Bool)

(assert (=> b!5130854 m!6195694))

(declare-fun m!6195696 () Bool)

(assert (=> b!5130855 m!6195696))

(declare-fun m!6195698 () Bool)

(assert (=> b!5130855 m!6195698))

(declare-fun m!6195700 () Bool)

(assert (=> b!5130844 m!6195700))

(declare-fun m!6195702 () Bool)

(assert (=> start!542400 m!6195702))

(declare-fun m!6195704 () Bool)

(assert (=> b!5130850 m!6195704))

(assert (=> b!5130850 m!6195672))

(declare-fun m!6195706 () Bool)

(assert (=> b!5130849 m!6195706))

(declare-fun m!6195708 () Bool)

(assert (=> b!5130849 m!6195708))

(declare-fun m!6195710 () Bool)

(assert (=> b!5130856 m!6195710))

(declare-fun m!6195712 () Bool)

(assert (=> b!5130856 m!6195712))

(assert (=> b!5130856 m!6195712))

(declare-fun m!6195714 () Bool)

(assert (=> b!5130856 m!6195714))

(declare-fun m!6195716 () Bool)

(assert (=> b!5130846 m!6195716))

(declare-fun m!6195718 () Bool)

(assert (=> b!5130851 m!6195718))

(declare-fun m!6195720 () Bool)

(assert (=> b!5130851 m!6195720))

(check-sat (not b!5130847) (not setNonEmpty!31058) (not b!5130855) (not b!5130850) (not b!5130853) (not start!542400) (not b!5130856) (not b!5130854) (not b!5130849) (not b!5130844) (not b!5130851) (not b!5130857) (not b!5130852) tp_is_empty!37851 (not b!5130846) (not b!5130842) (not b!5130848) (not b!5130845))
(check-sat)
(get-model)

(declare-fun d!1659863 () Bool)

(declare-fun lt!2116733 () Bool)

(assert (=> d!1659863 (= lt!2116733 (exists!1644 (toList!8329 z!1054) lambda!253910))))

(declare-fun choose!37860 ((InoxSet Context!7446) Int) Bool)

(assert (=> d!1659863 (= lt!2116733 (choose!37860 z!1054 lambda!253910))))

(assert (=> d!1659863 (= (exists!1643 z!1054 lambda!253910) lt!2116733)))

(declare-fun bs!1195922 () Bool)

(assert (= bs!1195922 d!1659863))

(assert (=> bs!1195922 m!6195712))

(assert (=> bs!1195922 m!6195712))

(declare-fun m!6195774 () Bool)

(assert (=> bs!1195922 m!6195774))

(declare-fun m!6195776 () Bool)

(assert (=> bs!1195922 m!6195776))

(assert (=> b!5130857 d!1659863))

(declare-fun bs!1195945 () Bool)

(declare-fun d!1659869 () Bool)

(assert (= bs!1195945 (and d!1659869 b!5130845)))

(declare-fun lambda!253949 () Int)

(assert (=> bs!1195945 (not (= lambda!253949 lambda!253908))))

(declare-fun bs!1195950 () Bool)

(assert (= bs!1195950 (and d!1659869 b!5130842)))

(assert (=> bs!1195950 (not (= lambda!253949 lambda!253909))))

(declare-fun bs!1195953 () Bool)

(assert (= bs!1195953 (and d!1659869 b!5130857)))

(assert (=> bs!1195953 (not (= lambda!253949 lambda!253910))))

(assert (=> d!1659869 true))

(assert (=> d!1659869 true))

(declare-fun order!26849 () Int)

(declare-fun order!26847 () Int)

(declare-fun dynLambda!23681 (Int Int) Int)

(declare-fun dynLambda!23682 (Int Int) Int)

(assert (=> d!1659869 (< (dynLambda!23681 order!26847 lambda!253907) (dynLambda!23682 order!26849 lambda!253949))))

(assert (=> d!1659869 (exists!1643 z!1054 lambda!253949)))

(declare-fun lt!2116740 () Unit!150733)

(declare-fun choose!37861 ((InoxSet Context!7446) Int Context!7446) Unit!150733)

(assert (=> d!1659869 (= lt!2116740 (choose!37861 z!1054 lambda!253907 lt!2116679))))

(assert (=> d!1659869 (select (flatMap!390 z!1054 lambda!253907) lt!2116679)))

(assert (=> d!1659869 (= (lemmaFlatMapPost!8 z!1054 lambda!253907 lt!2116679) lt!2116740)))

(declare-fun bs!1195959 () Bool)

(assert (= bs!1195959 d!1659869))

(declare-fun m!6195810 () Bool)

(assert (=> bs!1195959 m!6195810))

(declare-fun m!6195812 () Bool)

(assert (=> bs!1195959 m!6195812))

(assert (=> bs!1195959 m!6195718))

(declare-fun m!6195814 () Bool)

(assert (=> bs!1195959 m!6195814))

(assert (=> b!5130857 d!1659869))

(declare-fun bs!1196036 () Bool)

(declare-fun d!1659881 () Bool)

(assert (= bs!1196036 (and d!1659881 b!5130845)))

(declare-fun lambda!253969 () Int)

(assert (=> bs!1196036 (= lambda!253969 lambda!253908)))

(declare-fun bs!1196037 () Bool)

(assert (= bs!1196037 (and d!1659881 b!5130842)))

(assert (=> bs!1196037 (not (= lambda!253969 lambda!253909))))

(declare-fun bs!1196038 () Bool)

(assert (= bs!1196038 (and d!1659881 b!5130857)))

(assert (=> bs!1196038 (not (= lambda!253969 lambda!253910))))

(declare-fun bs!1196040 () Bool)

(assert (= bs!1196040 (and d!1659881 d!1659869)))

(assert (=> bs!1196040 (not (= lambda!253969 lambda!253949))))

(declare-fun bs!1196041 () Bool)

(declare-fun b!5130943 () Bool)

(assert (= bs!1196041 (and b!5130943 b!5130857)))

(declare-fun lambda!253970 () Int)

(assert (=> bs!1196041 (not (= lambda!253970 lambda!253910))))

(declare-fun bs!1196042 () Bool)

(assert (= bs!1196042 (and b!5130943 d!1659881)))

(assert (=> bs!1196042 (not (= lambda!253970 lambda!253969))))

(declare-fun bs!1196043 () Bool)

(assert (= bs!1196043 (and b!5130943 b!5130845)))

(assert (=> bs!1196043 (not (= lambda!253970 lambda!253908))))

(declare-fun bs!1196044 () Bool)

(assert (= bs!1196044 (and b!5130943 b!5130842)))

(assert (=> bs!1196044 (= lambda!253970 lambda!253909)))

(declare-fun bs!1196045 () Bool)

(assert (= bs!1196045 (and b!5130943 d!1659869)))

(assert (=> bs!1196045 (not (= lambda!253970 lambda!253949))))

(declare-fun bs!1196046 () Bool)

(declare-fun b!5130944 () Bool)

(assert (= bs!1196046 (and b!5130944 b!5130857)))

(declare-fun lambda!253971 () Int)

(assert (=> bs!1196046 (not (= lambda!253971 lambda!253910))))

(declare-fun bs!1196047 () Bool)

(assert (= bs!1196047 (and b!5130944 d!1659881)))

(assert (=> bs!1196047 (not (= lambda!253971 lambda!253969))))

(declare-fun bs!1196049 () Bool)

(assert (= bs!1196049 (and b!5130944 b!5130845)))

(assert (=> bs!1196049 (not (= lambda!253971 lambda!253908))))

(declare-fun bs!1196050 () Bool)

(assert (= bs!1196050 (and b!5130944 b!5130842)))

(assert (=> bs!1196050 (= lambda!253971 lambda!253909)))

(declare-fun bs!1196052 () Bool)

(assert (= bs!1196052 (and b!5130944 d!1659869)))

(assert (=> bs!1196052 (not (= lambda!253971 lambda!253949))))

(declare-fun bs!1196055 () Bool)

(assert (= bs!1196055 (and b!5130944 b!5130943)))

(assert (=> bs!1196055 (= lambda!253971 lambda!253970)))

(declare-fun lt!2116787 () Bool)

(declare-datatypes ((List!59610 0))(
  ( (Nil!59486) (Cons!59486 (h!65934 C!28944) (t!372637 List!59610)) )
))
(declare-datatypes ((Option!14729 0))(
  ( (None!14728) (Some!14728 (v!50755 List!59610)) )
))
(declare-fun isEmpty!31990 (Option!14729) Bool)

(declare-fun getLanguageWitness!862 ((InoxSet Context!7446)) Option!14729)

(assert (=> d!1659881 (= lt!2116787 (isEmpty!31990 (getLanguageWitness!862 lt!2116676)))))

(assert (=> d!1659881 (= lt!2116787 (forall!13758 lt!2116676 lambda!253969))))

(declare-fun lt!2116791 () Unit!150733)

(declare-fun e!3200101 () Unit!150733)

(assert (=> d!1659881 (= lt!2116791 e!3200101)))

(declare-fun c!882640 () Bool)

(assert (=> d!1659881 (= c!882640 (not (forall!13758 lt!2116676 lambda!253969)))))

(assert (=> d!1659881 (= (lostCauseZipper!1183 lt!2116676) lt!2116787)))

(declare-fun Unit!150744 () Unit!150733)

(assert (=> b!5130943 (= e!3200101 Unit!150744)))

(declare-fun lt!2116792 () List!59608)

(declare-fun call!357079 () List!59608)

(assert (=> b!5130943 (= lt!2116792 call!357079)))

(declare-fun lt!2116790 () Unit!150733)

(assert (=> b!5130943 (= lt!2116790 (lemmaNotForallThenExists!377 lt!2116792 lambda!253969))))

(declare-fun call!357080 () Bool)

(assert (=> b!5130943 call!357080))

(declare-fun lt!2116793 () Unit!150733)

(assert (=> b!5130943 (= lt!2116793 lt!2116790)))

(declare-fun Unit!150745 () Unit!150733)

(assert (=> b!5130944 (= e!3200101 Unit!150745)))

(declare-fun lt!2116789 () List!59608)

(assert (=> b!5130944 (= lt!2116789 call!357079)))

(declare-fun lt!2116786 () Unit!150733)

(declare-fun lemmaForallThenNotExists!352 (List!59608 Int) Unit!150733)

(assert (=> b!5130944 (= lt!2116786 (lemmaForallThenNotExists!352 lt!2116789 lambda!253969))))

(assert (=> b!5130944 (not call!357080)))

(declare-fun lt!2116788 () Unit!150733)

(assert (=> b!5130944 (= lt!2116788 lt!2116786)))

(declare-fun bm!357075 () Bool)

(assert (=> bm!357075 (= call!357080 (exists!1644 (ite c!882640 lt!2116792 lt!2116789) (ite c!882640 lambda!253970 lambda!253971)))))

(declare-fun bm!357074 () Bool)

(assert (=> bm!357074 (= call!357079 (toList!8329 lt!2116676))))

(assert (= (and d!1659881 c!882640) b!5130943))

(assert (= (and d!1659881 (not c!882640)) b!5130944))

(assert (= (or b!5130943 b!5130944) bm!357074))

(assert (= (or b!5130943 b!5130944) bm!357075))

(declare-fun m!6195892 () Bool)

(assert (=> b!5130944 m!6195892))

(declare-fun m!6195894 () Bool)

(assert (=> d!1659881 m!6195894))

(assert (=> d!1659881 m!6195894))

(declare-fun m!6195896 () Bool)

(assert (=> d!1659881 m!6195896))

(declare-fun m!6195898 () Bool)

(assert (=> d!1659881 m!6195898))

(assert (=> d!1659881 m!6195898))

(declare-fun m!6195900 () Bool)

(assert (=> bm!357075 m!6195900))

(assert (=> bm!357074 m!6195698))

(declare-fun m!6195902 () Bool)

(assert (=> b!5130943 m!6195902))

(assert (=> b!5130847 d!1659881))

(declare-fun bs!1196057 () Bool)

(declare-fun d!1659911 () Bool)

(assert (= bs!1196057 (and d!1659911 b!5130857)))

(declare-fun lambda!253972 () Int)

(assert (=> bs!1196057 (not (= lambda!253972 lambda!253910))))

(declare-fun bs!1196058 () Bool)

(assert (= bs!1196058 (and d!1659911 b!5130944)))

(assert (=> bs!1196058 (not (= lambda!253972 lambda!253971))))

(declare-fun bs!1196059 () Bool)

(assert (= bs!1196059 (and d!1659911 d!1659881)))

(assert (=> bs!1196059 (= lambda!253972 lambda!253969)))

(declare-fun bs!1196060 () Bool)

(assert (= bs!1196060 (and d!1659911 b!5130845)))

(assert (=> bs!1196060 (= lambda!253972 lambda!253908)))

(declare-fun bs!1196061 () Bool)

(assert (= bs!1196061 (and d!1659911 b!5130842)))

(assert (=> bs!1196061 (not (= lambda!253972 lambda!253909))))

(declare-fun bs!1196062 () Bool)

(assert (= bs!1196062 (and d!1659911 d!1659869)))

(assert (=> bs!1196062 (not (= lambda!253972 lambda!253949))))

(declare-fun bs!1196063 () Bool)

(assert (= bs!1196063 (and d!1659911 b!5130943)))

(assert (=> bs!1196063 (not (= lambda!253972 lambda!253970))))

(declare-fun bs!1196064 () Bool)

(declare-fun b!5130956 () Bool)

(assert (= bs!1196064 (and b!5130956 d!1659911)))

(declare-fun lambda!253973 () Int)

(assert (=> bs!1196064 (not (= lambda!253973 lambda!253972))))

(declare-fun bs!1196065 () Bool)

(assert (= bs!1196065 (and b!5130956 b!5130857)))

(assert (=> bs!1196065 (not (= lambda!253973 lambda!253910))))

(declare-fun bs!1196066 () Bool)

(assert (= bs!1196066 (and b!5130956 b!5130944)))

(assert (=> bs!1196066 (= lambda!253973 lambda!253971)))

(declare-fun bs!1196067 () Bool)

(assert (= bs!1196067 (and b!5130956 d!1659881)))

(assert (=> bs!1196067 (not (= lambda!253973 lambda!253969))))

(declare-fun bs!1196068 () Bool)

(assert (= bs!1196068 (and b!5130956 b!5130845)))

(assert (=> bs!1196068 (not (= lambda!253973 lambda!253908))))

(declare-fun bs!1196069 () Bool)

(assert (= bs!1196069 (and b!5130956 b!5130842)))

(assert (=> bs!1196069 (= lambda!253973 lambda!253909)))

(declare-fun bs!1196070 () Bool)

(assert (= bs!1196070 (and b!5130956 d!1659869)))

(assert (=> bs!1196070 (not (= lambda!253973 lambda!253949))))

(declare-fun bs!1196071 () Bool)

(assert (= bs!1196071 (and b!5130956 b!5130943)))

(assert (=> bs!1196071 (= lambda!253973 lambda!253970)))

(declare-fun bs!1196072 () Bool)

(declare-fun b!5130957 () Bool)

(assert (= bs!1196072 (and b!5130957 d!1659911)))

(declare-fun lambda!253974 () Int)

(assert (=> bs!1196072 (not (= lambda!253974 lambda!253972))))

(declare-fun bs!1196073 () Bool)

(assert (= bs!1196073 (and b!5130957 b!5130857)))

(assert (=> bs!1196073 (not (= lambda!253974 lambda!253910))))

(declare-fun bs!1196074 () Bool)

(assert (= bs!1196074 (and b!5130957 b!5130944)))

(assert (=> bs!1196074 (= lambda!253974 lambda!253971)))

(declare-fun bs!1196075 () Bool)

(assert (= bs!1196075 (and b!5130957 b!5130845)))

(assert (=> bs!1196075 (not (= lambda!253974 lambda!253908))))

(declare-fun bs!1196076 () Bool)

(assert (= bs!1196076 (and b!5130957 b!5130842)))

(assert (=> bs!1196076 (= lambda!253974 lambda!253909)))

(declare-fun bs!1196077 () Bool)

(assert (= bs!1196077 (and b!5130957 d!1659869)))

(assert (=> bs!1196077 (not (= lambda!253974 lambda!253949))))

(declare-fun bs!1196078 () Bool)

(assert (= bs!1196078 (and b!5130957 b!5130943)))

(assert (=> bs!1196078 (= lambda!253974 lambda!253970)))

(declare-fun bs!1196079 () Bool)

(assert (= bs!1196079 (and b!5130957 b!5130956)))

(assert (=> bs!1196079 (= lambda!253974 lambda!253973)))

(declare-fun bs!1196080 () Bool)

(assert (= bs!1196080 (and b!5130957 d!1659881)))

(assert (=> bs!1196080 (not (= lambda!253974 lambda!253969))))

(declare-fun lt!2116797 () Bool)

(assert (=> d!1659911 (= lt!2116797 (isEmpty!31990 (getLanguageWitness!862 (derivationStepZipperUp!64 lt!2116671 a!1233))))))

(assert (=> d!1659911 (= lt!2116797 (forall!13758 (derivationStepZipperUp!64 lt!2116671 a!1233) lambda!253972))))

(declare-fun lt!2116801 () Unit!150733)

(declare-fun e!3200109 () Unit!150733)

(assert (=> d!1659911 (= lt!2116801 e!3200109)))

(declare-fun c!882641 () Bool)

(assert (=> d!1659911 (= c!882641 (not (forall!13758 (derivationStepZipperUp!64 lt!2116671 a!1233) lambda!253972)))))

(assert (=> d!1659911 (= (lostCauseZipper!1183 (derivationStepZipperUp!64 lt!2116671 a!1233)) lt!2116797)))

(declare-fun Unit!150746 () Unit!150733)

(assert (=> b!5130956 (= e!3200109 Unit!150746)))

(declare-fun lt!2116802 () List!59608)

(declare-fun call!357081 () List!59608)

(assert (=> b!5130956 (= lt!2116802 call!357081)))

(declare-fun lt!2116800 () Unit!150733)

(assert (=> b!5130956 (= lt!2116800 (lemmaNotForallThenExists!377 lt!2116802 lambda!253972))))

(declare-fun call!357082 () Bool)

(assert (=> b!5130956 call!357082))

(declare-fun lt!2116803 () Unit!150733)

(assert (=> b!5130956 (= lt!2116803 lt!2116800)))

(declare-fun Unit!150747 () Unit!150733)

(assert (=> b!5130957 (= e!3200109 Unit!150747)))

(declare-fun lt!2116799 () List!59608)

(assert (=> b!5130957 (= lt!2116799 call!357081)))

(declare-fun lt!2116796 () Unit!150733)

(assert (=> b!5130957 (= lt!2116796 (lemmaForallThenNotExists!352 lt!2116799 lambda!253972))))

(assert (=> b!5130957 (not call!357082)))

(declare-fun lt!2116798 () Unit!150733)

(assert (=> b!5130957 (= lt!2116798 lt!2116796)))

(declare-fun bm!357077 () Bool)

(assert (=> bm!357077 (= call!357082 (exists!1644 (ite c!882641 lt!2116802 lt!2116799) (ite c!882641 lambda!253973 lambda!253974)))))

(declare-fun bm!357076 () Bool)

(assert (=> bm!357076 (= call!357081 (toList!8329 (derivationStepZipperUp!64 lt!2116671 a!1233)))))

(assert (= (and d!1659911 c!882641) b!5130956))

(assert (= (and d!1659911 (not c!882641)) b!5130957))

(assert (= (or b!5130956 b!5130957) bm!357076))

(assert (= (or b!5130956 b!5130957) bm!357077))

(declare-fun m!6195904 () Bool)

(assert (=> b!5130957 m!6195904))

(assert (=> d!1659911 m!6195672))

(declare-fun m!6195906 () Bool)

(assert (=> d!1659911 m!6195906))

(assert (=> d!1659911 m!6195906))

(declare-fun m!6195908 () Bool)

(assert (=> d!1659911 m!6195908))

(assert (=> d!1659911 m!6195672))

(declare-fun m!6195910 () Bool)

(assert (=> d!1659911 m!6195910))

(assert (=> d!1659911 m!6195672))

(assert (=> d!1659911 m!6195910))

(declare-fun m!6195912 () Bool)

(assert (=> bm!357077 m!6195912))

(assert (=> bm!357076 m!6195672))

(declare-fun m!6195914 () Bool)

(assert (=> bm!357076 m!6195914))

(declare-fun m!6195916 () Bool)

(assert (=> b!5130956 m!6195916))

(assert (=> b!5130847 d!1659911))

(declare-fun d!1659913 () Bool)

(declare-fun c!882646 () Bool)

(declare-fun e!3200118 () Bool)

(assert (=> d!1659913 (= c!882646 e!3200118)))

(declare-fun res!2185251 () Bool)

(assert (=> d!1659913 (=> (not res!2185251) (not e!3200118))))

(get-info :version)

(assert (=> d!1659913 (= res!2185251 ((_ is Cons!59483) (exprs!4223 lt!2116671)))))

(declare-fun e!3200116 () (InoxSet Context!7446))

(assert (=> d!1659913 (= (derivationStepZipperUp!64 lt!2116671 a!1233) e!3200116)))

(declare-fun bm!357080 () Bool)

(declare-fun call!357085 () (InoxSet Context!7446))

(declare-fun derivationStepZipperDown!95 (Regex!14339 Context!7446 C!28944) (InoxSet Context!7446))

(assert (=> bm!357080 (= call!357085 (derivationStepZipperDown!95 (h!65931 (exprs!4223 lt!2116671)) (Context!7447 (t!372634 (exprs!4223 lt!2116671))) a!1233))))

(declare-fun b!5130968 () Bool)

(declare-fun e!3200117 () (InoxSet Context!7446))

(assert (=> b!5130968 (= e!3200117 ((as const (Array Context!7446 Bool)) false))))

(declare-fun b!5130969 () Bool)

(assert (=> b!5130969 (= e!3200116 ((_ map or) call!357085 (derivationStepZipperUp!64 (Context!7447 (t!372634 (exprs!4223 lt!2116671))) a!1233)))))

(declare-fun b!5130970 () Bool)

(assert (=> b!5130970 (= e!3200117 call!357085)))

(declare-fun b!5130971 () Bool)

(declare-fun nullable!4746 (Regex!14339) Bool)

(assert (=> b!5130971 (= e!3200118 (nullable!4746 (h!65931 (exprs!4223 lt!2116671))))))

(declare-fun b!5130972 () Bool)

(assert (=> b!5130972 (= e!3200116 e!3200117)))

(declare-fun c!882647 () Bool)

(assert (=> b!5130972 (= c!882647 ((_ is Cons!59483) (exprs!4223 lt!2116671)))))

(assert (= (and d!1659913 res!2185251) b!5130971))

(assert (= (and d!1659913 c!882646) b!5130969))

(assert (= (and d!1659913 (not c!882646)) b!5130972))

(assert (= (and b!5130972 c!882647) b!5130970))

(assert (= (and b!5130972 (not c!882647)) b!5130968))

(assert (= (or b!5130969 b!5130970) bm!357080))

(declare-fun m!6195918 () Bool)

(assert (=> bm!357080 m!6195918))

(declare-fun m!6195920 () Bool)

(assert (=> b!5130969 m!6195920))

(declare-fun m!6195922 () Bool)

(assert (=> b!5130971 m!6195922))

(assert (=> b!5130847 d!1659913))

(declare-fun d!1659915 () Bool)

(assert (=> d!1659915 (lostCauseZipper!1183 (derivationStepZipperUp!64 lt!2116671 a!1233))))

(declare-fun lt!2116806 () Unit!150733)

(declare-fun choose!37864 (Context!7446 C!28944) Unit!150733)

(assert (=> d!1659915 (= lt!2116806 (choose!37864 lt!2116671 a!1233))))

(assert (=> d!1659915 (lostCause!1292 lt!2116671)))

(assert (=> d!1659915 (= (lemmaLostCauseFixPointDerivUp!2 lt!2116671 a!1233) lt!2116806)))

(declare-fun bs!1196081 () Bool)

(assert (= bs!1196081 d!1659915))

(assert (=> bs!1196081 m!6195672))

(assert (=> bs!1196081 m!6195672))

(assert (=> bs!1196081 m!6195674))

(declare-fun m!6195924 () Bool)

(assert (=> bs!1196081 m!6195924))

(assert (=> bs!1196081 m!6195710))

(assert (=> b!5130847 d!1659915))

(declare-fun d!1659917 () Bool)

(declare-fun e!3200129 () Bool)

(assert (=> d!1659917 e!3200129))

(declare-fun res!2185256 () Bool)

(assert (=> d!1659917 (=> (not res!2185256) (not e!3200129))))

(declare-fun lt!2116811 () Context!7446)

(declare-fun dynLambda!23683 (Int Context!7446) Bool)

(assert (=> d!1659917 (= res!2185256 (dynLambda!23683 lambda!253909 lt!2116811))))

(declare-fun e!3200130 () Context!7446)

(assert (=> d!1659917 (= lt!2116811 e!3200130)))

(declare-fun c!882652 () Bool)

(declare-fun e!3200127 () Bool)

(assert (=> d!1659917 (= c!882652 e!3200127)))

(declare-fun res!2185257 () Bool)

(assert (=> d!1659917 (=> (not res!2185257) (not e!3200127))))

(assert (=> d!1659917 (= res!2185257 ((_ is Cons!59484) lt!2116678))))

(assert (=> d!1659917 (exists!1644 lt!2116678 lambda!253909)))

(assert (=> d!1659917 (= (getWitness!794 lt!2116678 lambda!253909) lt!2116811)))

(declare-fun b!5130985 () Bool)

(declare-fun e!3200128 () Context!7446)

(assert (=> b!5130985 (= e!3200130 e!3200128)))

(declare-fun c!882653 () Bool)

(assert (=> b!5130985 (= c!882653 ((_ is Cons!59484) lt!2116678))))

(declare-fun b!5130986 () Bool)

(assert (=> b!5130986 (= e!3200130 (h!65932 lt!2116678))))

(declare-fun b!5130987 () Bool)

(assert (=> b!5130987 (= e!3200128 (getWitness!794 (t!372635 lt!2116678) lambda!253909))))

(declare-fun b!5130988 () Bool)

(assert (=> b!5130988 (= e!3200127 (dynLambda!23683 lambda!253909 (h!65932 lt!2116678)))))

(declare-fun b!5130989 () Bool)

(assert (=> b!5130989 (= e!3200129 (contains!19636 lt!2116678 lt!2116811))))

(declare-fun b!5130990 () Bool)

(declare-fun lt!2116812 () Unit!150733)

(declare-fun Unit!150748 () Unit!150733)

(assert (=> b!5130990 (= lt!2116812 Unit!150748)))

(assert (=> b!5130990 false))

(declare-fun head!10983 (List!59608) Context!7446)

(assert (=> b!5130990 (= e!3200128 (head!10983 lt!2116678))))

(assert (= (and d!1659917 res!2185257) b!5130988))

(assert (= (and d!1659917 c!882652) b!5130986))

(assert (= (and d!1659917 (not c!882652)) b!5130985))

(assert (= (and b!5130985 c!882653) b!5130987))

(assert (= (and b!5130985 (not c!882653)) b!5130990))

(assert (= (and d!1659917 res!2185256) b!5130989))

(declare-fun b_lambda!199657 () Bool)

(assert (=> (not b_lambda!199657) (not d!1659917)))

(declare-fun b_lambda!199659 () Bool)

(assert (=> (not b_lambda!199659) (not b!5130988)))

(declare-fun m!6195926 () Bool)

(assert (=> b!5130988 m!6195926))

(declare-fun m!6195928 () Bool)

(assert (=> b!5130987 m!6195928))

(declare-fun m!6195930 () Bool)

(assert (=> b!5130990 m!6195930))

(declare-fun m!6195932 () Bool)

(assert (=> b!5130989 m!6195932))

(declare-fun m!6195934 () Bool)

(assert (=> d!1659917 m!6195934))

(assert (=> d!1659917 m!6195684))

(assert (=> b!5130849 d!1659917))

(declare-fun bs!1196082 () Bool)

(declare-fun d!1659919 () Bool)

(assert (= bs!1196082 (and d!1659919 d!1659911)))

(declare-fun lambda!253975 () Int)

(assert (=> bs!1196082 (= lambda!253975 lambda!253972)))

(declare-fun bs!1196083 () Bool)

(assert (= bs!1196083 (and d!1659919 b!5130857)))

(assert (=> bs!1196083 (not (= lambda!253975 lambda!253910))))

(declare-fun bs!1196084 () Bool)

(assert (= bs!1196084 (and d!1659919 b!5130957)))

(assert (=> bs!1196084 (not (= lambda!253975 lambda!253974))))

(declare-fun bs!1196085 () Bool)

(assert (= bs!1196085 (and d!1659919 b!5130944)))

(assert (=> bs!1196085 (not (= lambda!253975 lambda!253971))))

(declare-fun bs!1196086 () Bool)

(assert (= bs!1196086 (and d!1659919 b!5130845)))

(assert (=> bs!1196086 (= lambda!253975 lambda!253908)))

(declare-fun bs!1196087 () Bool)

(assert (= bs!1196087 (and d!1659919 b!5130842)))

(assert (=> bs!1196087 (not (= lambda!253975 lambda!253909))))

(declare-fun bs!1196088 () Bool)

(assert (= bs!1196088 (and d!1659919 d!1659869)))

(assert (=> bs!1196088 (not (= lambda!253975 lambda!253949))))

(declare-fun bs!1196089 () Bool)

(assert (= bs!1196089 (and d!1659919 b!5130943)))

(assert (=> bs!1196089 (not (= lambda!253975 lambda!253970))))

(declare-fun bs!1196090 () Bool)

(assert (= bs!1196090 (and d!1659919 b!5130956)))

(assert (=> bs!1196090 (not (= lambda!253975 lambda!253973))))

(declare-fun bs!1196091 () Bool)

(assert (= bs!1196091 (and d!1659919 d!1659881)))

(assert (=> bs!1196091 (= lambda!253975 lambda!253969)))

(declare-fun bs!1196092 () Bool)

(declare-fun b!5130991 () Bool)

(assert (= bs!1196092 (and b!5130991 d!1659911)))

(declare-fun lambda!253976 () Int)

(assert (=> bs!1196092 (not (= lambda!253976 lambda!253972))))

(declare-fun bs!1196093 () Bool)

(assert (= bs!1196093 (and b!5130991 b!5130857)))

(assert (=> bs!1196093 (not (= lambda!253976 lambda!253910))))

(declare-fun bs!1196094 () Bool)

(assert (= bs!1196094 (and b!5130991 b!5130957)))

(assert (=> bs!1196094 (= lambda!253976 lambda!253974)))

(declare-fun bs!1196095 () Bool)

(assert (= bs!1196095 (and b!5130991 b!5130944)))

(assert (=> bs!1196095 (= lambda!253976 lambda!253971)))

(declare-fun bs!1196096 () Bool)

(assert (= bs!1196096 (and b!5130991 b!5130845)))

(assert (=> bs!1196096 (not (= lambda!253976 lambda!253908))))

(declare-fun bs!1196097 () Bool)

(assert (= bs!1196097 (and b!5130991 d!1659869)))

(assert (=> bs!1196097 (not (= lambda!253976 lambda!253949))))

(declare-fun bs!1196098 () Bool)

(assert (= bs!1196098 (and b!5130991 b!5130943)))

(assert (=> bs!1196098 (= lambda!253976 lambda!253970)))

(declare-fun bs!1196099 () Bool)

(assert (= bs!1196099 (and b!5130991 b!5130956)))

(assert (=> bs!1196099 (= lambda!253976 lambda!253973)))

(declare-fun bs!1196100 () Bool)

(assert (= bs!1196100 (and b!5130991 d!1659881)))

(assert (=> bs!1196100 (not (= lambda!253976 lambda!253969))))

(declare-fun bs!1196101 () Bool)

(assert (= bs!1196101 (and b!5130991 b!5130842)))

(assert (=> bs!1196101 (= lambda!253976 lambda!253909)))

(declare-fun bs!1196102 () Bool)

(assert (= bs!1196102 (and b!5130991 d!1659919)))

(assert (=> bs!1196102 (not (= lambda!253976 lambda!253975))))

(declare-fun bs!1196103 () Bool)

(declare-fun b!5130992 () Bool)

(assert (= bs!1196103 (and b!5130992 d!1659911)))

(declare-fun lambda!253977 () Int)

(assert (=> bs!1196103 (not (= lambda!253977 lambda!253972))))

(declare-fun bs!1196104 () Bool)

(assert (= bs!1196104 (and b!5130992 b!5130957)))

(assert (=> bs!1196104 (= lambda!253977 lambda!253974)))

(declare-fun bs!1196105 () Bool)

(assert (= bs!1196105 (and b!5130992 b!5130944)))

(assert (=> bs!1196105 (= lambda!253977 lambda!253971)))

(declare-fun bs!1196106 () Bool)

(assert (= bs!1196106 (and b!5130992 b!5130845)))

(assert (=> bs!1196106 (not (= lambda!253977 lambda!253908))))

(declare-fun bs!1196107 () Bool)

(assert (= bs!1196107 (and b!5130992 d!1659869)))

(assert (=> bs!1196107 (not (= lambda!253977 lambda!253949))))

(declare-fun bs!1196108 () Bool)

(assert (= bs!1196108 (and b!5130992 b!5130943)))

(assert (=> bs!1196108 (= lambda!253977 lambda!253970)))

(declare-fun bs!1196109 () Bool)

(assert (= bs!1196109 (and b!5130992 b!5130991)))

(assert (=> bs!1196109 (= lambda!253977 lambda!253976)))

(declare-fun bs!1196110 () Bool)

(assert (= bs!1196110 (and b!5130992 b!5130857)))

(assert (=> bs!1196110 (not (= lambda!253977 lambda!253910))))

(declare-fun bs!1196111 () Bool)

(assert (= bs!1196111 (and b!5130992 b!5130956)))

(assert (=> bs!1196111 (= lambda!253977 lambda!253973)))

(declare-fun bs!1196112 () Bool)

(assert (= bs!1196112 (and b!5130992 d!1659881)))

(assert (=> bs!1196112 (not (= lambda!253977 lambda!253969))))

(declare-fun bs!1196113 () Bool)

(assert (= bs!1196113 (and b!5130992 b!5130842)))

(assert (=> bs!1196113 (= lambda!253977 lambda!253909)))

(declare-fun bs!1196114 () Bool)

(assert (= bs!1196114 (and b!5130992 d!1659919)))

(assert (=> bs!1196114 (not (= lambda!253977 lambda!253975))))

(declare-fun lt!2116814 () Bool)

(assert (=> d!1659919 (= lt!2116814 (isEmpty!31990 (getLanguageWitness!862 z!1054)))))

(assert (=> d!1659919 (= lt!2116814 (forall!13758 z!1054 lambda!253975))))

(declare-fun lt!2116818 () Unit!150733)

(declare-fun e!3200131 () Unit!150733)

(assert (=> d!1659919 (= lt!2116818 e!3200131)))

(declare-fun c!882654 () Bool)

(assert (=> d!1659919 (= c!882654 (not (forall!13758 z!1054 lambda!253975)))))

(assert (=> d!1659919 (= (lostCauseZipper!1183 z!1054) lt!2116814)))

(declare-fun Unit!150749 () Unit!150733)

(assert (=> b!5130991 (= e!3200131 Unit!150749)))

(declare-fun lt!2116819 () List!59608)

(declare-fun call!357086 () List!59608)

(assert (=> b!5130991 (= lt!2116819 call!357086)))

(declare-fun lt!2116817 () Unit!150733)

(assert (=> b!5130991 (= lt!2116817 (lemmaNotForallThenExists!377 lt!2116819 lambda!253975))))

(declare-fun call!357087 () Bool)

(assert (=> b!5130991 call!357087))

(declare-fun lt!2116820 () Unit!150733)

(assert (=> b!5130991 (= lt!2116820 lt!2116817)))

(declare-fun Unit!150750 () Unit!150733)

(assert (=> b!5130992 (= e!3200131 Unit!150750)))

(declare-fun lt!2116816 () List!59608)

(assert (=> b!5130992 (= lt!2116816 call!357086)))

(declare-fun lt!2116813 () Unit!150733)

(assert (=> b!5130992 (= lt!2116813 (lemmaForallThenNotExists!352 lt!2116816 lambda!253975))))

(assert (=> b!5130992 (not call!357087)))

(declare-fun lt!2116815 () Unit!150733)

(assert (=> b!5130992 (= lt!2116815 lt!2116813)))

(declare-fun bm!357082 () Bool)

(assert (=> bm!357082 (= call!357087 (exists!1644 (ite c!882654 lt!2116819 lt!2116816) (ite c!882654 lambda!253976 lambda!253977)))))

(declare-fun bm!357081 () Bool)

(assert (=> bm!357081 (= call!357086 (toList!8329 z!1054))))

(assert (= (and d!1659919 c!882654) b!5130991))

(assert (= (and d!1659919 (not c!882654)) b!5130992))

(assert (= (or b!5130991 b!5130992) bm!357081))

(assert (= (or b!5130991 b!5130992) bm!357082))

(declare-fun m!6195936 () Bool)

(assert (=> b!5130992 m!6195936))

(declare-fun m!6195938 () Bool)

(assert (=> d!1659919 m!6195938))

(assert (=> d!1659919 m!6195938))

(declare-fun m!6195940 () Bool)

(assert (=> d!1659919 m!6195940))

(declare-fun m!6195942 () Bool)

(assert (=> d!1659919 m!6195942))

(assert (=> d!1659919 m!6195942))

(declare-fun m!6195944 () Bool)

(assert (=> bm!357082 m!6195944))

(assert (=> bm!357081 m!6195712))

(declare-fun m!6195946 () Bool)

(assert (=> b!5130991 m!6195946))

(assert (=> start!542400 d!1659919))

(assert (=> b!5130850 d!1659913))

(declare-fun d!1659921 () Bool)

(declare-fun lt!2116821 () Bool)

(assert (=> d!1659921 (= lt!2116821 (exists!1644 (toList!8329 lt!2116675) lambda!253909))))

(assert (=> d!1659921 (= lt!2116821 (choose!37860 lt!2116675 lambda!253909))))

(assert (=> d!1659921 (= (exists!1643 lt!2116675 lambda!253909) lt!2116821)))

(declare-fun bs!1196115 () Bool)

(assert (= bs!1196115 d!1659921))

(assert (=> bs!1196115 m!6195688))

(assert (=> bs!1196115 m!6195688))

(declare-fun m!6195948 () Bool)

(assert (=> bs!1196115 m!6195948))

(declare-fun m!6195950 () Bool)

(assert (=> bs!1196115 m!6195950))

(assert (=> b!5130842 d!1659921))

(declare-fun bs!1196116 () Bool)

(declare-fun d!1659923 () Bool)

(assert (= bs!1196116 (and d!1659923 d!1659911)))

(declare-fun lambda!253980 () Int)

(assert (=> bs!1196116 (not (= lambda!253980 lambda!253972))))

(declare-fun bs!1196117 () Bool)

(assert (= bs!1196117 (and d!1659923 b!5130957)))

(assert (=> bs!1196117 (not (= lambda!253980 lambda!253974))))

(declare-fun bs!1196118 () Bool)

(assert (= bs!1196118 (and d!1659923 b!5130944)))

(assert (=> bs!1196118 (not (= lambda!253980 lambda!253971))))

(declare-fun bs!1196119 () Bool)

(assert (= bs!1196119 (and d!1659923 b!5130845)))

(assert (=> bs!1196119 (not (= lambda!253980 lambda!253908))))

(declare-fun bs!1196120 () Bool)

(assert (= bs!1196120 (and d!1659923 b!5130992)))

(assert (=> bs!1196120 (not (= lambda!253980 lambda!253977))))

(declare-fun bs!1196121 () Bool)

(assert (= bs!1196121 (and d!1659923 d!1659869)))

(assert (=> bs!1196121 (not (= lambda!253980 lambda!253949))))

(declare-fun bs!1196122 () Bool)

(assert (= bs!1196122 (and d!1659923 b!5130943)))

(assert (=> bs!1196122 (not (= lambda!253980 lambda!253970))))

(declare-fun bs!1196123 () Bool)

(assert (= bs!1196123 (and d!1659923 b!5130991)))

(assert (=> bs!1196123 (not (= lambda!253980 lambda!253976))))

(declare-fun bs!1196124 () Bool)

(assert (= bs!1196124 (and d!1659923 b!5130857)))

(assert (=> bs!1196124 (not (= lambda!253980 lambda!253910))))

(declare-fun bs!1196125 () Bool)

(assert (= bs!1196125 (and d!1659923 b!5130956)))

(assert (=> bs!1196125 (not (= lambda!253980 lambda!253973))))

(declare-fun bs!1196126 () Bool)

(assert (= bs!1196126 (and d!1659923 d!1659881)))

(assert (=> bs!1196126 (not (= lambda!253980 lambda!253969))))

(declare-fun bs!1196127 () Bool)

(assert (= bs!1196127 (and d!1659923 b!5130842)))

(assert (=> bs!1196127 (not (= lambda!253980 lambda!253909))))

(declare-fun bs!1196128 () Bool)

(assert (= bs!1196128 (and d!1659923 d!1659919)))

(assert (=> bs!1196128 (not (= lambda!253980 lambda!253975))))

(assert (=> d!1659923 true))

(assert (=> d!1659923 (< (dynLambda!23682 order!26849 lambda!253909) (dynLambda!23682 order!26849 lambda!253980))))

(assert (=> d!1659923 (= (exists!1644 lt!2116678 lambda!253909) (not (forall!13759 lt!2116678 lambda!253980)))))

(declare-fun bs!1196129 () Bool)

(assert (= bs!1196129 d!1659923))

(declare-fun m!6195952 () Bool)

(assert (=> bs!1196129 m!6195952))

(assert (=> b!5130842 d!1659923))

(declare-fun bs!1196130 () Bool)

(declare-fun d!1659925 () Bool)

(assert (= bs!1196130 (and d!1659925 d!1659911)))

(declare-fun lambda!253983 () Int)

(assert (=> bs!1196130 (not (= lambda!253983 lambda!253972))))

(declare-fun bs!1196131 () Bool)

(assert (= bs!1196131 (and d!1659925 b!5130957)))

(assert (=> bs!1196131 (not (= lambda!253983 lambda!253974))))

(declare-fun bs!1196132 () Bool)

(assert (= bs!1196132 (and d!1659925 b!5130944)))

(assert (=> bs!1196132 (not (= lambda!253983 lambda!253971))))

(declare-fun bs!1196133 () Bool)

(assert (= bs!1196133 (and d!1659925 b!5130845)))

(assert (=> bs!1196133 (not (= lambda!253983 lambda!253908))))

(declare-fun bs!1196134 () Bool)

(assert (= bs!1196134 (and d!1659925 b!5130992)))

(assert (=> bs!1196134 (not (= lambda!253983 lambda!253977))))

(declare-fun bs!1196135 () Bool)

(assert (= bs!1196135 (and d!1659925 d!1659923)))

(assert (=> bs!1196135 (= (= lambda!253908 lambda!253909) (= lambda!253983 lambda!253980))))

(declare-fun bs!1196136 () Bool)

(assert (= bs!1196136 (and d!1659925 d!1659869)))

(assert (=> bs!1196136 (not (= lambda!253983 lambda!253949))))

(declare-fun bs!1196137 () Bool)

(assert (= bs!1196137 (and d!1659925 b!5130943)))

(assert (=> bs!1196137 (not (= lambda!253983 lambda!253970))))

(declare-fun bs!1196138 () Bool)

(assert (= bs!1196138 (and d!1659925 b!5130991)))

(assert (=> bs!1196138 (not (= lambda!253983 lambda!253976))))

(declare-fun bs!1196139 () Bool)

(assert (= bs!1196139 (and d!1659925 b!5130857)))

(assert (=> bs!1196139 (not (= lambda!253983 lambda!253910))))

(declare-fun bs!1196140 () Bool)

(assert (= bs!1196140 (and d!1659925 b!5130956)))

(assert (=> bs!1196140 (not (= lambda!253983 lambda!253973))))

(declare-fun bs!1196141 () Bool)

(assert (= bs!1196141 (and d!1659925 d!1659881)))

(assert (=> bs!1196141 (not (= lambda!253983 lambda!253969))))

(declare-fun bs!1196142 () Bool)

(assert (= bs!1196142 (and d!1659925 b!5130842)))

(assert (=> bs!1196142 (not (= lambda!253983 lambda!253909))))

(declare-fun bs!1196143 () Bool)

(assert (= bs!1196143 (and d!1659925 d!1659919)))

(assert (=> bs!1196143 (not (= lambda!253983 lambda!253975))))

(assert (=> d!1659925 true))

(assert (=> d!1659925 (< (dynLambda!23682 order!26849 lambda!253908) (dynLambda!23682 order!26849 lambda!253983))))

(assert (=> d!1659925 (exists!1644 lt!2116678 lambda!253983)))

(declare-fun lt!2116824 () Unit!150733)

(declare-fun choose!37865 (List!59608 Int) Unit!150733)

(assert (=> d!1659925 (= lt!2116824 (choose!37865 lt!2116678 lambda!253908))))

(assert (=> d!1659925 (not (forall!13759 lt!2116678 lambda!253908))))

(assert (=> d!1659925 (= (lemmaNotForallThenExists!377 lt!2116678 lambda!253908) lt!2116824)))

(declare-fun bs!1196144 () Bool)

(assert (= bs!1196144 d!1659925))

(declare-fun m!6195954 () Bool)

(assert (=> bs!1196144 m!6195954))

(declare-fun m!6195956 () Bool)

(assert (=> bs!1196144 m!6195956))

(declare-fun m!6195958 () Bool)

(assert (=> bs!1196144 m!6195958))

(assert (=> b!5130842 d!1659925))

(declare-fun d!1659927 () Bool)

(declare-fun e!3200136 () Bool)

(assert (=> d!1659927 e!3200136))

(declare-fun res!2185260 () Bool)

(assert (=> d!1659927 (=> (not res!2185260) (not e!3200136))))

(declare-fun lt!2116827 () List!59608)

(declare-fun noDuplicate!1092 (List!59608) Bool)

(assert (=> d!1659927 (= res!2185260 (noDuplicate!1092 lt!2116827))))

(declare-fun choose!37866 ((InoxSet Context!7446)) List!59608)

(assert (=> d!1659927 (= lt!2116827 (choose!37866 lt!2116675))))

(assert (=> d!1659927 (= (toList!8329 lt!2116675) lt!2116827)))

(declare-fun b!5130997 () Bool)

(declare-fun content!10569 (List!59608) (InoxSet Context!7446))

(assert (=> b!5130997 (= e!3200136 (= (content!10569 lt!2116827) lt!2116675))))

(assert (= (and d!1659927 res!2185260) b!5130997))

(declare-fun m!6195960 () Bool)

(assert (=> d!1659927 m!6195960))

(declare-fun m!6195962 () Bool)

(assert (=> d!1659927 m!6195962))

(declare-fun m!6195964 () Bool)

(assert (=> b!5130997 m!6195964))

(assert (=> b!5130842 d!1659927))

(declare-fun d!1659929 () Bool)

(declare-fun choose!37867 ((InoxSet Context!7446) Int) (InoxSet Context!7446))

(assert (=> d!1659929 (= (flatMap!390 z!1054 lambda!253907) (choose!37867 z!1054 lambda!253907))))

(declare-fun bs!1196145 () Bool)

(assert (= bs!1196145 d!1659929))

(declare-fun m!6195966 () Bool)

(assert (=> bs!1196145 m!6195966))

(assert (=> b!5130851 d!1659929))

(declare-fun bs!1196146 () Bool)

(declare-fun d!1659931 () Bool)

(assert (= bs!1196146 (and d!1659931 b!5130851)))

(declare-fun lambda!253986 () Int)

(assert (=> bs!1196146 (= lambda!253986 lambda!253907)))

(assert (=> d!1659931 true))

(assert (=> d!1659931 (= (derivationStepZipper!894 z!1054 a!1233) (flatMap!390 z!1054 lambda!253986))))

(declare-fun bs!1196147 () Bool)

(assert (= bs!1196147 d!1659931))

(declare-fun m!6195968 () Bool)

(assert (=> bs!1196147 m!6195968))

(assert (=> b!5130851 d!1659931))

(declare-fun d!1659933 () Bool)

(declare-fun lt!2116830 () Bool)

(assert (=> d!1659933 (= lt!2116830 (forall!13759 (toList!8329 lt!2116675) lambda!253908))))

(declare-fun choose!37868 ((InoxSet Context!7446) Int) Bool)

(assert (=> d!1659933 (= lt!2116830 (choose!37868 lt!2116675 lambda!253908))))

(assert (=> d!1659933 (= (forall!13758 lt!2116675 lambda!253908) lt!2116830)))

(declare-fun bs!1196148 () Bool)

(assert (= bs!1196148 d!1659933))

(assert (=> bs!1196148 m!6195688))

(assert (=> bs!1196148 m!6195688))

(declare-fun m!6195970 () Bool)

(assert (=> bs!1196148 m!6195970))

(declare-fun m!6195972 () Bool)

(assert (=> bs!1196148 m!6195972))

(assert (=> b!5130852 d!1659933))

(declare-fun d!1659935 () Bool)

(declare-fun lt!2116831 () Bool)

(assert (=> d!1659935 (= lt!2116831 (forall!13759 (toList!8329 z!1054) lambda!253908))))

(assert (=> d!1659935 (= lt!2116831 (choose!37868 z!1054 lambda!253908))))

(assert (=> d!1659935 (= (forall!13758 z!1054 lambda!253908) lt!2116831)))

(declare-fun bs!1196149 () Bool)

(assert (= bs!1196149 d!1659935))

(assert (=> bs!1196149 m!6195712))

(assert (=> bs!1196149 m!6195712))

(declare-fun m!6195974 () Bool)

(assert (=> bs!1196149 m!6195974))

(declare-fun m!6195976 () Bool)

(assert (=> bs!1196149 m!6195976))

(assert (=> b!5130853 d!1659935))

(declare-fun d!1659937 () Bool)

(declare-fun lambda!253989 () Int)

(declare-fun exists!1646 (List!59607 Int) Bool)

(assert (=> d!1659937 (= (lostCause!1292 lt!2116679) (exists!1646 (exprs!4223 lt!2116679) lambda!253989))))

(declare-fun bs!1196150 () Bool)

(assert (= bs!1196150 d!1659937))

(declare-fun m!6195978 () Bool)

(assert (=> bs!1196150 m!6195978))

(assert (=> b!5130844 d!1659937))

(declare-fun d!1659939 () Bool)

(declare-fun lt!2116834 () Bool)

(assert (=> d!1659939 (= lt!2116834 (select (content!10569 lt!2116670) lt!2116679))))

(declare-fun e!3200142 () Bool)

(assert (=> d!1659939 (= lt!2116834 e!3200142)))

(declare-fun res!2185265 () Bool)

(assert (=> d!1659939 (=> (not res!2185265) (not e!3200142))))

(assert (=> d!1659939 (= res!2185265 ((_ is Cons!59484) lt!2116670))))

(assert (=> d!1659939 (= (contains!19636 lt!2116670 lt!2116679) lt!2116834)))

(declare-fun b!5131002 () Bool)

(declare-fun e!3200141 () Bool)

(assert (=> b!5131002 (= e!3200142 e!3200141)))

(declare-fun res!2185266 () Bool)

(assert (=> b!5131002 (=> res!2185266 e!3200141)))

(assert (=> b!5131002 (= res!2185266 (= (h!65932 lt!2116670) lt!2116679))))

(declare-fun b!5131003 () Bool)

(assert (=> b!5131003 (= e!3200141 (contains!19636 (t!372635 lt!2116670) lt!2116679))))

(assert (= (and d!1659939 res!2185265) b!5131002))

(assert (= (and b!5131002 (not res!2185266)) b!5131003))

(declare-fun m!6195980 () Bool)

(assert (=> d!1659939 m!6195980))

(declare-fun m!6195982 () Bool)

(assert (=> d!1659939 m!6195982))

(declare-fun m!6195984 () Bool)

(assert (=> b!5131003 m!6195984))

(assert (=> b!5130846 d!1659939))

(assert (=> b!5130845 d!1659933))

(declare-fun bs!1196151 () Bool)

(declare-fun d!1659941 () Bool)

(assert (= bs!1196151 (and d!1659941 d!1659911)))

(declare-fun lambda!253990 () Int)

(assert (=> bs!1196151 (= lambda!253990 lambda!253972)))

(declare-fun bs!1196152 () Bool)

(assert (= bs!1196152 (and d!1659941 b!5130957)))

(assert (=> bs!1196152 (not (= lambda!253990 lambda!253974))))

(declare-fun bs!1196153 () Bool)

(assert (= bs!1196153 (and d!1659941 d!1659925)))

(assert (=> bs!1196153 (not (= lambda!253990 lambda!253983))))

(declare-fun bs!1196154 () Bool)

(assert (= bs!1196154 (and d!1659941 b!5130944)))

(assert (=> bs!1196154 (not (= lambda!253990 lambda!253971))))

(declare-fun bs!1196155 () Bool)

(assert (= bs!1196155 (and d!1659941 b!5130845)))

(assert (=> bs!1196155 (= lambda!253990 lambda!253908)))

(declare-fun bs!1196156 () Bool)

(assert (= bs!1196156 (and d!1659941 b!5130992)))

(assert (=> bs!1196156 (not (= lambda!253990 lambda!253977))))

(declare-fun bs!1196157 () Bool)

(assert (= bs!1196157 (and d!1659941 d!1659923)))

(assert (=> bs!1196157 (not (= lambda!253990 lambda!253980))))

(declare-fun bs!1196158 () Bool)

(assert (= bs!1196158 (and d!1659941 d!1659869)))

(assert (=> bs!1196158 (not (= lambda!253990 lambda!253949))))

(declare-fun bs!1196159 () Bool)

(assert (= bs!1196159 (and d!1659941 b!5130943)))

(assert (=> bs!1196159 (not (= lambda!253990 lambda!253970))))

(declare-fun bs!1196160 () Bool)

(assert (= bs!1196160 (and d!1659941 b!5130991)))

(assert (=> bs!1196160 (not (= lambda!253990 lambda!253976))))

(declare-fun bs!1196161 () Bool)

(assert (= bs!1196161 (and d!1659941 b!5130857)))

(assert (=> bs!1196161 (not (= lambda!253990 lambda!253910))))

(declare-fun bs!1196162 () Bool)

(assert (= bs!1196162 (and d!1659941 b!5130956)))

(assert (=> bs!1196162 (not (= lambda!253990 lambda!253973))))

(declare-fun bs!1196163 () Bool)

(assert (= bs!1196163 (and d!1659941 d!1659881)))

(assert (=> bs!1196163 (= lambda!253990 lambda!253969)))

(declare-fun bs!1196164 () Bool)

(assert (= bs!1196164 (and d!1659941 b!5130842)))

(assert (=> bs!1196164 (not (= lambda!253990 lambda!253909))))

(declare-fun bs!1196165 () Bool)

(assert (= bs!1196165 (and d!1659941 d!1659919)))

(assert (=> bs!1196165 (= lambda!253990 lambda!253975)))

(declare-fun bs!1196166 () Bool)

(declare-fun b!5131004 () Bool)

(assert (= bs!1196166 (and b!5131004 d!1659911)))

(declare-fun lambda!253991 () Int)

(assert (=> bs!1196166 (not (= lambda!253991 lambda!253972))))

(declare-fun bs!1196167 () Bool)

(assert (= bs!1196167 (and b!5131004 b!5130957)))

(assert (=> bs!1196167 (= lambda!253991 lambda!253974)))

(declare-fun bs!1196168 () Bool)

(assert (= bs!1196168 (and b!5131004 d!1659925)))

(assert (=> bs!1196168 (not (= lambda!253991 lambda!253983))))

(declare-fun bs!1196169 () Bool)

(assert (= bs!1196169 (and b!5131004 b!5130944)))

(assert (=> bs!1196169 (= lambda!253991 lambda!253971)))

(declare-fun bs!1196170 () Bool)

(assert (= bs!1196170 (and b!5131004 b!5130845)))

(assert (=> bs!1196170 (not (= lambda!253991 lambda!253908))))

(declare-fun bs!1196171 () Bool)

(assert (= bs!1196171 (and b!5131004 b!5130992)))

(assert (=> bs!1196171 (= lambda!253991 lambda!253977)))

(declare-fun bs!1196172 () Bool)

(assert (= bs!1196172 (and b!5131004 d!1659923)))

(assert (=> bs!1196172 (not (= lambda!253991 lambda!253980))))

(declare-fun bs!1196173 () Bool)

(assert (= bs!1196173 (and b!5131004 d!1659869)))

(assert (=> bs!1196173 (not (= lambda!253991 lambda!253949))))

(declare-fun bs!1196174 () Bool)

(assert (= bs!1196174 (and b!5131004 b!5130943)))

(assert (=> bs!1196174 (= lambda!253991 lambda!253970)))

(declare-fun bs!1196175 () Bool)

(assert (= bs!1196175 (and b!5131004 d!1659941)))

(assert (=> bs!1196175 (not (= lambda!253991 lambda!253990))))

(declare-fun bs!1196176 () Bool)

(assert (= bs!1196176 (and b!5131004 b!5130991)))

(assert (=> bs!1196176 (= lambda!253991 lambda!253976)))

(declare-fun bs!1196177 () Bool)

(assert (= bs!1196177 (and b!5131004 b!5130857)))

(assert (=> bs!1196177 (not (= lambda!253991 lambda!253910))))

(declare-fun bs!1196178 () Bool)

(assert (= bs!1196178 (and b!5131004 b!5130956)))

(assert (=> bs!1196178 (= lambda!253991 lambda!253973)))

(declare-fun bs!1196179 () Bool)

(assert (= bs!1196179 (and b!5131004 d!1659881)))

(assert (=> bs!1196179 (not (= lambda!253991 lambda!253969))))

(declare-fun bs!1196180 () Bool)

(assert (= bs!1196180 (and b!5131004 b!5130842)))

(assert (=> bs!1196180 (= lambda!253991 lambda!253909)))

(declare-fun bs!1196181 () Bool)

(assert (= bs!1196181 (and b!5131004 d!1659919)))

(assert (=> bs!1196181 (not (= lambda!253991 lambda!253975))))

(declare-fun bs!1196182 () Bool)

(declare-fun b!5131005 () Bool)

(assert (= bs!1196182 (and b!5131005 d!1659911)))

(declare-fun lambda!253992 () Int)

(assert (=> bs!1196182 (not (= lambda!253992 lambda!253972))))

(declare-fun bs!1196183 () Bool)

(assert (= bs!1196183 (and b!5131005 b!5130957)))

(assert (=> bs!1196183 (= lambda!253992 lambda!253974)))

(declare-fun bs!1196184 () Bool)

(assert (= bs!1196184 (and b!5131005 d!1659925)))

(assert (=> bs!1196184 (not (= lambda!253992 lambda!253983))))

(declare-fun bs!1196185 () Bool)

(assert (= bs!1196185 (and b!5131005 b!5130944)))

(assert (=> bs!1196185 (= lambda!253992 lambda!253971)))

(declare-fun bs!1196186 () Bool)

(assert (= bs!1196186 (and b!5131005 b!5130845)))

(assert (=> bs!1196186 (not (= lambda!253992 lambda!253908))))

(declare-fun bs!1196187 () Bool)

(assert (= bs!1196187 (and b!5131005 b!5130992)))

(assert (=> bs!1196187 (= lambda!253992 lambda!253977)))

(declare-fun bs!1196188 () Bool)

(assert (= bs!1196188 (and b!5131005 d!1659923)))

(assert (=> bs!1196188 (not (= lambda!253992 lambda!253980))))

(declare-fun bs!1196189 () Bool)

(assert (= bs!1196189 (and b!5131005 d!1659869)))

(assert (=> bs!1196189 (not (= lambda!253992 lambda!253949))))

(declare-fun bs!1196190 () Bool)

(assert (= bs!1196190 (and b!5131005 b!5130943)))

(assert (=> bs!1196190 (= lambda!253992 lambda!253970)))

(declare-fun bs!1196191 () Bool)

(assert (= bs!1196191 (and b!5131005 b!5131004)))

(assert (=> bs!1196191 (= lambda!253992 lambda!253991)))

(declare-fun bs!1196192 () Bool)

(assert (= bs!1196192 (and b!5131005 d!1659941)))

(assert (=> bs!1196192 (not (= lambda!253992 lambda!253990))))

(declare-fun bs!1196193 () Bool)

(assert (= bs!1196193 (and b!5131005 b!5130991)))

(assert (=> bs!1196193 (= lambda!253992 lambda!253976)))

(declare-fun bs!1196194 () Bool)

(assert (= bs!1196194 (and b!5131005 b!5130857)))

(assert (=> bs!1196194 (not (= lambda!253992 lambda!253910))))

(declare-fun bs!1196195 () Bool)

(assert (= bs!1196195 (and b!5131005 b!5130956)))

(assert (=> bs!1196195 (= lambda!253992 lambda!253973)))

(declare-fun bs!1196196 () Bool)

(assert (= bs!1196196 (and b!5131005 d!1659881)))

(assert (=> bs!1196196 (not (= lambda!253992 lambda!253969))))

(declare-fun bs!1196197 () Bool)

(assert (= bs!1196197 (and b!5131005 b!5130842)))

(assert (=> bs!1196197 (= lambda!253992 lambda!253909)))

(declare-fun bs!1196198 () Bool)

(assert (= bs!1196198 (and b!5131005 d!1659919)))

(assert (=> bs!1196198 (not (= lambda!253992 lambda!253975))))

(declare-fun lt!2116836 () Bool)

(assert (=> d!1659941 (= lt!2116836 (isEmpty!31990 (getLanguageWitness!862 lt!2116675)))))

(assert (=> d!1659941 (= lt!2116836 (forall!13758 lt!2116675 lambda!253990))))

(declare-fun lt!2116840 () Unit!150733)

(declare-fun e!3200143 () Unit!150733)

(assert (=> d!1659941 (= lt!2116840 e!3200143)))

(declare-fun c!882657 () Bool)

(assert (=> d!1659941 (= c!882657 (not (forall!13758 lt!2116675 lambda!253990)))))

(assert (=> d!1659941 (= (lostCauseZipper!1183 lt!2116675) lt!2116836)))

(declare-fun Unit!150751 () Unit!150733)

(assert (=> b!5131004 (= e!3200143 Unit!150751)))

(declare-fun lt!2116841 () List!59608)

(declare-fun call!357088 () List!59608)

(assert (=> b!5131004 (= lt!2116841 call!357088)))

(declare-fun lt!2116839 () Unit!150733)

(assert (=> b!5131004 (= lt!2116839 (lemmaNotForallThenExists!377 lt!2116841 lambda!253990))))

(declare-fun call!357089 () Bool)

(assert (=> b!5131004 call!357089))

(declare-fun lt!2116842 () Unit!150733)

(assert (=> b!5131004 (= lt!2116842 lt!2116839)))

(declare-fun Unit!150752 () Unit!150733)

(assert (=> b!5131005 (= e!3200143 Unit!150752)))

(declare-fun lt!2116838 () List!59608)

(assert (=> b!5131005 (= lt!2116838 call!357088)))

(declare-fun lt!2116835 () Unit!150733)

(assert (=> b!5131005 (= lt!2116835 (lemmaForallThenNotExists!352 lt!2116838 lambda!253990))))

(assert (=> b!5131005 (not call!357089)))

(declare-fun lt!2116837 () Unit!150733)

(assert (=> b!5131005 (= lt!2116837 lt!2116835)))

(declare-fun bm!357084 () Bool)

(assert (=> bm!357084 (= call!357089 (exists!1644 (ite c!882657 lt!2116841 lt!2116838) (ite c!882657 lambda!253991 lambda!253992)))))

(declare-fun bm!357083 () Bool)

(assert (=> bm!357083 (= call!357088 (toList!8329 lt!2116675))))

(assert (= (and d!1659941 c!882657) b!5131004))

(assert (= (and d!1659941 (not c!882657)) b!5131005))

(assert (= (or b!5131004 b!5131005) bm!357083))

(assert (= (or b!5131004 b!5131005) bm!357084))

(declare-fun m!6195986 () Bool)

(assert (=> b!5131005 m!6195986))

(declare-fun m!6195988 () Bool)

(assert (=> d!1659941 m!6195988))

(assert (=> d!1659941 m!6195988))

(declare-fun m!6195990 () Bool)

(assert (=> d!1659941 m!6195990))

(declare-fun m!6195992 () Bool)

(assert (=> d!1659941 m!6195992))

(assert (=> d!1659941 m!6195992))

(declare-fun m!6195994 () Bool)

(assert (=> bm!357084 m!6195994))

(assert (=> bm!357083 m!6195688))

(declare-fun m!6195996 () Bool)

(assert (=> b!5131004 m!6195996))

(assert (=> b!5130845 d!1659941))

(declare-fun d!1659943 () Bool)

(declare-fun e!3200146 () Bool)

(assert (=> d!1659943 e!3200146))

(declare-fun res!2185269 () Bool)

(assert (=> d!1659943 (=> (not res!2185269) (not e!3200146))))

(declare-fun lt!2116845 () Context!7446)

(assert (=> d!1659943 (= res!2185269 (dynLambda!23683 lambda!253910 lt!2116845))))

(assert (=> d!1659943 (= lt!2116845 (getWitness!794 (toList!8329 z!1054) lambda!253910))))

(assert (=> d!1659943 (exists!1643 z!1054 lambda!253910)))

(assert (=> d!1659943 (= (getWitness!795 z!1054 lambda!253910) lt!2116845)))

(declare-fun b!5131008 () Bool)

(assert (=> b!5131008 (= e!3200146 (select z!1054 lt!2116845))))

(assert (= (and d!1659943 res!2185269) b!5131008))

(declare-fun b_lambda!199661 () Bool)

(assert (=> (not b_lambda!199661) (not d!1659943)))

(declare-fun m!6195998 () Bool)

(assert (=> d!1659943 m!6195998))

(assert (=> d!1659943 m!6195712))

(assert (=> d!1659943 m!6195712))

(declare-fun m!6196000 () Bool)

(assert (=> d!1659943 m!6196000))

(assert (=> d!1659943 m!6195664))

(declare-fun m!6196002 () Bool)

(assert (=> b!5131008 m!6196002))

(assert (=> b!5130854 d!1659943))

(declare-fun bs!1196199 () Bool)

(declare-fun d!1659945 () Bool)

(assert (= bs!1196199 (and d!1659945 d!1659937)))

(declare-fun lambda!253995 () Int)

(assert (=> bs!1196199 (not (= lambda!253995 lambda!253989))))

(declare-fun forall!13761 (List!59607 Int) Bool)

(assert (=> d!1659945 (= (inv!79028 setElem!31058) (forall!13761 (exprs!4223 setElem!31058) lambda!253995))))

(declare-fun bs!1196200 () Bool)

(assert (= bs!1196200 d!1659945))

(declare-fun m!6196004 () Bool)

(assert (=> bs!1196200 m!6196004))

(assert (=> setNonEmpty!31058 d!1659945))

(declare-fun bs!1196201 () Bool)

(declare-fun d!1659947 () Bool)

(assert (= bs!1196201 (and d!1659947 d!1659937)))

(declare-fun lambda!253996 () Int)

(assert (=> bs!1196201 (= lambda!253996 lambda!253989)))

(declare-fun bs!1196202 () Bool)

(assert (= bs!1196202 (and d!1659947 d!1659945)))

(assert (=> bs!1196202 (not (= lambda!253996 lambda!253995))))

(assert (=> d!1659947 (= (lostCause!1292 lt!2116671) (exists!1646 (exprs!4223 lt!2116671) lambda!253996))))

(declare-fun bs!1196203 () Bool)

(assert (= bs!1196203 d!1659947))

(declare-fun m!6196006 () Bool)

(assert (=> bs!1196203 m!6196006))

(assert (=> b!5130856 d!1659947))

(declare-fun d!1659949 () Bool)

(assert (=> d!1659949 (dynLambda!23683 lambda!253908 lt!2116671)))

(declare-fun lt!2116848 () Unit!150733)

(declare-fun choose!37869 (List!59608 Int Context!7446) Unit!150733)

(assert (=> d!1659949 (= lt!2116848 (choose!37869 (toList!8329 z!1054) lambda!253908 lt!2116671))))

(declare-fun e!3200149 () Bool)

(assert (=> d!1659949 e!3200149))

(declare-fun res!2185272 () Bool)

(assert (=> d!1659949 (=> (not res!2185272) (not e!3200149))))

(assert (=> d!1659949 (= res!2185272 (forall!13759 (toList!8329 z!1054) lambda!253908))))

(assert (=> d!1659949 (= (forallContained!4621 (toList!8329 z!1054) lambda!253908 lt!2116671) lt!2116848)))

(declare-fun b!5131011 () Bool)

(assert (=> b!5131011 (= e!3200149 (contains!19636 (toList!8329 z!1054) lt!2116671))))

(assert (= (and d!1659949 res!2185272) b!5131011))

(declare-fun b_lambda!199663 () Bool)

(assert (=> (not b_lambda!199663) (not d!1659949)))

(declare-fun m!6196008 () Bool)

(assert (=> d!1659949 m!6196008))

(assert (=> d!1659949 m!6195712))

(declare-fun m!6196010 () Bool)

(assert (=> d!1659949 m!6196010))

(assert (=> d!1659949 m!6195712))

(assert (=> d!1659949 m!6195974))

(assert (=> b!5131011 m!6195712))

(declare-fun m!6196012 () Bool)

(assert (=> b!5131011 m!6196012))

(assert (=> b!5130856 d!1659949))

(declare-fun d!1659951 () Bool)

(declare-fun e!3200150 () Bool)

(assert (=> d!1659951 e!3200150))

(declare-fun res!2185273 () Bool)

(assert (=> d!1659951 (=> (not res!2185273) (not e!3200150))))

(declare-fun lt!2116849 () List!59608)

(assert (=> d!1659951 (= res!2185273 (noDuplicate!1092 lt!2116849))))

(assert (=> d!1659951 (= lt!2116849 (choose!37866 z!1054))))

(assert (=> d!1659951 (= (toList!8329 z!1054) lt!2116849)))

(declare-fun b!5131012 () Bool)

(assert (=> b!5131012 (= e!3200150 (= (content!10569 lt!2116849) z!1054))))

(assert (= (and d!1659951 res!2185273) b!5131012))

(declare-fun m!6196014 () Bool)

(assert (=> d!1659951 m!6196014))

(declare-fun m!6196016 () Bool)

(assert (=> d!1659951 m!6196016))

(declare-fun m!6196018 () Bool)

(assert (=> b!5131012 m!6196018))

(assert (=> b!5130856 d!1659951))

(declare-fun d!1659953 () Bool)

(declare-fun res!2185278 () Bool)

(declare-fun e!3200155 () Bool)

(assert (=> d!1659953 (=> res!2185278 e!3200155)))

(assert (=> d!1659953 (= res!2185278 ((_ is Nil!59484) lt!2116670))))

(assert (=> d!1659953 (= (forall!13759 lt!2116670 lambda!253908) e!3200155)))

(declare-fun b!5131017 () Bool)

(declare-fun e!3200156 () Bool)

(assert (=> b!5131017 (= e!3200155 e!3200156)))

(declare-fun res!2185279 () Bool)

(assert (=> b!5131017 (=> (not res!2185279) (not e!3200156))))

(assert (=> b!5131017 (= res!2185279 (dynLambda!23683 lambda!253908 (h!65932 lt!2116670)))))

(declare-fun b!5131018 () Bool)

(assert (=> b!5131018 (= e!3200156 (forall!13759 (t!372635 lt!2116670) lambda!253908))))

(assert (= (and d!1659953 (not res!2185278)) b!5131017))

(assert (= (and b!5131017 res!2185279) b!5131018))

(declare-fun b_lambda!199665 () Bool)

(assert (=> (not b_lambda!199665) (not b!5131017)))

(declare-fun m!6196020 () Bool)

(assert (=> b!5131017 m!6196020))

(declare-fun m!6196022 () Bool)

(assert (=> b!5131018 m!6196022))

(assert (=> b!5130855 d!1659953))

(declare-fun d!1659955 () Bool)

(declare-fun e!3200157 () Bool)

(assert (=> d!1659955 e!3200157))

(declare-fun res!2185280 () Bool)

(assert (=> d!1659955 (=> (not res!2185280) (not e!3200157))))

(declare-fun lt!2116850 () List!59608)

(assert (=> d!1659955 (= res!2185280 (noDuplicate!1092 lt!2116850))))

(assert (=> d!1659955 (= lt!2116850 (choose!37866 lt!2116676))))

(assert (=> d!1659955 (= (toList!8329 lt!2116676) lt!2116850)))

(declare-fun b!5131019 () Bool)

(assert (=> b!5131019 (= e!3200157 (= (content!10569 lt!2116850) lt!2116676))))

(assert (= (and d!1659955 res!2185280) b!5131019))

(declare-fun m!6196024 () Bool)

(assert (=> d!1659955 m!6196024))

(declare-fun m!6196026 () Bool)

(assert (=> d!1659955 m!6196026))

(declare-fun m!6196028 () Bool)

(assert (=> b!5131019 m!6196028))

(assert (=> b!5130855 d!1659955))

(declare-fun b!5131024 () Bool)

(declare-fun e!3200160 () Bool)

(declare-fun tp!1431342 () Bool)

(declare-fun tp!1431343 () Bool)

(assert (=> b!5131024 (= e!3200160 (and tp!1431342 tp!1431343))))

(assert (=> b!5130848 (= tp!1431324 e!3200160)))

(assert (= (and b!5130848 ((_ is Cons!59483) (exprs!4223 setElem!31058))) b!5131024))

(declare-fun condSetEmpty!31064 () Bool)

(assert (=> setNonEmpty!31058 (= condSetEmpty!31064 (= setRest!31058 ((as const (Array Context!7446 Bool)) false)))))

(declare-fun setRes!31064 () Bool)

(assert (=> setNonEmpty!31058 (= tp!1431325 setRes!31064)))

(declare-fun setIsEmpty!31064 () Bool)

(assert (=> setIsEmpty!31064 setRes!31064))

(declare-fun setNonEmpty!31064 () Bool)

(declare-fun setElem!31064 () Context!7446)

(declare-fun tp!1431348 () Bool)

(declare-fun e!3200163 () Bool)

(assert (=> setNonEmpty!31064 (= setRes!31064 (and tp!1431348 (inv!79028 setElem!31064) e!3200163))))

(declare-fun setRest!31064 () (InoxSet Context!7446))

(assert (=> setNonEmpty!31064 (= setRest!31058 ((_ map or) (store ((as const (Array Context!7446 Bool)) false) setElem!31064 true) setRest!31064))))

(declare-fun b!5131029 () Bool)

(declare-fun tp!1431349 () Bool)

(assert (=> b!5131029 (= e!3200163 tp!1431349)))

(assert (= (and setNonEmpty!31058 condSetEmpty!31064) setIsEmpty!31064))

(assert (= (and setNonEmpty!31058 (not condSetEmpty!31064)) setNonEmpty!31064))

(assert (= setNonEmpty!31064 b!5131029))

(declare-fun m!6196030 () Bool)

(assert (=> setNonEmpty!31064 m!6196030))

(declare-fun b_lambda!199667 () Bool)

(assert (= b_lambda!199663 (or b!5130845 b_lambda!199667)))

(declare-fun bs!1196204 () Bool)

(declare-fun d!1659957 () Bool)

(assert (= bs!1196204 (and d!1659957 b!5130845)))

(assert (=> bs!1196204 (= (dynLambda!23683 lambda!253908 lt!2116671) (lostCause!1292 lt!2116671))))

(assert (=> bs!1196204 m!6195710))

(assert (=> d!1659949 d!1659957))

(declare-fun b_lambda!199669 () Bool)

(assert (= b_lambda!199659 (or b!5130842 b_lambda!199669)))

(declare-fun bs!1196205 () Bool)

(declare-fun d!1659959 () Bool)

(assert (= bs!1196205 (and d!1659959 b!5130842)))

(assert (=> bs!1196205 (= (dynLambda!23683 lambda!253909 (h!65932 lt!2116678)) (not (lostCause!1292 (h!65932 lt!2116678))))))

(declare-fun m!6196032 () Bool)

(assert (=> bs!1196205 m!6196032))

(assert (=> b!5130988 d!1659959))

(declare-fun b_lambda!199671 () Bool)

(assert (= b_lambda!199665 (or b!5130845 b_lambda!199671)))

(declare-fun bs!1196206 () Bool)

(declare-fun d!1659961 () Bool)

(assert (= bs!1196206 (and d!1659961 b!5130845)))

(assert (=> bs!1196206 (= (dynLambda!23683 lambda!253908 (h!65932 lt!2116670)) (lostCause!1292 (h!65932 lt!2116670)))))

(declare-fun m!6196034 () Bool)

(assert (=> bs!1196206 m!6196034))

(assert (=> b!5131017 d!1659961))

(declare-fun b_lambda!199673 () Bool)

(assert (= b_lambda!199657 (or b!5130842 b_lambda!199673)))

(declare-fun bs!1196207 () Bool)

(declare-fun d!1659963 () Bool)

(assert (= bs!1196207 (and d!1659963 b!5130842)))

(assert (=> bs!1196207 (= (dynLambda!23683 lambda!253909 lt!2116811) (not (lostCause!1292 lt!2116811)))))

(declare-fun m!6196036 () Bool)

(assert (=> bs!1196207 m!6196036))

(assert (=> d!1659917 d!1659963))

(declare-fun b_lambda!199675 () Bool)

(assert (= b_lambda!199661 (or b!5130857 b_lambda!199675)))

(declare-fun bs!1196208 () Bool)

(declare-fun d!1659965 () Bool)

(assert (= bs!1196208 (and d!1659965 b!5130857)))

(assert (=> bs!1196208 (= (dynLambda!23683 lambda!253910 lt!2116845) (select (derivationStepZipperUp!64 lt!2116845 a!1233) lt!2116679))))

(declare-fun m!6196038 () Bool)

(assert (=> bs!1196208 m!6196038))

(declare-fun m!6196040 () Bool)

(assert (=> bs!1196208 m!6196040))

(assert (=> d!1659943 d!1659965))

(check-sat (not d!1659929) (not bm!357076) (not b!5130991) (not b!5131003) (not b!5131024) (not b_lambda!199675) (not d!1659941) (not b_lambda!199673) (not d!1659933) (not b!5131029) (not d!1659939) (not b!5130997) tp_is_empty!37851 (not b!5131011) (not b!5130957) (not b!5131012) (not d!1659923) (not d!1659925) (not bm!357084) (not b!5130990) (not bm!357074) (not d!1659955) (not d!1659935) (not d!1659915) (not d!1659927) (not b!5130971) (not bm!357083) (not d!1659917) (not bs!1196208) (not d!1659919) (not d!1659949) (not bm!357080) (not bm!357082) (not bm!357077) (not d!1659945) (not b!5130989) (not d!1659869) (not d!1659951) (not d!1659911) (not bm!357075) (not d!1659921) (not b!5130956) (not b!5131018) (not d!1659943) (not b!5130992) (not bs!1196206) (not b_lambda!199667) (not b_lambda!199671) (not d!1659947) (not bs!1196205) (not d!1659863) (not d!1659937) (not b!5130943) (not b!5130969) (not b!5130944) (not d!1659931) (not b_lambda!199669) (not b!5131019) (not bs!1196204) (not b!5131004) (not d!1659881) (not setNonEmpty!31064) (not b!5131005) (not b!5130987) (not bm!357081) (not bs!1196207))
(check-sat)
(get-model)

(declare-fun bs!1196876 () Bool)

(declare-fun d!1660129 () Bool)

(assert (= bs!1196876 (and d!1660129 d!1659937)))

(declare-fun lambda!254038 () Int)

(assert (=> bs!1196876 (= lambda!254038 lambda!253989)))

(declare-fun bs!1196877 () Bool)

(assert (= bs!1196877 (and d!1660129 d!1659945)))

(assert (=> bs!1196877 (not (= lambda!254038 lambda!253995))))

(declare-fun bs!1196878 () Bool)

(assert (= bs!1196878 (and d!1660129 d!1659947)))

(assert (=> bs!1196878 (= lambda!254038 lambda!253996)))

(assert (=> d!1660129 (= (lostCause!1292 (h!65932 lt!2116670)) (exists!1646 (exprs!4223 (h!65932 lt!2116670)) lambda!254038))))

(declare-fun bs!1196879 () Bool)

(assert (= bs!1196879 d!1660129))

(declare-fun m!6196336 () Bool)

(assert (=> bs!1196879 m!6196336))

(assert (=> bs!1196206 d!1660129))

(declare-fun d!1660131 () Bool)

(assert (=> d!1660131 true))

(declare-fun setRes!31071 () Bool)

(assert (=> d!1660131 setRes!31071))

(declare-fun condSetEmpty!31071 () Bool)

(declare-fun res!2185346 () (InoxSet Context!7446))

(assert (=> d!1660131 (= condSetEmpty!31071 (= res!2185346 ((as const (Array Context!7446 Bool)) false)))))

(assert (=> d!1660131 (= (choose!37867 z!1054 lambda!253907) res!2185346)))

(declare-fun setIsEmpty!31071 () Bool)

(assert (=> setIsEmpty!31071 setRes!31071))

(declare-fun setElem!31071 () Context!7446)

(declare-fun e!3200271 () Bool)

(declare-fun setNonEmpty!31071 () Bool)

(declare-fun tp!1431392 () Bool)

(assert (=> setNonEmpty!31071 (= setRes!31071 (and tp!1431392 (inv!79028 setElem!31071) e!3200271))))

(declare-fun setRest!31071 () (InoxSet Context!7446))

(assert (=> setNonEmpty!31071 (= res!2185346 ((_ map or) (store ((as const (Array Context!7446 Bool)) false) setElem!31071 true) setRest!31071))))

(declare-fun b!5131182 () Bool)

(declare-fun tp!1431391 () Bool)

(assert (=> b!5131182 (= e!3200271 tp!1431391)))

(assert (= (and d!1660131 condSetEmpty!31071) setIsEmpty!31071))

(assert (= (and d!1660131 (not condSetEmpty!31071)) setNonEmpty!31071))

(assert (= setNonEmpty!31071 b!5131182))

(declare-fun m!6196338 () Bool)

(assert (=> setNonEmpty!31071 m!6196338))

(assert (=> d!1659929 d!1660131))

(declare-fun d!1660133 () Bool)

(declare-fun lt!2116880 () Bool)

(assert (=> d!1660133 (= lt!2116880 (exists!1644 (toList!8329 z!1054) lambda!253949))))

(assert (=> d!1660133 (= lt!2116880 (choose!37860 z!1054 lambda!253949))))

(assert (=> d!1660133 (= (exists!1643 z!1054 lambda!253949) lt!2116880)))

(declare-fun bs!1196880 () Bool)

(assert (= bs!1196880 d!1660133))

(assert (=> bs!1196880 m!6195712))

(assert (=> bs!1196880 m!6195712))

(declare-fun m!6196340 () Bool)

(assert (=> bs!1196880 m!6196340))

(declare-fun m!6196342 () Bool)

(assert (=> bs!1196880 m!6196342))

(assert (=> d!1659869 d!1660133))

(declare-fun bs!1196881 () Bool)

(declare-fun d!1660135 () Bool)

(assert (= bs!1196881 (and d!1660135 d!1659911)))

(declare-fun lambda!254041 () Int)

(assert (=> bs!1196881 (not (= lambda!254041 lambda!253972))))

(declare-fun bs!1196882 () Bool)

(assert (= bs!1196882 (and d!1660135 b!5130957)))

(assert (=> bs!1196882 (not (= lambda!254041 lambda!253974))))

(declare-fun bs!1196883 () Bool)

(assert (= bs!1196883 (and d!1660135 d!1659925)))

(assert (=> bs!1196883 (not (= lambda!254041 lambda!253983))))

(declare-fun bs!1196884 () Bool)

(assert (= bs!1196884 (and d!1660135 b!5130944)))

(assert (=> bs!1196884 (not (= lambda!254041 lambda!253971))))

(declare-fun bs!1196885 () Bool)

(assert (= bs!1196885 (and d!1660135 b!5130845)))

(assert (=> bs!1196885 (not (= lambda!254041 lambda!253908))))

(declare-fun bs!1196886 () Bool)

(assert (= bs!1196886 (and d!1660135 b!5130992)))

(assert (=> bs!1196886 (not (= lambda!254041 lambda!253977))))

(declare-fun bs!1196887 () Bool)

(assert (= bs!1196887 (and d!1660135 d!1659923)))

(assert (=> bs!1196887 (not (= lambda!254041 lambda!253980))))

(declare-fun bs!1196888 () Bool)

(assert (= bs!1196888 (and d!1660135 b!5131005)))

(assert (=> bs!1196888 (not (= lambda!254041 lambda!253992))))

(declare-fun bs!1196889 () Bool)

(assert (= bs!1196889 (and d!1660135 d!1659869)))

(assert (=> bs!1196889 (= lambda!254041 lambda!253949)))

(declare-fun bs!1196890 () Bool)

(assert (= bs!1196890 (and d!1660135 b!5130943)))

(assert (=> bs!1196890 (not (= lambda!254041 lambda!253970))))

(declare-fun bs!1196891 () Bool)

(assert (= bs!1196891 (and d!1660135 b!5131004)))

(assert (=> bs!1196891 (not (= lambda!254041 lambda!253991))))

(declare-fun bs!1196892 () Bool)

(assert (= bs!1196892 (and d!1660135 d!1659941)))

(assert (=> bs!1196892 (not (= lambda!254041 lambda!253990))))

(declare-fun bs!1196893 () Bool)

(assert (= bs!1196893 (and d!1660135 b!5130991)))

(assert (=> bs!1196893 (not (= lambda!254041 lambda!253976))))

(declare-fun bs!1196894 () Bool)

(assert (= bs!1196894 (and d!1660135 b!5130857)))

(assert (=> bs!1196894 (not (= lambda!254041 lambda!253910))))

(declare-fun bs!1196895 () Bool)

(assert (= bs!1196895 (and d!1660135 b!5130956)))

(assert (=> bs!1196895 (not (= lambda!254041 lambda!253973))))

(declare-fun bs!1196896 () Bool)

(assert (= bs!1196896 (and d!1660135 d!1659881)))

(assert (=> bs!1196896 (not (= lambda!254041 lambda!253969))))

(declare-fun bs!1196897 () Bool)

(assert (= bs!1196897 (and d!1660135 b!5130842)))

(assert (=> bs!1196897 (not (= lambda!254041 lambda!253909))))

(declare-fun bs!1196898 () Bool)

(assert (= bs!1196898 (and d!1660135 d!1659919)))

(assert (=> bs!1196898 (not (= lambda!254041 lambda!253975))))

(assert (=> d!1660135 true))

(assert (=> d!1660135 true))

(assert (=> d!1660135 (< (dynLambda!23681 order!26847 lambda!253907) (dynLambda!23682 order!26849 lambda!254041))))

(assert (=> d!1660135 (exists!1643 z!1054 lambda!254041)))

(assert (=> d!1660135 true))

(declare-fun _$1!11304 () Unit!150733)

(assert (=> d!1660135 (= (choose!37861 z!1054 lambda!253907 lt!2116679) _$1!11304)))

(declare-fun bs!1196899 () Bool)

(assert (= bs!1196899 d!1660135))

(declare-fun m!6196344 () Bool)

(assert (=> bs!1196899 m!6196344))

(assert (=> d!1659869 d!1660135))

(assert (=> d!1659869 d!1659929))

(declare-fun d!1660137 () Bool)

(declare-fun nullableFct!1281 (Regex!14339) Bool)

(assert (=> d!1660137 (= (nullable!4746 (h!65931 (exprs!4223 lt!2116671))) (nullableFct!1281 (h!65931 (exprs!4223 lt!2116671))))))

(declare-fun bs!1196900 () Bool)

(assert (= bs!1196900 d!1660137))

(declare-fun m!6196346 () Bool)

(assert (=> bs!1196900 m!6196346))

(assert (=> b!5130971 d!1660137))

(declare-fun bs!1196901 () Bool)

(declare-fun d!1660139 () Bool)

(assert (= bs!1196901 (and d!1660139 d!1659911)))

(declare-fun lambda!254042 () Int)

(assert (=> bs!1196901 (not (= lambda!254042 lambda!253972))))

(declare-fun bs!1196902 () Bool)

(assert (= bs!1196902 (and d!1660139 b!5130957)))

(assert (=> bs!1196902 (not (= lambda!254042 lambda!253974))))

(declare-fun bs!1196903 () Bool)

(assert (= bs!1196903 (and d!1660139 d!1659925)))

(assert (=> bs!1196903 (= (= lambda!253909 lambda!253908) (= lambda!254042 lambda!253983))))

(declare-fun bs!1196904 () Bool)

(assert (= bs!1196904 (and d!1660139 b!5130944)))

(assert (=> bs!1196904 (not (= lambda!254042 lambda!253971))))

(declare-fun bs!1196905 () Bool)

(assert (= bs!1196905 (and d!1660139 b!5130845)))

(assert (=> bs!1196905 (not (= lambda!254042 lambda!253908))))

(declare-fun bs!1196906 () Bool)

(assert (= bs!1196906 (and d!1660139 b!5130992)))

(assert (=> bs!1196906 (not (= lambda!254042 lambda!253977))))

(declare-fun bs!1196907 () Bool)

(assert (= bs!1196907 (and d!1660139 d!1659923)))

(assert (=> bs!1196907 (= lambda!254042 lambda!253980)))

(declare-fun bs!1196908 () Bool)

(assert (= bs!1196908 (and d!1660139 d!1659869)))

(assert (=> bs!1196908 (not (= lambda!254042 lambda!253949))))

(declare-fun bs!1196909 () Bool)

(assert (= bs!1196909 (and d!1660139 b!5130943)))

(assert (=> bs!1196909 (not (= lambda!254042 lambda!253970))))

(declare-fun bs!1196910 () Bool)

(assert (= bs!1196910 (and d!1660139 b!5131004)))

(assert (=> bs!1196910 (not (= lambda!254042 lambda!253991))))

(declare-fun bs!1196911 () Bool)

(assert (= bs!1196911 (and d!1660139 d!1659941)))

(assert (=> bs!1196911 (not (= lambda!254042 lambda!253990))))

(declare-fun bs!1196912 () Bool)

(assert (= bs!1196912 (and d!1660139 b!5130991)))

(assert (=> bs!1196912 (not (= lambda!254042 lambda!253976))))

(declare-fun bs!1196913 () Bool)

(assert (= bs!1196913 (and d!1660139 b!5130857)))

(assert (=> bs!1196913 (not (= lambda!254042 lambda!253910))))

(declare-fun bs!1196914 () Bool)

(assert (= bs!1196914 (and d!1660139 b!5130956)))

(assert (=> bs!1196914 (not (= lambda!254042 lambda!253973))))

(declare-fun bs!1196915 () Bool)

(assert (= bs!1196915 (and d!1660139 d!1659881)))

(assert (=> bs!1196915 (not (= lambda!254042 lambda!253969))))

(declare-fun bs!1196916 () Bool)

(assert (= bs!1196916 (and d!1660139 b!5130842)))

(assert (=> bs!1196916 (not (= lambda!254042 lambda!253909))))

(declare-fun bs!1196917 () Bool)

(assert (= bs!1196917 (and d!1660139 d!1659919)))

(assert (=> bs!1196917 (not (= lambda!254042 lambda!253975))))

(declare-fun bs!1196918 () Bool)

(assert (= bs!1196918 (and d!1660139 d!1660135)))

(assert (=> bs!1196918 (not (= lambda!254042 lambda!254041))))

(declare-fun bs!1196919 () Bool)

(assert (= bs!1196919 (and d!1660139 b!5131005)))

(assert (=> bs!1196919 (not (= lambda!254042 lambda!253992))))

(assert (=> d!1660139 true))

(assert (=> d!1660139 (< (dynLambda!23682 order!26849 lambda!253909) (dynLambda!23682 order!26849 lambda!254042))))

(assert (=> d!1660139 (= (exists!1644 (toList!8329 lt!2116675) lambda!253909) (not (forall!13759 (toList!8329 lt!2116675) lambda!254042)))))

(declare-fun bs!1196920 () Bool)

(assert (= bs!1196920 d!1660139))

(assert (=> bs!1196920 m!6195688))

(declare-fun m!6196348 () Bool)

(assert (=> bs!1196920 m!6196348))

(assert (=> d!1659921 d!1660139))

(assert (=> d!1659921 d!1659927))

(declare-fun d!1660141 () Bool)

(declare-fun res!2185349 () Bool)

(assert (=> d!1660141 (= res!2185349 (exists!1644 (toList!8329 lt!2116675) lambda!253909))))

(assert (=> d!1660141 true))

(assert (=> d!1660141 (= (choose!37860 lt!2116675 lambda!253909) res!2185349)))

(declare-fun bs!1196921 () Bool)

(assert (= bs!1196921 d!1660141))

(assert (=> bs!1196921 m!6195688))

(assert (=> bs!1196921 m!6195688))

(assert (=> bs!1196921 m!6195948))

(assert (=> d!1659921 d!1660141))

(declare-fun bs!1196922 () Bool)

(declare-fun d!1660143 () Bool)

(assert (= bs!1196922 (and d!1660143 d!1659911)))

(declare-fun lambda!254045 () Int)

(assert (=> bs!1196922 (not (= lambda!254045 lambda!253972))))

(declare-fun bs!1196923 () Bool)

(assert (= bs!1196923 (and d!1660143 b!5130957)))

(assert (=> bs!1196923 (not (= lambda!254045 lambda!253974))))

(declare-fun bs!1196924 () Bool)

(assert (= bs!1196924 (and d!1660143 d!1659925)))

(assert (=> bs!1196924 (= (= lambda!253969 lambda!253908) (= lambda!254045 lambda!253983))))

(declare-fun bs!1196925 () Bool)

(assert (= bs!1196925 (and d!1660143 b!5130944)))

(assert (=> bs!1196925 (not (= lambda!254045 lambda!253971))))

(declare-fun bs!1196926 () Bool)

(assert (= bs!1196926 (and d!1660143 b!5130845)))

(assert (=> bs!1196926 (not (= lambda!254045 lambda!253908))))

(declare-fun bs!1196927 () Bool)

(assert (= bs!1196927 (and d!1660143 b!5130992)))

(assert (=> bs!1196927 (not (= lambda!254045 lambda!253977))))

(declare-fun bs!1196928 () Bool)

(assert (= bs!1196928 (and d!1660143 d!1660139)))

(assert (=> bs!1196928 (= (= lambda!253969 lambda!253909) (= lambda!254045 lambda!254042))))

(declare-fun bs!1196929 () Bool)

(assert (= bs!1196929 (and d!1660143 d!1659923)))

(assert (=> bs!1196929 (= (= lambda!253969 lambda!253909) (= lambda!254045 lambda!253980))))

(declare-fun bs!1196930 () Bool)

(assert (= bs!1196930 (and d!1660143 d!1659869)))

(assert (=> bs!1196930 (not (= lambda!254045 lambda!253949))))

(declare-fun bs!1196931 () Bool)

(assert (= bs!1196931 (and d!1660143 b!5130943)))

(assert (=> bs!1196931 (not (= lambda!254045 lambda!253970))))

(declare-fun bs!1196932 () Bool)

(assert (= bs!1196932 (and d!1660143 b!5131004)))

(assert (=> bs!1196932 (not (= lambda!254045 lambda!253991))))

(declare-fun bs!1196933 () Bool)

(assert (= bs!1196933 (and d!1660143 d!1659941)))

(assert (=> bs!1196933 (not (= lambda!254045 lambda!253990))))

(declare-fun bs!1196934 () Bool)

(assert (= bs!1196934 (and d!1660143 b!5130991)))

(assert (=> bs!1196934 (not (= lambda!254045 lambda!253976))))

(declare-fun bs!1196935 () Bool)

(assert (= bs!1196935 (and d!1660143 b!5130857)))

(assert (=> bs!1196935 (not (= lambda!254045 lambda!253910))))

(declare-fun bs!1196936 () Bool)

(assert (= bs!1196936 (and d!1660143 b!5130956)))

(assert (=> bs!1196936 (not (= lambda!254045 lambda!253973))))

(declare-fun bs!1196937 () Bool)

(assert (= bs!1196937 (and d!1660143 d!1659881)))

(assert (=> bs!1196937 (not (= lambda!254045 lambda!253969))))

(declare-fun bs!1196938 () Bool)

(assert (= bs!1196938 (and d!1660143 b!5130842)))

(assert (=> bs!1196938 (not (= lambda!254045 lambda!253909))))

(declare-fun bs!1196939 () Bool)

(assert (= bs!1196939 (and d!1660143 d!1659919)))

(assert (=> bs!1196939 (not (= lambda!254045 lambda!253975))))

(declare-fun bs!1196940 () Bool)

(assert (= bs!1196940 (and d!1660143 d!1660135)))

(assert (=> bs!1196940 (not (= lambda!254045 lambda!254041))))

(declare-fun bs!1196941 () Bool)

(assert (= bs!1196941 (and d!1660143 b!5131005)))

(assert (=> bs!1196941 (not (= lambda!254045 lambda!253992))))

(assert (=> d!1660143 true))

(assert (=> d!1660143 (< (dynLambda!23682 order!26849 lambda!253969) (dynLambda!23682 order!26849 lambda!254045))))

(assert (=> d!1660143 (not (exists!1644 lt!2116789 lambda!254045))))

(declare-fun lt!2116883 () Unit!150733)

(declare-fun choose!37871 (List!59608 Int) Unit!150733)

(assert (=> d!1660143 (= lt!2116883 (choose!37871 lt!2116789 lambda!253969))))

(assert (=> d!1660143 (forall!13759 lt!2116789 lambda!253969)))

(assert (=> d!1660143 (= (lemmaForallThenNotExists!352 lt!2116789 lambda!253969) lt!2116883)))

(declare-fun bs!1196942 () Bool)

(assert (= bs!1196942 d!1660143))

(declare-fun m!6196350 () Bool)

(assert (=> bs!1196942 m!6196350))

(declare-fun m!6196352 () Bool)

(assert (=> bs!1196942 m!6196352))

(declare-fun m!6196354 () Bool)

(assert (=> bs!1196942 m!6196354))

(assert (=> b!5130944 d!1660143))

(declare-fun bs!1196943 () Bool)

(declare-fun d!1660145 () Bool)

(assert (= bs!1196943 (and d!1660145 d!1660143)))

(declare-fun lambda!254046 () Int)

(assert (=> bs!1196943 (= (= lambda!253983 lambda!253969) (= lambda!254046 lambda!254045))))

(declare-fun bs!1196944 () Bool)

(assert (= bs!1196944 (and d!1660145 d!1659911)))

(assert (=> bs!1196944 (not (= lambda!254046 lambda!253972))))

(declare-fun bs!1196945 () Bool)

(assert (= bs!1196945 (and d!1660145 b!5130957)))

(assert (=> bs!1196945 (not (= lambda!254046 lambda!253974))))

(declare-fun bs!1196946 () Bool)

(assert (= bs!1196946 (and d!1660145 d!1659925)))

(assert (=> bs!1196946 (= (= lambda!253983 lambda!253908) (= lambda!254046 lambda!253983))))

(declare-fun bs!1196947 () Bool)

(assert (= bs!1196947 (and d!1660145 b!5130944)))

(assert (=> bs!1196947 (not (= lambda!254046 lambda!253971))))

(declare-fun bs!1196948 () Bool)

(assert (= bs!1196948 (and d!1660145 b!5130845)))

(assert (=> bs!1196948 (not (= lambda!254046 lambda!253908))))

(declare-fun bs!1196949 () Bool)

(assert (= bs!1196949 (and d!1660145 b!5130992)))

(assert (=> bs!1196949 (not (= lambda!254046 lambda!253977))))

(declare-fun bs!1196950 () Bool)

(assert (= bs!1196950 (and d!1660145 d!1660139)))

(assert (=> bs!1196950 (= (= lambda!253983 lambda!253909) (= lambda!254046 lambda!254042))))

(declare-fun bs!1196951 () Bool)

(assert (= bs!1196951 (and d!1660145 d!1659923)))

(assert (=> bs!1196951 (= (= lambda!253983 lambda!253909) (= lambda!254046 lambda!253980))))

(declare-fun bs!1196952 () Bool)

(assert (= bs!1196952 (and d!1660145 d!1659869)))

(assert (=> bs!1196952 (not (= lambda!254046 lambda!253949))))

(declare-fun bs!1196953 () Bool)

(assert (= bs!1196953 (and d!1660145 b!5130943)))

(assert (=> bs!1196953 (not (= lambda!254046 lambda!253970))))

(declare-fun bs!1196954 () Bool)

(assert (= bs!1196954 (and d!1660145 b!5131004)))

(assert (=> bs!1196954 (not (= lambda!254046 lambda!253991))))

(declare-fun bs!1196955 () Bool)

(assert (= bs!1196955 (and d!1660145 d!1659941)))

(assert (=> bs!1196955 (not (= lambda!254046 lambda!253990))))

(declare-fun bs!1196956 () Bool)

(assert (= bs!1196956 (and d!1660145 b!5130991)))

(assert (=> bs!1196956 (not (= lambda!254046 lambda!253976))))

(declare-fun bs!1196957 () Bool)

(assert (= bs!1196957 (and d!1660145 b!5130857)))

(assert (=> bs!1196957 (not (= lambda!254046 lambda!253910))))

(declare-fun bs!1196958 () Bool)

(assert (= bs!1196958 (and d!1660145 b!5130956)))

(assert (=> bs!1196958 (not (= lambda!254046 lambda!253973))))

(declare-fun bs!1196959 () Bool)

(assert (= bs!1196959 (and d!1660145 d!1659881)))

(assert (=> bs!1196959 (not (= lambda!254046 lambda!253969))))

(declare-fun bs!1196960 () Bool)

(assert (= bs!1196960 (and d!1660145 b!5130842)))

(assert (=> bs!1196960 (not (= lambda!254046 lambda!253909))))

(declare-fun bs!1196961 () Bool)

(assert (= bs!1196961 (and d!1660145 d!1659919)))

(assert (=> bs!1196961 (not (= lambda!254046 lambda!253975))))

(declare-fun bs!1196962 () Bool)

(assert (= bs!1196962 (and d!1660145 d!1660135)))

(assert (=> bs!1196962 (not (= lambda!254046 lambda!254041))))

(declare-fun bs!1196963 () Bool)

(assert (= bs!1196963 (and d!1660145 b!5131005)))

(assert (=> bs!1196963 (not (= lambda!254046 lambda!253992))))

(assert (=> d!1660145 true))

(assert (=> d!1660145 (< (dynLambda!23682 order!26849 lambda!253983) (dynLambda!23682 order!26849 lambda!254046))))

(assert (=> d!1660145 (= (exists!1644 lt!2116678 lambda!253983) (not (forall!13759 lt!2116678 lambda!254046)))))

(declare-fun bs!1196964 () Bool)

(assert (= bs!1196964 d!1660145))

(declare-fun m!6196356 () Bool)

(assert (=> bs!1196964 m!6196356))

(assert (=> d!1659925 d!1660145))

(declare-fun bs!1196965 () Bool)

(declare-fun d!1660147 () Bool)

(assert (= bs!1196965 (and d!1660147 d!1660143)))

(declare-fun lambda!254049 () Int)

(assert (=> bs!1196965 (= (= lambda!253908 lambda!253969) (= lambda!254049 lambda!254045))))

(declare-fun bs!1196966 () Bool)

(assert (= bs!1196966 (and d!1660147 d!1659911)))

(assert (=> bs!1196966 (not (= lambda!254049 lambda!253972))))

(declare-fun bs!1196967 () Bool)

(assert (= bs!1196967 (and d!1660147 b!5130957)))

(assert (=> bs!1196967 (not (= lambda!254049 lambda!253974))))

(declare-fun bs!1196968 () Bool)

(assert (= bs!1196968 (and d!1660147 d!1659925)))

(assert (=> bs!1196968 (= lambda!254049 lambda!253983)))

(declare-fun bs!1196969 () Bool)

(assert (= bs!1196969 (and d!1660147 b!5130944)))

(assert (=> bs!1196969 (not (= lambda!254049 lambda!253971))))

(declare-fun bs!1196970 () Bool)

(assert (= bs!1196970 (and d!1660147 b!5130845)))

(assert (=> bs!1196970 (not (= lambda!254049 lambda!253908))))

(declare-fun bs!1196971 () Bool)

(assert (= bs!1196971 (and d!1660147 b!5130992)))

(assert (=> bs!1196971 (not (= lambda!254049 lambda!253977))))

(declare-fun bs!1196972 () Bool)

(assert (= bs!1196972 (and d!1660147 d!1660139)))

(assert (=> bs!1196972 (= (= lambda!253908 lambda!253909) (= lambda!254049 lambda!254042))))

(declare-fun bs!1196973 () Bool)

(assert (= bs!1196973 (and d!1660147 d!1659923)))

(assert (=> bs!1196973 (= (= lambda!253908 lambda!253909) (= lambda!254049 lambda!253980))))

(declare-fun bs!1196974 () Bool)

(assert (= bs!1196974 (and d!1660147 d!1659869)))

(assert (=> bs!1196974 (not (= lambda!254049 lambda!253949))))

(declare-fun bs!1196975 () Bool)

(assert (= bs!1196975 (and d!1660147 d!1660145)))

(assert (=> bs!1196975 (= (= lambda!253908 lambda!253983) (= lambda!254049 lambda!254046))))

(declare-fun bs!1196976 () Bool)

(assert (= bs!1196976 (and d!1660147 b!5130943)))

(assert (=> bs!1196976 (not (= lambda!254049 lambda!253970))))

(declare-fun bs!1196977 () Bool)

(assert (= bs!1196977 (and d!1660147 b!5131004)))

(assert (=> bs!1196977 (not (= lambda!254049 lambda!253991))))

(declare-fun bs!1196978 () Bool)

(assert (= bs!1196978 (and d!1660147 d!1659941)))

(assert (=> bs!1196978 (not (= lambda!254049 lambda!253990))))

(declare-fun bs!1196979 () Bool)

(assert (= bs!1196979 (and d!1660147 b!5130991)))

(assert (=> bs!1196979 (not (= lambda!254049 lambda!253976))))

(declare-fun bs!1196980 () Bool)

(assert (= bs!1196980 (and d!1660147 b!5130857)))

(assert (=> bs!1196980 (not (= lambda!254049 lambda!253910))))

(declare-fun bs!1196981 () Bool)

(assert (= bs!1196981 (and d!1660147 b!5130956)))

(assert (=> bs!1196981 (not (= lambda!254049 lambda!253973))))

(declare-fun bs!1196982 () Bool)

(assert (= bs!1196982 (and d!1660147 d!1659881)))

(assert (=> bs!1196982 (not (= lambda!254049 lambda!253969))))

(declare-fun bs!1196983 () Bool)

(assert (= bs!1196983 (and d!1660147 b!5130842)))

(assert (=> bs!1196983 (not (= lambda!254049 lambda!253909))))

(declare-fun bs!1196984 () Bool)

(assert (= bs!1196984 (and d!1660147 d!1659919)))

(assert (=> bs!1196984 (not (= lambda!254049 lambda!253975))))

(declare-fun bs!1196985 () Bool)

(assert (= bs!1196985 (and d!1660147 d!1660135)))

(assert (=> bs!1196985 (not (= lambda!254049 lambda!254041))))

(declare-fun bs!1196986 () Bool)

(assert (= bs!1196986 (and d!1660147 b!5131005)))

(assert (=> bs!1196986 (not (= lambda!254049 lambda!253992))))

(assert (=> d!1660147 true))

(assert (=> d!1660147 (< (dynLambda!23682 order!26849 lambda!253908) (dynLambda!23682 order!26849 lambda!254049))))

(assert (=> d!1660147 (exists!1644 lt!2116678 lambda!254049)))

(assert (=> d!1660147 true))

(declare-fun _$97!176 () Unit!150733)

(assert (=> d!1660147 (= (choose!37865 lt!2116678 lambda!253908) _$97!176)))

(declare-fun bs!1196987 () Bool)

(assert (= bs!1196987 d!1660147))

(declare-fun m!6196358 () Bool)

(assert (=> bs!1196987 m!6196358))

(assert (=> d!1659925 d!1660147))

(declare-fun d!1660149 () Bool)

(declare-fun res!2185350 () Bool)

(declare-fun e!3200276 () Bool)

(assert (=> d!1660149 (=> res!2185350 e!3200276)))

(assert (=> d!1660149 (= res!2185350 ((_ is Nil!59484) lt!2116678))))

(assert (=> d!1660149 (= (forall!13759 lt!2116678 lambda!253908) e!3200276)))

(declare-fun b!5131184 () Bool)

(declare-fun e!3200277 () Bool)

(assert (=> b!5131184 (= e!3200276 e!3200277)))

(declare-fun res!2185351 () Bool)

(assert (=> b!5131184 (=> (not res!2185351) (not e!3200277))))

(assert (=> b!5131184 (= res!2185351 (dynLambda!23683 lambda!253908 (h!65932 lt!2116678)))))

(declare-fun b!5131185 () Bool)

(assert (=> b!5131185 (= e!3200277 (forall!13759 (t!372635 lt!2116678) lambda!253908))))

(assert (= (and d!1660149 (not res!2185350)) b!5131184))

(assert (= (and b!5131184 res!2185351) b!5131185))

(declare-fun b_lambda!199723 () Bool)

(assert (=> (not b_lambda!199723) (not b!5131184)))

(declare-fun m!6196360 () Bool)

(assert (=> b!5131184 m!6196360))

(declare-fun m!6196362 () Bool)

(assert (=> b!5131185 m!6196362))

(assert (=> d!1659925 d!1660149))

(declare-fun d!1660151 () Bool)

(declare-fun res!2185352 () Bool)

(declare-fun e!3200278 () Bool)

(assert (=> d!1660151 (=> res!2185352 e!3200278)))

(assert (=> d!1660151 (= res!2185352 ((_ is Nil!59484) (toList!8329 lt!2116675)))))

(assert (=> d!1660151 (= (forall!13759 (toList!8329 lt!2116675) lambda!253908) e!3200278)))

(declare-fun b!5131186 () Bool)

(declare-fun e!3200279 () Bool)

(assert (=> b!5131186 (= e!3200278 e!3200279)))

(declare-fun res!2185353 () Bool)

(assert (=> b!5131186 (=> (not res!2185353) (not e!3200279))))

(assert (=> b!5131186 (= res!2185353 (dynLambda!23683 lambda!253908 (h!65932 (toList!8329 lt!2116675))))))

(declare-fun b!5131187 () Bool)

(assert (=> b!5131187 (= e!3200279 (forall!13759 (t!372635 (toList!8329 lt!2116675)) lambda!253908))))

(assert (= (and d!1660151 (not res!2185352)) b!5131186))

(assert (= (and b!5131186 res!2185353) b!5131187))

(declare-fun b_lambda!199725 () Bool)

(assert (=> (not b_lambda!199725) (not b!5131186)))

(declare-fun m!6196364 () Bool)

(assert (=> b!5131186 m!6196364))

(declare-fun m!6196366 () Bool)

(assert (=> b!5131187 m!6196366))

(assert (=> d!1659933 d!1660151))

(assert (=> d!1659933 d!1659927))

(declare-fun d!1660153 () Bool)

(declare-fun res!2185356 () Bool)

(assert (=> d!1660153 (= res!2185356 (forall!13759 (toList!8329 lt!2116675) lambda!253908))))

(assert (=> d!1660153 true))

(assert (=> d!1660153 (= (choose!37868 lt!2116675 lambda!253908) res!2185356)))

(declare-fun bs!1196988 () Bool)

(assert (= bs!1196988 d!1660153))

(assert (=> bs!1196988 m!6195688))

(assert (=> bs!1196988 m!6195688))

(assert (=> bs!1196988 m!6195970))

(assert (=> d!1659933 d!1660153))

(declare-fun bs!1196989 () Bool)

(declare-fun d!1660155 () Bool)

(assert (= bs!1196989 (and d!1660155 d!1660143)))

(declare-fun lambda!254050 () Int)

(assert (=> bs!1196989 (= (= lambda!253990 lambda!253969) (= lambda!254050 lambda!254045))))

(declare-fun bs!1196990 () Bool)

(assert (= bs!1196990 (and d!1660155 d!1659911)))

(assert (=> bs!1196990 (not (= lambda!254050 lambda!253972))))

(declare-fun bs!1196991 () Bool)

(assert (= bs!1196991 (and d!1660155 b!5130957)))

(assert (=> bs!1196991 (not (= lambda!254050 lambda!253974))))

(declare-fun bs!1196992 () Bool)

(assert (= bs!1196992 (and d!1660155 d!1659925)))

(assert (=> bs!1196992 (= (= lambda!253990 lambda!253908) (= lambda!254050 lambda!253983))))

(declare-fun bs!1196993 () Bool)

(assert (= bs!1196993 (and d!1660155 b!5130944)))

(assert (=> bs!1196993 (not (= lambda!254050 lambda!253971))))

(declare-fun bs!1196994 () Bool)

(assert (= bs!1196994 (and d!1660155 b!5130845)))

(assert (=> bs!1196994 (not (= lambda!254050 lambda!253908))))

(declare-fun bs!1196995 () Bool)

(assert (= bs!1196995 (and d!1660155 b!5130992)))

(assert (=> bs!1196995 (not (= lambda!254050 lambda!253977))))

(declare-fun bs!1196996 () Bool)

(assert (= bs!1196996 (and d!1660155 d!1660139)))

(assert (=> bs!1196996 (= (= lambda!253990 lambda!253909) (= lambda!254050 lambda!254042))))

(declare-fun bs!1196997 () Bool)

(assert (= bs!1196997 (and d!1660155 d!1659923)))

(assert (=> bs!1196997 (= (= lambda!253990 lambda!253909) (= lambda!254050 lambda!253980))))

(declare-fun bs!1196998 () Bool)

(assert (= bs!1196998 (and d!1660155 d!1659869)))

(assert (=> bs!1196998 (not (= lambda!254050 lambda!253949))))

(declare-fun bs!1196999 () Bool)

(assert (= bs!1196999 (and d!1660155 d!1660145)))

(assert (=> bs!1196999 (= (= lambda!253990 lambda!253983) (= lambda!254050 lambda!254046))))

(declare-fun bs!1197000 () Bool)

(assert (= bs!1197000 (and d!1660155 b!5130943)))

(assert (=> bs!1197000 (not (= lambda!254050 lambda!253970))))

(declare-fun bs!1197001 () Bool)

(assert (= bs!1197001 (and d!1660155 b!5131004)))

(assert (=> bs!1197001 (not (= lambda!254050 lambda!253991))))

(declare-fun bs!1197002 () Bool)

(assert (= bs!1197002 (and d!1660155 d!1659941)))

(assert (=> bs!1197002 (not (= lambda!254050 lambda!253990))))

(declare-fun bs!1197003 () Bool)

(assert (= bs!1197003 (and d!1660155 b!5130991)))

(assert (=> bs!1197003 (not (= lambda!254050 lambda!253976))))

(declare-fun bs!1197004 () Bool)

(assert (= bs!1197004 (and d!1660155 b!5130857)))

(assert (=> bs!1197004 (not (= lambda!254050 lambda!253910))))

(declare-fun bs!1197005 () Bool)

(assert (= bs!1197005 (and d!1660155 b!5130956)))

(assert (=> bs!1197005 (not (= lambda!254050 lambda!253973))))

(declare-fun bs!1197006 () Bool)

(assert (= bs!1197006 (and d!1660155 d!1659881)))

(assert (=> bs!1197006 (not (= lambda!254050 lambda!253969))))

(declare-fun bs!1197007 () Bool)

(assert (= bs!1197007 (and d!1660155 b!5130842)))

(assert (=> bs!1197007 (not (= lambda!254050 lambda!253909))))

(declare-fun bs!1197008 () Bool)

(assert (= bs!1197008 (and d!1660155 d!1659919)))

(assert (=> bs!1197008 (not (= lambda!254050 lambda!253975))))

(declare-fun bs!1197009 () Bool)

(assert (= bs!1197009 (and d!1660155 d!1660135)))

(assert (=> bs!1197009 (not (= lambda!254050 lambda!254041))))

(declare-fun bs!1197010 () Bool)

(assert (= bs!1197010 (and d!1660155 b!5131005)))

(assert (=> bs!1197010 (not (= lambda!254050 lambda!253992))))

(declare-fun bs!1197011 () Bool)

(assert (= bs!1197011 (and d!1660155 d!1660147)))

(assert (=> bs!1197011 (= (= lambda!253990 lambda!253908) (= lambda!254050 lambda!254049))))

(assert (=> d!1660155 true))

(assert (=> d!1660155 (< (dynLambda!23682 order!26849 lambda!253990) (dynLambda!23682 order!26849 lambda!254050))))

(assert (=> d!1660155 (not (exists!1644 lt!2116838 lambda!254050))))

(declare-fun lt!2116884 () Unit!150733)

(assert (=> d!1660155 (= lt!2116884 (choose!37871 lt!2116838 lambda!253990))))

(assert (=> d!1660155 (forall!13759 lt!2116838 lambda!253990)))

(assert (=> d!1660155 (= (lemmaForallThenNotExists!352 lt!2116838 lambda!253990) lt!2116884)))

(declare-fun bs!1197012 () Bool)

(assert (= bs!1197012 d!1660155))

(declare-fun m!6196368 () Bool)

(assert (=> bs!1197012 m!6196368))

(declare-fun m!6196370 () Bool)

(assert (=> bs!1197012 m!6196370))

(declare-fun m!6196372 () Bool)

(assert (=> bs!1197012 m!6196372))

(assert (=> b!5131005 d!1660155))

(declare-fun bs!1197013 () Bool)

(declare-fun d!1660157 () Bool)

(assert (= bs!1197013 (and d!1660157 d!1660143)))

(declare-fun lambda!254051 () Int)

(assert (=> bs!1197013 (= (= (ite c!882640 lambda!253970 lambda!253971) lambda!253969) (= lambda!254051 lambda!254045))))

(declare-fun bs!1197014 () Bool)

(assert (= bs!1197014 (and d!1660157 d!1659911)))

(assert (=> bs!1197014 (not (= lambda!254051 lambda!253972))))

(declare-fun bs!1197015 () Bool)

(assert (= bs!1197015 (and d!1660157 b!5130957)))

(assert (=> bs!1197015 (not (= lambda!254051 lambda!253974))))

(declare-fun bs!1197016 () Bool)

(assert (= bs!1197016 (and d!1660157 d!1659925)))

(assert (=> bs!1197016 (= (= (ite c!882640 lambda!253970 lambda!253971) lambda!253908) (= lambda!254051 lambda!253983))))

(declare-fun bs!1197017 () Bool)

(assert (= bs!1197017 (and d!1660157 b!5130944)))

(assert (=> bs!1197017 (not (= lambda!254051 lambda!253971))))

(declare-fun bs!1197018 () Bool)

(assert (= bs!1197018 (and d!1660157 b!5130845)))

(assert (=> bs!1197018 (not (= lambda!254051 lambda!253908))))

(declare-fun bs!1197019 () Bool)

(assert (= bs!1197019 (and d!1660157 b!5130992)))

(assert (=> bs!1197019 (not (= lambda!254051 lambda!253977))))

(declare-fun bs!1197020 () Bool)

(assert (= bs!1197020 (and d!1660157 d!1659923)))

(assert (=> bs!1197020 (= (= (ite c!882640 lambda!253970 lambda!253971) lambda!253909) (= lambda!254051 lambda!253980))))

(declare-fun bs!1197021 () Bool)

(assert (= bs!1197021 (and d!1660157 d!1659869)))

(assert (=> bs!1197021 (not (= lambda!254051 lambda!253949))))

(declare-fun bs!1197022 () Bool)

(assert (= bs!1197022 (and d!1660157 d!1660145)))

(assert (=> bs!1197022 (= (= (ite c!882640 lambda!253970 lambda!253971) lambda!253983) (= lambda!254051 lambda!254046))))

(declare-fun bs!1197023 () Bool)

(assert (= bs!1197023 (and d!1660157 b!5130943)))

(assert (=> bs!1197023 (not (= lambda!254051 lambda!253970))))

(declare-fun bs!1197024 () Bool)

(assert (= bs!1197024 (and d!1660157 b!5131004)))

(assert (=> bs!1197024 (not (= lambda!254051 lambda!253991))))

(declare-fun bs!1197025 () Bool)

(assert (= bs!1197025 (and d!1660157 d!1659941)))

(assert (=> bs!1197025 (not (= lambda!254051 lambda!253990))))

(declare-fun bs!1197026 () Bool)

(assert (= bs!1197026 (and d!1660157 b!5130991)))

(assert (=> bs!1197026 (not (= lambda!254051 lambda!253976))))

(declare-fun bs!1197027 () Bool)

(assert (= bs!1197027 (and d!1660157 b!5130857)))

(assert (=> bs!1197027 (not (= lambda!254051 lambda!253910))))

(declare-fun bs!1197028 () Bool)

(assert (= bs!1197028 (and d!1660157 b!5130956)))

(assert (=> bs!1197028 (not (= lambda!254051 lambda!253973))))

(declare-fun bs!1197029 () Bool)

(assert (= bs!1197029 (and d!1660157 d!1659881)))

(assert (=> bs!1197029 (not (= lambda!254051 lambda!253969))))

(declare-fun bs!1197030 () Bool)

(assert (= bs!1197030 (and d!1660157 b!5130842)))

(assert (=> bs!1197030 (not (= lambda!254051 lambda!253909))))

(declare-fun bs!1197031 () Bool)

(assert (= bs!1197031 (and d!1660157 d!1659919)))

(assert (=> bs!1197031 (not (= lambda!254051 lambda!253975))))

(declare-fun bs!1197032 () Bool)

(assert (= bs!1197032 (and d!1660157 d!1660155)))

(assert (=> bs!1197032 (= (= (ite c!882640 lambda!253970 lambda!253971) lambda!253990) (= lambda!254051 lambda!254050))))

(declare-fun bs!1197033 () Bool)

(assert (= bs!1197033 (and d!1660157 d!1660139)))

(assert (=> bs!1197033 (= (= (ite c!882640 lambda!253970 lambda!253971) lambda!253909) (= lambda!254051 lambda!254042))))

(declare-fun bs!1197034 () Bool)

(assert (= bs!1197034 (and d!1660157 d!1660135)))

(assert (=> bs!1197034 (not (= lambda!254051 lambda!254041))))

(declare-fun bs!1197035 () Bool)

(assert (= bs!1197035 (and d!1660157 b!5131005)))

(assert (=> bs!1197035 (not (= lambda!254051 lambda!253992))))

(declare-fun bs!1197036 () Bool)

(assert (= bs!1197036 (and d!1660157 d!1660147)))

(assert (=> bs!1197036 (= (= (ite c!882640 lambda!253970 lambda!253971) lambda!253908) (= lambda!254051 lambda!254049))))

(assert (=> d!1660157 true))

(assert (=> d!1660157 (< (dynLambda!23682 order!26849 (ite c!882640 lambda!253970 lambda!253971)) (dynLambda!23682 order!26849 lambda!254051))))

(assert (=> d!1660157 (= (exists!1644 (ite c!882640 lt!2116792 lt!2116789) (ite c!882640 lambda!253970 lambda!253971)) (not (forall!13759 (ite c!882640 lt!2116792 lt!2116789) lambda!254051)))))

(declare-fun bs!1197037 () Bool)

(assert (= bs!1197037 d!1660157))

(declare-fun m!6196374 () Bool)

(assert (=> bs!1197037 m!6196374))

(assert (=> bm!357075 d!1660157))

(declare-fun d!1660159 () Bool)

(assert (=> d!1660159 (= (head!10983 lt!2116678) (h!65932 lt!2116678))))

(assert (=> b!5130990 d!1660159))

(declare-fun bs!1197038 () Bool)

(declare-fun d!1660161 () Bool)

(assert (= bs!1197038 (and d!1660161 d!1660157)))

(declare-fun lambda!254052 () Int)

(assert (=> bs!1197038 (= (= (ite c!882657 lambda!253991 lambda!253992) (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254052 lambda!254051))))

(declare-fun bs!1197039 () Bool)

(assert (= bs!1197039 (and d!1660161 d!1660143)))

(assert (=> bs!1197039 (= (= (ite c!882657 lambda!253991 lambda!253992) lambda!253969) (= lambda!254052 lambda!254045))))

(declare-fun bs!1197040 () Bool)

(assert (= bs!1197040 (and d!1660161 d!1659911)))

(assert (=> bs!1197040 (not (= lambda!254052 lambda!253972))))

(declare-fun bs!1197041 () Bool)

(assert (= bs!1197041 (and d!1660161 b!5130957)))

(assert (=> bs!1197041 (not (= lambda!254052 lambda!253974))))

(declare-fun bs!1197042 () Bool)

(assert (= bs!1197042 (and d!1660161 d!1659925)))

(assert (=> bs!1197042 (= (= (ite c!882657 lambda!253991 lambda!253992) lambda!253908) (= lambda!254052 lambda!253983))))

(declare-fun bs!1197043 () Bool)

(assert (= bs!1197043 (and d!1660161 b!5130944)))

(assert (=> bs!1197043 (not (= lambda!254052 lambda!253971))))

(declare-fun bs!1197044 () Bool)

(assert (= bs!1197044 (and d!1660161 b!5130845)))

(assert (=> bs!1197044 (not (= lambda!254052 lambda!253908))))

(declare-fun bs!1197045 () Bool)

(assert (= bs!1197045 (and d!1660161 b!5130992)))

(assert (=> bs!1197045 (not (= lambda!254052 lambda!253977))))

(declare-fun bs!1197046 () Bool)

(assert (= bs!1197046 (and d!1660161 d!1659923)))

(assert (=> bs!1197046 (= (= (ite c!882657 lambda!253991 lambda!253992) lambda!253909) (= lambda!254052 lambda!253980))))

(declare-fun bs!1197047 () Bool)

(assert (= bs!1197047 (and d!1660161 d!1659869)))

(assert (=> bs!1197047 (not (= lambda!254052 lambda!253949))))

(declare-fun bs!1197048 () Bool)

(assert (= bs!1197048 (and d!1660161 d!1660145)))

(assert (=> bs!1197048 (= (= (ite c!882657 lambda!253991 lambda!253992) lambda!253983) (= lambda!254052 lambda!254046))))

(declare-fun bs!1197049 () Bool)

(assert (= bs!1197049 (and d!1660161 b!5130943)))

(assert (=> bs!1197049 (not (= lambda!254052 lambda!253970))))

(declare-fun bs!1197050 () Bool)

(assert (= bs!1197050 (and d!1660161 b!5131004)))

(assert (=> bs!1197050 (not (= lambda!254052 lambda!253991))))

(declare-fun bs!1197051 () Bool)

(assert (= bs!1197051 (and d!1660161 d!1659941)))

(assert (=> bs!1197051 (not (= lambda!254052 lambda!253990))))

(declare-fun bs!1197052 () Bool)

(assert (= bs!1197052 (and d!1660161 b!5130991)))

(assert (=> bs!1197052 (not (= lambda!254052 lambda!253976))))

(declare-fun bs!1197053 () Bool)

(assert (= bs!1197053 (and d!1660161 b!5130857)))

(assert (=> bs!1197053 (not (= lambda!254052 lambda!253910))))

(declare-fun bs!1197054 () Bool)

(assert (= bs!1197054 (and d!1660161 b!5130956)))

(assert (=> bs!1197054 (not (= lambda!254052 lambda!253973))))

(declare-fun bs!1197055 () Bool)

(assert (= bs!1197055 (and d!1660161 d!1659881)))

(assert (=> bs!1197055 (not (= lambda!254052 lambda!253969))))

(declare-fun bs!1197056 () Bool)

(assert (= bs!1197056 (and d!1660161 b!5130842)))

(assert (=> bs!1197056 (not (= lambda!254052 lambda!253909))))

(declare-fun bs!1197057 () Bool)

(assert (= bs!1197057 (and d!1660161 d!1659919)))

(assert (=> bs!1197057 (not (= lambda!254052 lambda!253975))))

(declare-fun bs!1197058 () Bool)

(assert (= bs!1197058 (and d!1660161 d!1660155)))

(assert (=> bs!1197058 (= (= (ite c!882657 lambda!253991 lambda!253992) lambda!253990) (= lambda!254052 lambda!254050))))

(declare-fun bs!1197059 () Bool)

(assert (= bs!1197059 (and d!1660161 d!1660139)))

(assert (=> bs!1197059 (= (= (ite c!882657 lambda!253991 lambda!253992) lambda!253909) (= lambda!254052 lambda!254042))))

(declare-fun bs!1197060 () Bool)

(assert (= bs!1197060 (and d!1660161 d!1660135)))

(assert (=> bs!1197060 (not (= lambda!254052 lambda!254041))))

(declare-fun bs!1197061 () Bool)

(assert (= bs!1197061 (and d!1660161 b!5131005)))

(assert (=> bs!1197061 (not (= lambda!254052 lambda!253992))))

(declare-fun bs!1197062 () Bool)

(assert (= bs!1197062 (and d!1660161 d!1660147)))

(assert (=> bs!1197062 (= (= (ite c!882657 lambda!253991 lambda!253992) lambda!253908) (= lambda!254052 lambda!254049))))

(assert (=> d!1660161 true))

(assert (=> d!1660161 (< (dynLambda!23682 order!26849 (ite c!882657 lambda!253991 lambda!253992)) (dynLambda!23682 order!26849 lambda!254052))))

(assert (=> d!1660161 (= (exists!1644 (ite c!882657 lt!2116841 lt!2116838) (ite c!882657 lambda!253991 lambda!253992)) (not (forall!13759 (ite c!882657 lt!2116841 lt!2116838) lambda!254052)))))

(declare-fun bs!1197063 () Bool)

(assert (= bs!1197063 d!1660161))

(declare-fun m!6196376 () Bool)

(assert (=> bs!1197063 m!6196376))

(assert (=> bm!357084 d!1660161))

(declare-fun bs!1197064 () Bool)

(declare-fun d!1660163 () Bool)

(assert (= bs!1197064 (and d!1660163 d!1659937)))

(declare-fun lambda!254055 () Int)

(assert (=> bs!1197064 (not (= lambda!254055 lambda!253989))))

(declare-fun bs!1197065 () Bool)

(assert (= bs!1197065 (and d!1660163 d!1659945)))

(assert (=> bs!1197065 (not (= lambda!254055 lambda!253995))))

(declare-fun bs!1197066 () Bool)

(assert (= bs!1197066 (and d!1660163 d!1659947)))

(assert (=> bs!1197066 (not (= lambda!254055 lambda!253996))))

(declare-fun bs!1197067 () Bool)

(assert (= bs!1197067 (and d!1660163 d!1660129)))

(assert (=> bs!1197067 (not (= lambda!254055 lambda!254038))))

(assert (=> d!1660163 true))

(declare-fun order!26853 () Int)

(declare-fun dynLambda!23685 (Int Int) Int)

(assert (=> d!1660163 (< (dynLambda!23685 order!26853 lambda!253996) (dynLambda!23685 order!26853 lambda!254055))))

(assert (=> d!1660163 (= (exists!1646 (exprs!4223 lt!2116671) lambda!253996) (not (forall!13761 (exprs!4223 lt!2116671) lambda!254055)))))

(declare-fun bs!1197068 () Bool)

(assert (= bs!1197068 d!1660163))

(declare-fun m!6196378 () Bool)

(assert (=> bs!1197068 m!6196378))

(assert (=> d!1659947 d!1660163))

(assert (=> d!1659917 d!1659923))

(declare-fun d!1660165 () Bool)

(declare-fun e!3200282 () Bool)

(assert (=> d!1660165 e!3200282))

(declare-fun res!2185357 () Bool)

(assert (=> d!1660165 (=> (not res!2185357) (not e!3200282))))

(declare-fun lt!2116885 () Context!7446)

(assert (=> d!1660165 (= res!2185357 (dynLambda!23683 lambda!253910 lt!2116885))))

(declare-fun e!3200283 () Context!7446)

(assert (=> d!1660165 (= lt!2116885 e!3200283)))

(declare-fun c!882699 () Bool)

(declare-fun e!3200280 () Bool)

(assert (=> d!1660165 (= c!882699 e!3200280)))

(declare-fun res!2185358 () Bool)

(assert (=> d!1660165 (=> (not res!2185358) (not e!3200280))))

(assert (=> d!1660165 (= res!2185358 ((_ is Cons!59484) (toList!8329 z!1054)))))

(assert (=> d!1660165 (exists!1644 (toList!8329 z!1054) lambda!253910)))

(assert (=> d!1660165 (= (getWitness!794 (toList!8329 z!1054) lambda!253910) lt!2116885)))

(declare-fun b!5131190 () Bool)

(declare-fun e!3200281 () Context!7446)

(assert (=> b!5131190 (= e!3200283 e!3200281)))

(declare-fun c!882700 () Bool)

(assert (=> b!5131190 (= c!882700 ((_ is Cons!59484) (toList!8329 z!1054)))))

(declare-fun b!5131191 () Bool)

(assert (=> b!5131191 (= e!3200283 (h!65932 (toList!8329 z!1054)))))

(declare-fun b!5131192 () Bool)

(assert (=> b!5131192 (= e!3200281 (getWitness!794 (t!372635 (toList!8329 z!1054)) lambda!253910))))

(declare-fun b!5131193 () Bool)

(assert (=> b!5131193 (= e!3200280 (dynLambda!23683 lambda!253910 (h!65932 (toList!8329 z!1054))))))

(declare-fun b!5131194 () Bool)

(assert (=> b!5131194 (= e!3200282 (contains!19636 (toList!8329 z!1054) lt!2116885))))

(declare-fun b!5131195 () Bool)

(declare-fun lt!2116886 () Unit!150733)

(declare-fun Unit!150754 () Unit!150733)

(assert (=> b!5131195 (= lt!2116886 Unit!150754)))

(assert (=> b!5131195 false))

(assert (=> b!5131195 (= e!3200281 (head!10983 (toList!8329 z!1054)))))

(assert (= (and d!1660165 res!2185358) b!5131193))

(assert (= (and d!1660165 c!882699) b!5131191))

(assert (= (and d!1660165 (not c!882699)) b!5131190))

(assert (= (and b!5131190 c!882700) b!5131192))

(assert (= (and b!5131190 (not c!882700)) b!5131195))

(assert (= (and d!1660165 res!2185357) b!5131194))

(declare-fun b_lambda!199727 () Bool)

(assert (=> (not b_lambda!199727) (not d!1660165)))

(declare-fun b_lambda!199729 () Bool)

(assert (=> (not b_lambda!199729) (not b!5131193)))

(declare-fun m!6196380 () Bool)

(assert (=> b!5131193 m!6196380))

(declare-fun m!6196382 () Bool)

(assert (=> b!5131192 m!6196382))

(assert (=> b!5131195 m!6195712))

(declare-fun m!6196384 () Bool)

(assert (=> b!5131195 m!6196384))

(assert (=> b!5131194 m!6195712))

(declare-fun m!6196386 () Bool)

(assert (=> b!5131194 m!6196386))

(declare-fun m!6196388 () Bool)

(assert (=> d!1660165 m!6196388))

(assert (=> d!1660165 m!6195712))

(assert (=> d!1660165 m!6195774))

(assert (=> d!1659943 d!1660165))

(assert (=> d!1659943 d!1659951))

(assert (=> d!1659943 d!1659863))

(declare-fun bs!1197069 () Bool)

(declare-fun d!1660167 () Bool)

(assert (= bs!1197069 (and d!1660167 d!1660157)))

(declare-fun lambda!254056 () Int)

(assert (=> bs!1197069 (= (= lambda!253972 (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254056 lambda!254051))))

(declare-fun bs!1197070 () Bool)

(assert (= bs!1197070 (and d!1660167 d!1660143)))

(assert (=> bs!1197070 (= (= lambda!253972 lambda!253969) (= lambda!254056 lambda!254045))))

(declare-fun bs!1197071 () Bool)

(assert (= bs!1197071 (and d!1660167 d!1659911)))

(assert (=> bs!1197071 (not (= lambda!254056 lambda!253972))))

(declare-fun bs!1197072 () Bool)

(assert (= bs!1197072 (and d!1660167 b!5130957)))

(assert (=> bs!1197072 (not (= lambda!254056 lambda!253974))))

(declare-fun bs!1197073 () Bool)

(assert (= bs!1197073 (and d!1660167 b!5130944)))

(assert (=> bs!1197073 (not (= lambda!254056 lambda!253971))))

(declare-fun bs!1197074 () Bool)

(assert (= bs!1197074 (and d!1660167 b!5130845)))

(assert (=> bs!1197074 (not (= lambda!254056 lambda!253908))))

(declare-fun bs!1197075 () Bool)

(assert (= bs!1197075 (and d!1660167 b!5130992)))

(assert (=> bs!1197075 (not (= lambda!254056 lambda!253977))))

(declare-fun bs!1197076 () Bool)

(assert (= bs!1197076 (and d!1660167 d!1659923)))

(assert (=> bs!1197076 (= (= lambda!253972 lambda!253909) (= lambda!254056 lambda!253980))))

(declare-fun bs!1197077 () Bool)

(assert (= bs!1197077 (and d!1660167 d!1659869)))

(assert (=> bs!1197077 (not (= lambda!254056 lambda!253949))))

(declare-fun bs!1197078 () Bool)

(assert (= bs!1197078 (and d!1660167 d!1660145)))

(assert (=> bs!1197078 (= (= lambda!253972 lambda!253983) (= lambda!254056 lambda!254046))))

(declare-fun bs!1197079 () Bool)

(assert (= bs!1197079 (and d!1660167 b!5130943)))

(assert (=> bs!1197079 (not (= lambda!254056 lambda!253970))))

(declare-fun bs!1197080 () Bool)

(assert (= bs!1197080 (and d!1660167 b!5131004)))

(assert (=> bs!1197080 (not (= lambda!254056 lambda!253991))))

(declare-fun bs!1197081 () Bool)

(assert (= bs!1197081 (and d!1660167 d!1659941)))

(assert (=> bs!1197081 (not (= lambda!254056 lambda!253990))))

(declare-fun bs!1197082 () Bool)

(assert (= bs!1197082 (and d!1660167 b!5130991)))

(assert (=> bs!1197082 (not (= lambda!254056 lambda!253976))))

(declare-fun bs!1197083 () Bool)

(assert (= bs!1197083 (and d!1660167 b!5130857)))

(assert (=> bs!1197083 (not (= lambda!254056 lambda!253910))))

(declare-fun bs!1197084 () Bool)

(assert (= bs!1197084 (and d!1660167 d!1660161)))

(assert (=> bs!1197084 (= (= lambda!253972 (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254056 lambda!254052))))

(declare-fun bs!1197085 () Bool)

(assert (= bs!1197085 (and d!1660167 d!1659925)))

(assert (=> bs!1197085 (= (= lambda!253972 lambda!253908) (= lambda!254056 lambda!253983))))

(declare-fun bs!1197086 () Bool)

(assert (= bs!1197086 (and d!1660167 b!5130956)))

(assert (=> bs!1197086 (not (= lambda!254056 lambda!253973))))

(declare-fun bs!1197087 () Bool)

(assert (= bs!1197087 (and d!1660167 d!1659881)))

(assert (=> bs!1197087 (not (= lambda!254056 lambda!253969))))

(declare-fun bs!1197088 () Bool)

(assert (= bs!1197088 (and d!1660167 b!5130842)))

(assert (=> bs!1197088 (not (= lambda!254056 lambda!253909))))

(declare-fun bs!1197089 () Bool)

(assert (= bs!1197089 (and d!1660167 d!1659919)))

(assert (=> bs!1197089 (not (= lambda!254056 lambda!253975))))

(declare-fun bs!1197090 () Bool)

(assert (= bs!1197090 (and d!1660167 d!1660155)))

(assert (=> bs!1197090 (= (= lambda!253972 lambda!253990) (= lambda!254056 lambda!254050))))

(declare-fun bs!1197091 () Bool)

(assert (= bs!1197091 (and d!1660167 d!1660139)))

(assert (=> bs!1197091 (= (= lambda!253972 lambda!253909) (= lambda!254056 lambda!254042))))

(declare-fun bs!1197092 () Bool)

(assert (= bs!1197092 (and d!1660167 d!1660135)))

(assert (=> bs!1197092 (not (= lambda!254056 lambda!254041))))

(declare-fun bs!1197093 () Bool)

(assert (= bs!1197093 (and d!1660167 b!5131005)))

(assert (=> bs!1197093 (not (= lambda!254056 lambda!253992))))

(declare-fun bs!1197094 () Bool)

(assert (= bs!1197094 (and d!1660167 d!1660147)))

(assert (=> bs!1197094 (= (= lambda!253972 lambda!253908) (= lambda!254056 lambda!254049))))

(assert (=> d!1660167 true))

(assert (=> d!1660167 (< (dynLambda!23682 order!26849 lambda!253972) (dynLambda!23682 order!26849 lambda!254056))))

(assert (=> d!1660167 (exists!1644 lt!2116802 lambda!254056)))

(declare-fun lt!2116887 () Unit!150733)

(assert (=> d!1660167 (= lt!2116887 (choose!37865 lt!2116802 lambda!253972))))

(assert (=> d!1660167 (not (forall!13759 lt!2116802 lambda!253972))))

(assert (=> d!1660167 (= (lemmaNotForallThenExists!377 lt!2116802 lambda!253972) lt!2116887)))

(declare-fun bs!1197095 () Bool)

(assert (= bs!1197095 d!1660167))

(declare-fun m!6196390 () Bool)

(assert (=> bs!1197095 m!6196390))

(declare-fun m!6196392 () Bool)

(assert (=> bs!1197095 m!6196392))

(declare-fun m!6196394 () Bool)

(assert (=> bs!1197095 m!6196394))

(assert (=> b!5130956 d!1660167))

(declare-fun d!1660169 () Bool)

(declare-fun res!2185359 () Bool)

(declare-fun e!3200284 () Bool)

(assert (=> d!1660169 (=> res!2185359 e!3200284)))

(assert (=> d!1660169 (= res!2185359 ((_ is Nil!59484) lt!2116678))))

(assert (=> d!1660169 (= (forall!13759 lt!2116678 lambda!253980) e!3200284)))

(declare-fun b!5131196 () Bool)

(declare-fun e!3200285 () Bool)

(assert (=> b!5131196 (= e!3200284 e!3200285)))

(declare-fun res!2185360 () Bool)

(assert (=> b!5131196 (=> (not res!2185360) (not e!3200285))))

(assert (=> b!5131196 (= res!2185360 (dynLambda!23683 lambda!253980 (h!65932 lt!2116678)))))

(declare-fun b!5131197 () Bool)

(assert (=> b!5131197 (= e!3200285 (forall!13759 (t!372635 lt!2116678) lambda!253980))))

(assert (= (and d!1660169 (not res!2185359)) b!5131196))

(assert (= (and b!5131196 res!2185360) b!5131197))

(declare-fun b_lambda!199731 () Bool)

(assert (=> (not b_lambda!199731) (not b!5131196)))

(declare-fun m!6196396 () Bool)

(assert (=> b!5131196 m!6196396))

(declare-fun m!6196398 () Bool)

(assert (=> b!5131197 m!6196398))

(assert (=> d!1659923 d!1660169))

(declare-fun d!1660171 () Bool)

(declare-fun c!882701 () Bool)

(declare-fun e!3200288 () Bool)

(assert (=> d!1660171 (= c!882701 e!3200288)))

(declare-fun res!2185361 () Bool)

(assert (=> d!1660171 (=> (not res!2185361) (not e!3200288))))

(assert (=> d!1660171 (= res!2185361 ((_ is Cons!59483) (exprs!4223 lt!2116845)))))

(declare-fun e!3200286 () (InoxSet Context!7446))

(assert (=> d!1660171 (= (derivationStepZipperUp!64 lt!2116845 a!1233) e!3200286)))

(declare-fun bm!357105 () Bool)

(declare-fun call!357110 () (InoxSet Context!7446))

(assert (=> bm!357105 (= call!357110 (derivationStepZipperDown!95 (h!65931 (exprs!4223 lt!2116845)) (Context!7447 (t!372634 (exprs!4223 lt!2116845))) a!1233))))

(declare-fun b!5131198 () Bool)

(declare-fun e!3200287 () (InoxSet Context!7446))

(assert (=> b!5131198 (= e!3200287 ((as const (Array Context!7446 Bool)) false))))

(declare-fun b!5131199 () Bool)

(assert (=> b!5131199 (= e!3200286 ((_ map or) call!357110 (derivationStepZipperUp!64 (Context!7447 (t!372634 (exprs!4223 lt!2116845))) a!1233)))))

(declare-fun b!5131200 () Bool)

(assert (=> b!5131200 (= e!3200287 call!357110)))

(declare-fun b!5131201 () Bool)

(assert (=> b!5131201 (= e!3200288 (nullable!4746 (h!65931 (exprs!4223 lt!2116845))))))

(declare-fun b!5131202 () Bool)

(assert (=> b!5131202 (= e!3200286 e!3200287)))

(declare-fun c!882702 () Bool)

(assert (=> b!5131202 (= c!882702 ((_ is Cons!59483) (exprs!4223 lt!2116845)))))

(assert (= (and d!1660171 res!2185361) b!5131201))

(assert (= (and d!1660171 c!882701) b!5131199))

(assert (= (and d!1660171 (not c!882701)) b!5131202))

(assert (= (and b!5131202 c!882702) b!5131200))

(assert (= (and b!5131202 (not c!882702)) b!5131198))

(assert (= (or b!5131199 b!5131200) bm!357105))

(declare-fun m!6196400 () Bool)

(assert (=> bm!357105 m!6196400))

(declare-fun m!6196402 () Bool)

(assert (=> b!5131199 m!6196402))

(declare-fun m!6196404 () Bool)

(assert (=> b!5131201 m!6196404))

(assert (=> bs!1196208 d!1660171))

(declare-fun d!1660173 () Bool)

(declare-fun lt!2116888 () Bool)

(assert (=> d!1660173 (= lt!2116888 (select (content!10569 (toList!8329 z!1054)) lt!2116671))))

(declare-fun e!3200290 () Bool)

(assert (=> d!1660173 (= lt!2116888 e!3200290)))

(declare-fun res!2185362 () Bool)

(assert (=> d!1660173 (=> (not res!2185362) (not e!3200290))))

(assert (=> d!1660173 (= res!2185362 ((_ is Cons!59484) (toList!8329 z!1054)))))

(assert (=> d!1660173 (= (contains!19636 (toList!8329 z!1054) lt!2116671) lt!2116888)))

(declare-fun b!5131203 () Bool)

(declare-fun e!3200289 () Bool)

(assert (=> b!5131203 (= e!3200290 e!3200289)))

(declare-fun res!2185363 () Bool)

(assert (=> b!5131203 (=> res!2185363 e!3200289)))

(assert (=> b!5131203 (= res!2185363 (= (h!65932 (toList!8329 z!1054)) lt!2116671))))

(declare-fun b!5131204 () Bool)

(assert (=> b!5131204 (= e!3200289 (contains!19636 (t!372635 (toList!8329 z!1054)) lt!2116671))))

(assert (= (and d!1660173 res!2185362) b!5131203))

(assert (= (and b!5131203 (not res!2185363)) b!5131204))

(assert (=> d!1660173 m!6195712))

(declare-fun m!6196406 () Bool)

(assert (=> d!1660173 m!6196406))

(declare-fun m!6196408 () Bool)

(assert (=> d!1660173 m!6196408))

(declare-fun m!6196410 () Bool)

(assert (=> b!5131204 m!6196410))

(assert (=> b!5131011 d!1660173))

(assert (=> d!1659915 d!1659911))

(assert (=> d!1659915 d!1659913))

(declare-fun d!1660175 () Bool)

(assert (=> d!1660175 (lostCauseZipper!1183 (derivationStepZipperUp!64 lt!2116671 a!1233))))

(assert (=> d!1660175 true))

(declare-fun _$38!407 () Unit!150733)

(assert (=> d!1660175 (= (choose!37864 lt!2116671 a!1233) _$38!407)))

(declare-fun bs!1197096 () Bool)

(assert (= bs!1197096 d!1660175))

(assert (=> bs!1197096 m!6195672))

(assert (=> bs!1197096 m!6195672))

(assert (=> bs!1197096 m!6195674))

(assert (=> d!1659915 d!1660175))

(assert (=> d!1659915 d!1659947))

(declare-fun d!1660177 () Bool)

(declare-fun e!3200291 () Bool)

(assert (=> d!1660177 e!3200291))

(declare-fun res!2185364 () Bool)

(assert (=> d!1660177 (=> (not res!2185364) (not e!3200291))))

(declare-fun lt!2116889 () List!59608)

(assert (=> d!1660177 (= res!2185364 (noDuplicate!1092 lt!2116889))))

(assert (=> d!1660177 (= lt!2116889 (choose!37866 (derivationStepZipperUp!64 lt!2116671 a!1233)))))

(assert (=> d!1660177 (= (toList!8329 (derivationStepZipperUp!64 lt!2116671 a!1233)) lt!2116889)))

(declare-fun b!5131205 () Bool)

(assert (=> b!5131205 (= e!3200291 (= (content!10569 lt!2116889) (derivationStepZipperUp!64 lt!2116671 a!1233)))))

(assert (= (and d!1660177 res!2185364) b!5131205))

(declare-fun m!6196412 () Bool)

(assert (=> d!1660177 m!6196412))

(assert (=> d!1660177 m!6195672))

(declare-fun m!6196414 () Bool)

(assert (=> d!1660177 m!6196414))

(declare-fun m!6196416 () Bool)

(assert (=> b!5131205 m!6196416))

(assert (=> bm!357076 d!1660177))

(declare-fun d!1660179 () Bool)

(declare-fun res!2185365 () Bool)

(declare-fun e!3200292 () Bool)

(assert (=> d!1660179 (=> res!2185365 e!3200292)))

(assert (=> d!1660179 (= res!2185365 ((_ is Nil!59484) (t!372635 lt!2116670)))))

(assert (=> d!1660179 (= (forall!13759 (t!372635 lt!2116670) lambda!253908) e!3200292)))

(declare-fun b!5131206 () Bool)

(declare-fun e!3200293 () Bool)

(assert (=> b!5131206 (= e!3200292 e!3200293)))

(declare-fun res!2185366 () Bool)

(assert (=> b!5131206 (=> (not res!2185366) (not e!3200293))))

(assert (=> b!5131206 (= res!2185366 (dynLambda!23683 lambda!253908 (h!65932 (t!372635 lt!2116670))))))

(declare-fun b!5131207 () Bool)

(assert (=> b!5131207 (= e!3200293 (forall!13759 (t!372635 (t!372635 lt!2116670)) lambda!253908))))

(assert (= (and d!1660179 (not res!2185365)) b!5131206))

(assert (= (and b!5131206 res!2185366) b!5131207))

(declare-fun b_lambda!199733 () Bool)

(assert (=> (not b_lambda!199733) (not b!5131206)))

(declare-fun m!6196418 () Bool)

(assert (=> b!5131206 m!6196418))

(declare-fun m!6196420 () Bool)

(assert (=> b!5131207 m!6196420))

(assert (=> b!5131018 d!1660179))

(declare-fun bs!1197097 () Bool)

(declare-fun d!1660181 () Bool)

(assert (= bs!1197097 (and d!1660181 d!1660157)))

(declare-fun lambda!254057 () Int)

(assert (=> bs!1197097 (= (= lambda!253975 (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254057 lambda!254051))))

(declare-fun bs!1197098 () Bool)

(assert (= bs!1197098 (and d!1660181 d!1660143)))

(assert (=> bs!1197098 (= (= lambda!253975 lambda!253969) (= lambda!254057 lambda!254045))))

(declare-fun bs!1197099 () Bool)

(assert (= bs!1197099 (and d!1660181 d!1659911)))

(assert (=> bs!1197099 (not (= lambda!254057 lambda!253972))))

(declare-fun bs!1197100 () Bool)

(assert (= bs!1197100 (and d!1660181 d!1660167)))

(assert (=> bs!1197100 (= (= lambda!253975 lambda!253972) (= lambda!254057 lambda!254056))))

(declare-fun bs!1197101 () Bool)

(assert (= bs!1197101 (and d!1660181 b!5130957)))

(assert (=> bs!1197101 (not (= lambda!254057 lambda!253974))))

(declare-fun bs!1197102 () Bool)

(assert (= bs!1197102 (and d!1660181 b!5130944)))

(assert (=> bs!1197102 (not (= lambda!254057 lambda!253971))))

(declare-fun bs!1197103 () Bool)

(assert (= bs!1197103 (and d!1660181 b!5130845)))

(assert (=> bs!1197103 (not (= lambda!254057 lambda!253908))))

(declare-fun bs!1197104 () Bool)

(assert (= bs!1197104 (and d!1660181 b!5130992)))

(assert (=> bs!1197104 (not (= lambda!254057 lambda!253977))))

(declare-fun bs!1197105 () Bool)

(assert (= bs!1197105 (and d!1660181 d!1659923)))

(assert (=> bs!1197105 (= (= lambda!253975 lambda!253909) (= lambda!254057 lambda!253980))))

(declare-fun bs!1197106 () Bool)

(assert (= bs!1197106 (and d!1660181 d!1659869)))

(assert (=> bs!1197106 (not (= lambda!254057 lambda!253949))))

(declare-fun bs!1197107 () Bool)

(assert (= bs!1197107 (and d!1660181 d!1660145)))

(assert (=> bs!1197107 (= (= lambda!253975 lambda!253983) (= lambda!254057 lambda!254046))))

(declare-fun bs!1197108 () Bool)

(assert (= bs!1197108 (and d!1660181 b!5130943)))

(assert (=> bs!1197108 (not (= lambda!254057 lambda!253970))))

(declare-fun bs!1197109 () Bool)

(assert (= bs!1197109 (and d!1660181 b!5131004)))

(assert (=> bs!1197109 (not (= lambda!254057 lambda!253991))))

(declare-fun bs!1197110 () Bool)

(assert (= bs!1197110 (and d!1660181 d!1659941)))

(assert (=> bs!1197110 (not (= lambda!254057 lambda!253990))))

(declare-fun bs!1197111 () Bool)

(assert (= bs!1197111 (and d!1660181 b!5130991)))

(assert (=> bs!1197111 (not (= lambda!254057 lambda!253976))))

(declare-fun bs!1197112 () Bool)

(assert (= bs!1197112 (and d!1660181 b!5130857)))

(assert (=> bs!1197112 (not (= lambda!254057 lambda!253910))))

(declare-fun bs!1197113 () Bool)

(assert (= bs!1197113 (and d!1660181 d!1660161)))

(assert (=> bs!1197113 (= (= lambda!253975 (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254057 lambda!254052))))

(declare-fun bs!1197114 () Bool)

(assert (= bs!1197114 (and d!1660181 d!1659925)))

(assert (=> bs!1197114 (= (= lambda!253975 lambda!253908) (= lambda!254057 lambda!253983))))

(declare-fun bs!1197115 () Bool)

(assert (= bs!1197115 (and d!1660181 b!5130956)))

(assert (=> bs!1197115 (not (= lambda!254057 lambda!253973))))

(declare-fun bs!1197116 () Bool)

(assert (= bs!1197116 (and d!1660181 d!1659881)))

(assert (=> bs!1197116 (not (= lambda!254057 lambda!253969))))

(declare-fun bs!1197117 () Bool)

(assert (= bs!1197117 (and d!1660181 b!5130842)))

(assert (=> bs!1197117 (not (= lambda!254057 lambda!253909))))

(declare-fun bs!1197118 () Bool)

(assert (= bs!1197118 (and d!1660181 d!1659919)))

(assert (=> bs!1197118 (not (= lambda!254057 lambda!253975))))

(declare-fun bs!1197119 () Bool)

(assert (= bs!1197119 (and d!1660181 d!1660155)))

(assert (=> bs!1197119 (= (= lambda!253975 lambda!253990) (= lambda!254057 lambda!254050))))

(declare-fun bs!1197120 () Bool)

(assert (= bs!1197120 (and d!1660181 d!1660139)))

(assert (=> bs!1197120 (= (= lambda!253975 lambda!253909) (= lambda!254057 lambda!254042))))

(declare-fun bs!1197121 () Bool)

(assert (= bs!1197121 (and d!1660181 d!1660135)))

(assert (=> bs!1197121 (not (= lambda!254057 lambda!254041))))

(declare-fun bs!1197122 () Bool)

(assert (= bs!1197122 (and d!1660181 b!5131005)))

(assert (=> bs!1197122 (not (= lambda!254057 lambda!253992))))

(declare-fun bs!1197123 () Bool)

(assert (= bs!1197123 (and d!1660181 d!1660147)))

(assert (=> bs!1197123 (= (= lambda!253975 lambda!253908) (= lambda!254057 lambda!254049))))

(assert (=> d!1660181 true))

(assert (=> d!1660181 (< (dynLambda!23682 order!26849 lambda!253975) (dynLambda!23682 order!26849 lambda!254057))))

(assert (=> d!1660181 (exists!1644 lt!2116819 lambda!254057)))

(declare-fun lt!2116890 () Unit!150733)

(assert (=> d!1660181 (= lt!2116890 (choose!37865 lt!2116819 lambda!253975))))

(assert (=> d!1660181 (not (forall!13759 lt!2116819 lambda!253975))))

(assert (=> d!1660181 (= (lemmaNotForallThenExists!377 lt!2116819 lambda!253975) lt!2116890)))

(declare-fun bs!1197124 () Bool)

(assert (= bs!1197124 d!1660181))

(declare-fun m!6196422 () Bool)

(assert (=> bs!1197124 m!6196422))

(declare-fun m!6196424 () Bool)

(assert (=> bs!1197124 m!6196424))

(declare-fun m!6196426 () Bool)

(assert (=> bs!1197124 m!6196426))

(assert (=> b!5130991 d!1660181))

(assert (=> bm!357081 d!1659951))

(declare-fun d!1660183 () Bool)

(assert (=> d!1660183 (dynLambda!23683 lambda!253908 lt!2116671)))

(assert (=> d!1660183 true))

(declare-fun _$7!2515 () Unit!150733)

(assert (=> d!1660183 (= (choose!37869 (toList!8329 z!1054) lambda!253908 lt!2116671) _$7!2515)))

(declare-fun b_lambda!199735 () Bool)

(assert (=> (not b_lambda!199735) (not d!1660183)))

(declare-fun bs!1197125 () Bool)

(assert (= bs!1197125 d!1660183))

(assert (=> bs!1197125 m!6196008))

(assert (=> d!1659949 d!1660183))

(declare-fun d!1660185 () Bool)

(declare-fun res!2185367 () Bool)

(declare-fun e!3200294 () Bool)

(assert (=> d!1660185 (=> res!2185367 e!3200294)))

(assert (=> d!1660185 (= res!2185367 ((_ is Nil!59484) (toList!8329 z!1054)))))

(assert (=> d!1660185 (= (forall!13759 (toList!8329 z!1054) lambda!253908) e!3200294)))

(declare-fun b!5131208 () Bool)

(declare-fun e!3200295 () Bool)

(assert (=> b!5131208 (= e!3200294 e!3200295)))

(declare-fun res!2185368 () Bool)

(assert (=> b!5131208 (=> (not res!2185368) (not e!3200295))))

(assert (=> b!5131208 (= res!2185368 (dynLambda!23683 lambda!253908 (h!65932 (toList!8329 z!1054))))))

(declare-fun b!5131209 () Bool)

(assert (=> b!5131209 (= e!3200295 (forall!13759 (t!372635 (toList!8329 z!1054)) lambda!253908))))

(assert (= (and d!1660185 (not res!2185367)) b!5131208))

(assert (= (and b!5131208 res!2185368) b!5131209))

(declare-fun b_lambda!199737 () Bool)

(assert (=> (not b_lambda!199737) (not b!5131208)))

(declare-fun m!6196428 () Bool)

(assert (=> b!5131208 m!6196428))

(declare-fun m!6196430 () Bool)

(assert (=> b!5131209 m!6196430))

(assert (=> d!1659949 d!1660185))

(declare-fun bs!1197126 () Bool)

(declare-fun d!1660187 () Bool)

(assert (= bs!1197126 (and d!1660187 d!1659945)))

(declare-fun lambda!254058 () Int)

(assert (=> bs!1197126 (not (= lambda!254058 lambda!253995))))

(declare-fun bs!1197127 () Bool)

(assert (= bs!1197127 (and d!1660187 d!1659937)))

(assert (=> bs!1197127 (= lambda!254058 lambda!253989)))

(declare-fun bs!1197128 () Bool)

(assert (= bs!1197128 (and d!1660187 d!1659947)))

(assert (=> bs!1197128 (= lambda!254058 lambda!253996)))

(declare-fun bs!1197129 () Bool)

(assert (= bs!1197129 (and d!1660187 d!1660163)))

(assert (=> bs!1197129 (not (= lambda!254058 lambda!254055))))

(declare-fun bs!1197130 () Bool)

(assert (= bs!1197130 (and d!1660187 d!1660129)))

(assert (=> bs!1197130 (= lambda!254058 lambda!254038)))

(assert (=> d!1660187 (= (lostCause!1292 (h!65932 lt!2116678)) (exists!1646 (exprs!4223 (h!65932 lt!2116678)) lambda!254058))))

(declare-fun bs!1197131 () Bool)

(assert (= bs!1197131 d!1660187))

(declare-fun m!6196432 () Bool)

(assert (=> bs!1197131 m!6196432))

(assert (=> bs!1196205 d!1660187))

(declare-fun d!1660189 () Bool)

(assert (=> d!1660189 (= (isEmpty!31990 (getLanguageWitness!862 lt!2116676)) (not ((_ is Some!14728) (getLanguageWitness!862 lt!2116676))))))

(assert (=> d!1659881 d!1660189))

(declare-fun bs!1197132 () Bool)

(declare-fun d!1660191 () Bool)

(assert (= bs!1197132 (and d!1660191 d!1660143)))

(declare-fun lambda!254065 () Int)

(assert (=> bs!1197132 (not (= lambda!254065 lambda!254045))))

(declare-fun bs!1197133 () Bool)

(assert (= bs!1197133 (and d!1660191 d!1659911)))

(assert (=> bs!1197133 (not (= lambda!254065 lambda!253972))))

(declare-fun bs!1197134 () Bool)

(assert (= bs!1197134 (and d!1660191 d!1660167)))

(assert (=> bs!1197134 (not (= lambda!254065 lambda!254056))))

(declare-fun bs!1197135 () Bool)

(assert (= bs!1197135 (and d!1660191 b!5130957)))

(assert (=> bs!1197135 (= lambda!254065 lambda!253974)))

(declare-fun bs!1197136 () Bool)

(assert (= bs!1197136 (and d!1660191 b!5130944)))

(assert (=> bs!1197136 (= lambda!254065 lambda!253971)))

(declare-fun bs!1197137 () Bool)

(assert (= bs!1197137 (and d!1660191 b!5130845)))

(assert (=> bs!1197137 (not (= lambda!254065 lambda!253908))))

(declare-fun bs!1197138 () Bool)

(assert (= bs!1197138 (and d!1660191 b!5130992)))

(assert (=> bs!1197138 (= lambda!254065 lambda!253977)))

(declare-fun bs!1197139 () Bool)

(assert (= bs!1197139 (and d!1660191 d!1659923)))

(assert (=> bs!1197139 (not (= lambda!254065 lambda!253980))))

(declare-fun bs!1197140 () Bool)

(assert (= bs!1197140 (and d!1660191 d!1659869)))

(assert (=> bs!1197140 (not (= lambda!254065 lambda!253949))))

(declare-fun bs!1197141 () Bool)

(assert (= bs!1197141 (and d!1660191 d!1660145)))

(assert (=> bs!1197141 (not (= lambda!254065 lambda!254046))))

(declare-fun bs!1197142 () Bool)

(assert (= bs!1197142 (and d!1660191 b!5130943)))

(assert (=> bs!1197142 (= lambda!254065 lambda!253970)))

(declare-fun bs!1197143 () Bool)

(assert (= bs!1197143 (and d!1660191 b!5131004)))

(assert (=> bs!1197143 (= lambda!254065 lambda!253991)))

(declare-fun bs!1197144 () Bool)

(assert (= bs!1197144 (and d!1660191 d!1659941)))

(assert (=> bs!1197144 (not (= lambda!254065 lambda!253990))))

(declare-fun bs!1197145 () Bool)

(assert (= bs!1197145 (and d!1660191 d!1660157)))

(assert (=> bs!1197145 (not (= lambda!254065 lambda!254051))))

(declare-fun bs!1197146 () Bool)

(assert (= bs!1197146 (and d!1660191 d!1660181)))

(assert (=> bs!1197146 (not (= lambda!254065 lambda!254057))))

(declare-fun bs!1197147 () Bool)

(assert (= bs!1197147 (and d!1660191 b!5130991)))

(assert (=> bs!1197147 (= lambda!254065 lambda!253976)))

(declare-fun bs!1197148 () Bool)

(assert (= bs!1197148 (and d!1660191 b!5130857)))

(assert (=> bs!1197148 (not (= lambda!254065 lambda!253910))))

(declare-fun bs!1197149 () Bool)

(assert (= bs!1197149 (and d!1660191 d!1660161)))

(assert (=> bs!1197149 (not (= lambda!254065 lambda!254052))))

(declare-fun bs!1197150 () Bool)

(assert (= bs!1197150 (and d!1660191 d!1659925)))

(assert (=> bs!1197150 (not (= lambda!254065 lambda!253983))))

(declare-fun bs!1197151 () Bool)

(assert (= bs!1197151 (and d!1660191 b!5130956)))

(assert (=> bs!1197151 (= lambda!254065 lambda!253973)))

(declare-fun bs!1197152 () Bool)

(assert (= bs!1197152 (and d!1660191 d!1659881)))

(assert (=> bs!1197152 (not (= lambda!254065 lambda!253969))))

(declare-fun bs!1197153 () Bool)

(assert (= bs!1197153 (and d!1660191 b!5130842)))

(assert (=> bs!1197153 (= lambda!254065 lambda!253909)))

(declare-fun bs!1197154 () Bool)

(assert (= bs!1197154 (and d!1660191 d!1659919)))

(assert (=> bs!1197154 (not (= lambda!254065 lambda!253975))))

(declare-fun bs!1197155 () Bool)

(assert (= bs!1197155 (and d!1660191 d!1660155)))

(assert (=> bs!1197155 (not (= lambda!254065 lambda!254050))))

(declare-fun bs!1197156 () Bool)

(assert (= bs!1197156 (and d!1660191 d!1660139)))

(assert (=> bs!1197156 (not (= lambda!254065 lambda!254042))))

(declare-fun bs!1197157 () Bool)

(assert (= bs!1197157 (and d!1660191 d!1660135)))

(assert (=> bs!1197157 (not (= lambda!254065 lambda!254041))))

(declare-fun bs!1197158 () Bool)

(assert (= bs!1197158 (and d!1660191 b!5131005)))

(assert (=> bs!1197158 (= lambda!254065 lambda!253992)))

(declare-fun bs!1197159 () Bool)

(assert (= bs!1197159 (and d!1660191 d!1660147)))

(assert (=> bs!1197159 (not (= lambda!254065 lambda!254049))))

(declare-fun lt!2116893 () Option!14729)

(declare-fun isDefined!11524 (Option!14729) Bool)

(assert (=> d!1660191 (= (isDefined!11524 lt!2116893) (exists!1643 lt!2116676 lambda!254065))))

(declare-fun e!3200298 () Option!14729)

(assert (=> d!1660191 (= lt!2116893 e!3200298)))

(declare-fun c!882711 () Bool)

(assert (=> d!1660191 (= c!882711 (exists!1643 lt!2116676 lambda!254065))))

(assert (=> d!1660191 (= (getLanguageWitness!862 lt!2116676) lt!2116893)))

(declare-fun b!5131214 () Bool)

(declare-fun getLanguageWitness!864 (Context!7446) Option!14729)

(assert (=> b!5131214 (= e!3200298 (getLanguageWitness!864 (getWitness!795 lt!2116676 lambda!254065)))))

(declare-fun b!5131215 () Bool)

(assert (=> b!5131215 (= e!3200298 None!14728)))

(assert (= (and d!1660191 c!882711) b!5131214))

(assert (= (and d!1660191 (not c!882711)) b!5131215))

(declare-fun m!6196434 () Bool)

(assert (=> d!1660191 m!6196434))

(declare-fun m!6196436 () Bool)

(assert (=> d!1660191 m!6196436))

(assert (=> d!1660191 m!6196436))

(declare-fun m!6196438 () Bool)

(assert (=> b!5131214 m!6196438))

(assert (=> b!5131214 m!6196438))

(declare-fun m!6196440 () Bool)

(assert (=> b!5131214 m!6196440))

(assert (=> d!1659881 d!1660191))

(declare-fun d!1660193 () Bool)

(declare-fun lt!2116894 () Bool)

(assert (=> d!1660193 (= lt!2116894 (forall!13759 (toList!8329 lt!2116676) lambda!253969))))

(assert (=> d!1660193 (= lt!2116894 (choose!37868 lt!2116676 lambda!253969))))

(assert (=> d!1660193 (= (forall!13758 lt!2116676 lambda!253969) lt!2116894)))

(declare-fun bs!1197160 () Bool)

(assert (= bs!1197160 d!1660193))

(assert (=> bs!1197160 m!6195698))

(assert (=> bs!1197160 m!6195698))

(declare-fun m!6196442 () Bool)

(assert (=> bs!1197160 m!6196442))

(declare-fun m!6196444 () Bool)

(assert (=> bs!1197160 m!6196444))

(assert (=> d!1659881 d!1660193))

(assert (=> d!1659935 d!1660185))

(assert (=> d!1659935 d!1659951))

(declare-fun d!1660195 () Bool)

(declare-fun res!2185369 () Bool)

(assert (=> d!1660195 (= res!2185369 (forall!13759 (toList!8329 z!1054) lambda!253908))))

(assert (=> d!1660195 true))

(assert (=> d!1660195 (= (choose!37868 z!1054 lambda!253908) res!2185369)))

(declare-fun bs!1197161 () Bool)

(assert (= bs!1197161 d!1660195))

(assert (=> bs!1197161 m!6195712))

(assert (=> bs!1197161 m!6195712))

(assert (=> bs!1197161 m!6195974))

(assert (=> d!1659935 d!1660195))

(declare-fun d!1660197 () Bool)

(assert (=> d!1660197 (= (isEmpty!31990 (getLanguageWitness!862 (derivationStepZipperUp!64 lt!2116671 a!1233))) (not ((_ is Some!14728) (getLanguageWitness!862 (derivationStepZipperUp!64 lt!2116671 a!1233)))))))

(assert (=> d!1659911 d!1660197))

(declare-fun bs!1197162 () Bool)

(declare-fun d!1660199 () Bool)

(assert (= bs!1197162 (and d!1660199 d!1660143)))

(declare-fun lambda!254066 () Int)

(assert (=> bs!1197162 (not (= lambda!254066 lambda!254045))))

(declare-fun bs!1197163 () Bool)

(assert (= bs!1197163 (and d!1660199 d!1659911)))

(assert (=> bs!1197163 (not (= lambda!254066 lambda!253972))))

(declare-fun bs!1197164 () Bool)

(assert (= bs!1197164 (and d!1660199 d!1660167)))

(assert (=> bs!1197164 (not (= lambda!254066 lambda!254056))))

(declare-fun bs!1197165 () Bool)

(assert (= bs!1197165 (and d!1660199 b!5130957)))

(assert (=> bs!1197165 (= lambda!254066 lambda!253974)))

(declare-fun bs!1197166 () Bool)

(assert (= bs!1197166 (and d!1660199 b!5130944)))

(assert (=> bs!1197166 (= lambda!254066 lambda!253971)))

(declare-fun bs!1197167 () Bool)

(assert (= bs!1197167 (and d!1660199 b!5130845)))

(assert (=> bs!1197167 (not (= lambda!254066 lambda!253908))))

(declare-fun bs!1197168 () Bool)

(assert (= bs!1197168 (and d!1660199 b!5130992)))

(assert (=> bs!1197168 (= lambda!254066 lambda!253977)))

(declare-fun bs!1197169 () Bool)

(assert (= bs!1197169 (and d!1660199 d!1659923)))

(assert (=> bs!1197169 (not (= lambda!254066 lambda!253980))))

(declare-fun bs!1197170 () Bool)

(assert (= bs!1197170 (and d!1660199 d!1659869)))

(assert (=> bs!1197170 (not (= lambda!254066 lambda!253949))))

(declare-fun bs!1197171 () Bool)

(assert (= bs!1197171 (and d!1660199 d!1660145)))

(assert (=> bs!1197171 (not (= lambda!254066 lambda!254046))))

(declare-fun bs!1197172 () Bool)

(assert (= bs!1197172 (and d!1660199 b!5130943)))

(assert (=> bs!1197172 (= lambda!254066 lambda!253970)))

(declare-fun bs!1197173 () Bool)

(assert (= bs!1197173 (and d!1660199 b!5131004)))

(assert (=> bs!1197173 (= lambda!254066 lambda!253991)))

(declare-fun bs!1197174 () Bool)

(assert (= bs!1197174 (and d!1660199 d!1659941)))

(assert (=> bs!1197174 (not (= lambda!254066 lambda!253990))))

(declare-fun bs!1197175 () Bool)

(assert (= bs!1197175 (and d!1660199 d!1660157)))

(assert (=> bs!1197175 (not (= lambda!254066 lambda!254051))))

(declare-fun bs!1197176 () Bool)

(assert (= bs!1197176 (and d!1660199 d!1660181)))

(assert (=> bs!1197176 (not (= lambda!254066 lambda!254057))))

(declare-fun bs!1197177 () Bool)

(assert (= bs!1197177 (and d!1660199 b!5130991)))

(assert (=> bs!1197177 (= lambda!254066 lambda!253976)))

(declare-fun bs!1197178 () Bool)

(assert (= bs!1197178 (and d!1660199 b!5130857)))

(assert (=> bs!1197178 (not (= lambda!254066 lambda!253910))))

(declare-fun bs!1197179 () Bool)

(assert (= bs!1197179 (and d!1660199 d!1660161)))

(assert (=> bs!1197179 (not (= lambda!254066 lambda!254052))))

(declare-fun bs!1197180 () Bool)

(assert (= bs!1197180 (and d!1660199 d!1659925)))

(assert (=> bs!1197180 (not (= lambda!254066 lambda!253983))))

(declare-fun bs!1197181 () Bool)

(assert (= bs!1197181 (and d!1660199 b!5130956)))

(assert (=> bs!1197181 (= lambda!254066 lambda!253973)))

(declare-fun bs!1197182 () Bool)

(assert (= bs!1197182 (and d!1660199 d!1659881)))

(assert (=> bs!1197182 (not (= lambda!254066 lambda!253969))))

(declare-fun bs!1197183 () Bool)

(assert (= bs!1197183 (and d!1660199 b!5130842)))

(assert (=> bs!1197183 (= lambda!254066 lambda!253909)))

(declare-fun bs!1197184 () Bool)

(assert (= bs!1197184 (and d!1660199 d!1659919)))

(assert (=> bs!1197184 (not (= lambda!254066 lambda!253975))))

(declare-fun bs!1197185 () Bool)

(assert (= bs!1197185 (and d!1660199 d!1660155)))

(assert (=> bs!1197185 (not (= lambda!254066 lambda!254050))))

(declare-fun bs!1197186 () Bool)

(assert (= bs!1197186 (and d!1660199 d!1660139)))

(assert (=> bs!1197186 (not (= lambda!254066 lambda!254042))))

(declare-fun bs!1197187 () Bool)

(assert (= bs!1197187 (and d!1660199 d!1660135)))

(assert (=> bs!1197187 (not (= lambda!254066 lambda!254041))))

(declare-fun bs!1197188 () Bool)

(assert (= bs!1197188 (and d!1660199 b!5131005)))

(assert (=> bs!1197188 (= lambda!254066 lambda!253992)))

(declare-fun bs!1197189 () Bool)

(assert (= bs!1197189 (and d!1660199 d!1660147)))

(assert (=> bs!1197189 (not (= lambda!254066 lambda!254049))))

(declare-fun bs!1197190 () Bool)

(assert (= bs!1197190 (and d!1660199 d!1660191)))

(assert (=> bs!1197190 (= lambda!254066 lambda!254065)))

(declare-fun lt!2116895 () Option!14729)

(assert (=> d!1660199 (= (isDefined!11524 lt!2116895) (exists!1643 (derivationStepZipperUp!64 lt!2116671 a!1233) lambda!254066))))

(declare-fun e!3200299 () Option!14729)

(assert (=> d!1660199 (= lt!2116895 e!3200299)))

(declare-fun c!882712 () Bool)

(assert (=> d!1660199 (= c!882712 (exists!1643 (derivationStepZipperUp!64 lt!2116671 a!1233) lambda!254066))))

(assert (=> d!1660199 (= (getLanguageWitness!862 (derivationStepZipperUp!64 lt!2116671 a!1233)) lt!2116895)))

(declare-fun b!5131216 () Bool)

(assert (=> b!5131216 (= e!3200299 (getLanguageWitness!864 (getWitness!795 (derivationStepZipperUp!64 lt!2116671 a!1233) lambda!254066)))))

(declare-fun b!5131217 () Bool)

(assert (=> b!5131217 (= e!3200299 None!14728)))

(assert (= (and d!1660199 c!882712) b!5131216))

(assert (= (and d!1660199 (not c!882712)) b!5131217))

(declare-fun m!6196446 () Bool)

(assert (=> d!1660199 m!6196446))

(assert (=> d!1660199 m!6195672))

(declare-fun m!6196448 () Bool)

(assert (=> d!1660199 m!6196448))

(assert (=> d!1660199 m!6195672))

(assert (=> d!1660199 m!6196448))

(assert (=> b!5131216 m!6195672))

(declare-fun m!6196450 () Bool)

(assert (=> b!5131216 m!6196450))

(assert (=> b!5131216 m!6196450))

(declare-fun m!6196452 () Bool)

(assert (=> b!5131216 m!6196452))

(assert (=> d!1659911 d!1660199))

(declare-fun d!1660201 () Bool)

(declare-fun lt!2116896 () Bool)

(assert (=> d!1660201 (= lt!2116896 (forall!13759 (toList!8329 (derivationStepZipperUp!64 lt!2116671 a!1233)) lambda!253972))))

(assert (=> d!1660201 (= lt!2116896 (choose!37868 (derivationStepZipperUp!64 lt!2116671 a!1233) lambda!253972))))

(assert (=> d!1660201 (= (forall!13758 (derivationStepZipperUp!64 lt!2116671 a!1233) lambda!253972) lt!2116896)))

(declare-fun bs!1197191 () Bool)

(assert (= bs!1197191 d!1660201))

(assert (=> bs!1197191 m!6195672))

(assert (=> bs!1197191 m!6195914))

(assert (=> bs!1197191 m!6195914))

(declare-fun m!6196454 () Bool)

(assert (=> bs!1197191 m!6196454))

(assert (=> bs!1197191 m!6195672))

(declare-fun m!6196456 () Bool)

(assert (=> bs!1197191 m!6196456))

(assert (=> d!1659911 d!1660201))

(declare-fun bs!1197192 () Bool)

(declare-fun d!1660203 () Bool)

(assert (= bs!1197192 (and d!1660203 d!1660187)))

(declare-fun lambda!254067 () Int)

(assert (=> bs!1197192 (not (= lambda!254067 lambda!254058))))

(declare-fun bs!1197193 () Bool)

(assert (= bs!1197193 (and d!1660203 d!1659945)))

(assert (=> bs!1197193 (= lambda!254067 lambda!253995)))

(declare-fun bs!1197194 () Bool)

(assert (= bs!1197194 (and d!1660203 d!1659937)))

(assert (=> bs!1197194 (not (= lambda!254067 lambda!253989))))

(declare-fun bs!1197195 () Bool)

(assert (= bs!1197195 (and d!1660203 d!1659947)))

(assert (=> bs!1197195 (not (= lambda!254067 lambda!253996))))

(declare-fun bs!1197196 () Bool)

(assert (= bs!1197196 (and d!1660203 d!1660163)))

(assert (=> bs!1197196 (not (= lambda!254067 lambda!254055))))

(declare-fun bs!1197197 () Bool)

(assert (= bs!1197197 (and d!1660203 d!1660129)))

(assert (=> bs!1197197 (not (= lambda!254067 lambda!254038))))

(assert (=> d!1660203 (= (inv!79028 setElem!31064) (forall!13761 (exprs!4223 setElem!31064) lambda!254067))))

(declare-fun bs!1197198 () Bool)

(assert (= bs!1197198 d!1660203))

(declare-fun m!6196458 () Bool)

(assert (=> bs!1197198 m!6196458))

(assert (=> setNonEmpty!31064 d!1660203))

(declare-fun d!1660205 () Bool)

(declare-fun res!2185374 () Bool)

(declare-fun e!3200304 () Bool)

(assert (=> d!1660205 (=> res!2185374 e!3200304)))

(assert (=> d!1660205 (= res!2185374 ((_ is Nil!59484) lt!2116850))))

(assert (=> d!1660205 (= (noDuplicate!1092 lt!2116850) e!3200304)))

(declare-fun b!5131222 () Bool)

(declare-fun e!3200305 () Bool)

(assert (=> b!5131222 (= e!3200304 e!3200305)))

(declare-fun res!2185375 () Bool)

(assert (=> b!5131222 (=> (not res!2185375) (not e!3200305))))

(assert (=> b!5131222 (= res!2185375 (not (contains!19636 (t!372635 lt!2116850) (h!65932 lt!2116850))))))

(declare-fun b!5131223 () Bool)

(assert (=> b!5131223 (= e!3200305 (noDuplicate!1092 (t!372635 lt!2116850)))))

(assert (= (and d!1660205 (not res!2185374)) b!5131222))

(assert (= (and b!5131222 res!2185375) b!5131223))

(declare-fun m!6196460 () Bool)

(assert (=> b!5131222 m!6196460))

(declare-fun m!6196462 () Bool)

(assert (=> b!5131223 m!6196462))

(assert (=> d!1659955 d!1660205))

(declare-fun d!1660207 () Bool)

(declare-fun e!3200313 () Bool)

(assert (=> d!1660207 e!3200313))

(declare-fun res!2185380 () Bool)

(assert (=> d!1660207 (=> (not res!2185380) (not e!3200313))))

(declare-fun res!2185381 () List!59608)

(assert (=> d!1660207 (= res!2185380 (noDuplicate!1092 res!2185381))))

(declare-fun e!3200314 () Bool)

(assert (=> d!1660207 e!3200314))

(assert (=> d!1660207 (= (choose!37866 lt!2116676) res!2185381)))

(declare-fun b!5131231 () Bool)

(declare-fun e!3200312 () Bool)

(declare-fun tp!1431398 () Bool)

(assert (=> b!5131231 (= e!3200312 tp!1431398)))

(declare-fun tp!1431397 () Bool)

(declare-fun b!5131230 () Bool)

(assert (=> b!5131230 (= e!3200314 (and (inv!79028 (h!65932 res!2185381)) e!3200312 tp!1431397))))

(declare-fun b!5131232 () Bool)

(assert (=> b!5131232 (= e!3200313 (= (content!10569 res!2185381) lt!2116676))))

(assert (= b!5131230 b!5131231))

(assert (= (and d!1660207 ((_ is Cons!59484) res!2185381)) b!5131230))

(assert (= (and d!1660207 res!2185380) b!5131232))

(declare-fun m!6196464 () Bool)

(assert (=> d!1660207 m!6196464))

(declare-fun m!6196466 () Bool)

(assert (=> b!5131230 m!6196466))

(declare-fun m!6196468 () Bool)

(assert (=> b!5131232 m!6196468))

(assert (=> d!1659955 d!1660207))

(declare-fun d!1660209 () Bool)

(declare-fun res!2185382 () Bool)

(declare-fun e!3200315 () Bool)

(assert (=> d!1660209 (=> res!2185382 e!3200315)))

(assert (=> d!1660209 (= res!2185382 ((_ is Nil!59484) lt!2116849))))

(assert (=> d!1660209 (= (noDuplicate!1092 lt!2116849) e!3200315)))

(declare-fun b!5131233 () Bool)

(declare-fun e!3200316 () Bool)

(assert (=> b!5131233 (= e!3200315 e!3200316)))

(declare-fun res!2185383 () Bool)

(assert (=> b!5131233 (=> (not res!2185383) (not e!3200316))))

(assert (=> b!5131233 (= res!2185383 (not (contains!19636 (t!372635 lt!2116849) (h!65932 lt!2116849))))))

(declare-fun b!5131234 () Bool)

(assert (=> b!5131234 (= e!3200316 (noDuplicate!1092 (t!372635 lt!2116849)))))

(assert (= (and d!1660209 (not res!2185382)) b!5131233))

(assert (= (and b!5131233 res!2185383) b!5131234))

(declare-fun m!6196470 () Bool)

(assert (=> b!5131233 m!6196470))

(declare-fun m!6196472 () Bool)

(assert (=> b!5131234 m!6196472))

(assert (=> d!1659951 d!1660209))

(declare-fun d!1660211 () Bool)

(declare-fun e!3200318 () Bool)

(assert (=> d!1660211 e!3200318))

(declare-fun res!2185384 () Bool)

(assert (=> d!1660211 (=> (not res!2185384) (not e!3200318))))

(declare-fun res!2185385 () List!59608)

(assert (=> d!1660211 (= res!2185384 (noDuplicate!1092 res!2185385))))

(declare-fun e!3200319 () Bool)

(assert (=> d!1660211 e!3200319))

(assert (=> d!1660211 (= (choose!37866 z!1054) res!2185385)))

(declare-fun b!5131236 () Bool)

(declare-fun e!3200317 () Bool)

(declare-fun tp!1431400 () Bool)

(assert (=> b!5131236 (= e!3200317 tp!1431400)))

(declare-fun b!5131235 () Bool)

(declare-fun tp!1431399 () Bool)

(assert (=> b!5131235 (= e!3200319 (and (inv!79028 (h!65932 res!2185385)) e!3200317 tp!1431399))))

(declare-fun b!5131237 () Bool)

(assert (=> b!5131237 (= e!3200318 (= (content!10569 res!2185385) z!1054))))

(assert (= b!5131235 b!5131236))

(assert (= (and d!1660211 ((_ is Cons!59484) res!2185385)) b!5131235))

(assert (= (and d!1660211 res!2185384) b!5131237))

(declare-fun m!6196474 () Bool)

(assert (=> d!1660211 m!6196474))

(declare-fun m!6196476 () Bool)

(assert (=> b!5131235 m!6196476))

(declare-fun m!6196478 () Bool)

(assert (=> b!5131237 m!6196478))

(assert (=> d!1659951 d!1660211))

(declare-fun d!1660213 () Bool)

(assert (=> d!1660213 (= (isEmpty!31990 (getLanguageWitness!862 z!1054)) (not ((_ is Some!14728) (getLanguageWitness!862 z!1054))))))

(assert (=> d!1659919 d!1660213))

(declare-fun bs!1197199 () Bool)

(declare-fun d!1660215 () Bool)

(assert (= bs!1197199 (and d!1660215 d!1660143)))

(declare-fun lambda!254068 () Int)

(assert (=> bs!1197199 (not (= lambda!254068 lambda!254045))))

(declare-fun bs!1197200 () Bool)

(assert (= bs!1197200 (and d!1660215 d!1659911)))

(assert (=> bs!1197200 (not (= lambda!254068 lambda!253972))))

(declare-fun bs!1197201 () Bool)

(assert (= bs!1197201 (and d!1660215 d!1660167)))

(assert (=> bs!1197201 (not (= lambda!254068 lambda!254056))))

(declare-fun bs!1197202 () Bool)

(assert (= bs!1197202 (and d!1660215 b!5130957)))

(assert (=> bs!1197202 (= lambda!254068 lambda!253974)))

(declare-fun bs!1197203 () Bool)

(assert (= bs!1197203 (and d!1660215 b!5130944)))

(assert (=> bs!1197203 (= lambda!254068 lambda!253971)))

(declare-fun bs!1197204 () Bool)

(assert (= bs!1197204 (and d!1660215 b!5130845)))

(assert (=> bs!1197204 (not (= lambda!254068 lambda!253908))))

(declare-fun bs!1197205 () Bool)

(assert (= bs!1197205 (and d!1660215 b!5130992)))

(assert (=> bs!1197205 (= lambda!254068 lambda!253977)))

(declare-fun bs!1197206 () Bool)

(assert (= bs!1197206 (and d!1660215 d!1659923)))

(assert (=> bs!1197206 (not (= lambda!254068 lambda!253980))))

(declare-fun bs!1197207 () Bool)

(assert (= bs!1197207 (and d!1660215 d!1659869)))

(assert (=> bs!1197207 (not (= lambda!254068 lambda!253949))))

(declare-fun bs!1197208 () Bool)

(assert (= bs!1197208 (and d!1660215 d!1660145)))

(assert (=> bs!1197208 (not (= lambda!254068 lambda!254046))))

(declare-fun bs!1197209 () Bool)

(assert (= bs!1197209 (and d!1660215 b!5130943)))

(assert (=> bs!1197209 (= lambda!254068 lambda!253970)))

(declare-fun bs!1197210 () Bool)

(assert (= bs!1197210 (and d!1660215 d!1660199)))

(assert (=> bs!1197210 (= lambda!254068 lambda!254066)))

(declare-fun bs!1197211 () Bool)

(assert (= bs!1197211 (and d!1660215 b!5131004)))

(assert (=> bs!1197211 (= lambda!254068 lambda!253991)))

(declare-fun bs!1197212 () Bool)

(assert (= bs!1197212 (and d!1660215 d!1659941)))

(assert (=> bs!1197212 (not (= lambda!254068 lambda!253990))))

(declare-fun bs!1197213 () Bool)

(assert (= bs!1197213 (and d!1660215 d!1660157)))

(assert (=> bs!1197213 (not (= lambda!254068 lambda!254051))))

(declare-fun bs!1197214 () Bool)

(assert (= bs!1197214 (and d!1660215 d!1660181)))

(assert (=> bs!1197214 (not (= lambda!254068 lambda!254057))))

(declare-fun bs!1197215 () Bool)

(assert (= bs!1197215 (and d!1660215 b!5130991)))

(assert (=> bs!1197215 (= lambda!254068 lambda!253976)))

(declare-fun bs!1197216 () Bool)

(assert (= bs!1197216 (and d!1660215 b!5130857)))

(assert (=> bs!1197216 (not (= lambda!254068 lambda!253910))))

(declare-fun bs!1197217 () Bool)

(assert (= bs!1197217 (and d!1660215 d!1660161)))

(assert (=> bs!1197217 (not (= lambda!254068 lambda!254052))))

(declare-fun bs!1197218 () Bool)

(assert (= bs!1197218 (and d!1660215 d!1659925)))

(assert (=> bs!1197218 (not (= lambda!254068 lambda!253983))))

(declare-fun bs!1197219 () Bool)

(assert (= bs!1197219 (and d!1660215 b!5130956)))

(assert (=> bs!1197219 (= lambda!254068 lambda!253973)))

(declare-fun bs!1197220 () Bool)

(assert (= bs!1197220 (and d!1660215 d!1659881)))

(assert (=> bs!1197220 (not (= lambda!254068 lambda!253969))))

(declare-fun bs!1197221 () Bool)

(assert (= bs!1197221 (and d!1660215 b!5130842)))

(assert (=> bs!1197221 (= lambda!254068 lambda!253909)))

(declare-fun bs!1197222 () Bool)

(assert (= bs!1197222 (and d!1660215 d!1659919)))

(assert (=> bs!1197222 (not (= lambda!254068 lambda!253975))))

(declare-fun bs!1197223 () Bool)

(assert (= bs!1197223 (and d!1660215 d!1660155)))

(assert (=> bs!1197223 (not (= lambda!254068 lambda!254050))))

(declare-fun bs!1197224 () Bool)

(assert (= bs!1197224 (and d!1660215 d!1660139)))

(assert (=> bs!1197224 (not (= lambda!254068 lambda!254042))))

(declare-fun bs!1197225 () Bool)

(assert (= bs!1197225 (and d!1660215 d!1660135)))

(assert (=> bs!1197225 (not (= lambda!254068 lambda!254041))))

(declare-fun bs!1197226 () Bool)

(assert (= bs!1197226 (and d!1660215 b!5131005)))

(assert (=> bs!1197226 (= lambda!254068 lambda!253992)))

(declare-fun bs!1197227 () Bool)

(assert (= bs!1197227 (and d!1660215 d!1660147)))

(assert (=> bs!1197227 (not (= lambda!254068 lambda!254049))))

(declare-fun bs!1197228 () Bool)

(assert (= bs!1197228 (and d!1660215 d!1660191)))

(assert (=> bs!1197228 (= lambda!254068 lambda!254065)))

(declare-fun lt!2116897 () Option!14729)

(assert (=> d!1660215 (= (isDefined!11524 lt!2116897) (exists!1643 z!1054 lambda!254068))))

(declare-fun e!3200320 () Option!14729)

(assert (=> d!1660215 (= lt!2116897 e!3200320)))

(declare-fun c!882713 () Bool)

(assert (=> d!1660215 (= c!882713 (exists!1643 z!1054 lambda!254068))))

(assert (=> d!1660215 (= (getLanguageWitness!862 z!1054) lt!2116897)))

(declare-fun b!5131238 () Bool)

(assert (=> b!5131238 (= e!3200320 (getLanguageWitness!864 (getWitness!795 z!1054 lambda!254068)))))

(declare-fun b!5131239 () Bool)

(assert (=> b!5131239 (= e!3200320 None!14728)))

(assert (= (and d!1660215 c!882713) b!5131238))

(assert (= (and d!1660215 (not c!882713)) b!5131239))

(declare-fun m!6196480 () Bool)

(assert (=> d!1660215 m!6196480))

(declare-fun m!6196482 () Bool)

(assert (=> d!1660215 m!6196482))

(assert (=> d!1660215 m!6196482))

(declare-fun m!6196484 () Bool)

(assert (=> b!5131238 m!6196484))

(assert (=> b!5131238 m!6196484))

(declare-fun m!6196486 () Bool)

(assert (=> b!5131238 m!6196486))

(assert (=> d!1659919 d!1660215))

(declare-fun d!1660217 () Bool)

(declare-fun lt!2116898 () Bool)

(assert (=> d!1660217 (= lt!2116898 (forall!13759 (toList!8329 z!1054) lambda!253975))))

(assert (=> d!1660217 (= lt!2116898 (choose!37868 z!1054 lambda!253975))))

(assert (=> d!1660217 (= (forall!13758 z!1054 lambda!253975) lt!2116898)))

(declare-fun bs!1197229 () Bool)

(assert (= bs!1197229 d!1660217))

(assert (=> bs!1197229 m!6195712))

(assert (=> bs!1197229 m!6195712))

(declare-fun m!6196488 () Bool)

(assert (=> bs!1197229 m!6196488))

(declare-fun m!6196490 () Bool)

(assert (=> bs!1197229 m!6196490))

(assert (=> d!1659919 d!1660217))

(declare-fun d!1660219 () Bool)

(declare-fun c!882716 () Bool)

(assert (=> d!1660219 (= c!882716 ((_ is Nil!59484) lt!2116670))))

(declare-fun e!3200323 () (InoxSet Context!7446))

(assert (=> d!1660219 (= (content!10569 lt!2116670) e!3200323)))

(declare-fun b!5131244 () Bool)

(assert (=> b!5131244 (= e!3200323 ((as const (Array Context!7446 Bool)) false))))

(declare-fun b!5131245 () Bool)

(assert (=> b!5131245 (= e!3200323 ((_ map or) (store ((as const (Array Context!7446 Bool)) false) (h!65932 lt!2116670) true) (content!10569 (t!372635 lt!2116670))))))

(assert (= (and d!1660219 c!882716) b!5131244))

(assert (= (and d!1660219 (not c!882716)) b!5131245))

(declare-fun m!6196492 () Bool)

(assert (=> b!5131245 m!6196492))

(declare-fun m!6196494 () Bool)

(assert (=> b!5131245 m!6196494))

(assert (=> d!1659939 d!1660219))

(declare-fun bs!1197230 () Bool)

(declare-fun d!1660221 () Bool)

(assert (= bs!1197230 (and d!1660221 d!1660143)))

(declare-fun lambda!254069 () Int)

(assert (=> bs!1197230 (= lambda!254069 lambda!254045)))

(declare-fun bs!1197231 () Bool)

(assert (= bs!1197231 (and d!1660221 d!1659911)))

(assert (=> bs!1197231 (not (= lambda!254069 lambda!253972))))

(declare-fun bs!1197232 () Bool)

(assert (= bs!1197232 (and d!1660221 d!1660167)))

(assert (=> bs!1197232 (= (= lambda!253969 lambda!253972) (= lambda!254069 lambda!254056))))

(declare-fun bs!1197233 () Bool)

(assert (= bs!1197233 (and d!1660221 d!1660215)))

(assert (=> bs!1197233 (not (= lambda!254069 lambda!254068))))

(declare-fun bs!1197234 () Bool)

(assert (= bs!1197234 (and d!1660221 b!5130957)))

(assert (=> bs!1197234 (not (= lambda!254069 lambda!253974))))

(declare-fun bs!1197235 () Bool)

(assert (= bs!1197235 (and d!1660221 b!5130944)))

(assert (=> bs!1197235 (not (= lambda!254069 lambda!253971))))

(declare-fun bs!1197236 () Bool)

(assert (= bs!1197236 (and d!1660221 b!5130845)))

(assert (=> bs!1197236 (not (= lambda!254069 lambda!253908))))

(declare-fun bs!1197237 () Bool)

(assert (= bs!1197237 (and d!1660221 b!5130992)))

(assert (=> bs!1197237 (not (= lambda!254069 lambda!253977))))

(declare-fun bs!1197238 () Bool)

(assert (= bs!1197238 (and d!1660221 d!1659923)))

(assert (=> bs!1197238 (= (= lambda!253969 lambda!253909) (= lambda!254069 lambda!253980))))

(declare-fun bs!1197239 () Bool)

(assert (= bs!1197239 (and d!1660221 d!1659869)))

(assert (=> bs!1197239 (not (= lambda!254069 lambda!253949))))

(declare-fun bs!1197240 () Bool)

(assert (= bs!1197240 (and d!1660221 d!1660145)))

(assert (=> bs!1197240 (= (= lambda!253969 lambda!253983) (= lambda!254069 lambda!254046))))

(declare-fun bs!1197241 () Bool)

(assert (= bs!1197241 (and d!1660221 b!5130943)))

(assert (=> bs!1197241 (not (= lambda!254069 lambda!253970))))

(declare-fun bs!1197242 () Bool)

(assert (= bs!1197242 (and d!1660221 d!1660199)))

(assert (=> bs!1197242 (not (= lambda!254069 lambda!254066))))

(declare-fun bs!1197243 () Bool)

(assert (= bs!1197243 (and d!1660221 b!5131004)))

(assert (=> bs!1197243 (not (= lambda!254069 lambda!253991))))

(declare-fun bs!1197244 () Bool)

(assert (= bs!1197244 (and d!1660221 d!1659941)))

(assert (=> bs!1197244 (not (= lambda!254069 lambda!253990))))

(declare-fun bs!1197245 () Bool)

(assert (= bs!1197245 (and d!1660221 d!1660157)))

(assert (=> bs!1197245 (= (= lambda!253969 (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254069 lambda!254051))))

(declare-fun bs!1197246 () Bool)

(assert (= bs!1197246 (and d!1660221 d!1660181)))

(assert (=> bs!1197246 (= (= lambda!253969 lambda!253975) (= lambda!254069 lambda!254057))))

(declare-fun bs!1197247 () Bool)

(assert (= bs!1197247 (and d!1660221 b!5130991)))

(assert (=> bs!1197247 (not (= lambda!254069 lambda!253976))))

(declare-fun bs!1197248 () Bool)

(assert (= bs!1197248 (and d!1660221 b!5130857)))

(assert (=> bs!1197248 (not (= lambda!254069 lambda!253910))))

(declare-fun bs!1197249 () Bool)

(assert (= bs!1197249 (and d!1660221 d!1660161)))

(assert (=> bs!1197249 (= (= lambda!253969 (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254069 lambda!254052))))

(declare-fun bs!1197250 () Bool)

(assert (= bs!1197250 (and d!1660221 d!1659925)))

(assert (=> bs!1197250 (= (= lambda!253969 lambda!253908) (= lambda!254069 lambda!253983))))

(declare-fun bs!1197251 () Bool)

(assert (= bs!1197251 (and d!1660221 b!5130956)))

(assert (=> bs!1197251 (not (= lambda!254069 lambda!253973))))

(declare-fun bs!1197252 () Bool)

(assert (= bs!1197252 (and d!1660221 d!1659881)))

(assert (=> bs!1197252 (not (= lambda!254069 lambda!253969))))

(declare-fun bs!1197253 () Bool)

(assert (= bs!1197253 (and d!1660221 b!5130842)))

(assert (=> bs!1197253 (not (= lambda!254069 lambda!253909))))

(declare-fun bs!1197254 () Bool)

(assert (= bs!1197254 (and d!1660221 d!1659919)))

(assert (=> bs!1197254 (not (= lambda!254069 lambda!253975))))

(declare-fun bs!1197255 () Bool)

(assert (= bs!1197255 (and d!1660221 d!1660155)))

(assert (=> bs!1197255 (= (= lambda!253969 lambda!253990) (= lambda!254069 lambda!254050))))

(declare-fun bs!1197256 () Bool)

(assert (= bs!1197256 (and d!1660221 d!1660139)))

(assert (=> bs!1197256 (= (= lambda!253969 lambda!253909) (= lambda!254069 lambda!254042))))

(declare-fun bs!1197257 () Bool)

(assert (= bs!1197257 (and d!1660221 d!1660135)))

(assert (=> bs!1197257 (not (= lambda!254069 lambda!254041))))

(declare-fun bs!1197258 () Bool)

(assert (= bs!1197258 (and d!1660221 b!5131005)))

(assert (=> bs!1197258 (not (= lambda!254069 lambda!253992))))

(declare-fun bs!1197259 () Bool)

(assert (= bs!1197259 (and d!1660221 d!1660147)))

(assert (=> bs!1197259 (= (= lambda!253969 lambda!253908) (= lambda!254069 lambda!254049))))

(declare-fun bs!1197260 () Bool)

(assert (= bs!1197260 (and d!1660221 d!1660191)))

(assert (=> bs!1197260 (not (= lambda!254069 lambda!254065))))

(assert (=> d!1660221 true))

(assert (=> d!1660221 (< (dynLambda!23682 order!26849 lambda!253969) (dynLambda!23682 order!26849 lambda!254069))))

(assert (=> d!1660221 (exists!1644 lt!2116792 lambda!254069)))

(declare-fun lt!2116899 () Unit!150733)

(assert (=> d!1660221 (= lt!2116899 (choose!37865 lt!2116792 lambda!253969))))

(assert (=> d!1660221 (not (forall!13759 lt!2116792 lambda!253969))))

(assert (=> d!1660221 (= (lemmaNotForallThenExists!377 lt!2116792 lambda!253969) lt!2116899)))

(declare-fun bs!1197261 () Bool)

(assert (= bs!1197261 d!1660221))

(declare-fun m!6196496 () Bool)

(assert (=> bs!1197261 m!6196496))

(declare-fun m!6196498 () Bool)

(assert (=> bs!1197261 m!6196498))

(declare-fun m!6196500 () Bool)

(assert (=> bs!1197261 m!6196500))

(assert (=> b!5130943 d!1660221))

(declare-fun d!1660223 () Bool)

(declare-fun e!3200326 () Bool)

(assert (=> d!1660223 e!3200326))

(declare-fun res!2185386 () Bool)

(assert (=> d!1660223 (=> (not res!2185386) (not e!3200326))))

(declare-fun lt!2116900 () Context!7446)

(assert (=> d!1660223 (= res!2185386 (dynLambda!23683 lambda!253909 lt!2116900))))

(declare-fun e!3200327 () Context!7446)

(assert (=> d!1660223 (= lt!2116900 e!3200327)))

(declare-fun c!882717 () Bool)

(declare-fun e!3200324 () Bool)

(assert (=> d!1660223 (= c!882717 e!3200324)))

(declare-fun res!2185387 () Bool)

(assert (=> d!1660223 (=> (not res!2185387) (not e!3200324))))

(assert (=> d!1660223 (= res!2185387 ((_ is Cons!59484) (t!372635 lt!2116678)))))

(assert (=> d!1660223 (exists!1644 (t!372635 lt!2116678) lambda!253909)))

(assert (=> d!1660223 (= (getWitness!794 (t!372635 lt!2116678) lambda!253909) lt!2116900)))

(declare-fun b!5131246 () Bool)

(declare-fun e!3200325 () Context!7446)

(assert (=> b!5131246 (= e!3200327 e!3200325)))

(declare-fun c!882718 () Bool)

(assert (=> b!5131246 (= c!882718 ((_ is Cons!59484) (t!372635 lt!2116678)))))

(declare-fun b!5131247 () Bool)

(assert (=> b!5131247 (= e!3200327 (h!65932 (t!372635 lt!2116678)))))

(declare-fun b!5131248 () Bool)

(assert (=> b!5131248 (= e!3200325 (getWitness!794 (t!372635 (t!372635 lt!2116678)) lambda!253909))))

(declare-fun b!5131249 () Bool)

(assert (=> b!5131249 (= e!3200324 (dynLambda!23683 lambda!253909 (h!65932 (t!372635 lt!2116678))))))

(declare-fun b!5131250 () Bool)

(assert (=> b!5131250 (= e!3200326 (contains!19636 (t!372635 lt!2116678) lt!2116900))))

(declare-fun b!5131251 () Bool)

(declare-fun lt!2116901 () Unit!150733)

(declare-fun Unit!150756 () Unit!150733)

(assert (=> b!5131251 (= lt!2116901 Unit!150756)))

(assert (=> b!5131251 false))

(assert (=> b!5131251 (= e!3200325 (head!10983 (t!372635 lt!2116678)))))

(assert (= (and d!1660223 res!2185387) b!5131249))

(assert (= (and d!1660223 c!882717) b!5131247))

(assert (= (and d!1660223 (not c!882717)) b!5131246))

(assert (= (and b!5131246 c!882718) b!5131248))

(assert (= (and b!5131246 (not c!882718)) b!5131251))

(assert (= (and d!1660223 res!2185386) b!5131250))

(declare-fun b_lambda!199739 () Bool)

(assert (=> (not b_lambda!199739) (not d!1660223)))

(declare-fun b_lambda!199741 () Bool)

(assert (=> (not b_lambda!199741) (not b!5131249)))

(declare-fun m!6196502 () Bool)

(assert (=> b!5131249 m!6196502))

(declare-fun m!6196504 () Bool)

(assert (=> b!5131248 m!6196504))

(declare-fun m!6196506 () Bool)

(assert (=> b!5131251 m!6196506))

(declare-fun m!6196508 () Bool)

(assert (=> b!5131250 m!6196508))

(declare-fun m!6196510 () Bool)

(assert (=> d!1660223 m!6196510))

(declare-fun m!6196512 () Bool)

(assert (=> d!1660223 m!6196512))

(assert (=> b!5130987 d!1660223))

(declare-fun d!1660225 () Bool)

(declare-fun c!882719 () Bool)

(assert (=> d!1660225 (= c!882719 ((_ is Nil!59484) lt!2116850))))

(declare-fun e!3200328 () (InoxSet Context!7446))

(assert (=> d!1660225 (= (content!10569 lt!2116850) e!3200328)))

(declare-fun b!5131252 () Bool)

(assert (=> b!5131252 (= e!3200328 ((as const (Array Context!7446 Bool)) false))))

(declare-fun b!5131253 () Bool)

(assert (=> b!5131253 (= e!3200328 ((_ map or) (store ((as const (Array Context!7446 Bool)) false) (h!65932 lt!2116850) true) (content!10569 (t!372635 lt!2116850))))))

(assert (= (and d!1660225 c!882719) b!5131252))

(assert (= (and d!1660225 (not c!882719)) b!5131253))

(declare-fun m!6196514 () Bool)

(assert (=> b!5131253 m!6196514))

(declare-fun m!6196516 () Bool)

(assert (=> b!5131253 m!6196516))

(assert (=> b!5131019 d!1660225))

(assert (=> bm!357074 d!1659955))

(declare-fun d!1660227 () Bool)

(declare-fun c!882720 () Bool)

(assert (=> d!1660227 (= c!882720 ((_ is Nil!59484) lt!2116849))))

(declare-fun e!3200329 () (InoxSet Context!7446))

(assert (=> d!1660227 (= (content!10569 lt!2116849) e!3200329)))

(declare-fun b!5131254 () Bool)

(assert (=> b!5131254 (= e!3200329 ((as const (Array Context!7446 Bool)) false))))

(declare-fun b!5131255 () Bool)

(assert (=> b!5131255 (= e!3200329 ((_ map or) (store ((as const (Array Context!7446 Bool)) false) (h!65932 lt!2116849) true) (content!10569 (t!372635 lt!2116849))))))

(assert (= (and d!1660227 c!882720) b!5131254))

(assert (= (and d!1660227 (not c!882720)) b!5131255))

(declare-fun m!6196518 () Bool)

(assert (=> b!5131255 m!6196518))

(declare-fun m!6196520 () Bool)

(assert (=> b!5131255 m!6196520))

(assert (=> b!5131012 d!1660227))

(declare-fun bs!1197262 () Bool)

(declare-fun d!1660229 () Bool)

(assert (= bs!1197262 (and d!1660229 d!1660143)))

(declare-fun lambda!254070 () Int)

(assert (=> bs!1197262 (= (= lambda!253990 lambda!253969) (= lambda!254070 lambda!254045))))

(declare-fun bs!1197263 () Bool)

(assert (= bs!1197263 (and d!1660229 d!1659911)))

(assert (=> bs!1197263 (not (= lambda!254070 lambda!253972))))

(declare-fun bs!1197264 () Bool)

(assert (= bs!1197264 (and d!1660229 d!1660167)))

(assert (=> bs!1197264 (= (= lambda!253990 lambda!253972) (= lambda!254070 lambda!254056))))

(declare-fun bs!1197265 () Bool)

(assert (= bs!1197265 (and d!1660229 d!1660215)))

(assert (=> bs!1197265 (not (= lambda!254070 lambda!254068))))

(declare-fun bs!1197266 () Bool)

(assert (= bs!1197266 (and d!1660229 b!5130957)))

(assert (=> bs!1197266 (not (= lambda!254070 lambda!253974))))

(declare-fun bs!1197267 () Bool)

(assert (= bs!1197267 (and d!1660229 b!5130944)))

(assert (=> bs!1197267 (not (= lambda!254070 lambda!253971))))

(declare-fun bs!1197268 () Bool)

(assert (= bs!1197268 (and d!1660229 b!5130845)))

(assert (=> bs!1197268 (not (= lambda!254070 lambda!253908))))

(declare-fun bs!1197269 () Bool)

(assert (= bs!1197269 (and d!1660229 b!5130992)))

(assert (=> bs!1197269 (not (= lambda!254070 lambda!253977))))

(declare-fun bs!1197270 () Bool)

(assert (= bs!1197270 (and d!1660229 d!1659923)))

(assert (=> bs!1197270 (= (= lambda!253990 lambda!253909) (= lambda!254070 lambda!253980))))

(declare-fun bs!1197271 () Bool)

(assert (= bs!1197271 (and d!1660229 d!1659869)))

(assert (=> bs!1197271 (not (= lambda!254070 lambda!253949))))

(declare-fun bs!1197272 () Bool)

(assert (= bs!1197272 (and d!1660229 d!1660145)))

(assert (=> bs!1197272 (= (= lambda!253990 lambda!253983) (= lambda!254070 lambda!254046))))

(declare-fun bs!1197273 () Bool)

(assert (= bs!1197273 (and d!1660229 b!5130943)))

(assert (=> bs!1197273 (not (= lambda!254070 lambda!253970))))

(declare-fun bs!1197274 () Bool)

(assert (= bs!1197274 (and d!1660229 d!1660199)))

(assert (=> bs!1197274 (not (= lambda!254070 lambda!254066))))

(declare-fun bs!1197275 () Bool)

(assert (= bs!1197275 (and d!1660229 b!5131004)))

(assert (=> bs!1197275 (not (= lambda!254070 lambda!253991))))

(declare-fun bs!1197276 () Bool)

(assert (= bs!1197276 (and d!1660229 d!1659941)))

(assert (=> bs!1197276 (not (= lambda!254070 lambda!253990))))

(declare-fun bs!1197277 () Bool)

(assert (= bs!1197277 (and d!1660229 d!1660157)))

(assert (=> bs!1197277 (= (= lambda!253990 (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254070 lambda!254051))))

(declare-fun bs!1197278 () Bool)

(assert (= bs!1197278 (and d!1660229 d!1660181)))

(assert (=> bs!1197278 (= (= lambda!253990 lambda!253975) (= lambda!254070 lambda!254057))))

(declare-fun bs!1197279 () Bool)

(assert (= bs!1197279 (and d!1660229 d!1660221)))

(assert (=> bs!1197279 (= (= lambda!253990 lambda!253969) (= lambda!254070 lambda!254069))))

(declare-fun bs!1197280 () Bool)

(assert (= bs!1197280 (and d!1660229 b!5130991)))

(assert (=> bs!1197280 (not (= lambda!254070 lambda!253976))))

(declare-fun bs!1197281 () Bool)

(assert (= bs!1197281 (and d!1660229 b!5130857)))

(assert (=> bs!1197281 (not (= lambda!254070 lambda!253910))))

(declare-fun bs!1197282 () Bool)

(assert (= bs!1197282 (and d!1660229 d!1660161)))

(assert (=> bs!1197282 (= (= lambda!253990 (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254070 lambda!254052))))

(declare-fun bs!1197283 () Bool)

(assert (= bs!1197283 (and d!1660229 d!1659925)))

(assert (=> bs!1197283 (= (= lambda!253990 lambda!253908) (= lambda!254070 lambda!253983))))

(declare-fun bs!1197284 () Bool)

(assert (= bs!1197284 (and d!1660229 b!5130956)))

(assert (=> bs!1197284 (not (= lambda!254070 lambda!253973))))

(declare-fun bs!1197285 () Bool)

(assert (= bs!1197285 (and d!1660229 d!1659881)))

(assert (=> bs!1197285 (not (= lambda!254070 lambda!253969))))

(declare-fun bs!1197286 () Bool)

(assert (= bs!1197286 (and d!1660229 b!5130842)))

(assert (=> bs!1197286 (not (= lambda!254070 lambda!253909))))

(declare-fun bs!1197287 () Bool)

(assert (= bs!1197287 (and d!1660229 d!1659919)))

(assert (=> bs!1197287 (not (= lambda!254070 lambda!253975))))

(declare-fun bs!1197288 () Bool)

(assert (= bs!1197288 (and d!1660229 d!1660155)))

(assert (=> bs!1197288 (= lambda!254070 lambda!254050)))

(declare-fun bs!1197289 () Bool)

(assert (= bs!1197289 (and d!1660229 d!1660139)))

(assert (=> bs!1197289 (= (= lambda!253990 lambda!253909) (= lambda!254070 lambda!254042))))

(declare-fun bs!1197290 () Bool)

(assert (= bs!1197290 (and d!1660229 d!1660135)))

(assert (=> bs!1197290 (not (= lambda!254070 lambda!254041))))

(declare-fun bs!1197291 () Bool)

(assert (= bs!1197291 (and d!1660229 b!5131005)))

(assert (=> bs!1197291 (not (= lambda!254070 lambda!253992))))

(declare-fun bs!1197292 () Bool)

(assert (= bs!1197292 (and d!1660229 d!1660147)))

(assert (=> bs!1197292 (= (= lambda!253990 lambda!253908) (= lambda!254070 lambda!254049))))

(declare-fun bs!1197293 () Bool)

(assert (= bs!1197293 (and d!1660229 d!1660191)))

(assert (=> bs!1197293 (not (= lambda!254070 lambda!254065))))

(assert (=> d!1660229 true))

(assert (=> d!1660229 (< (dynLambda!23682 order!26849 lambda!253990) (dynLambda!23682 order!26849 lambda!254070))))

(assert (=> d!1660229 (exists!1644 lt!2116841 lambda!254070)))

(declare-fun lt!2116902 () Unit!150733)

(assert (=> d!1660229 (= lt!2116902 (choose!37865 lt!2116841 lambda!253990))))

(assert (=> d!1660229 (not (forall!13759 lt!2116841 lambda!253990))))

(assert (=> d!1660229 (= (lemmaNotForallThenExists!377 lt!2116841 lambda!253990) lt!2116902)))

(declare-fun bs!1197294 () Bool)

(assert (= bs!1197294 d!1660229))

(declare-fun m!6196522 () Bool)

(assert (=> bs!1197294 m!6196522))

(declare-fun m!6196524 () Bool)

(assert (=> bs!1197294 m!6196524))

(declare-fun m!6196526 () Bool)

(assert (=> bs!1197294 m!6196526))

(assert (=> b!5131004 d!1660229))

(declare-fun d!1660231 () Bool)

(declare-fun lt!2116903 () Bool)

(assert (=> d!1660231 (= lt!2116903 (select (content!10569 lt!2116678) lt!2116811))))

(declare-fun e!3200331 () Bool)

(assert (=> d!1660231 (= lt!2116903 e!3200331)))

(declare-fun res!2185388 () Bool)

(assert (=> d!1660231 (=> (not res!2185388) (not e!3200331))))

(assert (=> d!1660231 (= res!2185388 ((_ is Cons!59484) lt!2116678))))

(assert (=> d!1660231 (= (contains!19636 lt!2116678 lt!2116811) lt!2116903)))

(declare-fun b!5131256 () Bool)

(declare-fun e!3200330 () Bool)

(assert (=> b!5131256 (= e!3200331 e!3200330)))

(declare-fun res!2185389 () Bool)

(assert (=> b!5131256 (=> res!2185389 e!3200330)))

(assert (=> b!5131256 (= res!2185389 (= (h!65932 lt!2116678) lt!2116811))))

(declare-fun b!5131257 () Bool)

(assert (=> b!5131257 (= e!3200330 (contains!19636 (t!372635 lt!2116678) lt!2116811))))

(assert (= (and d!1660231 res!2185388) b!5131256))

(assert (= (and b!5131256 (not res!2185389)) b!5131257))

(declare-fun m!6196528 () Bool)

(assert (=> d!1660231 m!6196528))

(declare-fun m!6196530 () Bool)

(assert (=> d!1660231 m!6196530))

(declare-fun m!6196532 () Bool)

(assert (=> b!5131257 m!6196532))

(assert (=> b!5130989 d!1660231))

(declare-fun d!1660233 () Bool)

(declare-fun lt!2116904 () Bool)

(assert (=> d!1660233 (= lt!2116904 (select (content!10569 (t!372635 lt!2116670)) lt!2116679))))

(declare-fun e!3200333 () Bool)

(assert (=> d!1660233 (= lt!2116904 e!3200333)))

(declare-fun res!2185390 () Bool)

(assert (=> d!1660233 (=> (not res!2185390) (not e!3200333))))

(assert (=> d!1660233 (= res!2185390 ((_ is Cons!59484) (t!372635 lt!2116670)))))

(assert (=> d!1660233 (= (contains!19636 (t!372635 lt!2116670) lt!2116679) lt!2116904)))

(declare-fun b!5131258 () Bool)

(declare-fun e!3200332 () Bool)

(assert (=> b!5131258 (= e!3200333 e!3200332)))

(declare-fun res!2185391 () Bool)

(assert (=> b!5131258 (=> res!2185391 e!3200332)))

(assert (=> b!5131258 (= res!2185391 (= (h!65932 (t!372635 lt!2116670)) lt!2116679))))

(declare-fun b!5131259 () Bool)

(assert (=> b!5131259 (= e!3200332 (contains!19636 (t!372635 (t!372635 lt!2116670)) lt!2116679))))

(assert (= (and d!1660233 res!2185390) b!5131258))

(assert (= (and b!5131258 (not res!2185391)) b!5131259))

(assert (=> d!1660233 m!6196494))

(declare-fun m!6196534 () Bool)

(assert (=> d!1660233 m!6196534))

(declare-fun m!6196536 () Bool)

(assert (=> b!5131259 m!6196536))

(assert (=> b!5131003 d!1660233))

(declare-fun bs!1197295 () Bool)

(declare-fun d!1660235 () Bool)

(assert (= bs!1197295 (and d!1660235 d!1660187)))

(declare-fun lambda!254071 () Int)

(assert (=> bs!1197295 (not (= lambda!254071 lambda!254058))))

(declare-fun bs!1197296 () Bool)

(assert (= bs!1197296 (and d!1660235 d!1659945)))

(assert (=> bs!1197296 (not (= lambda!254071 lambda!253995))))

(declare-fun bs!1197297 () Bool)

(assert (= bs!1197297 (and d!1660235 d!1659937)))

(assert (=> bs!1197297 (not (= lambda!254071 lambda!253989))))

(declare-fun bs!1197298 () Bool)

(assert (= bs!1197298 (and d!1660235 d!1659947)))

(assert (=> bs!1197298 (not (= lambda!254071 lambda!253996))))

(declare-fun bs!1197299 () Bool)

(assert (= bs!1197299 (and d!1660235 d!1660203)))

(assert (=> bs!1197299 (not (= lambda!254071 lambda!254067))))

(declare-fun bs!1197300 () Bool)

(assert (= bs!1197300 (and d!1660235 d!1660163)))

(assert (=> bs!1197300 (= (= lambda!253989 lambda!253996) (= lambda!254071 lambda!254055))))

(declare-fun bs!1197301 () Bool)

(assert (= bs!1197301 (and d!1660235 d!1660129)))

(assert (=> bs!1197301 (not (= lambda!254071 lambda!254038))))

(assert (=> d!1660235 true))

(assert (=> d!1660235 (< (dynLambda!23685 order!26853 lambda!253989) (dynLambda!23685 order!26853 lambda!254071))))

(assert (=> d!1660235 (= (exists!1646 (exprs!4223 lt!2116679) lambda!253989) (not (forall!13761 (exprs!4223 lt!2116679) lambda!254071)))))

(declare-fun bs!1197302 () Bool)

(assert (= bs!1197302 d!1660235))

(declare-fun m!6196538 () Bool)

(assert (=> bs!1197302 m!6196538))

(assert (=> d!1659937 d!1660235))

(declare-fun bs!1197303 () Bool)

(declare-fun d!1660237 () Bool)

(assert (= bs!1197303 (and d!1660237 d!1660187)))

(declare-fun lambda!254072 () Int)

(assert (=> bs!1197303 (= lambda!254072 lambda!254058)))

(declare-fun bs!1197304 () Bool)

(assert (= bs!1197304 (and d!1660237 d!1659945)))

(assert (=> bs!1197304 (not (= lambda!254072 lambda!253995))))

(declare-fun bs!1197305 () Bool)

(assert (= bs!1197305 (and d!1660237 d!1659937)))

(assert (=> bs!1197305 (= lambda!254072 lambda!253989)))

(declare-fun bs!1197306 () Bool)

(assert (= bs!1197306 (and d!1660237 d!1659947)))

(assert (=> bs!1197306 (= lambda!254072 lambda!253996)))

(declare-fun bs!1197307 () Bool)

(assert (= bs!1197307 (and d!1660237 d!1660203)))

(assert (=> bs!1197307 (not (= lambda!254072 lambda!254067))))

(declare-fun bs!1197308 () Bool)

(assert (= bs!1197308 (and d!1660237 d!1660163)))

(assert (=> bs!1197308 (not (= lambda!254072 lambda!254055))))

(declare-fun bs!1197309 () Bool)

(assert (= bs!1197309 (and d!1660237 d!1660129)))

(assert (=> bs!1197309 (= lambda!254072 lambda!254038)))

(declare-fun bs!1197310 () Bool)

(assert (= bs!1197310 (and d!1660237 d!1660235)))

(assert (=> bs!1197310 (not (= lambda!254072 lambda!254071))))

(assert (=> d!1660237 (= (lostCause!1292 lt!2116811) (exists!1646 (exprs!4223 lt!2116811) lambda!254072))))

(declare-fun bs!1197311 () Bool)

(assert (= bs!1197311 d!1660237))

(declare-fun m!6196540 () Bool)

(assert (=> bs!1197311 m!6196540))

(assert (=> bs!1196207 d!1660237))

(assert (=> bm!357083 d!1659927))

(declare-fun d!1660239 () Bool)

(assert (=> d!1660239 (= (flatMap!390 z!1054 lambda!253986) (choose!37867 z!1054 lambda!253986))))

(declare-fun bs!1197312 () Bool)

(assert (= bs!1197312 d!1660239))

(declare-fun m!6196542 () Bool)

(assert (=> bs!1197312 m!6196542))

(assert (=> d!1659931 d!1660239))

(declare-fun bs!1197313 () Bool)

(declare-fun d!1660241 () Bool)

(assert (= bs!1197313 (and d!1660241 d!1660143)))

(declare-fun lambda!254073 () Int)

(assert (=> bs!1197313 (= (= lambda!253972 lambda!253969) (= lambda!254073 lambda!254045))))

(declare-fun bs!1197314 () Bool)

(assert (= bs!1197314 (and d!1660241 d!1659911)))

(assert (=> bs!1197314 (not (= lambda!254073 lambda!253972))))

(declare-fun bs!1197315 () Bool)

(assert (= bs!1197315 (and d!1660241 d!1660167)))

(assert (=> bs!1197315 (= lambda!254073 lambda!254056)))

(declare-fun bs!1197316 () Bool)

(assert (= bs!1197316 (and d!1660241 d!1660215)))

(assert (=> bs!1197316 (not (= lambda!254073 lambda!254068))))

(declare-fun bs!1197317 () Bool)

(assert (= bs!1197317 (and d!1660241 b!5130957)))

(assert (=> bs!1197317 (not (= lambda!254073 lambda!253974))))

(declare-fun bs!1197318 () Bool)

(assert (= bs!1197318 (and d!1660241 b!5130944)))

(assert (=> bs!1197318 (not (= lambda!254073 lambda!253971))))

(declare-fun bs!1197319 () Bool)

(assert (= bs!1197319 (and d!1660241 b!5130992)))

(assert (=> bs!1197319 (not (= lambda!254073 lambda!253977))))

(declare-fun bs!1197320 () Bool)

(assert (= bs!1197320 (and d!1660241 d!1659923)))

(assert (=> bs!1197320 (= (= lambda!253972 lambda!253909) (= lambda!254073 lambda!253980))))

(declare-fun bs!1197321 () Bool)

(assert (= bs!1197321 (and d!1660241 d!1659869)))

(assert (=> bs!1197321 (not (= lambda!254073 lambda!253949))))

(declare-fun bs!1197322 () Bool)

(assert (= bs!1197322 (and d!1660241 d!1660145)))

(assert (=> bs!1197322 (= (= lambda!253972 lambda!253983) (= lambda!254073 lambda!254046))))

(declare-fun bs!1197323 () Bool)

(assert (= bs!1197323 (and d!1660241 b!5130943)))

(assert (=> bs!1197323 (not (= lambda!254073 lambda!253970))))

(declare-fun bs!1197324 () Bool)

(assert (= bs!1197324 (and d!1660241 d!1660199)))

(assert (=> bs!1197324 (not (= lambda!254073 lambda!254066))))

(declare-fun bs!1197325 () Bool)

(assert (= bs!1197325 (and d!1660241 b!5131004)))

(assert (=> bs!1197325 (not (= lambda!254073 lambda!253991))))

(declare-fun bs!1197326 () Bool)

(assert (= bs!1197326 (and d!1660241 d!1659941)))

(assert (=> bs!1197326 (not (= lambda!254073 lambda!253990))))

(declare-fun bs!1197327 () Bool)

(assert (= bs!1197327 (and d!1660241 d!1660157)))

(assert (=> bs!1197327 (= (= lambda!253972 (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254073 lambda!254051))))

(declare-fun bs!1197328 () Bool)

(assert (= bs!1197328 (and d!1660241 d!1660181)))

(assert (=> bs!1197328 (= (= lambda!253972 lambda!253975) (= lambda!254073 lambda!254057))))

(declare-fun bs!1197329 () Bool)

(assert (= bs!1197329 (and d!1660241 d!1660221)))

(assert (=> bs!1197329 (= (= lambda!253972 lambda!253969) (= lambda!254073 lambda!254069))))

(declare-fun bs!1197330 () Bool)

(assert (= bs!1197330 (and d!1660241 b!5130991)))

(assert (=> bs!1197330 (not (= lambda!254073 lambda!253976))))

(declare-fun bs!1197331 () Bool)

(assert (= bs!1197331 (and d!1660241 b!5130857)))

(assert (=> bs!1197331 (not (= lambda!254073 lambda!253910))))

(declare-fun bs!1197332 () Bool)

(assert (= bs!1197332 (and d!1660241 d!1660161)))

(assert (=> bs!1197332 (= (= lambda!253972 (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254073 lambda!254052))))

(declare-fun bs!1197333 () Bool)

(assert (= bs!1197333 (and d!1660241 d!1659925)))

(assert (=> bs!1197333 (= (= lambda!253972 lambda!253908) (= lambda!254073 lambda!253983))))

(declare-fun bs!1197334 () Bool)

(assert (= bs!1197334 (and d!1660241 b!5130956)))

(assert (=> bs!1197334 (not (= lambda!254073 lambda!253973))))

(declare-fun bs!1197335 () Bool)

(assert (= bs!1197335 (and d!1660241 d!1659881)))

(assert (=> bs!1197335 (not (= lambda!254073 lambda!253969))))

(declare-fun bs!1197336 () Bool)

(assert (= bs!1197336 (and d!1660241 d!1660229)))

(assert (=> bs!1197336 (= (= lambda!253972 lambda!253990) (= lambda!254073 lambda!254070))))

(declare-fun bs!1197337 () Bool)

(assert (= bs!1197337 (and d!1660241 b!5130845)))

(assert (=> bs!1197337 (not (= lambda!254073 lambda!253908))))

(declare-fun bs!1197338 () Bool)

(assert (= bs!1197338 (and d!1660241 b!5130842)))

(assert (=> bs!1197338 (not (= lambda!254073 lambda!253909))))

(declare-fun bs!1197339 () Bool)

(assert (= bs!1197339 (and d!1660241 d!1659919)))

(assert (=> bs!1197339 (not (= lambda!254073 lambda!253975))))

(declare-fun bs!1197340 () Bool)

(assert (= bs!1197340 (and d!1660241 d!1660155)))

(assert (=> bs!1197340 (= (= lambda!253972 lambda!253990) (= lambda!254073 lambda!254050))))

(declare-fun bs!1197341 () Bool)

(assert (= bs!1197341 (and d!1660241 d!1660139)))

(assert (=> bs!1197341 (= (= lambda!253972 lambda!253909) (= lambda!254073 lambda!254042))))

(declare-fun bs!1197342 () Bool)

(assert (= bs!1197342 (and d!1660241 d!1660135)))

(assert (=> bs!1197342 (not (= lambda!254073 lambda!254041))))

(declare-fun bs!1197343 () Bool)

(assert (= bs!1197343 (and d!1660241 b!5131005)))

(assert (=> bs!1197343 (not (= lambda!254073 lambda!253992))))

(declare-fun bs!1197344 () Bool)

(assert (= bs!1197344 (and d!1660241 d!1660147)))

(assert (=> bs!1197344 (= (= lambda!253972 lambda!253908) (= lambda!254073 lambda!254049))))

(declare-fun bs!1197345 () Bool)

(assert (= bs!1197345 (and d!1660241 d!1660191)))

(assert (=> bs!1197345 (not (= lambda!254073 lambda!254065))))

(assert (=> d!1660241 true))

(assert (=> d!1660241 (< (dynLambda!23682 order!26849 lambda!253972) (dynLambda!23682 order!26849 lambda!254073))))

(assert (=> d!1660241 (not (exists!1644 lt!2116799 lambda!254073))))

(declare-fun lt!2116905 () Unit!150733)

(assert (=> d!1660241 (= lt!2116905 (choose!37871 lt!2116799 lambda!253972))))

(assert (=> d!1660241 (forall!13759 lt!2116799 lambda!253972)))

(assert (=> d!1660241 (= (lemmaForallThenNotExists!352 lt!2116799 lambda!253972) lt!2116905)))

(declare-fun bs!1197346 () Bool)

(assert (= bs!1197346 d!1660241))

(declare-fun m!6196544 () Bool)

(assert (=> bs!1197346 m!6196544))

(declare-fun m!6196546 () Bool)

(assert (=> bs!1197346 m!6196546))

(declare-fun m!6196548 () Bool)

(assert (=> bs!1197346 m!6196548))

(assert (=> b!5130957 d!1660241))

(declare-fun d!1660243 () Bool)

(assert (=> d!1660243 (= (isEmpty!31990 (getLanguageWitness!862 lt!2116675)) (not ((_ is Some!14728) (getLanguageWitness!862 lt!2116675))))))

(assert (=> d!1659941 d!1660243))

(declare-fun bs!1197347 () Bool)

(declare-fun d!1660245 () Bool)

(assert (= bs!1197347 (and d!1660245 d!1660143)))

(declare-fun lambda!254074 () Int)

(assert (=> bs!1197347 (not (= lambda!254074 lambda!254045))))

(declare-fun bs!1197348 () Bool)

(assert (= bs!1197348 (and d!1660245 d!1659911)))

(assert (=> bs!1197348 (not (= lambda!254074 lambda!253972))))

(declare-fun bs!1197349 () Bool)

(assert (= bs!1197349 (and d!1660245 d!1660167)))

(assert (=> bs!1197349 (not (= lambda!254074 lambda!254056))))

(declare-fun bs!1197350 () Bool)

(assert (= bs!1197350 (and d!1660245 d!1660215)))

(assert (=> bs!1197350 (= lambda!254074 lambda!254068)))

(declare-fun bs!1197351 () Bool)

(assert (= bs!1197351 (and d!1660245 b!5130957)))

(assert (=> bs!1197351 (= lambda!254074 lambda!253974)))

(declare-fun bs!1197352 () Bool)

(assert (= bs!1197352 (and d!1660245 b!5130944)))

(assert (=> bs!1197352 (= lambda!254074 lambda!253971)))

(declare-fun bs!1197353 () Bool)

(assert (= bs!1197353 (and d!1660245 b!5130992)))

(assert (=> bs!1197353 (= lambda!254074 lambda!253977)))

(declare-fun bs!1197354 () Bool)

(assert (= bs!1197354 (and d!1660245 d!1659923)))

(assert (=> bs!1197354 (not (= lambda!254074 lambda!253980))))

(declare-fun bs!1197355 () Bool)

(assert (= bs!1197355 (and d!1660245 d!1659869)))

(assert (=> bs!1197355 (not (= lambda!254074 lambda!253949))))

(declare-fun bs!1197356 () Bool)

(assert (= bs!1197356 (and d!1660245 d!1660145)))

(assert (=> bs!1197356 (not (= lambda!254074 lambda!254046))))

(declare-fun bs!1197357 () Bool)

(assert (= bs!1197357 (and d!1660245 b!5130943)))

(assert (=> bs!1197357 (= lambda!254074 lambda!253970)))

(declare-fun bs!1197358 () Bool)

(assert (= bs!1197358 (and d!1660245 d!1660199)))

(assert (=> bs!1197358 (= lambda!254074 lambda!254066)))

(declare-fun bs!1197359 () Bool)

(assert (= bs!1197359 (and d!1660245 b!5131004)))

(assert (=> bs!1197359 (= lambda!254074 lambda!253991)))

(declare-fun bs!1197360 () Bool)

(assert (= bs!1197360 (and d!1660245 d!1659941)))

(assert (=> bs!1197360 (not (= lambda!254074 lambda!253990))))

(declare-fun bs!1197361 () Bool)

(assert (= bs!1197361 (and d!1660245 d!1660241)))

(assert (=> bs!1197361 (not (= lambda!254074 lambda!254073))))

(declare-fun bs!1197362 () Bool)

(assert (= bs!1197362 (and d!1660245 d!1660157)))

(assert (=> bs!1197362 (not (= lambda!254074 lambda!254051))))

(declare-fun bs!1197363 () Bool)

(assert (= bs!1197363 (and d!1660245 d!1660181)))

(assert (=> bs!1197363 (not (= lambda!254074 lambda!254057))))

(declare-fun bs!1197364 () Bool)

(assert (= bs!1197364 (and d!1660245 d!1660221)))

(assert (=> bs!1197364 (not (= lambda!254074 lambda!254069))))

(declare-fun bs!1197365 () Bool)

(assert (= bs!1197365 (and d!1660245 b!5130991)))

(assert (=> bs!1197365 (= lambda!254074 lambda!253976)))

(declare-fun bs!1197366 () Bool)

(assert (= bs!1197366 (and d!1660245 b!5130857)))

(assert (=> bs!1197366 (not (= lambda!254074 lambda!253910))))

(declare-fun bs!1197367 () Bool)

(assert (= bs!1197367 (and d!1660245 d!1660161)))

(assert (=> bs!1197367 (not (= lambda!254074 lambda!254052))))

(declare-fun bs!1197368 () Bool)

(assert (= bs!1197368 (and d!1660245 d!1659925)))

(assert (=> bs!1197368 (not (= lambda!254074 lambda!253983))))

(declare-fun bs!1197369 () Bool)

(assert (= bs!1197369 (and d!1660245 b!5130956)))

(assert (=> bs!1197369 (= lambda!254074 lambda!253973)))

(declare-fun bs!1197370 () Bool)

(assert (= bs!1197370 (and d!1660245 d!1659881)))

(assert (=> bs!1197370 (not (= lambda!254074 lambda!253969))))

(declare-fun bs!1197371 () Bool)

(assert (= bs!1197371 (and d!1660245 d!1660229)))

(assert (=> bs!1197371 (not (= lambda!254074 lambda!254070))))

(declare-fun bs!1197372 () Bool)

(assert (= bs!1197372 (and d!1660245 b!5130845)))

(assert (=> bs!1197372 (not (= lambda!254074 lambda!253908))))

(declare-fun bs!1197373 () Bool)

(assert (= bs!1197373 (and d!1660245 b!5130842)))

(assert (=> bs!1197373 (= lambda!254074 lambda!253909)))

(declare-fun bs!1197374 () Bool)

(assert (= bs!1197374 (and d!1660245 d!1659919)))

(assert (=> bs!1197374 (not (= lambda!254074 lambda!253975))))

(declare-fun bs!1197375 () Bool)

(assert (= bs!1197375 (and d!1660245 d!1660155)))

(assert (=> bs!1197375 (not (= lambda!254074 lambda!254050))))

(declare-fun bs!1197376 () Bool)

(assert (= bs!1197376 (and d!1660245 d!1660139)))

(assert (=> bs!1197376 (not (= lambda!254074 lambda!254042))))

(declare-fun bs!1197377 () Bool)

(assert (= bs!1197377 (and d!1660245 d!1660135)))

(assert (=> bs!1197377 (not (= lambda!254074 lambda!254041))))

(declare-fun bs!1197378 () Bool)

(assert (= bs!1197378 (and d!1660245 b!5131005)))

(assert (=> bs!1197378 (= lambda!254074 lambda!253992)))

(declare-fun bs!1197379 () Bool)

(assert (= bs!1197379 (and d!1660245 d!1660147)))

(assert (=> bs!1197379 (not (= lambda!254074 lambda!254049))))

(declare-fun bs!1197380 () Bool)

(assert (= bs!1197380 (and d!1660245 d!1660191)))

(assert (=> bs!1197380 (= lambda!254074 lambda!254065)))

(declare-fun lt!2116906 () Option!14729)

(assert (=> d!1660245 (= (isDefined!11524 lt!2116906) (exists!1643 lt!2116675 lambda!254074))))

(declare-fun e!3200334 () Option!14729)

(assert (=> d!1660245 (= lt!2116906 e!3200334)))

(declare-fun c!882721 () Bool)

(assert (=> d!1660245 (= c!882721 (exists!1643 lt!2116675 lambda!254074))))

(assert (=> d!1660245 (= (getLanguageWitness!862 lt!2116675) lt!2116906)))

(declare-fun b!5131260 () Bool)

(assert (=> b!5131260 (= e!3200334 (getLanguageWitness!864 (getWitness!795 lt!2116675 lambda!254074)))))

(declare-fun b!5131261 () Bool)

(assert (=> b!5131261 (= e!3200334 None!14728)))

(assert (= (and d!1660245 c!882721) b!5131260))

(assert (= (and d!1660245 (not c!882721)) b!5131261))

(declare-fun m!6196550 () Bool)

(assert (=> d!1660245 m!6196550))

(declare-fun m!6196552 () Bool)

(assert (=> d!1660245 m!6196552))

(assert (=> d!1660245 m!6196552))

(declare-fun m!6196554 () Bool)

(assert (=> b!5131260 m!6196554))

(assert (=> b!5131260 m!6196554))

(declare-fun m!6196556 () Bool)

(assert (=> b!5131260 m!6196556))

(assert (=> d!1659941 d!1660245))

(declare-fun d!1660247 () Bool)

(declare-fun lt!2116907 () Bool)

(assert (=> d!1660247 (= lt!2116907 (forall!13759 (toList!8329 lt!2116675) lambda!253990))))

(assert (=> d!1660247 (= lt!2116907 (choose!37868 lt!2116675 lambda!253990))))

(assert (=> d!1660247 (= (forall!13758 lt!2116675 lambda!253990) lt!2116907)))

(declare-fun bs!1197381 () Bool)

(assert (= bs!1197381 d!1660247))

(assert (=> bs!1197381 m!6195688))

(assert (=> bs!1197381 m!6195688))

(declare-fun m!6196558 () Bool)

(assert (=> bs!1197381 m!6196558))

(declare-fun m!6196560 () Bool)

(assert (=> bs!1197381 m!6196560))

(assert (=> d!1659941 d!1660247))

(declare-fun bs!1197382 () Bool)

(declare-fun d!1660249 () Bool)

(assert (= bs!1197382 (and d!1660249 d!1660143)))

(declare-fun lambda!254075 () Int)

(assert (=> bs!1197382 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253969) (= lambda!254075 lambda!254045))))

(declare-fun bs!1197383 () Bool)

(assert (= bs!1197383 (and d!1660249 d!1659911)))

(assert (=> bs!1197383 (not (= lambda!254075 lambda!253972))))

(declare-fun bs!1197384 () Bool)

(assert (= bs!1197384 (and d!1660249 d!1660167)))

(assert (=> bs!1197384 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253972) (= lambda!254075 lambda!254056))))

(declare-fun bs!1197385 () Bool)

(assert (= bs!1197385 (and d!1660249 d!1660215)))

(assert (=> bs!1197385 (not (= lambda!254075 lambda!254068))))

(declare-fun bs!1197386 () Bool)

(assert (= bs!1197386 (and d!1660249 b!5130957)))

(assert (=> bs!1197386 (not (= lambda!254075 lambda!253974))))

(declare-fun bs!1197387 () Bool)

(assert (= bs!1197387 (and d!1660249 b!5130944)))

(assert (=> bs!1197387 (not (= lambda!254075 lambda!253971))))

(declare-fun bs!1197388 () Bool)

(assert (= bs!1197388 (and d!1660249 b!5130992)))

(assert (=> bs!1197388 (not (= lambda!254075 lambda!253977))))

(declare-fun bs!1197389 () Bool)

(assert (= bs!1197389 (and d!1660249 d!1659923)))

(assert (=> bs!1197389 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253909) (= lambda!254075 lambda!253980))))

(declare-fun bs!1197390 () Bool)

(assert (= bs!1197390 (and d!1660249 d!1659869)))

(assert (=> bs!1197390 (not (= lambda!254075 lambda!253949))))

(declare-fun bs!1197391 () Bool)

(assert (= bs!1197391 (and d!1660249 d!1660145)))

(assert (=> bs!1197391 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253983) (= lambda!254075 lambda!254046))))

(declare-fun bs!1197392 () Bool)

(assert (= bs!1197392 (and d!1660249 b!5130943)))

(assert (=> bs!1197392 (not (= lambda!254075 lambda!253970))))

(declare-fun bs!1197393 () Bool)

(assert (= bs!1197393 (and d!1660249 b!5131004)))

(assert (=> bs!1197393 (not (= lambda!254075 lambda!253991))))

(declare-fun bs!1197394 () Bool)

(assert (= bs!1197394 (and d!1660249 d!1659941)))

(assert (=> bs!1197394 (not (= lambda!254075 lambda!253990))))

(declare-fun bs!1197395 () Bool)

(assert (= bs!1197395 (and d!1660249 d!1660241)))

(assert (=> bs!1197395 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253972) (= lambda!254075 lambda!254073))))

(declare-fun bs!1197396 () Bool)

(assert (= bs!1197396 (and d!1660249 d!1660157)))

(assert (=> bs!1197396 (= (= (ite c!882641 lambda!253973 lambda!253974) (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254075 lambda!254051))))

(declare-fun bs!1197397 () Bool)

(assert (= bs!1197397 (and d!1660249 d!1660181)))

(assert (=> bs!1197397 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253975) (= lambda!254075 lambda!254057))))

(declare-fun bs!1197398 () Bool)

(assert (= bs!1197398 (and d!1660249 d!1660221)))

(assert (=> bs!1197398 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253969) (= lambda!254075 lambda!254069))))

(declare-fun bs!1197399 () Bool)

(assert (= bs!1197399 (and d!1660249 b!5130991)))

(assert (=> bs!1197399 (not (= lambda!254075 lambda!253976))))

(declare-fun bs!1197400 () Bool)

(assert (= bs!1197400 (and d!1660249 b!5130857)))

(assert (=> bs!1197400 (not (= lambda!254075 lambda!253910))))

(declare-fun bs!1197401 () Bool)

(assert (= bs!1197401 (and d!1660249 d!1660161)))

(assert (=> bs!1197401 (= (= (ite c!882641 lambda!253973 lambda!253974) (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254075 lambda!254052))))

(declare-fun bs!1197402 () Bool)

(assert (= bs!1197402 (and d!1660249 d!1659925)))

(assert (=> bs!1197402 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253908) (= lambda!254075 lambda!253983))))

(declare-fun bs!1197403 () Bool)

(assert (= bs!1197403 (and d!1660249 b!5130956)))

(assert (=> bs!1197403 (not (= lambda!254075 lambda!253973))))

(declare-fun bs!1197404 () Bool)

(assert (= bs!1197404 (and d!1660249 d!1659881)))

(assert (=> bs!1197404 (not (= lambda!254075 lambda!253969))))

(declare-fun bs!1197405 () Bool)

(assert (= bs!1197405 (and d!1660249 d!1660229)))

(assert (=> bs!1197405 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253990) (= lambda!254075 lambda!254070))))

(declare-fun bs!1197406 () Bool)

(assert (= bs!1197406 (and d!1660249 b!5130845)))

(assert (=> bs!1197406 (not (= lambda!254075 lambda!253908))))

(declare-fun bs!1197407 () Bool)

(assert (= bs!1197407 (and d!1660249 b!5130842)))

(assert (=> bs!1197407 (not (= lambda!254075 lambda!253909))))

(declare-fun bs!1197408 () Bool)

(assert (= bs!1197408 (and d!1660249 d!1659919)))

(assert (=> bs!1197408 (not (= lambda!254075 lambda!253975))))

(declare-fun bs!1197409 () Bool)

(assert (= bs!1197409 (and d!1660249 d!1660155)))

(assert (=> bs!1197409 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253990) (= lambda!254075 lambda!254050))))

(declare-fun bs!1197410 () Bool)

(assert (= bs!1197410 (and d!1660249 d!1660139)))

(assert (=> bs!1197410 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253909) (= lambda!254075 lambda!254042))))

(declare-fun bs!1197411 () Bool)

(assert (= bs!1197411 (and d!1660249 d!1660135)))

(assert (=> bs!1197411 (not (= lambda!254075 lambda!254041))))

(declare-fun bs!1197412 () Bool)

(assert (= bs!1197412 (and d!1660249 b!5131005)))

(assert (=> bs!1197412 (not (= lambda!254075 lambda!253992))))

(declare-fun bs!1197413 () Bool)

(assert (= bs!1197413 (and d!1660249 d!1660147)))

(assert (=> bs!1197413 (= (= (ite c!882641 lambda!253973 lambda!253974) lambda!253908) (= lambda!254075 lambda!254049))))

(declare-fun bs!1197414 () Bool)

(assert (= bs!1197414 (and d!1660249 d!1660191)))

(assert (=> bs!1197414 (not (= lambda!254075 lambda!254065))))

(declare-fun bs!1197415 () Bool)

(assert (= bs!1197415 (and d!1660249 d!1660245)))

(assert (=> bs!1197415 (not (= lambda!254075 lambda!254074))))

(declare-fun bs!1197416 () Bool)

(assert (= bs!1197416 (and d!1660249 d!1660199)))

(assert (=> bs!1197416 (not (= lambda!254075 lambda!254066))))

(assert (=> d!1660249 true))

(assert (=> d!1660249 (< (dynLambda!23682 order!26849 (ite c!882641 lambda!253973 lambda!253974)) (dynLambda!23682 order!26849 lambda!254075))))

(assert (=> d!1660249 (= (exists!1644 (ite c!882641 lt!2116802 lt!2116799) (ite c!882641 lambda!253973 lambda!253974)) (not (forall!13759 (ite c!882641 lt!2116802 lt!2116799) lambda!254075)))))

(declare-fun bs!1197417 () Bool)

(assert (= bs!1197417 d!1660249))

(declare-fun m!6196562 () Bool)

(assert (=> bs!1197417 m!6196562))

(assert (=> bm!357077 d!1660249))

(assert (=> bs!1196204 d!1659947))

(declare-fun d!1660251 () Bool)

(declare-fun c!882722 () Bool)

(assert (=> d!1660251 (= c!882722 ((_ is Nil!59484) lt!2116827))))

(declare-fun e!3200335 () (InoxSet Context!7446))

(assert (=> d!1660251 (= (content!10569 lt!2116827) e!3200335)))

(declare-fun b!5131262 () Bool)

(assert (=> b!5131262 (= e!3200335 ((as const (Array Context!7446 Bool)) false))))

(declare-fun b!5131263 () Bool)

(assert (=> b!5131263 (= e!3200335 ((_ map or) (store ((as const (Array Context!7446 Bool)) false) (h!65932 lt!2116827) true) (content!10569 (t!372635 lt!2116827))))))

(assert (= (and d!1660251 c!882722) b!5131262))

(assert (= (and d!1660251 (not c!882722)) b!5131263))

(declare-fun m!6196564 () Bool)

(assert (=> b!5131263 m!6196564))

(declare-fun m!6196566 () Bool)

(assert (=> b!5131263 m!6196566))

(assert (=> b!5130997 d!1660251))

(declare-fun bs!1197418 () Bool)

(declare-fun d!1660253 () Bool)

(assert (= bs!1197418 (and d!1660253 d!1660143)))

(declare-fun lambda!254076 () Int)

(assert (=> bs!1197418 (= (= lambda!253975 lambda!253969) (= lambda!254076 lambda!254045))))

(declare-fun bs!1197419 () Bool)

(assert (= bs!1197419 (and d!1660253 d!1659911)))

(assert (=> bs!1197419 (not (= lambda!254076 lambda!253972))))

(declare-fun bs!1197420 () Bool)

(assert (= bs!1197420 (and d!1660253 d!1660167)))

(assert (=> bs!1197420 (= (= lambda!253975 lambda!253972) (= lambda!254076 lambda!254056))))

(declare-fun bs!1197421 () Bool)

(assert (= bs!1197421 (and d!1660253 d!1660215)))

(assert (=> bs!1197421 (not (= lambda!254076 lambda!254068))))

(declare-fun bs!1197422 () Bool)

(assert (= bs!1197422 (and d!1660253 b!5130957)))

(assert (=> bs!1197422 (not (= lambda!254076 lambda!253974))))

(declare-fun bs!1197423 () Bool)

(assert (= bs!1197423 (and d!1660253 b!5130944)))

(assert (=> bs!1197423 (not (= lambda!254076 lambda!253971))))

(declare-fun bs!1197424 () Bool)

(assert (= bs!1197424 (and d!1660253 b!5130992)))

(assert (=> bs!1197424 (not (= lambda!254076 lambda!253977))))

(declare-fun bs!1197425 () Bool)

(assert (= bs!1197425 (and d!1660253 d!1659923)))

(assert (=> bs!1197425 (= (= lambda!253975 lambda!253909) (= lambda!254076 lambda!253980))))

(declare-fun bs!1197426 () Bool)

(assert (= bs!1197426 (and d!1660253 d!1659869)))

(assert (=> bs!1197426 (not (= lambda!254076 lambda!253949))))

(declare-fun bs!1197427 () Bool)

(assert (= bs!1197427 (and d!1660253 d!1660145)))

(assert (=> bs!1197427 (= (= lambda!253975 lambda!253983) (= lambda!254076 lambda!254046))))

(declare-fun bs!1197428 () Bool)

(assert (= bs!1197428 (and d!1660253 b!5130943)))

(assert (=> bs!1197428 (not (= lambda!254076 lambda!253970))))

(declare-fun bs!1197429 () Bool)

(assert (= bs!1197429 (and d!1660253 d!1660249)))

(assert (=> bs!1197429 (= (= lambda!253975 (ite c!882641 lambda!253973 lambda!253974)) (= lambda!254076 lambda!254075))))

(declare-fun bs!1197430 () Bool)

(assert (= bs!1197430 (and d!1660253 b!5131004)))

(assert (=> bs!1197430 (not (= lambda!254076 lambda!253991))))

(declare-fun bs!1197431 () Bool)

(assert (= bs!1197431 (and d!1660253 d!1659941)))

(assert (=> bs!1197431 (not (= lambda!254076 lambda!253990))))

(declare-fun bs!1197432 () Bool)

(assert (= bs!1197432 (and d!1660253 d!1660241)))

(assert (=> bs!1197432 (= (= lambda!253975 lambda!253972) (= lambda!254076 lambda!254073))))

(declare-fun bs!1197433 () Bool)

(assert (= bs!1197433 (and d!1660253 d!1660157)))

(assert (=> bs!1197433 (= (= lambda!253975 (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254076 lambda!254051))))

(declare-fun bs!1197434 () Bool)

(assert (= bs!1197434 (and d!1660253 d!1660181)))

(assert (=> bs!1197434 (= lambda!254076 lambda!254057)))

(declare-fun bs!1197435 () Bool)

(assert (= bs!1197435 (and d!1660253 d!1660221)))

(assert (=> bs!1197435 (= (= lambda!253975 lambda!253969) (= lambda!254076 lambda!254069))))

(declare-fun bs!1197436 () Bool)

(assert (= bs!1197436 (and d!1660253 b!5130991)))

(assert (=> bs!1197436 (not (= lambda!254076 lambda!253976))))

(declare-fun bs!1197437 () Bool)

(assert (= bs!1197437 (and d!1660253 b!5130857)))

(assert (=> bs!1197437 (not (= lambda!254076 lambda!253910))))

(declare-fun bs!1197438 () Bool)

(assert (= bs!1197438 (and d!1660253 d!1660161)))

(assert (=> bs!1197438 (= (= lambda!253975 (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254076 lambda!254052))))

(declare-fun bs!1197439 () Bool)

(assert (= bs!1197439 (and d!1660253 d!1659925)))

(assert (=> bs!1197439 (= (= lambda!253975 lambda!253908) (= lambda!254076 lambda!253983))))

(declare-fun bs!1197440 () Bool)

(assert (= bs!1197440 (and d!1660253 b!5130956)))

(assert (=> bs!1197440 (not (= lambda!254076 lambda!253973))))

(declare-fun bs!1197441 () Bool)

(assert (= bs!1197441 (and d!1660253 d!1659881)))

(assert (=> bs!1197441 (not (= lambda!254076 lambda!253969))))

(declare-fun bs!1197442 () Bool)

(assert (= bs!1197442 (and d!1660253 d!1660229)))

(assert (=> bs!1197442 (= (= lambda!253975 lambda!253990) (= lambda!254076 lambda!254070))))

(declare-fun bs!1197443 () Bool)

(assert (= bs!1197443 (and d!1660253 b!5130845)))

(assert (=> bs!1197443 (not (= lambda!254076 lambda!253908))))

(declare-fun bs!1197444 () Bool)

(assert (= bs!1197444 (and d!1660253 b!5130842)))

(assert (=> bs!1197444 (not (= lambda!254076 lambda!253909))))

(declare-fun bs!1197445 () Bool)

(assert (= bs!1197445 (and d!1660253 d!1659919)))

(assert (=> bs!1197445 (not (= lambda!254076 lambda!253975))))

(declare-fun bs!1197446 () Bool)

(assert (= bs!1197446 (and d!1660253 d!1660155)))

(assert (=> bs!1197446 (= (= lambda!253975 lambda!253990) (= lambda!254076 lambda!254050))))

(declare-fun bs!1197447 () Bool)

(assert (= bs!1197447 (and d!1660253 d!1660139)))

(assert (=> bs!1197447 (= (= lambda!253975 lambda!253909) (= lambda!254076 lambda!254042))))

(declare-fun bs!1197448 () Bool)

(assert (= bs!1197448 (and d!1660253 d!1660135)))

(assert (=> bs!1197448 (not (= lambda!254076 lambda!254041))))

(declare-fun bs!1197449 () Bool)

(assert (= bs!1197449 (and d!1660253 b!5131005)))

(assert (=> bs!1197449 (not (= lambda!254076 lambda!253992))))

(declare-fun bs!1197450 () Bool)

(assert (= bs!1197450 (and d!1660253 d!1660147)))

(assert (=> bs!1197450 (= (= lambda!253975 lambda!253908) (= lambda!254076 lambda!254049))))

(declare-fun bs!1197451 () Bool)

(assert (= bs!1197451 (and d!1660253 d!1660191)))

(assert (=> bs!1197451 (not (= lambda!254076 lambda!254065))))

(declare-fun bs!1197452 () Bool)

(assert (= bs!1197452 (and d!1660253 d!1660245)))

(assert (=> bs!1197452 (not (= lambda!254076 lambda!254074))))

(declare-fun bs!1197453 () Bool)

(assert (= bs!1197453 (and d!1660253 d!1660199)))

(assert (=> bs!1197453 (not (= lambda!254076 lambda!254066))))

(assert (=> d!1660253 true))

(assert (=> d!1660253 (< (dynLambda!23682 order!26849 lambda!253975) (dynLambda!23682 order!26849 lambda!254076))))

(assert (=> d!1660253 (not (exists!1644 lt!2116816 lambda!254076))))

(declare-fun lt!2116908 () Unit!150733)

(assert (=> d!1660253 (= lt!2116908 (choose!37871 lt!2116816 lambda!253975))))

(assert (=> d!1660253 (forall!13759 lt!2116816 lambda!253975)))

(assert (=> d!1660253 (= (lemmaForallThenNotExists!352 lt!2116816 lambda!253975) lt!2116908)))

(declare-fun bs!1197454 () Bool)

(assert (= bs!1197454 d!1660253))

(declare-fun m!6196568 () Bool)

(assert (=> bs!1197454 m!6196568))

(declare-fun m!6196570 () Bool)

(assert (=> bs!1197454 m!6196570))

(declare-fun m!6196572 () Bool)

(assert (=> bs!1197454 m!6196572))

(assert (=> b!5130992 d!1660253))

(declare-fun d!1660255 () Bool)

(declare-fun res!2185396 () Bool)

(declare-fun e!3200340 () Bool)

(assert (=> d!1660255 (=> res!2185396 e!3200340)))

(assert (=> d!1660255 (= res!2185396 ((_ is Nil!59483) (exprs!4223 setElem!31058)))))

(assert (=> d!1660255 (= (forall!13761 (exprs!4223 setElem!31058) lambda!253995) e!3200340)))

(declare-fun b!5131268 () Bool)

(declare-fun e!3200341 () Bool)

(assert (=> b!5131268 (= e!3200340 e!3200341)))

(declare-fun res!2185397 () Bool)

(assert (=> b!5131268 (=> (not res!2185397) (not e!3200341))))

(declare-fun dynLambda!23687 (Int Regex!14339) Bool)

(assert (=> b!5131268 (= res!2185397 (dynLambda!23687 lambda!253995 (h!65931 (exprs!4223 setElem!31058))))))

(declare-fun b!5131269 () Bool)

(assert (=> b!5131269 (= e!3200341 (forall!13761 (t!372634 (exprs!4223 setElem!31058)) lambda!253995))))

(assert (= (and d!1660255 (not res!2185396)) b!5131268))

(assert (= (and b!5131268 res!2185397) b!5131269))

(declare-fun b_lambda!199743 () Bool)

(assert (=> (not b_lambda!199743) (not b!5131268)))

(declare-fun m!6196574 () Bool)

(assert (=> b!5131268 m!6196574))

(declare-fun m!6196576 () Bool)

(assert (=> b!5131269 m!6196576))

(assert (=> d!1659945 d!1660255))

(declare-fun bs!1197455 () Bool)

(declare-fun d!1660257 () Bool)

(assert (= bs!1197455 (and d!1660257 d!1660143)))

(declare-fun lambda!254077 () Int)

(assert (=> bs!1197455 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253969) (= lambda!254077 lambda!254045))))

(declare-fun bs!1197456 () Bool)

(assert (= bs!1197456 (and d!1660257 d!1659911)))

(assert (=> bs!1197456 (not (= lambda!254077 lambda!253972))))

(declare-fun bs!1197457 () Bool)

(assert (= bs!1197457 (and d!1660257 d!1660167)))

(assert (=> bs!1197457 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253972) (= lambda!254077 lambda!254056))))

(declare-fun bs!1197458 () Bool)

(assert (= bs!1197458 (and d!1660257 d!1660215)))

(assert (=> bs!1197458 (not (= lambda!254077 lambda!254068))))

(declare-fun bs!1197459 () Bool)

(assert (= bs!1197459 (and d!1660257 b!5130957)))

(assert (=> bs!1197459 (not (= lambda!254077 lambda!253974))))

(declare-fun bs!1197460 () Bool)

(assert (= bs!1197460 (and d!1660257 b!5130992)))

(assert (=> bs!1197460 (not (= lambda!254077 lambda!253977))))

(declare-fun bs!1197461 () Bool)

(assert (= bs!1197461 (and d!1660257 d!1659923)))

(assert (=> bs!1197461 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253909) (= lambda!254077 lambda!253980))))

(declare-fun bs!1197462 () Bool)

(assert (= bs!1197462 (and d!1660257 d!1659869)))

(assert (=> bs!1197462 (not (= lambda!254077 lambda!253949))))

(declare-fun bs!1197463 () Bool)

(assert (= bs!1197463 (and d!1660257 d!1660145)))

(assert (=> bs!1197463 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253983) (= lambda!254077 lambda!254046))))

(declare-fun bs!1197464 () Bool)

(assert (= bs!1197464 (and d!1660257 b!5130943)))

(assert (=> bs!1197464 (not (= lambda!254077 lambda!253970))))

(declare-fun bs!1197465 () Bool)

(assert (= bs!1197465 (and d!1660257 d!1660249)))

(assert (=> bs!1197465 (= (= (ite c!882654 lambda!253976 lambda!253977) (ite c!882641 lambda!253973 lambda!253974)) (= lambda!254077 lambda!254075))))

(declare-fun bs!1197466 () Bool)

(assert (= bs!1197466 (and d!1660257 b!5131004)))

(assert (=> bs!1197466 (not (= lambda!254077 lambda!253991))))

(declare-fun bs!1197467 () Bool)

(assert (= bs!1197467 (and d!1660257 d!1659941)))

(assert (=> bs!1197467 (not (= lambda!254077 lambda!253990))))

(declare-fun bs!1197468 () Bool)

(assert (= bs!1197468 (and d!1660257 d!1660241)))

(assert (=> bs!1197468 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253972) (= lambda!254077 lambda!254073))))

(declare-fun bs!1197469 () Bool)

(assert (= bs!1197469 (and d!1660257 d!1660157)))

(assert (=> bs!1197469 (= (= (ite c!882654 lambda!253976 lambda!253977) (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254077 lambda!254051))))

(declare-fun bs!1197470 () Bool)

(assert (= bs!1197470 (and d!1660257 d!1660181)))

(assert (=> bs!1197470 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253975) (= lambda!254077 lambda!254057))))

(declare-fun bs!1197471 () Bool)

(assert (= bs!1197471 (and d!1660257 d!1660221)))

(assert (=> bs!1197471 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253969) (= lambda!254077 lambda!254069))))

(declare-fun bs!1197472 () Bool)

(assert (= bs!1197472 (and d!1660257 b!5130991)))

(assert (=> bs!1197472 (not (= lambda!254077 lambda!253976))))

(declare-fun bs!1197473 () Bool)

(assert (= bs!1197473 (and d!1660257 b!5130857)))

(assert (=> bs!1197473 (not (= lambda!254077 lambda!253910))))

(declare-fun bs!1197474 () Bool)

(assert (= bs!1197474 (and d!1660257 d!1660161)))

(assert (=> bs!1197474 (= (= (ite c!882654 lambda!253976 lambda!253977) (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254077 lambda!254052))))

(declare-fun bs!1197475 () Bool)

(assert (= bs!1197475 (and d!1660257 d!1659925)))

(assert (=> bs!1197475 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253908) (= lambda!254077 lambda!253983))))

(declare-fun bs!1197476 () Bool)

(assert (= bs!1197476 (and d!1660257 b!5130944)))

(assert (=> bs!1197476 (not (= lambda!254077 lambda!253971))))

(declare-fun bs!1197477 () Bool)

(assert (= bs!1197477 (and d!1660257 d!1660253)))

(assert (=> bs!1197477 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253975) (= lambda!254077 lambda!254076))))

(declare-fun bs!1197478 () Bool)

(assert (= bs!1197478 (and d!1660257 b!5130956)))

(assert (=> bs!1197478 (not (= lambda!254077 lambda!253973))))

(declare-fun bs!1197479 () Bool)

(assert (= bs!1197479 (and d!1660257 d!1659881)))

(assert (=> bs!1197479 (not (= lambda!254077 lambda!253969))))

(declare-fun bs!1197480 () Bool)

(assert (= bs!1197480 (and d!1660257 d!1660229)))

(assert (=> bs!1197480 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253990) (= lambda!254077 lambda!254070))))

(declare-fun bs!1197481 () Bool)

(assert (= bs!1197481 (and d!1660257 b!5130845)))

(assert (=> bs!1197481 (not (= lambda!254077 lambda!253908))))

(declare-fun bs!1197482 () Bool)

(assert (= bs!1197482 (and d!1660257 b!5130842)))

(assert (=> bs!1197482 (not (= lambda!254077 lambda!253909))))

(declare-fun bs!1197483 () Bool)

(assert (= bs!1197483 (and d!1660257 d!1659919)))

(assert (=> bs!1197483 (not (= lambda!254077 lambda!253975))))

(declare-fun bs!1197484 () Bool)

(assert (= bs!1197484 (and d!1660257 d!1660155)))

(assert (=> bs!1197484 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253990) (= lambda!254077 lambda!254050))))

(declare-fun bs!1197485 () Bool)

(assert (= bs!1197485 (and d!1660257 d!1660139)))

(assert (=> bs!1197485 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253909) (= lambda!254077 lambda!254042))))

(declare-fun bs!1197486 () Bool)

(assert (= bs!1197486 (and d!1660257 d!1660135)))

(assert (=> bs!1197486 (not (= lambda!254077 lambda!254041))))

(declare-fun bs!1197487 () Bool)

(assert (= bs!1197487 (and d!1660257 b!5131005)))

(assert (=> bs!1197487 (not (= lambda!254077 lambda!253992))))

(declare-fun bs!1197488 () Bool)

(assert (= bs!1197488 (and d!1660257 d!1660147)))

(assert (=> bs!1197488 (= (= (ite c!882654 lambda!253976 lambda!253977) lambda!253908) (= lambda!254077 lambda!254049))))

(declare-fun bs!1197489 () Bool)

(assert (= bs!1197489 (and d!1660257 d!1660191)))

(assert (=> bs!1197489 (not (= lambda!254077 lambda!254065))))

(declare-fun bs!1197490 () Bool)

(assert (= bs!1197490 (and d!1660257 d!1660245)))

(assert (=> bs!1197490 (not (= lambda!254077 lambda!254074))))

(declare-fun bs!1197491 () Bool)

(assert (= bs!1197491 (and d!1660257 d!1660199)))

(assert (=> bs!1197491 (not (= lambda!254077 lambda!254066))))

(assert (=> d!1660257 true))

(assert (=> d!1660257 (< (dynLambda!23682 order!26849 (ite c!882654 lambda!253976 lambda!253977)) (dynLambda!23682 order!26849 lambda!254077))))

(assert (=> d!1660257 (= (exists!1644 (ite c!882654 lt!2116819 lt!2116816) (ite c!882654 lambda!253976 lambda!253977)) (not (forall!13759 (ite c!882654 lt!2116819 lt!2116816) lambda!254077)))))

(declare-fun bs!1197492 () Bool)

(assert (= bs!1197492 d!1660257))

(declare-fun m!6196578 () Bool)

(assert (=> bs!1197492 m!6196578))

(assert (=> bm!357082 d!1660257))

(declare-fun d!1660259 () Bool)

(declare-fun res!2185398 () Bool)

(declare-fun e!3200342 () Bool)

(assert (=> d!1660259 (=> res!2185398 e!3200342)))

(assert (=> d!1660259 (= res!2185398 ((_ is Nil!59484) lt!2116827))))

(assert (=> d!1660259 (= (noDuplicate!1092 lt!2116827) e!3200342)))

(declare-fun b!5131270 () Bool)

(declare-fun e!3200343 () Bool)

(assert (=> b!5131270 (= e!3200342 e!3200343)))

(declare-fun res!2185399 () Bool)

(assert (=> b!5131270 (=> (not res!2185399) (not e!3200343))))

(assert (=> b!5131270 (= res!2185399 (not (contains!19636 (t!372635 lt!2116827) (h!65932 lt!2116827))))))

(declare-fun b!5131271 () Bool)

(assert (=> b!5131271 (= e!3200343 (noDuplicate!1092 (t!372635 lt!2116827)))))

(assert (= (and d!1660259 (not res!2185398)) b!5131270))

(assert (= (and b!5131270 res!2185399) b!5131271))

(declare-fun m!6196580 () Bool)

(assert (=> b!5131270 m!6196580))

(declare-fun m!6196582 () Bool)

(assert (=> b!5131271 m!6196582))

(assert (=> d!1659927 d!1660259))

(declare-fun d!1660261 () Bool)

(declare-fun e!3200345 () Bool)

(assert (=> d!1660261 e!3200345))

(declare-fun res!2185400 () Bool)

(assert (=> d!1660261 (=> (not res!2185400) (not e!3200345))))

(declare-fun res!2185401 () List!59608)

(assert (=> d!1660261 (= res!2185400 (noDuplicate!1092 res!2185401))))

(declare-fun e!3200346 () Bool)

(assert (=> d!1660261 e!3200346))

(assert (=> d!1660261 (= (choose!37866 lt!2116675) res!2185401)))

(declare-fun b!5131273 () Bool)

(declare-fun e!3200344 () Bool)

(declare-fun tp!1431402 () Bool)

(assert (=> b!5131273 (= e!3200344 tp!1431402)))

(declare-fun tp!1431401 () Bool)

(declare-fun b!5131272 () Bool)

(assert (=> b!5131272 (= e!3200346 (and (inv!79028 (h!65932 res!2185401)) e!3200344 tp!1431401))))

(declare-fun b!5131274 () Bool)

(assert (=> b!5131274 (= e!3200345 (= (content!10569 res!2185401) lt!2116675))))

(assert (= b!5131272 b!5131273))

(assert (= (and d!1660261 ((_ is Cons!59484) res!2185401)) b!5131272))

(assert (= (and d!1660261 res!2185400) b!5131274))

(declare-fun m!6196584 () Bool)

(assert (=> d!1660261 m!6196584))

(declare-fun m!6196586 () Bool)

(assert (=> b!5131272 m!6196586))

(declare-fun m!6196588 () Bool)

(assert (=> b!5131274 m!6196588))

(assert (=> d!1659927 d!1660261))

(declare-fun bs!1197493 () Bool)

(declare-fun d!1660263 () Bool)

(assert (= bs!1197493 (and d!1660263 d!1660143)))

(declare-fun lambda!254078 () Int)

(assert (=> bs!1197493 (= (= lambda!253910 lambda!253969) (= lambda!254078 lambda!254045))))

(declare-fun bs!1197494 () Bool)

(assert (= bs!1197494 (and d!1660263 d!1659911)))

(assert (=> bs!1197494 (not (= lambda!254078 lambda!253972))))

(declare-fun bs!1197495 () Bool)

(assert (= bs!1197495 (and d!1660263 d!1660167)))

(assert (=> bs!1197495 (= (= lambda!253910 lambda!253972) (= lambda!254078 lambda!254056))))

(declare-fun bs!1197496 () Bool)

(assert (= bs!1197496 (and d!1660263 d!1660215)))

(assert (=> bs!1197496 (not (= lambda!254078 lambda!254068))))

(declare-fun bs!1197497 () Bool)

(assert (= bs!1197497 (and d!1660263 b!5130957)))

(assert (=> bs!1197497 (not (= lambda!254078 lambda!253974))))

(declare-fun bs!1197498 () Bool)

(assert (= bs!1197498 (and d!1660263 b!5130992)))

(assert (=> bs!1197498 (not (= lambda!254078 lambda!253977))))

(declare-fun bs!1197499 () Bool)

(assert (= bs!1197499 (and d!1660263 d!1659923)))

(assert (=> bs!1197499 (= (= lambda!253910 lambda!253909) (= lambda!254078 lambda!253980))))

(declare-fun bs!1197500 () Bool)

(assert (= bs!1197500 (and d!1660263 d!1659869)))

(assert (=> bs!1197500 (not (= lambda!254078 lambda!253949))))

(declare-fun bs!1197501 () Bool)

(assert (= bs!1197501 (and d!1660263 d!1660145)))

(assert (=> bs!1197501 (= (= lambda!253910 lambda!253983) (= lambda!254078 lambda!254046))))

(declare-fun bs!1197502 () Bool)

(assert (= bs!1197502 (and d!1660263 b!5130943)))

(assert (=> bs!1197502 (not (= lambda!254078 lambda!253970))))

(declare-fun bs!1197503 () Bool)

(assert (= bs!1197503 (and d!1660263 d!1660249)))

(assert (=> bs!1197503 (= (= lambda!253910 (ite c!882641 lambda!253973 lambda!253974)) (= lambda!254078 lambda!254075))))

(declare-fun bs!1197504 () Bool)

(assert (= bs!1197504 (and d!1660263 b!5131004)))

(assert (=> bs!1197504 (not (= lambda!254078 lambda!253991))))

(declare-fun bs!1197505 () Bool)

(assert (= bs!1197505 (and d!1660263 d!1659941)))

(assert (=> bs!1197505 (not (= lambda!254078 lambda!253990))))

(declare-fun bs!1197506 () Bool)

(assert (= bs!1197506 (and d!1660263 d!1660157)))

(assert (=> bs!1197506 (= (= lambda!253910 (ite c!882640 lambda!253970 lambda!253971)) (= lambda!254078 lambda!254051))))

(declare-fun bs!1197507 () Bool)

(assert (= bs!1197507 (and d!1660263 d!1660181)))

(assert (=> bs!1197507 (= (= lambda!253910 lambda!253975) (= lambda!254078 lambda!254057))))

(declare-fun bs!1197508 () Bool)

(assert (= bs!1197508 (and d!1660263 d!1660221)))

(assert (=> bs!1197508 (= (= lambda!253910 lambda!253969) (= lambda!254078 lambda!254069))))

(declare-fun bs!1197509 () Bool)

(assert (= bs!1197509 (and d!1660263 b!5130991)))

(assert (=> bs!1197509 (not (= lambda!254078 lambda!253976))))

(declare-fun bs!1197510 () Bool)

(assert (= bs!1197510 (and d!1660263 b!5130857)))

(assert (=> bs!1197510 (not (= lambda!254078 lambda!253910))))

(declare-fun bs!1197511 () Bool)

(assert (= bs!1197511 (and d!1660263 d!1660161)))

(assert (=> bs!1197511 (= (= lambda!253910 (ite c!882657 lambda!253991 lambda!253992)) (= lambda!254078 lambda!254052))))

(declare-fun bs!1197512 () Bool)

(assert (= bs!1197512 (and d!1660263 d!1659925)))

(assert (=> bs!1197512 (= (= lambda!253910 lambda!253908) (= lambda!254078 lambda!253983))))

(declare-fun bs!1197513 () Bool)

(assert (= bs!1197513 (and d!1660263 b!5130944)))

(assert (=> bs!1197513 (not (= lambda!254078 lambda!253971))))

(declare-fun bs!1197514 () Bool)

(assert (= bs!1197514 (and d!1660263 d!1660253)))

(assert (=> bs!1197514 (= (= lambda!253910 lambda!253975) (= lambda!254078 lambda!254076))))

(declare-fun bs!1197515 () Bool)

(assert (= bs!1197515 (and d!1660263 b!5130956)))

(assert (=> bs!1197515 (not (= lambda!254078 lambda!253973))))

(declare-fun bs!1197516 () Bool)

(assert (= bs!1197516 (and d!1660263 d!1659881)))

(assert (=> bs!1197516 (not (= lambda!254078 lambda!253969))))

(declare-fun bs!1197517 () Bool)

(assert (= bs!1197517 (and d!1660263 d!1660229)))

(assert (=> bs!1197517 (= (= lambda!253910 lambda!253990) (= lambda!254078 lambda!254070))))

(declare-fun bs!1197518 () Bool)

(assert (= bs!1197518 (and d!1660263 b!5130845)))

(assert (=> bs!1197518 (not (= lambda!254078 lambda!253908))))

(declare-fun bs!1197519 () Bool)

(assert (= bs!1197519 (and d!1660263 b!5130842)))

(assert (=> bs!1197519 (not (= lambda!254078 lambda!253909))))

(declare-fun bs!1197520 () Bool)

(assert (= bs!1197520 (and d!1660263 d!1659919)))

(assert (=> bs!1197520 (not (= lambda!254078 lambda!253975))))

(declare-fun bs!1197521 () Bool)

(assert (= bs!1197521 (and d!1660263 d!1660155)))

(assert (=> bs!1197521 (= (= lambda!253910 lambda!253990) (= lambda!254078 lambda!254050))))

(declare-fun bs!1197522 () Bool)

(assert (= bs!1197522 (and d!1660263 d!1660139)))

(assert (=> bs!1197522 (= (= lambda!253910 lambda!253909) (= lambda!254078 lambda!254042))))

(declare-fun bs!1197523 () Bool)

(assert (= bs!1197523 (and d!1660263 d!1660135)))

(assert (=> bs!1197523 (not (= lambda!254078 lambda!254041))))

(declare-fun bs!1197524 () Bool)

(assert (= bs!1197524 (and d!1660263 b!5131005)))

(assert (=> bs!1197524 (not (= lambda!254078 lambda!253992))))

(declare-fun bs!1197525 () Bool)

(assert (= bs!1197525 (and d!1660263 d!1660147)))

(assert (=> bs!1197525 (= (= lambda!253910 lambda!253908) (= lambda!254078 lambda!254049))))

(declare-fun bs!1197526 () Bool)

(assert (= bs!1197526 (and d!1660263 d!1660191)))

(assert (=> bs!1197526 (not (= lambda!254078 lambda!254065))))

(declare-fun bs!1197527 () Bool)

(assert (= bs!1197527 (and d!1660263 d!1660245)))

(assert (=> bs!1197527 (not (= lambda!254078 lambda!254074))))

(declare-fun bs!1197528 () Bool)

(assert (= bs!1197528 (and d!1660263 d!1660199)))

(assert (=> bs!1197528 (not (= lambda!254078 lambda!254066))))

(declare-fun bs!1197529 () Bool)

(assert (= bs!1197529 (and d!1660263 d!1660257)))

(assert (=> bs!1197529 (= (= lambda!253910 (ite c!882654 lambda!253976 lambda!253977)) (= lambda!254078 lambda!254077))))

(declare-fun bs!1197530 () Bool)

(assert (= bs!1197530 (and d!1660263 d!1660241)))

(assert (=> bs!1197530 (= (= lambda!253910 lambda!253972) (= lambda!254078 lambda!254073))))

(assert (=> d!1660263 true))

(assert (=> d!1660263 (< (dynLambda!23682 order!26849 lambda!253910) (dynLambda!23682 order!26849 lambda!254078))))

(assert (=> d!1660263 (= (exists!1644 (toList!8329 z!1054) lambda!253910) (not (forall!13759 (toList!8329 z!1054) lambda!254078)))))

(declare-fun bs!1197531 () Bool)

(assert (= bs!1197531 d!1660263))

(assert (=> bs!1197531 m!6195712))

(declare-fun m!6196590 () Bool)

(assert (=> bs!1197531 m!6196590))

(assert (=> d!1659863 d!1660263))

(assert (=> d!1659863 d!1659951))

(declare-fun d!1660265 () Bool)

(declare-fun res!2185402 () Bool)

(assert (=> d!1660265 (= res!2185402 (exists!1644 (toList!8329 z!1054) lambda!253910))))

(assert (=> d!1660265 true))

(assert (=> d!1660265 (= (choose!37860 z!1054 lambda!253910) res!2185402)))

(declare-fun bs!1197532 () Bool)

(assert (= bs!1197532 d!1660265))

(assert (=> bs!1197532 m!6195712))

(assert (=> bs!1197532 m!6195712))

(assert (=> bs!1197532 m!6195774))

(assert (=> d!1659863 d!1660265))

(declare-fun b!5131297 () Bool)

(declare-fun e!3200361 () (InoxSet Context!7446))

(declare-fun call!357125 () (InoxSet Context!7446))

(declare-fun call!357126 () (InoxSet Context!7446))

(assert (=> b!5131297 (= e!3200361 ((_ map or) call!357125 call!357126))))

(declare-fun d!1660267 () Bool)

(declare-fun c!882734 () Bool)

(assert (=> d!1660267 (= c!882734 (and ((_ is ElementMatch!14339) (h!65931 (exprs!4223 lt!2116671))) (= (c!882601 (h!65931 (exprs!4223 lt!2116671))) a!1233)))))

(declare-fun e!3200363 () (InoxSet Context!7446))

(assert (=> d!1660267 (= (derivationStepZipperDown!95 (h!65931 (exprs!4223 lt!2116671)) (Context!7447 (t!372634 (exprs!4223 lt!2116671))) a!1233) e!3200363)))

(declare-fun b!5131298 () Bool)

(declare-fun c!882736 () Bool)

(assert (=> b!5131298 (= c!882736 ((_ is Star!14339) (h!65931 (exprs!4223 lt!2116671))))))

(declare-fun e!3200360 () (InoxSet Context!7446))

(declare-fun e!3200359 () (InoxSet Context!7446))

(assert (=> b!5131298 (= e!3200360 e!3200359)))

(declare-fun c!882737 () Bool)

(declare-fun bm!357118 () Bool)

(declare-fun call!357124 () List!59607)

(assert (=> bm!357118 (= call!357125 (derivationStepZipperDown!95 (ite c!882737 (regTwo!29191 (h!65931 (exprs!4223 lt!2116671))) (regOne!29190 (h!65931 (exprs!4223 lt!2116671)))) (ite c!882737 (Context!7447 (t!372634 (exprs!4223 lt!2116671))) (Context!7447 call!357124)) a!1233))))

(declare-fun b!5131299 () Bool)

(declare-fun call!357123 () (InoxSet Context!7446))

(assert (=> b!5131299 (= e!3200360 call!357123)))

(declare-fun b!5131300 () Bool)

(declare-fun e!3200362 () (InoxSet Context!7446))

(assert (=> b!5131300 (= e!3200363 e!3200362)))

(assert (=> b!5131300 (= c!882737 ((_ is Union!14339) (h!65931 (exprs!4223 lt!2116671))))))

(declare-fun b!5131301 () Bool)

(assert (=> b!5131301 (= e!3200359 call!357123)))

(declare-fun c!882733 () Bool)

(declare-fun c!882735 () Bool)

(declare-fun bm!357119 () Bool)

(declare-fun $colon$colon!1157 (List!59607 Regex!14339) List!59607)

(assert (=> bm!357119 (= call!357124 ($colon$colon!1157 (exprs!4223 (Context!7447 (t!372634 (exprs!4223 lt!2116671)))) (ite (or c!882733 c!882735) (regTwo!29190 (h!65931 (exprs!4223 lt!2116671))) (h!65931 (exprs!4223 lt!2116671)))))))

(declare-fun b!5131302 () Bool)

(assert (=> b!5131302 (= e!3200359 ((as const (Array Context!7446 Bool)) false))))

(declare-fun b!5131303 () Bool)

(assert (=> b!5131303 (= e!3200361 e!3200360)))

(assert (=> b!5131303 (= c!882735 ((_ is Concat!23184) (h!65931 (exprs!4223 lt!2116671))))))

(declare-fun b!5131304 () Bool)

(assert (=> b!5131304 (= e!3200363 (store ((as const (Array Context!7446 Bool)) false) (Context!7447 (t!372634 (exprs!4223 lt!2116671))) true))))

(declare-fun call!357128 () List!59607)

(declare-fun call!357127 () (InoxSet Context!7446))

(declare-fun bm!357120 () Bool)

(assert (=> bm!357120 (= call!357127 (derivationStepZipperDown!95 (ite c!882737 (regOne!29191 (h!65931 (exprs!4223 lt!2116671))) (ite c!882733 (regTwo!29190 (h!65931 (exprs!4223 lt!2116671))) (ite c!882735 (regOne!29190 (h!65931 (exprs!4223 lt!2116671))) (reg!14668 (h!65931 (exprs!4223 lt!2116671)))))) (ite (or c!882737 c!882733) (Context!7447 (t!372634 (exprs!4223 lt!2116671))) (Context!7447 call!357128)) a!1233))))

(declare-fun bm!357121 () Bool)

(assert (=> bm!357121 (= call!357123 call!357126)))

(declare-fun bm!357122 () Bool)

(assert (=> bm!357122 (= call!357126 call!357127)))

(declare-fun bm!357123 () Bool)

(assert (=> bm!357123 (= call!357128 call!357124)))

(declare-fun b!5131305 () Bool)

(declare-fun e!3200364 () Bool)

(assert (=> b!5131305 (= e!3200364 (nullable!4746 (regOne!29190 (h!65931 (exprs!4223 lt!2116671)))))))

(declare-fun b!5131306 () Bool)

(assert (=> b!5131306 (= c!882733 e!3200364)))

(declare-fun res!2185405 () Bool)

(assert (=> b!5131306 (=> (not res!2185405) (not e!3200364))))

(assert (=> b!5131306 (= res!2185405 ((_ is Concat!23184) (h!65931 (exprs!4223 lt!2116671))))))

(assert (=> b!5131306 (= e!3200362 e!3200361)))

(declare-fun b!5131307 () Bool)

(assert (=> b!5131307 (= e!3200362 ((_ map or) call!357127 call!357125))))

(assert (= (and d!1660267 c!882734) b!5131304))

(assert (= (and d!1660267 (not c!882734)) b!5131300))

(assert (= (and b!5131300 c!882737) b!5131307))

(assert (= (and b!5131300 (not c!882737)) b!5131306))

(assert (= (and b!5131306 res!2185405) b!5131305))

(assert (= (and b!5131306 c!882733) b!5131297))

(assert (= (and b!5131306 (not c!882733)) b!5131303))

(assert (= (and b!5131303 c!882735) b!5131299))

(assert (= (and b!5131303 (not c!882735)) b!5131298))

(assert (= (and b!5131298 c!882736) b!5131301))

(assert (= (and b!5131298 (not c!882736)) b!5131302))

(assert (= (or b!5131299 b!5131301) bm!357123))

(assert (= (or b!5131299 b!5131301) bm!357121))

(assert (= (or b!5131297 bm!357123) bm!357119))

(assert (= (or b!5131297 bm!357121) bm!357122))

(assert (= (or b!5131307 bm!357122) bm!357120))

(assert (= (or b!5131307 b!5131297) bm!357118))

(declare-fun m!6196592 () Bool)

(assert (=> bm!357119 m!6196592))

(declare-fun m!6196594 () Bool)

(assert (=> bm!357118 m!6196594))

(declare-fun m!6196596 () Bool)

(assert (=> bm!357120 m!6196596))

(declare-fun m!6196598 () Bool)

(assert (=> b!5131305 m!6196598))

(declare-fun m!6196600 () Bool)

(assert (=> b!5131304 m!6196600))

(assert (=> bm!357080 d!1660267))

(declare-fun d!1660269 () Bool)

(declare-fun c!882738 () Bool)

(declare-fun e!3200367 () Bool)

(assert (=> d!1660269 (= c!882738 e!3200367)))

(declare-fun res!2185406 () Bool)

(assert (=> d!1660269 (=> (not res!2185406) (not e!3200367))))

(assert (=> d!1660269 (= res!2185406 ((_ is Cons!59483) (exprs!4223 (Context!7447 (t!372634 (exprs!4223 lt!2116671))))))))

(declare-fun e!3200365 () (InoxSet Context!7446))

(assert (=> d!1660269 (= (derivationStepZipperUp!64 (Context!7447 (t!372634 (exprs!4223 lt!2116671))) a!1233) e!3200365)))

(declare-fun bm!357124 () Bool)

(declare-fun call!357129 () (InoxSet Context!7446))

(assert (=> bm!357124 (= call!357129 (derivationStepZipperDown!95 (h!65931 (exprs!4223 (Context!7447 (t!372634 (exprs!4223 lt!2116671))))) (Context!7447 (t!372634 (exprs!4223 (Context!7447 (t!372634 (exprs!4223 lt!2116671)))))) a!1233))))

(declare-fun b!5131308 () Bool)

(declare-fun e!3200366 () (InoxSet Context!7446))

(assert (=> b!5131308 (= e!3200366 ((as const (Array Context!7446 Bool)) false))))

(declare-fun b!5131309 () Bool)

(assert (=> b!5131309 (= e!3200365 ((_ map or) call!357129 (derivationStepZipperUp!64 (Context!7447 (t!372634 (exprs!4223 (Context!7447 (t!372634 (exprs!4223 lt!2116671)))))) a!1233)))))

(declare-fun b!5131310 () Bool)

(assert (=> b!5131310 (= e!3200366 call!357129)))

(declare-fun b!5131311 () Bool)

(assert (=> b!5131311 (= e!3200367 (nullable!4746 (h!65931 (exprs!4223 (Context!7447 (t!372634 (exprs!4223 lt!2116671)))))))))

(declare-fun b!5131312 () Bool)

(assert (=> b!5131312 (= e!3200365 e!3200366)))

(declare-fun c!882739 () Bool)

(assert (=> b!5131312 (= c!882739 ((_ is Cons!59483) (exprs!4223 (Context!7447 (t!372634 (exprs!4223 lt!2116671))))))))

(assert (= (and d!1660269 res!2185406) b!5131311))

(assert (= (and d!1660269 c!882738) b!5131309))

(assert (= (and d!1660269 (not c!882738)) b!5131312))

(assert (= (and b!5131312 c!882739) b!5131310))

(assert (= (and b!5131312 (not c!882739)) b!5131308))

(assert (= (or b!5131309 b!5131310) bm!357124))

(declare-fun m!6196602 () Bool)

(assert (=> bm!357124 m!6196602))

(declare-fun m!6196604 () Bool)

(assert (=> b!5131309 m!6196604))

(declare-fun m!6196606 () Bool)

(assert (=> b!5131311 m!6196606))

(assert (=> b!5130969 d!1660269))

(declare-fun b!5131323 () Bool)

(declare-fun e!3200370 () Bool)

(assert (=> b!5131323 (= e!3200370 tp_is_empty!37851)))

(declare-fun b!5131326 () Bool)

(declare-fun tp!1431416 () Bool)

(declare-fun tp!1431417 () Bool)

(assert (=> b!5131326 (= e!3200370 (and tp!1431416 tp!1431417))))

(declare-fun b!5131325 () Bool)

(declare-fun tp!1431415 () Bool)

(assert (=> b!5131325 (= e!3200370 tp!1431415)))

(declare-fun b!5131324 () Bool)

(declare-fun tp!1431414 () Bool)

(declare-fun tp!1431413 () Bool)

(assert (=> b!5131324 (= e!3200370 (and tp!1431414 tp!1431413))))

(assert (=> b!5131024 (= tp!1431342 e!3200370)))

(assert (= (and b!5131024 ((_ is ElementMatch!14339) (h!65931 (exprs!4223 setElem!31058)))) b!5131323))

(assert (= (and b!5131024 ((_ is Concat!23184) (h!65931 (exprs!4223 setElem!31058)))) b!5131324))

(assert (= (and b!5131024 ((_ is Star!14339) (h!65931 (exprs!4223 setElem!31058)))) b!5131325))

(assert (= (and b!5131024 ((_ is Union!14339) (h!65931 (exprs!4223 setElem!31058)))) b!5131326))

(declare-fun b!5131327 () Bool)

(declare-fun e!3200371 () Bool)

(declare-fun tp!1431418 () Bool)

(declare-fun tp!1431419 () Bool)

(assert (=> b!5131327 (= e!3200371 (and tp!1431418 tp!1431419))))

(assert (=> b!5131024 (= tp!1431343 e!3200371)))

(assert (= (and b!5131024 ((_ is Cons!59483) (t!372634 (exprs!4223 setElem!31058)))) b!5131327))

(declare-fun condSetEmpty!31072 () Bool)

(assert (=> setNonEmpty!31064 (= condSetEmpty!31072 (= setRest!31064 ((as const (Array Context!7446 Bool)) false)))))

(declare-fun setRes!31072 () Bool)

(assert (=> setNonEmpty!31064 (= tp!1431348 setRes!31072)))

(declare-fun setIsEmpty!31072 () Bool)

(assert (=> setIsEmpty!31072 setRes!31072))

(declare-fun setElem!31072 () Context!7446)

(declare-fun e!3200372 () Bool)

(declare-fun setNonEmpty!31072 () Bool)

(declare-fun tp!1431420 () Bool)

(assert (=> setNonEmpty!31072 (= setRes!31072 (and tp!1431420 (inv!79028 setElem!31072) e!3200372))))

(declare-fun setRest!31072 () (InoxSet Context!7446))

(assert (=> setNonEmpty!31072 (= setRest!31064 ((_ map or) (store ((as const (Array Context!7446 Bool)) false) setElem!31072 true) setRest!31072))))

(declare-fun b!5131328 () Bool)

(declare-fun tp!1431421 () Bool)

(assert (=> b!5131328 (= e!3200372 tp!1431421)))

(assert (= (and setNonEmpty!31064 condSetEmpty!31072) setIsEmpty!31072))

(assert (= (and setNonEmpty!31064 (not condSetEmpty!31072)) setNonEmpty!31072))

(assert (= setNonEmpty!31072 b!5131328))

(declare-fun m!6196608 () Bool)

(assert (=> setNonEmpty!31072 m!6196608))

(declare-fun b!5131329 () Bool)

(declare-fun e!3200373 () Bool)

(declare-fun tp!1431422 () Bool)

(declare-fun tp!1431423 () Bool)

(assert (=> b!5131329 (= e!3200373 (and tp!1431422 tp!1431423))))

(assert (=> b!5131029 (= tp!1431349 e!3200373)))

(assert (= (and b!5131029 ((_ is Cons!59483) (exprs!4223 setElem!31064))) b!5131329))

(declare-fun b_lambda!199745 () Bool)

(assert (= b_lambda!199733 (or b!5130845 b_lambda!199745)))

(declare-fun bs!1197533 () Bool)

(declare-fun d!1660271 () Bool)

(assert (= bs!1197533 (and d!1660271 b!5130845)))

(assert (=> bs!1197533 (= (dynLambda!23683 lambda!253908 (h!65932 (t!372635 lt!2116670))) (lostCause!1292 (h!65932 (t!372635 lt!2116670))))))

(declare-fun m!6196610 () Bool)

(assert (=> bs!1197533 m!6196610))

(assert (=> b!5131206 d!1660271))

(declare-fun b_lambda!199747 () Bool)

(assert (= b_lambda!199741 (or b!5130842 b_lambda!199747)))

(declare-fun bs!1197534 () Bool)

(declare-fun d!1660273 () Bool)

(assert (= bs!1197534 (and d!1660273 b!5130842)))

(assert (=> bs!1197534 (= (dynLambda!23683 lambda!253909 (h!65932 (t!372635 lt!2116678))) (not (lostCause!1292 (h!65932 (t!372635 lt!2116678)))))))

(declare-fun m!6196612 () Bool)

(assert (=> bs!1197534 m!6196612))

(assert (=> b!5131249 d!1660273))

(declare-fun b_lambda!199749 () Bool)

(assert (= b_lambda!199739 (or b!5130842 b_lambda!199749)))

(declare-fun bs!1197535 () Bool)

(declare-fun d!1660275 () Bool)

(assert (= bs!1197535 (and d!1660275 b!5130842)))

(assert (=> bs!1197535 (= (dynLambda!23683 lambda!253909 lt!2116900) (not (lostCause!1292 lt!2116900)))))

(declare-fun m!6196614 () Bool)

(assert (=> bs!1197535 m!6196614))

(assert (=> d!1660223 d!1660275))

(declare-fun b_lambda!199751 () Bool)

(assert (= b_lambda!199729 (or b!5130857 b_lambda!199751)))

(declare-fun bs!1197536 () Bool)

(declare-fun d!1660277 () Bool)

(assert (= bs!1197536 (and d!1660277 b!5130857)))

(assert (=> bs!1197536 (= (dynLambda!23683 lambda!253910 (h!65932 (toList!8329 z!1054))) (select (derivationStepZipperUp!64 (h!65932 (toList!8329 z!1054)) a!1233) lt!2116679))))

(declare-fun m!6196616 () Bool)

(assert (=> bs!1197536 m!6196616))

(declare-fun m!6196618 () Bool)

(assert (=> bs!1197536 m!6196618))

(assert (=> b!5131193 d!1660277))

(declare-fun b_lambda!199753 () Bool)

(assert (= b_lambda!199723 (or b!5130845 b_lambda!199753)))

(declare-fun bs!1197537 () Bool)

(declare-fun d!1660279 () Bool)

(assert (= bs!1197537 (and d!1660279 b!5130845)))

(assert (=> bs!1197537 (= (dynLambda!23683 lambda!253908 (h!65932 lt!2116678)) (lostCause!1292 (h!65932 lt!2116678)))))

(assert (=> bs!1197537 m!6196032))

(assert (=> b!5131184 d!1660279))

(declare-fun b_lambda!199755 () Bool)

(assert (= b_lambda!199735 (or b!5130845 b_lambda!199755)))

(assert (=> d!1660183 d!1659957))

(declare-fun b_lambda!199757 () Bool)

(assert (= b_lambda!199731 (or d!1659923 b_lambda!199757)))

(declare-fun bs!1197538 () Bool)

(declare-fun d!1660281 () Bool)

(assert (= bs!1197538 (and d!1660281 d!1659923)))

(assert (=> bs!1197538 (= (dynLambda!23683 lambda!253980 (h!65932 lt!2116678)) (not (dynLambda!23683 lambda!253909 (h!65932 lt!2116678))))))

(declare-fun b_lambda!199767 () Bool)

(assert (=> (not b_lambda!199767) (not bs!1197538)))

(assert (=> bs!1197538 m!6195926))

(assert (=> b!5131196 d!1660281))

(declare-fun b_lambda!199759 () Bool)

(assert (= b_lambda!199737 (or b!5130845 b_lambda!199759)))

(declare-fun bs!1197539 () Bool)

(declare-fun d!1660283 () Bool)

(assert (= bs!1197539 (and d!1660283 b!5130845)))

(assert (=> bs!1197539 (= (dynLambda!23683 lambda!253908 (h!65932 (toList!8329 z!1054))) (lostCause!1292 (h!65932 (toList!8329 z!1054))))))

(declare-fun m!6196620 () Bool)

(assert (=> bs!1197539 m!6196620))

(assert (=> b!5131208 d!1660283))

(declare-fun b_lambda!199761 () Bool)

(assert (= b_lambda!199727 (or b!5130857 b_lambda!199761)))

(declare-fun bs!1197540 () Bool)

(declare-fun d!1660285 () Bool)

(assert (= bs!1197540 (and d!1660285 b!5130857)))

(assert (=> bs!1197540 (= (dynLambda!23683 lambda!253910 lt!2116885) (select (derivationStepZipperUp!64 lt!2116885 a!1233) lt!2116679))))

(declare-fun m!6196622 () Bool)

(assert (=> bs!1197540 m!6196622))

(declare-fun m!6196624 () Bool)

(assert (=> bs!1197540 m!6196624))

(assert (=> d!1660165 d!1660285))

(declare-fun b_lambda!199763 () Bool)

(assert (= b_lambda!199743 (or d!1659945 b_lambda!199763)))

(declare-fun bs!1197541 () Bool)

(declare-fun d!1660287 () Bool)

(assert (= bs!1197541 (and d!1660287 d!1659945)))

(declare-fun validRegex!6240 (Regex!14339) Bool)

(assert (=> bs!1197541 (= (dynLambda!23687 lambda!253995 (h!65931 (exprs!4223 setElem!31058))) (validRegex!6240 (h!65931 (exprs!4223 setElem!31058))))))

(declare-fun m!6196626 () Bool)

(assert (=> bs!1197541 m!6196626))

(assert (=> b!5131268 d!1660287))

(declare-fun b_lambda!199765 () Bool)

(assert (= b_lambda!199725 (or b!5130845 b_lambda!199765)))

(declare-fun bs!1197542 () Bool)

(declare-fun d!1660289 () Bool)

(assert (= bs!1197542 (and d!1660289 b!5130845)))

(assert (=> bs!1197542 (= (dynLambda!23683 lambda!253908 (h!65932 (toList!8329 lt!2116675))) (lostCause!1292 (h!65932 (toList!8329 lt!2116675))))))

(declare-fun m!6196628 () Bool)

(assert (=> bs!1197542 m!6196628))

(assert (=> b!5131186 d!1660289))

(check-sat (not d!1660261) (not b!5131187) (not b_lambda!199753) (not b_lambda!199673) (not d!1660145) (not d!1660157) (not b!5131245) (not bs!1197535) (not d!1660137) (not d!1660223) (not d!1660133) (not b!5131197) (not d!1660203) (not d!1660135) (not d!1660201) (not b!5131230) (not b!5131182) (not b_lambda!199757) (not d!1660163) (not b!5131327) (not d!1660207) (not b!5131194) (not b!5131271) (not b!5131260) (not b_lambda!199747) (not d!1660195) (not bm!357105) (not b!5131192) (not b!5131326) (not bs!1197534) (not b!5131324) (not d!1660153) (not d!1660231) (not b_lambda!199759) (not d!1660245) tp_is_empty!37851 (not bs!1197540) (not d!1660147) (not b!5131238) (not d!1660155) (not d!1660265) (not b!5131222) (not b!5131263) (not d!1660181) (not d!1660241) (not b!5131235) (not d!1660211) (not setNonEmpty!31072) (not b_lambda!199755) (not b_lambda!199751) (not d!1660167) (not b!5131199) (not d!1660175) (not setNonEmpty!31071) (not b!5131273) (not bs!1197539) (not b!5131309) (not d!1660173) (not bs!1197533) (not b!5131207) (not b_lambda!199761) (not b!5131251) (not b_lambda!199745) (not d!1660191) (not b!5131270) (not b_lambda!199765) (not b!5131231) (not d!1660221) (not d!1660139) (not bm!357120) (not b_lambda!199767) (not b!5131269) (not d!1660233) (not d!1660257) (not b!5131253) (not bm!357119) (not b!5131311) (not b!5131232) (not d!1660247) (not bm!357118) (not b!5131223) (not b!5131259) (not d!1660143) (not bs!1197542) (not d!1660129) (not d!1660141) (not b_lambda!199763) (not b!5131209) (not b!5131305) (not b!5131205) (not bs!1197537) (not d!1660187) (not b!5131204) (not d!1660161) (not d!1660229) (not b!5131234) (not b!5131257) (not d!1660215) (not d!1660193) (not d!1660263) (not b!5131274) (not b!5131248) (not b_lambda!199749) (not b!5131237) (not b!5131250) (not b_lambda!199675) (not b!5131201) (not b!5131185) (not b!5131272) (not b_lambda!199667) (not b_lambda!199671) (not b!5131236) (not bs!1197536) (not d!1660235) (not bs!1197541) (not d!1660177) (not b!5131195) (not d!1660253) (not d!1660237) (not b!5131233) (not d!1660165) (not d!1660199) (not b_lambda!199669) (not d!1660217) (not b!5131328) (not d!1660249) (not b!5131214) (not b!5131329) (not b!5131325) (not b!5131255) (not bm!357124) (not b!5131216) (not d!1660239))
(check-sat)
