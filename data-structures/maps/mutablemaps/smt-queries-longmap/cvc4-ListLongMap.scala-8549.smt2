; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104384 () Bool)

(assert start!104384)

(declare-fun b!1245898 () Bool)

(declare-fun res!831433 () Bool)

(declare-fun e!706563 () Bool)

(assert (=> b!1245898 (=> (not res!831433) (not e!706563))))

(declare-datatypes ((array!80193 0))(
  ( (array!80194 (arr!38672 (Array (_ BitVec 32) (_ BitVec 64))) (size!39209 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80193)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245898 (= res!831433 (validKeyInArray!0 (select (arr!38672 a!3892) from!3270)))))

(declare-fun b!1245899 () Bool)

(declare-fun res!831429 () Bool)

(declare-fun e!706562 () Bool)

(assert (=> b!1245899 (=> (not res!831429) (not e!706562))))

(declare-datatypes ((List!27653 0))(
  ( (Nil!27650) (Cons!27649 (h!28858 (_ BitVec 64)) (t!41129 List!27653)) )
))
(declare-fun lt!562937 () List!27653)

(declare-fun noDuplicate!2061 (List!27653) Bool)

(assert (=> b!1245899 (= res!831429 (noDuplicate!2061 lt!562937))))

(declare-fun b!1245900 () Bool)

(declare-fun res!831428 () Bool)

(assert (=> b!1245900 (=> (not res!831428) (not e!706562))))

(declare-fun contains!7471 (List!27653 (_ BitVec 64)) Bool)

(assert (=> b!1245900 (= res!831428 (not (contains!7471 Nil!27650 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245901 () Bool)

(declare-fun res!831431 () Bool)

(assert (=> b!1245901 (=> (not res!831431) (not e!706562))))

(assert (=> b!1245901 (= res!831431 (not (contains!7471 lt!562937 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245902 () Bool)

(assert (=> b!1245902 (= e!706563 e!706562)))

(declare-fun res!831426 () Bool)

(assert (=> b!1245902 (=> (not res!831426) (not e!706562))))

(assert (=> b!1245902 (= res!831426 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1245902 (= lt!562937 (Cons!27649 (select (arr!38672 a!3892) from!3270) Nil!27650))))

(declare-fun b!1245903 () Bool)

(declare-fun res!831430 () Bool)

(assert (=> b!1245903 (=> (not res!831430) (not e!706563))))

(declare-fun arrayNoDuplicates!0 (array!80193 (_ BitVec 32) List!27653) Bool)

(assert (=> b!1245903 (= res!831430 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27650))))

(declare-fun b!1245904 () Bool)

(declare-fun res!831427 () Bool)

(assert (=> b!1245904 (=> (not res!831427) (not e!706562))))

(assert (=> b!1245904 (= res!831427 (not (contains!7471 Nil!27650 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!831424 () Bool)

(assert (=> start!104384 (=> (not res!831424) (not e!706563))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104384 (= res!831424 (and (bvslt (size!39209 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39209 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39209 a!3892))))))

(assert (=> start!104384 e!706563))

(declare-fun array_inv!29448 (array!80193) Bool)

(assert (=> start!104384 (array_inv!29448 a!3892)))

(assert (=> start!104384 true))

(declare-fun b!1245905 () Bool)

(declare-fun res!831425 () Bool)

(assert (=> b!1245905 (=> (not res!831425) (not e!706563))))

(assert (=> b!1245905 (= res!831425 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39209 a!3892)) (not (= newFrom!287 (size!39209 a!3892)))))))

(declare-fun b!1245906 () Bool)

(declare-fun subseq!655 (List!27653 List!27653) Bool)

(assert (=> b!1245906 (= e!706562 (not (subseq!655 Nil!27650 lt!562937)))))

(declare-fun b!1245907 () Bool)

(declare-fun res!831432 () Bool)

(assert (=> b!1245907 (=> (not res!831432) (not e!706562))))

(assert (=> b!1245907 (= res!831432 (not (contains!7471 lt!562937 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!104384 res!831424) b!1245903))

(assert (= (and b!1245903 res!831430) b!1245905))

(assert (= (and b!1245905 res!831425) b!1245898))

(assert (= (and b!1245898 res!831433) b!1245902))

(assert (= (and b!1245902 res!831426) b!1245899))

(assert (= (and b!1245899 res!831429) b!1245901))

(assert (= (and b!1245901 res!831431) b!1245907))

(assert (= (and b!1245907 res!831432) b!1245900))

(assert (= (and b!1245900 res!831428) b!1245904))

(assert (= (and b!1245904 res!831427) b!1245906))

(declare-fun m!1147875 () Bool)

(assert (=> b!1245902 m!1147875))

(declare-fun m!1147877 () Bool)

(assert (=> b!1245899 m!1147877))

(assert (=> b!1245898 m!1147875))

(assert (=> b!1245898 m!1147875))

(declare-fun m!1147879 () Bool)

(assert (=> b!1245898 m!1147879))

(declare-fun m!1147881 () Bool)

(assert (=> start!104384 m!1147881))

(declare-fun m!1147883 () Bool)

(assert (=> b!1245903 m!1147883))

(declare-fun m!1147885 () Bool)

(assert (=> b!1245900 m!1147885))

(declare-fun m!1147887 () Bool)

(assert (=> b!1245904 m!1147887))

(declare-fun m!1147889 () Bool)

(assert (=> b!1245907 m!1147889))

(declare-fun m!1147891 () Bool)

(assert (=> b!1245906 m!1147891))

(declare-fun m!1147893 () Bool)

(assert (=> b!1245901 m!1147893))

(push 1)

(assert (not b!1245907))

(assert (not start!104384))

(assert (not b!1245900))

(assert (not b!1245904))

(assert (not b!1245903))

(assert (not b!1245899))

(assert (not b!1245901))

(assert (not b!1245898))

(assert (not b!1245906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137439 () Bool)

(declare-fun lt!562940 () Bool)

(declare-fun content!633 (List!27653) (Set (_ BitVec 64)))

(assert (=> d!137439 (= lt!562940 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!633 Nil!27650)))))

(declare-fun e!706570 () Bool)

(assert (=> d!137439 (= lt!562940 e!706570)))

(declare-fun res!831439 () Bool)

(assert (=> d!137439 (=> (not res!831439) (not e!706570))))

(assert (=> d!137439 (= res!831439 (is-Cons!27649 Nil!27650))))

(assert (=> d!137439 (= (contains!7471 Nil!27650 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562940)))

(declare-fun b!1245912 () Bool)

(declare-fun e!706569 () Bool)

(assert (=> b!1245912 (= e!706570 e!706569)))

(declare-fun res!831438 () Bool)

(assert (=> b!1245912 (=> res!831438 e!706569)))

(assert (=> b!1245912 (= res!831438 (= (h!28858 Nil!27650) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245913 () Bool)

(assert (=> b!1245913 (= e!706569 (contains!7471 (t!41129 Nil!27650) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137439 res!831439) b!1245912))

(assert (= (and b!1245912 (not res!831438)) b!1245913))

(declare-fun m!1147895 () Bool)

(assert (=> d!137439 m!1147895))

(declare-fun m!1147897 () Bool)

(assert (=> d!137439 m!1147897))

(declare-fun m!1147899 () Bool)

(assert (=> b!1245913 m!1147899))

(assert (=> b!1245904 d!137439))

(declare-fun d!137445 () Bool)

(assert (=> d!137445 (= (array_inv!29448 a!3892) (bvsge (size!39209 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104384 d!137445))

(declare-fun d!137447 () Bool)

(declare-fun res!831450 () Bool)

(declare-fun e!706583 () Bool)

(assert (=> d!137447 (=> res!831450 e!706583)))

(assert (=> d!137447 (= res!831450 (is-Nil!27650 lt!562937))))

(assert (=> d!137447 (= (noDuplicate!2061 lt!562937) e!706583)))

(declare-fun b!1245928 () Bool)

(declare-fun e!706584 () Bool)

(assert (=> b!1245928 (= e!706583 e!706584)))

(declare-fun res!831451 () Bool)

(assert (=> b!1245928 (=> (not res!831451) (not e!706584))))

(assert (=> b!1245928 (= res!831451 (not (contains!7471 (t!41129 lt!562937) (h!28858 lt!562937))))))

(declare-fun b!1245929 () Bool)

(assert (=> b!1245929 (= e!706584 (noDuplicate!2061 (t!41129 lt!562937)))))

(assert (= (and d!137447 (not res!831450)) b!1245928))

(assert (= (and b!1245928 res!831451) b!1245929))

(declare-fun m!1147901 () Bool)

(assert (=> b!1245928 m!1147901))

(declare-fun m!1147903 () Bool)

(assert (=> b!1245929 m!1147903))

(assert (=> b!1245899 d!137447))

(declare-fun d!137451 () Bool)

(assert (=> d!137451 (= (validKeyInArray!0 (select (arr!38672 a!3892) from!3270)) (and (not (= (select (arr!38672 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38672 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245898 d!137451))

(declare-fun d!137453 () Bool)

(declare-fun lt!562941 () Bool)

(assert (=> d!137453 (= lt!562941 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!633 Nil!27650)))))

(declare-fun e!706586 () Bool)

(assert (=> d!137453 (= lt!562941 e!706586)))

(declare-fun res!831453 () Bool)

(assert (=> d!137453 (=> (not res!831453) (not e!706586))))

(assert (=> d!137453 (= res!831453 (is-Cons!27649 Nil!27650))))

(assert (=> d!137453 (= (contains!7471 Nil!27650 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562941)))

(declare-fun b!1245930 () Bool)

(declare-fun e!706585 () Bool)

(assert (=> b!1245930 (= e!706586 e!706585)))

(declare-fun res!831452 () Bool)

(assert (=> b!1245930 (=> res!831452 e!706585)))

(assert (=> b!1245930 (= res!831452 (= (h!28858 Nil!27650) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245931 () Bool)

(assert (=> b!1245931 (= e!706585 (contains!7471 (t!41129 Nil!27650) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137453 res!831453) b!1245930))

(assert (= (and b!1245930 (not res!831452)) b!1245931))

(assert (=> d!137453 m!1147895))

(declare-fun m!1147905 () Bool)

(assert (=> d!137453 m!1147905))

(declare-fun m!1147907 () Bool)

(assert (=> b!1245931 m!1147907))

(assert (=> b!1245900 d!137453))

(declare-fun d!137455 () Bool)

(declare-fun lt!562942 () Bool)

(assert (=> d!137455 (= lt!562942 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!633 lt!562937)))))

(declare-fun e!706588 () Bool)

(assert (=> d!137455 (= lt!562942 e!706588)))

(declare-fun res!831455 () Bool)

(assert (=> d!137455 (=> (not res!831455) (not e!706588))))

(assert (=> d!137455 (= res!831455 (is-Cons!27649 lt!562937))))

(assert (=> d!137455 (= (contains!7471 lt!562937 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562942)))

(declare-fun b!1245932 () Bool)

(declare-fun e!706587 () Bool)

(assert (=> b!1245932 (= e!706588 e!706587)))

(declare-fun res!831454 () Bool)

(assert (=> b!1245932 (=> res!831454 e!706587)))

(assert (=> b!1245932 (= res!831454 (= (h!28858 lt!562937) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245933 () Bool)

(assert (=> b!1245933 (= e!706587 (contains!7471 (t!41129 lt!562937) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137455 res!831455) b!1245932))

(assert (= (and b!1245932 (not res!831454)) b!1245933))

(declare-fun m!1147909 () Bool)

(assert (=> d!137455 m!1147909))

(declare-fun m!1147911 () Bool)

(assert (=> d!137455 m!1147911))

(declare-fun m!1147913 () Bool)

(assert (=> b!1245933 m!1147913))

(assert (=> b!1245907 d!137455))

(declare-fun b!1245956 () Bool)

(declare-fun e!706611 () Bool)

(declare-fun e!706609 () Bool)

(assert (=> b!1245956 (= e!706611 e!706609)))

(declare-fun res!831477 () Bool)

(assert (=> b!1245956 (=> res!831477 e!706609)))

(declare-fun e!706610 () Bool)

(assert (=> b!1245956 (= res!831477 e!706610)))

(declare-fun res!831478 () Bool)

(assert (=> b!1245956 (=> (not res!831478) (not e!706610))))

(assert (=> b!1245956 (= res!831478 (= (h!28858 Nil!27650) (h!28858 lt!562937)))))

(declare-fun b!1245958 () Bool)

(assert (=> b!1245958 (= e!706609 (subseq!655 Nil!27650 (t!41129 lt!562937)))))

(declare-fun b!1245957 () Bool)

(assert (=> b!1245957 (= e!706610 (subseq!655 (t!41129 Nil!27650) (t!41129 lt!562937)))))

(declare-fun d!137457 () Bool)

(declare-fun res!831476 () Bool)

(declare-fun e!706612 () Bool)

(assert (=> d!137457 (=> res!831476 e!706612)))

(assert (=> d!137457 (= res!831476 (is-Nil!27650 Nil!27650))))

(assert (=> d!137457 (= (subseq!655 Nil!27650 lt!562937) e!706612)))

(declare-fun b!1245955 () Bool)

(assert (=> b!1245955 (= e!706612 e!706611)))

(declare-fun res!831475 () Bool)

(assert (=> b!1245955 (=> (not res!831475) (not e!706611))))

(assert (=> b!1245955 (= res!831475 (is-Cons!27649 lt!562937))))

(assert (= (and d!137457 (not res!831476)) b!1245955))

(assert (= (and b!1245955 res!831475) b!1245956))

(assert (= (and b!1245956 res!831478) b!1245957))

(assert (= (and b!1245956 (not res!831477)) b!1245958))

(declare-fun m!1147931 () Bool)

(assert (=> b!1245958 m!1147931))

(declare-fun m!1147933 () Bool)

(assert (=> b!1245957 m!1147933))

(assert (=> b!1245906 d!137457))

(declare-fun d!137465 () Bool)

(declare-fun lt!562949 () Bool)

(assert (=> d!137465 (= lt!562949 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!633 lt!562937)))))

(declare-fun e!706616 () Bool)

(assert (=> d!137465 (= lt!562949 e!706616)))

(declare-fun res!831482 () Bool)

(assert (=> d!137465 (=> (not res!831482) (not e!706616))))

(assert (=> d!137465 (= res!831482 (is-Cons!27649 lt!562937))))

(assert (=> d!137465 (= (contains!7471 lt!562937 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562949)))

(declare-fun b!1245961 () Bool)

(declare-fun e!706615 () Bool)

(assert (=> b!1245961 (= e!706616 e!706615)))

(declare-fun res!831481 () Bool)

(assert (=> b!1245961 (=> res!831481 e!706615)))

(assert (=> b!1245961 (= res!831481 (= (h!28858 lt!562937) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245962 () Bool)

(assert (=> b!1245962 (= e!706615 (contains!7471 (t!41129 lt!562937) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137465 res!831482) b!1245961))

(assert (= (and b!1245961 (not res!831481)) b!1245962))

(assert (=> d!137465 m!1147909))

(declare-fun m!1147935 () Bool)

(assert (=> d!137465 m!1147935))

(declare-fun m!1147937 () Bool)

(assert (=> b!1245962 m!1147937))

(assert (=> b!1245901 d!137465))

(declare-fun b!1245997 () Bool)

(declare-fun e!706650 () Bool)

(assert (=> b!1245997 (= e!706650 (contains!7471 Nil!27650 (select (arr!38672 a!3892) from!3270)))))

(declare-fun b!1245998 () Bool)

(declare-fun e!706649 () Bool)

(declare-fun e!706652 () Bool)

(assert (=> b!1245998 (= e!706649 e!706652)))

(declare-fun c!121929 () Bool)

(assert (=> b!1245998 (= c!121929 (validKeyInArray!0 (select (arr!38672 a!3892) from!3270)))))

(declare-fun b!1245999 () Bool)

(declare-fun e!706651 () Bool)

(assert (=> b!1245999 (= e!706651 e!706649)))

(declare-fun res!831515 () Bool)

(assert (=> b!1245999 (=> (not res!831515) (not e!706649))))

(assert (=> b!1245999 (= res!831515 (not e!706650))))

(declare-fun res!831513 () Bool)

(assert (=> b!1245999 (=> (not res!831513) (not e!706650))))

(assert (=> b!1245999 (= res!831513 (validKeyInArray!0 (select (arr!38672 a!3892) from!3270)))))

(declare-fun bm!61505 () Bool)

(declare-fun call!61508 () Bool)

(assert (=> bm!61505 (= call!61508 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121929 (Cons!27649 (select (arr!38672 a!3892) from!3270) Nil!27650) Nil!27650)))))

(declare-fun d!137469 () Bool)

(declare-fun res!831514 () Bool)

(assert (=> d!137469 (=> res!831514 e!706651)))

(assert (=> d!137469 (= res!831514 (bvsge from!3270 (size!39209 a!3892)))))

(assert (=> d!137469 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27650) e!706651)))

(declare-fun b!1246000 () Bool)

(assert (=> b!1246000 (= e!706652 call!61508)))

(declare-fun b!1246001 () Bool)

(assert (=> b!1246001 (= e!706652 call!61508)))

(assert (= (and d!137469 (not res!831514)) b!1245999))

(assert (= (and b!1245999 res!831513) b!1245997))

(assert (= (and b!1245999 res!831515) b!1245998))

(assert (= (and b!1245998 c!121929) b!1246000))

(assert (= (and b!1245998 (not c!121929)) b!1246001))

(assert (= (or b!1246000 b!1246001) bm!61505))

(assert (=> b!1245997 m!1147875))

(assert (=> b!1245997 m!1147875))

(declare-fun m!1147947 () Bool)

(assert (=> b!1245997 m!1147947))

(assert (=> b!1245998 m!1147875))

(assert (=> b!1245998 m!1147875))

(assert (=> b!1245998 m!1147879))

(assert (=> b!1245999 m!1147875))

(assert (=> b!1245999 m!1147875))

(assert (=> b!1245999 m!1147879))

(assert (=> bm!61505 m!1147875))

(declare-fun m!1147951 () Bool)

(assert (=> bm!61505 m!1147951))

(assert (=> b!1245903 d!137469))

(push 1)

(assert (not b!1245962))

(assert (not d!137455))

(assert (not bm!61505))

(assert (not d!137439))

(assert (not b!1245998))

(assert (not b!1245997))

(assert (not b!1245958))

(assert (not b!1245913))

(assert (not b!1245957))

(assert (not b!1245933))

