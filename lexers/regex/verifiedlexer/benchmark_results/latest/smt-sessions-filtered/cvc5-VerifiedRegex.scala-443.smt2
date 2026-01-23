; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13108 () Bool)

(assert start!13108)

(declare-fun b!127703 () Bool)

(declare-fun e!73361 () Bool)

(declare-fun tp_is_empty!1235 () Bool)

(declare-fun tp!69692 () Bool)

(assert (=> b!127703 (= e!73361 (and tp_is_empty!1235 tp!69692))))

(declare-fun b!127704 () Bool)

(declare-fun e!73358 () Bool)

(declare-fun e!73360 () Bool)

(assert (=> b!127704 (= e!73358 e!73360)))

(declare-fun res!58939 () Bool)

(assert (=> b!127704 (=> (not res!58939) (not e!73360))))

(declare-datatypes ((B!627 0))(
  ( (B!628 (val!777 Int)) )
))
(declare-datatypes ((List!2108 0))(
  ( (Nil!2102) (Cons!2102 (h!7499 B!627) (t!22684 List!2108)) )
))
(declare-fun lt!38257 () List!2108)

(declare-fun s!1511 () List!2108)

(declare-fun p!1997 () List!2108)

(declare-fun ++!399 (List!2108 List!2108) List!2108)

(assert (=> b!127704 (= res!58939 (= (++!399 (t!22684 p!1997) s!1511) lt!38257))))

(declare-fun l!3367 () List!2108)

(declare-fun tail!253 (List!2108) List!2108)

(assert (=> b!127704 (= lt!38257 (tail!253 l!3367))))

(declare-fun b!127705 () Bool)

(assert (=> b!127705 (= e!73360 (not true))))

(declare-fun removeLast!1 (List!2108) List!2108)

(assert (=> b!127705 (= (++!399 (t!22684 p!1997) (removeLast!1 s!1511)) (removeLast!1 lt!38257))))

(declare-datatypes ((Unit!1639 0))(
  ( (Unit!1640) )
))
(declare-fun lt!38256 () Unit!1639)

(declare-fun lemmaRemoveLastFromBothSidePreservesEq!1 (List!2108 List!2108 List!2108) Unit!1639)

(assert (=> b!127705 (= lt!38256 (lemmaRemoveLastFromBothSidePreservesEq!1 (t!22684 p!1997) s!1511 lt!38257))))

(declare-fun res!58937 () Bool)

(assert (=> start!13108 (=> (not res!58937) (not e!73358))))

(assert (=> start!13108 (= res!58937 (= (++!399 p!1997 s!1511) l!3367))))

(assert (=> start!13108 e!73358))

(assert (=> start!13108 e!73361))

(declare-fun e!73362 () Bool)

(assert (=> start!13108 e!73362))

(declare-fun e!73359 () Bool)

(assert (=> start!13108 e!73359))

(declare-fun b!127706 () Bool)

(declare-fun tp!69691 () Bool)

(assert (=> b!127706 (= e!73359 (and tp_is_empty!1235 tp!69691))))

(declare-fun b!127707 () Bool)

(declare-fun res!58940 () Bool)

(assert (=> b!127707 (=> (not res!58940) (not e!73358))))

(assert (=> b!127707 (= res!58940 (is-Cons!2102 p!1997))))

(declare-fun b!127708 () Bool)

(declare-fun res!58938 () Bool)

(assert (=> b!127708 (=> (not res!58938) (not e!73358))))

(declare-fun isEmpty!834 (List!2108) Bool)

(assert (=> b!127708 (= res!58938 (not (isEmpty!834 s!1511)))))

(declare-fun b!127709 () Bool)

(declare-fun tp!69690 () Bool)

(assert (=> b!127709 (= e!73362 (and tp_is_empty!1235 tp!69690))))

(assert (= (and start!13108 res!58937) b!127708))

(assert (= (and b!127708 res!58938) b!127707))

(assert (= (and b!127707 res!58940) b!127704))

(assert (= (and b!127704 res!58939) b!127705))

(assert (= (and start!13108 (is-Cons!2102 p!1997)) b!127703))

(assert (= (and start!13108 (is-Cons!2102 s!1511)) b!127709))

(assert (= (and start!13108 (is-Cons!2102 l!3367)) b!127706))

(declare-fun m!112487 () Bool)

(assert (=> b!127704 m!112487))

(declare-fun m!112489 () Bool)

(assert (=> b!127704 m!112489))

(declare-fun m!112491 () Bool)

(assert (=> b!127705 m!112491))

(assert (=> b!127705 m!112491))

(declare-fun m!112493 () Bool)

(assert (=> b!127705 m!112493))

(declare-fun m!112495 () Bool)

(assert (=> b!127705 m!112495))

(declare-fun m!112497 () Bool)

(assert (=> b!127705 m!112497))

(declare-fun m!112499 () Bool)

(assert (=> start!13108 m!112499))

(declare-fun m!112501 () Bool)

(assert (=> b!127708 m!112501))

(push 1)

(assert (not start!13108))

(assert (not b!127709))

(assert (not b!127704))

(assert (not b!127706))

(assert (not b!127708))

(assert tp_is_empty!1235)

(assert (not b!127703))

(assert (not b!127705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

