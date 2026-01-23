; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502662 () Bool)

(assert start!502662)

(declare-fun b!4835196 () Bool)

(declare-fun e!3021690 () Bool)

(declare-datatypes ((K!16874 0))(
  ( (K!16875 (val!21805 Int)) )
))
(declare-datatypes ((V!17120 0))(
  ( (V!17121 (val!21806 Int)) )
))
(declare-datatypes ((tuple2!58482 0))(
  ( (tuple2!58483 (_1!32535 K!16874) (_2!32535 V!17120)) )
))
(declare-datatypes ((List!55274 0))(
  ( (Nil!55150) (Cons!55150 (h!61584 tuple2!58482) (t!362770 List!55274)) )
))
(declare-datatypes ((tuple2!58484 0))(
  ( (tuple2!58485 (_1!32536 (_ BitVec 64)) (_2!32536 List!55274)) )
))
(declare-datatypes ((List!55275 0))(
  ( (Nil!55151) (Cons!55151 (h!61585 tuple2!58484) (t!362771 List!55275)) )
))
(declare-datatypes ((ListLongMap!6107 0))(
  ( (ListLongMap!6108 (toList!7606 List!55275)) )
))
(declare-fun lm!1282 () ListLongMap!6107)

(declare-fun lambda!239206 () Int)

(declare-fun forall!12721 (List!55275 Int) Bool)

(assert (=> b!4835196 (= e!3021690 (forall!12721 (toList!7606 lm!1282) lambda!239206))))

(declare-fun lt!1981159 () tuple2!58484)

(declare-datatypes ((Unit!144536 0))(
  ( (Unit!144537) )
))
(declare-fun lt!1981155 () Unit!144536)

(declare-fun forallContained!4445 (List!55275 Int tuple2!58484) Unit!144536)

(assert (=> b!4835196 (= lt!1981155 (forallContained!4445 (toList!7606 lm!1282) lambda!239206 lt!1981159))))

(declare-fun b!4835197 () Bool)

(declare-fun e!3021692 () Bool)

(assert (=> b!4835197 (= e!3021692 (not e!3021690))))

(declare-fun res!2059968 () Bool)

(assert (=> b!4835197 (=> res!2059968 e!3021690)))

(declare-fun lt!1981154 () List!55274)

(declare-fun key!2791 () K!16874)

(declare-datatypes ((Option!13558 0))(
  ( (None!13557) (Some!13557 (v!49260 tuple2!58482)) )
))
(declare-fun isDefined!10668 (Option!13558) Bool)

(declare-fun getPair!1022 (List!55274 K!16874) Option!13558)

(assert (=> b!4835197 (= res!2059968 (not (isDefined!10668 (getPair!1022 lt!1981154 key!2791))))))

(declare-fun lt!1981157 () Unit!144536)

(assert (=> b!4835197 (= lt!1981157 (forallContained!4445 (toList!7606 lm!1282) lambda!239206 lt!1981159))))

(declare-fun contains!18974 (List!55275 tuple2!58484) Bool)

(assert (=> b!4835197 (contains!18974 (toList!7606 lm!1282) lt!1981159)))

(declare-fun lt!1981156 () (_ BitVec 64))

(assert (=> b!4835197 (= lt!1981159 (tuple2!58485 lt!1981156 lt!1981154))))

(declare-fun lt!1981158 () Unit!144536)

(declare-fun lemmaGetValueImpliesTupleContained!701 (ListLongMap!6107 (_ BitVec 64) List!55274) Unit!144536)

(assert (=> b!4835197 (= lt!1981158 (lemmaGetValueImpliesTupleContained!701 lm!1282 lt!1981156 lt!1981154))))

(declare-fun apply!13385 (ListLongMap!6107 (_ BitVec 64)) List!55274)

(assert (=> b!4835197 (= lt!1981154 (apply!13385 lm!1282 lt!1981156))))

(declare-fun b!4835199 () Bool)

(declare-fun res!2059967 () Bool)

(assert (=> b!4835199 (=> res!2059967 e!3021690)))

(assert (=> b!4835199 (= res!2059967 (not (forall!12721 (toList!7606 lm!1282) lambda!239206)))))

(declare-fun b!4835200 () Bool)

(declare-fun e!3021693 () Bool)

(declare-fun tp!1363294 () Bool)

(assert (=> b!4835200 (= e!3021693 tp!1363294)))

(declare-fun b!4835201 () Bool)

(declare-fun res!2059969 () Bool)

(declare-fun e!3021691 () Bool)

(assert (=> b!4835201 (=> (not res!2059969) (not e!3021691))))

(declare-datatypes ((Hashable!7322 0))(
  ( (HashableExt!7321 (__x!33597 Int)) )
))
(declare-fun hashF!961 () Hashable!7322)

(declare-fun allKeysSameHashInMap!2638 (ListLongMap!6107 Hashable!7322) Bool)

(assert (=> b!4835201 (= res!2059969 (allKeysSameHashInMap!2638 lm!1282 hashF!961))))

(declare-fun b!4835198 () Bool)

(assert (=> b!4835198 (= e!3021691 e!3021692)))

(declare-fun res!2059971 () Bool)

(assert (=> b!4835198 (=> (not res!2059971) (not e!3021692))))

(declare-fun contains!18975 (ListLongMap!6107 (_ BitVec 64)) Bool)

(assert (=> b!4835198 (= res!2059971 (contains!18975 lm!1282 lt!1981156))))

(declare-fun hash!5508 (Hashable!7322 K!16874) (_ BitVec 64))

(assert (=> b!4835198 (= lt!1981156 (hash!5508 hashF!961 key!2791))))

(declare-fun res!2059970 () Bool)

(assert (=> start!502662 (=> (not res!2059970) (not e!3021691))))

(assert (=> start!502662 (= res!2059970 (forall!12721 (toList!7606 lm!1282) lambda!239206))))

(assert (=> start!502662 e!3021691))

(declare-fun inv!70774 (ListLongMap!6107) Bool)

(assert (=> start!502662 (and (inv!70774 lm!1282) e!3021693)))

(assert (=> start!502662 true))

(declare-fun tp_is_empty!34739 () Bool)

(assert (=> start!502662 tp_is_empty!34739))

(assert (= (and start!502662 res!2059970) b!4835201))

(assert (= (and b!4835201 res!2059969) b!4835198))

(assert (= (and b!4835198 res!2059971) b!4835197))

(assert (= (and b!4835197 (not res!2059968)) b!4835199))

(assert (= (and b!4835199 (not res!2059967)) b!4835196))

(assert (= start!502662 b!4835200))

(declare-fun m!5830350 () Bool)

(assert (=> b!4835197 m!5830350))

(declare-fun m!5830352 () Bool)

(assert (=> b!4835197 m!5830352))

(declare-fun m!5830354 () Bool)

(assert (=> b!4835197 m!5830354))

(declare-fun m!5830356 () Bool)

(assert (=> b!4835197 m!5830356))

(declare-fun m!5830358 () Bool)

(assert (=> b!4835197 m!5830358))

(assert (=> b!4835197 m!5830354))

(declare-fun m!5830360 () Bool)

(assert (=> b!4835197 m!5830360))

(declare-fun m!5830362 () Bool)

(assert (=> b!4835201 m!5830362))

(declare-fun m!5830364 () Bool)

(assert (=> b!4835198 m!5830364))

(declare-fun m!5830366 () Bool)

(assert (=> b!4835198 m!5830366))

(declare-fun m!5830368 () Bool)

(assert (=> b!4835199 m!5830368))

(assert (=> start!502662 m!5830368))

(declare-fun m!5830370 () Bool)

(assert (=> start!502662 m!5830370))

(assert (=> b!4835196 m!5830368))

(assert (=> b!4835196 m!5830358))

(check-sat (not b!4835199) (not b!4835196) (not b!4835201) (not b!4835200) (not start!502662) (not b!4835197) tp_is_empty!34739 (not b!4835198))
(check-sat)
