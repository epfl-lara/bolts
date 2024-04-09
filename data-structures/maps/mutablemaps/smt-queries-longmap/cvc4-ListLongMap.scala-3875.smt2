; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53282 () Bool)

(assert start!53282)

(declare-fun b!578883 () Bool)

(declare-fun res!366850 () Bool)

(declare-fun e!332773 () Bool)

(assert (=> b!578883 (=> (not res!366850) (not e!332773))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36137 0))(
  ( (array!36138 (arr!17339 (Array (_ BitVec 32) (_ BitVec 64))) (size!17703 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36137)

(assert (=> b!578883 (= res!366850 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17339 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17339 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!366857 () Bool)

(declare-fun e!332771 () Bool)

(assert (=> start!53282 (=> (not res!366857) (not e!332771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53282 (= res!366857 (validMask!0 mask!3053))))

(assert (=> start!53282 e!332771))

(assert (=> start!53282 true))

(declare-fun array_inv!13113 (array!36137) Bool)

(assert (=> start!53282 (array_inv!13113 a!2986)))

(declare-fun b!578884 () Bool)

(declare-fun res!366852 () Bool)

(assert (=> b!578884 (=> (not res!366852) (not e!332773))))

(declare-datatypes ((List!11433 0))(
  ( (Nil!11430) (Cons!11429 (h!12474 (_ BitVec 64)) (t!17669 List!11433)) )
))
(declare-fun arrayNoDuplicates!0 (array!36137 (_ BitVec 32) List!11433) Bool)

(assert (=> b!578884 (= res!366852 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11430))))

(declare-fun b!578885 () Bool)

(declare-fun res!366849 () Bool)

(assert (=> b!578885 (=> (not res!366849) (not e!332773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36137 (_ BitVec 32)) Bool)

(assert (=> b!578885 (= res!366849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578886 () Bool)

(declare-fun res!366853 () Bool)

(assert (=> b!578886 (=> (not res!366853) (not e!332771))))

(declare-fun arrayContainsKey!0 (array!36137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578886 (= res!366853 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578887 () Bool)

(declare-fun res!366851 () Bool)

(assert (=> b!578887 (=> (not res!366851) (not e!332771))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578887 (= res!366851 (and (= (size!17703 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17703 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17703 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578888 () Bool)

(declare-fun res!366854 () Bool)

(assert (=> b!578888 (=> (not res!366854) (not e!332771))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578888 (= res!366854 (validKeyInArray!0 (select (arr!17339 a!2986) j!136)))))

(declare-fun b!578889 () Bool)

(assert (=> b!578889 (= e!332773 false)))

(declare-datatypes ((SeekEntryResult!5786 0))(
  ( (MissingZero!5786 (index!25371 (_ BitVec 32))) (Found!5786 (index!25372 (_ BitVec 32))) (Intermediate!5786 (undefined!6598 Bool) (index!25373 (_ BitVec 32)) (x!54290 (_ BitVec 32))) (Undefined!5786) (MissingVacant!5786 (index!25374 (_ BitVec 32))) )
))
(declare-fun lt!264364 () SeekEntryResult!5786)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36137 (_ BitVec 32)) SeekEntryResult!5786)

(assert (=> b!578889 (= lt!264364 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17339 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578890 () Bool)

(declare-fun res!366855 () Bool)

(assert (=> b!578890 (=> (not res!366855) (not e!332771))))

(assert (=> b!578890 (= res!366855 (validKeyInArray!0 k!1786))))

(declare-fun b!578891 () Bool)

(assert (=> b!578891 (= e!332771 e!332773)))

(declare-fun res!366856 () Bool)

(assert (=> b!578891 (=> (not res!366856) (not e!332773))))

(declare-fun lt!264365 () SeekEntryResult!5786)

(assert (=> b!578891 (= res!366856 (or (= lt!264365 (MissingZero!5786 i!1108)) (= lt!264365 (MissingVacant!5786 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36137 (_ BitVec 32)) SeekEntryResult!5786)

(assert (=> b!578891 (= lt!264365 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53282 res!366857) b!578887))

(assert (= (and b!578887 res!366851) b!578888))

(assert (= (and b!578888 res!366854) b!578890))

(assert (= (and b!578890 res!366855) b!578886))

(assert (= (and b!578886 res!366853) b!578891))

(assert (= (and b!578891 res!366856) b!578885))

(assert (= (and b!578885 res!366849) b!578884))

(assert (= (and b!578884 res!366852) b!578883))

(assert (= (and b!578883 res!366850) b!578889))

(declare-fun m!557567 () Bool)

(assert (=> b!578886 m!557567))

(declare-fun m!557569 () Bool)

(assert (=> b!578888 m!557569))

(assert (=> b!578888 m!557569))

(declare-fun m!557571 () Bool)

(assert (=> b!578888 m!557571))

(declare-fun m!557573 () Bool)

(assert (=> b!578890 m!557573))

(declare-fun m!557575 () Bool)

(assert (=> b!578885 m!557575))

(declare-fun m!557577 () Bool)

(assert (=> start!53282 m!557577))

(declare-fun m!557579 () Bool)

(assert (=> start!53282 m!557579))

(assert (=> b!578889 m!557569))

(assert (=> b!578889 m!557569))

(declare-fun m!557581 () Bool)

(assert (=> b!578889 m!557581))

(declare-fun m!557583 () Bool)

(assert (=> b!578891 m!557583))

(declare-fun m!557585 () Bool)

(assert (=> b!578884 m!557585))

(declare-fun m!557587 () Bool)

(assert (=> b!578883 m!557587))

(declare-fun m!557589 () Bool)

(assert (=> b!578883 m!557589))

(declare-fun m!557591 () Bool)

(assert (=> b!578883 m!557591))

(push 1)

(assert (not b!578890))

(assert (not b!578884))

(assert (not b!578885))

(assert (not start!53282))

(assert (not b!578886))

