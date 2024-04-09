; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53478 () Bool)

(assert start!53478)

(declare-fun b!581547 () Bool)

(declare-fun res!369517 () Bool)

(declare-fun e!333653 () Bool)

(assert (=> b!581547 (=> (not res!369517) (not e!333653))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581547 (= res!369517 (validKeyInArray!0 k0!1786))))

(declare-fun b!581548 () Bool)

(declare-fun e!333654 () Bool)

(assert (=> b!581548 (= e!333653 e!333654)))

(declare-fun res!369513 () Bool)

(assert (=> b!581548 (=> (not res!369513) (not e!333654))))

(declare-datatypes ((SeekEntryResult!5884 0))(
  ( (MissingZero!5884 (index!25763 (_ BitVec 32))) (Found!5884 (index!25764 (_ BitVec 32))) (Intermediate!5884 (undefined!6696 Bool) (index!25765 (_ BitVec 32)) (x!54652 (_ BitVec 32))) (Undefined!5884) (MissingVacant!5884 (index!25766 (_ BitVec 32))) )
))
(declare-fun lt!264935 () SeekEntryResult!5884)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581548 (= res!369513 (or (= lt!264935 (MissingZero!5884 i!1108)) (= lt!264935 (MissingVacant!5884 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36333 0))(
  ( (array!36334 (arr!17437 (Array (_ BitVec 32) (_ BitVec 64))) (size!17801 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36333)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36333 (_ BitVec 32)) SeekEntryResult!5884)

(assert (=> b!581548 (= lt!264935 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!369521 () Bool)

(assert (=> start!53478 (=> (not res!369521) (not e!333653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53478 (= res!369521 (validMask!0 mask!3053))))

(assert (=> start!53478 e!333653))

(assert (=> start!53478 true))

(declare-fun array_inv!13211 (array!36333) Bool)

(assert (=> start!53478 (array_inv!13211 a!2986)))

(declare-fun b!581549 () Bool)

(declare-fun res!369518 () Bool)

(assert (=> b!581549 (=> (not res!369518) (not e!333653))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!581549 (= res!369518 (and (= (size!17801 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17801 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17801 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581550 () Bool)

(assert (=> b!581550 (= e!333654 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264934 () SeekEntryResult!5884)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36333 (_ BitVec 32)) SeekEntryResult!5884)

(assert (=> b!581550 (= lt!264934 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17437 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581551 () Bool)

(declare-fun res!369515 () Bool)

(assert (=> b!581551 (=> (not res!369515) (not e!333653))))

(declare-fun arrayContainsKey!0 (array!36333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581551 (= res!369515 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581552 () Bool)

(declare-fun res!369519 () Bool)

(assert (=> b!581552 (=> (not res!369519) (not e!333654))))

(declare-datatypes ((List!11531 0))(
  ( (Nil!11528) (Cons!11527 (h!12572 (_ BitVec 64)) (t!17767 List!11531)) )
))
(declare-fun arrayNoDuplicates!0 (array!36333 (_ BitVec 32) List!11531) Bool)

(assert (=> b!581552 (= res!369519 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11528))))

(declare-fun b!581553 () Bool)

(declare-fun res!369514 () Bool)

(assert (=> b!581553 (=> (not res!369514) (not e!333653))))

(assert (=> b!581553 (= res!369514 (validKeyInArray!0 (select (arr!17437 a!2986) j!136)))))

(declare-fun b!581554 () Bool)

(declare-fun res!369516 () Bool)

(assert (=> b!581554 (=> (not res!369516) (not e!333654))))

(assert (=> b!581554 (= res!369516 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17437 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17437 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581555 () Bool)

(declare-fun res!369520 () Bool)

(assert (=> b!581555 (=> (not res!369520) (not e!333654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36333 (_ BitVec 32)) Bool)

(assert (=> b!581555 (= res!369520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53478 res!369521) b!581549))

(assert (= (and b!581549 res!369518) b!581553))

(assert (= (and b!581553 res!369514) b!581547))

(assert (= (and b!581547 res!369517) b!581551))

(assert (= (and b!581551 res!369515) b!581548))

(assert (= (and b!581548 res!369513) b!581555))

(assert (= (and b!581555 res!369520) b!581552))

(assert (= (and b!581552 res!369519) b!581554))

(assert (= (and b!581554 res!369516) b!581550))

(declare-fun m!560127 () Bool)

(assert (=> b!581553 m!560127))

(assert (=> b!581553 m!560127))

(declare-fun m!560129 () Bool)

(assert (=> b!581553 m!560129))

(assert (=> b!581550 m!560127))

(assert (=> b!581550 m!560127))

(declare-fun m!560131 () Bool)

(assert (=> b!581550 m!560131))

(declare-fun m!560133 () Bool)

(assert (=> b!581552 m!560133))

(declare-fun m!560135 () Bool)

(assert (=> b!581547 m!560135))

(declare-fun m!560137 () Bool)

(assert (=> start!53478 m!560137))

(declare-fun m!560139 () Bool)

(assert (=> start!53478 m!560139))

(declare-fun m!560141 () Bool)

(assert (=> b!581551 m!560141))

(declare-fun m!560143 () Bool)

(assert (=> b!581555 m!560143))

(declare-fun m!560145 () Bool)

(assert (=> b!581548 m!560145))

(declare-fun m!560147 () Bool)

(assert (=> b!581554 m!560147))

(declare-fun m!560149 () Bool)

(assert (=> b!581554 m!560149))

(declare-fun m!560151 () Bool)

(assert (=> b!581554 m!560151))

(check-sat (not b!581555) (not b!581552) (not b!581548) (not b!581550) (not b!581553) (not b!581547) (not start!53478) (not b!581551))
(check-sat)
