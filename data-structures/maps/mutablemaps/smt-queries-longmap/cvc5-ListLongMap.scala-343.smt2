; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6244 () Bool)

(assert start!6244)

(declare-fun res!25225 () Bool)

(declare-fun e!26859 () Bool)

(assert (=> start!6244 (=> (not res!25225) (not e!26859))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6244 (= res!25225 (validMask!0 mask!853))))

(assert (=> start!6244 e!26859))

(assert (=> start!6244 true))

(declare-fun b!42417 () Bool)

(assert (=> b!42417 (= e!26859 (not (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))))

(declare-datatypes ((array!2809 0))(
  ( (array!2810 (arr!1348 (Array (_ BitVec 32) (_ BitVec 64))) (size!1518 (_ BitVec 32))) )
))
(declare-fun lt!17595 () array!2809)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2809 (_ BitVec 32)) Bool)

(assert (=> b!42417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17595 mask!853)))

(declare-datatypes ((Unit!1133 0))(
  ( (Unit!1134) )
))
(declare-fun lt!17596 () Unit!1133)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2809 (_ BitVec 32) (_ BitVec 32)) Unit!1133)

(assert (=> b!42417 (= lt!17596 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17595 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2809 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42417 (= (arrayCountValidKeys!0 lt!17595 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17594 () Unit!1133)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2809 (_ BitVec 32) (_ BitVec 32)) Unit!1133)

(assert (=> b!42417 (= lt!17594 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17595 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42417 (= lt!17595 (array!2810 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6244 res!25225) b!42417))

(declare-fun m!36077 () Bool)

(assert (=> start!6244 m!36077))

(declare-fun m!36079 () Bool)

(assert (=> b!42417 m!36079))

(declare-fun m!36081 () Bool)

(assert (=> b!42417 m!36081))

(declare-fun m!36083 () Bool)

(assert (=> b!42417 m!36083))

(declare-fun m!36085 () Bool)

(assert (=> b!42417 m!36085))

(push 1)

(assert (not start!6244))

(assert (not b!42417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7707 () Bool)

(assert (=> d!7707 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6244 d!7707))

(declare-fun d!7713 () Bool)

(declare-fun res!25249 () Bool)

(declare-fun e!26891 () Bool)

(assert (=> d!7713 (=> res!25249 e!26891)))

(assert (=> d!7713 (= res!25249 (bvsge #b00000000000000000000000000000000 (size!1518 lt!17595)))))

(assert (=> d!7713 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17595 mask!853) e!26891)))

(declare-fun b!42456 () Bool)

(declare-fun e!26890 () Bool)

(declare-fun e!26892 () Bool)

(assert (=> b!42456 (= e!26890 e!26892)))

(declare-fun lt!17645 () (_ BitVec 64))

(assert (=> b!42456 (= lt!17645 (select (arr!1348 lt!17595) #b00000000000000000000000000000000))))

(declare-fun lt!17647 () Unit!1133)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2809 (_ BitVec 64) (_ BitVec 32)) Unit!1133)

(assert (=> b!42456 (= lt!17647 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17595 lt!17645 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42456 (arrayContainsKey!0 lt!17595 lt!17645 #b00000000000000000000000000000000)))

(declare-fun lt!17646 () Unit!1133)

(assert (=> b!42456 (= lt!17646 lt!17647)))

(declare-fun res!25248 () Bool)

(declare-datatypes ((SeekEntryResult!195 0))(
  ( (MissingZero!195 (index!2902 (_ BitVec 32))) (Found!195 (index!2903 (_ BitVec 32))) (Intermediate!195 (undefined!1007 Bool) (index!2904 (_ BitVec 32)) (x!8120 (_ BitVec 32))) (Undefined!195) (MissingVacant!195 (index!2905 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2809 (_ BitVec 32)) SeekEntryResult!195)

(assert (=> b!42456 (= res!25248 (= (seekEntryOrOpen!0 (select (arr!1348 lt!17595) #b00000000000000000000000000000000) lt!17595 mask!853) (Found!195 #b00000000000000000000000000000000)))))

(assert (=> b!42456 (=> (not res!25248) (not e!26892))))

(declare-fun bm!3320 () Bool)

(declare-fun call!3323 () Bool)

(assert (=> bm!3320 (= call!3323 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17595 mask!853))))

(declare-fun b!42457 () Bool)

(assert (=> b!42457 (= e!26891 e!26890)))

(declare-fun c!5353 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42457 (= c!5353 (validKeyInArray!0 (select (arr!1348 lt!17595) #b00000000000000000000000000000000)))))

(declare-fun b!42458 () Bool)

(assert (=> b!42458 (= e!26892 call!3323)))

(declare-fun b!42459 () Bool)

(assert (=> b!42459 (= e!26890 call!3323)))

(assert (= (and d!7713 (not res!25249)) b!42457))

(assert (= (and b!42457 c!5353) b!42456))

(assert (= (and b!42457 (not c!5353)) b!42459))

(assert (= (and b!42456 res!25248) b!42458))

(assert (= (or b!42458 b!42459) bm!3320))

(declare-fun m!36135 () Bool)

(assert (=> b!42456 m!36135))

(declare-fun m!36137 () Bool)

(assert (=> b!42456 m!36137))

(declare-fun m!36139 () Bool)

(assert (=> b!42456 m!36139))

(assert (=> b!42456 m!36135))

(declare-fun m!36141 () Bool)

(assert (=> b!42456 m!36141))

(declare-fun m!36143 () Bool)

(assert (=> bm!3320 m!36143))

(assert (=> b!42457 m!36135))

(assert (=> b!42457 m!36135))

(declare-fun m!36145 () Bool)

(assert (=> b!42457 m!36145))

(assert (=> b!42417 d!7713))

(declare-fun d!7723 () Bool)

(assert (=> d!7723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17595 mask!853)))

(declare-fun lt!17655 () Unit!1133)

(declare-fun choose!34 (array!2809 (_ BitVec 32) (_ BitVec 32)) Unit!1133)

(assert (=> d!7723 (= lt!17655 (choose!34 lt!17595 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7723 (validMask!0 mask!853)))

(assert (=> d!7723 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17595 mask!853 #b00000000000000000000000000000000) lt!17655)))

(declare-fun bs!1869 () Bool)

(assert (= bs!1869 d!7723))

(assert (=> bs!1869 m!36079))

(declare-fun m!36149 () Bool)

(assert (=> bs!1869 m!36149))

(assert (=> bs!1869 m!36077))

(assert (=> b!42417 d!7723))

(declare-fun b!42492 () Bool)

(declare-fun e!26909 () (_ BitVec 32))

(declare-fun e!26910 () (_ BitVec 32))

(assert (=> b!42492 (= e!26909 e!26910)))

(declare-fun c!5370 () Bool)

(assert (=> b!42492 (= c!5370 (validKeyInArray!0 (select (arr!1348 lt!17595) #b00000000000000000000000000000000)))))

(declare-fun b!42493 () Bool)

(declare-fun call!3332 () (_ BitVec 32))

(assert (=> b!42493 (= e!26910 call!3332)))

(declare-fun b!42494 () Bool)

(assert (=> b!42494 (= e!26909 #b00000000000000000000000000000000)))

(declare-fun d!7727 () Bool)

(declare-fun lt!17665 () (_ BitVec 32))

(assert (=> d!7727 (and (bvsge lt!17665 #b00000000000000000000000000000000) (bvsle lt!17665 (bvsub (size!1518 lt!17595) #b00000000000000000000000000000000)))))

(assert (=> d!7727 (= lt!17665 e!26909)))

(declare-fun c!5371 () Bool)

(assert (=> d!7727 (= c!5371 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7727 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1518 lt!17595)))))

(assert (=> d!7727 (= (arrayCountValidKeys!0 lt!17595 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17665)))

(declare-fun b!42495 () Bool)

(assert (=> b!42495 (= e!26910 (bvadd #b00000000000000000000000000000001 call!3332))))

(declare-fun bm!3329 () Bool)

(assert (=> bm!3329 (= call!3332 (arrayCountValidKeys!0 lt!17595 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7727 c!5371) b!42494))

(assert (= (and d!7727 (not c!5371)) b!42492))

(assert (= (and b!42492 c!5370) b!42495))

(assert (= (and b!42492 (not c!5370)) b!42493))

(assert (= (or b!42495 b!42493) bm!3329))

(assert (=> b!42492 m!36135))

(assert (=> b!42492 m!36135))

(assert (=> b!42492 m!36145))

(declare-fun m!36157 () Bool)

(assert (=> bm!3329 m!36157))

(assert (=> b!42417 d!7727))

(declare-fun d!7735 () Bool)

(assert (=> d!7735 (= (arrayCountValidKeys!0 lt!17595 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17668 () Unit!1133)

(declare-fun choose!59 (array!2809 (_ BitVec 32) (_ BitVec 32)) Unit!1133)

(assert (=> d!7735 (= lt!17668 (choose!59 lt!17595 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7735 (bvslt (size!1518 lt!17595) #b01111111111111111111111111111111)))

(assert (=> d!7735 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17595 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17668)))

(declare-fun bs!1872 () Bool)

(assert (= bs!1872 d!7735))

(assert (=> bs!1872 m!36083))

(declare-fun m!36159 () Bool)

(assert (=> bs!1872 m!36159))

(assert (=> b!42417 d!7735))

(push 1)

(assert (not b!42492))

(assert (not d!7735))

(assert (not bm!3329))

(assert (not d!7723))

(assert (not bm!3320))

(assert (not b!42456))

(assert (not b!42457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

