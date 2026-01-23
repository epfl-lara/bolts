; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502606 () Bool)

(assert start!502606)

(declare-fun b!4835016 () Bool)

(declare-fun e!3021554 () Bool)

(assert (=> b!4835016 (= e!3021554 (not true))))

(declare-datatypes ((K!16854 0))(
  ( (K!16855 (val!21789 Int)) )
))
(declare-datatypes ((V!17100 0))(
  ( (V!17101 (val!21790 Int)) )
))
(declare-datatypes ((tuple2!58450 0))(
  ( (tuple2!58451 (_1!32519 K!16854) (_2!32519 V!17100)) )
))
(declare-datatypes ((List!55258 0))(
  ( (Nil!55134) (Cons!55134 (h!61568 tuple2!58450) (t!362754 List!55258)) )
))
(declare-datatypes ((tuple2!58452 0))(
  ( (tuple2!58453 (_1!32520 (_ BitVec 64)) (_2!32520 List!55258)) )
))
(declare-datatypes ((List!55259 0))(
  ( (Nil!55135) (Cons!55135 (h!61569 tuple2!58452) (t!362755 List!55259)) )
))
(declare-datatypes ((ListLongMap!6091 0))(
  ( (ListLongMap!6092 (toList!7598 List!55259)) )
))
(declare-fun lm!1282 () ListLongMap!6091)

(declare-fun lt!1981002 () (_ BitVec 64))

(declare-fun lt!1981001 () List!55258)

(declare-fun contains!18958 (List!55259 tuple2!58452) Bool)

(assert (=> b!4835016 (contains!18958 (toList!7598 lm!1282) (tuple2!58453 lt!1981002 lt!1981001))))

(declare-datatypes ((Unit!144519 0))(
  ( (Unit!144520) )
))
(declare-fun lt!1981003 () Unit!144519)

(declare-fun lemmaGetValueImpliesTupleContained!693 (ListLongMap!6091 (_ BitVec 64) List!55258) Unit!144519)

(assert (=> b!4835016 (= lt!1981003 (lemmaGetValueImpliesTupleContained!693 lm!1282 lt!1981002 lt!1981001))))

(declare-fun apply!13377 (ListLongMap!6091 (_ BitVec 64)) List!55258)

(assert (=> b!4835016 (= lt!1981001 (apply!13377 lm!1282 lt!1981002))))

(declare-fun b!4835015 () Bool)

(declare-fun e!3021553 () Bool)

(assert (=> b!4835015 (= e!3021553 e!3021554)))

(declare-fun res!2059839 () Bool)

(assert (=> b!4835015 (=> (not res!2059839) (not e!3021554))))

(declare-fun contains!18959 (ListLongMap!6091 (_ BitVec 64)) Bool)

(assert (=> b!4835015 (= res!2059839 (contains!18959 lm!1282 lt!1981002))))

(declare-datatypes ((Hashable!7314 0))(
  ( (HashableExt!7313 (__x!33589 Int)) )
))
(declare-fun hashF!961 () Hashable!7314)

(declare-fun key!2791 () K!16854)

(declare-fun hash!5499 (Hashable!7314 K!16854) (_ BitVec 64))

(assert (=> b!4835015 (= lt!1981002 (hash!5499 hashF!961 key!2791))))

(declare-fun b!4835017 () Bool)

(declare-fun e!3021555 () Bool)

(declare-fun tp!1363258 () Bool)

(assert (=> b!4835017 (= e!3021555 tp!1363258)))

(declare-fun b!4835014 () Bool)

(declare-fun res!2059838 () Bool)

(assert (=> b!4835014 (=> (not res!2059838) (not e!3021553))))

(declare-fun allKeysSameHashInMap!2630 (ListLongMap!6091 Hashable!7314) Bool)

(assert (=> b!4835014 (= res!2059838 (allKeysSameHashInMap!2630 lm!1282 hashF!961))))

(declare-fun res!2059837 () Bool)

(assert (=> start!502606 (=> (not res!2059837) (not e!3021553))))

(declare-fun lambda!239148 () Int)

(declare-fun forall!12713 (List!55259 Int) Bool)

(assert (=> start!502606 (= res!2059837 (forall!12713 (toList!7598 lm!1282) lambda!239148))))

(assert (=> start!502606 e!3021553))

(declare-fun inv!70754 (ListLongMap!6091) Bool)

(assert (=> start!502606 (and (inv!70754 lm!1282) e!3021555)))

(assert (=> start!502606 true))

(declare-fun tp_is_empty!34723 () Bool)

(assert (=> start!502606 tp_is_empty!34723))

(assert (= (and start!502606 res!2059837) b!4835014))

(assert (= (and b!4835014 res!2059838) b!4835015))

(assert (= (and b!4835015 res!2059839) b!4835016))

(assert (= start!502606 b!4835017))

(declare-fun m!5830120 () Bool)

(assert (=> b!4835016 m!5830120))

(declare-fun m!5830122 () Bool)

(assert (=> b!4835016 m!5830122))

(declare-fun m!5830124 () Bool)

(assert (=> b!4835016 m!5830124))

(declare-fun m!5830126 () Bool)

(assert (=> b!4835015 m!5830126))

(declare-fun m!5830128 () Bool)

(assert (=> b!4835015 m!5830128))

(declare-fun m!5830130 () Bool)

(assert (=> b!4835014 m!5830130))

(declare-fun m!5830132 () Bool)

(assert (=> start!502606 m!5830132))

(declare-fun m!5830134 () Bool)

(assert (=> start!502606 m!5830134))

(check-sat (not start!502606) (not b!4835017) (not b!4835016) (not b!4835015) tp_is_empty!34723 (not b!4835014))
(check-sat)
