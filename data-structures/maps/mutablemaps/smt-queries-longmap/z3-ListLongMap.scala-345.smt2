; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6324 () Bool)

(assert start!6324)

(declare-fun b!42639 () Bool)

(declare-fun e!27018 () Bool)

(declare-fun e!27017 () Bool)

(assert (=> b!42639 (= e!27018 (not e!27017))))

(declare-fun res!25341 () Bool)

(assert (=> b!42639 (=> res!25341 e!27017)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!42639 (= res!25341 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2823 0))(
  ( (array!2824 (arr!1355 (Array (_ BitVec 32) (_ BitVec 64))) (size!1531 (_ BitVec 32))) )
))
(declare-fun lt!17779 () array!2823)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2823 (_ BitVec 32)) Bool)

(assert (=> b!42639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17779 mask!853)))

(declare-datatypes ((Unit!1147 0))(
  ( (Unit!1148) )
))
(declare-fun lt!17777 () Unit!1147)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2823 (_ BitVec 32) (_ BitVec 32)) Unit!1147)

(assert (=> b!42639 (= lt!17777 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17779 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2823 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42639 (= (arrayCountValidKeys!0 lt!17779 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17778 () Unit!1147)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2823 (_ BitVec 32) (_ BitVec 32)) Unit!1147)

(assert (=> b!42639 (= lt!17778 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17779 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42639 (= lt!17779 (array!2824 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42640 () Bool)

(declare-fun res!25339 () Bool)

(assert (=> b!42640 (=> res!25339 e!27017)))

(declare-datatypes ((List!1162 0))(
  ( (Nil!1159) (Cons!1158 (h!1735 (_ BitVec 64)) (t!4117 List!1162)) )
))
(declare-fun contains!559 (List!1162 (_ BitVec 64)) Bool)

(assert (=> b!42640 (= res!25339 (contains!559 Nil!1159 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!25340 () Bool)

(assert (=> start!6324 (=> (not res!25340) (not e!27018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6324 (= res!25340 (validMask!0 mask!853))))

(assert (=> start!6324 e!27018))

(assert (=> start!6324 true))

(declare-fun b!42642 () Bool)

(declare-fun noDuplicate!31 (List!1162) Bool)

(assert (=> b!42642 (= e!27017 (noDuplicate!31 Nil!1159))))

(declare-fun b!42641 () Bool)

(declare-fun res!25342 () Bool)

(assert (=> b!42641 (=> res!25342 e!27017)))

(assert (=> b!42641 (= res!25342 (contains!559 Nil!1159 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6324 res!25340) b!42639))

(assert (= (and b!42639 (not res!25341)) b!42640))

(assert (= (and b!42640 (not res!25339)) b!42641))

(assert (= (and b!42641 (not res!25342)) b!42642))

(declare-fun m!36303 () Bool)

(assert (=> b!42642 m!36303))

(declare-fun m!36305 () Bool)

(assert (=> start!6324 m!36305))

(declare-fun m!36307 () Bool)

(assert (=> b!42639 m!36307))

(declare-fun m!36309 () Bool)

(assert (=> b!42639 m!36309))

(declare-fun m!36311 () Bool)

(assert (=> b!42639 m!36311))

(declare-fun m!36313 () Bool)

(assert (=> b!42639 m!36313))

(declare-fun m!36315 () Bool)

(assert (=> b!42641 m!36315))

(declare-fun m!36317 () Bool)

(assert (=> b!42640 m!36317))

(check-sat (not b!42641) (not start!6324) (not b!42642) (not b!42640) (not b!42639))
(check-sat)
(get-model)

(declare-fun bm!3350 () Bool)

(declare-fun call!3353 () Bool)

(assert (=> bm!3350 (= call!3353 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17779 mask!853))))

(declare-fun b!42667 () Bool)

(declare-fun e!27036 () Bool)

(assert (=> b!42667 (= e!27036 call!3353)))

(declare-fun b!42668 () Bool)

(declare-fun e!27037 () Bool)

(declare-fun e!27035 () Bool)

(assert (=> b!42668 (= e!27037 e!27035)))

(declare-fun c!5401 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42668 (= c!5401 (validKeyInArray!0 (select (arr!1355 lt!17779) #b00000000000000000000000000000000)))))

(declare-fun d!7783 () Bool)

(declare-fun res!25363 () Bool)

(assert (=> d!7783 (=> res!25363 e!27037)))

(assert (=> d!7783 (= res!25363 (bvsge #b00000000000000000000000000000000 (size!1531 lt!17779)))))

(assert (=> d!7783 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17779 mask!853) e!27037)))

(declare-fun b!42669 () Bool)

(assert (=> b!42669 (= e!27035 e!27036)))

(declare-fun lt!17798 () (_ BitVec 64))

(assert (=> b!42669 (= lt!17798 (select (arr!1355 lt!17779) #b00000000000000000000000000000000))))

(declare-fun lt!17799 () Unit!1147)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2823 (_ BitVec 64) (_ BitVec 32)) Unit!1147)

(assert (=> b!42669 (= lt!17799 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17779 lt!17798 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42669 (arrayContainsKey!0 lt!17779 lt!17798 #b00000000000000000000000000000000)))

(declare-fun lt!17797 () Unit!1147)

(assert (=> b!42669 (= lt!17797 lt!17799)))

(declare-fun res!25364 () Bool)

(declare-datatypes ((SeekEntryResult!201 0))(
  ( (MissingZero!201 (index!2926 (_ BitVec 32))) (Found!201 (index!2927 (_ BitVec 32))) (Intermediate!201 (undefined!1013 Bool) (index!2928 (_ BitVec 32)) (x!8142 (_ BitVec 32))) (Undefined!201) (MissingVacant!201 (index!2929 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2823 (_ BitVec 32)) SeekEntryResult!201)

(assert (=> b!42669 (= res!25364 (= (seekEntryOrOpen!0 (select (arr!1355 lt!17779) #b00000000000000000000000000000000) lt!17779 mask!853) (Found!201 #b00000000000000000000000000000000)))))

(assert (=> b!42669 (=> (not res!25364) (not e!27036))))

(declare-fun b!42670 () Bool)

(assert (=> b!42670 (= e!27035 call!3353)))

(assert (= (and d!7783 (not res!25363)) b!42668))

(assert (= (and b!42668 c!5401) b!42669))

(assert (= (and b!42668 (not c!5401)) b!42670))

(assert (= (and b!42669 res!25364) b!42667))

(assert (= (or b!42667 b!42670) bm!3350))

(declare-fun m!36335 () Bool)

(assert (=> bm!3350 m!36335))

(declare-fun m!36337 () Bool)

(assert (=> b!42668 m!36337))

(assert (=> b!42668 m!36337))

(declare-fun m!36339 () Bool)

(assert (=> b!42668 m!36339))

(assert (=> b!42669 m!36337))

(declare-fun m!36341 () Bool)

(assert (=> b!42669 m!36341))

(declare-fun m!36343 () Bool)

(assert (=> b!42669 m!36343))

(assert (=> b!42669 m!36337))

(declare-fun m!36345 () Bool)

(assert (=> b!42669 m!36345))

(assert (=> b!42639 d!7783))

(declare-fun d!7789 () Bool)

(assert (=> d!7789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17779 mask!853)))

(declare-fun lt!17809 () Unit!1147)

(declare-fun choose!34 (array!2823 (_ BitVec 32) (_ BitVec 32)) Unit!1147)

(assert (=> d!7789 (= lt!17809 (choose!34 lt!17779 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7789 (validMask!0 mask!853)))

(assert (=> d!7789 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17779 mask!853 #b00000000000000000000000000000000) lt!17809)))

(declare-fun bs!1885 () Bool)

(assert (= bs!1885 d!7789))

(assert (=> bs!1885 m!36307))

(declare-fun m!36353 () Bool)

(assert (=> bs!1885 m!36353))

(assert (=> bs!1885 m!36305))

(assert (=> b!42639 d!7789))

(declare-fun b!42693 () Bool)

(declare-fun e!27054 () (_ BitVec 32))

(declare-fun call!3359 () (_ BitVec 32))

(assert (=> b!42693 (= e!27054 call!3359)))

(declare-fun b!42694 () Bool)

(assert (=> b!42694 (= e!27054 (bvadd #b00000000000000000000000000000001 call!3359))))

(declare-fun d!7793 () Bool)

(declare-fun lt!17815 () (_ BitVec 32))

(assert (=> d!7793 (and (bvsge lt!17815 #b00000000000000000000000000000000) (bvsle lt!17815 (bvsub (size!1531 lt!17779) #b00000000000000000000000000000000)))))

(declare-fun e!27053 () (_ BitVec 32))

(assert (=> d!7793 (= lt!17815 e!27053)))

(declare-fun c!5410 () Bool)

(assert (=> d!7793 (= c!5410 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7793 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1531 lt!17779)))))

(assert (=> d!7793 (= (arrayCountValidKeys!0 lt!17779 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17815)))

(declare-fun b!42695 () Bool)

(assert (=> b!42695 (= e!27053 e!27054)))

(declare-fun c!5409 () Bool)

(assert (=> b!42695 (= c!5409 (validKeyInArray!0 (select (arr!1355 lt!17779) #b00000000000000000000000000000000)))))

(declare-fun b!42696 () Bool)

(assert (=> b!42696 (= e!27053 #b00000000000000000000000000000000)))

(declare-fun bm!3356 () Bool)

(assert (=> bm!3356 (= call!3359 (arrayCountValidKeys!0 lt!17779 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7793 c!5410) b!42696))

(assert (= (and d!7793 (not c!5410)) b!42695))

(assert (= (and b!42695 c!5409) b!42694))

(assert (= (and b!42695 (not c!5409)) b!42693))

(assert (= (or b!42694 b!42693) bm!3356))

(assert (=> b!42695 m!36337))

(assert (=> b!42695 m!36337))

(assert (=> b!42695 m!36339))

(declare-fun m!36367 () Bool)

(assert (=> bm!3356 m!36367))

(assert (=> b!42639 d!7793))

(declare-fun d!7799 () Bool)

(assert (=> d!7799 (= (arrayCountValidKeys!0 lt!17779 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17821 () Unit!1147)

(declare-fun choose!59 (array!2823 (_ BitVec 32) (_ BitVec 32)) Unit!1147)

(assert (=> d!7799 (= lt!17821 (choose!59 lt!17779 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7799 (bvslt (size!1531 lt!17779) #b01111111111111111111111111111111)))

(assert (=> d!7799 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17779 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17821)))

(declare-fun bs!1887 () Bool)

(assert (= bs!1887 d!7799))

(assert (=> bs!1887 m!36311))

(declare-fun m!36371 () Bool)

(assert (=> bs!1887 m!36371))

(assert (=> b!42639 d!7799))

(declare-fun d!7803 () Bool)

(declare-fun res!25379 () Bool)

(declare-fun e!27067 () Bool)

(assert (=> d!7803 (=> res!25379 e!27067)))

(get-info :version)

(assert (=> d!7803 (= res!25379 ((_ is Nil!1159) Nil!1159))))

(assert (=> d!7803 (= (noDuplicate!31 Nil!1159) e!27067)))

(declare-fun b!42715 () Bool)

(declare-fun e!27068 () Bool)

(assert (=> b!42715 (= e!27067 e!27068)))

(declare-fun res!25380 () Bool)

(assert (=> b!42715 (=> (not res!25380) (not e!27068))))

(assert (=> b!42715 (= res!25380 (not (contains!559 (t!4117 Nil!1159) (h!1735 Nil!1159))))))

(declare-fun b!42716 () Bool)

(assert (=> b!42716 (= e!27068 (noDuplicate!31 (t!4117 Nil!1159)))))

(assert (= (and d!7803 (not res!25379)) b!42715))

(assert (= (and b!42715 res!25380) b!42716))

(declare-fun m!36373 () Bool)

(assert (=> b!42715 m!36373))

(declare-fun m!36375 () Bool)

(assert (=> b!42716 m!36375))

(assert (=> b!42642 d!7803))

(declare-fun d!7805 () Bool)

(declare-fun lt!17836 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!38 (List!1162) (InoxSet (_ BitVec 64)))

(assert (=> d!7805 (= lt!17836 (select (content!38 Nil!1159) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!27080 () Bool)

(assert (=> d!7805 (= lt!17836 e!27080)))

(declare-fun res!25389 () Bool)

(assert (=> d!7805 (=> (not res!25389) (not e!27080))))

(assert (=> d!7805 (= res!25389 ((_ is Cons!1158) Nil!1159))))

(assert (=> d!7805 (= (contains!559 Nil!1159 #b1000000000000000000000000000000000000000000000000000000000000000) lt!17836)))

(declare-fun b!42731 () Bool)

(declare-fun e!27081 () Bool)

(assert (=> b!42731 (= e!27080 e!27081)))

(declare-fun res!25390 () Bool)

(assert (=> b!42731 (=> res!25390 e!27081)))

(assert (=> b!42731 (= res!25390 (= (h!1735 Nil!1159) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42732 () Bool)

(assert (=> b!42732 (= e!27081 (contains!559 (t!4117 Nil!1159) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!7805 res!25389) b!42731))

(assert (= (and b!42731 (not res!25390)) b!42732))

(declare-fun m!36391 () Bool)

(assert (=> d!7805 m!36391))

(declare-fun m!36393 () Bool)

(assert (=> d!7805 m!36393))

(declare-fun m!36395 () Bool)

(assert (=> b!42732 m!36395))

(assert (=> b!42641 d!7805))

(declare-fun d!7811 () Bool)

(declare-fun lt!17839 () Bool)

(assert (=> d!7811 (= lt!17839 (select (content!38 Nil!1159) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!27082 () Bool)

(assert (=> d!7811 (= lt!17839 e!27082)))

(declare-fun res!25391 () Bool)

(assert (=> d!7811 (=> (not res!25391) (not e!27082))))

(assert (=> d!7811 (= res!25391 ((_ is Cons!1158) Nil!1159))))

(assert (=> d!7811 (= (contains!559 Nil!1159 #b0000000000000000000000000000000000000000000000000000000000000000) lt!17839)))

(declare-fun b!42733 () Bool)

(declare-fun e!27083 () Bool)

(assert (=> b!42733 (= e!27082 e!27083)))

(declare-fun res!25392 () Bool)

(assert (=> b!42733 (=> res!25392 e!27083)))

(assert (=> b!42733 (= res!25392 (= (h!1735 Nil!1159) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42734 () Bool)

(assert (=> b!42734 (= e!27083 (contains!559 (t!4117 Nil!1159) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!7811 res!25391) b!42733))

(assert (= (and b!42733 (not res!25392)) b!42734))

(assert (=> d!7811 m!36391))

(declare-fun m!36397 () Bool)

(assert (=> d!7811 m!36397))

(declare-fun m!36399 () Bool)

(assert (=> b!42734 m!36399))

(assert (=> b!42640 d!7811))

(declare-fun d!7813 () Bool)

(assert (=> d!7813 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6324 d!7813))

(check-sat (not b!42669) (not b!42734) (not d!7805) (not b!42715) (not b!42668) (not d!7811) (not b!42732) (not b!42716) (not bm!3356) (not d!7789) (not b!42695) (not bm!3350) (not d!7799))
(check-sat)
