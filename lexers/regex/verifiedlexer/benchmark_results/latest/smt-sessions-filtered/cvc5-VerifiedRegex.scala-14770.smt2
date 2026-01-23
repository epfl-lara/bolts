; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759324 () Bool)

(assert start!759324)

(declare-fun b!8058567 () Bool)

(assert (=> b!8058567 true))

(declare-fun bs!1973458 () Bool)

(declare-fun b!8058570 () Bool)

(assert (= bs!1973458 (and b!8058570 b!8058567)))

(declare-datatypes ((V!23235 0))(
  ( (V!23236 (val!33057 Int)) )
))
(declare-datatypes ((K!22981 0))(
  ( (K!22982 (val!33058 Int)) )
))
(declare-datatypes ((tuple2!71022 0))(
  ( (tuple2!71023 (_1!38814 K!22981) (_2!38814 V!23235)) )
))
(declare-datatypes ((List!75764 0))(
  ( (Nil!75638) (Cons!75638 (h!82086 tuple2!71022) (t!391536 List!75764)) )
))
(declare-datatypes ((ListMap!7393 0))(
  ( (ListMap!7394 (toList!11971 List!75764)) )
))
(declare-fun lt!2732196 () ListMap!7393)

(declare-fun lambda!475148 () Int)

(declare-fun lambda!475147 () Int)

(declare-fun acc!836 () ListMap!7393)

(assert (=> bs!1973458 (= (= lt!2732196 acc!836) (= lambda!475148 lambda!475147))))

(assert (=> b!8058570 true))

(declare-fun lambda!475149 () Int)

(assert (=> b!8058567 (= (= lt!2732196 acc!836) (= lambda!475149 lambda!475147))))

(assert (=> bs!1973458 (= lambda!475149 lambda!475148)))

(assert (=> b!8058567 true))

(declare-fun b!8058566 () Bool)

(declare-fun res!3188037 () Bool)

(declare-fun e!4749033 () Bool)

(assert (=> b!8058566 (=> (not res!3188037) (not e!4749033))))

(declare-fun l!10976 () List!75764)

(assert (=> b!8058566 (= res!3188037 (not (is-Nil!75638 l!10976)))))

(declare-fun forall!18551 (List!75764 Int) Bool)

(assert (=> b!8058567 (= e!4749033 (not (forall!18551 (toList!11971 acc!836) lambda!475149)))))

(assert (=> b!8058567 (forall!18551 (toList!11971 acc!836) lambda!475149)))

(declare-datatypes ((Unit!172718 0))(
  ( (Unit!172719) )
))
(declare-fun lt!2732198 () Unit!172718)

(declare-fun addForallContainsKeyThenBeforeAdding!1112 (ListMap!7393 ListMap!7393 K!22981 V!23235) Unit!172718)

(assert (=> b!8058567 (= lt!2732198 (addForallContainsKeyThenBeforeAdding!1112 acc!836 lt!2732196 (_1!38814 (h!82086 l!10976)) (_2!38814 (h!82086 l!10976))))))

(declare-fun e!4749035 () Bool)

(assert (=> b!8058567 e!4749035))

(declare-fun res!3188040 () Bool)

(assert (=> b!8058567 (=> (not res!3188040) (not e!4749035))))

(declare-fun lt!2732200 () ListMap!7393)

(declare-fun contains!21313 (ListMap!7393 K!22981) Bool)

(assert (=> b!8058567 (= res!3188040 (contains!21313 lt!2732200 (_1!38814 (h!82086 l!10976))))))

(declare-fun lt!2732199 () Unit!172718)

(declare-fun forallContained!4696 (List!75764 Int tuple2!71022) Unit!172718)

(assert (=> b!8058567 (= lt!2732199 (forallContained!4696 (toList!11971 lt!2732200) lambda!475149 (h!82086 l!10976)))))

(declare-fun e!4749031 () Bool)

(assert (=> b!8058567 e!4749031))

(declare-fun res!3188038 () Bool)

(assert (=> b!8058567 (=> (not res!3188038) (not e!4749031))))

(assert (=> b!8058567 (= res!3188038 (forall!18551 (toList!11971 acc!836) lambda!475147))))

(declare-fun lt!2732197 () Unit!172718)

(declare-fun lemmaContainsAllItsOwnKeys!1132 (ListMap!7393) Unit!172718)

(assert (=> b!8058567 (= lt!2732197 (lemmaContainsAllItsOwnKeys!1132 acc!836))))

(declare-fun addToMapMapFromBucket!2032 (List!75764 ListMap!7393) ListMap!7393)

(assert (=> b!8058567 (= lt!2732196 (addToMapMapFromBucket!2032 (t!391536 l!10976) lt!2732200))))

(declare-fun +!2718 (ListMap!7393 tuple2!71022) ListMap!7393)

(assert (=> b!8058567 (= lt!2732200 (+!2718 acc!836 (h!82086 l!10976)))))

(declare-fun b!8058568 () Bool)

(declare-fun res!3188036 () Bool)

(assert (=> b!8058568 (=> (not res!3188036) (not e!4749035))))

(assert (=> b!8058568 (= res!3188036 (contains!21313 lt!2732196 (_1!38814 (h!82086 l!10976))))))

(declare-fun e!4749034 () Bool)

(declare-fun tp_is_empty!55167 () Bool)

(declare-fun b!8058569 () Bool)

(declare-fun tp_is_empty!55169 () Bool)

(declare-fun tp!2414278 () Bool)

(assert (=> b!8058569 (= e!4749034 (and tp_is_empty!55167 tp_is_empty!55169 tp!2414278))))

(declare-fun res!3188041 () Bool)

(assert (=> b!8058570 (=> (not res!3188041) (not e!4749031))))

(assert (=> b!8058570 (= res!3188041 (forall!18551 (toList!11971 lt!2732200) lambda!475148))))

(declare-fun b!8058571 () Bool)

(assert (=> b!8058571 (= e!4749031 (= l!10976 (Cons!75638 (h!82086 l!10976) (t!391536 l!10976))))))

(declare-fun b!8058572 () Bool)

(declare-fun res!3188039 () Bool)

(assert (=> b!8058572 (=> (not res!3188039) (not e!4749031))))

(assert (=> b!8058572 (= res!3188039 (forall!18551 (t!391536 l!10976) lambda!475148))))

(declare-fun b!8058573 () Bool)

(declare-fun res!3188042 () Bool)

(assert (=> b!8058573 (=> (not res!3188042) (not e!4749035))))

(assert (=> b!8058573 (= res!3188042 (forall!18551 l!10976 lambda!475149))))

(declare-fun b!8058574 () Bool)

(declare-fun e!4749032 () Bool)

(declare-fun tp!2414279 () Bool)

(assert (=> b!8058574 (= e!4749032 tp!2414279)))

(declare-fun b!8058575 () Bool)

(assert (=> b!8058575 (= e!4749035 (forall!18551 (toList!11971 lt!2732200) lambda!475149))))

(declare-fun res!3188043 () Bool)

(assert (=> start!759324 (=> (not res!3188043) (not e!4749033))))

(declare-fun noDuplicateKeys!2757 (List!75764) Bool)

(assert (=> start!759324 (= res!3188043 (noDuplicateKeys!2757 l!10976))))

(assert (=> start!759324 e!4749033))

(assert (=> start!759324 e!4749034))

(declare-fun inv!97455 (ListMap!7393) Bool)

(assert (=> start!759324 (and (inv!97455 acc!836) e!4749032)))

(assert (= (and start!759324 res!3188043) b!8058566))

(assert (= (and b!8058566 res!3188037) b!8058567))

(assert (= (and b!8058567 res!3188038) b!8058570))

(assert (= (and b!8058570 res!3188041) b!8058572))

(assert (= (and b!8058572 res!3188039) b!8058571))

(assert (= (and b!8058567 res!3188040) b!8058568))

(assert (= (and b!8058568 res!3188036) b!8058573))

(assert (= (and b!8058573 res!3188042) b!8058575))

(assert (= (and start!759324 (is-Cons!75638 l!10976)) b!8058569))

(assert (= start!759324 b!8058574))

(declare-fun m!8411814 () Bool)

(assert (=> b!8058568 m!8411814))

(declare-fun m!8411816 () Bool)

(assert (=> b!8058575 m!8411816))

(declare-fun m!8411818 () Bool)

(assert (=> b!8058573 m!8411818))

(declare-fun m!8411820 () Bool)

(assert (=> b!8058567 m!8411820))

(declare-fun m!8411822 () Bool)

(assert (=> b!8058567 m!8411822))

(declare-fun m!8411824 () Bool)

(assert (=> b!8058567 m!8411824))

(assert (=> b!8058567 m!8411824))

(declare-fun m!8411826 () Bool)

(assert (=> b!8058567 m!8411826))

(declare-fun m!8411828 () Bool)

(assert (=> b!8058567 m!8411828))

(declare-fun m!8411830 () Bool)

(assert (=> b!8058567 m!8411830))

(declare-fun m!8411832 () Bool)

(assert (=> b!8058567 m!8411832))

(declare-fun m!8411834 () Bool)

(assert (=> b!8058567 m!8411834))

(declare-fun m!8411836 () Bool)

(assert (=> start!759324 m!8411836))

(declare-fun m!8411838 () Bool)

(assert (=> start!759324 m!8411838))

(declare-fun m!8411840 () Bool)

(assert (=> b!8058572 m!8411840))

(declare-fun m!8411842 () Bool)

(assert (=> b!8058570 m!8411842))

(push 1)

(assert (not b!8058575))

(assert tp_is_empty!55167)

(assert (not start!759324))

(assert (not b!8058573))

(assert tp_is_empty!55169)

(assert (not b!8058572))

(assert (not b!8058567))

(assert (not b!8058569))

(assert (not b!8058574))

(assert (not b!8058568))

(assert (not b!8058570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

