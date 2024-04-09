; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53382 () Bool)

(assert start!53382)

(declare-fun b!580233 () Bool)

(declare-fun res!368202 () Bool)

(declare-fun e!333223 () Bool)

(assert (=> b!580233 (=> (not res!368202) (not e!333223))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36237 0))(
  ( (array!36238 (arr!17389 (Array (_ BitVec 32) (_ BitVec 64))) (size!17753 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36237)

(assert (=> b!580233 (= res!368202 (and (= (size!17753 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17753 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17753 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580234 () Bool)

(declare-fun res!368200 () Bool)

(declare-fun e!333221 () Bool)

(assert (=> b!580234 (=> (not res!368200) (not e!333221))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580234 (= res!368200 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17389 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17389 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580235 () Bool)

(assert (=> b!580235 (= e!333223 e!333221)))

(declare-fun res!368199 () Bool)

(assert (=> b!580235 (=> (not res!368199) (not e!333221))))

(declare-datatypes ((SeekEntryResult!5836 0))(
  ( (MissingZero!5836 (index!25571 (_ BitVec 32))) (Found!5836 (index!25572 (_ BitVec 32))) (Intermediate!5836 (undefined!6648 Bool) (index!25573 (_ BitVec 32)) (x!54476 (_ BitVec 32))) (Undefined!5836) (MissingVacant!5836 (index!25574 (_ BitVec 32))) )
))
(declare-fun lt!264665 () SeekEntryResult!5836)

(assert (=> b!580235 (= res!368199 (or (= lt!264665 (MissingZero!5836 i!1108)) (= lt!264665 (MissingVacant!5836 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36237 (_ BitVec 32)) SeekEntryResult!5836)

(assert (=> b!580235 (= lt!264665 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580236 () Bool)

(declare-fun res!368207 () Bool)

(assert (=> b!580236 (=> (not res!368207) (not e!333221))))

(declare-datatypes ((List!11483 0))(
  ( (Nil!11480) (Cons!11479 (h!12524 (_ BitVec 64)) (t!17719 List!11483)) )
))
(declare-fun arrayNoDuplicates!0 (array!36237 (_ BitVec 32) List!11483) Bool)

(assert (=> b!580236 (= res!368207 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11480))))

(declare-fun b!580237 () Bool)

(assert (=> b!580237 (= e!333221 false)))

(declare-fun lt!264664 () SeekEntryResult!5836)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36237 (_ BitVec 32)) SeekEntryResult!5836)

(assert (=> b!580237 (= lt!264664 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17389 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580238 () Bool)

(declare-fun res!368205 () Bool)

(assert (=> b!580238 (=> (not res!368205) (not e!333223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580238 (= res!368205 (validKeyInArray!0 (select (arr!17389 a!2986) j!136)))))

(declare-fun b!580239 () Bool)

(declare-fun res!368201 () Bool)

(assert (=> b!580239 (=> (not res!368201) (not e!333221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36237 (_ BitVec 32)) Bool)

(assert (=> b!580239 (= res!368201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!368206 () Bool)

(assert (=> start!53382 (=> (not res!368206) (not e!333223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53382 (= res!368206 (validMask!0 mask!3053))))

(assert (=> start!53382 e!333223))

(assert (=> start!53382 true))

(declare-fun array_inv!13163 (array!36237) Bool)

(assert (=> start!53382 (array_inv!13163 a!2986)))

(declare-fun b!580240 () Bool)

(declare-fun res!368204 () Bool)

(assert (=> b!580240 (=> (not res!368204) (not e!333223))))

(assert (=> b!580240 (= res!368204 (validKeyInArray!0 k0!1786))))

(declare-fun b!580241 () Bool)

(declare-fun res!368203 () Bool)

(assert (=> b!580241 (=> (not res!368203) (not e!333223))))

(declare-fun arrayContainsKey!0 (array!36237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580241 (= res!368203 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53382 res!368206) b!580233))

(assert (= (and b!580233 res!368202) b!580238))

(assert (= (and b!580238 res!368205) b!580240))

(assert (= (and b!580240 res!368204) b!580241))

(assert (= (and b!580241 res!368203) b!580235))

(assert (= (and b!580235 res!368199) b!580239))

(assert (= (and b!580239 res!368201) b!580236))

(assert (= (and b!580236 res!368207) b!580234))

(assert (= (and b!580234 res!368200) b!580237))

(declare-fun m!558867 () Bool)

(assert (=> b!580234 m!558867))

(declare-fun m!558869 () Bool)

(assert (=> b!580234 m!558869))

(declare-fun m!558871 () Bool)

(assert (=> b!580234 m!558871))

(declare-fun m!558873 () Bool)

(assert (=> b!580238 m!558873))

(assert (=> b!580238 m!558873))

(declare-fun m!558875 () Bool)

(assert (=> b!580238 m!558875))

(declare-fun m!558877 () Bool)

(assert (=> b!580240 m!558877))

(declare-fun m!558879 () Bool)

(assert (=> b!580235 m!558879))

(declare-fun m!558881 () Bool)

(assert (=> b!580239 m!558881))

(assert (=> b!580237 m!558873))

(assert (=> b!580237 m!558873))

(declare-fun m!558883 () Bool)

(assert (=> b!580237 m!558883))

(declare-fun m!558885 () Bool)

(assert (=> b!580236 m!558885))

(declare-fun m!558887 () Bool)

(assert (=> b!580241 m!558887))

(declare-fun m!558889 () Bool)

(assert (=> start!53382 m!558889))

(declare-fun m!558891 () Bool)

(assert (=> start!53382 m!558891))

(check-sat (not start!53382) (not b!580241) (not b!580238) (not b!580236) (not b!580239) (not b!580237) (not b!580235) (not b!580240))
(check-sat)
