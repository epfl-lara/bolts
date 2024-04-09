; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53524 () Bool)

(assert start!53524)

(declare-fun b!582186 () Bool)

(declare-fun res!370155 () Bool)

(declare-fun e!333860 () Bool)

(assert (=> b!582186 (=> (not res!370155) (not e!333860))))

(declare-datatypes ((array!36379 0))(
  ( (array!36380 (arr!17460 (Array (_ BitVec 32) (_ BitVec 64))) (size!17824 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36379)

(declare-datatypes ((List!11554 0))(
  ( (Nil!11551) (Cons!11550 (h!12595 (_ BitVec 64)) (t!17790 List!11554)) )
))
(declare-fun arrayNoDuplicates!0 (array!36379 (_ BitVec 32) List!11554) Bool)

(assert (=> b!582186 (= res!370155 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11551))))

(declare-fun b!582187 () Bool)

(declare-fun res!370157 () Bool)

(declare-fun e!333862 () Bool)

(assert (=> b!582187 (=> (not res!370157) (not e!333862))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582187 (= res!370157 (and (= (size!17824 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17824 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17824 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582188 () Bool)

(declare-fun res!370156 () Bool)

(assert (=> b!582188 (=> (not res!370156) (not e!333860))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582188 (= res!370156 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17460 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17460 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582189 () Bool)

(declare-fun res!370154 () Bool)

(assert (=> b!582189 (=> (not res!370154) (not e!333862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582189 (= res!370154 (validKeyInArray!0 (select (arr!17460 a!2986) j!136)))))

(declare-fun b!582190 () Bool)

(declare-fun res!370152 () Bool)

(assert (=> b!582190 (=> (not res!370152) (not e!333862))))

(declare-fun arrayContainsKey!0 (array!36379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582190 (= res!370152 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582191 () Bool)

(declare-fun res!370159 () Bool)

(assert (=> b!582191 (=> (not res!370159) (not e!333862))))

(assert (=> b!582191 (= res!370159 (validKeyInArray!0 k!1786))))

(declare-fun b!582192 () Bool)

(assert (=> b!582192 (= e!333860 false)))

(declare-datatypes ((SeekEntryResult!5907 0))(
  ( (MissingZero!5907 (index!25855 (_ BitVec 32))) (Found!5907 (index!25856 (_ BitVec 32))) (Intermediate!5907 (undefined!6719 Bool) (index!25857 (_ BitVec 32)) (x!54739 (_ BitVec 32))) (Undefined!5907) (MissingVacant!5907 (index!25858 (_ BitVec 32))) )
))
(declare-fun lt!265064 () SeekEntryResult!5907)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36379 (_ BitVec 32)) SeekEntryResult!5907)

(assert (=> b!582192 (= lt!265064 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17460 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582194 () Bool)

(declare-fun res!370153 () Bool)

(assert (=> b!582194 (=> (not res!370153) (not e!333860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36379 (_ BitVec 32)) Bool)

(assert (=> b!582194 (= res!370153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582193 () Bool)

(assert (=> b!582193 (= e!333862 e!333860)))

(declare-fun res!370158 () Bool)

(assert (=> b!582193 (=> (not res!370158) (not e!333860))))

(declare-fun lt!265063 () SeekEntryResult!5907)

(assert (=> b!582193 (= res!370158 (or (= lt!265063 (MissingZero!5907 i!1108)) (= lt!265063 (MissingVacant!5907 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36379 (_ BitVec 32)) SeekEntryResult!5907)

(assert (=> b!582193 (= lt!265063 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!370160 () Bool)

(assert (=> start!53524 (=> (not res!370160) (not e!333862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53524 (= res!370160 (validMask!0 mask!3053))))

(assert (=> start!53524 e!333862))

(assert (=> start!53524 true))

(declare-fun array_inv!13234 (array!36379) Bool)

(assert (=> start!53524 (array_inv!13234 a!2986)))

(assert (= (and start!53524 res!370160) b!582187))

(assert (= (and b!582187 res!370157) b!582189))

(assert (= (and b!582189 res!370154) b!582191))

(assert (= (and b!582191 res!370159) b!582190))

(assert (= (and b!582190 res!370152) b!582193))

(assert (= (and b!582193 res!370158) b!582194))

(assert (= (and b!582194 res!370153) b!582186))

(assert (= (and b!582186 res!370155) b!582188))

(assert (= (and b!582188 res!370156) b!582192))

(declare-fun m!560743 () Bool)

(assert (=> b!582193 m!560743))

(declare-fun m!560745 () Bool)

(assert (=> b!582192 m!560745))

(assert (=> b!582192 m!560745))

(declare-fun m!560747 () Bool)

(assert (=> b!582192 m!560747))

(declare-fun m!560749 () Bool)

(assert (=> b!582194 m!560749))

(declare-fun m!560751 () Bool)

(assert (=> b!582190 m!560751))

(declare-fun m!560753 () Bool)

(assert (=> b!582186 m!560753))

(declare-fun m!560755 () Bool)

(assert (=> start!53524 m!560755))

(declare-fun m!560757 () Bool)

(assert (=> start!53524 m!560757))

(assert (=> b!582189 m!560745))

(assert (=> b!582189 m!560745))

(declare-fun m!560759 () Bool)

(assert (=> b!582189 m!560759))

(declare-fun m!560761 () Bool)

(assert (=> b!582191 m!560761))

(declare-fun m!560763 () Bool)

(assert (=> b!582188 m!560763))

(declare-fun m!560765 () Bool)

(assert (=> b!582188 m!560765))

(declare-fun m!560767 () Bool)

(assert (=> b!582188 m!560767))

(push 1)

