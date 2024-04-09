; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92592 () Bool)

(assert start!92592)

(declare-fun e!597806 () Bool)

(declare-fun b!1052749 () Bool)

(declare-fun lt!464947 () (_ BitVec 32))

(declare-datatypes ((array!66341 0))(
  ( (array!66342 (arr!31906 (Array (_ BitVec 32) (_ BitVec 64))) (size!32443 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66341)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052749 (= e!597806 (not (or (bvsgt lt!464947 i!1381) (bvsgt i!1381 lt!464947) (bvslt #b00000000000000000000000000000000 (size!32443 a!3488)))))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1052749 (= (select (store (arr!31906 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464947) k!2747)))

(declare-fun b!1052750 () Bool)

(declare-fun e!597805 () Bool)

(declare-fun e!597804 () Bool)

(assert (=> b!1052750 (= e!597805 e!597804)))

(declare-fun res!701983 () Bool)

(assert (=> b!1052750 (=> (not res!701983) (not e!597804))))

(declare-fun lt!464946 () array!66341)

(declare-fun arrayContainsKey!0 (array!66341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052750 (= res!701983 (arrayContainsKey!0 lt!464946 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052750 (= lt!464946 (array!66342 (store (arr!31906 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32443 a!3488)))))

(declare-fun b!1052751 () Bool)

(declare-fun res!701984 () Bool)

(assert (=> b!1052751 (=> (not res!701984) (not e!597805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052751 (= res!701984 (validKeyInArray!0 k!2747))))

(declare-fun b!1052752 () Bool)

(declare-fun res!701985 () Bool)

(assert (=> b!1052752 (=> (not res!701985) (not e!597805))))

(assert (=> b!1052752 (= res!701985 (= (select (arr!31906 a!3488) i!1381) k!2747))))

(declare-fun b!1052753 () Bool)

(assert (=> b!1052753 (= e!597804 e!597806)))

(declare-fun res!701987 () Bool)

(assert (=> b!1052753 (=> (not res!701987) (not e!597806))))

(assert (=> b!1052753 (= res!701987 (not (= lt!464947 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66341 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052753 (= lt!464947 (arrayScanForKey!0 lt!464946 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!701986 () Bool)

(assert (=> start!92592 (=> (not res!701986) (not e!597805))))

(assert (=> start!92592 (= res!701986 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32443 a!3488)) (bvslt (size!32443 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92592 e!597805))

(assert (=> start!92592 true))

(declare-fun array_inv!24528 (array!66341) Bool)

(assert (=> start!92592 (array_inv!24528 a!3488)))

(declare-fun b!1052748 () Bool)

(declare-fun res!701988 () Bool)

(assert (=> b!1052748 (=> (not res!701988) (not e!597805))))

(declare-datatypes ((List!22349 0))(
  ( (Nil!22346) (Cons!22345 (h!23554 (_ BitVec 64)) (t!31663 List!22349)) )
))
(declare-fun arrayNoDuplicates!0 (array!66341 (_ BitVec 32) List!22349) Bool)

(assert (=> b!1052748 (= res!701988 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22346))))

(assert (= (and start!92592 res!701986) b!1052748))

(assert (= (and b!1052748 res!701988) b!1052751))

(assert (= (and b!1052751 res!701984) b!1052752))

(assert (= (and b!1052752 res!701985) b!1052750))

(assert (= (and b!1052750 res!701983) b!1052753))

(assert (= (and b!1052753 res!701987) b!1052749))

(declare-fun m!973293 () Bool)

(assert (=> b!1052748 m!973293))

(declare-fun m!973295 () Bool)

(assert (=> start!92592 m!973295))

(declare-fun m!973297 () Bool)

(assert (=> b!1052751 m!973297))

(declare-fun m!973299 () Bool)

(assert (=> b!1052753 m!973299))

(declare-fun m!973301 () Bool)

(assert (=> b!1052750 m!973301))

(declare-fun m!973303 () Bool)

(assert (=> b!1052750 m!973303))

(assert (=> b!1052749 m!973303))

(declare-fun m!973305 () Bool)

(assert (=> b!1052749 m!973305))

(declare-fun m!973307 () Bool)

(assert (=> b!1052752 m!973307))

(push 1)

(assert (not start!92592))

