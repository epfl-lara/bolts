; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502318 () Bool)

(assert start!502318)

(declare-fun b!4832992 () Bool)

(declare-fun res!2058729 () Bool)

(declare-fun e!3020155 () Bool)

(assert (=> b!4832992 (=> res!2058729 e!3020155)))

(declare-fun lt!1978552 () Bool)

(declare-datatypes ((K!16787 0))(
  ( (K!16788 (val!21735 Int)) )
))
(declare-datatypes ((V!17033 0))(
  ( (V!17034 (val!21736 Int)) )
))
(declare-datatypes ((tuple2!58390 0))(
  ( (tuple2!58391 (_1!32489 K!16787) (_2!32489 V!17033)) )
))
(declare-datatypes ((List!55214 0))(
  ( (Nil!55090) (Cons!55090 (h!61524 tuple2!58390) (t!362710 List!55214)) )
))
(declare-fun l!14180 () List!55214)

(declare-fun key!5666 () K!16787)

(assert (=> b!4832992 (= res!2058729 (or (= (_1!32489 (h!61524 l!14180)) key!5666) lt!1978552))))

(declare-fun res!2058728 () Bool)

(declare-fun e!3020154 () Bool)

(assert (=> start!502318 (=> (not res!2058728) (not e!3020154))))

(declare-fun noDuplicateKeys!2485 (List!55214) Bool)

(assert (=> start!502318 (= res!2058728 (noDuplicateKeys!2485 l!14180))))

(assert (=> start!502318 e!3020154))

(declare-fun e!3020156 () Bool)

(assert (=> start!502318 e!3020156))

(declare-datatypes ((ListMap!6951 0))(
  ( (ListMap!6952 (toList!7571 List!55214)) )
))
(declare-fun acc!1183 () ListMap!6951)

(declare-fun e!3020157 () Bool)

(declare-fun inv!70688 (ListMap!6951) Bool)

(assert (=> start!502318 (and (inv!70688 acc!1183) e!3020157)))

(declare-fun tp_is_empty!34621 () Bool)

(assert (=> start!502318 tp_is_empty!34621))

(declare-fun b!4832993 () Bool)

(assert (=> b!4832993 (= e!3020155 true)))

(declare-fun lt!1978549 () Bool)

(assert (=> b!4832993 (= lt!1978549 (noDuplicateKeys!2485 (t!362710 l!14180)))))

(declare-fun b!4832994 () Bool)

(assert (=> b!4832994 (= e!3020154 (not e!3020155))))

(declare-fun res!2058730 () Bool)

(assert (=> b!4832994 (=> res!2058730 e!3020155)))

(declare-fun contains!18902 (ListMap!6951 K!16787) Bool)

(assert (=> b!4832994 (= res!2058730 (contains!18902 acc!1183 key!5666))))

(declare-fun lt!1978548 () ListMap!6951)

(declare-fun e!3020153 () Bool)

(assert (=> b!4832994 (= (contains!18902 lt!1978548 key!5666) e!3020153)))

(declare-fun res!2058726 () Bool)

(assert (=> b!4832994 (=> res!2058726 e!3020153)))

(assert (=> b!4832994 (= res!2058726 lt!1978552)))

(declare-fun containsKey!4455 (List!55214 K!16787) Bool)

(assert (=> b!4832994 (= lt!1978552 (containsKey!4455 (t!362710 l!14180) key!5666))))

(declare-fun lt!1978551 () ListMap!6951)

(declare-datatypes ((Unit!144113 0))(
  ( (Unit!144114) )
))
(declare-fun lt!1978550 () Unit!144113)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!59 (List!55214 ListMap!6951 K!16787) Unit!144113)

(assert (=> b!4832994 (= lt!1978550 (lemmaAddToMapFromBucketContainsIIFInAccOrL!59 (t!362710 l!14180) lt!1978551 key!5666))))

(declare-fun addToMapMapFromBucket!1840 (List!55214 ListMap!6951) ListMap!6951)

(assert (=> b!4832994 (= lt!1978548 (addToMapMapFromBucket!1840 (t!362710 l!14180) lt!1978551))))

(declare-fun +!2564 (ListMap!6951 tuple2!58390) ListMap!6951)

(assert (=> b!4832994 (= lt!1978551 (+!2564 acc!1183 (h!61524 l!14180)))))

(declare-fun b!4832995 () Bool)

(declare-fun tp!1363035 () Bool)

(declare-fun tp_is_empty!34623 () Bool)

(assert (=> b!4832995 (= e!3020156 (and tp_is_empty!34621 tp_is_empty!34623 tp!1363035))))

(declare-fun b!4832996 () Bool)

(declare-fun res!2058727 () Bool)

(assert (=> b!4832996 (=> (not res!2058727) (not e!3020154))))

(assert (=> b!4832996 (= res!2058727 (not (is-Nil!55090 l!14180)))))

(declare-fun b!4832997 () Bool)

(assert (=> b!4832997 (= e!3020153 (contains!18902 lt!1978551 key!5666))))

(declare-fun b!4832998 () Bool)

(declare-fun tp!1363036 () Bool)

(assert (=> b!4832998 (= e!3020157 tp!1363036)))

(assert (= (and start!502318 res!2058728) b!4832996))

(assert (= (and b!4832996 res!2058727) b!4832994))

(assert (= (and b!4832994 (not res!2058726)) b!4832997))

(assert (= (and b!4832994 (not res!2058730)) b!4832992))

(assert (= (and b!4832992 (not res!2058729)) b!4832993))

(assert (= (and start!502318 (is-Cons!55090 l!14180)) b!4832995))

(assert (= start!502318 b!4832998))

(declare-fun m!5827422 () Bool)

(assert (=> start!502318 m!5827422))

(declare-fun m!5827424 () Bool)

(assert (=> start!502318 m!5827424))

(declare-fun m!5827426 () Bool)

(assert (=> b!4832993 m!5827426))

(declare-fun m!5827428 () Bool)

(assert (=> b!4832994 m!5827428))

(declare-fun m!5827430 () Bool)

(assert (=> b!4832994 m!5827430))

(declare-fun m!5827432 () Bool)

(assert (=> b!4832994 m!5827432))

(declare-fun m!5827434 () Bool)

(assert (=> b!4832994 m!5827434))

(declare-fun m!5827436 () Bool)

(assert (=> b!4832994 m!5827436))

(declare-fun m!5827438 () Bool)

(assert (=> b!4832994 m!5827438))

(declare-fun m!5827440 () Bool)

(assert (=> b!4832997 m!5827440))

(push 1)

(assert (not b!4832995))

(assert (not b!4832994))

(assert (not start!502318))

(assert (not b!4832993))

(assert (not b!4832997))

(assert tp_is_empty!34623)

(assert (not b!4832998))

(assert tp_is_empty!34621)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

