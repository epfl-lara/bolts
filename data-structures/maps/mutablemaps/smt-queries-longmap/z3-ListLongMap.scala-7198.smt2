; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92288 () Bool)

(assert start!92288)

(declare-fun b!1048374 () Bool)

(declare-fun e!594665 () Bool)

(assert (=> b!1048374 (= e!594665 (not true))))

(declare-fun lt!463171 () (_ BitVec 32))

(declare-datatypes ((array!66037 0))(
  ( (array!66038 (arr!31754 (Array (_ BitVec 32) (_ BitVec 64))) (size!32291 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66037)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048374 (= (select (store (arr!31754 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463171) k0!2747)))

(declare-fun b!1048375 () Bool)

(declare-fun res!697612 () Bool)

(declare-fun e!594666 () Bool)

(assert (=> b!1048375 (=> (not res!697612) (not e!594666))))

(declare-datatypes ((List!22197 0))(
  ( (Nil!22194) (Cons!22193 (h!23402 (_ BitVec 64)) (t!31511 List!22197)) )
))
(declare-fun arrayNoDuplicates!0 (array!66037 (_ BitVec 32) List!22197) Bool)

(assert (=> b!1048375 (= res!697612 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22194))))

(declare-fun b!1048376 () Bool)

(declare-fun e!594668 () Bool)

(assert (=> b!1048376 (= e!594668 e!594665)))

(declare-fun res!697609 () Bool)

(assert (=> b!1048376 (=> (not res!697609) (not e!594665))))

(assert (=> b!1048376 (= res!697609 (not (= lt!463171 i!1381)))))

(declare-fun lt!463170 () array!66037)

(declare-fun arrayScanForKey!0 (array!66037 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048376 (= lt!463171 (arrayScanForKey!0 lt!463170 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048377 () Bool)

(assert (=> b!1048377 (= e!594666 e!594668)))

(declare-fun res!697613 () Bool)

(assert (=> b!1048377 (=> (not res!697613) (not e!594668))))

(declare-fun arrayContainsKey!0 (array!66037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048377 (= res!697613 (arrayContainsKey!0 lt!463170 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048377 (= lt!463170 (array!66038 (store (arr!31754 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32291 a!3488)))))

(declare-fun b!1048379 () Bool)

(declare-fun res!697610 () Bool)

(assert (=> b!1048379 (=> (not res!697610) (not e!594666))))

(assert (=> b!1048379 (= res!697610 (= (select (arr!31754 a!3488) i!1381) k0!2747))))

(declare-fun res!697614 () Bool)

(assert (=> start!92288 (=> (not res!697614) (not e!594666))))

(assert (=> start!92288 (= res!697614 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32291 a!3488)) (bvslt (size!32291 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92288 e!594666))

(assert (=> start!92288 true))

(declare-fun array_inv!24376 (array!66037) Bool)

(assert (=> start!92288 (array_inv!24376 a!3488)))

(declare-fun b!1048378 () Bool)

(declare-fun res!697611 () Bool)

(assert (=> b!1048378 (=> (not res!697611) (not e!594666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048378 (= res!697611 (validKeyInArray!0 k0!2747))))

(assert (= (and start!92288 res!697614) b!1048375))

(assert (= (and b!1048375 res!697612) b!1048378))

(assert (= (and b!1048378 res!697611) b!1048379))

(assert (= (and b!1048379 res!697610) b!1048377))

(assert (= (and b!1048377 res!697613) b!1048376))

(assert (= (and b!1048376 res!697609) b!1048374))

(declare-fun m!969487 () Bool)

(assert (=> b!1048378 m!969487))

(declare-fun m!969489 () Bool)

(assert (=> start!92288 m!969489))

(declare-fun m!969491 () Bool)

(assert (=> b!1048375 m!969491))

(declare-fun m!969493 () Bool)

(assert (=> b!1048379 m!969493))

(declare-fun m!969495 () Bool)

(assert (=> b!1048376 m!969495))

(declare-fun m!969497 () Bool)

(assert (=> b!1048374 m!969497))

(declare-fun m!969499 () Bool)

(assert (=> b!1048374 m!969499))

(declare-fun m!969501 () Bool)

(assert (=> b!1048377 m!969501))

(assert (=> b!1048377 m!969497))

(check-sat (not b!1048375) (not start!92288) (not b!1048378) (not b!1048376) (not b!1048377))
(check-sat)
