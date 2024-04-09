; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26286 () Bool)

(assert start!26286)

(declare-fun b!272101 () Bool)

(declare-fun e!174739 () Bool)

(declare-fun e!174737 () Bool)

(assert (=> b!272101 (= e!174739 e!174737)))

(declare-fun res!136133 () Bool)

(assert (=> b!272101 (=> (not res!136133) (not e!174737))))

(declare-datatypes ((SeekEntryResult!1504 0))(
  ( (MissingZero!1504 (index!8186 (_ BitVec 32))) (Found!1504 (index!8187 (_ BitVec 32))) (Intermediate!1504 (undefined!2316 Bool) (index!8188 (_ BitVec 32)) (x!26477 (_ BitVec 32))) (Undefined!1504) (MissingVacant!1504 (index!8189 (_ BitVec 32))) )
))
(declare-fun lt!135959 () SeekEntryResult!1504)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272101 (= res!136133 (or (= lt!135959 (MissingZero!1504 i!1267)) (= lt!135959 (MissingVacant!1504 i!1267))))))

(declare-datatypes ((array!13372 0))(
  ( (array!13373 (arr!6335 (Array (_ BitVec 32) (_ BitVec 64))) (size!6687 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13372)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13372 (_ BitVec 32)) SeekEntryResult!1504)

(assert (=> b!272101 (= lt!135959 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272102 () Bool)

(declare-fun res!136136 () Bool)

(assert (=> b!272102 (=> (not res!136136) (not e!174737))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272102 (= res!136136 (not (= startIndex!26 i!1267)))))

(declare-fun res!136129 () Bool)

(assert (=> start!26286 (=> (not res!136129) (not e!174739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26286 (= res!136129 (validMask!0 mask!3868))))

(assert (=> start!26286 e!174739))

(declare-fun array_inv!4289 (array!13372) Bool)

(assert (=> start!26286 (array_inv!4289 a!3325)))

(assert (=> start!26286 true))

(declare-fun b!272103 () Bool)

(declare-fun res!136134 () Bool)

(assert (=> b!272103 (=> (not res!136134) (not e!174737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13372 (_ BitVec 32)) Bool)

(assert (=> b!272103 (= res!136134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272104 () Bool)

(declare-fun res!136131 () Bool)

(assert (=> b!272104 (=> (not res!136131) (not e!174739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272104 (= res!136131 (validKeyInArray!0 k0!2581))))

(declare-fun b!272105 () Bool)

(assert (=> b!272105 (= e!174737 (not true))))

(declare-datatypes ((List!4164 0))(
  ( (Nil!4161) (Cons!4160 (h!4827 (_ BitVec 64)) (t!9254 List!4164)) )
))
(declare-fun arrayNoDuplicates!0 (array!13372 (_ BitVec 32) List!4164) Bool)

(assert (=> b!272105 (arrayNoDuplicates!0 (array!13373 (store (arr!6335 a!3325) i!1267 k0!2581) (size!6687 a!3325)) #b00000000000000000000000000000000 Nil!4161)))

(declare-datatypes ((Unit!8474 0))(
  ( (Unit!8475) )
))
(declare-fun lt!135958 () Unit!8474)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13372 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4164) Unit!8474)

(assert (=> b!272105 (= lt!135958 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4161))))

(declare-fun b!272106 () Bool)

(declare-fun res!136137 () Bool)

(assert (=> b!272106 (=> (not res!136137) (not e!174739))))

(declare-fun arrayContainsKey!0 (array!13372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272106 (= res!136137 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272107 () Bool)

(declare-fun res!136135 () Bool)

(assert (=> b!272107 (=> (not res!136135) (not e!174739))))

(assert (=> b!272107 (= res!136135 (and (= (size!6687 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6687 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6687 a!3325))))))

(declare-fun b!272108 () Bool)

(declare-fun res!136132 () Bool)

(assert (=> b!272108 (=> (not res!136132) (not e!174739))))

(assert (=> b!272108 (= res!136132 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4161))))

(declare-fun b!272109 () Bool)

(declare-fun res!136130 () Bool)

(assert (=> b!272109 (=> (not res!136130) (not e!174737))))

(assert (=> b!272109 (= res!136130 (validKeyInArray!0 (select (arr!6335 a!3325) startIndex!26)))))

(assert (= (and start!26286 res!136129) b!272107))

(assert (= (and b!272107 res!136135) b!272104))

(assert (= (and b!272104 res!136131) b!272108))

(assert (= (and b!272108 res!136132) b!272106))

(assert (= (and b!272106 res!136137) b!272101))

(assert (= (and b!272101 res!136133) b!272103))

(assert (= (and b!272103 res!136134) b!272102))

(assert (= (and b!272102 res!136136) b!272109))

(assert (= (and b!272109 res!136130) b!272105))

(declare-fun m!287275 () Bool)

(assert (=> b!272106 m!287275))

(declare-fun m!287277 () Bool)

(assert (=> b!272101 m!287277))

(declare-fun m!287279 () Bool)

(assert (=> b!272104 m!287279))

(declare-fun m!287281 () Bool)

(assert (=> b!272103 m!287281))

(declare-fun m!287283 () Bool)

(assert (=> start!26286 m!287283))

(declare-fun m!287285 () Bool)

(assert (=> start!26286 m!287285))

(declare-fun m!287287 () Bool)

(assert (=> b!272108 m!287287))

(declare-fun m!287289 () Bool)

(assert (=> b!272109 m!287289))

(assert (=> b!272109 m!287289))

(declare-fun m!287291 () Bool)

(assert (=> b!272109 m!287291))

(declare-fun m!287293 () Bool)

(assert (=> b!272105 m!287293))

(declare-fun m!287295 () Bool)

(assert (=> b!272105 m!287295))

(declare-fun m!287297 () Bool)

(assert (=> b!272105 m!287297))

(check-sat (not b!272105) (not b!272101) (not b!272106) (not b!272104) (not b!272103) (not start!26286) (not b!272108) (not b!272109))
(check-sat)
