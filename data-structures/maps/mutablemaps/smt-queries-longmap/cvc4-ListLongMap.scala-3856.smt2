; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53042 () Bool)

(assert start!53042)

(declare-fun b!577162 () Bool)

(declare-fun res!365344 () Bool)

(declare-fun e!331983 () Bool)

(assert (=> b!577162 (=> (not res!365344) (not e!331983))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577162 (= res!365344 (validKeyInArray!0 k!1786))))

(declare-fun b!577163 () Bool)

(declare-fun res!365345 () Bool)

(assert (=> b!577163 (=> (not res!365345) (not e!331983))))

(declare-datatypes ((array!36014 0))(
  ( (array!36015 (arr!17282 (Array (_ BitVec 32) (_ BitVec 64))) (size!17646 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36014)

(declare-fun arrayContainsKey!0 (array!36014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577163 (= res!365345 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!365346 () Bool)

(assert (=> start!53042 (=> (not res!365346) (not e!331983))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53042 (= res!365346 (validMask!0 mask!3053))))

(assert (=> start!53042 e!331983))

(assert (=> start!53042 true))

(declare-fun array_inv!13056 (array!36014) Bool)

(assert (=> start!53042 (array_inv!13056 a!2986)))

(declare-fun b!577164 () Bool)

(declare-fun res!365347 () Bool)

(assert (=> b!577164 (=> (not res!365347) (not e!331983))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577164 (= res!365347 (and (= (size!17646 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17646 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17646 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577165 () Bool)

(assert (=> b!577165 (= e!331983 false)))

(declare-datatypes ((SeekEntryResult!5729 0))(
  ( (MissingZero!5729 (index!25143 (_ BitVec 32))) (Found!5729 (index!25144 (_ BitVec 32))) (Intermediate!5729 (undefined!6541 Bool) (index!25145 (_ BitVec 32)) (x!54081 (_ BitVec 32))) (Undefined!5729) (MissingVacant!5729 (index!25146 (_ BitVec 32))) )
))
(declare-fun lt!263912 () SeekEntryResult!5729)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36014 (_ BitVec 32)) SeekEntryResult!5729)

(assert (=> b!577165 (= lt!263912 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577166 () Bool)

(declare-fun res!365348 () Bool)

(assert (=> b!577166 (=> (not res!365348) (not e!331983))))

(assert (=> b!577166 (= res!365348 (validKeyInArray!0 (select (arr!17282 a!2986) j!136)))))

(assert (= (and start!53042 res!365346) b!577164))

(assert (= (and b!577164 res!365347) b!577166))

(assert (= (and b!577166 res!365348) b!577162))

(assert (= (and b!577162 res!365344) b!577163))

(assert (= (and b!577163 res!365345) b!577165))

(declare-fun m!556097 () Bool)

(assert (=> b!577165 m!556097))

(declare-fun m!556099 () Bool)

(assert (=> b!577166 m!556099))

(assert (=> b!577166 m!556099))

(declare-fun m!556101 () Bool)

(assert (=> b!577166 m!556101))

(declare-fun m!556103 () Bool)

(assert (=> start!53042 m!556103))

(declare-fun m!556105 () Bool)

(assert (=> start!53042 m!556105))

(declare-fun m!556107 () Bool)

(assert (=> b!577163 m!556107))

(declare-fun m!556109 () Bool)

(assert (=> b!577162 m!556109))

(push 1)

(assert (not start!53042))

(assert (not b!577163))

(assert (not b!577166))

(assert (not b!577162))

(assert (not b!577165))

(check-sat)

