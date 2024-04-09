; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92874 () Bool)

(assert start!92874)

(declare-fun lt!465335 () (_ BitVec 32))

(declare-fun b!1054230 () Bool)

(declare-datatypes ((array!66482 0))(
  ( (array!66483 (arr!31969 (Array (_ BitVec 32) (_ BitVec 64))) (size!32506 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66482)

(declare-fun e!598940 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054230 (= e!598940 (arrayContainsKey!0 a!3488 k!2747 lt!465335))))

(declare-fun b!1054231 () Bool)

(declare-fun res!703286 () Bool)

(declare-fun e!598943 () Bool)

(assert (=> b!1054231 (=> (not res!703286) (not e!598943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054231 (= res!703286 (validKeyInArray!0 k!2747))))

(declare-fun b!1054232 () Bool)

(declare-fun res!703282 () Bool)

(assert (=> b!1054232 (=> (not res!703282) (not e!598943))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054232 (= res!703282 (= (select (arr!31969 a!3488) i!1381) k!2747))))

(declare-fun b!1054233 () Bool)

(declare-fun e!598942 () Bool)

(assert (=> b!1054233 (= e!598942 true)))

(declare-datatypes ((List!22412 0))(
  ( (Nil!22409) (Cons!22408 (h!23617 (_ BitVec 64)) (t!31726 List!22412)) )
))
(declare-fun arrayNoDuplicates!0 (array!66482 (_ BitVec 32) List!22412) Bool)

(assert (=> b!1054233 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22409)))

(declare-datatypes ((Unit!34505 0))(
  ( (Unit!34506) )
))
(declare-fun lt!465337 () Unit!34505)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66482 (_ BitVec 32) (_ BitVec 32)) Unit!34505)

(assert (=> b!1054233 (= lt!465337 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!703280 () Bool)

(assert (=> start!92874 (=> (not res!703280) (not e!598943))))

(assert (=> start!92874 (= res!703280 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32506 a!3488)) (bvslt (size!32506 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92874 e!598943))

(assert (=> start!92874 true))

(declare-fun array_inv!24591 (array!66482) Bool)

(assert (=> start!92874 (array_inv!24591 a!3488)))

(declare-fun b!1054234 () Bool)

(declare-fun e!598946 () Bool)

(assert (=> b!1054234 (= e!598946 (not e!598942))))

(declare-fun res!703279 () Bool)

(assert (=> b!1054234 (=> res!703279 e!598942)))

(assert (=> b!1054234 (= res!703279 (bvsle lt!465335 i!1381))))

(declare-fun e!598941 () Bool)

(assert (=> b!1054234 e!598941))

(declare-fun res!703284 () Bool)

(assert (=> b!1054234 (=> (not res!703284) (not e!598941))))

(assert (=> b!1054234 (= res!703284 (= (select (store (arr!31969 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465335) k!2747))))

(declare-fun b!1054235 () Bool)

(declare-fun e!598945 () Bool)

(assert (=> b!1054235 (= e!598943 e!598945)))

(declare-fun res!703287 () Bool)

(assert (=> b!1054235 (=> (not res!703287) (not e!598945))))

(declare-fun lt!465336 () array!66482)

(assert (=> b!1054235 (= res!703287 (arrayContainsKey!0 lt!465336 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054235 (= lt!465336 (array!66483 (store (arr!31969 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32506 a!3488)))))

(declare-fun b!1054236 () Bool)

(assert (=> b!1054236 (= e!598945 e!598946)))

(declare-fun res!703281 () Bool)

(assert (=> b!1054236 (=> (not res!703281) (not e!598946))))

(assert (=> b!1054236 (= res!703281 (not (= lt!465335 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66482 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054236 (= lt!465335 (arrayScanForKey!0 lt!465336 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054237 () Bool)

(declare-fun res!703285 () Bool)

(assert (=> b!1054237 (=> (not res!703285) (not e!598943))))

(assert (=> b!1054237 (= res!703285 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22409))))

(declare-fun b!1054238 () Bool)

(assert (=> b!1054238 (= e!598941 e!598940)))

(declare-fun res!703283 () Bool)

(assert (=> b!1054238 (=> res!703283 e!598940)))

(assert (=> b!1054238 (= res!703283 (bvsle lt!465335 i!1381))))

(assert (= (and start!92874 res!703280) b!1054237))

(assert (= (and b!1054237 res!703285) b!1054231))

(assert (= (and b!1054231 res!703286) b!1054232))

(assert (= (and b!1054232 res!703282) b!1054235))

(assert (= (and b!1054235 res!703287) b!1054236))

(assert (= (and b!1054236 res!703281) b!1054234))

(assert (= (and b!1054234 res!703284) b!1054238))

(assert (= (and b!1054238 (not res!703283)) b!1054230))

(assert (= (and b!1054234 (not res!703279)) b!1054233))

(declare-fun m!974469 () Bool)

(assert (=> b!1054231 m!974469))

(declare-fun m!974471 () Bool)

(assert (=> b!1054237 m!974471))

(declare-fun m!974473 () Bool)

(assert (=> b!1054233 m!974473))

(declare-fun m!974475 () Bool)

(assert (=> b!1054233 m!974475))

(declare-fun m!974477 () Bool)

(assert (=> b!1054230 m!974477))

(declare-fun m!974479 () Bool)

(assert (=> start!92874 m!974479))

(declare-fun m!974481 () Bool)

(assert (=> b!1054235 m!974481))

(declare-fun m!974483 () Bool)

(assert (=> b!1054235 m!974483))

(declare-fun m!974485 () Bool)

(assert (=> b!1054236 m!974485))

(declare-fun m!974487 () Bool)

(assert (=> b!1054232 m!974487))

(assert (=> b!1054234 m!974483))

(declare-fun m!974489 () Bool)

(assert (=> b!1054234 m!974489))

(push 1)

