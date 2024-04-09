; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53578 () Bool)

(assert start!53578)

(declare-fun b!582915 () Bool)

(declare-fun res!370885 () Bool)

(declare-fun e!334103 () Bool)

(assert (=> b!582915 (=> (not res!370885) (not e!334103))))

(declare-datatypes ((array!36433 0))(
  ( (array!36434 (arr!17487 (Array (_ BitVec 32) (_ BitVec 64))) (size!17851 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36433)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582915 (= res!370885 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582916 () Bool)

(declare-fun res!370883 () Bool)

(assert (=> b!582916 (=> (not res!370883) (not e!334103))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582916 (= res!370883 (validKeyInArray!0 (select (arr!17487 a!2986) j!136)))))

(declare-fun b!582917 () Bool)

(declare-fun res!370886 () Bool)

(declare-fun e!334104 () Bool)

(assert (=> b!582917 (=> (not res!370886) (not e!334104))))

(declare-datatypes ((List!11581 0))(
  ( (Nil!11578) (Cons!11577 (h!12622 (_ BitVec 64)) (t!17817 List!11581)) )
))
(declare-fun arrayNoDuplicates!0 (array!36433 (_ BitVec 32) List!11581) Bool)

(assert (=> b!582917 (= res!370886 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11578))))

(declare-fun b!582918 () Bool)

(declare-fun res!370888 () Bool)

(assert (=> b!582918 (=> (not res!370888) (not e!334104))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582918 (= res!370888 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17487 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17487 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582919 () Bool)

(declare-fun res!370884 () Bool)

(assert (=> b!582919 (=> (not res!370884) (not e!334103))))

(assert (=> b!582919 (= res!370884 (and (= (size!17851 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17851 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17851 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582920 () Bool)

(declare-fun res!370881 () Bool)

(assert (=> b!582920 (=> (not res!370881) (not e!334104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36433 (_ BitVec 32)) Bool)

(assert (=> b!582920 (= res!370881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582921 () Bool)

(assert (=> b!582921 (= e!334104 false)))

(declare-datatypes ((SeekEntryResult!5934 0))(
  ( (MissingZero!5934 (index!25963 (_ BitVec 32))) (Found!5934 (index!25964 (_ BitVec 32))) (Intermediate!5934 (undefined!6746 Bool) (index!25965 (_ BitVec 32)) (x!54838 (_ BitVec 32))) (Undefined!5934) (MissingVacant!5934 (index!25966 (_ BitVec 32))) )
))
(declare-fun lt!265226 () SeekEntryResult!5934)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36433 (_ BitVec 32)) SeekEntryResult!5934)

(assert (=> b!582921 (= lt!265226 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17487 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582922 () Bool)

(assert (=> b!582922 (= e!334103 e!334104)))

(declare-fun res!370887 () Bool)

(assert (=> b!582922 (=> (not res!370887) (not e!334104))))

(declare-fun lt!265225 () SeekEntryResult!5934)

(assert (=> b!582922 (= res!370887 (or (= lt!265225 (MissingZero!5934 i!1108)) (= lt!265225 (MissingVacant!5934 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36433 (_ BitVec 32)) SeekEntryResult!5934)

(assert (=> b!582922 (= lt!265225 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!370889 () Bool)

(assert (=> start!53578 (=> (not res!370889) (not e!334103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53578 (= res!370889 (validMask!0 mask!3053))))

(assert (=> start!53578 e!334103))

(assert (=> start!53578 true))

(declare-fun array_inv!13261 (array!36433) Bool)

(assert (=> start!53578 (array_inv!13261 a!2986)))

(declare-fun b!582923 () Bool)

(declare-fun res!370882 () Bool)

(assert (=> b!582923 (=> (not res!370882) (not e!334103))))

(assert (=> b!582923 (= res!370882 (validKeyInArray!0 k!1786))))

(assert (= (and start!53578 res!370889) b!582919))

(assert (= (and b!582919 res!370884) b!582916))

(assert (= (and b!582916 res!370883) b!582923))

(assert (= (and b!582923 res!370882) b!582915))

(assert (= (and b!582915 res!370885) b!582922))

(assert (= (and b!582922 res!370887) b!582920))

(assert (= (and b!582920 res!370881) b!582917))

(assert (= (and b!582917 res!370886) b!582918))

(assert (= (and b!582918 res!370888) b!582921))

(declare-fun m!561445 () Bool)

(assert (=> start!53578 m!561445))

(declare-fun m!561447 () Bool)

(assert (=> start!53578 m!561447))

(declare-fun m!561449 () Bool)

(assert (=> b!582920 m!561449))

(declare-fun m!561451 () Bool)

(assert (=> b!582921 m!561451))

(assert (=> b!582921 m!561451))

(declare-fun m!561453 () Bool)

(assert (=> b!582921 m!561453))

(declare-fun m!561455 () Bool)

(assert (=> b!582923 m!561455))

(declare-fun m!561457 () Bool)

(assert (=> b!582918 m!561457))

(declare-fun m!561459 () Bool)

(assert (=> b!582918 m!561459))

(declare-fun m!561461 () Bool)

(assert (=> b!582918 m!561461))

(declare-fun m!561463 () Bool)

(assert (=> b!582915 m!561463))

(declare-fun m!561465 () Bool)

(assert (=> b!582922 m!561465))

(declare-fun m!561467 () Bool)

(assert (=> b!582917 m!561467))

(assert (=> b!582916 m!561451))

(assert (=> b!582916 m!561451))

(declare-fun m!561469 () Bool)

(assert (=> b!582916 m!561469))

(push 1)

