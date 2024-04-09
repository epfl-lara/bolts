; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118332 () Bool)

(assert start!118332)

(declare-fun b!1383442 () Bool)

(declare-fun res!925144 () Bool)

(declare-fun e!784109 () Bool)

(assert (=> b!1383442 (=> (not res!925144) (not e!784109))))

(declare-datatypes ((array!94553 0))(
  ( (array!94554 (arr!45650 (Array (_ BitVec 32) (_ BitVec 64))) (size!46201 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94553)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383442 (= res!925144 (validKeyInArray!0 (select (arr!45650 a!2938) startIndex!16)))))

(declare-fun b!1383443 () Bool)

(declare-fun res!925146 () Bool)

(assert (=> b!1383443 (=> (not res!925146) (not e!784109))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383443 (= res!925146 (and (not (= (select (arr!45650 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45650 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383444 () Bool)

(declare-fun res!925147 () Bool)

(assert (=> b!1383444 (=> (not res!925147) (not e!784109))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383444 (= res!925147 (and (= (size!46201 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46201 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46201 a!2938))))))

(declare-fun b!1383445 () Bool)

(declare-fun res!925148 () Bool)

(assert (=> b!1383445 (=> (not res!925148) (not e!784109))))

(declare-datatypes ((List!32358 0))(
  ( (Nil!32355) (Cons!32354 (h!33563 (_ BitVec 64)) (t!47059 List!32358)) )
))
(declare-fun arrayNoDuplicates!0 (array!94553 (_ BitVec 32) List!32358) Bool)

(assert (=> b!1383445 (= res!925148 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32355))))

(declare-fun b!1383446 () Bool)

(declare-fun res!925149 () Bool)

(assert (=> b!1383446 (=> (not res!925149) (not e!784109))))

(assert (=> b!1383446 (= res!925149 (validKeyInArray!0 (select (arr!45650 a!2938) i!1065)))))

(declare-fun res!925143 () Bool)

(assert (=> start!118332 (=> (not res!925143) (not e!784109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118332 (= res!925143 (validMask!0 mask!2987))))

(assert (=> start!118332 e!784109))

(assert (=> start!118332 true))

(declare-fun array_inv!34595 (array!94553) Bool)

(assert (=> start!118332 (array_inv!34595 a!2938)))

(declare-fun b!1383447 () Bool)

(declare-fun res!925145 () Bool)

(assert (=> b!1383447 (=> (not res!925145) (not e!784109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94553 (_ BitVec 32)) Bool)

(assert (=> b!1383447 (= res!925145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383448 () Bool)

(assert (=> b!1383448 (= e!784109 (not true))))

(declare-datatypes ((SeekEntryResult!10064 0))(
  ( (MissingZero!10064 (index!42626 (_ BitVec 32))) (Found!10064 (index!42627 (_ BitVec 32))) (Intermediate!10064 (undefined!10876 Bool) (index!42628 (_ BitVec 32)) (x!124148 (_ BitVec 32))) (Undefined!10064) (MissingVacant!10064 (index!42629 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94553 (_ BitVec 32)) SeekEntryResult!10064)

(assert (=> b!1383448 (= (seekEntryOrOpen!0 (select (arr!45650 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45650 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94554 (store (arr!45650 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46201 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46019 0))(
  ( (Unit!46020) )
))
(declare-fun lt!608566 () Unit!46019)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94553 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46019)

(assert (=> b!1383448 (= lt!608566 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (= (and start!118332 res!925143) b!1383444))

(assert (= (and b!1383444 res!925147) b!1383446))

(assert (= (and b!1383446 res!925149) b!1383445))

(assert (= (and b!1383445 res!925148) b!1383447))

(assert (= (and b!1383447 res!925145) b!1383443))

(assert (= (and b!1383443 res!925146) b!1383442))

(assert (= (and b!1383442 res!925144) b!1383448))

(declare-fun m!1268617 () Bool)

(assert (=> b!1383446 m!1268617))

(assert (=> b!1383446 m!1268617))

(declare-fun m!1268619 () Bool)

(assert (=> b!1383446 m!1268619))

(declare-fun m!1268621 () Bool)

(assert (=> b!1383445 m!1268621))

(declare-fun m!1268623 () Bool)

(assert (=> b!1383442 m!1268623))

(assert (=> b!1383442 m!1268623))

(declare-fun m!1268625 () Bool)

(assert (=> b!1383442 m!1268625))

(assert (=> b!1383443 m!1268617))

(declare-fun m!1268627 () Bool)

(assert (=> b!1383448 m!1268627))

(assert (=> b!1383448 m!1268627))

(declare-fun m!1268629 () Bool)

(assert (=> b!1383448 m!1268629))

(declare-fun m!1268631 () Bool)

(assert (=> b!1383448 m!1268631))

(declare-fun m!1268633 () Bool)

(assert (=> b!1383448 m!1268633))

(assert (=> b!1383448 m!1268623))

(assert (=> b!1383448 m!1268623))

(declare-fun m!1268635 () Bool)

(assert (=> b!1383448 m!1268635))

(declare-fun m!1268637 () Bool)

(assert (=> start!118332 m!1268637))

(declare-fun m!1268639 () Bool)

(assert (=> start!118332 m!1268639))

(declare-fun m!1268641 () Bool)

(assert (=> b!1383447 m!1268641))

(check-sat (not b!1383446) (not start!118332) (not b!1383448) (not b!1383445) (not b!1383447) (not b!1383442))
