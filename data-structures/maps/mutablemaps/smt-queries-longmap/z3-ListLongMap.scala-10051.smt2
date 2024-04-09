; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118452 () Bool)

(assert start!118452)

(declare-fun b!1385036 () Bool)

(declare-fun e!784805 () Bool)

(declare-datatypes ((array!94673 0))(
  ( (array!94674 (arr!45710 (Array (_ BitVec 32) (_ BitVec 64))) (size!46261 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94673)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385036 (= e!784805 (validKeyInArray!0 (select (arr!45710 a!2938) startIndex!16)))))

(declare-fun b!1385037 () Bool)

(declare-datatypes ((Unit!46188 0))(
  ( (Unit!46189) )
))
(declare-fun e!784804 () Unit!46188)

(declare-fun Unit!46190 () Unit!46188)

(assert (=> b!1385037 (= e!784804 Unit!46190)))

(declare-fun b!1385038 () Bool)

(declare-fun res!926441 () Bool)

(declare-fun e!784803 () Bool)

(assert (=> b!1385038 (=> (not res!926441) (not e!784803))))

(declare-datatypes ((List!32418 0))(
  ( (Nil!32415) (Cons!32414 (h!33623 (_ BitVec 64)) (t!47119 List!32418)) )
))
(declare-fun arrayNoDuplicates!0 (array!94673 (_ BitVec 32) List!32418) Bool)

(assert (=> b!1385038 (= res!926441 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32415))))

(declare-fun b!1385039 () Bool)

(declare-fun res!926442 () Bool)

(assert (=> b!1385039 (=> (not res!926442) (not e!784803))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1385039 (= res!926442 (validKeyInArray!0 (select (arr!45710 a!2938) i!1065)))))

(declare-fun b!1385040 () Bool)

(declare-fun res!926443 () Bool)

(assert (=> b!1385040 (=> (not res!926443) (not e!784803))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385040 (= res!926443 (and (= (size!46261 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46261 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46261 a!2938))))))

(declare-fun b!1385041 () Bool)

(declare-fun res!926445 () Bool)

(assert (=> b!1385041 (=> (not res!926445) (not e!784803))))

(assert (=> b!1385041 (= res!926445 (and (not (= (select (arr!45710 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45710 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1385042 () Bool)

(declare-fun lt!609117 () Unit!46188)

(assert (=> b!1385042 (= e!784804 lt!609117)))

(declare-fun lt!609118 () Unit!46188)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46188)

(assert (=> b!1385042 (= lt!609118 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10124 0))(
  ( (MissingZero!10124 (index!42866 (_ BitVec 32))) (Found!10124 (index!42867 (_ BitVec 32))) (Intermediate!10124 (undefined!10936 Bool) (index!42868 (_ BitVec 32)) (x!124368 (_ BitVec 32))) (Undefined!10124) (MissingVacant!10124 (index!42869 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94673 (_ BitVec 32)) SeekEntryResult!10124)

(assert (=> b!1385042 (= (seekEntryOrOpen!0 (select (arr!45710 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45710 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94674 (store (arr!45710 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46261 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46188)

(assert (=> b!1385042 (= lt!609117 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94673 (_ BitVec 32)) Bool)

(assert (=> b!1385042 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1385043 () Bool)

(assert (=> b!1385043 (= e!784803 (and (bvsge startIndex!16 (bvsub (size!46261 a!2938) #b00000000000000000000000000000001)) (bvsgt startIndex!16 (size!46261 a!2938))))))

(declare-fun lt!609116 () Unit!46188)

(assert (=> b!1385043 (= lt!609116 e!784804)))

(declare-fun c!128741 () Bool)

(assert (=> b!1385043 (= c!128741 e!784805)))

(declare-fun res!926439 () Bool)

(assert (=> b!1385043 (=> (not res!926439) (not e!784805))))

(assert (=> b!1385043 (= res!926439 (not (= startIndex!16 i!1065)))))

(declare-fun b!1385044 () Bool)

(declare-fun res!926440 () Bool)

(assert (=> b!1385044 (=> (not res!926440) (not e!784803))))

(assert (=> b!1385044 (= res!926440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!926444 () Bool)

(assert (=> start!118452 (=> (not res!926444) (not e!784803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118452 (= res!926444 (validMask!0 mask!2987))))

(assert (=> start!118452 e!784803))

(assert (=> start!118452 true))

(declare-fun array_inv!34655 (array!94673) Bool)

(assert (=> start!118452 (array_inv!34655 a!2938)))

(assert (= (and start!118452 res!926444) b!1385040))

(assert (= (and b!1385040 res!926443) b!1385039))

(assert (= (and b!1385039 res!926442) b!1385038))

(assert (= (and b!1385038 res!926441) b!1385044))

(assert (= (and b!1385044 res!926440) b!1385041))

(assert (= (and b!1385041 res!926445) b!1385043))

(assert (= (and b!1385043 res!926439) b!1385036))

(assert (= (and b!1385043 c!128741) b!1385042))

(assert (= (and b!1385043 (not c!128741)) b!1385037))

(declare-fun m!1270421 () Bool)

(assert (=> b!1385041 m!1270421))

(declare-fun m!1270423 () Bool)

(assert (=> b!1385036 m!1270423))

(assert (=> b!1385036 m!1270423))

(declare-fun m!1270425 () Bool)

(assert (=> b!1385036 m!1270425))

(declare-fun m!1270427 () Bool)

(assert (=> b!1385038 m!1270427))

(declare-fun m!1270429 () Bool)

(assert (=> start!118452 m!1270429))

(declare-fun m!1270431 () Bool)

(assert (=> start!118452 m!1270431))

(declare-fun m!1270433 () Bool)

(assert (=> b!1385044 m!1270433))

(declare-fun m!1270435 () Bool)

(assert (=> b!1385042 m!1270435))

(declare-fun m!1270437 () Bool)

(assert (=> b!1385042 m!1270437))

(assert (=> b!1385042 m!1270437))

(declare-fun m!1270439 () Bool)

(assert (=> b!1385042 m!1270439))

(declare-fun m!1270441 () Bool)

(assert (=> b!1385042 m!1270441))

(declare-fun m!1270443 () Bool)

(assert (=> b!1385042 m!1270443))

(assert (=> b!1385042 m!1270423))

(declare-fun m!1270445 () Bool)

(assert (=> b!1385042 m!1270445))

(assert (=> b!1385042 m!1270423))

(declare-fun m!1270447 () Bool)

(assert (=> b!1385042 m!1270447))

(assert (=> b!1385039 m!1270421))

(assert (=> b!1385039 m!1270421))

(declare-fun m!1270449 () Bool)

(assert (=> b!1385039 m!1270449))

(check-sat (not b!1385039) (not start!118452) (not b!1385036) (not b!1385044) (not b!1385042) (not b!1385038))
(check-sat)
