; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184914 () Bool)

(assert start!184914)

(declare-fun res!831269 () Bool)

(declare-fun e!1184205 () Bool)

(assert (=> start!184914 (=> (not res!831269) (not e!1184205))))

(declare-fun i!1029 () Int)

(assert (=> start!184914 (= res!831269 (<= 0 i!1029))))

(assert (=> start!184914 e!1184205))

(assert (=> start!184914 true))

(declare-fun e!1184206 () Bool)

(assert (=> start!184914 e!1184206))

(declare-fun b!1852698 () Bool)

(declare-fun e!1184204 () Bool)

(assert (=> b!1852698 (= e!1184205 (not e!1184204))))

(declare-fun res!831270 () Bool)

(assert (=> b!1852698 (=> res!831270 e!1184204)))

(declare-fun lt!716313 () Int)

(assert (=> b!1852698 (= res!831270 (>= i!1029 lt!716313))))

(declare-datatypes ((T!32468 0))(
  ( (T!32469 (val!5848 Int)) )
))
(declare-datatypes ((List!20633 0))(
  ( (Nil!20556) (Cons!20556 (h!25957 T!32468) (t!172445 List!20633)) )
))
(declare-fun lt!716314 () List!20633)

(declare-fun size!16235 (List!20633) Int)

(assert (=> b!1852698 (= lt!716313 (size!16235 lt!716314))))

(declare-datatypes ((IArray!13605 0) (BalanceConc!13528 0) (Conc!6800 0) (List!20635 0) (Object!3871 0))(
  ( (IArray!13606 (innerList!6860 List!20635)) )
  ( (BalanceConc!13529 (c!302207 Conc!6800)) )
  ( (Node!6800 (left!16489 Conc!6800) (right!16819 Conc!6800) (csize!13830 Int) (cheight!7011 Int)) (Leaf!9948 (xs!9676 IArray!13605) (csize!13831 Int)) (Empty!6800) )
  ( (Nil!20557) (Cons!20557 (h!25958 Object!3871) (t!172446 List!20635)) )
  ( (BalanceConc!13527 (value!115433 BalanceConc!13528)) (List!20634 (value!115434 List!20635)) (Character!76 (value!115435 (_ BitVec 16))) (Open!76 (value!115436 Int)) )
))
(declare-datatypes ((Vector!156 0))(
  ( (Vector!157 (underlying!4008 Object!3871) (overflowing!135 List!20633)) )
))
(declare-fun v!5955 () Vector!156)

(declare-fun list!8330 (Vector!156) List!20633)

(assert (=> b!1852698 (= lt!716314 (list!8330 v!5955))))

(declare-fun size!16236 (Vector!156) Int)

(assert (=> b!1852698 (= lt!716313 (size!16236 v!5955))))

(declare-fun b!1852699 () Bool)

(declare-fun lt!716312 () T!32468)

(declare-fun lt!716315 () T!32468)

(assert (=> b!1852699 (= e!1184204 (= lt!716312 lt!716315))))

(assert (=> b!1852699 (= lt!716315 lt!716312)))

(declare-fun apply!5457 (Vector!156 Int) T!32468)

(assert (=> b!1852699 (= lt!716315 (apply!5457 v!5955 i!1029))))

(declare-fun apply!5458 (List!20633 Int) T!32468)

(assert (=> b!1852699 (= lt!716312 (apply!5458 lt!716314 i!1029))))

(declare-datatypes ((Unit!35168 0))(
  ( (Unit!35169) )
))
(declare-fun lt!716316 () Unit!35168)

(declare-fun choose!11656 (Vector!156 Int) Unit!35168)

(assert (=> b!1852699 (= lt!716316 (choose!11656 v!5955 i!1029))))

(declare-fun b!1852700 () Bool)

(declare-fun tp!525210 () Bool)

(declare-fun tp!525209 () Bool)

(assert (=> b!1852700 (= e!1184206 (and tp!525210 tp!525209))))

(assert (= (and start!184914 res!831269) b!1852698))

(assert (= (and b!1852698 (not res!831270)) b!1852699))

(assert (= start!184914 b!1852700))

(declare-fun m!2279537 () Bool)

(assert (=> b!1852698 m!2279537))

(declare-fun m!2279539 () Bool)

(assert (=> b!1852698 m!2279539))

(declare-fun m!2279541 () Bool)

(assert (=> b!1852698 m!2279541))

(declare-fun m!2279543 () Bool)

(assert (=> b!1852699 m!2279543))

(declare-fun m!2279545 () Bool)

(assert (=> b!1852699 m!2279545))

(declare-fun m!2279547 () Bool)

(assert (=> b!1852699 m!2279547))

(check-sat (not b!1852698) (not b!1852699) (not b!1852700))
(check-sat)
