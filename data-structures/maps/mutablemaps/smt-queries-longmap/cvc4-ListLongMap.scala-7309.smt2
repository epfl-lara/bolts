; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93496 () Bool)

(assert start!93496)

(declare-fun b!1058578 () Bool)

(declare-fun e!602302 () Bool)

(assert (=> b!1058578 (= e!602302 (not true))))

(declare-fun lt!466981 () (_ BitVec 32))

(declare-datatypes ((array!66747 0))(
  ( (array!66748 (arr!32088 (Array (_ BitVec 32) (_ BitVec 64))) (size!32625 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66747)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058578 (= (select (store (arr!32088 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466981) k!2747)))

(declare-fun b!1058580 () Bool)

(declare-fun res!707262 () Bool)

(declare-fun e!602304 () Bool)

(assert (=> b!1058580 (=> (not res!707262) (not e!602304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058580 (= res!707262 (validKeyInArray!0 k!2747))))

(declare-fun b!1058581 () Bool)

(declare-fun res!707265 () Bool)

(assert (=> b!1058581 (=> (not res!707265) (not e!602304))))

(assert (=> b!1058581 (= res!707265 (= (select (arr!32088 a!3488) i!1381) k!2747))))

(declare-fun b!1058582 () Bool)

(declare-fun e!602301 () Bool)

(assert (=> b!1058582 (= e!602304 e!602301)))

(declare-fun res!707264 () Bool)

(assert (=> b!1058582 (=> (not res!707264) (not e!602301))))

(declare-fun lt!466980 () array!66747)

(declare-fun arrayContainsKey!0 (array!66747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058582 (= res!707264 (arrayContainsKey!0 lt!466980 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058582 (= lt!466980 (array!66748 (store (arr!32088 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32625 a!3488)))))

(declare-fun b!1058583 () Bool)

(declare-fun res!707261 () Bool)

(assert (=> b!1058583 (=> (not res!707261) (not e!602304))))

(declare-datatypes ((List!22531 0))(
  ( (Nil!22528) (Cons!22527 (h!23736 (_ BitVec 64)) (t!31845 List!22531)) )
))
(declare-fun arrayNoDuplicates!0 (array!66747 (_ BitVec 32) List!22531) Bool)

(assert (=> b!1058583 (= res!707261 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22528))))

(declare-fun res!707266 () Bool)

(assert (=> start!93496 (=> (not res!707266) (not e!602304))))

(assert (=> start!93496 (= res!707266 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32625 a!3488)) (bvslt (size!32625 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93496 e!602304))

(assert (=> start!93496 true))

(declare-fun array_inv!24710 (array!66747) Bool)

(assert (=> start!93496 (array_inv!24710 a!3488)))

(declare-fun b!1058579 () Bool)

(assert (=> b!1058579 (= e!602301 e!602302)))

(declare-fun res!707263 () Bool)

(assert (=> b!1058579 (=> (not res!707263) (not e!602302))))

(assert (=> b!1058579 (= res!707263 (not (= lt!466981 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66747 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058579 (= lt!466981 (arrayScanForKey!0 lt!466980 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93496 res!707266) b!1058583))

(assert (= (and b!1058583 res!707261) b!1058580))

(assert (= (and b!1058580 res!707262) b!1058581))

(assert (= (and b!1058581 res!707265) b!1058582))

(assert (= (and b!1058582 res!707264) b!1058579))

(assert (= (and b!1058579 res!707263) b!1058578))

(declare-fun m!978371 () Bool)

(assert (=> b!1058578 m!978371))

(declare-fun m!978373 () Bool)

(assert (=> b!1058578 m!978373))

(declare-fun m!978375 () Bool)

(assert (=> b!1058579 m!978375))

(declare-fun m!978377 () Bool)

(assert (=> b!1058580 m!978377))

(declare-fun m!978379 () Bool)

(assert (=> b!1058583 m!978379))

(declare-fun m!978381 () Bool)

(assert (=> start!93496 m!978381))

(declare-fun m!978383 () Bool)

(assert (=> b!1058581 m!978383))

(declare-fun m!978385 () Bool)

(assert (=> b!1058582 m!978385))

(assert (=> b!1058582 m!978371))

(push 1)

(assert (not b!1058582))

