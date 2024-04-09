; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53486 () Bool)

(assert start!53486)

(declare-fun b!581671 () Bool)

(declare-fun res!369647 () Bool)

(declare-fun e!333689 () Bool)

(assert (=> b!581671 (=> (not res!369647) (not e!333689))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36341 0))(
  ( (array!36342 (arr!17441 (Array (_ BitVec 32) (_ BitVec 64))) (size!17805 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36341)

(declare-datatypes ((SeekEntryResult!5888 0))(
  ( (MissingZero!5888 (index!25779 (_ BitVec 32))) (Found!5888 (index!25780 (_ BitVec 32))) (Intermediate!5888 (undefined!6700 Bool) (index!25781 (_ BitVec 32)) (x!54664 (_ BitVec 32))) (Undefined!5888) (MissingVacant!5888 (index!25782 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36341 (_ BitVec 32)) SeekEntryResult!5888)

(assert (=> b!581671 (= res!369647 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17441 a!2986) j!136) a!2986 mask!3053) (Found!5888 j!136)))))

(declare-fun b!581672 () Bool)

(declare-fun res!369639 () Bool)

(assert (=> b!581672 (=> (not res!369639) (not e!333689))))

(declare-datatypes ((List!11535 0))(
  ( (Nil!11532) (Cons!11531 (h!12576 (_ BitVec 64)) (t!17771 List!11535)) )
))
(declare-fun arrayNoDuplicates!0 (array!36341 (_ BitVec 32) List!11535) Bool)

(assert (=> b!581672 (= res!369639 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11532))))

(declare-fun b!581673 () Bool)

(declare-fun res!369643 () Bool)

(declare-fun e!333690 () Bool)

(assert (=> b!581673 (=> (not res!369643) (not e!333690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581673 (= res!369643 (validKeyInArray!0 (select (arr!17441 a!2986) j!136)))))

(declare-fun b!581674 () Bool)

(declare-fun res!369637 () Bool)

(assert (=> b!581674 (=> (not res!369637) (not e!333689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36341 (_ BitVec 32)) Bool)

(assert (=> b!581674 (= res!369637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!369640 () Bool)

(assert (=> start!53486 (=> (not res!369640) (not e!333690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53486 (= res!369640 (validMask!0 mask!3053))))

(assert (=> start!53486 e!333690))

(assert (=> start!53486 true))

(declare-fun array_inv!13215 (array!36341) Bool)

(assert (=> start!53486 (array_inv!13215 a!2986)))

(declare-fun b!581675 () Bool)

(assert (=> b!581675 (= e!333690 e!333689)))

(declare-fun res!369646 () Bool)

(assert (=> b!581675 (=> (not res!369646) (not e!333689))))

(declare-fun lt!264950 () SeekEntryResult!5888)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581675 (= res!369646 (or (= lt!264950 (MissingZero!5888 i!1108)) (= lt!264950 (MissingVacant!5888 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36341 (_ BitVec 32)) SeekEntryResult!5888)

(assert (=> b!581675 (= lt!264950 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581676 () Bool)

(declare-fun res!369642 () Bool)

(assert (=> b!581676 (=> (not res!369642) (not e!333690))))

(declare-fun arrayContainsKey!0 (array!36341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581676 (= res!369642 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581677 () Bool)

(assert (=> b!581677 (= e!333689 (not (validKeyInArray!0 (select (store (arr!17441 a!2986) i!1108 k!1786) j!136))))))

(declare-fun b!581678 () Bool)

(declare-fun res!369638 () Bool)

(assert (=> b!581678 (=> (not res!369638) (not e!333690))))

(assert (=> b!581678 (= res!369638 (validKeyInArray!0 k!1786))))

(declare-fun b!581679 () Bool)

(declare-fun res!369641 () Bool)

(assert (=> b!581679 (=> (not res!369641) (not e!333689))))

(assert (=> b!581679 (= res!369641 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17441 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17441 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581680 () Bool)

(declare-fun res!369645 () Bool)

(assert (=> b!581680 (=> (not res!369645) (not e!333689))))

(assert (=> b!581680 (= res!369645 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17441 a!2986) index!984) (select (arr!17441 a!2986) j!136)) (= index!984 j!136) (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!581681 () Bool)

(declare-fun res!369644 () Bool)

(assert (=> b!581681 (=> (not res!369644) (not e!333690))))

(assert (=> b!581681 (= res!369644 (and (= (size!17805 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17805 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17805 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53486 res!369640) b!581681))

(assert (= (and b!581681 res!369644) b!581673))

(assert (= (and b!581673 res!369643) b!581678))

(assert (= (and b!581678 res!369638) b!581676))

(assert (= (and b!581676 res!369642) b!581675))

(assert (= (and b!581675 res!369646) b!581674))

(assert (= (and b!581674 res!369637) b!581672))

(assert (= (and b!581672 res!369639) b!581679))

(assert (= (and b!581679 res!369641) b!581671))

(assert (= (and b!581671 res!369647) b!581680))

(assert (= (and b!581680 res!369645) b!581677))

(declare-fun m!560243 () Bool)

(assert (=> b!581678 m!560243))

(declare-fun m!560245 () Bool)

(assert (=> b!581676 m!560245))

(declare-fun m!560247 () Bool)

(assert (=> b!581679 m!560247))

(declare-fun m!560249 () Bool)

(assert (=> b!581679 m!560249))

(declare-fun m!560251 () Bool)

(assert (=> b!581679 m!560251))

(declare-fun m!560253 () Bool)

(assert (=> start!53486 m!560253))

(declare-fun m!560255 () Bool)

(assert (=> start!53486 m!560255))

(declare-fun m!560257 () Bool)

(assert (=> b!581672 m!560257))

(declare-fun m!560259 () Bool)

(assert (=> b!581675 m!560259))

(declare-fun m!560261 () Bool)

(assert (=> b!581680 m!560261))

(declare-fun m!560263 () Bool)

(assert (=> b!581680 m!560263))

(declare-fun m!560265 () Bool)

(assert (=> b!581674 m!560265))

(assert (=> b!581673 m!560263))

(assert (=> b!581673 m!560263))

(declare-fun m!560267 () Bool)

(assert (=> b!581673 m!560267))

(assert (=> b!581677 m!560249))

(declare-fun m!560269 () Bool)

(assert (=> b!581677 m!560269))

(assert (=> b!581677 m!560269))

(declare-fun m!560271 () Bool)

(assert (=> b!581677 m!560271))

(assert (=> b!581671 m!560263))

(assert (=> b!581671 m!560263))

(declare-fun m!560273 () Bool)

(assert (=> b!581671 m!560273))

(push 1)

(assert (not b!581672))

(assert (not b!581671))

(assert (not b!581677))

(assert (not b!581676))

(assert (not b!581674))

(assert (not b!581678))

(assert (not start!53486))

(assert (not b!581673))

(assert (not b!581675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

