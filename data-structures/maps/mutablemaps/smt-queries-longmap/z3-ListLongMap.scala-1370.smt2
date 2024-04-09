; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26928 () Bool)

(assert start!26928)

(declare-fun b!278967 () Bool)

(declare-fun res!142346 () Bool)

(declare-fun e!177877 () Bool)

(assert (=> b!278967 (=> (not res!142346) (not e!177877))))

(declare-datatypes ((array!13882 0))(
  ( (array!13883 (arr!6587 (Array (_ BitVec 32) (_ BitVec 64))) (size!6939 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13882)

(assert (=> b!278967 (= res!142346 (and (bvslt (size!6939 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6939 a!3325))))))

(declare-fun b!278968 () Bool)

(declare-fun res!142345 () Bool)

(declare-fun e!177876 () Bool)

(assert (=> b!278968 (=> (not res!142345) (not e!177876))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278968 (= res!142345 (validKeyInArray!0 k0!2581))))

(declare-fun b!278969 () Bool)

(declare-fun res!142344 () Bool)

(assert (=> b!278969 (=> (not res!142344) (not e!177876))))

(declare-datatypes ((List!4416 0))(
  ( (Nil!4413) (Cons!4412 (h!5082 (_ BitVec 64)) (t!9506 List!4416)) )
))
(declare-fun arrayNoDuplicates!0 (array!13882 (_ BitVec 32) List!4416) Bool)

(assert (=> b!278969 (= res!142344 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4413))))

(declare-fun b!278970 () Bool)

(declare-fun res!142352 () Bool)

(assert (=> b!278970 (=> (not res!142352) (not e!177876))))

(declare-fun arrayContainsKey!0 (array!13882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278970 (= res!142352 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278971 () Bool)

(assert (=> b!278971 (= e!177876 e!177877)))

(declare-fun res!142347 () Bool)

(assert (=> b!278971 (=> (not res!142347) (not e!177877))))

(declare-datatypes ((SeekEntryResult!1756 0))(
  ( (MissingZero!1756 (index!9194 (_ BitVec 32))) (Found!1756 (index!9195 (_ BitVec 32))) (Intermediate!1756 (undefined!2568 Bool) (index!9196 (_ BitVec 32)) (x!27410 (_ BitVec 32))) (Undefined!1756) (MissingVacant!1756 (index!9197 (_ BitVec 32))) )
))
(declare-fun lt!138545 () SeekEntryResult!1756)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!278971 (= res!142347 (or (= lt!138545 (MissingZero!1756 i!1267)) (= lt!138545 (MissingVacant!1756 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13882 (_ BitVec 32)) SeekEntryResult!1756)

(assert (=> b!278971 (= lt!138545 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!278972 () Bool)

(declare-fun noDuplicate!150 (List!4416) Bool)

(assert (=> b!278972 (= e!177877 (not (noDuplicate!150 Nil!4413)))))

(declare-fun b!278973 () Bool)

(declare-fun res!142350 () Bool)

(assert (=> b!278973 (=> (not res!142350) (not e!177877))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278973 (= res!142350 (not (= startIndex!26 i!1267)))))

(declare-fun b!278974 () Bool)

(declare-fun res!142351 () Bool)

(assert (=> b!278974 (=> (not res!142351) (not e!177877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13882 (_ BitVec 32)) Bool)

(assert (=> b!278974 (= res!142351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278975 () Bool)

(declare-fun res!142348 () Bool)

(assert (=> b!278975 (=> (not res!142348) (not e!177876))))

(assert (=> b!278975 (= res!142348 (and (= (size!6939 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6939 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6939 a!3325))))))

(declare-fun b!278976 () Bool)

(declare-fun res!142353 () Bool)

(assert (=> b!278976 (=> (not res!142353) (not e!177877))))

(assert (=> b!278976 (= res!142353 (validKeyInArray!0 (select (arr!6587 a!3325) startIndex!26)))))

(declare-fun res!142349 () Bool)

(assert (=> start!26928 (=> (not res!142349) (not e!177876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26928 (= res!142349 (validMask!0 mask!3868))))

(assert (=> start!26928 e!177876))

(declare-fun array_inv!4541 (array!13882) Bool)

(assert (=> start!26928 (array_inv!4541 a!3325)))

(assert (=> start!26928 true))

(assert (= (and start!26928 res!142349) b!278975))

(assert (= (and b!278975 res!142348) b!278968))

(assert (= (and b!278968 res!142345) b!278969))

(assert (= (and b!278969 res!142344) b!278970))

(assert (= (and b!278970 res!142352) b!278971))

(assert (= (and b!278971 res!142347) b!278974))

(assert (= (and b!278974 res!142351) b!278973))

(assert (= (and b!278973 res!142350) b!278976))

(assert (= (and b!278976 res!142353) b!278967))

(assert (= (and b!278967 res!142346) b!278972))

(declare-fun m!293901 () Bool)

(assert (=> b!278976 m!293901))

(assert (=> b!278976 m!293901))

(declare-fun m!293903 () Bool)

(assert (=> b!278976 m!293903))

(declare-fun m!293905 () Bool)

(assert (=> b!278968 m!293905))

(declare-fun m!293907 () Bool)

(assert (=> b!278971 m!293907))

(declare-fun m!293909 () Bool)

(assert (=> start!26928 m!293909))

(declare-fun m!293911 () Bool)

(assert (=> start!26928 m!293911))

(declare-fun m!293913 () Bool)

(assert (=> b!278972 m!293913))

(declare-fun m!293915 () Bool)

(assert (=> b!278974 m!293915))

(declare-fun m!293917 () Bool)

(assert (=> b!278970 m!293917))

(declare-fun m!293919 () Bool)

(assert (=> b!278969 m!293919))

(check-sat (not b!278968) (not b!278974) (not b!278976) (not b!278971) (not b!278972) (not start!26928) (not b!278969) (not b!278970))
(check-sat)
(get-model)

(declare-fun d!64897 () Bool)

(assert (=> d!64897 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26928 d!64897))

(declare-fun d!64901 () Bool)

(assert (=> d!64901 (= (array_inv!4541 a!3325) (bvsge (size!6939 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26928 d!64901))

(declare-fun d!64903 () Bool)

(assert (=> d!64903 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278968 d!64903))

(declare-fun b!279021 () Bool)

(declare-fun e!177899 () Bool)

(declare-fun e!177901 () Bool)

(assert (=> b!279021 (= e!177899 e!177901)))

(declare-fun c!45866 () Bool)

(assert (=> b!279021 (= c!45866 (validKeyInArray!0 (select (arr!6587 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64905 () Bool)

(declare-fun res!142395 () Bool)

(assert (=> d!64905 (=> res!142395 e!177899)))

(assert (=> d!64905 (= res!142395 (bvsge #b00000000000000000000000000000000 (size!6939 a!3325)))))

(assert (=> d!64905 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!177899)))

(declare-fun b!279022 () Bool)

(declare-fun call!25406 () Bool)

(assert (=> b!279022 (= e!177901 call!25406)))

(declare-fun b!279023 () Bool)

(declare-fun e!177900 () Bool)

(assert (=> b!279023 (= e!177901 e!177900)))

(declare-fun lt!138555 () (_ BitVec 64))

(assert (=> b!279023 (= lt!138555 (select (arr!6587 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8805 0))(
  ( (Unit!8806) )
))
(declare-fun lt!138557 () Unit!8805)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13882 (_ BitVec 64) (_ BitVec 32)) Unit!8805)

(assert (=> b!279023 (= lt!138557 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138555 #b00000000000000000000000000000000))))

(assert (=> b!279023 (arrayContainsKey!0 a!3325 lt!138555 #b00000000000000000000000000000000)))

(declare-fun lt!138556 () Unit!8805)

(assert (=> b!279023 (= lt!138556 lt!138557)))

(declare-fun res!142394 () Bool)

(assert (=> b!279023 (= res!142394 (= (seekEntryOrOpen!0 (select (arr!6587 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1756 #b00000000000000000000000000000000)))))

(assert (=> b!279023 (=> (not res!142394) (not e!177900))))

(declare-fun bm!25403 () Bool)

(assert (=> bm!25403 (= call!25406 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!279024 () Bool)

(assert (=> b!279024 (= e!177900 call!25406)))

(assert (= (and d!64905 (not res!142395)) b!279021))

(assert (= (and b!279021 c!45866) b!279023))

(assert (= (and b!279021 (not c!45866)) b!279022))

(assert (= (and b!279023 res!142394) b!279024))

(assert (= (or b!279024 b!279022) bm!25403))

(declare-fun m!293945 () Bool)

(assert (=> b!279021 m!293945))

(assert (=> b!279021 m!293945))

(declare-fun m!293947 () Bool)

(assert (=> b!279021 m!293947))

(assert (=> b!279023 m!293945))

(declare-fun m!293949 () Bool)

(assert (=> b!279023 m!293949))

(declare-fun m!293951 () Bool)

(assert (=> b!279023 m!293951))

(assert (=> b!279023 m!293945))

(declare-fun m!293953 () Bool)

(assert (=> b!279023 m!293953))

(declare-fun m!293955 () Bool)

(assert (=> bm!25403 m!293955))

(assert (=> b!278974 d!64905))

(declare-fun b!279035 () Bool)

(declare-fun e!177911 () Bool)

(declare-fun call!25409 () Bool)

(assert (=> b!279035 (= e!177911 call!25409)))

(declare-fun bm!25406 () Bool)

(declare-fun c!45869 () Bool)

(assert (=> bm!25406 (= call!25409 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45869 (Cons!4412 (select (arr!6587 a!3325) #b00000000000000000000000000000000) Nil!4413) Nil!4413)))))

(declare-fun b!279036 () Bool)

(declare-fun e!177912 () Bool)

(assert (=> b!279036 (= e!177912 e!177911)))

(assert (=> b!279036 (= c!45869 (validKeyInArray!0 (select (arr!6587 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279037 () Bool)

(assert (=> b!279037 (= e!177911 call!25409)))

(declare-fun d!64911 () Bool)

(declare-fun res!142403 () Bool)

(declare-fun e!177910 () Bool)

(assert (=> d!64911 (=> res!142403 e!177910)))

(assert (=> d!64911 (= res!142403 (bvsge #b00000000000000000000000000000000 (size!6939 a!3325)))))

(assert (=> d!64911 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4413) e!177910)))

(declare-fun b!279038 () Bool)

(declare-fun e!177913 () Bool)

(declare-fun contains!1966 (List!4416 (_ BitVec 64)) Bool)

(assert (=> b!279038 (= e!177913 (contains!1966 Nil!4413 (select (arr!6587 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279039 () Bool)

(assert (=> b!279039 (= e!177910 e!177912)))

(declare-fun res!142402 () Bool)

(assert (=> b!279039 (=> (not res!142402) (not e!177912))))

(assert (=> b!279039 (= res!142402 (not e!177913))))

(declare-fun res!142404 () Bool)

(assert (=> b!279039 (=> (not res!142404) (not e!177913))))

(assert (=> b!279039 (= res!142404 (validKeyInArray!0 (select (arr!6587 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64911 (not res!142403)) b!279039))

(assert (= (and b!279039 res!142404) b!279038))

(assert (= (and b!279039 res!142402) b!279036))

(assert (= (and b!279036 c!45869) b!279035))

(assert (= (and b!279036 (not c!45869)) b!279037))

(assert (= (or b!279035 b!279037) bm!25406))

(assert (=> bm!25406 m!293945))

(declare-fun m!293957 () Bool)

(assert (=> bm!25406 m!293957))

(assert (=> b!279036 m!293945))

(assert (=> b!279036 m!293945))

(assert (=> b!279036 m!293947))

(assert (=> b!279038 m!293945))

(assert (=> b!279038 m!293945))

(declare-fun m!293959 () Bool)

(assert (=> b!279038 m!293959))

(assert (=> b!279039 m!293945))

(assert (=> b!279039 m!293945))

(assert (=> b!279039 m!293947))

(assert (=> b!278969 d!64911))

(declare-fun d!64923 () Bool)

(declare-fun res!142419 () Bool)

(declare-fun e!177930 () Bool)

(assert (=> d!64923 (=> res!142419 e!177930)))

(assert (=> d!64923 (= res!142419 (= (select (arr!6587 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!64923 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!177930)))

(declare-fun b!279060 () Bool)

(declare-fun e!177931 () Bool)

(assert (=> b!279060 (= e!177930 e!177931)))

(declare-fun res!142420 () Bool)

(assert (=> b!279060 (=> (not res!142420) (not e!177931))))

(assert (=> b!279060 (= res!142420 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6939 a!3325)))))

(declare-fun b!279062 () Bool)

(assert (=> b!279062 (= e!177931 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64923 (not res!142419)) b!279060))

(assert (= (and b!279060 res!142420) b!279062))

(assert (=> d!64923 m!293945))

(declare-fun m!293961 () Bool)

(assert (=> b!279062 m!293961))

(assert (=> b!278970 d!64923))

(declare-fun d!64925 () Bool)

(assert (=> d!64925 (= (validKeyInArray!0 (select (arr!6587 a!3325) startIndex!26)) (and (not (= (select (arr!6587 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6587 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278976 d!64925))

(declare-fun b!279103 () Bool)

(declare-fun c!45890 () Bool)

(declare-fun lt!138581 () (_ BitVec 64))

(assert (=> b!279103 (= c!45890 (= lt!138581 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!177959 () SeekEntryResult!1756)

(declare-fun e!177960 () SeekEntryResult!1756)

(assert (=> b!279103 (= e!177959 e!177960)))

(declare-fun lt!138580 () SeekEntryResult!1756)

(declare-fun b!279104 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13882 (_ BitVec 32)) SeekEntryResult!1756)

(assert (=> b!279104 (= e!177960 (seekKeyOrZeroReturnVacant!0 (x!27410 lt!138580) (index!9196 lt!138580) (index!9196 lt!138580) k0!2581 a!3325 mask!3868))))

(declare-fun b!279105 () Bool)

(assert (=> b!279105 (= e!177960 (MissingZero!1756 (index!9196 lt!138580)))))

(declare-fun b!279106 () Bool)

(declare-fun e!177961 () SeekEntryResult!1756)

(assert (=> b!279106 (= e!177961 e!177959)))

(assert (=> b!279106 (= lt!138581 (select (arr!6587 a!3325) (index!9196 lt!138580)))))

(declare-fun c!45889 () Bool)

(assert (=> b!279106 (= c!45889 (= lt!138581 k0!2581))))

(declare-fun b!279107 () Bool)

(assert (=> b!279107 (= e!177959 (Found!1756 (index!9196 lt!138580)))))

(declare-fun b!279108 () Bool)

(assert (=> b!279108 (= e!177961 Undefined!1756)))

(declare-fun d!64927 () Bool)

(declare-fun lt!138579 () SeekEntryResult!1756)

(get-info :version)

(assert (=> d!64927 (and (or ((_ is Undefined!1756) lt!138579) (not ((_ is Found!1756) lt!138579)) (and (bvsge (index!9195 lt!138579) #b00000000000000000000000000000000) (bvslt (index!9195 lt!138579) (size!6939 a!3325)))) (or ((_ is Undefined!1756) lt!138579) ((_ is Found!1756) lt!138579) (not ((_ is MissingZero!1756) lt!138579)) (and (bvsge (index!9194 lt!138579) #b00000000000000000000000000000000) (bvslt (index!9194 lt!138579) (size!6939 a!3325)))) (or ((_ is Undefined!1756) lt!138579) ((_ is Found!1756) lt!138579) ((_ is MissingZero!1756) lt!138579) (not ((_ is MissingVacant!1756) lt!138579)) (and (bvsge (index!9197 lt!138579) #b00000000000000000000000000000000) (bvslt (index!9197 lt!138579) (size!6939 a!3325)))) (or ((_ is Undefined!1756) lt!138579) (ite ((_ is Found!1756) lt!138579) (= (select (arr!6587 a!3325) (index!9195 lt!138579)) k0!2581) (ite ((_ is MissingZero!1756) lt!138579) (= (select (arr!6587 a!3325) (index!9194 lt!138579)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1756) lt!138579) (= (select (arr!6587 a!3325) (index!9197 lt!138579)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64927 (= lt!138579 e!177961)))

(declare-fun c!45888 () Bool)

(assert (=> d!64927 (= c!45888 (and ((_ is Intermediate!1756) lt!138580) (undefined!2568 lt!138580)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13882 (_ BitVec 32)) SeekEntryResult!1756)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64927 (= lt!138580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!64927 (validMask!0 mask!3868)))

(assert (=> d!64927 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!138579)))

(assert (= (and d!64927 c!45888) b!279108))

(assert (= (and d!64927 (not c!45888)) b!279106))

(assert (= (and b!279106 c!45889) b!279107))

(assert (= (and b!279106 (not c!45889)) b!279103))

(assert (= (and b!279103 c!45890) b!279105))

(assert (= (and b!279103 (not c!45890)) b!279104))

(declare-fun m!293985 () Bool)

(assert (=> b!279104 m!293985))

(declare-fun m!293987 () Bool)

(assert (=> b!279106 m!293987))

(assert (=> d!64927 m!293909))

(declare-fun m!293989 () Bool)

(assert (=> d!64927 m!293989))

(declare-fun m!293991 () Bool)

(assert (=> d!64927 m!293991))

(declare-fun m!293993 () Bool)

(assert (=> d!64927 m!293993))

(declare-fun m!293995 () Bool)

(assert (=> d!64927 m!293995))

(assert (=> d!64927 m!293991))

(declare-fun m!293997 () Bool)

(assert (=> d!64927 m!293997))

(assert (=> b!278971 d!64927))

(declare-fun d!64939 () Bool)

(declare-fun res!142436 () Bool)

(declare-fun e!177975 () Bool)

(assert (=> d!64939 (=> res!142436 e!177975)))

(assert (=> d!64939 (= res!142436 ((_ is Nil!4413) Nil!4413))))

(assert (=> d!64939 (= (noDuplicate!150 Nil!4413) e!177975)))

(declare-fun b!279131 () Bool)

(declare-fun e!177976 () Bool)

(assert (=> b!279131 (= e!177975 e!177976)))

(declare-fun res!142437 () Bool)

(assert (=> b!279131 (=> (not res!142437) (not e!177976))))

(assert (=> b!279131 (= res!142437 (not (contains!1966 (t!9506 Nil!4413) (h!5082 Nil!4413))))))

(declare-fun b!279132 () Bool)

(assert (=> b!279132 (= e!177976 (noDuplicate!150 (t!9506 Nil!4413)))))

(assert (= (and d!64939 (not res!142436)) b!279131))

(assert (= (and b!279131 res!142437) b!279132))

(declare-fun m!294013 () Bool)

(assert (=> b!279131 m!294013))

(declare-fun m!294015 () Bool)

(assert (=> b!279132 m!294015))

(assert (=> b!278972 d!64939))

(check-sat (not d!64927) (not bm!25406) (not b!279021) (not b!279131) (not b!279039) (not b!279038) (not b!279023) (not bm!25403) (not b!279036) (not b!279062) (not b!279104) (not b!279132))
(check-sat)
