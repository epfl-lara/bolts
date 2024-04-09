; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92878 () Bool)

(assert start!92878)

(declare-fun b!1054284 () Bool)

(declare-fun res!703338 () Bool)

(declare-fun e!598984 () Bool)

(assert (=> b!1054284 (=> (not res!703338) (not e!598984))))

(declare-datatypes ((array!66486 0))(
  ( (array!66487 (arr!31971 (Array (_ BitVec 32) (_ BitVec 64))) (size!32508 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66486)

(declare-datatypes ((List!22414 0))(
  ( (Nil!22411) (Cons!22410 (h!23619 (_ BitVec 64)) (t!31728 List!22414)) )
))
(declare-fun arrayNoDuplicates!0 (array!66486 (_ BitVec 32) List!22414) Bool)

(assert (=> b!1054284 (= res!703338 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22411))))

(declare-fun b!1054285 () Bool)

(declare-fun e!598983 () Bool)

(declare-fun e!598982 () Bool)

(assert (=> b!1054285 (= e!598983 (not e!598982))))

(declare-fun res!703341 () Bool)

(assert (=> b!1054285 (=> res!703341 e!598982)))

(declare-fun lt!465354 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054285 (= res!703341 (bvsle lt!465354 i!1381))))

(declare-fun e!598986 () Bool)

(assert (=> b!1054285 e!598986))

(declare-fun res!703339 () Bool)

(assert (=> b!1054285 (=> (not res!703339) (not e!598986))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1054285 (= res!703339 (= (select (store (arr!31971 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465354) k!2747))))

(declare-fun b!1054286 () Bool)

(declare-fun e!598988 () Bool)

(assert (=> b!1054286 (= e!598984 e!598988)))

(declare-fun res!703336 () Bool)

(assert (=> b!1054286 (=> (not res!703336) (not e!598988))))

(declare-fun lt!465353 () array!66486)

(declare-fun arrayContainsKey!0 (array!66486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054286 (= res!703336 (arrayContainsKey!0 lt!465353 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054286 (= lt!465353 (array!66487 (store (arr!31971 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32508 a!3488)))))

(declare-fun b!1054287 () Bool)

(assert (=> b!1054287 (= e!598982 true)))

(assert (=> b!1054287 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22411)))

(declare-datatypes ((Unit!34509 0))(
  ( (Unit!34510) )
))
(declare-fun lt!465355 () Unit!34509)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66486 (_ BitVec 32) (_ BitVec 32)) Unit!34509)

(assert (=> b!1054287 (= lt!465355 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054288 () Bool)

(assert (=> b!1054288 (= e!598988 e!598983)))

(declare-fun res!703333 () Bool)

(assert (=> b!1054288 (=> (not res!703333) (not e!598983))))

(assert (=> b!1054288 (= res!703333 (not (= lt!465354 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66486 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054288 (= lt!465354 (arrayScanForKey!0 lt!465353 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054289 () Bool)

(declare-fun e!598987 () Bool)

(assert (=> b!1054289 (= e!598986 e!598987)))

(declare-fun res!703334 () Bool)

(assert (=> b!1054289 (=> res!703334 e!598987)))

(assert (=> b!1054289 (= res!703334 (bvsle lt!465354 i!1381))))

(declare-fun res!703337 () Bool)

(assert (=> start!92878 (=> (not res!703337) (not e!598984))))

(assert (=> start!92878 (= res!703337 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32508 a!3488)) (bvslt (size!32508 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92878 e!598984))

(assert (=> start!92878 true))

(declare-fun array_inv!24593 (array!66486) Bool)

(assert (=> start!92878 (array_inv!24593 a!3488)))

(declare-fun b!1054290 () Bool)

(declare-fun res!703340 () Bool)

(assert (=> b!1054290 (=> (not res!703340) (not e!598984))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054290 (= res!703340 (validKeyInArray!0 k!2747))))

(declare-fun b!1054291 () Bool)

(declare-fun res!703335 () Bool)

(assert (=> b!1054291 (=> (not res!703335) (not e!598984))))

(assert (=> b!1054291 (= res!703335 (= (select (arr!31971 a!3488) i!1381) k!2747))))

(declare-fun b!1054292 () Bool)

(assert (=> b!1054292 (= e!598987 (arrayContainsKey!0 a!3488 k!2747 lt!465354))))

(assert (= (and start!92878 res!703337) b!1054284))

(assert (= (and b!1054284 res!703338) b!1054290))

(assert (= (and b!1054290 res!703340) b!1054291))

(assert (= (and b!1054291 res!703335) b!1054286))

(assert (= (and b!1054286 res!703336) b!1054288))

(assert (= (and b!1054288 res!703333) b!1054285))

(assert (= (and b!1054285 res!703339) b!1054289))

(assert (= (and b!1054289 (not res!703334)) b!1054292))

(assert (= (and b!1054285 (not res!703341)) b!1054287))

(declare-fun m!974513 () Bool)

(assert (=> b!1054288 m!974513))

(declare-fun m!974515 () Bool)

(assert (=> b!1054290 m!974515))

(declare-fun m!974517 () Bool)

(assert (=> b!1054286 m!974517))

(declare-fun m!974519 () Bool)

(assert (=> b!1054286 m!974519))

(assert (=> b!1054285 m!974519))

(declare-fun m!974521 () Bool)

(assert (=> b!1054285 m!974521))

(declare-fun m!974523 () Bool)

(assert (=> b!1054292 m!974523))

(declare-fun m!974525 () Bool)

(assert (=> b!1054287 m!974525))

(declare-fun m!974527 () Bool)

(assert (=> b!1054287 m!974527))

(declare-fun m!974529 () Bool)

(assert (=> b!1054284 m!974529))

(declare-fun m!974531 () Bool)

(assert (=> b!1054291 m!974531))

(declare-fun m!974533 () Bool)

(assert (=> start!92878 m!974533))

(push 1)

