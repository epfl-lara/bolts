; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497778 () Bool)

(assert start!497778)

(declare-fun b!4813767 () Bool)

(declare-fun res!2047480 () Bool)

(declare-fun e!3007513 () Bool)

(assert (=> b!4813767 (=> (not res!2047480) (not e!3007513))))

(declare-datatypes ((K!16287 0))(
  ( (K!16288 (val!21335 Int)) )
))
(declare-datatypes ((V!16533 0))(
  ( (V!16534 (val!21336 Int)) )
))
(declare-datatypes ((tuple2!57606 0))(
  ( (tuple2!57607 (_1!32097 K!16287) (_2!32097 V!16533)) )
))
(declare-datatypes ((List!54770 0))(
  ( (Nil!54646) (Cons!54646 (h!61078 tuple2!57606) (t!362266 List!54770)) )
))
(declare-datatypes ((tuple2!57608 0))(
  ( (tuple2!57609 (_1!32098 (_ BitVec 64)) (_2!32098 List!54770)) )
))
(declare-datatypes ((List!54771 0))(
  ( (Nil!54647) (Cons!54647 (h!61079 tuple2!57608) (t!362267 List!54771)) )
))
(declare-datatypes ((ListLongMap!5701 0))(
  ( (ListLongMap!5702 (toList!7221 List!54771)) )
))
(declare-fun lm!1254 () ListLongMap!5701)

(declare-datatypes ((Hashable!7119 0))(
  ( (HashableExt!7118 (__x!33394 Int)) )
))
(declare-fun hashF!938 () Hashable!7119)

(declare-fun allKeysSameHashInMap!2435 (ListLongMap!5701 Hashable!7119) Bool)

(assert (=> b!4813767 (= res!2047480 (allKeysSameHashInMap!2435 lm!1254 hashF!938))))

(declare-fun b!4813768 () Bool)

(declare-datatypes ((Unit!141757 0))(
  ( (Unit!141758) )
))
(declare-fun e!3007511 () Unit!141757)

(declare-fun Unit!141759 () Unit!141757)

(assert (=> b!4813768 (= e!3007511 Unit!141759)))

(declare-fun b!4813769 () Bool)

(declare-fun e!3007514 () Bool)

(assert (=> b!4813769 (= e!3007513 (not e!3007514))))

(declare-fun res!2047479 () Bool)

(assert (=> b!4813769 (=> (not res!2047479) (not e!3007514))))

(declare-fun lambda!233998 () Int)

(declare-fun forall!12423 (List!54771 Int) Bool)

(assert (=> b!4813769 (= res!2047479 (forall!12423 (toList!7221 lm!1254) lambda!233998))))

(declare-fun lt!1964733 () tuple2!57608)

(declare-fun lt!1964730 () Unit!141757)

(declare-fun forallContained!4293 (List!54771 Int tuple2!57608) Unit!141757)

(assert (=> b!4813769 (= lt!1964730 (forallContained!4293 (toList!7221 lm!1254) lambda!233998 lt!1964733))))

(declare-fun lt!1964725 () Unit!141757)

(assert (=> b!4813769 (= lt!1964725 e!3007511)))

(declare-fun c!820427 () Bool)

(declare-fun lt!1964732 () Bool)

(assert (=> b!4813769 (= c!820427 lt!1964732)))

(declare-fun contains!18411 (List!54771 tuple2!57608) Bool)

(assert (=> b!4813769 (= lt!1964732 (not (contains!18411 (toList!7221 lm!1254) lt!1964733)))))

(declare-fun lt!1964726 () (_ BitVec 64))

(declare-fun lt!1964728 () List!54770)

(assert (=> b!4813769 (= lt!1964733 (tuple2!57609 lt!1964726 lt!1964728))))

(declare-fun apply!13224 (ListLongMap!5701 (_ BitVec 64)) List!54770)

(assert (=> b!4813769 (= lt!1964728 (apply!13224 lm!1254 lt!1964726))))

(declare-fun contains!18412 (ListLongMap!5701 (_ BitVec 64)) Bool)

(assert (=> b!4813769 (contains!18412 lm!1254 lt!1964726)))

(declare-fun key!2670 () K!16287)

(declare-fun hash!5182 (Hashable!7119 K!16287) (_ BitVec 64))

(assert (=> b!4813769 (= lt!1964726 (hash!5182 hashF!938 key!2670))))

(declare-fun lt!1964729 () Unit!141757)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1057 (ListLongMap!5701 K!16287 Hashable!7119) Unit!141757)

(assert (=> b!4813769 (= lt!1964729 (lemmaInGenMapThenLongMapContainsHash!1057 lm!1254 key!2670 hashF!938))))

(declare-fun b!4813770 () Bool)

(declare-fun res!2047477 () Bool)

(assert (=> b!4813770 (=> (not res!2047477) (not e!3007513))))

(declare-datatypes ((ListMap!6635 0))(
  ( (ListMap!6636 (toList!7222 List!54770)) )
))
(declare-fun contains!18413 (ListMap!6635 K!16287) Bool)

(declare-fun extractMap!2569 (List!54771) ListMap!6635)

(assert (=> b!4813770 (= res!2047477 (contains!18413 (extractMap!2569 (toList!7221 lm!1254)) key!2670))))

(declare-fun res!2047478 () Bool)

(assert (=> start!497778 (=> (not res!2047478) (not e!3007513))))

(assert (=> start!497778 (= res!2047478 (forall!12423 (toList!7221 lm!1254) lambda!233998))))

(assert (=> start!497778 e!3007513))

(declare-fun e!3007512 () Bool)

(declare-fun inv!70188 (ListLongMap!5701) Bool)

(assert (=> start!497778 (and (inv!70188 lm!1254) e!3007512)))

(assert (=> start!497778 true))

(declare-fun tp_is_empty!34107 () Bool)

(assert (=> start!497778 tp_is_empty!34107))

(declare-fun b!4813771 () Bool)

(assert (=> b!4813771 (= e!3007514 (not lt!1964732))))

(declare-fun b!4813772 () Bool)

(declare-fun tp!1361656 () Bool)

(assert (=> b!4813772 (= e!3007512 tp!1361656)))

(declare-fun b!4813773 () Bool)

(declare-fun Unit!141760 () Unit!141757)

(assert (=> b!4813773 (= e!3007511 Unit!141760)))

(declare-fun lt!1964731 () Unit!141757)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!310 (List!54771 (_ BitVec 64)) Unit!141757)

(assert (=> b!4813773 (= lt!1964731 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!310 (toList!7221 lm!1254) lt!1964726))))

(declare-fun containsKey!4198 (List!54771 (_ BitVec 64)) Bool)

(assert (=> b!4813773 (containsKey!4198 (toList!7221 lm!1254) lt!1964726)))

(declare-fun lt!1964724 () Unit!141757)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2316 (List!54771 (_ BitVec 64)) Unit!141757)

(assert (=> b!4813773 (= lt!1964724 (lemmaContainsKeyImpliesGetValueByKeyDefined!2316 (toList!7221 lm!1254) lt!1964726))))

(declare-datatypes ((Option!13362 0))(
  ( (None!13361) (Some!13361 (v!48994 List!54770)) )
))
(declare-fun isDefined!10499 (Option!13362) Bool)

(declare-fun getValueByKey!2529 (List!54771 (_ BitVec 64)) Option!13362)

(assert (=> b!4813773 (isDefined!10499 (getValueByKey!2529 (toList!7221 lm!1254) lt!1964726))))

(declare-fun lt!1964727 () Unit!141757)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1027 (List!54771 (_ BitVec 64) List!54770) Unit!141757)

(assert (=> b!4813773 (= lt!1964727 (lemmaGetValueByKeyImpliesContainsTuple!1027 (toList!7221 lm!1254) lt!1964726 lt!1964728))))

(assert (=> b!4813773 false))

(assert (= (and start!497778 res!2047478) b!4813767))

(assert (= (and b!4813767 res!2047480) b!4813770))

(assert (= (and b!4813770 res!2047477) b!4813769))

(assert (= (and b!4813769 c!820427) b!4813773))

(assert (= (and b!4813769 (not c!820427)) b!4813768))

(assert (= (and b!4813769 res!2047479) b!4813771))

(assert (= start!497778 b!4813772))

(declare-fun m!5799510 () Bool)

(assert (=> b!4813770 m!5799510))

(assert (=> b!4813770 m!5799510))

(declare-fun m!5799512 () Bool)

(assert (=> b!4813770 m!5799512))

(declare-fun m!5799514 () Bool)

(assert (=> b!4813773 m!5799514))

(declare-fun m!5799516 () Bool)

(assert (=> b!4813773 m!5799516))

(declare-fun m!5799518 () Bool)

(assert (=> b!4813773 m!5799518))

(declare-fun m!5799520 () Bool)

(assert (=> b!4813773 m!5799520))

(declare-fun m!5799522 () Bool)

(assert (=> b!4813773 m!5799522))

(assert (=> b!4813773 m!5799520))

(declare-fun m!5799524 () Bool)

(assert (=> b!4813773 m!5799524))

(declare-fun m!5799526 () Bool)

(assert (=> b!4813767 m!5799526))

(declare-fun m!5799528 () Bool)

(assert (=> start!497778 m!5799528))

(declare-fun m!5799530 () Bool)

(assert (=> start!497778 m!5799530))

(declare-fun m!5799532 () Bool)

(assert (=> b!4813769 m!5799532))

(declare-fun m!5799534 () Bool)

(assert (=> b!4813769 m!5799534))

(declare-fun m!5799536 () Bool)

(assert (=> b!4813769 m!5799536))

(declare-fun m!5799538 () Bool)

(assert (=> b!4813769 m!5799538))

(assert (=> b!4813769 m!5799528))

(declare-fun m!5799540 () Bool)

(assert (=> b!4813769 m!5799540))

(declare-fun m!5799542 () Bool)

(assert (=> b!4813769 m!5799542))

(push 1)

(assert (not b!4813773))

(assert (not b!4813767))

(assert (not start!497778))

(assert tp_is_empty!34107)

(assert (not b!4813772))

(assert (not b!4813770))

(assert (not b!4813769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

