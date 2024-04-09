; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59012 () Bool)

(assert start!59012)

(declare-fun b!650831 () Bool)

(declare-datatypes ((Unit!22204 0))(
  ( (Unit!22205) )
))
(declare-fun e!373443 () Unit!22204)

(declare-fun Unit!22206 () Unit!22204)

(assert (=> b!650831 (= e!373443 Unit!22206)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38549 0))(
  ( (array!38550 (arr!18475 (Array (_ BitVec 32) (_ BitVec 64))) (size!18839 (_ BitVec 32))) )
))
(declare-fun lt!302585 () array!38549)

(declare-fun lt!302592 () Unit!22204)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38549)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38549 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22204)

(assert (=> b!650831 (= lt!302592 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302585 (select (arr!18475 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650831 (arrayContainsKey!0 lt!302585 (select (arr!18475 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!302601 () Unit!22204)

(declare-datatypes ((List!12569 0))(
  ( (Nil!12566) (Cons!12565 (h!13610 (_ BitVec 64)) (t!18805 List!12569)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38549 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12569) Unit!22204)

(assert (=> b!650831 (= lt!302601 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12566))))

(declare-fun arrayNoDuplicates!0 (array!38549 (_ BitVec 32) List!12569) Bool)

(assert (=> b!650831 (arrayNoDuplicates!0 lt!302585 #b00000000000000000000000000000000 Nil!12566)))

(declare-fun lt!302593 () Unit!22204)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38549 (_ BitVec 32) (_ BitVec 32)) Unit!22204)

(assert (=> b!650831 (= lt!302593 (lemmaNoDuplicateFromThenFromBigger!0 lt!302585 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650831 (arrayNoDuplicates!0 lt!302585 j!136 Nil!12566)))

(declare-fun lt!302591 () Unit!22204)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38549 (_ BitVec 64) (_ BitVec 32) List!12569) Unit!22204)

(assert (=> b!650831 (= lt!302591 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302585 (select (arr!18475 a!2986) j!136) j!136 Nil!12566))))

(assert (=> b!650831 false))

(declare-fun b!650832 () Bool)

(declare-fun Unit!22207 () Unit!22204)

(assert (=> b!650832 (= e!373443 Unit!22207)))

(declare-fun b!650833 () Bool)

(declare-fun e!373441 () Bool)

(declare-fun e!373442 () Bool)

(assert (=> b!650833 (= e!373441 e!373442)))

(declare-fun res!422073 () Bool)

(assert (=> b!650833 (=> res!422073 e!373442)))

(declare-fun lt!302596 () (_ BitVec 64))

(declare-fun lt!302588 () (_ BitVec 64))

(assert (=> b!650833 (= res!422073 (or (not (= (select (arr!18475 a!2986) j!136) lt!302588)) (not (= (select (arr!18475 a!2986) j!136) lt!302596)) (bvsge j!136 index!984)))))

(declare-fun b!650834 () Bool)

(declare-fun e!373445 () Bool)

(assert (=> b!650834 (= e!373442 e!373445)))

(declare-fun res!422079 () Bool)

(assert (=> b!650834 (=> (not res!422079) (not e!373445))))

(assert (=> b!650834 (= res!422079 (arrayContainsKey!0 lt!302585 (select (arr!18475 a!2986) j!136) j!136))))

(declare-fun b!650835 () Bool)

(declare-fun res!422082 () Bool)

(declare-fun e!373447 () Bool)

(assert (=> b!650835 (=> (not res!422082) (not e!373447))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38549 (_ BitVec 32)) Bool)

(assert (=> b!650835 (= res!422082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650836 () Bool)

(declare-fun e!373436 () Bool)

(assert (=> b!650836 (= e!373447 e!373436)))

(declare-fun res!422087 () Bool)

(assert (=> b!650836 (=> (not res!422087) (not e!373436))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!650836 (= res!422087 (= (select (store (arr!18475 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650836 (= lt!302585 (array!38550 (store (arr!18475 a!2986) i!1108 k0!1786) (size!18839 a!2986)))))

(declare-fun b!650837 () Bool)

(declare-fun res!422089 () Bool)

(declare-fun e!373438 () Bool)

(assert (=> b!650837 (=> (not res!422089) (not e!373438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650837 (= res!422089 (validKeyInArray!0 k0!1786))))

(declare-fun b!650838 () Bool)

(declare-fun e!373433 () Bool)

(declare-fun e!373440 () Bool)

(assert (=> b!650838 (= e!373433 e!373440)))

(declare-fun res!422081 () Bool)

(assert (=> b!650838 (=> res!422081 e!373440)))

(assert (=> b!650838 (= res!422081 (bvsge index!984 j!136))))

(declare-fun lt!302587 () Unit!22204)

(assert (=> b!650838 (= lt!302587 e!373443)))

(declare-fun c!74746 () Bool)

(assert (=> b!650838 (= c!74746 (bvslt j!136 index!984))))

(declare-fun b!650839 () Bool)

(declare-fun res!422074 () Bool)

(assert (=> b!650839 (=> (not res!422074) (not e!373447))))

(assert (=> b!650839 (= res!422074 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12566))))

(declare-fun b!650830 () Bool)

(declare-fun res!422080 () Bool)

(assert (=> b!650830 (=> (not res!422080) (not e!373438))))

(assert (=> b!650830 (= res!422080 (validKeyInArray!0 (select (arr!18475 a!2986) j!136)))))

(declare-fun res!422090 () Bool)

(assert (=> start!59012 (=> (not res!422090) (not e!373438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59012 (= res!422090 (validMask!0 mask!3053))))

(assert (=> start!59012 e!373438))

(assert (=> start!59012 true))

(declare-fun array_inv!14249 (array!38549) Bool)

(assert (=> start!59012 (array_inv!14249 a!2986)))

(declare-fun b!650840 () Bool)

(assert (=> b!650840 (= e!373440 true)))

(assert (=> b!650840 (arrayNoDuplicates!0 lt!302585 #b00000000000000000000000000000000 Nil!12566)))

(declare-fun lt!302595 () Unit!22204)

(assert (=> b!650840 (= lt!302595 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12566))))

(assert (=> b!650840 (arrayContainsKey!0 lt!302585 (select (arr!18475 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302586 () Unit!22204)

(assert (=> b!650840 (= lt!302586 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302585 (select (arr!18475 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!373435 () Bool)

(assert (=> b!650840 e!373435))

(declare-fun res!422076 () Bool)

(assert (=> b!650840 (=> (not res!422076) (not e!373435))))

(assert (=> b!650840 (= res!422076 (arrayContainsKey!0 lt!302585 (select (arr!18475 a!2986) j!136) j!136))))

(declare-fun b!650841 () Bool)

(declare-fun e!373434 () Bool)

(declare-fun e!373444 () Bool)

(assert (=> b!650841 (= e!373434 (not e!373444))))

(declare-fun res!422083 () Bool)

(assert (=> b!650841 (=> res!422083 e!373444)))

(declare-datatypes ((SeekEntryResult!6922 0))(
  ( (MissingZero!6922 (index!30037 (_ BitVec 32))) (Found!6922 (index!30038 (_ BitVec 32))) (Intermediate!6922 (undefined!7734 Bool) (index!30039 (_ BitVec 32)) (x!58849 (_ BitVec 32))) (Undefined!6922) (MissingVacant!6922 (index!30040 (_ BitVec 32))) )
))
(declare-fun lt!302598 () SeekEntryResult!6922)

(assert (=> b!650841 (= res!422083 (not (= lt!302598 (Found!6922 index!984))))))

(declare-fun lt!302589 () Unit!22204)

(declare-fun e!373437 () Unit!22204)

(assert (=> b!650841 (= lt!302589 e!373437)))

(declare-fun c!74747 () Bool)

(assert (=> b!650841 (= c!74747 (= lt!302598 Undefined!6922))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38549 (_ BitVec 32)) SeekEntryResult!6922)

(assert (=> b!650841 (= lt!302598 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302588 lt!302585 mask!3053))))

(declare-fun e!373439 () Bool)

(assert (=> b!650841 e!373439))

(declare-fun res!422084 () Bool)

(assert (=> b!650841 (=> (not res!422084) (not e!373439))))

(declare-fun lt!302597 () SeekEntryResult!6922)

(declare-fun lt!302590 () (_ BitVec 32))

(assert (=> b!650841 (= res!422084 (= lt!302597 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302590 vacantSpotIndex!68 lt!302588 lt!302585 mask!3053)))))

(assert (=> b!650841 (= lt!302597 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302590 vacantSpotIndex!68 (select (arr!18475 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650841 (= lt!302588 (select (store (arr!18475 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!302594 () Unit!22204)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38549 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22204)

(assert (=> b!650841 (= lt!302594 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302590 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650841 (= lt!302590 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650842 () Bool)

(assert (=> b!650842 (= e!373435 (arrayContainsKey!0 lt!302585 (select (arr!18475 a!2986) j!136) index!984))))

(declare-fun b!650843 () Bool)

(assert (=> b!650843 (= e!373438 e!373447)))

(declare-fun res!422078 () Bool)

(assert (=> b!650843 (=> (not res!422078) (not e!373447))))

(declare-fun lt!302599 () SeekEntryResult!6922)

(assert (=> b!650843 (= res!422078 (or (= lt!302599 (MissingZero!6922 i!1108)) (= lt!302599 (MissingVacant!6922 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38549 (_ BitVec 32)) SeekEntryResult!6922)

(assert (=> b!650843 (= lt!302599 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!650844 () Bool)

(declare-fun Unit!22208 () Unit!22204)

(assert (=> b!650844 (= e!373437 Unit!22208)))

(assert (=> b!650844 false))

(declare-fun b!650845 () Bool)

(assert (=> b!650845 (= e!373436 e!373434)))

(declare-fun res!422077 () Bool)

(assert (=> b!650845 (=> (not res!422077) (not e!373434))))

(declare-fun lt!302600 () SeekEntryResult!6922)

(assert (=> b!650845 (= res!422077 (and (= lt!302600 (Found!6922 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18475 a!2986) index!984) (select (arr!18475 a!2986) j!136))) (not (= (select (arr!18475 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650845 (= lt!302600 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18475 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650846 () Bool)

(assert (=> b!650846 (= e!373445 (arrayContainsKey!0 lt!302585 (select (arr!18475 a!2986) j!136) index!984))))

(declare-fun b!650847 () Bool)

(assert (=> b!650847 (= e!373439 (= lt!302600 lt!302597))))

(declare-fun b!650848 () Bool)

(declare-fun res!422085 () Bool)

(assert (=> b!650848 (=> (not res!422085) (not e!373447))))

(assert (=> b!650848 (= res!422085 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18475 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650849 () Bool)

(declare-fun res!422088 () Bool)

(assert (=> b!650849 (=> (not res!422088) (not e!373438))))

(assert (=> b!650849 (= res!422088 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650850 () Bool)

(declare-fun Unit!22209 () Unit!22204)

(assert (=> b!650850 (= e!373437 Unit!22209)))

(declare-fun b!650851 () Bool)

(declare-fun res!422086 () Bool)

(assert (=> b!650851 (=> (not res!422086) (not e!373438))))

(assert (=> b!650851 (= res!422086 (and (= (size!18839 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18839 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18839 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650852 () Bool)

(assert (=> b!650852 (= e!373444 e!373433)))

(declare-fun res!422075 () Bool)

(assert (=> b!650852 (=> res!422075 e!373433)))

(assert (=> b!650852 (= res!422075 (or (not (= (select (arr!18475 a!2986) j!136) lt!302588)) (not (= (select (arr!18475 a!2986) j!136) lt!302596))))))

(assert (=> b!650852 e!373441))

(declare-fun res!422072 () Bool)

(assert (=> b!650852 (=> (not res!422072) (not e!373441))))

(assert (=> b!650852 (= res!422072 (= lt!302596 (select (arr!18475 a!2986) j!136)))))

(assert (=> b!650852 (= lt!302596 (select (store (arr!18475 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!59012 res!422090) b!650851))

(assert (= (and b!650851 res!422086) b!650830))

(assert (= (and b!650830 res!422080) b!650837))

(assert (= (and b!650837 res!422089) b!650849))

(assert (= (and b!650849 res!422088) b!650843))

(assert (= (and b!650843 res!422078) b!650835))

(assert (= (and b!650835 res!422082) b!650839))

(assert (= (and b!650839 res!422074) b!650848))

(assert (= (and b!650848 res!422085) b!650836))

(assert (= (and b!650836 res!422087) b!650845))

(assert (= (and b!650845 res!422077) b!650841))

(assert (= (and b!650841 res!422084) b!650847))

(assert (= (and b!650841 c!74747) b!650844))

(assert (= (and b!650841 (not c!74747)) b!650850))

(assert (= (and b!650841 (not res!422083)) b!650852))

(assert (= (and b!650852 res!422072) b!650833))

(assert (= (and b!650833 (not res!422073)) b!650834))

(assert (= (and b!650834 res!422079) b!650846))

(assert (= (and b!650852 (not res!422075)) b!650838))

(assert (= (and b!650838 c!74746) b!650831))

(assert (= (and b!650838 (not c!74746)) b!650832))

(assert (= (and b!650838 (not res!422081)) b!650840))

(assert (= (and b!650840 res!422076) b!650842))

(declare-fun m!624061 () Bool)

(assert (=> b!650842 m!624061))

(assert (=> b!650842 m!624061))

(declare-fun m!624063 () Bool)

(assert (=> b!650842 m!624063))

(assert (=> b!650834 m!624061))

(assert (=> b!650834 m!624061))

(declare-fun m!624065 () Bool)

(assert (=> b!650834 m!624065))

(declare-fun m!624067 () Bool)

(assert (=> b!650835 m!624067))

(assert (=> b!650840 m!624061))

(declare-fun m!624069 () Bool)

(assert (=> b!650840 m!624069))

(assert (=> b!650840 m!624061))

(assert (=> b!650840 m!624061))

(assert (=> b!650840 m!624065))

(declare-fun m!624071 () Bool)

(assert (=> b!650840 m!624071))

(assert (=> b!650840 m!624061))

(declare-fun m!624073 () Bool)

(assert (=> b!650840 m!624073))

(declare-fun m!624075 () Bool)

(assert (=> b!650840 m!624075))

(assert (=> b!650830 m!624061))

(assert (=> b!650830 m!624061))

(declare-fun m!624077 () Bool)

(assert (=> b!650830 m!624077))

(declare-fun m!624079 () Bool)

(assert (=> b!650836 m!624079))

(declare-fun m!624081 () Bool)

(assert (=> b!650836 m!624081))

(assert (=> b!650833 m!624061))

(declare-fun m!624083 () Bool)

(assert (=> start!59012 m!624083))

(declare-fun m!624085 () Bool)

(assert (=> start!59012 m!624085))

(declare-fun m!624087 () Bool)

(assert (=> b!650845 m!624087))

(assert (=> b!650845 m!624061))

(assert (=> b!650845 m!624061))

(declare-fun m!624089 () Bool)

(assert (=> b!650845 m!624089))

(declare-fun m!624091 () Bool)

(assert (=> b!650843 m!624091))

(declare-fun m!624093 () Bool)

(assert (=> b!650848 m!624093))

(declare-fun m!624095 () Bool)

(assert (=> b!650841 m!624095))

(assert (=> b!650841 m!624061))

(declare-fun m!624097 () Bool)

(assert (=> b!650841 m!624097))

(assert (=> b!650841 m!624061))

(declare-fun m!624099 () Bool)

(assert (=> b!650841 m!624099))

(assert (=> b!650841 m!624079))

(declare-fun m!624101 () Bool)

(assert (=> b!650841 m!624101))

(declare-fun m!624103 () Bool)

(assert (=> b!650841 m!624103))

(declare-fun m!624105 () Bool)

(assert (=> b!650841 m!624105))

(assert (=> b!650831 m!624061))

(declare-fun m!624107 () Bool)

(assert (=> b!650831 m!624107))

(assert (=> b!650831 m!624061))

(declare-fun m!624109 () Bool)

(assert (=> b!650831 m!624109))

(declare-fun m!624111 () Bool)

(assert (=> b!650831 m!624111))

(assert (=> b!650831 m!624071))

(assert (=> b!650831 m!624061))

(declare-fun m!624113 () Bool)

(assert (=> b!650831 m!624113))

(assert (=> b!650831 m!624061))

(declare-fun m!624115 () Bool)

(assert (=> b!650831 m!624115))

(assert (=> b!650831 m!624075))

(assert (=> b!650852 m!624061))

(assert (=> b!650852 m!624079))

(declare-fun m!624117 () Bool)

(assert (=> b!650852 m!624117))

(declare-fun m!624119 () Bool)

(assert (=> b!650837 m!624119))

(declare-fun m!624121 () Bool)

(assert (=> b!650849 m!624121))

(assert (=> b!650846 m!624061))

(assert (=> b!650846 m!624061))

(assert (=> b!650846 m!624063))

(declare-fun m!624123 () Bool)

(assert (=> b!650839 m!624123))

(check-sat (not b!650840) (not b!650837) (not b!650849) (not b!650845) (not b!650846) (not b!650835) (not b!650841) (not b!650843) (not start!59012) (not b!650842) (not b!650834) (not b!650830) (not b!650831) (not b!650839))
(check-sat)
