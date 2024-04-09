; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53918 () Bool)

(assert start!53918)

(declare-fun b!587881 () Bool)

(declare-fun e!335750 () Bool)

(assert (=> b!587881 (= e!335750 (not true))))

(declare-fun e!335751 () Bool)

(assert (=> b!587881 e!335751))

(declare-fun res!375668 () Bool)

(assert (=> b!587881 (=> (not res!375668) (not e!335751))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36716 0))(
  ( (array!36717 (arr!17627 (Array (_ BitVec 32) (_ BitVec 64))) (size!17991 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36716)

(declare-fun lt!266590 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6074 0))(
  ( (MissingZero!6074 (index!26526 (_ BitVec 32))) (Found!6074 (index!26527 (_ BitVec 32))) (Intermediate!6074 (undefined!6886 Bool) (index!26528 (_ BitVec 32)) (x!55355 (_ BitVec 32))) (Undefined!6074) (MissingVacant!6074 (index!26529 (_ BitVec 32))) )
))
(declare-fun lt!266588 () SeekEntryResult!6074)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36716 (_ BitVec 32)) SeekEntryResult!6074)

(assert (=> b!587881 (= res!375668 (= lt!266588 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266590 vacantSpotIndex!68 (select (store (arr!17627 a!2986) i!1108 k!1786) j!136) (array!36717 (store (arr!17627 a!2986) i!1108 k!1786) (size!17991 a!2986)) mask!3053)))))

(assert (=> b!587881 (= lt!266588 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266590 vacantSpotIndex!68 (select (arr!17627 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18272 0))(
  ( (Unit!18273) )
))
(declare-fun lt!266589 () Unit!18272)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36716 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18272)

(assert (=> b!587881 (= lt!266589 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266590 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587881 (= lt!266590 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587882 () Bool)

(declare-fun res!375675 () Bool)

(declare-fun e!335752 () Bool)

(assert (=> b!587882 (=> (not res!375675) (not e!335752))))

(declare-fun arrayContainsKey!0 (array!36716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587882 (= res!375675 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587883 () Bool)

(declare-fun lt!266591 () SeekEntryResult!6074)

(assert (=> b!587883 (= e!335751 (= lt!266591 lt!266588))))

(declare-fun b!587884 () Bool)

(declare-fun res!375672 () Bool)

(assert (=> b!587884 (=> (not res!375672) (not e!335752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587884 (= res!375672 (validKeyInArray!0 k!1786))))

(declare-fun b!587885 () Bool)

(declare-fun res!375677 () Bool)

(assert (=> b!587885 (=> (not res!375677) (not e!335752))))

(assert (=> b!587885 (= res!375677 (and (= (size!17991 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17991 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17991 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!375669 () Bool)

(assert (=> start!53918 (=> (not res!375669) (not e!335752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53918 (= res!375669 (validMask!0 mask!3053))))

(assert (=> start!53918 e!335752))

(assert (=> start!53918 true))

(declare-fun array_inv!13401 (array!36716) Bool)

(assert (=> start!53918 (array_inv!13401 a!2986)))

(declare-fun b!587886 () Bool)

(declare-fun res!375674 () Bool)

(declare-fun e!335748 () Bool)

(assert (=> b!587886 (=> (not res!375674) (not e!335748))))

(declare-datatypes ((List!11721 0))(
  ( (Nil!11718) (Cons!11717 (h!12762 (_ BitVec 64)) (t!17957 List!11721)) )
))
(declare-fun arrayNoDuplicates!0 (array!36716 (_ BitVec 32) List!11721) Bool)

(assert (=> b!587886 (= res!375674 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11718))))

(declare-fun b!587887 () Bool)

(declare-fun res!375667 () Bool)

(assert (=> b!587887 (=> (not res!375667) (not e!335752))))

(assert (=> b!587887 (= res!375667 (validKeyInArray!0 (select (arr!17627 a!2986) j!136)))))

(declare-fun b!587888 () Bool)

(assert (=> b!587888 (= e!335752 e!335748)))

(declare-fun res!375676 () Bool)

(assert (=> b!587888 (=> (not res!375676) (not e!335748))))

(declare-fun lt!266587 () SeekEntryResult!6074)

(assert (=> b!587888 (= res!375676 (or (= lt!266587 (MissingZero!6074 i!1108)) (= lt!266587 (MissingVacant!6074 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36716 (_ BitVec 32)) SeekEntryResult!6074)

(assert (=> b!587888 (= lt!266587 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587889 () Bool)

(assert (=> b!587889 (= e!335748 e!335750)))

(declare-fun res!375671 () Bool)

(assert (=> b!587889 (=> (not res!375671) (not e!335750))))

(assert (=> b!587889 (= res!375671 (and (= lt!266591 (Found!6074 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17627 a!2986) index!984) (select (arr!17627 a!2986) j!136))) (not (= (select (arr!17627 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587889 (= lt!266591 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17627 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587890 () Bool)

(declare-fun res!375673 () Bool)

(assert (=> b!587890 (=> (not res!375673) (not e!335748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36716 (_ BitVec 32)) Bool)

(assert (=> b!587890 (= res!375673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587891 () Bool)

(declare-fun res!375670 () Bool)

(assert (=> b!587891 (=> (not res!375670) (not e!335748))))

(assert (=> b!587891 (= res!375670 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17627 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17627 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53918 res!375669) b!587885))

(assert (= (and b!587885 res!375677) b!587887))

(assert (= (and b!587887 res!375667) b!587884))

(assert (= (and b!587884 res!375672) b!587882))

(assert (= (and b!587882 res!375675) b!587888))

(assert (= (and b!587888 res!375676) b!587890))

(assert (= (and b!587890 res!375673) b!587886))

(assert (= (and b!587886 res!375674) b!587891))

(assert (= (and b!587891 res!375670) b!587889))

(assert (= (and b!587889 res!375671) b!587881))

(assert (= (and b!587881 res!375668) b!587883))

(declare-fun m!566429 () Bool)

(assert (=> b!587888 m!566429))

(declare-fun m!566431 () Bool)

(assert (=> b!587886 m!566431))

(declare-fun m!566433 () Bool)

(assert (=> b!587881 m!566433))

(declare-fun m!566435 () Bool)

(assert (=> b!587881 m!566435))

(declare-fun m!566437 () Bool)

(assert (=> b!587881 m!566437))

(declare-fun m!566439 () Bool)

(assert (=> b!587881 m!566439))

(declare-fun m!566441 () Bool)

(assert (=> b!587881 m!566441))

(assert (=> b!587881 m!566435))

(declare-fun m!566443 () Bool)

(assert (=> b!587881 m!566443))

(assert (=> b!587881 m!566439))

(declare-fun m!566445 () Bool)

(assert (=> b!587881 m!566445))

(declare-fun m!566447 () Bool)

(assert (=> b!587890 m!566447))

(declare-fun m!566449 () Bool)

(assert (=> b!587884 m!566449))

(declare-fun m!566451 () Bool)

(assert (=> b!587882 m!566451))

(declare-fun m!566453 () Bool)

(assert (=> b!587891 m!566453))

(assert (=> b!587891 m!566441))

(declare-fun m!566455 () Bool)

(assert (=> b!587891 m!566455))

(declare-fun m!566457 () Bool)

(assert (=> b!587889 m!566457))

(assert (=> b!587889 m!566439))

(assert (=> b!587889 m!566439))

(declare-fun m!566459 () Bool)

(assert (=> b!587889 m!566459))

(declare-fun m!566461 () Bool)

(assert (=> start!53918 m!566461))

(declare-fun m!566463 () Bool)

(assert (=> start!53918 m!566463))

(assert (=> b!587887 m!566439))

(assert (=> b!587887 m!566439))

(declare-fun m!566465 () Bool)

(assert (=> b!587887 m!566465))

(push 1)

(assert (not b!587882))

(assert (not b!587884))

(assert (not b!587889))

(assert (not b!587888))

(assert (not b!587890))

(assert (not start!53918))

(assert (not b!587886))

(assert (not b!587881))

(assert (not b!587887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

