; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53444 () Bool)

(assert start!53444)

(declare-fun b!581079 () Bool)

(declare-fun res!369049 () Bool)

(declare-fun e!333500 () Bool)

(assert (=> b!581079 (=> (not res!369049) (not e!333500))))

(declare-datatypes ((array!36299 0))(
  ( (array!36300 (arr!17420 (Array (_ BitVec 32) (_ BitVec 64))) (size!17784 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36299)

(declare-datatypes ((List!11514 0))(
  ( (Nil!11511) (Cons!11510 (h!12555 (_ BitVec 64)) (t!17750 List!11514)) )
))
(declare-fun arrayNoDuplicates!0 (array!36299 (_ BitVec 32) List!11514) Bool)

(assert (=> b!581079 (= res!369049 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11511))))

(declare-fun b!581080 () Bool)

(assert (=> b!581080 (= e!333500 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5867 0))(
  ( (MissingZero!5867 (index!25695 (_ BitVec 32))) (Found!5867 (index!25696 (_ BitVec 32))) (Intermediate!5867 (undefined!6679 Bool) (index!25697 (_ BitVec 32)) (x!54587 (_ BitVec 32))) (Undefined!5867) (MissingVacant!5867 (index!25698 (_ BitVec 32))) )
))
(declare-fun lt!264841 () SeekEntryResult!5867)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36299 (_ BitVec 32)) SeekEntryResult!5867)

(assert (=> b!581080 (= lt!264841 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17420 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581081 () Bool)

(declare-fun res!369051 () Bool)

(declare-fun e!333502 () Bool)

(assert (=> b!581081 (=> (not res!369051) (not e!333502))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581081 (= res!369051 (and (= (size!17784 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17784 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17784 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581082 () Bool)

(assert (=> b!581082 (= e!333502 e!333500)))

(declare-fun res!369050 () Bool)

(assert (=> b!581082 (=> (not res!369050) (not e!333500))))

(declare-fun lt!264842 () SeekEntryResult!5867)

(assert (=> b!581082 (= res!369050 (or (= lt!264842 (MissingZero!5867 i!1108)) (= lt!264842 (MissingVacant!5867 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36299 (_ BitVec 32)) SeekEntryResult!5867)

(assert (=> b!581082 (= lt!264842 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!369053 () Bool)

(assert (=> start!53444 (=> (not res!369053) (not e!333502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53444 (= res!369053 (validMask!0 mask!3053))))

(assert (=> start!53444 e!333502))

(assert (=> start!53444 true))

(declare-fun array_inv!13194 (array!36299) Bool)

(assert (=> start!53444 (array_inv!13194 a!2986)))

(declare-fun b!581083 () Bool)

(declare-fun res!369047 () Bool)

(assert (=> b!581083 (=> (not res!369047) (not e!333500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36299 (_ BitVec 32)) Bool)

(assert (=> b!581083 (= res!369047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581084 () Bool)

(declare-fun res!369052 () Bool)

(assert (=> b!581084 (=> (not res!369052) (not e!333502))))

(declare-fun arrayContainsKey!0 (array!36299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581084 (= res!369052 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581085 () Bool)

(declare-fun res!369048 () Bool)

(assert (=> b!581085 (=> (not res!369048) (not e!333502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581085 (= res!369048 (validKeyInArray!0 (select (arr!17420 a!2986) j!136)))))

(declare-fun b!581086 () Bool)

(declare-fun res!369046 () Bool)

(assert (=> b!581086 (=> (not res!369046) (not e!333502))))

(assert (=> b!581086 (= res!369046 (validKeyInArray!0 k!1786))))

(declare-fun b!581087 () Bool)

(declare-fun res!369045 () Bool)

(assert (=> b!581087 (=> (not res!369045) (not e!333500))))

(assert (=> b!581087 (= res!369045 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17420 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17420 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53444 res!369053) b!581081))

(assert (= (and b!581081 res!369051) b!581085))

(assert (= (and b!581085 res!369048) b!581086))

(assert (= (and b!581086 res!369046) b!581084))

(assert (= (and b!581084 res!369052) b!581082))

(assert (= (and b!581082 res!369050) b!581083))

(assert (= (and b!581083 res!369047) b!581079))

(assert (= (and b!581079 res!369049) b!581087))

(assert (= (and b!581087 res!369045) b!581080))

(declare-fun m!559679 () Bool)

(assert (=> b!581083 m!559679))

(declare-fun m!559681 () Bool)

(assert (=> b!581082 m!559681))

(declare-fun m!559683 () Bool)

(assert (=> b!581084 m!559683))

(declare-fun m!559685 () Bool)

(assert (=> b!581086 m!559685))

(declare-fun m!559687 () Bool)

(assert (=> b!581085 m!559687))

(assert (=> b!581085 m!559687))

(declare-fun m!559689 () Bool)

(assert (=> b!581085 m!559689))

(declare-fun m!559691 () Bool)

(assert (=> start!53444 m!559691))

(declare-fun m!559693 () Bool)

(assert (=> start!53444 m!559693))

(assert (=> b!581080 m!559687))

(assert (=> b!581080 m!559687))

(declare-fun m!559695 () Bool)

(assert (=> b!581080 m!559695))

(declare-fun m!559697 () Bool)

(assert (=> b!581079 m!559697))

(declare-fun m!559699 () Bool)

(assert (=> b!581087 m!559699))

(declare-fun m!559701 () Bool)

(assert (=> b!581087 m!559701))

(declare-fun m!559703 () Bool)

(assert (=> b!581087 m!559703))

(push 1)

(assert (not b!581080))

(assert (not b!581083))

(assert (not start!53444))

(assert (not b!581085))

(assert (not b!581086))

(assert (not b!581084))

