; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53540 () Bool)

(assert start!53540)

(declare-fun b!582402 () Bool)

(declare-fun res!370369 () Bool)

(declare-fun e!333934 () Bool)

(assert (=> b!582402 (=> (not res!370369) (not e!333934))))

(declare-datatypes ((array!36395 0))(
  ( (array!36396 (arr!17468 (Array (_ BitVec 32) (_ BitVec 64))) (size!17832 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36395)

(declare-datatypes ((List!11562 0))(
  ( (Nil!11559) (Cons!11558 (h!12603 (_ BitVec 64)) (t!17798 List!11562)) )
))
(declare-fun arrayNoDuplicates!0 (array!36395 (_ BitVec 32) List!11562) Bool)

(assert (=> b!582402 (= res!370369 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11559))))

(declare-fun b!582403 () Bool)

(declare-fun res!370376 () Bool)

(declare-fun e!333933 () Bool)

(assert (=> b!582403 (=> (not res!370376) (not e!333933))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582403 (= res!370376 (validKeyInArray!0 (select (arr!17468 a!2986) j!136)))))

(declare-fun b!582404 () Bool)

(declare-fun res!370375 () Bool)

(assert (=> b!582404 (=> (not res!370375) (not e!333933))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582404 (= res!370375 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!370368 () Bool)

(assert (=> start!53540 (=> (not res!370368) (not e!333933))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53540 (= res!370368 (validMask!0 mask!3053))))

(assert (=> start!53540 e!333933))

(assert (=> start!53540 true))

(declare-fun array_inv!13242 (array!36395) Bool)

(assert (=> start!53540 (array_inv!13242 a!2986)))

(declare-fun b!582405 () Bool)

(declare-fun res!370373 () Bool)

(assert (=> b!582405 (=> (not res!370373) (not e!333933))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582405 (= res!370373 (and (= (size!17832 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17832 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17832 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582406 () Bool)

(declare-fun res!370374 () Bool)

(assert (=> b!582406 (=> (not res!370374) (not e!333934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36395 (_ BitVec 32)) Bool)

(assert (=> b!582406 (= res!370374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582407 () Bool)

(declare-fun res!370371 () Bool)

(assert (=> b!582407 (=> (not res!370371) (not e!333934))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582407 (= res!370371 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17468 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17468 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582408 () Bool)

(assert (=> b!582408 (= e!333933 e!333934)))

(declare-fun res!370370 () Bool)

(assert (=> b!582408 (=> (not res!370370) (not e!333934))))

(declare-datatypes ((SeekEntryResult!5915 0))(
  ( (MissingZero!5915 (index!25887 (_ BitVec 32))) (Found!5915 (index!25888 (_ BitVec 32))) (Intermediate!5915 (undefined!6727 Bool) (index!25889 (_ BitVec 32)) (x!54763 (_ BitVec 32))) (Undefined!5915) (MissingVacant!5915 (index!25890 (_ BitVec 32))) )
))
(declare-fun lt!265111 () SeekEntryResult!5915)

(assert (=> b!582408 (= res!370370 (or (= lt!265111 (MissingZero!5915 i!1108)) (= lt!265111 (MissingVacant!5915 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36395 (_ BitVec 32)) SeekEntryResult!5915)

(assert (=> b!582408 (= lt!265111 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582409 () Bool)

(assert (=> b!582409 (= e!333934 false)))

(declare-fun lt!265112 () SeekEntryResult!5915)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36395 (_ BitVec 32)) SeekEntryResult!5915)

(assert (=> b!582409 (= lt!265112 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17468 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582410 () Bool)

(declare-fun res!370372 () Bool)

(assert (=> b!582410 (=> (not res!370372) (not e!333933))))

(assert (=> b!582410 (= res!370372 (validKeyInArray!0 k!1786))))

(assert (= (and start!53540 res!370368) b!582405))

(assert (= (and b!582405 res!370373) b!582403))

(assert (= (and b!582403 res!370376) b!582410))

(assert (= (and b!582410 res!370372) b!582404))

(assert (= (and b!582404 res!370375) b!582408))

(assert (= (and b!582408 res!370370) b!582406))

(assert (= (and b!582406 res!370374) b!582402))

(assert (= (and b!582402 res!370369) b!582407))

(assert (= (and b!582407 res!370371) b!582409))

(declare-fun m!560951 () Bool)

(assert (=> b!582408 m!560951))

(declare-fun m!560953 () Bool)

(assert (=> b!582410 m!560953))

(declare-fun m!560955 () Bool)

(assert (=> b!582402 m!560955))

(declare-fun m!560957 () Bool)

(assert (=> b!582404 m!560957))

(declare-fun m!560959 () Bool)

(assert (=> b!582409 m!560959))

(assert (=> b!582409 m!560959))

(declare-fun m!560961 () Bool)

(assert (=> b!582409 m!560961))

(declare-fun m!560963 () Bool)

(assert (=> b!582406 m!560963))

(declare-fun m!560965 () Bool)

(assert (=> b!582407 m!560965))

(declare-fun m!560967 () Bool)

(assert (=> b!582407 m!560967))

(declare-fun m!560969 () Bool)

(assert (=> b!582407 m!560969))

(declare-fun m!560971 () Bool)

(assert (=> start!53540 m!560971))

(declare-fun m!560973 () Bool)

(assert (=> start!53540 m!560973))

(assert (=> b!582403 m!560959))

(assert (=> b!582403 m!560959))

(declare-fun m!560975 () Bool)

(assert (=> b!582403 m!560975))

(push 1)

(assert (not b!582410))

(assert (not b!582408))

(assert (not b!582409))

(assert (not start!53540))

(assert (not b!582402))

