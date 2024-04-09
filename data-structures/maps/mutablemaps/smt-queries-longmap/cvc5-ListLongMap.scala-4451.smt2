; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61872 () Bool)

(assert start!61872)

(declare-fun b!692178 () Bool)

(declare-fun res!456608 () Bool)

(declare-fun e!393819 () Bool)

(assert (=> b!692178 (=> (not res!456608) (not e!393819))))

(declare-datatypes ((array!39804 0))(
  ( (array!39805 (arr!19065 (Array (_ BitVec 32) (_ BitVec 64))) (size!19448 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39804)

(declare-datatypes ((List!13159 0))(
  ( (Nil!13156) (Cons!13155 (h!14200 (_ BitVec 64)) (t!19437 List!13159)) )
))
(declare-fun arrayNoDuplicates!0 (array!39804 (_ BitVec 32) List!13159) Bool)

(assert (=> b!692178 (= res!456608 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13156))))

(declare-fun b!692179 () Bool)

(declare-fun e!393820 () Bool)

(declare-fun lt!316525 () List!13159)

(declare-fun contains!3702 (List!13159 (_ BitVec 64)) Bool)

(assert (=> b!692179 (= e!393820 (contains!3702 lt!316525 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692180 () Bool)

(declare-fun e!393822 () Bool)

(declare-fun e!393815 () Bool)

(assert (=> b!692180 (= e!393822 e!393815)))

(declare-fun res!456606 () Bool)

(assert (=> b!692180 (=> (not res!456606) (not e!393815))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!692180 (= res!456606 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun acc!681 () List!13159)

(declare-fun $colon$colon!412 (List!13159 (_ BitVec 64)) List!13159)

(assert (=> b!692180 (= lt!316525 ($colon$colon!412 acc!681 (select (arr!19065 a!3626) from!3004)))))

(declare-fun b!692181 () Bool)

(declare-fun res!456613 () Bool)

(assert (=> b!692181 (=> (not res!456613) (not e!393819))))

(assert (=> b!692181 (= res!456613 (not (contains!3702 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692182 () Bool)

(declare-fun res!456599 () Bool)

(assert (=> b!692182 (=> (not res!456599) (not e!393819))))

(assert (=> b!692182 (= res!456599 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!692183 () Bool)

(declare-fun res!456610 () Bool)

(assert (=> b!692183 (=> (not res!456610) (not e!393819))))

(declare-fun e!393818 () Bool)

(assert (=> b!692183 (= res!456610 e!393818)))

(declare-fun res!456601 () Bool)

(assert (=> b!692183 (=> res!456601 e!393818)))

(declare-fun e!393823 () Bool)

(assert (=> b!692183 (= res!456601 e!393823)))

(declare-fun res!456602 () Bool)

(assert (=> b!692183 (=> (not res!456602) (not e!393823))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!692183 (= res!456602 (bvsgt from!3004 i!1382))))

(declare-fun b!692184 () Bool)

(assert (=> b!692184 (= e!393819 e!393822)))

(declare-fun res!456605 () Bool)

(assert (=> b!692184 (=> (not res!456605) (not e!393822))))

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!692184 (= res!456605 (not (= (select (arr!19065 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!24430 0))(
  ( (Unit!24431) )
))
(declare-fun lt!316526 () Unit!24430)

(declare-fun e!393821 () Unit!24430)

(assert (=> b!692184 (= lt!316526 e!393821)))

(declare-fun c!78158 () Bool)

(assert (=> b!692184 (= c!78158 (= (select (arr!19065 a!3626) from!3004) k!2843))))

(declare-fun b!692185 () Bool)

(declare-fun res!456597 () Bool)

(assert (=> b!692185 (=> (not res!456597) (not e!393819))))

(declare-fun noDuplicate!949 (List!13159) Bool)

(assert (=> b!692185 (= res!456597 (noDuplicate!949 acc!681))))

(declare-fun b!692186 () Bool)

(assert (=> b!692186 (= e!393815 e!393820)))

(declare-fun res!456600 () Bool)

(assert (=> b!692186 (=> res!456600 e!393820)))

(assert (=> b!692186 (= res!456600 (contains!3702 lt!316525 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692188 () Bool)

(declare-fun res!456609 () Bool)

(assert (=> b!692188 (=> (not res!456609) (not e!393819))))

(declare-fun arrayContainsKey!0 (array!39804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!692188 (= res!456609 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!692189 () Bool)

(declare-fun res!456598 () Bool)

(assert (=> b!692189 (=> (not res!456598) (not e!393819))))

(assert (=> b!692189 (= res!456598 (not (contains!3702 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692190 () Bool)

(declare-fun e!393816 () Bool)

(assert (=> b!692190 (= e!393818 e!393816)))

(declare-fun res!456607 () Bool)

(assert (=> b!692190 (=> (not res!456607) (not e!393816))))

(assert (=> b!692190 (= res!456607 (bvsle from!3004 i!1382))))

(declare-fun b!692191 () Bool)

(declare-fun res!456604 () Bool)

(assert (=> b!692191 (=> (not res!456604) (not e!393819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!692191 (= res!456604 (validKeyInArray!0 (select (arr!19065 a!3626) from!3004)))))

(declare-fun b!692192 () Bool)

(assert (=> b!692192 (= e!393816 (not (contains!3702 acc!681 k!2843)))))

(declare-fun b!692193 () Bool)

(declare-fun Unit!24432 () Unit!24430)

(assert (=> b!692193 (= e!393821 Unit!24432)))

(assert (=> b!692193 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316527 () Unit!24430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39804 (_ BitVec 64) (_ BitVec 32)) Unit!24430)

(assert (=> b!692193 (= lt!316527 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!692193 false))

(declare-fun b!692194 () Bool)

(declare-fun res!456596 () Bool)

(assert (=> b!692194 (=> (not res!456596) (not e!393819))))

(assert (=> b!692194 (= res!456596 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19448 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!692195 () Bool)

(declare-fun res!456603 () Bool)

(assert (=> b!692195 (=> (not res!456603) (not e!393815))))

(assert (=> b!692195 (= res!456603 (noDuplicate!949 lt!316525))))

(declare-fun b!692196 () Bool)

(assert (=> b!692196 (= e!393823 (contains!3702 acc!681 k!2843))))

(declare-fun b!692197 () Bool)

(declare-fun res!456611 () Bool)

(assert (=> b!692197 (=> (not res!456611) (not e!393819))))

(assert (=> b!692197 (= res!456611 (validKeyInArray!0 k!2843))))

(declare-fun b!692198 () Bool)

(declare-fun Unit!24433 () Unit!24430)

(assert (=> b!692198 (= e!393821 Unit!24433)))

(declare-fun res!456614 () Bool)

(assert (=> start!61872 (=> (not res!456614) (not e!393819))))

(assert (=> start!61872 (= res!456614 (and (bvslt (size!19448 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19448 a!3626))))))

(assert (=> start!61872 e!393819))

(assert (=> start!61872 true))

(declare-fun array_inv!14839 (array!39804) Bool)

(assert (=> start!61872 (array_inv!14839 a!3626)))

(declare-fun b!692187 () Bool)

(declare-fun res!456612 () Bool)

(assert (=> b!692187 (=> (not res!456612) (not e!393819))))

(assert (=> b!692187 (= res!456612 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19448 a!3626))))))

(assert (= (and start!61872 res!456614) b!692185))

(assert (= (and b!692185 res!456597) b!692189))

(assert (= (and b!692189 res!456598) b!692181))

(assert (= (and b!692181 res!456613) b!692183))

(assert (= (and b!692183 res!456602) b!692196))

(assert (= (and b!692183 (not res!456601)) b!692190))

(assert (= (and b!692190 res!456607) b!692192))

(assert (= (and b!692183 res!456610) b!692178))

(assert (= (and b!692178 res!456608) b!692182))

(assert (= (and b!692182 res!456599) b!692187))

(assert (= (and b!692187 res!456612) b!692197))

(assert (= (and b!692197 res!456611) b!692188))

(assert (= (and b!692188 res!456609) b!692194))

(assert (= (and b!692194 res!456596) b!692191))

(assert (= (and b!692191 res!456604) b!692184))

(assert (= (and b!692184 c!78158) b!692193))

(assert (= (and b!692184 (not c!78158)) b!692198))

(assert (= (and b!692184 res!456605) b!692180))

(assert (= (and b!692180 res!456606) b!692195))

(assert (= (and b!692195 res!456603) b!692186))

(assert (= (and b!692186 (not res!456600)) b!692179))

(declare-fun m!654861 () Bool)

(assert (=> b!692192 m!654861))

(declare-fun m!654863 () Bool)

(assert (=> b!692184 m!654863))

(declare-fun m!654865 () Bool)

(assert (=> b!692185 m!654865))

(declare-fun m!654867 () Bool)

(assert (=> start!61872 m!654867))

(assert (=> b!692180 m!654863))

(assert (=> b!692180 m!654863))

(declare-fun m!654869 () Bool)

(assert (=> b!692180 m!654869))

(declare-fun m!654871 () Bool)

(assert (=> b!692179 m!654871))

(declare-fun m!654873 () Bool)

(assert (=> b!692189 m!654873))

(assert (=> b!692191 m!654863))

(assert (=> b!692191 m!654863))

(declare-fun m!654875 () Bool)

(assert (=> b!692191 m!654875))

(declare-fun m!654877 () Bool)

(assert (=> b!692186 m!654877))

(declare-fun m!654879 () Bool)

(assert (=> b!692188 m!654879))

(declare-fun m!654881 () Bool)

(assert (=> b!692178 m!654881))

(assert (=> b!692196 m!654861))

(declare-fun m!654883 () Bool)

(assert (=> b!692193 m!654883))

(declare-fun m!654885 () Bool)

(assert (=> b!692193 m!654885))

(declare-fun m!654887 () Bool)

(assert (=> b!692195 m!654887))

(declare-fun m!654889 () Bool)

(assert (=> b!692181 m!654889))

(declare-fun m!654891 () Bool)

(assert (=> b!692182 m!654891))

(declare-fun m!654893 () Bool)

(assert (=> b!692197 m!654893))

(push 1)

(assert (not b!692193))

(assert (not b!692178))

(assert (not b!692186))

(assert (not b!692197))

(assert (not b!692189))

(assert (not b!692181))

(assert (not b!692196))

(assert (not b!692180))

(assert (not b!692182))

(assert (not b!692195))

(assert (not b!692191))

(assert (not b!692192))

(assert (not b!692179))

(assert (not b!692185))

(assert (not b!692188))

(assert (not start!61872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95493 () Bool)

(declare-fun res!456754 () Bool)

(declare-fun e!393906 () Bool)

(assert (=> d!95493 (=> res!456754 e!393906)))

(assert (=> d!95493 (= res!456754 (is-Nil!13156 acc!681))))

(assert (=> d!95493 (= (noDuplicate!949 acc!681) e!393906)))

(declare-fun b!692356 () Bool)

(declare-fun e!393907 () Bool)

(assert (=> b!692356 (= e!393906 e!393907)))

(declare-fun res!456755 () Bool)

(assert (=> b!692356 (=> (not res!456755) (not e!393907))))

(assert (=> b!692356 (= res!456755 (not (contains!3702 (t!19437 acc!681) (h!14200 acc!681))))))

(declare-fun b!692357 () Bool)

(assert (=> b!692357 (= e!393907 (noDuplicate!949 (t!19437 acc!681)))))

(assert (= (and d!95493 (not res!456754)) b!692356))

(assert (= (and b!692356 res!456755) b!692357))

(declare-fun m!654977 () Bool)

(assert (=> b!692356 m!654977))

(declare-fun m!654979 () Bool)

(assert (=> b!692357 m!654979))

(assert (=> b!692185 d!95493))

(declare-fun d!95501 () Bool)

(declare-fun res!456756 () Bool)

(declare-fun e!393908 () Bool)

(assert (=> d!95501 (=> res!456756 e!393908)))

(assert (=> d!95501 (= res!456756 (is-Nil!13156 lt!316525))))

(assert (=> d!95501 (= (noDuplicate!949 lt!316525) e!393908)))

(declare-fun b!692358 () Bool)

(declare-fun e!393909 () Bool)

(assert (=> b!692358 (= e!393908 e!393909)))

(declare-fun res!456757 () Bool)

(assert (=> b!692358 (=> (not res!456757) (not e!393909))))

(assert (=> b!692358 (= res!456757 (not (contains!3702 (t!19437 lt!316525) (h!14200 lt!316525))))))

(declare-fun b!692359 () Bool)

(assert (=> b!692359 (= e!393909 (noDuplicate!949 (t!19437 lt!316525)))))

(assert (= (and d!95501 (not res!456756)) b!692358))

(assert (= (and b!692358 res!456757) b!692359))

(declare-fun m!654981 () Bool)

(assert (=> b!692358 m!654981))

(declare-fun m!654983 () Bool)

(assert (=> b!692359 m!654983))

(assert (=> b!692195 d!95501))

(declare-fun d!95505 () Bool)

(declare-fun lt!316557 () Bool)

(declare-fun content!315 (List!13159) (Set (_ BitVec 64)))

(assert (=> d!95505 (= lt!316557 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!315 lt!316525)))))

(declare-fun e!393930 () Bool)

(assert (=> d!95505 (= lt!316557 e!393930)))

(declare-fun res!456778 () Bool)

(assert (=> d!95505 (=> (not res!456778) (not e!393930))))

(assert (=> d!95505 (= res!456778 (is-Cons!13155 lt!316525))))

(assert (=> d!95505 (= (contains!3702 lt!316525 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316557)))

(declare-fun b!692380 () Bool)

(declare-fun e!393931 () Bool)

(assert (=> b!692380 (= e!393930 e!393931)))

(declare-fun res!456779 () Bool)

(assert (=> b!692380 (=> res!456779 e!393931)))

(assert (=> b!692380 (= res!456779 (= (h!14200 lt!316525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692381 () Bool)

(assert (=> b!692381 (= e!393931 (contains!3702 (t!19437 lt!316525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95505 res!456778) b!692380))

(assert (= (and b!692380 (not res!456779)) b!692381))

(declare-fun m!655009 () Bool)

(assert (=> d!95505 m!655009))

(declare-fun m!655011 () Bool)

(assert (=> d!95505 m!655011))

(declare-fun m!655013 () Bool)

(assert (=> b!692381 m!655013))

(assert (=> b!692186 d!95505))

(declare-fun d!95519 () Bool)

(assert (=> d!95519 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692197 d!95519))

(declare-fun d!95523 () Bool)

(declare-fun lt!316561 () Bool)

(assert (=> d!95523 (= lt!316561 (set.member k!2843 (content!315 acc!681)))))

(declare-fun e!393936 () Bool)

(assert (=> d!95523 (= lt!316561 e!393936)))

(declare-fun res!456784 () Bool)

(assert (=> d!95523 (=> (not res!456784) (not e!393936))))

(assert (=> d!95523 (= res!456784 (is-Cons!13155 acc!681))))

(assert (=> d!95523 (= (contains!3702 acc!681 k!2843) lt!316561)))

(declare-fun b!692386 () Bool)

(declare-fun e!393937 () Bool)

(assert (=> b!692386 (= e!393936 e!393937)))

(declare-fun res!456785 () Bool)

(assert (=> b!692386 (=> res!456785 e!393937)))

(assert (=> b!692386 (= res!456785 (= (h!14200 acc!681) k!2843))))

(declare-fun b!692387 () Bool)

(assert (=> b!692387 (= e!393937 (contains!3702 (t!19437 acc!681) k!2843))))

(assert (= (and d!95523 res!456784) b!692386))

(assert (= (and b!692386 (not res!456785)) b!692387))

(declare-fun m!655017 () Bool)

(assert (=> d!95523 m!655017))

(declare-fun m!655019 () Bool)

(assert (=> d!95523 m!655019))

(declare-fun m!655021 () Bool)

(assert (=> b!692387 m!655021))

(assert (=> b!692196 d!95523))

(declare-fun b!692423 () Bool)

(declare-fun e!393971 () Bool)

(declare-fun call!34242 () Bool)

(assert (=> b!692423 (= e!393971 call!34242)))

(declare-fun b!692424 () Bool)

(declare-fun e!393972 () Bool)

(declare-fun e!393973 () Bool)

(assert (=> b!692424 (= e!393972 e!393973)))

(declare-fun res!456817 () Bool)

(assert (=> b!692424 (=> (not res!456817) (not e!393973))))

(declare-fun e!393970 () Bool)

(assert (=> b!692424 (= res!456817 (not e!393970))))

(declare-fun res!456815 () Bool)

(assert (=> b!692424 (=> (not res!456815) (not e!393970))))

(assert (=> b!692424 (= res!456815 (validKeyInArray!0 (select (arr!19065 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692425 () Bool)

(assert (=> b!692425 (= e!393970 (contains!3702 Nil!13156 (select (arr!19065 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95525 () Bool)

(declare-fun res!456816 () Bool)

(assert (=> d!95525 (=> res!456816 e!393972)))

(assert (=> d!95525 (= res!456816 (bvsge #b00000000000000000000000000000000 (size!19448 a!3626)))))

(assert (=> d!95525 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13156) e!393972)))

(declare-fun bm!34239 () Bool)

(declare-fun c!78171 () Bool)

(assert (=> bm!34239 (= call!34242 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78171 (Cons!13155 (select (arr!19065 a!3626) #b00000000000000000000000000000000) Nil!13156) Nil!13156)))))

(declare-fun b!692426 () Bool)

(assert (=> b!692426 (= e!393973 e!393971)))

(assert (=> b!692426 (= c!78171 (validKeyInArray!0 (select (arr!19065 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692427 () Bool)

(assert (=> b!692427 (= e!393971 call!34242)))

(assert (= (and d!95525 (not res!456816)) b!692424))

(assert (= (and b!692424 res!456815) b!692425))

(assert (= (and b!692424 res!456817) b!692426))

(assert (= (and b!692426 c!78171) b!692423))

(assert (= (and b!692426 (not c!78171)) b!692427))

(assert (= (or b!692423 b!692427) bm!34239))

(declare-fun m!655057 () Bool)

(assert (=> b!692424 m!655057))

(assert (=> b!692424 m!655057))

(declare-fun m!655059 () Bool)

(assert (=> b!692424 m!655059))

(assert (=> b!692425 m!655057))

(assert (=> b!692425 m!655057))

(declare-fun m!655061 () Bool)

(assert (=> b!692425 m!655061))

(assert (=> bm!34239 m!655057))

(declare-fun m!655063 () Bool)

(assert (=> bm!34239 m!655063))

(assert (=> b!692426 m!655057))

(assert (=> b!692426 m!655057))

(assert (=> b!692426 m!655059))

(assert (=> b!692178 d!95525))

(declare-fun d!95543 () Bool)

(declare-fun lt!316564 () Bool)

(assert (=> d!95543 (= lt!316564 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!315 acc!681)))))

(declare-fun e!393974 () Bool)

(assert (=> d!95543 (= lt!316564 e!393974)))

(declare-fun res!456818 () Bool)

(assert (=> d!95543 (=> (not res!456818) (not e!393974))))

(assert (=> d!95543 (= res!456818 (is-Cons!13155 acc!681))))

(assert (=> d!95543 (= (contains!3702 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316564)))

(declare-fun b!692428 () Bool)

(declare-fun e!393975 () Bool)

(assert (=> b!692428 (= e!393974 e!393975)))

(declare-fun res!456819 () Bool)

(assert (=> b!692428 (=> res!456819 e!393975)))

(assert (=> b!692428 (= res!456819 (= (h!14200 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692429 () Bool)

(assert (=> b!692429 (= e!393975 (contains!3702 (t!19437 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95543 res!456818) b!692428))

(assert (= (and b!692428 (not res!456819)) b!692429))

(assert (=> d!95543 m!655017))

(declare-fun m!655065 () Bool)

(assert (=> d!95543 m!655065))

(declare-fun m!655067 () Bool)

(assert (=> b!692429 m!655067))

(assert (=> b!692189 d!95543))

(declare-fun d!95545 () Bool)

(declare-fun res!456830 () Bool)

(declare-fun e!393988 () Bool)

(assert (=> d!95545 (=> res!456830 e!393988)))

(assert (=> d!95545 (= res!456830 (= (select (arr!19065 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95545 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!393988)))

(declare-fun b!692444 () Bool)

(declare-fun e!393989 () Bool)

(assert (=> b!692444 (= e!393988 e!393989)))

(declare-fun res!456831 () Bool)

(assert (=> b!692444 (=> (not res!456831) (not e!393989))))

(assert (=> b!692444 (= res!456831 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19448 a!3626)))))

(declare-fun b!692445 () Bool)

(assert (=> b!692445 (= e!393989 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95545 (not res!456830)) b!692444))

(assert (= (and b!692444 res!456831) b!692445))

(assert (=> d!95545 m!655057))

(declare-fun m!655069 () Bool)

(assert (=> b!692445 m!655069))

(assert (=> b!692188 d!95545))

(declare-fun d!95547 () Bool)

(assert (=> d!95547 (= (array_inv!14839 a!3626) (bvsge (size!19448 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61872 d!95547))

(declare-fun d!95549 () Bool)

(declare-fun lt!316565 () Bool)

(assert (=> d!95549 (= lt!316565 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!315 lt!316525)))))

(declare-fun e!393994 () Bool)

(assert (=> d!95549 (= lt!316565 e!393994)))

(declare-fun res!456835 () Bool)

(assert (=> d!95549 (=> (not res!456835) (not e!393994))))

(assert (=> d!95549 (= res!456835 (is-Cons!13155 lt!316525))))

(assert (=> d!95549 (= (contains!3702 lt!316525 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316565)))

(declare-fun b!692451 () Bool)

(declare-fun e!393995 () Bool)

(assert (=> b!692451 (= e!393994 e!393995)))

(declare-fun res!456836 () Bool)

(assert (=> b!692451 (=> res!456836 e!393995)))

(assert (=> b!692451 (= res!456836 (= (h!14200 lt!316525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692452 () Bool)

(assert (=> b!692452 (= e!393995 (contains!3702 (t!19437 lt!316525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95549 res!456835) b!692451))

(assert (= (and b!692451 (not res!456836)) b!692452))

(assert (=> d!95549 m!655009))

(declare-fun m!655073 () Bool)

(assert (=> d!95549 m!655073))

(declare-fun m!655075 () Bool)

(assert (=> b!692452 m!655075))

(assert (=> b!692179 d!95549))

(declare-fun d!95551 () Bool)

(declare-fun lt!316566 () Bool)

(assert (=> d!95551 (= lt!316566 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!315 acc!681)))))

(declare-fun e!393996 () Bool)

(assert (=> d!95551 (= lt!316566 e!393996)))

(declare-fun res!456837 () Bool)

(assert (=> d!95551 (=> (not res!456837) (not e!393996))))

(assert (=> d!95551 (= res!456837 (is-Cons!13155 acc!681))))

(assert (=> d!95551 (= (contains!3702 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316566)))

(declare-fun b!692453 () Bool)

(declare-fun e!393997 () Bool)

(assert (=> b!692453 (= e!393996 e!393997)))

(declare-fun res!456838 () Bool)

(assert (=> b!692453 (=> res!456838 e!393997)))

(assert (=> b!692453 (= res!456838 (= (h!14200 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692454 () Bool)

(assert (=> b!692454 (= e!393997 (contains!3702 (t!19437 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95551 res!456837) b!692453))

(assert (= (and b!692453 (not res!456838)) b!692454))

(assert (=> d!95551 m!655017))

(declare-fun m!655079 () Bool)

(assert (=> d!95551 m!655079))

(declare-fun m!655081 () Bool)

(assert (=> b!692454 m!655081))

(assert (=> b!692181 d!95551))

(declare-fun d!95555 () Bool)

(assert (=> d!95555 (= ($colon$colon!412 acc!681 (select (arr!19065 a!3626) from!3004)) (Cons!13155 (select (arr!19065 a!3626) from!3004) acc!681))))

(assert (=> b!692180 d!95555))

(declare-fun d!95559 () Bool)

(assert (=> d!95559 (= (validKeyInArray!0 (select (arr!19065 a!3626) from!3004)) (and (not (= (select (arr!19065 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19065 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692191 d!95559))

(declare-fun b!692457 () Bool)

(declare-fun e!394001 () Bool)

(declare-fun call!34246 () Bool)

(assert (=> b!692457 (= e!394001 call!34246)))

(declare-fun b!692458 () Bool)

(declare-fun e!394002 () Bool)

(declare-fun e!394003 () Bool)

(assert (=> b!692458 (= e!394002 e!394003)))

(declare-fun res!456843 () Bool)

(assert (=> b!692458 (=> (not res!456843) (not e!394003))))

(declare-fun e!394000 () Bool)

(assert (=> b!692458 (= res!456843 (not e!394000))))

(declare-fun res!456841 () Bool)

(assert (=> b!692458 (=> (not res!456841) (not e!394000))))

(assert (=> b!692458 (= res!456841 (validKeyInArray!0 (select (arr!19065 a!3626) from!3004)))))

(declare-fun b!692459 () Bool)

(assert (=> b!692459 (= e!394000 (contains!3702 acc!681 (select (arr!19065 a!3626) from!3004)))))

(declare-fun d!95561 () Bool)

(declare-fun res!456842 () Bool)

(assert (=> d!95561 (=> res!456842 e!394002)))

(assert (=> d!95561 (= res!456842 (bvsge from!3004 (size!19448 a!3626)))))

(assert (=> d!95561 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!394002)))

(declare-fun bm!34243 () Bool)

(declare-fun c!78175 () Bool)

(assert (=> bm!34243 (= call!34246 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78175 (Cons!13155 (select (arr!19065 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!692460 () Bool)

(assert (=> b!692460 (= e!394003 e!394001)))

(assert (=> b!692460 (= c!78175 (validKeyInArray!0 (select (arr!19065 a!3626) from!3004)))))

(declare-fun b!692461 () Bool)

(assert (=> b!692461 (= e!394001 call!34246)))

(assert (= (and d!95561 (not res!456842)) b!692458))

(assert (= (and b!692458 res!456841) b!692459))

(assert (= (and b!692458 res!456843) b!692460))

