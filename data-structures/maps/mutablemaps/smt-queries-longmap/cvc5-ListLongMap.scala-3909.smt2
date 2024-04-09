; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53482 () Bool)

(assert start!53482)

(declare-fun b!581606 () Bool)

(declare-fun res!369574 () Bool)

(declare-fun e!333671 () Bool)

(assert (=> b!581606 (=> (not res!369574) (not e!333671))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36337 0))(
  ( (array!36338 (arr!17439 (Array (_ BitVec 32) (_ BitVec 64))) (size!17803 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36337)

(declare-datatypes ((SeekEntryResult!5886 0))(
  ( (MissingZero!5886 (index!25771 (_ BitVec 32))) (Found!5886 (index!25772 (_ BitVec 32))) (Intermediate!5886 (undefined!6698 Bool) (index!25773 (_ BitVec 32)) (x!54662 (_ BitVec 32))) (Undefined!5886) (MissingVacant!5886 (index!25774 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36337 (_ BitVec 32)) SeekEntryResult!5886)

(assert (=> b!581606 (= res!369574 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17439 a!2986) j!136) a!2986 mask!3053) (Found!5886 j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun b!581607 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581607 (= e!333671 (not (validKeyInArray!0 (select (store (arr!17439 a!2986) i!1108 k!1786) j!136))))))

(declare-fun b!581608 () Bool)

(declare-fun res!369576 () Bool)

(assert (=> b!581608 (=> (not res!369576) (not e!333671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36337 (_ BitVec 32)) Bool)

(assert (=> b!581608 (= res!369576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581609 () Bool)

(declare-fun res!369579 () Bool)

(declare-fun e!333673 () Bool)

(assert (=> b!581609 (=> (not res!369579) (not e!333673))))

(declare-fun arrayContainsKey!0 (array!36337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581609 (= res!369579 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581610 () Bool)

(declare-fun res!369575 () Bool)

(assert (=> b!581610 (=> (not res!369575) (not e!333673))))

(assert (=> b!581610 (= res!369575 (validKeyInArray!0 k!1786))))

(declare-fun b!581611 () Bool)

(declare-fun res!369573 () Bool)

(assert (=> b!581611 (=> (not res!369573) (not e!333671))))

(assert (=> b!581611 (= res!369573 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17439 a!2986) index!984) (select (arr!17439 a!2986) j!136)) (= index!984 j!136) (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun res!369578 () Bool)

(assert (=> start!53482 (=> (not res!369578) (not e!333673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53482 (= res!369578 (validMask!0 mask!3053))))

(assert (=> start!53482 e!333673))

(assert (=> start!53482 true))

(declare-fun array_inv!13213 (array!36337) Bool)

(assert (=> start!53482 (array_inv!13213 a!2986)))

(declare-fun b!581605 () Bool)

(declare-fun res!369572 () Bool)

(assert (=> b!581605 (=> (not res!369572) (not e!333671))))

(assert (=> b!581605 (= res!369572 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17439 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17439 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581612 () Bool)

(declare-fun res!369581 () Bool)

(assert (=> b!581612 (=> (not res!369581) (not e!333673))))

(assert (=> b!581612 (= res!369581 (and (= (size!17803 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17803 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17803 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581613 () Bool)

(declare-fun res!369571 () Bool)

(assert (=> b!581613 (=> (not res!369571) (not e!333673))))

(assert (=> b!581613 (= res!369571 (validKeyInArray!0 (select (arr!17439 a!2986) j!136)))))

(declare-fun b!581614 () Bool)

(declare-fun res!369577 () Bool)

(assert (=> b!581614 (=> (not res!369577) (not e!333671))))

(declare-datatypes ((List!11533 0))(
  ( (Nil!11530) (Cons!11529 (h!12574 (_ BitVec 64)) (t!17769 List!11533)) )
))
(declare-fun arrayNoDuplicates!0 (array!36337 (_ BitVec 32) List!11533) Bool)

(assert (=> b!581614 (= res!369577 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11530))))

(declare-fun b!581615 () Bool)

(assert (=> b!581615 (= e!333673 e!333671)))

(declare-fun res!369580 () Bool)

(assert (=> b!581615 (=> (not res!369580) (not e!333671))))

(declare-fun lt!264944 () SeekEntryResult!5886)

(assert (=> b!581615 (= res!369580 (or (= lt!264944 (MissingZero!5886 i!1108)) (= lt!264944 (MissingVacant!5886 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36337 (_ BitVec 32)) SeekEntryResult!5886)

(assert (=> b!581615 (= lt!264944 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53482 res!369578) b!581612))

(assert (= (and b!581612 res!369581) b!581613))

(assert (= (and b!581613 res!369571) b!581610))

(assert (= (and b!581610 res!369575) b!581609))

(assert (= (and b!581609 res!369579) b!581615))

(assert (= (and b!581615 res!369580) b!581608))

(assert (= (and b!581608 res!369576) b!581614))

(assert (= (and b!581614 res!369577) b!581605))

(assert (= (and b!581605 res!369572) b!581606))

(assert (= (and b!581606 res!369574) b!581611))

(assert (= (and b!581611 res!369573) b!581607))

(declare-fun m!560179 () Bool)

(assert (=> b!581605 m!560179))

(declare-fun m!560181 () Bool)

(assert (=> b!581605 m!560181))

(declare-fun m!560183 () Bool)

(assert (=> b!581605 m!560183))

(declare-fun m!560185 () Bool)

(assert (=> b!581614 m!560185))

(declare-fun m!560187 () Bool)

(assert (=> b!581610 m!560187))

(assert (=> b!581607 m!560181))

(declare-fun m!560189 () Bool)

(assert (=> b!581607 m!560189))

(assert (=> b!581607 m!560189))

(declare-fun m!560191 () Bool)

(assert (=> b!581607 m!560191))

(declare-fun m!560193 () Bool)

(assert (=> b!581613 m!560193))

(assert (=> b!581613 m!560193))

(declare-fun m!560195 () Bool)

(assert (=> b!581613 m!560195))

(declare-fun m!560197 () Bool)

(assert (=> b!581608 m!560197))

(declare-fun m!560199 () Bool)

(assert (=> b!581615 m!560199))

(declare-fun m!560201 () Bool)

(assert (=> start!53482 m!560201))

(declare-fun m!560203 () Bool)

(assert (=> start!53482 m!560203))

(declare-fun m!560205 () Bool)

(assert (=> b!581609 m!560205))

(declare-fun m!560207 () Bool)

(assert (=> b!581611 m!560207))

(assert (=> b!581611 m!560193))

(assert (=> b!581606 m!560193))

(assert (=> b!581606 m!560193))

(declare-fun m!560209 () Bool)

(assert (=> b!581606 m!560209))

(push 1)

