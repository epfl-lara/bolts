; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57924 () Bool)

(assert start!57924)

(declare-fun b!640040 () Bool)

(declare-fun e!366383 () Bool)

(declare-fun e!366382 () Bool)

(assert (=> b!640040 (= e!366383 e!366382)))

(declare-fun res!414498 () Bool)

(assert (=> b!640040 (=> res!414498 e!366382)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!296218 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38307 0))(
  ( (array!38308 (arr!18369 (Array (_ BitVec 32) (_ BitVec 64))) (size!18733 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38307)

(declare-fun lt!296209 () (_ BitVec 64))

(assert (=> b!640040 (= res!414498 (or (not (= (select (arr!18369 a!2986) j!136) lt!296218)) (not (= (select (arr!18369 a!2986) j!136) lt!296209)) (bvsge j!136 index!984)))))

(declare-fun b!640041 () Bool)

(declare-fun res!414508 () Bool)

(declare-fun e!366379 () Bool)

(assert (=> b!640041 (=> (not res!414508) (not e!366379))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!640041 (= res!414508 (and (= (size!18733 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18733 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18733 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640042 () Bool)

(declare-fun e!366381 () Bool)

(declare-fun e!366380 () Bool)

(assert (=> b!640042 (= e!366381 e!366380)))

(declare-fun res!414504 () Bool)

(assert (=> b!640042 (=> (not res!414504) (not e!366380))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6816 0))(
  ( (MissingZero!6816 (index!29583 (_ BitVec 32))) (Found!6816 (index!29584 (_ BitVec 32))) (Intermediate!6816 (undefined!7628 Bool) (index!29585 (_ BitVec 32)) (x!58373 (_ BitVec 32))) (Undefined!6816) (MissingVacant!6816 (index!29586 (_ BitVec 32))) )
))
(declare-fun lt!296211 () SeekEntryResult!6816)

(assert (=> b!640042 (= res!414504 (and (= lt!296211 (Found!6816 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18369 a!2986) index!984) (select (arr!18369 a!2986) j!136))) (not (= (select (arr!18369 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38307 (_ BitVec 32)) SeekEntryResult!6816)

(assert (=> b!640042 (= lt!296211 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18369 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640043 () Bool)

(declare-fun e!366384 () Bool)

(assert (=> b!640043 (= e!366379 e!366384)))

(declare-fun res!414496 () Bool)

(assert (=> b!640043 (=> (not res!414496) (not e!366384))))

(declare-fun lt!296219 () SeekEntryResult!6816)

(assert (=> b!640043 (= res!414496 (or (= lt!296219 (MissingZero!6816 i!1108)) (= lt!296219 (MissingVacant!6816 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38307 (_ BitVec 32)) SeekEntryResult!6816)

(assert (=> b!640043 (= lt!296219 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640044 () Bool)

(declare-fun e!366374 () Bool)

(declare-fun e!366375 () Bool)

(assert (=> b!640044 (= e!366374 e!366375)))

(declare-fun res!414501 () Bool)

(assert (=> b!640044 (=> res!414501 e!366375)))

(assert (=> b!640044 (= res!414501 (or (not (= (select (arr!18369 a!2986) j!136) lt!296218)) (not (= (select (arr!18369 a!2986) j!136) lt!296209)) (bvsge j!136 index!984)))))

(assert (=> b!640044 e!366383))

(declare-fun res!414499 () Bool)

(assert (=> b!640044 (=> (not res!414499) (not e!366383))))

(assert (=> b!640044 (= res!414499 (= lt!296209 (select (arr!18369 a!2986) j!136)))))

(assert (=> b!640044 (= lt!296209 (select (store (arr!18369 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640045 () Bool)

(declare-fun res!414505 () Bool)

(assert (=> b!640045 (=> (not res!414505) (not e!366379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640045 (= res!414505 (validKeyInArray!0 (select (arr!18369 a!2986) j!136)))))

(declare-fun b!640046 () Bool)

(assert (=> b!640046 (= e!366375 true)))

(declare-fun lt!296208 () array!38307)

(declare-datatypes ((List!12463 0))(
  ( (Nil!12460) (Cons!12459 (h!13504 (_ BitVec 64)) (t!18699 List!12463)) )
))
(declare-fun arrayNoDuplicates!0 (array!38307 (_ BitVec 32) List!12463) Bool)

(assert (=> b!640046 (arrayNoDuplicates!0 lt!296208 j!136 Nil!12460)))

(declare-datatypes ((Unit!21622 0))(
  ( (Unit!21623) )
))
(declare-fun lt!296217 () Unit!21622)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38307 (_ BitVec 32) (_ BitVec 32)) Unit!21622)

(assert (=> b!640046 (= lt!296217 (lemmaNoDuplicateFromThenFromBigger!0 lt!296208 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640046 (arrayNoDuplicates!0 lt!296208 #b00000000000000000000000000000000 Nil!12460)))

(declare-fun lt!296213 () Unit!21622)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38307 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12463) Unit!21622)

(assert (=> b!640046 (= lt!296213 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12460))))

(declare-fun arrayContainsKey!0 (array!38307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640046 (arrayContainsKey!0 lt!296208 (select (arr!18369 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296215 () Unit!21622)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38307 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21622)

(assert (=> b!640046 (= lt!296215 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296208 (select (arr!18369 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun res!414511 () Bool)

(assert (=> start!57924 (=> (not res!414511) (not e!366379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57924 (= res!414511 (validMask!0 mask!3053))))

(assert (=> start!57924 e!366379))

(assert (=> start!57924 true))

(declare-fun array_inv!14143 (array!38307) Bool)

(assert (=> start!57924 (array_inv!14143 a!2986)))

(declare-fun b!640047 () Bool)

(assert (=> b!640047 (= e!366380 (not e!366374))))

(declare-fun res!414500 () Bool)

(assert (=> b!640047 (=> res!414500 e!366374)))

(declare-fun lt!296220 () SeekEntryResult!6816)

(assert (=> b!640047 (= res!414500 (not (= lt!296220 (Found!6816 index!984))))))

(declare-fun lt!296210 () Unit!21622)

(declare-fun e!366378 () Unit!21622)

(assert (=> b!640047 (= lt!296210 e!366378)))

(declare-fun c!73139 () Bool)

(assert (=> b!640047 (= c!73139 (= lt!296220 Undefined!6816))))

(assert (=> b!640047 (= lt!296220 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296218 lt!296208 mask!3053))))

(declare-fun e!366385 () Bool)

(assert (=> b!640047 e!366385))

(declare-fun res!414509 () Bool)

(assert (=> b!640047 (=> (not res!414509) (not e!366385))))

(declare-fun lt!296212 () (_ BitVec 32))

(declare-fun lt!296216 () SeekEntryResult!6816)

(assert (=> b!640047 (= res!414509 (= lt!296216 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296212 vacantSpotIndex!68 lt!296218 lt!296208 mask!3053)))))

(assert (=> b!640047 (= lt!296216 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296212 vacantSpotIndex!68 (select (arr!18369 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640047 (= lt!296218 (select (store (arr!18369 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296214 () Unit!21622)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38307 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21622)

(assert (=> b!640047 (= lt!296214 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296212 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640047 (= lt!296212 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640048 () Bool)

(declare-fun Unit!21624 () Unit!21622)

(assert (=> b!640048 (= e!366378 Unit!21624)))

(declare-fun b!640049 () Bool)

(declare-fun e!366376 () Bool)

(assert (=> b!640049 (= e!366376 (arrayContainsKey!0 lt!296208 (select (arr!18369 a!2986) j!136) index!984))))

(declare-fun b!640050 () Bool)

(declare-fun res!414497 () Bool)

(assert (=> b!640050 (=> (not res!414497) (not e!366379))))

(assert (=> b!640050 (= res!414497 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640051 () Bool)

(declare-fun res!414512 () Bool)

(assert (=> b!640051 (=> (not res!414512) (not e!366384))))

(assert (=> b!640051 (= res!414512 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12460))))

(declare-fun b!640052 () Bool)

(declare-fun Unit!21625 () Unit!21622)

(assert (=> b!640052 (= e!366378 Unit!21625)))

(assert (=> b!640052 false))

(declare-fun b!640053 () Bool)

(assert (=> b!640053 (= e!366385 (= lt!296211 lt!296216))))

(declare-fun b!640054 () Bool)

(assert (=> b!640054 (= e!366382 e!366376)))

(declare-fun res!414503 () Bool)

(assert (=> b!640054 (=> (not res!414503) (not e!366376))))

(assert (=> b!640054 (= res!414503 (arrayContainsKey!0 lt!296208 (select (arr!18369 a!2986) j!136) j!136))))

(declare-fun b!640055 () Bool)

(declare-fun res!414502 () Bool)

(assert (=> b!640055 (=> (not res!414502) (not e!366384))))

(assert (=> b!640055 (= res!414502 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18369 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640056 () Bool)

(assert (=> b!640056 (= e!366384 e!366381)))

(declare-fun res!414510 () Bool)

(assert (=> b!640056 (=> (not res!414510) (not e!366381))))

(assert (=> b!640056 (= res!414510 (= (select (store (arr!18369 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640056 (= lt!296208 (array!38308 (store (arr!18369 a!2986) i!1108 k!1786) (size!18733 a!2986)))))

(declare-fun b!640057 () Bool)

(declare-fun res!414506 () Bool)

(assert (=> b!640057 (=> (not res!414506) (not e!366379))))

(assert (=> b!640057 (= res!414506 (validKeyInArray!0 k!1786))))

(declare-fun b!640058 () Bool)

(declare-fun res!414507 () Bool)

(assert (=> b!640058 (=> (not res!414507) (not e!366384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38307 (_ BitVec 32)) Bool)

(assert (=> b!640058 (= res!414507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!57924 res!414511) b!640041))

(assert (= (and b!640041 res!414508) b!640045))

(assert (= (and b!640045 res!414505) b!640057))

(assert (= (and b!640057 res!414506) b!640050))

(assert (= (and b!640050 res!414497) b!640043))

(assert (= (and b!640043 res!414496) b!640058))

(assert (= (and b!640058 res!414507) b!640051))

(assert (= (and b!640051 res!414512) b!640055))

(assert (= (and b!640055 res!414502) b!640056))

(assert (= (and b!640056 res!414510) b!640042))

(assert (= (and b!640042 res!414504) b!640047))

(assert (= (and b!640047 res!414509) b!640053))

(assert (= (and b!640047 c!73139) b!640052))

(assert (= (and b!640047 (not c!73139)) b!640048))

(assert (= (and b!640047 (not res!414500)) b!640044))

(assert (= (and b!640044 res!414499) b!640040))

(assert (= (and b!640040 (not res!414498)) b!640054))

(assert (= (and b!640054 res!414503) b!640049))

(assert (= (and b!640044 (not res!414501)) b!640046))

(declare-fun m!613941 () Bool)

(assert (=> b!640046 m!613941))

(declare-fun m!613943 () Bool)

(assert (=> b!640046 m!613943))

(assert (=> b!640046 m!613941))

(assert (=> b!640046 m!613941))

(declare-fun m!613945 () Bool)

(assert (=> b!640046 m!613945))

(declare-fun m!613947 () Bool)

(assert (=> b!640046 m!613947))

(declare-fun m!613949 () Bool)

(assert (=> b!640046 m!613949))

(declare-fun m!613951 () Bool)

(assert (=> b!640046 m!613951))

(declare-fun m!613953 () Bool)

(assert (=> b!640046 m!613953))

(declare-fun m!613955 () Bool)

(assert (=> b!640056 m!613955))

(declare-fun m!613957 () Bool)

(assert (=> b!640056 m!613957))

(declare-fun m!613959 () Bool)

(assert (=> b!640050 m!613959))

(declare-fun m!613961 () Bool)

(assert (=> b!640055 m!613961))

(declare-fun m!613963 () Bool)

(assert (=> b!640057 m!613963))

(declare-fun m!613965 () Bool)

(assert (=> start!57924 m!613965))

(declare-fun m!613967 () Bool)

(assert (=> start!57924 m!613967))

(assert (=> b!640040 m!613941))

(declare-fun m!613969 () Bool)

(assert (=> b!640043 m!613969))

(assert (=> b!640054 m!613941))

(assert (=> b!640054 m!613941))

(declare-fun m!613971 () Bool)

(assert (=> b!640054 m!613971))

(assert (=> b!640049 m!613941))

(assert (=> b!640049 m!613941))

(declare-fun m!613973 () Bool)

(assert (=> b!640049 m!613973))

(assert (=> b!640044 m!613941))

(assert (=> b!640044 m!613955))

(declare-fun m!613975 () Bool)

(assert (=> b!640044 m!613975))

(declare-fun m!613977 () Bool)

(assert (=> b!640047 m!613977))

(declare-fun m!613979 () Bool)

(assert (=> b!640047 m!613979))

(assert (=> b!640047 m!613941))

(assert (=> b!640047 m!613955))

(assert (=> b!640047 m!613941))

(declare-fun m!613981 () Bool)

(assert (=> b!640047 m!613981))

(declare-fun m!613983 () Bool)

(assert (=> b!640047 m!613983))

(declare-fun m!613985 () Bool)

(assert (=> b!640047 m!613985))

(declare-fun m!613987 () Bool)

(assert (=> b!640047 m!613987))

(declare-fun m!613989 () Bool)

(assert (=> b!640042 m!613989))

(assert (=> b!640042 m!613941))

(assert (=> b!640042 m!613941))

(declare-fun m!613991 () Bool)

(assert (=> b!640042 m!613991))

(declare-fun m!613993 () Bool)

(assert (=> b!640051 m!613993))

(declare-fun m!613995 () Bool)

(assert (=> b!640058 m!613995))

(assert (=> b!640045 m!613941))

(assert (=> b!640045 m!613941))

(declare-fun m!613997 () Bool)

(assert (=> b!640045 m!613997))

(push 1)

