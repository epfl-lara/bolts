; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53904 () Bool)

(assert start!53904)

(declare-fun b!587650 () Bool)

(declare-fun e!335643 () Bool)

(declare-datatypes ((SeekEntryResult!6067 0))(
  ( (MissingZero!6067 (index!26498 (_ BitVec 32))) (Found!6067 (index!26499 (_ BitVec 32))) (Intermediate!6067 (undefined!6879 Bool) (index!26500 (_ BitVec 32)) (x!55332 (_ BitVec 32))) (Undefined!6067) (MissingVacant!6067 (index!26501 (_ BitVec 32))) )
))
(declare-fun lt!266483 () SeekEntryResult!6067)

(declare-fun lt!266484 () SeekEntryResult!6067)

(assert (=> b!587650 (= e!335643 (= lt!266483 lt!266484))))

(declare-fun b!587651 () Bool)

(declare-fun e!335647 () Bool)

(assert (=> b!587651 (= e!335647 (not true))))

(assert (=> b!587651 e!335643))

(declare-fun res!375436 () Bool)

(assert (=> b!587651 (=> (not res!375436) (not e!335643))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36702 0))(
  ( (array!36703 (arr!17620 (Array (_ BitVec 32) (_ BitVec 64))) (size!17984 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36702)

(declare-fun lt!266485 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36702 (_ BitVec 32)) SeekEntryResult!6067)

(assert (=> b!587651 (= res!375436 (= lt!266484 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266485 vacantSpotIndex!68 (select (store (arr!17620 a!2986) i!1108 k0!1786) j!136) (array!36703 (store (arr!17620 a!2986) i!1108 k0!1786) (size!17984 a!2986)) mask!3053)))))

(assert (=> b!587651 (= lt!266484 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266485 vacantSpotIndex!68 (select (arr!17620 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18258 0))(
  ( (Unit!18259) )
))
(declare-fun lt!266486 () Unit!18258)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36702 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18258)

(assert (=> b!587651 (= lt!266486 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266485 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587651 (= lt!266485 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587652 () Bool)

(declare-fun e!335645 () Bool)

(assert (=> b!587652 (= e!335645 e!335647)))

(declare-fun res!375442 () Bool)

(assert (=> b!587652 (=> (not res!375442) (not e!335647))))

(assert (=> b!587652 (= res!375442 (and (= lt!266483 (Found!6067 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17620 a!2986) index!984) (select (arr!17620 a!2986) j!136))) (not (= (select (arr!17620 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587652 (= lt!266483 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17620 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587653 () Bool)

(declare-fun res!375445 () Bool)

(declare-fun e!335646 () Bool)

(assert (=> b!587653 (=> (not res!375445) (not e!335646))))

(declare-fun arrayContainsKey!0 (array!36702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587653 (= res!375445 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587654 () Bool)

(declare-fun res!375443 () Bool)

(assert (=> b!587654 (=> (not res!375443) (not e!335645))))

(declare-datatypes ((List!11714 0))(
  ( (Nil!11711) (Cons!11710 (h!12755 (_ BitVec 64)) (t!17950 List!11714)) )
))
(declare-fun arrayNoDuplicates!0 (array!36702 (_ BitVec 32) List!11714) Bool)

(assert (=> b!587654 (= res!375443 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11711))))

(declare-fun b!587655 () Bool)

(declare-fun res!375440 () Bool)

(assert (=> b!587655 (=> (not res!375440) (not e!335646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587655 (= res!375440 (validKeyInArray!0 (select (arr!17620 a!2986) j!136)))))

(declare-fun b!587656 () Bool)

(declare-fun res!375438 () Bool)

(assert (=> b!587656 (=> (not res!375438) (not e!335646))))

(assert (=> b!587656 (= res!375438 (validKeyInArray!0 k0!1786))))

(declare-fun b!587657 () Bool)

(declare-fun res!375439 () Bool)

(assert (=> b!587657 (=> (not res!375439) (not e!335645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36702 (_ BitVec 32)) Bool)

(assert (=> b!587657 (= res!375439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587658 () Bool)

(declare-fun res!375444 () Bool)

(assert (=> b!587658 (=> (not res!375444) (not e!335645))))

(assert (=> b!587658 (= res!375444 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17620 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17620 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!375446 () Bool)

(assert (=> start!53904 (=> (not res!375446) (not e!335646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53904 (= res!375446 (validMask!0 mask!3053))))

(assert (=> start!53904 e!335646))

(assert (=> start!53904 true))

(declare-fun array_inv!13394 (array!36702) Bool)

(assert (=> start!53904 (array_inv!13394 a!2986)))

(declare-fun b!587659 () Bool)

(declare-fun res!375437 () Bool)

(assert (=> b!587659 (=> (not res!375437) (not e!335646))))

(assert (=> b!587659 (= res!375437 (and (= (size!17984 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17984 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17984 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587660 () Bool)

(assert (=> b!587660 (= e!335646 e!335645)))

(declare-fun res!375441 () Bool)

(assert (=> b!587660 (=> (not res!375441) (not e!335645))))

(declare-fun lt!266482 () SeekEntryResult!6067)

(assert (=> b!587660 (= res!375441 (or (= lt!266482 (MissingZero!6067 i!1108)) (= lt!266482 (MissingVacant!6067 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36702 (_ BitVec 32)) SeekEntryResult!6067)

(assert (=> b!587660 (= lt!266482 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53904 res!375446) b!587659))

(assert (= (and b!587659 res!375437) b!587655))

(assert (= (and b!587655 res!375440) b!587656))

(assert (= (and b!587656 res!375438) b!587653))

(assert (= (and b!587653 res!375445) b!587660))

(assert (= (and b!587660 res!375441) b!587657))

(assert (= (and b!587657 res!375439) b!587654))

(assert (= (and b!587654 res!375443) b!587658))

(assert (= (and b!587658 res!375444) b!587652))

(assert (= (and b!587652 res!375442) b!587651))

(assert (= (and b!587651 res!375436) b!587650))

(declare-fun m!566163 () Bool)

(assert (=> b!587655 m!566163))

(assert (=> b!587655 m!566163))

(declare-fun m!566165 () Bool)

(assert (=> b!587655 m!566165))

(declare-fun m!566167 () Bool)

(assert (=> b!587658 m!566167))

(declare-fun m!566169 () Bool)

(assert (=> b!587658 m!566169))

(declare-fun m!566171 () Bool)

(assert (=> b!587658 m!566171))

(declare-fun m!566173 () Bool)

(assert (=> b!587654 m!566173))

(declare-fun m!566175 () Bool)

(assert (=> b!587653 m!566175))

(declare-fun m!566177 () Bool)

(assert (=> start!53904 m!566177))

(declare-fun m!566179 () Bool)

(assert (=> start!53904 m!566179))

(declare-fun m!566181 () Bool)

(assert (=> b!587660 m!566181))

(declare-fun m!566183 () Bool)

(assert (=> b!587657 m!566183))

(declare-fun m!566185 () Bool)

(assert (=> b!587656 m!566185))

(declare-fun m!566187 () Bool)

(assert (=> b!587652 m!566187))

(assert (=> b!587652 m!566163))

(assert (=> b!587652 m!566163))

(declare-fun m!566189 () Bool)

(assert (=> b!587652 m!566189))

(declare-fun m!566191 () Bool)

(assert (=> b!587651 m!566191))

(declare-fun m!566193 () Bool)

(assert (=> b!587651 m!566193))

(declare-fun m!566195 () Bool)

(assert (=> b!587651 m!566195))

(assert (=> b!587651 m!566163))

(assert (=> b!587651 m!566169))

(assert (=> b!587651 m!566163))

(declare-fun m!566197 () Bool)

(assert (=> b!587651 m!566197))

(assert (=> b!587651 m!566195))

(declare-fun m!566199 () Bool)

(assert (=> b!587651 m!566199))

(check-sat (not start!53904) (not b!587657) (not b!587652) (not b!587653) (not b!587654) (not b!587656) (not b!587651) (not b!587660) (not b!587655))
(check-sat)
