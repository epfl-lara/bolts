; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26524 () Bool)

(assert start!26524)

(declare-fun b!275182 () Bool)

(declare-fun res!139212 () Bool)

(declare-fun e!176069 () Bool)

(assert (=> b!275182 (=> (not res!139212) (not e!176069))))

(declare-datatypes ((array!13610 0))(
  ( (array!13611 (arr!6454 (Array (_ BitVec 32) (_ BitVec 64))) (size!6806 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13610)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275182 (= res!139212 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275183 () Bool)

(declare-fun e!176070 () Bool)

(assert (=> b!275183 (= e!176069 e!176070)))

(declare-fun res!139215 () Bool)

(assert (=> b!275183 (=> (not res!139215) (not e!176070))))

(declare-datatypes ((SeekEntryResult!1623 0))(
  ( (MissingZero!1623 (index!8662 (_ BitVec 32))) (Found!1623 (index!8663 (_ BitVec 32))) (Intermediate!1623 (undefined!2435 Bool) (index!8664 (_ BitVec 32)) (x!26916 (_ BitVec 32))) (Undefined!1623) (MissingVacant!1623 (index!8665 (_ BitVec 32))) )
))
(declare-fun lt!137338 () SeekEntryResult!1623)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275183 (= res!139215 (or (= lt!137338 (MissingZero!1623 i!1267)) (= lt!137338 (MissingVacant!1623 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13610 (_ BitVec 32)) SeekEntryResult!1623)

(assert (=> b!275183 (= lt!137338 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275184 () Bool)

(declare-fun res!139211 () Bool)

(assert (=> b!275184 (=> (not res!139211) (not e!176069))))

(declare-datatypes ((List!4283 0))(
  ( (Nil!4280) (Cons!4279 (h!4946 (_ BitVec 64)) (t!9373 List!4283)) )
))
(declare-fun arrayNoDuplicates!0 (array!13610 (_ BitVec 32) List!4283) Bool)

(assert (=> b!275184 (= res!139211 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4280))))

(declare-fun b!275185 () Bool)

(declare-fun res!139214 () Bool)

(assert (=> b!275185 (=> (not res!139214) (not e!176069))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275185 (= res!139214 (and (= (size!6806 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6806 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6806 a!3325))))))

(declare-fun res!139210 () Bool)

(assert (=> start!26524 (=> (not res!139210) (not e!176069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26524 (= res!139210 (validMask!0 mask!3868))))

(assert (=> start!26524 e!176069))

(declare-fun array_inv!4408 (array!13610) Bool)

(assert (=> start!26524 (array_inv!4408 a!3325)))

(assert (=> start!26524 true))

(declare-fun b!275186 () Bool)

(assert (=> b!275186 (= e!176070 false)))

(declare-fun lt!137339 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13610 (_ BitVec 32)) Bool)

(assert (=> b!275186 (= lt!137339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275187 () Bool)

(declare-fun res!139213 () Bool)

(assert (=> b!275187 (=> (not res!139213) (not e!176069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275187 (= res!139213 (validKeyInArray!0 k!2581))))

(assert (= (and start!26524 res!139210) b!275185))

(assert (= (and b!275185 res!139214) b!275187))

(assert (= (and b!275187 res!139213) b!275184))

(assert (= (and b!275184 res!139211) b!275182))

(assert (= (and b!275182 res!139212) b!275183))

(assert (= (and b!275183 res!139215) b!275186))

(declare-fun m!290839 () Bool)

(assert (=> b!275184 m!290839))

(declare-fun m!290841 () Bool)

(assert (=> b!275182 m!290841))

(declare-fun m!290843 () Bool)

(assert (=> b!275183 m!290843))

(declare-fun m!290845 () Bool)

(assert (=> b!275186 m!290845))

(declare-fun m!290847 () Bool)

(assert (=> start!26524 m!290847))

(declare-fun m!290849 () Bool)

(assert (=> start!26524 m!290849))

(declare-fun m!290851 () Bool)

(assert (=> b!275187 m!290851))

(push 1)

(assert (not b!275184))

