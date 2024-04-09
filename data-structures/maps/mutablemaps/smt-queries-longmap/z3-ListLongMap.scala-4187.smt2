; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57110 () Bool)

(assert start!57110)

(declare-fun b!631848 () Bool)

(declare-fun res!408685 () Bool)

(declare-fun e!361253 () Bool)

(assert (=> b!631848 (=> (not res!408685) (not e!361253))))

(declare-datatypes ((array!38090 0))(
  ( (array!38091 (arr!18274 (Array (_ BitVec 32) (_ BitVec 64))) (size!18638 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38090)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631848 (= res!408685 (validKeyInArray!0 (select (arr!18274 a!2986) j!136)))))

(declare-fun res!408682 () Bool)

(assert (=> start!57110 (=> (not res!408682) (not e!361253))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57110 (= res!408682 (validMask!0 mask!3053))))

(assert (=> start!57110 e!361253))

(assert (=> start!57110 true))

(declare-fun array_inv!14048 (array!38090) Bool)

(assert (=> start!57110 (array_inv!14048 a!2986)))

(declare-fun b!631849 () Bool)

(declare-fun res!408679 () Bool)

(declare-fun e!361255 () Bool)

(assert (=> b!631849 (=> (not res!408679) (not e!361255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38090 (_ BitVec 32)) Bool)

(assert (=> b!631849 (= res!408679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631850 () Bool)

(declare-fun e!361248 () Bool)

(declare-fun e!361251 () Bool)

(assert (=> b!631850 (= e!361248 (not e!361251))))

(declare-fun res!408681 () Bool)

(assert (=> b!631850 (=> res!408681 e!361251)))

(declare-datatypes ((SeekEntryResult!6721 0))(
  ( (MissingZero!6721 (index!29176 (_ BitVec 32))) (Found!6721 (index!29177 (_ BitVec 32))) (Intermediate!6721 (undefined!7533 Bool) (index!29178 (_ BitVec 32)) (x!57941 (_ BitVec 32))) (Undefined!6721) (MissingVacant!6721 (index!29179 (_ BitVec 32))) )
))
(declare-fun lt!292021 () SeekEntryResult!6721)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631850 (= res!408681 (not (= lt!292021 (Found!6721 index!984))))))

(declare-datatypes ((Unit!21242 0))(
  ( (Unit!21243) )
))
(declare-fun lt!292016 () Unit!21242)

(declare-fun e!361254 () Unit!21242)

(assert (=> b!631850 (= lt!292016 e!361254)))

(declare-fun c!71954 () Bool)

(assert (=> b!631850 (= c!71954 (= lt!292021 Undefined!6721))))

(declare-fun lt!292022 () array!38090)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!292015 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38090 (_ BitVec 32)) SeekEntryResult!6721)

(assert (=> b!631850 (= lt!292021 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292015 lt!292022 mask!3053))))

(declare-fun e!361250 () Bool)

(assert (=> b!631850 e!361250))

(declare-fun res!408678 () Bool)

(assert (=> b!631850 (=> (not res!408678) (not e!361250))))

(declare-fun lt!292018 () SeekEntryResult!6721)

(declare-fun lt!292020 () (_ BitVec 32))

(assert (=> b!631850 (= res!408678 (= lt!292018 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292020 vacantSpotIndex!68 lt!292015 lt!292022 mask!3053)))))

(assert (=> b!631850 (= lt!292018 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292020 vacantSpotIndex!68 (select (arr!18274 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!631850 (= lt!292015 (select (store (arr!18274 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292019 () Unit!21242)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38090 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21242)

(assert (=> b!631850 (= lt!292019 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292020 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631850 (= lt!292020 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631851 () Bool)

(assert (=> b!631851 (= e!361253 e!361255)))

(declare-fun res!408684 () Bool)

(assert (=> b!631851 (=> (not res!408684) (not e!361255))))

(declare-fun lt!292017 () SeekEntryResult!6721)

(assert (=> b!631851 (= res!408684 (or (= lt!292017 (MissingZero!6721 i!1108)) (= lt!292017 (MissingVacant!6721 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38090 (_ BitVec 32)) SeekEntryResult!6721)

(assert (=> b!631851 (= lt!292017 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!631852 () Bool)

(declare-fun res!408683 () Bool)

(assert (=> b!631852 (=> (not res!408683) (not e!361253))))

(assert (=> b!631852 (= res!408683 (and (= (size!18638 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18638 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18638 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631853 () Bool)

(declare-fun res!408676 () Bool)

(assert (=> b!631853 (=> (not res!408676) (not e!361255))))

(assert (=> b!631853 (= res!408676 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18274 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631854 () Bool)

(declare-fun Unit!21244 () Unit!21242)

(assert (=> b!631854 (= e!361254 Unit!21244)))

(declare-fun b!631855 () Bool)

(declare-fun Unit!21245 () Unit!21242)

(assert (=> b!631855 (= e!361254 Unit!21245)))

(assert (=> b!631855 false))

(declare-fun b!631856 () Bool)

(assert (=> b!631856 (= e!361251 true)))

(assert (=> b!631856 (= (select (store (arr!18274 a!2986) i!1108 k0!1786) index!984) (select (arr!18274 a!2986) j!136))))

(declare-fun b!631857 () Bool)

(declare-fun e!361252 () Bool)

(assert (=> b!631857 (= e!361255 e!361252)))

(declare-fun res!408686 () Bool)

(assert (=> b!631857 (=> (not res!408686) (not e!361252))))

(assert (=> b!631857 (= res!408686 (= (select (store (arr!18274 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631857 (= lt!292022 (array!38091 (store (arr!18274 a!2986) i!1108 k0!1786) (size!18638 a!2986)))))

(declare-fun b!631858 () Bool)

(declare-fun lt!292023 () SeekEntryResult!6721)

(assert (=> b!631858 (= e!361250 (= lt!292023 lt!292018))))

(declare-fun b!631859 () Bool)

(assert (=> b!631859 (= e!361252 e!361248)))

(declare-fun res!408677 () Bool)

(assert (=> b!631859 (=> (not res!408677) (not e!361248))))

(assert (=> b!631859 (= res!408677 (and (= lt!292023 (Found!6721 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18274 a!2986) index!984) (select (arr!18274 a!2986) j!136))) (not (= (select (arr!18274 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631859 (= lt!292023 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18274 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631860 () Bool)

(declare-fun res!408675 () Bool)

(assert (=> b!631860 (=> (not res!408675) (not e!361253))))

(declare-fun arrayContainsKey!0 (array!38090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631860 (= res!408675 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631861 () Bool)

(declare-fun res!408680 () Bool)

(assert (=> b!631861 (=> (not res!408680) (not e!361255))))

(declare-datatypes ((List!12368 0))(
  ( (Nil!12365) (Cons!12364 (h!13409 (_ BitVec 64)) (t!18604 List!12368)) )
))
(declare-fun arrayNoDuplicates!0 (array!38090 (_ BitVec 32) List!12368) Bool)

(assert (=> b!631861 (= res!408680 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12365))))

(declare-fun b!631862 () Bool)

(declare-fun res!408674 () Bool)

(assert (=> b!631862 (=> (not res!408674) (not e!361253))))

(assert (=> b!631862 (= res!408674 (validKeyInArray!0 k0!1786))))

(assert (= (and start!57110 res!408682) b!631852))

(assert (= (and b!631852 res!408683) b!631848))

(assert (= (and b!631848 res!408685) b!631862))

(assert (= (and b!631862 res!408674) b!631860))

(assert (= (and b!631860 res!408675) b!631851))

(assert (= (and b!631851 res!408684) b!631849))

(assert (= (and b!631849 res!408679) b!631861))

(assert (= (and b!631861 res!408680) b!631853))

(assert (= (and b!631853 res!408676) b!631857))

(assert (= (and b!631857 res!408686) b!631859))

(assert (= (and b!631859 res!408677) b!631850))

(assert (= (and b!631850 res!408678) b!631858))

(assert (= (and b!631850 c!71954) b!631855))

(assert (= (and b!631850 (not c!71954)) b!631854))

(assert (= (and b!631850 (not res!408681)) b!631856))

(declare-fun m!606759 () Bool)

(assert (=> b!631848 m!606759))

(assert (=> b!631848 m!606759))

(declare-fun m!606761 () Bool)

(assert (=> b!631848 m!606761))

(declare-fun m!606763 () Bool)

(assert (=> b!631849 m!606763))

(declare-fun m!606765 () Bool)

(assert (=> b!631857 m!606765))

(declare-fun m!606767 () Bool)

(assert (=> b!631857 m!606767))

(declare-fun m!606769 () Bool)

(assert (=> b!631853 m!606769))

(declare-fun m!606771 () Bool)

(assert (=> b!631859 m!606771))

(assert (=> b!631859 m!606759))

(assert (=> b!631859 m!606759))

(declare-fun m!606773 () Bool)

(assert (=> b!631859 m!606773))

(declare-fun m!606775 () Bool)

(assert (=> b!631851 m!606775))

(declare-fun m!606777 () Bool)

(assert (=> b!631850 m!606777))

(declare-fun m!606779 () Bool)

(assert (=> b!631850 m!606779))

(assert (=> b!631850 m!606759))

(assert (=> b!631850 m!606765))

(declare-fun m!606781 () Bool)

(assert (=> b!631850 m!606781))

(declare-fun m!606783 () Bool)

(assert (=> b!631850 m!606783))

(declare-fun m!606785 () Bool)

(assert (=> b!631850 m!606785))

(assert (=> b!631850 m!606759))

(declare-fun m!606787 () Bool)

(assert (=> b!631850 m!606787))

(declare-fun m!606789 () Bool)

(assert (=> b!631860 m!606789))

(declare-fun m!606791 () Bool)

(assert (=> b!631862 m!606791))

(assert (=> b!631856 m!606765))

(declare-fun m!606793 () Bool)

(assert (=> b!631856 m!606793))

(assert (=> b!631856 m!606759))

(declare-fun m!606795 () Bool)

(assert (=> start!57110 m!606795))

(declare-fun m!606797 () Bool)

(assert (=> start!57110 m!606797))

(declare-fun m!606799 () Bool)

(assert (=> b!631861 m!606799))

(check-sat (not start!57110) (not b!631861) (not b!631860) (not b!631862) (not b!631851) (not b!631849) (not b!631859) (not b!631848) (not b!631850))
(check-sat)
