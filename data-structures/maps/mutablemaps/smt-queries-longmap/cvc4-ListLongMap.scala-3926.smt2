; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53588 () Bool)

(assert start!53588)

(declare-fun b!583050 () Bool)

(declare-fun res!371017 () Bool)

(declare-fun e!334149 () Bool)

(assert (=> b!583050 (=> (not res!371017) (not e!334149))))

(declare-datatypes ((array!36443 0))(
  ( (array!36444 (arr!17492 (Array (_ BitVec 32) (_ BitVec 64))) (size!17856 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36443)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583050 (= res!371017 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583051 () Bool)

(declare-fun res!371022 () Bool)

(declare-fun e!334150 () Bool)

(assert (=> b!583051 (=> (not res!371022) (not e!334150))))

(declare-datatypes ((List!11586 0))(
  ( (Nil!11583) (Cons!11582 (h!12627 (_ BitVec 64)) (t!17822 List!11586)) )
))
(declare-fun arrayNoDuplicates!0 (array!36443 (_ BitVec 32) List!11586) Bool)

(assert (=> b!583051 (= res!371022 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11583))))

(declare-fun res!371016 () Bool)

(assert (=> start!53588 (=> (not res!371016) (not e!334149))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53588 (= res!371016 (validMask!0 mask!3053))))

(assert (=> start!53588 e!334149))

(assert (=> start!53588 true))

(declare-fun array_inv!13266 (array!36443) Bool)

(assert (=> start!53588 (array_inv!13266 a!2986)))

(declare-fun b!583052 () Bool)

(declare-fun res!371024 () Bool)

(assert (=> b!583052 (=> (not res!371024) (not e!334150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36443 (_ BitVec 32)) Bool)

(assert (=> b!583052 (= res!371024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583053 () Bool)

(declare-fun res!371023 () Bool)

(assert (=> b!583053 (=> (not res!371023) (not e!334150))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583053 (= res!371023 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17492 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17492 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583054 () Bool)

(declare-fun res!371020 () Bool)

(assert (=> b!583054 (=> (not res!371020) (not e!334149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583054 (= res!371020 (validKeyInArray!0 k!1786))))

(declare-fun b!583055 () Bool)

(assert (=> b!583055 (= e!334149 e!334150)))

(declare-fun res!371021 () Bool)

(assert (=> b!583055 (=> (not res!371021) (not e!334150))))

(declare-datatypes ((SeekEntryResult!5939 0))(
  ( (MissingZero!5939 (index!25983 (_ BitVec 32))) (Found!5939 (index!25984 (_ BitVec 32))) (Intermediate!5939 (undefined!6751 Bool) (index!25985 (_ BitVec 32)) (x!54851 (_ BitVec 32))) (Undefined!5939) (MissingVacant!5939 (index!25986 (_ BitVec 32))) )
))
(declare-fun lt!265256 () SeekEntryResult!5939)

(assert (=> b!583055 (= res!371021 (or (= lt!265256 (MissingZero!5939 i!1108)) (= lt!265256 (MissingVacant!5939 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36443 (_ BitVec 32)) SeekEntryResult!5939)

(assert (=> b!583055 (= lt!265256 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583056 () Bool)

(declare-fun res!371018 () Bool)

(assert (=> b!583056 (=> (not res!371018) (not e!334149))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!583056 (= res!371018 (validKeyInArray!0 (select (arr!17492 a!2986) j!136)))))

(declare-fun b!583057 () Bool)

(assert (=> b!583057 (= e!334150 false)))

(declare-fun lt!265255 () SeekEntryResult!5939)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36443 (_ BitVec 32)) SeekEntryResult!5939)

(assert (=> b!583057 (= lt!265255 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17492 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583058 () Bool)

(declare-fun res!371019 () Bool)

(assert (=> b!583058 (=> (not res!371019) (not e!334149))))

(assert (=> b!583058 (= res!371019 (and (= (size!17856 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17856 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17856 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53588 res!371016) b!583058))

(assert (= (and b!583058 res!371019) b!583056))

(assert (= (and b!583056 res!371018) b!583054))

(assert (= (and b!583054 res!371020) b!583050))

(assert (= (and b!583050 res!371017) b!583055))

(assert (= (and b!583055 res!371021) b!583052))

(assert (= (and b!583052 res!371024) b!583051))

(assert (= (and b!583051 res!371022) b!583053))

(assert (= (and b!583053 res!371023) b!583057))

(declare-fun m!561575 () Bool)

(assert (=> b!583052 m!561575))

(declare-fun m!561577 () Bool)

(assert (=> b!583054 m!561577))

(declare-fun m!561579 () Bool)

(assert (=> b!583053 m!561579))

(declare-fun m!561581 () Bool)

(assert (=> b!583053 m!561581))

(declare-fun m!561583 () Bool)

(assert (=> b!583053 m!561583))

(declare-fun m!561585 () Bool)

(assert (=> b!583056 m!561585))

(assert (=> b!583056 m!561585))

(declare-fun m!561587 () Bool)

(assert (=> b!583056 m!561587))

(assert (=> b!583057 m!561585))

(assert (=> b!583057 m!561585))

(declare-fun m!561589 () Bool)

(assert (=> b!583057 m!561589))

(declare-fun m!561591 () Bool)

(assert (=> b!583055 m!561591))

(declare-fun m!561593 () Bool)

(assert (=> start!53588 m!561593))

(declare-fun m!561595 () Bool)

(assert (=> start!53588 m!561595))

(declare-fun m!561597 () Bool)

(assert (=> b!583051 m!561597))

(declare-fun m!561599 () Bool)

(assert (=> b!583050 m!561599))

(push 1)

(assert (not b!583054))

(assert (not b!583057))

(assert (not b!583052))

(assert (not start!53588))

(assert (not b!583051))

