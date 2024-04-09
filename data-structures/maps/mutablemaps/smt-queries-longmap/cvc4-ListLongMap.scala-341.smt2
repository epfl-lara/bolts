; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6206 () Bool)

(assert start!6206)

(declare-fun res!25195 () Bool)

(declare-fun e!26802 () Bool)

(assert (=> start!6206 (=> (not res!25195) (not e!26802))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6206 (= res!25195 (validMask!0 mask!853))))

(assert (=> start!6206 e!26802))

(assert (=> start!6206 true))

(declare-fun b!42333 () Bool)

(assert (=> b!42333 (= e!26802 (not (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111)))))

(declare-datatypes ((array!2801 0))(
  ( (array!2802 (arr!1344 (Array (_ BitVec 32) (_ BitVec 64))) (size!1511 (_ BitVec 32))) )
))
(declare-fun lt!17505 () array!2801)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2801 (_ BitVec 32)) Bool)

(assert (=> b!42333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17505 mask!853)))

(declare-datatypes ((Unit!1125 0))(
  ( (Unit!1126) )
))
(declare-fun lt!17504 () Unit!1125)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2801 (_ BitVec 32) (_ BitVec 32)) Unit!1125)

(assert (=> b!42333 (= lt!17504 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17505 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2801 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42333 (= (arrayCountValidKeys!0 lt!17505 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17506 () Unit!1125)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2801 (_ BitVec 32) (_ BitVec 32)) Unit!1125)

(assert (=> b!42333 (= lt!17506 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17505 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42333 (= lt!17505 (array!2802 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6206 res!25195) b!42333))

(declare-fun m!35983 () Bool)

(assert (=> start!6206 m!35983))

(declare-fun m!35985 () Bool)

(assert (=> b!42333 m!35985))

(declare-fun m!35987 () Bool)

(assert (=> b!42333 m!35987))

(declare-fun m!35989 () Bool)

(assert (=> b!42333 m!35989))

(declare-fun m!35991 () Bool)

(assert (=> b!42333 m!35991))

(push 1)

(assert (not start!6206))

(assert (not b!42333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7677 () Bool)

(assert (=> d!7677 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6206 d!7677))

(declare-fun b!42366 () Bool)

(declare-fun e!26829 () Bool)

(declare-fun call!3305 () Bool)

(assert (=> b!42366 (= e!26829 call!3305)))

(declare-fun b!42367 () Bool)

(declare-fun e!26827 () Bool)

(assert (=> b!42367 (= e!26827 e!26829)))

(declare-fun c!5326 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42367 (= c!5326 (validKeyInArray!0 (select (arr!1344 lt!17505) #b00000000000000000000000000000000)))))

(declare-fun bm!3302 () Bool)

(assert (=> bm!3302 (= call!3305 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17505 mask!853))))

(declare-fun b!42368 () Bool)

(declare-fun e!26828 () Bool)

(assert (=> b!42368 (= e!26828 call!3305)))

(declare-fun d!7683 () Bool)

(declare-fun res!25213 () Bool)

(assert (=> d!7683 (=> res!25213 e!26827)))

(assert (=> d!7683 (= res!25213 (bvsge #b00000000000000000000000000000000 (size!1511 lt!17505)))))

(assert (=> d!7683 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17505 mask!853) e!26827)))

(declare-fun b!42369 () Bool)

(assert (=> b!42369 (= e!26829 e!26828)))

(declare-fun lt!17532 () (_ BitVec 64))

(assert (=> b!42369 (= lt!17532 (select (arr!1344 lt!17505) #b00000000000000000000000000000000))))

(declare-fun lt!17533 () Unit!1125)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2801 (_ BitVec 64) (_ BitVec 32)) Unit!1125)

(assert (=> b!42369 (= lt!17533 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17505 lt!17532 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42369 (arrayContainsKey!0 lt!17505 lt!17532 #b00000000000000000000000000000000)))

(declare-fun lt!17531 () Unit!1125)

(assert (=> b!42369 (= lt!17531 lt!17533)))

(declare-fun res!25212 () Bool)

(declare-datatypes ((SeekEntryResult!194 0))(
  ( (MissingZero!194 (index!2898 (_ BitVec 32))) (Found!194 (index!2899 (_ BitVec 32))) (Intermediate!194 (undefined!1006 Bool) (index!2900 (_ BitVec 32)) (x!8103 (_ BitVec 32))) (Undefined!194) (MissingVacant!194 (index!2901 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2801 (_ BitVec 32)) SeekEntryResult!194)

(assert (=> b!42369 (= res!25212 (= (seekEntryOrOpen!0 (select (arr!1344 lt!17505) #b00000000000000000000000000000000) lt!17505 mask!853) (Found!194 #b00000000000000000000000000000000)))))

(assert (=> b!42369 (=> (not res!25212) (not e!26828))))

(assert (= (and d!7683 (not res!25213)) b!42367))

(assert (= (and b!42367 c!5326) b!42369))

(assert (= (and b!42367 (not c!5326)) b!42366))

(assert (= (and b!42369 res!25212) b!42368))

(assert (= (or b!42368 b!42366) bm!3302))

(declare-fun m!36017 () Bool)

(assert (=> b!42367 m!36017))

(assert (=> b!42367 m!36017))

(declare-fun m!36019 () Bool)

(assert (=> b!42367 m!36019))

(declare-fun m!36021 () Bool)

(assert (=> bm!3302 m!36021))

(assert (=> b!42369 m!36017))

(declare-fun m!36023 () Bool)

(assert (=> b!42369 m!36023))

(declare-fun m!36025 () Bool)

(assert (=> b!42369 m!36025))

(assert (=> b!42369 m!36017))

(declare-fun m!36027 () Bool)

(assert (=> b!42369 m!36027))

(assert (=> b!42333 d!7683))

(declare-fun d!7689 () Bool)

(assert (=> d!7689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17505 mask!853)))

(declare-fun lt!17544 () Unit!1125)

(declare-fun choose!34 (array!2801 (_ BitVec 32) (_ BitVec 32)) Unit!1125)

(assert (=> d!7689 (= lt!17544 (choose!34 lt!17505 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7689 (validMask!0 mask!853)))

(assert (=> d!7689 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17505 mask!853 #b00000000000000000000000000000000) lt!17544)))

(declare-fun bs!1857 () Bool)

(assert (= bs!1857 d!7689))

(assert (=> bs!1857 m!35985))

(declare-fun m!36033 () Bool)

(assert (=> bs!1857 m!36033))

(assert (=> bs!1857 m!35983))

(assert (=> b!42333 d!7689))

(declare-fun b!42402 () Bool)

(declare-fun e!26847 () (_ BitVec 32))

(declare-fun call!3314 () (_ BitVec 32))

(assert (=> b!42402 (= e!26847 call!3314)))

