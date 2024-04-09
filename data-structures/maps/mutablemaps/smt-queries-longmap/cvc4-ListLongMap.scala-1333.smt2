; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26570 () Bool)

(assert start!26570)

(declare-fun b!275664 () Bool)

(declare-fun res!139696 () Bool)

(declare-fun e!176277 () Bool)

(assert (=> b!275664 (=> (not res!139696) (not e!176277))))

(declare-datatypes ((array!13656 0))(
  ( (array!13657 (arr!6477 (Array (_ BitVec 32) (_ BitVec 64))) (size!6829 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13656)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275664 (= res!139696 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275665 () Bool)

(declare-fun res!139694 () Bool)

(assert (=> b!275665 (=> (not res!139694) (not e!176277))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275665 (= res!139694 (and (= (size!6829 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6829 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6829 a!3325))))))

(declare-fun res!139692 () Bool)

(assert (=> start!26570 (=> (not res!139692) (not e!176277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26570 (= res!139692 (validMask!0 mask!3868))))

(assert (=> start!26570 e!176277))

(declare-fun array_inv!4431 (array!13656) Bool)

(assert (=> start!26570 (array_inv!4431 a!3325)))

(assert (=> start!26570 true))

(declare-fun b!275666 () Bool)

(declare-fun res!139693 () Bool)

(declare-fun e!176278 () Bool)

(assert (=> b!275666 (=> (not res!139693) (not e!176278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275666 (= res!139693 (not (validKeyInArray!0 (select (arr!6477 a!3325) startIndex!26))))))

(declare-fun b!275667 () Bool)

(declare-fun res!139700 () Bool)

(assert (=> b!275667 (=> (not res!139700) (not e!176277))))

(assert (=> b!275667 (= res!139700 (validKeyInArray!0 k!2581))))

(declare-fun b!275668 () Bool)

(declare-fun res!139701 () Bool)

(assert (=> b!275668 (=> (not res!139701) (not e!176277))))

(declare-datatypes ((List!4306 0))(
  ( (Nil!4303) (Cons!4302 (h!4969 (_ BitVec 64)) (t!9396 List!4306)) )
))
(declare-fun arrayNoDuplicates!0 (array!13656 (_ BitVec 32) List!4306) Bool)

(assert (=> b!275668 (= res!139701 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4303))))

(declare-fun b!275669 () Bool)

(declare-fun res!139695 () Bool)

(assert (=> b!275669 (=> (not res!139695) (not e!176278))))

(assert (=> b!275669 (= res!139695 (not (= startIndex!26 i!1267)))))

(declare-fun b!275670 () Bool)

(assert (=> b!275670 (= e!176277 e!176278)))

(declare-fun res!139699 () Bool)

(assert (=> b!275670 (=> (not res!139699) (not e!176278))))

(declare-datatypes ((SeekEntryResult!1646 0))(
  ( (MissingZero!1646 (index!8754 (_ BitVec 32))) (Found!1646 (index!8755 (_ BitVec 32))) (Intermediate!1646 (undefined!2458 Bool) (index!8756 (_ BitVec 32)) (x!26995 (_ BitVec 32))) (Undefined!1646) (MissingVacant!1646 (index!8757 (_ BitVec 32))) )
))
(declare-fun lt!137476 () SeekEntryResult!1646)

(assert (=> b!275670 (= res!139699 (or (= lt!137476 (MissingZero!1646 i!1267)) (= lt!137476 (MissingVacant!1646 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13656 (_ BitVec 32)) SeekEntryResult!1646)

(assert (=> b!275670 (= lt!137476 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275671 () Bool)

(declare-fun res!139697 () Bool)

(assert (=> b!275671 (=> (not res!139697) (not e!176278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13656 (_ BitVec 32)) Bool)

(assert (=> b!275671 (= res!139697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275672 () Bool)

(assert (=> b!275672 (= e!176278 (not true))))

(assert (=> b!275672 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13657 (store (arr!6477 a!3325) i!1267 k!2581) (size!6829 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8686 0))(
  ( (Unit!8687) )
))
(declare-fun lt!137477 () Unit!8686)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13656 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8686)

(assert (=> b!275672 (= lt!137477 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275673 () Bool)

(declare-fun res!139698 () Bool)

(assert (=> b!275673 (=> (not res!139698) (not e!176278))))

(assert (=> b!275673 (= res!139698 (and (bvslt startIndex!26 (bvsub (size!6829 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (= (and start!26570 res!139692) b!275665))

(assert (= (and b!275665 res!139694) b!275667))

(assert (= (and b!275667 res!139700) b!275668))

(assert (= (and b!275668 res!139701) b!275664))

(assert (= (and b!275664 res!139696) b!275670))

(assert (= (and b!275670 res!139699) b!275671))

(assert (= (and b!275671 res!139697) b!275669))

(assert (= (and b!275669 res!139695) b!275666))

(assert (= (and b!275666 res!139693) b!275673))

(assert (= (and b!275673 res!139698) b!275672))

(declare-fun m!291211 () Bool)

(assert (=> b!275666 m!291211))

(assert (=> b!275666 m!291211))

(declare-fun m!291213 () Bool)

(assert (=> b!275666 m!291213))

(declare-fun m!291215 () Bool)

(assert (=> b!275672 m!291215))

(declare-fun m!291217 () Bool)

(assert (=> b!275672 m!291217))

(declare-fun m!291219 () Bool)

(assert (=> b!275672 m!291219))

(declare-fun m!291221 () Bool)

(assert (=> start!26570 m!291221))

(declare-fun m!291223 () Bool)

(assert (=> start!26570 m!291223))

(declare-fun m!291225 () Bool)

(assert (=> b!275670 m!291225))

(declare-fun m!291227 () Bool)

(assert (=> b!275667 m!291227))

(declare-fun m!291229 () Bool)

(assert (=> b!275664 m!291229))

(declare-fun m!291231 () Bool)

(assert (=> b!275668 m!291231))

(declare-fun m!291233 () Bool)

(assert (=> b!275671 m!291233))

(push 1)

(assert (not start!26570))

(assert (not b!275664))

(assert (not b!275666))

(assert (not b!275671))

(assert (not b!275672))

(assert (not b!275670))

(assert (not b!275668))

