; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57014 () Bool)

(assert start!57014)

(declare-fun b!630799 () Bool)

(declare-fun e!360680 () Bool)

(declare-datatypes ((SeekEntryResult!6703 0))(
  ( (MissingZero!6703 (index!29101 (_ BitVec 32))) (Found!6703 (index!29102 (_ BitVec 32))) (Intermediate!6703 (undefined!7515 Bool) (index!29103 (_ BitVec 32)) (x!57866 (_ BitVec 32))) (Undefined!6703) (MissingVacant!6703 (index!29104 (_ BitVec 32))) )
))
(declare-fun lt!291438 () SeekEntryResult!6703)

(declare-fun lt!291435 () SeekEntryResult!6703)

(assert (=> b!630799 (= e!360680 (= lt!291438 lt!291435))))

(declare-fun res!407940 () Bool)

(declare-fun e!360676 () Bool)

(assert (=> start!57014 (=> (not res!407940) (not e!360676))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57014 (= res!407940 (validMask!0 mask!3053))))

(assert (=> start!57014 e!360676))

(assert (=> start!57014 true))

(declare-datatypes ((array!38051 0))(
  ( (array!38052 (arr!18256 (Array (_ BitVec 32) (_ BitVec 64))) (size!18620 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38051)

(declare-fun array_inv!14030 (array!38051) Bool)

(assert (=> start!57014 (array_inv!14030 a!2986)))

(declare-fun b!630800 () Bool)

(declare-fun res!407942 () Bool)

(assert (=> b!630800 (=> (not res!407942) (not e!360676))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630800 (= res!407942 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630801 () Bool)

(declare-datatypes ((Unit!21170 0))(
  ( (Unit!21171) )
))
(declare-fun e!360679 () Unit!21170)

(declare-fun Unit!21172 () Unit!21170)

(assert (=> b!630801 (= e!360679 Unit!21172)))

(assert (=> b!630801 false))

(declare-fun b!630802 () Bool)

(declare-fun res!407934 () Bool)

(assert (=> b!630802 (=> (not res!407934) (not e!360676))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630802 (= res!407934 (validKeyInArray!0 (select (arr!18256 a!2986) j!136)))))

(declare-fun b!630803 () Bool)

(declare-fun e!360678 () Bool)

(declare-fun e!360682 () Bool)

(assert (=> b!630803 (= e!360678 e!360682)))

(declare-fun res!407932 () Bool)

(assert (=> b!630803 (=> (not res!407932) (not e!360682))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630803 (= res!407932 (and (= lt!291438 (Found!6703 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18256 a!2986) index!984) (select (arr!18256 a!2986) j!136))) (not (= (select (arr!18256 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38051 (_ BitVec 32)) SeekEntryResult!6703)

(assert (=> b!630803 (= lt!291438 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18256 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630804 () Bool)

(declare-fun res!407938 () Bool)

(assert (=> b!630804 (=> (not res!407938) (not e!360676))))

(assert (=> b!630804 (= res!407938 (validKeyInArray!0 k0!1786))))

(declare-fun b!630805 () Bool)

(declare-fun e!360677 () Bool)

(assert (=> b!630805 (= e!360676 e!360677)))

(declare-fun res!407931 () Bool)

(assert (=> b!630805 (=> (not res!407931) (not e!360677))))

(declare-fun lt!291440 () SeekEntryResult!6703)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630805 (= res!407931 (or (= lt!291440 (MissingZero!6703 i!1108)) (= lt!291440 (MissingVacant!6703 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38051 (_ BitVec 32)) SeekEntryResult!6703)

(assert (=> b!630805 (= lt!291440 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!630806 () Bool)

(declare-fun res!407935 () Bool)

(assert (=> b!630806 (=> (not res!407935) (not e!360677))))

(assert (=> b!630806 (= res!407935 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18256 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630807 () Bool)

(declare-fun res!407939 () Bool)

(assert (=> b!630807 (=> (not res!407939) (not e!360677))))

(declare-datatypes ((List!12350 0))(
  ( (Nil!12347) (Cons!12346 (h!13391 (_ BitVec 64)) (t!18586 List!12350)) )
))
(declare-fun arrayNoDuplicates!0 (array!38051 (_ BitVec 32) List!12350) Bool)

(assert (=> b!630807 (= res!407939 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12347))))

(declare-fun b!630808 () Bool)

(declare-fun res!407936 () Bool)

(assert (=> b!630808 (=> (not res!407936) (not e!360677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38051 (_ BitVec 32)) Bool)

(assert (=> b!630808 (= res!407936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630809 () Bool)

(declare-fun res!407937 () Bool)

(assert (=> b!630809 (=> (not res!407937) (not e!360676))))

(assert (=> b!630809 (= res!407937 (and (= (size!18620 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18620 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18620 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630810 () Bool)

(assert (=> b!630810 (= e!360677 e!360678)))

(declare-fun res!407941 () Bool)

(assert (=> b!630810 (=> (not res!407941) (not e!360678))))

(assert (=> b!630810 (= res!407941 (= (select (store (arr!18256 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291441 () array!38051)

(assert (=> b!630810 (= lt!291441 (array!38052 (store (arr!18256 a!2986) i!1108 k0!1786) (size!18620 a!2986)))))

(declare-fun b!630811 () Bool)

(assert (=> b!630811 (= e!360682 (not true))))

(declare-fun lt!291437 () Unit!21170)

(assert (=> b!630811 (= lt!291437 e!360679)))

(declare-fun c!71801 () Bool)

(declare-fun lt!291439 () (_ BitVec 64))

(assert (=> b!630811 (= c!71801 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291439 lt!291441 mask!3053) Undefined!6703))))

(assert (=> b!630811 e!360680))

(declare-fun res!407933 () Bool)

(assert (=> b!630811 (=> (not res!407933) (not e!360680))))

(declare-fun lt!291434 () (_ BitVec 32))

(assert (=> b!630811 (= res!407933 (= lt!291435 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291434 vacantSpotIndex!68 lt!291439 lt!291441 mask!3053)))))

(assert (=> b!630811 (= lt!291435 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291434 vacantSpotIndex!68 (select (arr!18256 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630811 (= lt!291439 (select (store (arr!18256 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291436 () Unit!21170)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38051 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21170)

(assert (=> b!630811 (= lt!291436 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291434 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630811 (= lt!291434 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630812 () Bool)

(declare-fun Unit!21173 () Unit!21170)

(assert (=> b!630812 (= e!360679 Unit!21173)))

(assert (= (and start!57014 res!407940) b!630809))

(assert (= (and b!630809 res!407937) b!630802))

(assert (= (and b!630802 res!407934) b!630804))

(assert (= (and b!630804 res!407938) b!630800))

(assert (= (and b!630800 res!407942) b!630805))

(assert (= (and b!630805 res!407931) b!630808))

(assert (= (and b!630808 res!407936) b!630807))

(assert (= (and b!630807 res!407939) b!630806))

(assert (= (and b!630806 res!407935) b!630810))

(assert (= (and b!630810 res!407941) b!630803))

(assert (= (and b!630803 res!407932) b!630811))

(assert (= (and b!630811 res!407933) b!630799))

(assert (= (and b!630811 c!71801) b!630801))

(assert (= (and b!630811 (not c!71801)) b!630812))

(declare-fun m!605809 () Bool)

(assert (=> b!630803 m!605809))

(declare-fun m!605811 () Bool)

(assert (=> b!630803 m!605811))

(assert (=> b!630803 m!605811))

(declare-fun m!605813 () Bool)

(assert (=> b!630803 m!605813))

(declare-fun m!605815 () Bool)

(assert (=> b!630800 m!605815))

(declare-fun m!605817 () Bool)

(assert (=> start!57014 m!605817))

(declare-fun m!605819 () Bool)

(assert (=> start!57014 m!605819))

(assert (=> b!630802 m!605811))

(assert (=> b!630802 m!605811))

(declare-fun m!605821 () Bool)

(assert (=> b!630802 m!605821))

(declare-fun m!605823 () Bool)

(assert (=> b!630806 m!605823))

(declare-fun m!605825 () Bool)

(assert (=> b!630811 m!605825))

(declare-fun m!605827 () Bool)

(assert (=> b!630811 m!605827))

(declare-fun m!605829 () Bool)

(assert (=> b!630811 m!605829))

(assert (=> b!630811 m!605811))

(declare-fun m!605831 () Bool)

(assert (=> b!630811 m!605831))

(declare-fun m!605833 () Bool)

(assert (=> b!630811 m!605833))

(declare-fun m!605835 () Bool)

(assert (=> b!630811 m!605835))

(assert (=> b!630811 m!605811))

(declare-fun m!605837 () Bool)

(assert (=> b!630811 m!605837))

(declare-fun m!605839 () Bool)

(assert (=> b!630804 m!605839))

(declare-fun m!605841 () Bool)

(assert (=> b!630805 m!605841))

(declare-fun m!605843 () Bool)

(assert (=> b!630808 m!605843))

(assert (=> b!630810 m!605831))

(declare-fun m!605845 () Bool)

(assert (=> b!630810 m!605845))

(declare-fun m!605847 () Bool)

(assert (=> b!630807 m!605847))

(check-sat (not b!630808) (not b!630803) (not b!630802) (not b!630805) (not start!57014) (not b!630807) (not b!630800) (not b!630811) (not b!630804))
(check-sat)
