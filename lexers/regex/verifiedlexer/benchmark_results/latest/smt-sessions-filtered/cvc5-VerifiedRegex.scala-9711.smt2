; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508066 () Bool)

(assert start!508066)

(assert (=> start!508066 false))

(declare-fun e!3039398 () Bool)

(assert (=> start!508066 e!3039398))

(declare-fun b!4861316 () Bool)

(declare-fun tp!1367754 () Bool)

(declare-fun tp!1367755 () Bool)

(assert (=> b!4861316 (= e!3039398 (and tp!1367754 tp!1367755))))

(declare-datatypes ((V!17940 0))(
  ( (V!17941 (val!22493 Int)) )
))
(declare-datatypes ((K!17670 0))(
  ( (K!17671 (val!22494 Int)) )
))
(declare-datatypes ((tuple2!59686 0))(
  ( (tuple2!59687 (_1!33146 K!17670) (_2!33146 V!17940)) )
))
(declare-datatypes ((List!55964 0))(
  ( (Nil!55840) (Cons!55840 (h!62288 tuple2!59686) (t!363584 List!55964)) )
))
(declare-datatypes ((tuple2!59688 0))(
  ( (tuple2!59689 (_1!33147 (_ BitVec 64)) (_2!33147 List!55964)) )
))
(declare-datatypes ((List!55965 0))(
  ( (Nil!55841) (Cons!55841 (h!62289 tuple2!59688) (t!363585 List!55965)) )
))
(declare-fun l!10962 () List!55965)

(assert (= (and start!508066 (is-Cons!55841 l!10962)) b!4861316))

(push 1)

(assert (not b!4861316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

