; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92562 () Bool)

(assert start!92562)

(declare-fun b!1052355 () Bool)

(declare-fun res!701597 () Bool)

(declare-fun e!597518 () Bool)

(assert (=> b!1052355 (=> res!701597 e!597518)))

(declare-datatypes ((List!22334 0))(
  ( (Nil!22331) (Cons!22330 (h!23539 (_ BitVec 64)) (t!31648 List!22334)) )
))
(declare-fun contains!6175 (List!22334 (_ BitVec 64)) Bool)

(assert (=> b!1052355 (= res!701597 (contains!6175 Nil!22331 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052357 () Bool)

(declare-fun e!597519 () Bool)

(declare-fun e!597516 () Bool)

(assert (=> b!1052357 (= e!597519 e!597516)))

(declare-fun res!701592 () Bool)

(assert (=> b!1052357 (=> (not res!701592) (not e!597516))))

(declare-fun lt!464722 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052357 (= res!701592 (not (= lt!464722 i!1381)))))

(declare-datatypes ((array!66311 0))(
  ( (array!66312 (arr!31891 (Array (_ BitVec 32) (_ BitVec 64))) (size!32428 (_ BitVec 32))) )
))
(declare-fun lt!464724 () array!66311)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66311 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052357 (= lt!464722 (arrayScanForKey!0 lt!464724 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052358 () Bool)

(declare-fun e!597517 () Bool)

(assert (=> b!1052358 (= e!597517 e!597519)))

(declare-fun res!701595 () Bool)

(assert (=> b!1052358 (=> (not res!701595) (not e!597519))))

(declare-fun arrayContainsKey!0 (array!66311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052358 (= res!701595 (arrayContainsKey!0 lt!464724 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66311)

(assert (=> b!1052358 (= lt!464724 (array!66312 (store (arr!31891 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32428 a!3488)))))

(declare-fun b!1052359 () Bool)

(declare-fun res!701594 () Bool)

(assert (=> b!1052359 (=> res!701594 e!597518)))

(declare-fun noDuplicate!1560 (List!22334) Bool)

(assert (=> b!1052359 (= res!701594 (not (noDuplicate!1560 Nil!22331)))))

(declare-fun b!1052360 () Bool)

(declare-fun res!701601 () Bool)

(assert (=> b!1052360 (=> (not res!701601) (not e!597517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052360 (= res!701601 (validKeyInArray!0 k!2747))))

(declare-fun b!1052361 () Bool)

(declare-fun e!597514 () Bool)

(assert (=> b!1052361 (= e!597514 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052362 () Bool)

(declare-fun e!597520 () Bool)

(assert (=> b!1052362 (= e!597520 e!597514)))

(declare-fun res!701600 () Bool)

(assert (=> b!1052362 (=> res!701600 e!597514)))

(assert (=> b!1052362 (= res!701600 (or (bvsgt lt!464722 i!1381) (bvsle i!1381 lt!464722)))))

(declare-fun b!1052356 () Bool)

(declare-fun res!701590 () Bool)

(assert (=> b!1052356 (=> (not res!701590) (not e!597517))))

(declare-fun arrayNoDuplicates!0 (array!66311 (_ BitVec 32) List!22334) Bool)

(assert (=> b!1052356 (= res!701590 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22331))))

(declare-fun res!701598 () Bool)

(assert (=> start!92562 (=> (not res!701598) (not e!597517))))

(assert (=> start!92562 (= res!701598 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32428 a!3488)) (bvslt (size!32428 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92562 e!597517))

(assert (=> start!92562 true))

(declare-fun array_inv!24513 (array!66311) Bool)

(assert (=> start!92562 (array_inv!24513 a!3488)))

(declare-fun b!1052363 () Bool)

(declare-fun e!597521 () Bool)

(assert (=> b!1052363 (= e!597516 (not e!597521))))

(declare-fun res!701596 () Bool)

(assert (=> b!1052363 (=> res!701596 e!597521)))

(assert (=> b!1052363 (= res!701596 (or (bvsgt lt!464722 i!1381) (bvsle i!1381 lt!464722)))))

(assert (=> b!1052363 e!597520))

(declare-fun res!701591 () Bool)

(assert (=> b!1052363 (=> (not res!701591) (not e!597520))))

(assert (=> b!1052363 (= res!701591 (= (select (store (arr!31891 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464722) k!2747))))

(declare-fun b!1052364 () Bool)

(assert (=> b!1052364 (= e!597518 true)))

(declare-fun lt!464721 () Bool)

(assert (=> b!1052364 (= lt!464721 (contains!6175 Nil!22331 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052365 () Bool)

(declare-fun res!701593 () Bool)

(assert (=> b!1052365 (=> (not res!701593) (not e!597517))))

(assert (=> b!1052365 (= res!701593 (= (select (arr!31891 a!3488) i!1381) k!2747))))

(declare-fun b!1052366 () Bool)

(assert (=> b!1052366 (= e!597521 e!597518)))

(declare-fun res!701599 () Bool)

(assert (=> b!1052366 (=> res!701599 e!597518)))

(declare-fun lt!464720 () (_ BitVec 32))

(assert (=> b!1052366 (= res!701599 (or (bvslt lt!464722 #b00000000000000000000000000000000) (bvsge lt!464720 (size!32428 a!3488)) (bvsge lt!464722 (size!32428 a!3488))))))

(assert (=> b!1052366 (arrayContainsKey!0 a!3488 k!2747 lt!464720)))

(declare-datatypes ((Unit!34463 0))(
  ( (Unit!34464) )
))
(declare-fun lt!464723 () Unit!34463)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66311 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34463)

(assert (=> b!1052366 (= lt!464723 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464720))))

(assert (=> b!1052366 (= lt!464720 (bvadd #b00000000000000000000000000000001 lt!464722))))

(assert (=> b!1052366 (arrayNoDuplicates!0 a!3488 lt!464722 Nil!22331)))

(declare-fun lt!464725 () Unit!34463)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66311 (_ BitVec 32) (_ BitVec 32)) Unit!34463)

(assert (=> b!1052366 (= lt!464725 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464722))))

(assert (= (and start!92562 res!701598) b!1052356))

(assert (= (and b!1052356 res!701590) b!1052360))

(assert (= (and b!1052360 res!701601) b!1052365))

(assert (= (and b!1052365 res!701593) b!1052358))

(assert (= (and b!1052358 res!701595) b!1052357))

(assert (= (and b!1052357 res!701592) b!1052363))

(assert (= (and b!1052363 res!701591) b!1052362))

(assert (= (and b!1052362 (not res!701600)) b!1052361))

(assert (= (and b!1052363 (not res!701596)) b!1052366))

(assert (= (and b!1052366 (not res!701599)) b!1052359))

(assert (= (and b!1052359 (not res!701594)) b!1052355))

(assert (= (and b!1052355 (not res!701597)) b!1052364))

(declare-fun m!972879 () Bool)

(assert (=> start!92562 m!972879))

(declare-fun m!972881 () Bool)

(assert (=> b!1052356 m!972881))

(declare-fun m!972883 () Bool)

(assert (=> b!1052360 m!972883))

(declare-fun m!972885 () Bool)

(assert (=> b!1052357 m!972885))

(declare-fun m!972887 () Bool)

(assert (=> b!1052361 m!972887))

(declare-fun m!972889 () Bool)

(assert (=> b!1052366 m!972889))

(declare-fun m!972891 () Bool)

(assert (=> b!1052366 m!972891))

(declare-fun m!972893 () Bool)

(assert (=> b!1052366 m!972893))

(declare-fun m!972895 () Bool)

(assert (=> b!1052366 m!972895))

(declare-fun m!972897 () Bool)

(assert (=> b!1052355 m!972897))

(declare-fun m!972899 () Bool)

(assert (=> b!1052363 m!972899))

(declare-fun m!972901 () Bool)

(assert (=> b!1052363 m!972901))

(declare-fun m!972903 () Bool)

(assert (=> b!1052364 m!972903))

(declare-fun m!972905 () Bool)

(assert (=> b!1052358 m!972905))

(assert (=> b!1052358 m!972899))

(declare-fun m!972907 () Bool)

(assert (=> b!1052359 m!972907))

(declare-fun m!972909 () Bool)

(assert (=> b!1052365 m!972909))

(push 1)

