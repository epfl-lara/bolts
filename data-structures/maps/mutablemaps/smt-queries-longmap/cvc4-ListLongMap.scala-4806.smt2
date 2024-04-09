; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66066 () Bool)

(assert start!66066)

(declare-fun b!760935 () Bool)

(declare-fun e!424228 () Bool)

(declare-fun e!424227 () Bool)

(assert (=> b!760935 (= e!424228 e!424227)))

(declare-fun res!514831 () Bool)

(assert (=> b!760935 (=> (not res!514831) (not e!424227))))

(declare-datatypes ((array!42050 0))(
  ( (array!42051 (arr!20132 (Array (_ BitVec 32) (_ BitVec 64))) (size!20553 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42050)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7739 0))(
  ( (MissingZero!7739 (index!33323 (_ BitVec 32))) (Found!7739 (index!33324 (_ BitVec 32))) (Intermediate!7739 (undefined!8551 Bool) (index!33325 (_ BitVec 32)) (x!64246 (_ BitVec 32))) (Undefined!7739) (MissingVacant!7739 (index!33326 (_ BitVec 32))) )
))
(declare-fun lt!339034 () SeekEntryResult!7739)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42050 (_ BitVec 32)) SeekEntryResult!7739)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760935 (= res!514831 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20132 a!3186) j!159) mask!3328) (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339034))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!760935 (= lt!339034 (Intermediate!7739 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!760936 () Bool)

(declare-fun res!514829 () Bool)

(assert (=> b!760936 (=> (not res!514829) (not e!424228))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!760936 (= res!514829 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20553 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20553 a!3186))))))

(declare-fun b!760937 () Bool)

(declare-fun res!514819 () Bool)

(declare-fun e!424222 () Bool)

(assert (=> b!760937 (=> (not res!514819) (not e!424222))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!760937 (= res!514819 (validKeyInArray!0 k!2102))))

(declare-fun b!760938 () Bool)

(declare-fun e!424221 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42050 (_ BitVec 32)) SeekEntryResult!7739)

(assert (=> b!760938 (= e!424221 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) (Found!7739 j!159)))))

(declare-fun b!760939 () Bool)

(declare-fun e!424223 () Bool)

(declare-fun e!424225 () Bool)

(assert (=> b!760939 (= e!424223 e!424225)))

(declare-fun res!514825 () Bool)

(assert (=> b!760939 (=> (not res!514825) (not e!424225))))

(declare-fun lt!339040 () SeekEntryResult!7739)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42050 (_ BitVec 32)) SeekEntryResult!7739)

(assert (=> b!760939 (= res!514825 (= (seekEntryOrOpen!0 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339040))))

(assert (=> b!760939 (= lt!339040 (Found!7739 j!159))))

(declare-fun b!760940 () Bool)

(declare-fun e!424229 () Bool)

(assert (=> b!760940 (= e!424227 e!424229)))

(declare-fun res!514832 () Bool)

(assert (=> b!760940 (=> (not res!514832) (not e!424229))))

(declare-fun lt!339035 () SeekEntryResult!7739)

(declare-fun lt!339039 () SeekEntryResult!7739)

(assert (=> b!760940 (= res!514832 (= lt!339035 lt!339039))))

(declare-fun lt!339036 () (_ BitVec 64))

(declare-fun lt!339033 () array!42050)

(assert (=> b!760940 (= lt!339039 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339036 lt!339033 mask!3328))))

(assert (=> b!760940 (= lt!339035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339036 mask!3328) lt!339036 lt!339033 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!760940 (= lt!339036 (select (store (arr!20132 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!760940 (= lt!339033 (array!42051 (store (arr!20132 a!3186) i!1173 k!2102) (size!20553 a!3186)))))

(declare-fun b!760941 () Bool)

(declare-fun res!514824 () Bool)

(assert (=> b!760941 (=> (not res!514824) (not e!424228))))

(declare-datatypes ((List!14187 0))(
  ( (Nil!14184) (Cons!14183 (h!15261 (_ BitVec 64)) (t!20510 List!14187)) )
))
(declare-fun arrayNoDuplicates!0 (array!42050 (_ BitVec 32) List!14187) Bool)

(assert (=> b!760941 (= res!514824 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14184))))

(declare-fun b!760942 () Bool)

(assert (=> b!760942 (= e!424222 e!424228)))

(declare-fun res!514833 () Bool)

(assert (=> b!760942 (=> (not res!514833) (not e!424228))))

(declare-fun lt!339037 () SeekEntryResult!7739)

(assert (=> b!760942 (= res!514833 (or (= lt!339037 (MissingZero!7739 i!1173)) (= lt!339037 (MissingVacant!7739 i!1173))))))

(assert (=> b!760942 (= lt!339037 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!514821 () Bool)

(assert (=> start!66066 (=> (not res!514821) (not e!424222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66066 (= res!514821 (validMask!0 mask!3328))))

(assert (=> start!66066 e!424222))

(assert (=> start!66066 true))

(declare-fun array_inv!15906 (array!42050) Bool)

(assert (=> start!66066 (array_inv!15906 a!3186)))

(declare-fun b!760943 () Bool)

(declare-fun res!514822 () Bool)

(assert (=> b!760943 (=> (not res!514822) (not e!424227))))

(declare-fun e!424226 () Bool)

(assert (=> b!760943 (= res!514822 e!424226)))

(declare-fun c!83442 () Bool)

(assert (=> b!760943 (= c!83442 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!760944 () Bool)

(declare-fun res!514827 () Bool)

(assert (=> b!760944 (=> (not res!514827) (not e!424228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42050 (_ BitVec 32)) Bool)

(assert (=> b!760944 (= res!514827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!760945 () Bool)

(assert (=> b!760945 (= e!424229 (not e!424221))))

(declare-fun res!514820 () Bool)

(assert (=> b!760945 (=> res!514820 e!424221)))

(assert (=> b!760945 (= res!514820 (or (not (is-Intermediate!7739 lt!339039)) (bvslt x!1131 (x!64246 lt!339039)) (not (= x!1131 (x!64246 lt!339039))) (not (= index!1321 (index!33325 lt!339039)))))))

(assert (=> b!760945 e!424223))

(declare-fun res!514823 () Bool)

(assert (=> b!760945 (=> (not res!514823) (not e!424223))))

(assert (=> b!760945 (= res!514823 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26318 0))(
  ( (Unit!26319) )
))
(declare-fun lt!339038 () Unit!26318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42050 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26318)

(assert (=> b!760945 (= lt!339038 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!760946 () Bool)

(assert (=> b!760946 (= e!424225 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339040))))

(declare-fun b!760947 () Bool)

(declare-fun res!514826 () Bool)

(assert (=> b!760947 (=> (not res!514826) (not e!424227))))

(assert (=> b!760947 (= res!514826 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20132 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760948 () Bool)

(declare-fun res!514830 () Bool)

(assert (=> b!760948 (=> (not res!514830) (not e!424222))))

(assert (=> b!760948 (= res!514830 (validKeyInArray!0 (select (arr!20132 a!3186) j!159)))))

(declare-fun b!760949 () Bool)

(declare-fun res!514818 () Bool)

(assert (=> b!760949 (=> (not res!514818) (not e!424222))))

(declare-fun arrayContainsKey!0 (array!42050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!760949 (= res!514818 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!760950 () Bool)

(assert (=> b!760950 (= e!424226 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339034))))

(declare-fun b!760951 () Bool)

(assert (=> b!760951 (= e!424226 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) (Found!7739 j!159)))))

(declare-fun b!760952 () Bool)

(declare-fun res!514828 () Bool)

(assert (=> b!760952 (=> (not res!514828) (not e!424222))))

(assert (=> b!760952 (= res!514828 (and (= (size!20553 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20553 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20553 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66066 res!514821) b!760952))

(assert (= (and b!760952 res!514828) b!760948))

(assert (= (and b!760948 res!514830) b!760937))

(assert (= (and b!760937 res!514819) b!760949))

(assert (= (and b!760949 res!514818) b!760942))

(assert (= (and b!760942 res!514833) b!760944))

(assert (= (and b!760944 res!514827) b!760941))

(assert (= (and b!760941 res!514824) b!760936))

(assert (= (and b!760936 res!514829) b!760935))

(assert (= (and b!760935 res!514831) b!760947))

(assert (= (and b!760947 res!514826) b!760943))

(assert (= (and b!760943 c!83442) b!760950))

(assert (= (and b!760943 (not c!83442)) b!760951))

(assert (= (and b!760943 res!514822) b!760940))

(assert (= (and b!760940 res!514832) b!760945))

(assert (= (and b!760945 res!514823) b!760939))

(assert (= (and b!760939 res!514825) b!760946))

(assert (= (and b!760945 (not res!514820)) b!760938))

(declare-fun m!708109 () Bool)

(assert (=> b!760935 m!708109))

(assert (=> b!760935 m!708109))

(declare-fun m!708111 () Bool)

(assert (=> b!760935 m!708111))

(assert (=> b!760935 m!708111))

(assert (=> b!760935 m!708109))

(declare-fun m!708113 () Bool)

(assert (=> b!760935 m!708113))

(declare-fun m!708115 () Bool)

(assert (=> b!760941 m!708115))

(declare-fun m!708117 () Bool)

(assert (=> b!760944 m!708117))

(declare-fun m!708119 () Bool)

(assert (=> b!760937 m!708119))

(assert (=> b!760946 m!708109))

(assert (=> b!760946 m!708109))

(declare-fun m!708121 () Bool)

(assert (=> b!760946 m!708121))

(declare-fun m!708123 () Bool)

(assert (=> start!66066 m!708123))

(declare-fun m!708125 () Bool)

(assert (=> start!66066 m!708125))

(assert (=> b!760939 m!708109))

(assert (=> b!760939 m!708109))

(declare-fun m!708127 () Bool)

(assert (=> b!760939 m!708127))

(assert (=> b!760948 m!708109))

(assert (=> b!760948 m!708109))

(declare-fun m!708129 () Bool)

(assert (=> b!760948 m!708129))

(declare-fun m!708131 () Bool)

(assert (=> b!760942 m!708131))

(assert (=> b!760951 m!708109))

(assert (=> b!760951 m!708109))

(declare-fun m!708133 () Bool)

(assert (=> b!760951 m!708133))

(assert (=> b!760950 m!708109))

(assert (=> b!760950 m!708109))

(declare-fun m!708135 () Bool)

(assert (=> b!760950 m!708135))

(declare-fun m!708137 () Bool)

(assert (=> b!760949 m!708137))

(assert (=> b!760938 m!708109))

(assert (=> b!760938 m!708109))

(assert (=> b!760938 m!708133))

(declare-fun m!708139 () Bool)

(assert (=> b!760947 m!708139))

(declare-fun m!708141 () Bool)

(assert (=> b!760940 m!708141))

(declare-fun m!708143 () Bool)

(assert (=> b!760940 m!708143))

(declare-fun m!708145 () Bool)

(assert (=> b!760940 m!708145))

(declare-fun m!708147 () Bool)

(assert (=> b!760940 m!708147))

(declare-fun m!708149 () Bool)

(assert (=> b!760940 m!708149))

(assert (=> b!760940 m!708145))

(declare-fun m!708151 () Bool)

(assert (=> b!760945 m!708151))

(declare-fun m!708153 () Bool)

(assert (=> b!760945 m!708153))

(push 1)

(assert (not b!760946))

(assert (not b!760935))

(assert (not b!760948))

(assert (not b!760937))

(assert (not b!760944))

(assert (not b!760945))

(assert (not b!760951))

(assert (not b!760938))

(assert (not b!760941))

(assert (not b!760942))

(assert (not b!760939))

(assert (not b!760950))

(assert (not b!760940))

(assert (not b!760949))

(assert (not start!66066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!761068 () Bool)

(declare-fun c!83484 () Bool)

(declare-fun lt!339081 () (_ BitVec 64))

(assert (=> b!761068 (= c!83484 (= lt!339081 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424304 () SeekEntryResult!7739)

(declare-fun e!424302 () SeekEntryResult!7739)

(assert (=> b!761068 (= e!424304 e!424302)))

(declare-fun b!761069 () Bool)

(declare-fun e!424303 () SeekEntryResult!7739)

(assert (=> b!761069 (= e!424303 e!424304)))

(declare-fun c!83482 () Bool)

(assert (=> b!761069 (= c!83482 (= lt!339081 (select (arr!20132 a!3186) j!159)))))

(declare-fun b!761070 () Bool)

(assert (=> b!761070 (= e!424303 Undefined!7739)))

(declare-fun b!761071 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!761071 (= e!424302 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20132 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761072 () Bool)

(assert (=> b!761072 (= e!424304 (Found!7739 index!1321))))

(declare-fun b!761067 () Bool)

(assert (=> b!761067 (= e!424302 (MissingVacant!7739 resIntermediateIndex!5))))

(declare-fun lt!339082 () SeekEntryResult!7739)

(declare-fun d!100639 () Bool)

(assert (=> d!100639 (and (or (is-Undefined!7739 lt!339082) (not (is-Found!7739 lt!339082)) (and (bvsge (index!33324 lt!339082) #b00000000000000000000000000000000) (bvslt (index!33324 lt!339082) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339082) (is-Found!7739 lt!339082) (not (is-MissingVacant!7739 lt!339082)) (not (= (index!33326 lt!339082) resIntermediateIndex!5)) (and (bvsge (index!33326 lt!339082) #b00000000000000000000000000000000) (bvslt (index!33326 lt!339082) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339082) (ite (is-Found!7739 lt!339082) (= (select (arr!20132 a!3186) (index!33324 lt!339082)) (select (arr!20132 a!3186) j!159)) (and (is-MissingVacant!7739 lt!339082) (= (index!33326 lt!339082) resIntermediateIndex!5) (= (select (arr!20132 a!3186) (index!33326 lt!339082)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100639 (= lt!339082 e!424303)))

(declare-fun c!83483 () Bool)

(assert (=> d!100639 (= c!83483 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100639 (= lt!339081 (select (arr!20132 a!3186) index!1321))))

(assert (=> d!100639 (validMask!0 mask!3328)))

(assert (=> d!100639 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339082)))

(assert (= (and d!100639 c!83483) b!761070))

(assert (= (and d!100639 (not c!83483)) b!761069))

(assert (= (and b!761069 c!83482) b!761072))

(assert (= (and b!761069 (not c!83482)) b!761068))

(assert (= (and b!761068 c!83484) b!761067))

(assert (= (and b!761068 (not c!83484)) b!761071))

(declare-fun m!708209 () Bool)

(assert (=> b!761071 m!708209))

(assert (=> b!761071 m!708209))

(assert (=> b!761071 m!708109))

(declare-fun m!708211 () Bool)

(assert (=> b!761071 m!708211))

(declare-fun m!708213 () Bool)

(assert (=> d!100639 m!708213))

(declare-fun m!708215 () Bool)

(assert (=> d!100639 m!708215))

(declare-fun m!708217 () Bool)

(assert (=> d!100639 m!708217))

(assert (=> d!100639 m!708123))

(assert (=> b!760951 d!100639))

(declare-fun e!424347 () SeekEntryResult!7739)

(declare-fun b!761145 () Bool)

(assert (=> b!761145 (= e!424347 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!339036 lt!339033 mask!3328))))

(declare-fun b!761146 () Bool)

(declare-fun e!424344 () Bool)

(declare-fun lt!339104 () SeekEntryResult!7739)

(assert (=> b!761146 (= e!424344 (bvsge (x!64246 lt!339104) #b01111111111111111111111111111110))))

(declare-fun b!761147 () Bool)

(assert (=> b!761147 (and (bvsge (index!33325 lt!339104) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339104) (size!20553 lt!339033)))))

(declare-fun res!514892 () Bool)

(assert (=> b!761147 (= res!514892 (= (select (arr!20132 lt!339033) (index!33325 lt!339104)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424348 () Bool)

(assert (=> b!761147 (=> res!514892 e!424348)))

(declare-fun b!761148 () Bool)

(declare-fun e!424345 () SeekEntryResult!7739)

(assert (=> b!761148 (= e!424345 e!424347)))

(declare-fun c!83513 () Bool)

(declare-fun lt!339105 () (_ BitVec 64))

(assert (=> b!761148 (= c!83513 (or (= lt!339105 lt!339036) (= (bvadd lt!339105 lt!339105) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761149 () Bool)

(declare-fun e!424346 () Bool)

(assert (=> b!761149 (= e!424344 e!424346)))

(declare-fun res!514890 () Bool)

(assert (=> b!761149 (= res!514890 (and (is-Intermediate!7739 lt!339104) (not (undefined!8551 lt!339104)) (bvslt (x!64246 lt!339104) #b01111111111111111111111111111110) (bvsge (x!64246 lt!339104) #b00000000000000000000000000000000) (bvsge (x!64246 lt!339104) x!1131)))))

(assert (=> b!761149 (=> (not res!514890) (not e!424346))))

(declare-fun b!761150 () Bool)

(assert (=> b!761150 (and (bvsge (index!33325 lt!339104) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339104) (size!20553 lt!339033)))))

(assert (=> b!761150 (= e!424348 (= (select (arr!20132 lt!339033) (index!33325 lt!339104)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100649 () Bool)

(assert (=> d!100649 e!424344))

(declare-fun c!83512 () Bool)

(assert (=> d!100649 (= c!83512 (and (is-Intermediate!7739 lt!339104) (undefined!8551 lt!339104)))))

(assert (=> d!100649 (= lt!339104 e!424345)))

(declare-fun c!83514 () Bool)

(assert (=> d!100649 (= c!83514 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100649 (= lt!339105 (select (arr!20132 lt!339033) index!1321))))

(assert (=> d!100649 (validMask!0 mask!3328)))

(assert (=> d!100649 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339036 lt!339033 mask!3328) lt!339104)))

(declare-fun b!761151 () Bool)

(assert (=> b!761151 (= e!424347 (Intermediate!7739 false index!1321 x!1131))))

(declare-fun b!761152 () Bool)

(assert (=> b!761152 (and (bvsge (index!33325 lt!339104) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339104) (size!20553 lt!339033)))))

(declare-fun res!514891 () Bool)

(assert (=> b!761152 (= res!514891 (= (select (arr!20132 lt!339033) (index!33325 lt!339104)) lt!339036))))

(assert (=> b!761152 (=> res!514891 e!424348)))

(assert (=> b!761152 (= e!424346 e!424348)))

(declare-fun b!761153 () Bool)

(assert (=> b!761153 (= e!424345 (Intermediate!7739 true index!1321 x!1131))))

(assert (= (and d!100649 c!83514) b!761153))

(assert (= (and d!100649 (not c!83514)) b!761148))

(assert (= (and b!761148 c!83513) b!761151))

(assert (= (and b!761148 (not c!83513)) b!761145))

(assert (= (and d!100649 c!83512) b!761146))

(assert (= (and d!100649 (not c!83512)) b!761149))

(assert (= (and b!761149 res!514890) b!761152))

(assert (= (and b!761152 (not res!514891)) b!761147))

(assert (= (and b!761147 (not res!514892)) b!761150))

(declare-fun m!708245 () Bool)

(assert (=> d!100649 m!708245))

(assert (=> d!100649 m!708123))

(declare-fun m!708247 () Bool)

(assert (=> b!761152 m!708247))

(assert (=> b!761147 m!708247))

(assert (=> b!761145 m!708209))

(assert (=> b!761145 m!708209))

(declare-fun m!708249 () Bool)

(assert (=> b!761145 m!708249))

(assert (=> b!761150 m!708247))

(assert (=> b!760940 d!100649))

(declare-fun b!761158 () Bool)

(declare-fun e!424355 () SeekEntryResult!7739)

(assert (=> b!761158 (= e!424355 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!339036 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!339036 lt!339033 mask!3328))))

(declare-fun b!761159 () Bool)

(declare-fun e!424352 () Bool)

(declare-fun lt!339109 () SeekEntryResult!7739)

(assert (=> b!761159 (= e!424352 (bvsge (x!64246 lt!339109) #b01111111111111111111111111111110))))

(declare-fun b!761160 () Bool)

(assert (=> b!761160 (and (bvsge (index!33325 lt!339109) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339109) (size!20553 lt!339033)))))

(declare-fun res!514897 () Bool)

(assert (=> b!761160 (= res!514897 (= (select (arr!20132 lt!339033) (index!33325 lt!339109)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424356 () Bool)

(assert (=> b!761160 (=> res!514897 e!424356)))

(declare-fun b!761161 () Bool)

(declare-fun e!424353 () SeekEntryResult!7739)

(assert (=> b!761161 (= e!424353 e!424355)))

(declare-fun c!83517 () Bool)

(declare-fun lt!339110 () (_ BitVec 64))

(assert (=> b!761161 (= c!83517 (or (= lt!339110 lt!339036) (= (bvadd lt!339110 lt!339110) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761162 () Bool)

(declare-fun e!424354 () Bool)

(assert (=> b!761162 (= e!424352 e!424354)))

(declare-fun res!514895 () Bool)

(assert (=> b!761162 (= res!514895 (and (is-Intermediate!7739 lt!339109) (not (undefined!8551 lt!339109)) (bvslt (x!64246 lt!339109) #b01111111111111111111111111111110) (bvsge (x!64246 lt!339109) #b00000000000000000000000000000000) (bvsge (x!64246 lt!339109) #b00000000000000000000000000000000)))))

(assert (=> b!761162 (=> (not res!514895) (not e!424354))))

(declare-fun b!761163 () Bool)

(assert (=> b!761163 (and (bvsge (index!33325 lt!339109) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339109) (size!20553 lt!339033)))))

(assert (=> b!761163 (= e!424356 (= (select (arr!20132 lt!339033) (index!33325 lt!339109)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100657 () Bool)

(assert (=> d!100657 e!424352))

(declare-fun c!83516 () Bool)

(assert (=> d!100657 (= c!83516 (and (is-Intermediate!7739 lt!339109) (undefined!8551 lt!339109)))))

(assert (=> d!100657 (= lt!339109 e!424353)))

(declare-fun c!83518 () Bool)

(assert (=> d!100657 (= c!83518 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100657 (= lt!339110 (select (arr!20132 lt!339033) (toIndex!0 lt!339036 mask!3328)))))

(assert (=> d!100657 (validMask!0 mask!3328)))

(assert (=> d!100657 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339036 mask!3328) lt!339036 lt!339033 mask!3328) lt!339109)))

(declare-fun b!761164 () Bool)

(assert (=> b!761164 (= e!424355 (Intermediate!7739 false (toIndex!0 lt!339036 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761165 () Bool)

(assert (=> b!761165 (and (bvsge (index!33325 lt!339109) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339109) (size!20553 lt!339033)))))

(declare-fun res!514896 () Bool)

(assert (=> b!761165 (= res!514896 (= (select (arr!20132 lt!339033) (index!33325 lt!339109)) lt!339036))))

(assert (=> b!761165 (=> res!514896 e!424356)))

(assert (=> b!761165 (= e!424354 e!424356)))

(declare-fun b!761166 () Bool)

(assert (=> b!761166 (= e!424353 (Intermediate!7739 true (toIndex!0 lt!339036 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!100657 c!83518) b!761166))

(assert (= (and d!100657 (not c!83518)) b!761161))

(assert (= (and b!761161 c!83517) b!761164))

(assert (= (and b!761161 (not c!83517)) b!761158))

(assert (= (and d!100657 c!83516) b!761159))

(assert (= (and d!100657 (not c!83516)) b!761162))

(assert (= (and b!761162 res!514895) b!761165))

(assert (= (and b!761165 (not res!514896)) b!761160))

(assert (= (and b!761160 (not res!514897)) b!761163))

(assert (=> d!100657 m!708145))

(declare-fun m!708257 () Bool)

(assert (=> d!100657 m!708257))

(assert (=> d!100657 m!708123))

(declare-fun m!708259 () Bool)

(assert (=> b!761165 m!708259))

(assert (=> b!761160 m!708259))

(assert (=> b!761158 m!708145))

(declare-fun m!708261 () Bool)

(assert (=> b!761158 m!708261))

(assert (=> b!761158 m!708261))

(declare-fun m!708263 () Bool)

(assert (=> b!761158 m!708263))

(assert (=> b!761163 m!708259))

(assert (=> b!760940 d!100657))

(declare-fun d!100661 () Bool)

(declare-fun lt!339127 () (_ BitVec 32))

(declare-fun lt!339126 () (_ BitVec 32))

(assert (=> d!100661 (= lt!339127 (bvmul (bvxor lt!339126 (bvlshr lt!339126 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100661 (= lt!339126 ((_ extract 31 0) (bvand (bvxor lt!339036 (bvlshr lt!339036 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100661 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514898 (let ((h!15264 ((_ extract 31 0) (bvand (bvxor lt!339036 (bvlshr lt!339036 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64254 (bvmul (bvxor h!15264 (bvlshr h!15264 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64254 (bvlshr x!64254 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514898 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514898 #b00000000000000000000000000000000))))))

(assert (=> d!100661 (= (toIndex!0 lt!339036 mask!3328) (bvand (bvxor lt!339127 (bvlshr lt!339127 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760940 d!100661))

(declare-fun d!100669 () Bool)

(declare-fun lt!339159 () SeekEntryResult!7739)

(assert (=> d!100669 (and (or (is-Undefined!7739 lt!339159) (not (is-Found!7739 lt!339159)) (and (bvsge (index!33324 lt!339159) #b00000000000000000000000000000000) (bvslt (index!33324 lt!339159) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339159) (is-Found!7739 lt!339159) (not (is-MissingZero!7739 lt!339159)) (and (bvsge (index!33323 lt!339159) #b00000000000000000000000000000000) (bvslt (index!33323 lt!339159) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339159) (is-Found!7739 lt!339159) (is-MissingZero!7739 lt!339159) (not (is-MissingVacant!7739 lt!339159)) (and (bvsge (index!33326 lt!339159) #b00000000000000000000000000000000) (bvslt (index!33326 lt!339159) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339159) (ite (is-Found!7739 lt!339159) (= (select (arr!20132 a!3186) (index!33324 lt!339159)) k!2102) (ite (is-MissingZero!7739 lt!339159) (= (select (arr!20132 a!3186) (index!33323 lt!339159)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7739 lt!339159) (= (select (arr!20132 a!3186) (index!33326 lt!339159)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!424398 () SeekEntryResult!7739)

(assert (=> d!100669 (= lt!339159 e!424398)))

(declare-fun c!83551 () Bool)

(declare-fun lt!339158 () SeekEntryResult!7739)

(assert (=> d!100669 (= c!83551 (and (is-Intermediate!7739 lt!339158) (undefined!8551 lt!339158)))))

(assert (=> d!100669 (= lt!339158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100669 (validMask!0 mask!3328)))

(assert (=> d!100669 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!339159)))

(declare-fun b!761239 () Bool)

(declare-fun c!83549 () Bool)

(declare-fun lt!339160 () (_ BitVec 64))

(assert (=> b!761239 (= c!83549 (= lt!339160 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424399 () SeekEntryResult!7739)

(declare-fun e!424397 () SeekEntryResult!7739)

(assert (=> b!761239 (= e!424399 e!424397)))

(declare-fun b!761240 () Bool)

(assert (=> b!761240 (= e!424397 (seekKeyOrZeroReturnVacant!0 (x!64246 lt!339158) (index!33325 lt!339158) (index!33325 lt!339158) k!2102 a!3186 mask!3328))))

(declare-fun b!761241 () Bool)

(assert (=> b!761241 (= e!424398 e!424399)))

(assert (=> b!761241 (= lt!339160 (select (arr!20132 a!3186) (index!33325 lt!339158)))))

(declare-fun c!83550 () Bool)

(assert (=> b!761241 (= c!83550 (= lt!339160 k!2102))))

(declare-fun b!761242 () Bool)

(assert (=> b!761242 (= e!424397 (MissingZero!7739 (index!33325 lt!339158)))))

(declare-fun b!761243 () Bool)

(assert (=> b!761243 (= e!424398 Undefined!7739)))

(declare-fun b!761244 () Bool)

(assert (=> b!761244 (= e!424399 (Found!7739 (index!33325 lt!339158)))))

(assert (= (and d!100669 c!83551) b!761243))

(assert (= (and d!100669 (not c!83551)) b!761241))

(assert (= (and b!761241 c!83550) b!761244))

(assert (= (and b!761241 (not c!83550)) b!761239))

(assert (= (and b!761239 c!83549) b!761242))

(assert (= (and b!761239 (not c!83549)) b!761240))

(declare-fun m!708317 () Bool)

(assert (=> d!100669 m!708317))

(declare-fun m!708319 () Bool)

(assert (=> d!100669 m!708319))

(assert (=> d!100669 m!708123))

(declare-fun m!708321 () Bool)

(assert (=> d!100669 m!708321))

(declare-fun m!708323 () Bool)

(assert (=> d!100669 m!708323))

(declare-fun m!708325 () Bool)

(assert (=> d!100669 m!708325))

(assert (=> d!100669 m!708317))

(declare-fun m!708327 () Bool)

(assert (=> b!761240 m!708327))

(declare-fun m!708331 () Bool)

(assert (=> b!761241 m!708331))

(assert (=> b!760942 d!100669))

(declare-fun b!761259 () Bool)

(declare-fun e!424414 () Bool)

(declare-fun call!34973 () Bool)

(assert (=> b!761259 (= e!424414 call!34973)))

(declare-fun b!761260 () Bool)

(declare-fun e!424413 () Bool)

(declare-fun contains!4071 (List!14187 (_ BitVec 64)) Bool)

(assert (=> b!761260 (= e!424413 (contains!4071 Nil!14184 (select (arr!20132 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761261 () Bool)

(declare-fun e!424411 () Bool)

(assert (=> b!761261 (= e!424411 e!424414)))

(declare-fun c!83555 () Bool)

(assert (=> b!761261 (= c!83555 (validKeyInArray!0 (select (arr!20132 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100687 () Bool)

(declare-fun res!514920 () Bool)

(declare-fun e!424412 () Bool)

(assert (=> d!100687 (=> res!514920 e!424412)))

(assert (=> d!100687 (= res!514920 (bvsge #b00000000000000000000000000000000 (size!20553 a!3186)))))

(assert (=> d!100687 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14184) e!424412)))

(declare-fun b!761262 () Bool)

(assert (=> b!761262 (= e!424414 call!34973)))

(declare-fun b!761263 () Bool)

(assert (=> b!761263 (= e!424412 e!424411)))

(declare-fun res!514919 () Bool)

(assert (=> b!761263 (=> (not res!514919) (not e!424411))))

(assert (=> b!761263 (= res!514919 (not e!424413))))

(declare-fun res!514921 () Bool)

(assert (=> b!761263 (=> (not res!514921) (not e!424413))))

(assert (=> b!761263 (= res!514921 (validKeyInArray!0 (select (arr!20132 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34970 () Bool)

(assert (=> bm!34970 (= call!34973 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83555 (Cons!14183 (select (arr!20132 a!3186) #b00000000000000000000000000000000) Nil!14184) Nil!14184)))))

(assert (= (and d!100687 (not res!514920)) b!761263))

(assert (= (and b!761263 res!514921) b!761260))

(assert (= (and b!761263 res!514919) b!761261))

(assert (= (and b!761261 c!83555) b!761262))

(assert (= (and b!761261 (not c!83555)) b!761259))

(assert (= (or b!761262 b!761259) bm!34970))

(declare-fun m!708339 () Bool)

(assert (=> b!761260 m!708339))

(assert (=> b!761260 m!708339))

(declare-fun m!708341 () Bool)

(assert (=> b!761260 m!708341))

(assert (=> b!761261 m!708339))

(assert (=> b!761261 m!708339))

(declare-fun m!708343 () Bool)

(assert (=> b!761261 m!708343))

(assert (=> b!761263 m!708339))

(assert (=> b!761263 m!708339))

(assert (=> b!761263 m!708343))

(assert (=> bm!34970 m!708339))

(declare-fun m!708345 () Bool)

(assert (=> bm!34970 m!708345))

(assert (=> b!760941 d!100687))

(declare-fun d!100693 () Bool)

(assert (=> d!100693 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66066 d!100693))

(declare-fun d!100701 () Bool)

(assert (=> d!100701 (= (array_inv!15906 a!3186) (bvsge (size!20553 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66066 d!100701))

(declare-fun b!761326 () Bool)

(declare-fun e!424455 () Bool)

(declare-fun e!424454 () Bool)

(assert (=> b!761326 (= e!424455 e!424454)))

(declare-fun lt!339188 () (_ BitVec 64))

(assert (=> b!761326 (= lt!339188 (select (arr!20132 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!339186 () Unit!26318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42050 (_ BitVec 64) (_ BitVec 32)) Unit!26318)

(assert (=> b!761326 (= lt!339186 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339188 #b00000000000000000000000000000000))))

(assert (=> b!761326 (arrayContainsKey!0 a!3186 lt!339188 #b00000000000000000000000000000000)))

(declare-fun lt!339187 () Unit!26318)

(assert (=> b!761326 (= lt!339187 lt!339186)))

(declare-fun res!514945 () Bool)

(assert (=> b!761326 (= res!514945 (= (seekEntryOrOpen!0 (select (arr!20132 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7739 #b00000000000000000000000000000000)))))

(assert (=> b!761326 (=> (not res!514945) (not e!424454))))

(declare-fun d!100703 () Bool)

(declare-fun res!514944 () Bool)

(declare-fun e!424456 () Bool)

(assert (=> d!100703 (=> res!514944 e!424456)))

(assert (=> d!100703 (= res!514944 (bvsge #b00000000000000000000000000000000 (size!20553 a!3186)))))

(assert (=> d!100703 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!424456)))

(declare-fun b!761327 () Bool)

(declare-fun call!34979 () Bool)

(assert (=> b!761327 (= e!424455 call!34979)))

(declare-fun b!761328 () Bool)

(assert (=> b!761328 (= e!424456 e!424455)))

(declare-fun c!83576 () Bool)

(assert (=> b!761328 (= c!83576 (validKeyInArray!0 (select (arr!20132 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34976 () Bool)

(assert (=> bm!34976 (= call!34979 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!761329 () Bool)

(assert (=> b!761329 (= e!424454 call!34979)))

(assert (= (and d!100703 (not res!514944)) b!761328))

(assert (= (and b!761328 c!83576) b!761326))

(assert (= (and b!761328 (not c!83576)) b!761327))

(assert (= (and b!761326 res!514945) b!761329))

(assert (= (or b!761329 b!761327) bm!34976))

(assert (=> b!761326 m!708339))

(declare-fun m!708389 () Bool)

(assert (=> b!761326 m!708389))

(declare-fun m!708391 () Bool)

(assert (=> b!761326 m!708391))

(assert (=> b!761326 m!708339))

(declare-fun m!708393 () Bool)

(assert (=> b!761326 m!708393))

(assert (=> b!761328 m!708339))

(assert (=> b!761328 m!708339))

(assert (=> b!761328 m!708343))

(declare-fun m!708395 () Bool)

(assert (=> bm!34976 m!708395))

(assert (=> b!760944 d!100703))

(declare-fun b!761331 () Bool)

(declare-fun c!83579 () Bool)

(declare-fun lt!339189 () (_ BitVec 64))

(assert (=> b!761331 (= c!83579 (= lt!339189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424459 () SeekEntryResult!7739)

(declare-fun e!424457 () SeekEntryResult!7739)

(assert (=> b!761331 (= e!424459 e!424457)))

(declare-fun b!761332 () Bool)

(declare-fun e!424458 () SeekEntryResult!7739)

(assert (=> b!761332 (= e!424458 e!424459)))

(declare-fun c!83577 () Bool)

(assert (=> b!761332 (= c!83577 (= lt!339189 (select (arr!20132 a!3186) j!159)))))

(declare-fun b!761333 () Bool)

(assert (=> b!761333 (= e!424458 Undefined!7739)))

(declare-fun b!761334 () Bool)

(assert (=> b!761334 (= e!424457 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20132 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761335 () Bool)

(assert (=> b!761335 (= e!424459 (Found!7739 resIntermediateIndex!5))))

(declare-fun b!761330 () Bool)

(assert (=> b!761330 (= e!424457 (MissingVacant!7739 resIntermediateIndex!5))))

(declare-fun lt!339190 () SeekEntryResult!7739)

(declare-fun d!100715 () Bool)

(assert (=> d!100715 (and (or (is-Undefined!7739 lt!339190) (not (is-Found!7739 lt!339190)) (and (bvsge (index!33324 lt!339190) #b00000000000000000000000000000000) (bvslt (index!33324 lt!339190) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339190) (is-Found!7739 lt!339190) (not (is-MissingVacant!7739 lt!339190)) (not (= (index!33326 lt!339190) resIntermediateIndex!5)) (and (bvsge (index!33326 lt!339190) #b00000000000000000000000000000000) (bvslt (index!33326 lt!339190) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339190) (ite (is-Found!7739 lt!339190) (= (select (arr!20132 a!3186) (index!33324 lt!339190)) (select (arr!20132 a!3186) j!159)) (and (is-MissingVacant!7739 lt!339190) (= (index!33326 lt!339190) resIntermediateIndex!5) (= (select (arr!20132 a!3186) (index!33326 lt!339190)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100715 (= lt!339190 e!424458)))

(declare-fun c!83578 () Bool)

(assert (=> d!100715 (= c!83578 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!100715 (= lt!339189 (select (arr!20132 a!3186) resIntermediateIndex!5))))

(assert (=> d!100715 (validMask!0 mask!3328)))

(assert (=> d!100715 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339190)))

(assert (= (and d!100715 c!83578) b!761333))

(assert (= (and d!100715 (not c!83578)) b!761332))

(assert (= (and b!761332 c!83577) b!761335))

(assert (= (and b!761332 (not c!83577)) b!761331))

(assert (= (and b!761331 c!83579) b!761330))

(assert (= (and b!761331 (not c!83579)) b!761334))

(declare-fun m!708397 () Bool)

(assert (=> b!761334 m!708397))

(assert (=> b!761334 m!708397))

(assert (=> b!761334 m!708109))

(declare-fun m!708399 () Bool)

(assert (=> b!761334 m!708399))

(declare-fun m!708401 () Bool)

(assert (=> d!100715 m!708401))

(declare-fun m!708403 () Bool)

(assert (=> d!100715 m!708403))

(assert (=> d!100715 m!708139))

(assert (=> d!100715 m!708123))

(assert (=> b!760946 d!100715))

(declare-fun e!424463 () SeekEntryResult!7739)

(declare-fun b!761336 () Bool)

(assert (=> b!761336 (= e!424463 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20132 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20132 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761337 () Bool)

(declare-fun e!424460 () Bool)

(declare-fun lt!339191 () SeekEntryResult!7739)

(assert (=> b!761337 (= e!424460 (bvsge (x!64246 lt!339191) #b01111111111111111111111111111110))))

(declare-fun b!761338 () Bool)

(assert (=> b!761338 (and (bvsge (index!33325 lt!339191) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339191) (size!20553 a!3186)))))

(declare-fun res!514948 () Bool)

(assert (=> b!761338 (= res!514948 (= (select (arr!20132 a!3186) (index!33325 lt!339191)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424464 () Bool)

(assert (=> b!761338 (=> res!514948 e!424464)))

(declare-fun b!761339 () Bool)

(declare-fun e!424461 () SeekEntryResult!7739)

(assert (=> b!761339 (= e!424461 e!424463)))

(declare-fun c!83581 () Bool)

(declare-fun lt!339192 () (_ BitVec 64))

(assert (=> b!761339 (= c!83581 (or (= lt!339192 (select (arr!20132 a!3186) j!159)) (= (bvadd lt!339192 lt!339192) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761340 () Bool)

(declare-fun e!424462 () Bool)

(assert (=> b!761340 (= e!424460 e!424462)))

(declare-fun res!514946 () Bool)

(assert (=> b!761340 (= res!514946 (and (is-Intermediate!7739 lt!339191) (not (undefined!8551 lt!339191)) (bvslt (x!64246 lt!339191) #b01111111111111111111111111111110) (bvsge (x!64246 lt!339191) #b00000000000000000000000000000000) (bvsge (x!64246 lt!339191) #b00000000000000000000000000000000)))))

(assert (=> b!761340 (=> (not res!514946) (not e!424462))))

(declare-fun b!761341 () Bool)

(assert (=> b!761341 (and (bvsge (index!33325 lt!339191) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339191) (size!20553 a!3186)))))

(assert (=> b!761341 (= e!424464 (= (select (arr!20132 a!3186) (index!33325 lt!339191)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100717 () Bool)

(assert (=> d!100717 e!424460))

(declare-fun c!83580 () Bool)

(assert (=> d!100717 (= c!83580 (and (is-Intermediate!7739 lt!339191) (undefined!8551 lt!339191)))))

(assert (=> d!100717 (= lt!339191 e!424461)))

(declare-fun c!83582 () Bool)

(assert (=> d!100717 (= c!83582 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100717 (= lt!339192 (select (arr!20132 a!3186) (toIndex!0 (select (arr!20132 a!3186) j!159) mask!3328)))))

(assert (=> d!100717 (validMask!0 mask!3328)))

(assert (=> d!100717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20132 a!3186) j!159) mask!3328) (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339191)))

(declare-fun b!761342 () Bool)

(assert (=> b!761342 (= e!424463 (Intermediate!7739 false (toIndex!0 (select (arr!20132 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761343 () Bool)

(assert (=> b!761343 (and (bvsge (index!33325 lt!339191) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339191) (size!20553 a!3186)))))

(declare-fun res!514947 () Bool)

(assert (=> b!761343 (= res!514947 (= (select (arr!20132 a!3186) (index!33325 lt!339191)) (select (arr!20132 a!3186) j!159)))))

(assert (=> b!761343 (=> res!514947 e!424464)))

(assert (=> b!761343 (= e!424462 e!424464)))

(declare-fun b!761344 () Bool)

(assert (=> b!761344 (= e!424461 (Intermediate!7739 true (toIndex!0 (select (arr!20132 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!100717 c!83582) b!761344))

(assert (= (and d!100717 (not c!83582)) b!761339))

(assert (= (and b!761339 c!83581) b!761342))

(assert (= (and b!761339 (not c!83581)) b!761336))

(assert (= (and d!100717 c!83580) b!761337))

(assert (= (and d!100717 (not c!83580)) b!761340))

(assert (= (and b!761340 res!514946) b!761343))

(assert (= (and b!761343 (not res!514947)) b!761338))

(assert (= (and b!761338 (not res!514948)) b!761341))

(assert (=> d!100717 m!708111))

(declare-fun m!708405 () Bool)

(assert (=> d!100717 m!708405))

(assert (=> d!100717 m!708123))

(declare-fun m!708407 () Bool)

(assert (=> b!761343 m!708407))

(assert (=> b!761338 m!708407))

(assert (=> b!761336 m!708111))

(declare-fun m!708409 () Bool)

(assert (=> b!761336 m!708409))

(assert (=> b!761336 m!708409))

(assert (=> b!761336 m!708109))

(declare-fun m!708411 () Bool)

(assert (=> b!761336 m!708411))

(assert (=> b!761341 m!708407))

(assert (=> b!760935 d!100717))

(declare-fun d!100719 () Bool)

(declare-fun lt!339194 () (_ BitVec 32))

(declare-fun lt!339193 () (_ BitVec 32))

(assert (=> d!100719 (= lt!339194 (bvmul (bvxor lt!339193 (bvlshr lt!339193 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100719 (= lt!339193 ((_ extract 31 0) (bvand (bvxor (select (arr!20132 a!3186) j!159) (bvlshr (select (arr!20132 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100719 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514898 (let ((h!15264 ((_ extract 31 0) (bvand (bvxor (select (arr!20132 a!3186) j!159) (bvlshr (select (arr!20132 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64254 (bvmul (bvxor h!15264 (bvlshr h!15264 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64254 (bvlshr x!64254 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514898 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514898 #b00000000000000000000000000000000))))))

(assert (=> d!100719 (= (toIndex!0 (select (arr!20132 a!3186) j!159) mask!3328) (bvand (bvxor lt!339194 (bvlshr lt!339194 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760935 d!100719))

(declare-fun b!761345 () Bool)

(declare-fun e!424466 () Bool)

(declare-fun e!424465 () Bool)

(assert (=> b!761345 (= e!424466 e!424465)))

(declare-fun lt!339197 () (_ BitVec 64))

(assert (=> b!761345 (= lt!339197 (select (arr!20132 a!3186) j!159))))

(declare-fun lt!339195 () Unit!26318)

(assert (=> b!761345 (= lt!339195 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339197 j!159))))

(assert (=> b!761345 (arrayContainsKey!0 a!3186 lt!339197 #b00000000000000000000000000000000)))

(declare-fun lt!339196 () Unit!26318)

(assert (=> b!761345 (= lt!339196 lt!339195)))

(declare-fun res!514950 () Bool)

(assert (=> b!761345 (= res!514950 (= (seekEntryOrOpen!0 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) (Found!7739 j!159)))))

(assert (=> b!761345 (=> (not res!514950) (not e!424465))))

(declare-fun d!100721 () Bool)

(declare-fun res!514949 () Bool)

(declare-fun e!424467 () Bool)

(assert (=> d!100721 (=> res!514949 e!424467)))

(assert (=> d!100721 (= res!514949 (bvsge j!159 (size!20553 a!3186)))))

(assert (=> d!100721 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!424467)))

(declare-fun b!761346 () Bool)

(declare-fun call!34980 () Bool)

(assert (=> b!761346 (= e!424466 call!34980)))

(declare-fun b!761347 () Bool)

(assert (=> b!761347 (= e!424467 e!424466)))

(declare-fun c!83583 () Bool)

(assert (=> b!761347 (= c!83583 (validKeyInArray!0 (select (arr!20132 a!3186) j!159)))))

(declare-fun bm!34977 () Bool)

(assert (=> bm!34977 (= call!34980 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!761348 () Bool)

(assert (=> b!761348 (= e!424465 call!34980)))

(assert (= (and d!100721 (not res!514949)) b!761347))

(assert (= (and b!761347 c!83583) b!761345))

(assert (= (and b!761347 (not c!83583)) b!761346))

(assert (= (and b!761345 res!514950) b!761348))

(assert (= (or b!761348 b!761346) bm!34977))

(assert (=> b!761345 m!708109))

(declare-fun m!708413 () Bool)

(assert (=> b!761345 m!708413))

(declare-fun m!708415 () Bool)

(assert (=> b!761345 m!708415))

(assert (=> b!761345 m!708109))

(assert (=> b!761345 m!708127))

(assert (=> b!761347 m!708109))

(assert (=> b!761347 m!708109))

(assert (=> b!761347 m!708129))

(declare-fun m!708417 () Bool)

(assert (=> bm!34977 m!708417))

(assert (=> b!760945 d!100721))

(declare-fun d!100723 () Bool)

(assert (=> d!100723 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!339200 () Unit!26318)

(declare-fun choose!38 (array!42050 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26318)

(assert (=> d!100723 (= lt!339200 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100723 (validMask!0 mask!3328)))

(assert (=> d!100723 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!339200)))

(declare-fun bs!21398 () Bool)

(assert (= bs!21398 d!100723))

(assert (=> bs!21398 m!708151))

(declare-fun m!708419 () Bool)

(assert (=> bs!21398 m!708419))

(assert (=> bs!21398 m!708123))

(assert (=> b!760945 d!100723))

(assert (=> b!760938 d!100639))

(declare-fun d!100725 () Bool)

(assert (=> d!100725 (= (validKeyInArray!0 (select (arr!20132 a!3186) j!159)) (and (not (= (select (arr!20132 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20132 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760948 d!100725))

(declare-fun d!100727 () Bool)

(assert (=> d!100727 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760937 d!100727))

(declare-fun e!424471 () SeekEntryResult!7739)

(declare-fun b!761349 () Bool)

(assert (=> b!761349 (= e!424471 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20132 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761350 () Bool)

(declare-fun e!424468 () Bool)

(declare-fun lt!339201 () SeekEntryResult!7739)

(assert (=> b!761350 (= e!424468 (bvsge (x!64246 lt!339201) #b01111111111111111111111111111110))))

(declare-fun b!761351 () Bool)

(assert (=> b!761351 (and (bvsge (index!33325 lt!339201) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339201) (size!20553 a!3186)))))

(declare-fun res!514953 () Bool)

(assert (=> b!761351 (= res!514953 (= (select (arr!20132 a!3186) (index!33325 lt!339201)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424472 () Bool)

(assert (=> b!761351 (=> res!514953 e!424472)))

(declare-fun b!761352 () Bool)

(declare-fun e!424469 () SeekEntryResult!7739)

(assert (=> b!761352 (= e!424469 e!424471)))

(declare-fun lt!339202 () (_ BitVec 64))

(declare-fun c!83585 () Bool)

(assert (=> b!761352 (= c!83585 (or (= lt!339202 (select (arr!20132 a!3186) j!159)) (= (bvadd lt!339202 lt!339202) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761353 () Bool)

(declare-fun e!424470 () Bool)

(assert (=> b!761353 (= e!424468 e!424470)))

(declare-fun res!514951 () Bool)

(assert (=> b!761353 (= res!514951 (and (is-Intermediate!7739 lt!339201) (not (undefined!8551 lt!339201)) (bvslt (x!64246 lt!339201) #b01111111111111111111111111111110) (bvsge (x!64246 lt!339201) #b00000000000000000000000000000000) (bvsge (x!64246 lt!339201) x!1131)))))

(assert (=> b!761353 (=> (not res!514951) (not e!424470))))

(declare-fun b!761354 () Bool)

(assert (=> b!761354 (and (bvsge (index!33325 lt!339201) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339201) (size!20553 a!3186)))))

(assert (=> b!761354 (= e!424472 (= (select (arr!20132 a!3186) (index!33325 lt!339201)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100729 () Bool)

(assert (=> d!100729 e!424468))

(declare-fun c!83584 () Bool)

(assert (=> d!100729 (= c!83584 (and (is-Intermediate!7739 lt!339201) (undefined!8551 lt!339201)))))

(assert (=> d!100729 (= lt!339201 e!424469)))

(declare-fun c!83586 () Bool)

(assert (=> d!100729 (= c!83586 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100729 (= lt!339202 (select (arr!20132 a!3186) index!1321))))

(assert (=> d!100729 (validMask!0 mask!3328)))

(assert (=> d!100729 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339201)))

(declare-fun b!761355 () Bool)

(assert (=> b!761355 (= e!424471 (Intermediate!7739 false index!1321 x!1131))))

(declare-fun b!761356 () Bool)

(assert (=> b!761356 (and (bvsge (index!33325 lt!339201) #b00000000000000000000000000000000) (bvslt (index!33325 lt!339201) (size!20553 a!3186)))))

(declare-fun res!514952 () Bool)

(assert (=> b!761356 (= res!514952 (= (select (arr!20132 a!3186) (index!33325 lt!339201)) (select (arr!20132 a!3186) j!159)))))

(assert (=> b!761356 (=> res!514952 e!424472)))

(assert (=> b!761356 (= e!424470 e!424472)))

(declare-fun b!761357 () Bool)

(assert (=> b!761357 (= e!424469 (Intermediate!7739 true index!1321 x!1131))))

(assert (= (and d!100729 c!83586) b!761357))

(assert (= (and d!100729 (not c!83586)) b!761352))

(assert (= (and b!761352 c!83585) b!761355))

(assert (= (and b!761352 (not c!83585)) b!761349))

(assert (= (and d!100729 c!83584) b!761350))

(assert (= (and d!100729 (not c!83584)) b!761353))

(assert (= (and b!761353 res!514951) b!761356))

(assert (= (and b!761356 (not res!514952)) b!761351))

(assert (= (and b!761351 (not res!514953)) b!761354))

(assert (=> d!100729 m!708217))

(assert (=> d!100729 m!708123))

(declare-fun m!708421 () Bool)

(assert (=> b!761356 m!708421))

(assert (=> b!761351 m!708421))

(assert (=> b!761349 m!708209))

(assert (=> b!761349 m!708209))

(assert (=> b!761349 m!708109))

(declare-fun m!708423 () Bool)

(assert (=> b!761349 m!708423))

(assert (=> b!761354 m!708421))

(assert (=> b!760950 d!100729))

(declare-fun d!100731 () Bool)

(declare-fun lt!339204 () SeekEntryResult!7739)

(assert (=> d!100731 (and (or (is-Undefined!7739 lt!339204) (not (is-Found!7739 lt!339204)) (and (bvsge (index!33324 lt!339204) #b00000000000000000000000000000000) (bvslt (index!33324 lt!339204) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339204) (is-Found!7739 lt!339204) (not (is-MissingZero!7739 lt!339204)) (and (bvsge (index!33323 lt!339204) #b00000000000000000000000000000000) (bvslt (index!33323 lt!339204) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339204) (is-Found!7739 lt!339204) (is-MissingZero!7739 lt!339204) (not (is-MissingVacant!7739 lt!339204)) (and (bvsge (index!33326 lt!339204) #b00000000000000000000000000000000) (bvslt (index!33326 lt!339204) (size!20553 a!3186)))) (or (is-Undefined!7739 lt!339204) (ite (is-Found!7739 lt!339204) (= (select (arr!20132 a!3186) (index!33324 lt!339204)) (select (arr!20132 a!3186) j!159)) (ite (is-MissingZero!7739 lt!339204) (= (select (arr!20132 a!3186) (index!33323 lt!339204)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7739 lt!339204) (= (select (arr!20132 a!3186) (index!33326 lt!339204)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!424474 () SeekEntryResult!7739)

(assert (=> d!100731 (= lt!339204 e!424474)))

(declare-fun c!83589 () Bool)

(declare-fun lt!339203 () SeekEntryResult!7739)

(assert (=> d!100731 (= c!83589 (and (is-Intermediate!7739 lt!339203) (undefined!8551 lt!339203)))))

(assert (=> d!100731 (= lt!339203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20132 a!3186) j!159) mask!3328) (select (arr!20132 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100731 (validMask!0 mask!3328)))

(assert (=> d!100731 (= (seekEntryOrOpen!0 (select (arr!20132 a!3186) j!159) a!3186 mask!3328) lt!339204)))

(declare-fun b!761358 () Bool)

(declare-fun c!83587 () Bool)

(declare-fun lt!339205 () (_ BitVec 64))

(assert (=> b!761358 (= c!83587 (= lt!339205 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424475 () SeekEntryResult!7739)

(declare-fun e!424473 () SeekEntryResult!7739)

(assert (=> b!761358 (= e!424475 e!424473)))

(declare-fun b!761359 () Bool)

(assert (=> b!761359 (= e!424473 (seekKeyOrZeroReturnVacant!0 (x!64246 lt!339203) (index!33325 lt!339203) (index!33325 lt!339203) (select (arr!20132 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761360 () Bool)

(assert (=> b!761360 (= e!424474 e!424475)))

(assert (=> b!761360 (= lt!339205 (select (arr!20132 a!3186) (index!33325 lt!339203)))))

(declare-fun c!83588 () Bool)

(assert (=> b!761360 (= c!83588 (= lt!339205 (select (arr!20132 a!3186) j!159)))))

(declare-fun b!761361 () Bool)

(assert (=> b!761361 (= e!424473 (MissingZero!7739 (index!33325 lt!339203)))))

(declare-fun b!761362 () Bool)

(assert (=> b!761362 (= e!424474 Undefined!7739)))

(declare-fun b!761363 () Bool)

(assert (=> b!761363 (= e!424475 (Found!7739 (index!33325 lt!339203)))))

(assert (= (and d!100731 c!83589) b!761362))

(assert (= (and d!100731 (not c!83589)) b!761360))

(assert (= (and b!761360 c!83588) b!761363))

(assert (= (and b!761360 (not c!83588)) b!761358))

(assert (= (and b!761358 c!83587) b!761361))

(assert (= (and b!761358 (not c!83587)) b!761359))

(assert (=> d!100731 m!708111))

(assert (=> d!100731 m!708109))

(assert (=> d!100731 m!708113))

(assert (=> d!100731 m!708123))

(declare-fun m!708425 () Bool)

(assert (=> d!100731 m!708425))

(declare-fun m!708427 () Bool)

(assert (=> d!100731 m!708427))

(declare-fun m!708429 () Bool)

(assert (=> d!100731 m!708429))

(assert (=> d!100731 m!708109))

(assert (=> d!100731 m!708111))

(assert (=> b!761359 m!708109))

(declare-fun m!708431 () Bool)

(assert (=> b!761359 m!708431))

(declare-fun m!708433 () Bool)

(assert (=> b!761360 m!708433))

(assert (=> b!760939 d!100731))

(declare-fun d!100733 () Bool)

(declare-fun res!514958 () Bool)

(declare-fun e!424480 () Bool)

(assert (=> d!100733 (=> res!514958 e!424480)))

(assert (=> d!100733 (= res!514958 (= (select (arr!20132 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100733 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!424480)))

(declare-fun b!761368 () Bool)

(declare-fun e!424481 () Bool)

(assert (=> b!761368 (= e!424480 e!424481)))

(declare-fun res!514959 () Bool)

(assert (=> b!761368 (=> (not res!514959) (not e!424481))))

(assert (=> b!761368 (= res!514959 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20553 a!3186)))))

(declare-fun b!761369 () Bool)

(assert (=> b!761369 (= e!424481 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100733 (not res!514958)) b!761368))

(assert (= (and b!761368 res!514959) b!761369))

(assert (=> d!100733 m!708339))

(declare-fun m!708435 () Bool)

(assert (=> b!761369 m!708435))

(assert (=> b!760949 d!100733))

(push 1)

(assert (not b!761349))

(assert (not d!100649))

(assert (not b!761326))

(assert (not b!761359))

(assert (not d!100669))

(assert (not b!761263))

(assert (not d!100657))

(assert (not b!761261))

(assert (not b!761071))

(assert (not b!761158))

(assert (not d!100715))

(assert (not b!761328))

(assert (not b!761347))

(assert (not bm!34976))

(assert (not d!100731))

(assert (not b!761334))

(assert (not bm!34977))

(assert (not b!761369))

(assert (not b!761240))

(assert (not d!100639))

(assert (not d!100717))

(assert (not bm!34970))

(assert (not d!100729))

(assert (not b!761345))

(assert (not b!761145))

(assert (not b!761336))

(assert (not b!761260))

(assert (not d!100723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

