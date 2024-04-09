; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53984 () Bool)

(assert start!53984)

(declare-fun b!589138 () Bool)

(declare-fun e!336361 () Bool)

(declare-fun e!336358 () Bool)

(assert (=> b!589138 (= e!336361 e!336358)))

(declare-fun res!376827 () Bool)

(assert (=> b!589138 (=> (not res!376827) (not e!336358))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6107 0))(
  ( (MissingZero!6107 (index!26658 (_ BitVec 32))) (Found!6107 (index!26659 (_ BitVec 32))) (Intermediate!6107 (undefined!6919 Bool) (index!26660 (_ BitVec 32)) (x!55476 (_ BitVec 32))) (Undefined!6107) (MissingVacant!6107 (index!26661 (_ BitVec 32))) )
))
(declare-fun lt!267246 () SeekEntryResult!6107)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36782 0))(
  ( (array!36783 (arr!17660 (Array (_ BitVec 32) (_ BitVec 64))) (size!18024 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36782)

(assert (=> b!589138 (= res!376827 (and (= lt!267246 (Found!6107 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17660 a!2986) index!984) (select (arr!17660 a!2986) j!136))) (not (= (select (arr!17660 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36782 (_ BitVec 32)) SeekEntryResult!6107)

(assert (=> b!589138 (= lt!267246 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17660 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589139 () Bool)

(declare-datatypes ((Unit!18372 0))(
  ( (Unit!18373) )
))
(declare-fun e!336363 () Unit!18372)

(declare-fun Unit!18374 () Unit!18372)

(assert (=> b!589139 (= e!336363 Unit!18374)))

(assert (=> b!589139 false))

(declare-fun b!589140 () Bool)

(declare-fun e!336359 () Bool)

(declare-fun e!336360 () Bool)

(assert (=> b!589140 (= e!336359 e!336360)))

(declare-fun res!376822 () Bool)

(assert (=> b!589140 (=> (not res!376822) (not e!336360))))

(declare-fun lt!267243 () SeekEntryResult!6107)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589140 (= res!376822 (or (= lt!267243 (MissingZero!6107 i!1108)) (= lt!267243 (MissingVacant!6107 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36782 (_ BitVec 32)) SeekEntryResult!6107)

(assert (=> b!589140 (= lt!267243 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589142 () Bool)

(declare-fun res!376820 () Bool)

(assert (=> b!589142 (=> (not res!376820) (not e!336359))))

(assert (=> b!589142 (= res!376820 (and (= (size!18024 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18024 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18024 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589143 () Bool)

(declare-fun res!376818 () Bool)

(assert (=> b!589143 (=> (not res!376818) (not e!336360))))

(declare-datatypes ((List!11754 0))(
  ( (Nil!11751) (Cons!11750 (h!12795 (_ BitVec 64)) (t!17990 List!11754)) )
))
(declare-fun arrayNoDuplicates!0 (array!36782 (_ BitVec 32) List!11754) Bool)

(assert (=> b!589143 (= res!376818 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11751))))

(declare-fun b!589144 () Bool)

(assert (=> b!589144 (= e!336358 (not true))))

(declare-fun lt!267247 () Unit!18372)

(assert (=> b!589144 (= lt!267247 e!336363)))

(declare-fun c!66527 () Bool)

(declare-fun lt!267241 () array!36782)

(declare-fun lt!267242 () (_ BitVec 64))

(assert (=> b!589144 (= c!66527 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267242 lt!267241 mask!3053) Undefined!6107))))

(declare-fun e!336362 () Bool)

(assert (=> b!589144 e!336362))

(declare-fun res!376826 () Bool)

(assert (=> b!589144 (=> (not res!376826) (not e!336362))))

(declare-fun lt!267248 () (_ BitVec 32))

(declare-fun lt!267245 () SeekEntryResult!6107)

(assert (=> b!589144 (= res!376826 (= lt!267245 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267248 vacantSpotIndex!68 lt!267242 lt!267241 mask!3053)))))

(assert (=> b!589144 (= lt!267245 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267248 vacantSpotIndex!68 (select (arr!17660 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589144 (= lt!267242 (select (store (arr!17660 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267244 () Unit!18372)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36782 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18372)

(assert (=> b!589144 (= lt!267244 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267248 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589144 (= lt!267248 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589145 () Bool)

(declare-fun res!376829 () Bool)

(assert (=> b!589145 (=> (not res!376829) (not e!336360))))

(assert (=> b!589145 (= res!376829 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17660 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589146 () Bool)

(assert (=> b!589146 (= e!336360 e!336361)))

(declare-fun res!376819 () Bool)

(assert (=> b!589146 (=> (not res!376819) (not e!336361))))

(assert (=> b!589146 (= res!376819 (= (select (store (arr!17660 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589146 (= lt!267241 (array!36783 (store (arr!17660 a!2986) i!1108 k!1786) (size!18024 a!2986)))))

(declare-fun b!589147 () Bool)

(assert (=> b!589147 (= e!336362 (= lt!267246 lt!267245))))

(declare-fun b!589148 () Bool)

(declare-fun res!376825 () Bool)

(assert (=> b!589148 (=> (not res!376825) (not e!336359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589148 (= res!376825 (validKeyInArray!0 k!1786))))

(declare-fun b!589149 () Bool)

(declare-fun res!376828 () Bool)

(assert (=> b!589149 (=> (not res!376828) (not e!336359))))

(declare-fun arrayContainsKey!0 (array!36782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589149 (= res!376828 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!376823 () Bool)

(assert (=> start!53984 (=> (not res!376823) (not e!336359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53984 (= res!376823 (validMask!0 mask!3053))))

(assert (=> start!53984 e!336359))

(assert (=> start!53984 true))

(declare-fun array_inv!13434 (array!36782) Bool)

(assert (=> start!53984 (array_inv!13434 a!2986)))

(declare-fun b!589141 () Bool)

(declare-fun res!376821 () Bool)

(assert (=> b!589141 (=> (not res!376821) (not e!336360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36782 (_ BitVec 32)) Bool)

(assert (=> b!589141 (= res!376821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589150 () Bool)

(declare-fun res!376824 () Bool)

(assert (=> b!589150 (=> (not res!376824) (not e!336359))))

(assert (=> b!589150 (= res!376824 (validKeyInArray!0 (select (arr!17660 a!2986) j!136)))))

(declare-fun b!589151 () Bool)

(declare-fun Unit!18375 () Unit!18372)

(assert (=> b!589151 (= e!336363 Unit!18375)))

(assert (= (and start!53984 res!376823) b!589142))

(assert (= (and b!589142 res!376820) b!589150))

(assert (= (and b!589150 res!376824) b!589148))

(assert (= (and b!589148 res!376825) b!589149))

(assert (= (and b!589149 res!376828) b!589140))

(assert (= (and b!589140 res!376822) b!589141))

(assert (= (and b!589141 res!376821) b!589143))

(assert (= (and b!589143 res!376818) b!589145))

(assert (= (and b!589145 res!376829) b!589146))

(assert (= (and b!589146 res!376819) b!589138))

(assert (= (and b!589138 res!376827) b!589144))

(assert (= (and b!589144 res!376826) b!589147))

(assert (= (and b!589144 c!66527) b!589139))

(assert (= (and b!589144 (not c!66527)) b!589151))

(declare-fun m!567723 () Bool)

(assert (=> b!589140 m!567723))

(declare-fun m!567725 () Bool)

(assert (=> b!589141 m!567725))

(declare-fun m!567727 () Bool)

(assert (=> start!53984 m!567727))

(declare-fun m!567729 () Bool)

(assert (=> start!53984 m!567729))

(declare-fun m!567731 () Bool)

(assert (=> b!589146 m!567731))

(declare-fun m!567733 () Bool)

(assert (=> b!589146 m!567733))

(declare-fun m!567735 () Bool)

(assert (=> b!589138 m!567735))

(declare-fun m!567737 () Bool)

(assert (=> b!589138 m!567737))

(assert (=> b!589138 m!567737))

(declare-fun m!567739 () Bool)

(assert (=> b!589138 m!567739))

(declare-fun m!567741 () Bool)

(assert (=> b!589149 m!567741))

(declare-fun m!567743 () Bool)

(assert (=> b!589148 m!567743))

(declare-fun m!567745 () Bool)

(assert (=> b!589145 m!567745))

(declare-fun m!567747 () Bool)

(assert (=> b!589144 m!567747))

(declare-fun m!567749 () Bool)

(assert (=> b!589144 m!567749))

(assert (=> b!589144 m!567737))

(declare-fun m!567751 () Bool)

(assert (=> b!589144 m!567751))

(assert (=> b!589144 m!567737))

(assert (=> b!589144 m!567731))

(declare-fun m!567753 () Bool)

(assert (=> b!589144 m!567753))

(declare-fun m!567755 () Bool)

(assert (=> b!589144 m!567755))

(declare-fun m!567757 () Bool)

(assert (=> b!589144 m!567757))

(declare-fun m!567759 () Bool)

(assert (=> b!589143 m!567759))

(assert (=> b!589150 m!567737))

(assert (=> b!589150 m!567737))

(declare-fun m!567761 () Bool)

(assert (=> b!589150 m!567761))

(push 1)

