; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53054 () Bool)

(assert start!53054)

(declare-fun res!365455 () Bool)

(declare-fun e!332029 () Bool)

(assert (=> start!53054 (=> (not res!365455) (not e!332029))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53054 (= res!365455 (validMask!0 mask!3053))))

(assert (=> start!53054 e!332029))

(assert (=> start!53054 true))

(declare-datatypes ((array!36026 0))(
  ( (array!36027 (arr!17288 (Array (_ BitVec 32) (_ BitVec 64))) (size!17652 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36026)

(declare-fun array_inv!13062 (array!36026) Bool)

(assert (=> start!53054 (array_inv!13062 a!2986)))

(declare-fun b!577268 () Bool)

(declare-fun res!365452 () Bool)

(assert (=> b!577268 (=> (not res!365452) (not e!332029))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577268 (= res!365452 (validKeyInArray!0 (select (arr!17288 a!2986) j!136)))))

(declare-fun b!577269 () Bool)

(declare-fun res!365453 () Bool)

(assert (=> b!577269 (=> (not res!365453) (not e!332029))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577269 (= res!365453 (and (= (size!17652 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17652 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17652 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577270 () Bool)

(declare-fun res!365456 () Bool)

(assert (=> b!577270 (=> (not res!365456) (not e!332029))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577270 (= res!365456 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577271 () Bool)

(declare-fun res!365451 () Bool)

(assert (=> b!577271 (=> (not res!365451) (not e!332029))))

(assert (=> b!577271 (= res!365451 (validKeyInArray!0 k!1786))))

(declare-fun b!577272 () Bool)

(declare-fun e!332028 () Bool)

(assert (=> b!577272 (= e!332029 e!332028)))

(declare-fun res!365450 () Bool)

(assert (=> b!577272 (=> (not res!365450) (not e!332028))))

(declare-datatypes ((SeekEntryResult!5735 0))(
  ( (MissingZero!5735 (index!25167 (_ BitVec 32))) (Found!5735 (index!25168 (_ BitVec 32))) (Intermediate!5735 (undefined!6547 Bool) (index!25169 (_ BitVec 32)) (x!54103 (_ BitVec 32))) (Undefined!5735) (MissingVacant!5735 (index!25170 (_ BitVec 32))) )
))
(declare-fun lt!263930 () SeekEntryResult!5735)

(assert (=> b!577272 (= res!365450 (or (= lt!263930 (MissingZero!5735 i!1108)) (= lt!263930 (MissingVacant!5735 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36026 (_ BitVec 32)) SeekEntryResult!5735)

(assert (=> b!577272 (= lt!263930 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577273 () Bool)

(declare-fun res!365454 () Bool)

(assert (=> b!577273 (=> (not res!365454) (not e!332028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36026 (_ BitVec 32)) Bool)

(assert (=> b!577273 (= res!365454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577274 () Bool)

(assert (=> b!577274 (= e!332028 (bvsgt #b00000000000000000000000000000000 (size!17652 a!2986)))))

(assert (= (and start!53054 res!365455) b!577269))

(assert (= (and b!577269 res!365453) b!577268))

(assert (= (and b!577268 res!365452) b!577271))

(assert (= (and b!577271 res!365451) b!577270))

(assert (= (and b!577270 res!365456) b!577272))

(assert (= (and b!577272 res!365450) b!577273))

(assert (= (and b!577273 res!365454) b!577274))

(declare-fun m!556185 () Bool)

(assert (=> b!577268 m!556185))

(assert (=> b!577268 m!556185))

(declare-fun m!556187 () Bool)

(assert (=> b!577268 m!556187))

(declare-fun m!556189 () Bool)

(assert (=> b!577270 m!556189))

(declare-fun m!556191 () Bool)

(assert (=> b!577272 m!556191))

(declare-fun m!556193 () Bool)

(assert (=> start!53054 m!556193))

(declare-fun m!556195 () Bool)

(assert (=> start!53054 m!556195))

(declare-fun m!556197 () Bool)

(assert (=> b!577271 m!556197))

(declare-fun m!556199 () Bool)

(assert (=> b!577273 m!556199))

(push 1)

