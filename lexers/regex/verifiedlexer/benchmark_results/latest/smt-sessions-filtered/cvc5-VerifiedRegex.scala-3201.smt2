; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!186634 () Bool)

(assert start!186634)

(declare-fun b!1865514 () Bool)

(declare-fun e!1190800 () Bool)

(declare-datatypes ((T!33086 0))(
  ( (T!33087 (val!5937 Int)) )
))
(declare-datatypes ((List!20754 0))(
  ( (Nil!20672) (Cons!20672 (h!26073 T!33086) (t!172867 List!20754)) )
))
(declare-datatypes ((IArray!13739 0))(
  ( (IArray!13740 (innerList!6927 List!20754)) )
))
(declare-datatypes ((Conc!6867 0))(
  ( (Node!6867 (left!16654 Conc!6867) (right!16984 Conc!6867) (csize!13964 Int) (cheight!7078 Int)) (Leaf!10069 (xs!9749 IArray!13739) (csize!13965 Int)) (Empty!6867) )
))
(declare-fun t!4595 () Conc!6867)

(declare-fun isEmpty!12888 (Conc!6867) Bool)

(assert (=> b!1865514 (= e!1190800 (not (isEmpty!12888 (left!16654 t!4595))))))

(declare-fun b!1865515 () Bool)

(declare-fun res!835355 () Bool)

(declare-fun e!1190802 () Bool)

(assert (=> b!1865515 (=> (not res!835355) (not e!1190802))))

(assert (=> b!1865515 (= res!835355 (is-Node!6867 t!4595))))

(declare-fun b!1865516 () Bool)

(declare-fun res!835356 () Bool)

(assert (=> b!1865516 (=> (not res!835356) (not e!1190802))))

(assert (=> b!1865516 (= res!835356 (not (isEmpty!12888 t!4595)))))

(declare-fun b!1865517 () Bool)

(declare-fun e!1190801 () Bool)

(declare-fun e!1190803 () Bool)

(declare-fun inv!27332 (IArray!13739) Bool)

(assert (=> b!1865517 (= e!1190801 (and (inv!27332 (xs!9749 t!4595)) e!1190803))))

(declare-fun res!835352 () Bool)

(assert (=> start!186634 (=> (not res!835352) (not e!1190802))))

(declare-fun isBalanced!2168 (Conc!6867) Bool)

(assert (=> start!186634 (= res!835352 (isBalanced!2168 t!4595))))

(assert (=> start!186634 e!1190802))

(declare-fun inv!27333 (Conc!6867) Bool)

(assert (=> start!186634 (and (inv!27333 t!4595) e!1190801)))

(declare-fun b!1865518 () Bool)

(declare-fun res!835354 () Bool)

(assert (=> b!1865518 (=> (not res!835354) (not e!1190802))))

(assert (=> b!1865518 (= res!835354 e!1190800)))

(declare-fun res!835353 () Bool)

(assert (=> b!1865518 (=> res!835353 e!1190800)))

(assert (=> b!1865518 (= res!835353 (not (is-Node!6867 t!4595)))))

(declare-fun b!1865519 () Bool)

(declare-fun res!835357 () Bool)

(assert (=> b!1865519 (=> (not res!835357) (not e!1190802))))

(assert (=> b!1865519 (= res!835357 (not (is-Leaf!10069 t!4595)))))

(declare-fun b!1865520 () Bool)

(declare-fun tp!531153 () Bool)

(assert (=> b!1865520 (= e!1190803 tp!531153)))

(declare-fun tp!531151 () Bool)

(declare-fun tp!531152 () Bool)

(declare-fun b!1865521 () Bool)

(assert (=> b!1865521 (= e!1190801 (and (inv!27333 (left!16654 t!4595)) tp!531151 (inv!27333 (right!16984 t!4595)) tp!531152))))

(declare-fun b!1865522 () Bool)

(assert (=> b!1865522 (= e!1190802 (not true))))

(declare-fun lt!718508 () List!20754)

(declare-fun lt!718510 () List!20754)

(declare-fun tail!2826 (List!20754) List!20754)

(declare-fun ++!5599 (List!20754 List!20754) List!20754)

(assert (=> b!1865522 (= (tail!2826 (++!5599 lt!718508 lt!718510)) (++!5599 (tail!2826 lt!718508) lt!718510))))

(declare-datatypes ((Unit!35293 0))(
  ( (Unit!35294) )
))
(declare-fun lt!718509 () Unit!35293)

(declare-fun lemmaTailOfConcatIsTailConcat!37 (List!20754 List!20754) Unit!35293)

(assert (=> b!1865522 (= lt!718509 (lemmaTailOfConcatIsTailConcat!37 lt!718508 lt!718510))))

(declare-fun list!8449 (Conc!6867) List!20754)

(assert (=> b!1865522 (= lt!718510 (list!8449 (right!16984 t!4595)))))

(assert (=> b!1865522 (= lt!718508 (list!8449 (left!16654 t!4595)))))

(assert (= (and start!186634 res!835352) b!1865516))

(assert (= (and b!1865516 res!835356) b!1865519))

(assert (= (and b!1865519 res!835357) b!1865518))

(assert (= (and b!1865518 (not res!835353)) b!1865514))

(assert (= (and b!1865518 res!835354) b!1865515))

(assert (= (and b!1865515 res!835355) b!1865522))

(assert (= (and start!186634 (is-Node!6867 t!4595)) b!1865521))

(assert (= b!1865517 b!1865520))

(assert (= (and start!186634 (is-Leaf!10069 t!4595)) b!1865517))

(declare-fun m!2290235 () Bool)

(assert (=> b!1865517 m!2290235))

(declare-fun m!2290237 () Bool)

(assert (=> b!1865514 m!2290237))

(declare-fun m!2290239 () Bool)

(assert (=> b!1865516 m!2290239))

(declare-fun m!2290241 () Bool)

(assert (=> start!186634 m!2290241))

(declare-fun m!2290243 () Bool)

(assert (=> start!186634 m!2290243))

(declare-fun m!2290245 () Bool)

(assert (=> b!1865522 m!2290245))

(declare-fun m!2290247 () Bool)

(assert (=> b!1865522 m!2290247))

(declare-fun m!2290249 () Bool)

(assert (=> b!1865522 m!2290249))

(declare-fun m!2290251 () Bool)

(assert (=> b!1865522 m!2290251))

(declare-fun m!2290253 () Bool)

(assert (=> b!1865522 m!2290253))

(assert (=> b!1865522 m!2290247))

(declare-fun m!2290255 () Bool)

(assert (=> b!1865522 m!2290255))

(assert (=> b!1865522 m!2290245))

(declare-fun m!2290257 () Bool)

(assert (=> b!1865522 m!2290257))

(declare-fun m!2290259 () Bool)

(assert (=> b!1865521 m!2290259))

(declare-fun m!2290261 () Bool)

(assert (=> b!1865521 m!2290261))

(push 1)

(assert (not start!186634))

(assert (not b!1865520))

(assert (not b!1865521))

(assert (not b!1865517))

(assert (not b!1865516))

(assert (not b!1865514))

(assert (not b!1865522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

