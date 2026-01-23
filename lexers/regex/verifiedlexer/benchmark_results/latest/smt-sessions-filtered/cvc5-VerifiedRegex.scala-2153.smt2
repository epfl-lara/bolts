; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107570 () Bool)

(assert start!107570)

(declare-fun b!1208216 () Bool)

(declare-fun e!774938 () Bool)

(declare-fun tp!342144 () Bool)

(declare-fun tp!342145 () Bool)

(assert (=> b!1208216 (= e!774938 (and tp!342144 tp!342145))))

(declare-fun b!1208217 () Bool)

(declare-fun e!774940 () Bool)

(assert (=> b!1208217 (= e!774940 (not true))))

(declare-fun e!774939 () Bool)

(assert (=> b!1208217 e!774939))

(declare-fun res!543383 () Bool)

(assert (=> b!1208217 (=> (not res!543383) (not e!774939))))

(declare-fun lt!412866 () Int)

(declare-datatypes ((BalanceConc!7873 0) (Object!2189 0) (IArray!7979 0) (Conc!3987 0) (List!12149 0))(
  ( (BalanceConc!7874 (c!202319 Conc!3987)) )
  ( (BalanceConc!7872 (value!68097 BalanceConc!7873)) (List!12148 (value!68098 List!12149)) (Character!23 (value!68099 (_ BitVec 16))) (Open!23 (value!68100 Int)) )
  ( (IArray!7980 (innerList!4047 List!12149)) )
  ( (Node!3987 (left!10564 Conc!3987) (right!10894 Conc!3987) (csize!8204 Int) (cheight!4198 Int)) (Leaf!6141 (xs!6698 IArray!7979) (csize!8205 Int)) (Empty!3987) )
  ( (Nil!12124) (Cons!12124 (h!17525 Object!2189) (t!112564 List!12149)) )
))
(declare-datatypes ((T!22354 0))(
  ( (T!22355 (val!3969 Int)) )
))
(declare-datatypes ((List!12150 0))(
  ( (Nil!12125) (Cons!12125 (h!17526 T!22354) (t!112565 List!12150)) )
))
(declare-datatypes ((Vector!50 0))(
  ( (Vector!51 (underlying!2769 Object!2189) (overflowing!82 List!12150)) )
))
(declare-fun thiss!9565 () Vector!50)

(declare-fun size!9664 (List!12150) Int)

(declare-fun list!4505 (Vector!50) List!12150)

(assert (=> b!1208217 (= res!543383 (= lt!412866 (size!9664 (list!4505 thiss!9565))))))

(declare-fun size!9665 (Vector!50) Int)

(assert (=> b!1208217 (= lt!412866 (size!9665 thiss!9565))))

(declare-fun b!1208218 () Bool)

(declare-fun e!774941 () Bool)

(declare-fun tp!342143 () Bool)

(declare-fun tp!342142 () Bool)

(assert (=> b!1208218 (= e!774941 (and tp!342143 tp!342142))))

(declare-fun res!543382 () Bool)

(assert (=> start!107570 (=> (not res!543382) (not e!774940))))

(declare-fun from!777 () Int)

(assert (=> start!107570 (= res!543382 (<= 0 from!777))))

(assert (=> start!107570 e!774940))

(assert (=> start!107570 true))

(assert (=> start!107570 e!774938))

(assert (=> start!107570 e!774941))

(declare-fun b!1208219 () Bool)

(declare-fun e!774942 () Bool)

(assert (=> b!1208219 (= e!774939 e!774942)))

(declare-fun res!543384 () Bool)

(assert (=> b!1208219 (=> res!543384 e!774942)))

(assert (=> b!1208219 (= res!543384 (> from!777 lt!412866))))

(declare-fun b!1208220 () Bool)

(declare-fun other!28 () Vector!50)

(assert (=> b!1208220 (= e!774942 (= (size!9665 other!28) (size!9664 (list!4505 other!28))))))

(assert (= (and start!107570 res!543382) b!1208217))

(assert (= (and b!1208217 res!543383) b!1208219))

(assert (= (and b!1208219 (not res!543384)) b!1208220))

(assert (= start!107570 b!1208216))

(assert (= start!107570 b!1208218))

(declare-fun m!1383587 () Bool)

(assert (=> b!1208217 m!1383587))

(assert (=> b!1208217 m!1383587))

(declare-fun m!1383589 () Bool)

(assert (=> b!1208217 m!1383589))

(declare-fun m!1383591 () Bool)

(assert (=> b!1208217 m!1383591))

(declare-fun m!1383593 () Bool)

(assert (=> b!1208220 m!1383593))

(declare-fun m!1383595 () Bool)

(assert (=> b!1208220 m!1383595))

(assert (=> b!1208220 m!1383595))

(declare-fun m!1383597 () Bool)

(assert (=> b!1208220 m!1383597))

(push 1)

(assert (not b!1208220))

(assert (not b!1208217))

(assert (not b!1208216))

(assert (not b!1208218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

