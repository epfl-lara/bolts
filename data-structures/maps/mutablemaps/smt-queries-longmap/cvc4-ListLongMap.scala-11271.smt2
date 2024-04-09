; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131504 () Bool)

(assert start!131504)

(declare-fun b!1540866 () Bool)

(declare-fun e!856987 () Bool)

(assert (=> b!1540866 (= e!856987 (not true))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102334 0))(
  ( (array!102335 (arr!49371 (Array (_ BitVec 32) (_ BitVec 64))) (size!49922 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102334)

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102334 (_ BitVec 32)) Bool)

(assert (=> b!1540866 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-fun from!3298 () (_ BitVec 32))

(declare-datatypes ((Unit!51402 0))(
  ( (Unit!51403) )
))
(declare-fun lt!665482 () Unit!51402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102334 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51402)

(assert (=> b!1540866 (= lt!665482 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1540867 () Bool)

(declare-fun res!1057554 () Bool)

(assert (=> b!1540867 (=> (not res!1057554) (not e!856987))))

(assert (=> b!1540867 (= res!1057554 (and (= (size!49922 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49922 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49922 a!3920))))))

(declare-fun b!1540868 () Bool)

(declare-fun res!1057552 () Bool)

(assert (=> b!1540868 (=> (not res!1057552) (not e!856987))))

(assert (=> b!1540868 (= res!1057552 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49922 a!3920))))))

(declare-fun res!1057550 () Bool)

(assert (=> start!131504 (=> (not res!1057550) (not e!856987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131504 (= res!1057550 (validMask!0 mask!4052))))

(assert (=> start!131504 e!856987))

(assert (=> start!131504 true))

(declare-fun array_inv!38316 (array!102334) Bool)

(assert (=> start!131504 (array_inv!38316 a!3920)))

(declare-fun b!1540869 () Bool)

(declare-fun res!1057553 () Bool)

(assert (=> b!1540869 (=> (not res!1057553) (not e!856987))))

(assert (=> b!1540869 (= res!1057553 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540870 () Bool)

(declare-fun res!1057551 () Bool)

(assert (=> b!1540870 (=> (not res!1057551) (not e!856987))))

(assert (=> b!1540870 (= res!1057551 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131504 res!1057550) b!1540867))

(assert (= (and b!1540867 res!1057554) b!1540870))

(assert (= (and b!1540870 res!1057551) b!1540868))

(assert (= (and b!1540868 res!1057552) b!1540869))

(assert (= (and b!1540869 res!1057553) b!1540866))

(declare-fun m!1422957 () Bool)

(assert (=> b!1540866 m!1422957))

(declare-fun m!1422959 () Bool)

(assert (=> b!1540866 m!1422959))

(declare-fun m!1422961 () Bool)

(assert (=> start!131504 m!1422961))

(declare-fun m!1422963 () Bool)

(assert (=> start!131504 m!1422963))

(declare-fun m!1422965 () Bool)

(assert (=> b!1540869 m!1422965))

(declare-fun m!1422967 () Bool)

(assert (=> b!1540870 m!1422967))

(push 1)

(assert (not start!131504))

(assert (not b!1540869))

(assert (not b!1540870))

(assert (not b!1540866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

