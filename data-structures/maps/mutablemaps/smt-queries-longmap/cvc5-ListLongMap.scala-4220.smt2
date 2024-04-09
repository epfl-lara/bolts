; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57930 () Bool)

(assert start!57930)

(declare-fun b!640211 () Bool)

(declare-fun res!414650 () Bool)

(declare-fun e!366488 () Bool)

(assert (=> b!640211 (=> (not res!414650) (not e!366488))))

(declare-datatypes ((array!38313 0))(
  ( (array!38314 (arr!18372 (Array (_ BitVec 32) (_ BitVec 64))) (size!18736 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38313)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640211 (= res!414650 (validKeyInArray!0 (select (arr!18372 a!2986) j!136)))))

(declare-fun b!640212 () Bool)

(declare-fun e!366491 () Bool)

(declare-fun e!366485 () Bool)

(assert (=> b!640212 (= e!366491 e!366485)))

(declare-fun res!414651 () Bool)

(assert (=> b!640212 (=> (not res!414651) (not e!366485))))

(declare-fun lt!296325 () array!38313)

(declare-fun arrayContainsKey!0 (array!38313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640212 (= res!414651 (arrayContainsKey!0 lt!296325 (select (arr!18372 a!2986) j!136) j!136))))

(declare-fun b!640214 () Bool)

(declare-fun e!366489 () Bool)

(declare-fun e!366492 () Bool)

(assert (=> b!640214 (= e!366489 e!366492)))

(declare-fun res!414657 () Bool)

(assert (=> b!640214 (=> (not res!414657) (not e!366492))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!640214 (= res!414657 (= (select (store (arr!18372 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640214 (= lt!296325 (array!38314 (store (arr!18372 a!2986) i!1108 k!1786) (size!18736 a!2986)))))

(declare-fun b!640215 () Bool)

(declare-fun e!366487 () Bool)

(declare-fun e!366484 () Bool)

(assert (=> b!640215 (= e!366487 e!366484)))

(declare-fun res!414649 () Bool)

(assert (=> b!640215 (=> res!414649 e!366484)))

(declare-fun lt!296334 () (_ BitVec 64))

(declare-fun lt!296326 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!640215 (= res!414649 (or (not (= (select (arr!18372 a!2986) j!136) lt!296326)) (not (= (select (arr!18372 a!2986) j!136) lt!296334)) (bvsge j!136 index!984)))))

(declare-fun e!366483 () Bool)

(assert (=> b!640215 e!366483))

(declare-fun res!414659 () Bool)

(assert (=> b!640215 (=> (not res!414659) (not e!366483))))

(assert (=> b!640215 (= res!414659 (= lt!296334 (select (arr!18372 a!2986) j!136)))))

(assert (=> b!640215 (= lt!296334 (select (store (arr!18372 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640216 () Bool)

(declare-fun res!414662 () Bool)

(assert (=> b!640216 (=> (not res!414662) (not e!366488))))

(assert (=> b!640216 (= res!414662 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640217 () Bool)

(declare-fun res!414661 () Bool)

(assert (=> b!640217 (=> (not res!414661) (not e!366489))))

(declare-datatypes ((List!12466 0))(
  ( (Nil!12463) (Cons!12462 (h!13507 (_ BitVec 64)) (t!18702 List!12466)) )
))
(declare-fun arrayNoDuplicates!0 (array!38313 (_ BitVec 32) List!12466) Bool)

(assert (=> b!640217 (= res!414661 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12463))))

(declare-fun b!640218 () Bool)

(assert (=> b!640218 (= e!366483 e!366491)))

(declare-fun res!414654 () Bool)

(assert (=> b!640218 (=> res!414654 e!366491)))

(assert (=> b!640218 (= res!414654 (or (not (= (select (arr!18372 a!2986) j!136) lt!296326)) (not (= (select (arr!18372 a!2986) j!136) lt!296334)) (bvsge j!136 index!984)))))

(declare-fun b!640219 () Bool)

(assert (=> b!640219 (= e!366485 (arrayContainsKey!0 lt!296325 (select (arr!18372 a!2986) j!136) index!984))))

(declare-fun b!640220 () Bool)

(declare-fun e!366493 () Bool)

(declare-datatypes ((SeekEntryResult!6819 0))(
  ( (MissingZero!6819 (index!29595 (_ BitVec 32))) (Found!6819 (index!29596 (_ BitVec 32))) (Intermediate!6819 (undefined!7631 Bool) (index!29597 (_ BitVec 32)) (x!58384 (_ BitVec 32))) (Undefined!6819) (MissingVacant!6819 (index!29598 (_ BitVec 32))) )
))
(declare-fun lt!296333 () SeekEntryResult!6819)

(declare-fun lt!296332 () SeekEntryResult!6819)

(assert (=> b!640220 (= e!366493 (= lt!296333 lt!296332))))

(declare-fun b!640221 () Bool)

(declare-fun res!414652 () Bool)

(assert (=> b!640221 (=> (not res!414652) (not e!366489))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!640221 (= res!414652 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18372 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640222 () Bool)

(assert (=> b!640222 (= e!366488 e!366489)))

(declare-fun res!414664 () Bool)

(assert (=> b!640222 (=> (not res!414664) (not e!366489))))

(declare-fun lt!296329 () SeekEntryResult!6819)

(assert (=> b!640222 (= res!414664 (or (= lt!296329 (MissingZero!6819 i!1108)) (= lt!296329 (MissingVacant!6819 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38313 (_ BitVec 32)) SeekEntryResult!6819)

(assert (=> b!640222 (= lt!296329 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640223 () Bool)

(declare-fun res!414656 () Bool)

(assert (=> b!640223 (=> (not res!414656) (not e!366488))))

(assert (=> b!640223 (= res!414656 (validKeyInArray!0 k!1786))))

(declare-fun b!640224 () Bool)

(assert (=> b!640224 (= e!366484 true)))

(assert (=> b!640224 (arrayNoDuplicates!0 lt!296325 j!136 Nil!12463)))

(declare-datatypes ((Unit!21634 0))(
  ( (Unit!21635) )
))
(declare-fun lt!296328 () Unit!21634)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38313 (_ BitVec 32) (_ BitVec 32)) Unit!21634)

(assert (=> b!640224 (= lt!296328 (lemmaNoDuplicateFromThenFromBigger!0 lt!296325 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640224 (arrayNoDuplicates!0 lt!296325 #b00000000000000000000000000000000 Nil!12463)))

(declare-fun lt!296335 () Unit!21634)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38313 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12466) Unit!21634)

(assert (=> b!640224 (= lt!296335 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12463))))

(assert (=> b!640224 (arrayContainsKey!0 lt!296325 (select (arr!18372 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296330 () Unit!21634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38313 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21634)

(assert (=> b!640224 (= lt!296330 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296325 (select (arr!18372 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640225 () Bool)

(declare-fun e!366486 () Unit!21634)

(declare-fun Unit!21636 () Unit!21634)

(assert (=> b!640225 (= e!366486 Unit!21636)))

(assert (=> b!640225 false))

(declare-fun b!640226 () Bool)

(declare-fun e!366482 () Bool)

(assert (=> b!640226 (= e!366482 (not e!366487))))

(declare-fun res!414655 () Bool)

(assert (=> b!640226 (=> res!414655 e!366487)))

(declare-fun lt!296327 () SeekEntryResult!6819)

(assert (=> b!640226 (= res!414655 (not (= lt!296327 (Found!6819 index!984))))))

(declare-fun lt!296331 () Unit!21634)

(assert (=> b!640226 (= lt!296331 e!366486)))

(declare-fun c!73148 () Bool)

(assert (=> b!640226 (= c!73148 (= lt!296327 Undefined!6819))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38313 (_ BitVec 32)) SeekEntryResult!6819)

(assert (=> b!640226 (= lt!296327 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296326 lt!296325 mask!3053))))

(assert (=> b!640226 e!366493))

(declare-fun res!414658 () Bool)

(assert (=> b!640226 (=> (not res!414658) (not e!366493))))

(declare-fun lt!296337 () (_ BitVec 32))

(assert (=> b!640226 (= res!414658 (= lt!296332 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296337 vacantSpotIndex!68 lt!296326 lt!296325 mask!3053)))))

(assert (=> b!640226 (= lt!296332 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296337 vacantSpotIndex!68 (select (arr!18372 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640226 (= lt!296326 (select (store (arr!18372 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296336 () Unit!21634)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38313 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21634)

(assert (=> b!640226 (= lt!296336 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296337 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640226 (= lt!296337 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640227 () Bool)

(declare-fun Unit!21637 () Unit!21634)

(assert (=> b!640227 (= e!366486 Unit!21637)))

(declare-fun res!414665 () Bool)

(assert (=> start!57930 (=> (not res!414665) (not e!366488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57930 (= res!414665 (validMask!0 mask!3053))))

(assert (=> start!57930 e!366488))

(assert (=> start!57930 true))

(declare-fun array_inv!14146 (array!38313) Bool)

(assert (=> start!57930 (array_inv!14146 a!2986)))

(declare-fun b!640213 () Bool)

(declare-fun res!414653 () Bool)

(assert (=> b!640213 (=> (not res!414653) (not e!366489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38313 (_ BitVec 32)) Bool)

(assert (=> b!640213 (= res!414653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640228 () Bool)

(declare-fun res!414663 () Bool)

(assert (=> b!640228 (=> (not res!414663) (not e!366488))))

(assert (=> b!640228 (= res!414663 (and (= (size!18736 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18736 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18736 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640229 () Bool)

(assert (=> b!640229 (= e!366492 e!366482)))

(declare-fun res!414660 () Bool)

(assert (=> b!640229 (=> (not res!414660) (not e!366482))))

(assert (=> b!640229 (= res!414660 (and (= lt!296333 (Found!6819 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18372 a!2986) index!984) (select (arr!18372 a!2986) j!136))) (not (= (select (arr!18372 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!640229 (= lt!296333 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18372 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!57930 res!414665) b!640228))

(assert (= (and b!640228 res!414663) b!640211))

(assert (= (and b!640211 res!414650) b!640223))

(assert (= (and b!640223 res!414656) b!640216))

(assert (= (and b!640216 res!414662) b!640222))

(assert (= (and b!640222 res!414664) b!640213))

(assert (= (and b!640213 res!414653) b!640217))

(assert (= (and b!640217 res!414661) b!640221))

(assert (= (and b!640221 res!414652) b!640214))

(assert (= (and b!640214 res!414657) b!640229))

(assert (= (and b!640229 res!414660) b!640226))

(assert (= (and b!640226 res!414658) b!640220))

(assert (= (and b!640226 c!73148) b!640225))

(assert (= (and b!640226 (not c!73148)) b!640227))

(assert (= (and b!640226 (not res!414655)) b!640215))

(assert (= (and b!640215 res!414659) b!640218))

(assert (= (and b!640218 (not res!414654)) b!640212))

(assert (= (and b!640212 res!414651) b!640219))

(assert (= (and b!640215 (not res!414649)) b!640224))

(declare-fun m!614115 () Bool)

(assert (=> b!640222 m!614115))

(declare-fun m!614117 () Bool)

(assert (=> b!640223 m!614117))

(declare-fun m!614119 () Bool)

(assert (=> b!640217 m!614119))

(declare-fun m!614121 () Bool)

(assert (=> b!640214 m!614121))

(declare-fun m!614123 () Bool)

(assert (=> b!640214 m!614123))

(declare-fun m!614125 () Bool)

(assert (=> b!640219 m!614125))

(assert (=> b!640219 m!614125))

(declare-fun m!614127 () Bool)

(assert (=> b!640219 m!614127))

(assert (=> b!640211 m!614125))

(assert (=> b!640211 m!614125))

(declare-fun m!614129 () Bool)

(assert (=> b!640211 m!614129))

(assert (=> b!640215 m!614125))

(assert (=> b!640215 m!614121))

(declare-fun m!614131 () Bool)

(assert (=> b!640215 m!614131))

(assert (=> b!640224 m!614125))

(declare-fun m!614133 () Bool)

(assert (=> b!640224 m!614133))

(assert (=> b!640224 m!614125))

(assert (=> b!640224 m!614125))

(declare-fun m!614135 () Bool)

(assert (=> b!640224 m!614135))

(declare-fun m!614137 () Bool)

(assert (=> b!640224 m!614137))

(declare-fun m!614139 () Bool)

(assert (=> b!640224 m!614139))

(declare-fun m!614141 () Bool)

(assert (=> b!640224 m!614141))

(declare-fun m!614143 () Bool)

(assert (=> b!640224 m!614143))

(declare-fun m!614145 () Bool)

(assert (=> start!57930 m!614145))

(declare-fun m!614147 () Bool)

(assert (=> start!57930 m!614147))

(assert (=> b!640212 m!614125))

(assert (=> b!640212 m!614125))

(declare-fun m!614149 () Bool)

(assert (=> b!640212 m!614149))

(declare-fun m!614151 () Bool)

(assert (=> b!640216 m!614151))

(declare-fun m!614153 () Bool)

(assert (=> b!640226 m!614153))

(assert (=> b!640226 m!614125))

(assert (=> b!640226 m!614121))

(declare-fun m!614155 () Bool)

(assert (=> b!640226 m!614155))

(declare-fun m!614157 () Bool)

(assert (=> b!640226 m!614157))

(assert (=> b!640226 m!614125))

(declare-fun m!614159 () Bool)

(assert (=> b!640226 m!614159))

(declare-fun m!614161 () Bool)

(assert (=> b!640226 m!614161))

(declare-fun m!614163 () Bool)

(assert (=> b!640226 m!614163))

(assert (=> b!640218 m!614125))

(declare-fun m!614165 () Bool)

(assert (=> b!640229 m!614165))

(assert (=> b!640229 m!614125))

(assert (=> b!640229 m!614125))

(declare-fun m!614167 () Bool)

(assert (=> b!640229 m!614167))

(declare-fun m!614169 () Bool)

(assert (=> b!640221 m!614169))

(declare-fun m!614171 () Bool)

(assert (=> b!640213 m!614171))

(push 1)

