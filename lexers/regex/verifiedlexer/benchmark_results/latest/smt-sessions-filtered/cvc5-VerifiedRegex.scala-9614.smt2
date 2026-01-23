; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!505422 () Bool)

(assert start!505422)

(declare-fun b!4848474 () Bool)

(declare-fun e!3030617 () Bool)

(declare-fun e!3030620 () Bool)

(assert (=> b!4848474 (= e!3030617 (not e!3030620))))

(declare-fun res!2068860 () Bool)

(assert (=> b!4848474 (=> res!2068860 e!3030620)))

(declare-datatypes ((K!17357 0))(
  ( (K!17358 (val!22191 Int)) )
))
(declare-datatypes ((V!17603 0))(
  ( (V!17604 (val!22192 Int)) )
))
(declare-datatypes ((tuple2!59254 0))(
  ( (tuple2!59255 (_1!32921 K!17357) (_2!32921 V!17603)) )
))
(declare-datatypes ((List!55684 0))(
  ( (Nil!55560) (Cons!55560 (h!61997 tuple2!59254) (t!363180 List!55684)) )
))
(declare-fun lt!1989001 () List!55684)

(declare-fun key!6445 () K!17357)

(declare-datatypes ((Option!13674 0))(
  ( (None!13673) (Some!13673 (v!49441 tuple2!59254)) )
))
(declare-fun isDefined!10766 (Option!13674) Bool)

(declare-fun getPair!1091 (List!55684 K!17357) Option!13674)

(assert (=> b!4848474 (= res!2068860 (not (isDefined!10766 (getPair!1091 lt!1989001 key!6445))))))

(declare-datatypes ((Unit!145698 0))(
  ( (Unit!145699) )
))
(declare-fun lt!1988999 () Unit!145698)

(declare-datatypes ((tuple2!59256 0))(
  ( (tuple2!59257 (_1!32922 (_ BitVec 64)) (_2!32922 List!55684)) )
))
(declare-datatypes ((List!55685 0))(
  ( (Nil!55561) (Cons!55561 (h!61998 tuple2!59256) (t!363181 List!55685)) )
))
(declare-datatypes ((ListLongMap!6465 0))(
  ( (ListLongMap!6466 (toList!7861 List!55685)) )
))
(declare-fun lm!2646 () ListLongMap!6465)

(declare-fun lambda!242565 () Int)

(declare-fun lt!1989002 () tuple2!59256)

(declare-fun forallContained!4542 (List!55685 Int tuple2!59256) Unit!145698)

(assert (=> b!4848474 (= lt!1988999 (forallContained!4542 (toList!7861 lm!2646) lambda!242565 lt!1989002))))

(declare-fun contains!19217 (List!55685 tuple2!59256) Bool)

(assert (=> b!4848474 (contains!19217 (toList!7861 lm!2646) lt!1989002)))

(declare-fun lt!1989000 () (_ BitVec 64))

(assert (=> b!4848474 (= lt!1989002 (tuple2!59257 lt!1989000 lt!1989001))))

(declare-fun lt!1989003 () Unit!145698)

(declare-fun lemmaGetValueImpliesTupleContained!768 (ListLongMap!6465 (_ BitVec 64) List!55684) Unit!145698)

(assert (=> b!4848474 (= lt!1989003 (lemmaGetValueImpliesTupleContained!768 lm!2646 lt!1989000 lt!1989001))))

(declare-fun apply!13444 (ListLongMap!6465 (_ BitVec 64)) List!55684)

(assert (=> b!4848474 (= lt!1989001 (apply!13444 lm!2646 lt!1989000))))

(declare-fun b!4848475 () Bool)

(assert (=> b!4848475 (= e!3030620 (not (= (_1!32922 (h!61998 (toList!7861 lm!2646))) lt!1989000)))))

(declare-fun b!4848476 () Bool)

(declare-fun res!2068858 () Bool)

(assert (=> b!4848476 (=> res!2068858 e!3030620)))

(declare-fun forall!12954 (List!55685 Int) Bool)

(assert (=> b!4848476 (= res!2068858 (not (forall!12954 (toList!7861 lm!2646) lambda!242565)))))

(declare-fun res!2068862 () Bool)

(declare-fun e!3030619 () Bool)

(assert (=> start!505422 (=> (not res!2068862) (not e!3030619))))

(assert (=> start!505422 (= res!2068862 (forall!12954 (toList!7861 lm!2646) lambda!242565))))

(assert (=> start!505422 e!3030619))

(declare-fun e!3030618 () Bool)

(declare-fun inv!71244 (ListLongMap!6465) Bool)

(assert (=> start!505422 (and (inv!71244 lm!2646) e!3030618)))

(assert (=> start!505422 true))

(declare-fun tp_is_empty!35193 () Bool)

(assert (=> start!505422 tp_is_empty!35193))

(declare-fun b!4848477 () Bool)

(declare-fun tp!1364671 () Bool)

(assert (=> b!4848477 (= e!3030618 tp!1364671)))

(declare-fun b!4848478 () Bool)

(declare-fun res!2068861 () Bool)

(assert (=> b!4848478 (=> (not res!2068861) (not e!3030619))))

(declare-datatypes ((Hashable!7501 0))(
  ( (HashableExt!7500 (__x!33776 Int)) )
))
(declare-fun hashF!1641 () Hashable!7501)

(declare-fun allKeysSameHashInMap!2817 (ListLongMap!6465 Hashable!7501) Bool)

(assert (=> b!4848478 (= res!2068861 (allKeysSameHashInMap!2817 lm!2646 hashF!1641))))

(declare-fun b!4848479 () Bool)

(assert (=> b!4848479 (= e!3030619 e!3030617)))

(declare-fun res!2068864 () Bool)

(assert (=> b!4848479 (=> (not res!2068864) (not e!3030617))))

(declare-fun contains!19218 (ListLongMap!6465 (_ BitVec 64)) Bool)

(assert (=> b!4848479 (= res!2068864 (contains!19218 lm!2646 lt!1989000))))

(declare-fun hash!5591 (Hashable!7501 K!17357) (_ BitVec 64))

(assert (=> b!4848479 (= lt!1989000 (hash!5591 hashF!1641 key!6445))))

(declare-fun b!4848480 () Bool)

(declare-fun res!2068859 () Bool)

(assert (=> b!4848480 (=> res!2068859 e!3030620)))

(assert (=> b!4848480 (= res!2068859 (not (contains!19218 lm!2646 (_1!32922 (h!61998 (toList!7861 lm!2646))))))))

(declare-fun b!4848481 () Bool)

(declare-fun res!2068863 () Bool)

(assert (=> b!4848481 (=> res!2068863 e!3030620)))

(assert (=> b!4848481 (= res!2068863 (or (and (is-Cons!55561 (toList!7861 lm!2646)) (= (_1!32922 (h!61998 (toList!7861 lm!2646))) lt!1989000)) (not (is-Cons!55561 (toList!7861 lm!2646))) (= lt!1989000 (_1!32922 (h!61998 (toList!7861 lm!2646))))))))

(assert (= (and start!505422 res!2068862) b!4848478))

(assert (= (and b!4848478 res!2068861) b!4848479))

(assert (= (and b!4848479 res!2068864) b!4848474))

(assert (= (and b!4848474 (not res!2068860)) b!4848481))

(assert (= (and b!4848481 (not res!2068863)) b!4848476))

(assert (= (and b!4848476 (not res!2068858)) b!4848480))

(assert (= (and b!4848480 (not res!2068859)) b!4848475))

(assert (= start!505422 b!4848477))

(declare-fun m!5846536 () Bool)

(assert (=> b!4848476 m!5846536))

(declare-fun m!5846538 () Bool)

(assert (=> b!4848478 m!5846538))

(declare-fun m!5846540 () Bool)

(assert (=> b!4848479 m!5846540))

(declare-fun m!5846542 () Bool)

(assert (=> b!4848479 m!5846542))

(assert (=> start!505422 m!5846536))

(declare-fun m!5846544 () Bool)

(assert (=> start!505422 m!5846544))

(declare-fun m!5846546 () Bool)

(assert (=> b!4848474 m!5846546))

(declare-fun m!5846548 () Bool)

(assert (=> b!4848474 m!5846548))

(declare-fun m!5846550 () Bool)

(assert (=> b!4848474 m!5846550))

(declare-fun m!5846552 () Bool)

(assert (=> b!4848474 m!5846552))

(declare-fun m!5846554 () Bool)

(assert (=> b!4848474 m!5846554))

(declare-fun m!5846556 () Bool)

(assert (=> b!4848474 m!5846556))

(assert (=> b!4848474 m!5846548))

(declare-fun m!5846558 () Bool)

(assert (=> b!4848480 m!5846558))

(push 1)

(assert (not b!4848476))

(assert (not b!4848474))

(assert (not start!505422))

(assert (not b!4848477))

(assert (not b!4848480))

(assert (not b!4848479))

(assert tp_is_empty!35193)

(assert (not b!4848478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

