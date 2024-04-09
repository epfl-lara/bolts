; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92526 () Bool)

(assert start!92526)

(declare-fun b!1051707 () Bool)

(declare-fun res!700945 () Bool)

(declare-fun e!597082 () Bool)

(assert (=> b!1051707 (=> (not res!700945) (not e!597082))))

(declare-datatypes ((array!66275 0))(
  ( (array!66276 (arr!31873 (Array (_ BitVec 32) (_ BitVec 64))) (size!32410 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66275)

(declare-datatypes ((List!22316 0))(
  ( (Nil!22313) (Cons!22312 (h!23521 (_ BitVec 64)) (t!31630 List!22316)) )
))
(declare-fun arrayNoDuplicates!0 (array!66275 (_ BitVec 32) List!22316) Bool)

(assert (=> b!1051707 (= res!700945 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22313))))

(declare-fun b!1051708 () Bool)

(declare-fun e!597086 () Bool)

(declare-fun e!597083 () Bool)

(assert (=> b!1051708 (= e!597086 e!597083)))

(declare-fun res!700944 () Bool)

(assert (=> b!1051708 (=> (not res!700944) (not e!597083))))

(declare-fun lt!464396 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051708 (= res!700944 (not (= lt!464396 i!1381)))))

(declare-fun lt!464400 () array!66275)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66275 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051708 (= lt!464396 (arrayScanForKey!0 lt!464400 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051709 () Bool)

(declare-fun res!700946 () Bool)

(assert (=> b!1051709 (=> (not res!700946) (not e!597082))))

(assert (=> b!1051709 (= res!700946 (= (select (arr!31873 a!3488) i!1381) k!2747))))

(declare-fun b!1051710 () Bool)

(declare-fun res!700952 () Bool)

(assert (=> b!1051710 (=> (not res!700952) (not e!597082))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051710 (= res!700952 (validKeyInArray!0 k!2747))))

(declare-fun b!1051711 () Bool)

(assert (=> b!1051711 (= e!597082 e!597086)))

(declare-fun res!700949 () Bool)

(assert (=> b!1051711 (=> (not res!700949) (not e!597086))))

(declare-fun arrayContainsKey!0 (array!66275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051711 (= res!700949 (arrayContainsKey!0 lt!464400 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051711 (= lt!464400 (array!66276 (store (arr!31873 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32410 a!3488)))))

(declare-fun b!1051712 () Bool)

(declare-fun e!597087 () Bool)

(declare-fun e!597085 () Bool)

(assert (=> b!1051712 (= e!597087 e!597085)))

(declare-fun res!700953 () Bool)

(assert (=> b!1051712 (=> res!700953 e!597085)))

(declare-fun lt!464399 () (_ BitVec 32))

(assert (=> b!1051712 (= res!700953 (or (bvslt lt!464396 #b00000000000000000000000000000000) (bvsge lt!464399 (size!32410 a!3488)) (bvsge lt!464396 (size!32410 a!3488))))))

(assert (=> b!1051712 (arrayContainsKey!0 a!3488 k!2747 lt!464399)))

(declare-datatypes ((Unit!34427 0))(
  ( (Unit!34428) )
))
(declare-fun lt!464401 () Unit!34427)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66275 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34427)

(assert (=> b!1051712 (= lt!464401 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464399))))

(assert (=> b!1051712 (= lt!464399 (bvadd #b00000000000000000000000000000001 lt!464396))))

(assert (=> b!1051712 (arrayNoDuplicates!0 a!3488 lt!464396 Nil!22313)))

(declare-fun lt!464397 () Unit!34427)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66275 (_ BitVec 32) (_ BitVec 32)) Unit!34427)

(assert (=> b!1051712 (= lt!464397 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464396))))

(declare-fun b!1051713 () Bool)

(declare-fun res!700947 () Bool)

(assert (=> b!1051713 (=> res!700947 e!597085)))

(declare-fun contains!6157 (List!22316 (_ BitVec 64)) Bool)

(assert (=> b!1051713 (= res!700947 (contains!6157 Nil!22313 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051714 () Bool)

(declare-fun e!597089 () Bool)

(declare-fun e!597084 () Bool)

(assert (=> b!1051714 (= e!597089 e!597084)))

(declare-fun res!700951 () Bool)

(assert (=> b!1051714 (=> res!700951 e!597084)))

(assert (=> b!1051714 (= res!700951 (or (bvsgt lt!464396 i!1381) (bvsle i!1381 lt!464396)))))

(declare-fun b!1051715 () Bool)

(assert (=> b!1051715 (= e!597083 (not e!597087))))

(declare-fun res!700942 () Bool)

(assert (=> b!1051715 (=> res!700942 e!597087)))

(assert (=> b!1051715 (= res!700942 (or (bvsgt lt!464396 i!1381) (bvsle i!1381 lt!464396)))))

(assert (=> b!1051715 e!597089))

(declare-fun res!700948 () Bool)

(assert (=> b!1051715 (=> (not res!700948) (not e!597089))))

(assert (=> b!1051715 (= res!700948 (= (select (store (arr!31873 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464396) k!2747))))

(declare-fun b!1051716 () Bool)

(assert (=> b!1051716 (= e!597085 true)))

(declare-fun lt!464398 () Bool)

(assert (=> b!1051716 (= lt!464398 (contains!6157 Nil!22313 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!700943 () Bool)

(assert (=> start!92526 (=> (not res!700943) (not e!597082))))

(assert (=> start!92526 (= res!700943 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32410 a!3488)) (bvslt (size!32410 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92526 e!597082))

(assert (=> start!92526 true))

(declare-fun array_inv!24495 (array!66275) Bool)

(assert (=> start!92526 (array_inv!24495 a!3488)))

(declare-fun b!1051717 () Bool)

(assert (=> b!1051717 (= e!597084 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051718 () Bool)

(declare-fun res!700950 () Bool)

(assert (=> b!1051718 (=> res!700950 e!597085)))

(declare-fun noDuplicate!1542 (List!22316) Bool)

(assert (=> b!1051718 (= res!700950 (not (noDuplicate!1542 Nil!22313)))))

(assert (= (and start!92526 res!700943) b!1051707))

(assert (= (and b!1051707 res!700945) b!1051710))

(assert (= (and b!1051710 res!700952) b!1051709))

(assert (= (and b!1051709 res!700946) b!1051711))

(assert (= (and b!1051711 res!700949) b!1051708))

(assert (= (and b!1051708 res!700944) b!1051715))

(assert (= (and b!1051715 res!700948) b!1051714))

(assert (= (and b!1051714 (not res!700951)) b!1051717))

(assert (= (and b!1051715 (not res!700942)) b!1051712))

(assert (= (and b!1051712 (not res!700953)) b!1051718))

(assert (= (and b!1051718 (not res!700950)) b!1051713))

(assert (= (and b!1051713 (not res!700947)) b!1051716))

(declare-fun m!972303 () Bool)

(assert (=> b!1051707 m!972303))

(declare-fun m!972305 () Bool)

(assert (=> b!1051717 m!972305))

(declare-fun m!972307 () Bool)

(assert (=> b!1051712 m!972307))

(declare-fun m!972309 () Bool)

(assert (=> b!1051712 m!972309))

(declare-fun m!972311 () Bool)

(assert (=> b!1051712 m!972311))

(declare-fun m!972313 () Bool)

(assert (=> b!1051712 m!972313))

(declare-fun m!972315 () Bool)

(assert (=> b!1051711 m!972315))

(declare-fun m!972317 () Bool)

(assert (=> b!1051711 m!972317))

(declare-fun m!972319 () Bool)

(assert (=> b!1051710 m!972319))

(assert (=> b!1051715 m!972317))

(declare-fun m!972321 () Bool)

(assert (=> b!1051715 m!972321))

(declare-fun m!972323 () Bool)

(assert (=> start!92526 m!972323))

(declare-fun m!972325 () Bool)

(assert (=> b!1051713 m!972325))

(declare-fun m!972327 () Bool)

(assert (=> b!1051709 m!972327))

(declare-fun m!972329 () Bool)

(assert (=> b!1051718 m!972329))

(declare-fun m!972331 () Bool)

(assert (=> b!1051708 m!972331))

(declare-fun m!972333 () Bool)

(assert (=> b!1051716 m!972333))

(push 1)

