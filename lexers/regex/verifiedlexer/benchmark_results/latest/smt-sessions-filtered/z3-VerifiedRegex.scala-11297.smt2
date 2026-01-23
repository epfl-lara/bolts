; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595972 () Bool)

(assert start!595972)

(declare-fun b!5816254 () Bool)

(declare-fun e!3569738 () Bool)

(declare-fun tp!1604728 () Bool)

(assert (=> b!5816254 (= e!3569738 tp!1604728)))

(declare-fun b!5816255 () Bool)

(declare-fun res!2452715 () Bool)

(declare-fun e!3569742 () Bool)

(assert (=> b!5816255 (=> (not res!2452715) (not e!3569742))))

(declare-datatypes ((C!31952 0))(
  ( (C!31953 (val!25678 Int)) )
))
(declare-datatypes ((Regex!15841 0))(
  ( (ElementMatch!15841 (c!1030819 C!31952)) (Concat!24686 (regOne!32194 Regex!15841) (regTwo!32194 Regex!15841)) (EmptyExpr!15841) (Star!15841 (reg!16170 Regex!15841)) (EmptyLang!15841) (Union!15841 (regOne!32195 Regex!15841) (regTwo!32195 Regex!15841)) )
))
(declare-fun r!7292 () Regex!15841)

(declare-datatypes ((List!63822 0))(
  ( (Nil!63698) (Cons!63698 (h!70146 Regex!15841) (t!377177 List!63822)) )
))
(declare-datatypes ((Context!10450 0))(
  ( (Context!10451 (exprs!5725 List!63822)) )
))
(declare-datatypes ((List!63823 0))(
  ( (Nil!63699) (Cons!63699 (h!70147 Context!10450) (t!377178 List!63823)) )
))
(declare-fun zl!343 () List!63823)

(declare-fun unfocusZipper!1583 (List!63823) Regex!15841)

(assert (=> b!5816255 (= res!2452715 (= r!7292 (unfocusZipper!1583 zl!343)))))

(declare-fun b!5816257 () Bool)

(declare-fun tp!1604722 () Bool)

(declare-fun tp!1604719 () Bool)

(assert (=> b!5816257 (= e!3569738 (and tp!1604722 tp!1604719))))

(declare-fun b!5816258 () Bool)

(declare-fun e!3569736 () Bool)

(declare-fun tp!1604723 () Bool)

(assert (=> b!5816258 (= e!3569736 tp!1604723)))

(declare-fun b!5816259 () Bool)

(declare-fun e!3569739 () Bool)

(declare-fun tp_is_empty!40935 () Bool)

(declare-fun tp!1604720 () Bool)

(assert (=> b!5816259 (= e!3569739 (and tp_is_empty!40935 tp!1604720))))

(declare-fun setIsEmpty!39208 () Bool)

(declare-fun setRes!39208 () Bool)

(assert (=> setIsEmpty!39208 setRes!39208))

(declare-fun e!3569737 () Bool)

(declare-fun tp!1604724 () Bool)

(declare-fun b!5816260 () Bool)

(declare-fun e!3569741 () Bool)

(declare-fun inv!82849 (Context!10450) Bool)

(assert (=> b!5816260 (= e!3569737 (and (inv!82849 (h!70147 zl!343)) e!3569741 tp!1604724))))

(declare-fun b!5816261 () Bool)

(declare-fun tp!1604727 () Bool)

(assert (=> b!5816261 (= e!3569741 tp!1604727)))

(declare-fun b!5816262 () Bool)

(declare-fun e!3569740 () Bool)

(declare-datatypes ((List!63824 0))(
  ( (Nil!63700) (Cons!63700 (h!70148 C!31952) (t!377179 List!63824)) )
))
(declare-fun s!2326 () List!63824)

(get-info :version)

(assert (=> b!5816262 (= e!3569740 (or (not ((_ is Cons!63699) zl!343)) ((_ is Nil!63700) s!2326) (= zl!343 (Cons!63699 (h!70147 zl!343) (t!377178 zl!343)))))))

(declare-fun tp!1604725 () Bool)

(declare-fun setElem!39208 () Context!10450)

(declare-fun setNonEmpty!39208 () Bool)

(assert (=> setNonEmpty!39208 (= setRes!39208 (and tp!1604725 (inv!82849 setElem!39208) e!3569736))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10450))

(declare-fun setRest!39208 () (InoxSet Context!10450))

(assert (=> setNonEmpty!39208 (= z!1189 ((_ map or) (store ((as const (Array Context!10450 Bool)) false) setElem!39208 true) setRest!39208))))

(declare-fun res!2452718 () Bool)

(assert (=> start!595972 (=> (not res!2452718) (not e!3569742))))

(declare-fun validRegex!7577 (Regex!15841) Bool)

(assert (=> start!595972 (= res!2452718 (validRegex!7577 r!7292))))

(assert (=> start!595972 e!3569742))

(assert (=> start!595972 e!3569738))

(declare-fun condSetEmpty!39208 () Bool)

(assert (=> start!595972 (= condSetEmpty!39208 (= z!1189 ((as const (Array Context!10450 Bool)) false)))))

(assert (=> start!595972 setRes!39208))

(assert (=> start!595972 e!3569737))

(assert (=> start!595972 e!3569739))

(declare-fun b!5816256 () Bool)

(assert (=> b!5816256 (= e!3569738 tp_is_empty!40935)))

(declare-fun b!5816263 () Bool)

(declare-fun res!2452714 () Bool)

(assert (=> b!5816263 (=> (not res!2452714) (not e!3569742))))

(declare-fun toList!9625 ((InoxSet Context!10450)) List!63823)

(assert (=> b!5816263 (= res!2452714 (= (toList!9625 z!1189) zl!343))))

(declare-fun b!5816264 () Bool)

(assert (=> b!5816264 (= e!3569742 (not e!3569740))))

(declare-fun res!2452716 () Bool)

(assert (=> b!5816264 (=> res!2452716 e!3569740)))

(declare-fun e!3569743 () Bool)

(assert (=> b!5816264 (= res!2452716 e!3569743)))

(declare-fun res!2452717 () Bool)

(assert (=> b!5816264 (=> (not res!2452717) (not e!3569743))))

(assert (=> b!5816264 (= res!2452717 ((_ is Cons!63699) zl!343))))

(declare-fun matchR!8026 (Regex!15841 List!63824) Bool)

(declare-fun matchRSpec!2944 (Regex!15841 List!63824) Bool)

(assert (=> b!5816264 (= (matchR!8026 r!7292 s!2326) (matchRSpec!2944 r!7292 s!2326))))

(declare-datatypes ((Unit!156942 0))(
  ( (Unit!156943) )
))
(declare-fun lt!2301420 () Unit!156942)

(declare-fun mainMatchTheorem!2944 (Regex!15841 List!63824) Unit!156942)

(assert (=> b!5816264 (= lt!2301420 (mainMatchTheorem!2944 r!7292 s!2326))))

(declare-fun b!5816265 () Bool)

(declare-fun isEmpty!35614 (List!63823) Bool)

(assert (=> b!5816265 (= e!3569743 (isEmpty!35614 (t!377178 zl!343)))))

(declare-fun b!5816266 () Bool)

(declare-fun tp!1604726 () Bool)

(declare-fun tp!1604721 () Bool)

(assert (=> b!5816266 (= e!3569738 (and tp!1604726 tp!1604721))))

(assert (= (and start!595972 res!2452718) b!5816263))

(assert (= (and b!5816263 res!2452714) b!5816255))

(assert (= (and b!5816255 res!2452715) b!5816264))

(assert (= (and b!5816264 res!2452717) b!5816265))

(assert (= (and b!5816264 (not res!2452716)) b!5816262))

(assert (= (and start!595972 ((_ is ElementMatch!15841) r!7292)) b!5816256))

(assert (= (and start!595972 ((_ is Concat!24686) r!7292)) b!5816257))

(assert (= (and start!595972 ((_ is Star!15841) r!7292)) b!5816254))

(assert (= (and start!595972 ((_ is Union!15841) r!7292)) b!5816266))

(assert (= (and start!595972 condSetEmpty!39208) setIsEmpty!39208))

(assert (= (and start!595972 (not condSetEmpty!39208)) setNonEmpty!39208))

(assert (= setNonEmpty!39208 b!5816258))

(assert (= b!5816260 b!5816261))

(assert (= (and start!595972 ((_ is Cons!63699) zl!343)) b!5816260))

(assert (= (and start!595972 ((_ is Cons!63700) s!2326)) b!5816259))

(declare-fun m!6753586 () Bool)

(assert (=> b!5816265 m!6753586))

(declare-fun m!6753588 () Bool)

(assert (=> setNonEmpty!39208 m!6753588))

(declare-fun m!6753590 () Bool)

(assert (=> b!5816263 m!6753590))

(declare-fun m!6753592 () Bool)

(assert (=> b!5816260 m!6753592))

(declare-fun m!6753594 () Bool)

(assert (=> start!595972 m!6753594))

(declare-fun m!6753596 () Bool)

(assert (=> b!5816255 m!6753596))

(declare-fun m!6753598 () Bool)

(assert (=> b!5816264 m!6753598))

(declare-fun m!6753600 () Bool)

(assert (=> b!5816264 m!6753600))

(declare-fun m!6753602 () Bool)

(assert (=> b!5816264 m!6753602))

(check-sat (not b!5816254) (not b!5816259) (not b!5816261) (not b!5816264) (not b!5816265) (not b!5816260) tp_is_empty!40935 (not b!5816255) (not b!5816257) (not b!5816266) (not setNonEmpty!39208) (not b!5816258) (not b!5816263) (not start!595972))
(check-sat)
