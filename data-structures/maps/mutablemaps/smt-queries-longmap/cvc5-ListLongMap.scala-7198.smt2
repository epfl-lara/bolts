; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92286 () Bool)

(assert start!92286)

(declare-fun b!1048356 () Bool)

(declare-fun e!594655 () Bool)

(declare-fun e!594656 () Bool)

(assert (=> b!1048356 (= e!594655 e!594656)))

(declare-fun res!697592 () Bool)

(assert (=> b!1048356 (=> (not res!697592) (not e!594656))))

(declare-fun lt!463164 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048356 (= res!697592 (not (= lt!463164 i!1381)))))

(declare-datatypes ((array!66035 0))(
  ( (array!66036 (arr!31753 (Array (_ BitVec 32) (_ BitVec 64))) (size!32290 (_ BitVec 32))) )
))
(declare-fun lt!463165 () array!66035)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66035 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048356 (= lt!463164 (arrayScanForKey!0 lt!463165 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048358 () Bool)

(declare-fun res!697591 () Bool)

(declare-fun e!594654 () Bool)

(assert (=> b!1048358 (=> (not res!697591) (not e!594654))))

(declare-fun a!3488 () array!66035)

(declare-datatypes ((List!22196 0))(
  ( (Nil!22193) (Cons!22192 (h!23401 (_ BitVec 64)) (t!31510 List!22196)) )
))
(declare-fun arrayNoDuplicates!0 (array!66035 (_ BitVec 32) List!22196) Bool)

(assert (=> b!1048358 (= res!697591 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22193))))

(declare-fun b!1048359 () Bool)

(assert (=> b!1048359 (= e!594654 e!594655)))

(declare-fun res!697596 () Bool)

(assert (=> b!1048359 (=> (not res!697596) (not e!594655))))

(declare-fun arrayContainsKey!0 (array!66035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048359 (= res!697596 (arrayContainsKey!0 lt!463165 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048359 (= lt!463165 (array!66036 (store (arr!31753 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32290 a!3488)))))

(declare-fun b!1048360 () Bool)

(declare-fun res!697594 () Bool)

(assert (=> b!1048360 (=> (not res!697594) (not e!594654))))

(assert (=> b!1048360 (= res!697594 (= (select (arr!31753 a!3488) i!1381) k!2747))))

(declare-fun b!1048361 () Bool)

(assert (=> b!1048361 (= e!594656 (not true))))

(assert (=> b!1048361 (= (select (store (arr!31753 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463164) k!2747)))

(declare-fun res!697593 () Bool)

(assert (=> start!92286 (=> (not res!697593) (not e!594654))))

(assert (=> start!92286 (= res!697593 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32290 a!3488)) (bvslt (size!32290 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92286 e!594654))

(assert (=> start!92286 true))

(declare-fun array_inv!24375 (array!66035) Bool)

(assert (=> start!92286 (array_inv!24375 a!3488)))

(declare-fun b!1048357 () Bool)

(declare-fun res!697595 () Bool)

(assert (=> b!1048357 (=> (not res!697595) (not e!594654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048357 (= res!697595 (validKeyInArray!0 k!2747))))

(assert (= (and start!92286 res!697593) b!1048358))

(assert (= (and b!1048358 res!697591) b!1048357))

(assert (= (and b!1048357 res!697595) b!1048360))

(assert (= (and b!1048360 res!697594) b!1048359))

(assert (= (and b!1048359 res!697596) b!1048356))

(assert (= (and b!1048356 res!697592) b!1048361))

(declare-fun m!969471 () Bool)

(assert (=> b!1048359 m!969471))

(declare-fun m!969473 () Bool)

(assert (=> b!1048359 m!969473))

(assert (=> b!1048361 m!969473))

(declare-fun m!969475 () Bool)

(assert (=> b!1048361 m!969475))

(declare-fun m!969477 () Bool)

(assert (=> b!1048358 m!969477))

(declare-fun m!969479 () Bool)

(assert (=> b!1048360 m!969479))

(declare-fun m!969481 () Bool)

(assert (=> start!92286 m!969481))

(declare-fun m!969483 () Bool)

(assert (=> b!1048357 m!969483))

(declare-fun m!969485 () Bool)

(assert (=> b!1048356 m!969485))

(push 1)

