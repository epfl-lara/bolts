; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131098 () Bool)

(assert start!131098)

(declare-fun b!1537672 () Bool)

(declare-fun res!1054899 () Bool)

(declare-fun e!855716 () Bool)

(assert (=> b!1537672 (=> (not res!1054899) (not e!855716))))

(declare-datatypes ((array!102123 0))(
  ( (array!102124 (arr!49273 (Array (_ BitVec 32) (_ BitVec 64))) (size!49824 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102123)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102123 (_ BitVec 32)) Bool)

(assert (=> b!1537672 (= res!1054899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537673 () Bool)

(declare-fun res!1054902 () Bool)

(assert (=> b!1537673 (=> (not res!1054902) (not e!855716))))

(declare-datatypes ((List!35927 0))(
  ( (Nil!35924) (Cons!35923 (h!37369 (_ BitVec 64)) (t!50628 List!35927)) )
))
(declare-fun arrayNoDuplicates!0 (array!102123 (_ BitVec 32) List!35927) Bool)

(assert (=> b!1537673 (= res!1054902 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35924))))

(declare-fun b!1537674 () Bool)

(declare-fun res!1054901 () Bool)

(assert (=> b!1537674 (=> (not res!1054901) (not e!855716))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537674 (= res!1054901 (validKeyInArray!0 (select (arr!49273 a!2792) j!64)))))

(declare-fun b!1537675 () Bool)

(declare-fun res!1054897 () Bool)

(assert (=> b!1537675 (=> (not res!1054897) (not e!855716))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537675 (= res!1054897 (validKeyInArray!0 (select (arr!49273 a!2792) i!951)))))

(declare-fun b!1537676 () Bool)

(declare-fun res!1054898 () Bool)

(assert (=> b!1537676 (=> (not res!1054898) (not e!855716))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1537676 (= res!1054898 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49824 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49824 a!2792)) (= (select (arr!49273 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537677 () Bool)

(assert (=> b!1537677 (= e!855716 false)))

(declare-datatypes ((SeekEntryResult!13422 0))(
  ( (MissingZero!13422 (index!56082 (_ BitVec 32))) (Found!13422 (index!56083 (_ BitVec 32))) (Intermediate!13422 (undefined!14234 Bool) (index!56084 (_ BitVec 32)) (x!137827 (_ BitVec 32))) (Undefined!13422) (MissingVacant!13422 (index!56085 (_ BitVec 32))) )
))
(declare-fun lt!664708 () SeekEntryResult!13422)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102123 (_ BitVec 32)) SeekEntryResult!13422)

(assert (=> b!1537677 (= lt!664708 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49273 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537678 () Bool)

(declare-fun res!1054896 () Bool)

(assert (=> b!1537678 (=> (not res!1054896) (not e!855716))))

(assert (=> b!1537678 (= res!1054896 (and (= (size!49824 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49824 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49824 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1054900 () Bool)

(assert (=> start!131098 (=> (not res!1054900) (not e!855716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131098 (= res!1054900 (validMask!0 mask!2480))))

(assert (=> start!131098 e!855716))

(assert (=> start!131098 true))

(declare-fun array_inv!38218 (array!102123) Bool)

(assert (=> start!131098 (array_inv!38218 a!2792)))

(assert (= (and start!131098 res!1054900) b!1537678))

(assert (= (and b!1537678 res!1054896) b!1537675))

(assert (= (and b!1537675 res!1054897) b!1537674))

(assert (= (and b!1537674 res!1054901) b!1537672))

(assert (= (and b!1537672 res!1054899) b!1537673))

(assert (= (and b!1537673 res!1054902) b!1537676))

(assert (= (and b!1537676 res!1054898) b!1537677))

(declare-fun m!1420233 () Bool)

(assert (=> b!1537677 m!1420233))

(assert (=> b!1537677 m!1420233))

(declare-fun m!1420235 () Bool)

(assert (=> b!1537677 m!1420235))

(declare-fun m!1420237 () Bool)

(assert (=> b!1537676 m!1420237))

(declare-fun m!1420239 () Bool)

(assert (=> start!131098 m!1420239))

(declare-fun m!1420241 () Bool)

(assert (=> start!131098 m!1420241))

(declare-fun m!1420243 () Bool)

(assert (=> b!1537675 m!1420243))

(assert (=> b!1537675 m!1420243))

(declare-fun m!1420245 () Bool)

(assert (=> b!1537675 m!1420245))

(assert (=> b!1537674 m!1420233))

(assert (=> b!1537674 m!1420233))

(declare-fun m!1420247 () Bool)

(assert (=> b!1537674 m!1420247))

(declare-fun m!1420249 () Bool)

(assert (=> b!1537673 m!1420249))

(declare-fun m!1420251 () Bool)

(assert (=> b!1537672 m!1420251))

(push 1)

(assert (not b!1537674))

(assert (not b!1537675))

(assert (not b!1537673))

(assert (not b!1537672))

(assert (not b!1537677))

(assert (not start!131098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

