; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759314 () Bool)

(assert start!759314)

(declare-fun b!8058408 () Bool)

(assert (=> b!8058408 true))

(declare-fun bs!1973447 () Bool)

(declare-fun b!8058412 () Bool)

(assert (= bs!1973447 (and b!8058412 b!8058408)))

(declare-fun lambda!475064 () Int)

(declare-datatypes ((V!23222 0))(
  ( (V!23223 (val!33047 Int)) )
))
(declare-datatypes ((K!22968 0))(
  ( (K!22969 (val!33048 Int)) )
))
(declare-datatypes ((tuple2!71012 0))(
  ( (tuple2!71013 (_1!38809 K!22968) (_2!38809 V!23222)) )
))
(declare-datatypes ((List!75759 0))(
  ( (Nil!75633) (Cons!75633 (h!82081 tuple2!71012) (t!391531 List!75759)) )
))
(declare-datatypes ((ListMap!7383 0))(
  ( (ListMap!7384 (toList!11966 List!75759)) )
))
(declare-fun lt!2732135 () ListMap!7383)

(declare-fun lambda!475065 () Int)

(declare-fun acc!836 () ListMap!7383)

(assert (=> bs!1973447 (= (= lt!2732135 acc!836) (= lambda!475065 lambda!475064))))

(assert (=> b!8058412 true))

(declare-fun lambda!475066 () Int)

(assert (=> b!8058408 (= (= lt!2732135 acc!836) (= lambda!475066 lambda!475064))))

(assert (=> bs!1973447 (= lambda!475066 lambda!475065)))

(assert (=> b!8058408 true))

(declare-fun tp_is_empty!55149 () Bool)

(declare-fun b!8058407 () Bool)

(declare-fun e!4748957 () Bool)

(declare-fun tp_is_empty!55147 () Bool)

(declare-fun tp!2414249 () Bool)

(assert (=> b!8058407 (= e!4748957 (and tp_is_empty!55147 tp_is_empty!55149 tp!2414249))))

(declare-fun e!4748960 () Bool)

(declare-fun lt!2732136 () ListMap!7383)

(declare-fun forall!18546 (List!75759 Int) Bool)

(assert (=> b!8058408 (= e!4748960 (not (forall!18546 (toList!11966 lt!2732136) lambda!475066)))))

(declare-fun e!4748956 () Bool)

(assert (=> b!8058408 e!4748956))

(declare-fun res!3187918 () Bool)

(assert (=> b!8058408 (=> (not res!3187918) (not e!4748956))))

(declare-fun l!10976 () List!75759)

(declare-fun contains!21308 (ListMap!7383 K!22968) Bool)

(assert (=> b!8058408 (= res!3187918 (contains!21308 lt!2732136 (_1!38809 (h!82081 l!10976))))))

(declare-datatypes ((Unit!172708 0))(
  ( (Unit!172709) )
))
(declare-fun lt!2732137 () Unit!172708)

(declare-fun forallContained!4691 (List!75759 Int tuple2!71012) Unit!172708)

(assert (=> b!8058408 (= lt!2732137 (forallContained!4691 (toList!11966 lt!2732136) lambda!475066 (h!82081 l!10976)))))

(declare-fun e!4748958 () Bool)

(assert (=> b!8058408 e!4748958))

(declare-fun res!3187921 () Bool)

(assert (=> b!8058408 (=> (not res!3187921) (not e!4748958))))

(assert (=> b!8058408 (= res!3187921 (forall!18546 (toList!11966 acc!836) lambda!475064))))

(declare-fun lt!2732134 () Unit!172708)

(declare-fun lemmaContainsAllItsOwnKeys!1127 (ListMap!7383) Unit!172708)

(assert (=> b!8058408 (= lt!2732134 (lemmaContainsAllItsOwnKeys!1127 acc!836))))

(declare-fun addToMapMapFromBucket!2027 (List!75759 ListMap!7383) ListMap!7383)

(assert (=> b!8058408 (= lt!2732135 (addToMapMapFromBucket!2027 (t!391531 l!10976) lt!2732136))))

(declare-fun +!2713 (ListMap!7383 tuple2!71012) ListMap!7383)

(assert (=> b!8058408 (= lt!2732136 (+!2713 acc!836 (h!82081 l!10976)))))

(declare-fun b!8058409 () Bool)

(declare-fun res!3187917 () Bool)

(assert (=> b!8058409 (=> (not res!3187917) (not e!4748958))))

(assert (=> b!8058409 (= res!3187917 (forall!18546 (t!391531 l!10976) lambda!475065))))

(declare-fun b!8058410 () Bool)

(assert (=> b!8058410 (= e!4748958 (= l!10976 (Cons!75633 (h!82081 l!10976) (t!391531 l!10976))))))

(declare-fun b!8058411 () Bool)

(declare-fun e!4748959 () Bool)

(declare-fun tp!2414248 () Bool)

(assert (=> b!8058411 (= e!4748959 tp!2414248)))

(declare-fun res!3187919 () Bool)

(assert (=> b!8058412 (=> (not res!3187919) (not e!4748958))))

(assert (=> b!8058412 (= res!3187919 (forall!18546 (toList!11966 lt!2732136) lambda!475065))))

(declare-fun b!8058413 () Bool)

(declare-fun res!3187920 () Bool)

(assert (=> b!8058413 (=> (not res!3187920) (not e!4748960))))

(get-info :version)

(assert (=> b!8058413 (= res!3187920 (not ((_ is Nil!75633) l!10976)))))

(declare-fun res!3187922 () Bool)

(assert (=> start!759314 (=> (not res!3187922) (not e!4748960))))

(declare-fun noDuplicateKeys!2752 (List!75759) Bool)

(assert (=> start!759314 (= res!3187922 (noDuplicateKeys!2752 l!10976))))

(assert (=> start!759314 e!4748960))

(assert (=> start!759314 e!4748957))

(declare-fun inv!97441 (ListMap!7383) Bool)

(assert (=> start!759314 (and (inv!97441 acc!836) e!4748959)))

(declare-fun b!8058414 () Bool)

(declare-fun res!3187923 () Bool)

(assert (=> b!8058414 (=> (not res!3187923) (not e!4748956))))

(assert (=> b!8058414 (= res!3187923 (contains!21308 lt!2732135 (_1!38809 (h!82081 l!10976))))))

(declare-fun b!8058415 () Bool)

(assert (=> b!8058415 (= e!4748956 (forall!18546 l!10976 lambda!475066))))

(assert (= (and start!759314 res!3187922) b!8058413))

(assert (= (and b!8058413 res!3187920) b!8058408))

(assert (= (and b!8058408 res!3187921) b!8058412))

(assert (= (and b!8058412 res!3187919) b!8058409))

(assert (= (and b!8058409 res!3187917) b!8058410))

(assert (= (and b!8058408 res!3187918) b!8058414))

(assert (= (and b!8058414 res!3187923) b!8058415))

(assert (= (and start!759314 ((_ is Cons!75633) l!10976)) b!8058407))

(assert (= start!759314 b!8058411))

(declare-fun m!8411684 () Bool)

(assert (=> b!8058408 m!8411684))

(declare-fun m!8411686 () Bool)

(assert (=> b!8058408 m!8411686))

(declare-fun m!8411688 () Bool)

(assert (=> b!8058408 m!8411688))

(declare-fun m!8411690 () Bool)

(assert (=> b!8058408 m!8411690))

(declare-fun m!8411692 () Bool)

(assert (=> b!8058408 m!8411692))

(declare-fun m!8411694 () Bool)

(assert (=> b!8058408 m!8411694))

(declare-fun m!8411696 () Bool)

(assert (=> b!8058408 m!8411696))

(declare-fun m!8411698 () Bool)

(assert (=> start!759314 m!8411698))

(declare-fun m!8411700 () Bool)

(assert (=> start!759314 m!8411700))

(declare-fun m!8411702 () Bool)

(assert (=> b!8058412 m!8411702))

(declare-fun m!8411704 () Bool)

(assert (=> b!8058415 m!8411704))

(declare-fun m!8411706 () Bool)

(assert (=> b!8058414 m!8411706))

(declare-fun m!8411708 () Bool)

(assert (=> b!8058409 m!8411708))

(check-sat (not b!8058407) (not b!8058408) (not b!8058412) (not b!8058414) tp_is_empty!55149 (not b!8058409) (not b!8058415) (not start!759314) tp_is_empty!55147 (not b!8058411))
(check-sat)
