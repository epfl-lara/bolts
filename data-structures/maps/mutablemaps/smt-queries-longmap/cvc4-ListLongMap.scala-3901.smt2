; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53438 () Bool)

(assert start!53438)

(declare-fun b!580998 () Bool)

(declare-fun res!368966 () Bool)

(declare-fun e!333474 () Bool)

(assert (=> b!580998 (=> (not res!368966) (not e!333474))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580998 (= res!368966 (validKeyInArray!0 k!1786))))

(declare-fun b!580999 () Bool)

(declare-fun e!333473 () Bool)

(assert (=> b!580999 (= e!333473 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5864 0))(
  ( (MissingZero!5864 (index!25683 (_ BitVec 32))) (Found!5864 (index!25684 (_ BitVec 32))) (Intermediate!5864 (undefined!6676 Bool) (index!25685 (_ BitVec 32)) (x!54576 (_ BitVec 32))) (Undefined!5864) (MissingVacant!5864 (index!25686 (_ BitVec 32))) )
))
(declare-fun lt!264824 () SeekEntryResult!5864)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36293 0))(
  ( (array!36294 (arr!17417 (Array (_ BitVec 32) (_ BitVec 64))) (size!17781 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36293)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36293 (_ BitVec 32)) SeekEntryResult!5864)

(assert (=> b!580999 (= lt!264824 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17417 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581000 () Bool)

(declare-fun res!368965 () Bool)

(assert (=> b!581000 (=> (not res!368965) (not e!333474))))

(declare-fun arrayContainsKey!0 (array!36293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581000 (= res!368965 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581001 () Bool)

(declare-fun res!368964 () Bool)

(assert (=> b!581001 (=> (not res!368964) (not e!333473))))

(declare-datatypes ((List!11511 0))(
  ( (Nil!11508) (Cons!11507 (h!12552 (_ BitVec 64)) (t!17747 List!11511)) )
))
(declare-fun arrayNoDuplicates!0 (array!36293 (_ BitVec 32) List!11511) Bool)

(assert (=> b!581001 (= res!368964 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11508))))

(declare-fun b!581003 () Bool)

(assert (=> b!581003 (= e!333474 e!333473)))

(declare-fun res!368968 () Bool)

(assert (=> b!581003 (=> (not res!368968) (not e!333473))))

(declare-fun lt!264823 () SeekEntryResult!5864)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581003 (= res!368968 (or (= lt!264823 (MissingZero!5864 i!1108)) (= lt!264823 (MissingVacant!5864 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36293 (_ BitVec 32)) SeekEntryResult!5864)

(assert (=> b!581003 (= lt!264823 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581004 () Bool)

(declare-fun res!368971 () Bool)

(assert (=> b!581004 (=> (not res!368971) (not e!333473))))

(assert (=> b!581004 (= res!368971 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17417 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17417 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581005 () Bool)

(declare-fun res!368967 () Bool)

(assert (=> b!581005 (=> (not res!368967) (not e!333474))))

(assert (=> b!581005 (= res!368967 (and (= (size!17781 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17781 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17781 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581006 () Bool)

(declare-fun res!368970 () Bool)

(assert (=> b!581006 (=> (not res!368970) (not e!333474))))

(assert (=> b!581006 (= res!368970 (validKeyInArray!0 (select (arr!17417 a!2986) j!136)))))

(declare-fun b!581002 () Bool)

(declare-fun res!368969 () Bool)

(assert (=> b!581002 (=> (not res!368969) (not e!333473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36293 (_ BitVec 32)) Bool)

(assert (=> b!581002 (= res!368969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!368972 () Bool)

(assert (=> start!53438 (=> (not res!368972) (not e!333474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53438 (= res!368972 (validMask!0 mask!3053))))

(assert (=> start!53438 e!333474))

(assert (=> start!53438 true))

(declare-fun array_inv!13191 (array!36293) Bool)

(assert (=> start!53438 (array_inv!13191 a!2986)))

(assert (= (and start!53438 res!368972) b!581005))

(assert (= (and b!581005 res!368967) b!581006))

(assert (= (and b!581006 res!368970) b!580998))

(assert (= (and b!580998 res!368966) b!581000))

(assert (= (and b!581000 res!368965) b!581003))

(assert (= (and b!581003 res!368968) b!581002))

(assert (= (and b!581002 res!368969) b!581001))

(assert (= (and b!581001 res!368964) b!581004))

(assert (= (and b!581004 res!368971) b!580999))

(declare-fun m!559601 () Bool)

(assert (=> b!581000 m!559601))

(declare-fun m!559603 () Bool)

(assert (=> b!581006 m!559603))

(assert (=> b!581006 m!559603))

(declare-fun m!559605 () Bool)

(assert (=> b!581006 m!559605))

(declare-fun m!559607 () Bool)

(assert (=> b!581004 m!559607))

(declare-fun m!559609 () Bool)

(assert (=> b!581004 m!559609))

(declare-fun m!559611 () Bool)

(assert (=> b!581004 m!559611))

(assert (=> b!580999 m!559603))

(assert (=> b!580999 m!559603))

(declare-fun m!559613 () Bool)

(assert (=> b!580999 m!559613))

(declare-fun m!559615 () Bool)

(assert (=> start!53438 m!559615))

(declare-fun m!559617 () Bool)

(assert (=> start!53438 m!559617))

(declare-fun m!559619 () Bool)

(assert (=> b!581003 m!559619))

(declare-fun m!559621 () Bool)

(assert (=> b!580998 m!559621))

(declare-fun m!559623 () Bool)

(assert (=> b!581001 m!559623))

(declare-fun m!559625 () Bool)

(assert (=> b!581002 m!559625))

(push 1)

(assert (not start!53438))

(assert (not b!581006))

(assert (not b!581000))

(assert (not b!581001))

(assert (not b!581003))

(assert (not b!581002))

(assert (not b!580999))

