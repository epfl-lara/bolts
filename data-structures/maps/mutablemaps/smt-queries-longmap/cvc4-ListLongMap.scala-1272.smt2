; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26204 () Bool)

(assert start!26204)

(declare-fun b!270666 () Bool)

(declare-fun res!134702 () Bool)

(declare-fun e!174370 () Bool)

(assert (=> b!270666 (=> (not res!134702) (not e!174370))))

(declare-datatypes ((List!4123 0))(
  ( (Nil!4120) (Cons!4119 (h!4786 (_ BitVec 64)) (t!9213 List!4123)) )
))
(declare-fun contains!1932 (List!4123 (_ BitVec 64)) Bool)

(assert (=> b!270666 (= res!134702 (not (contains!1932 Nil!4120 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270667 () Bool)

(assert (=> b!270667 (= e!174370 false)))

(declare-fun lt!135712 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!270667 (= lt!135712 (contains!1932 Nil!4120 k!2581))))

(declare-fun b!270668 () Bool)

(declare-fun res!134703 () Bool)

(assert (=> b!270668 (=> (not res!134703) (not e!174370))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270668 (= res!134703 (not (= startIndex!26 i!1267)))))

(declare-fun b!270669 () Bool)

(declare-fun res!134694 () Bool)

(declare-fun e!174368 () Bool)

(assert (=> b!270669 (=> (not res!134694) (not e!174368))))

(declare-datatypes ((array!13290 0))(
  ( (array!13291 (arr!6294 (Array (_ BitVec 32) (_ BitVec 64))) (size!6646 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13290)

(declare-fun arrayContainsKey!0 (array!13290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270669 (= res!134694 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270670 () Bool)

(assert (=> b!270670 (= e!174368 e!174370)))

(declare-fun res!134706 () Bool)

(assert (=> b!270670 (=> (not res!134706) (not e!174370))))

(declare-datatypes ((SeekEntryResult!1463 0))(
  ( (MissingZero!1463 (index!8022 (_ BitVec 32))) (Found!1463 (index!8023 (_ BitVec 32))) (Intermediate!1463 (undefined!2275 Bool) (index!8024 (_ BitVec 32)) (x!26324 (_ BitVec 32))) (Undefined!1463) (MissingVacant!1463 (index!8025 (_ BitVec 32))) )
))
(declare-fun lt!135713 () SeekEntryResult!1463)

(assert (=> b!270670 (= res!134706 (or (= lt!135713 (MissingZero!1463 i!1267)) (= lt!135713 (MissingVacant!1463 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13290 (_ BitVec 32)) SeekEntryResult!1463)

(assert (=> b!270670 (= lt!135713 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270671 () Bool)

(declare-fun res!134704 () Bool)

(assert (=> b!270671 (=> (not res!134704) (not e!174368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270671 (= res!134704 (validKeyInArray!0 k!2581))))

(declare-fun b!270672 () Bool)

(declare-fun res!134696 () Bool)

(assert (=> b!270672 (=> (not res!134696) (not e!174370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13290 (_ BitVec 32)) Bool)

(assert (=> b!270672 (= res!134696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270673 () Bool)

(declare-fun res!134697 () Bool)

(assert (=> b!270673 (=> (not res!134697) (not e!174370))))

(assert (=> b!270673 (= res!134697 (and (bvslt (size!6646 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6646 a!3325))))))

(declare-fun b!270674 () Bool)

(declare-fun res!134705 () Bool)

(assert (=> b!270674 (=> (not res!134705) (not e!174368))))

(assert (=> b!270674 (= res!134705 (and (= (size!6646 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6646 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6646 a!3325))))))

(declare-fun b!270675 () Bool)

(declare-fun res!134701 () Bool)

(assert (=> b!270675 (=> (not res!134701) (not e!174370))))

(assert (=> b!270675 (= res!134701 (validKeyInArray!0 (select (arr!6294 a!3325) startIndex!26)))))

(declare-fun b!270676 () Bool)

(declare-fun res!134699 () Bool)

(assert (=> b!270676 (=> (not res!134699) (not e!174370))))

(assert (=> b!270676 (= res!134699 (not (contains!1932 Nil!4120 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270678 () Bool)

(declare-fun res!134700 () Bool)

(assert (=> b!270678 (=> (not res!134700) (not e!174370))))

(declare-fun noDuplicate!121 (List!4123) Bool)

(assert (=> b!270678 (= res!134700 (noDuplicate!121 Nil!4120))))

(declare-fun b!270677 () Bool)

(declare-fun res!134698 () Bool)

(assert (=> b!270677 (=> (not res!134698) (not e!174368))))

(declare-fun arrayNoDuplicates!0 (array!13290 (_ BitVec 32) List!4123) Bool)

(assert (=> b!270677 (= res!134698 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4120))))

(declare-fun res!134695 () Bool)

(assert (=> start!26204 (=> (not res!134695) (not e!174368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26204 (= res!134695 (validMask!0 mask!3868))))

(assert (=> start!26204 e!174368))

(declare-fun array_inv!4248 (array!13290) Bool)

(assert (=> start!26204 (array_inv!4248 a!3325)))

(assert (=> start!26204 true))

(assert (= (and start!26204 res!134695) b!270674))

(assert (= (and b!270674 res!134705) b!270671))

(assert (= (and b!270671 res!134704) b!270677))

(assert (= (and b!270677 res!134698) b!270669))

(assert (= (and b!270669 res!134694) b!270670))

(assert (= (and b!270670 res!134706) b!270672))

(assert (= (and b!270672 res!134696) b!270668))

(assert (= (and b!270668 res!134703) b!270675))

(assert (= (and b!270675 res!134701) b!270673))

(assert (= (and b!270673 res!134697) b!270678))

(assert (= (and b!270678 res!134700) b!270666))

(assert (= (and b!270666 res!134702) b!270676))

(assert (= (and b!270676 res!134699) b!270667))

(declare-fun m!286235 () Bool)

(assert (=> b!270675 m!286235))

(assert (=> b!270675 m!286235))

(declare-fun m!286237 () Bool)

(assert (=> b!270675 m!286237))

(declare-fun m!286239 () Bool)

(assert (=> b!270667 m!286239))

(declare-fun m!286241 () Bool)

(assert (=> b!270672 m!286241))

(declare-fun m!286243 () Bool)

(assert (=> b!270669 m!286243))

(declare-fun m!286245 () Bool)

(assert (=> b!270676 m!286245))

(declare-fun m!286247 () Bool)

(assert (=> b!270678 m!286247))

(declare-fun m!286249 () Bool)

(assert (=> start!26204 m!286249))

(declare-fun m!286251 () Bool)

(assert (=> start!26204 m!286251))

(declare-fun m!286253 () Bool)

(assert (=> b!270671 m!286253))

(declare-fun m!286255 () Bool)

(assert (=> b!270677 m!286255))

(declare-fun m!286257 () Bool)

(assert (=> b!270666 m!286257))

(declare-fun m!286259 () Bool)

(assert (=> b!270670 m!286259))

(push 1)

