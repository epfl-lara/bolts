; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51616 () Bool)

(assert start!51616)

(declare-fun b!564439 () Bool)

(declare-fun res!355745 () Bool)

(declare-fun e!325085 () Bool)

(assert (=> b!564439 (=> (not res!355745) (not e!325085))))

(declare-datatypes ((array!35435 0))(
  ( (array!35436 (arr!17014 (Array (_ BitVec 32) (_ BitVec 64))) (size!17378 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35435)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564439 (= res!355745 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564440 () Bool)

(declare-fun e!325086 () Bool)

(assert (=> b!564440 (= e!325085 e!325086)))

(declare-fun res!355741 () Bool)

(assert (=> b!564440 (=> (not res!355741) (not e!325086))))

(declare-datatypes ((SeekEntryResult!5470 0))(
  ( (MissingZero!5470 (index!24107 (_ BitVec 32))) (Found!5470 (index!24108 (_ BitVec 32))) (Intermediate!5470 (undefined!6282 Bool) (index!24109 (_ BitVec 32)) (x!53008 (_ BitVec 32))) (Undefined!5470) (MissingVacant!5470 (index!24110 (_ BitVec 32))) )
))
(declare-fun lt!257585 () SeekEntryResult!5470)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564440 (= res!355741 (or (= lt!257585 (MissingZero!5470 i!1132)) (= lt!257585 (MissingVacant!5470 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35435 (_ BitVec 32)) SeekEntryResult!5470)

(assert (=> b!564440 (= lt!257585 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564441 () Bool)

(declare-fun res!355748 () Bool)

(assert (=> b!564441 (=> (not res!355748) (not e!325086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35435 (_ BitVec 32)) Bool)

(assert (=> b!564441 (= res!355748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564442 () Bool)

(declare-fun res!355747 () Bool)

(assert (=> b!564442 (=> (not res!355747) (not e!325086))))

(declare-datatypes ((List!11147 0))(
  ( (Nil!11144) (Cons!11143 (h!12146 (_ BitVec 64)) (t!17383 List!11147)) )
))
(declare-fun arrayNoDuplicates!0 (array!35435 (_ BitVec 32) List!11147) Bool)

(assert (=> b!564442 (= res!355747 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11144))))

(declare-fun b!564443 () Bool)

(declare-fun res!355746 () Bool)

(assert (=> b!564443 (=> (not res!355746) (not e!325085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564443 (= res!355746 (validKeyInArray!0 k0!1914))))

(declare-fun res!355744 () Bool)

(assert (=> start!51616 (=> (not res!355744) (not e!325085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51616 (= res!355744 (validMask!0 mask!3119))))

(assert (=> start!51616 e!325085))

(assert (=> start!51616 true))

(declare-fun array_inv!12788 (array!35435) Bool)

(assert (=> start!51616 (array_inv!12788 a!3118)))

(declare-fun b!564444 () Bool)

(declare-fun res!355743 () Bool)

(assert (=> b!564444 (=> (not res!355743) (not e!325085))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!564444 (= res!355743 (validKeyInArray!0 (select (arr!17014 a!3118) j!142)))))

(declare-fun b!564445 () Bool)

(assert (=> b!564445 (= e!325086 false)))

(declare-fun lt!257587 () SeekEntryResult!5470)

(declare-fun lt!257584 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35435 (_ BitVec 32)) SeekEntryResult!5470)

(assert (=> b!564445 (= lt!257587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257584 (select (store (arr!17014 a!3118) i!1132 k0!1914) j!142) (array!35436 (store (arr!17014 a!3118) i!1132 k0!1914) (size!17378 a!3118)) mask!3119))))

(declare-fun lt!257588 () (_ BitVec 32))

(declare-fun lt!257586 () SeekEntryResult!5470)

(assert (=> b!564445 (= lt!257586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257588 (select (arr!17014 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564445 (= lt!257584 (toIndex!0 (select (store (arr!17014 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!564445 (= lt!257588 (toIndex!0 (select (arr!17014 a!3118) j!142) mask!3119))))

(declare-fun b!564446 () Bool)

(declare-fun res!355742 () Bool)

(assert (=> b!564446 (=> (not res!355742) (not e!325085))))

(assert (=> b!564446 (= res!355742 (and (= (size!17378 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17378 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17378 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51616 res!355744) b!564446))

(assert (= (and b!564446 res!355742) b!564444))

(assert (= (and b!564444 res!355743) b!564443))

(assert (= (and b!564443 res!355746) b!564439))

(assert (= (and b!564439 res!355745) b!564440))

(assert (= (and b!564440 res!355741) b!564441))

(assert (= (and b!564441 res!355748) b!564442))

(assert (= (and b!564442 res!355747) b!564445))

(declare-fun m!542923 () Bool)

(assert (=> b!564444 m!542923))

(assert (=> b!564444 m!542923))

(declare-fun m!542925 () Bool)

(assert (=> b!564444 m!542925))

(declare-fun m!542927 () Bool)

(assert (=> b!564439 m!542927))

(declare-fun m!542929 () Bool)

(assert (=> start!51616 m!542929))

(declare-fun m!542931 () Bool)

(assert (=> start!51616 m!542931))

(declare-fun m!542933 () Bool)

(assert (=> b!564441 m!542933))

(declare-fun m!542935 () Bool)

(assert (=> b!564443 m!542935))

(declare-fun m!542937 () Bool)

(assert (=> b!564442 m!542937))

(declare-fun m!542939 () Bool)

(assert (=> b!564440 m!542939))

(assert (=> b!564445 m!542923))

(declare-fun m!542941 () Bool)

(assert (=> b!564445 m!542941))

(declare-fun m!542943 () Bool)

(assert (=> b!564445 m!542943))

(declare-fun m!542945 () Bool)

(assert (=> b!564445 m!542945))

(assert (=> b!564445 m!542923))

(assert (=> b!564445 m!542943))

(declare-fun m!542947 () Bool)

(assert (=> b!564445 m!542947))

(assert (=> b!564445 m!542923))

(declare-fun m!542949 () Bool)

(assert (=> b!564445 m!542949))

(assert (=> b!564445 m!542943))

(declare-fun m!542951 () Bool)

(assert (=> b!564445 m!542951))

(check-sat (not b!564443) (not b!564442) (not b!564444) (not b!564441) (not b!564439) (not start!51616) (not b!564440) (not b!564445))
(check-sat)
