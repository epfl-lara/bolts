; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699460 () Bool)

(assert start!699460)

(declare-fun b!7185936 () Bool)

(assert (=> b!7185936 true))

(declare-fun res!2926287 () Bool)

(declare-fun e!4315434 () Bool)

(assert (=> start!699460 (=> (not res!2926287) (not e!4315434))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36984 0))(
  ( (C!36985 (val!28440 Int)) )
))
(declare-datatypes ((Regex!18355 0))(
  ( (ElementMatch!18355 (c!1337838 C!36984)) (Concat!27200 (regOne!37222 Regex!18355) (regTwo!37222 Regex!18355)) (EmptyExpr!18355) (Star!18355 (reg!18684 Regex!18355)) (EmptyLang!18355) (Union!18355 (regOne!37223 Regex!18355) (regTwo!37223 Regex!18355)) )
))
(declare-datatypes ((List!69795 0))(
  ( (Nil!69671) (Cons!69671 (h!76119 Regex!18355) (t!383818 List!69795)) )
))
(declare-datatypes ((Context!14614 0))(
  ( (Context!14615 (exprs!7807 List!69795)) )
))
(declare-fun z!3530 () (InoxSet Context!14614))

(declare-datatypes ((List!69796 0))(
  ( (Nil!69672) (Cons!69672 (h!76120 Context!14614) (t!383819 List!69796)) )
))
(declare-fun unfocusZipper!2615 (List!69796) Regex!18355)

(declare-fun toList!11298 ((InoxSet Context!14614)) List!69796)

(assert (=> start!699460 (= res!2926287 (= (unfocusZipper!2615 (toList!11298 z!3530)) EmptyExpr!18355))))

(assert (=> start!699460 e!4315434))

(declare-fun condSetEmpty!53181 () Bool)

(assert (=> start!699460 (= condSetEmpty!53181 (= z!3530 ((as const (Array Context!14614 Bool)) false)))))

(declare-fun setRes!53181 () Bool)

(assert (=> start!699460 setRes!53181))

(declare-fun e!4315430 () Bool)

(assert (=> start!699460 e!4315430))

(declare-fun b!7185934 () Bool)

(declare-fun res!2926289 () Bool)

(assert (=> b!7185934 (=> (not res!2926289) (not e!4315434))))

(declare-fun focus!430 (Regex!18355) (InoxSet Context!14614))

(assert (=> b!7185934 (= res!2926289 (= z!3530 (focus!430 EmptyExpr!18355)))))

(declare-fun b!7185935 () Bool)

(declare-fun e!4315432 () Bool)

(assert (=> b!7185935 (= e!4315432 true)))

(declare-fun lt!2571008 () Bool)

(declare-datatypes ((List!69797 0))(
  ( (Nil!69673) (Cons!69673 (h!76121 C!36984) (t!383820 List!69797)) )
))
(declare-fun s!7967 () List!69797)

(declare-fun matchZipper!3361 ((InoxSet Context!14614) List!69797) Bool)

(assert (=> b!7185935 (= lt!2571008 (matchZipper!3361 z!3530 s!7967))))

(declare-fun lt!2571010 () (InoxSet Context!14614))

(declare-fun lt!2571006 () List!69797)

(assert (=> b!7185935 (not (matchZipper!3361 lt!2571010 lt!2571006))))

(declare-datatypes ((Unit!163367 0))(
  ( (Unit!163368) )
))
(declare-fun lt!2571007 () Unit!163367)

(declare-fun lemmaEmptyZipperMatchesNothing!122 ((InoxSet Context!14614) List!69797) Unit!163367)

(assert (=> b!7185935 (= lt!2571007 (lemmaEmptyZipperMatchesNothing!122 lt!2571010 lt!2571006))))

(declare-fun tail!14073 (List!69797) List!69797)

(assert (=> b!7185935 (= lt!2571006 (tail!14073 s!7967))))

(declare-fun lt!2571011 () Unit!163367)

(declare-fun e!4315431 () Unit!163367)

(assert (=> b!7185935 (= lt!2571011 e!4315431)))

(declare-fun c!1337837 () Bool)

(assert (=> b!7185935 (= c!1337837 (not (= lt!2571010 ((as const (Array Context!14614 Bool)) false))))))

(declare-fun tp!1995475 () Bool)

(declare-fun setElem!53181 () Context!14614)

(declare-fun setNonEmpty!53181 () Bool)

(declare-fun e!4315427 () Bool)

(declare-fun inv!88909 (Context!14614) Bool)

(assert (=> setNonEmpty!53181 (= setRes!53181 (and tp!1995475 (inv!88909 setElem!53181) e!4315427))))

(declare-fun setRest!53181 () (InoxSet Context!14614))

(assert (=> setNonEmpty!53181 (= z!3530 ((_ map or) (store ((as const (Array Context!14614 Bool)) false) setElem!53181 true) setRest!53181))))

(declare-fun Unit!163369 () Unit!163367)

(assert (=> b!7185936 (= e!4315431 Unit!163369)))

(declare-fun empty!2991 () Context!14614)

(declare-fun e!4315428 () Bool)

(assert (=> b!7185936 (and (inv!88909 empty!2991) e!4315428)))

(assert (=> b!7185936 true))

(declare-fun res!2926286 () Bool)

(declare-fun lambda!437663 () Int)

(declare-fun flatMapPost!68 ((InoxSet Context!14614) Int Context!14614) Context!14614)

(declare-fun head!14675 (List!69796) Context!14614)

(assert (=> b!7185936 (= res!2926286 (= (flatMapPost!68 z!3530 lambda!437663 (head!14675 (toList!11298 lt!2571010))) empty!2991))))

(declare-fun e!4315429 () Bool)

(assert (=> b!7185936 (=> (not res!2926286) (not e!4315429))))

(assert (=> b!7185936 e!4315429))

(declare-fun b!7185937 () Bool)

(assert (=> b!7185937 (= e!4315429 false)))

(declare-fun b!7185938 () Bool)

(declare-fun e!4315433 () Bool)

(assert (=> b!7185938 (= e!4315434 (not e!4315433))))

(declare-fun res!2926288 () Bool)

(assert (=> b!7185938 (=> res!2926288 e!4315433)))

(declare-fun isEmpty!40217 (List!69797) Bool)

(assert (=> b!7185938 (= res!2926288 (isEmpty!40217 s!7967))))

(declare-fun lt!2571012 () Context!14614)

(declare-fun nullableContext!204 (Context!14614) Bool)

(assert (=> b!7185938 (nullableContext!204 lt!2571012)))

(assert (=> b!7185938 (= lt!2571012 (Context!14615 (Cons!69671 EmptyExpr!18355 Nil!69671)))))

(declare-fun b!7185939 () Bool)

(declare-fun tp!1995474 () Bool)

(assert (=> b!7185939 (= e!4315428 tp!1995474)))

(declare-fun b!7185940 () Bool)

(declare-fun tp!1995476 () Bool)

(assert (=> b!7185940 (= e!4315427 tp!1995476)))

(declare-fun b!7185941 () Bool)

(assert (=> b!7185941 (= e!4315433 e!4315432)))

(declare-fun res!2926285 () Bool)

(assert (=> b!7185941 (=> res!2926285 e!4315432)))

(declare-fun lt!2571009 () C!36984)

(declare-fun derivationStepZipperUp!2331 (Context!14614 C!36984) (InoxSet Context!14614))

(assert (=> b!7185941 (= res!2926285 (not (= (derivationStepZipperUp!2331 lt!2571012 lt!2571009) ((as const (Array Context!14614 Bool)) false))))))

(declare-fun derivationStepZipper!3224 ((InoxSet Context!14614) C!36984) (InoxSet Context!14614))

(assert (=> b!7185941 (= lt!2571010 (derivationStepZipper!3224 z!3530 lt!2571009))))

(declare-fun head!14676 (List!69797) C!36984)

(assert (=> b!7185941 (= lt!2571009 (head!14676 s!7967))))

(declare-fun b!7185942 () Bool)

(declare-fun Unit!163370 () Unit!163367)

(assert (=> b!7185942 (= e!4315431 Unit!163370)))

(declare-fun setIsEmpty!53181 () Bool)

(assert (=> setIsEmpty!53181 setRes!53181))

(declare-fun b!7185943 () Bool)

(declare-fun tp_is_empty!46271 () Bool)

(declare-fun tp!1995477 () Bool)

(assert (=> b!7185943 (= e!4315430 (and tp_is_empty!46271 tp!1995477))))

(assert (= (and start!699460 res!2926287) b!7185934))

(assert (= (and b!7185934 res!2926289) b!7185938))

(assert (= (and b!7185938 (not res!2926288)) b!7185941))

(assert (= (and b!7185941 (not res!2926285)) b!7185935))

(assert (= (and b!7185935 c!1337837) b!7185936))

(assert (= (and b!7185935 (not c!1337837)) b!7185942))

(assert (= b!7185936 b!7185939))

(assert (= (and b!7185936 res!2926286) b!7185937))

(assert (= (and start!699460 condSetEmpty!53181) setIsEmpty!53181))

(assert (= (and start!699460 (not condSetEmpty!53181)) setNonEmpty!53181))

(assert (= setNonEmpty!53181 b!7185940))

(get-info :version)

(assert (= (and start!699460 ((_ is Cons!69673) s!7967)) b!7185943))

(declare-fun m!7882772 () Bool)

(assert (=> setNonEmpty!53181 m!7882772))

(declare-fun m!7882774 () Bool)

(assert (=> b!7185936 m!7882774))

(declare-fun m!7882776 () Bool)

(assert (=> b!7185936 m!7882776))

(assert (=> b!7185936 m!7882776))

(declare-fun m!7882778 () Bool)

(assert (=> b!7185936 m!7882778))

(assert (=> b!7185936 m!7882778))

(declare-fun m!7882780 () Bool)

(assert (=> b!7185936 m!7882780))

(declare-fun m!7882782 () Bool)

(assert (=> b!7185934 m!7882782))

(declare-fun m!7882784 () Bool)

(assert (=> b!7185941 m!7882784))

(declare-fun m!7882786 () Bool)

(assert (=> b!7185941 m!7882786))

(declare-fun m!7882788 () Bool)

(assert (=> b!7185941 m!7882788))

(declare-fun m!7882790 () Bool)

(assert (=> b!7185938 m!7882790))

(declare-fun m!7882792 () Bool)

(assert (=> b!7185938 m!7882792))

(declare-fun m!7882794 () Bool)

(assert (=> start!699460 m!7882794))

(assert (=> start!699460 m!7882794))

(declare-fun m!7882796 () Bool)

(assert (=> start!699460 m!7882796))

(declare-fun m!7882798 () Bool)

(assert (=> b!7185935 m!7882798))

(declare-fun m!7882800 () Bool)

(assert (=> b!7185935 m!7882800))

(declare-fun m!7882802 () Bool)

(assert (=> b!7185935 m!7882802))

(declare-fun m!7882804 () Bool)

(assert (=> b!7185935 m!7882804))

(check-sat (not b!7185939) (not b!7185934) (not b!7185940) (not start!699460) tp_is_empty!46271 (not b!7185935) (not b!7185943) (not b!7185936) (not setNonEmpty!53181) (not b!7185938) (not b!7185941))
(check-sat)
