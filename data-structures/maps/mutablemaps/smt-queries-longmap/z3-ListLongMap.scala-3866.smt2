; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53226 () Bool)

(assert start!53226)

(declare-fun b!578180 () Bool)

(declare-fun res!366146 () Bool)

(declare-fun e!332520 () Bool)

(assert (=> b!578180 (=> (not res!366146) (not e!332520))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36081 0))(
  ( (array!36082 (arr!17311 (Array (_ BitVec 32) (_ BitVec 64))) (size!17675 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36081)

(assert (=> b!578180 (= res!366146 (and (= (size!17675 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17675 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17675 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578181 () Bool)

(declare-fun res!366147 () Bool)

(assert (=> b!578181 (=> (not res!366147) (not e!332520))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578181 (= res!366147 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578182 () Bool)

(declare-fun res!366151 () Bool)

(assert (=> b!578182 (=> (not res!366151) (not e!332520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578182 (= res!366151 (validKeyInArray!0 k0!1786))))

(declare-fun b!578183 () Bool)

(declare-fun res!366149 () Bool)

(declare-fun e!332521 () Bool)

(assert (=> b!578183 (=> (not res!366149) (not e!332521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36081 (_ BitVec 32)) Bool)

(assert (=> b!578183 (= res!366149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!366152 () Bool)

(assert (=> start!53226 (=> (not res!366152) (not e!332520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53226 (= res!366152 (validMask!0 mask!3053))))

(assert (=> start!53226 e!332520))

(assert (=> start!53226 true))

(declare-fun array_inv!13085 (array!36081) Bool)

(assert (=> start!53226 (array_inv!13085 a!2986)))

(declare-fun b!578184 () Bool)

(assert (=> b!578184 (= e!332521 false)))

(declare-fun lt!264206 () Bool)

(declare-datatypes ((List!11405 0))(
  ( (Nil!11402) (Cons!11401 (h!12446 (_ BitVec 64)) (t!17641 List!11405)) )
))
(declare-fun arrayNoDuplicates!0 (array!36081 (_ BitVec 32) List!11405) Bool)

(assert (=> b!578184 (= lt!264206 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11402))))

(declare-fun b!578185 () Bool)

(assert (=> b!578185 (= e!332520 e!332521)))

(declare-fun res!366150 () Bool)

(assert (=> b!578185 (=> (not res!366150) (not e!332521))))

(declare-datatypes ((SeekEntryResult!5758 0))(
  ( (MissingZero!5758 (index!25259 (_ BitVec 32))) (Found!5758 (index!25260 (_ BitVec 32))) (Intermediate!5758 (undefined!6570 Bool) (index!25261 (_ BitVec 32)) (x!54190 (_ BitVec 32))) (Undefined!5758) (MissingVacant!5758 (index!25262 (_ BitVec 32))) )
))
(declare-fun lt!264205 () SeekEntryResult!5758)

(assert (=> b!578185 (= res!366150 (or (= lt!264205 (MissingZero!5758 i!1108)) (= lt!264205 (MissingVacant!5758 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36081 (_ BitVec 32)) SeekEntryResult!5758)

(assert (=> b!578185 (= lt!264205 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578186 () Bool)

(declare-fun res!366148 () Bool)

(assert (=> b!578186 (=> (not res!366148) (not e!332520))))

(assert (=> b!578186 (= res!366148 (validKeyInArray!0 (select (arr!17311 a!2986) j!136)))))

(assert (= (and start!53226 res!366152) b!578180))

(assert (= (and b!578180 res!366146) b!578186))

(assert (= (and b!578186 res!366148) b!578182))

(assert (= (and b!578182 res!366151) b!578181))

(assert (= (and b!578181 res!366147) b!578185))

(assert (= (and b!578185 res!366150) b!578183))

(assert (= (and b!578183 res!366149) b!578184))

(declare-fun m!556927 () Bool)

(assert (=> b!578181 m!556927))

(declare-fun m!556929 () Bool)

(assert (=> b!578186 m!556929))

(assert (=> b!578186 m!556929))

(declare-fun m!556931 () Bool)

(assert (=> b!578186 m!556931))

(declare-fun m!556933 () Bool)

(assert (=> start!53226 m!556933))

(declare-fun m!556935 () Bool)

(assert (=> start!53226 m!556935))

(declare-fun m!556937 () Bool)

(assert (=> b!578185 m!556937))

(declare-fun m!556939 () Bool)

(assert (=> b!578182 m!556939))

(declare-fun m!556941 () Bool)

(assert (=> b!578184 m!556941))

(declare-fun m!556943 () Bool)

(assert (=> b!578183 m!556943))

(check-sat (not b!578181) (not b!578185) (not b!578183) (not b!578184) (not b!578182) (not start!53226) (not b!578186))
(check-sat)
