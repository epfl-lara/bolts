; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48434 () Bool)

(assert start!48434)

(declare-fun b!531860 () Bool)

(declare-fun res!327504 () Bool)

(declare-fun e!309717 () Bool)

(assert (=> b!531860 (=> (not res!327504) (not e!309717))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33698 0))(
  ( (array!33699 (arr!16187 (Array (_ BitVec 32) (_ BitVec 64))) (size!16551 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33698)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531860 (= res!327504 (and (= (size!16551 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16551 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16551 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531861 () Bool)

(declare-fun res!327503 () Bool)

(declare-fun e!309718 () Bool)

(assert (=> b!531861 (=> (not res!327503) (not e!309718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33698 (_ BitVec 32)) Bool)

(assert (=> b!531861 (= res!327503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531862 () Bool)

(assert (=> b!531862 (= e!309718 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!531863 () Bool)

(declare-fun res!327508 () Bool)

(assert (=> b!531863 (=> (not res!327508) (not e!309717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531863 (= res!327508 (validKeyInArray!0 (select (arr!16187 a!3154) j!147)))))

(declare-fun b!531864 () Bool)

(declare-fun res!327509 () Bool)

(assert (=> b!531864 (=> (not res!327509) (not e!309717))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531864 (= res!327509 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531865 () Bool)

(declare-fun res!327501 () Bool)

(assert (=> b!531865 (=> (not res!327501) (not e!309718))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!531865 (= res!327501 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16551 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16551 a!3154)) (= (select (arr!16187 a!3154) resIndex!32) (select (arr!16187 a!3154) j!147))))))

(declare-fun b!531866 () Bool)

(declare-fun res!327502 () Bool)

(assert (=> b!531866 (=> (not res!327502) (not e!309718))))

(declare-datatypes ((SeekEntryResult!4652 0))(
  ( (MissingZero!4652 (index!20832 (_ BitVec 32))) (Found!4652 (index!20833 (_ BitVec 32))) (Intermediate!4652 (undefined!5464 Bool) (index!20834 (_ BitVec 32)) (x!49829 (_ BitVec 32))) (Undefined!4652) (MissingVacant!4652 (index!20835 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33698 (_ BitVec 32)) SeekEntryResult!4652)

(assert (=> b!531866 (= res!327502 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16187 a!3154) j!147) a!3154 mask!3216) (Intermediate!4652 false resIndex!32 resX!32)))))

(declare-fun b!531867 () Bool)

(declare-fun res!327505 () Bool)

(assert (=> b!531867 (=> (not res!327505) (not e!309717))))

(assert (=> b!531867 (= res!327505 (validKeyInArray!0 k!1998))))

(declare-fun res!327506 () Bool)

(assert (=> start!48434 (=> (not res!327506) (not e!309717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48434 (= res!327506 (validMask!0 mask!3216))))

(assert (=> start!48434 e!309717))

(assert (=> start!48434 true))

(declare-fun array_inv!11961 (array!33698) Bool)

(assert (=> start!48434 (array_inv!11961 a!3154)))

(declare-fun b!531868 () Bool)

(assert (=> b!531868 (= e!309717 e!309718)))

(declare-fun res!327507 () Bool)

(assert (=> b!531868 (=> (not res!327507) (not e!309718))))

(declare-fun lt!245081 () SeekEntryResult!4652)

(assert (=> b!531868 (= res!327507 (or (= lt!245081 (MissingZero!4652 i!1153)) (= lt!245081 (MissingVacant!4652 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33698 (_ BitVec 32)) SeekEntryResult!4652)

(assert (=> b!531868 (= lt!245081 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531869 () Bool)

(declare-fun res!327500 () Bool)

(assert (=> b!531869 (=> (not res!327500) (not e!309718))))

(declare-datatypes ((List!10359 0))(
  ( (Nil!10356) (Cons!10355 (h!11295 (_ BitVec 64)) (t!16595 List!10359)) )
))
(declare-fun arrayNoDuplicates!0 (array!33698 (_ BitVec 32) List!10359) Bool)

(assert (=> b!531869 (= res!327500 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10356))))

(assert (= (and start!48434 res!327506) b!531860))

(assert (= (and b!531860 res!327504) b!531863))

(assert (= (and b!531863 res!327508) b!531867))

(assert (= (and b!531867 res!327505) b!531864))

(assert (= (and b!531864 res!327509) b!531868))

(assert (= (and b!531868 res!327507) b!531861))

(assert (= (and b!531861 res!327503) b!531869))

(assert (= (and b!531869 res!327500) b!531865))

(assert (= (and b!531865 res!327501) b!531866))

(assert (= (and b!531866 res!327502) b!531862))

(declare-fun m!512199 () Bool)

(assert (=> b!531867 m!512199))

(declare-fun m!512201 () Bool)

(assert (=> b!531864 m!512201))

(declare-fun m!512203 () Bool)

(assert (=> b!531869 m!512203))

(declare-fun m!512205 () Bool)

(assert (=> b!531863 m!512205))

(assert (=> b!531863 m!512205))

(declare-fun m!512207 () Bool)

(assert (=> b!531863 m!512207))

(declare-fun m!512209 () Bool)

(assert (=> start!48434 m!512209))

(declare-fun m!512211 () Bool)

(assert (=> start!48434 m!512211))

(declare-fun m!512213 () Bool)

(assert (=> b!531868 m!512213))

(declare-fun m!512215 () Bool)

(assert (=> b!531865 m!512215))

(assert (=> b!531865 m!512205))

(declare-fun m!512217 () Bool)

(assert (=> b!531861 m!512217))

(assert (=> b!531866 m!512205))

(assert (=> b!531866 m!512205))

(declare-fun m!512219 () Bool)

(assert (=> b!531866 m!512219))

(push 1)

(assert (not b!531864))

(assert (not b!531869))

(assert (not b!531863))

(assert (not b!531867))

(assert (not b!531866))

(assert (not start!48434))

(assert (not b!531861))

(assert (not b!531868))

(check-sat)

