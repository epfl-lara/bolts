; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53012 () Bool)

(assert start!53012)

(declare-fun b!576936 () Bool)

(declare-fun res!365122 () Bool)

(declare-fun e!331893 () Bool)

(assert (=> b!576936 (=> (not res!365122) (not e!331893))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!35984 0))(
  ( (array!35985 (arr!17267 (Array (_ BitVec 32) (_ BitVec 64))) (size!17631 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35984)

(declare-datatypes ((SeekEntryResult!5714 0))(
  ( (MissingZero!5714 (index!25083 (_ BitVec 32))) (Found!5714 (index!25084 (_ BitVec 32))) (Intermediate!5714 (undefined!6526 Bool) (index!25085 (_ BitVec 32)) (x!54026 (_ BitVec 32))) (Undefined!5714) (MissingVacant!5714 (index!25086 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35984 (_ BitVec 32)) SeekEntryResult!5714)

(assert (=> b!576936 (= res!365122 (not (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) (MissingZero!5714 i!1108))))))

(declare-fun b!576937 () Bool)

(declare-fun res!365123 () Bool)

(assert (=> b!576937 (=> (not res!365123) (not e!331893))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576937 (= res!365123 (validKeyInArray!0 (select (arr!17267 a!2986) j!136)))))

(declare-fun b!576938 () Bool)

(declare-fun res!365119 () Bool)

(assert (=> b!576938 (=> (not res!365119) (not e!331893))))

(assert (=> b!576938 (= res!365119 (validKeyInArray!0 k!1786))))

(declare-fun b!576939 () Bool)

(declare-fun res!365118 () Bool)

(assert (=> b!576939 (=> (not res!365118) (not e!331893))))

(declare-fun arrayContainsKey!0 (array!35984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576939 (= res!365118 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!576940 () Bool)

(assert (=> b!576940 (= e!331893 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun res!365120 () Bool)

(assert (=> start!53012 (=> (not res!365120) (not e!331893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53012 (= res!365120 (validMask!0 mask!3053))))

(assert (=> start!53012 e!331893))

(assert (=> start!53012 true))

(declare-fun array_inv!13041 (array!35984) Bool)

(assert (=> start!53012 (array_inv!13041 a!2986)))

(declare-fun b!576941 () Bool)

(declare-fun res!365121 () Bool)

(assert (=> b!576941 (=> (not res!365121) (not e!331893))))

(assert (=> b!576941 (= res!365121 (and (= (size!17631 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17631 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17631 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53012 res!365120) b!576941))

(assert (= (and b!576941 res!365121) b!576937))

(assert (= (and b!576937 res!365123) b!576938))

(assert (= (and b!576938 res!365119) b!576939))

(assert (= (and b!576939 res!365118) b!576936))

(assert (= (and b!576936 res!365122) b!576940))

(declare-fun m!555887 () Bool)

(assert (=> b!576938 m!555887))

(declare-fun m!555889 () Bool)

(assert (=> b!576939 m!555889))

(declare-fun m!555891 () Bool)

(assert (=> b!576937 m!555891))

(assert (=> b!576937 m!555891))

(declare-fun m!555893 () Bool)

(assert (=> b!576937 m!555893))

(declare-fun m!555895 () Bool)

(assert (=> start!53012 m!555895))

(declare-fun m!555897 () Bool)

(assert (=> start!53012 m!555897))

(declare-fun m!555899 () Bool)

(assert (=> b!576936 m!555899))

(push 1)

(assert (not b!576936))

(assert (not b!576937))

(assert (not start!53012))

(assert (not b!576938))

(assert (not b!576939))

(check-sat)

