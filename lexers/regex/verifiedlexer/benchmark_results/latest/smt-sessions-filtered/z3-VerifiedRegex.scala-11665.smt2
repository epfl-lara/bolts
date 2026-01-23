; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!654396 () Bool)

(assert start!654396)

(declare-fun b!6746795 () Bool)

(assert (=> b!6746795 true))

(assert (=> b!6746795 true))

(declare-fun lambda!379317 () Int)

(declare-fun lambda!379316 () Int)

(assert (=> b!6746795 (not (= lambda!379317 lambda!379316))))

(assert (=> b!6746795 true))

(assert (=> b!6746795 true))

(declare-fun lambda!379318 () Int)

(assert (=> b!6746795 (not (= lambda!379318 lambda!379316))))

(assert (=> b!6746795 (not (= lambda!379318 lambda!379317))))

(assert (=> b!6746795 true))

(assert (=> b!6746795 true))

(declare-fun b!6746774 () Bool)

(assert (=> b!6746774 true))

(declare-fun b!6746770 () Bool)

(declare-fun e!4074869 () Bool)

(declare-fun lt!2440277 () Bool)

(assert (=> b!6746770 (= e!4074869 lt!2440277)))

(declare-fun b!6746771 () Bool)

(declare-fun e!4074867 () Bool)

(declare-fun Exists!3645 (Int) Bool)

(assert (=> b!6746771 (= e!4074867 (= (Exists!3645 lambda!379316) (Exists!3645 lambda!379317)))))

(declare-fun b!6746772 () Bool)

(declare-fun res!2759696 () Bool)

(declare-fun e!4074868 () Bool)

(assert (=> b!6746772 (=> res!2759696 e!4074868)))

(declare-datatypes ((C!33424 0))(
  ( (C!33425 (val!26414 Int)) )
))
(declare-datatypes ((Regex!16577 0))(
  ( (ElementMatch!16577 (c!1251775 C!33424)) (Concat!25422 (regOne!33666 Regex!16577) (regTwo!33666 Regex!16577)) (EmptyExpr!16577) (Star!16577 (reg!16906 Regex!16577)) (EmptyLang!16577) (Union!16577 (regOne!33667 Regex!16577) (regTwo!33667 Regex!16577)) )
))
(declare-datatypes ((List!66030 0))(
  ( (Nil!65906) (Cons!65906 (h!72354 Regex!16577) (t!379731 List!66030)) )
))
(declare-datatypes ((Context!11922 0))(
  ( (Context!11923 (exprs!6461 List!66030)) )
))
(declare-datatypes ((List!66031 0))(
  ( (Nil!65907) (Cons!65907 (h!72355 Context!11922) (t!379732 List!66031)) )
))
(declare-fun zl!343 () List!66031)

(declare-fun isEmpty!38257 (List!66031) Bool)

(assert (=> b!6746772 (= res!2759696 (not (isEmpty!38257 (t!379732 zl!343))))))

(declare-fun b!6746773 () Bool)

(declare-fun e!4074860 () Bool)

(declare-fun e!4074856 () Bool)

(assert (=> b!6746773 (= e!4074860 e!4074856)))

(declare-fun res!2759702 () Bool)

(assert (=> b!6746773 (=> res!2759702 e!4074856)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2440262 () (InoxSet Context!11922))

(declare-fun lt!2440269 () (InoxSet Context!11922))

(declare-datatypes ((List!66032 0))(
  ( (Nil!65908) (Cons!65908 (h!72356 C!33424) (t!379733 List!66032)) )
))
(declare-fun s!2326 () List!66032)

(declare-fun derivationStepZipper!2521 ((InoxSet Context!11922) C!33424) (InoxSet Context!11922))

(assert (=> b!6746773 (= res!2759702 (not (= lt!2440269 (derivationStepZipper!2521 lt!2440262 (h!72356 s!2326)))))))

(declare-fun lambda!379319 () Int)

(declare-fun lt!2440273 () Context!11922)

(declare-fun flatMap!2058 ((InoxSet Context!11922) Int) (InoxSet Context!11922))

(declare-fun derivationStepZipperUp!1731 (Context!11922 C!33424) (InoxSet Context!11922))

(assert (=> b!6746773 (= (flatMap!2058 lt!2440262 lambda!379319) (derivationStepZipperUp!1731 lt!2440273 (h!72356 s!2326)))))

(declare-datatypes ((Unit!159845 0))(
  ( (Unit!159846) )
))
(declare-fun lt!2440259 () Unit!159845)

(declare-fun lemmaFlatMapOnSingletonSet!1584 ((InoxSet Context!11922) Context!11922 Int) Unit!159845)

(assert (=> b!6746773 (= lt!2440259 (lemmaFlatMapOnSingletonSet!1584 lt!2440262 lt!2440273 lambda!379319))))

(declare-fun lt!2440256 () Context!11922)

(declare-fun lt!2440263 () (InoxSet Context!11922))

(assert (=> b!6746773 (= (flatMap!2058 lt!2440263 lambda!379319) (derivationStepZipperUp!1731 lt!2440256 (h!72356 s!2326)))))

(declare-fun lt!2440260 () Unit!159845)

(assert (=> b!6746773 (= lt!2440260 (lemmaFlatMapOnSingletonSet!1584 lt!2440263 lt!2440256 lambda!379319))))

(declare-fun lt!2440272 () (InoxSet Context!11922))

(assert (=> b!6746773 (= lt!2440272 (derivationStepZipperUp!1731 lt!2440273 (h!72356 s!2326)))))

(declare-fun lt!2440258 () (InoxSet Context!11922))

(assert (=> b!6746773 (= lt!2440258 (derivationStepZipperUp!1731 lt!2440256 (h!72356 s!2326)))))

(assert (=> b!6746773 (= lt!2440262 (store ((as const (Array Context!11922 Bool)) false) lt!2440273 true))))

(assert (=> b!6746773 (= lt!2440263 (store ((as const (Array Context!11922 Bool)) false) lt!2440256 true))))

(declare-fun r!7292 () Regex!16577)

(assert (=> b!6746773 (= lt!2440256 (Context!11923 (Cons!65906 (reg!16906 r!7292) Nil!65906)))))

(declare-fun setIsEmpty!46099 () Bool)

(declare-fun setRes!46099 () Bool)

(assert (=> setIsEmpty!46099 setRes!46099))

(declare-fun e!4074861 () Bool)

(declare-fun setElem!46099 () Context!11922)

(declare-fun setNonEmpty!46099 () Bool)

(declare-fun tp!1849193 () Bool)

(declare-fun inv!84689 (Context!11922) Bool)

(assert (=> setNonEmpty!46099 (= setRes!46099 (and tp!1849193 (inv!84689 setElem!46099) e!4074861))))

(declare-fun z!1189 () (InoxSet Context!11922))

(declare-fun setRest!46099 () (InoxSet Context!11922))

(assert (=> setNonEmpty!46099 (= z!1189 ((_ map or) (store ((as const (Array Context!11922 Bool)) false) setElem!46099 true) setRest!46099))))

(declare-fun e!4074859 () Bool)

(declare-fun e!4074866 () Bool)

(assert (=> b!6746774 (= e!4074859 e!4074866)))

(declare-fun res!2759701 () Bool)

(assert (=> b!6746774 (=> res!2759701 e!4074866)))

(declare-fun lt!2440275 () (InoxSet Context!11922))

(assert (=> b!6746774 (= res!2759701 (not (= lt!2440269 lt!2440275)))))

(assert (=> b!6746774 (= (flatMap!2058 z!1189 lambda!379319) (derivationStepZipperUp!1731 (h!72355 zl!343) (h!72356 s!2326)))))

(declare-fun lt!2440280 () Unit!159845)

(assert (=> b!6746774 (= lt!2440280 (lemmaFlatMapOnSingletonSet!1584 z!1189 (h!72355 zl!343) lambda!379319))))

(declare-fun b!6746775 () Bool)

(declare-fun res!2759710 () Bool)

(declare-fun e!4074870 () Bool)

(assert (=> b!6746775 (=> res!2759710 e!4074870)))

(get-info :version)

(assert (=> b!6746775 (= res!2759710 ((_ is Nil!65908) s!2326))))

(declare-fun b!6746776 () Bool)

(declare-fun e!4074871 () Bool)

(declare-fun tp!1849192 () Bool)

(assert (=> b!6746776 (= e!4074871 tp!1849192)))

(declare-fun e!4074858 () Bool)

(declare-fun tp!1849198 () Bool)

(declare-fun e!4074865 () Bool)

(declare-fun b!6746777 () Bool)

(assert (=> b!6746777 (= e!4074865 (and (inv!84689 (h!72355 zl!343)) e!4074858 tp!1849198))))

(declare-fun b!6746778 () Bool)

(declare-fun res!2759706 () Bool)

(assert (=> b!6746778 (=> res!2759706 e!4074856)))

(declare-fun unfocusZipper!2319 (List!66031) Regex!16577)

(assert (=> b!6746778 (= res!2759706 (not (= (unfocusZipper!2319 (Cons!65907 lt!2440273 Nil!65907)) r!7292)))))

(declare-fun b!6746779 () Bool)

(declare-fun res!2759708 () Bool)

(declare-fun e!4074855 () Bool)

(assert (=> b!6746779 (=> (not res!2759708) (not e!4074855))))

(declare-fun toList!10361 ((InoxSet Context!11922)) List!66031)

(assert (=> b!6746779 (= res!2759708 (= (toList!10361 z!1189) zl!343))))

(declare-fun res!2759699 () Bool)

(assert (=> start!654396 (=> (not res!2759699) (not e!4074855))))

(declare-fun validRegex!8313 (Regex!16577) Bool)

(assert (=> start!654396 (= res!2759699 (validRegex!8313 r!7292))))

(assert (=> start!654396 e!4074855))

(assert (=> start!654396 e!4074871))

(declare-fun condSetEmpty!46099 () Bool)

(assert (=> start!654396 (= condSetEmpty!46099 (= z!1189 ((as const (Array Context!11922 Bool)) false)))))

(assert (=> start!654396 setRes!46099))

(assert (=> start!654396 e!4074865))

(declare-fun e!4074872 () Bool)

(assert (=> start!654396 e!4074872))

(declare-fun b!6746780 () Bool)

(declare-fun tp!1849194 () Bool)

(assert (=> b!6746780 (= e!4074861 tp!1849194)))

(declare-fun b!6746781 () Bool)

(declare-fun res!2759704 () Bool)

(assert (=> b!6746781 (=> res!2759704 e!4074868)))

(assert (=> b!6746781 (= res!2759704 (or ((_ is EmptyExpr!16577) r!7292) ((_ is EmptyLang!16577) r!7292) ((_ is ElementMatch!16577) r!7292) ((_ is Union!16577) r!7292) ((_ is Concat!25422) r!7292)))))

(declare-fun b!6746782 () Bool)

(declare-fun res!2759693 () Bool)

(assert (=> b!6746782 (=> res!2759693 e!4074868)))

(assert (=> b!6746782 (= res!2759693 (not ((_ is Cons!65906) (exprs!6461 (h!72355 zl!343)))))))

(declare-fun b!6746783 () Bool)

(declare-fun res!2759695 () Bool)

(assert (=> b!6746783 (=> res!2759695 e!4074856)))

(assert (=> b!6746783 (= res!2759695 (not (= (unfocusZipper!2319 (Cons!65907 lt!2440256 Nil!65907)) (reg!16906 r!7292))))))

(declare-fun b!6746784 () Bool)

(declare-fun e!4074863 () Bool)

(assert (=> b!6746784 (= e!4074856 e!4074863)))

(declare-fun res!2759697 () Bool)

(assert (=> b!6746784 (=> res!2759697 e!4074863)))

(declare-fun lt!2440279 () Bool)

(assert (=> b!6746784 (= res!2759697 (not lt!2440279))))

(declare-fun e!4074857 () Bool)

(assert (=> b!6746784 e!4074857))

(declare-fun res!2759714 () Bool)

(assert (=> b!6746784 (=> (not res!2759714) (not e!4074857))))

(declare-fun lt!2440265 () Regex!16577)

(declare-fun matchRSpec!3678 (Regex!16577 List!66032) Bool)

(assert (=> b!6746784 (= res!2759714 (= lt!2440279 (matchRSpec!3678 lt!2440265 s!2326)))))

(declare-fun matchR!8760 (Regex!16577 List!66032) Bool)

(assert (=> b!6746784 (= lt!2440279 (matchR!8760 lt!2440265 s!2326))))

(declare-fun lt!2440267 () Unit!159845)

(declare-fun mainMatchTheorem!3678 (Regex!16577 List!66032) Unit!159845)

(assert (=> b!6746784 (= lt!2440267 (mainMatchTheorem!3678 lt!2440265 s!2326))))

(declare-fun b!6746785 () Bool)

(declare-fun res!2759691 () Bool)

(assert (=> b!6746785 (=> res!2759691 e!4074868)))

(declare-fun generalisedConcat!2174 (List!66030) Regex!16577)

(assert (=> b!6746785 (= res!2759691 (not (= r!7292 (generalisedConcat!2174 (exprs!6461 (h!72355 zl!343))))))))

(declare-fun b!6746786 () Bool)

(assert (=> b!6746786 (= e!4074857 e!4074867)))

(declare-fun res!2759694 () Bool)

(assert (=> b!6746786 (=> res!2759694 e!4074867)))

(assert (=> b!6746786 (= res!2759694 (not lt!2440279))))

(declare-fun b!6746787 () Bool)

(declare-fun e!4074862 () Bool)

(assert (=> b!6746787 (= e!4074866 e!4074862)))

(declare-fun res!2759705 () Bool)

(assert (=> b!6746787 (=> res!2759705 e!4074862)))

(declare-fun derivationStepZipperDown!1805 (Regex!16577 Context!11922 C!33424) (InoxSet Context!11922))

(assert (=> b!6746787 (= res!2759705 (not (= lt!2440269 (derivationStepZipperDown!1805 (reg!16906 r!7292) lt!2440273 (h!72356 s!2326)))))))

(declare-fun lt!2440271 () List!66030)

(assert (=> b!6746787 (= lt!2440273 (Context!11923 lt!2440271))))

(declare-fun lt!2440268 () Context!11922)

(declare-fun lt!2440264 () (InoxSet Context!11922))

(assert (=> b!6746787 (= (flatMap!2058 lt!2440264 lambda!379319) (derivationStepZipperUp!1731 lt!2440268 (h!72356 s!2326)))))

(declare-fun lt!2440257 () Unit!159845)

(assert (=> b!6746787 (= lt!2440257 (lemmaFlatMapOnSingletonSet!1584 lt!2440264 lt!2440268 lambda!379319))))

(declare-fun lt!2440276 () (InoxSet Context!11922))

(assert (=> b!6746787 (= lt!2440276 (derivationStepZipperUp!1731 lt!2440268 (h!72356 s!2326)))))

(assert (=> b!6746787 (= lt!2440264 (store ((as const (Array Context!11922 Bool)) false) lt!2440268 true))))

(assert (=> b!6746787 (= lt!2440268 (Context!11923 (Cons!65906 (reg!16906 r!7292) lt!2440271)))))

(assert (=> b!6746787 (= lt!2440271 (Cons!65906 r!7292 Nil!65906))))

(declare-fun b!6746788 () Bool)

(declare-fun res!2759707 () Bool)

(assert (=> b!6746788 (=> res!2759707 e!4074868)))

(declare-fun generalisedUnion!2421 (List!66030) Regex!16577)

(declare-fun unfocusZipperList!1998 (List!66031) List!66030)

(assert (=> b!6746788 (= res!2759707 (not (= r!7292 (generalisedUnion!2421 (unfocusZipperList!1998 zl!343)))))))

(declare-fun b!6746789 () Bool)

(declare-fun res!2759713 () Bool)

(assert (=> b!6746789 (=> res!2759713 e!4074862)))

(declare-fun matchZipper!2563 ((InoxSet Context!11922) List!66032) Bool)

(assert (=> b!6746789 (= res!2759713 (not (= (matchZipper!2563 lt!2440264 s!2326) (matchZipper!2563 (derivationStepZipper!2521 lt!2440264 (h!72356 s!2326)) (t!379733 s!2326)))))))

(declare-fun b!6746790 () Bool)

(declare-fun tp_is_empty!42407 () Bool)

(assert (=> b!6746790 (= e!4074871 tp_is_empty!42407)))

(declare-fun b!6746791 () Bool)

(declare-fun e!4074864 () Bool)

(assert (=> b!6746791 (= e!4074864 (not e!4074868))))

(declare-fun res!2759700 () Bool)

(assert (=> b!6746791 (=> res!2759700 e!4074868)))

(assert (=> b!6746791 (= res!2759700 (not ((_ is Cons!65907) zl!343)))))

(declare-fun lt!2440278 () Bool)

(assert (=> b!6746791 (= lt!2440278 (matchRSpec!3678 r!7292 s!2326))))

(assert (=> b!6746791 (= lt!2440278 (matchR!8760 r!7292 s!2326))))

(declare-fun lt!2440270 () Unit!159845)

(assert (=> b!6746791 (= lt!2440270 (mainMatchTheorem!3678 r!7292 s!2326))))

(declare-fun b!6746792 () Bool)

(assert (=> b!6746792 (= e!4074855 e!4074864)))

(declare-fun res!2759692 () Bool)

(assert (=> b!6746792 (=> (not res!2759692) (not e!4074864))))

(declare-fun lt!2440281 () Regex!16577)

(assert (=> b!6746792 (= res!2759692 (= r!7292 lt!2440281))))

(assert (=> b!6746792 (= lt!2440281 (unfocusZipper!2319 zl!343))))

(declare-fun b!6746793 () Bool)

(assert (=> b!6746793 (= e!4074863 (validRegex!8313 (reg!16906 r!7292)))))

(declare-fun b!6746794 () Bool)

(assert (=> b!6746794 (= e!4074862 e!4074860)))

(declare-fun res!2759712 () Bool)

(assert (=> b!6746794 (=> res!2759712 e!4074860)))

(assert (=> b!6746794 (= res!2759712 (not (= (unfocusZipper!2319 (Cons!65907 lt!2440268 Nil!65907)) lt!2440265)))))

(assert (=> b!6746794 (= lt!2440265 (Concat!25422 (reg!16906 r!7292) r!7292))))

(assert (=> b!6746795 (= e!4074868 e!4074870)))

(declare-fun res!2759703 () Bool)

(assert (=> b!6746795 (=> res!2759703 e!4074870)))

(assert (=> b!6746795 (= res!2759703 (not (= lt!2440278 e!4074869)))))

(declare-fun res!2759709 () Bool)

(assert (=> b!6746795 (=> res!2759709 e!4074869)))

(declare-fun isEmpty!38258 (List!66032) Bool)

(assert (=> b!6746795 (= res!2759709 (isEmpty!38258 s!2326))))

(assert (=> b!6746795 (= (Exists!3645 lambda!379316) (Exists!3645 lambda!379318))))

(declare-fun lt!2440266 () Unit!159845)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2172 (Regex!16577 Regex!16577 List!66032) Unit!159845)

(assert (=> b!6746795 (= lt!2440266 (lemmaExistCutMatchRandMatchRSpecEquivalent!2172 (reg!16906 r!7292) r!7292 s!2326))))

(assert (=> b!6746795 (= (Exists!3645 lambda!379316) (Exists!3645 lambda!379317))))

(declare-fun lt!2440282 () Unit!159845)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!736 (Regex!16577 List!66032) Unit!159845)

(assert (=> b!6746795 (= lt!2440282 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!736 (reg!16906 r!7292) s!2326))))

(assert (=> b!6746795 (= lt!2440277 (Exists!3645 lambda!379316))))

(declare-datatypes ((tuple2!67104 0))(
  ( (tuple2!67105 (_1!36855 List!66032) (_2!36855 List!66032)) )
))
(declare-datatypes ((Option!16464 0))(
  ( (None!16463) (Some!16463 (v!52663 tuple2!67104)) )
))
(declare-fun isDefined!13167 (Option!16464) Bool)

(declare-fun findConcatSeparation!2878 (Regex!16577 Regex!16577 List!66032 List!66032 List!66032) Option!16464)

(assert (=> b!6746795 (= lt!2440277 (isDefined!13167 (findConcatSeparation!2878 (reg!16906 r!7292) r!7292 Nil!65908 s!2326 s!2326)))))

(declare-fun lt!2440261 () Unit!159845)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2642 (Regex!16577 Regex!16577 List!66032) Unit!159845)

(assert (=> b!6746795 (= lt!2440261 (lemmaFindConcatSeparationEquivalentToExists!2642 (reg!16906 r!7292) r!7292 s!2326))))

(declare-fun b!6746796 () Bool)

(declare-fun tp!1849200 () Bool)

(declare-fun tp!1849196 () Bool)

(assert (=> b!6746796 (= e!4074871 (and tp!1849200 tp!1849196))))

(declare-fun b!6746797 () Bool)

(assert (=> b!6746797 (= e!4074870 e!4074859)))

(declare-fun res!2759698 () Bool)

(assert (=> b!6746797 (=> res!2759698 e!4074859)))

(declare-fun lt!2440274 () (InoxSet Context!11922))

(assert (=> b!6746797 (= res!2759698 (not (= lt!2440274 lt!2440275)))))

(assert (=> b!6746797 (= lt!2440275 (derivationStepZipperDown!1805 r!7292 (Context!11923 Nil!65906) (h!72356 s!2326)))))

(assert (=> b!6746797 (= lt!2440274 (derivationStepZipperUp!1731 (Context!11923 (Cons!65906 r!7292 Nil!65906)) (h!72356 s!2326)))))

(assert (=> b!6746797 (= lt!2440269 (derivationStepZipper!2521 z!1189 (h!72356 s!2326)))))

(declare-fun b!6746798 () Bool)

(declare-fun tp!1849199 () Bool)

(assert (=> b!6746798 (= e!4074858 tp!1849199)))

(declare-fun b!6746799 () Bool)

(declare-fun tp!1849197 () Bool)

(declare-fun tp!1849195 () Bool)

(assert (=> b!6746799 (= e!4074871 (and tp!1849197 tp!1849195))))

(declare-fun b!6746800 () Bool)

(declare-fun tp!1849201 () Bool)

(assert (=> b!6746800 (= e!4074872 (and tp_is_empty!42407 tp!1849201))))

(declare-fun b!6746801 () Bool)

(declare-fun res!2759711 () Bool)

(assert (=> b!6746801 (=> res!2759711 e!4074862)))

(assert (=> b!6746801 (= res!2759711 (or (not (= lt!2440281 r!7292)) (not (= r!7292 r!7292))))))

(assert (= (and start!654396 res!2759699) b!6746779))

(assert (= (and b!6746779 res!2759708) b!6746792))

(assert (= (and b!6746792 res!2759692) b!6746791))

(assert (= (and b!6746791 (not res!2759700)) b!6746772))

(assert (= (and b!6746772 (not res!2759696)) b!6746785))

(assert (= (and b!6746785 (not res!2759691)) b!6746782))

(assert (= (and b!6746782 (not res!2759693)) b!6746788))

(assert (= (and b!6746788 (not res!2759707)) b!6746781))

(assert (= (and b!6746781 (not res!2759704)) b!6746795))

(assert (= (and b!6746795 (not res!2759709)) b!6746770))

(assert (= (and b!6746795 (not res!2759703)) b!6746775))

(assert (= (and b!6746775 (not res!2759710)) b!6746797))

(assert (= (and b!6746797 (not res!2759698)) b!6746774))

(assert (= (and b!6746774 (not res!2759701)) b!6746787))

(assert (= (and b!6746787 (not res!2759705)) b!6746789))

(assert (= (and b!6746789 (not res!2759713)) b!6746801))

(assert (= (and b!6746801 (not res!2759711)) b!6746794))

(assert (= (and b!6746794 (not res!2759712)) b!6746773))

(assert (= (and b!6746773 (not res!2759702)) b!6746783))

(assert (= (and b!6746783 (not res!2759695)) b!6746778))

(assert (= (and b!6746778 (not res!2759706)) b!6746784))

(assert (= (and b!6746784 res!2759714) b!6746786))

(assert (= (and b!6746786 (not res!2759694)) b!6746771))

(assert (= (and b!6746784 (not res!2759697)) b!6746793))

(assert (= (and start!654396 ((_ is ElementMatch!16577) r!7292)) b!6746790))

(assert (= (and start!654396 ((_ is Concat!25422) r!7292)) b!6746799))

(assert (= (and start!654396 ((_ is Star!16577) r!7292)) b!6746776))

(assert (= (and start!654396 ((_ is Union!16577) r!7292)) b!6746796))

(assert (= (and start!654396 condSetEmpty!46099) setIsEmpty!46099))

(assert (= (and start!654396 (not condSetEmpty!46099)) setNonEmpty!46099))

(assert (= setNonEmpty!46099 b!6746780))

(assert (= b!6746777 b!6746798))

(assert (= (and start!654396 ((_ is Cons!65907) zl!343)) b!6746777))

(assert (= (and start!654396 ((_ is Cons!65908) s!2326)) b!6746800))

(declare-fun m!7501862 () Bool)

(assert (=> b!6746795 m!7501862))

(declare-fun m!7501864 () Bool)

(assert (=> b!6746795 m!7501864))

(declare-fun m!7501866 () Bool)

(assert (=> b!6746795 m!7501866))

(declare-fun m!7501868 () Bool)

(assert (=> b!6746795 m!7501868))

(declare-fun m!7501870 () Bool)

(assert (=> b!6746795 m!7501870))

(declare-fun m!7501872 () Bool)

(assert (=> b!6746795 m!7501872))

(declare-fun m!7501874 () Bool)

(assert (=> b!6746795 m!7501874))

(assert (=> b!6746795 m!7501864))

(assert (=> b!6746795 m!7501864))

(assert (=> b!6746795 m!7501874))

(declare-fun m!7501876 () Bool)

(assert (=> b!6746795 m!7501876))

(declare-fun m!7501878 () Bool)

(assert (=> b!6746795 m!7501878))

(declare-fun m!7501880 () Bool)

(assert (=> b!6746778 m!7501880))

(declare-fun m!7501882 () Bool)

(assert (=> setNonEmpty!46099 m!7501882))

(declare-fun m!7501884 () Bool)

(assert (=> b!6746792 m!7501884))

(declare-fun m!7501886 () Bool)

(assert (=> b!6746789 m!7501886))

(declare-fun m!7501888 () Bool)

(assert (=> b!6746789 m!7501888))

(assert (=> b!6746789 m!7501888))

(declare-fun m!7501890 () Bool)

(assert (=> b!6746789 m!7501890))

(declare-fun m!7501892 () Bool)

(assert (=> b!6746777 m!7501892))

(declare-fun m!7501894 () Bool)

(assert (=> b!6746785 m!7501894))

(declare-fun m!7501896 () Bool)

(assert (=> b!6746772 m!7501896))

(declare-fun m!7501898 () Bool)

(assert (=> b!6746783 m!7501898))

(declare-fun m!7501900 () Bool)

(assert (=> b!6746787 m!7501900))

(declare-fun m!7501902 () Bool)

(assert (=> b!6746787 m!7501902))

(declare-fun m!7501904 () Bool)

(assert (=> b!6746787 m!7501904))

(declare-fun m!7501906 () Bool)

(assert (=> b!6746787 m!7501906))

(declare-fun m!7501908 () Bool)

(assert (=> b!6746787 m!7501908))

(declare-fun m!7501910 () Bool)

(assert (=> b!6746774 m!7501910))

(declare-fun m!7501912 () Bool)

(assert (=> b!6746774 m!7501912))

(declare-fun m!7501914 () Bool)

(assert (=> b!6746774 m!7501914))

(declare-fun m!7501916 () Bool)

(assert (=> b!6746797 m!7501916))

(declare-fun m!7501918 () Bool)

(assert (=> b!6746797 m!7501918))

(declare-fun m!7501920 () Bool)

(assert (=> b!6746797 m!7501920))

(declare-fun m!7501922 () Bool)

(assert (=> b!6746784 m!7501922))

(declare-fun m!7501924 () Bool)

(assert (=> b!6746784 m!7501924))

(declare-fun m!7501926 () Bool)

(assert (=> b!6746784 m!7501926))

(declare-fun m!7501928 () Bool)

(assert (=> b!6746773 m!7501928))

(declare-fun m!7501930 () Bool)

(assert (=> b!6746773 m!7501930))

(declare-fun m!7501932 () Bool)

(assert (=> b!6746773 m!7501932))

(declare-fun m!7501934 () Bool)

(assert (=> b!6746773 m!7501934))

(declare-fun m!7501936 () Bool)

(assert (=> b!6746773 m!7501936))

(declare-fun m!7501938 () Bool)

(assert (=> b!6746773 m!7501938))

(declare-fun m!7501940 () Bool)

(assert (=> b!6746773 m!7501940))

(declare-fun m!7501942 () Bool)

(assert (=> b!6746773 m!7501942))

(declare-fun m!7501944 () Bool)

(assert (=> b!6746773 m!7501944))

(declare-fun m!7501946 () Bool)

(assert (=> start!654396 m!7501946))

(declare-fun m!7501948 () Bool)

(assert (=> b!6746793 m!7501948))

(declare-fun m!7501950 () Bool)

(assert (=> b!6746779 m!7501950))

(declare-fun m!7501952 () Bool)

(assert (=> b!6746791 m!7501952))

(declare-fun m!7501954 () Bool)

(assert (=> b!6746791 m!7501954))

(declare-fun m!7501956 () Bool)

(assert (=> b!6746791 m!7501956))

(declare-fun m!7501958 () Bool)

(assert (=> b!6746788 m!7501958))

(assert (=> b!6746788 m!7501958))

(declare-fun m!7501960 () Bool)

(assert (=> b!6746788 m!7501960))

(declare-fun m!7501962 () Bool)

(assert (=> b!6746794 m!7501962))

(assert (=> b!6746771 m!7501864))

(assert (=> b!6746771 m!7501868))

(check-sat (not b!6746793) (not b!6746792) (not b!6746779) (not b!6746777) (not b!6746791) (not b!6746794) (not b!6746796) (not b!6746784) (not b!6746797) (not b!6746773) (not b!6746778) (not b!6746783) (not b!6746789) (not b!6746799) (not b!6746788) (not b!6746771) (not b!6746785) (not b!6746800) (not start!654396) (not b!6746774) (not b!6746787) (not b!6746798) (not b!6746780) (not b!6746795) (not setNonEmpty!46099) tp_is_empty!42407 (not b!6746776) (not b!6746772))
(check-sat)
(get-model)

(declare-fun b!6747004 () Bool)

(declare-fun e!4074994 () (InoxSet Context!11922))

(declare-fun call!610105 () (InoxSet Context!11922))

(declare-fun call!610101 () (InoxSet Context!11922))

(assert (=> b!6747004 (= e!4074994 ((_ map or) call!610105 call!610101))))

(declare-fun b!6747005 () Bool)

(declare-fun e!4074991 () (InoxSet Context!11922))

(assert (=> b!6747005 (= e!4074991 (store ((as const (Array Context!11922 Bool)) false) (Context!11923 Nil!65906) true))))

(declare-fun b!6747006 () Bool)

(assert (=> b!6747006 (= e!4074991 e!4074994)))

(declare-fun c!1251841 () Bool)

(assert (=> b!6747006 (= c!1251841 ((_ is Union!16577) r!7292))))

(declare-fun bm!610096 () Bool)

(declare-fun call!610104 () List!66030)

(declare-fun call!610103 () List!66030)

(assert (=> bm!610096 (= call!610104 call!610103)))

(declare-fun b!6747007 () Bool)

(declare-fun c!1251839 () Bool)

(assert (=> b!6747007 (= c!1251839 ((_ is Star!16577) r!7292))))

(declare-fun e!4074993 () (InoxSet Context!11922))

(declare-fun e!4074990 () (InoxSet Context!11922))

(assert (=> b!6747007 (= e!4074993 e!4074990)))

(declare-fun bm!610097 () Bool)

(assert (=> bm!610097 (= call!610105 (derivationStepZipperDown!1805 (ite c!1251841 (regOne!33667 r!7292) (regOne!33666 r!7292)) (ite c!1251841 (Context!11923 Nil!65906) (Context!11923 call!610103)) (h!72356 s!2326)))))

(declare-fun b!6747008 () Bool)

(declare-fun e!4074992 () (InoxSet Context!11922))

(assert (=> b!6747008 (= e!4074992 e!4074993)))

(declare-fun c!1251840 () Bool)

(assert (=> b!6747008 (= c!1251840 ((_ is Concat!25422) r!7292))))

(declare-fun b!6747009 () Bool)

(declare-fun call!610106 () (InoxSet Context!11922))

(assert (=> b!6747009 (= e!4074990 call!610106)))

(declare-fun b!6747010 () Bool)

(assert (=> b!6747010 (= e!4074990 ((as const (Array Context!11922 Bool)) false))))

(declare-fun b!6747011 () Bool)

(declare-fun c!1251838 () Bool)

(declare-fun e!4074989 () Bool)

(assert (=> b!6747011 (= c!1251838 e!4074989)))

(declare-fun res!2759787 () Bool)

(assert (=> b!6747011 (=> (not res!2759787) (not e!4074989))))

(assert (=> b!6747011 (= res!2759787 ((_ is Concat!25422) r!7292))))

(assert (=> b!6747011 (= e!4074994 e!4074992)))

(declare-fun bm!610098 () Bool)

(declare-fun $colon$colon!2393 (List!66030 Regex!16577) List!66030)

(assert (=> bm!610098 (= call!610103 ($colon$colon!2393 (exprs!6461 (Context!11923 Nil!65906)) (ite (or c!1251838 c!1251840) (regTwo!33666 r!7292) r!7292)))))

(declare-fun b!6747012 () Bool)

(assert (=> b!6747012 (= e!4074993 call!610106)))

(declare-fun b!6747013 () Bool)

(declare-fun call!610102 () (InoxSet Context!11922))

(assert (=> b!6747013 (= e!4074992 ((_ map or) call!610105 call!610102))))

(declare-fun bm!610099 () Bool)

(assert (=> bm!610099 (= call!610102 call!610101)))

(declare-fun b!6747014 () Bool)

(declare-fun nullable!6564 (Regex!16577) Bool)

(assert (=> b!6747014 (= e!4074989 (nullable!6564 (regOne!33666 r!7292)))))

(declare-fun bm!610101 () Bool)

(assert (=> bm!610101 (= call!610101 (derivationStepZipperDown!1805 (ite c!1251841 (regTwo!33667 r!7292) (ite c!1251838 (regTwo!33666 r!7292) (ite c!1251840 (regOne!33666 r!7292) (reg!16906 r!7292)))) (ite (or c!1251841 c!1251838) (Context!11923 Nil!65906) (Context!11923 call!610104)) (h!72356 s!2326)))))

(declare-fun d!2119470 () Bool)

(declare-fun c!1251842 () Bool)

(assert (=> d!2119470 (= c!1251842 (and ((_ is ElementMatch!16577) r!7292) (= (c!1251775 r!7292) (h!72356 s!2326))))))

(assert (=> d!2119470 (= (derivationStepZipperDown!1805 r!7292 (Context!11923 Nil!65906) (h!72356 s!2326)) e!4074991)))

(declare-fun bm!610100 () Bool)

(assert (=> bm!610100 (= call!610106 call!610102)))

(assert (= (and d!2119470 c!1251842) b!6747005))

(assert (= (and d!2119470 (not c!1251842)) b!6747006))

(assert (= (and b!6747006 c!1251841) b!6747004))

(assert (= (and b!6747006 (not c!1251841)) b!6747011))

(assert (= (and b!6747011 res!2759787) b!6747014))

(assert (= (and b!6747011 c!1251838) b!6747013))

(assert (= (and b!6747011 (not c!1251838)) b!6747008))

(assert (= (and b!6747008 c!1251840) b!6747012))

(assert (= (and b!6747008 (not c!1251840)) b!6747007))

(assert (= (and b!6747007 c!1251839) b!6747009))

(assert (= (and b!6747007 (not c!1251839)) b!6747010))

(assert (= (or b!6747012 b!6747009) bm!610096))

(assert (= (or b!6747012 b!6747009) bm!610100))

(assert (= (or b!6747013 bm!610096) bm!610098))

(assert (= (or b!6747013 bm!610100) bm!610099))

(assert (= (or b!6747004 bm!610099) bm!610101))

(assert (= (or b!6747004 b!6747013) bm!610097))

(declare-fun m!7502034 () Bool)

(assert (=> bm!610097 m!7502034))

(declare-fun m!7502036 () Bool)

(assert (=> b!6747014 m!7502036))

(declare-fun m!7502038 () Bool)

(assert (=> bm!610101 m!7502038))

(declare-fun m!7502040 () Bool)

(assert (=> b!6747005 m!7502040))

(declare-fun m!7502042 () Bool)

(assert (=> bm!610098 m!7502042))

(assert (=> b!6746797 d!2119470))

(declare-fun b!6747051 () Bool)

(declare-fun e!4075014 () (InoxSet Context!11922))

(declare-fun e!4075016 () (InoxSet Context!11922))

(assert (=> b!6747051 (= e!4075014 e!4075016)))

(declare-fun c!1251857 () Bool)

(assert (=> b!6747051 (= c!1251857 ((_ is Cons!65906) (exprs!6461 (Context!11923 (Cons!65906 r!7292 Nil!65906)))))))

(declare-fun b!6747052 () Bool)

(declare-fun call!610112 () (InoxSet Context!11922))

(assert (=> b!6747052 (= e!4075016 call!610112)))

(declare-fun b!6747053 () Bool)

(assert (=> b!6747053 (= e!4075016 ((as const (Array Context!11922 Bool)) false))))

(declare-fun d!2119492 () Bool)

(declare-fun c!1251856 () Bool)

(declare-fun e!4075015 () Bool)

(assert (=> d!2119492 (= c!1251856 e!4075015)))

(declare-fun res!2759800 () Bool)

(assert (=> d!2119492 (=> (not res!2759800) (not e!4075015))))

(assert (=> d!2119492 (= res!2759800 ((_ is Cons!65906) (exprs!6461 (Context!11923 (Cons!65906 r!7292 Nil!65906)))))))

(assert (=> d!2119492 (= (derivationStepZipperUp!1731 (Context!11923 (Cons!65906 r!7292 Nil!65906)) (h!72356 s!2326)) e!4075014)))

(declare-fun b!6747054 () Bool)

(assert (=> b!6747054 (= e!4075014 ((_ map or) call!610112 (derivationStepZipperUp!1731 (Context!11923 (t!379731 (exprs!6461 (Context!11923 (Cons!65906 r!7292 Nil!65906))))) (h!72356 s!2326))))))

(declare-fun bm!610107 () Bool)

(assert (=> bm!610107 (= call!610112 (derivationStepZipperDown!1805 (h!72354 (exprs!6461 (Context!11923 (Cons!65906 r!7292 Nil!65906)))) (Context!11923 (t!379731 (exprs!6461 (Context!11923 (Cons!65906 r!7292 Nil!65906))))) (h!72356 s!2326)))))

(declare-fun b!6747055 () Bool)

(assert (=> b!6747055 (= e!4075015 (nullable!6564 (h!72354 (exprs!6461 (Context!11923 (Cons!65906 r!7292 Nil!65906))))))))

(assert (= (and d!2119492 res!2759800) b!6747055))

(assert (= (and d!2119492 c!1251856) b!6747054))

(assert (= (and d!2119492 (not c!1251856)) b!6747051))

(assert (= (and b!6747051 c!1251857) b!6747052))

(assert (= (and b!6747051 (not c!1251857)) b!6747053))

(assert (= (or b!6747054 b!6747052) bm!610107))

(declare-fun m!7502086 () Bool)

(assert (=> b!6747054 m!7502086))

(declare-fun m!7502088 () Bool)

(assert (=> bm!610107 m!7502088))

(declare-fun m!7502090 () Bool)

(assert (=> b!6747055 m!7502090))

(assert (=> b!6746797 d!2119492))

(declare-fun bs!1793507 () Bool)

(declare-fun d!2119514 () Bool)

(assert (= bs!1793507 (and d!2119514 b!6746774)))

(declare-fun lambda!379343 () Int)

(assert (=> bs!1793507 (= lambda!379343 lambda!379319)))

(assert (=> d!2119514 true))

(assert (=> d!2119514 (= (derivationStepZipper!2521 z!1189 (h!72356 s!2326)) (flatMap!2058 z!1189 lambda!379343))))

(declare-fun bs!1793508 () Bool)

(assert (= bs!1793508 d!2119514))

(declare-fun m!7502092 () Bool)

(assert (=> bs!1793508 m!7502092))

(assert (=> b!6746797 d!2119514))

(declare-fun d!2119516 () Bool)

(declare-fun choose!50321 ((InoxSet Context!11922) Int) (InoxSet Context!11922))

(assert (=> d!2119516 (= (flatMap!2058 z!1189 lambda!379319) (choose!50321 z!1189 lambda!379319))))

(declare-fun bs!1793509 () Bool)

(assert (= bs!1793509 d!2119516))

(declare-fun m!7502094 () Bool)

(assert (=> bs!1793509 m!7502094))

(assert (=> b!6746774 d!2119516))

(declare-fun b!6747091 () Bool)

(declare-fun e!4075035 () (InoxSet Context!11922))

(declare-fun e!4075037 () (InoxSet Context!11922))

(assert (=> b!6747091 (= e!4075035 e!4075037)))

(declare-fun c!1251876 () Bool)

(assert (=> b!6747091 (= c!1251876 ((_ is Cons!65906) (exprs!6461 (h!72355 zl!343))))))

(declare-fun b!6747092 () Bool)

(declare-fun call!610131 () (InoxSet Context!11922))

(assert (=> b!6747092 (= e!4075037 call!610131)))

(declare-fun b!6747093 () Bool)

(assert (=> b!6747093 (= e!4075037 ((as const (Array Context!11922 Bool)) false))))

(declare-fun d!2119518 () Bool)

(declare-fun c!1251875 () Bool)

(declare-fun e!4075036 () Bool)

(assert (=> d!2119518 (= c!1251875 e!4075036)))

(declare-fun res!2759804 () Bool)

(assert (=> d!2119518 (=> (not res!2759804) (not e!4075036))))

(assert (=> d!2119518 (= res!2759804 ((_ is Cons!65906) (exprs!6461 (h!72355 zl!343))))))

(assert (=> d!2119518 (= (derivationStepZipperUp!1731 (h!72355 zl!343) (h!72356 s!2326)) e!4075035)))

(declare-fun b!6747094 () Bool)

(assert (=> b!6747094 (= e!4075035 ((_ map or) call!610131 (derivationStepZipperUp!1731 (Context!11923 (t!379731 (exprs!6461 (h!72355 zl!343)))) (h!72356 s!2326))))))

(declare-fun bm!610126 () Bool)

(assert (=> bm!610126 (= call!610131 (derivationStepZipperDown!1805 (h!72354 (exprs!6461 (h!72355 zl!343))) (Context!11923 (t!379731 (exprs!6461 (h!72355 zl!343)))) (h!72356 s!2326)))))

(declare-fun b!6747095 () Bool)

(assert (=> b!6747095 (= e!4075036 (nullable!6564 (h!72354 (exprs!6461 (h!72355 zl!343)))))))

(assert (= (and d!2119518 res!2759804) b!6747095))

(assert (= (and d!2119518 c!1251875) b!6747094))

(assert (= (and d!2119518 (not c!1251875)) b!6747091))

(assert (= (and b!6747091 c!1251876) b!6747092))

(assert (= (and b!6747091 (not c!1251876)) b!6747093))

(assert (= (or b!6747094 b!6747092) bm!610126))

(declare-fun m!7502106 () Bool)

(assert (=> b!6747094 m!7502106))

(declare-fun m!7502108 () Bool)

(assert (=> bm!610126 m!7502108))

(declare-fun m!7502110 () Bool)

(assert (=> b!6747095 m!7502110))

(assert (=> b!6746774 d!2119518))

(declare-fun d!2119522 () Bool)

(declare-fun dynLambda!26298 (Int Context!11922) (InoxSet Context!11922))

(assert (=> d!2119522 (= (flatMap!2058 z!1189 lambda!379319) (dynLambda!26298 lambda!379319 (h!72355 zl!343)))))

(declare-fun lt!2440310 () Unit!159845)

(declare-fun choose!50322 ((InoxSet Context!11922) Context!11922 Int) Unit!159845)

(assert (=> d!2119522 (= lt!2440310 (choose!50322 z!1189 (h!72355 zl!343) lambda!379319))))

(assert (=> d!2119522 (= z!1189 (store ((as const (Array Context!11922 Bool)) false) (h!72355 zl!343) true))))

(assert (=> d!2119522 (= (lemmaFlatMapOnSingletonSet!1584 z!1189 (h!72355 zl!343) lambda!379319) lt!2440310)))

(declare-fun b_lambda!254113 () Bool)

(assert (=> (not b_lambda!254113) (not d!2119522)))

(declare-fun bs!1793513 () Bool)

(assert (= bs!1793513 d!2119522))

(assert (=> bs!1793513 m!7501910))

(declare-fun m!7502126 () Bool)

(assert (=> bs!1793513 m!7502126))

(declare-fun m!7502128 () Bool)

(assert (=> bs!1793513 m!7502128))

(declare-fun m!7502130 () Bool)

(assert (=> bs!1793513 m!7502130))

(assert (=> b!6746774 d!2119522))

(declare-fun d!2119530 () Bool)

(declare-fun isEmpty!38260 (Option!16464) Bool)

(assert (=> d!2119530 (= (isDefined!13167 (findConcatSeparation!2878 (reg!16906 r!7292) r!7292 Nil!65908 s!2326 s!2326)) (not (isEmpty!38260 (findConcatSeparation!2878 (reg!16906 r!7292) r!7292 Nil!65908 s!2326 s!2326))))))

(declare-fun bs!1793514 () Bool)

(assert (= bs!1793514 d!2119530))

(assert (=> bs!1793514 m!7501874))

(declare-fun m!7502132 () Bool)

(assert (=> bs!1793514 m!7502132))

(assert (=> b!6746795 d!2119530))

(declare-fun bs!1793531 () Bool)

(declare-fun d!2119532 () Bool)

(assert (= bs!1793531 (and d!2119532 b!6746795)))

(declare-fun lambda!379358 () Int)

(assert (=> bs!1793531 (= lambda!379358 lambda!379316)))

(assert (=> bs!1793531 (not (= lambda!379358 lambda!379317))))

(assert (=> bs!1793531 (not (= lambda!379358 lambda!379318))))

(assert (=> d!2119532 true))

(assert (=> d!2119532 true))

(assert (=> d!2119532 true))

(declare-fun lambda!379360 () Int)

(assert (=> bs!1793531 (not (= lambda!379360 lambda!379316))))

(assert (=> bs!1793531 (not (= lambda!379360 lambda!379317))))

(assert (=> bs!1793531 (= lambda!379360 lambda!379318)))

(declare-fun bs!1793535 () Bool)

(assert (= bs!1793535 d!2119532))

(assert (=> bs!1793535 (not (= lambda!379360 lambda!379358))))

(assert (=> d!2119532 true))

(assert (=> d!2119532 true))

(assert (=> d!2119532 true))

(assert (=> d!2119532 (= (Exists!3645 lambda!379358) (Exists!3645 lambda!379360))))

(declare-fun lt!2440320 () Unit!159845)

(declare-fun choose!50324 (Regex!16577 Regex!16577 List!66032) Unit!159845)

(assert (=> d!2119532 (= lt!2440320 (choose!50324 (reg!16906 r!7292) r!7292 s!2326))))

(assert (=> d!2119532 (validRegex!8313 (reg!16906 r!7292))))

(assert (=> d!2119532 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2172 (reg!16906 r!7292) r!7292 s!2326) lt!2440320)))

(declare-fun m!7502198 () Bool)

(assert (=> bs!1793535 m!7502198))

(declare-fun m!7502200 () Bool)

(assert (=> bs!1793535 m!7502200))

(declare-fun m!7502202 () Bool)

(assert (=> bs!1793535 m!7502202))

(assert (=> bs!1793535 m!7501948))

(assert (=> b!6746795 d!2119532))

(declare-fun bs!1793544 () Bool)

(declare-fun d!2119554 () Bool)

(assert (= bs!1793544 (and d!2119554 b!6746795)))

(declare-fun lambda!379371 () Int)

(assert (=> bs!1793544 (= (= (Star!16577 (reg!16906 r!7292)) r!7292) (= lambda!379371 lambda!379316))))

(declare-fun bs!1793545 () Bool)

(assert (= bs!1793545 (and d!2119554 d!2119532)))

(assert (=> bs!1793545 (not (= lambda!379371 lambda!379360))))

(assert (=> bs!1793544 (not (= lambda!379371 lambda!379318))))

(assert (=> bs!1793544 (not (= lambda!379371 lambda!379317))))

(assert (=> bs!1793545 (= (= (Star!16577 (reg!16906 r!7292)) r!7292) (= lambda!379371 lambda!379358))))

(assert (=> d!2119554 true))

(assert (=> d!2119554 true))

(declare-fun lambda!379372 () Int)

(assert (=> bs!1793544 (not (= lambda!379372 lambda!379316))))

(assert (=> bs!1793545 (not (= lambda!379372 lambda!379360))))

(declare-fun bs!1793546 () Bool)

(assert (= bs!1793546 d!2119554))

(assert (=> bs!1793546 (not (= lambda!379372 lambda!379371))))

(assert (=> bs!1793544 (not (= lambda!379372 lambda!379318))))

(assert (=> bs!1793544 (= (= (Star!16577 (reg!16906 r!7292)) r!7292) (= lambda!379372 lambda!379317))))

(assert (=> bs!1793545 (not (= lambda!379372 lambda!379358))))

(assert (=> d!2119554 true))

(assert (=> d!2119554 true))

(assert (=> d!2119554 (= (Exists!3645 lambda!379371) (Exists!3645 lambda!379372))))

(declare-fun lt!2440327 () Unit!159845)

(declare-fun choose!50325 (Regex!16577 List!66032) Unit!159845)

(assert (=> d!2119554 (= lt!2440327 (choose!50325 (reg!16906 r!7292) s!2326))))

(assert (=> d!2119554 (validRegex!8313 (reg!16906 r!7292))))

(assert (=> d!2119554 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!736 (reg!16906 r!7292) s!2326) lt!2440327)))

(declare-fun m!7502212 () Bool)

(assert (=> bs!1793546 m!7502212))

(declare-fun m!7502214 () Bool)

(assert (=> bs!1793546 m!7502214))

(declare-fun m!7502216 () Bool)

(assert (=> bs!1793546 m!7502216))

(assert (=> bs!1793546 m!7501948))

(assert (=> b!6746795 d!2119554))

(declare-fun d!2119562 () Bool)

(declare-fun choose!50326 (Int) Bool)

(assert (=> d!2119562 (= (Exists!3645 lambda!379318) (choose!50326 lambda!379318))))

(declare-fun bs!1793547 () Bool)

(assert (= bs!1793547 d!2119562))

(declare-fun m!7502218 () Bool)

(assert (=> bs!1793547 m!7502218))

(assert (=> b!6746795 d!2119562))

(declare-fun d!2119564 () Bool)

(assert (=> d!2119564 (= (isEmpty!38258 s!2326) ((_ is Nil!65908) s!2326))))

(assert (=> b!6746795 d!2119564))

(declare-fun d!2119566 () Bool)

(assert (=> d!2119566 (= (Exists!3645 lambda!379316) (choose!50326 lambda!379316))))

(declare-fun bs!1793548 () Bool)

(assert (= bs!1793548 d!2119566))

(declare-fun m!7502220 () Bool)

(assert (=> bs!1793548 m!7502220))

(assert (=> b!6746795 d!2119566))

(declare-fun d!2119568 () Bool)

(assert (=> d!2119568 (= (Exists!3645 lambda!379317) (choose!50326 lambda!379317))))

(declare-fun bs!1793549 () Bool)

(assert (= bs!1793549 d!2119568))

(declare-fun m!7502222 () Bool)

(assert (=> bs!1793549 m!7502222))

(assert (=> b!6746795 d!2119568))

(declare-fun b!6747306 () Bool)

(declare-fun lt!2440348 () Unit!159845)

(declare-fun lt!2440350 () Unit!159845)

(assert (=> b!6747306 (= lt!2440348 lt!2440350)))

(declare-fun ++!14732 (List!66032 List!66032) List!66032)

(assert (=> b!6747306 (= (++!14732 (++!14732 Nil!65908 (Cons!65908 (h!72356 s!2326) Nil!65908)) (t!379733 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2705 (List!66032 C!33424 List!66032 List!66032) Unit!159845)

(assert (=> b!6747306 (= lt!2440350 (lemmaMoveElementToOtherListKeepsConcatEq!2705 Nil!65908 (h!72356 s!2326) (t!379733 s!2326) s!2326))))

(declare-fun e!4075152 () Option!16464)

(assert (=> b!6747306 (= e!4075152 (findConcatSeparation!2878 (reg!16906 r!7292) r!7292 (++!14732 Nil!65908 (Cons!65908 (h!72356 s!2326) Nil!65908)) (t!379733 s!2326) s!2326))))

(declare-fun b!6747307 () Bool)

(declare-fun e!4075150 () Bool)

(declare-fun lt!2440349 () Option!16464)

(assert (=> b!6747307 (= e!4075150 (not (isDefined!13167 lt!2440349)))))

(declare-fun b!6747308 () Bool)

(assert (=> b!6747308 (= e!4075152 None!16463)))

(declare-fun b!6747309 () Bool)

(declare-fun res!2759890 () Bool)

(declare-fun e!4075149 () Bool)

(assert (=> b!6747309 (=> (not res!2759890) (not e!4075149))))

(declare-fun get!22936 (Option!16464) tuple2!67104)

(assert (=> b!6747309 (= res!2759890 (matchR!8760 r!7292 (_2!36855 (get!22936 lt!2440349))))))

(declare-fun b!6747310 () Bool)

(declare-fun e!4075148 () Option!16464)

(assert (=> b!6747310 (= e!4075148 (Some!16463 (tuple2!67105 Nil!65908 s!2326)))))

(declare-fun b!6747312 () Bool)

(declare-fun res!2759889 () Bool)

(assert (=> b!6747312 (=> (not res!2759889) (not e!4075149))))

(assert (=> b!6747312 (= res!2759889 (matchR!8760 (reg!16906 r!7292) (_1!36855 (get!22936 lt!2440349))))))

(declare-fun b!6747313 () Bool)

(assert (=> b!6747313 (= e!4075149 (= (++!14732 (_1!36855 (get!22936 lt!2440349)) (_2!36855 (get!22936 lt!2440349))) s!2326))))

(declare-fun b!6747314 () Bool)

(assert (=> b!6747314 (= e!4075148 e!4075152)))

(declare-fun c!1251915 () Bool)

(assert (=> b!6747314 (= c!1251915 ((_ is Nil!65908) s!2326))))

(declare-fun b!6747311 () Bool)

(declare-fun e!4075151 () Bool)

(assert (=> b!6747311 (= e!4075151 (matchR!8760 r!7292 s!2326))))

(declare-fun d!2119570 () Bool)

(assert (=> d!2119570 e!4075150))

(declare-fun res!2759891 () Bool)

(assert (=> d!2119570 (=> res!2759891 e!4075150)))

(assert (=> d!2119570 (= res!2759891 e!4075149)))

(declare-fun res!2759887 () Bool)

(assert (=> d!2119570 (=> (not res!2759887) (not e!4075149))))

(assert (=> d!2119570 (= res!2759887 (isDefined!13167 lt!2440349))))

(assert (=> d!2119570 (= lt!2440349 e!4075148)))

(declare-fun c!1251914 () Bool)

(assert (=> d!2119570 (= c!1251914 e!4075151)))

(declare-fun res!2759888 () Bool)

(assert (=> d!2119570 (=> (not res!2759888) (not e!4075151))))

(assert (=> d!2119570 (= res!2759888 (matchR!8760 (reg!16906 r!7292) Nil!65908))))

(assert (=> d!2119570 (validRegex!8313 (reg!16906 r!7292))))

(assert (=> d!2119570 (= (findConcatSeparation!2878 (reg!16906 r!7292) r!7292 Nil!65908 s!2326 s!2326) lt!2440349)))

(assert (= (and d!2119570 res!2759888) b!6747311))

(assert (= (and d!2119570 c!1251914) b!6747310))

(assert (= (and d!2119570 (not c!1251914)) b!6747314))

(assert (= (and b!6747314 c!1251915) b!6747308))

(assert (= (and b!6747314 (not c!1251915)) b!6747306))

(assert (= (and d!2119570 res!2759887) b!6747312))

(assert (= (and b!6747312 res!2759889) b!6747309))

(assert (= (and b!6747309 res!2759890) b!6747313))

(assert (= (and d!2119570 (not res!2759891)) b!6747307))

(declare-fun m!7502284 () Bool)

(assert (=> b!6747309 m!7502284))

(declare-fun m!7502286 () Bool)

(assert (=> b!6747309 m!7502286))

(assert (=> b!6747313 m!7502284))

(declare-fun m!7502288 () Bool)

(assert (=> b!6747313 m!7502288))

(declare-fun m!7502290 () Bool)

(assert (=> b!6747306 m!7502290))

(assert (=> b!6747306 m!7502290))

(declare-fun m!7502292 () Bool)

(assert (=> b!6747306 m!7502292))

(declare-fun m!7502294 () Bool)

(assert (=> b!6747306 m!7502294))

(assert (=> b!6747306 m!7502290))

(declare-fun m!7502296 () Bool)

(assert (=> b!6747306 m!7502296))

(declare-fun m!7502298 () Bool)

(assert (=> d!2119570 m!7502298))

(declare-fun m!7502300 () Bool)

(assert (=> d!2119570 m!7502300))

(assert (=> d!2119570 m!7501948))

(assert (=> b!6747307 m!7502298))

(assert (=> b!6747312 m!7502284))

(declare-fun m!7502302 () Bool)

(assert (=> b!6747312 m!7502302))

(assert (=> b!6747311 m!7501954))

(assert (=> b!6746795 d!2119570))

(declare-fun bs!1793565 () Bool)

(declare-fun d!2119594 () Bool)

(assert (= bs!1793565 (and d!2119594 b!6746795)))

(declare-fun lambda!379378 () Int)

(assert (=> bs!1793565 (= lambda!379378 lambda!379316)))

(declare-fun bs!1793566 () Bool)

(assert (= bs!1793566 (and d!2119594 d!2119532)))

(assert (=> bs!1793566 (not (= lambda!379378 lambda!379360))))

(declare-fun bs!1793567 () Bool)

(assert (= bs!1793567 (and d!2119594 d!2119554)))

(assert (=> bs!1793567 (not (= lambda!379378 lambda!379372))))

(assert (=> bs!1793567 (= (= r!7292 (Star!16577 (reg!16906 r!7292))) (= lambda!379378 lambda!379371))))

(assert (=> bs!1793565 (not (= lambda!379378 lambda!379318))))

(assert (=> bs!1793565 (not (= lambda!379378 lambda!379317))))

(assert (=> bs!1793566 (= lambda!379378 lambda!379358)))

(assert (=> d!2119594 true))

(assert (=> d!2119594 true))

(assert (=> d!2119594 true))

(assert (=> d!2119594 (= (isDefined!13167 (findConcatSeparation!2878 (reg!16906 r!7292) r!7292 Nil!65908 s!2326 s!2326)) (Exists!3645 lambda!379378))))

(declare-fun lt!2440353 () Unit!159845)

(declare-fun choose!50328 (Regex!16577 Regex!16577 List!66032) Unit!159845)

(assert (=> d!2119594 (= lt!2440353 (choose!50328 (reg!16906 r!7292) r!7292 s!2326))))

(assert (=> d!2119594 (validRegex!8313 (reg!16906 r!7292))))

(assert (=> d!2119594 (= (lemmaFindConcatSeparationEquivalentToExists!2642 (reg!16906 r!7292) r!7292 s!2326) lt!2440353)))

(declare-fun bs!1793568 () Bool)

(assert (= bs!1793568 d!2119594))

(declare-fun m!7502304 () Bool)

(assert (=> bs!1793568 m!7502304))

(assert (=> bs!1793568 m!7501874))

(assert (=> bs!1793568 m!7501876))

(assert (=> bs!1793568 m!7501874))

(assert (=> bs!1793568 m!7501948))

(declare-fun m!7502306 () Bool)

(assert (=> bs!1793568 m!7502306))

(assert (=> b!6746795 d!2119594))

(declare-fun b!6747339 () Bool)

(declare-fun e!4075169 () Bool)

(declare-fun lt!2440356 () Regex!16577)

(declare-fun head!13581 (List!66030) Regex!16577)

(assert (=> b!6747339 (= e!4075169 (= lt!2440356 (head!13581 (exprs!6461 (h!72355 zl!343)))))))

(declare-fun b!6747340 () Bool)

(declare-fun isConcat!1466 (Regex!16577) Bool)

(assert (=> b!6747340 (= e!4075169 (isConcat!1466 lt!2440356))))

(declare-fun b!6747341 () Bool)

(declare-fun e!4075168 () Regex!16577)

(assert (=> b!6747341 (= e!4075168 (h!72354 (exprs!6461 (h!72355 zl!343))))))

(declare-fun b!6747342 () Bool)

(declare-fun e!4075167 () Regex!16577)

(assert (=> b!6747342 (= e!4075167 EmptyExpr!16577)))

(declare-fun b!6747343 () Bool)

(assert (=> b!6747343 (= e!4075167 (Concat!25422 (h!72354 (exprs!6461 (h!72355 zl!343))) (generalisedConcat!2174 (t!379731 (exprs!6461 (h!72355 zl!343))))))))

(declare-fun b!6747344 () Bool)

(declare-fun e!4075170 () Bool)

(declare-fun isEmptyExpr!1943 (Regex!16577) Bool)

(assert (=> b!6747344 (= e!4075170 (isEmptyExpr!1943 lt!2440356))))

(declare-fun b!6747345 () Bool)

(declare-fun e!4075171 () Bool)

(assert (=> b!6747345 (= e!4075171 e!4075170)))

(declare-fun c!1251926 () Bool)

(declare-fun isEmpty!38262 (List!66030) Bool)

(assert (=> b!6747345 (= c!1251926 (isEmpty!38262 (exprs!6461 (h!72355 zl!343))))))

(declare-fun b!6747346 () Bool)

(declare-fun e!4075172 () Bool)

(assert (=> b!6747346 (= e!4075172 (isEmpty!38262 (t!379731 (exprs!6461 (h!72355 zl!343)))))))

(declare-fun b!6747347 () Bool)

(assert (=> b!6747347 (= e!4075170 e!4075169)))

(declare-fun c!1251927 () Bool)

(declare-fun tail!12666 (List!66030) List!66030)

(assert (=> b!6747347 (= c!1251927 (isEmpty!38262 (tail!12666 (exprs!6461 (h!72355 zl!343)))))))

(declare-fun d!2119596 () Bool)

(assert (=> d!2119596 e!4075171))

(declare-fun res!2759900 () Bool)

(assert (=> d!2119596 (=> (not res!2759900) (not e!4075171))))

(assert (=> d!2119596 (= res!2759900 (validRegex!8313 lt!2440356))))

(assert (=> d!2119596 (= lt!2440356 e!4075168)))

(declare-fun c!1251924 () Bool)

(assert (=> d!2119596 (= c!1251924 e!4075172)))

(declare-fun res!2759901 () Bool)

(assert (=> d!2119596 (=> (not res!2759901) (not e!4075172))))

(assert (=> d!2119596 (= res!2759901 ((_ is Cons!65906) (exprs!6461 (h!72355 zl!343))))))

(declare-fun lambda!379381 () Int)

(declare-fun forall!15777 (List!66030 Int) Bool)

(assert (=> d!2119596 (forall!15777 (exprs!6461 (h!72355 zl!343)) lambda!379381)))

(assert (=> d!2119596 (= (generalisedConcat!2174 (exprs!6461 (h!72355 zl!343))) lt!2440356)))

(declare-fun b!6747348 () Bool)

(assert (=> b!6747348 (= e!4075168 e!4075167)))

(declare-fun c!1251925 () Bool)

(assert (=> b!6747348 (= c!1251925 ((_ is Cons!65906) (exprs!6461 (h!72355 zl!343))))))

(assert (= (and d!2119596 res!2759901) b!6747346))

(assert (= (and d!2119596 c!1251924) b!6747341))

(assert (= (and d!2119596 (not c!1251924)) b!6747348))

(assert (= (and b!6747348 c!1251925) b!6747343))

(assert (= (and b!6747348 (not c!1251925)) b!6747342))

(assert (= (and d!2119596 res!2759900) b!6747345))

(assert (= (and b!6747345 c!1251926) b!6747344))

(assert (= (and b!6747345 (not c!1251926)) b!6747347))

(assert (= (and b!6747347 c!1251927) b!6747339))

(assert (= (and b!6747347 (not c!1251927)) b!6747340))

(declare-fun m!7502308 () Bool)

(assert (=> b!6747339 m!7502308))

(declare-fun m!7502310 () Bool)

(assert (=> b!6747347 m!7502310))

(assert (=> b!6747347 m!7502310))

(declare-fun m!7502312 () Bool)

(assert (=> b!6747347 m!7502312))

(declare-fun m!7502314 () Bool)

(assert (=> b!6747346 m!7502314))

(declare-fun m!7502316 () Bool)

(assert (=> b!6747344 m!7502316))

(declare-fun m!7502318 () Bool)

(assert (=> b!6747343 m!7502318))

(declare-fun m!7502320 () Bool)

(assert (=> d!2119596 m!7502320))

(declare-fun m!7502322 () Bool)

(assert (=> d!2119596 m!7502322))

(declare-fun m!7502324 () Bool)

(assert (=> b!6747345 m!7502324))

(declare-fun m!7502326 () Bool)

(assert (=> b!6747340 m!7502326))

(assert (=> b!6746785 d!2119596))

(declare-fun d!2119598 () Bool)

(declare-fun lt!2440359 () Regex!16577)

(assert (=> d!2119598 (validRegex!8313 lt!2440359)))

(assert (=> d!2119598 (= lt!2440359 (generalisedUnion!2421 (unfocusZipperList!1998 (Cons!65907 lt!2440273 Nil!65907))))))

(assert (=> d!2119598 (= (unfocusZipper!2319 (Cons!65907 lt!2440273 Nil!65907)) lt!2440359)))

(declare-fun bs!1793569 () Bool)

(assert (= bs!1793569 d!2119598))

(declare-fun m!7502328 () Bool)

(assert (=> bs!1793569 m!7502328))

(declare-fun m!7502330 () Bool)

(assert (=> bs!1793569 m!7502330))

(assert (=> bs!1793569 m!7502330))

(declare-fun m!7502332 () Bool)

(assert (=> bs!1793569 m!7502332))

(assert (=> b!6746778 d!2119598))

(declare-fun d!2119600 () Bool)

(declare-fun c!1251930 () Bool)

(assert (=> d!2119600 (= c!1251930 (isEmpty!38258 s!2326))))

(declare-fun e!4075175 () Bool)

(assert (=> d!2119600 (= (matchZipper!2563 lt!2440264 s!2326) e!4075175)))

(declare-fun b!6747353 () Bool)

(declare-fun nullableZipper!2292 ((InoxSet Context!11922)) Bool)

(assert (=> b!6747353 (= e!4075175 (nullableZipper!2292 lt!2440264))))

(declare-fun b!6747354 () Bool)

(declare-fun head!13582 (List!66032) C!33424)

(declare-fun tail!12667 (List!66032) List!66032)

(assert (=> b!6747354 (= e!4075175 (matchZipper!2563 (derivationStepZipper!2521 lt!2440264 (head!13582 s!2326)) (tail!12667 s!2326)))))

(assert (= (and d!2119600 c!1251930) b!6747353))

(assert (= (and d!2119600 (not c!1251930)) b!6747354))

(assert (=> d!2119600 m!7501862))

(declare-fun m!7502334 () Bool)

(assert (=> b!6747353 m!7502334))

(declare-fun m!7502336 () Bool)

(assert (=> b!6747354 m!7502336))

(assert (=> b!6747354 m!7502336))

(declare-fun m!7502338 () Bool)

(assert (=> b!6747354 m!7502338))

(declare-fun m!7502340 () Bool)

(assert (=> b!6747354 m!7502340))

(assert (=> b!6747354 m!7502338))

(assert (=> b!6747354 m!7502340))

(declare-fun m!7502342 () Bool)

(assert (=> b!6747354 m!7502342))

(assert (=> b!6746789 d!2119600))

(declare-fun d!2119602 () Bool)

(declare-fun c!1251931 () Bool)

(assert (=> d!2119602 (= c!1251931 (isEmpty!38258 (t!379733 s!2326)))))

(declare-fun e!4075176 () Bool)

(assert (=> d!2119602 (= (matchZipper!2563 (derivationStepZipper!2521 lt!2440264 (h!72356 s!2326)) (t!379733 s!2326)) e!4075176)))

(declare-fun b!6747355 () Bool)

(assert (=> b!6747355 (= e!4075176 (nullableZipper!2292 (derivationStepZipper!2521 lt!2440264 (h!72356 s!2326))))))

(declare-fun b!6747356 () Bool)

(assert (=> b!6747356 (= e!4075176 (matchZipper!2563 (derivationStepZipper!2521 (derivationStepZipper!2521 lt!2440264 (h!72356 s!2326)) (head!13582 (t!379733 s!2326))) (tail!12667 (t!379733 s!2326))))))

(assert (= (and d!2119602 c!1251931) b!6747355))

(assert (= (and d!2119602 (not c!1251931)) b!6747356))

(declare-fun m!7502344 () Bool)

(assert (=> d!2119602 m!7502344))

(assert (=> b!6747355 m!7501888))

(declare-fun m!7502346 () Bool)

(assert (=> b!6747355 m!7502346))

(declare-fun m!7502348 () Bool)

(assert (=> b!6747356 m!7502348))

(assert (=> b!6747356 m!7501888))

(assert (=> b!6747356 m!7502348))

(declare-fun m!7502350 () Bool)

(assert (=> b!6747356 m!7502350))

(declare-fun m!7502352 () Bool)

(assert (=> b!6747356 m!7502352))

(assert (=> b!6747356 m!7502350))

(assert (=> b!6747356 m!7502352))

(declare-fun m!7502354 () Bool)

(assert (=> b!6747356 m!7502354))

(assert (=> b!6746789 d!2119602))

(declare-fun bs!1793570 () Bool)

(declare-fun d!2119604 () Bool)

(assert (= bs!1793570 (and d!2119604 b!6746774)))

(declare-fun lambda!379382 () Int)

(assert (=> bs!1793570 (= lambda!379382 lambda!379319)))

(declare-fun bs!1793571 () Bool)

(assert (= bs!1793571 (and d!2119604 d!2119514)))

(assert (=> bs!1793571 (= lambda!379382 lambda!379343)))

(assert (=> d!2119604 true))

(assert (=> d!2119604 (= (derivationStepZipper!2521 lt!2440264 (h!72356 s!2326)) (flatMap!2058 lt!2440264 lambda!379382))))

(declare-fun bs!1793572 () Bool)

(assert (= bs!1793572 d!2119604))

(declare-fun m!7502356 () Bool)

(assert (=> bs!1793572 m!7502356))

(assert (=> b!6746789 d!2119604))

(declare-fun b!6747357 () Bool)

(declare-fun e!4075182 () (InoxSet Context!11922))

(declare-fun call!610147 () (InoxSet Context!11922))

(declare-fun call!610143 () (InoxSet Context!11922))

(assert (=> b!6747357 (= e!4075182 ((_ map or) call!610147 call!610143))))

(declare-fun b!6747358 () Bool)

(declare-fun e!4075179 () (InoxSet Context!11922))

(assert (=> b!6747358 (= e!4075179 (store ((as const (Array Context!11922 Bool)) false) lt!2440273 true))))

(declare-fun b!6747359 () Bool)

(assert (=> b!6747359 (= e!4075179 e!4075182)))

(declare-fun c!1251935 () Bool)

(assert (=> b!6747359 (= c!1251935 ((_ is Union!16577) (reg!16906 r!7292)))))

(declare-fun bm!610138 () Bool)

(declare-fun call!610146 () List!66030)

(declare-fun call!610145 () List!66030)

(assert (=> bm!610138 (= call!610146 call!610145)))

(declare-fun b!6747360 () Bool)

(declare-fun c!1251933 () Bool)

(assert (=> b!6747360 (= c!1251933 ((_ is Star!16577) (reg!16906 r!7292)))))

(declare-fun e!4075181 () (InoxSet Context!11922))

(declare-fun e!4075178 () (InoxSet Context!11922))

(assert (=> b!6747360 (= e!4075181 e!4075178)))

(declare-fun bm!610139 () Bool)

(assert (=> bm!610139 (= call!610147 (derivationStepZipperDown!1805 (ite c!1251935 (regOne!33667 (reg!16906 r!7292)) (regOne!33666 (reg!16906 r!7292))) (ite c!1251935 lt!2440273 (Context!11923 call!610145)) (h!72356 s!2326)))))

(declare-fun b!6747361 () Bool)

(declare-fun e!4075180 () (InoxSet Context!11922))

(assert (=> b!6747361 (= e!4075180 e!4075181)))

(declare-fun c!1251934 () Bool)

(assert (=> b!6747361 (= c!1251934 ((_ is Concat!25422) (reg!16906 r!7292)))))

(declare-fun b!6747362 () Bool)

(declare-fun call!610148 () (InoxSet Context!11922))

(assert (=> b!6747362 (= e!4075178 call!610148)))

(declare-fun b!6747363 () Bool)

(assert (=> b!6747363 (= e!4075178 ((as const (Array Context!11922 Bool)) false))))

(declare-fun b!6747364 () Bool)

(declare-fun c!1251932 () Bool)

(declare-fun e!4075177 () Bool)

(assert (=> b!6747364 (= c!1251932 e!4075177)))

(declare-fun res!2759902 () Bool)

(assert (=> b!6747364 (=> (not res!2759902) (not e!4075177))))

(assert (=> b!6747364 (= res!2759902 ((_ is Concat!25422) (reg!16906 r!7292)))))

(assert (=> b!6747364 (= e!4075182 e!4075180)))

(declare-fun bm!610140 () Bool)

(assert (=> bm!610140 (= call!610145 ($colon$colon!2393 (exprs!6461 lt!2440273) (ite (or c!1251932 c!1251934) (regTwo!33666 (reg!16906 r!7292)) (reg!16906 r!7292))))))

(declare-fun b!6747365 () Bool)

(assert (=> b!6747365 (= e!4075181 call!610148)))

(declare-fun b!6747366 () Bool)

(declare-fun call!610144 () (InoxSet Context!11922))

(assert (=> b!6747366 (= e!4075180 ((_ map or) call!610147 call!610144))))

(declare-fun bm!610141 () Bool)

(assert (=> bm!610141 (= call!610144 call!610143)))

(declare-fun b!6747367 () Bool)

(assert (=> b!6747367 (= e!4075177 (nullable!6564 (regOne!33666 (reg!16906 r!7292))))))

(declare-fun bm!610143 () Bool)

(assert (=> bm!610143 (= call!610143 (derivationStepZipperDown!1805 (ite c!1251935 (regTwo!33667 (reg!16906 r!7292)) (ite c!1251932 (regTwo!33666 (reg!16906 r!7292)) (ite c!1251934 (regOne!33666 (reg!16906 r!7292)) (reg!16906 (reg!16906 r!7292))))) (ite (or c!1251935 c!1251932) lt!2440273 (Context!11923 call!610146)) (h!72356 s!2326)))))

(declare-fun d!2119606 () Bool)

(declare-fun c!1251936 () Bool)

(assert (=> d!2119606 (= c!1251936 (and ((_ is ElementMatch!16577) (reg!16906 r!7292)) (= (c!1251775 (reg!16906 r!7292)) (h!72356 s!2326))))))

(assert (=> d!2119606 (= (derivationStepZipperDown!1805 (reg!16906 r!7292) lt!2440273 (h!72356 s!2326)) e!4075179)))

(declare-fun bm!610142 () Bool)

(assert (=> bm!610142 (= call!610148 call!610144)))

(assert (= (and d!2119606 c!1251936) b!6747358))

(assert (= (and d!2119606 (not c!1251936)) b!6747359))

(assert (= (and b!6747359 c!1251935) b!6747357))

(assert (= (and b!6747359 (not c!1251935)) b!6747364))

(assert (= (and b!6747364 res!2759902) b!6747367))

(assert (= (and b!6747364 c!1251932) b!6747366))

(assert (= (and b!6747364 (not c!1251932)) b!6747361))

(assert (= (and b!6747361 c!1251934) b!6747365))

(assert (= (and b!6747361 (not c!1251934)) b!6747360))

(assert (= (and b!6747360 c!1251933) b!6747362))

(assert (= (and b!6747360 (not c!1251933)) b!6747363))

(assert (= (or b!6747365 b!6747362) bm!610138))

(assert (= (or b!6747365 b!6747362) bm!610142))

(assert (= (or b!6747366 bm!610138) bm!610140))

(assert (= (or b!6747366 bm!610142) bm!610141))

(assert (= (or b!6747357 bm!610141) bm!610143))

(assert (= (or b!6747357 b!6747366) bm!610139))

(declare-fun m!7502358 () Bool)

(assert (=> bm!610139 m!7502358))

(declare-fun m!7502360 () Bool)

(assert (=> b!6747367 m!7502360))

(declare-fun m!7502362 () Bool)

(assert (=> bm!610143 m!7502362))

(assert (=> b!6747358 m!7501936))

(declare-fun m!7502364 () Bool)

(assert (=> bm!610140 m!7502364))

(assert (=> b!6746787 d!2119606))

(declare-fun d!2119608 () Bool)

(assert (=> d!2119608 (= (flatMap!2058 lt!2440264 lambda!379319) (choose!50321 lt!2440264 lambda!379319))))

(declare-fun bs!1793573 () Bool)

(assert (= bs!1793573 d!2119608))

(declare-fun m!7502366 () Bool)

(assert (=> bs!1793573 m!7502366))

(assert (=> b!6746787 d!2119608))

(declare-fun b!6747368 () Bool)

(declare-fun e!4075183 () (InoxSet Context!11922))

(declare-fun e!4075185 () (InoxSet Context!11922))

(assert (=> b!6747368 (= e!4075183 e!4075185)))

(declare-fun c!1251938 () Bool)

(assert (=> b!6747368 (= c!1251938 ((_ is Cons!65906) (exprs!6461 lt!2440268)))))

(declare-fun b!6747369 () Bool)

(declare-fun call!610149 () (InoxSet Context!11922))

(assert (=> b!6747369 (= e!4075185 call!610149)))

(declare-fun b!6747370 () Bool)

(assert (=> b!6747370 (= e!4075185 ((as const (Array Context!11922 Bool)) false))))

(declare-fun d!2119610 () Bool)

(declare-fun c!1251937 () Bool)

(declare-fun e!4075184 () Bool)

(assert (=> d!2119610 (= c!1251937 e!4075184)))

(declare-fun res!2759903 () Bool)

(assert (=> d!2119610 (=> (not res!2759903) (not e!4075184))))

(assert (=> d!2119610 (= res!2759903 ((_ is Cons!65906) (exprs!6461 lt!2440268)))))

(assert (=> d!2119610 (= (derivationStepZipperUp!1731 lt!2440268 (h!72356 s!2326)) e!4075183)))

(declare-fun b!6747371 () Bool)

(assert (=> b!6747371 (= e!4075183 ((_ map or) call!610149 (derivationStepZipperUp!1731 (Context!11923 (t!379731 (exprs!6461 lt!2440268))) (h!72356 s!2326))))))

(declare-fun bm!610144 () Bool)

(assert (=> bm!610144 (= call!610149 (derivationStepZipperDown!1805 (h!72354 (exprs!6461 lt!2440268)) (Context!11923 (t!379731 (exprs!6461 lt!2440268))) (h!72356 s!2326)))))

(declare-fun b!6747372 () Bool)

(assert (=> b!6747372 (= e!4075184 (nullable!6564 (h!72354 (exprs!6461 lt!2440268))))))

(assert (= (and d!2119610 res!2759903) b!6747372))

(assert (= (and d!2119610 c!1251937) b!6747371))

(assert (= (and d!2119610 (not c!1251937)) b!6747368))

(assert (= (and b!6747368 c!1251938) b!6747369))

(assert (= (and b!6747368 (not c!1251938)) b!6747370))

(assert (= (or b!6747371 b!6747369) bm!610144))

(declare-fun m!7502368 () Bool)

(assert (=> b!6747371 m!7502368))

(declare-fun m!7502370 () Bool)

(assert (=> bm!610144 m!7502370))

(declare-fun m!7502372 () Bool)

(assert (=> b!6747372 m!7502372))

(assert (=> b!6746787 d!2119610))

(declare-fun d!2119612 () Bool)

(assert (=> d!2119612 (= (flatMap!2058 lt!2440264 lambda!379319) (dynLambda!26298 lambda!379319 lt!2440268))))

(declare-fun lt!2440360 () Unit!159845)

(assert (=> d!2119612 (= lt!2440360 (choose!50322 lt!2440264 lt!2440268 lambda!379319))))

(assert (=> d!2119612 (= lt!2440264 (store ((as const (Array Context!11922 Bool)) false) lt!2440268 true))))

(assert (=> d!2119612 (= (lemmaFlatMapOnSingletonSet!1584 lt!2440264 lt!2440268 lambda!379319) lt!2440360)))

(declare-fun b_lambda!254125 () Bool)

(assert (=> (not b_lambda!254125) (not d!2119612)))

(declare-fun bs!1793574 () Bool)

(assert (= bs!1793574 d!2119612))

(assert (=> bs!1793574 m!7501908))

(declare-fun m!7502374 () Bool)

(assert (=> bs!1793574 m!7502374))

(declare-fun m!7502376 () Bool)

(assert (=> bs!1793574 m!7502376))

(assert (=> bs!1793574 m!7501904))

(assert (=> b!6746787 d!2119612))

(declare-fun bs!1793575 () Bool)

(declare-fun d!2119614 () Bool)

(assert (= bs!1793575 (and d!2119614 d!2119596)))

(declare-fun lambda!379385 () Int)

(assert (=> bs!1793575 (= lambda!379385 lambda!379381)))

(declare-fun b!6747393 () Bool)

(declare-fun e!4075198 () Bool)

(declare-fun lt!2440363 () Regex!16577)

(declare-fun isEmptyLang!1951 (Regex!16577) Bool)

(assert (=> b!6747393 (= e!4075198 (isEmptyLang!1951 lt!2440363))))

(declare-fun b!6747394 () Bool)

(declare-fun e!4075199 () Bool)

(declare-fun isUnion!1381 (Regex!16577) Bool)

(assert (=> b!6747394 (= e!4075199 (isUnion!1381 lt!2440363))))

(declare-fun b!6747395 () Bool)

(assert (=> b!6747395 (= e!4075199 (= lt!2440363 (head!13581 (unfocusZipperList!1998 zl!343))))))

(declare-fun b!6747396 () Bool)

(declare-fun e!4075200 () Regex!16577)

(assert (=> b!6747396 (= e!4075200 EmptyLang!16577)))

(declare-fun b!6747397 () Bool)

(assert (=> b!6747397 (= e!4075200 (Union!16577 (h!72354 (unfocusZipperList!1998 zl!343)) (generalisedUnion!2421 (t!379731 (unfocusZipperList!1998 zl!343)))))))

(declare-fun b!6747398 () Bool)

(declare-fun e!4075203 () Bool)

(assert (=> b!6747398 (= e!4075203 e!4075198)))

(declare-fun c!1251949 () Bool)

(assert (=> b!6747398 (= c!1251949 (isEmpty!38262 (unfocusZipperList!1998 zl!343)))))

(declare-fun b!6747399 () Bool)

(declare-fun e!4075202 () Regex!16577)

(assert (=> b!6747399 (= e!4075202 (h!72354 (unfocusZipperList!1998 zl!343)))))

(declare-fun b!6747400 () Bool)

(assert (=> b!6747400 (= e!4075198 e!4075199)))

(declare-fun c!1251948 () Bool)

(assert (=> b!6747400 (= c!1251948 (isEmpty!38262 (tail!12666 (unfocusZipperList!1998 zl!343))))))

(assert (=> d!2119614 e!4075203))

(declare-fun res!2759909 () Bool)

(assert (=> d!2119614 (=> (not res!2759909) (not e!4075203))))

(assert (=> d!2119614 (= res!2759909 (validRegex!8313 lt!2440363))))

(assert (=> d!2119614 (= lt!2440363 e!4075202)))

(declare-fun c!1251950 () Bool)

(declare-fun e!4075201 () Bool)

(assert (=> d!2119614 (= c!1251950 e!4075201)))

(declare-fun res!2759908 () Bool)

(assert (=> d!2119614 (=> (not res!2759908) (not e!4075201))))

(assert (=> d!2119614 (= res!2759908 ((_ is Cons!65906) (unfocusZipperList!1998 zl!343)))))

(assert (=> d!2119614 (forall!15777 (unfocusZipperList!1998 zl!343) lambda!379385)))

(assert (=> d!2119614 (= (generalisedUnion!2421 (unfocusZipperList!1998 zl!343)) lt!2440363)))

(declare-fun b!6747401 () Bool)

(assert (=> b!6747401 (= e!4075202 e!4075200)))

(declare-fun c!1251947 () Bool)

(assert (=> b!6747401 (= c!1251947 ((_ is Cons!65906) (unfocusZipperList!1998 zl!343)))))

(declare-fun b!6747402 () Bool)

(assert (=> b!6747402 (= e!4075201 (isEmpty!38262 (t!379731 (unfocusZipperList!1998 zl!343))))))

(assert (= (and d!2119614 res!2759908) b!6747402))

(assert (= (and d!2119614 c!1251950) b!6747399))

(assert (= (and d!2119614 (not c!1251950)) b!6747401))

(assert (= (and b!6747401 c!1251947) b!6747397))

(assert (= (and b!6747401 (not c!1251947)) b!6747396))

(assert (= (and d!2119614 res!2759909) b!6747398))

(assert (= (and b!6747398 c!1251949) b!6747393))

(assert (= (and b!6747398 (not c!1251949)) b!6747400))

(assert (= (and b!6747400 c!1251948) b!6747395))

(assert (= (and b!6747400 (not c!1251948)) b!6747394))

(assert (=> b!6747395 m!7501958))

(declare-fun m!7502378 () Bool)

(assert (=> b!6747395 m!7502378))

(assert (=> b!6747398 m!7501958))

(declare-fun m!7502380 () Bool)

(assert (=> b!6747398 m!7502380))

(declare-fun m!7502382 () Bool)

(assert (=> b!6747402 m!7502382))

(assert (=> b!6747400 m!7501958))

(declare-fun m!7502384 () Bool)

(assert (=> b!6747400 m!7502384))

(assert (=> b!6747400 m!7502384))

(declare-fun m!7502386 () Bool)

(assert (=> b!6747400 m!7502386))

(declare-fun m!7502388 () Bool)

(assert (=> b!6747397 m!7502388))

(declare-fun m!7502390 () Bool)

(assert (=> b!6747394 m!7502390))

(declare-fun m!7502392 () Bool)

(assert (=> b!6747393 m!7502392))

(declare-fun m!7502394 () Bool)

(assert (=> d!2119614 m!7502394))

(assert (=> d!2119614 m!7501958))

(declare-fun m!7502396 () Bool)

(assert (=> d!2119614 m!7502396))

(assert (=> b!6746788 d!2119614))

(declare-fun bs!1793576 () Bool)

(declare-fun d!2119616 () Bool)

(assert (= bs!1793576 (and d!2119616 d!2119596)))

(declare-fun lambda!379388 () Int)

(assert (=> bs!1793576 (= lambda!379388 lambda!379381)))

(declare-fun bs!1793577 () Bool)

(assert (= bs!1793577 (and d!2119616 d!2119614)))

(assert (=> bs!1793577 (= lambda!379388 lambda!379385)))

(declare-fun lt!2440366 () List!66030)

(assert (=> d!2119616 (forall!15777 lt!2440366 lambda!379388)))

(declare-fun e!4075206 () List!66030)

(assert (=> d!2119616 (= lt!2440366 e!4075206)))

(declare-fun c!1251953 () Bool)

(assert (=> d!2119616 (= c!1251953 ((_ is Cons!65907) zl!343))))

(assert (=> d!2119616 (= (unfocusZipperList!1998 zl!343) lt!2440366)))

(declare-fun b!6747407 () Bool)

(assert (=> b!6747407 (= e!4075206 (Cons!65906 (generalisedConcat!2174 (exprs!6461 (h!72355 zl!343))) (unfocusZipperList!1998 (t!379732 zl!343))))))

(declare-fun b!6747408 () Bool)

(assert (=> b!6747408 (= e!4075206 Nil!65906)))

(assert (= (and d!2119616 c!1251953) b!6747407))

(assert (= (and d!2119616 (not c!1251953)) b!6747408))

(declare-fun m!7502398 () Bool)

(assert (=> d!2119616 m!7502398))

(assert (=> b!6747407 m!7501894))

(declare-fun m!7502400 () Bool)

(assert (=> b!6747407 m!7502400))

(assert (=> b!6746788 d!2119616))

(declare-fun bs!1793578 () Bool)

(declare-fun d!2119618 () Bool)

(assert (= bs!1793578 (and d!2119618 d!2119596)))

(declare-fun lambda!379391 () Int)

(assert (=> bs!1793578 (= lambda!379391 lambda!379381)))

(declare-fun bs!1793579 () Bool)

(assert (= bs!1793579 (and d!2119618 d!2119614)))

(assert (=> bs!1793579 (= lambda!379391 lambda!379385)))

(declare-fun bs!1793580 () Bool)

(assert (= bs!1793580 (and d!2119618 d!2119616)))

(assert (=> bs!1793580 (= lambda!379391 lambda!379388)))

(assert (=> d!2119618 (= (inv!84689 (h!72355 zl!343)) (forall!15777 (exprs!6461 (h!72355 zl!343)) lambda!379391))))

(declare-fun bs!1793581 () Bool)

(assert (= bs!1793581 d!2119618))

(declare-fun m!7502402 () Bool)

(assert (=> bs!1793581 m!7502402))

(assert (=> b!6746777 d!2119618))

(declare-fun d!2119620 () Bool)

(assert (=> d!2119620 (= (isEmpty!38257 (t!379732 zl!343)) ((_ is Nil!65907) (t!379732 zl!343)))))

(assert (=> b!6746772 d!2119620))

(declare-fun bs!1793582 () Bool)

(declare-fun b!6747451 () Bool)

(assert (= bs!1793582 (and b!6747451 b!6746795)))

(declare-fun lambda!379396 () Int)

(assert (=> bs!1793582 (not (= lambda!379396 lambda!379316))))

(declare-fun bs!1793583 () Bool)

(assert (= bs!1793583 (and b!6747451 d!2119532)))

(assert (=> bs!1793583 (not (= lambda!379396 lambda!379360))))

(declare-fun bs!1793584 () Bool)

(assert (= bs!1793584 (and b!6747451 d!2119554)))

(assert (=> bs!1793584 (= (= r!7292 (Star!16577 (reg!16906 r!7292))) (= lambda!379396 lambda!379372))))

(assert (=> bs!1793584 (not (= lambda!379396 lambda!379371))))

(declare-fun bs!1793585 () Bool)

(assert (= bs!1793585 (and b!6747451 d!2119594)))

(assert (=> bs!1793585 (not (= lambda!379396 lambda!379378))))

(assert (=> bs!1793582 (not (= lambda!379396 lambda!379318))))

(assert (=> bs!1793582 (= lambda!379396 lambda!379317)))

(assert (=> bs!1793583 (not (= lambda!379396 lambda!379358))))

(assert (=> b!6747451 true))

(assert (=> b!6747451 true))

(declare-fun bs!1793586 () Bool)

(declare-fun b!6747447 () Bool)

(assert (= bs!1793586 (and b!6747447 b!6746795)))

(declare-fun lambda!379397 () Int)

(assert (=> bs!1793586 (not (= lambda!379397 lambda!379316))))

(declare-fun bs!1793587 () Bool)

(assert (= bs!1793587 (and b!6747447 d!2119532)))

(assert (=> bs!1793587 (= (and (= (regOne!33666 r!7292) (reg!16906 r!7292)) (= (regTwo!33666 r!7292) r!7292)) (= lambda!379397 lambda!379360))))

(declare-fun bs!1793588 () Bool)

(assert (= bs!1793588 (and b!6747447 d!2119554)))

(assert (=> bs!1793588 (not (= lambda!379397 lambda!379372))))

(declare-fun bs!1793589 () Bool)

(assert (= bs!1793589 (and b!6747447 b!6747451)))

(assert (=> bs!1793589 (not (= lambda!379397 lambda!379396))))

(assert (=> bs!1793588 (not (= lambda!379397 lambda!379371))))

(declare-fun bs!1793590 () Bool)

(assert (= bs!1793590 (and b!6747447 d!2119594)))

(assert (=> bs!1793590 (not (= lambda!379397 lambda!379378))))

(assert (=> bs!1793586 (= (and (= (regOne!33666 r!7292) (reg!16906 r!7292)) (= (regTwo!33666 r!7292) r!7292)) (= lambda!379397 lambda!379318))))

(assert (=> bs!1793586 (not (= lambda!379397 lambda!379317))))

(assert (=> bs!1793587 (not (= lambda!379397 lambda!379358))))

(assert (=> b!6747447 true))

(assert (=> b!6747447 true))

(declare-fun b!6747441 () Bool)

(declare-fun c!1251965 () Bool)

(assert (=> b!6747441 (= c!1251965 ((_ is ElementMatch!16577) r!7292))))

(declare-fun e!4075229 () Bool)

(declare-fun e!4075231 () Bool)

(assert (=> b!6747441 (= e!4075229 e!4075231)))

(declare-fun b!6747442 () Bool)

(declare-fun e!4075230 () Bool)

(assert (=> b!6747442 (= e!4075230 e!4075229)))

(declare-fun res!2759928 () Bool)

(assert (=> b!6747442 (= res!2759928 (not ((_ is EmptyLang!16577) r!7292)))))

(assert (=> b!6747442 (=> (not res!2759928) (not e!4075229))))

(declare-fun b!6747443 () Bool)

(declare-fun e!4075225 () Bool)

(declare-fun e!4075227 () Bool)

(assert (=> b!6747443 (= e!4075225 e!4075227)))

(declare-fun c!1251962 () Bool)

(assert (=> b!6747443 (= c!1251962 ((_ is Star!16577) r!7292))))

(declare-fun b!6747444 () Bool)

(declare-fun e!4075226 () Bool)

(assert (=> b!6747444 (= e!4075226 (matchRSpec!3678 (regTwo!33667 r!7292) s!2326))))

(declare-fun b!6747445 () Bool)

(declare-fun call!610154 () Bool)

(assert (=> b!6747445 (= e!4075230 call!610154)))

(declare-fun b!6747446 () Bool)

(declare-fun c!1251963 () Bool)

(assert (=> b!6747446 (= c!1251963 ((_ is Union!16577) r!7292))))

(assert (=> b!6747446 (= e!4075231 e!4075225)))

(declare-fun d!2119622 () Bool)

(declare-fun c!1251964 () Bool)

(assert (=> d!2119622 (= c!1251964 ((_ is EmptyExpr!16577) r!7292))))

(assert (=> d!2119622 (= (matchRSpec!3678 r!7292 s!2326) e!4075230)))

(declare-fun call!610155 () Bool)

(assert (=> b!6747447 (= e!4075227 call!610155)))

(declare-fun b!6747448 () Bool)

(declare-fun res!2759927 () Bool)

(declare-fun e!4075228 () Bool)

(assert (=> b!6747448 (=> res!2759927 e!4075228)))

(assert (=> b!6747448 (= res!2759927 call!610154)))

(assert (=> b!6747448 (= e!4075227 e!4075228)))

(declare-fun bm!610149 () Bool)

(assert (=> bm!610149 (= call!610154 (isEmpty!38258 s!2326))))

(declare-fun b!6747449 () Bool)

(assert (=> b!6747449 (= e!4075225 e!4075226)))

(declare-fun res!2759926 () Bool)

(assert (=> b!6747449 (= res!2759926 (matchRSpec!3678 (regOne!33667 r!7292) s!2326))))

(assert (=> b!6747449 (=> res!2759926 e!4075226)))

(declare-fun bm!610150 () Bool)

(assert (=> bm!610150 (= call!610155 (Exists!3645 (ite c!1251962 lambda!379396 lambda!379397)))))

(declare-fun b!6747450 () Bool)

(assert (=> b!6747450 (= e!4075231 (= s!2326 (Cons!65908 (c!1251775 r!7292) Nil!65908)))))

(assert (=> b!6747451 (= e!4075228 call!610155)))

(assert (= (and d!2119622 c!1251964) b!6747445))

(assert (= (and d!2119622 (not c!1251964)) b!6747442))

(assert (= (and b!6747442 res!2759928) b!6747441))

(assert (= (and b!6747441 c!1251965) b!6747450))

(assert (= (and b!6747441 (not c!1251965)) b!6747446))

(assert (= (and b!6747446 c!1251963) b!6747449))

(assert (= (and b!6747446 (not c!1251963)) b!6747443))

(assert (= (and b!6747449 (not res!2759926)) b!6747444))

(assert (= (and b!6747443 c!1251962) b!6747448))

(assert (= (and b!6747443 (not c!1251962)) b!6747447))

(assert (= (and b!6747448 (not res!2759927)) b!6747451))

(assert (= (or b!6747451 b!6747447) bm!610150))

(assert (= (or b!6747445 b!6747448) bm!610149))

(declare-fun m!7502404 () Bool)

(assert (=> b!6747444 m!7502404))

(assert (=> bm!610149 m!7501862))

(declare-fun m!7502406 () Bool)

(assert (=> b!6747449 m!7502406))

(declare-fun m!7502408 () Bool)

(assert (=> bm!610150 m!7502408))

(assert (=> b!6746791 d!2119622))

(declare-fun b!6747480 () Bool)

(declare-fun e!4075246 () Bool)

(declare-fun derivativeStep!5249 (Regex!16577 C!33424) Regex!16577)

(assert (=> b!6747480 (= e!4075246 (matchR!8760 (derivativeStep!5249 r!7292 (head!13582 s!2326)) (tail!12667 s!2326)))))

(declare-fun bm!610153 () Bool)

(declare-fun call!610158 () Bool)

(assert (=> bm!610153 (= call!610158 (isEmpty!38258 s!2326))))

(declare-fun b!6747481 () Bool)

(assert (=> b!6747481 (= e!4075246 (nullable!6564 r!7292))))

(declare-fun b!6747482 () Bool)

(declare-fun e!4075251 () Bool)

(declare-fun lt!2440369 () Bool)

(assert (=> b!6747482 (= e!4075251 (not lt!2440369))))

(declare-fun b!6747484 () Bool)

(declare-fun e!4075248 () Bool)

(assert (=> b!6747484 (= e!4075248 e!4075251)))

(declare-fun c!1251972 () Bool)

(assert (=> b!6747484 (= c!1251972 ((_ is EmptyLang!16577) r!7292))))

(declare-fun b!6747485 () Bool)

(declare-fun res!2759945 () Bool)

(declare-fun e!4075250 () Bool)

(assert (=> b!6747485 (=> res!2759945 e!4075250)))

(declare-fun e!4075249 () Bool)

(assert (=> b!6747485 (= res!2759945 e!4075249)))

(declare-fun res!2759949 () Bool)

(assert (=> b!6747485 (=> (not res!2759949) (not e!4075249))))

(assert (=> b!6747485 (= res!2759949 lt!2440369)))

(declare-fun b!6747486 () Bool)

(assert (=> b!6747486 (= e!4075249 (= (head!13582 s!2326) (c!1251775 r!7292)))))

(declare-fun b!6747487 () Bool)

(declare-fun e!4075247 () Bool)

(assert (=> b!6747487 (= e!4075247 (not (= (head!13582 s!2326) (c!1251775 r!7292))))))

(declare-fun b!6747488 () Bool)

(declare-fun res!2759952 () Bool)

(assert (=> b!6747488 (=> res!2759952 e!4075250)))

(assert (=> b!6747488 (= res!2759952 (not ((_ is ElementMatch!16577) r!7292)))))

(assert (=> b!6747488 (= e!4075251 e!4075250)))

(declare-fun b!6747489 () Bool)

(declare-fun res!2759948 () Bool)

(assert (=> b!6747489 (=> (not res!2759948) (not e!4075249))))

(assert (=> b!6747489 (= res!2759948 (isEmpty!38258 (tail!12667 s!2326)))))

(declare-fun b!6747490 () Bool)

(declare-fun res!2759946 () Bool)

(assert (=> b!6747490 (=> (not res!2759946) (not e!4075249))))

(assert (=> b!6747490 (= res!2759946 (not call!610158))))

(declare-fun b!6747491 () Bool)

(declare-fun res!2759950 () Bool)

(assert (=> b!6747491 (=> res!2759950 e!4075247)))

(assert (=> b!6747491 (= res!2759950 (not (isEmpty!38258 (tail!12667 s!2326))))))

(declare-fun b!6747483 () Bool)

(declare-fun e!4075252 () Bool)

(assert (=> b!6747483 (= e!4075250 e!4075252)))

(declare-fun res!2759947 () Bool)

(assert (=> b!6747483 (=> (not res!2759947) (not e!4075252))))

(assert (=> b!6747483 (= res!2759947 (not lt!2440369))))

(declare-fun d!2119624 () Bool)

(assert (=> d!2119624 e!4075248))

(declare-fun c!1251973 () Bool)

(assert (=> d!2119624 (= c!1251973 ((_ is EmptyExpr!16577) r!7292))))

(assert (=> d!2119624 (= lt!2440369 e!4075246)))

(declare-fun c!1251974 () Bool)

(assert (=> d!2119624 (= c!1251974 (isEmpty!38258 s!2326))))

(assert (=> d!2119624 (validRegex!8313 r!7292)))

(assert (=> d!2119624 (= (matchR!8760 r!7292 s!2326) lt!2440369)))

(declare-fun b!6747492 () Bool)

(assert (=> b!6747492 (= e!4075248 (= lt!2440369 call!610158))))

(declare-fun b!6747493 () Bool)

(assert (=> b!6747493 (= e!4075252 e!4075247)))

(declare-fun res!2759951 () Bool)

(assert (=> b!6747493 (=> res!2759951 e!4075247)))

(assert (=> b!6747493 (= res!2759951 call!610158)))

(assert (= (and d!2119624 c!1251974) b!6747481))

(assert (= (and d!2119624 (not c!1251974)) b!6747480))

(assert (= (and d!2119624 c!1251973) b!6747492))

(assert (= (and d!2119624 (not c!1251973)) b!6747484))

(assert (= (and b!6747484 c!1251972) b!6747482))

(assert (= (and b!6747484 (not c!1251972)) b!6747488))

(assert (= (and b!6747488 (not res!2759952)) b!6747485))

(assert (= (and b!6747485 res!2759949) b!6747490))

(assert (= (and b!6747490 res!2759946) b!6747489))

(assert (= (and b!6747489 res!2759948) b!6747486))

(assert (= (and b!6747485 (not res!2759945)) b!6747483))

(assert (= (and b!6747483 res!2759947) b!6747493))

(assert (= (and b!6747493 (not res!2759951)) b!6747491))

(assert (= (and b!6747491 (not res!2759950)) b!6747487))

(assert (= (or b!6747492 b!6747493 b!6747490) bm!610153))

(assert (=> bm!610153 m!7501862))

(assert (=> b!6747491 m!7502340))

(assert (=> b!6747491 m!7502340))

(declare-fun m!7502410 () Bool)

(assert (=> b!6747491 m!7502410))

(assert (=> d!2119624 m!7501862))

(assert (=> d!2119624 m!7501946))

(declare-fun m!7502412 () Bool)

(assert (=> b!6747481 m!7502412))

(assert (=> b!6747486 m!7502336))

(assert (=> b!6747489 m!7502340))

(assert (=> b!6747489 m!7502340))

(assert (=> b!6747489 m!7502410))

(assert (=> b!6747480 m!7502336))

(assert (=> b!6747480 m!7502336))

(declare-fun m!7502414 () Bool)

(assert (=> b!6747480 m!7502414))

(assert (=> b!6747480 m!7502340))

(assert (=> b!6747480 m!7502414))

(assert (=> b!6747480 m!7502340))

(declare-fun m!7502416 () Bool)

(assert (=> b!6747480 m!7502416))

(assert (=> b!6747487 m!7502336))

(assert (=> b!6746791 d!2119624))

(declare-fun d!2119626 () Bool)

(assert (=> d!2119626 (= (matchR!8760 r!7292 s!2326) (matchRSpec!3678 r!7292 s!2326))))

(declare-fun lt!2440372 () Unit!159845)

(declare-fun choose!50332 (Regex!16577 List!66032) Unit!159845)

(assert (=> d!2119626 (= lt!2440372 (choose!50332 r!7292 s!2326))))

(assert (=> d!2119626 (validRegex!8313 r!7292)))

(assert (=> d!2119626 (= (mainMatchTheorem!3678 r!7292 s!2326) lt!2440372)))

(declare-fun bs!1793591 () Bool)

(assert (= bs!1793591 d!2119626))

(assert (=> bs!1793591 m!7501954))

(assert (=> bs!1793591 m!7501952))

(declare-fun m!7502418 () Bool)

(assert (=> bs!1793591 m!7502418))

(assert (=> bs!1793591 m!7501946))

(assert (=> b!6746791 d!2119626))

(declare-fun d!2119628 () Bool)

(declare-fun lt!2440373 () Regex!16577)

(assert (=> d!2119628 (validRegex!8313 lt!2440373)))

(assert (=> d!2119628 (= lt!2440373 (generalisedUnion!2421 (unfocusZipperList!1998 zl!343)))))

(assert (=> d!2119628 (= (unfocusZipper!2319 zl!343) lt!2440373)))

(declare-fun bs!1793592 () Bool)

(assert (= bs!1793592 d!2119628))

(declare-fun m!7502420 () Bool)

(assert (=> bs!1793592 m!7502420))

(assert (=> bs!1793592 m!7501958))

(assert (=> bs!1793592 m!7501958))

(assert (=> bs!1793592 m!7501960))

(assert (=> b!6746792 d!2119628))

(declare-fun bm!610160 () Bool)

(declare-fun call!610167 () Bool)

(declare-fun c!1251980 () Bool)

(assert (=> bm!610160 (= call!610167 (validRegex!8313 (ite c!1251980 (regOne!33667 r!7292) (regOne!33666 r!7292))))))

(declare-fun b!6747512 () Bool)

(declare-fun e!4075268 () Bool)

(declare-fun call!610166 () Bool)

(assert (=> b!6747512 (= e!4075268 call!610166)))

(declare-fun b!6747513 () Bool)

(declare-fun res!2759967 () Bool)

(declare-fun e!4075273 () Bool)

(assert (=> b!6747513 (=> res!2759967 e!4075273)))

(assert (=> b!6747513 (= res!2759967 (not ((_ is Concat!25422) r!7292)))))

(declare-fun e!4075271 () Bool)

(assert (=> b!6747513 (= e!4075271 e!4075273)))

(declare-fun d!2119630 () Bool)

(declare-fun res!2759966 () Bool)

(declare-fun e!4075272 () Bool)

(assert (=> d!2119630 (=> res!2759966 e!4075272)))

(assert (=> d!2119630 (= res!2759966 ((_ is ElementMatch!16577) r!7292))))

(assert (=> d!2119630 (= (validRegex!8313 r!7292) e!4075272)))

(declare-fun bm!610161 () Bool)

(declare-fun call!610165 () Bool)

(assert (=> bm!610161 (= call!610166 call!610165)))

(declare-fun b!6747514 () Bool)

(declare-fun e!4075267 () Bool)

(assert (=> b!6747514 (= e!4075267 e!4075271)))

(assert (=> b!6747514 (= c!1251980 ((_ is Union!16577) r!7292))))

(declare-fun b!6747515 () Bool)

(declare-fun e!4075269 () Bool)

(assert (=> b!6747515 (= e!4075267 e!4075269)))

(declare-fun res!2759963 () Bool)

(assert (=> b!6747515 (= res!2759963 (not (nullable!6564 (reg!16906 r!7292))))))

(assert (=> b!6747515 (=> (not res!2759963) (not e!4075269))))

(declare-fun b!6747516 () Bool)

(assert (=> b!6747516 (= e!4075272 e!4075267)))

(declare-fun c!1251979 () Bool)

(assert (=> b!6747516 (= c!1251979 ((_ is Star!16577) r!7292))))

(declare-fun b!6747517 () Bool)

(declare-fun e!4075270 () Bool)

(assert (=> b!6747517 (= e!4075273 e!4075270)))

(declare-fun res!2759964 () Bool)

(assert (=> b!6747517 (=> (not res!2759964) (not e!4075270))))

(assert (=> b!6747517 (= res!2759964 call!610167)))

(declare-fun b!6747518 () Bool)

(assert (=> b!6747518 (= e!4075269 call!610165)))

(declare-fun b!6747519 () Bool)

(declare-fun res!2759965 () Bool)

(assert (=> b!6747519 (=> (not res!2759965) (not e!4075268))))

(assert (=> b!6747519 (= res!2759965 call!610167)))

(assert (=> b!6747519 (= e!4075271 e!4075268)))

(declare-fun b!6747520 () Bool)

(assert (=> b!6747520 (= e!4075270 call!610166)))

(declare-fun bm!610162 () Bool)

(assert (=> bm!610162 (= call!610165 (validRegex!8313 (ite c!1251979 (reg!16906 r!7292) (ite c!1251980 (regTwo!33667 r!7292) (regTwo!33666 r!7292)))))))

(assert (= (and d!2119630 (not res!2759966)) b!6747516))

(assert (= (and b!6747516 c!1251979) b!6747515))

(assert (= (and b!6747516 (not c!1251979)) b!6747514))

(assert (= (and b!6747515 res!2759963) b!6747518))

(assert (= (and b!6747514 c!1251980) b!6747519))

(assert (= (and b!6747514 (not c!1251980)) b!6747513))

(assert (= (and b!6747519 res!2759965) b!6747512))

(assert (= (and b!6747513 (not res!2759967)) b!6747517))

(assert (= (and b!6747517 res!2759964) b!6747520))

(assert (= (or b!6747512 b!6747520) bm!610161))

(assert (= (or b!6747519 b!6747517) bm!610160))

(assert (= (or b!6747518 bm!610161) bm!610162))

(declare-fun m!7502422 () Bool)

(assert (=> bm!610160 m!7502422))

(declare-fun m!7502424 () Bool)

(assert (=> b!6747515 m!7502424))

(declare-fun m!7502426 () Bool)

(assert (=> bm!610162 m!7502426))

(assert (=> start!654396 d!2119630))

(declare-fun d!2119632 () Bool)

(declare-fun e!4075276 () Bool)

(assert (=> d!2119632 e!4075276))

(declare-fun res!2759970 () Bool)

(assert (=> d!2119632 (=> (not res!2759970) (not e!4075276))))

(declare-fun lt!2440376 () List!66031)

(declare-fun noDuplicate!2370 (List!66031) Bool)

(assert (=> d!2119632 (= res!2759970 (noDuplicate!2370 lt!2440376))))

(declare-fun choose!50333 ((InoxSet Context!11922)) List!66031)

(assert (=> d!2119632 (= lt!2440376 (choose!50333 z!1189))))

(assert (=> d!2119632 (= (toList!10361 z!1189) lt!2440376)))

(declare-fun b!6747523 () Bool)

(declare-fun content!12817 (List!66031) (InoxSet Context!11922))

(assert (=> b!6747523 (= e!4075276 (= (content!12817 lt!2440376) z!1189))))

(assert (= (and d!2119632 res!2759970) b!6747523))

(declare-fun m!7502428 () Bool)

(assert (=> d!2119632 m!7502428))

(declare-fun m!7502430 () Bool)

(assert (=> d!2119632 m!7502430))

(declare-fun m!7502432 () Bool)

(assert (=> b!6747523 m!7502432))

(assert (=> b!6746779 d!2119632))

(assert (=> b!6746771 d!2119566))

(assert (=> b!6746771 d!2119568))

(declare-fun d!2119634 () Bool)

(declare-fun lt!2440377 () Regex!16577)

(assert (=> d!2119634 (validRegex!8313 lt!2440377)))

(assert (=> d!2119634 (= lt!2440377 (generalisedUnion!2421 (unfocusZipperList!1998 (Cons!65907 lt!2440268 Nil!65907))))))

(assert (=> d!2119634 (= (unfocusZipper!2319 (Cons!65907 lt!2440268 Nil!65907)) lt!2440377)))

(declare-fun bs!1793593 () Bool)

(assert (= bs!1793593 d!2119634))

(declare-fun m!7502434 () Bool)

(assert (=> bs!1793593 m!7502434))

(declare-fun m!7502436 () Bool)

(assert (=> bs!1793593 m!7502436))

(assert (=> bs!1793593 m!7502436))

(declare-fun m!7502438 () Bool)

(assert (=> bs!1793593 m!7502438))

(assert (=> b!6746794 d!2119634))

(declare-fun d!2119636 () Bool)

(declare-fun lt!2440378 () Regex!16577)

(assert (=> d!2119636 (validRegex!8313 lt!2440378)))

(assert (=> d!2119636 (= lt!2440378 (generalisedUnion!2421 (unfocusZipperList!1998 (Cons!65907 lt!2440256 Nil!65907))))))

(assert (=> d!2119636 (= (unfocusZipper!2319 (Cons!65907 lt!2440256 Nil!65907)) lt!2440378)))

(declare-fun bs!1793594 () Bool)

(assert (= bs!1793594 d!2119636))

(declare-fun m!7502440 () Bool)

(assert (=> bs!1793594 m!7502440))

(declare-fun m!7502442 () Bool)

(assert (=> bs!1793594 m!7502442))

(assert (=> bs!1793594 m!7502442))

(declare-fun m!7502444 () Bool)

(assert (=> bs!1793594 m!7502444))

(assert (=> b!6746783 d!2119636))

(declare-fun bs!1793595 () Bool)

(declare-fun b!6747534 () Bool)

(assert (= bs!1793595 (and b!6747534 b!6746795)))

(declare-fun lambda!379398 () Int)

(assert (=> bs!1793595 (not (= lambda!379398 lambda!379316))))

(declare-fun bs!1793596 () Bool)

(assert (= bs!1793596 (and b!6747534 d!2119554)))

(assert (=> bs!1793596 (= (and (= (reg!16906 lt!2440265) (reg!16906 r!7292)) (= lt!2440265 (Star!16577 (reg!16906 r!7292)))) (= lambda!379398 lambda!379372))))

(declare-fun bs!1793597 () Bool)

(assert (= bs!1793597 (and b!6747534 b!6747451)))

(assert (=> bs!1793597 (= (and (= (reg!16906 lt!2440265) (reg!16906 r!7292)) (= lt!2440265 r!7292)) (= lambda!379398 lambda!379396))))

(assert (=> bs!1793596 (not (= lambda!379398 lambda!379371))))

(declare-fun bs!1793598 () Bool)

(assert (= bs!1793598 (and b!6747534 d!2119594)))

(assert (=> bs!1793598 (not (= lambda!379398 lambda!379378))))

(assert (=> bs!1793595 (not (= lambda!379398 lambda!379318))))

(assert (=> bs!1793595 (= (and (= (reg!16906 lt!2440265) (reg!16906 r!7292)) (= lt!2440265 r!7292)) (= lambda!379398 lambda!379317))))

(declare-fun bs!1793599 () Bool)

(assert (= bs!1793599 (and b!6747534 d!2119532)))

(assert (=> bs!1793599 (not (= lambda!379398 lambda!379358))))

(declare-fun bs!1793600 () Bool)

(assert (= bs!1793600 (and b!6747534 b!6747447)))

(assert (=> bs!1793600 (not (= lambda!379398 lambda!379397))))

(assert (=> bs!1793599 (not (= lambda!379398 lambda!379360))))

(assert (=> b!6747534 true))

(assert (=> b!6747534 true))

(declare-fun bs!1793601 () Bool)

(declare-fun b!6747530 () Bool)

(assert (= bs!1793601 (and b!6747530 b!6746795)))

(declare-fun lambda!379399 () Int)

(assert (=> bs!1793601 (not (= lambda!379399 lambda!379316))))

(declare-fun bs!1793602 () Bool)

(assert (= bs!1793602 (and b!6747530 d!2119554)))

(assert (=> bs!1793602 (not (= lambda!379399 lambda!379372))))

(declare-fun bs!1793603 () Bool)

(assert (= bs!1793603 (and b!6747530 b!6747451)))

(assert (=> bs!1793603 (not (= lambda!379399 lambda!379396))))

(assert (=> bs!1793602 (not (= lambda!379399 lambda!379371))))

(declare-fun bs!1793604 () Bool)

(assert (= bs!1793604 (and b!6747530 b!6747534)))

(assert (=> bs!1793604 (not (= lambda!379399 lambda!379398))))

(declare-fun bs!1793605 () Bool)

(assert (= bs!1793605 (and b!6747530 d!2119594)))

(assert (=> bs!1793605 (not (= lambda!379399 lambda!379378))))

(assert (=> bs!1793601 (= (and (= (regOne!33666 lt!2440265) (reg!16906 r!7292)) (= (regTwo!33666 lt!2440265) r!7292)) (= lambda!379399 lambda!379318))))

(assert (=> bs!1793601 (not (= lambda!379399 lambda!379317))))

(declare-fun bs!1793606 () Bool)

(assert (= bs!1793606 (and b!6747530 d!2119532)))

(assert (=> bs!1793606 (not (= lambda!379399 lambda!379358))))

(declare-fun bs!1793607 () Bool)

(assert (= bs!1793607 (and b!6747530 b!6747447)))

(assert (=> bs!1793607 (= (and (= (regOne!33666 lt!2440265) (regOne!33666 r!7292)) (= (regTwo!33666 lt!2440265) (regTwo!33666 r!7292))) (= lambda!379399 lambda!379397))))

(assert (=> bs!1793606 (= (and (= (regOne!33666 lt!2440265) (reg!16906 r!7292)) (= (regTwo!33666 lt!2440265) r!7292)) (= lambda!379399 lambda!379360))))

(assert (=> b!6747530 true))

(assert (=> b!6747530 true))

(declare-fun b!6747524 () Bool)

(declare-fun c!1251984 () Bool)

(assert (=> b!6747524 (= c!1251984 ((_ is ElementMatch!16577) lt!2440265))))

(declare-fun e!4075281 () Bool)

(declare-fun e!4075283 () Bool)

(assert (=> b!6747524 (= e!4075281 e!4075283)))

(declare-fun b!6747525 () Bool)

(declare-fun e!4075282 () Bool)

(assert (=> b!6747525 (= e!4075282 e!4075281)))

(declare-fun res!2759973 () Bool)

(assert (=> b!6747525 (= res!2759973 (not ((_ is EmptyLang!16577) lt!2440265)))))

(assert (=> b!6747525 (=> (not res!2759973) (not e!4075281))))

(declare-fun b!6747526 () Bool)

(declare-fun e!4075277 () Bool)

(declare-fun e!4075279 () Bool)

(assert (=> b!6747526 (= e!4075277 e!4075279)))

(declare-fun c!1251981 () Bool)

(assert (=> b!6747526 (= c!1251981 ((_ is Star!16577) lt!2440265))))

(declare-fun b!6747527 () Bool)

(declare-fun e!4075278 () Bool)

(assert (=> b!6747527 (= e!4075278 (matchRSpec!3678 (regTwo!33667 lt!2440265) s!2326))))

(declare-fun b!6747528 () Bool)

(declare-fun call!610168 () Bool)

(assert (=> b!6747528 (= e!4075282 call!610168)))

(declare-fun b!6747529 () Bool)

(declare-fun c!1251982 () Bool)

(assert (=> b!6747529 (= c!1251982 ((_ is Union!16577) lt!2440265))))

(assert (=> b!6747529 (= e!4075283 e!4075277)))

(declare-fun d!2119638 () Bool)

(declare-fun c!1251983 () Bool)

(assert (=> d!2119638 (= c!1251983 ((_ is EmptyExpr!16577) lt!2440265))))

(assert (=> d!2119638 (= (matchRSpec!3678 lt!2440265 s!2326) e!4075282)))

(declare-fun call!610169 () Bool)

(assert (=> b!6747530 (= e!4075279 call!610169)))

(declare-fun b!6747531 () Bool)

(declare-fun res!2759972 () Bool)

(declare-fun e!4075280 () Bool)

(assert (=> b!6747531 (=> res!2759972 e!4075280)))

(assert (=> b!6747531 (= res!2759972 call!610168)))

(assert (=> b!6747531 (= e!4075279 e!4075280)))

(declare-fun bm!610163 () Bool)

(assert (=> bm!610163 (= call!610168 (isEmpty!38258 s!2326))))

(declare-fun b!6747532 () Bool)

(assert (=> b!6747532 (= e!4075277 e!4075278)))

(declare-fun res!2759971 () Bool)

(assert (=> b!6747532 (= res!2759971 (matchRSpec!3678 (regOne!33667 lt!2440265) s!2326))))

(assert (=> b!6747532 (=> res!2759971 e!4075278)))

(declare-fun bm!610164 () Bool)

(assert (=> bm!610164 (= call!610169 (Exists!3645 (ite c!1251981 lambda!379398 lambda!379399)))))

(declare-fun b!6747533 () Bool)

(assert (=> b!6747533 (= e!4075283 (= s!2326 (Cons!65908 (c!1251775 lt!2440265) Nil!65908)))))

(assert (=> b!6747534 (= e!4075280 call!610169)))

(assert (= (and d!2119638 c!1251983) b!6747528))

(assert (= (and d!2119638 (not c!1251983)) b!6747525))

(assert (= (and b!6747525 res!2759973) b!6747524))

(assert (= (and b!6747524 c!1251984) b!6747533))

(assert (= (and b!6747524 (not c!1251984)) b!6747529))

(assert (= (and b!6747529 c!1251982) b!6747532))

(assert (= (and b!6747529 (not c!1251982)) b!6747526))

(assert (= (and b!6747532 (not res!2759971)) b!6747527))

(assert (= (and b!6747526 c!1251981) b!6747531))

(assert (= (and b!6747526 (not c!1251981)) b!6747530))

(assert (= (and b!6747531 (not res!2759972)) b!6747534))

(assert (= (or b!6747534 b!6747530) bm!610164))

(assert (= (or b!6747528 b!6747531) bm!610163))

(declare-fun m!7502446 () Bool)

(assert (=> b!6747527 m!7502446))

(assert (=> bm!610163 m!7501862))

(declare-fun m!7502448 () Bool)

(assert (=> b!6747532 m!7502448))

(declare-fun m!7502450 () Bool)

(assert (=> bm!610164 m!7502450))

(assert (=> b!6746784 d!2119638))

(declare-fun b!6747535 () Bool)

(declare-fun e!4075284 () Bool)

(assert (=> b!6747535 (= e!4075284 (matchR!8760 (derivativeStep!5249 lt!2440265 (head!13582 s!2326)) (tail!12667 s!2326)))))

(declare-fun bm!610165 () Bool)

(declare-fun call!610170 () Bool)

(assert (=> bm!610165 (= call!610170 (isEmpty!38258 s!2326))))

(declare-fun b!6747536 () Bool)

(assert (=> b!6747536 (= e!4075284 (nullable!6564 lt!2440265))))

(declare-fun b!6747537 () Bool)

(declare-fun e!4075289 () Bool)

(declare-fun lt!2440379 () Bool)

(assert (=> b!6747537 (= e!4075289 (not lt!2440379))))

(declare-fun b!6747539 () Bool)

(declare-fun e!4075286 () Bool)

(assert (=> b!6747539 (= e!4075286 e!4075289)))

(declare-fun c!1251985 () Bool)

(assert (=> b!6747539 (= c!1251985 ((_ is EmptyLang!16577) lt!2440265))))

(declare-fun b!6747540 () Bool)

(declare-fun res!2759974 () Bool)

(declare-fun e!4075288 () Bool)

(assert (=> b!6747540 (=> res!2759974 e!4075288)))

(declare-fun e!4075287 () Bool)

(assert (=> b!6747540 (= res!2759974 e!4075287)))

(declare-fun res!2759978 () Bool)

(assert (=> b!6747540 (=> (not res!2759978) (not e!4075287))))

(assert (=> b!6747540 (= res!2759978 lt!2440379)))

(declare-fun b!6747541 () Bool)

(assert (=> b!6747541 (= e!4075287 (= (head!13582 s!2326) (c!1251775 lt!2440265)))))

(declare-fun b!6747542 () Bool)

(declare-fun e!4075285 () Bool)

(assert (=> b!6747542 (= e!4075285 (not (= (head!13582 s!2326) (c!1251775 lt!2440265))))))

(declare-fun b!6747543 () Bool)

(declare-fun res!2759981 () Bool)

(assert (=> b!6747543 (=> res!2759981 e!4075288)))

(assert (=> b!6747543 (= res!2759981 (not ((_ is ElementMatch!16577) lt!2440265)))))

(assert (=> b!6747543 (= e!4075289 e!4075288)))

(declare-fun b!6747544 () Bool)

(declare-fun res!2759977 () Bool)

(assert (=> b!6747544 (=> (not res!2759977) (not e!4075287))))

(assert (=> b!6747544 (= res!2759977 (isEmpty!38258 (tail!12667 s!2326)))))

(declare-fun b!6747545 () Bool)

(declare-fun res!2759975 () Bool)

(assert (=> b!6747545 (=> (not res!2759975) (not e!4075287))))

(assert (=> b!6747545 (= res!2759975 (not call!610170))))

(declare-fun b!6747546 () Bool)

(declare-fun res!2759979 () Bool)

(assert (=> b!6747546 (=> res!2759979 e!4075285)))

(assert (=> b!6747546 (= res!2759979 (not (isEmpty!38258 (tail!12667 s!2326))))))

(declare-fun b!6747538 () Bool)

(declare-fun e!4075290 () Bool)

(assert (=> b!6747538 (= e!4075288 e!4075290)))

(declare-fun res!2759976 () Bool)

(assert (=> b!6747538 (=> (not res!2759976) (not e!4075290))))

(assert (=> b!6747538 (= res!2759976 (not lt!2440379))))

(declare-fun d!2119640 () Bool)

(assert (=> d!2119640 e!4075286))

(declare-fun c!1251986 () Bool)

(assert (=> d!2119640 (= c!1251986 ((_ is EmptyExpr!16577) lt!2440265))))

(assert (=> d!2119640 (= lt!2440379 e!4075284)))

(declare-fun c!1251987 () Bool)

(assert (=> d!2119640 (= c!1251987 (isEmpty!38258 s!2326))))

(assert (=> d!2119640 (validRegex!8313 lt!2440265)))

(assert (=> d!2119640 (= (matchR!8760 lt!2440265 s!2326) lt!2440379)))

(declare-fun b!6747547 () Bool)

(assert (=> b!6747547 (= e!4075286 (= lt!2440379 call!610170))))

(declare-fun b!6747548 () Bool)

(assert (=> b!6747548 (= e!4075290 e!4075285)))

(declare-fun res!2759980 () Bool)

(assert (=> b!6747548 (=> res!2759980 e!4075285)))

(assert (=> b!6747548 (= res!2759980 call!610170)))

(assert (= (and d!2119640 c!1251987) b!6747536))

(assert (= (and d!2119640 (not c!1251987)) b!6747535))

(assert (= (and d!2119640 c!1251986) b!6747547))

(assert (= (and d!2119640 (not c!1251986)) b!6747539))

(assert (= (and b!6747539 c!1251985) b!6747537))

(assert (= (and b!6747539 (not c!1251985)) b!6747543))

(assert (= (and b!6747543 (not res!2759981)) b!6747540))

(assert (= (and b!6747540 res!2759978) b!6747545))

(assert (= (and b!6747545 res!2759975) b!6747544))

(assert (= (and b!6747544 res!2759977) b!6747541))

(assert (= (and b!6747540 (not res!2759974)) b!6747538))

(assert (= (and b!6747538 res!2759976) b!6747548))

(assert (= (and b!6747548 (not res!2759980)) b!6747546))

(assert (= (and b!6747546 (not res!2759979)) b!6747542))

(assert (= (or b!6747547 b!6747548 b!6747545) bm!610165))

(assert (=> bm!610165 m!7501862))

(assert (=> b!6747546 m!7502340))

(assert (=> b!6747546 m!7502340))

(assert (=> b!6747546 m!7502410))

(assert (=> d!2119640 m!7501862))

(declare-fun m!7502452 () Bool)

(assert (=> d!2119640 m!7502452))

(declare-fun m!7502454 () Bool)

(assert (=> b!6747536 m!7502454))

(assert (=> b!6747541 m!7502336))

(assert (=> b!6747544 m!7502340))

(assert (=> b!6747544 m!7502340))

(assert (=> b!6747544 m!7502410))

(assert (=> b!6747535 m!7502336))

(assert (=> b!6747535 m!7502336))

(declare-fun m!7502456 () Bool)

(assert (=> b!6747535 m!7502456))

(assert (=> b!6747535 m!7502340))

(assert (=> b!6747535 m!7502456))

(assert (=> b!6747535 m!7502340))

(declare-fun m!7502458 () Bool)

(assert (=> b!6747535 m!7502458))

(assert (=> b!6747542 m!7502336))

(assert (=> b!6746784 d!2119640))

(declare-fun d!2119642 () Bool)

(assert (=> d!2119642 (= (matchR!8760 lt!2440265 s!2326) (matchRSpec!3678 lt!2440265 s!2326))))

(declare-fun lt!2440380 () Unit!159845)

(assert (=> d!2119642 (= lt!2440380 (choose!50332 lt!2440265 s!2326))))

(assert (=> d!2119642 (validRegex!8313 lt!2440265)))

(assert (=> d!2119642 (= (mainMatchTheorem!3678 lt!2440265 s!2326) lt!2440380)))

(declare-fun bs!1793608 () Bool)

(assert (= bs!1793608 d!2119642))

(assert (=> bs!1793608 m!7501924))

(assert (=> bs!1793608 m!7501922))

(declare-fun m!7502460 () Bool)

(assert (=> bs!1793608 m!7502460))

(assert (=> bs!1793608 m!7502452))

(assert (=> b!6746784 d!2119642))

(declare-fun bs!1793609 () Bool)

(declare-fun d!2119644 () Bool)

(assert (= bs!1793609 (and d!2119644 d!2119596)))

(declare-fun lambda!379400 () Int)

(assert (=> bs!1793609 (= lambda!379400 lambda!379381)))

(declare-fun bs!1793610 () Bool)

(assert (= bs!1793610 (and d!2119644 d!2119614)))

(assert (=> bs!1793610 (= lambda!379400 lambda!379385)))

(declare-fun bs!1793611 () Bool)

(assert (= bs!1793611 (and d!2119644 d!2119616)))

(assert (=> bs!1793611 (= lambda!379400 lambda!379388)))

(declare-fun bs!1793612 () Bool)

(assert (= bs!1793612 (and d!2119644 d!2119618)))

(assert (=> bs!1793612 (= lambda!379400 lambda!379391)))

(assert (=> d!2119644 (= (inv!84689 setElem!46099) (forall!15777 (exprs!6461 setElem!46099) lambda!379400))))

(declare-fun bs!1793613 () Bool)

(assert (= bs!1793613 d!2119644))

(declare-fun m!7502462 () Bool)

(assert (=> bs!1793613 m!7502462))

(assert (=> setNonEmpty!46099 d!2119644))

(declare-fun d!2119646 () Bool)

(assert (=> d!2119646 (= (flatMap!2058 lt!2440262 lambda!379319) (choose!50321 lt!2440262 lambda!379319))))

(declare-fun bs!1793614 () Bool)

(assert (= bs!1793614 d!2119646))

(declare-fun m!7502464 () Bool)

(assert (=> bs!1793614 m!7502464))

(assert (=> b!6746773 d!2119646))

(declare-fun b!6747549 () Bool)

(declare-fun e!4075291 () (InoxSet Context!11922))

(declare-fun e!4075293 () (InoxSet Context!11922))

(assert (=> b!6747549 (= e!4075291 e!4075293)))

(declare-fun c!1251989 () Bool)

(assert (=> b!6747549 (= c!1251989 ((_ is Cons!65906) (exprs!6461 lt!2440273)))))

(declare-fun b!6747550 () Bool)

(declare-fun call!610171 () (InoxSet Context!11922))

(assert (=> b!6747550 (= e!4075293 call!610171)))

(declare-fun b!6747551 () Bool)

(assert (=> b!6747551 (= e!4075293 ((as const (Array Context!11922 Bool)) false))))

(declare-fun d!2119648 () Bool)

(declare-fun c!1251988 () Bool)

(declare-fun e!4075292 () Bool)

(assert (=> d!2119648 (= c!1251988 e!4075292)))

(declare-fun res!2759982 () Bool)

(assert (=> d!2119648 (=> (not res!2759982) (not e!4075292))))

(assert (=> d!2119648 (= res!2759982 ((_ is Cons!65906) (exprs!6461 lt!2440273)))))

(assert (=> d!2119648 (= (derivationStepZipperUp!1731 lt!2440273 (h!72356 s!2326)) e!4075291)))

(declare-fun b!6747552 () Bool)

(assert (=> b!6747552 (= e!4075291 ((_ map or) call!610171 (derivationStepZipperUp!1731 (Context!11923 (t!379731 (exprs!6461 lt!2440273))) (h!72356 s!2326))))))

(declare-fun bm!610166 () Bool)

(assert (=> bm!610166 (= call!610171 (derivationStepZipperDown!1805 (h!72354 (exprs!6461 lt!2440273)) (Context!11923 (t!379731 (exprs!6461 lt!2440273))) (h!72356 s!2326)))))

(declare-fun b!6747553 () Bool)

(assert (=> b!6747553 (= e!4075292 (nullable!6564 (h!72354 (exprs!6461 lt!2440273))))))

(assert (= (and d!2119648 res!2759982) b!6747553))

(assert (= (and d!2119648 c!1251988) b!6747552))

(assert (= (and d!2119648 (not c!1251988)) b!6747549))

(assert (= (and b!6747549 c!1251989) b!6747550))

(assert (= (and b!6747549 (not c!1251989)) b!6747551))

(assert (= (or b!6747552 b!6747550) bm!610166))

(declare-fun m!7502466 () Bool)

(assert (=> b!6747552 m!7502466))

(declare-fun m!7502468 () Bool)

(assert (=> bm!610166 m!7502468))

(declare-fun m!7502470 () Bool)

(assert (=> b!6747553 m!7502470))

(assert (=> b!6746773 d!2119648))

(declare-fun b!6747554 () Bool)

(declare-fun e!4075294 () (InoxSet Context!11922))

(declare-fun e!4075296 () (InoxSet Context!11922))

(assert (=> b!6747554 (= e!4075294 e!4075296)))

(declare-fun c!1251991 () Bool)

(assert (=> b!6747554 (= c!1251991 ((_ is Cons!65906) (exprs!6461 lt!2440256)))))

(declare-fun b!6747555 () Bool)

(declare-fun call!610172 () (InoxSet Context!11922))

(assert (=> b!6747555 (= e!4075296 call!610172)))

(declare-fun b!6747556 () Bool)

(assert (=> b!6747556 (= e!4075296 ((as const (Array Context!11922 Bool)) false))))

(declare-fun d!2119650 () Bool)

(declare-fun c!1251990 () Bool)

(declare-fun e!4075295 () Bool)

(assert (=> d!2119650 (= c!1251990 e!4075295)))

(declare-fun res!2759983 () Bool)

(assert (=> d!2119650 (=> (not res!2759983) (not e!4075295))))

(assert (=> d!2119650 (= res!2759983 ((_ is Cons!65906) (exprs!6461 lt!2440256)))))

(assert (=> d!2119650 (= (derivationStepZipperUp!1731 lt!2440256 (h!72356 s!2326)) e!4075294)))

(declare-fun b!6747557 () Bool)

(assert (=> b!6747557 (= e!4075294 ((_ map or) call!610172 (derivationStepZipperUp!1731 (Context!11923 (t!379731 (exprs!6461 lt!2440256))) (h!72356 s!2326))))))

(declare-fun bm!610167 () Bool)

(assert (=> bm!610167 (= call!610172 (derivationStepZipperDown!1805 (h!72354 (exprs!6461 lt!2440256)) (Context!11923 (t!379731 (exprs!6461 lt!2440256))) (h!72356 s!2326)))))

(declare-fun b!6747558 () Bool)

(assert (=> b!6747558 (= e!4075295 (nullable!6564 (h!72354 (exprs!6461 lt!2440256))))))

(assert (= (and d!2119650 res!2759983) b!6747558))

(assert (= (and d!2119650 c!1251990) b!6747557))

(assert (= (and d!2119650 (not c!1251990)) b!6747554))

(assert (= (and b!6747554 c!1251991) b!6747555))

(assert (= (and b!6747554 (not c!1251991)) b!6747556))

(assert (= (or b!6747557 b!6747555) bm!610167))

(declare-fun m!7502472 () Bool)

(assert (=> b!6747557 m!7502472))

(declare-fun m!7502474 () Bool)

(assert (=> bm!610167 m!7502474))

(declare-fun m!7502476 () Bool)

(assert (=> b!6747558 m!7502476))

(assert (=> b!6746773 d!2119650))

(declare-fun d!2119652 () Bool)

(assert (=> d!2119652 (= (flatMap!2058 lt!2440263 lambda!379319) (choose!50321 lt!2440263 lambda!379319))))

(declare-fun bs!1793615 () Bool)

(assert (= bs!1793615 d!2119652))

(declare-fun m!7502478 () Bool)

(assert (=> bs!1793615 m!7502478))

(assert (=> b!6746773 d!2119652))

(declare-fun bs!1793616 () Bool)

(declare-fun d!2119654 () Bool)

(assert (= bs!1793616 (and d!2119654 b!6746774)))

(declare-fun lambda!379401 () Int)

(assert (=> bs!1793616 (= lambda!379401 lambda!379319)))

(declare-fun bs!1793617 () Bool)

(assert (= bs!1793617 (and d!2119654 d!2119514)))

(assert (=> bs!1793617 (= lambda!379401 lambda!379343)))

(declare-fun bs!1793618 () Bool)

(assert (= bs!1793618 (and d!2119654 d!2119604)))

(assert (=> bs!1793618 (= lambda!379401 lambda!379382)))

(assert (=> d!2119654 true))

(assert (=> d!2119654 (= (derivationStepZipper!2521 lt!2440262 (h!72356 s!2326)) (flatMap!2058 lt!2440262 lambda!379401))))

(declare-fun bs!1793619 () Bool)

(assert (= bs!1793619 d!2119654))

(declare-fun m!7502480 () Bool)

(assert (=> bs!1793619 m!7502480))

(assert (=> b!6746773 d!2119654))

(declare-fun d!2119656 () Bool)

(assert (=> d!2119656 (= (flatMap!2058 lt!2440263 lambda!379319) (dynLambda!26298 lambda!379319 lt!2440256))))

(declare-fun lt!2440381 () Unit!159845)

(assert (=> d!2119656 (= lt!2440381 (choose!50322 lt!2440263 lt!2440256 lambda!379319))))

(assert (=> d!2119656 (= lt!2440263 (store ((as const (Array Context!11922 Bool)) false) lt!2440256 true))))

(assert (=> d!2119656 (= (lemmaFlatMapOnSingletonSet!1584 lt!2440263 lt!2440256 lambda!379319) lt!2440381)))

(declare-fun b_lambda!254127 () Bool)

(assert (=> (not b_lambda!254127) (not d!2119656)))

(declare-fun bs!1793620 () Bool)

(assert (= bs!1793620 d!2119656))

(assert (=> bs!1793620 m!7501932))

(declare-fun m!7502482 () Bool)

(assert (=> bs!1793620 m!7502482))

(declare-fun m!7502484 () Bool)

(assert (=> bs!1793620 m!7502484))

(assert (=> bs!1793620 m!7501928))

(assert (=> b!6746773 d!2119656))

(declare-fun d!2119658 () Bool)

(assert (=> d!2119658 (= (flatMap!2058 lt!2440262 lambda!379319) (dynLambda!26298 lambda!379319 lt!2440273))))

(declare-fun lt!2440382 () Unit!159845)

(assert (=> d!2119658 (= lt!2440382 (choose!50322 lt!2440262 lt!2440273 lambda!379319))))

(assert (=> d!2119658 (= lt!2440262 (store ((as const (Array Context!11922 Bool)) false) lt!2440273 true))))

(assert (=> d!2119658 (= (lemmaFlatMapOnSingletonSet!1584 lt!2440262 lt!2440273 lambda!379319) lt!2440382)))

(declare-fun b_lambda!254129 () Bool)

(assert (=> (not b_lambda!254129) (not d!2119658)))

(declare-fun bs!1793621 () Bool)

(assert (= bs!1793621 d!2119658))

(assert (=> bs!1793621 m!7501944))

(declare-fun m!7502486 () Bool)

(assert (=> bs!1793621 m!7502486))

(declare-fun m!7502488 () Bool)

(assert (=> bs!1793621 m!7502488))

(assert (=> bs!1793621 m!7501936))

(assert (=> b!6746773 d!2119658))

(declare-fun bm!610168 () Bool)

(declare-fun call!610175 () Bool)

(declare-fun c!1251993 () Bool)

(assert (=> bm!610168 (= call!610175 (validRegex!8313 (ite c!1251993 (regOne!33667 (reg!16906 r!7292)) (regOne!33666 (reg!16906 r!7292)))))))

(declare-fun b!6747559 () Bool)

(declare-fun e!4075298 () Bool)

(declare-fun call!610174 () Bool)

(assert (=> b!6747559 (= e!4075298 call!610174)))

(declare-fun b!6747560 () Bool)

(declare-fun res!2759988 () Bool)

(declare-fun e!4075303 () Bool)

(assert (=> b!6747560 (=> res!2759988 e!4075303)))

(assert (=> b!6747560 (= res!2759988 (not ((_ is Concat!25422) (reg!16906 r!7292))))))

(declare-fun e!4075301 () Bool)

(assert (=> b!6747560 (= e!4075301 e!4075303)))

(declare-fun d!2119660 () Bool)

(declare-fun res!2759987 () Bool)

(declare-fun e!4075302 () Bool)

(assert (=> d!2119660 (=> res!2759987 e!4075302)))

(assert (=> d!2119660 (= res!2759987 ((_ is ElementMatch!16577) (reg!16906 r!7292)))))

(assert (=> d!2119660 (= (validRegex!8313 (reg!16906 r!7292)) e!4075302)))

(declare-fun bm!610169 () Bool)

(declare-fun call!610173 () Bool)

(assert (=> bm!610169 (= call!610174 call!610173)))

(declare-fun b!6747561 () Bool)

(declare-fun e!4075297 () Bool)

(assert (=> b!6747561 (= e!4075297 e!4075301)))

(assert (=> b!6747561 (= c!1251993 ((_ is Union!16577) (reg!16906 r!7292)))))

(declare-fun b!6747562 () Bool)

(declare-fun e!4075299 () Bool)

(assert (=> b!6747562 (= e!4075297 e!4075299)))

(declare-fun res!2759984 () Bool)

(assert (=> b!6747562 (= res!2759984 (not (nullable!6564 (reg!16906 (reg!16906 r!7292)))))))

(assert (=> b!6747562 (=> (not res!2759984) (not e!4075299))))

(declare-fun b!6747563 () Bool)

(assert (=> b!6747563 (= e!4075302 e!4075297)))

(declare-fun c!1251992 () Bool)

(assert (=> b!6747563 (= c!1251992 ((_ is Star!16577) (reg!16906 r!7292)))))

(declare-fun b!6747564 () Bool)

(declare-fun e!4075300 () Bool)

(assert (=> b!6747564 (= e!4075303 e!4075300)))

(declare-fun res!2759985 () Bool)

(assert (=> b!6747564 (=> (not res!2759985) (not e!4075300))))

(assert (=> b!6747564 (= res!2759985 call!610175)))

(declare-fun b!6747565 () Bool)

(assert (=> b!6747565 (= e!4075299 call!610173)))

(declare-fun b!6747566 () Bool)

(declare-fun res!2759986 () Bool)

(assert (=> b!6747566 (=> (not res!2759986) (not e!4075298))))

(assert (=> b!6747566 (= res!2759986 call!610175)))

(assert (=> b!6747566 (= e!4075301 e!4075298)))

(declare-fun b!6747567 () Bool)

(assert (=> b!6747567 (= e!4075300 call!610174)))

(declare-fun bm!610170 () Bool)

(assert (=> bm!610170 (= call!610173 (validRegex!8313 (ite c!1251992 (reg!16906 (reg!16906 r!7292)) (ite c!1251993 (regTwo!33667 (reg!16906 r!7292)) (regTwo!33666 (reg!16906 r!7292))))))))

(assert (= (and d!2119660 (not res!2759987)) b!6747563))

(assert (= (and b!6747563 c!1251992) b!6747562))

(assert (= (and b!6747563 (not c!1251992)) b!6747561))

(assert (= (and b!6747562 res!2759984) b!6747565))

(assert (= (and b!6747561 c!1251993) b!6747566))

(assert (= (and b!6747561 (not c!1251993)) b!6747560))

(assert (= (and b!6747566 res!2759986) b!6747559))

(assert (= (and b!6747560 (not res!2759988)) b!6747564))

(assert (= (and b!6747564 res!2759985) b!6747567))

(assert (= (or b!6747559 b!6747567) bm!610169))

(assert (= (or b!6747566 b!6747564) bm!610168))

(assert (= (or b!6747565 bm!610169) bm!610170))

(declare-fun m!7502490 () Bool)

(assert (=> bm!610168 m!7502490))

(declare-fun m!7502492 () Bool)

(assert (=> b!6747562 m!7502492))

(declare-fun m!7502494 () Bool)

(assert (=> bm!610170 m!7502494))

(assert (=> b!6746793 d!2119660))

(declare-fun b!6747581 () Bool)

(declare-fun e!4075306 () Bool)

(declare-fun tp!1849271 () Bool)

(declare-fun tp!1849270 () Bool)

(assert (=> b!6747581 (= e!4075306 (and tp!1849271 tp!1849270))))

(declare-fun b!6747578 () Bool)

(assert (=> b!6747578 (= e!4075306 tp_is_empty!42407)))

(declare-fun b!6747580 () Bool)

(declare-fun tp!1849273 () Bool)

(assert (=> b!6747580 (= e!4075306 tp!1849273)))

(declare-fun b!6747579 () Bool)

(declare-fun tp!1849274 () Bool)

(declare-fun tp!1849272 () Bool)

(assert (=> b!6747579 (= e!4075306 (and tp!1849274 tp!1849272))))

(assert (=> b!6746776 (= tp!1849192 e!4075306)))

(assert (= (and b!6746776 ((_ is ElementMatch!16577) (reg!16906 r!7292))) b!6747578))

(assert (= (and b!6746776 ((_ is Concat!25422) (reg!16906 r!7292))) b!6747579))

(assert (= (and b!6746776 ((_ is Star!16577) (reg!16906 r!7292))) b!6747580))

(assert (= (and b!6746776 ((_ is Union!16577) (reg!16906 r!7292))) b!6747581))

(declare-fun b!6747586 () Bool)

(declare-fun e!4075309 () Bool)

(declare-fun tp!1849279 () Bool)

(declare-fun tp!1849280 () Bool)

(assert (=> b!6747586 (= e!4075309 (and tp!1849279 tp!1849280))))

(assert (=> b!6746780 (= tp!1849194 e!4075309)))

(assert (= (and b!6746780 ((_ is Cons!65906) (exprs!6461 setElem!46099))) b!6747586))

(declare-fun b!6747590 () Bool)

(declare-fun e!4075310 () Bool)

(declare-fun tp!1849282 () Bool)

(declare-fun tp!1849281 () Bool)

(assert (=> b!6747590 (= e!4075310 (and tp!1849282 tp!1849281))))

(declare-fun b!6747587 () Bool)

(assert (=> b!6747587 (= e!4075310 tp_is_empty!42407)))

(declare-fun b!6747589 () Bool)

(declare-fun tp!1849284 () Bool)

(assert (=> b!6747589 (= e!4075310 tp!1849284)))

(declare-fun b!6747588 () Bool)

(declare-fun tp!1849285 () Bool)

(declare-fun tp!1849283 () Bool)

(assert (=> b!6747588 (= e!4075310 (and tp!1849285 tp!1849283))))

(assert (=> b!6746796 (= tp!1849200 e!4075310)))

(assert (= (and b!6746796 ((_ is ElementMatch!16577) (regOne!33667 r!7292))) b!6747587))

(assert (= (and b!6746796 ((_ is Concat!25422) (regOne!33667 r!7292))) b!6747588))

(assert (= (and b!6746796 ((_ is Star!16577) (regOne!33667 r!7292))) b!6747589))

(assert (= (and b!6746796 ((_ is Union!16577) (regOne!33667 r!7292))) b!6747590))

(declare-fun b!6747594 () Bool)

(declare-fun e!4075311 () Bool)

(declare-fun tp!1849287 () Bool)

(declare-fun tp!1849286 () Bool)

(assert (=> b!6747594 (= e!4075311 (and tp!1849287 tp!1849286))))

(declare-fun b!6747591 () Bool)

(assert (=> b!6747591 (= e!4075311 tp_is_empty!42407)))

(declare-fun b!6747593 () Bool)

(declare-fun tp!1849289 () Bool)

(assert (=> b!6747593 (= e!4075311 tp!1849289)))

(declare-fun b!6747592 () Bool)

(declare-fun tp!1849290 () Bool)

(declare-fun tp!1849288 () Bool)

(assert (=> b!6747592 (= e!4075311 (and tp!1849290 tp!1849288))))

(assert (=> b!6746796 (= tp!1849196 e!4075311)))

(assert (= (and b!6746796 ((_ is ElementMatch!16577) (regTwo!33667 r!7292))) b!6747591))

(assert (= (and b!6746796 ((_ is Concat!25422) (regTwo!33667 r!7292))) b!6747592))

(assert (= (and b!6746796 ((_ is Star!16577) (regTwo!33667 r!7292))) b!6747593))

(assert (= (and b!6746796 ((_ is Union!16577) (regTwo!33667 r!7292))) b!6747594))

(declare-fun b!6747598 () Bool)

(declare-fun e!4075312 () Bool)

(declare-fun tp!1849292 () Bool)

(declare-fun tp!1849291 () Bool)

(assert (=> b!6747598 (= e!4075312 (and tp!1849292 tp!1849291))))

(declare-fun b!6747595 () Bool)

(assert (=> b!6747595 (= e!4075312 tp_is_empty!42407)))

(declare-fun b!6747597 () Bool)

(declare-fun tp!1849294 () Bool)

(assert (=> b!6747597 (= e!4075312 tp!1849294)))

(declare-fun b!6747596 () Bool)

(declare-fun tp!1849295 () Bool)

(declare-fun tp!1849293 () Bool)

(assert (=> b!6747596 (= e!4075312 (and tp!1849295 tp!1849293))))

(assert (=> b!6746799 (= tp!1849197 e!4075312)))

(assert (= (and b!6746799 ((_ is ElementMatch!16577) (regOne!33666 r!7292))) b!6747595))

(assert (= (and b!6746799 ((_ is Concat!25422) (regOne!33666 r!7292))) b!6747596))

(assert (= (and b!6746799 ((_ is Star!16577) (regOne!33666 r!7292))) b!6747597))

(assert (= (and b!6746799 ((_ is Union!16577) (regOne!33666 r!7292))) b!6747598))

(declare-fun b!6747602 () Bool)

(declare-fun e!4075313 () Bool)

(declare-fun tp!1849297 () Bool)

(declare-fun tp!1849296 () Bool)

(assert (=> b!6747602 (= e!4075313 (and tp!1849297 tp!1849296))))

(declare-fun b!6747599 () Bool)

(assert (=> b!6747599 (= e!4075313 tp_is_empty!42407)))

(declare-fun b!6747601 () Bool)

(declare-fun tp!1849299 () Bool)

(assert (=> b!6747601 (= e!4075313 tp!1849299)))

(declare-fun b!6747600 () Bool)

(declare-fun tp!1849300 () Bool)

(declare-fun tp!1849298 () Bool)

(assert (=> b!6747600 (= e!4075313 (and tp!1849300 tp!1849298))))

(assert (=> b!6746799 (= tp!1849195 e!4075313)))

(assert (= (and b!6746799 ((_ is ElementMatch!16577) (regTwo!33666 r!7292))) b!6747599))

(assert (= (and b!6746799 ((_ is Concat!25422) (regTwo!33666 r!7292))) b!6747600))

(assert (= (and b!6746799 ((_ is Star!16577) (regTwo!33666 r!7292))) b!6747601))

(assert (= (and b!6746799 ((_ is Union!16577) (regTwo!33666 r!7292))) b!6747602))

(declare-fun b!6747607 () Bool)

(declare-fun e!4075316 () Bool)

(declare-fun tp!1849303 () Bool)

(assert (=> b!6747607 (= e!4075316 (and tp_is_empty!42407 tp!1849303))))

(assert (=> b!6746800 (= tp!1849201 e!4075316)))

(assert (= (and b!6746800 ((_ is Cons!65908) (t!379733 s!2326))) b!6747607))

(declare-fun condSetEmpty!46105 () Bool)

(assert (=> setNonEmpty!46099 (= condSetEmpty!46105 (= setRest!46099 ((as const (Array Context!11922 Bool)) false)))))

(declare-fun setRes!46105 () Bool)

(assert (=> setNonEmpty!46099 (= tp!1849193 setRes!46105)))

(declare-fun setIsEmpty!46105 () Bool)

(assert (=> setIsEmpty!46105 setRes!46105))

(declare-fun setElem!46105 () Context!11922)

(declare-fun setNonEmpty!46105 () Bool)

(declare-fun e!4075319 () Bool)

(declare-fun tp!1849309 () Bool)

(assert (=> setNonEmpty!46105 (= setRes!46105 (and tp!1849309 (inv!84689 setElem!46105) e!4075319))))

(declare-fun setRest!46105 () (InoxSet Context!11922))

(assert (=> setNonEmpty!46105 (= setRest!46099 ((_ map or) (store ((as const (Array Context!11922 Bool)) false) setElem!46105 true) setRest!46105))))

(declare-fun b!6747612 () Bool)

(declare-fun tp!1849308 () Bool)

(assert (=> b!6747612 (= e!4075319 tp!1849308)))

(assert (= (and setNonEmpty!46099 condSetEmpty!46105) setIsEmpty!46105))

(assert (= (and setNonEmpty!46099 (not condSetEmpty!46105)) setNonEmpty!46105))

(assert (= setNonEmpty!46105 b!6747612))

(declare-fun m!7502496 () Bool)

(assert (=> setNonEmpty!46105 m!7502496))

(declare-fun b!6747613 () Bool)

(declare-fun e!4075320 () Bool)

(declare-fun tp!1849310 () Bool)

(declare-fun tp!1849311 () Bool)

(assert (=> b!6747613 (= e!4075320 (and tp!1849310 tp!1849311))))

(assert (=> b!6746798 (= tp!1849199 e!4075320)))

(assert (= (and b!6746798 ((_ is Cons!65906) (exprs!6461 (h!72355 zl!343)))) b!6747613))

(declare-fun b!6747621 () Bool)

(declare-fun e!4075326 () Bool)

(declare-fun tp!1849316 () Bool)

(assert (=> b!6747621 (= e!4075326 tp!1849316)))

(declare-fun b!6747620 () Bool)

(declare-fun e!4075325 () Bool)

(declare-fun tp!1849317 () Bool)

(assert (=> b!6747620 (= e!4075325 (and (inv!84689 (h!72355 (t!379732 zl!343))) e!4075326 tp!1849317))))

(assert (=> b!6746777 (= tp!1849198 e!4075325)))

(assert (= b!6747620 b!6747621))

(assert (= (and b!6746777 ((_ is Cons!65907) (t!379732 zl!343))) b!6747620))

(declare-fun m!7502498 () Bool)

(assert (=> b!6747620 m!7502498))

(declare-fun b_lambda!254131 () Bool)

(assert (= b_lambda!254127 (or b!6746774 b_lambda!254131)))

(declare-fun bs!1793622 () Bool)

(declare-fun d!2119662 () Bool)

(assert (= bs!1793622 (and d!2119662 b!6746774)))

(assert (=> bs!1793622 (= (dynLambda!26298 lambda!379319 lt!2440256) (derivationStepZipperUp!1731 lt!2440256 (h!72356 s!2326)))))

(assert (=> bs!1793622 m!7501940))

(assert (=> d!2119656 d!2119662))

(declare-fun b_lambda!254133 () Bool)

(assert (= b_lambda!254129 (or b!6746774 b_lambda!254133)))

(declare-fun bs!1793623 () Bool)

(declare-fun d!2119664 () Bool)

(assert (= bs!1793623 (and d!2119664 b!6746774)))

(assert (=> bs!1793623 (= (dynLambda!26298 lambda!379319 lt!2440273) (derivationStepZipperUp!1731 lt!2440273 (h!72356 s!2326)))))

(assert (=> bs!1793623 m!7501930))

(assert (=> d!2119658 d!2119664))

(declare-fun b_lambda!254135 () Bool)

(assert (= b_lambda!254125 (or b!6746774 b_lambda!254135)))

(declare-fun bs!1793624 () Bool)

(declare-fun d!2119666 () Bool)

(assert (= bs!1793624 (and d!2119666 b!6746774)))

(assert (=> bs!1793624 (= (dynLambda!26298 lambda!379319 lt!2440268) (derivationStepZipperUp!1731 lt!2440268 (h!72356 s!2326)))))

(assert (=> bs!1793624 m!7501902))

(assert (=> d!2119612 d!2119666))

(declare-fun b_lambda!254137 () Bool)

(assert (= b_lambda!254113 (or b!6746774 b_lambda!254137)))

(declare-fun bs!1793625 () Bool)

(declare-fun d!2119668 () Bool)

(assert (= bs!1793625 (and d!2119668 b!6746774)))

(assert (=> bs!1793625 (= (dynLambda!26298 lambda!379319 (h!72355 zl!343)) (derivationStepZipperUp!1731 (h!72355 zl!343) (h!72356 s!2326)))))

(assert (=> bs!1793625 m!7501912))

(assert (=> d!2119522 d!2119668))

(check-sat (not d!2119594) (not b!6747372) (not b!6747371) (not bm!610098) (not bm!610170) (not b!6747581) (not b_lambda!254135) (not bm!610160) (not d!2119530) (not d!2119614) (not b!6747444) (not b!6747586) (not d!2119568) (not b!6747552) (not b!6747487) (not d!2119600) (not b!6747311) (not bs!1793622) (not b!6747621) (not d!2119636) (not b!6747346) (not b!6747558) (not b!6747594) (not bs!1793623) (not d!2119514) (not b!6747620) (not b!6747306) (not b!6747309) (not bm!610163) (not bs!1793625) (not d!2119644) (not b!6747527) (not bm!610149) (not b!6747546) (not d!2119632) (not b!6747307) (not b!6747553) (not d!2119628) (not b!6747491) (not b!6747402) (not d!2119634) (not b!6747612) (not b!6747054) (not b!6747395) (not b!6747339) (not bm!610126) (not b!6747014) (not d!2119626) (not d!2119522) (not bm!610150) (not b!6747394) (not b!6747449) (not b!6747489) (not b!6747340) (not bm!610097) (not b!6747347) (not bm!610107) (not bm!610166) (not b!6747593) (not b!6747400) (not d!2119658) (not b!6747562) (not b!6747393) (not b!6747544) (not bm!610144) (not d!2119554) (not b_lambda!254137) (not b!6747596) (not b!6747557) (not b!6747588) (not d!2119516) (not b!6747345) (not d!2119640) (not b_lambda!254133) (not b!6747579) (not b!6747343) (not bs!1793624) (not b!6747481) (not b!6747515) (not d!2119562) (not b!6747590) (not b!6747542) (not d!2119604) (not bm!610101) (not d!2119624) (not d!2119618) (not b!6747607) (not d!2119612) (not b!6747344) (not d!2119646) (not b!6747095) (not bm!610143) (not bm!610140) (not b!6747597) (not b!6747601) (not b!6747532) (not d!2119654) (not b!6747312) (not bm!610165) (not b!6747486) (not bm!610167) (not d!2119570) (not b!6747354) (not b!6747407) (not b!6747480) (not d!2119652) (not b_lambda!254131) (not d!2119602) (not b!6747536) (not b!6747355) (not bm!610153) (not b!6747541) (not setNonEmpty!46105) (not bm!610164) (not b!6747367) (not b!6747613) (not bm!610168) (not d!2119616) (not b!6747313) (not b!6747580) (not d!2119598) (not b!6747600) (not b!6747353) (not bm!610162) (not d!2119642) (not b!6747535) (not d!2119596) (not d!2119566) (not b!6747055) (not b!6747602) (not b!6747523) (not b!6747094) (not b!6747356) (not b!6747398) (not b!6747397) (not d!2119656) (not b!6747589) (not bm!610139) tp_is_empty!42407 (not d!2119532) (not d!2119608) (not b!6747592) (not b!6747598))
(check-sat)
