; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53556 () Bool)

(assert start!53556)

(declare-fun b!582618 () Bool)

(declare-fun res!370584 () Bool)

(declare-fun e!334005 () Bool)

(assert (=> b!582618 (=> (not res!370584) (not e!334005))))

(declare-datatypes ((array!36411 0))(
  ( (array!36412 (arr!17476 (Array (_ BitVec 32) (_ BitVec 64))) (size!17840 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36411)

(declare-datatypes ((List!11570 0))(
  ( (Nil!11567) (Cons!11566 (h!12611 (_ BitVec 64)) (t!17806 List!11570)) )
))
(declare-fun arrayNoDuplicates!0 (array!36411 (_ BitVec 32) List!11570) Bool)

(assert (=> b!582618 (= res!370584 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11567))))

(declare-fun res!370591 () Bool)

(declare-fun e!334006 () Bool)

(assert (=> start!53556 (=> (not res!370591) (not e!334006))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53556 (= res!370591 (validMask!0 mask!3053))))

(assert (=> start!53556 e!334006))

(assert (=> start!53556 true))

(declare-fun array_inv!13250 (array!36411) Bool)

(assert (=> start!53556 (array_inv!13250 a!2986)))

(declare-fun b!582619 () Bool)

(declare-fun res!370590 () Bool)

(assert (=> b!582619 (=> (not res!370590) (not e!334005))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582619 (= res!370590 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17476 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17476 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582620 () Bool)

(assert (=> b!582620 (= e!334005 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5923 0))(
  ( (MissingZero!5923 (index!25919 (_ BitVec 32))) (Found!5923 (index!25920 (_ BitVec 32))) (Intermediate!5923 (undefined!6735 Bool) (index!25921 (_ BitVec 32)) (x!54795 (_ BitVec 32))) (Undefined!5923) (MissingVacant!5923 (index!25922 (_ BitVec 32))) )
))
(declare-fun lt!265159 () SeekEntryResult!5923)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36411 (_ BitVec 32)) SeekEntryResult!5923)

(assert (=> b!582620 (= lt!265159 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17476 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582621 () Bool)

(declare-fun res!370585 () Bool)

(assert (=> b!582621 (=> (not res!370585) (not e!334006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582621 (= res!370585 (validKeyInArray!0 (select (arr!17476 a!2986) j!136)))))

(declare-fun b!582622 () Bool)

(assert (=> b!582622 (= e!334006 e!334005)))

(declare-fun res!370588 () Bool)

(assert (=> b!582622 (=> (not res!370588) (not e!334005))))

(declare-fun lt!265160 () SeekEntryResult!5923)

(assert (=> b!582622 (= res!370588 (or (= lt!265160 (MissingZero!5923 i!1108)) (= lt!265160 (MissingVacant!5923 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36411 (_ BitVec 32)) SeekEntryResult!5923)

(assert (=> b!582622 (= lt!265160 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582623 () Bool)

(declare-fun res!370592 () Bool)

(assert (=> b!582623 (=> (not res!370592) (not e!334006))))

(declare-fun arrayContainsKey!0 (array!36411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582623 (= res!370592 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582624 () Bool)

(declare-fun res!370587 () Bool)

(assert (=> b!582624 (=> (not res!370587) (not e!334005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36411 (_ BitVec 32)) Bool)

(assert (=> b!582624 (= res!370587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582625 () Bool)

(declare-fun res!370589 () Bool)

(assert (=> b!582625 (=> (not res!370589) (not e!334006))))

(assert (=> b!582625 (= res!370589 (and (= (size!17840 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17840 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17840 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582626 () Bool)

(declare-fun res!370586 () Bool)

(assert (=> b!582626 (=> (not res!370586) (not e!334006))))

(assert (=> b!582626 (= res!370586 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53556 res!370591) b!582625))

(assert (= (and b!582625 res!370589) b!582621))

(assert (= (and b!582621 res!370585) b!582626))

(assert (= (and b!582626 res!370586) b!582623))

(assert (= (and b!582623 res!370592) b!582622))

(assert (= (and b!582622 res!370588) b!582624))

(assert (= (and b!582624 res!370587) b!582618))

(assert (= (and b!582618 res!370584) b!582619))

(assert (= (and b!582619 res!370590) b!582620))

(declare-fun m!561159 () Bool)

(assert (=> b!582620 m!561159))

(assert (=> b!582620 m!561159))

(declare-fun m!561161 () Bool)

(assert (=> b!582620 m!561161))

(declare-fun m!561163 () Bool)

(assert (=> b!582622 m!561163))

(declare-fun m!561165 () Bool)

(assert (=> b!582624 m!561165))

(declare-fun m!561167 () Bool)

(assert (=> b!582618 m!561167))

(declare-fun m!561169 () Bool)

(assert (=> start!53556 m!561169))

(declare-fun m!561171 () Bool)

(assert (=> start!53556 m!561171))

(declare-fun m!561173 () Bool)

(assert (=> b!582626 m!561173))

(declare-fun m!561175 () Bool)

(assert (=> b!582623 m!561175))

(declare-fun m!561177 () Bool)

(assert (=> b!582619 m!561177))

(declare-fun m!561179 () Bool)

(assert (=> b!582619 m!561179))

(declare-fun m!561181 () Bool)

(assert (=> b!582619 m!561181))

(assert (=> b!582621 m!561159))

(assert (=> b!582621 m!561159))

(declare-fun m!561183 () Bool)

(assert (=> b!582621 m!561183))

(check-sat (not start!53556) (not b!582620) (not b!582623) (not b!582621) (not b!582622) (not b!582624) (not b!582626) (not b!582618))
(check-sat)
