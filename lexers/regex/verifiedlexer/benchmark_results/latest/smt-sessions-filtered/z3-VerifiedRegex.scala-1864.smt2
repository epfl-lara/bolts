; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92230 () Bool)

(assert start!92230)

(declare-fun bs!256461 () Bool)

(declare-fun b!1084874 () Bool)

(declare-fun b!1084875 () Bool)

(assert (= bs!256461 (and b!1084874 b!1084875)))

(declare-fun lambda!39643 () Int)

(declare-fun lambda!39642 () Int)

(assert (=> bs!256461 (not (= lambda!39643 lambda!39642))))

(assert (=> b!1084874 true))

(declare-fun b!1084863 () Bool)

(declare-fun e!686044 () Bool)

(declare-fun e!686047 () Bool)

(assert (=> b!1084863 (= e!686044 e!686047)))

(declare-fun res!482632 () Bool)

(assert (=> b!1084863 (=> res!482632 e!686047)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6544 0))(
  ( (C!6545 (val!3520 Int)) )
))
(declare-datatypes ((Regex!2987 0))(
  ( (ElementMatch!2987 (c!183266 C!6544)) (Concat!4820 (regOne!6486 Regex!2987) (regTwo!6486 Regex!2987)) (EmptyExpr!2987) (Star!2987 (reg!3316 Regex!2987)) (EmptyLang!2987) (Union!2987 (regOne!6487 Regex!2987) (regTwo!6487 Regex!2987)) )
))
(declare-datatypes ((List!10264 0))(
  ( (Nil!10248) (Cons!10248 (h!15649 Regex!2987) (t!101310 List!10264)) )
))
(declare-datatypes ((Context!934 0))(
  ( (Context!935 (exprs!967 List!10264)) )
))
(declare-fun z!1122 () (InoxSet Context!934))

(declare-fun lt!362865 () Context!934)

(declare-fun filter!157 ((InoxSet Context!934) Int) (InoxSet Context!934))

(assert (=> b!1084863 (= res!482632 (not (select (filter!157 z!1122 lambda!39642) lt!362865)))))

(declare-fun getWitness!52 ((InoxSet Context!934) Int) Context!934)

(assert (=> b!1084863 (= lt!362865 (getWitness!52 (filter!157 z!1122 lambda!39642) lambda!39643))))

(declare-fun b!1084864 () Bool)

(declare-fun e!686043 () Bool)

(declare-datatypes ((List!10265 0))(
  ( (Nil!10249) (Cons!10249 (h!15650 Context!934) (t!101311 List!10265)) )
))
(declare-fun lt!362863 () List!10265)

(declare-fun exists!115 (List!10265 Int) Bool)

(assert (=> b!1084864 (= e!686043 (exists!115 lt!362863 lambda!39643))))

(declare-fun b!1084865 () Bool)

(declare-fun e!686042 () Bool)

(assert (=> b!1084865 (= e!686042 e!686043)))

(declare-fun res!482634 () Bool)

(assert (=> b!1084865 (=> res!482634 e!686043)))

(declare-fun exists!116 ((InoxSet Context!934) Int) Bool)

(assert (=> b!1084865 (= res!482634 (not (exists!116 z!1122 lambda!39643)))))

(assert (=> b!1084865 (exists!116 z!1122 lambda!39643)))

(declare-datatypes ((Unit!15649 0))(
  ( (Unit!15650) )
))
(declare-fun lt!362867 () Unit!15649)

(declare-fun lemmaContainsThenExists!19 ((InoxSet Context!934) Context!934 Int) Unit!15649)

(assert (=> b!1084865 (= lt!362867 (lemmaContainsThenExists!19 z!1122 lt!362865 lambda!39643))))

(declare-fun b!1084866 () Bool)

(declare-fun res!482637 () Bool)

(assert (=> b!1084866 (=> res!482637 e!686043)))

(assert (=> b!1084866 (= res!482637 (not (exists!115 lt!362863 lambda!39643)))))

(declare-fun b!1084867 () Bool)

(declare-fun e!686048 () Bool)

(declare-fun tp_is_empty!5605 () Bool)

(declare-fun tp!324589 () Bool)

(assert (=> b!1084867 (= e!686048 (and tp_is_empty!5605 tp!324589))))

(declare-fun b!1084868 () Bool)

(declare-fun e!686041 () Bool)

(declare-fun tp!324587 () Bool)

(declare-fun zl!316 () List!10265)

(declare-fun e!686049 () Bool)

(declare-fun inv!13180 (Context!934) Bool)

(assert (=> b!1084868 (= e!686041 (and (inv!13180 (h!15650 zl!316)) e!686049 tp!324587))))

(declare-fun b!1084869 () Bool)

(declare-fun res!482635 () Bool)

(declare-fun e!686046 () Bool)

(assert (=> b!1084869 (=> (not res!482635) (not e!686046))))

(declare-datatypes ((List!10266 0))(
  ( (Nil!10250) (Cons!10250 (h!15651 C!6544) (t!101312 List!10266)) )
))
(declare-fun s!2287 () List!10266)

(declare-fun matchZipper!35 ((InoxSet Context!934) List!10266) Bool)

(assert (=> b!1084869 (= res!482635 (not (matchZipper!35 z!1122 s!2287)))))

(declare-fun b!1084870 () Bool)

(declare-fun e!686045 () Bool)

(declare-fun tp!324588 () Bool)

(assert (=> b!1084870 (= e!686045 tp!324588)))

(declare-fun b!1084871 () Bool)

(declare-fun tp!324590 () Bool)

(assert (=> b!1084871 (= e!686049 tp!324590)))

(declare-fun res!482638 () Bool)

(assert (=> start!92230 (=> (not res!482638) (not e!686046))))

(assert (=> start!92230 (= res!482638 (= lt!362863 zl!316))))

(declare-fun toList!605 ((InoxSet Context!934)) List!10265)

(assert (=> start!92230 (= lt!362863 (toList!605 z!1122))))

(assert (=> start!92230 e!686046))

(declare-fun condSetEmpty!7476 () Bool)

(assert (=> start!92230 (= condSetEmpty!7476 (= z!1122 ((as const (Array Context!934 Bool)) false)))))

(declare-fun setRes!7476 () Bool)

(assert (=> start!92230 setRes!7476))

(assert (=> start!92230 e!686041))

(assert (=> start!92230 e!686048))

(declare-fun b!1084872 () Bool)

(assert (=> b!1084872 (= e!686047 e!686042)))

(declare-fun res!482633 () Bool)

(assert (=> b!1084872 (=> res!482633 e!686042)))

(assert (=> b!1084872 (= res!482633 (not (select z!1122 lt!362865)))))

(declare-fun lt!362862 () Unit!15649)

(declare-fun filterPost!8 ((InoxSet Context!934) Int Context!934) Unit!15649)

(assert (=> b!1084872 (= lt!362862 (filterPost!8 z!1122 lambda!39642 lt!362865))))

(declare-fun setIsEmpty!7476 () Bool)

(assert (=> setIsEmpty!7476 setRes!7476))

(declare-fun b!1084873 () Bool)

(declare-fun res!482631 () Bool)

(assert (=> b!1084873 (=> res!482631 e!686047)))

(assert (=> b!1084873 (= res!482631 (not (matchZipper!35 (store ((as const (Array Context!934 Bool)) false) lt!362865 true) s!2287)))))

(assert (=> b!1084874 (= e!686046 (not e!686044))))

(declare-fun res!482636 () Bool)

(assert (=> b!1084874 (=> res!482636 e!686044)))

(assert (=> b!1084874 (= res!482636 (not (exists!116 (filter!157 z!1122 lambda!39642) lambda!39643)))))

(declare-fun lt!362866 () List!10265)

(assert (=> b!1084874 (exists!115 lt!362866 lambda!39643)))

(declare-fun lt!362864 () Unit!15649)

(declare-fun lemmaZipperMatchesExistsMatchingContext!14 (List!10265 List!10266) Unit!15649)

(assert (=> b!1084874 (= lt!362864 (lemmaZipperMatchesExistsMatchingContext!14 lt!362866 s!2287))))

(assert (=> b!1084874 (= lt!362866 (toList!605 (filter!157 z!1122 lambda!39642)))))

(declare-fun setElem!7476 () Context!934)

(declare-fun setNonEmpty!7476 () Bool)

(declare-fun tp!324586 () Bool)

(assert (=> setNonEmpty!7476 (= setRes!7476 (and tp!324586 (inv!13180 setElem!7476) e!686045))))

(declare-fun setRest!7476 () (InoxSet Context!934))

(assert (=> setNonEmpty!7476 (= z!1122 ((_ map or) (store ((as const (Array Context!934 Bool)) false) setElem!7476 true) setRest!7476))))

(declare-fun res!482639 () Bool)

(assert (=> b!1084875 (=> (not res!482639) (not e!686046))))

(assert (=> b!1084875 (= res!482639 (matchZipper!35 (filter!157 z!1122 lambda!39642) s!2287))))

(assert (= (and start!92230 res!482638) b!1084869))

(assert (= (and b!1084869 res!482635) b!1084875))

(assert (= (and b!1084875 res!482639) b!1084874))

(assert (= (and b!1084874 (not res!482636)) b!1084863))

(assert (= (and b!1084863 (not res!482632)) b!1084873))

(assert (= (and b!1084873 (not res!482631)) b!1084872))

(assert (= (and b!1084872 (not res!482633)) b!1084865))

(assert (= (and b!1084865 (not res!482634)) b!1084866))

(assert (= (and b!1084866 (not res!482637)) b!1084864))

(assert (= (and start!92230 condSetEmpty!7476) setIsEmpty!7476))

(assert (= (and start!92230 (not condSetEmpty!7476)) setNonEmpty!7476))

(assert (= setNonEmpty!7476 b!1084870))

(assert (= b!1084868 b!1084871))

(get-info :version)

(assert (= (and start!92230 ((_ is Cons!10249) zl!316)) b!1084868))

(assert (= (and start!92230 ((_ is Cons!10250) s!2287)) b!1084867))

(declare-fun m!1234471 () Bool)

(assert (=> b!1084873 m!1234471))

(assert (=> b!1084873 m!1234471))

(declare-fun m!1234473 () Bool)

(assert (=> b!1084873 m!1234473))

(declare-fun m!1234475 () Bool)

(assert (=> start!92230 m!1234475))

(declare-fun m!1234477 () Bool)

(assert (=> b!1084865 m!1234477))

(assert (=> b!1084865 m!1234477))

(declare-fun m!1234479 () Bool)

(assert (=> b!1084865 m!1234479))

(declare-fun m!1234481 () Bool)

(assert (=> b!1084866 m!1234481))

(declare-fun m!1234483 () Bool)

(assert (=> b!1084863 m!1234483))

(declare-fun m!1234485 () Bool)

(assert (=> b!1084863 m!1234485))

(assert (=> b!1084863 m!1234483))

(assert (=> b!1084863 m!1234483))

(declare-fun m!1234487 () Bool)

(assert (=> b!1084863 m!1234487))

(declare-fun m!1234489 () Bool)

(assert (=> b!1084872 m!1234489))

(declare-fun m!1234491 () Bool)

(assert (=> b!1084872 m!1234491))

(declare-fun m!1234493 () Bool)

(assert (=> b!1084868 m!1234493))

(declare-fun m!1234495 () Bool)

(assert (=> setNonEmpty!7476 m!1234495))

(declare-fun m!1234497 () Bool)

(assert (=> b!1084874 m!1234497))

(assert (=> b!1084874 m!1234483))

(declare-fun m!1234499 () Bool)

(assert (=> b!1084874 m!1234499))

(declare-fun m!1234501 () Bool)

(assert (=> b!1084874 m!1234501))

(assert (=> b!1084874 m!1234483))

(assert (=> b!1084874 m!1234483))

(assert (=> b!1084874 m!1234483))

(declare-fun m!1234503 () Bool)

(assert (=> b!1084874 m!1234503))

(assert (=> b!1084875 m!1234483))

(assert (=> b!1084875 m!1234483))

(declare-fun m!1234505 () Bool)

(assert (=> b!1084875 m!1234505))

(assert (=> b!1084864 m!1234481))

(declare-fun m!1234507 () Bool)

(assert (=> b!1084869 m!1234507))

(check-sat (not setNonEmpty!7476) (not b!1084874) tp_is_empty!5605 (not b!1084865) (not b!1084870) (not b!1084871) (not b!1084873) (not b!1084864) (not b!1084875) (not b!1084866) (not b!1084867) (not b!1084868) (not b!1084863) (not b!1084869) (not b!1084872) (not start!92230))
(check-sat)
