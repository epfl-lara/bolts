; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145334 () Bool)

(assert start!145334)

(declare-fun res!697240 () Bool)

(declare-fun e!1004469 () Bool)

(assert (=> start!145334 (=> (not res!697240) (not e!1004469))))

(declare-datatypes ((B!1431 0))(
  ( (B!1432 (val!4979 Int)) )
))
(declare-datatypes ((List!17046 0))(
  ( (Nil!16976) (Cons!16976 (h!22377 B!1431) (t!141625 List!17046)) )
))
(declare-fun l!3627 () List!17046)

(declare-fun noDuplicate!239 (List!17046) Bool)

(assert (=> start!145334 (= res!697240 (noDuplicate!239 l!3627))))

(assert (=> start!145334 e!1004469))

(declare-fun e!1004470 () Bool)

(assert (=> start!145334 e!1004470))

(declare-fun tp_is_empty!7127 () Bool)

(assert (=> start!145334 tp_is_empty!7127))

(declare-fun b!1564078 () Bool)

(assert (=> b!1564078 (= e!1004469 false)))

(declare-fun lt!541517 () Bool)

(declare-fun elmt!170 () B!1431)

(declare-fun contains!2997 (List!17046 B!1431) Bool)

(assert (=> b!1564078 (= lt!541517 (contains!2997 l!3627 elmt!170))))

(declare-fun b!1564079 () Bool)

(declare-fun tp!460625 () Bool)

(assert (=> b!1564079 (= e!1004470 (and tp_is_empty!7127 tp!460625))))

(assert (= (and start!145334 res!697240) b!1564078))

(assert (= (and start!145334 (is-Cons!16976 l!3627)) b!1564079))

(declare-fun m!1835519 () Bool)

(assert (=> start!145334 m!1835519))

(declare-fun m!1835521 () Bool)

(assert (=> b!1564078 m!1835521))

(push 1)

(assert (not b!1564078))

(assert (not start!145334))

(assert (not b!1564079))

(assert tp_is_empty!7127)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

