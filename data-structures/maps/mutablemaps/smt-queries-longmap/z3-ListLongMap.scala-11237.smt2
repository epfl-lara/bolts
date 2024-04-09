; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131088 () Bool)

(assert start!131088)

(declare-fun b!1537567 () Bool)

(declare-fun e!855685 () Bool)

(assert (=> b!1537567 (= e!855685 false)))

(declare-datatypes ((array!102113 0))(
  ( (array!102114 (arr!49268 (Array (_ BitVec 32) (_ BitVec 64))) (size!49819 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102113)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13417 0))(
  ( (MissingZero!13417 (index!56062 (_ BitVec 32))) (Found!13417 (index!56063 (_ BitVec 32))) (Intermediate!13417 (undefined!14229 Bool) (index!56064 (_ BitVec 32)) (x!137806 (_ BitVec 32))) (Undefined!13417) (MissingVacant!13417 (index!56065 (_ BitVec 32))) )
))
(declare-fun lt!664693 () SeekEntryResult!13417)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102113 (_ BitVec 32)) SeekEntryResult!13417)

(assert (=> b!1537567 (= lt!664693 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49268 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537568 () Bool)

(declare-fun res!1054792 () Bool)

(assert (=> b!1537568 (=> (not res!1054792) (not e!855685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102113 (_ BitVec 32)) Bool)

(assert (=> b!1537568 (= res!1054792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537569 () Bool)

(declare-fun res!1054795 () Bool)

(assert (=> b!1537569 (=> (not res!1054795) (not e!855685))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537569 (= res!1054795 (validKeyInArray!0 (select (arr!49268 a!2792) i!951)))))

(declare-fun res!1054791 () Bool)

(assert (=> start!131088 (=> (not res!1054791) (not e!855685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131088 (= res!1054791 (validMask!0 mask!2480))))

(assert (=> start!131088 e!855685))

(assert (=> start!131088 true))

(declare-fun array_inv!38213 (array!102113) Bool)

(assert (=> start!131088 (array_inv!38213 a!2792)))

(declare-fun b!1537570 () Bool)

(declare-fun res!1054793 () Bool)

(assert (=> b!1537570 (=> (not res!1054793) (not e!855685))))

(assert (=> b!1537570 (= res!1054793 (and (= (size!49819 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49819 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49819 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537571 () Bool)

(declare-fun res!1054796 () Bool)

(assert (=> b!1537571 (=> (not res!1054796) (not e!855685))))

(declare-datatypes ((List!35922 0))(
  ( (Nil!35919) (Cons!35918 (h!37364 (_ BitVec 64)) (t!50623 List!35922)) )
))
(declare-fun arrayNoDuplicates!0 (array!102113 (_ BitVec 32) List!35922) Bool)

(assert (=> b!1537571 (= res!1054796 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35919))))

(declare-fun b!1537572 () Bool)

(declare-fun res!1054794 () Bool)

(assert (=> b!1537572 (=> (not res!1054794) (not e!855685))))

(assert (=> b!1537572 (= res!1054794 (validKeyInArray!0 (select (arr!49268 a!2792) j!64)))))

(declare-fun b!1537573 () Bool)

(declare-fun res!1054797 () Bool)

(assert (=> b!1537573 (=> (not res!1054797) (not e!855685))))

(assert (=> b!1537573 (= res!1054797 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49819 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49819 a!2792)) (= (select (arr!49268 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!131088 res!1054791) b!1537570))

(assert (= (and b!1537570 res!1054793) b!1537569))

(assert (= (and b!1537569 res!1054795) b!1537572))

(assert (= (and b!1537572 res!1054794) b!1537568))

(assert (= (and b!1537568 res!1054792) b!1537571))

(assert (= (and b!1537571 res!1054796) b!1537573))

(assert (= (and b!1537573 res!1054797) b!1537567))

(declare-fun m!1420133 () Bool)

(assert (=> b!1537571 m!1420133))

(declare-fun m!1420135 () Bool)

(assert (=> b!1537568 m!1420135))

(declare-fun m!1420137 () Bool)

(assert (=> b!1537573 m!1420137))

(declare-fun m!1420139 () Bool)

(assert (=> b!1537567 m!1420139))

(assert (=> b!1537567 m!1420139))

(declare-fun m!1420141 () Bool)

(assert (=> b!1537567 m!1420141))

(assert (=> b!1537572 m!1420139))

(assert (=> b!1537572 m!1420139))

(declare-fun m!1420143 () Bool)

(assert (=> b!1537572 m!1420143))

(declare-fun m!1420145 () Bool)

(assert (=> start!131088 m!1420145))

(declare-fun m!1420147 () Bool)

(assert (=> start!131088 m!1420147))

(declare-fun m!1420149 () Bool)

(assert (=> b!1537569 m!1420149))

(assert (=> b!1537569 m!1420149))

(declare-fun m!1420151 () Bool)

(assert (=> b!1537569 m!1420151))

(check-sat (not b!1537569) (not b!1537567) (not start!131088) (not b!1537568) (not b!1537572) (not b!1537571))
