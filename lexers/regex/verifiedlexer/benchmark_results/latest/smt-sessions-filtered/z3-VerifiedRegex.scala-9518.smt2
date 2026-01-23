; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502666 () Bool)

(assert start!502666)

(declare-fun res!2060000 () Bool)

(declare-fun e!3021715 () Bool)

(assert (=> start!502666 (=> (not res!2060000) (not e!3021715))))

(declare-datatypes ((K!16879 0))(
  ( (K!16880 (val!21809 Int)) )
))
(declare-datatypes ((V!17125 0))(
  ( (V!17126 (val!21810 Int)) )
))
(declare-datatypes ((tuple2!58490 0))(
  ( (tuple2!58491 (_1!32539 K!16879) (_2!32539 V!17125)) )
))
(declare-datatypes ((List!55278 0))(
  ( (Nil!55154) (Cons!55154 (h!61588 tuple2!58490) (t!362774 List!55278)) )
))
(declare-datatypes ((tuple2!58492 0))(
  ( (tuple2!58493 (_1!32540 (_ BitVec 64)) (_2!32540 List!55278)) )
))
(declare-datatypes ((List!55279 0))(
  ( (Nil!55155) (Cons!55155 (h!61589 tuple2!58492) (t!362775 List!55279)) )
))
(declare-datatypes ((ListLongMap!6111 0))(
  ( (ListLongMap!6112 (toList!7608 List!55279)) )
))
(declare-fun lm!1282 () ListLongMap!6111)

(declare-fun lambda!239224 () Int)

(declare-fun forall!12723 (List!55279 Int) Bool)

(assert (=> start!502666 (= res!2060000 (forall!12723 (toList!7608 lm!1282) lambda!239224))))

(assert (=> start!502666 e!3021715))

(declare-fun e!3021716 () Bool)

(declare-fun inv!70779 (ListLongMap!6111) Bool)

(assert (=> start!502666 (and (inv!70779 lm!1282) e!3021716)))

(assert (=> start!502666 true))

(declare-fun tp_is_empty!34743 () Bool)

(assert (=> start!502666 tp_is_empty!34743))

(declare-fun b!4835232 () Bool)

(declare-fun e!3021714 () Bool)

(declare-fun e!3021717 () Bool)

(assert (=> b!4835232 (= e!3021714 (not e!3021717))))

(declare-fun res!2059999 () Bool)

(assert (=> b!4835232 (=> res!2059999 e!3021717)))

(declare-fun lt!1981195 () List!55278)

(declare-fun key!2791 () K!16879)

(declare-datatypes ((Option!13560 0))(
  ( (None!13559) (Some!13559 (v!49262 tuple2!58490)) )
))
(declare-fun isDefined!10670 (Option!13560) Bool)

(declare-fun getPair!1024 (List!55278 K!16879) Option!13560)

(assert (=> b!4835232 (= res!2059999 (not (isDefined!10670 (getPair!1024 lt!1981195 key!2791))))))

(declare-fun lt!1981192 () tuple2!58492)

(declare-datatypes ((Unit!144540 0))(
  ( (Unit!144541) )
))
(declare-fun lt!1981191 () Unit!144540)

(declare-fun forallContained!4447 (List!55279 Int tuple2!58492) Unit!144540)

(assert (=> b!4835232 (= lt!1981191 (forallContained!4447 (toList!7608 lm!1282) lambda!239224 lt!1981192))))

(declare-fun contains!18978 (List!55279 tuple2!58492) Bool)

(assert (=> b!4835232 (contains!18978 (toList!7608 lm!1282) lt!1981192)))

(declare-fun lt!1981190 () (_ BitVec 64))

(assert (=> b!4835232 (= lt!1981192 (tuple2!58493 lt!1981190 lt!1981195))))

(declare-fun lt!1981194 () Unit!144540)

(declare-fun lemmaGetValueImpliesTupleContained!703 (ListLongMap!6111 (_ BitVec 64) List!55278) Unit!144540)

(assert (=> b!4835232 (= lt!1981194 (lemmaGetValueImpliesTupleContained!703 lm!1282 lt!1981190 lt!1981195))))

(declare-fun apply!13387 (ListLongMap!6111 (_ BitVec 64)) List!55278)

(assert (=> b!4835232 (= lt!1981195 (apply!13387 lm!1282 lt!1981190))))

(declare-fun b!4835233 () Bool)

(declare-fun res!2059997 () Bool)

(assert (=> b!4835233 (=> res!2059997 e!3021717)))

(assert (=> b!4835233 (= res!2059997 (not (forall!12723 (toList!7608 lm!1282) lambda!239224)))))

(declare-fun b!4835234 () Bool)

(declare-fun tp!1363300 () Bool)

(assert (=> b!4835234 (= e!3021716 tp!1363300)))

(declare-fun b!4835235 () Bool)

(declare-fun res!2059998 () Bool)

(assert (=> b!4835235 (=> (not res!2059998) (not e!3021715))))

(declare-datatypes ((Hashable!7324 0))(
  ( (HashableExt!7323 (__x!33599 Int)) )
))
(declare-fun hashF!961 () Hashable!7324)

(declare-fun allKeysSameHashInMap!2640 (ListLongMap!6111 Hashable!7324) Bool)

(assert (=> b!4835235 (= res!2059998 (allKeysSameHashInMap!2640 lm!1282 hashF!961))))

(declare-fun b!4835236 () Bool)

(assert (=> b!4835236 (= e!3021715 e!3021714)))

(declare-fun res!2060001 () Bool)

(assert (=> b!4835236 (=> (not res!2060001) (not e!3021714))))

(declare-fun contains!18979 (ListLongMap!6111 (_ BitVec 64)) Bool)

(assert (=> b!4835236 (= res!2060001 (contains!18979 lm!1282 lt!1981190))))

(declare-fun hash!5510 (Hashable!7324 K!16879) (_ BitVec 64))

(assert (=> b!4835236 (= lt!1981190 (hash!5510 hashF!961 key!2791))))

(declare-fun b!4835237 () Bool)

(assert (=> b!4835237 (= e!3021717 true)))

(declare-fun lt!1981193 () Unit!144540)

(assert (=> b!4835237 (= lt!1981193 (forallContained!4447 (toList!7608 lm!1282) lambda!239224 lt!1981192))))

(assert (= (and start!502666 res!2060000) b!4835235))

(assert (= (and b!4835235 res!2059998) b!4835236))

(assert (= (and b!4835236 res!2060001) b!4835232))

(assert (= (and b!4835232 (not res!2059999)) b!4835233))

(assert (= (and b!4835233 (not res!2059997)) b!4835237))

(assert (= start!502666 b!4835234))

(declare-fun m!5830394 () Bool)

(assert (=> b!4835236 m!5830394))

(declare-fun m!5830396 () Bool)

(assert (=> b!4835236 m!5830396))

(declare-fun m!5830398 () Bool)

(assert (=> b!4835233 m!5830398))

(assert (=> start!502666 m!5830398))

(declare-fun m!5830400 () Bool)

(assert (=> start!502666 m!5830400))

(declare-fun m!5830402 () Bool)

(assert (=> b!4835235 m!5830402))

(declare-fun m!5830404 () Bool)

(assert (=> b!4835237 m!5830404))

(declare-fun m!5830406 () Bool)

(assert (=> b!4835232 m!5830406))

(declare-fun m!5830408 () Bool)

(assert (=> b!4835232 m!5830408))

(declare-fun m!5830410 () Bool)

(assert (=> b!4835232 m!5830410))

(declare-fun m!5830412 () Bool)

(assert (=> b!4835232 m!5830412))

(assert (=> b!4835232 m!5830404))

(declare-fun m!5830414 () Bool)

(assert (=> b!4835232 m!5830414))

(assert (=> b!4835232 m!5830410))

(check-sat (not start!502666) tp_is_empty!34743 (not b!4835232) (not b!4835237) (not b!4835235) (not b!4835233) (not b!4835236) (not b!4835234))
(check-sat)
