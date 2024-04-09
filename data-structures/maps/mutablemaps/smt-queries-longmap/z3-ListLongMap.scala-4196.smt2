; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57284 () Bool)

(assert start!57284)

(declare-fun b!633753 () Bool)

(declare-fun res!410022 () Bool)

(declare-fun e!362390 () Bool)

(assert (=> b!633753 (=> (not res!410022) (not e!362390))))

(declare-datatypes ((array!38150 0))(
  ( (array!38151 (arr!18301 (Array (_ BitVec 32) (_ BitVec 64))) (size!18665 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38150)

(declare-datatypes ((List!12395 0))(
  ( (Nil!12392) (Cons!12391 (h!13436 (_ BitVec 64)) (t!18631 List!12395)) )
))
(declare-fun arrayNoDuplicates!0 (array!38150 (_ BitVec 32) List!12395) Bool)

(assert (=> b!633753 (= res!410022 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12392))))

(declare-fun b!633754 () Bool)

(declare-fun e!362389 () Bool)

(declare-fun e!362398 () Bool)

(assert (=> b!633754 (= e!362389 e!362398)))

(declare-fun res!410021 () Bool)

(assert (=> b!633754 (=> (not res!410021) (not e!362398))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293003 () array!38150)

(declare-fun arrayContainsKey!0 (array!38150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633754 (= res!410021 (arrayContainsKey!0 lt!293003 (select (arr!18301 a!2986) j!136) j!136))))

(declare-fun b!633755 () Bool)

(declare-fun e!362396 () Bool)

(declare-datatypes ((SeekEntryResult!6748 0))(
  ( (MissingZero!6748 (index!29290 (_ BitVec 32))) (Found!6748 (index!29291 (_ BitVec 32))) (Intermediate!6748 (undefined!7560 Bool) (index!29292 (_ BitVec 32)) (x!58058 (_ BitVec 32))) (Undefined!6748) (MissingVacant!6748 (index!29293 (_ BitVec 32))) )
))
(declare-fun lt!293009 () SeekEntryResult!6748)

(declare-fun lt!293008 () SeekEntryResult!6748)

(assert (=> b!633755 (= e!362396 (= lt!293009 lt!293008))))

(declare-fun b!633756 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633756 (= e!362398 (arrayContainsKey!0 lt!293003 (select (arr!18301 a!2986) j!136) index!984))))

(declare-fun b!633757 () Bool)

(declare-fun res!410024 () Bool)

(declare-fun e!362392 () Bool)

(assert (=> b!633757 (=> (not res!410024) (not e!362392))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633757 (= res!410024 (validKeyInArray!0 k0!1786))))

(declare-fun b!633758 () Bool)

(declare-fun e!362397 () Bool)

(assert (=> b!633758 (= e!362397 e!362389)))

(declare-fun res!410025 () Bool)

(assert (=> b!633758 (=> res!410025 e!362389)))

(declare-fun lt!293007 () (_ BitVec 64))

(declare-fun lt!293006 () (_ BitVec 64))

(assert (=> b!633758 (= res!410025 (or (not (= (select (arr!18301 a!2986) j!136) lt!293006)) (not (= (select (arr!18301 a!2986) j!136) lt!293007)) (bvsge j!136 index!984)))))

(declare-fun b!633759 () Bool)

(declare-fun e!362393 () Bool)

(assert (=> b!633759 (= e!362390 e!362393)))

(declare-fun res!410028 () Bool)

(assert (=> b!633759 (=> (not res!410028) (not e!362393))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!633759 (= res!410028 (= (select (store (arr!18301 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633759 (= lt!293003 (array!38151 (store (arr!18301 a!2986) i!1108 k0!1786) (size!18665 a!2986)))))

(declare-fun b!633761 () Bool)

(declare-fun res!410032 () Bool)

(assert (=> b!633761 (=> (not res!410032) (not e!362392))))

(assert (=> b!633761 (= res!410032 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633762 () Bool)

(declare-fun res!410033 () Bool)

(assert (=> b!633762 (=> (not res!410033) (not e!362392))))

(assert (=> b!633762 (= res!410033 (validKeyInArray!0 (select (arr!18301 a!2986) j!136)))))

(declare-fun b!633763 () Bool)

(declare-fun res!410029 () Bool)

(assert (=> b!633763 (=> (not res!410029) (not e!362392))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!633763 (= res!410029 (and (= (size!18665 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18665 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18665 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633764 () Bool)

(declare-fun res!410023 () Bool)

(assert (=> b!633764 (=> (not res!410023) (not e!362390))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!633764 (= res!410023 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18301 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633765 () Bool)

(declare-datatypes ((Unit!21350 0))(
  ( (Unit!21351) )
))
(declare-fun e!362395 () Unit!21350)

(declare-fun Unit!21352 () Unit!21350)

(assert (=> b!633765 (= e!362395 Unit!21352)))

(assert (=> b!633765 false))

(declare-fun b!633766 () Bool)

(assert (=> b!633766 (= e!362392 e!362390)))

(declare-fun res!410035 () Bool)

(assert (=> b!633766 (=> (not res!410035) (not e!362390))))

(declare-fun lt!293005 () SeekEntryResult!6748)

(assert (=> b!633766 (= res!410035 (or (= lt!293005 (MissingZero!6748 i!1108)) (= lt!293005 (MissingVacant!6748 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38150 (_ BitVec 32)) SeekEntryResult!6748)

(assert (=> b!633766 (= lt!293005 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!410034 () Bool)

(assert (=> start!57284 (=> (not res!410034) (not e!362392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57284 (= res!410034 (validMask!0 mask!3053))))

(assert (=> start!57284 e!362392))

(assert (=> start!57284 true))

(declare-fun array_inv!14075 (array!38150) Bool)

(assert (=> start!57284 (array_inv!14075 a!2986)))

(declare-fun b!633760 () Bool)

(declare-fun e!362391 () Bool)

(assert (=> b!633760 (= e!362391 true)))

(assert (=> b!633760 e!362397))

(declare-fun res!410027 () Bool)

(assert (=> b!633760 (=> (not res!410027) (not e!362397))))

(assert (=> b!633760 (= res!410027 (= lt!293007 (select (arr!18301 a!2986) j!136)))))

(assert (=> b!633760 (= lt!293007 (select (store (arr!18301 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!633767 () Bool)

(declare-fun e!362388 () Bool)

(assert (=> b!633767 (= e!362393 e!362388)))

(declare-fun res!410036 () Bool)

(assert (=> b!633767 (=> (not res!410036) (not e!362388))))

(assert (=> b!633767 (= res!410036 (and (= lt!293009 (Found!6748 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18301 a!2986) index!984) (select (arr!18301 a!2986) j!136))) (not (= (select (arr!18301 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38150 (_ BitVec 32)) SeekEntryResult!6748)

(assert (=> b!633767 (= lt!293009 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18301 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633768 () Bool)

(declare-fun res!410026 () Bool)

(assert (=> b!633768 (=> (not res!410026) (not e!362390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38150 (_ BitVec 32)) Bool)

(assert (=> b!633768 (= res!410026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633769 () Bool)

(declare-fun Unit!21353 () Unit!21350)

(assert (=> b!633769 (= e!362395 Unit!21353)))

(declare-fun b!633770 () Bool)

(assert (=> b!633770 (= e!362388 (not e!362391))))

(declare-fun res!410030 () Bool)

(assert (=> b!633770 (=> res!410030 e!362391)))

(declare-fun lt!293001 () SeekEntryResult!6748)

(assert (=> b!633770 (= res!410030 (not (= lt!293001 (Found!6748 index!984))))))

(declare-fun lt!293002 () Unit!21350)

(assert (=> b!633770 (= lt!293002 e!362395)))

(declare-fun c!72233 () Bool)

(assert (=> b!633770 (= c!72233 (= lt!293001 Undefined!6748))))

(assert (=> b!633770 (= lt!293001 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293006 lt!293003 mask!3053))))

(assert (=> b!633770 e!362396))

(declare-fun res!410031 () Bool)

(assert (=> b!633770 (=> (not res!410031) (not e!362396))))

(declare-fun lt!293004 () (_ BitVec 32))

(assert (=> b!633770 (= res!410031 (= lt!293008 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293004 vacantSpotIndex!68 lt!293006 lt!293003 mask!3053)))))

(assert (=> b!633770 (= lt!293008 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293004 vacantSpotIndex!68 (select (arr!18301 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633770 (= lt!293006 (select (store (arr!18301 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293010 () Unit!21350)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38150 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21350)

(assert (=> b!633770 (= lt!293010 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293004 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633770 (= lt!293004 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!57284 res!410034) b!633763))

(assert (= (and b!633763 res!410029) b!633762))

(assert (= (and b!633762 res!410033) b!633757))

(assert (= (and b!633757 res!410024) b!633761))

(assert (= (and b!633761 res!410032) b!633766))

(assert (= (and b!633766 res!410035) b!633768))

(assert (= (and b!633768 res!410026) b!633753))

(assert (= (and b!633753 res!410022) b!633764))

(assert (= (and b!633764 res!410023) b!633759))

(assert (= (and b!633759 res!410028) b!633767))

(assert (= (and b!633767 res!410036) b!633770))

(assert (= (and b!633770 res!410031) b!633755))

(assert (= (and b!633770 c!72233) b!633765))

(assert (= (and b!633770 (not c!72233)) b!633769))

(assert (= (and b!633770 (not res!410030)) b!633760))

(assert (= (and b!633760 res!410027) b!633758))

(assert (= (and b!633758 (not res!410025)) b!633754))

(assert (= (and b!633754 res!410021) b!633756))

(declare-fun m!608401 () Bool)

(assert (=> b!633758 m!608401))

(declare-fun m!608403 () Bool)

(assert (=> b!633768 m!608403))

(declare-fun m!608405 () Bool)

(assert (=> b!633767 m!608405))

(assert (=> b!633767 m!608401))

(assert (=> b!633767 m!608401))

(declare-fun m!608407 () Bool)

(assert (=> b!633767 m!608407))

(declare-fun m!608409 () Bool)

(assert (=> b!633770 m!608409))

(assert (=> b!633770 m!608401))

(declare-fun m!608411 () Bool)

(assert (=> b!633770 m!608411))

(declare-fun m!608413 () Bool)

(assert (=> b!633770 m!608413))

(declare-fun m!608415 () Bool)

(assert (=> b!633770 m!608415))

(declare-fun m!608417 () Bool)

(assert (=> b!633770 m!608417))

(assert (=> b!633770 m!608401))

(declare-fun m!608419 () Bool)

(assert (=> b!633770 m!608419))

(declare-fun m!608421 () Bool)

(assert (=> b!633770 m!608421))

(assert (=> b!633756 m!608401))

(assert (=> b!633756 m!608401))

(declare-fun m!608423 () Bool)

(assert (=> b!633756 m!608423))

(declare-fun m!608425 () Bool)

(assert (=> b!633753 m!608425))

(assert (=> b!633760 m!608401))

(assert (=> b!633760 m!608411))

(declare-fun m!608427 () Bool)

(assert (=> b!633760 m!608427))

(declare-fun m!608429 () Bool)

(assert (=> b!633766 m!608429))

(declare-fun m!608431 () Bool)

(assert (=> b!633761 m!608431))

(declare-fun m!608433 () Bool)

(assert (=> start!57284 m!608433))

(declare-fun m!608435 () Bool)

(assert (=> start!57284 m!608435))

(assert (=> b!633759 m!608411))

(declare-fun m!608437 () Bool)

(assert (=> b!633759 m!608437))

(declare-fun m!608439 () Bool)

(assert (=> b!633757 m!608439))

(assert (=> b!633754 m!608401))

(assert (=> b!633754 m!608401))

(declare-fun m!608441 () Bool)

(assert (=> b!633754 m!608441))

(declare-fun m!608443 () Bool)

(assert (=> b!633764 m!608443))

(assert (=> b!633762 m!608401))

(assert (=> b!633762 m!608401))

(declare-fun m!608445 () Bool)

(assert (=> b!633762 m!608445))

(check-sat (not start!57284) (not b!633753) (not b!633756) (not b!633770) (not b!633762) (not b!633761) (not b!633767) (not b!633766) (not b!633754) (not b!633757) (not b!633768))
(check-sat)
