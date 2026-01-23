; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574066 () Bool)

(assert start!574066)

(declare-fun b!5494496 () Bool)

(declare-fun e!3399183 () Bool)

(declare-fun e!3399182 () Bool)

(assert (=> b!5494496 (= e!3399183 (not e!3399182))))

(declare-fun res!2342843 () Bool)

(assert (=> b!5494496 (=> res!2342843 e!3399182)))

(declare-datatypes ((C!31196 0))(
  ( (C!31197 (val!25300 Int)) )
))
(declare-datatypes ((Regex!15463 0))(
  ( (ElementMatch!15463 (c!959265 C!31196)) (Concat!24308 (regOne!31438 Regex!15463) (regTwo!31438 Regex!15463)) (EmptyExpr!15463) (Star!15463 (reg!15792 Regex!15463)) (EmptyLang!15463) (Union!15463 (regOne!31439 Regex!15463) (regTwo!31439 Regex!15463)) )
))
(declare-datatypes ((List!62688 0))(
  ( (Nil!62564) (Cons!62564 (h!69012 Regex!15463) (t!375919 List!62688)) )
))
(declare-datatypes ((Context!9694 0))(
  ( (Context!9695 (exprs!5347 List!62688)) )
))
(declare-datatypes ((List!62689 0))(
  ( (Nil!62565) (Cons!62565 (h!69013 Context!9694) (t!375920 List!62689)) )
))
(declare-fun zl!343 () List!62689)

(get-info :version)

(assert (=> b!5494496 (= res!2342843 (not ((_ is Cons!62565) zl!343)))))

(declare-fun lt!2242676 () Bool)

(declare-fun r!7292 () Regex!15463)

(declare-datatypes ((List!62690 0))(
  ( (Nil!62566) (Cons!62566 (h!69014 C!31196) (t!375921 List!62690)) )
))
(declare-fun s!2326 () List!62690)

(declare-fun matchRSpec!2566 (Regex!15463 List!62690) Bool)

(assert (=> b!5494496 (= lt!2242676 (matchRSpec!2566 r!7292 s!2326))))

(declare-fun matchR!7648 (Regex!15463 List!62690) Bool)

(assert (=> b!5494496 (= lt!2242676 (matchR!7648 r!7292 s!2326))))

(declare-datatypes ((Unit!155386 0))(
  ( (Unit!155387) )
))
(declare-fun lt!2242675 () Unit!155386)

(declare-fun mainMatchTheorem!2566 (Regex!15463 List!62690) Unit!155386)

(assert (=> b!5494496 (= lt!2242675 (mainMatchTheorem!2566 r!7292 s!2326))))

(declare-fun b!5494497 () Bool)

(declare-fun e!3399186 () Bool)

(declare-fun lt!2242674 () Bool)

(declare-fun lt!2242678 () Bool)

(assert (=> b!5494497 (= e!3399186 (= lt!2242674 lt!2242678))))

(assert (=> b!5494497 (= lt!2242678 lt!2242674)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9694))

(declare-fun nullableZipper!1517 ((InoxSet Context!9694)) Bool)

(assert (=> b!5494497 (= lt!2242674 (nullableZipper!1517 z!1189))))

(declare-fun nullable!5506 (Regex!15463) Bool)

(assert (=> b!5494497 (= lt!2242678 (nullable!5506 r!7292))))

(declare-fun lt!2242677 () Unit!155386)

(declare-fun lemmaUnfocusPreservesNullability!18 (Regex!15463 (InoxSet Context!9694)) Unit!155386)

(assert (=> b!5494497 (= lt!2242677 (lemmaUnfocusPreservesNullability!18 r!7292 z!1189))))

(declare-fun b!5494498 () Bool)

(declare-fun res!2342844 () Bool)

(assert (=> b!5494498 (=> res!2342844 e!3399182)))

(declare-fun generalisedUnion!1326 (List!62688) Regex!15463)

(declare-fun unfocusZipperList!891 (List!62689) List!62688)

(assert (=> b!5494498 (= res!2342844 (not (= r!7292 (generalisedUnion!1326 (unfocusZipperList!891 zl!343)))))))

(declare-fun setNonEmpty!36379 () Bool)

(declare-fun setElem!36379 () Context!9694)

(declare-fun e!3399181 () Bool)

(declare-fun setRes!36379 () Bool)

(declare-fun tp!1511839 () Bool)

(declare-fun inv!81904 (Context!9694) Bool)

(assert (=> setNonEmpty!36379 (= setRes!36379 (and tp!1511839 (inv!81904 setElem!36379) e!3399181))))

(declare-fun setRest!36379 () (InoxSet Context!9694))

(assert (=> setNonEmpty!36379 (= z!1189 ((_ map or) (store ((as const (Array Context!9694 Bool)) false) setElem!36379 true) setRest!36379))))

(declare-fun b!5494499 () Bool)

(declare-fun e!3399185 () Bool)

(declare-fun tp!1511847 () Bool)

(declare-fun tp!1511846 () Bool)

(assert (=> b!5494499 (= e!3399185 (and tp!1511847 tp!1511846))))

(declare-fun b!5494500 () Bool)

(declare-fun res!2342839 () Bool)

(assert (=> b!5494500 (=> res!2342839 e!3399182)))

(assert (=> b!5494500 (= res!2342839 (or ((_ is EmptyExpr!15463) r!7292) ((_ is EmptyLang!15463) r!7292) ((_ is ElementMatch!15463) r!7292) (not ((_ is Union!15463) r!7292))))))

(declare-fun b!5494501 () Bool)

(declare-fun res!2342835 () Bool)

(assert (=> b!5494501 (=> res!2342835 e!3399182)))

(declare-fun isEmpty!34363 (List!62689) Bool)

(assert (=> b!5494501 (= res!2342835 (not (isEmpty!34363 (t!375920 zl!343))))))

(declare-fun b!5494502 () Bool)

(declare-fun res!2342836 () Bool)

(assert (=> b!5494502 (=> (not res!2342836) (not e!3399183))))

(declare-fun unfocusZipper!1205 (List!62689) Regex!15463)

(assert (=> b!5494502 (= res!2342836 (= r!7292 (unfocusZipper!1205 zl!343)))))

(declare-fun b!5494503 () Bool)

(declare-fun res!2342841 () Bool)

(assert (=> b!5494503 (=> (not res!2342841) (not e!3399183))))

(declare-fun toList!9247 ((InoxSet Context!9694)) List!62689)

(assert (=> b!5494503 (= res!2342841 (= (toList!9247 z!1189) zl!343))))

(declare-fun b!5494504 () Bool)

(declare-fun tp!1511841 () Bool)

(assert (=> b!5494504 (= e!3399185 tp!1511841)))

(declare-fun setIsEmpty!36379 () Bool)

(assert (=> setIsEmpty!36379 setRes!36379))

(declare-fun b!5494505 () Bool)

(declare-fun tp!1511845 () Bool)

(declare-fun tp!1511844 () Bool)

(assert (=> b!5494505 (= e!3399185 (and tp!1511845 tp!1511844))))

(declare-fun b!5494506 () Bool)

(declare-fun e!3399180 () Bool)

(declare-fun tp!1511840 () Bool)

(assert (=> b!5494506 (= e!3399180 tp!1511840)))

(declare-fun b!5494495 () Bool)

(declare-fun e!3399179 () Bool)

(declare-fun tp_is_empty!40179 () Bool)

(declare-fun tp!1511838 () Bool)

(assert (=> b!5494495 (= e!3399179 (and tp_is_empty!40179 tp!1511838))))

(declare-fun res!2342838 () Bool)

(assert (=> start!574066 (=> (not res!2342838) (not e!3399183))))

(declare-fun validRegex!7199 (Regex!15463) Bool)

(assert (=> start!574066 (= res!2342838 (validRegex!7199 r!7292))))

(assert (=> start!574066 e!3399183))

(assert (=> start!574066 e!3399185))

(declare-fun condSetEmpty!36379 () Bool)

(assert (=> start!574066 (= condSetEmpty!36379 (= z!1189 ((as const (Array Context!9694 Bool)) false)))))

(assert (=> start!574066 setRes!36379))

(declare-fun e!3399184 () Bool)

(assert (=> start!574066 e!3399184))

(assert (=> start!574066 e!3399179))

(declare-fun b!5494507 () Bool)

(declare-fun res!2342840 () Bool)

(assert (=> b!5494507 (=> res!2342840 e!3399182)))

(assert (=> b!5494507 (= res!2342840 (not ((_ is Cons!62564) (exprs!5347 (h!69013 zl!343)))))))

(declare-fun b!5494508 () Bool)

(declare-fun res!2342837 () Bool)

(assert (=> b!5494508 (=> res!2342837 e!3399182)))

(declare-fun generalisedConcat!1078 (List!62688) Regex!15463)

(assert (=> b!5494508 (= res!2342837 (not (= r!7292 (generalisedConcat!1078 (exprs!5347 (h!69013 zl!343))))))))

(declare-fun b!5494509 () Bool)

(assert (=> b!5494509 (= e!3399182 e!3399186)))

(declare-fun res!2342842 () Bool)

(assert (=> b!5494509 (=> res!2342842 e!3399186)))

(declare-fun lt!2242672 () Bool)

(declare-fun lt!2242679 () Bool)

(assert (=> b!5494509 (= res!2342842 (or (not (= lt!2242676 (or lt!2242679 lt!2242672))) (not ((_ is Nil!62566) s!2326))))))

(assert (=> b!5494509 (= lt!2242672 (matchRSpec!2566 (regTwo!31439 r!7292) s!2326))))

(assert (=> b!5494509 (= lt!2242672 (matchR!7648 (regTwo!31439 r!7292) s!2326))))

(declare-fun lt!2242673 () Unit!155386)

(assert (=> b!5494509 (= lt!2242673 (mainMatchTheorem!2566 (regTwo!31439 r!7292) s!2326))))

(assert (=> b!5494509 (= lt!2242679 (matchRSpec!2566 (regOne!31439 r!7292) s!2326))))

(assert (=> b!5494509 (= lt!2242679 (matchR!7648 (regOne!31439 r!7292) s!2326))))

(declare-fun lt!2242671 () Unit!155386)

(assert (=> b!5494509 (= lt!2242671 (mainMatchTheorem!2566 (regOne!31439 r!7292) s!2326))))

(declare-fun b!5494510 () Bool)

(declare-fun tp!1511842 () Bool)

(assert (=> b!5494510 (= e!3399181 tp!1511842)))

(declare-fun b!5494511 () Bool)

(assert (=> b!5494511 (= e!3399185 tp_is_empty!40179)))

(declare-fun tp!1511843 () Bool)

(declare-fun b!5494512 () Bool)

(assert (=> b!5494512 (= e!3399184 (and (inv!81904 (h!69013 zl!343)) e!3399180 tp!1511843))))

(assert (= (and start!574066 res!2342838) b!5494503))

(assert (= (and b!5494503 res!2342841) b!5494502))

(assert (= (and b!5494502 res!2342836) b!5494496))

(assert (= (and b!5494496 (not res!2342843)) b!5494501))

(assert (= (and b!5494501 (not res!2342835)) b!5494508))

(assert (= (and b!5494508 (not res!2342837)) b!5494507))

(assert (= (and b!5494507 (not res!2342840)) b!5494498))

(assert (= (and b!5494498 (not res!2342844)) b!5494500))

(assert (= (and b!5494500 (not res!2342839)) b!5494509))

(assert (= (and b!5494509 (not res!2342842)) b!5494497))

(assert (= (and start!574066 ((_ is ElementMatch!15463) r!7292)) b!5494511))

(assert (= (and start!574066 ((_ is Concat!24308) r!7292)) b!5494499))

(assert (= (and start!574066 ((_ is Star!15463) r!7292)) b!5494504))

(assert (= (and start!574066 ((_ is Union!15463) r!7292)) b!5494505))

(assert (= (and start!574066 condSetEmpty!36379) setIsEmpty!36379))

(assert (= (and start!574066 (not condSetEmpty!36379)) setNonEmpty!36379))

(assert (= setNonEmpty!36379 b!5494510))

(assert (= b!5494512 b!5494506))

(assert (= (and start!574066 ((_ is Cons!62565) zl!343)) b!5494512))

(assert (= (and start!574066 ((_ is Cons!62566) s!2326)) b!5494495))

(declare-fun m!6505210 () Bool)

(assert (=> b!5494502 m!6505210))

(declare-fun m!6505212 () Bool)

(assert (=> b!5494496 m!6505212))

(declare-fun m!6505214 () Bool)

(assert (=> b!5494496 m!6505214))

(declare-fun m!6505216 () Bool)

(assert (=> b!5494496 m!6505216))

(declare-fun m!6505218 () Bool)

(assert (=> b!5494501 m!6505218))

(declare-fun m!6505220 () Bool)

(assert (=> start!574066 m!6505220))

(declare-fun m!6505222 () Bool)

(assert (=> b!5494509 m!6505222))

(declare-fun m!6505224 () Bool)

(assert (=> b!5494509 m!6505224))

(declare-fun m!6505226 () Bool)

(assert (=> b!5494509 m!6505226))

(declare-fun m!6505228 () Bool)

(assert (=> b!5494509 m!6505228))

(declare-fun m!6505230 () Bool)

(assert (=> b!5494509 m!6505230))

(declare-fun m!6505232 () Bool)

(assert (=> b!5494509 m!6505232))

(declare-fun m!6505234 () Bool)

(assert (=> b!5494498 m!6505234))

(assert (=> b!5494498 m!6505234))

(declare-fun m!6505236 () Bool)

(assert (=> b!5494498 m!6505236))

(declare-fun m!6505238 () Bool)

(assert (=> b!5494508 m!6505238))

(declare-fun m!6505240 () Bool)

(assert (=> b!5494503 m!6505240))

(declare-fun m!6505242 () Bool)

(assert (=> b!5494512 m!6505242))

(declare-fun m!6505244 () Bool)

(assert (=> setNonEmpty!36379 m!6505244))

(declare-fun m!6505246 () Bool)

(assert (=> b!5494497 m!6505246))

(declare-fun m!6505248 () Bool)

(assert (=> b!5494497 m!6505248))

(declare-fun m!6505250 () Bool)

(assert (=> b!5494497 m!6505250))

(check-sat (not b!5494501) (not b!5494497) (not b!5494510) (not b!5494508) (not b!5494506) (not b!5494505) (not b!5494498) (not setNonEmpty!36379) (not b!5494499) (not b!5494509) (not b!5494502) (not b!5494503) (not start!574066) (not b!5494512) (not b!5494495) (not b!5494496) tp_is_empty!40179 (not b!5494504))
(check-sat)
