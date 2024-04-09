; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53044 () Bool)

(assert start!53044)

(declare-fun b!577177 () Bool)

(declare-fun res!365359 () Bool)

(declare-fun e!331990 () Bool)

(assert (=> b!577177 (=> (not res!365359) (not e!331990))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36016 0))(
  ( (array!36017 (arr!17283 (Array (_ BitVec 32) (_ BitVec 64))) (size!17647 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36016)

(assert (=> b!577177 (= res!365359 (and (= (size!17647 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17647 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17647 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577178 () Bool)

(declare-fun res!365361 () Bool)

(assert (=> b!577178 (=> (not res!365361) (not e!331990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577178 (= res!365361 (validKeyInArray!0 (select (arr!17283 a!2986) j!136)))))

(declare-fun b!577179 () Bool)

(declare-datatypes ((SeekEntryResult!5730 0))(
  ( (MissingZero!5730 (index!25147 (_ BitVec 32))) (Found!5730 (index!25148 (_ BitVec 32))) (Intermediate!5730 (undefined!6542 Bool) (index!25149 (_ BitVec 32)) (x!54090 (_ BitVec 32))) (Undefined!5730) (MissingVacant!5730 (index!25150 (_ BitVec 32))) )
))
(declare-fun lt!263915 () SeekEntryResult!5730)

(assert (=> b!577179 (= e!331990 (and (or (= lt!263915 (MissingZero!5730 i!1108)) (= lt!263915 (MissingVacant!5730 i!1108))) (bvsgt #b00000000000000000000000000000000 (size!17647 a!2986))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36016 (_ BitVec 32)) SeekEntryResult!5730)

(assert (=> b!577179 (= lt!263915 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!365362 () Bool)

(assert (=> start!53044 (=> (not res!365362) (not e!331990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53044 (= res!365362 (validMask!0 mask!3053))))

(assert (=> start!53044 e!331990))

(assert (=> start!53044 true))

(declare-fun array_inv!13057 (array!36016) Bool)

(assert (=> start!53044 (array_inv!13057 a!2986)))

(declare-fun b!577180 () Bool)

(declare-fun res!365363 () Bool)

(assert (=> b!577180 (=> (not res!365363) (not e!331990))))

(declare-fun arrayContainsKey!0 (array!36016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577180 (= res!365363 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577181 () Bool)

(declare-fun res!365360 () Bool)

(assert (=> b!577181 (=> (not res!365360) (not e!331990))))

(assert (=> b!577181 (= res!365360 (validKeyInArray!0 k!1786))))

(assert (= (and start!53044 res!365362) b!577177))

(assert (= (and b!577177 res!365359) b!577178))

(assert (= (and b!577178 res!365361) b!577181))

(assert (= (and b!577181 res!365360) b!577180))

(assert (= (and b!577180 res!365363) b!577179))

(declare-fun m!556111 () Bool)

(assert (=> start!53044 m!556111))

(declare-fun m!556113 () Bool)

(assert (=> start!53044 m!556113))

(declare-fun m!556115 () Bool)

(assert (=> b!577179 m!556115))

(declare-fun m!556117 () Bool)

(assert (=> b!577180 m!556117))

(declare-fun m!556119 () Bool)

(assert (=> b!577181 m!556119))

(declare-fun m!556121 () Bool)

(assert (=> b!577178 m!556121))

(assert (=> b!577178 m!556121))

(declare-fun m!556123 () Bool)

(assert (=> b!577178 m!556123))

(push 1)

(assert (not b!577178))

(assert (not b!577180))

(assert (not b!577179))

(assert (not b!577181))

(assert (not start!53044))

(check-sat)

(pop 1)

