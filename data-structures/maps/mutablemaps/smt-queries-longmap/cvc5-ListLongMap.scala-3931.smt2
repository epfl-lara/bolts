; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53614 () Bool)

(assert start!53614)

(declare-fun res!371418 () Bool)

(declare-fun e!334279 () Bool)

(assert (=> start!53614 (=> (not res!371418) (not e!334279))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53614 (= res!371418 (validMask!0 mask!3053))))

(assert (=> start!53614 e!334279))

(assert (=> start!53614 true))

(declare-datatypes ((array!36469 0))(
  ( (array!36470 (arr!17505 (Array (_ BitVec 32) (_ BitVec 64))) (size!17869 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36469)

(declare-fun array_inv!13279 (array!36469) Bool)

(assert (=> start!53614 (array_inv!13279 a!2986)))

(declare-fun b!583443 () Bool)

(declare-fun res!371419 () Bool)

(assert (=> b!583443 (=> (not res!371419) (not e!334279))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583443 (= res!371419 (validKeyInArray!0 k!1786))))

(declare-fun b!583444 () Bool)

(declare-fun res!371415 () Bool)

(declare-fun e!334277 () Bool)

(assert (=> b!583444 (=> (not res!371415) (not e!334277))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583444 (= res!371415 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17505 a!2986) index!984) (select (arr!17505 a!2986) j!136))) (not (= (select (arr!17505 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583445 () Bool)

(declare-fun res!371417 () Bool)

(assert (=> b!583445 (=> (not res!371417) (not e!334277))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5952 0))(
  ( (MissingZero!5952 (index!26035 (_ BitVec 32))) (Found!5952 (index!26036 (_ BitVec 32))) (Intermediate!5952 (undefined!6764 Bool) (index!26037 (_ BitVec 32)) (x!54904 (_ BitVec 32))) (Undefined!5952) (MissingVacant!5952 (index!26038 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36469 (_ BitVec 32)) SeekEntryResult!5952)

(assert (=> b!583445 (= res!371417 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17505 a!2986) j!136) a!2986 mask!3053) (Found!5952 j!136)))))

(declare-fun b!583446 () Bool)

(declare-fun res!371413 () Bool)

(assert (=> b!583446 (=> (not res!371413) (not e!334277))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583446 (= res!371413 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17505 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17505 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583447 () Bool)

(declare-fun res!371420 () Bool)

(assert (=> b!583447 (=> (not res!371420) (not e!334277))))

(declare-datatypes ((List!11599 0))(
  ( (Nil!11596) (Cons!11595 (h!12640 (_ BitVec 64)) (t!17835 List!11599)) )
))
(declare-fun arrayNoDuplicates!0 (array!36469 (_ BitVec 32) List!11599) Bool)

(assert (=> b!583447 (= res!371420 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11596))))

(declare-fun b!583448 () Bool)

(declare-fun res!371414 () Bool)

(assert (=> b!583448 (=> (not res!371414) (not e!334279))))

(assert (=> b!583448 (= res!371414 (validKeyInArray!0 (select (arr!17505 a!2986) j!136)))))

(declare-fun b!583449 () Bool)

(declare-fun res!371412 () Bool)

(assert (=> b!583449 (=> (not res!371412) (not e!334279))))

(declare-fun arrayContainsKey!0 (array!36469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583449 (= res!371412 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583450 () Bool)

(declare-fun e!334278 () Bool)

(assert (=> b!583450 (= e!334278 false)))

(declare-fun lt!265335 () (_ BitVec 32))

(declare-fun lt!265336 () SeekEntryResult!5952)

(assert (=> b!583450 (= lt!265336 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265335 vacantSpotIndex!68 (select (arr!17505 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583451 () Bool)

(declare-fun res!371410 () Bool)

(assert (=> b!583451 (=> (not res!371410) (not e!334279))))

(assert (=> b!583451 (= res!371410 (and (= (size!17869 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17869 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17869 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583452 () Bool)

(assert (=> b!583452 (= e!334277 e!334278)))

(declare-fun res!371409 () Bool)

(assert (=> b!583452 (=> (not res!371409) (not e!334278))))

(assert (=> b!583452 (= res!371409 (and (bvsge lt!265335 #b00000000000000000000000000000000) (bvslt lt!265335 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583452 (= lt!265335 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583453 () Bool)

(declare-fun res!371411 () Bool)

(assert (=> b!583453 (=> (not res!371411) (not e!334277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36469 (_ BitVec 32)) Bool)

(assert (=> b!583453 (= res!371411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583454 () Bool)

(assert (=> b!583454 (= e!334279 e!334277)))

(declare-fun res!371416 () Bool)

(assert (=> b!583454 (=> (not res!371416) (not e!334277))))

(declare-fun lt!265337 () SeekEntryResult!5952)

(assert (=> b!583454 (= res!371416 (or (= lt!265337 (MissingZero!5952 i!1108)) (= lt!265337 (MissingVacant!5952 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36469 (_ BitVec 32)) SeekEntryResult!5952)

(assert (=> b!583454 (= lt!265337 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53614 res!371418) b!583451))

(assert (= (and b!583451 res!371410) b!583448))

(assert (= (and b!583448 res!371414) b!583443))

(assert (= (and b!583443 res!371419) b!583449))

(assert (= (and b!583449 res!371412) b!583454))

(assert (= (and b!583454 res!371416) b!583453))

(assert (= (and b!583453 res!371411) b!583447))

(assert (= (and b!583447 res!371420) b!583446))

(assert (= (and b!583446 res!371413) b!583445))

(assert (= (and b!583445 res!371417) b!583444))

(assert (= (and b!583444 res!371415) b!583452))

(assert (= (and b!583452 res!371409) b!583450))

(declare-fun m!561937 () Bool)

(assert (=> b!583448 m!561937))

(assert (=> b!583448 m!561937))

(declare-fun m!561939 () Bool)

(assert (=> b!583448 m!561939))

(assert (=> b!583450 m!561937))

(assert (=> b!583450 m!561937))

(declare-fun m!561941 () Bool)

(assert (=> b!583450 m!561941))

(declare-fun m!561943 () Bool)

(assert (=> b!583449 m!561943))

(declare-fun m!561945 () Bool)

(assert (=> b!583453 m!561945))

(declare-fun m!561947 () Bool)

(assert (=> b!583444 m!561947))

(assert (=> b!583444 m!561937))

(assert (=> b!583445 m!561937))

(assert (=> b!583445 m!561937))

(declare-fun m!561949 () Bool)

(assert (=> b!583445 m!561949))

(declare-fun m!561951 () Bool)

(assert (=> b!583443 m!561951))

(declare-fun m!561953 () Bool)

(assert (=> b!583452 m!561953))

(declare-fun m!561955 () Bool)

(assert (=> b!583454 m!561955))

(declare-fun m!561957 () Bool)

(assert (=> b!583446 m!561957))

(declare-fun m!561959 () Bool)

(assert (=> b!583446 m!561959))

(declare-fun m!561961 () Bool)

(assert (=> b!583446 m!561961))

(declare-fun m!561963 () Bool)

(assert (=> b!583447 m!561963))

(declare-fun m!561965 () Bool)

(assert (=> start!53614 m!561965))

(declare-fun m!561967 () Bool)

(assert (=> start!53614 m!561967))

(push 1)

