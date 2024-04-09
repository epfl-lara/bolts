; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92590 () Bool)

(assert start!92590)

(declare-fun b!1052730 () Bool)

(declare-fun e!597793 () Bool)

(assert (=> b!1052730 (= e!597793 (not true))))

(declare-fun lt!464940 () (_ BitVec 32))

(declare-datatypes ((array!66339 0))(
  ( (array!66340 (arr!31905 (Array (_ BitVec 32) (_ BitVec 64))) (size!32442 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66339)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052730 (= (select (store (arr!31905 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464940) k!2747)))

(declare-fun b!1052731 () Bool)

(declare-fun e!597792 () Bool)

(assert (=> b!1052731 (= e!597792 e!597793)))

(declare-fun res!701969 () Bool)

(assert (=> b!1052731 (=> (not res!701969) (not e!597793))))

(assert (=> b!1052731 (= res!701969 (not (= lt!464940 i!1381)))))

(declare-fun lt!464941 () array!66339)

(declare-fun arrayScanForKey!0 (array!66339 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052731 (= lt!464940 (arrayScanForKey!0 lt!464941 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052732 () Bool)

(declare-fun e!597794 () Bool)

(assert (=> b!1052732 (= e!597794 e!597792)))

(declare-fun res!701970 () Bool)

(assert (=> b!1052732 (=> (not res!701970) (not e!597792))))

(declare-fun arrayContainsKey!0 (array!66339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052732 (= res!701970 (arrayContainsKey!0 lt!464941 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052732 (= lt!464941 (array!66340 (store (arr!31905 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32442 a!3488)))))

(declare-fun res!701965 () Bool)

(assert (=> start!92590 (=> (not res!701965) (not e!597794))))

(assert (=> start!92590 (= res!701965 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32442 a!3488)) (bvslt (size!32442 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92590 e!597794))

(assert (=> start!92590 true))

(declare-fun array_inv!24527 (array!66339) Bool)

(assert (=> start!92590 (array_inv!24527 a!3488)))

(declare-fun b!1052733 () Bool)

(declare-fun res!701968 () Bool)

(assert (=> b!1052733 (=> (not res!701968) (not e!597794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052733 (= res!701968 (validKeyInArray!0 k!2747))))

(declare-fun b!1052734 () Bool)

(declare-fun res!701966 () Bool)

(assert (=> b!1052734 (=> (not res!701966) (not e!597794))))

(declare-datatypes ((List!22348 0))(
  ( (Nil!22345) (Cons!22344 (h!23553 (_ BitVec 64)) (t!31662 List!22348)) )
))
(declare-fun arrayNoDuplicates!0 (array!66339 (_ BitVec 32) List!22348) Bool)

(assert (=> b!1052734 (= res!701966 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22345))))

(declare-fun b!1052735 () Bool)

(declare-fun res!701967 () Bool)

(assert (=> b!1052735 (=> (not res!701967) (not e!597794))))

(assert (=> b!1052735 (= res!701967 (= (select (arr!31905 a!3488) i!1381) k!2747))))

(assert (= (and start!92590 res!701965) b!1052734))

(assert (= (and b!1052734 res!701966) b!1052733))

(assert (= (and b!1052733 res!701968) b!1052735))

(assert (= (and b!1052735 res!701967) b!1052732))

(assert (= (and b!1052732 res!701970) b!1052731))

(assert (= (and b!1052731 res!701969) b!1052730))

(declare-fun m!973277 () Bool)

(assert (=> b!1052731 m!973277))

(declare-fun m!973279 () Bool)

(assert (=> b!1052730 m!973279))

(declare-fun m!973281 () Bool)

(assert (=> b!1052730 m!973281))

(declare-fun m!973283 () Bool)

(assert (=> b!1052735 m!973283))

(declare-fun m!973285 () Bool)

(assert (=> b!1052734 m!973285))

(declare-fun m!973287 () Bool)

(assert (=> b!1052732 m!973287))

(assert (=> b!1052732 m!973279))

(declare-fun m!973289 () Bool)

(assert (=> start!92590 m!973289))

(declare-fun m!973291 () Bool)

(assert (=> b!1052733 m!973291))

(push 1)

