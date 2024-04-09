; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54002 () Bool)

(assert start!54002)

(declare-fun b!589533 () Bool)

(declare-datatypes ((Unit!18408 0))(
  ( (Unit!18409) )
))
(declare-fun e!336566 () Unit!18408)

(declare-fun Unit!18410 () Unit!18408)

(assert (=> b!589533 (= e!336566 Unit!18410)))

(declare-fun b!589534 () Bool)

(declare-fun e!336569 () Bool)

(assert (=> b!589534 (= e!336569 true)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36800 0))(
  ( (array!36801 (arr!17669 (Array (_ BitVec 32) (_ BitVec 64))) (size!18033 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36800)

(assert (=> b!589534 (= (select (store (arr!17669 a!2986) i!1108 k!1786) index!984) (select (arr!17669 a!2986) j!136))))

(declare-fun res!377160 () Bool)

(declare-fun e!336568 () Bool)

(assert (=> start!54002 (=> (not res!377160) (not e!336568))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54002 (= res!377160 (validMask!0 mask!3053))))

(assert (=> start!54002 e!336568))

(assert (=> start!54002 true))

(declare-fun array_inv!13443 (array!36800) Bool)

(assert (=> start!54002 (array_inv!13443 a!2986)))

(declare-fun b!589535 () Bool)

(declare-fun e!336564 () Bool)

(declare-fun e!336570 () Bool)

(assert (=> b!589535 (= e!336564 e!336570)))

(declare-fun res!377161 () Bool)

(assert (=> b!589535 (=> (not res!377161) (not e!336570))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!589535 (= res!377161 (= (select (store (arr!17669 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267473 () array!36800)

(assert (=> b!589535 (= lt!267473 (array!36801 (store (arr!17669 a!2986) i!1108 k!1786) (size!18033 a!2986)))))

(declare-fun b!589536 () Bool)

(declare-fun res!377164 () Bool)

(assert (=> b!589536 (=> (not res!377164) (not e!336564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36800 (_ BitVec 32)) Bool)

(assert (=> b!589536 (= res!377164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589537 () Bool)

(declare-fun res!377167 () Bool)

(assert (=> b!589537 (=> (not res!377167) (not e!336568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589537 (= res!377167 (validKeyInArray!0 k!1786))))

(declare-fun b!589538 () Bool)

(declare-fun e!336565 () Bool)

(assert (=> b!589538 (= e!336565 (not e!336569))))

(declare-fun res!377171 () Bool)

(assert (=> b!589538 (=> res!377171 e!336569)))

(declare-datatypes ((SeekEntryResult!6116 0))(
  ( (MissingZero!6116 (index!26694 (_ BitVec 32))) (Found!6116 (index!26695 (_ BitVec 32))) (Intermediate!6116 (undefined!6928 Bool) (index!26696 (_ BitVec 32)) (x!55509 (_ BitVec 32))) (Undefined!6116) (MissingVacant!6116 (index!26697 (_ BitVec 32))) )
))
(declare-fun lt!267467 () SeekEntryResult!6116)

(assert (=> b!589538 (= res!377171 (not (= lt!267467 (Found!6116 index!984))))))

(declare-fun lt!267471 () Unit!18408)

(assert (=> b!589538 (= lt!267471 e!336566)))

(declare-fun c!66554 () Bool)

(assert (=> b!589538 (= c!66554 (= lt!267467 Undefined!6116))))

(declare-fun lt!267470 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36800 (_ BitVec 32)) SeekEntryResult!6116)

(assert (=> b!589538 (= lt!267467 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267470 lt!267473 mask!3053))))

(declare-fun e!336571 () Bool)

(assert (=> b!589538 e!336571))

(declare-fun res!377159 () Bool)

(assert (=> b!589538 (=> (not res!377159) (not e!336571))))

(declare-fun lt!267466 () SeekEntryResult!6116)

(declare-fun lt!267472 () (_ BitVec 32))

(assert (=> b!589538 (= res!377159 (= lt!267466 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267472 vacantSpotIndex!68 lt!267470 lt!267473 mask!3053)))))

(assert (=> b!589538 (= lt!267466 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267472 vacantSpotIndex!68 (select (arr!17669 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589538 (= lt!267470 (select (store (arr!17669 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267469 () Unit!18408)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36800 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18408)

(assert (=> b!589538 (= lt!267469 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267472 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589538 (= lt!267472 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589539 () Bool)

(assert (=> b!589539 (= e!336570 e!336565)))

(declare-fun res!377168 () Bool)

(assert (=> b!589539 (=> (not res!377168) (not e!336565))))

(declare-fun lt!267468 () SeekEntryResult!6116)

(assert (=> b!589539 (= res!377168 (and (= lt!267468 (Found!6116 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17669 a!2986) index!984) (select (arr!17669 a!2986) j!136))) (not (= (select (arr!17669 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589539 (= lt!267468 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17669 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589540 () Bool)

(declare-fun res!377166 () Bool)

(assert (=> b!589540 (=> (not res!377166) (not e!336568))))

(declare-fun arrayContainsKey!0 (array!36800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589540 (= res!377166 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589541 () Bool)

(declare-fun res!377163 () Bool)

(assert (=> b!589541 (=> (not res!377163) (not e!336568))))

(assert (=> b!589541 (= res!377163 (and (= (size!18033 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18033 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18033 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589542 () Bool)

(declare-fun res!377170 () Bool)

(assert (=> b!589542 (=> (not res!377170) (not e!336564))))

(declare-datatypes ((List!11763 0))(
  ( (Nil!11760) (Cons!11759 (h!12804 (_ BitVec 64)) (t!17999 List!11763)) )
))
(declare-fun arrayNoDuplicates!0 (array!36800 (_ BitVec 32) List!11763) Bool)

(assert (=> b!589542 (= res!377170 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11760))))

(declare-fun b!589543 () Bool)

(declare-fun Unit!18411 () Unit!18408)

(assert (=> b!589543 (= e!336566 Unit!18411)))

(assert (=> b!589543 false))

(declare-fun b!589544 () Bool)

(assert (=> b!589544 (= e!336571 (= lt!267468 lt!267466))))

(declare-fun b!589545 () Bool)

(declare-fun res!377169 () Bool)

(assert (=> b!589545 (=> (not res!377169) (not e!336568))))

(assert (=> b!589545 (= res!377169 (validKeyInArray!0 (select (arr!17669 a!2986) j!136)))))

(declare-fun b!589546 () Bool)

(assert (=> b!589546 (= e!336568 e!336564)))

(declare-fun res!377165 () Bool)

(assert (=> b!589546 (=> (not res!377165) (not e!336564))))

(declare-fun lt!267465 () SeekEntryResult!6116)

(assert (=> b!589546 (= res!377165 (or (= lt!267465 (MissingZero!6116 i!1108)) (= lt!267465 (MissingVacant!6116 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36800 (_ BitVec 32)) SeekEntryResult!6116)

(assert (=> b!589546 (= lt!267465 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589547 () Bool)

(declare-fun res!377162 () Bool)

(assert (=> b!589547 (=> (not res!377162) (not e!336564))))

(assert (=> b!589547 (= res!377162 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17669 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!54002 res!377160) b!589541))

(assert (= (and b!589541 res!377163) b!589545))

(assert (= (and b!589545 res!377169) b!589537))

(assert (= (and b!589537 res!377167) b!589540))

(assert (= (and b!589540 res!377166) b!589546))

(assert (= (and b!589546 res!377165) b!589536))

(assert (= (and b!589536 res!377164) b!589542))

(assert (= (and b!589542 res!377170) b!589547))

(assert (= (and b!589547 res!377162) b!589535))

(assert (= (and b!589535 res!377161) b!589539))

(assert (= (and b!589539 res!377168) b!589538))

(assert (= (and b!589538 res!377159) b!589544))

(assert (= (and b!589538 c!66554) b!589543))

(assert (= (and b!589538 (not c!66554)) b!589533))

(assert (= (and b!589538 (not res!377171)) b!589534))

(declare-fun m!568093 () Bool)

(assert (=> b!589536 m!568093))

(declare-fun m!568095 () Bool)

(assert (=> b!589545 m!568095))

(assert (=> b!589545 m!568095))

(declare-fun m!568097 () Bool)

(assert (=> b!589545 m!568097))

(declare-fun m!568099 () Bool)

(assert (=> b!589534 m!568099))

(declare-fun m!568101 () Bool)

(assert (=> b!589534 m!568101))

(assert (=> b!589534 m!568095))

(declare-fun m!568103 () Bool)

(assert (=> b!589539 m!568103))

(assert (=> b!589539 m!568095))

(assert (=> b!589539 m!568095))

(declare-fun m!568105 () Bool)

(assert (=> b!589539 m!568105))

(declare-fun m!568107 () Bool)

(assert (=> b!589540 m!568107))

(declare-fun m!568109 () Bool)

(assert (=> start!54002 m!568109))

(declare-fun m!568111 () Bool)

(assert (=> start!54002 m!568111))

(declare-fun m!568113 () Bool)

(assert (=> b!589542 m!568113))

(declare-fun m!568115 () Bool)

(assert (=> b!589547 m!568115))

(declare-fun m!568117 () Bool)

(assert (=> b!589546 m!568117))

(declare-fun m!568119 () Bool)

(assert (=> b!589537 m!568119))

(declare-fun m!568121 () Bool)

(assert (=> b!589538 m!568121))

(declare-fun m!568123 () Bool)

(assert (=> b!589538 m!568123))

(declare-fun m!568125 () Bool)

(assert (=> b!589538 m!568125))

(assert (=> b!589538 m!568095))

(declare-fun m!568127 () Bool)

(assert (=> b!589538 m!568127))

(declare-fun m!568129 () Bool)

(assert (=> b!589538 m!568129))

(assert (=> b!589538 m!568095))

(declare-fun m!568131 () Bool)

(assert (=> b!589538 m!568131))

(assert (=> b!589538 m!568099))

(assert (=> b!589535 m!568099))

(declare-fun m!568133 () Bool)

(assert (=> b!589535 m!568133))

(push 1)

