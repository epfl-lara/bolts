; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6280 () Bool)

(assert start!6280)

(declare-fun res!25256 () Bool)

(declare-fun e!26919 () Bool)

(assert (=> start!6280 (=> (not res!25256) (not e!26919))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6280 (= res!25256 (validMask!0 mask!853))))

(assert (=> start!6280 e!26919))

(assert (=> start!6280 true))

(declare-fun b!42502 () Bool)

(declare-fun e!26918 () Bool)

(assert (=> b!42502 (= e!26919 (not e!26918))))

(declare-fun res!25258 () Bool)

(assert (=> b!42502 (=> res!25258 e!26918)))

(assert (=> b!42502 (= res!25258 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2815 0))(
  ( (array!2816 (arr!1351 (Array (_ BitVec 32) (_ BitVec 64))) (size!1524 (_ BitVec 32))) )
))
(declare-fun lt!17677 () array!2815)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2815 (_ BitVec 32)) Bool)

(assert (=> b!42502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17677 mask!853)))

(declare-datatypes ((Unit!1139 0))(
  ( (Unit!1140) )
))
(declare-fun lt!17675 () Unit!1139)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2815 (_ BitVec 32) (_ BitVec 32)) Unit!1139)

(assert (=> b!42502 (= lt!17675 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17677 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2815 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42502 (= (arrayCountValidKeys!0 lt!17677 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17676 () Unit!1139)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2815 (_ BitVec 32) (_ BitVec 32)) Unit!1139)

(assert (=> b!42502 (= lt!17676 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17677 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42502 (= lt!17677 (array!2816 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42503 () Bool)

(declare-fun e!26917 () Bool)

(assert (=> b!42503 (= e!26918 e!26917)))

(declare-fun res!25257 () Bool)

(assert (=> b!42503 (=> (not res!25257) (not e!26917))))

(declare-datatypes ((List!1158 0))(
  ( (Nil!1155) (Cons!1154 (h!1731 (_ BitVec 64)) (t!4113 List!1158)) )
))
(declare-fun contains!555 (List!1158 (_ BitVec 64)) Bool)

(assert (=> b!42503 (= res!25257 (not (contains!555 Nil!1155 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!42504 () Bool)

(assert (=> b!42504 (= e!26917 (not (contains!555 Nil!1155 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!6280 res!25256) b!42502))

(assert (= (and b!42502 (not res!25258)) b!42503))

(assert (= (and b!42503 res!25257) b!42504))

(declare-fun m!36161 () Bool)

(assert (=> start!6280 m!36161))

(declare-fun m!36163 () Bool)

(assert (=> b!42502 m!36163))

(declare-fun m!36165 () Bool)

(assert (=> b!42502 m!36165))

(declare-fun m!36167 () Bool)

(assert (=> b!42502 m!36167))

(declare-fun m!36169 () Bool)

(assert (=> b!42502 m!36169))

(declare-fun m!36171 () Bool)

(assert (=> b!42503 m!36171))

(declare-fun m!36173 () Bool)

(assert (=> b!42504 m!36173))

(push 1)

(assert (not b!42503))

(assert (not b!42502))

(assert (not start!6280))

(assert (not b!42504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7741 () Bool)

(declare-fun lt!17703 () Bool)

(declare-fun content!35 (List!1158) (Set (_ BitVec 64)))

(assert (=> d!7741 (= lt!17703 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!35 Nil!1155)))))

(declare-fun e!26949 () Bool)

(assert (=> d!7741 (= lt!17703 e!26949)))

(declare-fun res!25288 () Bool)

(assert (=> d!7741 (=> (not res!25288) (not e!26949))))

(assert (=> d!7741 (= res!25288 (is-Cons!1154 Nil!1155))))

(assert (=> d!7741 (= (contains!555 Nil!1155 #b0000000000000000000000000000000000000000000000000000000000000000) lt!17703)))

(declare-fun b!42533 () Bool)

(declare-fun e!26948 () Bool)

(assert (=> b!42533 (= e!26949 e!26948)))

(declare-fun res!25287 () Bool)

(assert (=> b!42533 (=> res!25287 e!26948)))

(assert (=> b!42533 (= res!25287 (= (h!1731 Nil!1155) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42534 () Bool)

(assert (=> b!42534 (= e!26948 (contains!555 (t!4113 Nil!1155) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!7741 res!25288) b!42533))

(assert (= (and b!42533 (not res!25287)) b!42534))

(declare-fun m!36209 () Bool)

(assert (=> d!7741 m!36209))

(declare-fun m!36211 () Bool)

(assert (=> d!7741 m!36211))

(declare-fun m!36213 () Bool)

(assert (=> b!42534 m!36213))

(assert (=> b!42503 d!7741))

(declare-fun d!7747 () Bool)

(declare-fun res!25310 () Bool)

(declare-fun e!26978 () Bool)

(assert (=> d!7747 (=> res!25310 e!26978)))

(assert (=> d!7747 (= res!25310 (bvsge #b00000000000000000000000000000000 (size!1524 lt!17677)))))

(assert (=> d!7747 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17677 mask!853) e!26978)))

(declare-fun b!42569 () Bool)

(declare-fun e!26977 () Bool)

(declare-fun call!3340 () Bool)

(assert (=> b!42569 (= e!26977 call!3340)))

(declare-fun bm!3337 () Bool)

(assert (=> bm!3337 (= call!3340 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17677 mask!853))))

(declare-fun b!42570 () Bool)

(declare-fun e!26979 () Bool)

(assert (=> b!42570 (= e!26979 e!26977)))

(declare-fun lt!17727 () (_ BitVec 64))

(assert (=> b!42570 (= lt!17727 (select (arr!1351 lt!17677) #b00000000000000000000000000000000))))

(declare-fun lt!17728 () Unit!1139)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2815 (_ BitVec 64) (_ BitVec 32)) Unit!1139)

(assert (=> b!42570 (= lt!17728 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17677 lt!17727 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2815 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42570 (arrayContainsKey!0 lt!17677 lt!17727 #b00000000000000000000000000000000)))

(declare-fun lt!17726 () Unit!1139)

(assert (=> b!42570 (= lt!17726 lt!17728)))

(declare-fun res!25309 () Bool)

(declare-datatypes ((SeekEntryResult!199 0))(
  ( (MissingZero!199 (index!2918 (_ BitVec 32))) (Found!199 (index!2919 (_ BitVec 32))) (Intermediate!199 (undefined!1011 Bool) (index!2920 (_ BitVec 32)) (x!8132 (_ BitVec 32))) (Undefined!199) (MissingVacant!199 (index!2921 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2815 (_ BitVec 32)) SeekEntryResult!199)

(assert (=> b!42570 (= res!25309 (= (seekEntryOrOpen!0 (select (arr!1351 lt!17677) #b00000000000000000000000000000000) lt!17677 mask!853) (Found!199 #b00000000000000000000000000000000)))))

(assert (=> b!42570 (=> (not res!25309) (not e!26977))))

(declare-fun b!42571 () Bool)

(assert (=> b!42571 (= e!26979 call!3340)))

(declare-fun b!42572 () Bool)

(assert (=> b!42572 (= e!26978 e!26979)))

(declare-fun c!5379 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42572 (= c!5379 (validKeyInArray!0 (select (arr!1351 lt!17677) #b00000000000000000000000000000000)))))

(assert (= (and d!7747 (not res!25310)) b!42572))

(assert (= (and b!42572 c!5379) b!42570))

(assert (= (and b!42572 (not c!5379)) b!42571))

(assert (= (and b!42570 res!25309) b!42569))

(assert (= (or b!42569 b!42571) bm!3337))

(declare-fun m!36233 () Bool)

(assert (=> bm!3337 m!36233))

(declare-fun m!36235 () Bool)

(assert (=> b!42570 m!36235))

(declare-fun m!36237 () Bool)

(assert (=> b!42570 m!36237))

(declare-fun m!36239 () Bool)

(assert (=> b!42570 m!36239))

(assert (=> b!42570 m!36235))

(declare-fun m!36241 () Bool)

(assert (=> b!42570 m!36241))

(assert (=> b!42572 m!36235))

(assert (=> b!42572 m!36235))

(declare-fun m!36243 () Bool)

(assert (=> b!42572 m!36243))

(assert (=> b!42502 d!7747))

(declare-fun d!7753 () Bool)

(assert (=> d!7753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17677 mask!853)))

(declare-fun lt!17737 () Unit!1139)

(declare-fun choose!34 (array!2815 (_ BitVec 32) (_ BitVec 32)) Unit!1139)

(assert (=> d!7753 (= lt!17737 (choose!34 lt!17677 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7753 (validMask!0 mask!853)))

(assert (=> d!7753 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17677 mask!853 #b00000000000000000000000000000000) lt!17737)))

(declare-fun bs!1877 () Bool)

(assert (= bs!1877 d!7753))

(assert (=> bs!1877 m!36163))

(declare-fun m!36259 () Bool)

(assert (=> bs!1877 m!36259))

(assert (=> bs!1877 m!36161))

(assert (=> b!42502 d!7753))

(declare-fun b!42605 () Bool)

(declare-fun e!26998 () (_ BitVec 32))

(declare-fun call!3349 () (_ BitVec 32))

(assert (=> b!42605 (= e!26998 (bvadd #b00000000000000000000000000000001 call!3349))))

(declare-fun bm!3346 () Bool)

(assert (=> bm!3346 (= call!3349 (arrayCountValidKeys!0 lt!17677 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42606 () Bool)

(declare-fun e!26997 () (_ BitVec 32))

(assert (=> b!42606 (= e!26997 e!26998)))

(declare-fun c!5396 () Bool)

(assert (=> b!42606 (= c!5396 (validKeyInArray!0 (select (arr!1351 lt!17677) #b00000000000000000000000000000000)))))

(declare-fun b!42608 () Bool)

(assert (=> b!42608 (= e!26997 #b00000000000000000000000000000000)))

(declare-fun b!42607 () Bool)

(assert (=> b!42607 (= e!26998 call!3349)))

(declare-fun d!7759 () Bool)

(declare-fun lt!17748 () (_ BitVec 32))

(assert (=> d!7759 (and (bvsge lt!17748 #b00000000000000000000000000000000) (bvsle lt!17748 (bvsub (size!1524 lt!17677) #b00000000000000000000000000000000)))))

(assert (=> d!7759 (= lt!17748 e!26997)))

(declare-fun c!5395 () Bool)

(assert (=> d!7759 (= c!5395 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7759 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1524 lt!17677)))))

(assert (=> d!7759 (= (arrayCountValidKeys!0 lt!17677 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17748)))

(assert (= (and d!7759 c!5395) b!42608))

(assert (= (and d!7759 (not c!5395)) b!42606))

(assert (= (and b!42606 c!5396) b!42605))

(assert (= (and b!42606 (not c!5396)) b!42607))

(assert (= (or b!42605 b!42607) bm!3346))

(declare-fun m!36265 () Bool)

(assert (=> bm!3346 m!36265))

(assert (=> b!42606 m!36235))

(assert (=> b!42606 m!36235))

(assert (=> b!42606 m!36243))

(assert (=> b!42502 d!7759))

(declare-fun d!7765 () Bool)

(assert (=> d!7765 (= (arrayCountValidKeys!0 lt!17677 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17755 () Unit!1139)

(declare-fun choose!59 (array!2815 (_ BitVec 32) (_ BitVec 32)) Unit!1139)

(assert (=> d!7765 (= lt!17755 (choose!59 lt!17677 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7765 (bvslt (size!1524 lt!17677) #b01111111111111111111111111111111)))

(assert (=> d!7765 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17677 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17755)))

(declare-fun bs!1880 () Bool)

(assert (= bs!1880 d!7765))

(assert (=> bs!1880 m!36167))

(declare-fun m!36271 () Bool)

(assert (=> bs!1880 m!36271))

(assert (=> b!42502 d!7765))

(declare-fun d!7771 () Bool)

(assert (=> d!7771 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6280 d!7771))

(declare-fun d!7777 () Bool)

(declare-fun lt!17760 () Bool)

(assert (=> d!7777 (= lt!17760 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!35 Nil!1155)))))

(declare-fun e!27004 () Bool)

(assert (=> d!7777 (= lt!17760 e!27004)))

(declare-fun res!25316 () Bool)

(assert (=> d!7777 (=> (not res!25316) (not e!27004))))

(assert (=> d!7777 (= res!25316 (is-Cons!1154 Nil!1155))))

(assert (=> d!7777 (= (contains!555 Nil!1155 #b1000000000000000000000000000000000000000000000000000000000000000) lt!17760)))

(declare-fun b!42615 () Bool)

(declare-fun e!27003 () Bool)

(assert (=> b!42615 (= e!27004 e!27003)))

(declare-fun res!25315 () Bool)

(assert (=> b!42615 (=> res!25315 e!27003)))

(assert (=> b!42615 (= res!25315 (= (h!1731 Nil!1155) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42616 () Bool)

(assert (=> b!42616 (= e!27003 (contains!555 (t!4113 Nil!1155) #b1000000000000000000000000000000000000000000000000000000000000000))))

