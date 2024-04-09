; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53784 () Bool)

(assert start!53784)

(declare-fun b!586408 () Bool)

(declare-fun res!374381 () Bool)

(declare-fun e!335203 () Bool)

(assert (=> b!586408 (=> (not res!374381) (not e!335203))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36639 0))(
  ( (array!36640 (arr!17590 (Array (_ BitVec 32) (_ BitVec 64))) (size!17954 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36639)

(assert (=> b!586408 (= res!374381 (and (= (size!17954 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17954 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17954 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586409 () Bool)

(declare-fun res!374374 () Bool)

(declare-fun e!335202 () Bool)

(assert (=> b!586409 (=> (not res!374374) (not e!335202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36639 (_ BitVec 32)) Bool)

(assert (=> b!586409 (= res!374374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586410 () Bool)

(assert (=> b!586410 (= e!335203 e!335202)))

(declare-fun res!374375 () Bool)

(assert (=> b!586410 (=> (not res!374375) (not e!335202))))

(declare-datatypes ((SeekEntryResult!6037 0))(
  ( (MissingZero!6037 (index!26375 (_ BitVec 32))) (Found!6037 (index!26376 (_ BitVec 32))) (Intermediate!6037 (undefined!6849 Bool) (index!26377 (_ BitVec 32)) (x!55213 (_ BitVec 32))) (Undefined!6037) (MissingVacant!6037 (index!26378 (_ BitVec 32))) )
))
(declare-fun lt!266100 () SeekEntryResult!6037)

(assert (=> b!586410 (= res!374375 (or (= lt!266100 (MissingZero!6037 i!1108)) (= lt!266100 (MissingVacant!6037 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36639 (_ BitVec 32)) SeekEntryResult!6037)

(assert (=> b!586410 (= lt!266100 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!586411 () Bool)

(declare-fun res!374376 () Bool)

(assert (=> b!586411 (=> (not res!374376) (not e!335203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586411 (= res!374376 (validKeyInArray!0 k0!1786))))

(declare-fun b!586412 () Bool)

(assert (=> b!586412 (= e!335202 (not true))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!266102 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36639 (_ BitVec 32)) SeekEntryResult!6037)

(assert (=> b!586412 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266102 vacantSpotIndex!68 (select (arr!17590 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266102 vacantSpotIndex!68 (select (store (arr!17590 a!2986) i!1108 k0!1786) j!136) (array!36640 (store (arr!17590 a!2986) i!1108 k0!1786) (size!17954 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18198 0))(
  ( (Unit!18199) )
))
(declare-fun lt!266101 () Unit!18198)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36639 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18198)

(assert (=> b!586412 (= lt!266101 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266102 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586412 (= lt!266102 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586413 () Bool)

(declare-fun res!374383 () Bool)

(assert (=> b!586413 (=> (not res!374383) (not e!335202))))

(declare-datatypes ((List!11684 0))(
  ( (Nil!11681) (Cons!11680 (h!12725 (_ BitVec 64)) (t!17920 List!11684)) )
))
(declare-fun arrayNoDuplicates!0 (array!36639 (_ BitVec 32) List!11684) Bool)

(assert (=> b!586413 (= res!374383 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11681))))

(declare-fun res!374382 () Bool)

(assert (=> start!53784 (=> (not res!374382) (not e!335203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53784 (= res!374382 (validMask!0 mask!3053))))

(assert (=> start!53784 e!335203))

(assert (=> start!53784 true))

(declare-fun array_inv!13364 (array!36639) Bool)

(assert (=> start!53784 (array_inv!13364 a!2986)))

(declare-fun b!586414 () Bool)

(declare-fun res!374379 () Bool)

(assert (=> b!586414 (=> (not res!374379) (not e!335202))))

(assert (=> b!586414 (= res!374379 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17590 a!2986) j!136) a!2986 mask!3053) (Found!6037 j!136)))))

(declare-fun b!586415 () Bool)

(declare-fun res!374377 () Bool)

(assert (=> b!586415 (=> (not res!374377) (not e!335203))))

(assert (=> b!586415 (= res!374377 (validKeyInArray!0 (select (arr!17590 a!2986) j!136)))))

(declare-fun b!586416 () Bool)

(declare-fun res!374380 () Bool)

(assert (=> b!586416 (=> (not res!374380) (not e!335203))))

(declare-fun arrayContainsKey!0 (array!36639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586416 (= res!374380 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586417 () Bool)

(declare-fun res!374384 () Bool)

(assert (=> b!586417 (=> (not res!374384) (not e!335202))))

(assert (=> b!586417 (= res!374384 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17590 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17590 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586418 () Bool)

(declare-fun res!374378 () Bool)

(assert (=> b!586418 (=> (not res!374378) (not e!335202))))

(assert (=> b!586418 (= res!374378 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17590 a!2986) index!984) (select (arr!17590 a!2986) j!136))) (not (= (select (arr!17590 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53784 res!374382) b!586408))

(assert (= (and b!586408 res!374381) b!586415))

(assert (= (and b!586415 res!374377) b!586411))

(assert (= (and b!586411 res!374376) b!586416))

(assert (= (and b!586416 res!374380) b!586410))

(assert (= (and b!586410 res!374375) b!586409))

(assert (= (and b!586409 res!374374) b!586413))

(assert (= (and b!586413 res!374383) b!586417))

(assert (= (and b!586417 res!374384) b!586414))

(assert (= (and b!586414 res!374379) b!586418))

(assert (= (and b!586418 res!374378) b!586412))

(declare-fun m!564843 () Bool)

(assert (=> b!586414 m!564843))

(assert (=> b!586414 m!564843))

(declare-fun m!564845 () Bool)

(assert (=> b!586414 m!564845))

(declare-fun m!564847 () Bool)

(assert (=> b!586412 m!564847))

(declare-fun m!564849 () Bool)

(assert (=> b!586412 m!564849))

(assert (=> b!586412 m!564843))

(declare-fun m!564851 () Bool)

(assert (=> b!586412 m!564851))

(assert (=> b!586412 m!564843))

(declare-fun m!564853 () Bool)

(assert (=> b!586412 m!564853))

(assert (=> b!586412 m!564849))

(declare-fun m!564855 () Bool)

(assert (=> b!586412 m!564855))

(declare-fun m!564857 () Bool)

(assert (=> b!586412 m!564857))

(declare-fun m!564859 () Bool)

(assert (=> b!586418 m!564859))

(assert (=> b!586418 m!564843))

(declare-fun m!564861 () Bool)

(assert (=> b!586411 m!564861))

(assert (=> b!586415 m!564843))

(assert (=> b!586415 m!564843))

(declare-fun m!564863 () Bool)

(assert (=> b!586415 m!564863))

(declare-fun m!564865 () Bool)

(assert (=> b!586416 m!564865))

(declare-fun m!564867 () Bool)

(assert (=> b!586417 m!564867))

(assert (=> b!586417 m!564851))

(declare-fun m!564869 () Bool)

(assert (=> b!586417 m!564869))

(declare-fun m!564871 () Bool)

(assert (=> b!586409 m!564871))

(declare-fun m!564873 () Bool)

(assert (=> b!586410 m!564873))

(declare-fun m!564875 () Bool)

(assert (=> start!53784 m!564875))

(declare-fun m!564877 () Bool)

(assert (=> start!53784 m!564877))

(declare-fun m!564879 () Bool)

(assert (=> b!586413 m!564879))

(check-sat (not b!586413) (not b!586409) (not start!53784) (not b!586416) (not b!586411) (not b!586412) (not b!586414) (not b!586410) (not b!586415))
(check-sat)
