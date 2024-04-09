; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61716 () Bool)

(assert start!61716)

(declare-fun b!690107 () Bool)

(declare-fun res!454685 () Bool)

(declare-fun e!392959 () Bool)

(assert (=> b!690107 (=> (not res!454685) (not e!392959))))

(declare-datatypes ((List!13123 0))(
  ( (Nil!13120) (Cons!13119 (h!14164 (_ BitVec 64)) (t!19398 List!13123)) )
))
(declare-fun acc!681 () List!13123)

(declare-fun contains!3666 (List!13123 (_ BitVec 64)) Bool)

(assert (=> b!690107 (= res!454685 (not (contains!3666 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690108 () Bool)

(declare-fun res!454700 () Bool)

(assert (=> b!690108 (=> (not res!454700) (not e!392959))))

(declare-fun e!392960 () Bool)

(assert (=> b!690108 (= res!454700 e!392960)))

(declare-fun res!454693 () Bool)

(assert (=> b!690108 (=> res!454693 e!392960)))

(declare-fun e!392962 () Bool)

(assert (=> b!690108 (= res!454693 e!392962)))

(declare-fun res!454699 () Bool)

(assert (=> b!690108 (=> (not res!454699) (not e!392962))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690108 (= res!454699 (bvsgt from!3004 i!1382))))

(declare-fun b!690109 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39726 0))(
  ( (array!39727 (arr!19029 (Array (_ BitVec 32) (_ BitVec 64))) (size!19412 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39726)

(declare-fun arrayContainsKey!0 (array!39726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690109 (= e!392959 (not (arrayContainsKey!0 a!3626 k!2843 from!3004)))))

(declare-fun b!690110 () Bool)

(declare-fun res!454692 () Bool)

(assert (=> b!690110 (=> (not res!454692) (not e!392959))))

(assert (=> b!690110 (= res!454692 (= (select (arr!19029 a!3626) from!3004) k!2843))))

(declare-fun b!690111 () Bool)

(declare-fun res!454688 () Bool)

(assert (=> b!690111 (=> (not res!454688) (not e!392959))))

(declare-fun noDuplicate!913 (List!13123) Bool)

(assert (=> b!690111 (= res!454688 (noDuplicate!913 acc!681))))

(declare-fun b!690112 () Bool)

(declare-fun res!454695 () Bool)

(assert (=> b!690112 (=> (not res!454695) (not e!392959))))

(assert (=> b!690112 (= res!454695 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690113 () Bool)

(assert (=> b!690113 (= e!392962 (contains!3666 acc!681 k!2843))))

(declare-fun b!690114 () Bool)

(declare-fun res!454690 () Bool)

(assert (=> b!690114 (=> (not res!454690) (not e!392959))))

(assert (=> b!690114 (= res!454690 (not (contains!3666 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690115 () Bool)

(declare-fun res!454697 () Bool)

(assert (=> b!690115 (=> (not res!454697) (not e!392959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690115 (= res!454697 (validKeyInArray!0 k!2843))))

(declare-fun b!690116 () Bool)

(declare-fun e!392958 () Bool)

(assert (=> b!690116 (= e!392958 (not (contains!3666 acc!681 k!2843)))))

(declare-fun b!690117 () Bool)

(declare-fun res!454691 () Bool)

(assert (=> b!690117 (=> (not res!454691) (not e!392959))))

(assert (=> b!690117 (= res!454691 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19412 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690118 () Bool)

(assert (=> b!690118 (= e!392960 e!392958)))

(declare-fun res!454686 () Bool)

(assert (=> b!690118 (=> (not res!454686) (not e!392958))))

(assert (=> b!690118 (= res!454686 (bvsle from!3004 i!1382))))

(declare-fun b!690119 () Bool)

(declare-fun res!454698 () Bool)

(assert (=> b!690119 (=> (not res!454698) (not e!392959))))

(declare-fun arrayNoDuplicates!0 (array!39726 (_ BitVec 32) List!13123) Bool)

(assert (=> b!690119 (= res!454698 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13120))))

(declare-fun res!454687 () Bool)

(assert (=> start!61716 (=> (not res!454687) (not e!392959))))

(assert (=> start!61716 (= res!454687 (and (bvslt (size!19412 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19412 a!3626))))))

(assert (=> start!61716 e!392959))

(assert (=> start!61716 true))

(declare-fun array_inv!14803 (array!39726) Bool)

(assert (=> start!61716 (array_inv!14803 a!3626)))

(declare-fun b!690120 () Bool)

(declare-fun res!454689 () Bool)

(assert (=> b!690120 (=> (not res!454689) (not e!392959))))

(assert (=> b!690120 (= res!454689 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19412 a!3626))))))

(declare-fun b!690121 () Bool)

(declare-fun res!454694 () Bool)

(assert (=> b!690121 (=> (not res!454694) (not e!392959))))

(assert (=> b!690121 (= res!454694 (validKeyInArray!0 (select (arr!19029 a!3626) from!3004)))))

(declare-fun b!690122 () Bool)

(declare-fun res!454696 () Bool)

(assert (=> b!690122 (=> (not res!454696) (not e!392959))))

(assert (=> b!690122 (= res!454696 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!61716 res!454687) b!690111))

(assert (= (and b!690111 res!454688) b!690107))

(assert (= (and b!690107 res!454685) b!690114))

(assert (= (and b!690114 res!454690) b!690108))

(assert (= (and b!690108 res!454699) b!690113))

(assert (= (and b!690108 (not res!454693)) b!690118))

(assert (= (and b!690118 res!454686) b!690116))

(assert (= (and b!690108 res!454700) b!690119))

(assert (= (and b!690119 res!454698) b!690122))

(assert (= (and b!690122 res!454696) b!690120))

(assert (= (and b!690120 res!454689) b!690115))

(assert (= (and b!690115 res!454697) b!690112))

(assert (= (and b!690112 res!454695) b!690117))

(assert (= (and b!690117 res!454691) b!690121))

(assert (= (and b!690121 res!454694) b!690110))

(assert (= (and b!690110 res!454692) b!690109))

(declare-fun m!653721 () Bool)

(assert (=> b!690107 m!653721))

(declare-fun m!653723 () Bool)

(assert (=> b!690122 m!653723))

(declare-fun m!653725 () Bool)

(assert (=> b!690119 m!653725))

(declare-fun m!653727 () Bool)

(assert (=> b!690110 m!653727))

(declare-fun m!653729 () Bool)

(assert (=> b!690116 m!653729))

(declare-fun m!653731 () Bool)

(assert (=> b!690111 m!653731))

(declare-fun m!653733 () Bool)

(assert (=> b!690114 m!653733))

(assert (=> b!690113 m!653729))

(declare-fun m!653735 () Bool)

(assert (=> b!690112 m!653735))

(assert (=> b!690121 m!653727))

(assert (=> b!690121 m!653727))

(declare-fun m!653737 () Bool)

(assert (=> b!690121 m!653737))

(declare-fun m!653739 () Bool)

(assert (=> start!61716 m!653739))

(declare-fun m!653741 () Bool)

(assert (=> b!690109 m!653741))

(declare-fun m!653743 () Bool)

(assert (=> b!690115 m!653743))

(push 1)

(assert (not b!690115))

(assert (not start!61716))

(assert (not b!690119))

(assert (not b!690111))

(assert (not b!690122))

(assert (not b!690121))

(assert (not b!690107))

(assert (not b!690114))

(assert (not b!690109))

(assert (not b!690112))

(assert (not b!690116))

(assert (not b!690113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95317 () Bool)

(declare-fun lt!316368 () Bool)

(declare-fun content!308 (List!13123) (Set (_ BitVec 64)))

(assert (=> d!95317 (= lt!316368 (set.member k!2843 (content!308 acc!681)))))

(declare-fun e!393011 () Bool)

(assert (=> d!95317 (= lt!316368 e!393011)))

(declare-fun res!454813 () Bool)

(assert (=> d!95317 (=> (not res!454813) (not e!393011))))

(assert (=> d!95317 (= res!454813 (is-Cons!13119 acc!681))))

(assert (=> d!95317 (= (contains!3666 acc!681 k!2843) lt!316368)))

(declare-fun b!690239 () Bool)

(declare-fun e!393012 () Bool)

(assert (=> b!690239 (= e!393011 e!393012)))

(declare-fun res!454814 () Bool)

(assert (=> b!690239 (=> res!454814 e!393012)))

(assert (=> b!690239 (= res!454814 (= (h!14164 acc!681) k!2843))))

(declare-fun b!690240 () Bool)

(assert (=> b!690240 (= e!393012 (contains!3666 (t!19398 acc!681) k!2843))))

(assert (= (and d!95317 res!454813) b!690239))

(assert (= (and b!690239 (not res!454814)) b!690240))

(declare-fun m!653799 () Bool)

(assert (=> d!95317 m!653799))

(declare-fun m!653801 () Bool)

(assert (=> d!95317 m!653801))

(declare-fun m!653803 () Bool)

(assert (=> b!690240 m!653803))

(assert (=> b!690113 d!95317))

(declare-fun d!95319 () Bool)

(assert (=> d!95319 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!690115 d!95319))

(declare-fun d!95321 () Bool)

(declare-fun lt!316369 () Bool)

(assert (=> d!95321 (= lt!316369 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!308 acc!681)))))

(declare-fun e!393013 () Bool)

(assert (=> d!95321 (= lt!316369 e!393013)))

(declare-fun res!454815 () Bool)

(assert (=> d!95321 (=> (not res!454815) (not e!393013))))

(assert (=> d!95321 (= res!454815 (is-Cons!13119 acc!681))))

(assert (=> d!95321 (= (contains!3666 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316369)))

(declare-fun b!690241 () Bool)

(declare-fun e!393014 () Bool)

(assert (=> b!690241 (= e!393013 e!393014)))

(declare-fun res!454816 () Bool)

(assert (=> b!690241 (=> res!454816 e!393014)))

(assert (=> b!690241 (= res!454816 (= (h!14164 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!690242 () Bool)

(assert (=> b!690242 (= e!393014 (contains!3666 (t!19398 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95321 res!454815) b!690241))

(assert (= (and b!690241 (not res!454816)) b!690242))

(assert (=> d!95321 m!653799))

(declare-fun m!653805 () Bool)

(assert (=> d!95321 m!653805))

(declare-fun m!653807 () Bool)

(assert (=> b!690242 m!653807))

(assert (=> b!690114 d!95321))

(declare-fun d!95323 () Bool)

(declare-fun res!454824 () Bool)

(declare-fun e!393023 () Bool)

(assert (=> d!95323 (=> res!454824 e!393023)))

(assert (=> d!95323 (= res!454824 (is-Nil!13120 acc!681))))

(assert (=> d!95323 (= (noDuplicate!913 acc!681) e!393023)))

(declare-fun b!690252 () Bool)

(declare-fun e!393024 () Bool)

(assert (=> b!690252 (= e!393023 e!393024)))

(declare-fun res!454825 () Bool)

(assert (=> b!690252 (=> (not res!454825) (not e!393024))))

(assert (=> b!690252 (= res!454825 (not (contains!3666 (t!19398 acc!681) (h!14164 acc!681))))))

(declare-fun b!690253 () Bool)

(assert (=> b!690253 (= e!393024 (noDuplicate!913 (t!19398 acc!681)))))

(assert (= (and d!95323 (not res!454824)) b!690252))

(assert (= (and b!690252 res!454825) b!690253))

(declare-fun m!653809 () Bool)

(assert (=> b!690252 m!653809))

(declare-fun m!653811 () Bool)

(assert (=> b!690253 m!653811))

(assert (=> b!690111 d!95323))

(declare-fun d!95325 () Bool)

(assert (=> d!95325 (= (validKeyInArray!0 (select (arr!19029 a!3626) from!3004)) (and (not (= (select (arr!19029 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19029 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!690121 d!95325))

(declare-fun d!95327 () Bool)

(declare-fun res!454838 () Bool)

(declare-fun e!393037 () Bool)

(assert (=> d!95327 (=> res!454838 e!393037)))

(assert (=> d!95327 (= res!454838 (= (select (arr!19029 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95327 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!393037)))

(declare-fun b!690266 () Bool)

(declare-fun e!393038 () Bool)

(assert (=> b!690266 (= e!393037 e!393038)))

(declare-fun res!454839 () Bool)

(assert (=> b!690266 (=> (not res!454839) (not e!393038))))

(assert (=> b!690266 (= res!454839 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19412 a!3626)))))

(declare-fun b!690267 () Bool)

(assert (=> b!690267 (= e!393038 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95327 (not res!454838)) b!690266))

(assert (= (and b!690266 res!454839) b!690267))

(declare-fun m!653821 () Bool)

(assert (=> d!95327 m!653821))

(declare-fun m!653823 () Bool)

(assert (=> b!690267 m!653823))

(assert (=> b!690112 d!95327))

(declare-fun d!95333 () Bool)

(declare-fun res!454872 () Bool)

(declare-fun e!393076 () Bool)

(assert (=> d!95333 (=> res!454872 e!393076)))

(assert (=> d!95333 (= res!454872 (bvsge from!3004 (size!19412 a!3626)))))

(assert (=> d!95333 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!393076)))

(declare-fun b!690305 () Bool)

(declare-fun e!393074 () Bool)

(declare-fun call!34218 () Bool)

(assert (=> b!690305 (= e!393074 call!34218)))

(declare-fun bm!34215 () Bool)

(declare-fun c!78084 () Bool)

(assert (=> bm!34215 (= call!34218 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78084 (Cons!13119 (select (arr!19029 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!690306 () Bool)

(declare-fun e!393075 () Bool)

(assert (=> b!690306 (= e!393076 e!393075)))

(declare-fun res!454871 () Bool)

(assert (=> b!690306 (=> (not res!454871) (not e!393075))))

(declare-fun e!393073 () Bool)

(assert (=> b!690306 (= res!454871 (not e!393073))))

(declare-fun res!454873 () Bool)

(assert (=> b!690306 (=> (not res!454873) (not e!393073))))

(assert (=> b!690306 (= res!454873 (validKeyInArray!0 (select (arr!19029 a!3626) from!3004)))))

(declare-fun b!690307 () Bool)

(assert (=> b!690307 (= e!393075 e!393074)))

(assert (=> b!690307 (= c!78084 (validKeyInArray!0 (select (arr!19029 a!3626) from!3004)))))

(declare-fun b!690308 () Bool)

(assert (=> b!690308 (= e!393074 call!34218)))

(declare-fun b!690309 () Bool)

(assert (=> b!690309 (= e!393073 (contains!3666 acc!681 (select (arr!19029 a!3626) from!3004)))))

(assert (= (and d!95333 (not res!454872)) b!690306))

(assert (= (and b!690306 res!454873) b!690309))

(assert (= (and b!690306 res!454871) b!690307))

(assert (= (and b!690307 c!78084) b!690308))

(assert (= (and b!690307 (not c!78084)) b!690305))

(assert (= (or b!690308 b!690305) bm!34215))

(assert (=> bm!34215 m!653727))

(declare-fun m!653853 () Bool)

(assert (=> bm!34215 m!653853))

(assert (=> b!690306 m!653727))

(assert (=> b!690306 m!653727))

(assert (=> b!690306 m!653737))

(assert (=> b!690307 m!653727))

(assert (=> b!690307 m!653727))

(assert (=> b!690307 m!653737))

(assert (=> b!690309 m!653727))

(assert (=> b!690309 m!653727))

(declare-fun m!653855 () Bool)

(assert (=> b!690309 m!653855))

(assert (=> b!690122 d!95333))

(declare-fun d!95353 () Bool)

(declare-fun res!454881 () Bool)

(declare-fun e!393086 () Bool)

(assert (=> d!95353 (=> res!454881 e!393086)))

(assert (=> d!95353 (= res!454881 (bvsge #b00000000000000000000000000000000 (size!19412 a!3626)))))

(assert (=> d!95353 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13120) e!393086)))

(declare-fun b!690314 () Bool)

(declare-fun e!393084 () Bool)

(declare-fun call!34219 () Bool)

(assert (=> b!690314 (= e!393084 call!34219)))

(declare-fun bm!34216 () Bool)

(declare-fun c!78085 () Bool)

(assert (=> bm!34216 (= call!34219 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78085 (Cons!13119 (select (arr!19029 a!3626) #b00000000000000000000000000000000) Nil!13120) Nil!13120)))))

(declare-fun b!690315 () Bool)

(declare-fun e!393085 () Bool)

(assert (=> b!690315 (= e!393086 e!393085)))

(declare-fun res!454880 () Bool)

(assert (=> b!690315 (=> (not res!454880) (not e!393085))))

(declare-fun e!393083 () Bool)

(assert (=> b!690315 (= res!454880 (not e!393083))))

(declare-fun res!454882 () Bool)

(assert (=> b!690315 (=> (not res!454882) (not e!393083))))

(assert (=> b!690315 (= res!454882 (validKeyInArray!0 (select (arr!19029 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!690316 () Bool)

(assert (=> b!690316 (= e!393085 e!393084)))

(assert (=> b!690316 (= c!78085 (validKeyInArray!0 (select (arr!19029 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!690317 () Bool)

(assert (=> b!690317 (= e!393084 call!34219)))

(declare-fun b!690318 () Bool)

(assert (=> b!690318 (= e!393083 (contains!3666 Nil!13120 (select (arr!19029 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!95353 (not res!454881)) b!690315))

(assert (= (and b!690315 res!454882) b!690318))

(assert (= (and b!690315 res!454880) b!690316))

(assert (= (and b!690316 c!78085) b!690317))

(assert (= (and b!690316 (not c!78085)) b!690314))

(assert (= (or b!690317 b!690314) bm!34216))

(assert (=> bm!34216 m!653821))

(declare-fun m!653857 () Bool)

(assert (=> bm!34216 m!653857))

(assert (=> b!690315 m!653821))

(assert (=> b!690315 m!653821))

(declare-fun m!653859 () Bool)

(assert (=> b!690315 m!653859))

(assert (=> b!690316 m!653821))

(assert (=> b!690316 m!653821))

(assert (=> b!690316 m!653859))

(assert (=> b!690318 m!653821))

(assert (=> b!690318 m!653821))

(declare-fun m!653861 () Bool)

(assert (=> b!690318 m!653861))

(assert (=> b!690119 d!95353))

(declare-fun d!95355 () Bool)

(declare-fun res!454883 () Bool)

(declare-fun e!393089 () Bool)

(assert (=> d!95355 (=> res!454883 e!393089)))

(assert (=> d!95355 (= res!454883 (= (select (arr!19029 a!3626) from!3004) k!2843))))

(assert (=> d!95355 (= (arrayContainsKey!0 a!3626 k!2843 from!3004) e!393089)))

(declare-fun b!690325 () Bool)

(declare-fun e!393090 () Bool)

(assert (=> b!690325 (= e!393089 e!393090)))

(declare-fun res!454884 () Bool)

(assert (=> b!690325 (=> (not res!454884) (not e!393090))))

(assert (=> b!690325 (= res!454884 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19412 a!3626)))))

(declare-fun b!690326 () Bool)

(assert (=> b!690326 (= e!393090 (arrayContainsKey!0 a!3626 k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95355 (not res!454883)) b!690325))

(assert (= (and b!690325 res!454884) b!690326))

(assert (=> d!95355 m!653727))

(declare-fun m!653863 () Bool)

(assert (=> b!690326 m!653863))

(assert (=> b!690109 d!95355))

(assert (=> b!690116 d!95317))

(declare-fun d!95357 () Bool)

(declare-fun lt!316375 () Bool)

(assert (=> d!95357 (= lt!316375 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!308 acc!681)))))

(declare-fun e!393091 () Bool)

(assert (=> d!95357 (= lt!316375 e!393091)))

(declare-fun res!454885 () Bool)

(assert (=> d!95357 (=> (not res!454885) (not e!393091))))

(assert (=> d!95357 (= res!454885 (is-Cons!13119 acc!681))))

(assert (=> d!95357 (= (contains!3666 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316375)))

(declare-fun b!690327 () Bool)

(declare-fun e!393092 () Bool)

(assert (=> b!690327 (= e!393091 e!393092)))

(declare-fun res!454886 () Bool)

(assert (=> b!690327 (=> res!454886 e!393092)))

(assert (=> b!690327 (= res!454886 (= (h!14164 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!690328 () Bool)

(assert (=> b!690328 (= e!393092 (contains!3666 (t!19398 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95357 res!454885) b!690327))

(assert (= (and b!690327 (not res!454886)) b!690328))

(assert (=> d!95357 m!653799))

(declare-fun m!653865 () Bool)

(assert (=> d!95357 m!653865))

(declare-fun m!653867 () Bool)

(assert (=> b!690328 m!653867))

(assert (=> b!690107 d!95357))

(declare-fun d!95359 () Bool)

(assert (=> d!95359 (= (array_inv!14803 a!3626) (bvsge (size!19412 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61716 d!95359))

(push 1)

