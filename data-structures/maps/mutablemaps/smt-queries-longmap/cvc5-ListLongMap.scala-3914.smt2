; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53512 () Bool)

(assert start!53512)

(declare-fun b!582024 () Bool)

(declare-fun res!369991 () Bool)

(declare-fun e!333807 () Bool)

(assert (=> b!582024 (=> (not res!369991) (not e!333807))))

(declare-datatypes ((array!36367 0))(
  ( (array!36368 (arr!17454 (Array (_ BitVec 32) (_ BitVec 64))) (size!17818 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36367)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36367 (_ BitVec 32)) Bool)

(assert (=> b!582024 (= res!369991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!369998 () Bool)

(declare-fun e!333808 () Bool)

(assert (=> start!53512 (=> (not res!369998) (not e!333808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53512 (= res!369998 (validMask!0 mask!3053))))

(assert (=> start!53512 e!333808))

(assert (=> start!53512 true))

(declare-fun array_inv!13228 (array!36367) Bool)

(assert (=> start!53512 (array_inv!13228 a!2986)))

(declare-fun b!582025 () Bool)

(declare-fun res!369992 () Bool)

(assert (=> b!582025 (=> (not res!369992) (not e!333808))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582025 (= res!369992 (validKeyInArray!0 k!1786))))

(declare-fun b!582026 () Bool)

(declare-fun res!369995 () Bool)

(assert (=> b!582026 (=> (not res!369995) (not e!333808))))

(declare-fun arrayContainsKey!0 (array!36367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582026 (= res!369995 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582027 () Bool)

(declare-fun res!369997 () Bool)

(assert (=> b!582027 (=> (not res!369997) (not e!333807))))

(declare-datatypes ((List!11548 0))(
  ( (Nil!11545) (Cons!11544 (h!12589 (_ BitVec 64)) (t!17784 List!11548)) )
))
(declare-fun arrayNoDuplicates!0 (array!36367 (_ BitVec 32) List!11548) Bool)

(assert (=> b!582027 (= res!369997 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11545))))

(declare-fun b!582028 () Bool)

(declare-fun res!369993 () Bool)

(assert (=> b!582028 (=> (not res!369993) (not e!333808))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582028 (= res!369993 (validKeyInArray!0 (select (arr!17454 a!2986) j!136)))))

(declare-fun b!582029 () Bool)

(declare-fun res!369996 () Bool)

(assert (=> b!582029 (=> (not res!369996) (not e!333807))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582029 (= res!369996 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17454 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17454 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582030 () Bool)

(declare-fun res!369990 () Bool)

(assert (=> b!582030 (=> (not res!369990) (not e!333808))))

(assert (=> b!582030 (= res!369990 (and (= (size!17818 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17818 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17818 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582031 () Bool)

(assert (=> b!582031 (= e!333807 false)))

(declare-datatypes ((SeekEntryResult!5901 0))(
  ( (MissingZero!5901 (index!25831 (_ BitVec 32))) (Found!5901 (index!25832 (_ BitVec 32))) (Intermediate!5901 (undefined!6713 Bool) (index!25833 (_ BitVec 32)) (x!54717 (_ BitVec 32))) (Undefined!5901) (MissingVacant!5901 (index!25834 (_ BitVec 32))) )
))
(declare-fun lt!265028 () SeekEntryResult!5901)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36367 (_ BitVec 32)) SeekEntryResult!5901)

(assert (=> b!582031 (= lt!265028 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17454 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582032 () Bool)

(assert (=> b!582032 (= e!333808 e!333807)))

(declare-fun res!369994 () Bool)

(assert (=> b!582032 (=> (not res!369994) (not e!333807))))

(declare-fun lt!265027 () SeekEntryResult!5901)

(assert (=> b!582032 (= res!369994 (or (= lt!265027 (MissingZero!5901 i!1108)) (= lt!265027 (MissingVacant!5901 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36367 (_ BitVec 32)) SeekEntryResult!5901)

(assert (=> b!582032 (= lt!265027 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53512 res!369998) b!582030))

(assert (= (and b!582030 res!369990) b!582028))

(assert (= (and b!582028 res!369993) b!582025))

(assert (= (and b!582025 res!369992) b!582026))

(assert (= (and b!582026 res!369995) b!582032))

(assert (= (and b!582032 res!369994) b!582024))

(assert (= (and b!582024 res!369991) b!582027))

(assert (= (and b!582027 res!369997) b!582029))

(assert (= (and b!582029 res!369996) b!582031))

(declare-fun m!560587 () Bool)

(assert (=> b!582025 m!560587))

(declare-fun m!560589 () Bool)

(assert (=> b!582024 m!560589))

(declare-fun m!560591 () Bool)

(assert (=> b!582031 m!560591))

(assert (=> b!582031 m!560591))

(declare-fun m!560593 () Bool)

(assert (=> b!582031 m!560593))

(declare-fun m!560595 () Bool)

(assert (=> start!53512 m!560595))

(declare-fun m!560597 () Bool)

(assert (=> start!53512 m!560597))

(declare-fun m!560599 () Bool)

(assert (=> b!582026 m!560599))

(declare-fun m!560601 () Bool)

(assert (=> b!582027 m!560601))

(declare-fun m!560603 () Bool)

(assert (=> b!582032 m!560603))

(assert (=> b!582028 m!560591))

(assert (=> b!582028 m!560591))

(declare-fun m!560605 () Bool)

(assert (=> b!582028 m!560605))

(declare-fun m!560607 () Bool)

(assert (=> b!582029 m!560607))

(declare-fun m!560609 () Bool)

(assert (=> b!582029 m!560609))

(declare-fun m!560611 () Bool)

(assert (=> b!582029 m!560611))

(push 1)

