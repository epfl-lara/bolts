; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53214 () Bool)

(assert start!53214)

(declare-fun b!578055 () Bool)

(declare-fun e!332466 () Bool)

(assert (=> b!578055 (= e!332466 false)))

(declare-fun lt!264170 () Bool)

(declare-datatypes ((array!36069 0))(
  ( (array!36070 (arr!17305 (Array (_ BitVec 32) (_ BitVec 64))) (size!17669 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36069)

(declare-datatypes ((List!11399 0))(
  ( (Nil!11396) (Cons!11395 (h!12440 (_ BitVec 64)) (t!17635 List!11399)) )
))
(declare-fun arrayNoDuplicates!0 (array!36069 (_ BitVec 32) List!11399) Bool)

(assert (=> b!578055 (= lt!264170 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11396))))

(declare-fun b!578056 () Bool)

(declare-fun res!366024 () Bool)

(assert (=> b!578056 (=> (not res!366024) (not e!332466))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36069 (_ BitVec 32)) Bool)

(assert (=> b!578056 (= res!366024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578057 () Bool)

(declare-fun res!366020 () Bool)

(declare-fun e!332467 () Bool)

(assert (=> b!578057 (=> (not res!366020) (not e!332467))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578057 (= res!366020 (validKeyInArray!0 (select (arr!17305 a!2986) j!136)))))

(declare-fun b!578058 () Bool)

(declare-fun res!366022 () Bool)

(assert (=> b!578058 (=> (not res!366022) (not e!332467))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578058 (= res!366022 (and (= (size!17669 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17669 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17669 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366023 () Bool)

(assert (=> start!53214 (=> (not res!366023) (not e!332467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53214 (= res!366023 (validMask!0 mask!3053))))

(assert (=> start!53214 e!332467))

(assert (=> start!53214 true))

(declare-fun array_inv!13079 (array!36069) Bool)

(assert (=> start!53214 (array_inv!13079 a!2986)))

(declare-fun b!578054 () Bool)

(assert (=> b!578054 (= e!332467 e!332466)))

(declare-fun res!366026 () Bool)

(assert (=> b!578054 (=> (not res!366026) (not e!332466))))

(declare-datatypes ((SeekEntryResult!5752 0))(
  ( (MissingZero!5752 (index!25235 (_ BitVec 32))) (Found!5752 (index!25236 (_ BitVec 32))) (Intermediate!5752 (undefined!6564 Bool) (index!25237 (_ BitVec 32)) (x!54168 (_ BitVec 32))) (Undefined!5752) (MissingVacant!5752 (index!25238 (_ BitVec 32))) )
))
(declare-fun lt!264169 () SeekEntryResult!5752)

(assert (=> b!578054 (= res!366026 (or (= lt!264169 (MissingZero!5752 i!1108)) (= lt!264169 (MissingVacant!5752 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36069 (_ BitVec 32)) SeekEntryResult!5752)

(assert (=> b!578054 (= lt!264169 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578059 () Bool)

(declare-fun res!366025 () Bool)

(assert (=> b!578059 (=> (not res!366025) (not e!332467))))

(assert (=> b!578059 (= res!366025 (validKeyInArray!0 k0!1786))))

(declare-fun b!578060 () Bool)

(declare-fun res!366021 () Bool)

(assert (=> b!578060 (=> (not res!366021) (not e!332467))))

(declare-fun arrayContainsKey!0 (array!36069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578060 (= res!366021 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53214 res!366023) b!578058))

(assert (= (and b!578058 res!366022) b!578057))

(assert (= (and b!578057 res!366020) b!578059))

(assert (= (and b!578059 res!366025) b!578060))

(assert (= (and b!578060 res!366021) b!578054))

(assert (= (and b!578054 res!366026) b!578056))

(assert (= (and b!578056 res!366024) b!578055))

(declare-fun m!556819 () Bool)

(assert (=> b!578056 m!556819))

(declare-fun m!556821 () Bool)

(assert (=> b!578059 m!556821))

(declare-fun m!556823 () Bool)

(assert (=> b!578054 m!556823))

(declare-fun m!556825 () Bool)

(assert (=> b!578055 m!556825))

(declare-fun m!556827 () Bool)

(assert (=> start!53214 m!556827))

(declare-fun m!556829 () Bool)

(assert (=> start!53214 m!556829))

(declare-fun m!556831 () Bool)

(assert (=> b!578060 m!556831))

(declare-fun m!556833 () Bool)

(assert (=> b!578057 m!556833))

(assert (=> b!578057 m!556833))

(declare-fun m!556835 () Bool)

(assert (=> b!578057 m!556835))

(check-sat (not start!53214) (not b!578057) (not b!578056) (not b!578054) (not b!578060) (not b!578055) (not b!578059))
(check-sat)
