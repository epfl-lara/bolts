; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53004 () Bool)

(assert start!53004)

(declare-fun b!576868 () Bool)

(declare-fun res!365053 () Bool)

(declare-fun e!331869 () Bool)

(assert (=> b!576868 (=> (not res!365053) (not e!331869))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!35976 0))(
  ( (array!35977 (arr!17263 (Array (_ BitVec 32) (_ BitVec 64))) (size!17627 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35976)

(assert (=> b!576868 (= res!365053 (and (= (size!17627 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17627 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17627 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!365050 () Bool)

(assert (=> start!53004 (=> (not res!365050) (not e!331869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53004 (= res!365050 (validMask!0 mask!3053))))

(assert (=> start!53004 e!331869))

(assert (=> start!53004 true))

(declare-fun array_inv!13037 (array!35976) Bool)

(assert (=> start!53004 (array_inv!13037 a!2986)))

(declare-fun b!576869 () Bool)

(declare-fun res!365051 () Bool)

(assert (=> b!576869 (=> (not res!365051) (not e!331869))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576869 (= res!365051 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!576870 () Bool)

(declare-fun res!365052 () Bool)

(assert (=> b!576870 (=> (not res!365052) (not e!331869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576870 (= res!365052 (validKeyInArray!0 (select (arr!17263 a!2986) j!136)))))

(declare-fun b!576871 () Bool)

(declare-fun res!365054 () Bool)

(assert (=> b!576871 (=> (not res!365054) (not e!331869))))

(assert (=> b!576871 (= res!365054 (validKeyInArray!0 k0!1786))))

(declare-fun b!576872 () Bool)

(assert (=> b!576872 (= e!331869 false)))

(declare-datatypes ((SeekEntryResult!5710 0))(
  ( (MissingZero!5710 (index!25067 (_ BitVec 32))) (Found!5710 (index!25068 (_ BitVec 32))) (Intermediate!5710 (undefined!6522 Bool) (index!25069 (_ BitVec 32)) (x!54014 (_ BitVec 32))) (Undefined!5710) (MissingVacant!5710 (index!25070 (_ BitVec 32))) )
))
(declare-fun lt!263864 () SeekEntryResult!5710)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35976 (_ BitVec 32)) SeekEntryResult!5710)

(assert (=> b!576872 (= lt!263864 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53004 res!365050) b!576868))

(assert (= (and b!576868 res!365053) b!576870))

(assert (= (and b!576870 res!365052) b!576871))

(assert (= (and b!576871 res!365054) b!576869))

(assert (= (and b!576869 res!365051) b!576872))

(declare-fun m!555831 () Bool)

(assert (=> b!576869 m!555831))

(declare-fun m!555833 () Bool)

(assert (=> b!576870 m!555833))

(assert (=> b!576870 m!555833))

(declare-fun m!555835 () Bool)

(assert (=> b!576870 m!555835))

(declare-fun m!555837 () Bool)

(assert (=> b!576872 m!555837))

(declare-fun m!555839 () Bool)

(assert (=> start!53004 m!555839))

(declare-fun m!555841 () Bool)

(assert (=> start!53004 m!555841))

(declare-fun m!555843 () Bool)

(assert (=> b!576871 m!555843))

(check-sat (not b!576872) (not b!576869) (not b!576871) (not start!53004) (not b!576870))
