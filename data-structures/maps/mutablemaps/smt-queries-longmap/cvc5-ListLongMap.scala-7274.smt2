; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92898 () Bool)

(assert start!92898)

(declare-fun b!1054554 () Bool)

(declare-fun e!599195 () Bool)

(declare-fun e!599196 () Bool)

(assert (=> b!1054554 (= e!599195 e!599196)))

(declare-fun res!703605 () Bool)

(assert (=> b!1054554 (=> (not res!703605) (not e!599196))))

(declare-datatypes ((array!66506 0))(
  ( (array!66507 (arr!31981 (Array (_ BitVec 32) (_ BitVec 64))) (size!32518 (_ BitVec 32))) )
))
(declare-fun lt!465455 () array!66506)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054554 (= res!703605 (arrayContainsKey!0 lt!465455 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66506)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054554 (= lt!465455 (array!66507 (store (arr!31981 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32518 a!3488)))))

(declare-fun b!1054555 () Bool)

(declare-fun res!703604 () Bool)

(assert (=> b!1054555 (=> (not res!703604) (not e!599195))))

(assert (=> b!1054555 (= res!703604 (= (select (arr!31981 a!3488) i!1381) k!2747))))

(declare-fun b!1054556 () Bool)

(declare-fun res!703607 () Bool)

(assert (=> b!1054556 (=> (not res!703607) (not e!599195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054556 (= res!703607 (validKeyInArray!0 k!2747))))

(declare-fun b!1054557 () Bool)

(declare-fun res!703611 () Bool)

(assert (=> b!1054557 (=> (not res!703611) (not e!599195))))

(declare-datatypes ((List!22424 0))(
  ( (Nil!22421) (Cons!22420 (h!23629 (_ BitVec 64)) (t!31738 List!22424)) )
))
(declare-fun arrayNoDuplicates!0 (array!66506 (_ BitVec 32) List!22424) Bool)

(assert (=> b!1054557 (= res!703611 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22421))))

(declare-fun b!1054559 () Bool)

(declare-fun e!599198 () Bool)

(declare-fun e!599194 () Bool)

(assert (=> b!1054559 (= e!599198 e!599194)))

(declare-fun res!703608 () Bool)

(assert (=> b!1054559 (=> res!703608 e!599194)))

(declare-fun lt!465457 () (_ BitVec 32))

(assert (=> b!1054559 (= res!703608 (bvsle lt!465457 i!1381))))

(declare-fun b!1054560 () Bool)

(declare-fun e!599192 () Bool)

(declare-fun e!599193 () Bool)

(assert (=> b!1054560 (= e!599192 (not e!599193))))

(declare-fun res!703609 () Bool)

(assert (=> b!1054560 (=> res!703609 e!599193)))

(assert (=> b!1054560 (= res!703609 (bvsle lt!465457 i!1381))))

(assert (=> b!1054560 e!599198))

(declare-fun res!703606 () Bool)

(assert (=> b!1054560 (=> (not res!703606) (not e!599198))))

(assert (=> b!1054560 (= res!703606 (= (select (store (arr!31981 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465457) k!2747))))

(declare-fun b!1054561 () Bool)

(assert (=> b!1054561 (= e!599194 (arrayContainsKey!0 a!3488 k!2747 lt!465457))))

(declare-fun b!1054562 () Bool)

(assert (=> b!1054562 (= e!599196 e!599192)))

(declare-fun res!703603 () Bool)

(assert (=> b!1054562 (=> (not res!703603) (not e!599192))))

(assert (=> b!1054562 (= res!703603 (not (= lt!465457 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66506 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054562 (= lt!465457 (arrayScanForKey!0 lt!465455 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!703610 () Bool)

(assert (=> start!92898 (=> (not res!703610) (not e!599195))))

(assert (=> start!92898 (= res!703610 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32518 a!3488)) (bvslt (size!32518 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92898 e!599195))

(assert (=> start!92898 true))

(declare-fun array_inv!24603 (array!66506) Bool)

(assert (=> start!92898 (array_inv!24603 a!3488)))

(declare-fun b!1054558 () Bool)

(assert (=> b!1054558 (= e!599193 true)))

(assert (=> b!1054558 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34529 0))(
  ( (Unit!34530) )
))
(declare-fun lt!465454 () Unit!34529)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66506 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34529)

(assert (=> b!1054558 (= lt!465454 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465457 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1054558 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22421)))

(declare-fun lt!465456 () Unit!34529)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66506 (_ BitVec 32) (_ BitVec 32)) Unit!34529)

(assert (=> b!1054558 (= lt!465456 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92898 res!703610) b!1054557))

(assert (= (and b!1054557 res!703611) b!1054556))

(assert (= (and b!1054556 res!703607) b!1054555))

(assert (= (and b!1054555 res!703604) b!1054554))

(assert (= (and b!1054554 res!703605) b!1054562))

(assert (= (and b!1054562 res!703603) b!1054560))

(assert (= (and b!1054560 res!703606) b!1054559))

(assert (= (and b!1054559 (not res!703608)) b!1054561))

(assert (= (and b!1054560 (not res!703609)) b!1054558))

(declare-fun m!974745 () Bool)

(assert (=> b!1054555 m!974745))

(declare-fun m!974747 () Bool)

(assert (=> b!1054556 m!974747))

(declare-fun m!974749 () Bool)

(assert (=> b!1054558 m!974749))

(declare-fun m!974751 () Bool)

(assert (=> b!1054558 m!974751))

(declare-fun m!974753 () Bool)

(assert (=> b!1054558 m!974753))

(declare-fun m!974755 () Bool)

(assert (=> b!1054558 m!974755))

(declare-fun m!974757 () Bool)

(assert (=> b!1054557 m!974757))

(declare-fun m!974759 () Bool)

(assert (=> b!1054561 m!974759))

(declare-fun m!974761 () Bool)

(assert (=> b!1054562 m!974761))

(declare-fun m!974763 () Bool)

(assert (=> start!92898 m!974763))

(declare-fun m!974765 () Bool)

(assert (=> b!1054560 m!974765))

(declare-fun m!974767 () Bool)

(assert (=> b!1054560 m!974767))

(declare-fun m!974769 () Bool)

(assert (=> b!1054554 m!974769))

(assert (=> b!1054554 m!974765))

(push 1)

