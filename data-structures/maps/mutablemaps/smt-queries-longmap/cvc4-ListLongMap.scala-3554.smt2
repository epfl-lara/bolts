; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48914 () Bool)

(assert start!48914)

(declare-fun b!538757 () Bool)

(declare-fun e!312389 () Bool)

(assert (=> b!538757 (= e!312389 false)))

(declare-fun lt!246988 () Bool)

(declare-datatypes ((array!34082 0))(
  ( (array!34083 (arr!16376 (Array (_ BitVec 32) (_ BitVec 64))) (size!16740 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34082)

(declare-datatypes ((List!10548 0))(
  ( (Nil!10545) (Cons!10544 (h!11487 (_ BitVec 64)) (t!16784 List!10548)) )
))
(declare-fun arrayNoDuplicates!0 (array!34082 (_ BitVec 32) List!10548) Bool)

(assert (=> b!538757 (= lt!246988 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10545))))

(declare-fun b!538758 () Bool)

(declare-fun res!334118 () Bool)

(declare-fun e!312390 () Bool)

(assert (=> b!538758 (=> (not res!334118) (not e!312390))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538758 (= res!334118 (validKeyInArray!0 (select (arr!16376 a!3154) j!147)))))

(declare-fun b!538759 () Bool)

(declare-fun res!334112 () Bool)

(assert (=> b!538759 (=> (not res!334112) (not e!312390))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!538759 (= res!334112 (validKeyInArray!0 k!1998))))

(declare-fun b!538760 () Bool)

(declare-fun res!334117 () Bool)

(assert (=> b!538760 (=> (not res!334117) (not e!312389))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34082 (_ BitVec 32)) Bool)

(assert (=> b!538760 (= res!334117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!334116 () Bool)

(assert (=> start!48914 (=> (not res!334116) (not e!312390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48914 (= res!334116 (validMask!0 mask!3216))))

(assert (=> start!48914 e!312390))

(assert (=> start!48914 true))

(declare-fun array_inv!12150 (array!34082) Bool)

(assert (=> start!48914 (array_inv!12150 a!3154)))

(declare-fun b!538761 () Bool)

(declare-fun res!334113 () Bool)

(assert (=> b!538761 (=> (not res!334113) (not e!312390))))

(declare-fun arrayContainsKey!0 (array!34082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538761 (= res!334113 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538762 () Bool)

(assert (=> b!538762 (= e!312390 e!312389)))

(declare-fun res!334114 () Bool)

(assert (=> b!538762 (=> (not res!334114) (not e!312389))))

(declare-datatypes ((SeekEntryResult!4841 0))(
  ( (MissingZero!4841 (index!21588 (_ BitVec 32))) (Found!4841 (index!21589 (_ BitVec 32))) (Intermediate!4841 (undefined!5653 Bool) (index!21590 (_ BitVec 32)) (x!50531 (_ BitVec 32))) (Undefined!4841) (MissingVacant!4841 (index!21591 (_ BitVec 32))) )
))
(declare-fun lt!246989 () SeekEntryResult!4841)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538762 (= res!334114 (or (= lt!246989 (MissingZero!4841 i!1153)) (= lt!246989 (MissingVacant!4841 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34082 (_ BitVec 32)) SeekEntryResult!4841)

(assert (=> b!538762 (= lt!246989 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538763 () Bool)

(declare-fun res!334115 () Bool)

(assert (=> b!538763 (=> (not res!334115) (not e!312390))))

(assert (=> b!538763 (= res!334115 (and (= (size!16740 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16740 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16740 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48914 res!334116) b!538763))

(assert (= (and b!538763 res!334115) b!538758))

(assert (= (and b!538758 res!334118) b!538759))

(assert (= (and b!538759 res!334112) b!538761))

(assert (= (and b!538761 res!334113) b!538762))

(assert (= (and b!538762 res!334114) b!538760))

(assert (= (and b!538760 res!334117) b!538757))

(declare-fun m!517909 () Bool)

(assert (=> b!538762 m!517909))

(declare-fun m!517911 () Bool)

(assert (=> b!538757 m!517911))

(declare-fun m!517913 () Bool)

(assert (=> b!538759 m!517913))

(declare-fun m!517915 () Bool)

(assert (=> b!538758 m!517915))

(assert (=> b!538758 m!517915))

(declare-fun m!517917 () Bool)

(assert (=> b!538758 m!517917))

(declare-fun m!517919 () Bool)

(assert (=> b!538761 m!517919))

(declare-fun m!517921 () Bool)

(assert (=> b!538760 m!517921))

(declare-fun m!517923 () Bool)

(assert (=> start!48914 m!517923))

(declare-fun m!517925 () Bool)

(assert (=> start!48914 m!517925))

(push 1)

(assert (not start!48914))

(assert (not b!538761))

(assert (not b!538762))

(assert (not b!538758))

(assert (not b!538759))

(assert (not b!538757))

