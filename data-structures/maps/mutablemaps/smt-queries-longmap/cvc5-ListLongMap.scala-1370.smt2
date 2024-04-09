; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26926 () Bool)

(assert start!26926)

(declare-fun b!278937 () Bool)

(declare-fun res!142318 () Bool)

(declare-fun e!177866 () Bool)

(assert (=> b!278937 (=> (not res!142318) (not e!177866))))

(declare-datatypes ((array!13880 0))(
  ( (array!13881 (arr!6586 (Array (_ BitVec 32) (_ BitVec 64))) (size!6938 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13880)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278937 (= res!142318 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278938 () Bool)

(declare-fun res!142322 () Bool)

(declare-fun e!177868 () Bool)

(assert (=> b!278938 (=> (not res!142322) (not e!177868))))

(assert (=> b!278938 (= res!142322 (and (bvslt (size!6938 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6938 a!3325))))))

(declare-fun b!278939 () Bool)

(declare-fun res!142316 () Bool)

(assert (=> b!278939 (=> (not res!142316) (not e!177868))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13880 (_ BitVec 32)) Bool)

(assert (=> b!278939 (= res!142316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278940 () Bool)

(declare-fun res!142315 () Bool)

(assert (=> b!278940 (=> (not res!142315) (not e!177868))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!278940 (= res!142315 (not (= startIndex!26 i!1267)))))

(declare-fun b!278941 () Bool)

(declare-fun res!142323 () Bool)

(assert (=> b!278941 (=> (not res!142323) (not e!177866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278941 (= res!142323 (validKeyInArray!0 k!2581))))

(declare-fun b!278943 () Bool)

(declare-datatypes ((List!4415 0))(
  ( (Nil!4412) (Cons!4411 (h!5081 (_ BitVec 64)) (t!9505 List!4415)) )
))
(declare-fun noDuplicate!149 (List!4415) Bool)

(assert (=> b!278943 (= e!177868 (not (noDuplicate!149 Nil!4412)))))

(declare-fun b!278944 () Bool)

(declare-fun res!142317 () Bool)

(assert (=> b!278944 (=> (not res!142317) (not e!177868))))

(assert (=> b!278944 (= res!142317 (validKeyInArray!0 (select (arr!6586 a!3325) startIndex!26)))))

(declare-fun res!142314 () Bool)

(assert (=> start!26926 (=> (not res!142314) (not e!177866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26926 (= res!142314 (validMask!0 mask!3868))))

(assert (=> start!26926 e!177866))

(declare-fun array_inv!4540 (array!13880) Bool)

(assert (=> start!26926 (array_inv!4540 a!3325)))

(assert (=> start!26926 true))

(declare-fun b!278942 () Bool)

(declare-fun res!142319 () Bool)

(assert (=> b!278942 (=> (not res!142319) (not e!177866))))

(declare-fun arrayNoDuplicates!0 (array!13880 (_ BitVec 32) List!4415) Bool)

(assert (=> b!278942 (= res!142319 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4412))))

(declare-fun b!278945 () Bool)

(assert (=> b!278945 (= e!177866 e!177868)))

(declare-fun res!142321 () Bool)

(assert (=> b!278945 (=> (not res!142321) (not e!177868))))

(declare-datatypes ((SeekEntryResult!1755 0))(
  ( (MissingZero!1755 (index!9190 (_ BitVec 32))) (Found!1755 (index!9191 (_ BitVec 32))) (Intermediate!1755 (undefined!2567 Bool) (index!9192 (_ BitVec 32)) (x!27409 (_ BitVec 32))) (Undefined!1755) (MissingVacant!1755 (index!9193 (_ BitVec 32))) )
))
(declare-fun lt!138542 () SeekEntryResult!1755)

(assert (=> b!278945 (= res!142321 (or (= lt!138542 (MissingZero!1755 i!1267)) (= lt!138542 (MissingVacant!1755 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13880 (_ BitVec 32)) SeekEntryResult!1755)

(assert (=> b!278945 (= lt!138542 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!278946 () Bool)

(declare-fun res!142320 () Bool)

(assert (=> b!278946 (=> (not res!142320) (not e!177866))))

(assert (=> b!278946 (= res!142320 (and (= (size!6938 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6938 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6938 a!3325))))))

(assert (= (and start!26926 res!142314) b!278946))

(assert (= (and b!278946 res!142320) b!278941))

(assert (= (and b!278941 res!142323) b!278942))

(assert (= (and b!278942 res!142319) b!278937))

(assert (= (and b!278937 res!142318) b!278945))

(assert (= (and b!278945 res!142321) b!278939))

(assert (= (and b!278939 res!142316) b!278940))

(assert (= (and b!278940 res!142315) b!278944))

(assert (= (and b!278944 res!142317) b!278938))

(assert (= (and b!278938 res!142322) b!278943))

(declare-fun m!293881 () Bool)

(assert (=> b!278939 m!293881))

(declare-fun m!293883 () Bool)

(assert (=> start!26926 m!293883))

(declare-fun m!293885 () Bool)

(assert (=> start!26926 m!293885))

(declare-fun m!293887 () Bool)

(assert (=> b!278944 m!293887))

(assert (=> b!278944 m!293887))

(declare-fun m!293889 () Bool)

(assert (=> b!278944 m!293889))

(declare-fun m!293891 () Bool)

(assert (=> b!278942 m!293891))

(declare-fun m!293893 () Bool)

(assert (=> b!278945 m!293893))

(declare-fun m!293895 () Bool)

(assert (=> b!278943 m!293895))

(declare-fun m!293897 () Bool)

(assert (=> b!278937 m!293897))

(declare-fun m!293899 () Bool)

(assert (=> b!278941 m!293899))

(push 1)

(assert (not b!278945))

(assert (not b!278943))

(assert (not b!278939))

(assert (not start!26926))

(assert (not b!278944))

(assert (not b!278942))

(assert (not b!278937))

(assert (not b!278941))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64899 () Bool)

(declare-fun res!142388 () Bool)

(declare-fun e!177891 () Bool)

(assert (=> d!64899 (=> res!142388 e!177891)))

(assert (=> d!64899 (= res!142388 (is-Nil!4412 Nil!4412))))

(assert (=> d!64899 (= (noDuplicate!149 Nil!4412) e!177891)))

(declare-fun b!279011 () Bool)

(declare-fun e!177892 () Bool)

(assert (=> b!279011 (= e!177891 e!177892)))

(declare-fun res!142389 () Bool)

(assert (=> b!279011 (=> (not res!142389) (not e!177892))))

(declare-fun contains!1965 (List!4415 (_ BitVec 64)) Bool)

(assert (=> b!279011 (= res!142389 (not (contains!1965 (t!9505 Nil!4412) (h!5081 Nil!4412))))))

(declare-fun b!279012 () Bool)

(assert (=> b!279012 (= e!177892 (noDuplicate!149 (t!9505 Nil!4412)))))

(assert (= (and d!64899 (not res!142388)) b!279011))

(assert (= (and b!279011 res!142389) b!279012))

(declare-fun m!293941 () Bool)

(assert (=> b!279011 m!293941))

(declare-fun m!293943 () Bool)

(assert (=> b!279012 m!293943))

(assert (=> b!278943 d!64899))

(declare-fun d!64907 () Bool)

(assert (=> d!64907 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26926 d!64907))

(declare-fun d!64913 () Bool)

(assert (=> d!64913 (= (array_inv!4540 a!3325) (bvsge (size!6938 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26926 d!64913))

(declare-fun b!279064 () Bool)

(declare-fun e!177936 () Bool)

(declare-fun call!25412 () Bool)

(assert (=> b!279064 (= e!177936 call!25412)))

(declare-fun b!279065 () Bool)

(declare-fun e!177934 () Bool)

(assert (=> b!279065 (= e!177936 e!177934)))

(declare-fun lt!138565 () (_ BitVec 64))

(assert (=> b!279065 (= lt!138565 (select (arr!6586 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8807 0))(
  ( (Unit!8808) )
))
(declare-fun lt!138566 () Unit!8807)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13880 (_ BitVec 64) (_ BitVec 32)) Unit!8807)

(assert (=> b!279065 (= lt!138566 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138565 #b00000000000000000000000000000000))))

(assert (=> b!279065 (arrayContainsKey!0 a!3325 lt!138565 #b00000000000000000000000000000000)))

(declare-fun lt!138564 () Unit!8807)

(assert (=> b!279065 (= lt!138564 lt!138566)))

(declare-fun res!142422 () Bool)

(assert (=> b!279065 (= res!142422 (= (seekEntryOrOpen!0 (select (arr!6586 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1755 #b00000000000000000000000000000000)))))

(assert (=> b!279065 (=> (not res!142422) (not e!177934))))

(declare-fun b!279066 () Bool)

(assert (=> b!279066 (= e!177934 call!25412)))

(declare-fun b!279067 () Bool)

(declare-fun e!177935 () Bool)

(assert (=> b!279067 (= e!177935 e!177936)))

(declare-fun c!45874 () Bool)

(assert (=> b!279067 (= c!45874 (validKeyInArray!0 (select (arr!6586 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64915 () Bool)

(declare-fun res!142421 () Bool)

(assert (=> d!64915 (=> res!142421 e!177935)))

(assert (=> d!64915 (= res!142421 (bvsge #b00000000000000000000000000000000 (size!6938 a!3325)))))

(assert (=> d!64915 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!177935)))

(declare-fun bm!25409 () Bool)

(assert (=> bm!25409 (= call!25412 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(assert (= (and d!64915 (not res!142421)) b!279067))

(assert (= (and b!279067 c!45874) b!279065))

(assert (= (and b!279067 (not c!45874)) b!279064))

(assert (= (and b!279065 res!142422) b!279066))

(assert (= (or b!279066 b!279064) bm!25409))

(declare-fun m!293963 () Bool)

(assert (=> b!279065 m!293963))

(declare-fun m!293965 () Bool)

(assert (=> b!279065 m!293965))

(declare-fun m!293967 () Bool)

(assert (=> b!279065 m!293967))

(assert (=> b!279065 m!293963))

(declare-fun m!293969 () Bool)

(assert (=> b!279065 m!293969))

(assert (=> b!279067 m!293963))

(assert (=> b!279067 m!293963))

(declare-fun m!293971 () Bool)

(assert (=> b!279067 m!293971))

(declare-fun m!293973 () Bool)

(assert (=> bm!25409 m!293973))

(assert (=> b!278939 d!64915))

(declare-fun d!64929 () Bool)

(assert (=> d!64929 (= (validKeyInArray!0 (select (arr!6586 a!3325) startIndex!26)) (and (not (= (select (arr!6586 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6586 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278944 d!64929))

(declare-fun d!64931 () Bool)

(declare-fun lt!138586 () SeekEntryResult!1755)

(assert (=> d!64931 (and (or (is-Undefined!1755 lt!138586) (not (is-Found!1755 lt!138586)) (and (bvsge (index!9191 lt!138586) #b00000000000000000000000000000000) (bvslt (index!9191 lt!138586) (size!6938 a!3325)))) (or (is-Undefined!1755 lt!138586) (is-Found!1755 lt!138586) (not (is-MissingZero!1755 lt!138586)) (and (bvsge (index!9190 lt!138586) #b00000000000000000000000000000000) (bvslt (index!9190 lt!138586) (size!6938 a!3325)))) (or (is-Undefined!1755 lt!138586) (is-Found!1755 lt!138586) (is-MissingZero!1755 lt!138586) (not (is-MissingVacant!1755 lt!138586)) (and (bvsge (index!9193 lt!138586) #b00000000000000000000000000000000) (bvslt (index!9193 lt!138586) (size!6938 a!3325)))) (or (is-Undefined!1755 lt!138586) (ite (is-Found!1755 lt!138586) (= (select (arr!6586 a!3325) (index!9191 lt!138586)) k!2581) (ite (is-MissingZero!1755 lt!138586) (= (select (arr!6586 a!3325) (index!9190 lt!138586)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1755 lt!138586) (= (select (arr!6586 a!3325) (index!9193 lt!138586)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!177963 () SeekEntryResult!1755)

(assert (=> d!64931 (= lt!138586 e!177963)))

(declare-fun c!45891 () Bool)

(declare-fun lt!138588 () SeekEntryResult!1755)

(assert (=> d!64931 (= c!45891 (and (is-Intermediate!1755 lt!138588) (undefined!2567 lt!138588)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13880 (_ BitVec 32)) SeekEntryResult!1755)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64931 (= lt!138588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!64931 (validMask!0 mask!3868)))

(assert (=> d!64931 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138586)))

(declare-fun b!279111 () Bool)

(declare-fun e!177962 () SeekEntryResult!1755)

(assert (=> b!279111 (= e!177963 e!177962)))

(declare-fun lt!138587 () (_ BitVec 64))

(assert (=> b!279111 (= lt!138587 (select (arr!6586 a!3325) (index!9192 lt!138588)))))

(declare-fun c!45892 () Bool)

(assert (=> b!279111 (= c!45892 (= lt!138587 k!2581))))

(declare-fun b!279112 () Bool)

(assert (=> b!279112 (= e!177962 (Found!1755 (index!9192 lt!138588)))))

(declare-fun b!279113 () Bool)

(declare-fun e!177964 () SeekEntryResult!1755)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13880 (_ BitVec 32)) SeekEntryResult!1755)

(assert (=> b!279113 (= e!177964 (seekKeyOrZeroReturnVacant!0 (x!27409 lt!138588) (index!9192 lt!138588) (index!9192 lt!138588) k!2581 a!3325 mask!3868))))

(declare-fun b!279114 () Bool)

(declare-fun c!45893 () Bool)

(assert (=> b!279114 (= c!45893 (= lt!138587 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!279114 (= e!177962 e!177964)))

(declare-fun b!279115 () Bool)

(assert (=> b!279115 (= e!177963 Undefined!1755)))

(declare-fun b!279116 () Bool)

(assert (=> b!279116 (= e!177964 (MissingZero!1755 (index!9192 lt!138588)))))

(assert (= (and d!64931 c!45891) b!279115))

(assert (= (and d!64931 (not c!45891)) b!279111))

(assert (= (and b!279111 c!45892) b!279112))

(assert (= (and b!279111 (not c!45892)) b!279114))

(assert (= (and b!279114 c!45893) b!279116))

(assert (= (and b!279114 (not c!45893)) b!279113))

(assert (=> d!64931 m!293883))

(declare-fun m!293999 () Bool)

(assert (=> d!64931 m!293999))

(declare-fun m!294001 () Bool)

(assert (=> d!64931 m!294001))

(declare-fun m!294003 () Bool)

(assert (=> d!64931 m!294003))

(declare-fun m!294005 () Bool)

(assert (=> d!64931 m!294005))

(assert (=> d!64931 m!293999))

(declare-fun m!294007 () Bool)

(assert (=> d!64931 m!294007))

(declare-fun m!294009 () Bool)

(assert (=> b!279111 m!294009))

(declare-fun m!294011 () Bool)

(assert (=> b!279113 m!294011))

(assert (=> b!278945 d!64931))

(declare-fun d!64941 () Bool)

(assert (=> d!64941 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278941 d!64941))

(declare-fun d!64943 () Bool)

(declare-fun res!142442 () Bool)

(declare-fun e!177981 () Bool)

(assert (=> d!64943 (=> res!142442 e!177981)))

(assert (=> d!64943 (= res!142442 (= (select (arr!6586 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!64943 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!177981)))

(declare-fun b!279137 () Bool)

(declare-fun e!177982 () Bool)

(assert (=> b!279137 (= e!177981 e!177982)))

(declare-fun res!142443 () Bool)

(assert (=> b!279137 (=> (not res!142443) (not e!177982))))

(assert (=> b!279137 (= res!142443 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6938 a!3325)))))

(declare-fun b!279138 () Bool)

(assert (=> b!279138 (= e!177982 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64943 (not res!142442)) b!279137))

(assert (= (and b!279137 res!142443) b!279138))

(assert (=> d!64943 m!293963))

(declare-fun m!294017 () Bool)

(assert (=> b!279138 m!294017))

(assert (=> b!278937 d!64943))

(declare-fun b!279161 () Bool)

(declare-fun e!178001 () Bool)

(declare-fun call!25418 () Bool)

(assert (=> b!279161 (= e!178001 call!25418)))

(declare-fun b!279162 () Bool)

(declare-fun e!178000 () Bool)

(declare-fun e!178003 () Bool)

(assert (=> b!279162 (= e!178000 e!178003)))

(declare-fun res!142458 () Bool)

(assert (=> b!279162 (=> (not res!142458) (not e!178003))))

(declare-fun e!178002 () Bool)

(assert (=> b!279162 (= res!142458 (not e!178002))))

(declare-fun res!142457 () Bool)

(assert (=> b!279162 (=> (not res!142457) (not e!178002))))

(assert (=> b!279162 (= res!142457 (validKeyInArray!0 (select (arr!6586 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279163 () Bool)

(assert (=> b!279163 (= e!178002 (contains!1965 Nil!4412 (select (arr!6586 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25415 () Bool)

(declare-fun c!45905 () Bool)

