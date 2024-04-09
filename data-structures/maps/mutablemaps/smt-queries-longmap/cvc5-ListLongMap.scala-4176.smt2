; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56922 () Bool)

(assert start!56922)

(declare-fun b!629896 () Bool)

(declare-fun e!360195 () Bool)

(assert (=> b!629896 (= e!360195 (not true))))

(declare-fun e!360196 () Bool)

(assert (=> b!629896 e!360196))

(declare-fun res!407293 () Bool)

(assert (=> b!629896 (=> (not res!407293) (not e!360196))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38016 0))(
  ( (array!38017 (arr!18240 (Array (_ BitVec 32) (_ BitVec 64))) (size!18604 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38016)

(declare-fun lt!290972 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6687 0))(
  ( (MissingZero!6687 (index!29034 (_ BitVec 32))) (Found!6687 (index!29035 (_ BitVec 32))) (Intermediate!6687 (undefined!7499 Bool) (index!29036 (_ BitVec 32)) (x!57801 (_ BitVec 32))) (Undefined!6687) (MissingVacant!6687 (index!29037 (_ BitVec 32))) )
))
(declare-fun lt!290975 () SeekEntryResult!6687)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38016 (_ BitVec 32)) SeekEntryResult!6687)

(assert (=> b!629896 (= res!407293 (= lt!290975 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290972 vacantSpotIndex!68 (select (store (arr!18240 a!2986) i!1108 k!1786) j!136) (array!38017 (store (arr!18240 a!2986) i!1108 k!1786) (size!18604 a!2986)) mask!3053)))))

(assert (=> b!629896 (= lt!290975 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290972 vacantSpotIndex!68 (select (arr!18240 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21118 0))(
  ( (Unit!21119) )
))
(declare-fun lt!290976 () Unit!21118)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38016 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21118)

(assert (=> b!629896 (= lt!290976 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290972 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629896 (= lt!290972 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629897 () Bool)

(declare-fun e!360193 () Bool)

(assert (=> b!629897 (= e!360193 e!360195)))

(declare-fun res!407292 () Bool)

(assert (=> b!629897 (=> (not res!407292) (not e!360195))))

(declare-fun lt!290974 () SeekEntryResult!6687)

(assert (=> b!629897 (= res!407292 (and (= lt!290974 (Found!6687 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18240 a!2986) index!984) (select (arr!18240 a!2986) j!136))) (not (= (select (arr!18240 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!629897 (= lt!290974 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18240 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629898 () Bool)

(assert (=> b!629898 (= e!360196 (= lt!290974 lt!290975))))

(declare-fun b!629899 () Bool)

(declare-fun res!407295 () Bool)

(assert (=> b!629899 (=> (not res!407295) (not e!360193))))

(declare-datatypes ((List!12334 0))(
  ( (Nil!12331) (Cons!12330 (h!13375 (_ BitVec 64)) (t!18570 List!12334)) )
))
(declare-fun arrayNoDuplicates!0 (array!38016 (_ BitVec 32) List!12334) Bool)

(assert (=> b!629899 (= res!407295 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12331))))

(declare-fun b!629900 () Bool)

(declare-fun res!407299 () Bool)

(declare-fun e!360194 () Bool)

(assert (=> b!629900 (=> (not res!407299) (not e!360194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629900 (= res!407299 (validKeyInArray!0 k!1786))))

(declare-fun b!629901 () Bool)

(declare-fun res!407297 () Bool)

(assert (=> b!629901 (=> (not res!407297) (not e!360194))))

(assert (=> b!629901 (= res!407297 (and (= (size!18604 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18604 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18604 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629902 () Bool)

(declare-fun res!407291 () Bool)

(assert (=> b!629902 (=> (not res!407291) (not e!360194))))

(declare-fun arrayContainsKey!0 (array!38016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629902 (= res!407291 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629904 () Bool)

(declare-fun res!407290 () Bool)

(assert (=> b!629904 (=> (not res!407290) (not e!360193))))

(assert (=> b!629904 (= res!407290 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18240 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18240 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!407294 () Bool)

(assert (=> start!56922 (=> (not res!407294) (not e!360194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56922 (= res!407294 (validMask!0 mask!3053))))

(assert (=> start!56922 e!360194))

(assert (=> start!56922 true))

(declare-fun array_inv!14014 (array!38016) Bool)

(assert (=> start!56922 (array_inv!14014 a!2986)))

(declare-fun b!629903 () Bool)

(assert (=> b!629903 (= e!360194 e!360193)))

(declare-fun res!407296 () Bool)

(assert (=> b!629903 (=> (not res!407296) (not e!360193))))

(declare-fun lt!290973 () SeekEntryResult!6687)

(assert (=> b!629903 (= res!407296 (or (= lt!290973 (MissingZero!6687 i!1108)) (= lt!290973 (MissingVacant!6687 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38016 (_ BitVec 32)) SeekEntryResult!6687)

(assert (=> b!629903 (= lt!290973 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629905 () Bool)

(declare-fun res!407298 () Bool)

(assert (=> b!629905 (=> (not res!407298) (not e!360194))))

(assert (=> b!629905 (= res!407298 (validKeyInArray!0 (select (arr!18240 a!2986) j!136)))))

(declare-fun b!629906 () Bool)

(declare-fun res!407300 () Bool)

(assert (=> b!629906 (=> (not res!407300) (not e!360193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38016 (_ BitVec 32)) Bool)

(assert (=> b!629906 (= res!407300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56922 res!407294) b!629901))

(assert (= (and b!629901 res!407297) b!629905))

(assert (= (and b!629905 res!407298) b!629900))

(assert (= (and b!629900 res!407299) b!629902))

(assert (= (and b!629902 res!407291) b!629903))

(assert (= (and b!629903 res!407296) b!629906))

(assert (= (and b!629906 res!407300) b!629899))

(assert (= (and b!629899 res!407295) b!629904))

(assert (= (and b!629904 res!407290) b!629897))

(assert (= (and b!629897 res!407292) b!629896))

(assert (= (and b!629896 res!407293) b!629898))

(declare-fun m!604965 () Bool)

(assert (=> b!629900 m!604965))

(declare-fun m!604967 () Bool)

(assert (=> b!629902 m!604967))

(declare-fun m!604969 () Bool)

(assert (=> b!629897 m!604969))

(declare-fun m!604971 () Bool)

(assert (=> b!629897 m!604971))

(assert (=> b!629897 m!604971))

(declare-fun m!604973 () Bool)

(assert (=> b!629897 m!604973))

(declare-fun m!604975 () Bool)

(assert (=> b!629906 m!604975))

(declare-fun m!604977 () Bool)

(assert (=> b!629896 m!604977))

(declare-fun m!604979 () Bool)

(assert (=> b!629896 m!604979))

(assert (=> b!629896 m!604971))

(declare-fun m!604981 () Bool)

(assert (=> b!629896 m!604981))

(assert (=> b!629896 m!604979))

(declare-fun m!604983 () Bool)

(assert (=> b!629896 m!604983))

(declare-fun m!604985 () Bool)

(assert (=> b!629896 m!604985))

(assert (=> b!629896 m!604971))

(declare-fun m!604987 () Bool)

(assert (=> b!629896 m!604987))

(declare-fun m!604989 () Bool)

(assert (=> b!629904 m!604989))

(assert (=> b!629904 m!604981))

(declare-fun m!604991 () Bool)

(assert (=> b!629904 m!604991))

(declare-fun m!604993 () Bool)

(assert (=> b!629899 m!604993))

(declare-fun m!604995 () Bool)

(assert (=> b!629903 m!604995))

(assert (=> b!629905 m!604971))

(assert (=> b!629905 m!604971))

(declare-fun m!604997 () Bool)

(assert (=> b!629905 m!604997))

(declare-fun m!604999 () Bool)

(assert (=> start!56922 m!604999))

(declare-fun m!605001 () Bool)

(assert (=> start!56922 m!605001))

(push 1)

