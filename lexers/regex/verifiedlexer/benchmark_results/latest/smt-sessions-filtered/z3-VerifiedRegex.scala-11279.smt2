; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!594140 () Bool)

(assert start!594140)

(declare-fun b!5792307 () Bool)

(assert (=> b!5792307 true))

(assert (=> b!5792307 true))

(declare-fun lambda!315932 () Int)

(declare-fun lambda!315931 () Int)

(assert (=> b!5792307 (not (= lambda!315932 lambda!315931))))

(assert (=> b!5792307 true))

(assert (=> b!5792307 true))

(declare-fun lambda!315933 () Int)

(assert (=> b!5792307 (not (= lambda!315933 lambda!315931))))

(assert (=> b!5792307 (not (= lambda!315933 lambda!315932))))

(assert (=> b!5792307 true))

(assert (=> b!5792307 true))

(declare-fun b!5792308 () Bool)

(assert (=> b!5792308 true))

(declare-fun b!5792286 () Bool)

(declare-fun res!2443863 () Bool)

(declare-fun e!3557056 () Bool)

(assert (=> b!5792286 (=> (not res!2443863) (not e!3557056))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31880 0))(
  ( (C!31881 (val!25642 Int)) )
))
(declare-datatypes ((Regex!15805 0))(
  ( (ElementMatch!15805 (c!1025699 C!31880)) (Concat!24650 (regOne!32122 Regex!15805) (regTwo!32122 Regex!15805)) (EmptyExpr!15805) (Star!15805 (reg!16134 Regex!15805)) (EmptyLang!15805) (Union!15805 (regOne!32123 Regex!15805) (regTwo!32123 Regex!15805)) )
))
(declare-datatypes ((List!63714 0))(
  ( (Nil!63590) (Cons!63590 (h!70038 Regex!15805) (t!377061 List!63714)) )
))
(declare-datatypes ((Context!10378 0))(
  ( (Context!10379 (exprs!5689 List!63714)) )
))
(declare-fun z!1189 () (InoxSet Context!10378))

(declare-datatypes ((List!63715 0))(
  ( (Nil!63591) (Cons!63591 (h!70039 Context!10378) (t!377062 List!63715)) )
))
(declare-fun zl!343 () List!63715)

(declare-fun toList!9589 ((InoxSet Context!10378)) List!63715)

(assert (=> b!5792286 (= res!2443863 (= (toList!9589 z!1189) zl!343))))

(declare-fun b!5792287 () Bool)

(declare-fun e!3557059 () Bool)

(declare-fun tp!1597988 () Bool)

(declare-fun tp!1597987 () Bool)

(assert (=> b!5792287 (= e!3557059 (and tp!1597988 tp!1597987))))

(declare-fun b!5792288 () Bool)

(declare-fun res!2443862 () Bool)

(declare-fun e!3557060 () Bool)

(assert (=> b!5792288 (=> res!2443862 e!3557060)))

(get-info :version)

(assert (=> b!5792288 (= res!2443862 (not ((_ is Cons!63590) (exprs!5689 (h!70039 zl!343)))))))

(declare-fun setRes!38944 () Bool)

(declare-fun tp!1597985 () Bool)

(declare-fun setNonEmpty!38944 () Bool)

(declare-fun e!3557058 () Bool)

(declare-fun setElem!38944 () Context!10378)

(declare-fun inv!82759 (Context!10378) Bool)

(assert (=> setNonEmpty!38944 (= setRes!38944 (and tp!1597985 (inv!82759 setElem!38944) e!3557058))))

(declare-fun setRest!38944 () (InoxSet Context!10378))

(assert (=> setNonEmpty!38944 (= z!1189 ((_ map or) (store ((as const (Array Context!10378 Bool)) false) setElem!38944 true) setRest!38944))))

(declare-fun b!5792289 () Bool)

(declare-fun res!2443874 () Bool)

(assert (=> b!5792289 (=> res!2443874 e!3557060)))

(declare-fun r!7292 () Regex!15805)

(declare-fun generalisedConcat!1420 (List!63714) Regex!15805)

(assert (=> b!5792289 (= res!2443874 (not (= r!7292 (generalisedConcat!1420 (exprs!5689 (h!70039 zl!343))))))))

(declare-fun b!5792290 () Bool)

(declare-fun e!3557063 () Bool)

(declare-fun tp_is_empty!40863 () Bool)

(declare-fun tp!1597990 () Bool)

(assert (=> b!5792290 (= e!3557063 (and tp_is_empty!40863 tp!1597990))))

(declare-fun b!5792291 () Bool)

(assert (=> b!5792291 (= e!3557056 (not e!3557060))))

(declare-fun res!2443870 () Bool)

(assert (=> b!5792291 (=> res!2443870 e!3557060)))

(assert (=> b!5792291 (= res!2443870 (not ((_ is Cons!63591) zl!343)))))

(declare-fun lt!2297241 () Bool)

(declare-datatypes ((List!63716 0))(
  ( (Nil!63592) (Cons!63592 (h!70040 C!31880) (t!377063 List!63716)) )
))
(declare-fun s!2326 () List!63716)

(declare-fun matchRSpec!2908 (Regex!15805 List!63716) Bool)

(assert (=> b!5792291 (= lt!2297241 (matchRSpec!2908 r!7292 s!2326))))

(declare-fun matchR!7990 (Regex!15805 List!63716) Bool)

(assert (=> b!5792291 (= lt!2297241 (matchR!7990 r!7292 s!2326))))

(declare-datatypes ((Unit!156870 0))(
  ( (Unit!156871) )
))
(declare-fun lt!2297248 () Unit!156870)

(declare-fun mainMatchTheorem!2908 (Regex!15805 List!63716) Unit!156870)

(assert (=> b!5792291 (= lt!2297248 (mainMatchTheorem!2908 r!7292 s!2326))))

(declare-fun b!5792292 () Bool)

(declare-fun res!2443871 () Bool)

(assert (=> b!5792292 (=> res!2443871 e!3557060)))

(declare-fun isEmpty!35499 (List!63715) Bool)

(assert (=> b!5792292 (= res!2443871 (not (isEmpty!35499 (t!377062 zl!343))))))

(declare-fun b!5792293 () Bool)

(declare-fun e!3557066 () Bool)

(declare-fun e!3557062 () Bool)

(assert (=> b!5792293 (= e!3557066 e!3557062)))

(declare-fun res!2443865 () Bool)

(assert (=> b!5792293 (=> res!2443865 e!3557062)))

(declare-fun lt!2297244 () (InoxSet Context!10378))

(declare-fun lt!2297239 () (InoxSet Context!10378))

(assert (=> b!5792293 (= res!2443865 (not (= lt!2297244 lt!2297239)))))

(declare-fun derivationStepZipperDown!1143 (Regex!15805 Context!10378 C!31880) (InoxSet Context!10378))

(assert (=> b!5792293 (= lt!2297239 (derivationStepZipperDown!1143 r!7292 (Context!10379 Nil!63590) (h!70040 s!2326)))))

(declare-fun derivationStepZipperUp!1069 (Context!10378 C!31880) (InoxSet Context!10378))

(assert (=> b!5792293 (= lt!2297244 (derivationStepZipperUp!1069 (Context!10379 (Cons!63590 r!7292 Nil!63590)) (h!70040 s!2326)))))

(declare-fun lt!2297246 () (InoxSet Context!10378))

(declare-fun derivationStepZipper!1874 ((InoxSet Context!10378) C!31880) (InoxSet Context!10378))

(assert (=> b!5792293 (= lt!2297246 (derivationStepZipper!1874 z!1189 (h!70040 s!2326)))))

(declare-fun b!5792294 () Bool)

(declare-fun e!3557057 () Bool)

(declare-fun e!3557065 () Bool)

(assert (=> b!5792294 (= e!3557057 e!3557065)))

(declare-fun res!2443868 () Bool)

(assert (=> b!5792294 (=> res!2443868 e!3557065)))

(declare-fun lt!2297236 () List!63714)

(assert (=> b!5792294 (= res!2443868 (not (= lt!2297246 (derivationStepZipperDown!1143 (reg!16134 r!7292) (Context!10379 lt!2297236) (h!70040 s!2326)))))))

(declare-fun lambda!315934 () Int)

(declare-fun lt!2297238 () Context!10378)

(declare-fun lt!2297232 () (InoxSet Context!10378))

(declare-fun flatMap!1412 ((InoxSet Context!10378) Int) (InoxSet Context!10378))

(assert (=> b!5792294 (= (flatMap!1412 lt!2297232 lambda!315934) (derivationStepZipperUp!1069 lt!2297238 (h!70040 s!2326)))))

(declare-fun lt!2297245 () Unit!156870)

(declare-fun lemmaFlatMapOnSingletonSet!944 ((InoxSet Context!10378) Context!10378 Int) Unit!156870)

(assert (=> b!5792294 (= lt!2297245 (lemmaFlatMapOnSingletonSet!944 lt!2297232 lt!2297238 lambda!315934))))

(declare-fun lt!2297237 () (InoxSet Context!10378))

(assert (=> b!5792294 (= lt!2297237 (derivationStepZipperUp!1069 lt!2297238 (h!70040 s!2326)))))

(assert (=> b!5792294 (= lt!2297232 (store ((as const (Array Context!10378 Bool)) false) lt!2297238 true))))

(assert (=> b!5792294 (= lt!2297238 (Context!10379 (Cons!63590 (reg!16134 r!7292) lt!2297236)))))

(assert (=> b!5792294 (= lt!2297236 (Cons!63590 r!7292 Nil!63590))))

(declare-fun b!5792295 () Bool)

(declare-fun e!3557067 () Bool)

(declare-fun lt!2297247 () Bool)

(assert (=> b!5792295 (= e!3557067 lt!2297247)))

(declare-fun b!5792296 () Bool)

(assert (=> b!5792296 (= e!3557059 tp_is_empty!40863)))

(declare-fun b!5792297 () Bool)

(declare-fun res!2443869 () Bool)

(assert (=> b!5792297 (=> res!2443869 e!3557060)))

(assert (=> b!5792297 (= res!2443869 (or ((_ is EmptyExpr!15805) r!7292) ((_ is EmptyLang!15805) r!7292) ((_ is ElementMatch!15805) r!7292) ((_ is Union!15805) r!7292) ((_ is Concat!24650) r!7292)))))

(declare-fun b!5792298 () Bool)

(declare-fun tp!1597984 () Bool)

(assert (=> b!5792298 (= e!3557059 tp!1597984)))

(declare-fun b!5792299 () Bool)

(declare-fun res!2443864 () Bool)

(assert (=> b!5792299 (=> res!2443864 e!3557060)))

(declare-fun generalisedUnion!1668 (List!63714) Regex!15805)

(declare-fun unfocusZipperList!1233 (List!63715) List!63714)

(assert (=> b!5792299 (= res!2443864 (not (= r!7292 (generalisedUnion!1668 (unfocusZipperList!1233 zl!343)))))))

(declare-fun b!5792300 () Bool)

(declare-fun res!2443866 () Bool)

(assert (=> b!5792300 (=> res!2443866 e!3557066)))

(assert (=> b!5792300 (= res!2443866 ((_ is Nil!63592) s!2326))))

(declare-fun res!2443867 () Bool)

(assert (=> start!594140 (=> (not res!2443867) (not e!3557056))))

(declare-fun validRegex!7541 (Regex!15805) Bool)

(assert (=> start!594140 (= res!2443867 (validRegex!7541 r!7292))))

(assert (=> start!594140 e!3557056))

(assert (=> start!594140 e!3557059))

(declare-fun condSetEmpty!38944 () Bool)

(assert (=> start!594140 (= condSetEmpty!38944 (= z!1189 ((as const (Array Context!10378 Bool)) false)))))

(assert (=> start!594140 setRes!38944))

(declare-fun e!3557064 () Bool)

(assert (=> start!594140 e!3557064))

(assert (=> start!594140 e!3557063))

(declare-fun b!5792301 () Bool)

(declare-fun tp!1597986 () Bool)

(assert (=> b!5792301 (= e!3557058 tp!1597986)))

(declare-fun b!5792302 () Bool)

(assert (=> b!5792302 (= e!3557065 true)))

(declare-fun lt!2297240 () Bool)

(declare-fun matchZipper!1933 ((InoxSet Context!10378) List!63716) Bool)

(assert (=> b!5792302 (= lt!2297240 (matchZipper!1933 (derivationStepZipper!1874 lt!2297232 (h!70040 s!2326)) (t!377063 s!2326)))))

(declare-fun lt!2297243 () Bool)

(assert (=> b!5792302 (= lt!2297243 (matchZipper!1933 lt!2297232 s!2326))))

(declare-fun setIsEmpty!38944 () Bool)

(assert (=> setIsEmpty!38944 setRes!38944))

(declare-fun b!5792303 () Bool)

(declare-fun e!3557061 () Bool)

(declare-fun tp!1597991 () Bool)

(assert (=> b!5792303 (= e!3557061 tp!1597991)))

(declare-fun b!5792304 () Bool)

(declare-fun tp!1597983 () Bool)

(declare-fun tp!1597989 () Bool)

(assert (=> b!5792304 (= e!3557059 (and tp!1597983 tp!1597989))))

(declare-fun tp!1597992 () Bool)

(declare-fun b!5792305 () Bool)

(assert (=> b!5792305 (= e!3557064 (and (inv!82759 (h!70039 zl!343)) e!3557061 tp!1597992))))

(declare-fun b!5792306 () Bool)

(declare-fun res!2443872 () Bool)

(assert (=> b!5792306 (=> (not res!2443872) (not e!3557056))))

(declare-fun unfocusZipper!1547 (List!63715) Regex!15805)

(assert (=> b!5792306 (= res!2443872 (= r!7292 (unfocusZipper!1547 zl!343)))))

(assert (=> b!5792307 (= e!3557060 e!3557066)))

(declare-fun res!2443860 () Bool)

(assert (=> b!5792307 (=> res!2443860 e!3557066)))

(assert (=> b!5792307 (= res!2443860 (not (= lt!2297241 e!3557067)))))

(declare-fun res!2443861 () Bool)

(assert (=> b!5792307 (=> res!2443861 e!3557067)))

(declare-fun isEmpty!35500 (List!63716) Bool)

(assert (=> b!5792307 (= res!2443861 (isEmpty!35500 s!2326))))

(declare-fun Exists!2905 (Int) Bool)

(assert (=> b!5792307 (= (Exists!2905 lambda!315931) (Exists!2905 lambda!315933))))

(declare-fun lt!2297234 () Unit!156870)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1534 (Regex!15805 Regex!15805 List!63716) Unit!156870)

(assert (=> b!5792307 (= lt!2297234 (lemmaExistCutMatchRandMatchRSpecEquivalent!1534 (reg!16134 r!7292) r!7292 s!2326))))

(assert (=> b!5792307 (= (Exists!2905 lambda!315931) (Exists!2905 lambda!315932))))

(declare-fun lt!2297242 () Unit!156870)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!586 (Regex!15805 List!63716) Unit!156870)

(assert (=> b!5792307 (= lt!2297242 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!586 (reg!16134 r!7292) s!2326))))

(assert (=> b!5792307 (= lt!2297247 (Exists!2905 lambda!315931))))

(declare-datatypes ((tuple2!65804 0))(
  ( (tuple2!65805 (_1!36205 List!63716) (_2!36205 List!63716)) )
))
(declare-datatypes ((Option!15814 0))(
  ( (None!15813) (Some!15813 (v!51873 tuple2!65804)) )
))
(declare-fun isDefined!12517 (Option!15814) Bool)

(declare-fun findConcatSeparation!2228 (Regex!15805 Regex!15805 List!63716 List!63716 List!63716) Option!15814)

(assert (=> b!5792307 (= lt!2297247 (isDefined!12517 (findConcatSeparation!2228 (reg!16134 r!7292) r!7292 Nil!63592 s!2326 s!2326)))))

(declare-fun lt!2297233 () Unit!156870)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1992 (Regex!15805 Regex!15805 List!63716) Unit!156870)

(assert (=> b!5792307 (= lt!2297233 (lemmaFindConcatSeparationEquivalentToExists!1992 (reg!16134 r!7292) r!7292 s!2326))))

(assert (=> b!5792308 (= e!3557062 e!3557057)))

(declare-fun res!2443873 () Bool)

(assert (=> b!5792308 (=> res!2443873 e!3557057)))

(assert (=> b!5792308 (= res!2443873 (not (= lt!2297246 lt!2297239)))))

(assert (=> b!5792308 (= (flatMap!1412 z!1189 lambda!315934) (derivationStepZipperUp!1069 (h!70039 zl!343) (h!70040 s!2326)))))

(declare-fun lt!2297235 () Unit!156870)

(assert (=> b!5792308 (= lt!2297235 (lemmaFlatMapOnSingletonSet!944 z!1189 (h!70039 zl!343) lambda!315934))))

(assert (= (and start!594140 res!2443867) b!5792286))

(assert (= (and b!5792286 res!2443863) b!5792306))

(assert (= (and b!5792306 res!2443872) b!5792291))

(assert (= (and b!5792291 (not res!2443870)) b!5792292))

(assert (= (and b!5792292 (not res!2443871)) b!5792289))

(assert (= (and b!5792289 (not res!2443874)) b!5792288))

(assert (= (and b!5792288 (not res!2443862)) b!5792299))

(assert (= (and b!5792299 (not res!2443864)) b!5792297))

(assert (= (and b!5792297 (not res!2443869)) b!5792307))

(assert (= (and b!5792307 (not res!2443861)) b!5792295))

(assert (= (and b!5792307 (not res!2443860)) b!5792300))

(assert (= (and b!5792300 (not res!2443866)) b!5792293))

(assert (= (and b!5792293 (not res!2443865)) b!5792308))

(assert (= (and b!5792308 (not res!2443873)) b!5792294))

(assert (= (and b!5792294 (not res!2443868)) b!5792302))

(assert (= (and start!594140 ((_ is ElementMatch!15805) r!7292)) b!5792296))

(assert (= (and start!594140 ((_ is Concat!24650) r!7292)) b!5792287))

(assert (= (and start!594140 ((_ is Star!15805) r!7292)) b!5792298))

(assert (= (and start!594140 ((_ is Union!15805) r!7292)) b!5792304))

(assert (= (and start!594140 condSetEmpty!38944) setIsEmpty!38944))

(assert (= (and start!594140 (not condSetEmpty!38944)) setNonEmpty!38944))

(assert (= setNonEmpty!38944 b!5792301))

(assert (= b!5792305 b!5792303))

(assert (= (and start!594140 ((_ is Cons!63591) zl!343)) b!5792305))

(assert (= (and start!594140 ((_ is Cons!63592) s!2326)) b!5792290))

(declare-fun m!6735270 () Bool)

(assert (=> b!5792286 m!6735270))

(declare-fun m!6735272 () Bool)

(assert (=> setNonEmpty!38944 m!6735272))

(declare-fun m!6735274 () Bool)

(assert (=> b!5792305 m!6735274))

(declare-fun m!6735276 () Bool)

(assert (=> b!5792299 m!6735276))

(assert (=> b!5792299 m!6735276))

(declare-fun m!6735278 () Bool)

(assert (=> b!5792299 m!6735278))

(declare-fun m!6735280 () Bool)

(assert (=> b!5792292 m!6735280))

(declare-fun m!6735282 () Bool)

(assert (=> start!594140 m!6735282))

(declare-fun m!6735284 () Bool)

(assert (=> b!5792308 m!6735284))

(declare-fun m!6735286 () Bool)

(assert (=> b!5792308 m!6735286))

(declare-fun m!6735288 () Bool)

(assert (=> b!5792308 m!6735288))

(declare-fun m!6735290 () Bool)

(assert (=> b!5792293 m!6735290))

(declare-fun m!6735292 () Bool)

(assert (=> b!5792293 m!6735292))

(declare-fun m!6735294 () Bool)

(assert (=> b!5792293 m!6735294))

(declare-fun m!6735296 () Bool)

(assert (=> b!5792291 m!6735296))

(declare-fun m!6735298 () Bool)

(assert (=> b!5792291 m!6735298))

(declare-fun m!6735300 () Bool)

(assert (=> b!5792291 m!6735300))

(declare-fun m!6735302 () Bool)

(assert (=> b!5792302 m!6735302))

(assert (=> b!5792302 m!6735302))

(declare-fun m!6735304 () Bool)

(assert (=> b!5792302 m!6735304))

(declare-fun m!6735306 () Bool)

(assert (=> b!5792302 m!6735306))

(declare-fun m!6735308 () Bool)

(assert (=> b!5792294 m!6735308))

(declare-fun m!6735310 () Bool)

(assert (=> b!5792294 m!6735310))

(declare-fun m!6735312 () Bool)

(assert (=> b!5792294 m!6735312))

(declare-fun m!6735314 () Bool)

(assert (=> b!5792294 m!6735314))

(declare-fun m!6735316 () Bool)

(assert (=> b!5792294 m!6735316))

(declare-fun m!6735318 () Bool)

(assert (=> b!5792307 m!6735318))

(declare-fun m!6735320 () Bool)

(assert (=> b!5792307 m!6735320))

(declare-fun m!6735322 () Bool)

(assert (=> b!5792307 m!6735322))

(assert (=> b!5792307 m!6735318))

(declare-fun m!6735324 () Bool)

(assert (=> b!5792307 m!6735324))

(declare-fun m!6735326 () Bool)

(assert (=> b!5792307 m!6735326))

(declare-fun m!6735328 () Bool)

(assert (=> b!5792307 m!6735328))

(assert (=> b!5792307 m!6735318))

(assert (=> b!5792307 m!6735328))

(declare-fun m!6735330 () Bool)

(assert (=> b!5792307 m!6735330))

(declare-fun m!6735332 () Bool)

(assert (=> b!5792307 m!6735332))

(declare-fun m!6735334 () Bool)

(assert (=> b!5792307 m!6735334))

(declare-fun m!6735336 () Bool)

(assert (=> b!5792289 m!6735336))

(declare-fun m!6735338 () Bool)

(assert (=> b!5792306 m!6735338))

(check-sat (not b!5792305) (not b!5792307) (not b!5792299) (not b!5792294) (not b!5792301) (not b!5792290) (not b!5792291) (not start!594140) (not b!5792298) (not b!5792293) (not b!5792287) (not b!5792304) (not b!5792302) tp_is_empty!40863 (not b!5792286) (not setNonEmpty!38944) (not b!5792308) (not b!5792292) (not b!5792303) (not b!5792306) (not b!5792289))
(check-sat)
