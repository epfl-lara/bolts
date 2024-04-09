; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53206 () Bool)

(assert start!53206)

(declare-fun b!577963 () Bool)

(declare-fun e!332429 () Bool)

(declare-fun e!332430 () Bool)

(assert (=> b!577963 (= e!332429 e!332430)))

(declare-fun res!365932 () Bool)

(assert (=> b!577963 (=> (not res!365932) (not e!332430))))

(declare-datatypes ((SeekEntryResult!5748 0))(
  ( (MissingZero!5748 (index!25219 (_ BitVec 32))) (Found!5748 (index!25220 (_ BitVec 32))) (Intermediate!5748 (undefined!6560 Bool) (index!25221 (_ BitVec 32)) (x!54156 (_ BitVec 32))) (Undefined!5748) (MissingVacant!5748 (index!25222 (_ BitVec 32))) )
))
(declare-fun lt!264152 () SeekEntryResult!5748)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577963 (= res!365932 (or (= lt!264152 (MissingZero!5748 i!1108)) (= lt!264152 (MissingVacant!5748 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36061 0))(
  ( (array!36062 (arr!17301 (Array (_ BitVec 32) (_ BitVec 64))) (size!17665 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36061)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36061 (_ BitVec 32)) SeekEntryResult!5748)

(assert (=> b!577963 (= lt!264152 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun b!577964 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!577964 (= e!332430 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17301 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17301 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!577965 () Bool)

(declare-fun res!365930 () Bool)

(assert (=> b!577965 (=> (not res!365930) (not e!332429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577965 (= res!365930 (validKeyInArray!0 k!1786))))

(declare-fun b!577967 () Bool)

(declare-fun res!365931 () Bool)

(assert (=> b!577967 (=> (not res!365931) (not e!332429))))

(declare-fun arrayContainsKey!0 (array!36061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577967 (= res!365931 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577968 () Bool)

(declare-fun res!365936 () Bool)

(assert (=> b!577968 (=> (not res!365936) (not e!332429))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!577968 (= res!365936 (validKeyInArray!0 (select (arr!17301 a!2986) j!136)))))

(declare-fun b!577969 () Bool)

(declare-fun res!365934 () Bool)

(assert (=> b!577969 (=> (not res!365934) (not e!332430))))

(declare-datatypes ((List!11395 0))(
  ( (Nil!11392) (Cons!11391 (h!12436 (_ BitVec 64)) (t!17631 List!11395)) )
))
(declare-fun arrayNoDuplicates!0 (array!36061 (_ BitVec 32) List!11395) Bool)

(assert (=> b!577969 (= res!365934 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11392))))

(declare-fun b!577970 () Bool)

(declare-fun res!365935 () Bool)

(assert (=> b!577970 (=> (not res!365935) (not e!332429))))

(assert (=> b!577970 (= res!365935 (and (= (size!17665 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17665 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17665 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!365929 () Bool)

(assert (=> start!53206 (=> (not res!365929) (not e!332429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53206 (= res!365929 (validMask!0 mask!3053))))

(assert (=> start!53206 e!332429))

(assert (=> start!53206 true))

(declare-fun array_inv!13075 (array!36061) Bool)

(assert (=> start!53206 (array_inv!13075 a!2986)))

(declare-fun b!577966 () Bool)

(declare-fun res!365933 () Bool)

(assert (=> b!577966 (=> (not res!365933) (not e!332430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36061 (_ BitVec 32)) Bool)

(assert (=> b!577966 (= res!365933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53206 res!365929) b!577970))

(assert (= (and b!577970 res!365935) b!577968))

(assert (= (and b!577968 res!365936) b!577965))

(assert (= (and b!577965 res!365930) b!577967))

(assert (= (and b!577967 res!365931) b!577963))

(assert (= (and b!577963 res!365932) b!577966))

(assert (= (and b!577966 res!365933) b!577969))

(assert (= (and b!577969 res!365934) b!577964))

(declare-fun m!556729 () Bool)

(assert (=> start!53206 m!556729))

(declare-fun m!556731 () Bool)

(assert (=> start!53206 m!556731))

(declare-fun m!556733 () Bool)

(assert (=> b!577964 m!556733))

(declare-fun m!556735 () Bool)

(assert (=> b!577964 m!556735))

(declare-fun m!556737 () Bool)

(assert (=> b!577964 m!556737))

(declare-fun m!556739 () Bool)

(assert (=> b!577965 m!556739))

(declare-fun m!556741 () Bool)

(assert (=> b!577969 m!556741))

(declare-fun m!556743 () Bool)

(assert (=> b!577967 m!556743))

(declare-fun m!556745 () Bool)

(assert (=> b!577968 m!556745))

(assert (=> b!577968 m!556745))

(declare-fun m!556747 () Bool)

(assert (=> b!577968 m!556747))

(declare-fun m!556749 () Bool)

(assert (=> b!577963 m!556749))

(declare-fun m!556751 () Bool)

(assert (=> b!577966 m!556751))

(push 1)

