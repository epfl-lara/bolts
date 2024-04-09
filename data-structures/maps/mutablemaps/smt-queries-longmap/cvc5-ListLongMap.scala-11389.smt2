; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132460 () Bool)

(assert start!132460)

(declare-fun b!1553418 () Bool)

(declare-fun e!864921 () Bool)

(assert (=> b!1553418 (= e!864921 (not true))))

(declare-fun e!864920 () Bool)

(assert (=> b!1553418 e!864920))

(declare-fun res!1063321 () Bool)

(assert (=> b!1553418 (=> (not res!1063321) (not e!864920))))

(declare-datatypes ((B!2210 0))(
  ( (B!2211 (val!19191 Int)) )
))
(declare-datatypes ((tuple2!24898 0))(
  ( (tuple2!24899 (_1!12459 (_ BitVec 64)) (_2!12459 B!2210)) )
))
(declare-datatypes ((List!36371 0))(
  ( (Nil!36368) (Cons!36367 (h!37814 tuple2!24898) (t!51099 List!36371)) )
))
(declare-fun lt!669622 () List!36371)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!756 (List!36371 (_ BitVec 64)) Bool)

(assert (=> b!1553418 (= res!1063321 (containsKey!756 lt!669622 a0!49))))

(declare-fun a!523 () (_ BitVec 64))

(declare-fun b!96 () B!2210)

(declare-datatypes ((ListLongMap!22519 0))(
  ( (ListLongMap!22520 (toList!11275 List!36371)) )
))
(declare-fun lm!249 () ListLongMap!22519)

(declare-fun insertStrictlySorted!504 (List!36371 (_ BitVec 64) B!2210) List!36371)

(assert (=> b!1553418 (= lt!669622 (insertStrictlySorted!504 (toList!11275 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51678 0))(
  ( (Unit!51679) )
))
(declare-fun lt!669623 () Unit!51678)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!1 (List!36371 (_ BitVec 64) B!2210 (_ BitVec 64)) Unit!51678)

(assert (=> b!1553418 (= lt!669623 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!1 (toList!11275 lm!249) a!523 b!96 a0!49))))

(declare-fun res!1063323 () Bool)

(assert (=> start!132460 (=> (not res!1063323) (not e!864921))))

(declare-fun contains!10147 (ListLongMap!22519 (_ BitVec 64)) Bool)

(assert (=> start!132460 (= res!1063323 (contains!10147 lm!249 a0!49))))

(assert (=> start!132460 e!864921))

(declare-fun e!864919 () Bool)

(declare-fun inv!57303 (ListLongMap!22519) Bool)

(assert (=> start!132460 (and (inv!57303 lm!249) e!864919)))

(assert (=> start!132460 true))

(declare-fun tp_is_empty!38221 () Bool)

(assert (=> start!132460 tp_is_empty!38221))

(declare-fun b!1553419 () Bool)

(declare-datatypes ((Option!813 0))(
  ( (Some!812 (v!21993 B!2210)) (None!811) )
))
(declare-fun getValueByKey!738 (List!36371 (_ BitVec 64)) Option!813)

(assert (=> b!1553419 (= e!864920 (= (getValueByKey!738 lt!669622 a0!49) (getValueByKey!738 (toList!11275 lm!249) a0!49)))))

(declare-fun b!1553420 () Bool)

(declare-fun res!1063320 () Bool)

(assert (=> b!1553420 (=> (not res!1063320) (not e!864921))))

(assert (=> b!1553420 (= res!1063320 (not (= a0!49 a!523)))))

(declare-fun b!1553421 () Bool)

(declare-fun tp!112111 () Bool)

(assert (=> b!1553421 (= e!864919 tp!112111)))

(declare-fun b!1553422 () Bool)

(declare-fun res!1063322 () Bool)

(assert (=> b!1553422 (=> (not res!1063322) (not e!864921))))

(assert (=> b!1553422 (= res!1063322 (containsKey!756 (toList!11275 lm!249) a0!49))))

(assert (= (and start!132460 res!1063323) b!1553420))

(assert (= (and b!1553420 res!1063320) b!1553422))

(assert (= (and b!1553422 res!1063322) b!1553418))

(assert (= (and b!1553418 res!1063321) b!1553419))

(assert (= start!132460 b!1553421))

(declare-fun m!1432107 () Bool)

(assert (=> b!1553418 m!1432107))

(declare-fun m!1432109 () Bool)

(assert (=> b!1553418 m!1432109))

(declare-fun m!1432111 () Bool)

(assert (=> b!1553418 m!1432111))

(declare-fun m!1432113 () Bool)

(assert (=> start!132460 m!1432113))

(declare-fun m!1432115 () Bool)

(assert (=> start!132460 m!1432115))

(declare-fun m!1432117 () Bool)

(assert (=> b!1553419 m!1432117))

(declare-fun m!1432119 () Bool)

(assert (=> b!1553419 m!1432119))

(declare-fun m!1432121 () Bool)

(assert (=> b!1553422 m!1432121))

(push 1)

(assert (not start!132460))

(assert (not b!1553421))

(assert (not b!1553418))

(assert (not b!1553419))

(assert tp_is_empty!38221)

(assert (not b!1553422))

(check-sat)

(pop 1)

