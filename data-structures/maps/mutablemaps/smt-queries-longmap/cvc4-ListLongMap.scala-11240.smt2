; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131108 () Bool)

(assert start!131108)

(declare-fun b!1537777 () Bool)

(declare-fun res!1055007 () Bool)

(declare-fun e!855745 () Bool)

(assert (=> b!1537777 (=> (not res!1055007) (not e!855745))))

(declare-datatypes ((array!102133 0))(
  ( (array!102134 (arr!49278 (Array (_ BitVec 32) (_ BitVec 64))) (size!49829 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102133)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537777 (= res!1055007 (validKeyInArray!0 (select (arr!49278 a!2792) j!64)))))

(declare-fun b!1537778 () Bool)

(declare-fun res!1055006 () Bool)

(assert (=> b!1537778 (=> (not res!1055006) (not e!855745))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537778 (= res!1055006 (validKeyInArray!0 (select (arr!49278 a!2792) i!951)))))

(declare-fun b!1537780 () Bool)

(declare-fun res!1055001 () Bool)

(assert (=> b!1537780 (=> (not res!1055001) (not e!855745))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102133 (_ BitVec 32)) Bool)

(assert (=> b!1537780 (= res!1055001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537781 () Bool)

(declare-fun res!1055002 () Bool)

(assert (=> b!1537781 (=> (not res!1055002) (not e!855745))))

(declare-datatypes ((List!35932 0))(
  ( (Nil!35929) (Cons!35928 (h!37374 (_ BitVec 64)) (t!50633 List!35932)) )
))
(declare-fun arrayNoDuplicates!0 (array!102133 (_ BitVec 32) List!35932) Bool)

(assert (=> b!1537781 (= res!1055002 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35929))))

(declare-fun b!1537779 () Bool)

(declare-fun res!1055005 () Bool)

(assert (=> b!1537779 (=> (not res!1055005) (not e!855745))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537779 (= res!1055005 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49829 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49829 a!2792)) (= (select (arr!49278 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1055003 () Bool)

(assert (=> start!131108 (=> (not res!1055003) (not e!855745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131108 (= res!1055003 (validMask!0 mask!2480))))

(assert (=> start!131108 e!855745))

(assert (=> start!131108 true))

(declare-fun array_inv!38223 (array!102133) Bool)

(assert (=> start!131108 (array_inv!38223 a!2792)))

(declare-fun b!1537782 () Bool)

(declare-fun res!1055004 () Bool)

(assert (=> b!1537782 (=> (not res!1055004) (not e!855745))))

(assert (=> b!1537782 (= res!1055004 (and (= (size!49829 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49829 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49829 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537783 () Bool)

(assert (=> b!1537783 (= e!855745 false)))

(declare-datatypes ((SeekEntryResult!13427 0))(
  ( (MissingZero!13427 (index!56102 (_ BitVec 32))) (Found!13427 (index!56103 (_ BitVec 32))) (Intermediate!13427 (undefined!14239 Bool) (index!56104 (_ BitVec 32)) (x!137840 (_ BitVec 32))) (Undefined!13427) (MissingVacant!13427 (index!56105 (_ BitVec 32))) )
))
(declare-fun lt!664723 () SeekEntryResult!13427)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102133 (_ BitVec 32)) SeekEntryResult!13427)

(assert (=> b!1537783 (= lt!664723 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49278 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!131108 res!1055003) b!1537782))

(assert (= (and b!1537782 res!1055004) b!1537778))

(assert (= (and b!1537778 res!1055006) b!1537777))

(assert (= (and b!1537777 res!1055007) b!1537780))

(assert (= (and b!1537780 res!1055001) b!1537781))

(assert (= (and b!1537781 res!1055002) b!1537779))

(assert (= (and b!1537779 res!1055005) b!1537783))

(declare-fun m!1420333 () Bool)

(assert (=> b!1537778 m!1420333))

(assert (=> b!1537778 m!1420333))

(declare-fun m!1420335 () Bool)

(assert (=> b!1537778 m!1420335))

(declare-fun m!1420337 () Bool)

(assert (=> b!1537781 m!1420337))

(declare-fun m!1420339 () Bool)

(assert (=> b!1537780 m!1420339))

(declare-fun m!1420341 () Bool)

(assert (=> b!1537777 m!1420341))

(assert (=> b!1537777 m!1420341))

(declare-fun m!1420343 () Bool)

(assert (=> b!1537777 m!1420343))

(assert (=> b!1537783 m!1420341))

(assert (=> b!1537783 m!1420341))

(declare-fun m!1420345 () Bool)

(assert (=> b!1537783 m!1420345))

(declare-fun m!1420347 () Bool)

(assert (=> b!1537779 m!1420347))

(declare-fun m!1420349 () Bool)

(assert (=> start!131108 m!1420349))

(declare-fun m!1420351 () Bool)

(assert (=> start!131108 m!1420351))

(push 1)

(assert (not b!1537780))

(assert (not b!1537778))

(assert (not b!1537777))

(assert (not b!1537781))

(assert (not b!1537783))

(assert (not start!131108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

