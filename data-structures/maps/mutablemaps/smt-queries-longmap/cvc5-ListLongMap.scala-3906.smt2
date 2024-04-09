; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53464 () Bool)

(assert start!53464)

(declare-fun b!581358 () Bool)

(declare-fun res!369330 () Bool)

(declare-fun e!333590 () Bool)

(assert (=> b!581358 (=> (not res!369330) (not e!333590))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36319 0))(
  ( (array!36320 (arr!17430 (Array (_ BitVec 32) (_ BitVec 64))) (size!17794 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36319)

(assert (=> b!581358 (= res!369330 (and (= (size!17794 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17794 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17794 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581360 () Bool)

(declare-fun e!333591 () Bool)

(assert (=> b!581360 (= e!333591 false)))

(declare-datatypes ((SeekEntryResult!5877 0))(
  ( (MissingZero!5877 (index!25735 (_ BitVec 32))) (Found!5877 (index!25736 (_ BitVec 32))) (Intermediate!5877 (undefined!6689 Bool) (index!25737 (_ BitVec 32)) (x!54629 (_ BitVec 32))) (Undefined!5877) (MissingVacant!5877 (index!25738 (_ BitVec 32))) )
))
(declare-fun lt!264892 () SeekEntryResult!5877)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36319 (_ BitVec 32)) SeekEntryResult!5877)

(assert (=> b!581360 (= lt!264892 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17430 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581361 () Bool)

(declare-fun res!369329 () Bool)

(assert (=> b!581361 (=> (not res!369329) (not e!333591))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!581361 (= res!369329 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17430 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17430 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581362 () Bool)

(declare-fun res!369331 () Bool)

(assert (=> b!581362 (=> (not res!369331) (not e!333591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36319 (_ BitVec 32)) Bool)

(assert (=> b!581362 (= res!369331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581363 () Bool)

(declare-fun res!369326 () Bool)

(assert (=> b!581363 (=> (not res!369326) (not e!333590))))

(declare-fun arrayContainsKey!0 (array!36319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581363 (= res!369326 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581364 () Bool)

(assert (=> b!581364 (= e!333590 e!333591)))

(declare-fun res!369327 () Bool)

(assert (=> b!581364 (=> (not res!369327) (not e!333591))))

(declare-fun lt!264893 () SeekEntryResult!5877)

(assert (=> b!581364 (= res!369327 (or (= lt!264893 (MissingZero!5877 i!1108)) (= lt!264893 (MissingVacant!5877 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36319 (_ BitVec 32)) SeekEntryResult!5877)

(assert (=> b!581364 (= lt!264893 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581359 () Bool)

(declare-fun res!369332 () Bool)

(assert (=> b!581359 (=> (not res!369332) (not e!333590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581359 (= res!369332 (validKeyInArray!0 k!1786))))

(declare-fun res!369324 () Bool)

(assert (=> start!53464 (=> (not res!369324) (not e!333590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53464 (= res!369324 (validMask!0 mask!3053))))

(assert (=> start!53464 e!333590))

(assert (=> start!53464 true))

(declare-fun array_inv!13204 (array!36319) Bool)

(assert (=> start!53464 (array_inv!13204 a!2986)))

(declare-fun b!581365 () Bool)

(declare-fun res!369328 () Bool)

(assert (=> b!581365 (=> (not res!369328) (not e!333590))))

(assert (=> b!581365 (= res!369328 (validKeyInArray!0 (select (arr!17430 a!2986) j!136)))))

(declare-fun b!581366 () Bool)

(declare-fun res!369325 () Bool)

(assert (=> b!581366 (=> (not res!369325) (not e!333591))))

(declare-datatypes ((List!11524 0))(
  ( (Nil!11521) (Cons!11520 (h!12565 (_ BitVec 64)) (t!17760 List!11524)) )
))
(declare-fun arrayNoDuplicates!0 (array!36319 (_ BitVec 32) List!11524) Bool)

(assert (=> b!581366 (= res!369325 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11521))))

(assert (= (and start!53464 res!369324) b!581358))

(assert (= (and b!581358 res!369330) b!581365))

(assert (= (and b!581365 res!369328) b!581359))

(assert (= (and b!581359 res!369332) b!581363))

(assert (= (and b!581363 res!369326) b!581364))

(assert (= (and b!581364 res!369327) b!581362))

(assert (= (and b!581362 res!369331) b!581366))

(assert (= (and b!581366 res!369325) b!581361))

(assert (= (and b!581361 res!369329) b!581360))

(declare-fun m!559945 () Bool)

(assert (=> b!581366 m!559945))

(declare-fun m!559947 () Bool)

(assert (=> b!581363 m!559947))

(declare-fun m!559949 () Bool)

(assert (=> b!581361 m!559949))

(declare-fun m!559951 () Bool)

(assert (=> b!581361 m!559951))

(declare-fun m!559953 () Bool)

(assert (=> b!581361 m!559953))

(declare-fun m!559955 () Bool)

(assert (=> b!581364 m!559955))

(declare-fun m!559957 () Bool)

(assert (=> start!53464 m!559957))

(declare-fun m!559959 () Bool)

(assert (=> start!53464 m!559959))

(declare-fun m!559961 () Bool)

(assert (=> b!581359 m!559961))

(declare-fun m!559963 () Bool)

(assert (=> b!581362 m!559963))

(declare-fun m!559965 () Bool)

(assert (=> b!581365 m!559965))

(assert (=> b!581365 m!559965))

(declare-fun m!559967 () Bool)

(assert (=> b!581365 m!559967))

(assert (=> b!581360 m!559965))

(assert (=> b!581360 m!559965))

(declare-fun m!559969 () Bool)

(assert (=> b!581360 m!559969))

(push 1)

