; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118628 () Bool)

(assert start!118628)

(declare-fun b!1386278 () Bool)

(declare-fun res!927609 () Bool)

(declare-fun e!785348 () Bool)

(assert (=> b!1386278 (=> (not res!927609) (not e!785348))))

(declare-datatypes ((array!94822 0))(
  ( (array!94823 (arr!45783 (Array (_ BitVec 32) (_ BitVec 64))) (size!46334 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94822)

(declare-datatypes ((List!32491 0))(
  ( (Nil!32488) (Cons!32487 (h!33696 (_ BitVec 64)) (t!47192 List!32491)) )
))
(declare-fun arrayNoDuplicates!0 (array!94822 (_ BitVec 32) List!32491) Bool)

(assert (=> b!1386278 (= res!927609 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32488))))

(declare-fun b!1386279 () Bool)

(declare-fun res!927608 () Bool)

(assert (=> b!1386279 (=> (not res!927608) (not e!785348))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94822 (_ BitVec 32)) Bool)

(assert (=> b!1386279 (= res!927608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386280 () Bool)

(declare-fun res!927607 () Bool)

(assert (=> b!1386280 (=> (not res!927607) (not e!785348))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386280 (= res!927607 (validKeyInArray!0 (select (arr!45783 a!2938) i!1065)))))

(declare-fun b!1386281 () Bool)

(declare-fun e!785346 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386281 (= e!785346 (validKeyInArray!0 (select (arr!45783 a!2938) startIndex!16)))))

(declare-fun b!1386282 () Bool)

(declare-fun res!927605 () Bool)

(assert (=> b!1386282 (=> (not res!927605) (not e!785348))))

(assert (=> b!1386282 (= res!927605 (and (not (= (select (arr!45783 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45783 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386283 () Bool)

(assert (=> b!1386283 (= e!785348 false)))

(declare-datatypes ((Unit!46243 0))(
  ( (Unit!46244) )
))
(declare-fun lt!609379 () Unit!46243)

(declare-fun e!785347 () Unit!46243)

(assert (=> b!1386283 (= lt!609379 e!785347)))

(declare-fun c!128780 () Bool)

(assert (=> b!1386283 (= c!128780 e!785346)))

(declare-fun res!927604 () Bool)

(assert (=> b!1386283 (=> (not res!927604) (not e!785346))))

(assert (=> b!1386283 (= res!927604 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386284 () Bool)

(declare-fun lt!609377 () Unit!46243)

(assert (=> b!1386284 (= e!785347 lt!609377)))

(declare-fun lt!609378 () Unit!46243)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94822 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46243)

(assert (=> b!1386284 (= lt!609378 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10148 0))(
  ( (MissingZero!10148 (index!42962 (_ BitVec 32))) (Found!10148 (index!42963 (_ BitVec 32))) (Intermediate!10148 (undefined!10960 Bool) (index!42964 (_ BitVec 32)) (x!124584 (_ BitVec 32))) (Undefined!10148) (MissingVacant!10148 (index!42965 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94822 (_ BitVec 32)) SeekEntryResult!10148)

(assert (=> b!1386284 (= (seekEntryOrOpen!0 (select (arr!45783 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45783 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94823 (store (arr!45783 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46334 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94822 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46243)

(assert (=> b!1386284 (= lt!609377 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386284 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386285 () Bool)

(declare-fun Unit!46245 () Unit!46243)

(assert (=> b!1386285 (= e!785347 Unit!46245)))

(declare-fun b!1386286 () Bool)

(declare-fun res!927603 () Bool)

(assert (=> b!1386286 (=> (not res!927603) (not e!785348))))

(assert (=> b!1386286 (= res!927603 (and (= (size!46334 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46334 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46334 a!2938))))))

(declare-fun res!927606 () Bool)

(assert (=> start!118628 (=> (not res!927606) (not e!785348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118628 (= res!927606 (validMask!0 mask!2987))))

(assert (=> start!118628 e!785348))

(assert (=> start!118628 true))

(declare-fun array_inv!34728 (array!94822) Bool)

(assert (=> start!118628 (array_inv!34728 a!2938)))

(assert (= (and start!118628 res!927606) b!1386286))

(assert (= (and b!1386286 res!927603) b!1386280))

(assert (= (and b!1386280 res!927607) b!1386278))

(assert (= (and b!1386278 res!927609) b!1386279))

(assert (= (and b!1386279 res!927608) b!1386282))

(assert (= (and b!1386282 res!927605) b!1386283))

(assert (= (and b!1386283 res!927604) b!1386281))

(assert (= (and b!1386283 c!128780) b!1386284))

(assert (= (and b!1386283 (not c!128780)) b!1386285))

(declare-fun m!1271693 () Bool)

(assert (=> b!1386284 m!1271693))

(declare-fun m!1271695 () Bool)

(assert (=> b!1386284 m!1271695))

(assert (=> b!1386284 m!1271695))

(declare-fun m!1271697 () Bool)

(assert (=> b!1386284 m!1271697))

(declare-fun m!1271699 () Bool)

(assert (=> b!1386284 m!1271699))

(declare-fun m!1271701 () Bool)

(assert (=> b!1386284 m!1271701))

(declare-fun m!1271703 () Bool)

(assert (=> b!1386284 m!1271703))

(declare-fun m!1271705 () Bool)

(assert (=> b!1386284 m!1271705))

(assert (=> b!1386284 m!1271703))

(declare-fun m!1271707 () Bool)

(assert (=> b!1386284 m!1271707))

(declare-fun m!1271709 () Bool)

(assert (=> b!1386279 m!1271709))

(declare-fun m!1271711 () Bool)

(assert (=> b!1386282 m!1271711))

(assert (=> b!1386281 m!1271703))

(assert (=> b!1386281 m!1271703))

(declare-fun m!1271713 () Bool)

(assert (=> b!1386281 m!1271713))

(declare-fun m!1271715 () Bool)

(assert (=> b!1386278 m!1271715))

(declare-fun m!1271717 () Bool)

(assert (=> start!118628 m!1271717))

(declare-fun m!1271719 () Bool)

(assert (=> start!118628 m!1271719))

(assert (=> b!1386280 m!1271711))

(assert (=> b!1386280 m!1271711))

(declare-fun m!1271721 () Bool)

(assert (=> b!1386280 m!1271721))

(push 1)

(assert (not b!1386284))

(assert (not b!1386279))

(assert (not b!1386278))

(assert (not start!118628))

(assert (not b!1386281))

(assert (not b!1386280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

