; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61822 () Bool)

(assert start!61822)

(declare-fun b!691981 () Bool)

(declare-fun res!456438 () Bool)

(declare-fun e!393669 () Bool)

(assert (=> b!691981 (=> (not res!456438) (not e!393669))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691981 (= res!456438 (validKeyInArray!0 k!2843))))

(declare-fun b!691982 () Bool)

(declare-fun e!393670 () Bool)

(declare-fun e!393665 () Bool)

(assert (=> b!691982 (= e!393670 e!393665)))

(declare-fun res!456429 () Bool)

(assert (=> b!691982 (=> (not res!456429) (not e!393665))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691982 (= res!456429 (bvsle from!3004 i!1382))))

(declare-fun b!691983 () Bool)

(declare-fun e!393666 () Bool)

(declare-datatypes ((List!13158 0))(
  ( (Nil!13155) (Cons!13154 (h!14199 (_ BitVec 64)) (t!19433 List!13158)) )
))
(declare-fun acc!681 () List!13158)

(declare-fun contains!3701 (List!13158 (_ BitVec 64)) Bool)

(assert (=> b!691983 (= e!393666 (contains!3701 acc!681 k!2843))))

(declare-fun b!691984 () Bool)

(declare-datatypes ((Unit!24426 0))(
  ( (Unit!24427) )
))
(declare-fun e!393668 () Unit!24426)

(declare-fun Unit!24428 () Unit!24426)

(assert (=> b!691984 (= e!393668 Unit!24428)))

(declare-fun b!691985 () Bool)

(declare-fun e!393664 () Bool)

(assert (=> b!691985 (= e!393669 e!393664)))

(declare-fun res!456435 () Bool)

(assert (=> b!691985 (=> (not res!456435) (not e!393664))))

(declare-datatypes ((array!39799 0))(
  ( (array!39800 (arr!19064 (Array (_ BitVec 32) (_ BitVec 64))) (size!19447 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39799)

(assert (=> b!691985 (= res!456435 (and (not (= (select (arr!19064 a!3626) from!3004) k!2843)) (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!316494 () Unit!24426)

(assert (=> b!691985 (= lt!316494 e!393668)))

(declare-fun c!78143 () Bool)

(assert (=> b!691985 (= c!78143 (= (select (arr!19064 a!3626) from!3004) k!2843))))

(declare-fun b!691986 () Bool)

(declare-fun res!456437 () Bool)

(assert (=> b!691986 (=> (not res!456437) (not e!393669))))

(declare-fun arrayContainsKey!0 (array!39799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691986 (= res!456437 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691987 () Bool)

(declare-fun res!456428 () Bool)

(assert (=> b!691987 (=> (not res!456428) (not e!393669))))

(assert (=> b!691987 (= res!456428 e!393670)))

(declare-fun res!456432 () Bool)

(assert (=> b!691987 (=> res!456432 e!393670)))

(assert (=> b!691987 (= res!456432 e!393666)))

(declare-fun res!456434 () Bool)

(assert (=> b!691987 (=> (not res!456434) (not e!393666))))

(assert (=> b!691987 (= res!456434 (bvsgt from!3004 i!1382))))

(declare-fun b!691988 () Bool)

(assert (=> b!691988 (= e!393665 (not (contains!3701 acc!681 k!2843)))))

(declare-fun b!691989 () Bool)

(declare-fun res!456440 () Bool)

(assert (=> b!691989 (=> (not res!456440) (not e!393669))))

(declare-fun arrayNoDuplicates!0 (array!39799 (_ BitVec 32) List!13158) Bool)

(assert (=> b!691989 (= res!456440 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691990 () Bool)

(declare-fun res!456430 () Bool)

(assert (=> b!691990 (=> (not res!456430) (not e!393669))))

(assert (=> b!691990 (= res!456430 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13155))))

(declare-fun b!691991 () Bool)

(declare-fun res!456442 () Bool)

(assert (=> b!691991 (=> (not res!456442) (not e!393669))))

(assert (=> b!691991 (= res!456442 (not (contains!3701 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!456431 () Bool)

(assert (=> start!61822 (=> (not res!456431) (not e!393669))))

(assert (=> start!61822 (= res!456431 (and (bvslt (size!19447 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19447 a!3626))))))

(assert (=> start!61822 e!393669))

(assert (=> start!61822 true))

(declare-fun array_inv!14838 (array!39799) Bool)

(assert (=> start!61822 (array_inv!14838 a!3626)))

(declare-fun b!691980 () Bool)

(declare-fun res!456433 () Bool)

(assert (=> b!691980 (=> (not res!456433) (not e!393669))))

(assert (=> b!691980 (= res!456433 (validKeyInArray!0 (select (arr!19064 a!3626) from!3004)))))

(declare-fun b!691992 () Bool)

(declare-fun noDuplicate!948 (List!13158) Bool)

(declare-fun $colon$colon!411 (List!13158 (_ BitVec 64)) List!13158)

(assert (=> b!691992 (= e!393664 (not (noDuplicate!948 ($colon$colon!411 acc!681 (select (arr!19064 a!3626) from!3004)))))))

(declare-fun b!691993 () Bool)

(declare-fun res!456436 () Bool)

(assert (=> b!691993 (=> (not res!456436) (not e!393669))))

(assert (=> b!691993 (= res!456436 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19447 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691994 () Bool)

(declare-fun Unit!24429 () Unit!24426)

(assert (=> b!691994 (= e!393668 Unit!24429)))

(assert (=> b!691994 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316493 () Unit!24426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39799 (_ BitVec 64) (_ BitVec 32)) Unit!24426)

(assert (=> b!691994 (= lt!316493 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691994 false))

(declare-fun b!691995 () Bool)

(declare-fun res!456439 () Bool)

(assert (=> b!691995 (=> (not res!456439) (not e!393669))))

(assert (=> b!691995 (= res!456439 (noDuplicate!948 acc!681))))

(declare-fun b!691996 () Bool)

(declare-fun res!456441 () Bool)

(assert (=> b!691996 (=> (not res!456441) (not e!393669))))

(assert (=> b!691996 (= res!456441 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19447 a!3626))))))

(declare-fun b!691997 () Bool)

(declare-fun res!456443 () Bool)

(assert (=> b!691997 (=> (not res!456443) (not e!393669))))

(assert (=> b!691997 (= res!456443 (not (contains!3701 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61822 res!456431) b!691995))

(assert (= (and b!691995 res!456439) b!691991))

(assert (= (and b!691991 res!456442) b!691997))

(assert (= (and b!691997 res!456443) b!691987))

(assert (= (and b!691987 res!456434) b!691983))

(assert (= (and b!691987 (not res!456432)) b!691982))

(assert (= (and b!691982 res!456429) b!691988))

(assert (= (and b!691987 res!456428) b!691990))

(assert (= (and b!691990 res!456430) b!691989))

(assert (= (and b!691989 res!456440) b!691996))

(assert (= (and b!691996 res!456441) b!691981))

(assert (= (and b!691981 res!456438) b!691986))

(assert (= (and b!691986 res!456437) b!691993))

(assert (= (and b!691993 res!456436) b!691980))

(assert (= (and b!691980 res!456433) b!691985))

(assert (= (and b!691985 c!78143) b!691994))

(assert (= (and b!691985 (not c!78143)) b!691984))

(assert (= (and b!691985 res!456435) b!691992))

(declare-fun m!654711 () Bool)

(assert (=> b!691992 m!654711))

(assert (=> b!691992 m!654711))

(declare-fun m!654713 () Bool)

(assert (=> b!691992 m!654713))

(assert (=> b!691992 m!654713))

(declare-fun m!654715 () Bool)

(assert (=> b!691992 m!654715))

(declare-fun m!654717 () Bool)

(assert (=> b!691981 m!654717))

(declare-fun m!654719 () Bool)

(assert (=> b!691995 m!654719))

(assert (=> b!691980 m!654711))

(assert (=> b!691980 m!654711))

(declare-fun m!654721 () Bool)

(assert (=> b!691980 m!654721))

(declare-fun m!654723 () Bool)

(assert (=> b!691997 m!654723))

(declare-fun m!654725 () Bool)

(assert (=> b!691990 m!654725))

(declare-fun m!654727 () Bool)

(assert (=> start!61822 m!654727))

(declare-fun m!654729 () Bool)

(assert (=> b!691986 m!654729))

(declare-fun m!654731 () Bool)

(assert (=> b!691994 m!654731))

(declare-fun m!654733 () Bool)

(assert (=> b!691994 m!654733))

(declare-fun m!654735 () Bool)

(assert (=> b!691991 m!654735))

(declare-fun m!654737 () Bool)

(assert (=> b!691983 m!654737))

(declare-fun m!654739 () Bool)

(assert (=> b!691989 m!654739))

(assert (=> b!691988 m!654737))

(assert (=> b!691985 m!654711))

(push 1)

(assert (not b!691986))

(assert (not b!691980))

(assert (not b!691983))

(assert (not b!691990))

(assert (not b!691988))

(assert (not b!691989))

(assert (not b!691997))

(assert (not b!691981))

(assert (not b!691995))

(assert (not b!691992))

(assert (not b!691991))

(assert (not start!61822))

(assert (not b!691994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!692030 () Bool)

(declare-fun e!393703 () Bool)

(declare-fun call!34226 () Bool)

(assert (=> b!692030 (= e!393703 call!34226)))

(declare-fun c!78146 () Bool)

(declare-fun bm!34223 () Bool)

(assert (=> bm!34223 (= call!34226 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78146 (Cons!13154 (select (arr!19064 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun e!393701 () Bool)

(declare-fun b!692031 () Bool)

(assert (=> b!692031 (= e!393701 (contains!3701 acc!681 (select (arr!19064 a!3626) from!3004)))))

(declare-fun b!692033 () Bool)

(declare-fun e!393704 () Bool)

(declare-fun e!393702 () Bool)

(assert (=> b!692033 (= e!393704 e!393702)))

(declare-fun res!456474 () Bool)

(assert (=> b!692033 (=> (not res!456474) (not e!393702))))

(assert (=> b!692033 (= res!456474 (not e!393701))))

(declare-fun res!456473 () Bool)

(assert (=> b!692033 (=> (not res!456473) (not e!393701))))

(assert (=> b!692033 (= res!456473 (validKeyInArray!0 (select (arr!19064 a!3626) from!3004)))))

(declare-fun b!692034 () Bool)

(assert (=> b!692034 (= e!393703 call!34226)))

(declare-fun b!692032 () Bool)

(assert (=> b!692032 (= e!393702 e!393703)))

(assert (=> b!692032 (= c!78146 (validKeyInArray!0 (select (arr!19064 a!3626) from!3004)))))

(declare-fun d!95409 () Bool)

(declare-fun res!456472 () Bool)

(assert (=> d!95409 (=> res!456472 e!393704)))

(assert (=> d!95409 (= res!456472 (bvsge from!3004 (size!19447 a!3626)))))

(assert (=> d!95409 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!393704)))

(assert (= (and d!95409 (not res!456472)) b!692033))

(assert (= (and b!692033 res!456473) b!692031))

(assert (= (and b!692033 res!456474) b!692032))

(assert (= (and b!692032 c!78146) b!692034))

(assert (= (and b!692032 (not c!78146)) b!692030))

(assert (= (or b!692034 b!692030) bm!34223))

(assert (=> bm!34223 m!654711))

(declare-fun m!654763 () Bool)

(assert (=> bm!34223 m!654763))

(assert (=> b!692031 m!654711))

(assert (=> b!692031 m!654711))

(declare-fun m!654765 () Bool)

(assert (=> b!692031 m!654765))

(assert (=> b!692033 m!654711))

(assert (=> b!692033 m!654711))

(assert (=> b!692033 m!654721))

(assert (=> b!692032 m!654711))

(assert (=> b!692032 m!654711))

(assert (=> b!692032 m!654721))

(assert (=> b!691989 d!95409))

(declare-fun d!95419 () Bool)

(declare-fun lt!316504 () Bool)

(declare-fun content!311 (List!13158) (Set (_ BitVec 64)))

(assert (=> d!95419 (= lt!316504 (member k!2843 (content!311 acc!681)))))

(declare-fun e!393724 () Bool)

(assert (=> d!95419 (= lt!316504 e!393724)))

(declare-fun res!456491 () Bool)

(assert (=> d!95419 (=> (not res!456491) (not e!393724))))

(assert (=> d!95419 (= res!456491 (is-Cons!13154 acc!681))))

(assert (=> d!95419 (= (contains!3701 acc!681 k!2843) lt!316504)))

(declare-fun b!692053 () Bool)

(declare-fun e!393723 () Bool)

(assert (=> b!692053 (= e!393724 e!393723)))

(declare-fun res!456492 () Bool)

(assert (=> b!692053 (=> res!456492 e!393723)))

(assert (=> b!692053 (= res!456492 (= (h!14199 acc!681) k!2843))))

(declare-fun b!692054 () Bool)

(assert (=> b!692054 (= e!393723 (contains!3701 (t!19433 acc!681) k!2843))))

(assert (= (and d!95419 res!456491) b!692053))

(assert (= (and b!692053 (not res!456492)) b!692054))

(declare-fun m!654767 () Bool)

(assert (=> d!95419 m!654767))

(declare-fun m!654769 () Bool)

(assert (=> d!95419 m!654769))

(declare-fun m!654771 () Bool)

(assert (=> b!692054 m!654771))

(assert (=> b!691988 d!95419))

(declare-fun b!692061 () Bool)

(declare-fun e!393729 () Bool)

(declare-fun call!34231 () Bool)

(assert (=> b!692061 (= e!393729 call!34231)))

(declare-fun bm!34228 () Bool)

(declare-fun c!78151 () Bool)

(assert (=> bm!34228 (= call!34231 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78151 (Cons!13154 (select (arr!19064 a!3626) #b00000000000000000000000000000000) Nil!13155) Nil!13155)))))

(declare-fun b!692062 () Bool)

(declare-fun e!393727 () Bool)

(assert (=> b!692062 (= e!393727 (contains!3701 Nil!13155 (select (arr!19064 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692064 () Bool)

(declare-fun e!393730 () Bool)

(declare-fun e!393728 () Bool)

(assert (=> b!692064 (= e!393730 e!393728)))

(declare-fun res!456495 () Bool)

(assert (=> b!692064 (=> (not res!456495) (not e!393728))))

(assert (=> b!692064 (= res!456495 (not e!393727))))

(declare-fun res!456494 () Bool)

(assert (=> b!692064 (=> (not res!456494) (not e!393727))))

(assert (=> b!692064 (= res!456494 (validKeyInArray!0 (select (arr!19064 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692065 () Bool)

(assert (=> b!692065 (= e!393729 call!34231)))

(declare-fun b!692063 () Bool)

(assert (=> b!692063 (= e!393728 e!393729)))

(assert (=> b!692063 (= c!78151 (validKeyInArray!0 (select (arr!19064 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95421 () Bool)

(declare-fun res!456493 () Bool)

(assert (=> d!95421 (=> res!456493 e!393730)))

(assert (=> d!95421 (= res!456493 (bvsge #b00000000000000000000000000000000 (size!19447 a!3626)))))

(assert (=> d!95421 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13155) e!393730)))

(assert (= (and d!95421 (not res!456493)) b!692064))

(assert (= (and b!692064 res!456494) b!692062))

(assert (= (and b!692064 res!456495) b!692063))

(assert (= (and b!692063 c!78151) b!692065))

(assert (= (and b!692063 (not c!78151)) b!692061))

(assert (= (or b!692065 b!692061) bm!34228))

(declare-fun m!654773 () Bool)

(assert (=> bm!34228 m!654773))

(declare-fun m!654775 () Bool)

(assert (=> bm!34228 m!654775))

(assert (=> b!692062 m!654773))

(assert (=> b!692062 m!654773))

(declare-fun m!654777 () Bool)

(assert (=> b!692062 m!654777))

(assert (=> b!692064 m!654773))

(assert (=> b!692064 m!654773))

(declare-fun m!654779 () Bool)

(assert (=> b!692064 m!654779))

(assert (=> b!692063 m!654773))

(assert (=> b!692063 m!654773))

(assert (=> b!692063 m!654779))

(assert (=> b!691990 d!95421))

(declare-fun d!95423 () Bool)

(assert (=> d!95423 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!691981 d!95423))

(declare-fun d!95425 () Bool)

(declare-fun lt!316505 () Bool)

(assert (=> d!95425 (= lt!316505 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!311 acc!681)))))

(declare-fun e!393736 () Bool)

(assert (=> d!95425 (= lt!316505 e!393736)))

(declare-fun res!456499 () Bool)

(assert (=> d!95425 (=> (not res!456499) (not e!393736))))

(assert (=> d!95425 (= res!456499 (is-Cons!13154 acc!681))))

(assert (=> d!95425 (= (contains!3701 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316505)))

(declare-fun b!692071 () Bool)

(declare-fun e!393735 () Bool)

(assert (=> b!692071 (= e!393736 e!393735)))

(declare-fun res!456500 () Bool)

(assert (=> b!692071 (=> res!456500 e!393735)))

(assert (=> b!692071 (= res!456500 (= (h!14199 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692072 () Bool)

(assert (=> b!692072 (= e!393735 (contains!3701 (t!19433 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95425 res!456499) b!692071))

(assert (= (and b!692071 (not res!456500)) b!692072))

(assert (=> d!95425 m!654767))

(declare-fun m!654785 () Bool)

(assert (=> d!95425 m!654785))

(declare-fun m!654789 () Bool)

(assert (=> b!692072 m!654789))

(assert (=> b!691991 d!95425))

(declare-fun d!95429 () Bool)

(assert (=> d!95429 (= (validKeyInArray!0 (select (arr!19064 a!3626) from!3004)) (and (not (= (select (arr!19064 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19064 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!691980 d!95429))

(declare-fun d!95433 () Bool)

(assert (=> d!95433 (= (array_inv!14838 a!3626) (bvsge (size!19447 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61822 d!95433))

(declare-fun d!95437 () Bool)

(declare-fun res!456519 () Bool)

(declare-fun e!393757 () Bool)

(assert (=> d!95437 (=> res!456519 e!393757)))

(assert (=> d!95437 (= res!456519 (is-Nil!13155 ($colon$colon!411 acc!681 (select (arr!19064 a!3626) from!3004))))))

(assert (=> d!95437 (= (noDuplicate!948 ($colon$colon!411 acc!681 (select (arr!19064 a!3626) from!3004))) e!393757)))

(declare-fun b!692095 () Bool)

(declare-fun e!393758 () Bool)

(assert (=> b!692095 (= e!393757 e!393758)))

(declare-fun res!456520 () Bool)

(assert (=> b!692095 (=> (not res!456520) (not e!393758))))

(assert (=> b!692095 (= res!456520 (not (contains!3701 (t!19433 ($colon$colon!411 acc!681 (select (arr!19064 a!3626) from!3004))) (h!14199 ($colon$colon!411 acc!681 (select (arr!19064 a!3626) from!3004))))))))

(declare-fun b!692096 () Bool)

(assert (=> b!692096 (= e!393758 (noDuplicate!948 (t!19433 ($colon$colon!411 acc!681 (select (arr!19064 a!3626) from!3004)))))))

