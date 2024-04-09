; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57366 () Bool)

(assert start!57366)

(declare-fun b!634640 () Bool)

(declare-fun res!410646 () Bool)

(declare-fun e!362956 () Bool)

(assert (=> b!634640 (=> (not res!410646) (not e!362956))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38175 0))(
  ( (array!38176 (arr!18312 (Array (_ BitVec 32) (_ BitVec 64))) (size!18676 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38175)

(assert (=> b!634640 (= res!410646 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18312 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634641 () Bool)

(declare-fun res!410652 () Bool)

(declare-fun e!362948 () Bool)

(assert (=> b!634641 (=> (not res!410652) (not e!362948))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634641 (= res!410652 (validKeyInArray!0 k!1786))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!362954 () Bool)

(declare-fun lt!293459 () array!38175)

(declare-fun b!634643 () Bool)

(declare-fun arrayContainsKey!0 (array!38175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634643 (= e!362954 (arrayContainsKey!0 lt!293459 (select (arr!18312 a!2986) j!136) index!984))))

(declare-fun b!634644 () Bool)

(declare-fun res!410648 () Bool)

(assert (=> b!634644 (=> (not res!410648) (not e!362948))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!634644 (= res!410648 (and (= (size!18676 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18676 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18676 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634645 () Bool)

(declare-fun e!362955 () Bool)

(declare-fun e!362947 () Bool)

(assert (=> b!634645 (= e!362955 e!362947)))

(declare-fun res!410657 () Bool)

(assert (=> b!634645 (=> (not res!410657) (not e!362947))))

(declare-datatypes ((SeekEntryResult!6759 0))(
  ( (MissingZero!6759 (index!29337 (_ BitVec 32))) (Found!6759 (index!29338 (_ BitVec 32))) (Intermediate!6759 (undefined!7571 Bool) (index!29339 (_ BitVec 32)) (x!58110 (_ BitVec 32))) (Undefined!6759) (MissingVacant!6759 (index!29340 (_ BitVec 32))) )
))
(declare-fun lt!293457 () SeekEntryResult!6759)

(assert (=> b!634645 (= res!410657 (and (= lt!293457 (Found!6759 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18312 a!2986) index!984) (select (arr!18312 a!2986) j!136))) (not (= (select (arr!18312 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38175 (_ BitVec 32)) SeekEntryResult!6759)

(assert (=> b!634645 (= lt!293457 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18312 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634646 () Bool)

(assert (=> b!634646 (= e!362956 e!362955)))

(declare-fun res!410658 () Bool)

(assert (=> b!634646 (=> (not res!410658) (not e!362955))))

(assert (=> b!634646 (= res!410658 (= (select (store (arr!18312 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634646 (= lt!293459 (array!38176 (store (arr!18312 a!2986) i!1108 k!1786) (size!18676 a!2986)))))

(declare-fun b!634647 () Bool)

(declare-datatypes ((Unit!21394 0))(
  ( (Unit!21395) )
))
(declare-fun e!362951 () Unit!21394)

(declare-fun Unit!21396 () Unit!21394)

(assert (=> b!634647 (= e!362951 Unit!21396)))

(assert (=> b!634647 false))

(declare-fun b!634648 () Bool)

(declare-fun res!410655 () Bool)

(assert (=> b!634648 (=> (not res!410655) (not e!362956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38175 (_ BitVec 32)) Bool)

(assert (=> b!634648 (= res!410655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634649 () Bool)

(declare-fun e!362945 () Bool)

(assert (=> b!634649 (= e!362945 true)))

(assert (=> b!634649 (arrayContainsKey!0 lt!293459 (select (arr!18312 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293454 () Unit!21394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38175 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21394)

(assert (=> b!634649 (= lt!293454 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293459 (select (arr!18312 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!634650 () Bool)

(declare-fun e!362949 () Bool)

(assert (=> b!634650 (= e!362949 e!362945)))

(declare-fun res!410644 () Bool)

(assert (=> b!634650 (=> res!410644 e!362945)))

(declare-fun lt!293455 () (_ BitVec 64))

(declare-fun lt!293453 () (_ BitVec 64))

(assert (=> b!634650 (= res!410644 (or (not (= (select (arr!18312 a!2986) j!136) lt!293453)) (not (= (select (arr!18312 a!2986) j!136) lt!293455)) (bvsge j!136 index!984)))))

(declare-fun e!362953 () Bool)

(assert (=> b!634650 e!362953))

(declare-fun res!410660 () Bool)

(assert (=> b!634650 (=> (not res!410660) (not e!362953))))

(assert (=> b!634650 (= res!410660 (= lt!293455 (select (arr!18312 a!2986) j!136)))))

(assert (=> b!634650 (= lt!293455 (select (store (arr!18312 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!634651 () Bool)

(assert (=> b!634651 (= e!362948 e!362956)))

(declare-fun res!410654 () Bool)

(assert (=> b!634651 (=> (not res!410654) (not e!362956))))

(declare-fun lt!293450 () SeekEntryResult!6759)

(assert (=> b!634651 (= res!410654 (or (= lt!293450 (MissingZero!6759 i!1108)) (= lt!293450 (MissingVacant!6759 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38175 (_ BitVec 32)) SeekEntryResult!6759)

(assert (=> b!634651 (= lt!293450 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!634642 () Bool)

(declare-fun e!362950 () Bool)

(assert (=> b!634642 (= e!362950 e!362954)))

(declare-fun res!410650 () Bool)

(assert (=> b!634642 (=> (not res!410650) (not e!362954))))

(assert (=> b!634642 (= res!410650 (arrayContainsKey!0 lt!293459 (select (arr!18312 a!2986) j!136) j!136))))

(declare-fun res!410656 () Bool)

(assert (=> start!57366 (=> (not res!410656) (not e!362948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57366 (= res!410656 (validMask!0 mask!3053))))

(assert (=> start!57366 e!362948))

(assert (=> start!57366 true))

(declare-fun array_inv!14086 (array!38175) Bool)

(assert (=> start!57366 (array_inv!14086 a!2986)))

(declare-fun b!634652 () Bool)

(declare-fun Unit!21397 () Unit!21394)

(assert (=> b!634652 (= e!362951 Unit!21397)))

(declare-fun b!634653 () Bool)

(declare-fun res!410659 () Bool)

(assert (=> b!634653 (=> (not res!410659) (not e!362948))))

(assert (=> b!634653 (= res!410659 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634654 () Bool)

(declare-fun res!410645 () Bool)

(assert (=> b!634654 (=> (not res!410645) (not e!362948))))

(assert (=> b!634654 (= res!410645 (validKeyInArray!0 (select (arr!18312 a!2986) j!136)))))

(declare-fun b!634655 () Bool)

(assert (=> b!634655 (= e!362953 e!362950)))

(declare-fun res!410651 () Bool)

(assert (=> b!634655 (=> res!410651 e!362950)))

(assert (=> b!634655 (= res!410651 (or (not (= (select (arr!18312 a!2986) j!136) lt!293453)) (not (= (select (arr!18312 a!2986) j!136) lt!293455)) (bvsge j!136 index!984)))))

(declare-fun b!634656 () Bool)

(declare-fun e!362946 () Bool)

(declare-fun lt!293451 () SeekEntryResult!6759)

(assert (=> b!634656 (= e!362946 (= lt!293457 lt!293451))))

(declare-fun b!634657 () Bool)

(assert (=> b!634657 (= e!362947 (not e!362949))))

(declare-fun res!410649 () Bool)

(assert (=> b!634657 (=> res!410649 e!362949)))

(declare-fun lt!293460 () SeekEntryResult!6759)

(assert (=> b!634657 (= res!410649 (not (= lt!293460 (Found!6759 index!984))))))

(declare-fun lt!293452 () Unit!21394)

(assert (=> b!634657 (= lt!293452 e!362951)))

(declare-fun c!72365 () Bool)

(assert (=> b!634657 (= c!72365 (= lt!293460 Undefined!6759))))

(assert (=> b!634657 (= lt!293460 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293453 lt!293459 mask!3053))))

(assert (=> b!634657 e!362946))

(declare-fun res!410647 () Bool)

(assert (=> b!634657 (=> (not res!410647) (not e!362946))))

(declare-fun lt!293458 () (_ BitVec 32))

(assert (=> b!634657 (= res!410647 (= lt!293451 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293458 vacantSpotIndex!68 lt!293453 lt!293459 mask!3053)))))

(assert (=> b!634657 (= lt!293451 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293458 vacantSpotIndex!68 (select (arr!18312 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634657 (= lt!293453 (select (store (arr!18312 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293456 () Unit!21394)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38175 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21394)

(assert (=> b!634657 (= lt!293456 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293458 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634657 (= lt!293458 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634658 () Bool)

(declare-fun res!410653 () Bool)

(assert (=> b!634658 (=> (not res!410653) (not e!362956))))

(declare-datatypes ((List!12406 0))(
  ( (Nil!12403) (Cons!12402 (h!13447 (_ BitVec 64)) (t!18642 List!12406)) )
))
(declare-fun arrayNoDuplicates!0 (array!38175 (_ BitVec 32) List!12406) Bool)

(assert (=> b!634658 (= res!410653 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12403))))

(assert (= (and start!57366 res!410656) b!634644))

(assert (= (and b!634644 res!410648) b!634654))

(assert (= (and b!634654 res!410645) b!634641))

(assert (= (and b!634641 res!410652) b!634653))

(assert (= (and b!634653 res!410659) b!634651))

(assert (= (and b!634651 res!410654) b!634648))

(assert (= (and b!634648 res!410655) b!634658))

(assert (= (and b!634658 res!410653) b!634640))

(assert (= (and b!634640 res!410646) b!634646))

(assert (= (and b!634646 res!410658) b!634645))

(assert (= (and b!634645 res!410657) b!634657))

(assert (= (and b!634657 res!410647) b!634656))

(assert (= (and b!634657 c!72365) b!634647))

(assert (= (and b!634657 (not c!72365)) b!634652))

(assert (= (and b!634657 (not res!410649)) b!634650))

(assert (= (and b!634650 res!410660) b!634655))

(assert (= (and b!634655 (not res!410651)) b!634642))

(assert (= (and b!634642 res!410650) b!634643))

(assert (= (and b!634650 (not res!410644)) b!634649))

(declare-fun m!609147 () Bool)

(assert (=> b!634657 m!609147))

(declare-fun m!609149 () Bool)

(assert (=> b!634657 m!609149))

(declare-fun m!609151 () Bool)

(assert (=> b!634657 m!609151))

(declare-fun m!609153 () Bool)

(assert (=> b!634657 m!609153))

(assert (=> b!634657 m!609151))

(declare-fun m!609155 () Bool)

(assert (=> b!634657 m!609155))

(declare-fun m!609157 () Bool)

(assert (=> b!634657 m!609157))

(declare-fun m!609159 () Bool)

(assert (=> b!634657 m!609159))

(declare-fun m!609161 () Bool)

(assert (=> b!634657 m!609161))

(declare-fun m!609163 () Bool)

(assert (=> b!634653 m!609163))

(assert (=> b!634650 m!609151))

(assert (=> b!634650 m!609153))

(declare-fun m!609165 () Bool)

(assert (=> b!634650 m!609165))

(declare-fun m!609167 () Bool)

(assert (=> start!57366 m!609167))

(declare-fun m!609169 () Bool)

(assert (=> start!57366 m!609169))

(assert (=> b!634646 m!609153))

(declare-fun m!609171 () Bool)

(assert (=> b!634646 m!609171))

(declare-fun m!609173 () Bool)

(assert (=> b!634645 m!609173))

(assert (=> b!634645 m!609151))

(assert (=> b!634645 m!609151))

(declare-fun m!609175 () Bool)

(assert (=> b!634645 m!609175))

(declare-fun m!609177 () Bool)

(assert (=> b!634651 m!609177))

(assert (=> b!634654 m!609151))

(assert (=> b!634654 m!609151))

(declare-fun m!609179 () Bool)

(assert (=> b!634654 m!609179))

(declare-fun m!609181 () Bool)

(assert (=> b!634640 m!609181))

(declare-fun m!609183 () Bool)

(assert (=> b!634641 m!609183))

(assert (=> b!634655 m!609151))

(declare-fun m!609185 () Bool)

(assert (=> b!634658 m!609185))

(assert (=> b!634642 m!609151))

(assert (=> b!634642 m!609151))

(declare-fun m!609187 () Bool)

(assert (=> b!634642 m!609187))

(declare-fun m!609189 () Bool)

(assert (=> b!634648 m!609189))

(assert (=> b!634649 m!609151))

(assert (=> b!634649 m!609151))

(declare-fun m!609191 () Bool)

(assert (=> b!634649 m!609191))

(assert (=> b!634649 m!609151))

(declare-fun m!609193 () Bool)

(assert (=> b!634649 m!609193))

(assert (=> b!634643 m!609151))

(assert (=> b!634643 m!609151))

(declare-fun m!609195 () Bool)

(assert (=> b!634643 m!609195))

(push 1)

