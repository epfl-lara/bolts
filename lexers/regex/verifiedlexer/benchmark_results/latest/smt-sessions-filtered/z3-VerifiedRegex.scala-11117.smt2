; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574750 () Bool)

(assert start!574750)

(declare-fun b!5503119 () Bool)

(assert (=> b!5503119 true))

(declare-fun b!5503118 () Bool)

(declare-fun res!2345541 () Bool)

(declare-fun e!3403915 () Bool)

(assert (=> b!5503118 (=> res!2345541 e!3403915)))

(declare-datatypes ((C!31232 0))(
  ( (C!31233 (val!25318 Int)) )
))
(declare-datatypes ((Regex!15481 0))(
  ( (ElementMatch!15481 (c!961331 C!31232)) (Concat!24326 (regOne!31474 Regex!15481) (regTwo!31474 Regex!15481)) (EmptyExpr!15481) (Star!15481 (reg!15810 Regex!15481)) (EmptyLang!15481) (Union!15481 (regOne!31475 Regex!15481) (regTwo!31475 Regex!15481)) )
))
(declare-fun r!7292 () Regex!15481)

(declare-datatypes ((List!62742 0))(
  ( (Nil!62618) (Cons!62618 (h!69066 Regex!15481) (t!375981 List!62742)) )
))
(declare-datatypes ((Context!9730 0))(
  ( (Context!9731 (exprs!5365 List!62742)) )
))
(declare-datatypes ((List!62743 0))(
  ( (Nil!62619) (Cons!62619 (h!69067 Context!9730) (t!375982 List!62743)) )
))
(declare-fun zl!343 () List!62743)

(declare-fun generalisedUnion!1344 (List!62742) Regex!15481)

(declare-fun unfocusZipperList!909 (List!62743) List!62742)

(assert (=> b!5503118 (= res!2345541 (not (= r!7292 (generalisedUnion!1344 (unfocusZipperList!909 zl!343)))))))

(declare-fun e!3403911 () Bool)

(declare-fun e!3403921 () Bool)

(assert (=> b!5503119 (= e!3403911 e!3403921)))

(declare-fun res!2345537 () Bool)

(assert (=> b!5503119 (=> res!2345537 e!3403921)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9730))

(declare-fun lt!2243926 () (InoxSet Context!9730))

(declare-datatypes ((List!62744 0))(
  ( (Nil!62620) (Cons!62620 (h!69068 C!31232) (t!375983 List!62744)) )
))
(declare-fun s!2326 () List!62744)

(declare-fun derivationStepZipper!1592 ((InoxSet Context!9730) C!31232) (InoxSet Context!9730))

(assert (=> b!5503119 (= res!2345537 (not (= (derivationStepZipper!1592 z!1189 (h!69068 s!2326)) lt!2243926)))))

(declare-fun lambda!294631 () Int)

(declare-fun flatMap!1100 ((InoxSet Context!9730) Int) (InoxSet Context!9730))

(declare-fun derivationStepZipperUp!753 (Context!9730 C!31232) (InoxSet Context!9730))

(assert (=> b!5503119 (= (flatMap!1100 z!1189 lambda!294631) (derivationStepZipperUp!753 (h!69067 zl!343) (h!69068 s!2326)))))

(declare-datatypes ((Unit!155422 0))(
  ( (Unit!155423) )
))
(declare-fun lt!2243919 () Unit!155422)

(declare-fun lemmaFlatMapOnSingletonSet!632 ((InoxSet Context!9730) Context!9730 Int) Unit!155422)

(assert (=> b!5503119 (= lt!2243919 (lemmaFlatMapOnSingletonSet!632 z!1189 (h!69067 zl!343) lambda!294631))))

(declare-fun b!5503120 () Bool)

(declare-fun res!2345545 () Bool)

(declare-fun e!3403916 () Bool)

(assert (=> b!5503120 (=> (not res!2345545) (not e!3403916))))

(declare-fun unfocusZipper!1223 (List!62743) Regex!15481)

(assert (=> b!5503120 (= res!2345545 (= r!7292 (unfocusZipper!1223 zl!343)))))

(declare-fun b!5503121 () Bool)

(declare-fun e!3403922 () Bool)

(declare-fun tp!1514236 () Bool)

(assert (=> b!5503121 (= e!3403922 tp!1514236)))

(declare-fun b!5503122 () Bool)

(declare-fun tp!1514241 () Bool)

(declare-fun tp!1514237 () Bool)

(assert (=> b!5503122 (= e!3403922 (and tp!1514241 tp!1514237))))

(declare-fun b!5503123 () Bool)

(declare-fun e!3403917 () Bool)

(declare-fun tp!1514235 () Bool)

(assert (=> b!5503123 (= e!3403917 tp!1514235)))

(declare-fun b!5503124 () Bool)

(declare-fun e!3403910 () Bool)

(assert (=> b!5503124 (= e!3403910 e!3403911)))

(declare-fun res!2345546 () Bool)

(assert (=> b!5503124 (=> res!2345546 e!3403911)))

(declare-fun lt!2243924 () (InoxSet Context!9730))

(assert (=> b!5503124 (= res!2345546 (not (= lt!2243924 lt!2243926)))))

(declare-fun lt!2243916 () (InoxSet Context!9730))

(declare-fun lt!2243912 () (InoxSet Context!9730))

(assert (=> b!5503124 (= lt!2243926 ((_ map or) lt!2243916 lt!2243912))))

(declare-fun lt!2243915 () Context!9730)

(declare-fun derivationStepZipperDown!827 (Regex!15481 Context!9730 C!31232) (InoxSet Context!9730))

(assert (=> b!5503124 (= lt!2243912 (derivationStepZipperDown!827 (regTwo!31475 r!7292) lt!2243915 (h!69068 s!2326)))))

(assert (=> b!5503124 (= lt!2243916 (derivationStepZipperDown!827 (regOne!31475 r!7292) lt!2243915 (h!69068 s!2326)))))

(declare-fun b!5503125 () Bool)

(declare-fun e!3403909 () Bool)

(assert (=> b!5503125 (= e!3403915 e!3403909)))

(declare-fun res!2345535 () Bool)

(assert (=> b!5503125 (=> res!2345535 e!3403909)))

(declare-fun lt!2243909 () Bool)

(declare-fun lt!2243927 () Bool)

(declare-fun lt!2243902 () Bool)

(get-info :version)

(assert (=> b!5503125 (= res!2345535 (or (not (= lt!2243927 (or lt!2243909 lt!2243902))) ((_ is Nil!62620) s!2326)))))

(declare-fun matchRSpec!2584 (Regex!15481 List!62744) Bool)

(assert (=> b!5503125 (= lt!2243902 (matchRSpec!2584 (regTwo!31475 r!7292) s!2326))))

(declare-fun matchR!7666 (Regex!15481 List!62744) Bool)

(assert (=> b!5503125 (= lt!2243902 (matchR!7666 (regTwo!31475 r!7292) s!2326))))

(declare-fun lt!2243918 () Unit!155422)

(declare-fun mainMatchTheorem!2584 (Regex!15481 List!62744) Unit!155422)

(assert (=> b!5503125 (= lt!2243918 (mainMatchTheorem!2584 (regTwo!31475 r!7292) s!2326))))

(assert (=> b!5503125 (= lt!2243909 (matchRSpec!2584 (regOne!31475 r!7292) s!2326))))

(assert (=> b!5503125 (= lt!2243909 (matchR!7666 (regOne!31475 r!7292) s!2326))))

(declare-fun lt!2243905 () Unit!155422)

(assert (=> b!5503125 (= lt!2243905 (mainMatchTheorem!2584 (regOne!31475 r!7292) s!2326))))

(declare-fun b!5503126 () Bool)

(declare-fun e!3403914 () Bool)

(assert (=> b!5503126 (= e!3403921 e!3403914)))

(declare-fun res!2345532 () Bool)

(assert (=> b!5503126 (=> res!2345532 e!3403914)))

(declare-fun lt!2243904 () Bool)

(declare-fun lt!2243907 () Bool)

(assert (=> b!5503126 (= res!2345532 (not (= lt!2243904 lt!2243907)))))

(declare-fun matchZipper!1649 ((InoxSet Context!9730) List!62744) Bool)

(assert (=> b!5503126 (= lt!2243907 (matchZipper!1649 z!1189 s!2326))))

(assert (=> b!5503126 (= lt!2243904 (matchZipper!1649 lt!2243926 (t!375983 s!2326)))))

(declare-fun b!5503127 () Bool)

(declare-fun res!2345544 () Bool)

(assert (=> b!5503127 (=> res!2345544 e!3403915)))

(assert (=> b!5503127 (= res!2345544 (not ((_ is Cons!62618) (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5503128 () Bool)

(declare-fun res!2345534 () Bool)

(assert (=> b!5503128 (=> res!2345534 e!3403915)))

(assert (=> b!5503128 (= res!2345534 (or ((_ is EmptyExpr!15481) r!7292) ((_ is EmptyLang!15481) r!7292) ((_ is ElementMatch!15481) r!7292) (not ((_ is Union!15481) r!7292))))))

(declare-fun b!5503129 () Bool)

(assert (=> b!5503129 (= e!3403909 e!3403910)))

(declare-fun res!2345540 () Bool)

(assert (=> b!5503129 (=> res!2345540 e!3403910)))

(declare-fun lt!2243922 () (InoxSet Context!9730))

(assert (=> b!5503129 (= res!2345540 (not (= lt!2243922 lt!2243924)))))

(assert (=> b!5503129 (= lt!2243924 (derivationStepZipperDown!827 r!7292 lt!2243915 (h!69068 s!2326)))))

(assert (=> b!5503129 (= lt!2243915 (Context!9731 Nil!62618))))

(assert (=> b!5503129 (= lt!2243922 (derivationStepZipperUp!753 (Context!9731 (Cons!62618 r!7292 Nil!62618)) (h!69068 s!2326)))))

(declare-fun b!5503130 () Bool)

(declare-fun e!3403913 () Bool)

(declare-fun tp!1514242 () Bool)

(assert (=> b!5503130 (= e!3403913 tp!1514242)))

(declare-fun b!5503131 () Bool)

(declare-fun e!3403920 () Bool)

(declare-fun e!3403919 () Bool)

(assert (=> b!5503131 (= e!3403920 e!3403919)))

(declare-fun res!2345543 () Bool)

(assert (=> b!5503131 (=> res!2345543 e!3403919)))

(declare-fun lt!2243917 () (InoxSet Context!9730))

(declare-fun lt!2243914 () Bool)

(assert (=> b!5503131 (= res!2345543 (not (= (matchZipper!1649 lt!2243917 s!2326) lt!2243914)))))

(declare-fun lt!2243906 () Context!9730)

(declare-fun lt!2243911 () (InoxSet Context!9730))

(assert (=> b!5503131 (= (flatMap!1100 lt!2243911 lambda!294631) (derivationStepZipperUp!753 lt!2243906 (h!69068 s!2326)))))

(declare-fun lt!2243908 () Unit!155422)

(assert (=> b!5503131 (= lt!2243908 (lemmaFlatMapOnSingletonSet!632 lt!2243911 lt!2243906 lambda!294631))))

(declare-fun lt!2243920 () Context!9730)

(assert (=> b!5503131 (= (flatMap!1100 lt!2243917 lambda!294631) (derivationStepZipperUp!753 lt!2243920 (h!69068 s!2326)))))

(declare-fun lt!2243923 () Unit!155422)

(assert (=> b!5503131 (= lt!2243923 (lemmaFlatMapOnSingletonSet!632 lt!2243917 lt!2243920 lambda!294631))))

(declare-fun lt!2243910 () (InoxSet Context!9730))

(assert (=> b!5503131 (= lt!2243910 (derivationStepZipperUp!753 lt!2243906 (h!69068 s!2326)))))

(declare-fun lt!2243925 () (InoxSet Context!9730))

(assert (=> b!5503131 (= lt!2243925 (derivationStepZipperUp!753 lt!2243920 (h!69068 s!2326)))))

(assert (=> b!5503131 (= lt!2243911 (store ((as const (Array Context!9730 Bool)) false) lt!2243906 true))))

(assert (=> b!5503131 (= lt!2243906 (Context!9731 (Cons!62618 (regTwo!31475 r!7292) Nil!62618)))))

(assert (=> b!5503131 (= lt!2243917 (store ((as const (Array Context!9730 Bool)) false) lt!2243920 true))))

(assert (=> b!5503131 (= lt!2243920 (Context!9731 (Cons!62618 (regOne!31475 r!7292) Nil!62618)))))

(declare-fun b!5503132 () Bool)

(declare-fun e!3403912 () Bool)

(declare-fun tp_is_empty!40215 () Bool)

(declare-fun tp!1514234 () Bool)

(assert (=> b!5503132 (= e!3403912 (and tp_is_empty!40215 tp!1514234))))

(declare-fun b!5503133 () Bool)

(assert (=> b!5503133 (= e!3403922 tp_is_empty!40215)))

(declare-fun b!5503134 () Bool)

(declare-fun res!2345547 () Bool)

(assert (=> b!5503134 (=> res!2345547 e!3403915)))

(declare-fun isEmpty!34401 (List!62743) Bool)

(assert (=> b!5503134 (= res!2345547 (not (isEmpty!34401 (t!375982 zl!343))))))

(declare-fun b!5503135 () Bool)

(declare-fun res!2345539 () Bool)

(assert (=> b!5503135 (=> (not res!2345539) (not e!3403916))))

(declare-fun toList!9265 ((InoxSet Context!9730)) List!62743)

(assert (=> b!5503135 (= res!2345539 (= (toList!9265 z!1189) zl!343))))

(declare-fun setIsEmpty!36493 () Bool)

(declare-fun setRes!36493 () Bool)

(assert (=> setIsEmpty!36493 setRes!36493))

(declare-fun b!5503136 () Bool)

(declare-fun res!2345533 () Bool)

(assert (=> b!5503136 (=> res!2345533 e!3403915)))

(declare-fun generalisedConcat!1096 (List!62742) Regex!15481)

(assert (=> b!5503136 (= res!2345533 (not (= r!7292 (generalisedConcat!1096 (exprs!5365 (h!69067 zl!343))))))))

(declare-fun b!5503137 () Bool)

(assert (=> b!5503137 (= e!3403916 (not e!3403915))))

(declare-fun res!2345538 () Bool)

(assert (=> b!5503137 (=> res!2345538 e!3403915)))

(assert (=> b!5503137 (= res!2345538 (not ((_ is Cons!62619) zl!343)))))

(assert (=> b!5503137 (= lt!2243927 (matchRSpec!2584 r!7292 s!2326))))

(assert (=> b!5503137 (= lt!2243927 (matchR!7666 r!7292 s!2326))))

(declare-fun lt!2243921 () Unit!155422)

(assert (=> b!5503137 (= lt!2243921 (mainMatchTheorem!2584 r!7292 s!2326))))

(declare-fun b!5503138 () Bool)

(assert (=> b!5503138 (= e!3403914 e!3403920)))

(declare-fun res!2345536 () Bool)

(assert (=> b!5503138 (=> res!2345536 e!3403920)))

(declare-fun lt!2243903 () Bool)

(assert (=> b!5503138 (= res!2345536 (or (not (= lt!2243903 lt!2243904)) (not (= lt!2243903 lt!2243907))))))

(assert (=> b!5503138 (= lt!2243904 lt!2243903)))

(declare-fun e!3403918 () Bool)

(assert (=> b!5503138 (= lt!2243903 e!3403918)))

(declare-fun res!2345542 () Bool)

(assert (=> b!5503138 (=> res!2345542 e!3403918)))

(assert (=> b!5503138 (= res!2345542 lt!2243914)))

(assert (=> b!5503138 (= lt!2243914 (matchZipper!1649 lt!2243916 (t!375983 s!2326)))))

(declare-fun lt!2243913 () Unit!155422)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!538 ((InoxSet Context!9730) (InoxSet Context!9730) List!62744) Unit!155422)

(assert (=> b!5503138 (= lt!2243913 (lemmaZipperConcatMatchesSameAsBothZippers!538 lt!2243916 lt!2243912 (t!375983 s!2326)))))

(declare-fun res!2345548 () Bool)

(assert (=> start!574750 (=> (not res!2345548) (not e!3403916))))

(declare-fun validRegex!7217 (Regex!15481) Bool)

(assert (=> start!574750 (= res!2345548 (validRegex!7217 r!7292))))

(assert (=> start!574750 e!3403916))

(assert (=> start!574750 e!3403922))

(declare-fun condSetEmpty!36493 () Bool)

(assert (=> start!574750 (= condSetEmpty!36493 (= z!1189 ((as const (Array Context!9730 Bool)) false)))))

(assert (=> start!574750 setRes!36493))

(declare-fun e!3403908 () Bool)

(assert (=> start!574750 e!3403908))

(assert (=> start!574750 e!3403912))

(declare-fun b!5503139 () Bool)

(assert (=> b!5503139 (= e!3403918 (matchZipper!1649 lt!2243912 (t!375983 s!2326)))))

(declare-fun setElem!36493 () Context!9730)

(declare-fun setNonEmpty!36493 () Bool)

(declare-fun tp!1514243 () Bool)

(declare-fun inv!81949 (Context!9730) Bool)

(assert (=> setNonEmpty!36493 (= setRes!36493 (and tp!1514243 (inv!81949 setElem!36493) e!3403913))))

(declare-fun setRest!36493 () (InoxSet Context!9730))

(assert (=> setNonEmpty!36493 (= z!1189 ((_ map or) (store ((as const (Array Context!9730 Bool)) false) setElem!36493 true) setRest!36493))))

(declare-fun b!5503140 () Bool)

(declare-fun tp!1514238 () Bool)

(declare-fun tp!1514239 () Bool)

(assert (=> b!5503140 (= e!3403922 (and tp!1514238 tp!1514239))))

(declare-fun tp!1514240 () Bool)

(declare-fun b!5503141 () Bool)

(assert (=> b!5503141 (= e!3403908 (and (inv!81949 (h!69067 zl!343)) e!3403917 tp!1514240))))

(declare-fun b!5503142 () Bool)

(assert (=> b!5503142 (= e!3403919 (= (matchZipper!1649 lt!2243911 s!2326) (matchZipper!1649 lt!2243912 (t!375983 s!2326))))))

(assert (= (and start!574750 res!2345548) b!5503135))

(assert (= (and b!5503135 res!2345539) b!5503120))

(assert (= (and b!5503120 res!2345545) b!5503137))

(assert (= (and b!5503137 (not res!2345538)) b!5503134))

(assert (= (and b!5503134 (not res!2345547)) b!5503136))

(assert (= (and b!5503136 (not res!2345533)) b!5503127))

(assert (= (and b!5503127 (not res!2345544)) b!5503118))

(assert (= (and b!5503118 (not res!2345541)) b!5503128))

(assert (= (and b!5503128 (not res!2345534)) b!5503125))

(assert (= (and b!5503125 (not res!2345535)) b!5503129))

(assert (= (and b!5503129 (not res!2345540)) b!5503124))

(assert (= (and b!5503124 (not res!2345546)) b!5503119))

(assert (= (and b!5503119 (not res!2345537)) b!5503126))

(assert (= (and b!5503126 (not res!2345532)) b!5503138))

(assert (= (and b!5503138 (not res!2345542)) b!5503139))

(assert (= (and b!5503138 (not res!2345536)) b!5503131))

(assert (= (and b!5503131 (not res!2345543)) b!5503142))

(assert (= (and start!574750 ((_ is ElementMatch!15481) r!7292)) b!5503133))

(assert (= (and start!574750 ((_ is Concat!24326) r!7292)) b!5503122))

(assert (= (and start!574750 ((_ is Star!15481) r!7292)) b!5503121))

(assert (= (and start!574750 ((_ is Union!15481) r!7292)) b!5503140))

(assert (= (and start!574750 condSetEmpty!36493) setIsEmpty!36493))

(assert (= (and start!574750 (not condSetEmpty!36493)) setNonEmpty!36493))

(assert (= setNonEmpty!36493 b!5503130))

(assert (= b!5503141 b!5503123))

(assert (= (and start!574750 ((_ is Cons!62619) zl!343)) b!5503141))

(assert (= (and start!574750 ((_ is Cons!62620) s!2326)) b!5503132))

(declare-fun m!6510730 () Bool)

(assert (=> b!5503135 m!6510730))

(declare-fun m!6510732 () Bool)

(assert (=> setNonEmpty!36493 m!6510732))

(declare-fun m!6510734 () Bool)

(assert (=> b!5503125 m!6510734))

(declare-fun m!6510736 () Bool)

(assert (=> b!5503125 m!6510736))

(declare-fun m!6510738 () Bool)

(assert (=> b!5503125 m!6510738))

(declare-fun m!6510740 () Bool)

(assert (=> b!5503125 m!6510740))

(declare-fun m!6510742 () Bool)

(assert (=> b!5503125 m!6510742))

(declare-fun m!6510744 () Bool)

(assert (=> b!5503125 m!6510744))

(declare-fun m!6510746 () Bool)

(assert (=> b!5503129 m!6510746))

(declare-fun m!6510748 () Bool)

(assert (=> b!5503129 m!6510748))

(declare-fun m!6510750 () Bool)

(assert (=> b!5503131 m!6510750))

(declare-fun m!6510752 () Bool)

(assert (=> b!5503131 m!6510752))

(declare-fun m!6510754 () Bool)

(assert (=> b!5503131 m!6510754))

(declare-fun m!6510756 () Bool)

(assert (=> b!5503131 m!6510756))

(declare-fun m!6510758 () Bool)

(assert (=> b!5503131 m!6510758))

(declare-fun m!6510760 () Bool)

(assert (=> b!5503131 m!6510760))

(declare-fun m!6510762 () Bool)

(assert (=> b!5503131 m!6510762))

(declare-fun m!6510764 () Bool)

(assert (=> b!5503131 m!6510764))

(declare-fun m!6510766 () Bool)

(assert (=> b!5503131 m!6510766))

(declare-fun m!6510768 () Bool)

(assert (=> b!5503134 m!6510768))

(declare-fun m!6510770 () Bool)

(assert (=> b!5503139 m!6510770))

(declare-fun m!6510772 () Bool)

(assert (=> b!5503138 m!6510772))

(declare-fun m!6510774 () Bool)

(assert (=> b!5503138 m!6510774))

(declare-fun m!6510776 () Bool)

(assert (=> b!5503142 m!6510776))

(assert (=> b!5503142 m!6510770))

(declare-fun m!6510778 () Bool)

(assert (=> b!5503136 m!6510778))

(declare-fun m!6510780 () Bool)

(assert (=> start!574750 m!6510780))

(declare-fun m!6510782 () Bool)

(assert (=> b!5503118 m!6510782))

(assert (=> b!5503118 m!6510782))

(declare-fun m!6510784 () Bool)

(assert (=> b!5503118 m!6510784))

(declare-fun m!6510786 () Bool)

(assert (=> b!5503119 m!6510786))

(declare-fun m!6510788 () Bool)

(assert (=> b!5503119 m!6510788))

(declare-fun m!6510790 () Bool)

(assert (=> b!5503119 m!6510790))

(declare-fun m!6510792 () Bool)

(assert (=> b!5503119 m!6510792))

(declare-fun m!6510794 () Bool)

(assert (=> b!5503124 m!6510794))

(declare-fun m!6510796 () Bool)

(assert (=> b!5503124 m!6510796))

(declare-fun m!6510798 () Bool)

(assert (=> b!5503120 m!6510798))

(declare-fun m!6510800 () Bool)

(assert (=> b!5503141 m!6510800))

(declare-fun m!6510802 () Bool)

(assert (=> b!5503137 m!6510802))

(declare-fun m!6510804 () Bool)

(assert (=> b!5503137 m!6510804))

(declare-fun m!6510806 () Bool)

(assert (=> b!5503137 m!6510806))

(declare-fun m!6510808 () Bool)

(assert (=> b!5503126 m!6510808))

(declare-fun m!6510810 () Bool)

(assert (=> b!5503126 m!6510810))

(check-sat (not b!5503141) (not b!5503124) (not b!5503137) (not b!5503123) (not b!5503132) (not b!5503134) (not b!5503135) (not b!5503121) (not b!5503129) (not b!5503138) (not b!5503130) (not b!5503140) (not b!5503139) tp_is_empty!40215 (not b!5503136) (not b!5503118) (not b!5503125) (not b!5503119) (not b!5503122) (not b!5503142) (not start!574750) (not b!5503131) (not b!5503120) (not b!5503126) (not setNonEmpty!36493))
(check-sat)
(get-model)

(declare-fun b!5503572 () Bool)

(assert (=> b!5503572 true))

(assert (=> b!5503572 true))

(declare-fun bs!1269309 () Bool)

(declare-fun b!5503580 () Bool)

(assert (= bs!1269309 (and b!5503580 b!5503572)))

(declare-fun lambda!294663 () Int)

(declare-fun lambda!294662 () Int)

(assert (=> bs!1269309 (not (= lambda!294663 lambda!294662))))

(assert (=> b!5503580 true))

(assert (=> b!5503580 true))

(declare-fun c!961456 () Bool)

(declare-fun call!406505 () Bool)

(declare-fun bm!406499 () Bool)

(declare-fun Exists!2583 (Int) Bool)

(assert (=> bm!406499 (= call!406505 (Exists!2583 (ite c!961456 lambda!294662 lambda!294663)))))

(declare-fun e!3404160 () Bool)

(assert (=> b!5503572 (= e!3404160 call!406505)))

(declare-fun b!5503573 () Bool)

(declare-fun e!3404162 () Bool)

(assert (=> b!5503573 (= e!3404162 (matchRSpec!2584 (regTwo!31475 r!7292) s!2326))))

(declare-fun bm!406500 () Bool)

(declare-fun call!406504 () Bool)

(declare-fun isEmpty!34404 (List!62744) Bool)

(assert (=> bm!406500 (= call!406504 (isEmpty!34404 s!2326))))

(declare-fun b!5503574 () Bool)

(declare-fun c!961457 () Bool)

(assert (=> b!5503574 (= c!961457 ((_ is Union!15481) r!7292))))

(declare-fun e!3404161 () Bool)

(declare-fun e!3404163 () Bool)

(assert (=> b!5503574 (= e!3404161 e!3404163)))

(declare-fun b!5503576 () Bool)

(declare-fun c!961458 () Bool)

(assert (=> b!5503576 (= c!961458 ((_ is ElementMatch!15481) r!7292))))

(declare-fun e!3404165 () Bool)

(assert (=> b!5503576 (= e!3404165 e!3404161)))

(declare-fun b!5503577 () Bool)

(declare-fun e!3404164 () Bool)

(assert (=> b!5503577 (= e!3404164 call!406504)))

(declare-fun b!5503578 () Bool)

(assert (=> b!5503578 (= e!3404163 e!3404162)))

(declare-fun res!2345674 () Bool)

(assert (=> b!5503578 (= res!2345674 (matchRSpec!2584 (regOne!31475 r!7292) s!2326))))

(assert (=> b!5503578 (=> res!2345674 e!3404162)))

(declare-fun b!5503579 () Bool)

(declare-fun e!3404166 () Bool)

(assert (=> b!5503579 (= e!3404163 e!3404166)))

(assert (=> b!5503579 (= c!961456 ((_ is Star!15481) r!7292))))

(assert (=> b!5503580 (= e!3404166 call!406505)))

(declare-fun b!5503575 () Bool)

(assert (=> b!5503575 (= e!3404164 e!3404165)))

(declare-fun res!2345676 () Bool)

(assert (=> b!5503575 (= res!2345676 (not ((_ is EmptyLang!15481) r!7292)))))

(assert (=> b!5503575 (=> (not res!2345676) (not e!3404165))))

(declare-fun d!1744424 () Bool)

(declare-fun c!961455 () Bool)

(assert (=> d!1744424 (= c!961455 ((_ is EmptyExpr!15481) r!7292))))

(assert (=> d!1744424 (= (matchRSpec!2584 r!7292 s!2326) e!3404164)))

(declare-fun b!5503581 () Bool)

(assert (=> b!5503581 (= e!3404161 (= s!2326 (Cons!62620 (c!961331 r!7292) Nil!62620)))))

(declare-fun b!5503582 () Bool)

(declare-fun res!2345675 () Bool)

(assert (=> b!5503582 (=> res!2345675 e!3404160)))

(assert (=> b!5503582 (= res!2345675 call!406504)))

(assert (=> b!5503582 (= e!3404166 e!3404160)))

(assert (= (and d!1744424 c!961455) b!5503577))

(assert (= (and d!1744424 (not c!961455)) b!5503575))

(assert (= (and b!5503575 res!2345676) b!5503576))

(assert (= (and b!5503576 c!961458) b!5503581))

(assert (= (and b!5503576 (not c!961458)) b!5503574))

(assert (= (and b!5503574 c!961457) b!5503578))

(assert (= (and b!5503574 (not c!961457)) b!5503579))

(assert (= (and b!5503578 (not res!2345674)) b!5503573))

(assert (= (and b!5503579 c!961456) b!5503582))

(assert (= (and b!5503579 (not c!961456)) b!5503580))

(assert (= (and b!5503582 (not res!2345675)) b!5503572))

(assert (= (or b!5503572 b!5503580) bm!406499))

(assert (= (or b!5503577 b!5503582) bm!406500))

(declare-fun m!6511046 () Bool)

(assert (=> bm!406499 m!6511046))

(assert (=> b!5503573 m!6510734))

(declare-fun m!6511048 () Bool)

(assert (=> bm!406500 m!6511048))

(assert (=> b!5503578 m!6510740))

(assert (=> b!5503137 d!1744424))

(declare-fun b!5503615 () Bool)

(declare-fun e!3404184 () Bool)

(declare-fun e!3404186 () Bool)

(assert (=> b!5503615 (= e!3404184 e!3404186)))

(declare-fun c!961466 () Bool)

(assert (=> b!5503615 (= c!961466 ((_ is EmptyLang!15481) r!7292))))

(declare-fun b!5503616 () Bool)

(declare-fun res!2345700 () Bool)

(declare-fun e!3404185 () Bool)

(assert (=> b!5503616 (=> res!2345700 e!3404185)))

(declare-fun e!3404183 () Bool)

(assert (=> b!5503616 (= res!2345700 e!3404183)))

(declare-fun res!2345697 () Bool)

(assert (=> b!5503616 (=> (not res!2345697) (not e!3404183))))

(declare-fun lt!2243963 () Bool)

(assert (=> b!5503616 (= res!2345697 lt!2243963)))

(declare-fun b!5503617 () Bool)

(declare-fun e!3404181 () Bool)

(assert (=> b!5503617 (= e!3404185 e!3404181)))

(declare-fun res!2345698 () Bool)

(assert (=> b!5503617 (=> (not res!2345698) (not e!3404181))))

(assert (=> b!5503617 (= res!2345698 (not lt!2243963))))

(declare-fun b!5503618 () Bool)

(assert (=> b!5503618 (= e!3404186 (not lt!2243963))))

(declare-fun b!5503619 () Bool)

(declare-fun head!11787 (List!62744) C!31232)

(assert (=> b!5503619 (= e!3404183 (= (head!11787 s!2326) (c!961331 r!7292)))))

(declare-fun bm!406503 () Bool)

(declare-fun call!406508 () Bool)

(assert (=> bm!406503 (= call!406508 (isEmpty!34404 s!2326))))

(declare-fun b!5503620 () Bool)

(declare-fun res!2345693 () Bool)

(declare-fun e!3404182 () Bool)

(assert (=> b!5503620 (=> res!2345693 e!3404182)))

(declare-fun tail!10882 (List!62744) List!62744)

(assert (=> b!5503620 (= res!2345693 (not (isEmpty!34404 (tail!10882 s!2326))))))

(declare-fun d!1744426 () Bool)

(assert (=> d!1744426 e!3404184))

(declare-fun c!961467 () Bool)

(assert (=> d!1744426 (= c!961467 ((_ is EmptyExpr!15481) r!7292))))

(declare-fun e!3404187 () Bool)

(assert (=> d!1744426 (= lt!2243963 e!3404187)))

(declare-fun c!961465 () Bool)

(assert (=> d!1744426 (= c!961465 (isEmpty!34404 s!2326))))

(assert (=> d!1744426 (validRegex!7217 r!7292)))

(assert (=> d!1744426 (= (matchR!7666 r!7292 s!2326) lt!2243963)))

(declare-fun b!5503621 () Bool)

(assert (=> b!5503621 (= e!3404181 e!3404182)))

(declare-fun res!2345696 () Bool)

(assert (=> b!5503621 (=> res!2345696 e!3404182)))

(assert (=> b!5503621 (= res!2345696 call!406508)))

(declare-fun b!5503622 () Bool)

(declare-fun derivativeStep!4357 (Regex!15481 C!31232) Regex!15481)

(assert (=> b!5503622 (= e!3404187 (matchR!7666 (derivativeStep!4357 r!7292 (head!11787 s!2326)) (tail!10882 s!2326)))))

(declare-fun b!5503623 () Bool)

(assert (=> b!5503623 (= e!3404182 (not (= (head!11787 s!2326) (c!961331 r!7292))))))

(declare-fun b!5503624 () Bool)

(declare-fun nullable!5518 (Regex!15481) Bool)

(assert (=> b!5503624 (= e!3404187 (nullable!5518 r!7292))))

(declare-fun b!5503625 () Bool)

(assert (=> b!5503625 (= e!3404184 (= lt!2243963 call!406508))))

(declare-fun b!5503626 () Bool)

(declare-fun res!2345695 () Bool)

(assert (=> b!5503626 (=> (not res!2345695) (not e!3404183))))

(assert (=> b!5503626 (= res!2345695 (not call!406508))))

(declare-fun b!5503627 () Bool)

(declare-fun res!2345699 () Bool)

(assert (=> b!5503627 (=> (not res!2345699) (not e!3404183))))

(assert (=> b!5503627 (= res!2345699 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun b!5503628 () Bool)

(declare-fun res!2345694 () Bool)

(assert (=> b!5503628 (=> res!2345694 e!3404185)))

(assert (=> b!5503628 (= res!2345694 (not ((_ is ElementMatch!15481) r!7292)))))

(assert (=> b!5503628 (= e!3404186 e!3404185)))

(assert (= (and d!1744426 c!961465) b!5503624))

(assert (= (and d!1744426 (not c!961465)) b!5503622))

(assert (= (and d!1744426 c!961467) b!5503625))

(assert (= (and d!1744426 (not c!961467)) b!5503615))

(assert (= (and b!5503615 c!961466) b!5503618))

(assert (= (and b!5503615 (not c!961466)) b!5503628))

(assert (= (and b!5503628 (not res!2345694)) b!5503616))

(assert (= (and b!5503616 res!2345697) b!5503626))

(assert (= (and b!5503626 res!2345695) b!5503627))

(assert (= (and b!5503627 res!2345699) b!5503619))

(assert (= (and b!5503616 (not res!2345700)) b!5503617))

(assert (= (and b!5503617 res!2345698) b!5503621))

(assert (= (and b!5503621 (not res!2345696)) b!5503620))

(assert (= (and b!5503620 (not res!2345693)) b!5503623))

(assert (= (or b!5503625 b!5503621 b!5503626) bm!406503))

(declare-fun m!6511050 () Bool)

(assert (=> b!5503624 m!6511050))

(declare-fun m!6511052 () Bool)

(assert (=> b!5503619 m!6511052))

(assert (=> b!5503622 m!6511052))

(assert (=> b!5503622 m!6511052))

(declare-fun m!6511054 () Bool)

(assert (=> b!5503622 m!6511054))

(declare-fun m!6511056 () Bool)

(assert (=> b!5503622 m!6511056))

(assert (=> b!5503622 m!6511054))

(assert (=> b!5503622 m!6511056))

(declare-fun m!6511058 () Bool)

(assert (=> b!5503622 m!6511058))

(assert (=> b!5503620 m!6511056))

(assert (=> b!5503620 m!6511056))

(declare-fun m!6511060 () Bool)

(assert (=> b!5503620 m!6511060))

(assert (=> bm!406503 m!6511048))

(assert (=> b!5503627 m!6511056))

(assert (=> b!5503627 m!6511056))

(assert (=> b!5503627 m!6511060))

(assert (=> b!5503623 m!6511052))

(assert (=> d!1744426 m!6511048))

(assert (=> d!1744426 m!6510780))

(assert (=> b!5503137 d!1744426))

(declare-fun d!1744428 () Bool)

(assert (=> d!1744428 (= (matchR!7666 r!7292 s!2326) (matchRSpec!2584 r!7292 s!2326))))

(declare-fun lt!2243966 () Unit!155422)

(declare-fun choose!41817 (Regex!15481 List!62744) Unit!155422)

(assert (=> d!1744428 (= lt!2243966 (choose!41817 r!7292 s!2326))))

(assert (=> d!1744428 (validRegex!7217 r!7292)))

(assert (=> d!1744428 (= (mainMatchTheorem!2584 r!7292 s!2326) lt!2243966)))

(declare-fun bs!1269310 () Bool)

(assert (= bs!1269310 d!1744428))

(assert (=> bs!1269310 m!6510804))

(assert (=> bs!1269310 m!6510802))

(declare-fun m!6511062 () Bool)

(assert (=> bs!1269310 m!6511062))

(assert (=> bs!1269310 m!6510780))

(assert (=> b!5503137 d!1744428))

(declare-fun b!5503649 () Bool)

(declare-fun e!3404202 () Regex!15481)

(assert (=> b!5503649 (= e!3404202 (h!69066 (exprs!5365 (h!69067 zl!343))))))

(declare-fun b!5503650 () Bool)

(declare-fun e!3404205 () Bool)

(declare-fun lt!2243969 () Regex!15481)

(declare-fun isEmptyExpr!1064 (Regex!15481) Bool)

(assert (=> b!5503650 (= e!3404205 (isEmptyExpr!1064 lt!2243969))))

(declare-fun b!5503651 () Bool)

(declare-fun e!3404203 () Bool)

(declare-fun isEmpty!34405 (List!62742) Bool)

(assert (=> b!5503651 (= e!3404203 (isEmpty!34405 (t!375981 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5503652 () Bool)

(declare-fun e!3404204 () Bool)

(declare-fun head!11788 (List!62742) Regex!15481)

(assert (=> b!5503652 (= e!3404204 (= lt!2243969 (head!11788 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5503653 () Bool)

(declare-fun e!3404200 () Bool)

(assert (=> b!5503653 (= e!3404200 e!3404205)))

(declare-fun c!961476 () Bool)

(assert (=> b!5503653 (= c!961476 (isEmpty!34405 (exprs!5365 (h!69067 zl!343))))))

(declare-fun d!1744430 () Bool)

(assert (=> d!1744430 e!3404200))

(declare-fun res!2345705 () Bool)

(assert (=> d!1744430 (=> (not res!2345705) (not e!3404200))))

(assert (=> d!1744430 (= res!2345705 (validRegex!7217 lt!2243969))))

(assert (=> d!1744430 (= lt!2243969 e!3404202)))

(declare-fun c!961478 () Bool)

(assert (=> d!1744430 (= c!961478 e!3404203)))

(declare-fun res!2345706 () Bool)

(assert (=> d!1744430 (=> (not res!2345706) (not e!3404203))))

(assert (=> d!1744430 (= res!2345706 ((_ is Cons!62618) (exprs!5365 (h!69067 zl!343))))))

(declare-fun lambda!294666 () Int)

(declare-fun forall!14666 (List!62742 Int) Bool)

(assert (=> d!1744430 (forall!14666 (exprs!5365 (h!69067 zl!343)) lambda!294666)))

(assert (=> d!1744430 (= (generalisedConcat!1096 (exprs!5365 (h!69067 zl!343))) lt!2243969)))

(declare-fun b!5503654 () Bool)

(declare-fun isConcat!587 (Regex!15481) Bool)

(assert (=> b!5503654 (= e!3404204 (isConcat!587 lt!2243969))))

(declare-fun b!5503655 () Bool)

(declare-fun e!3404201 () Regex!15481)

(assert (=> b!5503655 (= e!3404202 e!3404201)))

(declare-fun c!961477 () Bool)

(assert (=> b!5503655 (= c!961477 ((_ is Cons!62618) (exprs!5365 (h!69067 zl!343))))))

(declare-fun b!5503656 () Bool)

(assert (=> b!5503656 (= e!3404205 e!3404204)))

(declare-fun c!961479 () Bool)

(declare-fun tail!10883 (List!62742) List!62742)

(assert (=> b!5503656 (= c!961479 (isEmpty!34405 (tail!10883 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5503657 () Bool)

(assert (=> b!5503657 (= e!3404201 (Concat!24326 (h!69066 (exprs!5365 (h!69067 zl!343))) (generalisedConcat!1096 (t!375981 (exprs!5365 (h!69067 zl!343))))))))

(declare-fun b!5503658 () Bool)

(assert (=> b!5503658 (= e!3404201 EmptyExpr!15481)))

(assert (= (and d!1744430 res!2345706) b!5503651))

(assert (= (and d!1744430 c!961478) b!5503649))

(assert (= (and d!1744430 (not c!961478)) b!5503655))

(assert (= (and b!5503655 c!961477) b!5503657))

(assert (= (and b!5503655 (not c!961477)) b!5503658))

(assert (= (and d!1744430 res!2345705) b!5503653))

(assert (= (and b!5503653 c!961476) b!5503650))

(assert (= (and b!5503653 (not c!961476)) b!5503656))

(assert (= (and b!5503656 c!961479) b!5503652))

(assert (= (and b!5503656 (not c!961479)) b!5503654))

(declare-fun m!6511064 () Bool)

(assert (=> b!5503653 m!6511064))

(declare-fun m!6511066 () Bool)

(assert (=> b!5503651 m!6511066))

(declare-fun m!6511068 () Bool)

(assert (=> b!5503656 m!6511068))

(assert (=> b!5503656 m!6511068))

(declare-fun m!6511070 () Bool)

(assert (=> b!5503656 m!6511070))

(declare-fun m!6511072 () Bool)

(assert (=> b!5503654 m!6511072))

(declare-fun m!6511074 () Bool)

(assert (=> d!1744430 m!6511074))

(declare-fun m!6511076 () Bool)

(assert (=> d!1744430 m!6511076))

(declare-fun m!6511078 () Bool)

(assert (=> b!5503650 m!6511078))

(declare-fun m!6511080 () Bool)

(assert (=> b!5503652 m!6511080))

(declare-fun m!6511082 () Bool)

(assert (=> b!5503657 m!6511082))

(assert (=> b!5503136 d!1744430))

(declare-fun d!1744432 () Bool)

(declare-fun c!961482 () Bool)

(assert (=> d!1744432 (= c!961482 (isEmpty!34404 s!2326))))

(declare-fun e!3404208 () Bool)

(assert (=> d!1744432 (= (matchZipper!1649 z!1189 s!2326) e!3404208)))

(declare-fun b!5503663 () Bool)

(declare-fun nullableZipper!1523 ((InoxSet Context!9730)) Bool)

(assert (=> b!5503663 (= e!3404208 (nullableZipper!1523 z!1189))))

(declare-fun b!5503664 () Bool)

(assert (=> b!5503664 (= e!3404208 (matchZipper!1649 (derivationStepZipper!1592 z!1189 (head!11787 s!2326)) (tail!10882 s!2326)))))

(assert (= (and d!1744432 c!961482) b!5503663))

(assert (= (and d!1744432 (not c!961482)) b!5503664))

(assert (=> d!1744432 m!6511048))

(declare-fun m!6511084 () Bool)

(assert (=> b!5503663 m!6511084))

(assert (=> b!5503664 m!6511052))

(assert (=> b!5503664 m!6511052))

(declare-fun m!6511086 () Bool)

(assert (=> b!5503664 m!6511086))

(assert (=> b!5503664 m!6511056))

(assert (=> b!5503664 m!6511086))

(assert (=> b!5503664 m!6511056))

(declare-fun m!6511088 () Bool)

(assert (=> b!5503664 m!6511088))

(assert (=> b!5503126 d!1744432))

(declare-fun d!1744434 () Bool)

(declare-fun c!961483 () Bool)

(assert (=> d!1744434 (= c!961483 (isEmpty!34404 (t!375983 s!2326)))))

(declare-fun e!3404209 () Bool)

(assert (=> d!1744434 (= (matchZipper!1649 lt!2243926 (t!375983 s!2326)) e!3404209)))

(declare-fun b!5503665 () Bool)

(assert (=> b!5503665 (= e!3404209 (nullableZipper!1523 lt!2243926))))

(declare-fun b!5503666 () Bool)

(assert (=> b!5503666 (= e!3404209 (matchZipper!1649 (derivationStepZipper!1592 lt!2243926 (head!11787 (t!375983 s!2326))) (tail!10882 (t!375983 s!2326))))))

(assert (= (and d!1744434 c!961483) b!5503665))

(assert (= (and d!1744434 (not c!961483)) b!5503666))

(declare-fun m!6511090 () Bool)

(assert (=> d!1744434 m!6511090))

(declare-fun m!6511092 () Bool)

(assert (=> b!5503665 m!6511092))

(declare-fun m!6511094 () Bool)

(assert (=> b!5503666 m!6511094))

(assert (=> b!5503666 m!6511094))

(declare-fun m!6511096 () Bool)

(assert (=> b!5503666 m!6511096))

(declare-fun m!6511098 () Bool)

(assert (=> b!5503666 m!6511098))

(assert (=> b!5503666 m!6511096))

(assert (=> b!5503666 m!6511098))

(declare-fun m!6511100 () Bool)

(assert (=> b!5503666 m!6511100))

(assert (=> b!5503126 d!1744434))

(declare-fun bs!1269311 () Bool)

(declare-fun b!5503667 () Bool)

(assert (= bs!1269311 (and b!5503667 b!5503572)))

(declare-fun lambda!294667 () Int)

(assert (=> bs!1269311 (= (and (= (reg!15810 (regTwo!31475 r!7292)) (reg!15810 r!7292)) (= (regTwo!31475 r!7292) r!7292)) (= lambda!294667 lambda!294662))))

(declare-fun bs!1269312 () Bool)

(assert (= bs!1269312 (and b!5503667 b!5503580)))

(assert (=> bs!1269312 (not (= lambda!294667 lambda!294663))))

(assert (=> b!5503667 true))

(assert (=> b!5503667 true))

(declare-fun bs!1269313 () Bool)

(declare-fun b!5503675 () Bool)

(assert (= bs!1269313 (and b!5503675 b!5503572)))

(declare-fun lambda!294668 () Int)

(assert (=> bs!1269313 (not (= lambda!294668 lambda!294662))))

(declare-fun bs!1269314 () Bool)

(assert (= bs!1269314 (and b!5503675 b!5503580)))

(assert (=> bs!1269314 (= (and (= (regOne!31474 (regTwo!31475 r!7292)) (regOne!31474 r!7292)) (= (regTwo!31474 (regTwo!31475 r!7292)) (regTwo!31474 r!7292))) (= lambda!294668 lambda!294663))))

(declare-fun bs!1269315 () Bool)

(assert (= bs!1269315 (and b!5503675 b!5503667)))

(assert (=> bs!1269315 (not (= lambda!294668 lambda!294667))))

(assert (=> b!5503675 true))

(assert (=> b!5503675 true))

(declare-fun call!406510 () Bool)

(declare-fun c!961485 () Bool)

(declare-fun bm!406504 () Bool)

(assert (=> bm!406504 (= call!406510 (Exists!2583 (ite c!961485 lambda!294667 lambda!294668)))))

(declare-fun e!3404210 () Bool)

(assert (=> b!5503667 (= e!3404210 call!406510)))

(declare-fun b!5503668 () Bool)

(declare-fun e!3404212 () Bool)

(assert (=> b!5503668 (= e!3404212 (matchRSpec!2584 (regTwo!31475 (regTwo!31475 r!7292)) s!2326))))

(declare-fun bm!406505 () Bool)

(declare-fun call!406509 () Bool)

(assert (=> bm!406505 (= call!406509 (isEmpty!34404 s!2326))))

(declare-fun b!5503669 () Bool)

(declare-fun c!961486 () Bool)

(assert (=> b!5503669 (= c!961486 ((_ is Union!15481) (regTwo!31475 r!7292)))))

(declare-fun e!3404211 () Bool)

(declare-fun e!3404213 () Bool)

(assert (=> b!5503669 (= e!3404211 e!3404213)))

(declare-fun b!5503671 () Bool)

(declare-fun c!961487 () Bool)

(assert (=> b!5503671 (= c!961487 ((_ is ElementMatch!15481) (regTwo!31475 r!7292)))))

(declare-fun e!3404215 () Bool)

(assert (=> b!5503671 (= e!3404215 e!3404211)))

(declare-fun b!5503672 () Bool)

(declare-fun e!3404214 () Bool)

(assert (=> b!5503672 (= e!3404214 call!406509)))

(declare-fun b!5503673 () Bool)

(assert (=> b!5503673 (= e!3404213 e!3404212)))

(declare-fun res!2345707 () Bool)

(assert (=> b!5503673 (= res!2345707 (matchRSpec!2584 (regOne!31475 (regTwo!31475 r!7292)) s!2326))))

(assert (=> b!5503673 (=> res!2345707 e!3404212)))

(declare-fun b!5503674 () Bool)

(declare-fun e!3404216 () Bool)

(assert (=> b!5503674 (= e!3404213 e!3404216)))

(assert (=> b!5503674 (= c!961485 ((_ is Star!15481) (regTwo!31475 r!7292)))))

(assert (=> b!5503675 (= e!3404216 call!406510)))

(declare-fun b!5503670 () Bool)

(assert (=> b!5503670 (= e!3404214 e!3404215)))

(declare-fun res!2345709 () Bool)

(assert (=> b!5503670 (= res!2345709 (not ((_ is EmptyLang!15481) (regTwo!31475 r!7292))))))

(assert (=> b!5503670 (=> (not res!2345709) (not e!3404215))))

(declare-fun d!1744436 () Bool)

(declare-fun c!961484 () Bool)

(assert (=> d!1744436 (= c!961484 ((_ is EmptyExpr!15481) (regTwo!31475 r!7292)))))

(assert (=> d!1744436 (= (matchRSpec!2584 (regTwo!31475 r!7292) s!2326) e!3404214)))

(declare-fun b!5503676 () Bool)

(assert (=> b!5503676 (= e!3404211 (= s!2326 (Cons!62620 (c!961331 (regTwo!31475 r!7292)) Nil!62620)))))

(declare-fun b!5503677 () Bool)

(declare-fun res!2345708 () Bool)

(assert (=> b!5503677 (=> res!2345708 e!3404210)))

(assert (=> b!5503677 (= res!2345708 call!406509)))

(assert (=> b!5503677 (= e!3404216 e!3404210)))

(assert (= (and d!1744436 c!961484) b!5503672))

(assert (= (and d!1744436 (not c!961484)) b!5503670))

(assert (= (and b!5503670 res!2345709) b!5503671))

(assert (= (and b!5503671 c!961487) b!5503676))

(assert (= (and b!5503671 (not c!961487)) b!5503669))

(assert (= (and b!5503669 c!961486) b!5503673))

(assert (= (and b!5503669 (not c!961486)) b!5503674))

(assert (= (and b!5503673 (not res!2345707)) b!5503668))

(assert (= (and b!5503674 c!961485) b!5503677))

(assert (= (and b!5503674 (not c!961485)) b!5503675))

(assert (= (and b!5503677 (not res!2345708)) b!5503667))

(assert (= (or b!5503667 b!5503675) bm!406504))

(assert (= (or b!5503672 b!5503677) bm!406505))

(declare-fun m!6511102 () Bool)

(assert (=> bm!406504 m!6511102))

(declare-fun m!6511104 () Bool)

(assert (=> b!5503668 m!6511104))

(assert (=> bm!406505 m!6511048))

(declare-fun m!6511106 () Bool)

(assert (=> b!5503673 m!6511106))

(assert (=> b!5503125 d!1744436))

(declare-fun d!1744438 () Bool)

(assert (=> d!1744438 (= (matchR!7666 (regOne!31475 r!7292) s!2326) (matchRSpec!2584 (regOne!31475 r!7292) s!2326))))

(declare-fun lt!2243970 () Unit!155422)

(assert (=> d!1744438 (= lt!2243970 (choose!41817 (regOne!31475 r!7292) s!2326))))

(assert (=> d!1744438 (validRegex!7217 (regOne!31475 r!7292))))

(assert (=> d!1744438 (= (mainMatchTheorem!2584 (regOne!31475 r!7292) s!2326) lt!2243970)))

(declare-fun bs!1269316 () Bool)

(assert (= bs!1269316 d!1744438))

(assert (=> bs!1269316 m!6510744))

(assert (=> bs!1269316 m!6510740))

(declare-fun m!6511108 () Bool)

(assert (=> bs!1269316 m!6511108))

(declare-fun m!6511110 () Bool)

(assert (=> bs!1269316 m!6511110))

(assert (=> b!5503125 d!1744438))

(declare-fun b!5503678 () Bool)

(declare-fun e!3404220 () Bool)

(declare-fun e!3404222 () Bool)

(assert (=> b!5503678 (= e!3404220 e!3404222)))

(declare-fun c!961489 () Bool)

(assert (=> b!5503678 (= c!961489 ((_ is EmptyLang!15481) (regTwo!31475 r!7292)))))

(declare-fun b!5503679 () Bool)

(declare-fun res!2345717 () Bool)

(declare-fun e!3404221 () Bool)

(assert (=> b!5503679 (=> res!2345717 e!3404221)))

(declare-fun e!3404219 () Bool)

(assert (=> b!5503679 (= res!2345717 e!3404219)))

(declare-fun res!2345714 () Bool)

(assert (=> b!5503679 (=> (not res!2345714) (not e!3404219))))

(declare-fun lt!2243971 () Bool)

(assert (=> b!5503679 (= res!2345714 lt!2243971)))

(declare-fun b!5503680 () Bool)

(declare-fun e!3404217 () Bool)

(assert (=> b!5503680 (= e!3404221 e!3404217)))

(declare-fun res!2345715 () Bool)

(assert (=> b!5503680 (=> (not res!2345715) (not e!3404217))))

(assert (=> b!5503680 (= res!2345715 (not lt!2243971))))

(declare-fun b!5503681 () Bool)

(assert (=> b!5503681 (= e!3404222 (not lt!2243971))))

(declare-fun b!5503682 () Bool)

(assert (=> b!5503682 (= e!3404219 (= (head!11787 s!2326) (c!961331 (regTwo!31475 r!7292))))))

(declare-fun bm!406506 () Bool)

(declare-fun call!406511 () Bool)

(assert (=> bm!406506 (= call!406511 (isEmpty!34404 s!2326))))

(declare-fun b!5503683 () Bool)

(declare-fun res!2345710 () Bool)

(declare-fun e!3404218 () Bool)

(assert (=> b!5503683 (=> res!2345710 e!3404218)))

(assert (=> b!5503683 (= res!2345710 (not (isEmpty!34404 (tail!10882 s!2326))))))

(declare-fun d!1744440 () Bool)

(assert (=> d!1744440 e!3404220))

(declare-fun c!961490 () Bool)

(assert (=> d!1744440 (= c!961490 ((_ is EmptyExpr!15481) (regTwo!31475 r!7292)))))

(declare-fun e!3404223 () Bool)

(assert (=> d!1744440 (= lt!2243971 e!3404223)))

(declare-fun c!961488 () Bool)

(assert (=> d!1744440 (= c!961488 (isEmpty!34404 s!2326))))

(assert (=> d!1744440 (validRegex!7217 (regTwo!31475 r!7292))))

(assert (=> d!1744440 (= (matchR!7666 (regTwo!31475 r!7292) s!2326) lt!2243971)))

(declare-fun b!5503684 () Bool)

(assert (=> b!5503684 (= e!3404217 e!3404218)))

(declare-fun res!2345713 () Bool)

(assert (=> b!5503684 (=> res!2345713 e!3404218)))

(assert (=> b!5503684 (= res!2345713 call!406511)))

(declare-fun b!5503685 () Bool)

(assert (=> b!5503685 (= e!3404223 (matchR!7666 (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326)) (tail!10882 s!2326)))))

(declare-fun b!5503686 () Bool)

(assert (=> b!5503686 (= e!3404218 (not (= (head!11787 s!2326) (c!961331 (regTwo!31475 r!7292)))))))

(declare-fun b!5503687 () Bool)

(assert (=> b!5503687 (= e!3404223 (nullable!5518 (regTwo!31475 r!7292)))))

(declare-fun b!5503688 () Bool)

(assert (=> b!5503688 (= e!3404220 (= lt!2243971 call!406511))))

(declare-fun b!5503689 () Bool)

(declare-fun res!2345712 () Bool)

(assert (=> b!5503689 (=> (not res!2345712) (not e!3404219))))

(assert (=> b!5503689 (= res!2345712 (not call!406511))))

(declare-fun b!5503690 () Bool)

(declare-fun res!2345716 () Bool)

(assert (=> b!5503690 (=> (not res!2345716) (not e!3404219))))

(assert (=> b!5503690 (= res!2345716 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun b!5503691 () Bool)

(declare-fun res!2345711 () Bool)

(assert (=> b!5503691 (=> res!2345711 e!3404221)))

(assert (=> b!5503691 (= res!2345711 (not ((_ is ElementMatch!15481) (regTwo!31475 r!7292))))))

(assert (=> b!5503691 (= e!3404222 e!3404221)))

(assert (= (and d!1744440 c!961488) b!5503687))

(assert (= (and d!1744440 (not c!961488)) b!5503685))

(assert (= (and d!1744440 c!961490) b!5503688))

(assert (= (and d!1744440 (not c!961490)) b!5503678))

(assert (= (and b!5503678 c!961489) b!5503681))

(assert (= (and b!5503678 (not c!961489)) b!5503691))

(assert (= (and b!5503691 (not res!2345711)) b!5503679))

(assert (= (and b!5503679 res!2345714) b!5503689))

(assert (= (and b!5503689 res!2345712) b!5503690))

(assert (= (and b!5503690 res!2345716) b!5503682))

(assert (= (and b!5503679 (not res!2345717)) b!5503680))

(assert (= (and b!5503680 res!2345715) b!5503684))

(assert (= (and b!5503684 (not res!2345713)) b!5503683))

(assert (= (and b!5503683 (not res!2345710)) b!5503686))

(assert (= (or b!5503688 b!5503684 b!5503689) bm!406506))

(declare-fun m!6511112 () Bool)

(assert (=> b!5503687 m!6511112))

(assert (=> b!5503682 m!6511052))

(assert (=> b!5503685 m!6511052))

(assert (=> b!5503685 m!6511052))

(declare-fun m!6511114 () Bool)

(assert (=> b!5503685 m!6511114))

(assert (=> b!5503685 m!6511056))

(assert (=> b!5503685 m!6511114))

(assert (=> b!5503685 m!6511056))

(declare-fun m!6511116 () Bool)

(assert (=> b!5503685 m!6511116))

(assert (=> b!5503683 m!6511056))

(assert (=> b!5503683 m!6511056))

(assert (=> b!5503683 m!6511060))

(assert (=> bm!406506 m!6511048))

(assert (=> b!5503690 m!6511056))

(assert (=> b!5503690 m!6511056))

(assert (=> b!5503690 m!6511060))

(assert (=> b!5503686 m!6511052))

(assert (=> d!1744440 m!6511048))

(declare-fun m!6511118 () Bool)

(assert (=> d!1744440 m!6511118))

(assert (=> b!5503125 d!1744440))

(declare-fun d!1744442 () Bool)

(assert (=> d!1744442 (= (matchR!7666 (regTwo!31475 r!7292) s!2326) (matchRSpec!2584 (regTwo!31475 r!7292) s!2326))))

(declare-fun lt!2243972 () Unit!155422)

(assert (=> d!1744442 (= lt!2243972 (choose!41817 (regTwo!31475 r!7292) s!2326))))

(assert (=> d!1744442 (validRegex!7217 (regTwo!31475 r!7292))))

(assert (=> d!1744442 (= (mainMatchTheorem!2584 (regTwo!31475 r!7292) s!2326) lt!2243972)))

(declare-fun bs!1269317 () Bool)

(assert (= bs!1269317 d!1744442))

(assert (=> bs!1269317 m!6510738))

(assert (=> bs!1269317 m!6510734))

(declare-fun m!6511120 () Bool)

(assert (=> bs!1269317 m!6511120))

(assert (=> bs!1269317 m!6511118))

(assert (=> b!5503125 d!1744442))

(declare-fun bs!1269318 () Bool)

(declare-fun b!5503692 () Bool)

(assert (= bs!1269318 (and b!5503692 b!5503572)))

(declare-fun lambda!294669 () Int)

(assert (=> bs!1269318 (= (and (= (reg!15810 (regOne!31475 r!7292)) (reg!15810 r!7292)) (= (regOne!31475 r!7292) r!7292)) (= lambda!294669 lambda!294662))))

(declare-fun bs!1269319 () Bool)

(assert (= bs!1269319 (and b!5503692 b!5503580)))

(assert (=> bs!1269319 (not (= lambda!294669 lambda!294663))))

(declare-fun bs!1269320 () Bool)

(assert (= bs!1269320 (and b!5503692 b!5503667)))

(assert (=> bs!1269320 (= (and (= (reg!15810 (regOne!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292))) (= (regOne!31475 r!7292) (regTwo!31475 r!7292))) (= lambda!294669 lambda!294667))))

(declare-fun bs!1269321 () Bool)

(assert (= bs!1269321 (and b!5503692 b!5503675)))

(assert (=> bs!1269321 (not (= lambda!294669 lambda!294668))))

(assert (=> b!5503692 true))

(assert (=> b!5503692 true))

(declare-fun bs!1269322 () Bool)

(declare-fun b!5503700 () Bool)

(assert (= bs!1269322 (and b!5503700 b!5503675)))

(declare-fun lambda!294670 () Int)

(assert (=> bs!1269322 (= (and (= (regOne!31474 (regOne!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))) (= (regTwo!31474 (regOne!31475 r!7292)) (regTwo!31474 (regTwo!31475 r!7292)))) (= lambda!294670 lambda!294668))))

(declare-fun bs!1269323 () Bool)

(assert (= bs!1269323 (and b!5503700 b!5503580)))

(assert (=> bs!1269323 (= (and (= (regOne!31474 (regOne!31475 r!7292)) (regOne!31474 r!7292)) (= (regTwo!31474 (regOne!31475 r!7292)) (regTwo!31474 r!7292))) (= lambda!294670 lambda!294663))))

(declare-fun bs!1269324 () Bool)

(assert (= bs!1269324 (and b!5503700 b!5503692)))

(assert (=> bs!1269324 (not (= lambda!294670 lambda!294669))))

(declare-fun bs!1269325 () Bool)

(assert (= bs!1269325 (and b!5503700 b!5503572)))

(assert (=> bs!1269325 (not (= lambda!294670 lambda!294662))))

(declare-fun bs!1269326 () Bool)

(assert (= bs!1269326 (and b!5503700 b!5503667)))

(assert (=> bs!1269326 (not (= lambda!294670 lambda!294667))))

(assert (=> b!5503700 true))

(assert (=> b!5503700 true))

(declare-fun bm!406507 () Bool)

(declare-fun c!961492 () Bool)

(declare-fun call!406513 () Bool)

(assert (=> bm!406507 (= call!406513 (Exists!2583 (ite c!961492 lambda!294669 lambda!294670)))))

(declare-fun e!3404224 () Bool)

(assert (=> b!5503692 (= e!3404224 call!406513)))

(declare-fun b!5503693 () Bool)

(declare-fun e!3404226 () Bool)

(assert (=> b!5503693 (= e!3404226 (matchRSpec!2584 (regTwo!31475 (regOne!31475 r!7292)) s!2326))))

(declare-fun bm!406508 () Bool)

(declare-fun call!406512 () Bool)

(assert (=> bm!406508 (= call!406512 (isEmpty!34404 s!2326))))

(declare-fun b!5503694 () Bool)

(declare-fun c!961493 () Bool)

(assert (=> b!5503694 (= c!961493 ((_ is Union!15481) (regOne!31475 r!7292)))))

(declare-fun e!3404225 () Bool)

(declare-fun e!3404227 () Bool)

(assert (=> b!5503694 (= e!3404225 e!3404227)))

(declare-fun b!5503696 () Bool)

(declare-fun c!961494 () Bool)

(assert (=> b!5503696 (= c!961494 ((_ is ElementMatch!15481) (regOne!31475 r!7292)))))

(declare-fun e!3404229 () Bool)

(assert (=> b!5503696 (= e!3404229 e!3404225)))

(declare-fun b!5503697 () Bool)

(declare-fun e!3404228 () Bool)

(assert (=> b!5503697 (= e!3404228 call!406512)))

(declare-fun b!5503698 () Bool)

(assert (=> b!5503698 (= e!3404227 e!3404226)))

(declare-fun res!2345718 () Bool)

(assert (=> b!5503698 (= res!2345718 (matchRSpec!2584 (regOne!31475 (regOne!31475 r!7292)) s!2326))))

(assert (=> b!5503698 (=> res!2345718 e!3404226)))

(declare-fun b!5503699 () Bool)

(declare-fun e!3404230 () Bool)

(assert (=> b!5503699 (= e!3404227 e!3404230)))

(assert (=> b!5503699 (= c!961492 ((_ is Star!15481) (regOne!31475 r!7292)))))

(assert (=> b!5503700 (= e!3404230 call!406513)))

(declare-fun b!5503695 () Bool)

(assert (=> b!5503695 (= e!3404228 e!3404229)))

(declare-fun res!2345720 () Bool)

(assert (=> b!5503695 (= res!2345720 (not ((_ is EmptyLang!15481) (regOne!31475 r!7292))))))

(assert (=> b!5503695 (=> (not res!2345720) (not e!3404229))))

(declare-fun d!1744444 () Bool)

(declare-fun c!961491 () Bool)

(assert (=> d!1744444 (= c!961491 ((_ is EmptyExpr!15481) (regOne!31475 r!7292)))))

(assert (=> d!1744444 (= (matchRSpec!2584 (regOne!31475 r!7292) s!2326) e!3404228)))

(declare-fun b!5503701 () Bool)

(assert (=> b!5503701 (= e!3404225 (= s!2326 (Cons!62620 (c!961331 (regOne!31475 r!7292)) Nil!62620)))))

(declare-fun b!5503702 () Bool)

(declare-fun res!2345719 () Bool)

(assert (=> b!5503702 (=> res!2345719 e!3404224)))

(assert (=> b!5503702 (= res!2345719 call!406512)))

(assert (=> b!5503702 (= e!3404230 e!3404224)))

(assert (= (and d!1744444 c!961491) b!5503697))

(assert (= (and d!1744444 (not c!961491)) b!5503695))

(assert (= (and b!5503695 res!2345720) b!5503696))

(assert (= (and b!5503696 c!961494) b!5503701))

(assert (= (and b!5503696 (not c!961494)) b!5503694))

(assert (= (and b!5503694 c!961493) b!5503698))

(assert (= (and b!5503694 (not c!961493)) b!5503699))

(assert (= (and b!5503698 (not res!2345718)) b!5503693))

(assert (= (and b!5503699 c!961492) b!5503702))

(assert (= (and b!5503699 (not c!961492)) b!5503700))

(assert (= (and b!5503702 (not res!2345719)) b!5503692))

(assert (= (or b!5503692 b!5503700) bm!406507))

(assert (= (or b!5503697 b!5503702) bm!406508))

(declare-fun m!6511122 () Bool)

(assert (=> bm!406507 m!6511122))

(declare-fun m!6511124 () Bool)

(assert (=> b!5503693 m!6511124))

(assert (=> bm!406508 m!6511048))

(declare-fun m!6511126 () Bool)

(assert (=> b!5503698 m!6511126))

(assert (=> b!5503125 d!1744444))

(declare-fun b!5503703 () Bool)

(declare-fun e!3404234 () Bool)

(declare-fun e!3404236 () Bool)

(assert (=> b!5503703 (= e!3404234 e!3404236)))

(declare-fun c!961496 () Bool)

(assert (=> b!5503703 (= c!961496 ((_ is EmptyLang!15481) (regOne!31475 r!7292)))))

(declare-fun b!5503704 () Bool)

(declare-fun res!2345728 () Bool)

(declare-fun e!3404235 () Bool)

(assert (=> b!5503704 (=> res!2345728 e!3404235)))

(declare-fun e!3404233 () Bool)

(assert (=> b!5503704 (= res!2345728 e!3404233)))

(declare-fun res!2345725 () Bool)

(assert (=> b!5503704 (=> (not res!2345725) (not e!3404233))))

(declare-fun lt!2243973 () Bool)

(assert (=> b!5503704 (= res!2345725 lt!2243973)))

(declare-fun b!5503705 () Bool)

(declare-fun e!3404231 () Bool)

(assert (=> b!5503705 (= e!3404235 e!3404231)))

(declare-fun res!2345726 () Bool)

(assert (=> b!5503705 (=> (not res!2345726) (not e!3404231))))

(assert (=> b!5503705 (= res!2345726 (not lt!2243973))))

(declare-fun b!5503706 () Bool)

(assert (=> b!5503706 (= e!3404236 (not lt!2243973))))

(declare-fun b!5503707 () Bool)

(assert (=> b!5503707 (= e!3404233 (= (head!11787 s!2326) (c!961331 (regOne!31475 r!7292))))))

(declare-fun bm!406509 () Bool)

(declare-fun call!406514 () Bool)

(assert (=> bm!406509 (= call!406514 (isEmpty!34404 s!2326))))

(declare-fun b!5503708 () Bool)

(declare-fun res!2345721 () Bool)

(declare-fun e!3404232 () Bool)

(assert (=> b!5503708 (=> res!2345721 e!3404232)))

(assert (=> b!5503708 (= res!2345721 (not (isEmpty!34404 (tail!10882 s!2326))))))

(declare-fun d!1744446 () Bool)

(assert (=> d!1744446 e!3404234))

(declare-fun c!961497 () Bool)

(assert (=> d!1744446 (= c!961497 ((_ is EmptyExpr!15481) (regOne!31475 r!7292)))))

(declare-fun e!3404237 () Bool)

(assert (=> d!1744446 (= lt!2243973 e!3404237)))

(declare-fun c!961495 () Bool)

(assert (=> d!1744446 (= c!961495 (isEmpty!34404 s!2326))))

(assert (=> d!1744446 (validRegex!7217 (regOne!31475 r!7292))))

(assert (=> d!1744446 (= (matchR!7666 (regOne!31475 r!7292) s!2326) lt!2243973)))

(declare-fun b!5503709 () Bool)

(assert (=> b!5503709 (= e!3404231 e!3404232)))

(declare-fun res!2345724 () Bool)

(assert (=> b!5503709 (=> res!2345724 e!3404232)))

(assert (=> b!5503709 (= res!2345724 call!406514)))

(declare-fun b!5503710 () Bool)

(assert (=> b!5503710 (= e!3404237 (matchR!7666 (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326)) (tail!10882 s!2326)))))

(declare-fun b!5503711 () Bool)

(assert (=> b!5503711 (= e!3404232 (not (= (head!11787 s!2326) (c!961331 (regOne!31475 r!7292)))))))

(declare-fun b!5503712 () Bool)

(assert (=> b!5503712 (= e!3404237 (nullable!5518 (regOne!31475 r!7292)))))

(declare-fun b!5503713 () Bool)

(assert (=> b!5503713 (= e!3404234 (= lt!2243973 call!406514))))

(declare-fun b!5503714 () Bool)

(declare-fun res!2345723 () Bool)

(assert (=> b!5503714 (=> (not res!2345723) (not e!3404233))))

(assert (=> b!5503714 (= res!2345723 (not call!406514))))

(declare-fun b!5503715 () Bool)

(declare-fun res!2345727 () Bool)

(assert (=> b!5503715 (=> (not res!2345727) (not e!3404233))))

(assert (=> b!5503715 (= res!2345727 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun b!5503716 () Bool)

(declare-fun res!2345722 () Bool)

(assert (=> b!5503716 (=> res!2345722 e!3404235)))

(assert (=> b!5503716 (= res!2345722 (not ((_ is ElementMatch!15481) (regOne!31475 r!7292))))))

(assert (=> b!5503716 (= e!3404236 e!3404235)))

(assert (= (and d!1744446 c!961495) b!5503712))

(assert (= (and d!1744446 (not c!961495)) b!5503710))

(assert (= (and d!1744446 c!961497) b!5503713))

(assert (= (and d!1744446 (not c!961497)) b!5503703))

(assert (= (and b!5503703 c!961496) b!5503706))

(assert (= (and b!5503703 (not c!961496)) b!5503716))

(assert (= (and b!5503716 (not res!2345722)) b!5503704))

(assert (= (and b!5503704 res!2345725) b!5503714))

(assert (= (and b!5503714 res!2345723) b!5503715))

(assert (= (and b!5503715 res!2345727) b!5503707))

(assert (= (and b!5503704 (not res!2345728)) b!5503705))

(assert (= (and b!5503705 res!2345726) b!5503709))

(assert (= (and b!5503709 (not res!2345724)) b!5503708))

(assert (= (and b!5503708 (not res!2345721)) b!5503711))

(assert (= (or b!5503713 b!5503709 b!5503714) bm!406509))

(declare-fun m!6511128 () Bool)

(assert (=> b!5503712 m!6511128))

(assert (=> b!5503707 m!6511052))

(assert (=> b!5503710 m!6511052))

(assert (=> b!5503710 m!6511052))

(declare-fun m!6511130 () Bool)

(assert (=> b!5503710 m!6511130))

(assert (=> b!5503710 m!6511056))

(assert (=> b!5503710 m!6511130))

(assert (=> b!5503710 m!6511056))

(declare-fun m!6511132 () Bool)

(assert (=> b!5503710 m!6511132))

(assert (=> b!5503708 m!6511056))

(assert (=> b!5503708 m!6511056))

(assert (=> b!5503708 m!6511060))

(assert (=> bm!406509 m!6511048))

(assert (=> b!5503715 m!6511056))

(assert (=> b!5503715 m!6511056))

(assert (=> b!5503715 m!6511060))

(assert (=> b!5503711 m!6511052))

(assert (=> d!1744446 m!6511048))

(assert (=> d!1744446 m!6511110))

(assert (=> b!5503125 d!1744446))

(declare-fun bs!1269327 () Bool)

(declare-fun d!1744448 () Bool)

(assert (= bs!1269327 (and d!1744448 b!5503119)))

(declare-fun lambda!294673 () Int)

(assert (=> bs!1269327 (= lambda!294673 lambda!294631)))

(assert (=> d!1744448 true))

(assert (=> d!1744448 (= (derivationStepZipper!1592 z!1189 (h!69068 s!2326)) (flatMap!1100 z!1189 lambda!294673))))

(declare-fun bs!1269328 () Bool)

(assert (= bs!1269328 d!1744448))

(declare-fun m!6511134 () Bool)

(assert (=> bs!1269328 m!6511134))

(assert (=> b!5503119 d!1744448))

(declare-fun d!1744450 () Bool)

(declare-fun choose!41818 ((InoxSet Context!9730) Int) (InoxSet Context!9730))

(assert (=> d!1744450 (= (flatMap!1100 z!1189 lambda!294631) (choose!41818 z!1189 lambda!294631))))

(declare-fun bs!1269329 () Bool)

(assert (= bs!1269329 d!1744450))

(declare-fun m!6511136 () Bool)

(assert (=> bs!1269329 m!6511136))

(assert (=> b!5503119 d!1744450))

(declare-fun b!5503730 () Bool)

(declare-fun e!3404245 () Bool)

(assert (=> b!5503730 (= e!3404245 (nullable!5518 (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun bm!406512 () Bool)

(declare-fun call!406517 () (InoxSet Context!9730))

(assert (=> bm!406512 (= call!406517 (derivationStepZipperDown!827 (h!69066 (exprs!5365 (h!69067 zl!343))) (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))) (h!69068 s!2326)))))

(declare-fun b!5503731 () Bool)

(declare-fun e!3404246 () (InoxSet Context!9730))

(assert (=> b!5503731 (= e!3404246 ((_ map or) call!406517 (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))) (h!69068 s!2326))))))

(declare-fun b!5503732 () Bool)

(declare-fun e!3404244 () (InoxSet Context!9730))

(assert (=> b!5503732 (= e!3404244 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5503733 () Bool)

(assert (=> b!5503733 (= e!3404246 e!3404244)))

(declare-fun c!961504 () Bool)

(assert (=> b!5503733 (= c!961504 ((_ is Cons!62618) (exprs!5365 (h!69067 zl!343))))))

(declare-fun d!1744452 () Bool)

(declare-fun c!961505 () Bool)

(assert (=> d!1744452 (= c!961505 e!3404245)))

(declare-fun res!2345731 () Bool)

(assert (=> d!1744452 (=> (not res!2345731) (not e!3404245))))

(assert (=> d!1744452 (= res!2345731 ((_ is Cons!62618) (exprs!5365 (h!69067 zl!343))))))

(assert (=> d!1744452 (= (derivationStepZipperUp!753 (h!69067 zl!343) (h!69068 s!2326)) e!3404246)))

(declare-fun b!5503729 () Bool)

(assert (=> b!5503729 (= e!3404244 call!406517)))

(assert (= (and d!1744452 res!2345731) b!5503730))

(assert (= (and d!1744452 c!961505) b!5503731))

(assert (= (and d!1744452 (not c!961505)) b!5503733))

(assert (= (and b!5503733 c!961504) b!5503729))

(assert (= (and b!5503733 (not c!961504)) b!5503732))

(assert (= (or b!5503731 b!5503729) bm!406512))

(declare-fun m!6511138 () Bool)

(assert (=> b!5503730 m!6511138))

(declare-fun m!6511140 () Bool)

(assert (=> bm!406512 m!6511140))

(declare-fun m!6511142 () Bool)

(assert (=> b!5503731 m!6511142))

(assert (=> b!5503119 d!1744452))

(declare-fun d!1744454 () Bool)

(declare-fun dynLambda!24472 (Int Context!9730) (InoxSet Context!9730))

(assert (=> d!1744454 (= (flatMap!1100 z!1189 lambda!294631) (dynLambda!24472 lambda!294631 (h!69067 zl!343)))))

(declare-fun lt!2243976 () Unit!155422)

(declare-fun choose!41819 ((InoxSet Context!9730) Context!9730 Int) Unit!155422)

(assert (=> d!1744454 (= lt!2243976 (choose!41819 z!1189 (h!69067 zl!343) lambda!294631))))

(assert (=> d!1744454 (= z!1189 (store ((as const (Array Context!9730 Bool)) false) (h!69067 zl!343) true))))

(assert (=> d!1744454 (= (lemmaFlatMapOnSingletonSet!632 z!1189 (h!69067 zl!343) lambda!294631) lt!2243976)))

(declare-fun b_lambda!208727 () Bool)

(assert (=> (not b_lambda!208727) (not d!1744454)))

(declare-fun bs!1269330 () Bool)

(assert (= bs!1269330 d!1744454))

(assert (=> bs!1269330 m!6510788))

(declare-fun m!6511144 () Bool)

(assert (=> bs!1269330 m!6511144))

(declare-fun m!6511146 () Bool)

(assert (=> bs!1269330 m!6511146))

(declare-fun m!6511148 () Bool)

(assert (=> bs!1269330 m!6511148))

(assert (=> b!5503119 d!1744454))

(declare-fun d!1744456 () Bool)

(declare-fun c!961506 () Bool)

(assert (=> d!1744456 (= c!961506 (isEmpty!34404 (t!375983 s!2326)))))

(declare-fun e!3404247 () Bool)

(assert (=> d!1744456 (= (matchZipper!1649 lt!2243912 (t!375983 s!2326)) e!3404247)))

(declare-fun b!5503734 () Bool)

(assert (=> b!5503734 (= e!3404247 (nullableZipper!1523 lt!2243912))))

(declare-fun b!5503735 () Bool)

(assert (=> b!5503735 (= e!3404247 (matchZipper!1649 (derivationStepZipper!1592 lt!2243912 (head!11787 (t!375983 s!2326))) (tail!10882 (t!375983 s!2326))))))

(assert (= (and d!1744456 c!961506) b!5503734))

(assert (= (and d!1744456 (not c!961506)) b!5503735))

(assert (=> d!1744456 m!6511090))

(declare-fun m!6511150 () Bool)

(assert (=> b!5503734 m!6511150))

(assert (=> b!5503735 m!6511094))

(assert (=> b!5503735 m!6511094))

(declare-fun m!6511152 () Bool)

(assert (=> b!5503735 m!6511152))

(assert (=> b!5503735 m!6511098))

(assert (=> b!5503735 m!6511152))

(assert (=> b!5503735 m!6511098))

(declare-fun m!6511154 () Bool)

(assert (=> b!5503735 m!6511154))

(assert (=> b!5503139 d!1744456))

(declare-fun b!5503758 () Bool)

(declare-fun e!3404261 () (InoxSet Context!9730))

(declare-fun call!406534 () (InoxSet Context!9730))

(assert (=> b!5503758 (= e!3404261 call!406534)))

(declare-fun b!5503759 () Bool)

(declare-fun c!961519 () Bool)

(assert (=> b!5503759 (= c!961519 ((_ is Star!15481) r!7292))))

(declare-fun e!3404262 () (InoxSet Context!9730))

(assert (=> b!5503759 (= e!3404261 e!3404262)))

(declare-fun bm!406525 () Bool)

(declare-fun call!406531 () (InoxSet Context!9730))

(assert (=> bm!406525 (= call!406534 call!406531)))

(declare-fun bm!406526 () Bool)

(declare-fun call!406530 () List!62742)

(declare-fun call!406535 () List!62742)

(assert (=> bm!406526 (= call!406530 call!406535)))

(declare-fun b!5503761 () Bool)

(assert (=> b!5503761 (= e!3404262 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5503762 () Bool)

(declare-fun e!3404260 () Bool)

(assert (=> b!5503762 (= e!3404260 (nullable!5518 (regOne!31474 r!7292)))))

(declare-fun bm!406527 () Bool)

(declare-fun call!406532 () (InoxSet Context!9730))

(declare-fun c!961517 () Bool)

(assert (=> bm!406527 (= call!406532 (derivationStepZipperDown!827 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292)) (ite c!961517 lt!2243915 (Context!9731 call!406535)) (h!69068 s!2326)))))

(declare-fun b!5503763 () Bool)

(assert (=> b!5503763 (= e!3404262 call!406534)))

(declare-fun b!5503764 () Bool)

(declare-fun e!3404264 () (InoxSet Context!9730))

(assert (=> b!5503764 (= e!3404264 e!3404261)))

(declare-fun c!961520 () Bool)

(assert (=> b!5503764 (= c!961520 ((_ is Concat!24326) r!7292))))

(declare-fun call!406533 () (InoxSet Context!9730))

(declare-fun bm!406528 () Bool)

(declare-fun c!961521 () Bool)

(assert (=> bm!406528 (= call!406533 (derivationStepZipperDown!827 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292)))) (ite (or c!961517 c!961521) lt!2243915 (Context!9731 call!406530)) (h!69068 s!2326)))))

(declare-fun b!5503765 () Bool)

(declare-fun e!3404263 () (InoxSet Context!9730))

(declare-fun e!3404265 () (InoxSet Context!9730))

(assert (=> b!5503765 (= e!3404263 e!3404265)))

(assert (=> b!5503765 (= c!961517 ((_ is Union!15481) r!7292))))

(declare-fun b!5503766 () Bool)

(assert (=> b!5503766 (= e!3404265 ((_ map or) call!406532 call!406533))))

(declare-fun b!5503767 () Bool)

(assert (=> b!5503767 (= e!3404264 ((_ map or) call!406532 call!406531))))

(declare-fun bm!406529 () Bool)

(declare-fun $colon$colon!1572 (List!62742 Regex!15481) List!62742)

(assert (=> bm!406529 (= call!406535 ($colon$colon!1572 (exprs!5365 lt!2243915) (ite (or c!961521 c!961520) (regTwo!31474 r!7292) r!7292)))))

(declare-fun d!1744458 () Bool)

(declare-fun c!961518 () Bool)

(assert (=> d!1744458 (= c!961518 (and ((_ is ElementMatch!15481) r!7292) (= (c!961331 r!7292) (h!69068 s!2326))))))

(assert (=> d!1744458 (= (derivationStepZipperDown!827 r!7292 lt!2243915 (h!69068 s!2326)) e!3404263)))

(declare-fun b!5503760 () Bool)

(assert (=> b!5503760 (= e!3404263 (store ((as const (Array Context!9730 Bool)) false) lt!2243915 true))))

(declare-fun b!5503768 () Bool)

(assert (=> b!5503768 (= c!961521 e!3404260)))

(declare-fun res!2345734 () Bool)

(assert (=> b!5503768 (=> (not res!2345734) (not e!3404260))))

(assert (=> b!5503768 (= res!2345734 ((_ is Concat!24326) r!7292))))

(assert (=> b!5503768 (= e!3404265 e!3404264)))

(declare-fun bm!406530 () Bool)

(assert (=> bm!406530 (= call!406531 call!406533)))

(assert (= (and d!1744458 c!961518) b!5503760))

(assert (= (and d!1744458 (not c!961518)) b!5503765))

(assert (= (and b!5503765 c!961517) b!5503766))

(assert (= (and b!5503765 (not c!961517)) b!5503768))

(assert (= (and b!5503768 res!2345734) b!5503762))

(assert (= (and b!5503768 c!961521) b!5503767))

(assert (= (and b!5503768 (not c!961521)) b!5503764))

(assert (= (and b!5503764 c!961520) b!5503758))

(assert (= (and b!5503764 (not c!961520)) b!5503759))

(assert (= (and b!5503759 c!961519) b!5503763))

(assert (= (and b!5503759 (not c!961519)) b!5503761))

(assert (= (or b!5503758 b!5503763) bm!406526))

(assert (= (or b!5503758 b!5503763) bm!406525))

(assert (= (or b!5503767 bm!406526) bm!406529))

(assert (= (or b!5503767 bm!406525) bm!406530))

(assert (= (or b!5503766 bm!406530) bm!406528))

(assert (= (or b!5503766 b!5503767) bm!406527))

(declare-fun m!6511156 () Bool)

(assert (=> bm!406528 m!6511156))

(declare-fun m!6511158 () Bool)

(assert (=> bm!406527 m!6511158))

(declare-fun m!6511160 () Bool)

(assert (=> b!5503760 m!6511160))

(declare-fun m!6511162 () Bool)

(assert (=> bm!406529 m!6511162))

(declare-fun m!6511164 () Bool)

(assert (=> b!5503762 m!6511164))

(assert (=> b!5503129 d!1744458))

(declare-fun b!5503770 () Bool)

(declare-fun e!3404267 () Bool)

(assert (=> b!5503770 (= e!3404267 (nullable!5518 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))))

(declare-fun bm!406531 () Bool)

(declare-fun call!406536 () (InoxSet Context!9730))

(assert (=> bm!406531 (= call!406536 (derivationStepZipperDown!827 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))) (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (h!69068 s!2326)))))

(declare-fun b!5503771 () Bool)

(declare-fun e!3404268 () (InoxSet Context!9730))

(assert (=> b!5503771 (= e!3404268 ((_ map or) call!406536 (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (h!69068 s!2326))))))

(declare-fun b!5503772 () Bool)

(declare-fun e!3404266 () (InoxSet Context!9730))

(assert (=> b!5503772 (= e!3404266 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5503773 () Bool)

(assert (=> b!5503773 (= e!3404268 e!3404266)))

(declare-fun c!961522 () Bool)

(assert (=> b!5503773 (= c!961522 ((_ is Cons!62618) (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))))

(declare-fun d!1744460 () Bool)

(declare-fun c!961523 () Bool)

(assert (=> d!1744460 (= c!961523 e!3404267)))

(declare-fun res!2345735 () Bool)

(assert (=> d!1744460 (=> (not res!2345735) (not e!3404267))))

(assert (=> d!1744460 (= res!2345735 ((_ is Cons!62618) (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))))

(assert (=> d!1744460 (= (derivationStepZipperUp!753 (Context!9731 (Cons!62618 r!7292 Nil!62618)) (h!69068 s!2326)) e!3404268)))

(declare-fun b!5503769 () Bool)

(assert (=> b!5503769 (= e!3404266 call!406536)))

(assert (= (and d!1744460 res!2345735) b!5503770))

(assert (= (and d!1744460 c!961523) b!5503771))

(assert (= (and d!1744460 (not c!961523)) b!5503773))

(assert (= (and b!5503773 c!961522) b!5503769))

(assert (= (and b!5503773 (not c!961522)) b!5503772))

(assert (= (or b!5503771 b!5503769) bm!406531))

(declare-fun m!6511166 () Bool)

(assert (=> b!5503770 m!6511166))

(declare-fun m!6511168 () Bool)

(assert (=> bm!406531 m!6511168))

(declare-fun m!6511170 () Bool)

(assert (=> b!5503771 m!6511170))

(assert (=> b!5503129 d!1744460))

(declare-fun bs!1269331 () Bool)

(declare-fun d!1744462 () Bool)

(assert (= bs!1269331 (and d!1744462 d!1744430)))

(declare-fun lambda!294676 () Int)

(assert (=> bs!1269331 (= lambda!294676 lambda!294666)))

(declare-fun e!3404282 () Bool)

(assert (=> d!1744462 e!3404282))

(declare-fun res!2345740 () Bool)

(assert (=> d!1744462 (=> (not res!2345740) (not e!3404282))))

(declare-fun lt!2243979 () Regex!15481)

(assert (=> d!1744462 (= res!2345740 (validRegex!7217 lt!2243979))))

(declare-fun e!3404286 () Regex!15481)

(assert (=> d!1744462 (= lt!2243979 e!3404286)))

(declare-fun c!961532 () Bool)

(declare-fun e!3404284 () Bool)

(assert (=> d!1744462 (= c!961532 e!3404284)))

(declare-fun res!2345741 () Bool)

(assert (=> d!1744462 (=> (not res!2345741) (not e!3404284))))

(assert (=> d!1744462 (= res!2345741 ((_ is Cons!62618) (unfocusZipperList!909 zl!343)))))

(assert (=> d!1744462 (forall!14666 (unfocusZipperList!909 zl!343) lambda!294676)))

(assert (=> d!1744462 (= (generalisedUnion!1344 (unfocusZipperList!909 zl!343)) lt!2243979)))

(declare-fun b!5503794 () Bool)

(declare-fun e!3404285 () Bool)

(assert (=> b!5503794 (= e!3404282 e!3404285)))

(declare-fun c!961533 () Bool)

(assert (=> b!5503794 (= c!961533 (isEmpty!34405 (unfocusZipperList!909 zl!343)))))

(declare-fun b!5503795 () Bool)

(declare-fun e!3404283 () Regex!15481)

(assert (=> b!5503795 (= e!3404283 (Union!15481 (h!69066 (unfocusZipperList!909 zl!343)) (generalisedUnion!1344 (t!375981 (unfocusZipperList!909 zl!343)))))))

(declare-fun b!5503796 () Bool)

(assert (=> b!5503796 (= e!3404283 EmptyLang!15481)))

(declare-fun b!5503797 () Bool)

(declare-fun isEmptyLang!1075 (Regex!15481) Bool)

(assert (=> b!5503797 (= e!3404285 (isEmptyLang!1075 lt!2243979))))

(declare-fun b!5503798 () Bool)

(assert (=> b!5503798 (= e!3404286 e!3404283)))

(declare-fun c!961535 () Bool)

(assert (=> b!5503798 (= c!961535 ((_ is Cons!62618) (unfocusZipperList!909 zl!343)))))

(declare-fun b!5503799 () Bool)

(assert (=> b!5503799 (= e!3404286 (h!69066 (unfocusZipperList!909 zl!343)))))

(declare-fun b!5503800 () Bool)

(declare-fun e!3404281 () Bool)

(assert (=> b!5503800 (= e!3404281 (= lt!2243979 (head!11788 (unfocusZipperList!909 zl!343))))))

(declare-fun b!5503801 () Bool)

(declare-fun isUnion!505 (Regex!15481) Bool)

(assert (=> b!5503801 (= e!3404281 (isUnion!505 lt!2243979))))

(declare-fun b!5503802 () Bool)

(assert (=> b!5503802 (= e!3404284 (isEmpty!34405 (t!375981 (unfocusZipperList!909 zl!343))))))

(declare-fun b!5503803 () Bool)

(assert (=> b!5503803 (= e!3404285 e!3404281)))

(declare-fun c!961534 () Bool)

(assert (=> b!5503803 (= c!961534 (isEmpty!34405 (tail!10883 (unfocusZipperList!909 zl!343))))))

(assert (= (and d!1744462 res!2345741) b!5503802))

(assert (= (and d!1744462 c!961532) b!5503799))

(assert (= (and d!1744462 (not c!961532)) b!5503798))

(assert (= (and b!5503798 c!961535) b!5503795))

(assert (= (and b!5503798 (not c!961535)) b!5503796))

(assert (= (and d!1744462 res!2345740) b!5503794))

(assert (= (and b!5503794 c!961533) b!5503797))

(assert (= (and b!5503794 (not c!961533)) b!5503803))

(assert (= (and b!5503803 c!961534) b!5503800))

(assert (= (and b!5503803 (not c!961534)) b!5503801))

(assert (=> b!5503800 m!6510782))

(declare-fun m!6511172 () Bool)

(assert (=> b!5503800 m!6511172))

(declare-fun m!6511174 () Bool)

(assert (=> b!5503802 m!6511174))

(declare-fun m!6511176 () Bool)

(assert (=> d!1744462 m!6511176))

(assert (=> d!1744462 m!6510782))

(declare-fun m!6511178 () Bool)

(assert (=> d!1744462 m!6511178))

(assert (=> b!5503803 m!6510782))

(declare-fun m!6511180 () Bool)

(assert (=> b!5503803 m!6511180))

(assert (=> b!5503803 m!6511180))

(declare-fun m!6511182 () Bool)

(assert (=> b!5503803 m!6511182))

(assert (=> b!5503794 m!6510782))

(declare-fun m!6511184 () Bool)

(assert (=> b!5503794 m!6511184))

(declare-fun m!6511186 () Bool)

(assert (=> b!5503801 m!6511186))

(declare-fun m!6511188 () Bool)

(assert (=> b!5503797 m!6511188))

(declare-fun m!6511190 () Bool)

(assert (=> b!5503795 m!6511190))

(assert (=> b!5503118 d!1744462))

(declare-fun bs!1269332 () Bool)

(declare-fun d!1744464 () Bool)

(assert (= bs!1269332 (and d!1744464 d!1744430)))

(declare-fun lambda!294679 () Int)

(assert (=> bs!1269332 (= lambda!294679 lambda!294666)))

(declare-fun bs!1269333 () Bool)

(assert (= bs!1269333 (and d!1744464 d!1744462)))

(assert (=> bs!1269333 (= lambda!294679 lambda!294676)))

(declare-fun lt!2243982 () List!62742)

(assert (=> d!1744464 (forall!14666 lt!2243982 lambda!294679)))

(declare-fun e!3404289 () List!62742)

(assert (=> d!1744464 (= lt!2243982 e!3404289)))

(declare-fun c!961538 () Bool)

(assert (=> d!1744464 (= c!961538 ((_ is Cons!62619) zl!343))))

(assert (=> d!1744464 (= (unfocusZipperList!909 zl!343) lt!2243982)))

(declare-fun b!5503808 () Bool)

(assert (=> b!5503808 (= e!3404289 (Cons!62618 (generalisedConcat!1096 (exprs!5365 (h!69067 zl!343))) (unfocusZipperList!909 (t!375982 zl!343))))))

(declare-fun b!5503809 () Bool)

(assert (=> b!5503809 (= e!3404289 Nil!62618)))

(assert (= (and d!1744464 c!961538) b!5503808))

(assert (= (and d!1744464 (not c!961538)) b!5503809))

(declare-fun m!6511192 () Bool)

(assert (=> d!1744464 m!6511192))

(assert (=> b!5503808 m!6510778))

(declare-fun m!6511194 () Bool)

(assert (=> b!5503808 m!6511194))

(assert (=> b!5503118 d!1744464))

(declare-fun d!1744466 () Bool)

(declare-fun c!961539 () Bool)

(assert (=> d!1744466 (= c!961539 (isEmpty!34404 (t!375983 s!2326)))))

(declare-fun e!3404290 () Bool)

(assert (=> d!1744466 (= (matchZipper!1649 lt!2243916 (t!375983 s!2326)) e!3404290)))

(declare-fun b!5503810 () Bool)

(assert (=> b!5503810 (= e!3404290 (nullableZipper!1523 lt!2243916))))

(declare-fun b!5503811 () Bool)

(assert (=> b!5503811 (= e!3404290 (matchZipper!1649 (derivationStepZipper!1592 lt!2243916 (head!11787 (t!375983 s!2326))) (tail!10882 (t!375983 s!2326))))))

(assert (= (and d!1744466 c!961539) b!5503810))

(assert (= (and d!1744466 (not c!961539)) b!5503811))

(assert (=> d!1744466 m!6511090))

(declare-fun m!6511196 () Bool)

(assert (=> b!5503810 m!6511196))

(assert (=> b!5503811 m!6511094))

(assert (=> b!5503811 m!6511094))

(declare-fun m!6511198 () Bool)

(assert (=> b!5503811 m!6511198))

(assert (=> b!5503811 m!6511098))

(assert (=> b!5503811 m!6511198))

(assert (=> b!5503811 m!6511098))

(declare-fun m!6511200 () Bool)

(assert (=> b!5503811 m!6511200))

(assert (=> b!5503138 d!1744466))

(declare-fun e!3404293 () Bool)

(declare-fun d!1744468 () Bool)

(assert (=> d!1744468 (= (matchZipper!1649 ((_ map or) lt!2243916 lt!2243912) (t!375983 s!2326)) e!3404293)))

(declare-fun res!2345744 () Bool)

(assert (=> d!1744468 (=> res!2345744 e!3404293)))

(assert (=> d!1744468 (= res!2345744 (matchZipper!1649 lt!2243916 (t!375983 s!2326)))))

(declare-fun lt!2243985 () Unit!155422)

(declare-fun choose!41820 ((InoxSet Context!9730) (InoxSet Context!9730) List!62744) Unit!155422)

(assert (=> d!1744468 (= lt!2243985 (choose!41820 lt!2243916 lt!2243912 (t!375983 s!2326)))))

(assert (=> d!1744468 (= (lemmaZipperConcatMatchesSameAsBothZippers!538 lt!2243916 lt!2243912 (t!375983 s!2326)) lt!2243985)))

(declare-fun b!5503814 () Bool)

(assert (=> b!5503814 (= e!3404293 (matchZipper!1649 lt!2243912 (t!375983 s!2326)))))

(assert (= (and d!1744468 (not res!2345744)) b!5503814))

(declare-fun m!6511202 () Bool)

(assert (=> d!1744468 m!6511202))

(assert (=> d!1744468 m!6510772))

(declare-fun m!6511204 () Bool)

(assert (=> d!1744468 m!6511204))

(assert (=> b!5503814 m!6510770))

(assert (=> b!5503138 d!1744468))

(declare-fun bs!1269334 () Bool)

(declare-fun d!1744470 () Bool)

(assert (= bs!1269334 (and d!1744470 d!1744430)))

(declare-fun lambda!294682 () Int)

(assert (=> bs!1269334 (= lambda!294682 lambda!294666)))

(declare-fun bs!1269335 () Bool)

(assert (= bs!1269335 (and d!1744470 d!1744462)))

(assert (=> bs!1269335 (= lambda!294682 lambda!294676)))

(declare-fun bs!1269336 () Bool)

(assert (= bs!1269336 (and d!1744470 d!1744464)))

(assert (=> bs!1269336 (= lambda!294682 lambda!294679)))

(assert (=> d!1744470 (= (inv!81949 (h!69067 zl!343)) (forall!14666 (exprs!5365 (h!69067 zl!343)) lambda!294682))))

(declare-fun bs!1269337 () Bool)

(assert (= bs!1269337 d!1744470))

(declare-fun m!6511206 () Bool)

(assert (=> bs!1269337 m!6511206))

(assert (=> b!5503141 d!1744470))

(declare-fun bm!406538 () Bool)

(declare-fun call!406545 () Bool)

(declare-fun c!961545 () Bool)

(assert (=> bm!406538 (= call!406545 (validRegex!7217 (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))))))

(declare-fun b!5503833 () Bool)

(declare-fun e!3404309 () Bool)

(declare-fun call!406543 () Bool)

(assert (=> b!5503833 (= e!3404309 call!406543)))

(declare-fun b!5503834 () Bool)

(declare-fun e!3404314 () Bool)

(declare-fun e!3404310 () Bool)

(assert (=> b!5503834 (= e!3404314 e!3404310)))

(assert (=> b!5503834 (= c!961545 ((_ is Union!15481) r!7292))))

(declare-fun b!5503835 () Bool)

(declare-fun res!2345758 () Bool)

(assert (=> b!5503835 (=> (not res!2345758) (not e!3404309))))

(assert (=> b!5503835 (= res!2345758 call!406545)))

(assert (=> b!5503835 (= e!3404310 e!3404309)))

(declare-fun b!5503836 () Bool)

(declare-fun e!3404312 () Bool)

(assert (=> b!5503836 (= e!3404312 e!3404314)))

(declare-fun c!961544 () Bool)

(assert (=> b!5503836 (= c!961544 ((_ is Star!15481) r!7292))))

(declare-fun b!5503837 () Bool)

(declare-fun e!3404311 () Bool)

(assert (=> b!5503837 (= e!3404314 e!3404311)))

(declare-fun res!2345755 () Bool)

(assert (=> b!5503837 (= res!2345755 (not (nullable!5518 (reg!15810 r!7292))))))

(assert (=> b!5503837 (=> (not res!2345755) (not e!3404311))))

(declare-fun b!5503838 () Bool)

(declare-fun res!2345759 () Bool)

(declare-fun e!3404308 () Bool)

(assert (=> b!5503838 (=> res!2345759 e!3404308)))

(assert (=> b!5503838 (= res!2345759 (not ((_ is Concat!24326) r!7292)))))

(assert (=> b!5503838 (= e!3404310 e!3404308)))

(declare-fun b!5503839 () Bool)

(declare-fun call!406544 () Bool)

(assert (=> b!5503839 (= e!3404311 call!406544)))

(declare-fun d!1744472 () Bool)

(declare-fun res!2345757 () Bool)

(assert (=> d!1744472 (=> res!2345757 e!3404312)))

(assert (=> d!1744472 (= res!2345757 ((_ is ElementMatch!15481) r!7292))))

(assert (=> d!1744472 (= (validRegex!7217 r!7292) e!3404312)))

(declare-fun bm!406539 () Bool)

(assert (=> bm!406539 (= call!406544 (validRegex!7217 (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))))))

(declare-fun bm!406540 () Bool)

(assert (=> bm!406540 (= call!406543 call!406544)))

(declare-fun b!5503840 () Bool)

(declare-fun e!3404313 () Bool)

(assert (=> b!5503840 (= e!3404308 e!3404313)))

(declare-fun res!2345756 () Bool)

(assert (=> b!5503840 (=> (not res!2345756) (not e!3404313))))

(assert (=> b!5503840 (= res!2345756 call!406545)))

(declare-fun b!5503841 () Bool)

(assert (=> b!5503841 (= e!3404313 call!406543)))

(assert (= (and d!1744472 (not res!2345757)) b!5503836))

(assert (= (and b!5503836 c!961544) b!5503837))

(assert (= (and b!5503836 (not c!961544)) b!5503834))

(assert (= (and b!5503837 res!2345755) b!5503839))

(assert (= (and b!5503834 c!961545) b!5503835))

(assert (= (and b!5503834 (not c!961545)) b!5503838))

(assert (= (and b!5503835 res!2345758) b!5503833))

(assert (= (and b!5503838 (not res!2345759)) b!5503840))

(assert (= (and b!5503840 res!2345756) b!5503841))

(assert (= (or b!5503833 b!5503841) bm!406540))

(assert (= (or b!5503835 b!5503840) bm!406538))

(assert (= (or b!5503839 bm!406540) bm!406539))

(declare-fun m!6511208 () Bool)

(assert (=> bm!406538 m!6511208))

(declare-fun m!6511210 () Bool)

(assert (=> b!5503837 m!6511210))

(declare-fun m!6511212 () Bool)

(assert (=> bm!406539 m!6511212))

(assert (=> start!574750 d!1744472))

(declare-fun d!1744474 () Bool)

(assert (=> d!1744474 (= (flatMap!1100 lt!2243911 lambda!294631) (dynLambda!24472 lambda!294631 lt!2243906))))

(declare-fun lt!2243986 () Unit!155422)

(assert (=> d!1744474 (= lt!2243986 (choose!41819 lt!2243911 lt!2243906 lambda!294631))))

(assert (=> d!1744474 (= lt!2243911 (store ((as const (Array Context!9730 Bool)) false) lt!2243906 true))))

(assert (=> d!1744474 (= (lemmaFlatMapOnSingletonSet!632 lt!2243911 lt!2243906 lambda!294631) lt!2243986)))

(declare-fun b_lambda!208729 () Bool)

(assert (=> (not b_lambda!208729) (not d!1744474)))

(declare-fun bs!1269338 () Bool)

(assert (= bs!1269338 d!1744474))

(assert (=> bs!1269338 m!6510764))

(declare-fun m!6511214 () Bool)

(assert (=> bs!1269338 m!6511214))

(declare-fun m!6511216 () Bool)

(assert (=> bs!1269338 m!6511216))

(assert (=> bs!1269338 m!6510766))

(assert (=> b!5503131 d!1744474))

(declare-fun d!1744476 () Bool)

(assert (=> d!1744476 (= (flatMap!1100 lt!2243917 lambda!294631) (dynLambda!24472 lambda!294631 lt!2243920))))

(declare-fun lt!2243987 () Unit!155422)

(assert (=> d!1744476 (= lt!2243987 (choose!41819 lt!2243917 lt!2243920 lambda!294631))))

(assert (=> d!1744476 (= lt!2243917 (store ((as const (Array Context!9730 Bool)) false) lt!2243920 true))))

(assert (=> d!1744476 (= (lemmaFlatMapOnSingletonSet!632 lt!2243917 lt!2243920 lambda!294631) lt!2243987)))

(declare-fun b_lambda!208731 () Bool)

(assert (=> (not b_lambda!208731) (not d!1744476)))

(declare-fun bs!1269339 () Bool)

(assert (= bs!1269339 d!1744476))

(assert (=> bs!1269339 m!6510758))

(declare-fun m!6511218 () Bool)

(assert (=> bs!1269339 m!6511218))

(declare-fun m!6511220 () Bool)

(assert (=> bs!1269339 m!6511220))

(assert (=> bs!1269339 m!6510750))

(assert (=> b!5503131 d!1744476))

(declare-fun b!5503843 () Bool)

(declare-fun e!3404316 () Bool)

(assert (=> b!5503843 (= e!3404316 (nullable!5518 (h!69066 (exprs!5365 lt!2243920))))))

(declare-fun bm!406541 () Bool)

(declare-fun call!406546 () (InoxSet Context!9730))

(assert (=> bm!406541 (= call!406546 (derivationStepZipperDown!827 (h!69066 (exprs!5365 lt!2243920)) (Context!9731 (t!375981 (exprs!5365 lt!2243920))) (h!69068 s!2326)))))

(declare-fun b!5503844 () Bool)

(declare-fun e!3404317 () (InoxSet Context!9730))

(assert (=> b!5503844 (= e!3404317 ((_ map or) call!406546 (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 lt!2243920))) (h!69068 s!2326))))))

(declare-fun b!5503845 () Bool)

(declare-fun e!3404315 () (InoxSet Context!9730))

(assert (=> b!5503845 (= e!3404315 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5503846 () Bool)

(assert (=> b!5503846 (= e!3404317 e!3404315)))

(declare-fun c!961546 () Bool)

(assert (=> b!5503846 (= c!961546 ((_ is Cons!62618) (exprs!5365 lt!2243920)))))

(declare-fun d!1744478 () Bool)

(declare-fun c!961547 () Bool)

(assert (=> d!1744478 (= c!961547 e!3404316)))

(declare-fun res!2345760 () Bool)

(assert (=> d!1744478 (=> (not res!2345760) (not e!3404316))))

(assert (=> d!1744478 (= res!2345760 ((_ is Cons!62618) (exprs!5365 lt!2243920)))))

(assert (=> d!1744478 (= (derivationStepZipperUp!753 lt!2243920 (h!69068 s!2326)) e!3404317)))

(declare-fun b!5503842 () Bool)

(assert (=> b!5503842 (= e!3404315 call!406546)))

(assert (= (and d!1744478 res!2345760) b!5503843))

(assert (= (and d!1744478 c!961547) b!5503844))

(assert (= (and d!1744478 (not c!961547)) b!5503846))

(assert (= (and b!5503846 c!961546) b!5503842))

(assert (= (and b!5503846 (not c!961546)) b!5503845))

(assert (= (or b!5503844 b!5503842) bm!406541))

(declare-fun m!6511222 () Bool)

(assert (=> b!5503843 m!6511222))

(declare-fun m!6511224 () Bool)

(assert (=> bm!406541 m!6511224))

(declare-fun m!6511226 () Bool)

(assert (=> b!5503844 m!6511226))

(assert (=> b!5503131 d!1744478))

(declare-fun d!1744480 () Bool)

(assert (=> d!1744480 (= (flatMap!1100 lt!2243911 lambda!294631) (choose!41818 lt!2243911 lambda!294631))))

(declare-fun bs!1269340 () Bool)

(assert (= bs!1269340 d!1744480))

(declare-fun m!6511228 () Bool)

(assert (=> bs!1269340 m!6511228))

(assert (=> b!5503131 d!1744480))

(declare-fun d!1744482 () Bool)

(assert (=> d!1744482 (= (flatMap!1100 lt!2243917 lambda!294631) (choose!41818 lt!2243917 lambda!294631))))

(declare-fun bs!1269341 () Bool)

(assert (= bs!1269341 d!1744482))

(declare-fun m!6511230 () Bool)

(assert (=> bs!1269341 m!6511230))

(assert (=> b!5503131 d!1744482))

(declare-fun b!5503848 () Bool)

(declare-fun e!3404319 () Bool)

(assert (=> b!5503848 (= e!3404319 (nullable!5518 (h!69066 (exprs!5365 lt!2243906))))))

(declare-fun bm!406542 () Bool)

(declare-fun call!406547 () (InoxSet Context!9730))

(assert (=> bm!406542 (= call!406547 (derivationStepZipperDown!827 (h!69066 (exprs!5365 lt!2243906)) (Context!9731 (t!375981 (exprs!5365 lt!2243906))) (h!69068 s!2326)))))

(declare-fun b!5503849 () Bool)

(declare-fun e!3404320 () (InoxSet Context!9730))

(assert (=> b!5503849 (= e!3404320 ((_ map or) call!406547 (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 lt!2243906))) (h!69068 s!2326))))))

(declare-fun b!5503850 () Bool)

(declare-fun e!3404318 () (InoxSet Context!9730))

(assert (=> b!5503850 (= e!3404318 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5503851 () Bool)

(assert (=> b!5503851 (= e!3404320 e!3404318)))

(declare-fun c!961548 () Bool)

(assert (=> b!5503851 (= c!961548 ((_ is Cons!62618) (exprs!5365 lt!2243906)))))

(declare-fun d!1744484 () Bool)

(declare-fun c!961549 () Bool)

(assert (=> d!1744484 (= c!961549 e!3404319)))

(declare-fun res!2345761 () Bool)

(assert (=> d!1744484 (=> (not res!2345761) (not e!3404319))))

(assert (=> d!1744484 (= res!2345761 ((_ is Cons!62618) (exprs!5365 lt!2243906)))))

(assert (=> d!1744484 (= (derivationStepZipperUp!753 lt!2243906 (h!69068 s!2326)) e!3404320)))

(declare-fun b!5503847 () Bool)

(assert (=> b!5503847 (= e!3404318 call!406547)))

(assert (= (and d!1744484 res!2345761) b!5503848))

(assert (= (and d!1744484 c!961549) b!5503849))

(assert (= (and d!1744484 (not c!961549)) b!5503851))

(assert (= (and b!5503851 c!961548) b!5503847))

(assert (= (and b!5503851 (not c!961548)) b!5503850))

(assert (= (or b!5503849 b!5503847) bm!406542))

(declare-fun m!6511232 () Bool)

(assert (=> b!5503848 m!6511232))

(declare-fun m!6511234 () Bool)

(assert (=> bm!406542 m!6511234))

(declare-fun m!6511236 () Bool)

(assert (=> b!5503849 m!6511236))

(assert (=> b!5503131 d!1744484))

(declare-fun d!1744486 () Bool)

(declare-fun c!961550 () Bool)

(assert (=> d!1744486 (= c!961550 (isEmpty!34404 s!2326))))

(declare-fun e!3404321 () Bool)

(assert (=> d!1744486 (= (matchZipper!1649 lt!2243917 s!2326) e!3404321)))

(declare-fun b!5503852 () Bool)

(assert (=> b!5503852 (= e!3404321 (nullableZipper!1523 lt!2243917))))

(declare-fun b!5503853 () Bool)

(assert (=> b!5503853 (= e!3404321 (matchZipper!1649 (derivationStepZipper!1592 lt!2243917 (head!11787 s!2326)) (tail!10882 s!2326)))))

(assert (= (and d!1744486 c!961550) b!5503852))

(assert (= (and d!1744486 (not c!961550)) b!5503853))

(assert (=> d!1744486 m!6511048))

(declare-fun m!6511238 () Bool)

(assert (=> b!5503852 m!6511238))

(assert (=> b!5503853 m!6511052))

(assert (=> b!5503853 m!6511052))

(declare-fun m!6511240 () Bool)

(assert (=> b!5503853 m!6511240))

(assert (=> b!5503853 m!6511056))

(assert (=> b!5503853 m!6511240))

(assert (=> b!5503853 m!6511056))

(declare-fun m!6511242 () Bool)

(assert (=> b!5503853 m!6511242))

(assert (=> b!5503131 d!1744486))

(declare-fun d!1744488 () Bool)

(declare-fun lt!2243990 () Regex!15481)

(assert (=> d!1744488 (validRegex!7217 lt!2243990)))

(assert (=> d!1744488 (= lt!2243990 (generalisedUnion!1344 (unfocusZipperList!909 zl!343)))))

(assert (=> d!1744488 (= (unfocusZipper!1223 zl!343) lt!2243990)))

(declare-fun bs!1269342 () Bool)

(assert (= bs!1269342 d!1744488))

(declare-fun m!6511244 () Bool)

(assert (=> bs!1269342 m!6511244))

(assert (=> bs!1269342 m!6510782))

(assert (=> bs!1269342 m!6510782))

(assert (=> bs!1269342 m!6510784))

(assert (=> b!5503120 d!1744488))

(declare-fun bs!1269343 () Bool)

(declare-fun d!1744490 () Bool)

(assert (= bs!1269343 (and d!1744490 d!1744430)))

(declare-fun lambda!294683 () Int)

(assert (=> bs!1269343 (= lambda!294683 lambda!294666)))

(declare-fun bs!1269344 () Bool)

(assert (= bs!1269344 (and d!1744490 d!1744462)))

(assert (=> bs!1269344 (= lambda!294683 lambda!294676)))

(declare-fun bs!1269345 () Bool)

(assert (= bs!1269345 (and d!1744490 d!1744464)))

(assert (=> bs!1269345 (= lambda!294683 lambda!294679)))

(declare-fun bs!1269346 () Bool)

(assert (= bs!1269346 (and d!1744490 d!1744470)))

(assert (=> bs!1269346 (= lambda!294683 lambda!294682)))

(assert (=> d!1744490 (= (inv!81949 setElem!36493) (forall!14666 (exprs!5365 setElem!36493) lambda!294683))))

(declare-fun bs!1269347 () Bool)

(assert (= bs!1269347 d!1744490))

(declare-fun m!6511246 () Bool)

(assert (=> bs!1269347 m!6511246))

(assert (=> setNonEmpty!36493 d!1744490))

(declare-fun d!1744492 () Bool)

(declare-fun e!3404324 () Bool)

(assert (=> d!1744492 e!3404324))

(declare-fun res!2345764 () Bool)

(assert (=> d!1744492 (=> (not res!2345764) (not e!3404324))))

(declare-fun lt!2243993 () List!62743)

(declare-fun noDuplicate!1484 (List!62743) Bool)

(assert (=> d!1744492 (= res!2345764 (noDuplicate!1484 lt!2243993))))

(declare-fun choose!41821 ((InoxSet Context!9730)) List!62743)

(assert (=> d!1744492 (= lt!2243993 (choose!41821 z!1189))))

(assert (=> d!1744492 (= (toList!9265 z!1189) lt!2243993)))

(declare-fun b!5503856 () Bool)

(declare-fun content!11245 (List!62743) (InoxSet Context!9730))

(assert (=> b!5503856 (= e!3404324 (= (content!11245 lt!2243993) z!1189))))

(assert (= (and d!1744492 res!2345764) b!5503856))

(declare-fun m!6511248 () Bool)

(assert (=> d!1744492 m!6511248))

(declare-fun m!6511250 () Bool)

(assert (=> d!1744492 m!6511250))

(declare-fun m!6511252 () Bool)

(assert (=> b!5503856 m!6511252))

(assert (=> b!5503135 d!1744492))

(declare-fun b!5503857 () Bool)

(declare-fun e!3404326 () (InoxSet Context!9730))

(declare-fun call!406552 () (InoxSet Context!9730))

(assert (=> b!5503857 (= e!3404326 call!406552)))

(declare-fun b!5503858 () Bool)

(declare-fun c!961553 () Bool)

(assert (=> b!5503858 (= c!961553 ((_ is Star!15481) (regTwo!31475 r!7292)))))

(declare-fun e!3404327 () (InoxSet Context!9730))

(assert (=> b!5503858 (= e!3404326 e!3404327)))

(declare-fun bm!406543 () Bool)

(declare-fun call!406549 () (InoxSet Context!9730))

(assert (=> bm!406543 (= call!406552 call!406549)))

(declare-fun bm!406544 () Bool)

(declare-fun call!406548 () List!62742)

(declare-fun call!406553 () List!62742)

(assert (=> bm!406544 (= call!406548 call!406553)))

(declare-fun b!5503860 () Bool)

(assert (=> b!5503860 (= e!3404327 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5503861 () Bool)

(declare-fun e!3404325 () Bool)

(assert (=> b!5503861 (= e!3404325 (nullable!5518 (regOne!31474 (regTwo!31475 r!7292))))))

(declare-fun c!961551 () Bool)

(declare-fun bm!406545 () Bool)

(declare-fun call!406550 () (InoxSet Context!9730))

(assert (=> bm!406545 (= call!406550 (derivationStepZipperDown!827 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))) (ite c!961551 lt!2243915 (Context!9731 call!406553)) (h!69068 s!2326)))))

(declare-fun b!5503862 () Bool)

(assert (=> b!5503862 (= e!3404327 call!406552)))

(declare-fun b!5503863 () Bool)

(declare-fun e!3404329 () (InoxSet Context!9730))

(assert (=> b!5503863 (= e!3404329 e!3404326)))

(declare-fun c!961554 () Bool)

(assert (=> b!5503863 (= c!961554 ((_ is Concat!24326) (regTwo!31475 r!7292)))))

(declare-fun call!406551 () (InoxSet Context!9730))

(declare-fun c!961555 () Bool)

(declare-fun bm!406546 () Bool)

(assert (=> bm!406546 (= call!406551 (derivationStepZipperDown!827 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292))))) (ite (or c!961551 c!961555) lt!2243915 (Context!9731 call!406548)) (h!69068 s!2326)))))

(declare-fun b!5503864 () Bool)

(declare-fun e!3404328 () (InoxSet Context!9730))

(declare-fun e!3404330 () (InoxSet Context!9730))

(assert (=> b!5503864 (= e!3404328 e!3404330)))

(assert (=> b!5503864 (= c!961551 ((_ is Union!15481) (regTwo!31475 r!7292)))))

(declare-fun b!5503865 () Bool)

(assert (=> b!5503865 (= e!3404330 ((_ map or) call!406550 call!406551))))

(declare-fun b!5503866 () Bool)

(assert (=> b!5503866 (= e!3404329 ((_ map or) call!406550 call!406549))))

(declare-fun bm!406547 () Bool)

(assert (=> bm!406547 (= call!406553 ($colon$colon!1572 (exprs!5365 lt!2243915) (ite (or c!961555 c!961554) (regTwo!31474 (regTwo!31475 r!7292)) (regTwo!31475 r!7292))))))

(declare-fun d!1744494 () Bool)

(declare-fun c!961552 () Bool)

(assert (=> d!1744494 (= c!961552 (and ((_ is ElementMatch!15481) (regTwo!31475 r!7292)) (= (c!961331 (regTwo!31475 r!7292)) (h!69068 s!2326))))))

(assert (=> d!1744494 (= (derivationStepZipperDown!827 (regTwo!31475 r!7292) lt!2243915 (h!69068 s!2326)) e!3404328)))

(declare-fun b!5503859 () Bool)

(assert (=> b!5503859 (= e!3404328 (store ((as const (Array Context!9730 Bool)) false) lt!2243915 true))))

(declare-fun b!5503867 () Bool)

(assert (=> b!5503867 (= c!961555 e!3404325)))

(declare-fun res!2345765 () Bool)

(assert (=> b!5503867 (=> (not res!2345765) (not e!3404325))))

(assert (=> b!5503867 (= res!2345765 ((_ is Concat!24326) (regTwo!31475 r!7292)))))

(assert (=> b!5503867 (= e!3404330 e!3404329)))

(declare-fun bm!406548 () Bool)

(assert (=> bm!406548 (= call!406549 call!406551)))

(assert (= (and d!1744494 c!961552) b!5503859))

(assert (= (and d!1744494 (not c!961552)) b!5503864))

(assert (= (and b!5503864 c!961551) b!5503865))

(assert (= (and b!5503864 (not c!961551)) b!5503867))

(assert (= (and b!5503867 res!2345765) b!5503861))

(assert (= (and b!5503867 c!961555) b!5503866))

(assert (= (and b!5503867 (not c!961555)) b!5503863))

(assert (= (and b!5503863 c!961554) b!5503857))

(assert (= (and b!5503863 (not c!961554)) b!5503858))

(assert (= (and b!5503858 c!961553) b!5503862))

(assert (= (and b!5503858 (not c!961553)) b!5503860))

(assert (= (or b!5503857 b!5503862) bm!406544))

(assert (= (or b!5503857 b!5503862) bm!406543))

(assert (= (or b!5503866 bm!406544) bm!406547))

(assert (= (or b!5503866 bm!406543) bm!406548))

(assert (= (or b!5503865 bm!406548) bm!406546))

(assert (= (or b!5503865 b!5503866) bm!406545))

(declare-fun m!6511254 () Bool)

(assert (=> bm!406546 m!6511254))

(declare-fun m!6511256 () Bool)

(assert (=> bm!406545 m!6511256))

(assert (=> b!5503859 m!6511160))

(declare-fun m!6511258 () Bool)

(assert (=> bm!406547 m!6511258))

(declare-fun m!6511260 () Bool)

(assert (=> b!5503861 m!6511260))

(assert (=> b!5503124 d!1744494))

(declare-fun b!5503868 () Bool)

(declare-fun e!3404332 () (InoxSet Context!9730))

(declare-fun call!406558 () (InoxSet Context!9730))

(assert (=> b!5503868 (= e!3404332 call!406558)))

(declare-fun b!5503869 () Bool)

(declare-fun c!961558 () Bool)

(assert (=> b!5503869 (= c!961558 ((_ is Star!15481) (regOne!31475 r!7292)))))

(declare-fun e!3404333 () (InoxSet Context!9730))

(assert (=> b!5503869 (= e!3404332 e!3404333)))

(declare-fun bm!406549 () Bool)

(declare-fun call!406555 () (InoxSet Context!9730))

(assert (=> bm!406549 (= call!406558 call!406555)))

(declare-fun bm!406550 () Bool)

(declare-fun call!406554 () List!62742)

(declare-fun call!406559 () List!62742)

(assert (=> bm!406550 (= call!406554 call!406559)))

(declare-fun b!5503871 () Bool)

(assert (=> b!5503871 (= e!3404333 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5503872 () Bool)

(declare-fun e!3404331 () Bool)

(assert (=> b!5503872 (= e!3404331 (nullable!5518 (regOne!31474 (regOne!31475 r!7292))))))

(declare-fun bm!406551 () Bool)

(declare-fun call!406556 () (InoxSet Context!9730))

(declare-fun c!961556 () Bool)

(assert (=> bm!406551 (= call!406556 (derivationStepZipperDown!827 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292))) (ite c!961556 lt!2243915 (Context!9731 call!406559)) (h!69068 s!2326)))))

(declare-fun b!5503873 () Bool)

(assert (=> b!5503873 (= e!3404333 call!406558)))

(declare-fun b!5503874 () Bool)

(declare-fun e!3404335 () (InoxSet Context!9730))

(assert (=> b!5503874 (= e!3404335 e!3404332)))

(declare-fun c!961559 () Bool)

(assert (=> b!5503874 (= c!961559 ((_ is Concat!24326) (regOne!31475 r!7292)))))

(declare-fun c!961560 () Bool)

(declare-fun call!406557 () (InoxSet Context!9730))

(declare-fun bm!406552 () Bool)

(assert (=> bm!406552 (= call!406557 (derivationStepZipperDown!827 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292))))) (ite (or c!961556 c!961560) lt!2243915 (Context!9731 call!406554)) (h!69068 s!2326)))))

(declare-fun b!5503875 () Bool)

(declare-fun e!3404334 () (InoxSet Context!9730))

(declare-fun e!3404336 () (InoxSet Context!9730))

(assert (=> b!5503875 (= e!3404334 e!3404336)))

(assert (=> b!5503875 (= c!961556 ((_ is Union!15481) (regOne!31475 r!7292)))))

(declare-fun b!5503876 () Bool)

(assert (=> b!5503876 (= e!3404336 ((_ map or) call!406556 call!406557))))

(declare-fun b!5503877 () Bool)

(assert (=> b!5503877 (= e!3404335 ((_ map or) call!406556 call!406555))))

(declare-fun bm!406553 () Bool)

(assert (=> bm!406553 (= call!406559 ($colon$colon!1572 (exprs!5365 lt!2243915) (ite (or c!961560 c!961559) (regTwo!31474 (regOne!31475 r!7292)) (regOne!31475 r!7292))))))

(declare-fun d!1744496 () Bool)

(declare-fun c!961557 () Bool)

(assert (=> d!1744496 (= c!961557 (and ((_ is ElementMatch!15481) (regOne!31475 r!7292)) (= (c!961331 (regOne!31475 r!7292)) (h!69068 s!2326))))))

(assert (=> d!1744496 (= (derivationStepZipperDown!827 (regOne!31475 r!7292) lt!2243915 (h!69068 s!2326)) e!3404334)))

(declare-fun b!5503870 () Bool)

(assert (=> b!5503870 (= e!3404334 (store ((as const (Array Context!9730 Bool)) false) lt!2243915 true))))

(declare-fun b!5503878 () Bool)

(assert (=> b!5503878 (= c!961560 e!3404331)))

(declare-fun res!2345766 () Bool)

(assert (=> b!5503878 (=> (not res!2345766) (not e!3404331))))

(assert (=> b!5503878 (= res!2345766 ((_ is Concat!24326) (regOne!31475 r!7292)))))

(assert (=> b!5503878 (= e!3404336 e!3404335)))

(declare-fun bm!406554 () Bool)

(assert (=> bm!406554 (= call!406555 call!406557)))

(assert (= (and d!1744496 c!961557) b!5503870))

(assert (= (and d!1744496 (not c!961557)) b!5503875))

(assert (= (and b!5503875 c!961556) b!5503876))

(assert (= (and b!5503875 (not c!961556)) b!5503878))

(assert (= (and b!5503878 res!2345766) b!5503872))

(assert (= (and b!5503878 c!961560) b!5503877))

(assert (= (and b!5503878 (not c!961560)) b!5503874))

(assert (= (and b!5503874 c!961559) b!5503868))

(assert (= (and b!5503874 (not c!961559)) b!5503869))

(assert (= (and b!5503869 c!961558) b!5503873))

(assert (= (and b!5503869 (not c!961558)) b!5503871))

(assert (= (or b!5503868 b!5503873) bm!406550))

(assert (= (or b!5503868 b!5503873) bm!406549))

(assert (= (or b!5503877 bm!406550) bm!406553))

(assert (= (or b!5503877 bm!406549) bm!406554))

(assert (= (or b!5503876 bm!406554) bm!406552))

(assert (= (or b!5503876 b!5503877) bm!406551))

(declare-fun m!6511262 () Bool)

(assert (=> bm!406552 m!6511262))

(declare-fun m!6511264 () Bool)

(assert (=> bm!406551 m!6511264))

(assert (=> b!5503870 m!6511160))

(declare-fun m!6511266 () Bool)

(assert (=> bm!406553 m!6511266))

(declare-fun m!6511268 () Bool)

(assert (=> b!5503872 m!6511268))

(assert (=> b!5503124 d!1744496))

(declare-fun d!1744498 () Bool)

(assert (=> d!1744498 (= (isEmpty!34401 (t!375982 zl!343)) ((_ is Nil!62619) (t!375982 zl!343)))))

(assert (=> b!5503134 d!1744498))

(declare-fun d!1744500 () Bool)

(declare-fun c!961561 () Bool)

(assert (=> d!1744500 (= c!961561 (isEmpty!34404 s!2326))))

(declare-fun e!3404337 () Bool)

(assert (=> d!1744500 (= (matchZipper!1649 lt!2243911 s!2326) e!3404337)))

(declare-fun b!5503879 () Bool)

(assert (=> b!5503879 (= e!3404337 (nullableZipper!1523 lt!2243911))))

(declare-fun b!5503880 () Bool)

(assert (=> b!5503880 (= e!3404337 (matchZipper!1649 (derivationStepZipper!1592 lt!2243911 (head!11787 s!2326)) (tail!10882 s!2326)))))

(assert (= (and d!1744500 c!961561) b!5503879))

(assert (= (and d!1744500 (not c!961561)) b!5503880))

(assert (=> d!1744500 m!6511048))

(declare-fun m!6511270 () Bool)

(assert (=> b!5503879 m!6511270))

(assert (=> b!5503880 m!6511052))

(assert (=> b!5503880 m!6511052))

(declare-fun m!6511272 () Bool)

(assert (=> b!5503880 m!6511272))

(assert (=> b!5503880 m!6511056))

(assert (=> b!5503880 m!6511272))

(assert (=> b!5503880 m!6511056))

(declare-fun m!6511274 () Bool)

(assert (=> b!5503880 m!6511274))

(assert (=> b!5503142 d!1744500))

(assert (=> b!5503142 d!1744456))

(declare-fun b!5503891 () Bool)

(declare-fun e!3404340 () Bool)

(assert (=> b!5503891 (= e!3404340 tp_is_empty!40215)))

(declare-fun b!5503893 () Bool)

(declare-fun tp!1514312 () Bool)

(assert (=> b!5503893 (= e!3404340 tp!1514312)))

(assert (=> b!5503122 (= tp!1514241 e!3404340)))

(declare-fun b!5503892 () Bool)

(declare-fun tp!1514316 () Bool)

(declare-fun tp!1514314 () Bool)

(assert (=> b!5503892 (= e!3404340 (and tp!1514316 tp!1514314))))

(declare-fun b!5503894 () Bool)

(declare-fun tp!1514315 () Bool)

(declare-fun tp!1514313 () Bool)

(assert (=> b!5503894 (= e!3404340 (and tp!1514315 tp!1514313))))

(assert (= (and b!5503122 ((_ is ElementMatch!15481) (regOne!31474 r!7292))) b!5503891))

(assert (= (and b!5503122 ((_ is Concat!24326) (regOne!31474 r!7292))) b!5503892))

(assert (= (and b!5503122 ((_ is Star!15481) (regOne!31474 r!7292))) b!5503893))

(assert (= (and b!5503122 ((_ is Union!15481) (regOne!31474 r!7292))) b!5503894))

(declare-fun b!5503895 () Bool)

(declare-fun e!3404341 () Bool)

(assert (=> b!5503895 (= e!3404341 tp_is_empty!40215)))

(declare-fun b!5503897 () Bool)

(declare-fun tp!1514317 () Bool)

(assert (=> b!5503897 (= e!3404341 tp!1514317)))

(assert (=> b!5503122 (= tp!1514237 e!3404341)))

(declare-fun b!5503896 () Bool)

(declare-fun tp!1514321 () Bool)

(declare-fun tp!1514319 () Bool)

(assert (=> b!5503896 (= e!3404341 (and tp!1514321 tp!1514319))))

(declare-fun b!5503898 () Bool)

(declare-fun tp!1514320 () Bool)

(declare-fun tp!1514318 () Bool)

(assert (=> b!5503898 (= e!3404341 (and tp!1514320 tp!1514318))))

(assert (= (and b!5503122 ((_ is ElementMatch!15481) (regTwo!31474 r!7292))) b!5503895))

(assert (= (and b!5503122 ((_ is Concat!24326) (regTwo!31474 r!7292))) b!5503896))

(assert (= (and b!5503122 ((_ is Star!15481) (regTwo!31474 r!7292))) b!5503897))

(assert (= (and b!5503122 ((_ is Union!15481) (regTwo!31474 r!7292))) b!5503898))

(declare-fun b!5503906 () Bool)

(declare-fun e!3404347 () Bool)

(declare-fun tp!1514326 () Bool)

(assert (=> b!5503906 (= e!3404347 tp!1514326)))

(declare-fun b!5503905 () Bool)

(declare-fun e!3404346 () Bool)

(declare-fun tp!1514327 () Bool)

(assert (=> b!5503905 (= e!3404346 (and (inv!81949 (h!69067 (t!375982 zl!343))) e!3404347 tp!1514327))))

(assert (=> b!5503141 (= tp!1514240 e!3404346)))

(assert (= b!5503905 b!5503906))

(assert (= (and b!5503141 ((_ is Cons!62619) (t!375982 zl!343))) b!5503905))

(declare-fun m!6511276 () Bool)

(assert (=> b!5503905 m!6511276))

(declare-fun b!5503911 () Bool)

(declare-fun e!3404350 () Bool)

(declare-fun tp!1514330 () Bool)

(assert (=> b!5503911 (= e!3404350 (and tp_is_empty!40215 tp!1514330))))

(assert (=> b!5503132 (= tp!1514234 e!3404350)))

(assert (= (and b!5503132 ((_ is Cons!62620) (t!375983 s!2326))) b!5503911))

(declare-fun b!5503912 () Bool)

(declare-fun e!3404351 () Bool)

(assert (=> b!5503912 (= e!3404351 tp_is_empty!40215)))

(declare-fun b!5503914 () Bool)

(declare-fun tp!1514331 () Bool)

(assert (=> b!5503914 (= e!3404351 tp!1514331)))

(assert (=> b!5503121 (= tp!1514236 e!3404351)))

(declare-fun b!5503913 () Bool)

(declare-fun tp!1514335 () Bool)

(declare-fun tp!1514333 () Bool)

(assert (=> b!5503913 (= e!3404351 (and tp!1514335 tp!1514333))))

(declare-fun b!5503915 () Bool)

(declare-fun tp!1514334 () Bool)

(declare-fun tp!1514332 () Bool)

(assert (=> b!5503915 (= e!3404351 (and tp!1514334 tp!1514332))))

(assert (= (and b!5503121 ((_ is ElementMatch!15481) (reg!15810 r!7292))) b!5503912))

(assert (= (and b!5503121 ((_ is Concat!24326) (reg!15810 r!7292))) b!5503913))

(assert (= (and b!5503121 ((_ is Star!15481) (reg!15810 r!7292))) b!5503914))

(assert (= (and b!5503121 ((_ is Union!15481) (reg!15810 r!7292))) b!5503915))

(declare-fun b!5503916 () Bool)

(declare-fun e!3404352 () Bool)

(assert (=> b!5503916 (= e!3404352 tp_is_empty!40215)))

(declare-fun b!5503918 () Bool)

(declare-fun tp!1514336 () Bool)

(assert (=> b!5503918 (= e!3404352 tp!1514336)))

(assert (=> b!5503140 (= tp!1514238 e!3404352)))

(declare-fun b!5503917 () Bool)

(declare-fun tp!1514340 () Bool)

(declare-fun tp!1514338 () Bool)

(assert (=> b!5503917 (= e!3404352 (and tp!1514340 tp!1514338))))

(declare-fun b!5503919 () Bool)

(declare-fun tp!1514339 () Bool)

(declare-fun tp!1514337 () Bool)

(assert (=> b!5503919 (= e!3404352 (and tp!1514339 tp!1514337))))

(assert (= (and b!5503140 ((_ is ElementMatch!15481) (regOne!31475 r!7292))) b!5503916))

(assert (= (and b!5503140 ((_ is Concat!24326) (regOne!31475 r!7292))) b!5503917))

(assert (= (and b!5503140 ((_ is Star!15481) (regOne!31475 r!7292))) b!5503918))

(assert (= (and b!5503140 ((_ is Union!15481) (regOne!31475 r!7292))) b!5503919))

(declare-fun b!5503920 () Bool)

(declare-fun e!3404353 () Bool)

(assert (=> b!5503920 (= e!3404353 tp_is_empty!40215)))

(declare-fun b!5503922 () Bool)

(declare-fun tp!1514341 () Bool)

(assert (=> b!5503922 (= e!3404353 tp!1514341)))

(assert (=> b!5503140 (= tp!1514239 e!3404353)))

(declare-fun b!5503921 () Bool)

(declare-fun tp!1514345 () Bool)

(declare-fun tp!1514343 () Bool)

(assert (=> b!5503921 (= e!3404353 (and tp!1514345 tp!1514343))))

(declare-fun b!5503923 () Bool)

(declare-fun tp!1514344 () Bool)

(declare-fun tp!1514342 () Bool)

(assert (=> b!5503923 (= e!3404353 (and tp!1514344 tp!1514342))))

(assert (= (and b!5503140 ((_ is ElementMatch!15481) (regTwo!31475 r!7292))) b!5503920))

(assert (= (and b!5503140 ((_ is Concat!24326) (regTwo!31475 r!7292))) b!5503921))

(assert (= (and b!5503140 ((_ is Star!15481) (regTwo!31475 r!7292))) b!5503922))

(assert (= (and b!5503140 ((_ is Union!15481) (regTwo!31475 r!7292))) b!5503923))

(declare-fun condSetEmpty!36499 () Bool)

(assert (=> setNonEmpty!36493 (= condSetEmpty!36499 (= setRest!36493 ((as const (Array Context!9730 Bool)) false)))))

(declare-fun setRes!36499 () Bool)

(assert (=> setNonEmpty!36493 (= tp!1514243 setRes!36499)))

(declare-fun setIsEmpty!36499 () Bool)

(assert (=> setIsEmpty!36499 setRes!36499))

(declare-fun tp!1514351 () Bool)

(declare-fun setNonEmpty!36499 () Bool)

(declare-fun e!3404356 () Bool)

(declare-fun setElem!36499 () Context!9730)

(assert (=> setNonEmpty!36499 (= setRes!36499 (and tp!1514351 (inv!81949 setElem!36499) e!3404356))))

(declare-fun setRest!36499 () (InoxSet Context!9730))

(assert (=> setNonEmpty!36499 (= setRest!36493 ((_ map or) (store ((as const (Array Context!9730 Bool)) false) setElem!36499 true) setRest!36499))))

(declare-fun b!5503928 () Bool)

(declare-fun tp!1514350 () Bool)

(assert (=> b!5503928 (= e!3404356 tp!1514350)))

(assert (= (and setNonEmpty!36493 condSetEmpty!36499) setIsEmpty!36499))

(assert (= (and setNonEmpty!36493 (not condSetEmpty!36499)) setNonEmpty!36499))

(assert (= setNonEmpty!36499 b!5503928))

(declare-fun m!6511278 () Bool)

(assert (=> setNonEmpty!36499 m!6511278))

(declare-fun b!5503933 () Bool)

(declare-fun e!3404359 () Bool)

(declare-fun tp!1514356 () Bool)

(declare-fun tp!1514357 () Bool)

(assert (=> b!5503933 (= e!3404359 (and tp!1514356 tp!1514357))))

(assert (=> b!5503130 (= tp!1514242 e!3404359)))

(assert (= (and b!5503130 ((_ is Cons!62618) (exprs!5365 setElem!36493))) b!5503933))

(declare-fun b!5503934 () Bool)

(declare-fun e!3404360 () Bool)

(declare-fun tp!1514358 () Bool)

(declare-fun tp!1514359 () Bool)

(assert (=> b!5503934 (= e!3404360 (and tp!1514358 tp!1514359))))

(assert (=> b!5503123 (= tp!1514235 e!3404360)))

(assert (= (and b!5503123 ((_ is Cons!62618) (exprs!5365 (h!69067 zl!343)))) b!5503934))

(declare-fun b_lambda!208733 () Bool)

(assert (= b_lambda!208727 (or b!5503119 b_lambda!208733)))

(declare-fun bs!1269348 () Bool)

(declare-fun d!1744502 () Bool)

(assert (= bs!1269348 (and d!1744502 b!5503119)))

(assert (=> bs!1269348 (= (dynLambda!24472 lambda!294631 (h!69067 zl!343)) (derivationStepZipperUp!753 (h!69067 zl!343) (h!69068 s!2326)))))

(assert (=> bs!1269348 m!6510790))

(assert (=> d!1744454 d!1744502))

(declare-fun b_lambda!208735 () Bool)

(assert (= b_lambda!208731 (or b!5503119 b_lambda!208735)))

(declare-fun bs!1269349 () Bool)

(declare-fun d!1744504 () Bool)

(assert (= bs!1269349 (and d!1744504 b!5503119)))

(assert (=> bs!1269349 (= (dynLambda!24472 lambda!294631 lt!2243920) (derivationStepZipperUp!753 lt!2243920 (h!69068 s!2326)))))

(assert (=> bs!1269349 m!6510756))

(assert (=> d!1744476 d!1744504))

(declare-fun b_lambda!208737 () Bool)

(assert (= b_lambda!208729 (or b!5503119 b_lambda!208737)))

(declare-fun bs!1269350 () Bool)

(declare-fun d!1744506 () Bool)

(assert (= bs!1269350 (and d!1744506 b!5503119)))

(assert (=> bs!1269350 (= (dynLambda!24472 lambda!294631 lt!2243906) (derivationStepZipperUp!753 lt!2243906 (h!69068 s!2326)))))

(assert (=> bs!1269350 m!6510760))

(assert (=> d!1744474 d!1744506))

(check-sat (not bm!406546) (not d!1744440) (not b!5503762) (not d!1744476) (not bm!406531) (not b!5503651) (not b!5503711) (not bm!406505) (not d!1744432) (not b!5503673) (not b!5503837) (not d!1744490) (not bm!406553) (not b!5503666) (not b!5503653) (not bs!1269349) (not bm!406500) (not b!5503848) (not b!5503652) (not bm!406504) (not d!1744426) (not b!5503814) (not d!1744466) (not d!1744480) (not b!5503896) (not b!5503856) (not d!1744462) (not b!5503665) (not b!5503803) (not b!5503685) (not b!5503923) (not b!5503915) (not b!5503801) (not b!5503619) (not b!5503770) (not d!1744448) (not b!5503892) (not b!5503880) (not b!5503657) (not b!5503898) (not b!5503928) (not b!5503810) (not b!5503853) (not bm!406508) (not b!5503668) (not bm!406527) (not b!5503734) (not b!5503914) tp_is_empty!40215 (not b!5503893) (not b!5503913) (not b!5503811) (not b!5503918) (not b!5503919) (not b!5503698) (not b!5503710) (not b!5503802) (not b!5503934) (not b!5503731) (not bm!406545) (not d!1744428) (not d!1744442) (not bm!406542) (not bm!406499) (not d!1744474) (not d!1744454) (not b!5503906) (not b!5503624) (not d!1744464) (not d!1744492) (not b!5503735) (not b!5503771) (not bm!406551) (not bs!1269348) (not b!5503922) (not d!1744446) (not bm!406538) (not b!5503622) (not bm!406509) (not b!5503686) (not b_lambda!208733) (not d!1744430) (not bm!406528) (not b!5503872) (not b!5503682) (not b!5503797) (not b!5503933) (not b!5503843) (not b!5503708) (not b!5503663) (not b!5503683) (not b_lambda!208737) (not b!5503623) (not bm!406503) (not bm!406507) (not b!5503650) (not b!5503808) (not b!5503664) (not b!5503707) (not d!1744438) (not b!5503795) (not b!5503911) (not bm!406539) (not bm!406547) (not bs!1269350) (not d!1744482) (not bm!406512) (not d!1744486) (not b!5503656) (not b!5503800) (not bm!406506) (not d!1744470) (not d!1744434) (not b!5503897) (not b!5503578) (not b!5503861) (not b!5503693) (not d!1744488) (not b!5503905) (not bm!406541) (not b!5503627) (not bm!406529) (not b!5503654) (not setNonEmpty!36499) (not b!5503852) (not b!5503917) (not b!5503715) (not d!1744468) (not d!1744500) (not b!5503687) (not b!5503879) (not b!5503844) (not b!5503730) (not b!5503794) (not b!5503573) (not b!5503921) (not b_lambda!208735) (not d!1744456) (not b!5503712) (not b!5503620) (not b!5503849) (not b!5503690) (not bm!406552) (not d!1744450) (not b!5503894))
(check-sat)
(get-model)

(declare-fun d!1744742 () Bool)

(assert (=> d!1744742 (= (head!11787 s!2326) (h!69068 s!2326))))

(assert (=> b!5503711 d!1744742))

(declare-fun d!1744744 () Bool)

(declare-fun lambda!294713 () Int)

(declare-fun exists!2133 ((InoxSet Context!9730) Int) Bool)

(assert (=> d!1744744 (= (nullableZipper!1523 lt!2243916) (exists!2133 lt!2243916 lambda!294713))))

(declare-fun bs!1269544 () Bool)

(assert (= bs!1269544 d!1744744))

(declare-fun m!6511718 () Bool)

(assert (=> bs!1269544 m!6511718))

(assert (=> b!5503810 d!1744744))

(declare-fun b!5504459 () Bool)

(declare-fun e!3404652 () (InoxSet Context!9730))

(declare-fun call!406680 () (InoxSet Context!9730))

(assert (=> b!5504459 (= e!3404652 call!406680)))

(declare-fun b!5504460 () Bool)

(declare-fun c!961709 () Bool)

(assert (=> b!5504460 (= c!961709 ((_ is Star!15481) (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun e!3404653 () (InoxSet Context!9730))

(assert (=> b!5504460 (= e!3404652 e!3404653)))

(declare-fun bm!406671 () Bool)

(declare-fun call!406677 () (InoxSet Context!9730))

(assert (=> bm!406671 (= call!406680 call!406677)))

(declare-fun bm!406672 () Bool)

(declare-fun call!406676 () List!62742)

(declare-fun call!406681 () List!62742)

(assert (=> bm!406672 (= call!406676 call!406681)))

(declare-fun b!5504462 () Bool)

(assert (=> b!5504462 (= e!3404653 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504463 () Bool)

(declare-fun e!3404651 () Bool)

(assert (=> b!5504463 (= e!3404651 (nullable!5518 (regOne!31474 (h!69066 (exprs!5365 (h!69067 zl!343))))))))

(declare-fun c!961707 () Bool)

(declare-fun call!406678 () (InoxSet Context!9730))

(declare-fun bm!406673 () Bool)

(assert (=> bm!406673 (= call!406678 (derivationStepZipperDown!827 (ite c!961707 (regOne!31475 (h!69066 (exprs!5365 (h!69067 zl!343)))) (regOne!31474 (h!69066 (exprs!5365 (h!69067 zl!343))))) (ite c!961707 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))) (Context!9731 call!406681)) (h!69068 s!2326)))))

(declare-fun b!5504464 () Bool)

(assert (=> b!5504464 (= e!3404653 call!406680)))

(declare-fun b!5504465 () Bool)

(declare-fun e!3404655 () (InoxSet Context!9730))

(assert (=> b!5504465 (= e!3404655 e!3404652)))

(declare-fun c!961710 () Bool)

(assert (=> b!5504465 (= c!961710 ((_ is Concat!24326) (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun bm!406674 () Bool)

(declare-fun c!961711 () Bool)

(declare-fun call!406679 () (InoxSet Context!9730))

(assert (=> bm!406674 (= call!406679 (derivationStepZipperDown!827 (ite c!961707 (regTwo!31475 (h!69066 (exprs!5365 (h!69067 zl!343)))) (ite c!961711 (regTwo!31474 (h!69066 (exprs!5365 (h!69067 zl!343)))) (ite c!961710 (regOne!31474 (h!69066 (exprs!5365 (h!69067 zl!343)))) (reg!15810 (h!69066 (exprs!5365 (h!69067 zl!343))))))) (ite (or c!961707 c!961711) (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))) (Context!9731 call!406676)) (h!69068 s!2326)))))

(declare-fun b!5504466 () Bool)

(declare-fun e!3404654 () (InoxSet Context!9730))

(declare-fun e!3404656 () (InoxSet Context!9730))

(assert (=> b!5504466 (= e!3404654 e!3404656)))

(assert (=> b!5504466 (= c!961707 ((_ is Union!15481) (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5504467 () Bool)

(assert (=> b!5504467 (= e!3404656 ((_ map or) call!406678 call!406679))))

(declare-fun b!5504468 () Bool)

(assert (=> b!5504468 (= e!3404655 ((_ map or) call!406678 call!406677))))

(declare-fun bm!406675 () Bool)

(assert (=> bm!406675 (= call!406681 ($colon$colon!1572 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343))))) (ite (or c!961711 c!961710) (regTwo!31474 (h!69066 (exprs!5365 (h!69067 zl!343)))) (h!69066 (exprs!5365 (h!69067 zl!343))))))))

(declare-fun d!1744746 () Bool)

(declare-fun c!961708 () Bool)

(assert (=> d!1744746 (= c!961708 (and ((_ is ElementMatch!15481) (h!69066 (exprs!5365 (h!69067 zl!343)))) (= (c!961331 (h!69066 (exprs!5365 (h!69067 zl!343)))) (h!69068 s!2326))))))

(assert (=> d!1744746 (= (derivationStepZipperDown!827 (h!69066 (exprs!5365 (h!69067 zl!343))) (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))) (h!69068 s!2326)) e!3404654)))

(declare-fun b!5504461 () Bool)

(assert (=> b!5504461 (= e!3404654 (store ((as const (Array Context!9730 Bool)) false) (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))) true))))

(declare-fun b!5504469 () Bool)

(assert (=> b!5504469 (= c!961711 e!3404651)))

(declare-fun res!2345890 () Bool)

(assert (=> b!5504469 (=> (not res!2345890) (not e!3404651))))

(assert (=> b!5504469 (= res!2345890 ((_ is Concat!24326) (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(assert (=> b!5504469 (= e!3404656 e!3404655)))

(declare-fun bm!406676 () Bool)

(assert (=> bm!406676 (= call!406677 call!406679)))

(assert (= (and d!1744746 c!961708) b!5504461))

(assert (= (and d!1744746 (not c!961708)) b!5504466))

(assert (= (and b!5504466 c!961707) b!5504467))

(assert (= (and b!5504466 (not c!961707)) b!5504469))

(assert (= (and b!5504469 res!2345890) b!5504463))

(assert (= (and b!5504469 c!961711) b!5504468))

(assert (= (and b!5504469 (not c!961711)) b!5504465))

(assert (= (and b!5504465 c!961710) b!5504459))

(assert (= (and b!5504465 (not c!961710)) b!5504460))

(assert (= (and b!5504460 c!961709) b!5504464))

(assert (= (and b!5504460 (not c!961709)) b!5504462))

(assert (= (or b!5504459 b!5504464) bm!406672))

(assert (= (or b!5504459 b!5504464) bm!406671))

(assert (= (or b!5504468 bm!406672) bm!406675))

(assert (= (or b!5504468 bm!406671) bm!406676))

(assert (= (or b!5504467 bm!406676) bm!406674))

(assert (= (or b!5504467 b!5504468) bm!406673))

(declare-fun m!6511720 () Bool)

(assert (=> bm!406674 m!6511720))

(declare-fun m!6511722 () Bool)

(assert (=> bm!406673 m!6511722))

(declare-fun m!6511724 () Bool)

(assert (=> b!5504461 m!6511724))

(declare-fun m!6511726 () Bool)

(assert (=> bm!406675 m!6511726))

(declare-fun m!6511728 () Bool)

(assert (=> b!5504463 m!6511728))

(assert (=> bm!406512 d!1744746))

(declare-fun d!1744748 () Bool)

(assert (=> d!1744748 (= (isEmpty!34405 (t!375981 (unfocusZipperList!909 zl!343))) ((_ is Nil!62618) (t!375981 (unfocusZipperList!909 zl!343))))))

(assert (=> b!5503802 d!1744748))

(declare-fun d!1744750 () Bool)

(assert (=> d!1744750 (= (isEmpty!34404 s!2326) ((_ is Nil!62620) s!2326))))

(assert (=> d!1744486 d!1744750))

(declare-fun d!1744752 () Bool)

(declare-fun nullableFct!1653 (Regex!15481) Bool)

(assert (=> d!1744752 (= (nullable!5518 (regOne!31474 (regOne!31475 r!7292))) (nullableFct!1653 (regOne!31474 (regOne!31475 r!7292))))))

(declare-fun bs!1269545 () Bool)

(assert (= bs!1269545 d!1744752))

(declare-fun m!6511730 () Bool)

(assert (=> bs!1269545 m!6511730))

(assert (=> b!5503872 d!1744752))

(assert (=> d!1744442 d!1744440))

(assert (=> d!1744442 d!1744436))

(declare-fun d!1744754 () Bool)

(assert (=> d!1744754 (= (matchR!7666 (regTwo!31475 r!7292) s!2326) (matchRSpec!2584 (regTwo!31475 r!7292) s!2326))))

(assert (=> d!1744754 true))

(declare-fun _$88!3752 () Unit!155422)

(assert (=> d!1744754 (= (choose!41817 (regTwo!31475 r!7292) s!2326) _$88!3752)))

(declare-fun bs!1269546 () Bool)

(assert (= bs!1269546 d!1744754))

(assert (=> bs!1269546 m!6510738))

(assert (=> bs!1269546 m!6510734))

(assert (=> d!1744442 d!1744754))

(declare-fun bm!406677 () Bool)

(declare-fun call!406684 () Bool)

(declare-fun c!961713 () Bool)

(assert (=> bm!406677 (= call!406684 (validRegex!7217 (ite c!961713 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))))))

(declare-fun b!5504470 () Bool)

(declare-fun e!3404658 () Bool)

(declare-fun call!406682 () Bool)

(assert (=> b!5504470 (= e!3404658 call!406682)))

(declare-fun b!5504471 () Bool)

(declare-fun e!3404663 () Bool)

(declare-fun e!3404659 () Bool)

(assert (=> b!5504471 (= e!3404663 e!3404659)))

(assert (=> b!5504471 (= c!961713 ((_ is Union!15481) (regTwo!31475 r!7292)))))

(declare-fun b!5504472 () Bool)

(declare-fun res!2345894 () Bool)

(assert (=> b!5504472 (=> (not res!2345894) (not e!3404658))))

(assert (=> b!5504472 (= res!2345894 call!406684)))

(assert (=> b!5504472 (= e!3404659 e!3404658)))

(declare-fun b!5504473 () Bool)

(declare-fun e!3404661 () Bool)

(assert (=> b!5504473 (= e!3404661 e!3404663)))

(declare-fun c!961712 () Bool)

(assert (=> b!5504473 (= c!961712 ((_ is Star!15481) (regTwo!31475 r!7292)))))

(declare-fun b!5504474 () Bool)

(declare-fun e!3404660 () Bool)

(assert (=> b!5504474 (= e!3404663 e!3404660)))

(declare-fun res!2345891 () Bool)

(assert (=> b!5504474 (= res!2345891 (not (nullable!5518 (reg!15810 (regTwo!31475 r!7292)))))))

(assert (=> b!5504474 (=> (not res!2345891) (not e!3404660))))

(declare-fun b!5504475 () Bool)

(declare-fun res!2345895 () Bool)

(declare-fun e!3404657 () Bool)

(assert (=> b!5504475 (=> res!2345895 e!3404657)))

(assert (=> b!5504475 (= res!2345895 (not ((_ is Concat!24326) (regTwo!31475 r!7292))))))

(assert (=> b!5504475 (= e!3404659 e!3404657)))

(declare-fun b!5504476 () Bool)

(declare-fun call!406683 () Bool)

(assert (=> b!5504476 (= e!3404660 call!406683)))

(declare-fun d!1744756 () Bool)

(declare-fun res!2345893 () Bool)

(assert (=> d!1744756 (=> res!2345893 e!3404661)))

(assert (=> d!1744756 (= res!2345893 ((_ is ElementMatch!15481) (regTwo!31475 r!7292)))))

(assert (=> d!1744756 (= (validRegex!7217 (regTwo!31475 r!7292)) e!3404661)))

(declare-fun bm!406678 () Bool)

(assert (=> bm!406678 (= call!406683 (validRegex!7217 (ite c!961712 (reg!15810 (regTwo!31475 r!7292)) (ite c!961713 (regTwo!31475 (regTwo!31475 r!7292)) (regTwo!31474 (regTwo!31475 r!7292))))))))

(declare-fun bm!406679 () Bool)

(assert (=> bm!406679 (= call!406682 call!406683)))

(declare-fun b!5504477 () Bool)

(declare-fun e!3404662 () Bool)

(assert (=> b!5504477 (= e!3404657 e!3404662)))

(declare-fun res!2345892 () Bool)

(assert (=> b!5504477 (=> (not res!2345892) (not e!3404662))))

(assert (=> b!5504477 (= res!2345892 call!406684)))

(declare-fun b!5504478 () Bool)

(assert (=> b!5504478 (= e!3404662 call!406682)))

(assert (= (and d!1744756 (not res!2345893)) b!5504473))

(assert (= (and b!5504473 c!961712) b!5504474))

(assert (= (and b!5504473 (not c!961712)) b!5504471))

(assert (= (and b!5504474 res!2345891) b!5504476))

(assert (= (and b!5504471 c!961713) b!5504472))

(assert (= (and b!5504471 (not c!961713)) b!5504475))

(assert (= (and b!5504472 res!2345894) b!5504470))

(assert (= (and b!5504475 (not res!2345895)) b!5504477))

(assert (= (and b!5504477 res!2345892) b!5504478))

(assert (= (or b!5504470 b!5504478) bm!406679))

(assert (= (or b!5504472 b!5504477) bm!406677))

(assert (= (or b!5504476 bm!406679) bm!406678))

(declare-fun m!6511732 () Bool)

(assert (=> bm!406677 m!6511732))

(declare-fun m!6511734 () Bool)

(assert (=> b!5504474 m!6511734))

(declare-fun m!6511736 () Bool)

(assert (=> bm!406678 m!6511736))

(assert (=> d!1744442 d!1744756))

(assert (=> d!1744428 d!1744426))

(assert (=> d!1744428 d!1744424))

(declare-fun d!1744758 () Bool)

(assert (=> d!1744758 (= (matchR!7666 r!7292 s!2326) (matchRSpec!2584 r!7292 s!2326))))

(assert (=> d!1744758 true))

(declare-fun _$88!3753 () Unit!155422)

(assert (=> d!1744758 (= (choose!41817 r!7292 s!2326) _$88!3753)))

(declare-fun bs!1269547 () Bool)

(assert (= bs!1269547 d!1744758))

(assert (=> bs!1269547 m!6510804))

(assert (=> bs!1269547 m!6510802))

(assert (=> d!1744428 d!1744758))

(assert (=> d!1744428 d!1744472))

(declare-fun b!5504479 () Bool)

(declare-fun e!3404665 () (InoxSet Context!9730))

(declare-fun call!406689 () (InoxSet Context!9730))

(assert (=> b!5504479 (= e!3404665 call!406689)))

(declare-fun c!961716 () Bool)

(declare-fun b!5504480 () Bool)

(assert (=> b!5504480 (= c!961716 ((_ is Star!15481) (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))))))

(declare-fun e!3404666 () (InoxSet Context!9730))

(assert (=> b!5504480 (= e!3404665 e!3404666)))

(declare-fun bm!406680 () Bool)

(declare-fun call!406686 () (InoxSet Context!9730))

(assert (=> bm!406680 (= call!406689 call!406686)))

(declare-fun bm!406681 () Bool)

(declare-fun call!406685 () List!62742)

(declare-fun call!406690 () List!62742)

(assert (=> bm!406681 (= call!406685 call!406690)))

(declare-fun b!5504482 () Bool)

(assert (=> b!5504482 (= e!3404666 ((as const (Array Context!9730 Bool)) false))))

(declare-fun e!3404664 () Bool)

(declare-fun b!5504483 () Bool)

(assert (=> b!5504483 (= e!3404664 (nullable!5518 (regOne!31474 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292))))))))))

(declare-fun bm!406682 () Bool)

(declare-fun call!406687 () (InoxSet Context!9730))

(declare-fun c!961714 () Bool)

(assert (=> bm!406682 (= call!406687 (derivationStepZipperDown!827 (ite c!961714 (regOne!31475 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))) (regOne!31474 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292))))))) (ite c!961714 (ite (or c!961556 c!961560) lt!2243915 (Context!9731 call!406554)) (Context!9731 call!406690)) (h!69068 s!2326)))))

(declare-fun b!5504484 () Bool)

(assert (=> b!5504484 (= e!3404666 call!406689)))

(declare-fun b!5504485 () Bool)

(declare-fun e!3404668 () (InoxSet Context!9730))

(assert (=> b!5504485 (= e!3404668 e!3404665)))

(declare-fun c!961717 () Bool)

(assert (=> b!5504485 (= c!961717 ((_ is Concat!24326) (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))))))

(declare-fun call!406688 () (InoxSet Context!9730))

(declare-fun bm!406683 () Bool)

(declare-fun c!961718 () Bool)

(assert (=> bm!406683 (= call!406688 (derivationStepZipperDown!827 (ite c!961714 (regTwo!31475 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))) (ite c!961718 (regTwo!31474 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))) (ite c!961717 (regOne!31474 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))) (reg!15810 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292))))))))) (ite (or c!961714 c!961718) (ite (or c!961556 c!961560) lt!2243915 (Context!9731 call!406554)) (Context!9731 call!406685)) (h!69068 s!2326)))))

(declare-fun b!5504486 () Bool)

(declare-fun e!3404667 () (InoxSet Context!9730))

(declare-fun e!3404669 () (InoxSet Context!9730))

(assert (=> b!5504486 (= e!3404667 e!3404669)))

(assert (=> b!5504486 (= c!961714 ((_ is Union!15481) (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))))))

(declare-fun b!5504487 () Bool)

(assert (=> b!5504487 (= e!3404669 ((_ map or) call!406687 call!406688))))

(declare-fun b!5504488 () Bool)

(assert (=> b!5504488 (= e!3404668 ((_ map or) call!406687 call!406686))))

(declare-fun bm!406684 () Bool)

(assert (=> bm!406684 (= call!406690 ($colon$colon!1572 (exprs!5365 (ite (or c!961556 c!961560) lt!2243915 (Context!9731 call!406554))) (ite (or c!961718 c!961717) (regTwo!31474 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))) (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292))))))))))

(declare-fun c!961715 () Bool)

(declare-fun d!1744760 () Bool)

(assert (=> d!1744760 (= c!961715 (and ((_ is ElementMatch!15481) (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))) (= (c!961331 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))) (h!69068 s!2326))))))

(assert (=> d!1744760 (= (derivationStepZipperDown!827 (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292))))) (ite (or c!961556 c!961560) lt!2243915 (Context!9731 call!406554)) (h!69068 s!2326)) e!3404667)))

(declare-fun b!5504481 () Bool)

(assert (=> b!5504481 (= e!3404667 (store ((as const (Array Context!9730 Bool)) false) (ite (or c!961556 c!961560) lt!2243915 (Context!9731 call!406554)) true))))

(declare-fun b!5504489 () Bool)

(assert (=> b!5504489 (= c!961718 e!3404664)))

(declare-fun res!2345896 () Bool)

(assert (=> b!5504489 (=> (not res!2345896) (not e!3404664))))

(assert (=> b!5504489 (= res!2345896 ((_ is Concat!24326) (ite c!961556 (regTwo!31475 (regOne!31475 r!7292)) (ite c!961560 (regTwo!31474 (regOne!31475 r!7292)) (ite c!961559 (regOne!31474 (regOne!31475 r!7292)) (reg!15810 (regOne!31475 r!7292)))))))))

(assert (=> b!5504489 (= e!3404669 e!3404668)))

(declare-fun bm!406685 () Bool)

(assert (=> bm!406685 (= call!406686 call!406688)))

(assert (= (and d!1744760 c!961715) b!5504481))

(assert (= (and d!1744760 (not c!961715)) b!5504486))

(assert (= (and b!5504486 c!961714) b!5504487))

(assert (= (and b!5504486 (not c!961714)) b!5504489))

(assert (= (and b!5504489 res!2345896) b!5504483))

(assert (= (and b!5504489 c!961718) b!5504488))

(assert (= (and b!5504489 (not c!961718)) b!5504485))

(assert (= (and b!5504485 c!961717) b!5504479))

(assert (= (and b!5504485 (not c!961717)) b!5504480))

(assert (= (and b!5504480 c!961716) b!5504484))

(assert (= (and b!5504480 (not c!961716)) b!5504482))

(assert (= (or b!5504479 b!5504484) bm!406681))

(assert (= (or b!5504479 b!5504484) bm!406680))

(assert (= (or b!5504488 bm!406681) bm!406684))

(assert (= (or b!5504488 bm!406680) bm!406685))

(assert (= (or b!5504487 bm!406685) bm!406683))

(assert (= (or b!5504487 b!5504488) bm!406682))

(declare-fun m!6511738 () Bool)

(assert (=> bm!406683 m!6511738))

(declare-fun m!6511740 () Bool)

(assert (=> bm!406682 m!6511740))

(declare-fun m!6511742 () Bool)

(assert (=> b!5504481 m!6511742))

(declare-fun m!6511744 () Bool)

(assert (=> bm!406684 m!6511744))

(declare-fun m!6511746 () Bool)

(assert (=> b!5504483 m!6511746))

(assert (=> bm!406552 d!1744760))

(declare-fun bs!1269548 () Bool)

(declare-fun b!5504490 () Bool)

(assert (= bs!1269548 (and b!5504490 b!5503675)))

(declare-fun lambda!294714 () Int)

(assert (=> bs!1269548 (not (= lambda!294714 lambda!294668))))

(declare-fun bs!1269549 () Bool)

(assert (= bs!1269549 (and b!5504490 b!5503580)))

(assert (=> bs!1269549 (not (= lambda!294714 lambda!294663))))

(declare-fun bs!1269550 () Bool)

(assert (= bs!1269550 (and b!5504490 b!5503692)))

(assert (=> bs!1269550 (= (and (= (reg!15810 (regTwo!31475 (regOne!31475 r!7292))) (reg!15810 (regOne!31475 r!7292))) (= (regTwo!31475 (regOne!31475 r!7292)) (regOne!31475 r!7292))) (= lambda!294714 lambda!294669))))

(declare-fun bs!1269551 () Bool)

(assert (= bs!1269551 (and b!5504490 b!5503572)))

(assert (=> bs!1269551 (= (and (= (reg!15810 (regTwo!31475 (regOne!31475 r!7292))) (reg!15810 r!7292)) (= (regTwo!31475 (regOne!31475 r!7292)) r!7292)) (= lambda!294714 lambda!294662))))

(declare-fun bs!1269552 () Bool)

(assert (= bs!1269552 (and b!5504490 b!5503667)))

(assert (=> bs!1269552 (= (and (= (reg!15810 (regTwo!31475 (regOne!31475 r!7292))) (reg!15810 (regTwo!31475 r!7292))) (= (regTwo!31475 (regOne!31475 r!7292)) (regTwo!31475 r!7292))) (= lambda!294714 lambda!294667))))

(declare-fun bs!1269553 () Bool)

(assert (= bs!1269553 (and b!5504490 b!5503700)))

(assert (=> bs!1269553 (not (= lambda!294714 lambda!294670))))

(assert (=> b!5504490 true))

(assert (=> b!5504490 true))

(declare-fun bs!1269554 () Bool)

(declare-fun b!5504498 () Bool)

(assert (= bs!1269554 (and b!5504498 b!5503580)))

(declare-fun lambda!294715 () Int)

(assert (=> bs!1269554 (= (and (= (regOne!31474 (regTwo!31475 (regOne!31475 r!7292))) (regOne!31474 r!7292)) (= (regTwo!31474 (regTwo!31475 (regOne!31475 r!7292))) (regTwo!31474 r!7292))) (= lambda!294715 lambda!294663))))

(declare-fun bs!1269555 () Bool)

(assert (= bs!1269555 (and b!5504498 b!5503692)))

(assert (=> bs!1269555 (not (= lambda!294715 lambda!294669))))

(declare-fun bs!1269556 () Bool)

(assert (= bs!1269556 (and b!5504498 b!5503572)))

(assert (=> bs!1269556 (not (= lambda!294715 lambda!294662))))

(declare-fun bs!1269557 () Bool)

(assert (= bs!1269557 (and b!5504498 b!5503667)))

(assert (=> bs!1269557 (not (= lambda!294715 lambda!294667))))

(declare-fun bs!1269558 () Bool)

(assert (= bs!1269558 (and b!5504498 b!5503700)))

(assert (=> bs!1269558 (= (and (= (regOne!31474 (regTwo!31475 (regOne!31475 r!7292))) (regOne!31474 (regOne!31475 r!7292))) (= (regTwo!31474 (regTwo!31475 (regOne!31475 r!7292))) (regTwo!31474 (regOne!31475 r!7292)))) (= lambda!294715 lambda!294670))))

(declare-fun bs!1269559 () Bool)

(assert (= bs!1269559 (and b!5504498 b!5504490)))

(assert (=> bs!1269559 (not (= lambda!294715 lambda!294714))))

(declare-fun bs!1269560 () Bool)

(assert (= bs!1269560 (and b!5504498 b!5503675)))

(assert (=> bs!1269560 (= (and (= (regOne!31474 (regTwo!31475 (regOne!31475 r!7292))) (regOne!31474 (regTwo!31475 r!7292))) (= (regTwo!31474 (regTwo!31475 (regOne!31475 r!7292))) (regTwo!31474 (regTwo!31475 r!7292)))) (= lambda!294715 lambda!294668))))

(assert (=> b!5504498 true))

(assert (=> b!5504498 true))

(declare-fun bm!406686 () Bool)

(declare-fun c!961720 () Bool)

(declare-fun call!406692 () Bool)

(assert (=> bm!406686 (= call!406692 (Exists!2583 (ite c!961720 lambda!294714 lambda!294715)))))

(declare-fun e!3404670 () Bool)

(assert (=> b!5504490 (= e!3404670 call!406692)))

(declare-fun b!5504491 () Bool)

(declare-fun e!3404672 () Bool)

(assert (=> b!5504491 (= e!3404672 (matchRSpec!2584 (regTwo!31475 (regTwo!31475 (regOne!31475 r!7292))) s!2326))))

(declare-fun bm!406687 () Bool)

(declare-fun call!406691 () Bool)

(assert (=> bm!406687 (= call!406691 (isEmpty!34404 s!2326))))

(declare-fun b!5504492 () Bool)

(declare-fun c!961721 () Bool)

(assert (=> b!5504492 (= c!961721 ((_ is Union!15481) (regTwo!31475 (regOne!31475 r!7292))))))

(declare-fun e!3404671 () Bool)

(declare-fun e!3404673 () Bool)

(assert (=> b!5504492 (= e!3404671 e!3404673)))

(declare-fun b!5504494 () Bool)

(declare-fun c!961722 () Bool)

(assert (=> b!5504494 (= c!961722 ((_ is ElementMatch!15481) (regTwo!31475 (regOne!31475 r!7292))))))

(declare-fun e!3404675 () Bool)

(assert (=> b!5504494 (= e!3404675 e!3404671)))

(declare-fun b!5504495 () Bool)

(declare-fun e!3404674 () Bool)

(assert (=> b!5504495 (= e!3404674 call!406691)))

(declare-fun b!5504496 () Bool)

(assert (=> b!5504496 (= e!3404673 e!3404672)))

(declare-fun res!2345897 () Bool)

(assert (=> b!5504496 (= res!2345897 (matchRSpec!2584 (regOne!31475 (regTwo!31475 (regOne!31475 r!7292))) s!2326))))

(assert (=> b!5504496 (=> res!2345897 e!3404672)))

(declare-fun b!5504497 () Bool)

(declare-fun e!3404676 () Bool)

(assert (=> b!5504497 (= e!3404673 e!3404676)))

(assert (=> b!5504497 (= c!961720 ((_ is Star!15481) (regTwo!31475 (regOne!31475 r!7292))))))

(assert (=> b!5504498 (= e!3404676 call!406692)))

(declare-fun b!5504493 () Bool)

(assert (=> b!5504493 (= e!3404674 e!3404675)))

(declare-fun res!2345899 () Bool)

(assert (=> b!5504493 (= res!2345899 (not ((_ is EmptyLang!15481) (regTwo!31475 (regOne!31475 r!7292)))))))

(assert (=> b!5504493 (=> (not res!2345899) (not e!3404675))))

(declare-fun d!1744762 () Bool)

(declare-fun c!961719 () Bool)

(assert (=> d!1744762 (= c!961719 ((_ is EmptyExpr!15481) (regTwo!31475 (regOne!31475 r!7292))))))

(assert (=> d!1744762 (= (matchRSpec!2584 (regTwo!31475 (regOne!31475 r!7292)) s!2326) e!3404674)))

(declare-fun b!5504499 () Bool)

(assert (=> b!5504499 (= e!3404671 (= s!2326 (Cons!62620 (c!961331 (regTwo!31475 (regOne!31475 r!7292))) Nil!62620)))))

(declare-fun b!5504500 () Bool)

(declare-fun res!2345898 () Bool)

(assert (=> b!5504500 (=> res!2345898 e!3404670)))

(assert (=> b!5504500 (= res!2345898 call!406691)))

(assert (=> b!5504500 (= e!3404676 e!3404670)))

(assert (= (and d!1744762 c!961719) b!5504495))

(assert (= (and d!1744762 (not c!961719)) b!5504493))

(assert (= (and b!5504493 res!2345899) b!5504494))

(assert (= (and b!5504494 c!961722) b!5504499))

(assert (= (and b!5504494 (not c!961722)) b!5504492))

(assert (= (and b!5504492 c!961721) b!5504496))

(assert (= (and b!5504492 (not c!961721)) b!5504497))

(assert (= (and b!5504496 (not res!2345897)) b!5504491))

(assert (= (and b!5504497 c!961720) b!5504500))

(assert (= (and b!5504497 (not c!961720)) b!5504498))

(assert (= (and b!5504500 (not res!2345898)) b!5504490))

(assert (= (or b!5504490 b!5504498) bm!406686))

(assert (= (or b!5504495 b!5504500) bm!406687))

(declare-fun m!6511748 () Bool)

(assert (=> bm!406686 m!6511748))

(declare-fun m!6511750 () Bool)

(assert (=> b!5504491 m!6511750))

(assert (=> bm!406687 m!6511048))

(declare-fun m!6511752 () Bool)

(assert (=> b!5504496 m!6511752))

(assert (=> b!5503693 d!1744762))

(declare-fun b!5504501 () Bool)

(declare-fun e!3404678 () (InoxSet Context!9730))

(declare-fun call!406697 () (InoxSet Context!9730))

(assert (=> b!5504501 (= e!3404678 call!406697)))

(declare-fun b!5504502 () Bool)

(declare-fun c!961725 () Bool)

(assert (=> b!5504502 (= c!961725 ((_ is Star!15481) (h!69066 (exprs!5365 lt!2243920))))))

(declare-fun e!3404679 () (InoxSet Context!9730))

(assert (=> b!5504502 (= e!3404678 e!3404679)))

(declare-fun bm!406688 () Bool)

(declare-fun call!406694 () (InoxSet Context!9730))

(assert (=> bm!406688 (= call!406697 call!406694)))

(declare-fun bm!406689 () Bool)

(declare-fun call!406693 () List!62742)

(declare-fun call!406698 () List!62742)

(assert (=> bm!406689 (= call!406693 call!406698)))

(declare-fun b!5504504 () Bool)

(assert (=> b!5504504 (= e!3404679 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504505 () Bool)

(declare-fun e!3404677 () Bool)

(assert (=> b!5504505 (= e!3404677 (nullable!5518 (regOne!31474 (h!69066 (exprs!5365 lt!2243920)))))))

(declare-fun bm!406690 () Bool)

(declare-fun call!406695 () (InoxSet Context!9730))

(declare-fun c!961723 () Bool)

(assert (=> bm!406690 (= call!406695 (derivationStepZipperDown!827 (ite c!961723 (regOne!31475 (h!69066 (exprs!5365 lt!2243920))) (regOne!31474 (h!69066 (exprs!5365 lt!2243920)))) (ite c!961723 (Context!9731 (t!375981 (exprs!5365 lt!2243920))) (Context!9731 call!406698)) (h!69068 s!2326)))))

(declare-fun b!5504506 () Bool)

(assert (=> b!5504506 (= e!3404679 call!406697)))

(declare-fun b!5504507 () Bool)

(declare-fun e!3404681 () (InoxSet Context!9730))

(assert (=> b!5504507 (= e!3404681 e!3404678)))

(declare-fun c!961726 () Bool)

(assert (=> b!5504507 (= c!961726 ((_ is Concat!24326) (h!69066 (exprs!5365 lt!2243920))))))

(declare-fun bm!406691 () Bool)

(declare-fun c!961727 () Bool)

(declare-fun call!406696 () (InoxSet Context!9730))

(assert (=> bm!406691 (= call!406696 (derivationStepZipperDown!827 (ite c!961723 (regTwo!31475 (h!69066 (exprs!5365 lt!2243920))) (ite c!961727 (regTwo!31474 (h!69066 (exprs!5365 lt!2243920))) (ite c!961726 (regOne!31474 (h!69066 (exprs!5365 lt!2243920))) (reg!15810 (h!69066 (exprs!5365 lt!2243920)))))) (ite (or c!961723 c!961727) (Context!9731 (t!375981 (exprs!5365 lt!2243920))) (Context!9731 call!406693)) (h!69068 s!2326)))))

(declare-fun b!5504508 () Bool)

(declare-fun e!3404680 () (InoxSet Context!9730))

(declare-fun e!3404682 () (InoxSet Context!9730))

(assert (=> b!5504508 (= e!3404680 e!3404682)))

(assert (=> b!5504508 (= c!961723 ((_ is Union!15481) (h!69066 (exprs!5365 lt!2243920))))))

(declare-fun b!5504509 () Bool)

(assert (=> b!5504509 (= e!3404682 ((_ map or) call!406695 call!406696))))

(declare-fun b!5504510 () Bool)

(assert (=> b!5504510 (= e!3404681 ((_ map or) call!406695 call!406694))))

(declare-fun bm!406692 () Bool)

(assert (=> bm!406692 (= call!406698 ($colon$colon!1572 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243920)))) (ite (or c!961727 c!961726) (regTwo!31474 (h!69066 (exprs!5365 lt!2243920))) (h!69066 (exprs!5365 lt!2243920)))))))

(declare-fun d!1744764 () Bool)

(declare-fun c!961724 () Bool)

(assert (=> d!1744764 (= c!961724 (and ((_ is ElementMatch!15481) (h!69066 (exprs!5365 lt!2243920))) (= (c!961331 (h!69066 (exprs!5365 lt!2243920))) (h!69068 s!2326))))))

(assert (=> d!1744764 (= (derivationStepZipperDown!827 (h!69066 (exprs!5365 lt!2243920)) (Context!9731 (t!375981 (exprs!5365 lt!2243920))) (h!69068 s!2326)) e!3404680)))

(declare-fun b!5504503 () Bool)

(assert (=> b!5504503 (= e!3404680 (store ((as const (Array Context!9730 Bool)) false) (Context!9731 (t!375981 (exprs!5365 lt!2243920))) true))))

(declare-fun b!5504511 () Bool)

(assert (=> b!5504511 (= c!961727 e!3404677)))

(declare-fun res!2345900 () Bool)

(assert (=> b!5504511 (=> (not res!2345900) (not e!3404677))))

(assert (=> b!5504511 (= res!2345900 ((_ is Concat!24326) (h!69066 (exprs!5365 lt!2243920))))))

(assert (=> b!5504511 (= e!3404682 e!3404681)))

(declare-fun bm!406693 () Bool)

(assert (=> bm!406693 (= call!406694 call!406696)))

(assert (= (and d!1744764 c!961724) b!5504503))

(assert (= (and d!1744764 (not c!961724)) b!5504508))

(assert (= (and b!5504508 c!961723) b!5504509))

(assert (= (and b!5504508 (not c!961723)) b!5504511))

(assert (= (and b!5504511 res!2345900) b!5504505))

(assert (= (and b!5504511 c!961727) b!5504510))

(assert (= (and b!5504511 (not c!961727)) b!5504507))

(assert (= (and b!5504507 c!961726) b!5504501))

(assert (= (and b!5504507 (not c!961726)) b!5504502))

(assert (= (and b!5504502 c!961725) b!5504506))

(assert (= (and b!5504502 (not c!961725)) b!5504504))

(assert (= (or b!5504501 b!5504506) bm!406689))

(assert (= (or b!5504501 b!5504506) bm!406688))

(assert (= (or b!5504510 bm!406689) bm!406692))

(assert (= (or b!5504510 bm!406688) bm!406693))

(assert (= (or b!5504509 bm!406693) bm!406691))

(assert (= (or b!5504509 b!5504510) bm!406690))

(declare-fun m!6511754 () Bool)

(assert (=> bm!406691 m!6511754))

(declare-fun m!6511756 () Bool)

(assert (=> bm!406690 m!6511756))

(declare-fun m!6511758 () Bool)

(assert (=> b!5504503 m!6511758))

(declare-fun m!6511760 () Bool)

(assert (=> bm!406692 m!6511760))

(declare-fun m!6511762 () Bool)

(assert (=> b!5504505 m!6511762))

(assert (=> bm!406541 d!1744764))

(declare-fun d!1744766 () Bool)

(assert (=> d!1744766 (= (isEmpty!34404 (tail!10882 s!2326)) ((_ is Nil!62620) (tail!10882 s!2326)))))

(assert (=> b!5503715 d!1744766))

(declare-fun d!1744768 () Bool)

(assert (=> d!1744768 (= (tail!10882 s!2326) (t!375983 s!2326))))

(assert (=> b!5503715 d!1744768))

(declare-fun d!1744770 () Bool)

(assert (=> d!1744770 (= (head!11788 (exprs!5365 (h!69067 zl!343))) (h!69066 (exprs!5365 (h!69067 zl!343))))))

(assert (=> b!5503652 d!1744770))

(assert (=> d!1744500 d!1744750))

(declare-fun d!1744772 () Bool)

(assert (=> d!1744772 (= (isEmpty!34405 (tail!10883 (exprs!5365 (h!69067 zl!343)))) ((_ is Nil!62618) (tail!10883 (exprs!5365 (h!69067 zl!343)))))))

(assert (=> b!5503656 d!1744772))

(declare-fun d!1744774 () Bool)

(assert (=> d!1744774 (= (tail!10883 (exprs!5365 (h!69067 zl!343))) (t!375981 (exprs!5365 (h!69067 zl!343))))))

(assert (=> b!5503656 d!1744774))

(declare-fun d!1744776 () Bool)

(declare-fun c!961728 () Bool)

(assert (=> d!1744776 (= c!961728 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun e!3404683 () Bool)

(assert (=> d!1744776 (= (matchZipper!1649 (derivationStepZipper!1592 lt!2243911 (head!11787 s!2326)) (tail!10882 s!2326)) e!3404683)))

(declare-fun b!5504512 () Bool)

(assert (=> b!5504512 (= e!3404683 (nullableZipper!1523 (derivationStepZipper!1592 lt!2243911 (head!11787 s!2326))))))

(declare-fun b!5504513 () Bool)

(assert (=> b!5504513 (= e!3404683 (matchZipper!1649 (derivationStepZipper!1592 (derivationStepZipper!1592 lt!2243911 (head!11787 s!2326)) (head!11787 (tail!10882 s!2326))) (tail!10882 (tail!10882 s!2326))))))

(assert (= (and d!1744776 c!961728) b!5504512))

(assert (= (and d!1744776 (not c!961728)) b!5504513))

(assert (=> d!1744776 m!6511056))

(assert (=> d!1744776 m!6511060))

(assert (=> b!5504512 m!6511272))

(declare-fun m!6511764 () Bool)

(assert (=> b!5504512 m!6511764))

(assert (=> b!5504513 m!6511056))

(declare-fun m!6511766 () Bool)

(assert (=> b!5504513 m!6511766))

(assert (=> b!5504513 m!6511272))

(assert (=> b!5504513 m!6511766))

(declare-fun m!6511768 () Bool)

(assert (=> b!5504513 m!6511768))

(assert (=> b!5504513 m!6511056))

(declare-fun m!6511770 () Bool)

(assert (=> b!5504513 m!6511770))

(assert (=> b!5504513 m!6511768))

(assert (=> b!5504513 m!6511770))

(declare-fun m!6511772 () Bool)

(assert (=> b!5504513 m!6511772))

(assert (=> b!5503880 d!1744776))

(declare-fun bs!1269561 () Bool)

(declare-fun d!1744778 () Bool)

(assert (= bs!1269561 (and d!1744778 b!5503119)))

(declare-fun lambda!294716 () Int)

(assert (=> bs!1269561 (= (= (head!11787 s!2326) (h!69068 s!2326)) (= lambda!294716 lambda!294631))))

(declare-fun bs!1269562 () Bool)

(assert (= bs!1269562 (and d!1744778 d!1744448)))

(assert (=> bs!1269562 (= (= (head!11787 s!2326) (h!69068 s!2326)) (= lambda!294716 lambda!294673))))

(assert (=> d!1744778 true))

(assert (=> d!1744778 (= (derivationStepZipper!1592 lt!2243911 (head!11787 s!2326)) (flatMap!1100 lt!2243911 lambda!294716))))

(declare-fun bs!1269563 () Bool)

(assert (= bs!1269563 d!1744778))

(declare-fun m!6511774 () Bool)

(assert (=> bs!1269563 m!6511774))

(assert (=> b!5503880 d!1744778))

(assert (=> b!5503880 d!1744742))

(assert (=> b!5503880 d!1744768))

(assert (=> b!5503808 d!1744430))

(declare-fun bs!1269564 () Bool)

(declare-fun d!1744780 () Bool)

(assert (= bs!1269564 (and d!1744780 d!1744464)))

(declare-fun lambda!294717 () Int)

(assert (=> bs!1269564 (= lambda!294717 lambda!294679)))

(declare-fun bs!1269565 () Bool)

(assert (= bs!1269565 (and d!1744780 d!1744430)))

(assert (=> bs!1269565 (= lambda!294717 lambda!294666)))

(declare-fun bs!1269566 () Bool)

(assert (= bs!1269566 (and d!1744780 d!1744490)))

(assert (=> bs!1269566 (= lambda!294717 lambda!294683)))

(declare-fun bs!1269567 () Bool)

(assert (= bs!1269567 (and d!1744780 d!1744470)))

(assert (=> bs!1269567 (= lambda!294717 lambda!294682)))

(declare-fun bs!1269568 () Bool)

(assert (= bs!1269568 (and d!1744780 d!1744462)))

(assert (=> bs!1269568 (= lambda!294717 lambda!294676)))

(declare-fun lt!2244005 () List!62742)

(assert (=> d!1744780 (forall!14666 lt!2244005 lambda!294717)))

(declare-fun e!3404684 () List!62742)

(assert (=> d!1744780 (= lt!2244005 e!3404684)))

(declare-fun c!961729 () Bool)

(assert (=> d!1744780 (= c!961729 ((_ is Cons!62619) (t!375982 zl!343)))))

(assert (=> d!1744780 (= (unfocusZipperList!909 (t!375982 zl!343)) lt!2244005)))

(declare-fun b!5504514 () Bool)

(assert (=> b!5504514 (= e!3404684 (Cons!62618 (generalisedConcat!1096 (exprs!5365 (h!69067 (t!375982 zl!343)))) (unfocusZipperList!909 (t!375982 (t!375982 zl!343)))))))

(declare-fun b!5504515 () Bool)

(assert (=> b!5504515 (= e!3404684 Nil!62618)))

(assert (= (and d!1744780 c!961729) b!5504514))

(assert (= (and d!1744780 (not c!961729)) b!5504515))

(declare-fun m!6511776 () Bool)

(assert (=> d!1744780 m!6511776))

(declare-fun m!6511778 () Bool)

(assert (=> b!5504514 m!6511778))

(declare-fun m!6511780 () Bool)

(assert (=> b!5504514 m!6511780))

(assert (=> b!5503808 d!1744780))

(declare-fun d!1744782 () Bool)

(declare-fun choose!41823 (Int) Bool)

(assert (=> d!1744782 (= (Exists!2583 (ite c!961485 lambda!294667 lambda!294668)) (choose!41823 (ite c!961485 lambda!294667 lambda!294668)))))

(declare-fun bs!1269569 () Bool)

(assert (= bs!1269569 d!1744782))

(declare-fun m!6511782 () Bool)

(assert (=> bs!1269569 m!6511782))

(assert (=> bm!406504 d!1744782))

(declare-fun d!1744784 () Bool)

(declare-fun c!961730 () Bool)

(assert (=> d!1744784 (= c!961730 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun e!3404685 () Bool)

(assert (=> d!1744784 (= (matchZipper!1649 (derivationStepZipper!1592 lt!2243917 (head!11787 s!2326)) (tail!10882 s!2326)) e!3404685)))

(declare-fun b!5504516 () Bool)

(assert (=> b!5504516 (= e!3404685 (nullableZipper!1523 (derivationStepZipper!1592 lt!2243917 (head!11787 s!2326))))))

(declare-fun b!5504517 () Bool)

(assert (=> b!5504517 (= e!3404685 (matchZipper!1649 (derivationStepZipper!1592 (derivationStepZipper!1592 lt!2243917 (head!11787 s!2326)) (head!11787 (tail!10882 s!2326))) (tail!10882 (tail!10882 s!2326))))))

(assert (= (and d!1744784 c!961730) b!5504516))

(assert (= (and d!1744784 (not c!961730)) b!5504517))

(assert (=> d!1744784 m!6511056))

(assert (=> d!1744784 m!6511060))

(assert (=> b!5504516 m!6511240))

(declare-fun m!6511784 () Bool)

(assert (=> b!5504516 m!6511784))

(assert (=> b!5504517 m!6511056))

(assert (=> b!5504517 m!6511766))

(assert (=> b!5504517 m!6511240))

(assert (=> b!5504517 m!6511766))

(declare-fun m!6511786 () Bool)

(assert (=> b!5504517 m!6511786))

(assert (=> b!5504517 m!6511056))

(assert (=> b!5504517 m!6511770))

(assert (=> b!5504517 m!6511786))

(assert (=> b!5504517 m!6511770))

(declare-fun m!6511788 () Bool)

(assert (=> b!5504517 m!6511788))

(assert (=> b!5503853 d!1744784))

(declare-fun bs!1269570 () Bool)

(declare-fun d!1744786 () Bool)

(assert (= bs!1269570 (and d!1744786 b!5503119)))

(declare-fun lambda!294718 () Int)

(assert (=> bs!1269570 (= (= (head!11787 s!2326) (h!69068 s!2326)) (= lambda!294718 lambda!294631))))

(declare-fun bs!1269571 () Bool)

(assert (= bs!1269571 (and d!1744786 d!1744448)))

(assert (=> bs!1269571 (= (= (head!11787 s!2326) (h!69068 s!2326)) (= lambda!294718 lambda!294673))))

(declare-fun bs!1269572 () Bool)

(assert (= bs!1269572 (and d!1744786 d!1744778)))

(assert (=> bs!1269572 (= lambda!294718 lambda!294716)))

(assert (=> d!1744786 true))

(assert (=> d!1744786 (= (derivationStepZipper!1592 lt!2243917 (head!11787 s!2326)) (flatMap!1100 lt!2243917 lambda!294718))))

(declare-fun bs!1269573 () Bool)

(assert (= bs!1269573 d!1744786))

(declare-fun m!6511790 () Bool)

(assert (=> bs!1269573 m!6511790))

(assert (=> b!5503853 d!1744786))

(assert (=> b!5503853 d!1744742))

(assert (=> b!5503853 d!1744768))

(declare-fun d!1744788 () Bool)

(declare-fun res!2345905 () Bool)

(declare-fun e!3404690 () Bool)

(assert (=> d!1744788 (=> res!2345905 e!3404690)))

(assert (=> d!1744788 (= res!2345905 ((_ is Nil!62618) lt!2243982))))

(assert (=> d!1744788 (= (forall!14666 lt!2243982 lambda!294679) e!3404690)))

(declare-fun b!5504522 () Bool)

(declare-fun e!3404691 () Bool)

(assert (=> b!5504522 (= e!3404690 e!3404691)))

(declare-fun res!2345906 () Bool)

(assert (=> b!5504522 (=> (not res!2345906) (not e!3404691))))

(declare-fun dynLambda!24474 (Int Regex!15481) Bool)

(assert (=> b!5504522 (= res!2345906 (dynLambda!24474 lambda!294679 (h!69066 lt!2243982)))))

(declare-fun b!5504523 () Bool)

(assert (=> b!5504523 (= e!3404691 (forall!14666 (t!375981 lt!2243982) lambda!294679))))

(assert (= (and d!1744788 (not res!2345905)) b!5504522))

(assert (= (and b!5504522 res!2345906) b!5504523))

(declare-fun b_lambda!208771 () Bool)

(assert (=> (not b_lambda!208771) (not b!5504522)))

(declare-fun m!6511792 () Bool)

(assert (=> b!5504522 m!6511792))

(declare-fun m!6511794 () Bool)

(assert (=> b!5504523 m!6511794))

(assert (=> d!1744464 d!1744788))

(declare-fun bs!1269574 () Bool)

(declare-fun d!1744790 () Bool)

(assert (= bs!1269574 (and d!1744790 d!1744744)))

(declare-fun lambda!294719 () Int)

(assert (=> bs!1269574 (= lambda!294719 lambda!294713)))

(assert (=> d!1744790 (= (nullableZipper!1523 lt!2243912) (exists!2133 lt!2243912 lambda!294719))))

(declare-fun bs!1269575 () Bool)

(assert (= bs!1269575 d!1744790))

(declare-fun m!6511796 () Bool)

(assert (=> bs!1269575 m!6511796))

(assert (=> b!5503734 d!1744790))

(declare-fun d!1744792 () Bool)

(assert (=> d!1744792 (= ($colon$colon!1572 (exprs!5365 lt!2243915) (ite (or c!961560 c!961559) (regTwo!31474 (regOne!31475 r!7292)) (regOne!31475 r!7292))) (Cons!62618 (ite (or c!961560 c!961559) (regTwo!31474 (regOne!31475 r!7292)) (regOne!31475 r!7292)) (exprs!5365 lt!2243915)))))

(assert (=> bm!406553 d!1744792))

(assert (=> d!1744446 d!1744750))

(declare-fun bm!406694 () Bool)

(declare-fun call!406701 () Bool)

(declare-fun c!961732 () Bool)

(assert (=> bm!406694 (= call!406701 (validRegex!7217 (ite c!961732 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))))))

(declare-fun b!5504524 () Bool)

(declare-fun e!3404693 () Bool)

(declare-fun call!406699 () Bool)

(assert (=> b!5504524 (= e!3404693 call!406699)))

(declare-fun b!5504525 () Bool)

(declare-fun e!3404698 () Bool)

(declare-fun e!3404694 () Bool)

(assert (=> b!5504525 (= e!3404698 e!3404694)))

(assert (=> b!5504525 (= c!961732 ((_ is Union!15481) (regOne!31475 r!7292)))))

(declare-fun b!5504526 () Bool)

(declare-fun res!2345910 () Bool)

(assert (=> b!5504526 (=> (not res!2345910) (not e!3404693))))

(assert (=> b!5504526 (= res!2345910 call!406701)))

(assert (=> b!5504526 (= e!3404694 e!3404693)))

(declare-fun b!5504527 () Bool)

(declare-fun e!3404696 () Bool)

(assert (=> b!5504527 (= e!3404696 e!3404698)))

(declare-fun c!961731 () Bool)

(assert (=> b!5504527 (= c!961731 ((_ is Star!15481) (regOne!31475 r!7292)))))

(declare-fun b!5504528 () Bool)

(declare-fun e!3404695 () Bool)

(assert (=> b!5504528 (= e!3404698 e!3404695)))

(declare-fun res!2345907 () Bool)

(assert (=> b!5504528 (= res!2345907 (not (nullable!5518 (reg!15810 (regOne!31475 r!7292)))))))

(assert (=> b!5504528 (=> (not res!2345907) (not e!3404695))))

(declare-fun b!5504529 () Bool)

(declare-fun res!2345911 () Bool)

(declare-fun e!3404692 () Bool)

(assert (=> b!5504529 (=> res!2345911 e!3404692)))

(assert (=> b!5504529 (= res!2345911 (not ((_ is Concat!24326) (regOne!31475 r!7292))))))

(assert (=> b!5504529 (= e!3404694 e!3404692)))

(declare-fun b!5504530 () Bool)

(declare-fun call!406700 () Bool)

(assert (=> b!5504530 (= e!3404695 call!406700)))

(declare-fun d!1744794 () Bool)

(declare-fun res!2345909 () Bool)

(assert (=> d!1744794 (=> res!2345909 e!3404696)))

(assert (=> d!1744794 (= res!2345909 ((_ is ElementMatch!15481) (regOne!31475 r!7292)))))

(assert (=> d!1744794 (= (validRegex!7217 (regOne!31475 r!7292)) e!3404696)))

(declare-fun bm!406695 () Bool)

(assert (=> bm!406695 (= call!406700 (validRegex!7217 (ite c!961731 (reg!15810 (regOne!31475 r!7292)) (ite c!961732 (regTwo!31475 (regOne!31475 r!7292)) (regTwo!31474 (regOne!31475 r!7292))))))))

(declare-fun bm!406696 () Bool)

(assert (=> bm!406696 (= call!406699 call!406700)))

(declare-fun b!5504531 () Bool)

(declare-fun e!3404697 () Bool)

(assert (=> b!5504531 (= e!3404692 e!3404697)))

(declare-fun res!2345908 () Bool)

(assert (=> b!5504531 (=> (not res!2345908) (not e!3404697))))

(assert (=> b!5504531 (= res!2345908 call!406701)))

(declare-fun b!5504532 () Bool)

(assert (=> b!5504532 (= e!3404697 call!406699)))

(assert (= (and d!1744794 (not res!2345909)) b!5504527))

(assert (= (and b!5504527 c!961731) b!5504528))

(assert (= (and b!5504527 (not c!961731)) b!5504525))

(assert (= (and b!5504528 res!2345907) b!5504530))

(assert (= (and b!5504525 c!961732) b!5504526))

(assert (= (and b!5504525 (not c!961732)) b!5504529))

(assert (= (and b!5504526 res!2345910) b!5504524))

(assert (= (and b!5504529 (not res!2345911)) b!5504531))

(assert (= (and b!5504531 res!2345908) b!5504532))

(assert (= (or b!5504524 b!5504532) bm!406696))

(assert (= (or b!5504526 b!5504531) bm!406694))

(assert (= (or b!5504530 bm!406696) bm!406695))

(declare-fun m!6511798 () Bool)

(assert (=> bm!406694 m!6511798))

(declare-fun m!6511800 () Bool)

(assert (=> b!5504528 m!6511800))

(declare-fun m!6511802 () Bool)

(assert (=> bm!406695 m!6511802))

(assert (=> d!1744446 d!1744794))

(declare-fun d!1744796 () Bool)

(assert (=> d!1744796 (= (nullable!5518 (regOne!31474 r!7292)) (nullableFct!1653 (regOne!31474 r!7292)))))

(declare-fun bs!1269576 () Bool)

(assert (= bs!1269576 d!1744796))

(declare-fun m!6511804 () Bool)

(assert (=> bs!1269576 m!6511804))

(assert (=> b!5503762 d!1744796))

(declare-fun bm!406697 () Bool)

(declare-fun call!406704 () Bool)

(declare-fun c!961734 () Bool)

(assert (=> bm!406697 (= call!406704 (validRegex!7217 (ite c!961734 (regOne!31475 lt!2243969) (regOne!31474 lt!2243969))))))

(declare-fun b!5504533 () Bool)

(declare-fun e!3404700 () Bool)

(declare-fun call!406702 () Bool)

(assert (=> b!5504533 (= e!3404700 call!406702)))

(declare-fun b!5504534 () Bool)

(declare-fun e!3404705 () Bool)

(declare-fun e!3404701 () Bool)

(assert (=> b!5504534 (= e!3404705 e!3404701)))

(assert (=> b!5504534 (= c!961734 ((_ is Union!15481) lt!2243969))))

(declare-fun b!5504535 () Bool)

(declare-fun res!2345915 () Bool)

(assert (=> b!5504535 (=> (not res!2345915) (not e!3404700))))

(assert (=> b!5504535 (= res!2345915 call!406704)))

(assert (=> b!5504535 (= e!3404701 e!3404700)))

(declare-fun b!5504536 () Bool)

(declare-fun e!3404703 () Bool)

(assert (=> b!5504536 (= e!3404703 e!3404705)))

(declare-fun c!961733 () Bool)

(assert (=> b!5504536 (= c!961733 ((_ is Star!15481) lt!2243969))))

(declare-fun b!5504537 () Bool)

(declare-fun e!3404702 () Bool)

(assert (=> b!5504537 (= e!3404705 e!3404702)))

(declare-fun res!2345912 () Bool)

(assert (=> b!5504537 (= res!2345912 (not (nullable!5518 (reg!15810 lt!2243969))))))

(assert (=> b!5504537 (=> (not res!2345912) (not e!3404702))))

(declare-fun b!5504538 () Bool)

(declare-fun res!2345916 () Bool)

(declare-fun e!3404699 () Bool)

(assert (=> b!5504538 (=> res!2345916 e!3404699)))

(assert (=> b!5504538 (= res!2345916 (not ((_ is Concat!24326) lt!2243969)))))

(assert (=> b!5504538 (= e!3404701 e!3404699)))

(declare-fun b!5504539 () Bool)

(declare-fun call!406703 () Bool)

(assert (=> b!5504539 (= e!3404702 call!406703)))

(declare-fun d!1744798 () Bool)

(declare-fun res!2345914 () Bool)

(assert (=> d!1744798 (=> res!2345914 e!3404703)))

(assert (=> d!1744798 (= res!2345914 ((_ is ElementMatch!15481) lt!2243969))))

(assert (=> d!1744798 (= (validRegex!7217 lt!2243969) e!3404703)))

(declare-fun bm!406698 () Bool)

(assert (=> bm!406698 (= call!406703 (validRegex!7217 (ite c!961733 (reg!15810 lt!2243969) (ite c!961734 (regTwo!31475 lt!2243969) (regTwo!31474 lt!2243969)))))))

(declare-fun bm!406699 () Bool)

(assert (=> bm!406699 (= call!406702 call!406703)))

(declare-fun b!5504540 () Bool)

(declare-fun e!3404704 () Bool)

(assert (=> b!5504540 (= e!3404699 e!3404704)))

(declare-fun res!2345913 () Bool)

(assert (=> b!5504540 (=> (not res!2345913) (not e!3404704))))

(assert (=> b!5504540 (= res!2345913 call!406704)))

(declare-fun b!5504541 () Bool)

(assert (=> b!5504541 (= e!3404704 call!406702)))

(assert (= (and d!1744798 (not res!2345914)) b!5504536))

(assert (= (and b!5504536 c!961733) b!5504537))

(assert (= (and b!5504536 (not c!961733)) b!5504534))

(assert (= (and b!5504537 res!2345912) b!5504539))

(assert (= (and b!5504534 c!961734) b!5504535))

(assert (= (and b!5504534 (not c!961734)) b!5504538))

(assert (= (and b!5504535 res!2345915) b!5504533))

(assert (= (and b!5504538 (not res!2345916)) b!5504540))

(assert (= (and b!5504540 res!2345913) b!5504541))

(assert (= (or b!5504533 b!5504541) bm!406699))

(assert (= (or b!5504535 b!5504540) bm!406697))

(assert (= (or b!5504539 bm!406699) bm!406698))

(declare-fun m!6511806 () Bool)

(assert (=> bm!406697 m!6511806))

(declare-fun m!6511808 () Bool)

(assert (=> b!5504537 m!6511808))

(declare-fun m!6511810 () Bool)

(assert (=> bm!406698 m!6511810))

(assert (=> d!1744430 d!1744798))

(declare-fun d!1744800 () Bool)

(declare-fun res!2345917 () Bool)

(declare-fun e!3404706 () Bool)

(assert (=> d!1744800 (=> res!2345917 e!3404706)))

(assert (=> d!1744800 (= res!2345917 ((_ is Nil!62618) (exprs!5365 (h!69067 zl!343))))))

(assert (=> d!1744800 (= (forall!14666 (exprs!5365 (h!69067 zl!343)) lambda!294666) e!3404706)))

(declare-fun b!5504542 () Bool)

(declare-fun e!3404707 () Bool)

(assert (=> b!5504542 (= e!3404706 e!3404707)))

(declare-fun res!2345918 () Bool)

(assert (=> b!5504542 (=> (not res!2345918) (not e!3404707))))

(assert (=> b!5504542 (= res!2345918 (dynLambda!24474 lambda!294666 (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5504543 () Bool)

(assert (=> b!5504543 (= e!3404707 (forall!14666 (t!375981 (exprs!5365 (h!69067 zl!343))) lambda!294666))))

(assert (= (and d!1744800 (not res!2345917)) b!5504542))

(assert (= (and b!5504542 res!2345918) b!5504543))

(declare-fun b_lambda!208773 () Bool)

(assert (=> (not b_lambda!208773) (not b!5504542)))

(declare-fun m!6511812 () Bool)

(assert (=> b!5504542 m!6511812))

(declare-fun m!6511814 () Bool)

(assert (=> b!5504543 m!6511814))

(assert (=> d!1744430 d!1744800))

(assert (=> d!1744432 d!1744750))

(declare-fun d!1744802 () Bool)

(assert (=> d!1744802 (= (Exists!2583 (ite c!961456 lambda!294662 lambda!294663)) (choose!41823 (ite c!961456 lambda!294662 lambda!294663)))))

(declare-fun bs!1269577 () Bool)

(assert (= bs!1269577 d!1744802))

(declare-fun m!6511816 () Bool)

(assert (=> bs!1269577 m!6511816))

(assert (=> bm!406499 d!1744802))

(assert (=> d!1744474 d!1744480))

(declare-fun d!1744804 () Bool)

(assert (=> d!1744804 (= (flatMap!1100 lt!2243911 lambda!294631) (dynLambda!24472 lambda!294631 lt!2243906))))

(assert (=> d!1744804 true))

(declare-fun _$13!2022 () Unit!155422)

(assert (=> d!1744804 (= (choose!41819 lt!2243911 lt!2243906 lambda!294631) _$13!2022)))

(declare-fun b_lambda!208775 () Bool)

(assert (=> (not b_lambda!208775) (not d!1744804)))

(declare-fun bs!1269578 () Bool)

(assert (= bs!1269578 d!1744804))

(assert (=> bs!1269578 m!6510764))

(assert (=> bs!1269578 m!6511214))

(assert (=> d!1744474 d!1744804))

(declare-fun d!1744806 () Bool)

(declare-fun res!2345923 () Bool)

(declare-fun e!3404712 () Bool)

(assert (=> d!1744806 (=> res!2345923 e!3404712)))

(assert (=> d!1744806 (= res!2345923 ((_ is Nil!62619) lt!2243993))))

(assert (=> d!1744806 (= (noDuplicate!1484 lt!2243993) e!3404712)))

(declare-fun b!5504548 () Bool)

(declare-fun e!3404713 () Bool)

(assert (=> b!5504548 (= e!3404712 e!3404713)))

(declare-fun res!2345924 () Bool)

(assert (=> b!5504548 (=> (not res!2345924) (not e!3404713))))

(declare-fun contains!19775 (List!62743 Context!9730) Bool)

(assert (=> b!5504548 (= res!2345924 (not (contains!19775 (t!375982 lt!2243993) (h!69067 lt!2243993))))))

(declare-fun b!5504549 () Bool)

(assert (=> b!5504549 (= e!3404713 (noDuplicate!1484 (t!375982 lt!2243993)))))

(assert (= (and d!1744806 (not res!2345923)) b!5504548))

(assert (= (and b!5504548 res!2345924) b!5504549))

(declare-fun m!6511818 () Bool)

(assert (=> b!5504548 m!6511818))

(declare-fun m!6511820 () Bool)

(assert (=> b!5504549 m!6511820))

(assert (=> d!1744492 d!1744806))

(declare-fun d!1744808 () Bool)

(declare-fun e!3404721 () Bool)

(assert (=> d!1744808 e!3404721))

(declare-fun res!2345929 () Bool)

(assert (=> d!1744808 (=> (not res!2345929) (not e!3404721))))

(declare-fun res!2345930 () List!62743)

(assert (=> d!1744808 (= res!2345929 (noDuplicate!1484 res!2345930))))

(declare-fun e!3404722 () Bool)

(assert (=> d!1744808 e!3404722))

(assert (=> d!1744808 (= (choose!41821 z!1189) res!2345930)))

(declare-fun b!5504557 () Bool)

(declare-fun e!3404720 () Bool)

(declare-fun tp!1514528 () Bool)

(assert (=> b!5504557 (= e!3404720 tp!1514528)))

(declare-fun tp!1514529 () Bool)

(declare-fun b!5504556 () Bool)

(assert (=> b!5504556 (= e!3404722 (and (inv!81949 (h!69067 res!2345930)) e!3404720 tp!1514529))))

(declare-fun b!5504558 () Bool)

(assert (=> b!5504558 (= e!3404721 (= (content!11245 res!2345930) z!1189))))

(assert (= b!5504556 b!5504557))

(assert (= (and d!1744808 ((_ is Cons!62619) res!2345930)) b!5504556))

(assert (= (and d!1744808 res!2345929) b!5504558))

(declare-fun m!6511822 () Bool)

(assert (=> d!1744808 m!6511822))

(declare-fun m!6511824 () Bool)

(assert (=> b!5504556 m!6511824))

(declare-fun m!6511826 () Bool)

(assert (=> b!5504558 m!6511826))

(assert (=> d!1744492 d!1744808))

(declare-fun bs!1269579 () Bool)

(declare-fun b!5504559 () Bool)

(assert (= bs!1269579 (and b!5504559 b!5503580)))

(declare-fun lambda!294720 () Int)

(assert (=> bs!1269579 (not (= lambda!294720 lambda!294663))))

(declare-fun bs!1269580 () Bool)

(assert (= bs!1269580 (and b!5504559 b!5503692)))

(assert (=> bs!1269580 (= (and (= (reg!15810 (regOne!31475 (regTwo!31475 r!7292))) (reg!15810 (regOne!31475 r!7292))) (= (regOne!31475 (regTwo!31475 r!7292)) (regOne!31475 r!7292))) (= lambda!294720 lambda!294669))))

(declare-fun bs!1269581 () Bool)

(assert (= bs!1269581 (and b!5504559 b!5503572)))

(assert (=> bs!1269581 (= (and (= (reg!15810 (regOne!31475 (regTwo!31475 r!7292))) (reg!15810 r!7292)) (= (regOne!31475 (regTwo!31475 r!7292)) r!7292)) (= lambda!294720 lambda!294662))))

(declare-fun bs!1269582 () Bool)

(assert (= bs!1269582 (and b!5504559 b!5503667)))

(assert (=> bs!1269582 (= (and (= (reg!15810 (regOne!31475 (regTwo!31475 r!7292))) (reg!15810 (regTwo!31475 r!7292))) (= (regOne!31475 (regTwo!31475 r!7292)) (regTwo!31475 r!7292))) (= lambda!294720 lambda!294667))))

(declare-fun bs!1269583 () Bool)

(assert (= bs!1269583 (and b!5504559 b!5503700)))

(assert (=> bs!1269583 (not (= lambda!294720 lambda!294670))))

(declare-fun bs!1269584 () Bool)

(assert (= bs!1269584 (and b!5504559 b!5504498)))

(assert (=> bs!1269584 (not (= lambda!294720 lambda!294715))))

(declare-fun bs!1269585 () Bool)

(assert (= bs!1269585 (and b!5504559 b!5504490)))

(assert (=> bs!1269585 (= (and (= (reg!15810 (regOne!31475 (regTwo!31475 r!7292))) (reg!15810 (regTwo!31475 (regOne!31475 r!7292)))) (= (regOne!31475 (regTwo!31475 r!7292)) (regTwo!31475 (regOne!31475 r!7292)))) (= lambda!294720 lambda!294714))))

(declare-fun bs!1269586 () Bool)

(assert (= bs!1269586 (and b!5504559 b!5503675)))

(assert (=> bs!1269586 (not (= lambda!294720 lambda!294668))))

(assert (=> b!5504559 true))

(assert (=> b!5504559 true))

(declare-fun bs!1269587 () Bool)

(declare-fun b!5504567 () Bool)

(assert (= bs!1269587 (and b!5504567 b!5503580)))

(declare-fun lambda!294721 () Int)

(assert (=> bs!1269587 (= (and (= (regOne!31474 (regOne!31475 (regTwo!31475 r!7292))) (regOne!31474 r!7292)) (= (regTwo!31474 (regOne!31475 (regTwo!31475 r!7292))) (regTwo!31474 r!7292))) (= lambda!294721 lambda!294663))))

(declare-fun bs!1269588 () Bool)

(assert (= bs!1269588 (and b!5504567 b!5503692)))

(assert (=> bs!1269588 (not (= lambda!294721 lambda!294669))))

(declare-fun bs!1269589 () Bool)

(assert (= bs!1269589 (and b!5504567 b!5503572)))

(assert (=> bs!1269589 (not (= lambda!294721 lambda!294662))))

(declare-fun bs!1269590 () Bool)

(assert (= bs!1269590 (and b!5504567 b!5504559)))

(assert (=> bs!1269590 (not (= lambda!294721 lambda!294720))))

(declare-fun bs!1269591 () Bool)

(assert (= bs!1269591 (and b!5504567 b!5503667)))

(assert (=> bs!1269591 (not (= lambda!294721 lambda!294667))))

(declare-fun bs!1269592 () Bool)

(assert (= bs!1269592 (and b!5504567 b!5503700)))

(assert (=> bs!1269592 (= (and (= (regOne!31474 (regOne!31475 (regTwo!31475 r!7292))) (regOne!31474 (regOne!31475 r!7292))) (= (regTwo!31474 (regOne!31475 (regTwo!31475 r!7292))) (regTwo!31474 (regOne!31475 r!7292)))) (= lambda!294721 lambda!294670))))

(declare-fun bs!1269593 () Bool)

(assert (= bs!1269593 (and b!5504567 b!5504498)))

(assert (=> bs!1269593 (= (and (= (regOne!31474 (regOne!31475 (regTwo!31475 r!7292))) (regOne!31474 (regTwo!31475 (regOne!31475 r!7292)))) (= (regTwo!31474 (regOne!31475 (regTwo!31475 r!7292))) (regTwo!31474 (regTwo!31475 (regOne!31475 r!7292))))) (= lambda!294721 lambda!294715))))

(declare-fun bs!1269594 () Bool)

(assert (= bs!1269594 (and b!5504567 b!5504490)))

(assert (=> bs!1269594 (not (= lambda!294721 lambda!294714))))

(declare-fun bs!1269595 () Bool)

(assert (= bs!1269595 (and b!5504567 b!5503675)))

(assert (=> bs!1269595 (= (and (= (regOne!31474 (regOne!31475 (regTwo!31475 r!7292))) (regOne!31474 (regTwo!31475 r!7292))) (= (regTwo!31474 (regOne!31475 (regTwo!31475 r!7292))) (regTwo!31474 (regTwo!31475 r!7292)))) (= lambda!294721 lambda!294668))))

(assert (=> b!5504567 true))

(assert (=> b!5504567 true))

(declare-fun c!961736 () Bool)

(declare-fun call!406706 () Bool)

(declare-fun bm!406700 () Bool)

(assert (=> bm!406700 (= call!406706 (Exists!2583 (ite c!961736 lambda!294720 lambda!294721)))))

(declare-fun e!3404723 () Bool)

(assert (=> b!5504559 (= e!3404723 call!406706)))

(declare-fun b!5504560 () Bool)

(declare-fun e!3404725 () Bool)

(assert (=> b!5504560 (= e!3404725 (matchRSpec!2584 (regTwo!31475 (regOne!31475 (regTwo!31475 r!7292))) s!2326))))

(declare-fun bm!406701 () Bool)

(declare-fun call!406705 () Bool)

(assert (=> bm!406701 (= call!406705 (isEmpty!34404 s!2326))))

(declare-fun b!5504561 () Bool)

(declare-fun c!961737 () Bool)

(assert (=> b!5504561 (= c!961737 ((_ is Union!15481) (regOne!31475 (regTwo!31475 r!7292))))))

(declare-fun e!3404724 () Bool)

(declare-fun e!3404726 () Bool)

(assert (=> b!5504561 (= e!3404724 e!3404726)))

(declare-fun b!5504563 () Bool)

(declare-fun c!961738 () Bool)

(assert (=> b!5504563 (= c!961738 ((_ is ElementMatch!15481) (regOne!31475 (regTwo!31475 r!7292))))))

(declare-fun e!3404728 () Bool)

(assert (=> b!5504563 (= e!3404728 e!3404724)))

(declare-fun b!5504564 () Bool)

(declare-fun e!3404727 () Bool)

(assert (=> b!5504564 (= e!3404727 call!406705)))

(declare-fun b!5504565 () Bool)

(assert (=> b!5504565 (= e!3404726 e!3404725)))

(declare-fun res!2345931 () Bool)

(assert (=> b!5504565 (= res!2345931 (matchRSpec!2584 (regOne!31475 (regOne!31475 (regTwo!31475 r!7292))) s!2326))))

(assert (=> b!5504565 (=> res!2345931 e!3404725)))

(declare-fun b!5504566 () Bool)

(declare-fun e!3404729 () Bool)

(assert (=> b!5504566 (= e!3404726 e!3404729)))

(assert (=> b!5504566 (= c!961736 ((_ is Star!15481) (regOne!31475 (regTwo!31475 r!7292))))))

(assert (=> b!5504567 (= e!3404729 call!406706)))

(declare-fun b!5504562 () Bool)

(assert (=> b!5504562 (= e!3404727 e!3404728)))

(declare-fun res!2345933 () Bool)

(assert (=> b!5504562 (= res!2345933 (not ((_ is EmptyLang!15481) (regOne!31475 (regTwo!31475 r!7292)))))))

(assert (=> b!5504562 (=> (not res!2345933) (not e!3404728))))

(declare-fun d!1744810 () Bool)

(declare-fun c!961735 () Bool)

(assert (=> d!1744810 (= c!961735 ((_ is EmptyExpr!15481) (regOne!31475 (regTwo!31475 r!7292))))))

(assert (=> d!1744810 (= (matchRSpec!2584 (regOne!31475 (regTwo!31475 r!7292)) s!2326) e!3404727)))

(declare-fun b!5504568 () Bool)

(assert (=> b!5504568 (= e!3404724 (= s!2326 (Cons!62620 (c!961331 (regOne!31475 (regTwo!31475 r!7292))) Nil!62620)))))

(declare-fun b!5504569 () Bool)

(declare-fun res!2345932 () Bool)

(assert (=> b!5504569 (=> res!2345932 e!3404723)))

(assert (=> b!5504569 (= res!2345932 call!406705)))

(assert (=> b!5504569 (= e!3404729 e!3404723)))

(assert (= (and d!1744810 c!961735) b!5504564))

(assert (= (and d!1744810 (not c!961735)) b!5504562))

(assert (= (and b!5504562 res!2345933) b!5504563))

(assert (= (and b!5504563 c!961738) b!5504568))

(assert (= (and b!5504563 (not c!961738)) b!5504561))

(assert (= (and b!5504561 c!961737) b!5504565))

(assert (= (and b!5504561 (not c!961737)) b!5504566))

(assert (= (and b!5504565 (not res!2345931)) b!5504560))

(assert (= (and b!5504566 c!961736) b!5504569))

(assert (= (and b!5504566 (not c!961736)) b!5504567))

(assert (= (and b!5504569 (not res!2345932)) b!5504559))

(assert (= (or b!5504559 b!5504567) bm!406700))

(assert (= (or b!5504564 b!5504569) bm!406701))

(declare-fun m!6511828 () Bool)

(assert (=> bm!406700 m!6511828))

(declare-fun m!6511830 () Bool)

(assert (=> b!5504560 m!6511830))

(assert (=> bm!406701 m!6511048))

(declare-fun m!6511832 () Bool)

(assert (=> b!5504565 m!6511832))

(assert (=> b!5503673 d!1744810))

(declare-fun bm!406702 () Bool)

(declare-fun call!406709 () Bool)

(declare-fun c!961740 () Bool)

(assert (=> bm!406702 (= call!406709 (validRegex!7217 (ite c!961740 (regOne!31475 lt!2243990) (regOne!31474 lt!2243990))))))

(declare-fun b!5504570 () Bool)

(declare-fun e!3404731 () Bool)

(declare-fun call!406707 () Bool)

(assert (=> b!5504570 (= e!3404731 call!406707)))

(declare-fun b!5504571 () Bool)

(declare-fun e!3404736 () Bool)

(declare-fun e!3404732 () Bool)

(assert (=> b!5504571 (= e!3404736 e!3404732)))

(assert (=> b!5504571 (= c!961740 ((_ is Union!15481) lt!2243990))))

(declare-fun b!5504572 () Bool)

(declare-fun res!2345937 () Bool)

(assert (=> b!5504572 (=> (not res!2345937) (not e!3404731))))

(assert (=> b!5504572 (= res!2345937 call!406709)))

(assert (=> b!5504572 (= e!3404732 e!3404731)))

(declare-fun b!5504573 () Bool)

(declare-fun e!3404734 () Bool)

(assert (=> b!5504573 (= e!3404734 e!3404736)))

(declare-fun c!961739 () Bool)

(assert (=> b!5504573 (= c!961739 ((_ is Star!15481) lt!2243990))))

(declare-fun b!5504574 () Bool)

(declare-fun e!3404733 () Bool)

(assert (=> b!5504574 (= e!3404736 e!3404733)))

(declare-fun res!2345934 () Bool)

(assert (=> b!5504574 (= res!2345934 (not (nullable!5518 (reg!15810 lt!2243990))))))

(assert (=> b!5504574 (=> (not res!2345934) (not e!3404733))))

(declare-fun b!5504575 () Bool)

(declare-fun res!2345938 () Bool)

(declare-fun e!3404730 () Bool)

(assert (=> b!5504575 (=> res!2345938 e!3404730)))

(assert (=> b!5504575 (= res!2345938 (not ((_ is Concat!24326) lt!2243990)))))

(assert (=> b!5504575 (= e!3404732 e!3404730)))

(declare-fun b!5504576 () Bool)

(declare-fun call!406708 () Bool)

(assert (=> b!5504576 (= e!3404733 call!406708)))

(declare-fun d!1744812 () Bool)

(declare-fun res!2345936 () Bool)

(assert (=> d!1744812 (=> res!2345936 e!3404734)))

(assert (=> d!1744812 (= res!2345936 ((_ is ElementMatch!15481) lt!2243990))))

(assert (=> d!1744812 (= (validRegex!7217 lt!2243990) e!3404734)))

(declare-fun bm!406703 () Bool)

(assert (=> bm!406703 (= call!406708 (validRegex!7217 (ite c!961739 (reg!15810 lt!2243990) (ite c!961740 (regTwo!31475 lt!2243990) (regTwo!31474 lt!2243990)))))))

(declare-fun bm!406704 () Bool)

(assert (=> bm!406704 (= call!406707 call!406708)))

(declare-fun b!5504577 () Bool)

(declare-fun e!3404735 () Bool)

(assert (=> b!5504577 (= e!3404730 e!3404735)))

(declare-fun res!2345935 () Bool)

(assert (=> b!5504577 (=> (not res!2345935) (not e!3404735))))

(assert (=> b!5504577 (= res!2345935 call!406709)))

(declare-fun b!5504578 () Bool)

(assert (=> b!5504578 (= e!3404735 call!406707)))

(assert (= (and d!1744812 (not res!2345936)) b!5504573))

(assert (= (and b!5504573 c!961739) b!5504574))

(assert (= (and b!5504573 (not c!961739)) b!5504571))

(assert (= (and b!5504574 res!2345934) b!5504576))

(assert (= (and b!5504571 c!961740) b!5504572))

(assert (= (and b!5504571 (not c!961740)) b!5504575))

(assert (= (and b!5504572 res!2345937) b!5504570))

(assert (= (and b!5504575 (not res!2345938)) b!5504577))

(assert (= (and b!5504577 res!2345935) b!5504578))

(assert (= (or b!5504570 b!5504578) bm!406704))

(assert (= (or b!5504572 b!5504577) bm!406702))

(assert (= (or b!5504576 bm!406704) bm!406703))

(declare-fun m!6511834 () Bool)

(assert (=> bm!406702 m!6511834))

(declare-fun m!6511836 () Bool)

(assert (=> b!5504574 m!6511836))

(declare-fun m!6511838 () Bool)

(assert (=> bm!406703 m!6511838))

(assert (=> d!1744488 d!1744812))

(assert (=> d!1744488 d!1744462))

(assert (=> d!1744488 d!1744464))

(declare-fun b!5504579 () Bool)

(declare-fun e!3404738 () (InoxSet Context!9730))

(declare-fun call!406714 () (InoxSet Context!9730))

(assert (=> b!5504579 (= e!3404738 call!406714)))

(declare-fun c!961743 () Bool)

(declare-fun b!5504580 () Bool)

(assert (=> b!5504580 (= c!961743 ((_ is Star!15481) (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))))))

(declare-fun e!3404739 () (InoxSet Context!9730))

(assert (=> b!5504580 (= e!3404738 e!3404739)))

(declare-fun bm!406705 () Bool)

(declare-fun call!406711 () (InoxSet Context!9730))

(assert (=> bm!406705 (= call!406714 call!406711)))

(declare-fun bm!406706 () Bool)

(declare-fun call!406710 () List!62742)

(declare-fun call!406715 () List!62742)

(assert (=> bm!406706 (= call!406710 call!406715)))

(declare-fun b!5504582 () Bool)

(assert (=> b!5504582 (= e!3404739 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504583 () Bool)

(declare-fun e!3404737 () Bool)

(assert (=> b!5504583 (= e!3404737 (nullable!5518 (regOne!31474 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292)))))))))

(declare-fun c!961741 () Bool)

(declare-fun call!406712 () (InoxSet Context!9730))

(declare-fun bm!406707 () Bool)

(assert (=> bm!406707 (= call!406712 (derivationStepZipperDown!827 (ite c!961741 (regOne!31475 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))) (regOne!31474 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292)))))) (ite c!961741 (ite (or c!961517 c!961521) lt!2243915 (Context!9731 call!406530)) (Context!9731 call!406715)) (h!69068 s!2326)))))

(declare-fun b!5504584 () Bool)

(assert (=> b!5504584 (= e!3404739 call!406714)))

(declare-fun b!5504585 () Bool)

(declare-fun e!3404741 () (InoxSet Context!9730))

(assert (=> b!5504585 (= e!3404741 e!3404738)))

(declare-fun c!961744 () Bool)

(assert (=> b!5504585 (= c!961744 ((_ is Concat!24326) (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))))))

(declare-fun c!961745 () Bool)

(declare-fun bm!406708 () Bool)

(declare-fun call!406713 () (InoxSet Context!9730))

(assert (=> bm!406708 (= call!406713 (derivationStepZipperDown!827 (ite c!961741 (regTwo!31475 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))) (ite c!961745 (regTwo!31474 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))) (ite c!961744 (regOne!31474 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))) (reg!15810 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292)))))))) (ite (or c!961741 c!961745) (ite (or c!961517 c!961521) lt!2243915 (Context!9731 call!406530)) (Context!9731 call!406710)) (h!69068 s!2326)))))

(declare-fun b!5504586 () Bool)

(declare-fun e!3404740 () (InoxSet Context!9730))

(declare-fun e!3404742 () (InoxSet Context!9730))

(assert (=> b!5504586 (= e!3404740 e!3404742)))

(assert (=> b!5504586 (= c!961741 ((_ is Union!15481) (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))))))

(declare-fun b!5504587 () Bool)

(assert (=> b!5504587 (= e!3404742 ((_ map or) call!406712 call!406713))))

(declare-fun b!5504588 () Bool)

(assert (=> b!5504588 (= e!3404741 ((_ map or) call!406712 call!406711))))

(declare-fun bm!406709 () Bool)

(assert (=> bm!406709 (= call!406715 ($colon$colon!1572 (exprs!5365 (ite (or c!961517 c!961521) lt!2243915 (Context!9731 call!406530))) (ite (or c!961745 c!961744) (regTwo!31474 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))) (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292)))))))))

(declare-fun d!1744814 () Bool)

(declare-fun c!961742 () Bool)

(assert (=> d!1744814 (= c!961742 (and ((_ is ElementMatch!15481) (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))) (= (c!961331 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))) (h!69068 s!2326))))))

(assert (=> d!1744814 (= (derivationStepZipperDown!827 (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292)))) (ite (or c!961517 c!961521) lt!2243915 (Context!9731 call!406530)) (h!69068 s!2326)) e!3404740)))

(declare-fun b!5504581 () Bool)

(assert (=> b!5504581 (= e!3404740 (store ((as const (Array Context!9730 Bool)) false) (ite (or c!961517 c!961521) lt!2243915 (Context!9731 call!406530)) true))))

(declare-fun b!5504589 () Bool)

(assert (=> b!5504589 (= c!961745 e!3404737)))

(declare-fun res!2345939 () Bool)

(assert (=> b!5504589 (=> (not res!2345939) (not e!3404737))))

(assert (=> b!5504589 (= res!2345939 ((_ is Concat!24326) (ite c!961517 (regTwo!31475 r!7292) (ite c!961521 (regTwo!31474 r!7292) (ite c!961520 (regOne!31474 r!7292) (reg!15810 r!7292))))))))

(assert (=> b!5504589 (= e!3404742 e!3404741)))

(declare-fun bm!406710 () Bool)

(assert (=> bm!406710 (= call!406711 call!406713)))

(assert (= (and d!1744814 c!961742) b!5504581))

(assert (= (and d!1744814 (not c!961742)) b!5504586))

(assert (= (and b!5504586 c!961741) b!5504587))

(assert (= (and b!5504586 (not c!961741)) b!5504589))

(assert (= (and b!5504589 res!2345939) b!5504583))

(assert (= (and b!5504589 c!961745) b!5504588))

(assert (= (and b!5504589 (not c!961745)) b!5504585))

(assert (= (and b!5504585 c!961744) b!5504579))

(assert (= (and b!5504585 (not c!961744)) b!5504580))

(assert (= (and b!5504580 c!961743) b!5504584))

(assert (= (and b!5504580 (not c!961743)) b!5504582))

(assert (= (or b!5504579 b!5504584) bm!406706))

(assert (= (or b!5504579 b!5504584) bm!406705))

(assert (= (or b!5504588 bm!406706) bm!406709))

(assert (= (or b!5504588 bm!406705) bm!406710))

(assert (= (or b!5504587 bm!406710) bm!406708))

(assert (= (or b!5504587 b!5504588) bm!406707))

(declare-fun m!6511840 () Bool)

(assert (=> bm!406708 m!6511840))

(declare-fun m!6511842 () Bool)

(assert (=> bm!406707 m!6511842))

(declare-fun m!6511844 () Bool)

(assert (=> b!5504581 m!6511844))

(declare-fun m!6511846 () Bool)

(assert (=> bm!406709 m!6511846))

(declare-fun m!6511848 () Bool)

(assert (=> b!5504583 m!6511848))

(assert (=> bm!406528 d!1744814))

(assert (=> b!5503707 d!1744742))

(assert (=> d!1744440 d!1744750))

(assert (=> d!1744440 d!1744756))

(declare-fun b!5504591 () Bool)

(declare-fun e!3404744 () Bool)

(assert (=> b!5504591 (= e!3404744 (nullable!5518 (h!69066 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343))))))))))

(declare-fun bm!406711 () Bool)

(declare-fun call!406716 () (InoxSet Context!9730))

(assert (=> bm!406711 (= call!406716 (derivationStepZipperDown!827 (h!69066 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))))) (Context!9731 (t!375981 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343))))))) (h!69068 s!2326)))))

(declare-fun b!5504592 () Bool)

(declare-fun e!3404745 () (InoxSet Context!9730))

(assert (=> b!5504592 (= e!3404745 ((_ map or) call!406716 (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343))))))) (h!69068 s!2326))))))

(declare-fun b!5504593 () Bool)

(declare-fun e!3404743 () (InoxSet Context!9730))

(assert (=> b!5504593 (= e!3404743 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504594 () Bool)

(assert (=> b!5504594 (= e!3404745 e!3404743)))

(declare-fun c!961746 () Bool)

(assert (=> b!5504594 (= c!961746 ((_ is Cons!62618) (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))))))))

(declare-fun d!1744816 () Bool)

(declare-fun c!961747 () Bool)

(assert (=> d!1744816 (= c!961747 e!3404744)))

(declare-fun res!2345940 () Bool)

(assert (=> d!1744816 (=> (not res!2345940) (not e!3404744))))

(assert (=> d!1744816 (= res!2345940 ((_ is Cons!62618) (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))))))))

(assert (=> d!1744816 (= (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 (h!69067 zl!343)))) (h!69068 s!2326)) e!3404745)))

(declare-fun b!5504590 () Bool)

(assert (=> b!5504590 (= e!3404743 call!406716)))

(assert (= (and d!1744816 res!2345940) b!5504591))

(assert (= (and d!1744816 c!961747) b!5504592))

(assert (= (and d!1744816 (not c!961747)) b!5504594))

(assert (= (and b!5504594 c!961746) b!5504590))

(assert (= (and b!5504594 (not c!961746)) b!5504593))

(assert (= (or b!5504592 b!5504590) bm!406711))

(declare-fun m!6511850 () Bool)

(assert (=> b!5504591 m!6511850))

(declare-fun m!6511852 () Bool)

(assert (=> bm!406711 m!6511852))

(declare-fun m!6511854 () Bool)

(assert (=> b!5504592 m!6511854))

(assert (=> b!5503731 d!1744816))

(declare-fun d!1744818 () Bool)

(assert (=> d!1744818 (= (nullable!5518 (regOne!31474 (regTwo!31475 r!7292))) (nullableFct!1653 (regOne!31474 (regTwo!31475 r!7292))))))

(declare-fun bs!1269596 () Bool)

(assert (= bs!1269596 d!1744818))

(declare-fun m!6511856 () Bool)

(assert (=> bs!1269596 m!6511856))

(assert (=> b!5503861 d!1744818))

(assert (=> b!5503619 d!1744742))

(declare-fun d!1744820 () Bool)

(declare-fun c!961748 () Bool)

(assert (=> d!1744820 (= c!961748 (isEmpty!34404 (tail!10882 (t!375983 s!2326))))))

(declare-fun e!3404746 () Bool)

(assert (=> d!1744820 (= (matchZipper!1649 (derivationStepZipper!1592 lt!2243916 (head!11787 (t!375983 s!2326))) (tail!10882 (t!375983 s!2326))) e!3404746)))

(declare-fun b!5504595 () Bool)

(assert (=> b!5504595 (= e!3404746 (nullableZipper!1523 (derivationStepZipper!1592 lt!2243916 (head!11787 (t!375983 s!2326)))))))

(declare-fun b!5504596 () Bool)

(assert (=> b!5504596 (= e!3404746 (matchZipper!1649 (derivationStepZipper!1592 (derivationStepZipper!1592 lt!2243916 (head!11787 (t!375983 s!2326))) (head!11787 (tail!10882 (t!375983 s!2326)))) (tail!10882 (tail!10882 (t!375983 s!2326)))))))

(assert (= (and d!1744820 c!961748) b!5504595))

(assert (= (and d!1744820 (not c!961748)) b!5504596))

(assert (=> d!1744820 m!6511098))

(declare-fun m!6511858 () Bool)

(assert (=> d!1744820 m!6511858))

(assert (=> b!5504595 m!6511198))

(declare-fun m!6511860 () Bool)

(assert (=> b!5504595 m!6511860))

(assert (=> b!5504596 m!6511098))

(declare-fun m!6511862 () Bool)

(assert (=> b!5504596 m!6511862))

(assert (=> b!5504596 m!6511198))

(assert (=> b!5504596 m!6511862))

(declare-fun m!6511864 () Bool)

(assert (=> b!5504596 m!6511864))

(assert (=> b!5504596 m!6511098))

(declare-fun m!6511866 () Bool)

(assert (=> b!5504596 m!6511866))

(assert (=> b!5504596 m!6511864))

(assert (=> b!5504596 m!6511866))

(declare-fun m!6511868 () Bool)

(assert (=> b!5504596 m!6511868))

(assert (=> b!5503811 d!1744820))

(declare-fun bs!1269597 () Bool)

(declare-fun d!1744822 () Bool)

(assert (= bs!1269597 (and d!1744822 b!5503119)))

(declare-fun lambda!294722 () Int)

(assert (=> bs!1269597 (= (= (head!11787 (t!375983 s!2326)) (h!69068 s!2326)) (= lambda!294722 lambda!294631))))

(declare-fun bs!1269598 () Bool)

(assert (= bs!1269598 (and d!1744822 d!1744448)))

(assert (=> bs!1269598 (= (= (head!11787 (t!375983 s!2326)) (h!69068 s!2326)) (= lambda!294722 lambda!294673))))

(declare-fun bs!1269599 () Bool)

(assert (= bs!1269599 (and d!1744822 d!1744778)))

(assert (=> bs!1269599 (= (= (head!11787 (t!375983 s!2326)) (head!11787 s!2326)) (= lambda!294722 lambda!294716))))

(declare-fun bs!1269600 () Bool)

(assert (= bs!1269600 (and d!1744822 d!1744786)))

(assert (=> bs!1269600 (= (= (head!11787 (t!375983 s!2326)) (head!11787 s!2326)) (= lambda!294722 lambda!294718))))

(assert (=> d!1744822 true))

(assert (=> d!1744822 (= (derivationStepZipper!1592 lt!2243916 (head!11787 (t!375983 s!2326))) (flatMap!1100 lt!2243916 lambda!294722))))

(declare-fun bs!1269601 () Bool)

(assert (= bs!1269601 d!1744822))

(declare-fun m!6511870 () Bool)

(assert (=> bs!1269601 m!6511870))

(assert (=> b!5503811 d!1744822))

(declare-fun d!1744824 () Bool)

(assert (=> d!1744824 (= (head!11787 (t!375983 s!2326)) (h!69068 (t!375983 s!2326)))))

(assert (=> b!5503811 d!1744824))

(declare-fun d!1744826 () Bool)

(assert (=> d!1744826 (= (tail!10882 (t!375983 s!2326)) (t!375983 (t!375983 s!2326)))))

(assert (=> b!5503811 d!1744826))

(declare-fun b!5504597 () Bool)

(declare-fun e!3404748 () (InoxSet Context!9730))

(declare-fun call!406721 () (InoxSet Context!9730))

(assert (=> b!5504597 (= e!3404748 call!406721)))

(declare-fun b!5504598 () Bool)

(declare-fun c!961751 () Bool)

(assert (=> b!5504598 (= c!961751 ((_ is Star!15481) (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))))))

(declare-fun e!3404749 () (InoxSet Context!9730))

(assert (=> b!5504598 (= e!3404748 e!3404749)))

(declare-fun bm!406712 () Bool)

(declare-fun call!406718 () (InoxSet Context!9730))

(assert (=> bm!406712 (= call!406721 call!406718)))

(declare-fun bm!406713 () Bool)

(declare-fun call!406717 () List!62742)

(declare-fun call!406722 () List!62742)

(assert (=> bm!406713 (= call!406717 call!406722)))

(declare-fun b!5504600 () Bool)

(assert (=> b!5504600 (= e!3404749 ((as const (Array Context!9730 Bool)) false))))

(declare-fun e!3404747 () Bool)

(declare-fun b!5504601 () Bool)

(assert (=> b!5504601 (= e!3404747 (nullable!5518 (regOne!31474 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292))))))))))

(declare-fun c!961749 () Bool)

(declare-fun bm!406714 () Bool)

(declare-fun call!406719 () (InoxSet Context!9730))

(assert (=> bm!406714 (= call!406719 (derivationStepZipperDown!827 (ite c!961749 (regOne!31475 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))) (regOne!31474 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292))))))) (ite c!961749 (ite (or c!961551 c!961555) lt!2243915 (Context!9731 call!406548)) (Context!9731 call!406722)) (h!69068 s!2326)))))

(declare-fun b!5504602 () Bool)

(assert (=> b!5504602 (= e!3404749 call!406721)))

(declare-fun b!5504603 () Bool)

(declare-fun e!3404751 () (InoxSet Context!9730))

(assert (=> b!5504603 (= e!3404751 e!3404748)))

(declare-fun c!961752 () Bool)

(assert (=> b!5504603 (= c!961752 ((_ is Concat!24326) (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))))))

(declare-fun call!406720 () (InoxSet Context!9730))

(declare-fun bm!406715 () Bool)

(declare-fun c!961753 () Bool)

(assert (=> bm!406715 (= call!406720 (derivationStepZipperDown!827 (ite c!961749 (regTwo!31475 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))) (ite c!961753 (regTwo!31474 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))) (ite c!961752 (regOne!31474 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))) (reg!15810 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292))))))))) (ite (or c!961749 c!961753) (ite (or c!961551 c!961555) lt!2243915 (Context!9731 call!406548)) (Context!9731 call!406717)) (h!69068 s!2326)))))

(declare-fun b!5504604 () Bool)

(declare-fun e!3404750 () (InoxSet Context!9730))

(declare-fun e!3404752 () (InoxSet Context!9730))

(assert (=> b!5504604 (= e!3404750 e!3404752)))

(assert (=> b!5504604 (= c!961749 ((_ is Union!15481) (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))))))

(declare-fun b!5504605 () Bool)

(assert (=> b!5504605 (= e!3404752 ((_ map or) call!406719 call!406720))))

(declare-fun b!5504606 () Bool)

(assert (=> b!5504606 (= e!3404751 ((_ map or) call!406719 call!406718))))

(declare-fun bm!406716 () Bool)

(assert (=> bm!406716 (= call!406722 ($colon$colon!1572 (exprs!5365 (ite (or c!961551 c!961555) lt!2243915 (Context!9731 call!406548))) (ite (or c!961753 c!961752) (regTwo!31474 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))) (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292))))))))))

(declare-fun d!1744828 () Bool)

(declare-fun c!961750 () Bool)

(assert (=> d!1744828 (= c!961750 (and ((_ is ElementMatch!15481) (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))) (= (c!961331 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))) (h!69068 s!2326))))))

(assert (=> d!1744828 (= (derivationStepZipperDown!827 (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292))))) (ite (or c!961551 c!961555) lt!2243915 (Context!9731 call!406548)) (h!69068 s!2326)) e!3404750)))

(declare-fun b!5504599 () Bool)

(assert (=> b!5504599 (= e!3404750 (store ((as const (Array Context!9730 Bool)) false) (ite (or c!961551 c!961555) lt!2243915 (Context!9731 call!406548)) true))))

(declare-fun b!5504607 () Bool)

(assert (=> b!5504607 (= c!961753 e!3404747)))

(declare-fun res!2345941 () Bool)

(assert (=> b!5504607 (=> (not res!2345941) (not e!3404747))))

(assert (=> b!5504607 (= res!2345941 ((_ is Concat!24326) (ite c!961551 (regTwo!31475 (regTwo!31475 r!7292)) (ite c!961555 (regTwo!31474 (regTwo!31475 r!7292)) (ite c!961554 (regOne!31474 (regTwo!31475 r!7292)) (reg!15810 (regTwo!31475 r!7292)))))))))

(assert (=> b!5504607 (= e!3404752 e!3404751)))

(declare-fun bm!406717 () Bool)

(assert (=> bm!406717 (= call!406718 call!406720)))

(assert (= (and d!1744828 c!961750) b!5504599))

(assert (= (and d!1744828 (not c!961750)) b!5504604))

(assert (= (and b!5504604 c!961749) b!5504605))

(assert (= (and b!5504604 (not c!961749)) b!5504607))

(assert (= (and b!5504607 res!2345941) b!5504601))

(assert (= (and b!5504607 c!961753) b!5504606))

(assert (= (and b!5504607 (not c!961753)) b!5504603))

(assert (= (and b!5504603 c!961752) b!5504597))

(assert (= (and b!5504603 (not c!961752)) b!5504598))

(assert (= (and b!5504598 c!961751) b!5504602))

(assert (= (and b!5504598 (not c!961751)) b!5504600))

(assert (= (or b!5504597 b!5504602) bm!406713))

(assert (= (or b!5504597 b!5504602) bm!406712))

(assert (= (or b!5504606 bm!406713) bm!406716))

(assert (= (or b!5504606 bm!406712) bm!406717))

(assert (= (or b!5504605 bm!406717) bm!406715))

(assert (= (or b!5504605 b!5504606) bm!406714))

(declare-fun m!6511872 () Bool)

(assert (=> bm!406715 m!6511872))

(declare-fun m!6511874 () Bool)

(assert (=> bm!406714 m!6511874))

(declare-fun m!6511876 () Bool)

(assert (=> b!5504599 m!6511876))

(declare-fun m!6511878 () Bool)

(assert (=> bm!406716 m!6511878))

(declare-fun m!6511880 () Bool)

(assert (=> b!5504601 m!6511880))

(assert (=> bm!406546 d!1744828))

(declare-fun b!5504608 () Bool)

(declare-fun e!3404756 () Bool)

(declare-fun e!3404758 () Bool)

(assert (=> b!5504608 (= e!3404756 e!3404758)))

(declare-fun c!961755 () Bool)

(assert (=> b!5504608 (= c!961755 ((_ is EmptyLang!15481) (derivativeStep!4357 r!7292 (head!11787 s!2326))))))

(declare-fun b!5504609 () Bool)

(declare-fun res!2345949 () Bool)

(declare-fun e!3404757 () Bool)

(assert (=> b!5504609 (=> res!2345949 e!3404757)))

(declare-fun e!3404755 () Bool)

(assert (=> b!5504609 (= res!2345949 e!3404755)))

(declare-fun res!2345946 () Bool)

(assert (=> b!5504609 (=> (not res!2345946) (not e!3404755))))

(declare-fun lt!2244006 () Bool)

(assert (=> b!5504609 (= res!2345946 lt!2244006)))

(declare-fun b!5504610 () Bool)

(declare-fun e!3404753 () Bool)

(assert (=> b!5504610 (= e!3404757 e!3404753)))

(declare-fun res!2345947 () Bool)

(assert (=> b!5504610 (=> (not res!2345947) (not e!3404753))))

(assert (=> b!5504610 (= res!2345947 (not lt!2244006))))

(declare-fun b!5504611 () Bool)

(assert (=> b!5504611 (= e!3404758 (not lt!2244006))))

(declare-fun b!5504612 () Bool)

(assert (=> b!5504612 (= e!3404755 (= (head!11787 (tail!10882 s!2326)) (c!961331 (derivativeStep!4357 r!7292 (head!11787 s!2326)))))))

(declare-fun bm!406718 () Bool)

(declare-fun call!406723 () Bool)

(assert (=> bm!406718 (= call!406723 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun b!5504613 () Bool)

(declare-fun res!2345942 () Bool)

(declare-fun e!3404754 () Bool)

(assert (=> b!5504613 (=> res!2345942 e!3404754)))

(assert (=> b!5504613 (= res!2345942 (not (isEmpty!34404 (tail!10882 (tail!10882 s!2326)))))))

(declare-fun d!1744830 () Bool)

(assert (=> d!1744830 e!3404756))

(declare-fun c!961756 () Bool)

(assert (=> d!1744830 (= c!961756 ((_ is EmptyExpr!15481) (derivativeStep!4357 r!7292 (head!11787 s!2326))))))

(declare-fun e!3404759 () Bool)

(assert (=> d!1744830 (= lt!2244006 e!3404759)))

(declare-fun c!961754 () Bool)

(assert (=> d!1744830 (= c!961754 (isEmpty!34404 (tail!10882 s!2326)))))

(assert (=> d!1744830 (validRegex!7217 (derivativeStep!4357 r!7292 (head!11787 s!2326)))))

(assert (=> d!1744830 (= (matchR!7666 (derivativeStep!4357 r!7292 (head!11787 s!2326)) (tail!10882 s!2326)) lt!2244006)))

(declare-fun b!5504614 () Bool)

(assert (=> b!5504614 (= e!3404753 e!3404754)))

(declare-fun res!2345945 () Bool)

(assert (=> b!5504614 (=> res!2345945 e!3404754)))

(assert (=> b!5504614 (= res!2345945 call!406723)))

(declare-fun b!5504615 () Bool)

(assert (=> b!5504615 (= e!3404759 (matchR!7666 (derivativeStep!4357 (derivativeStep!4357 r!7292 (head!11787 s!2326)) (head!11787 (tail!10882 s!2326))) (tail!10882 (tail!10882 s!2326))))))

(declare-fun b!5504616 () Bool)

(assert (=> b!5504616 (= e!3404754 (not (= (head!11787 (tail!10882 s!2326)) (c!961331 (derivativeStep!4357 r!7292 (head!11787 s!2326))))))))

(declare-fun b!5504617 () Bool)

(assert (=> b!5504617 (= e!3404759 (nullable!5518 (derivativeStep!4357 r!7292 (head!11787 s!2326))))))

(declare-fun b!5504618 () Bool)

(assert (=> b!5504618 (= e!3404756 (= lt!2244006 call!406723))))

(declare-fun b!5504619 () Bool)

(declare-fun res!2345944 () Bool)

(assert (=> b!5504619 (=> (not res!2345944) (not e!3404755))))

(assert (=> b!5504619 (= res!2345944 (not call!406723))))

(declare-fun b!5504620 () Bool)

(declare-fun res!2345948 () Bool)

(assert (=> b!5504620 (=> (not res!2345948) (not e!3404755))))

(assert (=> b!5504620 (= res!2345948 (isEmpty!34404 (tail!10882 (tail!10882 s!2326))))))

(declare-fun b!5504621 () Bool)

(declare-fun res!2345943 () Bool)

(assert (=> b!5504621 (=> res!2345943 e!3404757)))

(assert (=> b!5504621 (= res!2345943 (not ((_ is ElementMatch!15481) (derivativeStep!4357 r!7292 (head!11787 s!2326)))))))

(assert (=> b!5504621 (= e!3404758 e!3404757)))

(assert (= (and d!1744830 c!961754) b!5504617))

(assert (= (and d!1744830 (not c!961754)) b!5504615))

(assert (= (and d!1744830 c!961756) b!5504618))

(assert (= (and d!1744830 (not c!961756)) b!5504608))

(assert (= (and b!5504608 c!961755) b!5504611))

(assert (= (and b!5504608 (not c!961755)) b!5504621))

(assert (= (and b!5504621 (not res!2345943)) b!5504609))

(assert (= (and b!5504609 res!2345946) b!5504619))

(assert (= (and b!5504619 res!2345944) b!5504620))

(assert (= (and b!5504620 res!2345948) b!5504612))

(assert (= (and b!5504609 (not res!2345949)) b!5504610))

(assert (= (and b!5504610 res!2345947) b!5504614))

(assert (= (and b!5504614 (not res!2345945)) b!5504613))

(assert (= (and b!5504613 (not res!2345942)) b!5504616))

(assert (= (or b!5504618 b!5504614 b!5504619) bm!406718))

(assert (=> b!5504617 m!6511054))

(declare-fun m!6511882 () Bool)

(assert (=> b!5504617 m!6511882))

(assert (=> b!5504612 m!6511056))

(assert (=> b!5504612 m!6511766))

(assert (=> b!5504615 m!6511056))

(assert (=> b!5504615 m!6511766))

(assert (=> b!5504615 m!6511054))

(assert (=> b!5504615 m!6511766))

(declare-fun m!6511884 () Bool)

(assert (=> b!5504615 m!6511884))

(assert (=> b!5504615 m!6511056))

(assert (=> b!5504615 m!6511770))

(assert (=> b!5504615 m!6511884))

(assert (=> b!5504615 m!6511770))

(declare-fun m!6511886 () Bool)

(assert (=> b!5504615 m!6511886))

(assert (=> b!5504613 m!6511056))

(assert (=> b!5504613 m!6511770))

(assert (=> b!5504613 m!6511770))

(declare-fun m!6511888 () Bool)

(assert (=> b!5504613 m!6511888))

(assert (=> bm!406718 m!6511056))

(assert (=> bm!406718 m!6511060))

(assert (=> b!5504620 m!6511056))

(assert (=> b!5504620 m!6511770))

(assert (=> b!5504620 m!6511770))

(assert (=> b!5504620 m!6511888))

(assert (=> b!5504616 m!6511056))

(assert (=> b!5504616 m!6511766))

(assert (=> d!1744830 m!6511056))

(assert (=> d!1744830 m!6511060))

(assert (=> d!1744830 m!6511054))

(declare-fun m!6511890 () Bool)

(assert (=> d!1744830 m!6511890))

(assert (=> b!5503622 d!1744830))

(declare-fun b!5504643 () Bool)

(declare-fun e!3404773 () Regex!15481)

(assert (=> b!5504643 (= e!3404773 EmptyLang!15481)))

(declare-fun b!5504644 () Bool)

(declare-fun c!961767 () Bool)

(assert (=> b!5504644 (= c!961767 (nullable!5518 (regOne!31474 r!7292)))))

(declare-fun e!3404771 () Regex!15481)

(declare-fun e!3404772 () Regex!15481)

(assert (=> b!5504644 (= e!3404771 e!3404772)))

(declare-fun b!5504645 () Bool)

(declare-fun e!3404774 () Regex!15481)

(assert (=> b!5504645 (= e!3404774 (ite (= (head!11787 s!2326) (c!961331 r!7292)) EmptyExpr!15481 EmptyLang!15481))))

(declare-fun bm!406727 () Bool)

(declare-fun call!406734 () Regex!15481)

(declare-fun call!406733 () Regex!15481)

(assert (=> bm!406727 (= call!406734 call!406733)))

(declare-fun bm!406728 () Bool)

(declare-fun call!406735 () Regex!15481)

(assert (=> bm!406728 (= call!406733 call!406735)))

(declare-fun b!5504646 () Bool)

(declare-fun e!3404770 () Regex!15481)

(declare-fun call!406732 () Regex!15481)

(assert (=> b!5504646 (= e!3404770 (Union!15481 call!406735 call!406732))))

(declare-fun c!961771 () Bool)

(declare-fun bm!406729 () Bool)

(assert (=> bm!406729 (= call!406732 (derivativeStep!4357 (ite c!961771 (regTwo!31475 r!7292) (regOne!31474 r!7292)) (head!11787 s!2326)))))

(declare-fun b!5504647 () Bool)

(assert (=> b!5504647 (= e!3404771 (Concat!24326 call!406733 r!7292))))

(declare-fun b!5504648 () Bool)

(assert (=> b!5504648 (= e!3404770 e!3404771)))

(declare-fun c!961770 () Bool)

(assert (=> b!5504648 (= c!961770 ((_ is Star!15481) r!7292))))

(declare-fun b!5504642 () Bool)

(assert (=> b!5504642 (= e!3404772 (Union!15481 (Concat!24326 call!406732 (regTwo!31474 r!7292)) call!406734))))

(declare-fun d!1744832 () Bool)

(declare-fun lt!2244009 () Regex!15481)

(assert (=> d!1744832 (validRegex!7217 lt!2244009)))

(assert (=> d!1744832 (= lt!2244009 e!3404773)))

(declare-fun c!961769 () Bool)

(assert (=> d!1744832 (= c!961769 (or ((_ is EmptyExpr!15481) r!7292) ((_ is EmptyLang!15481) r!7292)))))

(assert (=> d!1744832 (validRegex!7217 r!7292)))

(assert (=> d!1744832 (= (derivativeStep!4357 r!7292 (head!11787 s!2326)) lt!2244009)))

(declare-fun b!5504649 () Bool)

(assert (=> b!5504649 (= c!961771 ((_ is Union!15481) r!7292))))

(assert (=> b!5504649 (= e!3404774 e!3404770)))

(declare-fun b!5504650 () Bool)

(assert (=> b!5504650 (= e!3404772 (Union!15481 (Concat!24326 call!406734 (regTwo!31474 r!7292)) EmptyLang!15481))))

(declare-fun b!5504651 () Bool)

(assert (=> b!5504651 (= e!3404773 e!3404774)))

(declare-fun c!961768 () Bool)

(assert (=> b!5504651 (= c!961768 ((_ is ElementMatch!15481) r!7292))))

(declare-fun bm!406730 () Bool)

(assert (=> bm!406730 (= call!406735 (derivativeStep!4357 (ite c!961771 (regOne!31475 r!7292) (ite c!961770 (reg!15810 r!7292) (ite c!961767 (regTwo!31474 r!7292) (regOne!31474 r!7292)))) (head!11787 s!2326)))))

(assert (= (and d!1744832 c!961769) b!5504643))

(assert (= (and d!1744832 (not c!961769)) b!5504651))

(assert (= (and b!5504651 c!961768) b!5504645))

(assert (= (and b!5504651 (not c!961768)) b!5504649))

(assert (= (and b!5504649 c!961771) b!5504646))

(assert (= (and b!5504649 (not c!961771)) b!5504648))

(assert (= (and b!5504648 c!961770) b!5504647))

(assert (= (and b!5504648 (not c!961770)) b!5504644))

(assert (= (and b!5504644 c!961767) b!5504642))

(assert (= (and b!5504644 (not c!961767)) b!5504650))

(assert (= (or b!5504642 b!5504650) bm!406727))

(assert (= (or b!5504647 bm!406727) bm!406728))

(assert (= (or b!5504646 b!5504642) bm!406729))

(assert (= (or b!5504646 bm!406728) bm!406730))

(assert (=> b!5504644 m!6511164))

(assert (=> bm!406729 m!6511052))

(declare-fun m!6511892 () Bool)

(assert (=> bm!406729 m!6511892))

(declare-fun m!6511894 () Bool)

(assert (=> d!1744832 m!6511894))

(assert (=> d!1744832 m!6510780))

(assert (=> bm!406730 m!6511052))

(declare-fun m!6511896 () Bool)

(assert (=> bm!406730 m!6511896))

(assert (=> b!5503622 d!1744832))

(assert (=> b!5503622 d!1744742))

(assert (=> b!5503622 d!1744768))

(assert (=> b!5503682 d!1744742))

(assert (=> b!5503814 d!1744456))

(declare-fun d!1744834 () Bool)

(assert (=> d!1744834 (= (nullable!5518 (regOne!31475 r!7292)) (nullableFct!1653 (regOne!31475 r!7292)))))

(declare-fun bs!1269602 () Bool)

(assert (= bs!1269602 d!1744834))

(declare-fun m!6511898 () Bool)

(assert (=> bs!1269602 m!6511898))

(assert (=> b!5503712 d!1744834))

(declare-fun d!1744836 () Bool)

(assert (=> d!1744836 (= (nullable!5518 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (nullableFct!1653 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))))

(declare-fun bs!1269603 () Bool)

(assert (= bs!1269603 d!1744836))

(declare-fun m!6511900 () Bool)

(assert (=> bs!1269603 m!6511900))

(assert (=> b!5503770 d!1744836))

(declare-fun b!5504652 () Bool)

(declare-fun e!3404776 () (InoxSet Context!9730))

(declare-fun call!406740 () (InoxSet Context!9730))

(assert (=> b!5504652 (= e!3404776 call!406740)))

(declare-fun b!5504653 () Bool)

(declare-fun c!961774 () Bool)

(assert (=> b!5504653 (= c!961774 ((_ is Star!15481) (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))))))

(declare-fun e!3404777 () (InoxSet Context!9730))

(assert (=> b!5504653 (= e!3404776 e!3404777)))

(declare-fun bm!406731 () Bool)

(declare-fun call!406737 () (InoxSet Context!9730))

(assert (=> bm!406731 (= call!406740 call!406737)))

(declare-fun bm!406732 () Bool)

(declare-fun call!406736 () List!62742)

(declare-fun call!406741 () List!62742)

(assert (=> bm!406732 (= call!406736 call!406741)))

(declare-fun b!5504655 () Bool)

(assert (=> b!5504655 (= e!3404777 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504656 () Bool)

(declare-fun e!3404775 () Bool)

(assert (=> b!5504656 (= e!3404775 (nullable!5518 (regOne!31474 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292))))))))

(declare-fun bm!406733 () Bool)

(declare-fun c!961772 () Bool)

(declare-fun call!406738 () (InoxSet Context!9730))

(assert (=> bm!406733 (= call!406738 (derivationStepZipperDown!827 (ite c!961772 (regOne!31475 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))) (regOne!31474 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292))))) (ite c!961772 (ite c!961556 lt!2243915 (Context!9731 call!406559)) (Context!9731 call!406741)) (h!69068 s!2326)))))

(declare-fun b!5504657 () Bool)

(assert (=> b!5504657 (= e!3404777 call!406740)))

(declare-fun b!5504658 () Bool)

(declare-fun e!3404779 () (InoxSet Context!9730))

(assert (=> b!5504658 (= e!3404779 e!3404776)))

(declare-fun c!961775 () Bool)

(assert (=> b!5504658 (= c!961775 ((_ is Concat!24326) (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))))))

(declare-fun call!406739 () (InoxSet Context!9730))

(declare-fun c!961776 () Bool)

(declare-fun bm!406734 () Bool)

(assert (=> bm!406734 (= call!406739 (derivationStepZipperDown!827 (ite c!961772 (regTwo!31475 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))) (ite c!961776 (regTwo!31474 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))) (ite c!961775 (regOne!31474 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))) (reg!15810 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292))))))) (ite (or c!961772 c!961776) (ite c!961556 lt!2243915 (Context!9731 call!406559)) (Context!9731 call!406736)) (h!69068 s!2326)))))

(declare-fun b!5504659 () Bool)

(declare-fun e!3404778 () (InoxSet Context!9730))

(declare-fun e!3404780 () (InoxSet Context!9730))

(assert (=> b!5504659 (= e!3404778 e!3404780)))

(assert (=> b!5504659 (= c!961772 ((_ is Union!15481) (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))))))

(declare-fun b!5504660 () Bool)

(assert (=> b!5504660 (= e!3404780 ((_ map or) call!406738 call!406739))))

(declare-fun b!5504661 () Bool)

(assert (=> b!5504661 (= e!3404779 ((_ map or) call!406738 call!406737))))

(declare-fun bm!406735 () Bool)

(assert (=> bm!406735 (= call!406741 ($colon$colon!1572 (exprs!5365 (ite c!961556 lt!2243915 (Context!9731 call!406559))) (ite (or c!961776 c!961775) (regTwo!31474 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))) (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292))))))))

(declare-fun c!961773 () Bool)

(declare-fun d!1744838 () Bool)

(assert (=> d!1744838 (= c!961773 (and ((_ is ElementMatch!15481) (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))) (= (c!961331 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))) (h!69068 s!2326))))))

(assert (=> d!1744838 (= (derivationStepZipperDown!827 (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292))) (ite c!961556 lt!2243915 (Context!9731 call!406559)) (h!69068 s!2326)) e!3404778)))

(declare-fun b!5504654 () Bool)

(assert (=> b!5504654 (= e!3404778 (store ((as const (Array Context!9730 Bool)) false) (ite c!961556 lt!2243915 (Context!9731 call!406559)) true))))

(declare-fun b!5504662 () Bool)

(assert (=> b!5504662 (= c!961776 e!3404775)))

(declare-fun res!2345950 () Bool)

(assert (=> b!5504662 (=> (not res!2345950) (not e!3404775))))

(assert (=> b!5504662 (= res!2345950 ((_ is Concat!24326) (ite c!961556 (regOne!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292)))))))

(assert (=> b!5504662 (= e!3404780 e!3404779)))

(declare-fun bm!406736 () Bool)

(assert (=> bm!406736 (= call!406737 call!406739)))

(assert (= (and d!1744838 c!961773) b!5504654))

(assert (= (and d!1744838 (not c!961773)) b!5504659))

(assert (= (and b!5504659 c!961772) b!5504660))

(assert (= (and b!5504659 (not c!961772)) b!5504662))

(assert (= (and b!5504662 res!2345950) b!5504656))

(assert (= (and b!5504662 c!961776) b!5504661))

(assert (= (and b!5504662 (not c!961776)) b!5504658))

(assert (= (and b!5504658 c!961775) b!5504652))

(assert (= (and b!5504658 (not c!961775)) b!5504653))

(assert (= (and b!5504653 c!961774) b!5504657))

(assert (= (and b!5504653 (not c!961774)) b!5504655))

(assert (= (or b!5504652 b!5504657) bm!406732))

(assert (= (or b!5504652 b!5504657) bm!406731))

(assert (= (or b!5504661 bm!406732) bm!406735))

(assert (= (or b!5504661 bm!406731) bm!406736))

(assert (= (or b!5504660 bm!406736) bm!406734))

(assert (= (or b!5504660 b!5504661) bm!406733))

(declare-fun m!6511902 () Bool)

(assert (=> bm!406734 m!6511902))

(declare-fun m!6511904 () Bool)

(assert (=> bm!406733 m!6511904))

(declare-fun m!6511906 () Bool)

(assert (=> b!5504654 m!6511906))

(declare-fun m!6511908 () Bool)

(assert (=> bm!406735 m!6511908))

(declare-fun m!6511910 () Bool)

(assert (=> b!5504656 m!6511910))

(assert (=> bm!406551 d!1744838))

(declare-fun bm!406737 () Bool)

(declare-fun call!406744 () Bool)

(declare-fun c!961778 () Bool)

(assert (=> bm!406737 (= call!406744 (validRegex!7217 (ite c!961778 (regOne!31475 (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))) (regOne!31474 (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))))))))

(declare-fun b!5504663 () Bool)

(declare-fun e!3404782 () Bool)

(declare-fun call!406742 () Bool)

(assert (=> b!5504663 (= e!3404782 call!406742)))

(declare-fun b!5504664 () Bool)

(declare-fun e!3404787 () Bool)

(declare-fun e!3404783 () Bool)

(assert (=> b!5504664 (= e!3404787 e!3404783)))

(assert (=> b!5504664 (= c!961778 ((_ is Union!15481) (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))))))

(declare-fun b!5504665 () Bool)

(declare-fun res!2345954 () Bool)

(assert (=> b!5504665 (=> (not res!2345954) (not e!3404782))))

(assert (=> b!5504665 (= res!2345954 call!406744)))

(assert (=> b!5504665 (= e!3404783 e!3404782)))

(declare-fun b!5504666 () Bool)

(declare-fun e!3404785 () Bool)

(assert (=> b!5504666 (= e!3404785 e!3404787)))

(declare-fun c!961777 () Bool)

(assert (=> b!5504666 (= c!961777 ((_ is Star!15481) (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))))))

(declare-fun b!5504667 () Bool)

(declare-fun e!3404784 () Bool)

(assert (=> b!5504667 (= e!3404787 e!3404784)))

(declare-fun res!2345951 () Bool)

(assert (=> b!5504667 (= res!2345951 (not (nullable!5518 (reg!15810 (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))))))))

(assert (=> b!5504667 (=> (not res!2345951) (not e!3404784))))

(declare-fun b!5504668 () Bool)

(declare-fun res!2345955 () Bool)

(declare-fun e!3404781 () Bool)

(assert (=> b!5504668 (=> res!2345955 e!3404781)))

(assert (=> b!5504668 (= res!2345955 (not ((_ is Concat!24326) (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292))))))))

(assert (=> b!5504668 (= e!3404783 e!3404781)))

(declare-fun b!5504669 () Bool)

(declare-fun call!406743 () Bool)

(assert (=> b!5504669 (= e!3404784 call!406743)))

(declare-fun d!1744840 () Bool)

(declare-fun res!2345953 () Bool)

(assert (=> d!1744840 (=> res!2345953 e!3404785)))

(assert (=> d!1744840 (= res!2345953 ((_ is ElementMatch!15481) (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))))))

(assert (=> d!1744840 (= (validRegex!7217 (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))) e!3404785)))

(declare-fun bm!406738 () Bool)

(assert (=> bm!406738 (= call!406743 (validRegex!7217 (ite c!961777 (reg!15810 (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))) (ite c!961778 (regTwo!31475 (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292)))) (regTwo!31474 (ite c!961544 (reg!15810 r!7292) (ite c!961545 (regTwo!31475 r!7292) (regTwo!31474 r!7292))))))))))

(declare-fun bm!406739 () Bool)

(assert (=> bm!406739 (= call!406742 call!406743)))

(declare-fun b!5504670 () Bool)

(declare-fun e!3404786 () Bool)

(assert (=> b!5504670 (= e!3404781 e!3404786)))

(declare-fun res!2345952 () Bool)

(assert (=> b!5504670 (=> (not res!2345952) (not e!3404786))))

(assert (=> b!5504670 (= res!2345952 call!406744)))

(declare-fun b!5504671 () Bool)

(assert (=> b!5504671 (= e!3404786 call!406742)))

(assert (= (and d!1744840 (not res!2345953)) b!5504666))

(assert (= (and b!5504666 c!961777) b!5504667))

(assert (= (and b!5504666 (not c!961777)) b!5504664))

(assert (= (and b!5504667 res!2345951) b!5504669))

(assert (= (and b!5504664 c!961778) b!5504665))

(assert (= (and b!5504664 (not c!961778)) b!5504668))

(assert (= (and b!5504665 res!2345954) b!5504663))

(assert (= (and b!5504668 (not res!2345955)) b!5504670))

(assert (= (and b!5504670 res!2345952) b!5504671))

(assert (= (or b!5504663 b!5504671) bm!406739))

(assert (= (or b!5504665 b!5504670) bm!406737))

(assert (= (or b!5504669 bm!406739) bm!406738))

(declare-fun m!6511912 () Bool)

(assert (=> bm!406737 m!6511912))

(declare-fun m!6511914 () Bool)

(assert (=> b!5504667 m!6511914))

(declare-fun m!6511916 () Bool)

(assert (=> bm!406738 m!6511916))

(assert (=> bm!406539 d!1744840))

(assert (=> d!1744476 d!1744482))

(declare-fun d!1744842 () Bool)

(assert (=> d!1744842 (= (flatMap!1100 lt!2243917 lambda!294631) (dynLambda!24472 lambda!294631 lt!2243920))))

(assert (=> d!1744842 true))

(declare-fun _$13!2023 () Unit!155422)

(assert (=> d!1744842 (= (choose!41819 lt!2243917 lt!2243920 lambda!294631) _$13!2023)))

(declare-fun b_lambda!208777 () Bool)

(assert (=> (not b_lambda!208777) (not d!1744842)))

(declare-fun bs!1269604 () Bool)

(assert (= bs!1269604 d!1744842))

(assert (=> bs!1269604 m!6510758))

(assert (=> bs!1269604 m!6511218))

(assert (=> d!1744476 d!1744842))

(declare-fun d!1744844 () Bool)

(assert (=> d!1744844 (= (isEmpty!34405 (exprs!5365 (h!69067 zl!343))) ((_ is Nil!62618) (exprs!5365 (h!69067 zl!343))))))

(assert (=> b!5503653 d!1744844))

(declare-fun b!5504673 () Bool)

(declare-fun e!3404789 () Bool)

(assert (=> b!5504673 (= e!3404789 (nullable!5518 (h!69066 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243920)))))))))

(declare-fun bm!406740 () Bool)

(declare-fun call!406745 () (InoxSet Context!9730))

(assert (=> bm!406740 (= call!406745 (derivationStepZipperDown!827 (h!69066 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243920))))) (Context!9731 (t!375981 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243920)))))) (h!69068 s!2326)))))

(declare-fun b!5504674 () Bool)

(declare-fun e!3404790 () (InoxSet Context!9730))

(assert (=> b!5504674 (= e!3404790 ((_ map or) call!406745 (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243920)))))) (h!69068 s!2326))))))

(declare-fun b!5504675 () Bool)

(declare-fun e!3404788 () (InoxSet Context!9730))

(assert (=> b!5504675 (= e!3404788 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504676 () Bool)

(assert (=> b!5504676 (= e!3404790 e!3404788)))

(declare-fun c!961779 () Bool)

(assert (=> b!5504676 (= c!961779 ((_ is Cons!62618) (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243920))))))))

(declare-fun d!1744846 () Bool)

(declare-fun c!961780 () Bool)

(assert (=> d!1744846 (= c!961780 e!3404789)))

(declare-fun res!2345956 () Bool)

(assert (=> d!1744846 (=> (not res!2345956) (not e!3404789))))

(assert (=> d!1744846 (= res!2345956 ((_ is Cons!62618) (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243920))))))))

(assert (=> d!1744846 (= (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 lt!2243920))) (h!69068 s!2326)) e!3404790)))

(declare-fun b!5504672 () Bool)

(assert (=> b!5504672 (= e!3404788 call!406745)))

(assert (= (and d!1744846 res!2345956) b!5504673))

(assert (= (and d!1744846 c!961780) b!5504674))

(assert (= (and d!1744846 (not c!961780)) b!5504676))

(assert (= (and b!5504676 c!961779) b!5504672))

(assert (= (and b!5504676 (not c!961779)) b!5504675))

(assert (= (or b!5504674 b!5504672) bm!406740))

(declare-fun m!6511918 () Bool)

(assert (=> b!5504673 m!6511918))

(declare-fun m!6511920 () Bool)

(assert (=> bm!406740 m!6511920))

(declare-fun m!6511922 () Bool)

(assert (=> b!5504674 m!6511922))

(assert (=> b!5503844 d!1744846))

(declare-fun d!1744848 () Bool)

(assert (=> d!1744848 (= (isEmpty!34405 (tail!10883 (unfocusZipperList!909 zl!343))) ((_ is Nil!62618) (tail!10883 (unfocusZipperList!909 zl!343))))))

(assert (=> b!5503803 d!1744848))

(declare-fun d!1744850 () Bool)

(assert (=> d!1744850 (= (tail!10883 (unfocusZipperList!909 zl!343)) (t!375981 (unfocusZipperList!909 zl!343)))))

(assert (=> b!5503803 d!1744850))

(declare-fun d!1744852 () Bool)

(assert (=> d!1744852 (= (isEmpty!34404 (t!375983 s!2326)) ((_ is Nil!62620) (t!375983 s!2326)))))

(assert (=> d!1744456 d!1744852))

(assert (=> bm!406508 d!1744750))

(declare-fun d!1744854 () Bool)

(assert (=> d!1744854 (= ($colon$colon!1572 (exprs!5365 lt!2243915) (ite (or c!961555 c!961554) (regTwo!31474 (regTwo!31475 r!7292)) (regTwo!31475 r!7292))) (Cons!62618 (ite (or c!961555 c!961554) (regTwo!31474 (regTwo!31475 r!7292)) (regTwo!31475 r!7292)) (exprs!5365 lt!2243915)))))

(assert (=> bm!406547 d!1744854))

(declare-fun b!5504677 () Bool)

(declare-fun e!3404794 () Bool)

(declare-fun e!3404796 () Bool)

(assert (=> b!5504677 (= e!3404794 e!3404796)))

(declare-fun c!961782 () Bool)

(assert (=> b!5504677 (= c!961782 ((_ is EmptyLang!15481) (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326))))))

(declare-fun b!5504678 () Bool)

(declare-fun res!2345964 () Bool)

(declare-fun e!3404795 () Bool)

(assert (=> b!5504678 (=> res!2345964 e!3404795)))

(declare-fun e!3404793 () Bool)

(assert (=> b!5504678 (= res!2345964 e!3404793)))

(declare-fun res!2345961 () Bool)

(assert (=> b!5504678 (=> (not res!2345961) (not e!3404793))))

(declare-fun lt!2244010 () Bool)

(assert (=> b!5504678 (= res!2345961 lt!2244010)))

(declare-fun b!5504679 () Bool)

(declare-fun e!3404791 () Bool)

(assert (=> b!5504679 (= e!3404795 e!3404791)))

(declare-fun res!2345962 () Bool)

(assert (=> b!5504679 (=> (not res!2345962) (not e!3404791))))

(assert (=> b!5504679 (= res!2345962 (not lt!2244010))))

(declare-fun b!5504680 () Bool)

(assert (=> b!5504680 (= e!3404796 (not lt!2244010))))

(declare-fun b!5504681 () Bool)

(assert (=> b!5504681 (= e!3404793 (= (head!11787 (tail!10882 s!2326)) (c!961331 (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326)))))))

(declare-fun bm!406741 () Bool)

(declare-fun call!406746 () Bool)

(assert (=> bm!406741 (= call!406746 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun b!5504682 () Bool)

(declare-fun res!2345957 () Bool)

(declare-fun e!3404792 () Bool)

(assert (=> b!5504682 (=> res!2345957 e!3404792)))

(assert (=> b!5504682 (= res!2345957 (not (isEmpty!34404 (tail!10882 (tail!10882 s!2326)))))))

(declare-fun d!1744856 () Bool)

(assert (=> d!1744856 e!3404794))

(declare-fun c!961783 () Bool)

(assert (=> d!1744856 (= c!961783 ((_ is EmptyExpr!15481) (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326))))))

(declare-fun e!3404797 () Bool)

(assert (=> d!1744856 (= lt!2244010 e!3404797)))

(declare-fun c!961781 () Bool)

(assert (=> d!1744856 (= c!961781 (isEmpty!34404 (tail!10882 s!2326)))))

(assert (=> d!1744856 (validRegex!7217 (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326)))))

(assert (=> d!1744856 (= (matchR!7666 (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326)) (tail!10882 s!2326)) lt!2244010)))

(declare-fun b!5504683 () Bool)

(assert (=> b!5504683 (= e!3404791 e!3404792)))

(declare-fun res!2345960 () Bool)

(assert (=> b!5504683 (=> res!2345960 e!3404792)))

(assert (=> b!5504683 (= res!2345960 call!406746)))

(declare-fun b!5504684 () Bool)

(assert (=> b!5504684 (= e!3404797 (matchR!7666 (derivativeStep!4357 (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326)) (head!11787 (tail!10882 s!2326))) (tail!10882 (tail!10882 s!2326))))))

(declare-fun b!5504685 () Bool)

(assert (=> b!5504685 (= e!3404792 (not (= (head!11787 (tail!10882 s!2326)) (c!961331 (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326))))))))

(declare-fun b!5504686 () Bool)

(assert (=> b!5504686 (= e!3404797 (nullable!5518 (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326))))))

(declare-fun b!5504687 () Bool)

(assert (=> b!5504687 (= e!3404794 (= lt!2244010 call!406746))))

(declare-fun b!5504688 () Bool)

(declare-fun res!2345959 () Bool)

(assert (=> b!5504688 (=> (not res!2345959) (not e!3404793))))

(assert (=> b!5504688 (= res!2345959 (not call!406746))))

(declare-fun b!5504689 () Bool)

(declare-fun res!2345963 () Bool)

(assert (=> b!5504689 (=> (not res!2345963) (not e!3404793))))

(assert (=> b!5504689 (= res!2345963 (isEmpty!34404 (tail!10882 (tail!10882 s!2326))))))

(declare-fun b!5504690 () Bool)

(declare-fun res!2345958 () Bool)

(assert (=> b!5504690 (=> res!2345958 e!3404795)))

(assert (=> b!5504690 (= res!2345958 (not ((_ is ElementMatch!15481) (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326)))))))

(assert (=> b!5504690 (= e!3404796 e!3404795)))

(assert (= (and d!1744856 c!961781) b!5504686))

(assert (= (and d!1744856 (not c!961781)) b!5504684))

(assert (= (and d!1744856 c!961783) b!5504687))

(assert (= (and d!1744856 (not c!961783)) b!5504677))

(assert (= (and b!5504677 c!961782) b!5504680))

(assert (= (and b!5504677 (not c!961782)) b!5504690))

(assert (= (and b!5504690 (not res!2345958)) b!5504678))

(assert (= (and b!5504678 res!2345961) b!5504688))

(assert (= (and b!5504688 res!2345959) b!5504689))

(assert (= (and b!5504689 res!2345963) b!5504681))

(assert (= (and b!5504678 (not res!2345964)) b!5504679))

(assert (= (and b!5504679 res!2345962) b!5504683))

(assert (= (and b!5504683 (not res!2345960)) b!5504682))

(assert (= (and b!5504682 (not res!2345957)) b!5504685))

(assert (= (or b!5504687 b!5504683 b!5504688) bm!406741))

(assert (=> b!5504686 m!6511114))

(declare-fun m!6511924 () Bool)

(assert (=> b!5504686 m!6511924))

(assert (=> b!5504681 m!6511056))

(assert (=> b!5504681 m!6511766))

(assert (=> b!5504684 m!6511056))

(assert (=> b!5504684 m!6511766))

(assert (=> b!5504684 m!6511114))

(assert (=> b!5504684 m!6511766))

(declare-fun m!6511926 () Bool)

(assert (=> b!5504684 m!6511926))

(assert (=> b!5504684 m!6511056))

(assert (=> b!5504684 m!6511770))

(assert (=> b!5504684 m!6511926))

(assert (=> b!5504684 m!6511770))

(declare-fun m!6511928 () Bool)

(assert (=> b!5504684 m!6511928))

(assert (=> b!5504682 m!6511056))

(assert (=> b!5504682 m!6511770))

(assert (=> b!5504682 m!6511770))

(assert (=> b!5504682 m!6511888))

(assert (=> bm!406741 m!6511056))

(assert (=> bm!406741 m!6511060))

(assert (=> b!5504689 m!6511056))

(assert (=> b!5504689 m!6511770))

(assert (=> b!5504689 m!6511770))

(assert (=> b!5504689 m!6511888))

(assert (=> b!5504685 m!6511056))

(assert (=> b!5504685 m!6511766))

(assert (=> d!1744856 m!6511056))

(assert (=> d!1744856 m!6511060))

(assert (=> d!1744856 m!6511114))

(declare-fun m!6511930 () Bool)

(assert (=> d!1744856 m!6511930))

(assert (=> b!5503685 d!1744856))

(declare-fun b!5504692 () Bool)

(declare-fun e!3404801 () Regex!15481)

(assert (=> b!5504692 (= e!3404801 EmptyLang!15481)))

(declare-fun b!5504693 () Bool)

(declare-fun c!961784 () Bool)

(assert (=> b!5504693 (= c!961784 (nullable!5518 (regOne!31474 (regTwo!31475 r!7292))))))

(declare-fun e!3404799 () Regex!15481)

(declare-fun e!3404800 () Regex!15481)

(assert (=> b!5504693 (= e!3404799 e!3404800)))

(declare-fun b!5504694 () Bool)

(declare-fun e!3404802 () Regex!15481)

(assert (=> b!5504694 (= e!3404802 (ite (= (head!11787 s!2326) (c!961331 (regTwo!31475 r!7292))) EmptyExpr!15481 EmptyLang!15481))))

(declare-fun bm!406742 () Bool)

(declare-fun call!406749 () Regex!15481)

(declare-fun call!406748 () Regex!15481)

(assert (=> bm!406742 (= call!406749 call!406748)))

(declare-fun bm!406743 () Bool)

(declare-fun call!406750 () Regex!15481)

(assert (=> bm!406743 (= call!406748 call!406750)))

(declare-fun b!5504695 () Bool)

(declare-fun e!3404798 () Regex!15481)

(declare-fun call!406747 () Regex!15481)

(assert (=> b!5504695 (= e!3404798 (Union!15481 call!406750 call!406747))))

(declare-fun bm!406744 () Bool)

(declare-fun c!961788 () Bool)

(assert (=> bm!406744 (= call!406747 (derivativeStep!4357 (ite c!961788 (regTwo!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))) (head!11787 s!2326)))))

(declare-fun b!5504696 () Bool)

(assert (=> b!5504696 (= e!3404799 (Concat!24326 call!406748 (regTwo!31475 r!7292)))))

(declare-fun b!5504697 () Bool)

(assert (=> b!5504697 (= e!3404798 e!3404799)))

(declare-fun c!961787 () Bool)

(assert (=> b!5504697 (= c!961787 ((_ is Star!15481) (regTwo!31475 r!7292)))))

(declare-fun b!5504691 () Bool)

(assert (=> b!5504691 (= e!3404800 (Union!15481 (Concat!24326 call!406747 (regTwo!31474 (regTwo!31475 r!7292))) call!406749))))

(declare-fun d!1744858 () Bool)

(declare-fun lt!2244011 () Regex!15481)

(assert (=> d!1744858 (validRegex!7217 lt!2244011)))

(assert (=> d!1744858 (= lt!2244011 e!3404801)))

(declare-fun c!961786 () Bool)

(assert (=> d!1744858 (= c!961786 (or ((_ is EmptyExpr!15481) (regTwo!31475 r!7292)) ((_ is EmptyLang!15481) (regTwo!31475 r!7292))))))

(assert (=> d!1744858 (validRegex!7217 (regTwo!31475 r!7292))))

(assert (=> d!1744858 (= (derivativeStep!4357 (regTwo!31475 r!7292) (head!11787 s!2326)) lt!2244011)))

(declare-fun b!5504698 () Bool)

(assert (=> b!5504698 (= c!961788 ((_ is Union!15481) (regTwo!31475 r!7292)))))

(assert (=> b!5504698 (= e!3404802 e!3404798)))

(declare-fun b!5504699 () Bool)

(assert (=> b!5504699 (= e!3404800 (Union!15481 (Concat!24326 call!406749 (regTwo!31474 (regTwo!31475 r!7292))) EmptyLang!15481))))

(declare-fun b!5504700 () Bool)

(assert (=> b!5504700 (= e!3404801 e!3404802)))

(declare-fun c!961785 () Bool)

(assert (=> b!5504700 (= c!961785 ((_ is ElementMatch!15481) (regTwo!31475 r!7292)))))

(declare-fun bm!406745 () Bool)

(assert (=> bm!406745 (= call!406750 (derivativeStep!4357 (ite c!961788 (regOne!31475 (regTwo!31475 r!7292)) (ite c!961787 (reg!15810 (regTwo!31475 r!7292)) (ite c!961784 (regTwo!31474 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))))) (head!11787 s!2326)))))

(assert (= (and d!1744858 c!961786) b!5504692))

(assert (= (and d!1744858 (not c!961786)) b!5504700))

(assert (= (and b!5504700 c!961785) b!5504694))

(assert (= (and b!5504700 (not c!961785)) b!5504698))

(assert (= (and b!5504698 c!961788) b!5504695))

(assert (= (and b!5504698 (not c!961788)) b!5504697))

(assert (= (and b!5504697 c!961787) b!5504696))

(assert (= (and b!5504697 (not c!961787)) b!5504693))

(assert (= (and b!5504693 c!961784) b!5504691))

(assert (= (and b!5504693 (not c!961784)) b!5504699))

(assert (= (or b!5504691 b!5504699) bm!406742))

(assert (= (or b!5504696 bm!406742) bm!406743))

(assert (= (or b!5504695 b!5504691) bm!406744))

(assert (= (or b!5504695 bm!406743) bm!406745))

(assert (=> b!5504693 m!6511260))

(assert (=> bm!406744 m!6511052))

(declare-fun m!6511932 () Bool)

(assert (=> bm!406744 m!6511932))

(declare-fun m!6511934 () Bool)

(assert (=> d!1744858 m!6511934))

(assert (=> d!1744858 m!6511118))

(assert (=> bm!406745 m!6511052))

(declare-fun m!6511936 () Bool)

(assert (=> bm!406745 m!6511936))

(assert (=> b!5503685 d!1744858))

(assert (=> b!5503685 d!1744742))

(assert (=> b!5503685 d!1744768))

(declare-fun d!1744860 () Bool)

(declare-fun c!961789 () Bool)

(assert (=> d!1744860 (= c!961789 (isEmpty!34404 (t!375983 s!2326)))))

(declare-fun e!3404803 () Bool)

(assert (=> d!1744860 (= (matchZipper!1649 ((_ map or) lt!2243916 lt!2243912) (t!375983 s!2326)) e!3404803)))

(declare-fun b!5504701 () Bool)

(assert (=> b!5504701 (= e!3404803 (nullableZipper!1523 ((_ map or) lt!2243916 lt!2243912)))))

(declare-fun b!5504702 () Bool)

(assert (=> b!5504702 (= e!3404803 (matchZipper!1649 (derivationStepZipper!1592 ((_ map or) lt!2243916 lt!2243912) (head!11787 (t!375983 s!2326))) (tail!10882 (t!375983 s!2326))))))

(assert (= (and d!1744860 c!961789) b!5504701))

(assert (= (and d!1744860 (not c!961789)) b!5504702))

(assert (=> d!1744860 m!6511090))

(declare-fun m!6511938 () Bool)

(assert (=> b!5504701 m!6511938))

(assert (=> b!5504702 m!6511094))

(assert (=> b!5504702 m!6511094))

(declare-fun m!6511940 () Bool)

(assert (=> b!5504702 m!6511940))

(assert (=> b!5504702 m!6511098))

(assert (=> b!5504702 m!6511940))

(assert (=> b!5504702 m!6511098))

(declare-fun m!6511942 () Bool)

(assert (=> b!5504702 m!6511942))

(assert (=> d!1744468 d!1744860))

(assert (=> d!1744468 d!1744466))

(declare-fun e!3404806 () Bool)

(declare-fun d!1744862 () Bool)

(assert (=> d!1744862 (= (matchZipper!1649 ((_ map or) lt!2243916 lt!2243912) (t!375983 s!2326)) e!3404806)))

(declare-fun res!2345967 () Bool)

(assert (=> d!1744862 (=> res!2345967 e!3404806)))

(assert (=> d!1744862 (= res!2345967 (matchZipper!1649 lt!2243916 (t!375983 s!2326)))))

(assert (=> d!1744862 true))

(declare-fun _$48!1066 () Unit!155422)

(assert (=> d!1744862 (= (choose!41820 lt!2243916 lt!2243912 (t!375983 s!2326)) _$48!1066)))

(declare-fun b!5504705 () Bool)

(assert (=> b!5504705 (= e!3404806 (matchZipper!1649 lt!2243912 (t!375983 s!2326)))))

(assert (= (and d!1744862 (not res!2345967)) b!5504705))

(assert (=> d!1744862 m!6511202))

(assert (=> d!1744862 m!6510772))

(assert (=> b!5504705 m!6510770))

(assert (=> d!1744468 d!1744862))

(declare-fun bs!1269605 () Bool)

(declare-fun d!1744864 () Bool)

(assert (= bs!1269605 (and d!1744864 d!1744464)))

(declare-fun lambda!294723 () Int)

(assert (=> bs!1269605 (= lambda!294723 lambda!294679)))

(declare-fun bs!1269606 () Bool)

(assert (= bs!1269606 (and d!1744864 d!1744430)))

(assert (=> bs!1269606 (= lambda!294723 lambda!294666)))

(declare-fun bs!1269607 () Bool)

(assert (= bs!1269607 (and d!1744864 d!1744490)))

(assert (=> bs!1269607 (= lambda!294723 lambda!294683)))

(declare-fun bs!1269608 () Bool)

(assert (= bs!1269608 (and d!1744864 d!1744470)))

(assert (=> bs!1269608 (= lambda!294723 lambda!294682)))

(declare-fun bs!1269609 () Bool)

(assert (= bs!1269609 (and d!1744864 d!1744780)))

(assert (=> bs!1269609 (= lambda!294723 lambda!294717)))

(declare-fun bs!1269610 () Bool)

(assert (= bs!1269610 (and d!1744864 d!1744462)))

(assert (=> bs!1269610 (= lambda!294723 lambda!294676)))

(declare-fun b!5504706 () Bool)

(declare-fun e!3404809 () Regex!15481)

(assert (=> b!5504706 (= e!3404809 (h!69066 (t!375981 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5504707 () Bool)

(declare-fun e!3404812 () Bool)

(declare-fun lt!2244012 () Regex!15481)

(assert (=> b!5504707 (= e!3404812 (isEmptyExpr!1064 lt!2244012))))

(declare-fun b!5504708 () Bool)

(declare-fun e!3404810 () Bool)

(assert (=> b!5504708 (= e!3404810 (isEmpty!34405 (t!375981 (t!375981 (exprs!5365 (h!69067 zl!343))))))))

(declare-fun b!5504709 () Bool)

(declare-fun e!3404811 () Bool)

(assert (=> b!5504709 (= e!3404811 (= lt!2244012 (head!11788 (t!375981 (exprs!5365 (h!69067 zl!343))))))))

(declare-fun b!5504710 () Bool)

(declare-fun e!3404807 () Bool)

(assert (=> b!5504710 (= e!3404807 e!3404812)))

(declare-fun c!961790 () Bool)

(assert (=> b!5504710 (= c!961790 (isEmpty!34405 (t!375981 (exprs!5365 (h!69067 zl!343)))))))

(assert (=> d!1744864 e!3404807))

(declare-fun res!2345968 () Bool)

(assert (=> d!1744864 (=> (not res!2345968) (not e!3404807))))

(assert (=> d!1744864 (= res!2345968 (validRegex!7217 lt!2244012))))

(assert (=> d!1744864 (= lt!2244012 e!3404809)))

(declare-fun c!961792 () Bool)

(assert (=> d!1744864 (= c!961792 e!3404810)))

(declare-fun res!2345969 () Bool)

(assert (=> d!1744864 (=> (not res!2345969) (not e!3404810))))

(assert (=> d!1744864 (= res!2345969 ((_ is Cons!62618) (t!375981 (exprs!5365 (h!69067 zl!343)))))))

(assert (=> d!1744864 (forall!14666 (t!375981 (exprs!5365 (h!69067 zl!343))) lambda!294723)))

(assert (=> d!1744864 (= (generalisedConcat!1096 (t!375981 (exprs!5365 (h!69067 zl!343)))) lt!2244012)))

(declare-fun b!5504711 () Bool)

(assert (=> b!5504711 (= e!3404811 (isConcat!587 lt!2244012))))

(declare-fun b!5504712 () Bool)

(declare-fun e!3404808 () Regex!15481)

(assert (=> b!5504712 (= e!3404809 e!3404808)))

(declare-fun c!961791 () Bool)

(assert (=> b!5504712 (= c!961791 ((_ is Cons!62618) (t!375981 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5504713 () Bool)

(assert (=> b!5504713 (= e!3404812 e!3404811)))

(declare-fun c!961793 () Bool)

(assert (=> b!5504713 (= c!961793 (isEmpty!34405 (tail!10883 (t!375981 (exprs!5365 (h!69067 zl!343))))))))

(declare-fun b!5504714 () Bool)

(assert (=> b!5504714 (= e!3404808 (Concat!24326 (h!69066 (t!375981 (exprs!5365 (h!69067 zl!343)))) (generalisedConcat!1096 (t!375981 (t!375981 (exprs!5365 (h!69067 zl!343)))))))))

(declare-fun b!5504715 () Bool)

(assert (=> b!5504715 (= e!3404808 EmptyExpr!15481)))

(assert (= (and d!1744864 res!2345969) b!5504708))

(assert (= (and d!1744864 c!961792) b!5504706))

(assert (= (and d!1744864 (not c!961792)) b!5504712))

(assert (= (and b!5504712 c!961791) b!5504714))

(assert (= (and b!5504712 (not c!961791)) b!5504715))

(assert (= (and d!1744864 res!2345968) b!5504710))

(assert (= (and b!5504710 c!961790) b!5504707))

(assert (= (and b!5504710 (not c!961790)) b!5504713))

(assert (= (and b!5504713 c!961793) b!5504709))

(assert (= (and b!5504713 (not c!961793)) b!5504711))

(assert (=> b!5504710 m!6511066))

(declare-fun m!6511944 () Bool)

(assert (=> b!5504708 m!6511944))

(declare-fun m!6511946 () Bool)

(assert (=> b!5504713 m!6511946))

(assert (=> b!5504713 m!6511946))

(declare-fun m!6511948 () Bool)

(assert (=> b!5504713 m!6511948))

(declare-fun m!6511950 () Bool)

(assert (=> b!5504711 m!6511950))

(declare-fun m!6511952 () Bool)

(assert (=> d!1744864 m!6511952))

(declare-fun m!6511954 () Bool)

(assert (=> d!1744864 m!6511954))

(declare-fun m!6511956 () Bool)

(assert (=> b!5504707 m!6511956))

(declare-fun m!6511958 () Bool)

(assert (=> b!5504709 m!6511958))

(declare-fun m!6511960 () Bool)

(assert (=> b!5504714 m!6511960))

(assert (=> b!5503657 d!1744864))

(declare-fun d!1744866 () Bool)

(assert (=> d!1744866 (= (flatMap!1100 z!1189 lambda!294673) (choose!41818 z!1189 lambda!294673))))

(declare-fun bs!1269611 () Bool)

(assert (= bs!1269611 d!1744866))

(declare-fun m!6511962 () Bool)

(assert (=> bs!1269611 m!6511962))

(assert (=> d!1744448 d!1744866))

(declare-fun bm!406746 () Bool)

(declare-fun call!406753 () Bool)

(declare-fun c!961795 () Bool)

(assert (=> bm!406746 (= call!406753 (validRegex!7217 (ite c!961795 (regOne!31475 lt!2243979) (regOne!31474 lt!2243979))))))

(declare-fun b!5504716 () Bool)

(declare-fun e!3404814 () Bool)

(declare-fun call!406751 () Bool)

(assert (=> b!5504716 (= e!3404814 call!406751)))

(declare-fun b!5504717 () Bool)

(declare-fun e!3404819 () Bool)

(declare-fun e!3404815 () Bool)

(assert (=> b!5504717 (= e!3404819 e!3404815)))

(assert (=> b!5504717 (= c!961795 ((_ is Union!15481) lt!2243979))))

(declare-fun b!5504718 () Bool)

(declare-fun res!2345973 () Bool)

(assert (=> b!5504718 (=> (not res!2345973) (not e!3404814))))

(assert (=> b!5504718 (= res!2345973 call!406753)))

(assert (=> b!5504718 (= e!3404815 e!3404814)))

(declare-fun b!5504719 () Bool)

(declare-fun e!3404817 () Bool)

(assert (=> b!5504719 (= e!3404817 e!3404819)))

(declare-fun c!961794 () Bool)

(assert (=> b!5504719 (= c!961794 ((_ is Star!15481) lt!2243979))))

(declare-fun b!5504720 () Bool)

(declare-fun e!3404816 () Bool)

(assert (=> b!5504720 (= e!3404819 e!3404816)))

(declare-fun res!2345970 () Bool)

(assert (=> b!5504720 (= res!2345970 (not (nullable!5518 (reg!15810 lt!2243979))))))

(assert (=> b!5504720 (=> (not res!2345970) (not e!3404816))))

(declare-fun b!5504721 () Bool)

(declare-fun res!2345974 () Bool)

(declare-fun e!3404813 () Bool)

(assert (=> b!5504721 (=> res!2345974 e!3404813)))

(assert (=> b!5504721 (= res!2345974 (not ((_ is Concat!24326) lt!2243979)))))

(assert (=> b!5504721 (= e!3404815 e!3404813)))

(declare-fun b!5504722 () Bool)

(declare-fun call!406752 () Bool)

(assert (=> b!5504722 (= e!3404816 call!406752)))

(declare-fun d!1744868 () Bool)

(declare-fun res!2345972 () Bool)

(assert (=> d!1744868 (=> res!2345972 e!3404817)))

(assert (=> d!1744868 (= res!2345972 ((_ is ElementMatch!15481) lt!2243979))))

(assert (=> d!1744868 (= (validRegex!7217 lt!2243979) e!3404817)))

(declare-fun bm!406747 () Bool)

(assert (=> bm!406747 (= call!406752 (validRegex!7217 (ite c!961794 (reg!15810 lt!2243979) (ite c!961795 (regTwo!31475 lt!2243979) (regTwo!31474 lt!2243979)))))))

(declare-fun bm!406748 () Bool)

(assert (=> bm!406748 (= call!406751 call!406752)))

(declare-fun b!5504723 () Bool)

(declare-fun e!3404818 () Bool)

(assert (=> b!5504723 (= e!3404813 e!3404818)))

(declare-fun res!2345971 () Bool)

(assert (=> b!5504723 (=> (not res!2345971) (not e!3404818))))

(assert (=> b!5504723 (= res!2345971 call!406753)))

(declare-fun b!5504724 () Bool)

(assert (=> b!5504724 (= e!3404818 call!406751)))

(assert (= (and d!1744868 (not res!2345972)) b!5504719))

(assert (= (and b!5504719 c!961794) b!5504720))

(assert (= (and b!5504719 (not c!961794)) b!5504717))

(assert (= (and b!5504720 res!2345970) b!5504722))

(assert (= (and b!5504717 c!961795) b!5504718))

(assert (= (and b!5504717 (not c!961795)) b!5504721))

(assert (= (and b!5504718 res!2345973) b!5504716))

(assert (= (and b!5504721 (not res!2345974)) b!5504723))

(assert (= (and b!5504723 res!2345971) b!5504724))

(assert (= (or b!5504716 b!5504724) bm!406748))

(assert (= (or b!5504718 b!5504723) bm!406746))

(assert (= (or b!5504722 bm!406748) bm!406747))

(declare-fun m!6511964 () Bool)

(assert (=> bm!406746 m!6511964))

(declare-fun m!6511966 () Bool)

(assert (=> b!5504720 m!6511966))

(declare-fun m!6511968 () Bool)

(assert (=> bm!406747 m!6511968))

(assert (=> d!1744462 d!1744868))

(declare-fun d!1744870 () Bool)

(declare-fun res!2345975 () Bool)

(declare-fun e!3404820 () Bool)

(assert (=> d!1744870 (=> res!2345975 e!3404820)))

(assert (=> d!1744870 (= res!2345975 ((_ is Nil!62618) (unfocusZipperList!909 zl!343)))))

(assert (=> d!1744870 (= (forall!14666 (unfocusZipperList!909 zl!343) lambda!294676) e!3404820)))

(declare-fun b!5504725 () Bool)

(declare-fun e!3404821 () Bool)

(assert (=> b!5504725 (= e!3404820 e!3404821)))

(declare-fun res!2345976 () Bool)

(assert (=> b!5504725 (=> (not res!2345976) (not e!3404821))))

(assert (=> b!5504725 (= res!2345976 (dynLambda!24474 lambda!294676 (h!69066 (unfocusZipperList!909 zl!343))))))

(declare-fun b!5504726 () Bool)

(assert (=> b!5504726 (= e!3404821 (forall!14666 (t!375981 (unfocusZipperList!909 zl!343)) lambda!294676))))

(assert (= (and d!1744870 (not res!2345975)) b!5504725))

(assert (= (and b!5504725 res!2345976) b!5504726))

(declare-fun b_lambda!208779 () Bool)

(assert (=> (not b_lambda!208779) (not b!5504725)))

(declare-fun m!6511970 () Bool)

(assert (=> b!5504725 m!6511970))

(declare-fun m!6511972 () Bool)

(assert (=> b!5504726 m!6511972))

(assert (=> d!1744462 d!1744870))

(declare-fun d!1744872 () Bool)

(declare-fun c!961796 () Bool)

(assert (=> d!1744872 (= c!961796 (isEmpty!34404 (tail!10882 (t!375983 s!2326))))))

(declare-fun e!3404822 () Bool)

(assert (=> d!1744872 (= (matchZipper!1649 (derivationStepZipper!1592 lt!2243912 (head!11787 (t!375983 s!2326))) (tail!10882 (t!375983 s!2326))) e!3404822)))

(declare-fun b!5504727 () Bool)

(assert (=> b!5504727 (= e!3404822 (nullableZipper!1523 (derivationStepZipper!1592 lt!2243912 (head!11787 (t!375983 s!2326)))))))

(declare-fun b!5504728 () Bool)

(assert (=> b!5504728 (= e!3404822 (matchZipper!1649 (derivationStepZipper!1592 (derivationStepZipper!1592 lt!2243912 (head!11787 (t!375983 s!2326))) (head!11787 (tail!10882 (t!375983 s!2326)))) (tail!10882 (tail!10882 (t!375983 s!2326)))))))

(assert (= (and d!1744872 c!961796) b!5504727))

(assert (= (and d!1744872 (not c!961796)) b!5504728))

(assert (=> d!1744872 m!6511098))

(assert (=> d!1744872 m!6511858))

(assert (=> b!5504727 m!6511152))

(declare-fun m!6511974 () Bool)

(assert (=> b!5504727 m!6511974))

(assert (=> b!5504728 m!6511098))

(assert (=> b!5504728 m!6511862))

(assert (=> b!5504728 m!6511152))

(assert (=> b!5504728 m!6511862))

(declare-fun m!6511976 () Bool)

(assert (=> b!5504728 m!6511976))

(assert (=> b!5504728 m!6511098))

(assert (=> b!5504728 m!6511866))

(assert (=> b!5504728 m!6511976))

(assert (=> b!5504728 m!6511866))

(declare-fun m!6511978 () Bool)

(assert (=> b!5504728 m!6511978))

(assert (=> b!5503735 d!1744872))

(declare-fun bs!1269612 () Bool)

(declare-fun d!1744874 () Bool)

(assert (= bs!1269612 (and d!1744874 d!1744822)))

(declare-fun lambda!294724 () Int)

(assert (=> bs!1269612 (= lambda!294724 lambda!294722)))

(declare-fun bs!1269613 () Bool)

(assert (= bs!1269613 (and d!1744874 d!1744786)))

(assert (=> bs!1269613 (= (= (head!11787 (t!375983 s!2326)) (head!11787 s!2326)) (= lambda!294724 lambda!294718))))

(declare-fun bs!1269614 () Bool)

(assert (= bs!1269614 (and d!1744874 d!1744778)))

(assert (=> bs!1269614 (= (= (head!11787 (t!375983 s!2326)) (head!11787 s!2326)) (= lambda!294724 lambda!294716))))

(declare-fun bs!1269615 () Bool)

(assert (= bs!1269615 (and d!1744874 b!5503119)))

(assert (=> bs!1269615 (= (= (head!11787 (t!375983 s!2326)) (h!69068 s!2326)) (= lambda!294724 lambda!294631))))

(declare-fun bs!1269616 () Bool)

(assert (= bs!1269616 (and d!1744874 d!1744448)))

(assert (=> bs!1269616 (= (= (head!11787 (t!375983 s!2326)) (h!69068 s!2326)) (= lambda!294724 lambda!294673))))

(assert (=> d!1744874 true))

(assert (=> d!1744874 (= (derivationStepZipper!1592 lt!2243912 (head!11787 (t!375983 s!2326))) (flatMap!1100 lt!2243912 lambda!294724))))

(declare-fun bs!1269617 () Bool)

(assert (= bs!1269617 d!1744874))

(declare-fun m!6511980 () Bool)

(assert (=> bs!1269617 m!6511980))

(assert (=> b!5503735 d!1744874))

(assert (=> b!5503735 d!1744824))

(assert (=> b!5503735 d!1744826))

(declare-fun d!1744876 () Bool)

(assert (=> d!1744876 (= (nullable!5518 (h!69066 (exprs!5365 lt!2243906))) (nullableFct!1653 (h!69066 (exprs!5365 lt!2243906))))))

(declare-fun bs!1269618 () Bool)

(assert (= bs!1269618 d!1744876))

(declare-fun m!6511982 () Bool)

(assert (=> bs!1269618 m!6511982))

(assert (=> b!5503848 d!1744876))

(declare-fun d!1744878 () Bool)

(assert (=> d!1744878 (= (isEmpty!34405 (unfocusZipperList!909 zl!343)) ((_ is Nil!62618) (unfocusZipperList!909 zl!343)))))

(assert (=> b!5503794 d!1744878))

(declare-fun b!5504729 () Bool)

(declare-fun e!3404824 () (InoxSet Context!9730))

(declare-fun call!406758 () (InoxSet Context!9730))

(assert (=> b!5504729 (= e!3404824 call!406758)))

(declare-fun b!5504730 () Bool)

(declare-fun c!961799 () Bool)

(assert (=> b!5504730 (= c!961799 ((_ is Star!15481) (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))))))

(declare-fun e!3404825 () (InoxSet Context!9730))

(assert (=> b!5504730 (= e!3404824 e!3404825)))

(declare-fun bm!406749 () Bool)

(declare-fun call!406755 () (InoxSet Context!9730))

(assert (=> bm!406749 (= call!406758 call!406755)))

(declare-fun bm!406750 () Bool)

(declare-fun call!406754 () List!62742)

(declare-fun call!406759 () List!62742)

(assert (=> bm!406750 (= call!406754 call!406759)))

(declare-fun b!5504732 () Bool)

(assert (=> b!5504732 (= e!3404825 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504733 () Bool)

(declare-fun e!3404823 () Bool)

(assert (=> b!5504733 (= e!3404823 (nullable!5518 (regOne!31474 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292)))))))

(declare-fun c!961797 () Bool)

(declare-fun bm!406751 () Bool)

(declare-fun call!406756 () (InoxSet Context!9730))

(assert (=> bm!406751 (= call!406756 (derivationStepZipperDown!827 (ite c!961797 (regOne!31475 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))) (regOne!31474 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292)))) (ite c!961797 (ite c!961517 lt!2243915 (Context!9731 call!406535)) (Context!9731 call!406759)) (h!69068 s!2326)))))

(declare-fun b!5504734 () Bool)

(assert (=> b!5504734 (= e!3404825 call!406758)))

(declare-fun b!5504735 () Bool)

(declare-fun e!3404827 () (InoxSet Context!9730))

(assert (=> b!5504735 (= e!3404827 e!3404824)))

(declare-fun c!961800 () Bool)

(assert (=> b!5504735 (= c!961800 ((_ is Concat!24326) (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))))))

(declare-fun bm!406752 () Bool)

(declare-fun c!961801 () Bool)

(declare-fun call!406757 () (InoxSet Context!9730))

(assert (=> bm!406752 (= call!406757 (derivationStepZipperDown!827 (ite c!961797 (regTwo!31475 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))) (ite c!961801 (regTwo!31474 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))) (ite c!961800 (regOne!31474 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))) (reg!15810 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292)))))) (ite (or c!961797 c!961801) (ite c!961517 lt!2243915 (Context!9731 call!406535)) (Context!9731 call!406754)) (h!69068 s!2326)))))

(declare-fun b!5504736 () Bool)

(declare-fun e!3404826 () (InoxSet Context!9730))

(declare-fun e!3404828 () (InoxSet Context!9730))

(assert (=> b!5504736 (= e!3404826 e!3404828)))

(assert (=> b!5504736 (= c!961797 ((_ is Union!15481) (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))))))

(declare-fun b!5504737 () Bool)

(assert (=> b!5504737 (= e!3404828 ((_ map or) call!406756 call!406757))))

(declare-fun b!5504738 () Bool)

(assert (=> b!5504738 (= e!3404827 ((_ map or) call!406756 call!406755))))

(declare-fun bm!406753 () Bool)

(assert (=> bm!406753 (= call!406759 ($colon$colon!1572 (exprs!5365 (ite c!961517 lt!2243915 (Context!9731 call!406535))) (ite (or c!961801 c!961800) (regTwo!31474 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))) (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292)))))))

(declare-fun d!1744880 () Bool)

(declare-fun c!961798 () Bool)

(assert (=> d!1744880 (= c!961798 (and ((_ is ElementMatch!15481) (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))) (= (c!961331 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))) (h!69068 s!2326))))))

(assert (=> d!1744880 (= (derivationStepZipperDown!827 (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292)) (ite c!961517 lt!2243915 (Context!9731 call!406535)) (h!69068 s!2326)) e!3404826)))

(declare-fun b!5504731 () Bool)

(assert (=> b!5504731 (= e!3404826 (store ((as const (Array Context!9730 Bool)) false) (ite c!961517 lt!2243915 (Context!9731 call!406535)) true))))

(declare-fun b!5504739 () Bool)

(assert (=> b!5504739 (= c!961801 e!3404823)))

(declare-fun res!2345977 () Bool)

(assert (=> b!5504739 (=> (not res!2345977) (not e!3404823))))

(assert (=> b!5504739 (= res!2345977 ((_ is Concat!24326) (ite c!961517 (regOne!31475 r!7292) (regOne!31474 r!7292))))))

(assert (=> b!5504739 (= e!3404828 e!3404827)))

(declare-fun bm!406754 () Bool)

(assert (=> bm!406754 (= call!406755 call!406757)))

(assert (= (and d!1744880 c!961798) b!5504731))

(assert (= (and d!1744880 (not c!961798)) b!5504736))

(assert (= (and b!5504736 c!961797) b!5504737))

(assert (= (and b!5504736 (not c!961797)) b!5504739))

(assert (= (and b!5504739 res!2345977) b!5504733))

(assert (= (and b!5504739 c!961801) b!5504738))

(assert (= (and b!5504739 (not c!961801)) b!5504735))

(assert (= (and b!5504735 c!961800) b!5504729))

(assert (= (and b!5504735 (not c!961800)) b!5504730))

(assert (= (and b!5504730 c!961799) b!5504734))

(assert (= (and b!5504730 (not c!961799)) b!5504732))

(assert (= (or b!5504729 b!5504734) bm!406750))

(assert (= (or b!5504729 b!5504734) bm!406749))

(assert (= (or b!5504738 bm!406750) bm!406753))

(assert (= (or b!5504738 bm!406749) bm!406754))

(assert (= (or b!5504737 bm!406754) bm!406752))

(assert (= (or b!5504737 b!5504738) bm!406751))

(declare-fun m!6511984 () Bool)

(assert (=> bm!406752 m!6511984))

(declare-fun m!6511986 () Bool)

(assert (=> bm!406751 m!6511986))

(declare-fun m!6511988 () Bool)

(assert (=> b!5504731 m!6511988))

(declare-fun m!6511990 () Bool)

(assert (=> bm!406753 m!6511990))

(declare-fun m!6511992 () Bool)

(assert (=> b!5504733 m!6511992))

(assert (=> bm!406527 d!1744880))

(assert (=> bs!1269350 d!1744484))

(assert (=> bm!406509 d!1744750))

(assert (=> bm!406503 d!1744750))

(declare-fun b!5504740 () Bool)

(declare-fun e!3404830 () (InoxSet Context!9730))

(declare-fun call!406764 () (InoxSet Context!9730))

(assert (=> b!5504740 (= e!3404830 call!406764)))

(declare-fun b!5504741 () Bool)

(declare-fun c!961804 () Bool)

(assert (=> b!5504741 (= c!961804 ((_ is Star!15481) (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))))))

(declare-fun e!3404831 () (InoxSet Context!9730))

(assert (=> b!5504741 (= e!3404830 e!3404831)))

(declare-fun bm!406755 () Bool)

(declare-fun call!406761 () (InoxSet Context!9730))

(assert (=> bm!406755 (= call!406764 call!406761)))

(declare-fun bm!406756 () Bool)

(declare-fun call!406760 () List!62742)

(declare-fun call!406765 () List!62742)

(assert (=> bm!406756 (= call!406760 call!406765)))

(declare-fun b!5504743 () Bool)

(assert (=> b!5504743 (= e!3404831 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504744 () Bool)

(declare-fun e!3404829 () Bool)

(assert (=> b!5504744 (= e!3404829 (nullable!5518 (regOne!31474 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))))))))

(declare-fun bm!406757 () Bool)

(declare-fun c!961802 () Bool)

(declare-fun call!406762 () (InoxSet Context!9730))

(assert (=> bm!406757 (= call!406762 (derivationStepZipperDown!827 (ite c!961802 (regOne!31475 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))) (regOne!31474 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))))) (ite c!961802 (ite c!961551 lt!2243915 (Context!9731 call!406553)) (Context!9731 call!406765)) (h!69068 s!2326)))))

(declare-fun b!5504745 () Bool)

(assert (=> b!5504745 (= e!3404831 call!406764)))

(declare-fun b!5504746 () Bool)

(declare-fun e!3404833 () (InoxSet Context!9730))

(assert (=> b!5504746 (= e!3404833 e!3404830)))

(declare-fun c!961805 () Bool)

(assert (=> b!5504746 (= c!961805 ((_ is Concat!24326) (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))))))

(declare-fun call!406763 () (InoxSet Context!9730))

(declare-fun bm!406758 () Bool)

(declare-fun c!961806 () Bool)

(assert (=> bm!406758 (= call!406763 (derivationStepZipperDown!827 (ite c!961802 (regTwo!31475 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))) (ite c!961806 (regTwo!31474 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))) (ite c!961805 (regOne!31474 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))) (reg!15810 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))))))) (ite (or c!961802 c!961806) (ite c!961551 lt!2243915 (Context!9731 call!406553)) (Context!9731 call!406760)) (h!69068 s!2326)))))

(declare-fun b!5504747 () Bool)

(declare-fun e!3404832 () (InoxSet Context!9730))

(declare-fun e!3404834 () (InoxSet Context!9730))

(assert (=> b!5504747 (= e!3404832 e!3404834)))

(assert (=> b!5504747 (= c!961802 ((_ is Union!15481) (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))))))

(declare-fun b!5504748 () Bool)

(assert (=> b!5504748 (= e!3404834 ((_ map or) call!406762 call!406763))))

(declare-fun b!5504749 () Bool)

(assert (=> b!5504749 (= e!3404833 ((_ map or) call!406762 call!406761))))

(declare-fun bm!406759 () Bool)

(assert (=> bm!406759 (= call!406765 ($colon$colon!1572 (exprs!5365 (ite c!961551 lt!2243915 (Context!9731 call!406553))) (ite (or c!961806 c!961805) (regTwo!31474 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))) (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))))))))

(declare-fun d!1744882 () Bool)

(declare-fun c!961803 () Bool)

(assert (=> d!1744882 (= c!961803 (and ((_ is ElementMatch!15481) (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))) (= (c!961331 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))) (h!69068 s!2326))))))

(assert (=> d!1744882 (= (derivationStepZipperDown!827 (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292))) (ite c!961551 lt!2243915 (Context!9731 call!406553)) (h!69068 s!2326)) e!3404832)))

(declare-fun b!5504742 () Bool)

(assert (=> b!5504742 (= e!3404832 (store ((as const (Array Context!9730 Bool)) false) (ite c!961551 lt!2243915 (Context!9731 call!406553)) true))))

(declare-fun b!5504750 () Bool)

(assert (=> b!5504750 (= c!961806 e!3404829)))

(declare-fun res!2345978 () Bool)

(assert (=> b!5504750 (=> (not res!2345978) (not e!3404829))))

(assert (=> b!5504750 (= res!2345978 ((_ is Concat!24326) (ite c!961551 (regOne!31475 (regTwo!31475 r!7292)) (regOne!31474 (regTwo!31475 r!7292)))))))

(assert (=> b!5504750 (= e!3404834 e!3404833)))

(declare-fun bm!406760 () Bool)

(assert (=> bm!406760 (= call!406761 call!406763)))

(assert (= (and d!1744882 c!961803) b!5504742))

(assert (= (and d!1744882 (not c!961803)) b!5504747))

(assert (= (and b!5504747 c!961802) b!5504748))

(assert (= (and b!5504747 (not c!961802)) b!5504750))

(assert (= (and b!5504750 res!2345978) b!5504744))

(assert (= (and b!5504750 c!961806) b!5504749))

(assert (= (and b!5504750 (not c!961806)) b!5504746))

(assert (= (and b!5504746 c!961805) b!5504740))

(assert (= (and b!5504746 (not c!961805)) b!5504741))

(assert (= (and b!5504741 c!961804) b!5504745))

(assert (= (and b!5504741 (not c!961804)) b!5504743))

(assert (= (or b!5504740 b!5504745) bm!406756))

(assert (= (or b!5504740 b!5504745) bm!406755))

(assert (= (or b!5504749 bm!406756) bm!406759))

(assert (= (or b!5504749 bm!406755) bm!406760))

(assert (= (or b!5504748 bm!406760) bm!406758))

(assert (= (or b!5504748 b!5504749) bm!406757))

(declare-fun m!6511994 () Bool)

(assert (=> bm!406758 m!6511994))

(declare-fun m!6511996 () Bool)

(assert (=> bm!406757 m!6511996))

(declare-fun m!6511998 () Bool)

(assert (=> b!5504742 m!6511998))

(declare-fun m!6512000 () Bool)

(assert (=> bm!406759 m!6512000))

(declare-fun m!6512002 () Bool)

(assert (=> b!5504744 m!6512002))

(assert (=> bm!406545 d!1744882))

(assert (=> bm!406500 d!1744750))

(declare-fun d!1744884 () Bool)

(assert (=> d!1744884 (= (isEmptyExpr!1064 lt!2243969) ((_ is EmptyExpr!15481) lt!2243969))))

(assert (=> b!5503650 d!1744884))

(declare-fun b!5504751 () Bool)

(declare-fun e!3404836 () (InoxSet Context!9730))

(declare-fun call!406770 () (InoxSet Context!9730))

(assert (=> b!5504751 (= e!3404836 call!406770)))

(declare-fun b!5504752 () Bool)

(declare-fun c!961809 () Bool)

(assert (=> b!5504752 (= c!961809 ((_ is Star!15481) (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))))

(declare-fun e!3404837 () (InoxSet Context!9730))

(assert (=> b!5504752 (= e!3404836 e!3404837)))

(declare-fun bm!406761 () Bool)

(declare-fun call!406767 () (InoxSet Context!9730))

(assert (=> bm!406761 (= call!406770 call!406767)))

(declare-fun bm!406762 () Bool)

(declare-fun call!406766 () List!62742)

(declare-fun call!406771 () List!62742)

(assert (=> bm!406762 (= call!406766 call!406771)))

(declare-fun b!5504754 () Bool)

(assert (=> b!5504754 (= e!3404837 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504755 () Bool)

(declare-fun e!3404835 () Bool)

(assert (=> b!5504755 (= e!3404835 (nullable!5518 (regOne!31474 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))))))

(declare-fun call!406768 () (InoxSet Context!9730))

(declare-fun bm!406763 () Bool)

(declare-fun c!961807 () Bool)

(assert (=> bm!406763 (= call!406768 (derivationStepZipperDown!827 (ite c!961807 (regOne!31475 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (regOne!31474 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))) (ite c!961807 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (Context!9731 call!406771)) (h!69068 s!2326)))))

(declare-fun b!5504756 () Bool)

(assert (=> b!5504756 (= e!3404837 call!406770)))

(declare-fun b!5504757 () Bool)

(declare-fun e!3404839 () (InoxSet Context!9730))

(assert (=> b!5504757 (= e!3404839 e!3404836)))

(declare-fun c!961810 () Bool)

(assert (=> b!5504757 (= c!961810 ((_ is Concat!24326) (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))))

(declare-fun c!961811 () Bool)

(declare-fun bm!406764 () Bool)

(declare-fun call!406769 () (InoxSet Context!9730))

(assert (=> bm!406764 (= call!406769 (derivationStepZipperDown!827 (ite c!961807 (regTwo!31475 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (ite c!961811 (regTwo!31474 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (ite c!961810 (regOne!31474 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (reg!15810 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))))) (ite (or c!961807 c!961811) (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (Context!9731 call!406766)) (h!69068 s!2326)))))

(declare-fun b!5504758 () Bool)

(declare-fun e!3404838 () (InoxSet Context!9730))

(declare-fun e!3404840 () (InoxSet Context!9730))

(assert (=> b!5504758 (= e!3404838 e!3404840)))

(assert (=> b!5504758 (= c!961807 ((_ is Union!15481) (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))))

(declare-fun b!5504759 () Bool)

(assert (=> b!5504759 (= e!3404840 ((_ map or) call!406768 call!406769))))

(declare-fun b!5504760 () Bool)

(assert (=> b!5504760 (= e!3404839 ((_ map or) call!406768 call!406767))))

(declare-fun bm!406765 () Bool)

(assert (=> bm!406765 (= call!406771 ($colon$colon!1572 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))) (ite (or c!961811 c!961810) (regTwo!31474 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))))))

(declare-fun d!1744886 () Bool)

(declare-fun c!961808 () Bool)

(assert (=> d!1744886 (= c!961808 (and ((_ is ElementMatch!15481) (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (= (c!961331 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (h!69068 s!2326))))))

(assert (=> d!1744886 (= (derivationStepZipperDown!827 (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))) (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (h!69068 s!2326)) e!3404838)))

(declare-fun b!5504753 () Bool)

(assert (=> b!5504753 (= e!3404838 (store ((as const (Array Context!9730 Bool)) false) (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) true))))

(declare-fun b!5504761 () Bool)

(assert (=> b!5504761 (= c!961811 e!3404835)))

(declare-fun res!2345979 () Bool)

(assert (=> b!5504761 (=> (not res!2345979) (not e!3404835))))

(assert (=> b!5504761 (= res!2345979 ((_ is Concat!24326) (h!69066 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))))

(assert (=> b!5504761 (= e!3404840 e!3404839)))

(declare-fun bm!406766 () Bool)

(assert (=> bm!406766 (= call!406767 call!406769)))

(assert (= (and d!1744886 c!961808) b!5504753))

(assert (= (and d!1744886 (not c!961808)) b!5504758))

(assert (= (and b!5504758 c!961807) b!5504759))

(assert (= (and b!5504758 (not c!961807)) b!5504761))

(assert (= (and b!5504761 res!2345979) b!5504755))

(assert (= (and b!5504761 c!961811) b!5504760))

(assert (= (and b!5504761 (not c!961811)) b!5504757))

(assert (= (and b!5504757 c!961810) b!5504751))

(assert (= (and b!5504757 (not c!961810)) b!5504752))

(assert (= (and b!5504752 c!961809) b!5504756))

(assert (= (and b!5504752 (not c!961809)) b!5504754))

(assert (= (or b!5504751 b!5504756) bm!406762))

(assert (= (or b!5504751 b!5504756) bm!406761))

(assert (= (or b!5504760 bm!406762) bm!406765))

(assert (= (or b!5504760 bm!406761) bm!406766))

(assert (= (or b!5504759 bm!406766) bm!406764))

(assert (= (or b!5504759 b!5504760) bm!406763))

(declare-fun m!6512004 () Bool)

(assert (=> bm!406764 m!6512004))

(declare-fun m!6512006 () Bool)

(assert (=> bm!406763 m!6512006))

(declare-fun m!6512008 () Bool)

(assert (=> b!5504753 m!6512008))

(declare-fun m!6512010 () Bool)

(assert (=> bm!406765 m!6512010))

(declare-fun m!6512012 () Bool)

(assert (=> b!5504755 m!6512012))

(assert (=> bm!406531 d!1744886))

(declare-fun d!1744888 () Bool)

(assert (=> d!1744888 (= (nullable!5518 (reg!15810 r!7292)) (nullableFct!1653 (reg!15810 r!7292)))))

(declare-fun bs!1269619 () Bool)

(assert (= bs!1269619 d!1744888))

(declare-fun m!6512014 () Bool)

(assert (=> bs!1269619 m!6512014))

(assert (=> b!5503837 d!1744888))

(declare-fun d!1744890 () Bool)

(assert (=> d!1744890 (= (head!11788 (unfocusZipperList!909 zl!343)) (h!69066 (unfocusZipperList!909 zl!343)))))

(assert (=> b!5503800 d!1744890))

(declare-fun bs!1269620 () Bool)

(declare-fun d!1744892 () Bool)

(assert (= bs!1269620 (and d!1744892 d!1744744)))

(declare-fun lambda!294725 () Int)

(assert (=> bs!1269620 (= lambda!294725 lambda!294713)))

(declare-fun bs!1269621 () Bool)

(assert (= bs!1269621 (and d!1744892 d!1744790)))

(assert (=> bs!1269621 (= lambda!294725 lambda!294719)))

(assert (=> d!1744892 (= (nullableZipper!1523 z!1189) (exists!2133 z!1189 lambda!294725))))

(declare-fun bs!1269622 () Bool)

(assert (= bs!1269622 d!1744892))

(declare-fun m!6512016 () Bool)

(assert (=> bs!1269622 m!6512016))

(assert (=> b!5503663 d!1744892))

(assert (=> b!5503623 d!1744742))

(declare-fun d!1744894 () Bool)

(assert (=> d!1744894 (= (Exists!2583 (ite c!961492 lambda!294669 lambda!294670)) (choose!41823 (ite c!961492 lambda!294669 lambda!294670)))))

(declare-fun bs!1269623 () Bool)

(assert (= bs!1269623 d!1744894))

(declare-fun m!6512018 () Bool)

(assert (=> bs!1269623 m!6512018))

(assert (=> bm!406507 d!1744894))

(declare-fun d!1744896 () Bool)

(declare-fun res!2345980 () Bool)

(declare-fun e!3404841 () Bool)

(assert (=> d!1744896 (=> res!2345980 e!3404841)))

(assert (=> d!1744896 (= res!2345980 ((_ is Nil!62618) (exprs!5365 setElem!36493)))))

(assert (=> d!1744896 (= (forall!14666 (exprs!5365 setElem!36493) lambda!294683) e!3404841)))

(declare-fun b!5504762 () Bool)

(declare-fun e!3404842 () Bool)

(assert (=> b!5504762 (= e!3404841 e!3404842)))

(declare-fun res!2345981 () Bool)

(assert (=> b!5504762 (=> (not res!2345981) (not e!3404842))))

(assert (=> b!5504762 (= res!2345981 (dynLambda!24474 lambda!294683 (h!69066 (exprs!5365 setElem!36493))))))

(declare-fun b!5504763 () Bool)

(assert (=> b!5504763 (= e!3404842 (forall!14666 (t!375981 (exprs!5365 setElem!36493)) lambda!294683))))

(assert (= (and d!1744896 (not res!2345980)) b!5504762))

(assert (= (and b!5504762 res!2345981) b!5504763))

(declare-fun b_lambda!208781 () Bool)

(assert (=> (not b_lambda!208781) (not b!5504762)))

(declare-fun m!6512020 () Bool)

(assert (=> b!5504762 m!6512020))

(declare-fun m!6512022 () Bool)

(assert (=> b!5504763 m!6512022))

(assert (=> d!1744490 d!1744896))

(assert (=> bm!406506 d!1744750))

(assert (=> b!5503627 d!1744766))

(assert (=> b!5503627 d!1744768))

(assert (=> b!5503686 d!1744742))

(declare-fun d!1744898 () Bool)

(declare-fun c!961814 () Bool)

(assert (=> d!1744898 (= c!961814 ((_ is Nil!62619) lt!2243993))))

(declare-fun e!3404845 () (InoxSet Context!9730))

(assert (=> d!1744898 (= (content!11245 lt!2243993) e!3404845)))

(declare-fun b!5504768 () Bool)

(assert (=> b!5504768 (= e!3404845 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504769 () Bool)

(assert (=> b!5504769 (= e!3404845 ((_ map or) (store ((as const (Array Context!9730 Bool)) false) (h!69067 lt!2243993) true) (content!11245 (t!375982 lt!2243993))))))

(assert (= (and d!1744898 c!961814) b!5504768))

(assert (= (and d!1744898 (not c!961814)) b!5504769))

(declare-fun m!6512024 () Bool)

(assert (=> b!5504769 m!6512024))

(declare-fun m!6512026 () Bool)

(assert (=> b!5504769 m!6512026))

(assert (=> b!5503856 d!1744898))

(declare-fun d!1744900 () Bool)

(assert (=> d!1744900 (= (isConcat!587 lt!2243969) ((_ is Concat!24326) lt!2243969))))

(assert (=> b!5503654 d!1744900))

(declare-fun bs!1269624 () Bool)

(declare-fun b!5504770 () Bool)

(assert (= bs!1269624 (and b!5504770 b!5503580)))

(declare-fun lambda!294726 () Int)

(assert (=> bs!1269624 (not (= lambda!294726 lambda!294663))))

(declare-fun bs!1269625 () Bool)

(assert (= bs!1269625 (and b!5504770 b!5503572)))

(assert (=> bs!1269625 (= (and (= (reg!15810 (regTwo!31475 (regTwo!31475 r!7292))) (reg!15810 r!7292)) (= (regTwo!31475 (regTwo!31475 r!7292)) r!7292)) (= lambda!294726 lambda!294662))))

(declare-fun bs!1269626 () Bool)

(assert (= bs!1269626 (and b!5504770 b!5504559)))

(assert (=> bs!1269626 (= (and (= (reg!15810 (regTwo!31475 (regTwo!31475 r!7292))) (reg!15810 (regOne!31475 (regTwo!31475 r!7292)))) (= (regTwo!31475 (regTwo!31475 r!7292)) (regOne!31475 (regTwo!31475 r!7292)))) (= lambda!294726 lambda!294720))))

(declare-fun bs!1269627 () Bool)

(assert (= bs!1269627 (and b!5504770 b!5503667)))

(assert (=> bs!1269627 (= (and (= (reg!15810 (regTwo!31475 (regTwo!31475 r!7292))) (reg!15810 (regTwo!31475 r!7292))) (= (regTwo!31475 (regTwo!31475 r!7292)) (regTwo!31475 r!7292))) (= lambda!294726 lambda!294667))))

(declare-fun bs!1269628 () Bool)

(assert (= bs!1269628 (and b!5504770 b!5503700)))

(assert (=> bs!1269628 (not (= lambda!294726 lambda!294670))))

(declare-fun bs!1269629 () Bool)

(assert (= bs!1269629 (and b!5504770 b!5504498)))

(assert (=> bs!1269629 (not (= lambda!294726 lambda!294715))))

(declare-fun bs!1269630 () Bool)

(assert (= bs!1269630 (and b!5504770 b!5504490)))

(assert (=> bs!1269630 (= (and (= (reg!15810 (regTwo!31475 (regTwo!31475 r!7292))) (reg!15810 (regTwo!31475 (regOne!31475 r!7292)))) (= (regTwo!31475 (regTwo!31475 r!7292)) (regTwo!31475 (regOne!31475 r!7292)))) (= lambda!294726 lambda!294714))))

(declare-fun bs!1269631 () Bool)

(assert (= bs!1269631 (and b!5504770 b!5503675)))

(assert (=> bs!1269631 (not (= lambda!294726 lambda!294668))))

(declare-fun bs!1269632 () Bool)

(assert (= bs!1269632 (and b!5504770 b!5504567)))

(assert (=> bs!1269632 (not (= lambda!294726 lambda!294721))))

(declare-fun bs!1269633 () Bool)

(assert (= bs!1269633 (and b!5504770 b!5503692)))

(assert (=> bs!1269633 (= (and (= (reg!15810 (regTwo!31475 (regTwo!31475 r!7292))) (reg!15810 (regOne!31475 r!7292))) (= (regTwo!31475 (regTwo!31475 r!7292)) (regOne!31475 r!7292))) (= lambda!294726 lambda!294669))))

(assert (=> b!5504770 true))

(assert (=> b!5504770 true))

(declare-fun bs!1269634 () Bool)

(declare-fun b!5504778 () Bool)

(assert (= bs!1269634 (and b!5504778 b!5503580)))

(declare-fun lambda!294727 () Int)

(assert (=> bs!1269634 (= (and (= (regOne!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regOne!31474 r!7292)) (= (regTwo!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regTwo!31474 r!7292))) (= lambda!294727 lambda!294663))))

(declare-fun bs!1269635 () Bool)

(assert (= bs!1269635 (and b!5504778 b!5503572)))

(assert (=> bs!1269635 (not (= lambda!294727 lambda!294662))))

(declare-fun bs!1269636 () Bool)

(assert (= bs!1269636 (and b!5504778 b!5504770)))

(assert (=> bs!1269636 (not (= lambda!294727 lambda!294726))))

(declare-fun bs!1269637 () Bool)

(assert (= bs!1269637 (and b!5504778 b!5504559)))

(assert (=> bs!1269637 (not (= lambda!294727 lambda!294720))))

(declare-fun bs!1269638 () Bool)

(assert (= bs!1269638 (and b!5504778 b!5503667)))

(assert (=> bs!1269638 (not (= lambda!294727 lambda!294667))))

(declare-fun bs!1269639 () Bool)

(assert (= bs!1269639 (and b!5504778 b!5503700)))

(assert (=> bs!1269639 (= (and (= (regOne!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regOne!31474 (regOne!31475 r!7292))) (= (regTwo!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regTwo!31474 (regOne!31475 r!7292)))) (= lambda!294727 lambda!294670))))

(declare-fun bs!1269640 () Bool)

(assert (= bs!1269640 (and b!5504778 b!5504498)))

(assert (=> bs!1269640 (= (and (= (regOne!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regOne!31474 (regTwo!31475 (regOne!31475 r!7292)))) (= (regTwo!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regTwo!31474 (regTwo!31475 (regOne!31475 r!7292))))) (= lambda!294727 lambda!294715))))

(declare-fun bs!1269641 () Bool)

(assert (= bs!1269641 (and b!5504778 b!5504490)))

(assert (=> bs!1269641 (not (= lambda!294727 lambda!294714))))

(declare-fun bs!1269642 () Bool)

(assert (= bs!1269642 (and b!5504778 b!5503675)))

(assert (=> bs!1269642 (= (and (= (regOne!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regOne!31474 (regTwo!31475 r!7292))) (= (regTwo!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regTwo!31474 (regTwo!31475 r!7292)))) (= lambda!294727 lambda!294668))))

(declare-fun bs!1269643 () Bool)

(assert (= bs!1269643 (and b!5504778 b!5504567)))

(assert (=> bs!1269643 (= (and (= (regOne!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regOne!31474 (regOne!31475 (regTwo!31475 r!7292)))) (= (regTwo!31474 (regTwo!31475 (regTwo!31475 r!7292))) (regTwo!31474 (regOne!31475 (regTwo!31475 r!7292))))) (= lambda!294727 lambda!294721))))

(declare-fun bs!1269644 () Bool)

(assert (= bs!1269644 (and b!5504778 b!5503692)))

(assert (=> bs!1269644 (not (= lambda!294727 lambda!294669))))

(assert (=> b!5504778 true))

(assert (=> b!5504778 true))

(declare-fun c!961816 () Bool)

(declare-fun bm!406767 () Bool)

(declare-fun call!406773 () Bool)

(assert (=> bm!406767 (= call!406773 (Exists!2583 (ite c!961816 lambda!294726 lambda!294727)))))

(declare-fun e!3404846 () Bool)

(assert (=> b!5504770 (= e!3404846 call!406773)))

(declare-fun b!5504771 () Bool)

(declare-fun e!3404848 () Bool)

(assert (=> b!5504771 (= e!3404848 (matchRSpec!2584 (regTwo!31475 (regTwo!31475 (regTwo!31475 r!7292))) s!2326))))

(declare-fun bm!406768 () Bool)

(declare-fun call!406772 () Bool)

(assert (=> bm!406768 (= call!406772 (isEmpty!34404 s!2326))))

(declare-fun b!5504772 () Bool)

(declare-fun c!961817 () Bool)

(assert (=> b!5504772 (= c!961817 ((_ is Union!15481) (regTwo!31475 (regTwo!31475 r!7292))))))

(declare-fun e!3404847 () Bool)

(declare-fun e!3404849 () Bool)

(assert (=> b!5504772 (= e!3404847 e!3404849)))

(declare-fun b!5504774 () Bool)

(declare-fun c!961818 () Bool)

(assert (=> b!5504774 (= c!961818 ((_ is ElementMatch!15481) (regTwo!31475 (regTwo!31475 r!7292))))))

(declare-fun e!3404851 () Bool)

(assert (=> b!5504774 (= e!3404851 e!3404847)))

(declare-fun b!5504775 () Bool)

(declare-fun e!3404850 () Bool)

(assert (=> b!5504775 (= e!3404850 call!406772)))

(declare-fun b!5504776 () Bool)

(assert (=> b!5504776 (= e!3404849 e!3404848)))

(declare-fun res!2345982 () Bool)

(assert (=> b!5504776 (= res!2345982 (matchRSpec!2584 (regOne!31475 (regTwo!31475 (regTwo!31475 r!7292))) s!2326))))

(assert (=> b!5504776 (=> res!2345982 e!3404848)))

(declare-fun b!5504777 () Bool)

(declare-fun e!3404852 () Bool)

(assert (=> b!5504777 (= e!3404849 e!3404852)))

(assert (=> b!5504777 (= c!961816 ((_ is Star!15481) (regTwo!31475 (regTwo!31475 r!7292))))))

(assert (=> b!5504778 (= e!3404852 call!406773)))

(declare-fun b!5504773 () Bool)

(assert (=> b!5504773 (= e!3404850 e!3404851)))

(declare-fun res!2345984 () Bool)

(assert (=> b!5504773 (= res!2345984 (not ((_ is EmptyLang!15481) (regTwo!31475 (regTwo!31475 r!7292)))))))

(assert (=> b!5504773 (=> (not res!2345984) (not e!3404851))))

(declare-fun d!1744902 () Bool)

(declare-fun c!961815 () Bool)

(assert (=> d!1744902 (= c!961815 ((_ is EmptyExpr!15481) (regTwo!31475 (regTwo!31475 r!7292))))))

(assert (=> d!1744902 (= (matchRSpec!2584 (regTwo!31475 (regTwo!31475 r!7292)) s!2326) e!3404850)))

(declare-fun b!5504779 () Bool)

(assert (=> b!5504779 (= e!3404847 (= s!2326 (Cons!62620 (c!961331 (regTwo!31475 (regTwo!31475 r!7292))) Nil!62620)))))

(declare-fun b!5504780 () Bool)

(declare-fun res!2345983 () Bool)

(assert (=> b!5504780 (=> res!2345983 e!3404846)))

(assert (=> b!5504780 (= res!2345983 call!406772)))

(assert (=> b!5504780 (= e!3404852 e!3404846)))

(assert (= (and d!1744902 c!961815) b!5504775))

(assert (= (and d!1744902 (not c!961815)) b!5504773))

(assert (= (and b!5504773 res!2345984) b!5504774))

(assert (= (and b!5504774 c!961818) b!5504779))

(assert (= (and b!5504774 (not c!961818)) b!5504772))

(assert (= (and b!5504772 c!961817) b!5504776))

(assert (= (and b!5504772 (not c!961817)) b!5504777))

(assert (= (and b!5504776 (not res!2345982)) b!5504771))

(assert (= (and b!5504777 c!961816) b!5504780))

(assert (= (and b!5504777 (not c!961816)) b!5504778))

(assert (= (and b!5504780 (not res!2345983)) b!5504770))

(assert (= (or b!5504770 b!5504778) bm!406767))

(assert (= (or b!5504775 b!5504780) bm!406768))

(declare-fun m!6512028 () Bool)

(assert (=> bm!406767 m!6512028))

(declare-fun m!6512030 () Bool)

(assert (=> b!5504771 m!6512030))

(assert (=> bm!406768 m!6511048))

(declare-fun m!6512032 () Bool)

(assert (=> b!5504776 m!6512032))

(assert (=> b!5503668 d!1744902))

(declare-fun b!5504781 () Bool)

(declare-fun e!3404854 () (InoxSet Context!9730))

(declare-fun call!406778 () (InoxSet Context!9730))

(assert (=> b!5504781 (= e!3404854 call!406778)))

(declare-fun b!5504782 () Bool)

(declare-fun c!961821 () Bool)

(assert (=> b!5504782 (= c!961821 ((_ is Star!15481) (h!69066 (exprs!5365 lt!2243906))))))

(declare-fun e!3404855 () (InoxSet Context!9730))

(assert (=> b!5504782 (= e!3404854 e!3404855)))

(declare-fun bm!406769 () Bool)

(declare-fun call!406775 () (InoxSet Context!9730))

(assert (=> bm!406769 (= call!406778 call!406775)))

(declare-fun bm!406770 () Bool)

(declare-fun call!406774 () List!62742)

(declare-fun call!406779 () List!62742)

(assert (=> bm!406770 (= call!406774 call!406779)))

(declare-fun b!5504784 () Bool)

(assert (=> b!5504784 (= e!3404855 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504785 () Bool)

(declare-fun e!3404853 () Bool)

(assert (=> b!5504785 (= e!3404853 (nullable!5518 (regOne!31474 (h!69066 (exprs!5365 lt!2243906)))))))

(declare-fun c!961819 () Bool)

(declare-fun bm!406771 () Bool)

(declare-fun call!406776 () (InoxSet Context!9730))

(assert (=> bm!406771 (= call!406776 (derivationStepZipperDown!827 (ite c!961819 (regOne!31475 (h!69066 (exprs!5365 lt!2243906))) (regOne!31474 (h!69066 (exprs!5365 lt!2243906)))) (ite c!961819 (Context!9731 (t!375981 (exprs!5365 lt!2243906))) (Context!9731 call!406779)) (h!69068 s!2326)))))

(declare-fun b!5504786 () Bool)

(assert (=> b!5504786 (= e!3404855 call!406778)))

(declare-fun b!5504787 () Bool)

(declare-fun e!3404857 () (InoxSet Context!9730))

(assert (=> b!5504787 (= e!3404857 e!3404854)))

(declare-fun c!961822 () Bool)

(assert (=> b!5504787 (= c!961822 ((_ is Concat!24326) (h!69066 (exprs!5365 lt!2243906))))))

(declare-fun bm!406772 () Bool)

(declare-fun call!406777 () (InoxSet Context!9730))

(declare-fun c!961823 () Bool)

(assert (=> bm!406772 (= call!406777 (derivationStepZipperDown!827 (ite c!961819 (regTwo!31475 (h!69066 (exprs!5365 lt!2243906))) (ite c!961823 (regTwo!31474 (h!69066 (exprs!5365 lt!2243906))) (ite c!961822 (regOne!31474 (h!69066 (exprs!5365 lt!2243906))) (reg!15810 (h!69066 (exprs!5365 lt!2243906)))))) (ite (or c!961819 c!961823) (Context!9731 (t!375981 (exprs!5365 lt!2243906))) (Context!9731 call!406774)) (h!69068 s!2326)))))

(declare-fun b!5504788 () Bool)

(declare-fun e!3404856 () (InoxSet Context!9730))

(declare-fun e!3404858 () (InoxSet Context!9730))

(assert (=> b!5504788 (= e!3404856 e!3404858)))

(assert (=> b!5504788 (= c!961819 ((_ is Union!15481) (h!69066 (exprs!5365 lt!2243906))))))

(declare-fun b!5504789 () Bool)

(assert (=> b!5504789 (= e!3404858 ((_ map or) call!406776 call!406777))))

(declare-fun b!5504790 () Bool)

(assert (=> b!5504790 (= e!3404857 ((_ map or) call!406776 call!406775))))

(declare-fun bm!406773 () Bool)

(assert (=> bm!406773 (= call!406779 ($colon$colon!1572 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243906)))) (ite (or c!961823 c!961822) (regTwo!31474 (h!69066 (exprs!5365 lt!2243906))) (h!69066 (exprs!5365 lt!2243906)))))))

(declare-fun d!1744904 () Bool)

(declare-fun c!961820 () Bool)

(assert (=> d!1744904 (= c!961820 (and ((_ is ElementMatch!15481) (h!69066 (exprs!5365 lt!2243906))) (= (c!961331 (h!69066 (exprs!5365 lt!2243906))) (h!69068 s!2326))))))

(assert (=> d!1744904 (= (derivationStepZipperDown!827 (h!69066 (exprs!5365 lt!2243906)) (Context!9731 (t!375981 (exprs!5365 lt!2243906))) (h!69068 s!2326)) e!3404856)))

(declare-fun b!5504783 () Bool)

(assert (=> b!5504783 (= e!3404856 (store ((as const (Array Context!9730 Bool)) false) (Context!9731 (t!375981 (exprs!5365 lt!2243906))) true))))

(declare-fun b!5504791 () Bool)

(assert (=> b!5504791 (= c!961823 e!3404853)))

(declare-fun res!2345985 () Bool)

(assert (=> b!5504791 (=> (not res!2345985) (not e!3404853))))

(assert (=> b!5504791 (= res!2345985 ((_ is Concat!24326) (h!69066 (exprs!5365 lt!2243906))))))

(assert (=> b!5504791 (= e!3404858 e!3404857)))

(declare-fun bm!406774 () Bool)

(assert (=> bm!406774 (= call!406775 call!406777)))

(assert (= (and d!1744904 c!961820) b!5504783))

(assert (= (and d!1744904 (not c!961820)) b!5504788))

(assert (= (and b!5504788 c!961819) b!5504789))

(assert (= (and b!5504788 (not c!961819)) b!5504791))

(assert (= (and b!5504791 res!2345985) b!5504785))

(assert (= (and b!5504791 c!961823) b!5504790))

(assert (= (and b!5504791 (not c!961823)) b!5504787))

(assert (= (and b!5504787 c!961822) b!5504781))

(assert (= (and b!5504787 (not c!961822)) b!5504782))

(assert (= (and b!5504782 c!961821) b!5504786))

(assert (= (and b!5504782 (not c!961821)) b!5504784))

(assert (= (or b!5504781 b!5504786) bm!406770))

(assert (= (or b!5504781 b!5504786) bm!406769))

(assert (= (or b!5504790 bm!406770) bm!406773))

(assert (= (or b!5504790 bm!406769) bm!406774))

(assert (= (or b!5504789 bm!406774) bm!406772))

(assert (= (or b!5504789 b!5504790) bm!406771))

(declare-fun m!6512034 () Bool)

(assert (=> bm!406772 m!6512034))

(declare-fun m!6512036 () Bool)

(assert (=> bm!406771 m!6512036))

(declare-fun m!6512038 () Bool)

(assert (=> b!5504783 m!6512038))

(declare-fun m!6512040 () Bool)

(assert (=> bm!406773 m!6512040))

(declare-fun m!6512042 () Bool)

(assert (=> b!5504785 m!6512042))

(assert (=> bm!406542 d!1744904))

(assert (=> d!1744438 d!1744446))

(assert (=> d!1744438 d!1744444))

(declare-fun d!1744906 () Bool)

(assert (=> d!1744906 (= (matchR!7666 (regOne!31475 r!7292) s!2326) (matchRSpec!2584 (regOne!31475 r!7292) s!2326))))

(assert (=> d!1744906 true))

(declare-fun _$88!3754 () Unit!155422)

(assert (=> d!1744906 (= (choose!41817 (regOne!31475 r!7292) s!2326) _$88!3754)))

(declare-fun bs!1269645 () Bool)

(assert (= bs!1269645 d!1744906))

(assert (=> bs!1269645 m!6510744))

(assert (=> bs!1269645 m!6510740))

(assert (=> d!1744438 d!1744906))

(assert (=> d!1744438 d!1744794))

(assert (=> bs!1269349 d!1744478))

(declare-fun bs!1269646 () Bool)

(declare-fun b!5504792 () Bool)

(assert (= bs!1269646 (and b!5504792 b!5503580)))

(declare-fun lambda!294728 () Int)

(assert (=> bs!1269646 (not (= lambda!294728 lambda!294663))))

(declare-fun bs!1269647 () Bool)

(assert (= bs!1269647 (and b!5504792 b!5503572)))

(assert (=> bs!1269647 (= (and (= (reg!15810 (regOne!31475 (regOne!31475 r!7292))) (reg!15810 r!7292)) (= (regOne!31475 (regOne!31475 r!7292)) r!7292)) (= lambda!294728 lambda!294662))))

(declare-fun bs!1269648 () Bool)

(assert (= bs!1269648 (and b!5504792 b!5504770)))

(assert (=> bs!1269648 (= (and (= (reg!15810 (regOne!31475 (regOne!31475 r!7292))) (reg!15810 (regTwo!31475 (regTwo!31475 r!7292)))) (= (regOne!31475 (regOne!31475 r!7292)) (regTwo!31475 (regTwo!31475 r!7292)))) (= lambda!294728 lambda!294726))))

(declare-fun bs!1269649 () Bool)

(assert (= bs!1269649 (and b!5504792 b!5504559)))

(assert (=> bs!1269649 (= (and (= (reg!15810 (regOne!31475 (regOne!31475 r!7292))) (reg!15810 (regOne!31475 (regTwo!31475 r!7292)))) (= (regOne!31475 (regOne!31475 r!7292)) (regOne!31475 (regTwo!31475 r!7292)))) (= lambda!294728 lambda!294720))))

(declare-fun bs!1269650 () Bool)

(assert (= bs!1269650 (and b!5504792 b!5503667)))

(assert (=> bs!1269650 (= (and (= (reg!15810 (regOne!31475 (regOne!31475 r!7292))) (reg!15810 (regTwo!31475 r!7292))) (= (regOne!31475 (regOne!31475 r!7292)) (regTwo!31475 r!7292))) (= lambda!294728 lambda!294667))))

(declare-fun bs!1269651 () Bool)

(assert (= bs!1269651 (and b!5504792 b!5503700)))

(assert (=> bs!1269651 (not (= lambda!294728 lambda!294670))))

(declare-fun bs!1269652 () Bool)

(assert (= bs!1269652 (and b!5504792 b!5504778)))

(assert (=> bs!1269652 (not (= lambda!294728 lambda!294727))))

(declare-fun bs!1269653 () Bool)

(assert (= bs!1269653 (and b!5504792 b!5504498)))

(assert (=> bs!1269653 (not (= lambda!294728 lambda!294715))))

(declare-fun bs!1269654 () Bool)

(assert (= bs!1269654 (and b!5504792 b!5504490)))

(assert (=> bs!1269654 (= (and (= (reg!15810 (regOne!31475 (regOne!31475 r!7292))) (reg!15810 (regTwo!31475 (regOne!31475 r!7292)))) (= (regOne!31475 (regOne!31475 r!7292)) (regTwo!31475 (regOne!31475 r!7292)))) (= lambda!294728 lambda!294714))))

(declare-fun bs!1269655 () Bool)

(assert (= bs!1269655 (and b!5504792 b!5503675)))

(assert (=> bs!1269655 (not (= lambda!294728 lambda!294668))))

(declare-fun bs!1269656 () Bool)

(assert (= bs!1269656 (and b!5504792 b!5504567)))

(assert (=> bs!1269656 (not (= lambda!294728 lambda!294721))))

(declare-fun bs!1269657 () Bool)

(assert (= bs!1269657 (and b!5504792 b!5503692)))

(assert (=> bs!1269657 (= (and (= (reg!15810 (regOne!31475 (regOne!31475 r!7292))) (reg!15810 (regOne!31475 r!7292))) (= (regOne!31475 (regOne!31475 r!7292)) (regOne!31475 r!7292))) (= lambda!294728 lambda!294669))))

(assert (=> b!5504792 true))

(assert (=> b!5504792 true))

(declare-fun bs!1269658 () Bool)

(declare-fun b!5504800 () Bool)

(assert (= bs!1269658 (and b!5504800 b!5503580)))

(declare-fun lambda!294729 () Int)

(assert (=> bs!1269658 (= (and (= (regOne!31474 (regOne!31475 (regOne!31475 r!7292))) (regOne!31474 r!7292)) (= (regTwo!31474 (regOne!31475 (regOne!31475 r!7292))) (regTwo!31474 r!7292))) (= lambda!294729 lambda!294663))))

(declare-fun bs!1269659 () Bool)

(assert (= bs!1269659 (and b!5504800 b!5503572)))

(assert (=> bs!1269659 (not (= lambda!294729 lambda!294662))))

(declare-fun bs!1269660 () Bool)

(assert (= bs!1269660 (and b!5504800 b!5504770)))

(assert (=> bs!1269660 (not (= lambda!294729 lambda!294726))))

(declare-fun bs!1269661 () Bool)

(assert (= bs!1269661 (and b!5504800 b!5504792)))

(assert (=> bs!1269661 (not (= lambda!294729 lambda!294728))))

(declare-fun bs!1269662 () Bool)

(assert (= bs!1269662 (and b!5504800 b!5504559)))

(assert (=> bs!1269662 (not (= lambda!294729 lambda!294720))))

(declare-fun bs!1269663 () Bool)

(assert (= bs!1269663 (and b!5504800 b!5503667)))

(assert (=> bs!1269663 (not (= lambda!294729 lambda!294667))))

(declare-fun bs!1269664 () Bool)

(assert (= bs!1269664 (and b!5504800 b!5503700)))

(assert (=> bs!1269664 (= (and (= (regOne!31474 (regOne!31475 (regOne!31475 r!7292))) (regOne!31474 (regOne!31475 r!7292))) (= (regTwo!31474 (regOne!31475 (regOne!31475 r!7292))) (regTwo!31474 (regOne!31475 r!7292)))) (= lambda!294729 lambda!294670))))

(declare-fun bs!1269665 () Bool)

(assert (= bs!1269665 (and b!5504800 b!5504778)))

(assert (=> bs!1269665 (= (and (= (regOne!31474 (regOne!31475 (regOne!31475 r!7292))) (regOne!31474 (regTwo!31475 (regTwo!31475 r!7292)))) (= (regTwo!31474 (regOne!31475 (regOne!31475 r!7292))) (regTwo!31474 (regTwo!31475 (regTwo!31475 r!7292))))) (= lambda!294729 lambda!294727))))

(declare-fun bs!1269666 () Bool)

(assert (= bs!1269666 (and b!5504800 b!5504498)))

(assert (=> bs!1269666 (= (and (= (regOne!31474 (regOne!31475 (regOne!31475 r!7292))) (regOne!31474 (regTwo!31475 (regOne!31475 r!7292)))) (= (regTwo!31474 (regOne!31475 (regOne!31475 r!7292))) (regTwo!31474 (regTwo!31475 (regOne!31475 r!7292))))) (= lambda!294729 lambda!294715))))

(declare-fun bs!1269667 () Bool)

(assert (= bs!1269667 (and b!5504800 b!5504490)))

(assert (=> bs!1269667 (not (= lambda!294729 lambda!294714))))

(declare-fun bs!1269668 () Bool)

(assert (= bs!1269668 (and b!5504800 b!5503675)))

(assert (=> bs!1269668 (= (and (= (regOne!31474 (regOne!31475 (regOne!31475 r!7292))) (regOne!31474 (regTwo!31475 r!7292))) (= (regTwo!31474 (regOne!31475 (regOne!31475 r!7292))) (regTwo!31474 (regTwo!31475 r!7292)))) (= lambda!294729 lambda!294668))))

(declare-fun bs!1269669 () Bool)

(assert (= bs!1269669 (and b!5504800 b!5504567)))

(assert (=> bs!1269669 (= (and (= (regOne!31474 (regOne!31475 (regOne!31475 r!7292))) (regOne!31474 (regOne!31475 (regTwo!31475 r!7292)))) (= (regTwo!31474 (regOne!31475 (regOne!31475 r!7292))) (regTwo!31474 (regOne!31475 (regTwo!31475 r!7292))))) (= lambda!294729 lambda!294721))))

(declare-fun bs!1269670 () Bool)

(assert (= bs!1269670 (and b!5504800 b!5503692)))

(assert (=> bs!1269670 (not (= lambda!294729 lambda!294669))))

(assert (=> b!5504800 true))

(assert (=> b!5504800 true))

(declare-fun bm!406775 () Bool)

(declare-fun call!406781 () Bool)

(declare-fun c!961825 () Bool)

(assert (=> bm!406775 (= call!406781 (Exists!2583 (ite c!961825 lambda!294728 lambda!294729)))))

(declare-fun e!3404859 () Bool)

(assert (=> b!5504792 (= e!3404859 call!406781)))

(declare-fun b!5504793 () Bool)

(declare-fun e!3404861 () Bool)

(assert (=> b!5504793 (= e!3404861 (matchRSpec!2584 (regTwo!31475 (regOne!31475 (regOne!31475 r!7292))) s!2326))))

(declare-fun bm!406776 () Bool)

(declare-fun call!406780 () Bool)

(assert (=> bm!406776 (= call!406780 (isEmpty!34404 s!2326))))

(declare-fun b!5504794 () Bool)

(declare-fun c!961826 () Bool)

(assert (=> b!5504794 (= c!961826 ((_ is Union!15481) (regOne!31475 (regOne!31475 r!7292))))))

(declare-fun e!3404860 () Bool)

(declare-fun e!3404862 () Bool)

(assert (=> b!5504794 (= e!3404860 e!3404862)))

(declare-fun b!5504796 () Bool)

(declare-fun c!961827 () Bool)

(assert (=> b!5504796 (= c!961827 ((_ is ElementMatch!15481) (regOne!31475 (regOne!31475 r!7292))))))

(declare-fun e!3404864 () Bool)

(assert (=> b!5504796 (= e!3404864 e!3404860)))

(declare-fun b!5504797 () Bool)

(declare-fun e!3404863 () Bool)

(assert (=> b!5504797 (= e!3404863 call!406780)))

(declare-fun b!5504798 () Bool)

(assert (=> b!5504798 (= e!3404862 e!3404861)))

(declare-fun res!2345986 () Bool)

(assert (=> b!5504798 (= res!2345986 (matchRSpec!2584 (regOne!31475 (regOne!31475 (regOne!31475 r!7292))) s!2326))))

(assert (=> b!5504798 (=> res!2345986 e!3404861)))

(declare-fun b!5504799 () Bool)

(declare-fun e!3404865 () Bool)

(assert (=> b!5504799 (= e!3404862 e!3404865)))

(assert (=> b!5504799 (= c!961825 ((_ is Star!15481) (regOne!31475 (regOne!31475 r!7292))))))

(assert (=> b!5504800 (= e!3404865 call!406781)))

(declare-fun b!5504795 () Bool)

(assert (=> b!5504795 (= e!3404863 e!3404864)))

(declare-fun res!2345988 () Bool)

(assert (=> b!5504795 (= res!2345988 (not ((_ is EmptyLang!15481) (regOne!31475 (regOne!31475 r!7292)))))))

(assert (=> b!5504795 (=> (not res!2345988) (not e!3404864))))

(declare-fun d!1744908 () Bool)

(declare-fun c!961824 () Bool)

(assert (=> d!1744908 (= c!961824 ((_ is EmptyExpr!15481) (regOne!31475 (regOne!31475 r!7292))))))

(assert (=> d!1744908 (= (matchRSpec!2584 (regOne!31475 (regOne!31475 r!7292)) s!2326) e!3404863)))

(declare-fun b!5504801 () Bool)

(assert (=> b!5504801 (= e!3404860 (= s!2326 (Cons!62620 (c!961331 (regOne!31475 (regOne!31475 r!7292))) Nil!62620)))))

(declare-fun b!5504802 () Bool)

(declare-fun res!2345987 () Bool)

(assert (=> b!5504802 (=> res!2345987 e!3404859)))

(assert (=> b!5504802 (= res!2345987 call!406780)))

(assert (=> b!5504802 (= e!3404865 e!3404859)))

(assert (= (and d!1744908 c!961824) b!5504797))

(assert (= (and d!1744908 (not c!961824)) b!5504795))

(assert (= (and b!5504795 res!2345988) b!5504796))

(assert (= (and b!5504796 c!961827) b!5504801))

(assert (= (and b!5504796 (not c!961827)) b!5504794))

(assert (= (and b!5504794 c!961826) b!5504798))

(assert (= (and b!5504794 (not c!961826)) b!5504799))

(assert (= (and b!5504798 (not res!2345986)) b!5504793))

(assert (= (and b!5504799 c!961825) b!5504802))

(assert (= (and b!5504799 (not c!961825)) b!5504800))

(assert (= (and b!5504802 (not res!2345987)) b!5504792))

(assert (= (or b!5504792 b!5504800) bm!406775))

(assert (= (or b!5504797 b!5504802) bm!406776))

(declare-fun m!6512044 () Bool)

(assert (=> bm!406775 m!6512044))

(declare-fun m!6512046 () Bool)

(assert (=> b!5504793 m!6512046))

(assert (=> bm!406776 m!6511048))

(declare-fun m!6512048 () Bool)

(assert (=> b!5504798 m!6512048))

(assert (=> b!5503698 d!1744908))

(assert (=> b!5503690 d!1744766))

(assert (=> b!5503690 d!1744768))

(assert (=> d!1744466 d!1744852))

(declare-fun d!1744910 () Bool)

(assert (=> d!1744910 true))

(declare-fun setRes!36508 () Bool)

(assert (=> d!1744910 setRes!36508))

(declare-fun condSetEmpty!36508 () Bool)

(declare-fun res!2345991 () (InoxSet Context!9730))

(assert (=> d!1744910 (= condSetEmpty!36508 (= res!2345991 ((as const (Array Context!9730 Bool)) false)))))

(assert (=> d!1744910 (= (choose!41818 z!1189 lambda!294631) res!2345991)))

(declare-fun setIsEmpty!36508 () Bool)

(assert (=> setIsEmpty!36508 setRes!36508))

(declare-fun tp!1514535 () Bool)

(declare-fun setNonEmpty!36508 () Bool)

(declare-fun e!3404868 () Bool)

(declare-fun setElem!36508 () Context!9730)

(assert (=> setNonEmpty!36508 (= setRes!36508 (and tp!1514535 (inv!81949 setElem!36508) e!3404868))))

(declare-fun setRest!36508 () (InoxSet Context!9730))

(assert (=> setNonEmpty!36508 (= res!2345991 ((_ map or) (store ((as const (Array Context!9730 Bool)) false) setElem!36508 true) setRest!36508))))

(declare-fun b!5504805 () Bool)

(declare-fun tp!1514534 () Bool)

(assert (=> b!5504805 (= e!3404868 tp!1514534)))

(assert (= (and d!1744910 condSetEmpty!36508) setIsEmpty!36508))

(assert (= (and d!1744910 (not condSetEmpty!36508)) setNonEmpty!36508))

(assert (= setNonEmpty!36508 b!5504805))

(declare-fun m!6512050 () Bool)

(assert (=> setNonEmpty!36508 m!6512050))

(assert (=> d!1744450 d!1744910))

(declare-fun c!961829 () Bool)

(declare-fun bm!406777 () Bool)

(declare-fun call!406784 () Bool)

(assert (=> bm!406777 (= call!406784 (validRegex!7217 (ite c!961829 (regOne!31475 (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))) (regOne!31474 (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))))))))

(declare-fun b!5504806 () Bool)

(declare-fun e!3404870 () Bool)

(declare-fun call!406782 () Bool)

(assert (=> b!5504806 (= e!3404870 call!406782)))

(declare-fun b!5504807 () Bool)

(declare-fun e!3404875 () Bool)

(declare-fun e!3404871 () Bool)

(assert (=> b!5504807 (= e!3404875 e!3404871)))

(assert (=> b!5504807 (= c!961829 ((_ is Union!15481) (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))))))

(declare-fun b!5504808 () Bool)

(declare-fun res!2345995 () Bool)

(assert (=> b!5504808 (=> (not res!2345995) (not e!3404870))))

(assert (=> b!5504808 (= res!2345995 call!406784)))

(assert (=> b!5504808 (= e!3404871 e!3404870)))

(declare-fun b!5504809 () Bool)

(declare-fun e!3404873 () Bool)

(assert (=> b!5504809 (= e!3404873 e!3404875)))

(declare-fun c!961828 () Bool)

(assert (=> b!5504809 (= c!961828 ((_ is Star!15481) (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))))))

(declare-fun b!5504810 () Bool)

(declare-fun e!3404872 () Bool)

(assert (=> b!5504810 (= e!3404875 e!3404872)))

(declare-fun res!2345992 () Bool)

(assert (=> b!5504810 (= res!2345992 (not (nullable!5518 (reg!15810 (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))))))))

(assert (=> b!5504810 (=> (not res!2345992) (not e!3404872))))

(declare-fun b!5504811 () Bool)

(declare-fun res!2345996 () Bool)

(declare-fun e!3404869 () Bool)

(assert (=> b!5504811 (=> res!2345996 e!3404869)))

(assert (=> b!5504811 (= res!2345996 (not ((_ is Concat!24326) (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292)))))))

(assert (=> b!5504811 (= e!3404871 e!3404869)))

(declare-fun b!5504812 () Bool)

(declare-fun call!406783 () Bool)

(assert (=> b!5504812 (= e!3404872 call!406783)))

(declare-fun d!1744912 () Bool)

(declare-fun res!2345994 () Bool)

(assert (=> d!1744912 (=> res!2345994 e!3404873)))

(assert (=> d!1744912 (= res!2345994 ((_ is ElementMatch!15481) (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))))))

(assert (=> d!1744912 (= (validRegex!7217 (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))) e!3404873)))

(declare-fun bm!406778 () Bool)

(assert (=> bm!406778 (= call!406783 (validRegex!7217 (ite c!961828 (reg!15810 (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))) (ite c!961829 (regTwo!31475 (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292))) (regTwo!31474 (ite c!961545 (regOne!31475 r!7292) (regOne!31474 r!7292)))))))))

(declare-fun bm!406779 () Bool)

(assert (=> bm!406779 (= call!406782 call!406783)))

(declare-fun b!5504813 () Bool)

(declare-fun e!3404874 () Bool)

(assert (=> b!5504813 (= e!3404869 e!3404874)))

(declare-fun res!2345993 () Bool)

(assert (=> b!5504813 (=> (not res!2345993) (not e!3404874))))

(assert (=> b!5504813 (= res!2345993 call!406784)))

(declare-fun b!5504814 () Bool)

(assert (=> b!5504814 (= e!3404874 call!406782)))

(assert (= (and d!1744912 (not res!2345994)) b!5504809))

(assert (= (and b!5504809 c!961828) b!5504810))

(assert (= (and b!5504809 (not c!961828)) b!5504807))

(assert (= (and b!5504810 res!2345992) b!5504812))

(assert (= (and b!5504807 c!961829) b!5504808))

(assert (= (and b!5504807 (not c!961829)) b!5504811))

(assert (= (and b!5504808 res!2345995) b!5504806))

(assert (= (and b!5504811 (not res!2345996)) b!5504813))

(assert (= (and b!5504813 res!2345993) b!5504814))

(assert (= (or b!5504806 b!5504814) bm!406779))

(assert (= (or b!5504808 b!5504813) bm!406777))

(assert (= (or b!5504812 bm!406779) bm!406778))

(declare-fun m!6512052 () Bool)

(assert (=> bm!406777 m!6512052))

(declare-fun m!6512054 () Bool)

(assert (=> b!5504810 m!6512054))

(declare-fun m!6512056 () Bool)

(assert (=> bm!406778 m!6512056))

(assert (=> bm!406538 d!1744912))

(assert (=> b!5503573 d!1744436))

(assert (=> b!5503708 d!1744766))

(assert (=> b!5503708 d!1744768))

(declare-fun bs!1269671 () Bool)

(declare-fun d!1744914 () Bool)

(assert (= bs!1269671 (and d!1744914 d!1744744)))

(declare-fun lambda!294730 () Int)

(assert (=> bs!1269671 (= lambda!294730 lambda!294713)))

(declare-fun bs!1269672 () Bool)

(assert (= bs!1269672 (and d!1744914 d!1744790)))

(assert (=> bs!1269672 (= lambda!294730 lambda!294719)))

(declare-fun bs!1269673 () Bool)

(assert (= bs!1269673 (and d!1744914 d!1744892)))

(assert (=> bs!1269673 (= lambda!294730 lambda!294725)))

(assert (=> d!1744914 (= (nullableZipper!1523 lt!2243926) (exists!2133 lt!2243926 lambda!294730))))

(declare-fun bs!1269674 () Bool)

(assert (= bs!1269674 d!1744914))

(declare-fun m!6512058 () Bool)

(assert (=> bs!1269674 m!6512058))

(assert (=> b!5503665 d!1744914))

(declare-fun bs!1269675 () Bool)

(declare-fun d!1744916 () Bool)

(assert (= bs!1269675 (and d!1744916 d!1744464)))

(declare-fun lambda!294731 () Int)

(assert (=> bs!1269675 (= lambda!294731 lambda!294679)))

(declare-fun bs!1269676 () Bool)

(assert (= bs!1269676 (and d!1744916 d!1744490)))

(assert (=> bs!1269676 (= lambda!294731 lambda!294683)))

(declare-fun bs!1269677 () Bool)

(assert (= bs!1269677 (and d!1744916 d!1744470)))

(assert (=> bs!1269677 (= lambda!294731 lambda!294682)))

(declare-fun bs!1269678 () Bool)

(assert (= bs!1269678 (and d!1744916 d!1744780)))

(assert (=> bs!1269678 (= lambda!294731 lambda!294717)))

(declare-fun bs!1269679 () Bool)

(assert (= bs!1269679 (and d!1744916 d!1744462)))

(assert (=> bs!1269679 (= lambda!294731 lambda!294676)))

(declare-fun bs!1269680 () Bool)

(assert (= bs!1269680 (and d!1744916 d!1744864)))

(assert (=> bs!1269680 (= lambda!294731 lambda!294723)))

(declare-fun bs!1269681 () Bool)

(assert (= bs!1269681 (and d!1744916 d!1744430)))

(assert (=> bs!1269681 (= lambda!294731 lambda!294666)))

(declare-fun e!3404877 () Bool)

(assert (=> d!1744916 e!3404877))

(declare-fun res!2345997 () Bool)

(assert (=> d!1744916 (=> (not res!2345997) (not e!3404877))))

(declare-fun lt!2244013 () Regex!15481)

(assert (=> d!1744916 (= res!2345997 (validRegex!7217 lt!2244013))))

(declare-fun e!3404881 () Regex!15481)

(assert (=> d!1744916 (= lt!2244013 e!3404881)))

(declare-fun c!961830 () Bool)

(declare-fun e!3404879 () Bool)

(assert (=> d!1744916 (= c!961830 e!3404879)))

(declare-fun res!2345998 () Bool)

(assert (=> d!1744916 (=> (not res!2345998) (not e!3404879))))

(assert (=> d!1744916 (= res!2345998 ((_ is Cons!62618) (t!375981 (unfocusZipperList!909 zl!343))))))

(assert (=> d!1744916 (forall!14666 (t!375981 (unfocusZipperList!909 zl!343)) lambda!294731)))

(assert (=> d!1744916 (= (generalisedUnion!1344 (t!375981 (unfocusZipperList!909 zl!343))) lt!2244013)))

(declare-fun b!5504815 () Bool)

(declare-fun e!3404880 () Bool)

(assert (=> b!5504815 (= e!3404877 e!3404880)))

(declare-fun c!961831 () Bool)

(assert (=> b!5504815 (= c!961831 (isEmpty!34405 (t!375981 (unfocusZipperList!909 zl!343))))))

(declare-fun b!5504816 () Bool)

(declare-fun e!3404878 () Regex!15481)

(assert (=> b!5504816 (= e!3404878 (Union!15481 (h!69066 (t!375981 (unfocusZipperList!909 zl!343))) (generalisedUnion!1344 (t!375981 (t!375981 (unfocusZipperList!909 zl!343))))))))

(declare-fun b!5504817 () Bool)

(assert (=> b!5504817 (= e!3404878 EmptyLang!15481)))

(declare-fun b!5504818 () Bool)

(assert (=> b!5504818 (= e!3404880 (isEmptyLang!1075 lt!2244013))))

(declare-fun b!5504819 () Bool)

(assert (=> b!5504819 (= e!3404881 e!3404878)))

(declare-fun c!961833 () Bool)

(assert (=> b!5504819 (= c!961833 ((_ is Cons!62618) (t!375981 (unfocusZipperList!909 zl!343))))))

(declare-fun b!5504820 () Bool)

(assert (=> b!5504820 (= e!3404881 (h!69066 (t!375981 (unfocusZipperList!909 zl!343))))))

(declare-fun b!5504821 () Bool)

(declare-fun e!3404876 () Bool)

(assert (=> b!5504821 (= e!3404876 (= lt!2244013 (head!11788 (t!375981 (unfocusZipperList!909 zl!343)))))))

(declare-fun b!5504822 () Bool)

(assert (=> b!5504822 (= e!3404876 (isUnion!505 lt!2244013))))

(declare-fun b!5504823 () Bool)

(assert (=> b!5504823 (= e!3404879 (isEmpty!34405 (t!375981 (t!375981 (unfocusZipperList!909 zl!343)))))))

(declare-fun b!5504824 () Bool)

(assert (=> b!5504824 (= e!3404880 e!3404876)))

(declare-fun c!961832 () Bool)

(assert (=> b!5504824 (= c!961832 (isEmpty!34405 (tail!10883 (t!375981 (unfocusZipperList!909 zl!343)))))))

(assert (= (and d!1744916 res!2345998) b!5504823))

(assert (= (and d!1744916 c!961830) b!5504820))

(assert (= (and d!1744916 (not c!961830)) b!5504819))

(assert (= (and b!5504819 c!961833) b!5504816))

(assert (= (and b!5504819 (not c!961833)) b!5504817))

(assert (= (and d!1744916 res!2345997) b!5504815))

(assert (= (and b!5504815 c!961831) b!5504818))

(assert (= (and b!5504815 (not c!961831)) b!5504824))

(assert (= (and b!5504824 c!961832) b!5504821))

(assert (= (and b!5504824 (not c!961832)) b!5504822))

(declare-fun m!6512060 () Bool)

(assert (=> b!5504821 m!6512060))

(declare-fun m!6512062 () Bool)

(assert (=> b!5504823 m!6512062))

(declare-fun m!6512064 () Bool)

(assert (=> d!1744916 m!6512064))

(declare-fun m!6512066 () Bool)

(assert (=> d!1744916 m!6512066))

(declare-fun m!6512068 () Bool)

(assert (=> b!5504824 m!6512068))

(assert (=> b!5504824 m!6512068))

(declare-fun m!6512070 () Bool)

(assert (=> b!5504824 m!6512070))

(assert (=> b!5504815 m!6511174))

(declare-fun m!6512072 () Bool)

(assert (=> b!5504822 m!6512072))

(declare-fun m!6512074 () Bool)

(assert (=> b!5504818 m!6512074))

(declare-fun m!6512076 () Bool)

(assert (=> b!5504816 m!6512076))

(assert (=> b!5503795 d!1744916))

(declare-fun d!1744918 () Bool)

(assert (=> d!1744918 (= ($colon$colon!1572 (exprs!5365 lt!2243915) (ite (or c!961521 c!961520) (regTwo!31474 r!7292) r!7292)) (Cons!62618 (ite (or c!961521 c!961520) (regTwo!31474 r!7292) r!7292) (exprs!5365 lt!2243915)))))

(assert (=> bm!406529 d!1744918))

(declare-fun b!5504825 () Bool)

(declare-fun e!3404885 () Bool)

(declare-fun e!3404887 () Bool)

(assert (=> b!5504825 (= e!3404885 e!3404887)))

(declare-fun c!961835 () Bool)

(assert (=> b!5504825 (= c!961835 ((_ is EmptyLang!15481) (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326))))))

(declare-fun b!5504826 () Bool)

(declare-fun res!2346006 () Bool)

(declare-fun e!3404886 () Bool)

(assert (=> b!5504826 (=> res!2346006 e!3404886)))

(declare-fun e!3404884 () Bool)

(assert (=> b!5504826 (= res!2346006 e!3404884)))

(declare-fun res!2346003 () Bool)

(assert (=> b!5504826 (=> (not res!2346003) (not e!3404884))))

(declare-fun lt!2244014 () Bool)

(assert (=> b!5504826 (= res!2346003 lt!2244014)))

(declare-fun b!5504827 () Bool)

(declare-fun e!3404882 () Bool)

(assert (=> b!5504827 (= e!3404886 e!3404882)))

(declare-fun res!2346004 () Bool)

(assert (=> b!5504827 (=> (not res!2346004) (not e!3404882))))

(assert (=> b!5504827 (= res!2346004 (not lt!2244014))))

(declare-fun b!5504828 () Bool)

(assert (=> b!5504828 (= e!3404887 (not lt!2244014))))

(declare-fun b!5504829 () Bool)

(assert (=> b!5504829 (= e!3404884 (= (head!11787 (tail!10882 s!2326)) (c!961331 (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326)))))))

(declare-fun bm!406780 () Bool)

(declare-fun call!406785 () Bool)

(assert (=> bm!406780 (= call!406785 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun b!5504830 () Bool)

(declare-fun res!2345999 () Bool)

(declare-fun e!3404883 () Bool)

(assert (=> b!5504830 (=> res!2345999 e!3404883)))

(assert (=> b!5504830 (= res!2345999 (not (isEmpty!34404 (tail!10882 (tail!10882 s!2326)))))))

(declare-fun d!1744920 () Bool)

(assert (=> d!1744920 e!3404885))

(declare-fun c!961836 () Bool)

(assert (=> d!1744920 (= c!961836 ((_ is EmptyExpr!15481) (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326))))))

(declare-fun e!3404888 () Bool)

(assert (=> d!1744920 (= lt!2244014 e!3404888)))

(declare-fun c!961834 () Bool)

(assert (=> d!1744920 (= c!961834 (isEmpty!34404 (tail!10882 s!2326)))))

(assert (=> d!1744920 (validRegex!7217 (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326)))))

(assert (=> d!1744920 (= (matchR!7666 (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326)) (tail!10882 s!2326)) lt!2244014)))

(declare-fun b!5504831 () Bool)

(assert (=> b!5504831 (= e!3404882 e!3404883)))

(declare-fun res!2346002 () Bool)

(assert (=> b!5504831 (=> res!2346002 e!3404883)))

(assert (=> b!5504831 (= res!2346002 call!406785)))

(declare-fun b!5504832 () Bool)

(assert (=> b!5504832 (= e!3404888 (matchR!7666 (derivativeStep!4357 (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326)) (head!11787 (tail!10882 s!2326))) (tail!10882 (tail!10882 s!2326))))))

(declare-fun b!5504833 () Bool)

(assert (=> b!5504833 (= e!3404883 (not (= (head!11787 (tail!10882 s!2326)) (c!961331 (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326))))))))

(declare-fun b!5504834 () Bool)

(assert (=> b!5504834 (= e!3404888 (nullable!5518 (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326))))))

(declare-fun b!5504835 () Bool)

(assert (=> b!5504835 (= e!3404885 (= lt!2244014 call!406785))))

(declare-fun b!5504836 () Bool)

(declare-fun res!2346001 () Bool)

(assert (=> b!5504836 (=> (not res!2346001) (not e!3404884))))

(assert (=> b!5504836 (= res!2346001 (not call!406785))))

(declare-fun b!5504837 () Bool)

(declare-fun res!2346005 () Bool)

(assert (=> b!5504837 (=> (not res!2346005) (not e!3404884))))

(assert (=> b!5504837 (= res!2346005 (isEmpty!34404 (tail!10882 (tail!10882 s!2326))))))

(declare-fun b!5504838 () Bool)

(declare-fun res!2346000 () Bool)

(assert (=> b!5504838 (=> res!2346000 e!3404886)))

(assert (=> b!5504838 (= res!2346000 (not ((_ is ElementMatch!15481) (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326)))))))

(assert (=> b!5504838 (= e!3404887 e!3404886)))

(assert (= (and d!1744920 c!961834) b!5504834))

(assert (= (and d!1744920 (not c!961834)) b!5504832))

(assert (= (and d!1744920 c!961836) b!5504835))

(assert (= (and d!1744920 (not c!961836)) b!5504825))

(assert (= (and b!5504825 c!961835) b!5504828))

(assert (= (and b!5504825 (not c!961835)) b!5504838))

(assert (= (and b!5504838 (not res!2346000)) b!5504826))

(assert (= (and b!5504826 res!2346003) b!5504836))

(assert (= (and b!5504836 res!2346001) b!5504837))

(assert (= (and b!5504837 res!2346005) b!5504829))

(assert (= (and b!5504826 (not res!2346006)) b!5504827))

(assert (= (and b!5504827 res!2346004) b!5504831))

(assert (= (and b!5504831 (not res!2346002)) b!5504830))

(assert (= (and b!5504830 (not res!2345999)) b!5504833))

(assert (= (or b!5504835 b!5504831 b!5504836) bm!406780))

(assert (=> b!5504834 m!6511130))

(declare-fun m!6512078 () Bool)

(assert (=> b!5504834 m!6512078))

(assert (=> b!5504829 m!6511056))

(assert (=> b!5504829 m!6511766))

(assert (=> b!5504832 m!6511056))

(assert (=> b!5504832 m!6511766))

(assert (=> b!5504832 m!6511130))

(assert (=> b!5504832 m!6511766))

(declare-fun m!6512080 () Bool)

(assert (=> b!5504832 m!6512080))

(assert (=> b!5504832 m!6511056))

(assert (=> b!5504832 m!6511770))

(assert (=> b!5504832 m!6512080))

(assert (=> b!5504832 m!6511770))

(declare-fun m!6512082 () Bool)

(assert (=> b!5504832 m!6512082))

(assert (=> b!5504830 m!6511056))

(assert (=> b!5504830 m!6511770))

(assert (=> b!5504830 m!6511770))

(assert (=> b!5504830 m!6511888))

(assert (=> bm!406780 m!6511056))

(assert (=> bm!406780 m!6511060))

(assert (=> b!5504837 m!6511056))

(assert (=> b!5504837 m!6511770))

(assert (=> b!5504837 m!6511770))

(assert (=> b!5504837 m!6511888))

(assert (=> b!5504833 m!6511056))

(assert (=> b!5504833 m!6511766))

(assert (=> d!1744920 m!6511056))

(assert (=> d!1744920 m!6511060))

(assert (=> d!1744920 m!6511130))

(declare-fun m!6512084 () Bool)

(assert (=> d!1744920 m!6512084))

(assert (=> b!5503710 d!1744920))

(declare-fun b!5504840 () Bool)

(declare-fun e!3404892 () Regex!15481)

(assert (=> b!5504840 (= e!3404892 EmptyLang!15481)))

(declare-fun b!5504841 () Bool)

(declare-fun c!961837 () Bool)

(assert (=> b!5504841 (= c!961837 (nullable!5518 (regOne!31474 (regOne!31475 r!7292))))))

(declare-fun e!3404890 () Regex!15481)

(declare-fun e!3404891 () Regex!15481)

(assert (=> b!5504841 (= e!3404890 e!3404891)))

(declare-fun b!5504842 () Bool)

(declare-fun e!3404893 () Regex!15481)

(assert (=> b!5504842 (= e!3404893 (ite (= (head!11787 s!2326) (c!961331 (regOne!31475 r!7292))) EmptyExpr!15481 EmptyLang!15481))))

(declare-fun bm!406781 () Bool)

(declare-fun call!406788 () Regex!15481)

(declare-fun call!406787 () Regex!15481)

(assert (=> bm!406781 (= call!406788 call!406787)))

(declare-fun bm!406782 () Bool)

(declare-fun call!406789 () Regex!15481)

(assert (=> bm!406782 (= call!406787 call!406789)))

(declare-fun b!5504843 () Bool)

(declare-fun e!3404889 () Regex!15481)

(declare-fun call!406786 () Regex!15481)

(assert (=> b!5504843 (= e!3404889 (Union!15481 call!406789 call!406786))))

(declare-fun bm!406783 () Bool)

(declare-fun c!961841 () Bool)

(assert (=> bm!406783 (= call!406786 (derivativeStep!4357 (ite c!961841 (regTwo!31475 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292))) (head!11787 s!2326)))))

(declare-fun b!5504844 () Bool)

(assert (=> b!5504844 (= e!3404890 (Concat!24326 call!406787 (regOne!31475 r!7292)))))

(declare-fun b!5504845 () Bool)

(assert (=> b!5504845 (= e!3404889 e!3404890)))

(declare-fun c!961840 () Bool)

(assert (=> b!5504845 (= c!961840 ((_ is Star!15481) (regOne!31475 r!7292)))))

(declare-fun b!5504839 () Bool)

(assert (=> b!5504839 (= e!3404891 (Union!15481 (Concat!24326 call!406786 (regTwo!31474 (regOne!31475 r!7292))) call!406788))))

(declare-fun d!1744922 () Bool)

(declare-fun lt!2244015 () Regex!15481)

(assert (=> d!1744922 (validRegex!7217 lt!2244015)))

(assert (=> d!1744922 (= lt!2244015 e!3404892)))

(declare-fun c!961839 () Bool)

(assert (=> d!1744922 (= c!961839 (or ((_ is EmptyExpr!15481) (regOne!31475 r!7292)) ((_ is EmptyLang!15481) (regOne!31475 r!7292))))))

(assert (=> d!1744922 (validRegex!7217 (regOne!31475 r!7292))))

(assert (=> d!1744922 (= (derivativeStep!4357 (regOne!31475 r!7292) (head!11787 s!2326)) lt!2244015)))

(declare-fun b!5504846 () Bool)

(assert (=> b!5504846 (= c!961841 ((_ is Union!15481) (regOne!31475 r!7292)))))

(assert (=> b!5504846 (= e!3404893 e!3404889)))

(declare-fun b!5504847 () Bool)

(assert (=> b!5504847 (= e!3404891 (Union!15481 (Concat!24326 call!406788 (regTwo!31474 (regOne!31475 r!7292))) EmptyLang!15481))))

(declare-fun b!5504848 () Bool)

(assert (=> b!5504848 (= e!3404892 e!3404893)))

(declare-fun c!961838 () Bool)

(assert (=> b!5504848 (= c!961838 ((_ is ElementMatch!15481) (regOne!31475 r!7292)))))

(declare-fun bm!406784 () Bool)

(assert (=> bm!406784 (= call!406789 (derivativeStep!4357 (ite c!961841 (regOne!31475 (regOne!31475 r!7292)) (ite c!961840 (reg!15810 (regOne!31475 r!7292)) (ite c!961837 (regTwo!31474 (regOne!31475 r!7292)) (regOne!31474 (regOne!31475 r!7292))))) (head!11787 s!2326)))))

(assert (= (and d!1744922 c!961839) b!5504840))

(assert (= (and d!1744922 (not c!961839)) b!5504848))

(assert (= (and b!5504848 c!961838) b!5504842))

(assert (= (and b!5504848 (not c!961838)) b!5504846))

(assert (= (and b!5504846 c!961841) b!5504843))

(assert (= (and b!5504846 (not c!961841)) b!5504845))

(assert (= (and b!5504845 c!961840) b!5504844))

(assert (= (and b!5504845 (not c!961840)) b!5504841))

(assert (= (and b!5504841 c!961837) b!5504839))

(assert (= (and b!5504841 (not c!961837)) b!5504847))

(assert (= (or b!5504839 b!5504847) bm!406781))

(assert (= (or b!5504844 bm!406781) bm!406782))

(assert (= (or b!5504843 b!5504839) bm!406783))

(assert (= (or b!5504843 bm!406782) bm!406784))

(assert (=> b!5504841 m!6511268))

(assert (=> bm!406783 m!6511052))

(declare-fun m!6512086 () Bool)

(assert (=> bm!406783 m!6512086))

(declare-fun m!6512088 () Bool)

(assert (=> d!1744922 m!6512088))

(assert (=> d!1744922 m!6511110))

(assert (=> bm!406784 m!6511052))

(declare-fun m!6512090 () Bool)

(assert (=> bm!406784 m!6512090))

(assert (=> b!5503710 d!1744922))

(assert (=> b!5503710 d!1744742))

(assert (=> b!5503710 d!1744768))

(declare-fun bs!1269682 () Bool)

(declare-fun d!1744924 () Bool)

(assert (= bs!1269682 (and d!1744924 d!1744916)))

(declare-fun lambda!294732 () Int)

(assert (=> bs!1269682 (= lambda!294732 lambda!294731)))

(declare-fun bs!1269683 () Bool)

(assert (= bs!1269683 (and d!1744924 d!1744464)))

(assert (=> bs!1269683 (= lambda!294732 lambda!294679)))

(declare-fun bs!1269684 () Bool)

(assert (= bs!1269684 (and d!1744924 d!1744490)))

(assert (=> bs!1269684 (= lambda!294732 lambda!294683)))

(declare-fun bs!1269685 () Bool)

(assert (= bs!1269685 (and d!1744924 d!1744470)))

(assert (=> bs!1269685 (= lambda!294732 lambda!294682)))

(declare-fun bs!1269686 () Bool)

(assert (= bs!1269686 (and d!1744924 d!1744780)))

(assert (=> bs!1269686 (= lambda!294732 lambda!294717)))

(declare-fun bs!1269687 () Bool)

(assert (= bs!1269687 (and d!1744924 d!1744462)))

(assert (=> bs!1269687 (= lambda!294732 lambda!294676)))

(declare-fun bs!1269688 () Bool)

(assert (= bs!1269688 (and d!1744924 d!1744864)))

(assert (=> bs!1269688 (= lambda!294732 lambda!294723)))

(declare-fun bs!1269689 () Bool)

(assert (= bs!1269689 (and d!1744924 d!1744430)))

(assert (=> bs!1269689 (= lambda!294732 lambda!294666)))

(assert (=> d!1744924 (= (inv!81949 (h!69067 (t!375982 zl!343))) (forall!14666 (exprs!5365 (h!69067 (t!375982 zl!343))) lambda!294732))))

(declare-fun bs!1269690 () Bool)

(assert (= bs!1269690 d!1744924))

(declare-fun m!6512092 () Bool)

(assert (=> bs!1269690 m!6512092))

(assert (=> b!5503905 d!1744924))

(declare-fun d!1744926 () Bool)

(assert (=> d!1744926 (= (nullable!5518 (h!69066 (exprs!5365 (h!69067 zl!343)))) (nullableFct!1653 (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun bs!1269691 () Bool)

(assert (= bs!1269691 d!1744926))

(declare-fun m!6512094 () Bool)

(assert (=> bs!1269691 m!6512094))

(assert (=> b!5503730 d!1744926))

(declare-fun d!1744928 () Bool)

(assert (=> d!1744928 true))

(declare-fun setRes!36509 () Bool)

(assert (=> d!1744928 setRes!36509))

(declare-fun condSetEmpty!36509 () Bool)

(declare-fun res!2346007 () (InoxSet Context!9730))

(assert (=> d!1744928 (= condSetEmpty!36509 (= res!2346007 ((as const (Array Context!9730 Bool)) false)))))

(assert (=> d!1744928 (= (choose!41818 lt!2243917 lambda!294631) res!2346007)))

(declare-fun setIsEmpty!36509 () Bool)

(assert (=> setIsEmpty!36509 setRes!36509))

(declare-fun e!3404894 () Bool)

(declare-fun setNonEmpty!36509 () Bool)

(declare-fun tp!1514537 () Bool)

(declare-fun setElem!36509 () Context!9730)

(assert (=> setNonEmpty!36509 (= setRes!36509 (and tp!1514537 (inv!81949 setElem!36509) e!3404894))))

(declare-fun setRest!36509 () (InoxSet Context!9730))

(assert (=> setNonEmpty!36509 (= res!2346007 ((_ map or) (store ((as const (Array Context!9730 Bool)) false) setElem!36509 true) setRest!36509))))

(declare-fun b!5504849 () Bool)

(declare-fun tp!1514536 () Bool)

(assert (=> b!5504849 (= e!3404894 tp!1514536)))

(assert (= (and d!1744928 condSetEmpty!36509) setIsEmpty!36509))

(assert (= (and d!1744928 (not condSetEmpty!36509)) setNonEmpty!36509))

(assert (= setNonEmpty!36509 b!5504849))

(declare-fun m!6512096 () Bool)

(assert (=> setNonEmpty!36509 m!6512096))

(assert (=> d!1744482 d!1744928))

(declare-fun d!1744930 () Bool)

(assert (=> d!1744930 (= (isEmptyLang!1075 lt!2243979) ((_ is EmptyLang!15481) lt!2243979))))

(assert (=> b!5503797 d!1744930))

(declare-fun d!1744932 () Bool)

(assert (=> d!1744932 (= (nullable!5518 (h!69066 (exprs!5365 lt!2243920))) (nullableFct!1653 (h!69066 (exprs!5365 lt!2243920))))))

(declare-fun bs!1269692 () Bool)

(assert (= bs!1269692 d!1744932))

(declare-fun m!6512098 () Bool)

(assert (=> bs!1269692 m!6512098))

(assert (=> b!5503843 d!1744932))

(assert (=> b!5503578 d!1744444))

(declare-fun d!1744934 () Bool)

(assert (=> d!1744934 (= (isUnion!505 lt!2243979) ((_ is Union!15481) lt!2243979))))

(assert (=> b!5503801 d!1744934))

(assert (=> b!5503620 d!1744766))

(assert (=> b!5503620 d!1744768))

(assert (=> b!5503683 d!1744766))

(assert (=> b!5503683 d!1744768))

(declare-fun bs!1269693 () Bool)

(declare-fun d!1744936 () Bool)

(assert (= bs!1269693 (and d!1744936 d!1744744)))

(declare-fun lambda!294733 () Int)

(assert (=> bs!1269693 (= lambda!294733 lambda!294713)))

(declare-fun bs!1269694 () Bool)

(assert (= bs!1269694 (and d!1744936 d!1744790)))

(assert (=> bs!1269694 (= lambda!294733 lambda!294719)))

(declare-fun bs!1269695 () Bool)

(assert (= bs!1269695 (and d!1744936 d!1744892)))

(assert (=> bs!1269695 (= lambda!294733 lambda!294725)))

(declare-fun bs!1269696 () Bool)

(assert (= bs!1269696 (and d!1744936 d!1744914)))

(assert (=> bs!1269696 (= lambda!294733 lambda!294730)))

(assert (=> d!1744936 (= (nullableZipper!1523 lt!2243917) (exists!2133 lt!2243917 lambda!294733))))

(declare-fun bs!1269697 () Bool)

(assert (= bs!1269697 d!1744936))

(declare-fun m!6512100 () Bool)

(assert (=> bs!1269697 m!6512100))

(assert (=> b!5503852 d!1744936))

(declare-fun d!1744938 () Bool)

(assert (=> d!1744938 (= (nullable!5518 r!7292) (nullableFct!1653 r!7292))))

(declare-fun bs!1269698 () Bool)

(assert (= bs!1269698 d!1744938))

(declare-fun m!6512102 () Bool)

(assert (=> bs!1269698 m!6512102))

(assert (=> b!5503624 d!1744938))

(declare-fun d!1744940 () Bool)

(assert (=> d!1744940 (= (isEmpty!34405 (t!375981 (exprs!5365 (h!69067 zl!343)))) ((_ is Nil!62618) (t!375981 (exprs!5365 (h!69067 zl!343)))))))

(assert (=> b!5503651 d!1744940))

(declare-fun b!5504851 () Bool)

(declare-fun e!3404896 () Bool)

(assert (=> b!5504851 (= e!3404896 (nullable!5518 (h!69066 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))))))))

(declare-fun bm!406785 () Bool)

(declare-fun call!406790 () (InoxSet Context!9730))

(assert (=> bm!406785 (= call!406790 (derivationStepZipperDown!827 (h!69066 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))) (Context!9731 (t!375981 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))))) (h!69068 s!2326)))))

(declare-fun e!3404897 () (InoxSet Context!9730))

(declare-fun b!5504852 () Bool)

(assert (=> b!5504852 (= e!3404897 ((_ map or) call!406790 (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618)))))))) (h!69068 s!2326))))))

(declare-fun b!5504853 () Bool)

(declare-fun e!3404895 () (InoxSet Context!9730))

(assert (=> b!5504853 (= e!3404895 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504854 () Bool)

(assert (=> b!5504854 (= e!3404897 e!3404895)))

(declare-fun c!961842 () Bool)

(assert (=> b!5504854 (= c!961842 ((_ is Cons!62618) (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))))))

(declare-fun d!1744942 () Bool)

(declare-fun c!961843 () Bool)

(assert (=> d!1744942 (= c!961843 e!3404896)))

(declare-fun res!2346008 () Bool)

(assert (=> d!1744942 (=> (not res!2346008) (not e!3404896))))

(assert (=> d!1744942 (= res!2346008 ((_ is Cons!62618) (exprs!5365 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))))))))

(assert (=> d!1744942 (= (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (Cons!62618 r!7292 Nil!62618))))) (h!69068 s!2326)) e!3404897)))

(declare-fun b!5504850 () Bool)

(assert (=> b!5504850 (= e!3404895 call!406790)))

(assert (= (and d!1744942 res!2346008) b!5504851))

(assert (= (and d!1744942 c!961843) b!5504852))

(assert (= (and d!1744942 (not c!961843)) b!5504854))

(assert (= (and b!5504854 c!961842) b!5504850))

(assert (= (and b!5504854 (not c!961842)) b!5504853))

(assert (= (or b!5504852 b!5504850) bm!406785))

(declare-fun m!6512104 () Bool)

(assert (=> b!5504851 m!6512104))

(declare-fun m!6512106 () Bool)

(assert (=> bm!406785 m!6512106))

(declare-fun m!6512108 () Bool)

(assert (=> b!5504852 m!6512108))

(assert (=> b!5503771 d!1744942))

(declare-fun bs!1269699 () Bool)

(declare-fun d!1744944 () Bool)

(assert (= bs!1269699 (and d!1744944 d!1744892)))

(declare-fun lambda!294734 () Int)

(assert (=> bs!1269699 (= lambda!294734 lambda!294725)))

(declare-fun bs!1269700 () Bool)

(assert (= bs!1269700 (and d!1744944 d!1744790)))

(assert (=> bs!1269700 (= lambda!294734 lambda!294719)))

(declare-fun bs!1269701 () Bool)

(assert (= bs!1269701 (and d!1744944 d!1744744)))

(assert (=> bs!1269701 (= lambda!294734 lambda!294713)))

(declare-fun bs!1269702 () Bool)

(assert (= bs!1269702 (and d!1744944 d!1744914)))

(assert (=> bs!1269702 (= lambda!294734 lambda!294730)))

(declare-fun bs!1269703 () Bool)

(assert (= bs!1269703 (and d!1744944 d!1744936)))

(assert (=> bs!1269703 (= lambda!294734 lambda!294733)))

(assert (=> d!1744944 (= (nullableZipper!1523 lt!2243911) (exists!2133 lt!2243911 lambda!294734))))

(declare-fun bs!1269704 () Bool)

(assert (= bs!1269704 d!1744944))

(declare-fun m!6512110 () Bool)

(assert (=> bs!1269704 m!6512110))

(assert (=> b!5503879 d!1744944))

(assert (=> bs!1269348 d!1744452))

(assert (=> d!1744426 d!1744750))

(assert (=> d!1744426 d!1744472))

(declare-fun d!1744946 () Bool)

(declare-fun c!961844 () Bool)

(assert (=> d!1744946 (= c!961844 (isEmpty!34404 (tail!10882 s!2326)))))

(declare-fun e!3404898 () Bool)

(assert (=> d!1744946 (= (matchZipper!1649 (derivationStepZipper!1592 z!1189 (head!11787 s!2326)) (tail!10882 s!2326)) e!3404898)))

(declare-fun b!5504855 () Bool)

(assert (=> b!5504855 (= e!3404898 (nullableZipper!1523 (derivationStepZipper!1592 z!1189 (head!11787 s!2326))))))

(declare-fun b!5504856 () Bool)

(assert (=> b!5504856 (= e!3404898 (matchZipper!1649 (derivationStepZipper!1592 (derivationStepZipper!1592 z!1189 (head!11787 s!2326)) (head!11787 (tail!10882 s!2326))) (tail!10882 (tail!10882 s!2326))))))

(assert (= (and d!1744946 c!961844) b!5504855))

(assert (= (and d!1744946 (not c!961844)) b!5504856))

(assert (=> d!1744946 m!6511056))

(assert (=> d!1744946 m!6511060))

(assert (=> b!5504855 m!6511086))

(declare-fun m!6512112 () Bool)

(assert (=> b!5504855 m!6512112))

(assert (=> b!5504856 m!6511056))

(assert (=> b!5504856 m!6511766))

(assert (=> b!5504856 m!6511086))

(assert (=> b!5504856 m!6511766))

(declare-fun m!6512114 () Bool)

(assert (=> b!5504856 m!6512114))

(assert (=> b!5504856 m!6511056))

(assert (=> b!5504856 m!6511770))

(assert (=> b!5504856 m!6512114))

(assert (=> b!5504856 m!6511770))

(declare-fun m!6512116 () Bool)

(assert (=> b!5504856 m!6512116))

(assert (=> b!5503664 d!1744946))

(declare-fun bs!1269705 () Bool)

(declare-fun d!1744948 () Bool)

(assert (= bs!1269705 (and d!1744948 d!1744822)))

(declare-fun lambda!294735 () Int)

(assert (=> bs!1269705 (= (= (head!11787 s!2326) (head!11787 (t!375983 s!2326))) (= lambda!294735 lambda!294722))))

(declare-fun bs!1269706 () Bool)

(assert (= bs!1269706 (and d!1744948 d!1744874)))

(assert (=> bs!1269706 (= (= (head!11787 s!2326) (head!11787 (t!375983 s!2326))) (= lambda!294735 lambda!294724))))

(declare-fun bs!1269707 () Bool)

(assert (= bs!1269707 (and d!1744948 d!1744786)))

(assert (=> bs!1269707 (= lambda!294735 lambda!294718)))

(declare-fun bs!1269708 () Bool)

(assert (= bs!1269708 (and d!1744948 d!1744778)))

(assert (=> bs!1269708 (= lambda!294735 lambda!294716)))

(declare-fun bs!1269709 () Bool)

(assert (= bs!1269709 (and d!1744948 b!5503119)))

(assert (=> bs!1269709 (= (= (head!11787 s!2326) (h!69068 s!2326)) (= lambda!294735 lambda!294631))))

(declare-fun bs!1269710 () Bool)

(assert (= bs!1269710 (and d!1744948 d!1744448)))

(assert (=> bs!1269710 (= (= (head!11787 s!2326) (h!69068 s!2326)) (= lambda!294735 lambda!294673))))

(assert (=> d!1744948 true))

(assert (=> d!1744948 (= (derivationStepZipper!1592 z!1189 (head!11787 s!2326)) (flatMap!1100 z!1189 lambda!294735))))

(declare-fun bs!1269711 () Bool)

(assert (= bs!1269711 d!1744948))

(declare-fun m!6512118 () Bool)

(assert (=> bs!1269711 m!6512118))

(assert (=> b!5503664 d!1744948))

(assert (=> b!5503664 d!1744742))

(assert (=> b!5503664 d!1744768))

(assert (=> d!1744454 d!1744450))

(declare-fun d!1744950 () Bool)

(assert (=> d!1744950 (= (flatMap!1100 z!1189 lambda!294631) (dynLambda!24472 lambda!294631 (h!69067 zl!343)))))

(assert (=> d!1744950 true))

(declare-fun _$13!2024 () Unit!155422)

(assert (=> d!1744950 (= (choose!41819 z!1189 (h!69067 zl!343) lambda!294631) _$13!2024)))

(declare-fun b_lambda!208783 () Bool)

(assert (=> (not b_lambda!208783) (not d!1744950)))

(declare-fun bs!1269712 () Bool)

(assert (= bs!1269712 d!1744950))

(assert (=> bs!1269712 m!6510788))

(assert (=> bs!1269712 m!6511144))

(assert (=> d!1744454 d!1744950))

(assert (=> bm!406505 d!1744750))

(declare-fun d!1744952 () Bool)

(assert (=> d!1744952 (= (nullable!5518 (regTwo!31475 r!7292)) (nullableFct!1653 (regTwo!31475 r!7292)))))

(declare-fun bs!1269713 () Bool)

(assert (= bs!1269713 d!1744952))

(declare-fun m!6512120 () Bool)

(assert (=> bs!1269713 m!6512120))

(assert (=> b!5503687 d!1744952))

(declare-fun d!1744954 () Bool)

(declare-fun res!2346009 () Bool)

(declare-fun e!3404899 () Bool)

(assert (=> d!1744954 (=> res!2346009 e!3404899)))

(assert (=> d!1744954 (= res!2346009 ((_ is Nil!62618) (exprs!5365 (h!69067 zl!343))))))

(assert (=> d!1744954 (= (forall!14666 (exprs!5365 (h!69067 zl!343)) lambda!294682) e!3404899)))

(declare-fun b!5504857 () Bool)

(declare-fun e!3404900 () Bool)

(assert (=> b!5504857 (= e!3404899 e!3404900)))

(declare-fun res!2346010 () Bool)

(assert (=> b!5504857 (=> (not res!2346010) (not e!3404900))))

(assert (=> b!5504857 (= res!2346010 (dynLambda!24474 lambda!294682 (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun b!5504858 () Bool)

(assert (=> b!5504858 (= e!3404900 (forall!14666 (t!375981 (exprs!5365 (h!69067 zl!343))) lambda!294682))))

(assert (= (and d!1744954 (not res!2346009)) b!5504857))

(assert (= (and b!5504857 res!2346010) b!5504858))

(declare-fun b_lambda!208785 () Bool)

(assert (=> (not b_lambda!208785) (not b!5504857)))

(declare-fun m!6512122 () Bool)

(assert (=> b!5504857 m!6512122))

(declare-fun m!6512124 () Bool)

(assert (=> b!5504858 m!6512124))

(assert (=> d!1744470 d!1744954))

(declare-fun d!1744956 () Bool)

(assert (=> d!1744956 true))

(declare-fun setRes!36510 () Bool)

(assert (=> d!1744956 setRes!36510))

(declare-fun condSetEmpty!36510 () Bool)

(declare-fun res!2346011 () (InoxSet Context!9730))

(assert (=> d!1744956 (= condSetEmpty!36510 (= res!2346011 ((as const (Array Context!9730 Bool)) false)))))

(assert (=> d!1744956 (= (choose!41818 lt!2243911 lambda!294631) res!2346011)))

(declare-fun setIsEmpty!36510 () Bool)

(assert (=> setIsEmpty!36510 setRes!36510))

(declare-fun e!3404901 () Bool)

(declare-fun setNonEmpty!36510 () Bool)

(declare-fun setElem!36510 () Context!9730)

(declare-fun tp!1514539 () Bool)

(assert (=> setNonEmpty!36510 (= setRes!36510 (and tp!1514539 (inv!81949 setElem!36510) e!3404901))))

(declare-fun setRest!36510 () (InoxSet Context!9730))

(assert (=> setNonEmpty!36510 (= res!2346011 ((_ map or) (store ((as const (Array Context!9730 Bool)) false) setElem!36510 true) setRest!36510))))

(declare-fun b!5504859 () Bool)

(declare-fun tp!1514538 () Bool)

(assert (=> b!5504859 (= e!3404901 tp!1514538)))

(assert (= (and d!1744956 condSetEmpty!36510) setIsEmpty!36510))

(assert (= (and d!1744956 (not condSetEmpty!36510)) setNonEmpty!36510))

(assert (= setNonEmpty!36510 b!5504859))

(declare-fun m!6512126 () Bool)

(assert (=> setNonEmpty!36510 m!6512126))

(assert (=> d!1744480 d!1744956))

(declare-fun b!5504861 () Bool)

(declare-fun e!3404903 () Bool)

(assert (=> b!5504861 (= e!3404903 (nullable!5518 (h!69066 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243906)))))))))

(declare-fun bm!406786 () Bool)

(declare-fun call!406791 () (InoxSet Context!9730))

(assert (=> bm!406786 (= call!406791 (derivationStepZipperDown!827 (h!69066 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243906))))) (Context!9731 (t!375981 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243906)))))) (h!69068 s!2326)))))

(declare-fun b!5504862 () Bool)

(declare-fun e!3404904 () (InoxSet Context!9730))

(assert (=> b!5504862 (= e!3404904 ((_ map or) call!406791 (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243906)))))) (h!69068 s!2326))))))

(declare-fun b!5504863 () Bool)

(declare-fun e!3404902 () (InoxSet Context!9730))

(assert (=> b!5504863 (= e!3404902 ((as const (Array Context!9730 Bool)) false))))

(declare-fun b!5504864 () Bool)

(assert (=> b!5504864 (= e!3404904 e!3404902)))

(declare-fun c!961845 () Bool)

(assert (=> b!5504864 (= c!961845 ((_ is Cons!62618) (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243906))))))))

(declare-fun d!1744958 () Bool)

(declare-fun c!961846 () Bool)

(assert (=> d!1744958 (= c!961846 e!3404903)))

(declare-fun res!2346012 () Bool)

(assert (=> d!1744958 (=> (not res!2346012) (not e!3404903))))

(assert (=> d!1744958 (= res!2346012 ((_ is Cons!62618) (exprs!5365 (Context!9731 (t!375981 (exprs!5365 lt!2243906))))))))

(assert (=> d!1744958 (= (derivationStepZipperUp!753 (Context!9731 (t!375981 (exprs!5365 lt!2243906))) (h!69068 s!2326)) e!3404904)))

(declare-fun b!5504860 () Bool)

(assert (=> b!5504860 (= e!3404902 call!406791)))

(assert (= (and d!1744958 res!2346012) b!5504861))

(assert (= (and d!1744958 c!961846) b!5504862))

(assert (= (and d!1744958 (not c!961846)) b!5504864))

(assert (= (and b!5504864 c!961845) b!5504860))

(assert (= (and b!5504864 (not c!961845)) b!5504863))

(assert (= (or b!5504862 b!5504860) bm!406786))

(declare-fun m!6512128 () Bool)

(assert (=> b!5504861 m!6512128))

(declare-fun m!6512130 () Bool)

(assert (=> bm!406786 m!6512130))

(declare-fun m!6512132 () Bool)

(assert (=> b!5504862 m!6512132))

(assert (=> b!5503849 d!1744958))

(assert (=> d!1744434 d!1744852))

(declare-fun d!1744960 () Bool)

(declare-fun c!961847 () Bool)

(assert (=> d!1744960 (= c!961847 (isEmpty!34404 (tail!10882 (t!375983 s!2326))))))

(declare-fun e!3404905 () Bool)

(assert (=> d!1744960 (= (matchZipper!1649 (derivationStepZipper!1592 lt!2243926 (head!11787 (t!375983 s!2326))) (tail!10882 (t!375983 s!2326))) e!3404905)))

(declare-fun b!5504865 () Bool)

(assert (=> b!5504865 (= e!3404905 (nullableZipper!1523 (derivationStepZipper!1592 lt!2243926 (head!11787 (t!375983 s!2326)))))))

(declare-fun b!5504866 () Bool)

(assert (=> b!5504866 (= e!3404905 (matchZipper!1649 (derivationStepZipper!1592 (derivationStepZipper!1592 lt!2243926 (head!11787 (t!375983 s!2326))) (head!11787 (tail!10882 (t!375983 s!2326)))) (tail!10882 (tail!10882 (t!375983 s!2326)))))))

(assert (= (and d!1744960 c!961847) b!5504865))

(assert (= (and d!1744960 (not c!961847)) b!5504866))

(assert (=> d!1744960 m!6511098))

(assert (=> d!1744960 m!6511858))

(assert (=> b!5504865 m!6511096))

(declare-fun m!6512134 () Bool)

(assert (=> b!5504865 m!6512134))

(assert (=> b!5504866 m!6511098))

(assert (=> b!5504866 m!6511862))

(assert (=> b!5504866 m!6511096))

(assert (=> b!5504866 m!6511862))

(declare-fun m!6512136 () Bool)

(assert (=> b!5504866 m!6512136))

(assert (=> b!5504866 m!6511098))

(assert (=> b!5504866 m!6511866))

(assert (=> b!5504866 m!6512136))

(assert (=> b!5504866 m!6511866))

(declare-fun m!6512138 () Bool)

(assert (=> b!5504866 m!6512138))

(assert (=> b!5503666 d!1744960))

(declare-fun bs!1269714 () Bool)

(declare-fun d!1744962 () Bool)

(assert (= bs!1269714 (and d!1744962 d!1744822)))

(declare-fun lambda!294736 () Int)

(assert (=> bs!1269714 (= lambda!294736 lambda!294722)))

(declare-fun bs!1269715 () Bool)

(assert (= bs!1269715 (and d!1744962 d!1744948)))

(assert (=> bs!1269715 (= (= (head!11787 (t!375983 s!2326)) (head!11787 s!2326)) (= lambda!294736 lambda!294735))))

(declare-fun bs!1269716 () Bool)

(assert (= bs!1269716 (and d!1744962 d!1744874)))

(assert (=> bs!1269716 (= lambda!294736 lambda!294724)))

(declare-fun bs!1269717 () Bool)

(assert (= bs!1269717 (and d!1744962 d!1744786)))

(assert (=> bs!1269717 (= (= (head!11787 (t!375983 s!2326)) (head!11787 s!2326)) (= lambda!294736 lambda!294718))))

(declare-fun bs!1269718 () Bool)

(assert (= bs!1269718 (and d!1744962 d!1744778)))

(assert (=> bs!1269718 (= (= (head!11787 (t!375983 s!2326)) (head!11787 s!2326)) (= lambda!294736 lambda!294716))))

(declare-fun bs!1269719 () Bool)

(assert (= bs!1269719 (and d!1744962 b!5503119)))

(assert (=> bs!1269719 (= (= (head!11787 (t!375983 s!2326)) (h!69068 s!2326)) (= lambda!294736 lambda!294631))))

(declare-fun bs!1269720 () Bool)

(assert (= bs!1269720 (and d!1744962 d!1744448)))

(assert (=> bs!1269720 (= (= (head!11787 (t!375983 s!2326)) (h!69068 s!2326)) (= lambda!294736 lambda!294673))))

(assert (=> d!1744962 true))

(assert (=> d!1744962 (= (derivationStepZipper!1592 lt!2243926 (head!11787 (t!375983 s!2326))) (flatMap!1100 lt!2243926 lambda!294736))))

(declare-fun bs!1269721 () Bool)

(assert (= bs!1269721 d!1744962))

(declare-fun m!6512140 () Bool)

(assert (=> bs!1269721 m!6512140))

(assert (=> b!5503666 d!1744962))

(assert (=> b!5503666 d!1744824))

(assert (=> b!5503666 d!1744826))

(declare-fun bs!1269722 () Bool)

(declare-fun d!1744964 () Bool)

(assert (= bs!1269722 (and d!1744964 d!1744916)))

(declare-fun lambda!294737 () Int)

(assert (=> bs!1269722 (= lambda!294737 lambda!294731)))

(declare-fun bs!1269723 () Bool)

(assert (= bs!1269723 (and d!1744964 d!1744464)))

(assert (=> bs!1269723 (= lambda!294737 lambda!294679)))

(declare-fun bs!1269724 () Bool)

(assert (= bs!1269724 (and d!1744964 d!1744490)))

(assert (=> bs!1269724 (= lambda!294737 lambda!294683)))

(declare-fun bs!1269725 () Bool)

(assert (= bs!1269725 (and d!1744964 d!1744924)))

(assert (=> bs!1269725 (= lambda!294737 lambda!294732)))

(declare-fun bs!1269726 () Bool)

(assert (= bs!1269726 (and d!1744964 d!1744470)))

(assert (=> bs!1269726 (= lambda!294737 lambda!294682)))

(declare-fun bs!1269727 () Bool)

(assert (= bs!1269727 (and d!1744964 d!1744780)))

(assert (=> bs!1269727 (= lambda!294737 lambda!294717)))

(declare-fun bs!1269728 () Bool)

(assert (= bs!1269728 (and d!1744964 d!1744462)))

(assert (=> bs!1269728 (= lambda!294737 lambda!294676)))

(declare-fun bs!1269729 () Bool)

(assert (= bs!1269729 (and d!1744964 d!1744864)))

(assert (=> bs!1269729 (= lambda!294737 lambda!294723)))

(declare-fun bs!1269730 () Bool)

(assert (= bs!1269730 (and d!1744964 d!1744430)))

(assert (=> bs!1269730 (= lambda!294737 lambda!294666)))

(assert (=> d!1744964 (= (inv!81949 setElem!36499) (forall!14666 (exprs!5365 setElem!36499) lambda!294737))))

(declare-fun bs!1269731 () Bool)

(assert (= bs!1269731 d!1744964))

(declare-fun m!6512142 () Bool)

(assert (=> bs!1269731 m!6512142))

(assert (=> setNonEmpty!36499 d!1744964))

(declare-fun b!5504867 () Bool)

(declare-fun e!3404906 () Bool)

(assert (=> b!5504867 (= e!3404906 tp_is_empty!40215)))

(declare-fun b!5504869 () Bool)

(declare-fun tp!1514540 () Bool)

(assert (=> b!5504869 (= e!3404906 tp!1514540)))

(assert (=> b!5503934 (= tp!1514358 e!3404906)))

(declare-fun b!5504868 () Bool)

(declare-fun tp!1514544 () Bool)

(declare-fun tp!1514542 () Bool)

(assert (=> b!5504868 (= e!3404906 (and tp!1514544 tp!1514542))))

(declare-fun b!5504870 () Bool)

(declare-fun tp!1514543 () Bool)

(declare-fun tp!1514541 () Bool)

(assert (=> b!5504870 (= e!3404906 (and tp!1514543 tp!1514541))))

(assert (= (and b!5503934 ((_ is ElementMatch!15481) (h!69066 (exprs!5365 (h!69067 zl!343))))) b!5504867))

(assert (= (and b!5503934 ((_ is Concat!24326) (h!69066 (exprs!5365 (h!69067 zl!343))))) b!5504868))

(assert (= (and b!5503934 ((_ is Star!15481) (h!69066 (exprs!5365 (h!69067 zl!343))))) b!5504869))

(assert (= (and b!5503934 ((_ is Union!15481) (h!69066 (exprs!5365 (h!69067 zl!343))))) b!5504870))

(declare-fun b!5504871 () Bool)

(declare-fun e!3404907 () Bool)

(declare-fun tp!1514545 () Bool)

(declare-fun tp!1514546 () Bool)

(assert (=> b!5504871 (= e!3404907 (and tp!1514545 tp!1514546))))

(assert (=> b!5503934 (= tp!1514359 e!3404907)))

(assert (= (and b!5503934 ((_ is Cons!62618) (t!375981 (exprs!5365 (h!69067 zl!343))))) b!5504871))

(declare-fun b!5504873 () Bool)

(declare-fun e!3404909 () Bool)

(declare-fun tp!1514547 () Bool)

(assert (=> b!5504873 (= e!3404909 tp!1514547)))

(declare-fun e!3404908 () Bool)

(declare-fun b!5504872 () Bool)

(declare-fun tp!1514548 () Bool)

(assert (=> b!5504872 (= e!3404908 (and (inv!81949 (h!69067 (t!375982 (t!375982 zl!343)))) e!3404909 tp!1514548))))

(assert (=> b!5503905 (= tp!1514327 e!3404908)))

(assert (= b!5504872 b!5504873))

(assert (= (and b!5503905 ((_ is Cons!62619) (t!375982 (t!375982 zl!343)))) b!5504872))

(declare-fun m!6512144 () Bool)

(assert (=> b!5504872 m!6512144))

(declare-fun b!5504874 () Bool)

(declare-fun e!3404910 () Bool)

(declare-fun tp!1514549 () Bool)

(declare-fun tp!1514550 () Bool)

(assert (=> b!5504874 (= e!3404910 (and tp!1514549 tp!1514550))))

(assert (=> b!5503906 (= tp!1514326 e!3404910)))

(assert (= (and b!5503906 ((_ is Cons!62618) (exprs!5365 (h!69067 (t!375982 zl!343))))) b!5504874))

(declare-fun b!5504875 () Bool)

(declare-fun e!3404911 () Bool)

(assert (=> b!5504875 (= e!3404911 tp_is_empty!40215)))

(declare-fun b!5504877 () Bool)

(declare-fun tp!1514551 () Bool)

(assert (=> b!5504877 (= e!3404911 tp!1514551)))

(assert (=> b!5503922 (= tp!1514341 e!3404911)))

(declare-fun b!5504876 () Bool)

(declare-fun tp!1514555 () Bool)

(declare-fun tp!1514553 () Bool)

(assert (=> b!5504876 (= e!3404911 (and tp!1514555 tp!1514553))))

(declare-fun b!5504878 () Bool)

(declare-fun tp!1514554 () Bool)

(declare-fun tp!1514552 () Bool)

(assert (=> b!5504878 (= e!3404911 (and tp!1514554 tp!1514552))))

(assert (= (and b!5503922 ((_ is ElementMatch!15481) (reg!15810 (regTwo!31475 r!7292)))) b!5504875))

(assert (= (and b!5503922 ((_ is Concat!24326) (reg!15810 (regTwo!31475 r!7292)))) b!5504876))

(assert (= (and b!5503922 ((_ is Star!15481) (reg!15810 (regTwo!31475 r!7292)))) b!5504877))

(assert (= (and b!5503922 ((_ is Union!15481) (reg!15810 (regTwo!31475 r!7292)))) b!5504878))

(declare-fun b!5504879 () Bool)

(declare-fun e!3404912 () Bool)

(assert (=> b!5504879 (= e!3404912 tp_is_empty!40215)))

(declare-fun b!5504881 () Bool)

(declare-fun tp!1514556 () Bool)

(assert (=> b!5504881 (= e!3404912 tp!1514556)))

(assert (=> b!5503913 (= tp!1514335 e!3404912)))

(declare-fun b!5504880 () Bool)

(declare-fun tp!1514560 () Bool)

(declare-fun tp!1514558 () Bool)

(assert (=> b!5504880 (= e!3404912 (and tp!1514560 tp!1514558))))

(declare-fun b!5504882 () Bool)

(declare-fun tp!1514559 () Bool)

(declare-fun tp!1514557 () Bool)

(assert (=> b!5504882 (= e!3404912 (and tp!1514559 tp!1514557))))

(assert (= (and b!5503913 ((_ is ElementMatch!15481) (regOne!31474 (reg!15810 r!7292)))) b!5504879))

(assert (= (and b!5503913 ((_ is Concat!24326) (regOne!31474 (reg!15810 r!7292)))) b!5504880))

(assert (= (and b!5503913 ((_ is Star!15481) (regOne!31474 (reg!15810 r!7292)))) b!5504881))

(assert (= (and b!5503913 ((_ is Union!15481) (regOne!31474 (reg!15810 r!7292)))) b!5504882))

(declare-fun b!5504883 () Bool)

(declare-fun e!3404913 () Bool)

(assert (=> b!5504883 (= e!3404913 tp_is_empty!40215)))

(declare-fun b!5504885 () Bool)

(declare-fun tp!1514561 () Bool)

(assert (=> b!5504885 (= e!3404913 tp!1514561)))

(assert (=> b!5503913 (= tp!1514333 e!3404913)))

(declare-fun b!5504884 () Bool)

(declare-fun tp!1514565 () Bool)

(declare-fun tp!1514563 () Bool)

(assert (=> b!5504884 (= e!3404913 (and tp!1514565 tp!1514563))))

(declare-fun b!5504886 () Bool)

(declare-fun tp!1514564 () Bool)

(declare-fun tp!1514562 () Bool)

(assert (=> b!5504886 (= e!3404913 (and tp!1514564 tp!1514562))))

(assert (= (and b!5503913 ((_ is ElementMatch!15481) (regTwo!31474 (reg!15810 r!7292)))) b!5504883))

(assert (= (and b!5503913 ((_ is Concat!24326) (regTwo!31474 (reg!15810 r!7292)))) b!5504884))

(assert (= (and b!5503913 ((_ is Star!15481) (regTwo!31474 (reg!15810 r!7292)))) b!5504885))

(assert (= (and b!5503913 ((_ is Union!15481) (regTwo!31474 (reg!15810 r!7292)))) b!5504886))

(declare-fun b!5504887 () Bool)

(declare-fun e!3404914 () Bool)

(assert (=> b!5504887 (= e!3404914 tp_is_empty!40215)))

(declare-fun b!5504889 () Bool)

(declare-fun tp!1514566 () Bool)

(assert (=> b!5504889 (= e!3404914 tp!1514566)))

(assert (=> b!5503921 (= tp!1514345 e!3404914)))

(declare-fun b!5504888 () Bool)

(declare-fun tp!1514570 () Bool)

(declare-fun tp!1514568 () Bool)

(assert (=> b!5504888 (= e!3404914 (and tp!1514570 tp!1514568))))

(declare-fun b!5504890 () Bool)

(declare-fun tp!1514569 () Bool)

(declare-fun tp!1514567 () Bool)

(assert (=> b!5504890 (= e!3404914 (and tp!1514569 tp!1514567))))

(assert (= (and b!5503921 ((_ is ElementMatch!15481) (regOne!31474 (regTwo!31475 r!7292)))) b!5504887))

(assert (= (and b!5503921 ((_ is Concat!24326) (regOne!31474 (regTwo!31475 r!7292)))) b!5504888))

(assert (= (and b!5503921 ((_ is Star!15481) (regOne!31474 (regTwo!31475 r!7292)))) b!5504889))

(assert (= (and b!5503921 ((_ is Union!15481) (regOne!31474 (regTwo!31475 r!7292)))) b!5504890))

(declare-fun b!5504891 () Bool)

(declare-fun e!3404915 () Bool)

(assert (=> b!5504891 (= e!3404915 tp_is_empty!40215)))

(declare-fun b!5504893 () Bool)

(declare-fun tp!1514571 () Bool)

(assert (=> b!5504893 (= e!3404915 tp!1514571)))

(assert (=> b!5503921 (= tp!1514343 e!3404915)))

(declare-fun b!5504892 () Bool)

(declare-fun tp!1514575 () Bool)

(declare-fun tp!1514573 () Bool)

(assert (=> b!5504892 (= e!3404915 (and tp!1514575 tp!1514573))))

(declare-fun b!5504894 () Bool)

(declare-fun tp!1514574 () Bool)

(declare-fun tp!1514572 () Bool)

(assert (=> b!5504894 (= e!3404915 (and tp!1514574 tp!1514572))))

(assert (= (and b!5503921 ((_ is ElementMatch!15481) (regTwo!31474 (regTwo!31475 r!7292)))) b!5504891))

(assert (= (and b!5503921 ((_ is Concat!24326) (regTwo!31474 (regTwo!31475 r!7292)))) b!5504892))

(assert (= (and b!5503921 ((_ is Star!15481) (regTwo!31474 (regTwo!31475 r!7292)))) b!5504893))

(assert (= (and b!5503921 ((_ is Union!15481) (regTwo!31474 (regTwo!31475 r!7292)))) b!5504894))

(declare-fun b!5504895 () Bool)

(declare-fun e!3404916 () Bool)

(assert (=> b!5504895 (= e!3404916 tp_is_empty!40215)))

(declare-fun b!5504897 () Bool)

(declare-fun tp!1514576 () Bool)

(assert (=> b!5504897 (= e!3404916 tp!1514576)))

(assert (=> b!5503915 (= tp!1514334 e!3404916)))

(declare-fun b!5504896 () Bool)

(declare-fun tp!1514580 () Bool)

(declare-fun tp!1514578 () Bool)

(assert (=> b!5504896 (= e!3404916 (and tp!1514580 tp!1514578))))

(declare-fun b!5504898 () Bool)

(declare-fun tp!1514579 () Bool)

(declare-fun tp!1514577 () Bool)

(assert (=> b!5504898 (= e!3404916 (and tp!1514579 tp!1514577))))

(assert (= (and b!5503915 ((_ is ElementMatch!15481) (regOne!31475 (reg!15810 r!7292)))) b!5504895))

(assert (= (and b!5503915 ((_ is Concat!24326) (regOne!31475 (reg!15810 r!7292)))) b!5504896))

(assert (= (and b!5503915 ((_ is Star!15481) (regOne!31475 (reg!15810 r!7292)))) b!5504897))

(assert (= (and b!5503915 ((_ is Union!15481) (regOne!31475 (reg!15810 r!7292)))) b!5504898))

(declare-fun b!5504899 () Bool)

(declare-fun e!3404917 () Bool)

(assert (=> b!5504899 (= e!3404917 tp_is_empty!40215)))

(declare-fun b!5504901 () Bool)

(declare-fun tp!1514581 () Bool)

(assert (=> b!5504901 (= e!3404917 tp!1514581)))

(assert (=> b!5503915 (= tp!1514332 e!3404917)))

(declare-fun b!5504900 () Bool)

(declare-fun tp!1514585 () Bool)

(declare-fun tp!1514583 () Bool)

(assert (=> b!5504900 (= e!3404917 (and tp!1514585 tp!1514583))))

(declare-fun b!5504902 () Bool)

(declare-fun tp!1514584 () Bool)

(declare-fun tp!1514582 () Bool)

(assert (=> b!5504902 (= e!3404917 (and tp!1514584 tp!1514582))))

(assert (= (and b!5503915 ((_ is ElementMatch!15481) (regTwo!31475 (reg!15810 r!7292)))) b!5504899))

(assert (= (and b!5503915 ((_ is Concat!24326) (regTwo!31475 (reg!15810 r!7292)))) b!5504900))

(assert (= (and b!5503915 ((_ is Star!15481) (regTwo!31475 (reg!15810 r!7292)))) b!5504901))

(assert (= (and b!5503915 ((_ is Union!15481) (regTwo!31475 (reg!15810 r!7292)))) b!5504902))

(declare-fun b!5504903 () Bool)

(declare-fun e!3404918 () Bool)

(assert (=> b!5504903 (= e!3404918 tp_is_empty!40215)))

(declare-fun b!5504905 () Bool)

(declare-fun tp!1514586 () Bool)

(assert (=> b!5504905 (= e!3404918 tp!1514586)))

(assert (=> b!5503892 (= tp!1514316 e!3404918)))

(declare-fun b!5504904 () Bool)

(declare-fun tp!1514590 () Bool)

(declare-fun tp!1514588 () Bool)

(assert (=> b!5504904 (= e!3404918 (and tp!1514590 tp!1514588))))

(declare-fun b!5504906 () Bool)

(declare-fun tp!1514589 () Bool)

(declare-fun tp!1514587 () Bool)

(assert (=> b!5504906 (= e!3404918 (and tp!1514589 tp!1514587))))

(assert (= (and b!5503892 ((_ is ElementMatch!15481) (regOne!31474 (regOne!31474 r!7292)))) b!5504903))

(assert (= (and b!5503892 ((_ is Concat!24326) (regOne!31474 (regOne!31474 r!7292)))) b!5504904))

(assert (= (and b!5503892 ((_ is Star!15481) (regOne!31474 (regOne!31474 r!7292)))) b!5504905))

(assert (= (and b!5503892 ((_ is Union!15481) (regOne!31474 (regOne!31474 r!7292)))) b!5504906))

(declare-fun b!5504907 () Bool)

(declare-fun e!3404919 () Bool)

(assert (=> b!5504907 (= e!3404919 tp_is_empty!40215)))

(declare-fun b!5504909 () Bool)

(declare-fun tp!1514591 () Bool)

(assert (=> b!5504909 (= e!3404919 tp!1514591)))

(assert (=> b!5503892 (= tp!1514314 e!3404919)))

(declare-fun b!5504908 () Bool)

(declare-fun tp!1514595 () Bool)

(declare-fun tp!1514593 () Bool)

(assert (=> b!5504908 (= e!3404919 (and tp!1514595 tp!1514593))))

(declare-fun b!5504910 () Bool)

(declare-fun tp!1514594 () Bool)

(declare-fun tp!1514592 () Bool)

(assert (=> b!5504910 (= e!3404919 (and tp!1514594 tp!1514592))))

(assert (= (and b!5503892 ((_ is ElementMatch!15481) (regTwo!31474 (regOne!31474 r!7292)))) b!5504907))

(assert (= (and b!5503892 ((_ is Concat!24326) (regTwo!31474 (regOne!31474 r!7292)))) b!5504908))

(assert (= (and b!5503892 ((_ is Star!15481) (regTwo!31474 (regOne!31474 r!7292)))) b!5504909))

(assert (= (and b!5503892 ((_ is Union!15481) (regTwo!31474 (regOne!31474 r!7292)))) b!5504910))

(declare-fun b!5504911 () Bool)

(declare-fun e!3404920 () Bool)

(assert (=> b!5504911 (= e!3404920 tp_is_empty!40215)))

(declare-fun b!5504913 () Bool)

(declare-fun tp!1514596 () Bool)

(assert (=> b!5504913 (= e!3404920 tp!1514596)))

(assert (=> b!5503923 (= tp!1514344 e!3404920)))

(declare-fun b!5504912 () Bool)

(declare-fun tp!1514600 () Bool)

(declare-fun tp!1514598 () Bool)

(assert (=> b!5504912 (= e!3404920 (and tp!1514600 tp!1514598))))

(declare-fun b!5504914 () Bool)

(declare-fun tp!1514599 () Bool)

(declare-fun tp!1514597 () Bool)

(assert (=> b!5504914 (= e!3404920 (and tp!1514599 tp!1514597))))

(assert (= (and b!5503923 ((_ is ElementMatch!15481) (regOne!31475 (regTwo!31475 r!7292)))) b!5504911))

(assert (= (and b!5503923 ((_ is Concat!24326) (regOne!31475 (regTwo!31475 r!7292)))) b!5504912))

(assert (= (and b!5503923 ((_ is Star!15481) (regOne!31475 (regTwo!31475 r!7292)))) b!5504913))

(assert (= (and b!5503923 ((_ is Union!15481) (regOne!31475 (regTwo!31475 r!7292)))) b!5504914))

(declare-fun b!5504915 () Bool)

(declare-fun e!3404921 () Bool)

(assert (=> b!5504915 (= e!3404921 tp_is_empty!40215)))

(declare-fun b!5504917 () Bool)

(declare-fun tp!1514601 () Bool)

(assert (=> b!5504917 (= e!3404921 tp!1514601)))

(assert (=> b!5503923 (= tp!1514342 e!3404921)))

(declare-fun b!5504916 () Bool)

(declare-fun tp!1514605 () Bool)

(declare-fun tp!1514603 () Bool)

(assert (=> b!5504916 (= e!3404921 (and tp!1514605 tp!1514603))))

(declare-fun b!5504918 () Bool)

(declare-fun tp!1514604 () Bool)

(declare-fun tp!1514602 () Bool)

(assert (=> b!5504918 (= e!3404921 (and tp!1514604 tp!1514602))))

(assert (= (and b!5503923 ((_ is ElementMatch!15481) (regTwo!31475 (regTwo!31475 r!7292)))) b!5504915))

(assert (= (and b!5503923 ((_ is Concat!24326) (regTwo!31475 (regTwo!31475 r!7292)))) b!5504916))

(assert (= (and b!5503923 ((_ is Star!15481) (regTwo!31475 (regTwo!31475 r!7292)))) b!5504917))

(assert (= (and b!5503923 ((_ is Union!15481) (regTwo!31475 (regTwo!31475 r!7292)))) b!5504918))

(declare-fun b!5504919 () Bool)

(declare-fun e!3404922 () Bool)

(assert (=> b!5504919 (= e!3404922 tp_is_empty!40215)))

(declare-fun b!5504921 () Bool)

(declare-fun tp!1514606 () Bool)

(assert (=> b!5504921 (= e!3404922 tp!1514606)))

(assert (=> b!5503914 (= tp!1514331 e!3404922)))

(declare-fun b!5504920 () Bool)

(declare-fun tp!1514610 () Bool)

(declare-fun tp!1514608 () Bool)

(assert (=> b!5504920 (= e!3404922 (and tp!1514610 tp!1514608))))

(declare-fun b!5504922 () Bool)

(declare-fun tp!1514609 () Bool)

(declare-fun tp!1514607 () Bool)

(assert (=> b!5504922 (= e!3404922 (and tp!1514609 tp!1514607))))

(assert (= (and b!5503914 ((_ is ElementMatch!15481) (reg!15810 (reg!15810 r!7292)))) b!5504919))

(assert (= (and b!5503914 ((_ is Concat!24326) (reg!15810 (reg!15810 r!7292)))) b!5504920))

(assert (= (and b!5503914 ((_ is Star!15481) (reg!15810 (reg!15810 r!7292)))) b!5504921))

(assert (= (and b!5503914 ((_ is Union!15481) (reg!15810 (reg!15810 r!7292)))) b!5504922))

(declare-fun b!5504923 () Bool)

(declare-fun e!3404923 () Bool)

(assert (=> b!5504923 (= e!3404923 tp_is_empty!40215)))

(declare-fun b!5504925 () Bool)

(declare-fun tp!1514611 () Bool)

(assert (=> b!5504925 (= e!3404923 tp!1514611)))

(assert (=> b!5503894 (= tp!1514315 e!3404923)))

(declare-fun b!5504924 () Bool)

(declare-fun tp!1514615 () Bool)

(declare-fun tp!1514613 () Bool)

(assert (=> b!5504924 (= e!3404923 (and tp!1514615 tp!1514613))))

(declare-fun b!5504926 () Bool)

(declare-fun tp!1514614 () Bool)

(declare-fun tp!1514612 () Bool)

(assert (=> b!5504926 (= e!3404923 (and tp!1514614 tp!1514612))))

(assert (= (and b!5503894 ((_ is ElementMatch!15481) (regOne!31475 (regOne!31474 r!7292)))) b!5504923))

(assert (= (and b!5503894 ((_ is Concat!24326) (regOne!31475 (regOne!31474 r!7292)))) b!5504924))

(assert (= (and b!5503894 ((_ is Star!15481) (regOne!31475 (regOne!31474 r!7292)))) b!5504925))

(assert (= (and b!5503894 ((_ is Union!15481) (regOne!31475 (regOne!31474 r!7292)))) b!5504926))

(declare-fun b!5504927 () Bool)

(declare-fun e!3404924 () Bool)

(assert (=> b!5504927 (= e!3404924 tp_is_empty!40215)))

(declare-fun b!5504929 () Bool)

(declare-fun tp!1514616 () Bool)

(assert (=> b!5504929 (= e!3404924 tp!1514616)))

(assert (=> b!5503894 (= tp!1514313 e!3404924)))

(declare-fun b!5504928 () Bool)

(declare-fun tp!1514620 () Bool)

(declare-fun tp!1514618 () Bool)

(assert (=> b!5504928 (= e!3404924 (and tp!1514620 tp!1514618))))

(declare-fun b!5504930 () Bool)

(declare-fun tp!1514619 () Bool)

(declare-fun tp!1514617 () Bool)

(assert (=> b!5504930 (= e!3404924 (and tp!1514619 tp!1514617))))

(assert (= (and b!5503894 ((_ is ElementMatch!15481) (regTwo!31475 (regOne!31474 r!7292)))) b!5504927))

(assert (= (and b!5503894 ((_ is Concat!24326) (regTwo!31475 (regOne!31474 r!7292)))) b!5504928))

(assert (= (and b!5503894 ((_ is Star!15481) (regTwo!31475 (regOne!31474 r!7292)))) b!5504929))

(assert (= (and b!5503894 ((_ is Union!15481) (regTwo!31475 (regOne!31474 r!7292)))) b!5504930))

(declare-fun b!5504931 () Bool)

(declare-fun e!3404925 () Bool)

(assert (=> b!5504931 (= e!3404925 tp_is_empty!40215)))

(declare-fun b!5504933 () Bool)

(declare-fun tp!1514621 () Bool)

(assert (=> b!5504933 (= e!3404925 tp!1514621)))

(assert (=> b!5503893 (= tp!1514312 e!3404925)))

(declare-fun b!5504932 () Bool)

(declare-fun tp!1514625 () Bool)

(declare-fun tp!1514623 () Bool)

(assert (=> b!5504932 (= e!3404925 (and tp!1514625 tp!1514623))))

(declare-fun b!5504934 () Bool)

(declare-fun tp!1514624 () Bool)

(declare-fun tp!1514622 () Bool)

(assert (=> b!5504934 (= e!3404925 (and tp!1514624 tp!1514622))))

(assert (= (and b!5503893 ((_ is ElementMatch!15481) (reg!15810 (regOne!31474 r!7292)))) b!5504931))

(assert (= (and b!5503893 ((_ is Concat!24326) (reg!15810 (regOne!31474 r!7292)))) b!5504932))

(assert (= (and b!5503893 ((_ is Star!15481) (reg!15810 (regOne!31474 r!7292)))) b!5504933))

(assert (= (and b!5503893 ((_ is Union!15481) (reg!15810 (regOne!31474 r!7292)))) b!5504934))

(declare-fun b!5504935 () Bool)

(declare-fun e!3404926 () Bool)

(assert (=> b!5504935 (= e!3404926 tp_is_empty!40215)))

(declare-fun b!5504937 () Bool)

(declare-fun tp!1514626 () Bool)

(assert (=> b!5504937 (= e!3404926 tp!1514626)))

(assert (=> b!5503917 (= tp!1514340 e!3404926)))

(declare-fun b!5504936 () Bool)

(declare-fun tp!1514630 () Bool)

(declare-fun tp!1514628 () Bool)

(assert (=> b!5504936 (= e!3404926 (and tp!1514630 tp!1514628))))

(declare-fun b!5504938 () Bool)

(declare-fun tp!1514629 () Bool)

(declare-fun tp!1514627 () Bool)

(assert (=> b!5504938 (= e!3404926 (and tp!1514629 tp!1514627))))

(assert (= (and b!5503917 ((_ is ElementMatch!15481) (regOne!31474 (regOne!31475 r!7292)))) b!5504935))

(assert (= (and b!5503917 ((_ is Concat!24326) (regOne!31474 (regOne!31475 r!7292)))) b!5504936))

(assert (= (and b!5503917 ((_ is Star!15481) (regOne!31474 (regOne!31475 r!7292)))) b!5504937))

(assert (= (and b!5503917 ((_ is Union!15481) (regOne!31474 (regOne!31475 r!7292)))) b!5504938))

(declare-fun b!5504939 () Bool)

(declare-fun e!3404927 () Bool)

(assert (=> b!5504939 (= e!3404927 tp_is_empty!40215)))

(declare-fun b!5504941 () Bool)

(declare-fun tp!1514631 () Bool)

(assert (=> b!5504941 (= e!3404927 tp!1514631)))

(assert (=> b!5503917 (= tp!1514338 e!3404927)))

(declare-fun b!5504940 () Bool)

(declare-fun tp!1514635 () Bool)

(declare-fun tp!1514633 () Bool)

(assert (=> b!5504940 (= e!3404927 (and tp!1514635 tp!1514633))))

(declare-fun b!5504942 () Bool)

(declare-fun tp!1514634 () Bool)

(declare-fun tp!1514632 () Bool)

(assert (=> b!5504942 (= e!3404927 (and tp!1514634 tp!1514632))))

(assert (= (and b!5503917 ((_ is ElementMatch!15481) (regTwo!31474 (regOne!31475 r!7292)))) b!5504939))

(assert (= (and b!5503917 ((_ is Concat!24326) (regTwo!31474 (regOne!31475 r!7292)))) b!5504940))

(assert (= (and b!5503917 ((_ is Star!15481) (regTwo!31474 (regOne!31475 r!7292)))) b!5504941))

(assert (= (and b!5503917 ((_ is Union!15481) (regTwo!31474 (regOne!31475 r!7292)))) b!5504942))

(declare-fun b!5504943 () Bool)

(declare-fun e!3404928 () Bool)

(assert (=> b!5504943 (= e!3404928 tp_is_empty!40215)))

(declare-fun b!5504945 () Bool)

(declare-fun tp!1514636 () Bool)

(assert (=> b!5504945 (= e!3404928 tp!1514636)))

(assert (=> b!5503918 (= tp!1514336 e!3404928)))

(declare-fun b!5504944 () Bool)

(declare-fun tp!1514640 () Bool)

(declare-fun tp!1514638 () Bool)

(assert (=> b!5504944 (= e!3404928 (and tp!1514640 tp!1514638))))

(declare-fun b!5504946 () Bool)

(declare-fun tp!1514639 () Bool)

(declare-fun tp!1514637 () Bool)

(assert (=> b!5504946 (= e!3404928 (and tp!1514639 tp!1514637))))

(assert (= (and b!5503918 ((_ is ElementMatch!15481) (reg!15810 (regOne!31475 r!7292)))) b!5504943))

(assert (= (and b!5503918 ((_ is Concat!24326) (reg!15810 (regOne!31475 r!7292)))) b!5504944))

(assert (= (and b!5503918 ((_ is Star!15481) (reg!15810 (regOne!31475 r!7292)))) b!5504945))

(assert (= (and b!5503918 ((_ is Union!15481) (reg!15810 (regOne!31475 r!7292)))) b!5504946))

(declare-fun b!5504947 () Bool)

(declare-fun e!3404929 () Bool)

(assert (=> b!5504947 (= e!3404929 tp_is_empty!40215)))

(declare-fun b!5504949 () Bool)

(declare-fun tp!1514641 () Bool)

(assert (=> b!5504949 (= e!3404929 tp!1514641)))

(assert (=> b!5503896 (= tp!1514321 e!3404929)))

(declare-fun b!5504948 () Bool)

(declare-fun tp!1514645 () Bool)

(declare-fun tp!1514643 () Bool)

(assert (=> b!5504948 (= e!3404929 (and tp!1514645 tp!1514643))))

(declare-fun b!5504950 () Bool)

(declare-fun tp!1514644 () Bool)

(declare-fun tp!1514642 () Bool)

(assert (=> b!5504950 (= e!3404929 (and tp!1514644 tp!1514642))))

(assert (= (and b!5503896 ((_ is ElementMatch!15481) (regOne!31474 (regTwo!31474 r!7292)))) b!5504947))

(assert (= (and b!5503896 ((_ is Concat!24326) (regOne!31474 (regTwo!31474 r!7292)))) b!5504948))

(assert (= (and b!5503896 ((_ is Star!15481) (regOne!31474 (regTwo!31474 r!7292)))) b!5504949))

(assert (= (and b!5503896 ((_ is Union!15481) (regOne!31474 (regTwo!31474 r!7292)))) b!5504950))

(declare-fun b!5504951 () Bool)

(declare-fun e!3404930 () Bool)

(assert (=> b!5504951 (= e!3404930 tp_is_empty!40215)))

(declare-fun b!5504953 () Bool)

(declare-fun tp!1514646 () Bool)

(assert (=> b!5504953 (= e!3404930 tp!1514646)))

(assert (=> b!5503896 (= tp!1514319 e!3404930)))

(declare-fun b!5504952 () Bool)

(declare-fun tp!1514650 () Bool)

(declare-fun tp!1514648 () Bool)

(assert (=> b!5504952 (= e!3404930 (and tp!1514650 tp!1514648))))

(declare-fun b!5504954 () Bool)

(declare-fun tp!1514649 () Bool)

(declare-fun tp!1514647 () Bool)

(assert (=> b!5504954 (= e!3404930 (and tp!1514649 tp!1514647))))

(assert (= (and b!5503896 ((_ is ElementMatch!15481) (regTwo!31474 (regTwo!31474 r!7292)))) b!5504951))

(assert (= (and b!5503896 ((_ is Concat!24326) (regTwo!31474 (regTwo!31474 r!7292)))) b!5504952))

(assert (= (and b!5503896 ((_ is Star!15481) (regTwo!31474 (regTwo!31474 r!7292)))) b!5504953))

(assert (= (and b!5503896 ((_ is Union!15481) (regTwo!31474 (regTwo!31474 r!7292)))) b!5504954))

(declare-fun b!5504955 () Bool)

(declare-fun e!3404931 () Bool)

(declare-fun tp!1514651 () Bool)

(assert (=> b!5504955 (= e!3404931 (and tp_is_empty!40215 tp!1514651))))

(assert (=> b!5503911 (= tp!1514330 e!3404931)))

(assert (= (and b!5503911 ((_ is Cons!62620) (t!375983 (t!375983 s!2326)))) b!5504955))

(declare-fun b!5504956 () Bool)

(declare-fun e!3404932 () Bool)

(assert (=> b!5504956 (= e!3404932 tp_is_empty!40215)))

(declare-fun b!5504958 () Bool)

(declare-fun tp!1514652 () Bool)

(assert (=> b!5504958 (= e!3404932 tp!1514652)))

(assert (=> b!5503919 (= tp!1514339 e!3404932)))

(declare-fun b!5504957 () Bool)

(declare-fun tp!1514656 () Bool)

(declare-fun tp!1514654 () Bool)

(assert (=> b!5504957 (= e!3404932 (and tp!1514656 tp!1514654))))

(declare-fun b!5504959 () Bool)

(declare-fun tp!1514655 () Bool)

(declare-fun tp!1514653 () Bool)

(assert (=> b!5504959 (= e!3404932 (and tp!1514655 tp!1514653))))

(assert (= (and b!5503919 ((_ is ElementMatch!15481) (regOne!31475 (regOne!31475 r!7292)))) b!5504956))

(assert (= (and b!5503919 ((_ is Concat!24326) (regOne!31475 (regOne!31475 r!7292)))) b!5504957))

(assert (= (and b!5503919 ((_ is Star!15481) (regOne!31475 (regOne!31475 r!7292)))) b!5504958))

(assert (= (and b!5503919 ((_ is Union!15481) (regOne!31475 (regOne!31475 r!7292)))) b!5504959))

(declare-fun b!5504960 () Bool)

(declare-fun e!3404933 () Bool)

(assert (=> b!5504960 (= e!3404933 tp_is_empty!40215)))

(declare-fun b!5504962 () Bool)

(declare-fun tp!1514657 () Bool)

(assert (=> b!5504962 (= e!3404933 tp!1514657)))

(assert (=> b!5503919 (= tp!1514337 e!3404933)))

(declare-fun b!5504961 () Bool)

(declare-fun tp!1514661 () Bool)

(declare-fun tp!1514659 () Bool)

(assert (=> b!5504961 (= e!3404933 (and tp!1514661 tp!1514659))))

(declare-fun b!5504963 () Bool)

(declare-fun tp!1514660 () Bool)

(declare-fun tp!1514658 () Bool)

(assert (=> b!5504963 (= e!3404933 (and tp!1514660 tp!1514658))))

(assert (= (and b!5503919 ((_ is ElementMatch!15481) (regTwo!31475 (regOne!31475 r!7292)))) b!5504960))

(assert (= (and b!5503919 ((_ is Concat!24326) (regTwo!31475 (regOne!31475 r!7292)))) b!5504961))

(assert (= (and b!5503919 ((_ is Star!15481) (regTwo!31475 (regOne!31475 r!7292)))) b!5504962))

(assert (= (and b!5503919 ((_ is Union!15481) (regTwo!31475 (regOne!31475 r!7292)))) b!5504963))

(declare-fun b!5504964 () Bool)

(declare-fun e!3404934 () Bool)

(declare-fun tp!1514662 () Bool)

(declare-fun tp!1514663 () Bool)

(assert (=> b!5504964 (= e!3404934 (and tp!1514662 tp!1514663))))

(assert (=> b!5503928 (= tp!1514350 e!3404934)))

(assert (= (and b!5503928 ((_ is Cons!62618) (exprs!5365 setElem!36499))) b!5504964))

(declare-fun b!5504965 () Bool)

(declare-fun e!3404935 () Bool)

(assert (=> b!5504965 (= e!3404935 tp_is_empty!40215)))

(declare-fun b!5504967 () Bool)

(declare-fun tp!1514664 () Bool)

(assert (=> b!5504967 (= e!3404935 tp!1514664)))

(assert (=> b!5503933 (= tp!1514356 e!3404935)))

(declare-fun b!5504966 () Bool)

(declare-fun tp!1514668 () Bool)

(declare-fun tp!1514666 () Bool)

(assert (=> b!5504966 (= e!3404935 (and tp!1514668 tp!1514666))))

(declare-fun b!5504968 () Bool)

(declare-fun tp!1514667 () Bool)

(declare-fun tp!1514665 () Bool)

(assert (=> b!5504968 (= e!3404935 (and tp!1514667 tp!1514665))))

(assert (= (and b!5503933 ((_ is ElementMatch!15481) (h!69066 (exprs!5365 setElem!36493)))) b!5504965))

(assert (= (and b!5503933 ((_ is Concat!24326) (h!69066 (exprs!5365 setElem!36493)))) b!5504966))

(assert (= (and b!5503933 ((_ is Star!15481) (h!69066 (exprs!5365 setElem!36493)))) b!5504967))

(assert (= (and b!5503933 ((_ is Union!15481) (h!69066 (exprs!5365 setElem!36493)))) b!5504968))

(declare-fun b!5504969 () Bool)

(declare-fun e!3404936 () Bool)

(declare-fun tp!1514669 () Bool)

(declare-fun tp!1514670 () Bool)

(assert (=> b!5504969 (= e!3404936 (and tp!1514669 tp!1514670))))

(assert (=> b!5503933 (= tp!1514357 e!3404936)))

(assert (= (and b!5503933 ((_ is Cons!62618) (t!375981 (exprs!5365 setElem!36493)))) b!5504969))

(declare-fun b!5504970 () Bool)

(declare-fun e!3404937 () Bool)

(assert (=> b!5504970 (= e!3404937 tp_is_empty!40215)))

(declare-fun b!5504972 () Bool)

(declare-fun tp!1514671 () Bool)

(assert (=> b!5504972 (= e!3404937 tp!1514671)))

(assert (=> b!5503897 (= tp!1514317 e!3404937)))

(declare-fun b!5504971 () Bool)

(declare-fun tp!1514675 () Bool)

(declare-fun tp!1514673 () Bool)

(assert (=> b!5504971 (= e!3404937 (and tp!1514675 tp!1514673))))

(declare-fun b!5504973 () Bool)

(declare-fun tp!1514674 () Bool)

(declare-fun tp!1514672 () Bool)

(assert (=> b!5504973 (= e!3404937 (and tp!1514674 tp!1514672))))

(assert (= (and b!5503897 ((_ is ElementMatch!15481) (reg!15810 (regTwo!31474 r!7292)))) b!5504970))

(assert (= (and b!5503897 ((_ is Concat!24326) (reg!15810 (regTwo!31474 r!7292)))) b!5504971))

(assert (= (and b!5503897 ((_ is Star!15481) (reg!15810 (regTwo!31474 r!7292)))) b!5504972))

(assert (= (and b!5503897 ((_ is Union!15481) (reg!15810 (regTwo!31474 r!7292)))) b!5504973))

(declare-fun condSetEmpty!36511 () Bool)

(assert (=> setNonEmpty!36499 (= condSetEmpty!36511 (= setRest!36499 ((as const (Array Context!9730 Bool)) false)))))

(declare-fun setRes!36511 () Bool)

(assert (=> setNonEmpty!36499 (= tp!1514351 setRes!36511)))

(declare-fun setIsEmpty!36511 () Bool)

(assert (=> setIsEmpty!36511 setRes!36511))

(declare-fun setNonEmpty!36511 () Bool)

(declare-fun setElem!36511 () Context!9730)

(declare-fun tp!1514677 () Bool)

(declare-fun e!3404938 () Bool)

(assert (=> setNonEmpty!36511 (= setRes!36511 (and tp!1514677 (inv!81949 setElem!36511) e!3404938))))

(declare-fun setRest!36511 () (InoxSet Context!9730))

(assert (=> setNonEmpty!36511 (= setRest!36499 ((_ map or) (store ((as const (Array Context!9730 Bool)) false) setElem!36511 true) setRest!36511))))

(declare-fun b!5504974 () Bool)

(declare-fun tp!1514676 () Bool)

(assert (=> b!5504974 (= e!3404938 tp!1514676)))

(assert (= (and setNonEmpty!36499 condSetEmpty!36511) setIsEmpty!36511))

(assert (= (and setNonEmpty!36499 (not condSetEmpty!36511)) setNonEmpty!36511))

(assert (= setNonEmpty!36511 b!5504974))

(declare-fun m!6512146 () Bool)

(assert (=> setNonEmpty!36511 m!6512146))

(declare-fun b!5504975 () Bool)

(declare-fun e!3404939 () Bool)

(assert (=> b!5504975 (= e!3404939 tp_is_empty!40215)))

(declare-fun b!5504977 () Bool)

(declare-fun tp!1514678 () Bool)

(assert (=> b!5504977 (= e!3404939 tp!1514678)))

(assert (=> b!5503898 (= tp!1514320 e!3404939)))

(declare-fun b!5504976 () Bool)

(declare-fun tp!1514682 () Bool)

(declare-fun tp!1514680 () Bool)

(assert (=> b!5504976 (= e!3404939 (and tp!1514682 tp!1514680))))

(declare-fun b!5504978 () Bool)

(declare-fun tp!1514681 () Bool)

(declare-fun tp!1514679 () Bool)

(assert (=> b!5504978 (= e!3404939 (and tp!1514681 tp!1514679))))

(assert (= (and b!5503898 ((_ is ElementMatch!15481) (regOne!31475 (regTwo!31474 r!7292)))) b!5504975))

(assert (= (and b!5503898 ((_ is Concat!24326) (regOne!31475 (regTwo!31474 r!7292)))) b!5504976))

(assert (= (and b!5503898 ((_ is Star!15481) (regOne!31475 (regTwo!31474 r!7292)))) b!5504977))

(assert (= (and b!5503898 ((_ is Union!15481) (regOne!31475 (regTwo!31474 r!7292)))) b!5504978))

(declare-fun b!5504979 () Bool)

(declare-fun e!3404940 () Bool)

(assert (=> b!5504979 (= e!3404940 tp_is_empty!40215)))

(declare-fun b!5504981 () Bool)

(declare-fun tp!1514683 () Bool)

(assert (=> b!5504981 (= e!3404940 tp!1514683)))

(assert (=> b!5503898 (= tp!1514318 e!3404940)))

(declare-fun b!5504980 () Bool)

(declare-fun tp!1514687 () Bool)

(declare-fun tp!1514685 () Bool)

(assert (=> b!5504980 (= e!3404940 (and tp!1514687 tp!1514685))))

(declare-fun b!5504982 () Bool)

(declare-fun tp!1514686 () Bool)

(declare-fun tp!1514684 () Bool)

(assert (=> b!5504982 (= e!3404940 (and tp!1514686 tp!1514684))))

(assert (= (and b!5503898 ((_ is ElementMatch!15481) (regTwo!31475 (regTwo!31474 r!7292)))) b!5504979))

(assert (= (and b!5503898 ((_ is Concat!24326) (regTwo!31475 (regTwo!31474 r!7292)))) b!5504980))

(assert (= (and b!5503898 ((_ is Star!15481) (regTwo!31475 (regTwo!31474 r!7292)))) b!5504981))

(assert (= (and b!5503898 ((_ is Union!15481) (regTwo!31475 (regTwo!31474 r!7292)))) b!5504982))

(declare-fun b_lambda!208787 () Bool)

(assert (= b_lambda!208773 (or d!1744430 b_lambda!208787)))

(declare-fun bs!1269732 () Bool)

(declare-fun d!1744966 () Bool)

(assert (= bs!1269732 (and d!1744966 d!1744430)))

(assert (=> bs!1269732 (= (dynLambda!24474 lambda!294666 (h!69066 (exprs!5365 (h!69067 zl!343)))) (validRegex!7217 (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(declare-fun m!6512148 () Bool)

(assert (=> bs!1269732 m!6512148))

(assert (=> b!5504542 d!1744966))

(declare-fun b_lambda!208789 () Bool)

(assert (= b_lambda!208777 (or b!5503119 b_lambda!208789)))

(assert (=> d!1744842 d!1744504))

(declare-fun b_lambda!208791 () Bool)

(assert (= b_lambda!208771 (or d!1744464 b_lambda!208791)))

(declare-fun bs!1269733 () Bool)

(declare-fun d!1744968 () Bool)

(assert (= bs!1269733 (and d!1744968 d!1744464)))

(assert (=> bs!1269733 (= (dynLambda!24474 lambda!294679 (h!69066 lt!2243982)) (validRegex!7217 (h!69066 lt!2243982)))))

(declare-fun m!6512150 () Bool)

(assert (=> bs!1269733 m!6512150))

(assert (=> b!5504522 d!1744968))

(declare-fun b_lambda!208793 () Bool)

(assert (= b_lambda!208783 (or b!5503119 b_lambda!208793)))

(assert (=> d!1744950 d!1744502))

(declare-fun b_lambda!208795 () Bool)

(assert (= b_lambda!208775 (or b!5503119 b_lambda!208795)))

(assert (=> d!1744804 d!1744506))

(declare-fun b_lambda!208797 () Bool)

(assert (= b_lambda!208785 (or d!1744470 b_lambda!208797)))

(declare-fun bs!1269734 () Bool)

(declare-fun d!1744970 () Bool)

(assert (= bs!1269734 (and d!1744970 d!1744470)))

(assert (=> bs!1269734 (= (dynLambda!24474 lambda!294682 (h!69066 (exprs!5365 (h!69067 zl!343)))) (validRegex!7217 (h!69066 (exprs!5365 (h!69067 zl!343)))))))

(assert (=> bs!1269734 m!6512148))

(assert (=> b!5504857 d!1744970))

(declare-fun b_lambda!208799 () Bool)

(assert (= b_lambda!208781 (or d!1744490 b_lambda!208799)))

(declare-fun bs!1269735 () Bool)

(declare-fun d!1744972 () Bool)

(assert (= bs!1269735 (and d!1744972 d!1744490)))

(assert (=> bs!1269735 (= (dynLambda!24474 lambda!294683 (h!69066 (exprs!5365 setElem!36493))) (validRegex!7217 (h!69066 (exprs!5365 setElem!36493))))))

(declare-fun m!6512152 () Bool)

(assert (=> bs!1269735 m!6512152))

(assert (=> b!5504762 d!1744972))

(declare-fun b_lambda!208801 () Bool)

(assert (= b_lambda!208779 (or d!1744462 b_lambda!208801)))

(declare-fun bs!1269736 () Bool)

(declare-fun d!1744974 () Bool)

(assert (= bs!1269736 (and d!1744974 d!1744462)))

(assert (=> bs!1269736 (= (dynLambda!24474 lambda!294676 (h!69066 (unfocusZipperList!909 zl!343))) (validRegex!7217 (h!69066 (unfocusZipperList!909 zl!343))))))

(declare-fun m!6512154 () Bool)

(assert (=> bs!1269736 m!6512154))

(assert (=> b!5504725 d!1744974))

(check-sat (not bm!406744) (not b!5504595) (not b!5504968) (not b!5504902) (not b!5504866) (not b!5504982) (not b_lambda!208797) (not b!5504934) (not b!5504908) (not b!5504940) (not b!5504755) (not bm!406709) (not b!5504954) (not bm!406691) (not b!5504914) (not b!5504869) (not setNonEmpty!36511) (not bm!406678) (not d!1744842) (not bm!406695) (not d!1744926) (not bm!406734) (not b!5504805) (not bm!406775) (not b!5504516) (not b!5504870) (not bm!406686) (not bm!406738) (not setNonEmpty!36509) (not d!1744782) (not b!5504667) (not b!5504528) (not d!1744948) (not bm!406778) (not b!5504685) (not d!1744920) (not b!5504980) (not b!5504904) (not b!5504601) (not b!5504711) (not bs!1269735) (not b!5504689) (not bs!1269734) (not b!5504517) (not d!1744932) (not bm!406700) (not b!5504918) (not b!5504925) (not d!1744836) (not b_lambda!208793) (not b!5504910) (not d!1744780) (not b!5504945) (not b!5504912) (not b!5504851) (not b!5504763) (not b!5504849) (not b!5504859) (not bm!406718) (not bm!406682) (not d!1744964) (not b!5504889) (not b!5504885) (not bm!406697) (not b!5504888) (not b!5504942) (not b!5504900) (not b!5504856) (not b!5504682) (not b!5504776) (not b!5504921) (not b!5504824) (not b!5504953) (not b!5504978) (not d!1744892) (not bm!406735) (not bm!406746) (not d!1744758) (not d!1744754) (not b!5504865) (not b!5504966) (not d!1744796) (not b!5504771) (not bm!406703) (not d!1744784) tp_is_empty!40215 (not b!5504543) (not b!5504834) (not b!5504886) (not b!5504967) (not b_lambda!208795) (not b!5504537) (not b!5504615) (not b!5504971) (not b!5504961) (not bm!406715) (not b!5504878) (not b!5504896) (not b!5504591) (not b!5504798) (not b!5504976) (not b!5504720) (not b!5504901) (not b!5504514) (not bm!406698) (not b!5504592) (not b!5504905) (not b!5504816) (not d!1744790) (not d!1744856) (not bs!1269732) (not b!5504873) (not bm!406683) (not b!5504596) (not b!5504821) (not b!5504793) (not b!5504898) (not b!5504929) (not bm!406785) (not bm!406730) (not b!5504837) (not b!5504830) (not b!5504548) (not d!1744952) (not b!5504496) (not bm!406759) (not b!5504701) (not b!5504785) (not d!1744946) (not bm!406716) (not b!5504928) (not b!5504906) (not b!5504557) (not d!1744924) (not bm!406711) (not bm!406733) (not b!5504946) (not bm!406777) (not bm!406786) (not d!1744832) (not bm!406740) (not b!5504674) (not b!5504955) (not bm!406677) (not b!5504483) (not b_lambda!208733) (not b!5504620) (not b!5504728) (not d!1744872) (not b!5504893) (not bm!406747) (not b!5504944) (not b!5504938) (not b!5504558) (not b!5504726) (not b!5504952) (not b!5504702) (not b!5504727) (not b!5504512) (not b!5504881) (not b!5504733) (not bm!406776) (not bm!406773) (not b!5504972) (not b!5504871) (not d!1744874) (not d!1744876) (not bm!406765) (not b!5504815) (not b!5504832) (not d!1744752) (not b!5504656) (not b!5504708) (not d!1744938) (not b!5504872) (not b!5504861) (not b!5504707) (not d!1744960) (not b_lambda!208737) (not bm!406684) (not b!5504937) (not d!1744944) (not b!5504744) (not b!5504920) (not bm!406714) (not d!1744778) (not b!5504913) (not b!5504714) (not b!5504948) (not d!1744802) (not bm!406674) (not d!1744808) (not bm!406673) (not b!5504769) (not bm!406694) (not b!5504964) (not b_lambda!208789) (not b!5504684) (not b!5504868) (not b!5504877) (not b!5504549) (not b!5504713) (not d!1744922) (not b!5504936) (not b!5504858) (not b!5504932) (not b!5504973) (not bm!406708) (not b!5504882) (not d!1744822) (not b!5504890) (not b!5504822) (not bm!406751) (not d!1744830) (not b!5504852) (not d!1744818) (not b!5504523) (not b!5504574) (not b!5504644) (not b_lambda!208799) (not b!5504950) (not b!5504958) (not b!5504909) (not bm!406780) (not d!1744914) (not bm!406764) (not b!5504922) (not b!5504916) (not b!5504841) (not b!5504892) (not b!5504560) (not b!5504969) (not b!5504876) (not bm!406675) (not d!1744820) (not d!1744862) (not bm!406745) (not d!1744962) (not d!1744804) (not d!1744864) (not bm!406771) (not b_lambda!208791) (not d!1744906) (not bs!1269736) (not bm!406729) (not b!5504926) (not bm!406690) (not b!5504884) (not b!5504949) (not bm!406784) (not b!5504617) (not bm!406767) (not b!5504897) (not b!5504933) (not b!5504463) (not setNonEmpty!36510) (not d!1744786) (not b!5504930) (not b!5504862) (not b!5504705) (not b_lambda!208801) (not d!1744916) (not b!5504616) (not b!5504565) (not b!5504710) (not b!5504693) (not b!5504974) (not b!5504474) (not bm!406758) (not bs!1269733) (not b!5504833) (not d!1744776) (not b!5504957) (not b!5504583) (not b!5504829) (not bm!406737) (not bm!406768) (not b!5504880) (not b_lambda!208787) (not d!1744950) (not b!5504962) (not b!5504491) (not b!5504894) (not b!5504977) (not b!5504505) (not b!5504959) (not bm!406763) (not b!5504823) (not b!5504686) (not b!5504874) (not bm!406707) (not bm!406692) (not b!5504681) (not b!5504556) (not d!1744888) (not bm!406741) (not d!1744860) (not b!5504981) (not d!1744894) (not d!1744858) (not d!1744866) (not bm!406687) (not setNonEmpty!36508) (not b!5504963) (not bm!406753) (not bm!406752) (not b_lambda!208735) (not b!5504818) (not d!1744936) (not b!5504941) (not d!1744744) (not d!1744834) (not b!5504810) (not b!5504709) (not b!5504917) (not bm!406772) (not b!5504613) (not b!5504924) (not bm!406701) (not bm!406783) (not bm!406702) (not b!5504513) (not bm!406757) (not b!5504673) (not b!5504612) (not b!5504855))
(check-sat)
