; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53036 () Bool)

(assert start!53036)

(declare-fun res!365300 () Bool)

(declare-fun e!331966 () Bool)

(assert (=> start!53036 (=> (not res!365300) (not e!331966))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53036 (= res!365300 (validMask!0 mask!3053))))

(assert (=> start!53036 e!331966))

(assert (=> start!53036 true))

(declare-datatypes ((array!36008 0))(
  ( (array!36009 (arr!17279 (Array (_ BitVec 32) (_ BitVec 64))) (size!17643 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36008)

(declare-fun array_inv!13053 (array!36008) Bool)

(assert (=> start!53036 (array_inv!13053 a!2986)))

(declare-fun b!577117 () Bool)

(declare-fun res!365302 () Bool)

(assert (=> b!577117 (=> (not res!365302) (not e!331966))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577117 (= res!365302 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577118 () Bool)

(declare-fun res!365301 () Bool)

(assert (=> b!577118 (=> (not res!365301) (not e!331966))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577118 (= res!365301 (validKeyInArray!0 (select (arr!17279 a!2986) j!136)))))

(declare-fun b!577119 () Bool)

(declare-fun res!365303 () Bool)

(assert (=> b!577119 (=> (not res!365303) (not e!331966))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577119 (= res!365303 (and (= (size!17643 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17643 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17643 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577120 () Bool)

(declare-fun res!365299 () Bool)

(assert (=> b!577120 (=> (not res!365299) (not e!331966))))

(assert (=> b!577120 (= res!365299 (validKeyInArray!0 k!1786))))

(declare-fun b!577121 () Bool)

(assert (=> b!577121 (= e!331966 false)))

(declare-datatypes ((SeekEntryResult!5726 0))(
  ( (MissingZero!5726 (index!25131 (_ BitVec 32))) (Found!5726 (index!25132 (_ BitVec 32))) (Intermediate!5726 (undefined!6538 Bool) (index!25133 (_ BitVec 32)) (x!54070 (_ BitVec 32))) (Undefined!5726) (MissingVacant!5726 (index!25134 (_ BitVec 32))) )
))
(declare-fun lt!263903 () SeekEntryResult!5726)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36008 (_ BitVec 32)) SeekEntryResult!5726)

(assert (=> b!577121 (= lt!263903 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53036 res!365300) b!577119))

(assert (= (and b!577119 res!365303) b!577118))

(assert (= (and b!577118 res!365301) b!577120))

(assert (= (and b!577120 res!365299) b!577117))

(assert (= (and b!577117 res!365302) b!577121))

(declare-fun m!556055 () Bool)

(assert (=> start!53036 m!556055))

(declare-fun m!556057 () Bool)

(assert (=> start!53036 m!556057))

(declare-fun m!556059 () Bool)

(assert (=> b!577117 m!556059))

(declare-fun m!556061 () Bool)

(assert (=> b!577121 m!556061))

(declare-fun m!556063 () Bool)

(assert (=> b!577118 m!556063))

(assert (=> b!577118 m!556063))

(declare-fun m!556065 () Bool)

(assert (=> b!577118 m!556065))

(declare-fun m!556067 () Bool)

(assert (=> b!577120 m!556067))

(push 1)

(assert (not b!577121))

(assert (not start!53036))

(assert (not b!577120))

(assert (not b!577118))

(assert (not b!577117))

(check-sat)

