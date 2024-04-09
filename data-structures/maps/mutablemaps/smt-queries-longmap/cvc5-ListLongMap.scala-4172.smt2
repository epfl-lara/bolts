; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56838 () Bool)

(assert start!56838)

(declare-fun b!629257 () Bool)

(declare-fun res!406834 () Bool)

(declare-fun e!359875 () Bool)

(assert (=> b!629257 (=> (not res!406834) (not e!359875))))

(declare-datatypes ((array!37989 0))(
  ( (array!37990 (arr!18228 (Array (_ BitVec 32) (_ BitVec 64))) (size!18592 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37989)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629257 (= res!406834 (validKeyInArray!0 (select (arr!18228 a!2986) j!136)))))

(declare-fun b!629258 () Bool)

(declare-fun e!359873 () Bool)

(assert (=> b!629258 (= e!359873 (not true))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!290704 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6675 0))(
  ( (MissingZero!6675 (index!28983 (_ BitVec 32))) (Found!6675 (index!28984 (_ BitVec 32))) (Intermediate!6675 (undefined!7487 Bool) (index!28985 (_ BitVec 32)) (x!57748 (_ BitVec 32))) (Undefined!6675) (MissingVacant!6675 (index!28986 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37989 (_ BitVec 32)) SeekEntryResult!6675)

(assert (=> b!629258 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290704 vacantSpotIndex!68 (select (arr!18228 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290704 vacantSpotIndex!68 (select (store (arr!18228 a!2986) i!1108 k!1786) j!136) (array!37990 (store (arr!18228 a!2986) i!1108 k!1786) (size!18592 a!2986)) mask!3053))))

(declare-datatypes ((Unit!21094 0))(
  ( (Unit!21095) )
))
(declare-fun lt!290705 () Unit!21094)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37989 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21094)

(assert (=> b!629258 (= lt!290705 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290704 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629258 (= lt!290704 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629259 () Bool)

(declare-fun res!406835 () Bool)

(assert (=> b!629259 (=> (not res!406835) (not e!359875))))

(declare-fun arrayContainsKey!0 (array!37989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629259 (= res!406835 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629260 () Bool)

(declare-fun res!406837 () Bool)

(assert (=> b!629260 (=> (not res!406837) (not e!359873))))

(declare-datatypes ((List!12322 0))(
  ( (Nil!12319) (Cons!12318 (h!13363 (_ BitVec 64)) (t!18558 List!12322)) )
))
(declare-fun arrayNoDuplicates!0 (array!37989 (_ BitVec 32) List!12322) Bool)

(assert (=> b!629260 (= res!406837 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12319))))

(declare-fun b!629261 () Bool)

(declare-fun res!406841 () Bool)

(assert (=> b!629261 (=> (not res!406841) (not e!359873))))

(assert (=> b!629261 (= res!406841 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18228 a!2986) index!984) (select (arr!18228 a!2986) j!136))) (not (= (select (arr!18228 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!629262 () Bool)

(assert (=> b!629262 (= e!359875 e!359873)))

(declare-fun res!406838 () Bool)

(assert (=> b!629262 (=> (not res!406838) (not e!359873))))

(declare-fun lt!290706 () SeekEntryResult!6675)

(assert (=> b!629262 (= res!406838 (or (= lt!290706 (MissingZero!6675 i!1108)) (= lt!290706 (MissingVacant!6675 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37989 (_ BitVec 32)) SeekEntryResult!6675)

(assert (=> b!629262 (= lt!290706 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629263 () Bool)

(declare-fun res!406840 () Bool)

(assert (=> b!629263 (=> (not res!406840) (not e!359875))))

(assert (=> b!629263 (= res!406840 (validKeyInArray!0 k!1786))))

(declare-fun b!629265 () Bool)

(declare-fun res!406832 () Bool)

(assert (=> b!629265 (=> (not res!406832) (not e!359873))))

(assert (=> b!629265 (= res!406832 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18228 a!2986) j!136) a!2986 mask!3053) (Found!6675 j!136)))))

(declare-fun b!629266 () Bool)

(declare-fun res!406831 () Bool)

(assert (=> b!629266 (=> (not res!406831) (not e!359875))))

(assert (=> b!629266 (= res!406831 (and (= (size!18592 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18592 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18592 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629267 () Bool)

(declare-fun res!406833 () Bool)

(assert (=> b!629267 (=> (not res!406833) (not e!359873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37989 (_ BitVec 32)) Bool)

(assert (=> b!629267 (= res!406833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629264 () Bool)

(declare-fun res!406836 () Bool)

(assert (=> b!629264 (=> (not res!406836) (not e!359873))))

(assert (=> b!629264 (= res!406836 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18228 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18228 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!406839 () Bool)

(assert (=> start!56838 (=> (not res!406839) (not e!359875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56838 (= res!406839 (validMask!0 mask!3053))))

(assert (=> start!56838 e!359875))

(assert (=> start!56838 true))

(declare-fun array_inv!14002 (array!37989) Bool)

(assert (=> start!56838 (array_inv!14002 a!2986)))

(assert (= (and start!56838 res!406839) b!629266))

(assert (= (and b!629266 res!406831) b!629257))

(assert (= (and b!629257 res!406834) b!629263))

(assert (= (and b!629263 res!406840) b!629259))

(assert (= (and b!629259 res!406835) b!629262))

(assert (= (and b!629262 res!406838) b!629267))

(assert (= (and b!629267 res!406833) b!629260))

(assert (= (and b!629260 res!406837) b!629264))

(assert (= (and b!629264 res!406836) b!629265))

(assert (= (and b!629265 res!406832) b!629261))

(assert (= (and b!629261 res!406841) b!629258))

(declare-fun m!604329 () Bool)

(assert (=> b!629262 m!604329))

(declare-fun m!604331 () Bool)

(assert (=> b!629267 m!604331))

(declare-fun m!604333 () Bool)

(assert (=> b!629264 m!604333))

(declare-fun m!604335 () Bool)

(assert (=> b!629264 m!604335))

(declare-fun m!604337 () Bool)

(assert (=> b!629264 m!604337))

(declare-fun m!604339 () Bool)

(assert (=> start!56838 m!604339))

(declare-fun m!604341 () Bool)

(assert (=> start!56838 m!604341))

(declare-fun m!604343 () Bool)

(assert (=> b!629263 m!604343))

(declare-fun m!604345 () Bool)

(assert (=> b!629265 m!604345))

(assert (=> b!629265 m!604345))

(declare-fun m!604347 () Bool)

(assert (=> b!629265 m!604347))

(declare-fun m!604349 () Bool)

(assert (=> b!629258 m!604349))

(declare-fun m!604351 () Bool)

(assert (=> b!629258 m!604351))

(assert (=> b!629258 m!604345))

(assert (=> b!629258 m!604345))

(declare-fun m!604353 () Bool)

(assert (=> b!629258 m!604353))

(assert (=> b!629258 m!604335))

(assert (=> b!629258 m!604351))

(declare-fun m!604355 () Bool)

(assert (=> b!629258 m!604355))

(declare-fun m!604357 () Bool)

(assert (=> b!629258 m!604357))

(assert (=> b!629257 m!604345))

(assert (=> b!629257 m!604345))

(declare-fun m!604359 () Bool)

(assert (=> b!629257 m!604359))

(declare-fun m!604361 () Bool)

(assert (=> b!629261 m!604361))

(assert (=> b!629261 m!604345))

(declare-fun m!604363 () Bool)

(assert (=> b!629259 m!604363))

(declare-fun m!604365 () Bool)

(assert (=> b!629260 m!604365))

(push 1)

