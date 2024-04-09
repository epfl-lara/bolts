; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118338 () Bool)

(assert start!118338)

(declare-fun b!1383505 () Bool)

(declare-fun res!925211 () Bool)

(declare-fun e!784126 () Bool)

(assert (=> b!1383505 (=> (not res!925211) (not e!784126))))

(declare-datatypes ((array!94559 0))(
  ( (array!94560 (arr!45653 (Array (_ BitVec 32) (_ BitVec 64))) (size!46204 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94559)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94559 (_ BitVec 32)) Bool)

(assert (=> b!1383505 (= res!925211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383506 () Bool)

(declare-fun res!925210 () Bool)

(assert (=> b!1383506 (=> (not res!925210) (not e!784126))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383506 (= res!925210 (validKeyInArray!0 (select (arr!45653 a!2938) i!1065)))))

(declare-fun b!1383507 () Bool)

(declare-fun res!925206 () Bool)

(assert (=> b!1383507 (=> (not res!925206) (not e!784126))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383507 (= res!925206 (and (= (size!46204 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46204 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46204 a!2938))))))

(declare-fun b!1383508 () Bool)

(declare-fun res!925212 () Bool)

(assert (=> b!1383508 (=> (not res!925212) (not e!784126))))

(declare-datatypes ((List!32361 0))(
  ( (Nil!32358) (Cons!32357 (h!33566 (_ BitVec 64)) (t!47062 List!32361)) )
))
(declare-fun arrayNoDuplicates!0 (array!94559 (_ BitVec 32) List!32361) Bool)

(assert (=> b!1383508 (= res!925212 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32358))))

(declare-fun b!1383509 () Bool)

(declare-fun res!925208 () Bool)

(assert (=> b!1383509 (=> (not res!925208) (not e!784126))))

(assert (=> b!1383509 (= res!925208 (validKeyInArray!0 (select (arr!45653 a!2938) startIndex!16)))))

(declare-fun b!1383510 () Bool)

(assert (=> b!1383510 (= e!784126 (not true))))

(declare-datatypes ((SeekEntryResult!10067 0))(
  ( (MissingZero!10067 (index!42638 (_ BitVec 32))) (Found!10067 (index!42639 (_ BitVec 32))) (Intermediate!10067 (undefined!10879 Bool) (index!42640 (_ BitVec 32)) (x!124159 (_ BitVec 32))) (Undefined!10067) (MissingVacant!10067 (index!42641 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94559 (_ BitVec 32)) SeekEntryResult!10067)

(assert (=> b!1383510 (= (seekEntryOrOpen!0 (select (arr!45653 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45653 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94560 (store (arr!45653 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46204 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46025 0))(
  ( (Unit!46026) )
))
(declare-fun lt!608575 () Unit!46025)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94559 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46025)

(assert (=> b!1383510 (= lt!608575 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun res!925207 () Bool)

(assert (=> start!118338 (=> (not res!925207) (not e!784126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118338 (= res!925207 (validMask!0 mask!2987))))

(assert (=> start!118338 e!784126))

(assert (=> start!118338 true))

(declare-fun array_inv!34598 (array!94559) Bool)

(assert (=> start!118338 (array_inv!34598 a!2938)))

(declare-fun b!1383511 () Bool)

(declare-fun res!925209 () Bool)

(assert (=> b!1383511 (=> (not res!925209) (not e!784126))))

(assert (=> b!1383511 (= res!925209 (and (not (= (select (arr!45653 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45653 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(assert (= (and start!118338 res!925207) b!1383507))

(assert (= (and b!1383507 res!925206) b!1383506))

(assert (= (and b!1383506 res!925210) b!1383508))

(assert (= (and b!1383508 res!925212) b!1383505))

(assert (= (and b!1383505 res!925211) b!1383511))

(assert (= (and b!1383511 res!925209) b!1383509))

(assert (= (and b!1383509 res!925208) b!1383510))

(declare-fun m!1268695 () Bool)

(assert (=> b!1383506 m!1268695))

(assert (=> b!1383506 m!1268695))

(declare-fun m!1268697 () Bool)

(assert (=> b!1383506 m!1268697))

(declare-fun m!1268699 () Bool)

(assert (=> b!1383509 m!1268699))

(assert (=> b!1383509 m!1268699))

(declare-fun m!1268701 () Bool)

(assert (=> b!1383509 m!1268701))

(declare-fun m!1268703 () Bool)

(assert (=> start!118338 m!1268703))

(declare-fun m!1268705 () Bool)

(assert (=> start!118338 m!1268705))

(assert (=> b!1383511 m!1268695))

(declare-fun m!1268707 () Bool)

(assert (=> b!1383505 m!1268707))

(declare-fun m!1268709 () Bool)

(assert (=> b!1383510 m!1268709))

(assert (=> b!1383510 m!1268709))

(declare-fun m!1268711 () Bool)

(assert (=> b!1383510 m!1268711))

(declare-fun m!1268713 () Bool)

(assert (=> b!1383510 m!1268713))

(declare-fun m!1268715 () Bool)

(assert (=> b!1383510 m!1268715))

(assert (=> b!1383510 m!1268699))

(assert (=> b!1383510 m!1268699))

(declare-fun m!1268717 () Bool)

(assert (=> b!1383510 m!1268717))

(declare-fun m!1268719 () Bool)

(assert (=> b!1383508 m!1268719))

(check-sat (not b!1383506) (not b!1383505) (not b!1383510) (not start!118338) (not b!1383508) (not b!1383509))
