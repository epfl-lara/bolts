; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53032 () Bool)

(assert start!53032)

(declare-fun b!577087 () Bool)

(declare-fun res!365272 () Bool)

(declare-fun e!331954 () Bool)

(assert (=> b!577087 (=> (not res!365272) (not e!331954))))

(declare-datatypes ((array!36004 0))(
  ( (array!36005 (arr!17277 (Array (_ BitVec 32) (_ BitVec 64))) (size!17641 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36004)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577087 (= res!365272 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577088 () Bool)

(assert (=> b!577088 (= e!331954 false)))

(declare-datatypes ((SeekEntryResult!5724 0))(
  ( (MissingZero!5724 (index!25123 (_ BitVec 32))) (Found!5724 (index!25124 (_ BitVec 32))) (Intermediate!5724 (undefined!6536 Bool) (index!25125 (_ BitVec 32)) (x!54068 (_ BitVec 32))) (Undefined!5724) (MissingVacant!5724 (index!25126 (_ BitVec 32))) )
))
(declare-fun lt!263897 () SeekEntryResult!5724)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36004 (_ BitVec 32)) SeekEntryResult!5724)

(assert (=> b!577088 (= lt!263897 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577089 () Bool)

(declare-fun res!365273 () Bool)

(assert (=> b!577089 (=> (not res!365273) (not e!331954))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577089 (= res!365273 (validKeyInArray!0 (select (arr!17277 a!2986) j!136)))))

(declare-fun b!577090 () Bool)

(declare-fun res!365269 () Bool)

(assert (=> b!577090 (=> (not res!365269) (not e!331954))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577090 (= res!365269 (and (= (size!17641 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17641 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17641 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577091 () Bool)

(declare-fun res!365271 () Bool)

(assert (=> b!577091 (=> (not res!365271) (not e!331954))))

(assert (=> b!577091 (= res!365271 (validKeyInArray!0 k!1786))))

(declare-fun res!365270 () Bool)

(assert (=> start!53032 (=> (not res!365270) (not e!331954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53032 (= res!365270 (validMask!0 mask!3053))))

(assert (=> start!53032 e!331954))

(assert (=> start!53032 true))

(declare-fun array_inv!13051 (array!36004) Bool)

(assert (=> start!53032 (array_inv!13051 a!2986)))

(assert (= (and start!53032 res!365270) b!577090))

(assert (= (and b!577090 res!365269) b!577089))

(assert (= (and b!577089 res!365273) b!577091))

(assert (= (and b!577091 res!365271) b!577087))

(assert (= (and b!577087 res!365272) b!577088))

(declare-fun m!556027 () Bool)

(assert (=> b!577089 m!556027))

(assert (=> b!577089 m!556027))

(declare-fun m!556029 () Bool)

(assert (=> b!577089 m!556029))

(declare-fun m!556031 () Bool)

(assert (=> b!577088 m!556031))

(declare-fun m!556033 () Bool)

(assert (=> b!577091 m!556033))

(declare-fun m!556035 () Bool)

(assert (=> start!53032 m!556035))

(declare-fun m!556037 () Bool)

(assert (=> start!53032 m!556037))

(declare-fun m!556039 () Bool)

(assert (=> b!577087 m!556039))

(push 1)

(assert (not b!577088))

(assert (not start!53032))

(assert (not b!577091))

(assert (not b!577087))

(assert (not b!577089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

