; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26234 () Bool)

(assert start!26234)

(declare-fun res!135280 () Bool)

(declare-fun e!174504 () Bool)

(assert (=> start!26234 (=> (not res!135280) (not e!174504))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26234 (= res!135280 (validMask!0 mask!3868))))

(assert (=> start!26234 e!174504))

(declare-datatypes ((array!13320 0))(
  ( (array!13321 (arr!6309 (Array (_ BitVec 32) (_ BitVec 64))) (size!6661 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13320)

(declare-fun array_inv!4263 (array!13320) Bool)

(assert (=> start!26234 (array_inv!4263 a!3325)))

(assert (=> start!26234 true))

(declare-fun b!271251 () Bool)

(declare-fun res!135289 () Bool)

(declare-fun e!174505 () Bool)

(assert (=> b!271251 (=> (not res!135289) (not e!174505))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271251 (= res!135289 (not (= startIndex!26 i!1267)))))

(declare-fun b!271252 () Bool)

(declare-fun res!135291 () Bool)

(assert (=> b!271252 (=> (not res!135291) (not e!174504))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271252 (= res!135291 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271253 () Bool)

(declare-fun res!135281 () Bool)

(assert (=> b!271253 (=> (not res!135281) (not e!174505))))

(declare-datatypes ((List!4138 0))(
  ( (Nil!4135) (Cons!4134 (h!4801 (_ BitVec 64)) (t!9228 List!4138)) )
))
(declare-fun noDuplicate!136 (List!4138) Bool)

(assert (=> b!271253 (= res!135281 (noDuplicate!136 Nil!4135))))

(declare-fun b!271254 () Bool)

(declare-fun res!135290 () Bool)

(assert (=> b!271254 (=> (not res!135290) (not e!174505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13320 (_ BitVec 32)) Bool)

(assert (=> b!271254 (= res!135290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271255 () Bool)

(assert (=> b!271255 (= e!174504 e!174505)))

(declare-fun res!135286 () Bool)

(assert (=> b!271255 (=> (not res!135286) (not e!174505))))

(declare-datatypes ((SeekEntryResult!1478 0))(
  ( (MissingZero!1478 (index!8082 (_ BitVec 32))) (Found!1478 (index!8083 (_ BitVec 32))) (Intermediate!1478 (undefined!2290 Bool) (index!8084 (_ BitVec 32)) (x!26379 (_ BitVec 32))) (Undefined!1478) (MissingVacant!1478 (index!8085 (_ BitVec 32))) )
))
(declare-fun lt!135803 () SeekEntryResult!1478)

(assert (=> b!271255 (= res!135286 (or (= lt!135803 (MissingZero!1478 i!1267)) (= lt!135803 (MissingVacant!1478 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13320 (_ BitVec 32)) SeekEntryResult!1478)

(assert (=> b!271255 (= lt!135803 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271256 () Bool)

(declare-fun res!135279 () Bool)

(assert (=> b!271256 (=> (not res!135279) (not e!174505))))

(assert (=> b!271256 (= res!135279 (and (bvslt (size!6661 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6661 a!3325))))))

(declare-fun b!271257 () Bool)

(declare-fun res!135284 () Bool)

(assert (=> b!271257 (=> (not res!135284) (not e!174504))))

(assert (=> b!271257 (= res!135284 (and (= (size!6661 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6661 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6661 a!3325))))))

(declare-fun b!271258 () Bool)

(declare-fun res!135283 () Bool)

(assert (=> b!271258 (=> (not res!135283) (not e!174505))))

(declare-fun contains!1947 (List!4138 (_ BitVec 64)) Bool)

(assert (=> b!271258 (= res!135283 (not (contains!1947 Nil!4135 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271259 () Bool)

(declare-fun res!135288 () Bool)

(assert (=> b!271259 (=> (not res!135288) (not e!174505))))

(assert (=> b!271259 (= res!135288 (not (contains!1947 Nil!4135 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271260 () Bool)

(declare-fun res!135282 () Bool)

(assert (=> b!271260 (=> (not res!135282) (not e!174505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271260 (= res!135282 (validKeyInArray!0 (select (arr!6309 a!3325) startIndex!26)))))

(declare-fun b!271261 () Bool)

(declare-fun res!135287 () Bool)

(assert (=> b!271261 (=> (not res!135287) (not e!174504))))

(assert (=> b!271261 (= res!135287 (validKeyInArray!0 k!2581))))

(declare-fun b!271262 () Bool)

(declare-fun res!135285 () Bool)

(assert (=> b!271262 (=> (not res!135285) (not e!174504))))

(declare-fun arrayNoDuplicates!0 (array!13320 (_ BitVec 32) List!4138) Bool)

(assert (=> b!271262 (= res!135285 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4135))))

(declare-fun b!271263 () Bool)

(assert (=> b!271263 (= e!174505 false)))

(declare-fun lt!135802 () Bool)

(assert (=> b!271263 (= lt!135802 (contains!1947 Nil!4135 k!2581))))

(assert (= (and start!26234 res!135280) b!271257))

(assert (= (and b!271257 res!135284) b!271261))

(assert (= (and b!271261 res!135287) b!271262))

(assert (= (and b!271262 res!135285) b!271252))

(assert (= (and b!271252 res!135291) b!271255))

(assert (= (and b!271255 res!135286) b!271254))

(assert (= (and b!271254 res!135290) b!271251))

(assert (= (and b!271251 res!135289) b!271260))

(assert (= (and b!271260 res!135282) b!271256))

(assert (= (and b!271256 res!135279) b!271253))

(assert (= (and b!271253 res!135281) b!271258))

(assert (= (and b!271258 res!135283) b!271259))

(assert (= (and b!271259 res!135288) b!271263))

(declare-fun m!286625 () Bool)

(assert (=> b!271253 m!286625))

(declare-fun m!286627 () Bool)

(assert (=> b!271263 m!286627))

(declare-fun m!286629 () Bool)

(assert (=> b!271261 m!286629))

(declare-fun m!286631 () Bool)

(assert (=> b!271252 m!286631))

(declare-fun m!286633 () Bool)

(assert (=> b!271260 m!286633))

(assert (=> b!271260 m!286633))

(declare-fun m!286635 () Bool)

(assert (=> b!271260 m!286635))

(declare-fun m!286637 () Bool)

(assert (=> b!271255 m!286637))

(declare-fun m!286639 () Bool)

(assert (=> b!271259 m!286639))

(declare-fun m!286641 () Bool)

(assert (=> b!271254 m!286641))

(declare-fun m!286643 () Bool)

(assert (=> b!271262 m!286643))

(declare-fun m!286645 () Bool)

(assert (=> b!271258 m!286645))

(declare-fun m!286647 () Bool)

(assert (=> start!26234 m!286647))

(declare-fun m!286649 () Bool)

(assert (=> start!26234 m!286649))

(push 1)

