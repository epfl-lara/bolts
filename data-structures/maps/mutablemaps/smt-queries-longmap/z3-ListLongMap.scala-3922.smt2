; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53562 () Bool)

(assert start!53562)

(declare-fun b!582699 () Bool)

(declare-fun res!370667 () Bool)

(declare-fun e!334032 () Bool)

(assert (=> b!582699 (=> (not res!370667) (not e!334032))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36417 0))(
  ( (array!36418 (arr!17479 (Array (_ BitVec 32) (_ BitVec 64))) (size!17843 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36417)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582699 (= res!370667 (and (= (size!17843 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17843 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17843 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582700 () Bool)

(declare-fun res!370672 () Bool)

(assert (=> b!582700 (=> (not res!370672) (not e!334032))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582700 (= res!370672 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!370669 () Bool)

(assert (=> start!53562 (=> (not res!370669) (not e!334032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53562 (= res!370669 (validMask!0 mask!3053))))

(assert (=> start!53562 e!334032))

(assert (=> start!53562 true))

(declare-fun array_inv!13253 (array!36417) Bool)

(assert (=> start!53562 (array_inv!13253 a!2986)))

(declare-fun b!582701 () Bool)

(declare-fun res!370668 () Bool)

(declare-fun e!334031 () Bool)

(assert (=> b!582701 (=> (not res!370668) (not e!334031))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582701 (= res!370668 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17479 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17479 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582702 () Bool)

(declare-fun res!370665 () Bool)

(assert (=> b!582702 (=> (not res!370665) (not e!334031))))

(declare-datatypes ((List!11573 0))(
  ( (Nil!11570) (Cons!11569 (h!12614 (_ BitVec 64)) (t!17809 List!11573)) )
))
(declare-fun arrayNoDuplicates!0 (array!36417 (_ BitVec 32) List!11573) Bool)

(assert (=> b!582702 (= res!370665 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11570))))

(declare-fun b!582703 () Bool)

(declare-fun res!370666 () Bool)

(assert (=> b!582703 (=> (not res!370666) (not e!334031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36417 (_ BitVec 32)) Bool)

(assert (=> b!582703 (= res!370666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582704 () Bool)

(assert (=> b!582704 (= e!334031 false)))

(declare-datatypes ((SeekEntryResult!5926 0))(
  ( (MissingZero!5926 (index!25931 (_ BitVec 32))) (Found!5926 (index!25932 (_ BitVec 32))) (Intermediate!5926 (undefined!6738 Bool) (index!25933 (_ BitVec 32)) (x!54806 (_ BitVec 32))) (Undefined!5926) (MissingVacant!5926 (index!25934 (_ BitVec 32))) )
))
(declare-fun lt!265177 () SeekEntryResult!5926)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36417 (_ BitVec 32)) SeekEntryResult!5926)

(assert (=> b!582704 (= lt!265177 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17479 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582705 () Bool)

(declare-fun res!370671 () Bool)

(assert (=> b!582705 (=> (not res!370671) (not e!334032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582705 (= res!370671 (validKeyInArray!0 (select (arr!17479 a!2986) j!136)))))

(declare-fun b!582706 () Bool)

(assert (=> b!582706 (= e!334032 e!334031)))

(declare-fun res!370670 () Bool)

(assert (=> b!582706 (=> (not res!370670) (not e!334031))))

(declare-fun lt!265178 () SeekEntryResult!5926)

(assert (=> b!582706 (= res!370670 (or (= lt!265178 (MissingZero!5926 i!1108)) (= lt!265178 (MissingVacant!5926 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36417 (_ BitVec 32)) SeekEntryResult!5926)

(assert (=> b!582706 (= lt!265178 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582707 () Bool)

(declare-fun res!370673 () Bool)

(assert (=> b!582707 (=> (not res!370673) (not e!334032))))

(assert (=> b!582707 (= res!370673 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53562 res!370669) b!582699))

(assert (= (and b!582699 res!370667) b!582705))

(assert (= (and b!582705 res!370671) b!582707))

(assert (= (and b!582707 res!370673) b!582700))

(assert (= (and b!582700 res!370672) b!582706))

(assert (= (and b!582706 res!370670) b!582703))

(assert (= (and b!582703 res!370666) b!582702))

(assert (= (and b!582702 res!370665) b!582701))

(assert (= (and b!582701 res!370668) b!582704))

(declare-fun m!561237 () Bool)

(assert (=> b!582702 m!561237))

(declare-fun m!561239 () Bool)

(assert (=> b!582706 m!561239))

(declare-fun m!561241 () Bool)

(assert (=> b!582700 m!561241))

(declare-fun m!561243 () Bool)

(assert (=> b!582703 m!561243))

(declare-fun m!561245 () Bool)

(assert (=> b!582707 m!561245))

(declare-fun m!561247 () Bool)

(assert (=> start!53562 m!561247))

(declare-fun m!561249 () Bool)

(assert (=> start!53562 m!561249))

(declare-fun m!561251 () Bool)

(assert (=> b!582701 m!561251))

(declare-fun m!561253 () Bool)

(assert (=> b!582701 m!561253))

(declare-fun m!561255 () Bool)

(assert (=> b!582701 m!561255))

(declare-fun m!561257 () Bool)

(assert (=> b!582705 m!561257))

(assert (=> b!582705 m!561257))

(declare-fun m!561259 () Bool)

(assert (=> b!582705 m!561259))

(assert (=> b!582704 m!561257))

(assert (=> b!582704 m!561257))

(declare-fun m!561261 () Bool)

(assert (=> b!582704 m!561261))

(check-sat (not b!582704) (not b!582705) (not b!582703) (not b!582706) (not start!53562) (not b!582700) (not b!582707) (not b!582702))
(check-sat)
