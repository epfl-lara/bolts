; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53928 () Bool)

(assert start!53928)

(declare-fun b!588046 () Bool)

(declare-fun e!335826 () Bool)

(declare-fun e!335824 () Bool)

(assert (=> b!588046 (= e!335826 e!335824)))

(declare-fun res!375833 () Bool)

(assert (=> b!588046 (=> (not res!375833) (not e!335824))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6079 0))(
  ( (MissingZero!6079 (index!26546 (_ BitVec 32))) (Found!6079 (index!26547 (_ BitVec 32))) (Intermediate!6079 (undefined!6891 Bool) (index!26548 (_ BitVec 32)) (x!55376 (_ BitVec 32))) (Undefined!6079) (MissingVacant!6079 (index!26549 (_ BitVec 32))) )
))
(declare-fun lt!266664 () SeekEntryResult!6079)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36726 0))(
  ( (array!36727 (arr!17632 (Array (_ BitVec 32) (_ BitVec 64))) (size!17996 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36726)

(assert (=> b!588046 (= res!375833 (and (= lt!266664 (Found!6079 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17632 a!2986) index!984) (select (arr!17632 a!2986) j!136))) (not (= (select (arr!17632 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36726 (_ BitVec 32)) SeekEntryResult!6079)

(assert (=> b!588046 (= lt!266664 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17632 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588048 () Bool)

(declare-fun res!375838 () Bool)

(declare-fun e!335827 () Bool)

(assert (=> b!588048 (=> (not res!375838) (not e!335827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588048 (= res!375838 (validKeyInArray!0 (select (arr!17632 a!2986) j!136)))))

(declare-fun b!588049 () Bool)

(assert (=> b!588049 (= e!335827 e!335826)))

(declare-fun res!375839 () Bool)

(assert (=> b!588049 (=> (not res!375839) (not e!335826))))

(declare-fun lt!266665 () SeekEntryResult!6079)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588049 (= res!375839 (or (= lt!266665 (MissingZero!6079 i!1108)) (= lt!266665 (MissingVacant!6079 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36726 (_ BitVec 32)) SeekEntryResult!6079)

(assert (=> b!588049 (= lt!266665 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588050 () Bool)

(declare-fun res!375832 () Bool)

(assert (=> b!588050 (=> (not res!375832) (not e!335826))))

(declare-datatypes ((List!11726 0))(
  ( (Nil!11723) (Cons!11722 (h!12767 (_ BitVec 64)) (t!17962 List!11726)) )
))
(declare-fun arrayNoDuplicates!0 (array!36726 (_ BitVec 32) List!11726) Bool)

(assert (=> b!588050 (= res!375832 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11723))))

(declare-fun b!588051 () Bool)

(declare-fun res!375841 () Bool)

(assert (=> b!588051 (=> (not res!375841) (not e!335826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36726 (_ BitVec 32)) Bool)

(assert (=> b!588051 (= res!375841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588052 () Bool)

(declare-fun res!375835 () Bool)

(assert (=> b!588052 (=> (not res!375835) (not e!335827))))

(assert (=> b!588052 (= res!375835 (validKeyInArray!0 k0!1786))))

(declare-fun b!588053 () Bool)

(assert (=> b!588053 (= e!335824 (not true))))

(declare-fun e!335823 () Bool)

(assert (=> b!588053 e!335823))

(declare-fun res!375834 () Bool)

(assert (=> b!588053 (=> (not res!375834) (not e!335823))))

(declare-fun lt!266662 () (_ BitVec 32))

(declare-fun lt!266663 () SeekEntryResult!6079)

(assert (=> b!588053 (= res!375834 (= lt!266663 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266662 vacantSpotIndex!68 (select (store (arr!17632 a!2986) i!1108 k0!1786) j!136) (array!36727 (store (arr!17632 a!2986) i!1108 k0!1786) (size!17996 a!2986)) mask!3053)))))

(assert (=> b!588053 (= lt!266663 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266662 vacantSpotIndex!68 (select (arr!17632 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18282 0))(
  ( (Unit!18283) )
))
(declare-fun lt!266666 () Unit!18282)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36726 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18282)

(assert (=> b!588053 (= lt!266666 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266662 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588053 (= lt!266662 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588054 () Bool)

(assert (=> b!588054 (= e!335823 (= lt!266664 lt!266663))))

(declare-fun b!588055 () Bool)

(declare-fun res!375840 () Bool)

(assert (=> b!588055 (=> (not res!375840) (not e!335827))))

(declare-fun arrayContainsKey!0 (array!36726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588055 (= res!375840 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588056 () Bool)

(declare-fun res!375836 () Bool)

(assert (=> b!588056 (=> (not res!375836) (not e!335827))))

(assert (=> b!588056 (= res!375836 (and (= (size!17996 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17996 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17996 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!375837 () Bool)

(assert (=> start!53928 (=> (not res!375837) (not e!335827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53928 (= res!375837 (validMask!0 mask!3053))))

(assert (=> start!53928 e!335827))

(assert (=> start!53928 true))

(declare-fun array_inv!13406 (array!36726) Bool)

(assert (=> start!53928 (array_inv!13406 a!2986)))

(declare-fun b!588047 () Bool)

(declare-fun res!375842 () Bool)

(assert (=> b!588047 (=> (not res!375842) (not e!335826))))

(assert (=> b!588047 (= res!375842 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17632 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17632 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53928 res!375837) b!588056))

(assert (= (and b!588056 res!375836) b!588048))

(assert (= (and b!588048 res!375838) b!588052))

(assert (= (and b!588052 res!375835) b!588055))

(assert (= (and b!588055 res!375840) b!588049))

(assert (= (and b!588049 res!375839) b!588051))

(assert (= (and b!588051 res!375841) b!588050))

(assert (= (and b!588050 res!375832) b!588047))

(assert (= (and b!588047 res!375842) b!588046))

(assert (= (and b!588046 res!375833) b!588053))

(assert (= (and b!588053 res!375834) b!588054))

(declare-fun m!566619 () Bool)

(assert (=> b!588053 m!566619))

(declare-fun m!566621 () Bool)

(assert (=> b!588053 m!566621))

(declare-fun m!566623 () Bool)

(assert (=> b!588053 m!566623))

(declare-fun m!566625 () Bool)

(assert (=> b!588053 m!566625))

(assert (=> b!588053 m!566621))

(declare-fun m!566627 () Bool)

(assert (=> b!588053 m!566627))

(declare-fun m!566629 () Bool)

(assert (=> b!588053 m!566629))

(assert (=> b!588053 m!566629))

(declare-fun m!566631 () Bool)

(assert (=> b!588053 m!566631))

(assert (=> b!588048 m!566621))

(assert (=> b!588048 m!566621))

(declare-fun m!566633 () Bool)

(assert (=> b!588048 m!566633))

(declare-fun m!566635 () Bool)

(assert (=> start!53928 m!566635))

(declare-fun m!566637 () Bool)

(assert (=> start!53928 m!566637))

(declare-fun m!566639 () Bool)

(assert (=> b!588052 m!566639))

(declare-fun m!566641 () Bool)

(assert (=> b!588051 m!566641))

(declare-fun m!566643 () Bool)

(assert (=> b!588050 m!566643))

(declare-fun m!566645 () Bool)

(assert (=> b!588047 m!566645))

(assert (=> b!588047 m!566623))

(declare-fun m!566647 () Bool)

(assert (=> b!588047 m!566647))

(declare-fun m!566649 () Bool)

(assert (=> b!588049 m!566649))

(declare-fun m!566651 () Bool)

(assert (=> b!588055 m!566651))

(declare-fun m!566653 () Bool)

(assert (=> b!588046 m!566653))

(assert (=> b!588046 m!566621))

(assert (=> b!588046 m!566621))

(declare-fun m!566655 () Bool)

(assert (=> b!588046 m!566655))

(check-sat (not b!588046) (not b!588052) (not start!53928) (not b!588049) (not b!588051) (not b!588048) (not b!588053) (not b!588055) (not b!588050))
(check-sat)
