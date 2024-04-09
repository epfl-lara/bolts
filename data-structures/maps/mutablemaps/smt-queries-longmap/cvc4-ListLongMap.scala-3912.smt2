; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53504 () Bool)

(assert start!53504)

(declare-fun b!581916 () Bool)

(declare-fun e!333770 () Bool)

(declare-fun e!333771 () Bool)

(assert (=> b!581916 (= e!333770 e!333771)))

(declare-fun res!369888 () Bool)

(assert (=> b!581916 (=> (not res!369888) (not e!333771))))

(declare-datatypes ((SeekEntryResult!5897 0))(
  ( (MissingZero!5897 (index!25815 (_ BitVec 32))) (Found!5897 (index!25816 (_ BitVec 32))) (Intermediate!5897 (undefined!6709 Bool) (index!25817 (_ BitVec 32)) (x!54697 (_ BitVec 32))) (Undefined!5897) (MissingVacant!5897 (index!25818 (_ BitVec 32))) )
))
(declare-fun lt!265003 () SeekEntryResult!5897)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581916 (= res!369888 (or (= lt!265003 (MissingZero!5897 i!1108)) (= lt!265003 (MissingVacant!5897 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36359 0))(
  ( (array!36360 (arr!17450 (Array (_ BitVec 32) (_ BitVec 64))) (size!17814 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36359)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36359 (_ BitVec 32)) SeekEntryResult!5897)

(assert (=> b!581916 (= lt!265003 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581917 () Bool)

(declare-fun res!369889 () Bool)

(assert (=> b!581917 (=> (not res!369889) (not e!333770))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581917 (= res!369889 (validKeyInArray!0 (select (arr!17450 a!2986) j!136)))))

(declare-fun b!581918 () Bool)

(declare-fun res!369885 () Bool)

(assert (=> b!581918 (=> (not res!369885) (not e!333771))))

(declare-datatypes ((List!11544 0))(
  ( (Nil!11541) (Cons!11540 (h!12585 (_ BitVec 64)) (t!17780 List!11544)) )
))
(declare-fun arrayNoDuplicates!0 (array!36359 (_ BitVec 32) List!11544) Bool)

(assert (=> b!581918 (= res!369885 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11541))))

(declare-fun b!581919 () Bool)

(declare-fun res!369883 () Bool)

(assert (=> b!581919 (=> (not res!369883) (not e!333771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36359 (_ BitVec 32)) Bool)

(assert (=> b!581919 (= res!369883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581920 () Bool)

(declare-fun res!369882 () Bool)

(assert (=> b!581920 (=> (not res!369882) (not e!333770))))

(assert (=> b!581920 (= res!369882 (and (= (size!17814 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17814 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17814 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581921 () Bool)

(declare-fun res!369887 () Bool)

(assert (=> b!581921 (=> (not res!369887) (not e!333770))))

(declare-fun arrayContainsKey!0 (array!36359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581921 (= res!369887 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581922 () Bool)

(assert (=> b!581922 (= e!333771 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265004 () SeekEntryResult!5897)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36359 (_ BitVec 32)) SeekEntryResult!5897)

(assert (=> b!581922 (= lt!265004 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17450 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581923 () Bool)

(declare-fun res!369886 () Bool)

(assert (=> b!581923 (=> (not res!369886) (not e!333771))))

(assert (=> b!581923 (= res!369886 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17450 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17450 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!369884 () Bool)

(assert (=> start!53504 (=> (not res!369884) (not e!333770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53504 (= res!369884 (validMask!0 mask!3053))))

(assert (=> start!53504 e!333770))

(assert (=> start!53504 true))

(declare-fun array_inv!13224 (array!36359) Bool)

(assert (=> start!53504 (array_inv!13224 a!2986)))

(declare-fun b!581924 () Bool)

(declare-fun res!369890 () Bool)

(assert (=> b!581924 (=> (not res!369890) (not e!333770))))

(assert (=> b!581924 (= res!369890 (validKeyInArray!0 k!1786))))

(assert (= (and start!53504 res!369884) b!581920))

(assert (= (and b!581920 res!369882) b!581917))

(assert (= (and b!581917 res!369889) b!581924))

(assert (= (and b!581924 res!369890) b!581921))

(assert (= (and b!581921 res!369887) b!581916))

(assert (= (and b!581916 res!369888) b!581919))

(assert (= (and b!581919 res!369883) b!581918))

(assert (= (and b!581918 res!369885) b!581923))

(assert (= (and b!581923 res!369886) b!581922))

(declare-fun m!560483 () Bool)

(assert (=> b!581919 m!560483))

(declare-fun m!560485 () Bool)

(assert (=> b!581924 m!560485))

(declare-fun m!560487 () Bool)

(assert (=> b!581917 m!560487))

(assert (=> b!581917 m!560487))

(declare-fun m!560489 () Bool)

(assert (=> b!581917 m!560489))

(declare-fun m!560491 () Bool)

(assert (=> start!53504 m!560491))

(declare-fun m!560493 () Bool)

(assert (=> start!53504 m!560493))

(declare-fun m!560495 () Bool)

(assert (=> b!581921 m!560495))

(declare-fun m!560497 () Bool)

(assert (=> b!581916 m!560497))

(declare-fun m!560499 () Bool)

(assert (=> b!581918 m!560499))

(declare-fun m!560501 () Bool)

(assert (=> b!581923 m!560501))

(declare-fun m!560503 () Bool)

(assert (=> b!581923 m!560503))

(declare-fun m!560505 () Bool)

(assert (=> b!581923 m!560505))

(assert (=> b!581922 m!560487))

(assert (=> b!581922 m!560487))

(declare-fun m!560507 () Bool)

(assert (=> b!581922 m!560507))

(push 1)

(assert (not b!581918))

(assert (not b!581916))

(assert (not start!53504))

(assert (not b!581917))

(assert (not b!581919))

