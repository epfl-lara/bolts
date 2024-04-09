; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57016 () Bool)

(assert start!57016)

(declare-fun b!630841 () Bool)

(declare-fun e!360698 () Bool)

(declare-fun e!360701 () Bool)

(assert (=> b!630841 (= e!360698 e!360701)))

(declare-fun res!407974 () Bool)

(assert (=> b!630841 (=> (not res!407974) (not e!360701))))

(declare-datatypes ((SeekEntryResult!6704 0))(
  ( (MissingZero!6704 (index!29105 (_ BitVec 32))) (Found!6704 (index!29106 (_ BitVec 32))) (Intermediate!6704 (undefined!7516 Bool) (index!29107 (_ BitVec 32)) (x!57867 (_ BitVec 32))) (Undefined!6704) (MissingVacant!6704 (index!29108 (_ BitVec 32))) )
))
(declare-fun lt!291463 () SeekEntryResult!6704)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630841 (= res!407974 (or (= lt!291463 (MissingZero!6704 i!1108)) (= lt!291463 (MissingVacant!6704 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38053 0))(
  ( (array!38054 (arr!18257 (Array (_ BitVec 32) (_ BitVec 64))) (size!18621 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38053)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38053 (_ BitVec 32)) SeekEntryResult!6704)

(assert (=> b!630841 (= lt!291463 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630842 () Bool)

(declare-fun res!407969 () Bool)

(assert (=> b!630842 (=> (not res!407969) (not e!360701))))

(declare-datatypes ((List!12351 0))(
  ( (Nil!12348) (Cons!12347 (h!13392 (_ BitVec 64)) (t!18587 List!12351)) )
))
(declare-fun arrayNoDuplicates!0 (array!38053 (_ BitVec 32) List!12351) Bool)

(assert (=> b!630842 (= res!407969 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12348))))

(declare-fun b!630843 () Bool)

(declare-fun res!407978 () Bool)

(assert (=> b!630843 (=> (not res!407978) (not e!360698))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!630843 (= res!407978 (and (= (size!18621 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18621 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18621 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630844 () Bool)

(declare-fun res!407967 () Bool)

(assert (=> b!630844 (=> (not res!407967) (not e!360698))))

(declare-fun arrayContainsKey!0 (array!38053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630844 (= res!407967 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630845 () Bool)

(declare-fun res!407971 () Bool)

(assert (=> b!630845 (=> (not res!407971) (not e!360701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38053 (_ BitVec 32)) Bool)

(assert (=> b!630845 (= res!407971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630846 () Bool)

(declare-fun res!407975 () Bool)

(assert (=> b!630846 (=> (not res!407975) (not e!360698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630846 (= res!407975 (validKeyInArray!0 (select (arr!18257 a!2986) j!136)))))

(declare-fun b!630847 () Bool)

(declare-fun res!407970 () Bool)

(assert (=> b!630847 (=> (not res!407970) (not e!360701))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630847 (= res!407970 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18257 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630848 () Bool)

(declare-fun e!360702 () Bool)

(assert (=> b!630848 (= e!360701 e!360702)))

(declare-fun res!407972 () Bool)

(assert (=> b!630848 (=> (not res!407972) (not e!360702))))

(assert (=> b!630848 (= res!407972 (= (select (store (arr!18257 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291460 () array!38053)

(assert (=> b!630848 (= lt!291460 (array!38054 (store (arr!18257 a!2986) i!1108 k!1786) (size!18621 a!2986)))))

(declare-fun res!407968 () Bool)

(assert (=> start!57016 (=> (not res!407968) (not e!360698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57016 (= res!407968 (validMask!0 mask!3053))))

(assert (=> start!57016 e!360698))

(assert (=> start!57016 true))

(declare-fun array_inv!14031 (array!38053) Bool)

(assert (=> start!57016 (array_inv!14031 a!2986)))

(declare-fun b!630849 () Bool)

(declare-fun e!360699 () Bool)

(declare-fun lt!291458 () SeekEntryResult!6704)

(declare-fun lt!291461 () SeekEntryResult!6704)

(assert (=> b!630849 (= e!360699 (= lt!291458 lt!291461))))

(declare-fun b!630850 () Bool)

(declare-datatypes ((Unit!21174 0))(
  ( (Unit!21175) )
))
(declare-fun e!360700 () Unit!21174)

(declare-fun Unit!21176 () Unit!21174)

(assert (=> b!630850 (= e!360700 Unit!21176)))

(declare-fun b!630851 () Bool)

(declare-fun e!360703 () Bool)

(assert (=> b!630851 (= e!360702 e!360703)))

(declare-fun res!407976 () Bool)

(assert (=> b!630851 (=> (not res!407976) (not e!360703))))

(assert (=> b!630851 (= res!407976 (and (= lt!291458 (Found!6704 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18257 a!2986) index!984) (select (arr!18257 a!2986) j!136))) (not (= (select (arr!18257 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38053 (_ BitVec 32)) SeekEntryResult!6704)

(assert (=> b!630851 (= lt!291458 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18257 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630852 () Bool)

(assert (=> b!630852 (= e!360703 (not true))))

(declare-fun lt!291459 () Unit!21174)

(assert (=> b!630852 (= lt!291459 e!360700)))

(declare-fun lt!291462 () (_ BitVec 64))

(declare-fun c!71804 () Bool)

(assert (=> b!630852 (= c!71804 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291462 lt!291460 mask!3053) Undefined!6704))))

(assert (=> b!630852 e!360699))

(declare-fun res!407977 () Bool)

(assert (=> b!630852 (=> (not res!407977) (not e!360699))))

(declare-fun lt!291465 () (_ BitVec 32))

(assert (=> b!630852 (= res!407977 (= lt!291461 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291465 vacantSpotIndex!68 lt!291462 lt!291460 mask!3053)))))

(assert (=> b!630852 (= lt!291461 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291465 vacantSpotIndex!68 (select (arr!18257 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630852 (= lt!291462 (select (store (arr!18257 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291464 () Unit!21174)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38053 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21174)

(assert (=> b!630852 (= lt!291464 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291465 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630852 (= lt!291465 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630853 () Bool)

(declare-fun res!407973 () Bool)

(assert (=> b!630853 (=> (not res!407973) (not e!360698))))

(assert (=> b!630853 (= res!407973 (validKeyInArray!0 k!1786))))

(declare-fun b!630854 () Bool)

(declare-fun Unit!21177 () Unit!21174)

(assert (=> b!630854 (= e!360700 Unit!21177)))

(assert (=> b!630854 false))

(assert (= (and start!57016 res!407968) b!630843))

(assert (= (and b!630843 res!407978) b!630846))

(assert (= (and b!630846 res!407975) b!630853))

(assert (= (and b!630853 res!407973) b!630844))

(assert (= (and b!630844 res!407967) b!630841))

(assert (= (and b!630841 res!407974) b!630845))

(assert (= (and b!630845 res!407971) b!630842))

(assert (= (and b!630842 res!407969) b!630847))

(assert (= (and b!630847 res!407970) b!630848))

(assert (= (and b!630848 res!407972) b!630851))

(assert (= (and b!630851 res!407976) b!630852))

(assert (= (and b!630852 res!407977) b!630849))

(assert (= (and b!630852 c!71804) b!630854))

(assert (= (and b!630852 (not c!71804)) b!630850))

(declare-fun m!605849 () Bool)

(assert (=> b!630842 m!605849))

(declare-fun m!605851 () Bool)

(assert (=> b!630846 m!605851))

(assert (=> b!630846 m!605851))

(declare-fun m!605853 () Bool)

(assert (=> b!630846 m!605853))

(declare-fun m!605855 () Bool)

(assert (=> b!630852 m!605855))

(declare-fun m!605857 () Bool)

(assert (=> b!630852 m!605857))

(assert (=> b!630852 m!605851))

(declare-fun m!605859 () Bool)

(assert (=> b!630852 m!605859))

(declare-fun m!605861 () Bool)

(assert (=> b!630852 m!605861))

(declare-fun m!605863 () Bool)

(assert (=> b!630852 m!605863))

(declare-fun m!605865 () Bool)

(assert (=> b!630852 m!605865))

(assert (=> b!630852 m!605851))

(declare-fun m!605867 () Bool)

(assert (=> b!630852 m!605867))

(declare-fun m!605869 () Bool)

(assert (=> b!630841 m!605869))

(declare-fun m!605871 () Bool)

(assert (=> start!57016 m!605871))

(declare-fun m!605873 () Bool)

(assert (=> start!57016 m!605873))

(declare-fun m!605875 () Bool)

(assert (=> b!630853 m!605875))

(declare-fun m!605877 () Bool)

(assert (=> b!630844 m!605877))

(assert (=> b!630848 m!605859))

(declare-fun m!605879 () Bool)

(assert (=> b!630848 m!605879))

(declare-fun m!605881 () Bool)

(assert (=> b!630851 m!605881))

(assert (=> b!630851 m!605851))

(assert (=> b!630851 m!605851))

(declare-fun m!605883 () Bool)

(assert (=> b!630851 m!605883))

(declare-fun m!605885 () Bool)

(assert (=> b!630845 m!605885))

(declare-fun m!605887 () Bool)

(assert (=> b!630847 m!605887))

(push 1)

