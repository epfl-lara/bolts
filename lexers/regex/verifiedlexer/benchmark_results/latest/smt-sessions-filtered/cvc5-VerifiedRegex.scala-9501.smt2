; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502322 () Bool)

(assert start!502322)

(declare-fun b!4833034 () Bool)

(declare-fun res!2058758 () Bool)

(declare-fun e!3020183 () Bool)

(assert (=> b!4833034 (=> res!2058758 e!3020183)))

(declare-fun lt!1978582 () Bool)

(declare-datatypes ((K!16792 0))(
  ( (K!16793 (val!21739 Int)) )
))
(declare-datatypes ((V!17038 0))(
  ( (V!17039 (val!21740 Int)) )
))
(declare-datatypes ((tuple2!58394 0))(
  ( (tuple2!58395 (_1!32491 K!16792) (_2!32491 V!17038)) )
))
(declare-datatypes ((List!55216 0))(
  ( (Nil!55092) (Cons!55092 (h!61526 tuple2!58394) (t!362712 List!55216)) )
))
(declare-fun l!14180 () List!55216)

(declare-fun key!5666 () K!16792)

(assert (=> b!4833034 (= res!2058758 (or (= (_1!32491 (h!61526 l!14180)) key!5666) lt!1978582))))

(declare-fun b!4833035 () Bool)

(declare-fun e!3020184 () Bool)

(declare-datatypes ((ListMap!6955 0))(
  ( (ListMap!6956 (toList!7573 List!55216)) )
))
(declare-fun lt!1978578 () ListMap!6955)

(declare-fun contains!18904 (ListMap!6955 K!16792) Bool)

(assert (=> b!4833035 (= e!3020184 (contains!18904 lt!1978578 key!5666))))

(declare-fun res!2058760 () Bool)

(declare-fun e!3020187 () Bool)

(assert (=> start!502322 (=> (not res!2058760) (not e!3020187))))

(declare-fun noDuplicateKeys!2487 (List!55216) Bool)

(assert (=> start!502322 (= res!2058760 (noDuplicateKeys!2487 l!14180))))

(assert (=> start!502322 e!3020187))

(declare-fun e!3020185 () Bool)

(assert (=> start!502322 e!3020185))

(declare-fun acc!1183 () ListMap!6955)

(declare-fun e!3020186 () Bool)

(declare-fun inv!70693 (ListMap!6955) Bool)

(assert (=> start!502322 (and (inv!70693 acc!1183) e!3020186)))

(declare-fun tp_is_empty!34629 () Bool)

(assert (=> start!502322 tp_is_empty!34629))

(declare-fun b!4833036 () Bool)

(assert (=> b!4833036 (= e!3020187 (not e!3020183))))

(declare-fun res!2058756 () Bool)

(assert (=> b!4833036 (=> res!2058756 e!3020183)))

(assert (=> b!4833036 (= res!2058756 (contains!18904 acc!1183 key!5666))))

(declare-fun lt!1978580 () Bool)

(assert (=> b!4833036 (= lt!1978580 e!3020184)))

(declare-fun res!2058759 () Bool)

(assert (=> b!4833036 (=> res!2058759 e!3020184)))

(assert (=> b!4833036 (= res!2058759 lt!1978582)))

(declare-fun lt!1978579 () ListMap!6955)

(assert (=> b!4833036 (= lt!1978580 (contains!18904 lt!1978579 key!5666))))

(declare-fun containsKey!4457 (List!55216 K!16792) Bool)

(assert (=> b!4833036 (= lt!1978582 (containsKey!4457 (t!362712 l!14180) key!5666))))

(declare-datatypes ((Unit!144117 0))(
  ( (Unit!144118) )
))
(declare-fun lt!1978581 () Unit!144117)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!61 (List!55216 ListMap!6955 K!16792) Unit!144117)

(assert (=> b!4833036 (= lt!1978581 (lemmaAddToMapFromBucketContainsIIFInAccOrL!61 (t!362712 l!14180) lt!1978578 key!5666))))

(declare-fun addToMapMapFromBucket!1842 (List!55216 ListMap!6955) ListMap!6955)

(assert (=> b!4833036 (= lt!1978579 (addToMapMapFromBucket!1842 (t!362712 l!14180) lt!1978578))))

(declare-fun +!2566 (ListMap!6955 tuple2!58394) ListMap!6955)

(assert (=> b!4833036 (= lt!1978578 (+!2566 acc!1183 (h!61526 l!14180)))))

(declare-fun tp_is_empty!34631 () Bool)

(declare-fun tp!1363047 () Bool)

(declare-fun b!4833037 () Bool)

(assert (=> b!4833037 (= e!3020185 (and tp_is_empty!34629 tp_is_empty!34631 tp!1363047))))

(declare-fun b!4833038 () Bool)

(assert (=> b!4833038 (= e!3020183 true)))

(assert (=> b!4833038 (= lt!1978580 (contains!18904 lt!1978578 key!5666))))

(declare-fun b!4833039 () Bool)

(declare-fun res!2058757 () Bool)

(assert (=> b!4833039 (=> (not res!2058757) (not e!3020187))))

(assert (=> b!4833039 (= res!2058757 (not (is-Nil!55092 l!14180)))))

(declare-fun b!4833040 () Bool)

(declare-fun tp!1363048 () Bool)

(assert (=> b!4833040 (= e!3020186 tp!1363048)))

(assert (= (and start!502322 res!2058760) b!4833039))

(assert (= (and b!4833039 res!2058757) b!4833036))

(assert (= (and b!4833036 (not res!2058759)) b!4833035))

(assert (= (and b!4833036 (not res!2058756)) b!4833034))

(assert (= (and b!4833034 (not res!2058758)) b!4833038))

(assert (= (and start!502322 (is-Cons!55092 l!14180)) b!4833037))

(assert (= start!502322 b!4833040))

(declare-fun m!5827462 () Bool)

(assert (=> b!4833035 m!5827462))

(declare-fun m!5827464 () Bool)

(assert (=> start!502322 m!5827464))

(declare-fun m!5827466 () Bool)

(assert (=> start!502322 m!5827466))

(declare-fun m!5827468 () Bool)

(assert (=> b!4833036 m!5827468))

(declare-fun m!5827470 () Bool)

(assert (=> b!4833036 m!5827470))

(declare-fun m!5827472 () Bool)

(assert (=> b!4833036 m!5827472))

(declare-fun m!5827474 () Bool)

(assert (=> b!4833036 m!5827474))

(declare-fun m!5827476 () Bool)

(assert (=> b!4833036 m!5827476))

(declare-fun m!5827478 () Bool)

(assert (=> b!4833036 m!5827478))

(assert (=> b!4833038 m!5827462))

(push 1)

(assert (not b!4833036))

(assert tp_is_empty!34631)

(assert (not start!502322))

(assert (not b!4833038))

(assert (not b!4833040))

(assert (not b!4833037))

(assert tp_is_empty!34629)

(assert (not b!4833035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

