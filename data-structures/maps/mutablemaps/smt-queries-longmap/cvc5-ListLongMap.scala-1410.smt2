; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27322 () Bool)

(assert start!27322)

(declare-fun b!283005 () Bool)

(declare-fun res!146115 () Bool)

(declare-fun e!179575 () Bool)

(assert (=> b!283005 (=> (not res!146115) (not e!179575))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283005 (= res!146115 (validKeyInArray!0 k!2581))))

(declare-fun b!283006 () Bool)

(declare-fun e!179571 () Bool)

(declare-fun e!179574 () Bool)

(assert (=> b!283006 (= e!179571 e!179574)))

(declare-fun res!146117 () Bool)

(assert (=> b!283006 (=> (not res!146117) (not e!179574))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!283006 (= res!146117 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!14129 0))(
  ( (array!14130 (arr!6706 (Array (_ BitVec 32) (_ BitVec 64))) (size!7058 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14129)

(declare-fun lt!139916 () array!14129)

(assert (=> b!283006 (= lt!139916 (array!14130 (store (arr!6706 a!3325) i!1267 k!2581) (size!7058 a!3325)))))

(declare-fun b!283007 () Bool)

(declare-fun e!179572 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14129 (_ BitVec 32)) Bool)

(assert (=> b!283007 (= e!179572 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!139916 mask!3868))))

(assert (=> b!283007 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!139916 mask!3868)))

(declare-datatypes ((Unit!9013 0))(
  ( (Unit!9014) )
))
(declare-fun lt!139912 () Unit!9013)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14129 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9013)

(assert (=> b!283007 (= lt!139912 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!283008 () Bool)

(declare-fun res!146121 () Bool)

(assert (=> b!283008 (=> (not res!146121) (not e!179575))))

(declare-fun arrayContainsKey!0 (array!14129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283008 (= res!146121 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283009 () Bool)

(declare-fun res!146119 () Bool)

(assert (=> b!283009 (=> (not res!146119) (not e!179575))))

(assert (=> b!283009 (= res!146119 (and (= (size!7058 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7058 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7058 a!3325))))))

(declare-fun b!283010 () Bool)

(declare-fun res!146112 () Bool)

(assert (=> b!283010 (=> (not res!146112) (not e!179571))))

(assert (=> b!283010 (= res!146112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!146118 () Bool)

(assert (=> start!27322 (=> (not res!146118) (not e!179575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27322 (= res!146118 (validMask!0 mask!3868))))

(assert (=> start!27322 e!179575))

(declare-fun array_inv!4660 (array!14129) Bool)

(assert (=> start!27322 (array_inv!4660 a!3325)))

(assert (=> start!27322 true))

(declare-fun b!283011 () Bool)

(assert (=> b!283011 (= e!179574 (not e!179572))))

(declare-fun res!146120 () Bool)

(assert (=> b!283011 (=> res!146120 e!179572)))

(assert (=> b!283011 (= res!146120 (or (bvsge startIndex!26 (bvsub (size!7058 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!283011 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!139913 () Unit!9013)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14129 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9013)

(assert (=> b!283011 (= lt!139913 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1875 0))(
  ( (MissingZero!1875 (index!9670 (_ BitVec 32))) (Found!1875 (index!9671 (_ BitVec 32))) (Intermediate!1875 (undefined!2687 Bool) (index!9672 (_ BitVec 32)) (x!27849 (_ BitVec 32))) (Undefined!1875) (MissingVacant!1875 (index!9673 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14129 (_ BitVec 32)) SeekEntryResult!1875)

(assert (=> b!283011 (= (seekEntryOrOpen!0 (select (arr!6706 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6706 a!3325) i!1267 k!2581) startIndex!26) lt!139916 mask!3868))))

(declare-fun lt!139911 () Unit!9013)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14129 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9013)

(assert (=> b!283011 (= lt!139911 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4535 0))(
  ( (Nil!4532) (Cons!4531 (h!5201 (_ BitVec 64)) (t!9625 List!4535)) )
))
(declare-fun arrayNoDuplicates!0 (array!14129 (_ BitVec 32) List!4535) Bool)

(assert (=> b!283011 (arrayNoDuplicates!0 lt!139916 #b00000000000000000000000000000000 Nil!4532)))

(declare-fun lt!139914 () Unit!9013)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14129 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4535) Unit!9013)

(assert (=> b!283011 (= lt!139914 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4532))))

(declare-fun b!283012 () Bool)

(declare-fun res!146116 () Bool)

(assert (=> b!283012 (=> (not res!146116) (not e!179575))))

(assert (=> b!283012 (= res!146116 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4532))))

(declare-fun b!283013 () Bool)

(declare-fun res!146113 () Bool)

(assert (=> b!283013 (=> (not res!146113) (not e!179574))))

(assert (=> b!283013 (= res!146113 (validKeyInArray!0 (select (arr!6706 a!3325) startIndex!26)))))

(declare-fun b!283014 () Bool)

(assert (=> b!283014 (= e!179575 e!179571)))

(declare-fun res!146114 () Bool)

(assert (=> b!283014 (=> (not res!146114) (not e!179571))))

(declare-fun lt!139915 () SeekEntryResult!1875)

(assert (=> b!283014 (= res!146114 (or (= lt!139915 (MissingZero!1875 i!1267)) (= lt!139915 (MissingVacant!1875 i!1267))))))

(assert (=> b!283014 (= lt!139915 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27322 res!146118) b!283009))

(assert (= (and b!283009 res!146119) b!283005))

(assert (= (and b!283005 res!146115) b!283012))

(assert (= (and b!283012 res!146116) b!283008))

(assert (= (and b!283008 res!146121) b!283014))

(assert (= (and b!283014 res!146114) b!283010))

(assert (= (and b!283010 res!146112) b!283006))

(assert (= (and b!283006 res!146117) b!283013))

(assert (= (and b!283013 res!146113) b!283011))

(assert (= (and b!283011 (not res!146120)) b!283007))

(declare-fun m!297817 () Bool)

(assert (=> b!283013 m!297817))

(assert (=> b!283013 m!297817))

(declare-fun m!297819 () Bool)

(assert (=> b!283013 m!297819))

(declare-fun m!297821 () Bool)

(assert (=> b!283014 m!297821))

(declare-fun m!297823 () Bool)

(assert (=> start!27322 m!297823))

(declare-fun m!297825 () Bool)

(assert (=> start!27322 m!297825))

(declare-fun m!297827 () Bool)

(assert (=> b!283006 m!297827))

(declare-fun m!297829 () Bool)

(assert (=> b!283008 m!297829))

(declare-fun m!297831 () Bool)

(assert (=> b!283007 m!297831))

(declare-fun m!297833 () Bool)

(assert (=> b!283007 m!297833))

(declare-fun m!297835 () Bool)

(assert (=> b!283007 m!297835))

(declare-fun m!297837 () Bool)

(assert (=> b!283012 m!297837))

(declare-fun m!297839 () Bool)

(assert (=> b!283011 m!297839))

(declare-fun m!297841 () Bool)

(assert (=> b!283011 m!297841))

(assert (=> b!283011 m!297827))

(declare-fun m!297843 () Bool)

(assert (=> b!283011 m!297843))

(assert (=> b!283011 m!297841))

(declare-fun m!297845 () Bool)

(assert (=> b!283011 m!297845))

(assert (=> b!283011 m!297817))

(declare-fun m!297847 () Bool)

(assert (=> b!283011 m!297847))

(declare-fun m!297849 () Bool)

(assert (=> b!283011 m!297849))

(declare-fun m!297851 () Bool)

(assert (=> b!283011 m!297851))

(assert (=> b!283011 m!297817))

(declare-fun m!297853 () Bool)

(assert (=> b!283011 m!297853))

(declare-fun m!297855 () Bool)

(assert (=> b!283010 m!297855))

(declare-fun m!297857 () Bool)

(assert (=> b!283005 m!297857))

(push 1)

(assert (not b!283014))

(assert (not b!283005))

(assert (not b!283012))

(assert (not b!283010))

(assert (not b!283011))

(assert (not b!283013))

(assert (not start!27322))

(assert (not b!283008))

(assert (not b!283007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!283124 () Bool)

(declare-fun e!179641 () SeekEntryResult!1875)

(declare-fun lt!139984 () SeekEntryResult!1875)

(assert (=> b!283124 (= e!179641 (Found!1875 (index!9672 lt!139984)))))

(declare-fun e!179639 () SeekEntryResult!1875)

(declare-fun b!283125 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14129 (_ BitVec 32)) SeekEntryResult!1875)

(assert (=> b!283125 (= e!179639 (seekKeyOrZeroReturnVacant!0 (x!27849 lt!139984) (index!9672 lt!139984) (index!9672 lt!139984) k!2581 a!3325 mask!3868))))

(declare-fun b!283126 () Bool)

(assert (=> b!283126 (= e!179639 (MissingZero!1875 (index!9672 lt!139984)))))

(declare-fun b!283127 () Bool)

(declare-fun c!46019 () Bool)

(declare-fun lt!139985 () (_ BitVec 64))

(assert (=> b!283127 (= c!46019 (= lt!139985 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283127 (= e!179641 e!179639)))

(declare-fun b!283128 () Bool)

(declare-fun e!179640 () SeekEntryResult!1875)

(assert (=> b!283128 (= e!179640 e!179641)))

(assert (=> b!283128 (= lt!139985 (select (arr!6706 a!3325) (index!9672 lt!139984)))))

(declare-fun c!46018 () Bool)

(assert (=> b!283128 (= c!46018 (= lt!139985 k!2581))))

(declare-fun b!283129 () Bool)

(assert (=> b!283129 (= e!179640 Undefined!1875)))

(declare-fun d!65175 () Bool)

(declare-fun lt!139983 () SeekEntryResult!1875)

(assert (=> d!65175 (and (or (is-Undefined!1875 lt!139983) (not (is-Found!1875 lt!139983)) (and (bvsge (index!9671 lt!139983) #b00000000000000000000000000000000) (bvslt (index!9671 lt!139983) (size!7058 a!3325)))) (or (is-Undefined!1875 lt!139983) (is-Found!1875 lt!139983) (not (is-MissingZero!1875 lt!139983)) (and (bvsge (index!9670 lt!139983) #b00000000000000000000000000000000) (bvslt (index!9670 lt!139983) (size!7058 a!3325)))) (or (is-Undefined!1875 lt!139983) (is-Found!1875 lt!139983) (is-MissingZero!1875 lt!139983) (not (is-MissingVacant!1875 lt!139983)) (and (bvsge (index!9673 lt!139983) #b00000000000000000000000000000000) (bvslt (index!9673 lt!139983) (size!7058 a!3325)))) (or (is-Undefined!1875 lt!139983) (ite (is-Found!1875 lt!139983) (= (select (arr!6706 a!3325) (index!9671 lt!139983)) k!2581) (ite (is-MissingZero!1875 lt!139983) (= (select (arr!6706 a!3325) (index!9670 lt!139983)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1875 lt!139983) (= (select (arr!6706 a!3325) (index!9673 lt!139983)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65175 (= lt!139983 e!179640)))

(declare-fun c!46017 () Bool)

(assert (=> d!65175 (= c!46017 (and (is-Intermediate!1875 lt!139984) (undefined!2687 lt!139984)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14129 (_ BitVec 32)) SeekEntryResult!1875)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65175 (= lt!139984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!65175 (validMask!0 mask!3868)))

(assert (=> d!65175 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!139983)))

(assert (= (and d!65175 c!46017) b!283129))

(assert (= (and d!65175 (not c!46017)) b!283128))

(assert (= (and b!283128 c!46018) b!283124))

(assert (= (and b!283128 (not c!46018)) b!283127))

(assert (= (and b!283127 c!46019) b!283126))

(assert (= (and b!283127 (not c!46019)) b!283125))

(declare-fun m!297985 () Bool)

(assert (=> b!283125 m!297985))

(declare-fun m!297987 () Bool)

(assert (=> b!283128 m!297987))

(declare-fun m!297989 () Bool)

(assert (=> d!65175 m!297989))

(declare-fun m!297991 () Bool)

(assert (=> d!65175 m!297991))

(declare-fun m!297993 () Bool)

(assert (=> d!65175 m!297993))

(declare-fun m!297995 () Bool)

(assert (=> d!65175 m!297995))

(assert (=> d!65175 m!297823))

(declare-fun m!297997 () Bool)

(assert (=> d!65175 m!297997))

(assert (=> d!65175 m!297991))

(assert (=> b!283014 d!65175))

(declare-fun d!65187 () Bool)

(assert (=> d!65187 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283005 d!65187))

(declare-fun b!283157 () Bool)

(declare-fun e!179660 () Bool)

(declare-fun call!25465 () Bool)

(assert (=> b!283157 (= e!179660 call!25465)))

(declare-fun b!283158 () Bool)

(declare-fun e!179661 () Bool)

(assert (=> b!283158 (= e!179661 e!179660)))

(declare-fun lt!140000 () (_ BitVec 64))

(assert (=> b!283158 (= lt!140000 (select (arr!6706 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!139999 () Unit!9013)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14129 (_ BitVec 64) (_ BitVec 32)) Unit!9013)

(assert (=> b!283158 (= lt!139999 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140000 #b00000000000000000000000000000000))))

(assert (=> b!283158 (arrayContainsKey!0 a!3325 lt!140000 #b00000000000000000000000000000000)))

(declare-fun lt!139998 () Unit!9013)

(assert (=> b!283158 (= lt!139998 lt!139999)))

(declare-fun res!146208 () Bool)

(assert (=> b!283158 (= res!146208 (= (seekEntryOrOpen!0 (select (arr!6706 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1875 #b00000000000000000000000000000000)))))

(assert (=> b!283158 (=> (not res!146208) (not e!179660))))

(declare-fun b!283159 () Bool)

(assert (=> b!283159 (= e!179661 call!25465)))

(declare-fun d!65189 () Bool)

(declare-fun res!146209 () Bool)

(declare-fun e!179662 () Bool)

(assert (=> d!65189 (=> res!146209 e!179662)))

(assert (=> d!65189 (= res!146209 (bvsge #b00000000000000000000000000000000 (size!7058 a!3325)))))

(assert (=> d!65189 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!179662)))

(declare-fun bm!25462 () Bool)

(assert (=> bm!25462 (= call!25465 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!283160 () Bool)

(assert (=> b!283160 (= e!179662 e!179661)))

(declare-fun c!46027 () Bool)

(assert (=> b!283160 (= c!46027 (validKeyInArray!0 (select (arr!6706 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65189 (not res!146209)) b!283160))

(assert (= (and b!283160 c!46027) b!283158))

(assert (= (and b!283160 (not c!46027)) b!283159))

(assert (= (and b!283158 res!146208) b!283157))

(assert (= (or b!283157 b!283159) bm!25462))

(declare-fun m!298007 () Bool)

(assert (=> b!283158 m!298007))

(declare-fun m!298009 () Bool)

(assert (=> b!283158 m!298009))

(declare-fun m!298011 () Bool)

(assert (=> b!283158 m!298011))

(assert (=> b!283158 m!298007))

(declare-fun m!298013 () Bool)

(assert (=> b!283158 m!298013))

(declare-fun m!298015 () Bool)

(assert (=> bm!25462 m!298015))

(assert (=> b!283160 m!298007))

(assert (=> b!283160 m!298007))

(declare-fun m!298017 () Bool)

(assert (=> b!283160 m!298017))

(assert (=> b!283010 d!65189))

(declare-fun d!65193 () Bool)

(assert (=> d!65193 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27322 d!65193))

(declare-fun d!65207 () Bool)

(assert (=> d!65207 (= (array_inv!4660 a!3325) (bvsge (size!7058 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27322 d!65207))

(declare-fun b!283219 () Bool)

(declare-fun e!179707 () Bool)

(declare-fun e!179708 () Bool)

(assert (=> b!283219 (= e!179707 e!179708)))

(declare-fun res!146236 () Bool)

(assert (=> b!283219 (=> (not res!146236) (not e!179708))))

(declare-fun e!179706 () Bool)

(assert (=> b!283219 (= res!146236 (not e!179706))))

(declare-fun res!146237 () Bool)

(assert (=> b!283219 (=> (not res!146237) (not e!179706))))

(assert (=> b!283219 (= res!146237 (validKeyInArray!0 (select (arr!6706 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25470 () Bool)

(declare-fun call!25473 () Bool)

(declare-fun c!46044 () Bool)

(assert (=> bm!25470 (= call!25473 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46044 (Cons!4531 (select (arr!6706 a!3325) #b00000000000000000000000000000000) Nil!4532) Nil!4532)))))

(declare-fun d!65209 () Bool)

(declare-fun res!146238 () Bool)

(assert (=> d!65209 (=> res!146238 e!179707)))

(assert (=> d!65209 (= res!146238 (bvsge #b00000000000000000000000000000000 (size!7058 a!3325)))))

(assert (=> d!65209 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4532) e!179707)))

(declare-fun b!283220 () Bool)

(declare-fun e!179705 () Bool)

(assert (=> b!283220 (= e!179705 call!25473)))

(declare-fun b!283221 () Bool)

(declare-fun contains!1990 (List!4535 (_ BitVec 64)) Bool)

(assert (=> b!283221 (= e!179706 (contains!1990 Nil!4532 (select (arr!6706 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283222 () Bool)

(assert (=> b!283222 (= e!179708 e!179705)))

(assert (=> b!283222 (= c!46044 (validKeyInArray!0 (select (arr!6706 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283223 () Bool)

(assert (=> b!283223 (= e!179705 call!25473)))

(assert (= (and d!65209 (not res!146238)) b!283219))

(assert (= (and b!283219 res!146237) b!283221))

(assert (= (and b!283219 res!146236) b!283222))

(assert (= (and b!283222 c!46044) b!283220))

(assert (= (and b!283222 (not c!46044)) b!283223))

(assert (= (or b!283220 b!283223) bm!25470))

(assert (=> b!283219 m!298007))

(assert (=> b!283219 m!298007))

(assert (=> b!283219 m!298017))

(assert (=> bm!25470 m!298007))

(declare-fun m!298085 () Bool)

(assert (=> bm!25470 m!298085))

(assert (=> b!283221 m!298007))

(assert (=> b!283221 m!298007))

(declare-fun m!298087 () Bool)

(assert (=> b!283221 m!298087))

(assert (=> b!283222 m!298007))

(assert (=> b!283222 m!298007))

(assert (=> b!283222 m!298017))

(assert (=> b!283012 d!65209))

(declare-fun d!65219 () Bool)

(declare-fun e!179717 () Bool)

(assert (=> d!65219 e!179717))

(declare-fun res!146244 () Bool)

(assert (=> d!65219 (=> (not res!146244) (not e!179717))))

(assert (=> d!65219 (= res!146244 (and (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7058 a!3325)) (and (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7058 a!3325)))) (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7058 a!3325)) (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7058 a!3325)))) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7058 a!3325))))))

(declare-fun lt!140033 () Unit!9013)

(declare-fun choose!83 (array!14129 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9013)

(assert (=> d!65219 (= lt!140033 (choose!83 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> d!65219 (validMask!0 mask!3868)))

(assert (=> d!65219 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868) lt!140033)))

(declare-fun b!283235 () Bool)

(assert (=> b!283235 (= e!179717 (= (seekEntryOrOpen!0 (select (arr!6706 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6706 a!3325) i!1267 k!2581) startIndex!26) (array!14130 (store (arr!6706 a!3325) i!1267 k!2581) (size!7058 a!3325)) mask!3868)))))

(assert (= (and d!65219 res!146244) b!283235))

(declare-fun m!298104 () Bool)

(assert (=> d!65219 m!298104))

(assert (=> d!65219 m!297823))

(assert (=> b!283235 m!297841))

(assert (=> b!283235 m!297841))

(declare-fun m!298107 () Bool)

(assert (=> b!283235 m!298107))

(assert (=> b!283235 m!297817))

(assert (=> b!283235 m!297827))

(assert (=> b!283235 m!297817))

(assert (=> b!283235 m!297853))

(assert (=> b!283011 d!65219))

(declare-fun b!283236 () Bool)

(declare-fun e!179720 () SeekEntryResult!1875)

(declare-fun lt!140035 () SeekEntryResult!1875)

(assert (=> b!283236 (= e!179720 (Found!1875 (index!9672 lt!140035)))))

(declare-fun b!283237 () Bool)

(declare-fun e!179718 () SeekEntryResult!1875)

(assert (=> b!283237 (= e!179718 (seekKeyOrZeroReturnVacant!0 (x!27849 lt!140035) (index!9672 lt!140035) (index!9672 lt!140035) (select (arr!6706 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283238 () Bool)

(assert (=> b!283238 (= e!179718 (MissingZero!1875 (index!9672 lt!140035)))))

(declare-fun b!283239 () Bool)

(declare-fun c!46050 () Bool)

(declare-fun lt!140036 () (_ BitVec 64))

(assert (=> b!283239 (= c!46050 (= lt!140036 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283239 (= e!179720 e!179718)))

(declare-fun b!283240 () Bool)

(declare-fun e!179719 () SeekEntryResult!1875)

(assert (=> b!283240 (= e!179719 e!179720)))

(assert (=> b!283240 (= lt!140036 (select (arr!6706 a!3325) (index!9672 lt!140035)))))

(declare-fun c!46049 () Bool)

(assert (=> b!283240 (= c!46049 (= lt!140036 (select (arr!6706 a!3325) startIndex!26)))))

(declare-fun b!283241 () Bool)

(assert (=> b!283241 (= e!179719 Undefined!1875)))

(declare-fun d!65227 () Bool)

(declare-fun lt!140034 () SeekEntryResult!1875)

(assert (=> d!65227 (and (or (is-Undefined!1875 lt!140034) (not (is-Found!1875 lt!140034)) (and (bvsge (index!9671 lt!140034) #b00000000000000000000000000000000) (bvslt (index!9671 lt!140034) (size!7058 a!3325)))) (or (is-Undefined!1875 lt!140034) (is-Found!1875 lt!140034) (not (is-MissingZero!1875 lt!140034)) (and (bvsge (index!9670 lt!140034) #b00000000000000000000000000000000) (bvslt (index!9670 lt!140034) (size!7058 a!3325)))) (or (is-Undefined!1875 lt!140034) (is-Found!1875 lt!140034) (is-MissingZero!1875 lt!140034) (not (is-MissingVacant!1875 lt!140034)) (and (bvsge (index!9673 lt!140034) #b00000000000000000000000000000000) (bvslt (index!9673 lt!140034) (size!7058 a!3325)))) (or (is-Undefined!1875 lt!140034) (ite (is-Found!1875 lt!140034) (= (select (arr!6706 a!3325) (index!9671 lt!140034)) (select (arr!6706 a!3325) startIndex!26)) (ite (is-MissingZero!1875 lt!140034) (= (select (arr!6706 a!3325) (index!9670 lt!140034)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1875 lt!140034) (= (select (arr!6706 a!3325) (index!9673 lt!140034)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65227 (= lt!140034 e!179719)))

(declare-fun c!46048 () Bool)

(assert (=> d!65227 (= c!46048 (and (is-Intermediate!1875 lt!140035) (undefined!2687 lt!140035)))))

(assert (=> d!65227 (= lt!140035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6706 a!3325) startIndex!26) mask!3868) (select (arr!6706 a!3325) startIndex!26) a!3325 mask!3868))))

(assert (=> d!65227 (validMask!0 mask!3868)))

(assert (=> d!65227 (= (seekEntryOrOpen!0 (select (arr!6706 a!3325) startIndex!26) a!3325 mask!3868) lt!140034)))

(assert (= (and d!65227 c!46048) b!283241))

(assert (= (and d!65227 (not c!46048)) b!283240))

(assert (= (and b!283240 c!46049) b!283236))

(assert (= (and b!283240 (not c!46049)) b!283239))

(assert (= (and b!283239 c!46050) b!283238))

(assert (= (and b!283239 (not c!46050)) b!283237))

(assert (=> b!283237 m!297817))

(declare-fun m!298111 () Bool)

(assert (=> b!283237 m!298111))

(declare-fun m!298113 () Bool)

(assert (=> b!283240 m!298113))

(declare-fun m!298115 () Bool)

(assert (=> d!65227 m!298115))

(declare-fun m!298117 () Bool)

(assert (=> d!65227 m!298117))

(assert (=> d!65227 m!297817))

(declare-fun m!298119 () Bool)

(assert (=> d!65227 m!298119))

(declare-fun m!298121 () Bool)

(assert (=> d!65227 m!298121))

(assert (=> d!65227 m!297823))

(declare-fun m!298123 () Bool)

(assert (=> d!65227 m!298123))

(assert (=> d!65227 m!297817))

(assert (=> d!65227 m!298117))

(assert (=> b!283011 d!65227))

(declare-fun d!65229 () Bool)

(declare-fun e!179723 () Bool)

(assert (=> d!65229 e!179723))

(declare-fun res!146247 () Bool)

(assert (=> d!65229 (=> (not res!146247) (not e!179723))))

(assert (=> d!65229 (= res!146247 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7058 a!3325))))))

(declare-fun lt!140039 () Unit!9013)

(declare-fun choose!41 (array!14129 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4535) Unit!9013)

(assert (=> d!65229 (= lt!140039 (choose!41 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4532))))

(assert (=> d!65229 (bvslt (size!7058 a!3325) #b01111111111111111111111111111111)))

(assert (=> d!65229 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4532) lt!140039)))

(declare-fun b!283244 () Bool)

(assert (=> b!283244 (= e!179723 (arrayNoDuplicates!0 (array!14130 (store (arr!6706 a!3325) i!1267 k!2581) (size!7058 a!3325)) #b00000000000000000000000000000000 Nil!4532))))

(assert (= (and d!65229 res!146247) b!283244))

(declare-fun m!298125 () Bool)

(assert (=> d!65229 m!298125))

(assert (=> b!283244 m!297827))

(declare-fun m!298127 () Bool)

(assert (=> b!283244 m!298127))

(assert (=> b!283011 d!65229))

(declare-fun d!65231 () Bool)

(assert (=> d!65231 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!140045 () Unit!9013)

(declare-fun choose!38 (array!14129 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9013)

(assert (=> d!65231 (= lt!140045 (choose!38 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> d!65231 (validMask!0 mask!3868)))

(assert (=> d!65231 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26) lt!140045)))

(declare-fun bs!10065 () Bool)

(assert (= bs!10065 d!65231))

(assert (=> bs!10065 m!297843))

(declare-fun m!298131 () Bool)

(assert (=> bs!10065 m!298131))

(assert (=> bs!10065 m!297823))

(assert (=> b!283011 d!65231))

(declare-fun b!283245 () Bool)

(declare-fun e!179726 () Bool)

(declare-fun e!179727 () Bool)

(assert (=> b!283245 (= e!179726 e!179727)))

(declare-fun res!146248 () Bool)

(assert (=> b!283245 (=> (not res!146248) (not e!179727))))

(declare-fun e!179725 () Bool)

(assert (=> b!283245 (= res!146248 (not e!179725))))

(declare-fun res!146249 () Bool)

(assert (=> b!283245 (=> (not res!146249) (not e!179725))))

(assert (=> b!283245 (= res!146249 (validKeyInArray!0 (select (arr!6706 lt!139916) #b00000000000000000000000000000000)))))

(declare-fun bm!25471 () Bool)

(declare-fun call!25474 () Bool)

(declare-fun c!46051 () Bool)

(assert (=> bm!25471 (= call!25474 (arrayNoDuplicates!0 lt!139916 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46051 (Cons!4531 (select (arr!6706 lt!139916) #b00000000000000000000000000000000) Nil!4532) Nil!4532)))))

(declare-fun d!65235 () Bool)

(declare-fun res!146250 () Bool)

(assert (=> d!65235 (=> res!146250 e!179726)))

(assert (=> d!65235 (= res!146250 (bvsge #b00000000000000000000000000000000 (size!7058 lt!139916)))))

(assert (=> d!65235 (= (arrayNoDuplicates!0 lt!139916 #b00000000000000000000000000000000 Nil!4532) e!179726)))

(declare-fun b!283246 () Bool)

(declare-fun e!179724 () Bool)

(assert (=> b!283246 (= e!179724 call!25474)))

(declare-fun b!283247 () Bool)

(assert (=> b!283247 (= e!179725 (contains!1990 Nil!4532 (select (arr!6706 lt!139916) #b00000000000000000000000000000000)))))

(declare-fun b!283248 () Bool)

(assert (=> b!283248 (= e!179727 e!179724)))

(assert (=> b!283248 (= c!46051 (validKeyInArray!0 (select (arr!6706 lt!139916) #b00000000000000000000000000000000)))))

(declare-fun b!283249 () Bool)

(assert (=> b!283249 (= e!179724 call!25474)))

(assert (= (and d!65235 (not res!146250)) b!283245))

(assert (= (and b!283245 res!146249) b!283247))

(assert (= (and b!283245 res!146248) b!283248))

(assert (= (and b!283248 c!46051) b!283246))

(assert (= (and b!283248 (not c!46051)) b!283249))

(assert (= (or b!283246 b!283249) bm!25471))

(declare-fun m!298133 () Bool)

(assert (=> b!283245 m!298133))

(assert (=> b!283245 m!298133))

(declare-fun m!298135 () Bool)

(assert (=> b!283245 m!298135))

(assert (=> bm!25471 m!298133))

(declare-fun m!298137 () Bool)

(assert (=> bm!25471 m!298137))

(assert (=> b!283247 m!298133))

(assert (=> b!283247 m!298133))

(declare-fun m!298139 () Bool)

(assert (=> b!283247 m!298139))

(assert (=> b!283248 m!298133))

(assert (=> b!283248 m!298133))

(assert (=> b!283248 m!298135))

(assert (=> b!283011 d!65235))

(declare-fun b!283250 () Bool)

(declare-fun e!179730 () SeekEntryResult!1875)

(declare-fun lt!140047 () SeekEntryResult!1875)

(assert (=> b!283250 (= e!179730 (Found!1875 (index!9672 lt!140047)))))

(declare-fun b!283251 () Bool)

(declare-fun e!179728 () SeekEntryResult!1875)

(assert (=> b!283251 (= e!179728 (seekKeyOrZeroReturnVacant!0 (x!27849 lt!140047) (index!9672 lt!140047) (index!9672 lt!140047) (select (store (arr!6706 a!3325) i!1267 k!2581) startIndex!26) lt!139916 mask!3868))))

(declare-fun b!283252 () Bool)

(assert (=> b!283252 (= e!179728 (MissingZero!1875 (index!9672 lt!140047)))))

(declare-fun b!283253 () Bool)

(declare-fun c!46054 () Bool)

(declare-fun lt!140048 () (_ BitVec 64))

(assert (=> b!283253 (= c!46054 (= lt!140048 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283253 (= e!179730 e!179728)))

(declare-fun b!283254 () Bool)

(declare-fun e!179729 () SeekEntryResult!1875)

(assert (=> b!283254 (= e!179729 e!179730)))

(assert (=> b!283254 (= lt!140048 (select (arr!6706 lt!139916) (index!9672 lt!140047)))))

(declare-fun c!46053 () Bool)

(assert (=> b!283254 (= c!46053 (= lt!140048 (select (store (arr!6706 a!3325) i!1267 k!2581) startIndex!26)))))

(declare-fun b!283255 () Bool)

(assert (=> b!283255 (= e!179729 Undefined!1875)))

(declare-fun lt!140046 () SeekEntryResult!1875)

(declare-fun d!65237 () Bool)

(assert (=> d!65237 (and (or (is-Undefined!1875 lt!140046) (not (is-Found!1875 lt!140046)) (and (bvsge (index!9671 lt!140046) #b00000000000000000000000000000000) (bvslt (index!9671 lt!140046) (size!7058 lt!139916)))) (or (is-Undefined!1875 lt!140046) (is-Found!1875 lt!140046) (not (is-MissingZero!1875 lt!140046)) (and (bvsge (index!9670 lt!140046) #b00000000000000000000000000000000) (bvslt (index!9670 lt!140046) (size!7058 lt!139916)))) (or (is-Undefined!1875 lt!140046) (is-Found!1875 lt!140046) (is-MissingZero!1875 lt!140046) (not (is-MissingVacant!1875 lt!140046)) (and (bvsge (index!9673 lt!140046) #b00000000000000000000000000000000) (bvslt (index!9673 lt!140046) (size!7058 lt!139916)))) (or (is-Undefined!1875 lt!140046) (ite (is-Found!1875 lt!140046) (= (select (arr!6706 lt!139916) (index!9671 lt!140046)) (select (store (arr!6706 a!3325) i!1267 k!2581) startIndex!26)) (ite (is-MissingZero!1875 lt!140046) (= (select (arr!6706 lt!139916) (index!9670 lt!140046)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1875 lt!140046) (= (select (arr!6706 lt!139916) (index!9673 lt!140046)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65237 (= lt!140046 e!179729)))

(declare-fun c!46052 () Bool)

(assert (=> d!65237 (= c!46052 (and (is-Intermediate!1875 lt!140047) (undefined!2687 lt!140047)))))

(assert (=> d!65237 (= lt!140047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6706 a!3325) i!1267 k!2581) startIndex!26) mask!3868) (select (store (arr!6706 a!3325) i!1267 k!2581) startIndex!26) lt!139916 mask!3868))))

(assert (=> d!65237 (validMask!0 mask!3868)))

(assert (=> d!65237 (= (seekEntryOrOpen!0 (select (store (arr!6706 a!3325) i!1267 k!2581) startIndex!26) lt!139916 mask!3868) lt!140046)))

(assert (= (and d!65237 c!46052) b!283255))

(assert (= (and d!65237 (not c!46052)) b!283254))

(assert (= (and b!283254 c!46053) b!283250))

(assert (= (and b!283254 (not c!46053)) b!283253))

(assert (= (and b!283253 c!46054) b!283252))

(assert (= (and b!283253 (not c!46054)) b!283251))

(assert (=> b!283251 m!297841))

(declare-fun m!298141 () Bool)

(assert (=> b!283251 m!298141))

(declare-fun m!298143 () Bool)

(assert (=> b!283254 m!298143))

(declare-fun m!298145 () Bool)

(assert (=> d!65237 m!298145))

(declare-fun m!298147 () Bool)

(assert (=> d!65237 m!298147))

(assert (=> d!65237 m!297841))

(declare-fun m!298149 () Bool)

(assert (=> d!65237 m!298149))

(declare-fun m!298151 () Bool)

(assert (=> d!65237 m!298151))

(assert (=> d!65237 m!297823))

(declare-fun m!298153 () Bool)

(assert (=> d!65237 m!298153))

(assert (=> d!65237 m!297841))

(assert (=> d!65237 m!298147))

(assert (=> b!283011 d!65237))

(declare-fun b!283258 () Bool)

(declare-fun e!179733 () Bool)

(declare-fun call!25475 () Bool)

(assert (=> b!283258 (= e!179733 call!25475)))

(declare-fun b!283259 () Bool)

(declare-fun e!179734 () Bool)

(assert (=> b!283259 (= e!179734 e!179733)))

(declare-fun lt!140051 () (_ BitVec 64))

(assert (=> b!283259 (= lt!140051 (select (arr!6706 a!3325) startIndex!26))))

(declare-fun lt!140050 () Unit!9013)

(assert (=> b!283259 (= lt!140050 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140051 startIndex!26))))

(assert (=> b!283259 (arrayContainsKey!0 a!3325 lt!140051 #b00000000000000000000000000000000)))

(declare-fun lt!140049 () Unit!9013)

(assert (=> b!283259 (= lt!140049 lt!140050)))

(declare-fun res!146253 () Bool)

(assert (=> b!283259 (= res!146253 (= (seekEntryOrOpen!0 (select (arr!6706 a!3325) startIndex!26) a!3325 mask!3868) (Found!1875 startIndex!26)))))

(assert (=> b!283259 (=> (not res!146253) (not e!179733))))

(declare-fun b!283260 () Bool)

(assert (=> b!283260 (= e!179734 call!25475)))

(declare-fun d!65239 () Bool)

(declare-fun res!146254 () Bool)

(declare-fun e!179735 () Bool)

(assert (=> d!65239 (=> res!146254 e!179735)))

(assert (=> d!65239 (= res!146254 (bvsge startIndex!26 (size!7058 a!3325)))))

(assert (=> d!65239 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868) e!179735)))

(declare-fun bm!25472 () Bool)

(assert (=> bm!25472 (= call!25475 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!283261 () Bool)

(assert (=> b!283261 (= e!179735 e!179734)))

(declare-fun c!46055 () Bool)

(assert (=> b!283261 (= c!46055 (validKeyInArray!0 (select (arr!6706 a!3325) startIndex!26)))))

(assert (= (and d!65239 (not res!146254)) b!283261))

(assert (= (and b!283261 c!46055) b!283259))

(assert (= (and b!283261 (not c!46055)) b!283260))

(assert (= (and b!283259 res!146253) b!283258))

(assert (= (or b!283258 b!283260) bm!25472))

(assert (=> b!283259 m!297817))

(declare-fun m!298155 () Bool)

(assert (=> b!283259 m!298155))

(declare-fun m!298157 () Bool)

(assert (=> b!283259 m!298157))

(assert (=> b!283259 m!297817))

(assert (=> b!283259 m!297853))

(declare-fun m!298159 () Bool)

(assert (=> bm!25472 m!298159))

(assert (=> b!283261 m!297817))

(assert (=> b!283261 m!297817))

(assert (=> b!283261 m!297819))

(assert (=> b!283011 d!65239))

(declare-fun d!65241 () Bool)

(assert (=> d!65241 (= (validKeyInArray!0 (select (arr!6706 a!3325) startIndex!26)) (and (not (= (select (arr!6706 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6706 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283013 d!65241))

(declare-fun d!65243 () Bool)

(declare-fun res!146263 () Bool)

(declare-fun e!179746 () Bool)

(assert (=> d!65243 (=> res!146263 e!179746)))

(assert (=> d!65243 (= res!146263 (= (select (arr!6706 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65243 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!179746)))

(declare-fun b!283274 () Bool)

(declare-fun e!179747 () Bool)

(assert (=> b!283274 (= e!179746 e!179747)))

(declare-fun res!146264 () Bool)

(assert (=> b!283274 (=> (not res!146264) (not e!179747))))

(assert (=> b!283274 (= res!146264 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7058 a!3325)))))

(declare-fun b!283275 () Bool)

(assert (=> b!283275 (= e!179747 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65243 (not res!146263)) b!283274))

(assert (= (and b!283274 res!146264) b!283275))

(assert (=> d!65243 m!298007))

(declare-fun m!298161 () Bool)

(assert (=> b!283275 m!298161))

(assert (=> b!283008 d!65243))

(declare-fun b!283276 () Bool)

(declare-fun e!179748 () Bool)

(declare-fun call!25478 () Bool)

(assert (=> b!283276 (= e!179748 call!25478)))

(declare-fun b!283277 () Bool)

(declare-fun e!179749 () Bool)

(assert (=> b!283277 (= e!179749 e!179748)))

(declare-fun lt!140054 () (_ BitVec 64))

(assert (=> b!283277 (= lt!140054 (select (arr!6706 lt!139916) startIndex!26))))

(declare-fun lt!140053 () Unit!9013)

(assert (=> b!283277 (= lt!140053 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!139916 lt!140054 startIndex!26))))

(assert (=> b!283277 (arrayContainsKey!0 lt!139916 lt!140054 #b00000000000000000000000000000000)))

(declare-fun lt!140052 () Unit!9013)

(assert (=> b!283277 (= lt!140052 lt!140053)))

