; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53758 () Bool)

(assert start!53758)

(declare-fun b!585979 () Bool)

(declare-fun res!373954 () Bool)

(declare-fun e!335086 () Bool)

(assert (=> b!585979 (=> (not res!373954) (not e!335086))))

(declare-datatypes ((array!36613 0))(
  ( (array!36614 (arr!17577 (Array (_ BitVec 32) (_ BitVec 64))) (size!17941 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36613)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36613 (_ BitVec 32)) Bool)

(assert (=> b!585979 (= res!373954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585980 () Bool)

(declare-fun res!373948 () Bool)

(assert (=> b!585980 (=> (not res!373948) (not e!335086))))

(declare-datatypes ((List!11671 0))(
  ( (Nil!11668) (Cons!11667 (h!12712 (_ BitVec 64)) (t!17907 List!11671)) )
))
(declare-fun arrayNoDuplicates!0 (array!36613 (_ BitVec 32) List!11671) Bool)

(assert (=> b!585980 (= res!373948 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11668))))

(declare-fun res!373947 () Bool)

(declare-fun e!335084 () Bool)

(assert (=> start!53758 (=> (not res!373947) (not e!335084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53758 (= res!373947 (validMask!0 mask!3053))))

(assert (=> start!53758 e!335084))

(assert (=> start!53758 true))

(declare-fun array_inv!13351 (array!36613) Bool)

(assert (=> start!53758 (array_inv!13351 a!2986)))

(declare-fun b!585981 () Bool)

(assert (=> b!585981 (= e!335086 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6024 0))(
  ( (MissingZero!6024 (index!26323 (_ BitVec 32))) (Found!6024 (index!26324 (_ BitVec 32))) (Intermediate!6024 (undefined!6836 Bool) (index!26325 (_ BitVec 32)) (x!55168 (_ BitVec 32))) (Undefined!6024) (MissingVacant!6024 (index!26326 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36613 (_ BitVec 32)) SeekEntryResult!6024)

(assert (=> b!585981 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265984 vacantSpotIndex!68 (select (arr!17577 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265984 vacantSpotIndex!68 (select (store (arr!17577 a!2986) i!1108 k!1786) j!136) (array!36614 (store (arr!17577 a!2986) i!1108 k!1786) (size!17941 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18172 0))(
  ( (Unit!18173) )
))
(declare-fun lt!265985 () Unit!18172)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36613 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18172)

(assert (=> b!585981 (= lt!265985 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265984 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585981 (= lt!265984 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585982 () Bool)

(declare-fun res!373952 () Bool)

(assert (=> b!585982 (=> (not res!373952) (not e!335084))))

(assert (=> b!585982 (= res!373952 (and (= (size!17941 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17941 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17941 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585983 () Bool)

(declare-fun res!373955 () Bool)

(assert (=> b!585983 (=> (not res!373955) (not e!335084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585983 (= res!373955 (validKeyInArray!0 k!1786))))

(declare-fun b!585984 () Bool)

(declare-fun res!373950 () Bool)

(assert (=> b!585984 (=> (not res!373950) (not e!335086))))

(assert (=> b!585984 (= res!373950 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17577 a!2986) index!984) (select (arr!17577 a!2986) j!136))) (not (= (select (arr!17577 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585985 () Bool)

(assert (=> b!585985 (= e!335084 e!335086)))

(declare-fun res!373946 () Bool)

(assert (=> b!585985 (=> (not res!373946) (not e!335086))))

(declare-fun lt!265983 () SeekEntryResult!6024)

(assert (=> b!585985 (= res!373946 (or (= lt!265983 (MissingZero!6024 i!1108)) (= lt!265983 (MissingVacant!6024 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36613 (_ BitVec 32)) SeekEntryResult!6024)

(assert (=> b!585985 (= lt!265983 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585986 () Bool)

(declare-fun res!373945 () Bool)

(assert (=> b!585986 (=> (not res!373945) (not e!335084))))

(declare-fun arrayContainsKey!0 (array!36613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585986 (= res!373945 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585987 () Bool)

(declare-fun res!373953 () Bool)

(assert (=> b!585987 (=> (not res!373953) (not e!335086))))

(assert (=> b!585987 (= res!373953 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17577 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17577 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585988 () Bool)

(declare-fun res!373951 () Bool)

(assert (=> b!585988 (=> (not res!373951) (not e!335086))))

(assert (=> b!585988 (= res!373951 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17577 a!2986) j!136) a!2986 mask!3053) (Found!6024 j!136)))))

(declare-fun b!585989 () Bool)

(declare-fun res!373949 () Bool)

(assert (=> b!585989 (=> (not res!373949) (not e!335084))))

(assert (=> b!585989 (= res!373949 (validKeyInArray!0 (select (arr!17577 a!2986) j!136)))))

(assert (= (and start!53758 res!373947) b!585982))

(assert (= (and b!585982 res!373952) b!585989))

(assert (= (and b!585989 res!373949) b!585983))

(assert (= (and b!585983 res!373955) b!585986))

(assert (= (and b!585986 res!373945) b!585985))

(assert (= (and b!585985 res!373946) b!585979))

(assert (= (and b!585979 res!373954) b!585980))

(assert (= (and b!585980 res!373948) b!585987))

(assert (= (and b!585987 res!373953) b!585988))

(assert (= (and b!585988 res!373951) b!585984))

(assert (= (and b!585984 res!373950) b!585981))

(declare-fun m!564349 () Bool)

(assert (=> b!585979 m!564349))

(declare-fun m!564351 () Bool)

(assert (=> b!585988 m!564351))

(assert (=> b!585988 m!564351))

(declare-fun m!564353 () Bool)

(assert (=> b!585988 m!564353))

(declare-fun m!564355 () Bool)

(assert (=> b!585980 m!564355))

(declare-fun m!564357 () Bool)

(assert (=> b!585981 m!564357))

(declare-fun m!564359 () Bool)

(assert (=> b!585981 m!564359))

(assert (=> b!585981 m!564351))

(declare-fun m!564361 () Bool)

(assert (=> b!585981 m!564361))

(declare-fun m!564363 () Bool)

(assert (=> b!585981 m!564363))

(assert (=> b!585981 m!564359))

(declare-fun m!564365 () Bool)

(assert (=> b!585981 m!564365))

(assert (=> b!585981 m!564351))

(declare-fun m!564367 () Bool)

(assert (=> b!585981 m!564367))

(declare-fun m!564369 () Bool)

(assert (=> b!585986 m!564369))

(declare-fun m!564371 () Bool)

(assert (=> b!585985 m!564371))

(declare-fun m!564373 () Bool)

(assert (=> b!585984 m!564373))

(assert (=> b!585984 m!564351))

(declare-fun m!564375 () Bool)

(assert (=> b!585987 m!564375))

(assert (=> b!585987 m!564361))

(declare-fun m!564377 () Bool)

(assert (=> b!585987 m!564377))

(declare-fun m!564379 () Bool)

(assert (=> b!585983 m!564379))

(assert (=> b!585989 m!564351))

(assert (=> b!585989 m!564351))

(declare-fun m!564381 () Bool)

(assert (=> b!585989 m!564381))

(declare-fun m!564383 () Bool)

(assert (=> start!53758 m!564383))

(declare-fun m!564385 () Bool)

(assert (=> start!53758 m!564385))

(push 1)

