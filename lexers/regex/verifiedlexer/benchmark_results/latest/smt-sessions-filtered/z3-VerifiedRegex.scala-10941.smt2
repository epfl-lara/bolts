; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566314 () Bool)

(assert start!566314)

(declare-fun b!5388262 () Bool)

(assert (=> b!5388262 true))

(assert (=> b!5388262 true))

(declare-fun lambda!279608 () Int)

(declare-fun lambda!279607 () Int)

(assert (=> b!5388262 (not (= lambda!279608 lambda!279607))))

(assert (=> b!5388262 true))

(assert (=> b!5388262 true))

(declare-fun b!5388285 () Bool)

(assert (=> b!5388285 true))

(declare-fun bs!1246920 () Bool)

(declare-fun b!5388274 () Bool)

(assert (= bs!1246920 (and b!5388274 b!5388262)))

(declare-datatypes ((C!30528 0))(
  ( (C!30529 (val!24966 Int)) )
))
(declare-datatypes ((Regex!15129 0))(
  ( (ElementMatch!15129 (c!938955 C!30528)) (Concat!23974 (regOne!30770 Regex!15129) (regTwo!30770 Regex!15129)) (EmptyExpr!15129) (Star!15129 (reg!15458 Regex!15129)) (EmptyLang!15129) (Union!15129 (regOne!30771 Regex!15129) (regTwo!30771 Regex!15129)) )
))
(declare-fun r!7292 () Regex!15129)

(declare-fun lt!2195073 () Regex!15129)

(declare-fun lambda!279610 () Int)

(assert (=> bs!1246920 (= (= lt!2195073 (regOne!30770 r!7292)) (= lambda!279610 lambda!279607))))

(assert (=> bs!1246920 (not (= lambda!279610 lambda!279608))))

(assert (=> b!5388274 true))

(assert (=> b!5388274 true))

(assert (=> b!5388274 true))

(declare-fun lambda!279611 () Int)

(assert (=> bs!1246920 (not (= lambda!279611 lambda!279607))))

(assert (=> bs!1246920 (= (= lt!2195073 (regOne!30770 r!7292)) (= lambda!279611 lambda!279608))))

(assert (=> b!5388274 (not (= lambda!279611 lambda!279610))))

(assert (=> b!5388274 true))

(assert (=> b!5388274 true))

(assert (=> b!5388274 true))

(declare-fun bs!1246921 () Bool)

(declare-fun b!5388275 () Bool)

(assert (= bs!1246921 (and b!5388275 b!5388262)))

(declare-datatypes ((List!61686 0))(
  ( (Nil!61562) (Cons!61562 (h!68010 C!30528) (t!374909 List!61686)) )
))
(declare-fun s!2326 () List!61686)

(declare-fun lambda!279612 () Int)

(declare-datatypes ((tuple2!64656 0))(
  ( (tuple2!64657 (_1!35631 List!61686) (_2!35631 List!61686)) )
))
(declare-fun lt!2195107 () tuple2!64656)

(assert (=> bs!1246921 (= (and (= (_1!35631 lt!2195107) s!2326) (= (reg!15458 (regOne!30770 r!7292)) (regOne!30770 r!7292)) (= lt!2195073 (regTwo!30770 r!7292))) (= lambda!279612 lambda!279607))))

(assert (=> bs!1246921 (not (= lambda!279612 lambda!279608))))

(declare-fun bs!1246922 () Bool)

(assert (= bs!1246922 (and b!5388275 b!5388274)))

(assert (=> bs!1246922 (= (and (= (_1!35631 lt!2195107) s!2326) (= (reg!15458 (regOne!30770 r!7292)) lt!2195073) (= lt!2195073 (regTwo!30770 r!7292))) (= lambda!279612 lambda!279610))))

(assert (=> bs!1246922 (not (= lambda!279612 lambda!279611))))

(assert (=> b!5388275 true))

(assert (=> b!5388275 true))

(assert (=> b!5388275 true))

(declare-fun lambda!279613 () Int)

(assert (=> bs!1246921 (not (= lambda!279613 lambda!279608))))

(assert (=> bs!1246922 (not (= lambda!279613 lambda!279610))))

(assert (=> b!5388275 (not (= lambda!279613 lambda!279612))))

(assert (=> bs!1246922 (not (= lambda!279613 lambda!279611))))

(assert (=> bs!1246921 (not (= lambda!279613 lambda!279607))))

(assert (=> b!5388275 true))

(assert (=> b!5388275 true))

(assert (=> b!5388275 true))

(declare-fun lambda!279614 () Int)

(assert (=> bs!1246921 (= (and (= (_1!35631 lt!2195107) s!2326) (= (reg!15458 (regOne!30770 r!7292)) (regOne!30770 r!7292)) (= lt!2195073 (regTwo!30770 r!7292))) (= lambda!279614 lambda!279608))))

(assert (=> b!5388275 (not (= lambda!279614 lambda!279613))))

(assert (=> bs!1246922 (not (= lambda!279614 lambda!279610))))

(assert (=> b!5388275 (not (= lambda!279614 lambda!279612))))

(assert (=> bs!1246922 (= (and (= (_1!35631 lt!2195107) s!2326) (= (reg!15458 (regOne!30770 r!7292)) lt!2195073) (= lt!2195073 (regTwo!30770 r!7292))) (= lambda!279614 lambda!279611))))

(assert (=> bs!1246921 (not (= lambda!279614 lambda!279607))))

(assert (=> b!5388275 true))

(assert (=> b!5388275 true))

(assert (=> b!5388275 true))

(declare-fun b!5388259 () Bool)

(declare-fun res!2289195 () Bool)

(declare-fun e!3341863 () Bool)

(assert (=> b!5388259 (=> res!2289195 e!3341863)))

(declare-datatypes ((List!61687 0))(
  ( (Nil!61563) (Cons!61563 (h!68011 Regex!15129) (t!374910 List!61687)) )
))
(declare-datatypes ((Context!9026 0))(
  ( (Context!9027 (exprs!5013 List!61687)) )
))
(declare-datatypes ((List!61688 0))(
  ( (Nil!61564) (Cons!61564 (h!68012 Context!9026) (t!374911 List!61688)) )
))
(declare-fun zl!343 () List!61688)

(declare-fun generalisedUnion!1058 (List!61687) Regex!15129)

(declare-fun unfocusZipperList!571 (List!61688) List!61687)

(assert (=> b!5388259 (= res!2289195 (not (= r!7292 (generalisedUnion!1058 (unfocusZipperList!571 zl!343)))))))

(declare-fun b!5388260 () Bool)

(declare-fun e!3341854 () Bool)

(declare-fun e!3341865 () Bool)

(assert (=> b!5388260 (= e!3341854 e!3341865)))

(declare-fun res!2289219 () Bool)

(assert (=> b!5388260 (=> res!2289219 e!3341865)))

(declare-fun lt!2195103 () Regex!15129)

(assert (=> b!5388260 (= res!2289219 (not (= r!7292 lt!2195103)))))

(assert (=> b!5388260 (= lt!2195103 (Concat!23974 lt!2195073 (regTwo!30770 r!7292)))))

(declare-fun b!5388261 () Bool)

(declare-fun e!3341861 () Bool)

(assert (=> b!5388261 (= e!3341865 e!3341861)))

(declare-fun res!2289196 () Bool)

(assert (=> b!5388261 (=> res!2289196 e!3341861)))

(declare-fun lt!2195105 () Context!9026)

(declare-fun lt!2195070 () Regex!15129)

(declare-fun unfocusZipper!871 (List!61688) Regex!15129)

(assert (=> b!5388261 (= res!2289196 (not (= (unfocusZipper!871 (Cons!61564 lt!2195105 Nil!61564)) lt!2195070)))))

(assert (=> b!5388261 (= lt!2195070 (Concat!23974 (reg!15458 (regOne!30770 r!7292)) lt!2195103))))

(declare-fun e!3341852 () Bool)

(assert (=> b!5388262 (= e!3341863 e!3341852)))

(declare-fun res!2289187 () Bool)

(assert (=> b!5388262 (=> res!2289187 e!3341852)))

(declare-fun lt!2195116 () Bool)

(declare-fun lt!2195059 () Bool)

(get-info :version)

(assert (=> b!5388262 (= res!2289187 (or (not (= lt!2195116 lt!2195059)) ((_ is Nil!61562) s!2326)))))

(declare-fun Exists!2310 (Int) Bool)

(assert (=> b!5388262 (= (Exists!2310 lambda!279607) (Exists!2310 lambda!279608))))

(declare-datatypes ((Unit!154034 0))(
  ( (Unit!154035) )
))
(declare-fun lt!2195085 () Unit!154034)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!964 (Regex!15129 Regex!15129 List!61686) Unit!154034)

(assert (=> b!5388262 (= lt!2195085 (lemmaExistCutMatchRandMatchRSpecEquivalent!964 (regOne!30770 r!7292) (regTwo!30770 r!7292) s!2326))))

(assert (=> b!5388262 (= lt!2195059 (Exists!2310 lambda!279607))))

(declare-datatypes ((Option!15240 0))(
  ( (None!15239) (Some!15239 (v!51268 tuple2!64656)) )
))
(declare-fun isDefined!11943 (Option!15240) Bool)

(declare-fun findConcatSeparation!1654 (Regex!15129 Regex!15129 List!61686 List!61686 List!61686) Option!15240)

(assert (=> b!5388262 (= lt!2195059 (isDefined!11943 (findConcatSeparation!1654 (regOne!30770 r!7292) (regTwo!30770 r!7292) Nil!61562 s!2326 s!2326)))))

(declare-fun lt!2195092 () Unit!154034)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1418 (Regex!15129 Regex!15129 List!61686) Unit!154034)

(assert (=> b!5388262 (= lt!2195092 (lemmaFindConcatSeparationEquivalentToExists!1418 (regOne!30770 r!7292) (regTwo!30770 r!7292) s!2326))))

(declare-fun e!3341849 () Bool)

(declare-fun e!3341864 () Bool)

(declare-fun tp!1492393 () Bool)

(declare-fun b!5388263 () Bool)

(declare-fun inv!81069 (Context!9026) Bool)

(assert (=> b!5388263 (= e!3341864 (and (inv!81069 (h!68012 zl!343)) e!3341849 tp!1492393))))

(declare-fun b!5388264 () Bool)

(declare-fun e!3341869 () Bool)

(declare-fun e!3341866 () Bool)

(assert (=> b!5388264 (= e!3341869 e!3341866)))

(declare-fun res!2289201 () Bool)

(assert (=> b!5388264 (=> res!2289201 e!3341866)))

(declare-fun lt!2195080 () List!61686)

(assert (=> b!5388264 (= res!2289201 (not (= lt!2195080 s!2326)))))

(declare-fun lt!2195067 () List!61686)

(assert (=> b!5388264 (= lt!2195080 lt!2195067)))

(declare-fun lt!2195090 () tuple2!64656)

(declare-fun lt!2195096 () List!61686)

(declare-fun ++!13443 (List!61686 List!61686) List!61686)

(assert (=> b!5388264 (= lt!2195067 (++!13443 (_1!35631 lt!2195090) lt!2195096))))

(declare-fun lt!2195062 () List!61686)

(assert (=> b!5388264 (= lt!2195080 (++!13443 lt!2195062 (_2!35631 lt!2195107)))))

(assert (=> b!5388264 (= lt!2195096 (++!13443 (_2!35631 lt!2195090) (_2!35631 lt!2195107)))))

(declare-fun lt!2195098 () Unit!154034)

(declare-fun lemmaConcatAssociativity!2826 (List!61686 List!61686 List!61686) Unit!154034)

(assert (=> b!5388264 (= lt!2195098 (lemmaConcatAssociativity!2826 (_1!35631 lt!2195090) (_2!35631 lt!2195090) (_2!35631 lt!2195107)))))

(declare-fun b!5388265 () Bool)

(declare-fun e!3341859 () Bool)

(declare-fun tp!1492400 () Bool)

(declare-fun tp!1492396 () Bool)

(assert (=> b!5388265 (= e!3341859 (and tp!1492400 tp!1492396))))

(declare-fun b!5388266 () Bool)

(declare-fun e!3341857 () Unit!154034)

(declare-fun Unit!154036 () Unit!154034)

(assert (=> b!5388266 (= e!3341857 Unit!154036)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2195110 () (InoxSet Context!9026))

(declare-fun lt!2195102 () (InoxSet Context!9026))

(declare-fun lt!2195077 () Unit!154034)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!366 ((InoxSet Context!9026) (InoxSet Context!9026) List!61686) Unit!154034)

(assert (=> b!5388266 (= lt!2195077 (lemmaZipperConcatMatchesSameAsBothZippers!366 lt!2195110 lt!2195102 (t!374909 s!2326)))))

(declare-fun res!2289203 () Bool)

(declare-fun matchZipper!1373 ((InoxSet Context!9026) List!61686) Bool)

(assert (=> b!5388266 (= res!2289203 (matchZipper!1373 lt!2195110 (t!374909 s!2326)))))

(declare-fun e!3341851 () Bool)

(assert (=> b!5388266 (=> res!2289203 e!3341851)))

(assert (=> b!5388266 (= (matchZipper!1373 ((_ map or) lt!2195110 lt!2195102) (t!374909 s!2326)) e!3341851)))

(declare-fun b!5388267 () Bool)

(declare-fun res!2289199 () Bool)

(declare-fun e!3341871 () Bool)

(assert (=> b!5388267 (=> res!2289199 e!3341871)))

(declare-fun matchR!7314 (Regex!15129 List!61686) Bool)

(assert (=> b!5388267 (= res!2289199 (not (matchR!7314 lt!2195073 (_1!35631 lt!2195107))))))

(declare-fun b!5388268 () Bool)

(declare-fun res!2289214 () Bool)

(assert (=> b!5388268 (=> res!2289214 e!3341863)))

(assert (=> b!5388268 (= res!2289214 (or ((_ is EmptyExpr!15129) r!7292) ((_ is EmptyLang!15129) r!7292) ((_ is ElementMatch!15129) r!7292) ((_ is Union!15129) r!7292) (not ((_ is Concat!23974) r!7292))))))

(declare-fun b!5388269 () Bool)

(assert (=> b!5388269 (= e!3341851 (matchZipper!1373 lt!2195102 (t!374909 s!2326)))))

(declare-fun b!5388270 () Bool)

(declare-fun tp!1492399 () Bool)

(assert (=> b!5388270 (= e!3341849 tp!1492399)))

(declare-fun b!5388271 () Bool)

(declare-fun res!2289198 () Bool)

(assert (=> b!5388271 (=> res!2289198 e!3341854)))

(declare-fun lt!2195066 () Regex!15129)

(assert (=> b!5388271 (= res!2289198 (not (= lt!2195066 r!7292)))))

(declare-fun b!5388272 () Bool)

(declare-fun e!3341862 () Bool)

(declare-fun nullable!5298 (Regex!15129) Bool)

(assert (=> b!5388272 (= e!3341862 (nullable!5298 (regOne!30770 (regOne!30770 r!7292))))))

(declare-fun b!5388273 () Bool)

(declare-fun res!2289191 () Bool)

(assert (=> b!5388273 (=> res!2289191 e!3341866)))

(assert (=> b!5388273 (= res!2289191 (not (matchR!7314 lt!2195073 (_2!35631 lt!2195090))))))

(declare-fun e!3341848 () Bool)

(assert (=> b!5388274 (= e!3341848 e!3341871)))

(declare-fun res!2289193 () Bool)

(assert (=> b!5388274 (=> res!2289193 e!3341871)))

(assert (=> b!5388274 (= res!2289193 (not (= (++!13443 (_1!35631 lt!2195107) (_2!35631 lt!2195107)) s!2326)))))

(declare-fun lt!2195065 () Option!15240)

(declare-fun get!21202 (Option!15240) tuple2!64656)

(assert (=> b!5388274 (= lt!2195107 (get!21202 lt!2195065))))

(assert (=> b!5388274 (= (Exists!2310 lambda!279610) (Exists!2310 lambda!279611))))

(declare-fun lt!2195101 () Unit!154034)

(assert (=> b!5388274 (= lt!2195101 (lemmaExistCutMatchRandMatchRSpecEquivalent!964 lt!2195073 (regTwo!30770 r!7292) s!2326))))

(assert (=> b!5388274 (= (isDefined!11943 lt!2195065) (Exists!2310 lambda!279610))))

(assert (=> b!5388274 (= lt!2195065 (findConcatSeparation!1654 lt!2195073 (regTwo!30770 r!7292) Nil!61562 s!2326 s!2326))))

(declare-fun lt!2195109 () Unit!154034)

(assert (=> b!5388274 (= lt!2195109 (lemmaFindConcatSeparationEquivalentToExists!1418 lt!2195073 (regTwo!30770 r!7292) s!2326))))

(assert (=> b!5388275 (= e!3341871 e!3341869)))

(declare-fun res!2289207 () Bool)

(assert (=> b!5388275 (=> res!2289207 e!3341869)))

(assert (=> b!5388275 (= res!2289207 (not (= (_1!35631 lt!2195107) lt!2195062)))))

(assert (=> b!5388275 (= lt!2195062 (++!13443 (_1!35631 lt!2195090) (_2!35631 lt!2195090)))))

(declare-fun lt!2195112 () Option!15240)

(assert (=> b!5388275 (= lt!2195090 (get!21202 lt!2195112))))

(assert (=> b!5388275 (= (Exists!2310 lambda!279612) (Exists!2310 lambda!279614))))

(declare-fun lt!2195072 () Unit!154034)

(assert (=> b!5388275 (= lt!2195072 (lemmaExistCutMatchRandMatchRSpecEquivalent!964 (reg!15458 (regOne!30770 r!7292)) lt!2195073 (_1!35631 lt!2195107)))))

(assert (=> b!5388275 (= (Exists!2310 lambda!279612) (Exists!2310 lambda!279613))))

(declare-fun lt!2195064 () Unit!154034)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!394 (Regex!15129 List!61686) Unit!154034)

(assert (=> b!5388275 (= lt!2195064 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!394 (reg!15458 (regOne!30770 r!7292)) (_1!35631 lt!2195107)))))

(assert (=> b!5388275 (= (isDefined!11943 lt!2195112) (Exists!2310 lambda!279612))))

(assert (=> b!5388275 (= lt!2195112 (findConcatSeparation!1654 (reg!15458 (regOne!30770 r!7292)) lt!2195073 Nil!61562 (_1!35631 lt!2195107) (_1!35631 lt!2195107)))))

(declare-fun lt!2195068 () Unit!154034)

(assert (=> b!5388275 (= lt!2195068 (lemmaFindConcatSeparationEquivalentToExists!1418 (reg!15458 (regOne!30770 r!7292)) lt!2195073 (_1!35631 lt!2195107)))))

(declare-fun matchRSpec!2232 (Regex!15129 List!61686) Bool)

(assert (=> b!5388275 (matchRSpec!2232 lt!2195073 (_1!35631 lt!2195107))))

(declare-fun lt!2195074 () Unit!154034)

(declare-fun mainMatchTheorem!2232 (Regex!15129 List!61686) Unit!154034)

(assert (=> b!5388275 (= lt!2195074 (mainMatchTheorem!2232 lt!2195073 (_1!35631 lt!2195107)))))

(declare-fun b!5388276 () Bool)

(declare-fun e!3341872 () Bool)

(declare-fun e!3341850 () Bool)

(assert (=> b!5388276 (= e!3341872 e!3341850)))

(declare-fun res!2289208 () Bool)

(assert (=> b!5388276 (=> res!2289208 e!3341850)))

(declare-fun lt!2195058 () (InoxSet Context!9026))

(assert (=> b!5388276 (= res!2289208 (not (= lt!2195110 lt!2195058)))))

(declare-fun lt!2195091 () Context!9026)

(declare-fun derivationStepZipperDown!577 (Regex!15129 Context!9026 C!30528) (InoxSet Context!9026))

(assert (=> b!5388276 (= lt!2195058 (derivationStepZipperDown!577 (reg!15458 (regOne!30770 r!7292)) lt!2195091 (h!68010 s!2326)))))

(declare-fun lt!2195084 () List!61687)

(assert (=> b!5388276 (= lt!2195091 (Context!9027 lt!2195084))))

(assert (=> b!5388276 (= lt!2195084 (Cons!61563 lt!2195073 (t!374910 (exprs!5013 (h!68012 zl!343)))))))

(assert (=> b!5388276 (= lt!2195073 (Star!15129 (reg!15458 (regOne!30770 r!7292))))))

(declare-fun b!5388277 () Bool)

(declare-fun e!3341860 () Bool)

(declare-fun tp_is_empty!39511 () Bool)

(declare-fun tp!1492397 () Bool)

(assert (=> b!5388277 (= e!3341860 (and tp_is_empty!39511 tp!1492397))))

(declare-fun b!5388278 () Bool)

(declare-fun res!2289211 () Bool)

(assert (=> b!5388278 (=> res!2289211 e!3341871)))

(declare-fun isEmpty!33560 (List!61686) Bool)

(assert (=> b!5388278 (= res!2289211 (isEmpty!33560 (_1!35631 lt!2195107)))))

(declare-fun b!5388279 () Bool)

(declare-fun e!3341870 () Bool)

(declare-fun lt!2195100 () Bool)

(assert (=> b!5388279 (= e!3341870 (or (not lt!2195116) lt!2195100))))

(declare-fun e!3341856 () Bool)

(declare-fun setElem!34991 () Context!9026)

(declare-fun tp!1492392 () Bool)

(declare-fun setRes!34991 () Bool)

(declare-fun setNonEmpty!34991 () Bool)

(assert (=> setNonEmpty!34991 (= setRes!34991 (and tp!1492392 (inv!81069 setElem!34991) e!3341856))))

(declare-fun z!1189 () (InoxSet Context!9026))

(declare-fun setRest!34991 () (InoxSet Context!9026))

(assert (=> setNonEmpty!34991 (= z!1189 ((_ map or) (store ((as const (Array Context!9026 Bool)) false) setElem!34991 true) setRest!34991))))

(declare-fun b!5388280 () Bool)

(declare-fun res!2289188 () Bool)

(assert (=> b!5388280 (=> res!2289188 e!3341854)))

(declare-fun lt!2195086 () (InoxSet Context!9026))

(declare-fun lt!2195093 () (InoxSet Context!9026))

(assert (=> b!5388280 (= res!2289188 (not (= (matchZipper!1373 lt!2195086 s!2326) (matchZipper!1373 lt!2195093 (t!374909 s!2326)))))))

(declare-fun b!5388281 () Bool)

(declare-fun e!3341867 () Bool)

(assert (=> b!5388281 (= e!3341861 e!3341867)))

(declare-fun res!2289210 () Bool)

(assert (=> b!5388281 (=> res!2289210 e!3341867)))

(declare-fun lt!2195060 () List!61688)

(assert (=> b!5388281 (= res!2289210 (not (= (unfocusZipper!871 lt!2195060) (reg!15458 (regOne!30770 r!7292)))))))

(declare-fun lt!2195063 () Context!9026)

(assert (=> b!5388281 (= lt!2195060 (Cons!61564 lt!2195063 Nil!61564))))

(declare-fun lambda!279609 () Int)

(declare-fun lt!2195079 () (InoxSet Context!9026))

(declare-fun flatMap!856 ((InoxSet Context!9026) Int) (InoxSet Context!9026))

(declare-fun derivationStepZipperUp!501 (Context!9026 C!30528) (InoxSet Context!9026))

(assert (=> b!5388281 (= (flatMap!856 lt!2195079 lambda!279609) (derivationStepZipperUp!501 lt!2195091 (h!68010 s!2326)))))

(declare-fun lt!2195114 () Unit!154034)

(declare-fun lemmaFlatMapOnSingletonSet!388 ((InoxSet Context!9026) Context!9026 Int) Unit!154034)

(assert (=> b!5388281 (= lt!2195114 (lemmaFlatMapOnSingletonSet!388 lt!2195079 lt!2195091 lambda!279609))))

(declare-fun lt!2195087 () (InoxSet Context!9026))

(assert (=> b!5388281 (= (flatMap!856 lt!2195087 lambda!279609) (derivationStepZipperUp!501 lt!2195063 (h!68010 s!2326)))))

(declare-fun lt!2195069 () Unit!154034)

(assert (=> b!5388281 (= lt!2195069 (lemmaFlatMapOnSingletonSet!388 lt!2195087 lt!2195063 lambda!279609))))

(declare-fun lt!2195111 () (InoxSet Context!9026))

(assert (=> b!5388281 (= lt!2195111 (derivationStepZipperUp!501 lt!2195091 (h!68010 s!2326)))))

(declare-fun lt!2195076 () (InoxSet Context!9026))

(assert (=> b!5388281 (= lt!2195076 (derivationStepZipperUp!501 lt!2195063 (h!68010 s!2326)))))

(assert (=> b!5388281 (= lt!2195079 (store ((as const (Array Context!9026 Bool)) false) lt!2195091 true))))

(assert (=> b!5388281 (= lt!2195087 (store ((as const (Array Context!9026 Bool)) false) lt!2195063 true))))

(declare-fun lt!2195088 () List!61687)

(assert (=> b!5388281 (= lt!2195063 (Context!9027 lt!2195088))))

(assert (=> b!5388281 (= lt!2195088 (Cons!61563 (reg!15458 (regOne!30770 r!7292)) Nil!61563))))

(declare-fun b!5388282 () Bool)

(declare-fun tp!1492394 () Bool)

(declare-fun tp!1492395 () Bool)

(assert (=> b!5388282 (= e!3341859 (and tp!1492394 tp!1492395))))

(declare-fun b!5388283 () Bool)

(declare-fun res!2289200 () Bool)

(assert (=> b!5388283 (=> res!2289200 e!3341866)))

(assert (=> b!5388283 (= res!2289200 (not (matchR!7314 (reg!15458 (regOne!30770 r!7292)) (_1!35631 lt!2195090))))))

(declare-fun b!5388284 () Bool)

(declare-fun Unit!154037 () Unit!154034)

(assert (=> b!5388284 (= e!3341857 Unit!154037)))

(declare-fun res!2289213 () Bool)

(declare-fun e!3341858 () Bool)

(assert (=> start!566314 (=> (not res!2289213) (not e!3341858))))

(declare-fun validRegex!6865 (Regex!15129) Bool)

(assert (=> start!566314 (= res!2289213 (validRegex!6865 r!7292))))

(assert (=> start!566314 e!3341858))

(assert (=> start!566314 e!3341859))

(declare-fun condSetEmpty!34991 () Bool)

(assert (=> start!566314 (= condSetEmpty!34991 (= z!1189 ((as const (Array Context!9026 Bool)) false)))))

(assert (=> start!566314 setRes!34991))

(assert (=> start!566314 e!3341864))

(assert (=> start!566314 e!3341860))

(assert (=> b!5388285 (= e!3341852 e!3341872)))

(declare-fun res!2289197 () Bool)

(assert (=> b!5388285 (=> res!2289197 e!3341872)))

(assert (=> b!5388285 (= res!2289197 (or (and ((_ is ElementMatch!15129) (regOne!30770 r!7292)) (= (c!938955 (regOne!30770 r!7292)) (h!68010 s!2326))) ((_ is Union!15129) (regOne!30770 r!7292))))))

(declare-fun lt!2195113 () Unit!154034)

(assert (=> b!5388285 (= lt!2195113 e!3341857)))

(declare-fun c!938954 () Bool)

(assert (=> b!5388285 (= c!938954 (nullable!5298 (h!68011 (exprs!5013 (h!68012 zl!343)))))))

(assert (=> b!5388285 (= (flatMap!856 z!1189 lambda!279609) (derivationStepZipperUp!501 (h!68012 zl!343) (h!68010 s!2326)))))

(declare-fun lt!2195095 () Unit!154034)

(assert (=> b!5388285 (= lt!2195095 (lemmaFlatMapOnSingletonSet!388 z!1189 (h!68012 zl!343) lambda!279609))))

(declare-fun lt!2195106 () Context!9026)

(assert (=> b!5388285 (= lt!2195102 (derivationStepZipperUp!501 lt!2195106 (h!68010 s!2326)))))

(assert (=> b!5388285 (= lt!2195110 (derivationStepZipperDown!577 (h!68011 (exprs!5013 (h!68012 zl!343))) lt!2195106 (h!68010 s!2326)))))

(assert (=> b!5388285 (= lt!2195106 (Context!9027 (t!374910 (exprs!5013 (h!68012 zl!343)))))))

(declare-fun lt!2195115 () (InoxSet Context!9026))

(assert (=> b!5388285 (= lt!2195115 (derivationStepZipperUp!501 (Context!9027 (Cons!61563 (h!68011 (exprs!5013 (h!68012 zl!343))) (t!374910 (exprs!5013 (h!68012 zl!343))))) (h!68010 s!2326)))))

(declare-fun b!5388286 () Bool)

(declare-fun res!2289215 () Bool)

(assert (=> b!5388286 (=> res!2289215 e!3341872)))

(assert (=> b!5388286 (= res!2289215 e!3341862)))

(declare-fun res!2289221 () Bool)

(assert (=> b!5388286 (=> (not res!2289221) (not e!3341862))))

(assert (=> b!5388286 (= res!2289221 ((_ is Concat!23974) (regOne!30770 r!7292)))))

(declare-fun b!5388287 () Bool)

(declare-fun res!2289192 () Bool)

(assert (=> b!5388287 (=> res!2289192 e!3341871)))

(assert (=> b!5388287 (= res!2289192 (not (matchR!7314 (regTwo!30770 r!7292) (_2!35631 lt!2195107))))))

(declare-fun b!5388288 () Bool)

(declare-fun res!2289216 () Bool)

(assert (=> b!5388288 (=> res!2289216 e!3341863)))

(assert (=> b!5388288 (= res!2289216 (not ((_ is Cons!61563) (exprs!5013 (h!68012 zl!343)))))))

(declare-fun b!5388289 () Bool)

(declare-fun tp!1492401 () Bool)

(assert (=> b!5388289 (= e!3341859 tp!1492401)))

(declare-fun b!5388290 () Bool)

(declare-fun res!2289190 () Bool)

(assert (=> b!5388290 (=> res!2289190 e!3341872)))

(assert (=> b!5388290 (= res!2289190 (or ((_ is Concat!23974) (regOne!30770 r!7292)) (not ((_ is Star!15129) (regOne!30770 r!7292)))))))

(declare-fun b!5388291 () Bool)

(declare-fun res!2289217 () Bool)

(assert (=> b!5388291 (=> (not res!2289217) (not e!3341858))))

(declare-fun toList!8913 ((InoxSet Context!9026)) List!61688)

(assert (=> b!5388291 (= res!2289217 (= (toList!8913 z!1189) zl!343))))

(declare-fun b!5388292 () Bool)

(declare-fun res!2289206 () Bool)

(assert (=> b!5388292 (=> res!2289206 e!3341863)))

(declare-fun generalisedConcat!798 (List!61687) Regex!15129)

(assert (=> b!5388292 (= res!2289206 (not (= r!7292 (generalisedConcat!798 (exprs!5013 (h!68012 zl!343))))))))

(declare-fun b!5388293 () Bool)

(declare-fun tp!1492398 () Bool)

(assert (=> b!5388293 (= e!3341856 tp!1492398)))

(declare-fun b!5388294 () Bool)

(declare-fun e!3341855 () Bool)

(assert (=> b!5388294 (= e!3341855 e!3341848)))

(declare-fun res!2289202 () Bool)

(assert (=> b!5388294 (=> res!2289202 e!3341848)))

(assert (=> b!5388294 (= res!2289202 (not lt!2195116))))

(assert (=> b!5388294 e!3341870))

(declare-fun res!2289209 () Bool)

(assert (=> b!5388294 (=> (not res!2289209) (not e!3341870))))

(declare-fun lt!2195108 () Bool)

(assert (=> b!5388294 (= res!2289209 (= lt!2195108 (matchRSpec!2232 lt!2195070 s!2326)))))

(assert (=> b!5388294 (= lt!2195108 (matchR!7314 lt!2195070 s!2326))))

(declare-fun lt!2195071 () Unit!154034)

(assert (=> b!5388294 (= lt!2195071 (mainMatchTheorem!2232 lt!2195070 s!2326))))

(declare-fun b!5388295 () Bool)

(declare-fun e!3341868 () Bool)

(assert (=> b!5388295 (= e!3341868 (not e!3341863))))

(declare-fun res!2289204 () Bool)

(assert (=> b!5388295 (=> res!2289204 e!3341863)))

(assert (=> b!5388295 (= res!2289204 (not ((_ is Cons!61564) zl!343)))))

(assert (=> b!5388295 (= lt!2195116 lt!2195100)))

(assert (=> b!5388295 (= lt!2195100 (matchRSpec!2232 r!7292 s!2326))))

(assert (=> b!5388295 (= lt!2195116 (matchR!7314 r!7292 s!2326))))

(declare-fun lt!2195083 () Unit!154034)

(assert (=> b!5388295 (= lt!2195083 (mainMatchTheorem!2232 r!7292 s!2326))))

(declare-fun b!5388296 () Bool)

(assert (=> b!5388296 (= e!3341859 tp_is_empty!39511)))

(declare-fun b!5388297 () Bool)

(assert (=> b!5388297 (= e!3341858 e!3341868)))

(declare-fun res!2289220 () Bool)

(assert (=> b!5388297 (=> (not res!2289220) (not e!3341868))))

(assert (=> b!5388297 (= res!2289220 (= r!7292 lt!2195066))))

(assert (=> b!5388297 (= lt!2195066 (unfocusZipper!871 zl!343))))

(declare-fun b!5388298 () Bool)

(assert (=> b!5388298 (= e!3341866 true)))

(declare-fun e!3341853 () Bool)

(assert (=> b!5388298 e!3341853))

(declare-fun res!2289205 () Bool)

(assert (=> b!5388298 (=> (not res!2289205) (not e!3341853))))

(assert (=> b!5388298 (= res!2289205 (matchR!7314 lt!2195070 lt!2195067))))

(declare-fun lt!2195081 () Unit!154034)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!176 (Regex!15129 Regex!15129 List!61686 List!61686) Unit!154034)

(assert (=> b!5388298 (= lt!2195081 (lemmaTwoRegexMatchThenConcatMatchesConcatString!176 (reg!15458 (regOne!30770 r!7292)) lt!2195103 (_1!35631 lt!2195090) lt!2195096))))

(declare-fun ++!13444 (List!61687 List!61687) List!61687)

(assert (=> b!5388298 (matchZipper!1373 (store ((as const (Array Context!9026 Bool)) false) (Context!9027 (++!13444 lt!2195088 lt!2195084)) true) lt!2195067)))

(declare-fun lambda!279615 () Int)

(declare-fun lt!2195082 () Unit!154034)

(declare-fun lemmaConcatPreservesForall!160 (List!61687 List!61687 Int) Unit!154034)

(assert (=> b!5388298 (= lt!2195082 (lemmaConcatPreservesForall!160 lt!2195088 lt!2195084 lambda!279615))))

(declare-fun lt!2195089 () Unit!154034)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!16 (Context!9026 Context!9026 List!61686 List!61686) Unit!154034)

(assert (=> b!5388298 (= lt!2195089 (lemmaConcatenateContextMatchesConcatOfStrings!16 lt!2195063 lt!2195091 (_1!35631 lt!2195090) lt!2195096))))

(assert (=> b!5388298 (matchZipper!1373 lt!2195079 lt!2195096)))

(declare-fun lt!2195099 () List!61688)

(declare-fun lt!2195061 () Unit!154034)

(declare-fun theoremZipperRegexEquiv!459 ((InoxSet Context!9026) List!61688 Regex!15129 List!61686) Unit!154034)

(assert (=> b!5388298 (= lt!2195061 (theoremZipperRegexEquiv!459 lt!2195079 lt!2195099 lt!2195103 lt!2195096))))

(assert (=> b!5388298 (matchZipper!1373 lt!2195087 (_1!35631 lt!2195090))))

(declare-fun lt!2195104 () Unit!154034)

(assert (=> b!5388298 (= lt!2195104 (theoremZipperRegexEquiv!459 lt!2195087 lt!2195060 (reg!15458 (regOne!30770 r!7292)) (_1!35631 lt!2195090)))))

(assert (=> b!5388298 (matchR!7314 lt!2195103 lt!2195096)))

(declare-fun lt!2195078 () Unit!154034)

(assert (=> b!5388298 (= lt!2195078 (lemmaTwoRegexMatchThenConcatMatchesConcatString!176 lt!2195073 (regTwo!30770 r!7292) (_2!35631 lt!2195090) (_2!35631 lt!2195107)))))

(assert (=> b!5388298 (matchR!7314 lt!2195073 lt!2195062)))

(declare-fun lt!2195097 () Unit!154034)

(declare-fun lemmaStarApp!50 (Regex!15129 List!61686 List!61686) Unit!154034)

(assert (=> b!5388298 (= lt!2195097 (lemmaStarApp!50 (reg!15458 (regOne!30770 r!7292)) (_1!35631 lt!2195090) (_2!35631 lt!2195090)))))

(declare-fun b!5388299 () Bool)

(declare-fun res!2289194 () Bool)

(assert (=> b!5388299 (=> res!2289194 e!3341863)))

(declare-fun isEmpty!33561 (List!61688) Bool)

(assert (=> b!5388299 (= res!2289194 (not (isEmpty!33561 (t!374911 zl!343))))))

(declare-fun setIsEmpty!34991 () Bool)

(assert (=> setIsEmpty!34991 setRes!34991))

(declare-fun b!5388300 () Bool)

(assert (=> b!5388300 (= e!3341853 lt!2195108)))

(declare-fun b!5388301 () Bool)

(assert (=> b!5388301 (= e!3341867 e!3341855)))

(declare-fun res!2289218 () Bool)

(assert (=> b!5388301 (=> res!2289218 e!3341855)))

(assert (=> b!5388301 (= res!2289218 (not (= (unfocusZipper!871 lt!2195099) lt!2195103)))))

(assert (=> b!5388301 (= lt!2195099 (Cons!61564 lt!2195091 Nil!61564))))

(declare-fun b!5388302 () Bool)

(declare-fun res!2289189 () Bool)

(assert (=> b!5388302 (=> res!2289189 e!3341852)))

(declare-fun isEmpty!33562 (List!61687) Bool)

(assert (=> b!5388302 (= res!2289189 (isEmpty!33562 (t!374910 (exprs!5013 (h!68012 zl!343)))))))

(declare-fun b!5388303 () Bool)

(assert (=> b!5388303 (= e!3341850 e!3341854)))

(declare-fun res!2289212 () Bool)

(assert (=> b!5388303 (=> res!2289212 e!3341854)))

(assert (=> b!5388303 (= res!2289212 (not (= lt!2195093 lt!2195058)))))

(assert (=> b!5388303 (= (flatMap!856 lt!2195086 lambda!279609) (derivationStepZipperUp!501 lt!2195105 (h!68010 s!2326)))))

(declare-fun lt!2195075 () Unit!154034)

(assert (=> b!5388303 (= lt!2195075 (lemmaFlatMapOnSingletonSet!388 lt!2195086 lt!2195105 lambda!279609))))

(declare-fun lt!2195094 () (InoxSet Context!9026))

(assert (=> b!5388303 (= lt!2195094 (derivationStepZipperUp!501 lt!2195105 (h!68010 s!2326)))))

(declare-fun derivationStepZipper!1368 ((InoxSet Context!9026) C!30528) (InoxSet Context!9026))

(assert (=> b!5388303 (= lt!2195093 (derivationStepZipper!1368 lt!2195086 (h!68010 s!2326)))))

(assert (=> b!5388303 (= lt!2195086 (store ((as const (Array Context!9026 Bool)) false) lt!2195105 true))))

(assert (=> b!5388303 (= lt!2195105 (Context!9027 (Cons!61563 (reg!15458 (regOne!30770 r!7292)) lt!2195084)))))

(assert (= (and start!566314 res!2289213) b!5388291))

(assert (= (and b!5388291 res!2289217) b!5388297))

(assert (= (and b!5388297 res!2289220) b!5388295))

(assert (= (and b!5388295 (not res!2289204)) b!5388299))

(assert (= (and b!5388299 (not res!2289194)) b!5388292))

(assert (= (and b!5388292 (not res!2289206)) b!5388288))

(assert (= (and b!5388288 (not res!2289216)) b!5388259))

(assert (= (and b!5388259 (not res!2289195)) b!5388268))

(assert (= (and b!5388268 (not res!2289214)) b!5388262))

(assert (= (and b!5388262 (not res!2289187)) b!5388302))

(assert (= (and b!5388302 (not res!2289189)) b!5388285))

(assert (= (and b!5388285 c!938954) b!5388266))

(assert (= (and b!5388285 (not c!938954)) b!5388284))

(assert (= (and b!5388266 (not res!2289203)) b!5388269))

(assert (= (and b!5388285 (not res!2289197)) b!5388286))

(assert (= (and b!5388286 res!2289221) b!5388272))

(assert (= (and b!5388286 (not res!2289215)) b!5388290))

(assert (= (and b!5388290 (not res!2289190)) b!5388276))

(assert (= (and b!5388276 (not res!2289208)) b!5388303))

(assert (= (and b!5388303 (not res!2289212)) b!5388280))

(assert (= (and b!5388280 (not res!2289188)) b!5388271))

(assert (= (and b!5388271 (not res!2289198)) b!5388260))

(assert (= (and b!5388260 (not res!2289219)) b!5388261))

(assert (= (and b!5388261 (not res!2289196)) b!5388281))

(assert (= (and b!5388281 (not res!2289210)) b!5388301))

(assert (= (and b!5388301 (not res!2289218)) b!5388294))

(assert (= (and b!5388294 res!2289209) b!5388279))

(assert (= (and b!5388294 (not res!2289202)) b!5388274))

(assert (= (and b!5388274 (not res!2289193)) b!5388267))

(assert (= (and b!5388267 (not res!2289199)) b!5388287))

(assert (= (and b!5388287 (not res!2289192)) b!5388278))

(assert (= (and b!5388278 (not res!2289211)) b!5388275))

(assert (= (and b!5388275 (not res!2289207)) b!5388264))

(assert (= (and b!5388264 (not res!2289201)) b!5388283))

(assert (= (and b!5388283 (not res!2289200)) b!5388273))

(assert (= (and b!5388273 (not res!2289191)) b!5388298))

(assert (= (and b!5388298 res!2289205) b!5388300))

(assert (= (and start!566314 ((_ is ElementMatch!15129) r!7292)) b!5388296))

(assert (= (and start!566314 ((_ is Concat!23974) r!7292)) b!5388265))

(assert (= (and start!566314 ((_ is Star!15129) r!7292)) b!5388289))

(assert (= (and start!566314 ((_ is Union!15129) r!7292)) b!5388282))

(assert (= (and start!566314 condSetEmpty!34991) setIsEmpty!34991))

(assert (= (and start!566314 (not condSetEmpty!34991)) setNonEmpty!34991))

(assert (= setNonEmpty!34991 b!5388293))

(assert (= b!5388263 b!5388270))

(assert (= (and start!566314 ((_ is Cons!61564) zl!343)) b!5388263))

(assert (= (and start!566314 ((_ is Cons!61562) s!2326)) b!5388277))

(declare-fun m!6414054 () Bool)

(assert (=> b!5388287 m!6414054))

(declare-fun m!6414056 () Bool)

(assert (=> b!5388302 m!6414056))

(declare-fun m!6414058 () Bool)

(assert (=> b!5388267 m!6414058))

(declare-fun m!6414060 () Bool)

(assert (=> b!5388298 m!6414060))

(declare-fun m!6414062 () Bool)

(assert (=> b!5388298 m!6414062))

(declare-fun m!6414064 () Bool)

(assert (=> b!5388298 m!6414064))

(declare-fun m!6414066 () Bool)

(assert (=> b!5388298 m!6414066))

(declare-fun m!6414068 () Bool)

(assert (=> b!5388298 m!6414068))

(declare-fun m!6414070 () Bool)

(assert (=> b!5388298 m!6414070))

(declare-fun m!6414072 () Bool)

(assert (=> b!5388298 m!6414072))

(declare-fun m!6414074 () Bool)

(assert (=> b!5388298 m!6414074))

(declare-fun m!6414076 () Bool)

(assert (=> b!5388298 m!6414076))

(declare-fun m!6414078 () Bool)

(assert (=> b!5388298 m!6414078))

(declare-fun m!6414080 () Bool)

(assert (=> b!5388298 m!6414080))

(assert (=> b!5388298 m!6414060))

(declare-fun m!6414082 () Bool)

(assert (=> b!5388298 m!6414082))

(declare-fun m!6414084 () Bool)

(assert (=> b!5388298 m!6414084))

(declare-fun m!6414086 () Bool)

(assert (=> b!5388298 m!6414086))

(declare-fun m!6414088 () Bool)

(assert (=> b!5388298 m!6414088))

(declare-fun m!6414090 () Bool)

(assert (=> b!5388261 m!6414090))

(declare-fun m!6414092 () Bool)

(assert (=> b!5388269 m!6414092))

(declare-fun m!6414094 () Bool)

(assert (=> b!5388291 m!6414094))

(declare-fun m!6414096 () Bool)

(assert (=> b!5388294 m!6414096))

(declare-fun m!6414098 () Bool)

(assert (=> b!5388294 m!6414098))

(declare-fun m!6414100 () Bool)

(assert (=> b!5388294 m!6414100))

(declare-fun m!6414102 () Bool)

(assert (=> b!5388276 m!6414102))

(declare-fun m!6414104 () Bool)

(assert (=> b!5388285 m!6414104))

(declare-fun m!6414106 () Bool)

(assert (=> b!5388285 m!6414106))

(declare-fun m!6414108 () Bool)

(assert (=> b!5388285 m!6414108))

(declare-fun m!6414110 () Bool)

(assert (=> b!5388285 m!6414110))

(declare-fun m!6414112 () Bool)

(assert (=> b!5388285 m!6414112))

(declare-fun m!6414114 () Bool)

(assert (=> b!5388285 m!6414114))

(declare-fun m!6414116 () Bool)

(assert (=> b!5388285 m!6414116))

(declare-fun m!6414118 () Bool)

(assert (=> setNonEmpty!34991 m!6414118))

(declare-fun m!6414120 () Bool)

(assert (=> b!5388292 m!6414120))

(declare-fun m!6414122 () Bool)

(assert (=> b!5388273 m!6414122))

(declare-fun m!6414124 () Bool)

(assert (=> b!5388275 m!6414124))

(declare-fun m!6414126 () Bool)

(assert (=> b!5388275 m!6414126))

(declare-fun m!6414128 () Bool)

(assert (=> b!5388275 m!6414128))

(declare-fun m!6414130 () Bool)

(assert (=> b!5388275 m!6414130))

(declare-fun m!6414132 () Bool)

(assert (=> b!5388275 m!6414132))

(declare-fun m!6414134 () Bool)

(assert (=> b!5388275 m!6414134))

(declare-fun m!6414136 () Bool)

(assert (=> b!5388275 m!6414136))

(declare-fun m!6414138 () Bool)

(assert (=> b!5388275 m!6414138))

(assert (=> b!5388275 m!6414132))

(declare-fun m!6414140 () Bool)

(assert (=> b!5388275 m!6414140))

(declare-fun m!6414142 () Bool)

(assert (=> b!5388275 m!6414142))

(declare-fun m!6414144 () Bool)

(assert (=> b!5388275 m!6414144))

(declare-fun m!6414146 () Bool)

(assert (=> b!5388275 m!6414146))

(assert (=> b!5388275 m!6414132))

(declare-fun m!6414148 () Bool)

(assert (=> b!5388281 m!6414148))

(declare-fun m!6414150 () Bool)

(assert (=> b!5388281 m!6414150))

(declare-fun m!6414152 () Bool)

(assert (=> b!5388281 m!6414152))

(declare-fun m!6414154 () Bool)

(assert (=> b!5388281 m!6414154))

(declare-fun m!6414156 () Bool)

(assert (=> b!5388281 m!6414156))

(declare-fun m!6414158 () Bool)

(assert (=> b!5388281 m!6414158))

(declare-fun m!6414160 () Bool)

(assert (=> b!5388281 m!6414160))

(declare-fun m!6414162 () Bool)

(assert (=> b!5388281 m!6414162))

(declare-fun m!6414164 () Bool)

(assert (=> b!5388281 m!6414164))

(declare-fun m!6414166 () Bool)

(assert (=> b!5388262 m!6414166))

(declare-fun m!6414168 () Bool)

(assert (=> b!5388262 m!6414168))

(declare-fun m!6414170 () Bool)

(assert (=> b!5388262 m!6414170))

(declare-fun m!6414172 () Bool)

(assert (=> b!5388262 m!6414172))

(declare-fun m!6414174 () Bool)

(assert (=> b!5388262 m!6414174))

(assert (=> b!5388262 m!6414172))

(assert (=> b!5388262 m!6414168))

(declare-fun m!6414176 () Bool)

(assert (=> b!5388262 m!6414176))

(declare-fun m!6414178 () Bool)

(assert (=> b!5388272 m!6414178))

(declare-fun m!6414180 () Bool)

(assert (=> b!5388280 m!6414180))

(declare-fun m!6414182 () Bool)

(assert (=> b!5388280 m!6414182))

(declare-fun m!6414184 () Bool)

(assert (=> b!5388264 m!6414184))

(declare-fun m!6414186 () Bool)

(assert (=> b!5388264 m!6414186))

(declare-fun m!6414188 () Bool)

(assert (=> b!5388264 m!6414188))

(declare-fun m!6414190 () Bool)

(assert (=> b!5388264 m!6414190))

(declare-fun m!6414192 () Bool)

(assert (=> b!5388263 m!6414192))

(declare-fun m!6414194 () Bool)

(assert (=> b!5388266 m!6414194))

(declare-fun m!6414196 () Bool)

(assert (=> b!5388266 m!6414196))

(declare-fun m!6414198 () Bool)

(assert (=> b!5388266 m!6414198))

(declare-fun m!6414200 () Bool)

(assert (=> b!5388295 m!6414200))

(declare-fun m!6414202 () Bool)

(assert (=> b!5388295 m!6414202))

(declare-fun m!6414204 () Bool)

(assert (=> b!5388295 m!6414204))

(declare-fun m!6414206 () Bool)

(assert (=> b!5388278 m!6414206))

(declare-fun m!6414208 () Bool)

(assert (=> b!5388274 m!6414208))

(declare-fun m!6414210 () Bool)

(assert (=> b!5388274 m!6414210))

(declare-fun m!6414212 () Bool)

(assert (=> b!5388274 m!6414212))

(declare-fun m!6414214 () Bool)

(assert (=> b!5388274 m!6414214))

(declare-fun m!6414216 () Bool)

(assert (=> b!5388274 m!6414216))

(declare-fun m!6414218 () Bool)

(assert (=> b!5388274 m!6414218))

(declare-fun m!6414220 () Bool)

(assert (=> b!5388274 m!6414220))

(declare-fun m!6414222 () Bool)

(assert (=> b!5388274 m!6414222))

(assert (=> b!5388274 m!6414216))

(declare-fun m!6414224 () Bool)

(assert (=> start!566314 m!6414224))

(declare-fun m!6414226 () Bool)

(assert (=> b!5388303 m!6414226))

(declare-fun m!6414228 () Bool)

(assert (=> b!5388303 m!6414228))

(declare-fun m!6414230 () Bool)

(assert (=> b!5388303 m!6414230))

(declare-fun m!6414232 () Bool)

(assert (=> b!5388303 m!6414232))

(declare-fun m!6414234 () Bool)

(assert (=> b!5388303 m!6414234))

(declare-fun m!6414236 () Bool)

(assert (=> b!5388297 m!6414236))

(declare-fun m!6414238 () Bool)

(assert (=> b!5388259 m!6414238))

(assert (=> b!5388259 m!6414238))

(declare-fun m!6414240 () Bool)

(assert (=> b!5388259 m!6414240))

(declare-fun m!6414242 () Bool)

(assert (=> b!5388283 m!6414242))

(declare-fun m!6414244 () Bool)

(assert (=> b!5388301 m!6414244))

(declare-fun m!6414246 () Bool)

(assert (=> b!5388299 m!6414246))

(check-sat (not b!5388303) (not b!5388274) (not start!566314) (not b!5388291) (not b!5388259) (not b!5388297) (not setNonEmpty!34991) (not b!5388293) (not b!5388263) (not b!5388301) (not b!5388283) (not b!5388280) (not b!5388266) (not b!5388270) (not b!5388273) (not b!5388261) (not b!5388265) (not b!5388278) (not b!5388295) (not b!5388281) (not b!5388272) (not b!5388276) (not b!5388294) (not b!5388299) (not b!5388282) (not b!5388292) (not b!5388264) (not b!5388285) (not b!5388267) (not b!5388298) (not b!5388269) (not b!5388262) (not b!5388287) (not b!5388302) (not b!5388289) tp_is_empty!39511 (not b!5388277) (not b!5388275))
(check-sat)
