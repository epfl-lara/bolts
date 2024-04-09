; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53242 () Bool)

(assert start!53242)

(declare-fun b!578348 () Bool)

(declare-fun res!366320 () Bool)

(declare-fun e!332593 () Bool)

(assert (=> b!578348 (=> (not res!366320) (not e!332593))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578348 (= res!366320 (validKeyInArray!0 k!1786))))

(declare-fun b!578349 () Bool)

(declare-fun res!366319 () Bool)

(assert (=> b!578349 (=> (not res!366319) (not e!332593))))

(declare-datatypes ((array!36097 0))(
  ( (array!36098 (arr!17319 (Array (_ BitVec 32) (_ BitVec 64))) (size!17683 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36097)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578349 (= res!366319 (validKeyInArray!0 (select (arr!17319 a!2986) j!136)))))

(declare-fun b!578350 () Bool)

(declare-fun e!332591 () Bool)

(assert (=> b!578350 (= e!332593 e!332591)))

(declare-fun res!366315 () Bool)

(assert (=> b!578350 (=> (not res!366315) (not e!332591))))

(declare-datatypes ((SeekEntryResult!5766 0))(
  ( (MissingZero!5766 (index!25291 (_ BitVec 32))) (Found!5766 (index!25292 (_ BitVec 32))) (Intermediate!5766 (undefined!6578 Bool) (index!25293 (_ BitVec 32)) (x!54222 (_ BitVec 32))) (Undefined!5766) (MissingVacant!5766 (index!25294 (_ BitVec 32))) )
))
(declare-fun lt!264253 () SeekEntryResult!5766)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578350 (= res!366315 (or (= lt!264253 (MissingZero!5766 i!1108)) (= lt!264253 (MissingVacant!5766 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36097 (_ BitVec 32)) SeekEntryResult!5766)

(assert (=> b!578350 (= lt!264253 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!366317 () Bool)

(assert (=> start!53242 (=> (not res!366317) (not e!332593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53242 (= res!366317 (validMask!0 mask!3053))))

(assert (=> start!53242 e!332593))

(assert (=> start!53242 true))

(declare-fun array_inv!13093 (array!36097) Bool)

(assert (=> start!53242 (array_inv!13093 a!2986)))

(declare-fun b!578351 () Bool)

(declare-fun res!366316 () Bool)

(assert (=> b!578351 (=> (not res!366316) (not e!332591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36097 (_ BitVec 32)) Bool)

(assert (=> b!578351 (= res!366316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578352 () Bool)

(assert (=> b!578352 (= e!332591 false)))

(declare-fun lt!264254 () Bool)

(declare-datatypes ((List!11413 0))(
  ( (Nil!11410) (Cons!11409 (h!12454 (_ BitVec 64)) (t!17649 List!11413)) )
))
(declare-fun arrayNoDuplicates!0 (array!36097 (_ BitVec 32) List!11413) Bool)

(assert (=> b!578352 (= lt!264254 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11410))))

(declare-fun b!578353 () Bool)

(declare-fun res!366314 () Bool)

(assert (=> b!578353 (=> (not res!366314) (not e!332593))))

(assert (=> b!578353 (= res!366314 (and (= (size!17683 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17683 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17683 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578354 () Bool)

(declare-fun res!366318 () Bool)

(assert (=> b!578354 (=> (not res!366318) (not e!332593))))

(declare-fun arrayContainsKey!0 (array!36097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578354 (= res!366318 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53242 res!366317) b!578353))

(assert (= (and b!578353 res!366314) b!578349))

(assert (= (and b!578349 res!366319) b!578348))

(assert (= (and b!578348 res!366320) b!578354))

(assert (= (and b!578354 res!366318) b!578350))

(assert (= (and b!578350 res!366315) b!578351))

(assert (= (and b!578351 res!366316) b!578352))

(declare-fun m!557071 () Bool)

(assert (=> b!578352 m!557071))

(declare-fun m!557073 () Bool)

(assert (=> b!578351 m!557073))

(declare-fun m!557075 () Bool)

(assert (=> b!578348 m!557075))

(declare-fun m!557077 () Bool)

(assert (=> b!578354 m!557077))

(declare-fun m!557079 () Bool)

(assert (=> start!53242 m!557079))

(declare-fun m!557081 () Bool)

(assert (=> start!53242 m!557081))

(declare-fun m!557083 () Bool)

(assert (=> b!578350 m!557083))

(declare-fun m!557085 () Bool)

(assert (=> b!578349 m!557085))

(assert (=> b!578349 m!557085))

(declare-fun m!557087 () Bool)

(assert (=> b!578349 m!557087))

(push 1)

