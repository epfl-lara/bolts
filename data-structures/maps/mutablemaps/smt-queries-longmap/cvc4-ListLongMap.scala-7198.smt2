; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92290 () Bool)

(assert start!92290)

(declare-fun b!1048392 () Bool)

(declare-fun e!594680 () Bool)

(declare-fun e!594679 () Bool)

(assert (=> b!1048392 (= e!594680 e!594679)))

(declare-fun res!697630 () Bool)

(assert (=> b!1048392 (=> (not res!697630) (not e!594679))))

(declare-fun lt!463177 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048392 (= res!697630 (not (= lt!463177 i!1381)))))

(declare-datatypes ((array!66039 0))(
  ( (array!66040 (arr!31755 (Array (_ BitVec 32) (_ BitVec 64))) (size!32292 (_ BitVec 32))) )
))
(declare-fun lt!463176 () array!66039)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66039 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048392 (= lt!463177 (arrayScanForKey!0 lt!463176 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048393 () Bool)

(declare-fun res!697629 () Bool)

(declare-fun e!594677 () Bool)

(assert (=> b!1048393 (=> (not res!697629) (not e!594677))))

(declare-fun a!3488 () array!66039)

(declare-datatypes ((List!22198 0))(
  ( (Nil!22195) (Cons!22194 (h!23403 (_ BitVec 64)) (t!31512 List!22198)) )
))
(declare-fun arrayNoDuplicates!0 (array!66039 (_ BitVec 32) List!22198) Bool)

(assert (=> b!1048393 (= res!697629 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22195))))

(declare-fun b!1048394 () Bool)

(assert (=> b!1048394 (= e!594679 (not true))))

(assert (=> b!1048394 (= (select (store (arr!31755 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463177) k!2747)))

(declare-fun b!1048395 () Bool)

(declare-fun res!697631 () Bool)

(assert (=> b!1048395 (=> (not res!697631) (not e!594677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048395 (= res!697631 (validKeyInArray!0 k!2747))))

(declare-fun res!697632 () Bool)

(assert (=> start!92290 (=> (not res!697632) (not e!594677))))

(assert (=> start!92290 (= res!697632 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32292 a!3488)) (bvslt (size!32292 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92290 e!594677))

(assert (=> start!92290 true))

(declare-fun array_inv!24377 (array!66039) Bool)

(assert (=> start!92290 (array_inv!24377 a!3488)))

(declare-fun b!1048396 () Bool)

(declare-fun res!697628 () Bool)

(assert (=> b!1048396 (=> (not res!697628) (not e!594677))))

(assert (=> b!1048396 (= res!697628 (= (select (arr!31755 a!3488) i!1381) k!2747))))

(declare-fun b!1048397 () Bool)

(assert (=> b!1048397 (= e!594677 e!594680)))

(declare-fun res!697627 () Bool)

(assert (=> b!1048397 (=> (not res!697627) (not e!594680))))

(declare-fun arrayContainsKey!0 (array!66039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048397 (= res!697627 (arrayContainsKey!0 lt!463176 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048397 (= lt!463176 (array!66040 (store (arr!31755 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32292 a!3488)))))

(assert (= (and start!92290 res!697632) b!1048393))

(assert (= (and b!1048393 res!697629) b!1048395))

(assert (= (and b!1048395 res!697631) b!1048396))

(assert (= (and b!1048396 res!697628) b!1048397))

(assert (= (and b!1048397 res!697627) b!1048392))

(assert (= (and b!1048392 res!697630) b!1048394))

(declare-fun m!969503 () Bool)

(assert (=> b!1048393 m!969503))

(declare-fun m!969505 () Bool)

(assert (=> b!1048392 m!969505))

(declare-fun m!969507 () Bool)

(assert (=> start!92290 m!969507))

(declare-fun m!969509 () Bool)

(assert (=> b!1048397 m!969509))

(declare-fun m!969511 () Bool)

(assert (=> b!1048397 m!969511))

(declare-fun m!969513 () Bool)

(assert (=> b!1048396 m!969513))

(declare-fun m!969515 () Bool)

(assert (=> b!1048395 m!969515))

(assert (=> b!1048394 m!969511))

(declare-fun m!969517 () Bool)

(assert (=> b!1048394 m!969517))

(push 1)

(assert (not b!1048397))

(assert (not b!1048393))

(assert (not b!1048392))

(assert (not start!92290))

(assert (not b!1048395))

(check-sat)

(pop 1)

