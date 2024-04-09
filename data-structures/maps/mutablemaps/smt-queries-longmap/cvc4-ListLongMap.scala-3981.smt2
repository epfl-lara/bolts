; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53978 () Bool)

(assert start!53978)

(declare-fun b!589012 () Bool)

(declare-fun res!376716 () Bool)

(declare-fun e!336300 () Bool)

(assert (=> b!589012 (=> (not res!376716) (not e!336300))))

(declare-datatypes ((array!36776 0))(
  ( (array!36777 (arr!17657 (Array (_ BitVec 32) (_ BitVec 64))) (size!18021 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36776)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589012 (= res!376716 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589013 () Bool)

(declare-fun res!376718 () Bool)

(declare-fun e!336298 () Bool)

(assert (=> b!589013 (=> (not res!376718) (not e!336298))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36776 (_ BitVec 32)) Bool)

(assert (=> b!589013 (= res!376718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589014 () Bool)

(declare-fun res!376711 () Bool)

(assert (=> b!589014 (=> (not res!376711) (not e!336300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589014 (= res!376711 (validKeyInArray!0 k!1786))))

(declare-fun b!589015 () Bool)

(declare-fun res!376713 () Bool)

(assert (=> b!589015 (=> (not res!376713) (not e!336300))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589015 (= res!376713 (and (= (size!18021 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18021 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18021 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!376717 () Bool)

(assert (=> start!53978 (=> (not res!376717) (not e!336300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53978 (= res!376717 (validMask!0 mask!3053))))

(assert (=> start!53978 e!336300))

(assert (=> start!53978 true))

(declare-fun array_inv!13431 (array!36776) Bool)

(assert (=> start!53978 (array_inv!13431 a!2986)))

(declare-fun b!589016 () Bool)

(assert (=> b!589016 (= e!336300 e!336298)))

(declare-fun res!376719 () Bool)

(assert (=> b!589016 (=> (not res!376719) (not e!336298))))

(declare-datatypes ((SeekEntryResult!6104 0))(
  ( (MissingZero!6104 (index!26646 (_ BitVec 32))) (Found!6104 (index!26647 (_ BitVec 32))) (Intermediate!6104 (undefined!6916 Bool) (index!26648 (_ BitVec 32)) (x!55465 (_ BitVec 32))) (Undefined!6104) (MissingVacant!6104 (index!26649 (_ BitVec 32))) )
))
(declare-fun lt!267174 () SeekEntryResult!6104)

(assert (=> b!589016 (= res!376719 (or (= lt!267174 (MissingZero!6104 i!1108)) (= lt!267174 (MissingVacant!6104 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36776 (_ BitVec 32)) SeekEntryResult!6104)

(assert (=> b!589016 (= lt!267174 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589017 () Bool)

(declare-fun e!336297 () Bool)

(declare-fun lt!267175 () SeekEntryResult!6104)

(declare-fun lt!267171 () SeekEntryResult!6104)

(assert (=> b!589017 (= e!336297 (= lt!267175 lt!267171))))

(declare-fun b!589018 () Bool)

(declare-datatypes ((Unit!18360 0))(
  ( (Unit!18361) )
))
(declare-fun e!336296 () Unit!18360)

(declare-fun Unit!18362 () Unit!18360)

(assert (=> b!589018 (= e!336296 Unit!18362)))

(declare-fun b!589019 () Bool)

(declare-fun res!376710 () Bool)

(assert (=> b!589019 (=> (not res!376710) (not e!336298))))

(declare-datatypes ((List!11751 0))(
  ( (Nil!11748) (Cons!11747 (h!12792 (_ BitVec 64)) (t!17987 List!11751)) )
))
(declare-fun arrayNoDuplicates!0 (array!36776 (_ BitVec 32) List!11751) Bool)

(assert (=> b!589019 (= res!376710 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11748))))

(declare-fun b!589020 () Bool)

(declare-fun res!376720 () Bool)

(assert (=> b!589020 (=> (not res!376720) (not e!336300))))

(assert (=> b!589020 (= res!376720 (validKeyInArray!0 (select (arr!17657 a!2986) j!136)))))

(declare-fun b!589021 () Bool)

(declare-fun res!376721 () Bool)

(assert (=> b!589021 (=> (not res!376721) (not e!336298))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589021 (= res!376721 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17657 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589022 () Bool)

(declare-fun e!336301 () Bool)

(declare-fun e!336299 () Bool)

(assert (=> b!589022 (= e!336301 e!336299)))

(declare-fun res!376715 () Bool)

(assert (=> b!589022 (=> (not res!376715) (not e!336299))))

(assert (=> b!589022 (= res!376715 (and (= lt!267175 (Found!6104 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17657 a!2986) index!984) (select (arr!17657 a!2986) j!136))) (not (= (select (arr!17657 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36776 (_ BitVec 32)) SeekEntryResult!6104)

(assert (=> b!589022 (= lt!267175 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17657 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589023 () Bool)

(assert (=> b!589023 (= e!336299 (not true))))

(declare-fun lt!267173 () Unit!18360)

(assert (=> b!589023 (= lt!267173 e!336296)))

(declare-fun lt!267176 () array!36776)

(declare-fun lt!267170 () (_ BitVec 64))

(declare-fun c!66518 () Bool)

(assert (=> b!589023 (= c!66518 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267170 lt!267176 mask!3053) Undefined!6104))))

(assert (=> b!589023 e!336297))

(declare-fun res!376712 () Bool)

(assert (=> b!589023 (=> (not res!376712) (not e!336297))))

(declare-fun lt!267172 () (_ BitVec 32))

(assert (=> b!589023 (= res!376712 (= lt!267171 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267172 vacantSpotIndex!68 lt!267170 lt!267176 mask!3053)))))

(assert (=> b!589023 (= lt!267171 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267172 vacantSpotIndex!68 (select (arr!17657 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589023 (= lt!267170 (select (store (arr!17657 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267169 () Unit!18360)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36776 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18360)

(assert (=> b!589023 (= lt!267169 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267172 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589023 (= lt!267172 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589024 () Bool)

(declare-fun Unit!18363 () Unit!18360)

(assert (=> b!589024 (= e!336296 Unit!18363)))

(assert (=> b!589024 false))

(declare-fun b!589025 () Bool)

(assert (=> b!589025 (= e!336298 e!336301)))

(declare-fun res!376714 () Bool)

(assert (=> b!589025 (=> (not res!376714) (not e!336301))))

(assert (=> b!589025 (= res!376714 (= (select (store (arr!17657 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589025 (= lt!267176 (array!36777 (store (arr!17657 a!2986) i!1108 k!1786) (size!18021 a!2986)))))

(assert (= (and start!53978 res!376717) b!589015))

(assert (= (and b!589015 res!376713) b!589020))

(assert (= (and b!589020 res!376720) b!589014))

(assert (= (and b!589014 res!376711) b!589012))

(assert (= (and b!589012 res!376716) b!589016))

(assert (= (and b!589016 res!376719) b!589013))

(assert (= (and b!589013 res!376718) b!589019))

(assert (= (and b!589019 res!376710) b!589021))

(assert (= (and b!589021 res!376721) b!589025))

(assert (= (and b!589025 res!376714) b!589022))

(assert (= (and b!589022 res!376715) b!589023))

(assert (= (and b!589023 res!376712) b!589017))

(assert (= (and b!589023 c!66518) b!589024))

(assert (= (and b!589023 (not c!66518)) b!589018))

(declare-fun m!567603 () Bool)

(assert (=> b!589014 m!567603))

(declare-fun m!567605 () Bool)

(assert (=> b!589025 m!567605))

(declare-fun m!567607 () Bool)

(assert (=> b!589025 m!567607))

(declare-fun m!567609 () Bool)

(assert (=> b!589021 m!567609))

(declare-fun m!567611 () Bool)

(assert (=> b!589012 m!567611))

(declare-fun m!567613 () Bool)

(assert (=> b!589022 m!567613))

(declare-fun m!567615 () Bool)

(assert (=> b!589022 m!567615))

(assert (=> b!589022 m!567615))

(declare-fun m!567617 () Bool)

(assert (=> b!589022 m!567617))

(declare-fun m!567619 () Bool)

(assert (=> start!53978 m!567619))

(declare-fun m!567621 () Bool)

(assert (=> start!53978 m!567621))

(declare-fun m!567623 () Bool)

(assert (=> b!589013 m!567623))

(declare-fun m!567625 () Bool)

(assert (=> b!589023 m!567625))

(declare-fun m!567627 () Bool)

(assert (=> b!589023 m!567627))

(declare-fun m!567629 () Bool)

(assert (=> b!589023 m!567629))

(assert (=> b!589023 m!567615))

(assert (=> b!589023 m!567605))

(declare-fun m!567631 () Bool)

(assert (=> b!589023 m!567631))

(assert (=> b!589023 m!567615))

(declare-fun m!567633 () Bool)

(assert (=> b!589023 m!567633))

(declare-fun m!567635 () Bool)

(assert (=> b!589023 m!567635))

(assert (=> b!589020 m!567615))

(assert (=> b!589020 m!567615))

(declare-fun m!567637 () Bool)

(assert (=> b!589020 m!567637))

(declare-fun m!567639 () Bool)

(assert (=> b!589016 m!567639))

(declare-fun m!567641 () Bool)

(assert (=> b!589019 m!567641))

(push 1)

