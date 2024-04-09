; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58338 () Bool)

(assert start!58338)

(declare-fun b!643648 () Bool)

(declare-fun e!368746 () Bool)

(declare-fun e!368732 () Bool)

(assert (=> b!643648 (= e!368746 e!368732)))

(declare-fun res!416993 () Bool)

(assert (=> b!643648 (=> res!416993 e!368732)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!298279 () (_ BitVec 64))

(declare-fun lt!298281 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38391 0))(
  ( (array!38392 (arr!18405 (Array (_ BitVec 32) (_ BitVec 64))) (size!18769 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38391)

(assert (=> b!643648 (= res!416993 (or (not (= (select (arr!18405 a!2986) j!136) lt!298281)) (not (= (select (arr!18405 a!2986) j!136) lt!298279)) (bvsge j!136 index!984)))))

(declare-fun b!643650 () Bool)

(declare-fun e!368742 () Bool)

(assert (=> b!643650 (= e!368732 e!368742)))

(declare-fun res!416995 () Bool)

(assert (=> b!643650 (=> (not res!416995) (not e!368742))))

(declare-fun lt!298275 () array!38391)

(declare-fun arrayContainsKey!0 (array!38391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643650 (= res!416995 (arrayContainsKey!0 lt!298275 (select (arr!18405 a!2986) j!136) j!136))))

(declare-fun b!643651 () Bool)

(declare-fun res!417003 () Bool)

(declare-fun e!368744 () Bool)

(assert (=> b!643651 (=> (not res!417003) (not e!368744))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!643651 (= res!417003 (and (= (size!18769 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18769 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18769 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643652 () Bool)

(assert (=> b!643652 (= e!368742 (arrayContainsKey!0 lt!298275 (select (arr!18405 a!2986) j!136) index!984))))

(declare-fun b!643653 () Bool)

(declare-fun res!417008 () Bool)

(declare-fun e!368743 () Bool)

(assert (=> b!643653 (=> (not res!417008) (not e!368743))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!643653 (= res!417008 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18405 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!643654 () Bool)

(declare-fun e!368737 () Bool)

(declare-fun e!368739 () Bool)

(assert (=> b!643654 (= e!368737 e!368739)))

(declare-fun res!417000 () Bool)

(assert (=> b!643654 (=> res!417000 e!368739)))

(assert (=> b!643654 (= res!417000 (or (not (= (select (arr!18405 a!2986) j!136) lt!298281)) (not (= (select (arr!18405 a!2986) j!136) lt!298279))))))

(assert (=> b!643654 e!368746))

(declare-fun res!416996 () Bool)

(assert (=> b!643654 (=> (not res!416996) (not e!368746))))

(assert (=> b!643654 (= res!416996 (= lt!298279 (select (arr!18405 a!2986) j!136)))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!643654 (= lt!298279 (select (store (arr!18405 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!643655 () Bool)

(declare-fun e!368738 () Bool)

(assert (=> b!643655 (= e!368738 true)))

(declare-fun e!368741 () Bool)

(assert (=> b!643655 e!368741))

(declare-fun res!417007 () Bool)

(assert (=> b!643655 (=> (not res!417007) (not e!368741))))

(assert (=> b!643655 (= res!417007 (arrayContainsKey!0 lt!298275 (select (arr!18405 a!2986) j!136) j!136))))

(declare-fun b!643656 () Bool)

(assert (=> b!643656 (= e!368744 e!368743)))

(declare-fun res!416999 () Bool)

(assert (=> b!643656 (=> (not res!416999) (not e!368743))))

(declare-datatypes ((SeekEntryResult!6852 0))(
  ( (MissingZero!6852 (index!29739 (_ BitVec 32))) (Found!6852 (index!29740 (_ BitVec 32))) (Intermediate!6852 (undefined!7664 Bool) (index!29741 (_ BitVec 32)) (x!58541 (_ BitVec 32))) (Undefined!6852) (MissingVacant!6852 (index!29742 (_ BitVec 32))) )
))
(declare-fun lt!298278 () SeekEntryResult!6852)

(assert (=> b!643656 (= res!416999 (or (= lt!298278 (MissingZero!6852 i!1108)) (= lt!298278 (MissingVacant!6852 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38391 (_ BitVec 32)) SeekEntryResult!6852)

(assert (=> b!643656 (= lt!298278 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!643657 () Bool)

(declare-fun res!417004 () Bool)

(assert (=> b!643657 (=> (not res!417004) (not e!368744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643657 (= res!417004 (validKeyInArray!0 (select (arr!18405 a!2986) j!136)))))

(declare-fun b!643658 () Bool)

(declare-fun res!416991 () Bool)

(assert (=> b!643658 (=> (not res!416991) (not e!368744))))

(assert (=> b!643658 (= res!416991 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!417002 () Bool)

(assert (=> start!58338 (=> (not res!417002) (not e!368744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58338 (= res!417002 (validMask!0 mask!3053))))

(assert (=> start!58338 e!368744))

(assert (=> start!58338 true))

(declare-fun array_inv!14179 (array!38391) Bool)

(assert (=> start!58338 (array_inv!14179 a!2986)))

(declare-fun b!643649 () Bool)

(declare-fun e!368735 () Bool)

(assert (=> b!643649 (= e!368743 e!368735)))

(declare-fun res!416994 () Bool)

(assert (=> b!643649 (=> (not res!416994) (not e!368735))))

(assert (=> b!643649 (= res!416994 (= (select (store (arr!18405 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643649 (= lt!298275 (array!38392 (store (arr!18405 a!2986) i!1108 k!1786) (size!18769 a!2986)))))

(declare-fun b!643659 () Bool)

(declare-fun e!368734 () Bool)

(declare-fun lt!298276 () SeekEntryResult!6852)

(declare-fun lt!298273 () SeekEntryResult!6852)

(assert (=> b!643659 (= e!368734 (= lt!298276 lt!298273))))

(declare-fun b!643660 () Bool)

(assert (=> b!643660 (= e!368739 e!368738)))

(declare-fun res!416990 () Bool)

(assert (=> b!643660 (=> res!416990 e!368738)))

(assert (=> b!643660 (= res!416990 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!21784 0))(
  ( (Unit!21785) )
))
(declare-fun lt!298280 () Unit!21784)

(declare-fun e!368736 () Unit!21784)

(assert (=> b!643660 (= lt!298280 e!368736)))

(declare-fun c!73696 () Bool)

(assert (=> b!643660 (= c!73696 (bvslt j!136 index!984))))

(declare-fun b!643661 () Bool)

(declare-fun e!368745 () Bool)

(assert (=> b!643661 (= e!368745 (not e!368737))))

(declare-fun res!416992 () Bool)

(assert (=> b!643661 (=> res!416992 e!368737)))

(declare-fun lt!298269 () SeekEntryResult!6852)

(assert (=> b!643661 (= res!416992 (not (= lt!298269 (Found!6852 index!984))))))

(declare-fun lt!298272 () Unit!21784)

(declare-fun e!368733 () Unit!21784)

(assert (=> b!643661 (= lt!298272 e!368733)))

(declare-fun c!73697 () Bool)

(assert (=> b!643661 (= c!73697 (= lt!298269 Undefined!6852))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38391 (_ BitVec 32)) SeekEntryResult!6852)

(assert (=> b!643661 (= lt!298269 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298281 lt!298275 mask!3053))))

(assert (=> b!643661 e!368734))

(declare-fun res!417001 () Bool)

(assert (=> b!643661 (=> (not res!417001) (not e!368734))))

(declare-fun lt!298267 () (_ BitVec 32))

(assert (=> b!643661 (= res!417001 (= lt!298273 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298267 vacantSpotIndex!68 lt!298281 lt!298275 mask!3053)))))

(assert (=> b!643661 (= lt!298273 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298267 vacantSpotIndex!68 (select (arr!18405 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!643661 (= lt!298281 (select (store (arr!18405 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298268 () Unit!21784)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38391 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21784)

(assert (=> b!643661 (= lt!298268 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298267 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643661 (= lt!298267 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643662 () Bool)

(declare-fun Unit!21786 () Unit!21784)

(assert (=> b!643662 (= e!368733 Unit!21786)))

(declare-fun b!643663 () Bool)

(declare-fun res!416998 () Bool)

(assert (=> b!643663 (=> (not res!416998) (not e!368743))))

(declare-datatypes ((List!12499 0))(
  ( (Nil!12496) (Cons!12495 (h!13540 (_ BitVec 64)) (t!18735 List!12499)) )
))
(declare-fun arrayNoDuplicates!0 (array!38391 (_ BitVec 32) List!12499) Bool)

(assert (=> b!643663 (= res!416998 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12496))))

(declare-fun b!643664 () Bool)

(declare-fun res!416997 () Bool)

(assert (=> b!643664 (=> (not res!416997) (not e!368743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38391 (_ BitVec 32)) Bool)

(assert (=> b!643664 (= res!416997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!643665 () Bool)

(assert (=> b!643665 (= e!368735 e!368745)))

(declare-fun res!417005 () Bool)

(assert (=> b!643665 (=> (not res!417005) (not e!368745))))

(assert (=> b!643665 (= res!417005 (and (= lt!298276 (Found!6852 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18405 a!2986) index!984) (select (arr!18405 a!2986) j!136))) (not (= (select (arr!18405 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!643665 (= lt!298276 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18405 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643666 () Bool)

(declare-fun Unit!21787 () Unit!21784)

(assert (=> b!643666 (= e!368736 Unit!21787)))

(declare-fun lt!298270 () Unit!21784)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38391 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21784)

(assert (=> b!643666 (= lt!298270 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298275 (select (arr!18405 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643666 (arrayContainsKey!0 lt!298275 (select (arr!18405 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298271 () Unit!21784)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38391 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12499) Unit!21784)

(assert (=> b!643666 (= lt!298271 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12496))))

(assert (=> b!643666 (arrayNoDuplicates!0 lt!298275 #b00000000000000000000000000000000 Nil!12496)))

(declare-fun lt!298277 () Unit!21784)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38391 (_ BitVec 32) (_ BitVec 32)) Unit!21784)

(assert (=> b!643666 (= lt!298277 (lemmaNoDuplicateFromThenFromBigger!0 lt!298275 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643666 (arrayNoDuplicates!0 lt!298275 j!136 Nil!12496)))

(declare-fun lt!298274 () Unit!21784)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38391 (_ BitVec 64) (_ BitVec 32) List!12499) Unit!21784)

(assert (=> b!643666 (= lt!298274 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298275 (select (arr!18405 a!2986) j!136) j!136 Nil!12496))))

(assert (=> b!643666 false))

(declare-fun b!643667 () Bool)

(declare-fun Unit!21788 () Unit!21784)

(assert (=> b!643667 (= e!368733 Unit!21788)))

(assert (=> b!643667 false))

(declare-fun b!643668 () Bool)

(assert (=> b!643668 (= e!368741 (arrayContainsKey!0 lt!298275 (select (arr!18405 a!2986) j!136) index!984))))

(declare-fun b!643669 () Bool)

(declare-fun Unit!21789 () Unit!21784)

(assert (=> b!643669 (= e!368736 Unit!21789)))

(declare-fun b!643670 () Bool)

(declare-fun res!417006 () Bool)

(assert (=> b!643670 (=> (not res!417006) (not e!368744))))

(assert (=> b!643670 (= res!417006 (validKeyInArray!0 k!1786))))

(assert (= (and start!58338 res!417002) b!643651))

(assert (= (and b!643651 res!417003) b!643657))

(assert (= (and b!643657 res!417004) b!643670))

(assert (= (and b!643670 res!417006) b!643658))

(assert (= (and b!643658 res!416991) b!643656))

(assert (= (and b!643656 res!416999) b!643664))

(assert (= (and b!643664 res!416997) b!643663))

(assert (= (and b!643663 res!416998) b!643653))

(assert (= (and b!643653 res!417008) b!643649))

(assert (= (and b!643649 res!416994) b!643665))

(assert (= (and b!643665 res!417005) b!643661))

(assert (= (and b!643661 res!417001) b!643659))

(assert (= (and b!643661 c!73697) b!643667))

(assert (= (and b!643661 (not c!73697)) b!643662))

(assert (= (and b!643661 (not res!416992)) b!643654))

(assert (= (and b!643654 res!416996) b!643648))

(assert (= (and b!643648 (not res!416993)) b!643650))

(assert (= (and b!643650 res!416995) b!643652))

(assert (= (and b!643654 (not res!417000)) b!643660))

(assert (= (and b!643660 c!73696) b!643666))

(assert (= (and b!643660 (not c!73696)) b!643669))

(assert (= (and b!643660 (not res!416990)) b!643655))

(assert (= (and b!643655 res!417007) b!643668))

(declare-fun m!617403 () Bool)

(assert (=> b!643661 m!617403))

(declare-fun m!617405 () Bool)

(assert (=> b!643661 m!617405))

(declare-fun m!617407 () Bool)

(assert (=> b!643661 m!617407))

(declare-fun m!617409 () Bool)

(assert (=> b!643661 m!617409))

(assert (=> b!643661 m!617409))

(declare-fun m!617411 () Bool)

(assert (=> b!643661 m!617411))

(declare-fun m!617413 () Bool)

(assert (=> b!643661 m!617413))

(declare-fun m!617415 () Bool)

(assert (=> b!643661 m!617415))

(declare-fun m!617417 () Bool)

(assert (=> b!643661 m!617417))

(declare-fun m!617419 () Bool)

(assert (=> b!643653 m!617419))

(assert (=> b!643668 m!617409))

(assert (=> b!643668 m!617409))

(declare-fun m!617421 () Bool)

(assert (=> b!643668 m!617421))

(declare-fun m!617423 () Bool)

(assert (=> b!643658 m!617423))

(assert (=> b!643650 m!617409))

(assert (=> b!643650 m!617409))

(declare-fun m!617425 () Bool)

(assert (=> b!643650 m!617425))

(assert (=> b!643648 m!617409))

(declare-fun m!617427 () Bool)

(assert (=> b!643664 m!617427))

(declare-fun m!617429 () Bool)

(assert (=> b!643663 m!617429))

(assert (=> b!643657 m!617409))

(assert (=> b!643657 m!617409))

(declare-fun m!617431 () Bool)

(assert (=> b!643657 m!617431))

(declare-fun m!617433 () Bool)

(assert (=> b!643666 m!617433))

(assert (=> b!643666 m!617409))

(assert (=> b!643666 m!617409))

(declare-fun m!617435 () Bool)

(assert (=> b!643666 m!617435))

(assert (=> b!643666 m!617409))

(declare-fun m!617437 () Bool)

(assert (=> b!643666 m!617437))

(declare-fun m!617439 () Bool)

(assert (=> b!643666 m!617439))

(declare-fun m!617441 () Bool)

(assert (=> b!643666 m!617441))

(assert (=> b!643666 m!617409))

(declare-fun m!617443 () Bool)

(assert (=> b!643666 m!617443))

(declare-fun m!617445 () Bool)

(assert (=> b!643666 m!617445))

(assert (=> b!643649 m!617413))

(declare-fun m!617447 () Bool)

(assert (=> b!643649 m!617447))

(assert (=> b!643655 m!617409))

(assert (=> b!643655 m!617409))

(assert (=> b!643655 m!617425))

(declare-fun m!617449 () Bool)

(assert (=> b!643656 m!617449))

(assert (=> b!643654 m!617409))

(assert (=> b!643654 m!617413))

(declare-fun m!617451 () Bool)

(assert (=> b!643654 m!617451))

(declare-fun m!617453 () Bool)

(assert (=> b!643665 m!617453))

(assert (=> b!643665 m!617409))

(assert (=> b!643665 m!617409))

(declare-fun m!617455 () Bool)

(assert (=> b!643665 m!617455))

(declare-fun m!617457 () Bool)

(assert (=> start!58338 m!617457))

(declare-fun m!617459 () Bool)

(assert (=> start!58338 m!617459))

(declare-fun m!617461 () Bool)

(assert (=> b!643670 m!617461))

(assert (=> b!643652 m!617409))

(assert (=> b!643652 m!617409))

(assert (=> b!643652 m!617421))

(push 1)

