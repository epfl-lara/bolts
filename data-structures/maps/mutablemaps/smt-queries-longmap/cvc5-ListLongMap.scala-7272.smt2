; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92886 () Bool)

(assert start!92886)

(declare-fun res!703445 () Bool)

(declare-fun e!599071 () Bool)

(assert (=> start!92886 (=> (not res!703445) (not e!599071))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66494 0))(
  ( (array!66495 (arr!31975 (Array (_ BitVec 32) (_ BitVec 64))) (size!32512 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66494)

(assert (=> start!92886 (= res!703445 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32512 a!3488)) (bvslt (size!32512 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92886 e!599071))

(assert (=> start!92886 true))

(declare-fun array_inv!24597 (array!66494) Bool)

(assert (=> start!92886 (array_inv!24597 a!3488)))

(declare-fun b!1054392 () Bool)

(declare-fun e!599068 () Bool)

(declare-fun lt!465390 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054392 (= e!599068 (arrayContainsKey!0 a!3488 k!2747 lt!465390))))

(declare-fun b!1054393 () Bool)

(declare-fun e!599066 () Bool)

(declare-fun e!599069 () Bool)

(assert (=> b!1054393 (= e!599066 (not e!599069))))

(declare-fun res!703447 () Bool)

(assert (=> b!1054393 (=> res!703447 e!599069)))

(assert (=> b!1054393 (= res!703447 (bvsle lt!465390 i!1381))))

(declare-fun e!599067 () Bool)

(assert (=> b!1054393 e!599067))

(declare-fun res!703448 () Bool)

(assert (=> b!1054393 (=> (not res!703448) (not e!599067))))

(assert (=> b!1054393 (= res!703448 (= (select (store (arr!31975 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465390) k!2747))))

(declare-fun b!1054394 () Bool)

(declare-fun res!703441 () Bool)

(assert (=> b!1054394 (=> (not res!703441) (not e!599071))))

(assert (=> b!1054394 (= res!703441 (= (select (arr!31975 a!3488) i!1381) k!2747))))

(declare-fun b!1054395 () Bool)

(declare-fun e!599072 () Bool)

(assert (=> b!1054395 (= e!599072 e!599066)))

(declare-fun res!703446 () Bool)

(assert (=> b!1054395 (=> (not res!703446) (not e!599066))))

(assert (=> b!1054395 (= res!703446 (not (= lt!465390 i!1381)))))

(declare-fun lt!465389 () array!66494)

(declare-fun arrayScanForKey!0 (array!66494 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054395 (= lt!465390 (arrayScanForKey!0 lt!465389 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054396 () Bool)

(declare-fun res!703443 () Bool)

(assert (=> b!1054396 (=> (not res!703443) (not e!599071))))

(declare-datatypes ((List!22418 0))(
  ( (Nil!22415) (Cons!22414 (h!23623 (_ BitVec 64)) (t!31732 List!22418)) )
))
(declare-fun arrayNoDuplicates!0 (array!66494 (_ BitVec 32) List!22418) Bool)

(assert (=> b!1054396 (= res!703443 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22415))))

(declare-fun b!1054397 () Bool)

(assert (=> b!1054397 (= e!599071 e!599072)))

(declare-fun res!703449 () Bool)

(assert (=> b!1054397 (=> (not res!703449) (not e!599072))))

(assert (=> b!1054397 (= res!703449 (arrayContainsKey!0 lt!465389 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054397 (= lt!465389 (array!66495 (store (arr!31975 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32512 a!3488)))))

(declare-fun b!1054398 () Bool)

(declare-fun res!703442 () Bool)

(assert (=> b!1054398 (=> (not res!703442) (not e!599071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054398 (= res!703442 (validKeyInArray!0 k!2747))))

(declare-fun b!1054399 () Bool)

(assert (=> b!1054399 (= e!599067 e!599068)))

(declare-fun res!703444 () Bool)

(assert (=> b!1054399 (=> res!703444 e!599068)))

(assert (=> b!1054399 (= res!703444 (bvsle lt!465390 i!1381))))

(declare-fun b!1054400 () Bool)

(assert (=> b!1054400 (= e!599069 true)))

(assert (=> b!1054400 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22415)))

(declare-datatypes ((Unit!34517 0))(
  ( (Unit!34518) )
))
(declare-fun lt!465391 () Unit!34517)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66494 (_ BitVec 32) (_ BitVec 32)) Unit!34517)

(assert (=> b!1054400 (= lt!465391 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92886 res!703445) b!1054396))

(assert (= (and b!1054396 res!703443) b!1054398))

(assert (= (and b!1054398 res!703442) b!1054394))

(assert (= (and b!1054394 res!703441) b!1054397))

(assert (= (and b!1054397 res!703449) b!1054395))

(assert (= (and b!1054395 res!703446) b!1054393))

(assert (= (and b!1054393 res!703448) b!1054399))

(assert (= (and b!1054399 (not res!703444)) b!1054392))

(assert (= (and b!1054393 (not res!703447)) b!1054400))

(declare-fun m!974601 () Bool)

(assert (=> start!92886 m!974601))

(declare-fun m!974603 () Bool)

(assert (=> b!1054395 m!974603))

(declare-fun m!974605 () Bool)

(assert (=> b!1054394 m!974605))

(declare-fun m!974607 () Bool)

(assert (=> b!1054393 m!974607))

(declare-fun m!974609 () Bool)

(assert (=> b!1054393 m!974609))

(declare-fun m!974611 () Bool)

(assert (=> b!1054392 m!974611))

(declare-fun m!974613 () Bool)

(assert (=> b!1054396 m!974613))

(declare-fun m!974615 () Bool)

(assert (=> b!1054400 m!974615))

(declare-fun m!974617 () Bool)

(assert (=> b!1054400 m!974617))

(declare-fun m!974619 () Bool)

(assert (=> b!1054398 m!974619))

(declare-fun m!974621 () Bool)

(assert (=> b!1054397 m!974621))

(assert (=> b!1054397 m!974607))

(push 1)

