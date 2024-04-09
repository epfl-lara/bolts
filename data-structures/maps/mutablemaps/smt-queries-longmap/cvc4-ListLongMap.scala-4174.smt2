; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56914 () Bool)

(assert start!56914)

(declare-fun b!629764 () Bool)

(declare-fun e!360135 () Bool)

(assert (=> b!629764 (= e!360135 (not true))))

(declare-fun e!360133 () Bool)

(assert (=> b!629764 e!360133))

(declare-fun res!407162 () Bool)

(assert (=> b!629764 (=> (not res!407162) (not e!360133))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6683 0))(
  ( (MissingZero!6683 (index!29018 (_ BitVec 32))) (Found!6683 (index!29019 (_ BitVec 32))) (Intermediate!6683 (undefined!7495 Bool) (index!29020 (_ BitVec 32)) (x!57781 (_ BitVec 32))) (Undefined!6683) (MissingVacant!6683 (index!29021 (_ BitVec 32))) )
))
(declare-fun lt!290913 () SeekEntryResult!6683)

(declare-datatypes ((array!38008 0))(
  ( (array!38009 (arr!18236 (Array (_ BitVec 32) (_ BitVec 64))) (size!18600 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38008)

(declare-fun lt!290916 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38008 (_ BitVec 32)) SeekEntryResult!6683)

(assert (=> b!629764 (= res!407162 (= lt!290913 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290916 vacantSpotIndex!68 (select (store (arr!18236 a!2986) i!1108 k!1786) j!136) (array!38009 (store (arr!18236 a!2986) i!1108 k!1786) (size!18600 a!2986)) mask!3053)))))

(assert (=> b!629764 (= lt!290913 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290916 vacantSpotIndex!68 (select (arr!18236 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21110 0))(
  ( (Unit!21111) )
))
(declare-fun lt!290912 () Unit!21110)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38008 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21110)

(assert (=> b!629764 (= lt!290912 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290916 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629764 (= lt!290916 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!407160 () Bool)

(declare-fun e!360136 () Bool)

(assert (=> start!56914 (=> (not res!407160) (not e!360136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56914 (= res!407160 (validMask!0 mask!3053))))

(assert (=> start!56914 e!360136))

(assert (=> start!56914 true))

(declare-fun array_inv!14010 (array!38008) Bool)

(assert (=> start!56914 (array_inv!14010 a!2986)))

(declare-fun b!629765 () Bool)

(declare-fun res!407165 () Bool)

(assert (=> b!629765 (=> (not res!407165) (not e!360136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629765 (= res!407165 (validKeyInArray!0 k!1786))))

(declare-fun b!629766 () Bool)

(declare-fun lt!290914 () SeekEntryResult!6683)

(assert (=> b!629766 (= e!360133 (= lt!290914 lt!290913))))

(declare-fun b!629767 () Bool)

(declare-fun e!360134 () Bool)

(assert (=> b!629767 (= e!360136 e!360134)))

(declare-fun res!407158 () Bool)

(assert (=> b!629767 (=> (not res!407158) (not e!360134))))

(declare-fun lt!290915 () SeekEntryResult!6683)

(assert (=> b!629767 (= res!407158 (or (= lt!290915 (MissingZero!6683 i!1108)) (= lt!290915 (MissingVacant!6683 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38008 (_ BitVec 32)) SeekEntryResult!6683)

(assert (=> b!629767 (= lt!290915 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629768 () Bool)

(assert (=> b!629768 (= e!360134 e!360135)))

(declare-fun res!407159 () Bool)

(assert (=> b!629768 (=> (not res!407159) (not e!360135))))

(assert (=> b!629768 (= res!407159 (and (= lt!290914 (Found!6683 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18236 a!2986) index!984) (select (arr!18236 a!2986) j!136))) (not (= (select (arr!18236 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!629768 (= lt!290914 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18236 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629769 () Bool)

(declare-fun res!407164 () Bool)

(assert (=> b!629769 (=> (not res!407164) (not e!360134))))

(declare-datatypes ((List!12330 0))(
  ( (Nil!12327) (Cons!12326 (h!13371 (_ BitVec 64)) (t!18566 List!12330)) )
))
(declare-fun arrayNoDuplicates!0 (array!38008 (_ BitVec 32) List!12330) Bool)

(assert (=> b!629769 (= res!407164 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12327))))

(declare-fun b!629770 () Bool)

(declare-fun res!407166 () Bool)

(assert (=> b!629770 (=> (not res!407166) (not e!360136))))

(assert (=> b!629770 (= res!407166 (and (= (size!18600 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18600 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18600 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629771 () Bool)

(declare-fun res!407161 () Bool)

(assert (=> b!629771 (=> (not res!407161) (not e!360134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38008 (_ BitVec 32)) Bool)

(assert (=> b!629771 (= res!407161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629772 () Bool)

(declare-fun res!407167 () Bool)

(assert (=> b!629772 (=> (not res!407167) (not e!360136))))

(declare-fun arrayContainsKey!0 (array!38008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629772 (= res!407167 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629773 () Bool)

(declare-fun res!407168 () Bool)

(assert (=> b!629773 (=> (not res!407168) (not e!360136))))

(assert (=> b!629773 (= res!407168 (validKeyInArray!0 (select (arr!18236 a!2986) j!136)))))

(declare-fun b!629774 () Bool)

(declare-fun res!407163 () Bool)

(assert (=> b!629774 (=> (not res!407163) (not e!360134))))

(assert (=> b!629774 (= res!407163 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18236 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18236 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56914 res!407160) b!629770))

(assert (= (and b!629770 res!407166) b!629773))

(assert (= (and b!629773 res!407168) b!629765))

(assert (= (and b!629765 res!407165) b!629772))

(assert (= (and b!629772 res!407167) b!629767))

(assert (= (and b!629767 res!407158) b!629771))

(assert (= (and b!629771 res!407161) b!629769))

(assert (= (and b!629769 res!407164) b!629774))

(assert (= (and b!629774 res!407163) b!629768))

(assert (= (and b!629768 res!407159) b!629764))

(assert (= (and b!629764 res!407162) b!629766))

(declare-fun m!604813 () Bool)

(assert (=> b!629772 m!604813))

(declare-fun m!604815 () Bool)

(assert (=> b!629768 m!604815))

(declare-fun m!604817 () Bool)

(assert (=> b!629768 m!604817))

(assert (=> b!629768 m!604817))

(declare-fun m!604819 () Bool)

(assert (=> b!629768 m!604819))

(assert (=> b!629773 m!604817))

(assert (=> b!629773 m!604817))

(declare-fun m!604821 () Bool)

(assert (=> b!629773 m!604821))

(declare-fun m!604823 () Bool)

(assert (=> b!629769 m!604823))

(declare-fun m!604825 () Bool)

(assert (=> start!56914 m!604825))

(declare-fun m!604827 () Bool)

(assert (=> start!56914 m!604827))

(declare-fun m!604829 () Bool)

(assert (=> b!629767 m!604829))

(declare-fun m!604831 () Bool)

(assert (=> b!629765 m!604831))

(declare-fun m!604833 () Bool)

(assert (=> b!629771 m!604833))

(declare-fun m!604835 () Bool)

(assert (=> b!629774 m!604835))

(declare-fun m!604837 () Bool)

(assert (=> b!629774 m!604837))

(declare-fun m!604839 () Bool)

(assert (=> b!629774 m!604839))

(declare-fun m!604841 () Bool)

(assert (=> b!629764 m!604841))

(assert (=> b!629764 m!604817))

(assert (=> b!629764 m!604837))

(declare-fun m!604843 () Bool)

(assert (=> b!629764 m!604843))

(declare-fun m!604845 () Bool)

(assert (=> b!629764 m!604845))

(declare-fun m!604847 () Bool)

(assert (=> b!629764 m!604847))

(assert (=> b!629764 m!604843))

(assert (=> b!629764 m!604817))

(declare-fun m!604849 () Bool)

(assert (=> b!629764 m!604849))

(push 1)

