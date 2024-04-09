; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53542 () Bool)

(assert start!53542)

(declare-fun b!582429 () Bool)

(declare-fun e!333941 () Bool)

(assert (=> b!582429 (= e!333941 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5916 0))(
  ( (MissingZero!5916 (index!25891 (_ BitVec 32))) (Found!5916 (index!25892 (_ BitVec 32))) (Intermediate!5916 (undefined!6728 Bool) (index!25893 (_ BitVec 32)) (x!54772 (_ BitVec 32))) (Undefined!5916) (MissingVacant!5916 (index!25894 (_ BitVec 32))) )
))
(declare-fun lt!265118 () SeekEntryResult!5916)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36397 0))(
  ( (array!36398 (arr!17469 (Array (_ BitVec 32) (_ BitVec 64))) (size!17833 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36397)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36397 (_ BitVec 32)) SeekEntryResult!5916)

(assert (=> b!582429 (= lt!265118 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17469 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582430 () Bool)

(declare-fun res!370399 () Bool)

(declare-fun e!333942 () Bool)

(assert (=> b!582430 (=> (not res!370399) (not e!333942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582430 (= res!370399 (validKeyInArray!0 (select (arr!17469 a!2986) j!136)))))

(declare-fun b!582431 () Bool)

(declare-fun res!370397 () Bool)

(assert (=> b!582431 (=> (not res!370397) (not e!333942))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582431 (= res!370397 (and (= (size!17833 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17833 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17833 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582432 () Bool)

(declare-fun res!370402 () Bool)

(assert (=> b!582432 (=> (not res!370402) (not e!333941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36397 (_ BitVec 32)) Bool)

(assert (=> b!582432 (= res!370402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582433 () Bool)

(declare-fun res!370396 () Bool)

(assert (=> b!582433 (=> (not res!370396) (not e!333941))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!582433 (= res!370396 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17469 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17469 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582434 () Bool)

(declare-fun res!370401 () Bool)

(assert (=> b!582434 (=> (not res!370401) (not e!333942))))

(assert (=> b!582434 (= res!370401 (validKeyInArray!0 k!1786))))

(declare-fun b!582435 () Bool)

(assert (=> b!582435 (= e!333942 e!333941)))

(declare-fun res!370398 () Bool)

(assert (=> b!582435 (=> (not res!370398) (not e!333941))))

(declare-fun lt!265117 () SeekEntryResult!5916)

(assert (=> b!582435 (= res!370398 (or (= lt!265117 (MissingZero!5916 i!1108)) (= lt!265117 (MissingVacant!5916 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36397 (_ BitVec 32)) SeekEntryResult!5916)

(assert (=> b!582435 (= lt!265117 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!370400 () Bool)

(assert (=> start!53542 (=> (not res!370400) (not e!333942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53542 (= res!370400 (validMask!0 mask!3053))))

(assert (=> start!53542 e!333942))

(assert (=> start!53542 true))

(declare-fun array_inv!13243 (array!36397) Bool)

(assert (=> start!53542 (array_inv!13243 a!2986)))

(declare-fun b!582436 () Bool)

(declare-fun res!370395 () Bool)

(assert (=> b!582436 (=> (not res!370395) (not e!333941))))

(declare-datatypes ((List!11563 0))(
  ( (Nil!11560) (Cons!11559 (h!12604 (_ BitVec 64)) (t!17799 List!11563)) )
))
(declare-fun arrayNoDuplicates!0 (array!36397 (_ BitVec 32) List!11563) Bool)

(assert (=> b!582436 (= res!370395 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11560))))

(declare-fun b!582437 () Bool)

(declare-fun res!370403 () Bool)

(assert (=> b!582437 (=> (not res!370403) (not e!333942))))

(declare-fun arrayContainsKey!0 (array!36397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582437 (= res!370403 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53542 res!370400) b!582431))

(assert (= (and b!582431 res!370397) b!582430))

(assert (= (and b!582430 res!370399) b!582434))

(assert (= (and b!582434 res!370401) b!582437))

(assert (= (and b!582437 res!370403) b!582435))

(assert (= (and b!582435 res!370398) b!582432))

(assert (= (and b!582432 res!370402) b!582436))

(assert (= (and b!582436 res!370395) b!582433))

(assert (= (and b!582433 res!370396) b!582429))

(declare-fun m!560977 () Bool)

(assert (=> b!582429 m!560977))

(assert (=> b!582429 m!560977))

(declare-fun m!560979 () Bool)

(assert (=> b!582429 m!560979))

(declare-fun m!560981 () Bool)

(assert (=> b!582432 m!560981))

(assert (=> b!582430 m!560977))

(assert (=> b!582430 m!560977))

(declare-fun m!560983 () Bool)

(assert (=> b!582430 m!560983))

(declare-fun m!560985 () Bool)

(assert (=> b!582437 m!560985))

(declare-fun m!560987 () Bool)

(assert (=> b!582434 m!560987))

(declare-fun m!560989 () Bool)

(assert (=> b!582433 m!560989))

(declare-fun m!560991 () Bool)

(assert (=> b!582433 m!560991))

(declare-fun m!560993 () Bool)

(assert (=> b!582433 m!560993))

(declare-fun m!560995 () Bool)

(assert (=> b!582435 m!560995))

(declare-fun m!560997 () Bool)

(assert (=> b!582436 m!560997))

(declare-fun m!560999 () Bool)

(assert (=> start!53542 m!560999))

(declare-fun m!561001 () Bool)

(assert (=> start!53542 m!561001))

(push 1)

