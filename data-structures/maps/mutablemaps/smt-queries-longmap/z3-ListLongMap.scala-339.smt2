; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6174 () Bool)

(assert start!6174)

(declare-fun res!25174 () Bool)

(declare-fun e!26763 () Bool)

(assert (=> start!6174 (=> (not res!25174) (not e!26763))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6174 (= res!25174 (validMask!0 mask!853))))

(assert (=> start!6174 e!26763))

(assert (=> start!6174 true))

(declare-fun b!42276 () Bool)

(assert (=> b!42276 (= e!26763 (not (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2787 0))(
  ( (array!2788 (arr!1337 (Array (_ BitVec 32) (_ BitVec 64))) (size!1501 (_ BitVec 32))) )
))
(declare-fun lt!17427 () array!2787)

(declare-fun arrayCountValidKeys!0 (array!2787 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42276 (= (arrayCountValidKeys!0 lt!17427 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1111 0))(
  ( (Unit!1112) )
))
(declare-fun lt!17428 () Unit!1111)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2787 (_ BitVec 32) (_ BitVec 32)) Unit!1111)

(assert (=> b!42276 (= lt!17428 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17427 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42276 (= lt!17427 (array!2788 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6174 res!25174) b!42276))

(declare-fun m!35897 () Bool)

(assert (=> start!6174 m!35897))

(declare-fun m!35899 () Bool)

(assert (=> b!42276 m!35899))

(declare-fun m!35901 () Bool)

(assert (=> b!42276 m!35901))

(check-sat (not b!42276) (not start!6174))
(check-sat)
(get-model)

(declare-fun d!7651 () Bool)

(declare-fun lt!17437 () (_ BitVec 32))

(assert (=> d!7651 (and (bvsge lt!17437 #b00000000000000000000000000000000) (bvsle lt!17437 (bvsub (size!1501 lt!17427) #b00000000000000000000000000000000)))))

(declare-fun e!26771 () (_ BitVec 32))

(assert (=> d!7651 (= lt!17437 e!26771)))

(declare-fun c!5304 () Bool)

(assert (=> d!7651 (= c!5304 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7651 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1501 lt!17427)))))

(assert (=> d!7651 (= (arrayCountValidKeys!0 lt!17427 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17437)))

(declare-fun b!42288 () Bool)

(declare-fun e!26772 () (_ BitVec 32))

(declare-fun call!3290 () (_ BitVec 32))

(assert (=> b!42288 (= e!26772 (bvadd #b00000000000000000000000000000001 call!3290))))

(declare-fun bm!3287 () Bool)

(assert (=> bm!3287 (= call!3290 (arrayCountValidKeys!0 lt!17427 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42289 () Bool)

(assert (=> b!42289 (= e!26771 e!26772)))

(declare-fun c!5305 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42289 (= c!5305 (validKeyInArray!0 (select (arr!1337 lt!17427) #b00000000000000000000000000000000)))))

(declare-fun b!42290 () Bool)

(assert (=> b!42290 (= e!26772 call!3290)))

(declare-fun b!42291 () Bool)

(assert (=> b!42291 (= e!26771 #b00000000000000000000000000000000)))

(assert (= (and d!7651 c!5304) b!42291))

(assert (= (and d!7651 (not c!5304)) b!42289))

(assert (= (and b!42289 c!5305) b!42288))

(assert (= (and b!42289 (not c!5305)) b!42290))

(assert (= (or b!42288 b!42290) bm!3287))

(declare-fun m!35909 () Bool)

(assert (=> bm!3287 m!35909))

(declare-fun m!35911 () Bool)

(assert (=> b!42289 m!35911))

(assert (=> b!42289 m!35911))

(declare-fun m!35913 () Bool)

(assert (=> b!42289 m!35913))

(assert (=> b!42276 d!7651))

(declare-fun d!7657 () Bool)

(assert (=> d!7657 (= (arrayCountValidKeys!0 lt!17427 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17440 () Unit!1111)

(declare-fun choose!59 (array!2787 (_ BitVec 32) (_ BitVec 32)) Unit!1111)

(assert (=> d!7657 (= lt!17440 (choose!59 lt!17427 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7657 (bvslt (size!1501 lt!17427) #b01111111111111111111111111111111)))

(assert (=> d!7657 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17427 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17440)))

(declare-fun bs!1846 () Bool)

(assert (= bs!1846 d!7657))

(assert (=> bs!1846 m!35899))

(declare-fun m!35915 () Bool)

(assert (=> bs!1846 m!35915))

(assert (=> b!42276 d!7657))

(declare-fun d!7659 () Bool)

(assert (=> d!7659 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6174 d!7659))

(check-sat (not d!7657) (not bm!3287) (not b!42289))
(check-sat)
