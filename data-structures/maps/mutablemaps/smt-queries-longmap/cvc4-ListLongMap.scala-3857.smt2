; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53048 () Bool)

(assert start!53048)

(declare-fun b!577207 () Bool)

(declare-fun res!365391 () Bool)

(declare-fun e!332001 () Bool)

(assert (=> b!577207 (=> (not res!365391) (not e!332001))))

(declare-datatypes ((array!36020 0))(
  ( (array!36021 (arr!17285 (Array (_ BitVec 32) (_ BitVec 64))) (size!17649 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36020)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577207 (= res!365391 (validKeyInArray!0 (select (arr!17285 a!2986) j!136)))))

(declare-fun b!577208 () Bool)

(declare-fun res!365389 () Bool)

(assert (=> b!577208 (=> (not res!365389) (not e!332001))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577208 (= res!365389 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5732 0))(
  ( (MissingZero!5732 (index!25155 (_ BitVec 32))) (Found!5732 (index!25156 (_ BitVec 32))) (Intermediate!5732 (undefined!6544 Bool) (index!25157 (_ BitVec 32)) (x!54092 (_ BitVec 32))) (Undefined!5732) (MissingVacant!5732 (index!25158 (_ BitVec 32))) )
))
(declare-fun lt!263921 () SeekEntryResult!5732)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun b!577209 () Bool)

(assert (=> b!577209 (= e!332001 (and (or (= lt!263921 (MissingZero!5732 i!1108)) (= lt!263921 (MissingVacant!5732 i!1108))) (bvsgt #b00000000000000000000000000000000 (size!17649 a!2986))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36020 (_ BitVec 32)) SeekEntryResult!5732)

(assert (=> b!577209 (= lt!263921 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!365390 () Bool)

(assert (=> start!53048 (=> (not res!365390) (not e!332001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53048 (= res!365390 (validMask!0 mask!3053))))

(assert (=> start!53048 e!332001))

(assert (=> start!53048 true))

(declare-fun array_inv!13059 (array!36020) Bool)

(assert (=> start!53048 (array_inv!13059 a!2986)))

(declare-fun b!577210 () Bool)

(declare-fun res!365393 () Bool)

(assert (=> b!577210 (=> (not res!365393) (not e!332001))))

(assert (=> b!577210 (= res!365393 (and (= (size!17649 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17649 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17649 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577211 () Bool)

(declare-fun res!365392 () Bool)

(assert (=> b!577211 (=> (not res!365392) (not e!332001))))

(assert (=> b!577211 (= res!365392 (validKeyInArray!0 k!1786))))

(assert (= (and start!53048 res!365390) b!577210))

(assert (= (and b!577210 res!365393) b!577207))

(assert (= (and b!577207 res!365391) b!577211))

(assert (= (and b!577211 res!365392) b!577208))

(assert (= (and b!577208 res!365389) b!577209))

(declare-fun m!556139 () Bool)

(assert (=> b!577211 m!556139))

(declare-fun m!556141 () Bool)

(assert (=> start!53048 m!556141))

(declare-fun m!556143 () Bool)

(assert (=> start!53048 m!556143))

(declare-fun m!556145 () Bool)

(assert (=> b!577207 m!556145))

(assert (=> b!577207 m!556145))

(declare-fun m!556147 () Bool)

(assert (=> b!577207 m!556147))

(declare-fun m!556149 () Bool)

(assert (=> b!577208 m!556149))

(declare-fun m!556151 () Bool)

(assert (=> b!577209 m!556151))

(push 1)

(assert (not b!577208))

(assert (not b!577211))

(assert (not b!577207))

(assert (not start!53048))

(assert (not b!577209))

(check-sat)

