; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118386 () Bool)

(assert start!118386)

(declare-fun b!1384109 () Bool)

(declare-fun res!925711 () Bool)

(declare-fun e!784372 () Bool)

(assert (=> b!1384109 (=> (not res!925711) (not e!784372))))

(declare-datatypes ((array!94607 0))(
  ( (array!94608 (arr!45677 (Array (_ BitVec 32) (_ BitVec 64))) (size!46228 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94607)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94607 (_ BitVec 32)) Bool)

(assert (=> b!1384109 (= res!925711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!925713 () Bool)

(assert (=> start!118386 (=> (not res!925713) (not e!784372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118386 (= res!925713 (validMask!0 mask!2987))))

(assert (=> start!118386 e!784372))

(assert (=> start!118386 true))

(declare-fun array_inv!34622 (array!94607) Bool)

(assert (=> start!118386 (array_inv!34622 a!2938)))

(declare-fun b!1384110 () Bool)

(declare-datatypes ((Unit!46089 0))(
  ( (Unit!46090) )
))
(declare-fun e!784371 () Unit!46089)

(declare-fun lt!608748 () Unit!46089)

(assert (=> b!1384110 (= e!784371 lt!608748)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!608749 () Unit!46089)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46089)

(assert (=> b!1384110 (= lt!608749 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10091 0))(
  ( (MissingZero!10091 (index!42734 (_ BitVec 32))) (Found!10091 (index!42735 (_ BitVec 32))) (Intermediate!10091 (undefined!10903 Bool) (index!42736 (_ BitVec 32)) (x!124247 (_ BitVec 32))) (Undefined!10091) (MissingVacant!10091 (index!42737 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94607 (_ BitVec 32)) SeekEntryResult!10091)

(assert (=> b!1384110 (= (seekEntryOrOpen!0 (select (arr!45677 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45677 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94608 (store (arr!45677 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46228 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46089)

(assert (=> b!1384110 (= lt!608748 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384110 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384111 () Bool)

(declare-fun Unit!46091 () Unit!46089)

(assert (=> b!1384111 (= e!784371 Unit!46091)))

(declare-fun b!1384112 () Bool)

(declare-fun res!925712 () Bool)

(assert (=> b!1384112 (=> (not res!925712) (not e!784372))))

(declare-datatypes ((List!32385 0))(
  ( (Nil!32382) (Cons!32381 (h!33590 (_ BitVec 64)) (t!47086 List!32385)) )
))
(declare-fun arrayNoDuplicates!0 (array!94607 (_ BitVec 32) List!32385) Bool)

(assert (=> b!1384112 (= res!925712 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32382))))

(declare-fun b!1384113 () Bool)

(assert (=> b!1384113 (= e!784372 false)))

(declare-fun lt!608747 () Unit!46089)

(assert (=> b!1384113 (= lt!608747 e!784371)))

(declare-fun c!128642 () Bool)

(declare-fun e!784370 () Bool)

(assert (=> b!1384113 (= c!128642 e!784370)))

(declare-fun res!925710 () Bool)

(assert (=> b!1384113 (=> (not res!925710) (not e!784370))))

(assert (=> b!1384113 (= res!925710 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384114 () Bool)

(declare-fun res!925716 () Bool)

(assert (=> b!1384114 (=> (not res!925716) (not e!784372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384114 (= res!925716 (validKeyInArray!0 (select (arr!45677 a!2938) i!1065)))))

(declare-fun b!1384115 () Bool)

(assert (=> b!1384115 (= e!784370 (validKeyInArray!0 (select (arr!45677 a!2938) startIndex!16)))))

(declare-fun b!1384116 () Bool)

(declare-fun res!925714 () Bool)

(assert (=> b!1384116 (=> (not res!925714) (not e!784372))))

(assert (=> b!1384116 (= res!925714 (and (not (= (select (arr!45677 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45677 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384117 () Bool)

(declare-fun res!925715 () Bool)

(assert (=> b!1384117 (=> (not res!925715) (not e!784372))))

(assert (=> b!1384117 (= res!925715 (and (= (size!46228 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46228 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46228 a!2938))))))

(assert (= (and start!118386 res!925713) b!1384117))

(assert (= (and b!1384117 res!925715) b!1384114))

(assert (= (and b!1384114 res!925716) b!1384112))

(assert (= (and b!1384112 res!925712) b!1384109))

(assert (= (and b!1384109 res!925711) b!1384116))

(assert (= (and b!1384116 res!925714) b!1384113))

(assert (= (and b!1384113 res!925710) b!1384115))

(assert (= (and b!1384113 c!128642) b!1384110))

(assert (= (and b!1384113 (not c!128642)) b!1384111))

(declare-fun m!1269383 () Bool)

(assert (=> b!1384116 m!1269383))

(declare-fun m!1269385 () Bool)

(assert (=> b!1384112 m!1269385))

(declare-fun m!1269387 () Bool)

(assert (=> b!1384110 m!1269387))

(declare-fun m!1269389 () Bool)

(assert (=> b!1384110 m!1269389))

(assert (=> b!1384110 m!1269389))

(declare-fun m!1269391 () Bool)

(assert (=> b!1384110 m!1269391))

(declare-fun m!1269393 () Bool)

(assert (=> b!1384110 m!1269393))

(declare-fun m!1269395 () Bool)

(assert (=> b!1384110 m!1269395))

(declare-fun m!1269397 () Bool)

(assert (=> b!1384110 m!1269397))

(declare-fun m!1269399 () Bool)

(assert (=> b!1384110 m!1269399))

(assert (=> b!1384110 m!1269397))

(declare-fun m!1269401 () Bool)

(assert (=> b!1384110 m!1269401))

(declare-fun m!1269403 () Bool)

(assert (=> b!1384109 m!1269403))

(assert (=> b!1384115 m!1269397))

(assert (=> b!1384115 m!1269397))

(declare-fun m!1269405 () Bool)

(assert (=> b!1384115 m!1269405))

(assert (=> b!1384114 m!1269383))

(assert (=> b!1384114 m!1269383))

(declare-fun m!1269407 () Bool)

(assert (=> b!1384114 m!1269407))

(declare-fun m!1269409 () Bool)

(assert (=> start!118386 m!1269409))

(declare-fun m!1269411 () Bool)

(assert (=> start!118386 m!1269411))

(check-sat (not b!1384110) (not b!1384115) (not b!1384114) (not b!1384109) (not b!1384112) (not start!118386))
