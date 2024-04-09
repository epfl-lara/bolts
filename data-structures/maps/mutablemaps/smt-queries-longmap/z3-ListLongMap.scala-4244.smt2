; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58868 () Bool)

(assert start!58868)

(declare-fun b!648267 () Bool)

(declare-fun e!371823 () Bool)

(declare-fun e!371821 () Bool)

(assert (=> b!648267 (= e!371823 e!371821)))

(declare-fun res!420099 () Bool)

(assert (=> b!648267 (=> res!420099 e!371821)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!300908 () (_ BitVec 64))

(declare-fun lt!300916 () (_ BitVec 64))

(declare-datatypes ((array!38486 0))(
  ( (array!38487 (arr!18445 (Array (_ BitVec 32) (_ BitVec 64))) (size!18809 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38486)

(assert (=> b!648267 (= res!420099 (or (not (= (select (arr!18445 a!2986) j!136) lt!300908)) (not (= (select (arr!18445 a!2986) j!136) lt!300916))))))

(declare-fun e!371830 () Bool)

(assert (=> b!648267 e!371830))

(declare-fun res!420098 () Bool)

(assert (=> b!648267 (=> (not res!420098) (not e!371830))))

(assert (=> b!648267 (= res!420098 (= lt!300916 (select (arr!18445 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!648267 (= lt!300916 (select (store (arr!18445 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!648268 () Bool)

(declare-datatypes ((Unit!22024 0))(
  ( (Unit!22025) )
))
(declare-fun e!371828 () Unit!22024)

(declare-fun Unit!22026 () Unit!22024)

(assert (=> b!648268 (= e!371828 Unit!22026)))

(declare-fun b!648269 () Bool)

(declare-fun res!420084 () Bool)

(declare-fun e!371818 () Bool)

(assert (=> b!648269 (=> res!420084 e!371818)))

(declare-datatypes ((List!12539 0))(
  ( (Nil!12536) (Cons!12535 (h!13580 (_ BitVec 64)) (t!18775 List!12539)) )
))
(declare-fun contains!3162 (List!12539 (_ BitVec 64)) Bool)

(assert (=> b!648269 (= res!420084 (contains!3162 Nil!12536 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648270 () Bool)

(declare-fun Unit!22027 () Unit!22024)

(assert (=> b!648270 (= e!371828 Unit!22027)))

(assert (=> b!648270 false))

(declare-fun b!648271 () Bool)

(declare-fun e!371822 () Unit!22024)

(declare-fun Unit!22028 () Unit!22024)

(assert (=> b!648271 (= e!371822 Unit!22028)))

(declare-fun lt!300909 () Unit!22024)

(declare-fun lt!300910 () array!38486)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38486 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22024)

(assert (=> b!648271 (= lt!300909 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300910 (select (arr!18445 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648271 (arrayContainsKey!0 lt!300910 (select (arr!18445 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300914 () Unit!22024)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38486 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12539) Unit!22024)

(assert (=> b!648271 (= lt!300914 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12536))))

(declare-fun arrayNoDuplicates!0 (array!38486 (_ BitVec 32) List!12539) Bool)

(assert (=> b!648271 (arrayNoDuplicates!0 lt!300910 #b00000000000000000000000000000000 Nil!12536)))

(declare-fun lt!300913 () Unit!22024)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38486 (_ BitVec 32) (_ BitVec 32)) Unit!22024)

(assert (=> b!648271 (= lt!300913 (lemmaNoDuplicateFromThenFromBigger!0 lt!300910 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648271 (arrayNoDuplicates!0 lt!300910 j!136 Nil!12536)))

(declare-fun lt!300922 () Unit!22024)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38486 (_ BitVec 64) (_ BitVec 32) List!12539) Unit!22024)

(assert (=> b!648271 (= lt!300922 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300910 (select (arr!18445 a!2986) j!136) j!136 Nil!12536))))

(assert (=> b!648271 false))

(declare-fun b!648272 () Bool)

(declare-fun res!420080 () Bool)

(assert (=> b!648272 (=> res!420080 e!371818)))

(declare-fun noDuplicate!422 (List!12539) Bool)

(assert (=> b!648272 (= res!420080 (not (noDuplicate!422 Nil!12536)))))

(declare-fun b!648273 () Bool)

(declare-fun res!420088 () Bool)

(declare-fun e!371820 () Bool)

(assert (=> b!648273 (=> (not res!420088) (not e!371820))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!648273 (= res!420088 (and (= (size!18809 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18809 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18809 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!371824 () Bool)

(declare-fun b!648274 () Bool)

(assert (=> b!648274 (= e!371824 (arrayContainsKey!0 lt!300910 (select (arr!18445 a!2986) j!136) index!984))))

(declare-fun b!648275 () Bool)

(declare-fun res!420097 () Bool)

(declare-fun e!371829 () Bool)

(assert (=> b!648275 (=> (not res!420097) (not e!371829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38486 (_ BitVec 32)) Bool)

(assert (=> b!648275 (= res!420097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!648276 () Bool)

(declare-fun e!371819 () Bool)

(assert (=> b!648276 (= e!371821 e!371819)))

(declare-fun res!420091 () Bool)

(assert (=> b!648276 (=> res!420091 e!371819)))

(assert (=> b!648276 (= res!420091 (bvsge index!984 j!136))))

(declare-fun lt!300917 () Unit!22024)

(assert (=> b!648276 (= lt!300917 e!371822)))

(declare-fun c!74462 () Bool)

(assert (=> b!648276 (= c!74462 (bvslt j!136 index!984))))

(declare-fun b!648277 () Bool)

(declare-fun e!371827 () Bool)

(assert (=> b!648277 (= e!371829 e!371827)))

(declare-fun res!420086 () Bool)

(assert (=> b!648277 (=> (not res!420086) (not e!371827))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!648277 (= res!420086 (= (select (store (arr!18445 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648277 (= lt!300910 (array!38487 (store (arr!18445 a!2986) i!1108 k0!1786) (size!18809 a!2986)))))

(declare-fun b!648278 () Bool)

(declare-fun res!420093 () Bool)

(assert (=> b!648278 (=> (not res!420093) (not e!371820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648278 (= res!420093 (validKeyInArray!0 (select (arr!18445 a!2986) j!136)))))

(declare-fun b!648279 () Bool)

(declare-fun res!420087 () Bool)

(assert (=> b!648279 (=> (not res!420087) (not e!371829))))

(assert (=> b!648279 (= res!420087 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12536))))

(declare-fun b!648280 () Bool)

(declare-fun res!420100 () Bool)

(assert (=> b!648280 (=> (not res!420100) (not e!371820))))

(assert (=> b!648280 (= res!420100 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648281 () Bool)

(declare-fun e!371825 () Bool)

(assert (=> b!648281 (= e!371827 e!371825)))

(declare-fun res!420090 () Bool)

(assert (=> b!648281 (=> (not res!420090) (not e!371825))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6892 0))(
  ( (MissingZero!6892 (index!29914 (_ BitVec 32))) (Found!6892 (index!29915 (_ BitVec 32))) (Intermediate!6892 (undefined!7704 Bool) (index!29916 (_ BitVec 32)) (x!58730 (_ BitVec 32))) (Undefined!6892) (MissingVacant!6892 (index!29917 (_ BitVec 32))) )
))
(declare-fun lt!300919 () SeekEntryResult!6892)

(assert (=> b!648281 (= res!420090 (and (= lt!300919 (Found!6892 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18445 a!2986) index!984) (select (arr!18445 a!2986) j!136))) (not (= (select (arr!18445 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38486 (_ BitVec 32)) SeekEntryResult!6892)

(assert (=> b!648281 (= lt!300919 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18445 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648283 () Bool)

(assert (=> b!648283 (= e!371825 (not e!371823))))

(declare-fun res!420094 () Bool)

(assert (=> b!648283 (=> res!420094 e!371823)))

(declare-fun lt!300923 () SeekEntryResult!6892)

(assert (=> b!648283 (= res!420094 (not (= lt!300923 (Found!6892 index!984))))))

(declare-fun lt!300924 () Unit!22024)

(assert (=> b!648283 (= lt!300924 e!371828)))

(declare-fun c!74461 () Bool)

(assert (=> b!648283 (= c!74461 (= lt!300923 Undefined!6892))))

(assert (=> b!648283 (= lt!300923 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300908 lt!300910 mask!3053))))

(declare-fun e!371817 () Bool)

(assert (=> b!648283 e!371817))

(declare-fun res!420095 () Bool)

(assert (=> b!648283 (=> (not res!420095) (not e!371817))))

(declare-fun lt!300915 () SeekEntryResult!6892)

(declare-fun lt!300912 () (_ BitVec 32))

(assert (=> b!648283 (= res!420095 (= lt!300915 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300912 vacantSpotIndex!68 lt!300908 lt!300910 mask!3053)))))

(assert (=> b!648283 (= lt!300915 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300912 vacantSpotIndex!68 (select (arr!18445 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648283 (= lt!300908 (select (store (arr!18445 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!300911 () Unit!22024)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38486 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22024)

(assert (=> b!648283 (= lt!300911 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300912 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648283 (= lt!300912 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648284 () Bool)

(declare-fun e!371826 () Bool)

(assert (=> b!648284 (= e!371826 (arrayContainsKey!0 lt!300910 (select (arr!18445 a!2986) j!136) index!984))))

(declare-fun b!648285 () Bool)

(declare-fun Unit!22029 () Unit!22024)

(assert (=> b!648285 (= e!371822 Unit!22029)))

(declare-fun b!648286 () Bool)

(declare-fun res!420096 () Bool)

(assert (=> b!648286 (=> res!420096 e!371818)))

(assert (=> b!648286 (= res!420096 (contains!3162 Nil!12536 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648287 () Bool)

(assert (=> b!648287 (= e!371819 e!371818)))

(declare-fun res!420081 () Bool)

(assert (=> b!648287 (=> res!420081 e!371818)))

(assert (=> b!648287 (= res!420081 (or (bvsge (size!18809 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18809 a!2986))))))

(assert (=> b!648287 (arrayContainsKey!0 lt!300910 (select (arr!18445 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300918 () Unit!22024)

(assert (=> b!648287 (= lt!300918 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300910 (select (arr!18445 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!648287 e!371826))

(declare-fun res!420083 () Bool)

(assert (=> b!648287 (=> (not res!420083) (not e!371826))))

(assert (=> b!648287 (= res!420083 (arrayContainsKey!0 lt!300910 (select (arr!18445 a!2986) j!136) j!136))))

(declare-fun b!648288 () Bool)

(assert (=> b!648288 (= e!371817 (= lt!300919 lt!300915))))

(declare-fun b!648289 () Bool)

(declare-fun res!420092 () Bool)

(assert (=> b!648289 (=> (not res!420092) (not e!371829))))

(assert (=> b!648289 (= res!420092 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18445 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648290 () Bool)

(declare-fun e!371816 () Bool)

(assert (=> b!648290 (= e!371816 e!371824)))

(declare-fun res!420101 () Bool)

(assert (=> b!648290 (=> (not res!420101) (not e!371824))))

(assert (=> b!648290 (= res!420101 (arrayContainsKey!0 lt!300910 (select (arr!18445 a!2986) j!136) j!136))))

(declare-fun b!648291 () Bool)

(assert (=> b!648291 (= e!371820 e!371829)))

(declare-fun res!420089 () Bool)

(assert (=> b!648291 (=> (not res!420089) (not e!371829))))

(declare-fun lt!300920 () SeekEntryResult!6892)

(assert (=> b!648291 (= res!420089 (or (= lt!300920 (MissingZero!6892 i!1108)) (= lt!300920 (MissingVacant!6892 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38486 (_ BitVec 32)) SeekEntryResult!6892)

(assert (=> b!648291 (= lt!300920 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!648292 () Bool)

(declare-fun res!420085 () Bool)

(assert (=> b!648292 (=> (not res!420085) (not e!371820))))

(assert (=> b!648292 (= res!420085 (validKeyInArray!0 k0!1786))))

(declare-fun b!648293 () Bool)

(assert (=> b!648293 (= e!371830 e!371816)))

(declare-fun res!420082 () Bool)

(assert (=> b!648293 (=> res!420082 e!371816)))

(assert (=> b!648293 (= res!420082 (or (not (= (select (arr!18445 a!2986) j!136) lt!300908)) (not (= (select (arr!18445 a!2986) j!136) lt!300916)) (bvsge j!136 index!984)))))

(declare-fun res!420079 () Bool)

(assert (=> start!58868 (=> (not res!420079) (not e!371820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58868 (= res!420079 (validMask!0 mask!3053))))

(assert (=> start!58868 e!371820))

(assert (=> start!58868 true))

(declare-fun array_inv!14219 (array!38486) Bool)

(assert (=> start!58868 (array_inv!14219 a!2986)))

(declare-fun b!648282 () Bool)

(assert (=> b!648282 (= e!371818 true)))

(declare-fun lt!300921 () Bool)

(assert (=> b!648282 (= lt!300921 (contains!3162 Nil!12536 k0!1786))))

(assert (= (and start!58868 res!420079) b!648273))

(assert (= (and b!648273 res!420088) b!648278))

(assert (= (and b!648278 res!420093) b!648292))

(assert (= (and b!648292 res!420085) b!648280))

(assert (= (and b!648280 res!420100) b!648291))

(assert (= (and b!648291 res!420089) b!648275))

(assert (= (and b!648275 res!420097) b!648279))

(assert (= (and b!648279 res!420087) b!648289))

(assert (= (and b!648289 res!420092) b!648277))

(assert (= (and b!648277 res!420086) b!648281))

(assert (= (and b!648281 res!420090) b!648283))

(assert (= (and b!648283 res!420095) b!648288))

(assert (= (and b!648283 c!74461) b!648270))

(assert (= (and b!648283 (not c!74461)) b!648268))

(assert (= (and b!648283 (not res!420094)) b!648267))

(assert (= (and b!648267 res!420098) b!648293))

(assert (= (and b!648293 (not res!420082)) b!648290))

(assert (= (and b!648290 res!420101) b!648274))

(assert (= (and b!648267 (not res!420099)) b!648276))

(assert (= (and b!648276 c!74462) b!648271))

(assert (= (and b!648276 (not c!74462)) b!648285))

(assert (= (and b!648276 (not res!420091)) b!648287))

(assert (= (and b!648287 res!420083) b!648284))

(assert (= (and b!648287 (not res!420081)) b!648272))

(assert (= (and b!648272 (not res!420080)) b!648269))

(assert (= (and b!648269 (not res!420084)) b!648286))

(assert (= (and b!648286 (not res!420096)) b!648282))

(declare-fun m!621699 () Bool)

(assert (=> b!648284 m!621699))

(assert (=> b!648284 m!621699))

(declare-fun m!621701 () Bool)

(assert (=> b!648284 m!621701))

(assert (=> b!648287 m!621699))

(assert (=> b!648287 m!621699))

(declare-fun m!621703 () Bool)

(assert (=> b!648287 m!621703))

(assert (=> b!648287 m!621699))

(declare-fun m!621705 () Bool)

(assert (=> b!648287 m!621705))

(assert (=> b!648287 m!621699))

(declare-fun m!621707 () Bool)

(assert (=> b!648287 m!621707))

(assert (=> b!648293 m!621699))

(declare-fun m!621709 () Bool)

(assert (=> b!648279 m!621709))

(declare-fun m!621711 () Bool)

(assert (=> b!648269 m!621711))

(declare-fun m!621713 () Bool)

(assert (=> b!648292 m!621713))

(assert (=> b!648267 m!621699))

(declare-fun m!621715 () Bool)

(assert (=> b!648267 m!621715))

(declare-fun m!621717 () Bool)

(assert (=> b!648267 m!621717))

(assert (=> b!648278 m!621699))

(assert (=> b!648278 m!621699))

(declare-fun m!621719 () Bool)

(assert (=> b!648278 m!621719))

(assert (=> b!648290 m!621699))

(assert (=> b!648290 m!621699))

(assert (=> b!648290 m!621707))

(declare-fun m!621721 () Bool)

(assert (=> b!648272 m!621721))

(assert (=> b!648274 m!621699))

(assert (=> b!648274 m!621699))

(assert (=> b!648274 m!621701))

(declare-fun m!621723 () Bool)

(assert (=> b!648289 m!621723))

(declare-fun m!621725 () Bool)

(assert (=> start!58868 m!621725))

(declare-fun m!621727 () Bool)

(assert (=> start!58868 m!621727))

(declare-fun m!621729 () Bool)

(assert (=> b!648275 m!621729))

(declare-fun m!621731 () Bool)

(assert (=> b!648281 m!621731))

(assert (=> b!648281 m!621699))

(assert (=> b!648281 m!621699))

(declare-fun m!621733 () Bool)

(assert (=> b!648281 m!621733))

(declare-fun m!621735 () Bool)

(assert (=> b!648286 m!621735))

(assert (=> b!648277 m!621715))

(declare-fun m!621737 () Bool)

(assert (=> b!648277 m!621737))

(declare-fun m!621739 () Bool)

(assert (=> b!648291 m!621739))

(declare-fun m!621741 () Bool)

(assert (=> b!648282 m!621741))

(declare-fun m!621743 () Bool)

(assert (=> b!648280 m!621743))

(assert (=> b!648271 m!621699))

(assert (=> b!648271 m!621699))

(declare-fun m!621745 () Bool)

(assert (=> b!648271 m!621745))

(assert (=> b!648271 m!621699))

(declare-fun m!621747 () Bool)

(assert (=> b!648271 m!621747))

(assert (=> b!648271 m!621699))

(declare-fun m!621749 () Bool)

(assert (=> b!648271 m!621749))

(declare-fun m!621751 () Bool)

(assert (=> b!648271 m!621751))

(declare-fun m!621753 () Bool)

(assert (=> b!648271 m!621753))

(declare-fun m!621755 () Bool)

(assert (=> b!648271 m!621755))

(declare-fun m!621757 () Bool)

(assert (=> b!648271 m!621757))

(declare-fun m!621759 () Bool)

(assert (=> b!648283 m!621759))

(assert (=> b!648283 m!621699))

(assert (=> b!648283 m!621699))

(declare-fun m!621761 () Bool)

(assert (=> b!648283 m!621761))

(declare-fun m!621763 () Bool)

(assert (=> b!648283 m!621763))

(declare-fun m!621765 () Bool)

(assert (=> b!648283 m!621765))

(declare-fun m!621767 () Bool)

(assert (=> b!648283 m!621767))

(declare-fun m!621769 () Bool)

(assert (=> b!648283 m!621769))

(assert (=> b!648283 m!621715))

(check-sat (not b!648269) (not b!648275) (not b!648283) (not b!648286) (not b!648271) (not b!648282) (not b!648281) (not b!648280) (not b!648279) (not b!648290) (not b!648274) (not b!648292) (not b!648287) (not b!648291) (not start!58868) (not b!648272) (not b!648278) (not b!648284))
(check-sat)
