; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502608 () Bool)

(assert start!502608)

(declare-fun b!4835026 () Bool)

(declare-fun res!2059846 () Bool)

(declare-fun e!3021563 () Bool)

(assert (=> b!4835026 (=> (not res!2059846) (not e!3021563))))

(declare-datatypes ((K!16857 0))(
  ( (K!16858 (val!21791 Int)) )
))
(declare-datatypes ((V!17103 0))(
  ( (V!17104 (val!21792 Int)) )
))
(declare-datatypes ((tuple2!58454 0))(
  ( (tuple2!58455 (_1!32521 K!16857) (_2!32521 V!17103)) )
))
(declare-datatypes ((List!55260 0))(
  ( (Nil!55136) (Cons!55136 (h!61570 tuple2!58454) (t!362756 List!55260)) )
))
(declare-datatypes ((tuple2!58456 0))(
  ( (tuple2!58457 (_1!32522 (_ BitVec 64)) (_2!32522 List!55260)) )
))
(declare-datatypes ((List!55261 0))(
  ( (Nil!55137) (Cons!55137 (h!61571 tuple2!58456) (t!362757 List!55261)) )
))
(declare-datatypes ((ListLongMap!6093 0))(
  ( (ListLongMap!6094 (toList!7599 List!55261)) )
))
(declare-fun lm!1282 () ListLongMap!6093)

(declare-datatypes ((Hashable!7315 0))(
  ( (HashableExt!7314 (__x!33590 Int)) )
))
(declare-fun hashF!961 () Hashable!7315)

(declare-fun allKeysSameHashInMap!2631 (ListLongMap!6093 Hashable!7315) Bool)

(assert (=> b!4835026 (= res!2059846 (allKeysSameHashInMap!2631 lm!1282 hashF!961))))

(declare-fun b!4835027 () Bool)

(declare-fun e!3021562 () Bool)

(assert (=> b!4835027 (= e!3021563 e!3021562)))

(declare-fun res!2059847 () Bool)

(assert (=> b!4835027 (=> (not res!2059847) (not e!3021562))))

(declare-fun lt!1981012 () (_ BitVec 64))

(declare-fun contains!18960 (ListLongMap!6093 (_ BitVec 64)) Bool)

(assert (=> b!4835027 (= res!2059847 (contains!18960 lm!1282 lt!1981012))))

(declare-fun key!2791 () K!16857)

(declare-fun hash!5500 (Hashable!7315 K!16857) (_ BitVec 64))

(assert (=> b!4835027 (= lt!1981012 (hash!5500 hashF!961 key!2791))))

(declare-fun b!4835028 () Bool)

(declare-fun lambda!239153 () Int)

(declare-fun forall!12714 (List!55261 Int) Bool)

(assert (=> b!4835028 (= e!3021562 (not (forall!12714 (toList!7599 lm!1282) lambda!239153)))))

(declare-fun lt!1981011 () List!55260)

(declare-fun contains!18961 (List!55261 tuple2!58456) Bool)

(assert (=> b!4835028 (contains!18961 (toList!7599 lm!1282) (tuple2!58457 lt!1981012 lt!1981011))))

(declare-datatypes ((Unit!144521 0))(
  ( (Unit!144522) )
))
(declare-fun lt!1981010 () Unit!144521)

(declare-fun lemmaGetValueImpliesTupleContained!694 (ListLongMap!6093 (_ BitVec 64) List!55260) Unit!144521)

(assert (=> b!4835028 (= lt!1981010 (lemmaGetValueImpliesTupleContained!694 lm!1282 lt!1981012 lt!1981011))))

(declare-fun apply!13378 (ListLongMap!6093 (_ BitVec 64)) List!55260)

(assert (=> b!4835028 (= lt!1981011 (apply!13378 lm!1282 lt!1981012))))

(declare-fun res!2059848 () Bool)

(assert (=> start!502608 (=> (not res!2059848) (not e!3021563))))

(assert (=> start!502608 (= res!2059848 (forall!12714 (toList!7599 lm!1282) lambda!239153))))

(assert (=> start!502608 e!3021563))

(declare-fun e!3021564 () Bool)

(declare-fun inv!70758 (ListLongMap!6093) Bool)

(assert (=> start!502608 (and (inv!70758 lm!1282) e!3021564)))

(assert (=> start!502608 true))

(declare-fun tp_is_empty!34725 () Bool)

(assert (=> start!502608 tp_is_empty!34725))

(declare-fun b!4835029 () Bool)

(declare-fun tp!1363261 () Bool)

(assert (=> b!4835029 (= e!3021564 tp!1363261)))

(assert (= (and start!502608 res!2059848) b!4835026))

(assert (= (and b!4835026 res!2059846) b!4835027))

(assert (= (and b!4835027 res!2059847) b!4835028))

(assert (= start!502608 b!4835029))

(declare-fun m!5830136 () Bool)

(assert (=> b!4835026 m!5830136))

(declare-fun m!5830138 () Bool)

(assert (=> b!4835027 m!5830138))

(declare-fun m!5830140 () Bool)

(assert (=> b!4835027 m!5830140))

(declare-fun m!5830142 () Bool)

(assert (=> b!4835028 m!5830142))

(declare-fun m!5830144 () Bool)

(assert (=> b!4835028 m!5830144))

(declare-fun m!5830146 () Bool)

(assert (=> b!4835028 m!5830146))

(declare-fun m!5830148 () Bool)

(assert (=> b!4835028 m!5830148))

(assert (=> start!502608 m!5830142))

(declare-fun m!5830150 () Bool)

(assert (=> start!502608 m!5830150))

(push 1)

(assert (not start!502608))

(assert (not b!4835026))

(assert (not b!4835029))

(assert (not b!4835027))

(assert (not b!4835028))

(assert tp_is_empty!34725)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

