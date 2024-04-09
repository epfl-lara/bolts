; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53484 () Bool)

(assert start!53484)

(declare-fun b!581638 () Bool)

(declare-fun res!369612 () Bool)

(declare-fun e!333680 () Bool)

(assert (=> b!581638 (=> (not res!369612) (not e!333680))))

(declare-datatypes ((array!36339 0))(
  ( (array!36340 (arr!17440 (Array (_ BitVec 32) (_ BitVec 64))) (size!17804 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36339)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581638 (= res!369612 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581639 () Bool)

(declare-fun res!369606 () Bool)

(declare-fun e!333682 () Bool)

(assert (=> b!581639 (=> (not res!369606) (not e!333682))))

(declare-datatypes ((List!11534 0))(
  ( (Nil!11531) (Cons!11530 (h!12575 (_ BitVec 64)) (t!17770 List!11534)) )
))
(declare-fun arrayNoDuplicates!0 (array!36339 (_ BitVec 32) List!11534) Bool)

(assert (=> b!581639 (= res!369606 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11531))))

(declare-fun b!581640 () Bool)

(assert (=> b!581640 (= e!333680 e!333682)))

(declare-fun res!369607 () Bool)

(assert (=> b!581640 (=> (not res!369607) (not e!333682))))

(declare-datatypes ((SeekEntryResult!5887 0))(
  ( (MissingZero!5887 (index!25775 (_ BitVec 32))) (Found!5887 (index!25776 (_ BitVec 32))) (Intermediate!5887 (undefined!6699 Bool) (index!25777 (_ BitVec 32)) (x!54663 (_ BitVec 32))) (Undefined!5887) (MissingVacant!5887 (index!25778 (_ BitVec 32))) )
))
(declare-fun lt!264947 () SeekEntryResult!5887)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581640 (= res!369607 (or (= lt!264947 (MissingZero!5887 i!1108)) (= lt!264947 (MissingVacant!5887 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36339 (_ BitVec 32)) SeekEntryResult!5887)

(assert (=> b!581640 (= lt!264947 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581641 () Bool)

(declare-fun res!369604 () Bool)

(assert (=> b!581641 (=> (not res!369604) (not e!333682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36339 (_ BitVec 32)) Bool)

(assert (=> b!581641 (= res!369604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581642 () Bool)

(declare-fun res!369614 () Bool)

(assert (=> b!581642 (=> (not res!369614) (not e!333680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581642 (= res!369614 (validKeyInArray!0 k0!1786))))

(declare-fun b!581643 () Bool)

(declare-fun res!369609 () Bool)

(assert (=> b!581643 (=> (not res!369609) (not e!333682))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581643 (= res!369609 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17440 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17440 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!581644 () Bool)

(assert (=> b!581644 (= e!333682 (not (validKeyInArray!0 (select (store (arr!17440 a!2986) i!1108 k0!1786) j!136))))))

(declare-fun b!581645 () Bool)

(declare-fun res!369605 () Bool)

(assert (=> b!581645 (=> (not res!369605) (not e!333682))))

(assert (=> b!581645 (= res!369605 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17440 a!2986) index!984) (select (arr!17440 a!2986) j!136)) (= index!984 j!136) (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!581646 () Bool)

(declare-fun res!369610 () Bool)

(assert (=> b!581646 (=> (not res!369610) (not e!333680))))

(assert (=> b!581646 (= res!369610 (and (= (size!17804 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17804 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17804 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581647 () Bool)

(declare-fun res!369608 () Bool)

(assert (=> b!581647 (=> (not res!369608) (not e!333680))))

(assert (=> b!581647 (= res!369608 (validKeyInArray!0 (select (arr!17440 a!2986) j!136)))))

(declare-fun b!581648 () Bool)

(declare-fun res!369611 () Bool)

(assert (=> b!581648 (=> (not res!369611) (not e!333682))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36339 (_ BitVec 32)) SeekEntryResult!5887)

(assert (=> b!581648 (= res!369611 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17440 a!2986) j!136) a!2986 mask!3053) (Found!5887 j!136)))))

(declare-fun res!369613 () Bool)

(assert (=> start!53484 (=> (not res!369613) (not e!333680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53484 (= res!369613 (validMask!0 mask!3053))))

(assert (=> start!53484 e!333680))

(assert (=> start!53484 true))

(declare-fun array_inv!13214 (array!36339) Bool)

(assert (=> start!53484 (array_inv!13214 a!2986)))

(assert (= (and start!53484 res!369613) b!581646))

(assert (= (and b!581646 res!369610) b!581647))

(assert (= (and b!581647 res!369608) b!581642))

(assert (= (and b!581642 res!369614) b!581638))

(assert (= (and b!581638 res!369612) b!581640))

(assert (= (and b!581640 res!369607) b!581641))

(assert (= (and b!581641 res!369604) b!581639))

(assert (= (and b!581639 res!369606) b!581643))

(assert (= (and b!581643 res!369609) b!581648))

(assert (= (and b!581648 res!369611) b!581645))

(assert (= (and b!581645 res!369605) b!581644))

(declare-fun m!560211 () Bool)

(assert (=> b!581647 m!560211))

(assert (=> b!581647 m!560211))

(declare-fun m!560213 () Bool)

(assert (=> b!581647 m!560213))

(declare-fun m!560215 () Bool)

(assert (=> start!53484 m!560215))

(declare-fun m!560217 () Bool)

(assert (=> start!53484 m!560217))

(declare-fun m!560219 () Bool)

(assert (=> b!581641 m!560219))

(declare-fun m!560221 () Bool)

(assert (=> b!581644 m!560221))

(declare-fun m!560223 () Bool)

(assert (=> b!581644 m!560223))

(assert (=> b!581644 m!560223))

(declare-fun m!560225 () Bool)

(assert (=> b!581644 m!560225))

(assert (=> b!581648 m!560211))

(assert (=> b!581648 m!560211))

(declare-fun m!560227 () Bool)

(assert (=> b!581648 m!560227))

(declare-fun m!560229 () Bool)

(assert (=> b!581639 m!560229))

(declare-fun m!560231 () Bool)

(assert (=> b!581645 m!560231))

(assert (=> b!581645 m!560211))

(declare-fun m!560233 () Bool)

(assert (=> b!581642 m!560233))

(declare-fun m!560235 () Bool)

(assert (=> b!581643 m!560235))

(assert (=> b!581643 m!560221))

(declare-fun m!560237 () Bool)

(assert (=> b!581643 m!560237))

(declare-fun m!560239 () Bool)

(assert (=> b!581638 m!560239))

(declare-fun m!560241 () Bool)

(assert (=> b!581640 m!560241))

(check-sat (not b!581648) (not start!53484) (not b!581641) (not b!581640) (not b!581644) (not b!581642) (not b!581639) (not b!581647) (not b!581638))
