; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7010 () Bool)

(assert start!7010)

(declare-fun res!26587 () Bool)

(declare-fun e!28808 () Bool)

(assert (=> start!7010 (=> (not res!26587) (not e!28808))))

(declare-datatypes ((array!3011 0))(
  ( (array!3012 (arr!1449 (Array (_ BitVec 32) (_ BitVec 64))) (size!1667 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!3011)

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(assert (=> start!7010 (= res!26587 (and (bvslt (size!1667 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1667 a!4412)) (= (size!1667 a!4412) size!30) (= a!4412 (array!3012 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1449 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1667 a!4412))))))

(assert (=> start!7010 e!28808))

(declare-fun array_inv!813 (array!3011) Bool)

(assert (=> start!7010 (array_inv!813 a!4412)))

(assert (=> start!7010 true))

(declare-fun b!45324 () Bool)

(declare-fun arrayCountValidKeys!0 (array!3011 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45324 (= e!28808 (not (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) #b00000000000000000000000000000000)))))

(assert (=> b!45324 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1271 0))(
  ( (Unit!1272) )
))
(declare-fun lt!20104 () Unit!1271)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!3011 (_ BitVec 32) (_ BitVec 32)) Unit!1271)

(assert (=> b!45324 (= lt!20104 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!7010 res!26587) b!45324))

(declare-fun m!39871 () Bool)

(assert (=> start!7010 m!39871))

(declare-fun m!39873 () Bool)

(assert (=> start!7010 m!39873))

(declare-fun m!39875 () Bool)

(assert (=> b!45324 m!39875))

(declare-fun m!39877 () Bool)

(assert (=> b!45324 m!39877))

(declare-fun m!39879 () Bool)

(assert (=> b!45324 m!39879))

(push 1)

(assert (not b!45324))

(assert (not start!7010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45365 () Bool)

(declare-fun e!28830 () (_ BitVec 32))

(declare-fun call!3697 () (_ BitVec 32))

(assert (=> b!45365 (= e!28830 call!3697)))

(declare-fun b!45366 () Bool)

(declare-fun e!28831 () (_ BitVec 32))

(assert (=> b!45366 (= e!28831 #b00000000000000000000000000000000)))

(declare-fun b!45367 () Bool)

(assert (=> b!45367 (= e!28830 (bvadd #b00000000000000000000000000000001 call!3697))))

(declare-fun bm!3694 () Bool)

(assert (=> bm!3694 (= call!3697 (arrayCountValidKeys!0 a!4412 (bvadd i!1489 #b00000000000000000000000000000001) size!30))))

(declare-fun d!8835 () Bool)

(declare-fun lt!20121 () (_ BitVec 32))

(assert (=> d!8835 (and (bvsge lt!20121 #b00000000000000000000000000000000) (bvsle lt!20121 (bvsub (size!1667 a!4412) i!1489)))))

(assert (=> d!8835 (= lt!20121 e!28831)))

(declare-fun c!6109 () Bool)

(assert (=> d!8835 (= c!6109 (bvsge i!1489 size!30))))

(assert (=> d!8835 (and (bvsle i!1489 size!30) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle size!30 (size!1667 a!4412)))))

(assert (=> d!8835 (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) lt!20121)))

(declare-fun b!45368 () Bool)

(assert (=> b!45368 (= e!28831 e!28830)))

(declare-fun c!6110 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!45368 (= c!6110 (validKeyInArray!0 (select (arr!1449 a!4412) i!1489)))))

(assert (= (and d!8835 c!6109) b!45366))

(assert (= (and d!8835 (not c!6109)) b!45368))

(assert (= (and b!45368 c!6110) b!45367))

(assert (= (and b!45368 (not c!6110)) b!45365))

(assert (= (or b!45367 b!45365) bm!3694))

(declare-fun m!39905 () Bool)

(assert (=> bm!3694 m!39905))

(assert (=> b!45368 m!39871))

(assert (=> b!45368 m!39871))

(declare-fun m!39907 () Bool)

(assert (=> b!45368 m!39907))

(assert (=> b!45324 d!8835))

(declare-fun b!45369 () Bool)

(declare-fun e!28832 () (_ BitVec 32))

(declare-fun call!3698 () (_ BitVec 32))

(assert (=> b!45369 (= e!28832 call!3698)))

(declare-fun b!45370 () Bool)

(declare-fun e!28833 () (_ BitVec 32))

(assert (=> b!45370 (= e!28833 #b00000000000000000000000000000000)))

(declare-fun b!45371 () Bool)

(assert (=> b!45371 (= e!28832 (bvadd #b00000000000000000000000000000001 call!3698))))

(declare-fun bm!3695 () Bool)

(assert (=> bm!3695 (= call!3698 (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001) size!30))))

(declare-fun d!8843 () Bool)

(declare-fun lt!20122 () (_ BitVec 32))

(assert (=> d!8843 (and (bvsge lt!20122 #b00000000000000000000000000000000) (bvsle lt!20122 (bvsub (size!1667 a!4412) (bvadd #b00000000000000000000000000000001 i!1489))))))

(assert (=> d!8843 (= lt!20122 e!28833)))

(declare-fun c!6111 () Bool)

(assert (=> d!8843 (= c!6111 (bvsge (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (=> d!8843 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1489) size!30) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle size!30 (size!1667 a!4412)))))

(assert (=> d!8843 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) lt!20122)))

(declare-fun b!45372 () Bool)

(assert (=> b!45372 (= e!28833 e!28832)))

(declare-fun c!6112 () Bool)

(assert (=> b!45372 (= c!6112 (validKeyInArray!0 (select (arr!1449 a!4412) (bvadd #b00000000000000000000000000000001 i!1489))))))

(assert (= (and d!8843 c!6111) b!45370))

(assert (= (and d!8843 (not c!6111)) b!45372))

(assert (= (and b!45372 c!6112) b!45371))

(assert (= (and b!45372 (not c!6112)) b!45369))

(assert (= (or b!45371 b!45369) bm!3695))

(declare-fun m!39909 () Bool)

(assert (=> bm!3695 m!39909))

(declare-fun m!39911 () Bool)

(assert (=> b!45372 m!39911))

(assert (=> b!45372 m!39911))

(declare-fun m!39913 () Bool)

(assert (=> b!45372 m!39913))

(assert (=> b!45324 d!8843))

(declare-fun d!8845 () Bool)

(assert (=> d!8845 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-fun lt!20125 () Unit!1271)

(declare-fun choose!59 (array!3011 (_ BitVec 32) (_ BitVec 32)) Unit!1271)

(assert (=> d!8845 (= lt!20125 (choose!59 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (=> d!8845 (bvslt (size!1667 a!4412) #b01111111111111111111111111111111)))

(assert (=> d!8845 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) lt!20125)))

(declare-fun bs!2115 () Bool)

(assert (= bs!2115 d!8845))

(assert (=> bs!2115 m!39877))

(declare-fun m!39915 () Bool)

(assert (=> bs!2115 m!39915))

(assert (=> b!45324 d!8845))

(declare-fun d!8847 () Bool)

(assert (=> d!8847 (= (array_inv!813 a!4412) (bvsge (size!1667 a!4412) #b00000000000000000000000000000000))))

(assert (=> start!7010 d!8847))

(push 1)

(assert (not d!8845))

(assert (not b!45368))

(assert (not b!45372))

(assert (not bm!3694))

(assert (not bm!3695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

