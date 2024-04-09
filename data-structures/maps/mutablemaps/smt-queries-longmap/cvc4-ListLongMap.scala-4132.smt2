; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56398 () Bool)

(assert start!56398)

(declare-fun b!624762 () Bool)

(declare-fun res!402954 () Bool)

(declare-fun e!358208 () Bool)

(assert (=> b!624762 (=> (not res!402954) (not e!358208))))

(declare-datatypes ((array!37741 0))(
  ( (array!37742 (arr!18110 (Array (_ BitVec 32) (_ BitVec 64))) (size!18474 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37741)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37741 (_ BitVec 32)) Bool)

(assert (=> b!624762 (= res!402954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624763 () Bool)

(assert (=> b!624763 (= e!358208 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6557 0))(
  ( (MissingZero!6557 (index!28511 (_ BitVec 32))) (Found!6557 (index!28512 (_ BitVec 32))) (Intermediate!6557 (undefined!7369 Bool) (index!28513 (_ BitVec 32)) (x!57292 (_ BitVec 32))) (Undefined!6557) (MissingVacant!6557 (index!28514 (_ BitVec 32))) )
))
(declare-fun lt!289676 () SeekEntryResult!6557)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37741 (_ BitVec 32)) SeekEntryResult!6557)

(assert (=> b!624763 (= lt!289676 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18110 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624764 () Bool)

(declare-fun res!402953 () Bool)

(declare-fun e!358209 () Bool)

(assert (=> b!624764 (=> (not res!402953) (not e!358209))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624764 (= res!402953 (and (= (size!18474 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18474 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18474 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624765 () Bool)

(declare-fun res!402955 () Bool)

(assert (=> b!624765 (=> (not res!402955) (not e!358209))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624765 (= res!402955 (validKeyInArray!0 k!1786))))

(declare-fun b!624767 () Bool)

(declare-fun res!402951 () Bool)

(assert (=> b!624767 (=> (not res!402951) (not e!358209))))

(assert (=> b!624767 (= res!402951 (validKeyInArray!0 (select (arr!18110 a!2986) j!136)))))

(declare-fun b!624768 () Bool)

(declare-fun res!402948 () Bool)

(assert (=> b!624768 (=> (not res!402948) (not e!358209))))

(declare-fun arrayContainsKey!0 (array!37741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624768 (= res!402948 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624769 () Bool)

(assert (=> b!624769 (= e!358209 e!358208)))

(declare-fun res!402952 () Bool)

(assert (=> b!624769 (=> (not res!402952) (not e!358208))))

(declare-fun lt!289677 () SeekEntryResult!6557)

(assert (=> b!624769 (= res!402952 (or (= lt!289677 (MissingZero!6557 i!1108)) (= lt!289677 (MissingVacant!6557 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37741 (_ BitVec 32)) SeekEntryResult!6557)

(assert (=> b!624769 (= lt!289677 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624770 () Bool)

(declare-fun res!402956 () Bool)

(assert (=> b!624770 (=> (not res!402956) (not e!358208))))

(assert (=> b!624770 (= res!402956 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18110 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18110 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!402949 () Bool)

(assert (=> start!56398 (=> (not res!402949) (not e!358209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56398 (= res!402949 (validMask!0 mask!3053))))

(assert (=> start!56398 e!358209))

(assert (=> start!56398 true))

(declare-fun array_inv!13884 (array!37741) Bool)

(assert (=> start!56398 (array_inv!13884 a!2986)))

(declare-fun b!624766 () Bool)

(declare-fun res!402950 () Bool)

(assert (=> b!624766 (=> (not res!402950) (not e!358208))))

(declare-datatypes ((List!12204 0))(
  ( (Nil!12201) (Cons!12200 (h!13245 (_ BitVec 64)) (t!18440 List!12204)) )
))
(declare-fun arrayNoDuplicates!0 (array!37741 (_ BitVec 32) List!12204) Bool)

(assert (=> b!624766 (= res!402950 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12201))))

(assert (= (and start!56398 res!402949) b!624764))

(assert (= (and b!624764 res!402953) b!624767))

(assert (= (and b!624767 res!402951) b!624765))

(assert (= (and b!624765 res!402955) b!624768))

(assert (= (and b!624768 res!402948) b!624769))

(assert (= (and b!624769 res!402952) b!624762))

(assert (= (and b!624762 res!402954) b!624766))

(assert (= (and b!624766 res!402950) b!624770))

(assert (= (and b!624770 res!402956) b!624763))

(declare-fun m!600409 () Bool)

(assert (=> b!624765 m!600409))

(declare-fun m!600411 () Bool)

(assert (=> b!624767 m!600411))

(assert (=> b!624767 m!600411))

(declare-fun m!600413 () Bool)

(assert (=> b!624767 m!600413))

(declare-fun m!600415 () Bool)

(assert (=> start!56398 m!600415))

(declare-fun m!600417 () Bool)

(assert (=> start!56398 m!600417))

(declare-fun m!600419 () Bool)

(assert (=> b!624766 m!600419))

(declare-fun m!600421 () Bool)

(assert (=> b!624770 m!600421))

(declare-fun m!600423 () Bool)

(assert (=> b!624770 m!600423))

(declare-fun m!600425 () Bool)

(assert (=> b!624770 m!600425))

(declare-fun m!600427 () Bool)

(assert (=> b!624762 m!600427))

(assert (=> b!624763 m!600411))

(assert (=> b!624763 m!600411))

(declare-fun m!600429 () Bool)

(assert (=> b!624763 m!600429))

(declare-fun m!600431 () Bool)

(assert (=> b!624768 m!600431))

(declare-fun m!600433 () Bool)

(assert (=> b!624769 m!600433))

(push 1)

(assert (not b!624767))

(assert (not b!624765))

(assert (not b!624768))

(assert (not b!624766))

(assert (not start!56398))

(assert (not b!624769))

(assert (not b!624763))

(assert (not b!624762))

(check-sat)

