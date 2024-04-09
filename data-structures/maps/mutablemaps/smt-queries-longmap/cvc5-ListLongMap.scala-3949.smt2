; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53722 () Bool)

(assert start!53722)

(declare-fun b!585385 () Bool)

(declare-fun res!373352 () Bool)

(declare-fun e!334922 () Bool)

(assert (=> b!585385 (=> (not res!373352) (not e!334922))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36577 0))(
  ( (array!36578 (arr!17559 (Array (_ BitVec 32) (_ BitVec 64))) (size!17923 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36577)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!585385 (= res!373352 (and (= (size!17923 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17923 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17923 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585386 () Bool)

(declare-fun e!334924 () Bool)

(assert (=> b!585386 (= e!334922 e!334924)))

(declare-fun res!373351 () Bool)

(assert (=> b!585386 (=> (not res!373351) (not e!334924))))

(declare-datatypes ((SeekEntryResult!6006 0))(
  ( (MissingZero!6006 (index!26251 (_ BitVec 32))) (Found!6006 (index!26252 (_ BitVec 32))) (Intermediate!6006 (undefined!6818 Bool) (index!26253 (_ BitVec 32)) (x!55102 (_ BitVec 32))) (Undefined!6006) (MissingVacant!6006 (index!26254 (_ BitVec 32))) )
))
(declare-fun lt!265823 () SeekEntryResult!6006)

(assert (=> b!585386 (= res!373351 (or (= lt!265823 (MissingZero!6006 i!1108)) (= lt!265823 (MissingVacant!6006 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36577 (_ BitVec 32)) SeekEntryResult!6006)

(assert (=> b!585386 (= lt!265823 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585387 () Bool)

(declare-fun res!373358 () Bool)

(assert (=> b!585387 (=> (not res!373358) (not e!334922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585387 (= res!373358 (validKeyInArray!0 k!1786))))

(declare-fun b!585388 () Bool)

(declare-fun res!373357 () Bool)

(assert (=> b!585388 (=> (not res!373357) (not e!334924))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585388 (= res!373357 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17559 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17559 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585389 () Bool)

(declare-fun res!373355 () Bool)

(assert (=> b!585389 (=> (not res!373355) (not e!334924))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36577 (_ BitVec 32)) SeekEntryResult!6006)

(assert (=> b!585389 (= res!373355 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17559 a!2986) j!136) a!2986 mask!3053) (Found!6006 j!136)))))

(declare-fun res!373353 () Bool)

(assert (=> start!53722 (=> (not res!373353) (not e!334922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53722 (= res!373353 (validMask!0 mask!3053))))

(assert (=> start!53722 e!334922))

(assert (=> start!53722 true))

(declare-fun array_inv!13333 (array!36577) Bool)

(assert (=> start!53722 (array_inv!13333 a!2986)))

(declare-fun b!585390 () Bool)

(declare-fun res!373354 () Bool)

(assert (=> b!585390 (=> (not res!373354) (not e!334924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36577 (_ BitVec 32)) Bool)

(assert (=> b!585390 (= res!373354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585391 () Bool)

(declare-fun res!373361 () Bool)

(assert (=> b!585391 (=> (not res!373361) (not e!334922))))

(declare-fun arrayContainsKey!0 (array!36577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585391 (= res!373361 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585392 () Bool)

(declare-fun res!373356 () Bool)

(assert (=> b!585392 (=> (not res!373356) (not e!334924))))

(declare-datatypes ((List!11653 0))(
  ( (Nil!11650) (Cons!11649 (h!12694 (_ BitVec 64)) (t!17889 List!11653)) )
))
(declare-fun arrayNoDuplicates!0 (array!36577 (_ BitVec 32) List!11653) Bool)

(assert (=> b!585392 (= res!373356 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11650))))

(declare-fun b!585393 () Bool)

(declare-fun res!373360 () Bool)

(assert (=> b!585393 (=> (not res!373360) (not e!334922))))

(assert (=> b!585393 (= res!373360 (validKeyInArray!0 (select (arr!17559 a!2986) j!136)))))

(declare-fun b!585394 () Bool)

(assert (=> b!585394 (= e!334924 (not true))))

(declare-fun lt!265822 () (_ BitVec 32))

(assert (=> b!585394 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265822 vacantSpotIndex!68 (select (arr!17559 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265822 vacantSpotIndex!68 (select (store (arr!17559 a!2986) i!1108 k!1786) j!136) (array!36578 (store (arr!17559 a!2986) i!1108 k!1786) (size!17923 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18136 0))(
  ( (Unit!18137) )
))
(declare-fun lt!265821 () Unit!18136)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36577 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18136)

(assert (=> b!585394 (= lt!265821 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265822 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585394 (= lt!265822 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585395 () Bool)

(declare-fun res!373359 () Bool)

(assert (=> b!585395 (=> (not res!373359) (not e!334924))))

(assert (=> b!585395 (= res!373359 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17559 a!2986) index!984) (select (arr!17559 a!2986) j!136))) (not (= (select (arr!17559 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53722 res!373353) b!585385))

(assert (= (and b!585385 res!373352) b!585393))

(assert (= (and b!585393 res!373360) b!585387))

(assert (= (and b!585387 res!373358) b!585391))

(assert (= (and b!585391 res!373361) b!585386))

(assert (= (and b!585386 res!373351) b!585390))

(assert (= (and b!585390 res!373354) b!585392))

(assert (= (and b!585392 res!373356) b!585388))

(assert (= (and b!585388 res!373357) b!585389))

(assert (= (and b!585389 res!373355) b!585395))

(assert (= (and b!585395 res!373359) b!585394))

(declare-fun m!563665 () Bool)

(assert (=> b!585393 m!563665))

(assert (=> b!585393 m!563665))

(declare-fun m!563667 () Bool)

(assert (=> b!585393 m!563667))

(declare-fun m!563669 () Bool)

(assert (=> b!585395 m!563669))

(assert (=> b!585395 m!563665))

(declare-fun m!563671 () Bool)

(assert (=> b!585387 m!563671))

(declare-fun m!563673 () Bool)

(assert (=> b!585392 m!563673))

(declare-fun m!563675 () Bool)

(assert (=> b!585394 m!563675))

(assert (=> b!585394 m!563665))

(declare-fun m!563677 () Bool)

(assert (=> b!585394 m!563677))

(declare-fun m!563679 () Bool)

(assert (=> b!585394 m!563679))

(declare-fun m!563681 () Bool)

(assert (=> b!585394 m!563681))

(declare-fun m!563683 () Bool)

(assert (=> b!585394 m!563683))

(assert (=> b!585394 m!563665))

(declare-fun m!563685 () Bool)

(assert (=> b!585394 m!563685))

(assert (=> b!585394 m!563677))

(declare-fun m!563687 () Bool)

(assert (=> b!585388 m!563687))

(assert (=> b!585388 m!563681))

(declare-fun m!563689 () Bool)

(assert (=> b!585388 m!563689))

(declare-fun m!563691 () Bool)

(assert (=> b!585386 m!563691))

(declare-fun m!563693 () Bool)

(assert (=> start!53722 m!563693))

(declare-fun m!563695 () Bool)

(assert (=> start!53722 m!563695))

(declare-fun m!563697 () Bool)

(assert (=> b!585390 m!563697))

(declare-fun m!563699 () Bool)

(assert (=> b!585391 m!563699))

(assert (=> b!585389 m!563665))

(assert (=> b!585389 m!563665))

(declare-fun m!563701 () Bool)

(assert (=> b!585389 m!563701))

(push 1)

