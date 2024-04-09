; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53388 () Bool)

(assert start!53388)

(declare-fun b!580314 () Bool)

(declare-fun res!368281 () Bool)

(declare-fun e!333249 () Bool)

(assert (=> b!580314 (=> (not res!368281) (not e!333249))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36243 0))(
  ( (array!36244 (arr!17392 (Array (_ BitVec 32) (_ BitVec 64))) (size!17756 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36243)

(assert (=> b!580314 (= res!368281 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17392 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17392 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580315 () Bool)

(declare-fun res!368284 () Bool)

(assert (=> b!580315 (=> (not res!368284) (not e!333249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36243 (_ BitVec 32)) Bool)

(assert (=> b!580315 (= res!368284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580316 () Bool)

(declare-fun res!368287 () Bool)

(declare-fun e!333248 () Bool)

(assert (=> b!580316 (=> (not res!368287) (not e!333248))))

(declare-fun arrayContainsKey!0 (array!36243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580316 (= res!368287 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!368283 () Bool)

(assert (=> start!53388 (=> (not res!368283) (not e!333248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53388 (= res!368283 (validMask!0 mask!3053))))

(assert (=> start!53388 e!333248))

(assert (=> start!53388 true))

(declare-fun array_inv!13166 (array!36243) Bool)

(assert (=> start!53388 (array_inv!13166 a!2986)))

(declare-fun b!580317 () Bool)

(declare-fun res!368285 () Bool)

(assert (=> b!580317 (=> (not res!368285) (not e!333248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580317 (= res!368285 (validKeyInArray!0 k0!1786))))

(declare-fun b!580318 () Bool)

(declare-fun res!368280 () Bool)

(assert (=> b!580318 (=> (not res!368280) (not e!333249))))

(declare-datatypes ((List!11486 0))(
  ( (Nil!11483) (Cons!11482 (h!12527 (_ BitVec 64)) (t!17722 List!11486)) )
))
(declare-fun arrayNoDuplicates!0 (array!36243 (_ BitVec 32) List!11486) Bool)

(assert (=> b!580318 (= res!368280 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11483))))

(declare-fun b!580319 () Bool)

(assert (=> b!580319 (= e!333249 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5839 0))(
  ( (MissingZero!5839 (index!25583 (_ BitVec 32))) (Found!5839 (index!25584 (_ BitVec 32))) (Intermediate!5839 (undefined!6651 Bool) (index!25585 (_ BitVec 32)) (x!54487 (_ BitVec 32))) (Undefined!5839) (MissingVacant!5839 (index!25586 (_ BitVec 32))) )
))
(declare-fun lt!264682 () SeekEntryResult!5839)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36243 (_ BitVec 32)) SeekEntryResult!5839)

(assert (=> b!580319 (= lt!264682 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17392 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580320 () Bool)

(assert (=> b!580320 (= e!333248 e!333249)))

(declare-fun res!368286 () Bool)

(assert (=> b!580320 (=> (not res!368286) (not e!333249))))

(declare-fun lt!264683 () SeekEntryResult!5839)

(assert (=> b!580320 (= res!368286 (or (= lt!264683 (MissingZero!5839 i!1108)) (= lt!264683 (MissingVacant!5839 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36243 (_ BitVec 32)) SeekEntryResult!5839)

(assert (=> b!580320 (= lt!264683 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580321 () Bool)

(declare-fun res!368288 () Bool)

(assert (=> b!580321 (=> (not res!368288) (not e!333248))))

(assert (=> b!580321 (= res!368288 (validKeyInArray!0 (select (arr!17392 a!2986) j!136)))))

(declare-fun b!580322 () Bool)

(declare-fun res!368282 () Bool)

(assert (=> b!580322 (=> (not res!368282) (not e!333248))))

(assert (=> b!580322 (= res!368282 (and (= (size!17756 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17756 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17756 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53388 res!368283) b!580322))

(assert (= (and b!580322 res!368282) b!580321))

(assert (= (and b!580321 res!368288) b!580317))

(assert (= (and b!580317 res!368285) b!580316))

(assert (= (and b!580316 res!368287) b!580320))

(assert (= (and b!580320 res!368286) b!580315))

(assert (= (and b!580315 res!368284) b!580318))

(assert (= (and b!580318 res!368280) b!580314))

(assert (= (and b!580314 res!368281) b!580319))

(declare-fun m!558945 () Bool)

(assert (=> b!580316 m!558945))

(declare-fun m!558947 () Bool)

(assert (=> b!580314 m!558947))

(declare-fun m!558949 () Bool)

(assert (=> b!580314 m!558949))

(declare-fun m!558951 () Bool)

(assert (=> b!580314 m!558951))

(declare-fun m!558953 () Bool)

(assert (=> start!53388 m!558953))

(declare-fun m!558955 () Bool)

(assert (=> start!53388 m!558955))

(declare-fun m!558957 () Bool)

(assert (=> b!580321 m!558957))

(assert (=> b!580321 m!558957))

(declare-fun m!558959 () Bool)

(assert (=> b!580321 m!558959))

(declare-fun m!558961 () Bool)

(assert (=> b!580318 m!558961))

(assert (=> b!580319 m!558957))

(assert (=> b!580319 m!558957))

(declare-fun m!558963 () Bool)

(assert (=> b!580319 m!558963))

(declare-fun m!558965 () Bool)

(assert (=> b!580317 m!558965))

(declare-fun m!558967 () Bool)

(assert (=> b!580320 m!558967))

(declare-fun m!558969 () Bool)

(assert (=> b!580315 m!558969))

(check-sat (not b!580315) (not b!580316) (not b!580318) (not b!580320) (not b!580317) (not start!53388) (not b!580319) (not b!580321))
(check-sat)
