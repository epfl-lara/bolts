; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26042 () Bool)

(assert start!26042)

(declare-fun b!268513 () Bool)

(declare-fun res!132831 () Bool)

(declare-fun e!173424 () Bool)

(assert (=> b!268513 (=> (not res!132831) (not e!173424))))

(declare-datatypes ((array!13128 0))(
  ( (array!13129 (arr!6213 (Array (_ BitVec 32) (_ BitVec 64))) (size!6565 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13128)

(declare-datatypes ((List!4042 0))(
  ( (Nil!4039) (Cons!4038 (h!4705 (_ BitVec 64)) (t!9132 List!4042)) )
))
(declare-fun arrayNoDuplicates!0 (array!13128 (_ BitVec 32) List!4042) Bool)

(assert (=> b!268513 (= res!132831 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4039))))

(declare-fun res!132829 () Bool)

(assert (=> start!26042 (=> (not res!132829) (not e!173424))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26042 (= res!132829 (validMask!0 mask!3868))))

(assert (=> start!26042 e!173424))

(declare-fun array_inv!4167 (array!13128) Bool)

(assert (=> start!26042 (array_inv!4167 a!3325)))

(assert (=> start!26042 true))

(declare-fun b!268514 () Bool)

(declare-fun res!132833 () Bool)

(assert (=> b!268514 (=> (not res!132833) (not e!173424))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268514 (= res!132833 (validKeyInArray!0 k!2581))))

(declare-fun b!268515 () Bool)

(declare-fun res!132834 () Bool)

(assert (=> b!268515 (=> (not res!132834) (not e!173424))))

(declare-fun arrayContainsKey!0 (array!13128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268515 (= res!132834 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268516 () Bool)

(declare-fun e!173423 () Bool)

(assert (=> b!268516 (= e!173424 e!173423)))

(declare-fun res!132832 () Bool)

(assert (=> b!268516 (=> (not res!132832) (not e!173423))))

(declare-datatypes ((SeekEntryResult!1382 0))(
  ( (MissingZero!1382 (index!7698 (_ BitVec 32))) (Found!1382 (index!7699 (_ BitVec 32))) (Intermediate!1382 (undefined!2194 Bool) (index!7700 (_ BitVec 32)) (x!26027 (_ BitVec 32))) (Undefined!1382) (MissingVacant!1382 (index!7701 (_ BitVec 32))) )
))
(declare-fun lt!134938 () SeekEntryResult!1382)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268516 (= res!132832 (or (= lt!134938 (MissingZero!1382 i!1267)) (= lt!134938 (MissingVacant!1382 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13128 (_ BitVec 32)) SeekEntryResult!1382)

(assert (=> b!268516 (= lt!134938 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268517 () Bool)

(declare-fun res!132830 () Bool)

(assert (=> b!268517 (=> (not res!132830) (not e!173424))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268517 (= res!132830 (and (= (size!6565 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6565 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6565 a!3325))))))

(declare-fun b!268518 () Bool)

(assert (=> b!268518 (= e!173423 false)))

(declare-fun lt!134939 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13128 (_ BitVec 32)) Bool)

(assert (=> b!268518 (= lt!134939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26042 res!132829) b!268517))

(assert (= (and b!268517 res!132830) b!268514))

(assert (= (and b!268514 res!132833) b!268513))

(assert (= (and b!268513 res!132831) b!268515))

(assert (= (and b!268515 res!132834) b!268516))

(assert (= (and b!268516 res!132832) b!268518))

(declare-fun m!284657 () Bool)

(assert (=> b!268515 m!284657))

(declare-fun m!284659 () Bool)

(assert (=> b!268514 m!284659))

(declare-fun m!284661 () Bool)

(assert (=> b!268513 m!284661))

(declare-fun m!284663 () Bool)

(assert (=> b!268518 m!284663))

(declare-fun m!284665 () Bool)

(assert (=> b!268516 m!284665))

(declare-fun m!284667 () Bool)

(assert (=> start!26042 m!284667))

(declare-fun m!284669 () Bool)

(assert (=> start!26042 m!284669))

(push 1)

(assert (not b!268518))

(assert (not start!26042))

(assert (not b!268514))

(assert (not b!268513))

(assert (not b!268515))

(assert (not b!268516))

