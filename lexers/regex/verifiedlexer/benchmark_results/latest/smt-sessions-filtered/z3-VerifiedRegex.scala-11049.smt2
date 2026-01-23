; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572814 () Bool)

(assert start!572814)

(declare-fun b!5474037 () Bool)

(assert (=> b!5474037 true))

(assert (=> b!5474037 true))

(declare-fun lambda!291565 () Int)

(declare-fun lambda!291564 () Int)

(assert (=> b!5474037 (not (= lambda!291565 lambda!291564))))

(assert (=> b!5474037 true))

(assert (=> b!5474037 true))

(declare-fun lambda!291566 () Int)

(assert (=> b!5474037 (not (= lambda!291566 lambda!291564))))

(assert (=> b!5474037 (not (= lambda!291566 lambda!291565))))

(assert (=> b!5474037 true))

(assert (=> b!5474037 true))

(declare-fun b!5474035 () Bool)

(assert (=> b!5474035 true))

(declare-fun b!5474034 () Bool)

(declare-fun e!3388392 () Bool)

(declare-fun e!3388395 () Bool)

(assert (=> b!5474034 (= e!3388392 e!3388395)))

(declare-fun res!2333063 () Bool)

(assert (=> b!5474034 (=> res!2333063 e!3388395)))

(declare-fun lt!2236024 () Bool)

(assert (=> b!5474034 (= res!2333063 (not lt!2236024))))

(declare-fun e!3388398 () Bool)

(declare-fun e!3388409 () Bool)

(assert (=> b!5474035 (= e!3388398 e!3388409)))

(declare-fun res!2333049 () Bool)

(assert (=> b!5474035 (=> res!2333049 e!3388409)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30960 0))(
  ( (C!30961 (val!25182 Int)) )
))
(declare-datatypes ((Regex!15345 0))(
  ( (ElementMatch!15345 (c!956399 C!30960)) (Concat!24190 (regOne!31202 Regex!15345) (regTwo!31202 Regex!15345)) (EmptyExpr!15345) (Star!15345 (reg!15674 Regex!15345)) (EmptyLang!15345) (Union!15345 (regOne!31203 Regex!15345) (regTwo!31203 Regex!15345)) )
))
(declare-datatypes ((List!62334 0))(
  ( (Nil!62210) (Cons!62210 (h!68658 Regex!15345) (t!375563 List!62334)) )
))
(declare-datatypes ((Context!9458 0))(
  ( (Context!9459 (exprs!5229 List!62334)) )
))
(declare-fun lt!2236012 () (InoxSet Context!9458))

(declare-fun lt!2236028 () (InoxSet Context!9458))

(assert (=> b!5474035 (= res!2333049 (not (= lt!2236012 lt!2236028)))))

(declare-datatypes ((List!62335 0))(
  ( (Nil!62211) (Cons!62211 (h!68659 C!30960) (t!375564 List!62335)) )
))
(declare-fun s!2326 () List!62335)

(declare-fun lambda!291567 () Int)

(declare-fun z!1189 () (InoxSet Context!9458))

(declare-datatypes ((List!62336 0))(
  ( (Nil!62212) (Cons!62212 (h!68660 Context!9458) (t!375565 List!62336)) )
))
(declare-fun zl!343 () List!62336)

(declare-fun flatMap!1048 ((InoxSet Context!9458) Int) (InoxSet Context!9458))

(declare-fun derivationStepZipperUp!697 (Context!9458 C!30960) (InoxSet Context!9458))

(assert (=> b!5474035 (= (flatMap!1048 z!1189 lambda!291567) (derivationStepZipperUp!697 (h!68660 zl!343) (h!68659 s!2326)))))

(declare-datatypes ((Unit!155140 0))(
  ( (Unit!155141) )
))
(declare-fun lt!2236021 () Unit!155140)

(declare-fun lemmaFlatMapOnSingletonSet!580 ((InoxSet Context!9458) Context!9458 Int) Unit!155140)

(assert (=> b!5474035 (= lt!2236021 (lemmaFlatMapOnSingletonSet!580 z!1189 (h!68660 zl!343) lambda!291567))))

(declare-fun b!5474036 () Bool)

(declare-fun res!2333037 () Bool)

(declare-fun e!3388401 () Bool)

(assert (=> b!5474036 (=> res!2333037 e!3388401)))

(declare-fun r!7292 () Regex!15345)

(declare-fun generalisedUnion!1274 (List!62334) Regex!15345)

(declare-fun unfocusZipperList!787 (List!62336) List!62334)

(assert (=> b!5474036 (= res!2333037 (not (= r!7292 (generalisedUnion!1274 (unfocusZipperList!787 zl!343)))))))

(declare-fun e!3388400 () Bool)

(assert (=> b!5474037 (= e!3388401 e!3388400)))

(declare-fun res!2333050 () Bool)

(assert (=> b!5474037 (=> res!2333050 e!3388400)))

(declare-fun lt!2236027 () Bool)

(declare-fun e!3388405 () Bool)

(assert (=> b!5474037 (= res!2333050 (not (= lt!2236027 e!3388405)))))

(declare-fun res!2333058 () Bool)

(assert (=> b!5474037 (=> res!2333058 e!3388405)))

(declare-fun isEmpty!34170 (List!62335) Bool)

(assert (=> b!5474037 (= res!2333058 (isEmpty!34170 s!2326))))

(declare-fun Exists!2524 (Int) Bool)

(assert (=> b!5474037 (= (Exists!2524 lambda!291564) (Exists!2524 lambda!291566))))

(declare-fun lt!2236007 () Unit!155140)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1174 (Regex!15345 Regex!15345 List!62335) Unit!155140)

(assert (=> b!5474037 (= lt!2236007 (lemmaExistCutMatchRandMatchRSpecEquivalent!1174 (reg!15674 r!7292) r!7292 s!2326))))

(assert (=> b!5474037 (= (Exists!2524 lambda!291564) (Exists!2524 lambda!291565))))

(declare-fun lt!2236014 () Unit!155140)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!498 (Regex!15345 List!62335) Unit!155140)

(assert (=> b!5474037 (= lt!2236014 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!498 (reg!15674 r!7292) s!2326))))

(declare-fun lt!2236015 () Bool)

(assert (=> b!5474037 (= lt!2236015 (Exists!2524 lambda!291564))))

(declare-datatypes ((tuple2!65084 0))(
  ( (tuple2!65085 (_1!35845 List!62335) (_2!35845 List!62335)) )
))
(declare-datatypes ((Option!15454 0))(
  ( (None!15453) (Some!15453 (v!51482 tuple2!65084)) )
))
(declare-fun lt!2236034 () Option!15454)

(declare-fun isDefined!12157 (Option!15454) Bool)

(assert (=> b!5474037 (= lt!2236015 (isDefined!12157 lt!2236034))))

(declare-fun findConcatSeparation!1868 (Regex!15345 Regex!15345 List!62335 List!62335 List!62335) Option!15454)

(assert (=> b!5474037 (= lt!2236034 (findConcatSeparation!1868 (reg!15674 r!7292) r!7292 Nil!62211 s!2326 s!2326))))

(declare-fun lt!2236011 () Unit!155140)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1632 (Regex!15345 Regex!15345 List!62335) Unit!155140)

(assert (=> b!5474037 (= lt!2236011 (lemmaFindConcatSeparationEquivalentToExists!1632 (reg!15674 r!7292) r!7292 s!2326))))

(declare-fun b!5474038 () Bool)

(declare-fun res!2333051 () Bool)

(assert (=> b!5474038 (=> res!2333051 e!3388401)))

(declare-fun generalisedConcat!1014 (List!62334) Regex!15345)

(assert (=> b!5474038 (= res!2333051 (not (= r!7292 (generalisedConcat!1014 (exprs!5229 (h!68660 zl!343))))))))

(declare-fun b!5474039 () Bool)

(declare-fun e!3388393 () Bool)

(assert (=> b!5474039 (= e!3388393 (= lt!2236015 (Exists!2524 lambda!291564)))))

(declare-fun b!5474040 () Bool)

(declare-fun e!3388402 () Bool)

(declare-fun tp!1504895 () Bool)

(assert (=> b!5474040 (= e!3388402 tp!1504895)))

(declare-fun res!2333039 () Bool)

(declare-fun e!3388397 () Bool)

(assert (=> start!572814 (=> (not res!2333039) (not e!3388397))))

(declare-fun validRegex!7081 (Regex!15345) Bool)

(assert (=> start!572814 (= res!2333039 (validRegex!7081 r!7292))))

(assert (=> start!572814 e!3388397))

(declare-fun e!3388394 () Bool)

(assert (=> start!572814 e!3388394))

(declare-fun condSetEmpty!35947 () Bool)

(assert (=> start!572814 (= condSetEmpty!35947 (= z!1189 ((as const (Array Context!9458 Bool)) false)))))

(declare-fun setRes!35947 () Bool)

(assert (=> start!572814 setRes!35947))

(declare-fun e!3388391 () Bool)

(assert (=> start!572814 e!3388391))

(declare-fun e!3388399 () Bool)

(assert (=> start!572814 e!3388399))

(declare-fun b!5474041 () Bool)

(assert (=> b!5474041 (= e!3388405 lt!2236015)))

(declare-fun b!5474042 () Bool)

(declare-fun tp!1504901 () Bool)

(declare-fun tp!1504896 () Bool)

(assert (=> b!5474042 (= e!3388394 (and tp!1504901 tp!1504896))))

(declare-fun b!5474043 () Bool)

(declare-fun e!3388408 () Bool)

(assert (=> b!5474043 (= e!3388408 true)))

(declare-fun lt!2236029 () List!62336)

(declare-fun lt!2236019 () (InoxSet Context!9458))

(declare-fun toList!9129 ((InoxSet Context!9458)) List!62336)

(assert (=> b!5474043 (= lt!2236029 (toList!9129 lt!2236019))))

(declare-fun b!5474044 () Bool)

(declare-fun res!2333062 () Bool)

(assert (=> b!5474044 (=> res!2333062 e!3388408)))

(declare-fun lt!2236017 () tuple2!65084)

(declare-fun matchR!7530 (Regex!15345 List!62335) Bool)

(assert (=> b!5474044 (= res!2333062 (not (matchR!7530 (reg!15674 r!7292) (_1!35845 lt!2236017))))))

(declare-fun b!5474045 () Bool)

(declare-fun res!2333047 () Bool)

(assert (=> b!5474045 (=> res!2333047 e!3388401)))

(get-info :version)

(assert (=> b!5474045 (= res!2333047 (or ((_ is EmptyExpr!15345) r!7292) ((_ is EmptyLang!15345) r!7292) ((_ is ElementMatch!15345) r!7292) ((_ is Union!15345) r!7292) ((_ is Concat!24190) r!7292)))))

(declare-fun b!5474046 () Bool)

(declare-fun res!2333056 () Bool)

(assert (=> b!5474046 (=> (not res!2333056) (not e!3388397))))

(assert (=> b!5474046 (= res!2333056 (= (toList!9129 z!1189) zl!343))))

(declare-fun e!3388410 () Bool)

(declare-fun setNonEmpty!35947 () Bool)

(declare-fun setElem!35947 () Context!9458)

(declare-fun tp!1504892 () Bool)

(declare-fun inv!81609 (Context!9458) Bool)

(assert (=> setNonEmpty!35947 (= setRes!35947 (and tp!1504892 (inv!81609 setElem!35947) e!3388410))))

(declare-fun setRest!35947 () (InoxSet Context!9458))

(assert (=> setNonEmpty!35947 (= z!1189 ((_ map or) (store ((as const (Array Context!9458 Bool)) false) setElem!35947 true) setRest!35947))))

(declare-fun b!5474047 () Bool)

(declare-fun e!3388406 () Bool)

(assert (=> b!5474047 (= e!3388397 e!3388406)))

(declare-fun res!2333054 () Bool)

(assert (=> b!5474047 (=> (not res!2333054) (not e!3388406))))

(declare-fun lt!2236025 () Regex!15345)

(assert (=> b!5474047 (= res!2333054 (= r!7292 lt!2236025))))

(declare-fun unfocusZipper!1087 (List!62336) Regex!15345)

(assert (=> b!5474047 (= lt!2236025 (unfocusZipper!1087 zl!343))))

(declare-fun b!5474048 () Bool)

(declare-fun e!3388407 () Bool)

(assert (=> b!5474048 (= e!3388407 e!3388408)))

(declare-fun res!2333041 () Bool)

(assert (=> b!5474048 (=> res!2333041 e!3388408)))

(declare-fun ++!13682 (List!62335 List!62335) List!62335)

(assert (=> b!5474048 (= res!2333041 (not (= s!2326 (++!13682 (_1!35845 lt!2236017) (_2!35845 lt!2236017)))))))

(declare-fun get!21448 (Option!15454) tuple2!65084)

(assert (=> b!5474048 (= lt!2236017 (get!21448 lt!2236034))))

(declare-fun b!5474049 () Bool)

(declare-fun res!2333036 () Bool)

(assert (=> b!5474049 (=> res!2333036 e!3388401)))

(assert (=> b!5474049 (= res!2333036 (not ((_ is Cons!62210) (exprs!5229 (h!68660 zl!343)))))))

(declare-fun b!5474050 () Bool)

(declare-fun tp!1504894 () Bool)

(declare-fun tp!1504893 () Bool)

(assert (=> b!5474050 (= e!3388394 (and tp!1504894 tp!1504893))))

(declare-fun b!5474051 () Bool)

(assert (=> b!5474051 (= e!3388400 e!3388398)))

(declare-fun res!2333040 () Bool)

(assert (=> b!5474051 (=> res!2333040 e!3388398)))

(declare-fun lt!2236030 () (InoxSet Context!9458))

(assert (=> b!5474051 (= res!2333040 (not (= lt!2236030 lt!2236028)))))

(declare-fun derivationStepZipperDown!771 (Regex!15345 Context!9458 C!30960) (InoxSet Context!9458))

(assert (=> b!5474051 (= lt!2236028 (derivationStepZipperDown!771 r!7292 (Context!9459 Nil!62210) (h!68659 s!2326)))))

(assert (=> b!5474051 (= lt!2236030 (derivationStepZipperUp!697 (Context!9459 (Cons!62210 r!7292 Nil!62210)) (h!68659 s!2326)))))

(declare-fun derivationStepZipper!1540 ((InoxSet Context!9458) C!30960) (InoxSet Context!9458))

(assert (=> b!5474051 (= lt!2236012 (derivationStepZipper!1540 z!1189 (h!68659 s!2326)))))

(declare-fun b!5474052 () Bool)

(declare-fun e!3388396 () Bool)

(declare-fun e!3388403 () Bool)

(assert (=> b!5474052 (= e!3388396 e!3388403)))

(declare-fun res!2333064 () Bool)

(assert (=> b!5474052 (=> res!2333064 e!3388403)))

(declare-fun lt!2236009 () Context!9458)

(declare-fun lt!2236023 () Regex!15345)

(assert (=> b!5474052 (= res!2333064 (not (= (unfocusZipper!1087 (Cons!62212 lt!2236009 Nil!62212)) lt!2236023)))))

(assert (=> b!5474052 (= lt!2236023 (Concat!24190 (reg!15674 r!7292) r!7292))))

(declare-fun b!5474053 () Bool)

(declare-fun tp_is_empty!39943 () Bool)

(assert (=> b!5474053 (= e!3388394 tp_is_empty!39943)))

(declare-fun b!5474054 () Bool)

(declare-fun res!2333045 () Bool)

(assert (=> b!5474054 (=> res!2333045 e!3388408)))

(assert (=> b!5474054 (= res!2333045 (not (validRegex!7081 (reg!15674 r!7292))))))

(declare-fun b!5474055 () Bool)

(declare-fun tp!1504898 () Bool)

(assert (=> b!5474055 (= e!3388410 tp!1504898)))

(declare-fun b!5474056 () Bool)

(declare-fun res!2333059 () Bool)

(declare-fun e!3388404 () Bool)

(assert (=> b!5474056 (=> res!2333059 e!3388404)))

(declare-fun lt!2236006 () Context!9458)

(assert (=> b!5474056 (= res!2333059 (not (= (unfocusZipper!1087 (Cons!62212 lt!2236006 Nil!62212)) r!7292)))))

(declare-fun b!5474057 () Bool)

(declare-fun res!2333060 () Bool)

(assert (=> b!5474057 (=> res!2333060 e!3388401)))

(declare-fun isEmpty!34171 (List!62336) Bool)

(assert (=> b!5474057 (= res!2333060 (not (isEmpty!34171 (t!375565 zl!343))))))

(declare-fun b!5474058 () Bool)

(assert (=> b!5474058 (= e!3388395 e!3388393)))

(declare-fun res!2333055 () Bool)

(assert (=> b!5474058 (=> (not res!2333055) (not e!3388393))))

(assert (=> b!5474058 (= res!2333055 (= (Exists!2524 lambda!291564) (Exists!2524 lambda!291565)))))

(declare-fun b!5474059 () Bool)

(declare-fun res!2333052 () Bool)

(assert (=> b!5474059 (=> res!2333052 e!3388404)))

(declare-fun lt!2236016 () Context!9458)

(assert (=> b!5474059 (= res!2333052 (not (= (unfocusZipper!1087 (Cons!62212 lt!2236016 Nil!62212)) (reg!15674 r!7292))))))

(declare-fun setIsEmpty!35947 () Bool)

(assert (=> setIsEmpty!35947 setRes!35947))

(declare-fun b!5474060 () Bool)

(declare-fun res!2333057 () Bool)

(assert (=> b!5474060 (=> res!2333057 e!3388400)))

(assert (=> b!5474060 (= res!2333057 ((_ is Nil!62211) s!2326))))

(declare-fun b!5474061 () Bool)

(declare-fun res!2333046 () Bool)

(assert (=> b!5474061 (=> res!2333046 e!3388408)))

(assert (=> b!5474061 (= res!2333046 (not (matchR!7530 r!7292 (_2!35845 lt!2236017))))))

(declare-fun b!5474062 () Bool)

(declare-fun tp!1504897 () Bool)

(assert (=> b!5474062 (= e!3388394 tp!1504897)))

(declare-fun b!5474063 () Bool)

(assert (=> b!5474063 (= e!3388409 e!3388396)))

(declare-fun res!2333053 () Bool)

(assert (=> b!5474063 (=> res!2333053 e!3388396)))

(assert (=> b!5474063 (= res!2333053 (not (= lt!2236012 (derivationStepZipperDown!771 (reg!15674 r!7292) lt!2236006 (h!68659 s!2326)))))))

(declare-fun lt!2236031 () List!62334)

(assert (=> b!5474063 (= lt!2236006 (Context!9459 lt!2236031))))

(declare-fun lt!2236032 () (InoxSet Context!9458))

(assert (=> b!5474063 (= (flatMap!1048 lt!2236032 lambda!291567) (derivationStepZipperUp!697 lt!2236009 (h!68659 s!2326)))))

(declare-fun lt!2236035 () Unit!155140)

(assert (=> b!5474063 (= lt!2236035 (lemmaFlatMapOnSingletonSet!580 lt!2236032 lt!2236009 lambda!291567))))

(declare-fun lt!2236013 () (InoxSet Context!9458))

(assert (=> b!5474063 (= lt!2236013 (derivationStepZipperUp!697 lt!2236009 (h!68659 s!2326)))))

(assert (=> b!5474063 (= lt!2236032 (store ((as const (Array Context!9458 Bool)) false) lt!2236009 true))))

(assert (=> b!5474063 (= lt!2236009 (Context!9459 (Cons!62210 (reg!15674 r!7292) lt!2236031)))))

(assert (=> b!5474063 (= lt!2236031 (Cons!62210 r!7292 Nil!62210))))

(declare-fun b!5474064 () Bool)

(assert (=> b!5474064 (= e!3388403 e!3388404)))

(declare-fun res!2333042 () Bool)

(assert (=> b!5474064 (=> res!2333042 e!3388404)))

(declare-fun lt!2236018 () (InoxSet Context!9458))

(assert (=> b!5474064 (= res!2333042 (not (= lt!2236012 (derivationStepZipper!1540 lt!2236018 (h!68659 s!2326)))))))

(assert (=> b!5474064 (= (flatMap!1048 lt!2236018 lambda!291567) (derivationStepZipperUp!697 lt!2236006 (h!68659 s!2326)))))

(declare-fun lt!2236020 () Unit!155140)

(assert (=> b!5474064 (= lt!2236020 (lemmaFlatMapOnSingletonSet!580 lt!2236018 lt!2236006 lambda!291567))))

(assert (=> b!5474064 (= (flatMap!1048 lt!2236019 lambda!291567) (derivationStepZipperUp!697 lt!2236016 (h!68659 s!2326)))))

(declare-fun lt!2236022 () Unit!155140)

(assert (=> b!5474064 (= lt!2236022 (lemmaFlatMapOnSingletonSet!580 lt!2236019 lt!2236016 lambda!291567))))

(declare-fun lt!2236026 () (InoxSet Context!9458))

(assert (=> b!5474064 (= lt!2236026 (derivationStepZipperUp!697 lt!2236006 (h!68659 s!2326)))))

(declare-fun lt!2236010 () (InoxSet Context!9458))

(assert (=> b!5474064 (= lt!2236010 (derivationStepZipperUp!697 lt!2236016 (h!68659 s!2326)))))

(assert (=> b!5474064 (= lt!2236018 (store ((as const (Array Context!9458 Bool)) false) lt!2236006 true))))

(assert (=> b!5474064 (= lt!2236019 (store ((as const (Array Context!9458 Bool)) false) lt!2236016 true))))

(assert (=> b!5474064 (= lt!2236016 (Context!9459 (Cons!62210 (reg!15674 r!7292) Nil!62210)))))

(declare-fun b!5474065 () Bool)

(assert (=> b!5474065 (= e!3388404 e!3388407)))

(declare-fun res!2333038 () Bool)

(assert (=> b!5474065 (=> res!2333038 e!3388407)))

(assert (=> b!5474065 (= res!2333038 (not lt!2236024))))

(assert (=> b!5474065 e!3388392))

(declare-fun res!2333048 () Bool)

(assert (=> b!5474065 (=> (not res!2333048) (not e!3388392))))

(declare-fun matchRSpec!2448 (Regex!15345 List!62335) Bool)

(assert (=> b!5474065 (= res!2333048 (= lt!2236024 (matchRSpec!2448 lt!2236023 s!2326)))))

(assert (=> b!5474065 (= lt!2236024 (matchR!7530 lt!2236023 s!2326))))

(declare-fun lt!2236033 () Unit!155140)

(declare-fun mainMatchTheorem!2448 (Regex!15345 List!62335) Unit!155140)

(assert (=> b!5474065 (= lt!2236033 (mainMatchTheorem!2448 lt!2236023 s!2326))))

(declare-fun b!5474066 () Bool)

(declare-fun tp!1504900 () Bool)

(assert (=> b!5474066 (= e!3388399 (and tp_is_empty!39943 tp!1504900))))

(declare-fun b!5474067 () Bool)

(assert (=> b!5474067 (= e!3388406 (not e!3388401))))

(declare-fun res!2333044 () Bool)

(assert (=> b!5474067 (=> res!2333044 e!3388401)))

(assert (=> b!5474067 (= res!2333044 (not ((_ is Cons!62212) zl!343)))))

(assert (=> b!5474067 (= lt!2236027 (matchRSpec!2448 r!7292 s!2326))))

(assert (=> b!5474067 (= lt!2236027 (matchR!7530 r!7292 s!2326))))

(declare-fun lt!2236008 () Unit!155140)

(assert (=> b!5474067 (= lt!2236008 (mainMatchTheorem!2448 r!7292 s!2326))))

(declare-fun b!5474068 () Bool)

(declare-fun tp!1504899 () Bool)

(assert (=> b!5474068 (= e!3388391 (and (inv!81609 (h!68660 zl!343)) e!3388402 tp!1504899))))

(declare-fun b!5474069 () Bool)

(declare-fun res!2333043 () Bool)

(assert (=> b!5474069 (=> res!2333043 e!3388396)))

(declare-fun matchZipper!1563 ((InoxSet Context!9458) List!62335) Bool)

(assert (=> b!5474069 (= res!2333043 (not (= (matchZipper!1563 lt!2236032 s!2326) (matchZipper!1563 (derivationStepZipper!1540 lt!2236032 (h!68659 s!2326)) (t!375564 s!2326)))))))

(declare-fun b!5474070 () Bool)

(declare-fun res!2333061 () Bool)

(assert (=> b!5474070 (=> res!2333061 e!3388396)))

(assert (=> b!5474070 (= res!2333061 (or (not (= lt!2236025 r!7292)) (not (= r!7292 r!7292))))))

(assert (= (and start!572814 res!2333039) b!5474046))

(assert (= (and b!5474046 res!2333056) b!5474047))

(assert (= (and b!5474047 res!2333054) b!5474067))

(assert (= (and b!5474067 (not res!2333044)) b!5474057))

(assert (= (and b!5474057 (not res!2333060)) b!5474038))

(assert (= (and b!5474038 (not res!2333051)) b!5474049))

(assert (= (and b!5474049 (not res!2333036)) b!5474036))

(assert (= (and b!5474036 (not res!2333037)) b!5474045))

(assert (= (and b!5474045 (not res!2333047)) b!5474037))

(assert (= (and b!5474037 (not res!2333058)) b!5474041))

(assert (= (and b!5474037 (not res!2333050)) b!5474060))

(assert (= (and b!5474060 (not res!2333057)) b!5474051))

(assert (= (and b!5474051 (not res!2333040)) b!5474035))

(assert (= (and b!5474035 (not res!2333049)) b!5474063))

(assert (= (and b!5474063 (not res!2333053)) b!5474069))

(assert (= (and b!5474069 (not res!2333043)) b!5474070))

(assert (= (and b!5474070 (not res!2333061)) b!5474052))

(assert (= (and b!5474052 (not res!2333064)) b!5474064))

(assert (= (and b!5474064 (not res!2333042)) b!5474059))

(assert (= (and b!5474059 (not res!2333052)) b!5474056))

(assert (= (and b!5474056 (not res!2333059)) b!5474065))

(assert (= (and b!5474065 res!2333048) b!5474034))

(assert (= (and b!5474034 (not res!2333063)) b!5474058))

(assert (= (and b!5474058 res!2333055) b!5474039))

(assert (= (and b!5474065 (not res!2333038)) b!5474048))

(assert (= (and b!5474048 (not res!2333041)) b!5474044))

(assert (= (and b!5474044 (not res!2333062)) b!5474061))

(assert (= (and b!5474061 (not res!2333046)) b!5474054))

(assert (= (and b!5474054 (not res!2333045)) b!5474043))

(assert (= (and start!572814 ((_ is ElementMatch!15345) r!7292)) b!5474053))

(assert (= (and start!572814 ((_ is Concat!24190) r!7292)) b!5474050))

(assert (= (and start!572814 ((_ is Star!15345) r!7292)) b!5474062))

(assert (= (and start!572814 ((_ is Union!15345) r!7292)) b!5474042))

(assert (= (and start!572814 condSetEmpty!35947) setIsEmpty!35947))

(assert (= (and start!572814 (not condSetEmpty!35947)) setNonEmpty!35947))

(assert (= setNonEmpty!35947 b!5474055))

(assert (= b!5474068 b!5474040))

(assert (= (and start!572814 ((_ is Cons!62212) zl!343)) b!5474068))

(assert (= (and start!572814 ((_ is Cons!62211) s!2326)) b!5474066))

(declare-fun m!6491136 () Bool)

(assert (=> b!5474069 m!6491136))

(declare-fun m!6491138 () Bool)

(assert (=> b!5474069 m!6491138))

(assert (=> b!5474069 m!6491138))

(declare-fun m!6491140 () Bool)

(assert (=> b!5474069 m!6491140))

(declare-fun m!6491142 () Bool)

(assert (=> b!5474036 m!6491142))

(assert (=> b!5474036 m!6491142))

(declare-fun m!6491144 () Bool)

(assert (=> b!5474036 m!6491144))

(declare-fun m!6491146 () Bool)

(assert (=> b!5474064 m!6491146))

(declare-fun m!6491148 () Bool)

(assert (=> b!5474064 m!6491148))

(declare-fun m!6491150 () Bool)

(assert (=> b!5474064 m!6491150))

(declare-fun m!6491152 () Bool)

(assert (=> b!5474064 m!6491152))

(declare-fun m!6491154 () Bool)

(assert (=> b!5474064 m!6491154))

(declare-fun m!6491156 () Bool)

(assert (=> b!5474064 m!6491156))

(declare-fun m!6491158 () Bool)

(assert (=> b!5474064 m!6491158))

(declare-fun m!6491160 () Bool)

(assert (=> b!5474064 m!6491160))

(declare-fun m!6491162 () Bool)

(assert (=> b!5474064 m!6491162))

(declare-fun m!6491164 () Bool)

(assert (=> b!5474038 m!6491164))

(declare-fun m!6491166 () Bool)

(assert (=> b!5474057 m!6491166))

(declare-fun m!6491168 () Bool)

(assert (=> b!5474048 m!6491168))

(declare-fun m!6491170 () Bool)

(assert (=> b!5474048 m!6491170))

(declare-fun m!6491172 () Bool)

(assert (=> b!5474063 m!6491172))

(declare-fun m!6491174 () Bool)

(assert (=> b!5474063 m!6491174))

(declare-fun m!6491176 () Bool)

(assert (=> b!5474063 m!6491176))

(declare-fun m!6491178 () Bool)

(assert (=> b!5474063 m!6491178))

(declare-fun m!6491180 () Bool)

(assert (=> b!5474063 m!6491180))

(declare-fun m!6491182 () Bool)

(assert (=> b!5474058 m!6491182))

(declare-fun m!6491184 () Bool)

(assert (=> b!5474058 m!6491184))

(declare-fun m!6491186 () Bool)

(assert (=> b!5474054 m!6491186))

(declare-fun m!6491188 () Bool)

(assert (=> b!5474059 m!6491188))

(declare-fun m!6491190 () Bool)

(assert (=> setNonEmpty!35947 m!6491190))

(declare-fun m!6491192 () Bool)

(assert (=> b!5474065 m!6491192))

(declare-fun m!6491194 () Bool)

(assert (=> b!5474065 m!6491194))

(declare-fun m!6491196 () Bool)

(assert (=> b!5474065 m!6491196))

(declare-fun m!6491198 () Bool)

(assert (=> b!5474044 m!6491198))

(declare-fun m!6491200 () Bool)

(assert (=> b!5474068 m!6491200))

(declare-fun m!6491202 () Bool)

(assert (=> b!5474052 m!6491202))

(declare-fun m!6491204 () Bool)

(assert (=> b!5474043 m!6491204))

(declare-fun m!6491206 () Bool)

(assert (=> start!572814 m!6491206))

(declare-fun m!6491208 () Bool)

(assert (=> b!5474056 m!6491208))

(declare-fun m!6491210 () Bool)

(assert (=> b!5474067 m!6491210))

(declare-fun m!6491212 () Bool)

(assert (=> b!5474067 m!6491212))

(declare-fun m!6491214 () Bool)

(assert (=> b!5474067 m!6491214))

(declare-fun m!6491216 () Bool)

(assert (=> b!5474051 m!6491216))

(declare-fun m!6491218 () Bool)

(assert (=> b!5474051 m!6491218))

(declare-fun m!6491220 () Bool)

(assert (=> b!5474051 m!6491220))

(declare-fun m!6491222 () Bool)

(assert (=> b!5474037 m!6491222))

(assert (=> b!5474037 m!6491184))

(declare-fun m!6491224 () Bool)

(assert (=> b!5474037 m!6491224))

(assert (=> b!5474037 m!6491182))

(declare-fun m!6491226 () Bool)

(assert (=> b!5474037 m!6491226))

(declare-fun m!6491228 () Bool)

(assert (=> b!5474037 m!6491228))

(declare-fun m!6491230 () Bool)

(assert (=> b!5474037 m!6491230))

(assert (=> b!5474037 m!6491182))

(assert (=> b!5474037 m!6491182))

(declare-fun m!6491232 () Bool)

(assert (=> b!5474037 m!6491232))

(declare-fun m!6491234 () Bool)

(assert (=> b!5474037 m!6491234))

(assert (=> b!5474039 m!6491182))

(declare-fun m!6491236 () Bool)

(assert (=> b!5474047 m!6491236))

(declare-fun m!6491238 () Bool)

(assert (=> b!5474046 m!6491238))

(declare-fun m!6491240 () Bool)

(assert (=> b!5474061 m!6491240))

(declare-fun m!6491242 () Bool)

(assert (=> b!5474035 m!6491242))

(declare-fun m!6491244 () Bool)

(assert (=> b!5474035 m!6491244))

(declare-fun m!6491246 () Bool)

(assert (=> b!5474035 m!6491246))

(check-sat (not b!5474067) (not b!5474061) (not setNonEmpty!35947) (not b!5474056) (not b!5474057) (not b!5474066) (not b!5474065) (not b!5474038) (not b!5474036) (not b!5474046) (not b!5474068) (not b!5474064) (not b!5474043) (not b!5474044) (not b!5474050) (not b!5474037) (not b!5474042) (not b!5474062) (not b!5474051) (not b!5474047) (not b!5474069) tp_is_empty!39943 (not b!5474059) (not b!5474039) (not b!5474055) (not b!5474052) (not start!572814) (not b!5474048) (not b!5474063) (not b!5474054) (not b!5474035) (not b!5474040) (not b!5474058))
(check-sat)
