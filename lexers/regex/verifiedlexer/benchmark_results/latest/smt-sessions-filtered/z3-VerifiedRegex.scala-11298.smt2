; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595976 () Bool)

(assert start!595976)

(declare-fun setIsEmpty!39214 () Bool)

(declare-fun setRes!39214 () Bool)

(assert (=> setIsEmpty!39214 setRes!39214))

(declare-fun b!5816337 () Bool)

(declare-fun e!3569790 () Bool)

(declare-datatypes ((C!31956 0))(
  ( (C!31957 (val!25680 Int)) )
))
(declare-datatypes ((Regex!15843 0))(
  ( (ElementMatch!15843 (c!1030821 C!31956)) (Concat!24688 (regOne!32198 Regex!15843) (regTwo!32198 Regex!15843)) (EmptyExpr!15843) (Star!15843 (reg!16172 Regex!15843)) (EmptyLang!15843) (Union!15843 (regOne!32199 Regex!15843) (regTwo!32199 Regex!15843)) )
))
(declare-datatypes ((List!63828 0))(
  ( (Nil!63704) (Cons!63704 (h!70152 Regex!15843) (t!377183 List!63828)) )
))
(declare-datatypes ((Context!10454 0))(
  ( (Context!10455 (exprs!5727 List!63828)) )
))
(declare-datatypes ((List!63829 0))(
  ( (Nil!63705) (Cons!63705 (h!70153 Context!10454) (t!377184 List!63829)) )
))
(declare-fun zl!343 () List!63829)

(declare-fun isEmpty!35616 (List!63829) Bool)

(assert (=> b!5816337 (= e!3569790 (isEmpty!35616 (t!377184 zl!343)))))

(declare-fun b!5816338 () Bool)

(declare-fun e!3569791 () Bool)

(declare-fun e!3569785 () Bool)

(assert (=> b!5816338 (= e!3569791 (not e!3569785))))

(declare-fun res!2452753 () Bool)

(assert (=> b!5816338 (=> res!2452753 e!3569785)))

(assert (=> b!5816338 (= res!2452753 e!3569790)))

(declare-fun res!2452751 () Bool)

(assert (=> b!5816338 (=> (not res!2452751) (not e!3569790))))

(get-info :version)

(assert (=> b!5816338 (= res!2452751 ((_ is Cons!63705) zl!343))))

(declare-fun r!7292 () Regex!15843)

(declare-datatypes ((List!63830 0))(
  ( (Nil!63706) (Cons!63706 (h!70154 C!31956) (t!377185 List!63830)) )
))
(declare-fun s!2326 () List!63830)

(declare-fun matchR!8028 (Regex!15843 List!63830) Bool)

(declare-fun matchRSpec!2946 (Regex!15843 List!63830) Bool)

(assert (=> b!5816338 (= (matchR!8028 r!7292 s!2326) (matchRSpec!2946 r!7292 s!2326))))

(declare-datatypes ((Unit!156946 0))(
  ( (Unit!156947) )
))
(declare-fun lt!2301426 () Unit!156946)

(declare-fun mainMatchTheorem!2946 (Regex!15843 List!63830) Unit!156946)

(assert (=> b!5816338 (= lt!2301426 (mainMatchTheorem!2946 r!7292 s!2326))))

(declare-fun res!2452749 () Bool)

(assert (=> start!595976 (=> (not res!2452749) (not e!3569791))))

(declare-fun validRegex!7579 (Regex!15843) Bool)

(assert (=> start!595976 (= res!2452749 (validRegex!7579 r!7292))))

(assert (=> start!595976 e!3569791))

(declare-fun e!3569786 () Bool)

(assert (=> start!595976 e!3569786))

(declare-fun condSetEmpty!39214 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10454))

(assert (=> start!595976 (= condSetEmpty!39214 (= z!1189 ((as const (Array Context!10454 Bool)) false)))))

(assert (=> start!595976 setRes!39214))

(declare-fun e!3569788 () Bool)

(assert (=> start!595976 e!3569788))

(declare-fun e!3569784 () Bool)

(assert (=> start!595976 e!3569784))

(declare-fun b!5816339 () Bool)

(declare-fun e!3569789 () Bool)

(declare-fun tp!1604783 () Bool)

(assert (=> b!5816339 (= e!3569789 tp!1604783)))

(declare-fun b!5816340 () Bool)

(declare-fun tp!1604786 () Bool)

(declare-fun tp!1604787 () Bool)

(assert (=> b!5816340 (= e!3569786 (and tp!1604786 tp!1604787))))

(declare-fun b!5816341 () Bool)

(declare-fun tp!1604785 () Bool)

(declare-fun tp!1604782 () Bool)

(assert (=> b!5816341 (= e!3569786 (and tp!1604785 tp!1604782))))

(declare-fun b!5816342 () Bool)

(declare-fun e!3569787 () Bool)

(declare-fun tp!1604780 () Bool)

(assert (=> b!5816342 (= e!3569787 tp!1604780)))

(declare-fun b!5816343 () Bool)

(declare-fun res!2452752 () Bool)

(assert (=> b!5816343 (=> res!2452752 e!3569785)))

(assert (=> b!5816343 (= res!2452752 (or (not ((_ is Cons!63705) zl!343)) ((_ is Nil!63706) s!2326) (not (= zl!343 (Cons!63705 (h!70153 zl!343) (t!377184 zl!343))))))))

(declare-fun b!5816344 () Bool)

(declare-fun tp!1604779 () Bool)

(assert (=> b!5816344 (= e!3569786 tp!1604779)))

(declare-fun setElem!39214 () Context!10454)

(declare-fun setNonEmpty!39214 () Bool)

(declare-fun tp!1604784 () Bool)

(declare-fun inv!82854 (Context!10454) Bool)

(assert (=> setNonEmpty!39214 (= setRes!39214 (and tp!1604784 (inv!82854 setElem!39214) e!3569787))))

(declare-fun setRest!39214 () (InoxSet Context!10454))

(assert (=> setNonEmpty!39214 (= z!1189 ((_ map or) (store ((as const (Array Context!10454 Bool)) false) setElem!39214 true) setRest!39214))))

(declare-fun b!5816345 () Bool)

(declare-fun res!2452754 () Bool)

(assert (=> b!5816345 (=> (not res!2452754) (not e!3569791))))

(declare-fun unfocusZipper!1585 (List!63829) Regex!15843)

(assert (=> b!5816345 (= res!2452754 (= r!7292 (unfocusZipper!1585 zl!343)))))

(declare-fun b!5816346 () Bool)

(declare-fun res!2452750 () Bool)

(assert (=> b!5816346 (=> (not res!2452750) (not e!3569791))))

(declare-fun toList!9627 ((InoxSet Context!10454)) List!63829)

(assert (=> b!5816346 (= res!2452750 (= (toList!9627 z!1189) zl!343))))

(declare-fun b!5816347 () Bool)

(assert (=> b!5816347 (= e!3569785 (not (isEmpty!35616 (t!377184 zl!343))))))

(declare-fun b!5816348 () Bool)

(declare-fun tp!1604788 () Bool)

(assert (=> b!5816348 (= e!3569788 (and (inv!82854 (h!70153 zl!343)) e!3569789 tp!1604788))))

(declare-fun b!5816349 () Bool)

(declare-fun tp_is_empty!40939 () Bool)

(assert (=> b!5816349 (= e!3569786 tp_is_empty!40939)))

(declare-fun b!5816350 () Bool)

(declare-fun tp!1604781 () Bool)

(assert (=> b!5816350 (= e!3569784 (and tp_is_empty!40939 tp!1604781))))

(assert (= (and start!595976 res!2452749) b!5816346))

(assert (= (and b!5816346 res!2452750) b!5816345))

(assert (= (and b!5816345 res!2452754) b!5816338))

(assert (= (and b!5816338 res!2452751) b!5816337))

(assert (= (and b!5816338 (not res!2452753)) b!5816343))

(assert (= (and b!5816343 (not res!2452752)) b!5816347))

(assert (= (and start!595976 ((_ is ElementMatch!15843) r!7292)) b!5816349))

(assert (= (and start!595976 ((_ is Concat!24688) r!7292)) b!5816341))

(assert (= (and start!595976 ((_ is Star!15843) r!7292)) b!5816344))

(assert (= (and start!595976 ((_ is Union!15843) r!7292)) b!5816340))

(assert (= (and start!595976 condSetEmpty!39214) setIsEmpty!39214))

(assert (= (and start!595976 (not condSetEmpty!39214)) setNonEmpty!39214))

(assert (= setNonEmpty!39214 b!5816342))

(assert (= b!5816348 b!5816339))

(assert (= (and start!595976 ((_ is Cons!63705) zl!343)) b!5816348))

(assert (= (and start!595976 ((_ is Cons!63706) s!2326)) b!5816350))

(declare-fun m!6753622 () Bool)

(assert (=> start!595976 m!6753622))

(declare-fun m!6753624 () Bool)

(assert (=> b!5816345 m!6753624))

(declare-fun m!6753626 () Bool)

(assert (=> b!5816346 m!6753626))

(declare-fun m!6753628 () Bool)

(assert (=> b!5816347 m!6753628))

(assert (=> b!5816337 m!6753628))

(declare-fun m!6753630 () Bool)

(assert (=> setNonEmpty!39214 m!6753630))

(declare-fun m!6753632 () Bool)

(assert (=> b!5816348 m!6753632))

(declare-fun m!6753634 () Bool)

(assert (=> b!5816338 m!6753634))

(declare-fun m!6753636 () Bool)

(assert (=> b!5816338 m!6753636))

(declare-fun m!6753638 () Bool)

(assert (=> b!5816338 m!6753638))

(check-sat (not b!5816350) (not b!5816339) (not setNonEmpty!39214) (not b!5816342) (not b!5816338) (not b!5816347) (not b!5816344) (not b!5816348) (not b!5816340) (not b!5816337) (not b!5816345) (not b!5816341) tp_is_empty!40939 (not b!5816346) (not start!595976))
(check-sat)
