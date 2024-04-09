; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53362 () Bool)

(assert start!53362)

(declare-fun res!367930 () Bool)

(declare-fun e!333133 () Bool)

(assert (=> start!53362 (=> (not res!367930) (not e!333133))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53362 (= res!367930 (validMask!0 mask!3053))))

(assert (=> start!53362 e!333133))

(assert (=> start!53362 true))

(declare-datatypes ((array!36217 0))(
  ( (array!36218 (arr!17379 (Array (_ BitVec 32) (_ BitVec 64))) (size!17743 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36217)

(declare-fun array_inv!13153 (array!36217) Bool)

(assert (=> start!53362 (array_inv!13153 a!2986)))

(declare-fun b!579963 () Bool)

(declare-fun e!333131 () Bool)

(assert (=> b!579963 (= e!333133 e!333131)))

(declare-fun res!367932 () Bool)

(assert (=> b!579963 (=> (not res!367932) (not e!333131))))

(declare-datatypes ((SeekEntryResult!5826 0))(
  ( (MissingZero!5826 (index!25531 (_ BitVec 32))) (Found!5826 (index!25532 (_ BitVec 32))) (Intermediate!5826 (undefined!6638 Bool) (index!25533 (_ BitVec 32)) (x!54442 (_ BitVec 32))) (Undefined!5826) (MissingVacant!5826 (index!25534 (_ BitVec 32))) )
))
(declare-fun lt!264605 () SeekEntryResult!5826)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579963 (= res!367932 (or (= lt!264605 (MissingZero!5826 i!1108)) (= lt!264605 (MissingVacant!5826 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36217 (_ BitVec 32)) SeekEntryResult!5826)

(assert (=> b!579963 (= lt!264605 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579964 () Bool)

(assert (=> b!579964 (= e!333131 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264604 () SeekEntryResult!5826)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36217 (_ BitVec 32)) SeekEntryResult!5826)

(assert (=> b!579964 (= lt!264604 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17379 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579965 () Bool)

(declare-fun res!367931 () Bool)

(assert (=> b!579965 (=> (not res!367931) (not e!333131))))

(assert (=> b!579965 (= res!367931 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17379 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17379 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579966 () Bool)

(declare-fun res!367936 () Bool)

(assert (=> b!579966 (=> (not res!367936) (not e!333131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36217 (_ BitVec 32)) Bool)

(assert (=> b!579966 (= res!367936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579967 () Bool)

(declare-fun res!367933 () Bool)

(assert (=> b!579967 (=> (not res!367933) (not e!333133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579967 (= res!367933 (validKeyInArray!0 k!1786))))

(declare-fun b!579968 () Bool)

(declare-fun res!367937 () Bool)

(assert (=> b!579968 (=> (not res!367937) (not e!333133))))

(assert (=> b!579968 (= res!367937 (and (= (size!17743 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17743 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17743 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579969 () Bool)

(declare-fun res!367934 () Bool)

(assert (=> b!579969 (=> (not res!367934) (not e!333133))))

(assert (=> b!579969 (= res!367934 (validKeyInArray!0 (select (arr!17379 a!2986) j!136)))))

(declare-fun b!579970 () Bool)

(declare-fun res!367929 () Bool)

(assert (=> b!579970 (=> (not res!367929) (not e!333131))))

(declare-datatypes ((List!11473 0))(
  ( (Nil!11470) (Cons!11469 (h!12514 (_ BitVec 64)) (t!17709 List!11473)) )
))
(declare-fun arrayNoDuplicates!0 (array!36217 (_ BitVec 32) List!11473) Bool)

(assert (=> b!579970 (= res!367929 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11470))))

(declare-fun b!579971 () Bool)

(declare-fun res!367935 () Bool)

(assert (=> b!579971 (=> (not res!367935) (not e!333133))))

(declare-fun arrayContainsKey!0 (array!36217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579971 (= res!367935 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53362 res!367930) b!579968))

(assert (= (and b!579968 res!367937) b!579969))

(assert (= (and b!579969 res!367934) b!579967))

(assert (= (and b!579967 res!367933) b!579971))

(assert (= (and b!579971 res!367935) b!579963))

(assert (= (and b!579963 res!367932) b!579966))

(assert (= (and b!579966 res!367936) b!579970))

(assert (= (and b!579970 res!367929) b!579965))

(assert (= (and b!579965 res!367931) b!579964))

(declare-fun m!558607 () Bool)

(assert (=> b!579964 m!558607))

(assert (=> b!579964 m!558607))

(declare-fun m!558609 () Bool)

(assert (=> b!579964 m!558609))

(declare-fun m!558611 () Bool)

(assert (=> b!579971 m!558611))

(declare-fun m!558613 () Bool)

(assert (=> b!579965 m!558613))

(declare-fun m!558615 () Bool)

(assert (=> b!579965 m!558615))

(declare-fun m!558617 () Bool)

(assert (=> b!579965 m!558617))

(declare-fun m!558619 () Bool)

(assert (=> start!53362 m!558619))

(declare-fun m!558621 () Bool)

(assert (=> start!53362 m!558621))

(declare-fun m!558623 () Bool)

(assert (=> b!579963 m!558623))

(assert (=> b!579969 m!558607))

(assert (=> b!579969 m!558607))

(declare-fun m!558625 () Bool)

(assert (=> b!579969 m!558625))

(declare-fun m!558627 () Bool)

(assert (=> b!579967 m!558627))

(declare-fun m!558629 () Bool)

(assert (=> b!579966 m!558629))

(declare-fun m!558631 () Bool)

(assert (=> b!579970 m!558631))

(push 1)

