; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132462 () Bool)

(assert start!132462)

(declare-fun b!1553433 () Bool)

(declare-fun e!864929 () Bool)

(declare-fun tp!112114 () Bool)

(assert (=> b!1553433 (= e!864929 tp!112114)))

(declare-fun b!1553434 () Bool)

(declare-fun e!864930 () Bool)

(assert (=> b!1553434 (= e!864930 (not true))))

(declare-fun e!864928 () Bool)

(assert (=> b!1553434 e!864928))

(declare-fun res!1063335 () Bool)

(assert (=> b!1553434 (=> (not res!1063335) (not e!864928))))

(declare-datatypes ((B!2212 0))(
  ( (B!2213 (val!19192 Int)) )
))
(declare-datatypes ((tuple2!24900 0))(
  ( (tuple2!24901 (_1!12460 (_ BitVec 64)) (_2!12460 B!2212)) )
))
(declare-datatypes ((List!36372 0))(
  ( (Nil!36369) (Cons!36368 (h!37815 tuple2!24900) (t!51100 List!36372)) )
))
(declare-fun lt!669628 () List!36372)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!757 (List!36372 (_ BitVec 64)) Bool)

(assert (=> b!1553434 (= res!1063335 (containsKey!757 lt!669628 a0!49))))

(declare-fun a!523 () (_ BitVec 64))

(declare-fun b!96 () B!2212)

(declare-datatypes ((ListLongMap!22521 0))(
  ( (ListLongMap!22522 (toList!11276 List!36372)) )
))
(declare-fun lm!249 () ListLongMap!22521)

(declare-fun insertStrictlySorted!505 (List!36372 (_ BitVec 64) B!2212) List!36372)

(assert (=> b!1553434 (= lt!669628 (insertStrictlySorted!505 (toList!11276 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51680 0))(
  ( (Unit!51681) )
))
(declare-fun lt!669629 () Unit!51680)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!2 (List!36372 (_ BitVec 64) B!2212 (_ BitVec 64)) Unit!51680)

(assert (=> b!1553434 (= lt!669629 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!2 (toList!11276 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1553435 () Bool)

(declare-fun res!1063333 () Bool)

(assert (=> b!1553435 (=> (not res!1063333) (not e!864930))))

(assert (=> b!1553435 (= res!1063333 (containsKey!757 (toList!11276 lm!249) a0!49))))

(declare-fun b!1553436 () Bool)

(declare-datatypes ((Option!814 0))(
  ( (Some!813 (v!21994 B!2212)) (None!812) )
))
(declare-fun getValueByKey!739 (List!36372 (_ BitVec 64)) Option!814)

(assert (=> b!1553436 (= e!864928 (= (getValueByKey!739 lt!669628 a0!49) (getValueByKey!739 (toList!11276 lm!249) a0!49)))))

(declare-fun res!1063332 () Bool)

(assert (=> start!132462 (=> (not res!1063332) (not e!864930))))

(declare-fun contains!10148 (ListLongMap!22521 (_ BitVec 64)) Bool)

(assert (=> start!132462 (= res!1063332 (contains!10148 lm!249 a0!49))))

(assert (=> start!132462 e!864930))

(declare-fun inv!57304 (ListLongMap!22521) Bool)

(assert (=> start!132462 (and (inv!57304 lm!249) e!864929)))

(assert (=> start!132462 true))

(declare-fun tp_is_empty!38223 () Bool)

(assert (=> start!132462 tp_is_empty!38223))

(declare-fun b!1553437 () Bool)

(declare-fun res!1063334 () Bool)

(assert (=> b!1553437 (=> (not res!1063334) (not e!864930))))

(assert (=> b!1553437 (= res!1063334 (not (= a0!49 a!523)))))

(assert (= (and start!132462 res!1063332) b!1553437))

(assert (= (and b!1553437 res!1063334) b!1553435))

(assert (= (and b!1553435 res!1063333) b!1553434))

(assert (= (and b!1553434 res!1063335) b!1553436))

(assert (= start!132462 b!1553433))

(declare-fun m!1432123 () Bool)

(assert (=> b!1553434 m!1432123))

(declare-fun m!1432125 () Bool)

(assert (=> b!1553434 m!1432125))

(declare-fun m!1432127 () Bool)

(assert (=> b!1553434 m!1432127))

(declare-fun m!1432129 () Bool)

(assert (=> b!1553435 m!1432129))

(declare-fun m!1432131 () Bool)

(assert (=> b!1553436 m!1432131))

(declare-fun m!1432133 () Bool)

(assert (=> b!1553436 m!1432133))

(declare-fun m!1432135 () Bool)

(assert (=> start!132462 m!1432135))

(declare-fun m!1432137 () Bool)

(assert (=> start!132462 m!1432137))

(check-sat (not b!1553433) (not b!1553435) (not b!1553436) (not b!1553434) tp_is_empty!38223 (not start!132462))
(check-sat)
