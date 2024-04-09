; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92472 () Bool)

(assert start!92472)

(declare-fun b!1050925 () Bool)

(declare-fun e!596505 () Bool)

(assert (=> b!1050925 (= e!596505 (not true))))

(declare-fun e!596504 () Bool)

(assert (=> b!1050925 e!596504))

(declare-fun res!700160 () Bool)

(assert (=> b!1050925 (=> (not res!700160) (not e!596504))))

(declare-datatypes ((array!66221 0))(
  ( (array!66222 (arr!31846 (Array (_ BitVec 32) (_ BitVec 64))) (size!32383 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66221)

(declare-fun lt!464100 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050925 (= res!700160 (= (select (store (arr!31846 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464100) k!2747))))

(declare-fun b!1050926 () Bool)

(declare-fun res!700165 () Bool)

(declare-fun e!596503 () Bool)

(assert (=> b!1050926 (=> (not res!700165) (not e!596503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050926 (= res!700165 (validKeyInArray!0 k!2747))))

(declare-fun b!1050927 () Bool)

(declare-fun res!700161 () Bool)

(assert (=> b!1050927 (=> (not res!700161) (not e!596503))))

(declare-datatypes ((List!22289 0))(
  ( (Nil!22286) (Cons!22285 (h!23494 (_ BitVec 64)) (t!31603 List!22289)) )
))
(declare-fun arrayNoDuplicates!0 (array!66221 (_ BitVec 32) List!22289) Bool)

(assert (=> b!1050927 (= res!700161 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22286))))

(declare-fun b!1050928 () Bool)

(declare-fun e!596506 () Bool)

(assert (=> b!1050928 (= e!596506 e!596505)))

(declare-fun res!700162 () Bool)

(assert (=> b!1050928 (=> (not res!700162) (not e!596505))))

(assert (=> b!1050928 (= res!700162 (not (= lt!464100 i!1381)))))

(declare-fun lt!464101 () array!66221)

(declare-fun arrayScanForKey!0 (array!66221 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050928 (= lt!464100 (arrayScanForKey!0 lt!464101 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!700163 () Bool)

(assert (=> start!92472 (=> (not res!700163) (not e!596503))))

(assert (=> start!92472 (= res!700163 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32383 a!3488)) (bvslt (size!32383 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92472 e!596503))

(assert (=> start!92472 true))

(declare-fun array_inv!24468 (array!66221) Bool)

(assert (=> start!92472 (array_inv!24468 a!3488)))

(declare-fun e!596502 () Bool)

(declare-fun b!1050929 () Bool)

(declare-fun arrayContainsKey!0 (array!66221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050929 (= e!596502 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1050930 () Bool)

(declare-fun res!700166 () Bool)

(assert (=> b!1050930 (=> (not res!700166) (not e!596503))))

(assert (=> b!1050930 (= res!700166 (= (select (arr!31846 a!3488) i!1381) k!2747))))

(declare-fun b!1050931 () Bool)

(assert (=> b!1050931 (= e!596503 e!596506)))

(declare-fun res!700167 () Bool)

(assert (=> b!1050931 (=> (not res!700167) (not e!596506))))

(assert (=> b!1050931 (= res!700167 (arrayContainsKey!0 lt!464101 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050931 (= lt!464101 (array!66222 (store (arr!31846 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32383 a!3488)))))

(declare-fun b!1050932 () Bool)

(assert (=> b!1050932 (= e!596504 e!596502)))

(declare-fun res!700164 () Bool)

(assert (=> b!1050932 (=> res!700164 e!596502)))

(assert (=> b!1050932 (= res!700164 (or (bvsgt lt!464100 i!1381) (bvsle i!1381 lt!464100)))))

(assert (= (and start!92472 res!700163) b!1050927))

(assert (= (and b!1050927 res!700161) b!1050926))

(assert (= (and b!1050926 res!700165) b!1050930))

(assert (= (and b!1050930 res!700166) b!1050931))

(assert (= (and b!1050931 res!700167) b!1050928))

(assert (= (and b!1050928 res!700162) b!1050925))

(assert (= (and b!1050925 res!700160) b!1050932))

(assert (= (and b!1050932 (not res!700164)) b!1050929))

(declare-fun m!971661 () Bool)

(assert (=> b!1050931 m!971661))

(declare-fun m!971663 () Bool)

(assert (=> b!1050931 m!971663))

(declare-fun m!971665 () Bool)

(assert (=> b!1050930 m!971665))

(assert (=> b!1050925 m!971663))

(declare-fun m!971667 () Bool)

(assert (=> b!1050925 m!971667))

(declare-fun m!971669 () Bool)

(assert (=> b!1050926 m!971669))

(declare-fun m!971671 () Bool)

(assert (=> b!1050928 m!971671))

(declare-fun m!971673 () Bool)

(assert (=> start!92472 m!971673))

(declare-fun m!971675 () Bool)

(assert (=> b!1050927 m!971675))

(declare-fun m!971677 () Bool)

(assert (=> b!1050929 m!971677))

(push 1)

