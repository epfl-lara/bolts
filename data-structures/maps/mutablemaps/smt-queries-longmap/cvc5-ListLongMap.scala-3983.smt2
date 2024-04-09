; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53986 () Bool)

(assert start!53986)

(declare-fun b!589180 () Bool)

(declare-fun res!376856 () Bool)

(declare-fun e!336381 () Bool)

(assert (=> b!589180 (=> (not res!376856) (not e!336381))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589180 (= res!376856 (validKeyInArray!0 k!1786))))

(declare-fun res!376861 () Bool)

(assert (=> start!53986 (=> (not res!376861) (not e!336381))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53986 (= res!376861 (validMask!0 mask!3053))))

(assert (=> start!53986 e!336381))

(assert (=> start!53986 true))

(declare-datatypes ((array!36784 0))(
  ( (array!36785 (arr!17661 (Array (_ BitVec 32) (_ BitVec 64))) (size!18025 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36784)

(declare-fun array_inv!13435 (array!36784) Bool)

(assert (=> start!53986 (array_inv!13435 a!2986)))

(declare-fun b!589181 () Bool)

(declare-fun e!336383 () Bool)

(assert (=> b!589181 (= e!336383 (not true))))

(declare-datatypes ((Unit!18376 0))(
  ( (Unit!18377) )
))
(declare-fun lt!267272 () Unit!18376)

(declare-fun e!336384 () Unit!18376)

(assert (=> b!589181 (= lt!267272 e!336384)))

(declare-fun c!66530 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!267267 () array!36784)

(declare-fun lt!267265 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6108 0))(
  ( (MissingZero!6108 (index!26662 (_ BitVec 32))) (Found!6108 (index!26663 (_ BitVec 32))) (Intermediate!6108 (undefined!6920 Bool) (index!26664 (_ BitVec 32)) (x!55485 (_ BitVec 32))) (Undefined!6108) (MissingVacant!6108 (index!26665 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36784 (_ BitVec 32)) SeekEntryResult!6108)

(assert (=> b!589181 (= c!66530 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267265 lt!267267 mask!3053) Undefined!6108))))

(declare-fun e!336385 () Bool)

(assert (=> b!589181 e!336385))

(declare-fun res!376863 () Bool)

(assert (=> b!589181 (=> (not res!376863) (not e!336385))))

(declare-fun lt!267268 () (_ BitVec 32))

(declare-fun lt!267271 () SeekEntryResult!6108)

(assert (=> b!589181 (= res!376863 (= lt!267271 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267268 vacantSpotIndex!68 lt!267265 lt!267267 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!589181 (= lt!267271 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267268 vacantSpotIndex!68 (select (arr!17661 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589181 (= lt!267265 (select (store (arr!17661 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267266 () Unit!18376)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36784 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18376)

(assert (=> b!589181 (= lt!267266 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267268 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589181 (= lt!267268 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589182 () Bool)

(declare-fun e!336382 () Bool)

(declare-fun e!336380 () Bool)

(assert (=> b!589182 (= e!336382 e!336380)))

(declare-fun res!376855 () Bool)

(assert (=> b!589182 (=> (not res!376855) (not e!336380))))

(assert (=> b!589182 (= res!376855 (= (select (store (arr!17661 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589182 (= lt!267267 (array!36785 (store (arr!17661 a!2986) i!1108 k!1786) (size!18025 a!2986)))))

(declare-fun b!589183 () Bool)

(declare-fun res!376854 () Bool)

(assert (=> b!589183 (=> (not res!376854) (not e!336381))))

(assert (=> b!589183 (= res!376854 (validKeyInArray!0 (select (arr!17661 a!2986) j!136)))))

(declare-fun b!589184 () Bool)

(declare-fun res!376860 () Bool)

(assert (=> b!589184 (=> (not res!376860) (not e!336382))))

(declare-datatypes ((List!11755 0))(
  ( (Nil!11752) (Cons!11751 (h!12796 (_ BitVec 64)) (t!17991 List!11755)) )
))
(declare-fun arrayNoDuplicates!0 (array!36784 (_ BitVec 32) List!11755) Bool)

(assert (=> b!589184 (= res!376860 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11752))))

(declare-fun b!589185 () Bool)

(declare-fun Unit!18378 () Unit!18376)

(assert (=> b!589185 (= e!336384 Unit!18378)))

(declare-fun b!589186 () Bool)

(assert (=> b!589186 (= e!336381 e!336382)))

(declare-fun res!376857 () Bool)

(assert (=> b!589186 (=> (not res!376857) (not e!336382))))

(declare-fun lt!267269 () SeekEntryResult!6108)

(assert (=> b!589186 (= res!376857 (or (= lt!267269 (MissingZero!6108 i!1108)) (= lt!267269 (MissingVacant!6108 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36784 (_ BitVec 32)) SeekEntryResult!6108)

(assert (=> b!589186 (= lt!267269 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589187 () Bool)

(assert (=> b!589187 (= e!336380 e!336383)))

(declare-fun res!376865 () Bool)

(assert (=> b!589187 (=> (not res!376865) (not e!336383))))

(declare-fun lt!267270 () SeekEntryResult!6108)

(assert (=> b!589187 (= res!376865 (and (= lt!267270 (Found!6108 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17661 a!2986) index!984) (select (arr!17661 a!2986) j!136))) (not (= (select (arr!17661 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589187 (= lt!267270 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17661 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589188 () Bool)

(declare-fun Unit!18379 () Unit!18376)

(assert (=> b!589188 (= e!336384 Unit!18379)))

(assert (=> b!589188 false))

(declare-fun b!589189 () Bool)

(declare-fun res!376864 () Bool)

(assert (=> b!589189 (=> (not res!376864) (not e!336382))))

(assert (=> b!589189 (= res!376864 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17661 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589190 () Bool)

(declare-fun res!376859 () Bool)

(assert (=> b!589190 (=> (not res!376859) (not e!336381))))

(assert (=> b!589190 (= res!376859 (and (= (size!18025 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18025 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18025 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589191 () Bool)

(assert (=> b!589191 (= e!336385 (= lt!267270 lt!267271))))

(declare-fun b!589192 () Bool)

(declare-fun res!376858 () Bool)

(assert (=> b!589192 (=> (not res!376858) (not e!336381))))

(declare-fun arrayContainsKey!0 (array!36784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589192 (= res!376858 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589193 () Bool)

(declare-fun res!376862 () Bool)

(assert (=> b!589193 (=> (not res!376862) (not e!336382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36784 (_ BitVec 32)) Bool)

(assert (=> b!589193 (= res!376862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53986 res!376861) b!589190))

(assert (= (and b!589190 res!376859) b!589183))

(assert (= (and b!589183 res!376854) b!589180))

(assert (= (and b!589180 res!376856) b!589192))

(assert (= (and b!589192 res!376858) b!589186))

(assert (= (and b!589186 res!376857) b!589193))

(assert (= (and b!589193 res!376862) b!589184))

(assert (= (and b!589184 res!376860) b!589189))

(assert (= (and b!589189 res!376864) b!589182))

(assert (= (and b!589182 res!376855) b!589187))

(assert (= (and b!589187 res!376865) b!589181))

(assert (= (and b!589181 res!376863) b!589191))

(assert (= (and b!589181 c!66530) b!589188))

(assert (= (and b!589181 (not c!66530)) b!589185))

(declare-fun m!567763 () Bool)

(assert (=> b!589189 m!567763))

(declare-fun m!567765 () Bool)

(assert (=> b!589182 m!567765))

(declare-fun m!567767 () Bool)

(assert (=> b!589182 m!567767))

(declare-fun m!567769 () Bool)

(assert (=> b!589181 m!567769))

(declare-fun m!567771 () Bool)

(assert (=> b!589181 m!567771))

(declare-fun m!567773 () Bool)

(assert (=> b!589181 m!567773))

(declare-fun m!567775 () Bool)

(assert (=> b!589181 m!567775))

(assert (=> b!589181 m!567765))

(declare-fun m!567777 () Bool)

(assert (=> b!589181 m!567777))

(declare-fun m!567779 () Bool)

(assert (=> b!589181 m!567779))

(assert (=> b!589181 m!567773))

(declare-fun m!567781 () Bool)

(assert (=> b!589181 m!567781))

(declare-fun m!567783 () Bool)

(assert (=> b!589193 m!567783))

(declare-fun m!567785 () Bool)

(assert (=> b!589187 m!567785))

(assert (=> b!589187 m!567773))

(assert (=> b!589187 m!567773))

(declare-fun m!567787 () Bool)

(assert (=> b!589187 m!567787))

(assert (=> b!589183 m!567773))

(assert (=> b!589183 m!567773))

(declare-fun m!567789 () Bool)

(assert (=> b!589183 m!567789))

(declare-fun m!567791 () Bool)

(assert (=> b!589192 m!567791))

(declare-fun m!567793 () Bool)

(assert (=> b!589180 m!567793))

(declare-fun m!567795 () Bool)

(assert (=> b!589184 m!567795))

(declare-fun m!567797 () Bool)

(assert (=> start!53986 m!567797))

(declare-fun m!567799 () Bool)

(assert (=> start!53986 m!567799))

(declare-fun m!567801 () Bool)

(assert (=> b!589186 m!567801))

(push 1)

