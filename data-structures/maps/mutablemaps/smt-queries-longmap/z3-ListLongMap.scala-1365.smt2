; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26760 () Bool)

(assert start!26760)

(declare-fun b!277884 () Bool)

(declare-fun res!141722 () Bool)

(declare-fun e!177252 () Bool)

(assert (=> b!277884 (=> (not res!141722) (not e!177252))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((array!13846 0))(
  ( (array!13847 (arr!6572 (Array (_ BitVec 32) (_ BitVec 64))) (size!6924 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13846)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277884 (= res!141722 (and (= (size!6924 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6924 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6924 a!3325))))))

(declare-fun res!141728 () Bool)

(assert (=> start!26760 (=> (not res!141728) (not e!177252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26760 (= res!141728 (validMask!0 mask!3868))))

(assert (=> start!26760 e!177252))

(declare-fun array_inv!4526 (array!13846) Bool)

(assert (=> start!26760 (array_inv!4526 a!3325)))

(assert (=> start!26760 true))

(declare-fun b!277885 () Bool)

(declare-fun e!177253 () Bool)

(declare-fun e!177251 () Bool)

(assert (=> b!277885 (= e!177253 e!177251)))

(declare-fun res!141725 () Bool)

(assert (=> b!277885 (=> (not res!141725) (not e!177251))))

(assert (=> b!277885 (= res!141725 (= startIndex!26 i!1267))))

(declare-fun lt!138151 () array!13846)

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!277885 (= lt!138151 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)))))

(declare-fun b!277886 () Bool)

(assert (=> b!277886 (= e!177252 e!177253)))

(declare-fun res!141724 () Bool)

(assert (=> b!277886 (=> (not res!141724) (not e!177253))))

(declare-datatypes ((SeekEntryResult!1741 0))(
  ( (MissingZero!1741 (index!9134 (_ BitVec 32))) (Found!1741 (index!9135 (_ BitVec 32))) (Intermediate!1741 (undefined!2553 Bool) (index!9136 (_ BitVec 32)) (x!27346 (_ BitVec 32))) (Undefined!1741) (MissingVacant!1741 (index!9137 (_ BitVec 32))) )
))
(declare-fun lt!138155 () SeekEntryResult!1741)

(assert (=> b!277886 (= res!141724 (or (= lt!138155 (MissingZero!1741 i!1267)) (= lt!138155 (MissingVacant!1741 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13846 (_ BitVec 32)) SeekEntryResult!1741)

(assert (=> b!277886 (= lt!138155 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277887 () Bool)

(declare-datatypes ((Unit!8793 0))(
  ( (Unit!8794) )
))
(declare-fun e!177249 () Unit!8793)

(declare-fun lt!138153 () Unit!8793)

(assert (=> b!277887 (= e!177249 lt!138153)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13846 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8793)

(assert (=> b!277887 (= lt!138153 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13846 (_ BitVec 32)) Bool)

(assert (=> b!277887 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138151 mask!3868)))

(declare-fun b!277888 () Bool)

(declare-fun res!141723 () Bool)

(assert (=> b!277888 (=> (not res!141723) (not e!177252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277888 (= res!141723 (validKeyInArray!0 k0!2581))))

(declare-fun b!277889 () Bool)

(assert (=> b!277889 (= e!177251 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!138151 mask!3868)))))

(assert (=> b!277889 (= (seekEntryOrOpen!0 k0!2581 lt!138151 mask!3868) (Found!1741 i!1267))))

(declare-fun lt!138152 () Unit!8793)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13846 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8793)

(assert (=> b!277889 (= lt!138152 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!138154 () Unit!8793)

(assert (=> b!277889 (= lt!138154 e!177249)))

(declare-fun c!45632 () Bool)

(assert (=> b!277889 (= c!45632 (bvslt startIndex!26 (bvsub (size!6924 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277890 () Bool)

(declare-fun res!141729 () Bool)

(assert (=> b!277890 (=> (not res!141729) (not e!177252))))

(declare-fun arrayContainsKey!0 (array!13846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277890 (= res!141729 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277891 () Bool)

(declare-fun Unit!8795 () Unit!8793)

(assert (=> b!277891 (= e!177249 Unit!8795)))

(declare-fun b!277892 () Bool)

(declare-fun res!141727 () Bool)

(assert (=> b!277892 (=> (not res!141727) (not e!177253))))

(assert (=> b!277892 (= res!141727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277893 () Bool)

(declare-fun res!141726 () Bool)

(assert (=> b!277893 (=> (not res!141726) (not e!177252))))

(declare-datatypes ((List!4401 0))(
  ( (Nil!4398) (Cons!4397 (h!5064 (_ BitVec 64)) (t!9491 List!4401)) )
))
(declare-fun arrayNoDuplicates!0 (array!13846 (_ BitVec 32) List!4401) Bool)

(assert (=> b!277893 (= res!141726 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4398))))

(assert (= (and start!26760 res!141728) b!277884))

(assert (= (and b!277884 res!141722) b!277888))

(assert (= (and b!277888 res!141723) b!277893))

(assert (= (and b!277893 res!141726) b!277890))

(assert (= (and b!277890 res!141729) b!277886))

(assert (= (and b!277886 res!141724) b!277892))

(assert (= (and b!277892 res!141727) b!277885))

(assert (= (and b!277885 res!141725) b!277889))

(assert (= (and b!277889 c!45632) b!277887))

(assert (= (and b!277889 (not c!45632)) b!277891))

(declare-fun m!292839 () Bool)

(assert (=> b!277887 m!292839))

(declare-fun m!292841 () Bool)

(assert (=> b!277887 m!292841))

(declare-fun m!292843 () Bool)

(assert (=> b!277892 m!292843))

(declare-fun m!292845 () Bool)

(assert (=> b!277885 m!292845))

(declare-fun m!292847 () Bool)

(assert (=> b!277890 m!292847))

(declare-fun m!292849 () Bool)

(assert (=> start!26760 m!292849))

(declare-fun m!292851 () Bool)

(assert (=> start!26760 m!292851))

(declare-fun m!292853 () Bool)

(assert (=> b!277893 m!292853))

(declare-fun m!292855 () Bool)

(assert (=> b!277889 m!292855))

(declare-fun m!292857 () Bool)

(assert (=> b!277889 m!292857))

(declare-fun m!292859 () Bool)

(assert (=> b!277889 m!292859))

(declare-fun m!292861 () Bool)

(assert (=> b!277888 m!292861))

(declare-fun m!292863 () Bool)

(assert (=> b!277886 m!292863))

(check-sat (not b!277892) (not b!277893) (not b!277886) (not b!277889) (not b!277887) (not b!277890) (not b!277888) (not start!26760))
(check-sat)
(get-model)

(declare-fun d!64605 () Bool)

(declare-fun res!141758 () Bool)

(declare-fun e!177273 () Bool)

(assert (=> d!64605 (=> res!141758 e!177273)))

(assert (=> d!64605 (= res!141758 (= (select (arr!6572 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!64605 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!177273)))

(declare-fun b!277928 () Bool)

(declare-fun e!177274 () Bool)

(assert (=> b!277928 (= e!177273 e!177274)))

(declare-fun res!141759 () Bool)

(assert (=> b!277928 (=> (not res!141759) (not e!177274))))

(assert (=> b!277928 (= res!141759 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6924 a!3325)))))

(declare-fun b!277929 () Bool)

(assert (=> b!277929 (= e!177274 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64605 (not res!141758)) b!277928))

(assert (= (and b!277928 res!141759) b!277929))

(declare-fun m!292891 () Bool)

(assert (=> d!64605 m!292891))

(declare-fun m!292893 () Bool)

(assert (=> b!277929 m!292893))

(assert (=> b!277890 d!64605))

(declare-fun b!277938 () Bool)

(declare-fun e!177282 () Bool)

(declare-fun e!177281 () Bool)

(assert (=> b!277938 (= e!177282 e!177281)))

(declare-fun lt!138177 () (_ BitVec 64))

(assert (=> b!277938 (= lt!138177 (select (arr!6572 lt!138151) startIndex!26))))

(declare-fun lt!138178 () Unit!8793)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13846 (_ BitVec 64) (_ BitVec 32)) Unit!8793)

(assert (=> b!277938 (= lt!138178 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138151 lt!138177 startIndex!26))))

(assert (=> b!277938 (arrayContainsKey!0 lt!138151 lt!138177 #b00000000000000000000000000000000)))

(declare-fun lt!138179 () Unit!8793)

(assert (=> b!277938 (= lt!138179 lt!138178)))

(declare-fun res!141765 () Bool)

(assert (=> b!277938 (= res!141765 (= (seekEntryOrOpen!0 (select (arr!6572 lt!138151) startIndex!26) lt!138151 mask!3868) (Found!1741 startIndex!26)))))

(assert (=> b!277938 (=> (not res!141765) (not e!177281))))

(declare-fun bm!25346 () Bool)

(declare-fun call!25349 () Bool)

(assert (=> bm!25346 (= call!25349 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!138151 mask!3868))))

(declare-fun b!277939 () Bool)

(assert (=> b!277939 (= e!177282 call!25349)))

(declare-fun b!277940 () Bool)

(declare-fun e!177283 () Bool)

(assert (=> b!277940 (= e!177283 e!177282)))

(declare-fun c!45638 () Bool)

(assert (=> b!277940 (= c!45638 (validKeyInArray!0 (select (arr!6572 lt!138151) startIndex!26)))))

(declare-fun d!64607 () Bool)

(declare-fun res!141764 () Bool)

(assert (=> d!64607 (=> res!141764 e!177283)))

(assert (=> d!64607 (= res!141764 (bvsge startIndex!26 (size!6924 lt!138151)))))

(assert (=> d!64607 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!138151 mask!3868) e!177283)))

(declare-fun b!277941 () Bool)

(assert (=> b!277941 (= e!177281 call!25349)))

(assert (= (and d!64607 (not res!141764)) b!277940))

(assert (= (and b!277940 c!45638) b!277938))

(assert (= (and b!277940 (not c!45638)) b!277939))

(assert (= (and b!277938 res!141765) b!277941))

(assert (= (or b!277941 b!277939) bm!25346))

(declare-fun m!292895 () Bool)

(assert (=> b!277938 m!292895))

(declare-fun m!292897 () Bool)

(assert (=> b!277938 m!292897))

(declare-fun m!292899 () Bool)

(assert (=> b!277938 m!292899))

(assert (=> b!277938 m!292895))

(declare-fun m!292901 () Bool)

(assert (=> b!277938 m!292901))

(declare-fun m!292903 () Bool)

(assert (=> bm!25346 m!292903))

(assert (=> b!277940 m!292895))

(assert (=> b!277940 m!292895))

(declare-fun m!292905 () Bool)

(assert (=> b!277940 m!292905))

(assert (=> b!277889 d!64607))

(declare-fun b!277965 () Bool)

(declare-fun e!177300 () SeekEntryResult!1741)

(declare-fun e!177299 () SeekEntryResult!1741)

(assert (=> b!277965 (= e!177300 e!177299)))

(declare-fun lt!138197 () (_ BitVec 64))

(declare-fun lt!138196 () SeekEntryResult!1741)

(assert (=> b!277965 (= lt!138197 (select (arr!6572 lt!138151) (index!9136 lt!138196)))))

(declare-fun c!45649 () Bool)

(assert (=> b!277965 (= c!45649 (= lt!138197 k0!2581))))

(declare-fun d!64609 () Bool)

(declare-fun lt!138195 () SeekEntryResult!1741)

(get-info :version)

(assert (=> d!64609 (and (or ((_ is Undefined!1741) lt!138195) (not ((_ is Found!1741) lt!138195)) (and (bvsge (index!9135 lt!138195) #b00000000000000000000000000000000) (bvslt (index!9135 lt!138195) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138195) ((_ is Found!1741) lt!138195) (not ((_ is MissingZero!1741) lt!138195)) (and (bvsge (index!9134 lt!138195) #b00000000000000000000000000000000) (bvslt (index!9134 lt!138195) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138195) ((_ is Found!1741) lt!138195) ((_ is MissingZero!1741) lt!138195) (not ((_ is MissingVacant!1741) lt!138195)) (and (bvsge (index!9137 lt!138195) #b00000000000000000000000000000000) (bvslt (index!9137 lt!138195) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138195) (ite ((_ is Found!1741) lt!138195) (= (select (arr!6572 lt!138151) (index!9135 lt!138195)) k0!2581) (ite ((_ is MissingZero!1741) lt!138195) (= (select (arr!6572 lt!138151) (index!9134 lt!138195)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1741) lt!138195) (= (select (arr!6572 lt!138151) (index!9137 lt!138195)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64609 (= lt!138195 e!177300)))

(declare-fun c!45648 () Bool)

(assert (=> d!64609 (= c!45648 (and ((_ is Intermediate!1741) lt!138196) (undefined!2553 lt!138196)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13846 (_ BitVec 32)) SeekEntryResult!1741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64609 (= lt!138196 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 lt!138151 mask!3868))))

(assert (=> d!64609 (validMask!0 mask!3868)))

(assert (=> d!64609 (= (seekEntryOrOpen!0 k0!2581 lt!138151 mask!3868) lt!138195)))

(declare-fun b!277966 () Bool)

(assert (=> b!277966 (= e!177300 Undefined!1741)))

(declare-fun e!177301 () SeekEntryResult!1741)

(declare-fun b!277967 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13846 (_ BitVec 32)) SeekEntryResult!1741)

(assert (=> b!277967 (= e!177301 (seekKeyOrZeroReturnVacant!0 (x!27346 lt!138196) (index!9136 lt!138196) (index!9136 lt!138196) k0!2581 lt!138151 mask!3868))))

(declare-fun b!277968 () Bool)

(declare-fun c!45647 () Bool)

(assert (=> b!277968 (= c!45647 (= lt!138197 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!277968 (= e!177299 e!177301)))

(declare-fun b!277969 () Bool)

(assert (=> b!277969 (= e!177299 (Found!1741 (index!9136 lt!138196)))))

(declare-fun b!277970 () Bool)

(assert (=> b!277970 (= e!177301 (MissingZero!1741 (index!9136 lt!138196)))))

(assert (= (and d!64609 c!45648) b!277966))

(assert (= (and d!64609 (not c!45648)) b!277965))

(assert (= (and b!277965 c!45649) b!277969))

(assert (= (and b!277965 (not c!45649)) b!277968))

(assert (= (and b!277968 c!45647) b!277970))

(assert (= (and b!277968 (not c!45647)) b!277967))

(declare-fun m!292911 () Bool)

(assert (=> b!277965 m!292911))

(assert (=> d!64609 m!292849))

(declare-fun m!292913 () Bool)

(assert (=> d!64609 m!292913))

(declare-fun m!292915 () Bool)

(assert (=> d!64609 m!292915))

(declare-fun m!292917 () Bool)

(assert (=> d!64609 m!292917))

(assert (=> d!64609 m!292915))

(declare-fun m!292919 () Bool)

(assert (=> d!64609 m!292919))

(declare-fun m!292921 () Bool)

(assert (=> d!64609 m!292921))

(declare-fun m!292923 () Bool)

(assert (=> b!277967 m!292923))

(assert (=> b!277889 d!64609))

(declare-fun d!64617 () Bool)

(declare-fun e!177316 () Bool)

(assert (=> d!64617 e!177316))

(declare-fun res!141785 () Bool)

(assert (=> d!64617 (=> (not res!141785) (not e!177316))))

(assert (=> d!64617 (= res!141785 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6924 a!3325))))))

(declare-fun lt!138206 () Unit!8793)

(declare-fun choose!8 (array!13846 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8793)

(assert (=> d!64617 (= lt!138206 (choose!8 a!3325 i!1267 k0!2581 mask!3868))))

(assert (=> d!64617 (validMask!0 mask!3868)))

(assert (=> d!64617 (= (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868) lt!138206)))

(declare-fun b!277987 () Bool)

(assert (=> b!277987 (= e!177316 (= (seekEntryOrOpen!0 k0!2581 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868) (Found!1741 i!1267)))))

(assert (= (and d!64617 res!141785) b!277987))

(declare-fun m!292953 () Bool)

(assert (=> d!64617 m!292953))

(assert (=> d!64617 m!292849))

(assert (=> b!277987 m!292845))

(declare-fun m!292955 () Bool)

(assert (=> b!277987 m!292955))

(assert (=> b!277889 d!64617))

(declare-fun d!64631 () Bool)

(assert (=> d!64631 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!277888 d!64631))

(declare-fun b!278010 () Bool)

(declare-fun e!177337 () Bool)

(declare-fun contains!1960 (List!4401 (_ BitVec 64)) Bool)

(assert (=> b!278010 (= e!177337 (contains!1960 Nil!4398 (select (arr!6572 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278011 () Bool)

(declare-fun e!177334 () Bool)

(declare-fun call!25359 () Bool)

(assert (=> b!278011 (= e!177334 call!25359)))

(declare-fun d!64633 () Bool)

(declare-fun res!141800 () Bool)

(declare-fun e!177335 () Bool)

(assert (=> d!64633 (=> res!141800 e!177335)))

(assert (=> d!64633 (= res!141800 (bvsge #b00000000000000000000000000000000 (size!6924 a!3325)))))

(assert (=> d!64633 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4398) e!177335)))

(declare-fun b!278012 () Bool)

(assert (=> b!278012 (= e!177334 call!25359)))

(declare-fun b!278013 () Bool)

(declare-fun e!177336 () Bool)

(assert (=> b!278013 (= e!177335 e!177336)))

(declare-fun res!141799 () Bool)

(assert (=> b!278013 (=> (not res!141799) (not e!177336))))

(assert (=> b!278013 (= res!141799 (not e!177337))))

(declare-fun res!141798 () Bool)

(assert (=> b!278013 (=> (not res!141798) (not e!177337))))

(assert (=> b!278013 (= res!141798 (validKeyInArray!0 (select (arr!6572 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278014 () Bool)

(assert (=> b!278014 (= e!177336 e!177334)))

(declare-fun c!45657 () Bool)

(assert (=> b!278014 (= c!45657 (validKeyInArray!0 (select (arr!6572 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25356 () Bool)

(assert (=> bm!25356 (= call!25359 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45657 (Cons!4397 (select (arr!6572 a!3325) #b00000000000000000000000000000000) Nil!4398) Nil!4398)))))

(assert (= (and d!64633 (not res!141800)) b!278013))

(assert (= (and b!278013 res!141798) b!278010))

(assert (= (and b!278013 res!141799) b!278014))

(assert (= (and b!278014 c!45657) b!278012))

(assert (= (and b!278014 (not c!45657)) b!278011))

(assert (= (or b!278012 b!278011) bm!25356))

(assert (=> b!278010 m!292891))

(assert (=> b!278010 m!292891))

(declare-fun m!292969 () Bool)

(assert (=> b!278010 m!292969))

(assert (=> b!278013 m!292891))

(assert (=> b!278013 m!292891))

(declare-fun m!292971 () Bool)

(assert (=> b!278013 m!292971))

(assert (=> b!278014 m!292891))

(assert (=> b!278014 m!292891))

(assert (=> b!278014 m!292971))

(assert (=> bm!25356 m!292891))

(declare-fun m!292973 () Bool)

(assert (=> bm!25356 m!292973))

(assert (=> b!277893 d!64633))

(declare-fun b!278015 () Bool)

(declare-fun e!177339 () Bool)

(declare-fun e!177338 () Bool)

(assert (=> b!278015 (= e!177339 e!177338)))

(declare-fun lt!138216 () (_ BitVec 64))

(assert (=> b!278015 (= lt!138216 (select (arr!6572 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!138217 () Unit!8793)

(assert (=> b!278015 (= lt!138217 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138216 #b00000000000000000000000000000000))))

(assert (=> b!278015 (arrayContainsKey!0 a!3325 lt!138216 #b00000000000000000000000000000000)))

(declare-fun lt!138218 () Unit!8793)

(assert (=> b!278015 (= lt!138218 lt!138217)))

(declare-fun res!141802 () Bool)

(assert (=> b!278015 (= res!141802 (= (seekEntryOrOpen!0 (select (arr!6572 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1741 #b00000000000000000000000000000000)))))

(assert (=> b!278015 (=> (not res!141802) (not e!177338))))

(declare-fun bm!25357 () Bool)

(declare-fun call!25360 () Bool)

(assert (=> bm!25357 (= call!25360 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!278016 () Bool)

(assert (=> b!278016 (= e!177339 call!25360)))

(declare-fun b!278017 () Bool)

(declare-fun e!177340 () Bool)

(assert (=> b!278017 (= e!177340 e!177339)))

(declare-fun c!45658 () Bool)

(assert (=> b!278017 (= c!45658 (validKeyInArray!0 (select (arr!6572 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64637 () Bool)

(declare-fun res!141801 () Bool)

(assert (=> d!64637 (=> res!141801 e!177340)))

(assert (=> d!64637 (= res!141801 (bvsge #b00000000000000000000000000000000 (size!6924 a!3325)))))

(assert (=> d!64637 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!177340)))

(declare-fun b!278018 () Bool)

(assert (=> b!278018 (= e!177338 call!25360)))

(assert (= (and d!64637 (not res!141801)) b!278017))

(assert (= (and b!278017 c!45658) b!278015))

(assert (= (and b!278017 (not c!45658)) b!278016))

(assert (= (and b!278015 res!141802) b!278018))

(assert (= (or b!278018 b!278016) bm!25357))

(assert (=> b!278015 m!292891))

(declare-fun m!292975 () Bool)

(assert (=> b!278015 m!292975))

(declare-fun m!292977 () Bool)

(assert (=> b!278015 m!292977))

(assert (=> b!278015 m!292891))

(declare-fun m!292979 () Bool)

(assert (=> b!278015 m!292979))

(declare-fun m!292981 () Bool)

(assert (=> bm!25357 m!292981))

(assert (=> b!278017 m!292891))

(assert (=> b!278017 m!292891))

(assert (=> b!278017 m!292971))

(assert (=> b!277892 d!64637))

(declare-fun d!64639 () Bool)

(declare-fun e!177349 () Bool)

(assert (=> d!64639 e!177349))

(declare-fun res!141805 () Bool)

(assert (=> d!64639 (=> (not res!141805) (not e!177349))))

(assert (=> d!64639 (= res!141805 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6924 a!3325))))))

(declare-fun lt!138227 () Unit!8793)

(declare-fun choose!98 (array!13846 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8793)

(assert (=> d!64639 (= lt!138227 (choose!98 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> d!64639 (validMask!0 mask!3868)))

(assert (=> d!64639 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) lt!138227)))

(declare-fun b!278033 () Bool)

(assert (=> b!278033 (= e!177349 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868))))

(assert (= (and d!64639 res!141805) b!278033))

(declare-fun m!292983 () Bool)

(assert (=> d!64639 m!292983))

(assert (=> d!64639 m!292849))

(assert (=> b!278033 m!292845))

(declare-fun m!292985 () Bool)

(assert (=> b!278033 m!292985))

(assert (=> b!277887 d!64639))

(declare-fun b!278034 () Bool)

(declare-fun e!177351 () Bool)

(declare-fun e!177350 () Bool)

(assert (=> b!278034 (= e!177351 e!177350)))

(declare-fun lt!138228 () (_ BitVec 64))

(assert (=> b!278034 (= lt!138228 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!138229 () Unit!8793)

(assert (=> b!278034 (= lt!138229 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138151 lt!138228 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!278034 (arrayContainsKey!0 lt!138151 lt!138228 #b00000000000000000000000000000000)))

(declare-fun lt!138230 () Unit!8793)

(assert (=> b!278034 (= lt!138230 lt!138229)))

(declare-fun res!141807 () Bool)

(assert (=> b!278034 (= res!141807 (= (seekEntryOrOpen!0 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138151 mask!3868) (Found!1741 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!278034 (=> (not res!141807) (not e!177350))))

(declare-fun bm!25358 () Bool)

(declare-fun call!25361 () Bool)

(assert (=> bm!25358 (= call!25361 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!138151 mask!3868))))

(declare-fun b!278035 () Bool)

(assert (=> b!278035 (= e!177351 call!25361)))

(declare-fun b!278036 () Bool)

(declare-fun e!177352 () Bool)

(assert (=> b!278036 (= e!177352 e!177351)))

(declare-fun c!45665 () Bool)

(assert (=> b!278036 (= c!45665 (validKeyInArray!0 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun d!64641 () Bool)

(declare-fun res!141806 () Bool)

(assert (=> d!64641 (=> res!141806 e!177352)))

(assert (=> d!64641 (= res!141806 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!6924 lt!138151)))))

(assert (=> d!64641 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138151 mask!3868) e!177352)))

(declare-fun b!278037 () Bool)

(assert (=> b!278037 (= e!177350 call!25361)))

(assert (= (and d!64641 (not res!141806)) b!278036))

(assert (= (and b!278036 c!45665) b!278034))

(assert (= (and b!278036 (not c!45665)) b!278035))

(assert (= (and b!278034 res!141807) b!278037))

(assert (= (or b!278037 b!278035) bm!25358))

(declare-fun m!292987 () Bool)

(assert (=> b!278034 m!292987))

(declare-fun m!292989 () Bool)

(assert (=> b!278034 m!292989))

(declare-fun m!292991 () Bool)

(assert (=> b!278034 m!292991))

(assert (=> b!278034 m!292987))

(declare-fun m!292993 () Bool)

(assert (=> b!278034 m!292993))

(declare-fun m!292995 () Bool)

(assert (=> bm!25358 m!292995))

(assert (=> b!278036 m!292987))

(assert (=> b!278036 m!292987))

(declare-fun m!292997 () Bool)

(assert (=> b!278036 m!292997))

(assert (=> b!277887 d!64641))

(declare-fun b!278038 () Bool)

(declare-fun e!177354 () SeekEntryResult!1741)

(declare-fun e!177353 () SeekEntryResult!1741)

(assert (=> b!278038 (= e!177354 e!177353)))

(declare-fun lt!138233 () (_ BitVec 64))

(declare-fun lt!138232 () SeekEntryResult!1741)

(assert (=> b!278038 (= lt!138233 (select (arr!6572 a!3325) (index!9136 lt!138232)))))

(declare-fun c!45668 () Bool)

(assert (=> b!278038 (= c!45668 (= lt!138233 k0!2581))))

(declare-fun d!64643 () Bool)

(declare-fun lt!138231 () SeekEntryResult!1741)

(assert (=> d!64643 (and (or ((_ is Undefined!1741) lt!138231) (not ((_ is Found!1741) lt!138231)) (and (bvsge (index!9135 lt!138231) #b00000000000000000000000000000000) (bvslt (index!9135 lt!138231) (size!6924 a!3325)))) (or ((_ is Undefined!1741) lt!138231) ((_ is Found!1741) lt!138231) (not ((_ is MissingZero!1741) lt!138231)) (and (bvsge (index!9134 lt!138231) #b00000000000000000000000000000000) (bvslt (index!9134 lt!138231) (size!6924 a!3325)))) (or ((_ is Undefined!1741) lt!138231) ((_ is Found!1741) lt!138231) ((_ is MissingZero!1741) lt!138231) (not ((_ is MissingVacant!1741) lt!138231)) (and (bvsge (index!9137 lt!138231) #b00000000000000000000000000000000) (bvslt (index!9137 lt!138231) (size!6924 a!3325)))) (or ((_ is Undefined!1741) lt!138231) (ite ((_ is Found!1741) lt!138231) (= (select (arr!6572 a!3325) (index!9135 lt!138231)) k0!2581) (ite ((_ is MissingZero!1741) lt!138231) (= (select (arr!6572 a!3325) (index!9134 lt!138231)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1741) lt!138231) (= (select (arr!6572 a!3325) (index!9137 lt!138231)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64643 (= lt!138231 e!177354)))

(declare-fun c!45667 () Bool)

(assert (=> d!64643 (= c!45667 (and ((_ is Intermediate!1741) lt!138232) (undefined!2553 lt!138232)))))

(assert (=> d!64643 (= lt!138232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!64643 (validMask!0 mask!3868)))

(assert (=> d!64643 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!138231)))

(declare-fun b!278039 () Bool)

(assert (=> b!278039 (= e!177354 Undefined!1741)))

(declare-fun e!177355 () SeekEntryResult!1741)

(declare-fun b!278040 () Bool)

(assert (=> b!278040 (= e!177355 (seekKeyOrZeroReturnVacant!0 (x!27346 lt!138232) (index!9136 lt!138232) (index!9136 lt!138232) k0!2581 a!3325 mask!3868))))

(declare-fun b!278041 () Bool)

(declare-fun c!45666 () Bool)

(assert (=> b!278041 (= c!45666 (= lt!138233 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278041 (= e!177353 e!177355)))

(declare-fun b!278042 () Bool)

(assert (=> b!278042 (= e!177353 (Found!1741 (index!9136 lt!138232)))))

(declare-fun b!278043 () Bool)

(assert (=> b!278043 (= e!177355 (MissingZero!1741 (index!9136 lt!138232)))))

(assert (= (and d!64643 c!45667) b!278039))

(assert (= (and d!64643 (not c!45667)) b!278038))

(assert (= (and b!278038 c!45668) b!278042))

(assert (= (and b!278038 (not c!45668)) b!278041))

(assert (= (and b!278041 c!45666) b!278043))

(assert (= (and b!278041 (not c!45666)) b!278040))

(declare-fun m!292999 () Bool)

(assert (=> b!278038 m!292999))

(assert (=> d!64643 m!292849))

(declare-fun m!293001 () Bool)

(assert (=> d!64643 m!293001))

(assert (=> d!64643 m!292915))

(declare-fun m!293003 () Bool)

(assert (=> d!64643 m!293003))

(assert (=> d!64643 m!292915))

(declare-fun m!293005 () Bool)

(assert (=> d!64643 m!293005))

(declare-fun m!293007 () Bool)

(assert (=> d!64643 m!293007))

(declare-fun m!293009 () Bool)

(assert (=> b!278040 m!293009))

(assert (=> b!277886 d!64643))

(declare-fun d!64645 () Bool)

(assert (=> d!64645 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26760 d!64645))

(declare-fun d!64653 () Bool)

(assert (=> d!64653 (= (array_inv!4526 a!3325) (bvsge (size!6924 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26760 d!64653))

(check-sat (not d!64617) (not b!278013) (not bm!25346) (not bm!25358) (not b!277940) (not d!64643) (not b!278015) (not b!278017) (not b!278010) (not b!278036) (not b!278014) (not b!278040) (not b!277929) (not d!64639) (not b!277987) (not b!278033) (not b!278034) (not b!277967) (not d!64609) (not b!277938) (not bm!25356) (not bm!25357))
(check-sat)
(get-model)

(declare-fun b!278137 () Bool)

(declare-fun e!177423 () Bool)

(declare-fun e!177422 () Bool)

(assert (=> b!278137 (= e!177423 e!177422)))

(declare-fun lt!138270 () (_ BitVec 64))

(assert (=> b!278137 (= lt!138270 (select (arr!6572 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!138271 () Unit!8793)

(assert (=> b!278137 (= lt!138271 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138270 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!278137 (arrayContainsKey!0 a!3325 lt!138270 #b00000000000000000000000000000000)))

(declare-fun lt!138272 () Unit!8793)

(assert (=> b!278137 (= lt!138272 lt!138271)))

(declare-fun res!141848 () Bool)

(assert (=> b!278137 (= res!141848 (= (seekEntryOrOpen!0 (select (arr!6572 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!278137 (=> (not res!141848) (not e!177422))))

(declare-fun bm!25368 () Bool)

(declare-fun call!25371 () Bool)

(assert (=> bm!25368 (= call!25371 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!278138 () Bool)

(assert (=> b!278138 (= e!177423 call!25371)))

(declare-fun b!278139 () Bool)

(declare-fun e!177424 () Bool)

(assert (=> b!278139 (= e!177424 e!177423)))

(declare-fun c!45696 () Bool)

(assert (=> b!278139 (= c!45696 (validKeyInArray!0 (select (arr!6572 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!64677 () Bool)

(declare-fun res!141847 () Bool)

(assert (=> d!64677 (=> res!141847 e!177424)))

(assert (=> d!64677 (= res!141847 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6924 a!3325)))))

(assert (=> d!64677 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868) e!177424)))

(declare-fun b!278140 () Bool)

(assert (=> b!278140 (= e!177422 call!25371)))

(assert (= (and d!64677 (not res!141847)) b!278139))

(assert (= (and b!278139 c!45696) b!278137))

(assert (= (and b!278139 (not c!45696)) b!278138))

(assert (= (and b!278137 res!141848) b!278140))

(assert (= (or b!278140 b!278138) bm!25368))

(declare-fun m!293119 () Bool)

(assert (=> b!278137 m!293119))

(declare-fun m!293121 () Bool)

(assert (=> b!278137 m!293121))

(declare-fun m!293123 () Bool)

(assert (=> b!278137 m!293123))

(assert (=> b!278137 m!293119))

(declare-fun m!293125 () Bool)

(assert (=> b!278137 m!293125))

(declare-fun m!293127 () Bool)

(assert (=> bm!25368 m!293127))

(assert (=> b!278139 m!293119))

(assert (=> b!278139 m!293119))

(declare-fun m!293129 () Bool)

(assert (=> b!278139 m!293129))

(assert (=> bm!25357 d!64677))

(declare-fun b!278141 () Bool)

(declare-fun e!177426 () Bool)

(declare-fun e!177425 () Bool)

(assert (=> b!278141 (= e!177426 e!177425)))

(declare-fun lt!138273 () (_ BitVec 64))

(assert (=> b!278141 (= lt!138273 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!138274 () Unit!8793)

(assert (=> b!278141 (= lt!138274 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138151 lt!138273 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!278141 (arrayContainsKey!0 lt!138151 lt!138273 #b00000000000000000000000000000000)))

(declare-fun lt!138275 () Unit!8793)

(assert (=> b!278141 (= lt!138275 lt!138274)))

(declare-fun res!141850 () Bool)

(assert (=> b!278141 (= res!141850 (= (seekEntryOrOpen!0 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)) lt!138151 mask!3868) (Found!1741 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!278141 (=> (not res!141850) (not e!177425))))

(declare-fun call!25372 () Bool)

(declare-fun bm!25369 () Bool)

(assert (=> bm!25369 (= call!25372 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!138151 mask!3868))))

(declare-fun b!278142 () Bool)

(assert (=> b!278142 (= e!177426 call!25372)))

(declare-fun b!278143 () Bool)

(declare-fun e!177427 () Bool)

(assert (=> b!278143 (= e!177427 e!177426)))

(declare-fun c!45697 () Bool)

(assert (=> b!278143 (= c!45697 (validKeyInArray!0 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun d!64679 () Bool)

(declare-fun res!141849 () Bool)

(assert (=> d!64679 (=> res!141849 e!177427)))

(assert (=> d!64679 (= res!141849 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) (size!6924 lt!138151)))))

(assert (=> d!64679 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!138151 mask!3868) e!177427)))

(declare-fun b!278144 () Bool)

(assert (=> b!278144 (= e!177425 call!25372)))

(assert (= (and d!64679 (not res!141849)) b!278143))

(assert (= (and b!278143 c!45697) b!278141))

(assert (= (and b!278143 (not c!45697)) b!278142))

(assert (= (and b!278141 res!141850) b!278144))

(assert (= (or b!278144 b!278142) bm!25369))

(declare-fun m!293131 () Bool)

(assert (=> b!278141 m!293131))

(declare-fun m!293133 () Bool)

(assert (=> b!278141 m!293133))

(declare-fun m!293135 () Bool)

(assert (=> b!278141 m!293135))

(assert (=> b!278141 m!293131))

(declare-fun m!293137 () Bool)

(assert (=> b!278141 m!293137))

(declare-fun m!293139 () Bool)

(assert (=> bm!25369 m!293139))

(assert (=> b!278143 m!293131))

(assert (=> b!278143 m!293131))

(declare-fun m!293141 () Bool)

(assert (=> b!278143 m!293141))

(assert (=> bm!25358 d!64679))

(declare-fun d!64681 () Bool)

(assert (=> d!64681 (= (validKeyInArray!0 (select (arr!6572 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6572 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6572 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278014 d!64681))

(declare-fun d!64683 () Bool)

(assert (=> d!64683 (arrayContainsKey!0 lt!138151 lt!138228 #b00000000000000000000000000000000)))

(declare-fun lt!138278 () Unit!8793)

(declare-fun choose!13 (array!13846 (_ BitVec 64) (_ BitVec 32)) Unit!8793)

(assert (=> d!64683 (= lt!138278 (choose!13 lt!138151 lt!138228 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> d!64683 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))

(assert (=> d!64683 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138151 lt!138228 (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138278)))

(declare-fun bs!9913 () Bool)

(assert (= bs!9913 d!64683))

(assert (=> bs!9913 m!292991))

(declare-fun m!293143 () Bool)

(assert (=> bs!9913 m!293143))

(assert (=> b!278034 d!64683))

(declare-fun d!64685 () Bool)

(declare-fun res!141851 () Bool)

(declare-fun e!177428 () Bool)

(assert (=> d!64685 (=> res!141851 e!177428)))

(assert (=> d!64685 (= res!141851 (= (select (arr!6572 lt!138151) #b00000000000000000000000000000000) lt!138228))))

(assert (=> d!64685 (= (arrayContainsKey!0 lt!138151 lt!138228 #b00000000000000000000000000000000) e!177428)))

(declare-fun b!278145 () Bool)

(declare-fun e!177429 () Bool)

(assert (=> b!278145 (= e!177428 e!177429)))

(declare-fun res!141852 () Bool)

(assert (=> b!278145 (=> (not res!141852) (not e!177429))))

(assert (=> b!278145 (= res!141852 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6924 lt!138151)))))

(declare-fun b!278146 () Bool)

(assert (=> b!278146 (= e!177429 (arrayContainsKey!0 lt!138151 lt!138228 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64685 (not res!141851)) b!278145))

(assert (= (and b!278145 res!141852) b!278146))

(declare-fun m!293145 () Bool)

(assert (=> d!64685 m!293145))

(declare-fun m!293147 () Bool)

(assert (=> b!278146 m!293147))

(assert (=> b!278034 d!64685))

(declare-fun b!278147 () Bool)

(declare-fun e!177431 () SeekEntryResult!1741)

(declare-fun e!177430 () SeekEntryResult!1741)

(assert (=> b!278147 (= e!177431 e!177430)))

(declare-fun lt!138281 () (_ BitVec 64))

(declare-fun lt!138280 () SeekEntryResult!1741)

(assert (=> b!278147 (= lt!138281 (select (arr!6572 lt!138151) (index!9136 lt!138280)))))

(declare-fun c!45700 () Bool)

(assert (=> b!278147 (= c!45700 (= lt!138281 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun d!64687 () Bool)

(declare-fun lt!138279 () SeekEntryResult!1741)

(assert (=> d!64687 (and (or ((_ is Undefined!1741) lt!138279) (not ((_ is Found!1741) lt!138279)) (and (bvsge (index!9135 lt!138279) #b00000000000000000000000000000000) (bvslt (index!9135 lt!138279) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138279) ((_ is Found!1741) lt!138279) (not ((_ is MissingZero!1741) lt!138279)) (and (bvsge (index!9134 lt!138279) #b00000000000000000000000000000000) (bvslt (index!9134 lt!138279) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138279) ((_ is Found!1741) lt!138279) ((_ is MissingZero!1741) lt!138279) (not ((_ is MissingVacant!1741) lt!138279)) (and (bvsge (index!9137 lt!138279) #b00000000000000000000000000000000) (bvslt (index!9137 lt!138279) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138279) (ite ((_ is Found!1741) lt!138279) (= (select (arr!6572 lt!138151) (index!9135 lt!138279)) (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26))) (ite ((_ is MissingZero!1741) lt!138279) (= (select (arr!6572 lt!138151) (index!9134 lt!138279)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1741) lt!138279) (= (select (arr!6572 lt!138151) (index!9137 lt!138279)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64687 (= lt!138279 e!177431)))

(declare-fun c!45699 () Bool)

(assert (=> d!64687 (= c!45699 (and ((_ is Intermediate!1741) lt!138280) (undefined!2553 lt!138280)))))

(assert (=> d!64687 (= lt!138280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26)) mask!3868) (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138151 mask!3868))))

(assert (=> d!64687 (validMask!0 mask!3868)))

(assert (=> d!64687 (= (seekEntryOrOpen!0 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138151 mask!3868) lt!138279)))

(declare-fun b!278148 () Bool)

(assert (=> b!278148 (= e!177431 Undefined!1741)))

(declare-fun e!177432 () SeekEntryResult!1741)

(declare-fun b!278149 () Bool)

(assert (=> b!278149 (= e!177432 (seekKeyOrZeroReturnVacant!0 (x!27346 lt!138280) (index!9136 lt!138280) (index!9136 lt!138280) (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138151 mask!3868))))

(declare-fun b!278150 () Bool)

(declare-fun c!45698 () Bool)

(assert (=> b!278150 (= c!45698 (= lt!138281 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278150 (= e!177430 e!177432)))

(declare-fun b!278151 () Bool)

(assert (=> b!278151 (= e!177430 (Found!1741 (index!9136 lt!138280)))))

(declare-fun b!278152 () Bool)

(assert (=> b!278152 (= e!177432 (MissingZero!1741 (index!9136 lt!138280)))))

(assert (= (and d!64687 c!45699) b!278148))

(assert (= (and d!64687 (not c!45699)) b!278147))

(assert (= (and b!278147 c!45700) b!278151))

(assert (= (and b!278147 (not c!45700)) b!278150))

(assert (= (and b!278150 c!45698) b!278152))

(assert (= (and b!278150 (not c!45698)) b!278149))

(declare-fun m!293149 () Bool)

(assert (=> b!278147 m!293149))

(assert (=> d!64687 m!292849))

(declare-fun m!293151 () Bool)

(assert (=> d!64687 m!293151))

(assert (=> d!64687 m!292987))

(declare-fun m!293153 () Bool)

(assert (=> d!64687 m!293153))

(declare-fun m!293155 () Bool)

(assert (=> d!64687 m!293155))

(assert (=> d!64687 m!293153))

(assert (=> d!64687 m!292987))

(declare-fun m!293157 () Bool)

(assert (=> d!64687 m!293157))

(declare-fun m!293159 () Bool)

(assert (=> d!64687 m!293159))

(assert (=> b!278149 m!292987))

(declare-fun m!293161 () Bool)

(assert (=> b!278149 m!293161))

(assert (=> b!278034 d!64687))

(declare-fun b!278153 () Bool)

(declare-fun e!177434 () SeekEntryResult!1741)

(declare-fun e!177433 () SeekEntryResult!1741)

(assert (=> b!278153 (= e!177434 e!177433)))

(declare-fun lt!138284 () (_ BitVec 64))

(declare-fun lt!138283 () SeekEntryResult!1741)

(assert (=> b!278153 (= lt!138284 (select (arr!6572 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325))) (index!9136 lt!138283)))))

(declare-fun c!45703 () Bool)

(assert (=> b!278153 (= c!45703 (= lt!138284 k0!2581))))

(declare-fun lt!138282 () SeekEntryResult!1741)

(declare-fun d!64689 () Bool)

(assert (=> d!64689 (and (or ((_ is Undefined!1741) lt!138282) (not ((_ is Found!1741) lt!138282)) (and (bvsge (index!9135 lt!138282) #b00000000000000000000000000000000) (bvslt (index!9135 lt!138282) (size!6924 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)))))) (or ((_ is Undefined!1741) lt!138282) ((_ is Found!1741) lt!138282) (not ((_ is MissingZero!1741) lt!138282)) (and (bvsge (index!9134 lt!138282) #b00000000000000000000000000000000) (bvslt (index!9134 lt!138282) (size!6924 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)))))) (or ((_ is Undefined!1741) lt!138282) ((_ is Found!1741) lt!138282) ((_ is MissingZero!1741) lt!138282) (not ((_ is MissingVacant!1741) lt!138282)) (and (bvsge (index!9137 lt!138282) #b00000000000000000000000000000000) (bvslt (index!9137 lt!138282) (size!6924 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)))))) (or ((_ is Undefined!1741) lt!138282) (ite ((_ is Found!1741) lt!138282) (= (select (arr!6572 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325))) (index!9135 lt!138282)) k0!2581) (ite ((_ is MissingZero!1741) lt!138282) (= (select (arr!6572 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325))) (index!9134 lt!138282)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1741) lt!138282) (= (select (arr!6572 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325))) (index!9137 lt!138282)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64689 (= lt!138282 e!177434)))

(declare-fun c!45702 () Bool)

(assert (=> d!64689 (= c!45702 (and ((_ is Intermediate!1741) lt!138283) (undefined!2553 lt!138283)))))

(assert (=> d!64689 (= lt!138283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868))))

(assert (=> d!64689 (validMask!0 mask!3868)))

(assert (=> d!64689 (= (seekEntryOrOpen!0 k0!2581 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868) lt!138282)))

(declare-fun b!278154 () Bool)

(assert (=> b!278154 (= e!177434 Undefined!1741)))

(declare-fun e!177435 () SeekEntryResult!1741)

(declare-fun b!278155 () Bool)

(assert (=> b!278155 (= e!177435 (seekKeyOrZeroReturnVacant!0 (x!27346 lt!138283) (index!9136 lt!138283) (index!9136 lt!138283) k0!2581 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868))))

(declare-fun b!278156 () Bool)

(declare-fun c!45701 () Bool)

(assert (=> b!278156 (= c!45701 (= lt!138284 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278156 (= e!177433 e!177435)))

(declare-fun b!278157 () Bool)

(assert (=> b!278157 (= e!177433 (Found!1741 (index!9136 lt!138283)))))

(declare-fun b!278158 () Bool)

(assert (=> b!278158 (= e!177435 (MissingZero!1741 (index!9136 lt!138283)))))

(assert (= (and d!64689 c!45702) b!278154))

(assert (= (and d!64689 (not c!45702)) b!278153))

(assert (= (and b!278153 c!45703) b!278157))

(assert (= (and b!278153 (not c!45703)) b!278156))

(assert (= (and b!278156 c!45701) b!278158))

(assert (= (and b!278156 (not c!45701)) b!278155))

(declare-fun m!293163 () Bool)

(assert (=> b!278153 m!293163))

(assert (=> d!64689 m!292849))

(declare-fun m!293165 () Bool)

(assert (=> d!64689 m!293165))

(assert (=> d!64689 m!292915))

(declare-fun m!293167 () Bool)

(assert (=> d!64689 m!293167))

(assert (=> d!64689 m!292915))

(declare-fun m!293169 () Bool)

(assert (=> d!64689 m!293169))

(declare-fun m!293171 () Bool)

(assert (=> d!64689 m!293171))

(declare-fun m!293173 () Bool)

(assert (=> b!278155 m!293173))

(assert (=> b!277987 d!64689))

(assert (=> b!278013 d!64681))

(declare-fun d!64691 () Bool)

(assert (=> d!64691 (= (seekEntryOrOpen!0 k0!2581 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868) (Found!1741 i!1267))))

(assert (=> d!64691 true))

(declare-fun _$54!17 () Unit!8793)

(assert (=> d!64691 (= (choose!8 a!3325 i!1267 k0!2581 mask!3868) _$54!17)))

(declare-fun bs!9914 () Bool)

(assert (= bs!9914 d!64691))

(assert (=> bs!9914 m!292845))

(assert (=> bs!9914 m!292955))

(assert (=> d!64617 d!64691))

(assert (=> d!64617 d!64645))

(declare-fun d!64693 () Bool)

(assert (=> d!64693 (arrayContainsKey!0 a!3325 lt!138216 #b00000000000000000000000000000000)))

(declare-fun lt!138285 () Unit!8793)

(assert (=> d!64693 (= lt!138285 (choose!13 a!3325 lt!138216 #b00000000000000000000000000000000))))

(assert (=> d!64693 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!64693 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138216 #b00000000000000000000000000000000) lt!138285)))

(declare-fun bs!9915 () Bool)

(assert (= bs!9915 d!64693))

(assert (=> bs!9915 m!292977))

(declare-fun m!293175 () Bool)

(assert (=> bs!9915 m!293175))

(assert (=> b!278015 d!64693))

(declare-fun d!64695 () Bool)

(declare-fun res!141853 () Bool)

(declare-fun e!177436 () Bool)

(assert (=> d!64695 (=> res!141853 e!177436)))

(assert (=> d!64695 (= res!141853 (= (select (arr!6572 a!3325) #b00000000000000000000000000000000) lt!138216))))

(assert (=> d!64695 (= (arrayContainsKey!0 a!3325 lt!138216 #b00000000000000000000000000000000) e!177436)))

(declare-fun b!278159 () Bool)

(declare-fun e!177437 () Bool)

(assert (=> b!278159 (= e!177436 e!177437)))

(declare-fun res!141854 () Bool)

(assert (=> b!278159 (=> (not res!141854) (not e!177437))))

(assert (=> b!278159 (= res!141854 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6924 a!3325)))))

(declare-fun b!278160 () Bool)

(assert (=> b!278160 (= e!177437 (arrayContainsKey!0 a!3325 lt!138216 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64695 (not res!141853)) b!278159))

(assert (= (and b!278159 res!141854) b!278160))

(assert (=> d!64695 m!292891))

(declare-fun m!293177 () Bool)

(assert (=> b!278160 m!293177))

(assert (=> b!278015 d!64695))

(declare-fun b!278161 () Bool)

(declare-fun e!177439 () SeekEntryResult!1741)

(declare-fun e!177438 () SeekEntryResult!1741)

(assert (=> b!278161 (= e!177439 e!177438)))

(declare-fun lt!138288 () (_ BitVec 64))

(declare-fun lt!138287 () SeekEntryResult!1741)

(assert (=> b!278161 (= lt!138288 (select (arr!6572 a!3325) (index!9136 lt!138287)))))

(declare-fun c!45706 () Bool)

(assert (=> b!278161 (= c!45706 (= lt!138288 (select (arr!6572 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64697 () Bool)

(declare-fun lt!138286 () SeekEntryResult!1741)

(assert (=> d!64697 (and (or ((_ is Undefined!1741) lt!138286) (not ((_ is Found!1741) lt!138286)) (and (bvsge (index!9135 lt!138286) #b00000000000000000000000000000000) (bvslt (index!9135 lt!138286) (size!6924 a!3325)))) (or ((_ is Undefined!1741) lt!138286) ((_ is Found!1741) lt!138286) (not ((_ is MissingZero!1741) lt!138286)) (and (bvsge (index!9134 lt!138286) #b00000000000000000000000000000000) (bvslt (index!9134 lt!138286) (size!6924 a!3325)))) (or ((_ is Undefined!1741) lt!138286) ((_ is Found!1741) lt!138286) ((_ is MissingZero!1741) lt!138286) (not ((_ is MissingVacant!1741) lt!138286)) (and (bvsge (index!9137 lt!138286) #b00000000000000000000000000000000) (bvslt (index!9137 lt!138286) (size!6924 a!3325)))) (or ((_ is Undefined!1741) lt!138286) (ite ((_ is Found!1741) lt!138286) (= (select (arr!6572 a!3325) (index!9135 lt!138286)) (select (arr!6572 a!3325) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1741) lt!138286) (= (select (arr!6572 a!3325) (index!9134 lt!138286)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1741) lt!138286) (= (select (arr!6572 a!3325) (index!9137 lt!138286)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64697 (= lt!138286 e!177439)))

(declare-fun c!45705 () Bool)

(assert (=> d!64697 (= c!45705 (and ((_ is Intermediate!1741) lt!138287) (undefined!2553 lt!138287)))))

(assert (=> d!64697 (= lt!138287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6572 a!3325) #b00000000000000000000000000000000) mask!3868) (select (arr!6572 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(assert (=> d!64697 (validMask!0 mask!3868)))

(assert (=> d!64697 (= (seekEntryOrOpen!0 (select (arr!6572 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) lt!138286)))

(declare-fun b!278162 () Bool)

(assert (=> b!278162 (= e!177439 Undefined!1741)))

(declare-fun e!177440 () SeekEntryResult!1741)

(declare-fun b!278163 () Bool)

(assert (=> b!278163 (= e!177440 (seekKeyOrZeroReturnVacant!0 (x!27346 lt!138287) (index!9136 lt!138287) (index!9136 lt!138287) (select (arr!6572 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(declare-fun b!278164 () Bool)

(declare-fun c!45704 () Bool)

(assert (=> b!278164 (= c!45704 (= lt!138288 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278164 (= e!177438 e!177440)))

(declare-fun b!278165 () Bool)

(assert (=> b!278165 (= e!177438 (Found!1741 (index!9136 lt!138287)))))

(declare-fun b!278166 () Bool)

(assert (=> b!278166 (= e!177440 (MissingZero!1741 (index!9136 lt!138287)))))

(assert (= (and d!64697 c!45705) b!278162))

(assert (= (and d!64697 (not c!45705)) b!278161))

(assert (= (and b!278161 c!45706) b!278165))

(assert (= (and b!278161 (not c!45706)) b!278164))

(assert (= (and b!278164 c!45704) b!278166))

(assert (= (and b!278164 (not c!45704)) b!278163))

(declare-fun m!293179 () Bool)

(assert (=> b!278161 m!293179))

(assert (=> d!64697 m!292849))

(declare-fun m!293181 () Bool)

(assert (=> d!64697 m!293181))

(assert (=> d!64697 m!292891))

(declare-fun m!293183 () Bool)

(assert (=> d!64697 m!293183))

(declare-fun m!293185 () Bool)

(assert (=> d!64697 m!293185))

(assert (=> d!64697 m!293183))

(assert (=> d!64697 m!292891))

(declare-fun m!293187 () Bool)

(assert (=> d!64697 m!293187))

(declare-fun m!293189 () Bool)

(assert (=> d!64697 m!293189))

(assert (=> b!278163 m!292891))

(declare-fun m!293191 () Bool)

(assert (=> b!278163 m!293191))

(assert (=> b!278015 d!64697))

(declare-fun d!64699 () Bool)

(assert (=> d!64699 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868)))

(assert (=> d!64699 true))

(declare-fun _$55!33 () Unit!8793)

(assert (=> d!64699 (= (choose!98 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) _$55!33)))

(declare-fun bs!9916 () Bool)

(assert (= bs!9916 d!64699))

(assert (=> bs!9916 m!292845))

(assert (=> bs!9916 m!292985))

(assert (=> d!64639 d!64699))

(assert (=> d!64639 d!64645))

(declare-fun b!278167 () Bool)

(declare-fun e!177442 () Bool)

(declare-fun e!177441 () Bool)

(assert (=> b!278167 (= e!177442 e!177441)))

(declare-fun lt!138289 () (_ BitVec 64))

(assert (=> b!278167 (= lt!138289 (select (arr!6572 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!138290 () Unit!8793)

(assert (=> b!278167 (= lt!138290 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) lt!138289 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!278167 (arrayContainsKey!0 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) lt!138289 #b00000000000000000000000000000000)))

(declare-fun lt!138291 () Unit!8793)

(assert (=> b!278167 (= lt!138291 lt!138290)))

(declare-fun res!141856 () Bool)

(assert (=> b!278167 (= res!141856 (= (seekEntryOrOpen!0 (select (arr!6572 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26)) (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868) (Found!1741 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!278167 (=> (not res!141856) (not e!177441))))

(declare-fun call!25373 () Bool)

(declare-fun bm!25370 () Bool)

(assert (=> bm!25370 (= call!25373 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868))))

(declare-fun b!278168 () Bool)

(assert (=> b!278168 (= e!177442 call!25373)))

(declare-fun b!278169 () Bool)

(declare-fun e!177443 () Bool)

(assert (=> b!278169 (= e!177443 e!177442)))

(declare-fun c!45707 () Bool)

(assert (=> b!278169 (= c!45707 (validKeyInArray!0 (select (arr!6572 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun d!64701 () Bool)

(declare-fun res!141855 () Bool)

(assert (=> d!64701 (=> res!141855 e!177443)))

(assert (=> d!64701 (= res!141855 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!6924 (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)))))))

(assert (=> d!64701 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13847 (store (arr!6572 a!3325) i!1267 k0!2581) (size!6924 a!3325)) mask!3868) e!177443)))

(declare-fun b!278170 () Bool)

(assert (=> b!278170 (= e!177441 call!25373)))

(assert (= (and d!64701 (not res!141855)) b!278169))

(assert (= (and b!278169 c!45707) b!278167))

(assert (= (and b!278169 (not c!45707)) b!278168))

(assert (= (and b!278167 res!141856) b!278170))

(assert (= (or b!278170 b!278168) bm!25370))

(declare-fun m!293193 () Bool)

(assert (=> b!278167 m!293193))

(declare-fun m!293195 () Bool)

(assert (=> b!278167 m!293195))

(declare-fun m!293197 () Bool)

(assert (=> b!278167 m!293197))

(assert (=> b!278167 m!293193))

(declare-fun m!293199 () Bool)

(assert (=> b!278167 m!293199))

(declare-fun m!293201 () Bool)

(assert (=> bm!25370 m!293201))

(assert (=> b!278169 m!293193))

(assert (=> b!278169 m!293193))

(declare-fun m!293203 () Bool)

(assert (=> b!278169 m!293203))

(assert (=> b!278033 d!64701))

(declare-fun b!278171 () Bool)

(declare-fun e!177447 () Bool)

(assert (=> b!278171 (= e!177447 (contains!1960 (ite c!45657 (Cons!4397 (select (arr!6572 a!3325) #b00000000000000000000000000000000) Nil!4398) Nil!4398) (select (arr!6572 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!278172 () Bool)

(declare-fun e!177444 () Bool)

(declare-fun call!25374 () Bool)

(assert (=> b!278172 (= e!177444 call!25374)))

(declare-fun d!64703 () Bool)

(declare-fun res!141859 () Bool)

(declare-fun e!177445 () Bool)

(assert (=> d!64703 (=> res!141859 e!177445)))

(assert (=> d!64703 (= res!141859 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6924 a!3325)))))

(assert (=> d!64703 (= (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45657 (Cons!4397 (select (arr!6572 a!3325) #b00000000000000000000000000000000) Nil!4398) Nil!4398)) e!177445)))

(declare-fun b!278173 () Bool)

(assert (=> b!278173 (= e!177444 call!25374)))

(declare-fun b!278174 () Bool)

(declare-fun e!177446 () Bool)

(assert (=> b!278174 (= e!177445 e!177446)))

(declare-fun res!141858 () Bool)

(assert (=> b!278174 (=> (not res!141858) (not e!177446))))

(assert (=> b!278174 (= res!141858 (not e!177447))))

(declare-fun res!141857 () Bool)

(assert (=> b!278174 (=> (not res!141857) (not e!177447))))

(assert (=> b!278174 (= res!141857 (validKeyInArray!0 (select (arr!6572 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!278175 () Bool)

(assert (=> b!278175 (= e!177446 e!177444)))

(declare-fun c!45708 () Bool)

(assert (=> b!278175 (= c!45708 (validKeyInArray!0 (select (arr!6572 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!25371 () Bool)

(assert (=> bm!25371 (= call!25374 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!45708 (Cons!4397 (select (arr!6572 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!45657 (Cons!4397 (select (arr!6572 a!3325) #b00000000000000000000000000000000) Nil!4398) Nil!4398)) (ite c!45657 (Cons!4397 (select (arr!6572 a!3325) #b00000000000000000000000000000000) Nil!4398) Nil!4398))))))

(assert (= (and d!64703 (not res!141859)) b!278174))

(assert (= (and b!278174 res!141857) b!278171))

(assert (= (and b!278174 res!141858) b!278175))

(assert (= (and b!278175 c!45708) b!278173))

(assert (= (and b!278175 (not c!45708)) b!278172))

(assert (= (or b!278173 b!278172) bm!25371))

(assert (=> b!278171 m!293119))

(assert (=> b!278171 m!293119))

(declare-fun m!293205 () Bool)

(assert (=> b!278171 m!293205))

(assert (=> b!278174 m!293119))

(assert (=> b!278174 m!293119))

(assert (=> b!278174 m!293129))

(assert (=> b!278175 m!293119))

(assert (=> b!278175 m!293119))

(assert (=> b!278175 m!293129))

(assert (=> bm!25371 m!293119))

(declare-fun m!293207 () Bool)

(assert (=> bm!25371 m!293207))

(assert (=> bm!25356 d!64703))

(assert (=> b!278017 d!64681))

(declare-fun b!278194 () Bool)

(declare-fun lt!138296 () SeekEntryResult!1741)

(assert (=> b!278194 (and (bvsge (index!9136 lt!138296) #b00000000000000000000000000000000) (bvslt (index!9136 lt!138296) (size!6924 lt!138151)))))

(declare-fun res!141867 () Bool)

(assert (=> b!278194 (= res!141867 (= (select (arr!6572 lt!138151) (index!9136 lt!138296)) k0!2581))))

(declare-fun e!177458 () Bool)

(assert (=> b!278194 (=> res!141867 e!177458)))

(declare-fun e!177462 () Bool)

(assert (=> b!278194 (= e!177462 e!177458)))

(declare-fun d!64705 () Bool)

(declare-fun e!177461 () Bool)

(assert (=> d!64705 e!177461))

(declare-fun c!45715 () Bool)

(assert (=> d!64705 (= c!45715 (and ((_ is Intermediate!1741) lt!138296) (undefined!2553 lt!138296)))))

(declare-fun e!177460 () SeekEntryResult!1741)

(assert (=> d!64705 (= lt!138296 e!177460)))

(declare-fun c!45716 () Bool)

(assert (=> d!64705 (= c!45716 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!138297 () (_ BitVec 64))

(assert (=> d!64705 (= lt!138297 (select (arr!6572 lt!138151) (toIndex!0 k0!2581 mask!3868)))))

(assert (=> d!64705 (validMask!0 mask!3868)))

(assert (=> d!64705 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 lt!138151 mask!3868) lt!138296)))

(declare-fun b!278195 () Bool)

(assert (=> b!278195 (and (bvsge (index!9136 lt!138296) #b00000000000000000000000000000000) (bvslt (index!9136 lt!138296) (size!6924 lt!138151)))))

(declare-fun res!141866 () Bool)

(assert (=> b!278195 (= res!141866 (= (select (arr!6572 lt!138151) (index!9136 lt!138296)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278195 (=> res!141866 e!177458)))

(declare-fun b!278196 () Bool)

(declare-fun e!177459 () SeekEntryResult!1741)

(assert (=> b!278196 (= e!177459 (Intermediate!1741 false (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!278197 () Bool)

(assert (=> b!278197 (= e!177461 (bvsge (x!27346 lt!138296) #b01111111111111111111111111111110))))

(declare-fun b!278198 () Bool)

(assert (=> b!278198 (= e!177460 e!177459)))

(declare-fun c!45717 () Bool)

(assert (=> b!278198 (= c!45717 (or (= lt!138297 k0!2581) (= (bvadd lt!138297 lt!138297) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!278199 () Bool)

(assert (=> b!278199 (= e!177461 e!177462)))

(declare-fun res!141868 () Bool)

(assert (=> b!278199 (= res!141868 (and ((_ is Intermediate!1741) lt!138296) (not (undefined!2553 lt!138296)) (bvslt (x!27346 lt!138296) #b01111111111111111111111111111110) (bvsge (x!27346 lt!138296) #b00000000000000000000000000000000) (bvsge (x!27346 lt!138296) #b00000000000000000000000000000000)))))

(assert (=> b!278199 (=> (not res!141868) (not e!177462))))

(declare-fun b!278200 () Bool)

(assert (=> b!278200 (= e!177460 (Intermediate!1741 true (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!278201 () Bool)

(assert (=> b!278201 (and (bvsge (index!9136 lt!138296) #b00000000000000000000000000000000) (bvslt (index!9136 lt!138296) (size!6924 lt!138151)))))

(assert (=> b!278201 (= e!177458 (= (select (arr!6572 lt!138151) (index!9136 lt!138296)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!278202 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!278202 (= e!177459 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k0!2581 lt!138151 mask!3868))))

(assert (= (and d!64705 c!45716) b!278200))

(assert (= (and d!64705 (not c!45716)) b!278198))

(assert (= (and b!278198 c!45717) b!278196))

(assert (= (and b!278198 (not c!45717)) b!278202))

(assert (= (and d!64705 c!45715) b!278197))

(assert (= (and d!64705 (not c!45715)) b!278199))

(assert (= (and b!278199 res!141868) b!278194))

(assert (= (and b!278194 (not res!141867)) b!278195))

(assert (= (and b!278195 (not res!141866)) b!278201))

(declare-fun m!293209 () Bool)

(assert (=> b!278194 m!293209))

(assert (=> b!278195 m!293209))

(assert (=> b!278202 m!292915))

(declare-fun m!293211 () Bool)

(assert (=> b!278202 m!293211))

(assert (=> b!278202 m!293211))

(declare-fun m!293213 () Bool)

(assert (=> b!278202 m!293213))

(assert (=> d!64705 m!292915))

(declare-fun m!293215 () Bool)

(assert (=> d!64705 m!293215))

(assert (=> d!64705 m!292849))

(assert (=> b!278201 m!293209))

(assert (=> d!64609 d!64705))

(declare-fun d!64707 () Bool)

(declare-fun lt!138303 () (_ BitVec 32))

(declare-fun lt!138302 () (_ BitVec 32))

(assert (=> d!64707 (= lt!138303 (bvmul (bvxor lt!138302 (bvlshr lt!138302 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!64707 (= lt!138302 ((_ extract 31 0) (bvand (bvxor k0!2581 (bvlshr k0!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!64707 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!141869 (let ((h!5066 ((_ extract 31 0) (bvand (bvxor k0!2581 (bvlshr k0!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27349 (bvmul (bvxor h!5066 (bvlshr h!5066 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27349 (bvlshr x!27349 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!141869 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!141869 #b00000000000000000000000000000000))))))

(assert (=> d!64707 (= (toIndex!0 k0!2581 mask!3868) (bvand (bvxor lt!138303 (bvlshr lt!138303 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!64609 d!64707))

(assert (=> d!64609 d!64645))

(declare-fun d!64709 () Bool)

(assert (=> d!64709 (= (validKeyInArray!0 (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26))) (and (not (= (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6572 lt!138151) (bvadd #b00000000000000000000000000000001 startIndex!26)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278036 d!64709))

(declare-fun b!278203 () Bool)

(declare-fun e!177464 () Bool)

(declare-fun e!177463 () Bool)

(assert (=> b!278203 (= e!177464 e!177463)))

(declare-fun lt!138304 () (_ BitVec 64))

(assert (=> b!278203 (= lt!138304 (select (arr!6572 lt!138151) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!138305 () Unit!8793)

(assert (=> b!278203 (= lt!138305 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138151 lt!138304 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!278203 (arrayContainsKey!0 lt!138151 lt!138304 #b00000000000000000000000000000000)))

(declare-fun lt!138306 () Unit!8793)

(assert (=> b!278203 (= lt!138306 lt!138305)))

(declare-fun res!141871 () Bool)

(assert (=> b!278203 (= res!141871 (= (seekEntryOrOpen!0 (select (arr!6572 lt!138151) (bvadd startIndex!26 #b00000000000000000000000000000001)) lt!138151 mask!3868) (Found!1741 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!278203 (=> (not res!141871) (not e!177463))))

(declare-fun bm!25372 () Bool)

(declare-fun call!25375 () Bool)

(assert (=> bm!25372 (= call!25375 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!138151 mask!3868))))

(declare-fun b!278204 () Bool)

(assert (=> b!278204 (= e!177464 call!25375)))

(declare-fun b!278205 () Bool)

(declare-fun e!177465 () Bool)

(assert (=> b!278205 (= e!177465 e!177464)))

(declare-fun c!45718 () Bool)

(assert (=> b!278205 (= c!45718 (validKeyInArray!0 (select (arr!6572 lt!138151) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun d!64711 () Bool)

(declare-fun res!141870 () Bool)

(assert (=> d!64711 (=> res!141870 e!177465)))

(assert (=> d!64711 (= res!141870 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!6924 lt!138151)))))

(assert (=> d!64711 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!138151 mask!3868) e!177465)))

(declare-fun b!278206 () Bool)

(assert (=> b!278206 (= e!177463 call!25375)))

(assert (= (and d!64711 (not res!141870)) b!278205))

(assert (= (and b!278205 c!45718) b!278203))

(assert (= (and b!278205 (not c!45718)) b!278204))

(assert (= (and b!278203 res!141871) b!278206))

(assert (= (or b!278206 b!278204) bm!25372))

(declare-fun m!293217 () Bool)

(assert (=> b!278203 m!293217))

(declare-fun m!293219 () Bool)

(assert (=> b!278203 m!293219))

(declare-fun m!293221 () Bool)

(assert (=> b!278203 m!293221))

(assert (=> b!278203 m!293217))

(declare-fun m!293223 () Bool)

(assert (=> b!278203 m!293223))

(declare-fun m!293225 () Bool)

(assert (=> bm!25372 m!293225))

(assert (=> b!278205 m!293217))

(assert (=> b!278205 m!293217))

(declare-fun m!293227 () Bool)

(assert (=> b!278205 m!293227))

(assert (=> bm!25346 d!64711))

(declare-fun d!64713 () Bool)

(declare-fun res!141872 () Bool)

(declare-fun e!177466 () Bool)

(assert (=> d!64713 (=> res!141872 e!177466)))

(assert (=> d!64713 (= res!141872 (= (select (arr!6572 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!2581))))

(assert (=> d!64713 (= (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!177466)))

(declare-fun b!278207 () Bool)

(declare-fun e!177467 () Bool)

(assert (=> b!278207 (= e!177466 e!177467)))

(declare-fun res!141873 () Bool)

(assert (=> b!278207 (=> (not res!141873) (not e!177467))))

(assert (=> b!278207 (= res!141873 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6924 a!3325)))))

(declare-fun b!278208 () Bool)

(assert (=> b!278208 (= e!177467 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!64713 (not res!141872)) b!278207))

(assert (= (and b!278207 res!141873) b!278208))

(assert (=> d!64713 m!293119))

(declare-fun m!293229 () Bool)

(assert (=> b!278208 m!293229))

(assert (=> b!277929 d!64713))

(declare-fun b!278209 () Bool)

(declare-fun lt!138307 () SeekEntryResult!1741)

(assert (=> b!278209 (and (bvsge (index!9136 lt!138307) #b00000000000000000000000000000000) (bvslt (index!9136 lt!138307) (size!6924 a!3325)))))

(declare-fun res!141875 () Bool)

(assert (=> b!278209 (= res!141875 (= (select (arr!6572 a!3325) (index!9136 lt!138307)) k0!2581))))

(declare-fun e!177468 () Bool)

(assert (=> b!278209 (=> res!141875 e!177468)))

(declare-fun e!177472 () Bool)

(assert (=> b!278209 (= e!177472 e!177468)))

(declare-fun d!64715 () Bool)

(declare-fun e!177471 () Bool)

(assert (=> d!64715 e!177471))

(declare-fun c!45719 () Bool)

(assert (=> d!64715 (= c!45719 (and ((_ is Intermediate!1741) lt!138307) (undefined!2553 lt!138307)))))

(declare-fun e!177470 () SeekEntryResult!1741)

(assert (=> d!64715 (= lt!138307 e!177470)))

(declare-fun c!45720 () Bool)

(assert (=> d!64715 (= c!45720 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!138308 () (_ BitVec 64))

(assert (=> d!64715 (= lt!138308 (select (arr!6572 a!3325) (toIndex!0 k0!2581 mask!3868)))))

(assert (=> d!64715 (validMask!0 mask!3868)))

(assert (=> d!64715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868) lt!138307)))

(declare-fun b!278210 () Bool)

(assert (=> b!278210 (and (bvsge (index!9136 lt!138307) #b00000000000000000000000000000000) (bvslt (index!9136 lt!138307) (size!6924 a!3325)))))

(declare-fun res!141874 () Bool)

(assert (=> b!278210 (= res!141874 (= (select (arr!6572 a!3325) (index!9136 lt!138307)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278210 (=> res!141874 e!177468)))

(declare-fun b!278211 () Bool)

(declare-fun e!177469 () SeekEntryResult!1741)

(assert (=> b!278211 (= e!177469 (Intermediate!1741 false (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!278212 () Bool)

(assert (=> b!278212 (= e!177471 (bvsge (x!27346 lt!138307) #b01111111111111111111111111111110))))

(declare-fun b!278213 () Bool)

(assert (=> b!278213 (= e!177470 e!177469)))

(declare-fun c!45721 () Bool)

(assert (=> b!278213 (= c!45721 (or (= lt!138308 k0!2581) (= (bvadd lt!138308 lt!138308) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!278214 () Bool)

(assert (=> b!278214 (= e!177471 e!177472)))

(declare-fun res!141876 () Bool)

(assert (=> b!278214 (= res!141876 (and ((_ is Intermediate!1741) lt!138307) (not (undefined!2553 lt!138307)) (bvslt (x!27346 lt!138307) #b01111111111111111111111111111110) (bvsge (x!27346 lt!138307) #b00000000000000000000000000000000) (bvsge (x!27346 lt!138307) #b00000000000000000000000000000000)))))

(assert (=> b!278214 (=> (not res!141876) (not e!177472))))

(declare-fun b!278215 () Bool)

(assert (=> b!278215 (= e!177470 (Intermediate!1741 true (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!278216 () Bool)

(assert (=> b!278216 (and (bvsge (index!9136 lt!138307) #b00000000000000000000000000000000) (bvslt (index!9136 lt!138307) (size!6924 a!3325)))))

(assert (=> b!278216 (= e!177468 (= (select (arr!6572 a!3325) (index!9136 lt!138307)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!278217 () Bool)

(assert (=> b!278217 (= e!177469 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (= (and d!64715 c!45720) b!278215))

(assert (= (and d!64715 (not c!45720)) b!278213))

(assert (= (and b!278213 c!45721) b!278211))

(assert (= (and b!278213 (not c!45721)) b!278217))

(assert (= (and d!64715 c!45719) b!278212))

(assert (= (and d!64715 (not c!45719)) b!278214))

(assert (= (and b!278214 res!141876) b!278209))

(assert (= (and b!278209 (not res!141875)) b!278210))

(assert (= (and b!278210 (not res!141874)) b!278216))

(declare-fun m!293231 () Bool)

(assert (=> b!278209 m!293231))

(assert (=> b!278210 m!293231))

(assert (=> b!278217 m!292915))

(assert (=> b!278217 m!293211))

(assert (=> b!278217 m!293211))

(declare-fun m!293233 () Bool)

(assert (=> b!278217 m!293233))

(assert (=> d!64715 m!292915))

(declare-fun m!293235 () Bool)

(assert (=> d!64715 m!293235))

(assert (=> d!64715 m!292849))

(assert (=> b!278216 m!293231))

(assert (=> d!64643 d!64715))

(assert (=> d!64643 d!64707))

(assert (=> d!64643 d!64645))

(declare-fun d!64717 () Bool)

(assert (=> d!64717 (arrayContainsKey!0 lt!138151 lt!138177 #b00000000000000000000000000000000)))

(declare-fun lt!138309 () Unit!8793)

(assert (=> d!64717 (= lt!138309 (choose!13 lt!138151 lt!138177 startIndex!26))))

(assert (=> d!64717 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!64717 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138151 lt!138177 startIndex!26) lt!138309)))

(declare-fun bs!9917 () Bool)

(assert (= bs!9917 d!64717))

(assert (=> bs!9917 m!292899))

(declare-fun m!293237 () Bool)

(assert (=> bs!9917 m!293237))

(assert (=> b!277938 d!64717))

(declare-fun d!64719 () Bool)

(declare-fun res!141877 () Bool)

(declare-fun e!177473 () Bool)

(assert (=> d!64719 (=> res!141877 e!177473)))

(assert (=> d!64719 (= res!141877 (= (select (arr!6572 lt!138151) #b00000000000000000000000000000000) lt!138177))))

(assert (=> d!64719 (= (arrayContainsKey!0 lt!138151 lt!138177 #b00000000000000000000000000000000) e!177473)))

(declare-fun b!278218 () Bool)

(declare-fun e!177474 () Bool)

(assert (=> b!278218 (= e!177473 e!177474)))

(declare-fun res!141878 () Bool)

(assert (=> b!278218 (=> (not res!141878) (not e!177474))))

(assert (=> b!278218 (= res!141878 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6924 lt!138151)))))

(declare-fun b!278219 () Bool)

(assert (=> b!278219 (= e!177474 (arrayContainsKey!0 lt!138151 lt!138177 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64719 (not res!141877)) b!278218))

(assert (= (and b!278218 res!141878) b!278219))

(assert (=> d!64719 m!293145))

(declare-fun m!293239 () Bool)

(assert (=> b!278219 m!293239))

(assert (=> b!277938 d!64719))

(declare-fun b!278220 () Bool)

(declare-fun e!177476 () SeekEntryResult!1741)

(declare-fun e!177475 () SeekEntryResult!1741)

(assert (=> b!278220 (= e!177476 e!177475)))

(declare-fun lt!138312 () (_ BitVec 64))

(declare-fun lt!138311 () SeekEntryResult!1741)

(assert (=> b!278220 (= lt!138312 (select (arr!6572 lt!138151) (index!9136 lt!138311)))))

(declare-fun c!45724 () Bool)

(assert (=> b!278220 (= c!45724 (= lt!138312 (select (arr!6572 lt!138151) startIndex!26)))))

(declare-fun d!64721 () Bool)

(declare-fun lt!138310 () SeekEntryResult!1741)

(assert (=> d!64721 (and (or ((_ is Undefined!1741) lt!138310) (not ((_ is Found!1741) lt!138310)) (and (bvsge (index!9135 lt!138310) #b00000000000000000000000000000000) (bvslt (index!9135 lt!138310) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138310) ((_ is Found!1741) lt!138310) (not ((_ is MissingZero!1741) lt!138310)) (and (bvsge (index!9134 lt!138310) #b00000000000000000000000000000000) (bvslt (index!9134 lt!138310) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138310) ((_ is Found!1741) lt!138310) ((_ is MissingZero!1741) lt!138310) (not ((_ is MissingVacant!1741) lt!138310)) (and (bvsge (index!9137 lt!138310) #b00000000000000000000000000000000) (bvslt (index!9137 lt!138310) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138310) (ite ((_ is Found!1741) lt!138310) (= (select (arr!6572 lt!138151) (index!9135 lt!138310)) (select (arr!6572 lt!138151) startIndex!26)) (ite ((_ is MissingZero!1741) lt!138310) (= (select (arr!6572 lt!138151) (index!9134 lt!138310)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1741) lt!138310) (= (select (arr!6572 lt!138151) (index!9137 lt!138310)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64721 (= lt!138310 e!177476)))

(declare-fun c!45723 () Bool)

(assert (=> d!64721 (= c!45723 (and ((_ is Intermediate!1741) lt!138311) (undefined!2553 lt!138311)))))

(assert (=> d!64721 (= lt!138311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6572 lt!138151) startIndex!26) mask!3868) (select (arr!6572 lt!138151) startIndex!26) lt!138151 mask!3868))))

(assert (=> d!64721 (validMask!0 mask!3868)))

(assert (=> d!64721 (= (seekEntryOrOpen!0 (select (arr!6572 lt!138151) startIndex!26) lt!138151 mask!3868) lt!138310)))

(declare-fun b!278221 () Bool)

(assert (=> b!278221 (= e!177476 Undefined!1741)))

(declare-fun b!278222 () Bool)

(declare-fun e!177477 () SeekEntryResult!1741)

(assert (=> b!278222 (= e!177477 (seekKeyOrZeroReturnVacant!0 (x!27346 lt!138311) (index!9136 lt!138311) (index!9136 lt!138311) (select (arr!6572 lt!138151) startIndex!26) lt!138151 mask!3868))))

(declare-fun b!278223 () Bool)

(declare-fun c!45722 () Bool)

(assert (=> b!278223 (= c!45722 (= lt!138312 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278223 (= e!177475 e!177477)))

(declare-fun b!278224 () Bool)

(assert (=> b!278224 (= e!177475 (Found!1741 (index!9136 lt!138311)))))

(declare-fun b!278225 () Bool)

(assert (=> b!278225 (= e!177477 (MissingZero!1741 (index!9136 lt!138311)))))

(assert (= (and d!64721 c!45723) b!278221))

(assert (= (and d!64721 (not c!45723)) b!278220))

(assert (= (and b!278220 c!45724) b!278224))

(assert (= (and b!278220 (not c!45724)) b!278223))

(assert (= (and b!278223 c!45722) b!278225))

(assert (= (and b!278223 (not c!45722)) b!278222))

(declare-fun m!293241 () Bool)

(assert (=> b!278220 m!293241))

(assert (=> d!64721 m!292849))

(declare-fun m!293243 () Bool)

(assert (=> d!64721 m!293243))

(assert (=> d!64721 m!292895))

(declare-fun m!293245 () Bool)

(assert (=> d!64721 m!293245))

(declare-fun m!293247 () Bool)

(assert (=> d!64721 m!293247))

(assert (=> d!64721 m!293245))

(assert (=> d!64721 m!292895))

(declare-fun m!293249 () Bool)

(assert (=> d!64721 m!293249))

(declare-fun m!293251 () Bool)

(assert (=> d!64721 m!293251))

(assert (=> b!278222 m!292895))

(declare-fun m!293253 () Bool)

(assert (=> b!278222 m!293253))

(assert (=> b!277938 d!64721))

(declare-fun b!278238 () Bool)

(declare-fun e!177486 () SeekEntryResult!1741)

(declare-fun e!177484 () SeekEntryResult!1741)

(assert (=> b!278238 (= e!177486 e!177484)))

(declare-fun c!45733 () Bool)

(declare-fun lt!138317 () (_ BitVec 64))

(assert (=> b!278238 (= c!45733 (= lt!138317 k0!2581))))

(declare-fun b!278240 () Bool)

(assert (=> b!278240 (= e!177486 Undefined!1741)))

(declare-fun b!278241 () Bool)

(declare-fun e!177485 () SeekEntryResult!1741)

(assert (=> b!278241 (= e!177485 (MissingVacant!1741 (index!9136 lt!138196)))))

(declare-fun b!278242 () Bool)

(declare-fun c!45732 () Bool)

(assert (=> b!278242 (= c!45732 (= lt!138317 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278242 (= e!177484 e!177485)))

(declare-fun b!278243 () Bool)

(assert (=> b!278243 (= e!177485 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27346 lt!138196) #b00000000000000000000000000000001) (nextIndex!0 (index!9136 lt!138196) (x!27346 lt!138196) mask!3868) (index!9136 lt!138196) k0!2581 lt!138151 mask!3868))))

(declare-fun b!278239 () Bool)

(assert (=> b!278239 (= e!177484 (Found!1741 (index!9136 lt!138196)))))

(declare-fun d!64723 () Bool)

(declare-fun lt!138318 () SeekEntryResult!1741)

(assert (=> d!64723 (and (or ((_ is Undefined!1741) lt!138318) (not ((_ is Found!1741) lt!138318)) (and (bvsge (index!9135 lt!138318) #b00000000000000000000000000000000) (bvslt (index!9135 lt!138318) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138318) ((_ is Found!1741) lt!138318) (not ((_ is MissingVacant!1741) lt!138318)) (not (= (index!9137 lt!138318) (index!9136 lt!138196))) (and (bvsge (index!9137 lt!138318) #b00000000000000000000000000000000) (bvslt (index!9137 lt!138318) (size!6924 lt!138151)))) (or ((_ is Undefined!1741) lt!138318) (ite ((_ is Found!1741) lt!138318) (= (select (arr!6572 lt!138151) (index!9135 lt!138318)) k0!2581) (and ((_ is MissingVacant!1741) lt!138318) (= (index!9137 lt!138318) (index!9136 lt!138196)) (= (select (arr!6572 lt!138151) (index!9137 lt!138318)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!64723 (= lt!138318 e!177486)))

(declare-fun c!45731 () Bool)

(assert (=> d!64723 (= c!45731 (bvsge (x!27346 lt!138196) #b01111111111111111111111111111110))))

(assert (=> d!64723 (= lt!138317 (select (arr!6572 lt!138151) (index!9136 lt!138196)))))

(assert (=> d!64723 (validMask!0 mask!3868)))

(assert (=> d!64723 (= (seekKeyOrZeroReturnVacant!0 (x!27346 lt!138196) (index!9136 lt!138196) (index!9136 lt!138196) k0!2581 lt!138151 mask!3868) lt!138318)))

(assert (= (and d!64723 c!45731) b!278240))

(assert (= (and d!64723 (not c!45731)) b!278238))

(assert (= (and b!278238 c!45733) b!278239))

(assert (= (and b!278238 (not c!45733)) b!278242))

(assert (= (and b!278242 c!45732) b!278241))

(assert (= (and b!278242 (not c!45732)) b!278243))

(declare-fun m!293255 () Bool)

(assert (=> b!278243 m!293255))

(assert (=> b!278243 m!293255))

(declare-fun m!293257 () Bool)

(assert (=> b!278243 m!293257))

(declare-fun m!293259 () Bool)

(assert (=> d!64723 m!293259))

(declare-fun m!293261 () Bool)

(assert (=> d!64723 m!293261))

(assert (=> d!64723 m!292911))

(assert (=> d!64723 m!292849))

(assert (=> b!277967 d!64723))

(declare-fun d!64725 () Bool)

(assert (=> d!64725 (= (validKeyInArray!0 (select (arr!6572 lt!138151) startIndex!26)) (and (not (= (select (arr!6572 lt!138151) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6572 lt!138151) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!277940 d!64725))

(declare-fun b!278244 () Bool)

(declare-fun e!177489 () SeekEntryResult!1741)

(declare-fun e!177487 () SeekEntryResult!1741)

(assert (=> b!278244 (= e!177489 e!177487)))

(declare-fun c!45736 () Bool)

(declare-fun lt!138319 () (_ BitVec 64))

(assert (=> b!278244 (= c!45736 (= lt!138319 k0!2581))))

(declare-fun b!278246 () Bool)

(assert (=> b!278246 (= e!177489 Undefined!1741)))

(declare-fun b!278247 () Bool)

(declare-fun e!177488 () SeekEntryResult!1741)

(assert (=> b!278247 (= e!177488 (MissingVacant!1741 (index!9136 lt!138232)))))

(declare-fun b!278248 () Bool)

(declare-fun c!45735 () Bool)

(assert (=> b!278248 (= c!45735 (= lt!138319 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278248 (= e!177487 e!177488)))

(declare-fun b!278249 () Bool)

(assert (=> b!278249 (= e!177488 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27346 lt!138232) #b00000000000000000000000000000001) (nextIndex!0 (index!9136 lt!138232) (x!27346 lt!138232) mask!3868) (index!9136 lt!138232) k0!2581 a!3325 mask!3868))))

(declare-fun b!278245 () Bool)

(assert (=> b!278245 (= e!177487 (Found!1741 (index!9136 lt!138232)))))

(declare-fun d!64727 () Bool)

(declare-fun lt!138320 () SeekEntryResult!1741)

(assert (=> d!64727 (and (or ((_ is Undefined!1741) lt!138320) (not ((_ is Found!1741) lt!138320)) (and (bvsge (index!9135 lt!138320) #b00000000000000000000000000000000) (bvslt (index!9135 lt!138320) (size!6924 a!3325)))) (or ((_ is Undefined!1741) lt!138320) ((_ is Found!1741) lt!138320) (not ((_ is MissingVacant!1741) lt!138320)) (not (= (index!9137 lt!138320) (index!9136 lt!138232))) (and (bvsge (index!9137 lt!138320) #b00000000000000000000000000000000) (bvslt (index!9137 lt!138320) (size!6924 a!3325)))) (or ((_ is Undefined!1741) lt!138320) (ite ((_ is Found!1741) lt!138320) (= (select (arr!6572 a!3325) (index!9135 lt!138320)) k0!2581) (and ((_ is MissingVacant!1741) lt!138320) (= (index!9137 lt!138320) (index!9136 lt!138232)) (= (select (arr!6572 a!3325) (index!9137 lt!138320)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!64727 (= lt!138320 e!177489)))

(declare-fun c!45734 () Bool)

(assert (=> d!64727 (= c!45734 (bvsge (x!27346 lt!138232) #b01111111111111111111111111111110))))

(assert (=> d!64727 (= lt!138319 (select (arr!6572 a!3325) (index!9136 lt!138232)))))

(assert (=> d!64727 (validMask!0 mask!3868)))

(assert (=> d!64727 (= (seekKeyOrZeroReturnVacant!0 (x!27346 lt!138232) (index!9136 lt!138232) (index!9136 lt!138232) k0!2581 a!3325 mask!3868) lt!138320)))

(assert (= (and d!64727 c!45734) b!278246))

(assert (= (and d!64727 (not c!45734)) b!278244))

(assert (= (and b!278244 c!45736) b!278245))

(assert (= (and b!278244 (not c!45736)) b!278248))

(assert (= (and b!278248 c!45735) b!278247))

(assert (= (and b!278248 (not c!45735)) b!278249))

(declare-fun m!293263 () Bool)

(assert (=> b!278249 m!293263))

(assert (=> b!278249 m!293263))

(declare-fun m!293265 () Bool)

(assert (=> b!278249 m!293265))

(declare-fun m!293267 () Bool)

(assert (=> d!64727 m!293267))

(declare-fun m!293269 () Bool)

(assert (=> d!64727 m!293269))

(assert (=> d!64727 m!292999))

(assert (=> d!64727 m!292849))

(assert (=> b!278040 d!64727))

(declare-fun d!64729 () Bool)

(declare-fun lt!138323 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!183 (List!4401) (InoxSet (_ BitVec 64)))

(assert (=> d!64729 (= lt!138323 (select (content!183 Nil!4398) (select (arr!6572 a!3325) #b00000000000000000000000000000000)))))

(declare-fun e!177495 () Bool)

(assert (=> d!64729 (= lt!138323 e!177495)))

(declare-fun res!141883 () Bool)

(assert (=> d!64729 (=> (not res!141883) (not e!177495))))

(assert (=> d!64729 (= res!141883 ((_ is Cons!4397) Nil!4398))))

(assert (=> d!64729 (= (contains!1960 Nil!4398 (select (arr!6572 a!3325) #b00000000000000000000000000000000)) lt!138323)))

(declare-fun b!278254 () Bool)

(declare-fun e!177494 () Bool)

(assert (=> b!278254 (= e!177495 e!177494)))

(declare-fun res!141884 () Bool)

(assert (=> b!278254 (=> res!141884 e!177494)))

(assert (=> b!278254 (= res!141884 (= (h!5064 Nil!4398) (select (arr!6572 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278255 () Bool)

(assert (=> b!278255 (= e!177494 (contains!1960 (t!9491 Nil!4398) (select (arr!6572 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64729 res!141883) b!278254))

(assert (= (and b!278254 (not res!141884)) b!278255))

(declare-fun m!293271 () Bool)

(assert (=> d!64729 m!293271))

(assert (=> d!64729 m!292891))

(declare-fun m!293273 () Bool)

(assert (=> d!64729 m!293273))

(assert (=> b!278255 m!292891))

(declare-fun m!293275 () Bool)

(assert (=> b!278255 m!293275))

(assert (=> b!278010 d!64729))

(check-sat (not b!278139) (not b!278146) (not b!278222) (not bm!25369) (not b!278141) (not d!64691) (not bm!25370) (not bm!25368) (not b!278167) (not b!278174) (not bm!25372) (not d!64715) (not b!278243) (not b!278160) (not b!278203) (not b!278163) (not d!64693) (not b!278137) (not d!64689) (not b!278208) (not d!64697) (not b!278171) (not bm!25371) (not d!64699) (not b!278202) (not d!64723) (not b!278249) (not d!64721) (not d!64683) (not d!64729) (not b!278217) (not b!278175) (not b!278255) (not d!64727) (not b!278143) (not d!64687) (not b!278205) (not b!278149) (not d!64717) (not d!64705) (not b!278219) (not b!278155) (not b!278169))
(check-sat)
