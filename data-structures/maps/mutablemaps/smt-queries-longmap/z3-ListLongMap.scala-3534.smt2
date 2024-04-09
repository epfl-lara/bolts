; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48792 () Bool)

(assert start!48792)

(declare-fun b!536417 () Bool)

(declare-fun e!311376 () Bool)

(assert (=> b!536417 (= e!311376 false)))

(declare-fun lt!246112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4780 0))(
  ( (MissingZero!4780 (index!21344 (_ BitVec 32))) (Found!4780 (index!21345 (_ BitVec 32))) (Intermediate!4780 (undefined!5592 Bool) (index!21346 (_ BitVec 32)) (x!50310 (_ BitVec 32))) (Undefined!4780) (MissingVacant!4780 (index!21347 (_ BitVec 32))) )
))
(declare-fun lt!246113 () SeekEntryResult!4780)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33960 0))(
  ( (array!33961 (arr!16315 (Array (_ BitVec 32) (_ BitVec 64))) (size!16679 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33960)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33960 (_ BitVec 32)) SeekEntryResult!4780)

(assert (=> b!536417 (= lt!246113 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246112 (select (arr!16315 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536418 () Bool)

(declare-fun res!331775 () Bool)

(declare-fun e!311373 () Bool)

(assert (=> b!536418 (=> (not res!331775) (not e!311373))))

(declare-datatypes ((List!10487 0))(
  ( (Nil!10484) (Cons!10483 (h!11426 (_ BitVec 64)) (t!16723 List!10487)) )
))
(declare-fun arrayNoDuplicates!0 (array!33960 (_ BitVec 32) List!10487) Bool)

(assert (=> b!536418 (= res!331775 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10484))))

(declare-fun b!536419 () Bool)

(declare-fun e!311374 () Bool)

(assert (=> b!536419 (= e!311374 e!311373)))

(declare-fun res!331781 () Bool)

(assert (=> b!536419 (=> (not res!331781) (not e!311373))))

(declare-fun lt!246110 () SeekEntryResult!4780)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536419 (= res!331781 (or (= lt!246110 (MissingZero!4780 i!1153)) (= lt!246110 (MissingVacant!4780 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33960 (_ BitVec 32)) SeekEntryResult!4780)

(assert (=> b!536419 (= lt!246110 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!536420 () Bool)

(declare-fun res!331780 () Bool)

(assert (=> b!536420 (=> (not res!331780) (not e!311374))))

(declare-fun arrayContainsKey!0 (array!33960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536420 (= res!331780 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536421 () Bool)

(declare-fun res!331777 () Bool)

(declare-fun e!311377 () Bool)

(assert (=> b!536421 (=> (not res!331777) (not e!311377))))

(declare-fun lt!246111 () SeekEntryResult!4780)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536421 (= res!331777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16315 a!3154) j!147) mask!3216) (select (arr!16315 a!3154) j!147) a!3154 mask!3216) lt!246111))))

(declare-fun b!536422 () Bool)

(assert (=> b!536422 (= e!311377 e!311376)))

(declare-fun res!331772 () Bool)

(assert (=> b!536422 (=> (not res!331772) (not e!311376))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536422 (= res!331772 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246112 #b00000000000000000000000000000000) (bvslt lt!246112 (size!16679 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536422 (= lt!246112 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536423 () Bool)

(declare-fun res!331782 () Bool)

(assert (=> b!536423 (=> (not res!331782) (not e!311373))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536423 (= res!331782 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16679 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16679 a!3154)) (= (select (arr!16315 a!3154) resIndex!32) (select (arr!16315 a!3154) j!147))))))

(declare-fun b!536424 () Bool)

(declare-fun res!331783 () Bool)

(assert (=> b!536424 (=> (not res!331783) (not e!311377))))

(assert (=> b!536424 (= res!331783 (and (not (= (select (arr!16315 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16315 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16315 a!3154) index!1177) (select (arr!16315 a!3154) j!147)))))))

(declare-fun b!536425 () Bool)

(declare-fun res!331776 () Bool)

(assert (=> b!536425 (=> (not res!331776) (not e!311374))))

(assert (=> b!536425 (= res!331776 (and (= (size!16679 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16679 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16679 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536426 () Bool)

(declare-fun res!331773 () Bool)

(assert (=> b!536426 (=> (not res!331773) (not e!311374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536426 (= res!331773 (validKeyInArray!0 k0!1998))))

(declare-fun b!536428 () Bool)

(assert (=> b!536428 (= e!311373 e!311377)))

(declare-fun res!331778 () Bool)

(assert (=> b!536428 (=> (not res!331778) (not e!311377))))

(assert (=> b!536428 (= res!331778 (= lt!246111 (Intermediate!4780 false resIndex!32 resX!32)))))

(assert (=> b!536428 (= lt!246111 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16315 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536429 () Bool)

(declare-fun res!331774 () Bool)

(assert (=> b!536429 (=> (not res!331774) (not e!311373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33960 (_ BitVec 32)) Bool)

(assert (=> b!536429 (= res!331774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536427 () Bool)

(declare-fun res!331784 () Bool)

(assert (=> b!536427 (=> (not res!331784) (not e!311374))))

(assert (=> b!536427 (= res!331784 (validKeyInArray!0 (select (arr!16315 a!3154) j!147)))))

(declare-fun res!331779 () Bool)

(assert (=> start!48792 (=> (not res!331779) (not e!311374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48792 (= res!331779 (validMask!0 mask!3216))))

(assert (=> start!48792 e!311374))

(assert (=> start!48792 true))

(declare-fun array_inv!12089 (array!33960) Bool)

(assert (=> start!48792 (array_inv!12089 a!3154)))

(assert (= (and start!48792 res!331779) b!536425))

(assert (= (and b!536425 res!331776) b!536427))

(assert (= (and b!536427 res!331784) b!536426))

(assert (= (and b!536426 res!331773) b!536420))

(assert (= (and b!536420 res!331780) b!536419))

(assert (= (and b!536419 res!331781) b!536429))

(assert (= (and b!536429 res!331774) b!536418))

(assert (= (and b!536418 res!331775) b!536423))

(assert (= (and b!536423 res!331782) b!536428))

(assert (= (and b!536428 res!331778) b!536421))

(assert (= (and b!536421 res!331777) b!536424))

(assert (= (and b!536424 res!331783) b!536422))

(assert (= (and b!536422 res!331772) b!536417))

(declare-fun m!515835 () Bool)

(assert (=> b!536424 m!515835))

(declare-fun m!515837 () Bool)

(assert (=> b!536424 m!515837))

(assert (=> b!536421 m!515837))

(assert (=> b!536421 m!515837))

(declare-fun m!515839 () Bool)

(assert (=> b!536421 m!515839))

(assert (=> b!536421 m!515839))

(assert (=> b!536421 m!515837))

(declare-fun m!515841 () Bool)

(assert (=> b!536421 m!515841))

(declare-fun m!515843 () Bool)

(assert (=> start!48792 m!515843))

(declare-fun m!515845 () Bool)

(assert (=> start!48792 m!515845))

(assert (=> b!536417 m!515837))

(assert (=> b!536417 m!515837))

(declare-fun m!515847 () Bool)

(assert (=> b!536417 m!515847))

(declare-fun m!515849 () Bool)

(assert (=> b!536420 m!515849))

(declare-fun m!515851 () Bool)

(assert (=> b!536423 m!515851))

(assert (=> b!536423 m!515837))

(declare-fun m!515853 () Bool)

(assert (=> b!536422 m!515853))

(declare-fun m!515855 () Bool)

(assert (=> b!536419 m!515855))

(declare-fun m!515857 () Bool)

(assert (=> b!536426 m!515857))

(declare-fun m!515859 () Bool)

(assert (=> b!536418 m!515859))

(assert (=> b!536428 m!515837))

(assert (=> b!536428 m!515837))

(declare-fun m!515861 () Bool)

(assert (=> b!536428 m!515861))

(assert (=> b!536427 m!515837))

(assert (=> b!536427 m!515837))

(declare-fun m!515863 () Bool)

(assert (=> b!536427 m!515863))

(declare-fun m!515865 () Bool)

(assert (=> b!536429 m!515865))

(check-sat (not b!536422) (not b!536420) (not b!536426) (not b!536429) (not b!536421) (not b!536428) (not b!536417) (not b!536427) (not b!536418) (not b!536419) (not start!48792))
(check-sat)
