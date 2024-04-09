; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26194 () Bool)

(assert start!26194)

(declare-fun b!270471 () Bool)

(declare-fun res!134511 () Bool)

(declare-fun e!174325 () Bool)

(assert (=> b!270471 (=> (not res!134511) (not e!174325))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270471 (= res!134511 (not (= startIndex!26 i!1267)))))

(declare-fun b!270472 () Bool)

(assert (=> b!270472 (= e!174325 false)))

(declare-fun lt!135683 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4118 0))(
  ( (Nil!4115) (Cons!4114 (h!4781 (_ BitVec 64)) (t!9208 List!4118)) )
))
(declare-fun contains!1927 (List!4118 (_ BitVec 64)) Bool)

(assert (=> b!270472 (= lt!135683 (contains!1927 Nil!4115 k!2581))))

(declare-fun b!270473 () Bool)

(declare-fun res!134502 () Bool)

(declare-fun e!174324 () Bool)

(assert (=> b!270473 (=> (not res!134502) (not e!174324))))

(declare-datatypes ((array!13280 0))(
  ( (array!13281 (arr!6289 (Array (_ BitVec 32) (_ BitVec 64))) (size!6641 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13280)

(declare-fun arrayNoDuplicates!0 (array!13280 (_ BitVec 32) List!4118) Bool)

(assert (=> b!270473 (= res!134502 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4115))))

(declare-fun b!270474 () Bool)

(declare-fun res!134504 () Bool)

(assert (=> b!270474 (=> (not res!134504) (not e!174325))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13280 (_ BitVec 32)) Bool)

(assert (=> b!270474 (= res!134504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!134510 () Bool)

(assert (=> start!26194 (=> (not res!134510) (not e!174324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26194 (= res!134510 (validMask!0 mask!3868))))

(assert (=> start!26194 e!174324))

(declare-fun array_inv!4243 (array!13280) Bool)

(assert (=> start!26194 (array_inv!4243 a!3325)))

(assert (=> start!26194 true))

(declare-fun b!270475 () Bool)

(declare-fun res!134505 () Bool)

(assert (=> b!270475 (=> (not res!134505) (not e!174324))))

(assert (=> b!270475 (= res!134505 (and (= (size!6641 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6641 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6641 a!3325))))))

(declare-fun b!270476 () Bool)

(declare-fun res!134500 () Bool)

(assert (=> b!270476 (=> (not res!134500) (not e!174324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270476 (= res!134500 (validKeyInArray!0 k!2581))))

(declare-fun b!270477 () Bool)

(declare-fun res!134509 () Bool)

(assert (=> b!270477 (=> (not res!134509) (not e!174325))))

(assert (=> b!270477 (= res!134509 (and (bvslt (size!6641 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6641 a!3325))))))

(declare-fun b!270478 () Bool)

(declare-fun res!134506 () Bool)

(assert (=> b!270478 (=> (not res!134506) (not e!174325))))

(declare-fun noDuplicate!116 (List!4118) Bool)

(assert (=> b!270478 (= res!134506 (noDuplicate!116 Nil!4115))))

(declare-fun b!270479 () Bool)

(declare-fun res!134507 () Bool)

(assert (=> b!270479 (=> (not res!134507) (not e!174324))))

(declare-fun arrayContainsKey!0 (array!13280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270479 (= res!134507 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270480 () Bool)

(declare-fun res!134503 () Bool)

(assert (=> b!270480 (=> (not res!134503) (not e!174325))))

(assert (=> b!270480 (= res!134503 (not (contains!1927 Nil!4115 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270481 () Bool)

(declare-fun res!134508 () Bool)

(assert (=> b!270481 (=> (not res!134508) (not e!174325))))

(assert (=> b!270481 (= res!134508 (validKeyInArray!0 (select (arr!6289 a!3325) startIndex!26)))))

(declare-fun b!270482 () Bool)

(declare-fun res!134499 () Bool)

(assert (=> b!270482 (=> (not res!134499) (not e!174325))))

(assert (=> b!270482 (= res!134499 (not (contains!1927 Nil!4115 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270483 () Bool)

(assert (=> b!270483 (= e!174324 e!174325)))

(declare-fun res!134501 () Bool)

(assert (=> b!270483 (=> (not res!134501) (not e!174325))))

(declare-datatypes ((SeekEntryResult!1458 0))(
  ( (MissingZero!1458 (index!8002 (_ BitVec 32))) (Found!1458 (index!8003 (_ BitVec 32))) (Intermediate!1458 (undefined!2270 Bool) (index!8004 (_ BitVec 32)) (x!26311 (_ BitVec 32))) (Undefined!1458) (MissingVacant!1458 (index!8005 (_ BitVec 32))) )
))
(declare-fun lt!135682 () SeekEntryResult!1458)

(assert (=> b!270483 (= res!134501 (or (= lt!135682 (MissingZero!1458 i!1267)) (= lt!135682 (MissingVacant!1458 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13280 (_ BitVec 32)) SeekEntryResult!1458)

(assert (=> b!270483 (= lt!135682 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26194 res!134510) b!270475))

(assert (= (and b!270475 res!134505) b!270476))

(assert (= (and b!270476 res!134500) b!270473))

(assert (= (and b!270473 res!134502) b!270479))

(assert (= (and b!270479 res!134507) b!270483))

(assert (= (and b!270483 res!134501) b!270474))

(assert (= (and b!270474 res!134504) b!270471))

(assert (= (and b!270471 res!134511) b!270481))

(assert (= (and b!270481 res!134508) b!270477))

(assert (= (and b!270477 res!134509) b!270478))

(assert (= (and b!270478 res!134506) b!270482))

(assert (= (and b!270482 res!134499) b!270480))

(assert (= (and b!270480 res!134503) b!270472))

(declare-fun m!286105 () Bool)

(assert (=> start!26194 m!286105))

(declare-fun m!286107 () Bool)

(assert (=> start!26194 m!286107))

(declare-fun m!286109 () Bool)

(assert (=> b!270478 m!286109))

(declare-fun m!286111 () Bool)

(assert (=> b!270481 m!286111))

(assert (=> b!270481 m!286111))

(declare-fun m!286113 () Bool)

(assert (=> b!270481 m!286113))

(declare-fun m!286115 () Bool)

(assert (=> b!270483 m!286115))

(declare-fun m!286117 () Bool)

(assert (=> b!270476 m!286117))

(declare-fun m!286119 () Bool)

(assert (=> b!270472 m!286119))

(declare-fun m!286121 () Bool)

(assert (=> b!270479 m!286121))

(declare-fun m!286123 () Bool)

(assert (=> b!270473 m!286123))

(declare-fun m!286125 () Bool)

(assert (=> b!270480 m!286125))

(declare-fun m!286127 () Bool)

(assert (=> b!270482 m!286127))

(declare-fun m!286129 () Bool)

(assert (=> b!270474 m!286129))

(push 1)

