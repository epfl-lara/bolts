; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53560 () Bool)

(assert start!53560)

(declare-fun b!582672 () Bool)

(declare-fun res!370642 () Bool)

(declare-fun e!334022 () Bool)

(assert (=> b!582672 (=> (not res!370642) (not e!334022))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36415 0))(
  ( (array!36416 (arr!17478 (Array (_ BitVec 32) (_ BitVec 64))) (size!17842 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36415)

(assert (=> b!582672 (= res!370642 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17478 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17478 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!370641 () Bool)

(declare-fun e!334023 () Bool)

(assert (=> start!53560 (=> (not res!370641) (not e!334023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53560 (= res!370641 (validMask!0 mask!3053))))

(assert (=> start!53560 e!334023))

(assert (=> start!53560 true))

(declare-fun array_inv!13252 (array!36415) Bool)

(assert (=> start!53560 (array_inv!13252 a!2986)))

(declare-fun b!582673 () Bool)

(assert (=> b!582673 (= e!334022 false)))

(declare-datatypes ((SeekEntryResult!5925 0))(
  ( (MissingZero!5925 (index!25927 (_ BitVec 32))) (Found!5925 (index!25928 (_ BitVec 32))) (Intermediate!5925 (undefined!6737 Bool) (index!25929 (_ BitVec 32)) (x!54805 (_ BitVec 32))) (Undefined!5925) (MissingVacant!5925 (index!25930 (_ BitVec 32))) )
))
(declare-fun lt!265171 () SeekEntryResult!5925)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36415 (_ BitVec 32)) SeekEntryResult!5925)

(assert (=> b!582673 (= lt!265171 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17478 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582674 () Bool)

(declare-fun res!370643 () Bool)

(assert (=> b!582674 (=> (not res!370643) (not e!334022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36415 (_ BitVec 32)) Bool)

(assert (=> b!582674 (= res!370643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582675 () Bool)

(declare-fun res!370645 () Bool)

(assert (=> b!582675 (=> (not res!370645) (not e!334023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582675 (= res!370645 (validKeyInArray!0 (select (arr!17478 a!2986) j!136)))))

(declare-fun b!582676 () Bool)

(assert (=> b!582676 (= e!334023 e!334022)))

(declare-fun res!370646 () Bool)

(assert (=> b!582676 (=> (not res!370646) (not e!334022))))

(declare-fun lt!265172 () SeekEntryResult!5925)

(assert (=> b!582676 (= res!370646 (or (= lt!265172 (MissingZero!5925 i!1108)) (= lt!265172 (MissingVacant!5925 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36415 (_ BitVec 32)) SeekEntryResult!5925)

(assert (=> b!582676 (= lt!265172 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582677 () Bool)

(declare-fun res!370639 () Bool)

(assert (=> b!582677 (=> (not res!370639) (not e!334022))))

(declare-datatypes ((List!11572 0))(
  ( (Nil!11569) (Cons!11568 (h!12613 (_ BitVec 64)) (t!17808 List!11572)) )
))
(declare-fun arrayNoDuplicates!0 (array!36415 (_ BitVec 32) List!11572) Bool)

(assert (=> b!582677 (= res!370639 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11569))))

(declare-fun b!582678 () Bool)

(declare-fun res!370640 () Bool)

(assert (=> b!582678 (=> (not res!370640) (not e!334023))))

(assert (=> b!582678 (= res!370640 (validKeyInArray!0 k!1786))))

(declare-fun b!582679 () Bool)

(declare-fun res!370638 () Bool)

(assert (=> b!582679 (=> (not res!370638) (not e!334023))))

(declare-fun arrayContainsKey!0 (array!36415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582679 (= res!370638 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582680 () Bool)

(declare-fun res!370644 () Bool)

(assert (=> b!582680 (=> (not res!370644) (not e!334023))))

(assert (=> b!582680 (= res!370644 (and (= (size!17842 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17842 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17842 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53560 res!370641) b!582680))

(assert (= (and b!582680 res!370644) b!582675))

(assert (= (and b!582675 res!370645) b!582678))

(assert (= (and b!582678 res!370640) b!582679))

(assert (= (and b!582679 res!370638) b!582676))

(assert (= (and b!582676 res!370646) b!582674))

(assert (= (and b!582674 res!370643) b!582677))

(assert (= (and b!582677 res!370639) b!582672))

(assert (= (and b!582672 res!370642) b!582673))

(declare-fun m!561211 () Bool)

(assert (=> b!582672 m!561211))

(declare-fun m!561213 () Bool)

(assert (=> b!582672 m!561213))

(declare-fun m!561215 () Bool)

(assert (=> b!582672 m!561215))

(declare-fun m!561217 () Bool)

(assert (=> b!582678 m!561217))

(declare-fun m!561219 () Bool)

(assert (=> b!582673 m!561219))

(assert (=> b!582673 m!561219))

(declare-fun m!561221 () Bool)

(assert (=> b!582673 m!561221))

(declare-fun m!561223 () Bool)

(assert (=> b!582676 m!561223))

(declare-fun m!561225 () Bool)

(assert (=> b!582674 m!561225))

(declare-fun m!561227 () Bool)

(assert (=> start!53560 m!561227))

(declare-fun m!561229 () Bool)

(assert (=> start!53560 m!561229))

(declare-fun m!561231 () Bool)

(assert (=> b!582677 m!561231))

(declare-fun m!561233 () Bool)

(assert (=> b!582679 m!561233))

(assert (=> b!582675 m!561219))

(assert (=> b!582675 m!561219))

(declare-fun m!561235 () Bool)

(assert (=> b!582675 m!561235))

(push 1)

