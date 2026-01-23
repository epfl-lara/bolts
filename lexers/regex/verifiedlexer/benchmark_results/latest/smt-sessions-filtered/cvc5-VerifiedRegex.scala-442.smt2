; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13104 () Bool)

(assert start!13104)

(declare-fun b!127665 () Bool)

(declare-fun res!58917 () Bool)

(declare-fun e!73334 () Bool)

(assert (=> b!127665 (=> (not res!58917) (not e!73334))))

(declare-datatypes ((B!623 0))(
  ( (B!624 (val!775 Int)) )
))
(declare-datatypes ((List!2106 0))(
  ( (Nil!2100) (Cons!2100 (h!7497 B!623) (t!22682 List!2106)) )
))
(declare-fun p!1997 () List!2106)

(assert (=> b!127665 (= res!58917 (is-Cons!2100 p!1997))))

(declare-fun res!58918 () Bool)

(assert (=> start!13104 (=> (not res!58918) (not e!73334))))

(declare-fun s!1511 () List!2106)

(declare-fun l!3367 () List!2106)

(declare-fun ++!397 (List!2106 List!2106) List!2106)

(assert (=> start!13104 (= res!58918 (= (++!397 p!1997 s!1511) l!3367))))

(assert (=> start!13104 e!73334))

(declare-fun e!73332 () Bool)

(assert (=> start!13104 e!73332))

(declare-fun e!73333 () Bool)

(assert (=> start!13104 e!73333))

(declare-fun e!73335 () Bool)

(assert (=> start!13104 e!73335))

(declare-fun b!127666 () Bool)

(declare-fun res!58919 () Bool)

(assert (=> b!127666 (=> (not res!58919) (not e!73334))))

(declare-fun isEmpty!832 (List!2106) Bool)

(assert (=> b!127666 (= res!58919 (not (isEmpty!832 s!1511)))))

(declare-fun b!127667 () Bool)

(declare-fun tp_is_empty!1231 () Bool)

(declare-fun tp!69672 () Bool)

(assert (=> b!127667 (= e!73335 (and tp_is_empty!1231 tp!69672))))

(declare-fun b!127668 () Bool)

(declare-fun tp!69674 () Bool)

(assert (=> b!127668 (= e!73333 (and tp_is_empty!1231 tp!69674))))

(declare-fun b!127669 () Bool)

(assert (=> b!127669 (= e!73334 false)))

(declare-fun lt!38248 () List!2106)

(assert (=> b!127669 (= lt!38248 (++!397 (t!22682 p!1997) s!1511))))

(declare-fun b!127670 () Bool)

(declare-fun tp!69673 () Bool)

(assert (=> b!127670 (= e!73332 (and tp_is_empty!1231 tp!69673))))

(assert (= (and start!13104 res!58918) b!127666))

(assert (= (and b!127666 res!58919) b!127665))

(assert (= (and b!127665 res!58917) b!127669))

(assert (= (and start!13104 (is-Cons!2100 p!1997)) b!127670))

(assert (= (and start!13104 (is-Cons!2100 s!1511)) b!127668))

(assert (= (and start!13104 (is-Cons!2100 l!3367)) b!127667))

(declare-fun m!112475 () Bool)

(assert (=> start!13104 m!112475))

(declare-fun m!112477 () Bool)

(assert (=> b!127666 m!112477))

(declare-fun m!112479 () Bool)

(assert (=> b!127669 m!112479))

(push 1)

(assert (not b!127669))

(assert (not start!13104))

(assert tp_is_empty!1231)

(assert (not b!127667))

(assert (not b!127670))

(assert (not b!127668))

(assert (not b!127666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

