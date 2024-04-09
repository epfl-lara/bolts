; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53570 () Bool)

(assert start!53570)

(declare-fun b!582807 () Bool)

(declare-fun res!370778 () Bool)

(declare-fun e!334068 () Bool)

(assert (=> b!582807 (=> (not res!370778) (not e!334068))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36425 0))(
  ( (array!36426 (arr!17483 (Array (_ BitVec 32) (_ BitVec 64))) (size!17847 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36425)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582807 (= res!370778 (and (= (size!17847 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17847 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17847 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582808 () Bool)

(declare-fun res!370775 () Bool)

(assert (=> b!582808 (=> (not res!370775) (not e!334068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582808 (= res!370775 (validKeyInArray!0 (select (arr!17483 a!2986) j!136)))))

(declare-fun b!582809 () Bool)

(declare-fun e!334069 () Bool)

(assert (=> b!582809 (= e!334069 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5930 0))(
  ( (MissingZero!5930 (index!25947 (_ BitVec 32))) (Found!5930 (index!25948 (_ BitVec 32))) (Intermediate!5930 (undefined!6742 Bool) (index!25949 (_ BitVec 32)) (x!54818 (_ BitVec 32))) (Undefined!5930) (MissingVacant!5930 (index!25950 (_ BitVec 32))) )
))
(declare-fun lt!265201 () SeekEntryResult!5930)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36425 (_ BitVec 32)) SeekEntryResult!5930)

(assert (=> b!582809 (= lt!265201 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17483 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!370779 () Bool)

(assert (=> start!53570 (=> (not res!370779) (not e!334068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53570 (= res!370779 (validMask!0 mask!3053))))

(assert (=> start!53570 e!334068))

(assert (=> start!53570 true))

(declare-fun array_inv!13257 (array!36425) Bool)

(assert (=> start!53570 (array_inv!13257 a!2986)))

(declare-fun b!582810 () Bool)

(declare-fun res!370773 () Bool)

(assert (=> b!582810 (=> (not res!370773) (not e!334069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36425 (_ BitVec 32)) Bool)

(assert (=> b!582810 (= res!370773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582811 () Bool)

(declare-fun res!370780 () Bool)

(assert (=> b!582811 (=> (not res!370780) (not e!334069))))

(declare-datatypes ((List!11577 0))(
  ( (Nil!11574) (Cons!11573 (h!12618 (_ BitVec 64)) (t!17813 List!11577)) )
))
(declare-fun arrayNoDuplicates!0 (array!36425 (_ BitVec 32) List!11577) Bool)

(assert (=> b!582811 (= res!370780 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11574))))

(declare-fun b!582812 () Bool)

(assert (=> b!582812 (= e!334068 e!334069)))

(declare-fun res!370776 () Bool)

(assert (=> b!582812 (=> (not res!370776) (not e!334069))))

(declare-fun lt!265202 () SeekEntryResult!5930)

(assert (=> b!582812 (= res!370776 (or (= lt!265202 (MissingZero!5930 i!1108)) (= lt!265202 (MissingVacant!5930 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36425 (_ BitVec 32)) SeekEntryResult!5930)

(assert (=> b!582812 (= lt!265202 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582813 () Bool)

(declare-fun res!370781 () Bool)

(assert (=> b!582813 (=> (not res!370781) (not e!334068))))

(declare-fun arrayContainsKey!0 (array!36425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582813 (= res!370781 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582814 () Bool)

(declare-fun res!370777 () Bool)

(assert (=> b!582814 (=> (not res!370777) (not e!334069))))

(assert (=> b!582814 (= res!370777 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17483 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17483 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582815 () Bool)

(declare-fun res!370774 () Bool)

(assert (=> b!582815 (=> (not res!370774) (not e!334068))))

(assert (=> b!582815 (= res!370774 (validKeyInArray!0 k!1786))))

(assert (= (and start!53570 res!370779) b!582807))

(assert (= (and b!582807 res!370778) b!582808))

(assert (= (and b!582808 res!370775) b!582815))

(assert (= (and b!582815 res!370774) b!582813))

(assert (= (and b!582813 res!370781) b!582812))

(assert (= (and b!582812 res!370776) b!582810))

(assert (= (and b!582810 res!370773) b!582811))

(assert (= (and b!582811 res!370780) b!582814))

(assert (= (and b!582814 res!370777) b!582809))

(declare-fun m!561341 () Bool)

(assert (=> b!582814 m!561341))

(declare-fun m!561343 () Bool)

(assert (=> b!582814 m!561343))

(declare-fun m!561345 () Bool)

(assert (=> b!582814 m!561345))

(declare-fun m!561347 () Bool)

(assert (=> b!582811 m!561347))

(declare-fun m!561349 () Bool)

(assert (=> b!582809 m!561349))

(assert (=> b!582809 m!561349))

(declare-fun m!561351 () Bool)

(assert (=> b!582809 m!561351))

(declare-fun m!561353 () Bool)

(assert (=> b!582810 m!561353))

(declare-fun m!561355 () Bool)

(assert (=> start!53570 m!561355))

(declare-fun m!561357 () Bool)

(assert (=> start!53570 m!561357))

(declare-fun m!561359 () Bool)

(assert (=> b!582815 m!561359))

(assert (=> b!582808 m!561349))

(assert (=> b!582808 m!561349))

(declare-fun m!561361 () Bool)

(assert (=> b!582808 m!561361))

(declare-fun m!561363 () Bool)

(assert (=> b!582813 m!561363))

(declare-fun m!561365 () Bool)

(assert (=> b!582812 m!561365))

(push 1)

(assert (not b!582808))

(assert (not b!582812))

(assert (not b!582815))

(assert (not b!582809))

(assert (not b!582811))

(assert (not b!582813))

(assert (not b!582810))

