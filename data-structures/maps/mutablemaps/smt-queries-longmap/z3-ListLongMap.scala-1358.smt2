; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26718 () Bool)

(assert start!26718)

(declare-fun b!277254 () Bool)

(declare-fun res!141219 () Bool)

(declare-fun e!176977 () Bool)

(assert (=> b!277254 (=> (not res!141219) (not e!176977))))

(declare-datatypes ((array!13804 0))(
  ( (array!13805 (arr!6551 (Array (_ BitVec 32) (_ BitVec 64))) (size!6903 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13804)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277254 (= res!141219 (and (= (size!6903 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6903 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6903 a!3325))))))

(declare-fun b!277255 () Bool)

(declare-fun res!141218 () Bool)

(assert (=> b!277255 (=> (not res!141218) (not e!176977))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277255 (= res!141218 (validKeyInArray!0 k0!2581))))

(declare-fun b!277256 () Bool)

(declare-datatypes ((Unit!8730 0))(
  ( (Unit!8731) )
))
(declare-fun e!176975 () Unit!8730)

(declare-fun lt!137916 () Unit!8730)

(assert (=> b!277256 (= e!176975 lt!137916)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13804 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8730)

(assert (=> b!277256 (= lt!137916 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13804 (_ BitVec 32)) Bool)

(assert (=> b!277256 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13805 (store (arr!6551 a!3325) i!1267 k0!2581) (size!6903 a!3325)) mask!3868)))

(declare-fun res!141223 () Bool)

(assert (=> start!26718 (=> (not res!141223) (not e!176977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26718 (= res!141223 (validMask!0 mask!3868))))

(assert (=> start!26718 e!176977))

(declare-fun array_inv!4505 (array!13804) Bool)

(assert (=> start!26718 (array_inv!4505 a!3325)))

(assert (=> start!26718 true))

(declare-fun b!277257 () Bool)

(declare-fun e!176976 () Bool)

(assert (=> b!277257 (= e!176977 e!176976)))

(declare-fun res!141225 () Bool)

(assert (=> b!277257 (=> (not res!141225) (not e!176976))))

(declare-datatypes ((SeekEntryResult!1720 0))(
  ( (MissingZero!1720 (index!9050 (_ BitVec 32))) (Found!1720 (index!9051 (_ BitVec 32))) (Intermediate!1720 (undefined!2532 Bool) (index!9052 (_ BitVec 32)) (x!27269 (_ BitVec 32))) (Undefined!1720) (MissingVacant!1720 (index!9053 (_ BitVec 32))) )
))
(declare-fun lt!137917 () SeekEntryResult!1720)

(assert (=> b!277257 (= res!141225 (or (= lt!137917 (MissingZero!1720 i!1267)) (= lt!137917 (MissingVacant!1720 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13804 (_ BitVec 32)) SeekEntryResult!1720)

(assert (=> b!277257 (= lt!137917 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277258 () Bool)

(declare-fun Unit!8732 () Unit!8730)

(assert (=> b!277258 (= e!176975 Unit!8732)))

(declare-fun b!277259 () Bool)

(declare-fun res!141222 () Bool)

(assert (=> b!277259 (=> (not res!141222) (not e!176977))))

(declare-fun arrayContainsKey!0 (array!13804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277259 (= res!141222 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277260 () Bool)

(declare-fun res!141221 () Bool)

(assert (=> b!277260 (=> (not res!141221) (not e!176976))))

(assert (=> b!277260 (= res!141221 (= startIndex!26 i!1267))))

(declare-fun b!277261 () Bool)

(declare-fun res!141224 () Bool)

(assert (=> b!277261 (=> (not res!141224) (not e!176977))))

(declare-datatypes ((List!4380 0))(
  ( (Nil!4377) (Cons!4376 (h!5043 (_ BitVec 64)) (t!9470 List!4380)) )
))
(declare-fun arrayNoDuplicates!0 (array!13804 (_ BitVec 32) List!4380) Bool)

(assert (=> b!277261 (= res!141224 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4377))))

(declare-fun b!277262 () Bool)

(assert (=> b!277262 (= e!176976 false)))

(declare-fun lt!137918 () Unit!8730)

(assert (=> b!277262 (= lt!137918 e!176975)))

(declare-fun c!45569 () Bool)

(assert (=> b!277262 (= c!45569 (bvslt startIndex!26 (bvsub (size!6903 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277263 () Bool)

(declare-fun res!141220 () Bool)

(assert (=> b!277263 (=> (not res!141220) (not e!176976))))

(assert (=> b!277263 (= res!141220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26718 res!141223) b!277254))

(assert (= (and b!277254 res!141219) b!277255))

(assert (= (and b!277255 res!141218) b!277261))

(assert (= (and b!277261 res!141224) b!277259))

(assert (= (and b!277259 res!141222) b!277257))

(assert (= (and b!277257 res!141225) b!277263))

(assert (= (and b!277263 res!141220) b!277260))

(assert (= (and b!277260 res!141221) b!277262))

(assert (= (and b!277262 c!45569) b!277256))

(assert (= (and b!277262 (not c!45569)) b!277258))

(declare-fun m!292389 () Bool)

(assert (=> start!26718 m!292389))

(declare-fun m!292391 () Bool)

(assert (=> start!26718 m!292391))

(declare-fun m!292393 () Bool)

(assert (=> b!277261 m!292393))

(declare-fun m!292395 () Bool)

(assert (=> b!277263 m!292395))

(declare-fun m!292397 () Bool)

(assert (=> b!277259 m!292397))

(declare-fun m!292399 () Bool)

(assert (=> b!277257 m!292399))

(declare-fun m!292401 () Bool)

(assert (=> b!277256 m!292401))

(declare-fun m!292403 () Bool)

(assert (=> b!277256 m!292403))

(declare-fun m!292405 () Bool)

(assert (=> b!277256 m!292405))

(declare-fun m!292407 () Bool)

(assert (=> b!277255 m!292407))

(check-sat (not b!277261) (not b!277257) (not b!277263) (not b!277255) (not start!26718) (not b!277256) (not b!277259))
