; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699920 () Bool)

(assert start!699920)

(declare-fun b!7193864 () Bool)

(assert (=> b!7193864 true))

(declare-fun b!7193863 () Bool)

(declare-fun e!4319951 () Bool)

(assert (=> b!7193863 (= e!4319951 (not true))))

(declare-fun lt!2571447 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37012 0))(
  ( (C!37013 (val!28454 Int)) )
))
(declare-datatypes ((Regex!18369 0))(
  ( (ElementMatch!18369 (c!1338973 C!37012)) (Concat!27214 (regOne!37250 Regex!18369) (regTwo!37250 Regex!18369)) (EmptyExpr!18369) (Star!18369 (reg!18698 Regex!18369)) (EmptyLang!18369) (Union!18369 (regOne!37251 Regex!18369) (regTwo!37251 Regex!18369)) )
))
(declare-datatypes ((List!69835 0))(
  ( (Nil!69711) (Cons!69711 (h!76159 Regex!18369) (t!383860 List!69835)) )
))
(declare-datatypes ((Context!14642 0))(
  ( (Context!14643 (exprs!7821 List!69835)) )
))
(declare-fun z!3530 () (InoxSet Context!14642))

(declare-datatypes ((List!69836 0))(
  ( (Nil!69712) (Cons!69712 (h!76160 C!37012) (t!383861 List!69836)) )
))
(declare-fun s!7967 () List!69836)

(declare-fun matchZipper!3367 ((InoxSet Context!14642) List!69836) Bool)

(assert (=> b!7193863 (= lt!2571447 (matchZipper!3367 z!3530 s!7967))))

(declare-fun lt!2571448 () (InoxSet Context!14642))

(declare-fun lt!2571443 () List!69836)

(assert (=> b!7193863 (not (matchZipper!3367 lt!2571448 lt!2571443))))

(declare-datatypes ((Unit!163391 0))(
  ( (Unit!163392) )
))
(declare-fun lt!2571445 () Unit!163391)

(declare-fun lemmaEmptyZipperMatchesNothing!126 ((InoxSet Context!14642) List!69836) Unit!163391)

(assert (=> b!7193863 (= lt!2571445 (lemmaEmptyZipperMatchesNothing!126 lt!2571448 lt!2571443))))

(declare-fun tail!14086 (List!69836) List!69836)

(assert (=> b!7193863 (= lt!2571443 (tail!14086 s!7967))))

(declare-fun lt!2571442 () Unit!163391)

(declare-fun e!4319948 () Unit!163391)

(assert (=> b!7193863 (= lt!2571442 e!4319948)))

(declare-fun c!1338972 () Bool)

(assert (=> b!7193863 (= c!1338972 (not (= lt!2571448 ((as const (Array Context!14642 Bool)) false))))))

(declare-fun Unit!163393 () Unit!163391)

(assert (=> b!7193864 (= e!4319948 Unit!163393)))

(declare-fun empty!3023 () Context!14642)

(declare-fun e!4319947 () Bool)

(declare-fun inv!88944 (Context!14642) Bool)

(assert (=> b!7193864 (and (inv!88944 empty!3023) e!4319947)))

(assert (=> b!7193864 true))

(declare-fun res!2928703 () Bool)

(declare-fun lambda!437983 () Int)

(declare-fun flatMapPost!76 ((InoxSet Context!14642) Int Context!14642) Context!14642)

(declare-datatypes ((List!69837 0))(
  ( (Nil!69713) (Cons!69713 (h!76161 Context!14642) (t!383862 List!69837)) )
))
(declare-fun head!14700 (List!69837) Context!14642)

(declare-fun toList!11312 ((InoxSet Context!14642)) List!69837)

(assert (=> b!7193864 (= res!2928703 (= (flatMapPost!76 z!3530 lambda!437983 (head!14700 (toList!11312 lt!2571448))) empty!3023))))

(declare-fun e!4319945 () Bool)

(assert (=> b!7193864 (=> (not res!2928703) (not e!4319945))))

(assert (=> b!7193864 e!4319945))

(declare-fun res!2928707 () Bool)

(declare-fun e!4319950 () Bool)

(assert (=> start!699920 (=> (not res!2928707) (not e!4319950))))

(declare-fun unfocusZipper!2629 (List!69837) Regex!18369)

(assert (=> start!699920 (= res!2928707 (= (unfocusZipper!2629 (toList!11312 z!3530)) EmptyExpr!18369))))

(assert (=> start!699920 e!4319950))

(declare-fun condSetEmpty!53295 () Bool)

(assert (=> start!699920 (= condSetEmpty!53295 (= z!3530 ((as const (Array Context!14642 Bool)) false)))))

(declare-fun setRes!53295 () Bool)

(assert (=> start!699920 setRes!53295))

(declare-fun e!4319944 () Bool)

(assert (=> start!699920 e!4319944))

(declare-fun b!7193865 () Bool)

(declare-fun res!2928706 () Bool)

(assert (=> b!7193865 (=> (not res!2928706) (not e!4319950))))

(declare-fun focus!444 (Regex!18369) (InoxSet Context!14642))

(assert (=> b!7193865 (= res!2928706 (not (= z!3530 (focus!444 EmptyExpr!18369))))))

(declare-fun setIsEmpty!53295 () Bool)

(assert (=> setIsEmpty!53295 setRes!53295))

(declare-fun b!7193866 () Bool)

(declare-fun res!2928705 () Bool)

(declare-fun e!4319949 () Bool)

(assert (=> b!7193866 (=> (not res!2928705) (not e!4319949))))

(declare-fun isEmpty!40236 (List!69836) Bool)

(assert (=> b!7193866 (= res!2928705 (not (isEmpty!40236 s!7967)))))

(declare-fun b!7193867 () Bool)

(assert (=> b!7193867 (= e!4319945 false)))

(declare-fun setElem!53295 () Context!14642)

(declare-fun tp!1999671 () Bool)

(declare-fun e!4319946 () Bool)

(declare-fun setNonEmpty!53295 () Bool)

(assert (=> setNonEmpty!53295 (= setRes!53295 (and tp!1999671 (inv!88944 setElem!53295) e!4319946))))

(declare-fun setRest!53295 () (InoxSet Context!14642))

(assert (=> setNonEmpty!53295 (= z!3530 ((_ map or) (store ((as const (Array Context!14642 Bool)) false) setElem!53295 true) setRest!53295))))

(declare-fun b!7193868 () Bool)

(declare-fun Unit!163394 () Unit!163391)

(assert (=> b!7193868 (= e!4319948 Unit!163394)))

(declare-fun b!7193869 () Bool)

(declare-fun tp!1999668 () Bool)

(assert (=> b!7193869 (= e!4319947 tp!1999668)))

(declare-fun b!7193870 () Bool)

(declare-fun tp!1999669 () Bool)

(assert (=> b!7193870 (= e!4319946 tp!1999669)))

(declare-fun b!7193871 () Bool)

(assert (=> b!7193871 (= e!4319949 e!4319951)))

(declare-fun res!2928704 () Bool)

(assert (=> b!7193871 (=> (not res!2928704) (not e!4319951))))

(declare-fun lt!2571446 () Context!14642)

(declare-fun lt!2571444 () C!37012)

(declare-fun derivationStepZipperUp!2339 (Context!14642 C!37012) (InoxSet Context!14642))

(assert (=> b!7193871 (= res!2928704 (= (derivationStepZipperUp!2339 lt!2571446 lt!2571444) ((as const (Array Context!14642 Bool)) false)))))

(declare-fun derivationStepZipper!3234 ((InoxSet Context!14642) C!37012) (InoxSet Context!14642))

(assert (=> b!7193871 (= lt!2571448 (derivationStepZipper!3234 z!3530 lt!2571444))))

(declare-fun head!14701 (List!69836) C!37012)

(assert (=> b!7193871 (= lt!2571444 (head!14701 s!7967))))

(declare-fun b!7193872 () Bool)

(assert (=> b!7193872 (= e!4319950 e!4319949)))

(declare-fun res!2928708 () Bool)

(assert (=> b!7193872 (=> (not res!2928708) (not e!4319949))))

(assert (=> b!7193872 (= res!2928708 (= z!3530 (store ((as const (Array Context!14642 Bool)) false) lt!2571446 true)))))

(assert (=> b!7193872 (= lt!2571446 (Context!14643 Nil!69711))))

(declare-fun b!7193873 () Bool)

(declare-fun tp_is_empty!46299 () Bool)

(declare-fun tp!1999670 () Bool)

(assert (=> b!7193873 (= e!4319944 (and tp_is_empty!46299 tp!1999670))))

(assert (= (and start!699920 res!2928707) b!7193865))

(assert (= (and b!7193865 res!2928706) b!7193872))

(assert (= (and b!7193872 res!2928708) b!7193866))

(assert (= (and b!7193866 res!2928705) b!7193871))

(assert (= (and b!7193871 res!2928704) b!7193863))

(assert (= (and b!7193863 c!1338972) b!7193864))

(assert (= (and b!7193863 (not c!1338972)) b!7193868))

(assert (= b!7193864 b!7193869))

(assert (= (and b!7193864 res!2928703) b!7193867))

(assert (= (and start!699920 condSetEmpty!53295) setIsEmpty!53295))

(assert (= (and start!699920 (not condSetEmpty!53295)) setNonEmpty!53295))

(assert (= setNonEmpty!53295 b!7193870))

(get-info :version)

(assert (= (and start!699920 ((_ is Cons!69712) s!7967)) b!7193873))

(declare-fun m!7888502 () Bool)

(assert (=> b!7193863 m!7888502))

(declare-fun m!7888504 () Bool)

(assert (=> b!7193863 m!7888504))

(declare-fun m!7888506 () Bool)

(assert (=> b!7193863 m!7888506))

(declare-fun m!7888508 () Bool)

(assert (=> b!7193863 m!7888508))

(declare-fun m!7888510 () Bool)

(assert (=> b!7193871 m!7888510))

(declare-fun m!7888512 () Bool)

(assert (=> b!7193871 m!7888512))

(declare-fun m!7888514 () Bool)

(assert (=> b!7193871 m!7888514))

(declare-fun m!7888516 () Bool)

(assert (=> start!699920 m!7888516))

(assert (=> start!699920 m!7888516))

(declare-fun m!7888518 () Bool)

(assert (=> start!699920 m!7888518))

(declare-fun m!7888520 () Bool)

(assert (=> setNonEmpty!53295 m!7888520))

(declare-fun m!7888522 () Bool)

(assert (=> b!7193872 m!7888522))

(declare-fun m!7888524 () Bool)

(assert (=> b!7193864 m!7888524))

(declare-fun m!7888526 () Bool)

(assert (=> b!7193864 m!7888526))

(assert (=> b!7193864 m!7888526))

(declare-fun m!7888528 () Bool)

(assert (=> b!7193864 m!7888528))

(assert (=> b!7193864 m!7888528))

(declare-fun m!7888530 () Bool)

(assert (=> b!7193864 m!7888530))

(declare-fun m!7888532 () Bool)

(assert (=> b!7193865 m!7888532))

(declare-fun m!7888534 () Bool)

(assert (=> b!7193866 m!7888534))

(check-sat (not b!7193866) (not b!7193869) (not b!7193864) (not setNonEmpty!53295) (not b!7193865) (not b!7193873) (not b!7193870) (not b!7193871) tp_is_empty!46299 (not b!7193863) (not start!699920))
(check-sat)
