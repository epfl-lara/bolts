; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6202 () Bool)

(assert start!6202)

(declare-fun res!25189 () Bool)

(declare-fun e!26796 () Bool)

(assert (=> start!6202 (=> (not res!25189) (not e!26796))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6202 (= res!25189 (validMask!0 mask!853))))

(assert (=> start!6202 e!26796))

(assert (=> start!6202 true))

(declare-fun b!42327 () Bool)

(assert (=> b!42327 (= e!26796 (not (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111)))))

(declare-datatypes ((array!2797 0))(
  ( (array!2798 (arr!1342 (Array (_ BitVec 32) (_ BitVec 64))) (size!1509 (_ BitVec 32))) )
))
(declare-fun lt!17487 () array!2797)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2797 (_ BitVec 32)) Bool)

(assert (=> b!42327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17487 mask!853)))

(declare-datatypes ((Unit!1121 0))(
  ( (Unit!1122) )
))
(declare-fun lt!17486 () Unit!1121)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2797 (_ BitVec 32) (_ BitVec 32)) Unit!1121)

(assert (=> b!42327 (= lt!17486 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17487 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2797 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42327 (= (arrayCountValidKeys!0 lt!17487 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17488 () Unit!1121)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2797 (_ BitVec 32) (_ BitVec 32)) Unit!1121)

(assert (=> b!42327 (= lt!17488 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17487 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42327 (= lt!17487 (array!2798 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6202 res!25189) b!42327))

(declare-fun m!35963 () Bool)

(assert (=> start!6202 m!35963))

(declare-fun m!35965 () Bool)

(assert (=> b!42327 m!35965))

(declare-fun m!35967 () Bool)

(assert (=> b!42327 m!35967))

(declare-fun m!35969 () Bool)

(assert (=> b!42327 m!35969))

(declare-fun m!35971 () Bool)

(assert (=> b!42327 m!35971))

(push 1)

(assert (not start!6202))

(assert (not b!42327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7675 () Bool)

(assert (=> d!7675 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6202 d!7675))

(declare-fun b!42356 () Bool)

(declare-fun e!26822 () Bool)

(declare-fun e!26820 () Bool)

(assert (=> b!42356 (= e!26822 e!26820)))

(declare-fun c!5323 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42356 (= c!5323 (validKeyInArray!0 (select (arr!1342 lt!17487) #b00000000000000000000000000000000)))))

(declare-fun bm!3299 () Bool)

(declare-fun call!3302 () Bool)

(assert (=> bm!3299 (= call!3302 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17487 mask!853))))

(declare-fun b!42357 () Bool)

(assert (=> b!42357 (= e!26820 call!3302)))

(declare-fun d!7681 () Bool)

(declare-fun res!25208 () Bool)

(assert (=> d!7681 (=> res!25208 e!26822)))

(assert (=> d!7681 (= res!25208 (bvsge #b00000000000000000000000000000000 (size!1509 lt!17487)))))

(assert (=> d!7681 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17487 mask!853) e!26822)))

(declare-fun b!42358 () Bool)

(declare-fun e!26821 () Bool)

(assert (=> b!42358 (= e!26820 e!26821)))

(declare-fun lt!17522 () (_ BitVec 64))

(assert (=> b!42358 (= lt!17522 (select (arr!1342 lt!17487) #b00000000000000000000000000000000))))

(declare-fun lt!17523 () Unit!1121)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2797 (_ BitVec 64) (_ BitVec 32)) Unit!1121)

(assert (=> b!42358 (= lt!17523 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17487 lt!17522 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42358 (arrayContainsKey!0 lt!17487 lt!17522 #b00000000000000000000000000000000)))

(declare-fun lt!17524 () Unit!1121)

(assert (=> b!42358 (= lt!17524 lt!17523)))

(declare-fun res!25209 () Bool)

(declare-datatypes ((SeekEntryResult!193 0))(
  ( (MissingZero!193 (index!2894 (_ BitVec 32))) (Found!193 (index!2895 (_ BitVec 32))) (Intermediate!193 (undefined!1005 Bool) (index!2896 (_ BitVec 32)) (x!8102 (_ BitVec 32))) (Undefined!193) (MissingVacant!193 (index!2897 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2797 (_ BitVec 32)) SeekEntryResult!193)

(assert (=> b!42358 (= res!25209 (= (seekEntryOrOpen!0 (select (arr!1342 lt!17487) #b00000000000000000000000000000000) lt!17487 mask!853) (Found!193 #b00000000000000000000000000000000)))))

(assert (=> b!42358 (=> (not res!25209) (not e!26821))))

(declare-fun b!42359 () Bool)

(assert (=> b!42359 (= e!26821 call!3302)))

(assert (= (and d!7681 (not res!25208)) b!42356))

(assert (= (and b!42356 c!5323) b!42358))

(assert (= (and b!42356 (not c!5323)) b!42357))

(assert (= (and b!42358 res!25209) b!42359))

(assert (= (or b!42359 b!42357) bm!3299))

(declare-fun m!36005 () Bool)

(assert (=> b!42356 m!36005))

(assert (=> b!42356 m!36005))

(declare-fun m!36007 () Bool)

(assert (=> b!42356 m!36007))

(declare-fun m!36009 () Bool)

(assert (=> bm!3299 m!36009))

(assert (=> b!42358 m!36005))

(declare-fun m!36011 () Bool)

(assert (=> b!42358 m!36011))

(declare-fun m!36013 () Bool)

(assert (=> b!42358 m!36013))

(assert (=> b!42358 m!36005))

(declare-fun m!36015 () Bool)

(assert (=> b!42358 m!36015))

(assert (=> b!42327 d!7681))

(declare-fun d!7687 () Bool)

(assert (=> d!7687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17487 mask!853)))

(declare-fun lt!17539 () Unit!1121)

(declare-fun choose!34 (array!2797 (_ BitVec 32) (_ BitVec 32)) Unit!1121)

(assert (=> d!7687 (= lt!17539 (choose!34 lt!17487 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7687 (validMask!0 mask!853)))

(assert (=> d!7687 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17487 mask!853 #b00000000000000000000000000000000) lt!17539)))

(declare-fun bs!1856 () Bool)

(assert (= bs!1856 d!7687))

(assert (=> bs!1856 m!35965))

(declare-fun m!36031 () Bool)

(assert (=> bs!1856 m!36031))

(assert (=> bs!1856 m!35963))

(assert (=> b!42327 d!7687))

(declare-fun b!42390 () Bool)

(declare-fun e!26840 () (_ BitVec 32))

(declare-fun call!3311 () (_ BitVec 32))

(assert (=> b!42390 (= e!26840 call!3311)))

(declare-fun b!42391 () Bool)

(declare-fun e!26841 () (_ BitVec 32))

(assert (=> b!42391 (= e!26841 #b00000000000000000000000000000000)))

(declare-fun d!7693 () Bool)

(declare-fun lt!17548 () (_ BitVec 32))

(assert (=> d!7693 (and (bvsge lt!17548 #b00000000000000000000000000000000) (bvsle lt!17548 (bvsub (size!1509 lt!17487) #b00000000000000000000000000000000)))))

(assert (=> d!7693 (= lt!17548 e!26841)))

(declare-fun c!5338 () Bool)

(assert (=> d!7693 (= c!5338 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7693 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1509 lt!17487)))))

(assert (=> d!7693 (= (arrayCountValidKeys!0 lt!17487 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17548)))

(declare-fun b!42392 () Bool)

(assert (=> b!42392 (= e!26840 (bvadd #b00000000000000000000000000000001 call!3311))))

(declare-fun b!42393 () Bool)

(assert (=> b!42393 (= e!26841 e!26840)))

(declare-fun c!5337 () Bool)

(assert (=> b!42393 (= c!5337 (validKeyInArray!0 (select (arr!1342 lt!17487) #b00000000000000000000000000000000)))))

(declare-fun bm!3308 () Bool)

(assert (=> bm!3308 (= call!3311 (arrayCountValidKeys!0 lt!17487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7693 c!5338) b!42391))

(assert (= (and d!7693 (not c!5338)) b!42393))

(assert (= (and b!42393 c!5337) b!42392))

(assert (= (and b!42393 (not c!5337)) b!42390))

(assert (= (or b!42392 b!42390) bm!3308))

(assert (=> b!42393 m!36005))

(assert (=> b!42393 m!36005))

(assert (=> b!42393 m!36007))

(declare-fun m!36037 () Bool)

(assert (=> bm!3308 m!36037))

(assert (=> b!42327 d!7693))

(declare-fun d!7699 () Bool)

(assert (=> d!7699 (= (arrayCountValidKeys!0 lt!17487 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17556 () Unit!1121)

(declare-fun choose!59 (array!2797 (_ BitVec 32) (_ BitVec 32)) Unit!1121)

(assert (=> d!7699 (= lt!17556 (choose!59 lt!17487 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7699 (bvslt (size!1509 lt!17487) #b01111111111111111111111111111111)))

(assert (=> d!7699 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17487 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17556)))

(declare-fun bs!1859 () Bool)

(assert (= bs!1859 d!7699))

(assert (=> bs!1859 m!35969))

(declare-fun m!36041 () Bool)

(assert (=> bs!1859 m!36041))

(assert (=> b!42327 d!7699))

(push 1)

