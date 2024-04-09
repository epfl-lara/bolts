; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6326 () Bool)

(assert start!6326)

(declare-fun b!42651 () Bool)

(declare-fun e!27023 () Bool)

(declare-fun e!27024 () Bool)

(assert (=> b!42651 (= e!27023 (not e!27024))))

(declare-fun res!25351 () Bool)

(assert (=> b!42651 (=> res!25351 e!27024)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!42651 (= res!25351 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2825 0))(
  ( (array!2826 (arr!1356 (Array (_ BitVec 32) (_ BitVec 64))) (size!1532 (_ BitVec 32))) )
))
(declare-fun lt!17787 () array!2825)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2825 (_ BitVec 32)) Bool)

(assert (=> b!42651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17787 mask!853)))

(declare-datatypes ((Unit!1149 0))(
  ( (Unit!1150) )
))
(declare-fun lt!17786 () Unit!1149)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2825 (_ BitVec 32) (_ BitVec 32)) Unit!1149)

(assert (=> b!42651 (= lt!17786 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17787 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2825 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42651 (= (arrayCountValidKeys!0 lt!17787 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17788 () Unit!1149)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2825 (_ BitVec 32) (_ BitVec 32)) Unit!1149)

(assert (=> b!42651 (= lt!17788 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17787 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42651 (= lt!17787 (array!2826 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun res!25353 () Bool)

(assert (=> start!6326 (=> (not res!25353) (not e!27023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6326 (= res!25353 (validMask!0 mask!853))))

(assert (=> start!6326 e!27023))

(assert (=> start!6326 true))

(declare-fun b!42652 () Bool)

(declare-fun res!25352 () Bool)

(assert (=> b!42652 (=> res!25352 e!27024)))

(declare-datatypes ((List!1163 0))(
  ( (Nil!1160) (Cons!1159 (h!1736 (_ BitVec 64)) (t!4118 List!1163)) )
))
(declare-fun contains!560 (List!1163 (_ BitVec 64)) Bool)

(assert (=> b!42652 (= res!25352 (contains!560 Nil!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42653 () Bool)

(declare-fun res!25354 () Bool)

(assert (=> b!42653 (=> res!25354 e!27024)))

(assert (=> b!42653 (= res!25354 (contains!560 Nil!1160 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42654 () Bool)

(declare-fun noDuplicate!32 (List!1163) Bool)

(assert (=> b!42654 (= e!27024 (noDuplicate!32 Nil!1160))))

(assert (= (and start!6326 res!25353) b!42651))

(assert (= (and b!42651 (not res!25351)) b!42652))

(assert (= (and b!42652 (not res!25352)) b!42653))

(assert (= (and b!42653 (not res!25354)) b!42654))

(declare-fun m!36319 () Bool)

(assert (=> b!42654 m!36319))

(declare-fun m!36321 () Bool)

(assert (=> start!6326 m!36321))

(declare-fun m!36323 () Bool)

(assert (=> b!42653 m!36323))

(declare-fun m!36325 () Bool)

(assert (=> b!42652 m!36325))

(declare-fun m!36327 () Bool)

(assert (=> b!42651 m!36327))

(declare-fun m!36329 () Bool)

(assert (=> b!42651 m!36329))

(declare-fun m!36331 () Bool)

(assert (=> b!42651 m!36331))

(declare-fun m!36333 () Bool)

(assert (=> b!42651 m!36333))

(push 1)

(assert (not b!42654))

(assert (not start!6326))

(assert (not b!42653))

(assert (not b!42652))

(assert (not b!42651))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!42681 () Bool)

(declare-fun e!27048 () Bool)

(declare-fun call!3356 () Bool)

(assert (=> b!42681 (= e!27048 call!3356)))

(declare-fun bm!3353 () Bool)

(assert (=> bm!3353 (= call!3356 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17787 mask!853))))

(declare-fun d!7787 () Bool)

(declare-fun res!25372 () Bool)

(declare-fun e!27046 () Bool)

(assert (=> d!7787 (=> res!25372 e!27046)))

(assert (=> d!7787 (= res!25372 (bvsge #b00000000000000000000000000000000 (size!1532 lt!17787)))))

(assert (=> d!7787 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17787 mask!853) e!27046)))

(declare-fun b!42682 () Bool)

(assert (=> b!42682 (= e!27046 e!27048)))

(declare-fun c!5404 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42682 (= c!5404 (validKeyInArray!0 (select (arr!1356 lt!17787) #b00000000000000000000000000000000)))))

(declare-fun b!42683 () Bool)

(declare-fun e!27047 () Bool)

(assert (=> b!42683 (= e!27047 call!3356)))

(declare-fun b!42684 () Bool)

(assert (=> b!42684 (= e!27048 e!27047)))

(declare-fun lt!17810 () (_ BitVec 64))

(assert (=> b!42684 (= lt!17810 (select (arr!1356 lt!17787) #b00000000000000000000000000000000))))

(declare-fun lt!17811 () Unit!1149)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2825 (_ BitVec 64) (_ BitVec 32)) Unit!1149)

(assert (=> b!42684 (= lt!17811 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17787 lt!17810 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42684 (arrayContainsKey!0 lt!17787 lt!17810 #b00000000000000000000000000000000)))

(declare-fun lt!17812 () Unit!1149)

(assert (=> b!42684 (= lt!17812 lt!17811)))

(declare-fun res!25371 () Bool)

(declare-datatypes ((SeekEntryResult!202 0))(
  ( (MissingZero!202 (index!2930 (_ BitVec 32))) (Found!202 (index!2931 (_ BitVec 32))) (Intermediate!202 (undefined!1014 Bool) (index!2932 (_ BitVec 32)) (x!8143 (_ BitVec 32))) (Undefined!202) (MissingVacant!202 (index!2933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2825 (_ BitVec 32)) SeekEntryResult!202)

(assert (=> b!42684 (= res!25371 (= (seekEntryOrOpen!0 (select (arr!1356 lt!17787) #b00000000000000000000000000000000) lt!17787 mask!853) (Found!202 #b00000000000000000000000000000000)))))

(assert (=> b!42684 (=> (not res!25371) (not e!27047))))

(assert (= (and d!7787 (not res!25372)) b!42682))

(assert (= (and b!42682 c!5404) b!42684))

(assert (= (and b!42682 (not c!5404)) b!42681))

(assert (= (and b!42684 res!25371) b!42683))

(assert (= (or b!42683 b!42681) bm!3353))

(declare-fun m!36355 () Bool)

(assert (=> bm!3353 m!36355))

(declare-fun m!36357 () Bool)

(assert (=> b!42682 m!36357))

(assert (=> b!42682 m!36357))

(declare-fun m!36359 () Bool)

(assert (=> b!42682 m!36359))

(assert (=> b!42684 m!36357))

(declare-fun m!36361 () Bool)

(assert (=> b!42684 m!36361))

(declare-fun m!36363 () Bool)

(assert (=> b!42684 m!36363))

(assert (=> b!42684 m!36357))

(declare-fun m!36365 () Bool)

(assert (=> b!42684 m!36365))

(assert (=> b!42651 d!7787))

(declare-fun d!7795 () Bool)

(assert (=> d!7795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17787 mask!853)))

(declare-fun lt!17818 () Unit!1149)

(declare-fun choose!34 (array!2825 (_ BitVec 32) (_ BitVec 32)) Unit!1149)

(assert (=> d!7795 (= lt!17818 (choose!34 lt!17787 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7795 (validMask!0 mask!853)))

(assert (=> d!7795 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17787 mask!853 #b00000000000000000000000000000000) lt!17818)))

(declare-fun bs!1886 () Bool)

(assert (= bs!1886 d!7795))

(assert (=> bs!1886 m!36327))

(declare-fun m!36369 () Bool)

(assert (=> bs!1886 m!36369))

(assert (=> bs!1886 m!36321))

(assert (=> b!42651 d!7795))

(declare-fun d!7801 () Bool)

(declare-fun lt!17830 () (_ BitVec 32))

(assert (=> d!7801 (and (bvsge lt!17830 #b00000000000000000000000000000000) (bvsle lt!17830 (bvsub (size!1532 lt!17787) #b00000000000000000000000000000000)))))

(declare-fun e!27071 () (_ BitVec 32))

(assert (=> d!7801 (= lt!17830 e!27071)))

(declare-fun c!5418 () Bool)

(assert (=> d!7801 (= c!5418 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7801 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1532 lt!17787)))))

(assert (=> d!7801 (= (arrayCountValidKeys!0 lt!17787 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17830)))

(declare-fun b!42719 () Bool)

(declare-fun e!27072 () (_ BitVec 32))

(assert (=> b!42719 (= e!27071 e!27072)))

(declare-fun c!5417 () Bool)

(assert (=> b!42719 (= c!5417 (validKeyInArray!0 (select (arr!1356 lt!17787) #b00000000000000000000000000000000)))))

(declare-fun b!42720 () Bool)

(declare-fun call!3364 () (_ BitVec 32))

(assert (=> b!42720 (= e!27072 (bvadd #b00000000000000000000000000000001 call!3364))))

(declare-fun b!42721 () Bool)

(assert (=> b!42721 (= e!27071 #b00000000000000000000000000000000)))

(declare-fun b!42722 () Bool)

(assert (=> b!42722 (= e!27072 call!3364)))

(declare-fun bm!3361 () Bool)

(assert (=> bm!3361 (= call!3364 (arrayCountValidKeys!0 lt!17787 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7801 c!5418) b!42721))

(assert (= (and d!7801 (not c!5418)) b!42719))

(assert (= (and b!42719 c!5417) b!42720))

(assert (= (and b!42719 (not c!5417)) b!42722))

(assert (= (or b!42720 b!42722) bm!3361))

(assert (=> b!42719 m!36357))

(assert (=> b!42719 m!36357))

(assert (=> b!42719 m!36359))

(declare-fun m!36377 () Bool)

(assert (=> bm!3361 m!36377))

(assert (=> b!42651 d!7801))

(declare-fun d!7807 () Bool)

(assert (=> d!7807 (= (arrayCountValidKeys!0 lt!17787 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17840 () Unit!1149)

(declare-fun choose!59 (array!2825 (_ BitVec 32) (_ BitVec 32)) Unit!1149)

(assert (=> d!7807 (= lt!17840 (choose!59 lt!17787 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7807 (bvslt (size!1532 lt!17787) #b01111111111111111111111111111111)))

(assert (=> d!7807 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17787 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17840)))

(declare-fun bs!1888 () Bool)

(assert (= bs!1888 d!7807))

(assert (=> bs!1888 m!36331))

(declare-fun m!36401 () Bool)

(assert (=> bs!1888 m!36401))

(assert (=> b!42651 d!7807))

(declare-fun d!7815 () Bool)

(declare-fun res!25397 () Bool)

(declare-fun e!27088 () Bool)

(assert (=> d!7815 (=> res!25397 e!27088)))

(assert (=> d!7815 (= res!25397 (is-Nil!1160 Nil!1160))))

