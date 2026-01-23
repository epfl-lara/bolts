; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251534 () Bool)

(assert start!251534)

(declare-fun b!2593954 () Bool)

(assert (=> b!2593954 true))

(declare-fun b!2593950 () Bool)

(declare-fun e!1636609 () Bool)

(declare-fun tp_is_empty!13391 () Bool)

(declare-fun tp!822909 () Bool)

(assert (=> b!2593950 (= e!1636609 (and tp_is_empty!13391 tp!822909))))

(declare-fun b!2593951 () Bool)

(declare-fun res!1091192 () Bool)

(declare-fun e!1636608 () Bool)

(assert (=> b!2593951 (=> (not res!1091192) (not e!1636608))))

(declare-datatypes ((B!2111 0))(
  ( (B!2112 (val!9523 Int)) )
))
(declare-datatypes ((List!29956 0))(
  ( (Nil!29856) (Cons!29856 (h!35276 B!2111) (t!212969 List!29956)) )
))
(declare-fun l1!1546 () List!29956)

(declare-fun l2!1515 () List!29956)

(declare-fun size!23161 (List!29956) Int)

(assert (=> b!2593951 (= res!1091192 (> (size!23161 l1!1546) (size!23161 l2!1515)))))

(declare-fun b!2593952 () Bool)

(assert (=> b!2593952 (= e!1636608 false)))

(declare-fun lt!913172 () Bool)

(declare-fun contains!5404 (List!29956 B!2111) Bool)

(assert (=> b!2593952 (= lt!913172 (contains!5404 l2!1515 (h!35276 l1!1546)))))

(declare-fun b!2593953 () Bool)

(declare-fun res!1091190 () Bool)

(assert (=> b!2593953 (=> (not res!1091190) (not e!1636608))))

(assert (=> b!2593953 (= res!1091190 (is-Cons!29856 l1!1546))))

(declare-fun res!1091188 () Bool)

(assert (=> b!2593954 (=> (not res!1091188) (not e!1636608))))

(declare-fun lambda!96401 () Int)

(declare-fun forall!6093 (List!29956 Int) Bool)

(assert (=> b!2593954 (= res!1091188 (forall!6093 l2!1515 lambda!96401))))

(declare-fun b!2593955 () Bool)

(declare-fun e!1636610 () Bool)

(declare-fun tp!822910 () Bool)

(assert (=> b!2593955 (= e!1636610 (and tp_is_empty!13391 tp!822910))))

(declare-fun res!1091191 () Bool)

(assert (=> start!251534 (=> (not res!1091191) (not e!1636608))))

(declare-fun noDuplicate!404 (List!29956) Bool)

(assert (=> start!251534 (= res!1091191 (noDuplicate!404 l1!1546))))

(assert (=> start!251534 e!1636608))

(assert (=> start!251534 e!1636609))

(assert (=> start!251534 e!1636610))

(declare-fun b!2593956 () Bool)

(declare-fun res!1091189 () Bool)

(assert (=> b!2593956 (=> (not res!1091189) (not e!1636608))))

(assert (=> b!2593956 (= res!1091189 (noDuplicate!404 l2!1515))))

(assert (= (and start!251534 res!1091191) b!2593956))

(assert (= (and b!2593956 res!1091189) b!2593951))

(assert (= (and b!2593951 res!1091192) b!2593954))

(assert (= (and b!2593954 res!1091188) b!2593953))

(assert (= (and b!2593953 res!1091190) b!2593952))

(assert (= (and start!251534 (is-Cons!29856 l1!1546)) b!2593950))

(assert (= (and start!251534 (is-Cons!29856 l2!1515)) b!2593955))

(declare-fun m!2930073 () Bool)

(assert (=> b!2593956 m!2930073))

(declare-fun m!2930075 () Bool)

(assert (=> start!251534 m!2930075))

(declare-fun m!2930077 () Bool)

(assert (=> b!2593951 m!2930077))

(declare-fun m!2930079 () Bool)

(assert (=> b!2593951 m!2930079))

(declare-fun m!2930081 () Bool)

(assert (=> b!2593954 m!2930081))

(declare-fun m!2930083 () Bool)

(assert (=> b!2593952 m!2930083))

(push 1)

(assert (not b!2593955))

(assert (not b!2593954))

(assert tp_is_empty!13391)

(assert (not start!251534))

(assert (not b!2593952))

(assert (not b!2593950))

(assert (not b!2593956))

(assert (not b!2593951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

