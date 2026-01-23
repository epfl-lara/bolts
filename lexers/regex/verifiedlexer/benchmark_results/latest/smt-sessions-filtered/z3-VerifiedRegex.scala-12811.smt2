; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707954 () Bool)

(assert start!707954)

(declare-fun b!7262712 () Bool)

(assert (=> b!7262712 true))

(declare-fun bs!1909734 () Bool)

(declare-fun b!7262713 () Bool)

(assert (= bs!1909734 (and b!7262713 b!7262712)))

(declare-fun lambda!446860 () Int)

(declare-fun lambda!446859 () Int)

(assert (=> bs!1909734 (= lambda!446860 lambda!446859)))

(assert (=> b!7262713 true))

(declare-fun bs!1909735 () Bool)

(declare-fun b!7262715 () Bool)

(assert (= bs!1909735 (and b!7262715 b!7262712)))

(declare-fun lambda!446861 () Int)

(assert (=> bs!1909735 (= lambda!446861 lambda!446859)))

(declare-fun bs!1909736 () Bool)

(assert (= bs!1909736 (and b!7262715 b!7262713)))

(assert (=> bs!1909736 (= lambda!446861 lambda!446860)))

(assert (=> b!7262715 true))

(declare-fun b!7262707 () Bool)

(declare-fun e!4355232 () Bool)

(declare-fun tp!2039682 () Bool)

(assert (=> b!7262707 (= e!4355232 tp!2039682)))

(declare-fun b!7262708 () Bool)

(declare-fun e!4355233 () Bool)

(declare-datatypes ((C!37736 0))(
  ( (C!37737 (val!28816 Int)) )
))
(declare-datatypes ((Regex!18731 0))(
  ( (ElementMatch!18731 (c!1351167 C!37736)) (Concat!27576 (regOne!37974 Regex!18731) (regTwo!37974 Regex!18731)) (EmptyExpr!18731) (Star!18731 (reg!19060 Regex!18731)) (EmptyLang!18731) (Union!18731 (regOne!37975 Regex!18731) (regTwo!37975 Regex!18731)) )
))
(declare-datatypes ((List!70772 0))(
  ( (Nil!70648) (Cons!70648 (h!77096 Regex!18731) (t!384838 List!70772)) )
))
(declare-datatypes ((Context!15342 0))(
  ( (Context!15343 (exprs!8171 List!70772)) )
))
(declare-datatypes ((List!70773 0))(
  ( (Nil!70649) (Cons!70649 (h!77097 Context!15342) (t!384839 List!70773)) )
))
(declare-fun zl!1658 () List!70773)

(declare-fun exists!4484 (List!70773 Int) Bool)

(assert (=> b!7262708 (= e!4355233 (exists!4484 zl!1658 lambda!446861))))

(declare-fun b!7262709 () Bool)

(declare-fun e!4355225 () Bool)

(declare-fun tp_is_empty!46927 () Bool)

(declare-fun tp!2039680 () Bool)

(assert (=> b!7262709 (= e!4355225 (and tp_is_empty!46927 tp!2039680))))

(declare-fun tp!2039681 () Bool)

(declare-fun e!4355226 () Bool)

(declare-fun b!7262710 () Bool)

(declare-fun inv!89837 (Context!15342) Bool)

(assert (=> b!7262710 (= e!4355226 (and (inv!89837 (h!77097 zl!1658)) e!4355232 tp!2039681))))

(declare-fun b!7262711 () Bool)

(declare-fun res!2944610 () Bool)

(declare-fun e!4355231 () Bool)

(assert (=> b!7262711 (=> (not res!2944610) (not e!4355231))))

(get-info :version)

(assert (=> b!7262711 (= res!2944610 ((_ is Cons!70649) zl!1658))))

(declare-datatypes ((Unit!164090 0))(
  ( (Unit!164091) )
))
(declare-fun e!4355228 () Unit!164090)

(declare-fun Unit!164092 () Unit!164090)

(assert (=> b!7262712 (= e!4355228 Unit!164092)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2591394 () (InoxSet Context!15342))

(declare-fun lt!2591399 () Unit!164090)

(declare-fun lemmaContainsThenExists!239 ((InoxSet Context!15342) Context!15342 Int) Unit!164090)

(assert (=> b!7262712 (= lt!2591399 (lemmaContainsThenExists!239 lt!2591394 (h!77097 zl!1658) lambda!446859))))

(declare-fun res!2944613 () Bool)

(declare-fun exists!4485 ((InoxSet Context!15342) Int) Bool)

(assert (=> b!7262712 (= res!2944613 (exists!4485 lt!2591394 lambda!446859))))

(declare-fun e!4355227 () Bool)

(assert (=> b!7262712 (=> (not res!2944613) (not e!4355227))))

(assert (=> b!7262712 e!4355227))

(declare-fun res!2944612 () Bool)

(assert (=> start!707954 (=> (not res!2944612) (not e!4355231))))

(declare-datatypes ((List!70774 0))(
  ( (Nil!70650) (Cons!70650 (h!77098 C!37736) (t!384840 List!70774)) )
))
(declare-fun s!7887 () List!70774)

(declare-fun matchZipper!3635 ((InoxSet Context!15342) List!70774) Bool)

(assert (=> start!707954 (= res!2944612 (matchZipper!3635 lt!2591394 s!7887))))

(declare-fun content!14725 (List!70773) (InoxSet Context!15342))

(assert (=> start!707954 (= lt!2591394 (content!14725 zl!1658))))

(assert (=> start!707954 e!4355231))

(assert (=> start!707954 e!4355226))

(assert (=> start!707954 e!4355225))

(declare-fun Unit!164093 () Unit!164090)

(assert (=> b!7262713 (= e!4355228 Unit!164093)))

(declare-fun lt!2591397 () Unit!164090)

(declare-fun lemmaZipperMatchesExistsMatchingContext!794 (List!70773 List!70774) Unit!164090)

(assert (=> b!7262713 (= lt!2591397 (lemmaZipperMatchesExistsMatchingContext!794 (t!384839 zl!1658) s!7887))))

(assert (=> b!7262713 (exists!4484 (t!384839 zl!1658) lambda!446860)))

(declare-fun b!7262714 () Bool)

(declare-fun e!4355230 () Bool)

(declare-fun lt!2591395 () (InoxSet Context!15342))

(assert (=> b!7262714 (= e!4355230 (matchZipper!3635 lt!2591395 s!7887))))

(declare-fun e!4355229 () Bool)

(assert (=> b!7262715 (= e!4355229 e!4355233)))

(declare-fun res!2944609 () Bool)

(assert (=> b!7262715 (=> res!2944609 e!4355233)))

(assert (=> b!7262715 (= res!2944609 (not (exists!4484 zl!1658 lambda!446861)))))

(declare-fun lt!2591400 () Unit!164090)

(assert (=> b!7262715 (= lt!2591400 e!4355228)))

(declare-fun c!1351166 () Bool)

(declare-fun lt!2591402 () Bool)

(assert (=> b!7262715 (= c!1351166 lt!2591402)))

(declare-fun b!7262716 () Bool)

(assert (=> b!7262716 (= e!4355227 (exists!4485 lt!2591394 lambda!446859))))

(declare-fun b!7262717 () Bool)

(assert (=> b!7262717 (= e!4355231 (not e!4355229))))

(declare-fun res!2944608 () Bool)

(assert (=> b!7262717 (=> res!2944608 e!4355229)))

(declare-fun lt!2591401 () Bool)

(assert (=> b!7262717 (= res!2944608 (not lt!2591401))))

(declare-fun lt!2591398 () Bool)

(assert (=> b!7262717 (= lt!2591398 lt!2591401)))

(assert (=> b!7262717 (= lt!2591401 e!4355230)))

(declare-fun res!2944611 () Bool)

(assert (=> b!7262717 (=> res!2944611 e!4355230)))

(assert (=> b!7262717 (= res!2944611 lt!2591402)))

(declare-fun lt!2591396 () (InoxSet Context!15342))

(assert (=> b!7262717 (= lt!2591398 (matchZipper!3635 ((_ map or) lt!2591396 lt!2591395) s!7887))))

(assert (=> b!7262717 (= lt!2591402 (matchZipper!3635 lt!2591396 s!7887))))

(declare-fun lt!2591403 () Unit!164090)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1772 ((InoxSet Context!15342) (InoxSet Context!15342) List!70774) Unit!164090)

(assert (=> b!7262717 (= lt!2591403 (lemmaZipperConcatMatchesSameAsBothZippers!1772 lt!2591396 lt!2591395 s!7887))))

(assert (=> b!7262717 (= lt!2591395 (content!14725 (t!384839 zl!1658)))))

(assert (=> b!7262717 (= lt!2591396 (store ((as const (Array Context!15342 Bool)) false) (h!77097 zl!1658) true))))

(assert (= (and start!707954 res!2944612) b!7262711))

(assert (= (and b!7262711 res!2944610) b!7262717))

(assert (= (and b!7262717 (not res!2944611)) b!7262714))

(assert (= (and b!7262717 (not res!2944608)) b!7262715))

(assert (= (and b!7262715 c!1351166) b!7262712))

(assert (= (and b!7262715 (not c!1351166)) b!7262713))

(assert (= (and b!7262712 res!2944613) b!7262716))

(assert (= (and b!7262715 (not res!2944609)) b!7262708))

(assert (= b!7262710 b!7262707))

(assert (= (and start!707954 ((_ is Cons!70649) zl!1658)) b!7262710))

(assert (= (and start!707954 ((_ is Cons!70650) s!7887)) b!7262709))

(declare-fun m!7947314 () Bool)

(assert (=> b!7262710 m!7947314))

(declare-fun m!7947316 () Bool)

(assert (=> b!7262708 m!7947316))

(declare-fun m!7947318 () Bool)

(assert (=> b!7262716 m!7947318))

(declare-fun m!7947320 () Bool)

(assert (=> b!7262712 m!7947320))

(assert (=> b!7262712 m!7947318))

(assert (=> b!7262715 m!7947316))

(declare-fun m!7947322 () Bool)

(assert (=> start!707954 m!7947322))

(declare-fun m!7947324 () Bool)

(assert (=> start!707954 m!7947324))

(declare-fun m!7947326 () Bool)

(assert (=> b!7262717 m!7947326))

(declare-fun m!7947328 () Bool)

(assert (=> b!7262717 m!7947328))

(declare-fun m!7947330 () Bool)

(assert (=> b!7262717 m!7947330))

(declare-fun m!7947332 () Bool)

(assert (=> b!7262717 m!7947332))

(declare-fun m!7947334 () Bool)

(assert (=> b!7262717 m!7947334))

(declare-fun m!7947336 () Bool)

(assert (=> b!7262713 m!7947336))

(declare-fun m!7947338 () Bool)

(assert (=> b!7262713 m!7947338))

(declare-fun m!7947340 () Bool)

(assert (=> b!7262714 m!7947340))

(check-sat (not b!7262716) (not b!7262707) (not b!7262713) (not b!7262712) (not b!7262717) (not b!7262710) (not start!707954) (not b!7262709) (not b!7262715) tp_is_empty!46927 (not b!7262708) (not b!7262714))
(check-sat)
