; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62924 () Bool)

(assert start!62924)

(declare-fun b!709145 () Bool)

(declare-fun res!472866 () Bool)

(declare-fun e!399072 () Bool)

(assert (=> b!709145 (=> (not res!472866) (not e!399072))))

(declare-datatypes ((List!13413 0))(
  ( (Nil!13410) (Cons!13409 (h!14454 (_ BitVec 64)) (t!19715 List!13413)) )
))
(declare-fun newAcc!49 () List!13413)

(declare-datatypes ((array!40345 0))(
  ( (array!40346 (arr!19319 (Array (_ BitVec 32) (_ BitVec 64))) (size!19712 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40345)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun noDuplicate!1203 (List!13413) Bool)

(declare-fun $colon$colon!510 (List!13413 (_ BitVec 64)) List!13413)

(assert (=> b!709145 (= res!472866 (noDuplicate!1203 ($colon$colon!510 newAcc!49 (select (arr!19319 a!3591) from!2969))))))

(declare-fun b!709146 () Bool)

(declare-fun res!472857 () Bool)

(declare-fun e!399070 () Bool)

(assert (=> b!709146 (=> (not res!472857) (not e!399070))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13413)

(declare-fun -!365 (List!13413 (_ BitVec 64)) List!13413)

(assert (=> b!709146 (= res!472857 (= (-!365 newAcc!49 k!2824) acc!652))))

(declare-fun b!709147 () Bool)

(declare-fun lt!318152 () List!13413)

(declare-fun contains!3956 (List!13413 (_ BitVec 64)) Bool)

(assert (=> b!709147 (= e!399072 (contains!3956 lt!318152 k!2824))))

(declare-fun b!709148 () Bool)

(declare-fun res!472863 () Bool)

(assert (=> b!709148 (=> (not res!472863) (not e!399070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709148 (= res!472863 (validKeyInArray!0 (select (arr!19319 a!3591) from!2969)))))

(declare-fun b!709149 () Bool)

(declare-fun res!472878 () Bool)

(assert (=> b!709149 (=> (not res!472878) (not e!399070))))

(assert (=> b!709149 (= res!472878 (validKeyInArray!0 k!2824))))

(declare-fun res!472865 () Bool)

(assert (=> start!62924 (=> (not res!472865) (not e!399070))))

(assert (=> start!62924 (= res!472865 (and (bvslt (size!19712 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19712 a!3591))))))

(assert (=> start!62924 e!399070))

(assert (=> start!62924 true))

(declare-fun array_inv!15093 (array!40345) Bool)

(assert (=> start!62924 (array_inv!15093 a!3591)))

(declare-fun b!709150 () Bool)

(declare-fun res!472868 () Bool)

(assert (=> b!709150 (=> (not res!472868) (not e!399070))))

(assert (=> b!709150 (= res!472868 (noDuplicate!1203 acc!652))))

(declare-fun b!709151 () Bool)

(declare-fun res!472862 () Bool)

(assert (=> b!709151 (=> (not res!472862) (not e!399070))))

(assert (=> b!709151 (= res!472862 (not (contains!3956 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709152 () Bool)

(declare-fun res!472860 () Bool)

(assert (=> b!709152 (=> (not res!472860) (not e!399070))))

(declare-fun arrayNoDuplicates!0 (array!40345 (_ BitVec 32) List!13413) Bool)

(assert (=> b!709152 (= res!472860 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!709153 () Bool)

(declare-fun res!472867 () Bool)

(assert (=> b!709153 (=> (not res!472867) (not e!399072))))

(assert (=> b!709153 (= res!472867 (not (contains!3956 lt!318152 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709154 () Bool)

(assert (=> b!709154 (= e!399070 e!399072)))

(declare-fun res!472858 () Bool)

(assert (=> b!709154 (=> (not res!472858) (not e!399072))))

(assert (=> b!709154 (= res!472858 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (=> b!709154 (= lt!318152 ($colon$colon!510 acc!652 (select (arr!19319 a!3591) from!2969)))))

(declare-fun b!709155 () Bool)

(declare-fun res!472876 () Bool)

(assert (=> b!709155 (=> (not res!472876) (not e!399070))))

(assert (=> b!709155 (= res!472876 (not (contains!3956 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709156 () Bool)

(declare-fun res!472877 () Bool)

(assert (=> b!709156 (=> (not res!472877) (not e!399070))))

(assert (=> b!709156 (= res!472877 (noDuplicate!1203 newAcc!49))))

(declare-fun b!709157 () Bool)

(declare-fun res!472864 () Bool)

(assert (=> b!709157 (=> (not res!472864) (not e!399070))))

(assert (=> b!709157 (= res!472864 (not (contains!3956 acc!652 k!2824)))))

(declare-fun b!709158 () Bool)

(declare-fun res!472874 () Bool)

(assert (=> b!709158 (=> (not res!472874) (not e!399070))))

(declare-fun arrayContainsKey!0 (array!40345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709158 (= res!472874 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!709159 () Bool)

(declare-fun res!472875 () Bool)

(assert (=> b!709159 (=> (not res!472875) (not e!399070))))

(assert (=> b!709159 (= res!472875 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19712 a!3591)))))

(declare-fun b!709160 () Bool)

(declare-fun res!472870 () Bool)

(assert (=> b!709160 (=> (not res!472870) (not e!399072))))

(assert (=> b!709160 (= res!472870 (not (contains!3956 lt!318152 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709161 () Bool)

(declare-fun res!472861 () Bool)

(assert (=> b!709161 (=> (not res!472861) (not e!399072))))

(assert (=> b!709161 (= res!472861 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709162 () Bool)

(declare-fun res!472869 () Bool)

(assert (=> b!709162 (=> (not res!472869) (not e!399070))))

(assert (=> b!709162 (= res!472869 (not (contains!3956 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709163 () Bool)

(declare-fun res!472873 () Bool)

(assert (=> b!709163 (=> (not res!472873) (not e!399070))))

(assert (=> b!709163 (= res!472873 (not (contains!3956 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709164 () Bool)

(declare-fun res!472872 () Bool)

(assert (=> b!709164 (=> (not res!472872) (not e!399070))))

(assert (=> b!709164 (= res!472872 (contains!3956 newAcc!49 k!2824))))

(declare-fun b!709165 () Bool)

(declare-fun res!472871 () Bool)

(assert (=> b!709165 (=> (not res!472871) (not e!399072))))

(assert (=> b!709165 (= res!472871 (noDuplicate!1203 lt!318152))))

(declare-fun b!709166 () Bool)

(declare-fun res!472859 () Bool)

(assert (=> b!709166 (=> (not res!472859) (not e!399070))))

(declare-fun subseq!400 (List!13413 List!13413) Bool)

(assert (=> b!709166 (= res!472859 (subseq!400 acc!652 newAcc!49))))

(assert (= (and start!62924 res!472865) b!709150))

(assert (= (and b!709150 res!472868) b!709156))

(assert (= (and b!709156 res!472877) b!709151))

(assert (= (and b!709151 res!472862) b!709155))

(assert (= (and b!709155 res!472876) b!709158))

(assert (= (and b!709158 res!472874) b!709157))

(assert (= (and b!709157 res!472864) b!709149))

(assert (= (and b!709149 res!472878) b!709152))

(assert (= (and b!709152 res!472860) b!709166))

(assert (= (and b!709166 res!472859) b!709164))

(assert (= (and b!709164 res!472872) b!709146))

(assert (= (and b!709146 res!472857) b!709163))

(assert (= (and b!709163 res!472873) b!709162))

(assert (= (and b!709162 res!472869) b!709159))

(assert (= (and b!709159 res!472875) b!709148))

(assert (= (and b!709148 res!472863) b!709154))

(assert (= (and b!709154 res!472858) b!709165))

(assert (= (and b!709165 res!472871) b!709145))

(assert (= (and b!709145 res!472866) b!709160))

(assert (= (and b!709160 res!472870) b!709153))

(assert (= (and b!709153 res!472867) b!709161))

(assert (= (and b!709161 res!472861) b!709147))

(declare-fun m!666531 () Bool)

(assert (=> b!709163 m!666531))

(declare-fun m!666533 () Bool)

(assert (=> b!709154 m!666533))

(assert (=> b!709154 m!666533))

(declare-fun m!666535 () Bool)

(assert (=> b!709154 m!666535))

(declare-fun m!666537 () Bool)

(assert (=> b!709166 m!666537))

(declare-fun m!666539 () Bool)

(assert (=> b!709147 m!666539))

(assert (=> b!709148 m!666533))

(assert (=> b!709148 m!666533))

(declare-fun m!666541 () Bool)

(assert (=> b!709148 m!666541))

(declare-fun m!666543 () Bool)

(assert (=> b!709165 m!666543))

(declare-fun m!666545 () Bool)

(assert (=> b!709153 m!666545))

(declare-fun m!666547 () Bool)

(assert (=> b!709164 m!666547))

(declare-fun m!666549 () Bool)

(assert (=> b!709162 m!666549))

(declare-fun m!666551 () Bool)

(assert (=> b!709152 m!666551))

(declare-fun m!666553 () Bool)

(assert (=> start!62924 m!666553))

(declare-fun m!666555 () Bool)

(assert (=> b!709160 m!666555))

(assert (=> b!709145 m!666533))

(assert (=> b!709145 m!666533))

(declare-fun m!666557 () Bool)

(assert (=> b!709145 m!666557))

(assert (=> b!709145 m!666557))

(declare-fun m!666559 () Bool)

(assert (=> b!709145 m!666559))

(declare-fun m!666561 () Bool)

(assert (=> b!709151 m!666561))

(declare-fun m!666563 () Bool)

(assert (=> b!709150 m!666563))

(declare-fun m!666565 () Bool)

(assert (=> b!709149 m!666565))

(declare-fun m!666567 () Bool)

(assert (=> b!709156 m!666567))

(declare-fun m!666569 () Bool)

(assert (=> b!709161 m!666569))

(declare-fun m!666571 () Bool)

(assert (=> b!709146 m!666571))

(declare-fun m!666573 () Bool)

(assert (=> b!709157 m!666573))

(declare-fun m!666575 () Bool)

(assert (=> b!709158 m!666575))

(declare-fun m!666577 () Bool)

(assert (=> b!709155 m!666577))

(push 1)

(assert (not b!709154))

(assert (not b!709166))

(assert (not b!709153))

(assert (not b!709152))

(assert (not b!709165))

(assert (not b!709156))

(assert (not b!709158))

(assert (not b!709164))

(assert (not b!709151))

(assert (not b!709145))

(assert (not b!709162))

(assert (not b!709163))

(assert (not b!709147))

(assert (not b!709150))

(assert (not b!709157))

(assert (not b!709160))

(assert (not b!709155))

(assert (not b!709161))

(assert (not b!709146))

(assert (not start!62924))

(assert (not b!709149))

(assert (not b!709148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!709233 () Bool)

(declare-fun e!399137 () List!13413)

(assert (=> b!709233 (= e!399137 Nil!13410)))

(declare-fun b!709234 () Bool)

(declare-fun e!399136 () List!13413)

(declare-fun call!34434 () List!13413)

(assert (=> b!709234 (= e!399136 (Cons!13409 (h!14454 newAcc!49) call!34434))))

(declare-fun b!709235 () Bool)

(assert (=> b!709235 (= e!399137 e!399136)))

(declare-fun c!78516 () Bool)

(assert (=> b!709235 (= c!78516 (= k!2824 (h!14454 newAcc!49)))))

(declare-fun b!709236 () Bool)

(assert (=> b!709236 (= e!399136 call!34434)))

(declare-fun d!96993 () Bool)

(declare-fun e!399138 () Bool)

(assert (=> d!96993 e!399138))

(declare-fun res!472937 () Bool)

(assert (=> d!96993 (=> (not res!472937) (not e!399138))))

(declare-fun lt!318164 () List!13413)

(declare-fun size!19713 (List!13413) Int)

(assert (=> d!96993 (= res!472937 (<= (size!19713 lt!318164) (size!19713 newAcc!49)))))

(assert (=> d!96993 (= lt!318164 e!399137)))

(declare-fun c!78515 () Bool)

(assert (=> d!96993 (= c!78515 (is-Cons!13409 newAcc!49))))

(assert (=> d!96993 (= (-!365 newAcc!49 k!2824) lt!318164)))

(declare-fun b!709237 () Bool)

(declare-fun content!347 (List!13413) (Set (_ BitVec 64)))

(assert (=> b!709237 (= e!399138 (= (content!347 lt!318164) (setminus (content!347 newAcc!49) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun bm!34431 () Bool)

(assert (=> bm!34431 (= call!34434 (-!365 (t!19715 newAcc!49) k!2824))))

(assert (= (and d!96993 c!78515) b!709235))

(assert (= (and d!96993 (not c!78515)) b!709233))

(assert (= (and b!709235 c!78516) b!709236))

(assert (= (and b!709235 (not c!78516)) b!709234))

(assert (= (or b!709236 b!709234) bm!34431))

(assert (= (and d!96993 res!472937) b!709237))

(declare-fun m!666631 () Bool)

(assert (=> d!96993 m!666631))

(declare-fun m!666633 () Bool)

(assert (=> d!96993 m!666633))

(declare-fun m!666635 () Bool)

(assert (=> b!709237 m!666635))

(declare-fun m!666637 () Bool)

(assert (=> b!709237 m!666637))

(declare-fun m!666639 () Bool)

(assert (=> b!709237 m!666639))

(declare-fun m!666641 () Bool)

(assert (=> bm!34431 m!666641))

(assert (=> b!709146 d!96993))

(declare-fun d!97011 () Bool)

(declare-fun lt!318169 () Bool)

(assert (=> d!97011 (= lt!318169 (member k!2824 (content!347 acc!652)))))

(declare-fun e!399157 () Bool)

(assert (=> d!97011 (= lt!318169 e!399157)))

(declare-fun res!472950 () Bool)

(assert (=> d!97011 (=> (not res!472950) (not e!399157))))

(assert (=> d!97011 (= res!472950 (is-Cons!13409 acc!652))))

(assert (=> d!97011 (= (contains!3956 acc!652 k!2824) lt!318169)))

(declare-fun b!709258 () Bool)

(declare-fun e!399156 () Bool)

(assert (=> b!709258 (= e!399157 e!399156)))

(declare-fun res!472951 () Bool)

(assert (=> b!709258 (=> res!472951 e!399156)))

(assert (=> b!709258 (= res!472951 (= (h!14454 acc!652) k!2824))))

(declare-fun b!709259 () Bool)

(assert (=> b!709259 (= e!399156 (contains!3956 (t!19715 acc!652) k!2824))))

(assert (= (and d!97011 res!472950) b!709258))

(assert (= (and b!709258 (not res!472951)) b!709259))

(declare-fun m!666647 () Bool)

(assert (=> d!97011 m!666647))

(declare-fun m!666649 () Bool)

(assert (=> d!97011 m!666649))

(declare-fun m!666651 () Bool)

(assert (=> b!709259 m!666651))

(assert (=> b!709157 d!97011))

(declare-fun d!97015 () Bool)

(declare-fun lt!318170 () Bool)

(assert (=> d!97015 (= lt!318170 (member k!2824 (content!347 lt!318152)))))

(declare-fun e!399159 () Bool)

(assert (=> d!97015 (= lt!318170 e!399159)))

(declare-fun res!472952 () Bool)

(assert (=> d!97015 (=> (not res!472952) (not e!399159))))

(assert (=> d!97015 (= res!472952 (is-Cons!13409 lt!318152))))

(assert (=> d!97015 (= (contains!3956 lt!318152 k!2824) lt!318170)))

(declare-fun b!709260 () Bool)

(declare-fun e!399158 () Bool)

(assert (=> b!709260 (= e!399159 e!399158)))

(declare-fun res!472953 () Bool)

(assert (=> b!709260 (=> res!472953 e!399158)))

(assert (=> b!709260 (= res!472953 (= (h!14454 lt!318152) k!2824))))

(declare-fun b!709261 () Bool)

(assert (=> b!709261 (= e!399158 (contains!3956 (t!19715 lt!318152) k!2824))))

(assert (= (and d!97015 res!472952) b!709260))

(assert (= (and b!709260 (not res!472953)) b!709261))

(declare-fun m!666653 () Bool)

(assert (=> d!97015 m!666653))

(declare-fun m!666655 () Bool)

(assert (=> d!97015 m!666655))

(declare-fun m!666657 () Bool)

(assert (=> b!709261 m!666657))

(assert (=> b!709147 d!97015))

(declare-fun d!97017 () Bool)

(declare-fun res!472969 () Bool)

(declare-fun e!399177 () Bool)

(assert (=> d!97017 (=> res!472969 e!399177)))

(assert (=> d!97017 (= res!472969 (= (select (arr!19319 a!3591) from!2969) k!2824))))

(assert (=> d!97017 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!399177)))

(declare-fun b!709281 () Bool)

(declare-fun e!399178 () Bool)

(assert (=> b!709281 (= e!399177 e!399178)))

(declare-fun res!472970 () Bool)

(assert (=> b!709281 (=> (not res!472970) (not e!399178))))

(assert (=> b!709281 (= res!472970 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19712 a!3591)))))

(declare-fun b!709282 () Bool)

(assert (=> b!709282 (= e!399178 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97017 (not res!472969)) b!709281))

(assert (= (and b!709281 res!472970) b!709282))

(assert (=> d!97017 m!666533))

(declare-fun m!666683 () Bool)

(assert (=> b!709282 m!666683))

(assert (=> b!709158 d!97017))

(declare-fun d!97027 () Bool)

(assert (=> d!97027 (= (validKeyInArray!0 (select (arr!19319 a!3591) from!2969)) (and (not (= (select (arr!19319 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19319 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709148 d!97027))

(declare-fun d!97033 () Bool)

(assert (=> d!97033 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709149 d!97033))

(declare-fun d!97035 () Bool)

(declare-fun lt!318176 () Bool)

(assert (=> d!97035 (= lt!318176 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!347 lt!318152)))))

(declare-fun e!399182 () Bool)

(assert (=> d!97035 (= lt!318176 e!399182)))

(declare-fun res!472973 () Bool)

(assert (=> d!97035 (=> (not res!472973) (not e!399182))))

(assert (=> d!97035 (= res!472973 (is-Cons!13409 lt!318152))))

(assert (=> d!97035 (= (contains!3956 lt!318152 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318176)))

(declare-fun b!709285 () Bool)

(declare-fun e!399181 () Bool)

(assert (=> b!709285 (= e!399182 e!399181)))

(declare-fun res!472974 () Bool)

(assert (=> b!709285 (=> res!472974 e!399181)))

(assert (=> b!709285 (= res!472974 (= (h!14454 lt!318152) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709286 () Bool)

(assert (=> b!709286 (= e!399181 (contains!3956 (t!19715 lt!318152) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97035 res!472973) b!709285))

(assert (= (and b!709285 (not res!472974)) b!709286))

(assert (=> d!97035 m!666653))

(declare-fun m!666689 () Bool)

(assert (=> d!97035 m!666689))

(declare-fun m!666691 () Bool)

(assert (=> b!709286 m!666691))

(assert (=> b!709160 d!97035))

(declare-fun d!97037 () Bool)

(declare-fun res!472983 () Bool)

(declare-fun e!399196 () Bool)

(assert (=> d!97037 (=> res!472983 e!399196)))

(assert (=> d!97037 (= res!472983 (is-Nil!13410 acc!652))))

(assert (=> d!97037 (= (noDuplicate!1203 acc!652) e!399196)))

(declare-fun b!709303 () Bool)

(declare-fun e!399197 () Bool)

(assert (=> b!709303 (= e!399196 e!399197)))

(declare-fun res!472984 () Bool)

(assert (=> b!709303 (=> (not res!472984) (not e!399197))))

(assert (=> b!709303 (= res!472984 (not (contains!3956 (t!19715 acc!652) (h!14454 acc!652))))))

(declare-fun b!709304 () Bool)

(assert (=> b!709304 (= e!399197 (noDuplicate!1203 (t!19715 acc!652)))))

(assert (= (and d!97037 (not res!472983)) b!709303))

(assert (= (and b!709303 res!472984) b!709304))

(declare-fun m!666693 () Bool)

(assert (=> b!709303 m!666693))

(declare-fun m!666695 () Bool)

(assert (=> b!709304 m!666695))

(assert (=> b!709150 d!97037))

(declare-fun d!97039 () Bool)

(assert (=> d!97039 (= (array_inv!15093 a!3591) (bvsge (size!19712 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62924 d!97039))

(declare-fun d!97041 () Bool)

(declare-fun res!472989 () Bool)

(declare-fun e!399204 () Bool)

(assert (=> d!97041 (=> res!472989 e!399204)))

(assert (=> d!97041 (= res!472989 (= (select (arr!19319 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!97041 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!399204)))

(declare-fun b!709313 () Bool)

(declare-fun e!399205 () Bool)

(assert (=> b!709313 (= e!399204 e!399205)))

(declare-fun res!472990 () Bool)

(assert (=> b!709313 (=> (not res!472990) (not e!399205))))

(assert (=> b!709313 (= res!472990 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19712 a!3591)))))

(declare-fun b!709314 () Bool)

(assert (=> b!709314 (= e!399205 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97041 (not res!472989)) b!709313))

(assert (= (and b!709313 res!472990) b!709314))

(declare-fun m!666697 () Bool)

(assert (=> d!97041 m!666697))

(declare-fun m!666699 () Bool)

(assert (=> b!709314 m!666699))

(assert (=> b!709161 d!97041))

(declare-fun d!97043 () Bool)

(declare-fun lt!318179 () Bool)

(assert (=> d!97043 (= lt!318179 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!347 acc!652)))))

(declare-fun e!399207 () Bool)

(assert (=> d!97043 (= lt!318179 e!399207)))

(declare-fun res!472991 () Bool)

(assert (=> d!97043 (=> (not res!472991) (not e!399207))))

(assert (=> d!97043 (= res!472991 (is-Cons!13409 acc!652))))

(assert (=> d!97043 (= (contains!3956 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318179)))

(declare-fun b!709315 () Bool)

(declare-fun e!399206 () Bool)

(assert (=> b!709315 (= e!399207 e!399206)))

(declare-fun res!472992 () Bool)

(assert (=> b!709315 (=> res!472992 e!399206)))

(assert (=> b!709315 (= res!472992 (= (h!14454 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709316 () Bool)

(assert (=> b!709316 (= e!399206 (contains!3956 (t!19715 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97043 res!472991) b!709315))

(assert (= (and b!709315 (not res!472992)) b!709316))

(assert (=> d!97043 m!666647))

(declare-fun m!666701 () Bool)

(assert (=> d!97043 m!666701))

(declare-fun m!666703 () Bool)

(assert (=> b!709316 m!666703))

(assert (=> b!709151 d!97043))

(declare-fun d!97045 () Bool)

(declare-fun lt!318181 () Bool)

(assert (=> d!97045 (= lt!318181 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!347 newAcc!49)))))

(declare-fun e!399212 () Bool)

(assert (=> d!97045 (= lt!318181 e!399212)))

(declare-fun res!472994 () Bool)

(assert (=> d!97045 (=> (not res!472994) (not e!399212))))

(assert (=> d!97045 (= res!472994 (is-Cons!13409 newAcc!49))))

(assert (=> d!97045 (= (contains!3956 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318181)))

(declare-fun b!709322 () Bool)

(declare-fun e!399211 () Bool)

(assert (=> b!709322 (= e!399212 e!399211)))

(declare-fun res!472995 () Bool)

(assert (=> b!709322 (=> res!472995 e!399211)))

(assert (=> b!709322 (= res!472995 (= (h!14454 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709323 () Bool)

(assert (=> b!709323 (= e!399211 (contains!3956 (t!19715 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97045 res!472994) b!709322))

(assert (= (and b!709322 (not res!472995)) b!709323))

(assert (=> d!97045 m!666637))

(declare-fun m!666709 () Bool)

(assert (=> d!97045 m!666709))

(declare-fun m!666713 () Bool)

(assert (=> b!709323 m!666713))

(assert (=> b!709162 d!97045))

(declare-fun b!709357 () Bool)

(declare-fun e!399245 () Bool)

(declare-fun call!34446 () Bool)

(assert (=> b!709357 (= e!399245 call!34446)))

(declare-fun c!78534 () Bool)

(declare-fun bm!34443 () Bool)

(assert (=> bm!34443 (= call!34446 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78534 (Cons!13409 (select (arr!19319 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun d!97047 () Bool)

(declare-fun res!473023 () Bool)

(declare-fun e!399244 () Bool)

(assert (=> d!97047 (=> res!473023 e!399244)))

(assert (=> d!97047 (= res!473023 (bvsge from!2969 (size!19712 a!3591)))))

(assert (=> d!97047 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399244)))

(declare-fun b!709358 () Bool)

(assert (=> b!709358 (= e!399245 call!34446)))

(declare-fun b!709359 () Bool)

(declare-fun e!399246 () Bool)

(assert (=> b!709359 (= e!399244 e!399246)))

(declare-fun res!473024 () Bool)

(assert (=> b!709359 (=> (not res!473024) (not e!399246))))

(declare-fun e!399243 () Bool)

(assert (=> b!709359 (= res!473024 (not e!399243))))

(declare-fun res!473025 () Bool)

(assert (=> b!709359 (=> (not res!473025) (not e!399243))))

(assert (=> b!709359 (= res!473025 (validKeyInArray!0 (select (arr!19319 a!3591) from!2969)))))

(declare-fun b!709360 () Bool)

(assert (=> b!709360 (= e!399246 e!399245)))

(assert (=> b!709360 (= c!78534 (validKeyInArray!0 (select (arr!19319 a!3591) from!2969)))))

(declare-fun b!709361 () Bool)

(assert (=> b!709361 (= e!399243 (contains!3956 acc!652 (select (arr!19319 a!3591) from!2969)))))

(assert (= (and d!97047 (not res!473023)) b!709359))

(assert (= (and b!709359 res!473025) b!709361))

(assert (= (and b!709359 res!473024) b!709360))

(assert (= (and b!709360 c!78534) b!709357))

(assert (= (and b!709360 (not c!78534)) b!709358))

(assert (= (or b!709357 b!709358) bm!34443))

(assert (=> bm!34443 m!666533))

(declare-fun m!666759 () Bool)

(assert (=> bm!34443 m!666759))

(assert (=> b!709359 m!666533))

(assert (=> b!709359 m!666533))

(assert (=> b!709359 m!666541))

(assert (=> b!709360 m!666533))

(assert (=> b!709360 m!666533))

(assert (=> b!709360 m!666541))

(assert (=> b!709361 m!666533))

(assert (=> b!709361 m!666533))

(declare-fun m!666761 () Bool)

(assert (=> b!709361 m!666761))

(assert (=> b!709152 d!97047))

(declare-fun d!97075 () Bool)

(declare-fun lt!318187 () Bool)

(assert (=> d!97075 (= lt!318187 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!347 newAcc!49)))))

(declare-fun e!399250 () Bool)

(assert (=> d!97075 (= lt!318187 e!399250)))

(declare-fun res!473028 () Bool)

(assert (=> d!97075 (=> (not res!473028) (not e!399250))))

(assert (=> d!97075 (= res!473028 (is-Cons!13409 newAcc!49))))

(assert (=> d!97075 (= (contains!3956 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318187)))

(declare-fun b!709364 () Bool)

(declare-fun e!399249 () Bool)

(assert (=> b!709364 (= e!399250 e!399249)))

(declare-fun res!473029 () Bool)

(assert (=> b!709364 (=> res!473029 e!399249)))

(assert (=> b!709364 (= res!473029 (= (h!14454 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709365 () Bool)

(assert (=> b!709365 (= e!399249 (contains!3956 (t!19715 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97075 res!473028) b!709364))

(assert (= (and b!709364 (not res!473029)) b!709365))

(assert (=> d!97075 m!666637))

(declare-fun m!666763 () Bool)

(assert (=> d!97075 m!666763))

(declare-fun m!666765 () Bool)

(assert (=> b!709365 m!666765))

(assert (=> b!709163 d!97075))

(declare-fun d!97077 () Bool)

(declare-fun lt!318188 () Bool)

(assert (=> d!97077 (= lt!318188 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!347 lt!318152)))))

(declare-fun e!399252 () Bool)

(assert (=> d!97077 (= lt!318188 e!399252)))

(declare-fun res!473030 () Bool)

(assert (=> d!97077 (=> (not res!473030) (not e!399252))))

(assert (=> d!97077 (= res!473030 (is-Cons!13409 lt!318152))))

(assert (=> d!97077 (= (contains!3956 lt!318152 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318188)))

(declare-fun b!709366 () Bool)

(declare-fun e!399251 () Bool)

(assert (=> b!709366 (= e!399252 e!399251)))

(declare-fun res!473031 () Bool)

(assert (=> b!709366 (=> res!473031 e!399251)))

(assert (=> b!709366 (= res!473031 (= (h!14454 lt!318152) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709367 () Bool)

(assert (=> b!709367 (= e!399251 (contains!3956 (t!19715 lt!318152) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97077 res!473030) b!709366))

(assert (= (and b!709366 (not res!473031)) b!709367))

(assert (=> d!97077 m!666653))

(declare-fun m!666767 () Bool)

(assert (=> d!97077 m!666767))

(declare-fun m!666769 () Bool)

(assert (=> b!709367 m!666769))

(assert (=> b!709153 d!97077))

(declare-fun d!97079 () Bool)

(declare-fun lt!318189 () Bool)

(assert (=> d!97079 (= lt!318189 (member k!2824 (content!347 newAcc!49)))))

(declare-fun e!399256 () Bool)

(assert (=> d!97079 (= lt!318189 e!399256)))

(declare-fun res!473034 () Bool)

(assert (=> d!97079 (=> (not res!473034) (not e!399256))))

(assert (=> d!97079 (= res!473034 (is-Cons!13409 newAcc!49))))

(assert (=> d!97079 (= (contains!3956 newAcc!49 k!2824) lt!318189)))

(declare-fun b!709370 () Bool)

(declare-fun e!399255 () Bool)

(assert (=> b!709370 (= e!399256 e!399255)))

(declare-fun res!473035 () Bool)

(assert (=> b!709370 (=> res!473035 e!399255)))

(assert (=> b!709370 (= res!473035 (= (h!14454 newAcc!49) k!2824))))

(declare-fun b!709371 () Bool)

(assert (=> b!709371 (= e!399255 (contains!3956 (t!19715 newAcc!49) k!2824))))

(assert (= (and d!97079 res!473034) b!709370))

(assert (= (and b!709370 (not res!473035)) b!709371))

(assert (=> d!97079 m!666637))

(declare-fun m!666773 () Bool)

(assert (=> d!97079 m!666773))

(declare-fun m!666775 () Bool)

(assert (=> b!709371 m!666775))

(assert (=> b!709164 d!97079))

(declare-fun d!97083 () Bool)

(assert (=> d!97083 (= ($colon$colon!510 acc!652 (select (arr!19319 a!3591) from!2969)) (Cons!13409 (select (arr!19319 a!3591) from!2969) acc!652))))

(assert (=> b!709154 d!97083))

(declare-fun d!97085 () Bool)

(declare-fun res!473036 () Bool)

(declare-fun e!399257 () Bool)

(assert (=> d!97085 (=> res!473036 e!399257)))

(assert (=> d!97085 (= res!473036 (is-Nil!13410 lt!318152))))

(assert (=> d!97085 (= (noDuplicate!1203 lt!318152) e!399257)))

(declare-fun b!709372 () Bool)

(declare-fun e!399258 () Bool)

(assert (=> b!709372 (= e!399257 e!399258)))

(declare-fun res!473037 () Bool)

(assert (=> b!709372 (=> (not res!473037) (not e!399258))))

(assert (=> b!709372 (= res!473037 (not (contains!3956 (t!19715 lt!318152) (h!14454 lt!318152))))))

(declare-fun b!709373 () Bool)

(assert (=> b!709373 (= e!399258 (noDuplicate!1203 (t!19715 lt!318152)))))

(assert (= (and d!97085 (not res!473036)) b!709372))

(assert (= (and b!709372 res!473037) b!709373))

(declare-fun m!666777 () Bool)

(assert (=> b!709372 m!666777))

(declare-fun m!666779 () Bool)

(assert (=> b!709373 m!666779))

(assert (=> b!709165 d!97085))

(declare-fun d!97087 () Bool)

(declare-fun lt!318190 () Bool)

(assert (=> d!97087 (= lt!318190 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!347 acc!652)))))

(declare-fun e!399260 () Bool)

(assert (=> d!97087 (= lt!318190 e!399260)))

(declare-fun res!473038 () Bool)

(assert (=> d!97087 (=> (not res!473038) (not e!399260))))

(assert (=> d!97087 (= res!473038 (is-Cons!13409 acc!652))))

(assert (=> d!97087 (= (contains!3956 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318190)))

(declare-fun b!709374 () Bool)

(declare-fun e!399259 () Bool)

(assert (=> b!709374 (= e!399260 e!399259)))

(declare-fun res!473039 () Bool)

(assert (=> b!709374 (=> res!473039 e!399259)))

(assert (=> b!709374 (= res!473039 (= (h!14454 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

