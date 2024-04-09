; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58448 () Bool)

(assert start!58448)

(declare-fun b!644872 () Bool)

(declare-fun e!369546 () Bool)

(declare-fun e!369551 () Bool)

(assert (=> b!644872 (= e!369546 e!369551)))

(declare-fun res!417851 () Bool)

(assert (=> b!644872 (=> (not res!417851) (not e!369551))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6865 0))(
  ( (MissingZero!6865 (index!29794 (_ BitVec 32))) (Found!6865 (index!29795 (_ BitVec 32))) (Intermediate!6865 (undefined!7677 Bool) (index!29796 (_ BitVec 32)) (x!58595 (_ BitVec 32))) (Undefined!6865) (MissingVacant!6865 (index!29797 (_ BitVec 32))) )
))
(declare-fun lt!299004 () SeekEntryResult!6865)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38420 0))(
  ( (array!38421 (arr!18418 (Array (_ BitVec 32) (_ BitVec 64))) (size!18782 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38420)

(assert (=> b!644872 (= res!417851 (and (= lt!299004 (Found!6865 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18418 a!2986) index!984) (select (arr!18418 a!2986) j!136))) (not (= (select (arr!18418 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38420 (_ BitVec 32)) SeekEntryResult!6865)

(assert (=> b!644872 (= lt!299004 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18418 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644873 () Bool)

(declare-fun e!369549 () Bool)

(assert (=> b!644873 (= e!369549 true)))

(declare-fun e!369552 () Bool)

(assert (=> b!644873 e!369552))

(declare-fun res!417863 () Bool)

(assert (=> b!644873 (=> (not res!417863) (not e!369552))))

(declare-fun lt!298999 () array!38420)

(declare-fun arrayContainsKey!0 (array!38420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644873 (= res!417863 (arrayContainsKey!0 lt!298999 (select (arr!18418 a!2986) j!136) j!136))))

(declare-fun e!369545 () Bool)

(declare-fun b!644874 () Bool)

(assert (=> b!644874 (= e!369545 (arrayContainsKey!0 lt!298999 (select (arr!18418 a!2986) j!136) index!984))))

(declare-fun b!644875 () Bool)

(declare-fun res!417849 () Bool)

(declare-fun e!369541 () Bool)

(assert (=> b!644875 (=> (not res!417849) (not e!369541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38420 (_ BitVec 32)) Bool)

(assert (=> b!644875 (= res!417849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644876 () Bool)

(declare-fun res!417859 () Bool)

(assert (=> b!644876 (=> (not res!417859) (not e!369541))))

(declare-datatypes ((List!12512 0))(
  ( (Nil!12509) (Cons!12508 (h!13553 (_ BitVec 64)) (t!18748 List!12512)) )
))
(declare-fun arrayNoDuplicates!0 (array!38420 (_ BitVec 32) List!12512) Bool)

(assert (=> b!644876 (= res!417859 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12509))))

(declare-fun b!644877 () Bool)

(declare-fun e!369540 () Bool)

(declare-fun e!369542 () Bool)

(assert (=> b!644877 (= e!369540 e!369542)))

(declare-fun res!417852 () Bool)

(assert (=> b!644877 (=> res!417852 e!369542)))

(declare-fun lt!299009 () (_ BitVec 64))

(declare-fun lt!298998 () (_ BitVec 64))

(assert (=> b!644877 (= res!417852 (or (not (= (select (arr!18418 a!2986) j!136) lt!298998)) (not (= (select (arr!18418 a!2986) j!136) lt!299009))))))

(declare-fun e!369543 () Bool)

(assert (=> b!644877 e!369543))

(declare-fun res!417860 () Bool)

(assert (=> b!644877 (=> (not res!417860) (not e!369543))))

(assert (=> b!644877 (= res!417860 (= lt!299009 (select (arr!18418 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!644877 (= lt!299009 (select (store (arr!18418 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!644878 () Bool)

(assert (=> b!644878 (= e!369541 e!369546)))

(declare-fun res!417856 () Bool)

(assert (=> b!644878 (=> (not res!417856) (not e!369546))))

(assert (=> b!644878 (= res!417856 (= (select (store (arr!18418 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644878 (= lt!298999 (array!38421 (store (arr!18418 a!2986) i!1108 k0!1786) (size!18782 a!2986)))))

(declare-fun b!644879 () Bool)

(assert (=> b!644879 (= e!369542 e!369549)))

(declare-fun res!417854 () Bool)

(assert (=> b!644879 (=> res!417854 e!369549)))

(assert (=> b!644879 (= res!417854 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!21862 0))(
  ( (Unit!21863) )
))
(declare-fun lt!299008 () Unit!21862)

(declare-fun e!369553 () Unit!21862)

(assert (=> b!644879 (= lt!299008 e!369553)))

(declare-fun c!73880 () Bool)

(assert (=> b!644879 (= c!73880 (bvslt j!136 index!984))))

(declare-fun b!644880 () Bool)

(declare-fun e!369548 () Bool)

(assert (=> b!644880 (= e!369543 e!369548)))

(declare-fun res!417848 () Bool)

(assert (=> b!644880 (=> res!417848 e!369548)))

(assert (=> b!644880 (= res!417848 (or (not (= (select (arr!18418 a!2986) j!136) lt!298998)) (not (= (select (arr!18418 a!2986) j!136) lt!299009)) (bvsge j!136 index!984)))))

(declare-fun b!644881 () Bool)

(declare-fun e!369550 () Unit!21862)

(declare-fun Unit!21864 () Unit!21862)

(assert (=> b!644881 (= e!369550 Unit!21864)))

(declare-fun b!644882 () Bool)

(declare-fun Unit!21865 () Unit!21862)

(assert (=> b!644882 (= e!369553 Unit!21865)))

(declare-fun b!644883 () Bool)

(declare-fun e!369547 () Bool)

(assert (=> b!644883 (= e!369547 e!369541)))

(declare-fun res!417857 () Bool)

(assert (=> b!644883 (=> (not res!417857) (not e!369541))))

(declare-fun lt!299005 () SeekEntryResult!6865)

(assert (=> b!644883 (= res!417857 (or (= lt!299005 (MissingZero!6865 i!1108)) (= lt!299005 (MissingVacant!6865 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38420 (_ BitVec 32)) SeekEntryResult!6865)

(assert (=> b!644883 (= lt!299005 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!644884 () Bool)

(declare-fun res!417866 () Bool)

(assert (=> b!644884 (=> (not res!417866) (not e!369547))))

(assert (=> b!644884 (= res!417866 (and (= (size!18782 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18782 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18782 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644885 () Bool)

(declare-fun res!417855 () Bool)

(assert (=> b!644885 (=> (not res!417855) (not e!369547))))

(assert (=> b!644885 (= res!417855 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644886 () Bool)

(assert (=> b!644886 (= e!369548 e!369545)))

(declare-fun res!417858 () Bool)

(assert (=> b!644886 (=> (not res!417858) (not e!369545))))

(assert (=> b!644886 (= res!417858 (arrayContainsKey!0 lt!298999 (select (arr!18418 a!2986) j!136) j!136))))

(declare-fun b!644887 () Bool)

(declare-fun Unit!21866 () Unit!21862)

(assert (=> b!644887 (= e!369550 Unit!21866)))

(assert (=> b!644887 false))

(declare-fun b!644888 () Bool)

(declare-fun Unit!21867 () Unit!21862)

(assert (=> b!644888 (= e!369553 Unit!21867)))

(declare-fun lt!299000 () Unit!21862)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38420 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21862)

(assert (=> b!644888 (= lt!299000 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298999 (select (arr!18418 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644888 (arrayContainsKey!0 lt!298999 (select (arr!18418 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298996 () Unit!21862)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38420 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12512) Unit!21862)

(assert (=> b!644888 (= lt!298996 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12509))))

(assert (=> b!644888 (arrayNoDuplicates!0 lt!298999 #b00000000000000000000000000000000 Nil!12509)))

(declare-fun lt!299001 () Unit!21862)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38420 (_ BitVec 32) (_ BitVec 32)) Unit!21862)

(assert (=> b!644888 (= lt!299001 (lemmaNoDuplicateFromThenFromBigger!0 lt!298999 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644888 (arrayNoDuplicates!0 lt!298999 j!136 Nil!12509)))

(declare-fun lt!299002 () Unit!21862)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38420 (_ BitVec 64) (_ BitVec 32) List!12512) Unit!21862)

(assert (=> b!644888 (= lt!299002 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298999 (select (arr!18418 a!2986) j!136) j!136 Nil!12509))))

(assert (=> b!644888 false))

(declare-fun b!644889 () Bool)

(assert (=> b!644889 (= e!369552 (arrayContainsKey!0 lt!298999 (select (arr!18418 a!2986) j!136) index!984))))

(declare-fun b!644890 () Bool)

(declare-fun res!417850 () Bool)

(assert (=> b!644890 (=> (not res!417850) (not e!369541))))

(assert (=> b!644890 (= res!417850 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18418 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644891 () Bool)

(declare-fun res!417864 () Bool)

(assert (=> b!644891 (=> (not res!417864) (not e!369547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644891 (= res!417864 (validKeyInArray!0 (select (arr!18418 a!2986) j!136)))))

(declare-fun b!644892 () Bool)

(assert (=> b!644892 (= e!369551 (not e!369540))))

(declare-fun res!417853 () Bool)

(assert (=> b!644892 (=> res!417853 e!369540)))

(declare-fun lt!299007 () SeekEntryResult!6865)

(assert (=> b!644892 (= res!417853 (not (= lt!299007 (Found!6865 index!984))))))

(declare-fun lt!299003 () Unit!21862)

(assert (=> b!644892 (= lt!299003 e!369550)))

(declare-fun c!73879 () Bool)

(assert (=> b!644892 (= c!73879 (= lt!299007 Undefined!6865))))

(assert (=> b!644892 (= lt!299007 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298998 lt!298999 mask!3053))))

(declare-fun e!369544 () Bool)

(assert (=> b!644892 e!369544))

(declare-fun res!417862 () Bool)

(assert (=> b!644892 (=> (not res!417862) (not e!369544))))

(declare-fun lt!299010 () (_ BitVec 32))

(declare-fun lt!299006 () SeekEntryResult!6865)

(assert (=> b!644892 (= res!417862 (= lt!299006 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299010 vacantSpotIndex!68 lt!298998 lt!298999 mask!3053)))))

(assert (=> b!644892 (= lt!299006 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299010 vacantSpotIndex!68 (select (arr!18418 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!644892 (= lt!298998 (select (store (arr!18418 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!298997 () Unit!21862)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38420 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21862)

(assert (=> b!644892 (= lt!298997 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299010 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644892 (= lt!299010 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644893 () Bool)

(declare-fun res!417865 () Bool)

(assert (=> b!644893 (=> (not res!417865) (not e!369547))))

(assert (=> b!644893 (= res!417865 (validKeyInArray!0 k0!1786))))

(declare-fun res!417861 () Bool)

(assert (=> start!58448 (=> (not res!417861) (not e!369547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58448 (= res!417861 (validMask!0 mask!3053))))

(assert (=> start!58448 e!369547))

(assert (=> start!58448 true))

(declare-fun array_inv!14192 (array!38420) Bool)

(assert (=> start!58448 (array_inv!14192 a!2986)))

(declare-fun b!644894 () Bool)

(assert (=> b!644894 (= e!369544 (= lt!299004 lt!299006))))

(assert (= (and start!58448 res!417861) b!644884))

(assert (= (and b!644884 res!417866) b!644891))

(assert (= (and b!644891 res!417864) b!644893))

(assert (= (and b!644893 res!417865) b!644885))

(assert (= (and b!644885 res!417855) b!644883))

(assert (= (and b!644883 res!417857) b!644875))

(assert (= (and b!644875 res!417849) b!644876))

(assert (= (and b!644876 res!417859) b!644890))

(assert (= (and b!644890 res!417850) b!644878))

(assert (= (and b!644878 res!417856) b!644872))

(assert (= (and b!644872 res!417851) b!644892))

(assert (= (and b!644892 res!417862) b!644894))

(assert (= (and b!644892 c!73879) b!644887))

(assert (= (and b!644892 (not c!73879)) b!644881))

(assert (= (and b!644892 (not res!417853)) b!644877))

(assert (= (and b!644877 res!417860) b!644880))

(assert (= (and b!644880 (not res!417848)) b!644886))

(assert (= (and b!644886 res!417858) b!644874))

(assert (= (and b!644877 (not res!417852)) b!644879))

(assert (= (and b!644879 c!73880) b!644888))

(assert (= (and b!644879 (not c!73880)) b!644882))

(assert (= (and b!644879 (not res!417854)) b!644873))

(assert (= (and b!644873 res!417863) b!644889))

(declare-fun m!618495 () Bool)

(assert (=> b!644890 m!618495))

(declare-fun m!618497 () Bool)

(assert (=> b!644873 m!618497))

(assert (=> b!644873 m!618497))

(declare-fun m!618499 () Bool)

(assert (=> b!644873 m!618499))

(declare-fun m!618501 () Bool)

(assert (=> b!644892 m!618501))

(declare-fun m!618503 () Bool)

(assert (=> b!644892 m!618503))

(assert (=> b!644892 m!618497))

(declare-fun m!618505 () Bool)

(assert (=> b!644892 m!618505))

(declare-fun m!618507 () Bool)

(assert (=> b!644892 m!618507))

(declare-fun m!618509 () Bool)

(assert (=> b!644892 m!618509))

(declare-fun m!618511 () Bool)

(assert (=> b!644892 m!618511))

(assert (=> b!644892 m!618497))

(declare-fun m!618513 () Bool)

(assert (=> b!644892 m!618513))

(assert (=> b!644891 m!618497))

(assert (=> b!644891 m!618497))

(declare-fun m!618515 () Bool)

(assert (=> b!644891 m!618515))

(assert (=> b!644886 m!618497))

(assert (=> b!644886 m!618497))

(assert (=> b!644886 m!618499))

(declare-fun m!618517 () Bool)

(assert (=> b!644872 m!618517))

(assert (=> b!644872 m!618497))

(assert (=> b!644872 m!618497))

(declare-fun m!618519 () Bool)

(assert (=> b!644872 m!618519))

(declare-fun m!618521 () Bool)

(assert (=> b!644876 m!618521))

(declare-fun m!618523 () Bool)

(assert (=> b!644875 m!618523))

(declare-fun m!618525 () Bool)

(assert (=> b!644885 m!618525))

(assert (=> b!644889 m!618497))

(assert (=> b!644889 m!618497))

(declare-fun m!618527 () Bool)

(assert (=> b!644889 m!618527))

(assert (=> b!644880 m!618497))

(assert (=> b!644874 m!618497))

(assert (=> b!644874 m!618497))

(assert (=> b!644874 m!618527))

(assert (=> b!644878 m!618505))

(declare-fun m!618529 () Bool)

(assert (=> b!644878 m!618529))

(declare-fun m!618531 () Bool)

(assert (=> b!644893 m!618531))

(assert (=> b!644877 m!618497))

(assert (=> b!644877 m!618505))

(declare-fun m!618533 () Bool)

(assert (=> b!644877 m!618533))

(assert (=> b!644888 m!618497))

(declare-fun m!618535 () Bool)

(assert (=> b!644888 m!618535))

(assert (=> b!644888 m!618497))

(declare-fun m!618537 () Bool)

(assert (=> b!644888 m!618537))

(assert (=> b!644888 m!618497))

(declare-fun m!618539 () Bool)

(assert (=> b!644888 m!618539))

(declare-fun m!618541 () Bool)

(assert (=> b!644888 m!618541))

(declare-fun m!618543 () Bool)

(assert (=> b!644888 m!618543))

(assert (=> b!644888 m!618497))

(declare-fun m!618545 () Bool)

(assert (=> b!644888 m!618545))

(declare-fun m!618547 () Bool)

(assert (=> b!644888 m!618547))

(declare-fun m!618549 () Bool)

(assert (=> b!644883 m!618549))

(declare-fun m!618551 () Bool)

(assert (=> start!58448 m!618551))

(declare-fun m!618553 () Bool)

(assert (=> start!58448 m!618553))

(check-sat (not b!644874) (not b!644891) (not b!644886) (not b!644888) (not b!644892) (not b!644876) (not b!644893) (not start!58448) (not b!644883) (not b!644885) (not b!644875) (not b!644889) (not b!644873) (not b!644872))
(check-sat)
