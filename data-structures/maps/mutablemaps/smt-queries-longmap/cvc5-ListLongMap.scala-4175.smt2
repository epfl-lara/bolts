; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56916 () Bool)

(assert start!56916)

(declare-fun b!629797 () Bool)

(declare-fun e!360150 () Bool)

(assert (=> b!629797 (= e!360150 (not true))))

(declare-fun e!360149 () Bool)

(assert (=> b!629797 e!360149))

(declare-fun res!407201 () Bool)

(assert (=> b!629797 (=> (not res!407201) (not e!360149))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38010 0))(
  ( (array!38011 (arr!18237 (Array (_ BitVec 32) (_ BitVec 64))) (size!18601 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38010)

(declare-fun lt!290930 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6684 0))(
  ( (MissingZero!6684 (index!29022 (_ BitVec 32))) (Found!6684 (index!29023 (_ BitVec 32))) (Intermediate!6684 (undefined!7496 Bool) (index!29024 (_ BitVec 32)) (x!57790 (_ BitVec 32))) (Undefined!6684) (MissingVacant!6684 (index!29025 (_ BitVec 32))) )
))
(declare-fun lt!290927 () SeekEntryResult!6684)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38010 (_ BitVec 32)) SeekEntryResult!6684)

(assert (=> b!629797 (= res!407201 (= lt!290927 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290930 vacantSpotIndex!68 (select (store (arr!18237 a!2986) i!1108 k!1786) j!136) (array!38011 (store (arr!18237 a!2986) i!1108 k!1786) (size!18601 a!2986)) mask!3053)))))

(assert (=> b!629797 (= lt!290927 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290930 vacantSpotIndex!68 (select (arr!18237 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21112 0))(
  ( (Unit!21113) )
))
(declare-fun lt!290929 () Unit!21112)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38010 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21112)

(assert (=> b!629797 (= lt!290929 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290930 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629797 (= lt!290930 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629798 () Bool)

(declare-fun e!360148 () Bool)

(declare-fun e!360147 () Bool)

(assert (=> b!629798 (= e!360148 e!360147)))

(declare-fun res!407191 () Bool)

(assert (=> b!629798 (=> (not res!407191) (not e!360147))))

(declare-fun lt!290928 () SeekEntryResult!6684)

(assert (=> b!629798 (= res!407191 (or (= lt!290928 (MissingZero!6684 i!1108)) (= lt!290928 (MissingVacant!6684 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38010 (_ BitVec 32)) SeekEntryResult!6684)

(assert (=> b!629798 (= lt!290928 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629799 () Bool)

(declare-fun res!407196 () Bool)

(assert (=> b!629799 (=> (not res!407196) (not e!360148))))

(declare-fun arrayContainsKey!0 (array!38010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629799 (= res!407196 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629800 () Bool)

(declare-fun lt!290931 () SeekEntryResult!6684)

(assert (=> b!629800 (= e!360149 (= lt!290931 lt!290927))))

(declare-fun res!407199 () Bool)

(assert (=> start!56916 (=> (not res!407199) (not e!360148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56916 (= res!407199 (validMask!0 mask!3053))))

(assert (=> start!56916 e!360148))

(assert (=> start!56916 true))

(declare-fun array_inv!14011 (array!38010) Bool)

(assert (=> start!56916 (array_inv!14011 a!2986)))

(declare-fun b!629801 () Bool)

(declare-fun res!407195 () Bool)

(assert (=> b!629801 (=> (not res!407195) (not e!360147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38010 (_ BitVec 32)) Bool)

(assert (=> b!629801 (= res!407195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629802 () Bool)

(declare-fun res!407197 () Bool)

(assert (=> b!629802 (=> (not res!407197) (not e!360148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629802 (= res!407197 (validKeyInArray!0 k!1786))))

(declare-fun b!629803 () Bool)

(assert (=> b!629803 (= e!360147 e!360150)))

(declare-fun res!407194 () Bool)

(assert (=> b!629803 (=> (not res!407194) (not e!360150))))

(assert (=> b!629803 (= res!407194 (and (= lt!290931 (Found!6684 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18237 a!2986) index!984) (select (arr!18237 a!2986) j!136))) (not (= (select (arr!18237 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!629803 (= lt!290931 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18237 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629804 () Bool)

(declare-fun res!407192 () Bool)

(assert (=> b!629804 (=> (not res!407192) (not e!360147))))

(assert (=> b!629804 (= res!407192 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18237 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18237 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629805 () Bool)

(declare-fun res!407200 () Bool)

(assert (=> b!629805 (=> (not res!407200) (not e!360148))))

(assert (=> b!629805 (= res!407200 (validKeyInArray!0 (select (arr!18237 a!2986) j!136)))))

(declare-fun b!629806 () Bool)

(declare-fun res!407198 () Bool)

(assert (=> b!629806 (=> (not res!407198) (not e!360147))))

(declare-datatypes ((List!12331 0))(
  ( (Nil!12328) (Cons!12327 (h!13372 (_ BitVec 64)) (t!18567 List!12331)) )
))
(declare-fun arrayNoDuplicates!0 (array!38010 (_ BitVec 32) List!12331) Bool)

(assert (=> b!629806 (= res!407198 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12328))))

(declare-fun b!629807 () Bool)

(declare-fun res!407193 () Bool)

(assert (=> b!629807 (=> (not res!407193) (not e!360148))))

(assert (=> b!629807 (= res!407193 (and (= (size!18601 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18601 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18601 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56916 res!407199) b!629807))

(assert (= (and b!629807 res!407193) b!629805))

(assert (= (and b!629805 res!407200) b!629802))

(assert (= (and b!629802 res!407197) b!629799))

(assert (= (and b!629799 res!407196) b!629798))

(assert (= (and b!629798 res!407191) b!629801))

(assert (= (and b!629801 res!407195) b!629806))

(assert (= (and b!629806 res!407198) b!629804))

(assert (= (and b!629804 res!407192) b!629803))

(assert (= (and b!629803 res!407194) b!629797))

(assert (= (and b!629797 res!407201) b!629800))

(declare-fun m!604851 () Bool)

(assert (=> b!629804 m!604851))

(declare-fun m!604853 () Bool)

(assert (=> b!629804 m!604853))

(declare-fun m!604855 () Bool)

(assert (=> b!629804 m!604855))

(declare-fun m!604857 () Bool)

(assert (=> start!56916 m!604857))

(declare-fun m!604859 () Bool)

(assert (=> start!56916 m!604859))

(declare-fun m!604861 () Bool)

(assert (=> b!629801 m!604861))

(declare-fun m!604863 () Bool)

(assert (=> b!629799 m!604863))

(declare-fun m!604865 () Bool)

(assert (=> b!629805 m!604865))

(assert (=> b!629805 m!604865))

(declare-fun m!604867 () Bool)

(assert (=> b!629805 m!604867))

(declare-fun m!604869 () Bool)

(assert (=> b!629797 m!604869))

(declare-fun m!604871 () Bool)

(assert (=> b!629797 m!604871))

(assert (=> b!629797 m!604865))

(assert (=> b!629797 m!604853))

(assert (=> b!629797 m!604865))

(declare-fun m!604873 () Bool)

(assert (=> b!629797 m!604873))

(assert (=> b!629797 m!604871))

(declare-fun m!604875 () Bool)

(assert (=> b!629797 m!604875))

(declare-fun m!604877 () Bool)

(assert (=> b!629797 m!604877))

(declare-fun m!604879 () Bool)

(assert (=> b!629803 m!604879))

(assert (=> b!629803 m!604865))

(assert (=> b!629803 m!604865))

(declare-fun m!604881 () Bool)

(assert (=> b!629803 m!604881))

(declare-fun m!604883 () Bool)

(assert (=> b!629806 m!604883))

(declare-fun m!604885 () Bool)

(assert (=> b!629798 m!604885))

(declare-fun m!604887 () Bool)

(assert (=> b!629802 m!604887))

(push 1)

