; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56832 () Bool)

(assert start!56832)

(declare-fun res!406741 () Bool)

(declare-fun e!359847 () Bool)

(assert (=> start!56832 (=> (not res!406741) (not e!359847))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56832 (= res!406741 (validMask!0 mask!3053))))

(assert (=> start!56832 e!359847))

(assert (=> start!56832 true))

(declare-datatypes ((array!37983 0))(
  ( (array!37984 (arr!18225 (Array (_ BitVec 32) (_ BitVec 64))) (size!18589 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37983)

(declare-fun array_inv!13999 (array!37983) Bool)

(assert (=> start!56832 (array_inv!13999 a!2986)))

(declare-fun b!629158 () Bool)

(declare-fun e!359848 () Bool)

(assert (=> b!629158 (= e!359847 e!359848)))

(declare-fun res!406734 () Bool)

(assert (=> b!629158 (=> (not res!406734) (not e!359848))))

(declare-datatypes ((SeekEntryResult!6672 0))(
  ( (MissingZero!6672 (index!28971 (_ BitVec 32))) (Found!6672 (index!28972 (_ BitVec 32))) (Intermediate!6672 (undefined!7484 Bool) (index!28973 (_ BitVec 32)) (x!57737 (_ BitVec 32))) (Undefined!6672) (MissingVacant!6672 (index!28974 (_ BitVec 32))) )
))
(declare-fun lt!290677 () SeekEntryResult!6672)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629158 (= res!406734 (or (= lt!290677 (MissingZero!6672 i!1108)) (= lt!290677 (MissingVacant!6672 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37983 (_ BitVec 32)) SeekEntryResult!6672)

(assert (=> b!629158 (= lt!290677 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629159 () Bool)

(declare-fun res!406739 () Bool)

(assert (=> b!629159 (=> (not res!406739) (not e!359848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37983 (_ BitVec 32)) Bool)

(assert (=> b!629159 (= res!406739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629160 () Bool)

(declare-fun res!406736 () Bool)

(assert (=> b!629160 (=> (not res!406736) (not e!359848))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!629160 (= res!406736 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18225 a!2986) index!984) (select (arr!18225 a!2986) j!136))) (not (= (select (arr!18225 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!629161 () Bool)

(declare-fun res!406740 () Bool)

(assert (=> b!629161 (=> (not res!406740) (not e!359848))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!629161 (= res!406740 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18225 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18225 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629162 () Bool)

(declare-fun res!406735 () Bool)

(assert (=> b!629162 (=> (not res!406735) (not e!359847))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629162 (= res!406735 (validKeyInArray!0 (select (arr!18225 a!2986) j!136)))))

(declare-fun b!629163 () Bool)

(declare-fun res!406737 () Bool)

(assert (=> b!629163 (=> (not res!406737) (not e!359847))))

(assert (=> b!629163 (= res!406737 (validKeyInArray!0 k!1786))))

(declare-fun b!629164 () Bool)

(declare-fun res!406738 () Bool)

(assert (=> b!629164 (=> (not res!406738) (not e!359848))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37983 (_ BitVec 32)) SeekEntryResult!6672)

(assert (=> b!629164 (= res!406738 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18225 a!2986) j!136) a!2986 mask!3053) (Found!6672 j!136)))))

(declare-fun b!629165 () Bool)

(declare-fun res!406742 () Bool)

(assert (=> b!629165 (=> (not res!406742) (not e!359848))))

(declare-datatypes ((List!12319 0))(
  ( (Nil!12316) (Cons!12315 (h!13360 (_ BitVec 64)) (t!18555 List!12319)) )
))
(declare-fun arrayNoDuplicates!0 (array!37983 (_ BitVec 32) List!12319) Bool)

(assert (=> b!629165 (= res!406742 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12316))))

(declare-fun b!629166 () Bool)

(declare-fun res!406733 () Bool)

(assert (=> b!629166 (=> (not res!406733) (not e!359847))))

(assert (=> b!629166 (= res!406733 (and (= (size!18589 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18589 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18589 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629167 () Bool)

(assert (=> b!629167 (= e!359848 (not true))))

(declare-fun lt!290679 () (_ BitVec 32))

(assert (=> b!629167 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290679 vacantSpotIndex!68 (select (arr!18225 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290679 vacantSpotIndex!68 (select (store (arr!18225 a!2986) i!1108 k!1786) j!136) (array!37984 (store (arr!18225 a!2986) i!1108 k!1786) (size!18589 a!2986)) mask!3053))))

(declare-datatypes ((Unit!21088 0))(
  ( (Unit!21089) )
))
(declare-fun lt!290678 () Unit!21088)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37983 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21088)

(assert (=> b!629167 (= lt!290678 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290679 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629167 (= lt!290679 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629168 () Bool)

(declare-fun res!406732 () Bool)

(assert (=> b!629168 (=> (not res!406732) (not e!359847))))

(declare-fun arrayContainsKey!0 (array!37983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629168 (= res!406732 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56832 res!406741) b!629166))

(assert (= (and b!629166 res!406733) b!629162))

(assert (= (and b!629162 res!406735) b!629163))

(assert (= (and b!629163 res!406737) b!629168))

(assert (= (and b!629168 res!406732) b!629158))

(assert (= (and b!629158 res!406734) b!629159))

(assert (= (and b!629159 res!406739) b!629165))

(assert (= (and b!629165 res!406742) b!629161))

(assert (= (and b!629161 res!406740) b!629164))

(assert (= (and b!629164 res!406738) b!629160))

(assert (= (and b!629160 res!406736) b!629167))

(declare-fun m!604215 () Bool)

(assert (=> b!629165 m!604215))

(declare-fun m!604217 () Bool)

(assert (=> b!629160 m!604217))

(declare-fun m!604219 () Bool)

(assert (=> b!629160 m!604219))

(declare-fun m!604221 () Bool)

(assert (=> start!56832 m!604221))

(declare-fun m!604223 () Bool)

(assert (=> start!56832 m!604223))

(declare-fun m!604225 () Bool)

(assert (=> b!629163 m!604225))

(assert (=> b!629162 m!604219))

(assert (=> b!629162 m!604219))

(declare-fun m!604227 () Bool)

(assert (=> b!629162 m!604227))

(assert (=> b!629164 m!604219))

(assert (=> b!629164 m!604219))

(declare-fun m!604229 () Bool)

(assert (=> b!629164 m!604229))

(declare-fun m!604231 () Bool)

(assert (=> b!629168 m!604231))

(declare-fun m!604233 () Bool)

(assert (=> b!629158 m!604233))

(declare-fun m!604235 () Bool)

(assert (=> b!629161 m!604235))

(declare-fun m!604237 () Bool)

(assert (=> b!629161 m!604237))

(declare-fun m!604239 () Bool)

(assert (=> b!629161 m!604239))

(declare-fun m!604241 () Bool)

(assert (=> b!629167 m!604241))

(declare-fun m!604243 () Bool)

(assert (=> b!629167 m!604243))

(declare-fun m!604245 () Bool)

(assert (=> b!629167 m!604245))

(assert (=> b!629167 m!604219))

(declare-fun m!604247 () Bool)

(assert (=> b!629167 m!604247))

(assert (=> b!629167 m!604219))

(assert (=> b!629167 m!604237))

(assert (=> b!629167 m!604245))

(declare-fun m!604249 () Bool)

(assert (=> b!629167 m!604249))

(declare-fun m!604251 () Bool)

(assert (=> b!629159 m!604251))

(push 1)

