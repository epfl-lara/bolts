; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436890 () Bool)

(assert start!436890)

(declare-fun b!4457220 () Bool)

(declare-fun e!2775507 () Bool)

(declare-fun e!2775509 () Bool)

(assert (=> b!4457220 (= e!2775507 e!2775509)))

(declare-fun res!1847868 () Bool)

(assert (=> b!4457220 (=> (not res!1847868) (not e!2775509))))

(declare-datatypes ((K!11423 0))(
  ( (K!11424 (val!17409 Int)) )
))
(declare-datatypes ((V!11669 0))(
  ( (V!11670 (val!17410 Int)) )
))
(declare-datatypes ((tuple2!50138 0))(
  ( (tuple2!50139 (_1!28363 K!11423) (_2!28363 V!11669)) )
))
(declare-datatypes ((List!50167 0))(
  ( (Nil!50043) (Cons!50043 (h!55788 tuple2!50138) (t!357117 List!50167)) )
))
(declare-datatypes ((ListMap!3099 0))(
  ( (ListMap!3100 (toList!3861 List!50167)) )
))
(declare-fun lt!1648698 () ListMap!3099)

(declare-fun key!4412 () K!11423)

(declare-fun contains!12577 (ListMap!3099 K!11423) Bool)

(assert (=> b!4457220 (= res!1847868 (contains!12577 lt!1648698 key!4412))))

(declare-datatypes ((tuple2!50140 0))(
  ( (tuple2!50141 (_1!28364 (_ BitVec 64)) (_2!28364 List!50167)) )
))
(declare-datatypes ((List!50168 0))(
  ( (Nil!50044) (Cons!50044 (h!55789 tuple2!50140) (t!357118 List!50168)) )
))
(declare-datatypes ((ListLongMap!2517 0))(
  ( (ListLongMap!2518 (toList!3862 List!50168)) )
))
(declare-fun lm!1853 () ListLongMap!2517)

(declare-fun extractMap!995 (List!50168) ListMap!3099)

(assert (=> b!4457220 (= lt!1648698 (extractMap!995 (toList!3862 lm!1853)))))

(declare-fun tp_is_empty!26929 () Bool)

(declare-fun tp_is_empty!26931 () Bool)

(declare-fun b!4457221 () Bool)

(declare-fun e!2775506 () Bool)

(declare-fun tp!1335163 () Bool)

(assert (=> b!4457221 (= e!2775506 (and tp_is_empty!26929 tp_is_empty!26931 tp!1335163))))

(declare-fun b!4457222 () Bool)

(assert (=> b!4457222 (= e!2775509 (not true))))

(declare-fun lt!1648702 () Bool)

(declare-fun lt!1648693 () ListMap!3099)

(assert (=> b!4457222 (= lt!1648702 (contains!12577 lt!1648693 key!4412))))

(declare-fun lt!1648700 () ListMap!3099)

(assert (=> b!4457222 (contains!12577 lt!1648700 key!4412)))

(declare-fun lt!1648699 () ListMap!3099)

(declare-datatypes ((Unit!86274 0))(
  ( (Unit!86275) )
))
(declare-fun lt!1648694 () Unit!86274)

(declare-fun l!12858 () List!50167)

(declare-fun addStillContains!9 (ListMap!3099 K!11423 V!11669 K!11423) Unit!86274)

(assert (=> b!4457222 (= lt!1648694 (addStillContains!9 lt!1648699 (_1!28363 (h!55788 l!12858)) (_2!28363 (h!55788 l!12858)) key!4412))))

(declare-fun lt!1648695 () ListMap!3099)

(declare-fun eq!486 (ListMap!3099 ListMap!3099) Bool)

(assert (=> b!4457222 (eq!486 lt!1648695 lt!1648693)))

(declare-fun +!1302 (ListMap!3099 tuple2!50138) ListMap!3099)

(assert (=> b!4457222 (= lt!1648693 (+!1302 lt!1648699 (h!55788 l!12858)))))

(declare-fun addToMapMapFromBucket!521 (List!50167 ListMap!3099) ListMap!3099)

(assert (=> b!4457222 (= lt!1648695 (addToMapMapFromBucket!521 (t!357117 l!12858) (+!1302 lt!1648698 (h!55788 l!12858))))))

(declare-fun lt!1648701 () ListMap!3099)

(assert (=> b!4457222 (eq!486 lt!1648701 lt!1648700)))

(assert (=> b!4457222 (= lt!1648700 (+!1302 lt!1648699 (h!55788 l!12858)))))

(assert (=> b!4457222 (= lt!1648701 (addToMapMapFromBucket!521 (t!357117 l!12858) (+!1302 lt!1648698 (h!55788 l!12858))))))

(declare-fun lt!1648697 () Unit!86274)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!233 (ListMap!3099 K!11423 V!11669 List!50167) Unit!86274)

(assert (=> b!4457222 (= lt!1648697 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!233 lt!1648698 (_1!28363 (h!55788 l!12858)) (_2!28363 (h!55788 l!12858)) (t!357117 l!12858)))))

(assert (=> b!4457222 (contains!12577 lt!1648699 key!4412)))

(assert (=> b!4457222 (= lt!1648699 (addToMapMapFromBucket!521 (t!357117 l!12858) lt!1648698))))

(declare-datatypes ((Hashable!5334 0))(
  ( (HashableExt!5333 (__x!31037 Int)) )
))
(declare-fun hashF!1313 () Hashable!5334)

(declare-fun lt!1648696 () Unit!86274)

(declare-fun lemmaAddToMapMaintainsContains!29 (ListLongMap!2517 K!11423 List!50167 Hashable!5334) Unit!86274)

(assert (=> b!4457222 (= lt!1648696 (lemmaAddToMapMaintainsContains!29 lm!1853 key!4412 (t!357117 l!12858) hashF!1313))))

(declare-fun b!4457223 () Bool)

(declare-fun e!2775508 () Bool)

(declare-fun tp!1335162 () Bool)

(assert (=> b!4457223 (= e!2775508 tp!1335162)))

(declare-fun b!4457224 () Bool)

(declare-fun res!1847872 () Bool)

(assert (=> b!4457224 (=> (not res!1847872) (not e!2775507))))

(declare-fun noDuplicateKeys!927 (List!50167) Bool)

(assert (=> b!4457224 (= res!1847872 (noDuplicateKeys!927 l!12858))))

(declare-fun res!1847870 () Bool)

(assert (=> start!436890 (=> (not res!1847870) (not e!2775507))))

(declare-fun lambda!160702 () Int)

(declare-fun forall!9856 (List!50168 Int) Bool)

(assert (=> start!436890 (= res!1847870 (forall!9856 (toList!3862 lm!1853) lambda!160702))))

(assert (=> start!436890 e!2775507))

(declare-fun inv!65610 (ListLongMap!2517) Bool)

(assert (=> start!436890 (and (inv!65610 lm!1853) e!2775508)))

(assert (=> start!436890 true))

(assert (=> start!436890 e!2775506))

(assert (=> start!436890 tp_is_empty!26929))

(declare-fun b!4457225 () Bool)

(declare-fun res!1847871 () Bool)

(assert (=> b!4457225 (=> (not res!1847871) (not e!2775507))))

(declare-fun allKeysSameHashInMap!1046 (ListLongMap!2517 Hashable!5334) Bool)

(assert (=> b!4457225 (= res!1847871 (allKeysSameHashInMap!1046 lm!1853 hashF!1313))))

(declare-fun b!4457226 () Bool)

(declare-fun res!1847869 () Bool)

(assert (=> b!4457226 (=> (not res!1847869) (not e!2775509))))

(assert (=> b!4457226 (= res!1847869 (is-Cons!50043 l!12858))))

(assert (= (and start!436890 res!1847870) b!4457225))

(assert (= (and b!4457225 res!1847871) b!4457224))

(assert (= (and b!4457224 res!1847872) b!4457220))

(assert (= (and b!4457220 res!1847868) b!4457226))

(assert (= (and b!4457226 res!1847869) b!4457222))

(assert (= start!436890 b!4457223))

(assert (= (and start!436890 (is-Cons!50043 l!12858)) b!4457221))

(declare-fun m!5159565 () Bool)

(assert (=> b!4457222 m!5159565))

(declare-fun m!5159567 () Bool)

(assert (=> b!4457222 m!5159567))

(declare-fun m!5159569 () Bool)

(assert (=> b!4457222 m!5159569))

(declare-fun m!5159571 () Bool)

(assert (=> b!4457222 m!5159571))

(declare-fun m!5159573 () Bool)

(assert (=> b!4457222 m!5159573))

(declare-fun m!5159575 () Bool)

(assert (=> b!4457222 m!5159575))

(declare-fun m!5159577 () Bool)

(assert (=> b!4457222 m!5159577))

(declare-fun m!5159579 () Bool)

(assert (=> b!4457222 m!5159579))

(declare-fun m!5159581 () Bool)

(assert (=> b!4457222 m!5159581))

(declare-fun m!5159583 () Bool)

(assert (=> b!4457222 m!5159583))

(declare-fun m!5159585 () Bool)

(assert (=> b!4457222 m!5159585))

(declare-fun m!5159587 () Bool)

(assert (=> b!4457222 m!5159587))

(assert (=> b!4457222 m!5159575))

(declare-fun m!5159589 () Bool)

(assert (=> b!4457224 m!5159589))

(declare-fun m!5159591 () Bool)

(assert (=> b!4457220 m!5159591))

(declare-fun m!5159593 () Bool)

(assert (=> b!4457220 m!5159593))

(declare-fun m!5159595 () Bool)

(assert (=> b!4457225 m!5159595))

(declare-fun m!5159597 () Bool)

(assert (=> start!436890 m!5159597))

(declare-fun m!5159599 () Bool)

(assert (=> start!436890 m!5159599))

(push 1)

(assert (not b!4457223))

(assert (not b!4457220))

(assert tp_is_empty!26931)

(assert (not b!4457224))

(assert (not b!4457222))

(assert (not b!4457221))

(assert (not start!436890))

(assert tp_is_empty!26929)

(assert (not b!4457225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

