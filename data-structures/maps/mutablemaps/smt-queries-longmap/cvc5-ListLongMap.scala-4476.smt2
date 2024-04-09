; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62298 () Bool)

(assert start!62298)

(declare-fun b!697645 () Bool)

(declare-fun res!461701 () Bool)

(declare-fun e!396591 () Bool)

(assert (=> b!697645 (=> (not res!461701) (not e!396591))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39972 0))(
  ( (array!39973 (arr!19140 (Array (_ BitVec 32) (_ BitVec 64))) (size!19523 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39972)

(assert (=> b!697645 (= res!461701 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19523 a!3626))))))

(declare-fun b!697647 () Bool)

(declare-fun e!396595 () Bool)

(declare-datatypes ((List!13234 0))(
  ( (Nil!13231) (Cons!13230 (h!14275 (_ BitVec 64)) (t!19524 List!13234)) )
))
(declare-fun acc!681 () List!13234)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3777 (List!13234 (_ BitVec 64)) Bool)

(assert (=> b!697647 (= e!396595 (contains!3777 acc!681 k!2843))))

(declare-fun b!697648 () Bool)

(declare-fun res!461696 () Bool)

(assert (=> b!697648 (=> (not res!461696) (not e!396591))))

(assert (=> b!697648 (= res!461696 (not (contains!3777 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697649 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39972 (_ BitVec 32) List!13234) Bool)

(assert (=> b!697649 (= e!396591 (not (arrayNoDuplicates!0 (array!39973 (store (arr!19140 a!3626) i!1382 k!2843) (size!19523 a!3626)) from!3004 acc!681)))))

(declare-fun b!697650 () Bool)

(declare-fun res!461704 () Bool)

(assert (=> b!697650 (=> (not res!461704) (not e!396591))))

(assert (=> b!697650 (= res!461704 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13231))))

(declare-fun b!697651 () Bool)

(declare-fun res!461697 () Bool)

(assert (=> b!697651 (=> (not res!461697) (not e!396591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!697651 (= res!461697 (validKeyInArray!0 k!2843))))

(declare-fun b!697652 () Bool)

(declare-fun res!461699 () Bool)

(assert (=> b!697652 (=> (not res!461699) (not e!396591))))

(declare-fun e!396594 () Bool)

(assert (=> b!697652 (= res!461699 e!396594)))

(declare-fun res!461700 () Bool)

(assert (=> b!697652 (=> res!461700 e!396594)))

(assert (=> b!697652 (= res!461700 e!396595)))

(declare-fun res!461703 () Bool)

(assert (=> b!697652 (=> (not res!461703) (not e!396595))))

(assert (=> b!697652 (= res!461703 (bvsgt from!3004 i!1382))))

(declare-fun b!697653 () Bool)

(declare-fun res!461706 () Bool)

(assert (=> b!697653 (=> (not res!461706) (not e!396591))))

(assert (=> b!697653 (= res!461706 (not (contains!3777 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697654 () Bool)

(declare-fun res!461705 () Bool)

(assert (=> b!697654 (=> (not res!461705) (not e!396591))))

(assert (=> b!697654 (= res!461705 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19523 a!3626)))))

(declare-fun b!697655 () Bool)

(declare-fun e!396593 () Bool)

(assert (=> b!697655 (= e!396593 (not (contains!3777 acc!681 k!2843)))))

(declare-fun res!461707 () Bool)

(assert (=> start!62298 (=> (not res!461707) (not e!396591))))

(assert (=> start!62298 (= res!461707 (and (bvslt (size!19523 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19523 a!3626))))))

(assert (=> start!62298 e!396591))

(assert (=> start!62298 true))

(declare-fun array_inv!14914 (array!39972) Bool)

(assert (=> start!62298 (array_inv!14914 a!3626)))

(declare-fun b!697646 () Bool)

(declare-fun res!461702 () Bool)

(assert (=> b!697646 (=> (not res!461702) (not e!396591))))

(assert (=> b!697646 (= res!461702 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697656 () Bool)

(declare-fun res!461708 () Bool)

(assert (=> b!697656 (=> (not res!461708) (not e!396591))))

(declare-fun arrayContainsKey!0 (array!39972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!697656 (= res!461708 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!697657 () Bool)

(declare-fun res!461695 () Bool)

(assert (=> b!697657 (=> (not res!461695) (not e!396591))))

(declare-fun noDuplicate!1024 (List!13234) Bool)

(assert (=> b!697657 (= res!461695 (noDuplicate!1024 acc!681))))

(declare-fun b!697658 () Bool)

(assert (=> b!697658 (= e!396594 e!396593)))

(declare-fun res!461698 () Bool)

(assert (=> b!697658 (=> (not res!461698) (not e!396593))))

(assert (=> b!697658 (= res!461698 (bvsle from!3004 i!1382))))

(assert (= (and start!62298 res!461707) b!697657))

(assert (= (and b!697657 res!461695) b!697653))

(assert (= (and b!697653 res!461706) b!697648))

(assert (= (and b!697648 res!461696) b!697652))

(assert (= (and b!697652 res!461703) b!697647))

(assert (= (and b!697652 (not res!461700)) b!697658))

(assert (= (and b!697658 res!461698) b!697655))

(assert (= (and b!697652 res!461699) b!697650))

(assert (= (and b!697650 res!461704) b!697646))

(assert (= (and b!697646 res!461702) b!697645))

(assert (= (and b!697645 res!461701) b!697651))

(assert (= (and b!697651 res!461697) b!697656))

(assert (= (and b!697656 res!461708) b!697654))

(assert (= (and b!697654 res!461705) b!697649))

(declare-fun m!658017 () Bool)

(assert (=> start!62298 m!658017))

(declare-fun m!658019 () Bool)

(assert (=> b!697646 m!658019))

(declare-fun m!658021 () Bool)

(assert (=> b!697656 m!658021))

(declare-fun m!658023 () Bool)

(assert (=> b!697650 m!658023))

(declare-fun m!658025 () Bool)

(assert (=> b!697647 m!658025))

(declare-fun m!658027 () Bool)

(assert (=> b!697651 m!658027))

(declare-fun m!658029 () Bool)

(assert (=> b!697648 m!658029))

(assert (=> b!697655 m!658025))

(declare-fun m!658031 () Bool)

(assert (=> b!697653 m!658031))

(declare-fun m!658033 () Bool)

(assert (=> b!697657 m!658033))

(declare-fun m!658035 () Bool)

(assert (=> b!697649 m!658035))

(declare-fun m!658037 () Bool)

(assert (=> b!697649 m!658037))

(push 1)

(assert (not b!697648))

(assert (not b!697657))

(assert (not b!697649))

(assert (not b!697651))

(assert (not b!697646))

(assert (not b!697656))

(assert (not b!697647))

(assert (not b!697653))

(assert (not b!697655))

(assert (not start!62298))

(assert (not b!697650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96143 () Bool)

(declare-fun lt!317148 () Bool)

(declare-fun content!333 (List!13234) (Set (_ BitVec 64)))

(assert (=> d!96143 (= lt!317148 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!333 acc!681)))))

(declare-fun e!396681 () Bool)

(assert (=> d!96143 (= lt!317148 e!396681)))

(declare-fun res!461843 () Bool)

(assert (=> d!96143 (=> (not res!461843) (not e!396681))))

(assert (=> d!96143 (= res!461843 (is-Cons!13230 acc!681))))

(assert (=> d!96143 (= (contains!3777 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317148)))

(declare-fun b!697802 () Bool)

(declare-fun e!396680 () Bool)

(assert (=> b!697802 (= e!396681 e!396680)))

(declare-fun res!461842 () Bool)

(assert (=> b!697802 (=> res!461842 e!396680)))

(assert (=> b!697802 (= res!461842 (= (h!14275 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!697803 () Bool)

(assert (=> b!697803 (= e!396680 (contains!3777 (t!19524 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96143 res!461843) b!697802))

(assert (= (and b!697802 (not res!461842)) b!697803))

(declare-fun m!658137 () Bool)

(assert (=> d!96143 m!658137))

(declare-fun m!658139 () Bool)

(assert (=> d!96143 m!658139))

(declare-fun m!658141 () Bool)

(assert (=> b!697803 m!658141))

(assert (=> b!697653 d!96143))

(declare-fun d!96149 () Bool)

(declare-fun lt!317149 () Bool)

(assert (=> d!96149 (= lt!317149 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!333 acc!681)))))

(declare-fun e!396689 () Bool)

(assert (=> d!96149 (= lt!317149 e!396689)))

(declare-fun res!461851 () Bool)

(assert (=> d!96149 (=> (not res!461851) (not e!396689))))

(assert (=> d!96149 (= res!461851 (is-Cons!13230 acc!681))))

(assert (=> d!96149 (= (contains!3777 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317149)))

(declare-fun b!697808 () Bool)

(declare-fun e!396688 () Bool)

(assert (=> b!697808 (= e!396689 e!396688)))

(declare-fun res!461850 () Bool)

(assert (=> b!697808 (=> res!461850 e!396688)))

(assert (=> b!697808 (= res!461850 (= (h!14275 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!697809 () Bool)

(assert (=> b!697809 (= e!396688 (contains!3777 (t!19524 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96149 res!461851) b!697808))

(assert (= (and b!697808 (not res!461850)) b!697809))

(assert (=> d!96149 m!658137))

(declare-fun m!658143 () Bool)

(assert (=> d!96149 m!658143))

(declare-fun m!658145 () Bool)

(assert (=> b!697809 m!658145))

(assert (=> b!697648 d!96149))

(declare-fun b!697843 () Bool)

(declare-fun e!396715 () Bool)

(declare-fun e!396714 () Bool)

(assert (=> b!697843 (= e!396715 e!396714)))

(declare-fun c!78354 () Bool)

(assert (=> b!697843 (= c!78354 (validKeyInArray!0 (select (arr!19140 a!3626) from!3004)))))

(declare-fun d!96151 () Bool)

(declare-fun res!461870 () Bool)

(declare-fun e!396717 () Bool)

(assert (=> d!96151 (=> res!461870 e!396717)))

(assert (=> d!96151 (= res!461870 (bvsge from!3004 (size!19523 a!3626)))))

(assert (=> d!96151 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!396717)))

(declare-fun e!396716 () Bool)

(declare-fun b!697844 () Bool)

(assert (=> b!697844 (= e!396716 (contains!3777 acc!681 (select (arr!19140 a!3626) from!3004)))))

(declare-fun b!697845 () Bool)

(assert (=> b!697845 (= e!396717 e!396715)))

(declare-fun res!461871 () Bool)

(assert (=> b!697845 (=> (not res!461871) (not e!396715))))

(assert (=> b!697845 (= res!461871 (not e!396716))))

(declare-fun res!461869 () Bool)

(assert (=> b!697845 (=> (not res!461869) (not e!396716))))

(assert (=> b!697845 (= res!461869 (validKeyInArray!0 (select (arr!19140 a!3626) from!3004)))))

(declare-fun b!697846 () Bool)

(declare-fun call!34344 () Bool)

(assert (=> b!697846 (= e!396714 call!34344)))

(declare-fun b!697847 () Bool)

(assert (=> b!697847 (= e!396714 call!34344)))

(declare-fun bm!34341 () Bool)

(assert (=> bm!34341 (= call!34344 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78354 (Cons!13230 (select (arr!19140 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!96151 (not res!461870)) b!697845))

(assert (= (and b!697845 res!461869) b!697844))

(assert (= (and b!697845 res!461871) b!697843))

(assert (= (and b!697843 c!78354) b!697847))

(assert (= (and b!697843 (not c!78354)) b!697846))

(assert (= (or b!697847 b!697846) bm!34341))

(declare-fun m!658175 () Bool)

(assert (=> b!697843 m!658175))

(assert (=> b!697843 m!658175))

(declare-fun m!658177 () Bool)

(assert (=> b!697843 m!658177))

(assert (=> b!697844 m!658175))

(assert (=> b!697844 m!658175))

(declare-fun m!658179 () Bool)

(assert (=> b!697844 m!658179))

(assert (=> b!697845 m!658175))

(assert (=> b!697845 m!658175))

(assert (=> b!697845 m!658177))

(assert (=> bm!34341 m!658175))

(declare-fun m!658181 () Bool)

(assert (=> bm!34341 m!658181))

(assert (=> b!697646 d!96151))

(declare-fun d!96161 () Bool)

(declare-fun res!461882 () Bool)

(declare-fun e!396728 () Bool)

(assert (=> d!96161 (=> res!461882 e!396728)))

(assert (=> d!96161 (= res!461882 (is-Nil!13231 acc!681))))

(assert (=> d!96161 (= (noDuplicate!1024 acc!681) e!396728)))

(declare-fun b!697858 () Bool)

(declare-fun e!396729 () Bool)

(assert (=> b!697858 (= e!396728 e!396729)))

(declare-fun res!461883 () Bool)

(assert (=> b!697858 (=> (not res!461883) (not e!396729))))

(assert (=> b!697858 (= res!461883 (not (contains!3777 (t!19524 acc!681) (h!14275 acc!681))))))

(declare-fun b!697859 () Bool)

(assert (=> b!697859 (= e!396729 (noDuplicate!1024 (t!19524 acc!681)))))

(assert (= (and d!96161 (not res!461882)) b!697858))

(assert (= (and b!697858 res!461883) b!697859))

(declare-fun m!658185 () Bool)

(assert (=> b!697858 m!658185))

(declare-fun m!658187 () Bool)

(assert (=> b!697859 m!658187))

(assert (=> b!697657 d!96161))

(declare-fun d!96165 () Bool)

(declare-fun lt!317151 () Bool)

(assert (=> d!96165 (= lt!317151 (set.member k!2843 (content!333 acc!681)))))

(declare-fun e!396731 () Bool)

(assert (=> d!96165 (= lt!317151 e!396731)))

(declare-fun res!461885 () Bool)

(assert (=> d!96165 (=> (not res!461885) (not e!396731))))

(assert (=> d!96165 (= res!461885 (is-Cons!13230 acc!681))))

(assert (=> d!96165 (= (contains!3777 acc!681 k!2843) lt!317151)))

(declare-fun b!697860 () Bool)

(declare-fun e!396730 () Bool)

(assert (=> b!697860 (= e!396731 e!396730)))

(declare-fun res!461884 () Bool)

(assert (=> b!697860 (=> res!461884 e!396730)))

(assert (=> b!697860 (= res!461884 (= (h!14275 acc!681) k!2843))))

(declare-fun b!697861 () Bool)

(assert (=> b!697861 (= e!396730 (contains!3777 (t!19524 acc!681) k!2843))))

(assert (= (and d!96165 res!461885) b!697860))

(assert (= (and b!697860 (not res!461884)) b!697861))

(assert (=> d!96165 m!658137))

(declare-fun m!658189 () Bool)

(assert (=> d!96165 m!658189))

(declare-fun m!658191 () Bool)

(assert (=> b!697861 m!658191))

(assert (=> b!697647 d!96165))

(declare-fun b!697864 () Bool)

(declare-fun e!396735 () Bool)

(declare-fun e!396734 () Bool)

(assert (=> b!697864 (= e!396735 e!396734)))

(declare-fun c!78355 () Bool)

(assert (=> b!697864 (= c!78355 (validKeyInArray!0 (select (arr!19140 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!96167 () Bool)

(declare-fun res!461889 () Bool)

(declare-fun e!396737 () Bool)

(assert (=> d!96167 (=> res!461889 e!396737)))

(assert (=> d!96167 (= res!461889 (bvsge #b00000000000000000000000000000000 (size!19523 a!3626)))))

(assert (=> d!96167 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13231) e!396737)))

(declare-fun b!697865 () Bool)

(declare-fun e!396736 () Bool)

(assert (=> b!697865 (= e!396736 (contains!3777 Nil!13231 (select (arr!19140 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!697866 () Bool)

(assert (=> b!697866 (= e!396737 e!396735)))

(declare-fun res!461890 () Bool)

(assert (=> b!697866 (=> (not res!461890) (not e!396735))))

(assert (=> b!697866 (= res!461890 (not e!396736))))

(declare-fun res!461888 () Bool)

(assert (=> b!697866 (=> (not res!461888) (not e!396736))))

(assert (=> b!697866 (= res!461888 (validKeyInArray!0 (select (arr!19140 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!697867 () Bool)

(declare-fun call!34345 () Bool)

(assert (=> b!697867 (= e!396734 call!34345)))

(declare-fun b!697868 () Bool)

(assert (=> b!697868 (= e!396734 call!34345)))

(declare-fun bm!34342 () Bool)

(assert (=> bm!34342 (= call!34345 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78355 (Cons!13230 (select (arr!19140 a!3626) #b00000000000000000000000000000000) Nil!13231) Nil!13231)))))

(assert (= (and d!96167 (not res!461889)) b!697866))

(assert (= (and b!697866 res!461888) b!697865))

(assert (= (and b!697866 res!461890) b!697864))

(assert (= (and b!697864 c!78355) b!697868))

(assert (= (and b!697864 (not c!78355)) b!697867))

(assert (= (or b!697868 b!697867) bm!34342))

(declare-fun m!658193 () Bool)

(assert (=> b!697864 m!658193))

(assert (=> b!697864 m!658193))

(declare-fun m!658195 () Bool)

(assert (=> b!697864 m!658195))

(assert (=> b!697865 m!658193))

(assert (=> b!697865 m!658193))

(declare-fun m!658197 () Bool)

(assert (=> b!697865 m!658197))

(assert (=> b!697866 m!658193))

(assert (=> b!697866 m!658193))

(assert (=> b!697866 m!658195))

(assert (=> bm!34342 m!658193))

(declare-fun m!658199 () Bool)

(assert (=> bm!34342 m!658199))

(assert (=> b!697650 d!96167))

(declare-fun d!96169 () Bool)

(declare-fun res!461899 () Bool)

(declare-fun e!396746 () Bool)

(assert (=> d!96169 (=> res!461899 e!396746)))

(assert (=> d!96169 (= res!461899 (= (select (arr!19140 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!96169 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!396746)))

(declare-fun b!697877 () Bool)

(declare-fun e!396747 () Bool)

(assert (=> b!697877 (= e!396746 e!396747)))

(declare-fun res!461900 () Bool)

(assert (=> b!697877 (=> (not res!461900) (not e!396747))))

(assert (=> b!697877 (= res!461900 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19523 a!3626)))))

(declare-fun b!697878 () Bool)

(assert (=> b!697878 (= e!396747 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!96169 (not res!461899)) b!697877))

(assert (= (and b!697877 res!461900) b!697878))

(assert (=> d!96169 m!658193))

(declare-fun m!658205 () Bool)

(assert (=> b!697878 m!658205))

(assert (=> b!697656 d!96169))

(declare-fun d!96171 () Bool)

(assert (=> d!96171 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!697651 d!96171))

(declare-fun b!697879 () Bool)

(declare-fun e!396749 () Bool)

(declare-fun e!396748 () Bool)

(assert (=> b!697879 (= e!396749 e!396748)))

(declare-fun c!78356 () Bool)

(assert (=> b!697879 (= c!78356 (validKeyInArray!0 (select (arr!19140 (array!39973 (store (arr!19140 a!3626) i!1382 k!2843) (size!19523 a!3626))) from!3004)))))

(declare-fun d!96173 () Bool)

(declare-fun res!461902 () Bool)

(declare-fun e!396751 () Bool)

(assert (=> d!96173 (=> res!461902 e!396751)))

(assert (=> d!96173 (= res!461902 (bvsge from!3004 (size!19523 (array!39973 (store (arr!19140 a!3626) i!1382 k!2843) (size!19523 a!3626)))))))

(assert (=> d!96173 (= (arrayNoDuplicates!0 (array!39973 (store (arr!19140 a!3626) i!1382 k!2843) (size!19523 a!3626)) from!3004 acc!681) e!396751)))

(declare-fun b!697880 () Bool)

(declare-fun e!396750 () Bool)

(assert (=> b!697880 (= e!396750 (contains!3777 acc!681 (select (arr!19140 (array!39973 (store (arr!19140 a!3626) i!1382 k!2843) (size!19523 a!3626))) from!3004)))))

(declare-fun b!697881 () Bool)

(assert (=> b!697881 (= e!396751 e!396749)))

(declare-fun res!461903 () Bool)

(assert (=> b!697881 (=> (not res!461903) (not e!396749))))

(assert (=> b!697881 (= res!461903 (not e!396750))))

(declare-fun res!461901 () Bool)

(assert (=> b!697881 (=> (not res!461901) (not e!396750))))

(assert (=> b!697881 (= res!461901 (validKeyInArray!0 (select (arr!19140 (array!39973 (store (arr!19140 a!3626) i!1382 k!2843) (size!19523 a!3626))) from!3004)))))

(declare-fun b!697882 () Bool)

(declare-fun call!34346 () Bool)

(assert (=> b!697882 (= e!396748 call!34346)))

(declare-fun b!697883 () Bool)

(assert (=> b!697883 (= e!396748 call!34346)))

(declare-fun bm!34343 () Bool)

(assert (=> bm!34343 (= call!34346 (arrayNoDuplicates!0 (array!39973 (store (arr!19140 a!3626) i!1382 k!2843) (size!19523 a!3626)) (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78356 (Cons!13230 (select (arr!19140 (array!39973 (store (arr!19140 a!3626) i!1382 k!2843) (size!19523 a!3626))) from!3004) acc!681) acc!681)))))

(assert (= (and d!96173 (not res!461902)) b!697881))

(assert (= (and b!697881 res!461901) b!697880))

(assert (= (and b!697881 res!461903) b!697879))

(assert (= (and b!697879 c!78356) b!697883))

(assert (= (and b!697879 (not c!78356)) b!697882))

(assert (= (or b!697883 b!697882) bm!34343))

(declare-fun m!658207 () Bool)

(assert (=> b!697879 m!658207))

(assert (=> b!697879 m!658207))

(declare-fun m!658209 () Bool)

(assert (=> b!697879 m!658209))

(assert (=> b!697880 m!658207))

(assert (=> b!697880 m!658207))

(declare-fun m!658211 () Bool)

(assert (=> b!697880 m!658211))

(assert (=> b!697881 m!658207))

(assert (=> b!697881 m!658207))

(assert (=> b!697881 m!658209))

(assert (=> bm!34343 m!658207))

(declare-fun m!658213 () Bool)

(assert (=> bm!34343 m!658213))

(assert (=> b!697649 d!96173))

(assert (=> b!697655 d!96165))

(declare-fun d!96175 () Bool)

(assert (=> d!96175 (= (array_inv!14914 a!3626) (bvsge (size!19523 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!62298 d!96175))

(push 1)

(assert (not b!697809))

(assert (not b!697879))

(assert (not b!697844))

(assert (not b!697881))

(assert (not b!697843))

(assert (not b!697845))

(assert (not bm!34341))

(assert (not d!96165))

(assert (not b!697858))

(assert (not b!697878))

(assert (not b!697864))

(assert (not bm!34343))

(assert (not b!697803))

(assert (not d!96143))

(assert (not d!96149))

(assert (not b!697866))

(assert (not b!697880))

(assert (not bm!34342))

(assert (not b!697859))

(assert (not b!697865))

(assert (not b!697861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96209 () Bool)

(declare-fun lt!317159 () Bool)

(assert (=> d!96209 (= lt!317159 (set.member (h!14275 acc!681) (content!333 (t!19524 acc!681))))))

(declare-fun e!396786 () Bool)

(assert (=> d!96209 (= lt!317159 e!396786)))

(declare-fun res!461932 () Bool)

(assert (=> d!96209 (=> (not res!461932) (not e!396786))))

(assert (=> d!96209 (= res!461932 (is-Cons!13230 (t!19524 acc!681)))))

(assert (=> d!96209 (= (contains!3777 (t!19524 acc!681) (h!14275 acc!681)) lt!317159)))

(declare-fun b!697923 () Bool)

(declare-fun e!396785 () Bool)

(assert (=> b!697923 (= e!396786 e!396785)))

(declare-fun res!461931 () Bool)

(assert (=> b!697923 (=> res!461931 e!396785)))

(assert (=> b!697923 (= res!461931 (= (h!14275 (t!19524 acc!681)) (h!14275 acc!681)))))

(declare-fun b!697924 () Bool)

(assert (=> b!697924 (= e!396785 (contains!3777 (t!19524 (t!19524 acc!681)) (h!14275 acc!681)))))

(assert (= (and d!96209 res!461932) b!697923))

(assert (= (and b!697923 (not res!461931)) b!697924))

(declare-fun m!658279 () Bool)

(assert (=> d!96209 m!658279))

(declare-fun m!658281 () Bool)

(assert (=> d!96209 m!658281))

(declare-fun m!658283 () Bool)

(assert (=> b!697924 m!658283))

(assert (=> b!697858 d!96209))

(declare-fun d!96211 () Bool)

(assert (=> d!96211 (= (validKeyInArray!0 (select (arr!19140 a!3626) from!3004)) (and (not (= (select (arr!19140 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19140 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!697843 d!96211))

(declare-fun b!697925 () Bool)

(declare-fun e!396788 () Bool)

(declare-fun e!396787 () Bool)

(assert (=> b!697925 (= e!396788 e!396787)))

(declare-fun c!78363 () Bool)

(assert (=> b!697925 (= c!78363 (validKeyInArray!0 (select (arr!19140 a!3626) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!96213 () Bool)

(declare-fun res!461934 () Bool)

(declare-fun e!396790 () Bool)

(assert (=> d!96213 (=> res!461934 e!396790)))

(assert (=> d!96213 (= res!461934 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19523 a!3626)))))

(assert (=> d!96213 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78355 (Cons!13230 (select (arr!19140 a!3626) #b00000000000000000000000000000000) Nil!13231) Nil!13231)) e!396790)))

(declare-fun b!697926 () Bool)

(declare-fun e!396789 () Bool)

(assert (=> b!697926 (= e!396789 (contains!3777 (ite c!78355 (Cons!13230 (select (arr!19140 a!3626) #b00000000000000000000000000000000) Nil!13231) Nil!13231) (select (arr!19140 a!3626) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!697927 () Bool)

(assert (=> b!697927 (= e!396790 e!396788)))

(declare-fun res!461935 () Bool)

(assert (=> b!697927 (=> (not res!461935) (not e!396788))))

(assert (=> b!697927 (= res!461935 (not e!396789))))

(declare-fun res!461933 () Bool)

(assert (=> b!697927 (=> (not res!461933) (not e!396789))))

(assert (=> b!697927 (= res!461933 (validKeyInArray!0 (select (arr!19140 a!3626) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!697928 () Bool)

(declare-fun call!34350 () Bool)

(assert (=> b!697928 (= e!396787 call!34350)))

(declare-fun b!697929 () Bool)

(assert (=> b!697929 (= e!396787 call!34350)))

(declare-fun bm!34347 () Bool)

(assert (=> bm!34347 (= call!34350 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!78363 (Cons!13230 (select (arr!19140 a!3626) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!78355 (Cons!13230 (select (arr!19140 a!3626) #b00000000000000000000000000000000) Nil!13231) Nil!13231)) (ite c!78355 (Cons!13230 (select (arr!19140 a!3626) #b00000000000000000000000000000000) Nil!13231) Nil!13231))))))

(assert (= (and d!96213 (not res!461934)) b!697927))

(assert (= (and b!697927 res!461933) b!697926))

(assert (= (and b!697927 res!461935) b!697925))

(assert (= (and b!697925 c!78363) b!697929))

(assert (= (and b!697925 (not c!78363)) b!697928))

(assert (= (or b!697929 b!697928) bm!34347))

(declare-fun m!658285 () Bool)

(assert (=> b!697925 m!658285))

(assert (=> b!697925 m!658285))

(declare-fun m!658287 () Bool)

(assert (=> b!697925 m!658287))

(assert (=> b!697926 m!658285))

(assert (=> b!697926 m!658285))

(declare-fun m!658289 () Bool)

(assert (=> b!697926 m!658289))

(assert (=> b!697927 m!658285))

(assert (=> b!697927 m!658285))

(assert (=> b!697927 m!658287))

(assert (=> bm!34347 m!658285))

(declare-fun m!658291 () Bool)

(assert (=> bm!34347 m!658291))

(assert (=> bm!34342 d!96213))

(declare-fun d!96215 () Bool)

(declare-fun res!461936 () Bool)

(declare-fun e!396791 () Bool)

(assert (=> d!96215 (=> res!461936 e!396791)))

(assert (=> d!96215 (= res!461936 (is-Nil!13231 (t!19524 acc!681)))))

(assert (=> d!96215 (= (noDuplicate!1024 (t!19524 acc!681)) e!396791)))

(declare-fun b!697930 () Bool)

(declare-fun e!396792 () Bool)

(assert (=> b!697930 (= e!396791 e!396792)))

(declare-fun res!461937 () Bool)

(assert (=> b!697930 (=> (not res!461937) (not e!396792))))

(assert (=> b!697930 (= res!461937 (not (contains!3777 (t!19524 (t!19524 acc!681)) (h!14275 (t!19524 acc!681)))))))

(declare-fun b!697931 () Bool)

(assert (=> b!697931 (= e!396792 (noDuplicate!1024 (t!19524 (t!19524 acc!681))))))

(assert (= (and d!96215 (not res!461936)) b!697930))

(assert (= (and b!697930 res!461937) b!697931))

(declare-fun m!658293 () Bool)

(assert (=> b!697930 m!658293))

(declare-fun m!658295 () Bool)

(assert (=> b!697931 m!658295))

(assert (=> b!697859 d!96215))

(declare-fun d!96217 () Bool)

(declare-fun lt!317160 () Bool)

