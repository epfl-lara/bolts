; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45220 () Bool)

(assert start!45220)

(declare-fun b!496093 () Bool)

(declare-fun res!298633 () Bool)

(declare-fun e!290949 () Bool)

(assert (=> b!496093 (=> (not res!298633) (not e!290949))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496093 (= res!298633 (validKeyInArray!0 k!2280))))

(declare-fun b!496094 () Bool)

(declare-fun res!298632 () Bool)

(declare-fun e!290946 () Bool)

(assert (=> b!496094 (=> (not res!298632) (not e!290946))))

(declare-datatypes ((array!32068 0))(
  ( (array!32069 (arr!15414 (Array (_ BitVec 32) (_ BitVec 64))) (size!15778 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32068)

(declare-datatypes ((List!9625 0))(
  ( (Nil!9622) (Cons!9621 (h!10492 (_ BitVec 64)) (t!15861 List!9625)) )
))
(declare-fun arrayNoDuplicates!0 (array!32068 (_ BitVec 32) List!9625) Bool)

(assert (=> b!496094 (= res!298632 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9622))))

(declare-fun b!496095 () Bool)

(assert (=> b!496095 (= e!290949 e!290946)))

(declare-fun res!298631 () Bool)

(assert (=> b!496095 (=> (not res!298631) (not e!290946))))

(declare-datatypes ((SeekEntryResult!3888 0))(
  ( (MissingZero!3888 (index!17731 (_ BitVec 32))) (Found!3888 (index!17732 (_ BitVec 32))) (Intermediate!3888 (undefined!4700 Bool) (index!17733 (_ BitVec 32)) (x!46823 (_ BitVec 32))) (Undefined!3888) (MissingVacant!3888 (index!17734 (_ BitVec 32))) )
))
(declare-fun lt!224639 () SeekEntryResult!3888)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496095 (= res!298631 (or (= lt!224639 (MissingZero!3888 i!1204)) (= lt!224639 (MissingVacant!3888 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32068 (_ BitVec 32)) SeekEntryResult!3888)

(assert (=> b!496095 (= lt!224639 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496096 () Bool)

(declare-fun res!298636 () Bool)

(declare-fun e!290947 () Bool)

(assert (=> b!496096 (=> res!298636 e!290947)))

(declare-fun lt!224636 () SeekEntryResult!3888)

(assert (=> b!496096 (= res!298636 (or (undefined!4700 lt!224636) (not (is-Intermediate!3888 lt!224636))))))

(declare-fun b!496097 () Bool)

(assert (=> b!496097 (= e!290946 (not e!290947))))

(declare-fun res!298639 () Bool)

(assert (=> b!496097 (=> res!298639 e!290947)))

(declare-fun lt!224638 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32068 (_ BitVec 32)) SeekEntryResult!3888)

(assert (=> b!496097 (= res!298639 (= lt!224636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224638 (select (store (arr!15414 a!3235) i!1204 k!2280) j!176) (array!32069 (store (arr!15414 a!3235) i!1204 k!2280) (size!15778 a!3235)) mask!3524)))))

(declare-fun lt!224635 () (_ BitVec 32))

(assert (=> b!496097 (= lt!224636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224635 (select (arr!15414 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496097 (= lt!224638 (toIndex!0 (select (store (arr!15414 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496097 (= lt!224635 (toIndex!0 (select (arr!15414 a!3235) j!176) mask!3524))))

(declare-fun e!290950 () Bool)

(assert (=> b!496097 e!290950))

(declare-fun res!298640 () Bool)

(assert (=> b!496097 (=> (not res!298640) (not e!290950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32068 (_ BitVec 32)) Bool)

(assert (=> b!496097 (= res!298640 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14714 0))(
  ( (Unit!14715) )
))
(declare-fun lt!224637 () Unit!14714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32068 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14714)

(assert (=> b!496097 (= lt!224637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496098 () Bool)

(assert (=> b!496098 (= e!290950 (= (seekEntryOrOpen!0 (select (arr!15414 a!3235) j!176) a!3235 mask!3524) (Found!3888 j!176)))))

(declare-fun b!496099 () Bool)

(declare-fun res!298634 () Bool)

(assert (=> b!496099 (=> (not res!298634) (not e!290949))))

(assert (=> b!496099 (= res!298634 (and (= (size!15778 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15778 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15778 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!298637 () Bool)

(assert (=> start!45220 (=> (not res!298637) (not e!290949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45220 (= res!298637 (validMask!0 mask!3524))))

(assert (=> start!45220 e!290949))

(assert (=> start!45220 true))

(declare-fun array_inv!11188 (array!32068) Bool)

(assert (=> start!45220 (array_inv!11188 a!3235)))

(declare-fun b!496100 () Bool)

(declare-fun res!298638 () Bool)

(assert (=> b!496100 (=> (not res!298638) (not e!290949))))

(declare-fun arrayContainsKey!0 (array!32068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496100 (= res!298638 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496101 () Bool)

(declare-fun res!298635 () Bool)

(assert (=> b!496101 (=> (not res!298635) (not e!290946))))

(assert (=> b!496101 (= res!298635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496102 () Bool)

(declare-fun res!298630 () Bool)

(assert (=> b!496102 (=> (not res!298630) (not e!290949))))

(assert (=> b!496102 (= res!298630 (validKeyInArray!0 (select (arr!15414 a!3235) j!176)))))

(declare-fun b!496103 () Bool)

(assert (=> b!496103 (= e!290947 true)))

(assert (=> b!496103 (and (bvslt (x!46823 lt!224636) #b01111111111111111111111111111110) (or (= (select (arr!15414 a!3235) (index!17733 lt!224636)) (select (arr!15414 a!3235) j!176)) (= (select (arr!15414 a!3235) (index!17733 lt!224636)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15414 a!3235) (index!17733 lt!224636)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45220 res!298637) b!496099))

(assert (= (and b!496099 res!298634) b!496102))

(assert (= (and b!496102 res!298630) b!496093))

(assert (= (and b!496093 res!298633) b!496100))

(assert (= (and b!496100 res!298638) b!496095))

(assert (= (and b!496095 res!298631) b!496101))

(assert (= (and b!496101 res!298635) b!496094))

(assert (= (and b!496094 res!298632) b!496097))

(assert (= (and b!496097 res!298640) b!496098))

(assert (= (and b!496097 (not res!298639)) b!496096))

(assert (= (and b!496096 (not res!298636)) b!496103))

(declare-fun m!477343 () Bool)

(assert (=> b!496103 m!477343))

(declare-fun m!477345 () Bool)

(assert (=> b!496103 m!477345))

(assert (=> b!496102 m!477345))

(assert (=> b!496102 m!477345))

(declare-fun m!477347 () Bool)

(assert (=> b!496102 m!477347))

(declare-fun m!477349 () Bool)

(assert (=> b!496097 m!477349))

(declare-fun m!477351 () Bool)

(assert (=> b!496097 m!477351))

(declare-fun m!477353 () Bool)

(assert (=> b!496097 m!477353))

(assert (=> b!496097 m!477353))

(declare-fun m!477355 () Bool)

(assert (=> b!496097 m!477355))

(assert (=> b!496097 m!477345))

(declare-fun m!477357 () Bool)

(assert (=> b!496097 m!477357))

(assert (=> b!496097 m!477345))

(declare-fun m!477359 () Bool)

(assert (=> b!496097 m!477359))

(assert (=> b!496097 m!477345))

(declare-fun m!477361 () Bool)

(assert (=> b!496097 m!477361))

(assert (=> b!496097 m!477353))

(declare-fun m!477363 () Bool)

(assert (=> b!496097 m!477363))

(declare-fun m!477365 () Bool)

(assert (=> b!496101 m!477365))

(declare-fun m!477367 () Bool)

(assert (=> b!496094 m!477367))

(declare-fun m!477369 () Bool)

(assert (=> b!496095 m!477369))

(declare-fun m!477371 () Bool)

(assert (=> b!496100 m!477371))

(assert (=> b!496098 m!477345))

(assert (=> b!496098 m!477345))

(declare-fun m!477373 () Bool)

(assert (=> b!496098 m!477373))

(declare-fun m!477375 () Bool)

(assert (=> start!45220 m!477375))

(declare-fun m!477377 () Bool)

(assert (=> start!45220 m!477377))

(declare-fun m!477379 () Bool)

(assert (=> b!496093 m!477379))

(push 1)

