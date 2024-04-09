; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26112 () Bool)

(assert start!26112)

(declare-fun b!269235 () Bool)

(declare-fun res!133507 () Bool)

(declare-fun e!173761 () Bool)

(assert (=> b!269235 (=> (not res!133507) (not e!173761))))

(declare-datatypes ((array!13198 0))(
  ( (array!13199 (arr!6248 (Array (_ BitVec 32) (_ BitVec 64))) (size!6600 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13198)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269235 (= res!133507 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269236 () Bool)

(declare-fun e!173764 () Bool)

(assert (=> b!269236 (= e!173761 e!173764)))

(declare-fun res!133505 () Bool)

(assert (=> b!269236 (=> (not res!133505) (not e!173764))))

(declare-datatypes ((SeekEntryResult!1417 0))(
  ( (MissingZero!1417 (index!7838 (_ BitVec 32))) (Found!1417 (index!7839 (_ BitVec 32))) (Intermediate!1417 (undefined!2229 Bool) (index!7840 (_ BitVec 32)) (x!26158 (_ BitVec 32))) (Undefined!1417) (MissingVacant!1417 (index!7841 (_ BitVec 32))) )
))
(declare-fun lt!135173 () SeekEntryResult!1417)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269236 (= res!133505 (or (= lt!135173 (MissingZero!1417 i!1267)) (= lt!135173 (MissingVacant!1417 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13198 (_ BitVec 32)) SeekEntryResult!1417)

(assert (=> b!269236 (= lt!135173 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!269237 () Bool)

(declare-fun res!133511 () Bool)

(assert (=> b!269237 (=> (not res!133511) (not e!173761))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269237 (= res!133511 (and (= (size!6600 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6600 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6600 a!3325))))))

(declare-fun b!269238 () Bool)

(assert (=> b!269238 (= e!173764 false)))

(declare-datatypes ((Unit!8325 0))(
  ( (Unit!8326) )
))
(declare-fun lt!135172 () Unit!8325)

(declare-fun e!173762 () Unit!8325)

(assert (=> b!269238 (= lt!135172 e!173762)))

(declare-fun c!45416 () Bool)

(assert (=> b!269238 (= c!45416 (bvslt startIndex!26 (bvsub (size!6600 a!3325) #b00000000000000000000000000000001)))))

(declare-fun res!133509 () Bool)

(assert (=> start!26112 (=> (not res!133509) (not e!173761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26112 (= res!133509 (validMask!0 mask!3868))))

(assert (=> start!26112 e!173761))

(declare-fun array_inv!4202 (array!13198) Bool)

(assert (=> start!26112 (array_inv!4202 a!3325)))

(assert (=> start!26112 true))

(declare-fun b!269239 () Bool)

(declare-fun Unit!8327 () Unit!8325)

(assert (=> b!269239 (= e!173762 Unit!8327)))

(declare-fun b!269240 () Bool)

(declare-fun res!133506 () Bool)

(assert (=> b!269240 (=> (not res!133506) (not e!173761))))

(declare-datatypes ((List!4077 0))(
  ( (Nil!4074) (Cons!4073 (h!4740 (_ BitVec 64)) (t!9167 List!4077)) )
))
(declare-fun arrayNoDuplicates!0 (array!13198 (_ BitVec 32) List!4077) Bool)

(assert (=> b!269240 (= res!133506 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4074))))

(declare-fun b!269241 () Bool)

(declare-fun lt!135171 () Unit!8325)

(assert (=> b!269241 (= e!173762 lt!135171)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13198 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8325)

(assert (=> b!269241 (= lt!135171 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13198 (_ BitVec 32)) Bool)

(assert (=> b!269241 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13199 (store (arr!6248 a!3325) i!1267 k0!2581) (size!6600 a!3325)) mask!3868)))

(declare-fun b!269242 () Bool)

(declare-fun res!133512 () Bool)

(assert (=> b!269242 (=> (not res!133512) (not e!173764))))

(assert (=> b!269242 (= res!133512 (= startIndex!26 i!1267))))

(declare-fun b!269243 () Bool)

(declare-fun res!133508 () Bool)

(assert (=> b!269243 (=> (not res!133508) (not e!173761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269243 (= res!133508 (validKeyInArray!0 k0!2581))))

(declare-fun b!269244 () Bool)

(declare-fun res!133510 () Bool)

(assert (=> b!269244 (=> (not res!133510) (not e!173764))))

(assert (=> b!269244 (= res!133510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26112 res!133509) b!269237))

(assert (= (and b!269237 res!133511) b!269243))

(assert (= (and b!269243 res!133508) b!269240))

(assert (= (and b!269240 res!133506) b!269235))

(assert (= (and b!269235 res!133507) b!269236))

(assert (= (and b!269236 res!133505) b!269244))

(assert (= (and b!269244 res!133510) b!269242))

(assert (= (and b!269242 res!133512) b!269238))

(assert (= (and b!269238 c!45416) b!269241))

(assert (= (and b!269238 (not c!45416)) b!269239))

(declare-fun m!285189 () Bool)

(assert (=> b!269235 m!285189))

(declare-fun m!285191 () Bool)

(assert (=> b!269240 m!285191))

(declare-fun m!285193 () Bool)

(assert (=> b!269244 m!285193))

(declare-fun m!285195 () Bool)

(assert (=> start!26112 m!285195))

(declare-fun m!285197 () Bool)

(assert (=> start!26112 m!285197))

(declare-fun m!285199 () Bool)

(assert (=> b!269243 m!285199))

(declare-fun m!285201 () Bool)

(assert (=> b!269241 m!285201))

(declare-fun m!285203 () Bool)

(assert (=> b!269241 m!285203))

(declare-fun m!285205 () Bool)

(assert (=> b!269241 m!285205))

(declare-fun m!285207 () Bool)

(assert (=> b!269236 m!285207))

(check-sat (not b!269235) (not b!269243) (not b!269244) (not b!269236) (not b!269241) (not start!26112) (not b!269240))
(check-sat)
