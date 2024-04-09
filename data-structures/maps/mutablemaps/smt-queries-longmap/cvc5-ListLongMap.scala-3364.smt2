; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46246 () Bool)

(assert start!46246)

(declare-fun b!511835 () Bool)

(declare-fun res!312647 () Bool)

(declare-fun e!298993 () Bool)

(assert (=> b!511835 (=> res!312647 e!298993)))

(declare-datatypes ((SeekEntryResult!4278 0))(
  ( (MissingZero!4278 (index!19300 (_ BitVec 32))) (Found!4278 (index!19301 (_ BitVec 32))) (Intermediate!4278 (undefined!5090 Bool) (index!19302 (_ BitVec 32)) (x!48280 (_ BitVec 32))) (Undefined!4278) (MissingVacant!4278 (index!19303 (_ BitVec 32))) )
))
(declare-fun lt!234299 () SeekEntryResult!4278)

(assert (=> b!511835 (= res!312647 (or (not (is-Intermediate!4278 lt!234299)) (not (undefined!5090 lt!234299))))))

(declare-fun b!511836 () Bool)

(declare-fun res!312652 () Bool)

(declare-fun e!298994 () Bool)

(assert (=> b!511836 (=> (not res!312652) (not e!298994))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32860 0))(
  ( (array!32861 (arr!15804 (Array (_ BitVec 32) (_ BitVec 64))) (size!16168 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32860)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511836 (= res!312652 (and (= (size!16168 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16168 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16168 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511837 () Bool)

(declare-fun e!298996 () Bool)

(assert (=> b!511837 (= e!298994 e!298996)))

(declare-fun res!312655 () Bool)

(assert (=> b!511837 (=> (not res!312655) (not e!298996))))

(declare-fun lt!234297 () SeekEntryResult!4278)

(assert (=> b!511837 (= res!312655 (or (= lt!234297 (MissingZero!4278 i!1204)) (= lt!234297 (MissingVacant!4278 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32860 (_ BitVec 32)) SeekEntryResult!4278)

(assert (=> b!511837 (= lt!234297 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511838 () Bool)

(declare-fun res!312656 () Bool)

(assert (=> b!511838 (=> (not res!312656) (not e!298996))))

(declare-datatypes ((List!10015 0))(
  ( (Nil!10012) (Cons!10011 (h!10891 (_ BitVec 64)) (t!16251 List!10015)) )
))
(declare-fun arrayNoDuplicates!0 (array!32860 (_ BitVec 32) List!10015) Bool)

(assert (=> b!511838 (= res!312656 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10012))))

(declare-fun b!511839 () Bool)

(declare-fun res!312648 () Bool)

(assert (=> b!511839 (=> (not res!312648) (not e!298994))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511839 (= res!312648 (validKeyInArray!0 k!2280))))

(declare-fun b!511840 () Bool)

(assert (=> b!511840 (= e!298993 false)))

(declare-fun lt!234301 () SeekEntryResult!4278)

(assert (=> b!511840 (= lt!234301 Undefined!4278)))

(declare-fun res!312654 () Bool)

(assert (=> start!46246 (=> (not res!312654) (not e!298994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46246 (= res!312654 (validMask!0 mask!3524))))

(assert (=> start!46246 e!298994))

(assert (=> start!46246 true))

(declare-fun array_inv!11578 (array!32860) Bool)

(assert (=> start!46246 (array_inv!11578 a!3235)))

(declare-fun b!511841 () Bool)

(declare-fun res!312653 () Bool)

(assert (=> b!511841 (=> (not res!312653) (not e!298994))))

(assert (=> b!511841 (= res!312653 (validKeyInArray!0 (select (arr!15804 a!3235) j!176)))))

(declare-fun b!511842 () Bool)

(declare-fun res!312650 () Bool)

(assert (=> b!511842 (=> (not res!312650) (not e!298994))))

(declare-fun arrayContainsKey!0 (array!32860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511842 (= res!312650 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511843 () Bool)

(assert (=> b!511843 (= e!298996 (not e!298993))))

(declare-fun res!312651 () Bool)

(assert (=> b!511843 (=> res!312651 e!298993)))

(declare-fun lt!234302 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32860 (_ BitVec 32)) SeekEntryResult!4278)

(assert (=> b!511843 (= res!312651 (= lt!234299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234302 (select (store (arr!15804 a!3235) i!1204 k!2280) j!176) (array!32861 (store (arr!15804 a!3235) i!1204 k!2280) (size!16168 a!3235)) mask!3524)))))

(declare-fun lt!234298 () (_ BitVec 32))

(assert (=> b!511843 (= lt!234299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234298 (select (arr!15804 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511843 (= lt!234302 (toIndex!0 (select (store (arr!15804 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511843 (= lt!234298 (toIndex!0 (select (arr!15804 a!3235) j!176) mask!3524))))

(assert (=> b!511843 (= lt!234301 (Found!4278 j!176))))

(assert (=> b!511843 (= lt!234301 (seekEntryOrOpen!0 (select (arr!15804 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32860 (_ BitVec 32)) Bool)

(assert (=> b!511843 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15806 0))(
  ( (Unit!15807) )
))
(declare-fun lt!234300 () Unit!15806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32860 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15806)

(assert (=> b!511843 (= lt!234300 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511844 () Bool)

(declare-fun res!312649 () Bool)

(assert (=> b!511844 (=> (not res!312649) (not e!298996))))

(assert (=> b!511844 (= res!312649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46246 res!312654) b!511836))

(assert (= (and b!511836 res!312652) b!511841))

(assert (= (and b!511841 res!312653) b!511839))

(assert (= (and b!511839 res!312648) b!511842))

(assert (= (and b!511842 res!312650) b!511837))

(assert (= (and b!511837 res!312655) b!511844))

(assert (= (and b!511844 res!312649) b!511838))

(assert (= (and b!511838 res!312656) b!511843))

(assert (= (and b!511843 (not res!312651)) b!511835))

(assert (= (and b!511835 (not res!312647)) b!511840))

(declare-fun m!493447 () Bool)

(assert (=> b!511843 m!493447))

(declare-fun m!493449 () Bool)

(assert (=> b!511843 m!493449))

(declare-fun m!493451 () Bool)

(assert (=> b!511843 m!493451))

(declare-fun m!493453 () Bool)

(assert (=> b!511843 m!493453))

(declare-fun m!493455 () Bool)

(assert (=> b!511843 m!493455))

(assert (=> b!511843 m!493453))

(declare-fun m!493457 () Bool)

(assert (=> b!511843 m!493457))

(assert (=> b!511843 m!493453))

(declare-fun m!493459 () Bool)

(assert (=> b!511843 m!493459))

(assert (=> b!511843 m!493451))

(declare-fun m!493461 () Bool)

(assert (=> b!511843 m!493461))

(assert (=> b!511843 m!493453))

(declare-fun m!493463 () Bool)

(assert (=> b!511843 m!493463))

(assert (=> b!511843 m!493451))

(declare-fun m!493465 () Bool)

(assert (=> b!511843 m!493465))

(declare-fun m!493467 () Bool)

(assert (=> b!511838 m!493467))

(declare-fun m!493469 () Bool)

(assert (=> start!46246 m!493469))

(declare-fun m!493471 () Bool)

(assert (=> start!46246 m!493471))

(assert (=> b!511841 m!493453))

(assert (=> b!511841 m!493453))

(declare-fun m!493473 () Bool)

(assert (=> b!511841 m!493473))

(declare-fun m!493475 () Bool)

(assert (=> b!511839 m!493475))

(declare-fun m!493477 () Bool)

(assert (=> b!511844 m!493477))

(declare-fun m!493479 () Bool)

(assert (=> b!511837 m!493479))

(declare-fun m!493481 () Bool)

(assert (=> b!511842 m!493481))

(push 1)

