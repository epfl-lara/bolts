; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26198 () Bool)

(assert start!26198)

(declare-fun b!270549 () Bool)

(declare-fun res!134582 () Bool)

(declare-fun e!174342 () Bool)

(assert (=> b!270549 (=> (not res!134582) (not e!174342))))

(declare-datatypes ((array!13284 0))(
  ( (array!13285 (arr!6291 (Array (_ BitVec 32) (_ BitVec 64))) (size!6643 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13284)

(declare-datatypes ((List!4120 0))(
  ( (Nil!4117) (Cons!4116 (h!4783 (_ BitVec 64)) (t!9210 List!4120)) )
))
(declare-fun arrayNoDuplicates!0 (array!13284 (_ BitVec 32) List!4120) Bool)

(assert (=> b!270549 (= res!134582 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4117))))

(declare-fun b!270550 () Bool)

(declare-fun res!134589 () Bool)

(declare-fun e!174343 () Bool)

(assert (=> b!270550 (=> (not res!134589) (not e!174343))))

(declare-fun contains!1929 (List!4120 (_ BitVec 64)) Bool)

(assert (=> b!270550 (= res!134589 (not (contains!1929 Nil!4117 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270551 () Bool)

(declare-fun res!134581 () Bool)

(assert (=> b!270551 (=> (not res!134581) (not e!174343))))

(declare-fun noDuplicate!118 (List!4120) Bool)

(assert (=> b!270551 (= res!134581 (noDuplicate!118 Nil!4117))))

(declare-fun b!270552 () Bool)

(assert (=> b!270552 (= e!174343 false)))

(declare-fun lt!135694 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!270552 (= lt!135694 (contains!1929 Nil!4117 k!2581))))

(declare-fun b!270553 () Bool)

(assert (=> b!270553 (= e!174342 e!174343)))

(declare-fun res!134583 () Bool)

(assert (=> b!270553 (=> (not res!134583) (not e!174343))))

(declare-datatypes ((SeekEntryResult!1460 0))(
  ( (MissingZero!1460 (index!8010 (_ BitVec 32))) (Found!1460 (index!8011 (_ BitVec 32))) (Intermediate!1460 (undefined!2272 Bool) (index!8012 (_ BitVec 32)) (x!26313 (_ BitVec 32))) (Undefined!1460) (MissingVacant!1460 (index!8013 (_ BitVec 32))) )
))
(declare-fun lt!135695 () SeekEntryResult!1460)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270553 (= res!134583 (or (= lt!135695 (MissingZero!1460 i!1267)) (= lt!135695 (MissingVacant!1460 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13284 (_ BitVec 32)) SeekEntryResult!1460)

(assert (=> b!270553 (= lt!135695 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270554 () Bool)

(declare-fun res!134584 () Bool)

(assert (=> b!270554 (=> (not res!134584) (not e!174343))))

(assert (=> b!270554 (= res!134584 (not (contains!1929 Nil!4117 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270555 () Bool)

(declare-fun res!134586 () Bool)

(assert (=> b!270555 (=> (not res!134586) (not e!174343))))

(assert (=> b!270555 (= res!134586 (and (bvslt (size!6643 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6643 a!3325))))))

(declare-fun b!270556 () Bool)

(declare-fun res!134587 () Bool)

(assert (=> b!270556 (=> (not res!134587) (not e!174343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13284 (_ BitVec 32)) Bool)

(assert (=> b!270556 (= res!134587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!134579 () Bool)

(assert (=> start!26198 (=> (not res!134579) (not e!174342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26198 (= res!134579 (validMask!0 mask!3868))))

(assert (=> start!26198 e!174342))

(declare-fun array_inv!4245 (array!13284) Bool)

(assert (=> start!26198 (array_inv!4245 a!3325)))

(assert (=> start!26198 true))

(declare-fun b!270557 () Bool)

(declare-fun res!134580 () Bool)

(assert (=> b!270557 (=> (not res!134580) (not e!174343))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270557 (= res!134580 (validKeyInArray!0 (select (arr!6291 a!3325) startIndex!26)))))

(declare-fun b!270558 () Bool)

(declare-fun res!134578 () Bool)

(assert (=> b!270558 (=> (not res!134578) (not e!174342))))

(assert (=> b!270558 (= res!134578 (validKeyInArray!0 k!2581))))

(declare-fun b!270559 () Bool)

(declare-fun res!134577 () Bool)

(assert (=> b!270559 (=> (not res!134577) (not e!174342))))

(declare-fun arrayContainsKey!0 (array!13284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270559 (= res!134577 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270560 () Bool)

(declare-fun res!134585 () Bool)

(assert (=> b!270560 (=> (not res!134585) (not e!174342))))

(assert (=> b!270560 (= res!134585 (and (= (size!6643 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6643 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6643 a!3325))))))

(declare-fun b!270561 () Bool)

(declare-fun res!134588 () Bool)

(assert (=> b!270561 (=> (not res!134588) (not e!174343))))

(assert (=> b!270561 (= res!134588 (not (= startIndex!26 i!1267)))))

(assert (= (and start!26198 res!134579) b!270560))

(assert (= (and b!270560 res!134585) b!270558))

(assert (= (and b!270558 res!134578) b!270549))

(assert (= (and b!270549 res!134582) b!270559))

(assert (= (and b!270559 res!134577) b!270553))

(assert (= (and b!270553 res!134583) b!270556))

(assert (= (and b!270556 res!134587) b!270561))

(assert (= (and b!270561 res!134588) b!270557))

(assert (= (and b!270557 res!134580) b!270555))

(assert (= (and b!270555 res!134586) b!270551))

(assert (= (and b!270551 res!134581) b!270554))

(assert (= (and b!270554 res!134584) b!270550))

(assert (= (and b!270550 res!134589) b!270552))

(declare-fun m!286157 () Bool)

(assert (=> b!270551 m!286157))

(declare-fun m!286159 () Bool)

(assert (=> b!270552 m!286159))

(declare-fun m!286161 () Bool)

(assert (=> b!270556 m!286161))

(declare-fun m!286163 () Bool)

(assert (=> b!270558 m!286163))

(declare-fun m!286165 () Bool)

(assert (=> b!270549 m!286165))

(declare-fun m!286167 () Bool)

(assert (=> b!270559 m!286167))

(declare-fun m!286169 () Bool)

(assert (=> b!270554 m!286169))

(declare-fun m!286171 () Bool)

(assert (=> b!270557 m!286171))

(assert (=> b!270557 m!286171))

(declare-fun m!286173 () Bool)

(assert (=> b!270557 m!286173))

(declare-fun m!286175 () Bool)

(assert (=> start!26198 m!286175))

(declare-fun m!286177 () Bool)

(assert (=> start!26198 m!286177))

(declare-fun m!286179 () Bool)

(assert (=> b!270550 m!286179))

(declare-fun m!286181 () Bool)

(assert (=> b!270553 m!286181))

(push 1)

