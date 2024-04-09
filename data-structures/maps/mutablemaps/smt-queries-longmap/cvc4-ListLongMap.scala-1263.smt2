; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26150 () Bool)

(assert start!26150)

(declare-fun b!269805 () Bool)

(declare-fun res!133962 () Bool)

(declare-fun e!173997 () Bool)

(assert (=> b!269805 (=> (not res!133962) (not e!173997))))

(declare-datatypes ((array!13236 0))(
  ( (array!13237 (arr!6267 (Array (_ BitVec 32) (_ BitVec 64))) (size!6619 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13236)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13236 (_ BitVec 32)) Bool)

(assert (=> b!269805 (= res!133962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269806 () Bool)

(declare-fun res!133968 () Bool)

(declare-fun e!174000 () Bool)

(assert (=> b!269806 (=> (not res!133968) (not e!174000))))

(declare-datatypes ((List!4096 0))(
  ( (Nil!4093) (Cons!4092 (h!4759 (_ BitVec 64)) (t!9186 List!4096)) )
))
(declare-fun arrayNoDuplicates!0 (array!13236 (_ BitVec 32) List!4096) Bool)

(assert (=> b!269806 (= res!133968 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4093))))

(declare-fun b!269807 () Bool)

(declare-datatypes ((Unit!8382 0))(
  ( (Unit!8383) )
))
(declare-fun e!174001 () Unit!8382)

(declare-fun Unit!8384 () Unit!8382)

(assert (=> b!269807 (= e!174001 Unit!8384)))

(declare-fun b!269808 () Bool)

(declare-fun lt!135360 () Unit!8382)

(assert (=> b!269808 (= e!174001 lt!135360)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13236 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8382)

(assert (=> b!269808 (= lt!135360 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun lt!135362 () array!13236)

(assert (=> b!269808 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135362 mask!3868)))

(declare-fun res!133961 () Bool)

(assert (=> start!26150 (=> (not res!133961) (not e!174000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26150 (= res!133961 (validMask!0 mask!3868))))

(assert (=> start!26150 e!174000))

(declare-fun array_inv!4221 (array!13236) Bool)

(assert (=> start!26150 (array_inv!4221 a!3325)))

(assert (=> start!26150 true))

(declare-fun b!269809 () Bool)

(declare-fun res!133963 () Bool)

(assert (=> b!269809 (=> (not res!133963) (not e!174000))))

(assert (=> b!269809 (= res!133963 (and (= (size!6619 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6619 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6619 a!3325))))))

(declare-fun b!269810 () Bool)

(declare-fun res!133967 () Bool)

(assert (=> b!269810 (=> (not res!133967) (not e!174000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269810 (= res!133967 (validKeyInArray!0 k!2581))))

(declare-fun b!269811 () Bool)

(declare-fun res!133966 () Bool)

(assert (=> b!269811 (=> (not res!133966) (not e!174000))))

(declare-fun arrayContainsKey!0 (array!13236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269811 (= res!133966 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269812 () Bool)

(declare-fun e!173999 () Bool)

(assert (=> b!269812 (= e!173999 (not true))))

(declare-datatypes ((SeekEntryResult!1436 0))(
  ( (MissingZero!1436 (index!7914 (_ BitVec 32))) (Found!1436 (index!7915 (_ BitVec 32))) (Intermediate!1436 (undefined!2248 Bool) (index!7916 (_ BitVec 32)) (x!26225 (_ BitVec 32))) (Undefined!1436) (MissingVacant!1436 (index!7917 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13236 (_ BitVec 32)) SeekEntryResult!1436)

(assert (=> b!269812 (= (seekEntryOrOpen!0 k!2581 lt!135362 mask!3868) (Found!1436 i!1267))))

(declare-fun lt!135361 () Unit!8382)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13236 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8382)

(assert (=> b!269812 (= lt!135361 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135359 () Unit!8382)

(assert (=> b!269812 (= lt!135359 e!174001)))

(declare-fun c!45473 () Bool)

(assert (=> b!269812 (= c!45473 (bvslt startIndex!26 (bvsub (size!6619 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269813 () Bool)

(assert (=> b!269813 (= e!174000 e!173997)))

(declare-fun res!133964 () Bool)

(assert (=> b!269813 (=> (not res!133964) (not e!173997))))

(declare-fun lt!135358 () SeekEntryResult!1436)

(assert (=> b!269813 (= res!133964 (or (= lt!135358 (MissingZero!1436 i!1267)) (= lt!135358 (MissingVacant!1436 i!1267))))))

(assert (=> b!269813 (= lt!135358 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269814 () Bool)

(assert (=> b!269814 (= e!173997 e!173999)))

(declare-fun res!133965 () Bool)

(assert (=> b!269814 (=> (not res!133965) (not e!173999))))

(assert (=> b!269814 (= res!133965 (= startIndex!26 i!1267))))

(assert (=> b!269814 (= lt!135362 (array!13237 (store (arr!6267 a!3325) i!1267 k!2581) (size!6619 a!3325)))))

(assert (= (and start!26150 res!133961) b!269809))

(assert (= (and b!269809 res!133963) b!269810))

(assert (= (and b!269810 res!133967) b!269806))

(assert (= (and b!269806 res!133968) b!269811))

(assert (= (and b!269811 res!133966) b!269813))

(assert (= (and b!269813 res!133964) b!269805))

(assert (= (and b!269805 res!133962) b!269814))

(assert (= (and b!269814 res!133965) b!269812))

(assert (= (and b!269812 c!45473) b!269808))

(assert (= (and b!269812 (not c!45473)) b!269807))

(declare-fun m!285577 () Bool)

(assert (=> b!269810 m!285577))

(declare-fun m!285579 () Bool)

(assert (=> b!269812 m!285579))

(declare-fun m!285581 () Bool)

(assert (=> b!269812 m!285581))

(declare-fun m!285583 () Bool)

(assert (=> b!269814 m!285583))

(declare-fun m!285585 () Bool)

(assert (=> b!269808 m!285585))

(declare-fun m!285587 () Bool)

(assert (=> b!269808 m!285587))

(declare-fun m!285589 () Bool)

(assert (=> start!26150 m!285589))

(declare-fun m!285591 () Bool)

(assert (=> start!26150 m!285591))

(declare-fun m!285593 () Bool)

(assert (=> b!269806 m!285593))

(declare-fun m!285595 () Bool)

(assert (=> b!269811 m!285595))

(declare-fun m!285597 () Bool)

(assert (=> b!269813 m!285597))

(declare-fun m!285599 () Bool)

(assert (=> b!269805 m!285599))

(push 1)

(assert (not b!269806))

(assert (not b!269812))

(assert (not b!269810))

(assert (not b!269813))

(assert (not b!269811))

