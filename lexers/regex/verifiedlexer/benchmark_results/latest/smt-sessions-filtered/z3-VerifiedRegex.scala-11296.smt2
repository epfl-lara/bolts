; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595968 () Bool)

(assert start!595968)

(declare-fun b!5816175 () Bool)

(declare-fun res!2452687 () Bool)

(declare-fun e!3569693 () Bool)

(assert (=> b!5816175 (=> (not res!2452687) (not e!3569693))))

(declare-datatypes ((C!31948 0))(
  ( (C!31949 (val!25676 Int)) )
))
(declare-datatypes ((Regex!15839 0))(
  ( (ElementMatch!15839 (c!1030817 C!31948)) (Concat!24684 (regOne!32190 Regex!15839) (regTwo!32190 Regex!15839)) (EmptyExpr!15839) (Star!15839 (reg!16168 Regex!15839)) (EmptyLang!15839) (Union!15839 (regOne!32191 Regex!15839) (regTwo!32191 Regex!15839)) )
))
(declare-fun r!7292 () Regex!15839)

(declare-datatypes ((List!63816 0))(
  ( (Nil!63692) (Cons!63692 (h!70140 Regex!15839) (t!377171 List!63816)) )
))
(declare-datatypes ((Context!10446 0))(
  ( (Context!10447 (exprs!5723 List!63816)) )
))
(declare-datatypes ((List!63817 0))(
  ( (Nil!63693) (Cons!63693 (h!70141 Context!10446) (t!377172 List!63817)) )
))
(declare-fun zl!343 () List!63817)

(declare-fun unfocusZipper!1581 (List!63817) Regex!15839)

(assert (=> b!5816175 (= res!2452687 (= r!7292 (unfocusZipper!1581 zl!343)))))

(declare-fun b!5816176 () Bool)

(declare-fun e!3569691 () Bool)

(declare-fun tp_is_empty!40931 () Bool)

(assert (=> b!5816176 (= e!3569691 tp_is_empty!40931)))

(declare-fun e!3569689 () Bool)

(declare-fun e!3569695 () Bool)

(declare-fun tp!1604660 () Bool)

(declare-fun b!5816177 () Bool)

(declare-fun inv!82844 (Context!10446) Bool)

(assert (=> b!5816177 (= e!3569695 (and (inv!82844 (h!70141 zl!343)) e!3569689 tp!1604660))))

(declare-fun b!5816178 () Bool)

(declare-fun e!3569692 () Bool)

(declare-fun tp!1604666 () Bool)

(assert (=> b!5816178 (= e!3569692 (and tp_is_empty!40931 tp!1604666))))

(declare-fun b!5816179 () Bool)

(declare-fun e!3569694 () Bool)

(declare-fun isEmpty!35612 (List!63817) Bool)

(assert (=> b!5816179 (= e!3569694 (isEmpty!35612 (t!377172 zl!343)))))

(declare-fun setRes!39202 () Bool)

(declare-fun tp!1604659 () Bool)

(declare-fun setNonEmpty!39202 () Bool)

(declare-fun e!3569688 () Bool)

(declare-fun setElem!39202 () Context!10446)

(assert (=> setNonEmpty!39202 (= setRes!39202 (and tp!1604659 (inv!82844 setElem!39202) e!3569688))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10446))

(declare-fun setRest!39202 () (InoxSet Context!10446))

(assert (=> setNonEmpty!39202 (= z!1189 ((_ map or) (store ((as const (Array Context!10446 Bool)) false) setElem!39202 true) setRest!39202))))

(declare-fun b!5816180 () Bool)

(declare-fun tp!1604667 () Bool)

(assert (=> b!5816180 (= e!3569691 tp!1604667)))

(declare-fun b!5816181 () Bool)

(declare-fun res!2452685 () Bool)

(assert (=> b!5816181 (=> (not res!2452685) (not e!3569693))))

(declare-fun toList!9623 ((InoxSet Context!10446)) List!63817)

(assert (=> b!5816181 (= res!2452685 (= (toList!9623 z!1189) zl!343))))

(declare-fun b!5816182 () Bool)

(declare-fun tp!1604664 () Bool)

(declare-fun tp!1604662 () Bool)

(assert (=> b!5816182 (= e!3569691 (and tp!1604664 tp!1604662))))

(declare-fun b!5816183 () Bool)

(declare-fun tp!1604663 () Bool)

(assert (=> b!5816183 (= e!3569689 tp!1604663)))

(declare-fun b!5816184 () Bool)

(declare-fun e!3569690 () Bool)

(declare-fun lt!2301414 () Bool)

(declare-fun lt!2301413 () Bool)

(assert (=> b!5816184 (= e!3569690 (= lt!2301414 lt!2301413))))

(assert (=> b!5816184 (= lt!2301413 lt!2301414)))

(declare-fun nullableZipper!1742 ((InoxSet Context!10446)) Bool)

(assert (=> b!5816184 (= lt!2301414 (nullableZipper!1742 z!1189))))

(declare-fun nullable!5861 (Regex!15839) Bool)

(assert (=> b!5816184 (= lt!2301413 (nullable!5861 r!7292))))

(declare-datatypes ((Unit!156938 0))(
  ( (Unit!156939) )
))
(declare-fun lt!2301411 () Unit!156938)

(declare-fun lemmaUnfocusPreservesNullability!24 (Regex!15839 (InoxSet Context!10446)) Unit!156938)

(assert (=> b!5816184 (= lt!2301411 (lemmaUnfocusPreservesNullability!24 r!7292 z!1189))))

(declare-fun b!5816185 () Bool)

(assert (=> b!5816185 (= e!3569693 (not e!3569690))))

(declare-fun res!2452688 () Bool)

(assert (=> b!5816185 (=> res!2452688 e!3569690)))

(assert (=> b!5816185 (= res!2452688 e!3569694)))

(declare-fun res!2452684 () Bool)

(assert (=> b!5816185 (=> (not res!2452684) (not e!3569694))))

(get-info :version)

(assert (=> b!5816185 (= res!2452684 ((_ is Cons!63693) zl!343))))

(declare-datatypes ((List!63818 0))(
  ( (Nil!63694) (Cons!63694 (h!70142 C!31948) (t!377173 List!63818)) )
))
(declare-fun s!2326 () List!63818)

(declare-fun matchR!8024 (Regex!15839 List!63818) Bool)

(declare-fun matchRSpec!2942 (Regex!15839 List!63818) Bool)

(assert (=> b!5816185 (= (matchR!8024 r!7292 s!2326) (matchRSpec!2942 r!7292 s!2326))))

(declare-fun lt!2301412 () Unit!156938)

(declare-fun mainMatchTheorem!2942 (Regex!15839 List!63818) Unit!156938)

(assert (=> b!5816185 (= lt!2301412 (mainMatchTheorem!2942 r!7292 s!2326))))

(declare-fun b!5816186 () Bool)

(declare-fun tp!1604668 () Bool)

(declare-fun tp!1604661 () Bool)

(assert (=> b!5816186 (= e!3569691 (and tp!1604668 tp!1604661))))

(declare-fun b!5816187 () Bool)

(declare-fun tp!1604665 () Bool)

(assert (=> b!5816187 (= e!3569688 tp!1604665)))

(declare-fun setIsEmpty!39202 () Bool)

(assert (=> setIsEmpty!39202 setRes!39202))

(declare-fun res!2452686 () Bool)

(assert (=> start!595968 (=> (not res!2452686) (not e!3569693))))

(declare-fun validRegex!7575 (Regex!15839) Bool)

(assert (=> start!595968 (= res!2452686 (validRegex!7575 r!7292))))

(assert (=> start!595968 e!3569693))

(assert (=> start!595968 e!3569691))

(declare-fun condSetEmpty!39202 () Bool)

(assert (=> start!595968 (= condSetEmpty!39202 (= z!1189 ((as const (Array Context!10446 Bool)) false)))))

(assert (=> start!595968 setRes!39202))

(assert (=> start!595968 e!3569695))

(assert (=> start!595968 e!3569692))

(declare-fun b!5816188 () Bool)

(declare-fun res!2452683 () Bool)

(assert (=> b!5816188 (=> res!2452683 e!3569690)))

(assert (=> b!5816188 (= res!2452683 (or (not ((_ is Cons!63693) zl!343)) (not ((_ is Nil!63694) s!2326))))))

(assert (= (and start!595968 res!2452686) b!5816181))

(assert (= (and b!5816181 res!2452685) b!5816175))

(assert (= (and b!5816175 res!2452687) b!5816185))

(assert (= (and b!5816185 res!2452684) b!5816179))

(assert (= (and b!5816185 (not res!2452688)) b!5816188))

(assert (= (and b!5816188 (not res!2452683)) b!5816184))

(assert (= (and start!595968 ((_ is ElementMatch!15839) r!7292)) b!5816176))

(assert (= (and start!595968 ((_ is Concat!24684) r!7292)) b!5816186))

(assert (= (and start!595968 ((_ is Star!15839) r!7292)) b!5816180))

(assert (= (and start!595968 ((_ is Union!15839) r!7292)) b!5816182))

(assert (= (and start!595968 condSetEmpty!39202) setIsEmpty!39202))

(assert (= (and start!595968 (not condSetEmpty!39202)) setNonEmpty!39202))

(assert (= setNonEmpty!39202 b!5816187))

(assert (= b!5816177 b!5816183))

(assert (= (and start!595968 ((_ is Cons!63693) zl!343)) b!5816177))

(assert (= (and start!595968 ((_ is Cons!63694) s!2326)) b!5816178))

(declare-fun m!6753544 () Bool)

(assert (=> b!5816175 m!6753544))

(declare-fun m!6753546 () Bool)

(assert (=> b!5816185 m!6753546))

(declare-fun m!6753548 () Bool)

(assert (=> b!5816185 m!6753548))

(declare-fun m!6753550 () Bool)

(assert (=> b!5816185 m!6753550))

(declare-fun m!6753552 () Bool)

(assert (=> setNonEmpty!39202 m!6753552))

(declare-fun m!6753554 () Bool)

(assert (=> b!5816177 m!6753554))

(declare-fun m!6753556 () Bool)

(assert (=> b!5816184 m!6753556))

(declare-fun m!6753558 () Bool)

(assert (=> b!5816184 m!6753558))

(declare-fun m!6753560 () Bool)

(assert (=> b!5816184 m!6753560))

(declare-fun m!6753562 () Bool)

(assert (=> start!595968 m!6753562))

(declare-fun m!6753564 () Bool)

(assert (=> b!5816179 m!6753564))

(declare-fun m!6753566 () Bool)

(assert (=> b!5816181 m!6753566))

(check-sat (not b!5816178) tp_is_empty!40931 (not b!5816185) (not b!5816179) (not b!5816187) (not b!5816186) (not b!5816182) (not b!5816183) (not b!5816177) (not b!5816175) (not b!5816184) (not setNonEmpty!39202) (not b!5816181) (not start!595968) (not b!5816180))
(check-sat)
