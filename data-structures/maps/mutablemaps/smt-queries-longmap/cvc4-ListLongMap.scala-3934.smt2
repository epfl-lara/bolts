; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53636 () Bool)

(assert start!53636)

(declare-fun b!583839 () Bool)

(declare-fun res!371810 () Bool)

(declare-fun e!334409 () Bool)

(assert (=> b!583839 (=> (not res!371810) (not e!334409))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583839 (= res!371810 (validKeyInArray!0 k!1786))))

(declare-fun b!583840 () Bool)

(declare-fun res!371814 () Bool)

(declare-fun e!334408 () Bool)

(assert (=> b!583840 (=> (not res!371814) (not e!334408))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36491 0))(
  ( (array!36492 (arr!17516 (Array (_ BitVec 32) (_ BitVec 64))) (size!17880 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36491)

(assert (=> b!583840 (= res!371814 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17516 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17516 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583841 () Bool)

(declare-fun e!334410 () Bool)

(assert (=> b!583841 (= e!334410 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!265434 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5963 0))(
  ( (MissingZero!5963 (index!26079 (_ BitVec 32))) (Found!5963 (index!26080 (_ BitVec 32))) (Intermediate!5963 (undefined!6775 Bool) (index!26081 (_ BitVec 32)) (x!54939 (_ BitVec 32))) (Undefined!5963) (MissingVacant!5963 (index!26082 (_ BitVec 32))) )
))
(declare-fun lt!265436 () SeekEntryResult!5963)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36491 (_ BitVec 32)) SeekEntryResult!5963)

(assert (=> b!583841 (= lt!265436 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265434 vacantSpotIndex!68 (select (arr!17516 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583842 () Bool)

(assert (=> b!583842 (= e!334408 e!334410)))

(declare-fun res!371805 () Bool)

(assert (=> b!583842 (=> (not res!371805) (not e!334410))))

(assert (=> b!583842 (= res!371805 (and (bvsge lt!265434 #b00000000000000000000000000000000) (bvslt lt!265434 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583842 (= lt!265434 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583843 () Bool)

(declare-fun res!371807 () Bool)

(assert (=> b!583843 (=> (not res!371807) (not e!334408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36491 (_ BitVec 32)) Bool)

(assert (=> b!583843 (= res!371807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!371811 () Bool)

(assert (=> start!53636 (=> (not res!371811) (not e!334409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53636 (= res!371811 (validMask!0 mask!3053))))

(assert (=> start!53636 e!334409))

(assert (=> start!53636 true))

(declare-fun array_inv!13290 (array!36491) Bool)

(assert (=> start!53636 (array_inv!13290 a!2986)))

(declare-fun b!583844 () Bool)

(declare-fun res!371809 () Bool)

(assert (=> b!583844 (=> (not res!371809) (not e!334409))))

(assert (=> b!583844 (= res!371809 (and (= (size!17880 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17880 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17880 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583845 () Bool)

(declare-fun res!371812 () Bool)

(assert (=> b!583845 (=> (not res!371812) (not e!334408))))

(assert (=> b!583845 (= res!371812 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17516 a!2986) j!136) a!2986 mask!3053) (Found!5963 j!136)))))

(declare-fun b!583846 () Bool)

(declare-fun res!371815 () Bool)

(assert (=> b!583846 (=> (not res!371815) (not e!334408))))

(assert (=> b!583846 (= res!371815 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17516 a!2986) index!984) (select (arr!17516 a!2986) j!136))) (not (= (select (arr!17516 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583847 () Bool)

(declare-fun res!371816 () Bool)

(assert (=> b!583847 (=> (not res!371816) (not e!334408))))

(declare-datatypes ((List!11610 0))(
  ( (Nil!11607) (Cons!11606 (h!12651 (_ BitVec 64)) (t!17846 List!11610)) )
))
(declare-fun arrayNoDuplicates!0 (array!36491 (_ BitVec 32) List!11610) Bool)

(assert (=> b!583847 (= res!371816 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11607))))

(declare-fun b!583848 () Bool)

(declare-fun res!371808 () Bool)

(assert (=> b!583848 (=> (not res!371808) (not e!334409))))

(declare-fun arrayContainsKey!0 (array!36491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583848 (= res!371808 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583849 () Bool)

(assert (=> b!583849 (= e!334409 e!334408)))

(declare-fun res!371806 () Bool)

(assert (=> b!583849 (=> (not res!371806) (not e!334408))))

(declare-fun lt!265435 () SeekEntryResult!5963)

(assert (=> b!583849 (= res!371806 (or (= lt!265435 (MissingZero!5963 i!1108)) (= lt!265435 (MissingVacant!5963 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36491 (_ BitVec 32)) SeekEntryResult!5963)

(assert (=> b!583849 (= lt!265435 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583850 () Bool)

(declare-fun res!371813 () Bool)

(assert (=> b!583850 (=> (not res!371813) (not e!334409))))

(assert (=> b!583850 (= res!371813 (validKeyInArray!0 (select (arr!17516 a!2986) j!136)))))

(assert (= (and start!53636 res!371811) b!583844))

(assert (= (and b!583844 res!371809) b!583850))

(assert (= (and b!583850 res!371813) b!583839))

(assert (= (and b!583839 res!371810) b!583848))

(assert (= (and b!583848 res!371808) b!583849))

(assert (= (and b!583849 res!371806) b!583843))

(assert (= (and b!583843 res!371807) b!583847))

(assert (= (and b!583847 res!371816) b!583840))

(assert (= (and b!583840 res!371814) b!583845))

(assert (= (and b!583845 res!371812) b!583846))

(assert (= (and b!583846 res!371815) b!583842))

(assert (= (and b!583842 res!371805) b!583841))

(declare-fun m!562289 () Bool)

(assert (=> b!583849 m!562289))

(declare-fun m!562291 () Bool)

(assert (=> b!583848 m!562291))

(declare-fun m!562293 () Bool)

(assert (=> b!583846 m!562293))

(declare-fun m!562295 () Bool)

(assert (=> b!583846 m!562295))

(declare-fun m!562297 () Bool)

(assert (=> b!583840 m!562297))

(declare-fun m!562299 () Bool)

(assert (=> b!583840 m!562299))

(declare-fun m!562301 () Bool)

(assert (=> b!583840 m!562301))

(declare-fun m!562303 () Bool)

(assert (=> b!583839 m!562303))

(assert (=> b!583841 m!562295))

(assert (=> b!583841 m!562295))

(declare-fun m!562305 () Bool)

(assert (=> b!583841 m!562305))

(declare-fun m!562307 () Bool)

(assert (=> b!583842 m!562307))

(declare-fun m!562309 () Bool)

(assert (=> b!583843 m!562309))

(assert (=> b!583845 m!562295))

(assert (=> b!583845 m!562295))

(declare-fun m!562311 () Bool)

(assert (=> b!583845 m!562311))

(assert (=> b!583850 m!562295))

(assert (=> b!583850 m!562295))

(declare-fun m!562313 () Bool)

(assert (=> b!583850 m!562313))

(declare-fun m!562315 () Bool)

(assert (=> start!53636 m!562315))

(declare-fun m!562317 () Bool)

(assert (=> start!53636 m!562317))

(declare-fun m!562319 () Bool)

(assert (=> b!583847 m!562319))

(push 1)

(assert (not b!583849))

(assert (not b!583847))

(assert (not b!583839))

