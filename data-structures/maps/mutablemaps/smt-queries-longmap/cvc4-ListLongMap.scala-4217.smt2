; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57838 () Bool)

(assert start!57838)

(declare-fun b!639485 () Bool)

(declare-datatypes ((Unit!21606 0))(
  ( (Unit!21607) )
))
(declare-fun e!366011 () Unit!21606)

(declare-fun Unit!21608 () Unit!21606)

(assert (=> b!639485 (= e!366011 Unit!21608)))

(declare-fun b!639486 () Bool)

(declare-fun e!366018 () Bool)

(declare-datatypes ((SeekEntryResult!6812 0))(
  ( (MissingZero!6812 (index!29564 (_ BitVec 32))) (Found!6812 (index!29565 (_ BitVec 32))) (Intermediate!6812 (undefined!7624 Bool) (index!29566 (_ BitVec 32)) (x!58344 (_ BitVec 32))) (Undefined!6812) (MissingVacant!6812 (index!29567 (_ BitVec 32))) )
))
(declare-fun lt!295923 () SeekEntryResult!6812)

(declare-fun lt!295921 () SeekEntryResult!6812)

(assert (=> b!639486 (= e!366018 (= lt!295923 lt!295921))))

(declare-fun b!639487 () Bool)

(declare-fun res!414185 () Bool)

(declare-fun e!366015 () Bool)

(assert (=> b!639487 (=> (not res!414185) (not e!366015))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38296 0))(
  ( (array!38297 (arr!18365 (Array (_ BitVec 32) (_ BitVec 64))) (size!18729 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38296)

(assert (=> b!639487 (= res!414185 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18365 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639488 () Bool)

(declare-fun res!414183 () Bool)

(declare-fun e!366012 () Bool)

(assert (=> b!639488 (=> (not res!414183) (not e!366012))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639488 (= res!414183 (validKeyInArray!0 (select (arr!18365 a!2986) j!136)))))

(declare-fun b!639489 () Bool)

(declare-fun res!414178 () Bool)

(assert (=> b!639489 (=> (not res!414178) (not e!366012))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!639489 (= res!414178 (and (= (size!18729 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18729 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18729 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639490 () Bool)

(assert (=> b!639490 (= e!366012 e!366015)))

(declare-fun res!414181 () Bool)

(assert (=> b!639490 (=> (not res!414181) (not e!366015))))

(declare-fun lt!295927 () SeekEntryResult!6812)

(assert (=> b!639490 (= res!414181 (or (= lt!295927 (MissingZero!6812 i!1108)) (= lt!295927 (MissingVacant!6812 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38296 (_ BitVec 32)) SeekEntryResult!6812)

(assert (=> b!639490 (= lt!295927 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!639491 () Bool)

(declare-fun e!366009 () Bool)

(declare-fun e!366017 () Bool)

(assert (=> b!639491 (= e!366009 (not e!366017))))

(declare-fun res!414176 () Bool)

(assert (=> b!639491 (=> res!414176 e!366017)))

(declare-fun lt!295926 () SeekEntryResult!6812)

(assert (=> b!639491 (= res!414176 (not (= lt!295926 (Found!6812 index!984))))))

(declare-fun lt!295924 () Unit!21606)

(assert (=> b!639491 (= lt!295924 e!366011)))

(declare-fun c!73022 () Bool)

(assert (=> b!639491 (= c!73022 (= lt!295926 Undefined!6812))))

(declare-fun lt!295922 () array!38296)

(declare-fun lt!295928 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38296 (_ BitVec 32)) SeekEntryResult!6812)

(assert (=> b!639491 (= lt!295926 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295928 lt!295922 mask!3053))))

(assert (=> b!639491 e!366018))

(declare-fun res!414186 () Bool)

(assert (=> b!639491 (=> (not res!414186) (not e!366018))))

(declare-fun lt!295925 () (_ BitVec 32))

(assert (=> b!639491 (= res!414186 (= lt!295921 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295925 vacantSpotIndex!68 lt!295928 lt!295922 mask!3053)))))

(assert (=> b!639491 (= lt!295921 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295925 vacantSpotIndex!68 (select (arr!18365 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639491 (= lt!295928 (select (store (arr!18365 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295919 () Unit!21606)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38296 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21606)

(assert (=> b!639491 (= lt!295919 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295925 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639491 (= lt!295925 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639492 () Bool)

(declare-fun e!366013 () Bool)

(declare-fun e!366016 () Bool)

(assert (=> b!639492 (= e!366013 e!366016)))

(declare-fun res!414184 () Bool)

(assert (=> b!639492 (=> res!414184 e!366016)))

(declare-fun lt!295920 () (_ BitVec 64))

(assert (=> b!639492 (= res!414184 (or (not (= (select (arr!18365 a!2986) j!136) lt!295928)) (not (= (select (arr!18365 a!2986) j!136) lt!295920)) (bvsge j!136 index!984)))))

(declare-fun b!639493 () Bool)

(declare-fun e!366008 () Bool)

(assert (=> b!639493 (= e!366008 e!366009)))

(declare-fun res!414177 () Bool)

(assert (=> b!639493 (=> (not res!414177) (not e!366009))))

(assert (=> b!639493 (= res!414177 (and (= lt!295923 (Found!6812 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18365 a!2986) index!984) (select (arr!18365 a!2986) j!136))) (not (= (select (arr!18365 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!639493 (= lt!295923 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18365 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639494 () Bool)

(assert (=> b!639494 (= e!366015 e!366008)))

(declare-fun res!414191 () Bool)

(assert (=> b!639494 (=> (not res!414191) (not e!366008))))

(assert (=> b!639494 (= res!414191 (= (select (store (arr!18365 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639494 (= lt!295922 (array!38297 (store (arr!18365 a!2986) i!1108 k!1786) (size!18729 a!2986)))))

(declare-fun b!639495 () Bool)

(declare-fun Unit!21609 () Unit!21606)

(assert (=> b!639495 (= e!366011 Unit!21609)))

(assert (=> b!639495 false))

(declare-fun b!639496 () Bool)

(declare-fun res!414182 () Bool)

(assert (=> b!639496 (=> (not res!414182) (not e!366015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38296 (_ BitVec 32)) Bool)

(assert (=> b!639496 (= res!414182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639497 () Bool)

(declare-fun res!414187 () Bool)

(assert (=> b!639497 (=> (not res!414187) (not e!366015))))

(declare-datatypes ((List!12459 0))(
  ( (Nil!12456) (Cons!12455 (h!13500 (_ BitVec 64)) (t!18695 List!12459)) )
))
(declare-fun arrayNoDuplicates!0 (array!38296 (_ BitVec 32) List!12459) Bool)

(assert (=> b!639497 (= res!414187 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12456))))

(declare-fun b!639498 () Bool)

(declare-fun res!414179 () Bool)

(assert (=> b!639498 (=> (not res!414179) (not e!366012))))

(assert (=> b!639498 (= res!414179 (validKeyInArray!0 k!1786))))

(declare-fun res!414175 () Bool)

(assert (=> start!57838 (=> (not res!414175) (not e!366012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57838 (= res!414175 (validMask!0 mask!3053))))

(assert (=> start!57838 e!366012))

(assert (=> start!57838 true))

(declare-fun array_inv!14139 (array!38296) Bool)

(assert (=> start!57838 (array_inv!14139 a!2986)))

(declare-fun b!639499 () Bool)

(declare-fun e!366019 () Bool)

(assert (=> b!639499 (= e!366019 true)))

(assert (=> b!639499 (arrayNoDuplicates!0 lt!295922 #b00000000000000000000000000000000 Nil!12456)))

(declare-fun lt!295918 () Unit!21606)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38296 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12459) Unit!21606)

(assert (=> b!639499 (= lt!295918 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12456))))

(declare-fun arrayContainsKey!0 (array!38296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639499 (arrayContainsKey!0 lt!295922 (select (arr!18365 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295929 () Unit!21606)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38296 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21606)

(assert (=> b!639499 (= lt!295929 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295922 (select (arr!18365 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639500 () Bool)

(declare-fun e!366010 () Bool)

(assert (=> b!639500 (= e!366016 e!366010)))

(declare-fun res!414188 () Bool)

(assert (=> b!639500 (=> (not res!414188) (not e!366010))))

(assert (=> b!639500 (= res!414188 (arrayContainsKey!0 lt!295922 (select (arr!18365 a!2986) j!136) j!136))))

(declare-fun b!639501 () Bool)

(declare-fun res!414189 () Bool)

(assert (=> b!639501 (=> (not res!414189) (not e!366012))))

(assert (=> b!639501 (= res!414189 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639502 () Bool)

(assert (=> b!639502 (= e!366017 e!366019)))

(declare-fun res!414190 () Bool)

(assert (=> b!639502 (=> res!414190 e!366019)))

(assert (=> b!639502 (= res!414190 (or (not (= (select (arr!18365 a!2986) j!136) lt!295928)) (not (= (select (arr!18365 a!2986) j!136) lt!295920)) (bvsge j!136 index!984)))))

(assert (=> b!639502 e!366013))

(declare-fun res!414180 () Bool)

(assert (=> b!639502 (=> (not res!414180) (not e!366013))))

(assert (=> b!639502 (= res!414180 (= lt!295920 (select (arr!18365 a!2986) j!136)))))

(assert (=> b!639502 (= lt!295920 (select (store (arr!18365 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!639503 () Bool)

(assert (=> b!639503 (= e!366010 (arrayContainsKey!0 lt!295922 (select (arr!18365 a!2986) j!136) index!984))))

(assert (= (and start!57838 res!414175) b!639489))

(assert (= (and b!639489 res!414178) b!639488))

(assert (= (and b!639488 res!414183) b!639498))

(assert (= (and b!639498 res!414179) b!639501))

(assert (= (and b!639501 res!414189) b!639490))

(assert (= (and b!639490 res!414181) b!639496))

(assert (= (and b!639496 res!414182) b!639497))

(assert (= (and b!639497 res!414187) b!639487))

(assert (= (and b!639487 res!414185) b!639494))

(assert (= (and b!639494 res!414191) b!639493))

(assert (= (and b!639493 res!414177) b!639491))

(assert (= (and b!639491 res!414186) b!639486))

(assert (= (and b!639491 c!73022) b!639495))

(assert (= (and b!639491 (not c!73022)) b!639485))

(assert (= (and b!639491 (not res!414176)) b!639502))

(assert (= (and b!639502 res!414180) b!639492))

(assert (= (and b!639492 (not res!414184)) b!639500))

(assert (= (and b!639500 res!414188) b!639503))

(assert (= (and b!639502 (not res!414190)) b!639499))

(declare-fun m!613407 () Bool)

(assert (=> b!639501 m!613407))

(declare-fun m!613409 () Bool)

(assert (=> b!639488 m!613409))

(assert (=> b!639488 m!613409))

(declare-fun m!613411 () Bool)

(assert (=> b!639488 m!613411))

(assert (=> b!639503 m!613409))

(assert (=> b!639503 m!613409))

(declare-fun m!613413 () Bool)

(assert (=> b!639503 m!613413))

(assert (=> b!639500 m!613409))

(assert (=> b!639500 m!613409))

(declare-fun m!613415 () Bool)

(assert (=> b!639500 m!613415))

(declare-fun m!613417 () Bool)

(assert (=> b!639497 m!613417))

(assert (=> b!639499 m!613409))

(assert (=> b!639499 m!613409))

(declare-fun m!613419 () Bool)

(assert (=> b!639499 m!613419))

(assert (=> b!639499 m!613409))

(declare-fun m!613421 () Bool)

(assert (=> b!639499 m!613421))

(declare-fun m!613423 () Bool)

(assert (=> b!639499 m!613423))

(declare-fun m!613425 () Bool)

(assert (=> b!639499 m!613425))

(declare-fun m!613427 () Bool)

(assert (=> b!639496 m!613427))

(declare-fun m!613429 () Bool)

(assert (=> b!639494 m!613429))

(declare-fun m!613431 () Bool)

(assert (=> b!639494 m!613431))

(declare-fun m!613433 () Bool)

(assert (=> b!639498 m!613433))

(assert (=> b!639492 m!613409))

(declare-fun m!613435 () Bool)

(assert (=> b!639490 m!613435))

(declare-fun m!613437 () Bool)

(assert (=> start!57838 m!613437))

(declare-fun m!613439 () Bool)

(assert (=> start!57838 m!613439))

(declare-fun m!613441 () Bool)

(assert (=> b!639487 m!613441))

(assert (=> b!639502 m!613409))

(assert (=> b!639502 m!613429))

(declare-fun m!613443 () Bool)

(assert (=> b!639502 m!613443))

(declare-fun m!613445 () Bool)

(assert (=> b!639491 m!613445))

(declare-fun m!613447 () Bool)

(assert (=> b!639491 m!613447))

(assert (=> b!639491 m!613409))

(assert (=> b!639491 m!613409))

(declare-fun m!613449 () Bool)

(assert (=> b!639491 m!613449))

(assert (=> b!639491 m!613429))

(declare-fun m!613451 () Bool)

(assert (=> b!639491 m!613451))

(declare-fun m!613453 () Bool)

(assert (=> b!639491 m!613453))

(declare-fun m!613455 () Bool)

(assert (=> b!639491 m!613455))

(declare-fun m!613457 () Bool)

(assert (=> b!639493 m!613457))

(assert (=> b!639493 m!613409))

(assert (=> b!639493 m!613409))

(declare-fun m!613459 () Bool)

(assert (=> b!639493 m!613459))

(push 1)

(assert (not b!639497))

(assert (not b!639496))

(assert (not b!639491))

(assert (not b!639490))

(assert (not b!639501))

(assert (not b!639493))

(assert (not b!639499))

(assert (not b!639488))

(assert (not b!639500))

(assert (not start!57838))

(assert (not b!639503))

(assert (not b!639498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

