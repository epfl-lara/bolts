; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44612 () Bool)

(assert start!44612)

(declare-fun res!292105 () Bool)

(declare-fun e!287647 () Bool)

(assert (=> start!44612 (=> (not res!292105) (not e!287647))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44612 (= res!292105 (validMask!0 mask!3524))))

(assert (=> start!44612 e!287647))

(assert (=> start!44612 true))

(declare-datatypes ((array!31631 0))(
  ( (array!31632 (arr!15200 (Array (_ BitVec 32) (_ BitVec 64))) (size!15564 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31631)

(declare-fun array_inv!10974 (array!31631) Bool)

(assert (=> start!44612 (array_inv!10974 a!3235)))

(declare-fun b!489015 () Bool)

(declare-fun res!292106 () Bool)

(assert (=> b!489015 (=> (not res!292106) (not e!287647))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!489015 (= res!292106 (and (= (size!15564 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15564 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15564 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489016 () Bool)

(declare-fun e!287648 () Bool)

(assert (=> b!489016 (= e!287648 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!220672 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489016 (= lt!220672 (toIndex!0 (select (store (arr!15200 a!3235) i!1204 k!2280) j!176) mask!3524))))

(declare-fun e!287650 () Bool)

(assert (=> b!489016 e!287650))

(declare-fun res!292109 () Bool)

(assert (=> b!489016 (=> (not res!292109) (not e!287650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31631 (_ BitVec 32)) Bool)

(assert (=> b!489016 (= res!292109 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14286 0))(
  ( (Unit!14287) )
))
(declare-fun lt!220673 () Unit!14286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14286)

(assert (=> b!489016 (= lt!220673 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489017 () Bool)

(declare-fun res!292107 () Bool)

(assert (=> b!489017 (=> (not res!292107) (not e!287647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489017 (= res!292107 (validKeyInArray!0 k!2280))))

(declare-fun b!489018 () Bool)

(declare-fun res!292101 () Bool)

(assert (=> b!489018 (=> (not res!292101) (not e!287648))))

(assert (=> b!489018 (= res!292101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489019 () Bool)

(declare-fun res!292104 () Bool)

(assert (=> b!489019 (=> (not res!292104) (not e!287647))))

(assert (=> b!489019 (= res!292104 (validKeyInArray!0 (select (arr!15200 a!3235) j!176)))))

(declare-fun b!489020 () Bool)

(declare-fun res!292103 () Bool)

(assert (=> b!489020 (=> (not res!292103) (not e!287648))))

(declare-datatypes ((List!9411 0))(
  ( (Nil!9408) (Cons!9407 (h!10269 (_ BitVec 64)) (t!15647 List!9411)) )
))
(declare-fun arrayNoDuplicates!0 (array!31631 (_ BitVec 32) List!9411) Bool)

(assert (=> b!489020 (= res!292103 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9408))))

(declare-fun b!489021 () Bool)

(declare-datatypes ((SeekEntryResult!3674 0))(
  ( (MissingZero!3674 (index!16875 (_ BitVec 32))) (Found!3674 (index!16876 (_ BitVec 32))) (Intermediate!3674 (undefined!4486 Bool) (index!16877 (_ BitVec 32)) (x!46015 (_ BitVec 32))) (Undefined!3674) (MissingVacant!3674 (index!16878 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31631 (_ BitVec 32)) SeekEntryResult!3674)

(assert (=> b!489021 (= e!287650 (= (seekEntryOrOpen!0 (select (arr!15200 a!3235) j!176) a!3235 mask!3524) (Found!3674 j!176)))))

(declare-fun b!489022 () Bool)

(assert (=> b!489022 (= e!287647 e!287648)))

(declare-fun res!292108 () Bool)

(assert (=> b!489022 (=> (not res!292108) (not e!287648))))

(declare-fun lt!220671 () SeekEntryResult!3674)

(assert (=> b!489022 (= res!292108 (or (= lt!220671 (MissingZero!3674 i!1204)) (= lt!220671 (MissingVacant!3674 i!1204))))))

(assert (=> b!489022 (= lt!220671 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489023 () Bool)

(declare-fun res!292102 () Bool)

(assert (=> b!489023 (=> (not res!292102) (not e!287647))))

(declare-fun arrayContainsKey!0 (array!31631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489023 (= res!292102 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44612 res!292105) b!489015))

(assert (= (and b!489015 res!292106) b!489019))

(assert (= (and b!489019 res!292104) b!489017))

(assert (= (and b!489017 res!292107) b!489023))

(assert (= (and b!489023 res!292102) b!489022))

(assert (= (and b!489022 res!292108) b!489018))

(assert (= (and b!489018 res!292101) b!489020))

(assert (= (and b!489020 res!292103) b!489016))

(assert (= (and b!489016 res!292109) b!489021))

(declare-fun m!468781 () Bool)

(assert (=> b!489020 m!468781))

(declare-fun m!468783 () Bool)

(assert (=> b!489021 m!468783))

(assert (=> b!489021 m!468783))

(declare-fun m!468785 () Bool)

(assert (=> b!489021 m!468785))

(declare-fun m!468787 () Bool)

(assert (=> b!489022 m!468787))

(declare-fun m!468789 () Bool)

(assert (=> b!489023 m!468789))

(declare-fun m!468791 () Bool)

(assert (=> b!489017 m!468791))

(declare-fun m!468793 () Bool)

(assert (=> start!44612 m!468793))

(declare-fun m!468795 () Bool)

(assert (=> start!44612 m!468795))

(declare-fun m!468797 () Bool)

(assert (=> b!489018 m!468797))

(declare-fun m!468799 () Bool)

(assert (=> b!489016 m!468799))

(declare-fun m!468801 () Bool)

(assert (=> b!489016 m!468801))

(declare-fun m!468803 () Bool)

(assert (=> b!489016 m!468803))

(declare-fun m!468805 () Bool)

(assert (=> b!489016 m!468805))

(assert (=> b!489016 m!468803))

(declare-fun m!468807 () Bool)

(assert (=> b!489016 m!468807))

(assert (=> b!489019 m!468783))

(assert (=> b!489019 m!468783))

(declare-fun m!468809 () Bool)

(assert (=> b!489019 m!468809))

(push 1)

