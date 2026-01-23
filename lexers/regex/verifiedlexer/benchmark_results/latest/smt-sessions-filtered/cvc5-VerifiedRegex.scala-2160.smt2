; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107598 () Bool)

(assert start!107598)

(declare-fun b!1208439 () Bool)

(declare-fun e!775154 () Bool)

(declare-fun tp!342310 () Bool)

(declare-fun tp!342311 () Bool)

(assert (=> b!1208439 (= e!775154 (and tp!342310 tp!342311))))

(declare-fun b!1208438 () Bool)

(declare-fun e!775153 () Bool)

(declare-fun tp!342312 () Bool)

(declare-fun tp!342313 () Bool)

(assert (=> b!1208438 (= e!775153 (and tp!342312 tp!342313))))

(declare-fun b!1208436 () Bool)

(declare-fun e!775155 () Bool)

(declare-fun e!775152 () Bool)

(assert (=> b!1208436 (= e!775155 (not e!775152))))

(declare-fun res!543518 () Bool)

(assert (=> b!1208436 (=> res!543518 e!775152)))

(declare-fun from!777 () Int)

(declare-fun lt!413198 () Int)

(assert (=> b!1208436 (= res!543518 (> from!777 lt!413198))))

(declare-datatypes ((List!12191 0) (IArray!8007 0) (BalanceConc!7915 0) (Conc!4001 0) (Object!2203 0))(
  ( (Nil!12152) (Cons!12152 (h!17553 Object!2203) (t!112592 List!12191)) )
  ( (IArray!8008 (innerList!4061 List!12191)) )
  ( (BalanceConc!7916 (c!202333 Conc!4001)) )
  ( (Node!4001 (left!10585 Conc!4001) (right!10915 Conc!4001) (csize!8232 Int) (cheight!4212 Int)) (Leaf!6162 (xs!6712 IArray!8007) (csize!8233 Int)) (Empty!4001) )
  ( (BalanceConc!7914 (value!68174 BalanceConc!7915)) (List!12190 (value!68175 List!12191)) (Character!37 (value!68176 (_ BitVec 16))) (Open!37 (value!68177 Int)) )
))
(declare-datatypes ((T!22452 0))(
  ( (T!22453 (val!3983 Int)) )
))
(declare-datatypes ((List!12192 0))(
  ( (Nil!12153) (Cons!12153 (h!17554 T!22452) (t!112593 List!12192)) )
))
(declare-datatypes ((Vector!78 0))(
  ( (Vector!79 (underlying!2783 Object!2203) (overflowing!96 List!12192)) )
))
(declare-fun thiss!9565 () Vector!78)

(declare-fun size!9692 (List!12192) Int)

(declare-fun list!4519 (Vector!78) List!12192)

(assert (=> b!1208436 (= lt!413198 (size!9692 (list!4519 thiss!9565)))))

(declare-fun size!9693 (Vector!78) Int)

(assert (=> b!1208436 (= lt!413198 (size!9693 thiss!9565))))

(declare-fun res!543519 () Bool)

(assert (=> start!107598 (=> (not res!543519) (not e!775155))))

(assert (=> start!107598 (= res!543519 (<= 0 from!777))))

(assert (=> start!107598 e!775155))

(assert (=> start!107598 true))

(assert (=> start!107598 e!775153))

(assert (=> start!107598 e!775154))

(declare-fun b!1208437 () Bool)

(declare-fun lt!413199 () Int)

(assert (=> b!1208437 (= e!775152 (or (not (= lt!413198 lt!413199)) (>= (- lt!413198 from!777) 0)))))

(declare-fun other!28 () Vector!78)

(assert (=> b!1208437 (= lt!413199 (size!9692 (list!4519 other!28)))))

(assert (=> b!1208437 (= lt!413199 (size!9693 other!28))))

(assert (= (and start!107598 res!543519) b!1208436))

(assert (= (and b!1208436 (not res!543518)) b!1208437))

(assert (= start!107598 b!1208438))

(assert (= start!107598 b!1208439))

(declare-fun m!1384031 () Bool)

(assert (=> b!1208436 m!1384031))

(assert (=> b!1208436 m!1384031))

(declare-fun m!1384033 () Bool)

(assert (=> b!1208436 m!1384033))

(declare-fun m!1384035 () Bool)

(assert (=> b!1208436 m!1384035))

(declare-fun m!1384037 () Bool)

(assert (=> b!1208437 m!1384037))

(assert (=> b!1208437 m!1384037))

(declare-fun m!1384039 () Bool)

(assert (=> b!1208437 m!1384039))

(declare-fun m!1384041 () Bool)

(assert (=> b!1208437 m!1384041))

(push 1)

(assert (not b!1208437))

(assert (not b!1208436))

(assert (not b!1208438))

(assert (not b!1208439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

