; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57098 () Bool)

(assert start!57098)

(declare-fun b!631578 () Bool)

(declare-fun res!408450 () Bool)

(declare-fun e!361107 () Bool)

(assert (=> b!631578 (=> (not res!408450) (not e!361107))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38078 0))(
  ( (array!38079 (arr!18268 (Array (_ BitVec 32) (_ BitVec 64))) (size!18632 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38078)

(assert (=> b!631578 (= res!408450 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18268 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631579 () Bool)

(declare-fun e!361111 () Bool)

(declare-fun e!361106 () Bool)

(assert (=> b!631579 (= e!361111 (not e!361106))))

(declare-fun res!408441 () Bool)

(assert (=> b!631579 (=> res!408441 e!361106)))

(declare-datatypes ((SeekEntryResult!6715 0))(
  ( (MissingZero!6715 (index!29152 (_ BitVec 32))) (Found!6715 (index!29153 (_ BitVec 32))) (Intermediate!6715 (undefined!7527 Bool) (index!29154 (_ BitVec 32)) (x!57919 (_ BitVec 32))) (Undefined!6715) (MissingVacant!6715 (index!29155 (_ BitVec 32))) )
))
(declare-fun lt!291853 () SeekEntryResult!6715)

(assert (=> b!631579 (= res!408441 (not (= lt!291853 (Found!6715 index!984))))))

(declare-datatypes ((Unit!21218 0))(
  ( (Unit!21219) )
))
(declare-fun lt!291860 () Unit!21218)

(declare-fun e!361109 () Unit!21218)

(assert (=> b!631579 (= lt!291860 e!361109)))

(declare-fun c!71936 () Bool)

(assert (=> b!631579 (= c!71936 (= lt!291853 Undefined!6715))))

(declare-fun lt!291856 () array!38078)

(declare-fun lt!291854 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38078 (_ BitVec 32)) SeekEntryResult!6715)

(assert (=> b!631579 (= lt!291853 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291854 lt!291856 mask!3053))))

(declare-fun e!361105 () Bool)

(assert (=> b!631579 e!361105))

(declare-fun res!408448 () Bool)

(assert (=> b!631579 (=> (not res!408448) (not e!361105))))

(declare-fun lt!291859 () SeekEntryResult!6715)

(declare-fun lt!291855 () (_ BitVec 32))

(assert (=> b!631579 (= res!408448 (= lt!291859 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291855 vacantSpotIndex!68 lt!291854 lt!291856 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!631579 (= lt!291859 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291855 vacantSpotIndex!68 (select (arr!18268 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!631579 (= lt!291854 (select (store (arr!18268 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291861 () Unit!21218)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38078 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21218)

(assert (=> b!631579 (= lt!291861 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291855 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631579 (= lt!291855 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631580 () Bool)

(declare-fun Unit!21220 () Unit!21218)

(assert (=> b!631580 (= e!361109 Unit!21220)))

(assert (=> b!631580 false))

(declare-fun b!631581 () Bool)

(declare-fun res!408452 () Bool)

(declare-fun e!361104 () Bool)

(assert (=> b!631581 (=> (not res!408452) (not e!361104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631581 (= res!408452 (validKeyInArray!0 (select (arr!18268 a!2986) j!136)))))

(declare-fun b!631582 () Bool)

(declare-fun res!408445 () Bool)

(assert (=> b!631582 (=> (not res!408445) (not e!361107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38078 (_ BitVec 32)) Bool)

(assert (=> b!631582 (= res!408445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631583 () Bool)

(declare-fun res!408443 () Bool)

(assert (=> b!631583 (=> (not res!408443) (not e!361107))))

(declare-datatypes ((List!12362 0))(
  ( (Nil!12359) (Cons!12358 (h!13403 (_ BitVec 64)) (t!18598 List!12362)) )
))
(declare-fun arrayNoDuplicates!0 (array!38078 (_ BitVec 32) List!12362) Bool)

(assert (=> b!631583 (= res!408443 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12359))))

(declare-fun b!631584 () Bool)

(declare-fun res!408446 () Bool)

(assert (=> b!631584 (=> (not res!408446) (not e!361104))))

(assert (=> b!631584 (= res!408446 (and (= (size!18632 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18632 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18632 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631585 () Bool)

(declare-fun lt!291857 () SeekEntryResult!6715)

(assert (=> b!631585 (= e!361105 (= lt!291857 lt!291859))))

(declare-fun b!631586 () Bool)

(assert (=> b!631586 (= e!361104 e!361107)))

(declare-fun res!408444 () Bool)

(assert (=> b!631586 (=> (not res!408444) (not e!361107))))

(declare-fun lt!291858 () SeekEntryResult!6715)

(assert (=> b!631586 (= res!408444 (or (= lt!291858 (MissingZero!6715 i!1108)) (= lt!291858 (MissingVacant!6715 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38078 (_ BitVec 32)) SeekEntryResult!6715)

(assert (=> b!631586 (= lt!291858 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!631587 () Bool)

(assert (=> b!631587 (= e!361106 true)))

(assert (=> b!631587 (= (select (store (arr!18268 a!2986) i!1108 k0!1786) index!984) (select (arr!18268 a!2986) j!136))))

(declare-fun res!408451 () Bool)

(assert (=> start!57098 (=> (not res!408451) (not e!361104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57098 (= res!408451 (validMask!0 mask!3053))))

(assert (=> start!57098 e!361104))

(assert (=> start!57098 true))

(declare-fun array_inv!14042 (array!38078) Bool)

(assert (=> start!57098 (array_inv!14042 a!2986)))

(declare-fun b!631588 () Bool)

(declare-fun e!361110 () Bool)

(assert (=> b!631588 (= e!361107 e!361110)))

(declare-fun res!408440 () Bool)

(assert (=> b!631588 (=> (not res!408440) (not e!361110))))

(assert (=> b!631588 (= res!408440 (= (select (store (arr!18268 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631588 (= lt!291856 (array!38079 (store (arr!18268 a!2986) i!1108 k0!1786) (size!18632 a!2986)))))

(declare-fun b!631589 () Bool)

(declare-fun res!408442 () Bool)

(assert (=> b!631589 (=> (not res!408442) (not e!361104))))

(assert (=> b!631589 (= res!408442 (validKeyInArray!0 k0!1786))))

(declare-fun b!631590 () Bool)

(declare-fun Unit!21221 () Unit!21218)

(assert (=> b!631590 (= e!361109 Unit!21221)))

(declare-fun b!631591 () Bool)

(assert (=> b!631591 (= e!361110 e!361111)))

(declare-fun res!408449 () Bool)

(assert (=> b!631591 (=> (not res!408449) (not e!361111))))

(assert (=> b!631591 (= res!408449 (and (= lt!291857 (Found!6715 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18268 a!2986) index!984) (select (arr!18268 a!2986) j!136))) (not (= (select (arr!18268 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631591 (= lt!291857 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18268 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631592 () Bool)

(declare-fun res!408447 () Bool)

(assert (=> b!631592 (=> (not res!408447) (not e!361104))))

(declare-fun arrayContainsKey!0 (array!38078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631592 (= res!408447 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!57098 res!408451) b!631584))

(assert (= (and b!631584 res!408446) b!631581))

(assert (= (and b!631581 res!408452) b!631589))

(assert (= (and b!631589 res!408442) b!631592))

(assert (= (and b!631592 res!408447) b!631586))

(assert (= (and b!631586 res!408444) b!631582))

(assert (= (and b!631582 res!408445) b!631583))

(assert (= (and b!631583 res!408443) b!631578))

(assert (= (and b!631578 res!408450) b!631588))

(assert (= (and b!631588 res!408440) b!631591))

(assert (= (and b!631591 res!408449) b!631579))

(assert (= (and b!631579 res!408448) b!631585))

(assert (= (and b!631579 c!71936) b!631580))

(assert (= (and b!631579 (not c!71936)) b!631590))

(assert (= (and b!631579 (not res!408441)) b!631587))

(declare-fun m!606507 () Bool)

(assert (=> b!631588 m!606507))

(declare-fun m!606509 () Bool)

(assert (=> b!631588 m!606509))

(declare-fun m!606511 () Bool)

(assert (=> b!631581 m!606511))

(assert (=> b!631581 m!606511))

(declare-fun m!606513 () Bool)

(assert (=> b!631581 m!606513))

(declare-fun m!606515 () Bool)

(assert (=> b!631582 m!606515))

(declare-fun m!606517 () Bool)

(assert (=> b!631591 m!606517))

(assert (=> b!631591 m!606511))

(assert (=> b!631591 m!606511))

(declare-fun m!606519 () Bool)

(assert (=> b!631591 m!606519))

(declare-fun m!606521 () Bool)

(assert (=> b!631589 m!606521))

(assert (=> b!631579 m!606511))

(declare-fun m!606523 () Bool)

(assert (=> b!631579 m!606523))

(declare-fun m!606525 () Bool)

(assert (=> b!631579 m!606525))

(declare-fun m!606527 () Bool)

(assert (=> b!631579 m!606527))

(assert (=> b!631579 m!606511))

(assert (=> b!631579 m!606507))

(declare-fun m!606529 () Bool)

(assert (=> b!631579 m!606529))

(declare-fun m!606531 () Bool)

(assert (=> b!631579 m!606531))

(declare-fun m!606533 () Bool)

(assert (=> b!631579 m!606533))

(declare-fun m!606535 () Bool)

(assert (=> start!57098 m!606535))

(declare-fun m!606537 () Bool)

(assert (=> start!57098 m!606537))

(declare-fun m!606539 () Bool)

(assert (=> b!631578 m!606539))

(declare-fun m!606541 () Bool)

(assert (=> b!631592 m!606541))

(declare-fun m!606543 () Bool)

(assert (=> b!631586 m!606543))

(declare-fun m!606545 () Bool)

(assert (=> b!631583 m!606545))

(assert (=> b!631587 m!606507))

(declare-fun m!606547 () Bool)

(assert (=> b!631587 m!606547))

(assert (=> b!631587 m!606511))

(check-sat (not b!631581) (not b!631589) (not b!631592) (not start!57098) (not b!631586) (not b!631591) (not b!631582) (not b!631579) (not b!631583))
(check-sat)
