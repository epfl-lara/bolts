; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485806 () Bool)

(assert start!485806)

(declare-fun res!2016358 () Bool)

(declare-fun e!2965547 () Bool)

(assert (=> start!485806 (=> (not res!2016358) (not e!2965547))))

(declare-datatypes ((K!14578 0))(
  ( (K!14579 (val!19933 Int)) )
))
(declare-datatypes ((V!14824 0))(
  ( (V!14825 (val!19934 Int)) )
))
(declare-datatypes ((tuple2!54902 0))(
  ( (tuple2!54903 (_1!30745 K!14578) (_2!30745 V!14824)) )
))
(declare-datatypes ((List!53235 0))(
  ( (Nil!53111) (Cons!53111 (h!59508 tuple2!54902) (t!360579 List!53235)) )
))
(declare-fun l!13029 () List!53235)

(declare-fun key!4572 () K!14578)

(declare-fun containsKey!3577 (List!53235 K!14578) Bool)

(assert (=> start!485806 (= res!2016358 (not (containsKey!3577 l!13029 key!4572)))))

(assert (=> start!485806 e!2965547))

(declare-fun e!2965548 () Bool)

(assert (=> start!485806 e!2965548))

(declare-fun tp_is_empty!31977 () Bool)

(assert (=> start!485806 tp_is_empty!31977))

(declare-fun tp_is_empty!31979 () Bool)

(assert (=> start!485806 tp_is_empty!31979))

(declare-datatypes ((ListMap!5587 0))(
  ( (ListMap!5588 (toList!6139 List!53235)) )
))
(declare-fun lhm!63 () ListMap!5587)

(declare-fun e!2965549 () Bool)

(declare-fun inv!68449 (ListMap!5587) Bool)

(assert (=> start!485806 (and (inv!68449 lhm!63) e!2965549)))

(declare-fun b!4753828 () Bool)

(declare-fun res!2016360 () Bool)

(assert (=> b!4753828 (=> (not res!2016360) (not e!2965547))))

(assert (=> b!4753828 (= res!2016360 (is-Cons!53111 l!13029))))

(declare-fun tp!1350383 () Bool)

(declare-fun b!4753829 () Bool)

(assert (=> b!4753829 (= e!2965548 (and tp_is_empty!31977 tp_is_empty!31979 tp!1350383))))

(declare-fun b!4753830 () Bool)

(declare-fun tp!1350382 () Bool)

(assert (=> b!4753830 (= e!2965549 tp!1350382)))

(declare-fun b!4753831 () Bool)

(declare-fun res!2016359 () Bool)

(assert (=> b!4753831 (=> (not res!2016359) (not e!2965547))))

(declare-fun noDuplicateKeys!2171 (List!53235) Bool)

(assert (=> b!4753831 (= res!2016359 (noDuplicateKeys!2171 l!13029))))

(declare-fun b!4753832 () Bool)

(assert (=> b!4753832 (= e!2965547 (not true))))

(declare-fun lt!1919912 () ListMap!5587)

(declare-fun lt!1919919 () ListMap!5587)

(declare-fun eq!1240 (ListMap!5587 ListMap!5587) Bool)

(assert (=> b!4753832 (eq!1240 lt!1919912 lt!1919919)))

(declare-datatypes ((Unit!137030 0))(
  ( (Unit!137031) )
))
(declare-fun lt!1919913 () Unit!137030)

(declare-fun lt!1919915 () ListMap!5587)

(declare-fun lt!1919914 () ListMap!5587)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!123 (ListMap!5587 ListMap!5587 List!53235) Unit!137030)

(assert (=> b!4753832 (= lt!1919913 (lemmaAddToMapFromBucketPreservesEquivalence!123 lt!1919915 lt!1919914 (t!360579 l!13029)))))

(declare-fun lt!1919920 () ListMap!5587)

(assert (=> b!4753832 (= lt!1919920 lt!1919912)))

(declare-fun addToMapMapFromBucket!1593 (List!53235 ListMap!5587) ListMap!5587)

(assert (=> b!4753832 (= lt!1919912 (addToMapMapFromBucket!1593 (t!360579 l!13029) lt!1919915))))

(declare-fun lt!1919921 () ListMap!5587)

(assert (=> b!4753832 (= lt!1919920 (addToMapMapFromBucket!1593 l!13029 lt!1919921))))

(declare-fun lt!1919916 () tuple2!54902)

(declare-fun lt!1919917 () ListMap!5587)

(declare-fun +!2405 (ListMap!5587 tuple2!54902) ListMap!5587)

(assert (=> b!4753832 (eq!1240 lt!1919919 (+!2405 (addToMapMapFromBucket!1593 (t!360579 l!13029) lt!1919917) lt!1919916))))

(assert (=> b!4753832 (= lt!1919919 (addToMapMapFromBucket!1593 (t!360579 l!13029) lt!1919914))))

(declare-fun lt!1919918 () Unit!137030)

(declare-fun value!2966 () V!14824)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!257 (ListMap!5587 K!14578 V!14824 List!53235) Unit!137030)

(assert (=> b!4753832 (= lt!1919918 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!257 lt!1919917 key!4572 value!2966 (t!360579 l!13029)))))

(assert (=> b!4753832 (eq!1240 lt!1919914 lt!1919915)))

(assert (=> b!4753832 (= lt!1919915 (+!2405 lt!1919921 (h!59508 l!13029)))))

(assert (=> b!4753832 (= lt!1919921 (+!2405 lhm!63 lt!1919916))))

(assert (=> b!4753832 (= lt!1919914 (+!2405 lt!1919917 lt!1919916))))

(assert (=> b!4753832 (= lt!1919916 (tuple2!54903 key!4572 value!2966))))

(declare-fun lt!1919922 () Unit!137030)

(declare-fun addCommutativeForDiffKeys!41 (ListMap!5587 K!14578 V!14824 K!14578 V!14824) Unit!137030)

(assert (=> b!4753832 (= lt!1919922 (addCommutativeForDiffKeys!41 lhm!63 (_1!30745 (h!59508 l!13029)) (_2!30745 (h!59508 l!13029)) key!4572 value!2966))))

(assert (=> b!4753832 (= lt!1919917 (+!2405 lhm!63 (h!59508 l!13029)))))

(assert (= (and start!485806 res!2016358) b!4753831))

(assert (= (and b!4753831 res!2016359) b!4753828))

(assert (= (and b!4753828 res!2016360) b!4753832))

(assert (= (and start!485806 (is-Cons!53111 l!13029)) b!4753829))

(assert (= start!485806 b!4753830))

(declare-fun m!5721611 () Bool)

(assert (=> start!485806 m!5721611))

(declare-fun m!5721613 () Bool)

(assert (=> start!485806 m!5721613))

(declare-fun m!5721615 () Bool)

(assert (=> b!4753831 m!5721615))

(declare-fun m!5721617 () Bool)

(assert (=> b!4753832 m!5721617))

(declare-fun m!5721619 () Bool)

(assert (=> b!4753832 m!5721619))

(declare-fun m!5721621 () Bool)

(assert (=> b!4753832 m!5721621))

(declare-fun m!5721623 () Bool)

(assert (=> b!4753832 m!5721623))

(declare-fun m!5721625 () Bool)

(assert (=> b!4753832 m!5721625))

(declare-fun m!5721627 () Bool)

(assert (=> b!4753832 m!5721627))

(assert (=> b!4753832 m!5721617))

(declare-fun m!5721629 () Bool)

(assert (=> b!4753832 m!5721629))

(declare-fun m!5721631 () Bool)

(assert (=> b!4753832 m!5721631))

(declare-fun m!5721633 () Bool)

(assert (=> b!4753832 m!5721633))

(declare-fun m!5721635 () Bool)

(assert (=> b!4753832 m!5721635))

(declare-fun m!5721637 () Bool)

(assert (=> b!4753832 m!5721637))

(declare-fun m!5721639 () Bool)

(assert (=> b!4753832 m!5721639))

(declare-fun m!5721641 () Bool)

(assert (=> b!4753832 m!5721641))

(declare-fun m!5721643 () Bool)

(assert (=> b!4753832 m!5721643))

(declare-fun m!5721645 () Bool)

(assert (=> b!4753832 m!5721645))

(assert (=> b!4753832 m!5721627))

(push 1)

(assert (not b!4753831))

(assert (not b!4753832))

(assert tp_is_empty!31977)

(assert (not start!485806))

(assert (not b!4753829))

(assert tp_is_empty!31979)

(assert (not b!4753830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

