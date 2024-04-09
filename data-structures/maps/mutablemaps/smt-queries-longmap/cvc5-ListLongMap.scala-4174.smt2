; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56910 () Bool)

(assert start!56910)

(declare-fun res!407097 () Bool)

(declare-fun e!360103 () Bool)

(assert (=> start!56910 (=> (not res!407097) (not e!360103))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56910 (= res!407097 (validMask!0 mask!3053))))

(assert (=> start!56910 e!360103))

(assert (=> start!56910 true))

(declare-datatypes ((array!38004 0))(
  ( (array!38005 (arr!18234 (Array (_ BitVec 32) (_ BitVec 64))) (size!18598 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38004)

(declare-fun array_inv!14008 (array!38004) Bool)

(assert (=> start!56910 (array_inv!14008 a!2986)))

(declare-fun b!629698 () Bool)

(declare-fun e!360105 () Bool)

(declare-datatypes ((SeekEntryResult!6681 0))(
  ( (MissingZero!6681 (index!29010 (_ BitVec 32))) (Found!6681 (index!29011 (_ BitVec 32))) (Intermediate!6681 (undefined!7493 Bool) (index!29012 (_ BitVec 32)) (x!57779 (_ BitVec 32))) (Undefined!6681) (MissingVacant!6681 (index!29013 (_ BitVec 32))) )
))
(declare-fun lt!290884 () SeekEntryResult!6681)

(declare-fun lt!290882 () SeekEntryResult!6681)

(assert (=> b!629698 (= e!360105 (= lt!290884 lt!290882))))

(declare-fun b!629699 () Bool)

(declare-fun res!407099 () Bool)

(assert (=> b!629699 (=> (not res!407099) (not e!360103))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629699 (= res!407099 (validKeyInArray!0 (select (arr!18234 a!2986) j!136)))))

(declare-fun b!629700 () Bool)

(declare-fun e!360104 () Bool)

(declare-fun e!360106 () Bool)

(assert (=> b!629700 (= e!360104 e!360106)))

(declare-fun res!407100 () Bool)

(assert (=> b!629700 (=> (not res!407100) (not e!360106))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!629700 (= res!407100 (and (= lt!290884 (Found!6681 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18234 a!2986) index!984) (select (arr!18234 a!2986) j!136))) (not (= (select (arr!18234 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38004 (_ BitVec 32)) SeekEntryResult!6681)

(assert (=> b!629700 (= lt!290884 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18234 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629701 () Bool)

(declare-fun res!407101 () Bool)

(assert (=> b!629701 (=> (not res!407101) (not e!360103))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!629701 (= res!407101 (validKeyInArray!0 k!1786))))

(declare-fun b!629702 () Bool)

(declare-fun res!407096 () Bool)

(assert (=> b!629702 (=> (not res!407096) (not e!360104))))

(declare-datatypes ((List!12328 0))(
  ( (Nil!12325) (Cons!12324 (h!13369 (_ BitVec 64)) (t!18564 List!12328)) )
))
(declare-fun arrayNoDuplicates!0 (array!38004 (_ BitVec 32) List!12328) Bool)

(assert (=> b!629702 (= res!407096 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12325))))

(declare-fun b!629703 () Bool)

(assert (=> b!629703 (= e!360106 (not true))))

(assert (=> b!629703 e!360105))

(declare-fun res!407094 () Bool)

(assert (=> b!629703 (=> (not res!407094) (not e!360105))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!290883 () (_ BitVec 32))

(assert (=> b!629703 (= res!407094 (= lt!290882 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290883 vacantSpotIndex!68 (select (store (arr!18234 a!2986) i!1108 k!1786) j!136) (array!38005 (store (arr!18234 a!2986) i!1108 k!1786) (size!18598 a!2986)) mask!3053)))))

(assert (=> b!629703 (= lt!290882 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290883 vacantSpotIndex!68 (select (arr!18234 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21106 0))(
  ( (Unit!21107) )
))
(declare-fun lt!290885 () Unit!21106)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38004 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21106)

(assert (=> b!629703 (= lt!290885 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290883 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629703 (= lt!290883 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629704 () Bool)

(declare-fun res!407098 () Bool)

(assert (=> b!629704 (=> (not res!407098) (not e!360104))))

(assert (=> b!629704 (= res!407098 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18234 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18234 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629705 () Bool)

(declare-fun res!407102 () Bool)

(assert (=> b!629705 (=> (not res!407102) (not e!360103))))

(declare-fun arrayContainsKey!0 (array!38004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629705 (= res!407102 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629706 () Bool)

(declare-fun res!407095 () Bool)

(assert (=> b!629706 (=> (not res!407095) (not e!360104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38004 (_ BitVec 32)) Bool)

(assert (=> b!629706 (= res!407095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629707 () Bool)

(declare-fun res!407093 () Bool)

(assert (=> b!629707 (=> (not res!407093) (not e!360103))))

(assert (=> b!629707 (= res!407093 (and (= (size!18598 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18598 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18598 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629708 () Bool)

(assert (=> b!629708 (= e!360103 e!360104)))

(declare-fun res!407092 () Bool)

(assert (=> b!629708 (=> (not res!407092) (not e!360104))))

(declare-fun lt!290886 () SeekEntryResult!6681)

(assert (=> b!629708 (= res!407092 (or (= lt!290886 (MissingZero!6681 i!1108)) (= lt!290886 (MissingVacant!6681 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38004 (_ BitVec 32)) SeekEntryResult!6681)

(assert (=> b!629708 (= lt!290886 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56910 res!407097) b!629707))

(assert (= (and b!629707 res!407093) b!629699))

(assert (= (and b!629699 res!407099) b!629701))

(assert (= (and b!629701 res!407101) b!629705))

(assert (= (and b!629705 res!407102) b!629708))

(assert (= (and b!629708 res!407092) b!629706))

(assert (= (and b!629706 res!407095) b!629702))

(assert (= (and b!629702 res!407096) b!629704))

(assert (= (and b!629704 res!407098) b!629700))

(assert (= (and b!629700 res!407100) b!629703))

(assert (= (and b!629703 res!407094) b!629698))

(declare-fun m!604737 () Bool)

(assert (=> start!56910 m!604737))

(declare-fun m!604739 () Bool)

(assert (=> start!56910 m!604739))

(declare-fun m!604741 () Bool)

(assert (=> b!629699 m!604741))

(assert (=> b!629699 m!604741))

(declare-fun m!604743 () Bool)

(assert (=> b!629699 m!604743))

(declare-fun m!604745 () Bool)

(assert (=> b!629701 m!604745))

(declare-fun m!604747 () Bool)

(assert (=> b!629706 m!604747))

(declare-fun m!604749 () Bool)

(assert (=> b!629702 m!604749))

(declare-fun m!604751 () Bool)

(assert (=> b!629705 m!604751))

(declare-fun m!604753 () Bool)

(assert (=> b!629708 m!604753))

(declare-fun m!604755 () Bool)

(assert (=> b!629700 m!604755))

(assert (=> b!629700 m!604741))

(assert (=> b!629700 m!604741))

(declare-fun m!604757 () Bool)

(assert (=> b!629700 m!604757))

(declare-fun m!604759 () Bool)

(assert (=> b!629704 m!604759))

(declare-fun m!604761 () Bool)

(assert (=> b!629704 m!604761))

(declare-fun m!604763 () Bool)

(assert (=> b!629704 m!604763))

(declare-fun m!604765 () Bool)

(assert (=> b!629703 m!604765))

(declare-fun m!604767 () Bool)

(assert (=> b!629703 m!604767))

(declare-fun m!604769 () Bool)

(assert (=> b!629703 m!604769))

(assert (=> b!629703 m!604765))

(assert (=> b!629703 m!604741))

(assert (=> b!629703 m!604761))

(assert (=> b!629703 m!604741))

(declare-fun m!604771 () Bool)

(assert (=> b!629703 m!604771))

(declare-fun m!604773 () Bool)

(assert (=> b!629703 m!604773))

(push 1)

