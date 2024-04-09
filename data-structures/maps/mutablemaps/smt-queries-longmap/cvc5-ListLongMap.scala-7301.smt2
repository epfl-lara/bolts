; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93342 () Bool)

(assert start!93342)

(declare-fun b!1057534 () Bool)

(declare-fun e!601506 () Bool)

(declare-fun e!601501 () Bool)

(assert (=> b!1057534 (= e!601506 (not e!601501))))

(declare-fun res!706304 () Bool)

(assert (=> b!1057534 (=> res!706304 e!601501)))

(declare-fun lt!466507 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057534 (= res!706304 (or (bvsgt lt!466507 i!1381) (bvsle i!1381 lt!466507)))))

(declare-fun e!601503 () Bool)

(assert (=> b!1057534 e!601503))

(declare-fun res!706305 () Bool)

(assert (=> b!1057534 (=> (not res!706305) (not e!601503))))

(declare-datatypes ((array!66689 0))(
  ( (array!66690 (arr!32062 (Array (_ BitVec 32) (_ BitVec 64))) (size!32599 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66689)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1057534 (= res!706305 (= (select (store (arr!32062 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466507) k!2747))))

(declare-fun b!1057535 () Bool)

(declare-fun e!601504 () Bool)

(assert (=> b!1057535 (= e!601504 e!601506)))

(declare-fun res!706302 () Bool)

(assert (=> b!1057535 (=> (not res!706302) (not e!601506))))

(assert (=> b!1057535 (= res!706302 (not (= lt!466507 i!1381)))))

(declare-fun lt!466506 () array!66689)

(declare-fun arrayScanForKey!0 (array!66689 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057535 (= lt!466507 (arrayScanForKey!0 lt!466506 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057536 () Bool)

(declare-fun e!601505 () Bool)

(assert (=> b!1057536 (= e!601503 e!601505)))

(declare-fun res!706309 () Bool)

(assert (=> b!1057536 (=> res!706309 e!601505)))

(assert (=> b!1057536 (= res!706309 (or (bvsgt lt!466507 i!1381) (bvsle i!1381 lt!466507)))))

(declare-fun b!1057537 () Bool)

(declare-fun res!706307 () Bool)

(declare-fun e!601502 () Bool)

(assert (=> b!1057537 (=> (not res!706307) (not e!601502))))

(assert (=> b!1057537 (= res!706307 (= (select (arr!32062 a!3488) i!1381) k!2747))))

(declare-fun b!1057538 () Bool)

(declare-fun res!706308 () Bool)

(assert (=> b!1057538 (=> (not res!706308) (not e!601502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057538 (= res!706308 (validKeyInArray!0 k!2747))))

(declare-fun lt!466505 () (_ BitVec 32))

(declare-fun b!1057539 () Bool)

(assert (=> b!1057539 (= e!601501 (or (bvslt lt!466507 #b00000000000000000000000000000000) (bvsge lt!466505 (size!32599 a!3488)) (bvslt lt!466507 (size!32599 a!3488))))))

(declare-fun arrayContainsKey!0 (array!66689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057539 (arrayContainsKey!0 a!3488 k!2747 lt!466505)))

(declare-datatypes ((Unit!34655 0))(
  ( (Unit!34656) )
))
(declare-fun lt!466503 () Unit!34655)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66689 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34655)

(assert (=> b!1057539 (= lt!466503 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466505))))

(assert (=> b!1057539 (= lt!466505 (bvadd #b00000000000000000000000000000001 lt!466507))))

(declare-datatypes ((List!22505 0))(
  ( (Nil!22502) (Cons!22501 (h!23710 (_ BitVec 64)) (t!31819 List!22505)) )
))
(declare-fun arrayNoDuplicates!0 (array!66689 (_ BitVec 32) List!22505) Bool)

(assert (=> b!1057539 (arrayNoDuplicates!0 a!3488 lt!466507 Nil!22502)))

(declare-fun lt!466504 () Unit!34655)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66689 (_ BitVec 32) (_ BitVec 32)) Unit!34655)

(assert (=> b!1057539 (= lt!466504 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466507))))

(declare-fun b!1057540 () Bool)

(assert (=> b!1057540 (= e!601505 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057541 () Bool)

(declare-fun res!706303 () Bool)

(assert (=> b!1057541 (=> (not res!706303) (not e!601502))))

(assert (=> b!1057541 (= res!706303 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22502))))

(declare-fun b!1057542 () Bool)

(assert (=> b!1057542 (= e!601502 e!601504)))

(declare-fun res!706301 () Bool)

(assert (=> b!1057542 (=> (not res!706301) (not e!601504))))

(assert (=> b!1057542 (= res!706301 (arrayContainsKey!0 lt!466506 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057542 (= lt!466506 (array!66690 (store (arr!32062 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32599 a!3488)))))

(declare-fun res!706306 () Bool)

(assert (=> start!93342 (=> (not res!706306) (not e!601502))))

(assert (=> start!93342 (= res!706306 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32599 a!3488)) (bvslt (size!32599 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93342 e!601502))

(assert (=> start!93342 true))

(declare-fun array_inv!24684 (array!66689) Bool)

(assert (=> start!93342 (array_inv!24684 a!3488)))

(assert (= (and start!93342 res!706306) b!1057541))

(assert (= (and b!1057541 res!706303) b!1057538))

(assert (= (and b!1057538 res!706308) b!1057537))

(assert (= (and b!1057537 res!706307) b!1057542))

(assert (= (and b!1057542 res!706301) b!1057535))

(assert (= (and b!1057535 res!706302) b!1057534))

(assert (= (and b!1057534 res!706305) b!1057536))

(assert (= (and b!1057536 (not res!706309)) b!1057540))

(assert (= (and b!1057534 (not res!706304)) b!1057539))

(declare-fun m!977361 () Bool)

(assert (=> b!1057534 m!977361))

(declare-fun m!977363 () Bool)

(assert (=> b!1057534 m!977363))

(declare-fun m!977365 () Bool)

(assert (=> b!1057539 m!977365))

(declare-fun m!977367 () Bool)

(assert (=> b!1057539 m!977367))

(declare-fun m!977369 () Bool)

(assert (=> b!1057539 m!977369))

(declare-fun m!977371 () Bool)

(assert (=> b!1057539 m!977371))

(declare-fun m!977373 () Bool)

(assert (=> b!1057540 m!977373))

(declare-fun m!977375 () Bool)

(assert (=> b!1057541 m!977375))

(declare-fun m!977377 () Bool)

(assert (=> b!1057542 m!977377))

(assert (=> b!1057542 m!977361))

(declare-fun m!977379 () Bool)

(assert (=> b!1057538 m!977379))

(declare-fun m!977381 () Bool)

(assert (=> b!1057537 m!977381))

(declare-fun m!977383 () Bool)

(assert (=> b!1057535 m!977383))

(declare-fun m!977385 () Bool)

(assert (=> start!93342 m!977385))

(push 1)

(assert (not b!1057538))

(assert (not b!1057539))

(assert (not b!1057541))

(assert (not b!1057535))

(assert (not start!93342))

(assert (not b!1057540))

(assert (not b!1057542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

