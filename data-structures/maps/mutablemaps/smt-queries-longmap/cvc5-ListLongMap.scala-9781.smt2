; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115928 () Bool)

(assert start!115928)

(declare-fun b!1369932 () Bool)

(declare-fun res!913523 () Bool)

(declare-fun e!775964 () Bool)

(assert (=> b!1369932 (=> (not res!913523) (not e!775964))))

(declare-datatypes ((List!32147 0))(
  ( (Nil!32144) (Cons!32143 (h!33352 (_ BitVec 64)) (t!46848 List!32147)) )
))
(declare-fun acc!866 () List!32147)

(declare-fun noDuplicate!2564 (List!32147) Bool)

(assert (=> b!1369932 (= res!913523 (noDuplicate!2564 acc!866))))

(declare-datatypes ((array!92965 0))(
  ( (array!92966 (arr!44899 (Array (_ BitVec 32) (_ BitVec 64))) (size!45450 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92965)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun e!775966 () Bool)

(declare-fun b!1369933 () Bool)

(assert (=> b!1369933 (= e!775966 (not (noDuplicate!2564 (Cons!32143 (select (arr!44899 a!3861) from!3239) acc!866))))))

(declare-fun b!1369934 () Bool)

(declare-fun res!913519 () Bool)

(assert (=> b!1369934 (=> (not res!913519) (not e!775966))))

(assert (=> b!1369934 (= res!913519 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1369935 () Bool)

(declare-fun res!913513 () Bool)

(assert (=> b!1369935 (=> (not res!913513) (not e!775966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369935 (= res!913513 (validKeyInArray!0 (select (arr!44899 a!3861) from!3239)))))

(declare-fun res!913522 () Bool)

(assert (=> start!115928 (=> (not res!913522) (not e!775964))))

(assert (=> start!115928 (= res!913522 (and (bvslt (size!45450 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45450 a!3861))))))

(assert (=> start!115928 e!775964))

(declare-fun array_inv!33844 (array!92965) Bool)

(assert (=> start!115928 (array_inv!33844 a!3861)))

(assert (=> start!115928 true))

(declare-fun b!1369936 () Bool)

(declare-fun res!913514 () Bool)

(assert (=> b!1369936 (=> (not res!913514) (not e!775966))))

(declare-fun contains!9685 (List!32147 (_ BitVec 64)) Bool)

(assert (=> b!1369936 (= res!913514 (not (contains!9685 acc!866 (select (arr!44899 a!3861) from!3239))))))

(declare-fun b!1369937 () Bool)

(declare-fun res!913524 () Bool)

(assert (=> b!1369937 (=> (not res!913524) (not e!775966))))

(assert (=> b!1369937 (= res!913524 (bvslt from!3239 (size!45450 a!3861)))))

(declare-fun b!1369938 () Bool)

(declare-fun res!913516 () Bool)

(assert (=> b!1369938 (=> (not res!913516) (not e!775964))))

(assert (=> b!1369938 (= res!913516 (not (contains!9685 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369939 () Bool)

(assert (=> b!1369939 (= e!775964 e!775966)))

(declare-fun res!913520 () Bool)

(assert (=> b!1369939 (=> (not res!913520) (not e!775966))))

(declare-fun arrayNoDuplicates!0 (array!92965 (_ BitVec 32) List!32147) Bool)

(assert (=> b!1369939 (= res!913520 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45233 0))(
  ( (Unit!45234) )
))
(declare-fun lt!602309 () Unit!45233)

(declare-fun newAcc!98 () List!32147)

(declare-fun noDuplicateSubseq!263 (List!32147 List!32147) Unit!45233)

(assert (=> b!1369939 (= lt!602309 (noDuplicateSubseq!263 newAcc!98 acc!866))))

(declare-fun b!1369940 () Bool)

(declare-fun res!913517 () Bool)

(assert (=> b!1369940 (=> (not res!913517) (not e!775964))))

(assert (=> b!1369940 (= res!913517 (not (contains!9685 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369941 () Bool)

(declare-fun res!913521 () Bool)

(assert (=> b!1369941 (=> (not res!913521) (not e!775964))))

(assert (=> b!1369941 (= res!913521 (not (contains!9685 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369942 () Bool)

(declare-fun res!913515 () Bool)

(assert (=> b!1369942 (=> (not res!913515) (not e!775964))))

(declare-fun subseq!1076 (List!32147 List!32147) Bool)

(assert (=> b!1369942 (= res!913515 (subseq!1076 newAcc!98 acc!866))))

(declare-fun b!1369943 () Bool)

(declare-fun res!913518 () Bool)

(assert (=> b!1369943 (=> (not res!913518) (not e!775964))))

(assert (=> b!1369943 (= res!913518 (not (contains!9685 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115928 res!913522) b!1369932))

(assert (= (and b!1369932 res!913523) b!1369938))

(assert (= (and b!1369938 res!913516) b!1369941))

(assert (= (and b!1369941 res!913521) b!1369940))

(assert (= (and b!1369940 res!913517) b!1369943))

(assert (= (and b!1369943 res!913518) b!1369942))

(assert (= (and b!1369942 res!913515) b!1369939))

(assert (= (and b!1369939 res!913520) b!1369937))

(assert (= (and b!1369937 res!913524) b!1369935))

(assert (= (and b!1369935 res!913513) b!1369936))

(assert (= (and b!1369936 res!913514) b!1369934))

(assert (= (and b!1369934 res!913519) b!1369933))

(declare-fun m!1253629 () Bool)

(assert (=> b!1369938 m!1253629))

(declare-fun m!1253631 () Bool)

(assert (=> b!1369933 m!1253631))

(declare-fun m!1253633 () Bool)

(assert (=> b!1369933 m!1253633))

(declare-fun m!1253635 () Bool)

(assert (=> b!1369942 m!1253635))

(assert (=> b!1369935 m!1253631))

(assert (=> b!1369935 m!1253631))

(declare-fun m!1253637 () Bool)

(assert (=> b!1369935 m!1253637))

(declare-fun m!1253639 () Bool)

(assert (=> b!1369939 m!1253639))

(declare-fun m!1253641 () Bool)

(assert (=> b!1369939 m!1253641))

(assert (=> b!1369936 m!1253631))

(assert (=> b!1369936 m!1253631))

(declare-fun m!1253643 () Bool)

(assert (=> b!1369936 m!1253643))

(declare-fun m!1253645 () Bool)

(assert (=> b!1369943 m!1253645))

(declare-fun m!1253647 () Bool)

(assert (=> b!1369941 m!1253647))

(declare-fun m!1253649 () Bool)

(assert (=> start!115928 m!1253649))

(declare-fun m!1253651 () Bool)

(assert (=> b!1369932 m!1253651))

(declare-fun m!1253653 () Bool)

(assert (=> b!1369940 m!1253653))

(push 1)

(assert (not b!1369941))

(assert (not b!1369935))

(assert (not start!115928))

(assert (not b!1369936))

(assert (not b!1369940))

(assert (not b!1369933))

(assert (not b!1369943))

(assert (not b!1369932))

(assert (not b!1369942))

(assert (not b!1369939))

(assert (not b!1369938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147007 () Bool)

(declare-fun lt!602324 () Bool)

(declare-fun content!733 (List!32147) (Set (_ BitVec 64)))

(assert (=> d!147007 (= lt!602324 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!733 acc!866)))))

(declare-fun e!776014 () Bool)

(assert (=> d!147007 (= lt!602324 e!776014)))

(declare-fun res!913626 () Bool)

(assert (=> d!147007 (=> (not res!913626) (not e!776014))))

(assert (=> d!147007 (= res!913626 (is-Cons!32143 acc!866))))

(assert (=> d!147007 (= (contains!9685 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602324)))

(declare-fun b!1370044 () Bool)

(declare-fun e!776013 () Bool)

(assert (=> b!1370044 (= e!776014 e!776013)))

(declare-fun res!913625 () Bool)

(assert (=> b!1370044 (=> res!913625 e!776013)))

(assert (=> b!1370044 (= res!913625 (= (h!33352 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370045 () Bool)

(assert (=> b!1370045 (= e!776013 (contains!9685 (t!46848 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147007 res!913626) b!1370044))

(assert (= (and b!1370044 (not res!913625)) b!1370045))

(declare-fun m!1253731 () Bool)

(assert (=> d!147007 m!1253731))

(declare-fun m!1253733 () Bool)

(assert (=> d!147007 m!1253733))

(declare-fun m!1253735 () Bool)

(assert (=> b!1370045 m!1253735))

(assert (=> b!1369938 d!147007))

(declare-fun d!147011 () Bool)

(declare-fun lt!602325 () Bool)

(assert (=> d!147011 (= lt!602325 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!733 newAcc!98)))))

(declare-fun e!776016 () Bool)

(assert (=> d!147011 (= lt!602325 e!776016)))

(declare-fun res!913628 () Bool)

(assert (=> d!147011 (=> (not res!913628) (not e!776016))))

(assert (=> d!147011 (= res!913628 (is-Cons!32143 newAcc!98))))

(assert (=> d!147011 (= (contains!9685 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602325)))

(declare-fun b!1370046 () Bool)

(declare-fun e!776015 () Bool)

(assert (=> b!1370046 (= e!776016 e!776015)))

(declare-fun res!913627 () Bool)

(assert (=> b!1370046 (=> res!913627 e!776015)))

(assert (=> b!1370046 (= res!913627 (= (h!33352 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370047 () Bool)

(assert (=> b!1370047 (= e!776015 (contains!9685 (t!46848 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147011 res!913628) b!1370046))

(assert (= (and b!1370046 (not res!913627)) b!1370047))

(declare-fun m!1253737 () Bool)

(assert (=> d!147011 m!1253737))

(declare-fun m!1253739 () Bool)

(assert (=> d!147011 m!1253739))

(declare-fun m!1253741 () Bool)

(assert (=> b!1370047 m!1253741))

(assert (=> b!1369943 d!147011))

(declare-fun d!147013 () Bool)

(declare-fun res!913639 () Bool)

(declare-fun e!776027 () Bool)

(assert (=> d!147013 (=> res!913639 e!776027)))

(assert (=> d!147013 (= res!913639 (is-Nil!32144 acc!866))))

(assert (=> d!147013 (= (noDuplicate!2564 acc!866) e!776027)))

(declare-fun b!1370058 () Bool)

(declare-fun e!776028 () Bool)

(assert (=> b!1370058 (= e!776027 e!776028)))

(declare-fun res!913640 () Bool)

(assert (=> b!1370058 (=> (not res!913640) (not e!776028))))

(assert (=> b!1370058 (= res!913640 (not (contains!9685 (t!46848 acc!866) (h!33352 acc!866))))))

(declare-fun b!1370059 () Bool)

(assert (=> b!1370059 (= e!776028 (noDuplicate!2564 (t!46848 acc!866)))))

(assert (= (and d!147013 (not res!913639)) b!1370058))

(assert (= (and b!1370058 res!913640) b!1370059))

(declare-fun m!1253747 () Bool)

(assert (=> b!1370058 m!1253747))

(declare-fun m!1253749 () Bool)

(assert (=> b!1370059 m!1253749))

(assert (=> b!1369932 d!147013))

(declare-fun b!1370087 () Bool)

(declare-fun e!776054 () Bool)

(assert (=> b!1370087 (= e!776054 (subseq!1076 newAcc!98 (t!46848 acc!866)))))

(declare-fun b!1370085 () Bool)

(declare-fun e!776051 () Bool)

(assert (=> b!1370085 (= e!776051 e!776054)))

(declare-fun res!913664 () Bool)

(assert (=> b!1370085 (=> res!913664 e!776054)))

(declare-fun e!776053 () Bool)

(assert (=> b!1370085 (= res!913664 e!776053)))

(declare-fun res!913662 () Bool)

(assert (=> b!1370085 (=> (not res!913662) (not e!776053))))

(assert (=> b!1370085 (= res!913662 (= (h!33352 newAcc!98) (h!33352 acc!866)))))

(declare-fun b!1370086 () Bool)

(assert (=> b!1370086 (= e!776053 (subseq!1076 (t!46848 newAcc!98) (t!46848 acc!866)))))

(declare-fun b!1370084 () Bool)

(declare-fun e!776052 () Bool)

(assert (=> b!1370084 (= e!776052 e!776051)))

(declare-fun res!913663 () Bool)

(assert (=> b!1370084 (=> (not res!913663) (not e!776051))))

(assert (=> b!1370084 (= res!913663 (is-Cons!32143 acc!866))))

(declare-fun d!147021 () Bool)

(declare-fun res!913661 () Bool)

(assert (=> d!147021 (=> res!913661 e!776052)))

(assert (=> d!147021 (= res!913661 (is-Nil!32144 newAcc!98))))

(assert (=> d!147021 (= (subseq!1076 newAcc!98 acc!866) e!776052)))

(assert (= (and d!147021 (not res!913661)) b!1370084))

(assert (= (and b!1370084 res!913663) b!1370085))

(assert (= (and b!1370085 res!913662) b!1370086))

(assert (= (and b!1370085 (not res!913664)) b!1370087))

(declare-fun m!1253757 () Bool)

(assert (=> b!1370087 m!1253757))

(declare-fun m!1253759 () Bool)

(assert (=> b!1370086 m!1253759))

(assert (=> b!1369942 d!147021))

(declare-fun d!147027 () Bool)

(declare-fun lt!602329 () Bool)

(assert (=> d!147027 (= lt!602329 (set.member (select (arr!44899 a!3861) from!3239) (content!733 acc!866)))))

(declare-fun e!776056 () Bool)

(assert (=> d!147027 (= lt!602329 e!776056)))

(declare-fun res!913666 () Bool)

(assert (=> d!147027 (=> (not res!913666) (not e!776056))))

(assert (=> d!147027 (= res!913666 (is-Cons!32143 acc!866))))

(assert (=> d!147027 (= (contains!9685 acc!866 (select (arr!44899 a!3861) from!3239)) lt!602329)))

(declare-fun b!1370088 () Bool)

(declare-fun e!776055 () Bool)

(assert (=> b!1370088 (= e!776056 e!776055)))

(declare-fun res!913665 () Bool)

(assert (=> b!1370088 (=> res!913665 e!776055)))

(assert (=> b!1370088 (= res!913665 (= (h!33352 acc!866) (select (arr!44899 a!3861) from!3239)))))

(declare-fun b!1370089 () Bool)

(assert (=> b!1370089 (= e!776055 (contains!9685 (t!46848 acc!866) (select (arr!44899 a!3861) from!3239)))))

(assert (= (and d!147027 res!913666) b!1370088))

(assert (= (and b!1370088 (not res!913665)) b!1370089))

(assert (=> d!147027 m!1253731))

(assert (=> d!147027 m!1253631))

(declare-fun m!1253761 () Bool)

(assert (=> d!147027 m!1253761))

(assert (=> b!1370089 m!1253631))

(declare-fun m!1253763 () Bool)

(assert (=> b!1370089 m!1253763))

(assert (=> b!1369936 d!147027))

(declare-fun d!147029 () Bool)

(declare-fun lt!602330 () Bool)

(assert (=> d!147029 (= lt!602330 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!733 acc!866)))))

(declare-fun e!776062 () Bool)

(assert (=> d!147029 (= lt!602330 e!776062)))

(declare-fun res!913672 () Bool)

(assert (=> d!147029 (=> (not res!913672) (not e!776062))))

(assert (=> d!147029 (= res!913672 (is-Cons!32143 acc!866))))

(assert (=> d!147029 (= (contains!9685 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602330)))

(declare-fun b!1370094 () Bool)

(declare-fun e!776061 () Bool)

(assert (=> b!1370094 (= e!776062 e!776061)))

(declare-fun res!913671 () Bool)

(assert (=> b!1370094 (=> res!913671 e!776061)))

(assert (=> b!1370094 (= res!913671 (= (h!33352 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370095 () Bool)

(assert (=> b!1370095 (= e!776061 (contains!9685 (t!46848 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147029 res!913672) b!1370094))

(assert (= (and b!1370094 (not res!913671)) b!1370095))

(assert (=> d!147029 m!1253731))

(declare-fun m!1253765 () Bool)

(assert (=> d!147029 m!1253765))

(declare-fun m!1253767 () Bool)

(assert (=> b!1370095 m!1253767))

(assert (=> b!1369941 d!147029))

(declare-fun d!147031 () Bool)

(assert (=> d!147031 (= (validKeyInArray!0 (select (arr!44899 a!3861) from!3239)) (and (not (= (select (arr!44899 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44899 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1369935 d!147031))

(declare-fun d!147033 () Bool)

(declare-fun lt!602331 () Bool)

(assert (=> d!147033 (= lt!602331 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!733 newAcc!98)))))

(declare-fun e!776068 () Bool)

(assert (=> d!147033 (= lt!602331 e!776068)))

(declare-fun res!913678 () Bool)

(assert (=> d!147033 (=> (not res!913678) (not e!776068))))

(assert (=> d!147033 (= res!913678 (is-Cons!32143 newAcc!98))))

(assert (=> d!147033 (= (contains!9685 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602331)))

(declare-fun b!1370100 () Bool)

(declare-fun e!776067 () Bool)

(assert (=> b!1370100 (= e!776068 e!776067)))

(declare-fun res!913677 () Bool)

(assert (=> b!1370100 (=> res!913677 e!776067)))

(assert (=> b!1370100 (= res!913677 (= (h!33352 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370101 () Bool)

(assert (=> b!1370101 (= e!776067 (contains!9685 (t!46848 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147033 res!913678) b!1370100))

(assert (= (and b!1370100 (not res!913677)) b!1370101))

(assert (=> d!147033 m!1253737))

(declare-fun m!1253769 () Bool)

(assert (=> d!147033 m!1253769))

(declare-fun m!1253771 () Bool)

(assert (=> b!1370101 m!1253771))

(assert (=> b!1369940 d!147033))

(declare-fun d!147035 () Bool)

(assert (=> d!147035 (= (array_inv!33844 a!3861) (bvsge (size!45450 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115928 d!147035))

(declare-fun c!127657 () Bool)

(declare-fun bm!65515 () Bool)

(declare-fun call!65518 () Bool)

(assert (=> bm!65515 (= call!65518 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127657 (Cons!32143 (select (arr!44899 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1370142 () Bool)

(declare-fun e!776109 () Bool)

(declare-fun e!776108 () Bool)

(assert (=> b!1370142 (= e!776109 e!776108)))

(assert (=> b!1370142 (= c!127657 (validKeyInArray!0 (select (arr!44899 a!3861) from!3239)))))

(declare-fun b!1370143 () Bool)

(declare-fun e!776107 () Bool)

(assert (=> b!1370143 (= e!776107 e!776109)))

(declare-fun res!913715 () Bool)

(assert (=> b!1370143 (=> (not res!913715) (not e!776109))))

(declare-fun e!776106 () Bool)

(assert (=> b!1370143 (= res!913715 (not e!776106))))

(declare-fun res!913714 () Bool)

(assert (=> b!1370143 (=> (not res!913714) (not e!776106))))

(assert (=> b!1370143 (= res!913714 (validKeyInArray!0 (select (arr!44899 a!3861) from!3239)))))

(declare-fun d!147039 () Bool)

(declare-fun res!913713 () Bool)

(assert (=> d!147039 (=> res!913713 e!776107)))

