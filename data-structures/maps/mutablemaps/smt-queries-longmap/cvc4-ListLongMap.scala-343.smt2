; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6248 () Bool)

(assert start!6248)

(declare-fun res!25231 () Bool)

(declare-fun e!26865 () Bool)

(assert (=> start!6248 (=> (not res!25231) (not e!26865))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6248 (= res!25231 (validMask!0 mask!853))))

(assert (=> start!6248 e!26865))

(assert (=> start!6248 true))

(declare-fun b!42423 () Bool)

(assert (=> b!42423 (= e!26865 (not (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))))

(declare-datatypes ((array!2813 0))(
  ( (array!2814 (arr!1350 (Array (_ BitVec 32) (_ BitVec 64))) (size!1520 (_ BitVec 32))) )
))
(declare-fun lt!17613 () array!2813)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2813 (_ BitVec 32)) Bool)

(assert (=> b!42423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17613 mask!853)))

(declare-datatypes ((Unit!1137 0))(
  ( (Unit!1138) )
))
(declare-fun lt!17614 () Unit!1137)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2813 (_ BitVec 32) (_ BitVec 32)) Unit!1137)

(assert (=> b!42423 (= lt!17614 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17613 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2813 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42423 (= (arrayCountValidKeys!0 lt!17613 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17612 () Unit!1137)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2813 (_ BitVec 32) (_ BitVec 32)) Unit!1137)

(assert (=> b!42423 (= lt!17612 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17613 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42423 (= lt!17613 (array!2814 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6248 res!25231) b!42423))

(declare-fun m!36097 () Bool)

(assert (=> start!6248 m!36097))

(declare-fun m!36099 () Bool)

(assert (=> b!42423 m!36099))

(declare-fun m!36101 () Bool)

(assert (=> b!42423 m!36101))

(declare-fun m!36103 () Bool)

(assert (=> b!42423 m!36103))

(declare-fun m!36105 () Bool)

(assert (=> b!42423 m!36105))

(push 1)

(assert (not b!42423))

(assert (not start!6248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!42444 () Bool)

(declare-fun e!26881 () Bool)

(declare-fun call!3320 () Bool)

(assert (=> b!42444 (= e!26881 call!3320)))

(declare-fun bm!3317 () Bool)

(assert (=> bm!3317 (= call!3320 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17613 mask!853))))

(declare-fun b!42445 () Bool)

(declare-fun e!26882 () Bool)

(assert (=> b!42445 (= e!26882 e!26881)))

(declare-fun lt!17632 () (_ BitVec 64))

(assert (=> b!42445 (= lt!17632 (select (arr!1350 lt!17613) #b00000000000000000000000000000000))))

(declare-fun lt!17630 () Unit!1137)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2813 (_ BitVec 64) (_ BitVec 32)) Unit!1137)

(assert (=> b!42445 (= lt!17630 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17613 lt!17632 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42445 (arrayContainsKey!0 lt!17613 lt!17632 #b00000000000000000000000000000000)))

(declare-fun lt!17631 () Unit!1137)

(assert (=> b!42445 (= lt!17631 lt!17630)))

(declare-fun res!25242 () Bool)

(declare-datatypes ((SeekEntryResult!196 0))(
  ( (MissingZero!196 (index!2906 (_ BitVec 32))) (Found!196 (index!2907 (_ BitVec 32))) (Intermediate!196 (undefined!1008 Bool) (index!2908 (_ BitVec 32)) (x!8121 (_ BitVec 32))) (Undefined!196) (MissingVacant!196 (index!2909 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2813 (_ BitVec 32)) SeekEntryResult!196)

(assert (=> b!42445 (= res!25242 (= (seekEntryOrOpen!0 (select (arr!1350 lt!17613) #b00000000000000000000000000000000) lt!17613 mask!853) (Found!196 #b00000000000000000000000000000000)))))

(assert (=> b!42445 (=> (not res!25242) (not e!26881))))

(declare-fun d!7711 () Bool)

(declare-fun res!25243 () Bool)

(declare-fun e!26883 () Bool)

(assert (=> d!7711 (=> res!25243 e!26883)))

(assert (=> d!7711 (= res!25243 (bvsge #b00000000000000000000000000000000 (size!1520 lt!17613)))))

(assert (=> d!7711 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17613 mask!853) e!26883)))

(declare-fun b!42446 () Bool)

(assert (=> b!42446 (= e!26882 call!3320)))

(declare-fun b!42447 () Bool)

(assert (=> b!42447 (= e!26883 e!26882)))

(declare-fun c!5350 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42447 (= c!5350 (validKeyInArray!0 (select (arr!1350 lt!17613) #b00000000000000000000000000000000)))))

(assert (= (and d!7711 (not res!25243)) b!42447))

(assert (= (and b!42447 c!5350) b!42445))

(assert (= (and b!42447 (not c!5350)) b!42446))

(assert (= (and b!42445 res!25242) b!42444))

(assert (= (or b!42444 b!42446) bm!3317))

(declare-fun m!36119 () Bool)

(assert (=> bm!3317 m!36119))

(declare-fun m!36121 () Bool)

(assert (=> b!42445 m!36121))

(declare-fun m!36123 () Bool)

(assert (=> b!42445 m!36123))

(declare-fun m!36125 () Bool)

(assert (=> b!42445 m!36125))

(assert (=> b!42445 m!36121))

(declare-fun m!36127 () Bool)

(assert (=> b!42445 m!36127))

(assert (=> b!42447 m!36121))

(assert (=> b!42447 m!36121))

(declare-fun m!36129 () Bool)

(assert (=> b!42447 m!36129))

(assert (=> b!42423 d!7711))

(declare-fun d!7717 () Bool)

(assert (=> d!7717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17613 mask!853)))

(declare-fun lt!17644 () Unit!1137)

(declare-fun choose!34 (array!2813 (_ BitVec 32) (_ BitVec 32)) Unit!1137)

(assert (=> d!7717 (= lt!17644 (choose!34 lt!17613 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7717 (validMask!0 mask!853)))

(assert (=> d!7717 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17613 mask!853 #b00000000000000000000000000000000) lt!17644)))

(declare-fun bs!1868 () Bool)

(assert (= bs!1868 d!7717))

(assert (=> bs!1868 m!36099))

(declare-fun m!36133 () Bool)

(assert (=> bs!1868 m!36133))

(assert (=> bs!1868 m!36097))

(assert (=> b!42423 d!7717))

(declare-fun bm!3326 () Bool)

(declare-fun call!3329 () (_ BitVec 32))

(assert (=> bm!3326 (= call!3329 (arrayCountValidKeys!0 lt!17613 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42480 () Bool)

(declare-fun e!26904 () (_ BitVec 32))

(assert (=> b!42480 (= e!26904 (bvadd #b00000000000000000000000000000001 call!3329))))

(declare-fun b!42481 () Bool)

(declare-fun e!26903 () (_ BitVec 32))

(assert (=> b!42481 (= e!26903 e!26904)))

(declare-fun c!5364 () Bool)

(assert (=> b!42481 (= c!5364 (validKeyInArray!0 (select (arr!1350 lt!17613) #b00000000000000000000000000000000)))))

(declare-fun b!42482 () Bool)

(assert (=> b!42482 (= e!26903 #b00000000000000000000000000000000)))

(declare-fun b!42483 () Bool)

(assert (=> b!42483 (= e!26904 call!3329)))

(declare-fun d!7721 () Bool)

(declare-fun lt!17658 () (_ BitVec 32))

(assert (=> d!7721 (and (bvsge lt!17658 #b00000000000000000000000000000000) (bvsle lt!17658 (bvsub (size!1520 lt!17613) #b00000000000000000000000000000000)))))

(assert (=> d!7721 (= lt!17658 e!26903)))

(declare-fun c!5365 () Bool)

(assert (=> d!7721 (= c!5365 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7721 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1520 lt!17613)))))

(assert (=> d!7721 (= (arrayCountValidKeys!0 lt!17613 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17658)))

(assert (= (and d!7721 c!5365) b!42482))

(assert (= (and d!7721 (not c!5365)) b!42481))

(assert (= (and b!42481 c!5364) b!42480))

(assert (= (and b!42481 (not c!5364)) b!42483))

(assert (= (or b!42480 b!42483) bm!3326))

(declare-fun m!36153 () Bool)

(assert (=> bm!3326 m!36153))

(assert (=> b!42481 m!36121))

(assert (=> b!42481 m!36121))

(assert (=> b!42481 m!36129))

(assert (=> b!42423 d!7721))

