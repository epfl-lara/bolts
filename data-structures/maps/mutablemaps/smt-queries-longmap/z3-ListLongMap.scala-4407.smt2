; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60806 () Bool)

(assert start!60806)

(declare-fun b!681891 () Bool)

(declare-fun res!448125 () Bool)

(declare-fun e!388523 () Bool)

(assert (=> b!681891 (=> (not res!448125) (not e!388523))))

(declare-datatypes ((List!13028 0))(
  ( (Nil!13025) (Cons!13024 (h!14069 (_ BitVec 64)) (t!19276 List!13028)) )
))
(declare-fun acc!681 () List!13028)

(declare-fun contains!3571 (List!13028 (_ BitVec 64)) Bool)

(assert (=> b!681891 (= res!448125 (not (contains!3571 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681892 () Bool)

(declare-fun res!448134 () Bool)

(assert (=> b!681892 (=> (not res!448134) (not e!388523))))

(declare-datatypes ((array!39509 0))(
  ( (array!39510 (arr!18934 (Array (_ BitVec 32) (_ BitVec 64))) (size!19298 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39509)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39509 (_ BitVec 32) List!13028) Bool)

(assert (=> b!681892 (= res!448134 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!681893 () Bool)

(declare-fun res!448136 () Bool)

(assert (=> b!681893 (=> (not res!448136) (not e!388523))))

(declare-fun e!388522 () Bool)

(assert (=> b!681893 (= res!448136 e!388522)))

(declare-fun res!448131 () Bool)

(assert (=> b!681893 (=> res!448131 e!388522)))

(declare-fun e!388521 () Bool)

(assert (=> b!681893 (= res!448131 e!388521)))

(declare-fun res!448126 () Bool)

(assert (=> b!681893 (=> (not res!448126) (not e!388521))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!681893 (= res!448126 (bvsgt from!3004 i!1382))))

(declare-fun b!681894 () Bool)

(declare-datatypes ((Unit!23907 0))(
  ( (Unit!23908) )
))
(declare-fun e!388525 () Unit!23907)

(declare-fun Unit!23909 () Unit!23907)

(assert (=> b!681894 (= e!388525 Unit!23909)))

(declare-fun b!681895 () Bool)

(declare-fun res!448127 () Bool)

(assert (=> b!681895 (=> (not res!448127) (not e!388523))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681895 (= res!448127 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!681896 () Bool)

(declare-fun res!448135 () Bool)

(assert (=> b!681896 (=> (not res!448135) (not e!388523))))

(assert (=> b!681896 (= res!448135 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19298 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!448133 () Bool)

(assert (=> start!60806 (=> (not res!448133) (not e!388523))))

(assert (=> start!60806 (= res!448133 (and (bvslt (size!19298 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19298 a!3626))))))

(assert (=> start!60806 e!388523))

(assert (=> start!60806 true))

(declare-fun array_inv!14708 (array!39509) Bool)

(assert (=> start!60806 (array_inv!14708 a!3626)))

(declare-fun b!681897 () Bool)

(declare-fun e!388519 () Bool)

(assert (=> b!681897 (= e!388519 (not (contains!3571 acc!681 k0!2843)))))

(declare-fun b!681898 () Bool)

(declare-fun res!448130 () Bool)

(assert (=> b!681898 (=> (not res!448130) (not e!388523))))

(assert (=> b!681898 (= res!448130 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19298 a!3626))))))

(declare-fun b!681899 () Bool)

(assert (=> b!681899 (= e!388523 (not (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))))

(declare-fun lt!313376 () Unit!23907)

(declare-fun e!388520 () Unit!23907)

(assert (=> b!681899 (= lt!313376 e!388520)))

(declare-fun c!77252 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681899 (= c!77252 (validKeyInArray!0 (select (arr!18934 a!3626) from!3004)))))

(declare-fun lt!313377 () Unit!23907)

(assert (=> b!681899 (= lt!313377 e!388525)))

(declare-fun c!77251 () Bool)

(assert (=> b!681899 (= c!77251 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681899 (arrayContainsKey!0 (array!39510 (store (arr!18934 a!3626) i!1382 k0!2843) (size!19298 a!3626)) k0!2843 from!3004)))

(declare-fun b!681900 () Bool)

(declare-fun lt!313373 () Unit!23907)

(assert (=> b!681900 (= e!388520 lt!313373)))

(declare-fun lt!313375 () Unit!23907)

(declare-fun lemmaListSubSeqRefl!0 (List!13028) Unit!23907)

(assert (=> b!681900 (= lt!313375 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!156 (List!13028 List!13028) Bool)

(assert (=> b!681900 (subseq!156 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39509 List!13028 List!13028 (_ BitVec 32)) Unit!23907)

(declare-fun $colon$colon!320 (List!13028 (_ BitVec 64)) List!13028)

(assert (=> b!681900 (= lt!313373 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!320 acc!681 (select (arr!18934 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681900 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!681901 () Bool)

(declare-fun res!448129 () Bool)

(assert (=> b!681901 (=> (not res!448129) (not e!388523))))

(assert (=> b!681901 (= res!448129 (validKeyInArray!0 k0!2843))))

(declare-fun b!681902 () Bool)

(declare-fun res!448124 () Bool)

(assert (=> b!681902 (=> (not res!448124) (not e!388523))))

(assert (=> b!681902 (= res!448124 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13025))))

(declare-fun b!681903 () Bool)

(declare-fun Unit!23910 () Unit!23907)

(assert (=> b!681903 (= e!388520 Unit!23910)))

(declare-fun b!681904 () Bool)

(declare-fun res!448128 () Bool)

(assert (=> b!681904 (=> (not res!448128) (not e!388523))))

(declare-fun noDuplicate!818 (List!13028) Bool)

(assert (=> b!681904 (= res!448128 (noDuplicate!818 acc!681))))

(declare-fun b!681905 () Bool)

(assert (=> b!681905 (= e!388522 e!388519)))

(declare-fun res!448123 () Bool)

(assert (=> b!681905 (=> (not res!448123) (not e!388519))))

(assert (=> b!681905 (= res!448123 (bvsle from!3004 i!1382))))

(declare-fun b!681906 () Bool)

(declare-fun res!448132 () Bool)

(assert (=> b!681906 (=> (not res!448132) (not e!388523))))

(assert (=> b!681906 (= res!448132 (not (contains!3571 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681907 () Bool)

(declare-fun Unit!23911 () Unit!23907)

(assert (=> b!681907 (= e!388525 Unit!23911)))

(declare-fun lt!313374 () Unit!23907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39509 (_ BitVec 64) (_ BitVec 32)) Unit!23907)

(assert (=> b!681907 (= lt!313374 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!681907 false))

(declare-fun b!681908 () Bool)

(assert (=> b!681908 (= e!388521 (contains!3571 acc!681 k0!2843))))

(assert (= (and start!60806 res!448133) b!681904))

(assert (= (and b!681904 res!448128) b!681906))

(assert (= (and b!681906 res!448132) b!681891))

(assert (= (and b!681891 res!448125) b!681893))

(assert (= (and b!681893 res!448126) b!681908))

(assert (= (and b!681893 (not res!448131)) b!681905))

(assert (= (and b!681905 res!448123) b!681897))

(assert (= (and b!681893 res!448136) b!681902))

(assert (= (and b!681902 res!448124) b!681892))

(assert (= (and b!681892 res!448134) b!681898))

(assert (= (and b!681898 res!448130) b!681901))

(assert (= (and b!681901 res!448129) b!681895))

(assert (= (and b!681895 res!448127) b!681896))

(assert (= (and b!681896 res!448135) b!681899))

(assert (= (and b!681899 c!77251) b!681907))

(assert (= (and b!681899 (not c!77251)) b!681894))

(assert (= (and b!681899 c!77252) b!681900))

(assert (= (and b!681899 (not c!77252)) b!681903))

(declare-fun m!646723 () Bool)

(assert (=> b!681906 m!646723))

(declare-fun m!646725 () Bool)

(assert (=> b!681902 m!646725))

(declare-fun m!646727 () Bool)

(assert (=> b!681892 m!646727))

(declare-fun m!646729 () Bool)

(assert (=> b!681897 m!646729))

(declare-fun m!646731 () Bool)

(assert (=> b!681900 m!646731))

(declare-fun m!646733 () Bool)

(assert (=> b!681900 m!646733))

(declare-fun m!646735 () Bool)

(assert (=> b!681900 m!646735))

(declare-fun m!646737 () Bool)

(assert (=> b!681900 m!646737))

(assert (=> b!681900 m!646733))

(assert (=> b!681900 m!646735))

(declare-fun m!646739 () Bool)

(assert (=> b!681900 m!646739))

(declare-fun m!646741 () Bool)

(assert (=> b!681900 m!646741))

(declare-fun m!646743 () Bool)

(assert (=> b!681891 m!646743))

(declare-fun m!646745 () Bool)

(assert (=> b!681901 m!646745))

(assert (=> b!681908 m!646729))

(assert (=> b!681899 m!646731))

(assert (=> b!681899 m!646733))

(declare-fun m!646747 () Bool)

(assert (=> b!681899 m!646747))

(declare-fun m!646749 () Bool)

(assert (=> b!681899 m!646749))

(assert (=> b!681899 m!646733))

(declare-fun m!646751 () Bool)

(assert (=> b!681899 m!646751))

(declare-fun m!646753 () Bool)

(assert (=> b!681899 m!646753))

(declare-fun m!646755 () Bool)

(assert (=> b!681907 m!646755))

(declare-fun m!646757 () Bool)

(assert (=> b!681895 m!646757))

(declare-fun m!646759 () Bool)

(assert (=> start!60806 m!646759))

(declare-fun m!646761 () Bool)

(assert (=> b!681904 m!646761))

(check-sat (not b!681904) (not b!681907) (not b!681895) (not b!681897) (not b!681892) (not b!681899) (not b!681891) (not start!60806) (not b!681900) (not b!681906) (not b!681901) (not b!681902) (not b!681908))
(check-sat)
(get-model)

(declare-fun d!93927 () Bool)

(assert (=> d!93927 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681901 d!93927))

(declare-fun d!93929 () Bool)

(assert (=> d!93929 (= ($colon$colon!320 acc!681 (select (arr!18934 a!3626) from!3004)) (Cons!13024 (select (arr!18934 a!3626) from!3004) acc!681))))

(assert (=> b!681900 d!93929))

(declare-fun b!681972 () Bool)

(declare-fun e!388556 () Bool)

(declare-fun e!388555 () Bool)

(assert (=> b!681972 (= e!388556 e!388555)))

(declare-fun res!448187 () Bool)

(assert (=> b!681972 (=> res!448187 e!388555)))

(declare-fun e!388557 () Bool)

(assert (=> b!681972 (= res!448187 e!388557)))

(declare-fun res!448189 () Bool)

(assert (=> b!681972 (=> (not res!448189) (not e!388557))))

(assert (=> b!681972 (= res!448189 (= (h!14069 acc!681) (h!14069 acc!681)))))

(declare-fun b!681971 () Bool)

(declare-fun e!388558 () Bool)

(assert (=> b!681971 (= e!388558 e!388556)))

(declare-fun res!448190 () Bool)

(assert (=> b!681971 (=> (not res!448190) (not e!388556))))

(get-info :version)

(assert (=> b!681971 (= res!448190 ((_ is Cons!13024) acc!681))))

(declare-fun d!93931 () Bool)

(declare-fun res!448188 () Bool)

(assert (=> d!93931 (=> res!448188 e!388558)))

(assert (=> d!93931 (= res!448188 ((_ is Nil!13025) acc!681))))

(assert (=> d!93931 (= (subseq!156 acc!681 acc!681) e!388558)))

(declare-fun b!681974 () Bool)

(assert (=> b!681974 (= e!388555 (subseq!156 acc!681 (t!19276 acc!681)))))

(declare-fun b!681973 () Bool)

(assert (=> b!681973 (= e!388557 (subseq!156 (t!19276 acc!681) (t!19276 acc!681)))))

(assert (= (and d!93931 (not res!448188)) b!681971))

(assert (= (and b!681971 res!448190) b!681972))

(assert (= (and b!681972 res!448189) b!681973))

(assert (= (and b!681972 (not res!448187)) b!681974))

(declare-fun m!646803 () Bool)

(assert (=> b!681974 m!646803))

(declare-fun m!646805 () Bool)

(assert (=> b!681973 m!646805))

(assert (=> b!681900 d!93931))

(declare-fun d!93933 () Bool)

(assert (=> d!93933 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313397 () Unit!23907)

(declare-fun choose!80 (array!39509 List!13028 List!13028 (_ BitVec 32)) Unit!23907)

(assert (=> d!93933 (= lt!313397 (choose!80 a!3626 ($colon$colon!320 acc!681 (select (arr!18934 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!93933 (bvslt (size!19298 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!93933 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!320 acc!681 (select (arr!18934 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!313397)))

(declare-fun bs!20012 () Bool)

(assert (= bs!20012 d!93933))

(assert (=> bs!20012 m!646731))

(assert (=> bs!20012 m!646735))

(declare-fun m!646807 () Bool)

(assert (=> bs!20012 m!646807))

(assert (=> b!681900 d!93933))

(declare-fun d!93939 () Bool)

(assert (=> d!93939 (subseq!156 acc!681 acc!681)))

(declare-fun lt!313401 () Unit!23907)

(declare-fun choose!36 (List!13028) Unit!23907)

(assert (=> d!93939 (= lt!313401 (choose!36 acc!681))))

(assert (=> d!93939 (= (lemmaListSubSeqRefl!0 acc!681) lt!313401)))

(declare-fun bs!20013 () Bool)

(assert (= bs!20013 d!93939))

(assert (=> bs!20013 m!646741))

(declare-fun m!646815 () Bool)

(assert (=> bs!20013 m!646815))

(assert (=> b!681900 d!93939))

(declare-fun b!682025 () Bool)

(declare-fun e!388605 () Bool)

(declare-fun call!33993 () Bool)

(assert (=> b!682025 (= e!388605 call!33993)))

(declare-fun b!682026 () Bool)

(declare-fun e!388606 () Bool)

(declare-fun e!388604 () Bool)

(assert (=> b!682026 (= e!388606 e!388604)))

(declare-fun res!448230 () Bool)

(assert (=> b!682026 (=> (not res!448230) (not e!388604))))

(declare-fun e!388603 () Bool)

(assert (=> b!682026 (= res!448230 (not e!388603))))

(declare-fun res!448231 () Bool)

(assert (=> b!682026 (=> (not res!448231) (not e!388603))))

(assert (=> b!682026 (= res!448231 (validKeyInArray!0 (select (arr!18934 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!33990 () Bool)

(declare-fun c!77265 () Bool)

(assert (=> bm!33990 (= call!33993 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77265 (Cons!13024 (select (arr!18934 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!682027 () Bool)

(assert (=> b!682027 (= e!388603 (contains!3571 acc!681 (select (arr!18934 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!93945 () Bool)

(declare-fun res!448229 () Bool)

(assert (=> d!93945 (=> res!448229 e!388606)))

(assert (=> d!93945 (= res!448229 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19298 a!3626)))))

(assert (=> d!93945 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!388606)))

(declare-fun b!682028 () Bool)

(assert (=> b!682028 (= e!388605 call!33993)))

(declare-fun b!682029 () Bool)

(assert (=> b!682029 (= e!388604 e!388605)))

(assert (=> b!682029 (= c!77265 (validKeyInArray!0 (select (arr!18934 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!93945 (not res!448229)) b!682026))

(assert (= (and b!682026 res!448231) b!682027))

(assert (= (and b!682026 res!448230) b!682029))

(assert (= (and b!682029 c!77265) b!682025))

(assert (= (and b!682029 (not c!77265)) b!682028))

(assert (= (or b!682025 b!682028) bm!33990))

(declare-fun m!646849 () Bool)

(assert (=> b!682026 m!646849))

(assert (=> b!682026 m!646849))

(declare-fun m!646851 () Bool)

(assert (=> b!682026 m!646851))

(assert (=> bm!33990 m!646849))

(declare-fun m!646853 () Bool)

(assert (=> bm!33990 m!646853))

(assert (=> b!682027 m!646849))

(assert (=> b!682027 m!646849))

(declare-fun m!646857 () Bool)

(assert (=> b!682027 m!646857))

(assert (=> b!682029 m!646849))

(assert (=> b!682029 m!646849))

(assert (=> b!682029 m!646851))

(assert (=> b!681900 d!93945))

(assert (=> b!681899 d!93945))

(declare-fun d!93961 () Bool)

(assert (=> d!93961 (= (validKeyInArray!0 (select (arr!18934 a!3626) from!3004)) (and (not (= (select (arr!18934 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18934 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681899 d!93961))

(declare-fun d!93965 () Bool)

(declare-fun res!448253 () Bool)

(declare-fun e!388631 () Bool)

(assert (=> d!93965 (=> res!448253 e!388631)))

(assert (=> d!93965 (= res!448253 (= (select (arr!18934 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!93965 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!388631)))

(declare-fun b!682057 () Bool)

(declare-fun e!388632 () Bool)

(assert (=> b!682057 (= e!388631 e!388632)))

(declare-fun res!448254 () Bool)

(assert (=> b!682057 (=> (not res!448254) (not e!388632))))

(assert (=> b!682057 (= res!448254 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19298 a!3626)))))

(declare-fun b!682058 () Bool)

(assert (=> b!682058 (= e!388632 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93965 (not res!448253)) b!682057))

(assert (= (and b!682057 res!448254) b!682058))

(assert (=> d!93965 m!646849))

(declare-fun m!646871 () Bool)

(assert (=> b!682058 m!646871))

(assert (=> b!681899 d!93965))

(declare-fun d!93975 () Bool)

(declare-fun res!448257 () Bool)

(declare-fun e!388635 () Bool)

(assert (=> d!93975 (=> res!448257 e!388635)))

(assert (=> d!93975 (= res!448257 (= (select (arr!18934 (array!39510 (store (arr!18934 a!3626) i!1382 k0!2843) (size!19298 a!3626))) from!3004) k0!2843))))

(assert (=> d!93975 (= (arrayContainsKey!0 (array!39510 (store (arr!18934 a!3626) i!1382 k0!2843) (size!19298 a!3626)) k0!2843 from!3004) e!388635)))

(declare-fun b!682061 () Bool)

(declare-fun e!388636 () Bool)

(assert (=> b!682061 (= e!388635 e!388636)))

(declare-fun res!448258 () Bool)

(assert (=> b!682061 (=> (not res!448258) (not e!388636))))

(assert (=> b!682061 (= res!448258 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19298 (array!39510 (store (arr!18934 a!3626) i!1382 k0!2843) (size!19298 a!3626)))))))

(declare-fun b!682062 () Bool)

(assert (=> b!682062 (= e!388636 (arrayContainsKey!0 (array!39510 (store (arr!18934 a!3626) i!1382 k0!2843) (size!19298 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93975 (not res!448257)) b!682061))

(assert (= (and b!682061 res!448258) b!682062))

(declare-fun m!646873 () Bool)

(assert (=> d!93975 m!646873))

(declare-fun m!646875 () Bool)

(assert (=> b!682062 m!646875))

(assert (=> b!681899 d!93975))

(declare-fun d!93979 () Bool)

(assert (=> d!93979 (= (array_inv!14708 a!3626) (bvsge (size!19298 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60806 d!93979))

(declare-fun d!93981 () Bool)

(declare-fun lt!313414 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!282 (List!13028) (InoxSet (_ BitVec 64)))

(assert (=> d!93981 (= lt!313414 (select (content!282 acc!681) k0!2843))))

(declare-fun e!388666 () Bool)

(assert (=> d!93981 (= lt!313414 e!388666)))

(declare-fun res!448286 () Bool)

(assert (=> d!93981 (=> (not res!448286) (not e!388666))))

(assert (=> d!93981 (= res!448286 ((_ is Cons!13024) acc!681))))

(assert (=> d!93981 (= (contains!3571 acc!681 k0!2843) lt!313414)))

(declare-fun b!682092 () Bool)

(declare-fun e!388665 () Bool)

(assert (=> b!682092 (= e!388666 e!388665)))

(declare-fun res!448287 () Bool)

(assert (=> b!682092 (=> res!448287 e!388665)))

(assert (=> b!682092 (= res!448287 (= (h!14069 acc!681) k0!2843))))

(declare-fun b!682093 () Bool)

(assert (=> b!682093 (= e!388665 (contains!3571 (t!19276 acc!681) k0!2843))))

(assert (= (and d!93981 res!448286) b!682092))

(assert (= (and b!682092 (not res!448287)) b!682093))

(declare-fun m!646903 () Bool)

(assert (=> d!93981 m!646903))

(declare-fun m!646905 () Bool)

(assert (=> d!93981 m!646905))

(declare-fun m!646907 () Bool)

(assert (=> b!682093 m!646907))

(assert (=> b!681908 d!93981))

(assert (=> b!681897 d!93981))

(declare-fun d!93997 () Bool)

(assert (=> d!93997 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313423 () Unit!23907)

(declare-fun choose!13 (array!39509 (_ BitVec 64) (_ BitVec 32)) Unit!23907)

(assert (=> d!93997 (= lt!313423 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!93997 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93997 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!313423)))

(declare-fun bs!20017 () Bool)

(assert (= bs!20017 d!93997))

(assert (=> bs!20017 m!646757))

(declare-fun m!646913 () Bool)

(assert (=> bs!20017 m!646913))

(assert (=> b!681907 d!93997))

(declare-fun d!94003 () Bool)

(declare-fun lt!313424 () Bool)

(assert (=> d!94003 (= lt!313424 (select (content!282 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388678 () Bool)

(assert (=> d!94003 (= lt!313424 e!388678)))

(declare-fun res!448298 () Bool)

(assert (=> d!94003 (=> (not res!448298) (not e!388678))))

(assert (=> d!94003 (= res!448298 ((_ is Cons!13024) acc!681))))

(assert (=> d!94003 (= (contains!3571 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313424)))

(declare-fun b!682104 () Bool)

(declare-fun e!388677 () Bool)

(assert (=> b!682104 (= e!388678 e!388677)))

(declare-fun res!448299 () Bool)

(assert (=> b!682104 (=> res!448299 e!388677)))

(assert (=> b!682104 (= res!448299 (= (h!14069 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!682105 () Bool)

(assert (=> b!682105 (= e!388677 (contains!3571 (t!19276 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94003 res!448298) b!682104))

(assert (= (and b!682104 (not res!448299)) b!682105))

(assert (=> d!94003 m!646903))

(declare-fun m!646919 () Bool)

(assert (=> d!94003 m!646919))

(declare-fun m!646921 () Bool)

(assert (=> b!682105 m!646921))

(assert (=> b!681906 d!94003))

(declare-fun d!94007 () Bool)

(declare-fun res!448300 () Bool)

(declare-fun e!388679 () Bool)

(assert (=> d!94007 (=> res!448300 e!388679)))

(assert (=> d!94007 (= res!448300 (= (select (arr!18934 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!94007 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!388679)))

(declare-fun b!682106 () Bool)

(declare-fun e!388680 () Bool)

(assert (=> b!682106 (= e!388679 e!388680)))

(declare-fun res!448301 () Bool)

(assert (=> b!682106 (=> (not res!448301) (not e!388680))))

(assert (=> b!682106 (= res!448301 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19298 a!3626)))))

(declare-fun b!682107 () Bool)

(assert (=> b!682107 (= e!388680 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94007 (not res!448300)) b!682106))

(assert (= (and b!682106 res!448301) b!682107))

(declare-fun m!646923 () Bool)

(assert (=> d!94007 m!646923))

(declare-fun m!646929 () Bool)

(assert (=> b!682107 m!646929))

(assert (=> b!681895 d!94007))

(declare-fun d!94011 () Bool)

(declare-fun res!448313 () Bool)

(declare-fun e!388693 () Bool)

(assert (=> d!94011 (=> res!448313 e!388693)))

(assert (=> d!94011 (= res!448313 ((_ is Nil!13025) acc!681))))

(assert (=> d!94011 (= (noDuplicate!818 acc!681) e!388693)))

(declare-fun b!682121 () Bool)

(declare-fun e!388694 () Bool)

(assert (=> b!682121 (= e!388693 e!388694)))

(declare-fun res!448314 () Bool)

(assert (=> b!682121 (=> (not res!448314) (not e!388694))))

(assert (=> b!682121 (= res!448314 (not (contains!3571 (t!19276 acc!681) (h!14069 acc!681))))))

(declare-fun b!682122 () Bool)

(assert (=> b!682122 (= e!388694 (noDuplicate!818 (t!19276 acc!681)))))

(assert (= (and d!94011 (not res!448313)) b!682121))

(assert (= (and b!682121 res!448314) b!682122))

(declare-fun m!646935 () Bool)

(assert (=> b!682121 m!646935))

(declare-fun m!646937 () Bool)

(assert (=> b!682122 m!646937))

(assert (=> b!681904 d!94011))

(declare-fun b!682123 () Bool)

(declare-fun e!388697 () Bool)

(declare-fun call!33999 () Bool)

(assert (=> b!682123 (= e!388697 call!33999)))

(declare-fun b!682124 () Bool)

(declare-fun e!388698 () Bool)

(declare-fun e!388696 () Bool)

(assert (=> b!682124 (= e!388698 e!388696)))

(declare-fun res!448316 () Bool)

(assert (=> b!682124 (=> (not res!448316) (not e!388696))))

(declare-fun e!388695 () Bool)

(assert (=> b!682124 (= res!448316 (not e!388695))))

(declare-fun res!448317 () Bool)

(assert (=> b!682124 (=> (not res!448317) (not e!388695))))

(assert (=> b!682124 (= res!448317 (validKeyInArray!0 (select (arr!18934 a!3626) from!3004)))))

(declare-fun bm!33996 () Bool)

(declare-fun c!77271 () Bool)

(assert (=> bm!33996 (= call!33999 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77271 (Cons!13024 (select (arr!18934 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!682125 () Bool)

(assert (=> b!682125 (= e!388695 (contains!3571 acc!681 (select (arr!18934 a!3626) from!3004)))))

(declare-fun d!94017 () Bool)

(declare-fun res!448315 () Bool)

(assert (=> d!94017 (=> res!448315 e!388698)))

(assert (=> d!94017 (= res!448315 (bvsge from!3004 (size!19298 a!3626)))))

(assert (=> d!94017 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!388698)))

(declare-fun b!682126 () Bool)

(assert (=> b!682126 (= e!388697 call!33999)))

(declare-fun b!682127 () Bool)

(assert (=> b!682127 (= e!388696 e!388697)))

(assert (=> b!682127 (= c!77271 (validKeyInArray!0 (select (arr!18934 a!3626) from!3004)))))

(assert (= (and d!94017 (not res!448315)) b!682124))

(assert (= (and b!682124 res!448317) b!682125))

(assert (= (and b!682124 res!448316) b!682127))

(assert (= (and b!682127 c!77271) b!682123))

(assert (= (and b!682127 (not c!77271)) b!682126))

(assert (= (or b!682123 b!682126) bm!33996))

(assert (=> b!682124 m!646733))

(assert (=> b!682124 m!646733))

(assert (=> b!682124 m!646751))

(assert (=> bm!33996 m!646733))

(declare-fun m!646945 () Bool)

(assert (=> bm!33996 m!646945))

(assert (=> b!682125 m!646733))

(assert (=> b!682125 m!646733))

(declare-fun m!646947 () Bool)

(assert (=> b!682125 m!646947))

(assert (=> b!682127 m!646733))

(assert (=> b!682127 m!646733))

(assert (=> b!682127 m!646751))

(assert (=> b!681892 d!94017))

(declare-fun b!682128 () Bool)

(declare-fun e!388701 () Bool)

(declare-fun call!34000 () Bool)

(assert (=> b!682128 (= e!388701 call!34000)))

(declare-fun b!682129 () Bool)

(declare-fun e!388702 () Bool)

(declare-fun e!388700 () Bool)

(assert (=> b!682129 (= e!388702 e!388700)))

(declare-fun res!448319 () Bool)

(assert (=> b!682129 (=> (not res!448319) (not e!388700))))

(declare-fun e!388699 () Bool)

(assert (=> b!682129 (= res!448319 (not e!388699))))

(declare-fun res!448320 () Bool)

(assert (=> b!682129 (=> (not res!448320) (not e!388699))))

(assert (=> b!682129 (= res!448320 (validKeyInArray!0 (select (arr!18934 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!33997 () Bool)

(declare-fun c!77272 () Bool)

(assert (=> bm!33997 (= call!34000 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77272 (Cons!13024 (select (arr!18934 a!3626) #b00000000000000000000000000000000) Nil!13025) Nil!13025)))))

(declare-fun b!682130 () Bool)

(assert (=> b!682130 (= e!388699 (contains!3571 Nil!13025 (select (arr!18934 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!94021 () Bool)

(declare-fun res!448318 () Bool)

(assert (=> d!94021 (=> res!448318 e!388702)))

(assert (=> d!94021 (= res!448318 (bvsge #b00000000000000000000000000000000 (size!19298 a!3626)))))

(assert (=> d!94021 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13025) e!388702)))

(declare-fun b!682131 () Bool)

(assert (=> b!682131 (= e!388701 call!34000)))

(declare-fun b!682132 () Bool)

(assert (=> b!682132 (= e!388700 e!388701)))

(assert (=> b!682132 (= c!77272 (validKeyInArray!0 (select (arr!18934 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!94021 (not res!448318)) b!682129))

(assert (= (and b!682129 res!448320) b!682130))

(assert (= (and b!682129 res!448319) b!682132))

(assert (= (and b!682132 c!77272) b!682128))

(assert (= (and b!682132 (not c!77272)) b!682131))

(assert (= (or b!682128 b!682131) bm!33997))

(assert (=> b!682129 m!646923))

(assert (=> b!682129 m!646923))

(declare-fun m!646949 () Bool)

(assert (=> b!682129 m!646949))

(assert (=> bm!33997 m!646923))

(declare-fun m!646951 () Bool)

(assert (=> bm!33997 m!646951))

(assert (=> b!682130 m!646923))

(assert (=> b!682130 m!646923))

(declare-fun m!646953 () Bool)

(assert (=> b!682130 m!646953))

(assert (=> b!682132 m!646923))

(assert (=> b!682132 m!646923))

(assert (=> b!682132 m!646949))

(assert (=> b!681902 d!94021))

(declare-fun d!94025 () Bool)

(declare-fun lt!313428 () Bool)

(assert (=> d!94025 (= lt!313428 (select (content!282 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!388704 () Bool)

(assert (=> d!94025 (= lt!313428 e!388704)))

(declare-fun res!448321 () Bool)

(assert (=> d!94025 (=> (not res!448321) (not e!388704))))

(assert (=> d!94025 (= res!448321 ((_ is Cons!13024) acc!681))))

(assert (=> d!94025 (= (contains!3571 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313428)))

(declare-fun b!682133 () Bool)

(declare-fun e!388703 () Bool)

(assert (=> b!682133 (= e!388704 e!388703)))

(declare-fun res!448322 () Bool)

(assert (=> b!682133 (=> res!448322 e!388703)))

(assert (=> b!682133 (= res!448322 (= (h!14069 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!682134 () Bool)

(assert (=> b!682134 (= e!388703 (contains!3571 (t!19276 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94025 res!448321) b!682133))

(assert (= (and b!682133 (not res!448322)) b!682134))

(assert (=> d!94025 m!646903))

(declare-fun m!646955 () Bool)

(assert (=> d!94025 m!646955))

(declare-fun m!646957 () Bool)

(assert (=> b!682134 m!646957))

(assert (=> b!681891 d!94025))

(check-sat (not b!682058) (not b!682062) (not b!682107) (not b!682029) (not b!682122) (not b!682134) (not b!682125) (not b!682130) (not b!682105) (not b!682121) (not d!93939) (not d!94003) (not b!682026) (not b!682124) (not d!93981) (not b!682127) (not bm!33997) (not b!681973) (not b!682132) (not d!93933) (not bm!33990) (not b!682129) (not d!93997) (not b!682093) (not bm!33996) (not d!94025) (not b!681974) (not b!682027))
(check-sat)
