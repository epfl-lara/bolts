; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131092 () Bool)

(assert start!131092)

(declare-fun b!1537610 () Bool)

(declare-fun res!1054834 () Bool)

(declare-fun e!855697 () Bool)

(assert (=> b!1537610 (=> (not res!1054834) (not e!855697))))

(declare-datatypes ((array!102117 0))(
  ( (array!102118 (arr!49270 (Array (_ BitVec 32) (_ BitVec 64))) (size!49821 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102117)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537610 (= res!1054834 (and (= (size!49821 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49821 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49821 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537611 () Bool)

(declare-fun res!1054838 () Bool)

(assert (=> b!1537611 (=> (not res!1054838) (not e!855697))))

(declare-datatypes ((List!35924 0))(
  ( (Nil!35921) (Cons!35920 (h!37366 (_ BitVec 64)) (t!50625 List!35924)) )
))
(declare-fun arrayNoDuplicates!0 (array!102117 (_ BitVec 32) List!35924) Bool)

(assert (=> b!1537611 (= res!1054838 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35921))))

(declare-fun b!1537612 () Bool)

(declare-fun res!1054835 () Bool)

(assert (=> b!1537612 (=> (not res!1054835) (not e!855697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537612 (= res!1054835 (validKeyInArray!0 (select (arr!49270 a!2792) j!64)))))

(declare-fun b!1537613 () Bool)

(declare-fun res!1054837 () Bool)

(assert (=> b!1537613 (=> (not res!1054837) (not e!855697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102117 (_ BitVec 32)) Bool)

(assert (=> b!1537613 (= res!1054837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537614 () Bool)

(declare-fun res!1054839 () Bool)

(assert (=> b!1537614 (=> (not res!1054839) (not e!855697))))

(assert (=> b!1537614 (= res!1054839 (validKeyInArray!0 (select (arr!49270 a!2792) i!951)))))

(declare-fun b!1537615 () Bool)

(declare-fun res!1054836 () Bool)

(assert (=> b!1537615 (=> (not res!1054836) (not e!855697))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537615 (= res!1054836 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49821 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49821 a!2792)) (= (select (arr!49270 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1054833 () Bool)

(assert (=> start!131092 (=> (not res!1054833) (not e!855697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131092 (= res!1054833 (validMask!0 mask!2480))))

(assert (=> start!131092 e!855697))

(assert (=> start!131092 true))

(declare-fun array_inv!38215 (array!102117) Bool)

(assert (=> start!131092 (array_inv!38215 a!2792)))

(declare-fun b!1537609 () Bool)

(assert (=> b!1537609 (= e!855697 false)))

(declare-datatypes ((SeekEntryResult!13419 0))(
  ( (MissingZero!13419 (index!56070 (_ BitVec 32))) (Found!13419 (index!56071 (_ BitVec 32))) (Intermediate!13419 (undefined!14231 Bool) (index!56072 (_ BitVec 32)) (x!137816 (_ BitVec 32))) (Undefined!13419) (MissingVacant!13419 (index!56073 (_ BitVec 32))) )
))
(declare-fun lt!664699 () SeekEntryResult!13419)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102117 (_ BitVec 32)) SeekEntryResult!13419)

(assert (=> b!1537609 (= lt!664699 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49270 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!131092 res!1054833) b!1537610))

(assert (= (and b!1537610 res!1054834) b!1537614))

(assert (= (and b!1537614 res!1054839) b!1537612))

(assert (= (and b!1537612 res!1054835) b!1537613))

(assert (= (and b!1537613 res!1054837) b!1537611))

(assert (= (and b!1537611 res!1054838) b!1537615))

(assert (= (and b!1537615 res!1054836) b!1537609))

(declare-fun m!1420173 () Bool)

(assert (=> b!1537612 m!1420173))

(assert (=> b!1537612 m!1420173))

(declare-fun m!1420175 () Bool)

(assert (=> b!1537612 m!1420175))

(declare-fun m!1420177 () Bool)

(assert (=> b!1537611 m!1420177))

(declare-fun m!1420179 () Bool)

(assert (=> b!1537615 m!1420179))

(declare-fun m!1420181 () Bool)

(assert (=> start!131092 m!1420181))

(declare-fun m!1420183 () Bool)

(assert (=> start!131092 m!1420183))

(declare-fun m!1420185 () Bool)

(assert (=> b!1537613 m!1420185))

(declare-fun m!1420187 () Bool)

(assert (=> b!1537614 m!1420187))

(assert (=> b!1537614 m!1420187))

(declare-fun m!1420189 () Bool)

(assert (=> b!1537614 m!1420189))

(assert (=> b!1537609 m!1420173))

(assert (=> b!1537609 m!1420173))

(declare-fun m!1420191 () Bool)

(assert (=> b!1537609 m!1420191))

(push 1)

(assert (not b!1537613))

(assert (not b!1537609))

(assert (not start!131092))

(assert (not b!1537611))

(assert (not b!1537614))

(assert (not b!1537612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

