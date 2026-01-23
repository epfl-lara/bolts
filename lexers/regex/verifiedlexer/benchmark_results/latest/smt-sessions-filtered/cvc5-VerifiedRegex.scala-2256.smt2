; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110712 () Bool)

(assert start!110712)

(declare-fun res!556248 () Bool)

(declare-fun e!799476 () Bool)

(assert (=> start!110712 (=> (not res!556248) (not e!799476))))

(declare-fun i!1036 () Int)

(assert (=> start!110712 (= res!556248 (<= 0 i!1036))))

(assert (=> start!110712 e!799476))

(assert (=> start!110712 true))

(declare-fun e!799474 () Bool)

(assert (=> start!110712 e!799474))

(declare-fun b!1256221 () Bool)

(declare-fun e!799475 () Bool)

(assert (=> b!1256221 (= e!799476 (not e!799475))))

(declare-fun res!556249 () Bool)

(assert (=> b!1256221 (=> res!556249 e!799475)))

(declare-fun lt!420447 () Int)

(assert (=> b!1256221 (= res!556249 (>= i!1036 lt!420447))))

(declare-datatypes ((Conc!4118 0) (List!12610 0) (IArray!8241 0) (Object!2299 0) (BalanceConc!8171 0))(
  ( (Node!4118 (left!10850 Conc!4118) (right!11180 Conc!4118) (csize!8466 Int) (cheight!4329 Int)) (Leaf!6375 (xs!6829 IArray!8241) (csize!8467 Int)) (Empty!4118) )
  ( (Nil!12549) (Cons!12549 (h!17950 Object!2299) (t!115743 List!12610)) )
  ( (IArray!8242 (innerList!4178 List!12610)) )
  ( (BalanceConc!8170 (value!70528 BalanceConc!8171)) (List!12609 (value!70529 List!12610)) (Character!59 (value!70530 (_ BitVec 16))) (Open!59 (value!70531 Int)) )
  ( (BalanceConc!8172 (c!208565 Conc!4118)) )
))
(declare-datatypes ((T!23456 0))(
  ( (T!23457 (val!4165 Int)) )
))
(declare-datatypes ((List!12611 0))(
  ( (Nil!12550) (Cons!12550 (h!17951 T!23456) (t!115744 List!12611)) )
))
(declare-datatypes ((Vector!122 0))(
  ( (Vector!123 (underlying!2805 Object!2299) (overflowing!118 List!12611)) )
))
(declare-fun v1!131 () Vector!122)

(declare-fun size!9918 (List!12611) Int)

(declare-fun list!4677 (Vector!122) List!12611)

(assert (=> b!1256221 (= lt!420447 (size!9918 (list!4677 v1!131)))))

(declare-fun size!9919 (Vector!122) Int)

(assert (=> b!1256221 (= lt!420447 (size!9919 v1!131))))

(declare-fun b!1256222 () Bool)

(assert (=> b!1256222 (= e!799475 true)))

(declare-datatypes ((Unit!18834 0))(
  ( (Unit!18835) )
))
(declare-fun lt!420446 () Unit!18834)

(declare-fun choose!7853 (Vector!122 Int) Unit!18834)

(assert (=> b!1256222 (= lt!420446 (choose!7853 v1!131 i!1036))))

(declare-fun b!1256223 () Bool)

(declare-fun tp!370435 () Bool)

(declare-fun tp!370434 () Bool)

(assert (=> b!1256223 (= e!799474 (and tp!370435 tp!370434))))

(assert (= (and start!110712 res!556248) b!1256221))

(assert (= (and b!1256221 (not res!556249)) b!1256222))

(assert (= start!110712 b!1256223))

(declare-fun m!1414635 () Bool)

(assert (=> b!1256221 m!1414635))

(assert (=> b!1256221 m!1414635))

(declare-fun m!1414637 () Bool)

(assert (=> b!1256221 m!1414637))

(declare-fun m!1414639 () Bool)

(assert (=> b!1256221 m!1414639))

(declare-fun m!1414641 () Bool)

(assert (=> b!1256222 m!1414641))

(push 1)

(assert (not b!1256222))

(assert (not b!1256221))

(assert (not b!1256223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

