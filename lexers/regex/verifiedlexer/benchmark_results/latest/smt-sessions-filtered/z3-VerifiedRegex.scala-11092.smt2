; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573786 () Bool)

(assert start!573786)

(declare-fun b!5488756 () Bool)

(assert (=> b!5488756 true))

(declare-fun b!5488751 () Bool)

(declare-fun e!3396313 () Bool)

(declare-fun tp!1508761 () Bool)

(assert (=> b!5488751 (= e!3396313 tp!1508761)))

(declare-fun b!5488752 () Bool)

(declare-fun e!3396314 () Bool)

(declare-fun e!3396316 () Bool)

(assert (=> b!5488752 (= e!3396314 (not e!3396316))))

(declare-fun res!2340874 () Bool)

(assert (=> b!5488752 (=> res!2340874 e!3396316)))

(declare-fun e!3396309 () Bool)

(assert (=> b!5488752 (= res!2340874 e!3396309)))

(declare-fun res!2340880 () Bool)

(assert (=> b!5488752 (=> (not res!2340880) (not e!3396309))))

(declare-datatypes ((C!31132 0))(
  ( (C!31133 (val!25268 Int)) )
))
(declare-datatypes ((Regex!15431 0))(
  ( (ElementMatch!15431 (c!958599 C!31132)) (Concat!24276 (regOne!31374 Regex!15431) (regTwo!31374 Regex!15431)) (EmptyExpr!15431) (Star!15431 (reg!15760 Regex!15431)) (EmptyLang!15431) (Union!15431 (regOne!31375 Regex!15431) (regTwo!31375 Regex!15431)) )
))
(declare-datatypes ((List!62592 0))(
  ( (Nil!62468) (Cons!62468 (h!68916 Regex!15431) (t!375823 List!62592)) )
))
(declare-datatypes ((Context!9630 0))(
  ( (Context!9631 (exprs!5315 List!62592)) )
))
(declare-datatypes ((List!62593 0))(
  ( (Nil!62469) (Cons!62469 (h!68917 Context!9630) (t!375824 List!62593)) )
))
(declare-fun zl!343 () List!62593)

(get-info :version)

(assert (=> b!5488752 (= res!2340880 ((_ is Cons!62469) zl!343))))

(declare-fun lt!2241697 () Bool)

(declare-fun r!7292 () Regex!15431)

(declare-datatypes ((List!62594 0))(
  ( (Nil!62470) (Cons!62470 (h!68918 C!31132) (t!375825 List!62594)) )
))
(declare-fun s!2326 () List!62594)

(declare-fun matchRSpec!2534 (Regex!15431 List!62594) Bool)

(assert (=> b!5488752 (= lt!2241697 (matchRSpec!2534 r!7292 s!2326))))

(declare-fun matchR!7616 (Regex!15431 List!62594) Bool)

(assert (=> b!5488752 (= lt!2241697 (matchR!7616 r!7292 s!2326))))

(declare-datatypes ((Unit!155318 0))(
  ( (Unit!155319) )
))
(declare-fun lt!2241699 () Unit!155318)

(declare-fun mainMatchTheorem!2534 (Regex!15431 List!62594) Unit!155318)

(assert (=> b!5488752 (= lt!2241699 (mainMatchTheorem!2534 r!7292 s!2326))))

(declare-fun b!5488753 () Bool)

(declare-fun res!2340879 () Bool)

(assert (=> b!5488753 (=> (not res!2340879) (not e!3396314))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9630))

(declare-fun toList!9215 ((InoxSet Context!9630)) List!62593)

(assert (=> b!5488753 (= res!2340879 (= (toList!9215 z!1189) zl!343))))

(declare-fun b!5488754 () Bool)

(declare-fun e!3396311 () Bool)

(declare-fun tp!1508763 () Bool)

(assert (=> b!5488754 (= e!3396311 tp!1508763)))

(declare-fun b!5488755 () Bool)

(declare-fun res!2340876 () Bool)

(assert (=> b!5488755 (=> res!2340876 e!3396316)))

(declare-fun isEmpty!34321 (List!62593) Bool)

(assert (=> b!5488755 (= res!2340876 (isEmpty!34321 (t!375824 zl!343)))))

(declare-fun e!3396310 () Bool)

(assert (=> b!5488756 (= e!3396316 e!3396310)))

(declare-fun res!2340877 () Bool)

(assert (=> b!5488756 (=> res!2340877 e!3396310)))

(assert (=> b!5488756 (= res!2340877 lt!2241697)))

(declare-fun lt!2241698 () List!62592)

(declare-fun lambda!293689 () Int)

(declare-fun exists!2087 (List!62592 Int) Bool)

(assert (=> b!5488756 (= lt!2241697 (exists!2087 lt!2241698 lambda!293689))))

(declare-fun lt!2241695 () Unit!155318)

(declare-fun matchRGenUnionSpec!264 (Regex!15431 List!62592 List!62594) Unit!155318)

(assert (=> b!5488756 (= lt!2241695 (matchRGenUnionSpec!264 r!7292 lt!2241698 s!2326))))

(declare-fun unfocusZipperList!863 (List!62593) List!62592)

(assert (=> b!5488756 (= lt!2241698 (unfocusZipperList!863 zl!343))))

(declare-fun b!5488757 () Bool)

(assert (=> b!5488757 (= e!3396310 true)))

(declare-fun lt!2241696 () Bool)

(declare-fun matchZipper!1615 ((InoxSet Context!9630) List!62594) Bool)

(declare-fun content!11228 (List!62593) (InoxSet Context!9630))

(assert (=> b!5488757 (= lt!2241696 (matchZipper!1615 (content!11228 zl!343) s!2326))))

(declare-fun b!5488758 () Bool)

(declare-fun e!3396312 () Bool)

(declare-fun tp!1508769 () Bool)

(assert (=> b!5488758 (= e!3396312 tp!1508769)))

(declare-fun b!5488759 () Bool)

(assert (=> b!5488759 (= e!3396309 (isEmpty!34321 (t!375824 zl!343)))))

(declare-fun b!5488760 () Bool)

(declare-fun tp!1508762 () Bool)

(declare-fun tp!1508767 () Bool)

(assert (=> b!5488760 (= e!3396311 (and tp!1508762 tp!1508767))))

(declare-fun b!5488761 () Bool)

(declare-fun tp!1508768 () Bool)

(declare-fun tp!1508765 () Bool)

(assert (=> b!5488761 (= e!3396311 (and tp!1508768 tp!1508765))))

(declare-fun b!5488762 () Bool)

(declare-fun e!3396308 () Bool)

(declare-fun tp_is_empty!40115 () Bool)

(declare-fun tp!1508766 () Bool)

(assert (=> b!5488762 (= e!3396308 (and tp_is_empty!40115 tp!1508766))))

(declare-fun tp!1508760 () Bool)

(declare-fun setElem!36261 () Context!9630)

(declare-fun setNonEmpty!36261 () Bool)

(declare-fun setRes!36261 () Bool)

(declare-fun inv!81824 (Context!9630) Bool)

(assert (=> setNonEmpty!36261 (= setRes!36261 (and tp!1508760 (inv!81824 setElem!36261) e!3396312))))

(declare-fun setRest!36261 () (InoxSet Context!9630))

(assert (=> setNonEmpty!36261 (= z!1189 ((_ map or) (store ((as const (Array Context!9630 Bool)) false) setElem!36261 true) setRest!36261))))

(declare-fun b!5488763 () Bool)

(declare-fun res!2340873 () Bool)

(assert (=> b!5488763 (=> res!2340873 e!3396316)))

(assert (=> b!5488763 (= res!2340873 (or (not ((_ is Cons!62469) zl!343)) ((_ is Nil!62470) s!2326) (not (= zl!343 (Cons!62469 (h!68917 zl!343) (t!375824 zl!343))))))))

(declare-fun b!5488764 () Bool)

(declare-fun tp!1508764 () Bool)

(declare-fun e!3396315 () Bool)

(assert (=> b!5488764 (= e!3396315 (and (inv!81824 (h!68917 zl!343)) e!3396313 tp!1508764))))

(declare-fun res!2340872 () Bool)

(assert (=> start!573786 (=> (not res!2340872) (not e!3396314))))

(declare-fun validRegex!7167 (Regex!15431) Bool)

(assert (=> start!573786 (= res!2340872 (validRegex!7167 r!7292))))

(assert (=> start!573786 e!3396314))

(assert (=> start!573786 e!3396311))

(declare-fun condSetEmpty!36261 () Bool)

(assert (=> start!573786 (= condSetEmpty!36261 (= z!1189 ((as const (Array Context!9630 Bool)) false)))))

(assert (=> start!573786 setRes!36261))

(assert (=> start!573786 e!3396315))

(assert (=> start!573786 e!3396308))

(declare-fun setIsEmpty!36261 () Bool)

(assert (=> setIsEmpty!36261 setRes!36261))

(declare-fun b!5488765 () Bool)

(assert (=> b!5488765 (= e!3396311 tp_is_empty!40115)))

(declare-fun b!5488766 () Bool)

(declare-fun res!2340871 () Bool)

(assert (=> b!5488766 (=> res!2340871 e!3396310)))

(assert (=> b!5488766 (= res!2340871 (not (matchZipper!1615 z!1189 s!2326)))))

(declare-fun b!5488767 () Bool)

(declare-fun res!2340875 () Bool)

(assert (=> b!5488767 (=> res!2340875 e!3396310)))

(assert (=> b!5488767 (= res!2340875 (exists!2087 lt!2241698 lambda!293689))))

(declare-fun b!5488768 () Bool)

(declare-fun res!2340878 () Bool)

(assert (=> b!5488768 (=> (not res!2340878) (not e!3396314))))

(declare-fun unfocusZipper!1173 (List!62593) Regex!15431)

(assert (=> b!5488768 (= res!2340878 (= r!7292 (unfocusZipper!1173 zl!343)))))

(assert (= (and start!573786 res!2340872) b!5488753))

(assert (= (and b!5488753 res!2340879) b!5488768))

(assert (= (and b!5488768 res!2340878) b!5488752))

(assert (= (and b!5488752 res!2340880) b!5488759))

(assert (= (and b!5488752 (not res!2340874)) b!5488763))

(assert (= (and b!5488763 (not res!2340873)) b!5488755))

(assert (= (and b!5488755 (not res!2340876)) b!5488756))

(assert (= (and b!5488756 (not res!2340877)) b!5488767))

(assert (= (and b!5488767 (not res!2340875)) b!5488766))

(assert (= (and b!5488766 (not res!2340871)) b!5488757))

(assert (= (and start!573786 ((_ is ElementMatch!15431) r!7292)) b!5488765))

(assert (= (and start!573786 ((_ is Concat!24276) r!7292)) b!5488761))

(assert (= (and start!573786 ((_ is Star!15431) r!7292)) b!5488754))

(assert (= (and start!573786 ((_ is Union!15431) r!7292)) b!5488760))

(assert (= (and start!573786 condSetEmpty!36261) setIsEmpty!36261))

(assert (= (and start!573786 (not condSetEmpty!36261)) setNonEmpty!36261))

(assert (= setNonEmpty!36261 b!5488758))

(assert (= b!5488764 b!5488751))

(assert (= (and start!573786 ((_ is Cons!62469) zl!343)) b!5488764))

(assert (= (and start!573786 ((_ is Cons!62470) s!2326)) b!5488762))

(declare-fun m!6502506 () Bool)

(assert (=> setNonEmpty!36261 m!6502506))

(declare-fun m!6502508 () Bool)

(assert (=> b!5488768 m!6502508))

(declare-fun m!6502510 () Bool)

(assert (=> b!5488764 m!6502510))

(declare-fun m!6502512 () Bool)

(assert (=> b!5488757 m!6502512))

(assert (=> b!5488757 m!6502512))

(declare-fun m!6502514 () Bool)

(assert (=> b!5488757 m!6502514))

(declare-fun m!6502516 () Bool)

(assert (=> b!5488759 m!6502516))

(declare-fun m!6502518 () Bool)

(assert (=> start!573786 m!6502518))

(declare-fun m!6502520 () Bool)

(assert (=> b!5488767 m!6502520))

(assert (=> b!5488755 m!6502516))

(assert (=> b!5488756 m!6502520))

(declare-fun m!6502522 () Bool)

(assert (=> b!5488756 m!6502522))

(declare-fun m!6502524 () Bool)

(assert (=> b!5488756 m!6502524))

(declare-fun m!6502526 () Bool)

(assert (=> b!5488753 m!6502526))

(declare-fun m!6502528 () Bool)

(assert (=> b!5488766 m!6502528))

(declare-fun m!6502530 () Bool)

(assert (=> b!5488752 m!6502530))

(declare-fun m!6502532 () Bool)

(assert (=> b!5488752 m!6502532))

(declare-fun m!6502534 () Bool)

(assert (=> b!5488752 m!6502534))

(check-sat (not b!5488752) (not b!5488755) (not b!5488753) (not b!5488756) (not b!5488767) (not start!573786) (not b!5488759) (not b!5488766) (not b!5488751) (not b!5488762) (not b!5488760) (not b!5488764) (not setNonEmpty!36261) tp_is_empty!40115 (not b!5488757) (not b!5488761) (not b!5488768) (not b!5488758) (not b!5488754))
(check-sat)
