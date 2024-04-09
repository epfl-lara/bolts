; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67672 () Bool)

(assert start!67672)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!435504 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42667 0))(
  ( (array!42668 (arr!20418 (Array (_ BitVec 32) (_ BitVec 64))) (size!20839 (_ BitVec 32))) )
))
(declare-fun lt!349066 () array!42667)

(declare-fun b!783189 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!349075 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8025 0))(
  ( (MissingZero!8025 (index!34467 (_ BitVec 32))) (Found!8025 (index!34468 (_ BitVec 32))) (Intermediate!8025 (undefined!8837 Bool) (index!34469 (_ BitVec 32)) (x!65454 (_ BitVec 32))) (Undefined!8025) (MissingVacant!8025 (index!34470 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42667 (_ BitVec 32)) SeekEntryResult!8025)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42667 (_ BitVec 32)) SeekEntryResult!8025)

(assert (=> b!783189 (= e!435504 (= (seekEntryOrOpen!0 lt!349075 lt!349066 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349075 lt!349066 mask!3328)))))

(declare-fun b!783190 () Bool)

(declare-datatypes ((Unit!27010 0))(
  ( (Unit!27011) )
))
(declare-fun e!435505 () Unit!27010)

(declare-fun Unit!27012 () Unit!27010)

(assert (=> b!783190 (= e!435505 Unit!27012)))

(declare-fun b!783191 () Bool)

(declare-fun e!435499 () Bool)

(declare-fun e!435502 () Bool)

(assert (=> b!783191 (= e!435499 e!435502)))

(declare-fun res!529962 () Bool)

(assert (=> b!783191 (=> (not res!529962) (not e!435502))))

(declare-fun a!3186 () array!42667)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!349070 () SeekEntryResult!8025)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42667 (_ BitVec 32)) SeekEntryResult!8025)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783191 (= res!529962 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20418 a!3186) j!159) mask!3328) (select (arr!20418 a!3186) j!159) a!3186 mask!3328) lt!349070))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783191 (= lt!349070 (Intermediate!8025 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783193 () Bool)

(declare-fun res!529954 () Bool)

(declare-fun e!435508 () Bool)

(assert (=> b!783193 (=> (not res!529954) (not e!435508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783193 (= res!529954 (validKeyInArray!0 (select (arr!20418 a!3186) j!159)))))

(declare-fun b!783194 () Bool)

(assert (=> b!783194 (= e!435508 e!435499)))

(declare-fun res!529955 () Bool)

(assert (=> b!783194 (=> (not res!529955) (not e!435499))))

(declare-fun lt!349067 () SeekEntryResult!8025)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783194 (= res!529955 (or (= lt!349067 (MissingZero!8025 i!1173)) (= lt!349067 (MissingVacant!8025 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!783194 (= lt!349067 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783195 () Bool)

(declare-fun e!435500 () Bool)

(declare-fun e!435501 () Bool)

(assert (=> b!783195 (= e!435500 e!435501)))

(declare-fun res!529957 () Bool)

(assert (=> b!783195 (=> res!529957 e!435501)))

(declare-fun lt!349069 () (_ BitVec 64))

(assert (=> b!783195 (= res!529957 (= lt!349069 lt!349075))))

(assert (=> b!783195 (= lt!349069 (select (store (arr!20418 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783196 () Bool)

(declare-fun res!529949 () Bool)

(assert (=> b!783196 (=> (not res!529949) (not e!435502))))

(declare-fun e!435498 () Bool)

(assert (=> b!783196 (= res!529949 e!435498)))

(declare-fun c!87029 () Bool)

(assert (=> b!783196 (= c!87029 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783197 () Bool)

(declare-fun res!529950 () Bool)

(assert (=> b!783197 (=> (not res!529950) (not e!435499))))

(declare-datatypes ((List!14473 0))(
  ( (Nil!14470) (Cons!14469 (h!15592 (_ BitVec 64)) (t!20796 List!14473)) )
))
(declare-fun arrayNoDuplicates!0 (array!42667 (_ BitVec 32) List!14473) Bool)

(assert (=> b!783197 (= res!529950 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14470))))

(declare-fun b!783198 () Bool)

(declare-fun Unit!27013 () Unit!27010)

(assert (=> b!783198 (= e!435505 Unit!27013)))

(assert (=> b!783198 false))

(declare-fun b!783199 () Bool)

(assert (=> b!783199 (= e!435501 true)))

(assert (=> b!783199 e!435504))

(declare-fun res!529951 () Bool)

(assert (=> b!783199 (=> (not res!529951) (not e!435504))))

(assert (=> b!783199 (= res!529951 (= lt!349069 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349074 () Unit!27010)

(assert (=> b!783199 (= lt!349074 e!435505)))

(declare-fun c!87030 () Bool)

(assert (=> b!783199 (= c!87030 (= lt!349069 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783200 () Bool)

(declare-fun e!435506 () Bool)

(assert (=> b!783200 (= e!435502 e!435506)))

(declare-fun res!529956 () Bool)

(assert (=> b!783200 (=> (not res!529956) (not e!435506))))

(declare-fun lt!349068 () SeekEntryResult!8025)

(declare-fun lt!349072 () SeekEntryResult!8025)

(assert (=> b!783200 (= res!529956 (= lt!349068 lt!349072))))

(assert (=> b!783200 (= lt!349072 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349075 lt!349066 mask!3328))))

(assert (=> b!783200 (= lt!349068 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349075 mask!3328) lt!349075 lt!349066 mask!3328))))

(assert (=> b!783200 (= lt!349075 (select (store (arr!20418 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783200 (= lt!349066 (array!42668 (store (arr!20418 a!3186) i!1173 k!2102) (size!20839 a!3186)))))

(declare-fun b!783201 () Bool)

(declare-fun res!529946 () Bool)

(assert (=> b!783201 (=> (not res!529946) (not e!435502))))

(assert (=> b!783201 (= res!529946 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20418 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783202 () Bool)

(assert (=> b!783202 (= e!435498 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20418 a!3186) j!159) a!3186 mask!3328) (Found!8025 j!159)))))

(declare-fun b!783203 () Bool)

(declare-fun res!529958 () Bool)

(assert (=> b!783203 (=> (not res!529958) (not e!435508))))

(assert (=> b!783203 (= res!529958 (and (= (size!20839 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20839 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20839 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783204 () Bool)

(assert (=> b!783204 (= e!435498 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20418 a!3186) j!159) a!3186 mask!3328) lt!349070))))

(declare-fun e!435507 () Bool)

(declare-fun lt!349065 () SeekEntryResult!8025)

(declare-fun b!783205 () Bool)

(assert (=> b!783205 (= e!435507 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20418 a!3186) j!159) a!3186 mask!3328) lt!349065))))

(declare-fun b!783206 () Bool)

(declare-fun res!529960 () Bool)

(assert (=> b!783206 (=> (not res!529960) (not e!435499))))

(assert (=> b!783206 (= res!529960 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20839 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20839 a!3186))))))

(declare-fun res!529963 () Bool)

(assert (=> start!67672 (=> (not res!529963) (not e!435508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67672 (= res!529963 (validMask!0 mask!3328))))

(assert (=> start!67672 e!435508))

(assert (=> start!67672 true))

(declare-fun array_inv!16192 (array!42667) Bool)

(assert (=> start!67672 (array_inv!16192 a!3186)))

(declare-fun b!783192 () Bool)

(declare-fun res!529947 () Bool)

(assert (=> b!783192 (=> (not res!529947) (not e!435499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42667 (_ BitVec 32)) Bool)

(assert (=> b!783192 (= res!529947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783207 () Bool)

(declare-fun res!529948 () Bool)

(assert (=> b!783207 (=> (not res!529948) (not e!435508))))

(assert (=> b!783207 (= res!529948 (validKeyInArray!0 k!2102))))

(declare-fun b!783208 () Bool)

(declare-fun res!529952 () Bool)

(assert (=> b!783208 (=> res!529952 e!435500)))

(assert (=> b!783208 (= res!529952 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20418 a!3186) j!159) a!3186 mask!3328) lt!349065)))))

(declare-fun b!783209 () Bool)

(declare-fun res!529961 () Bool)

(assert (=> b!783209 (=> (not res!529961) (not e!435508))))

(declare-fun arrayContainsKey!0 (array!42667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783209 (= res!529961 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783210 () Bool)

(assert (=> b!783210 (= e!435506 (not e!435500))))

(declare-fun res!529959 () Bool)

(assert (=> b!783210 (=> res!529959 e!435500)))

(assert (=> b!783210 (= res!529959 (or (not (is-Intermediate!8025 lt!349072)) (bvslt x!1131 (x!65454 lt!349072)) (not (= x!1131 (x!65454 lt!349072))) (not (= index!1321 (index!34469 lt!349072)))))))

(assert (=> b!783210 e!435507))

(declare-fun res!529953 () Bool)

(assert (=> b!783210 (=> (not res!529953) (not e!435507))))

(declare-fun lt!349073 () SeekEntryResult!8025)

(assert (=> b!783210 (= res!529953 (= lt!349073 lt!349065))))

(assert (=> b!783210 (= lt!349065 (Found!8025 j!159))))

(assert (=> b!783210 (= lt!349073 (seekEntryOrOpen!0 (select (arr!20418 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!783210 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349071 () Unit!27010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27010)

(assert (=> b!783210 (= lt!349071 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67672 res!529963) b!783203))

(assert (= (and b!783203 res!529958) b!783193))

(assert (= (and b!783193 res!529954) b!783207))

(assert (= (and b!783207 res!529948) b!783209))

(assert (= (and b!783209 res!529961) b!783194))

(assert (= (and b!783194 res!529955) b!783192))

(assert (= (and b!783192 res!529947) b!783197))

(assert (= (and b!783197 res!529950) b!783206))

(assert (= (and b!783206 res!529960) b!783191))

(assert (= (and b!783191 res!529962) b!783201))

(assert (= (and b!783201 res!529946) b!783196))

(assert (= (and b!783196 c!87029) b!783204))

(assert (= (and b!783196 (not c!87029)) b!783202))

(assert (= (and b!783196 res!529949) b!783200))

(assert (= (and b!783200 res!529956) b!783210))

(assert (= (and b!783210 res!529953) b!783205))

(assert (= (and b!783210 (not res!529959)) b!783208))

(assert (= (and b!783208 (not res!529952)) b!783195))

(assert (= (and b!783195 (not res!529957)) b!783199))

(assert (= (and b!783199 c!87030) b!783198))

(assert (= (and b!783199 (not c!87030)) b!783190))

(assert (= (and b!783199 res!529951) b!783189))

(declare-fun m!725845 () Bool)

(assert (=> b!783193 m!725845))

(assert (=> b!783193 m!725845))

(declare-fun m!725847 () Bool)

(assert (=> b!783193 m!725847))

(assert (=> b!783191 m!725845))

(assert (=> b!783191 m!725845))

(declare-fun m!725849 () Bool)

(assert (=> b!783191 m!725849))

(assert (=> b!783191 m!725849))

(assert (=> b!783191 m!725845))

(declare-fun m!725851 () Bool)

(assert (=> b!783191 m!725851))

(assert (=> b!783208 m!725845))

(assert (=> b!783208 m!725845))

(declare-fun m!725853 () Bool)

(assert (=> b!783208 m!725853))

(declare-fun m!725855 () Bool)

(assert (=> b!783195 m!725855))

(declare-fun m!725857 () Bool)

(assert (=> b!783195 m!725857))

(assert (=> b!783202 m!725845))

(assert (=> b!783202 m!725845))

(assert (=> b!783202 m!725853))

(declare-fun m!725859 () Bool)

(assert (=> b!783209 m!725859))

(assert (=> b!783204 m!725845))

(assert (=> b!783204 m!725845))

(declare-fun m!725861 () Bool)

(assert (=> b!783204 m!725861))

(declare-fun m!725863 () Bool)

(assert (=> b!783201 m!725863))

(declare-fun m!725865 () Bool)

(assert (=> b!783194 m!725865))

(assert (=> b!783205 m!725845))

(assert (=> b!783205 m!725845))

(declare-fun m!725867 () Bool)

(assert (=> b!783205 m!725867))

(declare-fun m!725869 () Bool)

(assert (=> start!67672 m!725869))

(declare-fun m!725871 () Bool)

(assert (=> start!67672 m!725871))

(declare-fun m!725873 () Bool)

(assert (=> b!783197 m!725873))

(declare-fun m!725875 () Bool)

(assert (=> b!783207 m!725875))

(declare-fun m!725877 () Bool)

(assert (=> b!783192 m!725877))

(assert (=> b!783210 m!725845))

(assert (=> b!783210 m!725845))

(declare-fun m!725879 () Bool)

(assert (=> b!783210 m!725879))

(declare-fun m!725881 () Bool)

(assert (=> b!783210 m!725881))

(declare-fun m!725883 () Bool)

(assert (=> b!783210 m!725883))

(declare-fun m!725885 () Bool)

(assert (=> b!783189 m!725885))

(declare-fun m!725887 () Bool)

(assert (=> b!783189 m!725887))

(assert (=> b!783200 m!725855))

(declare-fun m!725889 () Bool)

(assert (=> b!783200 m!725889))

(declare-fun m!725891 () Bool)

(assert (=> b!783200 m!725891))

(declare-fun m!725893 () Bool)

(assert (=> b!783200 m!725893))

(assert (=> b!783200 m!725891))

(declare-fun m!725895 () Bool)

(assert (=> b!783200 m!725895))

(push 1)

