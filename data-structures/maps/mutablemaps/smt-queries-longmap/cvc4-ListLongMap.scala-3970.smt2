; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53912 () Bool)

(assert start!53912)

(declare-fun b!587782 () Bool)

(declare-fun e!335705 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!587782 (= e!335705 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun e!335706 () Bool)

(assert (=> b!587782 e!335706))

(declare-fun res!375577 () Bool)

(assert (=> b!587782 (=> (not res!375577) (not e!335706))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6071 0))(
  ( (MissingZero!6071 (index!26514 (_ BitVec 32))) (Found!6071 (index!26515 (_ BitVec 32))) (Intermediate!6071 (undefined!6883 Bool) (index!26516 (_ BitVec 32)) (x!55344 (_ BitVec 32))) (Undefined!6071) (MissingVacant!6071 (index!26517 (_ BitVec 32))) )
))
(declare-fun lt!266546 () SeekEntryResult!6071)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266544 () (_ BitVec 32))

(declare-datatypes ((array!36710 0))(
  ( (array!36711 (arr!17624 (Array (_ BitVec 32) (_ BitVec 64))) (size!17988 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36710)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36710 (_ BitVec 32)) SeekEntryResult!6071)

(assert (=> b!587782 (= res!375577 (= lt!266546 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266544 vacantSpotIndex!68 (select (store (arr!17624 a!2986) i!1108 k!1786) j!136) (array!36711 (store (arr!17624 a!2986) i!1108 k!1786) (size!17988 a!2986)) mask!3053)))))

(assert (=> b!587782 (= lt!266546 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266544 vacantSpotIndex!68 (select (arr!17624 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18266 0))(
  ( (Unit!18267) )
))
(declare-fun lt!266542 () Unit!18266)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36710 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18266)

(assert (=> b!587782 (= lt!266542 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266544 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587782 (= lt!266544 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587783 () Bool)

(declare-fun res!375569 () Bool)

(declare-fun e!335704 () Bool)

(assert (=> b!587783 (=> (not res!375569) (not e!335704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36710 (_ BitVec 32)) Bool)

(assert (=> b!587783 (= res!375569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587784 () Bool)

(declare-fun e!335707 () Bool)

(assert (=> b!587784 (= e!335707 e!335704)))

(declare-fun res!375575 () Bool)

(assert (=> b!587784 (=> (not res!375575) (not e!335704))))

(declare-fun lt!266543 () SeekEntryResult!6071)

(assert (=> b!587784 (= res!375575 (or (= lt!266543 (MissingZero!6071 i!1108)) (= lt!266543 (MissingVacant!6071 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36710 (_ BitVec 32)) SeekEntryResult!6071)

(assert (=> b!587784 (= lt!266543 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587785 () Bool)

(declare-fun res!375573 () Bool)

(assert (=> b!587785 (=> (not res!375573) (not e!335707))))

(assert (=> b!587785 (= res!375573 (and (= (size!17988 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17988 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17988 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587786 () Bool)

(declare-fun res!375574 () Bool)

(assert (=> b!587786 (=> (not res!375574) (not e!335704))))

(declare-datatypes ((List!11718 0))(
  ( (Nil!11715) (Cons!11714 (h!12759 (_ BitVec 64)) (t!17954 List!11718)) )
))
(declare-fun arrayNoDuplicates!0 (array!36710 (_ BitVec 32) List!11718) Bool)

(assert (=> b!587786 (= res!375574 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11715))))

(declare-fun b!587787 () Bool)

(declare-fun res!375578 () Bool)

(assert (=> b!587787 (=> (not res!375578) (not e!335707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587787 (= res!375578 (validKeyInArray!0 (select (arr!17624 a!2986) j!136)))))

(declare-fun res!375568 () Bool)

(assert (=> start!53912 (=> (not res!375568) (not e!335707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53912 (= res!375568 (validMask!0 mask!3053))))

(assert (=> start!53912 e!335707))

(assert (=> start!53912 true))

(declare-fun array_inv!13398 (array!36710) Bool)

(assert (=> start!53912 (array_inv!13398 a!2986)))

(declare-fun b!587788 () Bool)

(declare-fun lt!266545 () SeekEntryResult!6071)

(assert (=> b!587788 (= e!335706 (= lt!266545 lt!266546))))

(declare-fun b!587789 () Bool)

(declare-fun res!375572 () Bool)

(assert (=> b!587789 (=> (not res!375572) (not e!335707))))

(declare-fun arrayContainsKey!0 (array!36710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587789 (= res!375572 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587790 () Bool)

(assert (=> b!587790 (= e!335704 e!335705)))

(declare-fun res!375576 () Bool)

(assert (=> b!587790 (=> (not res!375576) (not e!335705))))

(assert (=> b!587790 (= res!375576 (and (= lt!266545 (Found!6071 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17624 a!2986) index!984) (select (arr!17624 a!2986) j!136))) (not (= (select (arr!17624 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587790 (= lt!266545 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17624 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587791 () Bool)

(declare-fun res!375570 () Bool)

(assert (=> b!587791 (=> (not res!375570) (not e!335707))))

(assert (=> b!587791 (= res!375570 (validKeyInArray!0 k!1786))))

(declare-fun b!587792 () Bool)

(declare-fun res!375571 () Bool)

(assert (=> b!587792 (=> (not res!375571) (not e!335704))))

(assert (=> b!587792 (= res!375571 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17624 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17624 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53912 res!375568) b!587785))

(assert (= (and b!587785 res!375573) b!587787))

(assert (= (and b!587787 res!375578) b!587791))

(assert (= (and b!587791 res!375570) b!587789))

(assert (= (and b!587789 res!375572) b!587784))

(assert (= (and b!587784 res!375575) b!587783))

(assert (= (and b!587783 res!375569) b!587786))

(assert (= (and b!587786 res!375574) b!587792))

(assert (= (and b!587792 res!375571) b!587790))

(assert (= (and b!587790 res!375576) b!587782))

(assert (= (and b!587782 res!375577) b!587788))

(declare-fun m!566315 () Bool)

(assert (=> b!587787 m!566315))

(assert (=> b!587787 m!566315))

(declare-fun m!566317 () Bool)

(assert (=> b!587787 m!566317))

(declare-fun m!566319 () Bool)

(assert (=> start!53912 m!566319))

(declare-fun m!566321 () Bool)

(assert (=> start!53912 m!566321))

(declare-fun m!566323 () Bool)

(assert (=> b!587782 m!566323))

(declare-fun m!566325 () Bool)

(assert (=> b!587782 m!566325))

(assert (=> b!587782 m!566315))

(declare-fun m!566327 () Bool)

(assert (=> b!587782 m!566327))

(assert (=> b!587782 m!566325))

(declare-fun m!566329 () Bool)

(assert (=> b!587782 m!566329))

(assert (=> b!587782 m!566315))

(declare-fun m!566331 () Bool)

(assert (=> b!587782 m!566331))

(declare-fun m!566333 () Bool)

(assert (=> b!587782 m!566333))

(declare-fun m!566335 () Bool)

(assert (=> b!587790 m!566335))

(assert (=> b!587790 m!566315))

(assert (=> b!587790 m!566315))

(declare-fun m!566337 () Bool)

(assert (=> b!587790 m!566337))

(declare-fun m!566339 () Bool)

(assert (=> b!587789 m!566339))

(declare-fun m!566341 () Bool)

(assert (=> b!587792 m!566341))

(assert (=> b!587792 m!566327))

(declare-fun m!566343 () Bool)

(assert (=> b!587792 m!566343))

(declare-fun m!566345 () Bool)

(assert (=> b!587791 m!566345))

(declare-fun m!566347 () Bool)

(assert (=> b!587783 m!566347))

(declare-fun m!566349 () Bool)

(assert (=> b!587784 m!566349))

(declare-fun m!566351 () Bool)

(assert (=> b!587786 m!566351))

(push 1)

(assert (not b!587791))

(assert (not start!53912))

(assert (not b!587783))

(assert (not b!587786))

(assert (not b!587790))

(assert (not b!587784))

(assert (not b!587782))

(assert (not b!587787))

(assert (not b!587789))

(check-sat)

(pop 1)

(push 1)

(check-sat)

