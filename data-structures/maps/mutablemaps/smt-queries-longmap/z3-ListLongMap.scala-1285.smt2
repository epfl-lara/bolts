; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26280 () Bool)

(assert start!26280)

(declare-fun b!272020 () Bool)

(declare-fun e!174710 () Bool)

(declare-fun e!174712 () Bool)

(assert (=> b!272020 (= e!174710 e!174712)))

(declare-fun res!136048 () Bool)

(assert (=> b!272020 (=> (not res!136048) (not e!174712))))

(declare-datatypes ((SeekEntryResult!1501 0))(
  ( (MissingZero!1501 (index!8174 (_ BitVec 32))) (Found!1501 (index!8175 (_ BitVec 32))) (Intermediate!1501 (undefined!2313 Bool) (index!8176 (_ BitVec 32)) (x!26466 (_ BitVec 32))) (Undefined!1501) (MissingVacant!1501 (index!8177 (_ BitVec 32))) )
))
(declare-fun lt!135941 () SeekEntryResult!1501)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272020 (= res!136048 (or (= lt!135941 (MissingZero!1501 i!1267)) (= lt!135941 (MissingVacant!1501 i!1267))))))

(declare-datatypes ((array!13366 0))(
  ( (array!13367 (arr!6332 (Array (_ BitVec 32) (_ BitVec 64))) (size!6684 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13366)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13366 (_ BitVec 32)) SeekEntryResult!1501)

(assert (=> b!272020 (= lt!135941 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272021 () Bool)

(declare-fun res!136049 () Bool)

(assert (=> b!272021 (=> (not res!136049) (not e!174710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272021 (= res!136049 (validKeyInArray!0 k0!2581))))

(declare-fun b!272022 () Bool)

(assert (=> b!272022 (= e!174712 (not true))))

(declare-datatypes ((List!4161 0))(
  ( (Nil!4158) (Cons!4157 (h!4824 (_ BitVec 64)) (t!9251 List!4161)) )
))
(declare-fun arrayNoDuplicates!0 (array!13366 (_ BitVec 32) List!4161) Bool)

(assert (=> b!272022 (arrayNoDuplicates!0 (array!13367 (store (arr!6332 a!3325) i!1267 k0!2581) (size!6684 a!3325)) #b00000000000000000000000000000000 Nil!4158)))

(declare-datatypes ((Unit!8468 0))(
  ( (Unit!8469) )
))
(declare-fun lt!135940 () Unit!8468)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13366 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4161) Unit!8468)

(assert (=> b!272022 (= lt!135940 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4158))))

(declare-fun b!272023 () Bool)

(declare-fun res!136054 () Bool)

(assert (=> b!272023 (=> (not res!136054) (not e!174712))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272023 (= res!136054 (not (= startIndex!26 i!1267)))))

(declare-fun b!272024 () Bool)

(declare-fun res!136053 () Bool)

(assert (=> b!272024 (=> (not res!136053) (not e!174710))))

(assert (=> b!272024 (= res!136053 (and (= (size!6684 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6684 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6684 a!3325))))))

(declare-fun res!136051 () Bool)

(assert (=> start!26280 (=> (not res!136051) (not e!174710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26280 (= res!136051 (validMask!0 mask!3868))))

(assert (=> start!26280 e!174710))

(declare-fun array_inv!4286 (array!13366) Bool)

(assert (=> start!26280 (array_inv!4286 a!3325)))

(assert (=> start!26280 true))

(declare-fun b!272025 () Bool)

(declare-fun res!136052 () Bool)

(assert (=> b!272025 (=> (not res!136052) (not e!174710))))

(assert (=> b!272025 (= res!136052 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4158))))

(declare-fun b!272026 () Bool)

(declare-fun res!136055 () Bool)

(assert (=> b!272026 (=> (not res!136055) (not e!174712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13366 (_ BitVec 32)) Bool)

(assert (=> b!272026 (= res!136055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272027 () Bool)

(declare-fun res!136056 () Bool)

(assert (=> b!272027 (=> (not res!136056) (not e!174710))))

(declare-fun arrayContainsKey!0 (array!13366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272027 (= res!136056 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272028 () Bool)

(declare-fun res!136050 () Bool)

(assert (=> b!272028 (=> (not res!136050) (not e!174712))))

(assert (=> b!272028 (= res!136050 (validKeyInArray!0 (select (arr!6332 a!3325) startIndex!26)))))

(assert (= (and start!26280 res!136051) b!272024))

(assert (= (and b!272024 res!136053) b!272021))

(assert (= (and b!272021 res!136049) b!272025))

(assert (= (and b!272025 res!136052) b!272027))

(assert (= (and b!272027 res!136056) b!272020))

(assert (= (and b!272020 res!136048) b!272026))

(assert (= (and b!272026 res!136055) b!272023))

(assert (= (and b!272023 res!136054) b!272028))

(assert (= (and b!272028 res!136050) b!272022))

(declare-fun m!287203 () Bool)

(assert (=> b!272026 m!287203))

(declare-fun m!287205 () Bool)

(assert (=> b!272028 m!287205))

(assert (=> b!272028 m!287205))

(declare-fun m!287207 () Bool)

(assert (=> b!272028 m!287207))

(declare-fun m!287209 () Bool)

(assert (=> b!272021 m!287209))

(declare-fun m!287211 () Bool)

(assert (=> b!272020 m!287211))

(declare-fun m!287213 () Bool)

(assert (=> b!272027 m!287213))

(declare-fun m!287215 () Bool)

(assert (=> b!272022 m!287215))

(declare-fun m!287217 () Bool)

(assert (=> b!272022 m!287217))

(declare-fun m!287219 () Bool)

(assert (=> b!272022 m!287219))

(declare-fun m!287221 () Bool)

(assert (=> b!272025 m!287221))

(declare-fun m!287223 () Bool)

(assert (=> start!26280 m!287223))

(declare-fun m!287225 () Bool)

(assert (=> start!26280 m!287225))

(check-sat (not b!272020) (not b!272022) (not b!272021) (not b!272027) (not start!26280) (not b!272026) (not b!272025) (not b!272028))
(check-sat)
