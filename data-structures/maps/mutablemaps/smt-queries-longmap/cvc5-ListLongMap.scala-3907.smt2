; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53470 () Bool)

(assert start!53470)

(declare-fun b!581439 () Bool)

(declare-fun res!369413 () Bool)

(declare-fun e!333619 () Bool)

(assert (=> b!581439 (=> (not res!369413) (not e!333619))))

(declare-datatypes ((array!36325 0))(
  ( (array!36326 (arr!17433 (Array (_ BitVec 32) (_ BitVec 64))) (size!17797 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36325)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581439 (= res!369413 (validKeyInArray!0 (select (arr!17433 a!2986) j!136)))))

(declare-fun b!581440 () Bool)

(declare-fun res!369408 () Bool)

(assert (=> b!581440 (=> (not res!369408) (not e!333619))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!581440 (= res!369408 (validKeyInArray!0 k!1786))))

(declare-fun b!581441 () Bool)

(declare-fun res!369405 () Bool)

(declare-fun e!333618 () Bool)

(assert (=> b!581441 (=> (not res!369405) (not e!333618))))

(declare-datatypes ((List!11527 0))(
  ( (Nil!11524) (Cons!11523 (h!12568 (_ BitVec 64)) (t!17763 List!11527)) )
))
(declare-fun arrayNoDuplicates!0 (array!36325 (_ BitVec 32) List!11527) Bool)

(assert (=> b!581441 (= res!369405 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11524))))

(declare-fun b!581442 () Bool)

(assert (=> b!581442 (= e!333619 e!333618)))

(declare-fun res!369409 () Bool)

(assert (=> b!581442 (=> (not res!369409) (not e!333618))))

(declare-datatypes ((SeekEntryResult!5880 0))(
  ( (MissingZero!5880 (index!25747 (_ BitVec 32))) (Found!5880 (index!25748 (_ BitVec 32))) (Intermediate!5880 (undefined!6692 Bool) (index!25749 (_ BitVec 32)) (x!54640 (_ BitVec 32))) (Undefined!5880) (MissingVacant!5880 (index!25750 (_ BitVec 32))) )
))
(declare-fun lt!264910 () SeekEntryResult!5880)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581442 (= res!369409 (or (= lt!264910 (MissingZero!5880 i!1108)) (= lt!264910 (MissingVacant!5880 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36325 (_ BitVec 32)) SeekEntryResult!5880)

(assert (=> b!581442 (= lt!264910 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581443 () Bool)

(assert (=> b!581443 (= e!333618 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264911 () SeekEntryResult!5880)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36325 (_ BitVec 32)) SeekEntryResult!5880)

(assert (=> b!581443 (= lt!264911 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17433 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581444 () Bool)

(declare-fun res!369410 () Bool)

(assert (=> b!581444 (=> (not res!369410) (not e!333619))))

(assert (=> b!581444 (= res!369410 (and (= (size!17797 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17797 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17797 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!369406 () Bool)

(assert (=> start!53470 (=> (not res!369406) (not e!333619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53470 (= res!369406 (validMask!0 mask!3053))))

(assert (=> start!53470 e!333619))

(assert (=> start!53470 true))

(declare-fun array_inv!13207 (array!36325) Bool)

(assert (=> start!53470 (array_inv!13207 a!2986)))

(declare-fun b!581445 () Bool)

(declare-fun res!369412 () Bool)

(assert (=> b!581445 (=> (not res!369412) (not e!333618))))

(assert (=> b!581445 (= res!369412 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17433 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17433 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581446 () Bool)

(declare-fun res!369411 () Bool)

(assert (=> b!581446 (=> (not res!369411) (not e!333619))))

(declare-fun arrayContainsKey!0 (array!36325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581446 (= res!369411 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581447 () Bool)

(declare-fun res!369407 () Bool)

(assert (=> b!581447 (=> (not res!369407) (not e!333618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36325 (_ BitVec 32)) Bool)

(assert (=> b!581447 (= res!369407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53470 res!369406) b!581444))

(assert (= (and b!581444 res!369410) b!581439))

(assert (= (and b!581439 res!369413) b!581440))

(assert (= (and b!581440 res!369408) b!581446))

(assert (= (and b!581446 res!369411) b!581442))

(assert (= (and b!581442 res!369409) b!581447))

(assert (= (and b!581447 res!369407) b!581441))

(assert (= (and b!581441 res!369405) b!581445))

(assert (= (and b!581445 res!369412) b!581443))

(declare-fun m!560023 () Bool)

(assert (=> b!581441 m!560023))

(declare-fun m!560025 () Bool)

(assert (=> b!581440 m!560025))

(declare-fun m!560027 () Bool)

(assert (=> b!581442 m!560027))

(declare-fun m!560029 () Bool)

(assert (=> b!581446 m!560029))

(declare-fun m!560031 () Bool)

(assert (=> b!581445 m!560031))

(declare-fun m!560033 () Bool)

(assert (=> b!581445 m!560033))

(declare-fun m!560035 () Bool)

(assert (=> b!581445 m!560035))

(declare-fun m!560037 () Bool)

(assert (=> start!53470 m!560037))

(declare-fun m!560039 () Bool)

(assert (=> start!53470 m!560039))

(declare-fun m!560041 () Bool)

(assert (=> b!581447 m!560041))

(declare-fun m!560043 () Bool)

(assert (=> b!581439 m!560043))

(assert (=> b!581439 m!560043))

(declare-fun m!560045 () Bool)

(assert (=> b!581439 m!560045))

(assert (=> b!581443 m!560043))

(assert (=> b!581443 m!560043))

(declare-fun m!560047 () Bool)

(assert (=> b!581443 m!560047))

(push 1)

