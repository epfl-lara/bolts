; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55926 () Bool)

(assert start!55926)

(declare-fun b!612028 () Bool)

(declare-fun e!350793 () Bool)

(declare-fun e!350791 () Bool)

(assert (=> b!612028 (= e!350793 e!350791)))

(declare-fun res!393824 () Bool)

(assert (=> b!612028 (=> res!393824 e!350791)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!280228 () (_ BitVec 64))

(declare-fun lt!280233 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37359 0))(
  ( (array!37360 (arr!17922 (Array (_ BitVec 32) (_ BitVec 64))) (size!18286 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37359)

(assert (=> b!612028 (= res!393824 (or (not (= (select (arr!17922 a!2986) j!136) lt!280228)) (not (= (select (arr!17922 a!2986) j!136) lt!280233)) (bvsge j!136 index!984)))))

(declare-fun b!612030 () Bool)

(declare-fun res!393809 () Bool)

(declare-fun e!350798 () Bool)

(assert (=> b!612030 (=> (not res!393809) (not e!350798))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37359 (_ BitVec 32)) Bool)

(assert (=> b!612030 (= res!393809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!612031 () Bool)

(declare-datatypes ((Unit!19642 0))(
  ( (Unit!19643) )
))
(declare-fun e!350802 () Unit!19642)

(declare-fun Unit!19644 () Unit!19642)

(assert (=> b!612031 (= e!350802 Unit!19644)))

(declare-fun b!612032 () Bool)

(declare-fun res!393823 () Bool)

(declare-fun e!350800 () Bool)

(assert (=> b!612032 (=> (not res!393823) (not e!350800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612032 (= res!393823 (validKeyInArray!0 (select (arr!17922 a!2986) j!136)))))

(declare-fun b!612033 () Bool)

(declare-fun e!350794 () Unit!19642)

(declare-fun Unit!19645 () Unit!19642)

(assert (=> b!612033 (= e!350794 Unit!19645)))

(declare-fun lt!280242 () array!37359)

(declare-fun lt!280234 () Unit!19642)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37359 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19642)

(assert (=> b!612033 (= lt!280234 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280242 (select (arr!17922 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!612033 (arrayContainsKey!0 lt!280242 (select (arr!17922 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280230 () Unit!19642)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!12016 0))(
  ( (Nil!12013) (Cons!12012 (h!13057 (_ BitVec 64)) (t!18252 List!12016)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37359 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12016) Unit!19642)

(assert (=> b!612033 (= lt!280230 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12013))))

(declare-fun arrayNoDuplicates!0 (array!37359 (_ BitVec 32) List!12016) Bool)

(assert (=> b!612033 (arrayNoDuplicates!0 lt!280242 #b00000000000000000000000000000000 Nil!12013)))

(declare-fun lt!280227 () Unit!19642)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37359 (_ BitVec 32) (_ BitVec 32)) Unit!19642)

(assert (=> b!612033 (= lt!280227 (lemmaNoDuplicateFromThenFromBigger!0 lt!280242 #b00000000000000000000000000000000 j!136))))

(assert (=> b!612033 (arrayNoDuplicates!0 lt!280242 j!136 Nil!12013)))

(declare-fun lt!280235 () Unit!19642)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37359 (_ BitVec 64) (_ BitVec 32) List!12016) Unit!19642)

(assert (=> b!612033 (= lt!280235 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280242 (select (arr!17922 a!2986) j!136) j!136 Nil!12013))))

(assert (=> b!612033 false))

(declare-fun b!612034 () Bool)

(declare-fun e!350801 () Bool)

(assert (=> b!612034 (= e!350801 (arrayContainsKey!0 lt!280242 (select (arr!17922 a!2986) j!136) index!984))))

(declare-fun b!612035 () Bool)

(declare-fun res!393808 () Bool)

(assert (=> b!612035 (=> (not res!393808) (not e!350800))))

(assert (=> b!612035 (= res!393808 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!612036 () Bool)

(declare-fun e!350795 () Bool)

(declare-datatypes ((SeekEntryResult!6369 0))(
  ( (MissingZero!6369 (index!27759 (_ BitVec 32))) (Found!6369 (index!27760 (_ BitVec 32))) (Intermediate!6369 (undefined!7181 Bool) (index!27761 (_ BitVec 32)) (x!56602 (_ BitVec 32))) (Undefined!6369) (MissingVacant!6369 (index!27762 (_ BitVec 32))) )
))
(declare-fun lt!280229 () SeekEntryResult!6369)

(declare-fun lt!280238 () SeekEntryResult!6369)

(assert (=> b!612036 (= e!350795 (= lt!280229 lt!280238))))

(declare-fun b!612037 () Bool)

(declare-fun e!350789 () Bool)

(declare-fun e!350803 () Bool)

(assert (=> b!612037 (= e!350789 e!350803)))

(declare-fun res!393810 () Bool)

(assert (=> b!612037 (=> (not res!393810) (not e!350803))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!612037 (= res!393810 (and (= lt!280229 (Found!6369 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17922 a!2986) index!984) (select (arr!17922 a!2986) j!136))) (not (= (select (arr!17922 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37359 (_ BitVec 32)) SeekEntryResult!6369)

(assert (=> b!612037 (= lt!280229 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17922 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!393814 () Bool)

(assert (=> start!55926 (=> (not res!393814) (not e!350800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55926 (= res!393814 (validMask!0 mask!3053))))

(assert (=> start!55926 e!350800))

(assert (=> start!55926 true))

(declare-fun array_inv!13696 (array!37359) Bool)

(assert (=> start!55926 (array_inv!13696 a!2986)))

(declare-fun b!612029 () Bool)

(declare-fun e!350799 () Bool)

(assert (=> b!612029 (= e!350799 true)))

(assert (=> b!612029 (arrayNoDuplicates!0 lt!280242 #b00000000000000000000000000000000 Nil!12013)))

(declare-fun lt!280239 () Unit!19642)

(assert (=> b!612029 (= lt!280239 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12013))))

(assert (=> b!612029 (arrayContainsKey!0 lt!280242 (select (arr!17922 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280237 () Unit!19642)

(assert (=> b!612029 (= lt!280237 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280242 (select (arr!17922 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!350796 () Bool)

(assert (=> b!612029 e!350796))

(declare-fun res!393813 () Bool)

(assert (=> b!612029 (=> (not res!393813) (not e!350796))))

(assert (=> b!612029 (= res!393813 (arrayContainsKey!0 lt!280242 (select (arr!17922 a!2986) j!136) j!136))))

(declare-fun b!612038 () Bool)

(assert (=> b!612038 (= e!350791 e!350801)))

(declare-fun res!393822 () Bool)

(assert (=> b!612038 (=> (not res!393822) (not e!350801))))

(assert (=> b!612038 (= res!393822 (arrayContainsKey!0 lt!280242 (select (arr!17922 a!2986) j!136) j!136))))

(declare-fun b!612039 () Bool)

(assert (=> b!612039 (= e!350800 e!350798)))

(declare-fun res!393820 () Bool)

(assert (=> b!612039 (=> (not res!393820) (not e!350798))))

(declare-fun lt!280231 () SeekEntryResult!6369)

(assert (=> b!612039 (= res!393820 (or (= lt!280231 (MissingZero!6369 i!1108)) (= lt!280231 (MissingVacant!6369 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37359 (_ BitVec 32)) SeekEntryResult!6369)

(assert (=> b!612039 (= lt!280231 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!612040 () Bool)

(declare-fun e!350790 () Bool)

(assert (=> b!612040 (= e!350790 e!350799)))

(declare-fun res!393819 () Bool)

(assert (=> b!612040 (=> res!393819 e!350799)))

(assert (=> b!612040 (= res!393819 (bvsge index!984 j!136))))

(declare-fun lt!280240 () Unit!19642)

(assert (=> b!612040 (= lt!280240 e!350794)))

(declare-fun c!69478 () Bool)

(assert (=> b!612040 (= c!69478 (bvslt j!136 index!984))))

(declare-fun b!612041 () Bool)

(declare-fun Unit!19646 () Unit!19642)

(assert (=> b!612041 (= e!350794 Unit!19646)))

(declare-fun b!612042 () Bool)

(declare-fun e!350797 () Bool)

(assert (=> b!612042 (= e!350797 e!350790)))

(declare-fun res!393812 () Bool)

(assert (=> b!612042 (=> res!393812 e!350790)))

(assert (=> b!612042 (= res!393812 (or (not (= (select (arr!17922 a!2986) j!136) lt!280228)) (not (= (select (arr!17922 a!2986) j!136) lt!280233))))))

(assert (=> b!612042 e!350793))

(declare-fun res!393817 () Bool)

(assert (=> b!612042 (=> (not res!393817) (not e!350793))))

(assert (=> b!612042 (= res!393817 (= lt!280233 (select (arr!17922 a!2986) j!136)))))

(assert (=> b!612042 (= lt!280233 (select (store (arr!17922 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!612043 () Bool)

(assert (=> b!612043 (= e!350798 e!350789)))

(declare-fun res!393818 () Bool)

(assert (=> b!612043 (=> (not res!393818) (not e!350789))))

(assert (=> b!612043 (= res!393818 (= (select (store (arr!17922 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!612043 (= lt!280242 (array!37360 (store (arr!17922 a!2986) i!1108 k!1786) (size!18286 a!2986)))))

(declare-fun b!612044 () Bool)

(assert (=> b!612044 (= e!350796 (arrayContainsKey!0 lt!280242 (select (arr!17922 a!2986) j!136) index!984))))

(declare-fun b!612045 () Bool)

(declare-fun res!393816 () Bool)

(assert (=> b!612045 (=> (not res!393816) (not e!350800))))

(assert (=> b!612045 (= res!393816 (and (= (size!18286 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18286 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18286 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!612046 () Bool)

(declare-fun res!393815 () Bool)

(assert (=> b!612046 (=> (not res!393815) (not e!350798))))

(assert (=> b!612046 (= res!393815 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12013))))

(declare-fun b!612047 () Bool)

(assert (=> b!612047 (= e!350803 (not e!350797))))

(declare-fun res!393811 () Bool)

(assert (=> b!612047 (=> res!393811 e!350797)))

(declare-fun lt!280226 () SeekEntryResult!6369)

(assert (=> b!612047 (= res!393811 (not (= lt!280226 (Found!6369 index!984))))))

(declare-fun lt!280236 () Unit!19642)

(assert (=> b!612047 (= lt!280236 e!350802)))

(declare-fun c!69479 () Bool)

(assert (=> b!612047 (= c!69479 (= lt!280226 Undefined!6369))))

(assert (=> b!612047 (= lt!280226 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280228 lt!280242 mask!3053))))

(assert (=> b!612047 e!350795))

(declare-fun res!393806 () Bool)

(assert (=> b!612047 (=> (not res!393806) (not e!350795))))

(declare-fun lt!280232 () (_ BitVec 32))

(assert (=> b!612047 (= res!393806 (= lt!280238 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280232 vacantSpotIndex!68 lt!280228 lt!280242 mask!3053)))))

(assert (=> b!612047 (= lt!280238 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280232 vacantSpotIndex!68 (select (arr!17922 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!612047 (= lt!280228 (select (store (arr!17922 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!280241 () Unit!19642)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37359 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19642)

(assert (=> b!612047 (= lt!280241 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280232 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!612047 (= lt!280232 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!612048 () Bool)

(declare-fun Unit!19647 () Unit!19642)

(assert (=> b!612048 (= e!350802 Unit!19647)))

(assert (=> b!612048 false))

(declare-fun b!612049 () Bool)

(declare-fun res!393821 () Bool)

(assert (=> b!612049 (=> (not res!393821) (not e!350798))))

(assert (=> b!612049 (= res!393821 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17922 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!612050 () Bool)

(declare-fun res!393807 () Bool)

(assert (=> b!612050 (=> (not res!393807) (not e!350800))))

(assert (=> b!612050 (= res!393807 (validKeyInArray!0 k!1786))))

(assert (= (and start!55926 res!393814) b!612045))

(assert (= (and b!612045 res!393816) b!612032))

(assert (= (and b!612032 res!393823) b!612050))

(assert (= (and b!612050 res!393807) b!612035))

(assert (= (and b!612035 res!393808) b!612039))

(assert (= (and b!612039 res!393820) b!612030))

(assert (= (and b!612030 res!393809) b!612046))

(assert (= (and b!612046 res!393815) b!612049))

(assert (= (and b!612049 res!393821) b!612043))

(assert (= (and b!612043 res!393818) b!612037))

(assert (= (and b!612037 res!393810) b!612047))

(assert (= (and b!612047 res!393806) b!612036))

(assert (= (and b!612047 c!69479) b!612048))

(assert (= (and b!612047 (not c!69479)) b!612031))

(assert (= (and b!612047 (not res!393811)) b!612042))

(assert (= (and b!612042 res!393817) b!612028))

(assert (= (and b!612028 (not res!393824)) b!612038))

(assert (= (and b!612038 res!393822) b!612034))

(assert (= (and b!612042 (not res!393812)) b!612040))

(assert (= (and b!612040 c!69478) b!612033))

(assert (= (and b!612040 (not c!69478)) b!612041))

(assert (= (and b!612040 (not res!393819)) b!612029))

(assert (= (and b!612029 res!393813) b!612044))

(declare-fun m!588441 () Bool)

(assert (=> b!612042 m!588441))

(declare-fun m!588443 () Bool)

(assert (=> b!612042 m!588443))

(declare-fun m!588445 () Bool)

(assert (=> b!612042 m!588445))

(declare-fun m!588447 () Bool)

(assert (=> b!612039 m!588447))

(declare-fun m!588449 () Bool)

(assert (=> b!612035 m!588449))

(assert (=> b!612029 m!588441))

(assert (=> b!612029 m!588441))

(declare-fun m!588451 () Bool)

(assert (=> b!612029 m!588451))

(declare-fun m!588453 () Bool)

(assert (=> b!612029 m!588453))

(declare-fun m!588455 () Bool)

(assert (=> b!612029 m!588455))

(assert (=> b!612029 m!588441))

(declare-fun m!588457 () Bool)

(assert (=> b!612029 m!588457))

(assert (=> b!612029 m!588441))

(declare-fun m!588459 () Bool)

(assert (=> b!612029 m!588459))

(assert (=> b!612034 m!588441))

(assert (=> b!612034 m!588441))

(declare-fun m!588461 () Bool)

(assert (=> b!612034 m!588461))

(assert (=> b!612032 m!588441))

(assert (=> b!612032 m!588441))

(declare-fun m!588463 () Bool)

(assert (=> b!612032 m!588463))

(declare-fun m!588465 () Bool)

(assert (=> b!612047 m!588465))

(declare-fun m!588467 () Bool)

(assert (=> b!612047 m!588467))

(assert (=> b!612047 m!588441))

(assert (=> b!612047 m!588443))

(declare-fun m!588469 () Bool)

(assert (=> b!612047 m!588469))

(declare-fun m!588471 () Bool)

(assert (=> b!612047 m!588471))

(declare-fun m!588473 () Bool)

(assert (=> b!612047 m!588473))

(assert (=> b!612047 m!588441))

(declare-fun m!588475 () Bool)

(assert (=> b!612047 m!588475))

(assert (=> b!612043 m!588443))

(declare-fun m!588477 () Bool)

(assert (=> b!612043 m!588477))

(assert (=> b!612038 m!588441))

(assert (=> b!612038 m!588441))

(assert (=> b!612038 m!588457))

(declare-fun m!588479 () Bool)

(assert (=> b!612049 m!588479))

(declare-fun m!588481 () Bool)

(assert (=> start!55926 m!588481))

(declare-fun m!588483 () Bool)

(assert (=> start!55926 m!588483))

(declare-fun m!588485 () Bool)

(assert (=> b!612050 m!588485))

(assert (=> b!612033 m!588441))

(declare-fun m!588487 () Bool)

(assert (=> b!612033 m!588487))

(assert (=> b!612033 m!588441))

(declare-fun m!588489 () Bool)

(assert (=> b!612033 m!588489))

(assert (=> b!612033 m!588441))

(declare-fun m!588491 () Bool)

(assert (=> b!612033 m!588491))

(assert (=> b!612033 m!588441))

(declare-fun m!588493 () Bool)

(assert (=> b!612033 m!588493))

(assert (=> b!612033 m!588453))

(declare-fun m!588495 () Bool)

(assert (=> b!612033 m!588495))

(assert (=> b!612033 m!588455))

(declare-fun m!588497 () Bool)

(assert (=> b!612046 m!588497))

(declare-fun m!588499 () Bool)

(assert (=> b!612030 m!588499))

(declare-fun m!588501 () Bool)

(assert (=> b!612037 m!588501))

(assert (=> b!612037 m!588441))

(assert (=> b!612037 m!588441))

(declare-fun m!588503 () Bool)

(assert (=> b!612037 m!588503))

(assert (=> b!612044 m!588441))

(assert (=> b!612044 m!588441))

(assert (=> b!612044 m!588461))

(assert (=> b!612028 m!588441))

(push 1)

