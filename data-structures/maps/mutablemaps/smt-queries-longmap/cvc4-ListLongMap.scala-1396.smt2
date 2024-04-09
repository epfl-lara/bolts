; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27242 () Bool)

(assert start!27242)

(declare-fun b!281914 () Bool)

(declare-fun res!145024 () Bool)

(declare-fun e!179082 () Bool)

(assert (=> b!281914 (=> (not res!145024) (not e!179082))))

(declare-datatypes ((array!14049 0))(
  ( (array!14050 (arr!6666 (Array (_ BitVec 32) (_ BitVec 64))) (size!7018 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14049)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281914 (= res!145024 (validKeyInArray!0 (select (arr!6666 a!3325) startIndex!26)))))

(declare-fun b!281915 () Bool)

(declare-fun res!145029 () Bool)

(declare-fun e!179083 () Bool)

(assert (=> b!281915 (=> (not res!145029) (not e!179083))))

(declare-datatypes ((List!4495 0))(
  ( (Nil!4492) (Cons!4491 (h!5161 (_ BitVec 64)) (t!9585 List!4495)) )
))
(declare-fun arrayNoDuplicates!0 (array!14049 (_ BitVec 32) List!4495) Bool)

(assert (=> b!281915 (= res!145029 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4492))))

(declare-fun b!281916 () Bool)

(declare-fun res!145023 () Bool)

(assert (=> b!281916 (=> (not res!145023) (not e!179083))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!281916 (= res!145023 (and (= (size!7018 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7018 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7018 a!3325))))))

(declare-fun res!145022 () Bool)

(assert (=> start!27242 (=> (not res!145022) (not e!179083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27242 (= res!145022 (validMask!0 mask!3868))))

(assert (=> start!27242 e!179083))

(declare-fun array_inv!4620 (array!14049) Bool)

(assert (=> start!27242 (array_inv!4620 a!3325)))

(assert (=> start!27242 true))

(declare-fun b!281917 () Bool)

(declare-fun e!179081 () Bool)

(assert (=> b!281917 (= e!179081 e!179082)))

(declare-fun res!145028 () Bool)

(assert (=> b!281917 (=> (not res!145028) (not e!179082))))

(assert (=> b!281917 (= res!145028 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139302 () array!14049)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!281917 (= lt!139302 (array!14050 (store (arr!6666 a!3325) i!1267 k!2581) (size!7018 a!3325)))))

(declare-fun b!281918 () Bool)

(declare-fun res!145025 () Bool)

(assert (=> b!281918 (=> (not res!145025) (not e!179083))))

(assert (=> b!281918 (= res!145025 (validKeyInArray!0 k!2581))))

(declare-fun b!281919 () Bool)

(declare-fun res!145027 () Bool)

(assert (=> b!281919 (=> (not res!145027) (not e!179083))))

(declare-fun arrayContainsKey!0 (array!14049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281919 (= res!145027 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281920 () Bool)

(assert (=> b!281920 (= e!179083 e!179081)))

(declare-fun res!145026 () Bool)

(assert (=> b!281920 (=> (not res!145026) (not e!179081))))

(declare-datatypes ((SeekEntryResult!1835 0))(
  ( (MissingZero!1835 (index!9510 (_ BitVec 32))) (Found!1835 (index!9511 (_ BitVec 32))) (Intermediate!1835 (undefined!2647 Bool) (index!9512 (_ BitVec 32)) (x!27697 (_ BitVec 32))) (Undefined!1835) (MissingVacant!1835 (index!9513 (_ BitVec 32))) )
))
(declare-fun lt!139301 () SeekEntryResult!1835)

(assert (=> b!281920 (= res!145026 (or (= lt!139301 (MissingZero!1835 i!1267)) (= lt!139301 (MissingVacant!1835 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14049 (_ BitVec 32)) SeekEntryResult!1835)

(assert (=> b!281920 (= lt!139301 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281921 () Bool)

(declare-fun res!145021 () Bool)

(assert (=> b!281921 (=> (not res!145021) (not e!179081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14049 (_ BitVec 32)) Bool)

(assert (=> b!281921 (= res!145021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281922 () Bool)

(assert (=> b!281922 (= e!179082 (not true))))

(assert (=> b!281922 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8933 0))(
  ( (Unit!8934) )
))
(declare-fun lt!139300 () Unit!8933)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8933)

(assert (=> b!281922 (= lt!139300 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!281922 (= (seekEntryOrOpen!0 (select (arr!6666 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6666 a!3325) i!1267 k!2581) startIndex!26) lt!139302 mask!3868))))

(declare-fun lt!139304 () Unit!8933)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14049 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8933)

(assert (=> b!281922 (= lt!139304 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!281922 (arrayNoDuplicates!0 lt!139302 #b00000000000000000000000000000000 Nil!4492)))

(declare-fun lt!139303 () Unit!8933)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14049 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4495) Unit!8933)

(assert (=> b!281922 (= lt!139303 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4492))))

(assert (= (and start!27242 res!145022) b!281916))

(assert (= (and b!281916 res!145023) b!281918))

(assert (= (and b!281918 res!145025) b!281915))

(assert (= (and b!281915 res!145029) b!281919))

(assert (= (and b!281919 res!145027) b!281920))

(assert (= (and b!281920 res!145026) b!281921))

(assert (= (and b!281921 res!145021) b!281917))

(assert (= (and b!281917 res!145028) b!281914))

(assert (= (and b!281914 res!145024) b!281922))

(declare-fun m!296365 () Bool)

(assert (=> b!281919 m!296365))

(declare-fun m!296367 () Bool)

(assert (=> b!281921 m!296367))

(declare-fun m!296369 () Bool)

(assert (=> b!281918 m!296369))

(declare-fun m!296371 () Bool)

(assert (=> b!281917 m!296371))

(declare-fun m!296373 () Bool)

(assert (=> b!281922 m!296373))

(declare-fun m!296375 () Bool)

(assert (=> b!281922 m!296375))

(declare-fun m!296377 () Bool)

(assert (=> b!281922 m!296377))

(declare-fun m!296379 () Bool)

(assert (=> b!281922 m!296379))

(assert (=> b!281922 m!296375))

(assert (=> b!281922 m!296371))

(declare-fun m!296381 () Bool)

(assert (=> b!281922 m!296381))

(declare-fun m!296383 () Bool)

(assert (=> b!281922 m!296383))

(declare-fun m!296385 () Bool)

(assert (=> b!281922 m!296385))

(declare-fun m!296387 () Bool)

(assert (=> b!281922 m!296387))

(assert (=> b!281922 m!296383))

(declare-fun m!296389 () Bool)

(assert (=> b!281922 m!296389))

(declare-fun m!296391 () Bool)

(assert (=> start!27242 m!296391))

(declare-fun m!296393 () Bool)

(assert (=> start!27242 m!296393))

(assert (=> b!281914 m!296383))

(assert (=> b!281914 m!296383))

(declare-fun m!296395 () Bool)

(assert (=> b!281914 m!296395))

(declare-fun m!296397 () Bool)

(assert (=> b!281920 m!296397))

(declare-fun m!296399 () Bool)

(assert (=> b!281915 m!296399))

(push 1)

(assert (not b!281918))

(assert (not b!281921))

(assert (not b!281914))

(assert (not b!281922))

(assert (not b!281919))

(assert (not b!281915))

(assert (not start!27242))

(assert (not b!281920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

