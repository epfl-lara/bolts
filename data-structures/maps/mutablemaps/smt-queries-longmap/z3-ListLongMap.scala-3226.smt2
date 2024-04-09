; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45174 () Bool)

(assert start!45174)

(declare-fun b!495334 () Bool)

(declare-fun res!297880 () Bool)

(declare-fun e!290601 () Bool)

(assert (=> b!495334 (=> (not res!297880) (not e!290601))))

(declare-datatypes ((array!32022 0))(
  ( (array!32023 (arr!15391 (Array (_ BitVec 32) (_ BitVec 64))) (size!15755 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32022)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495334 (= res!297880 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495335 () Bool)

(declare-fun res!297881 () Bool)

(assert (=> b!495335 (=> (not res!297881) (not e!290601))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495335 (= res!297881 (and (= (size!15755 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15755 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15755 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495336 () Bool)

(declare-fun e!290605 () Bool)

(assert (=> b!495336 (= e!290605 true)))

(declare-datatypes ((SeekEntryResult!3865 0))(
  ( (MissingZero!3865 (index!17639 (_ BitVec 32))) (Found!3865 (index!17640 (_ BitVec 32))) (Intermediate!3865 (undefined!4677 Bool) (index!17641 (_ BitVec 32)) (x!46736 (_ BitVec 32))) (Undefined!3865) (MissingVacant!3865 (index!17642 (_ BitVec 32))) )
))
(declare-fun lt!224292 () SeekEntryResult!3865)

(assert (=> b!495336 (and (bvslt (x!46736 lt!224292) #b01111111111111111111111111111110) (or (= (select (arr!15391 a!3235) (index!17641 lt!224292)) (select (arr!15391 a!3235) j!176)) (= (select (arr!15391 a!3235) (index!17641 lt!224292)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15391 a!3235) (index!17641 lt!224292)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495337 () Bool)

(declare-fun res!297874 () Bool)

(declare-fun e!290604 () Bool)

(assert (=> b!495337 (=> (not res!297874) (not e!290604))))

(declare-datatypes ((List!9602 0))(
  ( (Nil!9599) (Cons!9598 (h!10469 (_ BitVec 64)) (t!15838 List!9602)) )
))
(declare-fun arrayNoDuplicates!0 (array!32022 (_ BitVec 32) List!9602) Bool)

(assert (=> b!495337 (= res!297874 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9599))))

(declare-fun b!495338 () Bool)

(declare-fun e!290602 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32022 (_ BitVec 32)) SeekEntryResult!3865)

(assert (=> b!495338 (= e!290602 (= (seekEntryOrOpen!0 (select (arr!15391 a!3235) j!176) a!3235 mask!3524) (Found!3865 j!176)))))

(declare-fun b!495340 () Bool)

(assert (=> b!495340 (= e!290601 e!290604)))

(declare-fun res!297875 () Bool)

(assert (=> b!495340 (=> (not res!297875) (not e!290604))))

(declare-fun lt!224293 () SeekEntryResult!3865)

(assert (=> b!495340 (= res!297875 (or (= lt!224293 (MissingZero!3865 i!1204)) (= lt!224293 (MissingVacant!3865 i!1204))))))

(assert (=> b!495340 (= lt!224293 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!495341 () Bool)

(declare-fun res!297872 () Bool)

(assert (=> b!495341 (=> (not res!297872) (not e!290601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495341 (= res!297872 (validKeyInArray!0 (select (arr!15391 a!3235) j!176)))))

(declare-fun b!495342 () Bool)

(declare-fun res!297879 () Bool)

(assert (=> b!495342 (=> res!297879 e!290605)))

(get-info :version)

(assert (=> b!495342 (= res!297879 (or (undefined!4677 lt!224292) (not ((_ is Intermediate!3865) lt!224292))))))

(declare-fun b!495339 () Bool)

(declare-fun res!297877 () Bool)

(assert (=> b!495339 (=> (not res!297877) (not e!290601))))

(assert (=> b!495339 (= res!297877 (validKeyInArray!0 k0!2280))))

(declare-fun res!297871 () Bool)

(assert (=> start!45174 (=> (not res!297871) (not e!290601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45174 (= res!297871 (validMask!0 mask!3524))))

(assert (=> start!45174 e!290601))

(assert (=> start!45174 true))

(declare-fun array_inv!11165 (array!32022) Bool)

(assert (=> start!45174 (array_inv!11165 a!3235)))

(declare-fun b!495343 () Bool)

(assert (=> b!495343 (= e!290604 (not e!290605))))

(declare-fun res!297873 () Bool)

(assert (=> b!495343 (=> res!297873 e!290605)))

(declare-fun lt!224291 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32022 (_ BitVec 32)) SeekEntryResult!3865)

(assert (=> b!495343 (= res!297873 (= lt!224292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224291 (select (store (arr!15391 a!3235) i!1204 k0!2280) j!176) (array!32023 (store (arr!15391 a!3235) i!1204 k0!2280) (size!15755 a!3235)) mask!3524)))))

(declare-fun lt!224290 () (_ BitVec 32))

(assert (=> b!495343 (= lt!224292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224290 (select (arr!15391 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495343 (= lt!224291 (toIndex!0 (select (store (arr!15391 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!495343 (= lt!224290 (toIndex!0 (select (arr!15391 a!3235) j!176) mask!3524))))

(assert (=> b!495343 e!290602))

(declare-fun res!297878 () Bool)

(assert (=> b!495343 (=> (not res!297878) (not e!290602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32022 (_ BitVec 32)) Bool)

(assert (=> b!495343 (= res!297878 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14668 0))(
  ( (Unit!14669) )
))
(declare-fun lt!224294 () Unit!14668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32022 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14668)

(assert (=> b!495343 (= lt!224294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495344 () Bool)

(declare-fun res!297876 () Bool)

(assert (=> b!495344 (=> (not res!297876) (not e!290604))))

(assert (=> b!495344 (= res!297876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45174 res!297871) b!495335))

(assert (= (and b!495335 res!297881) b!495341))

(assert (= (and b!495341 res!297872) b!495339))

(assert (= (and b!495339 res!297877) b!495334))

(assert (= (and b!495334 res!297880) b!495340))

(assert (= (and b!495340 res!297875) b!495344))

(assert (= (and b!495344 res!297876) b!495337))

(assert (= (and b!495337 res!297874) b!495343))

(assert (= (and b!495343 res!297878) b!495338))

(assert (= (and b!495343 (not res!297873)) b!495342))

(assert (= (and b!495342 (not res!297879)) b!495336))

(declare-fun m!476469 () Bool)

(assert (=> b!495340 m!476469))

(declare-fun m!476471 () Bool)

(assert (=> b!495337 m!476471))

(declare-fun m!476473 () Bool)

(assert (=> start!45174 m!476473))

(declare-fun m!476475 () Bool)

(assert (=> start!45174 m!476475))

(declare-fun m!476477 () Bool)

(assert (=> b!495344 m!476477))

(declare-fun m!476479 () Bool)

(assert (=> b!495336 m!476479))

(declare-fun m!476481 () Bool)

(assert (=> b!495336 m!476481))

(declare-fun m!476483 () Bool)

(assert (=> b!495343 m!476483))

(declare-fun m!476485 () Bool)

(assert (=> b!495343 m!476485))

(declare-fun m!476487 () Bool)

(assert (=> b!495343 m!476487))

(assert (=> b!495343 m!476481))

(declare-fun m!476489 () Bool)

(assert (=> b!495343 m!476489))

(assert (=> b!495343 m!476481))

(declare-fun m!476491 () Bool)

(assert (=> b!495343 m!476491))

(assert (=> b!495343 m!476487))

(declare-fun m!476493 () Bool)

(assert (=> b!495343 m!476493))

(assert (=> b!495343 m!476481))

(declare-fun m!476495 () Bool)

(assert (=> b!495343 m!476495))

(assert (=> b!495343 m!476487))

(declare-fun m!476497 () Bool)

(assert (=> b!495343 m!476497))

(declare-fun m!476499 () Bool)

(assert (=> b!495334 m!476499))

(declare-fun m!476501 () Bool)

(assert (=> b!495339 m!476501))

(assert (=> b!495338 m!476481))

(assert (=> b!495338 m!476481))

(declare-fun m!476503 () Bool)

(assert (=> b!495338 m!476503))

(assert (=> b!495341 m!476481))

(assert (=> b!495341 m!476481))

(declare-fun m!476505 () Bool)

(assert (=> b!495341 m!476505))

(check-sat (not b!495337) (not b!495343) (not b!495340) (not start!45174) (not b!495338) (not b!495344) (not b!495341) (not b!495339) (not b!495334))
(check-sat)
