; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45070 () Bool)

(assert start!45070)

(declare-fun b!494351 () Bool)

(declare-fun e!290119 () Bool)

(assert (=> b!494351 (= e!290119 true)))

(declare-datatypes ((SeekEntryResult!3843 0))(
  ( (MissingZero!3843 (index!17551 (_ BitVec 32))) (Found!3843 (index!17552 (_ BitVec 32))) (Intermediate!3843 (undefined!4655 Bool) (index!17553 (_ BitVec 32)) (x!46652 (_ BitVec 32))) (Undefined!3843) (MissingVacant!3843 (index!17554 (_ BitVec 32))) )
))
(declare-fun lt!223802 () SeekEntryResult!3843)

(assert (=> b!494351 (= lt!223802 Undefined!3843)))

(declare-fun b!494352 () Bool)

(declare-fun res!297074 () Bool)

(assert (=> b!494352 (=> res!297074 e!290119)))

(declare-fun lt!223801 () SeekEntryResult!3843)

(assert (=> b!494352 (= res!297074 (or (not (is-Intermediate!3843 lt!223801)) (not (undefined!4655 lt!223801))))))

(declare-fun b!494353 () Bool)

(declare-fun res!297072 () Bool)

(declare-fun e!290120 () Bool)

(assert (=> b!494353 (=> (not res!297072) (not e!290120))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31975 0))(
  ( (array!31976 (arr!15369 (Array (_ BitVec 32) (_ BitVec 64))) (size!15733 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31975)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494353 (= res!297072 (and (= (size!15733 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15733 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15733 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494354 () Bool)

(declare-fun e!290122 () Bool)

(assert (=> b!494354 (= e!290120 e!290122)))

(declare-fun res!297076 () Bool)

(assert (=> b!494354 (=> (not res!297076) (not e!290122))))

(declare-fun lt!223800 () SeekEntryResult!3843)

(assert (=> b!494354 (= res!297076 (or (= lt!223800 (MissingZero!3843 i!1204)) (= lt!223800 (MissingVacant!3843 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31975 (_ BitVec 32)) SeekEntryResult!3843)

(assert (=> b!494354 (= lt!223800 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!297078 () Bool)

(assert (=> start!45070 (=> (not res!297078) (not e!290120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45070 (= res!297078 (validMask!0 mask!3524))))

(assert (=> start!45070 e!290120))

(assert (=> start!45070 true))

(declare-fun array_inv!11143 (array!31975) Bool)

(assert (=> start!45070 (array_inv!11143 a!3235)))

(declare-fun b!494355 () Bool)

(declare-fun res!297073 () Bool)

(assert (=> b!494355 (=> (not res!297073) (not e!290120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494355 (= res!297073 (validKeyInArray!0 k!2280))))

(declare-fun b!494356 () Bool)

(assert (=> b!494356 (= e!290122 (not e!290119))))

(declare-fun res!297079 () Bool)

(assert (=> b!494356 (=> res!297079 e!290119)))

(declare-fun lt!223799 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31975 (_ BitVec 32)) SeekEntryResult!3843)

(assert (=> b!494356 (= res!297079 (= lt!223801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223799 (select (store (arr!15369 a!3235) i!1204 k!2280) j!176) (array!31976 (store (arr!15369 a!3235) i!1204 k!2280) (size!15733 a!3235)) mask!3524)))))

(declare-fun lt!223798 () (_ BitVec 32))

(assert (=> b!494356 (= lt!223801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223798 (select (arr!15369 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494356 (= lt!223799 (toIndex!0 (select (store (arr!15369 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494356 (= lt!223798 (toIndex!0 (select (arr!15369 a!3235) j!176) mask!3524))))

(assert (=> b!494356 (= lt!223802 (Found!3843 j!176))))

(assert (=> b!494356 (= lt!223802 (seekEntryOrOpen!0 (select (arr!15369 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31975 (_ BitVec 32)) Bool)

(assert (=> b!494356 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14624 0))(
  ( (Unit!14625) )
))
(declare-fun lt!223797 () Unit!14624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31975 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14624)

(assert (=> b!494356 (= lt!223797 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494357 () Bool)

(declare-fun res!297071 () Bool)

(assert (=> b!494357 (=> (not res!297071) (not e!290120))))

(assert (=> b!494357 (= res!297071 (validKeyInArray!0 (select (arr!15369 a!3235) j!176)))))

(declare-fun b!494358 () Bool)

(declare-fun res!297077 () Bool)

(assert (=> b!494358 (=> (not res!297077) (not e!290122))))

(assert (=> b!494358 (= res!297077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494359 () Bool)

(declare-fun res!297075 () Bool)

(assert (=> b!494359 (=> (not res!297075) (not e!290122))))

(declare-datatypes ((List!9580 0))(
  ( (Nil!9577) (Cons!9576 (h!10444 (_ BitVec 64)) (t!15816 List!9580)) )
))
(declare-fun arrayNoDuplicates!0 (array!31975 (_ BitVec 32) List!9580) Bool)

(assert (=> b!494359 (= res!297075 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9577))))

(declare-fun b!494360 () Bool)

(declare-fun res!297080 () Bool)

(assert (=> b!494360 (=> (not res!297080) (not e!290120))))

(declare-fun arrayContainsKey!0 (array!31975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494360 (= res!297080 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45070 res!297078) b!494353))

(assert (= (and b!494353 res!297072) b!494357))

(assert (= (and b!494357 res!297071) b!494355))

(assert (= (and b!494355 res!297073) b!494360))

(assert (= (and b!494360 res!297080) b!494354))

(assert (= (and b!494354 res!297076) b!494358))

(assert (= (and b!494358 res!297077) b!494359))

(assert (= (and b!494359 res!297075) b!494356))

(assert (= (and b!494356 (not res!297079)) b!494352))

(assert (= (and b!494352 (not res!297074)) b!494351))

(declare-fun m!475453 () Bool)

(assert (=> b!494360 m!475453))

(declare-fun m!475455 () Bool)

(assert (=> b!494359 m!475455))

(declare-fun m!475457 () Bool)

(assert (=> b!494354 m!475457))

(declare-fun m!475459 () Bool)

(assert (=> b!494358 m!475459))

(declare-fun m!475461 () Bool)

(assert (=> start!45070 m!475461))

(declare-fun m!475463 () Bool)

(assert (=> start!45070 m!475463))

(declare-fun m!475465 () Bool)

(assert (=> b!494357 m!475465))

(assert (=> b!494357 m!475465))

(declare-fun m!475467 () Bool)

(assert (=> b!494357 m!475467))

(declare-fun m!475469 () Bool)

(assert (=> b!494356 m!475469))

(declare-fun m!475471 () Bool)

(assert (=> b!494356 m!475471))

(declare-fun m!475473 () Bool)

(assert (=> b!494356 m!475473))

(assert (=> b!494356 m!475465))

(declare-fun m!475475 () Bool)

(assert (=> b!494356 m!475475))

(assert (=> b!494356 m!475465))

(declare-fun m!475477 () Bool)

(assert (=> b!494356 m!475477))

(assert (=> b!494356 m!475465))

(declare-fun m!475479 () Bool)

(assert (=> b!494356 m!475479))

(assert (=> b!494356 m!475465))

(declare-fun m!475481 () Bool)

(assert (=> b!494356 m!475481))

(assert (=> b!494356 m!475473))

(declare-fun m!475483 () Bool)

(assert (=> b!494356 m!475483))

(assert (=> b!494356 m!475473))

(declare-fun m!475485 () Bool)

(assert (=> b!494356 m!475485))

(declare-fun m!475487 () Bool)

(assert (=> b!494355 m!475487))

(push 1)

