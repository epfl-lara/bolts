; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47014 () Bool)

(assert start!47014)

(declare-fun b!518152 () Bool)

(declare-datatypes ((Unit!16034 0))(
  ( (Unit!16035) )
))
(declare-fun e!302334 () Unit!16034)

(declare-fun Unit!16036 () Unit!16034)

(assert (=> b!518152 (= e!302334 Unit!16036)))

(declare-fun b!518153 () Bool)

(declare-fun e!302331 () Bool)

(assert (=> b!518153 (= e!302331 false)))

(declare-fun b!518154 () Bool)

(declare-fun e!302335 () Bool)

(declare-fun e!302330 () Bool)

(assert (=> b!518154 (= e!302335 e!302330)))

(declare-fun res!317324 () Bool)

(assert (=> b!518154 (=> (not res!317324) (not e!302330))))

(declare-datatypes ((SeekEntryResult!4392 0))(
  ( (MissingZero!4392 (index!19756 (_ BitVec 32))) (Found!4392 (index!19757 (_ BitVec 32))) (Intermediate!4392 (undefined!5204 Bool) (index!19758 (_ BitVec 32)) (x!48752 (_ BitVec 32))) (Undefined!4392) (MissingVacant!4392 (index!19759 (_ BitVec 32))) )
))
(declare-fun lt!237269 () SeekEntryResult!4392)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!518154 (= res!317324 (or (= lt!237269 (MissingZero!4392 i!1204)) (= lt!237269 (MissingVacant!4392 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33115 0))(
  ( (array!33116 (arr!15918 (Array (_ BitVec 32) (_ BitVec 64))) (size!16282 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33115)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33115 (_ BitVec 32)) SeekEntryResult!4392)

(assert (=> b!518154 (= lt!237269 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!518155 () Bool)

(declare-fun res!317319 () Bool)

(declare-fun e!302332 () Bool)

(assert (=> b!518155 (=> res!317319 e!302332)))

(declare-fun lt!237271 () SeekEntryResult!4392)

(assert (=> b!518155 (= res!317319 (or (undefined!5204 lt!237271) (not (is-Intermediate!4392 lt!237271))))))

(declare-fun b!518156 () Bool)

(declare-fun Unit!16037 () Unit!16034)

(assert (=> b!518156 (= e!302334 Unit!16037)))

(declare-fun lt!237266 () Unit!16034)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!237267 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33115 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16034)

(assert (=> b!518156 (= lt!237266 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237267 #b00000000000000000000000000000000 (index!19758 lt!237271) (x!48752 lt!237271) mask!3524))))

(declare-fun lt!237272 () array!33115)

(declare-fun lt!237270 () (_ BitVec 64))

(declare-fun res!317323 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33115 (_ BitVec 32)) SeekEntryResult!4392)

(assert (=> b!518156 (= res!317323 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237267 lt!237270 lt!237272 mask!3524) (Intermediate!4392 false (index!19758 lt!237271) (x!48752 lt!237271))))))

(assert (=> b!518156 (=> (not res!317323) (not e!302331))))

(assert (=> b!518156 e!302331))

(declare-fun b!518157 () Bool)

(declare-fun res!317322 () Bool)

(assert (=> b!518157 (=> (not res!317322) (not e!302330))))

(declare-datatypes ((List!10129 0))(
  ( (Nil!10126) (Cons!10125 (h!11032 (_ BitVec 64)) (t!16365 List!10129)) )
))
(declare-fun arrayNoDuplicates!0 (array!33115 (_ BitVec 32) List!10129) Bool)

(assert (=> b!518157 (= res!317322 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10126))))

(declare-fun b!518158 () Bool)

(declare-fun res!317320 () Bool)

(assert (=> b!518158 (=> (not res!317320) (not e!302335))))

(assert (=> b!518158 (= res!317320 (and (= (size!16282 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16282 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16282 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!518159 () Bool)

(declare-fun res!317313 () Bool)

(assert (=> b!518159 (=> (not res!317313) (not e!302335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!518159 (= res!317313 (validKeyInArray!0 (select (arr!15918 a!3235) j!176)))))

(declare-fun b!518160 () Bool)

(assert (=> b!518160 (= e!302332 (and (bvsge (index!19758 lt!237271) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237271) (size!16282 a!3235))))))

(declare-fun lt!237268 () Unit!16034)

(assert (=> b!518160 (= lt!237268 e!302334)))

(declare-fun c!60713 () Bool)

(assert (=> b!518160 (= c!60713 (= (select (arr!15918 a!3235) (index!19758 lt!237271)) (select (arr!15918 a!3235) j!176)))))

(assert (=> b!518160 (and (bvslt (x!48752 lt!237271) #b01111111111111111111111111111110) (or (= (select (arr!15918 a!3235) (index!19758 lt!237271)) (select (arr!15918 a!3235) j!176)) (= (select (arr!15918 a!3235) (index!19758 lt!237271)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15918 a!3235) (index!19758 lt!237271)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!317321 () Bool)

(assert (=> start!47014 (=> (not res!317321) (not e!302335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47014 (= res!317321 (validMask!0 mask!3524))))

(assert (=> start!47014 e!302335))

(assert (=> start!47014 true))

(declare-fun array_inv!11692 (array!33115) Bool)

(assert (=> start!47014 (array_inv!11692 a!3235)))

(declare-fun b!518161 () Bool)

(declare-fun res!317318 () Bool)

(assert (=> b!518161 (=> (not res!317318) (not e!302335))))

(assert (=> b!518161 (= res!317318 (validKeyInArray!0 k!2280))))

(declare-fun b!518162 () Bool)

(assert (=> b!518162 (= e!302330 (not e!302332))))

(declare-fun res!317314 () Bool)

(assert (=> b!518162 (=> res!317314 e!302332)))

(declare-fun lt!237265 () (_ BitVec 32))

(assert (=> b!518162 (= res!317314 (= lt!237271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237265 lt!237270 lt!237272 mask!3524)))))

(assert (=> b!518162 (= lt!237271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237267 (select (arr!15918 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518162 (= lt!237265 (toIndex!0 lt!237270 mask!3524))))

(assert (=> b!518162 (= lt!237270 (select (store (arr!15918 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!518162 (= lt!237267 (toIndex!0 (select (arr!15918 a!3235) j!176) mask!3524))))

(assert (=> b!518162 (= lt!237272 (array!33116 (store (arr!15918 a!3235) i!1204 k!2280) (size!16282 a!3235)))))

(declare-fun e!302333 () Bool)

(assert (=> b!518162 e!302333))

(declare-fun res!317317 () Bool)

(assert (=> b!518162 (=> (not res!317317) (not e!302333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33115 (_ BitVec 32)) Bool)

(assert (=> b!518162 (= res!317317 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237264 () Unit!16034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33115 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16034)

(assert (=> b!518162 (= lt!237264 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!518163 () Bool)

(assert (=> b!518163 (= e!302333 (= (seekEntryOrOpen!0 (select (arr!15918 a!3235) j!176) a!3235 mask!3524) (Found!4392 j!176)))))

(declare-fun b!518164 () Bool)

(declare-fun res!317315 () Bool)

(assert (=> b!518164 (=> (not res!317315) (not e!302335))))

(declare-fun arrayContainsKey!0 (array!33115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!518164 (= res!317315 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!518165 () Bool)

(declare-fun res!317316 () Bool)

(assert (=> b!518165 (=> (not res!317316) (not e!302330))))

(assert (=> b!518165 (= res!317316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47014 res!317321) b!518158))

(assert (= (and b!518158 res!317320) b!518159))

(assert (= (and b!518159 res!317313) b!518161))

(assert (= (and b!518161 res!317318) b!518164))

(assert (= (and b!518164 res!317315) b!518154))

(assert (= (and b!518154 res!317324) b!518165))

(assert (= (and b!518165 res!317316) b!518157))

(assert (= (and b!518157 res!317322) b!518162))

(assert (= (and b!518162 res!317317) b!518163))

(assert (= (and b!518162 (not res!317314)) b!518155))

(assert (= (and b!518155 (not res!317319)) b!518160))

(assert (= (and b!518160 c!60713) b!518156))

(assert (= (and b!518160 (not c!60713)) b!518152))

(assert (= (and b!518156 res!317323) b!518153))

(declare-fun m!499567 () Bool)

(assert (=> b!518154 m!499567))

(declare-fun m!499569 () Bool)

(assert (=> b!518165 m!499569))

(declare-fun m!499571 () Bool)

(assert (=> b!518156 m!499571))

(declare-fun m!499573 () Bool)

(assert (=> b!518156 m!499573))

(declare-fun m!499575 () Bool)

(assert (=> b!518161 m!499575))

(declare-fun m!499577 () Bool)

(assert (=> b!518160 m!499577))

(declare-fun m!499579 () Bool)

(assert (=> b!518160 m!499579))

(declare-fun m!499581 () Bool)

(assert (=> b!518164 m!499581))

(assert (=> b!518159 m!499579))

(assert (=> b!518159 m!499579))

(declare-fun m!499583 () Bool)

(assert (=> b!518159 m!499583))

(declare-fun m!499585 () Bool)

(assert (=> b!518157 m!499585))

(assert (=> b!518163 m!499579))

(assert (=> b!518163 m!499579))

(declare-fun m!499587 () Bool)

(assert (=> b!518163 m!499587))

(declare-fun m!499589 () Bool)

(assert (=> b!518162 m!499589))

(declare-fun m!499591 () Bool)

(assert (=> b!518162 m!499591))

(declare-fun m!499593 () Bool)

(assert (=> b!518162 m!499593))

(assert (=> b!518162 m!499579))

(declare-fun m!499595 () Bool)

(assert (=> b!518162 m!499595))

(assert (=> b!518162 m!499579))

(declare-fun m!499597 () Bool)

(assert (=> b!518162 m!499597))

(declare-fun m!499599 () Bool)

(assert (=> b!518162 m!499599))

(assert (=> b!518162 m!499579))

(declare-fun m!499601 () Bool)

(assert (=> b!518162 m!499601))

(declare-fun m!499603 () Bool)

(assert (=> b!518162 m!499603))

(declare-fun m!499605 () Bool)

(assert (=> start!47014 m!499605))

(declare-fun m!499607 () Bool)

(assert (=> start!47014 m!499607))

(push 1)

(assert (not b!518157))

(assert (not b!518164))

(assert (not b!518162))

(assert (not b!518161))

(assert (not b!518163))

(assert (not b!518159))

(assert (not start!47014))

(assert (not b!518154))

(assert (not b!518156))

(assert (not b!518165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79747 () Bool)

(declare-fun res!317416 () Bool)

(declare-fun e!302400 () Bool)

(assert (=> d!79747 (=> res!317416 e!302400)))

(assert (=> d!79747 (= res!317416 (= (select (arr!15918 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79747 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!302400)))

(declare-fun b!518275 () Bool)

(declare-fun e!302401 () Bool)

(assert (=> b!518275 (= e!302400 e!302401)))

(declare-fun res!317417 () Bool)

(assert (=> b!518275 (=> (not res!317417) (not e!302401))))

(assert (=> b!518275 (= res!317417 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16282 a!3235)))))

(declare-fun b!518276 () Bool)

(assert (=> b!518276 (= e!302401 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79747 (not res!317416)) b!518275))

(assert (= (and b!518275 res!317417) b!518276))

(declare-fun m!499711 () Bool)

(assert (=> d!79747 m!499711))

(declare-fun m!499713 () Bool)

(assert (=> b!518276 m!499713))

(assert (=> b!518164 d!79747))

(declare-fun d!79749 () Bool)

(assert (=> d!79749 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47014 d!79749))

(declare-fun d!79755 () Bool)

(assert (=> d!79755 (= (array_inv!11692 a!3235) (bvsge (size!16282 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47014 d!79755))

(declare-fun b!518337 () Bool)

(declare-fun e!302440 () SeekEntryResult!4392)

(declare-fun lt!237361 () SeekEntryResult!4392)

(assert (=> b!518337 (= e!302440 (MissingZero!4392 (index!19758 lt!237361)))))

(declare-fun b!518338 () Bool)

(declare-fun c!60744 () Bool)

(declare-fun lt!237360 () (_ BitVec 64))

(assert (=> b!518338 (= c!60744 (= lt!237360 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302438 () SeekEntryResult!4392)

(assert (=> b!518338 (= e!302438 e!302440)))

(declare-fun b!518339 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33115 (_ BitVec 32)) SeekEntryResult!4392)

(assert (=> b!518339 (= e!302440 (seekKeyOrZeroReturnVacant!0 (x!48752 lt!237361) (index!19758 lt!237361) (index!19758 lt!237361) k!2280 a!3235 mask!3524))))

(declare-fun d!79757 () Bool)

(declare-fun lt!237362 () SeekEntryResult!4392)

(assert (=> d!79757 (and (or (is-Undefined!4392 lt!237362) (not (is-Found!4392 lt!237362)) (and (bvsge (index!19757 lt!237362) #b00000000000000000000000000000000) (bvslt (index!19757 lt!237362) (size!16282 a!3235)))) (or (is-Undefined!4392 lt!237362) (is-Found!4392 lt!237362) (not (is-MissingZero!4392 lt!237362)) (and (bvsge (index!19756 lt!237362) #b00000000000000000000000000000000) (bvslt (index!19756 lt!237362) (size!16282 a!3235)))) (or (is-Undefined!4392 lt!237362) (is-Found!4392 lt!237362) (is-MissingZero!4392 lt!237362) (not (is-MissingVacant!4392 lt!237362)) (and (bvsge (index!19759 lt!237362) #b00000000000000000000000000000000) (bvslt (index!19759 lt!237362) (size!16282 a!3235)))) (or (is-Undefined!4392 lt!237362) (ite (is-Found!4392 lt!237362) (= (select (arr!15918 a!3235) (index!19757 lt!237362)) k!2280) (ite (is-MissingZero!4392 lt!237362) (= (select (arr!15918 a!3235) (index!19756 lt!237362)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4392 lt!237362) (= (select (arr!15918 a!3235) (index!19759 lt!237362)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302439 () SeekEntryResult!4392)

(assert (=> d!79757 (= lt!237362 e!302439)))

(declare-fun c!60746 () Bool)

(assert (=> d!79757 (= c!60746 (and (is-Intermediate!4392 lt!237361) (undefined!5204 lt!237361)))))

(assert (=> d!79757 (= lt!237361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79757 (validMask!0 mask!3524)))

(assert (=> d!79757 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!237362)))

(declare-fun b!518340 () Bool)

(assert (=> b!518340 (= e!302439 Undefined!4392)))

(declare-fun b!518341 () Bool)

(assert (=> b!518341 (= e!302438 (Found!4392 (index!19758 lt!237361)))))

(declare-fun b!518342 () Bool)

(assert (=> b!518342 (= e!302439 e!302438)))

(assert (=> b!518342 (= lt!237360 (select (arr!15918 a!3235) (index!19758 lt!237361)))))

(declare-fun c!60745 () Bool)

(assert (=> b!518342 (= c!60745 (= lt!237360 k!2280))))

(assert (= (and d!79757 c!60746) b!518340))

(assert (= (and d!79757 (not c!60746)) b!518342))

(assert (= (and b!518342 c!60745) b!518341))

(assert (= (and b!518342 (not c!60745)) b!518338))

(assert (= (and b!518338 c!60744) b!518337))

(assert (= (and b!518338 (not c!60744)) b!518339))

(declare-fun m!499731 () Bool)

(assert (=> b!518339 m!499731))

(declare-fun m!499733 () Bool)

(assert (=> d!79757 m!499733))

(declare-fun m!499735 () Bool)

(assert (=> d!79757 m!499735))

(assert (=> d!79757 m!499605))

(declare-fun m!499737 () Bool)

(assert (=> d!79757 m!499737))

(declare-fun m!499739 () Bool)

(assert (=> d!79757 m!499739))

(assert (=> d!79757 m!499733))

(declare-fun m!499741 () Bool)

(assert (=> d!79757 m!499741))

(declare-fun m!499743 () Bool)

(assert (=> b!518342 m!499743))

(assert (=> b!518154 d!79757))

(declare-fun d!79765 () Bool)

(assert (=> d!79765 (= (validKeyInArray!0 (select (arr!15918 a!3235) j!176)) (and (not (= (select (arr!15918 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15918 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518159 d!79765))

(declare-fun b!518377 () Bool)

(declare-fun e!302463 () Bool)

(declare-fun call!31706 () Bool)

(assert (=> b!518377 (= e!302463 call!31706)))

(declare-fun bm!31703 () Bool)

(declare-fun c!60758 () Bool)

(assert (=> bm!31703 (= call!31706 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60758 (Cons!10125 (select (arr!15918 a!3235) #b00000000000000000000000000000000) Nil!10126) Nil!10126)))))

(declare-fun d!79767 () Bool)

(declare-fun res!317449 () Bool)

(declare-fun e!302464 () Bool)

(assert (=> d!79767 (=> res!317449 e!302464)))

(assert (=> d!79767 (= res!317449 (bvsge #b00000000000000000000000000000000 (size!16282 a!3235)))))

(assert (=> d!79767 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10126) e!302464)))

(declare-fun b!518378 () Bool)

(declare-fun e!302465 () Bool)

(declare-fun contains!2755 (List!10129 (_ BitVec 64)) Bool)

(assert (=> b!518378 (= e!302465 (contains!2755 Nil!10126 (select (arr!15918 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518379 () Bool)

(declare-fun e!302462 () Bool)

(assert (=> b!518379 (= e!302464 e!302462)))

(declare-fun res!317450 () Bool)

(assert (=> b!518379 (=> (not res!317450) (not e!302462))))

(assert (=> b!518379 (= res!317450 (not e!302465))))

(declare-fun res!317451 () Bool)

(assert (=> b!518379 (=> (not res!317451) (not e!302465))))

(assert (=> b!518379 (= res!317451 (validKeyInArray!0 (select (arr!15918 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518380 () Bool)

(assert (=> b!518380 (= e!302462 e!302463)))

(assert (=> b!518380 (= c!60758 (validKeyInArray!0 (select (arr!15918 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!518381 () Bool)

(assert (=> b!518381 (= e!302463 call!31706)))

(assert (= (and d!79767 (not res!317449)) b!518379))

(assert (= (and b!518379 res!317451) b!518378))

(assert (= (and b!518379 res!317450) b!518380))

(assert (= (and b!518380 c!60758) b!518381))

(assert (= (and b!518380 (not c!60758)) b!518377))

(assert (= (or b!518381 b!518377) bm!31703))

(assert (=> bm!31703 m!499711))

(declare-fun m!499757 () Bool)

(assert (=> bm!31703 m!499757))

(assert (=> b!518378 m!499711))

(assert (=> b!518378 m!499711))

(declare-fun m!499759 () Bool)

(assert (=> b!518378 m!499759))

(assert (=> b!518379 m!499711))

(assert (=> b!518379 m!499711))

(declare-fun m!499761 () Bool)

(assert (=> b!518379 m!499761))

(assert (=> b!518380 m!499711))

(assert (=> b!518380 m!499711))

(assert (=> b!518380 m!499761))

(assert (=> b!518157 d!79767))

(declare-fun b!518382 () Bool)

(declare-fun e!302468 () SeekEntryResult!4392)

(declare-fun lt!237375 () SeekEntryResult!4392)

(assert (=> b!518382 (= e!302468 (MissingZero!4392 (index!19758 lt!237375)))))

(declare-fun b!518383 () Bool)

(declare-fun c!60759 () Bool)

(declare-fun lt!237374 () (_ BitVec 64))

(assert (=> b!518383 (= c!60759 (= lt!237374 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302466 () SeekEntryResult!4392)

(assert (=> b!518383 (= e!302466 e!302468)))

(declare-fun b!518384 () Bool)

(assert (=> b!518384 (= e!302468 (seekKeyOrZeroReturnVacant!0 (x!48752 lt!237375) (index!19758 lt!237375) (index!19758 lt!237375) (select (arr!15918 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!79771 () Bool)

(declare-fun lt!237376 () SeekEntryResult!4392)

(assert (=> d!79771 (and (or (is-Undefined!4392 lt!237376) (not (is-Found!4392 lt!237376)) (and (bvsge (index!19757 lt!237376) #b00000000000000000000000000000000) (bvslt (index!19757 lt!237376) (size!16282 a!3235)))) (or (is-Undefined!4392 lt!237376) (is-Found!4392 lt!237376) (not (is-MissingZero!4392 lt!237376)) (and (bvsge (index!19756 lt!237376) #b00000000000000000000000000000000) (bvslt (index!19756 lt!237376) (size!16282 a!3235)))) (or (is-Undefined!4392 lt!237376) (is-Found!4392 lt!237376) (is-MissingZero!4392 lt!237376) (not (is-MissingVacant!4392 lt!237376)) (and (bvsge (index!19759 lt!237376) #b00000000000000000000000000000000) (bvslt (index!19759 lt!237376) (size!16282 a!3235)))) (or (is-Undefined!4392 lt!237376) (ite (is-Found!4392 lt!237376) (= (select (arr!15918 a!3235) (index!19757 lt!237376)) (select (arr!15918 a!3235) j!176)) (ite (is-MissingZero!4392 lt!237376) (= (select (arr!15918 a!3235) (index!19756 lt!237376)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4392 lt!237376) (= (select (arr!15918 a!3235) (index!19759 lt!237376)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!302467 () SeekEntryResult!4392)

(assert (=> d!79771 (= lt!237376 e!302467)))

(declare-fun c!60761 () Bool)

(assert (=> d!79771 (= c!60761 (and (is-Intermediate!4392 lt!237375) (undefined!5204 lt!237375)))))

(assert (=> d!79771 (= lt!237375 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15918 a!3235) j!176) mask!3524) (select (arr!15918 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79771 (validMask!0 mask!3524)))

(assert (=> d!79771 (= (seekEntryOrOpen!0 (select (arr!15918 a!3235) j!176) a!3235 mask!3524) lt!237376)))

(declare-fun b!518385 () Bool)

(assert (=> b!518385 (= e!302467 Undefined!4392)))

(declare-fun b!518386 () Bool)

(assert (=> b!518386 (= e!302466 (Found!4392 (index!19758 lt!237375)))))

(declare-fun b!518387 () Bool)

(assert (=> b!518387 (= e!302467 e!302466)))

(assert (=> b!518387 (= lt!237374 (select (arr!15918 a!3235) (index!19758 lt!237375)))))

(declare-fun c!60760 () Bool)

(assert (=> b!518387 (= c!60760 (= lt!237374 (select (arr!15918 a!3235) j!176)))))

(assert (= (and d!79771 c!60761) b!518385))

(assert (= (and d!79771 (not c!60761)) b!518387))

(assert (= (and b!518387 c!60760) b!518386))

(assert (= (and b!518387 (not c!60760)) b!518383))

(assert (= (and b!518383 c!60759) b!518382))

(assert (= (and b!518383 (not c!60759)) b!518384))

(assert (=> b!518384 m!499579))

(declare-fun m!499763 () Bool)

(assert (=> b!518384 m!499763))

(assert (=> d!79771 m!499579))

(assert (=> d!79771 m!499595))

(declare-fun m!499765 () Bool)

(assert (=> d!79771 m!499765))

(assert (=> d!79771 m!499605))

(declare-fun m!499767 () Bool)

(assert (=> d!79771 m!499767))

(declare-fun m!499769 () Bool)

(assert (=> d!79771 m!499769))

(assert (=> d!79771 m!499595))

(assert (=> d!79771 m!499579))

(declare-fun m!499771 () Bool)

(assert (=> d!79771 m!499771))

(declare-fun m!499773 () Bool)

(assert (=> b!518387 m!499773))

(assert (=> b!518163 d!79771))

(declare-fun d!79775 () Bool)

(declare-fun e!302492 () Bool)

(assert (=> d!79775 e!302492))

(declare-fun res!317465 () Bool)

(assert (=> d!79775 (=> (not res!317465) (not e!302492))))

(assert (=> d!79775 (= res!317465 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16282 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16282 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16282 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16282 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16282 a!3235))))))

(declare-fun lt!237398 () Unit!16034)

(declare-fun choose!47 (array!33115 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16034)

(assert (=> d!79775 (= lt!237398 (choose!47 a!3235 i!1204 k!2280 j!176 lt!237267 #b00000000000000000000000000000000 (index!19758 lt!237271) (x!48752 lt!237271) mask!3524))))

(assert (=> d!79775 (validMask!0 mask!3524)))

(assert (=> d!79775 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237267 #b00000000000000000000000000000000 (index!19758 lt!237271) (x!48752 lt!237271) mask!3524) lt!237398)))

(declare-fun b!518427 () Bool)

(assert (=> b!518427 (= e!302492 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237267 (select (store (arr!15918 a!3235) i!1204 k!2280) j!176) (array!33116 (store (arr!15918 a!3235) i!1204 k!2280) (size!16282 a!3235)) mask!3524) (Intermediate!4392 false (index!19758 lt!237271) (x!48752 lt!237271))))))

(assert (= (and d!79775 res!317465) b!518427))

(declare-fun m!499819 () Bool)

(assert (=> d!79775 m!499819))

(assert (=> d!79775 m!499605))

(assert (=> b!518427 m!499589))

(assert (=> b!518427 m!499603))

(assert (=> b!518427 m!499603))

(declare-fun m!499821 () Bool)

(assert (=> b!518427 m!499821))

(assert (=> b!518156 d!79775))

(declare-fun e!302532 () SeekEntryResult!4392)

(declare-fun b!518494 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!518494 (= e!302532 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237267 #b00000000000000000000000000000000 mask!3524) lt!237270 lt!237272 mask!3524))))

(declare-fun b!518495 () Bool)

(declare-fun e!302534 () SeekEntryResult!4392)

(assert (=> b!518495 (= e!302534 e!302532)))

(declare-fun c!60801 () Bool)

(declare-fun lt!237423 () (_ BitVec 64))

(assert (=> b!518495 (= c!60801 (or (= lt!237423 lt!237270) (= (bvadd lt!237423 lt!237423) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518496 () Bool)

(declare-fun e!302535 () Bool)

(declare-fun lt!237424 () SeekEntryResult!4392)

(assert (=> b!518496 (= e!302535 (bvsge (x!48752 lt!237424) #b01111111111111111111111111111110))))

(declare-fun d!79791 () Bool)

(assert (=> d!79791 e!302535))

(declare-fun c!60800 () Bool)

(assert (=> d!79791 (= c!60800 (and (is-Intermediate!4392 lt!237424) (undefined!5204 lt!237424)))))

(assert (=> d!79791 (= lt!237424 e!302534)))

(declare-fun c!60799 () Bool)

(assert (=> d!79791 (= c!60799 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79791 (= lt!237423 (select (arr!15918 lt!237272) lt!237267))))

(assert (=> d!79791 (validMask!0 mask!3524)))

(assert (=> d!79791 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237267 lt!237270 lt!237272 mask!3524) lt!237424)))

(declare-fun b!518497 () Bool)

(assert (=> b!518497 (and (bvsge (index!19758 lt!237424) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237424) (size!16282 lt!237272)))))

(declare-fun res!317487 () Bool)

(assert (=> b!518497 (= res!317487 (= (select (arr!15918 lt!237272) (index!19758 lt!237424)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302533 () Bool)

(assert (=> b!518497 (=> res!317487 e!302533)))

(declare-fun b!518498 () Bool)

(assert (=> b!518498 (= e!302532 (Intermediate!4392 false lt!237267 #b00000000000000000000000000000000))))

(declare-fun b!518499 () Bool)

(assert (=> b!518499 (and (bvsge (index!19758 lt!237424) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237424) (size!16282 lt!237272)))))

(declare-fun res!317485 () Bool)

(assert (=> b!518499 (= res!317485 (= (select (arr!15918 lt!237272) (index!19758 lt!237424)) lt!237270))))

(assert (=> b!518499 (=> res!317485 e!302533)))

(declare-fun e!302536 () Bool)

(assert (=> b!518499 (= e!302536 e!302533)))

(declare-fun b!518500 () Bool)

(assert (=> b!518500 (= e!302534 (Intermediate!4392 true lt!237267 #b00000000000000000000000000000000))))

(declare-fun b!518501 () Bool)

(assert (=> b!518501 (= e!302535 e!302536)))

(declare-fun res!317486 () Bool)

(assert (=> b!518501 (= res!317486 (and (is-Intermediate!4392 lt!237424) (not (undefined!5204 lt!237424)) (bvslt (x!48752 lt!237424) #b01111111111111111111111111111110) (bvsge (x!48752 lt!237424) #b00000000000000000000000000000000) (bvsge (x!48752 lt!237424) #b00000000000000000000000000000000)))))

(assert (=> b!518501 (=> (not res!317486) (not e!302536))))

(declare-fun b!518502 () Bool)

(assert (=> b!518502 (and (bvsge (index!19758 lt!237424) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237424) (size!16282 lt!237272)))))

(assert (=> b!518502 (= e!302533 (= (select (arr!15918 lt!237272) (index!19758 lt!237424)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!79791 c!60799) b!518500))

(assert (= (and d!79791 (not c!60799)) b!518495))

(assert (= (and b!518495 c!60801) b!518498))

(assert (= (and b!518495 (not c!60801)) b!518494))

(assert (= (and d!79791 c!60800) b!518496))

(assert (= (and d!79791 (not c!60800)) b!518501))

(assert (= (and b!518501 res!317486) b!518499))

(assert (= (and b!518499 (not res!317485)) b!518497))

(assert (= (and b!518497 (not res!317487)) b!518502))

(declare-fun m!499859 () Bool)

(assert (=> b!518499 m!499859))

(declare-fun m!499861 () Bool)

(assert (=> d!79791 m!499861))

(assert (=> d!79791 m!499605))

(assert (=> b!518502 m!499859))

(declare-fun m!499863 () Bool)

(assert (=> b!518494 m!499863))

(assert (=> b!518494 m!499863))

(declare-fun m!499865 () Bool)

(assert (=> b!518494 m!499865))

(assert (=> b!518497 m!499859))

(assert (=> b!518156 d!79791))

(declare-fun d!79809 () Bool)

(assert (=> d!79809 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!518161 d!79809))

(declare-fun b!518503 () Bool)

(declare-fun e!302537 () SeekEntryResult!4392)

(assert (=> b!518503 (= e!302537 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237267 #b00000000000000000000000000000000 mask!3524) (select (arr!15918 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!518504 () Bool)

(declare-fun e!302539 () SeekEntryResult!4392)

(assert (=> b!518504 (= e!302539 e!302537)))

(declare-fun c!60804 () Bool)

(declare-fun lt!237425 () (_ BitVec 64))

(assert (=> b!518504 (= c!60804 (or (= lt!237425 (select (arr!15918 a!3235) j!176)) (= (bvadd lt!237425 lt!237425) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518505 () Bool)

(declare-fun e!302540 () Bool)

(declare-fun lt!237426 () SeekEntryResult!4392)

(assert (=> b!518505 (= e!302540 (bvsge (x!48752 lt!237426) #b01111111111111111111111111111110))))

(declare-fun d!79811 () Bool)

(assert (=> d!79811 e!302540))

(declare-fun c!60803 () Bool)

(assert (=> d!79811 (= c!60803 (and (is-Intermediate!4392 lt!237426) (undefined!5204 lt!237426)))))

(assert (=> d!79811 (= lt!237426 e!302539)))

(declare-fun c!60802 () Bool)

(assert (=> d!79811 (= c!60802 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79811 (= lt!237425 (select (arr!15918 a!3235) lt!237267))))

(assert (=> d!79811 (validMask!0 mask!3524)))

(assert (=> d!79811 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237267 (select (arr!15918 a!3235) j!176) a!3235 mask!3524) lt!237426)))

(declare-fun b!518506 () Bool)

(assert (=> b!518506 (and (bvsge (index!19758 lt!237426) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237426) (size!16282 a!3235)))))

(declare-fun res!317490 () Bool)

(assert (=> b!518506 (= res!317490 (= (select (arr!15918 a!3235) (index!19758 lt!237426)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302538 () Bool)

(assert (=> b!518506 (=> res!317490 e!302538)))

(declare-fun b!518507 () Bool)

(assert (=> b!518507 (= e!302537 (Intermediate!4392 false lt!237267 #b00000000000000000000000000000000))))

(declare-fun b!518508 () Bool)

(assert (=> b!518508 (and (bvsge (index!19758 lt!237426) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237426) (size!16282 a!3235)))))

(declare-fun res!317488 () Bool)

(assert (=> b!518508 (= res!317488 (= (select (arr!15918 a!3235) (index!19758 lt!237426)) (select (arr!15918 a!3235) j!176)))))

(assert (=> b!518508 (=> res!317488 e!302538)))

(declare-fun e!302541 () Bool)

(assert (=> b!518508 (= e!302541 e!302538)))

(declare-fun b!518509 () Bool)

(assert (=> b!518509 (= e!302539 (Intermediate!4392 true lt!237267 #b00000000000000000000000000000000))))

(declare-fun b!518510 () Bool)

(assert (=> b!518510 (= e!302540 e!302541)))

(declare-fun res!317489 () Bool)

(assert (=> b!518510 (= res!317489 (and (is-Intermediate!4392 lt!237426) (not (undefined!5204 lt!237426)) (bvslt (x!48752 lt!237426) #b01111111111111111111111111111110) (bvsge (x!48752 lt!237426) #b00000000000000000000000000000000) (bvsge (x!48752 lt!237426) #b00000000000000000000000000000000)))))

(assert (=> b!518510 (=> (not res!317489) (not e!302541))))

(declare-fun b!518511 () Bool)

(assert (=> b!518511 (and (bvsge (index!19758 lt!237426) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237426) (size!16282 a!3235)))))

(assert (=> b!518511 (= e!302538 (= (select (arr!15918 a!3235) (index!19758 lt!237426)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!79811 c!60802) b!518509))

(assert (= (and d!79811 (not c!60802)) b!518504))

(assert (= (and b!518504 c!60804) b!518507))

(assert (= (and b!518504 (not c!60804)) b!518503))

(assert (= (and d!79811 c!60803) b!518505))

(assert (= (and d!79811 (not c!60803)) b!518510))

(assert (= (and b!518510 res!317489) b!518508))

(assert (= (and b!518508 (not res!317488)) b!518506))

(assert (= (and b!518506 (not res!317490)) b!518511))

(declare-fun m!499867 () Bool)

(assert (=> b!518508 m!499867))

(declare-fun m!499869 () Bool)

(assert (=> d!79811 m!499869))

(assert (=> d!79811 m!499605))

(assert (=> b!518511 m!499867))

(assert (=> b!518503 m!499863))

(assert (=> b!518503 m!499863))

(assert (=> b!518503 m!499579))

(declare-fun m!499871 () Bool)

(assert (=> b!518503 m!499871))

(assert (=> b!518506 m!499867))

(assert (=> b!518162 d!79811))

(declare-fun d!79813 () Bool)

(declare-fun lt!237441 () (_ BitVec 32))

(declare-fun lt!237440 () (_ BitVec 32))

(assert (=> d!79813 (= lt!237441 (bvmul (bvxor lt!237440 (bvlshr lt!237440 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79813 (= lt!237440 ((_ extract 31 0) (bvand (bvxor (select (arr!15918 a!3235) j!176) (bvlshr (select (arr!15918 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79813 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317491 (let ((h!11037 ((_ extract 31 0) (bvand (bvxor (select (arr!15918 a!3235) j!176) (bvlshr (select (arr!15918 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48763 (bvmul (bvxor h!11037 (bvlshr h!11037 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48763 (bvlshr x!48763 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317491 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317491 #b00000000000000000000000000000000))))))

(assert (=> d!79813 (= (toIndex!0 (select (arr!15918 a!3235) j!176) mask!3524) (bvand (bvxor lt!237441 (bvlshr lt!237441 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518162 d!79813))

(declare-fun d!79817 () Bool)

(declare-fun lt!237443 () (_ BitVec 32))

(declare-fun lt!237442 () (_ BitVec 32))

(assert (=> d!79817 (= lt!237443 (bvmul (bvxor lt!237442 (bvlshr lt!237442 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79817 (= lt!237442 ((_ extract 31 0) (bvand (bvxor lt!237270 (bvlshr lt!237270 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79817 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317491 (let ((h!11037 ((_ extract 31 0) (bvand (bvxor lt!237270 (bvlshr lt!237270 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48763 (bvmul (bvxor h!11037 (bvlshr h!11037 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48763 (bvlshr x!48763 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317491 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317491 #b00000000000000000000000000000000))))))

(assert (=> d!79817 (= (toIndex!0 lt!237270 mask!3524) (bvand (bvxor lt!237443 (bvlshr lt!237443 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!518162 d!79817))

(declare-fun b!518541 () Bool)

(declare-fun e!302564 () Bool)

(declare-fun call!31716 () Bool)

(assert (=> b!518541 (= e!302564 call!31716)))

(declare-fun d!79819 () Bool)

(declare-fun res!317505 () Bool)

(declare-fun e!302563 () Bool)

(assert (=> d!79819 (=> res!317505 e!302563)))

(assert (=> d!79819 (= res!317505 (bvsge j!176 (size!16282 a!3235)))))

(assert (=> d!79819 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!302563)))

(declare-fun b!518542 () Bool)

(declare-fun e!302562 () Bool)

(assert (=> b!518542 (= e!302562 call!31716)))

(declare-fun bm!31713 () Bool)

(assert (=> bm!31713 (= call!31716 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!518543 () Bool)

(assert (=> b!518543 (= e!302564 e!302562)))

(declare-fun lt!237457 () (_ BitVec 64))

(assert (=> b!518543 (= lt!237457 (select (arr!15918 a!3235) j!176))))

(declare-fun lt!237459 () Unit!16034)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33115 (_ BitVec 64) (_ BitVec 32)) Unit!16034)

(assert (=> b!518543 (= lt!237459 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237457 j!176))))

(assert (=> b!518543 (arrayContainsKey!0 a!3235 lt!237457 #b00000000000000000000000000000000)))

(declare-fun lt!237458 () Unit!16034)

(assert (=> b!518543 (= lt!237458 lt!237459)))

(declare-fun res!317506 () Bool)

(assert (=> b!518543 (= res!317506 (= (seekEntryOrOpen!0 (select (arr!15918 a!3235) j!176) a!3235 mask!3524) (Found!4392 j!176)))))

(assert (=> b!518543 (=> (not res!317506) (not e!302562))))

(declare-fun b!518544 () Bool)

(assert (=> b!518544 (= e!302563 e!302564)))

(declare-fun c!60813 () Bool)

(assert (=> b!518544 (= c!60813 (validKeyInArray!0 (select (arr!15918 a!3235) j!176)))))

(assert (= (and d!79819 (not res!317505)) b!518544))

(assert (= (and b!518544 c!60813) b!518543))

(assert (= (and b!518544 (not c!60813)) b!518541))

(assert (= (and b!518543 res!317506) b!518542))

(assert (= (or b!518542 b!518541) bm!31713))

(declare-fun m!499889 () Bool)

(assert (=> bm!31713 m!499889))

(assert (=> b!518543 m!499579))

(declare-fun m!499891 () Bool)

(assert (=> b!518543 m!499891))

(declare-fun m!499893 () Bool)

(assert (=> b!518543 m!499893))

(assert (=> b!518543 m!499579))

(assert (=> b!518543 m!499587))

(assert (=> b!518544 m!499579))

(assert (=> b!518544 m!499579))

(assert (=> b!518544 m!499583))

(assert (=> b!518162 d!79819))

(declare-fun e!302565 () SeekEntryResult!4392)

(declare-fun b!518545 () Bool)

(assert (=> b!518545 (= e!302565 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237265 #b00000000000000000000000000000000 mask!3524) lt!237270 lt!237272 mask!3524))))

(declare-fun b!518546 () Bool)

(declare-fun e!302567 () SeekEntryResult!4392)

(assert (=> b!518546 (= e!302567 e!302565)))

(declare-fun c!60816 () Bool)

(declare-fun lt!237460 () (_ BitVec 64))

(assert (=> b!518546 (= c!60816 (or (= lt!237460 lt!237270) (= (bvadd lt!237460 lt!237460) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!518547 () Bool)

(declare-fun e!302568 () Bool)

(declare-fun lt!237461 () SeekEntryResult!4392)

(assert (=> b!518547 (= e!302568 (bvsge (x!48752 lt!237461) #b01111111111111111111111111111110))))

(declare-fun d!79827 () Bool)

(assert (=> d!79827 e!302568))

(declare-fun c!60815 () Bool)

(assert (=> d!79827 (= c!60815 (and (is-Intermediate!4392 lt!237461) (undefined!5204 lt!237461)))))

(assert (=> d!79827 (= lt!237461 e!302567)))

(declare-fun c!60814 () Bool)

(assert (=> d!79827 (= c!60814 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79827 (= lt!237460 (select (arr!15918 lt!237272) lt!237265))))

(assert (=> d!79827 (validMask!0 mask!3524)))

(assert (=> d!79827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237265 lt!237270 lt!237272 mask!3524) lt!237461)))

(declare-fun b!518548 () Bool)

(assert (=> b!518548 (and (bvsge (index!19758 lt!237461) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237461) (size!16282 lt!237272)))))

(declare-fun res!317509 () Bool)

(assert (=> b!518548 (= res!317509 (= (select (arr!15918 lt!237272) (index!19758 lt!237461)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!302566 () Bool)

(assert (=> b!518548 (=> res!317509 e!302566)))

(declare-fun b!518549 () Bool)

(assert (=> b!518549 (= e!302565 (Intermediate!4392 false lt!237265 #b00000000000000000000000000000000))))

(declare-fun b!518550 () Bool)

(assert (=> b!518550 (and (bvsge (index!19758 lt!237461) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237461) (size!16282 lt!237272)))))

(declare-fun res!317507 () Bool)

(assert (=> b!518550 (= res!317507 (= (select (arr!15918 lt!237272) (index!19758 lt!237461)) lt!237270))))

(assert (=> b!518550 (=> res!317507 e!302566)))

(declare-fun e!302569 () Bool)

(assert (=> b!518550 (= e!302569 e!302566)))

(declare-fun b!518551 () Bool)

(assert (=> b!518551 (= e!302567 (Intermediate!4392 true lt!237265 #b00000000000000000000000000000000))))

(declare-fun b!518552 () Bool)

(assert (=> b!518552 (= e!302568 e!302569)))

(declare-fun res!317508 () Bool)

(assert (=> b!518552 (= res!317508 (and (is-Intermediate!4392 lt!237461) (not (undefined!5204 lt!237461)) (bvslt (x!48752 lt!237461) #b01111111111111111111111111111110) (bvsge (x!48752 lt!237461) #b00000000000000000000000000000000) (bvsge (x!48752 lt!237461) #b00000000000000000000000000000000)))))

(assert (=> b!518552 (=> (not res!317508) (not e!302569))))

(declare-fun b!518553 () Bool)

(assert (=> b!518553 (and (bvsge (index!19758 lt!237461) #b00000000000000000000000000000000) (bvslt (index!19758 lt!237461) (size!16282 lt!237272)))))

(assert (=> b!518553 (= e!302566 (= (select (arr!15918 lt!237272) (index!19758 lt!237461)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!79827 c!60814) b!518551))

(assert (= (and d!79827 (not c!60814)) b!518546))

(assert (= (and b!518546 c!60816) b!518549))

(assert (= (and b!518546 (not c!60816)) b!518545))

(assert (= (and d!79827 c!60815) b!518547))

(assert (= (and d!79827 (not c!60815)) b!518552))

(assert (= (and b!518552 res!317508) b!518550))

(assert (= (and b!518550 (not res!317507)) b!518548))

(assert (= (and b!518548 (not res!317509)) b!518553))

(declare-fun m!499895 () Bool)

(assert (=> b!518550 m!499895))

(declare-fun m!499897 () Bool)

(assert (=> d!79827 m!499897))

(assert (=> d!79827 m!499605))

(assert (=> b!518553 m!499895))

(declare-fun m!499899 () Bool)

(assert (=> b!518545 m!499899))

(assert (=> b!518545 m!499899))

(declare-fun m!499901 () Bool)

(assert (=> b!518545 m!499901))

(assert (=> b!518548 m!499895))

(assert (=> b!518162 d!79827))

(declare-fun d!79829 () Bool)

(assert (=> d!79829 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237467 () Unit!16034)

(declare-fun choose!38 (array!33115 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16034)

(assert (=> d!79829 (= lt!237467 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79829 (validMask!0 mask!3524)))

(assert (=> d!79829 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237467)))

(declare-fun bs!16358 () Bool)

(assert (= bs!16358 d!79829))

(assert (=> bs!16358 m!499597))

(declare-fun m!499913 () Bool)

(assert (=> bs!16358 m!499913))

(assert (=> bs!16358 m!499605))

(assert (=> b!518162 d!79829))

(declare-fun b!518558 () Bool)

(declare-fun e!302575 () Bool)

(declare-fun call!31718 () Bool)

(assert (=> b!518558 (= e!302575 call!31718)))

(declare-fun d!79837 () Bool)

(declare-fun res!317512 () Bool)

(declare-fun e!302574 () Bool)

(assert (=> d!79837 (=> res!317512 e!302574)))

(assert (=> d!79837 (= res!317512 (bvsge #b00000000000000000000000000000000 (size!16282 a!3235)))))

(assert (=> d!79837 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!302574)))

(declare-fun b!518559 () Bool)

(declare-fun e!302573 () Bool)

(assert (=> b!518559 (= e!302573 call!31718)))

(declare-fun bm!31715 () Bool)

(assert (=> bm!31715 (= call!31718 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!518560 () Bool)

(assert (=> b!518560 (= e!302575 e!302573)))

(declare-fun lt!237468 () (_ BitVec 64))

(assert (=> b!518560 (= lt!237468 (select (arr!15918 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237470 () Unit!16034)

(assert (=> b!518560 (= lt!237470 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237468 #b00000000000000000000000000000000))))

(assert (=> b!518560 (arrayContainsKey!0 a!3235 lt!237468 #b00000000000000000000000000000000)))

(declare-fun lt!237469 () Unit!16034)

(assert (=> b!518560 (= lt!237469 lt!237470)))

(declare-fun res!317513 () Bool)

(assert (=> b!518560 (= res!317513 (= (seekEntryOrOpen!0 (select (arr!15918 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4392 #b00000000000000000000000000000000)))))

(assert (=> b!518560 (=> (not res!317513) (not e!302573))))

(declare-fun b!518561 () Bool)

(assert (=> b!518561 (= e!302574 e!302575)))

(declare-fun c!60818 () Bool)

(assert (=> b!518561 (= c!60818 (validKeyInArray!0 (select (arr!15918 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79837 (not res!317512)) b!518561))

(assert (= (and b!518561 c!60818) b!518560))

(assert (= (and b!518561 (not c!60818)) b!518558))

(assert (= (and b!518560 res!317513) b!518559))

(assert (= (or b!518559 b!518558) bm!31715))

(declare-fun m!499915 () Bool)

(assert (=> bm!31715 m!499915))

(assert (=> b!518560 m!499711))

(declare-fun m!499917 () Bool)

(assert (=> b!518560 m!499917))

(declare-fun m!499919 () Bool)

(assert (=> b!518560 m!499919))

(assert (=> b!518560 m!499711))

(declare-fun m!499921 () Bool)

(assert (=> b!518560 m!499921))

(assert (=> b!518561 m!499711))

(assert (=> b!518561 m!499711))

(assert (=> b!518561 m!499761))

(assert (=> b!518165 d!79837))

(push 1)

