; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707768 () Bool)

(assert start!707768)

(declare-datatypes ((C!37696 0))(
  ( (C!37697 (val!28796 Int)) )
))
(declare-datatypes ((Regex!18711 0))(
  ( (ElementMatch!18711 (c!1350953 C!37696)) (Concat!27556 (regOne!37934 Regex!18711) (regTwo!37934 Regex!18711)) (EmptyExpr!18711) (Star!18711 (reg!19040 Regex!18711)) (EmptyLang!18711) (Union!18711 (regOne!37935 Regex!18711) (regTwo!37935 Regex!18711)) )
))
(declare-datatypes ((List!70712 0))(
  ( (Nil!70588) (Cons!70588 (h!77036 Regex!18711) (t!384778 List!70712)) )
))
(declare-datatypes ((Context!15302 0))(
  ( (Context!15303 (exprs!8151 List!70712)) )
))
(declare-datatypes ((List!70713 0))(
  ( (Nil!70589) (Cons!70589 (h!77037 Context!15302) (t!384779 List!70713)) )
))
(declare-fun zl!1658 () List!70713)

(declare-fun b!7261763 () Bool)

(declare-fun e!4354568 () Bool)

(declare-fun e!4354569 () Bool)

(declare-fun tp!2039308 () Bool)

(declare-fun inv!89787 (Context!15302) Bool)

(assert (=> b!7261763 (= e!4354569 (and (inv!89787 (h!77037 zl!1658)) e!4354568 tp!2039308))))

(declare-fun b!7261764 () Bool)

(declare-fun tp!2039306 () Bool)

(assert (=> b!7261764 (= e!4354568 tp!2039306)))

(declare-fun b!7261765 () Bool)

(declare-fun res!2944329 () Bool)

(declare-fun e!4354567 () Bool)

(assert (=> b!7261765 (=> (not res!2944329) (not e!4354567))))

(get-info :version)

(assert (=> b!7261765 (= res!2944329 ((_ is Cons!70589) zl!1658))))

(declare-fun b!7261766 () Bool)

(assert (=> b!7261766 (= e!4354567 (not true))))

(declare-datatypes ((List!70714 0))(
  ( (Nil!70590) (Cons!70590 (h!77038 C!37696) (t!384780 List!70714)) )
))
(declare-fun s!7887 () List!70714)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2590972 () (InoxSet Context!15302))

(declare-fun e!4354566 () Bool)

(declare-fun lt!2590971 () (InoxSet Context!15302))

(declare-fun matchZipper!3615 ((InoxSet Context!15302) List!70714) Bool)

(assert (=> b!7261766 (= (matchZipper!3615 ((_ map or) lt!2590971 lt!2590972) s!7887) e!4354566)))

(declare-fun res!2944328 () Bool)

(assert (=> b!7261766 (=> res!2944328 e!4354566)))

(assert (=> b!7261766 (= res!2944328 (matchZipper!3615 lt!2590971 s!7887))))

(declare-datatypes ((Unit!164052 0))(
  ( (Unit!164053) )
))
(declare-fun lt!2590970 () Unit!164052)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1756 ((InoxSet Context!15302) (InoxSet Context!15302) List!70714) Unit!164052)

(assert (=> b!7261766 (= lt!2590970 (lemmaZipperConcatMatchesSameAsBothZippers!1756 lt!2590971 lt!2590972 s!7887))))

(declare-fun content!14705 (List!70713) (InoxSet Context!15302))

(assert (=> b!7261766 (= lt!2590972 (content!14705 (t!384779 zl!1658)))))

(assert (=> b!7261766 (= lt!2590971 (store ((as const (Array Context!15302 Bool)) false) (h!77037 zl!1658) true))))

(declare-fun b!7261767 () Bool)

(assert (=> b!7261767 (= e!4354566 (matchZipper!3615 lt!2590972 s!7887))))

(declare-fun b!7261768 () Bool)

(declare-fun e!4354570 () Bool)

(declare-fun tp_is_empty!46887 () Bool)

(declare-fun tp!2039307 () Bool)

(assert (=> b!7261768 (= e!4354570 (and tp_is_empty!46887 tp!2039307))))

(declare-fun res!2944330 () Bool)

(assert (=> start!707768 (=> (not res!2944330) (not e!4354567))))

(assert (=> start!707768 (= res!2944330 (matchZipper!3615 (content!14705 zl!1658) s!7887))))

(assert (=> start!707768 e!4354567))

(assert (=> start!707768 e!4354569))

(assert (=> start!707768 e!4354570))

(assert (= (and start!707768 res!2944330) b!7261765))

(assert (= (and b!7261765 res!2944329) b!7261766))

(assert (= (and b!7261766 (not res!2944328)) b!7261767))

(assert (= b!7261763 b!7261764))

(assert (= (and start!707768 ((_ is Cons!70589) zl!1658)) b!7261763))

(assert (= (and start!707768 ((_ is Cons!70590) s!7887)) b!7261768))

(declare-fun m!7946380 () Bool)

(assert (=> b!7261763 m!7946380))

(declare-fun m!7946382 () Bool)

(assert (=> b!7261766 m!7946382))

(declare-fun m!7946384 () Bool)

(assert (=> b!7261766 m!7946384))

(declare-fun m!7946386 () Bool)

(assert (=> b!7261766 m!7946386))

(declare-fun m!7946388 () Bool)

(assert (=> b!7261766 m!7946388))

(declare-fun m!7946390 () Bool)

(assert (=> b!7261766 m!7946390))

(declare-fun m!7946392 () Bool)

(assert (=> b!7261767 m!7946392))

(declare-fun m!7946394 () Bool)

(assert (=> start!707768 m!7946394))

(assert (=> start!707768 m!7946394))

(declare-fun m!7946396 () Bool)

(assert (=> start!707768 m!7946396))

(check-sat (not b!7261766) (not b!7261767) (not b!7261768) tp_is_empty!46887 (not b!7261764) (not start!707768) (not b!7261763))
(check-sat)
