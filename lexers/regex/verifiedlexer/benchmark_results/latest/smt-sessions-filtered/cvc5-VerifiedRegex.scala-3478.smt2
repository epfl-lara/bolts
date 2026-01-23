; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!201094 () Bool)

(assert start!201094)

(declare-fun lt!765441 () Bool)

(declare-datatypes ((T!36044 0))(
  ( (T!36045 (val!6481 Int)) )
))
(declare-datatypes ((List!22364 0))(
  ( (Nil!22282) (Cons!22282 (h!27683 T!36044) (t!191471 List!22364)) )
))
(declare-datatypes ((IArray!14953 0))(
  ( (IArray!14954 (innerList!7534 List!22364)) )
))
(declare-datatypes ((Conc!7474 0))(
  ( (Node!7474 (left!17748 Conc!7474) (right!18078 Conc!7474) (csize!15178 Int) (cheight!7685 Int)) (Leaf!10953 (xs!10380 IArray!14953) (csize!15179 Int)) (Empty!7474) )
))
(declare-fun t!4319 () Conc!7474)

(declare-fun isBalanced!2352 (Conc!7474) Bool)

(assert (=> start!201094 (= lt!765441 (isBalanced!2352 t!4319))))

(assert (=> start!201094 false))

(declare-fun e!1288112 () Bool)

(declare-fun inv!29613 (Conc!7474) Bool)

(assert (=> start!201094 (and (inv!29613 t!4319) e!1288112)))

(declare-fun b!2040359 () Bool)

(declare-fun tp!605363 () Bool)

(declare-fun tp!605364 () Bool)

(assert (=> b!2040359 (= e!1288112 (and (inv!29613 (left!17748 t!4319)) tp!605364 (inv!29613 (right!18078 t!4319)) tp!605363))))

(declare-fun b!2040361 () Bool)

(declare-fun e!1288113 () Bool)

(declare-fun tp!605365 () Bool)

(assert (=> b!2040361 (= e!1288113 tp!605365)))

(declare-fun b!2040360 () Bool)

(declare-fun inv!29614 (IArray!14953) Bool)

(assert (=> b!2040360 (= e!1288112 (and (inv!29614 (xs!10380 t!4319)) e!1288113))))

(assert (= (and start!201094 (is-Node!7474 t!4319)) b!2040359))

(assert (= b!2040360 b!2040361))

(assert (= (and start!201094 (is-Leaf!10953 t!4319)) b!2040360))

(declare-fun m!2484337 () Bool)

(assert (=> start!201094 m!2484337))

(declare-fun m!2484339 () Bool)

(assert (=> start!201094 m!2484339))

(declare-fun m!2484341 () Bool)

(assert (=> b!2040359 m!2484341))

(declare-fun m!2484343 () Bool)

(assert (=> b!2040359 m!2484343))

(declare-fun m!2484345 () Bool)

(assert (=> b!2040360 m!2484345))

(push 1)

(assert (not b!2040359))

(assert (not start!201094))

(assert (not b!2040360))

(assert (not b!2040361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

