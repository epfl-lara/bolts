; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28414 () Bool)

(assert start!28414)

(declare-fun b!290765 () Bool)

(declare-fun res!152146 () Bool)

(declare-fun e!183999 () Bool)

(assert (=> b!290765 (=> (not res!152146) (not e!183999))))

(declare-datatypes ((array!14672 0))(
  ( (array!14673 (arr!6961 (Array (_ BitVec 32) (_ BitVec 64))) (size!7313 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14672)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14672 (_ BitVec 32)) Bool)

(assert (=> b!290765 (= res!152146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290766 () Bool)

(declare-fun e!184001 () Bool)

(assert (=> b!290766 (= e!183999 e!184001)))

(declare-fun res!152141 () Bool)

(assert (=> b!290766 (=> (not res!152141) (not e!184001))))

(declare-fun lt!143742 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2121 0))(
  ( (MissingZero!2121 (index!10654 (_ BitVec 32))) (Found!2121 (index!10655 (_ BitVec 32))) (Intermediate!2121 (undefined!2933 Bool) (index!10656 (_ BitVec 32)) (x!28820 (_ BitVec 32))) (Undefined!2121) (MissingVacant!2121 (index!10657 (_ BitVec 32))) )
))
(declare-fun lt!143746 () SeekEntryResult!2121)

(assert (=> b!290766 (= res!152141 (and (not lt!143742) (= lt!143746 (MissingVacant!2121 i!1256))))))

(declare-fun lt!143747 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!143743 () SeekEntryResult!2121)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14672 (_ BitVec 32)) SeekEntryResult!2121)

(assert (=> b!290766 (= lt!143743 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143747 k!2524 (array!14673 (store (arr!6961 a!3312) i!1256 k!2524) (size!7313 a!3312)) mask!3809))))

(declare-fun lt!143744 () SeekEntryResult!2121)

(assert (=> b!290766 (= lt!143744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143747 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290766 (= lt!143747 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290767 () Bool)

(declare-fun e!184002 () Bool)

(assert (=> b!290767 (= e!184001 e!184002)))

(declare-fun res!152147 () Bool)

(assert (=> b!290767 (=> (not res!152147) (not e!184002))))

(declare-fun lt!143745 () Bool)

(assert (=> b!290767 (= res!152147 (and (or lt!143745 (not (undefined!2933 lt!143744))) (not lt!143745) (= (select (arr!6961 a!3312) (index!10656 lt!143744)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290767 (= lt!143745 (not (is-Intermediate!2121 lt!143744)))))

(declare-fun b!290768 () Bool)

(declare-fun res!152142 () Bool)

(declare-fun e!184003 () Bool)

(assert (=> b!290768 (=> (not res!152142) (not e!184003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290768 (= res!152142 (validKeyInArray!0 k!2524))))

(declare-fun b!290769 () Bool)

(assert (=> b!290769 (= e!184003 e!183999)))

(declare-fun res!152148 () Bool)

(assert (=> b!290769 (=> (not res!152148) (not e!183999))))

(assert (=> b!290769 (= res!152148 (or lt!143742 (= lt!143746 (MissingVacant!2121 i!1256))))))

(assert (=> b!290769 (= lt!143742 (= lt!143746 (MissingZero!2121 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14672 (_ BitVec 32)) SeekEntryResult!2121)

(assert (=> b!290769 (= lt!143746 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290770 () Bool)

(declare-fun res!152144 () Bool)

(assert (=> b!290770 (=> (not res!152144) (not e!184003))))

(assert (=> b!290770 (= res!152144 (and (= (size!7313 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7313 a!3312))))))

(declare-fun res!152143 () Bool)

(assert (=> start!28414 (=> (not res!152143) (not e!184003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28414 (= res!152143 (validMask!0 mask!3809))))

(assert (=> start!28414 e!184003))

(assert (=> start!28414 true))

(declare-fun array_inv!4915 (array!14672) Bool)

(assert (=> start!28414 (array_inv!4915 a!3312)))

(declare-fun b!290771 () Bool)

(declare-fun res!152145 () Bool)

(assert (=> b!290771 (=> (not res!152145) (not e!184003))))

(declare-fun arrayContainsKey!0 (array!14672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290771 (= res!152145 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290772 () Bool)

(assert (=> b!290772 (= e!184002 (not true))))

(assert (=> b!290772 (= (index!10656 lt!143744) i!1256)))

(assert (= (and start!28414 res!152143) b!290770))

(assert (= (and b!290770 res!152144) b!290768))

(assert (= (and b!290768 res!152142) b!290771))

(assert (= (and b!290771 res!152145) b!290769))

(assert (= (and b!290769 res!152148) b!290765))

(assert (= (and b!290765 res!152146) b!290766))

(assert (= (and b!290766 res!152141) b!290767))

(assert (= (and b!290767 res!152147) b!290772))

(declare-fun m!304795 () Bool)

(assert (=> b!290771 m!304795))

(declare-fun m!304797 () Bool)

(assert (=> start!28414 m!304797))

(declare-fun m!304799 () Bool)

(assert (=> start!28414 m!304799))

(declare-fun m!304801 () Bool)

(assert (=> b!290766 m!304801))

(declare-fun m!304803 () Bool)

(assert (=> b!290766 m!304803))

(declare-fun m!304805 () Bool)

(assert (=> b!290766 m!304805))

(declare-fun m!304807 () Bool)

(assert (=> b!290766 m!304807))

(declare-fun m!304809 () Bool)

(assert (=> b!290768 m!304809))

(declare-fun m!304811 () Bool)

(assert (=> b!290767 m!304811))

(declare-fun m!304813 () Bool)

(assert (=> b!290769 m!304813))

(declare-fun m!304815 () Bool)

(assert (=> b!290765 m!304815))

(push 1)

