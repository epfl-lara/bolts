; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92954 () Bool)

(assert start!92954)

(declare-fun bs!257742 () Bool)

(declare-fun b!1088324 () Bool)

(declare-fun b!1088329 () Bool)

(assert (= bs!257742 (and b!1088324 b!1088329)))

(declare-fun lambda!40836 () Int)

(declare-fun lambda!40835 () Int)

(assert (=> bs!257742 (not (= lambda!40836 lambda!40835))))

(assert (=> b!1088324 true))

(declare-fun b!1088320 () Bool)

(declare-fun res!483842 () Bool)

(declare-fun e!688484 () Bool)

(assert (=> b!1088320 (=> (not res!483842) (not e!688484))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6640 0))(
  ( (C!6641 (val!3568 Int)) )
))
(declare-datatypes ((Regex!3035 0))(
  ( (ElementMatch!3035 (c!184385 C!6640)) (Concat!4868 (regOne!6582 Regex!3035) (regTwo!6582 Regex!3035)) (EmptyExpr!3035) (Star!3035 (reg!3364 Regex!3035)) (EmptyLang!3035) (Union!3035 (regOne!6583 Regex!3035) (regTwo!6583 Regex!3035)) )
))
(declare-datatypes ((List!10408 0))(
  ( (Nil!10392) (Cons!10392 (h!15793 Regex!3035) (t!101454 List!10408)) )
))
(declare-datatypes ((Context!1030 0))(
  ( (Context!1031 (exprs!1015 List!10408)) )
))
(declare-fun z!1122 () (InoxSet Context!1030))

(declare-datatypes ((List!10409 0))(
  ( (Nil!10393) (Cons!10393 (h!15794 C!6640) (t!101455 List!10409)) )
))
(declare-fun s!2287 () List!10409)

(declare-fun matchZipper!83 ((InoxSet Context!1030) List!10409) Bool)

(assert (=> b!1088320 (= res!483842 (not (matchZipper!83 z!1122 s!2287)))))

(declare-fun b!1088321 () Bool)

(declare-fun e!688481 () Bool)

(declare-fun e!688479 () Bool)

(declare-datatypes ((List!10410 0))(
  ( (Nil!10394) (Cons!10394 (h!15795 Context!1030) (t!101456 List!10410)) )
))
(declare-fun zl!316 () List!10410)

(declare-fun tp!326263 () Bool)

(declare-fun inv!13300 (Context!1030) Bool)

(assert (=> b!1088321 (= e!688479 (and (inv!13300 (h!15795 zl!316)) e!688481 tp!326263))))

(declare-fun b!1088322 () Bool)

(declare-fun e!688480 () Bool)

(declare-fun tp!326260 () Bool)

(assert (=> b!1088322 (= e!688480 tp!326260)))

(declare-fun b!1088323 () Bool)

(declare-fun e!688483 () Bool)

(declare-fun tp_is_empty!5701 () Bool)

(declare-fun tp!326264 () Bool)

(assert (=> b!1088323 (= e!688483 (and tp_is_empty!5701 tp!326264))))

(declare-fun setElem!7714 () Context!1030)

(declare-fun setRes!7714 () Bool)

(declare-fun tp!326262 () Bool)

(declare-fun setNonEmpty!7714 () Bool)

(assert (=> setNonEmpty!7714 (= setRes!7714 (and tp!326262 (inv!13300 setElem!7714) e!688480))))

(declare-fun setRest!7714 () (InoxSet Context!1030))

(assert (=> setNonEmpty!7714 (= z!1122 ((_ map or) (store ((as const (Array Context!1030 Bool)) false) setElem!7714 true) setRest!7714))))

(declare-fun res!483845 () Bool)

(assert (=> start!92954 (=> (not res!483845) (not e!688484))))

(declare-fun lt!364154 () List!10410)

(assert (=> start!92954 (= res!483845 (= lt!364154 zl!316))))

(declare-fun toList!653 ((InoxSet Context!1030)) List!10410)

(assert (=> start!92954 (= lt!364154 (toList!653 z!1122))))

(assert (=> start!92954 e!688484))

(declare-fun condSetEmpty!7714 () Bool)

(assert (=> start!92954 (= condSetEmpty!7714 (= z!1122 ((as const (Array Context!1030 Bool)) false)))))

(assert (=> start!92954 setRes!7714))

(assert (=> start!92954 e!688479))

(assert (=> start!92954 e!688483))

(declare-datatypes ((Unit!15779 0))(
  ( (Unit!15780) )
))
(declare-fun e!688482 () Unit!15779)

(declare-fun Unit!15781 () Unit!15779)

(assert (=> b!1088324 (= e!688482 Unit!15781)))

(declare-fun lt!364161 () List!10410)

(declare-fun filter!191 ((InoxSet Context!1030) Int) (InoxSet Context!1030))

(assert (=> b!1088324 (= lt!364161 (toList!653 (filter!191 z!1122 lambda!40835)))))

(declare-fun lt!364159 () Unit!15779)

(declare-fun lemmaZipperMatchesExistsMatchingContext!58 (List!10410 List!10409) Unit!15779)

(assert (=> b!1088324 (= lt!364159 (lemmaZipperMatchesExistsMatchingContext!58 lt!364161 s!2287))))

(declare-fun exists!208 (List!10410 Int) Bool)

(assert (=> b!1088324 (exists!208 lt!364161 lambda!40836)))

(declare-fun lt!364160 () Context!1030)

(declare-fun getWitness!109 ((InoxSet Context!1030) Int) Context!1030)

(assert (=> b!1088324 (= lt!364160 (getWitness!109 (filter!191 z!1122 lambda!40835) lambda!40836))))

(declare-fun lt!364156 () Unit!15779)

(declare-fun filterPost!34 ((InoxSet Context!1030) Int Context!1030) Unit!15779)

(assert (=> b!1088324 (= lt!364156 (filterPost!34 z!1122 lambda!40835 lt!364160))))

(declare-fun lt!364158 () Unit!15779)

(declare-fun lemmaContainsThenExists!39 ((InoxSet Context!1030) Context!1030 Int) Unit!15779)

(assert (=> b!1088324 (= lt!364158 (lemmaContainsThenExists!39 z!1122 lt!364160 lambda!40836))))

(declare-fun exists!209 ((InoxSet Context!1030) Int) Bool)

(assert (=> b!1088324 (exists!209 z!1122 lambda!40836)))

(declare-fun lt!364157 () Unit!15779)

(declare-fun lemmaExistsMatchingContextThenMatchingString!12 (List!10410 List!10409) Unit!15779)

(assert (=> b!1088324 (= lt!364157 (lemmaExistsMatchingContextThenMatchingString!12 lt!364154 s!2287))))

(declare-fun res!483844 () Bool)

(declare-fun content!1500 (List!10410) (InoxSet Context!1030))

(assert (=> b!1088324 (= res!483844 (matchZipper!83 (content!1500 lt!364154) s!2287))))

(declare-fun e!688486 () Bool)

(assert (=> b!1088324 (=> (not res!483844) (not e!688486))))

(assert (=> b!1088324 e!688486))

(declare-fun b!1088325 () Bool)

(declare-fun tp!326261 () Bool)

(assert (=> b!1088325 (= e!688481 tp!326261)))

(declare-fun b!1088326 () Bool)

(declare-fun Unit!15782 () Unit!15779)

(assert (=> b!1088326 (= e!688482 Unit!15782)))

(declare-fun setIsEmpty!7714 () Bool)

(assert (=> setIsEmpty!7714 setRes!7714))

(declare-fun e!688485 () Bool)

(declare-fun b!1088327 () Bool)

(assert (=> b!1088327 (= e!688485 (matchZipper!83 (filter!191 z!1122 lambda!40835) s!2287))))

(declare-fun b!1088328 () Bool)

(assert (=> b!1088328 (= e!688486 false)))

(assert (=> b!1088329 (= e!688484 e!688485)))

(declare-fun res!483843 () Bool)

(assert (=> b!1088329 (=> (not res!483843) (not e!688485))))

(assert (=> b!1088329 (= res!483843 (not (matchZipper!83 (filter!191 z!1122 lambda!40835) s!2287)))))

(declare-fun lt!364155 () Unit!15779)

(assert (=> b!1088329 (= lt!364155 e!688482)))

(declare-fun c!184384 () Bool)

(assert (=> b!1088329 (= c!184384 (matchZipper!83 (filter!191 z!1122 lambda!40835) s!2287))))

(assert (= (and start!92954 res!483845) b!1088320))

(assert (= (and b!1088320 res!483842) b!1088329))

(assert (= (and b!1088329 c!184384) b!1088324))

(assert (= (and b!1088329 (not c!184384)) b!1088326))

(assert (= (and b!1088324 res!483844) b!1088328))

(assert (= (and b!1088329 res!483843) b!1088327))

(assert (= (and start!92954 condSetEmpty!7714) setIsEmpty!7714))

(assert (= (and start!92954 (not condSetEmpty!7714)) setNonEmpty!7714))

(assert (= setNonEmpty!7714 b!1088322))

(assert (= b!1088321 b!1088325))

(get-info :version)

(assert (= (and start!92954 ((_ is Cons!10394) zl!316)) b!1088321))

(assert (= (and start!92954 ((_ is Cons!10393) s!2287)) b!1088323))

(declare-fun m!1238747 () Bool)

(assert (=> b!1088321 m!1238747))

(declare-fun m!1238749 () Bool)

(assert (=> b!1088324 m!1238749))

(declare-fun m!1238751 () Bool)

(assert (=> b!1088324 m!1238751))

(declare-fun m!1238753 () Bool)

(assert (=> b!1088324 m!1238753))

(declare-fun m!1238755 () Bool)

(assert (=> b!1088324 m!1238755))

(declare-fun m!1238757 () Bool)

(assert (=> b!1088324 m!1238757))

(declare-fun m!1238759 () Bool)

(assert (=> b!1088324 m!1238759))

(declare-fun m!1238761 () Bool)

(assert (=> b!1088324 m!1238761))

(assert (=> b!1088324 m!1238753))

(declare-fun m!1238763 () Bool)

(assert (=> b!1088324 m!1238763))

(assert (=> b!1088324 m!1238749))

(declare-fun m!1238765 () Bool)

(assert (=> b!1088324 m!1238765))

(declare-fun m!1238767 () Bool)

(assert (=> b!1088324 m!1238767))

(assert (=> b!1088324 m!1238753))

(declare-fun m!1238769 () Bool)

(assert (=> b!1088324 m!1238769))

(assert (=> b!1088324 m!1238753))

(declare-fun m!1238771 () Bool)

(assert (=> setNonEmpty!7714 m!1238771))

(assert (=> b!1088327 m!1238753))

(assert (=> b!1088327 m!1238753))

(declare-fun m!1238773 () Bool)

(assert (=> b!1088327 m!1238773))

(declare-fun m!1238775 () Bool)

(assert (=> start!92954 m!1238775))

(declare-fun m!1238777 () Bool)

(assert (=> b!1088320 m!1238777))

(assert (=> b!1088329 m!1238753))

(assert (=> b!1088329 m!1238753))

(assert (=> b!1088329 m!1238773))

(assert (=> b!1088329 m!1238753))

(assert (=> b!1088329 m!1238753))

(assert (=> b!1088329 m!1238773))

(check-sat (not b!1088327) (not b!1088329) (not start!92954) (not b!1088324) (not b!1088325) (not setNonEmpty!7714) (not b!1088321) (not b!1088322) (not b!1088320) (not b!1088323) tp_is_empty!5701)
(check-sat)
