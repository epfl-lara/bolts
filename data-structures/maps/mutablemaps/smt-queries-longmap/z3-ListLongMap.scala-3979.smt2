; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53964 () Bool)

(assert start!53964)

(declare-fun b!588718 () Bool)

(declare-datatypes ((Unit!18332 0))(
  ( (Unit!18333) )
))
(declare-fun e!336153 () Unit!18332)

(declare-fun Unit!18334 () Unit!18332)

(assert (=> b!588718 (= e!336153 Unit!18334)))

(declare-fun res!376462 () Bool)

(declare-fun e!336150 () Bool)

(assert (=> start!53964 (=> (not res!376462) (not e!336150))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53964 (= res!376462 (validMask!0 mask!3053))))

(assert (=> start!53964 e!336150))

(assert (=> start!53964 true))

(declare-datatypes ((array!36762 0))(
  ( (array!36763 (arr!17650 (Array (_ BitVec 32) (_ BitVec 64))) (size!18014 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36762)

(declare-fun array_inv!13424 (array!36762) Bool)

(assert (=> start!53964 (array_inv!13424 a!2986)))

(declare-fun b!588719 () Bool)

(declare-fun e!336152 () Bool)

(assert (=> b!588719 (= e!336150 e!336152)))

(declare-fun res!376466 () Bool)

(assert (=> b!588719 (=> (not res!376466) (not e!336152))))

(declare-datatypes ((SeekEntryResult!6097 0))(
  ( (MissingZero!6097 (index!26618 (_ BitVec 32))) (Found!6097 (index!26619 (_ BitVec 32))) (Intermediate!6097 (undefined!6909 Bool) (index!26620 (_ BitVec 32)) (x!55442 (_ BitVec 32))) (Undefined!6097) (MissingVacant!6097 (index!26621 (_ BitVec 32))) )
))
(declare-fun lt!267007 () SeekEntryResult!6097)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588719 (= res!376466 (or (= lt!267007 (MissingZero!6097 i!1108)) (= lt!267007 (MissingVacant!6097 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36762 (_ BitVec 32)) SeekEntryResult!6097)

(assert (=> b!588719 (= lt!267007 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588720 () Bool)

(declare-fun res!376464 () Bool)

(assert (=> b!588720 (=> (not res!376464) (not e!336152))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588720 (= res!376464 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17650 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588721 () Bool)

(declare-fun res!376460 () Bool)

(assert (=> b!588721 (=> (not res!376460) (not e!336150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588721 (= res!376460 (validKeyInArray!0 k0!1786))))

(declare-fun b!588722 () Bool)

(declare-fun res!376465 () Bool)

(assert (=> b!588722 (=> (not res!376465) (not e!336152))))

(declare-datatypes ((List!11744 0))(
  ( (Nil!11741) (Cons!11740 (h!12785 (_ BitVec 64)) (t!17980 List!11744)) )
))
(declare-fun arrayNoDuplicates!0 (array!36762 (_ BitVec 32) List!11744) Bool)

(assert (=> b!588722 (= res!376465 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11741))))

(declare-fun b!588723 () Bool)

(declare-fun res!376458 () Bool)

(assert (=> b!588723 (=> (not res!376458) (not e!336150))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!588723 (= res!376458 (and (= (size!18014 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18014 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18014 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588724 () Bool)

(declare-fun Unit!18335 () Unit!18332)

(assert (=> b!588724 (= e!336153 Unit!18335)))

(assert (=> b!588724 false))

(declare-fun b!588725 () Bool)

(declare-fun e!336148 () Bool)

(declare-fun e!336154 () Bool)

(assert (=> b!588725 (= e!336148 e!336154)))

(declare-fun res!376468 () Bool)

(assert (=> b!588725 (=> (not res!376468) (not e!336154))))

(declare-fun lt!267004 () SeekEntryResult!6097)

(assert (=> b!588725 (= res!376468 (and (= lt!267004 (Found!6097 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17650 a!2986) index!984) (select (arr!17650 a!2986) j!136))) (not (= (select (arr!17650 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36762 (_ BitVec 32)) SeekEntryResult!6097)

(assert (=> b!588725 (= lt!267004 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17650 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588726 () Bool)

(declare-fun res!376467 () Bool)

(assert (=> b!588726 (=> (not res!376467) (not e!336150))))

(declare-fun arrayContainsKey!0 (array!36762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588726 (= res!376467 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588727 () Bool)

(declare-fun res!376469 () Bool)

(assert (=> b!588727 (=> (not res!376469) (not e!336150))))

(assert (=> b!588727 (= res!376469 (validKeyInArray!0 (select (arr!17650 a!2986) j!136)))))

(declare-fun b!588728 () Bool)

(assert (=> b!588728 (= e!336154 (not true))))

(declare-fun lt!267005 () Unit!18332)

(assert (=> b!588728 (= lt!267005 e!336153)))

(declare-fun c!66497 () Bool)

(declare-fun lt!267002 () array!36762)

(declare-fun lt!267003 () (_ BitVec 64))

(assert (=> b!588728 (= c!66497 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267003 lt!267002 mask!3053) Undefined!6097))))

(declare-fun e!336149 () Bool)

(assert (=> b!588728 e!336149))

(declare-fun res!376463 () Bool)

(assert (=> b!588728 (=> (not res!376463) (not e!336149))))

(declare-fun lt!267008 () (_ BitVec 32))

(declare-fun lt!267006 () SeekEntryResult!6097)

(assert (=> b!588728 (= res!376463 (= lt!267006 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267008 vacantSpotIndex!68 lt!267003 lt!267002 mask!3053)))))

(assert (=> b!588728 (= lt!267006 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267008 vacantSpotIndex!68 (select (arr!17650 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588728 (= lt!267003 (select (store (arr!17650 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267001 () Unit!18332)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36762 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18332)

(assert (=> b!588728 (= lt!267001 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267008 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588728 (= lt!267008 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588729 () Bool)

(assert (=> b!588729 (= e!336149 (= lt!267004 lt!267006))))

(declare-fun b!588730 () Bool)

(declare-fun res!376461 () Bool)

(assert (=> b!588730 (=> (not res!376461) (not e!336152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36762 (_ BitVec 32)) Bool)

(assert (=> b!588730 (= res!376461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588731 () Bool)

(assert (=> b!588731 (= e!336152 e!336148)))

(declare-fun res!376459 () Bool)

(assert (=> b!588731 (=> (not res!376459) (not e!336148))))

(assert (=> b!588731 (= res!376459 (= (select (store (arr!17650 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!588731 (= lt!267002 (array!36763 (store (arr!17650 a!2986) i!1108 k0!1786) (size!18014 a!2986)))))

(assert (= (and start!53964 res!376462) b!588723))

(assert (= (and b!588723 res!376458) b!588727))

(assert (= (and b!588727 res!376469) b!588721))

(assert (= (and b!588721 res!376460) b!588726))

(assert (= (and b!588726 res!376467) b!588719))

(assert (= (and b!588719 res!376466) b!588730))

(assert (= (and b!588730 res!376461) b!588722))

(assert (= (and b!588722 res!376465) b!588720))

(assert (= (and b!588720 res!376464) b!588731))

(assert (= (and b!588731 res!376459) b!588725))

(assert (= (and b!588725 res!376468) b!588728))

(assert (= (and b!588728 res!376463) b!588729))

(assert (= (and b!588728 c!66497) b!588724))

(assert (= (and b!588728 (not c!66497)) b!588718))

(declare-fun m!567323 () Bool)

(assert (=> b!588721 m!567323))

(declare-fun m!567325 () Bool)

(assert (=> b!588730 m!567325))

(declare-fun m!567327 () Bool)

(assert (=> b!588726 m!567327))

(declare-fun m!567329 () Bool)

(assert (=> b!588725 m!567329))

(declare-fun m!567331 () Bool)

(assert (=> b!588725 m!567331))

(assert (=> b!588725 m!567331))

(declare-fun m!567333 () Bool)

(assert (=> b!588725 m!567333))

(declare-fun m!567335 () Bool)

(assert (=> start!53964 m!567335))

(declare-fun m!567337 () Bool)

(assert (=> start!53964 m!567337))

(declare-fun m!567339 () Bool)

(assert (=> b!588722 m!567339))

(declare-fun m!567341 () Bool)

(assert (=> b!588719 m!567341))

(assert (=> b!588727 m!567331))

(assert (=> b!588727 m!567331))

(declare-fun m!567343 () Bool)

(assert (=> b!588727 m!567343))

(declare-fun m!567345 () Bool)

(assert (=> b!588728 m!567345))

(declare-fun m!567347 () Bool)

(assert (=> b!588728 m!567347))

(assert (=> b!588728 m!567331))

(assert (=> b!588728 m!567331))

(declare-fun m!567349 () Bool)

(assert (=> b!588728 m!567349))

(declare-fun m!567351 () Bool)

(assert (=> b!588728 m!567351))

(declare-fun m!567353 () Bool)

(assert (=> b!588728 m!567353))

(declare-fun m!567355 () Bool)

(assert (=> b!588728 m!567355))

(declare-fun m!567357 () Bool)

(assert (=> b!588728 m!567357))

(assert (=> b!588731 m!567357))

(declare-fun m!567359 () Bool)

(assert (=> b!588731 m!567359))

(declare-fun m!567361 () Bool)

(assert (=> b!588720 m!567361))

(check-sat (not b!588727) (not b!588721) (not b!588728) (not b!588722) (not b!588725) (not b!588726) (not b!588719) (not start!53964) (not b!588730))
(check-sat)
