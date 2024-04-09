; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54014 () Bool)

(assert start!54014)

(declare-fun b!589803 () Bool)

(declare-fun res!377402 () Bool)

(declare-fun e!336710 () Bool)

(assert (=> b!589803 (=> (not res!377402) (not e!336710))))

(declare-datatypes ((array!36812 0))(
  ( (array!36813 (arr!17675 (Array (_ BitVec 32) (_ BitVec 64))) (size!18039 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36812)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589803 (= res!377402 (validKeyInArray!0 (select (arr!17675 a!2986) j!136)))))

(declare-fun b!589804 () Bool)

(declare-fun e!336712 () Bool)

(assert (=> b!589804 (= e!336710 e!336712)))

(declare-fun res!377404 () Bool)

(assert (=> b!589804 (=> (not res!377404) (not e!336712))))

(declare-datatypes ((SeekEntryResult!6122 0))(
  ( (MissingZero!6122 (index!26718 (_ BitVec 32))) (Found!6122 (index!26719 (_ BitVec 32))) (Intermediate!6122 (undefined!6934 Bool) (index!26720 (_ BitVec 32)) (x!55531 (_ BitVec 32))) (Undefined!6122) (MissingVacant!6122 (index!26721 (_ BitVec 32))) )
))
(declare-fun lt!267627 () SeekEntryResult!6122)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589804 (= res!377404 (or (= lt!267627 (MissingZero!6122 i!1108)) (= lt!267627 (MissingVacant!6122 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36812 (_ BitVec 32)) SeekEntryResult!6122)

(assert (=> b!589804 (= lt!267627 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589805 () Bool)

(declare-fun e!336711 () Bool)

(declare-fun e!336714 () Bool)

(assert (=> b!589805 (= e!336711 e!336714)))

(declare-fun res!377401 () Bool)

(assert (=> b!589805 (=> (not res!377401) (not e!336714))))

(declare-fun lt!267629 () SeekEntryResult!6122)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589805 (= res!377401 (and (= lt!267629 (Found!6122 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17675 a!2986) index!984) (select (arr!17675 a!2986) j!136))) (not (= (select (arr!17675 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36812 (_ BitVec 32)) SeekEntryResult!6122)

(assert (=> b!589805 (= lt!267629 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17675 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589806 () Bool)

(declare-fun res!377403 () Bool)

(assert (=> b!589806 (=> (not res!377403) (not e!336710))))

(assert (=> b!589806 (= res!377403 (and (= (size!18039 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18039 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18039 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589807 () Bool)

(declare-datatypes ((Unit!18432 0))(
  ( (Unit!18433) )
))
(declare-fun e!336715 () Unit!18432)

(declare-fun Unit!18434 () Unit!18432)

(assert (=> b!589807 (= e!336715 Unit!18434)))

(assert (=> b!589807 false))

(declare-fun lt!267631 () (_ BitVec 64))

(declare-fun b!589808 () Bool)

(declare-fun e!336713 () Bool)

(assert (=> b!589808 (= e!336713 (or (not (= (select (arr!17675 a!2986) j!136) lt!267631)) (not (= (select (arr!17675 a!2986) j!136) (select (store (arr!17675 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984) (bvslt (size!18039 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!589808 (= (select (store (arr!17675 a!2986) i!1108 k!1786) index!984) (select (arr!17675 a!2986) j!136))))

(declare-fun res!377396 () Bool)

(assert (=> start!54014 (=> (not res!377396) (not e!336710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54014 (= res!377396 (validMask!0 mask!3053))))

(assert (=> start!54014 e!336710))

(assert (=> start!54014 true))

(declare-fun array_inv!13449 (array!36812) Bool)

(assert (=> start!54014 (array_inv!13449 a!2986)))

(declare-fun b!589809 () Bool)

(declare-fun e!336708 () Bool)

(declare-fun lt!267628 () SeekEntryResult!6122)

(assert (=> b!589809 (= e!336708 (= lt!267629 lt!267628))))

(declare-fun b!589810 () Bool)

(declare-fun res!377399 () Bool)

(assert (=> b!589810 (=> (not res!377399) (not e!336712))))

(assert (=> b!589810 (= res!377399 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17675 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589811 () Bool)

(declare-fun Unit!18435 () Unit!18432)

(assert (=> b!589811 (= e!336715 Unit!18435)))

(declare-fun b!589812 () Bool)

(declare-fun res!377405 () Bool)

(assert (=> b!589812 (=> (not res!377405) (not e!336712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36812 (_ BitVec 32)) Bool)

(assert (=> b!589812 (= res!377405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589813 () Bool)

(declare-fun res!377400 () Bool)

(assert (=> b!589813 (=> (not res!377400) (not e!336710))))

(declare-fun arrayContainsKey!0 (array!36812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589813 (= res!377400 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!589814 () Bool)

(declare-fun res!377397 () Bool)

(assert (=> b!589814 (=> (not res!377397) (not e!336712))))

(declare-datatypes ((List!11769 0))(
  ( (Nil!11766) (Cons!11765 (h!12810 (_ BitVec 64)) (t!18005 List!11769)) )
))
(declare-fun arrayNoDuplicates!0 (array!36812 (_ BitVec 32) List!11769) Bool)

(assert (=> b!589814 (= res!377397 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11766))))

(declare-fun b!589815 () Bool)

(declare-fun res!377394 () Bool)

(assert (=> b!589815 (=> (not res!377394) (not e!336710))))

(assert (=> b!589815 (= res!377394 (validKeyInArray!0 k!1786))))

(declare-fun b!589816 () Bool)

(assert (=> b!589816 (= e!336714 (not e!336713))))

(declare-fun res!377395 () Bool)

(assert (=> b!589816 (=> res!377395 e!336713)))

(declare-fun lt!267634 () SeekEntryResult!6122)

(assert (=> b!589816 (= res!377395 (not (= lt!267634 (Found!6122 index!984))))))

(declare-fun lt!267635 () Unit!18432)

(assert (=> b!589816 (= lt!267635 e!336715)))

(declare-fun c!66572 () Bool)

(assert (=> b!589816 (= c!66572 (= lt!267634 Undefined!6122))))

(declare-fun lt!267630 () array!36812)

(assert (=> b!589816 (= lt!267634 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267631 lt!267630 mask!3053))))

(assert (=> b!589816 e!336708))

(declare-fun res!377398 () Bool)

(assert (=> b!589816 (=> (not res!377398) (not e!336708))))

(declare-fun lt!267632 () (_ BitVec 32))

(assert (=> b!589816 (= res!377398 (= lt!267628 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267632 vacantSpotIndex!68 lt!267631 lt!267630 mask!3053)))))

(assert (=> b!589816 (= lt!267628 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267632 vacantSpotIndex!68 (select (arr!17675 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589816 (= lt!267631 (select (store (arr!17675 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267633 () Unit!18432)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36812 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18432)

(assert (=> b!589816 (= lt!267633 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267632 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589816 (= lt!267632 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589817 () Bool)

(assert (=> b!589817 (= e!336712 e!336711)))

(declare-fun res!377393 () Bool)

(assert (=> b!589817 (=> (not res!377393) (not e!336711))))

(assert (=> b!589817 (= res!377393 (= (select (store (arr!17675 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589817 (= lt!267630 (array!36813 (store (arr!17675 a!2986) i!1108 k!1786) (size!18039 a!2986)))))

(assert (= (and start!54014 res!377396) b!589806))

(assert (= (and b!589806 res!377403) b!589803))

(assert (= (and b!589803 res!377402) b!589815))

(assert (= (and b!589815 res!377394) b!589813))

(assert (= (and b!589813 res!377400) b!589804))

(assert (= (and b!589804 res!377404) b!589812))

(assert (= (and b!589812 res!377405) b!589814))

(assert (= (and b!589814 res!377397) b!589810))

(assert (= (and b!589810 res!377399) b!589817))

(assert (= (and b!589817 res!377393) b!589805))

(assert (= (and b!589805 res!377401) b!589816))

(assert (= (and b!589816 res!377398) b!589809))

(assert (= (and b!589816 c!66572) b!589807))

(assert (= (and b!589816 (not c!66572)) b!589811))

(assert (= (and b!589816 (not res!377395)) b!589808))

(declare-fun m!568345 () Bool)

(assert (=> b!589803 m!568345))

(assert (=> b!589803 m!568345))

(declare-fun m!568347 () Bool)

(assert (=> b!589803 m!568347))

(assert (=> b!589808 m!568345))

(declare-fun m!568349 () Bool)

(assert (=> b!589808 m!568349))

(declare-fun m!568351 () Bool)

(assert (=> b!589808 m!568351))

(declare-fun m!568353 () Bool)

(assert (=> start!54014 m!568353))

(declare-fun m!568355 () Bool)

(assert (=> start!54014 m!568355))

(declare-fun m!568357 () Bool)

(assert (=> b!589804 m!568357))

(declare-fun m!568359 () Bool)

(assert (=> b!589805 m!568359))

(assert (=> b!589805 m!568345))

(assert (=> b!589805 m!568345))

(declare-fun m!568361 () Bool)

(assert (=> b!589805 m!568361))

(declare-fun m!568363 () Bool)

(assert (=> b!589815 m!568363))

(declare-fun m!568365 () Bool)

(assert (=> b!589810 m!568365))

(declare-fun m!568367 () Bool)

(assert (=> b!589813 m!568367))

(assert (=> b!589817 m!568349))

(declare-fun m!568369 () Bool)

(assert (=> b!589817 m!568369))

(declare-fun m!568371 () Bool)

(assert (=> b!589812 m!568371))

(declare-fun m!568373 () Bool)

(assert (=> b!589816 m!568373))

(assert (=> b!589816 m!568345))

(assert (=> b!589816 m!568345))

(declare-fun m!568375 () Bool)

(assert (=> b!589816 m!568375))

(assert (=> b!589816 m!568349))

(declare-fun m!568377 () Bool)

(assert (=> b!589816 m!568377))

(declare-fun m!568379 () Bool)

(assert (=> b!589816 m!568379))

(declare-fun m!568381 () Bool)

(assert (=> b!589816 m!568381))

(declare-fun m!568383 () Bool)

(assert (=> b!589816 m!568383))

(declare-fun m!568385 () Bool)

(assert (=> b!589814 m!568385))

(push 1)

(assert (not b!589805))

(assert (not b!589814))

(assert (not b!589815))

(assert (not b!589812))

(assert (not b!589816))

(assert (not b!589813))

(assert (not b!589803))

(assert (not start!54014))

(assert (not b!589804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

