; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595980 () Bool)

(assert start!595980)

(declare-fun b!5816455 () Bool)

(assert (=> b!5816455 true))

(declare-fun tp!1604840 () Bool)

(declare-fun e!3569847 () Bool)

(declare-datatypes ((C!31960 0))(
  ( (C!31961 (val!25682 Int)) )
))
(declare-datatypes ((Regex!15845 0))(
  ( (ElementMatch!15845 (c!1030823 C!31960)) (Concat!24690 (regOne!32202 Regex!15845) (regTwo!32202 Regex!15845)) (EmptyExpr!15845) (Star!15845 (reg!16174 Regex!15845)) (EmptyLang!15845) (Union!15845 (regOne!32203 Regex!15845) (regTwo!32203 Regex!15845)) )
))
(declare-datatypes ((List!63834 0))(
  ( (Nil!63710) (Cons!63710 (h!70158 Regex!15845) (t!377189 List!63834)) )
))
(declare-datatypes ((Context!10458 0))(
  ( (Context!10459 (exprs!5729 List!63834)) )
))
(declare-datatypes ((List!63835 0))(
  ( (Nil!63711) (Cons!63711 (h!70159 Context!10458) (t!377190 List!63835)) )
))
(declare-fun zl!343 () List!63835)

(declare-fun e!3569849 () Bool)

(declare-fun b!5816441 () Bool)

(declare-fun inv!82859 (Context!10458) Bool)

(assert (=> b!5816441 (= e!3569849 (and (inv!82859 (h!70159 zl!343)) e!3569847 tp!1604840))))

(declare-fun res!2452806 () Bool)

(declare-fun e!3569853 () Bool)

(assert (=> start!595980 (=> (not res!2452806) (not e!3569853))))

(declare-fun r!7292 () Regex!15845)

(declare-fun validRegex!7581 (Regex!15845) Bool)

(assert (=> start!595980 (= res!2452806 (validRegex!7581 r!7292))))

(assert (=> start!595980 e!3569853))

(declare-fun e!3569851 () Bool)

(assert (=> start!595980 e!3569851))

(declare-fun condSetEmpty!39220 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10458))

(assert (=> start!595980 (= condSetEmpty!39220 (= z!1189 ((as const (Array Context!10458 Bool)) false)))))

(declare-fun setRes!39220 () Bool)

(assert (=> start!595980 setRes!39220))

(assert (=> start!595980 e!3569849))

(declare-fun e!3569845 () Bool)

(assert (=> start!595980 e!3569845))

(declare-fun b!5816442 () Bool)

(declare-fun res!2452807 () Bool)

(declare-fun e!3569852 () Bool)

(assert (=> b!5816442 (=> res!2452807 e!3569852)))

(declare-fun isEmpty!35618 (List!63835) Bool)

(assert (=> b!5816442 (= res!2452807 (isEmpty!35618 (t!377190 zl!343)))))

(declare-fun b!5816443 () Bool)

(declare-fun e!3569846 () Bool)

(declare-fun lt!2301449 () List!63834)

(declare-fun lambda!318044 () Int)

(declare-fun exists!2261 (List!63834 Int) Bool)

(assert (=> b!5816443 (= e!3569846 (exists!2261 lt!2301449 lambda!318044))))

(declare-fun b!5816444 () Bool)

(declare-fun res!2452804 () Bool)

(assert (=> b!5816444 (=> (not res!2452804) (not e!3569853))))

(declare-fun unfocusZipper!1587 (List!63835) Regex!15845)

(assert (=> b!5816444 (= res!2452804 (= r!7292 (unfocusZipper!1587 zl!343)))))

(declare-fun b!5816445 () Bool)

(declare-fun res!2452810 () Bool)

(assert (=> b!5816445 (=> (not res!2452810) (not e!3569853))))

(declare-fun toList!9629 ((InoxSet Context!10458)) List!63835)

(assert (=> b!5816445 (= res!2452810 (= (toList!9629 z!1189) zl!343))))

(declare-fun b!5816446 () Bool)

(declare-fun e!3569848 () Bool)

(assert (=> b!5816446 (= e!3569848 (isEmpty!35618 (t!377190 zl!343)))))

(declare-fun b!5816447 () Bool)

(assert (=> b!5816447 (= e!3569853 (not e!3569852))))

(declare-fun res!2452803 () Bool)

(assert (=> b!5816447 (=> res!2452803 e!3569852)))

(assert (=> b!5816447 (= res!2452803 e!3569848)))

(declare-fun res!2452805 () Bool)

(assert (=> b!5816447 (=> (not res!2452805) (not e!3569848))))

(get-info :version)

(assert (=> b!5816447 (= res!2452805 ((_ is Cons!63711) zl!343))))

(declare-fun lt!2301447 () Bool)

(declare-datatypes ((List!63836 0))(
  ( (Nil!63712) (Cons!63712 (h!70160 C!31960) (t!377191 List!63836)) )
))
(declare-fun s!2326 () List!63836)

(declare-fun matchRSpec!2948 (Regex!15845 List!63836) Bool)

(assert (=> b!5816447 (= lt!2301447 (matchRSpec!2948 r!7292 s!2326))))

(declare-fun matchR!8030 (Regex!15845 List!63836) Bool)

(assert (=> b!5816447 (= lt!2301447 (matchR!8030 r!7292 s!2326))))

(declare-datatypes ((Unit!156950 0))(
  ( (Unit!156951) )
))
(declare-fun lt!2301450 () Unit!156950)

(declare-fun mainMatchTheorem!2948 (Regex!15845 List!63836) Unit!156950)

(assert (=> b!5816447 (= lt!2301450 (mainMatchTheorem!2948 r!7292 s!2326))))

(declare-fun b!5816448 () Bool)

(declare-fun tp!1604842 () Bool)

(declare-fun tp!1604848 () Bool)

(assert (=> b!5816448 (= e!3569851 (and tp!1604842 tp!1604848))))

(declare-fun tp!1604845 () Bool)

(declare-fun e!3569850 () Bool)

(declare-fun setElem!39220 () Context!10458)

(declare-fun setNonEmpty!39220 () Bool)

(assert (=> setNonEmpty!39220 (= setRes!39220 (and tp!1604845 (inv!82859 setElem!39220) e!3569850))))

(declare-fun setRest!39220 () (InoxSet Context!10458))

(assert (=> setNonEmpty!39220 (= z!1189 ((_ map or) (store ((as const (Array Context!10458 Bool)) false) setElem!39220 true) setRest!39220))))

(declare-fun b!5816449 () Bool)

(declare-fun tp_is_empty!40943 () Bool)

(declare-fun tp!1604847 () Bool)

(assert (=> b!5816449 (= e!3569845 (and tp_is_empty!40943 tp!1604847))))

(declare-fun b!5816450 () Bool)

(declare-fun tp!1604843 () Bool)

(assert (=> b!5816450 (= e!3569850 tp!1604843)))

(declare-fun b!5816451 () Bool)

(declare-fun tp!1604841 () Bool)

(declare-fun tp!1604846 () Bool)

(assert (=> b!5816451 (= e!3569851 (and tp!1604841 tp!1604846))))

(declare-fun b!5816452 () Bool)

(declare-fun tp!1604839 () Bool)

(assert (=> b!5816452 (= e!3569847 tp!1604839)))

(declare-fun b!5816453 () Bool)

(declare-fun res!2452808 () Bool)

(assert (=> b!5816453 (=> res!2452808 e!3569852)))

(assert (=> b!5816453 (= res!2452808 (or (not ((_ is Cons!63711) zl!343)) ((_ is Nil!63712) s!2326) (not (= zl!343 (Cons!63711 (h!70159 zl!343) (t!377190 zl!343))))))))

(declare-fun b!5816454 () Bool)

(declare-fun tp!1604844 () Bool)

(assert (=> b!5816454 (= e!3569851 tp!1604844)))

(declare-fun setIsEmpty!39220 () Bool)

(assert (=> setIsEmpty!39220 setRes!39220))

(assert (=> b!5816455 (= e!3569852 e!3569846)))

(declare-fun res!2452809 () Bool)

(assert (=> b!5816455 (=> res!2452809 e!3569846)))

(assert (=> b!5816455 (= res!2452809 (not lt!2301447))))

(assert (=> b!5816455 (= lt!2301447 (exists!2261 lt!2301449 lambda!318044))))

(declare-fun lt!2301448 () Unit!156950)

(declare-fun matchRGenUnionSpec!286 (Regex!15845 List!63834 List!63836) Unit!156950)

(assert (=> b!5816455 (= lt!2301448 (matchRGenUnionSpec!286 r!7292 lt!2301449 s!2326))))

(declare-fun unfocusZipperList!1267 (List!63835) List!63834)

(assert (=> b!5816455 (= lt!2301449 (unfocusZipperList!1267 zl!343))))

(declare-fun b!5816456 () Bool)

(assert (=> b!5816456 (= e!3569851 tp_is_empty!40943)))

(assert (= (and start!595980 res!2452806) b!5816445))

(assert (= (and b!5816445 res!2452810) b!5816444))

(assert (= (and b!5816444 res!2452804) b!5816447))

(assert (= (and b!5816447 res!2452805) b!5816446))

(assert (= (and b!5816447 (not res!2452803)) b!5816453))

(assert (= (and b!5816453 (not res!2452808)) b!5816442))

(assert (= (and b!5816442 (not res!2452807)) b!5816455))

(assert (= (and b!5816455 (not res!2452809)) b!5816443))

(assert (= (and start!595980 ((_ is ElementMatch!15845) r!7292)) b!5816456))

(assert (= (and start!595980 ((_ is Concat!24690) r!7292)) b!5816448))

(assert (= (and start!595980 ((_ is Star!15845) r!7292)) b!5816454))

(assert (= (and start!595980 ((_ is Union!15845) r!7292)) b!5816451))

(assert (= (and start!595980 condSetEmpty!39220) setIsEmpty!39220))

(assert (= (and start!595980 (not condSetEmpty!39220)) setNonEmpty!39220))

(assert (= setNonEmpty!39220 b!5816450))

(assert (= b!5816441 b!5816452))

(assert (= (and start!595980 ((_ is Cons!63711) zl!343)) b!5816441))

(assert (= (and start!595980 ((_ is Cons!63712) s!2326)) b!5816449))

(declare-fun m!6753664 () Bool)

(assert (=> b!5816446 m!6753664))

(declare-fun m!6753666 () Bool)

(assert (=> b!5816455 m!6753666))

(declare-fun m!6753668 () Bool)

(assert (=> b!5816455 m!6753668))

(declare-fun m!6753670 () Bool)

(assert (=> b!5816455 m!6753670))

(assert (=> b!5816442 m!6753664))

(declare-fun m!6753672 () Bool)

(assert (=> b!5816441 m!6753672))

(declare-fun m!6753674 () Bool)

(assert (=> start!595980 m!6753674))

(declare-fun m!6753676 () Bool)

(assert (=> setNonEmpty!39220 m!6753676))

(declare-fun m!6753678 () Bool)

(assert (=> b!5816445 m!6753678))

(declare-fun m!6753680 () Bool)

(assert (=> b!5816444 m!6753680))

(declare-fun m!6753682 () Bool)

(assert (=> b!5816447 m!6753682))

(declare-fun m!6753684 () Bool)

(assert (=> b!5816447 m!6753684))

(declare-fun m!6753686 () Bool)

(assert (=> b!5816447 m!6753686))

(assert (=> b!5816443 m!6753666))

(check-sat (not b!5816451) (not b!5816452) (not b!5816449) (not b!5816445) (not b!5816450) (not b!5816454) (not start!595980) (not setNonEmpty!39220) (not b!5816442) (not b!5816441) tp_is_empty!40943 (not b!5816444) (not b!5816446) (not b!5816448) (not b!5816443) (not b!5816455) (not b!5816447))
(check-sat)
