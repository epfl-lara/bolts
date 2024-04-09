; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53364 () Bool)

(assert start!53364)

(declare-fun b!579990 () Bool)

(declare-fun res!367962 () Bool)

(declare-fun e!333141 () Bool)

(assert (=> b!579990 (=> (not res!367962) (not e!333141))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36219 0))(
  ( (array!36220 (arr!17380 (Array (_ BitVec 32) (_ BitVec 64))) (size!17744 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36219)

(assert (=> b!579990 (= res!367962 (and (= (size!17744 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17744 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17744 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579991 () Bool)

(declare-fun e!333142 () Bool)

(assert (=> b!579991 (= e!333142 false)))

(declare-datatypes ((SeekEntryResult!5827 0))(
  ( (MissingZero!5827 (index!25535 (_ BitVec 32))) (Found!5827 (index!25536 (_ BitVec 32))) (Intermediate!5827 (undefined!6639 Bool) (index!25537 (_ BitVec 32)) (x!54443 (_ BitVec 32))) (Undefined!5827) (MissingVacant!5827 (index!25538 (_ BitVec 32))) )
))
(declare-fun lt!264610 () SeekEntryResult!5827)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36219 (_ BitVec 32)) SeekEntryResult!5827)

(assert (=> b!579991 (= lt!264610 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17380 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579992 () Bool)

(declare-fun res!367960 () Bool)

(assert (=> b!579992 (=> (not res!367960) (not e!333142))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!579992 (= res!367960 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17380 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17380 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579993 () Bool)

(declare-fun res!367964 () Bool)

(assert (=> b!579993 (=> (not res!367964) (not e!333141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579993 (= res!367964 (validKeyInArray!0 (select (arr!17380 a!2986) j!136)))))

(declare-fun b!579994 () Bool)

(assert (=> b!579994 (= e!333141 e!333142)))

(declare-fun res!367956 () Bool)

(assert (=> b!579994 (=> (not res!367956) (not e!333142))))

(declare-fun lt!264611 () SeekEntryResult!5827)

(assert (=> b!579994 (= res!367956 (or (= lt!264611 (MissingZero!5827 i!1108)) (= lt!264611 (MissingVacant!5827 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36219 (_ BitVec 32)) SeekEntryResult!5827)

(assert (=> b!579994 (= lt!264611 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579995 () Bool)

(declare-fun res!367958 () Bool)

(assert (=> b!579995 (=> (not res!367958) (not e!333142))))

(declare-datatypes ((List!11474 0))(
  ( (Nil!11471) (Cons!11470 (h!12515 (_ BitVec 64)) (t!17710 List!11474)) )
))
(declare-fun arrayNoDuplicates!0 (array!36219 (_ BitVec 32) List!11474) Bool)

(assert (=> b!579995 (= res!367958 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11471))))

(declare-fun b!579996 () Bool)

(declare-fun res!367963 () Bool)

(assert (=> b!579996 (=> (not res!367963) (not e!333141))))

(declare-fun arrayContainsKey!0 (array!36219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579996 (= res!367963 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!367957 () Bool)

(assert (=> start!53364 (=> (not res!367957) (not e!333141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53364 (= res!367957 (validMask!0 mask!3053))))

(assert (=> start!53364 e!333141))

(assert (=> start!53364 true))

(declare-fun array_inv!13154 (array!36219) Bool)

(assert (=> start!53364 (array_inv!13154 a!2986)))

(declare-fun b!579997 () Bool)

(declare-fun res!367959 () Bool)

(assert (=> b!579997 (=> (not res!367959) (not e!333141))))

(assert (=> b!579997 (= res!367959 (validKeyInArray!0 k0!1786))))

(declare-fun b!579998 () Bool)

(declare-fun res!367961 () Bool)

(assert (=> b!579998 (=> (not res!367961) (not e!333142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36219 (_ BitVec 32)) Bool)

(assert (=> b!579998 (= res!367961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53364 res!367957) b!579990))

(assert (= (and b!579990 res!367962) b!579993))

(assert (= (and b!579993 res!367964) b!579997))

(assert (= (and b!579997 res!367959) b!579996))

(assert (= (and b!579996 res!367963) b!579994))

(assert (= (and b!579994 res!367956) b!579998))

(assert (= (and b!579998 res!367961) b!579995))

(assert (= (and b!579995 res!367958) b!579992))

(assert (= (and b!579992 res!367960) b!579991))

(declare-fun m!558633 () Bool)

(assert (=> b!579995 m!558633))

(declare-fun m!558635 () Bool)

(assert (=> b!579996 m!558635))

(declare-fun m!558637 () Bool)

(assert (=> b!579994 m!558637))

(declare-fun m!558639 () Bool)

(assert (=> b!579992 m!558639))

(declare-fun m!558641 () Bool)

(assert (=> b!579992 m!558641))

(declare-fun m!558643 () Bool)

(assert (=> b!579992 m!558643))

(declare-fun m!558645 () Bool)

(assert (=> b!579993 m!558645))

(assert (=> b!579993 m!558645))

(declare-fun m!558647 () Bool)

(assert (=> b!579993 m!558647))

(declare-fun m!558649 () Bool)

(assert (=> b!579998 m!558649))

(assert (=> b!579991 m!558645))

(assert (=> b!579991 m!558645))

(declare-fun m!558651 () Bool)

(assert (=> b!579991 m!558651))

(declare-fun m!558653 () Bool)

(assert (=> b!579997 m!558653))

(declare-fun m!558655 () Bool)

(assert (=> start!53364 m!558655))

(declare-fun m!558657 () Bool)

(assert (=> start!53364 m!558657))

(check-sat (not b!579995) (not b!579996) (not b!579993) (not b!579998) (not b!579997) (not b!579991) (not start!53364) (not b!579994))
(check-sat)
