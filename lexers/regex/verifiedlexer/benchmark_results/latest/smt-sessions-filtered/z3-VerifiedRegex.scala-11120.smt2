; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574990 () Bool)

(assert start!574990)

(declare-fun b!5505948 () Bool)

(assert (=> b!5505948 true))

(assert (=> b!5505948 true))

(declare-fun lambda!294839 () Int)

(declare-fun lambda!294838 () Int)

(assert (=> b!5505948 (not (= lambda!294839 lambda!294838))))

(assert (=> b!5505948 true))

(assert (=> b!5505948 true))

(declare-fun b!5505943 () Bool)

(declare-fun res!2346473 () Bool)

(declare-fun e!3405453 () Bool)

(assert (=> b!5505943 (=> res!2346473 e!3405453)))

(declare-datatypes ((C!31244 0))(
  ( (C!31245 (val!25324 Int)) )
))
(declare-datatypes ((Regex!15487 0))(
  ( (ElementMatch!15487 (c!961987 C!31244)) (Concat!24332 (regOne!31486 Regex!15487) (regTwo!31486 Regex!15487)) (EmptyExpr!15487) (Star!15487 (reg!15816 Regex!15487)) (EmptyLang!15487) (Union!15487 (regOne!31487 Regex!15487) (regTwo!31487 Regex!15487)) )
))
(declare-fun r!7292 () Regex!15487)

(declare-datatypes ((List!62760 0))(
  ( (Nil!62636) (Cons!62636 (h!69084 Regex!15487) (t!376001 List!62760)) )
))
(declare-datatypes ((Context!9742 0))(
  ( (Context!9743 (exprs!5371 List!62760)) )
))
(declare-datatypes ((List!62761 0))(
  ( (Nil!62637) (Cons!62637 (h!69085 Context!9742) (t!376002 List!62761)) )
))
(declare-fun zl!343 () List!62761)

(declare-fun generalisedConcat!1102 (List!62760) Regex!15487)

(assert (=> b!5505943 (= res!2346473 (not (= r!7292 (generalisedConcat!1102 (exprs!5371 (h!69085 zl!343))))))))

(declare-fun b!5505945 () Bool)

(declare-fun res!2346475 () Bool)

(assert (=> b!5505945 (=> res!2346475 e!3405453)))

(declare-fun generalisedUnion!1350 (List!62760) Regex!15487)

(declare-fun unfocusZipperList!915 (List!62761) List!62760)

(assert (=> b!5505945 (= res!2346475 (not (= r!7292 (generalisedUnion!1350 (unfocusZipperList!915 zl!343)))))))

(declare-fun b!5505946 () Bool)

(declare-fun e!3405450 () Bool)

(declare-fun tp!1514980 () Bool)

(declare-fun tp!1514975 () Bool)

(assert (=> b!5505946 (= e!3405450 (and tp!1514980 tp!1514975))))

(declare-fun b!5505947 () Bool)

(declare-fun tp_is_empty!40227 () Bool)

(assert (=> b!5505947 (= e!3405450 tp_is_empty!40227)))

(declare-fun e!3405455 () Bool)

(assert (=> b!5505948 (= e!3405453 e!3405455)))

(declare-fun res!2346478 () Bool)

(assert (=> b!5505948 (=> res!2346478 e!3405455)))

(declare-datatypes ((List!62762 0))(
  ( (Nil!62638) (Cons!62638 (h!69086 C!31244) (t!376003 List!62762)) )
))
(declare-fun s!2326 () List!62762)

(declare-fun lt!2244329 () Bool)

(declare-fun lt!2244331 () Bool)

(get-info :version)

(assert (=> b!5505948 (= res!2346478 (or (not (= lt!2244331 lt!2244329)) (not ((_ is Nil!62638) s!2326))))))

(declare-fun Exists!2587 (Int) Bool)

(assert (=> b!5505948 (= (Exists!2587 lambda!294838) (Exists!2587 lambda!294839))))

(declare-datatypes ((Unit!155434 0))(
  ( (Unit!155435) )
))
(declare-fun lt!2244330 () Unit!155434)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1216 (Regex!15487 Regex!15487 List!62762) Unit!155434)

(assert (=> b!5505948 (= lt!2244330 (lemmaExistCutMatchRandMatchRSpecEquivalent!1216 (regOne!31486 r!7292) (regTwo!31486 r!7292) s!2326))))

(assert (=> b!5505948 (= lt!2244329 (Exists!2587 lambda!294838))))

(declare-datatypes ((tuple2!65168 0))(
  ( (tuple2!65169 (_1!35887 List!62762) (_2!35887 List!62762)) )
))
(declare-datatypes ((Option!15496 0))(
  ( (None!15495) (Some!15495 (v!51530 tuple2!65168)) )
))
(declare-fun isDefined!12199 (Option!15496) Bool)

(declare-fun findConcatSeparation!1910 (Regex!15487 Regex!15487 List!62762 List!62762 List!62762) Option!15496)

(assert (=> b!5505948 (= lt!2244329 (isDefined!12199 (findConcatSeparation!1910 (regOne!31486 r!7292) (regTwo!31486 r!7292) Nil!62638 s!2326 s!2326)))))

(declare-fun lt!2244333 () Unit!155434)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1674 (Regex!15487 Regex!15487 List!62762) Unit!155434)

(assert (=> b!5505948 (= lt!2244333 (lemmaFindConcatSeparationEquivalentToExists!1674 (regOne!31486 r!7292) (regTwo!31486 r!7292) s!2326))))

(declare-fun b!5505949 () Bool)

(declare-fun e!3405451 () Bool)

(declare-fun tp!1514983 () Bool)

(assert (=> b!5505949 (= e!3405451 tp!1514983)))

(declare-fun b!5505950 () Bool)

(declare-fun e!3405454 () Bool)

(assert (=> b!5505950 (= e!3405454 (not e!3405453))))

(declare-fun res!2346474 () Bool)

(assert (=> b!5505950 (=> res!2346474 e!3405453)))

(assert (=> b!5505950 (= res!2346474 (not ((_ is Cons!62637) zl!343)))))

(declare-fun matchRSpec!2590 (Regex!15487 List!62762) Bool)

(assert (=> b!5505950 (= lt!2244331 (matchRSpec!2590 r!7292 s!2326))))

(declare-fun matchR!7672 (Regex!15487 List!62762) Bool)

(assert (=> b!5505950 (= lt!2244331 (matchR!7672 r!7292 s!2326))))

(declare-fun lt!2244332 () Unit!155434)

(declare-fun mainMatchTheorem!2590 (Regex!15487 List!62762) Unit!155434)

(assert (=> b!5505950 (= lt!2244332 (mainMatchTheorem!2590 r!7292 s!2326))))

(declare-fun b!5505951 () Bool)

(declare-fun tp!1514976 () Bool)

(assert (=> b!5505951 (= e!3405450 tp!1514976)))

(declare-fun b!5505952 () Bool)

(declare-fun res!2346480 () Bool)

(assert (=> b!5505952 (=> res!2346480 e!3405453)))

(assert (=> b!5505952 (= res!2346480 (not ((_ is Cons!62636) (exprs!5371 (h!69085 zl!343)))))))

(declare-fun b!5505953 () Bool)

(declare-fun e!3405449 () Bool)

(declare-fun tp!1514978 () Bool)

(assert (=> b!5505953 (= e!3405449 (and tp_is_empty!40227 tp!1514978))))

(declare-fun b!5505954 () Bool)

(declare-fun e!3405456 () Bool)

(declare-fun tp!1514982 () Bool)

(assert (=> b!5505954 (= e!3405456 tp!1514982)))

(declare-fun setIsEmpty!36535 () Bool)

(declare-fun setRes!36535 () Bool)

(assert (=> setIsEmpty!36535 setRes!36535))

(declare-fun setNonEmpty!36535 () Bool)

(declare-fun setElem!36535 () Context!9742)

(declare-fun tp!1514979 () Bool)

(declare-fun inv!81964 (Context!9742) Bool)

(assert (=> setNonEmpty!36535 (= setRes!36535 (and tp!1514979 (inv!81964 setElem!36535) e!3405451))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9742))

(declare-fun setRest!36535 () (InoxSet Context!9742))

(assert (=> setNonEmpty!36535 (= z!1189 ((_ map or) (store ((as const (Array Context!9742 Bool)) false) setElem!36535 true) setRest!36535))))

(declare-fun b!5505955 () Bool)

(declare-fun tp!1514974 () Bool)

(declare-fun e!3405452 () Bool)

(assert (=> b!5505955 (= e!3405452 (and (inv!81964 (h!69085 zl!343)) e!3405456 tp!1514974))))

(declare-fun b!5505956 () Bool)

(declare-fun res!2346482 () Bool)

(assert (=> b!5505956 (=> res!2346482 e!3405453)))

(declare-fun isEmpty!34414 (List!62761) Bool)

(assert (=> b!5505956 (= res!2346482 (not (isEmpty!34414 (t!376002 zl!343))))))

(declare-fun b!5505957 () Bool)

(declare-fun tp!1514977 () Bool)

(declare-fun tp!1514981 () Bool)

(assert (=> b!5505957 (= e!3405450 (and tp!1514977 tp!1514981))))

(declare-fun b!5505958 () Bool)

(declare-fun res!2346476 () Bool)

(assert (=> b!5505958 (=> res!2346476 e!3405453)))

(assert (=> b!5505958 (= res!2346476 (or ((_ is EmptyExpr!15487) r!7292) ((_ is EmptyLang!15487) r!7292) ((_ is ElementMatch!15487) r!7292) ((_ is Union!15487) r!7292) (not ((_ is Concat!24332) r!7292))))))

(declare-fun b!5505959 () Bool)

(declare-fun res!2346479 () Bool)

(assert (=> b!5505959 (=> (not res!2346479) (not e!3405454))))

(declare-fun unfocusZipper!1229 (List!62761) Regex!15487)

(assert (=> b!5505959 (= res!2346479 (= r!7292 (unfocusZipper!1229 zl!343)))))

(declare-fun b!5505960 () Bool)

(declare-fun lt!2244327 () Bool)

(declare-fun lt!2244328 () Bool)

(assert (=> b!5505960 (= e!3405455 (= lt!2244327 lt!2244328))))

(assert (=> b!5505960 (= lt!2244328 lt!2244327)))

(declare-fun nullableZipper!1525 ((InoxSet Context!9742)) Bool)

(assert (=> b!5505960 (= lt!2244327 (nullableZipper!1525 z!1189))))

(declare-fun nullable!5521 (Regex!15487) Bool)

(assert (=> b!5505960 (= lt!2244328 (nullable!5521 r!7292))))

(declare-fun lt!2244326 () Unit!155434)

(declare-fun lemmaUnfocusPreservesNullability!20 (Regex!15487 (InoxSet Context!9742)) Unit!155434)

(assert (=> b!5505960 (= lt!2244326 (lemmaUnfocusPreservesNullability!20 r!7292 z!1189))))

(declare-fun b!5505944 () Bool)

(declare-fun res!2346481 () Bool)

(assert (=> b!5505944 (=> (not res!2346481) (not e!3405454))))

(declare-fun toList!9271 ((InoxSet Context!9742)) List!62761)

(assert (=> b!5505944 (= res!2346481 (= (toList!9271 z!1189) zl!343))))

(declare-fun res!2346477 () Bool)

(assert (=> start!574990 (=> (not res!2346477) (not e!3405454))))

(declare-fun validRegex!7223 (Regex!15487) Bool)

(assert (=> start!574990 (= res!2346477 (validRegex!7223 r!7292))))

(assert (=> start!574990 e!3405454))

(assert (=> start!574990 e!3405450))

(declare-fun condSetEmpty!36535 () Bool)

(assert (=> start!574990 (= condSetEmpty!36535 (= z!1189 ((as const (Array Context!9742 Bool)) false)))))

(assert (=> start!574990 setRes!36535))

(assert (=> start!574990 e!3405452))

(assert (=> start!574990 e!3405449))

(assert (= (and start!574990 res!2346477) b!5505944))

(assert (= (and b!5505944 res!2346481) b!5505959))

(assert (= (and b!5505959 res!2346479) b!5505950))

(assert (= (and b!5505950 (not res!2346474)) b!5505956))

(assert (= (and b!5505956 (not res!2346482)) b!5505943))

(assert (= (and b!5505943 (not res!2346473)) b!5505952))

(assert (= (and b!5505952 (not res!2346480)) b!5505945))

(assert (= (and b!5505945 (not res!2346475)) b!5505958))

(assert (= (and b!5505958 (not res!2346476)) b!5505948))

(assert (= (and b!5505948 (not res!2346478)) b!5505960))

(assert (= (and start!574990 ((_ is ElementMatch!15487) r!7292)) b!5505947))

(assert (= (and start!574990 ((_ is Concat!24332) r!7292)) b!5505946))

(assert (= (and start!574990 ((_ is Star!15487) r!7292)) b!5505951))

(assert (= (and start!574990 ((_ is Union!15487) r!7292)) b!5505957))

(assert (= (and start!574990 condSetEmpty!36535) setIsEmpty!36535))

(assert (= (and start!574990 (not condSetEmpty!36535)) setNonEmpty!36535))

(assert (= setNonEmpty!36535 b!5505949))

(assert (= b!5505955 b!5505954))

(assert (= (and start!574990 ((_ is Cons!62637) zl!343)) b!5505955))

(assert (= (and start!574990 ((_ is Cons!62638) s!2326)) b!5505953))

(declare-fun m!6512690 () Bool)

(assert (=> b!5505943 m!6512690))

(declare-fun m!6512692 () Bool)

(assert (=> b!5505944 m!6512692))

(declare-fun m!6512694 () Bool)

(assert (=> b!5505959 m!6512694))

(declare-fun m!6512696 () Bool)

(assert (=> b!5505945 m!6512696))

(assert (=> b!5505945 m!6512696))

(declare-fun m!6512698 () Bool)

(assert (=> b!5505945 m!6512698))

(declare-fun m!6512700 () Bool)

(assert (=> start!574990 m!6512700))

(declare-fun m!6512702 () Bool)

(assert (=> setNonEmpty!36535 m!6512702))

(declare-fun m!6512704 () Bool)

(assert (=> b!5505960 m!6512704))

(declare-fun m!6512706 () Bool)

(assert (=> b!5505960 m!6512706))

(declare-fun m!6512708 () Bool)

(assert (=> b!5505960 m!6512708))

(declare-fun m!6512710 () Bool)

(assert (=> b!5505955 m!6512710))

(declare-fun m!6512712 () Bool)

(assert (=> b!5505956 m!6512712))

(declare-fun m!6512714 () Bool)

(assert (=> b!5505950 m!6512714))

(declare-fun m!6512716 () Bool)

(assert (=> b!5505950 m!6512716))

(declare-fun m!6512718 () Bool)

(assert (=> b!5505950 m!6512718))

(declare-fun m!6512720 () Bool)

(assert (=> b!5505948 m!6512720))

(declare-fun m!6512722 () Bool)

(assert (=> b!5505948 m!6512722))

(declare-fun m!6512724 () Bool)

(assert (=> b!5505948 m!6512724))

(declare-fun m!6512726 () Bool)

(assert (=> b!5505948 m!6512726))

(declare-fun m!6512728 () Bool)

(assert (=> b!5505948 m!6512728))

(assert (=> b!5505948 m!6512720))

(assert (=> b!5505948 m!6512722))

(declare-fun m!6512730 () Bool)

(assert (=> b!5505948 m!6512730))

(check-sat (not b!5505951) (not b!5505957) tp_is_empty!40227 (not b!5505953) (not b!5505956) (not b!5505949) (not b!5505945) (not setNonEmpty!36535) (not b!5505959) (not b!5505954) (not b!5505960) (not b!5505946) (not start!574990) (not b!5505943) (not b!5505955) (not b!5505948) (not b!5505944) (not b!5505950))
(check-sat)
