; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118350 () Bool)

(assert start!118350)

(declare-fun b!1383632 () Bool)

(declare-fun res!925338 () Bool)

(declare-fun e!784163 () Bool)

(assert (=> b!1383632 (=> (not res!925338) (not e!784163))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94571 0))(
  ( (array!94572 (arr!45659 (Array (_ BitVec 32) (_ BitVec 64))) (size!46210 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94571)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383632 (= res!925338 (and (not (= (select (arr!45659 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45659 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383633 () Bool)

(declare-fun res!925336 () Bool)

(assert (=> b!1383633 (=> (not res!925336) (not e!784163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383633 (= res!925336 (validKeyInArray!0 (select (arr!45659 a!2938) i!1065)))))

(declare-fun b!1383634 () Bool)

(declare-fun res!925337 () Bool)

(assert (=> b!1383634 (=> (not res!925337) (not e!784163))))

(assert (=> b!1383634 (= res!925337 (validKeyInArray!0 (select (arr!45659 a!2938) startIndex!16)))))

(declare-fun b!1383635 () Bool)

(declare-fun res!925334 () Bool)

(assert (=> b!1383635 (=> (not res!925334) (not e!784163))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94571 (_ BitVec 32)) Bool)

(assert (=> b!1383635 (= res!925334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383636 () Bool)

(declare-fun res!925335 () Bool)

(assert (=> b!1383636 (=> (not res!925335) (not e!784163))))

(assert (=> b!1383636 (= res!925335 (and (= (size!46210 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46210 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46210 a!2938))))))

(declare-fun b!1383637 () Bool)

(assert (=> b!1383637 (= e!784163 (not true))))

(declare-datatypes ((SeekEntryResult!10073 0))(
  ( (MissingZero!10073 (index!42662 (_ BitVec 32))) (Found!10073 (index!42663 (_ BitVec 32))) (Intermediate!10073 (undefined!10885 Bool) (index!42664 (_ BitVec 32)) (x!124181 (_ BitVec 32))) (Undefined!10073) (MissingVacant!10073 (index!42665 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94571 (_ BitVec 32)) SeekEntryResult!10073)

(assert (=> b!1383637 (= (seekEntryOrOpen!0 (select (arr!45659 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45659 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94572 (store (arr!45659 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46210 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46037 0))(
  ( (Unit!46038) )
))
(declare-fun lt!608593 () Unit!46037)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46037)

(assert (=> b!1383637 (= lt!608593 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383631 () Bool)

(declare-fun res!925332 () Bool)

(assert (=> b!1383631 (=> (not res!925332) (not e!784163))))

(declare-datatypes ((List!32367 0))(
  ( (Nil!32364) (Cons!32363 (h!33572 (_ BitVec 64)) (t!47068 List!32367)) )
))
(declare-fun arrayNoDuplicates!0 (array!94571 (_ BitVec 32) List!32367) Bool)

(assert (=> b!1383631 (= res!925332 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32364))))

(declare-fun res!925333 () Bool)

(assert (=> start!118350 (=> (not res!925333) (not e!784163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118350 (= res!925333 (validMask!0 mask!2987))))

(assert (=> start!118350 e!784163))

(assert (=> start!118350 true))

(declare-fun array_inv!34604 (array!94571) Bool)

(assert (=> start!118350 (array_inv!34604 a!2938)))

(assert (= (and start!118350 res!925333) b!1383636))

(assert (= (and b!1383636 res!925335) b!1383633))

(assert (= (and b!1383633 res!925336) b!1383631))

(assert (= (and b!1383631 res!925332) b!1383635))

(assert (= (and b!1383635 res!925334) b!1383632))

(assert (= (and b!1383632 res!925338) b!1383634))

(assert (= (and b!1383634 res!925337) b!1383637))

(declare-fun m!1268851 () Bool)

(assert (=> b!1383631 m!1268851))

(declare-fun m!1268853 () Bool)

(assert (=> b!1383633 m!1268853))

(assert (=> b!1383633 m!1268853))

(declare-fun m!1268855 () Bool)

(assert (=> b!1383633 m!1268855))

(assert (=> b!1383632 m!1268853))

(declare-fun m!1268857 () Bool)

(assert (=> b!1383634 m!1268857))

(assert (=> b!1383634 m!1268857))

(declare-fun m!1268859 () Bool)

(assert (=> b!1383634 m!1268859))

(declare-fun m!1268861 () Bool)

(assert (=> start!118350 m!1268861))

(declare-fun m!1268863 () Bool)

(assert (=> start!118350 m!1268863))

(declare-fun m!1268865 () Bool)

(assert (=> b!1383637 m!1268865))

(assert (=> b!1383637 m!1268865))

(declare-fun m!1268867 () Bool)

(assert (=> b!1383637 m!1268867))

(declare-fun m!1268869 () Bool)

(assert (=> b!1383637 m!1268869))

(declare-fun m!1268871 () Bool)

(assert (=> b!1383637 m!1268871))

(assert (=> b!1383637 m!1268857))

(assert (=> b!1383637 m!1268857))

(declare-fun m!1268873 () Bool)

(assert (=> b!1383637 m!1268873))

(declare-fun m!1268875 () Bool)

(assert (=> b!1383635 m!1268875))

(check-sat (not b!1383633) (not start!118350) (not b!1383631) (not b!1383635) (not b!1383637) (not b!1383634))
