; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63398 () Bool)

(assert start!63398)

(declare-fun b!713923 () Bool)

(declare-fun res!477181 () Bool)

(declare-fun e!401249 () Bool)

(assert (=> b!713923 (=> (not res!477181) (not e!401249))))

(declare-datatypes ((List!13458 0))(
  ( (Nil!13455) (Cons!13454 (h!14499 (_ BitVec 64)) (t!19781 List!13458)) )
))
(declare-fun newAcc!49 () List!13458)

(declare-fun contains!4001 (List!13458 (_ BitVec 64)) Bool)

(assert (=> b!713923 (= res!477181 (not (contains!4001 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713924 () Bool)

(declare-fun res!477174 () Bool)

(assert (=> b!713924 (=> (not res!477174) (not e!401249))))

(declare-fun noDuplicate!1248 (List!13458) Bool)

(assert (=> b!713924 (= res!477174 (noDuplicate!1248 newAcc!49))))

(declare-fun b!713925 () Bool)

(declare-fun res!477180 () Bool)

(assert (=> b!713925 (=> (not res!477180) (not e!401249))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13458)

(declare-fun -!410 (List!13458 (_ BitVec 64)) List!13458)

(assert (=> b!713925 (= res!477180 (= (-!410 newAcc!49 k!2824) acc!652))))

(declare-fun b!713926 () Bool)

(declare-fun res!477186 () Bool)

(assert (=> b!713926 (=> (not res!477186) (not e!401249))))

(declare-datatypes ((array!40456 0))(
  ( (array!40457 (arr!19364 (Array (_ BitVec 32) (_ BitVec 64))) (size!19776 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40456)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40456 (_ BitVec 32) List!13458) Bool)

(assert (=> b!713926 (= res!477186 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713927 () Bool)

(declare-fun res!477183 () Bool)

(assert (=> b!713927 (=> (not res!477183) (not e!401249))))

(assert (=> b!713927 (= res!477183 (not (contains!4001 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713928 () Bool)

(declare-fun res!477173 () Bool)

(assert (=> b!713928 (=> (not res!477173) (not e!401249))))

(declare-fun subseq!445 (List!13458 List!13458) Bool)

(assert (=> b!713928 (= res!477173 (subseq!445 acc!652 newAcc!49))))

(declare-fun b!713929 () Bool)

(declare-fun res!477179 () Bool)

(assert (=> b!713929 (=> (not res!477179) (not e!401249))))

(assert (=> b!713929 (= res!477179 (not (contains!4001 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!477184 () Bool)

(assert (=> start!63398 (=> (not res!477184) (not e!401249))))

(assert (=> start!63398 (= res!477184 (and (bvslt (size!19776 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19776 a!3591))))))

(assert (=> start!63398 e!401249))

(assert (=> start!63398 true))

(declare-fun array_inv!15138 (array!40456) Bool)

(assert (=> start!63398 (array_inv!15138 a!3591)))

(declare-fun b!713930 () Bool)

(declare-fun res!477189 () Bool)

(assert (=> b!713930 (=> (not res!477189) (not e!401249))))

(assert (=> b!713930 (= res!477189 (not (contains!4001 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713931 () Bool)

(declare-fun res!477175 () Bool)

(assert (=> b!713931 (=> (not res!477175) (not e!401249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713931 (= res!477175 (validKeyInArray!0 k!2824))))

(declare-fun b!713932 () Bool)

(declare-fun res!477188 () Bool)

(assert (=> b!713932 (=> (not res!477188) (not e!401249))))

(assert (=> b!713932 (= res!477188 (noDuplicate!1248 acc!652))))

(declare-fun b!713933 () Bool)

(declare-fun res!477177 () Bool)

(assert (=> b!713933 (=> (not res!477177) (not e!401249))))

(assert (=> b!713933 (= res!477177 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!713934 () Bool)

(declare-fun arrayContainsKey!0 (array!40456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713934 (= e!401249 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)))))

(declare-fun b!713935 () Bool)

(declare-fun res!477176 () Bool)

(assert (=> b!713935 (=> (not res!477176) (not e!401249))))

(assert (=> b!713935 (= res!477176 (not (contains!4001 acc!652 k!2824)))))

(declare-fun b!713936 () Bool)

(declare-fun res!477182 () Bool)

(assert (=> b!713936 (=> (not res!477182) (not e!401249))))

(assert (=> b!713936 (= res!477182 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713937 () Bool)

(declare-fun res!477187 () Bool)

(assert (=> b!713937 (=> (not res!477187) (not e!401249))))

(assert (=> b!713937 (= res!477187 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19776 a!3591)))))

(declare-fun b!713938 () Bool)

(declare-fun res!477185 () Bool)

(assert (=> b!713938 (=> (not res!477185) (not e!401249))))

(assert (=> b!713938 (= res!477185 (not (validKeyInArray!0 (select (arr!19364 a!3591) from!2969))))))

(declare-fun b!713939 () Bool)

(declare-fun res!477178 () Bool)

(assert (=> b!713939 (=> (not res!477178) (not e!401249))))

(assert (=> b!713939 (= res!477178 (contains!4001 newAcc!49 k!2824))))

(assert (= (and start!63398 res!477184) b!713932))

(assert (= (and b!713932 res!477188) b!713924))

(assert (= (and b!713924 res!477174) b!713927))

(assert (= (and b!713927 res!477183) b!713929))

(assert (= (and b!713929 res!477179) b!713936))

(assert (= (and b!713936 res!477182) b!713935))

(assert (= (and b!713935 res!477176) b!713931))

(assert (= (and b!713931 res!477175) b!713926))

(assert (= (and b!713926 res!477186) b!713928))

(assert (= (and b!713928 res!477173) b!713939))

(assert (= (and b!713939 res!477178) b!713925))

(assert (= (and b!713925 res!477180) b!713930))

(assert (= (and b!713930 res!477189) b!713923))

(assert (= (and b!713923 res!477181) b!713937))

(assert (= (and b!713937 res!477187) b!713938))

(assert (= (and b!713938 res!477185) b!713933))

(assert (= (and b!713933 res!477177) b!713934))

(declare-fun m!670613 () Bool)

(assert (=> b!713927 m!670613))

(declare-fun m!670615 () Bool)

(assert (=> b!713925 m!670615))

(declare-fun m!670617 () Bool)

(assert (=> b!713928 m!670617))

(declare-fun m!670619 () Bool)

(assert (=> b!713938 m!670619))

(assert (=> b!713938 m!670619))

(declare-fun m!670621 () Bool)

(assert (=> b!713938 m!670621))

(declare-fun m!670623 () Bool)

(assert (=> start!63398 m!670623))

(declare-fun m!670625 () Bool)

(assert (=> b!713923 m!670625))

(declare-fun m!670627 () Bool)

(assert (=> b!713931 m!670627))

(declare-fun m!670629 () Bool)

(assert (=> b!713929 m!670629))

(declare-fun m!670631 () Bool)

(assert (=> b!713934 m!670631))

(declare-fun m!670633 () Bool)

(assert (=> b!713936 m!670633))

(declare-fun m!670635 () Bool)

(assert (=> b!713932 m!670635))

(declare-fun m!670637 () Bool)

(assert (=> b!713926 m!670637))

(declare-fun m!670639 () Bool)

(assert (=> b!713935 m!670639))

(declare-fun m!670641 () Bool)

(assert (=> b!713930 m!670641))

(declare-fun m!670643 () Bool)

(assert (=> b!713939 m!670643))

(declare-fun m!670645 () Bool)

(assert (=> b!713924 m!670645))

(push 1)

(assert (not b!713939))

(assert (not b!713927))

(assert (not b!713931))

(assert (not b!713926))

(assert (not b!713936))

(assert (not b!713934))

(assert (not b!713923))

(assert (not b!713935))

(assert (not b!713930))

(assert (not b!713929))

(assert (not b!713938))

(assert (not b!713925))

(assert (not b!713924))

(assert (not b!713928))

(assert (not start!63398))

(assert (not b!713932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98127 () Bool)

(declare-fun res!477219 () Bool)

(declare-fun e!401283 () Bool)

(assert (=> d!98127 (=> res!477219 e!401283)))

(assert (=> d!98127 (= res!477219 (is-Nil!13455 acc!652))))

(assert (=> d!98127 (= (noDuplicate!1248 acc!652) e!401283)))

(declare-fun b!713975 () Bool)

(declare-fun e!401284 () Bool)

(assert (=> b!713975 (= e!401283 e!401284)))

(declare-fun res!477220 () Bool)

(assert (=> b!713975 (=> (not res!477220) (not e!401284))))

(assert (=> b!713975 (= res!477220 (not (contains!4001 (t!19781 acc!652) (h!14499 acc!652))))))

(declare-fun b!713976 () Bool)

(assert (=> b!713976 (= e!401284 (noDuplicate!1248 (t!19781 acc!652)))))

(assert (= (and d!98127 (not res!477219)) b!713975))

(assert (= (and b!713975 res!477220) b!713976))

(declare-fun m!670671 () Bool)

(assert (=> b!713975 m!670671))

(declare-fun m!670673 () Bool)

(assert (=> b!713976 m!670673))

(assert (=> b!713932 d!98127))

(declare-fun d!98139 () Bool)

(declare-fun lt!318690 () Bool)

(declare-fun content!369 (List!13458) (Set (_ BitVec 64)))

(assert (=> d!98139 (= lt!318690 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!369 newAcc!49)))))

(declare-fun e!401302 () Bool)

(assert (=> d!98139 (= lt!318690 e!401302)))

(declare-fun res!477238 () Bool)

(assert (=> d!98139 (=> (not res!477238) (not e!401302))))

(assert (=> d!98139 (= res!477238 (is-Cons!13454 newAcc!49))))

(assert (=> d!98139 (= (contains!4001 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318690)))

(declare-fun b!713993 () Bool)

(declare-fun e!401301 () Bool)

(assert (=> b!713993 (= e!401302 e!401301)))

(declare-fun res!477237 () Bool)

(assert (=> b!713993 (=> res!477237 e!401301)))

(assert (=> b!713993 (= res!477237 (= (h!14499 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713994 () Bool)

(assert (=> b!713994 (= e!401301 (contains!4001 (t!19781 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98139 res!477238) b!713993))

(assert (= (and b!713993 (not res!477237)) b!713994))

(declare-fun m!670693 () Bool)

(assert (=> d!98139 m!670693))

(declare-fun m!670695 () Bool)

(assert (=> d!98139 m!670695))

(declare-fun m!670697 () Bool)

(assert (=> b!713994 m!670697))

(assert (=> b!713930 d!98139))

(declare-fun d!98153 () Bool)

(assert (=> d!98153 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!713931 d!98153))

(declare-fun d!98155 () Bool)

(declare-fun lt!318691 () Bool)

(assert (=> d!98155 (= lt!318691 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!369 acc!652)))))

(declare-fun e!401314 () Bool)

(assert (=> d!98155 (= lt!318691 e!401314)))

(declare-fun res!477250 () Bool)

(assert (=> d!98155 (=> (not res!477250) (not e!401314))))

(assert (=> d!98155 (= res!477250 (is-Cons!13454 acc!652))))

(assert (=> d!98155 (= (contains!4001 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318691)))

(declare-fun b!714001 () Bool)

(declare-fun e!401313 () Bool)

(assert (=> b!714001 (= e!401314 e!401313)))

(declare-fun res!477249 () Bool)

(assert (=> b!714001 (=> res!477249 e!401313)))

(assert (=> b!714001 (= res!477249 (= (h!14499 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714002 () Bool)

(assert (=> b!714002 (= e!401313 (contains!4001 (t!19781 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98155 res!477250) b!714001))

(assert (= (and b!714001 (not res!477249)) b!714002))

(declare-fun m!670699 () Bool)

(assert (=> d!98155 m!670699))

(declare-fun m!670701 () Bool)

(assert (=> d!98155 m!670701))

(declare-fun m!670703 () Bool)

(assert (=> b!714002 m!670703))

(assert (=> b!713929 d!98155))

(declare-fun d!98157 () Bool)

(assert (=> d!98157 (= (validKeyInArray!0 (select (arr!19364 a!3591) from!2969)) (and (not (= (select (arr!19364 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19364 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!713938 d!98157))

(declare-fun d!98159 () Bool)

(declare-fun res!477284 () Bool)

(declare-fun e!401348 () Bool)

(assert (=> d!98159 (=> res!477284 e!401348)))

(assert (=> d!98159 (= res!477284 (is-Nil!13455 acc!652))))

(assert (=> d!98159 (= (subseq!445 acc!652 newAcc!49) e!401348)))

(declare-fun b!714041 () Bool)

(declare-fun e!401350 () Bool)

(assert (=> b!714041 (= e!401350 (subseq!445 (t!19781 acc!652) (t!19781 newAcc!49)))))

(declare-fun b!714040 () Bool)

(declare-fun e!401349 () Bool)

(declare-fun e!401347 () Bool)

(assert (=> b!714040 (= e!401349 e!401347)))

(declare-fun res!477283 () Bool)

(assert (=> b!714040 (=> res!477283 e!401347)))

(assert (=> b!714040 (= res!477283 e!401350)))

(declare-fun res!477285 () Bool)

(assert (=> b!714040 (=> (not res!477285) (not e!401350))))

(assert (=> b!714040 (= res!477285 (= (h!14499 acc!652) (h!14499 newAcc!49)))))

(declare-fun b!714042 () Bool)

(assert (=> b!714042 (= e!401347 (subseq!445 acc!652 (t!19781 newAcc!49)))))

(declare-fun b!714039 () Bool)

(assert (=> b!714039 (= e!401348 e!401349)))

(declare-fun res!477286 () Bool)

(assert (=> b!714039 (=> (not res!477286) (not e!401349))))

(assert (=> b!714039 (= res!477286 (is-Cons!13454 newAcc!49))))

(assert (= (and d!98159 (not res!477284)) b!714039))

(assert (= (and b!714039 res!477286) b!714040))

(assert (= (and b!714040 res!477285) b!714041))

(assert (= (and b!714040 (not res!477283)) b!714042))

(declare-fun m!670717 () Bool)

(assert (=> b!714041 m!670717))

(declare-fun m!670719 () Bool)

(assert (=> b!714042 m!670719))

(assert (=> b!713928 d!98159))

(declare-fun d!98167 () Bool)

(declare-fun lt!318693 () Bool)

(assert (=> d!98167 (= lt!318693 (member k!2824 (content!369 newAcc!49)))))

(declare-fun e!401356 () Bool)

(assert (=> d!98167 (= lt!318693 e!401356)))

(declare-fun res!477292 () Bool)

(assert (=> d!98167 (=> (not res!477292) (not e!401356))))

(assert (=> d!98167 (= res!477292 (is-Cons!13454 newAcc!49))))

(assert (=> d!98167 (= (contains!4001 newAcc!49 k!2824) lt!318693)))

(declare-fun b!714047 () Bool)

(declare-fun e!401355 () Bool)

(assert (=> b!714047 (= e!401356 e!401355)))

(declare-fun res!477291 () Bool)

(assert (=> b!714047 (=> res!477291 e!401355)))

(assert (=> b!714047 (= res!477291 (= (h!14499 newAcc!49) k!2824))))

(declare-fun b!714048 () Bool)

(assert (=> b!714048 (= e!401355 (contains!4001 (t!19781 newAcc!49) k!2824))))

(assert (= (and d!98167 res!477292) b!714047))

(assert (= (and b!714047 (not res!477291)) b!714048))

(assert (=> d!98167 m!670693))

(declare-fun m!670725 () Bool)

(assert (=> d!98167 m!670725))

(declare-fun m!670729 () Bool)

(assert (=> b!714048 m!670729))

(assert (=> b!713939 d!98167))

(declare-fun b!714083 () Bool)

(declare-fun e!401386 () Bool)

(declare-fun call!34600 () Bool)

(assert (=> b!714083 (= e!401386 call!34600)))

(declare-fun b!714084 () Bool)

(declare-fun e!401385 () Bool)

(assert (=> b!714084 (= e!401385 e!401386)))

(declare-fun c!78755 () Bool)

(assert (=> b!714084 (= c!78755 (validKeyInArray!0 (select (arr!19364 a!3591) from!2969)))))

(declare-fun b!714085 () Bool)

(declare-fun e!401383 () Bool)

(assert (=> b!714085 (= e!401383 (contains!4001 acc!652 (select (arr!19364 a!3591) from!2969)))))

(declare-fun b!714086 () Bool)

(assert (=> b!714086 (= e!401386 call!34600)))

(declare-fun b!714087 () Bool)

(declare-fun e!401384 () Bool)

(assert (=> b!714087 (= e!401384 e!401385)))

(declare-fun res!477309 () Bool)

(assert (=> b!714087 (=> (not res!477309) (not e!401385))))

(assert (=> b!714087 (= res!477309 (not e!401383))))

(declare-fun res!477307 () Bool)

(assert (=> b!714087 (=> (not res!477307) (not e!401383))))

(assert (=> b!714087 (= res!477307 (validKeyInArray!0 (select (arr!19364 a!3591) from!2969)))))

