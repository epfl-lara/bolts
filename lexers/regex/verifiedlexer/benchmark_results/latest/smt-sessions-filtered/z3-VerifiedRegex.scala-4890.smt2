; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250852 () Bool)

(assert start!250852)

(declare-fun b!2590275 () Bool)

(assert (=> b!2590275 true))

(declare-fun bs!472108 () Bool)

(declare-fun b!2590276 () Bool)

(assert (= bs!472108 (and b!2590276 b!2590275)))

(declare-fun lambda!95950 () Int)

(declare-fun lambda!95949 () Int)

(assert (=> bs!472108 (not (= lambda!95950 lambda!95949))))

(assert (=> b!2590276 true))

(declare-fun b!2590272 () Bool)

(declare-fun e!1633961 () Bool)

(declare-fun e!1633960 () Bool)

(assert (=> b!2590272 (= e!1633961 e!1633960)))

(declare-fun res!1089052 () Bool)

(assert (=> b!2590272 (=> res!1089052 e!1633960)))

(declare-datatypes ((B!1981 0))(
  ( (B!1982 (val!9458 Int)) )
))
(declare-datatypes ((List!29891 0))(
  ( (Nil!29791) (Cons!29791 (h!35211 B!1981) (t!212904 List!29891)) )
))
(declare-fun l!3230 () List!29891)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910785 () (InoxSet B!1981))

(declare-fun content!4132 (List!29891) (InoxSet B!1981))

(assert (=> b!2590272 (= res!1089052 (not (= (content!4132 l!3230) lt!910785)))))

(declare-fun lt!910796 () (InoxSet B!1981))

(assert (=> b!2590272 (= lt!910785 ((_ map or) lt!910796 (store ((as const (Array B!1981 Bool)) false) (h!35211 l!3230) true)))))

(declare-fun b!2590273 () Bool)

(declare-fun res!1089049 () Bool)

(declare-fun e!1633962 () Bool)

(assert (=> b!2590273 (=> (not res!1089049) (not e!1633962))))

(get-info :version)

(assert (=> b!2590273 (= res!1089049 ((_ is Cons!29791) l!3230))))

(declare-datatypes ((Unit!43682 0))(
  ( (Unit!43683) )
))
(declare-fun e!1633958 () Unit!43682)

(declare-fun Unit!43684 () Unit!43682)

(assert (=> b!2590275 (= e!1633958 Unit!43684)))

(declare-fun lt!910795 () Unit!43682)

(declare-fun lt!910789 () List!29891)

(declare-fun subsetContains!34 (List!29891 List!29891) Unit!43682)

(assert (=> b!2590275 (= lt!910795 (subsetContains!34 lt!910789 l!3230))))

(declare-fun lt!910793 () Unit!43682)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!8 (List!29891 List!29891) Unit!43682)

(assert (=> b!2590275 (= lt!910793 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!8 l!3230 lt!910789))))

(declare-fun exists!892 (List!29891 Int) Bool)

(assert (=> b!2590275 (exists!892 l!3230 lambda!95949)))

(declare-fun lt!910788 () B!1981)

(declare-fun getWitness!520 (List!29891 Int) B!1981)

(assert (=> b!2590275 (= lt!910788 (getWitness!520 l!3230 lambda!95949))))

(assert (=> b!2590275 false))

(declare-fun res!1089053 () Bool)

(declare-fun e!1633959 () Bool)

(assert (=> b!2590276 (=> res!1089053 e!1633959)))

(declare-fun forall!6073 (List!29891 Int) Bool)

(assert (=> b!2590276 (= res!1089053 (not (forall!6073 l!3230 lambda!95950)))))

(declare-fun b!2590277 () Bool)

(assert (=> b!2590277 (= e!1633959 (forall!6073 l!3230 lambda!95950))))

(declare-fun b!2590278 () Bool)

(declare-fun Unit!43685 () Unit!43682)

(assert (=> b!2590278 (= e!1633958 Unit!43685)))

(declare-fun b!2590279 () Bool)

(declare-fun e!1633957 () Bool)

(assert (=> b!2590279 (= e!1633957 e!1633959)))

(declare-fun res!1089059 () Bool)

(assert (=> b!2590279 (=> res!1089059 e!1633959)))

(declare-fun noDuplicate!339 (List!29891) Bool)

(assert (=> b!2590279 (= res!1089059 (not (noDuplicate!339 lt!910789)))))

(declare-fun lt!910784 () Unit!43682)

(assert (=> b!2590279 (= lt!910784 (subsetContains!34 l!3230 lt!910789))))

(declare-fun b!2590280 () Bool)

(declare-fun res!1089057 () Bool)

(assert (=> b!2590280 (=> res!1089057 e!1633957)))

(assert (=> b!2590280 (= res!1089057 (not (= lt!910785 (content!4132 l!3230))))))

(declare-fun b!2590281 () Bool)

(declare-fun e!1633963 () Bool)

(assert (=> b!2590281 (= e!1633963 e!1633961)))

(declare-fun res!1089056 () Bool)

(assert (=> b!2590281 (=> res!1089056 e!1633961)))

(declare-fun lt!910794 () Int)

(declare-fun size!23104 (List!29891) Int)

(assert (=> b!2590281 (= res!1089056 (not (= (size!23104 l!3230) lt!910794)))))

(declare-fun lt!910792 () Int)

(assert (=> b!2590281 (= lt!910794 (+ 1 lt!910792))))

(declare-fun b!2590282 () Bool)

(assert (=> b!2590282 (= e!1633962 (not e!1633963))))

(declare-fun res!1089050 () Bool)

(assert (=> b!2590282 (=> res!1089050 e!1633963)))

(declare-fun lt!910791 () Int)

(declare-fun lt!910787 () Int)

(assert (=> b!2590282 (= res!1089050 (or (>= lt!910787 lt!910791) (select lt!910796 (h!35211 l!3230))))))

(assert (=> b!2590282 (= lt!910791 (size!23104 l!3230))))

(assert (=> b!2590282 (= lt!910787 lt!910792)))

(assert (=> b!2590282 (= lt!910792 (size!23104 (t!212904 l!3230)))))

(declare-fun toList!1742 ((InoxSet B!1981)) List!29891)

(assert (=> b!2590282 (= lt!910787 (size!23104 (toList!1742 lt!910796)))))

(assert (=> b!2590282 (= lt!910796 (content!4132 (t!212904 l!3230)))))

(declare-fun lt!910797 () Unit!43682)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!32 (List!29891) Unit!43682)

(assert (=> b!2590282 (= lt!910797 (lemmaNoDuplicateThenContentToListSameSize!32 (t!212904 l!3230)))))

(declare-fun b!2590283 () Bool)

(assert (=> b!2590283 (= e!1633960 e!1633957)))

(declare-fun res!1089051 () Bool)

(assert (=> b!2590283 (=> res!1089051 e!1633957)))

(declare-fun lt!910786 () Int)

(assert (=> b!2590283 (= res!1089051 (<= lt!910786 lt!910794))))

(declare-fun lt!910790 () Unit!43682)

(assert (=> b!2590283 (= lt!910790 e!1633958)))

(declare-fun c!417604 () Bool)

(assert (=> b!2590283 (= c!417604 (< lt!910786 lt!910794))))

(assert (=> b!2590283 (= lt!910786 (size!23104 lt!910789))))

(assert (=> b!2590283 (= lt!910789 (toList!1742 lt!910785))))

(declare-fun b!2590274 () Bool)

(declare-fun e!1633956 () Bool)

(declare-fun tp_is_empty!13261 () Bool)

(declare-fun tp!822582 () Bool)

(assert (=> b!2590274 (= e!1633956 (and tp_is_empty!13261 tp!822582))))

(declare-fun res!1089058 () Bool)

(assert (=> start!250852 (=> (not res!1089058) (not e!1633962))))

(assert (=> start!250852 (= res!1089058 (noDuplicate!339 l!3230))))

(assert (=> start!250852 e!1633962))

(assert (=> start!250852 e!1633956))

(declare-fun b!2590284 () Bool)

(declare-fun res!1089055 () Bool)

(assert (=> b!2590284 (=> res!1089055 e!1633959)))

(assert (=> b!2590284 (= res!1089055 (<= lt!910786 lt!910791))))

(declare-fun b!2590285 () Bool)

(declare-fun res!1089054 () Bool)

(assert (=> b!2590285 (=> res!1089054 e!1633963)))

(declare-fun contains!5343 (List!29891 B!1981) Bool)

(assert (=> b!2590285 (= res!1089054 (contains!5343 (t!212904 l!3230) (h!35211 l!3230)))))

(assert (= (and start!250852 res!1089058) b!2590273))

(assert (= (and b!2590273 res!1089049) b!2590282))

(assert (= (and b!2590282 (not res!1089050)) b!2590285))

(assert (= (and b!2590285 (not res!1089054)) b!2590281))

(assert (= (and b!2590281 (not res!1089056)) b!2590272))

(assert (= (and b!2590272 (not res!1089052)) b!2590283))

(assert (= (and b!2590283 c!417604) b!2590275))

(assert (= (and b!2590283 (not c!417604)) b!2590278))

(assert (= (and b!2590283 (not res!1089051)) b!2590280))

(assert (= (and b!2590280 (not res!1089057)) b!2590279))

(assert (= (and b!2590279 (not res!1089059)) b!2590284))

(assert (= (and b!2590284 (not res!1089055)) b!2590276))

(assert (= (and b!2590276 (not res!1089053)) b!2590277))

(assert (= (and start!250852 ((_ is Cons!29791) l!3230)) b!2590274))

(declare-fun m!2926341 () Bool)

(assert (=> b!2590282 m!2926341))

(declare-fun m!2926343 () Bool)

(assert (=> b!2590282 m!2926343))

(declare-fun m!2926345 () Bool)

(assert (=> b!2590282 m!2926345))

(assert (=> b!2590282 m!2926341))

(declare-fun m!2926347 () Bool)

(assert (=> b!2590282 m!2926347))

(declare-fun m!2926349 () Bool)

(assert (=> b!2590282 m!2926349))

(declare-fun m!2926351 () Bool)

(assert (=> b!2590282 m!2926351))

(declare-fun m!2926353 () Bool)

(assert (=> b!2590282 m!2926353))

(declare-fun m!2926355 () Bool)

(assert (=> b!2590280 m!2926355))

(declare-fun m!2926357 () Bool)

(assert (=> b!2590277 m!2926357))

(declare-fun m!2926359 () Bool)

(assert (=> b!2590279 m!2926359))

(declare-fun m!2926361 () Bool)

(assert (=> b!2590279 m!2926361))

(declare-fun m!2926363 () Bool)

(assert (=> b!2590285 m!2926363))

(assert (=> b!2590272 m!2926355))

(declare-fun m!2926365 () Bool)

(assert (=> b!2590272 m!2926365))

(declare-fun m!2926367 () Bool)

(assert (=> b!2590275 m!2926367))

(declare-fun m!2926369 () Bool)

(assert (=> b!2590275 m!2926369))

(declare-fun m!2926371 () Bool)

(assert (=> b!2590275 m!2926371))

(declare-fun m!2926373 () Bool)

(assert (=> b!2590275 m!2926373))

(assert (=> b!2590276 m!2926357))

(assert (=> b!2590281 m!2926345))

(declare-fun m!2926375 () Bool)

(assert (=> b!2590283 m!2926375))

(declare-fun m!2926377 () Bool)

(assert (=> b!2590283 m!2926377))

(declare-fun m!2926379 () Bool)

(assert (=> start!250852 m!2926379))

(check-sat (not start!250852) (not b!2590279) (not b!2590280) (not b!2590276) tp_is_empty!13261 (not b!2590272) (not b!2590274) (not b!2590275) (not b!2590285) (not b!2590277) (not b!2590282) (not b!2590281) (not b!2590283))
(check-sat)
