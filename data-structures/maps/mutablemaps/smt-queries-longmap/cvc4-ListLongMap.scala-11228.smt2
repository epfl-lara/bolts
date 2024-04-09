; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131036 () Bool)

(assert start!131036)

(declare-fun b!1536873 () Bool)

(declare-fun res!1054099 () Bool)

(declare-fun e!855394 () Bool)

(assert (=> b!1536873 (=> (not res!1054099) (not e!855394))))

(declare-datatypes ((array!102061 0))(
  ( (array!102062 (arr!49242 (Array (_ BitVec 32) (_ BitVec 64))) (size!49793 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102061)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536873 (= res!1054099 (validKeyInArray!0 (select (arr!49242 a!2792) j!64)))))

(declare-fun res!1054106 () Bool)

(assert (=> start!131036 (=> (not res!1054106) (not e!855394))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131036 (= res!1054106 (validMask!0 mask!2480))))

(assert (=> start!131036 e!855394))

(assert (=> start!131036 true))

(declare-fun array_inv!38187 (array!102061) Bool)

(assert (=> start!131036 (array_inv!38187 a!2792)))

(declare-fun b!1536874 () Bool)

(declare-fun res!1054101 () Bool)

(assert (=> b!1536874 (=> (not res!1054101) (not e!855394))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536874 (= res!1054101 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49793 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49793 a!2792)) (= (select (arr!49242 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536875 () Bool)

(declare-fun res!1054097 () Bool)

(assert (=> b!1536875 (=> (not res!1054097) (not e!855394))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536875 (= res!1054097 (validKeyInArray!0 (select (arr!49242 a!2792) i!951)))))

(declare-fun b!1536876 () Bool)

(declare-fun res!1054105 () Bool)

(assert (=> b!1536876 (=> (not res!1054105) (not e!855394))))

(assert (=> b!1536876 (= res!1054105 (and (= (size!49793 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49793 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49793 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536877 () Bool)

(declare-fun e!855392 () Bool)

(declare-fun e!855393 () Bool)

(assert (=> b!1536877 (= e!855392 e!855393)))

(declare-fun res!1054103 () Bool)

(assert (=> b!1536877 (=> (not res!1054103) (not e!855393))))

(declare-datatypes ((SeekEntryResult!13397 0))(
  ( (MissingZero!13397 (index!55982 (_ BitVec 32))) (Found!13397 (index!55983 (_ BitVec 32))) (Intermediate!13397 (undefined!14209 Bool) (index!55984 (_ BitVec 32)) (x!137714 (_ BitVec 32))) (Undefined!13397) (MissingVacant!13397 (index!55985 (_ BitVec 32))) )
))
(declare-fun lt!664477 () SeekEntryResult!13397)

(declare-fun lt!664478 () SeekEntryResult!13397)

(assert (=> b!1536877 (= res!1054103 (= lt!664477 lt!664478))))

(declare-fun lt!664480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102061 (_ BitVec 32)) SeekEntryResult!13397)

(assert (=> b!1536877 (= lt!664477 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664480 vacantIndex!5 (select (arr!49242 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536878 () Bool)

(declare-fun res!1054104 () Bool)

(assert (=> b!1536878 (=> (not res!1054104) (not e!855394))))

(declare-datatypes ((List!35896 0))(
  ( (Nil!35893) (Cons!35892 (h!37338 (_ BitVec 64)) (t!50597 List!35896)) )
))
(declare-fun arrayNoDuplicates!0 (array!102061 (_ BitVec 32) List!35896) Bool)

(assert (=> b!1536878 (= res!1054104 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35893))))

(declare-fun b!1536879 () Bool)

(assert (=> b!1536879 (= e!855393 (not true))))

(assert (=> b!1536879 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664480 vacantIndex!5 (select (store (arr!49242 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102062 (store (arr!49242 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49793 a!2792)) mask!2480) lt!664477)))

(declare-datatypes ((Unit!51318 0))(
  ( (Unit!51319) )
))
(declare-fun lt!664479 () Unit!51318)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51318)

(assert (=> b!1536879 (= lt!664479 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664480 vacantIndex!5 mask!2480))))

(declare-fun b!1536880 () Bool)

(declare-fun res!1054102 () Bool)

(assert (=> b!1536880 (=> (not res!1054102) (not e!855394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102061 (_ BitVec 32)) Bool)

(assert (=> b!1536880 (= res!1054102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536881 () Bool)

(declare-fun e!855391 () Bool)

(assert (=> b!1536881 (= e!855391 e!855392)))

(declare-fun res!1054100 () Bool)

(assert (=> b!1536881 (=> (not res!1054100) (not e!855392))))

(assert (=> b!1536881 (= res!1054100 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664480 #b00000000000000000000000000000000) (bvslt lt!664480 (size!49793 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536881 (= lt!664480 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536882 () Bool)

(declare-fun res!1054098 () Bool)

(assert (=> b!1536882 (=> (not res!1054098) (not e!855391))))

(assert (=> b!1536882 (= res!1054098 (not (= (select (arr!49242 a!2792) index!463) (select (arr!49242 a!2792) j!64))))))

(declare-fun b!1536883 () Bool)

(assert (=> b!1536883 (= e!855394 e!855391)))

(declare-fun res!1054107 () Bool)

(assert (=> b!1536883 (=> (not res!1054107) (not e!855391))))

(assert (=> b!1536883 (= res!1054107 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49242 a!2792) j!64) a!2792 mask!2480) lt!664478))))

(assert (=> b!1536883 (= lt!664478 (Found!13397 j!64))))

(assert (= (and start!131036 res!1054106) b!1536876))

(assert (= (and b!1536876 res!1054105) b!1536875))

(assert (= (and b!1536875 res!1054097) b!1536873))

(assert (= (and b!1536873 res!1054099) b!1536880))

(assert (= (and b!1536880 res!1054102) b!1536878))

(assert (= (and b!1536878 res!1054104) b!1536874))

(assert (= (and b!1536874 res!1054101) b!1536883))

(assert (= (and b!1536883 res!1054107) b!1536882))

(assert (= (and b!1536882 res!1054098) b!1536881))

(assert (= (and b!1536881 res!1054100) b!1536877))

(assert (= (and b!1536877 res!1054103) b!1536879))

(declare-fun m!1419413 () Bool)

(assert (=> b!1536873 m!1419413))

(assert (=> b!1536873 m!1419413))

(declare-fun m!1419415 () Bool)

(assert (=> b!1536873 m!1419415))

(declare-fun m!1419417 () Bool)

(assert (=> start!131036 m!1419417))

(declare-fun m!1419419 () Bool)

(assert (=> start!131036 m!1419419))

(declare-fun m!1419421 () Bool)

(assert (=> b!1536880 m!1419421))

(declare-fun m!1419423 () Bool)

(assert (=> b!1536875 m!1419423))

(assert (=> b!1536875 m!1419423))

(declare-fun m!1419425 () Bool)

(assert (=> b!1536875 m!1419425))

(declare-fun m!1419427 () Bool)

(assert (=> b!1536881 m!1419427))

(declare-fun m!1419429 () Bool)

(assert (=> b!1536878 m!1419429))

(declare-fun m!1419431 () Bool)

(assert (=> b!1536874 m!1419431))

(assert (=> b!1536883 m!1419413))

(assert (=> b!1536883 m!1419413))

(declare-fun m!1419433 () Bool)

(assert (=> b!1536883 m!1419433))

(declare-fun m!1419435 () Bool)

(assert (=> b!1536882 m!1419435))

(assert (=> b!1536882 m!1419413))

(declare-fun m!1419437 () Bool)

(assert (=> b!1536879 m!1419437))

(declare-fun m!1419439 () Bool)

(assert (=> b!1536879 m!1419439))

(assert (=> b!1536879 m!1419439))

(declare-fun m!1419441 () Bool)

(assert (=> b!1536879 m!1419441))

(declare-fun m!1419443 () Bool)

(assert (=> b!1536879 m!1419443))

(assert (=> b!1536877 m!1419413))

(assert (=> b!1536877 m!1419413))

(declare-fun m!1419445 () Bool)

(assert (=> b!1536877 m!1419445))

(push 1)

(assert (not b!1536883))

