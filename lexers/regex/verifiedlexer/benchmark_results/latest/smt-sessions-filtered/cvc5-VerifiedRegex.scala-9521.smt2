; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502676 () Bool)

(assert start!502676)

(declare-fun b!4835326 () Bool)

(declare-fun e!3021787 () Bool)

(assert (=> b!4835326 (= e!3021787 true)))

(declare-datatypes ((K!16892 0))(
  ( (K!16893 (val!21819 Int)) )
))
(declare-datatypes ((V!17138 0))(
  ( (V!17139 (val!21820 Int)) )
))
(declare-datatypes ((tuple2!58510 0))(
  ( (tuple2!58511 (_1!32549 K!16892) (_2!32549 V!17138)) )
))
(declare-datatypes ((List!55288 0))(
  ( (Nil!55164) (Cons!55164 (h!61598 tuple2!58510) (t!362784 List!55288)) )
))
(declare-datatypes ((tuple2!58512 0))(
  ( (tuple2!58513 (_1!32550 (_ BitVec 64)) (_2!32550 List!55288)) )
))
(declare-datatypes ((List!55289 0))(
  ( (Nil!55165) (Cons!55165 (h!61599 tuple2!58512) (t!362785 List!55289)) )
))
(declare-datatypes ((ListLongMap!6121 0))(
  ( (ListLongMap!6122 (toList!7613 List!55289)) )
))
(declare-fun lm!1282 () ListLongMap!6121)

(declare-fun key!2791 () K!16892)

(declare-fun containsKeyBiggerList!623 (List!55289 K!16892) Bool)

(assert (=> b!4835326 (containsKeyBiggerList!623 (toList!7613 lm!1282) key!2791)))

(declare-datatypes ((Hashable!7329 0))(
  ( (HashableExt!7328 (__x!33604 Int)) )
))
(declare-fun hashF!961 () Hashable!7329)

(declare-datatypes ((Unit!144550 0))(
  ( (Unit!144551) )
))
(declare-fun lt!1981286 () Unit!144550)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!363 (ListLongMap!6121 K!16892 Hashable!7329) Unit!144550)

(assert (=> b!4835326 (= lt!1981286 (lemmaInLongMapThenContainsKeyBiggerList!363 lm!1282 key!2791 hashF!961))))

(declare-fun b!4835327 () Bool)

(declare-fun e!3021789 () Bool)

(declare-fun tp!1363315 () Bool)

(assert (=> b!4835327 (= e!3021789 tp!1363315)))

(declare-fun b!4835328 () Bool)

(declare-fun e!3021786 () Bool)

(declare-fun e!3021788 () Bool)

(assert (=> b!4835328 (= e!3021786 e!3021788)))

(declare-fun res!2060076 () Bool)

(assert (=> b!4835328 (=> (not res!2060076) (not e!3021788))))

(declare-fun lt!1981289 () (_ BitVec 64))

(declare-fun contains!18988 (ListLongMap!6121 (_ BitVec 64)) Bool)

(assert (=> b!4835328 (= res!2060076 (contains!18988 lm!1282 lt!1981289))))

(declare-fun hash!5515 (Hashable!7329 K!16892) (_ BitVec 64))

(assert (=> b!4835328 (= lt!1981289 (hash!5515 hashF!961 key!2791))))

(declare-fun b!4835329 () Bool)

(assert (=> b!4835329 (= e!3021788 (not e!3021787))))

(declare-fun res!2060078 () Bool)

(assert (=> b!4835329 (=> res!2060078 e!3021787)))

(declare-fun lt!1981291 () List!55288)

(declare-datatypes ((Option!13565 0))(
  ( (None!13564) (Some!13564 (v!49267 tuple2!58510)) )
))
(declare-fun isDefined!10675 (Option!13565) Bool)

(declare-fun getPair!1029 (List!55288 K!16892) Option!13565)

(assert (=> b!4835329 (= res!2060078 (not (isDefined!10675 (getPair!1029 lt!1981291 key!2791))))))

(declare-fun lambda!239273 () Int)

(declare-fun lt!1981288 () Unit!144550)

(declare-fun lt!1981290 () tuple2!58512)

(declare-fun forallContained!4452 (List!55289 Int tuple2!58512) Unit!144550)

(assert (=> b!4835329 (= lt!1981288 (forallContained!4452 (toList!7613 lm!1282) lambda!239273 lt!1981290))))

(declare-fun contains!18989 (List!55289 tuple2!58512) Bool)

(assert (=> b!4835329 (contains!18989 (toList!7613 lm!1282) lt!1981290)))

(assert (=> b!4835329 (= lt!1981290 (tuple2!58513 lt!1981289 lt!1981291))))

(declare-fun lt!1981287 () Unit!144550)

(declare-fun lemmaGetValueImpliesTupleContained!708 (ListLongMap!6121 (_ BitVec 64) List!55288) Unit!144550)

(assert (=> b!4835329 (= lt!1981287 (lemmaGetValueImpliesTupleContained!708 lm!1282 lt!1981289 lt!1981291))))

(declare-fun apply!13392 (ListLongMap!6121 (_ BitVec 64)) List!55288)

(assert (=> b!4835329 (= lt!1981291 (apply!13392 lm!1282 lt!1981289))))

(declare-fun b!4835330 () Bool)

(declare-fun res!2060079 () Bool)

(assert (=> b!4835330 (=> (not res!2060079) (not e!3021786))))

(declare-fun allKeysSameHashInMap!2645 (ListLongMap!6121 Hashable!7329) Bool)

(assert (=> b!4835330 (= res!2060079 (allKeysSameHashInMap!2645 lm!1282 hashF!961))))

(declare-fun res!2060077 () Bool)

(assert (=> start!502676 (=> (not res!2060077) (not e!3021786))))

(declare-fun forall!12728 (List!55289 Int) Bool)

(assert (=> start!502676 (= res!2060077 (forall!12728 (toList!7613 lm!1282) lambda!239273))))

(assert (=> start!502676 e!3021786))

(declare-fun inv!70793 (ListLongMap!6121) Bool)

(assert (=> start!502676 (and (inv!70793 lm!1282) e!3021789)))

(assert (=> start!502676 true))

(declare-fun tp_is_empty!34753 () Bool)

(assert (=> start!502676 tp_is_empty!34753))

(assert (= (and start!502676 res!2060077) b!4835330))

(assert (= (and b!4835330 res!2060079) b!4835328))

(assert (= (and b!4835328 res!2060076) b!4835329))

(assert (= (and b!4835329 (not res!2060078)) b!4835326))

(assert (= start!502676 b!4835327))

(declare-fun m!5830512 () Bool)

(assert (=> b!4835329 m!5830512))

(declare-fun m!5830514 () Bool)

(assert (=> b!4835329 m!5830514))

(declare-fun m!5830516 () Bool)

(assert (=> b!4835329 m!5830516))

(declare-fun m!5830518 () Bool)

(assert (=> b!4835329 m!5830518))

(assert (=> b!4835329 m!5830516))

(declare-fun m!5830520 () Bool)

(assert (=> b!4835329 m!5830520))

(declare-fun m!5830522 () Bool)

(assert (=> b!4835329 m!5830522))

(declare-fun m!5830524 () Bool)

(assert (=> b!4835326 m!5830524))

(declare-fun m!5830526 () Bool)

(assert (=> b!4835326 m!5830526))

(declare-fun m!5830528 () Bool)

(assert (=> start!502676 m!5830528))

(declare-fun m!5830530 () Bool)

(assert (=> start!502676 m!5830530))

(declare-fun m!5830532 () Bool)

(assert (=> b!4835328 m!5830532))

(declare-fun m!5830534 () Bool)

(assert (=> b!4835328 m!5830534))

(declare-fun m!5830536 () Bool)

(assert (=> b!4835330 m!5830536))

(push 1)

(assert (not b!4835328))

(assert (not b!4835329))

(assert (not b!4835326))

(assert (not b!4835327))

(assert (not start!502676))

(assert (not b!4835330))

(assert tp_is_empty!34753)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

