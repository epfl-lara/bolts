; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502614 () Bool)

(assert start!502614)

(declare-fun b!4835062 () Bool)

(declare-fun res!2059873 () Bool)

(declare-fun e!3021591 () Bool)

(assert (=> b!4835062 (=> (not res!2059873) (not e!3021591))))

(declare-datatypes ((K!16864 0))(
  ( (K!16865 (val!21797 Int)) )
))
(declare-datatypes ((V!17110 0))(
  ( (V!17111 (val!21798 Int)) )
))
(declare-datatypes ((tuple2!58466 0))(
  ( (tuple2!58467 (_1!32527 K!16864) (_2!32527 V!17110)) )
))
(declare-datatypes ((List!55266 0))(
  ( (Nil!55142) (Cons!55142 (h!61576 tuple2!58466) (t!362762 List!55266)) )
))
(declare-datatypes ((tuple2!58468 0))(
  ( (tuple2!58469 (_1!32528 (_ BitVec 64)) (_2!32528 List!55266)) )
))
(declare-datatypes ((List!55267 0))(
  ( (Nil!55143) (Cons!55143 (h!61577 tuple2!58468) (t!362763 List!55267)) )
))
(declare-datatypes ((ListLongMap!6099 0))(
  ( (ListLongMap!6100 (toList!7602 List!55267)) )
))
(declare-fun lm!1282 () ListLongMap!6099)

(declare-datatypes ((Hashable!7318 0))(
  ( (HashableExt!7317 (__x!33593 Int)) )
))
(declare-fun hashF!961 () Hashable!7318)

(declare-fun allKeysSameHashInMap!2634 (ListLongMap!6099 Hashable!7318) Bool)

(assert (=> b!4835062 (= res!2059873 (allKeysSameHashInMap!2634 lm!1282 hashF!961))))

(declare-fun b!4835063 () Bool)

(declare-fun e!3021590 () Bool)

(assert (=> b!4835063 (= e!3021591 e!3021590)))

(declare-fun res!2059875 () Bool)

(assert (=> b!4835063 (=> (not res!2059875) (not e!3021590))))

(declare-fun lt!1981048 () (_ BitVec 64))

(declare-fun contains!18966 (ListLongMap!6099 (_ BitVec 64)) Bool)

(assert (=> b!4835063 (= res!2059875 (contains!18966 lm!1282 lt!1981048))))

(declare-fun key!2791 () K!16864)

(declare-fun hash!5503 (Hashable!7318 K!16864) (_ BitVec 64))

(assert (=> b!4835063 (= lt!1981048 (hash!5503 hashF!961 key!2791))))

(declare-fun b!4835065 () Bool)

(declare-fun e!3021589 () Bool)

(declare-fun tp!1363270 () Bool)

(assert (=> b!4835065 (= e!3021589 tp!1363270)))

(declare-fun res!2059874 () Bool)

(assert (=> start!502614 (=> (not res!2059874) (not e!3021591))))

(declare-fun lambda!239168 () Int)

(declare-fun forall!12717 (List!55267 Int) Bool)

(assert (=> start!502614 (= res!2059874 (forall!12717 (toList!7602 lm!1282) lambda!239168))))

(assert (=> start!502614 e!3021591))

(declare-fun inv!70764 (ListLongMap!6099) Bool)

(assert (=> start!502614 (and (inv!70764 lm!1282) e!3021589)))

(assert (=> start!502614 true))

(declare-fun tp_is_empty!34731 () Bool)

(assert (=> start!502614 tp_is_empty!34731))

(declare-fun b!4835064 () Bool)

(assert (=> b!4835064 (= e!3021590 (not true))))

(declare-fun lt!1981051 () tuple2!58468)

(declare-datatypes ((Unit!144527 0))(
  ( (Unit!144528) )
))
(declare-fun lt!1981050 () Unit!144527)

(declare-fun forallContained!4441 (List!55267 Int tuple2!58468) Unit!144527)

(assert (=> b!4835064 (= lt!1981050 (forallContained!4441 (toList!7602 lm!1282) lambda!239168 lt!1981051))))

(declare-fun contains!18967 (List!55267 tuple2!58468) Bool)

(assert (=> b!4835064 (contains!18967 (toList!7602 lm!1282) lt!1981051)))

(declare-fun lt!1981049 () List!55266)

(assert (=> b!4835064 (= lt!1981051 (tuple2!58469 lt!1981048 lt!1981049))))

(declare-fun lt!1981047 () Unit!144527)

(declare-fun lemmaGetValueImpliesTupleContained!697 (ListLongMap!6099 (_ BitVec 64) List!55266) Unit!144527)

(assert (=> b!4835064 (= lt!1981047 (lemmaGetValueImpliesTupleContained!697 lm!1282 lt!1981048 lt!1981049))))

(declare-fun apply!13381 (ListLongMap!6099 (_ BitVec 64)) List!55266)

(assert (=> b!4835064 (= lt!1981049 (apply!13381 lm!1282 lt!1981048))))

(assert (= (and start!502614 res!2059874) b!4835062))

(assert (= (and b!4835062 res!2059873) b!4835063))

(assert (= (and b!4835063 res!2059875) b!4835064))

(assert (= start!502614 b!4835065))

(declare-fun m!5830186 () Bool)

(assert (=> b!4835062 m!5830186))

(declare-fun m!5830188 () Bool)

(assert (=> b!4835063 m!5830188))

(declare-fun m!5830190 () Bool)

(assert (=> b!4835063 m!5830190))

(declare-fun m!5830192 () Bool)

(assert (=> start!502614 m!5830192))

(declare-fun m!5830194 () Bool)

(assert (=> start!502614 m!5830194))

(declare-fun m!5830196 () Bool)

(assert (=> b!4835064 m!5830196))

(declare-fun m!5830198 () Bool)

(assert (=> b!4835064 m!5830198))

(declare-fun m!5830200 () Bool)

(assert (=> b!4835064 m!5830200))

(declare-fun m!5830202 () Bool)

(assert (=> b!4835064 m!5830202))

(check-sat tp_is_empty!34731 (not start!502614) (not b!4835063) (not b!4835065) (not b!4835062) (not b!4835064))
(check-sat)
