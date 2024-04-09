; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118448 () Bool)

(assert start!118448)

(declare-fun b!1384982 () Bool)

(declare-fun res!926402 () Bool)

(declare-fun e!784781 () Bool)

(assert (=> b!1384982 (=> (not res!926402) (not e!784781))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((array!94669 0))(
  ( (array!94670 (arr!45708 (Array (_ BitVec 32) (_ BitVec 64))) (size!46259 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94669)

(assert (=> b!1384982 (= res!926402 (and (= (size!46259 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46259 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46259 a!2938))))))

(declare-fun b!1384983 () Bool)

(declare-fun res!926397 () Bool)

(assert (=> b!1384983 (=> (not res!926397) (not e!784781))))

(declare-datatypes ((List!32416 0))(
  ( (Nil!32413) (Cons!32412 (h!33621 (_ BitVec 64)) (t!47117 List!32416)) )
))
(declare-fun arrayNoDuplicates!0 (array!94669 (_ BitVec 32) List!32416) Bool)

(assert (=> b!1384983 (= res!926397 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32413))))

(declare-fun b!1384984 () Bool)

(declare-fun res!926401 () Bool)

(assert (=> b!1384984 (=> (not res!926401) (not e!784781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384984 (= res!926401 (validKeyInArray!0 (select (arr!45708 a!2938) i!1065)))))

(declare-fun b!1384985 () Bool)

(assert (=> b!1384985 (= e!784781 false)))

(declare-datatypes ((Unit!46182 0))(
  ( (Unit!46183) )
))
(declare-fun lt!609100 () Unit!46182)

(declare-fun e!784778 () Unit!46182)

(assert (=> b!1384985 (= lt!609100 e!784778)))

(declare-fun c!128735 () Bool)

(declare-fun e!784779 () Bool)

(assert (=> b!1384985 (= c!128735 e!784779)))

(declare-fun res!926399 () Bool)

(assert (=> b!1384985 (=> (not res!926399) (not e!784779))))

(assert (=> b!1384985 (= res!926399 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384987 () Bool)

(declare-fun res!926400 () Bool)

(assert (=> b!1384987 (=> (not res!926400) (not e!784781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94669 (_ BitVec 32)) Bool)

(assert (=> b!1384987 (= res!926400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384988 () Bool)

(declare-fun lt!609098 () Unit!46182)

(assert (=> b!1384988 (= e!784778 lt!609098)))

(declare-fun lt!609099 () Unit!46182)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46182)

(assert (=> b!1384988 (= lt!609099 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10122 0))(
  ( (MissingZero!10122 (index!42858 (_ BitVec 32))) (Found!10122 (index!42859 (_ BitVec 32))) (Intermediate!10122 (undefined!10934 Bool) (index!42860 (_ BitVec 32)) (x!124358 (_ BitVec 32))) (Undefined!10122) (MissingVacant!10122 (index!42861 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94669 (_ BitVec 32)) SeekEntryResult!10122)

(assert (=> b!1384988 (= (seekEntryOrOpen!0 (select (arr!45708 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45708 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94670 (store (arr!45708 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46259 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46182)

(assert (=> b!1384988 (= lt!609098 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384988 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384989 () Bool)

(declare-fun Unit!46184 () Unit!46182)

(assert (=> b!1384989 (= e!784778 Unit!46184)))

(declare-fun b!1384990 () Bool)

(assert (=> b!1384990 (= e!784779 (validKeyInArray!0 (select (arr!45708 a!2938) startIndex!16)))))

(declare-fun b!1384986 () Bool)

(declare-fun res!926403 () Bool)

(assert (=> b!1384986 (=> (not res!926403) (not e!784781))))

(assert (=> b!1384986 (= res!926403 (and (not (= (select (arr!45708 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45708 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!926398 () Bool)

(assert (=> start!118448 (=> (not res!926398) (not e!784781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118448 (= res!926398 (validMask!0 mask!2987))))

(assert (=> start!118448 e!784781))

(assert (=> start!118448 true))

(declare-fun array_inv!34653 (array!94669) Bool)

(assert (=> start!118448 (array_inv!34653 a!2938)))

(assert (= (and start!118448 res!926398) b!1384982))

(assert (= (and b!1384982 res!926402) b!1384984))

(assert (= (and b!1384984 res!926401) b!1384983))

(assert (= (and b!1384983 res!926397) b!1384987))

(assert (= (and b!1384987 res!926400) b!1384986))

(assert (= (and b!1384986 res!926403) b!1384985))

(assert (= (and b!1384985 res!926399) b!1384990))

(assert (= (and b!1384985 c!128735) b!1384988))

(assert (= (and b!1384985 (not c!128735)) b!1384989))

(declare-fun m!1270361 () Bool)

(assert (=> b!1384990 m!1270361))

(assert (=> b!1384990 m!1270361))

(declare-fun m!1270363 () Bool)

(assert (=> b!1384990 m!1270363))

(declare-fun m!1270365 () Bool)

(assert (=> b!1384986 m!1270365))

(assert (=> b!1384984 m!1270365))

(assert (=> b!1384984 m!1270365))

(declare-fun m!1270367 () Bool)

(assert (=> b!1384984 m!1270367))

(declare-fun m!1270369 () Bool)

(assert (=> start!118448 m!1270369))

(declare-fun m!1270371 () Bool)

(assert (=> start!118448 m!1270371))

(declare-fun m!1270373 () Bool)

(assert (=> b!1384987 m!1270373))

(declare-fun m!1270375 () Bool)

(assert (=> b!1384983 m!1270375))

(declare-fun m!1270377 () Bool)

(assert (=> b!1384988 m!1270377))

(declare-fun m!1270379 () Bool)

(assert (=> b!1384988 m!1270379))

(assert (=> b!1384988 m!1270379))

(declare-fun m!1270381 () Bool)

(assert (=> b!1384988 m!1270381))

(declare-fun m!1270383 () Bool)

(assert (=> b!1384988 m!1270383))

(declare-fun m!1270385 () Bool)

(assert (=> b!1384988 m!1270385))

(assert (=> b!1384988 m!1270361))

(declare-fun m!1270387 () Bool)

(assert (=> b!1384988 m!1270387))

(assert (=> b!1384988 m!1270361))

(declare-fun m!1270389 () Bool)

(assert (=> b!1384988 m!1270389))

(push 1)

(assert (not b!1384984))

(assert (not b!1384990))

(assert (not start!118448))

(assert (not b!1384988))

(assert (not b!1384983))

