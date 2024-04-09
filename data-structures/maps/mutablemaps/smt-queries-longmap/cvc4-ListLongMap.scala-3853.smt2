; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53024 () Bool)

(assert start!53024)

(declare-fun b!577027 () Bool)

(declare-fun res!365210 () Bool)

(declare-fun e!331930 () Bool)

(assert (=> b!577027 (=> (not res!365210) (not e!331930))))

(declare-datatypes ((array!35996 0))(
  ( (array!35997 (arr!17273 (Array (_ BitVec 32) (_ BitVec 64))) (size!17637 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35996)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577027 (= res!365210 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577028 () Bool)

(declare-fun res!365211 () Bool)

(assert (=> b!577028 (=> (not res!365211) (not e!331930))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577028 (= res!365211 (and (= (size!17637 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17637 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17637 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!365212 () Bool)

(assert (=> start!53024 (=> (not res!365212) (not e!331930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53024 (= res!365212 (validMask!0 mask!3053))))

(assert (=> start!53024 e!331930))

(assert (=> start!53024 true))

(declare-fun array_inv!13047 (array!35996) Bool)

(assert (=> start!53024 (array_inv!13047 a!2986)))

(declare-fun b!577029 () Bool)

(declare-fun res!365213 () Bool)

(assert (=> b!577029 (=> (not res!365213) (not e!331930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577029 (= res!365213 (validKeyInArray!0 k!1786))))

(declare-fun b!577030 () Bool)

(assert (=> b!577030 (= e!331930 false)))

(declare-datatypes ((SeekEntryResult!5720 0))(
  ( (MissingZero!5720 (index!25107 (_ BitVec 32))) (Found!5720 (index!25108 (_ BitVec 32))) (Intermediate!5720 (undefined!6532 Bool) (index!25109 (_ BitVec 32)) (x!54048 (_ BitVec 32))) (Undefined!5720) (MissingVacant!5720 (index!25110 (_ BitVec 32))) )
))
(declare-fun lt!263885 () SeekEntryResult!5720)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35996 (_ BitVec 32)) SeekEntryResult!5720)

(assert (=> b!577030 (= lt!263885 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577031 () Bool)

(declare-fun res!365209 () Bool)

(assert (=> b!577031 (=> (not res!365209) (not e!331930))))

(assert (=> b!577031 (= res!365209 (validKeyInArray!0 (select (arr!17273 a!2986) j!136)))))

(assert (= (and start!53024 res!365212) b!577028))

(assert (= (and b!577028 res!365211) b!577031))

(assert (= (and b!577031 res!365209) b!577029))

(assert (= (and b!577029 res!365213) b!577027))

(assert (= (and b!577027 res!365210) b!577030))

(declare-fun m!555971 () Bool)

(assert (=> b!577029 m!555971))

(declare-fun m!555973 () Bool)

(assert (=> start!53024 m!555973))

(declare-fun m!555975 () Bool)

(assert (=> start!53024 m!555975))

(declare-fun m!555977 () Bool)

(assert (=> b!577027 m!555977))

(declare-fun m!555979 () Bool)

(assert (=> b!577031 m!555979))

(assert (=> b!577031 m!555979))

(declare-fun m!555981 () Bool)

(assert (=> b!577031 m!555981))

(declare-fun m!555983 () Bool)

(assert (=> b!577030 m!555983))

(push 1)

(assert (not start!53024))

(assert (not b!577027))

(assert (not b!577031))

(assert (not b!577029))

(assert (not b!577030))

(check-sat)

