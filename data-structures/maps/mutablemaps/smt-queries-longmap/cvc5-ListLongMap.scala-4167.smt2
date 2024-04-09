; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56754 () Bool)

(assert start!56754)

(declare-fun b!628510 () Bool)

(declare-fun res!406247 () Bool)

(declare-fun e!359559 () Bool)

(assert (=> b!628510 (=> (not res!406247) (not e!359559))))

(declare-datatypes ((array!37956 0))(
  ( (array!37957 (arr!18213 (Array (_ BitVec 32) (_ BitVec 64))) (size!18577 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37956)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37956 (_ BitVec 32)) Bool)

(assert (=> b!628510 (= res!406247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628511 () Bool)

(assert (=> b!628511 (= e!359559 false)))

(declare-fun lt!290499 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628511 (= lt!290499 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628512 () Bool)

(declare-fun res!406255 () Bool)

(declare-fun e!359560 () Bool)

(assert (=> b!628512 (=> (not res!406255) (not e!359560))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628512 (= res!406255 (validKeyInArray!0 k!1786))))

(declare-fun b!628513 () Bool)

(declare-fun res!406253 () Bool)

(assert (=> b!628513 (=> (not res!406253) (not e!359559))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!628513 (= res!406253 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18213 a!2986) index!984) (select (arr!18213 a!2986) j!136))) (not (= (select (arr!18213 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628514 () Bool)

(declare-fun res!406256 () Bool)

(assert (=> b!628514 (=> (not res!406256) (not e!359559))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!628514 (= res!406256 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18213 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18213 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628515 () Bool)

(declare-fun res!406246 () Bool)

(assert (=> b!628515 (=> (not res!406246) (not e!359560))))

(declare-fun arrayContainsKey!0 (array!37956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628515 (= res!406246 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628517 () Bool)

(declare-fun res!406250 () Bool)

(assert (=> b!628517 (=> (not res!406250) (not e!359559))))

(declare-datatypes ((SeekEntryResult!6660 0))(
  ( (MissingZero!6660 (index!28923 (_ BitVec 32))) (Found!6660 (index!28924 (_ BitVec 32))) (Intermediate!6660 (undefined!7472 Bool) (index!28925 (_ BitVec 32)) (x!57687 (_ BitVec 32))) (Undefined!6660) (MissingVacant!6660 (index!28926 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37956 (_ BitVec 32)) SeekEntryResult!6660)

(assert (=> b!628517 (= res!406250 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18213 a!2986) j!136) a!2986 mask!3053) (Found!6660 j!136)))))

(declare-fun b!628518 () Bool)

(declare-fun res!406251 () Bool)

(assert (=> b!628518 (=> (not res!406251) (not e!359560))))

(assert (=> b!628518 (= res!406251 (and (= (size!18577 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18577 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18577 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628519 () Bool)

(declare-fun res!406254 () Bool)

(assert (=> b!628519 (=> (not res!406254) (not e!359559))))

(declare-datatypes ((List!12307 0))(
  ( (Nil!12304) (Cons!12303 (h!13348 (_ BitVec 64)) (t!18543 List!12307)) )
))
(declare-fun arrayNoDuplicates!0 (array!37956 (_ BitVec 32) List!12307) Bool)

(assert (=> b!628519 (= res!406254 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12304))))

(declare-fun b!628520 () Bool)

(declare-fun res!406249 () Bool)

(assert (=> b!628520 (=> (not res!406249) (not e!359560))))

(assert (=> b!628520 (= res!406249 (validKeyInArray!0 (select (arr!18213 a!2986) j!136)))))

(declare-fun b!628516 () Bool)

(assert (=> b!628516 (= e!359560 e!359559)))

(declare-fun res!406252 () Bool)

(assert (=> b!628516 (=> (not res!406252) (not e!359559))))

(declare-fun lt!290498 () SeekEntryResult!6660)

(assert (=> b!628516 (= res!406252 (or (= lt!290498 (MissingZero!6660 i!1108)) (= lt!290498 (MissingVacant!6660 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37956 (_ BitVec 32)) SeekEntryResult!6660)

(assert (=> b!628516 (= lt!290498 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!406248 () Bool)

(assert (=> start!56754 (=> (not res!406248) (not e!359560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56754 (= res!406248 (validMask!0 mask!3053))))

(assert (=> start!56754 e!359560))

(assert (=> start!56754 true))

(declare-fun array_inv!13987 (array!37956) Bool)

(assert (=> start!56754 (array_inv!13987 a!2986)))

(assert (= (and start!56754 res!406248) b!628518))

(assert (= (and b!628518 res!406251) b!628520))

(assert (= (and b!628520 res!406249) b!628512))

(assert (= (and b!628512 res!406255) b!628515))

(assert (= (and b!628515 res!406246) b!628516))

(assert (= (and b!628516 res!406252) b!628510))

(assert (= (and b!628510 res!406247) b!628519))

(assert (= (and b!628519 res!406254) b!628514))

(assert (= (and b!628514 res!406256) b!628517))

(assert (= (and b!628517 res!406250) b!628513))

(assert (= (and b!628513 res!406253) b!628511))

(declare-fun m!603693 () Bool)

(assert (=> b!628511 m!603693))

(declare-fun m!603695 () Bool)

(assert (=> b!628510 m!603695))

(declare-fun m!603697 () Bool)

(assert (=> b!628512 m!603697))

(declare-fun m!603699 () Bool)

(assert (=> b!628519 m!603699))

(declare-fun m!603701 () Bool)

(assert (=> b!628516 m!603701))

(declare-fun m!603703 () Bool)

(assert (=> start!56754 m!603703))

(declare-fun m!603705 () Bool)

(assert (=> start!56754 m!603705))

(declare-fun m!603707 () Bool)

(assert (=> b!628514 m!603707))

(declare-fun m!603709 () Bool)

(assert (=> b!628514 m!603709))

(declare-fun m!603711 () Bool)

(assert (=> b!628514 m!603711))

(declare-fun m!603713 () Bool)

(assert (=> b!628517 m!603713))

(assert (=> b!628517 m!603713))

(declare-fun m!603715 () Bool)

(assert (=> b!628517 m!603715))

(assert (=> b!628520 m!603713))

(assert (=> b!628520 m!603713))

(declare-fun m!603717 () Bool)

(assert (=> b!628520 m!603717))

(declare-fun m!603719 () Bool)

(assert (=> b!628515 m!603719))

(declare-fun m!603721 () Bool)

(assert (=> b!628513 m!603721))

(assert (=> b!628513 m!603713))

(push 1)

