; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31450 () Bool)

(assert start!31450)

(declare-fun b!314758 () Bool)

(declare-fun res!170525 () Bool)

(declare-fun e!195985 () Bool)

(assert (=> b!314758 (=> (not res!170525) (not e!195985))))

(declare-datatypes ((array!16074 0))(
  ( (array!16075 (arr!7608 (Array (_ BitVec 32) (_ BitVec 64))) (size!7960 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16074)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!314758 (= res!170525 (and (= (select (arr!7608 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7960 a!3293))))))

(declare-fun e!195984 () Bool)

(declare-datatypes ((SeekEntryResult!2759 0))(
  ( (MissingZero!2759 (index!13212 (_ BitVec 32))) (Found!2759 (index!13213 (_ BitVec 32))) (Intermediate!2759 (undefined!3571 Bool) (index!13214 (_ BitVec 32)) (x!31406 (_ BitVec 32))) (Undefined!2759) (MissingVacant!2759 (index!13215 (_ BitVec 32))) )
))
(declare-fun lt!154025 () SeekEntryResult!2759)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun b!314759 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16074 (_ BitVec 32)) SeekEntryResult!2759)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314759 (= e!195984 (not (= lt!154025 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))))

(declare-fun b!314760 () Bool)

(declare-fun res!170524 () Bool)

(declare-fun e!195982 () Bool)

(assert (=> b!314760 (=> (not res!170524) (not e!195982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314760 (= res!170524 (validKeyInArray!0 k!2441))))

(declare-fun b!314761 () Bool)

(declare-fun res!170528 () Bool)

(assert (=> b!314761 (=> (not res!170528) (not e!195982))))

(declare-fun arrayContainsKey!0 (array!16074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314761 (= res!170528 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314762 () Bool)

(declare-fun res!170532 () Bool)

(assert (=> b!314762 (=> (not res!170532) (not e!195982))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16074 (_ BitVec 32)) SeekEntryResult!2759)

(assert (=> b!314762 (= res!170532 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2759 i!1240)))))

(declare-fun res!170530 () Bool)

(assert (=> start!31450 (=> (not res!170530) (not e!195982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31450 (= res!170530 (validMask!0 mask!3709))))

(assert (=> start!31450 e!195982))

(declare-fun array_inv!5562 (array!16074) Bool)

(assert (=> start!31450 (array_inv!5562 a!3293)))

(assert (=> start!31450 true))

(declare-fun b!314763 () Bool)

(declare-fun res!170531 () Bool)

(assert (=> b!314763 (=> (not res!170531) (not e!195982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16074 (_ BitVec 32)) Bool)

(assert (=> b!314763 (= res!170531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314764 () Bool)

(assert (=> b!314764 (= e!195985 e!195984)))

(declare-fun res!170526 () Bool)

(assert (=> b!314764 (=> (not res!170526) (not e!195984))))

(declare-fun lt!154024 () SeekEntryResult!2759)

(assert (=> b!314764 (= res!170526 (and (= lt!154025 lt!154024) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7608 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7608 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7608 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!314764 (= lt!154025 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!314765 () Bool)

(assert (=> b!314765 (= e!195982 e!195985)))

(declare-fun res!170527 () Bool)

(assert (=> b!314765 (=> (not res!170527) (not e!195985))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314765 (= res!170527 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154024))))

(assert (=> b!314765 (= lt!154024 (Intermediate!2759 false resIndex!52 resX!52))))

(declare-fun b!314766 () Bool)

(declare-fun res!170529 () Bool)

(assert (=> b!314766 (=> (not res!170529) (not e!195982))))

(assert (=> b!314766 (= res!170529 (and (= (size!7960 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7960 a!3293))))))

(assert (= (and start!31450 res!170530) b!314766))

(assert (= (and b!314766 res!170529) b!314760))

(assert (= (and b!314760 res!170524) b!314761))

(assert (= (and b!314761 res!170528) b!314762))

(assert (= (and b!314762 res!170532) b!314763))

(assert (= (and b!314763 res!170531) b!314765))

(assert (= (and b!314765 res!170527) b!314758))

(assert (= (and b!314758 res!170525) b!314764))

(assert (= (and b!314764 res!170526) b!314759))

(declare-fun m!324215 () Bool)

(assert (=> b!314759 m!324215))

(assert (=> b!314759 m!324215))

(declare-fun m!324217 () Bool)

(assert (=> b!314759 m!324217))

(declare-fun m!324219 () Bool)

(assert (=> b!314758 m!324219))

(declare-fun m!324221 () Bool)

(assert (=> start!31450 m!324221))

(declare-fun m!324223 () Bool)

(assert (=> start!31450 m!324223))

(declare-fun m!324225 () Bool)

(assert (=> b!314764 m!324225))

(declare-fun m!324227 () Bool)

(assert (=> b!314764 m!324227))

(declare-fun m!324229 () Bool)

(assert (=> b!314760 m!324229))

(declare-fun m!324231 () Bool)

(assert (=> b!314761 m!324231))

(declare-fun m!324233 () Bool)

(assert (=> b!314763 m!324233))

(declare-fun m!324235 () Bool)

(assert (=> b!314762 m!324235))

(declare-fun m!324237 () Bool)

(assert (=> b!314765 m!324237))

(assert (=> b!314765 m!324237))

(declare-fun m!324239 () Bool)

(assert (=> b!314765 m!324239))

(push 1)

(assert (not b!314761))

(assert (not b!314763))

(assert (not b!314759))

(assert (not b!314764))

(assert (not b!314765))

(assert (not b!314760))

(assert (not start!31450))

(assert (not b!314762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68701 () Bool)

(assert (=> d!68701 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31450 d!68701))

(declare-fun d!68711 () Bool)

(assert (=> d!68711 (= (array_inv!5562 a!3293) (bvsge (size!7960 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31450 d!68711))

(declare-fun b!314829 () Bool)

(declare-fun e!196028 () Bool)

(declare-fun e!196029 () Bool)

(assert (=> b!314829 (= e!196028 e!196029)))

(declare-fun lt!154057 () (_ BitVec 64))

(assert (=> b!314829 (= lt!154057 (select (arr!7608 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9690 0))(
  ( (Unit!9691) )
))
(declare-fun lt!154058 () Unit!9690)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16074 (_ BitVec 64) (_ BitVec 32)) Unit!9690)

(assert (=> b!314829 (= lt!154058 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154057 #b00000000000000000000000000000000))))

(assert (=> b!314829 (arrayContainsKey!0 a!3293 lt!154057 #b00000000000000000000000000000000)))

(declare-fun lt!154056 () Unit!9690)

(assert (=> b!314829 (= lt!154056 lt!154058)))

(declare-fun res!170562 () Bool)

(assert (=> b!314829 (= res!170562 (= (seekEntryOrOpen!0 (select (arr!7608 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2759 #b00000000000000000000000000000000)))))

(assert (=> b!314829 (=> (not res!170562) (not e!196029))))

(declare-fun d!68713 () Bool)

(declare-fun res!170563 () Bool)

(declare-fun e!196027 () Bool)

(assert (=> d!68713 (=> res!170563 e!196027)))

(assert (=> d!68713 (= res!170563 (bvsge #b00000000000000000000000000000000 (size!7960 a!3293)))))

(assert (=> d!68713 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196027)))

(declare-fun bm!25979 () Bool)

(declare-fun call!25982 () Bool)

(assert (=> bm!25979 (= call!25982 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!314830 () Bool)

(assert (=> b!314830 (= e!196028 call!25982)))

(declare-fun b!314831 () Bool)

(assert (=> b!314831 (= e!196029 call!25982)))

(declare-fun b!314832 () Bool)

(assert (=> b!314832 (= e!196027 e!196028)))

(declare-fun c!49748 () Bool)

(assert (=> b!314832 (= c!49748 (validKeyInArray!0 (select (arr!7608 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!68713 (not res!170563)) b!314832))

(assert (= (and b!314832 c!49748) b!314829))

(assert (= (and b!314832 (not c!49748)) b!314830))

(assert (= (and b!314829 res!170562) b!314831))

(assert (= (or b!314831 b!314830) bm!25979))

(declare-fun m!324273 () Bool)

(assert (=> b!314829 m!324273))

(declare-fun m!324275 () Bool)

(assert (=> b!314829 m!324275))

(declare-fun m!324277 () Bool)

(assert (=> b!314829 m!324277))

(assert (=> b!314829 m!324273))

(declare-fun m!324279 () Bool)

(assert (=> b!314829 m!324279))

(declare-fun m!324281 () Bool)

(assert (=> bm!25979 m!324281))

(assert (=> b!314832 m!324273))

(assert (=> b!314832 m!324273))

(declare-fun m!324283 () Bool)

(assert (=> b!314832 m!324283))

(assert (=> b!314763 d!68713))

(declare-fun b!314896 () Bool)

(declare-fun e!196074 () SeekEntryResult!2759)

(assert (=> b!314896 (= e!196074 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314897 () Bool)

(declare-fun lt!154087 () SeekEntryResult!2759)

(assert (=> b!314897 (and (bvsge (index!13214 lt!154087) #b00000000000000000000000000000000) (bvslt (index!13214 lt!154087) (size!7960 a!3293)))))

(declare-fun res!170592 () Bool)

(assert (=> b!314897 (= res!170592 (= (select (arr!7608 a!3293) (index!13214 lt!154087)) k!2441))))

(declare-fun e!196070 () Bool)

(assert (=> b!314897 (=> res!170592 e!196070)))

(declare-fun e!196072 () Bool)

(assert (=> b!314897 (= e!196072 e!196070)))

(declare-fun b!314898 () Bool)

(assert (=> b!314898 (and (bvsge (index!13214 lt!154087) #b00000000000000000000000000000000) (bvslt (index!13214 lt!154087) (size!7960 a!3293)))))

(assert (=> b!314898 (= e!196070 (= (select (arr!7608 a!3293) (index!13214 lt!154087)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314899 () Bool)

(assert (=> b!314899 (and (bvsge (index!13214 lt!154087) #b00000000000000000000000000000000) (bvslt (index!13214 lt!154087) (size!7960 a!3293)))))

(declare-fun res!170594 () Bool)

(assert (=> b!314899 (= res!170594 (= (select (arr!7608 a!3293) (index!13214 lt!154087)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314899 (=> res!170594 e!196070)))

(declare-fun b!314900 () Bool)

(declare-fun e!196071 () Bool)

(assert (=> b!314900 (= e!196071 e!196072)))

(declare-fun res!170593 () Bool)

(assert (=> b!314900 (= res!170593 (and (is-Intermediate!2759 lt!154087) (not (undefined!3571 lt!154087)) (bvslt (x!31406 lt!154087) #b01111111111111111111111111111110) (bvsge (x!31406 lt!154087) #b00000000000000000000000000000000) (bvsge (x!31406 lt!154087) #b00000000000000000000000000000000)))))

(assert (=> b!314900 (=> (not res!170593) (not e!196072))))

(declare-fun b!314902 () Bool)

(assert (=> b!314902 (= e!196071 (bvsge (x!31406 lt!154087) #b01111111111111111111111111111110))))

(declare-fun b!314903 () Bool)

(declare-fun e!196073 () SeekEntryResult!2759)

(assert (=> b!314903 (= e!196073 (Intermediate!2759 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314904 () Bool)

(assert (=> b!314904 (= e!196073 e!196074)))

(declare-fun c!49767 () Bool)

(declare-fun lt!154086 () (_ BitVec 64))

(assert (=> b!314904 (= c!49767 (or (= lt!154086 k!2441) (= (bvadd lt!154086 lt!154086) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!68725 () Bool)

(assert (=> d!68725 e!196071))

(declare-fun c!49768 () Bool)

(assert (=> d!68725 (= c!49768 (and (is-Intermediate!2759 lt!154087) (undefined!3571 lt!154087)))))

(assert (=> d!68725 (= lt!154087 e!196073)))

(declare-fun c!49769 () Bool)

(assert (=> d!68725 (= c!49769 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68725 (= lt!154086 (select (arr!7608 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68725 (validMask!0 mask!3709)))

(assert (=> d!68725 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154087)))

(declare-fun b!314901 () Bool)

(assert (=> b!314901 (= e!196074 (Intermediate!2759 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!68725 c!49769) b!314903))

(assert (= (and d!68725 (not c!49769)) b!314904))

(assert (= (and b!314904 c!49767) b!314901))

(assert (= (and b!314904 (not c!49767)) b!314896))

(assert (= (and d!68725 c!49768) b!314902))

(assert (= (and d!68725 (not c!49768)) b!314900))

(assert (= (and b!314900 res!170593) b!314897))

(assert (= (and b!314897 (not res!170592)) b!314899))

(assert (= (and b!314899 (not res!170594)) b!314898))

(declare-fun m!324307 () Bool)

(assert (=> b!314899 m!324307))

(assert (=> d!68725 m!324237))

(declare-fun m!324309 () Bool)

(assert (=> d!68725 m!324309))

(assert (=> d!68725 m!324221))

(assert (=> b!314897 m!324307))

(assert (=> b!314896 m!324237))

(declare-fun m!324311 () Bool)

(assert (=> b!314896 m!324311))

(assert (=> b!314896 m!324311))

(declare-fun m!324313 () Bool)

(assert (=> b!314896 m!324313))

(assert (=> b!314898 m!324307))

(assert (=> b!314765 d!68725))

(declare-fun d!68735 () Bool)

(declare-fun lt!154098 () (_ BitVec 32))

(declare-fun lt!154097 () (_ BitVec 32))

(assert (=> d!68735 (= lt!154098 (bvmul (bvxor lt!154097 (bvlshr lt!154097 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68735 (= lt!154097 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68735 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170598 (let ((h!5386 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31413 (bvmul (bvxor h!5386 (bvlshr h!5386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31413 (bvlshr x!31413 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170598 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170598 #b00000000000000000000000000000000))))))

(assert (=> d!68735 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!154098 (bvlshr lt!154098 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!314765 d!68735))

(declare-fun b!314914 () Bool)

(declare-fun e!196084 () SeekEntryResult!2759)

(assert (=> b!314914 (= e!196084 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314915 () Bool)

(declare-fun lt!154100 () SeekEntryResult!2759)

(assert (=> b!314915 (and (bvsge (index!13214 lt!154100) #b00000000000000000000000000000000) (bvslt (index!13214 lt!154100) (size!7960 a!3293)))))

(declare-fun res!170599 () Bool)

(assert (=> b!314915 (= res!170599 (= (select (arr!7608 a!3293) (index!13214 lt!154100)) k!2441))))

(declare-fun e!196080 () Bool)

(assert (=> b!314915 (=> res!170599 e!196080)))

(declare-fun e!196082 () Bool)

(assert (=> b!314915 (= e!196082 e!196080)))

(declare-fun b!314916 () Bool)

(assert (=> b!314916 (and (bvsge (index!13214 lt!154100) #b00000000000000000000000000000000) (bvslt (index!13214 lt!154100) (size!7960 a!3293)))))

(assert (=> b!314916 (= e!196080 (= (select (arr!7608 a!3293) (index!13214 lt!154100)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314917 () Bool)

(assert (=> b!314917 (and (bvsge (index!13214 lt!154100) #b00000000000000000000000000000000) (bvslt (index!13214 lt!154100) (size!7960 a!3293)))))

(declare-fun res!170601 () Bool)

(assert (=> b!314917 (= res!170601 (= (select (arr!7608 a!3293) (index!13214 lt!154100)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314917 (=> res!170601 e!196080)))

(declare-fun b!314918 () Bool)

(declare-fun e!196081 () Bool)

(assert (=> b!314918 (= e!196081 e!196082)))

(declare-fun res!170600 () Bool)

(assert (=> b!314918 (= res!170600 (and (is-Intermediate!2759 lt!154100) (not (undefined!3571 lt!154100)) (bvslt (x!31406 lt!154100) #b01111111111111111111111111111110) (bvsge (x!31406 lt!154100) #b00000000000000000000000000000000) (bvsge (x!31406 lt!154100) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!314918 (=> (not res!170600) (not e!196082))))

(declare-fun b!314920 () Bool)

(assert (=> b!314920 (= e!196081 (bvsge (x!31406 lt!154100) #b01111111111111111111111111111110))))

(declare-fun e!196083 () SeekEntryResult!2759)

(declare-fun b!314921 () Bool)

(assert (=> b!314921 (= e!196083 (Intermediate!2759 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!314922 () Bool)

(assert (=> b!314922 (= e!196083 e!196084)))

(declare-fun c!49773 () Bool)

(declare-fun lt!154099 () (_ BitVec 64))

(assert (=> b!314922 (= c!49773 (or (= lt!154099 k!2441) (= (bvadd lt!154099 lt!154099) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!68743 () Bool)

(assert (=> d!68743 e!196081))

(declare-fun c!49774 () Bool)

(assert (=> d!68743 (= c!49774 (and (is-Intermediate!2759 lt!154100) (undefined!3571 lt!154100)))))

(assert (=> d!68743 (= lt!154100 e!196083)))

(declare-fun c!49775 () Bool)

(assert (=> d!68743 (= c!49775 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68743 (= lt!154099 (select (arr!7608 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68743 (validMask!0 mask!3709)))

(assert (=> d!68743 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!154100)))

(declare-fun b!314919 () Bool)

(assert (=> b!314919 (= e!196084 (Intermediate!2759 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(assert (= (and d!68743 c!49775) b!314921))

(assert (= (and d!68743 (not c!49775)) b!314922))

(assert (= (and b!314922 c!49773) b!314919))

(assert (= (and b!314922 (not c!49773)) b!314914))

(assert (= (and d!68743 c!49774) b!314920))

(assert (= (and d!68743 (not c!49774)) b!314918))

(assert (= (and b!314918 res!170600) b!314915))

(assert (= (and b!314915 (not res!170599)) b!314917))

(assert (= (and b!314917 (not res!170601)) b!314916))

(declare-fun m!324325 () Bool)

(assert (=> b!314917 m!324325))

(assert (=> d!68743 m!324215))

(declare-fun m!324327 () Bool)

(assert (=> d!68743 m!324327))

(assert (=> d!68743 m!324221))

(assert (=> b!314915 m!324325))

(assert (=> b!314914 m!324215))

(declare-fun m!324329 () Bool)

(assert (=> b!314914 m!324329))

(assert (=> b!314914 m!324329))

(declare-fun m!324331 () Bool)

(assert (=> b!314914 m!324331))

(assert (=> b!314916 m!324325))

(assert (=> b!314759 d!68743))

(declare-fun d!68745 () Bool)

(declare-fun lt!154109 () (_ BitVec 32))

(assert (=> d!68745 (and (bvsge lt!154109 #b00000000000000000000000000000000) (bvslt lt!154109 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68745 (= lt!154109 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68745 (validMask!0 mask!3709)))

(assert (=> d!68745 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154109)))

(declare-fun bs!11016 () Bool)

(assert (= bs!11016 d!68745))

(declare-fun m!324333 () Bool)

(assert (=> bs!11016 m!324333))

(assert (=> bs!11016 m!324221))

(assert (=> b!314759 d!68745))

(declare-fun b!314935 () Bool)

(declare-fun e!196095 () SeekEntryResult!2759)

