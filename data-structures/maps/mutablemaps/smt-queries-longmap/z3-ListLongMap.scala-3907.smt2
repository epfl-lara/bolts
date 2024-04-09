; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53472 () Bool)

(assert start!53472)

(declare-fun b!581466 () Bool)

(declare-fun res!369432 () Bool)

(declare-fun e!333628 () Bool)

(assert (=> b!581466 (=> (not res!369432) (not e!333628))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581466 (= res!369432 (validKeyInArray!0 k0!1786))))

(declare-fun b!581467 () Bool)

(declare-fun res!369437 () Bool)

(assert (=> b!581467 (=> (not res!369437) (not e!333628))))

(declare-datatypes ((array!36327 0))(
  ( (array!36328 (arr!17434 (Array (_ BitVec 32) (_ BitVec 64))) (size!17798 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36327)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!581467 (= res!369437 (validKeyInArray!0 (select (arr!17434 a!2986) j!136)))))

(declare-fun b!581468 () Bool)

(declare-fun res!369438 () Bool)

(declare-fun e!333627 () Bool)

(assert (=> b!581468 (=> (not res!369438) (not e!333627))))

(declare-datatypes ((List!11528 0))(
  ( (Nil!11525) (Cons!11524 (h!12569 (_ BitVec 64)) (t!17764 List!11528)) )
))
(declare-fun arrayNoDuplicates!0 (array!36327 (_ BitVec 32) List!11528) Bool)

(assert (=> b!581468 (= res!369438 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11525))))

(declare-fun b!581470 () Bool)

(declare-fun res!369433 () Bool)

(assert (=> b!581470 (=> (not res!369433) (not e!333628))))

(declare-fun arrayContainsKey!0 (array!36327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581470 (= res!369433 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581471 () Bool)

(declare-fun res!369434 () Bool)

(assert (=> b!581471 (=> (not res!369434) (not e!333628))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581471 (= res!369434 (and (= (size!17798 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17798 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17798 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581472 () Bool)

(assert (=> b!581472 (= e!333628 e!333627)))

(declare-fun res!369439 () Bool)

(assert (=> b!581472 (=> (not res!369439) (not e!333627))))

(declare-datatypes ((SeekEntryResult!5881 0))(
  ( (MissingZero!5881 (index!25751 (_ BitVec 32))) (Found!5881 (index!25752 (_ BitVec 32))) (Intermediate!5881 (undefined!6693 Bool) (index!25753 (_ BitVec 32)) (x!54641 (_ BitVec 32))) (Undefined!5881) (MissingVacant!5881 (index!25754 (_ BitVec 32))) )
))
(declare-fun lt!264916 () SeekEntryResult!5881)

(assert (=> b!581472 (= res!369439 (or (= lt!264916 (MissingZero!5881 i!1108)) (= lt!264916 (MissingVacant!5881 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36327 (_ BitVec 32)) SeekEntryResult!5881)

(assert (=> b!581472 (= lt!264916 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581473 () Bool)

(declare-fun res!369436 () Bool)

(assert (=> b!581473 (=> (not res!369436) (not e!333627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36327 (_ BitVec 32)) Bool)

(assert (=> b!581473 (= res!369436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581474 () Bool)

(declare-fun res!369435 () Bool)

(assert (=> b!581474 (=> (not res!369435) (not e!333627))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581474 (= res!369435 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17434 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17434 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!369440 () Bool)

(assert (=> start!53472 (=> (not res!369440) (not e!333628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53472 (= res!369440 (validMask!0 mask!3053))))

(assert (=> start!53472 e!333628))

(assert (=> start!53472 true))

(declare-fun array_inv!13208 (array!36327) Bool)

(assert (=> start!53472 (array_inv!13208 a!2986)))

(declare-fun b!581469 () Bool)

(assert (=> b!581469 (= e!333627 false)))

(declare-fun lt!264917 () SeekEntryResult!5881)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36327 (_ BitVec 32)) SeekEntryResult!5881)

(assert (=> b!581469 (= lt!264917 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17434 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53472 res!369440) b!581471))

(assert (= (and b!581471 res!369434) b!581467))

(assert (= (and b!581467 res!369437) b!581466))

(assert (= (and b!581466 res!369432) b!581470))

(assert (= (and b!581470 res!369433) b!581472))

(assert (= (and b!581472 res!369439) b!581473))

(assert (= (and b!581473 res!369436) b!581468))

(assert (= (and b!581468 res!369438) b!581474))

(assert (= (and b!581474 res!369435) b!581469))

(declare-fun m!560049 () Bool)

(assert (=> b!581467 m!560049))

(assert (=> b!581467 m!560049))

(declare-fun m!560051 () Bool)

(assert (=> b!581467 m!560051))

(assert (=> b!581469 m!560049))

(assert (=> b!581469 m!560049))

(declare-fun m!560053 () Bool)

(assert (=> b!581469 m!560053))

(declare-fun m!560055 () Bool)

(assert (=> b!581474 m!560055))

(declare-fun m!560057 () Bool)

(assert (=> b!581474 m!560057))

(declare-fun m!560059 () Bool)

(assert (=> b!581474 m!560059))

(declare-fun m!560061 () Bool)

(assert (=> b!581473 m!560061))

(declare-fun m!560063 () Bool)

(assert (=> b!581470 m!560063))

(declare-fun m!560065 () Bool)

(assert (=> b!581472 m!560065))

(declare-fun m!560067 () Bool)

(assert (=> start!53472 m!560067))

(declare-fun m!560069 () Bool)

(assert (=> start!53472 m!560069))

(declare-fun m!560071 () Bool)

(assert (=> b!581466 m!560071))

(declare-fun m!560073 () Bool)

(assert (=> b!581468 m!560073))

(check-sat (not start!53472) (not b!581469) (not b!581468) (not b!581473) (not b!581470) (not b!581466) (not b!581467) (not b!581472))
(check-sat)
