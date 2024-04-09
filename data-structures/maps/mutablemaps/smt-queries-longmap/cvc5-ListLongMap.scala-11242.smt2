; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131116 () Bool)

(assert start!131116)

(declare-fun b!1537861 () Bool)

(declare-fun res!1055088 () Bool)

(declare-fun e!855769 () Bool)

(assert (=> b!1537861 (=> (not res!1055088) (not e!855769))))

(declare-datatypes ((array!102141 0))(
  ( (array!102142 (arr!49282 (Array (_ BitVec 32) (_ BitVec 64))) (size!49833 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102141)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537861 (= res!1055088 (validKeyInArray!0 (select (arr!49282 a!2792) i!951)))))

(declare-fun b!1537862 () Bool)

(declare-fun res!1055087 () Bool)

(assert (=> b!1537862 (=> (not res!1055087) (not e!855769))))

(declare-datatypes ((List!35936 0))(
  ( (Nil!35933) (Cons!35932 (h!37378 (_ BitVec 64)) (t!50637 List!35936)) )
))
(declare-fun arrayNoDuplicates!0 (array!102141 (_ BitVec 32) List!35936) Bool)

(assert (=> b!1537862 (= res!1055087 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35933))))

(declare-fun b!1537864 () Bool)

(declare-fun res!1055085 () Bool)

(assert (=> b!1537864 (=> (not res!1055085) (not e!855769))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1537864 (= res!1055085 (validKeyInArray!0 (select (arr!49282 a!2792) j!64)))))

(declare-fun b!1537865 () Bool)

(declare-fun res!1055089 () Bool)

(assert (=> b!1537865 (=> (not res!1055089) (not e!855769))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537865 (= res!1055089 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49833 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49833 a!2792)) (= (select (arr!49282 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537866 () Bool)

(assert (=> b!1537866 (= e!855769 false)))

(declare-datatypes ((SeekEntryResult!13431 0))(
  ( (MissingZero!13431 (index!56118 (_ BitVec 32))) (Found!13431 (index!56119 (_ BitVec 32))) (Intermediate!13431 (undefined!14243 Bool) (index!56120 (_ BitVec 32)) (x!137860 (_ BitVec 32))) (Undefined!13431) (MissingVacant!13431 (index!56121 (_ BitVec 32))) )
))
(declare-fun lt!664735 () SeekEntryResult!13431)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102141 (_ BitVec 32)) SeekEntryResult!13431)

(assert (=> b!1537866 (= lt!664735 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49282 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537867 () Bool)

(declare-fun res!1055090 () Bool)

(assert (=> b!1537867 (=> (not res!1055090) (not e!855769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102141 (_ BitVec 32)) Bool)

(assert (=> b!1537867 (= res!1055090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537863 () Bool)

(declare-fun res!1055086 () Bool)

(assert (=> b!1537863 (=> (not res!1055086) (not e!855769))))

(assert (=> b!1537863 (= res!1055086 (and (= (size!49833 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49833 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49833 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1055091 () Bool)

(assert (=> start!131116 (=> (not res!1055091) (not e!855769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131116 (= res!1055091 (validMask!0 mask!2480))))

(assert (=> start!131116 e!855769))

(assert (=> start!131116 true))

(declare-fun array_inv!38227 (array!102141) Bool)

(assert (=> start!131116 (array_inv!38227 a!2792)))

(assert (= (and start!131116 res!1055091) b!1537863))

(assert (= (and b!1537863 res!1055086) b!1537861))

(assert (= (and b!1537861 res!1055088) b!1537864))

(assert (= (and b!1537864 res!1055085) b!1537867))

(assert (= (and b!1537867 res!1055090) b!1537862))

(assert (= (and b!1537862 res!1055087) b!1537865))

(assert (= (and b!1537865 res!1055089) b!1537866))

(declare-fun m!1420413 () Bool)

(assert (=> start!131116 m!1420413))

(declare-fun m!1420415 () Bool)

(assert (=> start!131116 m!1420415))

(declare-fun m!1420417 () Bool)

(assert (=> b!1537865 m!1420417))

(declare-fun m!1420419 () Bool)

(assert (=> b!1537864 m!1420419))

(assert (=> b!1537864 m!1420419))

(declare-fun m!1420421 () Bool)

(assert (=> b!1537864 m!1420421))

(declare-fun m!1420423 () Bool)

(assert (=> b!1537867 m!1420423))

(declare-fun m!1420425 () Bool)

(assert (=> b!1537862 m!1420425))

(declare-fun m!1420427 () Bool)

(assert (=> b!1537861 m!1420427))

(assert (=> b!1537861 m!1420427))

(declare-fun m!1420429 () Bool)

(assert (=> b!1537861 m!1420429))

(assert (=> b!1537866 m!1420419))

(assert (=> b!1537866 m!1420419))

(declare-fun m!1420431 () Bool)

(assert (=> b!1537866 m!1420431))

(push 1)

(assert (not b!1537866))

(assert (not b!1537867))

(assert (not b!1537861))

(assert (not start!131116))

(assert (not b!1537864))

(assert (not b!1537862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

