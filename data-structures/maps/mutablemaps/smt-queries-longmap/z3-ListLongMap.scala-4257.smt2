; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59114 () Bool)

(assert start!59114)

(declare-fun b!651799 () Bool)

(declare-fun res!422723 () Bool)

(declare-fun e!374082 () Bool)

(assert (=> b!651799 (=> (not res!422723) (not e!374082))))

(declare-datatypes ((array!38570 0))(
  ( (array!38571 (arr!18484 (Array (_ BitVec 32) (_ BitVec 64))) (size!18848 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38570)

(declare-datatypes ((List!12578 0))(
  ( (Nil!12575) (Cons!12574 (h!13619 (_ BitVec 64)) (t!18814 List!12578)) )
))
(declare-fun arrayNoDuplicates!0 (array!38570 (_ BitVec 32) List!12578) Bool)

(assert (=> b!651799 (= res!422723 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12575))))

(declare-fun b!651800 () Bool)

(declare-fun e!374092 () Bool)

(declare-fun e!374090 () Bool)

(assert (=> b!651800 (= e!374092 (not e!374090))))

(declare-fun res!422721 () Bool)

(assert (=> b!651800 (=> res!422721 e!374090)))

(declare-datatypes ((SeekEntryResult!6931 0))(
  ( (MissingZero!6931 (index!30076 (_ BitVec 32))) (Found!6931 (index!30077 (_ BitVec 32))) (Intermediate!6931 (undefined!7743 Bool) (index!30078 (_ BitVec 32)) (x!58891 (_ BitVec 32))) (Undefined!6931) (MissingVacant!6931 (index!30079 (_ BitVec 32))) )
))
(declare-fun lt!303218 () SeekEntryResult!6931)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!651800 (= res!422721 (not (= lt!303218 (Found!6931 index!984))))))

(declare-datatypes ((Unit!22258 0))(
  ( (Unit!22259) )
))
(declare-fun lt!303230 () Unit!22258)

(declare-fun e!374083 () Unit!22258)

(assert (=> b!651800 (= lt!303230 e!374083)))

(declare-fun c!74909 () Bool)

(assert (=> b!651800 (= c!74909 (= lt!303218 Undefined!6931))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!303233 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!303232 () array!38570)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38570 (_ BitVec 32)) SeekEntryResult!6931)

(assert (=> b!651800 (= lt!303218 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303233 lt!303232 mask!3053))))

(declare-fun e!374087 () Bool)

(assert (=> b!651800 e!374087))

(declare-fun res!422732 () Bool)

(assert (=> b!651800 (=> (not res!422732) (not e!374087))))

(declare-fun lt!303223 () (_ BitVec 32))

(declare-fun lt!303234 () SeekEntryResult!6931)

(assert (=> b!651800 (= res!422732 (= lt!303234 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303223 vacantSpotIndex!68 lt!303233 lt!303232 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!651800 (= lt!303234 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303223 vacantSpotIndex!68 (select (arr!18484 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!651800 (= lt!303233 (select (store (arr!18484 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!303228 () Unit!22258)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38570 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22258)

(assert (=> b!651800 (= lt!303228 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303223 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651800 (= lt!303223 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!651801 () Bool)

(declare-fun e!374088 () Bool)

(declare-fun e!374086 () Bool)

(assert (=> b!651801 (= e!374088 e!374086)))

(declare-fun res!422733 () Bool)

(assert (=> b!651801 (=> res!422733 e!374086)))

(declare-fun lt!303219 () (_ BitVec 64))

(assert (=> b!651801 (= res!422733 (or (not (= (select (arr!18484 a!2986) j!136) lt!303233)) (not (= (select (arr!18484 a!2986) j!136) lt!303219)) (bvsge j!136 index!984)))))

(declare-fun b!651802 () Bool)

(declare-fun e!374089 () Bool)

(assert (=> b!651802 (= e!374089 true)))

(assert (=> b!651802 (arrayNoDuplicates!0 lt!303232 index!984 Nil!12575)))

(declare-fun lt!303231 () Unit!22258)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38570 (_ BitVec 32) (_ BitVec 32)) Unit!22258)

(assert (=> b!651802 (= lt!303231 (lemmaNoDuplicateFromThenFromBigger!0 lt!303232 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651802 (arrayNoDuplicates!0 lt!303232 #b00000000000000000000000000000000 Nil!12575)))

(declare-fun lt!303227 () Unit!22258)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38570 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12578) Unit!22258)

(assert (=> b!651802 (= lt!303227 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12575))))

(declare-fun arrayContainsKey!0 (array!38570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651802 (arrayContainsKey!0 lt!303232 (select (arr!18484 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303226 () Unit!22258)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38570 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22258)

(assert (=> b!651802 (= lt!303226 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303232 (select (arr!18484 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!374084 () Bool)

(assert (=> b!651802 e!374084))

(declare-fun res!422717 () Bool)

(assert (=> b!651802 (=> (not res!422717) (not e!374084))))

(assert (=> b!651802 (= res!422717 (arrayContainsKey!0 lt!303232 (select (arr!18484 a!2986) j!136) j!136))))

(declare-fun b!651803 () Bool)

(declare-fun e!374078 () Unit!22258)

(declare-fun Unit!22260 () Unit!22258)

(assert (=> b!651803 (= e!374078 Unit!22260)))

(declare-fun lt!303217 () Unit!22258)

(assert (=> b!651803 (= lt!303217 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303232 (select (arr!18484 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!651803 (arrayContainsKey!0 lt!303232 (select (arr!18484 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303225 () Unit!22258)

(assert (=> b!651803 (= lt!303225 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12575))))

(assert (=> b!651803 (arrayNoDuplicates!0 lt!303232 #b00000000000000000000000000000000 Nil!12575)))

(declare-fun lt!303221 () Unit!22258)

(assert (=> b!651803 (= lt!303221 (lemmaNoDuplicateFromThenFromBigger!0 lt!303232 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651803 (arrayNoDuplicates!0 lt!303232 j!136 Nil!12575)))

(declare-fun lt!303224 () Unit!22258)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38570 (_ BitVec 64) (_ BitVec 32) List!12578) Unit!22258)

(assert (=> b!651803 (= lt!303224 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303232 (select (arr!18484 a!2986) j!136) j!136 Nil!12575))))

(assert (=> b!651803 false))

(declare-fun b!651804 () Bool)

(declare-fun e!374091 () Bool)

(assert (=> b!651804 (= e!374090 e!374091)))

(declare-fun res!422734 () Bool)

(assert (=> b!651804 (=> res!422734 e!374091)))

(assert (=> b!651804 (= res!422734 (or (not (= (select (arr!18484 a!2986) j!136) lt!303233)) (not (= (select (arr!18484 a!2986) j!136) lt!303219))))))

(assert (=> b!651804 e!374088))

(declare-fun res!422729 () Bool)

(assert (=> b!651804 (=> (not res!422729) (not e!374088))))

(assert (=> b!651804 (= res!422729 (= lt!303219 (select (arr!18484 a!2986) j!136)))))

(assert (=> b!651804 (= lt!303219 (select (store (arr!18484 a!2986) i!1108 k0!1786) index!984))))

(declare-fun res!422727 () Bool)

(declare-fun e!374080 () Bool)

(assert (=> start!59114 (=> (not res!422727) (not e!374080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59114 (= res!422727 (validMask!0 mask!3053))))

(assert (=> start!59114 e!374080))

(assert (=> start!59114 true))

(declare-fun array_inv!14258 (array!38570) Bool)

(assert (=> start!59114 (array_inv!14258 a!2986)))

(declare-fun b!651805 () Bool)

(declare-fun lt!303220 () SeekEntryResult!6931)

(assert (=> b!651805 (= e!374087 (= lt!303220 lt!303234))))

(declare-fun b!651806 () Bool)

(declare-fun res!422730 () Bool)

(assert (=> b!651806 (=> (not res!422730) (not e!374082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38570 (_ BitVec 32)) Bool)

(assert (=> b!651806 (= res!422730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!651807 () Bool)

(declare-fun e!374085 () Bool)

(assert (=> b!651807 (= e!374086 e!374085)))

(declare-fun res!422728 () Bool)

(assert (=> b!651807 (=> (not res!422728) (not e!374085))))

(assert (=> b!651807 (= res!422728 (arrayContainsKey!0 lt!303232 (select (arr!18484 a!2986) j!136) j!136))))

(declare-fun b!651808 () Bool)

(declare-fun res!422719 () Bool)

(assert (=> b!651808 (=> (not res!422719) (not e!374080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651808 (= res!422719 (validKeyInArray!0 (select (arr!18484 a!2986) j!136)))))

(declare-fun b!651809 () Bool)

(declare-fun res!422722 () Bool)

(assert (=> b!651809 (=> (not res!422722) (not e!374080))))

(assert (=> b!651809 (= res!422722 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!651810 () Bool)

(declare-fun res!422718 () Bool)

(assert (=> b!651810 (=> (not res!422718) (not e!374082))))

(assert (=> b!651810 (= res!422718 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18484 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651811 () Bool)

(assert (=> b!651811 (= e!374091 e!374089)))

(declare-fun res!422725 () Bool)

(assert (=> b!651811 (=> res!422725 e!374089)))

(assert (=> b!651811 (= res!422725 (bvsge index!984 j!136))))

(declare-fun lt!303229 () Unit!22258)

(assert (=> b!651811 (= lt!303229 e!374078)))

(declare-fun c!74908 () Bool)

(assert (=> b!651811 (= c!74908 (bvslt j!136 index!984))))

(declare-fun b!651812 () Bool)

(declare-fun Unit!22261 () Unit!22258)

(assert (=> b!651812 (= e!374083 Unit!22261)))

(declare-fun b!651813 () Bool)

(assert (=> b!651813 (= e!374080 e!374082)))

(declare-fun res!422724 () Bool)

(assert (=> b!651813 (=> (not res!422724) (not e!374082))))

(declare-fun lt!303222 () SeekEntryResult!6931)

(assert (=> b!651813 (= res!422724 (or (= lt!303222 (MissingZero!6931 i!1108)) (= lt!303222 (MissingVacant!6931 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38570 (_ BitVec 32)) SeekEntryResult!6931)

(assert (=> b!651813 (= lt!303222 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!651814 () Bool)

(declare-fun e!374079 () Bool)

(assert (=> b!651814 (= e!374079 e!374092)))

(declare-fun res!422735 () Bool)

(assert (=> b!651814 (=> (not res!422735) (not e!374092))))

(assert (=> b!651814 (= res!422735 (and (= lt!303220 (Found!6931 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18484 a!2986) index!984) (select (arr!18484 a!2986) j!136))) (not (= (select (arr!18484 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!651814 (= lt!303220 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18484 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651815 () Bool)

(assert (=> b!651815 (= e!374085 (arrayContainsKey!0 lt!303232 (select (arr!18484 a!2986) j!136) index!984))))

(declare-fun b!651816 () Bool)

(declare-fun Unit!22262 () Unit!22258)

(assert (=> b!651816 (= e!374083 Unit!22262)))

(assert (=> b!651816 false))

(declare-fun b!651817 () Bool)

(assert (=> b!651817 (= e!374084 (arrayContainsKey!0 lt!303232 (select (arr!18484 a!2986) j!136) index!984))))

(declare-fun b!651818 () Bool)

(declare-fun res!422731 () Bool)

(assert (=> b!651818 (=> (not res!422731) (not e!374080))))

(assert (=> b!651818 (= res!422731 (validKeyInArray!0 k0!1786))))

(declare-fun b!651819 () Bool)

(assert (=> b!651819 (= e!374082 e!374079)))

(declare-fun res!422720 () Bool)

(assert (=> b!651819 (=> (not res!422720) (not e!374079))))

(assert (=> b!651819 (= res!422720 (= (select (store (arr!18484 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651819 (= lt!303232 (array!38571 (store (arr!18484 a!2986) i!1108 k0!1786) (size!18848 a!2986)))))

(declare-fun b!651820 () Bool)

(declare-fun Unit!22263 () Unit!22258)

(assert (=> b!651820 (= e!374078 Unit!22263)))

(declare-fun b!651821 () Bool)

(declare-fun res!422726 () Bool)

(assert (=> b!651821 (=> (not res!422726) (not e!374080))))

(assert (=> b!651821 (= res!422726 (and (= (size!18848 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18848 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18848 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!59114 res!422727) b!651821))

(assert (= (and b!651821 res!422726) b!651808))

(assert (= (and b!651808 res!422719) b!651818))

(assert (= (and b!651818 res!422731) b!651809))

(assert (= (and b!651809 res!422722) b!651813))

(assert (= (and b!651813 res!422724) b!651806))

(assert (= (and b!651806 res!422730) b!651799))

(assert (= (and b!651799 res!422723) b!651810))

(assert (= (and b!651810 res!422718) b!651819))

(assert (= (and b!651819 res!422720) b!651814))

(assert (= (and b!651814 res!422735) b!651800))

(assert (= (and b!651800 res!422732) b!651805))

(assert (= (and b!651800 c!74909) b!651816))

(assert (= (and b!651800 (not c!74909)) b!651812))

(assert (= (and b!651800 (not res!422721)) b!651804))

(assert (= (and b!651804 res!422729) b!651801))

(assert (= (and b!651801 (not res!422733)) b!651807))

(assert (= (and b!651807 res!422728) b!651815))

(assert (= (and b!651804 (not res!422734)) b!651811))

(assert (= (and b!651811 c!74908) b!651803))

(assert (= (and b!651811 (not c!74908)) b!651820))

(assert (= (and b!651811 (not res!422725)) b!651802))

(assert (= (and b!651802 res!422717) b!651817))

(declare-fun m!625019 () Bool)

(assert (=> b!651818 m!625019))

(declare-fun m!625021 () Bool)

(assert (=> b!651802 m!625021))

(declare-fun m!625023 () Bool)

(assert (=> b!651802 m!625023))

(declare-fun m!625025 () Bool)

(assert (=> b!651802 m!625025))

(assert (=> b!651802 m!625023))

(declare-fun m!625027 () Bool)

(assert (=> b!651802 m!625027))

(declare-fun m!625029 () Bool)

(assert (=> b!651802 m!625029))

(assert (=> b!651802 m!625023))

(assert (=> b!651802 m!625023))

(declare-fun m!625031 () Bool)

(assert (=> b!651802 m!625031))

(declare-fun m!625033 () Bool)

(assert (=> b!651802 m!625033))

(declare-fun m!625035 () Bool)

(assert (=> b!651802 m!625035))

(declare-fun m!625037 () Bool)

(assert (=> b!651799 m!625037))

(assert (=> b!651804 m!625023))

(declare-fun m!625039 () Bool)

(assert (=> b!651804 m!625039))

(declare-fun m!625041 () Bool)

(assert (=> b!651804 m!625041))

(assert (=> b!651808 m!625023))

(assert (=> b!651808 m!625023))

(declare-fun m!625043 () Bool)

(assert (=> b!651808 m!625043))

(assert (=> b!651817 m!625023))

(assert (=> b!651817 m!625023))

(declare-fun m!625045 () Bool)

(assert (=> b!651817 m!625045))

(assert (=> b!651801 m!625023))

(declare-fun m!625047 () Bool)

(assert (=> b!651813 m!625047))

(declare-fun m!625049 () Bool)

(assert (=> b!651810 m!625049))

(declare-fun m!625051 () Bool)

(assert (=> b!651806 m!625051))

(declare-fun m!625053 () Bool)

(assert (=> b!651800 m!625053))

(assert (=> b!651800 m!625023))

(assert (=> b!651800 m!625039))

(declare-fun m!625055 () Bool)

(assert (=> b!651800 m!625055))

(declare-fun m!625057 () Bool)

(assert (=> b!651800 m!625057))

(assert (=> b!651800 m!625023))

(declare-fun m!625059 () Bool)

(assert (=> b!651800 m!625059))

(declare-fun m!625061 () Bool)

(assert (=> b!651800 m!625061))

(declare-fun m!625063 () Bool)

(assert (=> b!651800 m!625063))

(assert (=> b!651815 m!625023))

(assert (=> b!651815 m!625023))

(assert (=> b!651815 m!625045))

(declare-fun m!625065 () Bool)

(assert (=> b!651814 m!625065))

(assert (=> b!651814 m!625023))

(assert (=> b!651814 m!625023))

(declare-fun m!625067 () Bool)

(assert (=> b!651814 m!625067))

(declare-fun m!625069 () Bool)

(assert (=> b!651803 m!625069))

(assert (=> b!651803 m!625023))

(declare-fun m!625071 () Bool)

(assert (=> b!651803 m!625071))

(declare-fun m!625073 () Bool)

(assert (=> b!651803 m!625073))

(assert (=> b!651803 m!625021))

(assert (=> b!651803 m!625023))

(declare-fun m!625075 () Bool)

(assert (=> b!651803 m!625075))

(assert (=> b!651803 m!625029))

(assert (=> b!651803 m!625023))

(assert (=> b!651803 m!625023))

(declare-fun m!625077 () Bool)

(assert (=> b!651803 m!625077))

(assert (=> b!651819 m!625039))

(declare-fun m!625079 () Bool)

(assert (=> b!651819 m!625079))

(declare-fun m!625081 () Bool)

(assert (=> b!651809 m!625081))

(declare-fun m!625083 () Bool)

(assert (=> start!59114 m!625083))

(declare-fun m!625085 () Bool)

(assert (=> start!59114 m!625085))

(assert (=> b!651807 m!625023))

(assert (=> b!651807 m!625023))

(assert (=> b!651807 m!625027))

(check-sat (not b!651818) (not b!651817) (not b!651802) (not b!651814) (not b!651800) (not b!651806) (not b!651807) (not b!651815) (not b!651808) (not start!59114) (not b!651799) (not b!651803) (not b!651813) (not b!651809))
(check-sat)
