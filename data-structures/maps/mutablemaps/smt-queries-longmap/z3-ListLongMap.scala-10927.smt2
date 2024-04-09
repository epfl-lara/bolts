; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127872 () Bool)

(assert start!127872)

(declare-fun e!840194 () Bool)

(declare-datatypes ((array!100166 0))(
  ( (array!100167 (arr!48338 (Array (_ BitVec 32) (_ BitVec 64))) (size!48889 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100166)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun b!1502130 () Bool)

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502130 (= e!840194 (and (= (select (arr!48338 a!2850) index!625) (select (arr!48338 a!2850) j!87)) (not (= j!87 index!625))))))

(declare-fun b!1502131 () Bool)

(declare-fun res!1023280 () Bool)

(assert (=> b!1502131 (=> (not res!1023280) (not e!840194))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12555 0))(
  ( (MissingZero!12555 (index!52611 (_ BitVec 32))) (Found!12555 (index!52612 (_ BitVec 32))) (Intermediate!12555 (undefined!13367 Bool) (index!52613 (_ BitVec 32)) (x!134314 (_ BitVec 32))) (Undefined!12555) (MissingVacant!12555 (index!52614 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100166 (_ BitVec 32)) SeekEntryResult!12555)

(assert (=> b!1502131 (= res!1023280 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48338 a!2850) j!87) a!2850 mask!2661) (Found!12555 j!87)))))

(declare-fun res!1023279 () Bool)

(assert (=> start!127872 (=> (not res!1023279) (not e!840194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127872 (= res!1023279 (validMask!0 mask!2661))))

(assert (=> start!127872 e!840194))

(assert (=> start!127872 true))

(declare-fun array_inv!37283 (array!100166) Bool)

(assert (=> start!127872 (array_inv!37283 a!2850)))

(declare-fun b!1502132 () Bool)

(declare-fun res!1023284 () Bool)

(assert (=> b!1502132 (=> (not res!1023284) (not e!840194))))

(declare-datatypes ((List!35010 0))(
  ( (Nil!35007) (Cons!35006 (h!36404 (_ BitVec 64)) (t!49711 List!35010)) )
))
(declare-fun arrayNoDuplicates!0 (array!100166 (_ BitVec 32) List!35010) Bool)

(assert (=> b!1502132 (= res!1023284 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35007))))

(declare-fun b!1502133 () Bool)

(declare-fun res!1023283 () Bool)

(assert (=> b!1502133 (=> (not res!1023283) (not e!840194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100166 (_ BitVec 32)) Bool)

(assert (=> b!1502133 (= res!1023283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502134 () Bool)

(declare-fun res!1023281 () Bool)

(assert (=> b!1502134 (=> (not res!1023281) (not e!840194))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1502134 (= res!1023281 (and (= (size!48889 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48889 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48889 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502135 () Bool)

(declare-fun res!1023285 () Bool)

(assert (=> b!1502135 (=> (not res!1023285) (not e!840194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502135 (= res!1023285 (validKeyInArray!0 (select (arr!48338 a!2850) i!996)))))

(declare-fun b!1502136 () Bool)

(declare-fun res!1023278 () Bool)

(assert (=> b!1502136 (=> (not res!1023278) (not e!840194))))

(assert (=> b!1502136 (= res!1023278 (validKeyInArray!0 (select (arr!48338 a!2850) j!87)))))

(declare-fun b!1502137 () Bool)

(declare-fun res!1023282 () Bool)

(assert (=> b!1502137 (=> (not res!1023282) (not e!840194))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502137 (= res!1023282 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48889 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48889 a!2850)) (= (select (arr!48338 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48338 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48889 a!2850))))))

(assert (= (and start!127872 res!1023279) b!1502134))

(assert (= (and b!1502134 res!1023281) b!1502135))

(assert (= (and b!1502135 res!1023285) b!1502136))

(assert (= (and b!1502136 res!1023278) b!1502133))

(assert (= (and b!1502133 res!1023283) b!1502132))

(assert (= (and b!1502132 res!1023284) b!1502137))

(assert (= (and b!1502137 res!1023282) b!1502131))

(assert (= (and b!1502131 res!1023280) b!1502130))

(declare-fun m!1385495 () Bool)

(assert (=> b!1502135 m!1385495))

(assert (=> b!1502135 m!1385495))

(declare-fun m!1385497 () Bool)

(assert (=> b!1502135 m!1385497))

(declare-fun m!1385499 () Bool)

(assert (=> b!1502131 m!1385499))

(assert (=> b!1502131 m!1385499))

(declare-fun m!1385501 () Bool)

(assert (=> b!1502131 m!1385501))

(declare-fun m!1385503 () Bool)

(assert (=> start!127872 m!1385503))

(declare-fun m!1385505 () Bool)

(assert (=> start!127872 m!1385505))

(declare-fun m!1385507 () Bool)

(assert (=> b!1502132 m!1385507))

(assert (=> b!1502136 m!1385499))

(assert (=> b!1502136 m!1385499))

(declare-fun m!1385509 () Bool)

(assert (=> b!1502136 m!1385509))

(declare-fun m!1385511 () Bool)

(assert (=> b!1502130 m!1385511))

(assert (=> b!1502130 m!1385499))

(declare-fun m!1385513 () Bool)

(assert (=> b!1502133 m!1385513))

(declare-fun m!1385515 () Bool)

(assert (=> b!1502137 m!1385515))

(declare-fun m!1385517 () Bool)

(assert (=> b!1502137 m!1385517))

(declare-fun m!1385519 () Bool)

(assert (=> b!1502137 m!1385519))

(check-sat (not start!127872) (not b!1502133) (not b!1502132) (not b!1502136) (not b!1502135) (not b!1502131))
(check-sat)
(get-model)

(declare-fun d!157613 () Bool)

(assert (=> d!157613 (= (validKeyInArray!0 (select (arr!48338 a!2850) i!996)) (and (not (= (select (arr!48338 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48338 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1502135 d!157613))

(declare-fun b!1502170 () Bool)

(declare-fun e!840208 () Bool)

(declare-fun e!840207 () Bool)

(assert (=> b!1502170 (= e!840208 e!840207)))

(declare-fun c!138965 () Bool)

(assert (=> b!1502170 (= c!138965 (validKeyInArray!0 (select (arr!48338 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1502171 () Bool)

(declare-fun call!68070 () Bool)

(assert (=> b!1502171 (= e!840207 call!68070)))

(declare-fun bm!68067 () Bool)

(assert (=> bm!68067 (= call!68070 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun d!157615 () Bool)

(declare-fun res!1023315 () Bool)

(assert (=> d!157615 (=> res!1023315 e!840208)))

(assert (=> d!157615 (= res!1023315 (bvsge #b00000000000000000000000000000000 (size!48889 a!2850)))))

(assert (=> d!157615 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840208)))

(declare-fun b!1502172 () Bool)

(declare-fun e!840209 () Bool)

(assert (=> b!1502172 (= e!840209 call!68070)))

(declare-fun b!1502173 () Bool)

(assert (=> b!1502173 (= e!840207 e!840209)))

(declare-fun lt!653288 () (_ BitVec 64))

(assert (=> b!1502173 (= lt!653288 (select (arr!48338 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50198 0))(
  ( (Unit!50199) )
))
(declare-fun lt!653289 () Unit!50198)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100166 (_ BitVec 64) (_ BitVec 32)) Unit!50198)

(assert (=> b!1502173 (= lt!653289 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653288 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1502173 (arrayContainsKey!0 a!2850 lt!653288 #b00000000000000000000000000000000)))

(declare-fun lt!653290 () Unit!50198)

(assert (=> b!1502173 (= lt!653290 lt!653289)))

(declare-fun res!1023314 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100166 (_ BitVec 32)) SeekEntryResult!12555)

(assert (=> b!1502173 (= res!1023314 (= (seekEntryOrOpen!0 (select (arr!48338 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12555 #b00000000000000000000000000000000)))))

(assert (=> b!1502173 (=> (not res!1023314) (not e!840209))))

(assert (= (and d!157615 (not res!1023315)) b!1502170))

(assert (= (and b!1502170 c!138965) b!1502173))

(assert (= (and b!1502170 (not c!138965)) b!1502171))

(assert (= (and b!1502173 res!1023314) b!1502172))

(assert (= (or b!1502172 b!1502171) bm!68067))

(declare-fun m!1385547 () Bool)

(assert (=> b!1502170 m!1385547))

(assert (=> b!1502170 m!1385547))

(declare-fun m!1385549 () Bool)

(assert (=> b!1502170 m!1385549))

(declare-fun m!1385551 () Bool)

(assert (=> bm!68067 m!1385551))

(assert (=> b!1502173 m!1385547))

(declare-fun m!1385553 () Bool)

(assert (=> b!1502173 m!1385553))

(declare-fun m!1385555 () Bool)

(assert (=> b!1502173 m!1385555))

(assert (=> b!1502173 m!1385547))

(declare-fun m!1385557 () Bool)

(assert (=> b!1502173 m!1385557))

(assert (=> b!1502133 d!157615))

(declare-fun b!1502184 () Bool)

(declare-fun e!840218 () Bool)

(declare-fun e!840219 () Bool)

(assert (=> b!1502184 (= e!840218 e!840219)))

(declare-fun c!138968 () Bool)

(assert (=> b!1502184 (= c!138968 (validKeyInArray!0 (select (arr!48338 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1502185 () Bool)

(declare-fun e!840221 () Bool)

(declare-fun contains!9954 (List!35010 (_ BitVec 64)) Bool)

(assert (=> b!1502185 (= e!840221 (contains!9954 Nil!35007 (select (arr!48338 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157617 () Bool)

(declare-fun res!1023322 () Bool)

(declare-fun e!840220 () Bool)

(assert (=> d!157617 (=> res!1023322 e!840220)))

(assert (=> d!157617 (= res!1023322 (bvsge #b00000000000000000000000000000000 (size!48889 a!2850)))))

(assert (=> d!157617 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35007) e!840220)))

(declare-fun b!1502186 () Bool)

(assert (=> b!1502186 (= e!840220 e!840218)))

(declare-fun res!1023324 () Bool)

(assert (=> b!1502186 (=> (not res!1023324) (not e!840218))))

(assert (=> b!1502186 (= res!1023324 (not e!840221))))

(declare-fun res!1023323 () Bool)

(assert (=> b!1502186 (=> (not res!1023323) (not e!840221))))

(assert (=> b!1502186 (= res!1023323 (validKeyInArray!0 (select (arr!48338 a!2850) #b00000000000000000000000000000000)))))

(declare-fun bm!68070 () Bool)

(declare-fun call!68073 () Bool)

(assert (=> bm!68070 (= call!68073 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138968 (Cons!35006 (select (arr!48338 a!2850) #b00000000000000000000000000000000) Nil!35007) Nil!35007)))))

(declare-fun b!1502187 () Bool)

(assert (=> b!1502187 (= e!840219 call!68073)))

(declare-fun b!1502188 () Bool)

(assert (=> b!1502188 (= e!840219 call!68073)))

(assert (= (and d!157617 (not res!1023322)) b!1502186))

(assert (= (and b!1502186 res!1023323) b!1502185))

(assert (= (and b!1502186 res!1023324) b!1502184))

(assert (= (and b!1502184 c!138968) b!1502188))

(assert (= (and b!1502184 (not c!138968)) b!1502187))

(assert (= (or b!1502188 b!1502187) bm!68070))

(assert (=> b!1502184 m!1385547))

(assert (=> b!1502184 m!1385547))

(assert (=> b!1502184 m!1385549))

(assert (=> b!1502185 m!1385547))

(assert (=> b!1502185 m!1385547))

(declare-fun m!1385559 () Bool)

(assert (=> b!1502185 m!1385559))

(assert (=> b!1502186 m!1385547))

(assert (=> b!1502186 m!1385547))

(assert (=> b!1502186 m!1385549))

(assert (=> bm!68070 m!1385547))

(declare-fun m!1385561 () Bool)

(assert (=> bm!68070 m!1385561))

(assert (=> b!1502132 d!157617))

(declare-fun d!157621 () Bool)

(assert (=> d!157621 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127872 d!157621))

(declare-fun d!157629 () Bool)

(assert (=> d!157629 (= (array_inv!37283 a!2850) (bvsge (size!48889 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127872 d!157629))

(declare-fun b!1502234 () Bool)

(declare-fun e!840251 () SeekEntryResult!12555)

(declare-fun e!840249 () SeekEntryResult!12555)

(assert (=> b!1502234 (= e!840251 e!840249)))

(declare-fun lt!653301 () (_ BitVec 64))

(declare-fun c!138988 () Bool)

(assert (=> b!1502234 (= c!138988 (= lt!653301 (select (arr!48338 a!2850) j!87)))))

(declare-fun lt!653302 () SeekEntryResult!12555)

(declare-fun d!157631 () Bool)

(get-info :version)

(assert (=> d!157631 (and (or ((_ is Undefined!12555) lt!653302) (not ((_ is Found!12555) lt!653302)) (and (bvsge (index!52612 lt!653302) #b00000000000000000000000000000000) (bvslt (index!52612 lt!653302) (size!48889 a!2850)))) (or ((_ is Undefined!12555) lt!653302) ((_ is Found!12555) lt!653302) (not ((_ is MissingVacant!12555) lt!653302)) (not (= (index!52614 lt!653302) vacantBefore!10)) (and (bvsge (index!52614 lt!653302) #b00000000000000000000000000000000) (bvslt (index!52614 lt!653302) (size!48889 a!2850)))) (or ((_ is Undefined!12555) lt!653302) (ite ((_ is Found!12555) lt!653302) (= (select (arr!48338 a!2850) (index!52612 lt!653302)) (select (arr!48338 a!2850) j!87)) (and ((_ is MissingVacant!12555) lt!653302) (= (index!52614 lt!653302) vacantBefore!10) (= (select (arr!48338 a!2850) (index!52614 lt!653302)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157631 (= lt!653302 e!840251)))

(declare-fun c!138989 () Bool)

(assert (=> d!157631 (= c!138989 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157631 (= lt!653301 (select (arr!48338 a!2850) index!625))))

(assert (=> d!157631 (validMask!0 mask!2661)))

(assert (=> d!157631 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48338 a!2850) j!87) a!2850 mask!2661) lt!653302)))

(declare-fun e!840250 () SeekEntryResult!12555)

(declare-fun b!1502235 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502235 (= e!840250 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48338 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502236 () Bool)

(assert (=> b!1502236 (= e!840249 (Found!12555 index!625))))

(declare-fun b!1502237 () Bool)

(declare-fun c!138987 () Bool)

(assert (=> b!1502237 (= c!138987 (= lt!653301 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1502237 (= e!840249 e!840250)))

(declare-fun b!1502238 () Bool)

(assert (=> b!1502238 (= e!840250 (MissingVacant!12555 vacantBefore!10))))

(declare-fun b!1502239 () Bool)

(assert (=> b!1502239 (= e!840251 Undefined!12555)))

(assert (= (and d!157631 c!138989) b!1502239))

(assert (= (and d!157631 (not c!138989)) b!1502234))

(assert (= (and b!1502234 c!138988) b!1502236))

(assert (= (and b!1502234 (not c!138988)) b!1502237))

(assert (= (and b!1502237 c!138987) b!1502238))

(assert (= (and b!1502237 (not c!138987)) b!1502235))

(declare-fun m!1385579 () Bool)

(assert (=> d!157631 m!1385579))

(declare-fun m!1385581 () Bool)

(assert (=> d!157631 m!1385581))

(assert (=> d!157631 m!1385511))

(assert (=> d!157631 m!1385503))

(declare-fun m!1385583 () Bool)

(assert (=> b!1502235 m!1385583))

(assert (=> b!1502235 m!1385583))

(assert (=> b!1502235 m!1385499))

(declare-fun m!1385585 () Bool)

(assert (=> b!1502235 m!1385585))

(assert (=> b!1502131 d!157631))

(declare-fun d!157645 () Bool)

(assert (=> d!157645 (= (validKeyInArray!0 (select (arr!48338 a!2850) j!87)) (and (not (= (select (arr!48338 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48338 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1502136 d!157645))

(check-sat (not bm!68067) (not b!1502186) (not b!1502185) (not b!1502184) (not d!157631) (not bm!68070) (not b!1502235) (not b!1502173) (not b!1502170))
(check-sat)
