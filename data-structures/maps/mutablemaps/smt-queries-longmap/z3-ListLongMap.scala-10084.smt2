; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118680 () Bool)

(assert start!118680)

(declare-fun res!928159 () Bool)

(declare-fun e!785664 () Bool)

(assert (=> start!118680 (=> (not res!928159) (not e!785664))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118680 (= res!928159 (validMask!0 mask!2987))))

(assert (=> start!118680 e!785664))

(assert (=> start!118680 true))

(declare-datatypes ((array!94874 0))(
  ( (array!94875 (arr!45809 (Array (_ BitVec 32) (_ BitVec 64))) (size!46360 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94874)

(declare-fun array_inv!34754 (array!94874) Bool)

(assert (=> start!118680 (array_inv!34754 a!2938)))

(declare-fun b!1386985 () Bool)

(declare-fun res!928157 () Bool)

(assert (=> b!1386985 (=> (not res!928157) (not e!785664))))

(declare-datatypes ((List!32517 0))(
  ( (Nil!32514) (Cons!32513 (h!33722 (_ BitVec 64)) (t!47218 List!32517)) )
))
(declare-fun arrayNoDuplicates!0 (array!94874 (_ BitVec 32) List!32517) Bool)

(assert (=> b!1386985 (= res!928157 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32514))))

(declare-fun b!1386986 () Bool)

(declare-datatypes ((Unit!46321 0))(
  ( (Unit!46322) )
))
(declare-fun e!785663 () Unit!46321)

(declare-fun Unit!46323 () Unit!46321)

(assert (=> b!1386986 (= e!785663 Unit!46323)))

(declare-fun b!1386987 () Bool)

(declare-fun lt!609622 () Unit!46321)

(assert (=> b!1386987 (= e!785663 lt!609622)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!609623 () Unit!46321)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94874 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46321)

(assert (=> b!1386987 (= lt!609623 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun lt!609624 () array!94874)

(declare-datatypes ((SeekEntryResult!10174 0))(
  ( (MissingZero!10174 (index!43066 (_ BitVec 32))) (Found!10174 (index!43067 (_ BitVec 32))) (Intermediate!10174 (undefined!10986 Bool) (index!43068 (_ BitVec 32)) (x!124682 (_ BitVec 32))) (Undefined!10174) (MissingVacant!10174 (index!43069 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94874 (_ BitVec 32)) SeekEntryResult!10174)

(assert (=> b!1386987 (= (seekEntryOrOpen!0 (select (arr!45809 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45809 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609624 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94874 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46321)

(assert (=> b!1386987 (= lt!609622 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94874 (_ BitVec 32)) Bool)

(assert (=> b!1386987 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386988 () Bool)

(declare-fun res!928160 () Bool)

(assert (=> b!1386988 (=> (not res!928160) (not e!785664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386988 (= res!928160 (validKeyInArray!0 (select (arr!45809 a!2938) i!1065)))))

(declare-fun b!1386989 () Bool)

(declare-fun e!785662 () Bool)

(assert (=> b!1386989 (= e!785664 e!785662)))

(declare-fun res!928155 () Bool)

(assert (=> b!1386989 (=> (not res!928155) (not e!785662))))

(assert (=> b!1386989 (= res!928155 (and (bvslt startIndex!16 (bvsub (size!46360 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609625 () Unit!46321)

(assert (=> b!1386989 (= lt!609625 e!785663)))

(declare-fun c!128858 () Bool)

(declare-fun e!785666 () Bool)

(assert (=> b!1386989 (= c!128858 e!785666)))

(declare-fun res!928161 () Bool)

(assert (=> b!1386989 (=> (not res!928161) (not e!785666))))

(assert (=> b!1386989 (= res!928161 (not (= startIndex!16 i!1065)))))

(assert (=> b!1386989 (= lt!609624 (array!94875 (store (arr!45809 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46360 a!2938)))))

(declare-fun b!1386990 () Bool)

(declare-fun res!928158 () Bool)

(assert (=> b!1386990 (=> (not res!928158) (not e!785664))))

(assert (=> b!1386990 (= res!928158 (and (not (= (select (arr!45809 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45809 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386991 () Bool)

(declare-fun res!928156 () Bool)

(assert (=> b!1386991 (=> (not res!928156) (not e!785664))))

(assert (=> b!1386991 (= res!928156 (and (= (size!46360 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46360 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46360 a!2938))))))

(declare-fun b!1386992 () Bool)

(assert (=> b!1386992 (= e!785666 (validKeyInArray!0 (select (arr!45809 a!2938) startIndex!16)))))

(declare-fun b!1386993 () Bool)

(assert (=> b!1386993 (= e!785662 (not true))))

(assert (=> b!1386993 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609624 mask!2987)))

(declare-fun lt!609621 () Unit!46321)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94874 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46321)

(assert (=> b!1386993 (= lt!609621 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1386994 () Bool)

(declare-fun res!928154 () Bool)

(assert (=> b!1386994 (=> (not res!928154) (not e!785664))))

(assert (=> b!1386994 (= res!928154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118680 res!928159) b!1386991))

(assert (= (and b!1386991 res!928156) b!1386988))

(assert (= (and b!1386988 res!928160) b!1386985))

(assert (= (and b!1386985 res!928157) b!1386994))

(assert (= (and b!1386994 res!928154) b!1386990))

(assert (= (and b!1386990 res!928158) b!1386989))

(assert (= (and b!1386989 res!928161) b!1386992))

(assert (= (and b!1386989 c!128858) b!1386987))

(assert (= (and b!1386989 (not c!128858)) b!1386986))

(assert (= (and b!1386989 res!928155) b!1386993))

(declare-fun m!1272477 () Bool)

(assert (=> start!118680 m!1272477))

(declare-fun m!1272479 () Bool)

(assert (=> start!118680 m!1272479))

(declare-fun m!1272481 () Bool)

(assert (=> b!1386990 m!1272481))

(declare-fun m!1272483 () Bool)

(assert (=> b!1386993 m!1272483))

(declare-fun m!1272485 () Bool)

(assert (=> b!1386993 m!1272485))

(declare-fun m!1272487 () Bool)

(assert (=> b!1386987 m!1272487))

(declare-fun m!1272489 () Bool)

(assert (=> b!1386987 m!1272489))

(declare-fun m!1272491 () Bool)

(assert (=> b!1386987 m!1272491))

(declare-fun m!1272493 () Bool)

(assert (=> b!1386987 m!1272493))

(assert (=> b!1386987 m!1272489))

(declare-fun m!1272495 () Bool)

(assert (=> b!1386987 m!1272495))

(declare-fun m!1272497 () Bool)

(assert (=> b!1386987 m!1272497))

(declare-fun m!1272499 () Bool)

(assert (=> b!1386987 m!1272499))

(assert (=> b!1386987 m!1272497))

(declare-fun m!1272501 () Bool)

(assert (=> b!1386987 m!1272501))

(assert (=> b!1386989 m!1272491))

(assert (=> b!1386992 m!1272497))

(assert (=> b!1386992 m!1272497))

(declare-fun m!1272503 () Bool)

(assert (=> b!1386992 m!1272503))

(assert (=> b!1386988 m!1272481))

(assert (=> b!1386988 m!1272481))

(declare-fun m!1272505 () Bool)

(assert (=> b!1386988 m!1272505))

(declare-fun m!1272507 () Bool)

(assert (=> b!1386985 m!1272507))

(declare-fun m!1272509 () Bool)

(assert (=> b!1386994 m!1272509))

(check-sat (not b!1386988) (not b!1386993) (not start!118680) (not b!1386985) (not b!1386994) (not b!1386992) (not b!1386987))
(check-sat)
