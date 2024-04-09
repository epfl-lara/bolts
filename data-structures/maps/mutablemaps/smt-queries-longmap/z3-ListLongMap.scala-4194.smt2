; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57272 () Bool)

(assert start!57272)

(declare-fun b!633429 () Bool)

(declare-fun e!362192 () Bool)

(declare-fun e!362196 () Bool)

(assert (=> b!633429 (= e!362192 e!362196)))

(declare-fun res!409735 () Bool)

(assert (=> b!633429 (=> res!409735 e!362196)))

(declare-fun lt!292826 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!292822 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38138 0))(
  ( (array!38139 (arr!18295 (Array (_ BitVec 32) (_ BitVec 64))) (size!18659 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38138)

(assert (=> b!633429 (= res!409735 (or (not (= (select (arr!18295 a!2986) j!136) lt!292822)) (not (= (select (arr!18295 a!2986) j!136) lt!292826)) (bvsge j!136 index!984)))))

(declare-fun b!633430 () Bool)

(declare-fun e!362194 () Bool)

(declare-fun e!362195 () Bool)

(assert (=> b!633430 (= e!362194 e!362195)))

(declare-fun res!409743 () Bool)

(assert (=> b!633430 (=> (not res!409743) (not e!362195))))

(declare-datatypes ((SeekEntryResult!6742 0))(
  ( (MissingZero!6742 (index!29266 (_ BitVec 32))) (Found!6742 (index!29267 (_ BitVec 32))) (Intermediate!6742 (undefined!7554 Bool) (index!29268 (_ BitVec 32)) (x!58036 (_ BitVec 32))) (Undefined!6742) (MissingVacant!6742 (index!29269 (_ BitVec 32))) )
))
(declare-fun lt!292824 () SeekEntryResult!6742)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!633430 (= res!409743 (and (= lt!292824 (Found!6742 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18295 a!2986) index!984) (select (arr!18295 a!2986) j!136))) (not (= (select (arr!18295 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38138 (_ BitVec 32)) SeekEntryResult!6742)

(assert (=> b!633430 (= lt!292824 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18295 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633431 () Bool)

(declare-fun e!362193 () Bool)

(assert (=> b!633431 (= e!362193 e!362194)))

(declare-fun res!409738 () Bool)

(assert (=> b!633431 (=> (not res!409738) (not e!362194))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!633431 (= res!409738 (= (select (store (arr!18295 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292829 () array!38138)

(assert (=> b!633431 (= lt!292829 (array!38139 (store (arr!18295 a!2986) i!1108 k0!1786) (size!18659 a!2986)))))

(declare-fun b!633432 () Bool)

(declare-fun res!409744 () Bool)

(declare-fun e!362190 () Bool)

(assert (=> b!633432 (=> (not res!409744) (not e!362190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633432 (= res!409744 (validKeyInArray!0 (select (arr!18295 a!2986) j!136)))))

(declare-fun b!633433 () Bool)

(declare-fun res!409734 () Bool)

(assert (=> b!633433 (=> (not res!409734) (not e!362193))))

(declare-datatypes ((List!12389 0))(
  ( (Nil!12386) (Cons!12385 (h!13430 (_ BitVec 64)) (t!18625 List!12389)) )
))
(declare-fun arrayNoDuplicates!0 (array!38138 (_ BitVec 32) List!12389) Bool)

(assert (=> b!633433 (= res!409734 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12386))))

(declare-fun b!633434 () Bool)

(declare-fun e!362200 () Bool)

(assert (=> b!633434 (= e!362195 (not e!362200))))

(declare-fun res!409737 () Bool)

(assert (=> b!633434 (=> res!409737 e!362200)))

(declare-fun lt!292821 () SeekEntryResult!6742)

(assert (=> b!633434 (= res!409737 (not (= lt!292821 (Found!6742 index!984))))))

(declare-datatypes ((Unit!21326 0))(
  ( (Unit!21327) )
))
(declare-fun lt!292823 () Unit!21326)

(declare-fun e!362191 () Unit!21326)

(assert (=> b!633434 (= lt!292823 e!362191)))

(declare-fun c!72215 () Bool)

(assert (=> b!633434 (= c!72215 (= lt!292821 Undefined!6742))))

(assert (=> b!633434 (= lt!292821 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292822 lt!292829 mask!3053))))

(declare-fun e!362199 () Bool)

(assert (=> b!633434 e!362199))

(declare-fun res!409741 () Bool)

(assert (=> b!633434 (=> (not res!409741) (not e!362199))))

(declare-fun lt!292827 () (_ BitVec 32))

(declare-fun lt!292828 () SeekEntryResult!6742)

(assert (=> b!633434 (= res!409741 (= lt!292828 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292827 vacantSpotIndex!68 lt!292822 lt!292829 mask!3053)))))

(assert (=> b!633434 (= lt!292828 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292827 vacantSpotIndex!68 (select (arr!18295 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633434 (= lt!292822 (select (store (arr!18295 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292825 () Unit!21326)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38138 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21326)

(assert (=> b!633434 (= lt!292825 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292827 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633434 (= lt!292827 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633435 () Bool)

(declare-fun e!362198 () Bool)

(assert (=> b!633435 (= e!362196 e!362198)))

(declare-fun res!409733 () Bool)

(assert (=> b!633435 (=> (not res!409733) (not e!362198))))

(declare-fun arrayContainsKey!0 (array!38138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633435 (= res!409733 (arrayContainsKey!0 lt!292829 (select (arr!18295 a!2986) j!136) j!136))))

(declare-fun b!633436 () Bool)

(assert (=> b!633436 (= e!362199 (= lt!292824 lt!292828))))

(declare-fun res!409742 () Bool)

(assert (=> start!57272 (=> (not res!409742) (not e!362190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57272 (= res!409742 (validMask!0 mask!3053))))

(assert (=> start!57272 e!362190))

(assert (=> start!57272 true))

(declare-fun array_inv!14069 (array!38138) Bool)

(assert (=> start!57272 (array_inv!14069 a!2986)))

(declare-fun b!633437 () Bool)

(declare-fun res!409746 () Bool)

(assert (=> b!633437 (=> (not res!409746) (not e!362190))))

(assert (=> b!633437 (= res!409746 (validKeyInArray!0 k0!1786))))

(declare-fun b!633438 () Bool)

(assert (=> b!633438 (= e!362200 (or (not (= (select (arr!18295 a!2986) j!136) lt!292822)) (not (= (select (arr!18295 a!2986) j!136) lt!292826)) (bvsge j!136 index!984) (bvslt index!984 (size!18659 a!2986))))))

(assert (=> b!633438 e!362192))

(declare-fun res!409747 () Bool)

(assert (=> b!633438 (=> (not res!409747) (not e!362192))))

(assert (=> b!633438 (= res!409747 (= lt!292826 (select (arr!18295 a!2986) j!136)))))

(assert (=> b!633438 (= lt!292826 (select (store (arr!18295 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!633439 () Bool)

(declare-fun res!409736 () Bool)

(assert (=> b!633439 (=> (not res!409736) (not e!362193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38138 (_ BitVec 32)) Bool)

(assert (=> b!633439 (= res!409736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633440 () Bool)

(declare-fun Unit!21328 () Unit!21326)

(assert (=> b!633440 (= e!362191 Unit!21328)))

(assert (=> b!633440 false))

(declare-fun b!633441 () Bool)

(declare-fun res!409739 () Bool)

(assert (=> b!633441 (=> (not res!409739) (not e!362190))))

(assert (=> b!633441 (= res!409739 (and (= (size!18659 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18659 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18659 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633442 () Bool)

(assert (=> b!633442 (= e!362198 (arrayContainsKey!0 lt!292829 (select (arr!18295 a!2986) j!136) index!984))))

(declare-fun b!633443 () Bool)

(declare-fun res!409740 () Bool)

(assert (=> b!633443 (=> (not res!409740) (not e!362190))))

(assert (=> b!633443 (= res!409740 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633444 () Bool)

(assert (=> b!633444 (= e!362190 e!362193)))

(declare-fun res!409748 () Bool)

(assert (=> b!633444 (=> (not res!409748) (not e!362193))))

(declare-fun lt!292830 () SeekEntryResult!6742)

(assert (=> b!633444 (= res!409748 (or (= lt!292830 (MissingZero!6742 i!1108)) (= lt!292830 (MissingVacant!6742 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38138 (_ BitVec 32)) SeekEntryResult!6742)

(assert (=> b!633444 (= lt!292830 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!633445 () Bool)

(declare-fun res!409745 () Bool)

(assert (=> b!633445 (=> (not res!409745) (not e!362193))))

(assert (=> b!633445 (= res!409745 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18295 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633446 () Bool)

(declare-fun Unit!21329 () Unit!21326)

(assert (=> b!633446 (= e!362191 Unit!21329)))

(assert (= (and start!57272 res!409742) b!633441))

(assert (= (and b!633441 res!409739) b!633432))

(assert (= (and b!633432 res!409744) b!633437))

(assert (= (and b!633437 res!409746) b!633443))

(assert (= (and b!633443 res!409740) b!633444))

(assert (= (and b!633444 res!409748) b!633439))

(assert (= (and b!633439 res!409736) b!633433))

(assert (= (and b!633433 res!409734) b!633445))

(assert (= (and b!633445 res!409745) b!633431))

(assert (= (and b!633431 res!409738) b!633430))

(assert (= (and b!633430 res!409743) b!633434))

(assert (= (and b!633434 res!409741) b!633436))

(assert (= (and b!633434 c!72215) b!633440))

(assert (= (and b!633434 (not c!72215)) b!633446))

(assert (= (and b!633434 (not res!409737)) b!633438))

(assert (= (and b!633438 res!409747) b!633429))

(assert (= (and b!633429 (not res!409735)) b!633435))

(assert (= (and b!633435 res!409733) b!633442))

(declare-fun m!608125 () Bool)

(assert (=> b!633431 m!608125))

(declare-fun m!608127 () Bool)

(assert (=> b!633431 m!608127))

(declare-fun m!608129 () Bool)

(assert (=> b!633445 m!608129))

(declare-fun m!608131 () Bool)

(assert (=> b!633442 m!608131))

(assert (=> b!633442 m!608131))

(declare-fun m!608133 () Bool)

(assert (=> b!633442 m!608133))

(declare-fun m!608135 () Bool)

(assert (=> b!633443 m!608135))

(declare-fun m!608137 () Bool)

(assert (=> b!633437 m!608137))

(declare-fun m!608139 () Bool)

(assert (=> start!57272 m!608139))

(declare-fun m!608141 () Bool)

(assert (=> start!57272 m!608141))

(declare-fun m!608143 () Bool)

(assert (=> b!633439 m!608143))

(assert (=> b!633438 m!608131))

(assert (=> b!633438 m!608125))

(declare-fun m!608145 () Bool)

(assert (=> b!633438 m!608145))

(assert (=> b!633435 m!608131))

(assert (=> b!633435 m!608131))

(declare-fun m!608147 () Bool)

(assert (=> b!633435 m!608147))

(assert (=> b!633432 m!608131))

(assert (=> b!633432 m!608131))

(declare-fun m!608149 () Bool)

(assert (=> b!633432 m!608149))

(declare-fun m!608151 () Bool)

(assert (=> b!633433 m!608151))

(declare-fun m!608153 () Bool)

(assert (=> b!633434 m!608153))

(declare-fun m!608155 () Bool)

(assert (=> b!633434 m!608155))

(assert (=> b!633434 m!608131))

(declare-fun m!608157 () Bool)

(assert (=> b!633434 m!608157))

(assert (=> b!633434 m!608131))

(declare-fun m!608159 () Bool)

(assert (=> b!633434 m!608159))

(assert (=> b!633434 m!608125))

(declare-fun m!608161 () Bool)

(assert (=> b!633434 m!608161))

(declare-fun m!608163 () Bool)

(assert (=> b!633434 m!608163))

(declare-fun m!608165 () Bool)

(assert (=> b!633444 m!608165))

(declare-fun m!608167 () Bool)

(assert (=> b!633430 m!608167))

(assert (=> b!633430 m!608131))

(assert (=> b!633430 m!608131))

(declare-fun m!608169 () Bool)

(assert (=> b!633430 m!608169))

(assert (=> b!633429 m!608131))

(check-sat (not b!633437) (not b!633434) (not b!633443) (not b!633442) (not b!633433) (not b!633435) (not b!633432) (not b!633430) (not start!57272) (not b!633439) (not b!633444))
(check-sat)
