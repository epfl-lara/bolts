; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53228 () Bool)

(assert start!53228)

(declare-fun b!578201 () Bool)

(declare-fun e!332529 () Bool)

(declare-fun e!332528 () Bool)

(assert (=> b!578201 (= e!332529 e!332528)))

(declare-fun res!366171 () Bool)

(assert (=> b!578201 (=> (not res!366171) (not e!332528))))

(declare-datatypes ((SeekEntryResult!5759 0))(
  ( (MissingZero!5759 (index!25263 (_ BitVec 32))) (Found!5759 (index!25264 (_ BitVec 32))) (Intermediate!5759 (undefined!6571 Bool) (index!25265 (_ BitVec 32)) (x!54191 (_ BitVec 32))) (Undefined!5759) (MissingVacant!5759 (index!25266 (_ BitVec 32))) )
))
(declare-fun lt!264212 () SeekEntryResult!5759)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578201 (= res!366171 (or (= lt!264212 (MissingZero!5759 i!1108)) (= lt!264212 (MissingVacant!5759 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36083 0))(
  ( (array!36084 (arr!17312 (Array (_ BitVec 32) (_ BitVec 64))) (size!17676 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36083)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36083 (_ BitVec 32)) SeekEntryResult!5759)

(assert (=> b!578201 (= lt!264212 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!366169 () Bool)

(assert (=> start!53228 (=> (not res!366169) (not e!332529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53228 (= res!366169 (validMask!0 mask!3053))))

(assert (=> start!53228 e!332529))

(assert (=> start!53228 true))

(declare-fun array_inv!13086 (array!36083) Bool)

(assert (=> start!53228 (array_inv!13086 a!2986)))

(declare-fun b!578202 () Bool)

(declare-fun res!366170 () Bool)

(assert (=> b!578202 (=> (not res!366170) (not e!332529))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578202 (= res!366170 (validKeyInArray!0 (select (arr!17312 a!2986) j!136)))))

(declare-fun b!578203 () Bool)

(declare-fun res!366173 () Bool)

(assert (=> b!578203 (=> (not res!366173) (not e!332528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36083 (_ BitVec 32)) Bool)

(assert (=> b!578203 (= res!366173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578204 () Bool)

(assert (=> b!578204 (= e!332528 false)))

(declare-fun lt!264211 () Bool)

(declare-datatypes ((List!11406 0))(
  ( (Nil!11403) (Cons!11402 (h!12447 (_ BitVec 64)) (t!17642 List!11406)) )
))
(declare-fun arrayNoDuplicates!0 (array!36083 (_ BitVec 32) List!11406) Bool)

(assert (=> b!578204 (= lt!264211 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11403))))

(declare-fun b!578205 () Bool)

(declare-fun res!366168 () Bool)

(assert (=> b!578205 (=> (not res!366168) (not e!332529))))

(assert (=> b!578205 (= res!366168 (validKeyInArray!0 k!1786))))

(declare-fun b!578206 () Bool)

(declare-fun res!366167 () Bool)

(assert (=> b!578206 (=> (not res!366167) (not e!332529))))

(assert (=> b!578206 (= res!366167 (and (= (size!17676 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17676 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17676 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578207 () Bool)

(declare-fun res!366172 () Bool)

(assert (=> b!578207 (=> (not res!366172) (not e!332529))))

(declare-fun arrayContainsKey!0 (array!36083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578207 (= res!366172 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53228 res!366169) b!578206))

(assert (= (and b!578206 res!366167) b!578202))

(assert (= (and b!578202 res!366170) b!578205))

(assert (= (and b!578205 res!366168) b!578207))

(assert (= (and b!578207 res!366172) b!578201))

(assert (= (and b!578201 res!366171) b!578203))

(assert (= (and b!578203 res!366173) b!578204))

(declare-fun m!556945 () Bool)

(assert (=> b!578207 m!556945))

(declare-fun m!556947 () Bool)

(assert (=> start!53228 m!556947))

(declare-fun m!556949 () Bool)

(assert (=> start!53228 m!556949))

(declare-fun m!556951 () Bool)

(assert (=> b!578204 m!556951))

(declare-fun m!556953 () Bool)

(assert (=> b!578205 m!556953))

(declare-fun m!556955 () Bool)

(assert (=> b!578202 m!556955))

(assert (=> b!578202 m!556955))

(declare-fun m!556957 () Bool)

(assert (=> b!578202 m!556957))

(declare-fun m!556959 () Bool)

(assert (=> b!578203 m!556959))

(declare-fun m!556961 () Bool)

(assert (=> b!578201 m!556961))

(push 1)

(assert (not b!578205))

