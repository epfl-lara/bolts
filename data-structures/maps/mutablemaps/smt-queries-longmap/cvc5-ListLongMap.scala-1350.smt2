; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26668 () Bool)

(assert start!26668)

(declare-fun b!276667 () Bool)

(declare-fun res!140700 () Bool)

(declare-fun e!176719 () Bool)

(assert (=> b!276667 (=> (not res!140700) (not e!176719))))

(declare-datatypes ((array!13754 0))(
  ( (array!13755 (arr!6526 (Array (_ BitVec 32) (_ BitVec 64))) (size!6878 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13754)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276667 (= res!140700 (and (= (size!6878 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6878 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6878 a!3325))))))

(declare-fun res!140699 () Bool)

(assert (=> start!26668 (=> (not res!140699) (not e!176719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26668 (= res!140699 (validMask!0 mask!3868))))

(assert (=> start!26668 e!176719))

(declare-fun array_inv!4480 (array!13754) Bool)

(assert (=> start!26668 (array_inv!4480 a!3325)))

(assert (=> start!26668 true))

(declare-fun b!276668 () Bool)

(declare-fun e!176717 () Bool)

(assert (=> b!276668 (= e!176717 false)))

(declare-fun lt!137744 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13754 (_ BitVec 32)) Bool)

(assert (=> b!276668 (= lt!137744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276669 () Bool)

(declare-fun res!140698 () Bool)

(assert (=> b!276669 (=> (not res!140698) (not e!176719))))

(declare-datatypes ((List!4355 0))(
  ( (Nil!4352) (Cons!4351 (h!5018 (_ BitVec 64)) (t!9445 List!4355)) )
))
(declare-fun arrayNoDuplicates!0 (array!13754 (_ BitVec 32) List!4355) Bool)

(assert (=> b!276669 (= res!140698 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4352))))

(declare-fun b!276670 () Bool)

(assert (=> b!276670 (= e!176719 e!176717)))

(declare-fun res!140695 () Bool)

(assert (=> b!276670 (=> (not res!140695) (not e!176717))))

(declare-datatypes ((SeekEntryResult!1695 0))(
  ( (MissingZero!1695 (index!8950 (_ BitVec 32))) (Found!1695 (index!8951 (_ BitVec 32))) (Intermediate!1695 (undefined!2507 Bool) (index!8952 (_ BitVec 32)) (x!27180 (_ BitVec 32))) (Undefined!1695) (MissingVacant!1695 (index!8953 (_ BitVec 32))) )
))
(declare-fun lt!137743 () SeekEntryResult!1695)

(assert (=> b!276670 (= res!140695 (or (= lt!137743 (MissingZero!1695 i!1267)) (= lt!137743 (MissingVacant!1695 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13754 (_ BitVec 32)) SeekEntryResult!1695)

(assert (=> b!276670 (= lt!137743 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276671 () Bool)

(declare-fun res!140696 () Bool)

(assert (=> b!276671 (=> (not res!140696) (not e!176719))))

(declare-fun arrayContainsKey!0 (array!13754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276671 (= res!140696 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276672 () Bool)

(declare-fun res!140697 () Bool)

(assert (=> b!276672 (=> (not res!140697) (not e!176719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276672 (= res!140697 (validKeyInArray!0 k!2581))))

(assert (= (and start!26668 res!140699) b!276667))

(assert (= (and b!276667 res!140700) b!276672))

(assert (= (and b!276672 res!140697) b!276669))

(assert (= (and b!276669 res!140698) b!276671))

(assert (= (and b!276671 res!140696) b!276670))

(assert (= (and b!276670 res!140695) b!276668))

(declare-fun m!291979 () Bool)

(assert (=> b!276671 m!291979))

(declare-fun m!291981 () Bool)

(assert (=> b!276672 m!291981))

(declare-fun m!291983 () Bool)

(assert (=> start!26668 m!291983))

(declare-fun m!291985 () Bool)

(assert (=> start!26668 m!291985))

(declare-fun m!291987 () Bool)

(assert (=> b!276670 m!291987))

(declare-fun m!291989 () Bool)

(assert (=> b!276669 m!291989))

(declare-fun m!291991 () Bool)

(assert (=> b!276668 m!291991))

(push 1)

(assert (not b!276670))

(assert (not b!276672))

(assert (not start!26668))

(assert (not b!276671))

(assert (not b!276669))

(assert (not b!276668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

