; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759322 () Bool)

(assert start!759322)

(declare-fun b!8058541 () Bool)

(assert (=> b!8058541 true))

(declare-fun bs!1973455 () Bool)

(declare-fun b!8058543 () Bool)

(assert (= bs!1973455 (and b!8058543 b!8058541)))

(declare-fun lambda!475129 () Int)

(declare-datatypes ((V!23232 0))(
  ( (V!23233 (val!33055 Int)) )
))
(declare-datatypes ((K!22978 0))(
  ( (K!22979 (val!33056 Int)) )
))
(declare-datatypes ((tuple2!71020 0))(
  ( (tuple2!71021 (_1!38813 K!22978) (_2!38813 V!23232)) )
))
(declare-datatypes ((List!75763 0))(
  ( (Nil!75637) (Cons!75637 (h!82085 tuple2!71020) (t!391535 List!75763)) )
))
(declare-datatypes ((ListMap!7391 0))(
  ( (ListMap!7392 (toList!11970 List!75763)) )
))
(declare-fun lt!2732182 () ListMap!7391)

(declare-fun lambda!475128 () Int)

(declare-fun acc!836 () ListMap!7391)

(assert (=> bs!1973455 (= (= lt!2732182 acc!836) (= lambda!475129 lambda!475128))))

(assert (=> b!8058543 true))

(declare-fun lambda!475130 () Int)

(assert (=> b!8058541 (= (= lt!2732182 acc!836) (= lambda!475130 lambda!475128))))

(assert (=> bs!1973455 (= lambda!475130 lambda!475129)))

(assert (=> b!8058541 true))

(declare-fun b!8058534 () Bool)

(declare-fun e!4749019 () Bool)

(declare-fun tp!2414273 () Bool)

(assert (=> b!8058534 (= e!4749019 tp!2414273)))

(declare-fun b!8058535 () Bool)

(declare-fun res!3188014 () Bool)

(declare-fun e!4749018 () Bool)

(assert (=> b!8058535 (=> (not res!3188014) (not e!4749018))))

(declare-fun l!10976 () List!75763)

(declare-fun contains!21312 (ListMap!7391 K!22978) Bool)

(assert (=> b!8058535 (= res!3188014 (contains!21312 lt!2732182 (_1!38813 (h!82085 l!10976))))))

(declare-fun tp_is_empty!55165 () Bool)

(declare-fun b!8058536 () Bool)

(declare-fun tp!2414272 () Bool)

(declare-fun e!4749016 () Bool)

(declare-fun tp_is_empty!55163 () Bool)

(assert (=> b!8058536 (= e!4749016 (and tp_is_empty!55163 tp_is_empty!55165 tp!2414272))))

(declare-fun b!8058537 () Bool)

(declare-fun e!4749020 () Bool)

(assert (=> b!8058537 (= e!4749020 (= l!10976 (Cons!75637 (h!82085 l!10976) (t!391535 l!10976))))))

(declare-fun b!8058538 () Bool)

(declare-fun res!3188019 () Bool)

(declare-fun e!4749017 () Bool)

(assert (=> b!8058538 (=> (not res!3188019) (not e!4749017))))

(get-info :version)

(assert (=> b!8058538 (= res!3188019 (not ((_ is Nil!75637) l!10976)))))

(declare-fun b!8058540 () Bool)

(declare-fun res!3188015 () Bool)

(assert (=> b!8058540 (=> (not res!3188015) (not e!4749018))))

(declare-fun forall!18550 (List!75763 Int) Bool)

(assert (=> b!8058540 (= res!3188015 (forall!18550 l!10976 lambda!475130))))

(declare-fun lt!2732185 () ListMap!7391)

(assert (=> b!8058541 (= e!4749017 (not (forall!18550 (toList!11970 lt!2732185) lambda!475130)))))

(assert (=> b!8058541 e!4749018))

(declare-fun res!3188017 () Bool)

(assert (=> b!8058541 (=> (not res!3188017) (not e!4749018))))

(assert (=> b!8058541 (= res!3188017 (contains!21312 lt!2732185 (_1!38813 (h!82085 l!10976))))))

(declare-datatypes ((Unit!172716 0))(
  ( (Unit!172717) )
))
(declare-fun lt!2732184 () Unit!172716)

(declare-fun forallContained!4695 (List!75763 Int tuple2!71020) Unit!172716)

(assert (=> b!8058541 (= lt!2732184 (forallContained!4695 (toList!11970 lt!2732185) lambda!475130 (h!82085 l!10976)))))

(assert (=> b!8058541 e!4749020))

(declare-fun res!3188016 () Bool)

(assert (=> b!8058541 (=> (not res!3188016) (not e!4749020))))

(assert (=> b!8058541 (= res!3188016 (forall!18550 (toList!11970 acc!836) lambda!475128))))

(declare-fun lt!2732183 () Unit!172716)

(declare-fun lemmaContainsAllItsOwnKeys!1131 (ListMap!7391) Unit!172716)

(assert (=> b!8058541 (= lt!2732183 (lemmaContainsAllItsOwnKeys!1131 acc!836))))

(declare-fun addToMapMapFromBucket!2031 (List!75763 ListMap!7391) ListMap!7391)

(assert (=> b!8058541 (= lt!2732182 (addToMapMapFromBucket!2031 (t!391535 l!10976) lt!2732185))))

(declare-fun +!2717 (ListMap!7391 tuple2!71020) ListMap!7391)

(assert (=> b!8058541 (= lt!2732185 (+!2717 acc!836 (h!82085 l!10976)))))

(declare-fun b!8058542 () Bool)

(assert (=> b!8058542 (= e!4749018 (forall!18550 (toList!11970 lt!2732185) lambda!475130))))

(declare-fun res!3188018 () Bool)

(assert (=> b!8058543 (=> (not res!3188018) (not e!4749020))))

(assert (=> b!8058543 (= res!3188018 (forall!18550 (toList!11970 lt!2732185) lambda!475129))))

(declare-fun res!3188013 () Bool)

(assert (=> start!759322 (=> (not res!3188013) (not e!4749017))))

(declare-fun noDuplicateKeys!2756 (List!75763) Bool)

(assert (=> start!759322 (= res!3188013 (noDuplicateKeys!2756 l!10976))))

(assert (=> start!759322 e!4749017))

(assert (=> start!759322 e!4749016))

(declare-fun inv!97451 (ListMap!7391) Bool)

(assert (=> start!759322 (and (inv!97451 acc!836) e!4749019)))

(declare-fun b!8058539 () Bool)

(declare-fun res!3188012 () Bool)

(assert (=> b!8058539 (=> (not res!3188012) (not e!4749020))))

(assert (=> b!8058539 (= res!3188012 (forall!18550 (t!391535 l!10976) lambda!475129))))

(assert (= (and start!759322 res!3188013) b!8058538))

(assert (= (and b!8058538 res!3188019) b!8058541))

(assert (= (and b!8058541 res!3188016) b!8058543))

(assert (= (and b!8058543 res!3188018) b!8058539))

(assert (= (and b!8058539 res!3188012) b!8058537))

(assert (= (and b!8058541 res!3188017) b!8058535))

(assert (= (and b!8058535 res!3188014) b!8058540))

(assert (= (and b!8058540 res!3188015) b!8058542))

(assert (= (and start!759322 ((_ is Cons!75637) l!10976)) b!8058536))

(assert (= start!759322 b!8058534))

(declare-fun m!8411788 () Bool)

(assert (=> b!8058542 m!8411788))

(declare-fun m!8411790 () Bool)

(assert (=> start!759322 m!8411790))

(declare-fun m!8411792 () Bool)

(assert (=> start!759322 m!8411792))

(declare-fun m!8411794 () Bool)

(assert (=> b!8058540 m!8411794))

(declare-fun m!8411796 () Bool)

(assert (=> b!8058539 m!8411796))

(declare-fun m!8411798 () Bool)

(assert (=> b!8058535 m!8411798))

(declare-fun m!8411800 () Bool)

(assert (=> b!8058543 m!8411800))

(declare-fun m!8411802 () Bool)

(assert (=> b!8058541 m!8411802))

(declare-fun m!8411804 () Bool)

(assert (=> b!8058541 m!8411804))

(declare-fun m!8411806 () Bool)

(assert (=> b!8058541 m!8411806))

(assert (=> b!8058541 m!8411788))

(declare-fun m!8411808 () Bool)

(assert (=> b!8058541 m!8411808))

(declare-fun m!8411810 () Bool)

(assert (=> b!8058541 m!8411810))

(declare-fun m!8411812 () Bool)

(assert (=> b!8058541 m!8411812))

(check-sat (not b!8058536) (not start!759322) tp_is_empty!55165 (not b!8058541) (not b!8058535) (not b!8058540) (not b!8058534) (not b!8058543) tp_is_empty!55163 (not b!8058539) (not b!8058542))
(check-sat)
