; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26672 () Bool)

(assert start!26672)

(declare-fun b!276703 () Bool)

(declare-fun res!140735 () Bool)

(declare-fun e!176736 () Bool)

(assert (=> b!276703 (=> (not res!140735) (not e!176736))))

(declare-datatypes ((array!13758 0))(
  ( (array!13759 (arr!6528 (Array (_ BitVec 32) (_ BitVec 64))) (size!6880 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13758)

(declare-datatypes ((List!4357 0))(
  ( (Nil!4354) (Cons!4353 (h!5020 (_ BitVec 64)) (t!9447 List!4357)) )
))
(declare-fun arrayNoDuplicates!0 (array!13758 (_ BitVec 32) List!4357) Bool)

(assert (=> b!276703 (= res!140735 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4354))))

(declare-fun b!276704 () Bool)

(declare-fun res!140734 () Bool)

(assert (=> b!276704 (=> (not res!140734) (not e!176736))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276704 (= res!140734 (and (= (size!6880 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6880 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6880 a!3325))))))

(declare-fun b!276705 () Bool)

(declare-fun res!140733 () Bool)

(assert (=> b!276705 (=> (not res!140733) (not e!176736))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276705 (= res!140733 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276706 () Bool)

(declare-fun e!176737 () Bool)

(assert (=> b!276706 (= e!176736 e!176737)))

(declare-fun res!140732 () Bool)

(assert (=> b!276706 (=> (not res!140732) (not e!176737))))

(declare-datatypes ((SeekEntryResult!1697 0))(
  ( (MissingZero!1697 (index!8958 (_ BitVec 32))) (Found!1697 (index!8959 (_ BitVec 32))) (Intermediate!1697 (undefined!2509 Bool) (index!8960 (_ BitVec 32)) (x!27182 (_ BitVec 32))) (Undefined!1697) (MissingVacant!1697 (index!8961 (_ BitVec 32))) )
))
(declare-fun lt!137756 () SeekEntryResult!1697)

(assert (=> b!276706 (= res!140732 (or (= lt!137756 (MissingZero!1697 i!1267)) (= lt!137756 (MissingVacant!1697 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13758 (_ BitVec 32)) SeekEntryResult!1697)

(assert (=> b!276706 (= lt!137756 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276707 () Bool)

(assert (=> b!276707 (= e!176737 false)))

(declare-fun lt!137755 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13758 (_ BitVec 32)) Bool)

(assert (=> b!276707 (= lt!137755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276708 () Bool)

(declare-fun res!140731 () Bool)

(assert (=> b!276708 (=> (not res!140731) (not e!176736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276708 (= res!140731 (validKeyInArray!0 k!2581))))

(declare-fun res!140736 () Bool)

(assert (=> start!26672 (=> (not res!140736) (not e!176736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26672 (= res!140736 (validMask!0 mask!3868))))

(assert (=> start!26672 e!176736))

(declare-fun array_inv!4482 (array!13758) Bool)

(assert (=> start!26672 (array_inv!4482 a!3325)))

(assert (=> start!26672 true))

(assert (= (and start!26672 res!140736) b!276704))

(assert (= (and b!276704 res!140734) b!276708))

(assert (= (and b!276708 res!140731) b!276703))

(assert (= (and b!276703 res!140735) b!276705))

(assert (= (and b!276705 res!140733) b!276706))

(assert (= (and b!276706 res!140732) b!276707))

(declare-fun m!292007 () Bool)

(assert (=> b!276706 m!292007))

(declare-fun m!292009 () Bool)

(assert (=> start!26672 m!292009))

(declare-fun m!292011 () Bool)

(assert (=> start!26672 m!292011))

(declare-fun m!292013 () Bool)

(assert (=> b!276707 m!292013))

(declare-fun m!292015 () Bool)

(assert (=> b!276705 m!292015))

(declare-fun m!292017 () Bool)

(assert (=> b!276708 m!292017))

(declare-fun m!292019 () Bool)

(assert (=> b!276703 m!292019))

(push 1)

(assert (not b!276707))

(assert (not b!276708))

(assert (not b!276703))

(assert (not start!26672))

(assert (not b!276706))

(assert (not b!276705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

