; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53582 () Bool)

(assert start!53582)

(declare-fun b!582969 () Bool)

(declare-fun res!370943 () Bool)

(declare-fun e!334122 () Bool)

(assert (=> b!582969 (=> (not res!370943) (not e!334122))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36437 0))(
  ( (array!36438 (arr!17489 (Array (_ BitVec 32) (_ BitVec 64))) (size!17853 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36437)

(assert (=> b!582969 (= res!370943 (and (= (size!17853 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17853 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17853 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!370940 () Bool)

(assert (=> start!53582 (=> (not res!370940) (not e!334122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53582 (= res!370940 (validMask!0 mask!3053))))

(assert (=> start!53582 e!334122))

(assert (=> start!53582 true))

(declare-fun array_inv!13263 (array!36437) Bool)

(assert (=> start!53582 (array_inv!13263 a!2986)))

(declare-fun b!582970 () Bool)

(declare-fun res!370935 () Bool)

(declare-fun e!334121 () Bool)

(assert (=> b!582970 (=> (not res!370935) (not e!334121))))

(declare-datatypes ((List!11583 0))(
  ( (Nil!11580) (Cons!11579 (h!12624 (_ BitVec 64)) (t!17819 List!11583)) )
))
(declare-fun arrayNoDuplicates!0 (array!36437 (_ BitVec 32) List!11583) Bool)

(assert (=> b!582970 (= res!370935 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11580))))

(declare-fun b!582971 () Bool)

(assert (=> b!582971 (= e!334121 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5936 0))(
  ( (MissingZero!5936 (index!25971 (_ BitVec 32))) (Found!5936 (index!25972 (_ BitVec 32))) (Intermediate!5936 (undefined!6748 Bool) (index!25973 (_ BitVec 32)) (x!54840 (_ BitVec 32))) (Undefined!5936) (MissingVacant!5936 (index!25974 (_ BitVec 32))) )
))
(declare-fun lt!265237 () SeekEntryResult!5936)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36437 (_ BitVec 32)) SeekEntryResult!5936)

(assert (=> b!582971 (= lt!265237 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17489 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582972 () Bool)

(declare-fun res!370941 () Bool)

(assert (=> b!582972 (=> (not res!370941) (not e!334121))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!582972 (= res!370941 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17489 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17489 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582973 () Bool)

(declare-fun res!370937 () Bool)

(assert (=> b!582973 (=> (not res!370937) (not e!334122))))

(declare-fun arrayContainsKey!0 (array!36437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582973 (= res!370937 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582974 () Bool)

(assert (=> b!582974 (= e!334122 e!334121)))

(declare-fun res!370938 () Bool)

(assert (=> b!582974 (=> (not res!370938) (not e!334121))))

(declare-fun lt!265238 () SeekEntryResult!5936)

(assert (=> b!582974 (= res!370938 (or (= lt!265238 (MissingZero!5936 i!1108)) (= lt!265238 (MissingVacant!5936 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36437 (_ BitVec 32)) SeekEntryResult!5936)

(assert (=> b!582974 (= lt!265238 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582975 () Bool)

(declare-fun res!370939 () Bool)

(assert (=> b!582975 (=> (not res!370939) (not e!334122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582975 (= res!370939 (validKeyInArray!0 k!1786))))

(declare-fun b!582976 () Bool)

(declare-fun res!370936 () Bool)

(assert (=> b!582976 (=> (not res!370936) (not e!334122))))

(assert (=> b!582976 (= res!370936 (validKeyInArray!0 (select (arr!17489 a!2986) j!136)))))

(declare-fun b!582977 () Bool)

(declare-fun res!370942 () Bool)

(assert (=> b!582977 (=> (not res!370942) (not e!334121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36437 (_ BitVec 32)) Bool)

(assert (=> b!582977 (= res!370942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53582 res!370940) b!582969))

(assert (= (and b!582969 res!370943) b!582976))

(assert (= (and b!582976 res!370936) b!582975))

(assert (= (and b!582975 res!370939) b!582973))

(assert (= (and b!582973 res!370937) b!582974))

(assert (= (and b!582974 res!370938) b!582977))

(assert (= (and b!582977 res!370942) b!582970))

(assert (= (and b!582970 res!370935) b!582972))

(assert (= (and b!582972 res!370941) b!582971))

(declare-fun m!561497 () Bool)

(assert (=> b!582973 m!561497))

(declare-fun m!561499 () Bool)

(assert (=> b!582971 m!561499))

(assert (=> b!582971 m!561499))

(declare-fun m!561501 () Bool)

(assert (=> b!582971 m!561501))

(declare-fun m!561503 () Bool)

(assert (=> b!582975 m!561503))

(declare-fun m!561505 () Bool)

(assert (=> b!582972 m!561505))

(declare-fun m!561507 () Bool)

(assert (=> b!582972 m!561507))

(declare-fun m!561509 () Bool)

(assert (=> b!582972 m!561509))

(declare-fun m!561511 () Bool)

(assert (=> start!53582 m!561511))

(declare-fun m!561513 () Bool)

(assert (=> start!53582 m!561513))

(declare-fun m!561515 () Bool)

(assert (=> b!582970 m!561515))

(assert (=> b!582976 m!561499))

(assert (=> b!582976 m!561499))

(declare-fun m!561517 () Bool)

(assert (=> b!582976 m!561517))

(declare-fun m!561519 () Bool)

(assert (=> b!582974 m!561519))

(declare-fun m!561521 () Bool)

(assert (=> b!582977 m!561521))

(push 1)

(assert (not b!582973))

(assert (not b!582975))

(assert (not b!582970))

(assert (not b!582976))

