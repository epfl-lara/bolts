; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759316 () Bool)

(assert start!759316)

(declare-fun b!8058438 () Bool)

(assert (=> b!8058438 true))

(declare-fun bs!1973450 () Bool)

(declare-fun b!8058444 () Bool)

(assert (= bs!1973450 (and b!8058444 b!8058438)))

(declare-fun lambda!475079 () Int)

(declare-datatypes ((V!23225 0))(
  ( (V!23226 (val!33049 Int)) )
))
(declare-datatypes ((K!22971 0))(
  ( (K!22972 (val!33050 Int)) )
))
(declare-datatypes ((tuple2!71014 0))(
  ( (tuple2!71015 (_1!38810 K!22971) (_2!38810 V!23225)) )
))
(declare-datatypes ((List!75760 0))(
  ( (Nil!75634) (Cons!75634 (h!82082 tuple2!71014) (t!391532 List!75760)) )
))
(declare-datatypes ((ListMap!7385 0))(
  ( (ListMap!7386 (toList!11967 List!75760)) )
))
(declare-fun lt!2732149 () ListMap!7385)

(declare-fun lambda!475080 () Int)

(declare-fun acc!836 () ListMap!7385)

(assert (=> bs!1973450 (= (= lt!2732149 acc!836) (= lambda!475080 lambda!475079))))

(assert (=> b!8058444 true))

(declare-fun lambda!475081 () Int)

(assert (=> b!8058438 (= (= lt!2732149 acc!836) (= lambda!475081 lambda!475079))))

(assert (=> bs!1973450 (= lambda!475081 lambda!475080)))

(assert (=> b!8058438 true))

(declare-fun e!4748974 () Bool)

(assert (=> b!8058438 (= e!4748974 (not true))))

(declare-fun e!4748975 () Bool)

(assert (=> b!8058438 e!4748975))

(declare-fun res!3187942 () Bool)

(assert (=> b!8058438 (=> (not res!3187942) (not e!4748975))))

(declare-fun lt!2732148 () ListMap!7385)

(declare-fun l!10976 () List!75760)

(declare-fun contains!21309 (ListMap!7385 K!22971) Bool)

(assert (=> b!8058438 (= res!3187942 (contains!21309 lt!2732148 (_1!38810 (h!82082 l!10976))))))

(declare-datatypes ((Unit!172710 0))(
  ( (Unit!172711) )
))
(declare-fun lt!2732147 () Unit!172710)

(declare-fun forallContained!4692 (List!75760 Int tuple2!71014) Unit!172710)

(assert (=> b!8058438 (= lt!2732147 (forallContained!4692 (toList!11967 lt!2732148) lambda!475081 (h!82082 l!10976)))))

(declare-fun e!4748972 () Bool)

(assert (=> b!8058438 e!4748972))

(declare-fun res!3187947 () Bool)

(assert (=> b!8058438 (=> (not res!3187947) (not e!4748972))))

(declare-fun forall!18547 (List!75760 Int) Bool)

(assert (=> b!8058438 (= res!3187947 (forall!18547 (toList!11967 acc!836) lambda!475079))))

(declare-fun lt!2732146 () Unit!172710)

(declare-fun lemmaContainsAllItsOwnKeys!1128 (ListMap!7385) Unit!172710)

(assert (=> b!8058438 (= lt!2732146 (lemmaContainsAllItsOwnKeys!1128 acc!836))))

(declare-fun addToMapMapFromBucket!2028 (List!75760 ListMap!7385) ListMap!7385)

(assert (=> b!8058438 (= lt!2732149 (addToMapMapFromBucket!2028 (t!391532 l!10976) lt!2732148))))

(declare-fun +!2714 (ListMap!7385 tuple2!71014) ListMap!7385)

(assert (=> b!8058438 (= lt!2732148 (+!2714 acc!836 (h!82082 l!10976)))))

(declare-fun b!8058439 () Bool)

(declare-fun res!3187943 () Bool)

(assert (=> b!8058439 (=> (not res!3187943) (not e!4748974))))

(assert (=> b!8058439 (= res!3187943 (not (is-Nil!75634 l!10976)))))

(declare-fun b!8058440 () Bool)

(declare-fun res!3187946 () Bool)

(assert (=> b!8058440 (=> (not res!3187946) (not e!4748975))))

(assert (=> b!8058440 (= res!3187946 (forall!18547 l!10976 lambda!475081))))

(declare-fun b!8058441 () Bool)

(assert (=> b!8058441 (= e!4748975 (forall!18547 (toList!11967 lt!2732148) lambda!475081))))

(declare-fun b!8058442 () Bool)

(assert (=> b!8058442 (= e!4748972 (= l!10976 (Cons!75634 (h!82082 l!10976) (t!391532 l!10976))))))

(declare-fun res!3187945 () Bool)

(assert (=> b!8058444 (=> (not res!3187945) (not e!4748972))))

(assert (=> b!8058444 (= res!3187945 (forall!18547 (toList!11967 lt!2732148) lambda!475080))))

(declare-fun b!8058445 () Bool)

(declare-fun res!3187944 () Bool)

(assert (=> b!8058445 (=> (not res!3187944) (not e!4748975))))

(assert (=> b!8058445 (= res!3187944 (contains!21309 lt!2732149 (_1!38810 (h!82082 l!10976))))))

(declare-fun e!4748971 () Bool)

(declare-fun tp_is_empty!55153 () Bool)

(declare-fun tp!2414254 () Bool)

(declare-fun tp_is_empty!55151 () Bool)

(declare-fun b!8058446 () Bool)

(assert (=> b!8058446 (= e!4748971 (and tp_is_empty!55151 tp_is_empty!55153 tp!2414254))))

(declare-fun b!8058447 () Bool)

(declare-fun res!3187940 () Bool)

(assert (=> b!8058447 (=> (not res!3187940) (not e!4748972))))

(assert (=> b!8058447 (= res!3187940 (forall!18547 (t!391532 l!10976) lambda!475080))))

(declare-fun b!8058443 () Bool)

(declare-fun e!4748973 () Bool)

(declare-fun tp!2414255 () Bool)

(assert (=> b!8058443 (= e!4748973 tp!2414255)))

(declare-fun res!3187941 () Bool)

(assert (=> start!759316 (=> (not res!3187941) (not e!4748974))))

(declare-fun noDuplicateKeys!2753 (List!75760) Bool)

(assert (=> start!759316 (= res!3187941 (noDuplicateKeys!2753 l!10976))))

(assert (=> start!759316 e!4748974))

(assert (=> start!759316 e!4748971))

(declare-fun inv!97445 (ListMap!7385) Bool)

(assert (=> start!759316 (and (inv!97445 acc!836) e!4748973)))

(assert (= (and start!759316 res!3187941) b!8058439))

(assert (= (and b!8058439 res!3187943) b!8058438))

(assert (= (and b!8058438 res!3187947) b!8058444))

(assert (= (and b!8058444 res!3187945) b!8058447))

(assert (= (and b!8058447 res!3187940) b!8058442))

(assert (= (and b!8058438 res!3187942) b!8058445))

(assert (= (and b!8058445 res!3187944) b!8058440))

(assert (= (and b!8058440 res!3187946) b!8058441))

(assert (= (and start!759316 (is-Cons!75634 l!10976)) b!8058446))

(assert (= start!759316 b!8058443))

(declare-fun m!8411710 () Bool)

(assert (=> b!8058440 m!8411710))

(declare-fun m!8411712 () Bool)

(assert (=> b!8058441 m!8411712))

(declare-fun m!8411714 () Bool)

(assert (=> b!8058444 m!8411714))

(declare-fun m!8411716 () Bool)

(assert (=> b!8058447 m!8411716))

(declare-fun m!8411718 () Bool)

(assert (=> start!759316 m!8411718))

(declare-fun m!8411720 () Bool)

(assert (=> start!759316 m!8411720))

(declare-fun m!8411722 () Bool)

(assert (=> b!8058438 m!8411722))

(declare-fun m!8411724 () Bool)

(assert (=> b!8058438 m!8411724))

(declare-fun m!8411726 () Bool)

(assert (=> b!8058438 m!8411726))

(declare-fun m!8411728 () Bool)

(assert (=> b!8058438 m!8411728))

(declare-fun m!8411730 () Bool)

(assert (=> b!8058438 m!8411730))

(declare-fun m!8411732 () Bool)

(assert (=> b!8058438 m!8411732))

(declare-fun m!8411734 () Bool)

(assert (=> b!8058445 m!8411734))

(push 1)

(assert (not b!8058438))

(assert (not b!8058446))

(assert (not b!8058440))

(assert (not b!8058447))

(assert tp_is_empty!55153)

(assert (not start!759316))

(assert (not b!8058445))

(assert (not b!8058443))

(assert (not b!8058444))

(assert tp_is_empty!55151)

(assert (not b!8058441))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

