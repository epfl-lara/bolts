; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27212 () Bool)

(assert start!27212)

(declare-fun b!281509 () Bool)

(declare-fun res!144620 () Bool)

(declare-fun e!178901 () Bool)

(assert (=> b!281509 (=> (not res!144620) (not e!178901))))

(declare-datatypes ((array!14019 0))(
  ( (array!14020 (arr!6651 (Array (_ BitVec 32) (_ BitVec 64))) (size!7003 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14019)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281509 (= res!144620 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281510 () Bool)

(declare-fun res!144623 () Bool)

(assert (=> b!281510 (=> (not res!144623) (not e!178901))))

(declare-datatypes ((List!4480 0))(
  ( (Nil!4477) (Cons!4476 (h!5146 (_ BitVec 64)) (t!9570 List!4480)) )
))
(declare-fun arrayNoDuplicates!0 (array!14019 (_ BitVec 32) List!4480) Bool)

(assert (=> b!281510 (= res!144623 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4477))))

(declare-fun b!281511 () Bool)

(declare-fun res!144617 () Bool)

(assert (=> b!281511 (=> (not res!144617) (not e!178901))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!281511 (= res!144617 (and (= (size!7003 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7003 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7003 a!3325))))))

(declare-fun b!281513 () Bool)

(declare-fun e!178903 () Bool)

(assert (=> b!281513 (= e!178903 (not true))))

(declare-fun lt!139115 () array!14019)

(declare-datatypes ((SeekEntryResult!1820 0))(
  ( (MissingZero!1820 (index!9450 (_ BitVec 32))) (Found!1820 (index!9451 (_ BitVec 32))) (Intermediate!1820 (undefined!2632 Bool) (index!9452 (_ BitVec 32)) (x!27642 (_ BitVec 32))) (Undefined!1820) (MissingVacant!1820 (index!9453 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14019 (_ BitVec 32)) SeekEntryResult!1820)

(assert (=> b!281513 (= (seekEntryOrOpen!0 (select (arr!6651 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6651 a!3325) i!1267 k!2581) startIndex!26) lt!139115 mask!3868))))

(declare-datatypes ((Unit!8903 0))(
  ( (Unit!8904) )
))
(declare-fun lt!139112 () Unit!8903)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8903)

(assert (=> b!281513 (= lt!139112 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!281513 (arrayNoDuplicates!0 lt!139115 #b00000000000000000000000000000000 Nil!4477)))

(declare-fun lt!139113 () Unit!8903)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14019 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4480) Unit!8903)

(assert (=> b!281513 (= lt!139113 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4477))))

(declare-fun b!281514 () Bool)

(declare-fun res!144618 () Bool)

(assert (=> b!281514 (=> (not res!144618) (not e!178901))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281514 (= res!144618 (validKeyInArray!0 k!2581))))

(declare-fun b!281515 () Bool)

(declare-fun e!178902 () Bool)

(assert (=> b!281515 (= e!178902 e!178903)))

(declare-fun res!144621 () Bool)

(assert (=> b!281515 (=> (not res!144621) (not e!178903))))

(assert (=> b!281515 (= res!144621 (not (= startIndex!26 i!1267)))))

(assert (=> b!281515 (= lt!139115 (array!14020 (store (arr!6651 a!3325) i!1267 k!2581) (size!7003 a!3325)))))

(declare-fun b!281516 () Bool)

(declare-fun res!144619 () Bool)

(assert (=> b!281516 (=> (not res!144619) (not e!178903))))

(assert (=> b!281516 (= res!144619 (validKeyInArray!0 (select (arr!6651 a!3325) startIndex!26)))))

(declare-fun b!281517 () Bool)

(declare-fun res!144616 () Bool)

(assert (=> b!281517 (=> (not res!144616) (not e!178902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14019 (_ BitVec 32)) Bool)

(assert (=> b!281517 (= res!144616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!144624 () Bool)

(assert (=> start!27212 (=> (not res!144624) (not e!178901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27212 (= res!144624 (validMask!0 mask!3868))))

(assert (=> start!27212 e!178901))

(declare-fun array_inv!4605 (array!14019) Bool)

(assert (=> start!27212 (array_inv!4605 a!3325)))

(assert (=> start!27212 true))

(declare-fun b!281512 () Bool)

(assert (=> b!281512 (= e!178901 e!178902)))

(declare-fun res!144622 () Bool)

(assert (=> b!281512 (=> (not res!144622) (not e!178902))))

(declare-fun lt!139114 () SeekEntryResult!1820)

(assert (=> b!281512 (= res!144622 (or (= lt!139114 (MissingZero!1820 i!1267)) (= lt!139114 (MissingVacant!1820 i!1267))))))

(assert (=> b!281512 (= lt!139114 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27212 res!144624) b!281511))

(assert (= (and b!281511 res!144617) b!281514))

(assert (= (and b!281514 res!144618) b!281510))

(assert (= (and b!281510 res!144623) b!281509))

(assert (= (and b!281509 res!144620) b!281512))

(assert (= (and b!281512 res!144622) b!281517))

(assert (= (and b!281517 res!144616) b!281515))

(assert (= (and b!281515 res!144621) b!281516))

(assert (= (and b!281516 res!144619) b!281513))

(declare-fun m!295877 () Bool)

(assert (=> b!281515 m!295877))

(declare-fun m!295879 () Bool)

(assert (=> b!281513 m!295879))

(declare-fun m!295881 () Bool)

(assert (=> b!281513 m!295881))

(assert (=> b!281513 m!295879))

(assert (=> b!281513 m!295877))

(declare-fun m!295883 () Bool)

(assert (=> b!281513 m!295883))

(declare-fun m!295885 () Bool)

(assert (=> b!281513 m!295885))

(declare-fun m!295887 () Bool)

(assert (=> b!281513 m!295887))

(assert (=> b!281513 m!295883))

(declare-fun m!295889 () Bool)

(assert (=> b!281513 m!295889))

(declare-fun m!295891 () Bool)

(assert (=> b!281513 m!295891))

(assert (=> b!281516 m!295883))

(assert (=> b!281516 m!295883))

(declare-fun m!295893 () Bool)

(assert (=> b!281516 m!295893))

(declare-fun m!295895 () Bool)

(assert (=> b!281512 m!295895))

(declare-fun m!295897 () Bool)

(assert (=> b!281514 m!295897))

(declare-fun m!295899 () Bool)

(assert (=> start!27212 m!295899))

(declare-fun m!295901 () Bool)

(assert (=> start!27212 m!295901))

(declare-fun m!295903 () Bool)

(assert (=> b!281517 m!295903))

(declare-fun m!295905 () Bool)

(assert (=> b!281509 m!295905))

(declare-fun m!295907 () Bool)

(assert (=> b!281510 m!295907))

(push 1)

(assert (not b!281517))

(assert (not b!281510))

(assert (not b!281516))

