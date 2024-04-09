; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56836 () Bool)

(assert start!56836)

(declare-fun b!629224 () Bool)

(declare-fun res!406803 () Bool)

(declare-fun e!359864 () Bool)

(assert (=> b!629224 (=> (not res!406803) (not e!359864))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37987 0))(
  ( (array!37988 (arr!18227 (Array (_ BitVec 32) (_ BitVec 64))) (size!18591 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37987)

(declare-datatypes ((SeekEntryResult!6674 0))(
  ( (MissingZero!6674 (index!28979 (_ BitVec 32))) (Found!6674 (index!28980 (_ BitVec 32))) (Intermediate!6674 (undefined!7486 Bool) (index!28981 (_ BitVec 32)) (x!57739 (_ BitVec 32))) (Undefined!6674) (MissingVacant!6674 (index!28982 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37987 (_ BitVec 32)) SeekEntryResult!6674)

(assert (=> b!629224 (= res!406803 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18227 a!2986) j!136) a!2986 mask!3053) (Found!6674 j!136)))))

(declare-fun b!629225 () Bool)

(declare-fun res!406799 () Bool)

(declare-fun e!359866 () Bool)

(assert (=> b!629225 (=> (not res!406799) (not e!359866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629225 (= res!406799 (validKeyInArray!0 (select (arr!18227 a!2986) j!136)))))

(declare-fun b!629226 () Bool)

(declare-fun res!406800 () Bool)

(assert (=> b!629226 (=> (not res!406800) (not e!359866))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!629226 (= res!406800 (validKeyInArray!0 k!1786))))

(declare-fun b!629227 () Bool)

(declare-fun res!406802 () Bool)

(assert (=> b!629227 (=> (not res!406802) (not e!359864))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629227 (= res!406802 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18227 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18227 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629228 () Bool)

(declare-fun res!406804 () Bool)

(assert (=> b!629228 (=> (not res!406804) (not e!359866))))

(assert (=> b!629228 (= res!406804 (and (= (size!18591 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18591 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18591 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629229 () Bool)

(declare-fun res!406808 () Bool)

(assert (=> b!629229 (=> (not res!406808) (not e!359864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37987 (_ BitVec 32)) Bool)

(assert (=> b!629229 (= res!406808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629230 () Bool)

(declare-fun res!406801 () Bool)

(assert (=> b!629230 (=> (not res!406801) (not e!359866))))

(declare-fun arrayContainsKey!0 (array!37987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629230 (= res!406801 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629231 () Bool)

(assert (=> b!629231 (= e!359866 e!359864)))

(declare-fun res!406806 () Bool)

(assert (=> b!629231 (=> (not res!406806) (not e!359864))))

(declare-fun lt!290695 () SeekEntryResult!6674)

(assert (=> b!629231 (= res!406806 (or (= lt!290695 (MissingZero!6674 i!1108)) (= lt!290695 (MissingVacant!6674 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37987 (_ BitVec 32)) SeekEntryResult!6674)

(assert (=> b!629231 (= lt!290695 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629232 () Bool)

(declare-fun res!406798 () Bool)

(assert (=> b!629232 (=> (not res!406798) (not e!359864))))

(declare-datatypes ((List!12321 0))(
  ( (Nil!12318) (Cons!12317 (h!13362 (_ BitVec 64)) (t!18557 List!12321)) )
))
(declare-fun arrayNoDuplicates!0 (array!37987 (_ BitVec 32) List!12321) Bool)

(assert (=> b!629232 (= res!406798 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12318))))

(declare-fun res!406807 () Bool)

(assert (=> start!56836 (=> (not res!406807) (not e!359866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56836 (= res!406807 (validMask!0 mask!3053))))

(assert (=> start!56836 e!359866))

(assert (=> start!56836 true))

(declare-fun array_inv!14001 (array!37987) Bool)

(assert (=> start!56836 (array_inv!14001 a!2986)))

(declare-fun b!629233 () Bool)

(declare-fun res!406805 () Bool)

(assert (=> b!629233 (=> (not res!406805) (not e!359864))))

(assert (=> b!629233 (= res!406805 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18227 a!2986) index!984) (select (arr!18227 a!2986) j!136))) (not (= (select (arr!18227 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!629234 () Bool)

(assert (=> b!629234 (= e!359864 (not true))))

(declare-fun lt!290697 () (_ BitVec 32))

(assert (=> b!629234 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290697 vacantSpotIndex!68 (select (arr!18227 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290697 vacantSpotIndex!68 (select (store (arr!18227 a!2986) i!1108 k!1786) j!136) (array!37988 (store (arr!18227 a!2986) i!1108 k!1786) (size!18591 a!2986)) mask!3053))))

(declare-datatypes ((Unit!21092 0))(
  ( (Unit!21093) )
))
(declare-fun lt!290696 () Unit!21092)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37987 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21092)

(assert (=> b!629234 (= lt!290696 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290697 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629234 (= lt!290697 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56836 res!406807) b!629228))

(assert (= (and b!629228 res!406804) b!629225))

(assert (= (and b!629225 res!406799) b!629226))

(assert (= (and b!629226 res!406800) b!629230))

(assert (= (and b!629230 res!406801) b!629231))

(assert (= (and b!629231 res!406806) b!629229))

(assert (= (and b!629229 res!406808) b!629232))

(assert (= (and b!629232 res!406798) b!629227))

(assert (= (and b!629227 res!406802) b!629224))

(assert (= (and b!629224 res!406803) b!629233))

(assert (= (and b!629233 res!406805) b!629234))

(declare-fun m!604291 () Bool)

(assert (=> b!629233 m!604291))

(declare-fun m!604293 () Bool)

(assert (=> b!629233 m!604293))

(assert (=> b!629224 m!604293))

(assert (=> b!629224 m!604293))

(declare-fun m!604295 () Bool)

(assert (=> b!629224 m!604295))

(declare-fun m!604297 () Bool)

(assert (=> b!629231 m!604297))

(declare-fun m!604299 () Bool)

(assert (=> b!629229 m!604299))

(declare-fun m!604301 () Bool)

(assert (=> b!629230 m!604301))

(declare-fun m!604303 () Bool)

(assert (=> b!629232 m!604303))

(assert (=> b!629225 m!604293))

(assert (=> b!629225 m!604293))

(declare-fun m!604305 () Bool)

(assert (=> b!629225 m!604305))

(declare-fun m!604307 () Bool)

(assert (=> b!629226 m!604307))

(declare-fun m!604309 () Bool)

(assert (=> b!629234 m!604309))

(declare-fun m!604311 () Bool)

(assert (=> b!629234 m!604311))

(assert (=> b!629234 m!604311))

(declare-fun m!604313 () Bool)

(assert (=> b!629234 m!604313))

(declare-fun m!604315 () Bool)

(assert (=> b!629234 m!604315))

(declare-fun m!604317 () Bool)

(assert (=> b!629234 m!604317))

(assert (=> b!629234 m!604293))

(assert (=> b!629234 m!604293))

(declare-fun m!604319 () Bool)

(assert (=> b!629234 m!604319))

(declare-fun m!604321 () Bool)

(assert (=> start!56836 m!604321))

(declare-fun m!604323 () Bool)

(assert (=> start!56836 m!604323))

(declare-fun m!604325 () Bool)

(assert (=> b!629227 m!604325))

(assert (=> b!629227 m!604315))

(declare-fun m!604327 () Bool)

(assert (=> b!629227 m!604327))

(push 1)

(assert (not b!629224))

