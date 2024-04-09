; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48798 () Bool)

(assert start!48798)

(declare-fun b!536534 () Bool)

(declare-fun res!331892 () Bool)

(declare-fun e!311420 () Bool)

(assert (=> b!536534 (=> (not res!331892) (not e!311420))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4783 0))(
  ( (MissingZero!4783 (index!21356 (_ BitVec 32))) (Found!4783 (index!21357 (_ BitVec 32))) (Intermediate!4783 (undefined!5595 Bool) (index!21358 (_ BitVec 32)) (x!50321 (_ BitVec 32))) (Undefined!4783) (MissingVacant!4783 (index!21359 (_ BitVec 32))) )
))
(declare-fun lt!246148 () SeekEntryResult!4783)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33966 0))(
  ( (array!33967 (arr!16318 (Array (_ BitVec 32) (_ BitVec 64))) (size!16682 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33966)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33966 (_ BitVec 32)) SeekEntryResult!4783)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536534 (= res!331892 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16318 a!3154) j!147) mask!3216) (select (arr!16318 a!3154) j!147) a!3154 mask!3216) lt!246148))))

(declare-fun b!536535 () Bool)

(declare-fun e!311422 () Bool)

(declare-fun e!311421 () Bool)

(assert (=> b!536535 (= e!311422 e!311421)))

(declare-fun res!331893 () Bool)

(assert (=> b!536535 (=> (not res!331893) (not e!311421))))

(declare-fun lt!246149 () SeekEntryResult!4783)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536535 (= res!331893 (or (= lt!246149 (MissingZero!4783 i!1153)) (= lt!246149 (MissingVacant!4783 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33966 (_ BitVec 32)) SeekEntryResult!4783)

(assert (=> b!536535 (= lt!246149 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!536536 () Bool)

(declare-fun res!331899 () Bool)

(assert (=> b!536536 (=> (not res!331899) (not e!311422))))

(declare-fun arrayContainsKey!0 (array!33966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536536 (= res!331899 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536537 () Bool)

(declare-fun res!331901 () Bool)

(assert (=> b!536537 (=> (not res!331901) (not e!311422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536537 (= res!331901 (validKeyInArray!0 k0!1998))))

(declare-fun b!536539 () Bool)

(declare-fun e!311418 () Bool)

(assert (=> b!536539 (= e!311420 e!311418)))

(declare-fun res!331900 () Bool)

(assert (=> b!536539 (=> (not res!331900) (not e!311418))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246146 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536539 (= res!331900 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246146 #b00000000000000000000000000000000) (bvslt lt!246146 (size!16682 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536539 (= lt!246146 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536540 () Bool)

(declare-fun res!331898 () Bool)

(assert (=> b!536540 (=> (not res!331898) (not e!311422))))

(assert (=> b!536540 (= res!331898 (validKeyInArray!0 (select (arr!16318 a!3154) j!147)))))

(declare-fun b!536541 () Bool)

(declare-fun res!331894 () Bool)

(assert (=> b!536541 (=> (not res!331894) (not e!311420))))

(assert (=> b!536541 (= res!331894 (and (not (= (select (arr!16318 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16318 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16318 a!3154) index!1177) (select (arr!16318 a!3154) j!147)))))))

(declare-fun b!536542 () Bool)

(assert (=> b!536542 (= e!311421 e!311420)))

(declare-fun res!331895 () Bool)

(assert (=> b!536542 (=> (not res!331895) (not e!311420))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536542 (= res!331895 (= lt!246148 (Intermediate!4783 false resIndex!32 resX!32)))))

(assert (=> b!536542 (= lt!246148 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16318 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536543 () Bool)

(declare-fun res!331889 () Bool)

(assert (=> b!536543 (=> (not res!331889) (not e!311421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33966 (_ BitVec 32)) Bool)

(assert (=> b!536543 (= res!331889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536544 () Bool)

(declare-fun res!331891 () Bool)

(assert (=> b!536544 (=> (not res!331891) (not e!311422))))

(assert (=> b!536544 (= res!331891 (and (= (size!16682 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16682 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16682 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!331896 () Bool)

(assert (=> start!48798 (=> (not res!331896) (not e!311422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48798 (= res!331896 (validMask!0 mask!3216))))

(assert (=> start!48798 e!311422))

(assert (=> start!48798 true))

(declare-fun array_inv!12092 (array!33966) Bool)

(assert (=> start!48798 (array_inv!12092 a!3154)))

(declare-fun b!536538 () Bool)

(declare-fun res!331890 () Bool)

(assert (=> b!536538 (=> (not res!331890) (not e!311421))))

(declare-datatypes ((List!10490 0))(
  ( (Nil!10487) (Cons!10486 (h!11429 (_ BitVec 64)) (t!16726 List!10490)) )
))
(declare-fun arrayNoDuplicates!0 (array!33966 (_ BitVec 32) List!10490) Bool)

(assert (=> b!536538 (= res!331890 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10487))))

(declare-fun b!536545 () Bool)

(assert (=> b!536545 (= e!311418 false)))

(declare-fun lt!246147 () SeekEntryResult!4783)

(assert (=> b!536545 (= lt!246147 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246146 (select (arr!16318 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536546 () Bool)

(declare-fun res!331897 () Bool)

(assert (=> b!536546 (=> (not res!331897) (not e!311421))))

(assert (=> b!536546 (= res!331897 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16682 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16682 a!3154)) (= (select (arr!16318 a!3154) resIndex!32) (select (arr!16318 a!3154) j!147))))))

(assert (= (and start!48798 res!331896) b!536544))

(assert (= (and b!536544 res!331891) b!536540))

(assert (= (and b!536540 res!331898) b!536537))

(assert (= (and b!536537 res!331901) b!536536))

(assert (= (and b!536536 res!331899) b!536535))

(assert (= (and b!536535 res!331893) b!536543))

(assert (= (and b!536543 res!331889) b!536538))

(assert (= (and b!536538 res!331890) b!536546))

(assert (= (and b!536546 res!331897) b!536542))

(assert (= (and b!536542 res!331895) b!536534))

(assert (= (and b!536534 res!331892) b!536541))

(assert (= (and b!536541 res!331894) b!536539))

(assert (= (and b!536539 res!331900) b!536545))

(declare-fun m!515931 () Bool)

(assert (=> b!536537 m!515931))

(declare-fun m!515933 () Bool)

(assert (=> b!536542 m!515933))

(assert (=> b!536542 m!515933))

(declare-fun m!515935 () Bool)

(assert (=> b!536542 m!515935))

(declare-fun m!515937 () Bool)

(assert (=> start!48798 m!515937))

(declare-fun m!515939 () Bool)

(assert (=> start!48798 m!515939))

(declare-fun m!515941 () Bool)

(assert (=> b!536538 m!515941))

(declare-fun m!515943 () Bool)

(assert (=> b!536539 m!515943))

(assert (=> b!536534 m!515933))

(assert (=> b!536534 m!515933))

(declare-fun m!515945 () Bool)

(assert (=> b!536534 m!515945))

(assert (=> b!536534 m!515945))

(assert (=> b!536534 m!515933))

(declare-fun m!515947 () Bool)

(assert (=> b!536534 m!515947))

(declare-fun m!515949 () Bool)

(assert (=> b!536535 m!515949))

(declare-fun m!515951 () Bool)

(assert (=> b!536546 m!515951))

(assert (=> b!536546 m!515933))

(declare-fun m!515953 () Bool)

(assert (=> b!536541 m!515953))

(assert (=> b!536541 m!515933))

(assert (=> b!536545 m!515933))

(assert (=> b!536545 m!515933))

(declare-fun m!515955 () Bool)

(assert (=> b!536545 m!515955))

(declare-fun m!515957 () Bool)

(assert (=> b!536536 m!515957))

(declare-fun m!515959 () Bool)

(assert (=> b!536543 m!515959))

(assert (=> b!536540 m!515933))

(assert (=> b!536540 m!515933))

(declare-fun m!515961 () Bool)

(assert (=> b!536540 m!515961))

(check-sat (not b!536535) (not b!536542) (not b!536537) (not start!48798) (not b!536538) (not b!536536) (not b!536539) (not b!536540) (not b!536543) (not b!536545) (not b!536534))
(check-sat)
