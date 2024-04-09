; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53052 () Bool)

(assert start!53052)

(declare-fun b!577247 () Bool)

(declare-fun res!365434 () Bool)

(declare-fun e!332019 () Bool)

(assert (=> b!577247 (=> (not res!365434) (not e!332019))))

(declare-datatypes ((array!36024 0))(
  ( (array!36025 (arr!17287 (Array (_ BitVec 32) (_ BitVec 64))) (size!17651 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36024)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577247 (= res!365434 (validKeyInArray!0 (select (arr!17287 a!2986) j!136)))))

(declare-fun res!365430 () Bool)

(assert (=> start!53052 (=> (not res!365430) (not e!332019))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53052 (= res!365430 (validMask!0 mask!3053))))

(assert (=> start!53052 e!332019))

(assert (=> start!53052 true))

(declare-fun array_inv!13061 (array!36024) Bool)

(assert (=> start!53052 (array_inv!13061 a!2986)))

(declare-fun b!577248 () Bool)

(declare-fun e!332020 () Bool)

(assert (=> b!577248 (= e!332020 (bvsgt #b00000000000000000000000000000000 (size!17651 a!2986)))))

(declare-fun b!577249 () Bool)

(assert (=> b!577249 (= e!332019 e!332020)))

(declare-fun res!365433 () Bool)

(assert (=> b!577249 (=> (not res!365433) (not e!332020))))

(declare-datatypes ((SeekEntryResult!5734 0))(
  ( (MissingZero!5734 (index!25163 (_ BitVec 32))) (Found!5734 (index!25164 (_ BitVec 32))) (Intermediate!5734 (undefined!6546 Bool) (index!25165 (_ BitVec 32)) (x!54102 (_ BitVec 32))) (Undefined!5734) (MissingVacant!5734 (index!25166 (_ BitVec 32))) )
))
(declare-fun lt!263927 () SeekEntryResult!5734)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577249 (= res!365433 (or (= lt!263927 (MissingZero!5734 i!1108)) (= lt!263927 (MissingVacant!5734 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36024 (_ BitVec 32)) SeekEntryResult!5734)

(assert (=> b!577249 (= lt!263927 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577250 () Bool)

(declare-fun res!365429 () Bool)

(assert (=> b!577250 (=> (not res!365429) (not e!332019))))

(assert (=> b!577250 (= res!365429 (validKeyInArray!0 k0!1786))))

(declare-fun b!577251 () Bool)

(declare-fun res!365431 () Bool)

(assert (=> b!577251 (=> (not res!365431) (not e!332019))))

(assert (=> b!577251 (= res!365431 (and (= (size!17651 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17651 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17651 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577252 () Bool)

(declare-fun res!365435 () Bool)

(assert (=> b!577252 (=> (not res!365435) (not e!332019))))

(declare-fun arrayContainsKey!0 (array!36024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577252 (= res!365435 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577253 () Bool)

(declare-fun res!365432 () Bool)

(assert (=> b!577253 (=> (not res!365432) (not e!332020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36024 (_ BitVec 32)) Bool)

(assert (=> b!577253 (= res!365432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53052 res!365430) b!577251))

(assert (= (and b!577251 res!365431) b!577247))

(assert (= (and b!577247 res!365434) b!577250))

(assert (= (and b!577250 res!365429) b!577252))

(assert (= (and b!577252 res!365435) b!577249))

(assert (= (and b!577249 res!365433) b!577253))

(assert (= (and b!577253 res!365432) b!577248))

(declare-fun m!556169 () Bool)

(assert (=> b!577250 m!556169))

(declare-fun m!556171 () Bool)

(assert (=> b!577247 m!556171))

(assert (=> b!577247 m!556171))

(declare-fun m!556173 () Bool)

(assert (=> b!577247 m!556173))

(declare-fun m!556175 () Bool)

(assert (=> b!577252 m!556175))

(declare-fun m!556177 () Bool)

(assert (=> b!577249 m!556177))

(declare-fun m!556179 () Bool)

(assert (=> b!577253 m!556179))

(declare-fun m!556181 () Bool)

(assert (=> start!53052 m!556181))

(declare-fun m!556183 () Bool)

(assert (=> start!53052 m!556183))

(check-sat (not b!577250) (not start!53052) (not b!577247) (not b!577252) (not b!577253) (not b!577249))
(check-sat)
