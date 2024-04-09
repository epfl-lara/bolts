; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118676 () Bool)

(assert start!118676)

(declare-fun b!1386926 () Bool)

(declare-datatypes ((Unit!46315 0))(
  ( (Unit!46316) )
))
(declare-fun e!785633 () Unit!46315)

(declare-fun Unit!46317 () Unit!46315)

(assert (=> b!1386926 (= e!785633 Unit!46317)))

(declare-fun b!1386927 () Bool)

(declare-fun res!928113 () Bool)

(declare-fun e!785634 () Bool)

(assert (=> b!1386927 (=> (not res!928113) (not e!785634))))

(declare-datatypes ((array!94870 0))(
  ( (array!94871 (arr!45807 (Array (_ BitVec 32) (_ BitVec 64))) (size!46358 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94870)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94870 (_ BitVec 32)) Bool)

(assert (=> b!1386927 (= res!928113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386929 () Bool)

(declare-fun res!928111 () Bool)

(assert (=> b!1386929 (=> (not res!928111) (not e!785634))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386929 (= res!928111 (and (= (size!46358 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46358 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46358 a!2938))))))

(declare-fun b!1386930 () Bool)

(declare-fun res!928112 () Bool)

(assert (=> b!1386930 (=> (not res!928112) (not e!785634))))

(declare-datatypes ((List!32515 0))(
  ( (Nil!32512) (Cons!32511 (h!33720 (_ BitVec 64)) (t!47216 List!32515)) )
))
(declare-fun arrayNoDuplicates!0 (array!94870 (_ BitVec 32) List!32515) Bool)

(assert (=> b!1386930 (= res!928112 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32512))))

(declare-fun b!1386931 () Bool)

(declare-fun e!785636 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386931 (= e!785636 (validKeyInArray!0 (select (arr!45807 a!2938) startIndex!16)))))

(declare-fun b!1386932 () Bool)

(declare-fun res!928110 () Bool)

(assert (=> b!1386932 (=> (not res!928110) (not e!785634))))

(assert (=> b!1386932 (= res!928110 (validKeyInArray!0 (select (arr!45807 a!2938) i!1065)))))

(declare-fun b!1386933 () Bool)

(declare-fun res!928109 () Bool)

(assert (=> b!1386933 (=> (not res!928109) (not e!785634))))

(assert (=> b!1386933 (= res!928109 (and (not (= (select (arr!45807 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45807 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386934 () Bool)

(declare-fun lt!609593 () Unit!46315)

(assert (=> b!1386934 (= e!785633 lt!609593)))

(declare-fun lt!609594 () Unit!46315)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94870 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46315)

(assert (=> b!1386934 (= lt!609594 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10172 0))(
  ( (MissingZero!10172 (index!43058 (_ BitVec 32))) (Found!10172 (index!43059 (_ BitVec 32))) (Intermediate!10172 (undefined!10984 Bool) (index!43060 (_ BitVec 32)) (x!124672 (_ BitVec 32))) (Undefined!10172) (MissingVacant!10172 (index!43061 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94870 (_ BitVec 32)) SeekEntryResult!10172)

(assert (=> b!1386934 (= (seekEntryOrOpen!0 (select (arr!45807 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45807 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94871 (store (arr!45807 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46358 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94870 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46315)

(assert (=> b!1386934 (= lt!609593 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386934 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun res!928108 () Bool)

(assert (=> start!118676 (=> (not res!928108) (not e!785634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118676 (= res!928108 (validMask!0 mask!2987))))

(assert (=> start!118676 e!785634))

(assert (=> start!118676 true))

(declare-fun array_inv!34752 (array!94870) Bool)

(assert (=> start!118676 (array_inv!34752 a!2938)))

(declare-fun b!1386928 () Bool)

(assert (=> b!1386928 (= e!785634 (and (bvslt startIndex!16 (bvsub (size!46358 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000) (bvsge (bvsub (size!46358 a!2938) (bvadd #b00000000000000000000000000000001 startIndex!16)) (bvsub (size!46358 a!2938) startIndex!16))))))

(declare-fun lt!609595 () Unit!46315)

(assert (=> b!1386928 (= lt!609595 e!785633)))

(declare-fun c!128852 () Bool)

(assert (=> b!1386928 (= c!128852 e!785636)))

(declare-fun res!928107 () Bool)

(assert (=> b!1386928 (=> (not res!928107) (not e!785636))))

(assert (=> b!1386928 (= res!928107 (not (= startIndex!16 i!1065)))))

(assert (= (and start!118676 res!928108) b!1386929))

(assert (= (and b!1386929 res!928111) b!1386932))

(assert (= (and b!1386932 res!928110) b!1386930))

(assert (= (and b!1386930 res!928112) b!1386927))

(assert (= (and b!1386927 res!928113) b!1386933))

(assert (= (and b!1386933 res!928109) b!1386928))

(assert (= (and b!1386928 res!928107) b!1386931))

(assert (= (and b!1386928 c!128852) b!1386934))

(assert (= (and b!1386928 (not c!128852)) b!1386926))

(declare-fun m!1272413 () Bool)

(assert (=> b!1386930 m!1272413))

(declare-fun m!1272415 () Bool)

(assert (=> b!1386927 m!1272415))

(declare-fun m!1272417 () Bool)

(assert (=> start!118676 m!1272417))

(declare-fun m!1272419 () Bool)

(assert (=> start!118676 m!1272419))

(declare-fun m!1272421 () Bool)

(assert (=> b!1386934 m!1272421))

(declare-fun m!1272423 () Bool)

(assert (=> b!1386934 m!1272423))

(assert (=> b!1386934 m!1272423))

(declare-fun m!1272425 () Bool)

(assert (=> b!1386934 m!1272425))

(declare-fun m!1272427 () Bool)

(assert (=> b!1386934 m!1272427))

(declare-fun m!1272429 () Bool)

(assert (=> b!1386934 m!1272429))

(declare-fun m!1272431 () Bool)

(assert (=> b!1386934 m!1272431))

(declare-fun m!1272433 () Bool)

(assert (=> b!1386934 m!1272433))

(assert (=> b!1386934 m!1272431))

(declare-fun m!1272435 () Bool)

(assert (=> b!1386934 m!1272435))

(assert (=> b!1386931 m!1272431))

(assert (=> b!1386931 m!1272431))

(declare-fun m!1272437 () Bool)

(assert (=> b!1386931 m!1272437))

(declare-fun m!1272439 () Bool)

(assert (=> b!1386932 m!1272439))

(assert (=> b!1386932 m!1272439))

(declare-fun m!1272441 () Bool)

(assert (=> b!1386932 m!1272441))

(assert (=> b!1386933 m!1272439))

(push 1)

(assert (not b!1386930))

(assert (not b!1386932))

(assert (not b!1386934))

(assert (not b!1386931))

(assert (not b!1386927))

(assert (not start!118676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

