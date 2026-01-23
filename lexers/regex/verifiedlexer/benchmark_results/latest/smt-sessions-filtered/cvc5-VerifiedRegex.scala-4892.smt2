; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!250858 () Bool)

(assert start!250858)

(declare-fun res!1089124 () Bool)

(declare-fun e!1634037 () Bool)

(assert (=> start!250858 (=> (not res!1089124) (not e!1634037))))

(declare-datatypes ((B!1987 0))(
  ( (B!1988 (val!9461 Int)) )
))
(declare-datatypes ((List!29894 0))(
  ( (Nil!29794) (Cons!29794 (h!35214 B!1987) (t!212907 List!29894)) )
))
(declare-fun l!3230 () List!29894)

(declare-fun noDuplicate!342 (List!29894) Bool)

(assert (=> start!250858 (= res!1089124 (noDuplicate!342 l!3230))))

(assert (=> start!250858 e!1634037))

(declare-fun e!1634036 () Bool)

(assert (=> start!250858 e!1634036))

(declare-fun b!2590376 () Bool)

(declare-fun res!1089125 () Bool)

(assert (=> b!2590376 (=> (not res!1089125) (not e!1634037))))

(assert (=> b!2590376 (= res!1089125 (is-Cons!29794 l!3230))))

(declare-fun b!2590377 () Bool)

(assert (=> b!2590377 (= e!1634037 (not true))))

(declare-fun size!23107 (List!29894) Int)

(declare-fun toList!1745 ((Set B!1987)) List!29894)

(declare-fun content!4135 (List!29894) (Set B!1987))

(assert (=> b!2590377 (= (size!23107 (toList!1745 (content!4135 (t!212907 l!3230)))) (size!23107 (t!212907 l!3230)))))

(declare-datatypes ((Unit!43694 0))(
  ( (Unit!43695) )
))
(declare-fun lt!910884 () Unit!43694)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!35 (List!29894) Unit!43694)

(assert (=> b!2590377 (= lt!910884 (lemmaNoDuplicateThenContentToListSameSize!35 (t!212907 l!3230)))))

(declare-fun b!2590378 () Bool)

(declare-fun tp_is_empty!13267 () Bool)

(declare-fun tp!822591 () Bool)

(assert (=> b!2590378 (= e!1634036 (and tp_is_empty!13267 tp!822591))))

(assert (= (and start!250858 res!1089124) b!2590376))

(assert (= (and b!2590376 res!1089125) b!2590377))

(assert (= (and start!250858 (is-Cons!29794 l!3230)) b!2590378))

(declare-fun m!2926461 () Bool)

(assert (=> start!250858 m!2926461))

(declare-fun m!2926463 () Bool)

(assert (=> b!2590377 m!2926463))

(declare-fun m!2926465 () Bool)

(assert (=> b!2590377 m!2926465))

(declare-fun m!2926467 () Bool)

(assert (=> b!2590377 m!2926467))

(assert (=> b!2590377 m!2926463))

(assert (=> b!2590377 m!2926465))

(declare-fun m!2926469 () Bool)

(assert (=> b!2590377 m!2926469))

(declare-fun m!2926471 () Bool)

(assert (=> b!2590377 m!2926471))

(push 1)

(assert (not start!250858))

(assert (not b!2590377))

(assert (not b!2590378))

(assert tp_is_empty!13267)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

