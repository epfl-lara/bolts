; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92950 () Bool)

(assert start!92950)

(declare-fun bs!257738 () Bool)

(declare-fun b!1088256 () Bool)

(declare-fun b!1088257 () Bool)

(assert (= bs!257738 (and b!1088256 b!1088257)))

(declare-fun lambda!40796 () Int)

(declare-fun lambda!40795 () Int)

(assert (=> bs!257738 (not (= lambda!40796 lambda!40795))))

(assert (=> b!1088256 true))

(declare-fun b!1088254 () Bool)

(declare-fun e!688435 () Bool)

(declare-fun e!688434 () Bool)

(assert (=> b!1088254 (= e!688435 e!688434)))

(declare-fun res!483817 () Bool)

(assert (=> b!1088254 (=> res!483817 e!688434)))

(declare-datatypes ((C!6636 0))(
  ( (C!6637 (val!3566 Int)) )
))
(declare-datatypes ((Regex!3033 0))(
  ( (ElementMatch!3033 (c!184341 C!6636)) (Concat!4866 (regOne!6578 Regex!3033) (regTwo!6578 Regex!3033)) (EmptyExpr!3033) (Star!3033 (reg!3362 Regex!3033)) (EmptyLang!3033) (Union!3033 (regOne!6579 Regex!3033) (regTwo!6579 Regex!3033)) )
))
(declare-datatypes ((List!10402 0))(
  ( (Nil!10386) (Cons!10386 (h!15787 Regex!3033) (t!101448 List!10402)) )
))
(declare-datatypes ((Context!1026 0))(
  ( (Context!1027 (exprs!1013 List!10402)) )
))
(declare-fun lt!364112 () Context!1026)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1122 () (InoxSet Context!1026))

(assert (=> b!1088254 (= res!483817 (not (select z!1122 lt!364112)))))

(declare-datatypes ((Unit!15773 0))(
  ( (Unit!15774) )
))
(declare-fun lt!364113 () Unit!15773)

(declare-fun filterPost!32 ((InoxSet Context!1026) Int Context!1026) Unit!15773)

(assert (=> b!1088254 (= lt!364113 (filterPost!32 z!1122 lambda!40795 lt!364112))))

(declare-fun b!1088255 () Bool)

(declare-fun e!688432 () Bool)

(assert (=> b!1088255 (= e!688434 e!688432)))

(declare-fun res!483818 () Bool)

(assert (=> b!1088255 (=> res!483818 e!688432)))

(declare-fun exists!204 ((InoxSet Context!1026) Int) Bool)

(assert (=> b!1088255 (= res!483818 (not (exists!204 z!1122 lambda!40796)))))

(assert (=> b!1088255 (exists!204 z!1122 lambda!40796)))

(declare-fun lt!364111 () Unit!15773)

(declare-fun lemmaContainsThenExists!37 ((InoxSet Context!1026) Context!1026 Int) Unit!15773)

(assert (=> b!1088255 (= lt!364111 (lemmaContainsThenExists!37 z!1122 lt!364112 lambda!40796))))

(declare-fun e!688437 () Bool)

(declare-fun e!688430 () Bool)

(assert (=> b!1088256 (= e!688437 (not e!688430))))

(declare-fun res!483821 () Bool)

(assert (=> b!1088256 (=> res!483821 e!688430)))

(declare-fun filter!189 ((InoxSet Context!1026) Int) (InoxSet Context!1026))

(assert (=> b!1088256 (= res!483821 (not (exists!204 (filter!189 z!1122 lambda!40795) lambda!40796)))))

(declare-datatypes ((List!10403 0))(
  ( (Nil!10387) (Cons!10387 (h!15788 Context!1026) (t!101449 List!10403)) )
))
(declare-fun lt!364107 () List!10403)

(declare-fun exists!205 (List!10403 Int) Bool)

(assert (=> b!1088256 (exists!205 lt!364107 lambda!40796)))

(declare-fun lt!364108 () Unit!15773)

(declare-datatypes ((List!10404 0))(
  ( (Nil!10388) (Cons!10388 (h!15789 C!6636) (t!101450 List!10404)) )
))
(declare-fun s!2287 () List!10404)

(declare-fun lemmaZipperMatchesExistsMatchingContext!56 (List!10403 List!10404) Unit!15773)

(assert (=> b!1088256 (= lt!364108 (lemmaZipperMatchesExistsMatchingContext!56 lt!364107 s!2287))))

(declare-fun toList!651 ((InoxSet Context!1026)) List!10403)

(assert (=> b!1088256 (= lt!364107 (toList!651 (filter!189 z!1122 lambda!40795)))))

(declare-fun e!688436 () Bool)

(declare-fun setNonEmpty!7708 () Bool)

(declare-fun setElem!7708 () Context!1026)

(declare-fun setRes!7708 () Bool)

(declare-fun tp!326231 () Bool)

(declare-fun inv!13295 (Context!1026) Bool)

(assert (=> setNonEmpty!7708 (= setRes!7708 (and tp!326231 (inv!13295 setElem!7708) e!688436))))

(declare-fun setRest!7708 () (InoxSet Context!1026))

(assert (=> setNonEmpty!7708 (= z!1122 ((_ map or) (store ((as const (Array Context!1026 Bool)) false) setElem!7708 true) setRest!7708))))

(declare-fun res!483816 () Bool)

(assert (=> b!1088257 (=> (not res!483816) (not e!688437))))

(declare-fun matchZipper!81 ((InoxSet Context!1026) List!10404) Bool)

(assert (=> b!1088257 (= res!483816 (matchZipper!81 (filter!189 z!1122 lambda!40795) s!2287))))

(declare-fun b!1088258 () Bool)

(declare-fun e!688431 () Bool)

(declare-fun zl!316 () List!10403)

(declare-fun e!688433 () Bool)

(declare-fun tp!326230 () Bool)

(assert (=> b!1088258 (= e!688433 (and (inv!13295 (h!15788 zl!316)) e!688431 tp!326230))))

(declare-fun b!1088259 () Bool)

(declare-fun tp!326232 () Bool)

(assert (=> b!1088259 (= e!688436 tp!326232)))

(declare-fun setIsEmpty!7708 () Bool)

(assert (=> setIsEmpty!7708 setRes!7708))

(declare-fun b!1088260 () Bool)

(declare-fun res!483819 () Bool)

(assert (=> b!1088260 (=> res!483819 e!688435)))

(assert (=> b!1088260 (= res!483819 (not (matchZipper!81 (store ((as const (Array Context!1026 Bool)) false) lt!364112 true) s!2287)))))

(declare-fun b!1088262 () Bool)

(declare-fun res!483814 () Bool)

(assert (=> b!1088262 (=> (not res!483814) (not e!688437))))

(assert (=> b!1088262 (= res!483814 (not (matchZipper!81 z!1122 s!2287)))))

(declare-fun b!1088263 () Bool)

(declare-fun tp!326234 () Bool)

(assert (=> b!1088263 (= e!688431 tp!326234)))

(declare-fun b!1088264 () Bool)

(assert (=> b!1088264 (= e!688430 e!688435)))

(declare-fun res!483815 () Bool)

(assert (=> b!1088264 (=> res!483815 e!688435)))

(assert (=> b!1088264 (= res!483815 (not (select (filter!189 z!1122 lambda!40795) lt!364112)))))

(declare-fun getWitness!107 ((InoxSet Context!1026) Int) Context!1026)

(assert (=> b!1088264 (= lt!364112 (getWitness!107 (filter!189 z!1122 lambda!40795) lambda!40796))))

(declare-fun b!1088265 () Bool)

(declare-fun e!688438 () Bool)

(declare-fun tp_is_empty!5697 () Bool)

(declare-fun tp!326233 () Bool)

(assert (=> b!1088265 (= e!688438 (and tp_is_empty!5697 tp!326233))))

(declare-fun b!1088261 () Bool)

(assert (=> b!1088261 (= e!688432 true)))

(declare-fun lt!364109 () List!10403)

(declare-fun content!1498 (List!10403) (InoxSet Context!1026))

(assert (=> b!1088261 (matchZipper!81 (content!1498 lt!364109) s!2287)))

(declare-fun lt!364110 () Unit!15773)

(declare-fun lemmaExistsMatchingContextThenMatchingString!10 (List!10403 List!10404) Unit!15773)

(assert (=> b!1088261 (= lt!364110 (lemmaExistsMatchingContextThenMatchingString!10 lt!364109 s!2287))))

(declare-fun res!483820 () Bool)

(assert (=> start!92950 (=> (not res!483820) (not e!688437))))

(assert (=> start!92950 (= res!483820 (= lt!364109 zl!316))))

(assert (=> start!92950 (= lt!364109 (toList!651 z!1122))))

(assert (=> start!92950 e!688437))

(declare-fun condSetEmpty!7708 () Bool)

(assert (=> start!92950 (= condSetEmpty!7708 (= z!1122 ((as const (Array Context!1026 Bool)) false)))))

(assert (=> start!92950 setRes!7708))

(assert (=> start!92950 e!688433))

(assert (=> start!92950 e!688438))

(assert (= (and start!92950 res!483820) b!1088262))

(assert (= (and b!1088262 res!483814) b!1088257))

(assert (= (and b!1088257 res!483816) b!1088256))

(assert (= (and b!1088256 (not res!483821)) b!1088264))

(assert (= (and b!1088264 (not res!483815)) b!1088260))

(assert (= (and b!1088260 (not res!483819)) b!1088254))

(assert (= (and b!1088254 (not res!483817)) b!1088255))

(assert (= (and b!1088255 (not res!483818)) b!1088261))

(assert (= (and start!92950 condSetEmpty!7708) setIsEmpty!7708))

(assert (= (and start!92950 (not condSetEmpty!7708)) setNonEmpty!7708))

(assert (= setNonEmpty!7708 b!1088259))

(assert (= b!1088258 b!1088263))

(get-info :version)

(assert (= (and start!92950 ((_ is Cons!10387) zl!316)) b!1088258))

(assert (= (and start!92950 ((_ is Cons!10388) s!2287)) b!1088265))

(declare-fun m!1238673 () Bool)

(assert (=> b!1088254 m!1238673))

(declare-fun m!1238675 () Bool)

(assert (=> b!1088254 m!1238675))

(declare-fun m!1238677 () Bool)

(assert (=> b!1088256 m!1238677))

(declare-fun m!1238679 () Bool)

(assert (=> b!1088256 m!1238679))

(assert (=> b!1088256 m!1238677))

(assert (=> b!1088256 m!1238677))

(declare-fun m!1238681 () Bool)

(assert (=> b!1088256 m!1238681))

(assert (=> b!1088256 m!1238677))

(declare-fun m!1238683 () Bool)

(assert (=> b!1088256 m!1238683))

(declare-fun m!1238685 () Bool)

(assert (=> b!1088256 m!1238685))

(assert (=> b!1088257 m!1238677))

(assert (=> b!1088257 m!1238677))

(declare-fun m!1238687 () Bool)

(assert (=> b!1088257 m!1238687))

(declare-fun m!1238689 () Bool)

(assert (=> b!1088262 m!1238689))

(assert (=> b!1088264 m!1238677))

(declare-fun m!1238691 () Bool)

(assert (=> b!1088264 m!1238691))

(assert (=> b!1088264 m!1238677))

(assert (=> b!1088264 m!1238677))

(declare-fun m!1238693 () Bool)

(assert (=> b!1088264 m!1238693))

(declare-fun m!1238695 () Bool)

(assert (=> b!1088255 m!1238695))

(assert (=> b!1088255 m!1238695))

(declare-fun m!1238697 () Bool)

(assert (=> b!1088255 m!1238697))

(declare-fun m!1238699 () Bool)

(assert (=> b!1088258 m!1238699))

(declare-fun m!1238701 () Bool)

(assert (=> start!92950 m!1238701))

(declare-fun m!1238703 () Bool)

(assert (=> b!1088260 m!1238703))

(assert (=> b!1088260 m!1238703))

(declare-fun m!1238705 () Bool)

(assert (=> b!1088260 m!1238705))

(declare-fun m!1238707 () Bool)

(assert (=> setNonEmpty!7708 m!1238707))

(declare-fun m!1238709 () Bool)

(assert (=> b!1088261 m!1238709))

(assert (=> b!1088261 m!1238709))

(declare-fun m!1238711 () Bool)

(assert (=> b!1088261 m!1238711))

(declare-fun m!1238713 () Bool)

(assert (=> b!1088261 m!1238713))

(check-sat (not b!1088259) (not b!1088264) (not setNonEmpty!7708) (not b!1088261) (not b!1088256) (not b!1088257) (not b!1088255) (not start!92950) (not b!1088263) (not b!1088258) (not b!1088265) (not b!1088262) tp_is_empty!5697 (not b!1088254) (not b!1088260))
(check-sat)
