; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26762 () Bool)

(assert start!26762)

(declare-fun b!277914 () Bool)

(declare-fun res!141746 () Bool)

(declare-fun e!177265 () Bool)

(assert (=> b!277914 (=> (not res!141746) (not e!177265))))

(declare-datatypes ((array!13848 0))(
  ( (array!13849 (arr!6573 (Array (_ BitVec 32) (_ BitVec 64))) (size!6925 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13848)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13848 (_ BitVec 32)) Bool)

(assert (=> b!277914 (= res!141746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277915 () Bool)

(declare-fun res!141748 () Bool)

(declare-fun e!177268 () Bool)

(assert (=> b!277915 (=> (not res!141748) (not e!177268))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277915 (= res!141748 (validKeyInArray!0 k!2581))))

(declare-fun e!177266 () Bool)

(declare-fun b!277916 () Bool)

(declare-fun lt!138169 () array!13848)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277916 (= e!177266 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!138169 mask!3868)))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1742 0))(
  ( (MissingZero!1742 (index!9138 (_ BitVec 32))) (Found!1742 (index!9139 (_ BitVec 32))) (Intermediate!1742 (undefined!2554 Bool) (index!9140 (_ BitVec 32)) (x!27347 (_ BitVec 32))) (Undefined!1742) (MissingVacant!1742 (index!9141 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13848 (_ BitVec 32)) SeekEntryResult!1742)

(assert (=> b!277916 (= (seekEntryOrOpen!0 k!2581 lt!138169 mask!3868) (Found!1742 i!1267))))

(declare-datatypes ((Unit!8796 0))(
  ( (Unit!8797) )
))
(declare-fun lt!138168 () Unit!8796)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13848 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8796)

(assert (=> b!277916 (= lt!138168 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!138167 () Unit!8796)

(declare-fun e!177264 () Unit!8796)

(assert (=> b!277916 (= lt!138167 e!177264)))

(declare-fun c!45635 () Bool)

(assert (=> b!277916 (= c!45635 (bvslt startIndex!26 (bvsub (size!6925 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277917 () Bool)

(assert (=> b!277917 (= e!177265 e!177266)))

(declare-fun res!141749 () Bool)

(assert (=> b!277917 (=> (not res!141749) (not e!177266))))

(assert (=> b!277917 (= res!141749 (= startIndex!26 i!1267))))

(assert (=> b!277917 (= lt!138169 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)))))

(declare-fun b!277918 () Bool)

(declare-fun res!141753 () Bool)

(assert (=> b!277918 (=> (not res!141753) (not e!177268))))

(assert (=> b!277918 (= res!141753 (and (= (size!6925 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6925 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6925 a!3325))))))

(declare-fun b!277920 () Bool)

(assert (=> b!277920 (= e!177268 e!177265)))

(declare-fun res!141751 () Bool)

(assert (=> b!277920 (=> (not res!141751) (not e!177265))))

(declare-fun lt!138170 () SeekEntryResult!1742)

(assert (=> b!277920 (= res!141751 (or (= lt!138170 (MissingZero!1742 i!1267)) (= lt!138170 (MissingVacant!1742 i!1267))))))

(assert (=> b!277920 (= lt!138170 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277921 () Bool)

(declare-fun res!141747 () Bool)

(assert (=> b!277921 (=> (not res!141747) (not e!177268))))

(declare-datatypes ((List!4402 0))(
  ( (Nil!4399) (Cons!4398 (h!5065 (_ BitVec 64)) (t!9492 List!4402)) )
))
(declare-fun arrayNoDuplicates!0 (array!13848 (_ BitVec 32) List!4402) Bool)

(assert (=> b!277921 (= res!141747 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4399))))

(declare-fun b!277922 () Bool)

(declare-fun res!141750 () Bool)

(assert (=> b!277922 (=> (not res!141750) (not e!177268))))

(declare-fun arrayContainsKey!0 (array!13848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277922 (= res!141750 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277923 () Bool)

(declare-fun lt!138166 () Unit!8796)

(assert (=> b!277923 (= e!177264 lt!138166)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13848 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8796)

(assert (=> b!277923 (= lt!138166 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277923 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138169 mask!3868)))

(declare-fun b!277919 () Bool)

(declare-fun Unit!8798 () Unit!8796)

(assert (=> b!277919 (= e!177264 Unit!8798)))

(declare-fun res!141752 () Bool)

(assert (=> start!26762 (=> (not res!141752) (not e!177268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26762 (= res!141752 (validMask!0 mask!3868))))

(assert (=> start!26762 e!177268))

(declare-fun array_inv!4527 (array!13848) Bool)

(assert (=> start!26762 (array_inv!4527 a!3325)))

(assert (=> start!26762 true))

(assert (= (and start!26762 res!141752) b!277918))

(assert (= (and b!277918 res!141753) b!277915))

(assert (= (and b!277915 res!141748) b!277921))

(assert (= (and b!277921 res!141747) b!277922))

(assert (= (and b!277922 res!141750) b!277920))

(assert (= (and b!277920 res!141751) b!277914))

(assert (= (and b!277914 res!141746) b!277917))

(assert (= (and b!277917 res!141749) b!277916))

(assert (= (and b!277916 c!45635) b!277923))

(assert (= (and b!277916 (not c!45635)) b!277919))

(declare-fun m!292865 () Bool)

(assert (=> b!277922 m!292865))

(declare-fun m!292867 () Bool)

(assert (=> b!277916 m!292867))

(declare-fun m!292869 () Bool)

(assert (=> b!277916 m!292869))

(declare-fun m!292871 () Bool)

(assert (=> b!277916 m!292871))

(declare-fun m!292873 () Bool)

(assert (=> b!277920 m!292873))

(declare-fun m!292875 () Bool)

(assert (=> b!277923 m!292875))

(declare-fun m!292877 () Bool)

(assert (=> b!277923 m!292877))

(declare-fun m!292879 () Bool)

(assert (=> b!277917 m!292879))

(declare-fun m!292881 () Bool)

(assert (=> b!277921 m!292881))

(declare-fun m!292883 () Bool)

(assert (=> b!277914 m!292883))

(declare-fun m!292885 () Bool)

(assert (=> b!277915 m!292885))

(declare-fun m!292887 () Bool)

(assert (=> start!26762 m!292887))

(declare-fun m!292889 () Bool)

(assert (=> start!26762 m!292889))

(push 1)

(assert (not b!277922))

(assert (not b!277914))

(assert (not b!277916))

(assert (not start!26762))

(assert (not b!277923))

(assert (not b!277920))

(assert (not b!277915))

(assert (not b!277921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64611 () Bool)

(declare-fun e!177286 () Bool)

(assert (=> d!64611 e!177286))

(declare-fun res!141768 () Bool)

(assert (=> d!64611 (=> (not res!141768) (not e!177286))))

(assert (=> d!64611 (= res!141768 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6925 a!3325))))))

(declare-fun lt!138182 () Unit!8796)

(declare-fun choose!98 (array!13848 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8796)

(assert (=> d!64611 (= lt!138182 (choose!98 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> d!64611 (validMask!0 mask!3868)))

(assert (=> d!64611 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) lt!138182)))

(declare-fun b!277944 () Bool)

(assert (=> b!277944 (= e!177286 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) mask!3868))))

(assert (= (and d!64611 res!141768) b!277944))

(declare-fun m!292907 () Bool)

(assert (=> d!64611 m!292907))

(assert (=> d!64611 m!292887))

(assert (=> b!277944 m!292879))

(declare-fun m!292909 () Bool)

(assert (=> b!277944 m!292909))

(assert (=> b!277923 d!64611))

(declare-fun b!277971 () Bool)

(declare-fun e!177302 () Bool)

(declare-fun e!177303 () Bool)

(assert (=> b!277971 (= e!177302 e!177303)))

(declare-fun lt!138199 () (_ BitVec 64))

(assert (=> b!277971 (= lt!138199 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!138200 () Unit!8796)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13848 (_ BitVec 64) (_ BitVec 32)) Unit!8796)

(assert (=> b!277971 (= lt!138200 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138169 lt!138199 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!277971 (arrayContainsKey!0 lt!138169 lt!138199 #b00000000000000000000000000000000)))

(declare-fun lt!138198 () Unit!8796)

(assert (=> b!277971 (= lt!138198 lt!138200)))

(declare-fun res!141774 () Bool)

(assert (=> b!277971 (= res!141774 (= (seekEntryOrOpen!0 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138169 mask!3868) (Found!1742 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!277971 (=> (not res!141774) (not e!177303))))

(declare-fun b!277972 () Bool)

(declare-fun call!25352 () Bool)

(assert (=> b!277972 (= e!177302 call!25352)))

(declare-fun bm!25349 () Bool)

(assert (=> bm!25349 (= call!25352 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!138169 mask!3868))))

(declare-fun d!64615 () Bool)

(declare-fun res!141773 () Bool)

(declare-fun e!177304 () Bool)

(assert (=> d!64615 (=> res!141773 e!177304)))

(assert (=> d!64615 (= res!141773 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!6925 lt!138169)))))

(assert (=> d!64615 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138169 mask!3868) e!177304)))

(declare-fun b!277973 () Bool)

(assert (=> b!277973 (= e!177303 call!25352)))

(declare-fun b!277974 () Bool)

(assert (=> b!277974 (= e!177304 e!177302)))

(declare-fun c!45650 () Bool)

(assert (=> b!277974 (= c!45650 (validKeyInArray!0 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (= (and d!64615 (not res!141773)) b!277974))

(assert (= (and b!277974 c!45650) b!277971))

(assert (= (and b!277974 (not c!45650)) b!277972))

(assert (= (and b!277971 res!141774) b!277973))

(assert (= (or b!277973 b!277972) bm!25349))

(declare-fun m!292925 () Bool)

(assert (=> b!277971 m!292925))

(declare-fun m!292927 () Bool)

(assert (=> b!277971 m!292927))

(declare-fun m!292929 () Bool)

(assert (=> b!277971 m!292929))

(assert (=> b!277971 m!292925))

(declare-fun m!292931 () Bool)

(assert (=> b!277971 m!292931))

(declare-fun m!292933 () Bool)

(assert (=> bm!25349 m!292933))

(assert (=> b!277974 m!292925))

(assert (=> b!277974 m!292925))

(declare-fun m!292935 () Bool)

(assert (=> b!277974 m!292935))

(assert (=> b!277923 d!64615))

(declare-fun d!64623 () Bool)

(declare-fun res!141779 () Bool)

(declare-fun e!177309 () Bool)

(assert (=> d!64623 (=> res!141779 e!177309)))

(assert (=> d!64623 (= res!141779 (= (select (arr!6573 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!64623 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!177309)))

(declare-fun b!277979 () Bool)

(declare-fun e!177310 () Bool)

(assert (=> b!277979 (= e!177309 e!177310)))

(declare-fun res!141780 () Bool)

(assert (=> b!277979 (=> (not res!141780) (not e!177310))))

(assert (=> b!277979 (= res!141780 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6925 a!3325)))))

(declare-fun b!277980 () Bool)

(assert (=> b!277980 (= e!177310 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64623 (not res!141779)) b!277979))

(assert (= (and b!277979 res!141780) b!277980))

(declare-fun m!292937 () Bool)

(assert (=> d!64623 m!292937))

(declare-fun m!292939 () Bool)

(assert (=> b!277980 m!292939))

(assert (=> b!277922 d!64623))

(declare-fun b!277981 () Bool)

(declare-fun e!177311 () Bool)

(declare-fun e!177312 () Bool)

(assert (=> b!277981 (= e!177311 e!177312)))

(declare-fun lt!138204 () (_ BitVec 64))

(assert (=> b!277981 (= lt!138204 (select (arr!6573 lt!138169) startIndex!26))))

(declare-fun lt!138205 () Unit!8796)

(assert (=> b!277981 (= lt!138205 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138169 lt!138204 startIndex!26))))

(assert (=> b!277981 (arrayContainsKey!0 lt!138169 lt!138204 #b00000000000000000000000000000000)))

(declare-fun lt!138203 () Unit!8796)

(assert (=> b!277981 (= lt!138203 lt!138205)))

(declare-fun res!141782 () Bool)

(assert (=> b!277981 (= res!141782 (= (seekEntryOrOpen!0 (select (arr!6573 lt!138169) startIndex!26) lt!138169 mask!3868) (Found!1742 startIndex!26)))))

(assert (=> b!277981 (=> (not res!141782) (not e!177312))))

(declare-fun b!277982 () Bool)

(declare-fun call!25353 () Bool)

(assert (=> b!277982 (= e!177311 call!25353)))

(declare-fun bm!25350 () Bool)

(assert (=> bm!25350 (= call!25353 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!138169 mask!3868))))

(declare-fun d!64627 () Bool)

(declare-fun res!141781 () Bool)

(declare-fun e!177313 () Bool)

(assert (=> d!64627 (=> res!141781 e!177313)))

(assert (=> d!64627 (= res!141781 (bvsge startIndex!26 (size!6925 lt!138169)))))

(assert (=> d!64627 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!138169 mask!3868) e!177313)))

(declare-fun b!277983 () Bool)

(assert (=> b!277983 (= e!177312 call!25353)))

(declare-fun b!277984 () Bool)

(assert (=> b!277984 (= e!177313 e!177311)))

(declare-fun c!45651 () Bool)

(assert (=> b!277984 (= c!45651 (validKeyInArray!0 (select (arr!6573 lt!138169) startIndex!26)))))

(assert (= (and d!64627 (not res!141781)) b!277984))

(assert (= (and b!277984 c!45651) b!277981))

(assert (= (and b!277984 (not c!45651)) b!277982))

(assert (= (and b!277981 res!141782) b!277983))

(assert (= (or b!277983 b!277982) bm!25350))

(declare-fun m!292941 () Bool)

(assert (=> b!277981 m!292941))

(declare-fun m!292943 () Bool)

(assert (=> b!277981 m!292943))

(declare-fun m!292945 () Bool)

(assert (=> b!277981 m!292945))

(assert (=> b!277981 m!292941))

(declare-fun m!292947 () Bool)

(assert (=> b!277981 m!292947))

(declare-fun m!292949 () Bool)

(assert (=> bm!25350 m!292949))

(assert (=> b!277984 m!292941))

(assert (=> b!277984 m!292941))

(declare-fun m!292951 () Bool)

(assert (=> b!277984 m!292951))

(assert (=> b!277916 d!64627))

(declare-fun b!278044 () Bool)

(declare-fun e!177356 () SeekEntryResult!1742)

(assert (=> b!278044 (= e!177356 Undefined!1742)))

(declare-fun b!278045 () Bool)

(declare-fun e!177358 () SeekEntryResult!1742)

(declare-fun lt!138236 () SeekEntryResult!1742)

(assert (=> b!278045 (= e!177358 (Found!1742 (index!9140 lt!138236)))))

(declare-fun e!177357 () SeekEntryResult!1742)

(declare-fun b!278046 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13848 (_ BitVec 32)) SeekEntryResult!1742)

(assert (=> b!278046 (= e!177357 (seekKeyOrZeroReturnVacant!0 (x!27347 lt!138236) (index!9140 lt!138236) (index!9140 lt!138236) k!2581 lt!138169 mask!3868))))

(declare-fun b!278047 () Bool)

(declare-fun c!45669 () Bool)

(declare-fun lt!138234 () (_ BitVec 64))

(assert (=> b!278047 (= c!45669 (= lt!138234 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278047 (= e!177358 e!177357)))

(declare-fun d!64629 () Bool)

(declare-fun lt!138235 () SeekEntryResult!1742)

(assert (=> d!64629 (and (or (is-Undefined!1742 lt!138235) (not (is-Found!1742 lt!138235)) (and (bvsge (index!9139 lt!138235) #b00000000000000000000000000000000) (bvslt (index!9139 lt!138235) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138235) (is-Found!1742 lt!138235) (not (is-MissingZero!1742 lt!138235)) (and (bvsge (index!9138 lt!138235) #b00000000000000000000000000000000) (bvslt (index!9138 lt!138235) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138235) (is-Found!1742 lt!138235) (is-MissingZero!1742 lt!138235) (not (is-MissingVacant!1742 lt!138235)) (and (bvsge (index!9141 lt!138235) #b00000000000000000000000000000000) (bvslt (index!9141 lt!138235) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138235) (ite (is-Found!1742 lt!138235) (= (select (arr!6573 lt!138169) (index!9139 lt!138235)) k!2581) (ite (is-MissingZero!1742 lt!138235) (= (select (arr!6573 lt!138169) (index!9138 lt!138235)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1742 lt!138235) (= (select (arr!6573 lt!138169) (index!9141 lt!138235)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64629 (= lt!138235 e!177356)))

(declare-fun c!45670 () Bool)

(assert (=> d!64629 (= c!45670 (and (is-Intermediate!1742 lt!138236) (undefined!2554 lt!138236)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13848 (_ BitVec 32)) SeekEntryResult!1742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64629 (= lt!138236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 lt!138169 mask!3868))))

(assert (=> d!64629 (validMask!0 mask!3868)))

(assert (=> d!64629 (= (seekEntryOrOpen!0 k!2581 lt!138169 mask!3868) lt!138235)))

(declare-fun b!278048 () Bool)

(assert (=> b!278048 (= e!177357 (MissingZero!1742 (index!9140 lt!138236)))))

(declare-fun b!278049 () Bool)

(assert (=> b!278049 (= e!177356 e!177358)))

(assert (=> b!278049 (= lt!138234 (select (arr!6573 lt!138169) (index!9140 lt!138236)))))

(declare-fun c!45671 () Bool)

(assert (=> b!278049 (= c!45671 (= lt!138234 k!2581))))

(assert (= (and d!64629 c!45670) b!278044))

(assert (= (and d!64629 (not c!45670)) b!278049))

(assert (= (and b!278049 c!45671) b!278045))

(assert (= (and b!278049 (not c!45671)) b!278047))

(assert (= (and b!278047 c!45669) b!278048))

(assert (= (and b!278047 (not c!45669)) b!278046))

(declare-fun m!293011 () Bool)

(assert (=> b!278046 m!293011))

(declare-fun m!293013 () Bool)

(assert (=> d!64629 m!293013))

(declare-fun m!293015 () Bool)

(assert (=> d!64629 m!293015))

(declare-fun m!293017 () Bool)

(assert (=> d!64629 m!293017))

(declare-fun m!293019 () Bool)

(assert (=> d!64629 m!293019))

(assert (=> d!64629 m!293015))

(assert (=> d!64629 m!292887))

(declare-fun m!293021 () Bool)

(assert (=> d!64629 m!293021))

(declare-fun m!293023 () Bool)

(assert (=> b!278049 m!293023))

(assert (=> b!277916 d!64629))

(declare-fun d!64647 () Bool)

(declare-fun e!177370 () Bool)

(assert (=> d!64647 e!177370))

(declare-fun res!141810 () Bool)

(assert (=> d!64647 (=> (not res!141810) (not e!177370))))

(assert (=> d!64647 (= res!141810 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6925 a!3325))))))

(declare-fun lt!138248 () Unit!8796)

(declare-fun choose!8 (array!13848 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8796)

(assert (=> d!64647 (= lt!138248 (choose!8 a!3325 i!1267 k!2581 mask!3868))))

(assert (=> d!64647 (validMask!0 mask!3868)))

(assert (=> d!64647 (= (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868) lt!138248)))

(declare-fun b!278070 () Bool)

(assert (=> b!278070 (= e!177370 (= (seekEntryOrOpen!0 k!2581 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) mask!3868) (Found!1742 i!1267)))))

(assert (= (and d!64647 res!141810) b!278070))

(declare-fun m!293025 () Bool)

(assert (=> d!64647 m!293025))

(assert (=> d!64647 m!292887))

(assert (=> b!278070 m!292879))

(declare-fun m!293031 () Bool)

(assert (=> b!278070 m!293031))

(assert (=> b!277916 d!64647))

(declare-fun d!64649 () Bool)

(assert (=> d!64649 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26762 d!64649))

(declare-fun d!64661 () Bool)

(assert (=> d!64661 (= (array_inv!4527 a!3325) (bvsge (size!6925 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26762 d!64661))

(declare-fun b!278096 () Bool)

(declare-fun e!177391 () Bool)

(declare-fun e!177390 () Bool)

(assert (=> b!278096 (= e!177391 e!177390)))

(declare-fun c!45687 () Bool)

(assert (=> b!278096 (= c!45687 (validKeyInArray!0 (select (arr!6573 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25362 () Bool)

(declare-fun call!25365 () Bool)

(assert (=> bm!25362 (= call!25365 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45687 (Cons!4398 (select (arr!6573 a!3325) #b00000000000000000000000000000000) Nil!4399) Nil!4399)))))

(declare-fun b!278098 () Bool)

(assert (=> b!278098 (= e!177390 call!25365)))

(declare-fun b!278099 () Bool)

(assert (=> b!278099 (= e!177390 call!25365)))

(declare-fun b!278100 () Bool)

(declare-fun e!177392 () Bool)

(assert (=> b!278100 (= e!177392 e!177391)))

(declare-fun res!141824 () Bool)

(assert (=> b!278100 (=> (not res!141824) (not e!177391))))

(declare-fun e!177393 () Bool)

(assert (=> b!278100 (= res!141824 (not e!177393))))

(declare-fun res!141825 () Bool)

(assert (=> b!278100 (=> (not res!141825) (not e!177393))))

(assert (=> b!278100 (= res!141825 (validKeyInArray!0 (select (arr!6573 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278097 () Bool)

(declare-fun contains!1961 (List!4402 (_ BitVec 64)) Bool)

(assert (=> b!278097 (= e!177393 (contains!1961 Nil!4399 (select (arr!6573 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64663 () Bool)

(declare-fun res!141826 () Bool)

(assert (=> d!64663 (=> res!141826 e!177392)))

(assert (=> d!64663 (= res!141826 (bvsge #b00000000000000000000000000000000 (size!6925 a!3325)))))

(assert (=> d!64663 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4399) e!177392)))

(assert (= (and d!64663 (not res!141826)) b!278100))

(assert (= (and b!278100 res!141825) b!278097))

(assert (= (and b!278100 res!141824) b!278096))

(assert (= (and b!278096 c!45687) b!278099))

(assert (= (and b!278096 (not c!45687)) b!278098))

(assert (= (or b!278099 b!278098) bm!25362))

(assert (=> b!278096 m!292937))

(assert (=> b!278096 m!292937))

(declare-fun m!293071 () Bool)

(assert (=> b!278096 m!293071))

(assert (=> bm!25362 m!292937))

(declare-fun m!293073 () Bool)

(assert (=> bm!25362 m!293073))

(assert (=> b!278100 m!292937))

(assert (=> b!278100 m!292937))

(assert (=> b!278100 m!293071))

(assert (=> b!278097 m!292937))

(assert (=> b!278097 m!292937))

(declare-fun m!293075 () Bool)

(assert (=> b!278097 m!293075))

(assert (=> b!277921 d!64663))

(declare-fun b!278102 () Bool)

(declare-fun e!177395 () SeekEntryResult!1742)

(assert (=> b!278102 (= e!177395 Undefined!1742)))

(declare-fun b!278103 () Bool)

(declare-fun e!177397 () SeekEntryResult!1742)

(declare-fun lt!138263 () SeekEntryResult!1742)

(assert (=> b!278103 (= e!177397 (Found!1742 (index!9140 lt!138263)))))

(declare-fun e!177396 () SeekEntryResult!1742)

(declare-fun b!278104 () Bool)

(assert (=> b!278104 (= e!177396 (seekKeyOrZeroReturnVacant!0 (x!27347 lt!138263) (index!9140 lt!138263) (index!9140 lt!138263) k!2581 a!3325 mask!3868))))

(declare-fun b!278105 () Bool)

(declare-fun c!45688 () Bool)

(declare-fun lt!138261 () (_ BitVec 64))

(assert (=> b!278105 (= c!45688 (= lt!138261 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278105 (= e!177397 e!177396)))

(declare-fun d!64665 () Bool)

(declare-fun lt!138262 () SeekEntryResult!1742)

(assert (=> d!64665 (and (or (is-Undefined!1742 lt!138262) (not (is-Found!1742 lt!138262)) (and (bvsge (index!9139 lt!138262) #b00000000000000000000000000000000) (bvslt (index!9139 lt!138262) (size!6925 a!3325)))) (or (is-Undefined!1742 lt!138262) (is-Found!1742 lt!138262) (not (is-MissingZero!1742 lt!138262)) (and (bvsge (index!9138 lt!138262) #b00000000000000000000000000000000) (bvslt (index!9138 lt!138262) (size!6925 a!3325)))) (or (is-Undefined!1742 lt!138262) (is-Found!1742 lt!138262) (is-MissingZero!1742 lt!138262) (not (is-MissingVacant!1742 lt!138262)) (and (bvsge (index!9141 lt!138262) #b00000000000000000000000000000000) (bvslt (index!9141 lt!138262) (size!6925 a!3325)))) (or (is-Undefined!1742 lt!138262) (ite (is-Found!1742 lt!138262) (= (select (arr!6573 a!3325) (index!9139 lt!138262)) k!2581) (ite (is-MissingZero!1742 lt!138262) (= (select (arr!6573 a!3325) (index!9138 lt!138262)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1742 lt!138262) (= (select (arr!6573 a!3325) (index!9141 lt!138262)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64665 (= lt!138262 e!177395)))

(declare-fun c!45689 () Bool)

(assert (=> d!64665 (= c!45689 (and (is-Intermediate!1742 lt!138263) (undefined!2554 lt!138263)))))

(assert (=> d!64665 (= lt!138263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!64665 (validMask!0 mask!3868)))

(assert (=> d!64665 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138262)))

(declare-fun b!278106 () Bool)

(assert (=> b!278106 (= e!177396 (MissingZero!1742 (index!9140 lt!138263)))))

(declare-fun b!278107 () Bool)

(assert (=> b!278107 (= e!177395 e!177397)))

(assert (=> b!278107 (= lt!138261 (select (arr!6573 a!3325) (index!9140 lt!138263)))))

(declare-fun c!45690 () Bool)

(assert (=> b!278107 (= c!45690 (= lt!138261 k!2581))))

(assert (= (and d!64665 c!45689) b!278102))

(assert (= (and d!64665 (not c!45689)) b!278107))

(assert (= (and b!278107 c!45690) b!278103))

(assert (= (and b!278107 (not c!45690)) b!278105))

(assert (= (and b!278105 c!45688) b!278106))

(assert (= (and b!278105 (not c!45688)) b!278104))

(declare-fun m!293081 () Bool)

(assert (=> b!278104 m!293081))

(declare-fun m!293083 () Bool)

(assert (=> d!64665 m!293083))

(assert (=> d!64665 m!293015))

(declare-fun m!293085 () Bool)

(assert (=> d!64665 m!293085))

(declare-fun m!293087 () Bool)

(assert (=> d!64665 m!293087))

(assert (=> d!64665 m!293015))

(assert (=> d!64665 m!292887))

(declare-fun m!293091 () Bool)

(assert (=> d!64665 m!293091))

(declare-fun m!293093 () Bool)

(assert (=> b!278107 m!293093))

(assert (=> b!277920 d!64665))

(declare-fun d!64669 () Bool)

(assert (=> d!64669 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!277915 d!64669))

(declare-fun b!278112 () Bool)

(declare-fun e!177401 () Bool)

(declare-fun e!177402 () Bool)

(assert (=> b!278112 (= e!177401 e!177402)))

(declare-fun lt!138268 () (_ BitVec 64))

(assert (=> b!278112 (= lt!138268 (select (arr!6573 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!138269 () Unit!8796)

(assert (=> b!278112 (= lt!138269 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138268 #b00000000000000000000000000000000))))

(assert (=> b!278112 (arrayContainsKey!0 a!3325 lt!138268 #b00000000000000000000000000000000)))

(declare-fun lt!138267 () Unit!8796)

(assert (=> b!278112 (= lt!138267 lt!138269)))

(declare-fun res!141831 () Bool)

(assert (=> b!278112 (= res!141831 (= (seekEntryOrOpen!0 (select (arr!6573 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1742 #b00000000000000000000000000000000)))))

(assert (=> b!278112 (=> (not res!141831) (not e!177402))))

(declare-fun b!278113 () Bool)

(declare-fun call!25367 () Bool)

(assert (=> b!278113 (= e!177401 call!25367)))

(declare-fun bm!25364 () Bool)

(assert (=> bm!25364 (= call!25367 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!64673 () Bool)

(declare-fun res!141830 () Bool)

(declare-fun e!177403 () Bool)

(assert (=> d!64673 (=> res!141830 e!177403)))

(assert (=> d!64673 (= res!141830 (bvsge #b00000000000000000000000000000000 (size!6925 a!3325)))))

(assert (=> d!64673 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!177403)))

(declare-fun b!278114 () Bool)

(assert (=> b!278114 (= e!177402 call!25367)))

(declare-fun b!278115 () Bool)

(assert (=> b!278115 (= e!177403 e!177401)))

(declare-fun c!45692 () Bool)

(assert (=> b!278115 (= c!45692 (validKeyInArray!0 (select (arr!6573 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64673 (not res!141830)) b!278115))

(assert (= (and b!278115 c!45692) b!278112))

(assert (= (and b!278115 (not c!45692)) b!278113))

(assert (= (and b!278112 res!141831) b!278114))

(assert (= (or b!278114 b!278113) bm!25364))

(assert (=> b!278112 m!292937))

(declare-fun m!293105 () Bool)

(assert (=> b!278112 m!293105))

(declare-fun m!293107 () Bool)

(assert (=> b!278112 m!293107))

(assert (=> b!278112 m!292937))

(declare-fun m!293109 () Bool)

(assert (=> b!278112 m!293109))

(declare-fun m!293111 () Bool)

(assert (=> bm!25364 m!293111))

(assert (=> b!278115 m!292937))

(assert (=> b!278115 m!292937))

(assert (=> b!278115 m!293071))

(assert (=> b!277914 d!64673))

(push 1)

(assert (not b!278104))

(assert (not b!277971))

(assert (not b!277974))

(assert (not b!278046))

(assert (not bm!25350))

(assert (not b!278115))

(assert (not d!64629))

(assert (not b!278070))

(assert (not bm!25364))

(assert (not bm!25362))

(assert (not b!278112))

(assert (not d!64647))

(assert (not b!277980))

(assert (not b!277944))

(assert (not b!278097))

(assert (not d!64665))

(assert (not b!278096))

(assert (not bm!25349))

(assert (not b!278100))

(assert (not b!277984))

(assert (not b!277981))

(assert (not d!64611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64753 () Bool)

(declare-fun res!141894 () Bool)

(declare-fun e!177525 () Bool)

(assert (=> d!64753 (=> res!141894 e!177525)))

(assert (=> d!64753 (= res!141894 (= (select (arr!6573 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!2581))))

(assert (=> d!64753 (= (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!177525)))

(declare-fun b!278305 () Bool)

(declare-fun e!177526 () Bool)

(assert (=> b!278305 (= e!177525 e!177526)))

(declare-fun res!141895 () Bool)

(assert (=> b!278305 (=> (not res!141895) (not e!177526))))

(assert (=> b!278305 (= res!141895 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6925 a!3325)))))

(declare-fun b!278306 () Bool)

(assert (=> b!278306 (= e!177526 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!64753 (not res!141894)) b!278305))

(assert (= (and b!278305 res!141895) b!278306))

(declare-fun m!293347 () Bool)

(assert (=> d!64753 m!293347))

(declare-fun m!293349 () Bool)

(assert (=> b!278306 m!293349))

(assert (=> b!277980 d!64753))

(declare-fun b!278307 () Bool)

(declare-fun e!177527 () Bool)

(declare-fun e!177528 () Bool)

(assert (=> b!278307 (= e!177527 e!177528)))

(declare-fun lt!138345 () (_ BitVec 64))

(assert (=> b!278307 (= lt!138345 (select (arr!6573 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!138346 () Unit!8796)

(assert (=> b!278307 (= lt!138346 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138345 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!278307 (arrayContainsKey!0 a!3325 lt!138345 #b00000000000000000000000000000000)))

(declare-fun lt!138344 () Unit!8796)

(assert (=> b!278307 (= lt!138344 lt!138346)))

(declare-fun res!141897 () Bool)

(assert (=> b!278307 (= res!141897 (= (seekEntryOrOpen!0 (select (arr!6573 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!278307 (=> (not res!141897) (not e!177528))))

(declare-fun b!278308 () Bool)

(declare-fun call!25378 () Bool)

(assert (=> b!278308 (= e!177527 call!25378)))

(declare-fun bm!25375 () Bool)

(assert (=> bm!25375 (= call!25378 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!64755 () Bool)

(declare-fun res!141896 () Bool)

(declare-fun e!177529 () Bool)

(assert (=> d!64755 (=> res!141896 e!177529)))

(assert (=> d!64755 (= res!141896 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6925 a!3325)))))

(assert (=> d!64755 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868) e!177529)))

(declare-fun b!278309 () Bool)

(assert (=> b!278309 (= e!177528 call!25378)))

(declare-fun b!278310 () Bool)

(assert (=> b!278310 (= e!177529 e!177527)))

(declare-fun c!45757 () Bool)

(assert (=> b!278310 (= c!45757 (validKeyInArray!0 (select (arr!6573 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!64755 (not res!141896)) b!278310))

(assert (= (and b!278310 c!45757) b!278307))

(assert (= (and b!278310 (not c!45757)) b!278308))

(assert (= (and b!278307 res!141897) b!278309))

(assert (= (or b!278309 b!278308) bm!25375))

(assert (=> b!278307 m!293347))

(declare-fun m!293351 () Bool)

(assert (=> b!278307 m!293351))

(declare-fun m!293353 () Bool)

(assert (=> b!278307 m!293353))

(assert (=> b!278307 m!293347))

(declare-fun m!293355 () Bool)

(assert (=> b!278307 m!293355))

(declare-fun m!293357 () Bool)

(assert (=> bm!25375 m!293357))

(assert (=> b!278310 m!293347))

(assert (=> b!278310 m!293347))

(declare-fun m!293359 () Bool)

(assert (=> b!278310 m!293359))

(assert (=> bm!25364 d!64755))

(declare-fun b!278311 () Bool)

(declare-fun e!177530 () Bool)

(declare-fun e!177531 () Bool)

(assert (=> b!278311 (= e!177530 e!177531)))

(declare-fun lt!138348 () (_ BitVec 64))

(assert (=> b!278311 (= lt!138348 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!138349 () Unit!8796)

(assert (=> b!278311 (= lt!138349 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138169 lt!138348 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!278311 (arrayContainsKey!0 lt!138169 lt!138348 #b00000000000000000000000000000000)))

(declare-fun lt!138347 () Unit!8796)

(assert (=> b!278311 (= lt!138347 lt!138349)))

(declare-fun res!141899 () Bool)

(assert (=> b!278311 (= res!141899 (= (seekEntryOrOpen!0 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)) lt!138169 mask!3868) (Found!1742 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!278311 (=> (not res!141899) (not e!177531))))

(declare-fun b!278312 () Bool)

(declare-fun call!25379 () Bool)

(assert (=> b!278312 (= e!177530 call!25379)))

(declare-fun bm!25376 () Bool)

(assert (=> bm!25376 (= call!25379 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!138169 mask!3868))))

(declare-fun d!64757 () Bool)

(declare-fun res!141898 () Bool)

(declare-fun e!177532 () Bool)

(assert (=> d!64757 (=> res!141898 e!177532)))

(assert (=> d!64757 (= res!141898 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) (size!6925 lt!138169)))))

(assert (=> d!64757 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!138169 mask!3868) e!177532)))

(declare-fun b!278313 () Bool)

(assert (=> b!278313 (= e!177531 call!25379)))

(declare-fun b!278314 () Bool)

(assert (=> b!278314 (= e!177532 e!177530)))

(declare-fun c!45758 () Bool)

(assert (=> b!278314 (= c!45758 (validKeyInArray!0 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001))))))

(assert (= (and d!64757 (not res!141898)) b!278314))

(assert (= (and b!278314 c!45758) b!278311))

(assert (= (and b!278314 (not c!45758)) b!278312))

(assert (= (and b!278311 res!141899) b!278313))

(assert (= (or b!278313 b!278312) bm!25376))

(declare-fun m!293361 () Bool)

(assert (=> b!278311 m!293361))

(declare-fun m!293363 () Bool)

(assert (=> b!278311 m!293363))

(declare-fun m!293365 () Bool)

(assert (=> b!278311 m!293365))

(assert (=> b!278311 m!293361))

(declare-fun m!293367 () Bool)

(assert (=> b!278311 m!293367))

(declare-fun m!293369 () Bool)

(assert (=> bm!25376 m!293369))

(assert (=> b!278314 m!293361))

(assert (=> b!278314 m!293361))

(declare-fun m!293371 () Bool)

(assert (=> b!278314 m!293371))

(assert (=> bm!25349 d!64757))

(declare-fun d!64759 () Bool)

(assert (=> d!64759 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) mask!3868)))

(assert (=> d!64759 true))

(declare-fun _$55!36 () Unit!8796)

(assert (=> d!64759 (= (choose!98 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) _$55!36)))

(declare-fun bs!9920 () Bool)

(assert (= bs!9920 d!64759))

(assert (=> bs!9920 m!292879))

(assert (=> bs!9920 m!292909))

(assert (=> d!64611 d!64759))

(assert (=> d!64611 d!64649))

(declare-fun b!278355 () Bool)

(declare-fun e!177564 () Bool)

(declare-fun e!177563 () Bool)

(assert (=> b!278355 (= e!177564 e!177563)))

(declare-fun res!141919 () Bool)

(declare-fun lt!138368 () SeekEntryResult!1742)

(assert (=> b!278355 (= res!141919 (and (is-Intermediate!1742 lt!138368) (not (undefined!2554 lt!138368)) (bvslt (x!27347 lt!138368) #b01111111111111111111111111111110) (bvsge (x!27347 lt!138368) #b00000000000000000000000000000000) (bvsge (x!27347 lt!138368) #b00000000000000000000000000000000)))))

(assert (=> b!278355 (=> (not res!141919) (not e!177563))))

(declare-fun b!278356 () Bool)

(assert (=> b!278356 (and (bvsge (index!9140 lt!138368) #b00000000000000000000000000000000) (bvslt (index!9140 lt!138368) (size!6925 a!3325)))))

(declare-fun e!177560 () Bool)

(assert (=> b!278356 (= e!177560 (= (select (arr!6573 a!3325) (index!9140 lt!138368)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!278357 () Bool)

(declare-fun e!177562 () SeekEntryResult!1742)

(assert (=> b!278357 (= e!177562 (Intermediate!1742 false (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!278359 () Bool)

(declare-fun e!177561 () SeekEntryResult!1742)

(assert (=> b!278359 (= e!177561 e!177562)))

(declare-fun c!45770 () Bool)

(declare-fun lt!138367 () (_ BitVec 64))

(assert (=> b!278359 (= c!45770 (or (= lt!138367 k!2581) (= (bvadd lt!138367 lt!138367) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!278360 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!278360 (= e!177562 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k!2581 a!3325 mask!3868))))

(declare-fun b!278361 () Bool)

(assert (=> b!278361 (and (bvsge (index!9140 lt!138368) #b00000000000000000000000000000000) (bvslt (index!9140 lt!138368) (size!6925 a!3325)))))

(declare-fun res!141918 () Bool)

(assert (=> b!278361 (= res!141918 (= (select (arr!6573 a!3325) (index!9140 lt!138368)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278361 (=> res!141918 e!177560)))

(declare-fun b!278362 () Bool)

(assert (=> b!278362 (= e!177561 (Intermediate!1742 true (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!278363 () Bool)

(assert (=> b!278363 (= e!177564 (bvsge (x!27347 lt!138368) #b01111111111111111111111111111110))))

(declare-fun d!64765 () Bool)

(assert (=> d!64765 e!177564))

(declare-fun c!45772 () Bool)

(assert (=> d!64765 (= c!45772 (and (is-Intermediate!1742 lt!138368) (undefined!2554 lt!138368)))))

(assert (=> d!64765 (= lt!138368 e!177561)))

(declare-fun c!45771 () Bool)

(assert (=> d!64765 (= c!45771 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!64765 (= lt!138367 (select (arr!6573 a!3325) (toIndex!0 k!2581 mask!3868)))))

(assert (=> d!64765 (validMask!0 mask!3868)))

(assert (=> d!64765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868) lt!138368)))

(declare-fun b!278358 () Bool)

(assert (=> b!278358 (and (bvsge (index!9140 lt!138368) #b00000000000000000000000000000000) (bvslt (index!9140 lt!138368) (size!6925 a!3325)))))

(declare-fun res!141920 () Bool)

(assert (=> b!278358 (= res!141920 (= (select (arr!6573 a!3325) (index!9140 lt!138368)) k!2581))))

(assert (=> b!278358 (=> res!141920 e!177560)))

(assert (=> b!278358 (= e!177563 e!177560)))

(assert (= (and d!64765 c!45771) b!278362))

(assert (= (and d!64765 (not c!45771)) b!278359))

(assert (= (and b!278359 c!45770) b!278357))

(assert (= (and b!278359 (not c!45770)) b!278360))

(assert (= (and d!64765 c!45772) b!278363))

(assert (= (and d!64765 (not c!45772)) b!278355))

(assert (= (and b!278355 res!141919) b!278358))

(assert (= (and b!278358 (not res!141920)) b!278361))

(assert (= (and b!278361 (not res!141918)) b!278356))

(assert (=> d!64765 m!293015))

(declare-fun m!293417 () Bool)

(assert (=> d!64765 m!293417))

(assert (=> d!64765 m!292887))

(declare-fun m!293419 () Bool)

(assert (=> b!278356 m!293419))

(assert (=> b!278361 m!293419))

(assert (=> b!278358 m!293419))

(assert (=> b!278360 m!293015))

(declare-fun m!293421 () Bool)

(assert (=> b!278360 m!293421))

(assert (=> b!278360 m!293421))

(declare-fun m!293423 () Bool)

(assert (=> b!278360 m!293423))

(assert (=> d!64665 d!64765))

(declare-fun d!64783 () Bool)

(declare-fun lt!138378 () (_ BitVec 32))

(declare-fun lt!138377 () (_ BitVec 32))

(assert (=> d!64783 (= lt!138378 (bvmul (bvxor lt!138377 (bvlshr lt!138377 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!64783 (= lt!138377 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!64783 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!141921 (let ((h!5067 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27354 (bvmul (bvxor h!5067 (bvlshr h!5067 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27354 (bvlshr x!27354 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!141921 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!141921 #b00000000000000000000000000000000))))))

(assert (=> d!64783 (= (toIndex!0 k!2581 mask!3868) (bvand (bvxor lt!138378 (bvlshr lt!138378 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!64665 d!64783))

(assert (=> d!64665 d!64649))

(declare-fun d!64785 () Bool)

(assert (=> d!64785 (arrayContainsKey!0 lt!138169 lt!138204 #b00000000000000000000000000000000)))

(declare-fun lt!138383 () Unit!8796)

(declare-fun choose!13 (array!13848 (_ BitVec 64) (_ BitVec 32)) Unit!8796)

(assert (=> d!64785 (= lt!138383 (choose!13 lt!138169 lt!138204 startIndex!26))))

(assert (=> d!64785 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!64785 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138169 lt!138204 startIndex!26) lt!138383)))

(declare-fun bs!9923 () Bool)

(assert (= bs!9923 d!64785))

(assert (=> bs!9923 m!292945))

(declare-fun m!293433 () Bool)

(assert (=> bs!9923 m!293433))

(assert (=> b!277981 d!64785))

(declare-fun d!64789 () Bool)

(declare-fun res!141931 () Bool)

(declare-fun e!177580 () Bool)

(assert (=> d!64789 (=> res!141931 e!177580)))

(assert (=> d!64789 (= res!141931 (= (select (arr!6573 lt!138169) #b00000000000000000000000000000000) lt!138204))))

(assert (=> d!64789 (= (arrayContainsKey!0 lt!138169 lt!138204 #b00000000000000000000000000000000) e!177580)))

(declare-fun b!278391 () Bool)

(declare-fun e!177581 () Bool)

(assert (=> b!278391 (= e!177580 e!177581)))

(declare-fun res!141932 () Bool)

(assert (=> b!278391 (=> (not res!141932) (not e!177581))))

(assert (=> b!278391 (= res!141932 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6925 lt!138169)))))

(declare-fun b!278392 () Bool)

(assert (=> b!278392 (= e!177581 (arrayContainsKey!0 lt!138169 lt!138204 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64789 (not res!141931)) b!278391))

(assert (= (and b!278391 res!141932) b!278392))

(declare-fun m!293435 () Bool)

(assert (=> d!64789 m!293435))

(declare-fun m!293437 () Bool)

(assert (=> b!278392 m!293437))

(assert (=> b!277981 d!64789))

(declare-fun b!278393 () Bool)

(declare-fun e!177582 () SeekEntryResult!1742)

(assert (=> b!278393 (= e!177582 Undefined!1742)))

(declare-fun b!278394 () Bool)

(declare-fun e!177584 () SeekEntryResult!1742)

(declare-fun lt!138386 () SeekEntryResult!1742)

(assert (=> b!278394 (= e!177584 (Found!1742 (index!9140 lt!138386)))))

(declare-fun b!278395 () Bool)

(declare-fun e!177583 () SeekEntryResult!1742)

(assert (=> b!278395 (= e!177583 (seekKeyOrZeroReturnVacant!0 (x!27347 lt!138386) (index!9140 lt!138386) (index!9140 lt!138386) (select (arr!6573 lt!138169) startIndex!26) lt!138169 mask!3868))))

(declare-fun b!278396 () Bool)

(declare-fun c!45782 () Bool)

(declare-fun lt!138384 () (_ BitVec 64))

(assert (=> b!278396 (= c!45782 (= lt!138384 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278396 (= e!177584 e!177583)))

(declare-fun d!64791 () Bool)

(declare-fun lt!138385 () SeekEntryResult!1742)

(assert (=> d!64791 (and (or (is-Undefined!1742 lt!138385) (not (is-Found!1742 lt!138385)) (and (bvsge (index!9139 lt!138385) #b00000000000000000000000000000000) (bvslt (index!9139 lt!138385) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138385) (is-Found!1742 lt!138385) (not (is-MissingZero!1742 lt!138385)) (and (bvsge (index!9138 lt!138385) #b00000000000000000000000000000000) (bvslt (index!9138 lt!138385) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138385) (is-Found!1742 lt!138385) (is-MissingZero!1742 lt!138385) (not (is-MissingVacant!1742 lt!138385)) (and (bvsge (index!9141 lt!138385) #b00000000000000000000000000000000) (bvslt (index!9141 lt!138385) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138385) (ite (is-Found!1742 lt!138385) (= (select (arr!6573 lt!138169) (index!9139 lt!138385)) (select (arr!6573 lt!138169) startIndex!26)) (ite (is-MissingZero!1742 lt!138385) (= (select (arr!6573 lt!138169) (index!9138 lt!138385)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1742 lt!138385) (= (select (arr!6573 lt!138169) (index!9141 lt!138385)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64791 (= lt!138385 e!177582)))

(declare-fun c!45783 () Bool)

(assert (=> d!64791 (= c!45783 (and (is-Intermediate!1742 lt!138386) (undefined!2554 lt!138386)))))

(assert (=> d!64791 (= lt!138386 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6573 lt!138169) startIndex!26) mask!3868) (select (arr!6573 lt!138169) startIndex!26) lt!138169 mask!3868))))

(assert (=> d!64791 (validMask!0 mask!3868)))

(assert (=> d!64791 (= (seekEntryOrOpen!0 (select (arr!6573 lt!138169) startIndex!26) lt!138169 mask!3868) lt!138385)))

(declare-fun b!278397 () Bool)

(assert (=> b!278397 (= e!177583 (MissingZero!1742 (index!9140 lt!138386)))))

(declare-fun b!278398 () Bool)

(assert (=> b!278398 (= e!177582 e!177584)))

(assert (=> b!278398 (= lt!138384 (select (arr!6573 lt!138169) (index!9140 lt!138386)))))

(declare-fun c!45784 () Bool)

(assert (=> b!278398 (= c!45784 (= lt!138384 (select (arr!6573 lt!138169) startIndex!26)))))

(assert (= (and d!64791 c!45783) b!278393))

(assert (= (and d!64791 (not c!45783)) b!278398))

(assert (= (and b!278398 c!45784) b!278394))

(assert (= (and b!278398 (not c!45784)) b!278396))

(assert (= (and b!278396 c!45782) b!278397))

(assert (= (and b!278396 (not c!45782)) b!278395))

(assert (=> b!278395 m!292941))

(declare-fun m!293439 () Bool)

(assert (=> b!278395 m!293439))

(declare-fun m!293441 () Bool)

(assert (=> d!64791 m!293441))

(declare-fun m!293443 () Bool)

(assert (=> d!64791 m!293443))

(assert (=> d!64791 m!292941))

(declare-fun m!293445 () Bool)

(assert (=> d!64791 m!293445))

(declare-fun m!293447 () Bool)

(assert (=> d!64791 m!293447))

(assert (=> d!64791 m!292941))

(assert (=> d!64791 m!293443))

(assert (=> d!64791 m!292887))

(declare-fun m!293449 () Bool)

(assert (=> d!64791 m!293449))

(declare-fun m!293451 () Bool)

(assert (=> b!278398 m!293451))

(assert (=> b!277981 d!64791))

(declare-fun d!64793 () Bool)

(assert (=> d!64793 (= (validKeyInArray!0 (select (arr!6573 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6573 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6573 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278115 d!64793))

(assert (=> b!278100 d!64793))

(declare-fun d!64795 () Bool)

(assert (=> d!64795 (arrayContainsKey!0 lt!138169 lt!138199 #b00000000000000000000000000000000)))

(declare-fun lt!138387 () Unit!8796)

(assert (=> d!64795 (= lt!138387 (choose!13 lt!138169 lt!138199 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> d!64795 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))

(assert (=> d!64795 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138169 lt!138199 (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138387)))

(declare-fun bs!9924 () Bool)

(assert (= bs!9924 d!64795))

(assert (=> bs!9924 m!292929))

(declare-fun m!293453 () Bool)

(assert (=> bs!9924 m!293453))

(assert (=> b!277971 d!64795))

(declare-fun d!64797 () Bool)

(declare-fun res!141934 () Bool)

(declare-fun e!177585 () Bool)

(assert (=> d!64797 (=> res!141934 e!177585)))

(assert (=> d!64797 (= res!141934 (= (select (arr!6573 lt!138169) #b00000000000000000000000000000000) lt!138199))))

(assert (=> d!64797 (= (arrayContainsKey!0 lt!138169 lt!138199 #b00000000000000000000000000000000) e!177585)))

(declare-fun b!278399 () Bool)

(declare-fun e!177586 () Bool)

(assert (=> b!278399 (= e!177585 e!177586)))

(declare-fun res!141935 () Bool)

(assert (=> b!278399 (=> (not res!141935) (not e!177586))))

(assert (=> b!278399 (= res!141935 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6925 lt!138169)))))

(declare-fun b!278400 () Bool)

(assert (=> b!278400 (= e!177586 (arrayContainsKey!0 lt!138169 lt!138199 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64797 (not res!141934)) b!278399))

(assert (= (and b!278399 res!141935) b!278400))

(assert (=> d!64797 m!293435))

(declare-fun m!293455 () Bool)

(assert (=> b!278400 m!293455))

(assert (=> b!277971 d!64797))

(declare-fun b!278401 () Bool)

(declare-fun e!177587 () SeekEntryResult!1742)

(assert (=> b!278401 (= e!177587 Undefined!1742)))

(declare-fun b!278402 () Bool)

(declare-fun e!177589 () SeekEntryResult!1742)

(declare-fun lt!138390 () SeekEntryResult!1742)

(assert (=> b!278402 (= e!177589 (Found!1742 (index!9140 lt!138390)))))

(declare-fun b!278403 () Bool)

(declare-fun e!177588 () SeekEntryResult!1742)

(assert (=> b!278403 (= e!177588 (seekKeyOrZeroReturnVacant!0 (x!27347 lt!138390) (index!9140 lt!138390) (index!9140 lt!138390) (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138169 mask!3868))))

(declare-fun b!278404 () Bool)

(declare-fun c!45785 () Bool)

(declare-fun lt!138388 () (_ BitVec 64))

(assert (=> b!278404 (= c!45785 (= lt!138388 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278404 (= e!177589 e!177588)))

(declare-fun d!64799 () Bool)

(declare-fun lt!138389 () SeekEntryResult!1742)

(assert (=> d!64799 (and (or (is-Undefined!1742 lt!138389) (not (is-Found!1742 lt!138389)) (and (bvsge (index!9139 lt!138389) #b00000000000000000000000000000000) (bvslt (index!9139 lt!138389) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138389) (is-Found!1742 lt!138389) (not (is-MissingZero!1742 lt!138389)) (and (bvsge (index!9138 lt!138389) #b00000000000000000000000000000000) (bvslt (index!9138 lt!138389) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138389) (is-Found!1742 lt!138389) (is-MissingZero!1742 lt!138389) (not (is-MissingVacant!1742 lt!138389)) (and (bvsge (index!9141 lt!138389) #b00000000000000000000000000000000) (bvslt (index!9141 lt!138389) (size!6925 lt!138169)))) (or (is-Undefined!1742 lt!138389) (ite (is-Found!1742 lt!138389) (= (select (arr!6573 lt!138169) (index!9139 lt!138389)) (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26))) (ite (is-MissingZero!1742 lt!138389) (= (select (arr!6573 lt!138169) (index!9138 lt!138389)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1742 lt!138389) (= (select (arr!6573 lt!138169) (index!9141 lt!138389)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64799 (= lt!138389 e!177587)))

(declare-fun c!45786 () Bool)

(assert (=> d!64799 (= c!45786 (and (is-Intermediate!1742 lt!138390) (undefined!2554 lt!138390)))))

(assert (=> d!64799 (= lt!138390 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26)) mask!3868) (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138169 mask!3868))))

(assert (=> d!64799 (validMask!0 mask!3868)))

(assert (=> d!64799 (= (seekEntryOrOpen!0 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138169 mask!3868) lt!138389)))

(declare-fun b!278405 () Bool)

(assert (=> b!278405 (= e!177588 (MissingZero!1742 (index!9140 lt!138390)))))

(declare-fun b!278406 () Bool)

(assert (=> b!278406 (= e!177587 e!177589)))

(assert (=> b!278406 (= lt!138388 (select (arr!6573 lt!138169) (index!9140 lt!138390)))))

(declare-fun c!45787 () Bool)

(assert (=> b!278406 (= c!45787 (= lt!138388 (select (arr!6573 lt!138169) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (= (and d!64799 c!45786) b!278401))

(assert (= (and d!64799 (not c!45786)) b!278406))

(assert (= (and b!278406 c!45787) b!278402))

(assert (= (and b!278406 (not c!45787)) b!278404))

(assert (= (and b!278404 c!45785) b!278405))

(assert (= (and b!278404 (not c!45785)) b!278403))

(assert (=> b!278403 m!292925))

(declare-fun m!293457 () Bool)

(assert (=> b!278403 m!293457))

(declare-fun m!293459 () Bool)

(assert (=> d!64799 m!293459))

(declare-fun m!293461 () Bool)

(assert (=> d!64799 m!293461))

(assert (=> d!64799 m!292925))

(declare-fun m!293463 () Bool)

(assert (=> d!64799 m!293463))

(declare-fun m!293465 () Bool)

(assert (=> d!64799 m!293465))

(assert (=> d!64799 m!292925))

(assert (=> d!64799 m!293461))

(assert (=> d!64799 m!292887))

(declare-fun m!293467 () Bool)

(assert (=> d!64799 m!293467))

(declare-fun m!293469 () Bool)

(assert (=> b!278406 m!293469))

(assert (=> b!277971 d!64799))

(declare-fun d!64801 () Bool)

(assert (=> d!64801 (= (seekEntryOrOpen!0 k!2581 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) mask!3868) (Found!1742 i!1267))))

(assert (=> d!64801 true))

(declare-fun _$54!23 () Unit!8796)

(assert (=> d!64801 (= (choose!8 a!3325 i!1267 k!2581 mask!3868) _$54!23)))

(declare-fun bs!9925 () Bool)

(assert (= bs!9925 d!64801))

(assert (=> bs!9925 m!292879))

(assert (=> bs!9925 m!293031))

(assert (=> d!64647 d!64801))

(assert (=> d!64647 d!64649))

(declare-fun b!278420 () Bool)

(declare-fun e!177598 () Bool)

(declare-fun e!177599 () Bool)

(assert (=> b!278420 (= e!177598 e!177599)))

(declare-fun lt!138404 () (_ BitVec 64))

(assert (=> b!278420 (= lt!138404 (select (arr!6573 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!138405 () Unit!8796)

(assert (=> b!278420 (= lt!138405 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) lt!138404 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!278420 (arrayContainsKey!0 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) lt!138404 #b00000000000000000000000000000000)))

(declare-fun lt!138403 () Unit!8796)

(assert (=> b!278420 (= lt!138403 lt!138405)))

(declare-fun res!141942 () Bool)

(assert (=> b!278420 (= res!141942 (= (seekEntryOrOpen!0 (select (arr!6573 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26)) (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) mask!3868) (Found!1742 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!278420 (=> (not res!141942) (not e!177599))))

(declare-fun b!278421 () Bool)

(declare-fun call!25383 () Bool)

(assert (=> b!278421 (= e!177598 call!25383)))

(declare-fun bm!25380 () Bool)

(assert (=> bm!25380 (= call!25383 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) mask!3868))))

(declare-fun d!64809 () Bool)

(declare-fun res!141941 () Bool)

(declare-fun e!177600 () Bool)

(assert (=> d!64809 (=> res!141941 e!177600)))

(assert (=> d!64809 (= res!141941 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!6925 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)))))))

(assert (=> d!64809 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325)) mask!3868) e!177600)))

(declare-fun b!278422 () Bool)

(assert (=> b!278422 (= e!177599 call!25383)))

(declare-fun b!278423 () Bool)

(assert (=> b!278423 (= e!177600 e!177598)))

(declare-fun c!45792 () Bool)

(assert (=> b!278423 (= c!45792 (validKeyInArray!0 (select (arr!6573 (array!13849 (store (arr!6573 a!3325) i!1267 k!2581) (size!6925 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (= (and d!64809 (not res!141941)) b!278423))

(assert (= (and b!278423 c!45792) b!278420))

(assert (= (and b!278423 (not c!45792)) b!278421))

(assert (= (and b!278420 res!141942) b!278422))

(assert (= (or b!278422 b!278421) bm!25380))

(declare-fun m!293493 () Bool)

(assert (=> b!278420 m!293493))

(declare-fun m!293495 () Bool)

(assert (=> b!278420 m!293495))

(declare-fun m!293497 () Bool)

(assert (=> b!278420 m!293497))

