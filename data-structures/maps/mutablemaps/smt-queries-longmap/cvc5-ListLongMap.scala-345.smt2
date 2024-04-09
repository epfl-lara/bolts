; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6322 () Bool)

(assert start!6322)

(declare-fun b!42630 () Bool)

(declare-fun e!27011 () Bool)

(declare-datatypes ((List!1161 0))(
  ( (Nil!1158) (Cons!1157 (h!1734 (_ BitVec 64)) (t!4116 List!1161)) )
))
(declare-fun noDuplicate!30 (List!1161) Bool)

(assert (=> b!42630 (= e!27011 (noDuplicate!30 Nil!1158))))

(declare-fun res!25330 () Bool)

(declare-fun e!27012 () Bool)

(assert (=> start!6322 (=> (not res!25330) (not e!27012))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6322 (= res!25330 (validMask!0 mask!853))))

(assert (=> start!6322 e!27012))

(assert (=> start!6322 true))

(declare-fun b!42629 () Bool)

(declare-fun res!25328 () Bool)

(assert (=> b!42629 (=> res!25328 e!27011)))

(declare-fun contains!558 (List!1161 (_ BitVec 64)) Bool)

(assert (=> b!42629 (= res!25328 (contains!558 Nil!1158 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42628 () Bool)

(declare-fun res!25329 () Bool)

(assert (=> b!42628 (=> res!25329 e!27011)))

(assert (=> b!42628 (= res!25329 (contains!558 Nil!1158 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42627 () Bool)

(assert (=> b!42627 (= e!27012 (not e!27011))))

(declare-fun res!25327 () Bool)

(assert (=> b!42627 (=> res!25327 e!27011)))

(assert (=> b!42627 (= res!25327 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2821 0))(
  ( (array!2822 (arr!1354 (Array (_ BitVec 32) (_ BitVec 64))) (size!1530 (_ BitVec 32))) )
))
(declare-fun lt!17768 () array!2821)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2821 (_ BitVec 32)) Bool)

(assert (=> b!42627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17768 mask!853)))

(declare-datatypes ((Unit!1145 0))(
  ( (Unit!1146) )
))
(declare-fun lt!17769 () Unit!1145)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2821 (_ BitVec 32) (_ BitVec 32)) Unit!1145)

(assert (=> b!42627 (= lt!17769 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17768 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2821 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42627 (= (arrayCountValidKeys!0 lt!17768 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17770 () Unit!1145)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2821 (_ BitVec 32) (_ BitVec 32)) Unit!1145)

(assert (=> b!42627 (= lt!17770 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17768 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42627 (= lt!17768 (array!2822 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6322 res!25330) b!42627))

(assert (= (and b!42627 (not res!25327)) b!42628))

(assert (= (and b!42628 (not res!25329)) b!42629))

(assert (= (and b!42629 (not res!25328)) b!42630))

(declare-fun m!36287 () Bool)

(assert (=> start!6322 m!36287))

(declare-fun m!36289 () Bool)

(assert (=> b!42629 m!36289))

(declare-fun m!36291 () Bool)

(assert (=> b!42627 m!36291))

(declare-fun m!36293 () Bool)

(assert (=> b!42627 m!36293))

(declare-fun m!36295 () Bool)

(assert (=> b!42627 m!36295))

(declare-fun m!36297 () Bool)

(assert (=> b!42627 m!36297))

(declare-fun m!36299 () Bool)

(assert (=> b!42628 m!36299))

(declare-fun m!36301 () Bool)

(assert (=> b!42630 m!36301))

(push 1)

(assert (not b!42627))

(assert (not start!6322))

(assert (not b!42630))

(assert (not b!42629))

(assert (not b!42628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7785 () Bool)

(declare-fun lt!17800 () Bool)

(declare-fun content!37 (List!1161) (Set (_ BitVec 64)))

(assert (=> d!7785 (= lt!17800 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!37 Nil!1158)))))

(declare-fun e!27038 () Bool)

(assert (=> d!7785 (= lt!17800 e!27038)))

(declare-fun res!25365 () Bool)

(assert (=> d!7785 (=> (not res!25365) (not e!27038))))

(assert (=> d!7785 (= res!25365 (is-Cons!1157 Nil!1158))))

(assert (=> d!7785 (= (contains!558 Nil!1158 #b0000000000000000000000000000000000000000000000000000000000000000) lt!17800)))

(declare-fun b!42671 () Bool)

(declare-fun e!27039 () Bool)

(assert (=> b!42671 (= e!27038 e!27039)))

(declare-fun res!25366 () Bool)

(assert (=> b!42671 (=> res!25366 e!27039)))

(assert (=> b!42671 (= res!25366 (= (h!1734 Nil!1158) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42672 () Bool)

(assert (=> b!42672 (= e!27039 (contains!558 (t!4116 Nil!1158) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!7785 res!25365) b!42671))

(assert (= (and b!42671 (not res!25366)) b!42672))

(declare-fun m!36347 () Bool)

(assert (=> d!7785 m!36347))

(declare-fun m!36349 () Bool)

(assert (=> d!7785 m!36349))

(declare-fun m!36351 () Bool)

(assert (=> b!42672 m!36351))

(assert (=> b!42628 d!7785))

(declare-fun d!7791 () Bool)

(assert (=> d!7791 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6322 d!7791))

(declare-fun b!42727 () Bool)

(declare-fun e!27079 () Bool)

(declare-fun call!3365 () Bool)

(assert (=> b!42727 (= e!27079 call!3365)))

(declare-fun bm!3362 () Bool)

(assert (=> bm!3362 (= call!3365 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17768 mask!853))))

(declare-fun b!42728 () Bool)

(declare-fun e!27077 () Bool)

(assert (=> b!42728 (= e!27077 call!3365)))

(declare-fun b!42729 () Bool)

(declare-fun e!27078 () Bool)

(assert (=> b!42729 (= e!27078 e!27077)))

(declare-fun c!5419 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42729 (= c!5419 (validKeyInArray!0 (select (arr!1354 lt!17768) #b00000000000000000000000000000000)))))

(declare-fun d!7797 () Bool)

(declare-fun res!25388 () Bool)

(assert (=> d!7797 (=> res!25388 e!27078)))

(assert (=> d!7797 (= res!25388 (bvsge #b00000000000000000000000000000000 (size!1530 lt!17768)))))

(assert (=> d!7797 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17768 mask!853) e!27078)))

(declare-fun b!42730 () Bool)

(assert (=> b!42730 (= e!27077 e!27079)))

(declare-fun lt!17835 () (_ BitVec 64))

(assert (=> b!42730 (= lt!17835 (select (arr!1354 lt!17768) #b00000000000000000000000000000000))))

(declare-fun lt!17833 () Unit!1145)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2821 (_ BitVec 64) (_ BitVec 32)) Unit!1145)

(assert (=> b!42730 (= lt!17833 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17768 lt!17835 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42730 (arrayContainsKey!0 lt!17768 lt!17835 #b00000000000000000000000000000000)))

(declare-fun lt!17834 () Unit!1145)

(assert (=> b!42730 (= lt!17834 lt!17833)))

(declare-fun res!25387 () Bool)

(declare-datatypes ((SeekEntryResult!203 0))(
  ( (MissingZero!203 (index!2934 (_ BitVec 32))) (Found!203 (index!2935 (_ BitVec 32))) (Intermediate!203 (undefined!1015 Bool) (index!2936 (_ BitVec 32)) (x!8144 (_ BitVec 32))) (Undefined!203) (MissingVacant!203 (index!2937 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2821 (_ BitVec 32)) SeekEntryResult!203)

(assert (=> b!42730 (= res!25387 (= (seekEntryOrOpen!0 (select (arr!1354 lt!17768) #b00000000000000000000000000000000) lt!17768 mask!853) (Found!203 #b00000000000000000000000000000000)))))

(assert (=> b!42730 (=> (not res!25387) (not e!27079))))

(assert (= (and d!7797 (not res!25388)) b!42729))

(assert (= (and b!42729 c!5419) b!42730))

(assert (= (and b!42729 (not c!5419)) b!42728))

(assert (= (and b!42730 res!25387) b!42727))

(assert (= (or b!42727 b!42728) bm!3362))

(declare-fun m!36379 () Bool)

(assert (=> bm!3362 m!36379))

(declare-fun m!36381 () Bool)

(assert (=> b!42729 m!36381))

(assert (=> b!42729 m!36381))

(declare-fun m!36383 () Bool)

(assert (=> b!42729 m!36383))

(assert (=> b!42730 m!36381))

(declare-fun m!36385 () Bool)

(assert (=> b!42730 m!36385))

(declare-fun m!36387 () Bool)

(assert (=> b!42730 m!36387))

(assert (=> b!42730 m!36381))

(declare-fun m!36389 () Bool)

(assert (=> b!42730 m!36389))

(assert (=> b!42627 d!7797))

(declare-fun d!7809 () Bool)

(assert (=> d!7809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17768 mask!853)))

(declare-fun lt!17843 () Unit!1145)

(declare-fun choose!34 (array!2821 (_ BitVec 32) (_ BitVec 32)) Unit!1145)

(assert (=> d!7809 (= lt!17843 (choose!34 lt!17768 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7809 (validMask!0 mask!853)))

(assert (=> d!7809 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17768 mask!853 #b00000000000000000000000000000000) lt!17843)))

(declare-fun bs!1889 () Bool)

(assert (= bs!1889 d!7809))

(assert (=> bs!1889 m!36291))

(declare-fun m!36407 () Bool)

(assert (=> bs!1889 m!36407))

(assert (=> bs!1889 m!36287))

(assert (=> b!42627 d!7809))

(declare-fun b!42755 () Bool)

(declare-fun e!27101 () (_ BitVec 32))

(assert (=> b!42755 (= e!27101 #b00000000000000000000000000000000)))

(declare-fun b!42756 () Bool)

(declare-fun e!27100 () (_ BitVec 32))

(declare-fun call!3368 () (_ BitVec 32))

(assert (=> b!42756 (= e!27100 call!3368)))

(declare-fun bm!3365 () Bool)

(assert (=> bm!3365 (= call!3368 (arrayCountValidKeys!0 lt!17768 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42757 () Bool)

(assert (=> b!42757 (= e!27101 e!27100)))

(declare-fun c!5424 () Bool)

(assert (=> b!42757 (= c!5424 (validKeyInArray!0 (select (arr!1354 lt!17768) #b00000000000000000000000000000000)))))

(declare-fun b!42758 () Bool)

(assert (=> b!42758 (= e!27100 (bvadd #b00000000000000000000000000000001 call!3368))))

(declare-fun d!7819 () Bool)

(declare-fun lt!17849 () (_ BitVec 32))

(assert (=> d!7819 (and (bvsge lt!17849 #b00000000000000000000000000000000) (bvsle lt!17849 (bvsub (size!1530 lt!17768) #b00000000000000000000000000000000)))))

(assert (=> d!7819 (= lt!17849 e!27101)))

(declare-fun c!5425 () Bool)

(assert (=> d!7819 (= c!5425 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7819 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1530 lt!17768)))))

(assert (=> d!7819 (= (arrayCountValidKeys!0 lt!17768 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17849)))

(assert (= (and d!7819 c!5425) b!42755))

(assert (= (and d!7819 (not c!5425)) b!42757))

(assert (= (and b!42757 c!5424) b!42758))

(assert (= (and b!42757 (not c!5424)) b!42756))

(assert (= (or b!42758 b!42756) bm!3365))

(declare-fun m!36415 () Bool)

(assert (=> bm!3365 m!36415))

(assert (=> b!42757 m!36381))

(assert (=> b!42757 m!36381))

(assert (=> b!42757 m!36383))

(assert (=> b!42627 d!7819))

(declare-fun d!7823 () Bool)

(assert (=> d!7823 (= (arrayCountValidKeys!0 lt!17768 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17852 () Unit!1145)

(declare-fun choose!59 (array!2821 (_ BitVec 32) (_ BitVec 32)) Unit!1145)

(assert (=> d!7823 (= lt!17852 (choose!59 lt!17768 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7823 (bvslt (size!1530 lt!17768) #b01111111111111111111111111111111)))

(assert (=> d!7823 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17768 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17852)))

(declare-fun bs!1890 () Bool)

(assert (= bs!1890 d!7823))

(assert (=> bs!1890 m!36295))

(declare-fun m!36417 () Bool)

(assert (=> bs!1890 m!36417))

(assert (=> b!42627 d!7823))

(declare-fun d!7825 () Bool)

(declare-fun res!25409 () Bool)

(declare-fun e!27106 () Bool)

(assert (=> d!7825 (=> res!25409 e!27106)))

(assert (=> d!7825 (= res!25409 (is-Nil!1158 Nil!1158))))

(assert (=> d!7825 (= (noDuplicate!30 Nil!1158) e!27106)))

(declare-fun b!42763 () Bool)

(declare-fun e!27107 () Bool)

(assert (=> b!42763 (= e!27106 e!27107)))

(declare-fun res!25410 () Bool)

(assert (=> b!42763 (=> (not res!25410) (not e!27107))))

(assert (=> b!42763 (= res!25410 (not (contains!558 (t!4116 Nil!1158) (h!1734 Nil!1158))))))

(declare-fun b!42764 () Bool)

(assert (=> b!42764 (= e!27107 (noDuplicate!30 (t!4116 Nil!1158)))))

(assert (= (and d!7825 (not res!25409)) b!42763))

(assert (= (and b!42763 res!25410) b!42764))

