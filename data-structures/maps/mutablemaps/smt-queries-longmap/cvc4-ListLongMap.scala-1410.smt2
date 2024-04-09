; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27326 () Bool)

(assert start!27326)

(declare-fun b!283065 () Bool)

(declare-fun res!146173 () Bool)

(declare-fun e!179603 () Bool)

(assert (=> b!283065 (=> (not res!146173) (not e!179603))))

(declare-datatypes ((array!14133 0))(
  ( (array!14134 (arr!6708 (Array (_ BitVec 32) (_ BitVec 64))) (size!7060 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14133)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14133 (_ BitVec 32)) Bool)

(assert (=> b!283065 (= res!146173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!283066 () Bool)

(declare-fun res!146179 () Bool)

(declare-fun e!179601 () Bool)

(assert (=> b!283066 (=> (not res!146179) (not e!179601))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283066 (= res!146179 (validKeyInArray!0 k!2581))))

(declare-fun b!283067 () Bool)

(declare-fun e!179605 () Bool)

(declare-fun e!179602 () Bool)

(assert (=> b!283067 (= e!179605 (not e!179602))))

(declare-fun res!146178 () Bool)

(assert (=> b!283067 (=> res!146178 e!179602)))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!283067 (= res!146178 (or (bvsge startIndex!26 (bvsub (size!7060 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!283067 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9017 0))(
  ( (Unit!9018) )
))
(declare-fun lt!139947 () Unit!9017)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14133 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9017)

(assert (=> b!283067 (= lt!139947 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139949 () array!14133)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1877 0))(
  ( (MissingZero!1877 (index!9678 (_ BitVec 32))) (Found!1877 (index!9679 (_ BitVec 32))) (Intermediate!1877 (undefined!2689 Bool) (index!9680 (_ BitVec 32)) (x!27851 (_ BitVec 32))) (Undefined!1877) (MissingVacant!1877 (index!9681 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14133 (_ BitVec 32)) SeekEntryResult!1877)

(assert (=> b!283067 (= (seekEntryOrOpen!0 (select (arr!6708 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6708 a!3325) i!1267 k!2581) startIndex!26) lt!139949 mask!3868))))

(declare-fun lt!139948 () Unit!9017)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14133 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9017)

(assert (=> b!283067 (= lt!139948 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4537 0))(
  ( (Nil!4534) (Cons!4533 (h!5203 (_ BitVec 64)) (t!9627 List!4537)) )
))
(declare-fun arrayNoDuplicates!0 (array!14133 (_ BitVec 32) List!4537) Bool)

(assert (=> b!283067 (arrayNoDuplicates!0 lt!139949 #b00000000000000000000000000000000 Nil!4534)))

(declare-fun lt!139951 () Unit!9017)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14133 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4537) Unit!9017)

(assert (=> b!283067 (= lt!139951 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4534))))

(declare-fun b!283068 () Bool)

(declare-fun res!146174 () Bool)

(assert (=> b!283068 (=> (not res!146174) (not e!179605))))

(assert (=> b!283068 (= res!146174 (validKeyInArray!0 (select (arr!6708 a!3325) startIndex!26)))))

(declare-fun b!283069 () Bool)

(declare-fun res!146172 () Bool)

(assert (=> b!283069 (=> (not res!146172) (not e!179601))))

(assert (=> b!283069 (= res!146172 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4534))))

(declare-fun b!283070 () Bool)

(assert (=> b!283070 (= e!179603 e!179605)))

(declare-fun res!146176 () Bool)

(assert (=> b!283070 (=> (not res!146176) (not e!179605))))

(assert (=> b!283070 (= res!146176 (not (= startIndex!26 i!1267)))))

(assert (=> b!283070 (= lt!139949 (array!14134 (store (arr!6708 a!3325) i!1267 k!2581) (size!7060 a!3325)))))

(declare-fun res!146175 () Bool)

(assert (=> start!27326 (=> (not res!146175) (not e!179601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27326 (= res!146175 (validMask!0 mask!3868))))

(assert (=> start!27326 e!179601))

(declare-fun array_inv!4662 (array!14133) Bool)

(assert (=> start!27326 (array_inv!4662 a!3325)))

(assert (=> start!27326 true))

(declare-fun b!283071 () Bool)

(declare-fun res!146180 () Bool)

(assert (=> b!283071 (=> (not res!146180) (not e!179601))))

(assert (=> b!283071 (= res!146180 (and (= (size!7060 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7060 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7060 a!3325))))))

(declare-fun b!283072 () Bool)

(declare-fun res!146177 () Bool)

(assert (=> b!283072 (=> (not res!146177) (not e!179601))))

(declare-fun arrayContainsKey!0 (array!14133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283072 (= res!146177 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283073 () Bool)

(assert (=> b!283073 (= e!179602 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!139949 mask!3868))))

(assert (=> b!283073 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!139949 mask!3868)))

(declare-fun lt!139952 () Unit!9017)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14133 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9017)

(assert (=> b!283073 (= lt!139952 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!283074 () Bool)

(assert (=> b!283074 (= e!179601 e!179603)))

(declare-fun res!146181 () Bool)

(assert (=> b!283074 (=> (not res!146181) (not e!179603))))

(declare-fun lt!139950 () SeekEntryResult!1877)

(assert (=> b!283074 (= res!146181 (or (= lt!139950 (MissingZero!1877 i!1267)) (= lt!139950 (MissingVacant!1877 i!1267))))))

(assert (=> b!283074 (= lt!139950 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27326 res!146175) b!283071))

(assert (= (and b!283071 res!146180) b!283066))

(assert (= (and b!283066 res!146179) b!283069))

(assert (= (and b!283069 res!146172) b!283072))

(assert (= (and b!283072 res!146177) b!283074))

(assert (= (and b!283074 res!146181) b!283065))

(assert (= (and b!283065 res!146173) b!283070))

(assert (= (and b!283070 res!146176) b!283068))

(assert (= (and b!283068 res!146174) b!283067))

(assert (= (and b!283067 (not res!146178)) b!283073))

(declare-fun m!297901 () Bool)

(assert (=> b!283072 m!297901))

(declare-fun m!297903 () Bool)

(assert (=> b!283069 m!297903))

(declare-fun m!297905 () Bool)

(assert (=> b!283074 m!297905))

(declare-fun m!297907 () Bool)

(assert (=> b!283073 m!297907))

(declare-fun m!297909 () Bool)

(assert (=> b!283073 m!297909))

(declare-fun m!297911 () Bool)

(assert (=> b!283073 m!297911))

(declare-fun m!297913 () Bool)

(assert (=> b!283067 m!297913))

(declare-fun m!297915 () Bool)

(assert (=> b!283067 m!297915))

(declare-fun m!297917 () Bool)

(assert (=> b!283067 m!297917))

(assert (=> b!283067 m!297915))

(declare-fun m!297919 () Bool)

(assert (=> b!283067 m!297919))

(declare-fun m!297921 () Bool)

(assert (=> b!283067 m!297921))

(declare-fun m!297923 () Bool)

(assert (=> b!283067 m!297923))

(declare-fun m!297925 () Bool)

(assert (=> b!283067 m!297925))

(declare-fun m!297927 () Bool)

(assert (=> b!283067 m!297927))

(declare-fun m!297929 () Bool)

(assert (=> b!283067 m!297929))

(assert (=> b!283067 m!297925))

(declare-fun m!297931 () Bool)

(assert (=> b!283067 m!297931))

(declare-fun m!297933 () Bool)

(assert (=> b!283066 m!297933))

(assert (=> b!283070 m!297921))

(assert (=> b!283068 m!297925))

(assert (=> b!283068 m!297925))

(declare-fun m!297935 () Bool)

(assert (=> b!283068 m!297935))

(declare-fun m!297937 () Bool)

(assert (=> b!283065 m!297937))

(declare-fun m!297939 () Bool)

(assert (=> start!27326 m!297939))

(declare-fun m!297941 () Bool)

(assert (=> start!27326 m!297941))

(push 1)

(assert (not b!283069))

(assert (not b!283074))

(assert (not b!283066))

(assert (not b!283065))

(assert (not b!283072))

(assert (not b!283073))

(assert (not start!27326))

(assert (not b!283067))

(assert (not b!283068))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65173 () Bool)

(declare-fun e!179632 () Bool)

(assert (=> d!65173 e!179632))

(declare-fun res!146190 () Bool)

(assert (=> d!65173 (=> (not res!146190) (not e!179632))))

(assert (=> d!65173 (= res!146190 (and (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7060 a!3325)) (and (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7060 a!3325)))) (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7060 a!3325)) (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7060 a!3325)))) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7060 a!3325))))))

(declare-fun lt!139979 () Unit!9017)

(declare-fun choose!83 (array!14133 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9017)

(assert (=> d!65173 (= lt!139979 (choose!83 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> d!65173 (validMask!0 mask!3868)))

(assert (=> d!65173 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868) lt!139979)))

(declare-fun b!283119 () Bool)

(assert (=> b!283119 (= e!179632 (= (seekEntryOrOpen!0 (select (arr!6708 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6708 a!3325) i!1267 k!2581) startIndex!26) (array!14134 (store (arr!6708 a!3325) i!1267 k!2581) (size!7060 a!3325)) mask!3868)))))

(assert (= (and d!65173 res!146190) b!283119))

(declare-fun m!297979 () Bool)

(assert (=> d!65173 m!297979))

(assert (=> d!65173 m!297939))

(assert (=> b!283119 m!297925))

(assert (=> b!283119 m!297931))

(assert (=> b!283119 m!297915))

(assert (=> b!283119 m!297915))

(declare-fun m!297981 () Bool)

(assert (=> b!283119 m!297981))

(assert (=> b!283119 m!297925))

(assert (=> b!283119 m!297921))

(assert (=> b!283067 d!65173))

(declare-fun d!65183 () Bool)

(declare-fun lt!140026 () SeekEntryResult!1877)

(assert (=> d!65183 (and (or (is-Undefined!1877 lt!140026) (not (is-Found!1877 lt!140026)) (and (bvsge (index!9679 lt!140026) #b00000000000000000000000000000000) (bvslt (index!9679 lt!140026) (size!7060 a!3325)))) (or (is-Undefined!1877 lt!140026) (is-Found!1877 lt!140026) (not (is-MissingZero!1877 lt!140026)) (and (bvsge (index!9678 lt!140026) #b00000000000000000000000000000000) (bvslt (index!9678 lt!140026) (size!7060 a!3325)))) (or (is-Undefined!1877 lt!140026) (is-Found!1877 lt!140026) (is-MissingZero!1877 lt!140026) (not (is-MissingVacant!1877 lt!140026)) (and (bvsge (index!9681 lt!140026) #b00000000000000000000000000000000) (bvslt (index!9681 lt!140026) (size!7060 a!3325)))) (or (is-Undefined!1877 lt!140026) (ite (is-Found!1877 lt!140026) (= (select (arr!6708 a!3325) (index!9679 lt!140026)) (select (arr!6708 a!3325) startIndex!26)) (ite (is-MissingZero!1877 lt!140026) (= (select (arr!6708 a!3325) (index!9678 lt!140026)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1877 lt!140026) (= (select (arr!6708 a!3325) (index!9681 lt!140026)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!179710 () SeekEntryResult!1877)

(assert (=> d!65183 (= lt!140026 e!179710)))

(declare-fun c!46046 () Bool)

(declare-fun lt!140027 () SeekEntryResult!1877)

(assert (=> d!65183 (= c!46046 (and (is-Intermediate!1877 lt!140027) (undefined!2689 lt!140027)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14133 (_ BitVec 32)) SeekEntryResult!1877)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65183 (= lt!140027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6708 a!3325) startIndex!26) mask!3868) (select (arr!6708 a!3325) startIndex!26) a!3325 mask!3868))))

(assert (=> d!65183 (validMask!0 mask!3868)))

(assert (=> d!65183 (= (seekEntryOrOpen!0 (select (arr!6708 a!3325) startIndex!26) a!3325 mask!3868) lt!140026)))

(declare-fun b!283224 () Bool)

(assert (=> b!283224 (= e!179710 Undefined!1877)))

(declare-fun b!283225 () Bool)

(declare-fun e!179709 () SeekEntryResult!1877)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14133 (_ BitVec 32)) SeekEntryResult!1877)

(assert (=> b!283225 (= e!179709 (seekKeyOrZeroReturnVacant!0 (x!27851 lt!140027) (index!9680 lt!140027) (index!9680 lt!140027) (select (arr!6708 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283226 () Bool)

(declare-fun c!46047 () Bool)

(declare-fun lt!140025 () (_ BitVec 64))

(assert (=> b!283226 (= c!46047 (= lt!140025 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!179711 () SeekEntryResult!1877)

(assert (=> b!283226 (= e!179711 e!179709)))

(declare-fun b!283227 () Bool)

(assert (=> b!283227 (= e!179710 e!179711)))

(assert (=> b!283227 (= lt!140025 (select (arr!6708 a!3325) (index!9680 lt!140027)))))

(declare-fun c!46045 () Bool)

(assert (=> b!283227 (= c!46045 (= lt!140025 (select (arr!6708 a!3325) startIndex!26)))))

(declare-fun b!283228 () Bool)

(assert (=> b!283228 (= e!179711 (Found!1877 (index!9680 lt!140027)))))

(declare-fun b!283229 () Bool)

(assert (=> b!283229 (= e!179709 (MissingZero!1877 (index!9680 lt!140027)))))

(assert (= (and d!65183 c!46046) b!283224))

(assert (= (and d!65183 (not c!46046)) b!283227))

(assert (= (and b!283227 c!46045) b!283228))

(assert (= (and b!283227 (not c!46045)) b!283226))

(assert (= (and b!283226 c!46047) b!283229))

(assert (= (and b!283226 (not c!46047)) b!283225))

(assert (=> d!65183 m!297939))

(declare-fun m!298089 () Bool)

(assert (=> d!65183 m!298089))

(declare-fun m!298091 () Bool)

(assert (=> d!65183 m!298091))

(declare-fun m!298093 () Bool)

(assert (=> d!65183 m!298093))

(assert (=> d!65183 m!297925))

(declare-fun m!298095 () Bool)

(assert (=> d!65183 m!298095))

(assert (=> d!65183 m!298095))

(assert (=> d!65183 m!297925))

(declare-fun m!298097 () Bool)

(assert (=> d!65183 m!298097))

(assert (=> b!283225 m!297925))

(declare-fun m!298099 () Bool)

(assert (=> b!283225 m!298099))

(declare-fun m!298101 () Bool)

(assert (=> b!283227 m!298101))

(assert (=> b!283067 d!65183))

(declare-fun d!65221 () Bool)

(declare-fun e!179716 () Bool)

(assert (=> d!65221 e!179716))

(declare-fun res!146243 () Bool)

(assert (=> d!65221 (=> (not res!146243) (not e!179716))))

(assert (=> d!65221 (= res!146243 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7060 a!3325))))))

(declare-fun lt!140032 () Unit!9017)

(declare-fun choose!41 (array!14133 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4537) Unit!9017)

(assert (=> d!65221 (= lt!140032 (choose!41 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4534))))

(assert (=> d!65221 (bvslt (size!7060 a!3325) #b01111111111111111111111111111111)))

(assert (=> d!65221 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4534) lt!140032)))

(declare-fun b!283234 () Bool)

(assert (=> b!283234 (= e!179716 (arrayNoDuplicates!0 (array!14134 (store (arr!6708 a!3325) i!1267 k!2581) (size!7060 a!3325)) #b00000000000000000000000000000000 Nil!4534))))

(assert (= (and d!65221 res!146243) b!283234))

(declare-fun m!298105 () Bool)

(assert (=> d!65221 m!298105))

(assert (=> b!283234 m!297921))

(declare-fun m!298109 () Bool)

(assert (=> b!283234 m!298109))

(assert (=> b!283067 d!65221))

(declare-fun d!65225 () Bool)

(assert (=> d!65225 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!140042 () Unit!9017)

(declare-fun choose!38 (array!14133 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9017)

(assert (=> d!65225 (= lt!140042 (choose!38 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> d!65225 (validMask!0 mask!3868)))

(assert (=> d!65225 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26) lt!140042)))

(declare-fun bs!10064 () Bool)

(assert (= bs!10064 d!65225))

(assert (=> bs!10064 m!297923))

(declare-fun m!298129 () Bool)

(assert (=> bs!10064 m!298129))

(assert (=> bs!10064 m!297939))

(assert (=> b!283067 d!65225))

(declare-fun b!283284 () Bool)

(declare-fun e!179754 () Bool)

(declare-fun contains!1991 (List!4537 (_ BitVec 64)) Bool)

(assert (=> b!283284 (= e!179754 (contains!1991 Nil!4534 (select (arr!6708 lt!139949) #b00000000000000000000000000000000)))))

(declare-fun bm!25477 () Bool)

(declare-fun call!25480 () Bool)

(declare-fun c!46060 () Bool)

(assert (=> bm!25477 (= call!25480 (arrayNoDuplicates!0 lt!139949 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46060 (Cons!4533 (select (arr!6708 lt!139949) #b00000000000000000000000000000000) Nil!4534) Nil!4534)))))

(declare-fun b!283285 () Bool)

(declare-fun e!179755 () Bool)

(declare-fun e!179757 () Bool)

(assert (=> b!283285 (= e!179755 e!179757)))

(declare-fun res!146269 () Bool)

(assert (=> b!283285 (=> (not res!146269) (not e!179757))))

(assert (=> b!283285 (= res!146269 (not e!179754))))

(declare-fun res!146270 () Bool)

(assert (=> b!283285 (=> (not res!146270) (not e!179754))))

(assert (=> b!283285 (= res!146270 (validKeyInArray!0 (select (arr!6708 lt!139949) #b00000000000000000000000000000000)))))

(declare-fun d!65233 () Bool)

(declare-fun res!146271 () Bool)

(assert (=> d!65233 (=> res!146271 e!179755)))

(assert (=> d!65233 (= res!146271 (bvsge #b00000000000000000000000000000000 (size!7060 lt!139949)))))

(assert (=> d!65233 (= (arrayNoDuplicates!0 lt!139949 #b00000000000000000000000000000000 Nil!4534) e!179755)))

(declare-fun b!283286 () Bool)

(declare-fun e!179756 () Bool)

(assert (=> b!283286 (= e!179756 call!25480)))

(declare-fun b!283287 () Bool)

(assert (=> b!283287 (= e!179757 e!179756)))

