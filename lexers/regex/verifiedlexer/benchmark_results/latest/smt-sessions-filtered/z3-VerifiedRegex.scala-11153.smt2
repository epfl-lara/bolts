; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!579038 () Bool)

(assert start!579038)

(declare-fun b!5574065 () Bool)

(assert (=> b!5574065 true))

(assert (=> b!5574065 true))

(declare-fun lambda!298731 () Int)

(declare-fun lambda!298730 () Int)

(assert (=> b!5574065 (not (= lambda!298731 lambda!298730))))

(assert (=> b!5574065 true))

(assert (=> b!5574065 true))

(declare-fun b!5574069 () Bool)

(assert (=> b!5574069 true))

(declare-fun b!5574055 () Bool)

(declare-fun res!2365955 () Bool)

(declare-fun e!3439809 () Bool)

(assert (=> b!5574055 (=> res!2365955 e!3439809)))

(declare-datatypes ((C!31376 0))(
  ( (C!31377 (val!25390 Int)) )
))
(declare-datatypes ((Regex!15553 0))(
  ( (ElementMatch!15553 (c!975620 C!31376)) (Concat!24398 (regOne!31618 Regex!15553) (regTwo!31618 Regex!15553)) (EmptyExpr!15553) (Star!15553 (reg!15882 Regex!15553)) (EmptyLang!15553) (Union!15553 (regOne!31619 Regex!15553) (regTwo!31619 Regex!15553)) )
))
(declare-datatypes ((List!62958 0))(
  ( (Nil!62834) (Cons!62834 (h!69282 Regex!15553) (t!376227 List!62958)) )
))
(declare-datatypes ((Context!9874 0))(
  ( (Context!9875 (exprs!5437 List!62958)) )
))
(declare-datatypes ((List!62959 0))(
  ( (Nil!62835) (Cons!62835 (h!69283 Context!9874) (t!376228 List!62959)) )
))
(declare-fun zl!343 () List!62959)

(declare-fun isEmpty!34636 (List!62958) Bool)

(assert (=> b!5574055 (= res!2365955 (isEmpty!34636 (t!376227 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun b!5574056 () Bool)

(declare-fun res!2365949 () Bool)

(declare-fun e!3439818 () Bool)

(assert (=> b!5574056 (=> (not res!2365949) (not e!3439818))))

(declare-fun r!7292 () Regex!15553)

(declare-fun unfocusZipper!1295 (List!62959) Regex!15553)

(assert (=> b!5574056 (= res!2365949 (= r!7292 (unfocusZipper!1295 zl!343)))))

(declare-fun b!5574058 () Bool)

(declare-fun e!3439807 () Bool)

(declare-fun e!3439804 () Bool)

(assert (=> b!5574058 (= e!3439807 e!3439804)))

(declare-fun res!2365953 () Bool)

(assert (=> b!5574058 (=> res!2365953 e!3439804)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2252247 () (InoxSet Context!9874))

(declare-fun lt!2252238 () (InoxSet Context!9874))

(assert (=> b!5574058 (= res!2365953 (not (= lt!2252247 lt!2252238)))))

(declare-fun lt!2252242 () (InoxSet Context!9874))

(declare-fun lt!2252245 () (InoxSet Context!9874))

(assert (=> b!5574058 (= lt!2252238 ((_ map or) lt!2252242 lt!2252245))))

(declare-datatypes ((List!62960 0))(
  ( (Nil!62836) (Cons!62836 (h!69284 C!31376) (t!376229 List!62960)) )
))
(declare-fun s!2326 () List!62960)

(declare-fun lt!2252244 () Context!9874)

(declare-fun derivationStepZipperDown!895 (Regex!15553 Context!9874 C!31376) (InoxSet Context!9874))

(assert (=> b!5574058 (= lt!2252245 (derivationStepZipperDown!895 (regTwo!31619 (regOne!31618 r!7292)) lt!2252244 (h!69284 s!2326)))))

(assert (=> b!5574058 (= lt!2252242 (derivationStepZipperDown!895 (regOne!31619 (regOne!31618 r!7292)) lt!2252244 (h!69284 s!2326)))))

(declare-fun b!5574059 () Bool)

(declare-fun res!2365947 () Bool)

(declare-fun e!3439815 () Bool)

(assert (=> b!5574059 (=> res!2365947 e!3439815)))

(declare-fun isEmpty!34637 (List!62959) Bool)

(assert (=> b!5574059 (= res!2365947 (not (isEmpty!34637 (t!376228 zl!343))))))

(declare-fun b!5574060 () Bool)

(declare-fun e!3439810 () Bool)

(declare-fun lt!2252246 () (InoxSet Context!9874))

(declare-fun matchZipper!1691 ((InoxSet Context!9874) List!62960) Bool)

(assert (=> b!5574060 (= e!3439810 (matchZipper!1691 lt!2252246 (t!376229 s!2326)))))

(declare-fun b!5574061 () Bool)

(declare-datatypes ((Unit!155584 0))(
  ( (Unit!155585) )
))
(declare-fun e!3439806 () Unit!155584)

(declare-fun Unit!155586 () Unit!155584)

(assert (=> b!5574061 (= e!3439806 Unit!155586)))

(declare-fun lt!2252240 () Unit!155584)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!578 ((InoxSet Context!9874) (InoxSet Context!9874) List!62960) Unit!155584)

(assert (=> b!5574061 (= lt!2252240 (lemmaZipperConcatMatchesSameAsBothZippers!578 lt!2252247 lt!2252246 (t!376229 s!2326)))))

(declare-fun res!2365954 () Bool)

(assert (=> b!5574061 (= res!2365954 (matchZipper!1691 lt!2252247 (t!376229 s!2326)))))

(assert (=> b!5574061 (=> res!2365954 e!3439810)))

(assert (=> b!5574061 (= (matchZipper!1691 ((_ map or) lt!2252247 lt!2252246) (t!376229 s!2326)) e!3439810)))

(declare-fun setIsEmpty!37067 () Bool)

(declare-fun setRes!37067 () Bool)

(assert (=> setIsEmpty!37067 setRes!37067))

(declare-fun setElem!37067 () Context!9874)

(declare-fun e!3439805 () Bool)

(declare-fun setNonEmpty!37067 () Bool)

(declare-fun tp!1542801 () Bool)

(declare-fun inv!82129 (Context!9874) Bool)

(assert (=> setNonEmpty!37067 (= setRes!37067 (and tp!1542801 (inv!82129 setElem!37067) e!3439805))))

(declare-fun z!1189 () (InoxSet Context!9874))

(declare-fun setRest!37067 () (InoxSet Context!9874))

(assert (=> setNonEmpty!37067 (= z!1189 ((_ map or) (store ((as const (Array Context!9874 Bool)) false) setElem!37067 true) setRest!37067))))

(declare-fun lt!2252248 () (InoxSet Context!9874))

(declare-fun b!5574062 () Bool)

(declare-fun e!3439808 () Bool)

(assert (=> b!5574062 (= e!3439808 (= lt!2252248 ((_ map or) lt!2252242 lt!2252246)))))

(declare-fun b!5574063 () Bool)

(declare-fun e!3439811 () Bool)

(assert (=> b!5574063 (= e!3439811 e!3439808)))

(declare-fun res!2365948 () Bool)

(assert (=> b!5574063 (=> res!2365948 e!3439808)))

(declare-fun nullable!5585 (Regex!15553) Bool)

(assert (=> b!5574063 (= res!2365948 (not (nullable!5585 (regOne!31619 (regOne!31618 r!7292)))))))

(declare-fun lambda!298732 () Int)

(declare-fun lt!2252250 () Context!9874)

(declare-fun lt!2252241 () (InoxSet Context!9874))

(declare-fun flatMap!1166 ((InoxSet Context!9874) Int) (InoxSet Context!9874))

(declare-fun derivationStepZipperUp!821 (Context!9874 C!31376) (InoxSet Context!9874))

(assert (=> b!5574063 (= (flatMap!1166 lt!2252241 lambda!298732) (derivationStepZipperUp!821 lt!2252250 (h!69284 s!2326)))))

(declare-fun lt!2252252 () Unit!155584)

(declare-fun lemmaFlatMapOnSingletonSet!698 ((InoxSet Context!9874) Context!9874 Int) Unit!155584)

(assert (=> b!5574063 (= lt!2252252 (lemmaFlatMapOnSingletonSet!698 lt!2252241 lt!2252250 lambda!298732))))

(assert (=> b!5574063 (= lt!2252248 (derivationStepZipperUp!821 lt!2252250 (h!69284 s!2326)))))

(assert (=> b!5574063 (= lt!2252241 (store ((as const (Array Context!9874 Bool)) false) lt!2252250 true))))

(assert (=> b!5574063 (= lt!2252250 (Context!9875 (Cons!62834 (regOne!31619 (regOne!31618 r!7292)) (t!376227 (exprs!5437 (h!69283 zl!343))))))))

(declare-fun b!5574064 () Bool)

(declare-fun tp!1542807 () Bool)

(assert (=> b!5574064 (= e!3439805 tp!1542807)))

(declare-fun b!5574057 () Bool)

(declare-fun res!2365963 () Bool)

(assert (=> b!5574057 (=> res!2365963 e!3439815)))

(declare-fun generalisedUnion!1416 (List!62958) Regex!15553)

(declare-fun unfocusZipperList!981 (List!62959) List!62958)

(assert (=> b!5574057 (= res!2365963 (not (= r!7292 (generalisedUnion!1416 (unfocusZipperList!981 zl!343)))))))

(declare-fun res!2365956 () Bool)

(assert (=> start!579038 (=> (not res!2365956) (not e!3439818))))

(declare-fun validRegex!7289 (Regex!15553) Bool)

(assert (=> start!579038 (= res!2365956 (validRegex!7289 r!7292))))

(assert (=> start!579038 e!3439818))

(declare-fun e!3439819 () Bool)

(assert (=> start!579038 e!3439819))

(declare-fun condSetEmpty!37067 () Bool)

(assert (=> start!579038 (= condSetEmpty!37067 (= z!1189 ((as const (Array Context!9874 Bool)) false)))))

(assert (=> start!579038 setRes!37067))

(declare-fun e!3439813 () Bool)

(assert (=> start!579038 e!3439813))

(declare-fun e!3439814 () Bool)

(assert (=> start!579038 e!3439814))

(assert (=> b!5574065 (= e!3439815 e!3439809)))

(declare-fun res!2365951 () Bool)

(assert (=> b!5574065 (=> res!2365951 e!3439809)))

(declare-fun lt!2252254 () Bool)

(declare-fun lt!2252258 () Bool)

(get-info :version)

(assert (=> b!5574065 (= res!2365951 (or (not (= lt!2252258 lt!2252254)) ((_ is Nil!62836) s!2326)))))

(declare-fun Exists!2653 (Int) Bool)

(assert (=> b!5574065 (= (Exists!2653 lambda!298730) (Exists!2653 lambda!298731))))

(declare-fun lt!2252249 () Unit!155584)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1282 (Regex!15553 Regex!15553 List!62960) Unit!155584)

(assert (=> b!5574065 (= lt!2252249 (lemmaExistCutMatchRandMatchRSpecEquivalent!1282 (regOne!31618 r!7292) (regTwo!31618 r!7292) s!2326))))

(assert (=> b!5574065 (= lt!2252254 (Exists!2653 lambda!298730))))

(declare-datatypes ((tuple2!65300 0))(
  ( (tuple2!65301 (_1!35953 List!62960) (_2!35953 List!62960)) )
))
(declare-datatypes ((Option!15562 0))(
  ( (None!15561) (Some!15561 (v!51602 tuple2!65300)) )
))
(declare-fun isDefined!12265 (Option!15562) Bool)

(declare-fun findConcatSeparation!1976 (Regex!15553 Regex!15553 List!62960 List!62960 List!62960) Option!15562)

(assert (=> b!5574065 (= lt!2252254 (isDefined!12265 (findConcatSeparation!1976 (regOne!31618 r!7292) (regTwo!31618 r!7292) Nil!62836 s!2326 s!2326)))))

(declare-fun lt!2252239 () Unit!155584)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1740 (Regex!15553 Regex!15553 List!62960) Unit!155584)

(assert (=> b!5574065 (= lt!2252239 (lemmaFindConcatSeparationEquivalentToExists!1740 (regOne!31618 r!7292) (regTwo!31618 r!7292) s!2326))))

(declare-fun b!5574066 () Bool)

(declare-fun tp!1542805 () Bool)

(declare-fun tp!1542802 () Bool)

(assert (=> b!5574066 (= e!3439819 (and tp!1542805 tp!1542802))))

(declare-fun b!5574067 () Bool)

(assert (=> b!5574067 (= e!3439804 e!3439811)))

(declare-fun res!2365958 () Bool)

(assert (=> b!5574067 (=> res!2365958 e!3439811)))

(declare-fun e!3439812 () Bool)

(assert (=> b!5574067 (= res!2365958 e!3439812)))

(declare-fun res!2365952 () Bool)

(assert (=> b!5574067 (=> (not res!2365952) (not e!3439812))))

(declare-fun lt!2252257 () Bool)

(assert (=> b!5574067 (= res!2365952 (not (= (matchZipper!1691 lt!2252247 (t!376229 s!2326)) lt!2252257)))))

(declare-fun e!3439817 () Bool)

(assert (=> b!5574067 (= (matchZipper!1691 lt!2252238 (t!376229 s!2326)) e!3439817)))

(declare-fun res!2365957 () Bool)

(assert (=> b!5574067 (=> res!2365957 e!3439817)))

(assert (=> b!5574067 (= res!2365957 lt!2252257)))

(assert (=> b!5574067 (= lt!2252257 (matchZipper!1691 lt!2252242 (t!376229 s!2326)))))

(declare-fun lt!2252253 () Unit!155584)

(assert (=> b!5574067 (= lt!2252253 (lemmaZipperConcatMatchesSameAsBothZippers!578 lt!2252242 lt!2252245 (t!376229 s!2326)))))

(declare-fun b!5574068 () Bool)

(declare-fun res!2365960 () Bool)

(assert (=> b!5574068 (=> res!2365960 e!3439815)))

(assert (=> b!5574068 (= res!2365960 (not ((_ is Cons!62834) (exprs!5437 (h!69283 zl!343)))))))

(assert (=> b!5574069 (= e!3439809 e!3439807)))

(declare-fun res!2365964 () Bool)

(assert (=> b!5574069 (=> res!2365964 e!3439807)))

(assert (=> b!5574069 (= res!2365964 (or (and ((_ is ElementMatch!15553) (regOne!31618 r!7292)) (= (c!975620 (regOne!31618 r!7292)) (h!69284 s!2326))) (not ((_ is Union!15553) (regOne!31618 r!7292)))))))

(declare-fun lt!2252255 () Unit!155584)

(assert (=> b!5574069 (= lt!2252255 e!3439806)))

(declare-fun c!975619 () Bool)

(assert (=> b!5574069 (= c!975619 (nullable!5585 (h!69282 (exprs!5437 (h!69283 zl!343)))))))

(assert (=> b!5574069 (= (flatMap!1166 z!1189 lambda!298732) (derivationStepZipperUp!821 (h!69283 zl!343) (h!69284 s!2326)))))

(declare-fun lt!2252243 () Unit!155584)

(assert (=> b!5574069 (= lt!2252243 (lemmaFlatMapOnSingletonSet!698 z!1189 (h!69283 zl!343) lambda!298732))))

(assert (=> b!5574069 (= lt!2252246 (derivationStepZipperUp!821 lt!2252244 (h!69284 s!2326)))))

(assert (=> b!5574069 (= lt!2252247 (derivationStepZipperDown!895 (h!69282 (exprs!5437 (h!69283 zl!343))) lt!2252244 (h!69284 s!2326)))))

(assert (=> b!5574069 (= lt!2252244 (Context!9875 (t!376227 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun lt!2252256 () (InoxSet Context!9874))

(assert (=> b!5574069 (= lt!2252256 (derivationStepZipperUp!821 (Context!9875 (Cons!62834 (h!69282 (exprs!5437 (h!69283 zl!343))) (t!376227 (exprs!5437 (h!69283 zl!343))))) (h!69284 s!2326)))))

(declare-fun b!5574070 () Bool)

(declare-fun e!3439816 () Bool)

(declare-fun tp!1542800 () Bool)

(assert (=> b!5574070 (= e!3439813 (and (inv!82129 (h!69283 zl!343)) e!3439816 tp!1542800))))

(declare-fun b!5574071 () Bool)

(assert (=> b!5574071 (= e!3439817 (matchZipper!1691 lt!2252245 (t!376229 s!2326)))))

(declare-fun b!5574072 () Bool)

(declare-fun res!2365950 () Bool)

(assert (=> b!5574072 (=> (not res!2365950) (not e!3439818))))

(declare-fun toList!9337 ((InoxSet Context!9874)) List!62959)

(assert (=> b!5574072 (= res!2365950 (= (toList!9337 z!1189) zl!343))))

(declare-fun b!5574073 () Bool)

(declare-fun tp!1542803 () Bool)

(assert (=> b!5574073 (= e!3439816 tp!1542803)))

(declare-fun b!5574074 () Bool)

(declare-fun tp!1542798 () Bool)

(declare-fun tp!1542804 () Bool)

(assert (=> b!5574074 (= e!3439819 (and tp!1542798 tp!1542804))))

(declare-fun b!5574075 () Bool)

(assert (=> b!5574075 (= e!3439818 (not e!3439815))))

(declare-fun res!2365959 () Bool)

(assert (=> b!5574075 (=> res!2365959 e!3439815)))

(assert (=> b!5574075 (= res!2365959 (not ((_ is Cons!62835) zl!343)))))

(declare-fun matchRSpec!2656 (Regex!15553 List!62960) Bool)

(assert (=> b!5574075 (= lt!2252258 (matchRSpec!2656 r!7292 s!2326))))

(declare-fun matchR!7738 (Regex!15553 List!62960) Bool)

(assert (=> b!5574075 (= lt!2252258 (matchR!7738 r!7292 s!2326))))

(declare-fun lt!2252251 () Unit!155584)

(declare-fun mainMatchTheorem!2656 (Regex!15553 List!62960) Unit!155584)

(assert (=> b!5574075 (= lt!2252251 (mainMatchTheorem!2656 r!7292 s!2326))))

(declare-fun b!5574076 () Bool)

(declare-fun tp_is_empty!40359 () Bool)

(declare-fun tp!1542806 () Bool)

(assert (=> b!5574076 (= e!3439814 (and tp_is_empty!40359 tp!1542806))))

(declare-fun b!5574077 () Bool)

(assert (=> b!5574077 (= e!3439819 tp_is_empty!40359)))

(declare-fun b!5574078 () Bool)

(declare-fun Unit!155587 () Unit!155584)

(assert (=> b!5574078 (= e!3439806 Unit!155587)))

(declare-fun b!5574079 () Bool)

(declare-fun res!2365962 () Bool)

(assert (=> b!5574079 (=> res!2365962 e!3439815)))

(assert (=> b!5574079 (= res!2365962 (or ((_ is EmptyExpr!15553) r!7292) ((_ is EmptyLang!15553) r!7292) ((_ is ElementMatch!15553) r!7292) ((_ is Union!15553) r!7292) (not ((_ is Concat!24398) r!7292))))))

(declare-fun b!5574080 () Bool)

(declare-fun tp!1542799 () Bool)

(assert (=> b!5574080 (= e!3439819 tp!1542799)))

(declare-fun b!5574081 () Bool)

(assert (=> b!5574081 (= e!3439812 (not (matchZipper!1691 lt!2252245 (t!376229 s!2326))))))

(declare-fun b!5574082 () Bool)

(declare-fun res!2365961 () Bool)

(assert (=> b!5574082 (=> res!2365961 e!3439815)))

(declare-fun generalisedConcat!1168 (List!62958) Regex!15553)

(assert (=> b!5574082 (= res!2365961 (not (= r!7292 (generalisedConcat!1168 (exprs!5437 (h!69283 zl!343))))))))

(assert (= (and start!579038 res!2365956) b!5574072))

(assert (= (and b!5574072 res!2365950) b!5574056))

(assert (= (and b!5574056 res!2365949) b!5574075))

(assert (= (and b!5574075 (not res!2365959)) b!5574059))

(assert (= (and b!5574059 (not res!2365947)) b!5574082))

(assert (= (and b!5574082 (not res!2365961)) b!5574068))

(assert (= (and b!5574068 (not res!2365960)) b!5574057))

(assert (= (and b!5574057 (not res!2365963)) b!5574079))

(assert (= (and b!5574079 (not res!2365962)) b!5574065))

(assert (= (and b!5574065 (not res!2365951)) b!5574055))

(assert (= (and b!5574055 (not res!2365955)) b!5574069))

(assert (= (and b!5574069 c!975619) b!5574061))

(assert (= (and b!5574069 (not c!975619)) b!5574078))

(assert (= (and b!5574061 (not res!2365954)) b!5574060))

(assert (= (and b!5574069 (not res!2365964)) b!5574058))

(assert (= (and b!5574058 (not res!2365953)) b!5574067))

(assert (= (and b!5574067 (not res!2365957)) b!5574071))

(assert (= (and b!5574067 res!2365952) b!5574081))

(assert (= (and b!5574067 (not res!2365958)) b!5574063))

(assert (= (and b!5574063 (not res!2365948)) b!5574062))

(assert (= (and start!579038 ((_ is ElementMatch!15553) r!7292)) b!5574077))

(assert (= (and start!579038 ((_ is Concat!24398) r!7292)) b!5574066))

(assert (= (and start!579038 ((_ is Star!15553) r!7292)) b!5574080))

(assert (= (and start!579038 ((_ is Union!15553) r!7292)) b!5574074))

(assert (= (and start!579038 condSetEmpty!37067) setIsEmpty!37067))

(assert (= (and start!579038 (not condSetEmpty!37067)) setNonEmpty!37067))

(assert (= setNonEmpty!37067 b!5574064))

(assert (= b!5574070 b!5574073))

(assert (= (and start!579038 ((_ is Cons!62835) zl!343)) b!5574070))

(assert (= (and start!579038 ((_ is Cons!62836) s!2326)) b!5574076))

(declare-fun m!6557772 () Bool)

(assert (=> b!5574061 m!6557772))

(declare-fun m!6557774 () Bool)

(assert (=> b!5574061 m!6557774))

(declare-fun m!6557776 () Bool)

(assert (=> b!5574061 m!6557776))

(declare-fun m!6557778 () Bool)

(assert (=> b!5574069 m!6557778))

(declare-fun m!6557780 () Bool)

(assert (=> b!5574069 m!6557780))

(declare-fun m!6557782 () Bool)

(assert (=> b!5574069 m!6557782))

(declare-fun m!6557784 () Bool)

(assert (=> b!5574069 m!6557784))

(declare-fun m!6557786 () Bool)

(assert (=> b!5574069 m!6557786))

(declare-fun m!6557788 () Bool)

(assert (=> b!5574069 m!6557788))

(declare-fun m!6557790 () Bool)

(assert (=> b!5574069 m!6557790))

(declare-fun m!6557792 () Bool)

(assert (=> start!579038 m!6557792))

(declare-fun m!6557794 () Bool)

(assert (=> b!5574072 m!6557794))

(declare-fun m!6557796 () Bool)

(assert (=> b!5574058 m!6557796))

(declare-fun m!6557798 () Bool)

(assert (=> b!5574058 m!6557798))

(declare-fun m!6557800 () Bool)

(assert (=> b!5574056 m!6557800))

(declare-fun m!6557802 () Bool)

(assert (=> b!5574059 m!6557802))

(declare-fun m!6557804 () Bool)

(assert (=> b!5574065 m!6557804))

(declare-fun m!6557806 () Bool)

(assert (=> b!5574065 m!6557806))

(declare-fun m!6557808 () Bool)

(assert (=> b!5574065 m!6557808))

(declare-fun m!6557810 () Bool)

(assert (=> b!5574065 m!6557810))

(declare-fun m!6557812 () Bool)

(assert (=> b!5574065 m!6557812))

(assert (=> b!5574065 m!6557810))

(assert (=> b!5574065 m!6557804))

(declare-fun m!6557814 () Bool)

(assert (=> b!5574065 m!6557814))

(declare-fun m!6557816 () Bool)

(assert (=> b!5574075 m!6557816))

(declare-fun m!6557818 () Bool)

(assert (=> b!5574075 m!6557818))

(declare-fun m!6557820 () Bool)

(assert (=> b!5574075 m!6557820))

(declare-fun m!6557822 () Bool)

(assert (=> b!5574071 m!6557822))

(declare-fun m!6557824 () Bool)

(assert (=> b!5574055 m!6557824))

(declare-fun m!6557826 () Bool)

(assert (=> b!5574060 m!6557826))

(declare-fun m!6557828 () Bool)

(assert (=> b!5574082 m!6557828))

(declare-fun m!6557830 () Bool)

(assert (=> b!5574057 m!6557830))

(assert (=> b!5574057 m!6557830))

(declare-fun m!6557832 () Bool)

(assert (=> b!5574057 m!6557832))

(assert (=> b!5574081 m!6557822))

(assert (=> b!5574067 m!6557774))

(declare-fun m!6557834 () Bool)

(assert (=> b!5574067 m!6557834))

(declare-fun m!6557836 () Bool)

(assert (=> b!5574067 m!6557836))

(declare-fun m!6557838 () Bool)

(assert (=> b!5574067 m!6557838))

(declare-fun m!6557840 () Bool)

(assert (=> b!5574063 m!6557840))

(declare-fun m!6557842 () Bool)

(assert (=> b!5574063 m!6557842))

(declare-fun m!6557844 () Bool)

(assert (=> b!5574063 m!6557844))

(declare-fun m!6557846 () Bool)

(assert (=> b!5574063 m!6557846))

(declare-fun m!6557848 () Bool)

(assert (=> b!5574063 m!6557848))

(declare-fun m!6557850 () Bool)

(assert (=> b!5574070 m!6557850))

(declare-fun m!6557852 () Bool)

(assert (=> setNonEmpty!37067 m!6557852))

(check-sat (not b!5574069) (not b!5574081) (not b!5574080) (not b!5574060) tp_is_empty!40359 (not b!5574066) (not b!5574067) (not setNonEmpty!37067) (not b!5574075) (not b!5574057) (not b!5574064) (not b!5574073) (not b!5574065) (not b!5574059) (not b!5574055) (not b!5574082) (not b!5574071) (not b!5574056) (not b!5574076) (not b!5574070) (not b!5574072) (not b!5574061) (not b!5574058) (not b!5574074) (not b!5574063) (not start!579038))
(check-sat)
(get-model)

(declare-fun bs!1290116 () Bool)

(declare-fun b!5574183 () Bool)

(assert (= bs!1290116 (and b!5574183 b!5574065)))

(declare-fun lambda!298746 () Int)

(assert (=> bs!1290116 (not (= lambda!298746 lambda!298730))))

(assert (=> bs!1290116 (not (= lambda!298746 lambda!298731))))

(assert (=> b!5574183 true))

(assert (=> b!5574183 true))

(declare-fun bs!1290117 () Bool)

(declare-fun b!5574188 () Bool)

(assert (= bs!1290117 (and b!5574188 b!5574065)))

(declare-fun lambda!298747 () Int)

(assert (=> bs!1290117 (not (= lambda!298747 lambda!298730))))

(assert (=> bs!1290117 (= lambda!298747 lambda!298731)))

(declare-fun bs!1290118 () Bool)

(assert (= bs!1290118 (and b!5574188 b!5574183)))

(assert (=> bs!1290118 (not (= lambda!298747 lambda!298746))))

(assert (=> b!5574188 true))

(assert (=> b!5574188 true))

(declare-fun b!5574182 () Bool)

(declare-fun c!975648 () Bool)

(assert (=> b!5574182 (= c!975648 ((_ is ElementMatch!15553) r!7292))))

(declare-fun e!3439875 () Bool)

(declare-fun e!3439877 () Bool)

(assert (=> b!5574182 (= e!3439875 e!3439877)))

(declare-fun d!1762580 () Bool)

(declare-fun c!975646 () Bool)

(assert (=> d!1762580 (= c!975646 ((_ is EmptyExpr!15553) r!7292))))

(declare-fun e!3439872 () Bool)

(assert (=> d!1762580 (= (matchRSpec!2656 r!7292 s!2326) e!3439872)))

(declare-fun e!3439874 () Bool)

(declare-fun call!416510 () Bool)

(assert (=> b!5574183 (= e!3439874 call!416510)))

(declare-fun c!975647 () Bool)

(declare-fun bm!416504 () Bool)

(assert (=> bm!416504 (= call!416510 (Exists!2653 (ite c!975647 lambda!298746 lambda!298747)))))

(declare-fun b!5574184 () Bool)

(declare-fun e!3439876 () Bool)

(declare-fun e!3439871 () Bool)

(assert (=> b!5574184 (= e!3439876 e!3439871)))

(assert (=> b!5574184 (= c!975647 ((_ is Star!15553) r!7292))))

(declare-fun b!5574185 () Bool)

(declare-fun res!2366011 () Bool)

(assert (=> b!5574185 (=> res!2366011 e!3439874)))

(declare-fun call!416509 () Bool)

(assert (=> b!5574185 (= res!2366011 call!416509)))

(assert (=> b!5574185 (= e!3439871 e!3439874)))

(declare-fun b!5574186 () Bool)

(assert (=> b!5574186 (= e!3439872 call!416509)))

(declare-fun bm!416505 () Bool)

(declare-fun isEmpty!34640 (List!62960) Bool)

(assert (=> bm!416505 (= call!416509 (isEmpty!34640 s!2326))))

(declare-fun b!5574187 () Bool)

(declare-fun c!975645 () Bool)

(assert (=> b!5574187 (= c!975645 ((_ is Union!15553) r!7292))))

(assert (=> b!5574187 (= e!3439877 e!3439876)))

(assert (=> b!5574188 (= e!3439871 call!416510)))

(declare-fun b!5574189 () Bool)

(declare-fun e!3439873 () Bool)

(assert (=> b!5574189 (= e!3439876 e!3439873)))

(declare-fun res!2366012 () Bool)

(assert (=> b!5574189 (= res!2366012 (matchRSpec!2656 (regOne!31619 r!7292) s!2326))))

(assert (=> b!5574189 (=> res!2366012 e!3439873)))

(declare-fun b!5574190 () Bool)

(assert (=> b!5574190 (= e!3439873 (matchRSpec!2656 (regTwo!31619 r!7292) s!2326))))

(declare-fun b!5574191 () Bool)

(assert (=> b!5574191 (= e!3439877 (= s!2326 (Cons!62836 (c!975620 r!7292) Nil!62836)))))

(declare-fun b!5574192 () Bool)

(assert (=> b!5574192 (= e!3439872 e!3439875)))

(declare-fun res!2366010 () Bool)

(assert (=> b!5574192 (= res!2366010 (not ((_ is EmptyLang!15553) r!7292)))))

(assert (=> b!5574192 (=> (not res!2366010) (not e!3439875))))

(assert (= (and d!1762580 c!975646) b!5574186))

(assert (= (and d!1762580 (not c!975646)) b!5574192))

(assert (= (and b!5574192 res!2366010) b!5574182))

(assert (= (and b!5574182 c!975648) b!5574191))

(assert (= (and b!5574182 (not c!975648)) b!5574187))

(assert (= (and b!5574187 c!975645) b!5574189))

(assert (= (and b!5574187 (not c!975645)) b!5574184))

(assert (= (and b!5574189 (not res!2366012)) b!5574190))

(assert (= (and b!5574184 c!975647) b!5574185))

(assert (= (and b!5574184 (not c!975647)) b!5574188))

(assert (= (and b!5574185 (not res!2366011)) b!5574183))

(assert (= (or b!5574183 b!5574188) bm!416504))

(assert (= (or b!5574186 b!5574185) bm!416505))

(declare-fun m!6557894 () Bool)

(assert (=> bm!416504 m!6557894))

(declare-fun m!6557896 () Bool)

(assert (=> bm!416505 m!6557896))

(declare-fun m!6557898 () Bool)

(assert (=> b!5574189 m!6557898))

(declare-fun m!6557900 () Bool)

(assert (=> b!5574190 m!6557900))

(assert (=> b!5574075 d!1762580))

(declare-fun b!5574299 () Bool)

(declare-fun e!3439948 () Bool)

(declare-fun e!3439944 () Bool)

(assert (=> b!5574299 (= e!3439948 e!3439944)))

(declare-fun res!2366059 () Bool)

(assert (=> b!5574299 (=> res!2366059 e!3439944)))

(declare-fun call!416546 () Bool)

(assert (=> b!5574299 (= res!2366059 call!416546)))

(declare-fun b!5574300 () Bool)

(declare-fun res!2366060 () Bool)

(assert (=> b!5574300 (=> res!2366060 e!3439944)))

(declare-fun tail!10979 (List!62960) List!62960)

(assert (=> b!5574300 (= res!2366060 (not (isEmpty!34640 (tail!10979 s!2326))))))

(declare-fun bm!416541 () Bool)

(assert (=> bm!416541 (= call!416546 (isEmpty!34640 s!2326))))

(declare-fun b!5574301 () Bool)

(declare-fun e!3439945 () Bool)

(assert (=> b!5574301 (= e!3439945 e!3439948)))

(declare-fun res!2366055 () Bool)

(assert (=> b!5574301 (=> (not res!2366055) (not e!3439948))))

(declare-fun lt!2252282 () Bool)

(assert (=> b!5574301 (= res!2366055 (not lt!2252282))))

(declare-fun b!5574302 () Bool)

(declare-fun e!3439947 () Bool)

(declare-fun head!11884 (List!62960) C!31376)

(assert (=> b!5574302 (= e!3439947 (= (head!11884 s!2326) (c!975620 r!7292)))))

(declare-fun b!5574303 () Bool)

(declare-fun res!2366056 () Bool)

(assert (=> b!5574303 (=> res!2366056 e!3439945)))

(assert (=> b!5574303 (= res!2366056 (not ((_ is ElementMatch!15553) r!7292)))))

(declare-fun e!3439946 () Bool)

(assert (=> b!5574303 (= e!3439946 e!3439945)))

(declare-fun d!1762594 () Bool)

(declare-fun e!3439949 () Bool)

(assert (=> d!1762594 e!3439949))

(declare-fun c!975682 () Bool)

(assert (=> d!1762594 (= c!975682 ((_ is EmptyExpr!15553) r!7292))))

(declare-fun e!3439943 () Bool)

(assert (=> d!1762594 (= lt!2252282 e!3439943)))

(declare-fun c!975683 () Bool)

(assert (=> d!1762594 (= c!975683 (isEmpty!34640 s!2326))))

(assert (=> d!1762594 (validRegex!7289 r!7292)))

(assert (=> d!1762594 (= (matchR!7738 r!7292 s!2326) lt!2252282)))

(declare-fun b!5574304 () Bool)

(assert (=> b!5574304 (= e!3439944 (not (= (head!11884 s!2326) (c!975620 r!7292))))))

(declare-fun b!5574305 () Bool)

(declare-fun res!2366053 () Bool)

(assert (=> b!5574305 (=> (not res!2366053) (not e!3439947))))

(assert (=> b!5574305 (= res!2366053 (isEmpty!34640 (tail!10979 s!2326)))))

(declare-fun b!5574306 () Bool)

(assert (=> b!5574306 (= e!3439943 (nullable!5585 r!7292))))

(declare-fun b!5574307 () Bool)

(assert (=> b!5574307 (= e!3439949 e!3439946)))

(declare-fun c!975684 () Bool)

(assert (=> b!5574307 (= c!975684 ((_ is EmptyLang!15553) r!7292))))

(declare-fun b!5574308 () Bool)

(declare-fun derivativeStep!4405 (Regex!15553 C!31376) Regex!15553)

(assert (=> b!5574308 (= e!3439943 (matchR!7738 (derivativeStep!4405 r!7292 (head!11884 s!2326)) (tail!10979 s!2326)))))

(declare-fun b!5574309 () Bool)

(assert (=> b!5574309 (= e!3439949 (= lt!2252282 call!416546))))

(declare-fun b!5574310 () Bool)

(declare-fun res!2366058 () Bool)

(assert (=> b!5574310 (=> (not res!2366058) (not e!3439947))))

(assert (=> b!5574310 (= res!2366058 (not call!416546))))

(declare-fun b!5574311 () Bool)

(declare-fun res!2366054 () Bool)

(assert (=> b!5574311 (=> res!2366054 e!3439945)))

(assert (=> b!5574311 (= res!2366054 e!3439947)))

(declare-fun res!2366057 () Bool)

(assert (=> b!5574311 (=> (not res!2366057) (not e!3439947))))

(assert (=> b!5574311 (= res!2366057 lt!2252282)))

(declare-fun b!5574312 () Bool)

(assert (=> b!5574312 (= e!3439946 (not lt!2252282))))

(assert (= (and d!1762594 c!975683) b!5574306))

(assert (= (and d!1762594 (not c!975683)) b!5574308))

(assert (= (and d!1762594 c!975682) b!5574309))

(assert (= (and d!1762594 (not c!975682)) b!5574307))

(assert (= (and b!5574307 c!975684) b!5574312))

(assert (= (and b!5574307 (not c!975684)) b!5574303))

(assert (= (and b!5574303 (not res!2366056)) b!5574311))

(assert (= (and b!5574311 res!2366057) b!5574310))

(assert (= (and b!5574310 res!2366058) b!5574305))

(assert (= (and b!5574305 res!2366053) b!5574302))

(assert (= (and b!5574311 (not res!2366054)) b!5574301))

(assert (= (and b!5574301 res!2366055) b!5574299))

(assert (= (and b!5574299 (not res!2366059)) b!5574300))

(assert (= (and b!5574300 (not res!2366060)) b!5574304))

(assert (= (or b!5574309 b!5574299 b!5574310) bm!416541))

(declare-fun m!6557982 () Bool)

(assert (=> b!5574302 m!6557982))

(assert (=> b!5574304 m!6557982))

(assert (=> d!1762594 m!6557896))

(assert (=> d!1762594 m!6557792))

(declare-fun m!6557984 () Bool)

(assert (=> b!5574306 m!6557984))

(assert (=> bm!416541 m!6557896))

(assert (=> b!5574308 m!6557982))

(assert (=> b!5574308 m!6557982))

(declare-fun m!6557988 () Bool)

(assert (=> b!5574308 m!6557988))

(declare-fun m!6557992 () Bool)

(assert (=> b!5574308 m!6557992))

(assert (=> b!5574308 m!6557988))

(assert (=> b!5574308 m!6557992))

(declare-fun m!6557998 () Bool)

(assert (=> b!5574308 m!6557998))

(assert (=> b!5574305 m!6557992))

(assert (=> b!5574305 m!6557992))

(declare-fun m!6558000 () Bool)

(assert (=> b!5574305 m!6558000))

(assert (=> b!5574300 m!6557992))

(assert (=> b!5574300 m!6557992))

(assert (=> b!5574300 m!6558000))

(assert (=> b!5574075 d!1762594))

(declare-fun d!1762628 () Bool)

(assert (=> d!1762628 (= (matchR!7738 r!7292 s!2326) (matchRSpec!2656 r!7292 s!2326))))

(declare-fun lt!2252289 () Unit!155584)

(declare-fun choose!42224 (Regex!15553 List!62960) Unit!155584)

(assert (=> d!1762628 (= lt!2252289 (choose!42224 r!7292 s!2326))))

(assert (=> d!1762628 (validRegex!7289 r!7292)))

(assert (=> d!1762628 (= (mainMatchTheorem!2656 r!7292 s!2326) lt!2252289)))

(declare-fun bs!1290126 () Bool)

(assert (= bs!1290126 d!1762628))

(assert (=> bs!1290126 m!6557818))

(assert (=> bs!1290126 m!6557816))

(declare-fun m!6558012 () Bool)

(assert (=> bs!1290126 m!6558012))

(assert (=> bs!1290126 m!6557792))

(assert (=> b!5574075 d!1762628))

(declare-fun d!1762634 () Bool)

(declare-fun choose!42225 (Int) Bool)

(assert (=> d!1762634 (= (Exists!2653 lambda!298730) (choose!42225 lambda!298730))))

(declare-fun bs!1290127 () Bool)

(assert (= bs!1290127 d!1762634))

(declare-fun m!6558014 () Bool)

(assert (=> bs!1290127 m!6558014))

(assert (=> b!5574065 d!1762634))

(declare-fun bs!1290135 () Bool)

(declare-fun d!1762636 () Bool)

(assert (= bs!1290135 (and d!1762636 b!5574065)))

(declare-fun lambda!298756 () Int)

(assert (=> bs!1290135 (= lambda!298756 lambda!298730)))

(assert (=> bs!1290135 (not (= lambda!298756 lambda!298731))))

(declare-fun bs!1290136 () Bool)

(assert (= bs!1290136 (and d!1762636 b!5574183)))

(assert (=> bs!1290136 (not (= lambda!298756 lambda!298746))))

(declare-fun bs!1290137 () Bool)

(assert (= bs!1290137 (and d!1762636 b!5574188)))

(assert (=> bs!1290137 (not (= lambda!298756 lambda!298747))))

(assert (=> d!1762636 true))

(assert (=> d!1762636 true))

(assert (=> d!1762636 true))

(assert (=> d!1762636 (= (isDefined!12265 (findConcatSeparation!1976 (regOne!31618 r!7292) (regTwo!31618 r!7292) Nil!62836 s!2326 s!2326)) (Exists!2653 lambda!298756))))

(declare-fun lt!2252292 () Unit!155584)

(declare-fun choose!42226 (Regex!15553 Regex!15553 List!62960) Unit!155584)

(assert (=> d!1762636 (= lt!2252292 (choose!42226 (regOne!31618 r!7292) (regTwo!31618 r!7292) s!2326))))

(assert (=> d!1762636 (validRegex!7289 (regOne!31618 r!7292))))

(assert (=> d!1762636 (= (lemmaFindConcatSeparationEquivalentToExists!1740 (regOne!31618 r!7292) (regTwo!31618 r!7292) s!2326) lt!2252292)))

(declare-fun bs!1290138 () Bool)

(assert (= bs!1290138 d!1762636))

(declare-fun m!6558024 () Bool)

(assert (=> bs!1290138 m!6558024))

(declare-fun m!6558026 () Bool)

(assert (=> bs!1290138 m!6558026))

(assert (=> bs!1290138 m!6557804))

(assert (=> bs!1290138 m!6557806))

(assert (=> bs!1290138 m!6557804))

(declare-fun m!6558028 () Bool)

(assert (=> bs!1290138 m!6558028))

(assert (=> b!5574065 d!1762636))

(declare-fun d!1762640 () Bool)

(assert (=> d!1762640 (= (Exists!2653 lambda!298731) (choose!42225 lambda!298731))))

(declare-fun bs!1290139 () Bool)

(assert (= bs!1290139 d!1762640))

(declare-fun m!6558030 () Bool)

(assert (=> bs!1290139 m!6558030))

(assert (=> b!5574065 d!1762640))

(declare-fun b!5574493 () Bool)

(declare-fun res!2366131 () Bool)

(declare-fun e!3440053 () Bool)

(assert (=> b!5574493 (=> (not res!2366131) (not e!3440053))))

(declare-fun lt!2252312 () Option!15562)

(declare-fun get!21632 (Option!15562) tuple2!65300)

(assert (=> b!5574493 (= res!2366131 (matchR!7738 (regTwo!31618 r!7292) (_2!35953 (get!21632 lt!2252312))))))

(declare-fun b!5574494 () Bool)

(declare-fun e!3440051 () Option!15562)

(assert (=> b!5574494 (= e!3440051 None!15561)))

(declare-fun b!5574495 () Bool)

(declare-fun e!3440052 () Option!15562)

(assert (=> b!5574495 (= e!3440052 (Some!15561 (tuple2!65301 Nil!62836 s!2326)))))

(declare-fun b!5574496 () Bool)

(declare-fun e!3440055 () Bool)

(assert (=> b!5574496 (= e!3440055 (not (isDefined!12265 lt!2252312)))))

(declare-fun d!1762642 () Bool)

(assert (=> d!1762642 e!3440055))

(declare-fun res!2366133 () Bool)

(assert (=> d!1762642 (=> res!2366133 e!3440055)))

(assert (=> d!1762642 (= res!2366133 e!3440053)))

(declare-fun res!2366132 () Bool)

(assert (=> d!1762642 (=> (not res!2366132) (not e!3440053))))

(assert (=> d!1762642 (= res!2366132 (isDefined!12265 lt!2252312))))

(assert (=> d!1762642 (= lt!2252312 e!3440052)))

(declare-fun c!975741 () Bool)

(declare-fun e!3440054 () Bool)

(assert (=> d!1762642 (= c!975741 e!3440054)))

(declare-fun res!2366135 () Bool)

(assert (=> d!1762642 (=> (not res!2366135) (not e!3440054))))

(assert (=> d!1762642 (= res!2366135 (matchR!7738 (regOne!31618 r!7292) Nil!62836))))

(assert (=> d!1762642 (validRegex!7289 (regOne!31618 r!7292))))

(assert (=> d!1762642 (= (findConcatSeparation!1976 (regOne!31618 r!7292) (regTwo!31618 r!7292) Nil!62836 s!2326 s!2326) lt!2252312)))

(declare-fun b!5574497 () Bool)

(declare-fun lt!2252310 () Unit!155584)

(declare-fun lt!2252311 () Unit!155584)

(assert (=> b!5574497 (= lt!2252310 lt!2252311)))

(declare-fun ++!13788 (List!62960 List!62960) List!62960)

(assert (=> b!5574497 (= (++!13788 (++!13788 Nil!62836 (Cons!62836 (h!69284 s!2326) Nil!62836)) (t!376229 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1957 (List!62960 C!31376 List!62960 List!62960) Unit!155584)

(assert (=> b!5574497 (= lt!2252311 (lemmaMoveElementToOtherListKeepsConcatEq!1957 Nil!62836 (h!69284 s!2326) (t!376229 s!2326) s!2326))))

(assert (=> b!5574497 (= e!3440051 (findConcatSeparation!1976 (regOne!31618 r!7292) (regTwo!31618 r!7292) (++!13788 Nil!62836 (Cons!62836 (h!69284 s!2326) Nil!62836)) (t!376229 s!2326) s!2326))))

(declare-fun b!5574498 () Bool)

(declare-fun res!2366134 () Bool)

(assert (=> b!5574498 (=> (not res!2366134) (not e!3440053))))

(assert (=> b!5574498 (= res!2366134 (matchR!7738 (regOne!31618 r!7292) (_1!35953 (get!21632 lt!2252312))))))

(declare-fun b!5574499 () Bool)

(assert (=> b!5574499 (= e!3440053 (= (++!13788 (_1!35953 (get!21632 lt!2252312)) (_2!35953 (get!21632 lt!2252312))) s!2326))))

(declare-fun b!5574500 () Bool)

(assert (=> b!5574500 (= e!3440054 (matchR!7738 (regTwo!31618 r!7292) s!2326))))

(declare-fun b!5574501 () Bool)

(assert (=> b!5574501 (= e!3440052 e!3440051)))

(declare-fun c!975740 () Bool)

(assert (=> b!5574501 (= c!975740 ((_ is Nil!62836) s!2326))))

(assert (= (and d!1762642 res!2366135) b!5574500))

(assert (= (and d!1762642 c!975741) b!5574495))

(assert (= (and d!1762642 (not c!975741)) b!5574501))

(assert (= (and b!5574501 c!975740) b!5574494))

(assert (= (and b!5574501 (not c!975740)) b!5574497))

(assert (= (and d!1762642 res!2366132) b!5574498))

(assert (= (and b!5574498 res!2366134) b!5574493))

(assert (= (and b!5574493 res!2366131) b!5574499))

(assert (= (and d!1762642 (not res!2366133)) b!5574496))

(declare-fun m!6558066 () Bool)

(assert (=> b!5574498 m!6558066))

(declare-fun m!6558068 () Bool)

(assert (=> b!5574498 m!6558068))

(declare-fun m!6558070 () Bool)

(assert (=> b!5574496 m!6558070))

(assert (=> b!5574499 m!6558066))

(declare-fun m!6558072 () Bool)

(assert (=> b!5574499 m!6558072))

(declare-fun m!6558074 () Bool)

(assert (=> b!5574497 m!6558074))

(assert (=> b!5574497 m!6558074))

(declare-fun m!6558076 () Bool)

(assert (=> b!5574497 m!6558076))

(declare-fun m!6558078 () Bool)

(assert (=> b!5574497 m!6558078))

(assert (=> b!5574497 m!6558074))

(declare-fun m!6558080 () Bool)

(assert (=> b!5574497 m!6558080))

(assert (=> b!5574493 m!6558066))

(declare-fun m!6558082 () Bool)

(assert (=> b!5574493 m!6558082))

(assert (=> d!1762642 m!6558070))

(declare-fun m!6558084 () Bool)

(assert (=> d!1762642 m!6558084))

(assert (=> d!1762642 m!6558024))

(declare-fun m!6558086 () Bool)

(assert (=> b!5574500 m!6558086))

(assert (=> b!5574065 d!1762642))

(declare-fun bs!1290153 () Bool)

(declare-fun d!1762656 () Bool)

(assert (= bs!1290153 (and d!1762656 b!5574183)))

(declare-fun lambda!298774 () Int)

(assert (=> bs!1290153 (not (= lambda!298774 lambda!298746))))

(declare-fun bs!1290154 () Bool)

(assert (= bs!1290154 (and d!1762656 b!5574065)))

(assert (=> bs!1290154 (= lambda!298774 lambda!298730)))

(declare-fun bs!1290156 () Bool)

(assert (= bs!1290156 (and d!1762656 d!1762636)))

(assert (=> bs!1290156 (= lambda!298774 lambda!298756)))

(declare-fun bs!1290158 () Bool)

(assert (= bs!1290158 (and d!1762656 b!5574188)))

(assert (=> bs!1290158 (not (= lambda!298774 lambda!298747))))

(assert (=> bs!1290154 (not (= lambda!298774 lambda!298731))))

(assert (=> d!1762656 true))

(assert (=> d!1762656 true))

(assert (=> d!1762656 true))

(declare-fun lambda!298775 () Int)

(assert (=> bs!1290153 (not (= lambda!298775 lambda!298746))))

(assert (=> bs!1290154 (not (= lambda!298775 lambda!298730))))

(declare-fun bs!1290159 () Bool)

(assert (= bs!1290159 d!1762656))

(assert (=> bs!1290159 (not (= lambda!298775 lambda!298774))))

(assert (=> bs!1290156 (not (= lambda!298775 lambda!298756))))

(assert (=> bs!1290158 (= lambda!298775 lambda!298747)))

(assert (=> bs!1290154 (= lambda!298775 lambda!298731)))

(assert (=> d!1762656 true))

(assert (=> d!1762656 true))

(assert (=> d!1762656 true))

(assert (=> d!1762656 (= (Exists!2653 lambda!298774) (Exists!2653 lambda!298775))))

(declare-fun lt!2252323 () Unit!155584)

(declare-fun choose!42227 (Regex!15553 Regex!15553 List!62960) Unit!155584)

(assert (=> d!1762656 (= lt!2252323 (choose!42227 (regOne!31618 r!7292) (regTwo!31618 r!7292) s!2326))))

(assert (=> d!1762656 (validRegex!7289 (regOne!31618 r!7292))))

(assert (=> d!1762656 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1282 (regOne!31618 r!7292) (regTwo!31618 r!7292) s!2326) lt!2252323)))

(declare-fun m!6558148 () Bool)

(assert (=> bs!1290159 m!6558148))

(declare-fun m!6558150 () Bool)

(assert (=> bs!1290159 m!6558150))

(declare-fun m!6558152 () Bool)

(assert (=> bs!1290159 m!6558152))

(assert (=> bs!1290159 m!6558024))

(assert (=> b!5574065 d!1762656))

(declare-fun d!1762678 () Bool)

(declare-fun isEmpty!34641 (Option!15562) Bool)

(assert (=> d!1762678 (= (isDefined!12265 (findConcatSeparation!1976 (regOne!31618 r!7292) (regTwo!31618 r!7292) Nil!62836 s!2326 s!2326)) (not (isEmpty!34641 (findConcatSeparation!1976 (regOne!31618 r!7292) (regTwo!31618 r!7292) Nil!62836 s!2326 s!2326))))))

(declare-fun bs!1290160 () Bool)

(assert (= bs!1290160 d!1762678))

(assert (=> bs!1290160 m!6557804))

(declare-fun m!6558154 () Bool)

(assert (=> bs!1290160 m!6558154))

(assert (=> b!5574065 d!1762678))

(declare-fun d!1762680 () Bool)

(declare-fun lt!2252326 () Regex!15553)

(assert (=> d!1762680 (validRegex!7289 lt!2252326)))

(assert (=> d!1762680 (= lt!2252326 (generalisedUnion!1416 (unfocusZipperList!981 zl!343)))))

(assert (=> d!1762680 (= (unfocusZipper!1295 zl!343) lt!2252326)))

(declare-fun bs!1290161 () Bool)

(assert (= bs!1290161 d!1762680))

(declare-fun m!6558156 () Bool)

(assert (=> bs!1290161 m!6558156))

(assert (=> bs!1290161 m!6557830))

(assert (=> bs!1290161 m!6557830))

(assert (=> bs!1290161 m!6557832))

(assert (=> b!5574056 d!1762680))

(declare-fun b!5574612 () Bool)

(declare-fun e!3440115 () Bool)

(declare-fun lt!2252329 () Regex!15553)

(declare-fun isEmptyLang!1123 (Regex!15553) Bool)

(assert (=> b!5574612 (= e!3440115 (isEmptyLang!1123 lt!2252329))))

(declare-fun b!5574613 () Bool)

(declare-fun e!3440114 () Regex!15553)

(assert (=> b!5574613 (= e!3440114 EmptyLang!15553)))

(declare-fun b!5574614 () Bool)

(declare-fun e!3440117 () Bool)

(assert (=> b!5574614 (= e!3440115 e!3440117)))

(declare-fun c!975764 () Bool)

(declare-fun tail!10980 (List!62958) List!62958)

(assert (=> b!5574614 (= c!975764 (isEmpty!34636 (tail!10980 (unfocusZipperList!981 zl!343))))))

(declare-fun b!5574615 () Bool)

(declare-fun isUnion!553 (Regex!15553) Bool)

(assert (=> b!5574615 (= e!3440117 (isUnion!553 lt!2252329))))

(declare-fun b!5574616 () Bool)

(declare-fun e!3440113 () Regex!15553)

(assert (=> b!5574616 (= e!3440113 e!3440114)))

(declare-fun c!975761 () Bool)

(assert (=> b!5574616 (= c!975761 ((_ is Cons!62834) (unfocusZipperList!981 zl!343)))))

(declare-fun b!5574617 () Bool)

(assert (=> b!5574617 (= e!3440114 (Union!15553 (h!69282 (unfocusZipperList!981 zl!343)) (generalisedUnion!1416 (t!376227 (unfocusZipperList!981 zl!343)))))))

(declare-fun d!1762682 () Bool)

(declare-fun e!3440112 () Bool)

(assert (=> d!1762682 e!3440112))

(declare-fun res!2366155 () Bool)

(assert (=> d!1762682 (=> (not res!2366155) (not e!3440112))))

(assert (=> d!1762682 (= res!2366155 (validRegex!7289 lt!2252329))))

(assert (=> d!1762682 (= lt!2252329 e!3440113)))

(declare-fun c!975762 () Bool)

(declare-fun e!3440116 () Bool)

(assert (=> d!1762682 (= c!975762 e!3440116)))

(declare-fun res!2366154 () Bool)

(assert (=> d!1762682 (=> (not res!2366154) (not e!3440116))))

(assert (=> d!1762682 (= res!2366154 ((_ is Cons!62834) (unfocusZipperList!981 zl!343)))))

(declare-fun lambda!298778 () Int)

(declare-fun forall!14723 (List!62958 Int) Bool)

(assert (=> d!1762682 (forall!14723 (unfocusZipperList!981 zl!343) lambda!298778)))

(assert (=> d!1762682 (= (generalisedUnion!1416 (unfocusZipperList!981 zl!343)) lt!2252329)))

(declare-fun b!5574618 () Bool)

(assert (=> b!5574618 (= e!3440113 (h!69282 (unfocusZipperList!981 zl!343)))))

(declare-fun b!5574619 () Bool)

(assert (=> b!5574619 (= e!3440112 e!3440115)))

(declare-fun c!975763 () Bool)

(assert (=> b!5574619 (= c!975763 (isEmpty!34636 (unfocusZipperList!981 zl!343)))))

(declare-fun b!5574620 () Bool)

(declare-fun head!11885 (List!62958) Regex!15553)

(assert (=> b!5574620 (= e!3440117 (= lt!2252329 (head!11885 (unfocusZipperList!981 zl!343))))))

(declare-fun b!5574621 () Bool)

(assert (=> b!5574621 (= e!3440116 (isEmpty!34636 (t!376227 (unfocusZipperList!981 zl!343))))))

(assert (= (and d!1762682 res!2366154) b!5574621))

(assert (= (and d!1762682 c!975762) b!5574618))

(assert (= (and d!1762682 (not c!975762)) b!5574616))

(assert (= (and b!5574616 c!975761) b!5574617))

(assert (= (and b!5574616 (not c!975761)) b!5574613))

(assert (= (and d!1762682 res!2366155) b!5574619))

(assert (= (and b!5574619 c!975763) b!5574612))

(assert (= (and b!5574619 (not c!975763)) b!5574614))

(assert (= (and b!5574614 c!975764) b!5574620))

(assert (= (and b!5574614 (not c!975764)) b!5574615))

(declare-fun m!6558158 () Bool)

(assert (=> b!5574615 m!6558158))

(declare-fun m!6558160 () Bool)

(assert (=> b!5574617 m!6558160))

(assert (=> b!5574614 m!6557830))

(declare-fun m!6558162 () Bool)

(assert (=> b!5574614 m!6558162))

(assert (=> b!5574614 m!6558162))

(declare-fun m!6558164 () Bool)

(assert (=> b!5574614 m!6558164))

(assert (=> b!5574619 m!6557830))

(declare-fun m!6558166 () Bool)

(assert (=> b!5574619 m!6558166))

(declare-fun m!6558168 () Bool)

(assert (=> b!5574621 m!6558168))

(declare-fun m!6558170 () Bool)

(assert (=> b!5574612 m!6558170))

(assert (=> b!5574620 m!6557830))

(declare-fun m!6558172 () Bool)

(assert (=> b!5574620 m!6558172))

(declare-fun m!6558174 () Bool)

(assert (=> d!1762682 m!6558174))

(assert (=> d!1762682 m!6557830))

(declare-fun m!6558176 () Bool)

(assert (=> d!1762682 m!6558176))

(assert (=> b!5574057 d!1762682))

(declare-fun bs!1290162 () Bool)

(declare-fun d!1762684 () Bool)

(assert (= bs!1290162 (and d!1762684 d!1762682)))

(declare-fun lambda!298781 () Int)

(assert (=> bs!1290162 (= lambda!298781 lambda!298778)))

(declare-fun lt!2252332 () List!62958)

(assert (=> d!1762684 (forall!14723 lt!2252332 lambda!298781)))

(declare-fun e!3440120 () List!62958)

(assert (=> d!1762684 (= lt!2252332 e!3440120)))

(declare-fun c!975767 () Bool)

(assert (=> d!1762684 (= c!975767 ((_ is Cons!62835) zl!343))))

(assert (=> d!1762684 (= (unfocusZipperList!981 zl!343) lt!2252332)))

(declare-fun b!5574626 () Bool)

(assert (=> b!5574626 (= e!3440120 (Cons!62834 (generalisedConcat!1168 (exprs!5437 (h!69283 zl!343))) (unfocusZipperList!981 (t!376228 zl!343))))))

(declare-fun b!5574627 () Bool)

(assert (=> b!5574627 (= e!3440120 Nil!62834)))

(assert (= (and d!1762684 c!975767) b!5574626))

(assert (= (and d!1762684 (not c!975767)) b!5574627))

(declare-fun m!6558178 () Bool)

(assert (=> d!1762684 m!6558178))

(assert (=> b!5574626 m!6557828))

(declare-fun m!6558180 () Bool)

(assert (=> b!5574626 m!6558180))

(assert (=> b!5574057 d!1762684))

(declare-fun d!1762686 () Bool)

(declare-fun e!3440123 () Bool)

(assert (=> d!1762686 e!3440123))

(declare-fun res!2366158 () Bool)

(assert (=> d!1762686 (=> (not res!2366158) (not e!3440123))))

(declare-fun lt!2252335 () List!62959)

(declare-fun noDuplicate!1534 (List!62959) Bool)

(assert (=> d!1762686 (= res!2366158 (noDuplicate!1534 lt!2252335))))

(declare-fun choose!42229 ((InoxSet Context!9874)) List!62959)

(assert (=> d!1762686 (= lt!2252335 (choose!42229 z!1189))))

(assert (=> d!1762686 (= (toList!9337 z!1189) lt!2252335)))

(declare-fun b!5574630 () Bool)

(declare-fun content!11322 (List!62959) (InoxSet Context!9874))

(assert (=> b!5574630 (= e!3440123 (= (content!11322 lt!2252335) z!1189))))

(assert (= (and d!1762686 res!2366158) b!5574630))

(declare-fun m!6558182 () Bool)

(assert (=> d!1762686 m!6558182))

(declare-fun m!6558184 () Bool)

(assert (=> d!1762686 m!6558184))

(declare-fun m!6558186 () Bool)

(assert (=> b!5574630 m!6558186))

(assert (=> b!5574072 d!1762686))

(declare-fun b!5574649 () Bool)

(declare-fun e!3440143 () Bool)

(declare-fun call!416572 () Bool)

(assert (=> b!5574649 (= e!3440143 call!416572)))

(declare-fun b!5574650 () Bool)

(declare-fun e!3440138 () Bool)

(assert (=> b!5574650 (= e!3440138 call!416572)))

(declare-fun b!5574651 () Bool)

(declare-fun e!3440141 () Bool)

(assert (=> b!5574651 (= e!3440141 e!3440143)))

(declare-fun res!2366173 () Bool)

(assert (=> b!5574651 (=> (not res!2366173) (not e!3440143))))

(declare-fun call!416571 () Bool)

(assert (=> b!5574651 (= res!2366173 call!416571)))

(declare-fun bm!416565 () Bool)

(declare-fun c!975773 () Bool)

(assert (=> bm!416565 (= call!416572 (validRegex!7289 (ite c!975773 (regTwo!31619 r!7292) (regTwo!31618 r!7292))))))

(declare-fun bm!416566 () Bool)

(declare-fun call!416570 () Bool)

(assert (=> bm!416566 (= call!416571 call!416570)))

(declare-fun b!5574652 () Bool)

(declare-fun res!2366170 () Bool)

(assert (=> b!5574652 (=> res!2366170 e!3440141)))

(assert (=> b!5574652 (= res!2366170 (not ((_ is Concat!24398) r!7292)))))

(declare-fun e!3440142 () Bool)

(assert (=> b!5574652 (= e!3440142 e!3440141)))

(declare-fun d!1762688 () Bool)

(declare-fun res!2366169 () Bool)

(declare-fun e!3440140 () Bool)

(assert (=> d!1762688 (=> res!2366169 e!3440140)))

(assert (=> d!1762688 (= res!2366169 ((_ is ElementMatch!15553) r!7292))))

(assert (=> d!1762688 (= (validRegex!7289 r!7292) e!3440140)))

(declare-fun b!5574653 () Bool)

(declare-fun res!2366172 () Bool)

(assert (=> b!5574653 (=> (not res!2366172) (not e!3440138))))

(assert (=> b!5574653 (= res!2366172 call!416571)))

(assert (=> b!5574653 (= e!3440142 e!3440138)))

(declare-fun c!975772 () Bool)

(declare-fun bm!416567 () Bool)

(assert (=> bm!416567 (= call!416570 (validRegex!7289 (ite c!975772 (reg!15882 r!7292) (ite c!975773 (regOne!31619 r!7292) (regOne!31618 r!7292)))))))

(declare-fun b!5574654 () Bool)

(declare-fun e!3440139 () Bool)

(declare-fun e!3440144 () Bool)

(assert (=> b!5574654 (= e!3440139 e!3440144)))

(declare-fun res!2366171 () Bool)

(assert (=> b!5574654 (= res!2366171 (not (nullable!5585 (reg!15882 r!7292))))))

(assert (=> b!5574654 (=> (not res!2366171) (not e!3440144))))

(declare-fun b!5574655 () Bool)

(assert (=> b!5574655 (= e!3440139 e!3440142)))

(assert (=> b!5574655 (= c!975773 ((_ is Union!15553) r!7292))))

(declare-fun b!5574656 () Bool)

(assert (=> b!5574656 (= e!3440140 e!3440139)))

(assert (=> b!5574656 (= c!975772 ((_ is Star!15553) r!7292))))

(declare-fun b!5574657 () Bool)

(assert (=> b!5574657 (= e!3440144 call!416570)))

(assert (= (and d!1762688 (not res!2366169)) b!5574656))

(assert (= (and b!5574656 c!975772) b!5574654))

(assert (= (and b!5574656 (not c!975772)) b!5574655))

(assert (= (and b!5574654 res!2366171) b!5574657))

(assert (= (and b!5574655 c!975773) b!5574653))

(assert (= (and b!5574655 (not c!975773)) b!5574652))

(assert (= (and b!5574653 res!2366172) b!5574650))

(assert (= (and b!5574652 (not res!2366170)) b!5574651))

(assert (= (and b!5574651 res!2366173) b!5574649))

(assert (= (or b!5574650 b!5574649) bm!416565))

(assert (= (or b!5574653 b!5574651) bm!416566))

(assert (= (or b!5574657 bm!416566) bm!416567))

(declare-fun m!6558188 () Bool)

(assert (=> bm!416565 m!6558188))

(declare-fun m!6558190 () Bool)

(assert (=> bm!416567 m!6558190))

(declare-fun m!6558192 () Bool)

(assert (=> b!5574654 m!6558192))

(assert (=> start!579038 d!1762688))

(declare-fun d!1762690 () Bool)

(declare-fun nullableFct!1699 (Regex!15553) Bool)

(assert (=> d!1762690 (= (nullable!5585 (regOne!31619 (regOne!31618 r!7292))) (nullableFct!1699 (regOne!31619 (regOne!31618 r!7292))))))

(declare-fun bs!1290163 () Bool)

(assert (= bs!1290163 d!1762690))

(declare-fun m!6558194 () Bool)

(assert (=> bs!1290163 m!6558194))

(assert (=> b!5574063 d!1762690))

(declare-fun d!1762692 () Bool)

(declare-fun choose!42230 ((InoxSet Context!9874) Int) (InoxSet Context!9874))

(assert (=> d!1762692 (= (flatMap!1166 lt!2252241 lambda!298732) (choose!42230 lt!2252241 lambda!298732))))

(declare-fun bs!1290164 () Bool)

(assert (= bs!1290164 d!1762692))

(declare-fun m!6558196 () Bool)

(assert (=> bs!1290164 m!6558196))

(assert (=> b!5574063 d!1762692))

(declare-fun d!1762694 () Bool)

(declare-fun c!975779 () Bool)

(declare-fun e!3440151 () Bool)

(assert (=> d!1762694 (= c!975779 e!3440151)))

(declare-fun res!2366176 () Bool)

(assert (=> d!1762694 (=> (not res!2366176) (not e!3440151))))

(assert (=> d!1762694 (= res!2366176 ((_ is Cons!62834) (exprs!5437 lt!2252250)))))

(declare-fun e!3440152 () (InoxSet Context!9874))

(assert (=> d!1762694 (= (derivationStepZipperUp!821 lt!2252250 (h!69284 s!2326)) e!3440152)))

(declare-fun b!5574668 () Bool)

(declare-fun e!3440153 () (InoxSet Context!9874))

(assert (=> b!5574668 (= e!3440153 ((as const (Array Context!9874 Bool)) false))))

(declare-fun b!5574669 () Bool)

(declare-fun call!416575 () (InoxSet Context!9874))

(assert (=> b!5574669 (= e!3440153 call!416575)))

(declare-fun b!5574670 () Bool)

(assert (=> b!5574670 (= e!3440151 (nullable!5585 (h!69282 (exprs!5437 lt!2252250))))))

(declare-fun b!5574671 () Bool)

(assert (=> b!5574671 (= e!3440152 e!3440153)))

(declare-fun c!975778 () Bool)

(assert (=> b!5574671 (= c!975778 ((_ is Cons!62834) (exprs!5437 lt!2252250)))))

(declare-fun bm!416570 () Bool)

(assert (=> bm!416570 (= call!416575 (derivationStepZipperDown!895 (h!69282 (exprs!5437 lt!2252250)) (Context!9875 (t!376227 (exprs!5437 lt!2252250))) (h!69284 s!2326)))))

(declare-fun b!5574672 () Bool)

(assert (=> b!5574672 (= e!3440152 ((_ map or) call!416575 (derivationStepZipperUp!821 (Context!9875 (t!376227 (exprs!5437 lt!2252250))) (h!69284 s!2326))))))

(assert (= (and d!1762694 res!2366176) b!5574670))

(assert (= (and d!1762694 c!975779) b!5574672))

(assert (= (and d!1762694 (not c!975779)) b!5574671))

(assert (= (and b!5574671 c!975778) b!5574669))

(assert (= (and b!5574671 (not c!975778)) b!5574668))

(assert (= (or b!5574672 b!5574669) bm!416570))

(declare-fun m!6558198 () Bool)

(assert (=> b!5574670 m!6558198))

(declare-fun m!6558200 () Bool)

(assert (=> bm!416570 m!6558200))

(declare-fun m!6558202 () Bool)

(assert (=> b!5574672 m!6558202))

(assert (=> b!5574063 d!1762694))

(declare-fun d!1762696 () Bool)

(declare-fun dynLambda!24575 (Int Context!9874) (InoxSet Context!9874))

(assert (=> d!1762696 (= (flatMap!1166 lt!2252241 lambda!298732) (dynLambda!24575 lambda!298732 lt!2252250))))

(declare-fun lt!2252338 () Unit!155584)

(declare-fun choose!42231 ((InoxSet Context!9874) Context!9874 Int) Unit!155584)

(assert (=> d!1762696 (= lt!2252338 (choose!42231 lt!2252241 lt!2252250 lambda!298732))))

(assert (=> d!1762696 (= lt!2252241 (store ((as const (Array Context!9874 Bool)) false) lt!2252250 true))))

(assert (=> d!1762696 (= (lemmaFlatMapOnSingletonSet!698 lt!2252241 lt!2252250 lambda!298732) lt!2252338)))

(declare-fun b_lambda!211363 () Bool)

(assert (=> (not b_lambda!211363) (not d!1762696)))

(declare-fun bs!1290165 () Bool)

(assert (= bs!1290165 d!1762696))

(assert (=> bs!1290165 m!6557844))

(declare-fun m!6558204 () Bool)

(assert (=> bs!1290165 m!6558204))

(declare-fun m!6558206 () Bool)

(assert (=> bs!1290165 m!6558206))

(assert (=> bs!1290165 m!6557842))

(assert (=> b!5574063 d!1762696))

(declare-fun d!1762698 () Bool)

(assert (=> d!1762698 (= (isEmpty!34636 (t!376227 (exprs!5437 (h!69283 zl!343)))) ((_ is Nil!62834) (t!376227 (exprs!5437 (h!69283 zl!343)))))))

(assert (=> b!5574055 d!1762698))

(declare-fun d!1762700 () Bool)

(declare-fun e!3440156 () Bool)

(assert (=> d!1762700 (= (matchZipper!1691 ((_ map or) lt!2252247 lt!2252246) (t!376229 s!2326)) e!3440156)))

(declare-fun res!2366179 () Bool)

(assert (=> d!1762700 (=> res!2366179 e!3440156)))

(assert (=> d!1762700 (= res!2366179 (matchZipper!1691 lt!2252247 (t!376229 s!2326)))))

(declare-fun lt!2252341 () Unit!155584)

(declare-fun choose!42232 ((InoxSet Context!9874) (InoxSet Context!9874) List!62960) Unit!155584)

(assert (=> d!1762700 (= lt!2252341 (choose!42232 lt!2252247 lt!2252246 (t!376229 s!2326)))))

(assert (=> d!1762700 (= (lemmaZipperConcatMatchesSameAsBothZippers!578 lt!2252247 lt!2252246 (t!376229 s!2326)) lt!2252341)))

(declare-fun b!5574675 () Bool)

(assert (=> b!5574675 (= e!3440156 (matchZipper!1691 lt!2252246 (t!376229 s!2326)))))

(assert (= (and d!1762700 (not res!2366179)) b!5574675))

(assert (=> d!1762700 m!6557776))

(assert (=> d!1762700 m!6557774))

(declare-fun m!6558208 () Bool)

(assert (=> d!1762700 m!6558208))

(assert (=> b!5574675 m!6557826))

(assert (=> b!5574061 d!1762700))

(declare-fun d!1762702 () Bool)

(declare-fun c!975782 () Bool)

(assert (=> d!1762702 (= c!975782 (isEmpty!34640 (t!376229 s!2326)))))

(declare-fun e!3440159 () Bool)

(assert (=> d!1762702 (= (matchZipper!1691 lt!2252247 (t!376229 s!2326)) e!3440159)))

(declare-fun b!5574680 () Bool)

(declare-fun nullableZipper!1553 ((InoxSet Context!9874)) Bool)

(assert (=> b!5574680 (= e!3440159 (nullableZipper!1553 lt!2252247))))

(declare-fun b!5574681 () Bool)

(declare-fun derivationStepZipper!1652 ((InoxSet Context!9874) C!31376) (InoxSet Context!9874))

(assert (=> b!5574681 (= e!3440159 (matchZipper!1691 (derivationStepZipper!1652 lt!2252247 (head!11884 (t!376229 s!2326))) (tail!10979 (t!376229 s!2326))))))

(assert (= (and d!1762702 c!975782) b!5574680))

(assert (= (and d!1762702 (not c!975782)) b!5574681))

(declare-fun m!6558210 () Bool)

(assert (=> d!1762702 m!6558210))

(declare-fun m!6558212 () Bool)

(assert (=> b!5574680 m!6558212))

(declare-fun m!6558214 () Bool)

(assert (=> b!5574681 m!6558214))

(assert (=> b!5574681 m!6558214))

(declare-fun m!6558216 () Bool)

(assert (=> b!5574681 m!6558216))

(declare-fun m!6558218 () Bool)

(assert (=> b!5574681 m!6558218))

(assert (=> b!5574681 m!6558216))

(assert (=> b!5574681 m!6558218))

(declare-fun m!6558220 () Bool)

(assert (=> b!5574681 m!6558220))

(assert (=> b!5574061 d!1762702))

(declare-fun d!1762704 () Bool)

(declare-fun c!975783 () Bool)

(assert (=> d!1762704 (= c!975783 (isEmpty!34640 (t!376229 s!2326)))))

(declare-fun e!3440160 () Bool)

(assert (=> d!1762704 (= (matchZipper!1691 ((_ map or) lt!2252247 lt!2252246) (t!376229 s!2326)) e!3440160)))

(declare-fun b!5574682 () Bool)

(assert (=> b!5574682 (= e!3440160 (nullableZipper!1553 ((_ map or) lt!2252247 lt!2252246)))))

(declare-fun b!5574683 () Bool)

(assert (=> b!5574683 (= e!3440160 (matchZipper!1691 (derivationStepZipper!1652 ((_ map or) lt!2252247 lt!2252246) (head!11884 (t!376229 s!2326))) (tail!10979 (t!376229 s!2326))))))

(assert (= (and d!1762704 c!975783) b!5574682))

(assert (= (and d!1762704 (not c!975783)) b!5574683))

(assert (=> d!1762704 m!6558210))

(declare-fun m!6558222 () Bool)

(assert (=> b!5574682 m!6558222))

(assert (=> b!5574683 m!6558214))

(assert (=> b!5574683 m!6558214))

(declare-fun m!6558224 () Bool)

(assert (=> b!5574683 m!6558224))

(assert (=> b!5574683 m!6558218))

(assert (=> b!5574683 m!6558224))

(assert (=> b!5574683 m!6558218))

(declare-fun m!6558226 () Bool)

(assert (=> b!5574683 m!6558226))

(assert (=> b!5574061 d!1762704))

(declare-fun d!1762706 () Bool)

(declare-fun c!975784 () Bool)

(assert (=> d!1762706 (= c!975784 (isEmpty!34640 (t!376229 s!2326)))))

(declare-fun e!3440161 () Bool)

(assert (=> d!1762706 (= (matchZipper!1691 lt!2252245 (t!376229 s!2326)) e!3440161)))

(declare-fun b!5574684 () Bool)

(assert (=> b!5574684 (= e!3440161 (nullableZipper!1553 lt!2252245))))

(declare-fun b!5574685 () Bool)

(assert (=> b!5574685 (= e!3440161 (matchZipper!1691 (derivationStepZipper!1652 lt!2252245 (head!11884 (t!376229 s!2326))) (tail!10979 (t!376229 s!2326))))))

(assert (= (and d!1762706 c!975784) b!5574684))

(assert (= (and d!1762706 (not c!975784)) b!5574685))

(assert (=> d!1762706 m!6558210))

(declare-fun m!6558228 () Bool)

(assert (=> b!5574684 m!6558228))

(assert (=> b!5574685 m!6558214))

(assert (=> b!5574685 m!6558214))

(declare-fun m!6558230 () Bool)

(assert (=> b!5574685 m!6558230))

(assert (=> b!5574685 m!6558218))

(assert (=> b!5574685 m!6558230))

(assert (=> b!5574685 m!6558218))

(declare-fun m!6558232 () Bool)

(assert (=> b!5574685 m!6558232))

(assert (=> b!5574081 d!1762706))

(declare-fun bs!1290166 () Bool)

(declare-fun d!1762708 () Bool)

(assert (= bs!1290166 (and d!1762708 d!1762682)))

(declare-fun lambda!298784 () Int)

(assert (=> bs!1290166 (= lambda!298784 lambda!298778)))

(declare-fun bs!1290167 () Bool)

(assert (= bs!1290167 (and d!1762708 d!1762684)))

(assert (=> bs!1290167 (= lambda!298784 lambda!298781)))

(assert (=> d!1762708 (= (inv!82129 (h!69283 zl!343)) (forall!14723 (exprs!5437 (h!69283 zl!343)) lambda!298784))))

(declare-fun bs!1290168 () Bool)

(assert (= bs!1290168 d!1762708))

(declare-fun m!6558234 () Bool)

(assert (=> bs!1290168 m!6558234))

(assert (=> b!5574070 d!1762708))

(assert (=> b!5574071 d!1762706))

(declare-fun bs!1290169 () Bool)

(declare-fun d!1762710 () Bool)

(assert (= bs!1290169 (and d!1762710 d!1762682)))

(declare-fun lambda!298785 () Int)

(assert (=> bs!1290169 (= lambda!298785 lambda!298778)))

(declare-fun bs!1290170 () Bool)

(assert (= bs!1290170 (and d!1762710 d!1762684)))

(assert (=> bs!1290170 (= lambda!298785 lambda!298781)))

(declare-fun bs!1290171 () Bool)

(assert (= bs!1290171 (and d!1762710 d!1762708)))

(assert (=> bs!1290171 (= lambda!298785 lambda!298784)))

(assert (=> d!1762710 (= (inv!82129 setElem!37067) (forall!14723 (exprs!5437 setElem!37067) lambda!298785))))

(declare-fun bs!1290172 () Bool)

(assert (= bs!1290172 d!1762710))

(declare-fun m!6558236 () Bool)

(assert (=> bs!1290172 m!6558236))

(assert (=> setNonEmpty!37067 d!1762710))

(declare-fun bs!1290173 () Bool)

(declare-fun d!1762712 () Bool)

(assert (= bs!1290173 (and d!1762712 d!1762682)))

(declare-fun lambda!298788 () Int)

(assert (=> bs!1290173 (= lambda!298788 lambda!298778)))

(declare-fun bs!1290174 () Bool)

(assert (= bs!1290174 (and d!1762712 d!1762684)))

(assert (=> bs!1290174 (= lambda!298788 lambda!298781)))

(declare-fun bs!1290175 () Bool)

(assert (= bs!1290175 (and d!1762712 d!1762708)))

(assert (=> bs!1290175 (= lambda!298788 lambda!298784)))

(declare-fun bs!1290176 () Bool)

(assert (= bs!1290176 (and d!1762712 d!1762710)))

(assert (=> bs!1290176 (= lambda!298788 lambda!298785)))

(declare-fun b!5574706 () Bool)

(declare-fun e!3440179 () Bool)

(declare-fun e!3440177 () Bool)

(assert (=> b!5574706 (= e!3440179 e!3440177)))

(declare-fun c!975794 () Bool)

(assert (=> b!5574706 (= c!975794 (isEmpty!34636 (tail!10980 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun b!5574707 () Bool)

(declare-fun lt!2252344 () Regex!15553)

(declare-fun isEmptyExpr!1113 (Regex!15553) Bool)

(assert (=> b!5574707 (= e!3440179 (isEmptyExpr!1113 lt!2252344))))

(declare-fun e!3440178 () Bool)

(assert (=> d!1762712 e!3440178))

(declare-fun res!2366184 () Bool)

(assert (=> d!1762712 (=> (not res!2366184) (not e!3440178))))

(assert (=> d!1762712 (= res!2366184 (validRegex!7289 lt!2252344))))

(declare-fun e!3440176 () Regex!15553)

(assert (=> d!1762712 (= lt!2252344 e!3440176)))

(declare-fun c!975796 () Bool)

(declare-fun e!3440174 () Bool)

(assert (=> d!1762712 (= c!975796 e!3440174)))

(declare-fun res!2366185 () Bool)

(assert (=> d!1762712 (=> (not res!2366185) (not e!3440174))))

(assert (=> d!1762712 (= res!2366185 ((_ is Cons!62834) (exprs!5437 (h!69283 zl!343))))))

(assert (=> d!1762712 (forall!14723 (exprs!5437 (h!69283 zl!343)) lambda!298788)))

(assert (=> d!1762712 (= (generalisedConcat!1168 (exprs!5437 (h!69283 zl!343))) lt!2252344)))

(declare-fun b!5574708 () Bool)

(declare-fun isConcat!636 (Regex!15553) Bool)

(assert (=> b!5574708 (= e!3440177 (isConcat!636 lt!2252344))))

(declare-fun b!5574709 () Bool)

(assert (=> b!5574709 (= e!3440176 (h!69282 (exprs!5437 (h!69283 zl!343))))))

(declare-fun b!5574710 () Bool)

(assert (=> b!5574710 (= e!3440174 (isEmpty!34636 (t!376227 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun b!5574711 () Bool)

(declare-fun e!3440175 () Regex!15553)

(assert (=> b!5574711 (= e!3440176 e!3440175)))

(declare-fun c!975795 () Bool)

(assert (=> b!5574711 (= c!975795 ((_ is Cons!62834) (exprs!5437 (h!69283 zl!343))))))

(declare-fun b!5574712 () Bool)

(assert (=> b!5574712 (= e!3440178 e!3440179)))

(declare-fun c!975793 () Bool)

(assert (=> b!5574712 (= c!975793 (isEmpty!34636 (exprs!5437 (h!69283 zl!343))))))

(declare-fun b!5574713 () Bool)

(assert (=> b!5574713 (= e!3440177 (= lt!2252344 (head!11885 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun b!5574714 () Bool)

(assert (=> b!5574714 (= e!3440175 (Concat!24398 (h!69282 (exprs!5437 (h!69283 zl!343))) (generalisedConcat!1168 (t!376227 (exprs!5437 (h!69283 zl!343))))))))

(declare-fun b!5574715 () Bool)

(assert (=> b!5574715 (= e!3440175 EmptyExpr!15553)))

(assert (= (and d!1762712 res!2366185) b!5574710))

(assert (= (and d!1762712 c!975796) b!5574709))

(assert (= (and d!1762712 (not c!975796)) b!5574711))

(assert (= (and b!5574711 c!975795) b!5574714))

(assert (= (and b!5574711 (not c!975795)) b!5574715))

(assert (= (and d!1762712 res!2366184) b!5574712))

(assert (= (and b!5574712 c!975793) b!5574707))

(assert (= (and b!5574712 (not c!975793)) b!5574706))

(assert (= (and b!5574706 c!975794) b!5574713))

(assert (= (and b!5574706 (not c!975794)) b!5574708))

(declare-fun m!6558238 () Bool)

(assert (=> b!5574712 m!6558238))

(declare-fun m!6558240 () Bool)

(assert (=> b!5574706 m!6558240))

(assert (=> b!5574706 m!6558240))

(declare-fun m!6558242 () Bool)

(assert (=> b!5574706 m!6558242))

(assert (=> b!5574710 m!6557824))

(declare-fun m!6558244 () Bool)

(assert (=> b!5574713 m!6558244))

(declare-fun m!6558246 () Bool)

(assert (=> b!5574708 m!6558246))

(declare-fun m!6558248 () Bool)

(assert (=> b!5574714 m!6558248))

(declare-fun m!6558250 () Bool)

(assert (=> b!5574707 m!6558250))

(declare-fun m!6558252 () Bool)

(assert (=> d!1762712 m!6558252))

(declare-fun m!6558254 () Bool)

(assert (=> d!1762712 m!6558254))

(assert (=> b!5574082 d!1762712))

(assert (=> b!5574067 d!1762702))

(declare-fun d!1762714 () Bool)

(declare-fun c!975797 () Bool)

(assert (=> d!1762714 (= c!975797 (isEmpty!34640 (t!376229 s!2326)))))

(declare-fun e!3440180 () Bool)

(assert (=> d!1762714 (= (matchZipper!1691 lt!2252238 (t!376229 s!2326)) e!3440180)))

(declare-fun b!5574716 () Bool)

(assert (=> b!5574716 (= e!3440180 (nullableZipper!1553 lt!2252238))))

(declare-fun b!5574717 () Bool)

(assert (=> b!5574717 (= e!3440180 (matchZipper!1691 (derivationStepZipper!1652 lt!2252238 (head!11884 (t!376229 s!2326))) (tail!10979 (t!376229 s!2326))))))

(assert (= (and d!1762714 c!975797) b!5574716))

(assert (= (and d!1762714 (not c!975797)) b!5574717))

(assert (=> d!1762714 m!6558210))

(declare-fun m!6558256 () Bool)

(assert (=> b!5574716 m!6558256))

(assert (=> b!5574717 m!6558214))

(assert (=> b!5574717 m!6558214))

(declare-fun m!6558258 () Bool)

(assert (=> b!5574717 m!6558258))

(assert (=> b!5574717 m!6558218))

(assert (=> b!5574717 m!6558258))

(assert (=> b!5574717 m!6558218))

(declare-fun m!6558260 () Bool)

(assert (=> b!5574717 m!6558260))

(assert (=> b!5574067 d!1762714))

(declare-fun d!1762716 () Bool)

(declare-fun c!975798 () Bool)

(assert (=> d!1762716 (= c!975798 (isEmpty!34640 (t!376229 s!2326)))))

(declare-fun e!3440181 () Bool)

(assert (=> d!1762716 (= (matchZipper!1691 lt!2252242 (t!376229 s!2326)) e!3440181)))

(declare-fun b!5574718 () Bool)

(assert (=> b!5574718 (= e!3440181 (nullableZipper!1553 lt!2252242))))

(declare-fun b!5574719 () Bool)

(assert (=> b!5574719 (= e!3440181 (matchZipper!1691 (derivationStepZipper!1652 lt!2252242 (head!11884 (t!376229 s!2326))) (tail!10979 (t!376229 s!2326))))))

(assert (= (and d!1762716 c!975798) b!5574718))

(assert (= (and d!1762716 (not c!975798)) b!5574719))

(assert (=> d!1762716 m!6558210))

(declare-fun m!6558262 () Bool)

(assert (=> b!5574718 m!6558262))

(assert (=> b!5574719 m!6558214))

(assert (=> b!5574719 m!6558214))

(declare-fun m!6558264 () Bool)

(assert (=> b!5574719 m!6558264))

(assert (=> b!5574719 m!6558218))

(assert (=> b!5574719 m!6558264))

(assert (=> b!5574719 m!6558218))

(declare-fun m!6558266 () Bool)

(assert (=> b!5574719 m!6558266))

(assert (=> b!5574067 d!1762716))

(declare-fun d!1762718 () Bool)

(declare-fun e!3440182 () Bool)

(assert (=> d!1762718 (= (matchZipper!1691 ((_ map or) lt!2252242 lt!2252245) (t!376229 s!2326)) e!3440182)))

(declare-fun res!2366186 () Bool)

(assert (=> d!1762718 (=> res!2366186 e!3440182)))

(assert (=> d!1762718 (= res!2366186 (matchZipper!1691 lt!2252242 (t!376229 s!2326)))))

(declare-fun lt!2252345 () Unit!155584)

(assert (=> d!1762718 (= lt!2252345 (choose!42232 lt!2252242 lt!2252245 (t!376229 s!2326)))))

(assert (=> d!1762718 (= (lemmaZipperConcatMatchesSameAsBothZippers!578 lt!2252242 lt!2252245 (t!376229 s!2326)) lt!2252345)))

(declare-fun b!5574720 () Bool)

(assert (=> b!5574720 (= e!3440182 (matchZipper!1691 lt!2252245 (t!376229 s!2326)))))

(assert (= (and d!1762718 (not res!2366186)) b!5574720))

(declare-fun m!6558268 () Bool)

(assert (=> d!1762718 m!6558268))

(assert (=> d!1762718 m!6557836))

(declare-fun m!6558270 () Bool)

(assert (=> d!1762718 m!6558270))

(assert (=> b!5574720 m!6557822))

(assert (=> b!5574067 d!1762718))

(declare-fun b!5574743 () Bool)

(declare-fun e!3440200 () (InoxSet Context!9874))

(declare-fun e!3440196 () (InoxSet Context!9874))

(assert (=> b!5574743 (= e!3440200 e!3440196)))

(declare-fun c!975811 () Bool)

(assert (=> b!5574743 (= c!975811 ((_ is Union!15553) (regTwo!31619 (regOne!31618 r!7292))))))

(declare-fun call!416592 () List!62958)

(declare-fun call!416591 () (InoxSet Context!9874))

(declare-fun bm!416583 () Bool)

(declare-fun c!975813 () Bool)

(declare-fun c!975812 () Bool)

(assert (=> bm!416583 (= call!416591 (derivationStepZipperDown!895 (ite c!975811 (regTwo!31619 (regTwo!31619 (regOne!31618 r!7292))) (ite c!975812 (regTwo!31618 (regTwo!31619 (regOne!31618 r!7292))) (ite c!975813 (regOne!31618 (regTwo!31619 (regOne!31618 r!7292))) (reg!15882 (regTwo!31619 (regOne!31618 r!7292)))))) (ite (or c!975811 c!975812) lt!2252244 (Context!9875 call!416592)) (h!69284 s!2326)))))

(declare-fun bm!416584 () Bool)

(declare-fun call!416593 () (InoxSet Context!9874))

(declare-fun call!416589 () (InoxSet Context!9874))

(assert (=> bm!416584 (= call!416593 call!416589)))

(declare-fun b!5574744 () Bool)

(declare-fun c!975809 () Bool)

(assert (=> b!5574744 (= c!975809 ((_ is Star!15553) (regTwo!31619 (regOne!31618 r!7292))))))

(declare-fun e!3440195 () (InoxSet Context!9874))

(declare-fun e!3440197 () (InoxSet Context!9874))

(assert (=> b!5574744 (= e!3440195 e!3440197)))

(declare-fun bm!416585 () Bool)

(assert (=> bm!416585 (= call!416589 call!416591)))

(declare-fun b!5574745 () Bool)

(declare-fun e!3440198 () Bool)

(assert (=> b!5574745 (= c!975812 e!3440198)))

(declare-fun res!2366189 () Bool)

(assert (=> b!5574745 (=> (not res!2366189) (not e!3440198))))

(assert (=> b!5574745 (= res!2366189 ((_ is Concat!24398) (regTwo!31619 (regOne!31618 r!7292))))))

(declare-fun e!3440199 () (InoxSet Context!9874))

(assert (=> b!5574745 (= e!3440196 e!3440199)))

(declare-fun b!5574746 () Bool)

(assert (=> b!5574746 (= e!3440199 e!3440195)))

(assert (=> b!5574746 (= c!975813 ((_ is Concat!24398) (regTwo!31619 (regOne!31618 r!7292))))))

(declare-fun b!5574747 () Bool)

(assert (=> b!5574747 (= e!3440200 (store ((as const (Array Context!9874 Bool)) false) lt!2252244 true))))

(declare-fun b!5574748 () Bool)

(assert (=> b!5574748 (= e!3440195 call!416593)))

(declare-fun bm!416587 () Bool)

(declare-fun call!416588 () List!62958)

(assert (=> bm!416587 (= call!416592 call!416588)))

(declare-fun b!5574749 () Bool)

(assert (=> b!5574749 (= e!3440197 ((as const (Array Context!9874 Bool)) false))))

(declare-fun b!5574750 () Bool)

(assert (=> b!5574750 (= e!3440197 call!416593)))

(declare-fun b!5574751 () Bool)

(declare-fun call!416590 () (InoxSet Context!9874))

(assert (=> b!5574751 (= e!3440196 ((_ map or) call!416590 call!416591))))

(declare-fun b!5574752 () Bool)

(assert (=> b!5574752 (= e!3440199 ((_ map or) call!416590 call!416589))))

(declare-fun d!1762720 () Bool)

(declare-fun c!975810 () Bool)

(assert (=> d!1762720 (= c!975810 (and ((_ is ElementMatch!15553) (regTwo!31619 (regOne!31618 r!7292))) (= (c!975620 (regTwo!31619 (regOne!31618 r!7292))) (h!69284 s!2326))))))

(assert (=> d!1762720 (= (derivationStepZipperDown!895 (regTwo!31619 (regOne!31618 r!7292)) lt!2252244 (h!69284 s!2326)) e!3440200)))

(declare-fun bm!416586 () Bool)

(declare-fun $colon$colon!1620 (List!62958 Regex!15553) List!62958)

(assert (=> bm!416586 (= call!416588 ($colon$colon!1620 (exprs!5437 lt!2252244) (ite (or c!975812 c!975813) (regTwo!31618 (regTwo!31619 (regOne!31618 r!7292))) (regTwo!31619 (regOne!31618 r!7292)))))))

(declare-fun b!5574753 () Bool)

(assert (=> b!5574753 (= e!3440198 (nullable!5585 (regOne!31618 (regTwo!31619 (regOne!31618 r!7292)))))))

(declare-fun bm!416588 () Bool)

(assert (=> bm!416588 (= call!416590 (derivationStepZipperDown!895 (ite c!975811 (regOne!31619 (regTwo!31619 (regOne!31618 r!7292))) (regOne!31618 (regTwo!31619 (regOne!31618 r!7292)))) (ite c!975811 lt!2252244 (Context!9875 call!416588)) (h!69284 s!2326)))))

(assert (= (and d!1762720 c!975810) b!5574747))

(assert (= (and d!1762720 (not c!975810)) b!5574743))

(assert (= (and b!5574743 c!975811) b!5574751))

(assert (= (and b!5574743 (not c!975811)) b!5574745))

(assert (= (and b!5574745 res!2366189) b!5574753))

(assert (= (and b!5574745 c!975812) b!5574752))

(assert (= (and b!5574745 (not c!975812)) b!5574746))

(assert (= (and b!5574746 c!975813) b!5574748))

(assert (= (and b!5574746 (not c!975813)) b!5574744))

(assert (= (and b!5574744 c!975809) b!5574750))

(assert (= (and b!5574744 (not c!975809)) b!5574749))

(assert (= (or b!5574748 b!5574750) bm!416587))

(assert (= (or b!5574748 b!5574750) bm!416584))

(assert (= (or b!5574752 bm!416587) bm!416586))

(assert (= (or b!5574752 bm!416584) bm!416585))

(assert (= (or b!5574751 bm!416585) bm!416583))

(assert (= (or b!5574751 b!5574752) bm!416588))

(declare-fun m!6558272 () Bool)

(assert (=> b!5574753 m!6558272))

(declare-fun m!6558274 () Bool)

(assert (=> bm!416586 m!6558274))

(declare-fun m!6558276 () Bool)

(assert (=> bm!416583 m!6558276))

(declare-fun m!6558278 () Bool)

(assert (=> b!5574747 m!6558278))

(declare-fun m!6558280 () Bool)

(assert (=> bm!416588 m!6558280))

(assert (=> b!5574058 d!1762720))

(declare-fun b!5574754 () Bool)

(declare-fun e!3440206 () (InoxSet Context!9874))

(declare-fun e!3440202 () (InoxSet Context!9874))

(assert (=> b!5574754 (= e!3440206 e!3440202)))

(declare-fun c!975816 () Bool)

(assert (=> b!5574754 (= c!975816 ((_ is Union!15553) (regOne!31619 (regOne!31618 r!7292))))))

(declare-fun call!416597 () (InoxSet Context!9874))

(declare-fun c!975818 () Bool)

(declare-fun c!975817 () Bool)

(declare-fun call!416598 () List!62958)

(declare-fun bm!416589 () Bool)

(assert (=> bm!416589 (= call!416597 (derivationStepZipperDown!895 (ite c!975816 (regTwo!31619 (regOne!31619 (regOne!31618 r!7292))) (ite c!975817 (regTwo!31618 (regOne!31619 (regOne!31618 r!7292))) (ite c!975818 (regOne!31618 (regOne!31619 (regOne!31618 r!7292))) (reg!15882 (regOne!31619 (regOne!31618 r!7292)))))) (ite (or c!975816 c!975817) lt!2252244 (Context!9875 call!416598)) (h!69284 s!2326)))))

(declare-fun bm!416590 () Bool)

(declare-fun call!416599 () (InoxSet Context!9874))

(declare-fun call!416595 () (InoxSet Context!9874))

(assert (=> bm!416590 (= call!416599 call!416595)))

(declare-fun b!5574755 () Bool)

(declare-fun c!975814 () Bool)

(assert (=> b!5574755 (= c!975814 ((_ is Star!15553) (regOne!31619 (regOne!31618 r!7292))))))

(declare-fun e!3440201 () (InoxSet Context!9874))

(declare-fun e!3440203 () (InoxSet Context!9874))

(assert (=> b!5574755 (= e!3440201 e!3440203)))

(declare-fun bm!416591 () Bool)

(assert (=> bm!416591 (= call!416595 call!416597)))

(declare-fun b!5574756 () Bool)

(declare-fun e!3440204 () Bool)

(assert (=> b!5574756 (= c!975817 e!3440204)))

(declare-fun res!2366190 () Bool)

(assert (=> b!5574756 (=> (not res!2366190) (not e!3440204))))

(assert (=> b!5574756 (= res!2366190 ((_ is Concat!24398) (regOne!31619 (regOne!31618 r!7292))))))

(declare-fun e!3440205 () (InoxSet Context!9874))

(assert (=> b!5574756 (= e!3440202 e!3440205)))

(declare-fun b!5574757 () Bool)

(assert (=> b!5574757 (= e!3440205 e!3440201)))

(assert (=> b!5574757 (= c!975818 ((_ is Concat!24398) (regOne!31619 (regOne!31618 r!7292))))))

(declare-fun b!5574758 () Bool)

(assert (=> b!5574758 (= e!3440206 (store ((as const (Array Context!9874 Bool)) false) lt!2252244 true))))

(declare-fun b!5574759 () Bool)

(assert (=> b!5574759 (= e!3440201 call!416599)))

(declare-fun bm!416593 () Bool)

(declare-fun call!416594 () List!62958)

(assert (=> bm!416593 (= call!416598 call!416594)))

(declare-fun b!5574760 () Bool)

(assert (=> b!5574760 (= e!3440203 ((as const (Array Context!9874 Bool)) false))))

(declare-fun b!5574761 () Bool)

(assert (=> b!5574761 (= e!3440203 call!416599)))

(declare-fun b!5574762 () Bool)

(declare-fun call!416596 () (InoxSet Context!9874))

(assert (=> b!5574762 (= e!3440202 ((_ map or) call!416596 call!416597))))

(declare-fun b!5574763 () Bool)

(assert (=> b!5574763 (= e!3440205 ((_ map or) call!416596 call!416595))))

(declare-fun d!1762722 () Bool)

(declare-fun c!975815 () Bool)

(assert (=> d!1762722 (= c!975815 (and ((_ is ElementMatch!15553) (regOne!31619 (regOne!31618 r!7292))) (= (c!975620 (regOne!31619 (regOne!31618 r!7292))) (h!69284 s!2326))))))

(assert (=> d!1762722 (= (derivationStepZipperDown!895 (regOne!31619 (regOne!31618 r!7292)) lt!2252244 (h!69284 s!2326)) e!3440206)))

(declare-fun bm!416592 () Bool)

(assert (=> bm!416592 (= call!416594 ($colon$colon!1620 (exprs!5437 lt!2252244) (ite (or c!975817 c!975818) (regTwo!31618 (regOne!31619 (regOne!31618 r!7292))) (regOne!31619 (regOne!31618 r!7292)))))))

(declare-fun b!5574764 () Bool)

(assert (=> b!5574764 (= e!3440204 (nullable!5585 (regOne!31618 (regOne!31619 (regOne!31618 r!7292)))))))

(declare-fun bm!416594 () Bool)

(assert (=> bm!416594 (= call!416596 (derivationStepZipperDown!895 (ite c!975816 (regOne!31619 (regOne!31619 (regOne!31618 r!7292))) (regOne!31618 (regOne!31619 (regOne!31618 r!7292)))) (ite c!975816 lt!2252244 (Context!9875 call!416594)) (h!69284 s!2326)))))

(assert (= (and d!1762722 c!975815) b!5574758))

(assert (= (and d!1762722 (not c!975815)) b!5574754))

(assert (= (and b!5574754 c!975816) b!5574762))

(assert (= (and b!5574754 (not c!975816)) b!5574756))

(assert (= (and b!5574756 res!2366190) b!5574764))

(assert (= (and b!5574756 c!975817) b!5574763))

(assert (= (and b!5574756 (not c!975817)) b!5574757))

(assert (= (and b!5574757 c!975818) b!5574759))

(assert (= (and b!5574757 (not c!975818)) b!5574755))

(assert (= (and b!5574755 c!975814) b!5574761))

(assert (= (and b!5574755 (not c!975814)) b!5574760))

(assert (= (or b!5574759 b!5574761) bm!416593))

(assert (= (or b!5574759 b!5574761) bm!416590))

(assert (= (or b!5574763 bm!416593) bm!416592))

(assert (= (or b!5574763 bm!416590) bm!416591))

(assert (= (or b!5574762 bm!416591) bm!416589))

(assert (= (or b!5574762 b!5574763) bm!416594))

(declare-fun m!6558282 () Bool)

(assert (=> b!5574764 m!6558282))

(declare-fun m!6558284 () Bool)

(assert (=> bm!416592 m!6558284))

(declare-fun m!6558286 () Bool)

(assert (=> bm!416589 m!6558286))

(assert (=> b!5574758 m!6558278))

(declare-fun m!6558288 () Bool)

(assert (=> bm!416594 m!6558288))

(assert (=> b!5574058 d!1762722))

(declare-fun d!1762724 () Bool)

(assert (=> d!1762724 (= (isEmpty!34637 (t!376228 zl!343)) ((_ is Nil!62835) (t!376228 zl!343)))))

(assert (=> b!5574059 d!1762724))

(declare-fun d!1762726 () Bool)

(declare-fun c!975820 () Bool)

(declare-fun e!3440207 () Bool)

(assert (=> d!1762726 (= c!975820 e!3440207)))

(declare-fun res!2366191 () Bool)

(assert (=> d!1762726 (=> (not res!2366191) (not e!3440207))))

(assert (=> d!1762726 (= res!2366191 ((_ is Cons!62834) (exprs!5437 (Context!9875 (Cons!62834 (h!69282 (exprs!5437 (h!69283 zl!343))) (t!376227 (exprs!5437 (h!69283 zl!343))))))))))

(declare-fun e!3440208 () (InoxSet Context!9874))

(assert (=> d!1762726 (= (derivationStepZipperUp!821 (Context!9875 (Cons!62834 (h!69282 (exprs!5437 (h!69283 zl!343))) (t!376227 (exprs!5437 (h!69283 zl!343))))) (h!69284 s!2326)) e!3440208)))

(declare-fun b!5574765 () Bool)

(declare-fun e!3440209 () (InoxSet Context!9874))

(assert (=> b!5574765 (= e!3440209 ((as const (Array Context!9874 Bool)) false))))

(declare-fun b!5574766 () Bool)

(declare-fun call!416600 () (InoxSet Context!9874))

(assert (=> b!5574766 (= e!3440209 call!416600)))

(declare-fun b!5574767 () Bool)

(assert (=> b!5574767 (= e!3440207 (nullable!5585 (h!69282 (exprs!5437 (Context!9875 (Cons!62834 (h!69282 (exprs!5437 (h!69283 zl!343))) (t!376227 (exprs!5437 (h!69283 zl!343)))))))))))

(declare-fun b!5574768 () Bool)

(assert (=> b!5574768 (= e!3440208 e!3440209)))

(declare-fun c!975819 () Bool)

(assert (=> b!5574768 (= c!975819 ((_ is Cons!62834) (exprs!5437 (Context!9875 (Cons!62834 (h!69282 (exprs!5437 (h!69283 zl!343))) (t!376227 (exprs!5437 (h!69283 zl!343))))))))))

(declare-fun bm!416595 () Bool)

(assert (=> bm!416595 (= call!416600 (derivationStepZipperDown!895 (h!69282 (exprs!5437 (Context!9875 (Cons!62834 (h!69282 (exprs!5437 (h!69283 zl!343))) (t!376227 (exprs!5437 (h!69283 zl!343))))))) (Context!9875 (t!376227 (exprs!5437 (Context!9875 (Cons!62834 (h!69282 (exprs!5437 (h!69283 zl!343))) (t!376227 (exprs!5437 (h!69283 zl!343)))))))) (h!69284 s!2326)))))

(declare-fun b!5574769 () Bool)

(assert (=> b!5574769 (= e!3440208 ((_ map or) call!416600 (derivationStepZipperUp!821 (Context!9875 (t!376227 (exprs!5437 (Context!9875 (Cons!62834 (h!69282 (exprs!5437 (h!69283 zl!343))) (t!376227 (exprs!5437 (h!69283 zl!343)))))))) (h!69284 s!2326))))))

(assert (= (and d!1762726 res!2366191) b!5574767))

(assert (= (and d!1762726 c!975820) b!5574769))

(assert (= (and d!1762726 (not c!975820)) b!5574768))

(assert (= (and b!5574768 c!975819) b!5574766))

(assert (= (and b!5574768 (not c!975819)) b!5574765))

(assert (= (or b!5574769 b!5574766) bm!416595))

(declare-fun m!6558290 () Bool)

(assert (=> b!5574767 m!6558290))

(declare-fun m!6558292 () Bool)

(assert (=> bm!416595 m!6558292))

(declare-fun m!6558294 () Bool)

(assert (=> b!5574769 m!6558294))

(assert (=> b!5574069 d!1762726))

(declare-fun b!5574770 () Bool)

(declare-fun e!3440215 () (InoxSet Context!9874))

(declare-fun e!3440211 () (InoxSet Context!9874))

(assert (=> b!5574770 (= e!3440215 e!3440211)))

(declare-fun c!975823 () Bool)

(assert (=> b!5574770 (= c!975823 ((_ is Union!15553) (h!69282 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun c!975824 () Bool)

(declare-fun c!975825 () Bool)

(declare-fun call!416604 () (InoxSet Context!9874))

(declare-fun bm!416596 () Bool)

(declare-fun call!416605 () List!62958)

(assert (=> bm!416596 (= call!416604 (derivationStepZipperDown!895 (ite c!975823 (regTwo!31619 (h!69282 (exprs!5437 (h!69283 zl!343)))) (ite c!975824 (regTwo!31618 (h!69282 (exprs!5437 (h!69283 zl!343)))) (ite c!975825 (regOne!31618 (h!69282 (exprs!5437 (h!69283 zl!343)))) (reg!15882 (h!69282 (exprs!5437 (h!69283 zl!343))))))) (ite (or c!975823 c!975824) lt!2252244 (Context!9875 call!416605)) (h!69284 s!2326)))))

(declare-fun bm!416597 () Bool)

(declare-fun call!416606 () (InoxSet Context!9874))

(declare-fun call!416602 () (InoxSet Context!9874))

(assert (=> bm!416597 (= call!416606 call!416602)))

(declare-fun b!5574771 () Bool)

(declare-fun c!975821 () Bool)

(assert (=> b!5574771 (= c!975821 ((_ is Star!15553) (h!69282 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun e!3440210 () (InoxSet Context!9874))

(declare-fun e!3440212 () (InoxSet Context!9874))

(assert (=> b!5574771 (= e!3440210 e!3440212)))

(declare-fun bm!416598 () Bool)

(assert (=> bm!416598 (= call!416602 call!416604)))

(declare-fun b!5574772 () Bool)

(declare-fun e!3440213 () Bool)

(assert (=> b!5574772 (= c!975824 e!3440213)))

(declare-fun res!2366192 () Bool)

(assert (=> b!5574772 (=> (not res!2366192) (not e!3440213))))

(assert (=> b!5574772 (= res!2366192 ((_ is Concat!24398) (h!69282 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun e!3440214 () (InoxSet Context!9874))

(assert (=> b!5574772 (= e!3440211 e!3440214)))

(declare-fun b!5574773 () Bool)

(assert (=> b!5574773 (= e!3440214 e!3440210)))

(assert (=> b!5574773 (= c!975825 ((_ is Concat!24398) (h!69282 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun b!5574774 () Bool)

(assert (=> b!5574774 (= e!3440215 (store ((as const (Array Context!9874 Bool)) false) lt!2252244 true))))

(declare-fun b!5574775 () Bool)

(assert (=> b!5574775 (= e!3440210 call!416606)))

(declare-fun bm!416600 () Bool)

(declare-fun call!416601 () List!62958)

(assert (=> bm!416600 (= call!416605 call!416601)))

(declare-fun b!5574776 () Bool)

(assert (=> b!5574776 (= e!3440212 ((as const (Array Context!9874 Bool)) false))))

(declare-fun b!5574777 () Bool)

(assert (=> b!5574777 (= e!3440212 call!416606)))

(declare-fun b!5574778 () Bool)

(declare-fun call!416603 () (InoxSet Context!9874))

(assert (=> b!5574778 (= e!3440211 ((_ map or) call!416603 call!416604))))

(declare-fun b!5574779 () Bool)

(assert (=> b!5574779 (= e!3440214 ((_ map or) call!416603 call!416602))))

(declare-fun d!1762728 () Bool)

(declare-fun c!975822 () Bool)

(assert (=> d!1762728 (= c!975822 (and ((_ is ElementMatch!15553) (h!69282 (exprs!5437 (h!69283 zl!343)))) (= (c!975620 (h!69282 (exprs!5437 (h!69283 zl!343)))) (h!69284 s!2326))))))

(assert (=> d!1762728 (= (derivationStepZipperDown!895 (h!69282 (exprs!5437 (h!69283 zl!343))) lt!2252244 (h!69284 s!2326)) e!3440215)))

(declare-fun bm!416599 () Bool)

(assert (=> bm!416599 (= call!416601 ($colon$colon!1620 (exprs!5437 lt!2252244) (ite (or c!975824 c!975825) (regTwo!31618 (h!69282 (exprs!5437 (h!69283 zl!343)))) (h!69282 (exprs!5437 (h!69283 zl!343))))))))

(declare-fun b!5574780 () Bool)

(assert (=> b!5574780 (= e!3440213 (nullable!5585 (regOne!31618 (h!69282 (exprs!5437 (h!69283 zl!343))))))))

(declare-fun bm!416601 () Bool)

(assert (=> bm!416601 (= call!416603 (derivationStepZipperDown!895 (ite c!975823 (regOne!31619 (h!69282 (exprs!5437 (h!69283 zl!343)))) (regOne!31618 (h!69282 (exprs!5437 (h!69283 zl!343))))) (ite c!975823 lt!2252244 (Context!9875 call!416601)) (h!69284 s!2326)))))

(assert (= (and d!1762728 c!975822) b!5574774))

(assert (= (and d!1762728 (not c!975822)) b!5574770))

(assert (= (and b!5574770 c!975823) b!5574778))

(assert (= (and b!5574770 (not c!975823)) b!5574772))

(assert (= (and b!5574772 res!2366192) b!5574780))

(assert (= (and b!5574772 c!975824) b!5574779))

(assert (= (and b!5574772 (not c!975824)) b!5574773))

(assert (= (and b!5574773 c!975825) b!5574775))

(assert (= (and b!5574773 (not c!975825)) b!5574771))

(assert (= (and b!5574771 c!975821) b!5574777))

(assert (= (and b!5574771 (not c!975821)) b!5574776))

(assert (= (or b!5574775 b!5574777) bm!416600))

(assert (= (or b!5574775 b!5574777) bm!416597))

(assert (= (or b!5574779 bm!416600) bm!416599))

(assert (= (or b!5574779 bm!416597) bm!416598))

(assert (= (or b!5574778 bm!416598) bm!416596))

(assert (= (or b!5574778 b!5574779) bm!416601))

(declare-fun m!6558296 () Bool)

(assert (=> b!5574780 m!6558296))

(declare-fun m!6558298 () Bool)

(assert (=> bm!416599 m!6558298))

(declare-fun m!6558300 () Bool)

(assert (=> bm!416596 m!6558300))

(assert (=> b!5574774 m!6558278))

(declare-fun m!6558302 () Bool)

(assert (=> bm!416601 m!6558302))

(assert (=> b!5574069 d!1762728))

(declare-fun d!1762730 () Bool)

(assert (=> d!1762730 (= (flatMap!1166 z!1189 lambda!298732) (choose!42230 z!1189 lambda!298732))))

(declare-fun bs!1290177 () Bool)

(assert (= bs!1290177 d!1762730))

(declare-fun m!6558304 () Bool)

(assert (=> bs!1290177 m!6558304))

(assert (=> b!5574069 d!1762730))

(declare-fun d!1762732 () Bool)

(declare-fun c!975827 () Bool)

(declare-fun e!3440216 () Bool)

(assert (=> d!1762732 (= c!975827 e!3440216)))

(declare-fun res!2366193 () Bool)

(assert (=> d!1762732 (=> (not res!2366193) (not e!3440216))))

(assert (=> d!1762732 (= res!2366193 ((_ is Cons!62834) (exprs!5437 (h!69283 zl!343))))))

(declare-fun e!3440217 () (InoxSet Context!9874))

(assert (=> d!1762732 (= (derivationStepZipperUp!821 (h!69283 zl!343) (h!69284 s!2326)) e!3440217)))

(declare-fun b!5574781 () Bool)

(declare-fun e!3440218 () (InoxSet Context!9874))

(assert (=> b!5574781 (= e!3440218 ((as const (Array Context!9874 Bool)) false))))

(declare-fun b!5574782 () Bool)

(declare-fun call!416607 () (InoxSet Context!9874))

(assert (=> b!5574782 (= e!3440218 call!416607)))

(declare-fun b!5574783 () Bool)

(assert (=> b!5574783 (= e!3440216 (nullable!5585 (h!69282 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun b!5574784 () Bool)

(assert (=> b!5574784 (= e!3440217 e!3440218)))

(declare-fun c!975826 () Bool)

(assert (=> b!5574784 (= c!975826 ((_ is Cons!62834) (exprs!5437 (h!69283 zl!343))))))

(declare-fun bm!416602 () Bool)

(assert (=> bm!416602 (= call!416607 (derivationStepZipperDown!895 (h!69282 (exprs!5437 (h!69283 zl!343))) (Context!9875 (t!376227 (exprs!5437 (h!69283 zl!343)))) (h!69284 s!2326)))))

(declare-fun b!5574785 () Bool)

(assert (=> b!5574785 (= e!3440217 ((_ map or) call!416607 (derivationStepZipperUp!821 (Context!9875 (t!376227 (exprs!5437 (h!69283 zl!343)))) (h!69284 s!2326))))))

(assert (= (and d!1762732 res!2366193) b!5574783))

(assert (= (and d!1762732 c!975827) b!5574785))

(assert (= (and d!1762732 (not c!975827)) b!5574784))

(assert (= (and b!5574784 c!975826) b!5574782))

(assert (= (and b!5574784 (not c!975826)) b!5574781))

(assert (= (or b!5574785 b!5574782) bm!416602))

(assert (=> b!5574783 m!6557784))

(declare-fun m!6558306 () Bool)

(assert (=> bm!416602 m!6558306))

(declare-fun m!6558308 () Bool)

(assert (=> b!5574785 m!6558308))

(assert (=> b!5574069 d!1762732))

(declare-fun d!1762734 () Bool)

(declare-fun c!975829 () Bool)

(declare-fun e!3440219 () Bool)

(assert (=> d!1762734 (= c!975829 e!3440219)))

(declare-fun res!2366194 () Bool)

(assert (=> d!1762734 (=> (not res!2366194) (not e!3440219))))

(assert (=> d!1762734 (= res!2366194 ((_ is Cons!62834) (exprs!5437 lt!2252244)))))

(declare-fun e!3440220 () (InoxSet Context!9874))

(assert (=> d!1762734 (= (derivationStepZipperUp!821 lt!2252244 (h!69284 s!2326)) e!3440220)))

(declare-fun b!5574786 () Bool)

(declare-fun e!3440221 () (InoxSet Context!9874))

(assert (=> b!5574786 (= e!3440221 ((as const (Array Context!9874 Bool)) false))))

(declare-fun b!5574787 () Bool)

(declare-fun call!416608 () (InoxSet Context!9874))

(assert (=> b!5574787 (= e!3440221 call!416608)))

(declare-fun b!5574788 () Bool)

(assert (=> b!5574788 (= e!3440219 (nullable!5585 (h!69282 (exprs!5437 lt!2252244))))))

(declare-fun b!5574789 () Bool)

(assert (=> b!5574789 (= e!3440220 e!3440221)))

(declare-fun c!975828 () Bool)

(assert (=> b!5574789 (= c!975828 ((_ is Cons!62834) (exprs!5437 lt!2252244)))))

(declare-fun bm!416603 () Bool)

(assert (=> bm!416603 (= call!416608 (derivationStepZipperDown!895 (h!69282 (exprs!5437 lt!2252244)) (Context!9875 (t!376227 (exprs!5437 lt!2252244))) (h!69284 s!2326)))))

(declare-fun b!5574790 () Bool)

(assert (=> b!5574790 (= e!3440220 ((_ map or) call!416608 (derivationStepZipperUp!821 (Context!9875 (t!376227 (exprs!5437 lt!2252244))) (h!69284 s!2326))))))

(assert (= (and d!1762734 res!2366194) b!5574788))

(assert (= (and d!1762734 c!975829) b!5574790))

(assert (= (and d!1762734 (not c!975829)) b!5574789))

(assert (= (and b!5574789 c!975828) b!5574787))

(assert (= (and b!5574789 (not c!975828)) b!5574786))

(assert (= (or b!5574790 b!5574787) bm!416603))

(declare-fun m!6558310 () Bool)

(assert (=> b!5574788 m!6558310))

(declare-fun m!6558312 () Bool)

(assert (=> bm!416603 m!6558312))

(declare-fun m!6558314 () Bool)

(assert (=> b!5574790 m!6558314))

(assert (=> b!5574069 d!1762734))

(declare-fun d!1762736 () Bool)

(assert (=> d!1762736 (= (flatMap!1166 z!1189 lambda!298732) (dynLambda!24575 lambda!298732 (h!69283 zl!343)))))

(declare-fun lt!2252346 () Unit!155584)

(assert (=> d!1762736 (= lt!2252346 (choose!42231 z!1189 (h!69283 zl!343) lambda!298732))))

(assert (=> d!1762736 (= z!1189 (store ((as const (Array Context!9874 Bool)) false) (h!69283 zl!343) true))))

(assert (=> d!1762736 (= (lemmaFlatMapOnSingletonSet!698 z!1189 (h!69283 zl!343) lambda!298732) lt!2252346)))

(declare-fun b_lambda!211365 () Bool)

(assert (=> (not b_lambda!211365) (not d!1762736)))

(declare-fun bs!1290178 () Bool)

(assert (= bs!1290178 d!1762736))

(assert (=> bs!1290178 m!6557788))

(declare-fun m!6558316 () Bool)

(assert (=> bs!1290178 m!6558316))

(declare-fun m!6558318 () Bool)

(assert (=> bs!1290178 m!6558318))

(declare-fun m!6558320 () Bool)

(assert (=> bs!1290178 m!6558320))

(assert (=> b!5574069 d!1762736))

(declare-fun d!1762738 () Bool)

(assert (=> d!1762738 (= (nullable!5585 (h!69282 (exprs!5437 (h!69283 zl!343)))) (nullableFct!1699 (h!69282 (exprs!5437 (h!69283 zl!343)))))))

(declare-fun bs!1290179 () Bool)

(assert (= bs!1290179 d!1762738))

(declare-fun m!6558322 () Bool)

(assert (=> bs!1290179 m!6558322))

(assert (=> b!5574069 d!1762738))

(declare-fun d!1762740 () Bool)

(declare-fun c!975830 () Bool)

(assert (=> d!1762740 (= c!975830 (isEmpty!34640 (t!376229 s!2326)))))

(declare-fun e!3440222 () Bool)

(assert (=> d!1762740 (= (matchZipper!1691 lt!2252246 (t!376229 s!2326)) e!3440222)))

(declare-fun b!5574791 () Bool)

(assert (=> b!5574791 (= e!3440222 (nullableZipper!1553 lt!2252246))))

(declare-fun b!5574792 () Bool)

(assert (=> b!5574792 (= e!3440222 (matchZipper!1691 (derivationStepZipper!1652 lt!2252246 (head!11884 (t!376229 s!2326))) (tail!10979 (t!376229 s!2326))))))

(assert (= (and d!1762740 c!975830) b!5574791))

(assert (= (and d!1762740 (not c!975830)) b!5574792))

(assert (=> d!1762740 m!6558210))

(declare-fun m!6558324 () Bool)

(assert (=> b!5574791 m!6558324))

(assert (=> b!5574792 m!6558214))

(assert (=> b!5574792 m!6558214))

(declare-fun m!6558326 () Bool)

(assert (=> b!5574792 m!6558326))

(assert (=> b!5574792 m!6558218))

(assert (=> b!5574792 m!6558326))

(assert (=> b!5574792 m!6558218))

(declare-fun m!6558328 () Bool)

(assert (=> b!5574792 m!6558328))

(assert (=> b!5574060 d!1762740))

(declare-fun b!5574805 () Bool)

(declare-fun e!3440225 () Bool)

(declare-fun tp!1542878 () Bool)

(assert (=> b!5574805 (= e!3440225 tp!1542878)))

(assert (=> b!5574080 (= tp!1542799 e!3440225)))

(declare-fun b!5574804 () Bool)

(declare-fun tp!1542880 () Bool)

(declare-fun tp!1542877 () Bool)

(assert (=> b!5574804 (= e!3440225 (and tp!1542880 tp!1542877))))

(declare-fun b!5574803 () Bool)

(assert (=> b!5574803 (= e!3440225 tp_is_empty!40359)))

(declare-fun b!5574806 () Bool)

(declare-fun tp!1542876 () Bool)

(declare-fun tp!1542879 () Bool)

(assert (=> b!5574806 (= e!3440225 (and tp!1542876 tp!1542879))))

(assert (= (and b!5574080 ((_ is ElementMatch!15553) (reg!15882 r!7292))) b!5574803))

(assert (= (and b!5574080 ((_ is Concat!24398) (reg!15882 r!7292))) b!5574804))

(assert (= (and b!5574080 ((_ is Star!15553) (reg!15882 r!7292))) b!5574805))

(assert (= (and b!5574080 ((_ is Union!15553) (reg!15882 r!7292))) b!5574806))

(declare-fun b!5574811 () Bool)

(declare-fun e!3440228 () Bool)

(declare-fun tp!1542885 () Bool)

(declare-fun tp!1542886 () Bool)

(assert (=> b!5574811 (= e!3440228 (and tp!1542885 tp!1542886))))

(assert (=> b!5574064 (= tp!1542807 e!3440228)))

(assert (= (and b!5574064 ((_ is Cons!62834) (exprs!5437 setElem!37067))) b!5574811))

(declare-fun b!5574819 () Bool)

(declare-fun e!3440234 () Bool)

(declare-fun tp!1542891 () Bool)

(assert (=> b!5574819 (= e!3440234 tp!1542891)))

(declare-fun b!5574818 () Bool)

(declare-fun e!3440233 () Bool)

(declare-fun tp!1542892 () Bool)

(assert (=> b!5574818 (= e!3440233 (and (inv!82129 (h!69283 (t!376228 zl!343))) e!3440234 tp!1542892))))

(assert (=> b!5574070 (= tp!1542800 e!3440233)))

(assert (= b!5574818 b!5574819))

(assert (= (and b!5574070 ((_ is Cons!62835) (t!376228 zl!343))) b!5574818))

(declare-fun m!6558330 () Bool)

(assert (=> b!5574818 m!6558330))

(declare-fun b!5574824 () Bool)

(declare-fun e!3440237 () Bool)

(declare-fun tp!1542895 () Bool)

(assert (=> b!5574824 (= e!3440237 (and tp_is_empty!40359 tp!1542895))))

(assert (=> b!5574076 (= tp!1542806 e!3440237)))

(assert (= (and b!5574076 ((_ is Cons!62836) (t!376229 s!2326))) b!5574824))

(declare-fun condSetEmpty!37073 () Bool)

(assert (=> setNonEmpty!37067 (= condSetEmpty!37073 (= setRest!37067 ((as const (Array Context!9874 Bool)) false)))))

(declare-fun setRes!37073 () Bool)

(assert (=> setNonEmpty!37067 (= tp!1542801 setRes!37073)))

(declare-fun setIsEmpty!37073 () Bool)

(assert (=> setIsEmpty!37073 setRes!37073))

(declare-fun setNonEmpty!37073 () Bool)

(declare-fun setElem!37073 () Context!9874)

(declare-fun tp!1542901 () Bool)

(declare-fun e!3440240 () Bool)

(assert (=> setNonEmpty!37073 (= setRes!37073 (and tp!1542901 (inv!82129 setElem!37073) e!3440240))))

(declare-fun setRest!37073 () (InoxSet Context!9874))

(assert (=> setNonEmpty!37073 (= setRest!37067 ((_ map or) (store ((as const (Array Context!9874 Bool)) false) setElem!37073 true) setRest!37073))))

(declare-fun b!5574829 () Bool)

(declare-fun tp!1542900 () Bool)

(assert (=> b!5574829 (= e!3440240 tp!1542900)))

(assert (= (and setNonEmpty!37067 condSetEmpty!37073) setIsEmpty!37073))

(assert (= (and setNonEmpty!37067 (not condSetEmpty!37073)) setNonEmpty!37073))

(assert (= setNonEmpty!37073 b!5574829))

(declare-fun m!6558332 () Bool)

(assert (=> setNonEmpty!37073 m!6558332))

(declare-fun b!5574832 () Bool)

(declare-fun e!3440241 () Bool)

(declare-fun tp!1542904 () Bool)

(assert (=> b!5574832 (= e!3440241 tp!1542904)))

(assert (=> b!5574066 (= tp!1542805 e!3440241)))

(declare-fun b!5574831 () Bool)

(declare-fun tp!1542906 () Bool)

(declare-fun tp!1542903 () Bool)

(assert (=> b!5574831 (= e!3440241 (and tp!1542906 tp!1542903))))

(declare-fun b!5574830 () Bool)

(assert (=> b!5574830 (= e!3440241 tp_is_empty!40359)))

(declare-fun b!5574833 () Bool)

(declare-fun tp!1542902 () Bool)

(declare-fun tp!1542905 () Bool)

(assert (=> b!5574833 (= e!3440241 (and tp!1542902 tp!1542905))))

(assert (= (and b!5574066 ((_ is ElementMatch!15553) (regOne!31618 r!7292))) b!5574830))

(assert (= (and b!5574066 ((_ is Concat!24398) (regOne!31618 r!7292))) b!5574831))

(assert (= (and b!5574066 ((_ is Star!15553) (regOne!31618 r!7292))) b!5574832))

(assert (= (and b!5574066 ((_ is Union!15553) (regOne!31618 r!7292))) b!5574833))

(declare-fun b!5574836 () Bool)

(declare-fun e!3440242 () Bool)

(declare-fun tp!1542909 () Bool)

(assert (=> b!5574836 (= e!3440242 tp!1542909)))

(assert (=> b!5574066 (= tp!1542802 e!3440242)))

(declare-fun b!5574835 () Bool)

(declare-fun tp!1542911 () Bool)

(declare-fun tp!1542908 () Bool)

(assert (=> b!5574835 (= e!3440242 (and tp!1542911 tp!1542908))))

(declare-fun b!5574834 () Bool)

(assert (=> b!5574834 (= e!3440242 tp_is_empty!40359)))

(declare-fun b!5574837 () Bool)

(declare-fun tp!1542907 () Bool)

(declare-fun tp!1542910 () Bool)

(assert (=> b!5574837 (= e!3440242 (and tp!1542907 tp!1542910))))

(assert (= (and b!5574066 ((_ is ElementMatch!15553) (regTwo!31618 r!7292))) b!5574834))

(assert (= (and b!5574066 ((_ is Concat!24398) (regTwo!31618 r!7292))) b!5574835))

(assert (= (and b!5574066 ((_ is Star!15553) (regTwo!31618 r!7292))) b!5574836))

(assert (= (and b!5574066 ((_ is Union!15553) (regTwo!31618 r!7292))) b!5574837))

(declare-fun b!5574838 () Bool)

(declare-fun e!3440243 () Bool)

(declare-fun tp!1542912 () Bool)

(declare-fun tp!1542913 () Bool)

(assert (=> b!5574838 (= e!3440243 (and tp!1542912 tp!1542913))))

(assert (=> b!5574073 (= tp!1542803 e!3440243)))

(assert (= (and b!5574073 ((_ is Cons!62834) (exprs!5437 (h!69283 zl!343)))) b!5574838))

(declare-fun b!5574841 () Bool)

(declare-fun e!3440244 () Bool)

(declare-fun tp!1542916 () Bool)

(assert (=> b!5574841 (= e!3440244 tp!1542916)))

(assert (=> b!5574074 (= tp!1542798 e!3440244)))

(declare-fun b!5574840 () Bool)

(declare-fun tp!1542918 () Bool)

(declare-fun tp!1542915 () Bool)

(assert (=> b!5574840 (= e!3440244 (and tp!1542918 tp!1542915))))

(declare-fun b!5574839 () Bool)

(assert (=> b!5574839 (= e!3440244 tp_is_empty!40359)))

(declare-fun b!5574842 () Bool)

(declare-fun tp!1542914 () Bool)

(declare-fun tp!1542917 () Bool)

(assert (=> b!5574842 (= e!3440244 (and tp!1542914 tp!1542917))))

(assert (= (and b!5574074 ((_ is ElementMatch!15553) (regOne!31619 r!7292))) b!5574839))

(assert (= (and b!5574074 ((_ is Concat!24398) (regOne!31619 r!7292))) b!5574840))

(assert (= (and b!5574074 ((_ is Star!15553) (regOne!31619 r!7292))) b!5574841))

(assert (= (and b!5574074 ((_ is Union!15553) (regOne!31619 r!7292))) b!5574842))

(declare-fun b!5574845 () Bool)

(declare-fun e!3440245 () Bool)

(declare-fun tp!1542921 () Bool)

(assert (=> b!5574845 (= e!3440245 tp!1542921)))

(assert (=> b!5574074 (= tp!1542804 e!3440245)))

(declare-fun b!5574844 () Bool)

(declare-fun tp!1542923 () Bool)

(declare-fun tp!1542920 () Bool)

(assert (=> b!5574844 (= e!3440245 (and tp!1542923 tp!1542920))))

(declare-fun b!5574843 () Bool)

(assert (=> b!5574843 (= e!3440245 tp_is_empty!40359)))

(declare-fun b!5574846 () Bool)

(declare-fun tp!1542919 () Bool)

(declare-fun tp!1542922 () Bool)

(assert (=> b!5574846 (= e!3440245 (and tp!1542919 tp!1542922))))

(assert (= (and b!5574074 ((_ is ElementMatch!15553) (regTwo!31619 r!7292))) b!5574843))

(assert (= (and b!5574074 ((_ is Concat!24398) (regTwo!31619 r!7292))) b!5574844))

(assert (= (and b!5574074 ((_ is Star!15553) (regTwo!31619 r!7292))) b!5574845))

(assert (= (and b!5574074 ((_ is Union!15553) (regTwo!31619 r!7292))) b!5574846))

(declare-fun b_lambda!211367 () Bool)

(assert (= b_lambda!211365 (or b!5574069 b_lambda!211367)))

(declare-fun bs!1290180 () Bool)

(declare-fun d!1762742 () Bool)

(assert (= bs!1290180 (and d!1762742 b!5574069)))

(assert (=> bs!1290180 (= (dynLambda!24575 lambda!298732 (h!69283 zl!343)) (derivationStepZipperUp!821 (h!69283 zl!343) (h!69284 s!2326)))))

(assert (=> bs!1290180 m!6557780))

(assert (=> d!1762736 d!1762742))

(declare-fun b_lambda!211369 () Bool)

(assert (= b_lambda!211363 (or b!5574069 b_lambda!211369)))

(declare-fun bs!1290181 () Bool)

(declare-fun d!1762744 () Bool)

(assert (= bs!1290181 (and d!1762744 b!5574069)))

(assert (=> bs!1290181 (= (dynLambda!24575 lambda!298732 lt!2252250) (derivationStepZipperUp!821 lt!2252250 (h!69284 s!2326)))))

(assert (=> bs!1290181 m!6557846))

(assert (=> d!1762696 d!1762744))

(check-sat (not d!1762636) (not b!5574818) (not b!5574804) (not d!1762702) (not b!5574845) (not b!5574829) (not bm!416589) (not b!5574189) (not d!1762686) (not b!5574708) (not b!5574720) (not b!5574714) (not bs!1290180) (not b!5574499) (not d!1762628) (not bm!416592) (not b!5574496) (not b!5574753) (not b!5574716) (not b!5574706) (not d!1762714) (not b!5574621) (not b!5574717) (not b!5574306) (not d!1762634) (not b!5574683) (not b!5574300) (not d!1762680) (not b!5574707) (not d!1762730) (not b!5574785) (not b!5574615) (not b!5574305) (not b!5574719) (not bm!416601) (not d!1762696) (not b!5574841) (not d!1762690) (not b!5574832) (not bm!416603) (not d!1762718) (not b!5574675) (not b!5574630) (not bm!416565) (not b!5574302) (not bm!416588) (not b!5574833) (not b!5574619) (not d!1762712) (not b!5574190) (not bs!1290181) (not bm!416596) (not b!5574718) (not bm!416586) (not b!5574811) (not b!5574498) (not d!1762594) (not b!5574791) (not b!5574767) (not bm!416595) (not setNonEmpty!37073) (not b!5574835) (not b!5574842) (not b!5574838) (not bm!416504) (not b!5574614) (not b!5574684) (not b!5574806) (not d!1762708) (not d!1762704) (not d!1762656) (not d!1762640) (not bm!416602) (not d!1762700) (not b!5574819) (not d!1762692) (not b!5574670) (not b!5574497) (not b!5574780) (not bm!416541) (not b!5574304) (not d!1762738) (not b!5574837) tp_is_empty!40359 (not b!5574844) (not b!5574654) (not b!5574500) (not b!5574617) (not b!5574764) (not b!5574840) (not d!1762684) (not bm!416599) (not b_lambda!211369) (not bm!416594) (not b!5574792) (not b!5574626) (not b!5574783) (not b!5574846) (not b_lambda!211367) (not d!1762706) (not b!5574682) (not b!5574769) (not b!5574805) (not b!5574710) (not bm!416567) (not d!1762678) (not b!5574681) (not d!1762710) (not d!1762716) (not b!5574713) (not b!5574836) (not b!5574831) (not b!5574612) (not b!5574672) (not b!5574790) (not b!5574685) (not b!5574824) (not b!5574788) (not b!5574493) (not d!1762642) (not d!1762736) (not bm!416583) (not d!1762682) (not b!5574620) (not bm!416505) (not bm!416570) (not b!5574712) (not d!1762740) (not b!5574308) (not b!5574680))
(check-sat)
