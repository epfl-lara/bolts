; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26686 () Bool)

(assert start!26686)

(declare-fun b!276829 () Bool)

(declare-fun e!176798 () Bool)

(assert (=> b!276829 (= e!176798 false)))

(declare-fun lt!137797 () Bool)

(declare-datatypes ((array!13772 0))(
  ( (array!13773 (arr!6535 (Array (_ BitVec 32) (_ BitVec 64))) (size!6887 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13772)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13772 (_ BitVec 32)) Bool)

(assert (=> b!276829 (= lt!137797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276830 () Bool)

(declare-fun e!176799 () Bool)

(assert (=> b!276830 (= e!176799 e!176798)))

(declare-fun res!140859 () Bool)

(assert (=> b!276830 (=> (not res!140859) (not e!176798))))

(declare-datatypes ((SeekEntryResult!1704 0))(
  ( (MissingZero!1704 (index!8986 (_ BitVec 32))) (Found!1704 (index!8987 (_ BitVec 32))) (Intermediate!1704 (undefined!2516 Bool) (index!8988 (_ BitVec 32)) (x!27213 (_ BitVec 32))) (Undefined!1704) (MissingVacant!1704 (index!8989 (_ BitVec 32))) )
))
(declare-fun lt!137798 () SeekEntryResult!1704)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276830 (= res!140859 (or (= lt!137798 (MissingZero!1704 i!1267)) (= lt!137798 (MissingVacant!1704 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13772 (_ BitVec 32)) SeekEntryResult!1704)

(assert (=> b!276830 (= lt!137798 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276832 () Bool)

(declare-fun res!140860 () Bool)

(assert (=> b!276832 (=> (not res!140860) (not e!176799))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276832 (= res!140860 (and (= (size!6887 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6887 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6887 a!3325))))))

(declare-fun b!276833 () Bool)

(declare-fun res!140861 () Bool)

(assert (=> b!276833 (=> (not res!140861) (not e!176799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276833 (= res!140861 (validKeyInArray!0 k!2581))))

(declare-fun b!276834 () Bool)

(declare-fun res!140858 () Bool)

(assert (=> b!276834 (=> (not res!140858) (not e!176799))))

(declare-fun arrayContainsKey!0 (array!13772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276834 (= res!140858 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140857 () Bool)

(assert (=> start!26686 (=> (not res!140857) (not e!176799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26686 (= res!140857 (validMask!0 mask!3868))))

(assert (=> start!26686 e!176799))

(declare-fun array_inv!4489 (array!13772) Bool)

(assert (=> start!26686 (array_inv!4489 a!3325)))

(assert (=> start!26686 true))

(declare-fun b!276831 () Bool)

(declare-fun res!140862 () Bool)

(assert (=> b!276831 (=> (not res!140862) (not e!176799))))

(declare-datatypes ((List!4364 0))(
  ( (Nil!4361) (Cons!4360 (h!5027 (_ BitVec 64)) (t!9454 List!4364)) )
))
(declare-fun arrayNoDuplicates!0 (array!13772 (_ BitVec 32) List!4364) Bool)

(assert (=> b!276831 (= res!140862 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4361))))

(assert (= (and start!26686 res!140857) b!276832))

(assert (= (and b!276832 res!140860) b!276833))

(assert (= (and b!276833 res!140861) b!276831))

(assert (= (and b!276831 res!140862) b!276834))

(assert (= (and b!276834 res!140858) b!276830))

(assert (= (and b!276830 res!140859) b!276829))

(declare-fun m!292105 () Bool)

(assert (=> b!276833 m!292105))

(declare-fun m!292107 () Bool)

(assert (=> b!276831 m!292107))

(declare-fun m!292109 () Bool)

(assert (=> start!26686 m!292109))

(declare-fun m!292111 () Bool)

(assert (=> start!26686 m!292111))

(declare-fun m!292113 () Bool)

(assert (=> b!276830 m!292113))

(declare-fun m!292115 () Bool)

(assert (=> b!276829 m!292115))

(declare-fun m!292117 () Bool)

(assert (=> b!276834 m!292117))

(push 1)

(assert (not b!276829))

(assert (not start!26686))

(assert (not b!276833))

(assert (not b!276830))

(assert (not b!276831))

(assert (not b!276834))

(check-sat)

