; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67748 () Bool)

(assert start!67748)

(declare-fun b!785795 () Bool)

(declare-fun res!532108 () Bool)

(declare-fun e!436866 () Bool)

(assert (=> b!785795 (=> (not res!532108) (not e!436866))))

(declare-datatypes ((array!42743 0))(
  ( (array!42744 (arr!20456 (Array (_ BitVec 32) (_ BitVec 64))) (size!20877 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42743)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785795 (= res!532108 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785796 () Bool)

(declare-fun e!436865 () Bool)

(assert (=> b!785796 (= e!436865 true)))

(declare-fun e!436868 () Bool)

(assert (=> b!785796 e!436868))

(declare-fun res!532114 () Bool)

(assert (=> b!785796 (=> (not res!532114) (not e!436868))))

(declare-fun lt!350433 () (_ BitVec 64))

(assert (=> b!785796 (= res!532114 (= lt!350433 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27162 0))(
  ( (Unit!27163) )
))
(declare-fun lt!350428 () Unit!27162)

(declare-fun e!436870 () Unit!27162)

(assert (=> b!785796 (= lt!350428 e!436870)))

(declare-fun c!87258 () Bool)

(assert (=> b!785796 (= c!87258 (= lt!350433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!785797 () Bool)

(declare-fun Unit!27164 () Unit!27162)

(assert (=> b!785797 (= e!436870 Unit!27164)))

(assert (=> b!785797 false))

(declare-fun res!532106 () Bool)

(assert (=> start!67748 (=> (not res!532106) (not e!436866))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67748 (= res!532106 (validMask!0 mask!3328))))

(assert (=> start!67748 e!436866))

(assert (=> start!67748 true))

(declare-fun array_inv!16230 (array!42743) Bool)

(assert (=> start!67748 (array_inv!16230 a!3186)))

(declare-fun b!785798 () Bool)

(declare-fun Unit!27165 () Unit!27162)

(assert (=> b!785798 (= e!436870 Unit!27165)))

(declare-fun b!785799 () Bool)

(declare-fun res!532111 () Bool)

(declare-fun e!436860 () Bool)

(assert (=> b!785799 (=> (not res!532111) (not e!436860))))

(declare-datatypes ((List!14511 0))(
  ( (Nil!14508) (Cons!14507 (h!15630 (_ BitVec 64)) (t!20834 List!14511)) )
))
(declare-fun arrayNoDuplicates!0 (array!42743 (_ BitVec 32) List!14511) Bool)

(assert (=> b!785799 (= res!532111 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14508))))

(declare-datatypes ((SeekEntryResult!8063 0))(
  ( (MissingZero!8063 (index!34619 (_ BitVec 32))) (Found!8063 (index!34620 (_ BitVec 32))) (Intermediate!8063 (undefined!8875 Bool) (index!34621 (_ BitVec 32)) (x!65588 (_ BitVec 32))) (Undefined!8063) (MissingVacant!8063 (index!34622 (_ BitVec 32))) )
))
(declare-fun lt!350437 () SeekEntryResult!8063)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!436867 () Bool)

(declare-fun b!785800 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42743 (_ BitVec 32)) SeekEntryResult!8063)

(assert (=> b!785800 (= e!436867 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20456 a!3186) j!159) a!3186 mask!3328) lt!350437))))

(declare-fun b!785801 () Bool)

(declare-fun e!436859 () Bool)

(declare-fun e!436861 () Bool)

(assert (=> b!785801 (= e!436859 (not e!436861))))

(declare-fun res!532105 () Bool)

(assert (=> b!785801 (=> res!532105 e!436861)))

(declare-fun lt!350426 () SeekEntryResult!8063)

(assert (=> b!785801 (= res!532105 (or (not (is-Intermediate!8063 lt!350426)) (bvslt x!1131 (x!65588 lt!350426)) (not (= x!1131 (x!65588 lt!350426))) (not (= index!1321 (index!34621 lt!350426)))))))

(declare-fun e!436864 () Bool)

(assert (=> b!785801 e!436864))

(declare-fun res!532107 () Bool)

(assert (=> b!785801 (=> (not res!532107) (not e!436864))))

(declare-fun lt!350435 () SeekEntryResult!8063)

(declare-fun lt!350427 () SeekEntryResult!8063)

(assert (=> b!785801 (= res!532107 (= lt!350435 lt!350427))))

(assert (=> b!785801 (= lt!350427 (Found!8063 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42743 (_ BitVec 32)) SeekEntryResult!8063)

(assert (=> b!785801 (= lt!350435 (seekEntryOrOpen!0 (select (arr!20456 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42743 (_ BitVec 32)) Bool)

(assert (=> b!785801 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350436 () Unit!27162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27162)

(assert (=> b!785801 (= lt!350436 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785802 () Bool)

(declare-fun res!532113 () Bool)

(assert (=> b!785802 (=> (not res!532113) (not e!436866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785802 (= res!532113 (validKeyInArray!0 k!2102))))

(declare-fun b!785803 () Bool)

(declare-fun e!436863 () Bool)

(assert (=> b!785803 (= e!436860 e!436863)))

(declare-fun res!532099 () Bool)

(assert (=> b!785803 (=> (not res!532099) (not e!436863))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785803 (= res!532099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20456 a!3186) j!159) mask!3328) (select (arr!20456 a!3186) j!159) a!3186 mask!3328) lt!350437))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!785803 (= lt!350437 (Intermediate!8063 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785804 () Bool)

(declare-fun res!532096 () Bool)

(assert (=> b!785804 (=> (not res!532096) (not e!436868))))

(declare-fun lt!350434 () (_ BitVec 64))

(declare-fun lt!350430 () array!42743)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42743 (_ BitVec 32)) SeekEntryResult!8063)

(assert (=> b!785804 (= res!532096 (= (seekEntryOrOpen!0 lt!350434 lt!350430 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350434 lt!350430 mask!3328)))))

(declare-fun b!785805 () Bool)

(declare-fun res!532101 () Bool)

(assert (=> b!785805 (=> (not res!532101) (not e!436866))))

(assert (=> b!785805 (= res!532101 (validKeyInArray!0 (select (arr!20456 a!3186) j!159)))))

(declare-fun b!785806 () Bool)

(assert (=> b!785806 (= e!436864 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20456 a!3186) j!159) a!3186 mask!3328) lt!350427))))

(declare-fun b!785807 () Bool)

(assert (=> b!785807 (= e!436867 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20456 a!3186) j!159) a!3186 mask!3328) (Found!8063 j!159)))))

(declare-fun b!785808 () Bool)

(declare-fun e!436869 () Bool)

(assert (=> b!785808 (= e!436861 e!436869)))

(declare-fun res!532098 () Bool)

(assert (=> b!785808 (=> res!532098 e!436869)))

(declare-fun lt!350431 () SeekEntryResult!8063)

(assert (=> b!785808 (= res!532098 (not (= lt!350431 lt!350427)))))

(assert (=> b!785808 (= lt!350431 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20456 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785809 () Bool)

(declare-fun res!532097 () Bool)

(assert (=> b!785809 (=> (not res!532097) (not e!436860))))

(assert (=> b!785809 (= res!532097 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20877 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20877 a!3186))))))

(declare-fun b!785810 () Bool)

(assert (=> b!785810 (= e!436863 e!436859)))

(declare-fun res!532103 () Bool)

(assert (=> b!785810 (=> (not res!532103) (not e!436859))))

(declare-fun lt!350429 () SeekEntryResult!8063)

(assert (=> b!785810 (= res!532103 (= lt!350429 lt!350426))))

(assert (=> b!785810 (= lt!350426 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350434 lt!350430 mask!3328))))

(assert (=> b!785810 (= lt!350429 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350434 mask!3328) lt!350434 lt!350430 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785810 (= lt!350434 (select (store (arr!20456 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785810 (= lt!350430 (array!42744 (store (arr!20456 a!3186) i!1173 k!2102) (size!20877 a!3186)))))

(declare-fun b!785811 () Bool)

(declare-fun res!532110 () Bool)

(assert (=> b!785811 (=> (not res!532110) (not e!436863))))

(assert (=> b!785811 (= res!532110 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20456 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785812 () Bool)

(assert (=> b!785812 (= e!436866 e!436860)))

(declare-fun res!532109 () Bool)

(assert (=> b!785812 (=> (not res!532109) (not e!436860))))

(declare-fun lt!350432 () SeekEntryResult!8063)

(assert (=> b!785812 (= res!532109 (or (= lt!350432 (MissingZero!8063 i!1173)) (= lt!350432 (MissingVacant!8063 i!1173))))))

(assert (=> b!785812 (= lt!350432 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!785813 () Bool)

(assert (=> b!785813 (= e!436868 (= lt!350435 lt!350431))))

(declare-fun b!785814 () Bool)

(declare-fun res!532100 () Bool)

(assert (=> b!785814 (=> (not res!532100) (not e!436863))))

(assert (=> b!785814 (= res!532100 e!436867)))

(declare-fun c!87257 () Bool)

(assert (=> b!785814 (= c!87257 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785815 () Bool)

(declare-fun res!532104 () Bool)

(assert (=> b!785815 (=> (not res!532104) (not e!436866))))

(assert (=> b!785815 (= res!532104 (and (= (size!20877 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20877 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20877 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785816 () Bool)

(assert (=> b!785816 (= e!436869 e!436865)))

(declare-fun res!532112 () Bool)

(assert (=> b!785816 (=> res!532112 e!436865)))

(assert (=> b!785816 (= res!532112 (= lt!350433 lt!350434))))

(assert (=> b!785816 (= lt!350433 (select (store (arr!20456 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!785817 () Bool)

(declare-fun res!532102 () Bool)

(assert (=> b!785817 (=> (not res!532102) (not e!436860))))

(assert (=> b!785817 (= res!532102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67748 res!532106) b!785815))

(assert (= (and b!785815 res!532104) b!785805))

(assert (= (and b!785805 res!532101) b!785802))

(assert (= (and b!785802 res!532113) b!785795))

(assert (= (and b!785795 res!532108) b!785812))

(assert (= (and b!785812 res!532109) b!785817))

(assert (= (and b!785817 res!532102) b!785799))

(assert (= (and b!785799 res!532111) b!785809))

(assert (= (and b!785809 res!532097) b!785803))

(assert (= (and b!785803 res!532099) b!785811))

(assert (= (and b!785811 res!532110) b!785814))

(assert (= (and b!785814 c!87257) b!785800))

(assert (= (and b!785814 (not c!87257)) b!785807))

(assert (= (and b!785814 res!532100) b!785810))

(assert (= (and b!785810 res!532103) b!785801))

(assert (= (and b!785801 res!532107) b!785806))

(assert (= (and b!785801 (not res!532105)) b!785808))

(assert (= (and b!785808 (not res!532098)) b!785816))

(assert (= (and b!785816 (not res!532112)) b!785796))

(assert (= (and b!785796 c!87258) b!785797))

(assert (= (and b!785796 (not c!87258)) b!785798))

(assert (= (and b!785796 res!532114) b!785804))

(assert (= (and b!785804 res!532096) b!785813))

(declare-fun m!727821 () Bool)

(assert (=> start!67748 m!727821))

(declare-fun m!727823 () Bool)

(assert (=> start!67748 m!727823))

(declare-fun m!727825 () Bool)

(assert (=> b!785806 m!727825))

(assert (=> b!785806 m!727825))

(declare-fun m!727827 () Bool)

(assert (=> b!785806 m!727827))

(declare-fun m!727829 () Bool)

(assert (=> b!785804 m!727829))

(declare-fun m!727831 () Bool)

(assert (=> b!785804 m!727831))

(declare-fun m!727833 () Bool)

(assert (=> b!785810 m!727833))

(declare-fun m!727835 () Bool)

(assert (=> b!785810 m!727835))

(declare-fun m!727837 () Bool)

(assert (=> b!785810 m!727837))

(declare-fun m!727839 () Bool)

(assert (=> b!785810 m!727839))

(assert (=> b!785810 m!727835))

(declare-fun m!727841 () Bool)

(assert (=> b!785810 m!727841))

(assert (=> b!785807 m!727825))

(assert (=> b!785807 m!727825))

(declare-fun m!727843 () Bool)

(assert (=> b!785807 m!727843))

(assert (=> b!785805 m!727825))

(assert (=> b!785805 m!727825))

(declare-fun m!727845 () Bool)

(assert (=> b!785805 m!727845))

(assert (=> b!785808 m!727825))

(assert (=> b!785808 m!727825))

(assert (=> b!785808 m!727843))

(assert (=> b!785816 m!727839))

(declare-fun m!727847 () Bool)

(assert (=> b!785816 m!727847))

(declare-fun m!727849 () Bool)

(assert (=> b!785811 m!727849))

(assert (=> b!785803 m!727825))

(assert (=> b!785803 m!727825))

(declare-fun m!727851 () Bool)

(assert (=> b!785803 m!727851))

(assert (=> b!785803 m!727851))

(assert (=> b!785803 m!727825))

(declare-fun m!727853 () Bool)

(assert (=> b!785803 m!727853))

(declare-fun m!727855 () Bool)

(assert (=> b!785802 m!727855))

(assert (=> b!785801 m!727825))

(assert (=> b!785801 m!727825))

(declare-fun m!727857 () Bool)

(assert (=> b!785801 m!727857))

(declare-fun m!727859 () Bool)

(assert (=> b!785801 m!727859))

(declare-fun m!727861 () Bool)

(assert (=> b!785801 m!727861))

(declare-fun m!727863 () Bool)

(assert (=> b!785799 m!727863))

(declare-fun m!727865 () Bool)

(assert (=> b!785795 m!727865))

(declare-fun m!727867 () Bool)

(assert (=> b!785817 m!727867))

(declare-fun m!727869 () Bool)

(assert (=> b!785812 m!727869))

(assert (=> b!785800 m!727825))

(assert (=> b!785800 m!727825))

(declare-fun m!727871 () Bool)

(assert (=> b!785800 m!727871))

(push 1)

