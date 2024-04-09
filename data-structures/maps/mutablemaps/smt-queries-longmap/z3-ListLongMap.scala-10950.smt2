; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128166 () Bool)

(assert start!128166)

(declare-fun b!1504498 () Bool)

(declare-fun e!840996 () Bool)

(declare-fun e!840998 () Bool)

(assert (=> b!1504498 (= e!840996 e!840998)))

(declare-fun res!1025273 () Bool)

(assert (=> b!1504498 (=> (not res!1025273) (not e!840998))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100316 0))(
  ( (array!100317 (arr!48407 (Array (_ BitVec 32) (_ BitVec 64))) (size!48958 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100316)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12624 0))(
  ( (MissingZero!12624 (index!52887 (_ BitVec 32))) (Found!12624 (index!52888 (_ BitVec 32))) (Intermediate!12624 (undefined!13436 Bool) (index!52889 (_ BitVec 32)) (x!134585 (_ BitVec 32))) (Undefined!12624) (MissingVacant!12624 (index!52890 (_ BitVec 32))) )
))
(declare-fun lt!653694 () SeekEntryResult!12624)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100316 (_ BitVec 32)) SeekEntryResult!12624)

(assert (=> b!1504498 (= res!1025273 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48407 a!2850) j!87) a!2850 mask!2661) lt!653694))))

(assert (=> b!1504498 (= lt!653694 (Found!12624 j!87))))

(declare-fun b!1504499 () Bool)

(declare-fun res!1025277 () Bool)

(assert (=> b!1504499 (=> (not res!1025277) (not e!840996))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504499 (= res!1025277 (validKeyInArray!0 (select (arr!48407 a!2850) i!996)))))

(declare-fun b!1504500 () Bool)

(declare-fun res!1025274 () Bool)

(assert (=> b!1504500 (=> (not res!1025274) (not e!840998))))

(assert (=> b!1504500 (= res!1025274 (not (= (select (arr!48407 a!2850) index!625) (select (arr!48407 a!2850) j!87))))))

(declare-fun b!1504501 () Bool)

(declare-fun res!1025272 () Bool)

(assert (=> b!1504501 (=> (not res!1025272) (not e!840996))))

(assert (=> b!1504501 (= res!1025272 (validKeyInArray!0 (select (arr!48407 a!2850) j!87)))))

(declare-fun b!1504502 () Bool)

(declare-fun e!840995 () Bool)

(assert (=> b!1504502 (= e!840998 e!840995)))

(declare-fun res!1025275 () Bool)

(assert (=> b!1504502 (=> (not res!1025275) (not e!840995))))

(declare-fun lt!653695 () (_ BitVec 32))

(assert (=> b!1504502 (= res!1025275 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653695 #b00000000000000000000000000000000) (bvslt lt!653695 (size!48958 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504502 (= lt!653695 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504503 () Bool)

(assert (=> b!1504503 (= e!840995 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653695 vacantBefore!10 (select (arr!48407 a!2850) j!87) a!2850 mask!2661) lt!653694)))))

(declare-fun b!1504504 () Bool)

(declare-fun res!1025270 () Bool)

(assert (=> b!1504504 (=> (not res!1025270) (not e!840996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100316 (_ BitVec 32)) Bool)

(assert (=> b!1504504 (= res!1025270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1025271 () Bool)

(assert (=> start!128166 (=> (not res!1025271) (not e!840996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128166 (= res!1025271 (validMask!0 mask!2661))))

(assert (=> start!128166 e!840996))

(assert (=> start!128166 true))

(declare-fun array_inv!37352 (array!100316) Bool)

(assert (=> start!128166 (array_inv!37352 a!2850)))

(declare-fun b!1504505 () Bool)

(declare-fun res!1025276 () Bool)

(assert (=> b!1504505 (=> (not res!1025276) (not e!840996))))

(assert (=> b!1504505 (= res!1025276 (and (= (size!48958 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48958 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48958 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504506 () Bool)

(declare-fun res!1025268 () Bool)

(assert (=> b!1504506 (=> (not res!1025268) (not e!840996))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504506 (= res!1025268 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48958 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48958 a!2850)) (= (select (arr!48407 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48407 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48958 a!2850))))))

(declare-fun b!1504507 () Bool)

(declare-fun res!1025269 () Bool)

(assert (=> b!1504507 (=> (not res!1025269) (not e!840996))))

(declare-datatypes ((List!35079 0))(
  ( (Nil!35076) (Cons!35075 (h!36473 (_ BitVec 64)) (t!49780 List!35079)) )
))
(declare-fun arrayNoDuplicates!0 (array!100316 (_ BitVec 32) List!35079) Bool)

(assert (=> b!1504507 (= res!1025269 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35076))))

(assert (= (and start!128166 res!1025271) b!1504505))

(assert (= (and b!1504505 res!1025276) b!1504499))

(assert (= (and b!1504499 res!1025277) b!1504501))

(assert (= (and b!1504501 res!1025272) b!1504504))

(assert (= (and b!1504504 res!1025270) b!1504507))

(assert (= (and b!1504507 res!1025269) b!1504506))

(assert (= (and b!1504506 res!1025268) b!1504498))

(assert (= (and b!1504498 res!1025273) b!1504500))

(assert (= (and b!1504500 res!1025274) b!1504502))

(assert (= (and b!1504502 res!1025275) b!1504503))

(declare-fun m!1387707 () Bool)

(assert (=> b!1504501 m!1387707))

(assert (=> b!1504501 m!1387707))

(declare-fun m!1387709 () Bool)

(assert (=> b!1504501 m!1387709))

(assert (=> b!1504503 m!1387707))

(assert (=> b!1504503 m!1387707))

(declare-fun m!1387711 () Bool)

(assert (=> b!1504503 m!1387711))

(declare-fun m!1387713 () Bool)

(assert (=> b!1504506 m!1387713))

(declare-fun m!1387715 () Bool)

(assert (=> b!1504506 m!1387715))

(declare-fun m!1387717 () Bool)

(assert (=> b!1504506 m!1387717))

(declare-fun m!1387719 () Bool)

(assert (=> b!1504504 m!1387719))

(declare-fun m!1387721 () Bool)

(assert (=> b!1504499 m!1387721))

(assert (=> b!1504499 m!1387721))

(declare-fun m!1387723 () Bool)

(assert (=> b!1504499 m!1387723))

(declare-fun m!1387725 () Bool)

(assert (=> b!1504500 m!1387725))

(assert (=> b!1504500 m!1387707))

(assert (=> b!1504498 m!1387707))

(assert (=> b!1504498 m!1387707))

(declare-fun m!1387727 () Bool)

(assert (=> b!1504498 m!1387727))

(declare-fun m!1387729 () Bool)

(assert (=> b!1504507 m!1387729))

(declare-fun m!1387731 () Bool)

(assert (=> start!128166 m!1387731))

(declare-fun m!1387733 () Bool)

(assert (=> start!128166 m!1387733))

(declare-fun m!1387735 () Bool)

(assert (=> b!1504502 m!1387735))

(check-sat (not b!1504507) (not b!1504503) (not b!1504501) (not start!128166) (not b!1504502) (not b!1504498) (not b!1504504) (not b!1504499))
(check-sat)
(get-model)

(declare-fun b!1504548 () Bool)

(declare-fun e!841020 () Bool)

(declare-fun contains!9962 (List!35079 (_ BitVec 64)) Bool)

(assert (=> b!1504548 (= e!841020 (contains!9962 Nil!35076 (select (arr!48407 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504549 () Bool)

(declare-fun e!841021 () Bool)

(declare-fun call!68142 () Bool)

(assert (=> b!1504549 (= e!841021 call!68142)))

(declare-fun bm!68139 () Bool)

(declare-fun c!139154 () Bool)

(assert (=> bm!68139 (= call!68142 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139154 (Cons!35075 (select (arr!48407 a!2850) #b00000000000000000000000000000000) Nil!35076) Nil!35076)))))

(declare-fun d!157845 () Bool)

(declare-fun res!1025316 () Bool)

(declare-fun e!841019 () Bool)

(assert (=> d!157845 (=> res!1025316 e!841019)))

(assert (=> d!157845 (= res!1025316 (bvsge #b00000000000000000000000000000000 (size!48958 a!2850)))))

(assert (=> d!157845 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35076) e!841019)))

(declare-fun b!1504550 () Bool)

(declare-fun e!841022 () Bool)

(assert (=> b!1504550 (= e!841019 e!841022)))

(declare-fun res!1025314 () Bool)

(assert (=> b!1504550 (=> (not res!1025314) (not e!841022))))

(assert (=> b!1504550 (= res!1025314 (not e!841020))))

(declare-fun res!1025315 () Bool)

(assert (=> b!1504550 (=> (not res!1025315) (not e!841020))))

(assert (=> b!1504550 (= res!1025315 (validKeyInArray!0 (select (arr!48407 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504551 () Bool)

(assert (=> b!1504551 (= e!841021 call!68142)))

(declare-fun b!1504552 () Bool)

(assert (=> b!1504552 (= e!841022 e!841021)))

(assert (=> b!1504552 (= c!139154 (validKeyInArray!0 (select (arr!48407 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157845 (not res!1025316)) b!1504550))

(assert (= (and b!1504550 res!1025315) b!1504548))

(assert (= (and b!1504550 res!1025314) b!1504552))

(assert (= (and b!1504552 c!139154) b!1504551))

(assert (= (and b!1504552 (not c!139154)) b!1504549))

(assert (= (or b!1504551 b!1504549) bm!68139))

(declare-fun m!1387767 () Bool)

(assert (=> b!1504548 m!1387767))

(assert (=> b!1504548 m!1387767))

(declare-fun m!1387769 () Bool)

(assert (=> b!1504548 m!1387769))

(assert (=> bm!68139 m!1387767))

(declare-fun m!1387771 () Bool)

(assert (=> bm!68139 m!1387771))

(assert (=> b!1504550 m!1387767))

(assert (=> b!1504550 m!1387767))

(declare-fun m!1387773 () Bool)

(assert (=> b!1504550 m!1387773))

(assert (=> b!1504552 m!1387767))

(assert (=> b!1504552 m!1387767))

(assert (=> b!1504552 m!1387773))

(assert (=> b!1504507 d!157845))

(declare-fun d!157847 () Bool)

(assert (=> d!157847 (= (validKeyInArray!0 (select (arr!48407 a!2850) j!87)) (and (not (= (select (arr!48407 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48407 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504501 d!157847))

(declare-fun b!1504565 () Bool)

(declare-fun e!841029 () SeekEntryResult!12624)

(declare-fun e!841030 () SeekEntryResult!12624)

(assert (=> b!1504565 (= e!841029 e!841030)))

(declare-fun lt!653707 () (_ BitVec 64))

(declare-fun c!139162 () Bool)

(assert (=> b!1504565 (= c!139162 (= lt!653707 (select (arr!48407 a!2850) j!87)))))

(declare-fun d!157849 () Bool)

(declare-fun lt!653706 () SeekEntryResult!12624)

(get-info :version)

(assert (=> d!157849 (and (or ((_ is Undefined!12624) lt!653706) (not ((_ is Found!12624) lt!653706)) (and (bvsge (index!52888 lt!653706) #b00000000000000000000000000000000) (bvslt (index!52888 lt!653706) (size!48958 a!2850)))) (or ((_ is Undefined!12624) lt!653706) ((_ is Found!12624) lt!653706) (not ((_ is MissingVacant!12624) lt!653706)) (not (= (index!52890 lt!653706) vacantBefore!10)) (and (bvsge (index!52890 lt!653706) #b00000000000000000000000000000000) (bvslt (index!52890 lt!653706) (size!48958 a!2850)))) (or ((_ is Undefined!12624) lt!653706) (ite ((_ is Found!12624) lt!653706) (= (select (arr!48407 a!2850) (index!52888 lt!653706)) (select (arr!48407 a!2850) j!87)) (and ((_ is MissingVacant!12624) lt!653706) (= (index!52890 lt!653706) vacantBefore!10) (= (select (arr!48407 a!2850) (index!52890 lt!653706)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157849 (= lt!653706 e!841029)))

(declare-fun c!139161 () Bool)

(assert (=> d!157849 (= c!139161 (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110))))

(assert (=> d!157849 (= lt!653707 (select (arr!48407 a!2850) lt!653695))))

(assert (=> d!157849 (validMask!0 mask!2661)))

(assert (=> d!157849 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653695 vacantBefore!10 (select (arr!48407 a!2850) j!87) a!2850 mask!2661) lt!653706)))

(declare-fun b!1504566 () Bool)

(declare-fun c!139163 () Bool)

(assert (=> b!1504566 (= c!139163 (= lt!653707 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!841031 () SeekEntryResult!12624)

(assert (=> b!1504566 (= e!841030 e!841031)))

(declare-fun b!1504567 () Bool)

(assert (=> b!1504567 (= e!841031 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647 #b00000000000000000000000000000001) (nextIndex!0 lt!653695 (bvadd #b00000000000000000000000000000001 x!647) mask!2661) vacantBefore!10 (select (arr!48407 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1504568 () Bool)

(assert (=> b!1504568 (= e!841029 Undefined!12624)))

(declare-fun b!1504569 () Bool)

(assert (=> b!1504569 (= e!841031 (MissingVacant!12624 vacantBefore!10))))

(declare-fun b!1504570 () Bool)

(assert (=> b!1504570 (= e!841030 (Found!12624 lt!653695))))

(assert (= (and d!157849 c!139161) b!1504568))

(assert (= (and d!157849 (not c!139161)) b!1504565))

(assert (= (and b!1504565 c!139162) b!1504570))

(assert (= (and b!1504565 (not c!139162)) b!1504566))

(assert (= (and b!1504566 c!139163) b!1504569))

(assert (= (and b!1504566 (not c!139163)) b!1504567))

(declare-fun m!1387775 () Bool)

(assert (=> d!157849 m!1387775))

(declare-fun m!1387777 () Bool)

(assert (=> d!157849 m!1387777))

(declare-fun m!1387779 () Bool)

(assert (=> d!157849 m!1387779))

(assert (=> d!157849 m!1387731))

(declare-fun m!1387781 () Bool)

(assert (=> b!1504567 m!1387781))

(assert (=> b!1504567 m!1387781))

(assert (=> b!1504567 m!1387707))

(declare-fun m!1387783 () Bool)

(assert (=> b!1504567 m!1387783))

(assert (=> b!1504503 d!157849))

(declare-fun d!157855 () Bool)

(declare-fun lt!653713 () (_ BitVec 32))

(assert (=> d!157855 (and (bvsge lt!653713 #b00000000000000000000000000000000) (bvslt lt!653713 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157855 (= lt!653713 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157855 (validMask!0 mask!2661)))

(assert (=> d!157855 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653713)))

(declare-fun bs!43197 () Bool)

(assert (= bs!43197 d!157855))

(declare-fun m!1387787 () Bool)

(assert (=> bs!43197 m!1387787))

(assert (=> bs!43197 m!1387731))

(assert (=> b!1504502 d!157855))

(declare-fun bm!68145 () Bool)

(declare-fun call!68148 () Bool)

(assert (=> bm!68145 (= call!68148 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1504594 () Bool)

(declare-fun e!841052 () Bool)

(assert (=> b!1504594 (= e!841052 call!68148)))

(declare-fun b!1504595 () Bool)

(declare-fun e!841050 () Bool)

(assert (=> b!1504595 (= e!841052 e!841050)))

(declare-fun lt!653721 () (_ BitVec 64))

(assert (=> b!1504595 (= lt!653721 (select (arr!48407 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50218 0))(
  ( (Unit!50219) )
))
(declare-fun lt!653720 () Unit!50218)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100316 (_ BitVec 64) (_ BitVec 32)) Unit!50218)

(assert (=> b!1504595 (= lt!653720 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653721 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1504595 (arrayContainsKey!0 a!2850 lt!653721 #b00000000000000000000000000000000)))

(declare-fun lt!653722 () Unit!50218)

(assert (=> b!1504595 (= lt!653722 lt!653720)))

(declare-fun res!1025331 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100316 (_ BitVec 32)) SeekEntryResult!12624)

(assert (=> b!1504595 (= res!1025331 (= (seekEntryOrOpen!0 (select (arr!48407 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12624 #b00000000000000000000000000000000)))))

(assert (=> b!1504595 (=> (not res!1025331) (not e!841050))))

(declare-fun b!1504596 () Bool)

(declare-fun e!841051 () Bool)

(assert (=> b!1504596 (= e!841051 e!841052)))

(declare-fun c!139169 () Bool)

(assert (=> b!1504596 (= c!139169 (validKeyInArray!0 (select (arr!48407 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504597 () Bool)

(assert (=> b!1504597 (= e!841050 call!68148)))

(declare-fun d!157859 () Bool)

(declare-fun res!1025330 () Bool)

(assert (=> d!157859 (=> res!1025330 e!841051)))

(assert (=> d!157859 (= res!1025330 (bvsge #b00000000000000000000000000000000 (size!48958 a!2850)))))

(assert (=> d!157859 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!841051)))

(assert (= (and d!157859 (not res!1025330)) b!1504596))

(assert (= (and b!1504596 c!139169) b!1504595))

(assert (= (and b!1504596 (not c!139169)) b!1504594))

(assert (= (and b!1504595 res!1025331) b!1504597))

(assert (= (or b!1504597 b!1504594) bm!68145))

(declare-fun m!1387797 () Bool)

(assert (=> bm!68145 m!1387797))

(assert (=> b!1504595 m!1387767))

(declare-fun m!1387799 () Bool)

(assert (=> b!1504595 m!1387799))

(declare-fun m!1387801 () Bool)

(assert (=> b!1504595 m!1387801))

(assert (=> b!1504595 m!1387767))

(declare-fun m!1387803 () Bool)

(assert (=> b!1504595 m!1387803))

(assert (=> b!1504596 m!1387767))

(assert (=> b!1504596 m!1387767))

(assert (=> b!1504596 m!1387773))

(assert (=> b!1504504 d!157859))

(declare-fun d!157865 () Bool)

(assert (=> d!157865 (= (validKeyInArray!0 (select (arr!48407 a!2850) i!996)) (and (not (= (select (arr!48407 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48407 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504499 d!157865))

(declare-fun b!1504598 () Bool)

(declare-fun e!841053 () SeekEntryResult!12624)

(declare-fun e!841054 () SeekEntryResult!12624)

(assert (=> b!1504598 (= e!841053 e!841054)))

(declare-fun c!139171 () Bool)

(declare-fun lt!653724 () (_ BitVec 64))

(assert (=> b!1504598 (= c!139171 (= lt!653724 (select (arr!48407 a!2850) j!87)))))

(declare-fun d!157867 () Bool)

(declare-fun lt!653723 () SeekEntryResult!12624)

(assert (=> d!157867 (and (or ((_ is Undefined!12624) lt!653723) (not ((_ is Found!12624) lt!653723)) (and (bvsge (index!52888 lt!653723) #b00000000000000000000000000000000) (bvslt (index!52888 lt!653723) (size!48958 a!2850)))) (or ((_ is Undefined!12624) lt!653723) ((_ is Found!12624) lt!653723) (not ((_ is MissingVacant!12624) lt!653723)) (not (= (index!52890 lt!653723) vacantBefore!10)) (and (bvsge (index!52890 lt!653723) #b00000000000000000000000000000000) (bvslt (index!52890 lt!653723) (size!48958 a!2850)))) (or ((_ is Undefined!12624) lt!653723) (ite ((_ is Found!12624) lt!653723) (= (select (arr!48407 a!2850) (index!52888 lt!653723)) (select (arr!48407 a!2850) j!87)) (and ((_ is MissingVacant!12624) lt!653723) (= (index!52890 lt!653723) vacantBefore!10) (= (select (arr!48407 a!2850) (index!52890 lt!653723)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157867 (= lt!653723 e!841053)))

(declare-fun c!139170 () Bool)

(assert (=> d!157867 (= c!139170 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157867 (= lt!653724 (select (arr!48407 a!2850) index!625))))

(assert (=> d!157867 (validMask!0 mask!2661)))

(assert (=> d!157867 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48407 a!2850) j!87) a!2850 mask!2661) lt!653723)))

(declare-fun b!1504599 () Bool)

(declare-fun c!139172 () Bool)

(assert (=> b!1504599 (= c!139172 (= lt!653724 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!841055 () SeekEntryResult!12624)

(assert (=> b!1504599 (= e!841054 e!841055)))

(declare-fun b!1504600 () Bool)

(assert (=> b!1504600 (= e!841055 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48407 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1504601 () Bool)

(assert (=> b!1504601 (= e!841053 Undefined!12624)))

(declare-fun b!1504602 () Bool)

(assert (=> b!1504602 (= e!841055 (MissingVacant!12624 vacantBefore!10))))

(declare-fun b!1504603 () Bool)

(assert (=> b!1504603 (= e!841054 (Found!12624 index!625))))

(assert (= (and d!157867 c!139170) b!1504601))

(assert (= (and d!157867 (not c!139170)) b!1504598))

(assert (= (and b!1504598 c!139171) b!1504603))

(assert (= (and b!1504598 (not c!139171)) b!1504599))

(assert (= (and b!1504599 c!139172) b!1504602))

(assert (= (and b!1504599 (not c!139172)) b!1504600))

(declare-fun m!1387805 () Bool)

(assert (=> d!157867 m!1387805))

(declare-fun m!1387807 () Bool)

(assert (=> d!157867 m!1387807))

(assert (=> d!157867 m!1387725))

(assert (=> d!157867 m!1387731))

(assert (=> b!1504600 m!1387735))

(assert (=> b!1504600 m!1387735))

(assert (=> b!1504600 m!1387707))

(declare-fun m!1387809 () Bool)

(assert (=> b!1504600 m!1387809))

(assert (=> b!1504498 d!157867))

(declare-fun d!157869 () Bool)

(assert (=> d!157869 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128166 d!157869))

(declare-fun d!157877 () Bool)

(assert (=> d!157877 (= (array_inv!37352 a!2850) (bvsge (size!48958 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128166 d!157877))

(check-sat (not d!157849) (not b!1504600) (not b!1504550) (not bm!68139) (not b!1504552) (not b!1504567) (not bm!68145) (not d!157855) (not b!1504596) (not b!1504548) (not b!1504595) (not d!157867))
(check-sat)
