; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26124 () Bool)

(assert start!26124)

(declare-fun b!269415 () Bool)

(declare-fun res!133649 () Bool)

(declare-fun e!173836 () Bool)

(assert (=> b!269415 (=> (not res!133649) (not e!173836))))

(declare-datatypes ((array!13210 0))(
  ( (array!13211 (arr!6254 (Array (_ BitVec 32) (_ BitVec 64))) (size!6606 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13210)

(declare-datatypes ((List!4083 0))(
  ( (Nil!4080) (Cons!4079 (h!4746 (_ BitVec 64)) (t!9173 List!4083)) )
))
(declare-fun arrayNoDuplicates!0 (array!13210 (_ BitVec 32) List!4083) Bool)

(assert (=> b!269415 (= res!133649 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4080))))

(declare-fun b!269416 () Bool)

(declare-fun res!133653 () Bool)

(assert (=> b!269416 (=> (not res!133653) (not e!173836))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269416 (= res!133653 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269417 () Bool)

(declare-datatypes ((Unit!8343 0))(
  ( (Unit!8344) )
))
(declare-fun e!173835 () Unit!8343)

(declare-fun lt!135225 () Unit!8343)

(assert (=> b!269417 (= e!173835 lt!135225)))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13210 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8343)

(assert (=> b!269417 (= lt!135225 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13210 (_ BitVec 32)) Bool)

(assert (=> b!269417 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13211 (store (arr!6254 a!3325) i!1267 k0!2581) (size!6606 a!3325)) mask!3868)))

(declare-fun b!269418 () Bool)

(declare-fun res!133654 () Bool)

(assert (=> b!269418 (=> (not res!133654) (not e!173836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269418 (= res!133654 (validKeyInArray!0 k0!2581))))

(declare-fun b!269419 () Bool)

(declare-fun res!133651 () Bool)

(declare-fun e!173833 () Bool)

(assert (=> b!269419 (=> (not res!133651) (not e!173833))))

(assert (=> b!269419 (= res!133651 (= startIndex!26 i!1267))))

(declare-fun b!269420 () Bool)

(declare-fun res!133652 () Bool)

(assert (=> b!269420 (=> (not res!133652) (not e!173833))))

(assert (=> b!269420 (= res!133652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133650 () Bool)

(assert (=> start!26124 (=> (not res!133650) (not e!173836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26124 (= res!133650 (validMask!0 mask!3868))))

(assert (=> start!26124 e!173836))

(declare-fun array_inv!4208 (array!13210) Bool)

(assert (=> start!26124 (array_inv!4208 a!3325)))

(assert (=> start!26124 true))

(declare-fun b!269421 () Bool)

(assert (=> b!269421 (= e!173833 false)))

(declare-fun lt!135226 () Unit!8343)

(assert (=> b!269421 (= lt!135226 e!173835)))

(declare-fun c!45434 () Bool)

(assert (=> b!269421 (= c!45434 (bvslt startIndex!26 (bvsub (size!6606 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269422 () Bool)

(declare-fun res!133655 () Bool)

(assert (=> b!269422 (=> (not res!133655) (not e!173836))))

(assert (=> b!269422 (= res!133655 (and (= (size!6606 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6606 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6606 a!3325))))))

(declare-fun b!269423 () Bool)

(assert (=> b!269423 (= e!173836 e!173833)))

(declare-fun res!133656 () Bool)

(assert (=> b!269423 (=> (not res!133656) (not e!173833))))

(declare-datatypes ((SeekEntryResult!1423 0))(
  ( (MissingZero!1423 (index!7862 (_ BitVec 32))) (Found!1423 (index!7863 (_ BitVec 32))) (Intermediate!1423 (undefined!2235 Bool) (index!7864 (_ BitVec 32)) (x!26180 (_ BitVec 32))) (Undefined!1423) (MissingVacant!1423 (index!7865 (_ BitVec 32))) )
))
(declare-fun lt!135227 () SeekEntryResult!1423)

(assert (=> b!269423 (= res!133656 (or (= lt!135227 (MissingZero!1423 i!1267)) (= lt!135227 (MissingVacant!1423 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13210 (_ BitVec 32)) SeekEntryResult!1423)

(assert (=> b!269423 (= lt!135227 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!269424 () Bool)

(declare-fun Unit!8345 () Unit!8343)

(assert (=> b!269424 (= e!173835 Unit!8345)))

(assert (= (and start!26124 res!133650) b!269422))

(assert (= (and b!269422 res!133655) b!269418))

(assert (= (and b!269418 res!133654) b!269415))

(assert (= (and b!269415 res!133649) b!269416))

(assert (= (and b!269416 res!133653) b!269423))

(assert (= (and b!269423 res!133656) b!269420))

(assert (= (and b!269420 res!133652) b!269419))

(assert (= (and b!269419 res!133651) b!269421))

(assert (= (and b!269421 c!45434) b!269417))

(assert (= (and b!269421 (not c!45434)) b!269424))

(declare-fun m!285309 () Bool)

(assert (=> b!269420 m!285309))

(declare-fun m!285311 () Bool)

(assert (=> b!269423 m!285311))

(declare-fun m!285313 () Bool)

(assert (=> b!269417 m!285313))

(declare-fun m!285315 () Bool)

(assert (=> b!269417 m!285315))

(declare-fun m!285317 () Bool)

(assert (=> b!269417 m!285317))

(declare-fun m!285319 () Bool)

(assert (=> b!269415 m!285319))

(declare-fun m!285321 () Bool)

(assert (=> b!269418 m!285321))

(declare-fun m!285323 () Bool)

(assert (=> b!269416 m!285323))

(declare-fun m!285325 () Bool)

(assert (=> start!26124 m!285325))

(declare-fun m!285327 () Bool)

(assert (=> start!26124 m!285327))

(check-sat (not b!269423) (not b!269415) (not b!269416) (not b!269417) (not start!26124) (not b!269420) (not b!269418))
(check-sat)
