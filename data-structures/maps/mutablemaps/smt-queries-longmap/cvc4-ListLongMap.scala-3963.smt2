; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53810 () Bool)

(assert start!53810)

(declare-fun b!586837 () Bool)

(declare-fun res!374806 () Bool)

(declare-fun e!335318 () Bool)

(assert (=> b!586837 (=> (not res!374806) (not e!335318))))

(declare-datatypes ((array!36665 0))(
  ( (array!36666 (arr!17603 (Array (_ BitVec 32) (_ BitVec 64))) (size!17967 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36665)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586837 (= res!374806 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586838 () Bool)

(declare-fun res!374809 () Bool)

(assert (=> b!586838 (=> (not res!374809) (not e!335318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586838 (= res!374809 (validKeyInArray!0 k!1786))))

(declare-fun b!586839 () Bool)

(declare-fun res!374813 () Bool)

(assert (=> b!586839 (=> (not res!374813) (not e!335318))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586839 (= res!374813 (and (= (size!17967 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17967 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17967 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586840 () Bool)

(declare-fun res!374807 () Bool)

(declare-fun e!335319 () Bool)

(assert (=> b!586840 (=> (not res!374807) (not e!335319))))

(declare-datatypes ((List!11697 0))(
  ( (Nil!11694) (Cons!11693 (h!12738 (_ BitVec 64)) (t!17933 List!11697)) )
))
(declare-fun arrayNoDuplicates!0 (array!36665 (_ BitVec 32) List!11697) Bool)

(assert (=> b!586840 (= res!374807 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11694))))

(declare-fun b!586841 () Bool)

(assert (=> b!586841 (= e!335319 (not true))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266219 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6050 0))(
  ( (MissingZero!6050 (index!26427 (_ BitVec 32))) (Found!6050 (index!26428 (_ BitVec 32))) (Intermediate!6050 (undefined!6862 Bool) (index!26429 (_ BitVec 32)) (x!55258 (_ BitVec 32))) (Undefined!6050) (MissingVacant!6050 (index!26430 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36665 (_ BitVec 32)) SeekEntryResult!6050)

(assert (=> b!586841 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266219 vacantSpotIndex!68 (select (arr!17603 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266219 vacantSpotIndex!68 (select (store (arr!17603 a!2986) i!1108 k!1786) j!136) (array!36666 (store (arr!17603 a!2986) i!1108 k!1786) (size!17967 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18224 0))(
  ( (Unit!18225) )
))
(declare-fun lt!266217 () Unit!18224)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36665 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18224)

(assert (=> b!586841 (= lt!266217 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266219 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586841 (= lt!266219 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586842 () Bool)

(declare-fun res!374803 () Bool)

(assert (=> b!586842 (=> (not res!374803) (not e!335319))))

(assert (=> b!586842 (= res!374803 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17603 a!2986) index!984) (select (arr!17603 a!2986) j!136))) (not (= (select (arr!17603 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586844 () Bool)

(declare-fun res!374811 () Bool)

(assert (=> b!586844 (=> (not res!374811) (not e!335319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36665 (_ BitVec 32)) Bool)

(assert (=> b!586844 (= res!374811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586845 () Bool)

(declare-fun res!374805 () Bool)

(assert (=> b!586845 (=> (not res!374805) (not e!335318))))

(assert (=> b!586845 (= res!374805 (validKeyInArray!0 (select (arr!17603 a!2986) j!136)))))

(declare-fun b!586846 () Bool)

(assert (=> b!586846 (= e!335318 e!335319)))

(declare-fun res!374812 () Bool)

(assert (=> b!586846 (=> (not res!374812) (not e!335319))))

(declare-fun lt!266218 () SeekEntryResult!6050)

(assert (=> b!586846 (= res!374812 (or (= lt!266218 (MissingZero!6050 i!1108)) (= lt!266218 (MissingVacant!6050 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36665 (_ BitVec 32)) SeekEntryResult!6050)

(assert (=> b!586846 (= lt!266218 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586847 () Bool)

(declare-fun res!374810 () Bool)

(assert (=> b!586847 (=> (not res!374810) (not e!335319))))

(assert (=> b!586847 (= res!374810 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17603 a!2986) j!136) a!2986 mask!3053) (Found!6050 j!136)))))

(declare-fun b!586843 () Bool)

(declare-fun res!374808 () Bool)

(assert (=> b!586843 (=> (not res!374808) (not e!335319))))

(assert (=> b!586843 (= res!374808 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17603 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17603 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!374804 () Bool)

(assert (=> start!53810 (=> (not res!374804) (not e!335318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53810 (= res!374804 (validMask!0 mask!3053))))

(assert (=> start!53810 e!335318))

(assert (=> start!53810 true))

(declare-fun array_inv!13377 (array!36665) Bool)

(assert (=> start!53810 (array_inv!13377 a!2986)))

(assert (= (and start!53810 res!374804) b!586839))

(assert (= (and b!586839 res!374813) b!586845))

(assert (= (and b!586845 res!374805) b!586838))

(assert (= (and b!586838 res!374809) b!586837))

(assert (= (and b!586837 res!374806) b!586846))

(assert (= (and b!586846 res!374812) b!586844))

(assert (= (and b!586844 res!374811) b!586840))

(assert (= (and b!586840 res!374807) b!586843))

(assert (= (and b!586843 res!374808) b!586847))

(assert (= (and b!586847 res!374810) b!586842))

(assert (= (and b!586842 res!374803) b!586841))

(declare-fun m!565337 () Bool)

(assert (=> b!586846 m!565337))

(declare-fun m!565339 () Bool)

(assert (=> start!53810 m!565339))

(declare-fun m!565341 () Bool)

(assert (=> start!53810 m!565341))

(declare-fun m!565343 () Bool)

(assert (=> b!586837 m!565343))

(declare-fun m!565345 () Bool)

(assert (=> b!586838 m!565345))

(declare-fun m!565347 () Bool)

(assert (=> b!586840 m!565347))

(declare-fun m!565349 () Bool)

(assert (=> b!586841 m!565349))

(declare-fun m!565351 () Bool)

(assert (=> b!586841 m!565351))

(assert (=> b!586841 m!565351))

(declare-fun m!565353 () Bool)

(assert (=> b!586841 m!565353))

(declare-fun m!565355 () Bool)

(assert (=> b!586841 m!565355))

(declare-fun m!565357 () Bool)

(assert (=> b!586841 m!565357))

(declare-fun m!565359 () Bool)

(assert (=> b!586841 m!565359))

(assert (=> b!586841 m!565355))

(declare-fun m!565361 () Bool)

(assert (=> b!586841 m!565361))

(assert (=> b!586847 m!565355))

(assert (=> b!586847 m!565355))

(declare-fun m!565363 () Bool)

(assert (=> b!586847 m!565363))

(declare-fun m!565365 () Bool)

(assert (=> b!586842 m!565365))

(assert (=> b!586842 m!565355))

(declare-fun m!565367 () Bool)

(assert (=> b!586844 m!565367))

(assert (=> b!586845 m!565355))

(assert (=> b!586845 m!565355))

(declare-fun m!565369 () Bool)

(assert (=> b!586845 m!565369))

(declare-fun m!565371 () Bool)

(assert (=> b!586843 m!565371))

(assert (=> b!586843 m!565357))

(declare-fun m!565373 () Bool)

(assert (=> b!586843 m!565373))

(push 1)

(assert (not b!586844))

(assert (not b!586845))

