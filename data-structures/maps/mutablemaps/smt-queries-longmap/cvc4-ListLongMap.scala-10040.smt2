; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118388 () Bool)

(assert start!118388)

(declare-fun b!1384136 () Bool)

(declare-fun res!925732 () Bool)

(declare-fun e!784383 () Bool)

(assert (=> b!1384136 (=> (not res!925732) (not e!784383))))

(declare-datatypes ((array!94609 0))(
  ( (array!94610 (arr!45678 (Array (_ BitVec 32) (_ BitVec 64))) (size!46229 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94609)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384136 (= res!925732 (and (not (= (select (arr!45678 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45678 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384137 () Bool)

(declare-datatypes ((Unit!46092 0))(
  ( (Unit!46093) )
))
(declare-fun e!784385 () Unit!46092)

(declare-fun Unit!46094 () Unit!46092)

(assert (=> b!1384137 (= e!784385 Unit!46094)))

(declare-fun b!1384138 () Bool)

(assert (=> b!1384138 (= e!784383 false)))

(declare-fun lt!608756 () Unit!46092)

(assert (=> b!1384138 (= lt!608756 e!784385)))

(declare-fun c!128645 () Bool)

(declare-fun e!784384 () Bool)

(assert (=> b!1384138 (= c!128645 e!784384)))

(declare-fun res!925733 () Bool)

(assert (=> b!1384138 (=> (not res!925733) (not e!784384))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1384138 (= res!925733 (not (= startIndex!16 i!1065)))))

(declare-fun res!925737 () Bool)

(assert (=> start!118388 (=> (not res!925737) (not e!784383))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118388 (= res!925737 (validMask!0 mask!2987))))

(assert (=> start!118388 e!784383))

(assert (=> start!118388 true))

(declare-fun array_inv!34623 (array!94609) Bool)

(assert (=> start!118388 (array_inv!34623 a!2938)))

(declare-fun b!1384139 () Bool)

(declare-fun res!925734 () Bool)

(assert (=> b!1384139 (=> (not res!925734) (not e!784383))))

(assert (=> b!1384139 (= res!925734 (and (= (size!46229 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46229 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46229 a!2938))))))

(declare-fun b!1384140 () Bool)

(declare-fun res!925736 () Bool)

(assert (=> b!1384140 (=> (not res!925736) (not e!784383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384140 (= res!925736 (validKeyInArray!0 (select (arr!45678 a!2938) i!1065)))))

(declare-fun b!1384141 () Bool)

(declare-fun res!925731 () Bool)

(assert (=> b!1384141 (=> (not res!925731) (not e!784383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94609 (_ BitVec 32)) Bool)

(assert (=> b!1384141 (= res!925731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384142 () Bool)

(assert (=> b!1384142 (= e!784384 (validKeyInArray!0 (select (arr!45678 a!2938) startIndex!16)))))

(declare-fun b!1384143 () Bool)

(declare-fun res!925735 () Bool)

(assert (=> b!1384143 (=> (not res!925735) (not e!784383))))

(declare-datatypes ((List!32386 0))(
  ( (Nil!32383) (Cons!32382 (h!33591 (_ BitVec 64)) (t!47087 List!32386)) )
))
(declare-fun arrayNoDuplicates!0 (array!94609 (_ BitVec 32) List!32386) Bool)

(assert (=> b!1384143 (= res!925735 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32383))))

(declare-fun b!1384144 () Bool)

(declare-fun lt!608757 () Unit!46092)

(assert (=> b!1384144 (= e!784385 lt!608757)))

(declare-fun lt!608758 () Unit!46092)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46092)

(assert (=> b!1384144 (= lt!608758 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10092 0))(
  ( (MissingZero!10092 (index!42738 (_ BitVec 32))) (Found!10092 (index!42739 (_ BitVec 32))) (Intermediate!10092 (undefined!10904 Bool) (index!42740 (_ BitVec 32)) (x!124248 (_ BitVec 32))) (Undefined!10092) (MissingVacant!10092 (index!42741 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94609 (_ BitVec 32)) SeekEntryResult!10092)

(assert (=> b!1384144 (= (seekEntryOrOpen!0 (select (arr!45678 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45678 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94610 (store (arr!45678 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46229 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94609 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46092)

(assert (=> b!1384144 (= lt!608757 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384144 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118388 res!925737) b!1384139))

(assert (= (and b!1384139 res!925734) b!1384140))

(assert (= (and b!1384140 res!925736) b!1384143))

(assert (= (and b!1384143 res!925735) b!1384141))

(assert (= (and b!1384141 res!925731) b!1384136))

(assert (= (and b!1384136 res!925732) b!1384138))

(assert (= (and b!1384138 res!925733) b!1384142))

(assert (= (and b!1384138 c!128645) b!1384144))

(assert (= (and b!1384138 (not c!128645)) b!1384137))

(declare-fun m!1269413 () Bool)

(assert (=> b!1384144 m!1269413))

(declare-fun m!1269415 () Bool)

(assert (=> b!1384144 m!1269415))

(assert (=> b!1384144 m!1269415))

(declare-fun m!1269417 () Bool)

(assert (=> b!1384144 m!1269417))

(declare-fun m!1269419 () Bool)

(assert (=> b!1384144 m!1269419))

(declare-fun m!1269421 () Bool)

(assert (=> b!1384144 m!1269421))

(declare-fun m!1269423 () Bool)

(assert (=> b!1384144 m!1269423))

(declare-fun m!1269425 () Bool)

(assert (=> b!1384144 m!1269425))

(assert (=> b!1384144 m!1269423))

(declare-fun m!1269427 () Bool)

(assert (=> b!1384144 m!1269427))

(assert (=> b!1384142 m!1269423))

(assert (=> b!1384142 m!1269423))

(declare-fun m!1269429 () Bool)

(assert (=> b!1384142 m!1269429))

(declare-fun m!1269431 () Bool)

(assert (=> b!1384136 m!1269431))

(declare-fun m!1269433 () Bool)

(assert (=> start!118388 m!1269433))

(declare-fun m!1269435 () Bool)

(assert (=> start!118388 m!1269435))

(declare-fun m!1269437 () Bool)

(assert (=> b!1384143 m!1269437))

(declare-fun m!1269439 () Bool)

(assert (=> b!1384141 m!1269439))

(assert (=> b!1384140 m!1269431))

(assert (=> b!1384140 m!1269431))

(declare-fun m!1269441 () Bool)

(assert (=> b!1384140 m!1269441))

(push 1)

(assert (not b!1384143))

(assert (not b!1384140))

(assert (not b!1384144))

(assert (not b!1384142))

(assert (not start!118388))

(assert (not b!1384141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

