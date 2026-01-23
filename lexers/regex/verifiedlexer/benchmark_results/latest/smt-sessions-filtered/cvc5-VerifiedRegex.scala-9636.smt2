; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506426 () Bool)

(assert start!506426)

(declare-fun lt!1990145 () Bool)

(declare-fun e!3033339 () Bool)

(assert (=> start!506426 (= lt!1990145 e!3033339)))

(declare-fun res!2071234 () Bool)

(assert (=> start!506426 (=> res!2071234 e!3033339)))

(declare-datatypes ((K!17467 0))(
  ( (K!17468 (val!22279 Int)) )
))
(declare-datatypes ((V!17713 0))(
  ( (V!17714 (val!22280 Int)) )
))
(declare-datatypes ((tuple2!59394 0))(
  ( (tuple2!59395 (_1!32991 K!17467) (_2!32991 V!17713)) )
))
(declare-datatypes ((List!55754 0))(
  ( (Nil!55630) (Cons!55630 (h!62067 tuple2!59394) (t!363250 List!55754)) )
))
(declare-datatypes ((tuple2!59396 0))(
  ( (tuple2!59397 (_1!32992 (_ BitVec 64)) (_2!32992 List!55754)) )
))
(declare-datatypes ((List!55755 0))(
  ( (Nil!55631) (Cons!55631 (h!62068 tuple2!59396) (t!363251 List!55755)) )
))
(declare-fun l!11074 () List!55755)

(assert (=> start!506426 (= res!2071234 (not (is-Cons!55631 l!11074)))))

(assert (=> start!506426 false))

(declare-fun e!3033340 () Bool)

(assert (=> start!506426 e!3033340))

(declare-fun tp_is_empty!35349 () Bool)

(assert (=> start!506426 tp_is_empty!35349))

(declare-fun b!4852210 () Bool)

(declare-fun key!2502 () K!17467)

(declare-fun containsKey!4733 (List!55754 K!17467) Bool)

(assert (=> b!4852210 (= e!3033339 (not (containsKey!4733 (_2!32992 (h!62068 l!11074)) key!2502)))))

(declare-fun b!4852211 () Bool)

(declare-fun tp!1365041 () Bool)

(declare-fun tp!1365042 () Bool)

(assert (=> b!4852211 (= e!3033340 (and tp!1365041 tp!1365042))))

(assert (= (and start!506426 (not res!2071234)) b!4852210))

(assert (= (and start!506426 (is-Cons!55631 l!11074)) b!4852211))

(declare-fun m!5850436 () Bool)

(assert (=> b!4852210 m!5850436))

(push 1)

(assert (not b!4852210))

(assert (not b!4852211))

(assert tp_is_empty!35349)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

