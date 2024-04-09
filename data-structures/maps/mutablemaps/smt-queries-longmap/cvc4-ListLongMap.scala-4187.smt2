; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57112 () Bool)

(assert start!57112)

(declare-fun b!631893 () Bool)

(declare-fun e!361273 () Bool)

(declare-fun e!361278 () Bool)

(assert (=> b!631893 (= e!361273 e!361278)))

(declare-fun res!408717 () Bool)

(assert (=> b!631893 (=> (not res!408717) (not e!361278))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6722 0))(
  ( (MissingZero!6722 (index!29180 (_ BitVec 32))) (Found!6722 (index!29181 (_ BitVec 32))) (Intermediate!6722 (undefined!7534 Bool) (index!29182 (_ BitVec 32)) (x!57942 (_ BitVec 32))) (Undefined!6722) (MissingVacant!6722 (index!29183 (_ BitVec 32))) )
))
(declare-fun lt!292046 () SeekEntryResult!6722)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38092 0))(
  ( (array!38093 (arr!18275 (Array (_ BitVec 32) (_ BitVec 64))) (size!18639 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38092)

(assert (=> b!631893 (= res!408717 (and (= lt!292046 (Found!6722 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18275 a!2986) index!984) (select (arr!18275 a!2986) j!136))) (not (= (select (arr!18275 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38092 (_ BitVec 32)) SeekEntryResult!6722)

(assert (=> b!631893 (= lt!292046 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18275 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631894 () Bool)

(declare-fun res!408725 () Bool)

(declare-fun e!361275 () Bool)

(assert (=> b!631894 (=> (not res!408725) (not e!361275))))

(declare-datatypes ((List!12369 0))(
  ( (Nil!12366) (Cons!12365 (h!13410 (_ BitVec 64)) (t!18605 List!12369)) )
))
(declare-fun arrayNoDuplicates!0 (array!38092 (_ BitVec 32) List!12369) Bool)

(assert (=> b!631894 (= res!408725 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12366))))

(declare-fun b!631895 () Bool)

(declare-fun res!408719 () Bool)

(assert (=> b!631895 (=> (not res!408719) (not e!361275))))

(assert (=> b!631895 (= res!408719 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18275 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631896 () Bool)

(declare-fun res!408714 () Bool)

(assert (=> b!631896 (=> (not res!408714) (not e!361275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38092 (_ BitVec 32)) Bool)

(assert (=> b!631896 (= res!408714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631897 () Bool)

(declare-datatypes ((Unit!21246 0))(
  ( (Unit!21247) )
))
(declare-fun e!361279 () Unit!21246)

(declare-fun Unit!21248 () Unit!21246)

(assert (=> b!631897 (= e!361279 Unit!21248)))

(declare-fun b!631898 () Bool)

(declare-fun e!361274 () Bool)

(assert (=> b!631898 (= e!361274 e!361275)))

(declare-fun res!408715 () Bool)

(assert (=> b!631898 (=> (not res!408715) (not e!361275))))

(declare-fun lt!292050 () SeekEntryResult!6722)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!631898 (= res!408715 (or (= lt!292050 (MissingZero!6722 i!1108)) (= lt!292050 (MissingVacant!6722 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38092 (_ BitVec 32)) SeekEntryResult!6722)

(assert (=> b!631898 (= lt!292050 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631899 () Bool)

(declare-fun res!408724 () Bool)

(assert (=> b!631899 (=> (not res!408724) (not e!361274))))

(declare-fun arrayContainsKey!0 (array!38092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631899 (= res!408724 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!408723 () Bool)

(assert (=> start!57112 (=> (not res!408723) (not e!361274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57112 (= res!408723 (validMask!0 mask!3053))))

(assert (=> start!57112 e!361274))

(assert (=> start!57112 true))

(declare-fun array_inv!14049 (array!38092) Bool)

(assert (=> start!57112 (array_inv!14049 a!2986)))

(declare-fun b!631900 () Bool)

(declare-fun e!361276 () Bool)

(assert (=> b!631900 (= e!361278 (not e!361276))))

(declare-fun res!408720 () Bool)

(assert (=> b!631900 (=> res!408720 e!361276)))

(declare-fun lt!292044 () SeekEntryResult!6722)

(assert (=> b!631900 (= res!408720 (not (= lt!292044 (Found!6722 index!984))))))

(declare-fun lt!292049 () Unit!21246)

(assert (=> b!631900 (= lt!292049 e!361279)))

(declare-fun c!71957 () Bool)

(assert (=> b!631900 (= c!71957 (= lt!292044 Undefined!6722))))

(declare-fun lt!292048 () (_ BitVec 64))

(declare-fun lt!292047 () array!38092)

(assert (=> b!631900 (= lt!292044 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292048 lt!292047 mask!3053))))

(declare-fun e!361277 () Bool)

(assert (=> b!631900 e!361277))

(declare-fun res!408713 () Bool)

(assert (=> b!631900 (=> (not res!408713) (not e!361277))))

(declare-fun lt!292042 () (_ BitVec 32))

(declare-fun lt!292043 () SeekEntryResult!6722)

(assert (=> b!631900 (= res!408713 (= lt!292043 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292042 vacantSpotIndex!68 lt!292048 lt!292047 mask!3053)))))

(assert (=> b!631900 (= lt!292043 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292042 vacantSpotIndex!68 (select (arr!18275 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631900 (= lt!292048 (select (store (arr!18275 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292045 () Unit!21246)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38092 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21246)

(assert (=> b!631900 (= lt!292045 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292042 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631900 (= lt!292042 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631901 () Bool)

(assert (=> b!631901 (= e!361275 e!361273)))

(declare-fun res!408716 () Bool)

(assert (=> b!631901 (=> (not res!408716) (not e!361273))))

(assert (=> b!631901 (= res!408716 (= (select (store (arr!18275 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631901 (= lt!292047 (array!38093 (store (arr!18275 a!2986) i!1108 k!1786) (size!18639 a!2986)))))

(declare-fun b!631902 () Bool)

(declare-fun res!408721 () Bool)

(assert (=> b!631902 (=> (not res!408721) (not e!361274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631902 (= res!408721 (validKeyInArray!0 k!1786))))

(declare-fun b!631903 () Bool)

(declare-fun res!408718 () Bool)

(assert (=> b!631903 (=> (not res!408718) (not e!361274))))

(assert (=> b!631903 (= res!408718 (validKeyInArray!0 (select (arr!18275 a!2986) j!136)))))

(declare-fun b!631904 () Bool)

(assert (=> b!631904 (= e!361276 true)))

(assert (=> b!631904 (= (select (store (arr!18275 a!2986) i!1108 k!1786) index!984) (select (arr!18275 a!2986) j!136))))

(declare-fun b!631905 () Bool)

(declare-fun res!408722 () Bool)

(assert (=> b!631905 (=> (not res!408722) (not e!361274))))

(assert (=> b!631905 (= res!408722 (and (= (size!18639 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18639 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18639 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631906 () Bool)

(assert (=> b!631906 (= e!361277 (= lt!292046 lt!292043))))

(declare-fun b!631907 () Bool)

(declare-fun Unit!21249 () Unit!21246)

(assert (=> b!631907 (= e!361279 Unit!21249)))

(assert (=> b!631907 false))

(assert (= (and start!57112 res!408723) b!631905))

(assert (= (and b!631905 res!408722) b!631903))

(assert (= (and b!631903 res!408718) b!631902))

(assert (= (and b!631902 res!408721) b!631899))

(assert (= (and b!631899 res!408724) b!631898))

(assert (= (and b!631898 res!408715) b!631896))

(assert (= (and b!631896 res!408714) b!631894))

(assert (= (and b!631894 res!408725) b!631895))

(assert (= (and b!631895 res!408719) b!631901))

(assert (= (and b!631901 res!408716) b!631893))

(assert (= (and b!631893 res!408717) b!631900))

(assert (= (and b!631900 res!408713) b!631906))

(assert (= (and b!631900 c!71957) b!631907))

(assert (= (and b!631900 (not c!71957)) b!631897))

(assert (= (and b!631900 (not res!408720)) b!631904))

(declare-fun m!606801 () Bool)

(assert (=> b!631900 m!606801))

(declare-fun m!606803 () Bool)

(assert (=> b!631900 m!606803))

(declare-fun m!606805 () Bool)

(assert (=> b!631900 m!606805))

(declare-fun m!606807 () Bool)

(assert (=> b!631900 m!606807))

(declare-fun m!606809 () Bool)

(assert (=> b!631900 m!606809))

(declare-fun m!606811 () Bool)

(assert (=> b!631900 m!606811))

(assert (=> b!631900 m!606805))

(declare-fun m!606813 () Bool)

(assert (=> b!631900 m!606813))

(declare-fun m!606815 () Bool)

(assert (=> b!631900 m!606815))

(declare-fun m!606817 () Bool)

(assert (=> b!631894 m!606817))

(declare-fun m!606819 () Bool)

(assert (=> b!631898 m!606819))

(assert (=> b!631901 m!606807))

(declare-fun m!606821 () Bool)

(assert (=> b!631901 m!606821))

(assert (=> b!631903 m!606805))

(assert (=> b!631903 m!606805))

(declare-fun m!606823 () Bool)

(assert (=> b!631903 m!606823))

(assert (=> b!631904 m!606807))

(declare-fun m!606825 () Bool)

(assert (=> b!631904 m!606825))

(assert (=> b!631904 m!606805))

(declare-fun m!606827 () Bool)

(assert (=> b!631896 m!606827))

(declare-fun m!606829 () Bool)

(assert (=> b!631893 m!606829))

(assert (=> b!631893 m!606805))

(assert (=> b!631893 m!606805))

(declare-fun m!606831 () Bool)

(assert (=> b!631893 m!606831))

(declare-fun m!606833 () Bool)

(assert (=> b!631899 m!606833))

(declare-fun m!606835 () Bool)

(assert (=> b!631895 m!606835))

(declare-fun m!606837 () Bool)

(assert (=> b!631902 m!606837))

(declare-fun m!606839 () Bool)

(assert (=> start!57112 m!606839))

(declare-fun m!606841 () Bool)

(assert (=> start!57112 m!606841))

(push 1)

