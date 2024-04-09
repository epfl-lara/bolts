; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118344 () Bool)

(assert start!118344)

(declare-fun b!1383568 () Bool)

(declare-fun res!925269 () Bool)

(declare-fun e!784145 () Bool)

(assert (=> b!1383568 (=> (not res!925269) (not e!784145))))

(declare-datatypes ((array!94565 0))(
  ( (array!94566 (arr!45656 (Array (_ BitVec 32) (_ BitVec 64))) (size!46207 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94565)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94565 (_ BitVec 32)) Bool)

(assert (=> b!1383568 (= res!925269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383569 () Bool)

(declare-fun res!925274 () Bool)

(assert (=> b!1383569 (=> (not res!925274) (not e!784145))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383569 (= res!925274 (and (= (size!46207 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46207 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46207 a!2938))))))

(declare-fun b!1383570 () Bool)

(declare-fun res!925271 () Bool)

(assert (=> b!1383570 (=> (not res!925271) (not e!784145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383570 (= res!925271 (validKeyInArray!0 (select (arr!45656 a!2938) startIndex!16)))))

(declare-fun b!1383571 () Bool)

(declare-fun res!925270 () Bool)

(assert (=> b!1383571 (=> (not res!925270) (not e!784145))))

(assert (=> b!1383571 (= res!925270 (and (not (= (select (arr!45656 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45656 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383572 () Bool)

(declare-fun res!925273 () Bool)

(assert (=> b!1383572 (=> (not res!925273) (not e!784145))))

(declare-datatypes ((List!32364 0))(
  ( (Nil!32361) (Cons!32360 (h!33569 (_ BitVec 64)) (t!47065 List!32364)) )
))
(declare-fun arrayNoDuplicates!0 (array!94565 (_ BitVec 32) List!32364) Bool)

(assert (=> b!1383572 (= res!925273 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32361))))

(declare-fun b!1383573 () Bool)

(declare-fun res!925272 () Bool)

(assert (=> b!1383573 (=> (not res!925272) (not e!784145))))

(assert (=> b!1383573 (= res!925272 (validKeyInArray!0 (select (arr!45656 a!2938) i!1065)))))

(declare-fun b!1383574 () Bool)

(assert (=> b!1383574 (= e!784145 (not true))))

(declare-datatypes ((SeekEntryResult!10070 0))(
  ( (MissingZero!10070 (index!42650 (_ BitVec 32))) (Found!10070 (index!42651 (_ BitVec 32))) (Intermediate!10070 (undefined!10882 Bool) (index!42652 (_ BitVec 32)) (x!124170 (_ BitVec 32))) (Undefined!10070) (MissingVacant!10070 (index!42653 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94565 (_ BitVec 32)) SeekEntryResult!10070)

(assert (=> b!1383574 (= (seekEntryOrOpen!0 (select (arr!45656 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45656 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94566 (store (arr!45656 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46207 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46031 0))(
  ( (Unit!46032) )
))
(declare-fun lt!608584 () Unit!46031)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46031)

(assert (=> b!1383574 (= lt!608584 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun res!925275 () Bool)

(assert (=> start!118344 (=> (not res!925275) (not e!784145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118344 (= res!925275 (validMask!0 mask!2987))))

(assert (=> start!118344 e!784145))

(assert (=> start!118344 true))

(declare-fun array_inv!34601 (array!94565) Bool)

(assert (=> start!118344 (array_inv!34601 a!2938)))

(assert (= (and start!118344 res!925275) b!1383569))

(assert (= (and b!1383569 res!925274) b!1383573))

(assert (= (and b!1383573 res!925272) b!1383572))

(assert (= (and b!1383572 res!925273) b!1383568))

(assert (= (and b!1383568 res!925269) b!1383571))

(assert (= (and b!1383571 res!925270) b!1383570))

(assert (= (and b!1383570 res!925271) b!1383574))

(declare-fun m!1268773 () Bool)

(assert (=> start!118344 m!1268773))

(declare-fun m!1268775 () Bool)

(assert (=> start!118344 m!1268775))

(declare-fun m!1268777 () Bool)

(assert (=> b!1383570 m!1268777))

(assert (=> b!1383570 m!1268777))

(declare-fun m!1268779 () Bool)

(assert (=> b!1383570 m!1268779))

(declare-fun m!1268781 () Bool)

(assert (=> b!1383568 m!1268781))

(declare-fun m!1268783 () Bool)

(assert (=> b!1383574 m!1268783))

(assert (=> b!1383574 m!1268783))

(declare-fun m!1268785 () Bool)

(assert (=> b!1383574 m!1268785))

(declare-fun m!1268787 () Bool)

(assert (=> b!1383574 m!1268787))

(declare-fun m!1268789 () Bool)

(assert (=> b!1383574 m!1268789))

(assert (=> b!1383574 m!1268777))

(assert (=> b!1383574 m!1268777))

(declare-fun m!1268791 () Bool)

(assert (=> b!1383574 m!1268791))

(declare-fun m!1268793 () Bool)

(assert (=> b!1383571 m!1268793))

(assert (=> b!1383573 m!1268793))

(assert (=> b!1383573 m!1268793))

(declare-fun m!1268795 () Bool)

(assert (=> b!1383573 m!1268795))

(declare-fun m!1268797 () Bool)

(assert (=> b!1383572 m!1268797))

(check-sat (not b!1383573) (not b!1383570) (not b!1383568) (not b!1383574) (not start!118344) (not b!1383572))
