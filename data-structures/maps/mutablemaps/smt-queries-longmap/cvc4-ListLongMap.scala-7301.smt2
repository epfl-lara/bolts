; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93346 () Bool)

(assert start!93346)

(declare-fun b!1057588 () Bool)

(declare-fun e!601547 () Bool)

(declare-fun e!601544 () Bool)

(assert (=> b!1057588 (= e!601547 (not e!601544))))

(declare-fun res!706357 () Bool)

(assert (=> b!1057588 (=> res!706357 e!601544)))

(declare-fun lt!466534 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057588 (= res!706357 (or (bvsgt lt!466534 i!1381) (bvsle i!1381 lt!466534)))))

(declare-fun e!601548 () Bool)

(assert (=> b!1057588 e!601548))

(declare-fun res!706355 () Bool)

(assert (=> b!1057588 (=> (not res!706355) (not e!601548))))

(declare-datatypes ((array!66693 0))(
  ( (array!66694 (arr!32064 (Array (_ BitVec 32) (_ BitVec 64))) (size!32601 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66693)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1057588 (= res!706355 (= (select (store (arr!32064 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466534) k!2747))))

(declare-fun res!706363 () Bool)

(declare-fun e!601545 () Bool)

(assert (=> start!93346 (=> (not res!706363) (not e!601545))))

(assert (=> start!93346 (= res!706363 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32601 a!3488)) (bvslt (size!32601 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93346 e!601545))

(assert (=> start!93346 true))

(declare-fun array_inv!24686 (array!66693) Bool)

(assert (=> start!93346 (array_inv!24686 a!3488)))

(declare-fun b!1057589 () Bool)

(declare-fun e!601542 () Bool)

(assert (=> b!1057589 (= e!601542 e!601547)))

(declare-fun res!706356 () Bool)

(assert (=> b!1057589 (=> (not res!706356) (not e!601547))))

(assert (=> b!1057589 (= res!706356 (not (= lt!466534 i!1381)))))

(declare-fun lt!466536 () array!66693)

(declare-fun arrayScanForKey!0 (array!66693 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057589 (= lt!466534 (arrayScanForKey!0 lt!466536 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057590 () Bool)

(declare-fun res!706358 () Bool)

(assert (=> b!1057590 (=> (not res!706358) (not e!601545))))

(assert (=> b!1057590 (= res!706358 (= (select (arr!32064 a!3488) i!1381) k!2747))))

(declare-fun b!1057591 () Bool)

(assert (=> b!1057591 (= e!601545 e!601542)))

(declare-fun res!706360 () Bool)

(assert (=> b!1057591 (=> (not res!706360) (not e!601542))))

(declare-fun arrayContainsKey!0 (array!66693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057591 (= res!706360 (arrayContainsKey!0 lt!466536 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057591 (= lt!466536 (array!66694 (store (arr!32064 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32601 a!3488)))))

(declare-fun b!1057592 () Bool)

(declare-fun res!706359 () Bool)

(assert (=> b!1057592 (=> (not res!706359) (not e!601545))))

(declare-datatypes ((List!22507 0))(
  ( (Nil!22504) (Cons!22503 (h!23712 (_ BitVec 64)) (t!31821 List!22507)) )
))
(declare-fun arrayNoDuplicates!0 (array!66693 (_ BitVec 32) List!22507) Bool)

(assert (=> b!1057592 (= res!706359 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22504))))

(declare-fun b!1057593 () Bool)

(declare-fun e!601543 () Bool)

(assert (=> b!1057593 (= e!601543 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun lt!466535 () (_ BitVec 32))

(declare-fun b!1057594 () Bool)

(assert (=> b!1057594 (= e!601544 (or (bvslt lt!466534 #b00000000000000000000000000000000) (bvsge lt!466535 (size!32601 a!3488)) (bvslt lt!466534 (size!32601 a!3488))))))

(assert (=> b!1057594 (arrayContainsKey!0 a!3488 k!2747 lt!466535)))

(declare-datatypes ((Unit!34659 0))(
  ( (Unit!34660) )
))
(declare-fun lt!466537 () Unit!34659)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66693 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34659)

(assert (=> b!1057594 (= lt!466537 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466535))))

(assert (=> b!1057594 (= lt!466535 (bvadd #b00000000000000000000000000000001 lt!466534))))

(assert (=> b!1057594 (arrayNoDuplicates!0 a!3488 lt!466534 Nil!22504)))

(declare-fun lt!466533 () Unit!34659)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66693 (_ BitVec 32) (_ BitVec 32)) Unit!34659)

(assert (=> b!1057594 (= lt!466533 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466534))))

(declare-fun b!1057595 () Bool)

(assert (=> b!1057595 (= e!601548 e!601543)))

(declare-fun res!706362 () Bool)

(assert (=> b!1057595 (=> res!706362 e!601543)))

(assert (=> b!1057595 (= res!706362 (or (bvsgt lt!466534 i!1381) (bvsle i!1381 lt!466534)))))

(declare-fun b!1057596 () Bool)

(declare-fun res!706361 () Bool)

(assert (=> b!1057596 (=> (not res!706361) (not e!601545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057596 (= res!706361 (validKeyInArray!0 k!2747))))

(assert (= (and start!93346 res!706363) b!1057592))

(assert (= (and b!1057592 res!706359) b!1057596))

(assert (= (and b!1057596 res!706361) b!1057590))

(assert (= (and b!1057590 res!706358) b!1057591))

(assert (= (and b!1057591 res!706360) b!1057589))

(assert (= (and b!1057589 res!706356) b!1057588))

(assert (= (and b!1057588 res!706355) b!1057595))

(assert (= (and b!1057595 (not res!706362)) b!1057593))

(assert (= (and b!1057588 (not res!706357)) b!1057594))

(declare-fun m!977413 () Bool)

(assert (=> b!1057596 m!977413))

(declare-fun m!977415 () Bool)

(assert (=> start!93346 m!977415))

(declare-fun m!977417 () Bool)

(assert (=> b!1057591 m!977417))

(declare-fun m!977419 () Bool)

(assert (=> b!1057591 m!977419))

(assert (=> b!1057588 m!977419))

(declare-fun m!977421 () Bool)

(assert (=> b!1057588 m!977421))

(declare-fun m!977423 () Bool)

(assert (=> b!1057594 m!977423))

(declare-fun m!977425 () Bool)

(assert (=> b!1057594 m!977425))

(declare-fun m!977427 () Bool)

(assert (=> b!1057594 m!977427))

(declare-fun m!977429 () Bool)

(assert (=> b!1057594 m!977429))

(declare-fun m!977431 () Bool)

(assert (=> b!1057592 m!977431))

(declare-fun m!977433 () Bool)

(assert (=> b!1057589 m!977433))

(declare-fun m!977435 () Bool)

(assert (=> b!1057593 m!977435))

(declare-fun m!977437 () Bool)

(assert (=> b!1057590 m!977437))

(push 1)

(assert (not start!93346))

(assert (not b!1057589))

(assert (not b!1057596))

(assert (not b!1057592))

(assert (not b!1057591))

(assert (not b!1057594))

(assert (not b!1057593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

