; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6204 () Bool)

(assert start!6204)

(declare-fun res!25192 () Bool)

(declare-fun e!26799 () Bool)

(assert (=> start!6204 (=> (not res!25192) (not e!26799))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6204 (= res!25192 (validMask!0 mask!853))))

(assert (=> start!6204 e!26799))

(assert (=> start!6204 true))

(declare-fun b!42330 () Bool)

(assert (=> b!42330 (= e!26799 (not (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111)))))

(declare-datatypes ((array!2799 0))(
  ( (array!2800 (arr!1343 (Array (_ BitVec 32) (_ BitVec 64))) (size!1510 (_ BitVec 32))) )
))
(declare-fun lt!17497 () array!2799)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2799 (_ BitVec 32)) Bool)

(assert (=> b!42330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17497 mask!853)))

(declare-datatypes ((Unit!1123 0))(
  ( (Unit!1124) )
))
(declare-fun lt!17496 () Unit!1123)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2799 (_ BitVec 32) (_ BitVec 32)) Unit!1123)

(assert (=> b!42330 (= lt!17496 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17497 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2799 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42330 (= (arrayCountValidKeys!0 lt!17497 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17495 () Unit!1123)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2799 (_ BitVec 32) (_ BitVec 32)) Unit!1123)

(assert (=> b!42330 (= lt!17495 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17497 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42330 (= lt!17497 (array!2800 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6204 res!25192) b!42330))

(declare-fun m!35973 () Bool)

(assert (=> start!6204 m!35973))

(declare-fun m!35975 () Bool)

(assert (=> b!42330 m!35975))

(declare-fun m!35977 () Bool)

(assert (=> b!42330 m!35977))

(declare-fun m!35979 () Bool)

(assert (=> b!42330 m!35979))

(declare-fun m!35981 () Bool)

(assert (=> b!42330 m!35981))

(check-sat (not start!6204) (not b!42330))
(check-sat)
(get-model)

(declare-fun d!7673 () Bool)

(assert (=> d!7673 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6204 d!7673))

(declare-fun b!42350 () Bool)

(declare-fun e!26816 () Bool)

(declare-fun e!26815 () Bool)

(assert (=> b!42350 (= e!26816 e!26815)))

(declare-fun c!5322 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42350 (= c!5322 (validKeyInArray!0 (select (arr!1343 lt!17497) #b00000000000000000000000000000000)))))

(declare-fun b!42352 () Bool)

(declare-fun call!3301 () Bool)

(assert (=> b!42352 (= e!26815 call!3301)))

(declare-fun bm!3298 () Bool)

(assert (=> bm!3298 (= call!3301 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17497 mask!853))))

(declare-fun b!42353 () Bool)

(declare-fun e!26817 () Bool)

(assert (=> b!42353 (= e!26817 call!3301)))

(declare-fun b!42351 () Bool)

(assert (=> b!42351 (= e!26815 e!26817)))

(declare-fun lt!17520 () (_ BitVec 64))

(assert (=> b!42351 (= lt!17520 (select (arr!1343 lt!17497) #b00000000000000000000000000000000))))

(declare-fun lt!17519 () Unit!1123)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2799 (_ BitVec 64) (_ BitVec 32)) Unit!1123)

(assert (=> b!42351 (= lt!17519 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17497 lt!17520 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42351 (arrayContainsKey!0 lt!17497 lt!17520 #b00000000000000000000000000000000)))

(declare-fun lt!17521 () Unit!1123)

(assert (=> b!42351 (= lt!17521 lt!17519)))

(declare-fun res!25205 () Bool)

(declare-datatypes ((SeekEntryResult!192 0))(
  ( (MissingZero!192 (index!2890 (_ BitVec 32))) (Found!192 (index!2891 (_ BitVec 32))) (Intermediate!192 (undefined!1004 Bool) (index!2892 (_ BitVec 32)) (x!8101 (_ BitVec 32))) (Undefined!192) (MissingVacant!192 (index!2893 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2799 (_ BitVec 32)) SeekEntryResult!192)

(assert (=> b!42351 (= res!25205 (= (seekEntryOrOpen!0 (select (arr!1343 lt!17497) #b00000000000000000000000000000000) lt!17497 mask!853) (Found!192 #b00000000000000000000000000000000)))))

(assert (=> b!42351 (=> (not res!25205) (not e!26817))))

(declare-fun d!7679 () Bool)

(declare-fun res!25204 () Bool)

(assert (=> d!7679 (=> res!25204 e!26816)))

(assert (=> d!7679 (= res!25204 (bvsge #b00000000000000000000000000000000 (size!1510 lt!17497)))))

(assert (=> d!7679 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17497 mask!853) e!26816)))

(assert (= (and d!7679 (not res!25204)) b!42350))

(assert (= (and b!42350 c!5322) b!42351))

(assert (= (and b!42350 (not c!5322)) b!42352))

(assert (= (and b!42351 res!25205) b!42353))

(assert (= (or b!42353 b!42352) bm!3298))

(declare-fun m!35993 () Bool)

(assert (=> b!42350 m!35993))

(assert (=> b!42350 m!35993))

(declare-fun m!35995 () Bool)

(assert (=> b!42350 m!35995))

(declare-fun m!35997 () Bool)

(assert (=> bm!3298 m!35997))

(assert (=> b!42351 m!35993))

(declare-fun m!35999 () Bool)

(assert (=> b!42351 m!35999))

(declare-fun m!36001 () Bool)

(assert (=> b!42351 m!36001))

(assert (=> b!42351 m!35993))

(declare-fun m!36003 () Bool)

(assert (=> b!42351 m!36003))

(assert (=> b!42330 d!7679))

(declare-fun d!7685 () Bool)

(assert (=> d!7685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17497 mask!853)))

(declare-fun lt!17536 () Unit!1123)

(declare-fun choose!34 (array!2799 (_ BitVec 32) (_ BitVec 32)) Unit!1123)

(assert (=> d!7685 (= lt!17536 (choose!34 lt!17497 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7685 (validMask!0 mask!853)))

(assert (=> d!7685 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17497 mask!853 #b00000000000000000000000000000000) lt!17536)))

(declare-fun bs!1855 () Bool)

(assert (= bs!1855 d!7685))

(assert (=> bs!1855 m!35975))

(declare-fun m!36029 () Bool)

(assert (=> bs!1855 m!36029))

(assert (=> bs!1855 m!35973))

(assert (=> b!42330 d!7685))

(declare-fun d!7691 () Bool)

(declare-fun lt!17547 () (_ BitVec 32))

(assert (=> d!7691 (and (bvsge lt!17547 #b00000000000000000000000000000000) (bvsle lt!17547 (bvsub (size!1510 lt!17497) #b00000000000000000000000000000000)))))

(declare-fun e!26838 () (_ BitVec 32))

(assert (=> d!7691 (= lt!17547 e!26838)))

(declare-fun c!5335 () Bool)

(assert (=> d!7691 (= c!5335 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7691 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1510 lt!17497)))))

(assert (=> d!7691 (= (arrayCountValidKeys!0 lt!17497 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17547)))

(declare-fun b!42386 () Bool)

(declare-fun e!26839 () (_ BitVec 32))

(assert (=> b!42386 (= e!26838 e!26839)))

(declare-fun c!5336 () Bool)

(assert (=> b!42386 (= c!5336 (validKeyInArray!0 (select (arr!1343 lt!17497) #b00000000000000000000000000000000)))))

(declare-fun b!42387 () Bool)

(declare-fun call!3310 () (_ BitVec 32))

(assert (=> b!42387 (= e!26839 call!3310)))

(declare-fun bm!3307 () Bool)

(assert (=> bm!3307 (= call!3310 (arrayCountValidKeys!0 lt!17497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42388 () Bool)

(assert (=> b!42388 (= e!26839 (bvadd #b00000000000000000000000000000001 call!3310))))

(declare-fun b!42389 () Bool)

(assert (=> b!42389 (= e!26838 #b00000000000000000000000000000000)))

(assert (= (and d!7691 c!5335) b!42389))

(assert (= (and d!7691 (not c!5335)) b!42386))

(assert (= (and b!42386 c!5336) b!42388))

(assert (= (and b!42386 (not c!5336)) b!42387))

(assert (= (or b!42388 b!42387) bm!3307))

(assert (=> b!42386 m!35993))

(assert (=> b!42386 m!35993))

(assert (=> b!42386 m!35995))

(declare-fun m!36035 () Bool)

(assert (=> bm!3307 m!36035))

(assert (=> b!42330 d!7691))

(declare-fun d!7697 () Bool)

(assert (=> d!7697 (= (arrayCountValidKeys!0 lt!17497 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17553 () Unit!1123)

(declare-fun choose!59 (array!2799 (_ BitVec 32) (_ BitVec 32)) Unit!1123)

(assert (=> d!7697 (= lt!17553 (choose!59 lt!17497 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7697 (bvslt (size!1510 lt!17497) #b01111111111111111111111111111111)))

(assert (=> d!7697 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17497 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17553)))

(declare-fun bs!1858 () Bool)

(assert (= bs!1858 d!7697))

(assert (=> bs!1858 m!35979))

(declare-fun m!36039 () Bool)

(assert (=> bs!1858 m!36039))

(assert (=> b!42330 d!7697))

(check-sat (not bm!3307) (not bm!3298) (not b!42350) (not d!7697) (not b!42386) (not b!42351) (not d!7685))
(check-sat)
