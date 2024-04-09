; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53988 () Bool)

(assert start!53988)

(declare-fun b!589222 () Bool)

(declare-fun e!336404 () Bool)

(declare-datatypes ((SeekEntryResult!6109 0))(
  ( (MissingZero!6109 (index!26666 (_ BitVec 32))) (Found!6109 (index!26667 (_ BitVec 32))) (Intermediate!6109 (undefined!6921 Bool) (index!26668 (_ BitVec 32)) (x!55486 (_ BitVec 32))) (Undefined!6109) (MissingVacant!6109 (index!26669 (_ BitVec 32))) )
))
(declare-fun lt!267294 () SeekEntryResult!6109)

(declare-fun lt!267295 () SeekEntryResult!6109)

(assert (=> b!589222 (= e!336404 (= lt!267294 lt!267295))))

(declare-fun b!589223 () Bool)

(declare-fun res!376890 () Bool)

(declare-fun e!336403 () Bool)

(assert (=> b!589223 (=> (not res!376890) (not e!336403))))

(declare-datatypes ((array!36786 0))(
  ( (array!36787 (arr!17662 (Array (_ BitVec 32) (_ BitVec 64))) (size!18026 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36786)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36786 (_ BitVec 32)) Bool)

(assert (=> b!589223 (= res!376890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589224 () Bool)

(declare-fun res!376896 () Bool)

(declare-fun e!336406 () Bool)

(assert (=> b!589224 (=> (not res!376896) (not e!336406))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589224 (= res!376896 (validKeyInArray!0 (select (arr!17662 a!2986) j!136)))))

(declare-fun b!589226 () Bool)

(declare-datatypes ((Unit!18380 0))(
  ( (Unit!18381) )
))
(declare-fun e!336400 () Unit!18380)

(declare-fun Unit!18382 () Unit!18380)

(assert (=> b!589226 (= e!336400 Unit!18382)))

(assert (=> b!589226 false))

(declare-fun b!589227 () Bool)

(declare-fun Unit!18383 () Unit!18380)

(assert (=> b!589227 (= e!336400 Unit!18383)))

(declare-fun b!589228 () Bool)

(declare-fun res!376893 () Bool)

(assert (=> b!589228 (=> (not res!376893) (not e!336403))))

(declare-datatypes ((List!11756 0))(
  ( (Nil!11753) (Cons!11752 (h!12797 (_ BitVec 64)) (t!17992 List!11756)) )
))
(declare-fun arrayNoDuplicates!0 (array!36786 (_ BitVec 32) List!11756) Bool)

(assert (=> b!589228 (= res!376893 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11753))))

(declare-fun b!589229 () Bool)

(declare-fun res!376898 () Bool)

(assert (=> b!589229 (=> (not res!376898) (not e!336403))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589229 (= res!376898 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17662 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589230 () Bool)

(assert (=> b!589230 (= e!336406 e!336403)))

(declare-fun res!376895 () Bool)

(assert (=> b!589230 (=> (not res!376895) (not e!336403))))

(declare-fun lt!267293 () SeekEntryResult!6109)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589230 (= res!376895 (or (= lt!267293 (MissingZero!6109 i!1108)) (= lt!267293 (MissingVacant!6109 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36786 (_ BitVec 32)) SeekEntryResult!6109)

(assert (=> b!589230 (= lt!267293 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!589231 () Bool)

(declare-fun e!336401 () Bool)

(declare-fun e!336405 () Bool)

(assert (=> b!589231 (= e!336401 e!336405)))

(declare-fun res!376899 () Bool)

(assert (=> b!589231 (=> (not res!376899) (not e!336405))))

(assert (=> b!589231 (= res!376899 (and (= lt!267294 (Found!6109 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17662 a!2986) index!984) (select (arr!17662 a!2986) j!136))) (not (= (select (arr!17662 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36786 (_ BitVec 32)) SeekEntryResult!6109)

(assert (=> b!589231 (= lt!267294 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17662 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589232 () Bool)

(declare-fun res!376901 () Bool)

(assert (=> b!589232 (=> (not res!376901) (not e!336406))))

(assert (=> b!589232 (= res!376901 (and (= (size!18026 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18026 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18026 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589233 () Bool)

(assert (=> b!589233 (= e!336403 e!336401)))

(declare-fun res!376892 () Bool)

(assert (=> b!589233 (=> (not res!376892) (not e!336401))))

(assert (=> b!589233 (= res!376892 (= (select (store (arr!17662 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267290 () array!36786)

(assert (=> b!589233 (= lt!267290 (array!36787 (store (arr!17662 a!2986) i!1108 k0!1786) (size!18026 a!2986)))))

(declare-fun res!376894 () Bool)

(assert (=> start!53988 (=> (not res!376894) (not e!336406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53988 (= res!376894 (validMask!0 mask!3053))))

(assert (=> start!53988 e!336406))

(assert (=> start!53988 true))

(declare-fun array_inv!13436 (array!36786) Bool)

(assert (=> start!53988 (array_inv!13436 a!2986)))

(declare-fun b!589225 () Bool)

(assert (=> b!589225 (= e!336405 (not true))))

(declare-fun lt!267291 () Unit!18380)

(assert (=> b!589225 (= lt!267291 e!336400)))

(declare-fun c!66533 () Bool)

(declare-fun lt!267296 () (_ BitVec 64))

(assert (=> b!589225 (= c!66533 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267296 lt!267290 mask!3053) Undefined!6109))))

(assert (=> b!589225 e!336404))

(declare-fun res!376891 () Bool)

(assert (=> b!589225 (=> (not res!376891) (not e!336404))))

(declare-fun lt!267289 () (_ BitVec 32))

(assert (=> b!589225 (= res!376891 (= lt!267295 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267289 vacantSpotIndex!68 lt!267296 lt!267290 mask!3053)))))

(assert (=> b!589225 (= lt!267295 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267289 vacantSpotIndex!68 (select (arr!17662 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589225 (= lt!267296 (select (store (arr!17662 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267292 () Unit!18380)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36786 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18380)

(assert (=> b!589225 (= lt!267292 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267289 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589225 (= lt!267289 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589234 () Bool)

(declare-fun res!376897 () Bool)

(assert (=> b!589234 (=> (not res!376897) (not e!336406))))

(declare-fun arrayContainsKey!0 (array!36786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589234 (= res!376897 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589235 () Bool)

(declare-fun res!376900 () Bool)

(assert (=> b!589235 (=> (not res!376900) (not e!336406))))

(assert (=> b!589235 (= res!376900 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53988 res!376894) b!589232))

(assert (= (and b!589232 res!376901) b!589224))

(assert (= (and b!589224 res!376896) b!589235))

(assert (= (and b!589235 res!376900) b!589234))

(assert (= (and b!589234 res!376897) b!589230))

(assert (= (and b!589230 res!376895) b!589223))

(assert (= (and b!589223 res!376890) b!589228))

(assert (= (and b!589228 res!376893) b!589229))

(assert (= (and b!589229 res!376898) b!589233))

(assert (= (and b!589233 res!376892) b!589231))

(assert (= (and b!589231 res!376899) b!589225))

(assert (= (and b!589225 res!376891) b!589222))

(assert (= (and b!589225 c!66533) b!589226))

(assert (= (and b!589225 (not c!66533)) b!589227))

(declare-fun m!567803 () Bool)

(assert (=> b!589234 m!567803))

(declare-fun m!567805 () Bool)

(assert (=> b!589235 m!567805))

(declare-fun m!567807 () Bool)

(assert (=> b!589231 m!567807))

(declare-fun m!567809 () Bool)

(assert (=> b!589231 m!567809))

(assert (=> b!589231 m!567809))

(declare-fun m!567811 () Bool)

(assert (=> b!589231 m!567811))

(declare-fun m!567813 () Bool)

(assert (=> b!589229 m!567813))

(declare-fun m!567815 () Bool)

(assert (=> b!589230 m!567815))

(declare-fun m!567817 () Bool)

(assert (=> start!53988 m!567817))

(declare-fun m!567819 () Bool)

(assert (=> start!53988 m!567819))

(declare-fun m!567821 () Bool)

(assert (=> b!589228 m!567821))

(declare-fun m!567823 () Bool)

(assert (=> b!589223 m!567823))

(declare-fun m!567825 () Bool)

(assert (=> b!589233 m!567825))

(declare-fun m!567827 () Bool)

(assert (=> b!589233 m!567827))

(assert (=> b!589224 m!567809))

(assert (=> b!589224 m!567809))

(declare-fun m!567829 () Bool)

(assert (=> b!589224 m!567829))

(declare-fun m!567831 () Bool)

(assert (=> b!589225 m!567831))

(declare-fun m!567833 () Bool)

(assert (=> b!589225 m!567833))

(declare-fun m!567835 () Bool)

(assert (=> b!589225 m!567835))

(declare-fun m!567837 () Bool)

(assert (=> b!589225 m!567837))

(assert (=> b!589225 m!567809))

(assert (=> b!589225 m!567825))

(declare-fun m!567839 () Bool)

(assert (=> b!589225 m!567839))

(assert (=> b!589225 m!567809))

(declare-fun m!567841 () Bool)

(assert (=> b!589225 m!567841))

(check-sat (not b!589231) (not b!589228) (not b!589224) (not b!589225) (not b!589230) (not b!589223) (not b!589234) (not start!53988) (not b!589235))
(check-sat)
