; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27522 () Bool)

(assert start!27522)

(declare-fun b!284251 () Bool)

(declare-fun res!146801 () Bool)

(declare-fun e!180355 () Bool)

(assert (=> b!284251 (=> (not res!146801) (not e!180355))))

(declare-datatypes ((array!14161 0))(
  ( (array!14162 (arr!6719 (Array (_ BitVec 32) (_ BitVec 64))) (size!7071 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14161)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284251 (= res!146801 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284252 () Bool)

(declare-fun res!146799 () Bool)

(assert (=> b!284252 (=> (not res!146799) (not e!180355))))

(declare-datatypes ((List!4548 0))(
  ( (Nil!4545) (Cons!4544 (h!5217 (_ BitVec 64)) (t!9638 List!4548)) )
))
(declare-fun arrayNoDuplicates!0 (array!14161 (_ BitVec 32) List!4548) Bool)

(assert (=> b!284252 (= res!146799 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4545))))

(declare-fun b!284253 () Bool)

(declare-fun e!180354 () Bool)

(assert (=> b!284253 (= e!180354 false)))

(declare-fun lt!140494 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14161 (_ BitVec 32)) Bool)

(assert (=> b!284253 (= lt!140494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!146797 () Bool)

(assert (=> start!27522 (=> (not res!146797) (not e!180355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27522 (= res!146797 (validMask!0 mask!3868))))

(assert (=> start!27522 e!180355))

(declare-fun array_inv!4673 (array!14161) Bool)

(assert (=> start!27522 (array_inv!4673 a!3325)))

(assert (=> start!27522 true))

(declare-fun b!284254 () Bool)

(declare-fun res!146802 () Bool)

(assert (=> b!284254 (=> (not res!146802) (not e!180355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284254 (= res!146802 (validKeyInArray!0 k0!2581))))

(declare-fun b!284255 () Bool)

(assert (=> b!284255 (= e!180355 e!180354)))

(declare-fun res!146798 () Bool)

(assert (=> b!284255 (=> (not res!146798) (not e!180354))))

(declare-datatypes ((SeekEntryResult!1888 0))(
  ( (MissingZero!1888 (index!9722 (_ BitVec 32))) (Found!1888 (index!9723 (_ BitVec 32))) (Intermediate!1888 (undefined!2700 Bool) (index!9724 (_ BitVec 32)) (x!27903 (_ BitVec 32))) (Undefined!1888) (MissingVacant!1888 (index!9725 (_ BitVec 32))) )
))
(declare-fun lt!140495 () SeekEntryResult!1888)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284255 (= res!146798 (or (= lt!140495 (MissingZero!1888 i!1267)) (= lt!140495 (MissingVacant!1888 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14161 (_ BitVec 32)) SeekEntryResult!1888)

(assert (=> b!284255 (= lt!140495 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284256 () Bool)

(declare-fun res!146800 () Bool)

(assert (=> b!284256 (=> (not res!146800) (not e!180355))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284256 (= res!146800 (and (= (size!7071 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7071 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7071 a!3325))))))

(assert (= (and start!27522 res!146797) b!284256))

(assert (= (and b!284256 res!146800) b!284254))

(assert (= (and b!284254 res!146802) b!284252))

(assert (= (and b!284252 res!146799) b!284251))

(assert (= (and b!284251 res!146801) b!284255))

(assert (= (and b!284255 res!146798) b!284253))

(declare-fun m!299349 () Bool)

(assert (=> b!284253 m!299349))

(declare-fun m!299351 () Bool)

(assert (=> b!284254 m!299351))

(declare-fun m!299353 () Bool)

(assert (=> b!284251 m!299353))

(declare-fun m!299355 () Bool)

(assert (=> b!284252 m!299355))

(declare-fun m!299357 () Bool)

(assert (=> b!284255 m!299357))

(declare-fun m!299359 () Bool)

(assert (=> start!27522 m!299359))

(declare-fun m!299361 () Bool)

(assert (=> start!27522 m!299361))

(check-sat (not b!284254) (not b!284252) (not b!284253) (not b!284255) (not b!284251) (not start!27522))
(check-sat)
