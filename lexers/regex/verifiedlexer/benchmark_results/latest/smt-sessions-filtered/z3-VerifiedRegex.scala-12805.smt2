; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707798 () Bool)

(assert start!707798)

(declare-fun b!7261985 () Bool)

(assert (=> b!7261985 true))

(declare-fun b!7261978 () Bool)

(declare-fun e!4354732 () Bool)

(declare-fun tp!2039408 () Bool)

(assert (=> b!7261978 (= e!4354732 tp!2039408)))

(declare-fun res!2944405 () Bool)

(declare-fun e!4354730 () Bool)

(assert (=> start!707798 (=> (not res!2944405) (not e!4354730))))

(declare-datatypes ((C!37712 0))(
  ( (C!37713 (val!28804 Int)) )
))
(declare-datatypes ((Regex!18719 0))(
  ( (ElementMatch!18719 (c!1350981 C!37712)) (Concat!27564 (regOne!37950 Regex!18719) (regTwo!37950 Regex!18719)) (EmptyExpr!18719) (Star!18719 (reg!19048 Regex!18719)) (EmptyLang!18719) (Union!18719 (regOne!37951 Regex!18719) (regTwo!37951 Regex!18719)) )
))
(declare-datatypes ((List!70736 0))(
  ( (Nil!70612) (Cons!70612 (h!77060 Regex!18719) (t!384802 List!70736)) )
))
(declare-datatypes ((Context!15318 0))(
  ( (Context!15319 (exprs!8159 List!70736)) )
))
(declare-datatypes ((List!70737 0))(
  ( (Nil!70613) (Cons!70613 (h!77061 Context!15318) (t!384803 List!70737)) )
))
(declare-fun zl!1658 () List!70737)

(declare-datatypes ((List!70738 0))(
  ( (Nil!70614) (Cons!70614 (h!77062 C!37712) (t!384804 List!70738)) )
))
(declare-fun s!7887 () List!70738)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3623 ((InoxSet Context!15318) List!70738) Bool)

(declare-fun content!14713 (List!70737) (InoxSet Context!15318))

(assert (=> start!707798 (= res!2944405 (matchZipper!3623 (content!14713 zl!1658) s!7887))))

(assert (=> start!707798 e!4354730))

(declare-fun e!4354729 () Bool)

(assert (=> start!707798 e!4354729))

(declare-fun e!4354728 () Bool)

(assert (=> start!707798 e!4354728))

(declare-fun tp!2039409 () Bool)

(declare-fun b!7261979 () Bool)

(declare-fun inv!89807 (Context!15318) Bool)

(assert (=> b!7261979 (= e!4354729 (and (inv!89807 (h!77061 zl!1658)) e!4354732 tp!2039409))))

(declare-fun b!7261980 () Bool)

(declare-fun res!2944403 () Bool)

(assert (=> b!7261980 (=> (not res!2944403) (not e!4354730))))

(get-info :version)

(assert (=> b!7261980 (= res!2944403 ((_ is Cons!70613) zl!1658))))

(declare-fun b!7261981 () Bool)

(declare-fun e!4354731 () Bool)

(declare-fun lt!2591098 () (InoxSet Context!15318))

(assert (=> b!7261981 (= e!4354731 (matchZipper!3623 lt!2591098 s!7887))))

(declare-fun b!7261982 () Bool)

(declare-fun tp_is_empty!46903 () Bool)

(declare-fun tp!2039410 () Bool)

(assert (=> b!7261982 (= e!4354728 (and tp_is_empty!46903 tp!2039410))))

(declare-fun b!7261983 () Bool)

(declare-fun e!4354733 () Bool)

(assert (=> b!7261983 (= e!4354730 (not e!4354733))))

(declare-fun res!2944401 () Bool)

(assert (=> b!7261983 (=> res!2944401 e!4354733)))

(declare-fun lt!2591097 () Bool)

(declare-fun lt!2591100 () Bool)

(assert (=> b!7261983 (= res!2944401 (or (not lt!2591097) lt!2591100))))

(declare-fun lt!2591101 () Bool)

(assert (=> b!7261983 (= lt!2591101 lt!2591097)))

(assert (=> b!7261983 (= lt!2591097 e!4354731)))

(declare-fun res!2944404 () Bool)

(assert (=> b!7261983 (=> res!2944404 e!4354731)))

(assert (=> b!7261983 (= res!2944404 lt!2591100)))

(declare-fun lt!2591096 () (InoxSet Context!15318))

(assert (=> b!7261983 (= lt!2591101 (matchZipper!3623 ((_ map or) lt!2591096 lt!2591098) s!7887))))

(assert (=> b!7261983 (= lt!2591100 (matchZipper!3623 lt!2591096 s!7887))))

(declare-datatypes ((Unit!164064 0))(
  ( (Unit!164065) )
))
(declare-fun lt!2591099 () Unit!164064)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1762 ((InoxSet Context!15318) (InoxSet Context!15318) List!70738) Unit!164064)

(assert (=> b!7261983 (= lt!2591099 (lemmaZipperConcatMatchesSameAsBothZippers!1762 lt!2591096 lt!2591098 s!7887))))

(assert (=> b!7261983 (= lt!2591098 (content!14713 (t!384803 zl!1658)))))

(assert (=> b!7261983 (= lt!2591096 (store ((as const (Array Context!15318 Bool)) false) (h!77061 zl!1658) true))))

(declare-fun b!7261984 () Bool)

(declare-fun res!2944402 () Bool)

(assert (=> b!7261984 (=> res!2944402 e!4354733)))

(assert (=> b!7261984 (= res!2944402 (not (matchZipper!3623 lt!2591098 s!7887)))))

(assert (=> b!7261985 (= e!4354733 true)))

(declare-fun lambda!446729 () Int)

(declare-fun exists!4475 (List!70737 Int) Bool)

(assert (=> b!7261985 (exists!4475 (t!384803 zl!1658) lambda!446729)))

(declare-fun lt!2591095 () Unit!164064)

(declare-fun lemmaZipperMatchesExistsMatchingContext!790 (List!70737 List!70738) Unit!164064)

(assert (=> b!7261985 (= lt!2591095 (lemmaZipperMatchesExistsMatchingContext!790 (t!384803 zl!1658) s!7887))))

(assert (= (and start!707798 res!2944405) b!7261980))

(assert (= (and b!7261980 res!2944403) b!7261983))

(assert (= (and b!7261983 (not res!2944404)) b!7261981))

(assert (= (and b!7261983 (not res!2944401)) b!7261984))

(assert (= (and b!7261984 (not res!2944402)) b!7261985))

(assert (= b!7261979 b!7261978))

(assert (= (and start!707798 ((_ is Cons!70613) zl!1658)) b!7261979))

(assert (= (and start!707798 ((_ is Cons!70614) s!7887)) b!7261982))

(declare-fun m!7946556 () Bool)

(assert (=> b!7261984 m!7946556))

(declare-fun m!7946558 () Bool)

(assert (=> start!707798 m!7946558))

(assert (=> start!707798 m!7946558))

(declare-fun m!7946560 () Bool)

(assert (=> start!707798 m!7946560))

(declare-fun m!7946562 () Bool)

(assert (=> b!7261979 m!7946562))

(declare-fun m!7946564 () Bool)

(assert (=> b!7261983 m!7946564))

(declare-fun m!7946566 () Bool)

(assert (=> b!7261983 m!7946566))

(declare-fun m!7946568 () Bool)

(assert (=> b!7261983 m!7946568))

(declare-fun m!7946570 () Bool)

(assert (=> b!7261983 m!7946570))

(declare-fun m!7946572 () Bool)

(assert (=> b!7261983 m!7946572))

(declare-fun m!7946574 () Bool)

(assert (=> b!7261985 m!7946574))

(declare-fun m!7946576 () Bool)

(assert (=> b!7261985 m!7946576))

(assert (=> b!7261981 m!7946556))

(check-sat (not b!7261979) (not start!707798) (not b!7261984) (not b!7261983) (not b!7261985) (not b!7261981) (not b!7261982) tp_is_empty!46903 (not b!7261978))
(check-sat)
