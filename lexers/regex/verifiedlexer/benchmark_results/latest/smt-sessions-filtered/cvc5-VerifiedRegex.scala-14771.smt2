; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759328 () Bool)

(assert start!759328)

(declare-fun b!8058642 () Bool)

(assert (=> b!8058642 true))

(declare-fun bs!1973462 () Bool)

(declare-fun b!8058641 () Bool)

(assert (= bs!1973462 (and b!8058641 b!8058642)))

(declare-fun lambda!475190 () Int)

(declare-fun lambda!475189 () Int)

(declare-datatypes ((V!23240 0))(
  ( (V!23241 (val!33061 Int)) )
))
(declare-datatypes ((K!22986 0))(
  ( (K!22987 (val!33062 Int)) )
))
(declare-datatypes ((tuple2!71026 0))(
  ( (tuple2!71027 (_1!38816 K!22986) (_2!38816 V!23240)) )
))
(declare-datatypes ((List!75766 0))(
  ( (Nil!75640) (Cons!75640 (h!82088 tuple2!71026) (t!391538 List!75766)) )
))
(declare-datatypes ((ListMap!7397 0))(
  ( (ListMap!7398 (toList!11973 List!75766)) )
))
(declare-fun lt!2732226 () ListMap!7397)

(declare-fun acc!836 () ListMap!7397)

(assert (=> bs!1973462 (= (= lt!2732226 acc!836) (= lambda!475190 lambda!475189))))

(assert (=> b!8058641 true))

(declare-fun lambda!475191 () Int)

(assert (=> b!8058642 (= (= lt!2732226 acc!836) (= lambda!475191 lambda!475189))))

(assert (=> bs!1973462 (= lambda!475191 lambda!475190)))

(assert (=> b!8058642 true))

(declare-fun b!8058634 () Bool)

(declare-fun res!3188094 () Bool)

(declare-fun e!4749065 () Bool)

(assert (=> b!8058634 (=> (not res!3188094) (not e!4749065))))

(declare-fun l!10976 () List!75766)

(declare-fun forall!18553 (List!75766 Int) Bool)

(assert (=> b!8058634 (= res!3188094 (forall!18553 l!10976 lambda!475191))))

(declare-fun b!8058635 () Bool)

(declare-fun res!3188092 () Bool)

(assert (=> b!8058635 (=> (not res!3188092) (not e!4749065))))

(declare-fun contains!21315 (ListMap!7397 K!22986) Bool)

(assert (=> b!8058635 (= res!3188092 (contains!21315 lt!2732226 (_1!38816 (h!82088 l!10976))))))

(declare-fun b!8058636 () Bool)

(declare-fun lt!2732227 () ListMap!7397)

(assert (=> b!8058636 (= e!4749065 (forall!18553 (toList!11973 lt!2732227) lambda!475191))))

(declare-fun b!8058637 () Bool)

(declare-fun e!4749068 () Bool)

(assert (=> b!8058637 (= e!4749068 (= l!10976 (Cons!75640 (h!82088 l!10976) (t!391538 l!10976))))))

(declare-fun b!8058638 () Bool)

(declare-fun res!3188090 () Bool)

(assert (=> b!8058638 (=> (not res!3188090) (not e!4749068))))

(assert (=> b!8058638 (= res!3188090 (forall!18553 (t!391538 l!10976) lambda!475190))))

(declare-fun b!8058639 () Bool)

(declare-fun res!3188089 () Bool)

(declare-fun e!4749069 () Bool)

(assert (=> b!8058639 (=> (not res!3188089) (not e!4749069))))

(assert (=> b!8058639 (= res!3188089 (not (is-Nil!75640 l!10976)))))

(declare-fun b!8058640 () Bool)

(declare-fun tp!2414291 () Bool)

(declare-fun tp_is_empty!55175 () Bool)

(declare-fun tp_is_empty!55177 () Bool)

(declare-fun e!4749070 () Bool)

(assert (=> b!8058640 (= e!4749070 (and tp_is_empty!55175 tp_is_empty!55177 tp!2414291))))

(declare-fun e!4749066 () Bool)

(assert (=> b!8058642 (= e!4749069 (not e!4749066))))

(declare-fun res!3188093 () Bool)

(assert (=> b!8058642 (=> (not res!3188093) (not e!4749066))))

(assert (=> b!8058642 (= res!3188093 (forall!18553 l!10976 lambda!475191))))

(declare-fun e!4749067 () Bool)

(assert (=> b!8058642 e!4749067))

(declare-fun res!3188096 () Bool)

(assert (=> b!8058642 (=> (not res!3188096) (not e!4749067))))

(assert (=> b!8058642 (= res!3188096 (forall!18553 (toList!11973 acc!836) lambda!475191))))

(declare-datatypes ((Unit!172722 0))(
  ( (Unit!172723) )
))
(declare-fun lt!2732230 () Unit!172722)

(declare-fun addForallContainsKeyThenBeforeAdding!1114 (ListMap!7397 ListMap!7397 K!22986 V!23240) Unit!172722)

(assert (=> b!8058642 (= lt!2732230 (addForallContainsKeyThenBeforeAdding!1114 acc!836 lt!2732226 (_1!38816 (h!82088 l!10976)) (_2!38816 (h!82088 l!10976))))))

(assert (=> b!8058642 e!4749065))

(declare-fun res!3188088 () Bool)

(assert (=> b!8058642 (=> (not res!3188088) (not e!4749065))))

(assert (=> b!8058642 (= res!3188088 (contains!21315 lt!2732227 (_1!38816 (h!82088 l!10976))))))

(declare-fun lt!2732228 () Unit!172722)

(declare-fun forallContained!4698 (List!75766 Int tuple2!71026) Unit!172722)

(assert (=> b!8058642 (= lt!2732228 (forallContained!4698 (toList!11973 lt!2732227) lambda!475191 (h!82088 l!10976)))))

(assert (=> b!8058642 e!4749068))

(declare-fun res!3188097 () Bool)

(assert (=> b!8058642 (=> (not res!3188097) (not e!4749068))))

(assert (=> b!8058642 (= res!3188097 (forall!18553 (toList!11973 acc!836) lambda!475189))))

(declare-fun lt!2732229 () Unit!172722)

(declare-fun lemmaContainsAllItsOwnKeys!1134 (ListMap!7397) Unit!172722)

(assert (=> b!8058642 (= lt!2732229 (lemmaContainsAllItsOwnKeys!1134 acc!836))))

(declare-fun addToMapMapFromBucket!2034 (List!75766 ListMap!7397) ListMap!7397)

(assert (=> b!8058642 (= lt!2732226 (addToMapMapFromBucket!2034 (t!391538 l!10976) lt!2732227))))

(declare-fun +!2720 (ListMap!7397 tuple2!71026) ListMap!7397)

(assert (=> b!8058642 (= lt!2732227 (+!2720 acc!836 (h!82088 l!10976)))))

(declare-fun b!8058643 () Bool)

(assert (=> b!8058643 (= e!4749067 (forall!18553 (toList!11973 acc!836) lambda!475191))))

(declare-fun b!8058644 () Bool)

(assert (=> b!8058644 (= e!4749066 (forall!18553 (toList!11973 acc!836) lambda!475191))))

(declare-fun b!8058645 () Bool)

(declare-fun e!4749071 () Bool)

(declare-fun tp!2414290 () Bool)

(assert (=> b!8058645 (= e!4749071 tp!2414290)))

(declare-fun res!3188091 () Bool)

(assert (=> b!8058641 (=> (not res!3188091) (not e!4749068))))

(assert (=> b!8058641 (= res!3188091 (forall!18553 (toList!11973 lt!2732227) lambda!475190))))

(declare-fun res!3188095 () Bool)

(assert (=> start!759328 (=> (not res!3188095) (not e!4749069))))

(declare-fun noDuplicateKeys!2759 (List!75766) Bool)

(assert (=> start!759328 (= res!3188095 (noDuplicateKeys!2759 l!10976))))

(assert (=> start!759328 e!4749069))

(assert (=> start!759328 e!4749070))

(declare-fun inv!97460 (ListMap!7397) Bool)

(assert (=> start!759328 (and (inv!97460 acc!836) e!4749071)))

(assert (= (and start!759328 res!3188095) b!8058639))

(assert (= (and b!8058639 res!3188089) b!8058642))

(assert (= (and b!8058642 res!3188097) b!8058641))

(assert (= (and b!8058641 res!3188091) b!8058638))

(assert (= (and b!8058638 res!3188090) b!8058637))

(assert (= (and b!8058642 res!3188088) b!8058635))

(assert (= (and b!8058635 res!3188092) b!8058634))

(assert (= (and b!8058634 res!3188094) b!8058636))

(assert (= (and b!8058642 res!3188096) b!8058643))

(assert (= (and b!8058642 res!3188093) b!8058644))

(assert (= (and start!759328 (is-Cons!75640 l!10976)) b!8058640))

(assert (= start!759328 b!8058645))

(declare-fun m!8411874 () Bool)

(assert (=> b!8058638 m!8411874))

(declare-fun m!8411876 () Bool)

(assert (=> b!8058635 m!8411876))

(declare-fun m!8411878 () Bool)

(assert (=> start!759328 m!8411878))

(declare-fun m!8411880 () Bool)

(assert (=> start!759328 m!8411880))

(declare-fun m!8411882 () Bool)

(assert (=> b!8058643 m!8411882))

(declare-fun m!8411884 () Bool)

(assert (=> b!8058641 m!8411884))

(declare-fun m!8411886 () Bool)

(assert (=> b!8058642 m!8411886))

(declare-fun m!8411888 () Bool)

(assert (=> b!8058642 m!8411888))

(declare-fun m!8411890 () Bool)

(assert (=> b!8058642 m!8411890))

(declare-fun m!8411892 () Bool)

(assert (=> b!8058642 m!8411892))

(declare-fun m!8411894 () Bool)

(assert (=> b!8058642 m!8411894))

(declare-fun m!8411896 () Bool)

(assert (=> b!8058642 m!8411896))

(declare-fun m!8411898 () Bool)

(assert (=> b!8058642 m!8411898))

(assert (=> b!8058642 m!8411882))

(declare-fun m!8411900 () Bool)

(assert (=> b!8058642 m!8411900))

(assert (=> b!8058644 m!8411882))

(declare-fun m!8411902 () Bool)

(assert (=> b!8058636 m!8411902))

(assert (=> b!8058634 m!8411894))

(push 1)

(assert (not b!8058635))

(assert (not b!8058642))

(assert tp_is_empty!55177)

(assert (not start!759328))

(assert (not b!8058645))

(assert (not b!8058636))

(assert (not b!8058638))

(assert (not b!8058634))

(assert (not b!8058643))

(assert tp_is_empty!55175)

(assert (not b!8058644))

(assert (not b!8058641))

(assert (not b!8058640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

