; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7008 () Bool)

(assert start!7008)

(declare-fun res!26584 () Bool)

(declare-fun e!28802 () Bool)

(assert (=> start!7008 (=> (not res!26584) (not e!28802))))

(declare-datatypes ((array!3009 0))(
  ( (array!3010 (arr!1448 (Array (_ BitVec 32) (_ BitVec 64))) (size!1666 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!3009)

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(assert (=> start!7008 (= res!26584 (and (bvslt (size!1666 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1666 a!4412)) (= (size!1666 a!4412) size!30) (= a!4412 (array!3010 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (not (= i!1489 size!30)) (= (select (arr!1448 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1489) (size!1666 a!4412))))))

(assert (=> start!7008 e!28802))

(declare-fun array_inv!812 (array!3009) Bool)

(assert (=> start!7008 (array_inv!812 a!4412)))

(assert (=> start!7008 true))

(declare-fun b!45321 () Bool)

(declare-fun arrayCountValidKeys!0 (array!3009 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45321 (= e!28802 (not (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) #b00000000000000000000000000000000)))))

(assert (=> b!45321 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1269 0))(
  ( (Unit!1270) )
))
(declare-fun lt!20101 () Unit!1269)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!3009 (_ BitVec 32) (_ BitVec 32)) Unit!1269)

(assert (=> b!45321 (= lt!20101 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (= (and start!7008 res!26584) b!45321))

(declare-fun m!39861 () Bool)

(assert (=> start!7008 m!39861))

(declare-fun m!39863 () Bool)

(assert (=> start!7008 m!39863))

(declare-fun m!39865 () Bool)

(assert (=> b!45321 m!39865))

(declare-fun m!39867 () Bool)

(assert (=> b!45321 m!39867))

(declare-fun m!39869 () Bool)

(assert (=> b!45321 m!39869))

(check-sat (not start!7008) (not b!45321))
(check-sat)
(get-model)

(declare-fun d!8825 () Bool)

(assert (=> d!8825 (= (array_inv!812 a!4412) (bvsge (size!1666 a!4412) #b00000000000000000000000000000000))))

(assert (=> start!7008 d!8825))

(declare-fun b!45333 () Bool)

(declare-fun e!28815 () (_ BitVec 32))

(declare-fun call!3689 () (_ BitVec 32))

(assert (=> b!45333 (= e!28815 call!3689)))

(declare-fun b!45334 () Bool)

(declare-fun e!28814 () (_ BitVec 32))

(assert (=> b!45334 (= e!28814 #b00000000000000000000000000000000)))

(declare-fun bm!3686 () Bool)

(assert (=> bm!3686 (= call!3689 (arrayCountValidKeys!0 a!4412 (bvadd i!1489 #b00000000000000000000000000000001) size!30))))

(declare-fun b!45335 () Bool)

(assert (=> b!45335 (= e!28815 (bvadd #b00000000000000000000000000000001 call!3689))))

(declare-fun b!45336 () Bool)

(assert (=> b!45336 (= e!28814 e!28815)))

(declare-fun c!6094 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!45336 (= c!6094 (validKeyInArray!0 (select (arr!1448 a!4412) i!1489)))))

(declare-fun d!8827 () Bool)

(declare-fun lt!20107 () (_ BitVec 32))

(assert (=> d!8827 (and (bvsge lt!20107 #b00000000000000000000000000000000) (bvsle lt!20107 (bvsub (size!1666 a!4412) i!1489)))))

(assert (=> d!8827 (= lt!20107 e!28814)))

(declare-fun c!6093 () Bool)

(assert (=> d!8827 (= c!6093 (bvsge i!1489 size!30))))

(assert (=> d!8827 (and (bvsle i!1489 size!30) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle size!30 (size!1666 a!4412)))))

(assert (=> d!8827 (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) lt!20107)))

(assert (= (and d!8827 c!6093) b!45334))

(assert (= (and d!8827 (not c!6093)) b!45336))

(assert (= (and b!45336 c!6094) b!45335))

(assert (= (and b!45336 (not c!6094)) b!45333))

(assert (= (or b!45335 b!45333) bm!3686))

(declare-fun m!39881 () Bool)

(assert (=> bm!3686 m!39881))

(assert (=> b!45336 m!39861))

(assert (=> b!45336 m!39861))

(declare-fun m!39883 () Bool)

(assert (=> b!45336 m!39883))

(assert (=> b!45321 d!8827))

(declare-fun b!45337 () Bool)

(declare-fun e!28817 () (_ BitVec 32))

(declare-fun call!3690 () (_ BitVec 32))

(assert (=> b!45337 (= e!28817 call!3690)))

(declare-fun b!45338 () Bool)

(declare-fun e!28816 () (_ BitVec 32))

(assert (=> b!45338 (= e!28816 #b00000000000000000000000000000000)))

(declare-fun bm!3687 () Bool)

(assert (=> bm!3687 (= call!3690 (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001) size!30))))

(declare-fun b!45339 () Bool)

(assert (=> b!45339 (= e!28817 (bvadd #b00000000000000000000000000000001 call!3690))))

(declare-fun b!45340 () Bool)

(assert (=> b!45340 (= e!28816 e!28817)))

(declare-fun c!6096 () Bool)

(assert (=> b!45340 (= c!6096 (validKeyInArray!0 (select (arr!1448 a!4412) (bvadd #b00000000000000000000000000000001 i!1489))))))

(declare-fun d!8831 () Bool)

(declare-fun lt!20108 () (_ BitVec 32))

(assert (=> d!8831 (and (bvsge lt!20108 #b00000000000000000000000000000000) (bvsle lt!20108 (bvsub (size!1666 a!4412) (bvadd #b00000000000000000000000000000001 i!1489))))))

(assert (=> d!8831 (= lt!20108 e!28816)))

(declare-fun c!6095 () Bool)

(assert (=> d!8831 (= c!6095 (bvsge (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (=> d!8831 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1489) size!30) (bvsge (bvadd #b00000000000000000000000000000001 i!1489) #b00000000000000000000000000000000) (bvsle size!30 (size!1666 a!4412)))))

(assert (=> d!8831 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) lt!20108)))

(assert (= (and d!8831 c!6095) b!45338))

(assert (= (and d!8831 (not c!6095)) b!45340))

(assert (= (and b!45340 c!6096) b!45339))

(assert (= (and b!45340 (not c!6096)) b!45337))

(assert (= (or b!45339 b!45337) bm!3687))

(declare-fun m!39885 () Bool)

(assert (=> bm!3687 m!39885))

(declare-fun m!39887 () Bool)

(assert (=> b!45340 m!39887))

(assert (=> b!45340 m!39887))

(declare-fun m!39889 () Bool)

(assert (=> b!45340 m!39889))

(assert (=> b!45321 d!8831))

(declare-fun d!8833 () Bool)

(assert (=> d!8833 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(declare-fun lt!20113 () Unit!1269)

(declare-fun choose!59 (array!3009 (_ BitVec 32) (_ BitVec 32)) Unit!1269)

(assert (=> d!8833 (= lt!20113 (choose!59 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30))))

(assert (=> d!8833 (bvslt (size!1666 a!4412) #b01111111111111111111111111111111)))

(assert (=> d!8833 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) lt!20113)))

(declare-fun bs!2113 () Bool)

(assert (= bs!2113 d!8833))

(assert (=> bs!2113 m!39867))

(declare-fun m!39891 () Bool)

(assert (=> bs!2113 m!39891))

(assert (=> b!45321 d!8833))

(check-sat (not b!45336) (not bm!3686) (not d!8833) (not bm!3687) (not b!45340))
(check-sat)
(get-model)

(assert (=> d!8833 d!8831))

(declare-fun d!8849 () Bool)

(assert (=> d!8849 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) #b00000000000000000000000000000000)))

(assert (=> d!8849 true))

(declare-fun _$88!64 () Unit!1269)

(assert (=> d!8849 (= (choose!59 a!4412 (bvadd #b00000000000000000000000000000001 i!1489) size!30) _$88!64)))

(declare-fun bs!2116 () Bool)

(assert (= bs!2116 d!8849))

(assert (=> bs!2116 m!39867))

(assert (=> d!8833 d!8849))

(declare-fun b!45373 () Bool)

(declare-fun e!28835 () (_ BitVec 32))

(declare-fun call!3699 () (_ BitVec 32))

(assert (=> b!45373 (= e!28835 call!3699)))

(declare-fun b!45374 () Bool)

(declare-fun e!28834 () (_ BitVec 32))

(assert (=> b!45374 (= e!28834 #b00000000000000000000000000000000)))

(declare-fun bm!3696 () Bool)

(assert (=> bm!3696 (= call!3699 (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001 #b00000000000000000000000000000001) size!30))))

(declare-fun b!45375 () Bool)

(assert (=> b!45375 (= e!28835 (bvadd #b00000000000000000000000000000001 call!3699))))

(declare-fun b!45376 () Bool)

(assert (=> b!45376 (= e!28834 e!28835)))

(declare-fun c!6114 () Bool)

(assert (=> b!45376 (= c!6114 (validKeyInArray!0 (select (arr!1448 a!4412) (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001))))))

(declare-fun d!8851 () Bool)

(declare-fun lt!20126 () (_ BitVec 32))

(assert (=> d!8851 (and (bvsge lt!20126 #b00000000000000000000000000000000) (bvsle lt!20126 (bvsub (size!1666 a!4412) (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001))))))

(assert (=> d!8851 (= lt!20126 e!28834)))

(declare-fun c!6113 () Bool)

(assert (=> d!8851 (= c!6113 (bvsge (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001) size!30))))

(assert (=> d!8851 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001) size!30) (bvsge (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle size!30 (size!1666 a!4412)))))

(assert (=> d!8851 (= (arrayCountValidKeys!0 a!4412 (bvadd #b00000000000000000000000000000001 i!1489 #b00000000000000000000000000000001) size!30) lt!20126)))

(assert (= (and d!8851 c!6113) b!45374))

(assert (= (and d!8851 (not c!6113)) b!45376))

(assert (= (and b!45376 c!6114) b!45375))

(assert (= (and b!45376 (not c!6114)) b!45373))

(assert (= (or b!45375 b!45373) bm!3696))

(declare-fun m!39917 () Bool)

(assert (=> bm!3696 m!39917))

(declare-fun m!39919 () Bool)

(assert (=> b!45376 m!39919))

(assert (=> b!45376 m!39919))

(declare-fun m!39921 () Bool)

(assert (=> b!45376 m!39921))

(assert (=> bm!3687 d!8851))

(declare-fun d!8853 () Bool)

(assert (=> d!8853 (= (validKeyInArray!0 (select (arr!1448 a!4412) i!1489)) (and (not (= (select (arr!1448 a!4412) i!1489) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1448 a!4412) i!1489) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!45336 d!8853))

(declare-fun d!8855 () Bool)

(assert (=> d!8855 (= (validKeyInArray!0 (select (arr!1448 a!4412) (bvadd #b00000000000000000000000000000001 i!1489))) (and (not (= (select (arr!1448 a!4412) (bvadd #b00000000000000000000000000000001 i!1489)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1448 a!4412) (bvadd #b00000000000000000000000000000001 i!1489)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!45340 d!8855))

(declare-fun b!45377 () Bool)

(declare-fun e!28837 () (_ BitVec 32))

(declare-fun call!3700 () (_ BitVec 32))

(assert (=> b!45377 (= e!28837 call!3700)))

(declare-fun b!45378 () Bool)

(declare-fun e!28836 () (_ BitVec 32))

(assert (=> b!45378 (= e!28836 #b00000000000000000000000000000000)))

(declare-fun bm!3697 () Bool)

(assert (=> bm!3697 (= call!3700 (arrayCountValidKeys!0 a!4412 (bvadd i!1489 #b00000000000000000000000000000001 #b00000000000000000000000000000001) size!30))))

(declare-fun b!45379 () Bool)

(assert (=> b!45379 (= e!28837 (bvadd #b00000000000000000000000000000001 call!3700))))

(declare-fun b!45380 () Bool)

(assert (=> b!45380 (= e!28836 e!28837)))

(declare-fun c!6116 () Bool)

(assert (=> b!45380 (= c!6116 (validKeyInArray!0 (select (arr!1448 a!4412) (bvadd i!1489 #b00000000000000000000000000000001))))))

(declare-fun d!8857 () Bool)

(declare-fun lt!20127 () (_ BitVec 32))

(assert (=> d!8857 (and (bvsge lt!20127 #b00000000000000000000000000000000) (bvsle lt!20127 (bvsub (size!1666 a!4412) (bvadd i!1489 #b00000000000000000000000000000001))))))

(assert (=> d!8857 (= lt!20127 e!28836)))

(declare-fun c!6115 () Bool)

(assert (=> d!8857 (= c!6115 (bvsge (bvadd i!1489 #b00000000000000000000000000000001) size!30))))

(assert (=> d!8857 (and (bvsle (bvadd i!1489 #b00000000000000000000000000000001) size!30) (bvsge (bvadd i!1489 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle size!30 (size!1666 a!4412)))))

(assert (=> d!8857 (= (arrayCountValidKeys!0 a!4412 (bvadd i!1489 #b00000000000000000000000000000001) size!30) lt!20127)))

(assert (= (and d!8857 c!6115) b!45378))

(assert (= (and d!8857 (not c!6115)) b!45380))

(assert (= (and b!45380 c!6116) b!45379))

(assert (= (and b!45380 (not c!6116)) b!45377))

(assert (= (or b!45379 b!45377) bm!3697))

(declare-fun m!39923 () Bool)

(assert (=> bm!3697 m!39923))

(declare-fun m!39925 () Bool)

(assert (=> b!45380 m!39925))

(assert (=> b!45380 m!39925))

(declare-fun m!39927 () Bool)

(assert (=> b!45380 m!39927))

(assert (=> bm!3686 d!8857))

(check-sat (not b!45376) (not bm!3697) (not b!45380) (not bm!3696) (not d!8849))
(check-sat)
