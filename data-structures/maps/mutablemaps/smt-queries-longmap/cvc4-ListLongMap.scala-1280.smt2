; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26252 () Bool)

(assert start!26252)

(declare-fun b!271602 () Bool)

(declare-fun e!174585 () Bool)

(declare-fun e!174584 () Bool)

(assert (=> b!271602 (= e!174585 e!174584)))

(declare-fun res!135632 () Bool)

(assert (=> b!271602 (=> (not res!135632) (not e!174584))))

(declare-datatypes ((SeekEntryResult!1487 0))(
  ( (MissingZero!1487 (index!8118 (_ BitVec 32))) (Found!1487 (index!8119 (_ BitVec 32))) (Intermediate!1487 (undefined!2299 Bool) (index!8120 (_ BitVec 32)) (x!26412 (_ BitVec 32))) (Undefined!1487) (MissingVacant!1487 (index!8121 (_ BitVec 32))) )
))
(declare-fun lt!135857 () SeekEntryResult!1487)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271602 (= res!135632 (or (= lt!135857 (MissingZero!1487 i!1267)) (= lt!135857 (MissingVacant!1487 i!1267))))))

(declare-datatypes ((array!13338 0))(
  ( (array!13339 (arr!6318 (Array (_ BitVec 32) (_ BitVec 64))) (size!6670 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13338)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13338 (_ BitVec 32)) SeekEntryResult!1487)

(assert (=> b!271602 (= lt!135857 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271603 () Bool)

(declare-fun res!135640 () Bool)

(assert (=> b!271603 (=> (not res!135640) (not e!174584))))

(declare-datatypes ((List!4147 0))(
  ( (Nil!4144) (Cons!4143 (h!4810 (_ BitVec 64)) (t!9237 List!4147)) )
))
(declare-fun contains!1956 (List!4147 (_ BitVec 64)) Bool)

(assert (=> b!271603 (= res!135640 (not (contains!1956 Nil!4144 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271604 () Bool)

(declare-fun res!135631 () Bool)

(assert (=> b!271604 (=> (not res!135631) (not e!174584))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271604 (= res!135631 (not (= startIndex!26 i!1267)))))

(declare-fun b!271605 () Bool)

(declare-fun res!135641 () Bool)

(assert (=> b!271605 (=> (not res!135641) (not e!174585))))

(declare-fun arrayNoDuplicates!0 (array!13338 (_ BitVec 32) List!4147) Bool)

(assert (=> b!271605 (= res!135641 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4144))))

(declare-fun b!271606 () Bool)

(declare-fun res!135634 () Bool)

(assert (=> b!271606 (=> (not res!135634) (not e!174585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271606 (= res!135634 (validKeyInArray!0 k!2581))))

(declare-fun b!271607 () Bool)

(declare-fun res!135642 () Bool)

(assert (=> b!271607 (=> (not res!135642) (not e!174584))))

(declare-fun noDuplicate!145 (List!4147) Bool)

(assert (=> b!271607 (= res!135642 (noDuplicate!145 Nil!4144))))

(declare-fun b!271608 () Bool)

(declare-fun res!135630 () Bool)

(assert (=> b!271608 (=> (not res!135630) (not e!174584))))

(assert (=> b!271608 (= res!135630 (validKeyInArray!0 (select (arr!6318 a!3325) startIndex!26)))))

(declare-fun b!271609 () Bool)

(declare-fun res!135633 () Bool)

(assert (=> b!271609 (=> (not res!135633) (not e!174585))))

(declare-fun arrayContainsKey!0 (array!13338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271609 (= res!135633 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271610 () Bool)

(assert (=> b!271610 (= e!174584 false)))

(declare-fun lt!135856 () Bool)

(assert (=> b!271610 (= lt!135856 (contains!1956 Nil!4144 k!2581))))

(declare-fun b!271612 () Bool)

(declare-fun res!135635 () Bool)

(assert (=> b!271612 (=> (not res!135635) (not e!174585))))

(assert (=> b!271612 (= res!135635 (and (= (size!6670 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6670 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6670 a!3325))))))

(declare-fun b!271613 () Bool)

(declare-fun res!135636 () Bool)

(assert (=> b!271613 (=> (not res!135636) (not e!174584))))

(assert (=> b!271613 (= res!135636 (not (contains!1956 Nil!4144 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271614 () Bool)

(declare-fun res!135638 () Bool)

(assert (=> b!271614 (=> (not res!135638) (not e!174584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13338 (_ BitVec 32)) Bool)

(assert (=> b!271614 (= res!135638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!135637 () Bool)

(assert (=> start!26252 (=> (not res!135637) (not e!174585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26252 (= res!135637 (validMask!0 mask!3868))))

(assert (=> start!26252 e!174585))

(declare-fun array_inv!4272 (array!13338) Bool)

(assert (=> start!26252 (array_inv!4272 a!3325)))

(assert (=> start!26252 true))

(declare-fun b!271611 () Bool)

(declare-fun res!135639 () Bool)

(assert (=> b!271611 (=> (not res!135639) (not e!174584))))

(assert (=> b!271611 (= res!135639 (and (bvslt (size!6670 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6670 a!3325))))))

(assert (= (and start!26252 res!135637) b!271612))

(assert (= (and b!271612 res!135635) b!271606))

(assert (= (and b!271606 res!135634) b!271605))

(assert (= (and b!271605 res!135641) b!271609))

(assert (= (and b!271609 res!135633) b!271602))

(assert (= (and b!271602 res!135632) b!271614))

(assert (= (and b!271614 res!135638) b!271604))

(assert (= (and b!271604 res!135631) b!271608))

(assert (= (and b!271608 res!135630) b!271611))

(assert (= (and b!271611 res!135639) b!271607))

(assert (= (and b!271607 res!135642) b!271603))

(assert (= (and b!271603 res!135640) b!271613))

(assert (= (and b!271613 res!135636) b!271610))

(declare-fun m!286859 () Bool)

(assert (=> b!271613 m!286859))

(declare-fun m!286861 () Bool)

(assert (=> b!271609 m!286861))

(declare-fun m!286863 () Bool)

(assert (=> b!271605 m!286863))

(declare-fun m!286865 () Bool)

(assert (=> b!271602 m!286865))

(declare-fun m!286867 () Bool)

(assert (=> b!271606 m!286867))

(declare-fun m!286869 () Bool)

(assert (=> b!271608 m!286869))

(assert (=> b!271608 m!286869))

(declare-fun m!286871 () Bool)

(assert (=> b!271608 m!286871))

(declare-fun m!286873 () Bool)

(assert (=> b!271614 m!286873))

(declare-fun m!286875 () Bool)

(assert (=> b!271610 m!286875))

(declare-fun m!286877 () Bool)

(assert (=> start!26252 m!286877))

(declare-fun m!286879 () Bool)

(assert (=> start!26252 m!286879))

(declare-fun m!286881 () Bool)

(assert (=> b!271603 m!286881))

(declare-fun m!286883 () Bool)

(assert (=> b!271607 m!286883))

(push 1)

