; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58344 () Bool)

(assert start!58344)

(declare-fun res!417162 () Bool)

(declare-fun e!368879 () Bool)

(assert (=> start!58344 (=> (not res!417162) (not e!368879))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58344 (= res!417162 (validMask!0 mask!3053))))

(assert (=> start!58344 e!368879))

(assert (=> start!58344 true))

(declare-datatypes ((array!38397 0))(
  ( (array!38398 (arr!18408 (Array (_ BitVec 32) (_ BitVec 64))) (size!18772 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38397)

(declare-fun array_inv!14182 (array!38397) Bool)

(assert (=> start!58344 (array_inv!14182 a!2986)))

(declare-fun b!643855 () Bool)

(declare-fun res!417178 () Bool)

(declare-fun e!368876 () Bool)

(assert (=> b!643855 (=> (not res!417178) (not e!368876))))

(declare-datatypes ((List!12502 0))(
  ( (Nil!12499) (Cons!12498 (h!13543 (_ BitVec 64)) (t!18738 List!12502)) )
))
(declare-fun arrayNoDuplicates!0 (array!38397 (_ BitVec 32) List!12502) Bool)

(assert (=> b!643855 (= res!417178 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12499))))

(declare-fun b!643856 () Bool)

(declare-fun res!417176 () Bool)

(assert (=> b!643856 (=> (not res!417176) (not e!368879))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643856 (= res!417176 (validKeyInArray!0 (select (arr!18408 a!2986) j!136)))))

(declare-fun b!643857 () Bool)

(declare-fun res!417174 () Bool)

(assert (=> b!643857 (=> (not res!417174) (not e!368876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38397 (_ BitVec 32)) Bool)

(assert (=> b!643857 (= res!417174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!643858 () Bool)

(declare-fun e!368868 () Bool)

(declare-fun e!368880 () Bool)

(assert (=> b!643858 (= e!368868 e!368880)))

(declare-fun res!417175 () Bool)

(assert (=> b!643858 (=> (not res!417175) (not e!368880))))

(declare-fun lt!298413 () array!38397)

(declare-fun arrayContainsKey!0 (array!38397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643858 (= res!417175 (arrayContainsKey!0 lt!298413 (select (arr!18408 a!2986) j!136) j!136))))

(declare-fun b!643859 () Bool)

(declare-fun e!368875 () Bool)

(declare-fun e!368878 () Bool)

(assert (=> b!643859 (= e!368875 (not e!368878))))

(declare-fun res!417177 () Bool)

(assert (=> b!643859 (=> res!417177 e!368878)))

(declare-datatypes ((SeekEntryResult!6855 0))(
  ( (MissingZero!6855 (index!29751 (_ BitVec 32))) (Found!6855 (index!29752 (_ BitVec 32))) (Intermediate!6855 (undefined!7667 Bool) (index!29753 (_ BitVec 32)) (x!58552 (_ BitVec 32))) (Undefined!6855) (MissingVacant!6855 (index!29754 (_ BitVec 32))) )
))
(declare-fun lt!298414 () SeekEntryResult!6855)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!643859 (= res!417177 (not (= lt!298414 (Found!6855 index!984))))))

(declare-datatypes ((Unit!21802 0))(
  ( (Unit!21803) )
))
(declare-fun lt!298408 () Unit!21802)

(declare-fun e!368870 () Unit!21802)

(assert (=> b!643859 (= lt!298408 e!368870)))

(declare-fun c!73715 () Bool)

(assert (=> b!643859 (= c!73715 (= lt!298414 Undefined!6855))))

(declare-fun lt!298406 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38397 (_ BitVec 32)) SeekEntryResult!6855)

(assert (=> b!643859 (= lt!298414 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298406 lt!298413 mask!3053))))

(declare-fun e!368881 () Bool)

(assert (=> b!643859 e!368881))

(declare-fun res!417167 () Bool)

(assert (=> b!643859 (=> (not res!417167) (not e!368881))))

(declare-fun lt!298402 () (_ BitVec 32))

(declare-fun lt!298405 () SeekEntryResult!6855)

(assert (=> b!643859 (= res!417167 (= lt!298405 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298402 vacantSpotIndex!68 lt!298406 lt!298413 mask!3053)))))

(assert (=> b!643859 (= lt!298405 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298402 vacantSpotIndex!68 (select (arr!18408 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!643859 (= lt!298406 (select (store (arr!18408 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298407 () Unit!21802)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38397 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21802)

(assert (=> b!643859 (= lt!298407 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298402 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643859 (= lt!298402 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643860 () Bool)

(declare-fun res!417164 () Bool)

(assert (=> b!643860 (=> (not res!417164) (not e!368879))))

(assert (=> b!643860 (= res!417164 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!643861 () Bool)

(declare-fun e!368871 () Bool)

(assert (=> b!643861 (= e!368878 e!368871)))

(declare-fun res!417179 () Bool)

(assert (=> b!643861 (=> res!417179 e!368871)))

(declare-fun lt!298416 () (_ BitVec 64))

(assert (=> b!643861 (= res!417179 (or (not (= (select (arr!18408 a!2986) j!136) lt!298406)) (not (= (select (arr!18408 a!2986) j!136) lt!298416))))))

(declare-fun e!368874 () Bool)

(assert (=> b!643861 e!368874))

(declare-fun res!417170 () Bool)

(assert (=> b!643861 (=> (not res!417170) (not e!368874))))

(assert (=> b!643861 (= res!417170 (= lt!298416 (select (arr!18408 a!2986) j!136)))))

(assert (=> b!643861 (= lt!298416 (select (store (arr!18408 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!643862 () Bool)

(declare-fun lt!298415 () SeekEntryResult!6855)

(assert (=> b!643862 (= e!368881 (= lt!298415 lt!298405))))

(declare-fun e!368872 () Bool)

(declare-fun b!643863 () Bool)

(assert (=> b!643863 (= e!368872 (arrayContainsKey!0 lt!298413 (select (arr!18408 a!2986) j!136) index!984))))

(declare-fun b!643864 () Bool)

(assert (=> b!643864 (= e!368874 e!368868)))

(declare-fun res!417166 () Bool)

(assert (=> b!643864 (=> res!417166 e!368868)))

(assert (=> b!643864 (= res!417166 (or (not (= (select (arr!18408 a!2986) j!136) lt!298406)) (not (= (select (arr!18408 a!2986) j!136) lt!298416)) (bvsge j!136 index!984)))))

(declare-fun b!643865 () Bool)

(declare-fun Unit!21804 () Unit!21802)

(assert (=> b!643865 (= e!368870 Unit!21804)))

(assert (=> b!643865 false))

(declare-fun b!643866 () Bool)

(declare-fun Unit!21805 () Unit!21802)

(assert (=> b!643866 (= e!368870 Unit!21805)))

(declare-fun b!643867 () Bool)

(assert (=> b!643867 (= e!368880 (arrayContainsKey!0 lt!298413 (select (arr!18408 a!2986) j!136) index!984))))

(declare-fun b!643868 () Bool)

(declare-fun e!368869 () Unit!21802)

(declare-fun Unit!21806 () Unit!21802)

(assert (=> b!643868 (= e!368869 Unit!21806)))

(declare-fun b!643869 () Bool)

(declare-fun res!417171 () Bool)

(assert (=> b!643869 (=> (not res!417171) (not e!368879))))

(assert (=> b!643869 (= res!417171 (validKeyInArray!0 k!1786))))

(declare-fun b!643870 () Bool)

(declare-fun e!368867 () Bool)

(assert (=> b!643870 (= e!368876 e!368867)))

(declare-fun res!417168 () Bool)

(assert (=> b!643870 (=> (not res!417168) (not e!368867))))

(assert (=> b!643870 (= res!417168 (= (select (store (arr!18408 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643870 (= lt!298413 (array!38398 (store (arr!18408 a!2986) i!1108 k!1786) (size!18772 a!2986)))))

(declare-fun b!643871 () Bool)

(declare-fun res!417163 () Bool)

(assert (=> b!643871 (=> (not res!417163) (not e!368876))))

(assert (=> b!643871 (= res!417163 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18408 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!643872 () Bool)

(declare-fun res!417161 () Bool)

(assert (=> b!643872 (=> (not res!417161) (not e!368879))))

(assert (=> b!643872 (= res!417161 (and (= (size!18772 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18772 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18772 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643873 () Bool)

(declare-fun e!368873 () Bool)

(assert (=> b!643873 (= e!368873 (bvsge (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000))))

(assert (=> b!643873 e!368872))

(declare-fun res!417172 () Bool)

(assert (=> b!643873 (=> (not res!417172) (not e!368872))))

(assert (=> b!643873 (= res!417172 (arrayContainsKey!0 lt!298413 (select (arr!18408 a!2986) j!136) j!136))))

(declare-fun b!643874 () Bool)

(assert (=> b!643874 (= e!368879 e!368876)))

(declare-fun res!417165 () Bool)

(assert (=> b!643874 (=> (not res!417165) (not e!368876))))

(declare-fun lt!298411 () SeekEntryResult!6855)

(assert (=> b!643874 (= res!417165 (or (= lt!298411 (MissingZero!6855 i!1108)) (= lt!298411 (MissingVacant!6855 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38397 (_ BitVec 32)) SeekEntryResult!6855)

(assert (=> b!643874 (= lt!298411 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!643875 () Bool)

(assert (=> b!643875 (= e!368871 e!368873)))

(declare-fun res!417169 () Bool)

(assert (=> b!643875 (=> res!417169 e!368873)))

(assert (=> b!643875 (= res!417169 (bvsge index!984 j!136))))

(declare-fun lt!298404 () Unit!21802)

(assert (=> b!643875 (= lt!298404 e!368869)))

(declare-fun c!73714 () Bool)

(assert (=> b!643875 (= c!73714 (bvslt j!136 index!984))))

(declare-fun b!643876 () Bool)

(declare-fun Unit!21807 () Unit!21802)

(assert (=> b!643876 (= e!368869 Unit!21807)))

(declare-fun lt!298403 () Unit!21802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38397 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21802)

(assert (=> b!643876 (= lt!298403 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298413 (select (arr!18408 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643876 (arrayContainsKey!0 lt!298413 (select (arr!18408 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298410 () Unit!21802)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38397 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12502) Unit!21802)

(assert (=> b!643876 (= lt!298410 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12499))))

(assert (=> b!643876 (arrayNoDuplicates!0 lt!298413 #b00000000000000000000000000000000 Nil!12499)))

(declare-fun lt!298412 () Unit!21802)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38397 (_ BitVec 32) (_ BitVec 32)) Unit!21802)

(assert (=> b!643876 (= lt!298412 (lemmaNoDuplicateFromThenFromBigger!0 lt!298413 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643876 (arrayNoDuplicates!0 lt!298413 j!136 Nil!12499)))

(declare-fun lt!298409 () Unit!21802)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38397 (_ BitVec 64) (_ BitVec 32) List!12502) Unit!21802)

(assert (=> b!643876 (= lt!298409 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298413 (select (arr!18408 a!2986) j!136) j!136 Nil!12499))))

(assert (=> b!643876 false))

(declare-fun b!643877 () Bool)

(assert (=> b!643877 (= e!368867 e!368875)))

(declare-fun res!417173 () Bool)

(assert (=> b!643877 (=> (not res!417173) (not e!368875))))

(assert (=> b!643877 (= res!417173 (and (= lt!298415 (Found!6855 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18408 a!2986) index!984) (select (arr!18408 a!2986) j!136))) (not (= (select (arr!18408 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!643877 (= lt!298415 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18408 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!58344 res!417162) b!643872))

(assert (= (and b!643872 res!417161) b!643856))

(assert (= (and b!643856 res!417176) b!643869))

(assert (= (and b!643869 res!417171) b!643860))

(assert (= (and b!643860 res!417164) b!643874))

(assert (= (and b!643874 res!417165) b!643857))

(assert (= (and b!643857 res!417174) b!643855))

(assert (= (and b!643855 res!417178) b!643871))

(assert (= (and b!643871 res!417163) b!643870))

(assert (= (and b!643870 res!417168) b!643877))

(assert (= (and b!643877 res!417173) b!643859))

(assert (= (and b!643859 res!417167) b!643862))

(assert (= (and b!643859 c!73715) b!643865))

(assert (= (and b!643859 (not c!73715)) b!643866))

(assert (= (and b!643859 (not res!417177)) b!643861))

(assert (= (and b!643861 res!417170) b!643864))

(assert (= (and b!643864 (not res!417166)) b!643858))

(assert (= (and b!643858 res!417175) b!643867))

(assert (= (and b!643861 (not res!417179)) b!643875))

(assert (= (and b!643875 c!73714) b!643876))

(assert (= (and b!643875 (not c!73714)) b!643868))

(assert (= (and b!643875 (not res!417169)) b!643873))

(assert (= (and b!643873 res!417172) b!643863))

(declare-fun m!617583 () Bool)

(assert (=> b!643856 m!617583))

(assert (=> b!643856 m!617583))

(declare-fun m!617585 () Bool)

(assert (=> b!643856 m!617585))

(declare-fun m!617587 () Bool)

(assert (=> b!643860 m!617587))

(declare-fun m!617589 () Bool)

(assert (=> b!643877 m!617589))

(assert (=> b!643877 m!617583))

(assert (=> b!643877 m!617583))

(declare-fun m!617591 () Bool)

(assert (=> b!643877 m!617591))

(declare-fun m!617593 () Bool)

(assert (=> b!643855 m!617593))

(declare-fun m!617595 () Bool)

(assert (=> b!643869 m!617595))

(declare-fun m!617597 () Bool)

(assert (=> b!643857 m!617597))

(assert (=> b!643863 m!617583))

(assert (=> b!643863 m!617583))

(declare-fun m!617599 () Bool)

(assert (=> b!643863 m!617599))

(assert (=> b!643873 m!617583))

(assert (=> b!643873 m!617583))

(declare-fun m!617601 () Bool)

(assert (=> b!643873 m!617601))

(assert (=> b!643858 m!617583))

(assert (=> b!643858 m!617583))

(assert (=> b!643858 m!617601))

(declare-fun m!617603 () Bool)

(assert (=> b!643874 m!617603))

(assert (=> b!643864 m!617583))

(assert (=> b!643861 m!617583))

(declare-fun m!617605 () Bool)

(assert (=> b!643861 m!617605))

(declare-fun m!617607 () Bool)

(assert (=> b!643861 m!617607))

(declare-fun m!617609 () Bool)

(assert (=> start!58344 m!617609))

(declare-fun m!617611 () Bool)

(assert (=> start!58344 m!617611))

(assert (=> b!643867 m!617583))

(assert (=> b!643867 m!617583))

(assert (=> b!643867 m!617599))

(declare-fun m!617613 () Bool)

(assert (=> b!643859 m!617613))

(declare-fun m!617615 () Bool)

(assert (=> b!643859 m!617615))

(assert (=> b!643859 m!617583))

(assert (=> b!643859 m!617605))

(assert (=> b!643859 m!617583))

(declare-fun m!617617 () Bool)

(assert (=> b!643859 m!617617))

(declare-fun m!617619 () Bool)

(assert (=> b!643859 m!617619))

(declare-fun m!617621 () Bool)

(assert (=> b!643859 m!617621))

(declare-fun m!617623 () Bool)

(assert (=> b!643859 m!617623))

(assert (=> b!643870 m!617605))

(declare-fun m!617625 () Bool)

(assert (=> b!643870 m!617625))

(declare-fun m!617627 () Bool)

(assert (=> b!643871 m!617627))

(declare-fun m!617629 () Bool)

(assert (=> b!643876 m!617629))

(assert (=> b!643876 m!617583))

(assert (=> b!643876 m!617583))

(declare-fun m!617631 () Bool)

(assert (=> b!643876 m!617631))

(assert (=> b!643876 m!617583))

(declare-fun m!617633 () Bool)

(assert (=> b!643876 m!617633))

(declare-fun m!617635 () Bool)

(assert (=> b!643876 m!617635))

(declare-fun m!617637 () Bool)

(assert (=> b!643876 m!617637))

(assert (=> b!643876 m!617583))

(declare-fun m!617639 () Bool)

(assert (=> b!643876 m!617639))

(declare-fun m!617641 () Bool)

(assert (=> b!643876 m!617641))

(push 1)

