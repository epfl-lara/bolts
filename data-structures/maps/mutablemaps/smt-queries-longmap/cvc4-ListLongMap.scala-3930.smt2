; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53612 () Bool)

(assert start!53612)

(declare-fun res!371374 () Bool)

(declare-fun e!334264 () Bool)

(assert (=> start!53612 (=> (not res!371374) (not e!334264))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53612 (= res!371374 (validMask!0 mask!3053))))

(assert (=> start!53612 e!334264))

(assert (=> start!53612 true))

(declare-datatypes ((array!36467 0))(
  ( (array!36468 (arr!17504 (Array (_ BitVec 32) (_ BitVec 64))) (size!17868 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36467)

(declare-fun array_inv!13278 (array!36467) Bool)

(assert (=> start!53612 (array_inv!13278 a!2986)))

(declare-fun b!583407 () Bool)

(declare-fun res!371373 () Bool)

(declare-fun e!334267 () Bool)

(assert (=> b!583407 (=> (not res!371373) (not e!334267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36467 (_ BitVec 32)) Bool)

(assert (=> b!583407 (= res!371373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583408 () Bool)

(declare-fun res!371376 () Bool)

(assert (=> b!583408 (=> (not res!371376) (not e!334267))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!583408 (= res!371376 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17504 a!2986) index!984) (select (arr!17504 a!2986) j!136))) (not (= (select (arr!17504 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583409 () Bool)

(declare-fun e!334266 () Bool)

(assert (=> b!583409 (= e!334267 e!334266)))

(declare-fun res!371378 () Bool)

(assert (=> b!583409 (=> (not res!371378) (not e!334266))))

(declare-fun lt!265328 () (_ BitVec 32))

(assert (=> b!583409 (= res!371378 (and (bvsge lt!265328 #b00000000000000000000000000000000) (bvslt lt!265328 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583409 (= lt!265328 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583410 () Bool)

(declare-fun res!371379 () Bool)

(assert (=> b!583410 (=> (not res!371379) (not e!334264))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583410 (= res!371379 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583411 () Bool)

(declare-fun res!371382 () Bool)

(assert (=> b!583411 (=> (not res!371382) (not e!334264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583411 (= res!371382 (validKeyInArray!0 k!1786))))

(declare-fun b!583412 () Bool)

(declare-fun res!371381 () Bool)

(assert (=> b!583412 (=> (not res!371381) (not e!334267))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5951 0))(
  ( (MissingZero!5951 (index!26031 (_ BitVec 32))) (Found!5951 (index!26032 (_ BitVec 32))) (Intermediate!5951 (undefined!6763 Bool) (index!26033 (_ BitVec 32)) (x!54895 (_ BitVec 32))) (Undefined!5951) (MissingVacant!5951 (index!26034 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36467 (_ BitVec 32)) SeekEntryResult!5951)

(assert (=> b!583412 (= res!371381 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17504 a!2986) j!136) a!2986 mask!3053) (Found!5951 j!136)))))

(declare-fun b!583413 () Bool)

(declare-fun res!371377 () Bool)

(assert (=> b!583413 (=> (not res!371377) (not e!334264))))

(assert (=> b!583413 (= res!371377 (validKeyInArray!0 (select (arr!17504 a!2986) j!136)))))

(declare-fun b!583414 () Bool)

(declare-fun res!371383 () Bool)

(assert (=> b!583414 (=> (not res!371383) (not e!334264))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583414 (= res!371383 (and (= (size!17868 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17868 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17868 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583415 () Bool)

(declare-fun res!371380 () Bool)

(assert (=> b!583415 (=> (not res!371380) (not e!334267))))

(declare-datatypes ((List!11598 0))(
  ( (Nil!11595) (Cons!11594 (h!12639 (_ BitVec 64)) (t!17834 List!11598)) )
))
(declare-fun arrayNoDuplicates!0 (array!36467 (_ BitVec 32) List!11598) Bool)

(assert (=> b!583415 (= res!371380 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11595))))

(declare-fun b!583416 () Bool)

(assert (=> b!583416 (= e!334266 false)))

(declare-fun lt!265327 () SeekEntryResult!5951)

(assert (=> b!583416 (= lt!265327 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265328 vacantSpotIndex!68 (select (arr!17504 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583417 () Bool)

(assert (=> b!583417 (= e!334264 e!334267)))

(declare-fun res!371375 () Bool)

(assert (=> b!583417 (=> (not res!371375) (not e!334267))))

(declare-fun lt!265326 () SeekEntryResult!5951)

(assert (=> b!583417 (= res!371375 (or (= lt!265326 (MissingZero!5951 i!1108)) (= lt!265326 (MissingVacant!5951 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36467 (_ BitVec 32)) SeekEntryResult!5951)

(assert (=> b!583417 (= lt!265326 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583418 () Bool)

(declare-fun res!371384 () Bool)

(assert (=> b!583418 (=> (not res!371384) (not e!334267))))

(assert (=> b!583418 (= res!371384 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17504 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17504 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53612 res!371374) b!583414))

(assert (= (and b!583414 res!371383) b!583413))

(assert (= (and b!583413 res!371377) b!583411))

(assert (= (and b!583411 res!371382) b!583410))

(assert (= (and b!583410 res!371379) b!583417))

(assert (= (and b!583417 res!371375) b!583407))

(assert (= (and b!583407 res!371373) b!583415))

(assert (= (and b!583415 res!371380) b!583418))

(assert (= (and b!583418 res!371384) b!583412))

(assert (= (and b!583412 res!371381) b!583408))

(assert (= (and b!583408 res!371376) b!583409))

(assert (= (and b!583409 res!371378) b!583416))

(declare-fun m!561905 () Bool)

(assert (=> start!53612 m!561905))

(declare-fun m!561907 () Bool)

(assert (=> start!53612 m!561907))

(declare-fun m!561909 () Bool)

(assert (=> b!583413 m!561909))

(assert (=> b!583413 m!561909))

(declare-fun m!561911 () Bool)

(assert (=> b!583413 m!561911))

(assert (=> b!583412 m!561909))

(assert (=> b!583412 m!561909))

(declare-fun m!561913 () Bool)

(assert (=> b!583412 m!561913))

(declare-fun m!561915 () Bool)

(assert (=> b!583417 m!561915))

(declare-fun m!561917 () Bool)

(assert (=> b!583411 m!561917))

(declare-fun m!561919 () Bool)

(assert (=> b!583415 m!561919))

(declare-fun m!561921 () Bool)

(assert (=> b!583409 m!561921))

(declare-fun m!561923 () Bool)

(assert (=> b!583408 m!561923))

(assert (=> b!583408 m!561909))

(declare-fun m!561925 () Bool)

(assert (=> b!583410 m!561925))

(assert (=> b!583416 m!561909))

(assert (=> b!583416 m!561909))

(declare-fun m!561927 () Bool)

(assert (=> b!583416 m!561927))

(declare-fun m!561929 () Bool)

(assert (=> b!583418 m!561929))

(declare-fun m!561931 () Bool)

(assert (=> b!583418 m!561931))

(declare-fun m!561933 () Bool)

(assert (=> b!583418 m!561933))

(declare-fun m!561935 () Bool)

(assert (=> b!583407 m!561935))

(push 1)

(assert (not start!53612))

(assert (not b!583409))

(assert (not b!583407))

