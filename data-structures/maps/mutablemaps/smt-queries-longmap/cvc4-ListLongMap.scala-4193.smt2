; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57268 () Bool)

(assert start!57268)

(declare-fun b!633321 () Bool)

(declare-datatypes ((Unit!21318 0))(
  ( (Unit!21319) )
))
(declare-fun e!362130 () Unit!21318)

(declare-fun Unit!21320 () Unit!21318)

(assert (=> b!633321 (= e!362130 Unit!21320)))

(assert (=> b!633321 false))

(declare-fun b!633322 () Bool)

(declare-fun e!362129 () Bool)

(declare-fun e!362124 () Bool)

(assert (=> b!633322 (= e!362129 e!362124)))

(declare-fun res!409649 () Bool)

(assert (=> b!633322 (=> res!409649 e!362124)))

(declare-fun lt!292768 () (_ BitVec 64))

(declare-fun lt!292762 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38134 0))(
  ( (array!38135 (arr!18293 (Array (_ BitVec 32) (_ BitVec 64))) (size!18657 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38134)

(assert (=> b!633322 (= res!409649 (or (not (= (select (arr!18293 a!2986) j!136) lt!292768)) (not (= (select (arr!18293 a!2986) j!136) lt!292762)) (bvsge j!136 index!984)))))

(declare-fun b!633323 () Bool)

(declare-fun e!362132 () Bool)

(declare-fun e!362128 () Bool)

(assert (=> b!633323 (= e!362132 e!362128)))

(declare-fun res!409651 () Bool)

(assert (=> b!633323 (=> (not res!409651) (not e!362128))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6740 0))(
  ( (MissingZero!6740 (index!29258 (_ BitVec 32))) (Found!6740 (index!29259 (_ BitVec 32))) (Intermediate!6740 (undefined!7552 Bool) (index!29260 (_ BitVec 32)) (x!58026 (_ BitVec 32))) (Undefined!6740) (MissingVacant!6740 (index!29261 (_ BitVec 32))) )
))
(declare-fun lt!292764 () SeekEntryResult!6740)

(assert (=> b!633323 (= res!409651 (and (= lt!292764 (Found!6740 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18293 a!2986) index!984) (select (arr!18293 a!2986) j!136))) (not (= (select (arr!18293 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38134 (_ BitVec 32)) SeekEntryResult!6740)

(assert (=> b!633323 (= lt!292764 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18293 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633324 () Bool)

(declare-fun e!362133 () Bool)

(assert (=> b!633324 (= e!362133 true)))

(assert (=> b!633324 e!362129))

(declare-fun res!409652 () Bool)

(assert (=> b!633324 (=> (not res!409652) (not e!362129))))

(assert (=> b!633324 (= res!409652 (= lt!292762 (select (arr!18293 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!633324 (= lt!292762 (select (store (arr!18293 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633325 () Bool)

(declare-fun e!362131 () Bool)

(declare-fun e!362134 () Bool)

(assert (=> b!633325 (= e!362131 e!362134)))

(declare-fun res!409645 () Bool)

(assert (=> b!633325 (=> (not res!409645) (not e!362134))))

(declare-fun lt!292767 () SeekEntryResult!6740)

(assert (=> b!633325 (= res!409645 (or (= lt!292767 (MissingZero!6740 i!1108)) (= lt!292767 (MissingVacant!6740 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38134 (_ BitVec 32)) SeekEntryResult!6740)

(assert (=> b!633325 (= lt!292767 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633326 () Bool)

(assert (=> b!633326 (= e!362134 e!362132)))

(declare-fun res!409643 () Bool)

(assert (=> b!633326 (=> (not res!409643) (not e!362132))))

(assert (=> b!633326 (= res!409643 (= (select (store (arr!18293 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292770 () array!38134)

(assert (=> b!633326 (= lt!292770 (array!38135 (store (arr!18293 a!2986) i!1108 k!1786) (size!18657 a!2986)))))

(declare-fun b!633327 () Bool)

(declare-fun res!409650 () Bool)

(assert (=> b!633327 (=> (not res!409650) (not e!362131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633327 (= res!409650 (validKeyInArray!0 k!1786))))

(declare-fun e!362125 () Bool)

(declare-fun b!633328 () Bool)

(declare-fun arrayContainsKey!0 (array!38134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633328 (= e!362125 (arrayContainsKey!0 lt!292770 (select (arr!18293 a!2986) j!136) index!984))))

(declare-fun b!633329 () Bool)

(assert (=> b!633329 (= e!362124 e!362125)))

(declare-fun res!409637 () Bool)

(assert (=> b!633329 (=> (not res!409637) (not e!362125))))

(assert (=> b!633329 (= res!409637 (arrayContainsKey!0 lt!292770 (select (arr!18293 a!2986) j!136) j!136))))

(declare-fun b!633330 () Bool)

(declare-fun res!409640 () Bool)

(assert (=> b!633330 (=> (not res!409640) (not e!362134))))

(assert (=> b!633330 (= res!409640 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18293 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633331 () Bool)

(declare-fun res!409644 () Bool)

(assert (=> b!633331 (=> (not res!409644) (not e!362134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38134 (_ BitVec 32)) Bool)

(assert (=> b!633331 (= res!409644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633332 () Bool)

(declare-fun Unit!21321 () Unit!21318)

(assert (=> b!633332 (= e!362130 Unit!21321)))

(declare-fun b!633333 () Bool)

(declare-fun res!409638 () Bool)

(assert (=> b!633333 (=> (not res!409638) (not e!362131))))

(assert (=> b!633333 (= res!409638 (and (= (size!18657 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18657 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18657 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633334 () Bool)

(declare-fun res!409641 () Bool)

(assert (=> b!633334 (=> (not res!409641) (not e!362131))))

(assert (=> b!633334 (= res!409641 (validKeyInArray!0 (select (arr!18293 a!2986) j!136)))))

(declare-fun b!633335 () Bool)

(declare-fun res!409647 () Bool)

(assert (=> b!633335 (=> (not res!409647) (not e!362131))))

(assert (=> b!633335 (= res!409647 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633336 () Bool)

(declare-fun res!409648 () Bool)

(assert (=> b!633336 (=> (not res!409648) (not e!362134))))

(declare-datatypes ((List!12387 0))(
  ( (Nil!12384) (Cons!12383 (h!13428 (_ BitVec 64)) (t!18623 List!12387)) )
))
(declare-fun arrayNoDuplicates!0 (array!38134 (_ BitVec 32) List!12387) Bool)

(assert (=> b!633336 (= res!409648 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12384))))

(declare-fun b!633337 () Bool)

(declare-fun e!362126 () Bool)

(declare-fun lt!292769 () SeekEntryResult!6740)

(assert (=> b!633337 (= e!362126 (= lt!292764 lt!292769))))

(declare-fun b!633338 () Bool)

(assert (=> b!633338 (= e!362128 (not e!362133))))

(declare-fun res!409646 () Bool)

(assert (=> b!633338 (=> res!409646 e!362133)))

(declare-fun lt!292765 () SeekEntryResult!6740)

(assert (=> b!633338 (= res!409646 (not (= lt!292765 (Found!6740 index!984))))))

(declare-fun lt!292761 () Unit!21318)

(assert (=> b!633338 (= lt!292761 e!362130)))

(declare-fun c!72209 () Bool)

(assert (=> b!633338 (= c!72209 (= lt!292765 Undefined!6740))))

(assert (=> b!633338 (= lt!292765 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292768 lt!292770 mask!3053))))

(assert (=> b!633338 e!362126))

(declare-fun res!409642 () Bool)

(assert (=> b!633338 (=> (not res!409642) (not e!362126))))

(declare-fun lt!292766 () (_ BitVec 32))

(assert (=> b!633338 (= res!409642 (= lt!292769 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292766 vacantSpotIndex!68 lt!292768 lt!292770 mask!3053)))))

(assert (=> b!633338 (= lt!292769 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292766 vacantSpotIndex!68 (select (arr!18293 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633338 (= lt!292768 (select (store (arr!18293 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292763 () Unit!21318)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38134 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21318)

(assert (=> b!633338 (= lt!292763 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292766 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633338 (= lt!292766 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!409639 () Bool)

(assert (=> start!57268 (=> (not res!409639) (not e!362131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57268 (= res!409639 (validMask!0 mask!3053))))

(assert (=> start!57268 e!362131))

(assert (=> start!57268 true))

(declare-fun array_inv!14067 (array!38134) Bool)

(assert (=> start!57268 (array_inv!14067 a!2986)))

(assert (= (and start!57268 res!409639) b!633333))

(assert (= (and b!633333 res!409638) b!633334))

(assert (= (and b!633334 res!409641) b!633327))

(assert (= (and b!633327 res!409650) b!633335))

(assert (= (and b!633335 res!409647) b!633325))

(assert (= (and b!633325 res!409645) b!633331))

(assert (= (and b!633331 res!409644) b!633336))

(assert (= (and b!633336 res!409648) b!633330))

(assert (= (and b!633330 res!409640) b!633326))

(assert (= (and b!633326 res!409643) b!633323))

(assert (= (and b!633323 res!409651) b!633338))

(assert (= (and b!633338 res!409642) b!633337))

(assert (= (and b!633338 c!72209) b!633321))

(assert (= (and b!633338 (not c!72209)) b!633332))

(assert (= (and b!633338 (not res!409646)) b!633324))

(assert (= (and b!633324 res!409652) b!633322))

(assert (= (and b!633322 (not res!409649)) b!633329))

(assert (= (and b!633329 res!409637) b!633328))

(declare-fun m!608033 () Bool)

(assert (=> b!633330 m!608033))

(declare-fun m!608035 () Bool)

(assert (=> b!633336 m!608035))

(declare-fun m!608037 () Bool)

(assert (=> b!633323 m!608037))

(declare-fun m!608039 () Bool)

(assert (=> b!633323 m!608039))

(assert (=> b!633323 m!608039))

(declare-fun m!608041 () Bool)

(assert (=> b!633323 m!608041))

(declare-fun m!608043 () Bool)

(assert (=> b!633325 m!608043))

(declare-fun m!608045 () Bool)

(assert (=> start!57268 m!608045))

(declare-fun m!608047 () Bool)

(assert (=> start!57268 m!608047))

(assert (=> b!633329 m!608039))

(assert (=> b!633329 m!608039))

(declare-fun m!608049 () Bool)

(assert (=> b!633329 m!608049))

(declare-fun m!608051 () Bool)

(assert (=> b!633327 m!608051))

(assert (=> b!633324 m!608039))

(declare-fun m!608053 () Bool)

(assert (=> b!633324 m!608053))

(declare-fun m!608055 () Bool)

(assert (=> b!633324 m!608055))

(assert (=> b!633322 m!608039))

(assert (=> b!633326 m!608053))

(declare-fun m!608057 () Bool)

(assert (=> b!633326 m!608057))

(assert (=> b!633328 m!608039))

(assert (=> b!633328 m!608039))

(declare-fun m!608059 () Bool)

(assert (=> b!633328 m!608059))

(declare-fun m!608061 () Bool)

(assert (=> b!633335 m!608061))

(assert (=> b!633334 m!608039))

(assert (=> b!633334 m!608039))

(declare-fun m!608063 () Bool)

(assert (=> b!633334 m!608063))

(assert (=> b!633338 m!608039))

(declare-fun m!608065 () Bool)

(assert (=> b!633338 m!608065))

(declare-fun m!608067 () Bool)

(assert (=> b!633338 m!608067))

(declare-fun m!608069 () Bool)

(assert (=> b!633338 m!608069))

(assert (=> b!633338 m!608039))

(assert (=> b!633338 m!608053))

(declare-fun m!608071 () Bool)

(assert (=> b!633338 m!608071))

(declare-fun m!608073 () Bool)

(assert (=> b!633338 m!608073))

(declare-fun m!608075 () Bool)

(assert (=> b!633338 m!608075))

(declare-fun m!608077 () Bool)

(assert (=> b!633331 m!608077))

(push 1)

