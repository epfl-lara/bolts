; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53224 () Bool)

(assert start!53224)

(declare-fun b!578159 () Bool)

(declare-fun res!366128 () Bool)

(declare-fun e!332511 () Bool)

(assert (=> b!578159 (=> (not res!366128) (not e!332511))))

(declare-datatypes ((array!36079 0))(
  ( (array!36080 (arr!17310 (Array (_ BitVec 32) (_ BitVec 64))) (size!17674 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36079)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578159 (= res!366128 (validKeyInArray!0 (select (arr!17310 a!2986) j!136)))))

(declare-fun b!578160 () Bool)

(declare-fun e!332512 () Bool)

(assert (=> b!578160 (= e!332512 false)))

(declare-fun lt!264199 () Bool)

(declare-datatypes ((List!11404 0))(
  ( (Nil!11401) (Cons!11400 (h!12445 (_ BitVec 64)) (t!17640 List!11404)) )
))
(declare-fun arrayNoDuplicates!0 (array!36079 (_ BitVec 32) List!11404) Bool)

(assert (=> b!578160 (= lt!264199 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11401))))

(declare-fun b!578161 () Bool)

(declare-fun res!366129 () Bool)

(assert (=> b!578161 (=> (not res!366129) (not e!332511))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!578161 (= res!366129 (validKeyInArray!0 k!1786))))

(declare-fun b!578162 () Bool)

(declare-fun res!366131 () Bool)

(assert (=> b!578162 (=> (not res!366131) (not e!332511))))

(declare-fun arrayContainsKey!0 (array!36079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578162 (= res!366131 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578163 () Bool)

(assert (=> b!578163 (= e!332511 e!332512)))

(declare-fun res!366125 () Bool)

(assert (=> b!578163 (=> (not res!366125) (not e!332512))))

(declare-datatypes ((SeekEntryResult!5757 0))(
  ( (MissingZero!5757 (index!25255 (_ BitVec 32))) (Found!5757 (index!25256 (_ BitVec 32))) (Intermediate!5757 (undefined!6569 Bool) (index!25257 (_ BitVec 32)) (x!54189 (_ BitVec 32))) (Undefined!5757) (MissingVacant!5757 (index!25258 (_ BitVec 32))) )
))
(declare-fun lt!264200 () SeekEntryResult!5757)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578163 (= res!366125 (or (= lt!264200 (MissingZero!5757 i!1108)) (= lt!264200 (MissingVacant!5757 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36079 (_ BitVec 32)) SeekEntryResult!5757)

(assert (=> b!578163 (= lt!264200 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!366127 () Bool)

(assert (=> start!53224 (=> (not res!366127) (not e!332511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53224 (= res!366127 (validMask!0 mask!3053))))

(assert (=> start!53224 e!332511))

(assert (=> start!53224 true))

(declare-fun array_inv!13084 (array!36079) Bool)

(assert (=> start!53224 (array_inv!13084 a!2986)))

(declare-fun b!578164 () Bool)

(declare-fun res!366130 () Bool)

(assert (=> b!578164 (=> (not res!366130) (not e!332511))))

(assert (=> b!578164 (= res!366130 (and (= (size!17674 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17674 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17674 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578165 () Bool)

(declare-fun res!366126 () Bool)

(assert (=> b!578165 (=> (not res!366126) (not e!332512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36079 (_ BitVec 32)) Bool)

(assert (=> b!578165 (= res!366126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53224 res!366127) b!578164))

(assert (= (and b!578164 res!366130) b!578159))

(assert (= (and b!578159 res!366128) b!578161))

(assert (= (and b!578161 res!366129) b!578162))

(assert (= (and b!578162 res!366131) b!578163))

(assert (= (and b!578163 res!366125) b!578165))

(assert (= (and b!578165 res!366126) b!578160))

(declare-fun m!556909 () Bool)

(assert (=> b!578159 m!556909))

(assert (=> b!578159 m!556909))

(declare-fun m!556911 () Bool)

(assert (=> b!578159 m!556911))

(declare-fun m!556913 () Bool)

(assert (=> start!53224 m!556913))

(declare-fun m!556915 () Bool)

(assert (=> start!53224 m!556915))

(declare-fun m!556917 () Bool)

(assert (=> b!578165 m!556917))

(declare-fun m!556919 () Bool)

(assert (=> b!578162 m!556919))

(declare-fun m!556921 () Bool)

(assert (=> b!578161 m!556921))

(declare-fun m!556923 () Bool)

(assert (=> b!578160 m!556923))

(declare-fun m!556925 () Bool)

(assert (=> b!578163 m!556925))

(push 1)

