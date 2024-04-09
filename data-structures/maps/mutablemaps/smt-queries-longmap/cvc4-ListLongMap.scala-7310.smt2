; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93502 () Bool)

(assert start!93502)

(declare-fun res!707320 () Bool)

(declare-fun e!602339 () Bool)

(assert (=> start!93502 (=> (not res!707320) (not e!602339))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66753 0))(
  ( (array!66754 (arr!32091 (Array (_ BitVec 32) (_ BitVec 64))) (size!32628 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66753)

(assert (=> start!93502 (= res!707320 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32628 a!3488)) (bvslt (size!32628 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93502 e!602339))

(assert (=> start!93502 true))

(declare-fun array_inv!24713 (array!66753) Bool)

(assert (=> start!93502 (array_inv!24713 a!3488)))

(declare-fun b!1058632 () Bool)

(declare-fun e!602340 () Bool)

(declare-fun lt!466999 () (_ BitVec 32))

(assert (=> b!1058632 (= e!602340 (not (or (bvsgt lt!466999 i!1381) (bvsgt i!1381 lt!466999))))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1058632 (= (select (store (arr!32091 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466999) k!2747)))

(declare-fun b!1058633 () Bool)

(declare-fun res!707317 () Bool)

(assert (=> b!1058633 (=> (not res!707317) (not e!602339))))

(assert (=> b!1058633 (= res!707317 (= (select (arr!32091 a!3488) i!1381) k!2747))))

(declare-fun b!1058634 () Bool)

(declare-fun e!602338 () Bool)

(assert (=> b!1058634 (= e!602338 e!602340)))

(declare-fun res!707319 () Bool)

(assert (=> b!1058634 (=> (not res!707319) (not e!602340))))

(assert (=> b!1058634 (= res!707319 (not (= lt!466999 i!1381)))))

(declare-fun lt!466998 () array!66753)

(declare-fun arrayScanForKey!0 (array!66753 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058634 (= lt!466999 (arrayScanForKey!0 lt!466998 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058635 () Bool)

(declare-fun res!707316 () Bool)

(assert (=> b!1058635 (=> (not res!707316) (not e!602339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058635 (= res!707316 (validKeyInArray!0 k!2747))))

(declare-fun b!1058636 () Bool)

(assert (=> b!1058636 (= e!602339 e!602338)))

(declare-fun res!707315 () Bool)

(assert (=> b!1058636 (=> (not res!707315) (not e!602338))))

(declare-fun arrayContainsKey!0 (array!66753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058636 (= res!707315 (arrayContainsKey!0 lt!466998 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058636 (= lt!466998 (array!66754 (store (arr!32091 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32628 a!3488)))))

(declare-fun b!1058637 () Bool)

(declare-fun res!707318 () Bool)

(assert (=> b!1058637 (=> (not res!707318) (not e!602339))))

(declare-datatypes ((List!22534 0))(
  ( (Nil!22531) (Cons!22530 (h!23739 (_ BitVec 64)) (t!31848 List!22534)) )
))
(declare-fun arrayNoDuplicates!0 (array!66753 (_ BitVec 32) List!22534) Bool)

(assert (=> b!1058637 (= res!707318 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22531))))

(assert (= (and start!93502 res!707320) b!1058637))

(assert (= (and b!1058637 res!707318) b!1058635))

(assert (= (and b!1058635 res!707316) b!1058633))

(assert (= (and b!1058633 res!707317) b!1058636))

(assert (= (and b!1058636 res!707315) b!1058634))

(assert (= (and b!1058634 res!707319) b!1058632))

(declare-fun m!978419 () Bool)

(assert (=> start!93502 m!978419))

(declare-fun m!978421 () Bool)

(assert (=> b!1058633 m!978421))

(declare-fun m!978423 () Bool)

(assert (=> b!1058632 m!978423))

(declare-fun m!978425 () Bool)

(assert (=> b!1058632 m!978425))

(declare-fun m!978427 () Bool)

(assert (=> b!1058634 m!978427))

(declare-fun m!978429 () Bool)

(assert (=> b!1058636 m!978429))

(assert (=> b!1058636 m!978423))

(declare-fun m!978431 () Bool)

(assert (=> b!1058635 m!978431))

(declare-fun m!978433 () Bool)

(assert (=> b!1058637 m!978433))

(push 1)

(assert (not b!1058637))

(assert (not b!1058634))

(assert (not b!1058636))

(assert (not start!93502))

(assert (not b!1058635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

