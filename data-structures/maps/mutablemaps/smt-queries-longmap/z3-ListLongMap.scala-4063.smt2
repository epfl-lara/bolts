; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55616 () Bool)

(assert start!55616)

(declare-fun b!609553 () Bool)

(declare-fun res!392214 () Bool)

(declare-fun e!349118 () Bool)

(assert (=> b!609553 (=> (not res!392214) (not e!349118))))

(declare-datatypes ((array!37310 0))(
  ( (array!37311 (arr!17902 (Array (_ BitVec 32) (_ BitVec 64))) (size!18266 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37310)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37310 (_ BitVec 32)) Bool)

(assert (=> b!609553 (= res!392214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609554 () Bool)

(declare-datatypes ((Unit!19522 0))(
  ( (Unit!19523) )
))
(declare-fun e!349132 () Unit!19522)

(declare-fun Unit!19524 () Unit!19522)

(assert (=> b!609554 (= e!349132 Unit!19524)))

(declare-fun b!609555 () Bool)

(declare-fun e!349119 () Unit!19522)

(declare-fun Unit!19525 () Unit!19522)

(assert (=> b!609555 (= e!349119 Unit!19525)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!278756 () Unit!19522)

(declare-fun lt!278760 () array!37310)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37310 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19522)

(assert (=> b!609555 (= lt!278756 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278760 (select (arr!17902 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609555 (arrayContainsKey!0 lt!278760 (select (arr!17902 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278764 () Unit!19522)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((List!11996 0))(
  ( (Nil!11993) (Cons!11992 (h!13037 (_ BitVec 64)) (t!18232 List!11996)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37310 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11996) Unit!19522)

(assert (=> b!609555 (= lt!278764 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11993))))

(declare-fun arrayNoDuplicates!0 (array!37310 (_ BitVec 32) List!11996) Bool)

(assert (=> b!609555 (arrayNoDuplicates!0 lt!278760 #b00000000000000000000000000000000 Nil!11993)))

(declare-fun lt!278765 () Unit!19522)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37310 (_ BitVec 32) (_ BitVec 32)) Unit!19522)

(assert (=> b!609555 (= lt!278765 (lemmaNoDuplicateFromThenFromBigger!0 lt!278760 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609555 (arrayNoDuplicates!0 lt!278760 j!136 Nil!11993)))

(declare-fun lt!278767 () Unit!19522)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37310 (_ BitVec 64) (_ BitVec 32) List!11996) Unit!19522)

(assert (=> b!609555 (= lt!278767 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278760 (select (arr!17902 a!2986) j!136) j!136 Nil!11993))))

(assert (=> b!609555 false))

(declare-fun b!609556 () Bool)

(declare-fun res!392218 () Bool)

(declare-fun e!349123 () Bool)

(assert (=> b!609556 (=> (not res!392218) (not e!349123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609556 (= res!392218 (validKeyInArray!0 k0!1786))))

(declare-fun b!609557 () Bool)

(declare-fun res!392213 () Bool)

(assert (=> b!609557 (=> (not res!392213) (not e!349118))))

(assert (=> b!609557 (= res!392213 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11993))))

(declare-fun b!609558 () Bool)

(declare-fun e!349122 () Bool)

(declare-fun e!349130 () Bool)

(assert (=> b!609558 (= e!349122 e!349130)))

(declare-fun res!392203 () Bool)

(assert (=> b!609558 (=> res!392203 e!349130)))

(declare-fun lt!278759 () (_ BitVec 64))

(declare-fun lt!278763 () (_ BitVec 64))

(assert (=> b!609558 (= res!392203 (or (not (= (select (arr!17902 a!2986) j!136) lt!278759)) (not (= (select (arr!17902 a!2986) j!136) lt!278763)) (bvsge j!136 index!984)))))

(declare-fun res!392207 () Bool)

(assert (=> start!55616 (=> (not res!392207) (not e!349123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55616 (= res!392207 (validMask!0 mask!3053))))

(assert (=> start!55616 e!349123))

(assert (=> start!55616 true))

(declare-fun array_inv!13676 (array!37310) Bool)

(assert (=> start!55616 (array_inv!13676 a!2986)))

(declare-fun b!609559 () Bool)

(declare-fun Unit!19526 () Unit!19522)

(assert (=> b!609559 (= e!349132 Unit!19526)))

(assert (=> b!609559 false))

(declare-fun b!609560 () Bool)

(declare-fun e!349126 () Bool)

(assert (=> b!609560 (= e!349130 e!349126)))

(declare-fun res!392217 () Bool)

(assert (=> b!609560 (=> (not res!392217) (not e!349126))))

(assert (=> b!609560 (= res!392217 (arrayContainsKey!0 lt!278760 (select (arr!17902 a!2986) j!136) j!136))))

(declare-fun b!609561 () Bool)

(assert (=> b!609561 (= e!349126 (arrayContainsKey!0 lt!278760 (select (arr!17902 a!2986) j!136) index!984))))

(declare-fun b!609562 () Bool)

(declare-fun e!349125 () Bool)

(assert (=> b!609562 (= e!349118 e!349125)))

(declare-fun res!392209 () Bool)

(assert (=> b!609562 (=> (not res!392209) (not e!349125))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!609562 (= res!392209 (= (select (store (arr!17902 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609562 (= lt!278760 (array!37311 (store (arr!17902 a!2986) i!1108 k0!1786) (size!18266 a!2986)))))

(declare-fun b!609563 () Bool)

(declare-fun e!349124 () Bool)

(declare-fun e!349129 () Bool)

(assert (=> b!609563 (= e!349124 e!349129)))

(declare-fun res!392205 () Bool)

(assert (=> b!609563 (=> res!392205 e!349129)))

(assert (=> b!609563 (= res!392205 (bvsge index!984 j!136))))

(declare-fun lt!278753 () Unit!19522)

(assert (=> b!609563 (= lt!278753 e!349119)))

(declare-fun c!69043 () Bool)

(assert (=> b!609563 (= c!69043 (bvslt j!136 index!984))))

(declare-fun b!609564 () Bool)

(declare-fun res!392202 () Bool)

(assert (=> b!609564 (=> (not res!392202) (not e!349118))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!609564 (= res!392202 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17902 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609565 () Bool)

(declare-fun res!392204 () Bool)

(assert (=> b!609565 (=> (not res!392204) (not e!349123))))

(assert (=> b!609565 (= res!392204 (and (= (size!18266 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18266 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18266 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609566 () Bool)

(declare-fun e!349121 () Bool)

(declare-fun e!349128 () Bool)

(assert (=> b!609566 (= e!349121 (not e!349128))))

(declare-fun res!392212 () Bool)

(assert (=> b!609566 (=> res!392212 e!349128)))

(declare-datatypes ((SeekEntryResult!6349 0))(
  ( (MissingZero!6349 (index!27670 (_ BitVec 32))) (Found!6349 (index!27671 (_ BitVec 32))) (Intermediate!6349 (undefined!7161 Bool) (index!27672 (_ BitVec 32)) (x!56499 (_ BitVec 32))) (Undefined!6349) (MissingVacant!6349 (index!27673 (_ BitVec 32))) )
))
(declare-fun lt!278762 () SeekEntryResult!6349)

(assert (=> b!609566 (= res!392212 (not (= lt!278762 (Found!6349 index!984))))))

(declare-fun lt!278768 () Unit!19522)

(assert (=> b!609566 (= lt!278768 e!349132)))

(declare-fun c!69044 () Bool)

(assert (=> b!609566 (= c!69044 (= lt!278762 Undefined!6349))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37310 (_ BitVec 32)) SeekEntryResult!6349)

(assert (=> b!609566 (= lt!278762 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278759 lt!278760 mask!3053))))

(declare-fun e!349127 () Bool)

(assert (=> b!609566 e!349127))

(declare-fun res!392211 () Bool)

(assert (=> b!609566 (=> (not res!392211) (not e!349127))))

(declare-fun lt!278758 () SeekEntryResult!6349)

(declare-fun lt!278769 () (_ BitVec 32))

(assert (=> b!609566 (= res!392211 (= lt!278758 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278769 vacantSpotIndex!68 lt!278759 lt!278760 mask!3053)))))

(assert (=> b!609566 (= lt!278758 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278769 vacantSpotIndex!68 (select (arr!17902 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609566 (= lt!278759 (select (store (arr!17902 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!278761 () Unit!19522)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37310 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19522)

(assert (=> b!609566 (= lt!278761 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278769 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609566 (= lt!278769 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609567 () Bool)

(declare-fun res!392216 () Bool)

(assert (=> b!609567 (=> (not res!392216) (not e!349123))))

(assert (=> b!609567 (= res!392216 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609568 () Bool)

(declare-fun lt!278766 () SeekEntryResult!6349)

(assert (=> b!609568 (= e!349127 (= lt!278766 lt!278758))))

(declare-fun b!609569 () Bool)

(assert (=> b!609569 (= e!349128 e!349124)))

(declare-fun res!392206 () Bool)

(assert (=> b!609569 (=> res!392206 e!349124)))

(assert (=> b!609569 (= res!392206 (or (not (= (select (arr!17902 a!2986) j!136) lt!278759)) (not (= (select (arr!17902 a!2986) j!136) lt!278763))))))

(assert (=> b!609569 e!349122))

(declare-fun res!392208 () Bool)

(assert (=> b!609569 (=> (not res!392208) (not e!349122))))

(assert (=> b!609569 (= res!392208 (= lt!278763 (select (arr!17902 a!2986) j!136)))))

(assert (=> b!609569 (= lt!278763 (select (store (arr!17902 a!2986) i!1108 k0!1786) index!984))))

(declare-fun e!349120 () Bool)

(declare-fun b!609570 () Bool)

(assert (=> b!609570 (= e!349120 (arrayContainsKey!0 lt!278760 (select (arr!17902 a!2986) j!136) index!984))))

(declare-fun b!609571 () Bool)

(assert (=> b!609571 (= e!349123 e!349118)))

(declare-fun res!392215 () Bool)

(assert (=> b!609571 (=> (not res!392215) (not e!349118))))

(declare-fun lt!278755 () SeekEntryResult!6349)

(assert (=> b!609571 (= res!392215 (or (= lt!278755 (MissingZero!6349 i!1108)) (= lt!278755 (MissingVacant!6349 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37310 (_ BitVec 32)) SeekEntryResult!6349)

(assert (=> b!609571 (= lt!278755 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!609572 () Bool)

(declare-fun res!392219 () Bool)

(assert (=> b!609572 (=> (not res!392219) (not e!349123))))

(assert (=> b!609572 (= res!392219 (validKeyInArray!0 (select (arr!17902 a!2986) j!136)))))

(declare-fun b!609573 () Bool)

(assert (=> b!609573 (= e!349125 e!349121)))

(declare-fun res!392210 () Bool)

(assert (=> b!609573 (=> (not res!392210) (not e!349121))))

(assert (=> b!609573 (= res!392210 (and (= lt!278766 (Found!6349 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17902 a!2986) index!984) (select (arr!17902 a!2986) j!136))) (not (= (select (arr!17902 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609573 (= lt!278766 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17902 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609574 () Bool)

(assert (=> b!609574 (= e!349129 (bvsle #b00000000000000000000000000000000 (size!18266 a!2986)))))

(assert (=> b!609574 (arrayNoDuplicates!0 lt!278760 #b00000000000000000000000000000000 Nil!11993)))

(declare-fun lt!278754 () Unit!19522)

(assert (=> b!609574 (= lt!278754 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11993))))

(assert (=> b!609574 (arrayContainsKey!0 lt!278760 (select (arr!17902 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278757 () Unit!19522)

(assert (=> b!609574 (= lt!278757 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278760 (select (arr!17902 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!609574 e!349120))

(declare-fun res!392201 () Bool)

(assert (=> b!609574 (=> (not res!392201) (not e!349120))))

(assert (=> b!609574 (= res!392201 (arrayContainsKey!0 lt!278760 (select (arr!17902 a!2986) j!136) j!136))))

(declare-fun b!609575 () Bool)

(declare-fun Unit!19527 () Unit!19522)

(assert (=> b!609575 (= e!349119 Unit!19527)))

(assert (= (and start!55616 res!392207) b!609565))

(assert (= (and b!609565 res!392204) b!609572))

(assert (= (and b!609572 res!392219) b!609556))

(assert (= (and b!609556 res!392218) b!609567))

(assert (= (and b!609567 res!392216) b!609571))

(assert (= (and b!609571 res!392215) b!609553))

(assert (= (and b!609553 res!392214) b!609557))

(assert (= (and b!609557 res!392213) b!609564))

(assert (= (and b!609564 res!392202) b!609562))

(assert (= (and b!609562 res!392209) b!609573))

(assert (= (and b!609573 res!392210) b!609566))

(assert (= (and b!609566 res!392211) b!609568))

(assert (= (and b!609566 c!69044) b!609559))

(assert (= (and b!609566 (not c!69044)) b!609554))

(assert (= (and b!609566 (not res!392212)) b!609569))

(assert (= (and b!609569 res!392208) b!609558))

(assert (= (and b!609558 (not res!392203)) b!609560))

(assert (= (and b!609560 res!392217) b!609561))

(assert (= (and b!609569 (not res!392206)) b!609563))

(assert (= (and b!609563 c!69043) b!609555))

(assert (= (and b!609563 (not c!69043)) b!609575))

(assert (= (and b!609563 (not res!392205)) b!609574))

(assert (= (and b!609574 res!392201) b!609570))

(declare-fun m!586093 () Bool)

(assert (=> b!609557 m!586093))

(declare-fun m!586095 () Bool)

(assert (=> b!609558 m!586095))

(assert (=> b!609574 m!586095))

(assert (=> b!609574 m!586095))

(declare-fun m!586097 () Bool)

(assert (=> b!609574 m!586097))

(assert (=> b!609574 m!586095))

(declare-fun m!586099 () Bool)

(assert (=> b!609574 m!586099))

(declare-fun m!586101 () Bool)

(assert (=> b!609574 m!586101))

(declare-fun m!586103 () Bool)

(assert (=> b!609574 m!586103))

(assert (=> b!609574 m!586095))

(declare-fun m!586105 () Bool)

(assert (=> b!609574 m!586105))

(declare-fun m!586107 () Bool)

(assert (=> b!609566 m!586107))

(declare-fun m!586109 () Bool)

(assert (=> b!609566 m!586109))

(assert (=> b!609566 m!586095))

(assert (=> b!609566 m!586095))

(declare-fun m!586111 () Bool)

(assert (=> b!609566 m!586111))

(declare-fun m!586113 () Bool)

(assert (=> b!609566 m!586113))

(declare-fun m!586115 () Bool)

(assert (=> b!609566 m!586115))

(declare-fun m!586117 () Bool)

(assert (=> b!609566 m!586117))

(declare-fun m!586119 () Bool)

(assert (=> b!609566 m!586119))

(assert (=> b!609555 m!586095))

(declare-fun m!586121 () Bool)

(assert (=> b!609555 m!586121))

(assert (=> b!609555 m!586095))

(assert (=> b!609555 m!586095))

(declare-fun m!586123 () Bool)

(assert (=> b!609555 m!586123))

(declare-fun m!586125 () Bool)

(assert (=> b!609555 m!586125))

(assert (=> b!609555 m!586095))

(declare-fun m!586127 () Bool)

(assert (=> b!609555 m!586127))

(assert (=> b!609555 m!586101))

(assert (=> b!609555 m!586103))

(declare-fun m!586129 () Bool)

(assert (=> b!609555 m!586129))

(assert (=> b!609569 m!586095))

(assert (=> b!609569 m!586119))

(declare-fun m!586131 () Bool)

(assert (=> b!609569 m!586131))

(declare-fun m!586133 () Bool)

(assert (=> b!609571 m!586133))

(assert (=> b!609572 m!586095))

(assert (=> b!609572 m!586095))

(declare-fun m!586135 () Bool)

(assert (=> b!609572 m!586135))

(declare-fun m!586137 () Bool)

(assert (=> b!609567 m!586137))

(assert (=> b!609560 m!586095))

(assert (=> b!609560 m!586095))

(assert (=> b!609560 m!586105))

(assert (=> b!609570 m!586095))

(assert (=> b!609570 m!586095))

(declare-fun m!586139 () Bool)

(assert (=> b!609570 m!586139))

(declare-fun m!586141 () Bool)

(assert (=> start!55616 m!586141))

(declare-fun m!586143 () Bool)

(assert (=> start!55616 m!586143))

(declare-fun m!586145 () Bool)

(assert (=> b!609564 m!586145))

(declare-fun m!586147 () Bool)

(assert (=> b!609573 m!586147))

(assert (=> b!609573 m!586095))

(assert (=> b!609573 m!586095))

(declare-fun m!586149 () Bool)

(assert (=> b!609573 m!586149))

(assert (=> b!609561 m!586095))

(assert (=> b!609561 m!586095))

(assert (=> b!609561 m!586139))

(declare-fun m!586151 () Bool)

(assert (=> b!609553 m!586151))

(declare-fun m!586153 () Bool)

(assert (=> b!609556 m!586153))

(assert (=> b!609562 m!586119))

(declare-fun m!586155 () Bool)

(assert (=> b!609562 m!586155))

(check-sat (not b!609557) (not b!609572) (not b!609555) (not b!609560) (not b!609553) (not b!609571) (not b!609567) (not b!609573) (not b!609566) (not start!55616) (not b!609556) (not b!609570) (not b!609561) (not b!609574))
(check-sat)
