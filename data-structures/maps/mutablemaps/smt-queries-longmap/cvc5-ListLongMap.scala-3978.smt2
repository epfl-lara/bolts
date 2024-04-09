; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53956 () Bool)

(assert start!53956)

(declare-fun b!588550 () Bool)

(declare-fun e!336065 () Bool)

(declare-fun e!336067 () Bool)

(assert (=> b!588550 (= e!336065 e!336067)))

(declare-fun res!376318 () Bool)

(assert (=> b!588550 (=> (not res!376318) (not e!336067))))

(declare-datatypes ((SeekEntryResult!6093 0))(
  ( (MissingZero!6093 (index!26602 (_ BitVec 32))) (Found!6093 (index!26603 (_ BitVec 32))) (Intermediate!6093 (undefined!6905 Bool) (index!26604 (_ BitVec 32)) (x!55430 (_ BitVec 32))) (Undefined!6093) (MissingVacant!6093 (index!26605 (_ BitVec 32))) )
))
(declare-fun lt!266911 () SeekEntryResult!6093)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588550 (= res!376318 (or (= lt!266911 (MissingZero!6093 i!1108)) (= lt!266911 (MissingVacant!6093 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36754 0))(
  ( (array!36755 (arr!17646 (Array (_ BitVec 32) (_ BitVec 64))) (size!18010 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36754)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36754 (_ BitVec 32)) SeekEntryResult!6093)

(assert (=> b!588550 (= lt!266911 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588551 () Bool)

(declare-fun res!376322 () Bool)

(assert (=> b!588551 (=> (not res!376322) (not e!336067))))

(declare-datatypes ((List!11740 0))(
  ( (Nil!11737) (Cons!11736 (h!12781 (_ BitVec 64)) (t!17976 List!11740)) )
))
(declare-fun arrayNoDuplicates!0 (array!36754 (_ BitVec 32) List!11740) Bool)

(assert (=> b!588551 (= res!376322 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11737))))

(declare-fun res!376315 () Bool)

(assert (=> start!53956 (=> (not res!376315) (not e!336065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53956 (= res!376315 (validMask!0 mask!3053))))

(assert (=> start!53956 e!336065))

(assert (=> start!53956 true))

(declare-fun array_inv!13420 (array!36754) Bool)

(assert (=> start!53956 (array_inv!13420 a!2986)))

(declare-fun b!588552 () Bool)

(declare-fun res!376320 () Bool)

(assert (=> b!588552 (=> (not res!376320) (not e!336065))))

(declare-fun arrayContainsKey!0 (array!36754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588552 (= res!376320 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588553 () Bool)

(declare-fun res!376317 () Bool)

(assert (=> b!588553 (=> (not res!376317) (not e!336065))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!588553 (= res!376317 (and (= (size!18010 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18010 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18010 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588554 () Bool)

(declare-fun res!376325 () Bool)

(assert (=> b!588554 (=> (not res!376325) (not e!336067))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588554 (= res!376325 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17646 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588555 () Bool)

(declare-fun e!336066 () Bool)

(declare-fun lt!266910 () SeekEntryResult!6093)

(declare-fun lt!266907 () SeekEntryResult!6093)

(assert (=> b!588555 (= e!336066 (= lt!266910 lt!266907))))

(declare-fun b!588556 () Bool)

(declare-fun e!336064 () Bool)

(assert (=> b!588556 (= e!336064 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!18316 0))(
  ( (Unit!18317) )
))
(declare-fun lt!266905 () Unit!18316)

(declare-fun e!336068 () Unit!18316)

(assert (=> b!588556 (= lt!266905 e!336068)))

(declare-fun lt!266906 () array!36754)

(declare-fun lt!266912 () (_ BitVec 64))

(declare-fun c!66485 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36754 (_ BitVec 32)) SeekEntryResult!6093)

(assert (=> b!588556 (= c!66485 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!266912 lt!266906 mask!3053) Undefined!6093))))

(assert (=> b!588556 e!336066))

(declare-fun res!376323 () Bool)

(assert (=> b!588556 (=> (not res!376323) (not e!336066))))

(declare-fun lt!266909 () (_ BitVec 32))

(assert (=> b!588556 (= res!376323 (= lt!266907 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266909 vacantSpotIndex!68 lt!266912 lt!266906 mask!3053)))))

(assert (=> b!588556 (= lt!266907 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266909 vacantSpotIndex!68 (select (arr!17646 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588556 (= lt!266912 (select (store (arr!17646 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!266908 () Unit!18316)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36754 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18316)

(assert (=> b!588556 (= lt!266908 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266909 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588556 (= lt!266909 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588557 () Bool)

(declare-fun res!376321 () Bool)

(assert (=> b!588557 (=> (not res!376321) (not e!336065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588557 (= res!376321 (validKeyInArray!0 k!1786))))

(declare-fun b!588558 () Bool)

(declare-fun e!336070 () Bool)

(assert (=> b!588558 (= e!336070 e!336064)))

(declare-fun res!376319 () Bool)

(assert (=> b!588558 (=> (not res!376319) (not e!336064))))

(assert (=> b!588558 (= res!376319 (and (= lt!266910 (Found!6093 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17646 a!2986) index!984) (select (arr!17646 a!2986) j!136))) (not (= (select (arr!17646 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588558 (= lt!266910 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17646 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588559 () Bool)

(declare-fun Unit!18318 () Unit!18316)

(assert (=> b!588559 (= e!336068 Unit!18318)))

(assert (=> b!588559 false))

(declare-fun b!588560 () Bool)

(declare-fun res!376316 () Bool)

(assert (=> b!588560 (=> (not res!376316) (not e!336067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36754 (_ BitVec 32)) Bool)

(assert (=> b!588560 (= res!376316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588561 () Bool)

(declare-fun res!376324 () Bool)

(assert (=> b!588561 (=> (not res!376324) (not e!336065))))

(assert (=> b!588561 (= res!376324 (validKeyInArray!0 (select (arr!17646 a!2986) j!136)))))

(declare-fun b!588562 () Bool)

(assert (=> b!588562 (= e!336067 e!336070)))

(declare-fun res!376314 () Bool)

(assert (=> b!588562 (=> (not res!376314) (not e!336070))))

(assert (=> b!588562 (= res!376314 (= (select (store (arr!17646 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!588562 (= lt!266906 (array!36755 (store (arr!17646 a!2986) i!1108 k!1786) (size!18010 a!2986)))))

(declare-fun b!588563 () Bool)

(declare-fun Unit!18319 () Unit!18316)

(assert (=> b!588563 (= e!336068 Unit!18319)))

(assert (= (and start!53956 res!376315) b!588553))

(assert (= (and b!588553 res!376317) b!588561))

(assert (= (and b!588561 res!376324) b!588557))

(assert (= (and b!588557 res!376321) b!588552))

(assert (= (and b!588552 res!376320) b!588550))

(assert (= (and b!588550 res!376318) b!588560))

(assert (= (and b!588560 res!376316) b!588551))

(assert (= (and b!588551 res!376322) b!588554))

(assert (= (and b!588554 res!376325) b!588562))

(assert (= (and b!588562 res!376314) b!588558))

(assert (= (and b!588558 res!376319) b!588556))

(assert (= (and b!588556 res!376323) b!588555))

(assert (= (and b!588556 c!66485) b!588559))

(assert (= (and b!588556 (not c!66485)) b!588563))

(declare-fun m!567163 () Bool)

(assert (=> b!588552 m!567163))

(declare-fun m!567165 () Bool)

(assert (=> b!588550 m!567165))

(declare-fun m!567167 () Bool)

(assert (=> b!588560 m!567167))

(declare-fun m!567169 () Bool)

(assert (=> b!588556 m!567169))

(declare-fun m!567171 () Bool)

(assert (=> b!588556 m!567171))

(declare-fun m!567173 () Bool)

(assert (=> b!588556 m!567173))

(declare-fun m!567175 () Bool)

(assert (=> b!588556 m!567175))

(declare-fun m!567177 () Bool)

(assert (=> b!588556 m!567177))

(assert (=> b!588556 m!567175))

(declare-fun m!567179 () Bool)

(assert (=> b!588556 m!567179))

(declare-fun m!567181 () Bool)

(assert (=> b!588556 m!567181))

(declare-fun m!567183 () Bool)

(assert (=> b!588556 m!567183))

(assert (=> b!588562 m!567177))

(declare-fun m!567185 () Bool)

(assert (=> b!588562 m!567185))

(declare-fun m!567187 () Bool)

(assert (=> b!588551 m!567187))

(declare-fun m!567189 () Bool)

(assert (=> start!53956 m!567189))

(declare-fun m!567191 () Bool)

(assert (=> start!53956 m!567191))

(declare-fun m!567193 () Bool)

(assert (=> b!588554 m!567193))

(assert (=> b!588561 m!567175))

(assert (=> b!588561 m!567175))

(declare-fun m!567195 () Bool)

(assert (=> b!588561 m!567195))

(declare-fun m!567197 () Bool)

(assert (=> b!588557 m!567197))

(declare-fun m!567199 () Bool)

(assert (=> b!588558 m!567199))

(assert (=> b!588558 m!567175))

(assert (=> b!588558 m!567175))

(declare-fun m!567201 () Bool)

(assert (=> b!588558 m!567201))

(push 1)

