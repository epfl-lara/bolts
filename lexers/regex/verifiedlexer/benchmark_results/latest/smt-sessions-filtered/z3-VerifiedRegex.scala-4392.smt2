; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!233468 () Bool)

(assert start!233468)

(declare-fun b!2379328 () Bool)

(assert (=> b!2379328 true))

(assert (=> b!2379328 true))

(declare-fun lambda!88567 () Int)

(declare-fun lambda!88566 () Int)

(assert (=> b!2379328 (not (= lambda!88567 lambda!88566))))

(assert (=> b!2379328 true))

(assert (=> b!2379328 true))

(declare-fun b!2379327 () Bool)

(declare-fun e!1517725 () Bool)

(assert (=> b!2379327 (= e!1517725 false)))

(declare-fun e!1517729 () Bool)

(declare-fun e!1517736 () Bool)

(assert (=> b!2379328 (= e!1517729 e!1517736)))

(declare-fun res!1010391 () Bool)

(assert (=> b!2379328 (=> res!1010391 e!1517736)))

(declare-fun lt!867863 () Bool)

(declare-fun lt!867864 () Bool)

(assert (=> b!2379328 (= res!1010391 (not (= lt!867863 lt!867864)))))

(declare-fun Exists!1039 (Int) Bool)

(assert (=> b!2379328 (= (Exists!1039 lambda!88566) (Exists!1039 lambda!88567))))

(declare-datatypes ((Unit!41003 0))(
  ( (Unit!41004) )
))
(declare-fun lt!867866 () Unit!41003)

(declare-datatypes ((C!14112 0))(
  ( (C!14113 (val!8298 Int)) )
))
(declare-datatypes ((Regex!6977 0))(
  ( (ElementMatch!6977 (c!378217 C!14112)) (Concat!11613 (regOne!14466 Regex!6977) (regTwo!14466 Regex!6977)) (EmptyExpr!6977) (Star!6977 (reg!7306 Regex!6977)) (EmptyLang!6977) (Union!6977 (regOne!14467 Regex!6977) (regTwo!14467 Regex!6977)) )
))
(declare-fun r!13927 () Regex!6977)

(declare-datatypes ((List!28192 0))(
  ( (Nil!28094) (Cons!28094 (h!33495 C!14112) (t!208169 List!28192)) )
))
(declare-fun s!9460 () List!28192)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!378 (Regex!6977 Regex!6977 List!28192) Unit!41003)

(assert (=> b!2379328 (= lt!867866 (lemmaExistCutMatchRandMatchRSpecEquivalent!378 (regOne!14466 r!13927) (regTwo!14466 r!13927) s!9460))))

(assert (=> b!2379328 (= lt!867864 (Exists!1039 lambda!88566))))

(declare-datatypes ((tuple2!27818 0))(
  ( (tuple2!27819 (_1!16450 List!28192) (_2!16450 List!28192)) )
))
(declare-datatypes ((Option!5520 0))(
  ( (None!5519) (Some!5519 (v!30927 tuple2!27818)) )
))
(declare-fun isDefined!4348 (Option!5520) Bool)

(declare-fun findConcatSeparation!628 (Regex!6977 Regex!6977 List!28192 List!28192 List!28192) Option!5520)

(assert (=> b!2379328 (= lt!867864 (isDefined!4348 (findConcatSeparation!628 (regOne!14466 r!13927) (regTwo!14466 r!13927) Nil!28094 s!9460 s!9460)))))

(declare-fun lt!867862 () Unit!41003)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!628 (Regex!6977 Regex!6977 List!28192) Unit!41003)

(assert (=> b!2379328 (= lt!867862 (lemmaFindConcatSeparationEquivalentToExists!628 (regOne!14466 r!13927) (regTwo!14466 r!13927) s!9460))))

(declare-fun b!2379329 () Bool)

(declare-fun e!1517734 () Unit!41003)

(declare-fun Unit!41005 () Unit!41003)

(assert (=> b!2379329 (= e!1517734 Unit!41005)))

(declare-fun lt!867860 () tuple2!27818)

(declare-fun lt!867865 () Option!5520)

(declare-fun get!8564 (Option!5520) tuple2!27818)

(assert (=> b!2379329 (= lt!867860 (get!8564 lt!867865))))

(declare-fun lt!867872 () Regex!6977)

(declare-fun lt!867861 () Unit!41003)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!8 (Regex!6977 Regex!6977 List!28192 List!28192 List!28192) Unit!41003)

(assert (=> b!2379329 (= lt!867861 (lemmaFindSeparationIsDefinedThenConcatMatches!8 lt!867872 EmptyExpr!6977 (_1!16450 lt!867860) (_2!16450 lt!867860) s!9460))))

(declare-fun res!1010393 () Bool)

(declare-fun matchR!3094 (Regex!6977 List!28192) Bool)

(declare-fun ++!6932 (List!28192 List!28192) List!28192)

(assert (=> b!2379329 (= res!1010393 (matchR!3094 (Concat!11613 lt!867872 EmptyExpr!6977) (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860))))))

(assert (=> b!2379329 (=> (not res!1010393) (not e!1517725))))

(assert (=> b!2379329 e!1517725))

(declare-fun b!2379330 () Bool)

(declare-fun e!1517733 () Bool)

(declare-fun tp_is_empty!11367 () Bool)

(declare-fun tp!759754 () Bool)

(assert (=> b!2379330 (= e!1517733 (and tp_is_empty!11367 tp!759754))))

(declare-fun b!2379331 () Bool)

(declare-fun e!1517726 () Bool)

(declare-fun lt!867869 () Regex!6977)

(declare-fun validRegex!2702 (Regex!6977) Bool)

(assert (=> b!2379331 (= e!1517726 (validRegex!2702 lt!867869))))

(declare-fun b!2379332 () Bool)

(declare-fun e!1517730 () Bool)

(declare-fun e!1517735 () Bool)

(assert (=> b!2379332 (= e!1517730 e!1517735)))

(declare-fun res!1010386 () Bool)

(assert (=> b!2379332 (=> res!1010386 e!1517735)))

(assert (=> b!2379332 (= res!1010386 (not (= lt!867869 EmptyExpr!6977)))))

(declare-datatypes ((List!28193 0))(
  ( (Nil!28095) (Cons!28095 (h!33496 Regex!6977) (t!208170 List!28193)) )
))
(declare-fun lt!867867 () List!28193)

(declare-fun generalisedConcat!78 (List!28193) Regex!6977)

(assert (=> b!2379332 (= lt!867869 (generalisedConcat!78 lt!867867))))

(declare-fun b!2379333 () Bool)

(declare-fun Unit!41006 () Unit!41003)

(assert (=> b!2379333 (= e!1517734 Unit!41006)))

(declare-fun b!2379334 () Bool)

(declare-fun e!1517731 () Bool)

(assert (=> b!2379334 (= e!1517731 e!1517726)))

(declare-fun res!1010390 () Bool)

(assert (=> b!2379334 (=> res!1010390 e!1517726)))

(assert (=> b!2379334 (= res!1010390 (not (validRegex!2702 lt!867872)))))

(declare-fun lt!867859 () Bool)

(assert (=> b!2379334 (not lt!867859)))

(declare-fun lt!867870 () Unit!41003)

(assert (=> b!2379334 (= lt!867870 e!1517734)))

(declare-fun c!378216 () Bool)

(assert (=> b!2379334 (= c!378216 lt!867859)))

(assert (=> b!2379334 (= lt!867859 (isDefined!4348 lt!867865))))

(assert (=> b!2379334 (= lt!867865 (findConcatSeparation!628 lt!867872 EmptyExpr!6977 Nil!28094 s!9460 s!9460))))

(declare-fun b!2379335 () Bool)

(declare-fun e!1517727 () Bool)

(assert (=> b!2379335 (= e!1517727 tp_is_empty!11367)))

(declare-fun b!2379336 () Bool)

(declare-fun e!1517728 () Bool)

(assert (=> b!2379336 (= e!1517728 (not e!1517729))))

(declare-fun res!1010392 () Bool)

(assert (=> b!2379336 (=> res!1010392 e!1517729)))

(get-info :version)

(assert (=> b!2379336 (= res!1010392 (not ((_ is Concat!11613) r!13927)))))

(declare-fun lt!867868 () Bool)

(assert (=> b!2379336 (= lt!867868 lt!867863)))

(declare-fun matchRSpec!826 (Regex!6977 List!28192) Bool)

(assert (=> b!2379336 (= lt!867863 (matchRSpec!826 r!13927 s!9460))))

(assert (=> b!2379336 (= lt!867868 (matchR!3094 r!13927 s!9460))))

(declare-fun lt!867871 () Unit!41003)

(declare-fun mainMatchTheorem!826 (Regex!6977 List!28192) Unit!41003)

(assert (=> b!2379336 (= lt!867871 (mainMatchTheorem!826 r!13927 s!9460))))

(declare-fun b!2379337 () Bool)

(declare-fun res!1010385 () Bool)

(assert (=> b!2379337 (=> res!1010385 e!1517736)))

(declare-fun l!9164 () List!28193)

(declare-fun isEmpty!16039 (List!28193) Bool)

(assert (=> b!2379337 (= res!1010385 (isEmpty!16039 l!9164))))

(declare-fun b!2379338 () Bool)

(declare-fun res!1010387 () Bool)

(assert (=> b!2379338 (=> (not res!1010387) (not e!1517728))))

(assert (=> b!2379338 (= res!1010387 (= r!13927 (generalisedConcat!78 l!9164)))))

(declare-fun b!2379339 () Bool)

(assert (=> b!2379339 (= e!1517735 e!1517731)))

(declare-fun res!1010388 () Bool)

(assert (=> b!2379339 (=> res!1010388 e!1517731)))

(assert (=> b!2379339 (= res!1010388 (matchR!3094 lt!867872 s!9460))))

(declare-fun head!5186 (List!28193) Regex!6977)

(assert (=> b!2379339 (= lt!867872 (head!5186 l!9164))))

(declare-fun b!2379340 () Bool)

(declare-fun tp!759757 () Bool)

(declare-fun tp!759753 () Bool)

(assert (=> b!2379340 (= e!1517727 (and tp!759757 tp!759753))))

(declare-fun b!2379341 () Bool)

(assert (=> b!2379341 (= e!1517736 e!1517730)))

(declare-fun res!1010389 () Bool)

(assert (=> b!2379341 (=> res!1010389 e!1517730)))

(assert (=> b!2379341 (= res!1010389 (not (isEmpty!16039 lt!867867)))))

(declare-fun tail!3456 (List!28193) List!28193)

(assert (=> b!2379341 (= lt!867867 (tail!3456 l!9164))))

(declare-fun res!1010394 () Bool)

(assert (=> start!233468 (=> (not res!1010394) (not e!1517728))))

(declare-fun lambda!88565 () Int)

(declare-fun forall!5611 (List!28193 Int) Bool)

(assert (=> start!233468 (= res!1010394 (forall!5611 l!9164 lambda!88565))))

(assert (=> start!233468 e!1517728))

(declare-fun e!1517732 () Bool)

(assert (=> start!233468 e!1517732))

(assert (=> start!233468 e!1517727))

(assert (=> start!233468 e!1517733))

(declare-fun b!2379342 () Bool)

(declare-fun tp!759759 () Bool)

(assert (=> b!2379342 (= e!1517727 tp!759759)))

(declare-fun b!2379343 () Bool)

(declare-fun tp!759758 () Bool)

(declare-fun tp!759752 () Bool)

(assert (=> b!2379343 (= e!1517727 (and tp!759758 tp!759752))))

(declare-fun b!2379344 () Bool)

(declare-fun tp!759755 () Bool)

(declare-fun tp!759756 () Bool)

(assert (=> b!2379344 (= e!1517732 (and tp!759755 tp!759756))))

(assert (= (and start!233468 res!1010394) b!2379338))

(assert (= (and b!2379338 res!1010387) b!2379336))

(assert (= (and b!2379336 (not res!1010392)) b!2379328))

(assert (= (and b!2379328 (not res!1010391)) b!2379337))

(assert (= (and b!2379337 (not res!1010385)) b!2379341))

(assert (= (and b!2379341 (not res!1010389)) b!2379332))

(assert (= (and b!2379332 (not res!1010386)) b!2379339))

(assert (= (and b!2379339 (not res!1010388)) b!2379334))

(assert (= (and b!2379334 c!378216) b!2379329))

(assert (= (and b!2379334 (not c!378216)) b!2379333))

(assert (= (and b!2379329 res!1010393) b!2379327))

(assert (= (and b!2379334 (not res!1010390)) b!2379331))

(assert (= (and start!233468 ((_ is Cons!28095) l!9164)) b!2379344))

(assert (= (and start!233468 ((_ is ElementMatch!6977) r!13927)) b!2379335))

(assert (= (and start!233468 ((_ is Concat!11613) r!13927)) b!2379343))

(assert (= (and start!233468 ((_ is Star!6977) r!13927)) b!2379342))

(assert (= (and start!233468 ((_ is Union!6977) r!13927)) b!2379340))

(assert (= (and start!233468 ((_ is Cons!28094) s!9460)) b!2379330))

(declare-fun m!2783689 () Bool)

(assert (=> b!2379337 m!2783689))

(declare-fun m!2783691 () Bool)

(assert (=> b!2379328 m!2783691))

(declare-fun m!2783693 () Bool)

(assert (=> b!2379328 m!2783693))

(assert (=> b!2379328 m!2783691))

(declare-fun m!2783695 () Bool)

(assert (=> b!2379328 m!2783695))

(declare-fun m!2783697 () Bool)

(assert (=> b!2379328 m!2783697))

(declare-fun m!2783699 () Bool)

(assert (=> b!2379328 m!2783699))

(declare-fun m!2783701 () Bool)

(assert (=> b!2379328 m!2783701))

(assert (=> b!2379328 m!2783699))

(declare-fun m!2783703 () Bool)

(assert (=> b!2379332 m!2783703))

(declare-fun m!2783705 () Bool)

(assert (=> b!2379341 m!2783705))

(declare-fun m!2783707 () Bool)

(assert (=> b!2379341 m!2783707))

(declare-fun m!2783709 () Bool)

(assert (=> b!2379334 m!2783709))

(declare-fun m!2783711 () Bool)

(assert (=> b!2379334 m!2783711))

(declare-fun m!2783713 () Bool)

(assert (=> b!2379334 m!2783713))

(declare-fun m!2783715 () Bool)

(assert (=> b!2379339 m!2783715))

(declare-fun m!2783717 () Bool)

(assert (=> b!2379339 m!2783717))

(declare-fun m!2783719 () Bool)

(assert (=> b!2379336 m!2783719))

(declare-fun m!2783721 () Bool)

(assert (=> b!2379336 m!2783721))

(declare-fun m!2783723 () Bool)

(assert (=> b!2379336 m!2783723))

(declare-fun m!2783725 () Bool)

(assert (=> b!2379331 m!2783725))

(declare-fun m!2783727 () Bool)

(assert (=> b!2379329 m!2783727))

(declare-fun m!2783729 () Bool)

(assert (=> b!2379329 m!2783729))

(declare-fun m!2783731 () Bool)

(assert (=> b!2379329 m!2783731))

(assert (=> b!2379329 m!2783731))

(declare-fun m!2783733 () Bool)

(assert (=> b!2379329 m!2783733))

(declare-fun m!2783735 () Bool)

(assert (=> start!233468 m!2783735))

(declare-fun m!2783737 () Bool)

(assert (=> b!2379338 m!2783737))

(check-sat (not b!2379338) (not b!2379341) (not b!2379334) (not b!2379330) (not b!2379336) (not b!2379329) (not b!2379340) (not b!2379337) (not b!2379339) (not b!2379332) (not b!2379328) (not b!2379343) (not b!2379342) tp_is_empty!11367 (not start!233468) (not b!2379344) (not b!2379331))
(check-sat)
(get-model)

(declare-fun bs!461772 () Bool)

(declare-fun d!696459 () Bool)

(assert (= bs!461772 (and d!696459 start!233468)))

(declare-fun lambda!88570 () Int)

(assert (=> bs!461772 (= lambda!88570 lambda!88565)))

(declare-fun b!2379423 () Bool)

(declare-fun e!1517787 () Regex!6977)

(assert (=> b!2379423 (= e!1517787 (h!33496 l!9164))))

(declare-fun b!2379424 () Bool)

(declare-fun e!1517785 () Regex!6977)

(assert (=> b!2379424 (= e!1517787 e!1517785)))

(declare-fun c!378238 () Bool)

(assert (=> b!2379424 (= c!378238 ((_ is Cons!28095) l!9164))))

(declare-fun b!2379425 () Bool)

(declare-fun e!1517788 () Bool)

(declare-fun lt!867884 () Regex!6977)

(assert (=> b!2379425 (= e!1517788 (= lt!867884 (head!5186 l!9164)))))

(declare-fun b!2379426 () Bool)

(declare-fun e!1517790 () Bool)

(declare-fun e!1517789 () Bool)

(assert (=> b!2379426 (= e!1517790 e!1517789)))

(declare-fun c!378239 () Bool)

(assert (=> b!2379426 (= c!378239 (isEmpty!16039 l!9164))))

(declare-fun b!2379428 () Bool)

(assert (=> b!2379428 (= e!1517785 (Concat!11613 (h!33496 l!9164) (generalisedConcat!78 (t!208170 l!9164))))))

(declare-fun b!2379429 () Bool)

(assert (=> b!2379429 (= e!1517785 EmptyExpr!6977)))

(declare-fun b!2379430 () Bool)

(declare-fun isConcat!47 (Regex!6977) Bool)

(assert (=> b!2379430 (= e!1517788 (isConcat!47 lt!867884))))

(assert (=> d!696459 e!1517790))

(declare-fun res!1010430 () Bool)

(assert (=> d!696459 (=> (not res!1010430) (not e!1517790))))

(assert (=> d!696459 (= res!1010430 (validRegex!2702 lt!867884))))

(assert (=> d!696459 (= lt!867884 e!1517787)))

(declare-fun c!378240 () Bool)

(declare-fun e!1517786 () Bool)

(assert (=> d!696459 (= c!378240 e!1517786)))

(declare-fun res!1010429 () Bool)

(assert (=> d!696459 (=> (not res!1010429) (not e!1517786))))

(assert (=> d!696459 (= res!1010429 ((_ is Cons!28095) l!9164))))

(assert (=> d!696459 (forall!5611 l!9164 lambda!88570)))

(assert (=> d!696459 (= (generalisedConcat!78 l!9164) lt!867884)))

(declare-fun b!2379427 () Bool)

(assert (=> b!2379427 (= e!1517789 e!1517788)))

(declare-fun c!378241 () Bool)

(assert (=> b!2379427 (= c!378241 (isEmpty!16039 (tail!3456 l!9164)))))

(declare-fun b!2379431 () Bool)

(assert (=> b!2379431 (= e!1517786 (isEmpty!16039 (t!208170 l!9164)))))

(declare-fun b!2379432 () Bool)

(declare-fun isEmptyExpr!47 (Regex!6977) Bool)

(assert (=> b!2379432 (= e!1517789 (isEmptyExpr!47 lt!867884))))

(assert (= (and d!696459 res!1010429) b!2379431))

(assert (= (and d!696459 c!378240) b!2379423))

(assert (= (and d!696459 (not c!378240)) b!2379424))

(assert (= (and b!2379424 c!378238) b!2379428))

(assert (= (and b!2379424 (not c!378238)) b!2379429))

(assert (= (and d!696459 res!1010430) b!2379426))

(assert (= (and b!2379426 c!378239) b!2379432))

(assert (= (and b!2379426 (not c!378239)) b!2379427))

(assert (= (and b!2379427 c!378241) b!2379425))

(assert (= (and b!2379427 (not c!378241)) b!2379430))

(assert (=> b!2379425 m!2783717))

(declare-fun m!2783769 () Bool)

(assert (=> b!2379430 m!2783769))

(assert (=> b!2379427 m!2783707))

(assert (=> b!2379427 m!2783707))

(declare-fun m!2783771 () Bool)

(assert (=> b!2379427 m!2783771))

(assert (=> b!2379426 m!2783689))

(declare-fun m!2783773 () Bool)

(assert (=> b!2379432 m!2783773))

(declare-fun m!2783775 () Bool)

(assert (=> b!2379431 m!2783775))

(declare-fun m!2783777 () Bool)

(assert (=> d!696459 m!2783777))

(declare-fun m!2783779 () Bool)

(assert (=> d!696459 m!2783779))

(declare-fun m!2783781 () Bool)

(assert (=> b!2379428 m!2783781))

(assert (=> b!2379338 d!696459))

(declare-fun d!696471 () Bool)

(assert (=> d!696471 (= (isEmpty!16039 l!9164) ((_ is Nil!28095) l!9164))))

(assert (=> b!2379337 d!696471))

(declare-fun b!2379590 () Bool)

(declare-fun e!1517881 () Bool)

(declare-fun nullable!2027 (Regex!6977) Bool)

(assert (=> b!2379590 (= e!1517881 (nullable!2027 lt!867872))))

(declare-fun b!2379591 () Bool)

(declare-fun res!1010510 () Bool)

(declare-fun e!1517886 () Bool)

(assert (=> b!2379591 (=> res!1010510 e!1517886)))

(declare-fun isEmpty!16042 (List!28192) Bool)

(declare-fun tail!3458 (List!28192) List!28192)

(assert (=> b!2379591 (= res!1010510 (not (isEmpty!16042 (tail!3458 s!9460))))))

(declare-fun d!696473 () Bool)

(declare-fun e!1517883 () Bool)

(assert (=> d!696473 e!1517883))

(declare-fun c!378285 () Bool)

(assert (=> d!696473 (= c!378285 ((_ is EmptyExpr!6977) lt!867872))))

(declare-fun lt!867894 () Bool)

(assert (=> d!696473 (= lt!867894 e!1517881)))

(declare-fun c!378284 () Bool)

(assert (=> d!696473 (= c!378284 (isEmpty!16042 s!9460))))

(assert (=> d!696473 (validRegex!2702 lt!867872)))

(assert (=> d!696473 (= (matchR!3094 lt!867872 s!9460) lt!867894)))

(declare-fun bm!144535 () Bool)

(declare-fun call!144540 () Bool)

(assert (=> bm!144535 (= call!144540 (isEmpty!16042 s!9460))))

(declare-fun b!2379592 () Bool)

(declare-fun res!1010506 () Bool)

(declare-fun e!1517885 () Bool)

(assert (=> b!2379592 (=> (not res!1010506) (not e!1517885))))

(assert (=> b!2379592 (= res!1010506 (not call!144540))))

(declare-fun b!2379593 () Bool)

(declare-fun e!1517887 () Bool)

(assert (=> b!2379593 (= e!1517887 (not lt!867894))))

(declare-fun b!2379594 () Bool)

(assert (=> b!2379594 (= e!1517883 e!1517887)))

(declare-fun c!378283 () Bool)

(assert (=> b!2379594 (= c!378283 ((_ is EmptyLang!6977) lt!867872))))

(declare-fun b!2379595 () Bool)

(declare-fun head!5188 (List!28192) C!14112)

(assert (=> b!2379595 (= e!1517885 (= (head!5188 s!9460) (c!378217 lt!867872)))))

(declare-fun b!2379596 () Bool)

(declare-fun res!1010512 () Bool)

(declare-fun e!1517882 () Bool)

(assert (=> b!2379596 (=> res!1010512 e!1517882)))

(assert (=> b!2379596 (= res!1010512 (not ((_ is ElementMatch!6977) lt!867872)))))

(assert (=> b!2379596 (= e!1517887 e!1517882)))

(declare-fun b!2379597 () Bool)

(assert (=> b!2379597 (= e!1517886 (not (= (head!5188 s!9460) (c!378217 lt!867872))))))

(declare-fun b!2379598 () Bool)

(declare-fun derivativeStep!1685 (Regex!6977 C!14112) Regex!6977)

(assert (=> b!2379598 (= e!1517881 (matchR!3094 (derivativeStep!1685 lt!867872 (head!5188 s!9460)) (tail!3458 s!9460)))))

(declare-fun b!2379599 () Bool)

(declare-fun e!1517884 () Bool)

(assert (=> b!2379599 (= e!1517884 e!1517886)))

(declare-fun res!1010508 () Bool)

(assert (=> b!2379599 (=> res!1010508 e!1517886)))

(assert (=> b!2379599 (= res!1010508 call!144540)))

(declare-fun b!2379600 () Bool)

(declare-fun res!1010513 () Bool)

(assert (=> b!2379600 (=> res!1010513 e!1517882)))

(assert (=> b!2379600 (= res!1010513 e!1517885)))

(declare-fun res!1010511 () Bool)

(assert (=> b!2379600 (=> (not res!1010511) (not e!1517885))))

(assert (=> b!2379600 (= res!1010511 lt!867894)))

(declare-fun b!2379601 () Bool)

(assert (=> b!2379601 (= e!1517882 e!1517884)))

(declare-fun res!1010507 () Bool)

(assert (=> b!2379601 (=> (not res!1010507) (not e!1517884))))

(assert (=> b!2379601 (= res!1010507 (not lt!867894))))

(declare-fun b!2379602 () Bool)

(assert (=> b!2379602 (= e!1517883 (= lt!867894 call!144540))))

(declare-fun b!2379603 () Bool)

(declare-fun res!1010509 () Bool)

(assert (=> b!2379603 (=> (not res!1010509) (not e!1517885))))

(assert (=> b!2379603 (= res!1010509 (isEmpty!16042 (tail!3458 s!9460)))))

(assert (= (and d!696473 c!378284) b!2379590))

(assert (= (and d!696473 (not c!378284)) b!2379598))

(assert (= (and d!696473 c!378285) b!2379602))

(assert (= (and d!696473 (not c!378285)) b!2379594))

(assert (= (and b!2379594 c!378283) b!2379593))

(assert (= (and b!2379594 (not c!378283)) b!2379596))

(assert (= (and b!2379596 (not res!1010512)) b!2379600))

(assert (= (and b!2379600 res!1010511) b!2379592))

(assert (= (and b!2379592 res!1010506) b!2379603))

(assert (= (and b!2379603 res!1010509) b!2379595))

(assert (= (and b!2379600 (not res!1010513)) b!2379601))

(assert (= (and b!2379601 res!1010507) b!2379599))

(assert (= (and b!2379599 (not res!1010508)) b!2379591))

(assert (= (and b!2379591 (not res!1010510)) b!2379597))

(assert (= (or b!2379602 b!2379592 b!2379599) bm!144535))

(declare-fun m!2783839 () Bool)

(assert (=> d!696473 m!2783839))

(assert (=> d!696473 m!2783709))

(declare-fun m!2783841 () Bool)

(assert (=> b!2379597 m!2783841))

(assert (=> b!2379595 m!2783841))

(assert (=> b!2379598 m!2783841))

(assert (=> b!2379598 m!2783841))

(declare-fun m!2783843 () Bool)

(assert (=> b!2379598 m!2783843))

(declare-fun m!2783845 () Bool)

(assert (=> b!2379598 m!2783845))

(assert (=> b!2379598 m!2783843))

(assert (=> b!2379598 m!2783845))

(declare-fun m!2783847 () Bool)

(assert (=> b!2379598 m!2783847))

(declare-fun m!2783849 () Bool)

(assert (=> b!2379590 m!2783849))

(assert (=> b!2379591 m!2783845))

(assert (=> b!2379591 m!2783845))

(declare-fun m!2783851 () Bool)

(assert (=> b!2379591 m!2783851))

(assert (=> bm!144535 m!2783839))

(assert (=> b!2379603 m!2783845))

(assert (=> b!2379603 m!2783845))

(assert (=> b!2379603 m!2783851))

(assert (=> b!2379339 d!696473))

(declare-fun d!696489 () Bool)

(assert (=> d!696489 (= (head!5186 l!9164) (h!33496 l!9164))))

(assert (=> b!2379339 d!696489))

(declare-fun d!696491 () Bool)

(declare-fun isEmpty!16043 (Option!5520) Bool)

(assert (=> d!696491 (= (isDefined!4348 (findConcatSeparation!628 (regOne!14466 r!13927) (regTwo!14466 r!13927) Nil!28094 s!9460 s!9460)) (not (isEmpty!16043 (findConcatSeparation!628 (regOne!14466 r!13927) (regTwo!14466 r!13927) Nil!28094 s!9460 s!9460))))))

(declare-fun bs!461777 () Bool)

(assert (= bs!461777 d!696491))

(assert (=> bs!461777 m!2783691))

(declare-fun m!2783853 () Bool)

(assert (=> bs!461777 m!2783853))

(assert (=> b!2379328 d!696491))

(declare-fun bs!461784 () Bool)

(declare-fun d!696493 () Bool)

(assert (= bs!461784 (and d!696493 b!2379328)))

(declare-fun lambda!88583 () Int)

(assert (=> bs!461784 (= lambda!88583 lambda!88566)))

(assert (=> bs!461784 (not (= lambda!88583 lambda!88567))))

(assert (=> d!696493 true))

(assert (=> d!696493 true))

(assert (=> d!696493 true))

(assert (=> d!696493 (= (isDefined!4348 (findConcatSeparation!628 (regOne!14466 r!13927) (regTwo!14466 r!13927) Nil!28094 s!9460 s!9460)) (Exists!1039 lambda!88583))))

(declare-fun lt!867908 () Unit!41003)

(declare-fun choose!13904 (Regex!6977 Regex!6977 List!28192) Unit!41003)

(assert (=> d!696493 (= lt!867908 (choose!13904 (regOne!14466 r!13927) (regTwo!14466 r!13927) s!9460))))

(assert (=> d!696493 (validRegex!2702 (regOne!14466 r!13927))))

(assert (=> d!696493 (= (lemmaFindConcatSeparationEquivalentToExists!628 (regOne!14466 r!13927) (regTwo!14466 r!13927) s!9460) lt!867908)))

(declare-fun bs!461785 () Bool)

(assert (= bs!461785 d!696493))

(declare-fun m!2783907 () Bool)

(assert (=> bs!461785 m!2783907))

(declare-fun m!2783909 () Bool)

(assert (=> bs!461785 m!2783909))

(assert (=> bs!461785 m!2783691))

(assert (=> bs!461785 m!2783693))

(declare-fun m!2783911 () Bool)

(assert (=> bs!461785 m!2783911))

(assert (=> bs!461785 m!2783691))

(assert (=> b!2379328 d!696493))

(declare-fun bs!461797 () Bool)

(declare-fun d!696513 () Bool)

(assert (= bs!461797 (and d!696513 b!2379328)))

(declare-fun lambda!88597 () Int)

(assert (=> bs!461797 (= lambda!88597 lambda!88566)))

(assert (=> bs!461797 (not (= lambda!88597 lambda!88567))))

(declare-fun bs!461798 () Bool)

(assert (= bs!461798 (and d!696513 d!696493)))

(assert (=> bs!461798 (= lambda!88597 lambda!88583)))

(assert (=> d!696513 true))

(assert (=> d!696513 true))

(assert (=> d!696513 true))

(declare-fun lambda!88598 () Int)

(assert (=> bs!461797 (not (= lambda!88598 lambda!88566))))

(assert (=> bs!461797 (= lambda!88598 lambda!88567)))

(assert (=> bs!461798 (not (= lambda!88598 lambda!88583))))

(declare-fun bs!461799 () Bool)

(assert (= bs!461799 d!696513))

(assert (=> bs!461799 (not (= lambda!88598 lambda!88597))))

(assert (=> d!696513 true))

(assert (=> d!696513 true))

(assert (=> d!696513 true))

(assert (=> d!696513 (= (Exists!1039 lambda!88597) (Exists!1039 lambda!88598))))

(declare-fun lt!867920 () Unit!41003)

(declare-fun choose!13906 (Regex!6977 Regex!6977 List!28192) Unit!41003)

(assert (=> d!696513 (= lt!867920 (choose!13906 (regOne!14466 r!13927) (regTwo!14466 r!13927) s!9460))))

(assert (=> d!696513 (validRegex!2702 (regOne!14466 r!13927))))

(assert (=> d!696513 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!378 (regOne!14466 r!13927) (regTwo!14466 r!13927) s!9460) lt!867920)))

(declare-fun m!2783945 () Bool)

(assert (=> bs!461799 m!2783945))

(declare-fun m!2783947 () Bool)

(assert (=> bs!461799 m!2783947))

(declare-fun m!2783949 () Bool)

(assert (=> bs!461799 m!2783949))

(assert (=> bs!461799 m!2783907))

(assert (=> b!2379328 d!696513))

(declare-fun d!696523 () Bool)

(declare-fun choose!13907 (Int) Bool)

(assert (=> d!696523 (= (Exists!1039 lambda!88566) (choose!13907 lambda!88566))))

(declare-fun bs!461800 () Bool)

(assert (= bs!461800 d!696523))

(declare-fun m!2783951 () Bool)

(assert (=> bs!461800 m!2783951))

(assert (=> b!2379328 d!696523))

(declare-fun d!696525 () Bool)

(assert (=> d!696525 (= (Exists!1039 lambda!88567) (choose!13907 lambda!88567))))

(declare-fun bs!461801 () Bool)

(assert (= bs!461801 d!696525))

(declare-fun m!2783953 () Bool)

(assert (=> bs!461801 m!2783953))

(assert (=> b!2379328 d!696525))

(declare-fun b!2379750 () Bool)

(declare-fun e!1517960 () Option!5520)

(assert (=> b!2379750 (= e!1517960 None!5519)))

(declare-fun b!2379751 () Bool)

(declare-fun e!1517957 () Bool)

(assert (=> b!2379751 (= e!1517957 (matchR!3094 (regTwo!14466 r!13927) s!9460))))

(declare-fun b!2379752 () Bool)

(declare-fun res!1010578 () Bool)

(declare-fun e!1517959 () Bool)

(assert (=> b!2379752 (=> (not res!1010578) (not e!1517959))))

(declare-fun lt!867928 () Option!5520)

(assert (=> b!2379752 (= res!1010578 (matchR!3094 (regTwo!14466 r!13927) (_2!16450 (get!8564 lt!867928))))))

(declare-fun d!696527 () Bool)

(declare-fun e!1517958 () Bool)

(assert (=> d!696527 e!1517958))

(declare-fun res!1010581 () Bool)

(assert (=> d!696527 (=> res!1010581 e!1517958)))

(assert (=> d!696527 (= res!1010581 e!1517959)))

(declare-fun res!1010579 () Bool)

(assert (=> d!696527 (=> (not res!1010579) (not e!1517959))))

(assert (=> d!696527 (= res!1010579 (isDefined!4348 lt!867928))))

(declare-fun e!1517956 () Option!5520)

(assert (=> d!696527 (= lt!867928 e!1517956)))

(declare-fun c!378305 () Bool)

(assert (=> d!696527 (= c!378305 e!1517957)))

(declare-fun res!1010580 () Bool)

(assert (=> d!696527 (=> (not res!1010580) (not e!1517957))))

(assert (=> d!696527 (= res!1010580 (matchR!3094 (regOne!14466 r!13927) Nil!28094))))

(assert (=> d!696527 (validRegex!2702 (regOne!14466 r!13927))))

(assert (=> d!696527 (= (findConcatSeparation!628 (regOne!14466 r!13927) (regTwo!14466 r!13927) Nil!28094 s!9460 s!9460) lt!867928)))

(declare-fun b!2379753 () Bool)

(assert (=> b!2379753 (= e!1517956 (Some!5519 (tuple2!27819 Nil!28094 s!9460)))))

(declare-fun b!2379754 () Bool)

(declare-fun lt!867929 () Unit!41003)

(declare-fun lt!867927 () Unit!41003)

(assert (=> b!2379754 (= lt!867929 lt!867927)))

(assert (=> b!2379754 (= (++!6932 (++!6932 Nil!28094 (Cons!28094 (h!33495 s!9460) Nil!28094)) (t!208169 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!574 (List!28192 C!14112 List!28192 List!28192) Unit!41003)

(assert (=> b!2379754 (= lt!867927 (lemmaMoveElementToOtherListKeepsConcatEq!574 Nil!28094 (h!33495 s!9460) (t!208169 s!9460) s!9460))))

(assert (=> b!2379754 (= e!1517960 (findConcatSeparation!628 (regOne!14466 r!13927) (regTwo!14466 r!13927) (++!6932 Nil!28094 (Cons!28094 (h!33495 s!9460) Nil!28094)) (t!208169 s!9460) s!9460))))

(declare-fun b!2379755 () Bool)

(assert (=> b!2379755 (= e!1517959 (= (++!6932 (_1!16450 (get!8564 lt!867928)) (_2!16450 (get!8564 lt!867928))) s!9460))))

(declare-fun b!2379756 () Bool)

(assert (=> b!2379756 (= e!1517956 e!1517960)))

(declare-fun c!378306 () Bool)

(assert (=> b!2379756 (= c!378306 ((_ is Nil!28094) s!9460))))

(declare-fun b!2379757 () Bool)

(assert (=> b!2379757 (= e!1517958 (not (isDefined!4348 lt!867928)))))

(declare-fun b!2379758 () Bool)

(declare-fun res!1010582 () Bool)

(assert (=> b!2379758 (=> (not res!1010582) (not e!1517959))))

(assert (=> b!2379758 (= res!1010582 (matchR!3094 (regOne!14466 r!13927) (_1!16450 (get!8564 lt!867928))))))

(assert (= (and d!696527 res!1010580) b!2379751))

(assert (= (and d!696527 c!378305) b!2379753))

(assert (= (and d!696527 (not c!378305)) b!2379756))

(assert (= (and b!2379756 c!378306) b!2379750))

(assert (= (and b!2379756 (not c!378306)) b!2379754))

(assert (= (and d!696527 res!1010579) b!2379758))

(assert (= (and b!2379758 res!1010582) b!2379752))

(assert (= (and b!2379752 res!1010578) b!2379755))

(assert (= (and d!696527 (not res!1010581)) b!2379757))

(declare-fun m!2783955 () Bool)

(assert (=> b!2379754 m!2783955))

(assert (=> b!2379754 m!2783955))

(declare-fun m!2783957 () Bool)

(assert (=> b!2379754 m!2783957))

(declare-fun m!2783959 () Bool)

(assert (=> b!2379754 m!2783959))

(assert (=> b!2379754 m!2783955))

(declare-fun m!2783961 () Bool)

(assert (=> b!2379754 m!2783961))

(declare-fun m!2783963 () Bool)

(assert (=> b!2379757 m!2783963))

(assert (=> d!696527 m!2783963))

(declare-fun m!2783965 () Bool)

(assert (=> d!696527 m!2783965))

(assert (=> d!696527 m!2783907))

(declare-fun m!2783967 () Bool)

(assert (=> b!2379751 m!2783967))

(declare-fun m!2783969 () Bool)

(assert (=> b!2379758 m!2783969))

(declare-fun m!2783971 () Bool)

(assert (=> b!2379758 m!2783971))

(assert (=> b!2379752 m!2783969))

(declare-fun m!2783973 () Bool)

(assert (=> b!2379752 m!2783973))

(assert (=> b!2379755 m!2783969))

(declare-fun m!2783975 () Bool)

(assert (=> b!2379755 m!2783975))

(assert (=> b!2379328 d!696527))

(declare-fun d!696529 () Bool)

(declare-fun res!1010587 () Bool)

(declare-fun e!1517965 () Bool)

(assert (=> d!696529 (=> res!1010587 e!1517965)))

(assert (=> d!696529 (= res!1010587 ((_ is Nil!28095) l!9164))))

(assert (=> d!696529 (= (forall!5611 l!9164 lambda!88565) e!1517965)))

(declare-fun b!2379763 () Bool)

(declare-fun e!1517966 () Bool)

(assert (=> b!2379763 (= e!1517965 e!1517966)))

(declare-fun res!1010588 () Bool)

(assert (=> b!2379763 (=> (not res!1010588) (not e!1517966))))

(declare-fun dynLambda!12094 (Int Regex!6977) Bool)

(assert (=> b!2379763 (= res!1010588 (dynLambda!12094 lambda!88565 (h!33496 l!9164)))))

(declare-fun b!2379764 () Bool)

(assert (=> b!2379764 (= e!1517966 (forall!5611 (t!208170 l!9164) lambda!88565))))

(assert (= (and d!696529 (not res!1010587)) b!2379763))

(assert (= (and b!2379763 res!1010588) b!2379764))

(declare-fun b_lambda!74047 () Bool)

(assert (=> (not b_lambda!74047) (not b!2379763)))

(declare-fun m!2783977 () Bool)

(assert (=> b!2379763 m!2783977))

(declare-fun m!2783979 () Bool)

(assert (=> b!2379764 m!2783979))

(assert (=> start!233468 d!696529))

(declare-fun bs!461802 () Bool)

(declare-fun b!2379802 () Bool)

(assert (= bs!461802 (and b!2379802 b!2379328)))

(declare-fun lambda!88603 () Int)

(assert (=> bs!461802 (not (= lambda!88603 lambda!88566))))

(declare-fun bs!461803 () Bool)

(assert (= bs!461803 (and b!2379802 d!696493)))

(assert (=> bs!461803 (not (= lambda!88603 lambda!88583))))

(declare-fun bs!461804 () Bool)

(assert (= bs!461804 (and b!2379802 d!696513)))

(assert (=> bs!461804 (not (= lambda!88603 lambda!88598))))

(assert (=> bs!461802 (not (= lambda!88603 lambda!88567))))

(assert (=> bs!461804 (not (= lambda!88603 lambda!88597))))

(assert (=> b!2379802 true))

(assert (=> b!2379802 true))

(declare-fun bs!461805 () Bool)

(declare-fun b!2379800 () Bool)

(assert (= bs!461805 (and b!2379800 b!2379328)))

(declare-fun lambda!88604 () Int)

(assert (=> bs!461805 (not (= lambda!88604 lambda!88566))))

(declare-fun bs!461806 () Bool)

(assert (= bs!461806 (and b!2379800 d!696493)))

(assert (=> bs!461806 (not (= lambda!88604 lambda!88583))))

(declare-fun bs!461807 () Bool)

(assert (= bs!461807 (and b!2379800 d!696513)))

(assert (=> bs!461807 (= lambda!88604 lambda!88598)))

(assert (=> bs!461805 (= lambda!88604 lambda!88567)))

(assert (=> bs!461807 (not (= lambda!88604 lambda!88597))))

(declare-fun bs!461808 () Bool)

(assert (= bs!461808 (and b!2379800 b!2379802)))

(assert (=> bs!461808 (not (= lambda!88604 lambda!88603))))

(assert (=> b!2379800 true))

(assert (=> b!2379800 true))

(declare-fun b!2379797 () Bool)

(declare-fun e!1517990 () Bool)

(declare-fun e!1517988 () Bool)

(assert (=> b!2379797 (= e!1517990 e!1517988)))

(declare-fun res!1010607 () Bool)

(assert (=> b!2379797 (= res!1010607 (not ((_ is EmptyLang!6977) r!13927)))))

(assert (=> b!2379797 (=> (not res!1010607) (not e!1517988))))

(declare-fun b!2379798 () Bool)

(declare-fun e!1517985 () Bool)

(declare-fun e!1517991 () Bool)

(assert (=> b!2379798 (= e!1517985 e!1517991)))

(declare-fun res!1010606 () Bool)

(assert (=> b!2379798 (= res!1010606 (matchRSpec!826 (regOne!14467 r!13927) s!9460))))

(assert (=> b!2379798 (=> res!1010606 e!1517991)))

(declare-fun d!696531 () Bool)

(declare-fun c!378318 () Bool)

(assert (=> d!696531 (= c!378318 ((_ is EmptyExpr!6977) r!13927))))

(assert (=> d!696531 (= (matchRSpec!826 r!13927 s!9460) e!1517990)))

(declare-fun b!2379799 () Bool)

(declare-fun res!1010605 () Bool)

(declare-fun e!1517986 () Bool)

(assert (=> b!2379799 (=> res!1010605 e!1517986)))

(declare-fun call!144554 () Bool)

(assert (=> b!2379799 (= res!1010605 call!144554)))

(declare-fun e!1517989 () Bool)

(assert (=> b!2379799 (= e!1517989 e!1517986)))

(declare-fun call!144553 () Bool)

(assert (=> b!2379800 (= e!1517989 call!144553)))

(declare-fun b!2379801 () Bool)

(declare-fun c!378317 () Bool)

(assert (=> b!2379801 (= c!378317 ((_ is ElementMatch!6977) r!13927))))

(declare-fun e!1517987 () Bool)

(assert (=> b!2379801 (= e!1517988 e!1517987)))

(assert (=> b!2379802 (= e!1517986 call!144553)))

(declare-fun b!2379803 () Bool)

(assert (=> b!2379803 (= e!1517991 (matchRSpec!826 (regTwo!14467 r!13927) s!9460))))

(declare-fun c!378315 () Bool)

(declare-fun bm!144548 () Bool)

(assert (=> bm!144548 (= call!144553 (Exists!1039 (ite c!378315 lambda!88603 lambda!88604)))))

(declare-fun b!2379804 () Bool)

(assert (=> b!2379804 (= e!1517987 (= s!9460 (Cons!28094 (c!378217 r!13927) Nil!28094)))))

(declare-fun b!2379805 () Bool)

(assert (=> b!2379805 (= e!1517985 e!1517989)))

(assert (=> b!2379805 (= c!378315 ((_ is Star!6977) r!13927))))

(declare-fun b!2379806 () Bool)

(declare-fun c!378316 () Bool)

(assert (=> b!2379806 (= c!378316 ((_ is Union!6977) r!13927))))

(assert (=> b!2379806 (= e!1517987 e!1517985)))

(declare-fun bm!144549 () Bool)

(assert (=> bm!144549 (= call!144554 (isEmpty!16042 s!9460))))

(declare-fun b!2379807 () Bool)

(assert (=> b!2379807 (= e!1517990 call!144554)))

(assert (= (and d!696531 c!378318) b!2379807))

(assert (= (and d!696531 (not c!378318)) b!2379797))

(assert (= (and b!2379797 res!1010607) b!2379801))

(assert (= (and b!2379801 c!378317) b!2379804))

(assert (= (and b!2379801 (not c!378317)) b!2379806))

(assert (= (and b!2379806 c!378316) b!2379798))

(assert (= (and b!2379806 (not c!378316)) b!2379805))

(assert (= (and b!2379798 (not res!1010606)) b!2379803))

(assert (= (and b!2379805 c!378315) b!2379799))

(assert (= (and b!2379805 (not c!378315)) b!2379800))

(assert (= (and b!2379799 (not res!1010605)) b!2379802))

(assert (= (or b!2379802 b!2379800) bm!144548))

(assert (= (or b!2379807 b!2379799) bm!144549))

(declare-fun m!2783981 () Bool)

(assert (=> b!2379798 m!2783981))

(declare-fun m!2783983 () Bool)

(assert (=> b!2379803 m!2783983))

(declare-fun m!2783985 () Bool)

(assert (=> bm!144548 m!2783985))

(assert (=> bm!144549 m!2783839))

(assert (=> b!2379336 d!696531))

(declare-fun b!2379808 () Bool)

(declare-fun e!1517992 () Bool)

(assert (=> b!2379808 (= e!1517992 (nullable!2027 r!13927))))

(declare-fun b!2379809 () Bool)

(declare-fun res!1010612 () Bool)

(declare-fun e!1517997 () Bool)

(assert (=> b!2379809 (=> res!1010612 e!1517997)))

(assert (=> b!2379809 (= res!1010612 (not (isEmpty!16042 (tail!3458 s!9460))))))

(declare-fun d!696533 () Bool)

(declare-fun e!1517994 () Bool)

(assert (=> d!696533 e!1517994))

(declare-fun c!378321 () Bool)

(assert (=> d!696533 (= c!378321 ((_ is EmptyExpr!6977) r!13927))))

(declare-fun lt!867930 () Bool)

(assert (=> d!696533 (= lt!867930 e!1517992)))

(declare-fun c!378320 () Bool)

(assert (=> d!696533 (= c!378320 (isEmpty!16042 s!9460))))

(assert (=> d!696533 (validRegex!2702 r!13927)))

(assert (=> d!696533 (= (matchR!3094 r!13927 s!9460) lt!867930)))

(declare-fun bm!144550 () Bool)

(declare-fun call!144555 () Bool)

(assert (=> bm!144550 (= call!144555 (isEmpty!16042 s!9460))))

(declare-fun b!2379810 () Bool)

(declare-fun res!1010608 () Bool)

(declare-fun e!1517996 () Bool)

(assert (=> b!2379810 (=> (not res!1010608) (not e!1517996))))

(assert (=> b!2379810 (= res!1010608 (not call!144555))))

(declare-fun b!2379811 () Bool)

(declare-fun e!1517998 () Bool)

(assert (=> b!2379811 (= e!1517998 (not lt!867930))))

(declare-fun b!2379812 () Bool)

(assert (=> b!2379812 (= e!1517994 e!1517998)))

(declare-fun c!378319 () Bool)

(assert (=> b!2379812 (= c!378319 ((_ is EmptyLang!6977) r!13927))))

(declare-fun b!2379813 () Bool)

(assert (=> b!2379813 (= e!1517996 (= (head!5188 s!9460) (c!378217 r!13927)))))

(declare-fun b!2379814 () Bool)

(declare-fun res!1010614 () Bool)

(declare-fun e!1517993 () Bool)

(assert (=> b!2379814 (=> res!1010614 e!1517993)))

(assert (=> b!2379814 (= res!1010614 (not ((_ is ElementMatch!6977) r!13927)))))

(assert (=> b!2379814 (= e!1517998 e!1517993)))

(declare-fun b!2379815 () Bool)

(assert (=> b!2379815 (= e!1517997 (not (= (head!5188 s!9460) (c!378217 r!13927))))))

(declare-fun b!2379816 () Bool)

(assert (=> b!2379816 (= e!1517992 (matchR!3094 (derivativeStep!1685 r!13927 (head!5188 s!9460)) (tail!3458 s!9460)))))

(declare-fun b!2379817 () Bool)

(declare-fun e!1517995 () Bool)

(assert (=> b!2379817 (= e!1517995 e!1517997)))

(declare-fun res!1010610 () Bool)

(assert (=> b!2379817 (=> res!1010610 e!1517997)))

(assert (=> b!2379817 (= res!1010610 call!144555)))

(declare-fun b!2379818 () Bool)

(declare-fun res!1010615 () Bool)

(assert (=> b!2379818 (=> res!1010615 e!1517993)))

(assert (=> b!2379818 (= res!1010615 e!1517996)))

(declare-fun res!1010613 () Bool)

(assert (=> b!2379818 (=> (not res!1010613) (not e!1517996))))

(assert (=> b!2379818 (= res!1010613 lt!867930)))

(declare-fun b!2379819 () Bool)

(assert (=> b!2379819 (= e!1517993 e!1517995)))

(declare-fun res!1010609 () Bool)

(assert (=> b!2379819 (=> (not res!1010609) (not e!1517995))))

(assert (=> b!2379819 (= res!1010609 (not lt!867930))))

(declare-fun b!2379820 () Bool)

(assert (=> b!2379820 (= e!1517994 (= lt!867930 call!144555))))

(declare-fun b!2379821 () Bool)

(declare-fun res!1010611 () Bool)

(assert (=> b!2379821 (=> (not res!1010611) (not e!1517996))))

(assert (=> b!2379821 (= res!1010611 (isEmpty!16042 (tail!3458 s!9460)))))

(assert (= (and d!696533 c!378320) b!2379808))

(assert (= (and d!696533 (not c!378320)) b!2379816))

(assert (= (and d!696533 c!378321) b!2379820))

(assert (= (and d!696533 (not c!378321)) b!2379812))

(assert (= (and b!2379812 c!378319) b!2379811))

(assert (= (and b!2379812 (not c!378319)) b!2379814))

(assert (= (and b!2379814 (not res!1010614)) b!2379818))

(assert (= (and b!2379818 res!1010613) b!2379810))

(assert (= (and b!2379810 res!1010608) b!2379821))

(assert (= (and b!2379821 res!1010611) b!2379813))

(assert (= (and b!2379818 (not res!1010615)) b!2379819))

(assert (= (and b!2379819 res!1010609) b!2379817))

(assert (= (and b!2379817 (not res!1010610)) b!2379809))

(assert (= (and b!2379809 (not res!1010612)) b!2379815))

(assert (= (or b!2379820 b!2379810 b!2379817) bm!144550))

(assert (=> d!696533 m!2783839))

(declare-fun m!2783987 () Bool)

(assert (=> d!696533 m!2783987))

(assert (=> b!2379815 m!2783841))

(assert (=> b!2379813 m!2783841))

(assert (=> b!2379816 m!2783841))

(assert (=> b!2379816 m!2783841))

(declare-fun m!2783989 () Bool)

(assert (=> b!2379816 m!2783989))

(assert (=> b!2379816 m!2783845))

(assert (=> b!2379816 m!2783989))

(assert (=> b!2379816 m!2783845))

(declare-fun m!2783991 () Bool)

(assert (=> b!2379816 m!2783991))

(declare-fun m!2783993 () Bool)

(assert (=> b!2379808 m!2783993))

(assert (=> b!2379809 m!2783845))

(assert (=> b!2379809 m!2783845))

(assert (=> b!2379809 m!2783851))

(assert (=> bm!144550 m!2783839))

(assert (=> b!2379821 m!2783845))

(assert (=> b!2379821 m!2783845))

(assert (=> b!2379821 m!2783851))

(assert (=> b!2379336 d!696533))

(declare-fun d!696535 () Bool)

(assert (=> d!696535 (= (matchR!3094 r!13927 s!9460) (matchRSpec!826 r!13927 s!9460))))

(declare-fun lt!867933 () Unit!41003)

(declare-fun choose!13908 (Regex!6977 List!28192) Unit!41003)

(assert (=> d!696535 (= lt!867933 (choose!13908 r!13927 s!9460))))

(assert (=> d!696535 (validRegex!2702 r!13927)))

(assert (=> d!696535 (= (mainMatchTheorem!826 r!13927 s!9460) lt!867933)))

(declare-fun bs!461809 () Bool)

(assert (= bs!461809 d!696535))

(assert (=> bs!461809 m!2783721))

(assert (=> bs!461809 m!2783719))

(declare-fun m!2783995 () Bool)

(assert (=> bs!461809 m!2783995))

(assert (=> bs!461809 m!2783987))

(assert (=> b!2379336 d!696535))

(declare-fun bs!461810 () Bool)

(declare-fun d!696537 () Bool)

(assert (= bs!461810 (and d!696537 start!233468)))

(declare-fun lambda!88605 () Int)

(assert (=> bs!461810 (= lambda!88605 lambda!88565)))

(declare-fun bs!461811 () Bool)

(assert (= bs!461811 (and d!696537 d!696459)))

(assert (=> bs!461811 (= lambda!88605 lambda!88570)))

(declare-fun b!2379822 () Bool)

(declare-fun e!1518001 () Regex!6977)

(assert (=> b!2379822 (= e!1518001 (h!33496 lt!867867))))

(declare-fun b!2379823 () Bool)

(declare-fun e!1517999 () Regex!6977)

(assert (=> b!2379823 (= e!1518001 e!1517999)))

(declare-fun c!378322 () Bool)

(assert (=> b!2379823 (= c!378322 ((_ is Cons!28095) lt!867867))))

(declare-fun b!2379824 () Bool)

(declare-fun e!1518002 () Bool)

(declare-fun lt!867934 () Regex!6977)

(assert (=> b!2379824 (= e!1518002 (= lt!867934 (head!5186 lt!867867)))))

(declare-fun b!2379825 () Bool)

(declare-fun e!1518004 () Bool)

(declare-fun e!1518003 () Bool)

(assert (=> b!2379825 (= e!1518004 e!1518003)))

(declare-fun c!378323 () Bool)

(assert (=> b!2379825 (= c!378323 (isEmpty!16039 lt!867867))))

(declare-fun b!2379827 () Bool)

(assert (=> b!2379827 (= e!1517999 (Concat!11613 (h!33496 lt!867867) (generalisedConcat!78 (t!208170 lt!867867))))))

(declare-fun b!2379828 () Bool)

(assert (=> b!2379828 (= e!1517999 EmptyExpr!6977)))

(declare-fun b!2379829 () Bool)

(assert (=> b!2379829 (= e!1518002 (isConcat!47 lt!867934))))

(assert (=> d!696537 e!1518004))

(declare-fun res!1010617 () Bool)

(assert (=> d!696537 (=> (not res!1010617) (not e!1518004))))

(assert (=> d!696537 (= res!1010617 (validRegex!2702 lt!867934))))

(assert (=> d!696537 (= lt!867934 e!1518001)))

(declare-fun c!378324 () Bool)

(declare-fun e!1518000 () Bool)

(assert (=> d!696537 (= c!378324 e!1518000)))

(declare-fun res!1010616 () Bool)

(assert (=> d!696537 (=> (not res!1010616) (not e!1518000))))

(assert (=> d!696537 (= res!1010616 ((_ is Cons!28095) lt!867867))))

(assert (=> d!696537 (forall!5611 lt!867867 lambda!88605)))

(assert (=> d!696537 (= (generalisedConcat!78 lt!867867) lt!867934)))

(declare-fun b!2379826 () Bool)

(assert (=> b!2379826 (= e!1518003 e!1518002)))

(declare-fun c!378325 () Bool)

(assert (=> b!2379826 (= c!378325 (isEmpty!16039 (tail!3456 lt!867867)))))

(declare-fun b!2379830 () Bool)

(assert (=> b!2379830 (= e!1518000 (isEmpty!16039 (t!208170 lt!867867)))))

(declare-fun b!2379831 () Bool)

(assert (=> b!2379831 (= e!1518003 (isEmptyExpr!47 lt!867934))))

(assert (= (and d!696537 res!1010616) b!2379830))

(assert (= (and d!696537 c!378324) b!2379822))

(assert (= (and d!696537 (not c!378324)) b!2379823))

(assert (= (and b!2379823 c!378322) b!2379827))

(assert (= (and b!2379823 (not c!378322)) b!2379828))

(assert (= (and d!696537 res!1010617) b!2379825))

(assert (= (and b!2379825 c!378323) b!2379831))

(assert (= (and b!2379825 (not c!378323)) b!2379826))

(assert (= (and b!2379826 c!378325) b!2379824))

(assert (= (and b!2379826 (not c!378325)) b!2379829))

(declare-fun m!2783997 () Bool)

(assert (=> b!2379824 m!2783997))

(declare-fun m!2783999 () Bool)

(assert (=> b!2379829 m!2783999))

(declare-fun m!2784001 () Bool)

(assert (=> b!2379826 m!2784001))

(assert (=> b!2379826 m!2784001))

(declare-fun m!2784003 () Bool)

(assert (=> b!2379826 m!2784003))

(assert (=> b!2379825 m!2783705))

(declare-fun m!2784005 () Bool)

(assert (=> b!2379831 m!2784005))

(declare-fun m!2784007 () Bool)

(assert (=> b!2379830 m!2784007))

(declare-fun m!2784009 () Bool)

(assert (=> d!696537 m!2784009))

(declare-fun m!2784011 () Bool)

(assert (=> d!696537 m!2784011))

(declare-fun m!2784013 () Bool)

(assert (=> b!2379827 m!2784013))

(assert (=> b!2379332 d!696537))

(declare-fun b!2379850 () Bool)

(declare-fun e!1518019 () Bool)

(declare-fun e!1518021 () Bool)

(assert (=> b!2379850 (= e!1518019 e!1518021)))

(declare-fun c!378331 () Bool)

(assert (=> b!2379850 (= c!378331 ((_ is Union!6977) lt!867872))))

(declare-fun b!2379851 () Bool)

(declare-fun res!1010629 () Bool)

(declare-fun e!1518024 () Bool)

(assert (=> b!2379851 (=> (not res!1010629) (not e!1518024))))

(declare-fun call!144564 () Bool)

(assert (=> b!2379851 (= res!1010629 call!144564)))

(assert (=> b!2379851 (= e!1518021 e!1518024)))

(declare-fun b!2379852 () Bool)

(declare-fun e!1518020 () Bool)

(assert (=> b!2379852 (= e!1518020 call!144564)))

(declare-fun b!2379853 () Bool)

(declare-fun res!1010628 () Bool)

(declare-fun e!1518025 () Bool)

(assert (=> b!2379853 (=> res!1010628 e!1518025)))

(assert (=> b!2379853 (= res!1010628 (not ((_ is Concat!11613) lt!867872)))))

(assert (=> b!2379853 (= e!1518021 e!1518025)))

(declare-fun b!2379854 () Bool)

(declare-fun e!1518023 () Bool)

(assert (=> b!2379854 (= e!1518023 e!1518019)))

(declare-fun c!378330 () Bool)

(assert (=> b!2379854 (= c!378330 ((_ is Star!6977) lt!867872))))

(declare-fun b!2379856 () Bool)

(declare-fun call!144562 () Bool)

(assert (=> b!2379856 (= e!1518024 call!144562)))

(declare-fun b!2379857 () Bool)

(assert (=> b!2379857 (= e!1518025 e!1518020)))

(declare-fun res!1010632 () Bool)

(assert (=> b!2379857 (=> (not res!1010632) (not e!1518020))))

(assert (=> b!2379857 (= res!1010632 call!144562)))

(declare-fun bm!144557 () Bool)

(declare-fun call!144563 () Bool)

(assert (=> bm!144557 (= call!144564 call!144563)))

(declare-fun b!2379858 () Bool)

(declare-fun e!1518022 () Bool)

(assert (=> b!2379858 (= e!1518022 call!144563)))

(declare-fun bm!144558 () Bool)

(assert (=> bm!144558 (= call!144562 (validRegex!2702 (ite c!378331 (regTwo!14467 lt!867872) (regOne!14466 lt!867872))))))

(declare-fun bm!144559 () Bool)

(assert (=> bm!144559 (= call!144563 (validRegex!2702 (ite c!378330 (reg!7306 lt!867872) (ite c!378331 (regOne!14467 lt!867872) (regTwo!14466 lt!867872)))))))

(declare-fun d!696539 () Bool)

(declare-fun res!1010630 () Bool)

(assert (=> d!696539 (=> res!1010630 e!1518023)))

(assert (=> d!696539 (= res!1010630 ((_ is ElementMatch!6977) lt!867872))))

(assert (=> d!696539 (= (validRegex!2702 lt!867872) e!1518023)))

(declare-fun b!2379855 () Bool)

(assert (=> b!2379855 (= e!1518019 e!1518022)))

(declare-fun res!1010631 () Bool)

(assert (=> b!2379855 (= res!1010631 (not (nullable!2027 (reg!7306 lt!867872))))))

(assert (=> b!2379855 (=> (not res!1010631) (not e!1518022))))

(assert (= (and d!696539 (not res!1010630)) b!2379854))

(assert (= (and b!2379854 c!378330) b!2379855))

(assert (= (and b!2379854 (not c!378330)) b!2379850))

(assert (= (and b!2379855 res!1010631) b!2379858))

(assert (= (and b!2379850 c!378331) b!2379851))

(assert (= (and b!2379850 (not c!378331)) b!2379853))

(assert (= (and b!2379851 res!1010629) b!2379856))

(assert (= (and b!2379853 (not res!1010628)) b!2379857))

(assert (= (and b!2379857 res!1010632) b!2379852))

(assert (= (or b!2379851 b!2379852) bm!144557))

(assert (= (or b!2379856 b!2379857) bm!144558))

(assert (= (or b!2379858 bm!144557) bm!144559))

(declare-fun m!2784015 () Bool)

(assert (=> bm!144558 m!2784015))

(declare-fun m!2784017 () Bool)

(assert (=> bm!144559 m!2784017))

(declare-fun m!2784019 () Bool)

(assert (=> b!2379855 m!2784019))

(assert (=> b!2379334 d!696539))

(declare-fun d!696541 () Bool)

(assert (=> d!696541 (= (isDefined!4348 lt!867865) (not (isEmpty!16043 lt!867865)))))

(declare-fun bs!461812 () Bool)

(assert (= bs!461812 d!696541))

(declare-fun m!2784021 () Bool)

(assert (=> bs!461812 m!2784021))

(assert (=> b!2379334 d!696541))

(declare-fun b!2379859 () Bool)

(declare-fun e!1518030 () Option!5520)

(assert (=> b!2379859 (= e!1518030 None!5519)))

(declare-fun b!2379860 () Bool)

(declare-fun e!1518027 () Bool)

(assert (=> b!2379860 (= e!1518027 (matchR!3094 EmptyExpr!6977 s!9460))))

(declare-fun b!2379861 () Bool)

(declare-fun res!1010633 () Bool)

(declare-fun e!1518029 () Bool)

(assert (=> b!2379861 (=> (not res!1010633) (not e!1518029))))

(declare-fun lt!867936 () Option!5520)

(assert (=> b!2379861 (= res!1010633 (matchR!3094 EmptyExpr!6977 (_2!16450 (get!8564 lt!867936))))))

(declare-fun d!696543 () Bool)

(declare-fun e!1518028 () Bool)

(assert (=> d!696543 e!1518028))

(declare-fun res!1010636 () Bool)

(assert (=> d!696543 (=> res!1010636 e!1518028)))

(assert (=> d!696543 (= res!1010636 e!1518029)))

(declare-fun res!1010634 () Bool)

(assert (=> d!696543 (=> (not res!1010634) (not e!1518029))))

(assert (=> d!696543 (= res!1010634 (isDefined!4348 lt!867936))))

(declare-fun e!1518026 () Option!5520)

(assert (=> d!696543 (= lt!867936 e!1518026)))

(declare-fun c!378332 () Bool)

(assert (=> d!696543 (= c!378332 e!1518027)))

(declare-fun res!1010635 () Bool)

(assert (=> d!696543 (=> (not res!1010635) (not e!1518027))))

(assert (=> d!696543 (= res!1010635 (matchR!3094 lt!867872 Nil!28094))))

(assert (=> d!696543 (validRegex!2702 lt!867872)))

(assert (=> d!696543 (= (findConcatSeparation!628 lt!867872 EmptyExpr!6977 Nil!28094 s!9460 s!9460) lt!867936)))

(declare-fun b!2379862 () Bool)

(assert (=> b!2379862 (= e!1518026 (Some!5519 (tuple2!27819 Nil!28094 s!9460)))))

(declare-fun b!2379863 () Bool)

(declare-fun lt!867937 () Unit!41003)

(declare-fun lt!867935 () Unit!41003)

(assert (=> b!2379863 (= lt!867937 lt!867935)))

(assert (=> b!2379863 (= (++!6932 (++!6932 Nil!28094 (Cons!28094 (h!33495 s!9460) Nil!28094)) (t!208169 s!9460)) s!9460)))

(assert (=> b!2379863 (= lt!867935 (lemmaMoveElementToOtherListKeepsConcatEq!574 Nil!28094 (h!33495 s!9460) (t!208169 s!9460) s!9460))))

(assert (=> b!2379863 (= e!1518030 (findConcatSeparation!628 lt!867872 EmptyExpr!6977 (++!6932 Nil!28094 (Cons!28094 (h!33495 s!9460) Nil!28094)) (t!208169 s!9460) s!9460))))

(declare-fun b!2379864 () Bool)

(assert (=> b!2379864 (= e!1518029 (= (++!6932 (_1!16450 (get!8564 lt!867936)) (_2!16450 (get!8564 lt!867936))) s!9460))))

(declare-fun b!2379865 () Bool)

(assert (=> b!2379865 (= e!1518026 e!1518030)))

(declare-fun c!378333 () Bool)

(assert (=> b!2379865 (= c!378333 ((_ is Nil!28094) s!9460))))

(declare-fun b!2379866 () Bool)

(assert (=> b!2379866 (= e!1518028 (not (isDefined!4348 lt!867936)))))

(declare-fun b!2379867 () Bool)

(declare-fun res!1010637 () Bool)

(assert (=> b!2379867 (=> (not res!1010637) (not e!1518029))))

(assert (=> b!2379867 (= res!1010637 (matchR!3094 lt!867872 (_1!16450 (get!8564 lt!867936))))))

(assert (= (and d!696543 res!1010635) b!2379860))

(assert (= (and d!696543 c!378332) b!2379862))

(assert (= (and d!696543 (not c!378332)) b!2379865))

(assert (= (and b!2379865 c!378333) b!2379859))

(assert (= (and b!2379865 (not c!378333)) b!2379863))

(assert (= (and d!696543 res!1010634) b!2379867))

(assert (= (and b!2379867 res!1010637) b!2379861))

(assert (= (and b!2379861 res!1010633) b!2379864))

(assert (= (and d!696543 (not res!1010636)) b!2379866))

(assert (=> b!2379863 m!2783955))

(assert (=> b!2379863 m!2783955))

(assert (=> b!2379863 m!2783957))

(assert (=> b!2379863 m!2783959))

(assert (=> b!2379863 m!2783955))

(declare-fun m!2784023 () Bool)

(assert (=> b!2379863 m!2784023))

(declare-fun m!2784025 () Bool)

(assert (=> b!2379866 m!2784025))

(assert (=> d!696543 m!2784025))

(declare-fun m!2784027 () Bool)

(assert (=> d!696543 m!2784027))

(assert (=> d!696543 m!2783709))

(declare-fun m!2784029 () Bool)

(assert (=> b!2379860 m!2784029))

(declare-fun m!2784031 () Bool)

(assert (=> b!2379867 m!2784031))

(declare-fun m!2784033 () Bool)

(assert (=> b!2379867 m!2784033))

(assert (=> b!2379861 m!2784031))

(declare-fun m!2784035 () Bool)

(assert (=> b!2379861 m!2784035))

(assert (=> b!2379864 m!2784031))

(declare-fun m!2784037 () Bool)

(assert (=> b!2379864 m!2784037))

(assert (=> b!2379334 d!696543))

(declare-fun d!696545 () Bool)

(assert (=> d!696545 (= (get!8564 lt!867865) (v!30927 lt!867865))))

(assert (=> b!2379329 d!696545))

(declare-fun d!696547 () Bool)

(assert (=> d!696547 (matchR!3094 (Concat!11613 lt!867872 EmptyExpr!6977) (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860)))))

(declare-fun lt!867940 () Unit!41003)

(declare-fun choose!13909 (Regex!6977 Regex!6977 List!28192 List!28192 List!28192) Unit!41003)

(assert (=> d!696547 (= lt!867940 (choose!13909 lt!867872 EmptyExpr!6977 (_1!16450 lt!867860) (_2!16450 lt!867860) s!9460))))

(assert (=> d!696547 (validRegex!2702 lt!867872)))

(assert (=> d!696547 (= (lemmaFindSeparationIsDefinedThenConcatMatches!8 lt!867872 EmptyExpr!6977 (_1!16450 lt!867860) (_2!16450 lt!867860) s!9460) lt!867940)))

(declare-fun bs!461813 () Bool)

(assert (= bs!461813 d!696547))

(assert (=> bs!461813 m!2783731))

(assert (=> bs!461813 m!2783731))

(assert (=> bs!461813 m!2783733))

(declare-fun m!2784039 () Bool)

(assert (=> bs!461813 m!2784039))

(assert (=> bs!461813 m!2783709))

(assert (=> b!2379329 d!696547))

(declare-fun b!2379868 () Bool)

(declare-fun e!1518031 () Bool)

(assert (=> b!2379868 (= e!1518031 (nullable!2027 (Concat!11613 lt!867872 EmptyExpr!6977)))))

(declare-fun b!2379869 () Bool)

(declare-fun res!1010642 () Bool)

(declare-fun e!1518036 () Bool)

(assert (=> b!2379869 (=> res!1010642 e!1518036)))

(assert (=> b!2379869 (= res!1010642 (not (isEmpty!16042 (tail!3458 (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860))))))))

(declare-fun d!696549 () Bool)

(declare-fun e!1518033 () Bool)

(assert (=> d!696549 e!1518033))

(declare-fun c!378336 () Bool)

(assert (=> d!696549 (= c!378336 ((_ is EmptyExpr!6977) (Concat!11613 lt!867872 EmptyExpr!6977)))))

(declare-fun lt!867941 () Bool)

(assert (=> d!696549 (= lt!867941 e!1518031)))

(declare-fun c!378335 () Bool)

(assert (=> d!696549 (= c!378335 (isEmpty!16042 (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860))))))

(assert (=> d!696549 (validRegex!2702 (Concat!11613 lt!867872 EmptyExpr!6977))))

(assert (=> d!696549 (= (matchR!3094 (Concat!11613 lt!867872 EmptyExpr!6977) (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860))) lt!867941)))

(declare-fun bm!144560 () Bool)

(declare-fun call!144565 () Bool)

(assert (=> bm!144560 (= call!144565 (isEmpty!16042 (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860))))))

(declare-fun b!2379870 () Bool)

(declare-fun res!1010638 () Bool)

(declare-fun e!1518035 () Bool)

(assert (=> b!2379870 (=> (not res!1010638) (not e!1518035))))

(assert (=> b!2379870 (= res!1010638 (not call!144565))))

(declare-fun b!2379871 () Bool)

(declare-fun e!1518037 () Bool)

(assert (=> b!2379871 (= e!1518037 (not lt!867941))))

(declare-fun b!2379872 () Bool)

(assert (=> b!2379872 (= e!1518033 e!1518037)))

(declare-fun c!378334 () Bool)

(assert (=> b!2379872 (= c!378334 ((_ is EmptyLang!6977) (Concat!11613 lt!867872 EmptyExpr!6977)))))

(declare-fun b!2379873 () Bool)

(assert (=> b!2379873 (= e!1518035 (= (head!5188 (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860))) (c!378217 (Concat!11613 lt!867872 EmptyExpr!6977))))))

(declare-fun b!2379874 () Bool)

(declare-fun res!1010644 () Bool)

(declare-fun e!1518032 () Bool)

(assert (=> b!2379874 (=> res!1010644 e!1518032)))

(assert (=> b!2379874 (= res!1010644 (not ((_ is ElementMatch!6977) (Concat!11613 lt!867872 EmptyExpr!6977))))))

(assert (=> b!2379874 (= e!1518037 e!1518032)))

(declare-fun b!2379875 () Bool)

(assert (=> b!2379875 (= e!1518036 (not (= (head!5188 (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860))) (c!378217 (Concat!11613 lt!867872 EmptyExpr!6977)))))))

(declare-fun b!2379876 () Bool)

(assert (=> b!2379876 (= e!1518031 (matchR!3094 (derivativeStep!1685 (Concat!11613 lt!867872 EmptyExpr!6977) (head!5188 (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860)))) (tail!3458 (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860)))))))

(declare-fun b!2379877 () Bool)

(declare-fun e!1518034 () Bool)

(assert (=> b!2379877 (= e!1518034 e!1518036)))

(declare-fun res!1010640 () Bool)

(assert (=> b!2379877 (=> res!1010640 e!1518036)))

(assert (=> b!2379877 (= res!1010640 call!144565)))

(declare-fun b!2379878 () Bool)

(declare-fun res!1010645 () Bool)

(assert (=> b!2379878 (=> res!1010645 e!1518032)))

(assert (=> b!2379878 (= res!1010645 e!1518035)))

(declare-fun res!1010643 () Bool)

(assert (=> b!2379878 (=> (not res!1010643) (not e!1518035))))

(assert (=> b!2379878 (= res!1010643 lt!867941)))

(declare-fun b!2379879 () Bool)

(assert (=> b!2379879 (= e!1518032 e!1518034)))

(declare-fun res!1010639 () Bool)

(assert (=> b!2379879 (=> (not res!1010639) (not e!1518034))))

(assert (=> b!2379879 (= res!1010639 (not lt!867941))))

(declare-fun b!2379880 () Bool)

(assert (=> b!2379880 (= e!1518033 (= lt!867941 call!144565))))

(declare-fun b!2379881 () Bool)

(declare-fun res!1010641 () Bool)

(assert (=> b!2379881 (=> (not res!1010641) (not e!1518035))))

(assert (=> b!2379881 (= res!1010641 (isEmpty!16042 (tail!3458 (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860)))))))

(assert (= (and d!696549 c!378335) b!2379868))

(assert (= (and d!696549 (not c!378335)) b!2379876))

(assert (= (and d!696549 c!378336) b!2379880))

(assert (= (and d!696549 (not c!378336)) b!2379872))

(assert (= (and b!2379872 c!378334) b!2379871))

(assert (= (and b!2379872 (not c!378334)) b!2379874))

(assert (= (and b!2379874 (not res!1010644)) b!2379878))

(assert (= (and b!2379878 res!1010643) b!2379870))

(assert (= (and b!2379870 res!1010638) b!2379881))

(assert (= (and b!2379881 res!1010641) b!2379873))

(assert (= (and b!2379878 (not res!1010645)) b!2379879))

(assert (= (and b!2379879 res!1010639) b!2379877))

(assert (= (and b!2379877 (not res!1010640)) b!2379869))

(assert (= (and b!2379869 (not res!1010642)) b!2379875))

(assert (= (or b!2379880 b!2379870 b!2379877) bm!144560))

(assert (=> d!696549 m!2783731))

(declare-fun m!2784041 () Bool)

(assert (=> d!696549 m!2784041))

(declare-fun m!2784043 () Bool)

(assert (=> d!696549 m!2784043))

(assert (=> b!2379875 m!2783731))

(declare-fun m!2784045 () Bool)

(assert (=> b!2379875 m!2784045))

(assert (=> b!2379873 m!2783731))

(assert (=> b!2379873 m!2784045))

(assert (=> b!2379876 m!2783731))

(assert (=> b!2379876 m!2784045))

(assert (=> b!2379876 m!2784045))

(declare-fun m!2784047 () Bool)

(assert (=> b!2379876 m!2784047))

(assert (=> b!2379876 m!2783731))

(declare-fun m!2784049 () Bool)

(assert (=> b!2379876 m!2784049))

(assert (=> b!2379876 m!2784047))

(assert (=> b!2379876 m!2784049))

(declare-fun m!2784051 () Bool)

(assert (=> b!2379876 m!2784051))

(declare-fun m!2784053 () Bool)

(assert (=> b!2379868 m!2784053))

(assert (=> b!2379869 m!2783731))

(assert (=> b!2379869 m!2784049))

(assert (=> b!2379869 m!2784049))

(declare-fun m!2784055 () Bool)

(assert (=> b!2379869 m!2784055))

(assert (=> bm!144560 m!2783731))

(assert (=> bm!144560 m!2784041))

(assert (=> b!2379881 m!2783731))

(assert (=> b!2379881 m!2784049))

(assert (=> b!2379881 m!2784049))

(assert (=> b!2379881 m!2784055))

(assert (=> b!2379329 d!696549))

(declare-fun b!2379893 () Bool)

(declare-fun e!1518042 () Bool)

(declare-fun lt!867944 () List!28192)

(assert (=> b!2379893 (= e!1518042 (or (not (= (_2!16450 lt!867860) Nil!28094)) (= lt!867944 (_1!16450 lt!867860))))))

(declare-fun d!696551 () Bool)

(assert (=> d!696551 e!1518042))

(declare-fun res!1010651 () Bool)

(assert (=> d!696551 (=> (not res!1010651) (not e!1518042))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3826 (List!28192) (InoxSet C!14112))

(assert (=> d!696551 (= res!1010651 (= (content!3826 lt!867944) ((_ map or) (content!3826 (_1!16450 lt!867860)) (content!3826 (_2!16450 lt!867860)))))))

(declare-fun e!1518043 () List!28192)

(assert (=> d!696551 (= lt!867944 e!1518043)))

(declare-fun c!378339 () Bool)

(assert (=> d!696551 (= c!378339 ((_ is Nil!28094) (_1!16450 lt!867860)))))

(assert (=> d!696551 (= (++!6932 (_1!16450 lt!867860) (_2!16450 lt!867860)) lt!867944)))

(declare-fun b!2379890 () Bool)

(assert (=> b!2379890 (= e!1518043 (_2!16450 lt!867860))))

(declare-fun b!2379892 () Bool)

(declare-fun res!1010650 () Bool)

(assert (=> b!2379892 (=> (not res!1010650) (not e!1518042))))

(declare-fun size!22164 (List!28192) Int)

(assert (=> b!2379892 (= res!1010650 (= (size!22164 lt!867944) (+ (size!22164 (_1!16450 lt!867860)) (size!22164 (_2!16450 lt!867860)))))))

(declare-fun b!2379891 () Bool)

(assert (=> b!2379891 (= e!1518043 (Cons!28094 (h!33495 (_1!16450 lt!867860)) (++!6932 (t!208169 (_1!16450 lt!867860)) (_2!16450 lt!867860))))))

(assert (= (and d!696551 c!378339) b!2379890))

(assert (= (and d!696551 (not c!378339)) b!2379891))

(assert (= (and d!696551 res!1010651) b!2379892))

(assert (= (and b!2379892 res!1010650) b!2379893))

(declare-fun m!2784057 () Bool)

(assert (=> d!696551 m!2784057))

(declare-fun m!2784059 () Bool)

(assert (=> d!696551 m!2784059))

(declare-fun m!2784061 () Bool)

(assert (=> d!696551 m!2784061))

(declare-fun m!2784063 () Bool)

(assert (=> b!2379892 m!2784063))

(declare-fun m!2784065 () Bool)

(assert (=> b!2379892 m!2784065))

(declare-fun m!2784067 () Bool)

(assert (=> b!2379892 m!2784067))

(declare-fun m!2784069 () Bool)

(assert (=> b!2379891 m!2784069))

(assert (=> b!2379329 d!696551))

(declare-fun b!2379894 () Bool)

(declare-fun e!1518044 () Bool)

(declare-fun e!1518046 () Bool)

(assert (=> b!2379894 (= e!1518044 e!1518046)))

(declare-fun c!378341 () Bool)

(assert (=> b!2379894 (= c!378341 ((_ is Union!6977) lt!867869))))

(declare-fun b!2379895 () Bool)

(declare-fun res!1010653 () Bool)

(declare-fun e!1518049 () Bool)

(assert (=> b!2379895 (=> (not res!1010653) (not e!1518049))))

(declare-fun call!144568 () Bool)

(assert (=> b!2379895 (= res!1010653 call!144568)))

(assert (=> b!2379895 (= e!1518046 e!1518049)))

(declare-fun b!2379896 () Bool)

(declare-fun e!1518045 () Bool)

(assert (=> b!2379896 (= e!1518045 call!144568)))

(declare-fun b!2379897 () Bool)

(declare-fun res!1010652 () Bool)

(declare-fun e!1518050 () Bool)

(assert (=> b!2379897 (=> res!1010652 e!1518050)))

(assert (=> b!2379897 (= res!1010652 (not ((_ is Concat!11613) lt!867869)))))

(assert (=> b!2379897 (= e!1518046 e!1518050)))

(declare-fun b!2379898 () Bool)

(declare-fun e!1518048 () Bool)

(assert (=> b!2379898 (= e!1518048 e!1518044)))

(declare-fun c!378340 () Bool)

(assert (=> b!2379898 (= c!378340 ((_ is Star!6977) lt!867869))))

(declare-fun b!2379900 () Bool)

(declare-fun call!144566 () Bool)

(assert (=> b!2379900 (= e!1518049 call!144566)))

(declare-fun b!2379901 () Bool)

(assert (=> b!2379901 (= e!1518050 e!1518045)))

(declare-fun res!1010656 () Bool)

(assert (=> b!2379901 (=> (not res!1010656) (not e!1518045))))

(assert (=> b!2379901 (= res!1010656 call!144566)))

(declare-fun bm!144561 () Bool)

(declare-fun call!144567 () Bool)

(assert (=> bm!144561 (= call!144568 call!144567)))

(declare-fun b!2379902 () Bool)

(declare-fun e!1518047 () Bool)

(assert (=> b!2379902 (= e!1518047 call!144567)))

(declare-fun bm!144562 () Bool)

(assert (=> bm!144562 (= call!144566 (validRegex!2702 (ite c!378341 (regTwo!14467 lt!867869) (regOne!14466 lt!867869))))))

(declare-fun bm!144563 () Bool)

(assert (=> bm!144563 (= call!144567 (validRegex!2702 (ite c!378340 (reg!7306 lt!867869) (ite c!378341 (regOne!14467 lt!867869) (regTwo!14466 lt!867869)))))))

(declare-fun d!696553 () Bool)

(declare-fun res!1010654 () Bool)

(assert (=> d!696553 (=> res!1010654 e!1518048)))

(assert (=> d!696553 (= res!1010654 ((_ is ElementMatch!6977) lt!867869))))

(assert (=> d!696553 (= (validRegex!2702 lt!867869) e!1518048)))

(declare-fun b!2379899 () Bool)

(assert (=> b!2379899 (= e!1518044 e!1518047)))

(declare-fun res!1010655 () Bool)

(assert (=> b!2379899 (= res!1010655 (not (nullable!2027 (reg!7306 lt!867869))))))

(assert (=> b!2379899 (=> (not res!1010655) (not e!1518047))))

(assert (= (and d!696553 (not res!1010654)) b!2379898))

(assert (= (and b!2379898 c!378340) b!2379899))

(assert (= (and b!2379898 (not c!378340)) b!2379894))

(assert (= (and b!2379899 res!1010655) b!2379902))

(assert (= (and b!2379894 c!378341) b!2379895))

(assert (= (and b!2379894 (not c!378341)) b!2379897))

(assert (= (and b!2379895 res!1010653) b!2379900))

(assert (= (and b!2379897 (not res!1010652)) b!2379901))

(assert (= (and b!2379901 res!1010656) b!2379896))

(assert (= (or b!2379895 b!2379896) bm!144561))

(assert (= (or b!2379900 b!2379901) bm!144562))

(assert (= (or b!2379902 bm!144561) bm!144563))

(declare-fun m!2784071 () Bool)

(assert (=> bm!144562 m!2784071))

(declare-fun m!2784073 () Bool)

(assert (=> bm!144563 m!2784073))

(declare-fun m!2784075 () Bool)

(assert (=> b!2379899 m!2784075))

(assert (=> b!2379331 d!696553))

(declare-fun d!696555 () Bool)

(assert (=> d!696555 (= (isEmpty!16039 lt!867867) ((_ is Nil!28095) lt!867867))))

(assert (=> b!2379341 d!696555))

(declare-fun d!696557 () Bool)

(assert (=> d!696557 (= (tail!3456 l!9164) (t!208170 l!9164))))

(assert (=> b!2379341 d!696557))

(declare-fun b!2379914 () Bool)

(declare-fun e!1518053 () Bool)

(declare-fun tp!759822 () Bool)

(declare-fun tp!759819 () Bool)

(assert (=> b!2379914 (= e!1518053 (and tp!759822 tp!759819))))

(declare-fun b!2379913 () Bool)

(assert (=> b!2379913 (= e!1518053 tp_is_empty!11367)))

(assert (=> b!2379343 (= tp!759758 e!1518053)))

(declare-fun b!2379916 () Bool)

(declare-fun tp!759821 () Bool)

(declare-fun tp!759823 () Bool)

(assert (=> b!2379916 (= e!1518053 (and tp!759821 tp!759823))))

(declare-fun b!2379915 () Bool)

(declare-fun tp!759820 () Bool)

(assert (=> b!2379915 (= e!1518053 tp!759820)))

(assert (= (and b!2379343 ((_ is ElementMatch!6977) (regOne!14466 r!13927))) b!2379913))

(assert (= (and b!2379343 ((_ is Concat!11613) (regOne!14466 r!13927))) b!2379914))

(assert (= (and b!2379343 ((_ is Star!6977) (regOne!14466 r!13927))) b!2379915))

(assert (= (and b!2379343 ((_ is Union!6977) (regOne!14466 r!13927))) b!2379916))

(declare-fun b!2379918 () Bool)

(declare-fun e!1518054 () Bool)

(declare-fun tp!759827 () Bool)

(declare-fun tp!759824 () Bool)

(assert (=> b!2379918 (= e!1518054 (and tp!759827 tp!759824))))

(declare-fun b!2379917 () Bool)

(assert (=> b!2379917 (= e!1518054 tp_is_empty!11367)))

(assert (=> b!2379343 (= tp!759752 e!1518054)))

(declare-fun b!2379920 () Bool)

(declare-fun tp!759826 () Bool)

(declare-fun tp!759828 () Bool)

(assert (=> b!2379920 (= e!1518054 (and tp!759826 tp!759828))))

(declare-fun b!2379919 () Bool)

(declare-fun tp!759825 () Bool)

(assert (=> b!2379919 (= e!1518054 tp!759825)))

(assert (= (and b!2379343 ((_ is ElementMatch!6977) (regTwo!14466 r!13927))) b!2379917))

(assert (= (and b!2379343 ((_ is Concat!11613) (regTwo!14466 r!13927))) b!2379918))

(assert (= (and b!2379343 ((_ is Star!6977) (regTwo!14466 r!13927))) b!2379919))

(assert (= (and b!2379343 ((_ is Union!6977) (regTwo!14466 r!13927))) b!2379920))

(declare-fun b!2379922 () Bool)

(declare-fun e!1518055 () Bool)

(declare-fun tp!759832 () Bool)

(declare-fun tp!759829 () Bool)

(assert (=> b!2379922 (= e!1518055 (and tp!759832 tp!759829))))

(declare-fun b!2379921 () Bool)

(assert (=> b!2379921 (= e!1518055 tp_is_empty!11367)))

(assert (=> b!2379344 (= tp!759755 e!1518055)))

(declare-fun b!2379924 () Bool)

(declare-fun tp!759831 () Bool)

(declare-fun tp!759833 () Bool)

(assert (=> b!2379924 (= e!1518055 (and tp!759831 tp!759833))))

(declare-fun b!2379923 () Bool)

(declare-fun tp!759830 () Bool)

(assert (=> b!2379923 (= e!1518055 tp!759830)))

(assert (= (and b!2379344 ((_ is ElementMatch!6977) (h!33496 l!9164))) b!2379921))

(assert (= (and b!2379344 ((_ is Concat!11613) (h!33496 l!9164))) b!2379922))

(assert (= (and b!2379344 ((_ is Star!6977) (h!33496 l!9164))) b!2379923))

(assert (= (and b!2379344 ((_ is Union!6977) (h!33496 l!9164))) b!2379924))

(declare-fun b!2379929 () Bool)

(declare-fun e!1518058 () Bool)

(declare-fun tp!759838 () Bool)

(declare-fun tp!759839 () Bool)

(assert (=> b!2379929 (= e!1518058 (and tp!759838 tp!759839))))

(assert (=> b!2379344 (= tp!759756 e!1518058)))

(assert (= (and b!2379344 ((_ is Cons!28095) (t!208170 l!9164))) b!2379929))

(declare-fun b!2379934 () Bool)

(declare-fun e!1518061 () Bool)

(declare-fun tp!759842 () Bool)

(assert (=> b!2379934 (= e!1518061 (and tp_is_empty!11367 tp!759842))))

(assert (=> b!2379330 (= tp!759754 e!1518061)))

(assert (= (and b!2379330 ((_ is Cons!28094) (t!208169 s!9460))) b!2379934))

(declare-fun b!2379936 () Bool)

(declare-fun e!1518062 () Bool)

(declare-fun tp!759846 () Bool)

(declare-fun tp!759843 () Bool)

(assert (=> b!2379936 (= e!1518062 (and tp!759846 tp!759843))))

(declare-fun b!2379935 () Bool)

(assert (=> b!2379935 (= e!1518062 tp_is_empty!11367)))

(assert (=> b!2379340 (= tp!759757 e!1518062)))

(declare-fun b!2379938 () Bool)

(declare-fun tp!759845 () Bool)

(declare-fun tp!759847 () Bool)

(assert (=> b!2379938 (= e!1518062 (and tp!759845 tp!759847))))

(declare-fun b!2379937 () Bool)

(declare-fun tp!759844 () Bool)

(assert (=> b!2379937 (= e!1518062 tp!759844)))

(assert (= (and b!2379340 ((_ is ElementMatch!6977) (regOne!14467 r!13927))) b!2379935))

(assert (= (and b!2379340 ((_ is Concat!11613) (regOne!14467 r!13927))) b!2379936))

(assert (= (and b!2379340 ((_ is Star!6977) (regOne!14467 r!13927))) b!2379937))

(assert (= (and b!2379340 ((_ is Union!6977) (regOne!14467 r!13927))) b!2379938))

(declare-fun b!2379940 () Bool)

(declare-fun e!1518063 () Bool)

(declare-fun tp!759851 () Bool)

(declare-fun tp!759848 () Bool)

(assert (=> b!2379940 (= e!1518063 (and tp!759851 tp!759848))))

(declare-fun b!2379939 () Bool)

(assert (=> b!2379939 (= e!1518063 tp_is_empty!11367)))

(assert (=> b!2379340 (= tp!759753 e!1518063)))

(declare-fun b!2379942 () Bool)

(declare-fun tp!759850 () Bool)

(declare-fun tp!759852 () Bool)

(assert (=> b!2379942 (= e!1518063 (and tp!759850 tp!759852))))

(declare-fun b!2379941 () Bool)

(declare-fun tp!759849 () Bool)

(assert (=> b!2379941 (= e!1518063 tp!759849)))

(assert (= (and b!2379340 ((_ is ElementMatch!6977) (regTwo!14467 r!13927))) b!2379939))

(assert (= (and b!2379340 ((_ is Concat!11613) (regTwo!14467 r!13927))) b!2379940))

(assert (= (and b!2379340 ((_ is Star!6977) (regTwo!14467 r!13927))) b!2379941))

(assert (= (and b!2379340 ((_ is Union!6977) (regTwo!14467 r!13927))) b!2379942))

(declare-fun b!2379944 () Bool)

(declare-fun e!1518064 () Bool)

(declare-fun tp!759856 () Bool)

(declare-fun tp!759853 () Bool)

(assert (=> b!2379944 (= e!1518064 (and tp!759856 tp!759853))))

(declare-fun b!2379943 () Bool)

(assert (=> b!2379943 (= e!1518064 tp_is_empty!11367)))

(assert (=> b!2379342 (= tp!759759 e!1518064)))

(declare-fun b!2379946 () Bool)

(declare-fun tp!759855 () Bool)

(declare-fun tp!759857 () Bool)

(assert (=> b!2379946 (= e!1518064 (and tp!759855 tp!759857))))

(declare-fun b!2379945 () Bool)

(declare-fun tp!759854 () Bool)

(assert (=> b!2379945 (= e!1518064 tp!759854)))

(assert (= (and b!2379342 ((_ is ElementMatch!6977) (reg!7306 r!13927))) b!2379943))

(assert (= (and b!2379342 ((_ is Concat!11613) (reg!7306 r!13927))) b!2379944))

(assert (= (and b!2379342 ((_ is Star!6977) (reg!7306 r!13927))) b!2379945))

(assert (= (and b!2379342 ((_ is Union!6977) (reg!7306 r!13927))) b!2379946))

(declare-fun b_lambda!74049 () Bool)

(assert (= b_lambda!74047 (or start!233468 b_lambda!74049)))

(declare-fun bs!461814 () Bool)

(declare-fun d!696559 () Bool)

(assert (= bs!461814 (and d!696559 start!233468)))

(assert (=> bs!461814 (= (dynLambda!12094 lambda!88565 (h!33496 l!9164)) (validRegex!2702 (h!33496 l!9164)))))

(declare-fun m!2784077 () Bool)

(assert (=> bs!461814 m!2784077))

(assert (=> b!2379763 d!696559))

(check-sat (not d!696473) (not bm!144563) (not b!2379869) (not b!2379875) (not d!696543) (not b!2379941) (not b!2379940) (not b!2379758) (not b!2379751) (not bm!144535) (not b!2379899) (not b!2379815) (not bm!144560) (not b!2379754) (not d!696513) (not b!2379867) (not b!2379944) (not b!2379757) (not b!2379591) (not b!2379860) (not bm!144559) (not d!696551) (not b!2379938) (not b!2379936) (not b!2379590) (not b!2379603) (not b!2379827) (not b!2379929) (not b!2379825) (not d!696493) (not b!2379914) (not b_lambda!74049) (not b!2379866) (not b!2379945) (not b!2379752) (not b!2379829) (not b!2379803) (not d!696541) (not bs!461814) (not b!2379934) (not d!696491) (not b!2379916) (not bm!144549) (not b!2379891) (not b!2379863) (not b!2379937) (not b!2379864) (not bm!144562) (not b!2379808) (not b!2379821) (not b!2379873) (not b!2379809) (not b!2379915) (not b!2379816) (not b!2379830) (not d!696537) (not b!2379924) (not b!2379426) (not d!696533) (not b!2379826) (not b!2379430) (not b!2379597) (not b!2379427) (not b!2379918) (not b!2379855) (not b!2379798) (not b!2379922) (not d!696527) (not d!696459) (not b!2379868) (not d!696535) tp_is_empty!11367 (not b!2379595) (not b!2379432) (not b!2379861) (not bm!144550) (not b!2379942) (not b!2379428) (not bm!144558) (not d!696525) (not d!696547) (not b!2379881) (not b!2379598) (not b!2379920) (not b!2379755) (not b!2379876) (not b!2379813) (not b!2379764) (not d!696523) (not bm!144548) (not b!2379892) (not b!2379946) (not b!2379824) (not b!2379425) (not b!2379431) (not d!696549) (not b!2379923) (not b!2379831) (not b!2379919))
(check-sat)
