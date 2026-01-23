; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499824 () Bool)

(assert start!499824)

(declare-fun b!4821988 () Bool)

(declare-fun res!2052335 () Bool)

(declare-fun e!3012816 () Bool)

(assert (=> b!4821988 (=> (not res!2052335) (not e!3012816))))

(declare-datatypes ((V!16863 0))(
  ( (V!16864 (val!21599 Int)) )
))
(declare-datatypes ((K!16617 0))(
  ( (K!16618 (val!21600 Int)) )
))
(declare-datatypes ((tuple2!58134 0))(
  ( (tuple2!58135 (_1!32361 K!16617) (_2!32361 V!16863)) )
))
(declare-datatypes ((List!55056 0))(
  ( (Nil!54932) (Cons!54932 (h!61366 tuple2!58134) (t!362552 List!55056)) )
))
(declare-datatypes ((tuple2!58136 0))(
  ( (tuple2!58137 (_1!32362 (_ BitVec 64)) (_2!32362 List!55056)) )
))
(declare-datatypes ((List!55057 0))(
  ( (Nil!54933) (Cons!54933 (h!61367 tuple2!58136) (t!362553 List!55057)) )
))
(declare-datatypes ((ListLongMap!5965 0))(
  ( (ListLongMap!5966 (toList!7451 List!55057)) )
))
(declare-fun lm!2280 () ListLongMap!5965)

(declare-fun lt!1970261 () (_ BitVec 64))

(assert (=> b!4821988 (= res!2052335 (and (or (not (is-Cons!54933 (toList!7451 lm!2280))) (not (= (_1!32362 (h!61367 (toList!7451 lm!2280))) lt!1970261))) (is-Cons!54933 (toList!7451 lm!2280)) (not (= (_1!32362 (h!61367 (toList!7451 lm!2280))) lt!1970261))))))

(declare-fun b!4821989 () Bool)

(declare-fun res!2052338 () Bool)

(assert (=> b!4821989 (=> (not res!2052338) (not e!3012816))))

(declare-fun lambda!235735 () Int)

(declare-fun forall!12573 (List!55057 Int) Bool)

(assert (=> b!4821989 (= res!2052338 (forall!12573 (toList!7451 lm!2280) lambda!235735))))

(declare-fun b!4821990 () Bool)

(declare-fun e!3012817 () Bool)

(assert (=> b!4821990 (= e!3012817 e!3012816)))

(declare-fun res!2052334 () Bool)

(assert (=> b!4821990 (=> (not res!2052334) (not e!3012816))))

(declare-fun contains!18734 (ListLongMap!5965 (_ BitVec 64)) Bool)

(assert (=> b!4821990 (= res!2052334 (contains!18734 lm!2280 lt!1970261))))

(declare-datatypes ((Hashable!7251 0))(
  ( (HashableExt!7250 (__x!33526 Int)) )
))
(declare-fun hashF!1509 () Hashable!7251)

(declare-fun key!5428 () K!16617)

(declare-fun hash!5352 (Hashable!7251 K!16617) (_ BitVec 64))

(assert (=> b!4821990 (= lt!1970261 (hash!5352 hashF!1509 key!5428))))

(declare-fun b!4821991 () Bool)

(declare-fun e!3012818 () Bool)

(declare-fun tp!1362419 () Bool)

(assert (=> b!4821991 (= e!3012818 tp!1362419)))

(declare-fun b!4821992 () Bool)

(declare-fun res!2052336 () Bool)

(assert (=> b!4821992 (=> (not res!2052336) (not e!3012817))))

(declare-fun allKeysSameHashInMap!2567 (ListLongMap!5965 Hashable!7251) Bool)

(assert (=> b!4821992 (= res!2052336 (allKeysSameHashInMap!2567 lm!2280 hashF!1509))))

(declare-fun res!2052339 () Bool)

(assert (=> start!499824 (=> (not res!2052339) (not e!3012817))))

(assert (=> start!499824 (= res!2052339 (forall!12573 (toList!7451 lm!2280) lambda!235735))))

(assert (=> start!499824 e!3012817))

(declare-fun inv!70518 (ListLongMap!5965) Bool)

(assert (=> start!499824 (and (inv!70518 lm!2280) e!3012818)))

(assert (=> start!499824 true))

(declare-fun tp_is_empty!34409 () Bool)

(assert (=> start!499824 tp_is_empty!34409))

(declare-fun b!4821993 () Bool)

(declare-fun res!2052337 () Bool)

(assert (=> b!4821993 (=> (not res!2052337) (not e!3012816))))

(declare-fun containsKey!4335 (List!55056 K!16617) Bool)

(declare-fun apply!13338 (ListLongMap!5965 (_ BitVec 64)) List!55056)

(assert (=> b!4821993 (= res!2052337 (not (containsKey!4335 (apply!13338 lm!2280 lt!1970261) key!5428)))))

(declare-fun b!4821994 () Bool)

(assert (=> b!4821994 (= e!3012816 false)))

(declare-fun lt!1970262 () Bool)

(assert (=> b!4821994 (= lt!1970262 (contains!18734 lm!2280 (_1!32362 (h!61367 (toList!7451 lm!2280)))))))

(assert (= (and start!499824 res!2052339) b!4821992))

(assert (= (and b!4821992 res!2052336) b!4821990))

(assert (= (and b!4821990 res!2052334) b!4821993))

(assert (= (and b!4821993 res!2052337) b!4821988))

(assert (= (and b!4821988 res!2052335) b!4821989))

(assert (= (and b!4821989 res!2052338) b!4821994))

(assert (= start!499824 b!4821991))

(declare-fun m!5810124 () Bool)

(assert (=> b!4821994 m!5810124))

(declare-fun m!5810126 () Bool)

(assert (=> b!4821990 m!5810126))

(declare-fun m!5810128 () Bool)

(assert (=> b!4821990 m!5810128))

(declare-fun m!5810130 () Bool)

(assert (=> b!4821989 m!5810130))

(declare-fun m!5810132 () Bool)

(assert (=> b!4821993 m!5810132))

(assert (=> b!4821993 m!5810132))

(declare-fun m!5810134 () Bool)

(assert (=> b!4821993 m!5810134))

(declare-fun m!5810136 () Bool)

(assert (=> b!4821992 m!5810136))

(assert (=> start!499824 m!5810130))

(declare-fun m!5810138 () Bool)

(assert (=> start!499824 m!5810138))

(push 1)

(assert (not b!4821992))

(assert tp_is_empty!34409)

(assert (not b!4821993))

(assert (not b!4821990))

(assert (not b!4821989))

(assert (not b!4821991))

(assert (not b!4821994))

(assert (not start!499824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

