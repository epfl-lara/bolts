; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132532 () Bool)

(assert start!132532)

(declare-fun b!1553795 () Bool)

(declare-fun e!865165 () Bool)

(declare-fun tp!112138 () Bool)

(assert (=> b!1553795 (= e!865165 tp!112138)))

(declare-fun b!1553796 () Bool)

(declare-fun e!865164 () Bool)

(assert (=> b!1553796 (= e!865164 true)))

(declare-datatypes ((B!2222 0))(
  ( (B!2223 (val!19197 Int)) )
))
(declare-datatypes ((tuple2!24910 0))(
  ( (tuple2!24911 (_1!12465 (_ BitVec 64)) (_2!12465 B!2222)) )
))
(declare-datatypes ((List!36377 0))(
  ( (Nil!36374) (Cons!36373 (h!37820 tuple2!24910) (t!51105 List!36377)) )
))
(declare-datatypes ((ListLongMap!22531 0))(
  ( (ListLongMap!22532 (toList!11281 List!36377)) )
))
(declare-fun lm!249 () ListLongMap!22531)

(declare-fun a0!49 () (_ BitVec 64))

(declare-datatypes ((Option!819 0))(
  ( (Some!818 (v!21999 B!2222)) (None!817) )
))
(declare-fun isDefined!553 (Option!819) Bool)

(declare-fun getValueByKey!744 (List!36377 (_ BitVec 64)) Option!819)

(assert (=> b!1553796 (isDefined!553 (getValueByKey!744 (toList!11281 lm!249) a0!49))))

(declare-datatypes ((Unit!51696 0))(
  ( (Unit!51697) )
))
(declare-fun lt!669780 () Unit!51696)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!504 (List!36377 (_ BitVec 64)) Unit!51696)

(assert (=> b!1553796 (= lt!669780 (lemmaContainsKeyImpliesGetValueByKeyDefined!504 (toList!11281 lm!249) a0!49))))

(declare-fun b!1553797 () Bool)

(declare-fun res!1063521 () Bool)

(declare-fun e!865167 () Bool)

(assert (=> b!1553797 (=> (not res!1063521) (not e!865167))))

(declare-fun containsKey!762 (List!36377 (_ BitVec 64)) Bool)

(assert (=> b!1553797 (= res!1063521 (containsKey!762 (toList!11281 lm!249) a0!49))))

(declare-fun res!1063520 () Bool)

(assert (=> start!132532 (=> (not res!1063520) (not e!865167))))

(declare-fun contains!10156 (ListLongMap!22531 (_ BitVec 64)) Bool)

(assert (=> start!132532 (= res!1063520 (contains!10156 lm!249 a0!49))))

(assert (=> start!132532 e!865167))

(declare-fun inv!57319 (ListLongMap!22531) Bool)

(assert (=> start!132532 (and (inv!57319 lm!249) e!865165)))

(assert (=> start!132532 true))

(declare-fun tp_is_empty!38233 () Bool)

(assert (=> start!132532 tp_is_empty!38233))

(declare-fun b!1553798 () Bool)

(declare-fun res!1063524 () Bool)

(assert (=> b!1553798 (=> (not res!1063524) (not e!865167))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553798 (= res!1063524 (not (= a0!49 a!523)))))

(declare-fun b!1553799 () Bool)

(assert (=> b!1553799 (= e!865167 (not e!865164))))

(declare-fun res!1063523 () Bool)

(assert (=> b!1553799 (=> res!1063523 e!865164)))

(declare-fun isStrictlySorted!890 (List!36377) Bool)

(assert (=> b!1553799 (= res!1063523 (not (isStrictlySorted!890 (toList!11281 lm!249))))))

(declare-fun e!865166 () Bool)

(assert (=> b!1553799 e!865166))

(declare-fun res!1063522 () Bool)

(assert (=> b!1553799 (=> (not res!1063522) (not e!865166))))

(declare-fun lt!669782 () List!36377)

(assert (=> b!1553799 (= res!1063522 (containsKey!762 lt!669782 a0!49))))

(declare-fun b!96 () B!2222)

(declare-fun insertStrictlySorted!510 (List!36377 (_ BitVec 64) B!2222) List!36377)

(assert (=> b!1553799 (= lt!669782 (insertStrictlySorted!510 (toList!11281 lm!249) a!523 b!96))))

(declare-fun lt!669781 () Unit!51696)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!7 (List!36377 (_ BitVec 64) B!2222 (_ BitVec 64)) Unit!51696)

(assert (=> b!1553799 (= lt!669781 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!7 (toList!11281 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1553800 () Bool)

(assert (=> b!1553800 (= e!865166 (= (getValueByKey!744 lt!669782 a0!49) (getValueByKey!744 (toList!11281 lm!249) a0!49)))))

(assert (= (and start!132532 res!1063520) b!1553798))

(assert (= (and b!1553798 res!1063524) b!1553797))

(assert (= (and b!1553797 res!1063521) b!1553799))

(assert (= (and b!1553799 res!1063522) b!1553800))

(assert (= (and b!1553799 (not res!1063523)) b!1553796))

(assert (= start!132532 b!1553795))

(declare-fun m!1432383 () Bool)

(assert (=> b!1553797 m!1432383))

(declare-fun m!1432385 () Bool)

(assert (=> b!1553796 m!1432385))

(assert (=> b!1553796 m!1432385))

(declare-fun m!1432387 () Bool)

(assert (=> b!1553796 m!1432387))

(declare-fun m!1432389 () Bool)

(assert (=> b!1553796 m!1432389))

(declare-fun m!1432391 () Bool)

(assert (=> start!132532 m!1432391))

(declare-fun m!1432393 () Bool)

(assert (=> start!132532 m!1432393))

(declare-fun m!1432395 () Bool)

(assert (=> b!1553799 m!1432395))

(declare-fun m!1432397 () Bool)

(assert (=> b!1553799 m!1432397))

(declare-fun m!1432399 () Bool)

(assert (=> b!1553799 m!1432399))

(declare-fun m!1432401 () Bool)

(assert (=> b!1553799 m!1432401))

(declare-fun m!1432403 () Bool)

(assert (=> b!1553800 m!1432403))

(assert (=> b!1553800 m!1432385))

(push 1)

(assert (not b!1553795))

(assert (not b!1553800))

(assert (not start!132532))

(assert (not b!1553797))

(assert (not b!1553796))

(assert tp_is_empty!38233)

(assert (not b!1553799))

(check-sat)

