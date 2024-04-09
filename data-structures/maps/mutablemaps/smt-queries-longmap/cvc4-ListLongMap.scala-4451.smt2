; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61876 () Bool)

(assert start!61876)

(declare-fun b!692304 () Bool)

(declare-fun res!456726 () Bool)

(declare-fun e!393869 () Bool)

(assert (=> b!692304 (=> (not res!456726) (not e!393869))))

(declare-fun e!393877 () Bool)

(assert (=> b!692304 (= res!456726 e!393877)))

(declare-fun res!456711 () Bool)

(assert (=> b!692304 (=> res!456711 e!393877)))

(declare-fun e!393874 () Bool)

(assert (=> b!692304 (= res!456711 e!393874)))

(declare-fun res!456710 () Bool)

(assert (=> b!692304 (=> (not res!456710) (not e!393874))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!692304 (= res!456710 (bvsgt from!3004 i!1382))))

(declare-fun b!692305 () Bool)

(declare-datatypes ((List!13161 0))(
  ( (Nil!13158) (Cons!13157 (h!14202 (_ BitVec 64)) (t!19439 List!13161)) )
))
(declare-fun acc!681 () List!13161)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3704 (List!13161 (_ BitVec 64)) Bool)

(assert (=> b!692305 (= e!393874 (contains!3704 acc!681 k!2843))))

(declare-fun b!692306 () Bool)

(declare-datatypes ((Unit!24438 0))(
  ( (Unit!24439) )
))
(declare-fun e!393876 () Unit!24438)

(declare-fun Unit!24440 () Unit!24438)

(assert (=> b!692306 (= e!393876 Unit!24440)))

(declare-datatypes ((array!39808 0))(
  ( (array!39809 (arr!19067 (Array (_ BitVec 32) (_ BitVec 64))) (size!19450 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39808)

(declare-fun arrayContainsKey!0 (array!39808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!692306 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316543 () Unit!24438)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39808 (_ BitVec 64) (_ BitVec 32)) Unit!24438)

(assert (=> b!692306 (= lt!316543 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!692306 false))

(declare-fun b!692307 () Bool)

(declare-fun res!456723 () Bool)

(assert (=> b!692307 (=> (not res!456723) (not e!393869))))

(assert (=> b!692307 (= res!456723 (not (contains!3704 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692308 () Bool)

(declare-fun Unit!24441 () Unit!24438)

(assert (=> b!692308 (= e!393876 Unit!24441)))

(declare-fun res!456715 () Bool)

(assert (=> start!61876 (=> (not res!456715) (not e!393869))))

(assert (=> start!61876 (= res!456715 (and (bvslt (size!19450 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19450 a!3626))))))

(assert (=> start!61876 e!393869))

(assert (=> start!61876 true))

(declare-fun array_inv!14841 (array!39808) Bool)

(assert (=> start!61876 (array_inv!14841 a!3626)))

(declare-fun b!692309 () Bool)

(declare-fun res!456725 () Bool)

(assert (=> b!692309 (=> (not res!456725) (not e!393869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!692309 (= res!456725 (validKeyInArray!0 (select (arr!19067 a!3626) from!3004)))))

(declare-fun b!692310 () Bool)

(declare-fun e!393875 () Bool)

(assert (=> b!692310 (= e!393869 e!393875)))

(declare-fun res!456718 () Bool)

(assert (=> b!692310 (=> (not res!456718) (not e!393875))))

(assert (=> b!692310 (= res!456718 (not (= (select (arr!19067 a!3626) from!3004) k!2843)))))

(declare-fun lt!316544 () Unit!24438)

(assert (=> b!692310 (= lt!316544 e!393876)))

(declare-fun c!78164 () Bool)

(assert (=> b!692310 (= c!78164 (= (select (arr!19067 a!3626) from!3004) k!2843))))

(declare-fun b!692311 () Bool)

(declare-fun res!456714 () Bool)

(assert (=> b!692311 (=> (not res!456714) (not e!393869))))

(assert (=> b!692311 (= res!456714 (validKeyInArray!0 k!2843))))

(declare-fun b!692312 () Bool)

(declare-fun e!393871 () Bool)

(assert (=> b!692312 (= e!393875 e!393871)))

(declare-fun res!456722 () Bool)

(assert (=> b!692312 (=> (not res!456722) (not e!393871))))

(assert (=> b!692312 (= res!456722 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!316545 () List!13161)

(declare-fun $colon$colon!414 (List!13161 (_ BitVec 64)) List!13161)

(assert (=> b!692312 (= lt!316545 ($colon$colon!414 acc!681 (select (arr!19067 a!3626) from!3004)))))

(declare-fun b!692313 () Bool)

(declare-fun res!456716 () Bool)

(assert (=> b!692313 (=> (not res!456716) (not e!393869))))

(assert (=> b!692313 (= res!456716 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!692314 () Bool)

(declare-fun res!456720 () Bool)

(assert (=> b!692314 (=> (not res!456720) (not e!393869))))

(declare-fun noDuplicate!951 (List!13161) Bool)

(assert (=> b!692314 (= res!456720 (noDuplicate!951 acc!681))))

(declare-fun b!692315 () Bool)

(declare-fun res!456719 () Bool)

(assert (=> b!692315 (=> (not res!456719) (not e!393871))))

(assert (=> b!692315 (= res!456719 (noDuplicate!951 lt!316545))))

(declare-fun b!692316 () Bool)

(declare-fun e!393873 () Bool)

(assert (=> b!692316 (= e!393873 (contains!3704 lt!316545 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692317 () Bool)

(declare-fun res!456717 () Bool)

(assert (=> b!692317 (=> (not res!456717) (not e!393869))))

(declare-fun arrayNoDuplicates!0 (array!39808 (_ BitVec 32) List!13161) Bool)

(assert (=> b!692317 (= res!456717 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!692318 () Bool)

(declare-fun res!456713 () Bool)

(assert (=> b!692318 (=> (not res!456713) (not e!393869))))

(assert (=> b!692318 (= res!456713 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19450 a!3626))))))

(declare-fun b!692319 () Bool)

(declare-fun e!393872 () Bool)

(assert (=> b!692319 (= e!393877 e!393872)))

(declare-fun res!456712 () Bool)

(assert (=> b!692319 (=> (not res!456712) (not e!393872))))

(assert (=> b!692319 (= res!456712 (bvsle from!3004 i!1382))))

(declare-fun b!692320 () Bool)

(declare-fun res!456721 () Bool)

(assert (=> b!692320 (=> (not res!456721) (not e!393869))))

(assert (=> b!692320 (= res!456721 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19450 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!692321 () Bool)

(declare-fun res!456728 () Bool)

(assert (=> b!692321 (=> (not res!456728) (not e!393869))))

(assert (=> b!692321 (= res!456728 (not (contains!3704 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692322 () Bool)

(assert (=> b!692322 (= e!393871 e!393873)))

(declare-fun res!456724 () Bool)

(assert (=> b!692322 (=> res!456724 e!393873)))

(assert (=> b!692322 (= res!456724 (contains!3704 lt!316545 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692323 () Bool)

(declare-fun res!456727 () Bool)

(assert (=> b!692323 (=> (not res!456727) (not e!393869))))

(assert (=> b!692323 (= res!456727 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13158))))

(declare-fun b!692324 () Bool)

(assert (=> b!692324 (= e!393872 (not (contains!3704 acc!681 k!2843)))))

(assert (= (and start!61876 res!456715) b!692314))

(assert (= (and b!692314 res!456720) b!692321))

(assert (= (and b!692321 res!456728) b!692307))

(assert (= (and b!692307 res!456723) b!692304))

(assert (= (and b!692304 res!456710) b!692305))

(assert (= (and b!692304 (not res!456711)) b!692319))

(assert (= (and b!692319 res!456712) b!692324))

(assert (= (and b!692304 res!456726) b!692323))

(assert (= (and b!692323 res!456727) b!692317))

(assert (= (and b!692317 res!456717) b!692318))

(assert (= (and b!692318 res!456713) b!692311))

(assert (= (and b!692311 res!456714) b!692313))

(assert (= (and b!692313 res!456716) b!692320))

(assert (= (and b!692320 res!456721) b!692309))

(assert (= (and b!692309 res!456725) b!692310))

(assert (= (and b!692310 c!78164) b!692306))

(assert (= (and b!692310 (not c!78164)) b!692308))

(assert (= (and b!692310 res!456718) b!692312))

(assert (= (and b!692312 res!456722) b!692315))

(assert (= (and b!692315 res!456719) b!692322))

(assert (= (and b!692322 (not res!456724)) b!692316))

(declare-fun m!654929 () Bool)

(assert (=> b!692306 m!654929))

(declare-fun m!654931 () Bool)

(assert (=> b!692306 m!654931))

(declare-fun m!654933 () Bool)

(assert (=> b!692307 m!654933))

(declare-fun m!654935 () Bool)

(assert (=> b!692316 m!654935))

(declare-fun m!654937 () Bool)

(assert (=> b!692310 m!654937))

(assert (=> b!692309 m!654937))

(assert (=> b!692309 m!654937))

(declare-fun m!654939 () Bool)

(assert (=> b!692309 m!654939))

(declare-fun m!654941 () Bool)

(assert (=> b!692315 m!654941))

(declare-fun m!654943 () Bool)

(assert (=> b!692324 m!654943))

(assert (=> b!692305 m!654943))

(declare-fun m!654945 () Bool)

(assert (=> b!692317 m!654945))

(declare-fun m!654947 () Bool)

(assert (=> b!692323 m!654947))

(assert (=> b!692312 m!654937))

(assert (=> b!692312 m!654937))

(declare-fun m!654949 () Bool)

(assert (=> b!692312 m!654949))

(declare-fun m!654951 () Bool)

(assert (=> b!692311 m!654951))

(declare-fun m!654953 () Bool)

(assert (=> start!61876 m!654953))

(declare-fun m!654955 () Bool)

(assert (=> b!692314 m!654955))

(declare-fun m!654957 () Bool)

(assert (=> b!692322 m!654957))

(declare-fun m!654959 () Bool)

(assert (=> b!692321 m!654959))

(declare-fun m!654961 () Bool)

(assert (=> b!692313 m!654961))

(push 1)

(assert (not b!692323))

(assert (not b!692306))

(assert (not b!692316))

(assert (not b!692324))

(assert (not b!692309))

(assert (not b!692313))

(assert (not b!692315))

(assert (not start!61876))

(assert (not b!692314))

(assert (not b!692305))

(assert (not b!692321))

(assert (not b!692322))

(assert (not b!692317))

(assert (not b!692312))

(assert (not b!692311))

(assert (not b!692307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95497 () Bool)

(declare-fun res!456772 () Bool)

(declare-fun e!393924 () Bool)

(assert (=> d!95497 (=> res!456772 e!393924)))

(assert (=> d!95497 (= res!456772 (= (select (arr!19067 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95497 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!393924)))

(declare-fun b!692374 () Bool)

(declare-fun e!393925 () Bool)

(assert (=> b!692374 (= e!393924 e!393925)))

(declare-fun res!456773 () Bool)

(assert (=> b!692374 (=> (not res!456773) (not e!393925))))

(assert (=> b!692374 (= res!456773 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19450 a!3626)))))

(declare-fun b!692375 () Bool)

(assert (=> b!692375 (= e!393925 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95497 (not res!456772)) b!692374))

(assert (= (and b!692374 res!456773) b!692375))

(declare-fun m!655005 () Bool)

(assert (=> d!95497 m!655005))

(declare-fun m!655007 () Bool)

(assert (=> b!692375 m!655007))

(assert (=> b!692313 d!95497))

(declare-fun d!95517 () Bool)

(declare-fun lt!316562 () Bool)

(declare-fun content!314 (List!13161) (Set (_ BitVec 64)))

(assert (=> d!95517 (= lt!316562 (member k!2843 (content!314 acc!681)))))

(declare-fun e!393943 () Bool)

(assert (=> d!95517 (= lt!316562 e!393943)))

(declare-fun res!456791 () Bool)

(assert (=> d!95517 (=> (not res!456791) (not e!393943))))

(assert (=> d!95517 (= res!456791 (is-Cons!13157 acc!681))))

(assert (=> d!95517 (= (contains!3704 acc!681 k!2843) lt!316562)))

(declare-fun b!692392 () Bool)

(declare-fun e!393942 () Bool)

(assert (=> b!692392 (= e!393943 e!393942)))

(declare-fun res!456790 () Bool)

(assert (=> b!692392 (=> res!456790 e!393942)))

(assert (=> b!692392 (= res!456790 (= (h!14202 acc!681) k!2843))))

(declare-fun b!692393 () Bool)

(assert (=> b!692393 (= e!393942 (contains!3704 (t!19439 acc!681) k!2843))))

(assert (= (and d!95517 res!456791) b!692392))

(assert (= (and b!692392 (not res!456790)) b!692393))

(declare-fun m!655023 () Bool)

(assert (=> d!95517 m!655023))

(declare-fun m!655025 () Bool)

(assert (=> d!95517 m!655025))

(declare-fun m!655027 () Bool)

(assert (=> b!692393 m!655027))

(assert (=> b!692324 d!95517))

(declare-fun d!95527 () Bool)

(assert (=> d!95527 (= (array_inv!14841 a!3626) (bvsge (size!19450 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61876 d!95527))

(declare-fun d!95529 () Bool)

(declare-fun res!456809 () Bool)

(declare-fun e!393964 () Bool)

(assert (=> d!95529 (=> res!456809 e!393964)))

(assert (=> d!95529 (= res!456809 (is-Nil!13158 acc!681))))

(assert (=> d!95529 (= (noDuplicate!951 acc!681) e!393964)))

(declare-fun b!692417 () Bool)

(declare-fun e!393965 () Bool)

(assert (=> b!692417 (= e!393964 e!393965)))

(declare-fun res!456810 () Bool)

(assert (=> b!692417 (=> (not res!456810) (not e!393965))))

(assert (=> b!692417 (= res!456810 (not (contains!3704 (t!19439 acc!681) (h!14202 acc!681))))))

(declare-fun b!692418 () Bool)

(assert (=> b!692418 (= e!393965 (noDuplicate!951 (t!19439 acc!681)))))

(assert (= (and d!95529 (not res!456809)) b!692417))

(assert (= (and b!692417 res!456810) b!692418))

(declare-fun m!655043 () Bool)

(assert (=> b!692417 m!655043))

(declare-fun m!655045 () Bool)

(assert (=> b!692418 m!655045))

(assert (=> b!692314 d!95529))

(declare-fun d!95537 () Bool)

(declare-fun res!456811 () Bool)

(declare-fun e!393966 () Bool)

(assert (=> d!95537 (=> res!456811 e!393966)))

(assert (=> d!95537 (= res!456811 (is-Nil!13158 lt!316545))))

(assert (=> d!95537 (= (noDuplicate!951 lt!316545) e!393966)))

(declare-fun b!692419 () Bool)

(declare-fun e!393967 () Bool)

(assert (=> b!692419 (= e!393966 e!393967)))

(declare-fun res!456812 () Bool)

(assert (=> b!692419 (=> (not res!456812) (not e!393967))))

(assert (=> b!692419 (= res!456812 (not (contains!3704 (t!19439 lt!316545) (h!14202 lt!316545))))))

(declare-fun b!692420 () Bool)

(assert (=> b!692420 (= e!393967 (noDuplicate!951 (t!19439 lt!316545)))))

(assert (= (and d!95537 (not res!456811)) b!692419))

(assert (= (and b!692419 res!456812) b!692420))

(declare-fun m!655047 () Bool)

(assert (=> b!692419 m!655047))

(declare-fun m!655049 () Bool)

(assert (=> b!692420 m!655049))

(assert (=> b!692315 d!95537))

(assert (=> b!692305 d!95517))

(declare-fun d!95539 () Bool)

(declare-fun lt!316563 () Bool)

(assert (=> d!95539 (= lt!316563 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!314 lt!316545)))))

(declare-fun e!393969 () Bool)

(assert (=> d!95539 (= lt!316563 e!393969)))

(declare-fun res!456814 () Bool)

(assert (=> d!95539 (=> (not res!456814) (not e!393969))))

(assert (=> d!95539 (= res!456814 (is-Cons!13157 lt!316545))))

(assert (=> d!95539 (= (contains!3704 lt!316545 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316563)))

(declare-fun b!692421 () Bool)

(declare-fun e!393968 () Bool)

(assert (=> b!692421 (= e!393969 e!393968)))

(declare-fun res!456813 () Bool)

(assert (=> b!692421 (=> res!456813 e!393968)))

(assert (=> b!692421 (= res!456813 (= (h!14202 lt!316545) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692422 () Bool)

(assert (=> b!692422 (= e!393968 (contains!3704 (t!19439 lt!316545) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95539 res!456814) b!692421))

(assert (= (and b!692421 (not res!456813)) b!692422))

(declare-fun m!655051 () Bool)

(assert (=> d!95539 m!655051))

(declare-fun m!655053 () Bool)

(assert (=> d!95539 m!655053))

(declare-fun m!655055 () Bool)

(assert (=> b!692422 m!655055))

(assert (=> b!692316 d!95539))

(declare-fun b!692446 () Bool)

(declare-fun e!393990 () Bool)

(declare-fun e!393992 () Bool)

(assert (=> b!692446 (= e!393990 e!393992)))

(declare-fun c!78174 () Bool)

(assert (=> b!692446 (= c!78174 (validKeyInArray!0 (select (arr!19067 a!3626) from!3004)))))

(declare-fun call!34245 () Bool)

(declare-fun bm!34242 () Bool)

(assert (=> bm!34242 (= call!34245 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78174 (Cons!13157 (select (arr!19067 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!692447 () Bool)

(assert (=> b!692447 (= e!393992 call!34245)))

(declare-fun b!692448 () Bool)

(assert (=> b!692448 (= e!393992 call!34245)))

(declare-fun d!95541 () Bool)

(declare-fun res!456834 () Bool)

(declare-fun e!393991 () Bool)

(assert (=> d!95541 (=> res!456834 e!393991)))

(assert (=> d!95541 (= res!456834 (bvsge from!3004 (size!19450 a!3626)))))

(assert (=> d!95541 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!393991)))

(declare-fun b!692449 () Bool)

(assert (=> b!692449 (= e!393991 e!393990)))

(declare-fun res!456833 () Bool)

(assert (=> b!692449 (=> (not res!456833) (not e!393990))))

(declare-fun e!393993 () Bool)

(assert (=> b!692449 (= res!456833 (not e!393993))))

(declare-fun res!456832 () Bool)

(assert (=> b!692449 (=> (not res!456832) (not e!393993))))

(assert (=> b!692449 (= res!456832 (validKeyInArray!0 (select (arr!19067 a!3626) from!3004)))))

(declare-fun b!692450 () Bool)

(assert (=> b!692450 (= e!393993 (contains!3704 acc!681 (select (arr!19067 a!3626) from!3004)))))

(assert (= (and d!95541 (not res!456834)) b!692449))

(assert (= (and b!692449 res!456832) b!692450))

(assert (= (and b!692449 res!456833) b!692446))

(assert (= (and b!692446 c!78174) b!692448))

(assert (= (and b!692446 (not c!78174)) b!692447))

(assert (= (or b!692448 b!692447) bm!34242))

(assert (=> b!692446 m!654937))

(assert (=> b!692446 m!654937))

(assert (=> b!692446 m!654939))

(assert (=> bm!34242 m!654937))

(declare-fun m!655071 () Bool)

(assert (=> bm!34242 m!655071))

(assert (=> b!692449 m!654937))

(assert (=> b!692449 m!654937))

(assert (=> b!692449 m!654939))

(assert (=> b!692450 m!654937))

(assert (=> b!692450 m!654937))

(declare-fun m!655077 () Bool)

(assert (=> b!692450 m!655077))

(assert (=> b!692317 d!95541))

(declare-fun d!95553 () Bool)

(declare-fun res!456839 () Bool)

(declare-fun e!393998 () Bool)

(assert (=> d!95553 (=> res!456839 e!393998)))

(assert (=> d!95553 (= res!456839 (= (select (arr!19067 a!3626) from!3004) k!2843))))

(assert (=> d!95553 (= (arrayContainsKey!0 a!3626 k!2843 from!3004) e!393998)))

(declare-fun b!692455 () Bool)

(declare-fun e!393999 () Bool)

(assert (=> b!692455 (= e!393998 e!393999)))

(declare-fun res!456840 () Bool)

(assert (=> b!692455 (=> (not res!456840) (not e!393999))))

(assert (=> b!692455 (= res!456840 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19450 a!3626)))))

(declare-fun b!692456 () Bool)

(assert (=> b!692456 (= e!393999 (arrayContainsKey!0 a!3626 k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95553 (not res!456839)) b!692455))

(assert (= (and b!692455 res!456840) b!692456))

(assert (=> d!95553 m!654937))

(declare-fun m!655083 () Bool)

(assert (=> b!692456 m!655083))

(assert (=> b!692306 d!95553))

(declare-fun d!95557 () Bool)

(assert (=> d!95557 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316569 () Unit!24438)

(declare-fun choose!13 (array!39808 (_ BitVec 64) (_ BitVec 32)) Unit!24438)

(assert (=> d!95557 (= lt!316569 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!95557 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95557 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!316569)))

(declare-fun bs!20265 () Bool)

(assert (= bs!20265 d!95557))

(assert (=> bs!20265 m!654961))

(declare-fun m!655091 () Bool)

(assert (=> bs!20265 m!655091))

(assert (=> b!692306 d!95557))

(declare-fun d!95567 () Bool)

(declare-fun lt!316570 () Bool)

(assert (=> d!95567 (= lt!316570 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!314 acc!681)))))

(declare-fun e!394007 () Bool)

(assert (=> d!95567 (= lt!316570 e!394007)))

(declare-fun res!456847 () Bool)

(assert (=> d!95567 (=> (not res!456847) (not e!394007))))

(assert (=> d!95567 (= res!456847 (is-Cons!13157 acc!681))))

(assert (=> d!95567 (= (contains!3704 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316570)))

(declare-fun b!692464 () Bool)

(declare-fun e!394006 () Bool)

(assert (=> b!692464 (= e!394007 e!394006)))

(declare-fun res!456846 () Bool)

(assert (=> b!692464 (=> res!456846 e!394006)))

(assert (=> b!692464 (= res!456846 (= (h!14202 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692465 () Bool)

(assert (=> b!692465 (= e!394006 (contains!3704 (t!19439 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95567 res!456847) b!692464))

(assert (= (and b!692464 (not res!456846)) b!692465))

(assert (=> d!95567 m!655023))

(declare-fun m!655093 () Bool)

(assert (=> d!95567 m!655093))

(declare-fun m!655095 () Bool)

(assert (=> b!692465 m!655095))

(assert (=> b!692307 d!95567))

(declare-fun d!95569 () Bool)

(assert (=> d!95569 (= (validKeyInArray!0 (select (arr!19067 a!3626) from!3004)) (and (not (= (select (arr!19067 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19067 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692309 d!95569))

