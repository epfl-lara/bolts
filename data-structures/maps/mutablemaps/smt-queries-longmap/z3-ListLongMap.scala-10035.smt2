; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118356 () Bool)

(assert start!118356)

(declare-fun b!1383704 () Bool)

(declare-fun res!925401 () Bool)

(declare-fun e!784192 () Bool)

(assert (=> b!1383704 (=> (not res!925401) (not e!784192))))

(declare-datatypes ((array!94577 0))(
  ( (array!94578 (arr!45662 (Array (_ BitVec 32) (_ BitVec 64))) (size!46213 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94577)

(declare-datatypes ((List!32370 0))(
  ( (Nil!32367) (Cons!32366 (h!33575 (_ BitVec 64)) (t!47071 List!32370)) )
))
(declare-fun arrayNoDuplicates!0 (array!94577 (_ BitVec 32) List!32370) Bool)

(assert (=> b!1383704 (= res!925401 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32367))))

(declare-fun b!1383705 () Bool)

(declare-fun res!925400 () Bool)

(assert (=> b!1383705 (=> (not res!925400) (not e!784192))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1383705 (= res!925400 (and (not (= (select (arr!45662 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45662 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383706 () Bool)

(declare-datatypes ((Unit!46044 0))(
  ( (Unit!46045) )
))
(declare-fun e!784190 () Unit!46044)

(declare-fun Unit!46046 () Unit!46044)

(assert (=> b!1383706 (= e!784190 Unit!46046)))

(declare-fun b!1383707 () Bool)

(declare-fun e!784193 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383707 (= e!784193 (validKeyInArray!0 (select (arr!45662 a!2938) startIndex!16)))))

(declare-fun res!925396 () Bool)

(assert (=> start!118356 (=> (not res!925396) (not e!784192))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118356 (= res!925396 (validMask!0 mask!2987))))

(assert (=> start!118356 e!784192))

(assert (=> start!118356 true))

(declare-fun array_inv!34607 (array!94577) Bool)

(assert (=> start!118356 (array_inv!34607 a!2938)))

(declare-fun b!1383708 () Bool)

(assert (=> b!1383708 (= e!784192 false)))

(declare-fun lt!608613 () Unit!46044)

(assert (=> b!1383708 (= lt!608613 e!784190)))

(declare-fun c!128597 () Bool)

(assert (=> b!1383708 (= c!128597 e!784193)))

(declare-fun res!925397 () Bool)

(assert (=> b!1383708 (=> (not res!925397) (not e!784193))))

(assert (=> b!1383708 (= res!925397 (not (= startIndex!16 i!1065)))))

(declare-fun b!1383709 () Bool)

(declare-fun res!925399 () Bool)

(assert (=> b!1383709 (=> (not res!925399) (not e!784192))))

(assert (=> b!1383709 (= res!925399 (validKeyInArray!0 (select (arr!45662 a!2938) i!1065)))))

(declare-fun b!1383710 () Bool)

(declare-fun res!925395 () Bool)

(assert (=> b!1383710 (=> (not res!925395) (not e!784192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94577 (_ BitVec 32)) Bool)

(assert (=> b!1383710 (= res!925395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383711 () Bool)

(declare-fun res!925398 () Bool)

(assert (=> b!1383711 (=> (not res!925398) (not e!784192))))

(assert (=> b!1383711 (= res!925398 (and (= (size!46213 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46213 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46213 a!2938))))))

(declare-fun b!1383712 () Bool)

(declare-fun lt!608614 () Unit!46044)

(assert (=> b!1383712 (= e!784190 lt!608614)))

(declare-fun lt!608612 () Unit!46044)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46044)

(assert (=> b!1383712 (= lt!608612 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10076 0))(
  ( (MissingZero!10076 (index!42674 (_ BitVec 32))) (Found!10076 (index!42675 (_ BitVec 32))) (Intermediate!10076 (undefined!10888 Bool) (index!42676 (_ BitVec 32)) (x!124192 (_ BitVec 32))) (Undefined!10076) (MissingVacant!10076 (index!42677 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94577 (_ BitVec 32)) SeekEntryResult!10076)

(assert (=> b!1383712 (= (seekEntryOrOpen!0 (select (arr!45662 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45662 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94578 (store (arr!45662 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46213 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46044)

(assert (=> b!1383712 (= lt!608614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1383712 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118356 res!925396) b!1383711))

(assert (= (and b!1383711 res!925398) b!1383709))

(assert (= (and b!1383709 res!925399) b!1383704))

(assert (= (and b!1383704 res!925401) b!1383710))

(assert (= (and b!1383710 res!925395) b!1383705))

(assert (= (and b!1383705 res!925400) b!1383708))

(assert (= (and b!1383708 res!925397) b!1383707))

(assert (= (and b!1383708 c!128597) b!1383712))

(assert (= (and b!1383708 (not c!128597)) b!1383706))

(declare-fun m!1268933 () Bool)

(assert (=> b!1383707 m!1268933))

(assert (=> b!1383707 m!1268933))

(declare-fun m!1268935 () Bool)

(assert (=> b!1383707 m!1268935))

(declare-fun m!1268937 () Bool)

(assert (=> b!1383704 m!1268937))

(declare-fun m!1268939 () Bool)

(assert (=> b!1383709 m!1268939))

(assert (=> b!1383709 m!1268939))

(declare-fun m!1268941 () Bool)

(assert (=> b!1383709 m!1268941))

(assert (=> b!1383705 m!1268939))

(declare-fun m!1268943 () Bool)

(assert (=> b!1383710 m!1268943))

(declare-fun m!1268945 () Bool)

(assert (=> start!118356 m!1268945))

(declare-fun m!1268947 () Bool)

(assert (=> start!118356 m!1268947))

(declare-fun m!1268949 () Bool)

(assert (=> b!1383712 m!1268949))

(declare-fun m!1268951 () Bool)

(assert (=> b!1383712 m!1268951))

(assert (=> b!1383712 m!1268951))

(declare-fun m!1268953 () Bool)

(assert (=> b!1383712 m!1268953))

(declare-fun m!1268955 () Bool)

(assert (=> b!1383712 m!1268955))

(declare-fun m!1268957 () Bool)

(assert (=> b!1383712 m!1268957))

(assert (=> b!1383712 m!1268933))

(declare-fun m!1268959 () Bool)

(assert (=> b!1383712 m!1268959))

(assert (=> b!1383712 m!1268933))

(declare-fun m!1268961 () Bool)

(assert (=> b!1383712 m!1268961))

(check-sat (not b!1383712) (not start!118356) (not b!1383709) (not b!1383710) (not b!1383707) (not b!1383704))
