; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131080 () Bool)

(assert start!131080)

(declare-fun b!1537483 () Bool)

(declare-fun res!1054709 () Bool)

(declare-fun e!855661 () Bool)

(assert (=> b!1537483 (=> (not res!1054709) (not e!855661))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((array!102105 0))(
  ( (array!102106 (arr!49264 (Array (_ BitVec 32) (_ BitVec 64))) (size!49815 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102105)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1537483 (= res!1054709 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49815 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49815 a!2792)) (= (select (arr!49264 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537484 () Bool)

(assert (=> b!1537484 (= e!855661 false)))

(declare-datatypes ((SeekEntryResult!13413 0))(
  ( (MissingZero!13413 (index!56046 (_ BitVec 32))) (Found!13413 (index!56047 (_ BitVec 32))) (Intermediate!13413 (undefined!14225 Bool) (index!56048 (_ BitVec 32)) (x!137794 (_ BitVec 32))) (Undefined!13413) (MissingVacant!13413 (index!56049 (_ BitVec 32))) )
))
(declare-fun lt!664681 () SeekEntryResult!13413)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102105 (_ BitVec 32)) SeekEntryResult!13413)

(assert (=> b!1537484 (= lt!664681 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49264 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1054710 () Bool)

(assert (=> start!131080 (=> (not res!1054710) (not e!855661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131080 (= res!1054710 (validMask!0 mask!2480))))

(assert (=> start!131080 e!855661))

(assert (=> start!131080 true))

(declare-fun array_inv!38209 (array!102105) Bool)

(assert (=> start!131080 (array_inv!38209 a!2792)))

(declare-fun b!1537485 () Bool)

(declare-fun res!1054713 () Bool)

(assert (=> b!1537485 (=> (not res!1054713) (not e!855661))))

(declare-datatypes ((List!35918 0))(
  ( (Nil!35915) (Cons!35914 (h!37360 (_ BitVec 64)) (t!50619 List!35918)) )
))
(declare-fun arrayNoDuplicates!0 (array!102105 (_ BitVec 32) List!35918) Bool)

(assert (=> b!1537485 (= res!1054713 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35915))))

(declare-fun b!1537486 () Bool)

(declare-fun res!1054708 () Bool)

(assert (=> b!1537486 (=> (not res!1054708) (not e!855661))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537486 (= res!1054708 (and (= (size!49815 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49815 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49815 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537487 () Bool)

(declare-fun res!1054712 () Bool)

(assert (=> b!1537487 (=> (not res!1054712) (not e!855661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537487 (= res!1054712 (validKeyInArray!0 (select (arr!49264 a!2792) j!64)))))

(declare-fun b!1537488 () Bool)

(declare-fun res!1054711 () Bool)

(assert (=> b!1537488 (=> (not res!1054711) (not e!855661))))

(assert (=> b!1537488 (= res!1054711 (validKeyInArray!0 (select (arr!49264 a!2792) i!951)))))

(declare-fun b!1537489 () Bool)

(declare-fun res!1054707 () Bool)

(assert (=> b!1537489 (=> (not res!1054707) (not e!855661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102105 (_ BitVec 32)) Bool)

(assert (=> b!1537489 (= res!1054707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131080 res!1054710) b!1537486))

(assert (= (and b!1537486 res!1054708) b!1537488))

(assert (= (and b!1537488 res!1054711) b!1537487))

(assert (= (and b!1537487 res!1054712) b!1537489))

(assert (= (and b!1537489 res!1054707) b!1537485))

(assert (= (and b!1537485 res!1054713) b!1537483))

(assert (= (and b!1537483 res!1054709) b!1537484))

(declare-fun m!1420053 () Bool)

(assert (=> b!1537484 m!1420053))

(assert (=> b!1537484 m!1420053))

(declare-fun m!1420055 () Bool)

(assert (=> b!1537484 m!1420055))

(assert (=> b!1537487 m!1420053))

(assert (=> b!1537487 m!1420053))

(declare-fun m!1420057 () Bool)

(assert (=> b!1537487 m!1420057))

(declare-fun m!1420059 () Bool)

(assert (=> b!1537483 m!1420059))

(declare-fun m!1420061 () Bool)

(assert (=> b!1537489 m!1420061))

(declare-fun m!1420063 () Bool)

(assert (=> b!1537488 m!1420063))

(assert (=> b!1537488 m!1420063))

(declare-fun m!1420065 () Bool)

(assert (=> b!1537488 m!1420065))

(declare-fun m!1420067 () Bool)

(assert (=> start!131080 m!1420067))

(declare-fun m!1420069 () Bool)

(assert (=> start!131080 m!1420069))

(declare-fun m!1420071 () Bool)

(assert (=> b!1537485 m!1420071))

(push 1)

(assert (not b!1537489))

(assert (not b!1537487))

(assert (not b!1537488))

(assert (not b!1537484))

(assert (not b!1537485))

(assert (not start!131080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

