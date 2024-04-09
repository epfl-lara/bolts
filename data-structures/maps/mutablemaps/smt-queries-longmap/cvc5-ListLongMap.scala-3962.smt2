; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53800 () Bool)

(assert start!53800)

(declare-fun b!586672 () Bool)

(declare-fun res!374640 () Bool)

(declare-fun e!335273 () Bool)

(assert (=> b!586672 (=> (not res!374640) (not e!335273))))

(declare-datatypes ((array!36655 0))(
  ( (array!36656 (arr!17598 (Array (_ BitVec 32) (_ BitVec 64))) (size!17962 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36655)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586672 (= res!374640 (validKeyInArray!0 (select (arr!17598 a!2986) j!136)))))

(declare-fun b!586673 () Bool)

(declare-fun res!374641 () Bool)

(declare-fun e!335274 () Bool)

(assert (=> b!586673 (=> (not res!374641) (not e!335274))))

(declare-datatypes ((List!11692 0))(
  ( (Nil!11689) (Cons!11688 (h!12733 (_ BitVec 64)) (t!17928 List!11692)) )
))
(declare-fun arrayNoDuplicates!0 (array!36655 (_ BitVec 32) List!11692) Bool)

(assert (=> b!586673 (= res!374641 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11689))))

(declare-fun b!586674 () Bool)

(declare-fun res!374639 () Bool)

(assert (=> b!586674 (=> (not res!374639) (not e!335273))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586674 (= res!374639 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586675 () Bool)

(declare-fun res!374647 () Bool)

(assert (=> b!586675 (=> (not res!374647) (not e!335274))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36655 (_ BitVec 32)) Bool)

(assert (=> b!586675 (= res!374647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586676 () Bool)

(declare-fun res!374648 () Bool)

(assert (=> b!586676 (=> (not res!374648) (not e!335273))))

(assert (=> b!586676 (= res!374648 (validKeyInArray!0 k!1786))))

(declare-fun b!586677 () Bool)

(declare-fun res!374644 () Bool)

(assert (=> b!586677 (=> (not res!374644) (not e!335273))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586677 (= res!374644 (and (= (size!17962 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17962 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17962 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586678 () Bool)

(declare-fun res!374642 () Bool)

(assert (=> b!586678 (=> (not res!374642) (not e!335274))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!586678 (= res!374642 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17598 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17598 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586679 () Bool)

(declare-fun res!374645 () Bool)

(assert (=> b!586679 (=> (not res!374645) (not e!335274))))

(declare-datatypes ((SeekEntryResult!6045 0))(
  ( (MissingZero!6045 (index!26407 (_ BitVec 32))) (Found!6045 (index!26408 (_ BitVec 32))) (Intermediate!6045 (undefined!6857 Bool) (index!26409 (_ BitVec 32)) (x!55245 (_ BitVec 32))) (Undefined!6045) (MissingVacant!6045 (index!26410 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36655 (_ BitVec 32)) SeekEntryResult!6045)

(assert (=> b!586679 (= res!374645 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17598 a!2986) j!136) a!2986 mask!3053) (Found!6045 j!136)))))

(declare-fun res!374638 () Bool)

(assert (=> start!53800 (=> (not res!374638) (not e!335273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53800 (= res!374638 (validMask!0 mask!3053))))

(assert (=> start!53800 e!335273))

(assert (=> start!53800 true))

(declare-fun array_inv!13372 (array!36655) Bool)

(assert (=> start!53800 (array_inv!13372 a!2986)))

(declare-fun b!586680 () Bool)

(assert (=> b!586680 (= e!335274 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!266173 () (_ BitVec 32))

(assert (=> b!586680 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266173 vacantSpotIndex!68 (select (arr!17598 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266173 vacantSpotIndex!68 (select (store (arr!17598 a!2986) i!1108 k!1786) j!136) (array!36656 (store (arr!17598 a!2986) i!1108 k!1786) (size!17962 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18214 0))(
  ( (Unit!18215) )
))
(declare-fun lt!266172 () Unit!18214)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36655 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18214)

(assert (=> b!586680 (= lt!266172 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266173 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586680 (= lt!266173 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586681 () Bool)

(assert (=> b!586681 (= e!335273 e!335274)))

(declare-fun res!374643 () Bool)

(assert (=> b!586681 (=> (not res!374643) (not e!335274))))

(declare-fun lt!266174 () SeekEntryResult!6045)

(assert (=> b!586681 (= res!374643 (or (= lt!266174 (MissingZero!6045 i!1108)) (= lt!266174 (MissingVacant!6045 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36655 (_ BitVec 32)) SeekEntryResult!6045)

(assert (=> b!586681 (= lt!266174 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586682 () Bool)

(declare-fun res!374646 () Bool)

(assert (=> b!586682 (=> (not res!374646) (not e!335274))))

(assert (=> b!586682 (= res!374646 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17598 a!2986) index!984) (select (arr!17598 a!2986) j!136))) (not (= (select (arr!17598 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53800 res!374638) b!586677))

(assert (= (and b!586677 res!374644) b!586672))

(assert (= (and b!586672 res!374640) b!586676))

(assert (= (and b!586676 res!374648) b!586674))

(assert (= (and b!586674 res!374639) b!586681))

(assert (= (and b!586681 res!374643) b!586675))

(assert (= (and b!586675 res!374647) b!586673))

(assert (= (and b!586673 res!374641) b!586678))

(assert (= (and b!586678 res!374642) b!586679))

(assert (= (and b!586679 res!374645) b!586682))

(assert (= (and b!586682 res!374646) b!586680))

(declare-fun m!565147 () Bool)

(assert (=> b!586675 m!565147))

(declare-fun m!565149 () Bool)

(assert (=> start!53800 m!565149))

(declare-fun m!565151 () Bool)

(assert (=> start!53800 m!565151))

(declare-fun m!565153 () Bool)

(assert (=> b!586678 m!565153))

(declare-fun m!565155 () Bool)

(assert (=> b!586678 m!565155))

(declare-fun m!565157 () Bool)

(assert (=> b!586678 m!565157))

(declare-fun m!565159 () Bool)

(assert (=> b!586682 m!565159))

(declare-fun m!565161 () Bool)

(assert (=> b!586682 m!565161))

(declare-fun m!565163 () Bool)

(assert (=> b!586680 m!565163))

(declare-fun m!565165 () Bool)

(assert (=> b!586680 m!565165))

(assert (=> b!586680 m!565161))

(assert (=> b!586680 m!565155))

(declare-fun m!565167 () Bool)

(assert (=> b!586680 m!565167))

(assert (=> b!586680 m!565161))

(declare-fun m!565169 () Bool)

(assert (=> b!586680 m!565169))

(assert (=> b!586680 m!565165))

(declare-fun m!565171 () Bool)

(assert (=> b!586680 m!565171))

(assert (=> b!586672 m!565161))

(assert (=> b!586672 m!565161))

(declare-fun m!565173 () Bool)

(assert (=> b!586672 m!565173))

(declare-fun m!565175 () Bool)

(assert (=> b!586673 m!565175))

(assert (=> b!586679 m!565161))

(assert (=> b!586679 m!565161))

(declare-fun m!565177 () Bool)

(assert (=> b!586679 m!565177))

(declare-fun m!565179 () Bool)

(assert (=> b!586681 m!565179))

(declare-fun m!565181 () Bool)

(assert (=> b!586676 m!565181))

(declare-fun m!565183 () Bool)

(assert (=> b!586674 m!565183))

(push 1)

