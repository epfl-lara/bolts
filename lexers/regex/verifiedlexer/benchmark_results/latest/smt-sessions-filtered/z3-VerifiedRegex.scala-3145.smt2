; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184906 () Bool)

(assert start!184906)

(declare-fun res!831246 () Bool)

(declare-fun e!1184170 () Bool)

(assert (=> start!184906 (=> (not res!831246) (not e!1184170))))

(declare-fun i!1029 () Int)

(assert (=> start!184906 (= res!831246 (<= 0 i!1029))))

(assert (=> start!184906 e!1184170))

(assert (=> start!184906 true))

(declare-fun e!1184168 () Bool)

(assert (=> start!184906 e!1184168))

(declare-fun b!1852662 () Bool)

(declare-fun e!1184169 () Bool)

(assert (=> b!1852662 (= e!1184170 (not e!1184169))))

(declare-fun res!831245 () Bool)

(assert (=> b!1852662 (=> res!831245 e!1184169)))

(declare-fun lt!716274 () Int)

(assert (=> b!1852662 (= res!831245 (>= i!1029 lt!716274))))

(declare-fun lt!716272 () Int)

(assert (=> b!1852662 (= lt!716274 lt!716272)))

(declare-datatypes ((IArray!13597 0) (Conc!6796 0) (Object!3867 0) (BalanceConc!13516 0) (List!20622 0))(
  ( (IArray!13598 (innerList!6856 List!20622)) )
  ( (Node!6796 (left!16483 Conc!6796) (right!16813 Conc!6796) (csize!13822 Int) (cheight!7007 Int)) (Leaf!9942 (xs!9672 IArray!13597) (csize!13823 Int)) (Empty!6796) )
  ( (BalanceConc!13515 (value!115411 BalanceConc!13516)) (List!20621 (value!115412 List!20622)) (Character!72 (value!115413 (_ BitVec 16))) (Open!72 (value!115414 Int)) )
  ( (BalanceConc!13517 (c!302203 Conc!6796)) )
  ( (Nil!20548) (Cons!20548 (h!25949 Object!3867) (t!172437 List!20622)) )
))
(declare-datatypes ((T!32440 0))(
  ( (T!32441 (val!5844 Int)) )
))
(declare-datatypes ((List!20623 0))(
  ( (Nil!20549) (Cons!20549 (h!25950 T!32440) (t!172438 List!20623)) )
))
(declare-datatypes ((Vector!148 0))(
  ( (Vector!149 (underlying!4004 Object!3867) (overflowing!131 List!20623)) )
))
(declare-fun v!5955 () Vector!148)

(declare-fun size!16227 (List!20623) Int)

(declare-fun list!8326 (Vector!148) List!20623)

(assert (=> b!1852662 (= lt!716272 (size!16227 (list!8326 v!5955)))))

(declare-fun size!16228 (Vector!148) Int)

(assert (=> b!1852662 (= lt!716274 (size!16228 v!5955))))

(declare-fun b!1852663 () Bool)

(assert (=> b!1852663 (= e!1184169 (< i!1029 lt!716272))))

(declare-datatypes ((Unit!35160 0))(
  ( (Unit!35161) )
))
(declare-fun lt!716273 () Unit!35160)

(declare-fun choose!11652 (Vector!148 Int) Unit!35160)

(assert (=> b!1852663 (= lt!716273 (choose!11652 v!5955 i!1029))))

(declare-fun b!1852664 () Bool)

(declare-fun tp!525186 () Bool)

(declare-fun tp!525185 () Bool)

(assert (=> b!1852664 (= e!1184168 (and tp!525186 tp!525185))))

(assert (= (and start!184906 res!831246) b!1852662))

(assert (= (and b!1852662 (not res!831245)) b!1852663))

(assert (= start!184906 b!1852664))

(declare-fun m!2279501 () Bool)

(assert (=> b!1852662 m!2279501))

(assert (=> b!1852662 m!2279501))

(declare-fun m!2279503 () Bool)

(assert (=> b!1852662 m!2279503))

(declare-fun m!2279505 () Bool)

(assert (=> b!1852662 m!2279505))

(declare-fun m!2279507 () Bool)

(assert (=> b!1852663 m!2279507))

(check-sat (not b!1852663) (not b!1852662) (not b!1852664))
(check-sat)
