; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573810 () Bool)

(assert start!573810)

(declare-fun b!5489595 () Bool)

(assert (=> b!5489595 true))

(declare-fun b!5489587 () Bool)

(assert (=> b!5489587 true))

(declare-fun bs!1267170 () Bool)

(declare-fun b!5489604 () Bool)

(assert (= bs!1267170 (and b!5489604 b!5489595)))

(declare-fun lambda!293877 () Int)

(declare-fun lambda!293875 () Int)

(assert (=> bs!1267170 (not (= lambda!293877 lambda!293875))))

(declare-fun b!5489586 () Bool)

(declare-fun e!3396756 () Bool)

(declare-fun tp!1509129 () Bool)

(declare-fun tp!1509127 () Bool)

(assert (=> b!5489586 (= e!3396756 (and tp!1509129 tp!1509127))))

(declare-fun e!3396762 () Bool)

(declare-fun e!3396764 () Bool)

(assert (=> b!5489587 (= e!3396762 e!3396764)))

(declare-fun res!2341373 () Bool)

(assert (=> b!5489587 (=> res!2341373 e!3396764)))

(declare-datatypes ((C!31156 0))(
  ( (C!31157 (val!25280 Int)) )
))
(declare-datatypes ((Regex!15443 0))(
  ( (ElementMatch!15443 (c!958635 C!31156)) (Concat!24288 (regOne!31398 Regex!15443) (regTwo!31398 Regex!15443)) (EmptyExpr!15443) (Star!15443 (reg!15772 Regex!15443)) (EmptyLang!15443) (Union!15443 (regOne!31399 Regex!15443) (regTwo!31399 Regex!15443)) )
))
(declare-datatypes ((List!62628 0))(
  ( (Nil!62504) (Cons!62504 (h!68952 Regex!15443) (t!375859 List!62628)) )
))
(declare-datatypes ((Context!9654 0))(
  ( (Context!9655 (exprs!5327 List!62628)) )
))
(declare-datatypes ((List!62629 0))(
  ( (Nil!62505) (Cons!62505 (h!68953 Context!9654) (t!375860 List!62629)) )
))
(declare-fun zl!343 () List!62629)

(declare-fun lambda!293876 () Int)

(declare-fun exists!2110 (List!62629 Int) Bool)

(assert (=> b!5489587 (= res!2341373 (not (exists!2110 zl!343 lambda!293876)))))

(assert (=> b!5489587 (exists!2110 zl!343 lambda!293876)))

(declare-datatypes ((Unit!155342 0))(
  ( (Unit!155343) )
))
(declare-fun lt!2242022 () Unit!155342)

(declare-datatypes ((List!62630 0))(
  ( (Nil!62506) (Cons!62506 (h!68954 C!31156) (t!375861 List!62630)) )
))
(declare-fun s!2326 () List!62630)

(declare-fun lemmaZipperMatchesExistsMatchingContext!70 (List!62629 List!62630) Unit!155342)

(assert (=> b!5489587 (= lt!2242022 (lemmaZipperMatchesExistsMatchingContext!70 zl!343 s!2326))))

(declare-fun b!5489588 () Bool)

(declare-fun tp_is_empty!40139 () Bool)

(assert (=> b!5489588 (= e!3396756 tp_is_empty!40139)))

(declare-fun tp!1509128 () Bool)

(declare-fun setNonEmpty!36297 () Bool)

(declare-fun e!3396759 () Bool)

(declare-fun setElem!36297 () Context!9654)

(declare-fun setRes!36297 () Bool)

(declare-fun inv!81854 (Context!9654) Bool)

(assert (=> setNonEmpty!36297 (= setRes!36297 (and tp!1509128 (inv!81854 setElem!36297) e!3396759))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9654))

(declare-fun setRest!36297 () (InoxSet Context!9654))

(assert (=> setNonEmpty!36297 (= z!1189 ((_ map or) (store ((as const (Array Context!9654 Bool)) false) setElem!36297 true) setRest!36297))))

(declare-fun b!5489589 () Bool)

(declare-fun e!3396763 () Bool)

(declare-fun tp!1509121 () Bool)

(assert (=> b!5489589 (= e!3396763 (and tp_is_empty!40139 tp!1509121))))

(declare-fun b!5489590 () Bool)

(declare-fun res!2341384 () Bool)

(declare-fun e!3396758 () Bool)

(assert (=> b!5489590 (=> res!2341384 e!3396758)))

(declare-fun isEmpty!34333 (List!62629) Bool)

(assert (=> b!5489590 (= res!2341384 (isEmpty!34333 (t!375860 zl!343)))))

(declare-fun b!5489591 () Bool)

(declare-fun res!2341382 () Bool)

(assert (=> b!5489591 (=> res!2341382 e!3396762)))

(declare-fun lt!2242030 () List!62628)

(declare-fun exists!2111 (List!62628 Int) Bool)

(assert (=> b!5489591 (= res!2341382 (exists!2111 lt!2242030 lambda!293875))))

(declare-fun b!5489592 () Bool)

(declare-fun e!3396760 () Bool)

(declare-fun tp!1509123 () Bool)

(assert (=> b!5489592 (= e!3396760 tp!1509123)))

(declare-fun b!5489593 () Bool)

(declare-fun res!2341377 () Bool)

(assert (=> b!5489593 (=> res!2341377 e!3396758)))

(get-info :version)

(assert (=> b!5489593 (= res!2341377 (or (not ((_ is Cons!62505) zl!343)) ((_ is Nil!62506) s!2326) (not (= zl!343 (Cons!62505 (h!68953 zl!343) (t!375860 zl!343))))))))

(declare-fun b!5489594 () Bool)

(declare-fun e!3396765 () Bool)

(assert (=> b!5489594 (= e!3396765 true)))

(declare-fun lt!2242028 () Bool)

(declare-fun lt!2242029 () Context!9654)

(declare-fun contains!19755 (List!62629 Context!9654) Bool)

(assert (=> b!5489594 (= lt!2242028 (contains!19755 zl!343 lt!2242029))))

(declare-fun lt!2242023 () Regex!15443)

(declare-fun lt!2242021 () (InoxSet Context!9654))

(declare-fun matchR!7628 (Regex!15443 List!62630) Bool)

(declare-fun matchZipper!1627 ((InoxSet Context!9654) List!62630) Bool)

(assert (=> b!5489594 (= (matchR!7628 lt!2242023 s!2326) (matchZipper!1627 lt!2242021 s!2326))))

(declare-fun lt!2242026 () Unit!155342)

(declare-fun lt!2242027 () List!62629)

(declare-fun theoremZipperRegexEquiv!601 ((InoxSet Context!9654) List!62629 Regex!15443 List!62630) Unit!155342)

(assert (=> b!5489594 (= lt!2242026 (theoremZipperRegexEquiv!601 lt!2242021 lt!2242027 lt!2242023 s!2326))))

(declare-fun generalisedConcat!1062 (List!62628) Regex!15443)

(assert (=> b!5489594 (= lt!2242023 (generalisedConcat!1062 (exprs!5327 lt!2242029)))))

(assert (=> b!5489594 (= lt!2242021 (store ((as const (Array Context!9654 Bool)) false) lt!2242029 true))))

(declare-fun b!5489596 () Bool)

(declare-fun res!2341379 () Bool)

(assert (=> b!5489596 (=> res!2341379 e!3396762)))

(assert (=> b!5489596 (= res!2341379 (not (matchZipper!1627 z!1189 s!2326)))))

(declare-fun b!5489597 () Bool)

(declare-fun tp!1509124 () Bool)

(assert (=> b!5489597 (= e!3396756 tp!1509124)))

(declare-fun b!5489598 () Bool)

(declare-fun tp!1509125 () Bool)

(assert (=> b!5489598 (= e!3396759 tp!1509125)))

(declare-fun e!3396755 () Bool)

(declare-fun tp!1509120 () Bool)

(declare-fun b!5489599 () Bool)

(assert (=> b!5489599 (= e!3396755 (and (inv!81854 (h!68953 zl!343)) e!3396760 tp!1509120))))

(declare-fun b!5489600 () Bool)

(declare-fun e!3396757 () Bool)

(assert (=> b!5489600 (= e!3396757 (isEmpty!34333 (t!375860 zl!343)))))

(declare-fun b!5489601 () Bool)

(declare-fun res!2341372 () Bool)

(declare-fun e!3396761 () Bool)

(assert (=> b!5489601 (=> (not res!2341372) (not e!3396761))))

(declare-fun r!7292 () Regex!15443)

(declare-fun unfocusZipper!1185 (List!62629) Regex!15443)

(assert (=> b!5489601 (= res!2341372 (= r!7292 (unfocusZipper!1185 zl!343)))))

(declare-fun b!5489602 () Bool)

(assert (=> b!5489602 (= e!3396761 (not e!3396758))))

(declare-fun res!2341376 () Bool)

(assert (=> b!5489602 (=> res!2341376 e!3396758)))

(assert (=> b!5489602 (= res!2341376 e!3396757)))

(declare-fun res!2341380 () Bool)

(assert (=> b!5489602 (=> (not res!2341380) (not e!3396757))))

(assert (=> b!5489602 (= res!2341380 ((_ is Cons!62505) zl!343))))

(declare-fun lt!2242033 () Bool)

(declare-fun matchRSpec!2546 (Regex!15443 List!62630) Bool)

(assert (=> b!5489602 (= lt!2242033 (matchRSpec!2546 r!7292 s!2326))))

(assert (=> b!5489602 (= lt!2242033 (matchR!7628 r!7292 s!2326))))

(declare-fun lt!2242032 () Unit!155342)

(declare-fun mainMatchTheorem!2546 (Regex!15443 List!62630) Unit!155342)

(assert (=> b!5489602 (= lt!2242032 (mainMatchTheorem!2546 r!7292 s!2326))))

(declare-fun b!5489603 () Bool)

(declare-fun e!3396766 () Bool)

(assert (=> b!5489603 (= e!3396766 e!3396765)))

(declare-fun res!2341375 () Bool)

(assert (=> b!5489603 (=> res!2341375 e!3396765)))

(declare-fun lt!2242025 () Int)

(declare-fun zipperDepthTotal!208 (List!62629) Int)

(assert (=> b!5489603 (= res!2341375 (<= lt!2242025 (zipperDepthTotal!208 lt!2242027)))))

(assert (=> b!5489603 (= lt!2242027 (Cons!62505 lt!2242029 Nil!62505))))

(declare-fun lt!2242024 () Int)

(assert (=> b!5489603 (< lt!2242024 lt!2242025)))

(assert (=> b!5489603 (= lt!2242025 (zipperDepthTotal!208 zl!343))))

(declare-fun contextDepthTotal!188 (Context!9654) Int)

(assert (=> b!5489603 (= lt!2242024 (contextDepthTotal!188 lt!2242029))))

(declare-fun lt!2242035 () Unit!155342)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!16 (List!62629 Context!9654) Unit!155342)

(assert (=> b!5489603 (= lt!2242035 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!16 zl!343 lt!2242029))))

(assert (=> b!5489604 (= e!3396764 e!3396766)))

(declare-fun res!2341378 () Bool)

(assert (=> b!5489604 (=> res!2341378 e!3396766)))

(declare-fun forall!14640 (List!62628 Int) Bool)

(assert (=> b!5489604 (= res!2341378 (not (forall!14640 (exprs!5327 lt!2242029) lambda!293877)))))

(assert (=> b!5489604 (forall!14640 (exprs!5327 lt!2242029) lambda!293877)))

(declare-fun lt!2242031 () Unit!155342)

(declare-fun lemmaContextForallValidExprs!48 (Context!9654 List!62628) Unit!155342)

(assert (=> b!5489604 (= lt!2242031 (lemmaContextForallValidExprs!48 lt!2242029 (exprs!5327 lt!2242029)))))

(declare-fun getWitness!904 (List!62629 Int) Context!9654)

(assert (=> b!5489604 (= lt!2242029 (getWitness!904 zl!343 lambda!293876))))

(declare-fun b!5489605 () Bool)

(declare-fun tp!1509122 () Bool)

(declare-fun tp!1509126 () Bool)

(assert (=> b!5489605 (= e!3396756 (and tp!1509122 tp!1509126))))

(declare-fun setIsEmpty!36297 () Bool)

(assert (=> setIsEmpty!36297 setRes!36297))

(declare-fun b!5489606 () Bool)

(declare-fun res!2341374 () Bool)

(assert (=> b!5489606 (=> (not res!2341374) (not e!3396761))))

(declare-fun toList!9227 ((InoxSet Context!9654)) List!62629)

(assert (=> b!5489606 (= res!2341374 (= (toList!9227 z!1189) zl!343))))

(declare-fun res!2341381 () Bool)

(assert (=> start!573810 (=> (not res!2341381) (not e!3396761))))

(declare-fun validRegex!7179 (Regex!15443) Bool)

(assert (=> start!573810 (= res!2341381 (validRegex!7179 r!7292))))

(assert (=> start!573810 e!3396761))

(assert (=> start!573810 e!3396756))

(declare-fun condSetEmpty!36297 () Bool)

(assert (=> start!573810 (= condSetEmpty!36297 (= z!1189 ((as const (Array Context!9654 Bool)) false)))))

(assert (=> start!573810 setRes!36297))

(assert (=> start!573810 e!3396755))

(assert (=> start!573810 e!3396763))

(assert (=> b!5489595 (= e!3396758 e!3396762)))

(declare-fun res!2341383 () Bool)

(assert (=> b!5489595 (=> res!2341383 e!3396762)))

(assert (=> b!5489595 (= res!2341383 lt!2242033)))

(assert (=> b!5489595 (= lt!2242033 (exists!2111 lt!2242030 lambda!293875))))

(declare-fun lt!2242034 () Unit!155342)

(declare-fun matchRGenUnionSpec!276 (Regex!15443 List!62628 List!62630) Unit!155342)

(assert (=> b!5489595 (= lt!2242034 (matchRGenUnionSpec!276 r!7292 lt!2242030 s!2326))))

(declare-fun unfocusZipperList!875 (List!62629) List!62628)

(assert (=> b!5489595 (= lt!2242030 (unfocusZipperList!875 zl!343))))

(assert (= (and start!573810 res!2341381) b!5489606))

(assert (= (and b!5489606 res!2341374) b!5489601))

(assert (= (and b!5489601 res!2341372) b!5489602))

(assert (= (and b!5489602 res!2341380) b!5489600))

(assert (= (and b!5489602 (not res!2341376)) b!5489593))

(assert (= (and b!5489593 (not res!2341377)) b!5489590))

(assert (= (and b!5489590 (not res!2341384)) b!5489595))

(assert (= (and b!5489595 (not res!2341383)) b!5489591))

(assert (= (and b!5489591 (not res!2341382)) b!5489596))

(assert (= (and b!5489596 (not res!2341379)) b!5489587))

(assert (= (and b!5489587 (not res!2341373)) b!5489604))

(assert (= (and b!5489604 (not res!2341378)) b!5489603))

(assert (= (and b!5489603 (not res!2341375)) b!5489594))

(assert (= (and start!573810 ((_ is ElementMatch!15443) r!7292)) b!5489588))

(assert (= (and start!573810 ((_ is Concat!24288) r!7292)) b!5489586))

(assert (= (and start!573810 ((_ is Star!15443) r!7292)) b!5489597))

(assert (= (and start!573810 ((_ is Union!15443) r!7292)) b!5489605))

(assert (= (and start!573810 condSetEmpty!36297) setIsEmpty!36297))

(assert (= (and start!573810 (not condSetEmpty!36297)) setNonEmpty!36297))

(assert (= setNonEmpty!36297 b!5489598))

(assert (= b!5489599 b!5489592))

(assert (= (and start!573810 ((_ is Cons!62505) zl!343)) b!5489599))

(assert (= (and start!573810 ((_ is Cons!62506) s!2326)) b!5489589))

(declare-fun m!6502992 () Bool)

(assert (=> b!5489603 m!6502992))

(declare-fun m!6502994 () Bool)

(assert (=> b!5489603 m!6502994))

(declare-fun m!6502996 () Bool)

(assert (=> b!5489603 m!6502996))

(declare-fun m!6502998 () Bool)

(assert (=> b!5489603 m!6502998))

(declare-fun m!6503000 () Bool)

(assert (=> b!5489591 m!6503000))

(assert (=> b!5489595 m!6503000))

(declare-fun m!6503002 () Bool)

(assert (=> b!5489595 m!6503002))

(declare-fun m!6503004 () Bool)

(assert (=> b!5489595 m!6503004))

(declare-fun m!6503006 () Bool)

(assert (=> b!5489596 m!6503006))

(declare-fun m!6503008 () Bool)

(assert (=> b!5489601 m!6503008))

(declare-fun m!6503010 () Bool)

(assert (=> setNonEmpty!36297 m!6503010))

(declare-fun m!6503012 () Bool)

(assert (=> b!5489599 m!6503012))

(declare-fun m!6503014 () Bool)

(assert (=> b!5489604 m!6503014))

(assert (=> b!5489604 m!6503014))

(declare-fun m!6503016 () Bool)

(assert (=> b!5489604 m!6503016))

(declare-fun m!6503018 () Bool)

(assert (=> b!5489604 m!6503018))

(declare-fun m!6503020 () Bool)

(assert (=> b!5489602 m!6503020))

(declare-fun m!6503022 () Bool)

(assert (=> b!5489602 m!6503022))

(declare-fun m!6503024 () Bool)

(assert (=> b!5489602 m!6503024))

(declare-fun m!6503026 () Bool)

(assert (=> b!5489594 m!6503026))

(declare-fun m!6503028 () Bool)

(assert (=> b!5489594 m!6503028))

(declare-fun m!6503030 () Bool)

(assert (=> b!5489594 m!6503030))

(declare-fun m!6503032 () Bool)

(assert (=> b!5489594 m!6503032))

(declare-fun m!6503034 () Bool)

(assert (=> b!5489594 m!6503034))

(declare-fun m!6503036 () Bool)

(assert (=> b!5489594 m!6503036))

(declare-fun m!6503038 () Bool)

(assert (=> start!573810 m!6503038))

(declare-fun m!6503040 () Bool)

(assert (=> b!5489590 m!6503040))

(declare-fun m!6503042 () Bool)

(assert (=> b!5489606 m!6503042))

(assert (=> b!5489600 m!6503040))

(declare-fun m!6503044 () Bool)

(assert (=> b!5489587 m!6503044))

(assert (=> b!5489587 m!6503044))

(declare-fun m!6503046 () Bool)

(assert (=> b!5489587 m!6503046))

(check-sat (not b!5489600) tp_is_empty!40139 (not b!5489606) (not b!5489586) (not b!5489601) (not b!5489589) (not b!5489602) (not b!5489595) (not b!5489596) (not b!5489591) (not start!573810) (not b!5489597) (not b!5489603) (not setNonEmpty!36297) (not b!5489587) (not b!5489592) (not b!5489598) (not b!5489604) (not b!5489605) (not b!5489599) (not b!5489594) (not b!5489590))
(check-sat)
