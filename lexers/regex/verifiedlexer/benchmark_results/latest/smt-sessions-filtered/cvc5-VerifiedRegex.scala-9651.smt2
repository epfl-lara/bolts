; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506840 () Bool)

(assert start!506840)

(declare-fun b!4853565 () Bool)

(declare-fun e!3034177 () Bool)

(declare-datatypes ((K!17542 0))(
  ( (K!17543 (val!22339 Int)) )
))
(declare-datatypes ((V!17788 0))(
  ( (V!17789 (val!22340 Int)) )
))
(declare-datatypes ((tuple2!59510 0))(
  ( (tuple2!59511 (_1!33049 K!17542) (_2!33049 V!17788)) )
))
(declare-datatypes ((List!55812 0))(
  ( (Nil!55688) (Cons!55688 (h!62136 tuple2!59510) (t!363308 List!55812)) )
))
(declare-fun l!11080 () List!55812)

(declare-fun key!2508 () K!17542)

(declare-fun containsKey!4763 (List!55812 K!17542) Bool)

(assert (=> b!4853565 (= e!3034177 (containsKey!4763 l!11080 key!2508))))

(declare-fun b!4853564 () Bool)

(declare-fun e!3034178 () Bool)

(assert (=> b!4853564 (= e!3034178 false)))

(declare-fun lt!1990747 () Bool)

(assert (=> b!4853564 (= lt!1990747 e!3034177)))

(declare-fun res!2072120 () Bool)

(assert (=> b!4853564 (=> res!2072120 e!3034177)))

(declare-datatypes ((Option!13749 0))(
  ( (None!13748) (Some!13748 (v!49558 tuple2!59510)) )
))
(declare-fun isEmpty!29781 (Option!13749) Bool)

(declare-fun getPair!1139 (List!55812 K!17542) Option!13749)

(assert (=> b!4853564 (= res!2072120 (not (isEmpty!29781 (getPair!1139 (t!363308 l!11080) key!2508))))))

(declare-fun b!4853563 () Bool)

(declare-fun res!2072121 () Bool)

(assert (=> b!4853563 (=> (not res!2072121) (not e!3034178))))

(assert (=> b!4853563 (= res!2072121 (and (or (not (is-Cons!55688 l!11080)) (not (= (_1!33049 (h!62136 l!11080)) key!2508))) (is-Cons!55688 l!11080)))))

(declare-fun res!2072119 () Bool)

(assert (=> start!506840 (=> (not res!2072119) (not e!3034178))))

(declare-fun noDuplicateKeys!2637 (List!55812) Bool)

(assert (=> start!506840 (= res!2072119 (noDuplicateKeys!2637 l!11080))))

(assert (=> start!506840 e!3034178))

(declare-fun e!3034176 () Bool)

(assert (=> start!506840 e!3034176))

(declare-fun tp_is_empty!35413 () Bool)

(assert (=> start!506840 tp_is_empty!35413))

(declare-fun tp_is_empty!35415 () Bool)

(declare-fun b!4853566 () Bool)

(declare-fun tp!1365233 () Bool)

(assert (=> b!4853566 (= e!3034176 (and tp_is_empty!35413 tp_is_empty!35415 tp!1365233))))

(assert (= (and start!506840 res!2072119) b!4853563))

(assert (= (and b!4853563 res!2072121) b!4853564))

(assert (= (and b!4853564 (not res!2072120)) b!4853565))

(assert (= (and start!506840 (is-Cons!55688 l!11080)) b!4853566))

(declare-fun m!5851804 () Bool)

(assert (=> b!4853565 m!5851804))

(declare-fun m!5851806 () Bool)

(assert (=> b!4853564 m!5851806))

(assert (=> b!4853564 m!5851806))

(declare-fun m!5851808 () Bool)

(assert (=> b!4853564 m!5851808))

(declare-fun m!5851810 () Bool)

(assert (=> start!506840 m!5851810))

(push 1)

(assert (not start!506840))

(assert tp_is_empty!35415)

(assert (not b!4853564))

(assert (not b!4853565))

(assert tp_is_empty!35413)

(assert (not b!4853566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

