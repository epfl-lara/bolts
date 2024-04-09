; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57024 () Bool)

(assert start!57024)

(declare-fun b!631009 () Bool)

(declare-fun e!360781 () Bool)

(assert (=> b!631009 (= e!360781 (not true))))

(declare-datatypes ((Unit!21190 0))(
  ( (Unit!21191) )
))
(declare-fun lt!291565 () Unit!21190)

(declare-fun e!360784 () Unit!21190)

(assert (=> b!631009 (= lt!291565 e!360784)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38061 0))(
  ( (array!38062 (arr!18261 (Array (_ BitVec 32) (_ BitVec 64))) (size!18625 (_ BitVec 32))) )
))
(declare-fun lt!291567 () array!38061)

(declare-fun c!71816 () Bool)

(declare-fun lt!291568 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!6708 0))(
  ( (MissingZero!6708 (index!29121 (_ BitVec 32))) (Found!6708 (index!29122 (_ BitVec 32))) (Intermediate!6708 (undefined!7520 Bool) (index!29123 (_ BitVec 32)) (x!57887 (_ BitVec 32))) (Undefined!6708) (MissingVacant!6708 (index!29124 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38061 (_ BitVec 32)) SeekEntryResult!6708)

(assert (=> b!631009 (= c!71816 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291568 lt!291567 mask!3053) Undefined!6708))))

(declare-fun e!360785 () Bool)

(assert (=> b!631009 e!360785))

(declare-fun res!408121 () Bool)

(assert (=> b!631009 (=> (not res!408121) (not e!360785))))

(declare-fun lt!291566 () SeekEntryResult!6708)

(declare-fun lt!291563 () (_ BitVec 32))

(assert (=> b!631009 (= res!408121 (= lt!291566 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291563 vacantSpotIndex!68 lt!291568 lt!291567 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38061)

(assert (=> b!631009 (= lt!291566 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291563 vacantSpotIndex!68 (select (arr!18261 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!631009 (= lt!291568 (select (store (arr!18261 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291570 () Unit!21190)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38061 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21190)

(assert (=> b!631009 (= lt!291570 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291563 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631009 (= lt!291563 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631010 () Bool)

(declare-fun Unit!21192 () Unit!21190)

(assert (=> b!631010 (= e!360784 Unit!21192)))

(assert (=> b!631010 false))

(declare-fun b!631012 () Bool)

(declare-fun res!408114 () Bool)

(declare-fun e!360787 () Bool)

(assert (=> b!631012 (=> (not res!408114) (not e!360787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631012 (= res!408114 (validKeyInArray!0 k!1786))))

(declare-fun b!631013 () Bool)

(declare-fun e!360786 () Bool)

(declare-fun e!360782 () Bool)

(assert (=> b!631013 (= e!360786 e!360782)))

(declare-fun res!408119 () Bool)

(assert (=> b!631013 (=> (not res!408119) (not e!360782))))

(assert (=> b!631013 (= res!408119 (= (select (store (arr!18261 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631013 (= lt!291567 (array!38062 (store (arr!18261 a!2986) i!1108 k!1786) (size!18625 a!2986)))))

(declare-fun b!631014 () Bool)

(declare-fun res!408122 () Bool)

(assert (=> b!631014 (=> (not res!408122) (not e!360787))))

(assert (=> b!631014 (= res!408122 (validKeyInArray!0 (select (arr!18261 a!2986) j!136)))))

(declare-fun b!631015 () Bool)

(declare-fun res!408113 () Bool)

(assert (=> b!631015 (=> (not res!408113) (not e!360786))))

(assert (=> b!631015 (= res!408113 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18261 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631016 () Bool)

(declare-fun lt!291564 () SeekEntryResult!6708)

(assert (=> b!631016 (= e!360785 (= lt!291564 lt!291566))))

(declare-fun b!631017 () Bool)

(declare-fun res!408116 () Bool)

(assert (=> b!631017 (=> (not res!408116) (not e!360787))))

(declare-fun arrayContainsKey!0 (array!38061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631017 (= res!408116 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631018 () Bool)

(declare-fun res!408120 () Bool)

(assert (=> b!631018 (=> (not res!408120) (not e!360786))))

(declare-datatypes ((List!12355 0))(
  ( (Nil!12352) (Cons!12351 (h!13396 (_ BitVec 64)) (t!18591 List!12355)) )
))
(declare-fun arrayNoDuplicates!0 (array!38061 (_ BitVec 32) List!12355) Bool)

(assert (=> b!631018 (= res!408120 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12352))))

(declare-fun b!631011 () Bool)

(assert (=> b!631011 (= e!360787 e!360786)))

(declare-fun res!408112 () Bool)

(assert (=> b!631011 (=> (not res!408112) (not e!360786))))

(declare-fun lt!291569 () SeekEntryResult!6708)

(assert (=> b!631011 (= res!408112 (or (= lt!291569 (MissingZero!6708 i!1108)) (= lt!291569 (MissingVacant!6708 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38061 (_ BitVec 32)) SeekEntryResult!6708)

(assert (=> b!631011 (= lt!291569 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!408111 () Bool)

(assert (=> start!57024 (=> (not res!408111) (not e!360787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57024 (= res!408111 (validMask!0 mask!3053))))

(assert (=> start!57024 e!360787))

(assert (=> start!57024 true))

(declare-fun array_inv!14035 (array!38061) Bool)

(assert (=> start!57024 (array_inv!14035 a!2986)))

(declare-fun b!631019 () Bool)

(assert (=> b!631019 (= e!360782 e!360781)))

(declare-fun res!408117 () Bool)

(assert (=> b!631019 (=> (not res!408117) (not e!360781))))

(assert (=> b!631019 (= res!408117 (and (= lt!291564 (Found!6708 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18261 a!2986) index!984) (select (arr!18261 a!2986) j!136))) (not (= (select (arr!18261 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631019 (= lt!291564 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18261 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631020 () Bool)

(declare-fun res!408115 () Bool)

(assert (=> b!631020 (=> (not res!408115) (not e!360787))))

(assert (=> b!631020 (= res!408115 (and (= (size!18625 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18625 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18625 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631021 () Bool)

(declare-fun Unit!21193 () Unit!21190)

(assert (=> b!631021 (= e!360784 Unit!21193)))

(declare-fun b!631022 () Bool)

(declare-fun res!408118 () Bool)

(assert (=> b!631022 (=> (not res!408118) (not e!360786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38061 (_ BitVec 32)) Bool)

(assert (=> b!631022 (= res!408118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!57024 res!408111) b!631020))

(assert (= (and b!631020 res!408115) b!631014))

(assert (= (and b!631014 res!408122) b!631012))

(assert (= (and b!631012 res!408114) b!631017))

(assert (= (and b!631017 res!408116) b!631011))

(assert (= (and b!631011 res!408112) b!631022))

(assert (= (and b!631022 res!408118) b!631018))

(assert (= (and b!631018 res!408120) b!631015))

(assert (= (and b!631015 res!408113) b!631013))

(assert (= (and b!631013 res!408119) b!631019))

(assert (= (and b!631019 res!408117) b!631009))

(assert (= (and b!631009 res!408121) b!631016))

(assert (= (and b!631009 c!71816) b!631010))

(assert (= (and b!631009 (not c!71816)) b!631021))

(declare-fun m!606009 () Bool)

(assert (=> b!631015 m!606009))

(declare-fun m!606011 () Bool)

(assert (=> b!631019 m!606011))

(declare-fun m!606013 () Bool)

(assert (=> b!631019 m!606013))

(assert (=> b!631019 m!606013))

(declare-fun m!606015 () Bool)

(assert (=> b!631019 m!606015))

(declare-fun m!606017 () Bool)

(assert (=> start!57024 m!606017))

(declare-fun m!606019 () Bool)

(assert (=> start!57024 m!606019))

(assert (=> b!631014 m!606013))

(assert (=> b!631014 m!606013))

(declare-fun m!606021 () Bool)

(assert (=> b!631014 m!606021))

(declare-fun m!606023 () Bool)

(assert (=> b!631018 m!606023))

(declare-fun m!606025 () Bool)

(assert (=> b!631012 m!606025))

(declare-fun m!606027 () Bool)

(assert (=> b!631013 m!606027))

(declare-fun m!606029 () Bool)

(assert (=> b!631013 m!606029))

(declare-fun m!606031 () Bool)

(assert (=> b!631011 m!606031))

(declare-fun m!606033 () Bool)

(assert (=> b!631009 m!606033))

(declare-fun m!606035 () Bool)

(assert (=> b!631009 m!606035))

(assert (=> b!631009 m!606013))

(assert (=> b!631009 m!606027))

(declare-fun m!606037 () Bool)

(assert (=> b!631009 m!606037))

(declare-fun m!606039 () Bool)

(assert (=> b!631009 m!606039))

(assert (=> b!631009 m!606013))

(declare-fun m!606041 () Bool)

(assert (=> b!631009 m!606041))

(declare-fun m!606043 () Bool)

(assert (=> b!631009 m!606043))

(declare-fun m!606045 () Bool)

(assert (=> b!631017 m!606045))

(declare-fun m!606047 () Bool)

(assert (=> b!631022 m!606047))

(push 1)

