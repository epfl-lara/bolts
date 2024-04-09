; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7006 () Bool)

(assert start!7006)

(declare-fun res!26581 () Bool)

(declare-fun e!28796 () Bool)

(assert (=> start!7006 (=> (not res!26581) (not e!28796))))

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(declare-datatypes ((array!3007 0))(
  ( (array!3008 (arr!1447 (Array (_ BitVec 32) (_ BitVec 64))) (size!1665 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!3007)

(assert (=> start!7006 (= res!26581 (and (bvslt (size!1665 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1665 a!4412)) (= (size!1665 a!4412) size!30) (= a!4412 (array!3008 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1447 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1665 a!4412))))))

(assert (=> start!7006 e!28796))

(declare-fun array_inv!811 (array!3007) Bool)

(assert (=> start!7006 (array_inv!811 a!4412)))

(assert (=> start!7006 true))

(declare-fun b!45318 () Bool)

(declare-fun arrayCountValidKeys!0 (array!3007 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45318 (= e!28796 (not (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) #b00000000000000000000000000000000)))))

(assert (=> b!45318 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1267 0))(
  ( (Unit!1268) )
))
(declare-fun lt!20098 () Unit!1267)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!3007 (_ BitVec 32) (_ BitVec 32)) Unit!1267)

(assert (=> b!45318 (= lt!20098 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!7006 res!26581) b!45318))

(declare-fun m!39851 () Bool)

(assert (=> start!7006 m!39851))

(declare-fun m!39853 () Bool)

(assert (=> start!7006 m!39853))

(declare-fun m!39855 () Bool)

(assert (=> b!45318 m!39855))

(declare-fun m!39857 () Bool)

(assert (=> b!45318 m!39857))

(declare-fun m!39859 () Bool)

(assert (=> b!45318 m!39859))

(push 1)

(assert (not b!45318))

(assert (not start!7006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45349 () Bool)

(declare-fun e!28823 () (_ BitVec 32))

(declare-fun call!3693 () (_ BitVec 32))

(assert (=> b!45349 (= e!28823 call!3693)))

(declare-fun d!8829 () Bool)

(declare-fun lt!20114 () (_ BitVec 32))

(assert (=> d!8829 (and (bvsge lt!20114 #b00000000000000000000000000000000) (bvsle lt!20114 (bvsub (size!1665 a!4412) i!1489)))))

(declare-fun e!28822 () (_ BitVec 32))

(assert (=> d!8829 (= lt!20114 e!28822)))

(declare-fun c!6101 () Bool)

(assert (=> d!8829 (= c!6101 (bvsge i!1489 size!30))))

(assert (=> d!8829 (and (bvsle i!1489 size!30) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle size!30 (size!1665 a!4412)))))

(assert (=> d!8829 (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) lt!20114)))

(declare-fun bm!3690 () Bool)

(assert (=> bm!3690 (= call!3693 (arrayCountValidKeys!0 a!4412 (bvadd i!1489 #b00000000000000000000000000000001) size!30))))

(declare-fun b!45350 () Bool)

(assert (=> b!45350 (= e!28822 e!28823)))

(declare-fun c!6102 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!45350 (= c!6102 (validKeyInArray!0 (select (arr!1447 a!4412) i!1489)))))

(declare-fun b!45351 () Bool)

(assert (=> b!45351 (= e!28823 (bvadd #b00000000000000000000000000000001 call!3693))))

(declare-fun b!45352 () Bool)

(assert (=> b!45352 (= e!28822 #b00000000000000000000000000000000)))

(assert (= (and d!8829 c!6101) b!45352))

(assert (= (and d!8829 (not c!6101)) b!45350))

(assert (= (and b!45350 c!6102) b!45351))

(assert (= (and b!45350 (not c!6102)) b!45349))

(assert (= (or b!45351 b!45349) bm!3690))

(declare-fun m!39893 () Bool)

(assert (=> bm!3690 m!39893))

(assert (=> b!45350 m!39851))

(assert (=> b!45350 m!39851))

(declare-fun m!39895 () Bool)

(assert (=> b!45350 m!39895))

(assert (=> b!45318 d!8829))

(declare-fun b!45353 () Bool)

(declare-fun e!28825 () (_ BitVec 32))

(declare-fun call!3694 () (_ BitVec 32))

(assert (=> b!45353 (= e!28825 call!3694)))

(declare-fun d!8837 () Bool)

(declare-fun lt!20115 () (_ BitVec 32))

(assert (=> d!8837 (and (bvsge lt!20115 #b00000000000000000000000000000000) (bvsle lt!20115 (bvsub (size!1665 a!4412) (bvadd #b00000000000000000000000000000001 i!1489))))))

(declare-fun e!28824 () (_ BitVec 32))

(assert (=> d!8837 (= lt!20115 e!28824)))

(declare-fun c!6103 () Bool)

(assert (=> d!8837 (= c!6103 (bvsge (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (=> d!8837 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1489) size!30) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle size!30 (size!1665 a!4412)))))

(assert (=> d!8837 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) lt!20115)))

(declare-fun bm!3691 () Bool)

(assert (=> bm!3691 (= call!3694 (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001) size!30))))

(declare-fun b!45354 () Bool)

(assert (=> b!45354 (= e!28824 e!28825)))

(declare-fun c!6104 () Bool)

(assert (=> b!45354 (= c!6104 (validKeyInArray!0 (select (arr!1447 a!4412) (bvadd #b00000000000000000000000000000001 i!1489))))))

(declare-fun b!45355 () Bool)

(assert (=> b!45355 (= e!28825 (bvadd #b00000000000000000000000000000001 call!3694))))

(declare-fun b!45356 () Bool)

(assert (=> b!45356 (= e!28824 #b00000000000000000000000000000000)))

(assert (= (and d!8837 c!6103) b!45356))

(assert (= (and d!8837 (not c!6103)) b!45354))

(assert (= (and b!45354 c!6104) b!45355))

(assert (= (and b!45354 (not c!6104)) b!45353))

(assert (= (or b!45355 b!45353) bm!3691))

(declare-fun m!39897 () Bool)

(assert (=> bm!3691 m!39897))

(declare-fun m!39899 () Bool)

(assert (=> b!45354 m!39899))

(assert (=> b!45354 m!39899))

(declare-fun m!39901 () Bool)

(assert (=> b!45354 m!39901))

(assert (=> b!45318 d!8837))

(declare-fun d!8839 () Bool)

(assert (=> d!8839 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-fun lt!20118 () Unit!1267)

(declare-fun choose!59 (array!3007 (_ BitVec 32) (_ BitVec 32)) Unit!1267)

(assert (=> d!8839 (= lt!20118 (choose!59 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (=> d!8839 (bvslt (size!1665 a!4412) #b01111111111111111111111111111111)))

(assert (=> d!8839 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) lt!20118)))

(declare-fun bs!2114 () Bool)

(assert (= bs!2114 d!8839))

(assert (=> bs!2114 m!39857))

(declare-fun m!39903 () Bool)

(assert (=> bs!2114 m!39903))

(assert (=> b!45318 d!8839))

(declare-fun d!8841 () Bool)

(assert (=> d!8841 (= (array_inv!811 a!4412) (bvsge (size!1665 a!4412) #b00000000000000000000000000000000))))

(assert (=> start!7006 d!8841))

(push 1)

(assert (not bm!3691))

(assert (not b!45354))

(assert (not d!8839))

(assert (not bm!3690))

(assert (not b!45350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45381 () Bool)

