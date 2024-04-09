; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53020 () Bool)

(assert start!53020)

(declare-fun b!576997 () Bool)

(declare-fun res!365179 () Bool)

(declare-fun e!331917 () Bool)

(assert (=> b!576997 (=> (not res!365179) (not e!331917))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!35992 0))(
  ( (array!35993 (arr!17271 (Array (_ BitVec 32) (_ BitVec 64))) (size!17635 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35992)

(assert (=> b!576997 (= res!365179 (and (= (size!17635 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17635 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17635 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576998 () Bool)

(declare-fun res!365180 () Bool)

(assert (=> b!576998 (=> (not res!365180) (not e!331917))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576998 (= res!365180 (validKeyInArray!0 k!1786))))

(declare-fun b!576999 () Bool)

(assert (=> b!576999 (= e!331917 false)))

(declare-datatypes ((SeekEntryResult!5718 0))(
  ( (MissingZero!5718 (index!25099 (_ BitVec 32))) (Found!5718 (index!25100 (_ BitVec 32))) (Intermediate!5718 (undefined!6530 Bool) (index!25101 (_ BitVec 32)) (x!54046 (_ BitVec 32))) (Undefined!5718) (MissingVacant!5718 (index!25102 (_ BitVec 32))) )
))
(declare-fun lt!263879 () SeekEntryResult!5718)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35992 (_ BitVec 32)) SeekEntryResult!5718)

(assert (=> b!576999 (= lt!263879 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577000 () Bool)

(declare-fun res!365182 () Bool)

(assert (=> b!577000 (=> (not res!365182) (not e!331917))))

(declare-fun arrayContainsKey!0 (array!35992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577000 (= res!365182 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577001 () Bool)

(declare-fun res!365181 () Bool)

(assert (=> b!577001 (=> (not res!365181) (not e!331917))))

(assert (=> b!577001 (= res!365181 (validKeyInArray!0 (select (arr!17271 a!2986) j!136)))))

(declare-fun res!365183 () Bool)

(assert (=> start!53020 (=> (not res!365183) (not e!331917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53020 (= res!365183 (validMask!0 mask!3053))))

(assert (=> start!53020 e!331917))

(assert (=> start!53020 true))

(declare-fun array_inv!13045 (array!35992) Bool)

(assert (=> start!53020 (array_inv!13045 a!2986)))

(assert (= (and start!53020 res!365183) b!576997))

(assert (= (and b!576997 res!365179) b!577001))

(assert (= (and b!577001 res!365181) b!576998))

(assert (= (and b!576998 res!365180) b!577000))

(assert (= (and b!577000 res!365182) b!576999))

(declare-fun m!555943 () Bool)

(assert (=> start!53020 m!555943))

(declare-fun m!555945 () Bool)

(assert (=> start!53020 m!555945))

(declare-fun m!555947 () Bool)

(assert (=> b!576999 m!555947))

(declare-fun m!555949 () Bool)

(assert (=> b!576998 m!555949))

(declare-fun m!555951 () Bool)

(assert (=> b!577000 m!555951))

(declare-fun m!555953 () Bool)

(assert (=> b!577001 m!555953))

(assert (=> b!577001 m!555953))

(declare-fun m!555955 () Bool)

(assert (=> b!577001 m!555955))

(push 1)

(assert (not b!576999))

(assert (not b!577000))

(assert (not b!577001))

(assert (not start!53020))

(assert (not b!576998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

