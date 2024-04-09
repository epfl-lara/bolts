; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48912 () Bool)

(assert start!48912)

(declare-fun b!538736 () Bool)

(declare-fun res!334092 () Bool)

(declare-fun e!312380 () Bool)

(assert (=> b!538736 (=> (not res!334092) (not e!312380))))

(declare-datatypes ((array!34080 0))(
  ( (array!34081 (arr!16375 (Array (_ BitVec 32) (_ BitVec 64))) (size!16739 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34080)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34080 (_ BitVec 32)) Bool)

(assert (=> b!538736 (= res!334092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!334096 () Bool)

(declare-fun e!312381 () Bool)

(assert (=> start!48912 (=> (not res!334096) (not e!312381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48912 (= res!334096 (validMask!0 mask!3216))))

(assert (=> start!48912 e!312381))

(assert (=> start!48912 true))

(declare-fun array_inv!12149 (array!34080) Bool)

(assert (=> start!48912 (array_inv!12149 a!3154)))

(declare-fun b!538737 () Bool)

(assert (=> b!538737 (= e!312381 e!312380)))

(declare-fun res!334095 () Bool)

(assert (=> b!538737 (=> (not res!334095) (not e!312380))))

(declare-datatypes ((SeekEntryResult!4840 0))(
  ( (MissingZero!4840 (index!21584 (_ BitVec 32))) (Found!4840 (index!21585 (_ BitVec 32))) (Intermediate!4840 (undefined!5652 Bool) (index!21586 (_ BitVec 32)) (x!50530 (_ BitVec 32))) (Undefined!4840) (MissingVacant!4840 (index!21587 (_ BitVec 32))) )
))
(declare-fun lt!246982 () SeekEntryResult!4840)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538737 (= res!334095 (or (= lt!246982 (MissingZero!4840 i!1153)) (= lt!246982 (MissingVacant!4840 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34080 (_ BitVec 32)) SeekEntryResult!4840)

(assert (=> b!538737 (= lt!246982 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538738 () Bool)

(assert (=> b!538738 (= e!312380 false)))

(declare-fun lt!246983 () Bool)

(declare-datatypes ((List!10547 0))(
  ( (Nil!10544) (Cons!10543 (h!11486 (_ BitVec 64)) (t!16783 List!10547)) )
))
(declare-fun arrayNoDuplicates!0 (array!34080 (_ BitVec 32) List!10547) Bool)

(assert (=> b!538738 (= lt!246983 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10544))))

(declare-fun b!538739 () Bool)

(declare-fun res!334094 () Bool)

(assert (=> b!538739 (=> (not res!334094) (not e!312381))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!538739 (= res!334094 (and (= (size!16739 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16739 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16739 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538740 () Bool)

(declare-fun res!334093 () Bool)

(assert (=> b!538740 (=> (not res!334093) (not e!312381))))

(declare-fun arrayContainsKey!0 (array!34080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538740 (= res!334093 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538741 () Bool)

(declare-fun res!334097 () Bool)

(assert (=> b!538741 (=> (not res!334097) (not e!312381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538741 (= res!334097 (validKeyInArray!0 k0!1998))))

(declare-fun b!538742 () Bool)

(declare-fun res!334091 () Bool)

(assert (=> b!538742 (=> (not res!334091) (not e!312381))))

(assert (=> b!538742 (= res!334091 (validKeyInArray!0 (select (arr!16375 a!3154) j!147)))))

(assert (= (and start!48912 res!334096) b!538739))

(assert (= (and b!538739 res!334094) b!538742))

(assert (= (and b!538742 res!334091) b!538741))

(assert (= (and b!538741 res!334097) b!538740))

(assert (= (and b!538740 res!334093) b!538737))

(assert (= (and b!538737 res!334095) b!538736))

(assert (= (and b!538736 res!334092) b!538738))

(declare-fun m!517891 () Bool)

(assert (=> b!538740 m!517891))

(declare-fun m!517893 () Bool)

(assert (=> b!538742 m!517893))

(assert (=> b!538742 m!517893))

(declare-fun m!517895 () Bool)

(assert (=> b!538742 m!517895))

(declare-fun m!517897 () Bool)

(assert (=> b!538737 m!517897))

(declare-fun m!517899 () Bool)

(assert (=> b!538741 m!517899))

(declare-fun m!517901 () Bool)

(assert (=> b!538736 m!517901))

(declare-fun m!517903 () Bool)

(assert (=> start!48912 m!517903))

(declare-fun m!517905 () Bool)

(assert (=> start!48912 m!517905))

(declare-fun m!517907 () Bool)

(assert (=> b!538738 m!517907))

(check-sat (not b!538741) (not b!538736) (not b!538740) (not b!538737) (not start!48912) (not b!538742) (not b!538738))
(check-sat)
