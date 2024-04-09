; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104380 () Bool)

(assert start!104380)

(declare-fun b!1245838 () Bool)

(declare-fun res!831367 () Bool)

(declare-fun e!706546 () Bool)

(assert (=> b!1245838 (=> (not res!831367) (not e!706546))))

(declare-datatypes ((array!80189 0))(
  ( (array!80190 (arr!38670 (Array (_ BitVec 32) (_ BitVec 64))) (size!39207 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80189)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245838 (= res!831367 (validKeyInArray!0 (select (arr!38670 a!3892) from!3270)))))

(declare-fun b!1245840 () Bool)

(declare-fun res!831368 () Bool)

(assert (=> b!1245840 (=> (not res!831368) (not e!706546))))

(declare-datatypes ((List!27651 0))(
  ( (Nil!27648) (Cons!27647 (h!28856 (_ BitVec 64)) (t!41127 List!27651)) )
))
(declare-fun arrayNoDuplicates!0 (array!80189 (_ BitVec 32) List!27651) Bool)

(assert (=> b!1245840 (= res!831368 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27648))))

(declare-fun b!1245841 () Bool)

(declare-fun res!831370 () Bool)

(declare-fun e!706545 () Bool)

(assert (=> b!1245841 (=> (not res!831370) (not e!706545))))

(declare-fun lt!562931 () List!27651)

(declare-fun noDuplicate!2059 (List!27651) Bool)

(assert (=> b!1245841 (= res!831370 (noDuplicate!2059 lt!562931))))

(declare-fun b!1245842 () Bool)

(assert (=> b!1245842 (= e!706546 e!706545)))

(declare-fun res!831373 () Bool)

(assert (=> b!1245842 (=> (not res!831373) (not e!706545))))

(assert (=> b!1245842 (= res!831373 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1245842 (= lt!562931 (Cons!27647 (select (arr!38670 a!3892) from!3270) Nil!27648))))

(declare-fun b!1245843 () Bool)

(declare-fun res!831366 () Bool)

(assert (=> b!1245843 (=> (not res!831366) (not e!706545))))

(declare-fun contains!7469 (List!27651 (_ BitVec 64)) Bool)

(assert (=> b!1245843 (= res!831366 (not (contains!7469 lt!562931 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245839 () Bool)

(declare-fun subseq!653 (List!27651 List!27651) Bool)

(assert (=> b!1245839 (= e!706545 (not (subseq!653 Nil!27648 lt!562931)))))

(declare-fun res!831364 () Bool)

(assert (=> start!104380 (=> (not res!831364) (not e!706546))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104380 (= res!831364 (and (bvslt (size!39207 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39207 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39207 a!3892))))))

(assert (=> start!104380 e!706546))

(declare-fun array_inv!29446 (array!80189) Bool)

(assert (=> start!104380 (array_inv!29446 a!3892)))

(assert (=> start!104380 true))

(declare-fun b!1245844 () Bool)

(declare-fun res!831372 () Bool)

(assert (=> b!1245844 (=> (not res!831372) (not e!706545))))

(assert (=> b!1245844 (= res!831372 (not (contains!7469 lt!562931 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245845 () Bool)

(declare-fun res!831371 () Bool)

(assert (=> b!1245845 (=> (not res!831371) (not e!706545))))

(assert (=> b!1245845 (= res!831371 (not (contains!7469 Nil!27648 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245846 () Bool)

(declare-fun res!831365 () Bool)

(assert (=> b!1245846 (=> (not res!831365) (not e!706545))))

(assert (=> b!1245846 (= res!831365 (not (contains!7469 Nil!27648 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245847 () Bool)

(declare-fun res!831369 () Bool)

(assert (=> b!1245847 (=> (not res!831369) (not e!706546))))

(assert (=> b!1245847 (= res!831369 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39207 a!3892)) (not (= newFrom!287 (size!39207 a!3892)))))))

(assert (= (and start!104380 res!831364) b!1245840))

(assert (= (and b!1245840 res!831368) b!1245847))

(assert (= (and b!1245847 res!831369) b!1245838))

(assert (= (and b!1245838 res!831367) b!1245842))

(assert (= (and b!1245842 res!831373) b!1245841))

(assert (= (and b!1245841 res!831370) b!1245843))

(assert (= (and b!1245843 res!831366) b!1245844))

(assert (= (and b!1245844 res!831372) b!1245845))

(assert (= (and b!1245845 res!831371) b!1245846))

(assert (= (and b!1245846 res!831365) b!1245839))

(declare-fun m!1147835 () Bool)

(assert (=> b!1245841 m!1147835))

(declare-fun m!1147837 () Bool)

(assert (=> b!1245838 m!1147837))

(assert (=> b!1245838 m!1147837))

(declare-fun m!1147839 () Bool)

(assert (=> b!1245838 m!1147839))

(declare-fun m!1147841 () Bool)

(assert (=> b!1245840 m!1147841))

(declare-fun m!1147843 () Bool)

(assert (=> b!1245839 m!1147843))

(declare-fun m!1147845 () Bool)

(assert (=> b!1245845 m!1147845))

(declare-fun m!1147847 () Bool)

(assert (=> start!104380 m!1147847))

(declare-fun m!1147849 () Bool)

(assert (=> b!1245843 m!1147849))

(assert (=> b!1245842 m!1147837))

(declare-fun m!1147851 () Bool)

(assert (=> b!1245846 m!1147851))

(declare-fun m!1147853 () Bool)

(assert (=> b!1245844 m!1147853))

(push 1)

(assert (not b!1245846))

(assert (not start!104380))

(assert (not b!1245838))

(assert (not b!1245843))

(assert (not b!1245840))

(assert (not b!1245841))

(assert (not b!1245839))

(assert (not b!1245844))

(assert (not b!1245845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137449 () Bool)

(declare-fun lt!562945 () Bool)

(declare-fun content!634 (List!27651) (Set (_ BitVec 64)))

(assert (=> d!137449 (= lt!562945 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!634 Nil!27648)))))

(declare-fun e!706605 () Bool)

(assert (=> d!137449 (= lt!562945 e!706605)))

(declare-fun res!831471 () Bool)

(assert (=> d!137449 (=> (not res!831471) (not e!706605))))

(assert (=> d!137449 (= res!831471 (is-Cons!27647 Nil!27648))))

(assert (=> d!137449 (= (contains!7469 Nil!27648 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562945)))

(declare-fun b!1245949 () Bool)

(declare-fun e!706606 () Bool)

(assert (=> b!1245949 (= e!706605 e!706606)))

(declare-fun res!831472 () Bool)

(assert (=> b!1245949 (=> res!831472 e!706606)))

(assert (=> b!1245949 (= res!831472 (= (h!28856 Nil!27648) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245950 () Bool)

(assert (=> b!1245950 (= e!706606 (contains!7469 (t!41127 Nil!27648) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137449 res!831471) b!1245949))

(assert (= (and b!1245949 (not res!831472)) b!1245950))

(declare-fun m!1147919 () Bool)

(assert (=> d!137449 m!1147919))

(declare-fun m!1147921 () Bool)

(assert (=> d!137449 m!1147921))

(declare-fun m!1147923 () Bool)

(assert (=> b!1245950 m!1147923))

(assert (=> b!1245845 d!137449))

(declare-fun d!137461 () Bool)

(declare-fun lt!562946 () Bool)

(assert (=> d!137461 (= lt!562946 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!634 lt!562931)))))

(declare-fun e!706607 () Bool)

(assert (=> d!137461 (= lt!562946 e!706607)))

(declare-fun res!831473 () Bool)

(assert (=> d!137461 (=> (not res!831473) (not e!706607))))

(assert (=> d!137461 (= res!831473 (is-Cons!27647 lt!562931))))

(assert (=> d!137461 (= (contains!7469 lt!562931 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562946)))

(declare-fun b!1245953 () Bool)

(declare-fun e!706608 () Bool)

(assert (=> b!1245953 (= e!706607 e!706608)))

(declare-fun res!831474 () Bool)

(assert (=> b!1245953 (=> res!831474 e!706608)))

(assert (=> b!1245953 (= res!831474 (= (h!28856 lt!562931) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245954 () Bool)

(assert (=> b!1245954 (= e!706608 (contains!7469 (t!41127 lt!562931) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137461 res!831473) b!1245953))

(assert (= (and b!1245953 (not res!831474)) b!1245954))

(declare-fun m!1147925 () Bool)

(assert (=> d!137461 m!1147925))

(declare-fun m!1147927 () Bool)

(assert (=> d!137461 m!1147927))

(declare-fun m!1147929 () Bool)

(assert (=> b!1245954 m!1147929))

(assert (=> b!1245844 d!137461))

(declare-fun d!137463 () Bool)

(assert (=> d!137463 (= (array_inv!29446 a!3892) (bvsge (size!39207 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104380 d!137463))

(declare-fun b!1245993 () Bool)

(declare-fun e!706648 () Bool)

(declare-fun e!706647 () Bool)

(assert (=> b!1245993 (= e!706648 e!706647)))

(declare-fun res!831509 () Bool)

(assert (=> b!1245993 (=> (not res!831509) (not e!706647))))

(assert (=> b!1245993 (= res!831509 (is-Cons!27647 lt!562931))))

(declare-fun b!1245995 () Bool)

(declare-fun e!706645 () Bool)

(assert (=> b!1245995 (= e!706645 (subseq!653 (t!41127 Nil!27648) (t!41127 lt!562931)))))

(declare-fun b!1245996 () Bool)

(declare-fun e!706646 () Bool)

(assert (=> b!1245996 (= e!706646 (subseq!653 Nil!27648 (t!41127 lt!562931)))))

(declare-fun b!1245994 () Bool)

(assert (=> b!1245994 (= e!706647 e!706646)))

(declare-fun res!831510 () Bool)

(assert (=> b!1245994 (=> res!831510 e!706646)))

(assert (=> b!1245994 (= res!831510 e!706645)))

(declare-fun res!831512 () Bool)

(assert (=> b!1245994 (=> (not res!831512) (not e!706645))))

(assert (=> b!1245994 (= res!831512 (= (h!28856 Nil!27648) (h!28856 lt!562931)))))

(declare-fun d!137467 () Bool)

(declare-fun res!831511 () Bool)

(assert (=> d!137467 (=> res!831511 e!706648)))

(assert (=> d!137467 (= res!831511 (is-Nil!27648 Nil!27648))))

(assert (=> d!137467 (= (subseq!653 Nil!27648 lt!562931) e!706648)))

(assert (= (and d!137467 (not res!831511)) b!1245993))

(assert (= (and b!1245993 res!831509) b!1245994))

(assert (= (and b!1245994 res!831512) b!1245995))

(assert (= (and b!1245994 (not res!831510)) b!1245996))

(declare-fun m!1147945 () Bool)

(assert (=> b!1245995 m!1147945))

(declare-fun m!1147949 () Bool)

(assert (=> b!1245996 m!1147949))

(assert (=> b!1245839 d!137467))

(declare-fun d!137473 () Bool)

(declare-fun lt!562951 () Bool)

(assert (=> d!137473 (= lt!562951 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!634 Nil!27648)))))

(declare-fun e!706653 () Bool)

(assert (=> d!137473 (= lt!562951 e!706653)))

(declare-fun res!831516 () Bool)

(assert (=> d!137473 (=> (not res!831516) (not e!706653))))

(assert (=> d!137473 (= res!831516 (is-Cons!27647 Nil!27648))))

(assert (=> d!137473 (= (contains!7469 Nil!27648 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562951)))

(declare-fun b!1246002 () Bool)

(declare-fun e!706654 () Bool)

(assert (=> b!1246002 (= e!706653 e!706654)))

(declare-fun res!831517 () Bool)

(assert (=> b!1246002 (=> res!831517 e!706654)))

(assert (=> b!1246002 (= res!831517 (= (h!28856 Nil!27648) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1246003 () Bool)

(assert (=> b!1246003 (= e!706654 (contains!7469 (t!41127 Nil!27648) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137473 res!831516) b!1246002))

(assert (= (and b!1246002 (not res!831517)) b!1246003))

(assert (=> d!137473 m!1147919))

(declare-fun m!1147953 () Bool)

(assert (=> d!137473 m!1147953))

(declare-fun m!1147955 () Bool)

(assert (=> b!1246003 m!1147955))

(assert (=> b!1245846 d!137473))

(declare-fun d!137475 () Bool)

(declare-fun res!831530 () Bool)

(declare-fun e!706667 () Bool)

(assert (=> d!137475 (=> res!831530 e!706667)))

(assert (=> d!137475 (= res!831530 (is-Nil!27648 lt!562931))))

(assert (=> d!137475 (= (noDuplicate!2059 lt!562931) e!706667)))

(declare-fun b!1246016 () Bool)

(declare-fun e!706668 () Bool)

(assert (=> b!1246016 (= e!706667 e!706668)))

(declare-fun res!831531 () Bool)

(assert (=> b!1246016 (=> (not res!831531) (not e!706668))))

(assert (=> b!1246016 (= res!831531 (not (contains!7469 (t!41127 lt!562931) (h!28856 lt!562931))))))

(declare-fun b!1246017 () Bool)

(assert (=> b!1246017 (= e!706668 (noDuplicate!2059 (t!41127 lt!562931)))))

(assert (= (and d!137475 (not res!831530)) b!1246016))

(assert (= (and b!1246016 res!831531) b!1246017))

(declare-fun m!1147961 () Bool)

(assert (=> b!1246016 m!1147961))

(declare-fun m!1147963 () Bool)

(assert (=> b!1246017 m!1147963))

(assert (=> b!1245841 d!137475))

(declare-fun b!1246036 () Bool)

(declare-fun e!706686 () Bool)

(declare-fun call!61511 () Bool)

(assert (=> b!1246036 (= e!706686 call!61511)))

(declare-fun c!121932 () Bool)

(declare-fun bm!61508 () Bool)

(assert (=> bm!61508 (= call!61511 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121932 (Cons!27647 (select (arr!38670 a!3892) from!3270) Nil!27648) Nil!27648)))))

(declare-fun d!137479 () Bool)

(declare-fun res!831548 () Bool)

(declare-fun e!706685 () Bool)

(assert (=> d!137479 (=> res!831548 e!706685)))

(assert (=> d!137479 (= res!831548 (bvsge from!3270 (size!39207 a!3892)))))

(assert (=> d!137479 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27648) e!706685)))

(declare-fun b!1246037 () Bool)

(declare-fun e!706687 () Bool)

(assert (=> b!1246037 (= e!706685 e!706687)))

(declare-fun res!831546 () Bool)

(assert (=> b!1246037 (=> (not res!831546) (not e!706687))))

(declare-fun e!706688 () Bool)

(assert (=> b!1246037 (= res!831546 (not e!706688))))

(declare-fun res!831547 () Bool)

(assert (=> b!1246037 (=> (not res!831547) (not e!706688))))

(assert (=> b!1246037 (= res!831547 (validKeyInArray!0 (select (arr!38670 a!3892) from!3270)))))

(declare-fun b!1246038 () Bool)

(assert (=> b!1246038 (= e!706688 (contains!7469 Nil!27648 (select (arr!38670 a!3892) from!3270)))))

(declare-fun b!1246039 () Bool)

(assert (=> b!1246039 (= e!706686 call!61511)))

(declare-fun b!1246040 () Bool)

(assert (=> b!1246040 (= e!706687 e!706686)))

(assert (=> b!1246040 (= c!121932 (validKeyInArray!0 (select (arr!38670 a!3892) from!3270)))))

(assert (= (and d!137479 (not res!831548)) b!1246037))

(assert (= (and b!1246037 res!831547) b!1246038))

(assert (= (and b!1246037 res!831546) b!1246040))

(assert (= (and b!1246040 c!121932) b!1246039))

(assert (= (and b!1246040 (not c!121932)) b!1246036))

(assert (= (or b!1246039 b!1246036) bm!61508))

(assert (=> bm!61508 m!1147837))

(declare-fun m!1147983 () Bool)

(assert (=> bm!61508 m!1147983))

(assert (=> b!1246037 m!1147837))

(assert (=> b!1246037 m!1147837))

