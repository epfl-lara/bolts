; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6282 () Bool)

(assert start!6282)

(declare-fun res!25267 () Bool)

(declare-fun e!26928 () Bool)

(assert (=> start!6282 (=> (not res!25267) (not e!26928))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6282 (= res!25267 (validMask!0 mask!853))))

(assert (=> start!6282 e!26928))

(assert (=> start!6282 true))

(declare-fun b!42511 () Bool)

(declare-fun e!26926 () Bool)

(assert (=> b!42511 (= e!26928 (not e!26926))))

(declare-fun res!25266 () Bool)

(assert (=> b!42511 (=> res!25266 e!26926)))

(assert (=> b!42511 (= res!25266 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2817 0))(
  ( (array!2818 (arr!1352 (Array (_ BitVec 32) (_ BitVec 64))) (size!1525 (_ BitVec 32))) )
))
(declare-fun lt!17686 () array!2817)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2817 (_ BitVec 32)) Bool)

(assert (=> b!42511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17686 mask!853)))

(declare-datatypes ((Unit!1141 0))(
  ( (Unit!1142) )
))
(declare-fun lt!17684 () Unit!1141)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2817 (_ BitVec 32) (_ BitVec 32)) Unit!1141)

(assert (=> b!42511 (= lt!17684 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17686 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2817 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42511 (= (arrayCountValidKeys!0 lt!17686 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17685 () Unit!1141)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2817 (_ BitVec 32) (_ BitVec 32)) Unit!1141)

(assert (=> b!42511 (= lt!17685 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17686 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42511 (= lt!17686 (array!2818 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42512 () Bool)

(declare-fun e!26927 () Bool)

(assert (=> b!42512 (= e!26926 e!26927)))

(declare-fun res!25265 () Bool)

(assert (=> b!42512 (=> (not res!25265) (not e!26927))))

(declare-datatypes ((List!1159 0))(
  ( (Nil!1156) (Cons!1155 (h!1732 (_ BitVec 64)) (t!4114 List!1159)) )
))
(declare-fun contains!556 (List!1159 (_ BitVec 64)) Bool)

(assert (=> b!42512 (= res!25265 (not (contains!556 Nil!1156 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!42513 () Bool)

(assert (=> b!42513 (= e!26927 (not (contains!556 Nil!1156 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!6282 res!25267) b!42511))

(assert (= (and b!42511 (not res!25266)) b!42512))

(assert (= (and b!42512 res!25265) b!42513))

(declare-fun m!36175 () Bool)

(assert (=> start!6282 m!36175))

(declare-fun m!36177 () Bool)

(assert (=> b!42511 m!36177))

(declare-fun m!36179 () Bool)

(assert (=> b!42511 m!36179))

(declare-fun m!36181 () Bool)

(assert (=> b!42511 m!36181))

(declare-fun m!36183 () Bool)

(assert (=> b!42511 m!36183))

(declare-fun m!36185 () Bool)

(assert (=> b!42512 m!36185))

(declare-fun m!36187 () Bool)

(assert (=> b!42513 m!36187))

(check-sat (not b!42512) (not b!42511) (not start!6282) (not b!42513))
(check-sat)
(get-model)

(declare-fun d!7739 () Bool)

(declare-fun lt!17700 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!34 (List!1159) (InoxSet (_ BitVec 64)))

(assert (=> d!7739 (= lt!17700 (select (content!34 Nil!1156) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!26943 () Bool)

(assert (=> d!7739 (= lt!17700 e!26943)))

(declare-fun res!25281 () Bool)

(assert (=> d!7739 (=> (not res!25281) (not e!26943))))

(get-info :version)

(assert (=> d!7739 (= res!25281 ((_ is Cons!1155) Nil!1156))))

(assert (=> d!7739 (= (contains!556 Nil!1156 #b0000000000000000000000000000000000000000000000000000000000000000) lt!17700)))

(declare-fun b!42527 () Bool)

(declare-fun e!26942 () Bool)

(assert (=> b!42527 (= e!26943 e!26942)))

(declare-fun res!25282 () Bool)

(assert (=> b!42527 (=> res!25282 e!26942)))

(assert (=> b!42527 (= res!25282 (= (h!1732 Nil!1156) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42528 () Bool)

(assert (=> b!42528 (= e!26942 (contains!556 (t!4114 Nil!1156) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!7739 res!25281) b!42527))

(assert (= (and b!42527 (not res!25282)) b!42528))

(declare-fun m!36203 () Bool)

(assert (=> d!7739 m!36203))

(declare-fun m!36205 () Bool)

(assert (=> d!7739 m!36205))

(declare-fun m!36207 () Bool)

(assert (=> b!42528 m!36207))

(assert (=> b!42512 d!7739))

(declare-fun b!42565 () Bool)

(declare-fun e!26976 () Bool)

(declare-fun e!26974 () Bool)

(assert (=> b!42565 (= e!26976 e!26974)))

(declare-fun lt!17724 () (_ BitVec 64))

(assert (=> b!42565 (= lt!17724 (select (arr!1352 lt!17686) #b00000000000000000000000000000000))))

(declare-fun lt!17723 () Unit!1141)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2817 (_ BitVec 64) (_ BitVec 32)) Unit!1141)

(assert (=> b!42565 (= lt!17723 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17686 lt!17724 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42565 (arrayContainsKey!0 lt!17686 lt!17724 #b00000000000000000000000000000000)))

(declare-fun lt!17725 () Unit!1141)

(assert (=> b!42565 (= lt!17725 lt!17723)))

(declare-fun res!25307 () Bool)

(declare-datatypes ((SeekEntryResult!198 0))(
  ( (MissingZero!198 (index!2914 (_ BitVec 32))) (Found!198 (index!2915 (_ BitVec 32))) (Intermediate!198 (undefined!1010 Bool) (index!2916 (_ BitVec 32)) (x!8131 (_ BitVec 32))) (Undefined!198) (MissingVacant!198 (index!2917 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2817 (_ BitVec 32)) SeekEntryResult!198)

(assert (=> b!42565 (= res!25307 (= (seekEntryOrOpen!0 (select (arr!1352 lt!17686) #b00000000000000000000000000000000) lt!17686 mask!853) (Found!198 #b00000000000000000000000000000000)))))

(assert (=> b!42565 (=> (not res!25307) (not e!26974))))

(declare-fun b!42566 () Bool)

(declare-fun e!26975 () Bool)

(assert (=> b!42566 (= e!26975 e!26976)))

(declare-fun c!5378 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42566 (= c!5378 (validKeyInArray!0 (select (arr!1352 lt!17686) #b00000000000000000000000000000000)))))

(declare-fun b!42568 () Bool)

(declare-fun call!3339 () Bool)

(assert (=> b!42568 (= e!26976 call!3339)))

(declare-fun bm!3336 () Bool)

(assert (=> bm!3336 (= call!3339 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17686 mask!853))))

(declare-fun d!7745 () Bool)

(declare-fun res!25308 () Bool)

(assert (=> d!7745 (=> res!25308 e!26975)))

(assert (=> d!7745 (= res!25308 (bvsge #b00000000000000000000000000000000 (size!1525 lt!17686)))))

(assert (=> d!7745 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17686 mask!853) e!26975)))

(declare-fun b!42567 () Bool)

(assert (=> b!42567 (= e!26974 call!3339)))

(assert (= (and d!7745 (not res!25308)) b!42566))

(assert (= (and b!42566 c!5378) b!42565))

(assert (= (and b!42566 (not c!5378)) b!42568))

(assert (= (and b!42565 res!25307) b!42567))

(assert (= (or b!42567 b!42568) bm!3336))

(declare-fun m!36221 () Bool)

(assert (=> b!42565 m!36221))

(declare-fun m!36223 () Bool)

(assert (=> b!42565 m!36223))

(declare-fun m!36225 () Bool)

(assert (=> b!42565 m!36225))

(assert (=> b!42565 m!36221))

(declare-fun m!36227 () Bool)

(assert (=> b!42565 m!36227))

(assert (=> b!42566 m!36221))

(assert (=> b!42566 m!36221))

(declare-fun m!36229 () Bool)

(assert (=> b!42566 m!36229))

(declare-fun m!36231 () Bool)

(assert (=> bm!3336 m!36231))

(assert (=> b!42511 d!7745))

(declare-fun d!7751 () Bool)

(assert (=> d!7751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17686 mask!853)))

(declare-fun lt!17734 () Unit!1141)

(declare-fun choose!34 (array!2817 (_ BitVec 32) (_ BitVec 32)) Unit!1141)

(assert (=> d!7751 (= lt!17734 (choose!34 lt!17686 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7751 (validMask!0 mask!853)))

(assert (=> d!7751 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17686 mask!853 #b00000000000000000000000000000000) lt!17734)))

(declare-fun bs!1876 () Bool)

(assert (= bs!1876 d!7751))

(assert (=> bs!1876 m!36177))

(declare-fun m!36257 () Bool)

(assert (=> bs!1876 m!36257))

(assert (=> bs!1876 m!36175))

(assert (=> b!42511 d!7751))

(declare-fun d!7757 () Bool)

(declare-fun lt!17747 () (_ BitVec 32))

(assert (=> d!7757 (and (bvsge lt!17747 #b00000000000000000000000000000000) (bvsle lt!17747 (bvsub (size!1525 lt!17686) #b00000000000000000000000000000000)))))

(declare-fun e!26996 () (_ BitVec 32))

(assert (=> d!7757 (= lt!17747 e!26996)))

(declare-fun c!5393 () Bool)

(assert (=> d!7757 (= c!5393 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7757 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1525 lt!17686)))))

(assert (=> d!7757 (= (arrayCountValidKeys!0 lt!17686 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17747)))

(declare-fun b!42601 () Bool)

(declare-fun e!26995 () (_ BitVec 32))

(declare-fun call!3348 () (_ BitVec 32))

(assert (=> b!42601 (= e!26995 (bvadd #b00000000000000000000000000000001 call!3348))))

(declare-fun bm!3345 () Bool)

(assert (=> bm!3345 (= call!3348 (arrayCountValidKeys!0 lt!17686 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42602 () Bool)

(assert (=> b!42602 (= e!26996 #b00000000000000000000000000000000)))

(declare-fun b!42603 () Bool)

(assert (=> b!42603 (= e!26995 call!3348)))

(declare-fun b!42604 () Bool)

(assert (=> b!42604 (= e!26996 e!26995)))

(declare-fun c!5394 () Bool)

(assert (=> b!42604 (= c!5394 (validKeyInArray!0 (select (arr!1352 lt!17686) #b00000000000000000000000000000000)))))

(assert (= (and d!7757 c!5393) b!42602))

(assert (= (and d!7757 (not c!5393)) b!42604))

(assert (= (and b!42604 c!5394) b!42601))

(assert (= (and b!42604 (not c!5394)) b!42603))

(assert (= (or b!42601 b!42603) bm!3345))

(declare-fun m!36263 () Bool)

(assert (=> bm!3345 m!36263))

(assert (=> b!42604 m!36221))

(assert (=> b!42604 m!36221))

(assert (=> b!42604 m!36229))

(assert (=> b!42511 d!7757))

(declare-fun d!7763 () Bool)

(assert (=> d!7763 (= (arrayCountValidKeys!0 lt!17686 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17752 () Unit!1141)

(declare-fun choose!59 (array!2817 (_ BitVec 32) (_ BitVec 32)) Unit!1141)

(assert (=> d!7763 (= lt!17752 (choose!59 lt!17686 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7763 (bvslt (size!1525 lt!17686) #b01111111111111111111111111111111)))

(assert (=> d!7763 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17686 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17752)))

(declare-fun bs!1879 () Bool)

(assert (= bs!1879 d!7763))

(assert (=> bs!1879 m!36181))

(declare-fun m!36269 () Bool)

(assert (=> bs!1879 m!36269))

(assert (=> b!42511 d!7763))

(declare-fun d!7769 () Bool)

(assert (=> d!7769 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6282 d!7769))

(declare-fun d!7775 () Bool)

(declare-fun lt!17759 () Bool)

(assert (=> d!7775 (= lt!17759 (select (content!34 Nil!1156) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!27002 () Bool)

(assert (=> d!7775 (= lt!17759 e!27002)))

(declare-fun res!25313 () Bool)

(assert (=> d!7775 (=> (not res!25313) (not e!27002))))

(assert (=> d!7775 (= res!25313 ((_ is Cons!1155) Nil!1156))))

(assert (=> d!7775 (= (contains!556 Nil!1156 #b1000000000000000000000000000000000000000000000000000000000000000) lt!17759)))

(declare-fun b!42613 () Bool)

(declare-fun e!27001 () Bool)

(assert (=> b!42613 (= e!27002 e!27001)))

(declare-fun res!25314 () Bool)

(assert (=> b!42613 (=> res!25314 e!27001)))

(assert (=> b!42613 (= res!25314 (= (h!1732 Nil!1156) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42614 () Bool)

(assert (=> b!42614 (= e!27001 (contains!556 (t!4114 Nil!1156) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!7775 res!25313) b!42613))

(assert (= (and b!42613 (not res!25314)) b!42614))

(assert (=> d!7775 m!36203))

(declare-fun m!36275 () Bool)

(assert (=> d!7775 m!36275))

(declare-fun m!36277 () Bool)

(assert (=> b!42614 m!36277))

(assert (=> b!42513 d!7775))

(check-sat (not b!42604) (not b!42565) (not b!42614) (not bm!3336) (not d!7751) (not d!7739) (not bm!3345) (not d!7775) (not b!42566) (not d!7763) (not b!42528))
(check-sat)
