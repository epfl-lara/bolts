; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67916 () Bool)

(assert start!67916)

(declare-fun b!789750 () Bool)

(declare-datatypes ((Unit!27366 0))(
  ( (Unit!27367) )
))
(declare-fun e!438966 () Unit!27366)

(declare-fun Unit!27368 () Unit!27366)

(assert (=> b!789750 (= e!438966 Unit!27368)))

(assert (=> b!789750 false))

(declare-fun b!789751 () Bool)

(declare-fun e!438972 () Bool)

(declare-fun e!438976 () Bool)

(assert (=> b!789751 (= e!438972 e!438976)))

(declare-fun res!535116 () Bool)

(assert (=> b!789751 (=> (not res!535116) (not e!438976))))

(declare-datatypes ((SeekEntryResult!8114 0))(
  ( (MissingZero!8114 (index!34823 (_ BitVec 32))) (Found!8114 (index!34824 (_ BitVec 32))) (Intermediate!8114 (undefined!8926 Bool) (index!34825 (_ BitVec 32)) (x!65784 (_ BitVec 32))) (Undefined!8114) (MissingVacant!8114 (index!34826 (_ BitVec 32))) )
))
(declare-fun lt!352496 () SeekEntryResult!8114)

(declare-fun lt!352500 () SeekEntryResult!8114)

(assert (=> b!789751 (= res!535116 (= lt!352496 lt!352500))))

(declare-fun lt!352495 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42848 0))(
  ( (array!42849 (arr!20507 (Array (_ BitVec 32) (_ BitVec 64))) (size!20928 (_ BitVec 32))) )
))
(declare-fun lt!352506 () array!42848)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42848 (_ BitVec 32)) SeekEntryResult!8114)

(assert (=> b!789751 (= lt!352500 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352495 lt!352506 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789751 (= lt!352496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352495 mask!3328) lt!352495 lt!352506 mask!3328))))

(declare-fun a!3186 () array!42848)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!789751 (= lt!352495 (select (store (arr!20507 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789751 (= lt!352506 (array!42849 (store (arr!20507 a!3186) i!1173 k!2102) (size!20928 a!3186)))))

(declare-fun b!789752 () Bool)

(declare-fun e!438967 () Bool)

(assert (=> b!789752 (= e!438967 true)))

(declare-fun lt!352505 () SeekEntryResult!8114)

(declare-fun lt!352507 () SeekEntryResult!8114)

(assert (=> b!789752 (= lt!352505 lt!352507)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!352498 () Unit!27366)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42848 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27366)

(assert (=> b!789752 (= lt!352498 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789753 () Bool)

(declare-fun e!438973 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!352502 () SeekEntryResult!8114)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42848 (_ BitVec 32)) SeekEntryResult!8114)

(assert (=> b!789753 (= e!438973 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20507 a!3186) j!159) a!3186 mask!3328) lt!352502))))

(declare-fun b!789754 () Bool)

(declare-fun Unit!27369 () Unit!27366)

(assert (=> b!789754 (= e!438966 Unit!27369)))

(declare-fun b!789755 () Bool)

(declare-fun res!535124 () Bool)

(declare-fun e!438974 () Bool)

(assert (=> b!789755 (=> (not res!535124) (not e!438974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789755 (= res!535124 (validKeyInArray!0 k!2102))))

(declare-fun b!789757 () Bool)

(declare-fun res!535122 () Bool)

(declare-fun e!438965 () Bool)

(assert (=> b!789757 (=> (not res!535122) (not e!438965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42848 (_ BitVec 32)) Bool)

(assert (=> b!789757 (= res!535122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789758 () Bool)

(declare-fun res!535114 () Bool)

(assert (=> b!789758 (=> (not res!535114) (not e!438974))))

(assert (=> b!789758 (= res!535114 (validKeyInArray!0 (select (arr!20507 a!3186) j!159)))))

(declare-fun b!789759 () Bool)

(declare-fun res!535127 () Bool)

(assert (=> b!789759 (=> (not res!535127) (not e!438972))))

(assert (=> b!789759 (= res!535127 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20507 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789760 () Bool)

(declare-fun e!438971 () Bool)

(declare-fun e!438975 () Bool)

(assert (=> b!789760 (= e!438971 e!438975)))

(declare-fun res!535113 () Bool)

(assert (=> b!789760 (=> res!535113 e!438975)))

(declare-fun lt!352501 () (_ BitVec 64))

(assert (=> b!789760 (= res!535113 (= lt!352501 lt!352495))))

(assert (=> b!789760 (= lt!352501 (select (store (arr!20507 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!789761 () Bool)

(declare-fun e!438969 () Bool)

(assert (=> b!789761 (= e!438969 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20507 a!3186) j!159) a!3186 mask!3328) (Found!8114 j!159)))))

(declare-fun b!789762 () Bool)

(declare-fun res!535120 () Bool)

(assert (=> b!789762 (=> (not res!535120) (not e!438965))))

(declare-datatypes ((List!14562 0))(
  ( (Nil!14559) (Cons!14558 (h!15684 (_ BitVec 64)) (t!20885 List!14562)) )
))
(declare-fun arrayNoDuplicates!0 (array!42848 (_ BitVec 32) List!14562) Bool)

(assert (=> b!789762 (= res!535120 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14559))))

(declare-fun b!789763 () Bool)

(declare-fun e!438968 () Bool)

(assert (=> b!789763 (= e!438976 (not e!438968))))

(declare-fun res!535115 () Bool)

(assert (=> b!789763 (=> res!535115 e!438968)))

(assert (=> b!789763 (= res!535115 (or (not (is-Intermediate!8114 lt!352500)) (bvslt x!1131 (x!65784 lt!352500)) (not (= x!1131 (x!65784 lt!352500))) (not (= index!1321 (index!34825 lt!352500)))))))

(assert (=> b!789763 e!438973))

(declare-fun res!535112 () Bool)

(assert (=> b!789763 (=> (not res!535112) (not e!438973))))

(declare-fun lt!352504 () SeekEntryResult!8114)

(assert (=> b!789763 (= res!535112 (= lt!352504 lt!352502))))

(assert (=> b!789763 (= lt!352502 (Found!8114 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42848 (_ BitVec 32)) SeekEntryResult!8114)

(assert (=> b!789763 (= lt!352504 (seekEntryOrOpen!0 (select (arr!20507 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!789763 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352499 () Unit!27366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27366)

(assert (=> b!789763 (= lt!352499 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789764 () Bool)

(declare-fun res!535121 () Bool)

(assert (=> b!789764 (=> (not res!535121) (not e!438965))))

(assert (=> b!789764 (= res!535121 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20928 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20928 a!3186))))))

(declare-fun b!789765 () Bool)

(assert (=> b!789765 (= e!438968 e!438971)))

(declare-fun res!535126 () Bool)

(assert (=> b!789765 (=> res!535126 e!438971)))

(assert (=> b!789765 (= res!535126 (not (= lt!352507 lt!352502)))))

(assert (=> b!789765 (= lt!352507 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20507 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789766 () Bool)

(assert (=> b!789766 (= e!438974 e!438965)))

(declare-fun res!535118 () Bool)

(assert (=> b!789766 (=> (not res!535118) (not e!438965))))

(declare-fun lt!352493 () SeekEntryResult!8114)

(assert (=> b!789766 (= res!535118 (or (= lt!352493 (MissingZero!8114 i!1173)) (= lt!352493 (MissingVacant!8114 i!1173))))))

(assert (=> b!789766 (= lt!352493 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789767 () Bool)

(assert (=> b!789767 (= e!438975 e!438967)))

(declare-fun res!535117 () Bool)

(assert (=> b!789767 (=> res!535117 e!438967)))

(assert (=> b!789767 (= res!535117 (or (not (= (select (arr!20507 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352497 () SeekEntryResult!8114)

(assert (=> b!789767 (and (= lt!352497 lt!352505) (= lt!352504 lt!352507))))

(assert (=> b!789767 (= lt!352505 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352495 lt!352506 mask!3328))))

(assert (=> b!789767 (= lt!352497 (seekEntryOrOpen!0 lt!352495 lt!352506 mask!3328))))

(assert (=> b!789767 (= lt!352501 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352494 () Unit!27366)

(assert (=> b!789767 (= lt!352494 e!438966)))

(declare-fun c!87728 () Bool)

(assert (=> b!789767 (= c!87728 (= lt!352501 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789768 () Bool)

(declare-fun res!535119 () Bool)

(assert (=> b!789768 (=> (not res!535119) (not e!438972))))

(assert (=> b!789768 (= res!535119 e!438969)))

(declare-fun c!87729 () Bool)

(assert (=> b!789768 (= c!87729 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789769 () Bool)

(declare-fun res!535123 () Bool)

(assert (=> b!789769 (=> (not res!535123) (not e!438974))))

(assert (=> b!789769 (= res!535123 (and (= (size!20928 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20928 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20928 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!535125 () Bool)

(assert (=> start!67916 (=> (not res!535125) (not e!438974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67916 (= res!535125 (validMask!0 mask!3328))))

(assert (=> start!67916 e!438974))

(assert (=> start!67916 true))

(declare-fun array_inv!16281 (array!42848) Bool)

(assert (=> start!67916 (array_inv!16281 a!3186)))

(declare-fun lt!352503 () SeekEntryResult!8114)

(declare-fun b!789756 () Bool)

(assert (=> b!789756 (= e!438969 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20507 a!3186) j!159) a!3186 mask!3328) lt!352503))))

(declare-fun b!789770 () Bool)

(declare-fun res!535129 () Bool)

(assert (=> b!789770 (=> (not res!535129) (not e!438974))))

(declare-fun arrayContainsKey!0 (array!42848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789770 (= res!535129 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789771 () Bool)

(assert (=> b!789771 (= e!438965 e!438972)))

(declare-fun res!535128 () Bool)

(assert (=> b!789771 (=> (not res!535128) (not e!438972))))

(assert (=> b!789771 (= res!535128 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20507 a!3186) j!159) mask!3328) (select (arr!20507 a!3186) j!159) a!3186 mask!3328) lt!352503))))

(assert (=> b!789771 (= lt!352503 (Intermediate!8114 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67916 res!535125) b!789769))

(assert (= (and b!789769 res!535123) b!789758))

(assert (= (and b!789758 res!535114) b!789755))

(assert (= (and b!789755 res!535124) b!789770))

(assert (= (and b!789770 res!535129) b!789766))

(assert (= (and b!789766 res!535118) b!789757))

(assert (= (and b!789757 res!535122) b!789762))

(assert (= (and b!789762 res!535120) b!789764))

(assert (= (and b!789764 res!535121) b!789771))

(assert (= (and b!789771 res!535128) b!789759))

(assert (= (and b!789759 res!535127) b!789768))

(assert (= (and b!789768 c!87729) b!789756))

(assert (= (and b!789768 (not c!87729)) b!789761))

(assert (= (and b!789768 res!535119) b!789751))

(assert (= (and b!789751 res!535116) b!789763))

(assert (= (and b!789763 res!535112) b!789753))

(assert (= (and b!789763 (not res!535115)) b!789765))

(assert (= (and b!789765 (not res!535126)) b!789760))

(assert (= (and b!789760 (not res!535113)) b!789767))

(assert (= (and b!789767 c!87728) b!789750))

(assert (= (and b!789767 (not c!87728)) b!789754))

(assert (= (and b!789767 (not res!535117)) b!789752))

(declare-fun m!730829 () Bool)

(assert (=> b!789755 m!730829))

(declare-fun m!730831 () Bool)

(assert (=> b!789753 m!730831))

(assert (=> b!789753 m!730831))

(declare-fun m!730833 () Bool)

(assert (=> b!789753 m!730833))

(assert (=> b!789763 m!730831))

(assert (=> b!789763 m!730831))

(declare-fun m!730835 () Bool)

(assert (=> b!789763 m!730835))

(declare-fun m!730837 () Bool)

(assert (=> b!789763 m!730837))

(declare-fun m!730839 () Bool)

(assert (=> b!789763 m!730839))

(declare-fun m!730841 () Bool)

(assert (=> b!789766 m!730841))

(declare-fun m!730843 () Bool)

(assert (=> b!789752 m!730843))

(declare-fun m!730845 () Bool)

(assert (=> b!789770 m!730845))

(declare-fun m!730847 () Bool)

(assert (=> start!67916 m!730847))

(declare-fun m!730849 () Bool)

(assert (=> start!67916 m!730849))

(declare-fun m!730851 () Bool)

(assert (=> b!789751 m!730851))

(declare-fun m!730853 () Bool)

(assert (=> b!789751 m!730853))

(declare-fun m!730855 () Bool)

(assert (=> b!789751 m!730855))

(declare-fun m!730857 () Bool)

(assert (=> b!789751 m!730857))

(assert (=> b!789751 m!730857))

(declare-fun m!730859 () Bool)

(assert (=> b!789751 m!730859))

(assert (=> b!789761 m!730831))

(assert (=> b!789761 m!730831))

(declare-fun m!730861 () Bool)

(assert (=> b!789761 m!730861))

(declare-fun m!730863 () Bool)

(assert (=> b!789762 m!730863))

(declare-fun m!730865 () Bool)

(assert (=> b!789757 m!730865))

(assert (=> b!789756 m!730831))

(assert (=> b!789756 m!730831))

(declare-fun m!730867 () Bool)

(assert (=> b!789756 m!730867))

(assert (=> b!789758 m!730831))

(assert (=> b!789758 m!730831))

(declare-fun m!730869 () Bool)

(assert (=> b!789758 m!730869))

(assert (=> b!789760 m!730851))

(declare-fun m!730871 () Bool)

(assert (=> b!789760 m!730871))

(assert (=> b!789771 m!730831))

(assert (=> b!789771 m!730831))

(declare-fun m!730873 () Bool)

(assert (=> b!789771 m!730873))

(assert (=> b!789771 m!730873))

(assert (=> b!789771 m!730831))

(declare-fun m!730875 () Bool)

(assert (=> b!789771 m!730875))

(declare-fun m!730877 () Bool)

(assert (=> b!789759 m!730877))

(assert (=> b!789765 m!730831))

(assert (=> b!789765 m!730831))

(assert (=> b!789765 m!730861))

(declare-fun m!730879 () Bool)

(assert (=> b!789767 m!730879))

(declare-fun m!730881 () Bool)

(assert (=> b!789767 m!730881))

(declare-fun m!730883 () Bool)

(assert (=> b!789767 m!730883))

(push 1)

