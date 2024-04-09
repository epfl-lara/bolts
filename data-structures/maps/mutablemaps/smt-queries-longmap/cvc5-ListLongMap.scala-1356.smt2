; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26704 () Bool)

(assert start!26704)

(declare-fun res!141056 () Bool)

(declare-fun e!176890 () Bool)

(assert (=> start!26704 (=> (not res!141056) (not e!176890))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26704 (= res!141056 (validMask!0 mask!3868))))

(assert (=> start!26704 e!176890))

(declare-datatypes ((array!13790 0))(
  ( (array!13791 (arr!6544 (Array (_ BitVec 32) (_ BitVec 64))) (size!6896 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13790)

(declare-fun array_inv!4498 (array!13790) Bool)

(assert (=> start!26704 (array_inv!4498 a!3325)))

(assert (=> start!26704 true))

(declare-fun b!277044 () Bool)

(declare-fun res!141053 () Bool)

(assert (=> b!277044 (=> (not res!141053) (not e!176890))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277044 (= res!141053 (and (= (size!6896 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6896 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6896 a!3325))))))

(declare-fun b!277045 () Bool)

(declare-datatypes ((Unit!8709 0))(
  ( (Unit!8710) )
))
(declare-fun e!176893 () Unit!8709)

(declare-fun lt!137855 () Unit!8709)

(assert (=> b!277045 (= e!176893 lt!137855)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13790 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8709)

(assert (=> b!277045 (= lt!137855 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13790 (_ BitVec 32)) Bool)

(assert (=> b!277045 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13791 (store (arr!6544 a!3325) i!1267 k!2581) (size!6896 a!3325)) mask!3868)))

(declare-fun b!277046 () Bool)

(declare-fun res!141052 () Bool)

(declare-fun e!176891 () Bool)

(assert (=> b!277046 (=> (not res!141052) (not e!176891))))

(assert (=> b!277046 (= res!141052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277047 () Bool)

(declare-fun res!141057 () Bool)

(assert (=> b!277047 (=> (not res!141057) (not e!176891))))

(assert (=> b!277047 (= res!141057 (= startIndex!26 i!1267))))

(declare-fun b!277048 () Bool)

(assert (=> b!277048 (= e!176891 false)))

(declare-fun lt!137854 () Unit!8709)

(assert (=> b!277048 (= lt!137854 e!176893)))

(declare-fun c!45548 () Bool)

(assert (=> b!277048 (= c!45548 (bvslt startIndex!26 (bvsub (size!6896 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277049 () Bool)

(declare-fun res!141054 () Bool)

(assert (=> b!277049 (=> (not res!141054) (not e!176890))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277049 (= res!141054 (validKeyInArray!0 k!2581))))

(declare-fun b!277050 () Bool)

(declare-fun res!141051 () Bool)

(assert (=> b!277050 (=> (not res!141051) (not e!176890))))

(declare-fun arrayContainsKey!0 (array!13790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277050 (= res!141051 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277051 () Bool)

(declare-fun res!141050 () Bool)

(assert (=> b!277051 (=> (not res!141050) (not e!176890))))

(declare-datatypes ((List!4373 0))(
  ( (Nil!4370) (Cons!4369 (h!5036 (_ BitVec 64)) (t!9463 List!4373)) )
))
(declare-fun arrayNoDuplicates!0 (array!13790 (_ BitVec 32) List!4373) Bool)

(assert (=> b!277051 (= res!141050 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4370))))

(declare-fun b!277052 () Bool)

(assert (=> b!277052 (= e!176890 e!176891)))

(declare-fun res!141055 () Bool)

(assert (=> b!277052 (=> (not res!141055) (not e!176891))))

(declare-datatypes ((SeekEntryResult!1713 0))(
  ( (MissingZero!1713 (index!9022 (_ BitVec 32))) (Found!1713 (index!9023 (_ BitVec 32))) (Intermediate!1713 (undefined!2525 Bool) (index!9024 (_ BitVec 32)) (x!27246 (_ BitVec 32))) (Undefined!1713) (MissingVacant!1713 (index!9025 (_ BitVec 32))) )
))
(declare-fun lt!137853 () SeekEntryResult!1713)

(assert (=> b!277052 (= res!141055 (or (= lt!137853 (MissingZero!1713 i!1267)) (= lt!137853 (MissingVacant!1713 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13790 (_ BitVec 32)) SeekEntryResult!1713)

(assert (=> b!277052 (= lt!137853 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277053 () Bool)

(declare-fun Unit!8711 () Unit!8709)

(assert (=> b!277053 (= e!176893 Unit!8711)))

(assert (= (and start!26704 res!141056) b!277044))

(assert (= (and b!277044 res!141053) b!277049))

(assert (= (and b!277049 res!141054) b!277051))

(assert (= (and b!277051 res!141050) b!277050))

(assert (= (and b!277050 res!141051) b!277052))

(assert (= (and b!277052 res!141055) b!277046))

(assert (= (and b!277046 res!141052) b!277047))

(assert (= (and b!277047 res!141057) b!277048))

(assert (= (and b!277048 c!45548) b!277045))

(assert (= (and b!277048 (not c!45548)) b!277053))

(declare-fun m!292249 () Bool)

(assert (=> b!277046 m!292249))

(declare-fun m!292251 () Bool)

(assert (=> start!26704 m!292251))

(declare-fun m!292253 () Bool)

(assert (=> start!26704 m!292253))

(declare-fun m!292255 () Bool)

(assert (=> b!277049 m!292255))

(declare-fun m!292257 () Bool)

(assert (=> b!277052 m!292257))

(declare-fun m!292259 () Bool)

(assert (=> b!277050 m!292259))

(declare-fun m!292261 () Bool)

(assert (=> b!277051 m!292261))

(declare-fun m!292263 () Bool)

(assert (=> b!277045 m!292263))

(declare-fun m!292265 () Bool)

(assert (=> b!277045 m!292265))

(declare-fun m!292267 () Bool)

(assert (=> b!277045 m!292267))

(push 1)

(assert (not b!277051))

(assert (not b!277052))

(assert (not b!277049))

(assert (not b!277045))

(assert (not b!277046))

(assert (not b!277050))

(assert (not start!26704))

(check-sat)

(pop 1)

