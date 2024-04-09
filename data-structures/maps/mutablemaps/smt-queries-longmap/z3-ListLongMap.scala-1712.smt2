; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31514 () Bool)

(assert start!31514)

(declare-fun b!315136 () Bool)

(declare-fun res!170751 () Bool)

(declare-fun e!196191 () Bool)

(assert (=> b!315136 (=> (not res!170751) (not e!196191))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315136 (= res!170751 (validKeyInArray!0 k0!2441))))

(declare-fun b!315137 () Bool)

(declare-fun e!196189 () Bool)

(assert (=> b!315137 (= e!196189 (not false))))

(declare-datatypes ((SeekEntryResult!2764 0))(
  ( (MissingZero!2764 (index!13232 (_ BitVec 32))) (Found!2764 (index!13233 (_ BitVec 32))) (Intermediate!2764 (undefined!3576 Bool) (index!13234 (_ BitVec 32)) (x!31436 (_ BitVec 32))) (Undefined!2764) (MissingVacant!2764 (index!13235 (_ BitVec 32))) )
))
(declare-fun lt!154179 () SeekEntryResult!2764)

(declare-fun lt!154180 () SeekEntryResult!2764)

(get-info :version)

(assert (=> b!315137 (and (= lt!154179 lt!154180) ((_ is Intermediate!2764) lt!154180))))

(declare-datatypes ((array!16087 0))(
  ( (array!16088 (arr!7613 (Array (_ BitVec 32) (_ BitVec 64))) (size!7965 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16087)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16087 (_ BitVec 32)) SeekEntryResult!2764)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315137 (= lt!154180 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!315138 () Bool)

(declare-fun e!196190 () Bool)

(assert (=> b!315138 (= e!196190 e!196189)))

(declare-fun res!170745 () Bool)

(assert (=> b!315138 (=> (not res!170745) (not e!196189))))

(declare-fun lt!154181 () SeekEntryResult!2764)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315138 (= res!170745 (and (= lt!154179 lt!154181) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7613 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7613 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7613 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315138 (= lt!154179 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!315139 () Bool)

(declare-fun res!170746 () Bool)

(assert (=> b!315139 (=> (not res!170746) (not e!196190))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!315139 (= res!170746 (and (= (select (arr!7613 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7965 a!3293))))))

(declare-fun res!170748 () Bool)

(assert (=> start!31514 (=> (not res!170748) (not e!196191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31514 (= res!170748 (validMask!0 mask!3709))))

(assert (=> start!31514 e!196191))

(declare-fun array_inv!5567 (array!16087) Bool)

(assert (=> start!31514 (array_inv!5567 a!3293)))

(assert (=> start!31514 true))

(declare-fun b!315140 () Bool)

(declare-fun res!170747 () Bool)

(assert (=> b!315140 (=> (not res!170747) (not e!196191))))

(assert (=> b!315140 (= res!170747 (and (= (size!7965 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7965 a!3293))))))

(declare-fun b!315141 () Bool)

(assert (=> b!315141 (= e!196191 e!196190)))

(declare-fun res!170744 () Bool)

(assert (=> b!315141 (=> (not res!170744) (not e!196190))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315141 (= res!170744 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154181))))

(assert (=> b!315141 (= lt!154181 (Intermediate!2764 false resIndex!52 resX!52))))

(declare-fun b!315142 () Bool)

(declare-fun res!170749 () Bool)

(assert (=> b!315142 (=> (not res!170749) (not e!196191))))

(declare-fun arrayContainsKey!0 (array!16087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315142 (= res!170749 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315143 () Bool)

(declare-fun res!170743 () Bool)

(assert (=> b!315143 (=> (not res!170743) (not e!196191))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16087 (_ BitVec 32)) SeekEntryResult!2764)

(assert (=> b!315143 (= res!170743 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2764 i!1240)))))

(declare-fun b!315144 () Bool)

(declare-fun res!170750 () Bool)

(assert (=> b!315144 (=> (not res!170750) (not e!196191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16087 (_ BitVec 32)) Bool)

(assert (=> b!315144 (= res!170750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31514 res!170748) b!315140))

(assert (= (and b!315140 res!170747) b!315136))

(assert (= (and b!315136 res!170751) b!315142))

(assert (= (and b!315142 res!170749) b!315143))

(assert (= (and b!315143 res!170743) b!315144))

(assert (= (and b!315144 res!170750) b!315141))

(assert (= (and b!315141 res!170744) b!315139))

(assert (= (and b!315139 res!170746) b!315138))

(assert (= (and b!315138 res!170745) b!315137))

(declare-fun m!324483 () Bool)

(assert (=> b!315142 m!324483))

(declare-fun m!324485 () Bool)

(assert (=> b!315141 m!324485))

(assert (=> b!315141 m!324485))

(declare-fun m!324487 () Bool)

(assert (=> b!315141 m!324487))

(declare-fun m!324489 () Bool)

(assert (=> b!315139 m!324489))

(declare-fun m!324491 () Bool)

(assert (=> b!315144 m!324491))

(declare-fun m!324493 () Bool)

(assert (=> b!315138 m!324493))

(declare-fun m!324495 () Bool)

(assert (=> b!315138 m!324495))

(declare-fun m!324497 () Bool)

(assert (=> b!315137 m!324497))

(assert (=> b!315137 m!324497))

(declare-fun m!324499 () Bool)

(assert (=> b!315137 m!324499))

(declare-fun m!324501 () Bool)

(assert (=> b!315143 m!324501))

(declare-fun m!324503 () Bool)

(assert (=> start!31514 m!324503))

(declare-fun m!324505 () Bool)

(assert (=> start!31514 m!324505))

(declare-fun m!324507 () Bool)

(assert (=> b!315136 m!324507))

(check-sat (not b!315137) (not b!315142) (not start!31514) (not b!315136) (not b!315143) (not b!315138) (not b!315144) (not b!315141))
(check-sat)
(get-model)

(declare-fun b!315180 () Bool)

(declare-fun e!196211 () Bool)

(declare-fun call!25988 () Bool)

(assert (=> b!315180 (= e!196211 call!25988)))

(declare-fun b!315181 () Bool)

(declare-fun e!196212 () Bool)

(assert (=> b!315181 (= e!196212 call!25988)))

(declare-fun bm!25985 () Bool)

(assert (=> bm!25985 (= call!25988 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!315182 () Bool)

(assert (=> b!315182 (= e!196212 e!196211)))

(declare-fun lt!154198 () (_ BitVec 64))

(assert (=> b!315182 (= lt!154198 (select (arr!7613 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9694 0))(
  ( (Unit!9695) )
))
(declare-fun lt!154199 () Unit!9694)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16087 (_ BitVec 64) (_ BitVec 32)) Unit!9694)

(assert (=> b!315182 (= lt!154199 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154198 #b00000000000000000000000000000000))))

(assert (=> b!315182 (arrayContainsKey!0 a!3293 lt!154198 #b00000000000000000000000000000000)))

(declare-fun lt!154197 () Unit!9694)

(assert (=> b!315182 (= lt!154197 lt!154199)))

(declare-fun res!170783 () Bool)

(assert (=> b!315182 (= res!170783 (= (seekEntryOrOpen!0 (select (arr!7613 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2764 #b00000000000000000000000000000000)))))

(assert (=> b!315182 (=> (not res!170783) (not e!196211))))

(declare-fun d!68763 () Bool)

(declare-fun res!170784 () Bool)

(declare-fun e!196213 () Bool)

(assert (=> d!68763 (=> res!170784 e!196213)))

(assert (=> d!68763 (= res!170784 (bvsge #b00000000000000000000000000000000 (size!7965 a!3293)))))

(assert (=> d!68763 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196213)))

(declare-fun b!315183 () Bool)

(assert (=> b!315183 (= e!196213 e!196212)))

(declare-fun c!49814 () Bool)

(assert (=> b!315183 (= c!49814 (validKeyInArray!0 (select (arr!7613 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!68763 (not res!170784)) b!315183))

(assert (= (and b!315183 c!49814) b!315182))

(assert (= (and b!315183 (not c!49814)) b!315181))

(assert (= (and b!315182 res!170783) b!315180))

(assert (= (or b!315180 b!315181) bm!25985))

(declare-fun m!324535 () Bool)

(assert (=> bm!25985 m!324535))

(declare-fun m!324537 () Bool)

(assert (=> b!315182 m!324537))

(declare-fun m!324539 () Bool)

(assert (=> b!315182 m!324539))

(declare-fun m!324541 () Bool)

(assert (=> b!315182 m!324541))

(assert (=> b!315182 m!324537))

(declare-fun m!324543 () Bool)

(assert (=> b!315182 m!324543))

(assert (=> b!315183 m!324537))

(assert (=> b!315183 m!324537))

(declare-fun m!324545 () Bool)

(assert (=> b!315183 m!324545))

(assert (=> b!315144 d!68763))

(declare-fun d!68765 () Bool)

(declare-fun e!196247 () Bool)

(assert (=> d!68765 e!196247))

(declare-fun c!49831 () Bool)

(declare-fun lt!154218 () SeekEntryResult!2764)

(assert (=> d!68765 (= c!49831 (and ((_ is Intermediate!2764) lt!154218) (undefined!3576 lt!154218)))))

(declare-fun e!196246 () SeekEntryResult!2764)

(assert (=> d!68765 (= lt!154218 e!196246)))

(declare-fun c!49832 () Bool)

(assert (=> d!68765 (= c!49832 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!154217 () (_ BitVec 64))

(assert (=> d!68765 (= lt!154217 (select (arr!7613 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68765 (validMask!0 mask!3709)))

(assert (=> d!68765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154218)))

(declare-fun b!315232 () Bool)

(assert (=> b!315232 (and (bvsge (index!13234 lt!154218) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154218) (size!7965 a!3293)))))

(declare-fun e!196244 () Bool)

(assert (=> b!315232 (= e!196244 (= (select (arr!7613 a!3293) (index!13234 lt!154218)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!315233 () Bool)

(declare-fun e!196245 () SeekEntryResult!2764)

(assert (=> b!315233 (= e!196245 (Intermediate!2764 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!315234 () Bool)

(declare-fun e!196243 () Bool)

(assert (=> b!315234 (= e!196247 e!196243)))

(declare-fun res!170805 () Bool)

(assert (=> b!315234 (= res!170805 (and ((_ is Intermediate!2764) lt!154218) (not (undefined!3576 lt!154218)) (bvslt (x!31436 lt!154218) #b01111111111111111111111111111110) (bvsge (x!31436 lt!154218) #b00000000000000000000000000000000) (bvsge (x!31436 lt!154218) #b00000000000000000000000000000000)))))

(assert (=> b!315234 (=> (not res!170805) (not e!196243))))

(declare-fun b!315235 () Bool)

(assert (=> b!315235 (= e!196247 (bvsge (x!31436 lt!154218) #b01111111111111111111111111111110))))

(declare-fun b!315236 () Bool)

(assert (=> b!315236 (= e!196246 e!196245)))

(declare-fun c!49830 () Bool)

(assert (=> b!315236 (= c!49830 (or (= lt!154217 k0!2441) (= (bvadd lt!154217 lt!154217) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315237 () Bool)

(assert (=> b!315237 (= e!196245 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!315238 () Bool)

(assert (=> b!315238 (and (bvsge (index!13234 lt!154218) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154218) (size!7965 a!3293)))))

(declare-fun res!170804 () Bool)

(assert (=> b!315238 (= res!170804 (= (select (arr!7613 a!3293) (index!13234 lt!154218)) k0!2441))))

(assert (=> b!315238 (=> res!170804 e!196244)))

(assert (=> b!315238 (= e!196243 e!196244)))

(declare-fun b!315239 () Bool)

(assert (=> b!315239 (= e!196246 (Intermediate!2764 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!315240 () Bool)

(assert (=> b!315240 (and (bvsge (index!13234 lt!154218) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154218) (size!7965 a!3293)))))

(declare-fun res!170803 () Bool)

(assert (=> b!315240 (= res!170803 (= (select (arr!7613 a!3293) (index!13234 lt!154218)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315240 (=> res!170803 e!196244)))

(assert (= (and d!68765 c!49832) b!315239))

(assert (= (and d!68765 (not c!49832)) b!315236))

(assert (= (and b!315236 c!49830) b!315233))

(assert (= (and b!315236 (not c!49830)) b!315237))

(assert (= (and d!68765 c!49831) b!315235))

(assert (= (and d!68765 (not c!49831)) b!315234))

(assert (= (and b!315234 res!170805) b!315238))

(assert (= (and b!315238 (not res!170804)) b!315240))

(assert (= (and b!315240 (not res!170803)) b!315232))

(assert (=> d!68765 m!324485))

(declare-fun m!324559 () Bool)

(assert (=> d!68765 m!324559))

(assert (=> d!68765 m!324503))

(declare-fun m!324561 () Bool)

(assert (=> b!315232 m!324561))

(assert (=> b!315238 m!324561))

(assert (=> b!315237 m!324485))

(declare-fun m!324563 () Bool)

(assert (=> b!315237 m!324563))

(assert (=> b!315237 m!324563))

(declare-fun m!324565 () Bool)

(assert (=> b!315237 m!324565))

(assert (=> b!315240 m!324561))

(assert (=> b!315141 d!68765))

(declare-fun d!68775 () Bool)

(declare-fun lt!154226 () (_ BitVec 32))

(declare-fun lt!154225 () (_ BitVec 32))

(assert (=> d!68775 (= lt!154226 (bvmul (bvxor lt!154225 (bvlshr lt!154225 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68775 (= lt!154225 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68775 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170806 (let ((h!5387 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31440 (bvmul (bvxor h!5387 (bvlshr h!5387 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31440 (bvlshr x!31440 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170806 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170806 #b00000000000000000000000000000000))))))

(assert (=> d!68775 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!154226 (bvlshr lt!154226 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!315141 d!68775))

(declare-fun d!68781 () Bool)

(declare-fun res!170823 () Bool)

(declare-fun e!196268 () Bool)

(assert (=> d!68781 (=> res!170823 e!196268)))

(assert (=> d!68781 (= res!170823 (= (select (arr!7613 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68781 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!196268)))

(declare-fun b!315269 () Bool)

(declare-fun e!196269 () Bool)

(assert (=> b!315269 (= e!196268 e!196269)))

(declare-fun res!170824 () Bool)

(assert (=> b!315269 (=> (not res!170824) (not e!196269))))

(assert (=> b!315269 (= res!170824 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7965 a!3293)))))

(declare-fun b!315270 () Bool)

(assert (=> b!315270 (= e!196269 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68781 (not res!170823)) b!315269))

(assert (= (and b!315269 res!170824) b!315270))

(assert (=> d!68781 m!324537))

(declare-fun m!324583 () Bool)

(assert (=> b!315270 m!324583))

(assert (=> b!315142 d!68781))

(declare-fun d!68785 () Bool)

(declare-fun e!196274 () Bool)

(assert (=> d!68785 e!196274))

(declare-fun c!49840 () Bool)

(declare-fun lt!154232 () SeekEntryResult!2764)

(assert (=> d!68785 (= c!49840 (and ((_ is Intermediate!2764) lt!154232) (undefined!3576 lt!154232)))))

(declare-fun e!196273 () SeekEntryResult!2764)

(assert (=> d!68785 (= lt!154232 e!196273)))

(declare-fun c!49841 () Bool)

(assert (=> d!68785 (= c!49841 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!154231 () (_ BitVec 64))

(assert (=> d!68785 (= lt!154231 (select (arr!7613 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68785 (validMask!0 mask!3709)))

(assert (=> d!68785 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709) lt!154232)))

(declare-fun b!315271 () Bool)

(assert (=> b!315271 (and (bvsge (index!13234 lt!154232) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154232) (size!7965 a!3293)))))

(declare-fun e!196271 () Bool)

(assert (=> b!315271 (= e!196271 (= (select (arr!7613 a!3293) (index!13234 lt!154232)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!315272 () Bool)

(declare-fun e!196272 () SeekEntryResult!2764)

(assert (=> b!315272 (= e!196272 (Intermediate!2764 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!315273 () Bool)

(declare-fun e!196270 () Bool)

(assert (=> b!315273 (= e!196274 e!196270)))

(declare-fun res!170827 () Bool)

(assert (=> b!315273 (= res!170827 (and ((_ is Intermediate!2764) lt!154232) (not (undefined!3576 lt!154232)) (bvslt (x!31436 lt!154232) #b01111111111111111111111111111110) (bvsge (x!31436 lt!154232) #b00000000000000000000000000000000) (bvsge (x!31436 lt!154232) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!315273 (=> (not res!170827) (not e!196270))))

(declare-fun b!315274 () Bool)

(assert (=> b!315274 (= e!196274 (bvsge (x!31436 lt!154232) #b01111111111111111111111111111110))))

(declare-fun b!315275 () Bool)

(assert (=> b!315275 (= e!196273 e!196272)))

(declare-fun c!49839 () Bool)

(assert (=> b!315275 (= c!49839 (or (= lt!154231 k0!2441) (= (bvadd lt!154231 lt!154231) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315276 () Bool)

(assert (=> b!315276 (= e!196272 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!315277 () Bool)

(assert (=> b!315277 (and (bvsge (index!13234 lt!154232) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154232) (size!7965 a!3293)))))

(declare-fun res!170826 () Bool)

(assert (=> b!315277 (= res!170826 (= (select (arr!7613 a!3293) (index!13234 lt!154232)) k0!2441))))

(assert (=> b!315277 (=> res!170826 e!196271)))

(assert (=> b!315277 (= e!196270 e!196271)))

(declare-fun b!315278 () Bool)

(assert (=> b!315278 (= e!196273 (Intermediate!2764 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!315279 () Bool)

(assert (=> b!315279 (and (bvsge (index!13234 lt!154232) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154232) (size!7965 a!3293)))))

(declare-fun res!170825 () Bool)

(assert (=> b!315279 (= res!170825 (= (select (arr!7613 a!3293) (index!13234 lt!154232)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315279 (=> res!170825 e!196271)))

(assert (= (and d!68785 c!49841) b!315278))

(assert (= (and d!68785 (not c!49841)) b!315275))

(assert (= (and b!315275 c!49839) b!315272))

(assert (= (and b!315275 (not c!49839)) b!315276))

(assert (= (and d!68785 c!49840) b!315274))

(assert (= (and d!68785 (not c!49840)) b!315273))

(assert (= (and b!315273 res!170827) b!315277))

(assert (= (and b!315277 (not res!170826)) b!315279))

(assert (= (and b!315279 (not res!170825)) b!315271))

(assert (=> d!68785 m!324497))

(declare-fun m!324587 () Bool)

(assert (=> d!68785 m!324587))

(assert (=> d!68785 m!324503))

(declare-fun m!324589 () Bool)

(assert (=> b!315271 m!324589))

(assert (=> b!315277 m!324589))

(assert (=> b!315276 m!324497))

(declare-fun m!324591 () Bool)

(assert (=> b!315276 m!324591))

(assert (=> b!315276 m!324591))

(declare-fun m!324593 () Bool)

(assert (=> b!315276 m!324593))

(assert (=> b!315279 m!324589))

(assert (=> b!315137 d!68785))

(declare-fun d!68789 () Bool)

(declare-fun lt!154240 () (_ BitVec 32))

(assert (=> d!68789 (and (bvsge lt!154240 #b00000000000000000000000000000000) (bvslt lt!154240 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68789 (= lt!154240 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68789 (validMask!0 mask!3709)))

(assert (=> d!68789 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154240)))

(declare-fun bs!11024 () Bool)

(assert (= bs!11024 d!68789))

(declare-fun m!324595 () Bool)

(assert (=> bs!11024 m!324595))

(assert (=> bs!11024 m!324503))

(assert (=> b!315137 d!68789))

(declare-fun d!68791 () Bool)

(assert (=> d!68791 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!315136 d!68791))

(declare-fun d!68793 () Bool)

(declare-fun e!196289 () Bool)

(assert (=> d!68793 e!196289))

(declare-fun c!49849 () Bool)

(declare-fun lt!154242 () SeekEntryResult!2764)

(assert (=> d!68793 (= c!49849 (and ((_ is Intermediate!2764) lt!154242) (undefined!3576 lt!154242)))))

(declare-fun e!196288 () SeekEntryResult!2764)

(assert (=> d!68793 (= lt!154242 e!196288)))

(declare-fun c!49850 () Bool)

(assert (=> d!68793 (= c!49850 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154241 () (_ BitVec 64))

(assert (=> d!68793 (= lt!154241 (select (arr!7613 a!3293) index!1781))))

(assert (=> d!68793 (validMask!0 mask!3709)))

(assert (=> d!68793 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154242)))

(declare-fun b!315298 () Bool)

(assert (=> b!315298 (and (bvsge (index!13234 lt!154242) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154242) (size!7965 a!3293)))))

(declare-fun e!196286 () Bool)

(assert (=> b!315298 (= e!196286 (= (select (arr!7613 a!3293) (index!13234 lt!154242)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!315299 () Bool)

(declare-fun e!196287 () SeekEntryResult!2764)

(assert (=> b!315299 (= e!196287 (Intermediate!2764 false index!1781 x!1427))))

(declare-fun b!315300 () Bool)

(declare-fun e!196285 () Bool)

(assert (=> b!315300 (= e!196289 e!196285)))

(declare-fun res!170836 () Bool)

(assert (=> b!315300 (= res!170836 (and ((_ is Intermediate!2764) lt!154242) (not (undefined!3576 lt!154242)) (bvslt (x!31436 lt!154242) #b01111111111111111111111111111110) (bvsge (x!31436 lt!154242) #b00000000000000000000000000000000) (bvsge (x!31436 lt!154242) x!1427)))))

(assert (=> b!315300 (=> (not res!170836) (not e!196285))))

(declare-fun b!315301 () Bool)

(assert (=> b!315301 (= e!196289 (bvsge (x!31436 lt!154242) #b01111111111111111111111111111110))))

(declare-fun b!315302 () Bool)

(assert (=> b!315302 (= e!196288 e!196287)))

(declare-fun c!49848 () Bool)

(assert (=> b!315302 (= c!49848 (or (= lt!154241 k0!2441) (= (bvadd lt!154241 lt!154241) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315303 () Bool)

(assert (=> b!315303 (= e!196287 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!315304 () Bool)

(assert (=> b!315304 (and (bvsge (index!13234 lt!154242) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154242) (size!7965 a!3293)))))

(declare-fun res!170835 () Bool)

(assert (=> b!315304 (= res!170835 (= (select (arr!7613 a!3293) (index!13234 lt!154242)) k0!2441))))

(assert (=> b!315304 (=> res!170835 e!196286)))

(assert (=> b!315304 (= e!196285 e!196286)))

(declare-fun b!315305 () Bool)

(assert (=> b!315305 (= e!196288 (Intermediate!2764 true index!1781 x!1427))))

(declare-fun b!315306 () Bool)

(assert (=> b!315306 (and (bvsge (index!13234 lt!154242) #b00000000000000000000000000000000) (bvslt (index!13234 lt!154242) (size!7965 a!3293)))))

(declare-fun res!170834 () Bool)

(assert (=> b!315306 (= res!170834 (= (select (arr!7613 a!3293) (index!13234 lt!154242)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315306 (=> res!170834 e!196286)))

(assert (= (and d!68793 c!49850) b!315305))

(assert (= (and d!68793 (not c!49850)) b!315302))

(assert (= (and b!315302 c!49848) b!315299))

(assert (= (and b!315302 (not c!49848)) b!315303))

(assert (= (and d!68793 c!49849) b!315301))

(assert (= (and d!68793 (not c!49849)) b!315300))

(assert (= (and b!315300 res!170836) b!315304))

(assert (= (and b!315304 (not res!170835)) b!315306))

(assert (= (and b!315306 (not res!170834)) b!315298))

(assert (=> d!68793 m!324493))

(assert (=> d!68793 m!324503))

(declare-fun m!324597 () Bool)

(assert (=> b!315298 m!324597))

(assert (=> b!315304 m!324597))

(assert (=> b!315303 m!324497))

(assert (=> b!315303 m!324497))

(declare-fun m!324599 () Bool)

(assert (=> b!315303 m!324599))

(assert (=> b!315306 m!324597))

(assert (=> b!315138 d!68793))

(declare-fun d!68795 () Bool)

(assert (=> d!68795 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31514 d!68795))

(declare-fun d!68803 () Bool)

(assert (=> d!68803 (= (array_inv!5567 a!3293) (bvsge (size!7965 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31514 d!68803))

(declare-fun b!315364 () Bool)

(declare-fun e!196326 () SeekEntryResult!2764)

(declare-fun e!196327 () SeekEntryResult!2764)

(assert (=> b!315364 (= e!196326 e!196327)))

(declare-fun lt!154277 () (_ BitVec 64))

(declare-fun lt!154279 () SeekEntryResult!2764)

(assert (=> b!315364 (= lt!154277 (select (arr!7613 a!3293) (index!13234 lt!154279)))))

(declare-fun c!49871 () Bool)

(assert (=> b!315364 (= c!49871 (= lt!154277 k0!2441))))

(declare-fun b!315365 () Bool)

(assert (=> b!315365 (= e!196327 (Found!2764 (index!13234 lt!154279)))))

(declare-fun e!196328 () SeekEntryResult!2764)

(declare-fun b!315366 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16087 (_ BitVec 32)) SeekEntryResult!2764)

(assert (=> b!315366 (= e!196328 (seekKeyOrZeroReturnVacant!0 (x!31436 lt!154279) (index!13234 lt!154279) (index!13234 lt!154279) k0!2441 a!3293 mask!3709))))

(declare-fun b!315367 () Bool)

(assert (=> b!315367 (= e!196326 Undefined!2764)))

(declare-fun b!315368 () Bool)

(declare-fun c!49869 () Bool)

(assert (=> b!315368 (= c!49869 (= lt!154277 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!315368 (= e!196327 e!196328)))

(declare-fun d!68805 () Bool)

(declare-fun lt!154278 () SeekEntryResult!2764)

(assert (=> d!68805 (and (or ((_ is Undefined!2764) lt!154278) (not ((_ is Found!2764) lt!154278)) (and (bvsge (index!13233 lt!154278) #b00000000000000000000000000000000) (bvslt (index!13233 lt!154278) (size!7965 a!3293)))) (or ((_ is Undefined!2764) lt!154278) ((_ is Found!2764) lt!154278) (not ((_ is MissingZero!2764) lt!154278)) (and (bvsge (index!13232 lt!154278) #b00000000000000000000000000000000) (bvslt (index!13232 lt!154278) (size!7965 a!3293)))) (or ((_ is Undefined!2764) lt!154278) ((_ is Found!2764) lt!154278) ((_ is MissingZero!2764) lt!154278) (not ((_ is MissingVacant!2764) lt!154278)) (and (bvsge (index!13235 lt!154278) #b00000000000000000000000000000000) (bvslt (index!13235 lt!154278) (size!7965 a!3293)))) (or ((_ is Undefined!2764) lt!154278) (ite ((_ is Found!2764) lt!154278) (= (select (arr!7613 a!3293) (index!13233 lt!154278)) k0!2441) (ite ((_ is MissingZero!2764) lt!154278) (= (select (arr!7613 a!3293) (index!13232 lt!154278)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2764) lt!154278) (= (select (arr!7613 a!3293) (index!13235 lt!154278)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68805 (= lt!154278 e!196326)))

(declare-fun c!49870 () Bool)

(assert (=> d!68805 (= c!49870 (and ((_ is Intermediate!2764) lt!154279) (undefined!3576 lt!154279)))))

(assert (=> d!68805 (= lt!154279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68805 (validMask!0 mask!3709)))

(assert (=> d!68805 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!154278)))

(declare-fun b!315369 () Bool)

(assert (=> b!315369 (= e!196328 (MissingZero!2764 (index!13234 lt!154279)))))

(assert (= (and d!68805 c!49870) b!315367))

(assert (= (and d!68805 (not c!49870)) b!315364))

(assert (= (and b!315364 c!49871) b!315365))

(assert (= (and b!315364 (not c!49871)) b!315368))

(assert (= (and b!315368 c!49869) b!315369))

(assert (= (and b!315368 (not c!49869)) b!315366))

(declare-fun m!324635 () Bool)

(assert (=> b!315364 m!324635))

(declare-fun m!324637 () Bool)

(assert (=> b!315366 m!324637))

(declare-fun m!324639 () Bool)

(assert (=> d!68805 m!324639))

(assert (=> d!68805 m!324485))

(assert (=> d!68805 m!324487))

(declare-fun m!324641 () Bool)

(assert (=> d!68805 m!324641))

(declare-fun m!324643 () Bool)

(assert (=> d!68805 m!324643))

(assert (=> d!68805 m!324503))

(assert (=> d!68805 m!324485))

(assert (=> b!315143 d!68805))

(check-sat (not d!68789) (not d!68765) (not b!315276) (not b!315303) (not b!315183) (not bm!25985) (not b!315237) (not b!315182) (not d!68793) (not d!68805) (not b!315270) (not d!68785) (not b!315366))
(check-sat)
