; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92244 () Bool)

(assert start!92244)

(declare-fun res!697443 () Bool)

(declare-fun e!594520 () Bool)

(assert (=> start!92244 (=> (not res!697443) (not e!594520))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66020 0))(
  ( (array!66021 (arr!31747 (Array (_ BitVec 32) (_ BitVec 64))) (size!32284 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66020)

(assert (=> start!92244 (= res!697443 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32284 a!3488)) (bvslt (size!32284 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92244 e!594520))

(assert (=> start!92244 true))

(declare-fun array_inv!24369 (array!66020) Bool)

(assert (=> start!92244 (array_inv!24369 a!3488)))

(declare-fun b!1048167 () Bool)

(declare-fun e!594521 () Bool)

(declare-fun e!594519 () Bool)

(assert (=> b!1048167 (= e!594521 e!594519)))

(declare-fun res!697439 () Bool)

(assert (=> b!1048167 (=> (not res!697439) (not e!594519))))

(declare-fun lt!463119 () (_ BitVec 32))

(assert (=> b!1048167 (= res!697439 (not (= lt!463119 i!1381)))))

(declare-fun lt!463120 () array!66020)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66020 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048167 (= lt!463119 (arrayScanForKey!0 lt!463120 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048168 () Bool)

(declare-fun res!697440 () Bool)

(assert (=> b!1048168 (=> (not res!697440) (not e!594520))))

(assert (=> b!1048168 (= res!697440 (= (select (arr!31747 a!3488) i!1381) k!2747))))

(declare-fun b!1048169 () Bool)

(assert (=> b!1048169 (= e!594519 (not (or (bvsle lt!463119 i!1381) (bvsge lt!463119 #b00000000000000000000000000000000))))))

(assert (=> b!1048169 (= (select (store (arr!31747 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463119) k!2747)))

(declare-fun b!1048170 () Bool)

(assert (=> b!1048170 (= e!594520 e!594521)))

(declare-fun res!697438 () Bool)

(assert (=> b!1048170 (=> (not res!697438) (not e!594521))))

(declare-fun arrayContainsKey!0 (array!66020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048170 (= res!697438 (arrayContainsKey!0 lt!463120 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048170 (= lt!463120 (array!66021 (store (arr!31747 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32284 a!3488)))))

(declare-fun b!1048171 () Bool)

(declare-fun res!697441 () Bool)

(assert (=> b!1048171 (=> (not res!697441) (not e!594520))))

(declare-datatypes ((List!22190 0))(
  ( (Nil!22187) (Cons!22186 (h!23395 (_ BitVec 64)) (t!31504 List!22190)) )
))
(declare-fun arrayNoDuplicates!0 (array!66020 (_ BitVec 32) List!22190) Bool)

(assert (=> b!1048171 (= res!697441 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22187))))

(declare-fun b!1048172 () Bool)

(declare-fun res!697442 () Bool)

(assert (=> b!1048172 (=> (not res!697442) (not e!594520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048172 (= res!697442 (validKeyInArray!0 k!2747))))

(assert (= (and start!92244 res!697443) b!1048171))

(assert (= (and b!1048171 res!697441) b!1048172))

(assert (= (and b!1048172 res!697442) b!1048168))

(assert (= (and b!1048168 res!697440) b!1048170))

(assert (= (and b!1048170 res!697438) b!1048167))

(assert (= (and b!1048167 res!697439) b!1048169))

(declare-fun m!969327 () Bool)

(assert (=> b!1048168 m!969327))

(declare-fun m!969329 () Bool)

(assert (=> b!1048170 m!969329))

(declare-fun m!969331 () Bool)

(assert (=> b!1048170 m!969331))

(declare-fun m!969333 () Bool)

(assert (=> b!1048172 m!969333))

(declare-fun m!969335 () Bool)

(assert (=> b!1048171 m!969335))

(declare-fun m!969337 () Bool)

(assert (=> start!92244 m!969337))

(declare-fun m!969339 () Bool)

(assert (=> b!1048167 m!969339))

(assert (=> b!1048169 m!969331))

(declare-fun m!969341 () Bool)

(assert (=> b!1048169 m!969341))

(push 1)

