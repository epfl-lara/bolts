; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27172 () Bool)

(assert start!27172)

(declare-fun b!280969 () Bool)

(declare-fun res!144081 () Bool)

(declare-fun e!178712 () Bool)

(assert (=> b!280969 (=> (not res!144081) (not e!178712))))

(declare-datatypes ((array!13979 0))(
  ( (array!13980 (arr!6631 (Array (_ BitVec 32) (_ BitVec 64))) (size!6983 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13979)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!280969 (= res!144081 (and (= (size!6983 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6983 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6983 a!3325))))))

(declare-fun b!280970 () Bool)

(declare-fun res!144083 () Bool)

(assert (=> b!280970 (=> (not res!144083) (not e!178712))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280970 (= res!144083 (validKeyInArray!0 k!2581))))

(declare-fun b!280971 () Bool)

(declare-fun res!144084 () Bool)

(assert (=> b!280971 (=> (not res!144084) (not e!178712))))

(declare-datatypes ((List!4460 0))(
  ( (Nil!4457) (Cons!4456 (h!5126 (_ BitVec 64)) (t!9550 List!4460)) )
))
(declare-fun arrayNoDuplicates!0 (array!13979 (_ BitVec 32) List!4460) Bool)

(assert (=> b!280971 (= res!144084 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4457))))

(declare-fun b!280972 () Bool)

(declare-fun e!178714 () Bool)

(assert (=> b!280972 (= e!178714 (not true))))

(assert (=> b!280972 (arrayNoDuplicates!0 (array!13980 (store (arr!6631 a!3325) i!1267 k!2581) (size!6983 a!3325)) #b00000000000000000000000000000000 Nil!4457)))

(declare-datatypes ((Unit!8863 0))(
  ( (Unit!8864) )
))
(declare-fun lt!138977 () Unit!8863)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13979 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4460) Unit!8863)

(assert (=> b!280972 (= lt!138977 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4457))))

(declare-fun b!280974 () Bool)

(assert (=> b!280974 (= e!178712 e!178714)))

(declare-fun res!144079 () Bool)

(assert (=> b!280974 (=> (not res!144079) (not e!178714))))

(declare-datatypes ((SeekEntryResult!1800 0))(
  ( (MissingZero!1800 (index!9370 (_ BitVec 32))) (Found!1800 (index!9371 (_ BitVec 32))) (Intermediate!1800 (undefined!2612 Bool) (index!9372 (_ BitVec 32)) (x!27574 (_ BitVec 32))) (Undefined!1800) (MissingVacant!1800 (index!9373 (_ BitVec 32))) )
))
(declare-fun lt!138976 () SeekEntryResult!1800)

(assert (=> b!280974 (= res!144079 (or (= lt!138976 (MissingZero!1800 i!1267)) (= lt!138976 (MissingVacant!1800 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13979 (_ BitVec 32)) SeekEntryResult!1800)

(assert (=> b!280974 (= lt!138976 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280975 () Bool)

(declare-fun res!144082 () Bool)

(assert (=> b!280975 (=> (not res!144082) (not e!178714))))

(assert (=> b!280975 (= res!144082 (validKeyInArray!0 (select (arr!6631 a!3325) startIndex!26)))))

(declare-fun b!280976 () Bool)

(declare-fun res!144078 () Bool)

(assert (=> b!280976 (=> (not res!144078) (not e!178714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13979 (_ BitVec 32)) Bool)

(assert (=> b!280976 (= res!144078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280977 () Bool)

(declare-fun res!144077 () Bool)

(assert (=> b!280977 (=> (not res!144077) (not e!178712))))

(declare-fun arrayContainsKey!0 (array!13979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280977 (= res!144077 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!144080 () Bool)

(assert (=> start!27172 (=> (not res!144080) (not e!178712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27172 (= res!144080 (validMask!0 mask!3868))))

(assert (=> start!27172 e!178712))

(declare-fun array_inv!4585 (array!13979) Bool)

(assert (=> start!27172 (array_inv!4585 a!3325)))

(assert (=> start!27172 true))

(declare-fun b!280973 () Bool)

(declare-fun res!144076 () Bool)

(assert (=> b!280973 (=> (not res!144076) (not e!178714))))

(assert (=> b!280973 (= res!144076 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27172 res!144080) b!280969))

(assert (= (and b!280969 res!144081) b!280970))

(assert (= (and b!280970 res!144083) b!280971))

(assert (= (and b!280971 res!144084) b!280977))

(assert (= (and b!280977 res!144077) b!280974))

(assert (= (and b!280974 res!144079) b!280976))

(assert (= (and b!280976 res!144078) b!280973))

(assert (= (and b!280973 res!144076) b!280975))

(assert (= (and b!280975 res!144082) b!280972))

(declare-fun m!295381 () Bool)

(assert (=> b!280970 m!295381))

(declare-fun m!295383 () Bool)

(assert (=> b!280976 m!295383))

(declare-fun m!295385 () Bool)

(assert (=> b!280972 m!295385))

(declare-fun m!295387 () Bool)

(assert (=> b!280972 m!295387))

(declare-fun m!295389 () Bool)

(assert (=> b!280972 m!295389))

(declare-fun m!295391 () Bool)

(assert (=> b!280977 m!295391))

(declare-fun m!295393 () Bool)

(assert (=> b!280971 m!295393))

(declare-fun m!295395 () Bool)

(assert (=> b!280974 m!295395))

(declare-fun m!295397 () Bool)

(assert (=> start!27172 m!295397))

(declare-fun m!295399 () Bool)

(assert (=> start!27172 m!295399))

(declare-fun m!295401 () Bool)

(assert (=> b!280975 m!295401))

(assert (=> b!280975 m!295401))

(declare-fun m!295403 () Bool)

(assert (=> b!280975 m!295403))

(push 1)

