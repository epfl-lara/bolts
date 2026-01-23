; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515874 () Bool)

(assert start!515874)

(declare-fun res!2098775 () Bool)

(declare-fun e!3071057 () Bool)

(assert (=> start!515874 (=> (not res!2098775) (not e!3071057))))

(declare-datatypes ((C!26902 0))(
  ( (C!26903 (val!22785 Int)) )
))
(declare-datatypes ((List!56753 0))(
  ( (Nil!56629) (Cons!56629 (h!63077 C!26902) (t!367159 List!56753)) )
))
(declare-fun lt!2017379 () List!56753)

(declare-fun ++!12292 (List!56753 List!56753) List!56753)

(assert (=> start!515874 (= res!2098775 (= (++!12292 Nil!56629 lt!2017379) lt!2017379))))

(declare-fun lt!2017380 () Int)

(declare-datatypes ((IArray!29751 0))(
  ( (IArray!29752 (innerList!14933 List!56753)) )
))
(declare-datatypes ((Conc!14845 0))(
  ( (Node!14845 (left!41282 Conc!14845) (right!41612 Conc!14845) (csize!29920 Int) (cheight!15056 Int)) (Leaf!24701 (xs!18161 IArray!29751) (csize!29921 Int)) (Empty!14845) )
))
(declare-datatypes ((BalanceConc!29120 0))(
  ( (BalanceConc!29121 (c!835153 Conc!14845)) )
))
(declare-fun input!5492 () BalanceConc!29120)

(declare-fun size!37398 (BalanceConc!29120) Int)

(assert (=> start!515874 (= lt!2017380 (size!37398 input!5492))))

(declare-fun list!17895 (BalanceConc!29120) List!56753)

(assert (=> start!515874 (= lt!2017379 (list!17895 input!5492))))

(assert (=> start!515874 e!3071057))

(declare-fun e!3071058 () Bool)

(declare-fun inv!73286 (BalanceConc!29120) Bool)

(assert (=> start!515874 (and (inv!73286 input!5492) e!3071058)))

(declare-fun b!4913424 () Bool)

(assert (=> b!4913424 (= e!3071057 false)))

(declare-fun lt!2017378 () Int)

(declare-fun size!37399 (List!56753) Int)

(assert (=> b!4913424 (= lt!2017378 (size!37399 Nil!56629))))

(declare-fun b!4913425 () Bool)

(declare-fun tp!1381700 () Bool)

(declare-fun inv!73287 (Conc!14845) Bool)

(assert (=> b!4913425 (= e!3071058 (and (inv!73287 (c!835153 input!5492)) tp!1381700))))

(assert (= (and start!515874 res!2098775) b!4913424))

(assert (= start!515874 b!4913425))

(declare-fun m!5923220 () Bool)

(assert (=> start!515874 m!5923220))

(declare-fun m!5923222 () Bool)

(assert (=> start!515874 m!5923222))

(declare-fun m!5923224 () Bool)

(assert (=> start!515874 m!5923224))

(declare-fun m!5923226 () Bool)

(assert (=> start!515874 m!5923226))

(declare-fun m!5923228 () Bool)

(assert (=> b!4913424 m!5923228))

(declare-fun m!5923230 () Bool)

(assert (=> b!4913425 m!5923230))

(push 1)

(assert (not b!4913424))

(assert (not start!515874))

(assert (not b!4913425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

