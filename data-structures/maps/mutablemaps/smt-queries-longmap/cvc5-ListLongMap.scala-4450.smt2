; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61818 () Bool)

(assert start!61818)

(declare-fun b!691872 () Bool)

(declare-fun res!456342 () Bool)

(declare-fun e!393628 () Bool)

(assert (=> b!691872 (=> (not res!456342) (not e!393628))))

(declare-datatypes ((array!39795 0))(
  ( (array!39796 (arr!19062 (Array (_ BitVec 32) (_ BitVec 64))) (size!19445 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39795)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691872 (= res!456342 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691873 () Bool)

(declare-fun res!456337 () Bool)

(assert (=> b!691873 (=> (not res!456337) (not e!393628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691873 (= res!456337 (validKeyInArray!0 k!2843))))

(declare-fun b!691874 () Bool)

(declare-fun res!456336 () Bool)

(assert (=> b!691874 (=> (not res!456336) (not e!393628))))

(declare-fun e!393622 () Bool)

(assert (=> b!691874 (= res!456336 e!393622)))

(declare-fun res!456339 () Bool)

(assert (=> b!691874 (=> res!456339 e!393622)))

(declare-fun e!393627 () Bool)

(assert (=> b!691874 (= res!456339 e!393627)))

(declare-fun res!456346 () Bool)

(assert (=> b!691874 (=> (not res!456346) (not e!393627))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691874 (= res!456346 (bvsgt from!3004 i!1382))))

(declare-fun res!456338 () Bool)

(assert (=> start!61818 (=> (not res!456338) (not e!393628))))

(assert (=> start!61818 (= res!456338 (and (bvslt (size!19445 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19445 a!3626))))))

(assert (=> start!61818 e!393628))

(assert (=> start!61818 true))

(declare-fun array_inv!14836 (array!39795) Bool)

(assert (=> start!61818 (array_inv!14836 a!3626)))

(declare-fun b!691875 () Bool)

(declare-datatypes ((List!13156 0))(
  ( (Nil!13153) (Cons!13152 (h!14197 (_ BitVec 64)) (t!19431 List!13156)) )
))
(declare-fun acc!681 () List!13156)

(declare-fun contains!3699 (List!13156 (_ BitVec 64)) Bool)

(assert (=> b!691875 (= e!393627 (contains!3699 acc!681 k!2843))))

(declare-fun b!691876 () Bool)

(declare-datatypes ((Unit!24418 0))(
  ( (Unit!24419) )
))
(declare-fun e!393626 () Unit!24418)

(declare-fun Unit!24420 () Unit!24418)

(assert (=> b!691876 (= e!393626 Unit!24420)))

(assert (=> b!691876 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316482 () Unit!24418)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39795 (_ BitVec 64) (_ BitVec 32)) Unit!24418)

(assert (=> b!691876 (= lt!316482 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691876 false))

(declare-fun b!691877 () Bool)

(declare-fun res!456340 () Bool)

(assert (=> b!691877 (=> (not res!456340) (not e!393628))))

(assert (=> b!691877 (= res!456340 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19445 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691878 () Bool)

(declare-fun res!456345 () Bool)

(assert (=> b!691878 (=> (not res!456345) (not e!393628))))

(declare-fun arrayNoDuplicates!0 (array!39795 (_ BitVec 32) List!13156) Bool)

(assert (=> b!691878 (= res!456345 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13153))))

(declare-fun b!691879 () Bool)

(declare-fun res!456347 () Bool)

(assert (=> b!691879 (=> (not res!456347) (not e!393628))))

(assert (=> b!691879 (= res!456347 (not (contains!3699 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691880 () Bool)

(declare-fun res!456343 () Bool)

(assert (=> b!691880 (=> (not res!456343) (not e!393628))))

(assert (=> b!691880 (= res!456343 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691881 () Bool)

(declare-fun res!456335 () Bool)

(assert (=> b!691881 (=> (not res!456335) (not e!393628))))

(declare-fun noDuplicate!946 (List!13156) Bool)

(assert (=> b!691881 (= res!456335 (noDuplicate!946 acc!681))))

(declare-fun b!691882 () Bool)

(declare-fun e!393625 () Bool)

(assert (=> b!691882 (= e!393628 e!393625)))

(declare-fun res!456332 () Bool)

(assert (=> b!691882 (=> (not res!456332) (not e!393625))))

(assert (=> b!691882 (= res!456332 (and (not (= (select (arr!19062 a!3626) from!3004) k!2843)) (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!316481 () Unit!24418)

(assert (=> b!691882 (= lt!316481 e!393626)))

(declare-fun c!78137 () Bool)

(assert (=> b!691882 (= c!78137 (= (select (arr!19062 a!3626) from!3004) k!2843))))

(declare-fun b!691883 () Bool)

(declare-fun Unit!24421 () Unit!24418)

(assert (=> b!691883 (= e!393626 Unit!24421)))

(declare-fun b!691884 () Bool)

(declare-fun e!393624 () Bool)

(assert (=> b!691884 (= e!393622 e!393624)))

(declare-fun res!456341 () Bool)

(assert (=> b!691884 (=> (not res!456341) (not e!393624))))

(assert (=> b!691884 (= res!456341 (bvsle from!3004 i!1382))))

(declare-fun b!691885 () Bool)

(declare-fun res!456334 () Bool)

(assert (=> b!691885 (=> (not res!456334) (not e!393628))))

(assert (=> b!691885 (= res!456334 (not (contains!3699 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691886 () Bool)

(declare-fun res!456344 () Bool)

(assert (=> b!691886 (=> (not res!456344) (not e!393628))))

(assert (=> b!691886 (= res!456344 (validKeyInArray!0 (select (arr!19062 a!3626) from!3004)))))

(declare-fun b!691887 () Bool)

(declare-fun res!456333 () Bool)

(assert (=> b!691887 (=> (not res!456333) (not e!393628))))

(assert (=> b!691887 (= res!456333 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19445 a!3626))))))

(declare-fun b!691888 () Bool)

(declare-fun $colon$colon!409 (List!13156 (_ BitVec 64)) List!13156)

(assert (=> b!691888 (= e!393625 (not (noDuplicate!946 ($colon$colon!409 acc!681 (select (arr!19062 a!3626) from!3004)))))))

(declare-fun b!691889 () Bool)

(assert (=> b!691889 (= e!393624 (not (contains!3699 acc!681 k!2843)))))

(assert (= (and start!61818 res!456338) b!691881))

(assert (= (and b!691881 res!456335) b!691879))

(assert (= (and b!691879 res!456347) b!691885))

(assert (= (and b!691885 res!456334) b!691874))

(assert (= (and b!691874 res!456346) b!691875))

(assert (= (and b!691874 (not res!456339)) b!691884))

(assert (= (and b!691884 res!456341) b!691889))

(assert (= (and b!691874 res!456336) b!691878))

(assert (= (and b!691878 res!456345) b!691880))

(assert (= (and b!691880 res!456343) b!691887))

(assert (= (and b!691887 res!456333) b!691873))

(assert (= (and b!691873 res!456337) b!691872))

(assert (= (and b!691872 res!456342) b!691877))

(assert (= (and b!691877 res!456340) b!691886))

(assert (= (and b!691886 res!456344) b!691882))

(assert (= (and b!691882 c!78137) b!691876))

(assert (= (and b!691882 (not c!78137)) b!691883))

(assert (= (and b!691882 res!456332) b!691888))

(declare-fun m!654651 () Bool)

(assert (=> b!691876 m!654651))

(declare-fun m!654653 () Bool)

(assert (=> b!691876 m!654653))

(declare-fun m!654655 () Bool)

(assert (=> start!61818 m!654655))

(declare-fun m!654657 () Bool)

(assert (=> b!691878 m!654657))

(declare-fun m!654659 () Bool)

(assert (=> b!691880 m!654659))

(declare-fun m!654661 () Bool)

(assert (=> b!691889 m!654661))

(declare-fun m!654663 () Bool)

(assert (=> b!691881 m!654663))

(declare-fun m!654665 () Bool)

(assert (=> b!691885 m!654665))

(declare-fun m!654667 () Bool)

(assert (=> b!691886 m!654667))

(assert (=> b!691886 m!654667))

(declare-fun m!654669 () Bool)

(assert (=> b!691886 m!654669))

(assert (=> b!691882 m!654667))

(assert (=> b!691888 m!654667))

(assert (=> b!691888 m!654667))

(declare-fun m!654671 () Bool)

(assert (=> b!691888 m!654671))

(assert (=> b!691888 m!654671))

(declare-fun m!654673 () Bool)

(assert (=> b!691888 m!654673))

(declare-fun m!654675 () Bool)

(assert (=> b!691879 m!654675))

(declare-fun m!654677 () Bool)

(assert (=> b!691872 m!654677))

(assert (=> b!691875 m!654661))

(declare-fun m!654679 () Bool)

(assert (=> b!691873 m!654679))

(push 1)

(assert (not b!691888))

(assert (not b!691886))

(assert (not b!691873))

(assert (not b!691878))

(assert (not b!691880))

(assert (not b!691876))

(assert (not b!691889))

(assert (not b!691872))

(assert (not b!691875))

(assert (not b!691879))

(assert (not b!691881))

(assert (not b!691885))

(assert (not start!61818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!34233 () Bool)

(declare-fun bm!34230 () Bool)

(declare-fun c!78153 () Bool)

(assert (=> bm!34230 (= call!34233 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78153 (Cons!13152 (select (arr!19062 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!692075 () Bool)

(declare-fun e!393741 () Bool)

(declare-fun e!393742 () Bool)

(assert (=> b!692075 (= e!393741 e!393742)))

(declare-fun res!456503 () Bool)

(assert (=> b!692075 (=> (not res!456503) (not e!393742))))

(declare-fun e!393739 () Bool)

(assert (=> b!692075 (= res!456503 (not e!393739))))

(declare-fun res!456505 () Bool)

(assert (=> b!692075 (=> (not res!456505) (not e!393739))))

(assert (=> b!692075 (= res!456505 (validKeyInArray!0 (select (arr!19062 a!3626) from!3004)))))

(declare-fun d!95417 () Bool)

(declare-fun res!456504 () Bool)

(assert (=> d!95417 (=> res!456504 e!393741)))

(assert (=> d!95417 (= res!456504 (bvsge from!3004 (size!19445 a!3626)))))

(assert (=> d!95417 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!393741)))

(declare-fun b!692076 () Bool)

(declare-fun e!393740 () Bool)

(assert (=> b!692076 (= e!393740 call!34233)))

(declare-fun b!692077 () Bool)

(assert (=> b!692077 (= e!393740 call!34233)))

(declare-fun b!692078 () Bool)

(assert (=> b!692078 (= e!393742 e!393740)))

(assert (=> b!692078 (= c!78153 (validKeyInArray!0 (select (arr!19062 a!3626) from!3004)))))

(declare-fun b!692079 () Bool)

(assert (=> b!692079 (= e!393739 (contains!3699 acc!681 (select (arr!19062 a!3626) from!3004)))))

(assert (= (and d!95417 (not res!456504)) b!692075))

(assert (= (and b!692075 res!456505) b!692079))

(assert (= (and b!692075 res!456503) b!692078))

(assert (= (and b!692078 c!78153) b!692076))

(assert (= (and b!692078 (not c!78153)) b!692077))

(assert (= (or b!692076 b!692077) bm!34230))

(assert (=> bm!34230 m!654667))

(declare-fun m!654793 () Bool)

(assert (=> bm!34230 m!654793))

(assert (=> b!692075 m!654667))

(assert (=> b!692075 m!654667))

(assert (=> b!692075 m!654669))

(assert (=> b!692078 m!654667))

(assert (=> b!692078 m!654667))

(assert (=> b!692078 m!654669))

(assert (=> b!692079 m!654667))

(assert (=> b!692079 m!654667))

(declare-fun m!654799 () Bool)

(assert (=> b!692079 m!654799))

(assert (=> b!691880 d!95417))

(declare-fun d!95441 () Bool)

(declare-fun res!456521 () Bool)

(declare-fun e!393759 () Bool)

(assert (=> d!95441 (=> res!456521 e!393759)))

(assert (=> d!95441 (= res!456521 (is-Nil!13153 acc!681))))

(assert (=> d!95441 (= (noDuplicate!946 acc!681) e!393759)))

(declare-fun b!692097 () Bool)

(declare-fun e!393760 () Bool)

(assert (=> b!692097 (= e!393759 e!393760)))

(declare-fun res!456522 () Bool)

(assert (=> b!692097 (=> (not res!456522) (not e!393760))))

(assert (=> b!692097 (= res!456522 (not (contains!3699 (t!19431 acc!681) (h!14197 acc!681))))))

(declare-fun b!692098 () Bool)

(assert (=> b!692098 (= e!393760 (noDuplicate!946 (t!19431 acc!681)))))

(assert (= (and d!95441 (not res!456521)) b!692097))

(assert (= (and b!692097 res!456522) b!692098))

(declare-fun m!654811 () Bool)

(assert (=> b!692097 m!654811))

(declare-fun m!654813 () Bool)

(assert (=> b!692098 m!654813))

(assert (=> b!691881 d!95441))

(declare-fun d!95449 () Bool)

(declare-fun res!456531 () Bool)

(declare-fun e!393769 () Bool)

(assert (=> d!95449 (=> res!456531 e!393769)))

(assert (=> d!95449 (= res!456531 (= (select (arr!19062 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95449 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!393769)))

(declare-fun b!692107 () Bool)

(declare-fun e!393770 () Bool)

(assert (=> b!692107 (= e!393769 e!393770)))

(declare-fun res!456532 () Bool)

(assert (=> b!692107 (=> (not res!456532) (not e!393770))))

(assert (=> b!692107 (= res!456532 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19445 a!3626)))))

(declare-fun b!692108 () Bool)

(assert (=> b!692108 (= e!393770 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95449 (not res!456531)) b!692107))

(assert (= (and b!692107 res!456532) b!692108))

(declare-fun m!654815 () Bool)

(assert (=> d!95449 m!654815))

(declare-fun m!654817 () Bool)

(assert (=> b!692108 m!654817))

(assert (=> b!691872 d!95449))

(declare-fun d!95453 () Bool)

(assert (=> d!95453 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!691873 d!95453))

(declare-fun d!95457 () Bool)

(declare-fun lt!316513 () Bool)

(declare-fun content!312 (List!13156) (Set (_ BitVec 64)))

(assert (=> d!95457 (= lt!316513 (set.member k!2843 (content!312 acc!681)))))

(declare-fun e!393783 () Bool)

(assert (=> d!95457 (= lt!316513 e!393783)))

(declare-fun res!456545 () Bool)

(assert (=> d!95457 (=> (not res!456545) (not e!393783))))

(assert (=> d!95457 (= res!456545 (is-Cons!13152 acc!681))))

(assert (=> d!95457 (= (contains!3699 acc!681 k!2843) lt!316513)))

(declare-fun b!692121 () Bool)

(declare-fun e!393784 () Bool)

(assert (=> b!692121 (= e!393783 e!393784)))

(declare-fun res!456546 () Bool)

(assert (=> b!692121 (=> res!456546 e!393784)))

(assert (=> b!692121 (= res!456546 (= (h!14197 acc!681) k!2843))))

(declare-fun b!692122 () Bool)

(assert (=> b!692122 (= e!393784 (contains!3699 (t!19431 acc!681) k!2843))))

(assert (= (and d!95457 res!456545) b!692121))

(assert (= (and b!692121 (not res!456546)) b!692122))

(declare-fun m!654833 () Bool)

(assert (=> d!95457 m!654833))

(declare-fun m!654835 () Bool)

(assert (=> d!95457 m!654835))

(declare-fun m!654837 () Bool)

(assert (=> b!692122 m!654837))

(assert (=> b!691875 d!95457))

(declare-fun d!95465 () Bool)

(declare-fun lt!316514 () Bool)

(assert (=> d!95465 (= lt!316514 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!312 acc!681)))))

(declare-fun e!393785 () Bool)

(assert (=> d!95465 (= lt!316514 e!393785)))

(declare-fun res!456547 () Bool)

(assert (=> d!95465 (=> (not res!456547) (not e!393785))))

(assert (=> d!95465 (= res!456547 (is-Cons!13152 acc!681))))

(assert (=> d!95465 (= (contains!3699 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316514)))

(declare-fun b!692123 () Bool)

(declare-fun e!393786 () Bool)

(assert (=> b!692123 (= e!393785 e!393786)))

(declare-fun res!456548 () Bool)

(assert (=> b!692123 (=> res!456548 e!393786)))

(assert (=> b!692123 (= res!456548 (= (h!14197 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692124 () Bool)

(assert (=> b!692124 (= e!393786 (contains!3699 (t!19431 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95465 res!456547) b!692123))

(assert (= (and b!692123 (not res!456548)) b!692124))

(assert (=> d!95465 m!654833))

(declare-fun m!654839 () Bool)

(assert (=> d!95465 m!654839))

(declare-fun m!654841 () Bool)

(assert (=> b!692124 m!654841))

(assert (=> b!691885 d!95465))

(declare-fun d!95467 () Bool)

(assert (=> d!95467 (= (array_inv!14836 a!3626) (bvsge (size!19445 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61818 d!95467))

(declare-fun d!95469 () Bool)

(declare-fun res!456549 () Bool)

(declare-fun e!393787 () Bool)

(assert (=> d!95469 (=> res!456549 e!393787)))

(assert (=> d!95469 (= res!456549 (= (select (arr!19062 a!3626) from!3004) k!2843))))

(assert (=> d!95469 (= (arrayContainsKey!0 a!3626 k!2843 from!3004) e!393787)))

(declare-fun b!692125 () Bool)

(declare-fun e!393788 () Bool)

(assert (=> b!692125 (= e!393787 e!393788)))

(declare-fun res!456550 () Bool)

(assert (=> b!692125 (=> (not res!456550) (not e!393788))))

(assert (=> b!692125 (= res!456550 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19445 a!3626)))))

(declare-fun b!692126 () Bool)

(assert (=> b!692126 (= e!393788 (arrayContainsKey!0 a!3626 k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95469 (not res!456549)) b!692125))

(assert (= (and b!692125 res!456550) b!692126))

(assert (=> d!95469 m!654667))

(declare-fun m!654843 () Bool)

(assert (=> b!692126 m!654843))

(assert (=> b!691876 d!95469))

(declare-fun d!95471 () Bool)

(assert (=> d!95471 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316517 () Unit!24418)

(declare-fun choose!13 (array!39795 (_ BitVec 64) (_ BitVec 32)) Unit!24418)

(assert (=> d!95471 (= lt!316517 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!95471 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95471 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!316517)))

(declare-fun bs!20260 () Bool)

(assert (= bs!20260 d!95471))

(assert (=> bs!20260 m!654677))

(declare-fun m!654845 () Bool)

(assert (=> bs!20260 m!654845))

(assert (=> b!691876 d!95471))

(declare-fun d!95473 () Bool)

(assert (=> d!95473 (= (validKeyInArray!0 (select (arr!19062 a!3626) from!3004)) (and (not (= (select (arr!19062 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19062 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!691886 d!95473))

(declare-fun d!95475 () Bool)

(declare-fun res!456551 () Bool)

(declare-fun e!393789 () Bool)

(assert (=> d!95475 (=> res!456551 e!393789)))

(assert (=> d!95475 (= res!456551 (is-Nil!13153 ($colon$colon!409 acc!681 (select (arr!19062 a!3626) from!3004))))))

(assert (=> d!95475 (= (noDuplicate!946 ($colon$colon!409 acc!681 (select (arr!19062 a!3626) from!3004))) e!393789)))

(declare-fun b!692127 () Bool)

(declare-fun e!393790 () Bool)

(assert (=> b!692127 (= e!393789 e!393790)))

(declare-fun res!456552 () Bool)

(assert (=> b!692127 (=> (not res!456552) (not e!393790))))

(assert (=> b!692127 (= res!456552 (not (contains!3699 (t!19431 ($colon$colon!409 acc!681 (select (arr!19062 a!3626) from!3004))) (h!14197 ($colon$colon!409 acc!681 (select (arr!19062 a!3626) from!3004))))))))

(declare-fun b!692128 () Bool)

(assert (=> b!692128 (= e!393790 (noDuplicate!946 (t!19431 ($colon$colon!409 acc!681 (select (arr!19062 a!3626) from!3004)))))))

(assert (= (and d!95475 (not res!456551)) b!692127))

(assert (= (and b!692127 res!456552) b!692128))

(declare-fun m!654847 () Bool)

(assert (=> b!692127 m!654847))

(declare-fun m!654849 () Bool)

(assert (=> b!692128 m!654849))

(assert (=> b!691888 d!95475))

(declare-fun d!95477 () Bool)

(assert (=> d!95477 (= ($colon$colon!409 acc!681 (select (arr!19062 a!3626) from!3004)) (Cons!13152 (select (arr!19062 a!3626) from!3004) acc!681))))

(assert (=> b!691888 d!95477))

(declare-fun d!95479 () Bool)

(declare-fun lt!316518 () Bool)

(assert (=> d!95479 (= lt!316518 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!312 acc!681)))))

(declare-fun e!393791 () Bool)

(assert (=> d!95479 (= lt!316518 e!393791)))

(declare-fun res!456553 () Bool)

(assert (=> d!95479 (=> (not res!456553) (not e!393791))))

