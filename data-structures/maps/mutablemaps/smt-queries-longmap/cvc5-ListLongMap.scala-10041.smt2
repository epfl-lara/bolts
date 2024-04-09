; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118390 () Bool)

(assert start!118390)

(declare-fun b!1384163 () Bool)

(declare-datatypes ((Unit!46095 0))(
  ( (Unit!46096) )
))
(declare-fun e!784395 () Unit!46095)

(declare-fun Unit!46097 () Unit!46095)

(assert (=> b!1384163 (= e!784395 Unit!46097)))

(declare-fun b!1384164 () Bool)

(declare-fun e!784396 () Bool)

(declare-datatypes ((array!94611 0))(
  ( (array!94612 (arr!45679 (Array (_ BitVec 32) (_ BitVec 64))) (size!46230 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94611)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384164 (= e!784396 (validKeyInArray!0 (select (arr!45679 a!2938) startIndex!16)))))

(declare-fun b!1384165 () Bool)

(declare-fun res!925758 () Bool)

(declare-fun e!784397 () Bool)

(assert (=> b!1384165 (=> (not res!925758) (not e!784397))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384165 (= res!925758 (validKeyInArray!0 (select (arr!45679 a!2938) i!1065)))))

(declare-fun b!1384166 () Bool)

(assert (=> b!1384166 (= e!784397 false)))

(declare-fun lt!608765 () Unit!46095)

(assert (=> b!1384166 (= lt!608765 e!784395)))

(declare-fun c!128648 () Bool)

(assert (=> b!1384166 (= c!128648 e!784396)))

(declare-fun res!925754 () Bool)

(assert (=> b!1384166 (=> (not res!925754) (not e!784396))))

(assert (=> b!1384166 (= res!925754 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384167 () Bool)

(declare-fun res!925752 () Bool)

(assert (=> b!1384167 (=> (not res!925752) (not e!784397))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1384167 (= res!925752 (and (= (size!46230 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46230 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46230 a!2938))))))

(declare-fun b!1384168 () Bool)

(declare-fun res!925753 () Bool)

(assert (=> b!1384168 (=> (not res!925753) (not e!784397))))

(assert (=> b!1384168 (= res!925753 (and (not (= (select (arr!45679 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45679 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!925755 () Bool)

(assert (=> start!118390 (=> (not res!925755) (not e!784397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118390 (= res!925755 (validMask!0 mask!2987))))

(assert (=> start!118390 e!784397))

(assert (=> start!118390 true))

(declare-fun array_inv!34624 (array!94611) Bool)

(assert (=> start!118390 (array_inv!34624 a!2938)))

(declare-fun b!1384169 () Bool)

(declare-fun lt!608766 () Unit!46095)

(assert (=> b!1384169 (= e!784395 lt!608766)))

(declare-fun lt!608767 () Unit!46095)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46095)

(assert (=> b!1384169 (= lt!608767 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10093 0))(
  ( (MissingZero!10093 (index!42742 (_ BitVec 32))) (Found!10093 (index!42743 (_ BitVec 32))) (Intermediate!10093 (undefined!10905 Bool) (index!42744 (_ BitVec 32)) (x!124257 (_ BitVec 32))) (Undefined!10093) (MissingVacant!10093 (index!42745 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94611 (_ BitVec 32)) SeekEntryResult!10093)

(assert (=> b!1384169 (= (seekEntryOrOpen!0 (select (arr!45679 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45679 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94612 (store (arr!45679 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46230 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46095)

(assert (=> b!1384169 (= lt!608766 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94611 (_ BitVec 32)) Bool)

(assert (=> b!1384169 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384170 () Bool)

(declare-fun res!925756 () Bool)

(assert (=> b!1384170 (=> (not res!925756) (not e!784397))))

(assert (=> b!1384170 (= res!925756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384171 () Bool)

(declare-fun res!925757 () Bool)

(assert (=> b!1384171 (=> (not res!925757) (not e!784397))))

(declare-datatypes ((List!32387 0))(
  ( (Nil!32384) (Cons!32383 (h!33592 (_ BitVec 64)) (t!47088 List!32387)) )
))
(declare-fun arrayNoDuplicates!0 (array!94611 (_ BitVec 32) List!32387) Bool)

(assert (=> b!1384171 (= res!925757 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32384))))

(assert (= (and start!118390 res!925755) b!1384167))

(assert (= (and b!1384167 res!925752) b!1384165))

(assert (= (and b!1384165 res!925758) b!1384171))

(assert (= (and b!1384171 res!925757) b!1384170))

(assert (= (and b!1384170 res!925756) b!1384168))

(assert (= (and b!1384168 res!925753) b!1384166))

(assert (= (and b!1384166 res!925754) b!1384164))

(assert (= (and b!1384166 c!128648) b!1384169))

(assert (= (and b!1384166 (not c!128648)) b!1384163))

(declare-fun m!1269443 () Bool)

(assert (=> b!1384165 m!1269443))

(assert (=> b!1384165 m!1269443))

(declare-fun m!1269445 () Bool)

(assert (=> b!1384165 m!1269445))

(declare-fun m!1269447 () Bool)

(assert (=> b!1384169 m!1269447))

(declare-fun m!1269449 () Bool)

(assert (=> b!1384169 m!1269449))

(assert (=> b!1384169 m!1269449))

(declare-fun m!1269451 () Bool)

(assert (=> b!1384169 m!1269451))

(declare-fun m!1269453 () Bool)

(assert (=> b!1384169 m!1269453))

(declare-fun m!1269455 () Bool)

(assert (=> b!1384169 m!1269455))

(declare-fun m!1269457 () Bool)

(assert (=> b!1384169 m!1269457))

(declare-fun m!1269459 () Bool)

(assert (=> b!1384169 m!1269459))

(assert (=> b!1384169 m!1269457))

(declare-fun m!1269461 () Bool)

(assert (=> b!1384169 m!1269461))

(declare-fun m!1269463 () Bool)

(assert (=> start!118390 m!1269463))

(declare-fun m!1269465 () Bool)

(assert (=> start!118390 m!1269465))

(declare-fun m!1269467 () Bool)

(assert (=> b!1384171 m!1269467))

(assert (=> b!1384164 m!1269457))

(assert (=> b!1384164 m!1269457))

(declare-fun m!1269469 () Bool)

(assert (=> b!1384164 m!1269469))

(assert (=> b!1384168 m!1269443))

(declare-fun m!1269471 () Bool)

(assert (=> b!1384170 m!1269471))

(push 1)

(assert (not b!1384170))

(assert (not b!1384165))

(assert (not b!1384169))

(assert (not b!1384171))

(assert (not b!1384164))

(assert (not start!118390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

