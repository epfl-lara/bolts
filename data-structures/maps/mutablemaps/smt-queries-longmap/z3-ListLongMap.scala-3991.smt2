; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54146 () Bool)

(assert start!54146)

(declare-fun b!590874 () Bool)

(declare-fun res!378044 () Bool)

(declare-fun e!337374 () Bool)

(assert (=> b!590874 (=> (not res!378044) (not e!337374))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590874 (= res!378044 (validKeyInArray!0 k0!1786))))

(declare-fun b!590875 () Bool)

(declare-fun e!337368 () Bool)

(declare-fun e!337366 () Bool)

(assert (=> b!590875 (= e!337368 (not e!337366))))

(declare-fun res!378039 () Bool)

(assert (=> b!590875 (=> res!378039 e!337366)))

(declare-datatypes ((SeekEntryResult!6133 0))(
  ( (MissingZero!6133 (index!26767 (_ BitVec 32))) (Found!6133 (index!26768 (_ BitVec 32))) (Intermediate!6133 (undefined!6945 Bool) (index!26769 (_ BitVec 32)) (x!55590 (_ BitVec 32))) (Undefined!6133) (MissingVacant!6133 (index!26770 (_ BitVec 32))) )
))
(declare-fun lt!268130 () SeekEntryResult!6133)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590875 (= res!378039 (not (= lt!268130 (Found!6133 index!984))))))

(declare-datatypes ((Unit!18476 0))(
  ( (Unit!18477) )
))
(declare-fun lt!268123 () Unit!18476)

(declare-fun e!337371 () Unit!18476)

(assert (=> b!590875 (= lt!268123 e!337371)))

(declare-fun c!66788 () Bool)

(assert (=> b!590875 (= c!66788 (= lt!268130 Undefined!6133))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!268128 () (_ BitVec 64))

(declare-datatypes ((array!36839 0))(
  ( (array!36840 (arr!17686 (Array (_ BitVec 32) (_ BitVec 64))) (size!18050 (_ BitVec 32))) )
))
(declare-fun lt!268126 () array!36839)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36839 (_ BitVec 32)) SeekEntryResult!6133)

(assert (=> b!590875 (= lt!268130 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268128 lt!268126 mask!3053))))

(declare-fun e!337365 () Bool)

(assert (=> b!590875 e!337365))

(declare-fun res!378035 () Bool)

(assert (=> b!590875 (=> (not res!378035) (not e!337365))))

(declare-fun lt!268131 () (_ BitVec 32))

(declare-fun lt!268122 () SeekEntryResult!6133)

(assert (=> b!590875 (= res!378035 (= lt!268122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268131 vacantSpotIndex!68 lt!268128 lt!268126 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!36839)

(assert (=> b!590875 (= lt!268122 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268131 vacantSpotIndex!68 (select (arr!17686 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!590875 (= lt!268128 (select (store (arr!17686 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268127 () Unit!18476)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36839 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18476)

(assert (=> b!590875 (= lt!268127 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268131 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590875 (= lt!268131 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590876 () Bool)

(declare-fun res!378038 () Bool)

(assert (=> b!590876 (=> (not res!378038) (not e!337374))))

(declare-fun arrayContainsKey!0 (array!36839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590876 (= res!378038 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590877 () Bool)

(declare-fun res!378042 () Bool)

(assert (=> b!590877 (=> (not res!378042) (not e!337374))))

(assert (=> b!590877 (= res!378042 (validKeyInArray!0 (select (arr!17686 a!2986) j!136)))))

(declare-fun b!590878 () Bool)

(assert (=> b!590878 (= e!337366 true)))

(declare-fun e!337373 () Bool)

(assert (=> b!590878 e!337373))

(declare-fun res!378045 () Bool)

(assert (=> b!590878 (=> (not res!378045) (not e!337373))))

(declare-fun lt!268129 () (_ BitVec 64))

(assert (=> b!590878 (= res!378045 (= lt!268129 (select (arr!17686 a!2986) j!136)))))

(assert (=> b!590878 (= lt!268129 (select (store (arr!17686 a!2986) i!1108 k0!1786) index!984))))

(declare-fun res!378047 () Bool)

(assert (=> start!54146 (=> (not res!378047) (not e!337374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54146 (= res!378047 (validMask!0 mask!3053))))

(assert (=> start!54146 e!337374))

(assert (=> start!54146 true))

(declare-fun array_inv!13460 (array!36839) Bool)

(assert (=> start!54146 (array_inv!13460 a!2986)))

(declare-fun b!590879 () Bool)

(declare-fun e!337369 () Bool)

(assert (=> b!590879 (= e!337373 e!337369)))

(declare-fun res!378036 () Bool)

(assert (=> b!590879 (=> res!378036 e!337369)))

(assert (=> b!590879 (= res!378036 (or (not (= (select (arr!17686 a!2986) j!136) lt!268128)) (not (= (select (arr!17686 a!2986) j!136) lt!268129)) (bvsge j!136 index!984)))))

(declare-fun b!590880 () Bool)

(declare-fun Unit!18478 () Unit!18476)

(assert (=> b!590880 (= e!337371 Unit!18478)))

(assert (=> b!590880 false))

(declare-fun b!590881 () Bool)

(declare-fun e!337370 () Bool)

(assert (=> b!590881 (= e!337374 e!337370)))

(declare-fun res!378046 () Bool)

(assert (=> b!590881 (=> (not res!378046) (not e!337370))))

(declare-fun lt!268125 () SeekEntryResult!6133)

(assert (=> b!590881 (= res!378046 (or (= lt!268125 (MissingZero!6133 i!1108)) (= lt!268125 (MissingVacant!6133 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36839 (_ BitVec 32)) SeekEntryResult!6133)

(assert (=> b!590881 (= lt!268125 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!590882 () Bool)

(declare-fun Unit!18479 () Unit!18476)

(assert (=> b!590882 (= e!337371 Unit!18479)))

(declare-fun b!590883 () Bool)

(declare-fun e!337367 () Bool)

(assert (=> b!590883 (= e!337367 e!337368)))

(declare-fun res!378037 () Bool)

(assert (=> b!590883 (=> (not res!378037) (not e!337368))))

(declare-fun lt!268124 () SeekEntryResult!6133)

(assert (=> b!590883 (= res!378037 (and (= lt!268124 (Found!6133 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17686 a!2986) index!984) (select (arr!17686 a!2986) j!136))) (not (= (select (arr!17686 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!590883 (= lt!268124 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17686 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590884 () Bool)

(assert (=> b!590884 (= e!337365 (= lt!268124 lt!268122))))

(declare-fun b!590885 () Bool)

(declare-fun res!378033 () Bool)

(assert (=> b!590885 (=> (not res!378033) (not e!337370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36839 (_ BitVec 32)) Bool)

(assert (=> b!590885 (= res!378033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590886 () Bool)

(declare-fun res!378041 () Bool)

(assert (=> b!590886 (=> (not res!378041) (not e!337374))))

(assert (=> b!590886 (= res!378041 (and (= (size!18050 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18050 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18050 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590887 () Bool)

(declare-fun res!378032 () Bool)

(assert (=> b!590887 (=> (not res!378032) (not e!337370))))

(assert (=> b!590887 (= res!378032 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17686 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!337375 () Bool)

(declare-fun b!590888 () Bool)

(assert (=> b!590888 (= e!337375 (arrayContainsKey!0 lt!268126 (select (arr!17686 a!2986) j!136) index!984))))

(declare-fun b!590889 () Bool)

(assert (=> b!590889 (= e!337370 e!337367)))

(declare-fun res!378034 () Bool)

(assert (=> b!590889 (=> (not res!378034) (not e!337367))))

(assert (=> b!590889 (= res!378034 (= (select (store (arr!17686 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590889 (= lt!268126 (array!36840 (store (arr!17686 a!2986) i!1108 k0!1786) (size!18050 a!2986)))))

(declare-fun b!590890 () Bool)

(declare-fun res!378040 () Bool)

(assert (=> b!590890 (=> (not res!378040) (not e!337370))))

(declare-datatypes ((List!11780 0))(
  ( (Nil!11777) (Cons!11776 (h!12821 (_ BitVec 64)) (t!18016 List!11780)) )
))
(declare-fun arrayNoDuplicates!0 (array!36839 (_ BitVec 32) List!11780) Bool)

(assert (=> b!590890 (= res!378040 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11777))))

(declare-fun b!590891 () Bool)

(assert (=> b!590891 (= e!337369 e!337375)))

(declare-fun res!378043 () Bool)

(assert (=> b!590891 (=> (not res!378043) (not e!337375))))

(assert (=> b!590891 (= res!378043 (arrayContainsKey!0 lt!268126 (select (arr!17686 a!2986) j!136) j!136))))

(assert (= (and start!54146 res!378047) b!590886))

(assert (= (and b!590886 res!378041) b!590877))

(assert (= (and b!590877 res!378042) b!590874))

(assert (= (and b!590874 res!378044) b!590876))

(assert (= (and b!590876 res!378038) b!590881))

(assert (= (and b!590881 res!378046) b!590885))

(assert (= (and b!590885 res!378033) b!590890))

(assert (= (and b!590890 res!378040) b!590887))

(assert (= (and b!590887 res!378032) b!590889))

(assert (= (and b!590889 res!378034) b!590883))

(assert (= (and b!590883 res!378037) b!590875))

(assert (= (and b!590875 res!378035) b!590884))

(assert (= (and b!590875 c!66788) b!590880))

(assert (= (and b!590875 (not c!66788)) b!590882))

(assert (= (and b!590875 (not res!378039)) b!590878))

(assert (= (and b!590878 res!378045) b!590879))

(assert (= (and b!590879 (not res!378036)) b!590891))

(assert (= (and b!590891 res!378043) b!590888))

(declare-fun m!569209 () Bool)

(assert (=> b!590881 m!569209))

(declare-fun m!569211 () Bool)

(assert (=> b!590877 m!569211))

(assert (=> b!590877 m!569211))

(declare-fun m!569213 () Bool)

(assert (=> b!590877 m!569213))

(declare-fun m!569215 () Bool)

(assert (=> start!54146 m!569215))

(declare-fun m!569217 () Bool)

(assert (=> start!54146 m!569217))

(declare-fun m!569219 () Bool)

(assert (=> b!590875 m!569219))

(declare-fun m!569221 () Bool)

(assert (=> b!590875 m!569221))

(declare-fun m!569223 () Bool)

(assert (=> b!590875 m!569223))

(assert (=> b!590875 m!569211))

(declare-fun m!569225 () Bool)

(assert (=> b!590875 m!569225))

(assert (=> b!590875 m!569211))

(declare-fun m!569227 () Bool)

(assert (=> b!590875 m!569227))

(declare-fun m!569229 () Bool)

(assert (=> b!590875 m!569229))

(declare-fun m!569231 () Bool)

(assert (=> b!590875 m!569231))

(assert (=> b!590879 m!569211))

(declare-fun m!569233 () Bool)

(assert (=> b!590874 m!569233))

(declare-fun m!569235 () Bool)

(assert (=> b!590883 m!569235))

(assert (=> b!590883 m!569211))

(assert (=> b!590883 m!569211))

(declare-fun m!569237 () Bool)

(assert (=> b!590883 m!569237))

(declare-fun m!569239 () Bool)

(assert (=> b!590885 m!569239))

(assert (=> b!590878 m!569211))

(assert (=> b!590878 m!569229))

(declare-fun m!569241 () Bool)

(assert (=> b!590878 m!569241))

(assert (=> b!590889 m!569229))

(declare-fun m!569243 () Bool)

(assert (=> b!590889 m!569243))

(declare-fun m!569245 () Bool)

(assert (=> b!590887 m!569245))

(assert (=> b!590888 m!569211))

(assert (=> b!590888 m!569211))

(declare-fun m!569247 () Bool)

(assert (=> b!590888 m!569247))

(declare-fun m!569249 () Bool)

(assert (=> b!590890 m!569249))

(assert (=> b!590891 m!569211))

(assert (=> b!590891 m!569211))

(declare-fun m!569251 () Bool)

(assert (=> b!590891 m!569251))

(declare-fun m!569253 () Bool)

(assert (=> b!590876 m!569253))

(check-sat (not b!590881) (not b!590883) (not b!590888) (not b!590874) (not b!590876) (not b!590877) (not b!590885) (not b!590875) (not start!54146) (not b!590890) (not b!590891))
(check-sat)
