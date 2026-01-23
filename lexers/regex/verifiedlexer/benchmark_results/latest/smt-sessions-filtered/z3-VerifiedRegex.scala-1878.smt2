; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92642 () Bool)

(assert start!92642)

(declare-fun bs!256798 () Bool)

(declare-fun b!1086609 () Bool)

(declare-fun b!1086608 () Bool)

(assert (= bs!256798 (and b!1086609 b!1086608)))

(declare-fun lambda!40298 () Int)

(declare-fun lambda!40297 () Int)

(assert (=> bs!256798 (not (= lambda!40298 lambda!40297))))

(assert (=> b!1086609 true))

(declare-fun e!687264 () Bool)

(declare-fun tp!325469 () Bool)

(declare-datatypes ((C!6600 0))(
  ( (C!6601 (val!3548 Int)) )
))
(declare-datatypes ((Regex!3015 0))(
  ( (ElementMatch!3015 (c!183855 C!6600)) (Concat!4848 (regOne!6542 Regex!3015) (regTwo!6542 Regex!3015)) (EmptyExpr!3015) (Star!3015 (reg!3344 Regex!3015)) (EmptyLang!3015) (Union!3015 (regOne!6543 Regex!3015) (regTwo!6543 Regex!3015)) )
))
(declare-datatypes ((List!10348 0))(
  ( (Nil!10332) (Cons!10332 (h!15733 Regex!3015) (t!101394 List!10348)) )
))
(declare-datatypes ((Context!990 0))(
  ( (Context!991 (exprs!995 List!10348)) )
))
(declare-datatypes ((List!10349 0))(
  ( (Nil!10333) (Cons!10333 (h!15734 Context!990) (t!101395 List!10349)) )
))
(declare-fun zl!316 () List!10349)

(declare-fun b!1086607 () Bool)

(declare-fun e!687268 () Bool)

(declare-fun inv!13250 (Context!990) Bool)

(assert (=> b!1086607 (= e!687264 (and (inv!13250 (h!15734 zl!316)) e!687268 tp!325469))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1122 () (InoxSet Context!990))

(declare-fun e!687266 () Bool)

(declare-datatypes ((List!10350 0))(
  ( (Nil!10334) (Cons!10334 (h!15735 C!6600) (t!101396 List!10350)) )
))
(declare-fun s!2287 () List!10350)

(declare-fun matchZipper!63 ((InoxSet Context!990) List!10350) Bool)

(declare-fun filter!177 ((InoxSet Context!990) Int) (InoxSet Context!990))

(assert (=> b!1086608 (= e!687266 (matchZipper!63 (filter!177 z!1122 lambda!40297) s!2287))))

(declare-datatypes ((Unit!15723 0))(
  ( (Unit!15724) )
))
(declare-fun lt!363575 () Unit!15723)

(declare-fun e!687267 () Unit!15723)

(assert (=> b!1086608 (= lt!363575 e!687267)))

(declare-fun c!183854 () Bool)

(assert (=> b!1086608 (= c!183854 (matchZipper!63 (filter!177 z!1122 lambda!40297) s!2287))))

(declare-fun Unit!15725 () Unit!15723)

(assert (=> b!1086609 (= e!687267 Unit!15725)))

(declare-fun lt!363581 () List!10349)

(declare-fun toList!633 ((InoxSet Context!990)) List!10349)

(assert (=> b!1086609 (= lt!363581 (toList!633 (filter!177 z!1122 lambda!40297)))))

(declare-fun lt!363574 () Unit!15723)

(declare-fun lemmaZipperMatchesExistsMatchingContext!42 (List!10349 List!10350) Unit!15723)

(assert (=> b!1086609 (= lt!363574 (lemmaZipperMatchesExistsMatchingContext!42 lt!363581 s!2287))))

(declare-fun exists!173 (List!10349 Int) Bool)

(assert (=> b!1086609 (exists!173 lt!363581 lambda!40298)))

(declare-fun lt!363580 () Context!990)

(declare-fun getWitness!88 ((InoxSet Context!990) Int) Context!990)

(assert (=> b!1086609 (= lt!363580 (getWitness!88 (filter!177 z!1122 lambda!40297) lambda!40298))))

(declare-fun lt!363577 () Unit!15723)

(declare-fun filterPost!22 ((InoxSet Context!990) Int Context!990) Unit!15723)

(assert (=> b!1086609 (= lt!363577 (filterPost!22 z!1122 lambda!40297 lt!363580))))

(declare-fun lt!363578 () Unit!15723)

(declare-fun lemmaContainsThenExists!29 ((InoxSet Context!990) Context!990 Int) Unit!15723)

(assert (=> b!1086609 (= lt!363578 (lemmaContainsThenExists!29 z!1122 lt!363580 lambda!40298))))

(declare-fun exists!174 ((InoxSet Context!990) Int) Bool)

(assert (=> b!1086609 (exists!174 z!1122 lambda!40298)))

(declare-fun lt!363576 () Unit!15723)

(declare-fun lt!363579 () List!10349)

(declare-fun lemmaExistsMatchingContextThenMatchingString!6 (List!10349 List!10350) Unit!15723)

(assert (=> b!1086609 (= lt!363576 (lemmaExistsMatchingContextThenMatchingString!6 lt!363579 s!2287))))

(declare-fun res!483208 () Bool)

(declare-fun content!1484 (List!10349) (InoxSet Context!990))

(assert (=> b!1086609 (= res!483208 (matchZipper!63 (content!1484 lt!363579) s!2287))))

(declare-fun e!687269 () Bool)

(assert (=> b!1086609 (=> (not res!483208) (not e!687269))))

(assert (=> b!1086609 e!687269))

(declare-fun b!1086610 () Bool)

(declare-fun res!483209 () Bool)

(assert (=> b!1086610 (=> (not res!483209) (not e!687266))))

(assert (=> b!1086610 (= res!483209 (not (matchZipper!63 z!1122 s!2287)))))

(declare-fun b!1086611 () Bool)

(declare-fun tp!325466 () Bool)

(assert (=> b!1086611 (= e!687268 tp!325466)))

(declare-fun b!1086612 () Bool)

(declare-fun e!687270 () Bool)

(declare-fun tp!325470 () Bool)

(assert (=> b!1086612 (= e!687270 tp!325470)))

(declare-fun b!1086613 () Bool)

(assert (=> b!1086613 (= e!687269 false)))

(declare-fun setIsEmpty!7620 () Bool)

(declare-fun setRes!7620 () Bool)

(assert (=> setIsEmpty!7620 setRes!7620))

(declare-fun res!483207 () Bool)

(assert (=> start!92642 (=> (not res!483207) (not e!687266))))

(assert (=> start!92642 (= res!483207 (= lt!363579 zl!316))))

(assert (=> start!92642 (= lt!363579 (toList!633 z!1122))))

(assert (=> start!92642 e!687266))

(declare-fun condSetEmpty!7620 () Bool)

(assert (=> start!92642 (= condSetEmpty!7620 (= z!1122 ((as const (Array Context!990 Bool)) false)))))

(assert (=> start!92642 setRes!7620))

(assert (=> start!92642 e!687264))

(declare-fun e!687265 () Bool)

(assert (=> start!92642 e!687265))

(declare-fun tp!325467 () Bool)

(declare-fun setNonEmpty!7620 () Bool)

(declare-fun setElem!7620 () Context!990)

(assert (=> setNonEmpty!7620 (= setRes!7620 (and tp!325467 (inv!13250 setElem!7620) e!687270))))

(declare-fun setRest!7620 () (InoxSet Context!990))

(assert (=> setNonEmpty!7620 (= z!1122 ((_ map or) (store ((as const (Array Context!990 Bool)) false) setElem!7620 true) setRest!7620))))

(declare-fun b!1086614 () Bool)

(declare-fun Unit!15726 () Unit!15723)

(assert (=> b!1086614 (= e!687267 Unit!15726)))

(declare-fun b!1086615 () Bool)

(declare-fun tp_is_empty!5661 () Bool)

(declare-fun tp!325468 () Bool)

(assert (=> b!1086615 (= e!687265 (and tp_is_empty!5661 tp!325468))))

(assert (= (and start!92642 res!483207) b!1086610))

(assert (= (and b!1086610 res!483209) b!1086608))

(assert (= (and b!1086608 c!183854) b!1086609))

(assert (= (and b!1086608 (not c!183854)) b!1086614))

(assert (= (and b!1086609 res!483208) b!1086613))

(assert (= (and start!92642 condSetEmpty!7620) setIsEmpty!7620))

(assert (= (and start!92642 (not condSetEmpty!7620)) setNonEmpty!7620))

(assert (= setNonEmpty!7620 b!1086612))

(assert (= b!1086607 b!1086611))

(get-info :version)

(assert (= (and start!92642 ((_ is Cons!10333) zl!316)) b!1086607))

(assert (= (and start!92642 ((_ is Cons!10334) s!2287)) b!1086615))

(declare-fun m!1236635 () Bool)

(assert (=> setNonEmpty!7620 m!1236635))

(declare-fun m!1236637 () Bool)

(assert (=> start!92642 m!1236637))

(declare-fun m!1236639 () Bool)

(assert (=> b!1086607 m!1236639))

(declare-fun m!1236641 () Bool)

(assert (=> b!1086609 m!1236641))

(declare-fun m!1236643 () Bool)

(assert (=> b!1086609 m!1236643))

(assert (=> b!1086609 m!1236641))

(declare-fun m!1236645 () Bool)

(assert (=> b!1086609 m!1236645))

(assert (=> b!1086609 m!1236641))

(declare-fun m!1236647 () Bool)

(assert (=> b!1086609 m!1236647))

(declare-fun m!1236649 () Bool)

(assert (=> b!1086609 m!1236649))

(declare-fun m!1236651 () Bool)

(assert (=> b!1086609 m!1236651))

(declare-fun m!1236653 () Bool)

(assert (=> b!1086609 m!1236653))

(declare-fun m!1236655 () Bool)

(assert (=> b!1086609 m!1236655))

(assert (=> b!1086609 m!1236641))

(declare-fun m!1236657 () Bool)

(assert (=> b!1086609 m!1236657))

(declare-fun m!1236659 () Bool)

(assert (=> b!1086609 m!1236659))

(assert (=> b!1086609 m!1236647))

(declare-fun m!1236661 () Bool)

(assert (=> b!1086609 m!1236661))

(assert (=> b!1086608 m!1236641))

(assert (=> b!1086608 m!1236641))

(declare-fun m!1236663 () Bool)

(assert (=> b!1086608 m!1236663))

(assert (=> b!1086608 m!1236641))

(assert (=> b!1086608 m!1236641))

(assert (=> b!1086608 m!1236663))

(declare-fun m!1236665 () Bool)

(assert (=> b!1086610 m!1236665))

(check-sat (not b!1086612) (not b!1086608) (not b!1086610) (not b!1086609) (not b!1086611) tp_is_empty!5661 (not b!1086607) (not start!92642) (not setNonEmpty!7620) (not b!1086615))
(check-sat)
