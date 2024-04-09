; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93498 () Bool)

(assert start!93498)

(declare-fun b!1058596 () Bool)

(declare-fun res!707281 () Bool)

(declare-fun e!602313 () Bool)

(assert (=> b!1058596 (=> (not res!707281) (not e!602313))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058596 (= res!707281 (validKeyInArray!0 k!2747))))

(declare-fun res!707282 () Bool)

(assert (=> start!93498 (=> (not res!707282) (not e!602313))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66749 0))(
  ( (array!66750 (arr!32089 (Array (_ BitVec 32) (_ BitVec 64))) (size!32626 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66749)

(assert (=> start!93498 (= res!707282 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32626 a!3488)) (bvslt (size!32626 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93498 e!602313))

(assert (=> start!93498 true))

(declare-fun array_inv!24711 (array!66749) Bool)

(assert (=> start!93498 (array_inv!24711 a!3488)))

(declare-fun b!1058597 () Bool)

(declare-fun e!602316 () Bool)

(declare-fun lt!466986 () (_ BitVec 32))

(assert (=> b!1058597 (= e!602316 (not (or (bvsgt lt!466986 i!1381) (bvsgt i!1381 lt!466986))))))

(assert (=> b!1058597 (= (select (store (arr!32089 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466986) k!2747)))

(declare-fun b!1058598 () Bool)

(declare-fun e!602315 () Bool)

(assert (=> b!1058598 (= e!602313 e!602315)))

(declare-fun res!707279 () Bool)

(assert (=> b!1058598 (=> (not res!707279) (not e!602315))))

(declare-fun lt!466987 () array!66749)

(declare-fun arrayContainsKey!0 (array!66749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058598 (= res!707279 (arrayContainsKey!0 lt!466987 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058598 (= lt!466987 (array!66750 (store (arr!32089 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32626 a!3488)))))

(declare-fun b!1058599 () Bool)

(declare-fun res!707284 () Bool)

(assert (=> b!1058599 (=> (not res!707284) (not e!602313))))

(assert (=> b!1058599 (= res!707284 (= (select (arr!32089 a!3488) i!1381) k!2747))))

(declare-fun b!1058600 () Bool)

(declare-fun res!707280 () Bool)

(assert (=> b!1058600 (=> (not res!707280) (not e!602313))))

(declare-datatypes ((List!22532 0))(
  ( (Nil!22529) (Cons!22528 (h!23737 (_ BitVec 64)) (t!31846 List!22532)) )
))
(declare-fun arrayNoDuplicates!0 (array!66749 (_ BitVec 32) List!22532) Bool)

(assert (=> b!1058600 (= res!707280 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22529))))

(declare-fun b!1058601 () Bool)

(assert (=> b!1058601 (= e!602315 e!602316)))

(declare-fun res!707283 () Bool)

(assert (=> b!1058601 (=> (not res!707283) (not e!602316))))

(assert (=> b!1058601 (= res!707283 (not (= lt!466986 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66749 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058601 (= lt!466986 (arrayScanForKey!0 lt!466987 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93498 res!707282) b!1058600))

(assert (= (and b!1058600 res!707280) b!1058596))

(assert (= (and b!1058596 res!707281) b!1058599))

(assert (= (and b!1058599 res!707284) b!1058598))

(assert (= (and b!1058598 res!707279) b!1058601))

(assert (= (and b!1058601 res!707283) b!1058597))

(declare-fun m!978387 () Bool)

(assert (=> b!1058600 m!978387))

(declare-fun m!978389 () Bool)

(assert (=> b!1058596 m!978389))

(declare-fun m!978391 () Bool)

(assert (=> b!1058597 m!978391))

(declare-fun m!978393 () Bool)

(assert (=> b!1058597 m!978393))

(declare-fun m!978395 () Bool)

(assert (=> start!93498 m!978395))

(declare-fun m!978397 () Bool)

(assert (=> b!1058598 m!978397))

(assert (=> b!1058598 m!978391))

(declare-fun m!978399 () Bool)

(assert (=> b!1058601 m!978399))

(declare-fun m!978401 () Bool)

(assert (=> b!1058599 m!978401))

(push 1)

(assert (not b!1058596))

(assert (not b!1058600))

(assert (not start!93498))

(assert (not b!1058598))

(assert (not b!1058601))

(check-sat)

(pop 1)

(push 1)

(check-sat)

