; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502310 () Bool)

(assert start!502310)

(declare-fun tp_is_empty!34605 () Bool)

(declare-fun b!4832922 () Bool)

(declare-fun e!3020100 () Bool)

(declare-fun tp_is_empty!34607 () Bool)

(declare-fun tp!1363012 () Bool)

(assert (=> b!4832922 (= e!3020100 (and tp_is_empty!34605 tp_is_empty!34607 tp!1363012))))

(declare-fun b!4832923 () Bool)

(declare-fun e!3020098 () Bool)

(declare-fun tp!1363011 () Bool)

(assert (=> b!4832923 (= e!3020098 tp!1363011)))

(declare-fun b!4832924 () Bool)

(declare-fun e!3020097 () Bool)

(declare-datatypes ((K!16777 0))(
  ( (K!16778 (val!21727 Int)) )
))
(declare-datatypes ((V!17023 0))(
  ( (V!17024 (val!21728 Int)) )
))
(declare-datatypes ((tuple2!58382 0))(
  ( (tuple2!58383 (_1!32485 K!16777) (_2!32485 V!17023)) )
))
(declare-datatypes ((List!55210 0))(
  ( (Nil!55086) (Cons!55086 (h!61520 tuple2!58382) (t!362706 List!55210)) )
))
(declare-datatypes ((ListMap!6943 0))(
  ( (ListMap!6944 (toList!7567 List!55210)) )
))
(declare-fun lt!1978501 () ListMap!6943)

(declare-fun key!5666 () K!16777)

(declare-fun contains!18898 (ListMap!6943 K!16777) Bool)

(assert (=> b!4832924 (= e!3020097 (contains!18898 lt!1978501 key!5666))))

(declare-fun b!4832925 () Bool)

(declare-fun res!2058682 () Bool)

(declare-fun e!3020099 () Bool)

(assert (=> b!4832925 (=> (not res!2058682) (not e!3020099))))

(declare-fun l!14180 () List!55210)

(assert (=> b!4832925 (= res!2058682 (not (is-Nil!55086 l!14180)))))

(declare-fun b!4832926 () Bool)

(assert (=> b!4832926 (= e!3020099 (not true))))

(declare-fun lt!1978499 () Bool)

(declare-fun acc!1183 () ListMap!6943)

(assert (=> b!4832926 (= lt!1978499 (contains!18898 acc!1183 key!5666))))

(declare-fun lt!1978500 () ListMap!6943)

(assert (=> b!4832926 (= (contains!18898 lt!1978500 key!5666) e!3020097)))

(declare-fun res!2058680 () Bool)

(assert (=> b!4832926 (=> res!2058680 e!3020097)))

(declare-fun containsKey!4451 (List!55210 K!16777) Bool)

(assert (=> b!4832926 (= res!2058680 (containsKey!4451 (t!362706 l!14180) key!5666))))

(declare-datatypes ((Unit!144105 0))(
  ( (Unit!144106) )
))
(declare-fun lt!1978498 () Unit!144105)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!55 (List!55210 ListMap!6943 K!16777) Unit!144105)

(assert (=> b!4832926 (= lt!1978498 (lemmaAddToMapFromBucketContainsIIFInAccOrL!55 (t!362706 l!14180) lt!1978501 key!5666))))

(declare-fun addToMapMapFromBucket!1836 (List!55210 ListMap!6943) ListMap!6943)

(assert (=> b!4832926 (= lt!1978500 (addToMapMapFromBucket!1836 (t!362706 l!14180) lt!1978501))))

(declare-fun +!2560 (ListMap!6943 tuple2!58382) ListMap!6943)

(assert (=> b!4832926 (= lt!1978501 (+!2560 acc!1183 (h!61520 l!14180)))))

(declare-fun res!2058681 () Bool)

(assert (=> start!502310 (=> (not res!2058681) (not e!3020099))))

(declare-fun noDuplicateKeys!2481 (List!55210) Bool)

(assert (=> start!502310 (= res!2058681 (noDuplicateKeys!2481 l!14180))))

(assert (=> start!502310 e!3020099))

(assert (=> start!502310 e!3020100))

(declare-fun inv!70678 (ListMap!6943) Bool)

(assert (=> start!502310 (and (inv!70678 acc!1183) e!3020098)))

(assert (=> start!502310 tp_is_empty!34605))

(assert (= (and start!502310 res!2058681) b!4832925))

(assert (= (and b!4832925 res!2058682) b!4832926))

(assert (= (and b!4832926 (not res!2058680)) b!4832924))

(assert (= (and start!502310 (is-Cons!55086 l!14180)) b!4832922))

(assert (= start!502310 b!4832923))

(declare-fun m!5827346 () Bool)

(assert (=> b!4832924 m!5827346))

(declare-fun m!5827348 () Bool)

(assert (=> b!4832926 m!5827348))

(declare-fun m!5827350 () Bool)

(assert (=> b!4832926 m!5827350))

(declare-fun m!5827352 () Bool)

(assert (=> b!4832926 m!5827352))

(declare-fun m!5827354 () Bool)

(assert (=> b!4832926 m!5827354))

(declare-fun m!5827356 () Bool)

(assert (=> b!4832926 m!5827356))

(declare-fun m!5827358 () Bool)

(assert (=> b!4832926 m!5827358))

(declare-fun m!5827360 () Bool)

(assert (=> start!502310 m!5827360))

(declare-fun m!5827362 () Bool)

(assert (=> start!502310 m!5827362))

(push 1)

(assert tp_is_empty!34605)

(assert (not b!4832922))

(assert (not start!502310))

(assert (not b!4832923))

(assert tp_is_empty!34607)

(assert (not b!4832926))

(assert (not b!4832924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

