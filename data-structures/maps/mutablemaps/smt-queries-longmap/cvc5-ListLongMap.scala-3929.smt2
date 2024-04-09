; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53602 () Bool)

(assert start!53602)

(declare-fun b!583248 () Bool)

(declare-fun res!371221 () Bool)

(declare-fun e!334212 () Bool)

(assert (=> b!583248 (=> (not res!371221) (not e!334212))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583248 (= res!371221 (validKeyInArray!0 k!1786))))

(declare-fun b!583249 () Bool)

(declare-fun res!371215 () Bool)

(declare-fun e!334211 () Bool)

(assert (=> b!583249 (=> (not res!371215) (not e!334211))))

(declare-datatypes ((array!36457 0))(
  ( (array!36458 (arr!17499 (Array (_ BitVec 32) (_ BitVec 64))) (size!17863 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36457)

(declare-datatypes ((List!11593 0))(
  ( (Nil!11590) (Cons!11589 (h!12634 (_ BitVec 64)) (t!17829 List!11593)) )
))
(declare-fun arrayNoDuplicates!0 (array!36457 (_ BitVec 32) List!11593) Bool)

(assert (=> b!583249 (= res!371215 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11590))))

(declare-fun b!583250 () Bool)

(assert (=> b!583250 (= e!334212 e!334211)))

(declare-fun res!371222 () Bool)

(assert (=> b!583250 (=> (not res!371222) (not e!334211))))

(declare-datatypes ((SeekEntryResult!5946 0))(
  ( (MissingZero!5946 (index!26011 (_ BitVec 32))) (Found!5946 (index!26012 (_ BitVec 32))) (Intermediate!5946 (undefined!6758 Bool) (index!26013 (_ BitVec 32)) (x!54882 (_ BitVec 32))) (Undefined!5946) (MissingVacant!5946 (index!26014 (_ BitVec 32))) )
))
(declare-fun lt!265288 () SeekEntryResult!5946)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583250 (= res!371222 (or (= lt!265288 (MissingZero!5946 i!1108)) (= lt!265288 (MissingVacant!5946 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36457 (_ BitVec 32)) SeekEntryResult!5946)

(assert (=> b!583250 (= lt!265288 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583251 () Bool)

(declare-fun res!371218 () Bool)

(assert (=> b!583251 (=> (not res!371218) (not e!334212))))

(declare-fun arrayContainsKey!0 (array!36457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583251 (= res!371218 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583252 () Bool)

(assert (=> b!583252 (= e!334211 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265289 () SeekEntryResult!5946)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36457 (_ BitVec 32)) SeekEntryResult!5946)

(assert (=> b!583252 (= lt!265289 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17499 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583253 () Bool)

(declare-fun res!371219 () Bool)

(assert (=> b!583253 (=> (not res!371219) (not e!334212))))

(assert (=> b!583253 (= res!371219 (validKeyInArray!0 (select (arr!17499 a!2986) j!136)))))

(declare-fun b!583254 () Bool)

(declare-fun res!371216 () Bool)

(assert (=> b!583254 (=> (not res!371216) (not e!334211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36457 (_ BitVec 32)) Bool)

(assert (=> b!583254 (= res!371216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!371217 () Bool)

(assert (=> start!53602 (=> (not res!371217) (not e!334212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53602 (= res!371217 (validMask!0 mask!3053))))

(assert (=> start!53602 e!334212))

(assert (=> start!53602 true))

(declare-fun array_inv!13273 (array!36457) Bool)

(assert (=> start!53602 (array_inv!13273 a!2986)))

(declare-fun b!583255 () Bool)

(declare-fun res!371220 () Bool)

(assert (=> b!583255 (=> (not res!371220) (not e!334211))))

(assert (=> b!583255 (= res!371220 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17499 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17499 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583256 () Bool)

(declare-fun res!371214 () Bool)

(assert (=> b!583256 (=> (not res!371214) (not e!334212))))

(assert (=> b!583256 (= res!371214 (and (= (size!17863 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17863 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17863 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53602 res!371217) b!583256))

(assert (= (and b!583256 res!371214) b!583253))

(assert (= (and b!583253 res!371219) b!583248))

(assert (= (and b!583248 res!371221) b!583251))

(assert (= (and b!583251 res!371218) b!583250))

(assert (= (and b!583250 res!371222) b!583254))

(assert (= (and b!583254 res!371216) b!583249))

(assert (= (and b!583249 res!371215) b!583255))

(assert (= (and b!583255 res!371220) b!583252))

(declare-fun m!561763 () Bool)

(assert (=> start!53602 m!561763))

(declare-fun m!561765 () Bool)

(assert (=> start!53602 m!561765))

(declare-fun m!561767 () Bool)

(assert (=> b!583254 m!561767))

(declare-fun m!561769 () Bool)

(assert (=> b!583250 m!561769))

(declare-fun m!561771 () Bool)

(assert (=> b!583248 m!561771))

(declare-fun m!561773 () Bool)

(assert (=> b!583253 m!561773))

(assert (=> b!583253 m!561773))

(declare-fun m!561775 () Bool)

(assert (=> b!583253 m!561775))

(declare-fun m!561777 () Bool)

(assert (=> b!583251 m!561777))

(declare-fun m!561779 () Bool)

(assert (=> b!583255 m!561779))

(declare-fun m!561781 () Bool)

(assert (=> b!583255 m!561781))

(declare-fun m!561783 () Bool)

(assert (=> b!583255 m!561783))

(assert (=> b!583252 m!561773))

(assert (=> b!583252 m!561773))

(declare-fun m!561785 () Bool)

(assert (=> b!583252 m!561785))

(declare-fun m!561787 () Bool)

(assert (=> b!583249 m!561787))

(push 1)

