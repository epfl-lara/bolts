; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6246 () Bool)

(assert start!6246)

(declare-fun res!25228 () Bool)

(declare-fun e!26862 () Bool)

(assert (=> start!6246 (=> (not res!25228) (not e!26862))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6246 (= res!25228 (validMask!0 mask!853))))

(assert (=> start!6246 e!26862))

(assert (=> start!6246 true))

(declare-fun b!42420 () Bool)

(assert (=> b!42420 (= e!26862 (not (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))))

(declare-datatypes ((array!2811 0))(
  ( (array!2812 (arr!1349 (Array (_ BitVec 32) (_ BitVec 64))) (size!1519 (_ BitVec 32))) )
))
(declare-fun lt!17604 () array!2811)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2811 (_ BitVec 32)) Bool)

(assert (=> b!42420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17604 mask!853)))

(declare-datatypes ((Unit!1135 0))(
  ( (Unit!1136) )
))
(declare-fun lt!17603 () Unit!1135)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2811 (_ BitVec 32) (_ BitVec 32)) Unit!1135)

(assert (=> b!42420 (= lt!17603 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17604 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2811 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42420 (= (arrayCountValidKeys!0 lt!17604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17605 () Unit!1135)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2811 (_ BitVec 32) (_ BitVec 32)) Unit!1135)

(assert (=> b!42420 (= lt!17605 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42420 (= lt!17604 (array!2812 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6246 res!25228) b!42420))

(declare-fun m!36087 () Bool)

(assert (=> start!6246 m!36087))

(declare-fun m!36089 () Bool)

(assert (=> b!42420 m!36089))

(declare-fun m!36091 () Bool)

(assert (=> b!42420 m!36091))

(declare-fun m!36093 () Bool)

(assert (=> b!42420 m!36093))

(declare-fun m!36095 () Bool)

(assert (=> b!42420 m!36095))

(check-sat (not b!42420) (not start!6246))
(check-sat)
(get-model)

(declare-fun d!7709 () Bool)

(declare-fun res!25240 () Bool)

(declare-fun e!26879 () Bool)

(assert (=> d!7709 (=> res!25240 e!26879)))

(assert (=> d!7709 (= res!25240 (bvsge #b00000000000000000000000000000000 (size!1519 lt!17604)))))

(assert (=> d!7709 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17604 mask!853) e!26879)))

(declare-fun bm!3314 () Bool)

(declare-fun call!3317 () Bool)

(assert (=> bm!3314 (= call!3317 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17604 mask!853))))

(declare-fun b!42438 () Bool)

(declare-fun e!26880 () Bool)

(assert (=> b!42438 (= e!26880 call!3317)))

(declare-fun b!42439 () Bool)

(declare-fun e!26878 () Bool)

(assert (=> b!42439 (= e!26878 call!3317)))

(declare-fun b!42440 () Bool)

(assert (=> b!42440 (= e!26880 e!26878)))

(declare-fun lt!17627 () (_ BitVec 64))

(assert (=> b!42440 (= lt!17627 (select (arr!1349 lt!17604) #b00000000000000000000000000000000))))

(declare-fun lt!17628 () Unit!1135)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2811 (_ BitVec 64) (_ BitVec 32)) Unit!1135)

(assert (=> b!42440 (= lt!17628 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17604 lt!17627 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2811 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42440 (arrayContainsKey!0 lt!17604 lt!17627 #b00000000000000000000000000000000)))

(declare-fun lt!17629 () Unit!1135)

(assert (=> b!42440 (= lt!17629 lt!17628)))

(declare-fun res!25241 () Bool)

(declare-datatypes ((SeekEntryResult!197 0))(
  ( (MissingZero!197 (index!2910 (_ BitVec 32))) (Found!197 (index!2911 (_ BitVec 32))) (Intermediate!197 (undefined!1009 Bool) (index!2912 (_ BitVec 32)) (x!8122 (_ BitVec 32))) (Undefined!197) (MissingVacant!197 (index!2913 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2811 (_ BitVec 32)) SeekEntryResult!197)

(assert (=> b!42440 (= res!25241 (= (seekEntryOrOpen!0 (select (arr!1349 lt!17604) #b00000000000000000000000000000000) lt!17604 mask!853) (Found!197 #b00000000000000000000000000000000)))))

(assert (=> b!42440 (=> (not res!25241) (not e!26878))))

(declare-fun b!42441 () Bool)

(assert (=> b!42441 (= e!26879 e!26880)))

(declare-fun c!5349 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42441 (= c!5349 (validKeyInArray!0 (select (arr!1349 lt!17604) #b00000000000000000000000000000000)))))

(assert (= (and d!7709 (not res!25240)) b!42441))

(assert (= (and b!42441 c!5349) b!42440))

(assert (= (and b!42441 (not c!5349)) b!42438))

(assert (= (and b!42440 res!25241) b!42439))

(assert (= (or b!42439 b!42438) bm!3314))

(declare-fun m!36107 () Bool)

(assert (=> bm!3314 m!36107))

(declare-fun m!36109 () Bool)

(assert (=> b!42440 m!36109))

(declare-fun m!36111 () Bool)

(assert (=> b!42440 m!36111))

(declare-fun m!36113 () Bool)

(assert (=> b!42440 m!36113))

(assert (=> b!42440 m!36109))

(declare-fun m!36115 () Bool)

(assert (=> b!42440 m!36115))

(assert (=> b!42441 m!36109))

(assert (=> b!42441 m!36109))

(declare-fun m!36117 () Bool)

(assert (=> b!42441 m!36117))

(assert (=> b!42420 d!7709))

(declare-fun d!7715 () Bool)

(assert (=> d!7715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17604 mask!853)))

(declare-fun lt!17635 () Unit!1135)

(declare-fun choose!34 (array!2811 (_ BitVec 32) (_ BitVec 32)) Unit!1135)

(assert (=> d!7715 (= lt!17635 (choose!34 lt!17604 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7715 (validMask!0 mask!853)))

(assert (=> d!7715 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17604 mask!853 #b00000000000000000000000000000000) lt!17635)))

(declare-fun bs!1867 () Bool)

(assert (= bs!1867 d!7715))

(assert (=> bs!1867 m!36089))

(declare-fun m!36131 () Bool)

(assert (=> bs!1867 m!36131))

(assert (=> bs!1867 m!36087))

(assert (=> b!42420 d!7715))

(declare-fun b!42468 () Bool)

(declare-fun e!26898 () (_ BitVec 32))

(declare-fun e!26897 () (_ BitVec 32))

(assert (=> b!42468 (= e!26898 e!26897)))

(declare-fun c!5359 () Bool)

(assert (=> b!42468 (= c!5359 (validKeyInArray!0 (select (arr!1349 lt!17604) #b00000000000000000000000000000000)))))

(declare-fun d!7719 () Bool)

(declare-fun lt!17650 () (_ BitVec 32))

(assert (=> d!7719 (and (bvsge lt!17650 #b00000000000000000000000000000000) (bvsle lt!17650 (bvsub (size!1519 lt!17604) #b00000000000000000000000000000000)))))

(assert (=> d!7719 (= lt!17650 e!26898)))

(declare-fun c!5358 () Bool)

(assert (=> d!7719 (= c!5358 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7719 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1519 lt!17604)))))

(assert (=> d!7719 (= (arrayCountValidKeys!0 lt!17604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17650)))

(declare-fun bm!3323 () Bool)

(declare-fun call!3326 () (_ BitVec 32))

(assert (=> bm!3323 (= call!3326 (arrayCountValidKeys!0 lt!17604 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42469 () Bool)

(assert (=> b!42469 (= e!26898 #b00000000000000000000000000000000)))

(declare-fun b!42470 () Bool)

(assert (=> b!42470 (= e!26897 (bvadd #b00000000000000000000000000000001 call!3326))))

(declare-fun b!42471 () Bool)

(assert (=> b!42471 (= e!26897 call!3326)))

(assert (= (and d!7719 c!5358) b!42469))

(assert (= (and d!7719 (not c!5358)) b!42468))

(assert (= (and b!42468 c!5359) b!42470))

(assert (= (and b!42468 (not c!5359)) b!42471))

(assert (= (or b!42470 b!42471) bm!3323))

(assert (=> b!42468 m!36109))

(assert (=> b!42468 m!36109))

(assert (=> b!42468 m!36117))

(declare-fun m!36147 () Bool)

(assert (=> bm!3323 m!36147))

(assert (=> b!42420 d!7719))

(declare-fun d!7725 () Bool)

(assert (=> d!7725 (= (arrayCountValidKeys!0 lt!17604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17659 () Unit!1135)

(declare-fun choose!59 (array!2811 (_ BitVec 32) (_ BitVec 32)) Unit!1135)

(assert (=> d!7725 (= lt!17659 (choose!59 lt!17604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7725 (bvslt (size!1519 lt!17604) #b01111111111111111111111111111111)))

(assert (=> d!7725 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17604 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17659)))

(declare-fun bs!1870 () Bool)

(assert (= bs!1870 d!7725))

(assert (=> bs!1870 m!36093))

(declare-fun m!36151 () Bool)

(assert (=> bs!1870 m!36151))

(assert (=> b!42420 d!7725))

(declare-fun d!7729 () Bool)

(assert (=> d!7729 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 