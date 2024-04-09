; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44614 () Bool)

(assert start!44614)

(declare-fun b!489044 () Bool)

(declare-fun res!292135 () Bool)

(declare-fun e!287662 () Bool)

(assert (=> b!489044 (=> (not res!292135) (not e!287662))))

(declare-datatypes ((array!31633 0))(
  ( (array!31634 (arr!15201 (Array (_ BitVec 32) (_ BitVec 64))) (size!15565 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31633)

(declare-datatypes ((List!9412 0))(
  ( (Nil!9409) (Cons!9408 (h!10270 (_ BitVec 64)) (t!15648 List!9412)) )
))
(declare-fun arrayNoDuplicates!0 (array!31633 (_ BitVec 32) List!9412) Bool)

(assert (=> b!489044 (= res!292135 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9409))))

(declare-fun b!489045 () Bool)

(declare-fun res!292134 () Bool)

(declare-fun e!287661 () Bool)

(assert (=> b!489045 (=> (not res!292134) (not e!287661))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!489045 (= res!292134 (and (= (size!15565 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15565 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15565 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489046 () Bool)

(declare-fun e!287663 () Bool)

(assert (=> b!489046 (= e!287662 (not e!287663))))

(declare-fun res!292137 () Bool)

(assert (=> b!489046 (=> res!292137 e!287663)))

(declare-fun lt!220681 () (_ BitVec 32))

(assert (=> b!489046 (= res!292137 (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvslt lt!220681 #b00000000000000000000000000000000) (bvsge lt!220681 (bvadd #b00000000000000000000000000000001 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489046 (= lt!220681 (toIndex!0 (select (store (arr!15201 a!3235) i!1204 k!2280) j!176) mask!3524))))

(declare-fun e!287665 () Bool)

(assert (=> b!489046 e!287665))

(declare-fun res!292130 () Bool)

(assert (=> b!489046 (=> (not res!292130) (not e!287665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31633 (_ BitVec 32)) Bool)

(assert (=> b!489046 (= res!292130 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14288 0))(
  ( (Unit!14289) )
))
(declare-fun lt!220680 () Unit!14288)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14288)

(assert (=> b!489046 (= lt!220680 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489047 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489047 (= e!287663 (validKeyInArray!0 (select (store (arr!15201 a!3235) i!1204 k!2280) j!176)))))

(declare-fun b!489048 () Bool)

(declare-fun res!292132 () Bool)

(assert (=> b!489048 (=> (not res!292132) (not e!287661))))

(assert (=> b!489048 (= res!292132 (validKeyInArray!0 k!2280))))

(declare-fun b!489049 () Bool)

(declare-datatypes ((SeekEntryResult!3675 0))(
  ( (MissingZero!3675 (index!16879 (_ BitVec 32))) (Found!3675 (index!16880 (_ BitVec 32))) (Intermediate!3675 (undefined!4487 Bool) (index!16881 (_ BitVec 32)) (x!46024 (_ BitVec 32))) (Undefined!3675) (MissingVacant!3675 (index!16882 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31633 (_ BitVec 32)) SeekEntryResult!3675)

(assert (=> b!489049 (= e!287665 (= (seekEntryOrOpen!0 (select (arr!15201 a!3235) j!176) a!3235 mask!3524) (Found!3675 j!176)))))

(declare-fun b!489050 () Bool)

(declare-fun res!292139 () Bool)

(assert (=> b!489050 (=> (not res!292139) (not e!287661))))

(declare-fun arrayContainsKey!0 (array!31633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489050 (= res!292139 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489051 () Bool)

(assert (=> b!489051 (= e!287661 e!287662)))

(declare-fun res!292131 () Bool)

(assert (=> b!489051 (=> (not res!292131) (not e!287662))))

(declare-fun lt!220682 () SeekEntryResult!3675)

(assert (=> b!489051 (= res!292131 (or (= lt!220682 (MissingZero!3675 i!1204)) (= lt!220682 (MissingVacant!3675 i!1204))))))

(assert (=> b!489051 (= lt!220682 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!292136 () Bool)

(assert (=> start!44614 (=> (not res!292136) (not e!287661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44614 (= res!292136 (validMask!0 mask!3524))))

(assert (=> start!44614 e!287661))

(assert (=> start!44614 true))

(declare-fun array_inv!10975 (array!31633) Bool)

(assert (=> start!44614 (array_inv!10975 a!3235)))

(declare-fun b!489052 () Bool)

(declare-fun res!292133 () Bool)

(assert (=> b!489052 (=> (not res!292133) (not e!287662))))

(assert (=> b!489052 (= res!292133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489053 () Bool)

(declare-fun res!292138 () Bool)

(assert (=> b!489053 (=> (not res!292138) (not e!287661))))

(assert (=> b!489053 (= res!292138 (validKeyInArray!0 (select (arr!15201 a!3235) j!176)))))

(assert (= (and start!44614 res!292136) b!489045))

(assert (= (and b!489045 res!292134) b!489053))

(assert (= (and b!489053 res!292138) b!489048))

(assert (= (and b!489048 res!292132) b!489050))

(assert (= (and b!489050 res!292139) b!489051))

(assert (= (and b!489051 res!292131) b!489052))

(assert (= (and b!489052 res!292133) b!489044))

(assert (= (and b!489044 res!292135) b!489046))

(assert (= (and b!489046 res!292130) b!489049))

(assert (= (and b!489046 (not res!292137)) b!489047))

(declare-fun m!468811 () Bool)

(assert (=> b!489051 m!468811))

(declare-fun m!468813 () Bool)

(assert (=> b!489044 m!468813))

(declare-fun m!468815 () Bool)

(assert (=> b!489047 m!468815))

(declare-fun m!468817 () Bool)

(assert (=> b!489047 m!468817))

(assert (=> b!489047 m!468817))

(declare-fun m!468819 () Bool)

(assert (=> b!489047 m!468819))

(declare-fun m!468821 () Bool)

(assert (=> b!489052 m!468821))

(declare-fun m!468823 () Bool)

(assert (=> start!44614 m!468823))

(declare-fun m!468825 () Bool)

(assert (=> start!44614 m!468825))

(declare-fun m!468827 () Bool)

(assert (=> b!489049 m!468827))

(assert (=> b!489049 m!468827))

(declare-fun m!468829 () Bool)

(assert (=> b!489049 m!468829))

(declare-fun m!468831 () Bool)

(assert (=> b!489050 m!468831))

(declare-fun m!468833 () Bool)

(assert (=> b!489048 m!468833))

(assert (=> b!489053 m!468827))

(assert (=> b!489053 m!468827))

(declare-fun m!468835 () Bool)

(assert (=> b!489053 m!468835))

(assert (=> b!489046 m!468815))

(declare-fun m!468837 () Bool)

(assert (=> b!489046 m!468837))

(assert (=> b!489046 m!468817))

(declare-fun m!468839 () Bool)

(assert (=> b!489046 m!468839))

(assert (=> b!489046 m!468817))

(declare-fun m!468841 () Bool)

(assert (=> b!489046 m!468841))

(push 1)

