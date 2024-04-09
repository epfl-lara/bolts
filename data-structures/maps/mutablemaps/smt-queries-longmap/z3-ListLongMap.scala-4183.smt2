; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57026 () Bool)

(assert start!57026)

(declare-fun b!631051 () Bool)

(declare-fun e!360804 () Bool)

(declare-datatypes ((SeekEntryResult!6709 0))(
  ( (MissingZero!6709 (index!29125 (_ BitVec 32))) (Found!6709 (index!29126 (_ BitVec 32))) (Intermediate!6709 (undefined!7521 Bool) (index!29127 (_ BitVec 32)) (x!57888 (_ BitVec 32))) (Undefined!6709) (MissingVacant!6709 (index!29128 (_ BitVec 32))) )
))
(declare-fun lt!291594 () SeekEntryResult!6709)

(declare-fun lt!291588 () SeekEntryResult!6709)

(assert (=> b!631051 (= e!360804 (= lt!291594 lt!291588))))

(declare-fun b!631052 () Bool)

(declare-fun res!408147 () Bool)

(declare-fun e!360802 () Bool)

(assert (=> b!631052 (=> (not res!408147) (not e!360802))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631052 (= res!408147 (validKeyInArray!0 k0!1786))))

(declare-fun b!631053 () Bool)

(declare-fun res!408150 () Bool)

(declare-fun e!360808 () Bool)

(assert (=> b!631053 (=> (not res!408150) (not e!360808))))

(declare-datatypes ((array!38063 0))(
  ( (array!38064 (arr!18262 (Array (_ BitVec 32) (_ BitVec 64))) (size!18626 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38063)

(declare-datatypes ((List!12356 0))(
  ( (Nil!12353) (Cons!12352 (h!13397 (_ BitVec 64)) (t!18592 List!12356)) )
))
(declare-fun arrayNoDuplicates!0 (array!38063 (_ BitVec 32) List!12356) Bool)

(assert (=> b!631053 (= res!408150 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12353))))

(declare-fun b!631054 () Bool)

(declare-fun res!408154 () Bool)

(assert (=> b!631054 (=> (not res!408154) (not e!360808))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38063 (_ BitVec 32)) Bool)

(assert (=> b!631054 (= res!408154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631055 () Bool)

(assert (=> b!631055 (= e!360802 e!360808)))

(declare-fun res!408151 () Bool)

(assert (=> b!631055 (=> (not res!408151) (not e!360808))))

(declare-fun lt!291592 () SeekEntryResult!6709)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!631055 (= res!408151 (or (= lt!291592 (MissingZero!6709 i!1108)) (= lt!291592 (MissingVacant!6709 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38063 (_ BitVec 32)) SeekEntryResult!6709)

(assert (=> b!631055 (= lt!291592 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!631056 () Bool)

(declare-fun res!408152 () Bool)

(assert (=> b!631056 (=> (not res!408152) (not e!360802))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!631056 (= res!408152 (validKeyInArray!0 (select (arr!18262 a!2986) j!136)))))

(declare-fun res!408148 () Bool)

(assert (=> start!57026 (=> (not res!408148) (not e!360802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57026 (= res!408148 (validMask!0 mask!3053))))

(assert (=> start!57026 e!360802))

(assert (=> start!57026 true))

(declare-fun array_inv!14036 (array!38063) Bool)

(assert (=> start!57026 (array_inv!14036 a!2986)))

(declare-fun b!631057 () Bool)

(declare-datatypes ((Unit!21194 0))(
  ( (Unit!21195) )
))
(declare-fun e!360807 () Unit!21194)

(declare-fun Unit!21196 () Unit!21194)

(assert (=> b!631057 (= e!360807 Unit!21196)))

(assert (=> b!631057 false))

(declare-fun b!631058 () Bool)

(declare-fun Unit!21197 () Unit!21194)

(assert (=> b!631058 (= e!360807 Unit!21197)))

(declare-fun b!631059 () Bool)

(declare-fun res!408158 () Bool)

(assert (=> b!631059 (=> (not res!408158) (not e!360802))))

(declare-fun arrayContainsKey!0 (array!38063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631059 (= res!408158 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631060 () Bool)

(declare-fun e!360803 () Bool)

(assert (=> b!631060 (= e!360808 e!360803)))

(declare-fun res!408157 () Bool)

(assert (=> b!631060 (=> (not res!408157) (not e!360803))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!631060 (= res!408157 (= (select (store (arr!18262 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291589 () array!38063)

(assert (=> b!631060 (= lt!291589 (array!38064 (store (arr!18262 a!2986) i!1108 k0!1786) (size!18626 a!2986)))))

(declare-fun b!631061 () Bool)

(declare-fun e!360805 () Bool)

(assert (=> b!631061 (= e!360805 (not true))))

(declare-fun lt!291591 () Unit!21194)

(assert (=> b!631061 (= lt!291591 e!360807)))

(declare-fun lt!291593 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun c!71819 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38063 (_ BitVec 32)) SeekEntryResult!6709)

(assert (=> b!631061 (= c!71819 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291593 lt!291589 mask!3053) Undefined!6709))))

(assert (=> b!631061 e!360804))

(declare-fun res!408149 () Bool)

(assert (=> b!631061 (=> (not res!408149) (not e!360804))))

(declare-fun lt!291590 () (_ BitVec 32))

(assert (=> b!631061 (= res!408149 (= lt!291588 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291590 vacantSpotIndex!68 lt!291593 lt!291589 mask!3053)))))

(assert (=> b!631061 (= lt!291588 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291590 vacantSpotIndex!68 (select (arr!18262 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631061 (= lt!291593 (select (store (arr!18262 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291587 () Unit!21194)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38063 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21194)

(assert (=> b!631061 (= lt!291587 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291590 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631061 (= lt!291590 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631062 () Bool)

(declare-fun res!408153 () Bool)

(assert (=> b!631062 (=> (not res!408153) (not e!360802))))

(assert (=> b!631062 (= res!408153 (and (= (size!18626 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18626 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18626 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631063 () Bool)

(assert (=> b!631063 (= e!360803 e!360805)))

(declare-fun res!408156 () Bool)

(assert (=> b!631063 (=> (not res!408156) (not e!360805))))

(assert (=> b!631063 (= res!408156 (and (= lt!291594 (Found!6709 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18262 a!2986) index!984) (select (arr!18262 a!2986) j!136))) (not (= (select (arr!18262 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631063 (= lt!291594 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18262 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631064 () Bool)

(declare-fun res!408155 () Bool)

(assert (=> b!631064 (=> (not res!408155) (not e!360808))))

(assert (=> b!631064 (= res!408155 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18262 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!57026 res!408148) b!631062))

(assert (= (and b!631062 res!408153) b!631056))

(assert (= (and b!631056 res!408152) b!631052))

(assert (= (and b!631052 res!408147) b!631059))

(assert (= (and b!631059 res!408158) b!631055))

(assert (= (and b!631055 res!408151) b!631054))

(assert (= (and b!631054 res!408154) b!631053))

(assert (= (and b!631053 res!408150) b!631064))

(assert (= (and b!631064 res!408155) b!631060))

(assert (= (and b!631060 res!408157) b!631063))

(assert (= (and b!631063 res!408156) b!631061))

(assert (= (and b!631061 res!408149) b!631051))

(assert (= (and b!631061 c!71819) b!631057))

(assert (= (and b!631061 (not c!71819)) b!631058))

(declare-fun m!606049 () Bool)

(assert (=> b!631064 m!606049))

(declare-fun m!606051 () Bool)

(assert (=> b!631060 m!606051))

(declare-fun m!606053 () Bool)

(assert (=> b!631060 m!606053))

(declare-fun m!606055 () Bool)

(assert (=> b!631053 m!606055))

(declare-fun m!606057 () Bool)

(assert (=> b!631052 m!606057))

(declare-fun m!606059 () Bool)

(assert (=> b!631063 m!606059))

(declare-fun m!606061 () Bool)

(assert (=> b!631063 m!606061))

(assert (=> b!631063 m!606061))

(declare-fun m!606063 () Bool)

(assert (=> b!631063 m!606063))

(declare-fun m!606065 () Bool)

(assert (=> b!631059 m!606065))

(assert (=> b!631056 m!606061))

(assert (=> b!631056 m!606061))

(declare-fun m!606067 () Bool)

(assert (=> b!631056 m!606067))

(declare-fun m!606069 () Bool)

(assert (=> b!631055 m!606069))

(declare-fun m!606071 () Bool)

(assert (=> start!57026 m!606071))

(declare-fun m!606073 () Bool)

(assert (=> start!57026 m!606073))

(declare-fun m!606075 () Bool)

(assert (=> b!631061 m!606075))

(declare-fun m!606077 () Bool)

(assert (=> b!631061 m!606077))

(declare-fun m!606079 () Bool)

(assert (=> b!631061 m!606079))

(assert (=> b!631061 m!606061))

(declare-fun m!606081 () Bool)

(assert (=> b!631061 m!606081))

(assert (=> b!631061 m!606061))

(declare-fun m!606083 () Bool)

(assert (=> b!631061 m!606083))

(assert (=> b!631061 m!606051))

(declare-fun m!606085 () Bool)

(assert (=> b!631061 m!606085))

(declare-fun m!606087 () Bool)

(assert (=> b!631054 m!606087))

(check-sat (not b!631059) (not b!631056) (not b!631053) (not b!631052) (not b!631063) (not start!57026) (not b!631055) (not b!631061) (not b!631054))
(check-sat)
