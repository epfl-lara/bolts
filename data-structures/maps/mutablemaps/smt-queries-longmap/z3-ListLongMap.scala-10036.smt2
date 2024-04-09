; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118362 () Bool)

(assert start!118362)

(declare-fun b!1383785 () Bool)

(declare-fun res!925463 () Bool)

(declare-fun e!784226 () Bool)

(assert (=> b!1383785 (=> (not res!925463) (not e!784226))))

(declare-datatypes ((array!94583 0))(
  ( (array!94584 (arr!45665 (Array (_ BitVec 32) (_ BitVec 64))) (size!46216 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94583)

(declare-datatypes ((List!32373 0))(
  ( (Nil!32370) (Cons!32369 (h!33578 (_ BitVec 64)) (t!47074 List!32373)) )
))
(declare-fun arrayNoDuplicates!0 (array!94583 (_ BitVec 32) List!32373) Bool)

(assert (=> b!1383785 (= res!925463 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32370))))

(declare-fun b!1383786 () Bool)

(declare-fun res!925460 () Bool)

(assert (=> b!1383786 (=> (not res!925460) (not e!784226))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383786 (= res!925460 (and (= (size!46216 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46216 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46216 a!2938))))))

(declare-fun res!925459 () Bool)

(assert (=> start!118362 (=> (not res!925459) (not e!784226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118362 (= res!925459 (validMask!0 mask!2987))))

(assert (=> start!118362 e!784226))

(assert (=> start!118362 true))

(declare-fun array_inv!34610 (array!94583) Bool)

(assert (=> start!118362 (array_inv!34610 a!2938)))

(declare-fun b!1383787 () Bool)

(declare-fun e!784227 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383787 (= e!784227 (validKeyInArray!0 (select (arr!45665 a!2938) startIndex!16)))))

(declare-fun b!1383788 () Bool)

(assert (=> b!1383788 (= e!784226 false)))

(declare-datatypes ((Unit!46053 0))(
  ( (Unit!46054) )
))
(declare-fun lt!608641 () Unit!46053)

(declare-fun e!784229 () Unit!46053)

(assert (=> b!1383788 (= lt!608641 e!784229)))

(declare-fun c!128606 () Bool)

(assert (=> b!1383788 (= c!128606 e!784227)))

(declare-fun res!925461 () Bool)

(assert (=> b!1383788 (=> (not res!925461) (not e!784227))))

(assert (=> b!1383788 (= res!925461 (not (= startIndex!16 i!1065)))))

(declare-fun b!1383789 () Bool)

(declare-fun lt!608639 () Unit!46053)

(assert (=> b!1383789 (= e!784229 lt!608639)))

(declare-fun lt!608640 () Unit!46053)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46053)

(assert (=> b!1383789 (= lt!608640 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10079 0))(
  ( (MissingZero!10079 (index!42686 (_ BitVec 32))) (Found!10079 (index!42687 (_ BitVec 32))) (Intermediate!10079 (undefined!10891 Bool) (index!42688 (_ BitVec 32)) (x!124203 (_ BitVec 32))) (Undefined!10079) (MissingVacant!10079 (index!42689 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94583 (_ BitVec 32)) SeekEntryResult!10079)

(assert (=> b!1383789 (= (seekEntryOrOpen!0 (select (arr!45665 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45665 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94584 (store (arr!45665 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46216 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94583 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46053)

(assert (=> b!1383789 (= lt!608639 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94583 (_ BitVec 32)) Bool)

(assert (=> b!1383789 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383790 () Bool)

(declare-fun res!925462 () Bool)

(assert (=> b!1383790 (=> (not res!925462) (not e!784226))))

(assert (=> b!1383790 (= res!925462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383791 () Bool)

(declare-fun Unit!46055 () Unit!46053)

(assert (=> b!1383791 (= e!784229 Unit!46055)))

(declare-fun b!1383792 () Bool)

(declare-fun res!925464 () Bool)

(assert (=> b!1383792 (=> (not res!925464) (not e!784226))))

(assert (=> b!1383792 (= res!925464 (validKeyInArray!0 (select (arr!45665 a!2938) i!1065)))))

(declare-fun b!1383793 () Bool)

(declare-fun res!925458 () Bool)

(assert (=> b!1383793 (=> (not res!925458) (not e!784226))))

(assert (=> b!1383793 (= res!925458 (and (not (= (select (arr!45665 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45665 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!118362 res!925459) b!1383786))

(assert (= (and b!1383786 res!925460) b!1383792))

(assert (= (and b!1383792 res!925464) b!1383785))

(assert (= (and b!1383785 res!925463) b!1383790))

(assert (= (and b!1383790 res!925462) b!1383793))

(assert (= (and b!1383793 res!925458) b!1383788))

(assert (= (and b!1383788 res!925461) b!1383787))

(assert (= (and b!1383788 c!128606) b!1383789))

(assert (= (and b!1383788 (not c!128606)) b!1383791))

(declare-fun m!1269023 () Bool)

(assert (=> b!1383789 m!1269023))

(declare-fun m!1269025 () Bool)

(assert (=> b!1383789 m!1269025))

(assert (=> b!1383789 m!1269025))

(declare-fun m!1269027 () Bool)

(assert (=> b!1383789 m!1269027))

(declare-fun m!1269029 () Bool)

(assert (=> b!1383789 m!1269029))

(declare-fun m!1269031 () Bool)

(assert (=> b!1383789 m!1269031))

(declare-fun m!1269033 () Bool)

(assert (=> b!1383789 m!1269033))

(declare-fun m!1269035 () Bool)

(assert (=> b!1383789 m!1269035))

(assert (=> b!1383789 m!1269033))

(declare-fun m!1269037 () Bool)

(assert (=> b!1383789 m!1269037))

(declare-fun m!1269039 () Bool)

(assert (=> b!1383792 m!1269039))

(assert (=> b!1383792 m!1269039))

(declare-fun m!1269041 () Bool)

(assert (=> b!1383792 m!1269041))

(declare-fun m!1269043 () Bool)

(assert (=> b!1383785 m!1269043))

(assert (=> b!1383787 m!1269033))

(assert (=> b!1383787 m!1269033))

(declare-fun m!1269045 () Bool)

(assert (=> b!1383787 m!1269045))

(assert (=> b!1383793 m!1269039))

(declare-fun m!1269047 () Bool)

(assert (=> start!118362 m!1269047))

(declare-fun m!1269049 () Bool)

(assert (=> start!118362 m!1269049))

(declare-fun m!1269051 () Bool)

(assert (=> b!1383790 m!1269051))

(check-sat (not b!1383787) (not b!1383792) (not b!1383789) (not start!118362) (not b!1383785) (not b!1383790))
