; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53208 () Bool)

(assert start!53208)

(declare-fun b!577987 () Bool)

(declare-fun res!365953 () Bool)

(declare-fun e!332440 () Bool)

(assert (=> b!577987 (=> (not res!365953) (not e!332440))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36063 0))(
  ( (array!36064 (arr!17302 (Array (_ BitVec 32) (_ BitVec 64))) (size!17666 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36063)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!577987 (= res!365953 (and (= (size!17666 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17666 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17666 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577988 () Bool)

(declare-fun e!332438 () Bool)

(assert (=> b!577988 (= e!332440 e!332438)))

(declare-fun res!365959 () Bool)

(assert (=> b!577988 (=> (not res!365959) (not e!332438))))

(declare-datatypes ((SeekEntryResult!5749 0))(
  ( (MissingZero!5749 (index!25223 (_ BitVec 32))) (Found!5749 (index!25224 (_ BitVec 32))) (Intermediate!5749 (undefined!6561 Bool) (index!25225 (_ BitVec 32)) (x!54157 (_ BitVec 32))) (Undefined!5749) (MissingVacant!5749 (index!25226 (_ BitVec 32))) )
))
(declare-fun lt!264155 () SeekEntryResult!5749)

(assert (=> b!577988 (= res!365959 (or (= lt!264155 (MissingZero!5749 i!1108)) (= lt!264155 (MissingVacant!5749 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36063 (_ BitVec 32)) SeekEntryResult!5749)

(assert (=> b!577988 (= lt!264155 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577989 () Bool)

(declare-fun res!365958 () Bool)

(assert (=> b!577989 (=> (not res!365958) (not e!332438))))

(declare-datatypes ((List!11396 0))(
  ( (Nil!11393) (Cons!11392 (h!12437 (_ BitVec 64)) (t!17632 List!11396)) )
))
(declare-fun arrayNoDuplicates!0 (array!36063 (_ BitVec 32) List!11396) Bool)

(assert (=> b!577989 (= res!365958 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11393))))

(declare-fun b!577990 () Bool)

(declare-fun res!365955 () Bool)

(assert (=> b!577990 (=> (not res!365955) (not e!332440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577990 (= res!365955 (validKeyInArray!0 (select (arr!17302 a!2986) j!136)))))

(declare-fun b!577991 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!577991 (= e!332438 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17302 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17302 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!577992 () Bool)

(declare-fun res!365954 () Bool)

(assert (=> b!577992 (=> (not res!365954) (not e!332438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36063 (_ BitVec 32)) Bool)

(assert (=> b!577992 (= res!365954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!365957 () Bool)

(assert (=> start!53208 (=> (not res!365957) (not e!332440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53208 (= res!365957 (validMask!0 mask!3053))))

(assert (=> start!53208 e!332440))

(assert (=> start!53208 true))

(declare-fun array_inv!13076 (array!36063) Bool)

(assert (=> start!53208 (array_inv!13076 a!2986)))

(declare-fun b!577993 () Bool)

(declare-fun res!365956 () Bool)

(assert (=> b!577993 (=> (not res!365956) (not e!332440))))

(assert (=> b!577993 (= res!365956 (validKeyInArray!0 k0!1786))))

(declare-fun b!577994 () Bool)

(declare-fun res!365960 () Bool)

(assert (=> b!577994 (=> (not res!365960) (not e!332440))))

(declare-fun arrayContainsKey!0 (array!36063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577994 (= res!365960 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53208 res!365957) b!577987))

(assert (= (and b!577987 res!365953) b!577990))

(assert (= (and b!577990 res!365955) b!577993))

(assert (= (and b!577993 res!365956) b!577994))

(assert (= (and b!577994 res!365960) b!577988))

(assert (= (and b!577988 res!365959) b!577992))

(assert (= (and b!577992 res!365954) b!577989))

(assert (= (and b!577989 res!365958) b!577991))

(declare-fun m!556753 () Bool)

(assert (=> b!577993 m!556753))

(declare-fun m!556755 () Bool)

(assert (=> b!577991 m!556755))

(declare-fun m!556757 () Bool)

(assert (=> b!577991 m!556757))

(declare-fun m!556759 () Bool)

(assert (=> b!577991 m!556759))

(declare-fun m!556761 () Bool)

(assert (=> b!577988 m!556761))

(declare-fun m!556763 () Bool)

(assert (=> b!577989 m!556763))

(declare-fun m!556765 () Bool)

(assert (=> b!577990 m!556765))

(assert (=> b!577990 m!556765))

(declare-fun m!556767 () Bool)

(assert (=> b!577990 m!556767))

(declare-fun m!556769 () Bool)

(assert (=> b!577992 m!556769))

(declare-fun m!556771 () Bool)

(assert (=> start!53208 m!556771))

(declare-fun m!556773 () Bool)

(assert (=> start!53208 m!556773))

(declare-fun m!556775 () Bool)

(assert (=> b!577994 m!556775))

(check-sat (not start!53208) (not b!577993) (not b!577994) (not b!577989) (not b!577990) (not b!577992) (not b!577988))
(check-sat)
