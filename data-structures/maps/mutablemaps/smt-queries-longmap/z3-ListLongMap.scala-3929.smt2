; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53604 () Bool)

(assert start!53604)

(declare-fun b!583275 () Bool)

(declare-fun res!371248 () Bool)

(declare-fun e!334221 () Bool)

(assert (=> b!583275 (=> (not res!371248) (not e!334221))))

(declare-datatypes ((array!36459 0))(
  ( (array!36460 (arr!17500 (Array (_ BitVec 32) (_ BitVec 64))) (size!17864 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36459)

(declare-datatypes ((List!11594 0))(
  ( (Nil!11591) (Cons!11590 (h!12635 (_ BitVec 64)) (t!17830 List!11594)) )
))
(declare-fun arrayNoDuplicates!0 (array!36459 (_ BitVec 32) List!11594) Bool)

(assert (=> b!583275 (= res!371248 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11591))))

(declare-fun b!583276 () Bool)

(declare-fun res!371249 () Bool)

(declare-fun e!334220 () Bool)

(assert (=> b!583276 (=> (not res!371249) (not e!334220))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583276 (= res!371249 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583277 () Bool)

(declare-fun res!371243 () Bool)

(assert (=> b!583277 (=> (not res!371243) (not e!334220))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583277 (= res!371243 (validKeyInArray!0 (select (arr!17500 a!2986) j!136)))))

(declare-fun b!583278 () Bool)

(declare-fun res!371247 () Bool)

(assert (=> b!583278 (=> (not res!371247) (not e!334221))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583278 (= res!371247 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17500 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17500 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583279 () Bool)

(declare-fun res!371245 () Bool)

(assert (=> b!583279 (=> (not res!371245) (not e!334220))))

(assert (=> b!583279 (= res!371245 (and (= (size!17864 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17864 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17864 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!371241 () Bool)

(assert (=> start!53604 (=> (not res!371241) (not e!334220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53604 (= res!371241 (validMask!0 mask!3053))))

(assert (=> start!53604 e!334220))

(assert (=> start!53604 true))

(declare-fun array_inv!13274 (array!36459) Bool)

(assert (=> start!53604 (array_inv!13274 a!2986)))

(declare-fun b!583280 () Bool)

(assert (=> b!583280 (= e!334220 e!334221)))

(declare-fun res!371242 () Bool)

(assert (=> b!583280 (=> (not res!371242) (not e!334221))))

(declare-datatypes ((SeekEntryResult!5947 0))(
  ( (MissingZero!5947 (index!26015 (_ BitVec 32))) (Found!5947 (index!26016 (_ BitVec 32))) (Intermediate!5947 (undefined!6759 Bool) (index!26017 (_ BitVec 32)) (x!54883 (_ BitVec 32))) (Undefined!5947) (MissingVacant!5947 (index!26018 (_ BitVec 32))) )
))
(declare-fun lt!265295 () SeekEntryResult!5947)

(assert (=> b!583280 (= res!371242 (or (= lt!265295 (MissingZero!5947 i!1108)) (= lt!265295 (MissingVacant!5947 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36459 (_ BitVec 32)) SeekEntryResult!5947)

(assert (=> b!583280 (= lt!265295 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!583281 () Bool)

(declare-fun res!371246 () Bool)

(assert (=> b!583281 (=> (not res!371246) (not e!334220))))

(assert (=> b!583281 (= res!371246 (validKeyInArray!0 k0!1786))))

(declare-fun b!583282 () Bool)

(assert (=> b!583282 (= e!334221 false)))

(declare-fun lt!265294 () SeekEntryResult!5947)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36459 (_ BitVec 32)) SeekEntryResult!5947)

(assert (=> b!583282 (= lt!265294 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17500 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583283 () Bool)

(declare-fun res!371244 () Bool)

(assert (=> b!583283 (=> (not res!371244) (not e!334221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36459 (_ BitVec 32)) Bool)

(assert (=> b!583283 (= res!371244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53604 res!371241) b!583279))

(assert (= (and b!583279 res!371245) b!583277))

(assert (= (and b!583277 res!371243) b!583281))

(assert (= (and b!583281 res!371246) b!583276))

(assert (= (and b!583276 res!371249) b!583280))

(assert (= (and b!583280 res!371242) b!583283))

(assert (= (and b!583283 res!371244) b!583275))

(assert (= (and b!583275 res!371248) b!583278))

(assert (= (and b!583278 res!371247) b!583282))

(declare-fun m!561789 () Bool)

(assert (=> b!583282 m!561789))

(assert (=> b!583282 m!561789))

(declare-fun m!561791 () Bool)

(assert (=> b!583282 m!561791))

(assert (=> b!583277 m!561789))

(assert (=> b!583277 m!561789))

(declare-fun m!561793 () Bool)

(assert (=> b!583277 m!561793))

(declare-fun m!561795 () Bool)

(assert (=> b!583278 m!561795))

(declare-fun m!561797 () Bool)

(assert (=> b!583278 m!561797))

(declare-fun m!561799 () Bool)

(assert (=> b!583278 m!561799))

(declare-fun m!561801 () Bool)

(assert (=> start!53604 m!561801))

(declare-fun m!561803 () Bool)

(assert (=> start!53604 m!561803))

(declare-fun m!561805 () Bool)

(assert (=> b!583275 m!561805))

(declare-fun m!561807 () Bool)

(assert (=> b!583276 m!561807))

(declare-fun m!561809 () Bool)

(assert (=> b!583281 m!561809))

(declare-fun m!561811 () Bool)

(assert (=> b!583283 m!561811))

(declare-fun m!561813 () Bool)

(assert (=> b!583280 m!561813))

(check-sat (not b!583276) (not b!583275) (not b!583280) (not start!53604) (not b!583283) (not b!583277) (not b!583282) (not b!583281))
(check-sat)
