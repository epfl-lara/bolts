; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118650 () Bool)

(assert start!118650)

(declare-fun b!1386575 () Bool)

(declare-fun res!927837 () Bool)

(declare-fun e!785477 () Bool)

(assert (=> b!1386575 (=> (not res!927837) (not e!785477))))

(declare-datatypes ((array!94844 0))(
  ( (array!94845 (arr!45794 (Array (_ BitVec 32) (_ BitVec 64))) (size!46345 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94844)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386575 (= res!927837 (and (not (= (select (arr!45794 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45794 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386576 () Bool)

(declare-fun res!927840 () Bool)

(assert (=> b!1386576 (=> (not res!927840) (not e!785477))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94844 (_ BitVec 32)) Bool)

(assert (=> b!1386576 (= res!927840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386577 () Bool)

(declare-datatypes ((Unit!46276 0))(
  ( (Unit!46277) )
))
(declare-fun e!785480 () Unit!46276)

(declare-fun lt!609478 () Unit!46276)

(assert (=> b!1386577 (= e!785480 lt!609478)))

(declare-fun lt!609476 () Unit!46276)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46276)

(assert (=> b!1386577 (= lt!609476 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10159 0))(
  ( (MissingZero!10159 (index!43006 (_ BitVec 32))) (Found!10159 (index!43007 (_ BitVec 32))) (Intermediate!10159 (undefined!10971 Bool) (index!43008 (_ BitVec 32)) (x!124627 (_ BitVec 32))) (Undefined!10159) (MissingVacant!10159 (index!43009 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94844 (_ BitVec 32)) SeekEntryResult!10159)

(assert (=> b!1386577 (= (seekEntryOrOpen!0 (select (arr!45794 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45794 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94845 (store (arr!45794 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46345 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46276)

(assert (=> b!1386577 (= lt!609478 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386577 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386578 () Bool)

(declare-fun res!927836 () Bool)

(assert (=> b!1386578 (=> (not res!927836) (not e!785477))))

(assert (=> b!1386578 (= res!927836 (and (= (size!46345 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46345 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46345 a!2938))))))

(declare-fun res!927838 () Bool)

(assert (=> start!118650 (=> (not res!927838) (not e!785477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118650 (= res!927838 (validMask!0 mask!2987))))

(assert (=> start!118650 e!785477))

(assert (=> start!118650 true))

(declare-fun array_inv!34739 (array!94844) Bool)

(assert (=> start!118650 (array_inv!34739 a!2938)))

(declare-fun b!1386579 () Bool)

(declare-fun Unit!46278 () Unit!46276)

(assert (=> b!1386579 (= e!785480 Unit!46278)))

(declare-fun b!1386580 () Bool)

(declare-fun res!927839 () Bool)

(assert (=> b!1386580 (=> (not res!927839) (not e!785477))))

(declare-datatypes ((List!32502 0))(
  ( (Nil!32499) (Cons!32498 (h!33707 (_ BitVec 64)) (t!47203 List!32502)) )
))
(declare-fun arrayNoDuplicates!0 (array!94844 (_ BitVec 32) List!32502) Bool)

(assert (=> b!1386580 (= res!927839 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32499))))

(declare-fun b!1386581 () Bool)

(assert (=> b!1386581 (= e!785477 false)))

(declare-fun lt!609477 () Unit!46276)

(assert (=> b!1386581 (= lt!609477 e!785480)))

(declare-fun c!128813 () Bool)

(declare-fun e!785479 () Bool)

(assert (=> b!1386581 (= c!128813 e!785479)))

(declare-fun res!927835 () Bool)

(assert (=> b!1386581 (=> (not res!927835) (not e!785479))))

(assert (=> b!1386581 (= res!927835 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386582 () Bool)

(declare-fun res!927834 () Bool)

(assert (=> b!1386582 (=> (not res!927834) (not e!785477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386582 (= res!927834 (validKeyInArray!0 (select (arr!45794 a!2938) i!1065)))))

(declare-fun b!1386583 () Bool)

(assert (=> b!1386583 (= e!785479 (validKeyInArray!0 (select (arr!45794 a!2938) startIndex!16)))))

(assert (= (and start!118650 res!927838) b!1386578))

(assert (= (and b!1386578 res!927836) b!1386582))

(assert (= (and b!1386582 res!927834) b!1386580))

(assert (= (and b!1386580 res!927839) b!1386576))

(assert (= (and b!1386576 res!927840) b!1386575))

(assert (= (and b!1386575 res!927837) b!1386581))

(assert (= (and b!1386581 res!927835) b!1386583))

(assert (= (and b!1386581 c!128813) b!1386577))

(assert (= (and b!1386581 (not c!128813)) b!1386579))

(declare-fun m!1272023 () Bool)

(assert (=> start!118650 m!1272023))

(declare-fun m!1272025 () Bool)

(assert (=> start!118650 m!1272025))

(declare-fun m!1272027 () Bool)

(assert (=> b!1386582 m!1272027))

(assert (=> b!1386582 m!1272027))

(declare-fun m!1272029 () Bool)

(assert (=> b!1386582 m!1272029))

(declare-fun m!1272031 () Bool)

(assert (=> b!1386576 m!1272031))

(declare-fun m!1272033 () Bool)

(assert (=> b!1386577 m!1272033))

(declare-fun m!1272035 () Bool)

(assert (=> b!1386577 m!1272035))

(assert (=> b!1386577 m!1272035))

(declare-fun m!1272037 () Bool)

(assert (=> b!1386577 m!1272037))

(declare-fun m!1272039 () Bool)

(assert (=> b!1386577 m!1272039))

(declare-fun m!1272041 () Bool)

(assert (=> b!1386577 m!1272041))

(declare-fun m!1272043 () Bool)

(assert (=> b!1386577 m!1272043))

(declare-fun m!1272045 () Bool)

(assert (=> b!1386577 m!1272045))

(assert (=> b!1386577 m!1272043))

(declare-fun m!1272047 () Bool)

(assert (=> b!1386577 m!1272047))

(declare-fun m!1272049 () Bool)

(assert (=> b!1386580 m!1272049))

(assert (=> b!1386575 m!1272027))

(assert (=> b!1386583 m!1272043))

(assert (=> b!1386583 m!1272043))

(declare-fun m!1272051 () Bool)

(assert (=> b!1386583 m!1272051))

(check-sat (not b!1386583) (not b!1386577) (not b!1386576) (not start!118650) (not b!1386580) (not b!1386582))
