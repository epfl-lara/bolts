; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67668 () Bool)

(assert start!67668)

(declare-fun res!529847 () Bool)

(declare-fun e!435435 () Bool)

(assert (=> start!67668 (=> (not res!529847) (not e!435435))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67668 (= res!529847 (validMask!0 mask!3328))))

(assert (=> start!67668 e!435435))

(assert (=> start!67668 true))

(declare-datatypes ((array!42663 0))(
  ( (array!42664 (arr!20416 (Array (_ BitVec 32) (_ BitVec 64))) (size!20837 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42663)

(declare-fun array_inv!16190 (array!42663) Bool)

(assert (=> start!67668 (array_inv!16190 a!3186)))

(declare-fun lt!348999 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!435441 () Bool)

(declare-fun b!783057 () Bool)

(declare-fun lt!349007 () array!42663)

(declare-datatypes ((SeekEntryResult!8023 0))(
  ( (MissingZero!8023 (index!34459 (_ BitVec 32))) (Found!8023 (index!34460 (_ BitVec 32))) (Intermediate!8023 (undefined!8835 Bool) (index!34461 (_ BitVec 32)) (x!65444 (_ BitVec 32))) (Undefined!8023) (MissingVacant!8023 (index!34462 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42663 (_ BitVec 32)) SeekEntryResult!8023)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42663 (_ BitVec 32)) SeekEntryResult!8023)

(assert (=> b!783057 (= e!435441 (= (seekEntryOrOpen!0 lt!348999 lt!349007 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!348999 lt!349007 mask!3328)))))

(declare-fun b!783058 () Bool)

(declare-fun res!529851 () Bool)

(declare-fun e!435432 () Bool)

(assert (=> b!783058 (=> (not res!529851) (not e!435432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42663 (_ BitVec 32)) Bool)

(assert (=> b!783058 (= res!529851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783059 () Bool)

(declare-fun res!529855 () Bool)

(assert (=> b!783059 (=> (not res!529855) (not e!435432))))

(declare-datatypes ((List!14471 0))(
  ( (Nil!14468) (Cons!14467 (h!15590 (_ BitVec 64)) (t!20794 List!14471)) )
))
(declare-fun arrayNoDuplicates!0 (array!42663 (_ BitVec 32) List!14471) Bool)

(assert (=> b!783059 (= res!529855 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14468))))

(declare-fun b!783060 () Bool)

(declare-fun res!529842 () Bool)

(declare-fun e!435436 () Bool)

(assert (=> b!783060 (=> (not res!529842) (not e!435436))))

(declare-fun e!435433 () Bool)

(assert (=> b!783060 (= res!529842 e!435433)))

(declare-fun c!87017 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783060 (= c!87017 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783061 () Bool)

(declare-fun res!529849 () Bool)

(assert (=> b!783061 (=> (not res!529849) (not e!435436))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783061 (= res!529849 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20416 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783062 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!349004 () SeekEntryResult!8023)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42663 (_ BitVec 32)) SeekEntryResult!8023)

(assert (=> b!783062 (= e!435433 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20416 a!3186) j!159) a!3186 mask!3328) lt!349004))))

(declare-fun b!783063 () Bool)

(assert (=> b!783063 (= e!435433 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20416 a!3186) j!159) a!3186 mask!3328) (Found!8023 j!159)))))

(declare-fun b!783064 () Bool)

(declare-fun res!529853 () Bool)

(assert (=> b!783064 (=> (not res!529853) (not e!435435))))

(assert (=> b!783064 (= res!529853 (and (= (size!20837 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20837 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20837 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783065 () Bool)

(declare-fun res!529839 () Bool)

(assert (=> b!783065 (=> (not res!529839) (not e!435435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783065 (= res!529839 (validKeyInArray!0 (select (arr!20416 a!3186) j!159)))))

(declare-fun b!783066 () Bool)

(declare-fun res!529844 () Bool)

(declare-fun e!435442 () Bool)

(assert (=> b!783066 (=> res!529844 e!435442)))

(declare-fun lt!349009 () SeekEntryResult!8023)

(assert (=> b!783066 (= res!529844 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20416 a!3186) j!159) a!3186 mask!3328) lt!349009)))))

(declare-fun b!783067 () Bool)

(declare-fun e!435438 () Bool)

(assert (=> b!783067 (= e!435438 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20416 a!3186) j!159) a!3186 mask!3328) lt!349009))))

(declare-fun b!783068 () Bool)

(declare-fun e!435440 () Bool)

(assert (=> b!783068 (= e!435440 (not e!435442))))

(declare-fun res!529845 () Bool)

(assert (=> b!783068 (=> res!529845 e!435442)))

(declare-fun lt!349003 () SeekEntryResult!8023)

(get-info :version)

(assert (=> b!783068 (= res!529845 (or (not ((_ is Intermediate!8023) lt!349003)) (bvslt x!1131 (x!65444 lt!349003)) (not (= x!1131 (x!65444 lt!349003))) (not (= index!1321 (index!34461 lt!349003)))))))

(assert (=> b!783068 e!435438))

(declare-fun res!529840 () Bool)

(assert (=> b!783068 (=> (not res!529840) (not e!435438))))

(declare-fun lt!349000 () SeekEntryResult!8023)

(assert (=> b!783068 (= res!529840 (= lt!349000 lt!349009))))

(assert (=> b!783068 (= lt!349009 (Found!8023 j!159))))

(assert (=> b!783068 (= lt!349000 (seekEntryOrOpen!0 (select (arr!20416 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!783068 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27002 0))(
  ( (Unit!27003) )
))
(declare-fun lt!349006 () Unit!27002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27002)

(assert (=> b!783068 (= lt!349006 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783069 () Bool)

(declare-fun e!435437 () Bool)

(assert (=> b!783069 (= e!435437 true)))

(assert (=> b!783069 e!435441))

(declare-fun res!529848 () Bool)

(assert (=> b!783069 (=> (not res!529848) (not e!435441))))

(declare-fun lt!349008 () (_ BitVec 64))

(assert (=> b!783069 (= res!529848 (= lt!349008 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349001 () Unit!27002)

(declare-fun e!435434 () Unit!27002)

(assert (=> b!783069 (= lt!349001 e!435434)))

(declare-fun c!87018 () Bool)

(assert (=> b!783069 (= c!87018 (= lt!349008 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783070 () Bool)

(declare-fun Unit!27004 () Unit!27002)

(assert (=> b!783070 (= e!435434 Unit!27004)))

(declare-fun b!783071 () Bool)

(assert (=> b!783071 (= e!435432 e!435436)))

(declare-fun res!529852 () Bool)

(assert (=> b!783071 (=> (not res!529852) (not e!435436))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783071 (= res!529852 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20416 a!3186) j!159) mask!3328) (select (arr!20416 a!3186) j!159) a!3186 mask!3328) lt!349004))))

(assert (=> b!783071 (= lt!349004 (Intermediate!8023 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783072 () Bool)

(assert (=> b!783072 (= e!435435 e!435432)))

(declare-fun res!529846 () Bool)

(assert (=> b!783072 (=> (not res!529846) (not e!435432))))

(declare-fun lt!349005 () SeekEntryResult!8023)

(assert (=> b!783072 (= res!529846 (or (= lt!349005 (MissingZero!8023 i!1173)) (= lt!349005 (MissingVacant!8023 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!783072 (= lt!349005 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!783073 () Bool)

(declare-fun Unit!27005 () Unit!27002)

(assert (=> b!783073 (= e!435434 Unit!27005)))

(assert (=> b!783073 false))

(declare-fun b!783074 () Bool)

(declare-fun res!529843 () Bool)

(assert (=> b!783074 (=> (not res!529843) (not e!435435))))

(declare-fun arrayContainsKey!0 (array!42663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783074 (= res!529843 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783075 () Bool)

(assert (=> b!783075 (= e!435442 e!435437)))

(declare-fun res!529854 () Bool)

(assert (=> b!783075 (=> res!529854 e!435437)))

(assert (=> b!783075 (= res!529854 (= lt!349008 lt!348999))))

(assert (=> b!783075 (= lt!349008 (select (store (arr!20416 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!783076 () Bool)

(assert (=> b!783076 (= e!435436 e!435440)))

(declare-fun res!529841 () Bool)

(assert (=> b!783076 (=> (not res!529841) (not e!435440))))

(declare-fun lt!349002 () SeekEntryResult!8023)

(assert (=> b!783076 (= res!529841 (= lt!349002 lt!349003))))

(assert (=> b!783076 (= lt!349003 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348999 lt!349007 mask!3328))))

(assert (=> b!783076 (= lt!349002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348999 mask!3328) lt!348999 lt!349007 mask!3328))))

(assert (=> b!783076 (= lt!348999 (select (store (arr!20416 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!783076 (= lt!349007 (array!42664 (store (arr!20416 a!3186) i!1173 k0!2102) (size!20837 a!3186)))))

(declare-fun b!783077 () Bool)

(declare-fun res!529850 () Bool)

(assert (=> b!783077 (=> (not res!529850) (not e!435435))))

(assert (=> b!783077 (= res!529850 (validKeyInArray!0 k0!2102))))

(declare-fun b!783078 () Bool)

(declare-fun res!529838 () Bool)

(assert (=> b!783078 (=> (not res!529838) (not e!435432))))

(assert (=> b!783078 (= res!529838 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20837 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20837 a!3186))))))

(assert (= (and start!67668 res!529847) b!783064))

(assert (= (and b!783064 res!529853) b!783065))

(assert (= (and b!783065 res!529839) b!783077))

(assert (= (and b!783077 res!529850) b!783074))

(assert (= (and b!783074 res!529843) b!783072))

(assert (= (and b!783072 res!529846) b!783058))

(assert (= (and b!783058 res!529851) b!783059))

(assert (= (and b!783059 res!529855) b!783078))

(assert (= (and b!783078 res!529838) b!783071))

(assert (= (and b!783071 res!529852) b!783061))

(assert (= (and b!783061 res!529849) b!783060))

(assert (= (and b!783060 c!87017) b!783062))

(assert (= (and b!783060 (not c!87017)) b!783063))

(assert (= (and b!783060 res!529842) b!783076))

(assert (= (and b!783076 res!529841) b!783068))

(assert (= (and b!783068 res!529840) b!783067))

(assert (= (and b!783068 (not res!529845)) b!783066))

(assert (= (and b!783066 (not res!529844)) b!783075))

(assert (= (and b!783075 (not res!529854)) b!783069))

(assert (= (and b!783069 c!87018) b!783073))

(assert (= (and b!783069 (not c!87018)) b!783070))

(assert (= (and b!783069 res!529848) b!783057))

(declare-fun m!725741 () Bool)

(assert (=> b!783076 m!725741))

(declare-fun m!725743 () Bool)

(assert (=> b!783076 m!725743))

(declare-fun m!725745 () Bool)

(assert (=> b!783076 m!725745))

(declare-fun m!725747 () Bool)

(assert (=> b!783076 m!725747))

(declare-fun m!725749 () Bool)

(assert (=> b!783076 m!725749))

(assert (=> b!783076 m!725745))

(declare-fun m!725751 () Bool)

(assert (=> b!783058 m!725751))

(assert (=> b!783075 m!725741))

(declare-fun m!725753 () Bool)

(assert (=> b!783075 m!725753))

(declare-fun m!725755 () Bool)

(assert (=> b!783057 m!725755))

(declare-fun m!725757 () Bool)

(assert (=> b!783057 m!725757))

(declare-fun m!725759 () Bool)

(assert (=> b!783063 m!725759))

(assert (=> b!783063 m!725759))

(declare-fun m!725761 () Bool)

(assert (=> b!783063 m!725761))

(assert (=> b!783065 m!725759))

(assert (=> b!783065 m!725759))

(declare-fun m!725763 () Bool)

(assert (=> b!783065 m!725763))

(declare-fun m!725765 () Bool)

(assert (=> b!783072 m!725765))

(assert (=> b!783062 m!725759))

(assert (=> b!783062 m!725759))

(declare-fun m!725767 () Bool)

(assert (=> b!783062 m!725767))

(declare-fun m!725769 () Bool)

(assert (=> b!783059 m!725769))

(assert (=> b!783066 m!725759))

(assert (=> b!783066 m!725759))

(assert (=> b!783066 m!725761))

(declare-fun m!725771 () Bool)

(assert (=> b!783061 m!725771))

(assert (=> b!783071 m!725759))

(assert (=> b!783071 m!725759))

(declare-fun m!725773 () Bool)

(assert (=> b!783071 m!725773))

(assert (=> b!783071 m!725773))

(assert (=> b!783071 m!725759))

(declare-fun m!725775 () Bool)

(assert (=> b!783071 m!725775))

(declare-fun m!725777 () Bool)

(assert (=> start!67668 m!725777))

(declare-fun m!725779 () Bool)

(assert (=> start!67668 m!725779))

(declare-fun m!725781 () Bool)

(assert (=> b!783077 m!725781))

(declare-fun m!725783 () Bool)

(assert (=> b!783074 m!725783))

(assert (=> b!783067 m!725759))

(assert (=> b!783067 m!725759))

(declare-fun m!725785 () Bool)

(assert (=> b!783067 m!725785))

(assert (=> b!783068 m!725759))

(assert (=> b!783068 m!725759))

(declare-fun m!725787 () Bool)

(assert (=> b!783068 m!725787))

(declare-fun m!725789 () Bool)

(assert (=> b!783068 m!725789))

(declare-fun m!725791 () Bool)

(assert (=> b!783068 m!725791))

(check-sat (not b!783059) (not b!783058) (not start!67668) (not b!783065) (not b!783072) (not b!783077) (not b!783066) (not b!783071) (not b!783062) (not b!783068) (not b!783057) (not b!783076) (not b!783063) (not b!783074) (not b!783067))
(check-sat)
