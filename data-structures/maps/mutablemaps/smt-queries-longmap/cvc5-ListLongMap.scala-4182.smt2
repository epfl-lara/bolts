; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57018 () Bool)

(assert start!57018)

(declare-fun b!630883 () Bool)

(declare-fun res!408014 () Bool)

(declare-fun e!360719 () Bool)

(assert (=> b!630883 (=> (not res!408014) (not e!360719))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630883 (= res!408014 (validKeyInArray!0 k!1786))))

(declare-fun b!630885 () Bool)

(declare-fun res!408005 () Bool)

(declare-fun e!360722 () Bool)

(assert (=> b!630885 (=> (not res!408005) (not e!360722))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38055 0))(
  ( (array!38056 (arr!18258 (Array (_ BitVec 32) (_ BitVec 64))) (size!18622 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38055)

(assert (=> b!630885 (= res!408005 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18258 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630886 () Bool)

(declare-datatypes ((Unit!21178 0))(
  ( (Unit!21179) )
))
(declare-fun e!360723 () Unit!21178)

(declare-fun Unit!21180 () Unit!21178)

(assert (=> b!630886 (= e!360723 Unit!21180)))

(assert (=> b!630886 false))

(declare-fun b!630887 () Bool)

(declare-fun res!408013 () Bool)

(assert (=> b!630887 (=> (not res!408013) (not e!360719))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!630887 (= res!408013 (validKeyInArray!0 (select (arr!18258 a!2986) j!136)))))

(declare-fun b!630888 () Bool)

(declare-fun res!408012 () Bool)

(assert (=> b!630888 (=> (not res!408012) (not e!360722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38055 (_ BitVec 32)) Bool)

(assert (=> b!630888 (= res!408012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630889 () Bool)

(declare-fun res!408004 () Bool)

(assert (=> b!630889 (=> (not res!408004) (not e!360719))))

(declare-fun arrayContainsKey!0 (array!38055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630889 (= res!408004 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630890 () Bool)

(declare-fun e!360718 () Bool)

(declare-fun e!360720 () Bool)

(assert (=> b!630890 (= e!360718 e!360720)))

(declare-fun res!408011 () Bool)

(assert (=> b!630890 (=> (not res!408011) (not e!360720))))

(declare-datatypes ((SeekEntryResult!6705 0))(
  ( (MissingZero!6705 (index!29109 (_ BitVec 32))) (Found!6705 (index!29110 (_ BitVec 32))) (Intermediate!6705 (undefined!7517 Bool) (index!29111 (_ BitVec 32)) (x!57876 (_ BitVec 32))) (Undefined!6705) (MissingVacant!6705 (index!29112 (_ BitVec 32))) )
))
(declare-fun lt!291489 () SeekEntryResult!6705)

(assert (=> b!630890 (= res!408011 (and (= lt!291489 (Found!6705 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18258 a!2986) index!984) (select (arr!18258 a!2986) j!136))) (not (= (select (arr!18258 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38055 (_ BitVec 32)) SeekEntryResult!6705)

(assert (=> b!630890 (= lt!291489 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18258 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630891 () Bool)

(declare-fun res!408007 () Bool)

(assert (=> b!630891 (=> (not res!408007) (not e!360719))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630891 (= res!408007 (and (= (size!18622 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18622 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18622 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630892 () Bool)

(declare-fun res!408010 () Bool)

(assert (=> b!630892 (=> (not res!408010) (not e!360722))))

(declare-datatypes ((List!12352 0))(
  ( (Nil!12349) (Cons!12348 (h!13393 (_ BitVec 64)) (t!18588 List!12352)) )
))
(declare-fun arrayNoDuplicates!0 (array!38055 (_ BitVec 32) List!12352) Bool)

(assert (=> b!630892 (= res!408010 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12349))))

(declare-fun b!630884 () Bool)

(declare-fun Unit!21181 () Unit!21178)

(assert (=> b!630884 (= e!360723 Unit!21181)))

(declare-fun res!408006 () Bool)

(assert (=> start!57018 (=> (not res!408006) (not e!360719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57018 (= res!408006 (validMask!0 mask!3053))))

(assert (=> start!57018 e!360719))

(assert (=> start!57018 true))

(declare-fun array_inv!14032 (array!38055) Bool)

(assert (=> start!57018 (array_inv!14032 a!2986)))

(declare-fun b!630893 () Bool)

(assert (=> b!630893 (= e!360719 e!360722)))

(declare-fun res!408003 () Bool)

(assert (=> b!630893 (=> (not res!408003) (not e!360722))))

(declare-fun lt!291491 () SeekEntryResult!6705)

(assert (=> b!630893 (= res!408003 (or (= lt!291491 (MissingZero!6705 i!1108)) (= lt!291491 (MissingVacant!6705 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38055 (_ BitVec 32)) SeekEntryResult!6705)

(assert (=> b!630893 (= lt!291491 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630894 () Bool)

(declare-fun lt!291487 () SeekEntryResult!6705)

(assert (=> b!630894 (= e!360720 (not (or (not (= lt!291487 (Found!6705 index!984))) (bvslt index!984 (size!18622 a!2986)))))))

(declare-fun lt!291492 () Unit!21178)

(assert (=> b!630894 (= lt!291492 e!360723)))

(declare-fun c!71807 () Bool)

(assert (=> b!630894 (= c!71807 (= lt!291487 Undefined!6705))))

(declare-fun lt!291485 () (_ BitVec 64))

(declare-fun lt!291490 () array!38055)

(assert (=> b!630894 (= lt!291487 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291485 lt!291490 mask!3053))))

(declare-fun e!360724 () Bool)

(assert (=> b!630894 e!360724))

(declare-fun res!408009 () Bool)

(assert (=> b!630894 (=> (not res!408009) (not e!360724))))

(declare-fun lt!291484 () (_ BitVec 32))

(declare-fun lt!291486 () SeekEntryResult!6705)

(assert (=> b!630894 (= res!408009 (= lt!291486 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291484 vacantSpotIndex!68 lt!291485 lt!291490 mask!3053)))))

(assert (=> b!630894 (= lt!291486 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291484 vacantSpotIndex!68 (select (arr!18258 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630894 (= lt!291485 (select (store (arr!18258 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291488 () Unit!21178)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38055 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21178)

(assert (=> b!630894 (= lt!291488 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291484 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630894 (= lt!291484 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630895 () Bool)

(assert (=> b!630895 (= e!360724 (= lt!291489 lt!291486))))

(declare-fun b!630896 () Bool)

(assert (=> b!630896 (= e!360722 e!360718)))

(declare-fun res!408008 () Bool)

(assert (=> b!630896 (=> (not res!408008) (not e!360718))))

(assert (=> b!630896 (= res!408008 (= (select (store (arr!18258 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630896 (= lt!291490 (array!38056 (store (arr!18258 a!2986) i!1108 k!1786) (size!18622 a!2986)))))

(assert (= (and start!57018 res!408006) b!630891))

(assert (= (and b!630891 res!408007) b!630887))

(assert (= (and b!630887 res!408013) b!630883))

(assert (= (and b!630883 res!408014) b!630889))

(assert (= (and b!630889 res!408004) b!630893))

(assert (= (and b!630893 res!408003) b!630888))

(assert (= (and b!630888 res!408012) b!630892))

(assert (= (and b!630892 res!408010) b!630885))

(assert (= (and b!630885 res!408005) b!630896))

(assert (= (and b!630896 res!408008) b!630890))

(assert (= (and b!630890 res!408011) b!630894))

(assert (= (and b!630894 res!408009) b!630895))

(assert (= (and b!630894 c!71807) b!630886))

(assert (= (and b!630894 (not c!71807)) b!630884))

(declare-fun m!605889 () Bool)

(assert (=> b!630892 m!605889))

(declare-fun m!605891 () Bool)

(assert (=> b!630889 m!605891))

(declare-fun m!605893 () Bool)

(assert (=> b!630890 m!605893))

(declare-fun m!605895 () Bool)

(assert (=> b!630890 m!605895))

(assert (=> b!630890 m!605895))

(declare-fun m!605897 () Bool)

(assert (=> b!630890 m!605897))

(declare-fun m!605899 () Bool)

(assert (=> b!630896 m!605899))

(declare-fun m!605901 () Bool)

(assert (=> b!630896 m!605901))

(declare-fun m!605903 () Bool)

(assert (=> b!630883 m!605903))

(assert (=> b!630887 m!605895))

(assert (=> b!630887 m!605895))

(declare-fun m!605905 () Bool)

(assert (=> b!630887 m!605905))

(declare-fun m!605907 () Bool)

(assert (=> b!630893 m!605907))

(declare-fun m!605909 () Bool)

(assert (=> b!630894 m!605909))

(declare-fun m!605911 () Bool)

(assert (=> b!630894 m!605911))

(assert (=> b!630894 m!605895))

(assert (=> b!630894 m!605899))

(declare-fun m!605913 () Bool)

(assert (=> b!630894 m!605913))

(declare-fun m!605915 () Bool)

(assert (=> b!630894 m!605915))

(declare-fun m!605917 () Bool)

(assert (=> b!630894 m!605917))

(assert (=> b!630894 m!605895))

(declare-fun m!605919 () Bool)

(assert (=> b!630894 m!605919))

(declare-fun m!605921 () Bool)

(assert (=> b!630885 m!605921))

(declare-fun m!605923 () Bool)

(assert (=> b!630888 m!605923))

(declare-fun m!605925 () Bool)

(assert (=> start!57018 m!605925))

(declare-fun m!605927 () Bool)

(assert (=> start!57018 m!605927))

(push 1)

(assert (not b!630894))

(assert (not start!57018))

(assert (not b!630887))

(assert (not b!630889))

(assert (not b!630892))

(assert (not b!630890))

(assert (not b!630883))

(assert (not b!630893))

(assert (not b!630888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

