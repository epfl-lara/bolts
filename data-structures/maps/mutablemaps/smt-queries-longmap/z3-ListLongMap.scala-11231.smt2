; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131052 () Bool)

(assert start!131052)

(declare-fun b!1537137 () Bool)

(declare-fun e!855514 () Bool)

(declare-fun e!855512 () Bool)

(assert (=> b!1537137 (= e!855514 e!855512)))

(declare-fun res!1054363 () Bool)

(assert (=> b!1537137 (=> (not res!1054363) (not e!855512))))

(declare-datatypes ((SeekEntryResult!13405 0))(
  ( (MissingZero!13405 (index!56014 (_ BitVec 32))) (Found!13405 (index!56015 (_ BitVec 32))) (Intermediate!13405 (undefined!14217 Bool) (index!56016 (_ BitVec 32)) (x!137746 (_ BitVec 32))) (Undefined!13405) (MissingVacant!13405 (index!56017 (_ BitVec 32))) )
))
(declare-fun lt!664574 () SeekEntryResult!13405)

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102077 0))(
  ( (array!102078 (arr!49250 (Array (_ BitVec 32) (_ BitVec 64))) (size!49801 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102077)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102077 (_ BitVec 32)) SeekEntryResult!13405)

(assert (=> b!1537137 (= res!1054363 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49250 a!2792) j!64) a!2792 mask!2480) lt!664574))))

(assert (=> b!1537137 (= lt!664574 (Found!13405 j!64))))

(declare-fun b!1537139 () Bool)

(declare-fun res!1054364 () Bool)

(assert (=> b!1537139 (=> (not res!1054364) (not e!855514))))

(declare-datatypes ((List!35904 0))(
  ( (Nil!35901) (Cons!35900 (h!37346 (_ BitVec 64)) (t!50605 List!35904)) )
))
(declare-fun arrayNoDuplicates!0 (array!102077 (_ BitVec 32) List!35904) Bool)

(assert (=> b!1537139 (= res!1054364 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35901))))

(declare-fun b!1537140 () Bool)

(declare-fun e!855511 () Bool)

(assert (=> b!1537140 (= e!855512 e!855511)))

(declare-fun res!1054366 () Bool)

(assert (=> b!1537140 (=> (not res!1054366) (not e!855511))))

(declare-fun lt!664576 () (_ BitVec 32))

(assert (=> b!1537140 (= res!1054366 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664576 #b00000000000000000000000000000000) (bvslt lt!664576 (size!49801 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537140 (= lt!664576 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537141 () Bool)

(declare-fun res!1054361 () Bool)

(assert (=> b!1537141 (=> (not res!1054361) (not e!855514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537141 (= res!1054361 (validKeyInArray!0 (select (arr!49250 a!2792) j!64)))))

(declare-fun b!1537142 () Bool)

(declare-fun res!1054371 () Bool)

(assert (=> b!1537142 (=> (not res!1054371) (not e!855514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102077 (_ BitVec 32)) Bool)

(assert (=> b!1537142 (= res!1054371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537143 () Bool)

(declare-fun res!1054362 () Bool)

(assert (=> b!1537143 (=> (not res!1054362) (not e!855514))))

(assert (=> b!1537143 (= res!1054362 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49801 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49801 a!2792)) (= (select (arr!49250 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537144 () Bool)

(declare-fun res!1054367 () Bool)

(assert (=> b!1537144 (=> (not res!1054367) (not e!855512))))

(assert (=> b!1537144 (= res!1054367 (not (= (select (arr!49250 a!2792) index!463) (select (arr!49250 a!2792) j!64))))))

(declare-fun b!1537145 () Bool)

(declare-fun res!1054370 () Bool)

(assert (=> b!1537145 (=> (not res!1054370) (not e!855514))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537145 (= res!1054370 (and (= (size!49801 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49801 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49801 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537138 () Bool)

(declare-fun e!855515 () Bool)

(assert (=> b!1537138 (= e!855511 e!855515)))

(declare-fun res!1054368 () Bool)

(assert (=> b!1537138 (=> (not res!1054368) (not e!855515))))

(declare-fun lt!664575 () SeekEntryResult!13405)

(assert (=> b!1537138 (= res!1054368 (= lt!664575 lt!664574))))

(assert (=> b!1537138 (= lt!664575 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664576 vacantIndex!5 (select (arr!49250 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1054365 () Bool)

(assert (=> start!131052 (=> (not res!1054365) (not e!855514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131052 (= res!1054365 (validMask!0 mask!2480))))

(assert (=> start!131052 e!855514))

(assert (=> start!131052 true))

(declare-fun array_inv!38195 (array!102077) Bool)

(assert (=> start!131052 (array_inv!38195 a!2792)))

(declare-fun b!1537146 () Bool)

(assert (=> b!1537146 (= e!855515 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(assert (=> b!1537146 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664576 vacantIndex!5 (select (store (arr!49250 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102078 (store (arr!49250 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49801 a!2792)) mask!2480) lt!664575)))

(declare-datatypes ((Unit!51334 0))(
  ( (Unit!51335) )
))
(declare-fun lt!664573 () Unit!51334)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51334)

(assert (=> b!1537146 (= lt!664573 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664576 vacantIndex!5 mask!2480))))

(declare-fun b!1537147 () Bool)

(declare-fun res!1054369 () Bool)

(assert (=> b!1537147 (=> (not res!1054369) (not e!855514))))

(assert (=> b!1537147 (= res!1054369 (validKeyInArray!0 (select (arr!49250 a!2792) i!951)))))

(assert (= (and start!131052 res!1054365) b!1537145))

(assert (= (and b!1537145 res!1054370) b!1537147))

(assert (= (and b!1537147 res!1054369) b!1537141))

(assert (= (and b!1537141 res!1054361) b!1537142))

(assert (= (and b!1537142 res!1054371) b!1537139))

(assert (= (and b!1537139 res!1054364) b!1537143))

(assert (= (and b!1537143 res!1054362) b!1537137))

(assert (= (and b!1537137 res!1054363) b!1537144))

(assert (= (and b!1537144 res!1054367) b!1537140))

(assert (= (and b!1537140 res!1054366) b!1537138))

(assert (= (and b!1537138 res!1054368) b!1537146))

(declare-fun m!1419685 () Bool)

(assert (=> b!1537143 m!1419685))

(declare-fun m!1419687 () Bool)

(assert (=> b!1537138 m!1419687))

(assert (=> b!1537138 m!1419687))

(declare-fun m!1419689 () Bool)

(assert (=> b!1537138 m!1419689))

(declare-fun m!1419691 () Bool)

(assert (=> b!1537142 m!1419691))

(assert (=> b!1537137 m!1419687))

(assert (=> b!1537137 m!1419687))

(declare-fun m!1419693 () Bool)

(assert (=> b!1537137 m!1419693))

(assert (=> b!1537141 m!1419687))

(assert (=> b!1537141 m!1419687))

(declare-fun m!1419695 () Bool)

(assert (=> b!1537141 m!1419695))

(declare-fun m!1419697 () Bool)

(assert (=> b!1537147 m!1419697))

(assert (=> b!1537147 m!1419697))

(declare-fun m!1419699 () Bool)

(assert (=> b!1537147 m!1419699))

(declare-fun m!1419701 () Bool)

(assert (=> b!1537146 m!1419701))

(declare-fun m!1419703 () Bool)

(assert (=> b!1537146 m!1419703))

(assert (=> b!1537146 m!1419703))

(declare-fun m!1419705 () Bool)

(assert (=> b!1537146 m!1419705))

(declare-fun m!1419707 () Bool)

(assert (=> b!1537146 m!1419707))

(declare-fun m!1419709 () Bool)

(assert (=> b!1537144 m!1419709))

(assert (=> b!1537144 m!1419687))

(declare-fun m!1419711 () Bool)

(assert (=> b!1537139 m!1419711))

(declare-fun m!1419713 () Bool)

(assert (=> start!131052 m!1419713))

(declare-fun m!1419715 () Bool)

(assert (=> start!131052 m!1419715))

(declare-fun m!1419717 () Bool)

(assert (=> b!1537140 m!1419717))

(check-sat (not b!1537147) (not b!1537141) (not b!1537138) (not start!131052) (not b!1537140) (not b!1537139) (not b!1537137) (not b!1537142) (not b!1537146))
(check-sat)
