; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48402 () Bool)

(assert start!48402)

(declare-fun b!531478 () Bool)

(declare-fun e!309574 () Bool)

(declare-fun e!309573 () Bool)

(assert (=> b!531478 (= e!309574 e!309573)))

(declare-fun res!327121 () Bool)

(assert (=> b!531478 (=> (not res!327121) (not e!309573))))

(declare-datatypes ((SeekEntryResult!4636 0))(
  ( (MissingZero!4636 (index!20768 (_ BitVec 32))) (Found!4636 (index!20769 (_ BitVec 32))) (Intermediate!4636 (undefined!5448 Bool) (index!20770 (_ BitVec 32)) (x!49773 (_ BitVec 32))) (Undefined!4636) (MissingVacant!4636 (index!20771 (_ BitVec 32))) )
))
(declare-fun lt!245015 () SeekEntryResult!4636)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531478 (= res!327121 (or (= lt!245015 (MissingZero!4636 i!1153)) (= lt!245015 (MissingVacant!4636 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-datatypes ((array!33666 0))(
  ( (array!33667 (arr!16171 (Array (_ BitVec 32) (_ BitVec 64))) (size!16535 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33666)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33666 (_ BitVec 32)) SeekEntryResult!4636)

(assert (=> b!531478 (= lt!245015 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!531479 () Bool)

(declare-fun res!327124 () Bool)

(assert (=> b!531479 (=> (not res!327124) (not e!309574))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531479 (= res!327124 (validKeyInArray!0 (select (arr!16171 a!3154) j!147)))))

(declare-fun b!531480 () Bool)

(declare-fun res!327125 () Bool)

(assert (=> b!531480 (=> (not res!327125) (not e!309573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33666 (_ BitVec 32)) Bool)

(assert (=> b!531480 (= res!327125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531481 () Bool)

(declare-fun res!327122 () Bool)

(assert (=> b!531481 (=> (not res!327122) (not e!309574))))

(assert (=> b!531481 (= res!327122 (and (= (size!16535 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16535 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16535 a!3154)) (not (= i!1153 j!147))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun b!531482 () Bool)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!531482 (= e!309573 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16535 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16535 a!3154)) (= (select (arr!16171 a!3154) resIndex!32) (select (arr!16171 a!3154) j!147)) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun res!327123 () Bool)

(assert (=> start!48402 (=> (not res!327123) (not e!309574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48402 (= res!327123 (validMask!0 mask!3216))))

(assert (=> start!48402 e!309574))

(assert (=> start!48402 true))

(declare-fun array_inv!11945 (array!33666) Bool)

(assert (=> start!48402 (array_inv!11945 a!3154)))

(declare-fun b!531483 () Bool)

(declare-fun res!327119 () Bool)

(assert (=> b!531483 (=> (not res!327119) (not e!309574))))

(declare-fun arrayContainsKey!0 (array!33666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531483 (= res!327119 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531484 () Bool)

(declare-fun res!327120 () Bool)

(assert (=> b!531484 (=> (not res!327120) (not e!309574))))

(assert (=> b!531484 (= res!327120 (validKeyInArray!0 k0!1998))))

(declare-fun b!531485 () Bool)

(declare-fun res!327118 () Bool)

(assert (=> b!531485 (=> (not res!327118) (not e!309573))))

(declare-datatypes ((List!10343 0))(
  ( (Nil!10340) (Cons!10339 (h!11279 (_ BitVec 64)) (t!16579 List!10343)) )
))
(declare-fun arrayNoDuplicates!0 (array!33666 (_ BitVec 32) List!10343) Bool)

(assert (=> b!531485 (= res!327118 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10340))))

(assert (= (and start!48402 res!327123) b!531481))

(assert (= (and b!531481 res!327122) b!531479))

(assert (= (and b!531479 res!327124) b!531484))

(assert (= (and b!531484 res!327120) b!531483))

(assert (= (and b!531483 res!327119) b!531478))

(assert (= (and b!531478 res!327121) b!531480))

(assert (= (and b!531480 res!327125) b!531485))

(assert (= (and b!531485 res!327118) b!531482))

(declare-fun m!511887 () Bool)

(assert (=> b!531479 m!511887))

(assert (=> b!531479 m!511887))

(declare-fun m!511889 () Bool)

(assert (=> b!531479 m!511889))

(declare-fun m!511891 () Bool)

(assert (=> b!531484 m!511891))

(declare-fun m!511893 () Bool)

(assert (=> b!531485 m!511893))

(declare-fun m!511895 () Bool)

(assert (=> b!531483 m!511895))

(declare-fun m!511897 () Bool)

(assert (=> b!531480 m!511897))

(declare-fun m!511899 () Bool)

(assert (=> b!531482 m!511899))

(assert (=> b!531482 m!511887))

(declare-fun m!511901 () Bool)

(assert (=> b!531478 m!511901))

(declare-fun m!511903 () Bool)

(assert (=> start!48402 m!511903))

(declare-fun m!511905 () Bool)

(assert (=> start!48402 m!511905))

(check-sat (not b!531483) (not b!531485) (not b!531484) (not b!531480) (not b!531479) (not start!48402) (not b!531478))
(check-sat)
