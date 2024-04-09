; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26614 () Bool)

(assert start!26614)

(declare-fun b!276172 () Bool)

(declare-fun e!176474 () Bool)

(assert (=> b!276172 (= e!176474 false)))

(declare-fun lt!137590 () Bool)

(declare-datatypes ((array!13700 0))(
  ( (array!13701 (arr!6499 (Array (_ BitVec 32) (_ BitVec 64))) (size!6851 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13700)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13700 (_ BitVec 32)) Bool)

(assert (=> b!276172 (= lt!137590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!140204 () Bool)

(declare-fun e!176476 () Bool)

(assert (=> start!26614 (=> (not res!140204) (not e!176476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26614 (= res!140204 (validMask!0 mask!3868))))

(assert (=> start!26614 e!176476))

(declare-fun array_inv!4453 (array!13700) Bool)

(assert (=> start!26614 (array_inv!4453 a!3325)))

(assert (=> start!26614 true))

(declare-fun b!276173 () Bool)

(declare-fun res!140205 () Bool)

(assert (=> b!276173 (=> (not res!140205) (not e!176476))))

(declare-datatypes ((List!4328 0))(
  ( (Nil!4325) (Cons!4324 (h!4991 (_ BitVec 64)) (t!9418 List!4328)) )
))
(declare-fun arrayNoDuplicates!0 (array!13700 (_ BitVec 32) List!4328) Bool)

(assert (=> b!276173 (= res!140205 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4325))))

(declare-fun b!276174 () Bool)

(declare-fun res!140200 () Bool)

(assert (=> b!276174 (=> (not res!140200) (not e!176476))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276174 (= res!140200 (and (= (size!6851 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6851 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6851 a!3325))))))

(declare-fun b!276175 () Bool)

(declare-fun res!140202 () Bool)

(assert (=> b!276175 (=> (not res!140202) (not e!176476))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276175 (= res!140202 (validKeyInArray!0 k!2581))))

(declare-fun b!276176 () Bool)

(assert (=> b!276176 (= e!176476 e!176474)))

(declare-fun res!140203 () Bool)

(assert (=> b!276176 (=> (not res!140203) (not e!176474))))

(declare-datatypes ((SeekEntryResult!1668 0))(
  ( (MissingZero!1668 (index!8842 (_ BitVec 32))) (Found!1668 (index!8843 (_ BitVec 32))) (Intermediate!1668 (undefined!2480 Bool) (index!8844 (_ BitVec 32)) (x!27081 (_ BitVec 32))) (Undefined!1668) (MissingVacant!1668 (index!8845 (_ BitVec 32))) )
))
(declare-fun lt!137591 () SeekEntryResult!1668)

(assert (=> b!276176 (= res!140203 (or (= lt!137591 (MissingZero!1668 i!1267)) (= lt!137591 (MissingVacant!1668 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13700 (_ BitVec 32)) SeekEntryResult!1668)

(assert (=> b!276176 (= lt!137591 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276177 () Bool)

(declare-fun res!140201 () Bool)

(assert (=> b!276177 (=> (not res!140201) (not e!176476))))

(declare-fun arrayContainsKey!0 (array!13700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276177 (= res!140201 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26614 res!140204) b!276174))

(assert (= (and b!276174 res!140200) b!276175))

(assert (= (and b!276175 res!140202) b!276173))

(assert (= (and b!276173 res!140205) b!276177))

(assert (= (and b!276177 res!140201) b!276176))

(assert (= (and b!276176 res!140203) b!276172))

(declare-fun m!291601 () Bool)

(assert (=> b!276172 m!291601))

(declare-fun m!291603 () Bool)

(assert (=> b!276175 m!291603))

(declare-fun m!291605 () Bool)

(assert (=> b!276177 m!291605))

(declare-fun m!291607 () Bool)

(assert (=> b!276173 m!291607))

(declare-fun m!291609 () Bool)

(assert (=> start!26614 m!291609))

(declare-fun m!291611 () Bool)

(assert (=> start!26614 m!291611))

(declare-fun m!291613 () Bool)

(assert (=> b!276176 m!291613))

(push 1)

(assert (not b!276173))

