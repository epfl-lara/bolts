; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48432 () Bool)

(assert start!48432)

(declare-fun b!531830 () Bool)

(declare-fun e!309709 () Bool)

(declare-fun e!309708 () Bool)

(assert (=> b!531830 (= e!309709 e!309708)))

(declare-fun res!327473 () Bool)

(assert (=> b!531830 (=> (not res!327473) (not e!309708))))

(declare-datatypes ((SeekEntryResult!4651 0))(
  ( (MissingZero!4651 (index!20828 (_ BitVec 32))) (Found!4651 (index!20829 (_ BitVec 32))) (Intermediate!4651 (undefined!5463 Bool) (index!20830 (_ BitVec 32)) (x!49828 (_ BitVec 32))) (Undefined!4651) (MissingVacant!4651 (index!20831 (_ BitVec 32))) )
))
(declare-fun lt!245078 () SeekEntryResult!4651)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531830 (= res!327473 (or (= lt!245078 (MissingZero!4651 i!1153)) (= lt!245078 (MissingVacant!4651 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!33696 0))(
  ( (array!33697 (arr!16186 (Array (_ BitVec 32) (_ BitVec 64))) (size!16550 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33696)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33696 (_ BitVec 32)) SeekEntryResult!4651)

(assert (=> b!531830 (= lt!245078 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!531831 () Bool)

(declare-fun res!327476 () Bool)

(assert (=> b!531831 (=> (not res!327476) (not e!309709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531831 (= res!327476 (validKeyInArray!0 k0!1998))))

(declare-fun b!531832 () Bool)

(declare-fun res!327472 () Bool)

(assert (=> b!531832 (=> (not res!327472) (not e!309709))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!531832 (= res!327472 (validKeyInArray!0 (select (arr!16186 a!3154) j!147)))))

(declare-fun b!531833 () Bool)

(declare-fun res!327477 () Bool)

(assert (=> b!531833 (=> (not res!327477) (not e!309709))))

(assert (=> b!531833 (= res!327477 (and (= (size!16550 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16550 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16550 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531834 () Bool)

(declare-fun res!327475 () Bool)

(assert (=> b!531834 (=> (not res!327475) (not e!309708))))

(declare-datatypes ((List!10358 0))(
  ( (Nil!10355) (Cons!10354 (h!11294 (_ BitVec 64)) (t!16594 List!10358)) )
))
(declare-fun arrayNoDuplicates!0 (array!33696 (_ BitVec 32) List!10358) Bool)

(assert (=> b!531834 (= res!327475 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10355))))

(declare-fun res!327470 () Bool)

(assert (=> start!48432 (=> (not res!327470) (not e!309709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48432 (= res!327470 (validMask!0 mask!3216))))

(assert (=> start!48432 e!309709))

(assert (=> start!48432 true))

(declare-fun array_inv!11960 (array!33696) Bool)

(assert (=> start!48432 (array_inv!11960 a!3154)))

(declare-fun b!531835 () Bool)

(declare-fun res!327474 () Bool)

(assert (=> b!531835 (=> (not res!327474) (not e!309708))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33696 (_ BitVec 32)) SeekEntryResult!4651)

(assert (=> b!531835 (= res!327474 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16186 a!3154) j!147) a!3154 mask!3216) (Intermediate!4651 false resIndex!32 resX!32)))))

(declare-fun b!531836 () Bool)

(declare-fun res!327478 () Bool)

(assert (=> b!531836 (=> (not res!327478) (not e!309708))))

(assert (=> b!531836 (= res!327478 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16550 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16550 a!3154)) (= (select (arr!16186 a!3154) resIndex!32) (select (arr!16186 a!3154) j!147))))))

(declare-fun b!531837 () Bool)

(declare-fun res!327471 () Bool)

(assert (=> b!531837 (=> (not res!327471) (not e!309709))))

(declare-fun arrayContainsKey!0 (array!33696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531837 (= res!327471 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531838 () Bool)

(assert (=> b!531838 (= e!309708 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!531839 () Bool)

(declare-fun res!327479 () Bool)

(assert (=> b!531839 (=> (not res!327479) (not e!309708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33696 (_ BitVec 32)) Bool)

(assert (=> b!531839 (= res!327479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48432 res!327470) b!531833))

(assert (= (and b!531833 res!327477) b!531832))

(assert (= (and b!531832 res!327472) b!531831))

(assert (= (and b!531831 res!327476) b!531837))

(assert (= (and b!531837 res!327471) b!531830))

(assert (= (and b!531830 res!327473) b!531839))

(assert (= (and b!531839 res!327479) b!531834))

(assert (= (and b!531834 res!327475) b!531836))

(assert (= (and b!531836 res!327478) b!531835))

(assert (= (and b!531835 res!327474) b!531838))

(declare-fun m!512177 () Bool)

(assert (=> b!531839 m!512177))

(declare-fun m!512179 () Bool)

(assert (=> b!531830 m!512179))

(declare-fun m!512181 () Bool)

(assert (=> start!48432 m!512181))

(declare-fun m!512183 () Bool)

(assert (=> start!48432 m!512183))

(declare-fun m!512185 () Bool)

(assert (=> b!531837 m!512185))

(declare-fun m!512187 () Bool)

(assert (=> b!531835 m!512187))

(assert (=> b!531835 m!512187))

(declare-fun m!512189 () Bool)

(assert (=> b!531835 m!512189))

(declare-fun m!512191 () Bool)

(assert (=> b!531834 m!512191))

(assert (=> b!531832 m!512187))

(assert (=> b!531832 m!512187))

(declare-fun m!512193 () Bool)

(assert (=> b!531832 m!512193))

(declare-fun m!512195 () Bool)

(assert (=> b!531831 m!512195))

(declare-fun m!512197 () Bool)

(assert (=> b!531836 m!512197))

(assert (=> b!531836 m!512187))

(check-sat (not b!531832) (not b!531837) (not b!531839) (not start!48432) (not b!531834) (not b!531830) (not b!531831) (not b!531835))
(check-sat)
