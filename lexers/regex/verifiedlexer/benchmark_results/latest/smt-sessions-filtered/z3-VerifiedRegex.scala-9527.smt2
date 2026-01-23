; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502768 () Bool)

(assert start!502768)

(declare-fun b!4835687 () Bool)

(declare-fun res!2060324 () Bool)

(declare-fun e!3022065 () Bool)

(assert (=> b!4835687 (=> (not res!2060324) (not e!3022065))))

(declare-datatypes ((K!16924 0))(
  ( (K!16925 (val!21845 Int)) )
))
(declare-datatypes ((V!17170 0))(
  ( (V!17171 (val!21846 Int)) )
))
(declare-datatypes ((tuple2!58562 0))(
  ( (tuple2!58563 (_1!32575 K!16924) (_2!32575 V!17170)) )
))
(declare-datatypes ((List!55314 0))(
  ( (Nil!55190) (Cons!55190 (h!61625 tuple2!58562) (t!362810 List!55314)) )
))
(declare-datatypes ((tuple2!58564 0))(
  ( (tuple2!58565 (_1!32576 (_ BitVec 64)) (_2!32576 List!55314)) )
))
(declare-datatypes ((List!55315 0))(
  ( (Nil!55191) (Cons!55191 (h!61626 tuple2!58564) (t!362811 List!55315)) )
))
(declare-datatypes ((ListLongMap!6147 0))(
  ( (ListLongMap!6148 (toList!7628 List!55315)) )
))
(declare-fun lm!1282 () ListLongMap!6147)

(declare-datatypes ((Hashable!7342 0))(
  ( (HashableExt!7341 (__x!33617 Int)) )
))
(declare-fun hashF!961 () Hashable!7342)

(declare-fun allKeysSameHashInMap!2658 (ListLongMap!6147 Hashable!7342) Bool)

(assert (=> b!4835687 (= res!2060324 (allKeysSameHashInMap!2658 lm!1282 hashF!961))))

(declare-fun b!4835688 () Bool)

(declare-fun e!3022066 () Bool)

(assert (=> b!4835688 (= e!3022066 true)))

(declare-fun lambda!239359 () Int)

(declare-datatypes ((Unit!144574 0))(
  ( (Unit!144575) )
))
(declare-fun lt!1981490 () Unit!144574)

(declare-fun lt!1981493 () tuple2!58564)

(declare-fun forallContained!4461 (List!55315 Int tuple2!58564) Unit!144574)

(assert (=> b!4835688 (= lt!1981490 (forallContained!4461 (toList!7628 lm!1282) lambda!239359 lt!1981493))))

(declare-fun res!2060322 () Bool)

(assert (=> start!502768 (=> (not res!2060322) (not e!3022065))))

(declare-fun forall!12742 (List!55315 Int) Bool)

(assert (=> start!502768 (= res!2060322 (forall!12742 (toList!7628 lm!1282) lambda!239359))))

(assert (=> start!502768 e!3022065))

(declare-fun e!3022063 () Bool)

(declare-fun inv!70824 (ListLongMap!6147) Bool)

(assert (=> start!502768 (and (inv!70824 lm!1282) e!3022063)))

(assert (=> start!502768 true))

(declare-fun tp_is_empty!34783 () Bool)

(assert (=> start!502768 tp_is_empty!34783))

(declare-fun b!4835689 () Bool)

(declare-fun e!3022064 () Bool)

(assert (=> b!4835689 (= e!3022064 (not e!3022066))))

(declare-fun res!2060323 () Bool)

(assert (=> b!4835689 (=> res!2060323 e!3022066)))

(declare-fun lt!1981492 () List!55314)

(declare-fun key!2791 () K!16924)

(declare-datatypes ((Option!13576 0))(
  ( (None!13575) (Some!13575 (v!49278 tuple2!58562)) )
))
(declare-fun isDefined!10686 (Option!13576) Bool)

(declare-fun getPair!1038 (List!55314 K!16924) Option!13576)

(assert (=> b!4835689 (= res!2060323 (not (isDefined!10686 (getPair!1038 lt!1981492 key!2791))))))

(declare-fun lt!1981495 () Unit!144574)

(assert (=> b!4835689 (= lt!1981495 (forallContained!4461 (toList!7628 lm!1282) lambda!239359 lt!1981493))))

(declare-fun contains!19012 (List!55315 tuple2!58564) Bool)

(assert (=> b!4835689 (contains!19012 (toList!7628 lm!1282) lt!1981493)))

(declare-fun lt!1981494 () (_ BitVec 64))

(assert (=> b!4835689 (= lt!1981493 (tuple2!58565 lt!1981494 lt!1981492))))

(declare-fun lt!1981491 () Unit!144574)

(declare-fun lemmaGetValueImpliesTupleContained!717 (ListLongMap!6147 (_ BitVec 64) List!55314) Unit!144574)

(assert (=> b!4835689 (= lt!1981491 (lemmaGetValueImpliesTupleContained!717 lm!1282 lt!1981494 lt!1981492))))

(declare-fun apply!13405 (ListLongMap!6147 (_ BitVec 64)) List!55314)

(assert (=> b!4835689 (= lt!1981492 (apply!13405 lm!1282 lt!1981494))))

(declare-fun b!4835690 () Bool)

(declare-fun res!2060321 () Bool)

(assert (=> b!4835690 (=> res!2060321 e!3022066)))

(assert (=> b!4835690 (= res!2060321 (not (forall!12742 (toList!7628 lm!1282) lambda!239359)))))

(declare-fun b!4835691 () Bool)

(declare-fun tp!1363380 () Bool)

(assert (=> b!4835691 (= e!3022063 tp!1363380)))

(declare-fun b!4835692 () Bool)

(assert (=> b!4835692 (= e!3022065 e!3022064)))

(declare-fun res!2060320 () Bool)

(assert (=> b!4835692 (=> (not res!2060320) (not e!3022064))))

(declare-fun contains!19013 (ListLongMap!6147 (_ BitVec 64)) Bool)

(assert (=> b!4835692 (= res!2060320 (contains!19013 lm!1282 lt!1981494))))

(declare-fun hash!5530 (Hashable!7342 K!16924) (_ BitVec 64))

(assert (=> b!4835692 (= lt!1981494 (hash!5530 hashF!961 key!2791))))

(assert (= (and start!502768 res!2060322) b!4835687))

(assert (= (and b!4835687 res!2060324) b!4835692))

(assert (= (and b!4835692 res!2060320) b!4835689))

(assert (= (and b!4835689 (not res!2060323)) b!4835690))

(assert (= (and b!4835690 (not res!2060321)) b!4835688))

(assert (= start!502768 b!4835691))

(declare-fun m!5830920 () Bool)

(assert (=> b!4835690 m!5830920))

(declare-fun m!5830922 () Bool)

(assert (=> b!4835689 m!5830922))

(declare-fun m!5830924 () Bool)

(assert (=> b!4835689 m!5830924))

(declare-fun m!5830926 () Bool)

(assert (=> b!4835689 m!5830926))

(declare-fun m!5830928 () Bool)

(assert (=> b!4835689 m!5830928))

(declare-fun m!5830930 () Bool)

(assert (=> b!4835689 m!5830930))

(declare-fun m!5830932 () Bool)

(assert (=> b!4835689 m!5830932))

(assert (=> b!4835689 m!5830930))

(assert (=> b!4835688 m!5830928))

(declare-fun m!5830934 () Bool)

(assert (=> b!4835687 m!5830934))

(declare-fun m!5830936 () Bool)

(assert (=> b!4835692 m!5830936))

(declare-fun m!5830938 () Bool)

(assert (=> b!4835692 m!5830938))

(assert (=> start!502768 m!5830920))

(declare-fun m!5830940 () Bool)

(assert (=> start!502768 m!5830940))

(check-sat (not b!4835691) tp_is_empty!34783 (not b!4835692) (not b!4835688) (not start!502768) (not b!4835689) (not b!4835687) (not b!4835690))
(check-sat)
