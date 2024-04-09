; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67928 () Bool)

(assert start!67928)

(declare-fun b!790146 () Bool)

(declare-datatypes ((Unit!27390 0))(
  ( (Unit!27391) )
))
(declare-fun e!439186 () Unit!27390)

(declare-fun Unit!27392 () Unit!27390)

(assert (=> b!790146 (= e!439186 Unit!27392)))

(declare-fun res!535453 () Bool)

(declare-fun e!439185 () Bool)

(assert (=> start!67928 (=> (not res!535453) (not e!439185))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67928 (= res!535453 (validMask!0 mask!3328))))

(assert (=> start!67928 e!439185))

(assert (=> start!67928 true))

(declare-datatypes ((array!42860 0))(
  ( (array!42861 (arr!20513 (Array (_ BitVec 32) (_ BitVec 64))) (size!20934 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42860)

(declare-fun array_inv!16287 (array!42860) Bool)

(assert (=> start!67928 (array_inv!16287 a!3186)))

(declare-datatypes ((SeekEntryResult!8120 0))(
  ( (MissingZero!8120 (index!34847 (_ BitVec 32))) (Found!8120 (index!34848 (_ BitVec 32))) (Intermediate!8120 (undefined!8932 Bool) (index!34849 (_ BitVec 32)) (x!65806 (_ BitVec 32))) (Undefined!8120) (MissingVacant!8120 (index!34850 (_ BitVec 32))) )
))
(declare-fun lt!352767 () SeekEntryResult!8120)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!790147 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!439191 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42860 (_ BitVec 32)) SeekEntryResult!8120)

(assert (=> b!790147 (= e!439191 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20513 a!3186) j!159) a!3186 mask!3328) lt!352767))))

(declare-fun b!790148 () Bool)

(declare-fun e!439182 () Bool)

(declare-fun e!439189 () Bool)

(assert (=> b!790148 (= e!439182 e!439189)))

(declare-fun res!535447 () Bool)

(assert (=> b!790148 (=> (not res!535447) (not e!439189))))

(declare-fun lt!352772 () SeekEntryResult!8120)

(declare-fun lt!352774 () SeekEntryResult!8120)

(assert (=> b!790148 (= res!535447 (= lt!352772 lt!352774))))

(declare-fun lt!352776 () (_ BitVec 64))

(declare-fun lt!352763 () array!42860)

(assert (=> b!790148 (= lt!352774 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352776 lt!352763 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790148 (= lt!352772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352776 mask!3328) lt!352776 lt!352763 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!790148 (= lt!352776 (select (store (arr!20513 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!790148 (= lt!352763 (array!42861 (store (arr!20513 a!3186) i!1173 k!2102) (size!20934 a!3186)))))

(declare-fun b!790149 () Bool)

(declare-fun e!439187 () Bool)

(declare-fun e!439184 () Bool)

(assert (=> b!790149 (= e!439187 e!439184)))

(declare-fun res!535442 () Bool)

(assert (=> b!790149 (=> res!535442 e!439184)))

(declare-fun lt!352764 () SeekEntryResult!8120)

(declare-fun lt!352775 () SeekEntryResult!8120)

(assert (=> b!790149 (= res!535442 (not (= lt!352764 lt!352775)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42860 (_ BitVec 32)) SeekEntryResult!8120)

(assert (=> b!790149 (= lt!352764 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20513 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790150 () Bool)

(declare-fun res!535446 () Bool)

(declare-fun e!439181 () Bool)

(assert (=> b!790150 (=> (not res!535446) (not e!439181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42860 (_ BitVec 32)) Bool)

(assert (=> b!790150 (= res!535446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790151 () Bool)

(assert (=> b!790151 (= e!439189 (not e!439187))))

(declare-fun res!535445 () Bool)

(assert (=> b!790151 (=> res!535445 e!439187)))

(assert (=> b!790151 (= res!535445 (or (not (is-Intermediate!8120 lt!352774)) (bvslt x!1131 (x!65806 lt!352774)) (not (= x!1131 (x!65806 lt!352774))) (not (= index!1321 (index!34849 lt!352774)))))))

(declare-fun e!439183 () Bool)

(assert (=> b!790151 e!439183))

(declare-fun res!535437 () Bool)

(assert (=> b!790151 (=> (not res!535437) (not e!439183))))

(declare-fun lt!352769 () SeekEntryResult!8120)

(assert (=> b!790151 (= res!535437 (= lt!352769 lt!352775))))

(assert (=> b!790151 (= lt!352775 (Found!8120 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42860 (_ BitVec 32)) SeekEntryResult!8120)

(assert (=> b!790151 (= lt!352769 (seekEntryOrOpen!0 (select (arr!20513 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!790151 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352765 () Unit!27390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42860 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27390)

(assert (=> b!790151 (= lt!352765 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790152 () Bool)

(declare-fun res!535440 () Bool)

(assert (=> b!790152 (=> (not res!535440) (not e!439185))))

(declare-fun arrayContainsKey!0 (array!42860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790152 (= res!535440 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790153 () Bool)

(assert (=> b!790153 (= e!439191 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20513 a!3186) j!159) a!3186 mask!3328) (Found!8120 j!159)))))

(declare-fun b!790154 () Bool)

(declare-fun e!439188 () Bool)

(declare-fun e!439190 () Bool)

(assert (=> b!790154 (= e!439188 e!439190)))

(declare-fun res!535443 () Bool)

(assert (=> b!790154 (=> res!535443 e!439190)))

(assert (=> b!790154 (= res!535443 (or (not (= (select (arr!20513 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352773 () SeekEntryResult!8120)

(declare-fun lt!352771 () SeekEntryResult!8120)

(assert (=> b!790154 (and (= lt!352771 lt!352773) (= lt!352769 lt!352764))))

(assert (=> b!790154 (= lt!352773 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352776 lt!352763 mask!3328))))

(assert (=> b!790154 (= lt!352771 (seekEntryOrOpen!0 lt!352776 lt!352763 mask!3328))))

(declare-fun lt!352770 () (_ BitVec 64))

(assert (=> b!790154 (= lt!352770 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352768 () Unit!27390)

(assert (=> b!790154 (= lt!352768 e!439186)))

(declare-fun c!87765 () Bool)

(assert (=> b!790154 (= c!87765 (= lt!352770 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790155 () Bool)

(assert (=> b!790155 (= e!439184 e!439188)))

(declare-fun res!535439 () Bool)

(assert (=> b!790155 (=> res!535439 e!439188)))

(assert (=> b!790155 (= res!535439 (= lt!352770 lt!352776))))

(assert (=> b!790155 (= lt!352770 (select (store (arr!20513 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!790156 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790156 (= e!439183 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20513 a!3186) j!159) a!3186 mask!3328) lt!352775))))

(declare-fun b!790157 () Bool)

(assert (=> b!790157 (= e!439181 e!439182)))

(declare-fun res!535449 () Bool)

(assert (=> b!790157 (=> (not res!535449) (not e!439182))))

(assert (=> b!790157 (= res!535449 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20513 a!3186) j!159) mask!3328) (select (arr!20513 a!3186) j!159) a!3186 mask!3328) lt!352767))))

(assert (=> b!790157 (= lt!352767 (Intermediate!8120 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!790158 () Bool)

(declare-fun Unit!27393 () Unit!27390)

(assert (=> b!790158 (= e!439186 Unit!27393)))

(assert (=> b!790158 false))

(declare-fun b!790159 () Bool)

(assert (=> b!790159 (= e!439190 (= lt!352771 lt!352775))))

(assert (=> b!790159 (= lt!352773 lt!352764)))

(declare-fun lt!352777 () Unit!27390)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42860 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27390)

(assert (=> b!790159 (= lt!352777 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!790160 () Bool)

(declare-fun res!535441 () Bool)

(assert (=> b!790160 (=> (not res!535441) (not e!439182))))

(assert (=> b!790160 (= res!535441 e!439191)))

(declare-fun c!87764 () Bool)

(assert (=> b!790160 (= c!87764 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!790161 () Bool)

(declare-fun res!535450 () Bool)

(assert (=> b!790161 (=> (not res!535450) (not e!439181))))

(declare-datatypes ((List!14568 0))(
  ( (Nil!14565) (Cons!14564 (h!15690 (_ BitVec 64)) (t!20891 List!14568)) )
))
(declare-fun arrayNoDuplicates!0 (array!42860 (_ BitVec 32) List!14568) Bool)

(assert (=> b!790161 (= res!535450 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14565))))

(declare-fun b!790162 () Bool)

(declare-fun res!535444 () Bool)

(assert (=> b!790162 (=> (not res!535444) (not e!439182))))

(assert (=> b!790162 (= res!535444 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20513 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790163 () Bool)

(declare-fun res!535438 () Bool)

(assert (=> b!790163 (=> (not res!535438) (not e!439185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790163 (= res!535438 (validKeyInArray!0 (select (arr!20513 a!3186) j!159)))))

(declare-fun b!790164 () Bool)

(declare-fun res!535451 () Bool)

(assert (=> b!790164 (=> (not res!535451) (not e!439185))))

(assert (=> b!790164 (= res!535451 (and (= (size!20934 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20934 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20934 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!790165 () Bool)

(declare-fun res!535436 () Bool)

(assert (=> b!790165 (=> (not res!535436) (not e!439181))))

(assert (=> b!790165 (= res!535436 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20934 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20934 a!3186))))))

(declare-fun b!790166 () Bool)

(declare-fun res!535448 () Bool)

(assert (=> b!790166 (=> (not res!535448) (not e!439185))))

(assert (=> b!790166 (= res!535448 (validKeyInArray!0 k!2102))))

(declare-fun b!790167 () Bool)

(assert (=> b!790167 (= e!439185 e!439181)))

(declare-fun res!535452 () Bool)

(assert (=> b!790167 (=> (not res!535452) (not e!439181))))

(declare-fun lt!352766 () SeekEntryResult!8120)

(assert (=> b!790167 (= res!535452 (or (= lt!352766 (MissingZero!8120 i!1173)) (= lt!352766 (MissingVacant!8120 i!1173))))))

(assert (=> b!790167 (= lt!352766 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!67928 res!535453) b!790164))

(assert (= (and b!790164 res!535451) b!790163))

(assert (= (and b!790163 res!535438) b!790166))

(assert (= (and b!790166 res!535448) b!790152))

(assert (= (and b!790152 res!535440) b!790167))

(assert (= (and b!790167 res!535452) b!790150))

(assert (= (and b!790150 res!535446) b!790161))

(assert (= (and b!790161 res!535450) b!790165))

(assert (= (and b!790165 res!535436) b!790157))

(assert (= (and b!790157 res!535449) b!790162))

(assert (= (and b!790162 res!535444) b!790160))

(assert (= (and b!790160 c!87764) b!790147))

(assert (= (and b!790160 (not c!87764)) b!790153))

(assert (= (and b!790160 res!535441) b!790148))

(assert (= (and b!790148 res!535447) b!790151))

(assert (= (and b!790151 res!535437) b!790156))

(assert (= (and b!790151 (not res!535445)) b!790149))

(assert (= (and b!790149 (not res!535442)) b!790155))

(assert (= (and b!790155 (not res!535439)) b!790154))

(assert (= (and b!790154 c!87765) b!790158))

(assert (= (and b!790154 (not c!87765)) b!790146))

(assert (= (and b!790154 (not res!535443)) b!790159))

(declare-fun m!731165 () Bool)

(assert (=> b!790163 m!731165))

(assert (=> b!790163 m!731165))

(declare-fun m!731167 () Bool)

(assert (=> b!790163 m!731167))

(assert (=> b!790149 m!731165))

(assert (=> b!790149 m!731165))

(declare-fun m!731169 () Bool)

(assert (=> b!790149 m!731169))

(declare-fun m!731171 () Bool)

(assert (=> start!67928 m!731171))

(declare-fun m!731173 () Bool)

(assert (=> start!67928 m!731173))

(declare-fun m!731175 () Bool)

(assert (=> b!790167 m!731175))

(declare-fun m!731177 () Bool)

(assert (=> b!790159 m!731177))

(declare-fun m!731179 () Bool)

(assert (=> b!790154 m!731179))

(declare-fun m!731181 () Bool)

(assert (=> b!790154 m!731181))

(declare-fun m!731183 () Bool)

(assert (=> b!790154 m!731183))

(assert (=> b!790153 m!731165))

(assert (=> b!790153 m!731165))

(assert (=> b!790153 m!731169))

(declare-fun m!731185 () Bool)

(assert (=> b!790155 m!731185))

(declare-fun m!731187 () Bool)

(assert (=> b!790155 m!731187))

(declare-fun m!731189 () Bool)

(assert (=> b!790161 m!731189))

(assert (=> b!790151 m!731165))

(assert (=> b!790151 m!731165))

(declare-fun m!731191 () Bool)

(assert (=> b!790151 m!731191))

(declare-fun m!731193 () Bool)

(assert (=> b!790151 m!731193))

(declare-fun m!731195 () Bool)

(assert (=> b!790151 m!731195))

(declare-fun m!731197 () Bool)

(assert (=> b!790166 m!731197))

(declare-fun m!731199 () Bool)

(assert (=> b!790162 m!731199))

(assert (=> b!790147 m!731165))

(assert (=> b!790147 m!731165))

(declare-fun m!731201 () Bool)

(assert (=> b!790147 m!731201))

(declare-fun m!731203 () Bool)

(assert (=> b!790152 m!731203))

(declare-fun m!731205 () Bool)

(assert (=> b!790150 m!731205))

(assert (=> b!790156 m!731165))

(assert (=> b!790156 m!731165))

(declare-fun m!731207 () Bool)

(assert (=> b!790156 m!731207))

(assert (=> b!790157 m!731165))

(assert (=> b!790157 m!731165))

(declare-fun m!731209 () Bool)

(assert (=> b!790157 m!731209))

(assert (=> b!790157 m!731209))

(assert (=> b!790157 m!731165))

(declare-fun m!731211 () Bool)

(assert (=> b!790157 m!731211))

(declare-fun m!731213 () Bool)

(assert (=> b!790148 m!731213))

(assert (=> b!790148 m!731185))

(declare-fun m!731215 () Bool)

(assert (=> b!790148 m!731215))

(declare-fun m!731217 () Bool)

(assert (=> b!790148 m!731217))

(declare-fun m!731219 () Bool)

(assert (=> b!790148 m!731219))

(assert (=> b!790148 m!731215))

(push 1)

