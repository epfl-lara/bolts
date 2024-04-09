; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53294 () Bool)

(assert start!53294)

(declare-fun b!579045 () Bool)

(declare-fun e!332826 () Bool)

(declare-fun e!332827 () Bool)

(assert (=> b!579045 (= e!332826 e!332827)))

(declare-fun res!367014 () Bool)

(assert (=> b!579045 (=> (not res!367014) (not e!332827))))

(declare-datatypes ((SeekEntryResult!5792 0))(
  ( (MissingZero!5792 (index!25395 (_ BitVec 32))) (Found!5792 (index!25396 (_ BitVec 32))) (Intermediate!5792 (undefined!6604 Bool) (index!25397 (_ BitVec 32)) (x!54312 (_ BitVec 32))) (Undefined!5792) (MissingVacant!5792 (index!25398 (_ BitVec 32))) )
))
(declare-fun lt!264400 () SeekEntryResult!5792)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579045 (= res!367014 (or (= lt!264400 (MissingZero!5792 i!1108)) (= lt!264400 (MissingVacant!5792 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36149 0))(
  ( (array!36150 (arr!17345 (Array (_ BitVec 32) (_ BitVec 64))) (size!17709 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36149)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36149 (_ BitVec 32)) SeekEntryResult!5792)

(assert (=> b!579045 (= lt!264400 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579046 () Bool)

(declare-fun res!367017 () Bool)

(assert (=> b!579046 (=> (not res!367017) (not e!332826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579046 (= res!367017 (validKeyInArray!0 k!1786))))

(declare-fun res!367016 () Bool)

(assert (=> start!53294 (=> (not res!367016) (not e!332826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53294 (= res!367016 (validMask!0 mask!3053))))

(assert (=> start!53294 e!332826))

(assert (=> start!53294 true))

(declare-fun array_inv!13119 (array!36149) Bool)

(assert (=> start!53294 (array_inv!13119 a!2986)))

(declare-fun b!579047 () Bool)

(declare-fun res!367018 () Bool)

(assert (=> b!579047 (=> (not res!367018) (not e!332826))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579047 (= res!367018 (validKeyInArray!0 (select (arr!17345 a!2986) j!136)))))

(declare-fun b!579048 () Bool)

(declare-fun res!367015 () Bool)

(assert (=> b!579048 (=> (not res!367015) (not e!332826))))

(declare-fun arrayContainsKey!0 (array!36149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579048 (= res!367015 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579049 () Bool)

(declare-fun res!367013 () Bool)

(assert (=> b!579049 (=> (not res!367013) (not e!332827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36149 (_ BitVec 32)) Bool)

(assert (=> b!579049 (= res!367013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579050 () Bool)

(assert (=> b!579050 (= e!332827 false)))

(declare-fun lt!264401 () SeekEntryResult!5792)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36149 (_ BitVec 32)) SeekEntryResult!5792)

(assert (=> b!579050 (= lt!264401 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17345 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579051 () Bool)

(declare-fun res!367019 () Bool)

(assert (=> b!579051 (=> (not res!367019) (not e!332826))))

(assert (=> b!579051 (= res!367019 (and (= (size!17709 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17709 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17709 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579052 () Bool)

(declare-fun res!367011 () Bool)

(assert (=> b!579052 (=> (not res!367011) (not e!332827))))

(assert (=> b!579052 (= res!367011 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17345 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17345 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579053 () Bool)

(declare-fun res!367012 () Bool)

(assert (=> b!579053 (=> (not res!367012) (not e!332827))))

(declare-datatypes ((List!11439 0))(
  ( (Nil!11436) (Cons!11435 (h!12480 (_ BitVec 64)) (t!17675 List!11439)) )
))
(declare-fun arrayNoDuplicates!0 (array!36149 (_ BitVec 32) List!11439) Bool)

(assert (=> b!579053 (= res!367012 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11436))))

(assert (= (and start!53294 res!367016) b!579051))

(assert (= (and b!579051 res!367019) b!579047))

(assert (= (and b!579047 res!367018) b!579046))

(assert (= (and b!579046 res!367017) b!579048))

(assert (= (and b!579048 res!367015) b!579045))

(assert (= (and b!579045 res!367014) b!579049))

(assert (= (and b!579049 res!367013) b!579053))

(assert (= (and b!579053 res!367012) b!579052))

(assert (= (and b!579052 res!367011) b!579050))

(declare-fun m!557723 () Bool)

(assert (=> b!579050 m!557723))

(assert (=> b!579050 m!557723))

(declare-fun m!557725 () Bool)

(assert (=> b!579050 m!557725))

(declare-fun m!557727 () Bool)

(assert (=> b!579049 m!557727))

(declare-fun m!557729 () Bool)

(assert (=> b!579045 m!557729))

(declare-fun m!557731 () Bool)

(assert (=> start!53294 m!557731))

(declare-fun m!557733 () Bool)

(assert (=> start!53294 m!557733))

(declare-fun m!557735 () Bool)

(assert (=> b!579046 m!557735))

(declare-fun m!557737 () Bool)

(assert (=> b!579048 m!557737))

(assert (=> b!579047 m!557723))

(assert (=> b!579047 m!557723))

(declare-fun m!557739 () Bool)

(assert (=> b!579047 m!557739))

(declare-fun m!557741 () Bool)

(assert (=> b!579053 m!557741))

(declare-fun m!557743 () Bool)

(assert (=> b!579052 m!557743))

(declare-fun m!557745 () Bool)

(assert (=> b!579052 m!557745))

(declare-fun m!557747 () Bool)

(assert (=> b!579052 m!557747))

(push 1)

(assert (not b!579047))

(assert (not b!579046))

(assert (not b!579050))

(assert (not b!579048))

(assert (not b!579045))

(assert (not b!579053))

(assert (not b!579049))

(assert (not start!53294))

(check-sat)

