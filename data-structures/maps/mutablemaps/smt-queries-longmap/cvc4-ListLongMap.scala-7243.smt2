; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92560 () Bool)

(assert start!92560)

(declare-fun b!1052319 () Bool)

(declare-fun res!701564 () Bool)

(declare-fun e!597496 () Bool)

(assert (=> b!1052319 (=> (not res!701564) (not e!597496))))

(declare-datatypes ((array!66309 0))(
  ( (array!66310 (arr!31890 (Array (_ BitVec 32) (_ BitVec 64))) (size!32427 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66309)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052319 (= res!701564 (= (select (arr!31890 a!3488) i!1381) k!2747))))

(declare-fun b!1052320 () Bool)

(declare-fun e!597493 () Bool)

(declare-fun arrayContainsKey!0 (array!66309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052320 (= e!597493 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052321 () Bool)

(declare-fun res!701554 () Bool)

(assert (=> b!1052321 (=> (not res!701554) (not e!597496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052321 (= res!701554 (validKeyInArray!0 k!2747))))

(declare-fun b!1052322 () Bool)

(declare-fun res!701563 () Bool)

(declare-fun e!597495 () Bool)

(assert (=> b!1052322 (=> res!701563 e!597495)))

(declare-datatypes ((List!22333 0))(
  ( (Nil!22330) (Cons!22329 (h!23538 (_ BitVec 64)) (t!31647 List!22333)) )
))
(declare-fun contains!6174 (List!22333 (_ BitVec 64)) Bool)

(assert (=> b!1052322 (= res!701563 (contains!6174 Nil!22330 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052323 () Bool)

(declare-fun e!597492 () Bool)

(assert (=> b!1052323 (= e!597496 e!597492)))

(declare-fun res!701558 () Bool)

(assert (=> b!1052323 (=> (not res!701558) (not e!597492))))

(declare-fun lt!464703 () array!66309)

(assert (=> b!1052323 (= res!701558 (arrayContainsKey!0 lt!464703 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052323 (= lt!464703 (array!66310 (store (arr!31890 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32427 a!3488)))))

(declare-fun b!1052324 () Bool)

(declare-fun e!597494 () Bool)

(declare-fun e!597491 () Bool)

(assert (=> b!1052324 (= e!597494 (not e!597491))))

(declare-fun res!701560 () Bool)

(assert (=> b!1052324 (=> res!701560 e!597491)))

(declare-fun lt!464704 () (_ BitVec 32))

(assert (=> b!1052324 (= res!701560 (or (bvsgt lt!464704 i!1381) (bvsle i!1381 lt!464704)))))

(declare-fun e!597497 () Bool)

(assert (=> b!1052324 e!597497))

(declare-fun res!701555 () Bool)

(assert (=> b!1052324 (=> (not res!701555) (not e!597497))))

(assert (=> b!1052324 (= res!701555 (= (select (store (arr!31890 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464704) k!2747))))

(declare-fun b!1052325 () Bool)

(declare-fun res!701557 () Bool)

(assert (=> b!1052325 (=> res!701557 e!597495)))

(declare-fun noDuplicate!1559 (List!22333) Bool)

(assert (=> b!1052325 (= res!701557 (not (noDuplicate!1559 Nil!22330)))))

(declare-fun b!1052326 () Bool)

(declare-fun res!701561 () Bool)

(assert (=> b!1052326 (=> (not res!701561) (not e!597496))))

(declare-fun arrayNoDuplicates!0 (array!66309 (_ BitVec 32) List!22333) Bool)

(assert (=> b!1052326 (= res!701561 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22330))))

(declare-fun b!1052327 () Bool)

(assert (=> b!1052327 (= e!597491 e!597495)))

(declare-fun res!701565 () Bool)

(assert (=> b!1052327 (=> res!701565 e!597495)))

(declare-fun lt!464707 () (_ BitVec 32))

(assert (=> b!1052327 (= res!701565 (or (bvslt lt!464704 #b00000000000000000000000000000000) (bvsge lt!464707 (size!32427 a!3488)) (bvsge lt!464704 (size!32427 a!3488))))))

(assert (=> b!1052327 (arrayContainsKey!0 a!3488 k!2747 lt!464707)))

(declare-datatypes ((Unit!34461 0))(
  ( (Unit!34462) )
))
(declare-fun lt!464706 () Unit!34461)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66309 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34461)

(assert (=> b!1052327 (= lt!464706 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464707))))

(assert (=> b!1052327 (= lt!464707 (bvadd #b00000000000000000000000000000001 lt!464704))))

(assert (=> b!1052327 (arrayNoDuplicates!0 a!3488 lt!464704 Nil!22330)))

(declare-fun lt!464705 () Unit!34461)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66309 (_ BitVec 32) (_ BitVec 32)) Unit!34461)

(assert (=> b!1052327 (= lt!464705 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464704))))

(declare-fun b!1052328 () Bool)

(assert (=> b!1052328 (= e!597497 e!597493)))

(declare-fun res!701556 () Bool)

(assert (=> b!1052328 (=> res!701556 e!597493)))

(assert (=> b!1052328 (= res!701556 (or (bvsgt lt!464704 i!1381) (bvsle i!1381 lt!464704)))))

(declare-fun b!1052329 () Bool)

(assert (=> b!1052329 (= e!597495 true)))

(declare-fun lt!464702 () Bool)

(assert (=> b!1052329 (= lt!464702 (contains!6174 Nil!22330 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!701562 () Bool)

(assert (=> start!92560 (=> (not res!701562) (not e!597496))))

(assert (=> start!92560 (= res!701562 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32427 a!3488)) (bvslt (size!32427 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92560 e!597496))

(assert (=> start!92560 true))

(declare-fun array_inv!24512 (array!66309) Bool)

(assert (=> start!92560 (array_inv!24512 a!3488)))

(declare-fun b!1052330 () Bool)

(assert (=> b!1052330 (= e!597492 e!597494)))

(declare-fun res!701559 () Bool)

(assert (=> b!1052330 (=> (not res!701559) (not e!597494))))

(assert (=> b!1052330 (= res!701559 (not (= lt!464704 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66309 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052330 (= lt!464704 (arrayScanForKey!0 lt!464703 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92560 res!701562) b!1052326))

(assert (= (and b!1052326 res!701561) b!1052321))

(assert (= (and b!1052321 res!701554) b!1052319))

(assert (= (and b!1052319 res!701564) b!1052323))

(assert (= (and b!1052323 res!701558) b!1052330))

(assert (= (and b!1052330 res!701559) b!1052324))

(assert (= (and b!1052324 res!701555) b!1052328))

(assert (= (and b!1052328 (not res!701556)) b!1052320))

(assert (= (and b!1052324 (not res!701560)) b!1052327))

(assert (= (and b!1052327 (not res!701565)) b!1052325))

(assert (= (and b!1052325 (not res!701557)) b!1052322))

(assert (= (and b!1052322 (not res!701563)) b!1052329))

(declare-fun m!972847 () Bool)

(assert (=> start!92560 m!972847))

(declare-fun m!972849 () Bool)

(assert (=> b!1052325 m!972849))

(declare-fun m!972851 () Bool)

(assert (=> b!1052322 m!972851))

(declare-fun m!972853 () Bool)

(assert (=> b!1052330 m!972853))

(declare-fun m!972855 () Bool)

(assert (=> b!1052321 m!972855))

(declare-fun m!972857 () Bool)

(assert (=> b!1052326 m!972857))

(declare-fun m!972859 () Bool)

(assert (=> b!1052319 m!972859))

(declare-fun m!972861 () Bool)

(assert (=> b!1052329 m!972861))

(declare-fun m!972863 () Bool)

(assert (=> b!1052323 m!972863))

(declare-fun m!972865 () Bool)

(assert (=> b!1052323 m!972865))

(declare-fun m!972867 () Bool)

(assert (=> b!1052320 m!972867))

(declare-fun m!972869 () Bool)

(assert (=> b!1052327 m!972869))

(declare-fun m!972871 () Bool)

(assert (=> b!1052327 m!972871))

(declare-fun m!972873 () Bool)

(assert (=> b!1052327 m!972873))

(declare-fun m!972875 () Bool)

(assert (=> b!1052327 m!972875))

(assert (=> b!1052324 m!972865))

(declare-fun m!972877 () Bool)

(assert (=> b!1052324 m!972877))

(push 1)

