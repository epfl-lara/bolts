; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53908 () Bool)

(assert start!53908)

(declare-fun res!375502 () Bool)

(declare-fun e!335674 () Bool)

(assert (=> start!53908 (=> (not res!375502) (not e!335674))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53908 (= res!375502 (validMask!0 mask!3053))))

(assert (=> start!53908 e!335674))

(assert (=> start!53908 true))

(declare-datatypes ((array!36706 0))(
  ( (array!36707 (arr!17622 (Array (_ BitVec 32) (_ BitVec 64))) (size!17986 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36706)

(declare-fun array_inv!13396 (array!36706) Bool)

(assert (=> start!53908 (array_inv!13396 a!2986)))

(declare-fun b!587716 () Bool)

(declare-fun res!375503 () Bool)

(assert (=> b!587716 (=> (not res!375503) (not e!335674))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587716 (= res!375503 (validKeyInArray!0 (select (arr!17622 a!2986) j!136)))))

(declare-fun b!587717 () Bool)

(declare-fun e!335673 () Bool)

(declare-datatypes ((SeekEntryResult!6069 0))(
  ( (MissingZero!6069 (index!26506 (_ BitVec 32))) (Found!6069 (index!26507 (_ BitVec 32))) (Intermediate!6069 (undefined!6881 Bool) (index!26508 (_ BitVec 32)) (x!55342 (_ BitVec 32))) (Undefined!6069) (MissingVacant!6069 (index!26509 (_ BitVec 32))) )
))
(declare-fun lt!266516 () SeekEntryResult!6069)

(declare-fun lt!266513 () SeekEntryResult!6069)

(assert (=> b!587717 (= e!335673 (= lt!266516 lt!266513))))

(declare-fun b!587718 () Bool)

(declare-fun res!375511 () Bool)

(declare-fun e!335676 () Bool)

(assert (=> b!587718 (=> (not res!375511) (not e!335676))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587718 (= res!375511 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17622 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17622 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587719 () Bool)

(declare-fun res!375508 () Bool)

(assert (=> b!587719 (=> (not res!375508) (not e!335676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36706 (_ BitVec 32)) Bool)

(assert (=> b!587719 (= res!375508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587720 () Bool)

(declare-fun res!375509 () Bool)

(assert (=> b!587720 (=> (not res!375509) (not e!335674))))

(declare-fun arrayContainsKey!0 (array!36706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587720 (= res!375509 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587721 () Bool)

(declare-fun res!375504 () Bool)

(assert (=> b!587721 (=> (not res!375504) (not e!335674))))

(assert (=> b!587721 (= res!375504 (and (= (size!17986 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17986 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17986 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587722 () Bool)

(declare-fun res!375507 () Bool)

(assert (=> b!587722 (=> (not res!375507) (not e!335674))))

(assert (=> b!587722 (= res!375507 (validKeyInArray!0 k!1786))))

(declare-fun b!587723 () Bool)

(declare-fun e!335677 () Bool)

(assert (=> b!587723 (= e!335676 e!335677)))

(declare-fun res!375512 () Bool)

(assert (=> b!587723 (=> (not res!375512) (not e!335677))))

(assert (=> b!587723 (= res!375512 (and (= lt!266516 (Found!6069 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17622 a!2986) index!984) (select (arr!17622 a!2986) j!136))) (not (= (select (arr!17622 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36706 (_ BitVec 32)) SeekEntryResult!6069)

(assert (=> b!587723 (= lt!266516 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17622 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587724 () Bool)

(declare-fun res!375506 () Bool)

(assert (=> b!587724 (=> (not res!375506) (not e!335676))))

(declare-datatypes ((List!11716 0))(
  ( (Nil!11713) (Cons!11712 (h!12757 (_ BitVec 64)) (t!17952 List!11716)) )
))
(declare-fun arrayNoDuplicates!0 (array!36706 (_ BitVec 32) List!11716) Bool)

(assert (=> b!587724 (= res!375506 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11713))))

(declare-fun b!587725 () Bool)

(assert (=> b!587725 (= e!335677 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(assert (=> b!587725 e!335673))

(declare-fun res!375505 () Bool)

(assert (=> b!587725 (=> (not res!375505) (not e!335673))))

(declare-fun lt!266512 () (_ BitVec 32))

(assert (=> b!587725 (= res!375505 (= lt!266513 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266512 vacantSpotIndex!68 (select (store (arr!17622 a!2986) i!1108 k!1786) j!136) (array!36707 (store (arr!17622 a!2986) i!1108 k!1786) (size!17986 a!2986)) mask!3053)))))

(assert (=> b!587725 (= lt!266513 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266512 vacantSpotIndex!68 (select (arr!17622 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18262 0))(
  ( (Unit!18263) )
))
(declare-fun lt!266514 () Unit!18262)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36706 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18262)

(assert (=> b!587725 (= lt!266514 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266512 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587725 (= lt!266512 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587726 () Bool)

(assert (=> b!587726 (= e!335674 e!335676)))

(declare-fun res!375510 () Bool)

(assert (=> b!587726 (=> (not res!375510) (not e!335676))))

(declare-fun lt!266515 () SeekEntryResult!6069)

(assert (=> b!587726 (= res!375510 (or (= lt!266515 (MissingZero!6069 i!1108)) (= lt!266515 (MissingVacant!6069 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36706 (_ BitVec 32)) SeekEntryResult!6069)

(assert (=> b!587726 (= lt!266515 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53908 res!375502) b!587721))

(assert (= (and b!587721 res!375504) b!587716))

(assert (= (and b!587716 res!375503) b!587722))

(assert (= (and b!587722 res!375507) b!587720))

(assert (= (and b!587720 res!375509) b!587726))

(assert (= (and b!587726 res!375510) b!587719))

(assert (= (and b!587719 res!375508) b!587724))

(assert (= (and b!587724 res!375506) b!587718))

(assert (= (and b!587718 res!375511) b!587723))

(assert (= (and b!587723 res!375512) b!587725))

(assert (= (and b!587725 res!375505) b!587717))

(declare-fun m!566239 () Bool)

(assert (=> b!587719 m!566239))

(declare-fun m!566241 () Bool)

(assert (=> start!53908 m!566241))

(declare-fun m!566243 () Bool)

(assert (=> start!53908 m!566243))

(declare-fun m!566245 () Bool)

(assert (=> b!587718 m!566245))

(declare-fun m!566247 () Bool)

(assert (=> b!587718 m!566247))

(declare-fun m!566249 () Bool)

(assert (=> b!587718 m!566249))

(declare-fun m!566251 () Bool)

(assert (=> b!587724 m!566251))

(declare-fun m!566253 () Bool)

(assert (=> b!587723 m!566253))

(declare-fun m!566255 () Bool)

(assert (=> b!587723 m!566255))

(assert (=> b!587723 m!566255))

(declare-fun m!566257 () Bool)

(assert (=> b!587723 m!566257))

(assert (=> b!587716 m!566255))

(assert (=> b!587716 m!566255))

(declare-fun m!566259 () Bool)

(assert (=> b!587716 m!566259))

(declare-fun m!566261 () Bool)

(assert (=> b!587720 m!566261))

(declare-fun m!566263 () Bool)

(assert (=> b!587725 m!566263))

(declare-fun m!566265 () Bool)

(assert (=> b!587725 m!566265))

(assert (=> b!587725 m!566255))

(assert (=> b!587725 m!566247))

(assert (=> b!587725 m!566265))

(declare-fun m!566267 () Bool)

(assert (=> b!587725 m!566267))

(assert (=> b!587725 m!566255))

(declare-fun m!566269 () Bool)

(assert (=> b!587725 m!566269))

(declare-fun m!566271 () Bool)

(assert (=> b!587725 m!566271))

(declare-fun m!566273 () Bool)

(assert (=> b!587722 m!566273))

(declare-fun m!566275 () Bool)

(assert (=> b!587726 m!566275))

(push 1)

