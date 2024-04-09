; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56042 () Bool)

(assert start!56042)

(declare-fun b!616364 () Bool)

(declare-fun res!397140 () Bool)

(declare-fun e!353420 () Bool)

(assert (=> b!616364 (=> (not res!397140) (not e!353420))))

(declare-datatypes ((array!37475 0))(
  ( (array!37476 (arr!17980 (Array (_ BitVec 32) (_ BitVec 64))) (size!18344 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37475)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37475 (_ BitVec 32)) Bool)

(assert (=> b!616364 (= res!397140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616365 () Bool)

(declare-fun res!397144 () Bool)

(declare-fun e!353430 () Bool)

(assert (=> b!616365 (=> (not res!397144) (not e!353430))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616365 (= res!397144 (validKeyInArray!0 (select (arr!17980 a!2986) j!136)))))

(declare-fun b!616366 () Bool)

(declare-fun e!353424 () Bool)

(declare-fun e!353417 () Bool)

(assert (=> b!616366 (= e!353424 (not e!353417))))

(declare-fun res!397139 () Bool)

(assert (=> b!616366 (=> res!397139 e!353417)))

(declare-datatypes ((SeekEntryResult!6427 0))(
  ( (MissingZero!6427 (index!27991 (_ BitVec 32))) (Found!6427 (index!27992 (_ BitVec 32))) (Intermediate!6427 (undefined!7239 Bool) (index!27993 (_ BitVec 32)) (x!56812 (_ BitVec 32))) (Undefined!6427) (MissingVacant!6427 (index!27994 (_ BitVec 32))) )
))
(declare-fun lt!283582 () SeekEntryResult!6427)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!616366 (= res!397139 (not (= lt!283582 (MissingVacant!6427 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!20090 0))(
  ( (Unit!20091) )
))
(declare-fun lt!283587 () Unit!20090)

(declare-fun e!353427 () Unit!20090)

(assert (=> b!616366 (= lt!283587 e!353427)))

(declare-fun c!69980 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616366 (= c!69980 (= lt!283582 (Found!6427 index!984)))))

(declare-fun lt!283591 () Unit!20090)

(declare-fun e!353422 () Unit!20090)

(assert (=> b!616366 (= lt!283591 e!353422)))

(declare-fun c!69982 () Bool)

(assert (=> b!616366 (= c!69982 (= lt!283582 Undefined!6427))))

(declare-fun lt!283596 () array!37475)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!283583 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37475 (_ BitVec 32)) SeekEntryResult!6427)

(assert (=> b!616366 (= lt!283582 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283583 lt!283596 mask!3053))))

(declare-fun e!353419 () Bool)

(assert (=> b!616366 e!353419))

(declare-fun res!397151 () Bool)

(assert (=> b!616366 (=> (not res!397151) (not e!353419))))

(declare-fun lt!283578 () SeekEntryResult!6427)

(declare-fun lt!283588 () (_ BitVec 32))

(assert (=> b!616366 (= res!397151 (= lt!283578 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283588 vacantSpotIndex!68 lt!283583 lt!283596 mask!3053)))))

(assert (=> b!616366 (= lt!283578 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283588 vacantSpotIndex!68 (select (arr!17980 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!616366 (= lt!283583 (select (store (arr!17980 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!283594 () Unit!20090)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20090)

(assert (=> b!616366 (= lt!283594 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283588 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616366 (= lt!283588 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616367 () Bool)

(declare-fun res!397138 () Bool)

(assert (=> b!616367 (= res!397138 (bvsge j!136 index!984))))

(declare-fun e!353423 () Bool)

(assert (=> b!616367 (=> res!397138 e!353423)))

(declare-fun e!353431 () Bool)

(assert (=> b!616367 (= e!353431 e!353423)))

(declare-fun b!616368 () Bool)

(declare-fun Unit!20092 () Unit!20090)

(assert (=> b!616368 (= e!353422 Unit!20092)))

(declare-fun b!616369 () Bool)

(assert (=> b!616369 (= e!353417 true)))

(assert (=> b!616369 (= (select (store (arr!17980 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!616370 () Bool)

(assert (=> b!616370 false))

(declare-fun lt!283579 () Unit!20090)

(declare-datatypes ((List!12074 0))(
  ( (Nil!12071) (Cons!12070 (h!13115 (_ BitVec 64)) (t!18310 List!12074)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37475 (_ BitVec 64) (_ BitVec 32) List!12074) Unit!20090)

(assert (=> b!616370 (= lt!283579 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283596 (select (arr!17980 a!2986) j!136) j!136 Nil!12071))))

(declare-fun arrayNoDuplicates!0 (array!37475 (_ BitVec 32) List!12074) Bool)

(assert (=> b!616370 (arrayNoDuplicates!0 lt!283596 j!136 Nil!12071)))

(declare-fun lt!283581 () Unit!20090)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37475 (_ BitVec 32) (_ BitVec 32)) Unit!20090)

(assert (=> b!616370 (= lt!283581 (lemmaNoDuplicateFromThenFromBigger!0 lt!283596 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616370 (arrayNoDuplicates!0 lt!283596 #b00000000000000000000000000000000 Nil!12071)))

(declare-fun lt!283593 () Unit!20090)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37475 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12074) Unit!20090)

(assert (=> b!616370 (= lt!283593 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12071))))

(declare-fun arrayContainsKey!0 (array!37475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616370 (arrayContainsKey!0 lt!283596 (select (arr!17980 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283595 () Unit!20090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37475 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20090)

(assert (=> b!616370 (= lt!283595 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283596 (select (arr!17980 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!353426 () Unit!20090)

(declare-fun Unit!20093 () Unit!20090)

(assert (=> b!616370 (= e!353426 Unit!20093)))

(declare-fun b!616371 () Bool)

(declare-fun res!397143 () Bool)

(assert (=> b!616371 (=> (not res!397143) (not e!353420))))

(assert (=> b!616371 (= res!397143 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12071))))

(declare-fun b!616372 () Bool)

(assert (=> b!616372 (= e!353430 e!353420)))

(declare-fun res!397141 () Bool)

(assert (=> b!616372 (=> (not res!397141) (not e!353420))))

(declare-fun lt!283589 () SeekEntryResult!6427)

(assert (=> b!616372 (= res!397141 (or (= lt!283589 (MissingZero!6427 i!1108)) (= lt!283589 (MissingVacant!6427 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37475 (_ BitVec 32)) SeekEntryResult!6427)

(assert (=> b!616372 (= lt!283589 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun e!353418 () Bool)

(declare-fun b!616373 () Bool)

(assert (=> b!616373 (= e!353418 (arrayContainsKey!0 lt!283596 (select (arr!17980 a!2986) j!136) index!984))))

(declare-fun b!616374 () Bool)

(declare-fun e!353429 () Bool)

(assert (=> b!616374 (= e!353429 e!353424)))

(declare-fun res!397149 () Bool)

(assert (=> b!616374 (=> (not res!397149) (not e!353424))))

(declare-fun lt!283585 () SeekEntryResult!6427)

(assert (=> b!616374 (= res!397149 (and (= lt!283585 (Found!6427 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17980 a!2986) index!984) (select (arr!17980 a!2986) j!136))) (not (= (select (arr!17980 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!616374 (= lt!283585 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17980 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616375 () Bool)

(declare-fun Unit!20094 () Unit!20090)

(assert (=> b!616375 (= e!353427 Unit!20094)))

(declare-fun b!616376 () Bool)

(assert (=> b!616376 (= e!353420 e!353429)))

(declare-fun res!397153 () Bool)

(assert (=> b!616376 (=> (not res!397153) (not e!353429))))

(assert (=> b!616376 (= res!397153 (= (select (store (arr!17980 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616376 (= lt!283596 (array!37476 (store (arr!17980 a!2986) i!1108 k0!1786) (size!18344 a!2986)))))

(declare-fun b!616377 () Bool)

(declare-fun res!397150 () Bool)

(assert (=> b!616377 (=> (not res!397150) (not e!353430))))

(assert (=> b!616377 (= res!397150 (validKeyInArray!0 k0!1786))))

(declare-fun b!616378 () Bool)

(declare-fun e!353428 () Unit!20090)

(declare-fun Unit!20095 () Unit!20090)

(assert (=> b!616378 (= e!353428 Unit!20095)))

(declare-fun b!616379 () Bool)

(declare-fun res!397148 () Bool)

(assert (=> b!616379 (= res!397148 (arrayContainsKey!0 lt!283596 (select (arr!17980 a!2986) j!136) j!136))))

(declare-fun e!353421 () Bool)

(assert (=> b!616379 (=> (not res!397148) (not e!353421))))

(assert (=> b!616379 (= e!353423 e!353421)))

(declare-fun res!397152 () Bool)

(assert (=> start!56042 (=> (not res!397152) (not e!353430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56042 (= res!397152 (validMask!0 mask!3053))))

(assert (=> start!56042 e!353430))

(assert (=> start!56042 true))

(declare-fun array_inv!13754 (array!37475) Bool)

(assert (=> start!56042 (array_inv!13754 a!2986)))

(declare-fun b!616380 () Bool)

(assert (=> b!616380 false))

(declare-fun lt!283592 () Unit!20090)

(assert (=> b!616380 (= lt!283592 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283596 (select (arr!17980 a!2986) j!136) index!984 Nil!12071))))

(assert (=> b!616380 (arrayNoDuplicates!0 lt!283596 index!984 Nil!12071)))

(declare-fun lt!283580 () Unit!20090)

(assert (=> b!616380 (= lt!283580 (lemmaNoDuplicateFromThenFromBigger!0 lt!283596 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616380 (arrayNoDuplicates!0 lt!283596 #b00000000000000000000000000000000 Nil!12071)))

(declare-fun lt!283590 () Unit!20090)

(assert (=> b!616380 (= lt!283590 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12071))))

(assert (=> b!616380 (arrayContainsKey!0 lt!283596 (select (arr!17980 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283584 () Unit!20090)

(assert (=> b!616380 (= lt!283584 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283596 (select (arr!17980 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!616380 e!353418))

(declare-fun res!397154 () Bool)

(assert (=> b!616380 (=> (not res!397154) (not e!353418))))

(assert (=> b!616380 (= res!397154 (arrayContainsKey!0 lt!283596 (select (arr!17980 a!2986) j!136) j!136))))

(declare-fun Unit!20096 () Unit!20090)

(assert (=> b!616380 (= e!353428 Unit!20096)))

(declare-fun b!616381 () Bool)

(assert (=> b!616381 (= e!353421 (arrayContainsKey!0 lt!283596 (select (arr!17980 a!2986) j!136) index!984))))

(declare-fun b!616382 () Bool)

(declare-fun Unit!20097 () Unit!20090)

(assert (=> b!616382 (= e!353422 Unit!20097)))

(assert (=> b!616382 false))

(declare-fun b!616383 () Bool)

(declare-fun res!397145 () Bool)

(assert (=> b!616383 (=> (not res!397145) (not e!353420))))

(assert (=> b!616383 (= res!397145 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17980 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616384 () Bool)

(assert (=> b!616384 (= e!353419 (= lt!283585 lt!283578))))

(declare-fun b!616385 () Bool)

(declare-fun res!397146 () Bool)

(assert (=> b!616385 (=> (not res!397146) (not e!353430))))

(assert (=> b!616385 (= res!397146 (and (= (size!18344 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18344 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18344 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616386 () Bool)

(declare-fun res!397147 () Bool)

(assert (=> b!616386 (=> (not res!397147) (not e!353430))))

(assert (=> b!616386 (= res!397147 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616387 () Bool)

(declare-fun Unit!20098 () Unit!20090)

(assert (=> b!616387 (= e!353427 Unit!20098)))

(declare-fun res!397142 () Bool)

(assert (=> b!616387 (= res!397142 (= (select (store (arr!17980 a!2986) i!1108 k0!1786) index!984) (select (arr!17980 a!2986) j!136)))))

(assert (=> b!616387 (=> (not res!397142) (not e!353431))))

(assert (=> b!616387 e!353431))

(declare-fun c!69981 () Bool)

(assert (=> b!616387 (= c!69981 (bvslt j!136 index!984))))

(declare-fun lt!283577 () Unit!20090)

(assert (=> b!616387 (= lt!283577 e!353426)))

(declare-fun c!69983 () Bool)

(assert (=> b!616387 (= c!69983 (bvslt index!984 j!136))))

(declare-fun lt!283586 () Unit!20090)

(assert (=> b!616387 (= lt!283586 e!353428)))

(assert (=> b!616387 false))

(declare-fun b!616388 () Bool)

(declare-fun Unit!20099 () Unit!20090)

(assert (=> b!616388 (= e!353426 Unit!20099)))

(assert (= (and start!56042 res!397152) b!616385))

(assert (= (and b!616385 res!397146) b!616365))

(assert (= (and b!616365 res!397144) b!616377))

(assert (= (and b!616377 res!397150) b!616386))

(assert (= (and b!616386 res!397147) b!616372))

(assert (= (and b!616372 res!397141) b!616364))

(assert (= (and b!616364 res!397140) b!616371))

(assert (= (and b!616371 res!397143) b!616383))

(assert (= (and b!616383 res!397145) b!616376))

(assert (= (and b!616376 res!397153) b!616374))

(assert (= (and b!616374 res!397149) b!616366))

(assert (= (and b!616366 res!397151) b!616384))

(assert (= (and b!616366 c!69982) b!616382))

(assert (= (and b!616366 (not c!69982)) b!616368))

(assert (= (and b!616366 c!69980) b!616387))

(assert (= (and b!616366 (not c!69980)) b!616375))

(assert (= (and b!616387 res!397142) b!616367))

(assert (= (and b!616367 (not res!397138)) b!616379))

(assert (= (and b!616379 res!397148) b!616381))

(assert (= (and b!616387 c!69981) b!616370))

(assert (= (and b!616387 (not c!69981)) b!616388))

(assert (= (and b!616387 c!69983) b!616380))

(assert (= (and b!616387 (not c!69983)) b!616378))

(assert (= (and b!616380 res!397154) b!616373))

(assert (= (and b!616366 (not res!397139)) b!616369))

(declare-fun m!592579 () Bool)

(assert (=> b!616386 m!592579))

(declare-fun m!592581 () Bool)

(assert (=> b!616369 m!592581))

(declare-fun m!592583 () Bool)

(assert (=> b!616369 m!592583))

(assert (=> b!616376 m!592581))

(declare-fun m!592585 () Bool)

(assert (=> b!616376 m!592585))

(declare-fun m!592587 () Bool)

(assert (=> b!616374 m!592587))

(declare-fun m!592589 () Bool)

(assert (=> b!616374 m!592589))

(assert (=> b!616374 m!592589))

(declare-fun m!592591 () Bool)

(assert (=> b!616374 m!592591))

(assert (=> b!616379 m!592589))

(assert (=> b!616379 m!592589))

(declare-fun m!592593 () Bool)

(assert (=> b!616379 m!592593))

(assert (=> b!616370 m!592589))

(declare-fun m!592595 () Bool)

(assert (=> b!616370 m!592595))

(assert (=> b!616370 m!592589))

(assert (=> b!616370 m!592589))

(declare-fun m!592597 () Bool)

(assert (=> b!616370 m!592597))

(declare-fun m!592599 () Bool)

(assert (=> b!616370 m!592599))

(declare-fun m!592601 () Bool)

(assert (=> b!616370 m!592601))

(declare-fun m!592603 () Bool)

(assert (=> b!616370 m!592603))

(assert (=> b!616370 m!592589))

(declare-fun m!592605 () Bool)

(assert (=> b!616370 m!592605))

(declare-fun m!592607 () Bool)

(assert (=> b!616370 m!592607))

(assert (=> b!616380 m!592589))

(assert (=> b!616380 m!592589))

(assert (=> b!616380 m!592593))

(declare-fun m!592609 () Bool)

(assert (=> b!616380 m!592609))

(assert (=> b!616380 m!592603))

(assert (=> b!616380 m!592589))

(declare-fun m!592611 () Bool)

(assert (=> b!616380 m!592611))

(assert (=> b!616380 m!592589))

(declare-fun m!592613 () Bool)

(assert (=> b!616380 m!592613))

(assert (=> b!616380 m!592607))

(declare-fun m!592615 () Bool)

(assert (=> b!616380 m!592615))

(assert (=> b!616380 m!592589))

(declare-fun m!592617 () Bool)

(assert (=> b!616380 m!592617))

(declare-fun m!592619 () Bool)

(assert (=> b!616371 m!592619))

(declare-fun m!592621 () Bool)

(assert (=> b!616377 m!592621))

(declare-fun m!592623 () Bool)

(assert (=> b!616383 m!592623))

(declare-fun m!592625 () Bool)

(assert (=> b!616364 m!592625))

(assert (=> b!616381 m!592589))

(assert (=> b!616381 m!592589))

(declare-fun m!592627 () Bool)

(assert (=> b!616381 m!592627))

(declare-fun m!592629 () Bool)

(assert (=> b!616372 m!592629))

(declare-fun m!592631 () Bool)

(assert (=> start!56042 m!592631))

(declare-fun m!592633 () Bool)

(assert (=> start!56042 m!592633))

(assert (=> b!616387 m!592581))

(assert (=> b!616387 m!592583))

(assert (=> b!616387 m!592589))

(assert (=> b!616365 m!592589))

(assert (=> b!616365 m!592589))

(declare-fun m!592635 () Bool)

(assert (=> b!616365 m!592635))

(declare-fun m!592637 () Bool)

(assert (=> b!616366 m!592637))

(declare-fun m!592639 () Bool)

(assert (=> b!616366 m!592639))

(assert (=> b!616366 m!592589))

(assert (=> b!616366 m!592581))

(declare-fun m!592641 () Bool)

(assert (=> b!616366 m!592641))

(declare-fun m!592643 () Bool)

(assert (=> b!616366 m!592643))

(declare-fun m!592645 () Bool)

(assert (=> b!616366 m!592645))

(assert (=> b!616366 m!592589))

(declare-fun m!592647 () Bool)

(assert (=> b!616366 m!592647))

(assert (=> b!616373 m!592589))

(assert (=> b!616373 m!592589))

(assert (=> b!616373 m!592627))

(check-sat (not b!616381) (not b!616374) (not b!616386) (not b!616379) (not b!616365) (not start!56042) (not b!616373) (not b!616370) (not b!616371) (not b!616364) (not b!616372) (not b!616377) (not b!616380) (not b!616366))
(check-sat)
