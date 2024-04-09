; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54000 () Bool)

(assert start!54000)

(declare-fun res!377126 () Bool)

(declare-fun e!336540 () Bool)

(assert (=> start!54000 (=> (not res!377126) (not e!336540))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54000 (= res!377126 (validMask!0 mask!3053))))

(assert (=> start!54000 e!336540))

(assert (=> start!54000 true))

(declare-datatypes ((array!36798 0))(
  ( (array!36799 (arr!17668 (Array (_ BitVec 32) (_ BitVec 64))) (size!18032 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36798)

(declare-fun array_inv!13442 (array!36798) Bool)

(assert (=> start!54000 (array_inv!13442 a!2986)))

(declare-fun b!589488 () Bool)

(declare-fun e!336546 () Bool)

(assert (=> b!589488 (= e!336546 true)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589488 (= (select (store (arr!17668 a!2986) i!1108 k0!1786) index!984) (select (arr!17668 a!2986) j!136))))

(declare-fun b!589489 () Bool)

(declare-datatypes ((Unit!18404 0))(
  ( (Unit!18405) )
))
(declare-fun e!336544 () Unit!18404)

(declare-fun Unit!18406 () Unit!18404)

(assert (=> b!589489 (= e!336544 Unit!18406)))

(declare-fun b!589490 () Bool)

(declare-fun res!377123 () Bool)

(declare-fun e!336547 () Bool)

(assert (=> b!589490 (=> (not res!377123) (not e!336547))))

(declare-datatypes ((List!11762 0))(
  ( (Nil!11759) (Cons!11758 (h!12803 (_ BitVec 64)) (t!17998 List!11762)) )
))
(declare-fun arrayNoDuplicates!0 (array!36798 (_ BitVec 32) List!11762) Bool)

(assert (=> b!589490 (= res!377123 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11759))))

(declare-fun b!589491 () Bool)

(declare-fun res!377120 () Bool)

(assert (=> b!589491 (=> (not res!377120) (not e!336540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589491 (= res!377120 (validKeyInArray!0 (select (arr!17668 a!2986) j!136)))))

(declare-fun b!589492 () Bool)

(declare-fun e!336543 () Bool)

(assert (=> b!589492 (= e!336547 e!336543)))

(declare-fun res!377129 () Bool)

(assert (=> b!589492 (=> (not res!377129) (not e!336543))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!589492 (= res!377129 (= (select (store (arr!17668 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267446 () array!36798)

(assert (=> b!589492 (= lt!267446 (array!36799 (store (arr!17668 a!2986) i!1108 k0!1786) (size!18032 a!2986)))))

(declare-fun b!589493 () Bool)

(declare-fun res!377122 () Bool)

(assert (=> b!589493 (=> (not res!377122) (not e!336540))))

(assert (=> b!589493 (= res!377122 (validKeyInArray!0 k0!1786))))

(declare-fun b!589494 () Bool)

(declare-fun e!336542 () Bool)

(declare-datatypes ((SeekEntryResult!6115 0))(
  ( (MissingZero!6115 (index!26690 (_ BitVec 32))) (Found!6115 (index!26691 (_ BitVec 32))) (Intermediate!6115 (undefined!6927 Bool) (index!26692 (_ BitVec 32)) (x!55508 (_ BitVec 32))) (Undefined!6115) (MissingVacant!6115 (index!26693 (_ BitVec 32))) )
))
(declare-fun lt!267438 () SeekEntryResult!6115)

(declare-fun lt!267439 () SeekEntryResult!6115)

(assert (=> b!589494 (= e!336542 (= lt!267438 lt!267439))))

(declare-fun b!589495 () Bool)

(declare-fun e!336545 () Bool)

(assert (=> b!589495 (= e!336543 e!336545)))

(declare-fun res!377130 () Bool)

(assert (=> b!589495 (=> (not res!377130) (not e!336545))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!589495 (= res!377130 (and (= lt!267438 (Found!6115 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17668 a!2986) index!984) (select (arr!17668 a!2986) j!136))) (not (= (select (arr!17668 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36798 (_ BitVec 32)) SeekEntryResult!6115)

(assert (=> b!589495 (= lt!267438 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17668 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589496 () Bool)

(declare-fun res!377125 () Bool)

(assert (=> b!589496 (=> (not res!377125) (not e!336547))))

(assert (=> b!589496 (= res!377125 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17668 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589497 () Bool)

(declare-fun res!377132 () Bool)

(assert (=> b!589497 (=> (not res!377132) (not e!336547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36798 (_ BitVec 32)) Bool)

(assert (=> b!589497 (= res!377132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589498 () Bool)

(declare-fun res!377128 () Bool)

(assert (=> b!589498 (=> (not res!377128) (not e!336540))))

(assert (=> b!589498 (= res!377128 (and (= (size!18032 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18032 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18032 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589499 () Bool)

(declare-fun Unit!18407 () Unit!18404)

(assert (=> b!589499 (= e!336544 Unit!18407)))

(assert (=> b!589499 false))

(declare-fun b!589500 () Bool)

(assert (=> b!589500 (= e!336545 (not e!336546))))

(declare-fun res!377121 () Bool)

(assert (=> b!589500 (=> res!377121 e!336546)))

(declare-fun lt!267444 () SeekEntryResult!6115)

(assert (=> b!589500 (= res!377121 (not (= lt!267444 (Found!6115 index!984))))))

(declare-fun lt!267445 () Unit!18404)

(assert (=> b!589500 (= lt!267445 e!336544)))

(declare-fun c!66551 () Bool)

(assert (=> b!589500 (= c!66551 (= lt!267444 Undefined!6115))))

(declare-fun lt!267440 () (_ BitVec 64))

(assert (=> b!589500 (= lt!267444 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267440 lt!267446 mask!3053))))

(assert (=> b!589500 e!336542))

(declare-fun res!377127 () Bool)

(assert (=> b!589500 (=> (not res!377127) (not e!336542))))

(declare-fun lt!267443 () (_ BitVec 32))

(assert (=> b!589500 (= res!377127 (= lt!267439 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267443 vacantSpotIndex!68 lt!267440 lt!267446 mask!3053)))))

(assert (=> b!589500 (= lt!267439 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267443 vacantSpotIndex!68 (select (arr!17668 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589500 (= lt!267440 (select (store (arr!17668 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267441 () Unit!18404)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36798 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18404)

(assert (=> b!589500 (= lt!267441 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267443 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589500 (= lt!267443 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589501 () Bool)

(assert (=> b!589501 (= e!336540 e!336547)))

(declare-fun res!377124 () Bool)

(assert (=> b!589501 (=> (not res!377124) (not e!336547))))

(declare-fun lt!267442 () SeekEntryResult!6115)

(assert (=> b!589501 (= res!377124 (or (= lt!267442 (MissingZero!6115 i!1108)) (= lt!267442 (MissingVacant!6115 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36798 (_ BitVec 32)) SeekEntryResult!6115)

(assert (=> b!589501 (= lt!267442 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!589502 () Bool)

(declare-fun res!377131 () Bool)

(assert (=> b!589502 (=> (not res!377131) (not e!336540))))

(declare-fun arrayContainsKey!0 (array!36798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589502 (= res!377131 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!54000 res!377126) b!589498))

(assert (= (and b!589498 res!377128) b!589491))

(assert (= (and b!589491 res!377120) b!589493))

(assert (= (and b!589493 res!377122) b!589502))

(assert (= (and b!589502 res!377131) b!589501))

(assert (= (and b!589501 res!377124) b!589497))

(assert (= (and b!589497 res!377132) b!589490))

(assert (= (and b!589490 res!377123) b!589496))

(assert (= (and b!589496 res!377125) b!589492))

(assert (= (and b!589492 res!377129) b!589495))

(assert (= (and b!589495 res!377130) b!589500))

(assert (= (and b!589500 res!377127) b!589494))

(assert (= (and b!589500 c!66551) b!589499))

(assert (= (and b!589500 (not c!66551)) b!589489))

(assert (= (and b!589500 (not res!377121)) b!589488))

(declare-fun m!568051 () Bool)

(assert (=> b!589502 m!568051))

(declare-fun m!568053 () Bool)

(assert (=> b!589492 m!568053))

(declare-fun m!568055 () Bool)

(assert (=> b!589492 m!568055))

(declare-fun m!568057 () Bool)

(assert (=> b!589497 m!568057))

(declare-fun m!568059 () Bool)

(assert (=> b!589495 m!568059))

(declare-fun m!568061 () Bool)

(assert (=> b!589495 m!568061))

(assert (=> b!589495 m!568061))

(declare-fun m!568063 () Bool)

(assert (=> b!589495 m!568063))

(declare-fun m!568065 () Bool)

(assert (=> b!589500 m!568065))

(declare-fun m!568067 () Bool)

(assert (=> b!589500 m!568067))

(assert (=> b!589500 m!568053))

(declare-fun m!568069 () Bool)

(assert (=> b!589500 m!568069))

(declare-fun m!568071 () Bool)

(assert (=> b!589500 m!568071))

(declare-fun m!568073 () Bool)

(assert (=> b!589500 m!568073))

(assert (=> b!589500 m!568061))

(declare-fun m!568075 () Bool)

(assert (=> b!589500 m!568075))

(assert (=> b!589500 m!568061))

(declare-fun m!568077 () Bool)

(assert (=> start!54000 m!568077))

(declare-fun m!568079 () Bool)

(assert (=> start!54000 m!568079))

(declare-fun m!568081 () Bool)

(assert (=> b!589493 m!568081))

(declare-fun m!568083 () Bool)

(assert (=> b!589496 m!568083))

(declare-fun m!568085 () Bool)

(assert (=> b!589490 m!568085))

(assert (=> b!589491 m!568061))

(assert (=> b!589491 m!568061))

(declare-fun m!568087 () Bool)

(assert (=> b!589491 m!568087))

(assert (=> b!589488 m!568053))

(declare-fun m!568089 () Bool)

(assert (=> b!589488 m!568089))

(assert (=> b!589488 m!568061))

(declare-fun m!568091 () Bool)

(assert (=> b!589501 m!568091))

(check-sat (not b!589490) (not b!589493) (not b!589495) (not start!54000) (not b!589501) (not b!589500) (not b!589497) (not b!589502) (not b!589491))
(check-sat)
