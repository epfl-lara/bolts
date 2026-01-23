; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661080 () Bool)

(assert start!661080)

(declare-fun b!6841539 () Bool)

(declare-fun res!2793225 () Bool)

(declare-fun e!4126088 () Bool)

(assert (=> b!6841539 (=> (not res!2793225) (not e!4126088))))

(declare-datatypes ((C!33596 0))(
  ( (C!33597 (val!26500 Int)) )
))
(declare-datatypes ((Regex!16663 0))(
  ( (ElementMatch!16663 (c!1273719 C!33596)) (Concat!25508 (regOne!33838 Regex!16663) (regTwo!33838 Regex!16663)) (EmptyExpr!16663) (Star!16663 (reg!16992 Regex!16663)) (EmptyLang!16663) (Union!16663 (regOne!33839 Regex!16663) (regTwo!33839 Regex!16663)) )
))
(declare-fun r!7292 () Regex!16663)

(declare-datatypes ((List!66288 0))(
  ( (Nil!66164) (Cons!66164 (h!72612 Regex!16663) (t!380031 List!66288)) )
))
(declare-datatypes ((Context!12094 0))(
  ( (Context!12095 (exprs!6547 List!66288)) )
))
(declare-datatypes ((List!66289 0))(
  ( (Nil!66165) (Cons!66165 (h!72613 Context!12094) (t!380032 List!66289)) )
))
(declare-fun zl!343 () List!66289)

(declare-fun unfocusZipper!2405 (List!66289) Regex!16663)

(assert (=> b!6841539 (= res!2793225 (= r!7292 (unfocusZipper!2405 zl!343)))))

(declare-fun b!6841540 () Bool)

(declare-fun e!4126089 () Bool)

(declare-fun tp!1873606 () Bool)

(declare-fun tp!1873607 () Bool)

(assert (=> b!6841540 (= e!4126089 (and tp!1873606 tp!1873607))))

(declare-fun tp!1873613 () Bool)

(declare-fun setNonEmpty!47017 () Bool)

(declare-fun setElem!47017 () Context!12094)

(declare-fun e!4126083 () Bool)

(declare-fun setRes!47017 () Bool)

(declare-fun inv!84904 (Context!12094) Bool)

(assert (=> setNonEmpty!47017 (= setRes!47017 (and tp!1873613 (inv!84904 setElem!47017) e!4126083))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12094))

(declare-fun setRest!47017 () (InoxSet Context!12094))

(assert (=> setNonEmpty!47017 (= z!1189 ((_ map or) (store ((as const (Array Context!12094 Bool)) false) setElem!47017 true) setRest!47017))))

(declare-fun b!6841541 () Bool)

(declare-fun tp_is_empty!42579 () Bool)

(assert (=> b!6841541 (= e!4126089 tp_is_empty!42579)))

(declare-fun b!6841542 () Bool)

(declare-fun res!2793229 () Bool)

(assert (=> b!6841542 (=> (not res!2793229) (not e!4126088))))

(declare-fun toList!10447 ((InoxSet Context!12094)) List!66289)

(assert (=> b!6841542 (= res!2793229 (= (toList!10447 z!1189) zl!343))))

(declare-fun b!6841543 () Bool)

(declare-fun tp!1873611 () Bool)

(declare-fun tp!1873610 () Bool)

(assert (=> b!6841543 (= e!4126089 (and tp!1873611 tp!1873610))))

(declare-fun e!4126084 () Bool)

(declare-fun b!6841544 () Bool)

(declare-fun e!4126082 () Bool)

(declare-fun tp!1873614 () Bool)

(assert (=> b!6841544 (= e!4126082 (and (inv!84904 (h!72613 zl!343)) e!4126084 tp!1873614))))

(declare-fun b!6841545 () Bool)

(declare-fun e!4126087 () Bool)

(declare-fun isEmpty!38547 (List!66289) Bool)

(assert (=> b!6841545 (= e!4126087 (isEmpty!38547 (t!380032 zl!343)))))

(declare-fun b!6841546 () Bool)

(declare-fun tp!1873609 () Bool)

(assert (=> b!6841546 (= e!4126089 tp!1873609)))

(declare-fun b!6841547 () Bool)

(declare-fun e!4126086 () Bool)

(declare-fun lt!2455325 () Bool)

(declare-fun lt!2455324 () Bool)

(assert (=> b!6841547 (= e!4126086 (or (not (= lt!2455325 lt!2455324)) (= lt!2455324 lt!2455325)))))

(declare-datatypes ((List!66290 0))(
  ( (Nil!66166) (Cons!66166 (h!72614 C!33596) (t!380033 List!66290)) )
))
(declare-fun s!2326 () List!66290)

(declare-fun matchZipper!2645 ((InoxSet Context!12094) List!66290) Bool)

(assert (=> b!6841547 (= lt!2455325 (matchZipper!2645 z!1189 s!2326))))

(declare-fun res!2793226 () Bool)

(assert (=> start!661080 (=> (not res!2793226) (not e!4126088))))

(declare-fun validRegex!8399 (Regex!16663) Bool)

(assert (=> start!661080 (= res!2793226 (validRegex!8399 r!7292))))

(assert (=> start!661080 e!4126088))

(assert (=> start!661080 e!4126089))

(declare-fun condSetEmpty!47017 () Bool)

(assert (=> start!661080 (= condSetEmpty!47017 (= z!1189 ((as const (Array Context!12094 Bool)) false)))))

(assert (=> start!661080 setRes!47017))

(assert (=> start!661080 e!4126082))

(declare-fun e!4126085 () Bool)

(assert (=> start!661080 e!4126085))

(declare-fun setIsEmpty!47017 () Bool)

(assert (=> setIsEmpty!47017 setRes!47017))

(declare-fun b!6841548 () Bool)

(declare-fun tp!1873612 () Bool)

(assert (=> b!6841548 (= e!4126083 tp!1873612)))

(declare-fun b!6841549 () Bool)

(declare-fun e!4126090 () Bool)

(assert (=> b!6841549 (= e!4126088 (not e!4126090))))

(declare-fun res!2793230 () Bool)

(assert (=> b!6841549 (=> res!2793230 e!4126090)))

(assert (=> b!6841549 (= res!2793230 e!4126087)))

(declare-fun res!2793227 () Bool)

(assert (=> b!6841549 (=> (not res!2793227) (not e!4126087))))

(get-info :version)

(assert (=> b!6841549 (= res!2793227 ((_ is Cons!66165) zl!343))))

(declare-fun matchRSpec!3764 (Regex!16663 List!66290) Bool)

(assert (=> b!6841549 (= lt!2455324 (matchRSpec!3764 r!7292 s!2326))))

(declare-fun matchR!8846 (Regex!16663 List!66290) Bool)

(assert (=> b!6841549 (= lt!2455324 (matchR!8846 r!7292 s!2326))))

(declare-datatypes ((Unit!160025 0))(
  ( (Unit!160026) )
))
(declare-fun lt!2455323 () Unit!160025)

(declare-fun mainMatchTheorem!3764 (Regex!16663 List!66290) Unit!160025)

(assert (=> b!6841549 (= lt!2455323 (mainMatchTheorem!3764 r!7292 s!2326))))

(declare-fun b!6841550 () Bool)

(declare-fun tp!1873608 () Bool)

(assert (=> b!6841550 (= e!4126084 tp!1873608)))

(declare-fun b!6841551 () Bool)

(assert (=> b!6841551 (= e!4126090 e!4126086)))

(declare-fun res!2793228 () Bool)

(assert (=> b!6841551 (=> res!2793228 e!4126086)))

(declare-fun lt!2455326 () Bool)

(declare-fun lt!2455327 () Bool)

(assert (=> b!6841551 (= res!2793228 (not (= lt!2455326 lt!2455327)))))

(assert (=> b!6841551 (= lt!2455327 lt!2455326)))

(declare-fun nullableZipper!2354 ((InoxSet Context!12094)) Bool)

(assert (=> b!6841551 (= lt!2455326 (nullableZipper!2354 z!1189))))

(declare-fun nullable!6628 (Regex!16663) Bool)

(assert (=> b!6841551 (= lt!2455327 (nullable!6628 r!7292))))

(declare-fun lt!2455328 () Unit!160025)

(declare-fun lemmaUnfocusPreservesNullability!40 (Regex!16663 (InoxSet Context!12094)) Unit!160025)

(assert (=> b!6841551 (= lt!2455328 (lemmaUnfocusPreservesNullability!40 r!7292 z!1189))))

(declare-fun b!6841552 () Bool)

(declare-fun res!2793224 () Bool)

(assert (=> b!6841552 (=> res!2793224 e!4126090)))

(assert (=> b!6841552 (= res!2793224 (or (not ((_ is Cons!66165) zl!343)) (not ((_ is Nil!66166) s!2326))))))

(declare-fun b!6841553 () Bool)

(declare-fun tp!1873615 () Bool)

(assert (=> b!6841553 (= e!4126085 (and tp_is_empty!42579 tp!1873615))))

(assert (= (and start!661080 res!2793226) b!6841542))

(assert (= (and b!6841542 res!2793229) b!6841539))

(assert (= (and b!6841539 res!2793225) b!6841549))

(assert (= (and b!6841549 res!2793227) b!6841545))

(assert (= (and b!6841549 (not res!2793230)) b!6841552))

(assert (= (and b!6841552 (not res!2793224)) b!6841551))

(assert (= (and b!6841551 (not res!2793228)) b!6841547))

(assert (= (and start!661080 ((_ is ElementMatch!16663) r!7292)) b!6841541))

(assert (= (and start!661080 ((_ is Concat!25508) r!7292)) b!6841543))

(assert (= (and start!661080 ((_ is Star!16663) r!7292)) b!6841546))

(assert (= (and start!661080 ((_ is Union!16663) r!7292)) b!6841540))

(assert (= (and start!661080 condSetEmpty!47017) setIsEmpty!47017))

(assert (= (and start!661080 (not condSetEmpty!47017)) setNonEmpty!47017))

(assert (= setNonEmpty!47017 b!6841548))

(assert (= b!6841544 b!6841550))

(assert (= (and start!661080 ((_ is Cons!66165) zl!343)) b!6841544))

(assert (= (and start!661080 ((_ is Cons!66166) s!2326)) b!6841553))

(declare-fun m!7584122 () Bool)

(assert (=> setNonEmpty!47017 m!7584122))

(declare-fun m!7584124 () Bool)

(assert (=> b!6841545 m!7584124))

(declare-fun m!7584126 () Bool)

(assert (=> b!6841542 m!7584126))

(declare-fun m!7584128 () Bool)

(assert (=> b!6841539 m!7584128))

(declare-fun m!7584130 () Bool)

(assert (=> b!6841551 m!7584130))

(declare-fun m!7584132 () Bool)

(assert (=> b!6841551 m!7584132))

(declare-fun m!7584134 () Bool)

(assert (=> b!6841551 m!7584134))

(declare-fun m!7584136 () Bool)

(assert (=> b!6841544 m!7584136))

(declare-fun m!7584138 () Bool)

(assert (=> b!6841549 m!7584138))

(declare-fun m!7584140 () Bool)

(assert (=> b!6841549 m!7584140))

(declare-fun m!7584142 () Bool)

(assert (=> b!6841549 m!7584142))

(declare-fun m!7584144 () Bool)

(assert (=> start!661080 m!7584144))

(declare-fun m!7584146 () Bool)

(assert (=> b!6841547 m!7584146))

(check-sat (not b!6841545) (not b!6841543) (not b!6841549) (not b!6841548) (not start!661080) (not b!6841550) (not b!6841540) (not b!6841542) (not b!6841553) (not b!6841551) (not setNonEmpty!47017) (not b!6841544) (not b!6841539) (not b!6841547) (not b!6841546) tp_is_empty!42579)
(check-sat)
