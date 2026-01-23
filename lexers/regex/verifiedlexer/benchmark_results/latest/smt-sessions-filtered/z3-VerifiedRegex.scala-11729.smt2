; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663280 () Bool)

(assert start!663280)

(declare-fun b!6873255 () Bool)

(assert (=> b!6873255 true))

(declare-fun b!6873248 () Bool)

(assert (=> b!6873248 true))

(declare-fun bs!1837517 () Bool)

(declare-fun b!6873243 () Bool)

(assert (= bs!1837517 (and b!6873243 b!6873255)))

(declare-fun lambda!389041 () Int)

(declare-fun lambda!389039 () Int)

(assert (=> bs!1837517 (not (= lambda!389041 lambda!389039))))

(declare-fun b!6873237 () Bool)

(declare-fun e!4142861 () Bool)

(declare-fun tp!1887638 () Bool)

(declare-fun tp!1887637 () Bool)

(assert (=> b!6873237 (= e!4142861 (and tp!1887638 tp!1887637))))

(declare-fun b!6873238 () Bool)

(declare-fun e!4142864 () Bool)

(declare-fun tp!1887643 () Bool)

(assert (=> b!6873238 (= e!4142864 tp!1887643)))

(declare-fun b!6873239 () Bool)

(declare-fun res!2803035 () Bool)

(declare-fun e!4142858 () Bool)

(assert (=> b!6873239 (=> (not res!2803035) (not e!4142858))))

(declare-datatypes ((C!33680 0))(
  ( (C!33681 (val!26542 Int)) )
))
(declare-datatypes ((Regex!16705 0))(
  ( (ElementMatch!16705 (c!1279109 C!33680)) (Concat!25550 (regOne!33922 Regex!16705) (regTwo!33922 Regex!16705)) (EmptyExpr!16705) (Star!16705 (reg!17034 Regex!16705)) (EmptyLang!16705) (Union!16705 (regOne!33923 Regex!16705) (regTwo!33923 Regex!16705)) )
))
(declare-fun r!7292 () Regex!16705)

(declare-datatypes ((List!66414 0))(
  ( (Nil!66290) (Cons!66290 (h!72738 Regex!16705) (t!380157 List!66414)) )
))
(declare-datatypes ((Context!12178 0))(
  ( (Context!12179 (exprs!6589 List!66414)) )
))
(declare-datatypes ((List!66415 0))(
  ( (Nil!66291) (Cons!66291 (h!72739 Context!12178) (t!380158 List!66415)) )
))
(declare-fun zl!343 () List!66415)

(declare-fun unfocusZipper!2447 (List!66415) Regex!16705)

(assert (=> b!6873239 (= res!2803035 (= r!7292 (unfocusZipper!2447 zl!343)))))

(declare-fun b!6873240 () Bool)

(declare-fun tp_is_empty!42663 () Bool)

(assert (=> b!6873240 (= e!4142861 tp_is_empty!42663)))

(declare-fun b!6873241 () Bool)

(declare-fun e!4142863 () Bool)

(assert (=> b!6873241 (= e!4142863 false)))

(declare-fun lt!2458807 () List!66414)

(declare-fun exists!2846 (List!66414 Int) Bool)

(assert (=> b!6873241 (exists!2846 lt!2458807 lambda!389039)))

(declare-datatypes ((Unit!160190 0))(
  ( (Unit!160191) )
))
(declare-fun lt!2458817 () Unit!160190)

(declare-fun lt!2458815 () Regex!16705)

(declare-fun lemmaContainsThenExists!77 (List!66414 Regex!16705 Int) Unit!160190)

(assert (=> b!6873241 (= lt!2458817 (lemmaContainsThenExists!77 lt!2458807 lt!2458815 lambda!389039))))

(declare-fun contains!20363 (List!66414 Regex!16705) Bool)

(assert (=> b!6873241 (contains!20363 lt!2458807 lt!2458815)))

(declare-fun lt!2458816 () Unit!160190)

(declare-fun lt!2458813 () Context!12178)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!14 (List!66415 Context!12178) Unit!160190)

(assert (=> b!6873241 (= lt!2458816 (lemmaZipperContainsContextUnfocusListContainsConcat!14 zl!343 lt!2458813))))

(declare-datatypes ((List!66416 0))(
  ( (Nil!66292) (Cons!66292 (h!72740 C!33680) (t!380159 List!66416)) )
))
(declare-fun s!2326 () List!66416)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2458814 () (InoxSet Context!12178))

(declare-fun matchR!8888 (Regex!16705 List!66416) Bool)

(declare-fun matchZipper!2671 ((InoxSet Context!12178) List!66416) Bool)

(assert (=> b!6873241 (= (matchR!8888 lt!2458815 s!2326) (matchZipper!2671 lt!2458814 s!2326))))

(declare-fun lt!2458818 () Unit!160190)

(declare-fun lt!2458810 () List!66415)

(declare-fun theoremZipperRegexEquiv!967 ((InoxSet Context!12178) List!66415 Regex!16705 List!66416) Unit!160190)

(assert (=> b!6873241 (= lt!2458818 (theoremZipperRegexEquiv!967 lt!2458814 lt!2458810 lt!2458815 s!2326))))

(declare-fun generalisedConcat!2293 (List!66414) Regex!16705)

(assert (=> b!6873241 (= lt!2458815 (generalisedConcat!2293 (exprs!6589 lt!2458813)))))

(assert (=> b!6873241 (= lt!2458814 (store ((as const (Array Context!12178 Bool)) false) lt!2458813 true))))

(declare-fun e!4142866 () Bool)

(declare-fun tp!1887640 () Bool)

(declare-fun setNonEmpty!47271 () Bool)

(declare-fun setRes!47271 () Bool)

(declare-fun setElem!47271 () Context!12178)

(declare-fun inv!85009 (Context!12178) Bool)

(assert (=> setNonEmpty!47271 (= setRes!47271 (and tp!1887640 (inv!85009 setElem!47271) e!4142866))))

(declare-fun z!1189 () (InoxSet Context!12178))

(declare-fun setRest!47271 () (InoxSet Context!12178))

(assert (=> setNonEmpty!47271 (= z!1189 ((_ map or) (store ((as const (Array Context!12178 Bool)) false) setElem!47271 true) setRest!47271))))

(declare-fun b!6873242 () Bool)

(declare-fun e!4142860 () Bool)

(assert (=> b!6873242 (= e!4142858 (not e!4142860))))

(declare-fun res!2803033 () Bool)

(assert (=> b!6873242 (=> res!2803033 e!4142860)))

(declare-fun e!4142862 () Bool)

(assert (=> b!6873242 (= res!2803033 e!4142862)))

(declare-fun res!2803031 () Bool)

(assert (=> b!6873242 (=> (not res!2803031) (not e!4142862))))

(get-info :version)

(assert (=> b!6873242 (= res!2803031 ((_ is Cons!66291) zl!343))))

(declare-fun lt!2458812 () Bool)

(declare-fun matchRSpec!3806 (Regex!16705 List!66416) Bool)

(assert (=> b!6873242 (= lt!2458812 (matchRSpec!3806 r!7292 s!2326))))

(assert (=> b!6873242 (= lt!2458812 (matchR!8888 r!7292 s!2326))))

(declare-fun lt!2458820 () Unit!160190)

(declare-fun mainMatchTheorem!3806 (Regex!16705 List!66416) Unit!160190)

(assert (=> b!6873242 (= lt!2458820 (mainMatchTheorem!3806 r!7292 s!2326))))

(declare-fun e!4142859 () Bool)

(declare-fun e!4142867 () Bool)

(assert (=> b!6873243 (= e!4142859 e!4142867)))

(declare-fun res!2803026 () Bool)

(assert (=> b!6873243 (=> res!2803026 e!4142867)))

(declare-fun forall!15904 (List!66414 Int) Bool)

(assert (=> b!6873243 (= res!2803026 (not (forall!15904 (exprs!6589 lt!2458813) lambda!389041)))))

(assert (=> b!6873243 (forall!15904 (exprs!6589 lt!2458813) lambda!389041)))

(declare-fun lt!2458821 () Unit!160190)

(declare-fun lemmaContextForallValidExprs!80 (Context!12178 List!66414) Unit!160190)

(assert (=> b!6873243 (= lt!2458821 (lemmaContextForallValidExprs!80 lt!2458813 (exprs!6589 lt!2458813)))))

(declare-fun lambda!389040 () Int)

(declare-fun getWitness!984 (List!66415 Int) Context!12178)

(assert (=> b!6873243 (= lt!2458813 (getWitness!984 zl!343 lambda!389040))))

(declare-fun setIsEmpty!47271 () Bool)

(assert (=> setIsEmpty!47271 setRes!47271))

(declare-fun b!6873244 () Bool)

(declare-fun tp!1887635 () Bool)

(assert (=> b!6873244 (= e!4142861 tp!1887635)))

(declare-fun b!6873245 () Bool)

(declare-fun e!4142868 () Bool)

(declare-fun tp!1887636 () Bool)

(assert (=> b!6873245 (= e!4142868 (and tp_is_empty!42663 tp!1887636))))

(declare-fun res!2803029 () Bool)

(assert (=> start!663280 (=> (not res!2803029) (not e!4142858))))

(declare-fun validRegex!8441 (Regex!16705) Bool)

(assert (=> start!663280 (= res!2803029 (validRegex!8441 r!7292))))

(assert (=> start!663280 e!4142858))

(assert (=> start!663280 e!4142861))

(declare-fun condSetEmpty!47271 () Bool)

(assert (=> start!663280 (= condSetEmpty!47271 (= z!1189 ((as const (Array Context!12178 Bool)) false)))))

(assert (=> start!663280 setRes!47271))

(declare-fun e!4142857 () Bool)

(assert (=> start!663280 e!4142857))

(assert (=> start!663280 e!4142868))

(declare-fun b!6873246 () Bool)

(declare-fun tp!1887634 () Bool)

(assert (=> b!6873246 (= e!4142857 (and (inv!85009 (h!72739 zl!343)) e!4142864 tp!1887634))))

(declare-fun b!6873247 () Bool)

(declare-fun tp!1887641 () Bool)

(assert (=> b!6873247 (= e!4142866 tp!1887641)))

(declare-fun e!4142865 () Bool)

(assert (=> b!6873248 (= e!4142865 e!4142859)))

(declare-fun res!2803025 () Bool)

(assert (=> b!6873248 (=> res!2803025 e!4142859)))

(declare-fun exists!2847 (List!66415 Int) Bool)

(assert (=> b!6873248 (= res!2803025 (not (exists!2847 zl!343 lambda!389040)))))

(assert (=> b!6873248 (exists!2847 zl!343 lambda!389040)))

(declare-fun lt!2458822 () Unit!160190)

(declare-fun lemmaZipperMatchesExistsMatchingContext!104 (List!66415 List!66416) Unit!160190)

(assert (=> b!6873248 (= lt!2458822 (lemmaZipperMatchesExistsMatchingContext!104 zl!343 s!2326))))

(declare-fun b!6873249 () Bool)

(declare-fun res!2803032 () Bool)

(assert (=> b!6873249 (=> res!2803032 e!4142860)))

(assert (=> b!6873249 (= res!2803032 (or (not ((_ is Cons!66291) zl!343)) ((_ is Nil!66292) s!2326) (not (= zl!343 (Cons!66291 (h!72739 zl!343) (t!380158 zl!343))))))))

(declare-fun b!6873250 () Bool)

(declare-fun tp!1887642 () Bool)

(declare-fun tp!1887639 () Bool)

(assert (=> b!6873250 (= e!4142861 (and tp!1887642 tp!1887639))))

(declare-fun b!6873251 () Bool)

(declare-fun res!2803024 () Bool)

(assert (=> b!6873251 (=> res!2803024 e!4142865)))

(assert (=> b!6873251 (= res!2803024 (not (matchZipper!2671 z!1189 s!2326)))))

(declare-fun b!6873252 () Bool)

(assert (=> b!6873252 (= e!4142867 e!4142863)))

(declare-fun res!2803027 () Bool)

(assert (=> b!6873252 (=> res!2803027 e!4142863)))

(declare-fun lt!2458808 () Int)

(declare-fun zipperDepthTotal!454 (List!66415) Int)

(assert (=> b!6873252 (= res!2803027 (<= lt!2458808 (zipperDepthTotal!454 lt!2458810)))))

(assert (=> b!6873252 (= lt!2458810 (Cons!66291 lt!2458813 Nil!66291))))

(declare-fun lt!2458809 () Int)

(assert (=> b!6873252 (< lt!2458809 lt!2458808)))

(assert (=> b!6873252 (= lt!2458808 (zipperDepthTotal!454 zl!343))))

(declare-fun contextDepthTotal!426 (Context!12178) Int)

(assert (=> b!6873252 (= lt!2458809 (contextDepthTotal!426 lt!2458813))))

(declare-fun lt!2458819 () Unit!160190)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!58 (List!66415 Context!12178) Unit!160190)

(assert (=> b!6873252 (= lt!2458819 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!58 zl!343 lt!2458813))))

(declare-fun b!6873253 () Bool)

(declare-fun res!2803028 () Bool)

(assert (=> b!6873253 (=> res!2803028 e!4142860)))

(declare-fun isEmpty!38643 (List!66415) Bool)

(assert (=> b!6873253 (= res!2803028 (isEmpty!38643 (t!380158 zl!343)))))

(declare-fun b!6873254 () Bool)

(declare-fun res!2803030 () Bool)

(assert (=> b!6873254 (=> (not res!2803030) (not e!4142858))))

(declare-fun toList!10489 ((InoxSet Context!12178)) List!66415)

(assert (=> b!6873254 (= res!2803030 (= (toList!10489 z!1189) zl!343))))

(assert (=> b!6873255 (= e!4142860 e!4142865)))

(declare-fun res!2803036 () Bool)

(assert (=> b!6873255 (=> res!2803036 e!4142865)))

(assert (=> b!6873255 (= res!2803036 lt!2458812)))

(assert (=> b!6873255 (= lt!2458812 (exists!2846 lt!2458807 lambda!389039))))

(declare-fun lt!2458811 () Unit!160190)

(declare-fun matchRGenUnionSpec!344 (Regex!16705 List!66414 List!66416) Unit!160190)

(assert (=> b!6873255 (= lt!2458811 (matchRGenUnionSpec!344 r!7292 lt!2458807 s!2326))))

(declare-fun unfocusZipperList!2122 (List!66415) List!66414)

(assert (=> b!6873255 (= lt!2458807 (unfocusZipperList!2122 zl!343))))

(declare-fun b!6873256 () Bool)

(assert (=> b!6873256 (= e!4142862 (isEmpty!38643 (t!380158 zl!343)))))

(declare-fun b!6873257 () Bool)

(declare-fun res!2803034 () Bool)

(assert (=> b!6873257 (=> res!2803034 e!4142865)))

(assert (=> b!6873257 (= res!2803034 (exists!2846 lt!2458807 lambda!389039))))

(assert (= (and start!663280 res!2803029) b!6873254))

(assert (= (and b!6873254 res!2803030) b!6873239))

(assert (= (and b!6873239 res!2803035) b!6873242))

(assert (= (and b!6873242 res!2803031) b!6873256))

(assert (= (and b!6873242 (not res!2803033)) b!6873249))

(assert (= (and b!6873249 (not res!2803032)) b!6873253))

(assert (= (and b!6873253 (not res!2803028)) b!6873255))

(assert (= (and b!6873255 (not res!2803036)) b!6873257))

(assert (= (and b!6873257 (not res!2803034)) b!6873251))

(assert (= (and b!6873251 (not res!2803024)) b!6873248))

(assert (= (and b!6873248 (not res!2803025)) b!6873243))

(assert (= (and b!6873243 (not res!2803026)) b!6873252))

(assert (= (and b!6873252 (not res!2803027)) b!6873241))

(assert (= (and start!663280 ((_ is ElementMatch!16705) r!7292)) b!6873240))

(assert (= (and start!663280 ((_ is Concat!25550) r!7292)) b!6873237))

(assert (= (and start!663280 ((_ is Star!16705) r!7292)) b!6873244))

(assert (= (and start!663280 ((_ is Union!16705) r!7292)) b!6873250))

(assert (= (and start!663280 condSetEmpty!47271) setIsEmpty!47271))

(assert (= (and start!663280 (not condSetEmpty!47271)) setNonEmpty!47271))

(assert (= setNonEmpty!47271 b!6873247))

(assert (= b!6873246 b!6873238))

(assert (= (and start!663280 ((_ is Cons!66291) zl!343)) b!6873246))

(assert (= (and start!663280 ((_ is Cons!66292) s!2326)) b!6873245))

(declare-fun m!7602956 () Bool)

(assert (=> setNonEmpty!47271 m!7602956))

(declare-fun m!7602958 () Bool)

(assert (=> b!6873256 m!7602958))

(declare-fun m!7602960 () Bool)

(assert (=> b!6873241 m!7602960))

(declare-fun m!7602962 () Bool)

(assert (=> b!6873241 m!7602962))

(declare-fun m!7602964 () Bool)

(assert (=> b!6873241 m!7602964))

(declare-fun m!7602966 () Bool)

(assert (=> b!6873241 m!7602966))

(declare-fun m!7602968 () Bool)

(assert (=> b!6873241 m!7602968))

(declare-fun m!7602970 () Bool)

(assert (=> b!6873241 m!7602970))

(declare-fun m!7602972 () Bool)

(assert (=> b!6873241 m!7602972))

(declare-fun m!7602974 () Bool)

(assert (=> b!6873241 m!7602974))

(declare-fun m!7602976 () Bool)

(assert (=> b!6873241 m!7602976))

(declare-fun m!7602978 () Bool)

(assert (=> b!6873243 m!7602978))

(assert (=> b!6873243 m!7602978))

(declare-fun m!7602980 () Bool)

(assert (=> b!6873243 m!7602980))

(declare-fun m!7602982 () Bool)

(assert (=> b!6873243 m!7602982))

(declare-fun m!7602984 () Bool)

(assert (=> b!6873242 m!7602984))

(declare-fun m!7602986 () Bool)

(assert (=> b!6873242 m!7602986))

(declare-fun m!7602988 () Bool)

(assert (=> b!6873242 m!7602988))

(declare-fun m!7602990 () Bool)

(assert (=> b!6873251 m!7602990))

(assert (=> b!6873257 m!7602970))

(declare-fun m!7602992 () Bool)

(assert (=> start!663280 m!7602992))

(declare-fun m!7602994 () Bool)

(assert (=> b!6873254 m!7602994))

(declare-fun m!7602996 () Bool)

(assert (=> b!6873239 m!7602996))

(assert (=> b!6873255 m!7602970))

(declare-fun m!7602998 () Bool)

(assert (=> b!6873255 m!7602998))

(declare-fun m!7603000 () Bool)

(assert (=> b!6873255 m!7603000))

(declare-fun m!7603002 () Bool)

(assert (=> b!6873246 m!7603002))

(assert (=> b!6873253 m!7602958))

(declare-fun m!7603004 () Bool)

(assert (=> b!6873252 m!7603004))

(declare-fun m!7603006 () Bool)

(assert (=> b!6873252 m!7603006))

(declare-fun m!7603008 () Bool)

(assert (=> b!6873252 m!7603008))

(declare-fun m!7603010 () Bool)

(assert (=> b!6873252 m!7603010))

(declare-fun m!7603012 () Bool)

(assert (=> b!6873248 m!7603012))

(assert (=> b!6873248 m!7603012))

(declare-fun m!7603014 () Bool)

(assert (=> b!6873248 m!7603014))

(check-sat (not start!663280) (not b!6873256) (not b!6873237) (not b!6873247) (not b!6873244) (not b!6873241) (not b!6873238) (not setNonEmpty!47271) (not b!6873248) (not b!6873257) (not b!6873246) (not b!6873239) (not b!6873251) (not b!6873250) (not b!6873254) (not b!6873253) (not b!6873245) (not b!6873252) (not b!6873242) (not b!6873243) tp_is_empty!42663 (not b!6873255))
(check-sat)
