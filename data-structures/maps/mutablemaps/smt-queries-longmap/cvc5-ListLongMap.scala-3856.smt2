; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53038 () Bool)

(assert start!53038)

(declare-fun b!577132 () Bool)

(declare-fun e!331971 () Bool)

(assert (=> b!577132 (= e!331971 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5727 0))(
  ( (MissingZero!5727 (index!25135 (_ BitVec 32))) (Found!5727 (index!25136 (_ BitVec 32))) (Intermediate!5727 (undefined!6539 Bool) (index!25137 (_ BitVec 32)) (x!54079 (_ BitVec 32))) (Undefined!5727) (MissingVacant!5727 (index!25138 (_ BitVec 32))) )
))
(declare-fun lt!263906 () SeekEntryResult!5727)

(declare-datatypes ((array!36010 0))(
  ( (array!36011 (arr!17280 (Array (_ BitVec 32) (_ BitVec 64))) (size!17644 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36010)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36010 (_ BitVec 32)) SeekEntryResult!5727)

(assert (=> b!577132 (= lt!263906 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577134 () Bool)

(declare-fun res!365314 () Bool)

(assert (=> b!577134 (=> (not res!365314) (not e!331971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577134 (= res!365314 (validKeyInArray!0 k!1786))))

(declare-fun b!577135 () Bool)

(declare-fun res!365316 () Bool)

(assert (=> b!577135 (=> (not res!365316) (not e!331971))))

(declare-fun arrayContainsKey!0 (array!36010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577135 (= res!365316 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577136 () Bool)

(declare-fun res!365315 () Bool)

(assert (=> b!577136 (=> (not res!365315) (not e!331971))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577136 (= res!365315 (and (= (size!17644 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17644 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17644 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!365318 () Bool)

(assert (=> start!53038 (=> (not res!365318) (not e!331971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53038 (= res!365318 (validMask!0 mask!3053))))

(assert (=> start!53038 e!331971))

(assert (=> start!53038 true))

(declare-fun array_inv!13054 (array!36010) Bool)

(assert (=> start!53038 (array_inv!13054 a!2986)))

(declare-fun b!577133 () Bool)

(declare-fun res!365317 () Bool)

(assert (=> b!577133 (=> (not res!365317) (not e!331971))))

(assert (=> b!577133 (= res!365317 (validKeyInArray!0 (select (arr!17280 a!2986) j!136)))))

(assert (= (and start!53038 res!365318) b!577136))

(assert (= (and b!577136 res!365315) b!577133))

(assert (= (and b!577133 res!365317) b!577134))

(assert (= (and b!577134 res!365314) b!577135))

(assert (= (and b!577135 res!365316) b!577132))

(declare-fun m!556069 () Bool)

(assert (=> b!577132 m!556069))

(declare-fun m!556071 () Bool)

(assert (=> start!53038 m!556071))

(declare-fun m!556073 () Bool)

(assert (=> start!53038 m!556073))

(declare-fun m!556075 () Bool)

(assert (=> b!577135 m!556075))

(declare-fun m!556077 () Bool)

(assert (=> b!577134 m!556077))

(declare-fun m!556079 () Bool)

(assert (=> b!577133 m!556079))

(assert (=> b!577133 m!556079))

(declare-fun m!556081 () Bool)

(assert (=> b!577133 m!556081))

(push 1)

(assert (not b!577132))

(assert (not start!53038))

(assert (not b!577133))

(assert (not b!577135))

(assert (not b!577134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

