; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45006 () Bool)

(assert start!45006)

(declare-fun b!493391 () Bool)

(declare-fun res!296111 () Bool)

(declare-fun e!289735 () Bool)

(assert (=> b!493391 (=> (not res!296111) (not e!289735))))

(declare-datatypes ((array!31911 0))(
  ( (array!31912 (arr!15337 (Array (_ BitVec 32) (_ BitVec 64))) (size!15701 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31911)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493391 (= res!296111 (validKeyInArray!0 (select (arr!15337 a!3235) j!176)))))

(declare-fun b!493392 () Bool)

(declare-fun res!296114 () Bool)

(declare-fun e!289738 () Bool)

(assert (=> b!493392 (=> (not res!296114) (not e!289738))))

(declare-datatypes ((List!9548 0))(
  ( (Nil!9545) (Cons!9544 (h!10412 (_ BitVec 64)) (t!15784 List!9548)) )
))
(declare-fun arrayNoDuplicates!0 (array!31911 (_ BitVec 32) List!9548) Bool)

(assert (=> b!493392 (= res!296114 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9545))))

(declare-fun b!493393 () Bool)

(declare-fun res!296117 () Bool)

(assert (=> b!493393 (=> (not res!296117) (not e!289735))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493393 (= res!296117 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493394 () Bool)

(assert (=> b!493394 (= e!289735 e!289738)))

(declare-fun res!296112 () Bool)

(assert (=> b!493394 (=> (not res!296112) (not e!289738))))

(declare-datatypes ((SeekEntryResult!3811 0))(
  ( (MissingZero!3811 (index!17423 (_ BitVec 32))) (Found!3811 (index!17424 (_ BitVec 32))) (Intermediate!3811 (undefined!4623 Bool) (index!17425 (_ BitVec 32)) (x!46532 (_ BitVec 32))) (Undefined!3811) (MissingVacant!3811 (index!17426 (_ BitVec 32))) )
))
(declare-fun lt!223224 () SeekEntryResult!3811)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493394 (= res!296112 (or (= lt!223224 (MissingZero!3811 i!1204)) (= lt!223224 (MissingVacant!3811 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31911 (_ BitVec 32)) SeekEntryResult!3811)

(assert (=> b!493394 (= lt!223224 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!296119 () Bool)

(assert (=> start!45006 (=> (not res!296119) (not e!289735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45006 (= res!296119 (validMask!0 mask!3524))))

(assert (=> start!45006 e!289735))

(assert (=> start!45006 true))

(declare-fun array_inv!11111 (array!31911) Bool)

(assert (=> start!45006 (array_inv!11111 a!3235)))

(declare-fun b!493395 () Bool)

(declare-fun res!296120 () Bool)

(assert (=> b!493395 (=> (not res!296120) (not e!289735))))

(assert (=> b!493395 (= res!296120 (validKeyInArray!0 k0!2280))))

(declare-fun b!493396 () Bool)

(declare-fun e!289737 () Bool)

(assert (=> b!493396 (= e!289737 true)))

(declare-fun lt!223225 () SeekEntryResult!3811)

(assert (=> b!493396 (= lt!223225 Undefined!3811)))

(declare-fun b!493397 () Bool)

(declare-fun res!296115 () Bool)

(assert (=> b!493397 (=> res!296115 e!289737)))

(declare-fun lt!223223 () SeekEntryResult!3811)

(get-info :version)

(assert (=> b!493397 (= res!296115 (or (not ((_ is Intermediate!3811) lt!223223)) (not (undefined!4623 lt!223223))))))

(declare-fun b!493398 () Bool)

(assert (=> b!493398 (= e!289738 (not e!289737))))

(declare-fun res!296118 () Bool)

(assert (=> b!493398 (=> res!296118 e!289737)))

(declare-fun lt!223221 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31911 (_ BitVec 32)) SeekEntryResult!3811)

(assert (=> b!493398 (= res!296118 (= lt!223223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223221 (select (store (arr!15337 a!3235) i!1204 k0!2280) j!176) (array!31912 (store (arr!15337 a!3235) i!1204 k0!2280) (size!15701 a!3235)) mask!3524)))))

(declare-fun lt!223222 () (_ BitVec 32))

(assert (=> b!493398 (= lt!223223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223222 (select (arr!15337 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493398 (= lt!223221 (toIndex!0 (select (store (arr!15337 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493398 (= lt!223222 (toIndex!0 (select (arr!15337 a!3235) j!176) mask!3524))))

(assert (=> b!493398 (= lt!223225 (Found!3811 j!176))))

(assert (=> b!493398 (= lt!223225 (seekEntryOrOpen!0 (select (arr!15337 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31911 (_ BitVec 32)) Bool)

(assert (=> b!493398 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14560 0))(
  ( (Unit!14561) )
))
(declare-fun lt!223226 () Unit!14560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31911 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14560)

(assert (=> b!493398 (= lt!223226 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493399 () Bool)

(declare-fun res!296113 () Bool)

(assert (=> b!493399 (=> (not res!296113) (not e!289738))))

(assert (=> b!493399 (= res!296113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493400 () Bool)

(declare-fun res!296116 () Bool)

(assert (=> b!493400 (=> (not res!296116) (not e!289735))))

(assert (=> b!493400 (= res!296116 (and (= (size!15701 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15701 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15701 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45006 res!296119) b!493400))

(assert (= (and b!493400 res!296116) b!493391))

(assert (= (and b!493391 res!296111) b!493395))

(assert (= (and b!493395 res!296120) b!493393))

(assert (= (and b!493393 res!296117) b!493394))

(assert (= (and b!493394 res!296112) b!493399))

(assert (= (and b!493399 res!296113) b!493392))

(assert (= (and b!493392 res!296114) b!493398))

(assert (= (and b!493398 (not res!296118)) b!493397))

(assert (= (and b!493397 (not res!296115)) b!493396))

(declare-fun m!474301 () Bool)

(assert (=> b!493394 m!474301))

(declare-fun m!474303 () Bool)

(assert (=> b!493393 m!474303))

(declare-fun m!474305 () Bool)

(assert (=> b!493395 m!474305))

(declare-fun m!474307 () Bool)

(assert (=> b!493398 m!474307))

(declare-fun m!474309 () Bool)

(assert (=> b!493398 m!474309))

(declare-fun m!474311 () Bool)

(assert (=> b!493398 m!474311))

(declare-fun m!474313 () Bool)

(assert (=> b!493398 m!474313))

(assert (=> b!493398 m!474307))

(declare-fun m!474315 () Bool)

(assert (=> b!493398 m!474315))

(declare-fun m!474317 () Bool)

(assert (=> b!493398 m!474317))

(assert (=> b!493398 m!474315))

(declare-fun m!474319 () Bool)

(assert (=> b!493398 m!474319))

(assert (=> b!493398 m!474315))

(declare-fun m!474321 () Bool)

(assert (=> b!493398 m!474321))

(assert (=> b!493398 m!474315))

(declare-fun m!474323 () Bool)

(assert (=> b!493398 m!474323))

(assert (=> b!493398 m!474307))

(declare-fun m!474325 () Bool)

(assert (=> b!493398 m!474325))

(declare-fun m!474327 () Bool)

(assert (=> b!493392 m!474327))

(assert (=> b!493391 m!474315))

(assert (=> b!493391 m!474315))

(declare-fun m!474329 () Bool)

(assert (=> b!493391 m!474329))

(declare-fun m!474331 () Bool)

(assert (=> b!493399 m!474331))

(declare-fun m!474333 () Bool)

(assert (=> start!45006 m!474333))

(declare-fun m!474335 () Bool)

(assert (=> start!45006 m!474335))

(check-sat (not b!493394) (not b!493395) (not b!493391) (not start!45006) (not b!493398) (not b!493392) (not b!493393) (not b!493399))
(check-sat)
