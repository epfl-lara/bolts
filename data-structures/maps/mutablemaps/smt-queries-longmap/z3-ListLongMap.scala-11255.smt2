; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131232 () Bool)

(assert start!131232)

(declare-fun b!1539071 () Bool)

(declare-fun res!1056190 () Bool)

(declare-fun e!856117 () Bool)

(assert (=> b!1539071 (=> (not res!1056190) (not e!856117))))

(declare-datatypes ((array!102224 0))(
  ( (array!102225 (arr!49322 (Array (_ BitVec 32) (_ BitVec 64))) (size!49873 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102224)

(declare-datatypes ((List!35976 0))(
  ( (Nil!35973) (Cons!35972 (h!37418 (_ BitVec 64)) (t!50677 List!35976)) )
))
(declare-fun arrayNoDuplicates!0 (array!102224 (_ BitVec 32) List!35976) Bool)

(assert (=> b!1539071 (= res!1056190 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35973))))

(declare-fun b!1539072 () Bool)

(declare-fun res!1056191 () Bool)

(assert (=> b!1539072 (=> (not res!1056191) (not e!856117))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539072 (= res!1056191 (validKeyInArray!0 (select (arr!49322 a!2792) j!64)))))

(declare-fun res!1056194 () Bool)

(assert (=> start!131232 (=> (not res!1056194) (not e!856117))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131232 (= res!1056194 (validMask!0 mask!2480))))

(assert (=> start!131232 e!856117))

(assert (=> start!131232 true))

(declare-fun array_inv!38267 (array!102224) Bool)

(assert (=> start!131232 (array_inv!38267 a!2792)))

(declare-fun b!1539073 () Bool)

(declare-fun res!1056192 () Bool)

(assert (=> b!1539073 (=> (not res!1056192) (not e!856117))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539073 (= res!1056192 (not (= (select (arr!49322 a!2792) index!463) (select (arr!49322 a!2792) j!64))))))

(declare-fun b!1539074 () Bool)

(declare-fun res!1056187 () Bool)

(assert (=> b!1539074 (=> (not res!1056187) (not e!856117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102224 (_ BitVec 32)) Bool)

(assert (=> b!1539074 (= res!1056187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539075 () Bool)

(declare-fun res!1056188 () Bool)

(assert (=> b!1539075 (=> (not res!1056188) (not e!856117))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1539075 (= res!1056188 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49873 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49873 a!2792)) (= (select (arr!49322 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539076 () Bool)

(declare-fun res!1056193 () Bool)

(assert (=> b!1539076 (=> (not res!1056193) (not e!856117))))

(declare-datatypes ((SeekEntryResult!13471 0))(
  ( (MissingZero!13471 (index!56278 (_ BitVec 32))) (Found!13471 (index!56279 (_ BitVec 32))) (Intermediate!13471 (undefined!14283 Bool) (index!56280 (_ BitVec 32)) (x!138007 (_ BitVec 32))) (Undefined!13471) (MissingVacant!13471 (index!56281 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102224 (_ BitVec 32)) SeekEntryResult!13471)

(assert (=> b!1539076 (= res!1056193 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49322 a!2792) j!64) a!2792 mask!2480) (Found!13471 j!64)))))

(declare-fun b!1539077 () Bool)

(declare-fun res!1056189 () Bool)

(assert (=> b!1539077 (=> (not res!1056189) (not e!856117))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539077 (= res!1056189 (validKeyInArray!0 (select (arr!49322 a!2792) i!951)))))

(declare-fun b!1539078 () Bool)

(assert (=> b!1539078 (= e!856117 (or (bvslt (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110)))))

(declare-fun lt!664906 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539078 (= lt!664906 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539079 () Bool)

(declare-fun res!1056195 () Bool)

(assert (=> b!1539079 (=> (not res!1056195) (not e!856117))))

(assert (=> b!1539079 (= res!1056195 (and (= (size!49873 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49873 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49873 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!131232 res!1056194) b!1539079))

(assert (= (and b!1539079 res!1056195) b!1539077))

(assert (= (and b!1539077 res!1056189) b!1539072))

(assert (= (and b!1539072 res!1056191) b!1539074))

(assert (= (and b!1539074 res!1056187) b!1539071))

(assert (= (and b!1539071 res!1056190) b!1539075))

(assert (= (and b!1539075 res!1056188) b!1539076))

(assert (= (and b!1539076 res!1056193) b!1539073))

(assert (= (and b!1539073 res!1056192) b!1539078))

(declare-fun m!1421469 () Bool)

(assert (=> b!1539073 m!1421469))

(declare-fun m!1421471 () Bool)

(assert (=> b!1539073 m!1421471))

(declare-fun m!1421473 () Bool)

(assert (=> b!1539071 m!1421473))

(assert (=> b!1539076 m!1421471))

(assert (=> b!1539076 m!1421471))

(declare-fun m!1421475 () Bool)

(assert (=> b!1539076 m!1421475))

(declare-fun m!1421477 () Bool)

(assert (=> b!1539074 m!1421477))

(declare-fun m!1421479 () Bool)

(assert (=> b!1539078 m!1421479))

(declare-fun m!1421481 () Bool)

(assert (=> b!1539077 m!1421481))

(assert (=> b!1539077 m!1421481))

(declare-fun m!1421483 () Bool)

(assert (=> b!1539077 m!1421483))

(assert (=> b!1539072 m!1421471))

(assert (=> b!1539072 m!1421471))

(declare-fun m!1421485 () Bool)

(assert (=> b!1539072 m!1421485))

(declare-fun m!1421487 () Bool)

(assert (=> start!131232 m!1421487))

(declare-fun m!1421489 () Bool)

(assert (=> start!131232 m!1421489))

(declare-fun m!1421491 () Bool)

(assert (=> b!1539075 m!1421491))

(check-sat (not b!1539076) (not b!1539072) (not b!1539078) (not b!1539074) (not b!1539071) (not b!1539077) (not start!131232))
(check-sat)
(get-model)

(declare-fun b!1539117 () Bool)

(declare-fun e!856134 () Bool)

(declare-fun call!68598 () Bool)

(assert (=> b!1539117 (= e!856134 call!68598)))

(declare-fun b!1539118 () Bool)

(declare-fun e!856136 () Bool)

(assert (=> b!1539118 (= e!856136 e!856134)))

(declare-fun c!141005 () Bool)

(assert (=> b!1539118 (= c!141005 (validKeyInArray!0 (select (arr!49322 a!2792) #b00000000000000000000000000000000)))))

(declare-fun d!160291 () Bool)

(declare-fun res!1056229 () Bool)

(declare-fun e!856135 () Bool)

(assert (=> d!160291 (=> res!1056229 e!856135)))

(assert (=> d!160291 (= res!1056229 (bvsge #b00000000000000000000000000000000 (size!49873 a!2792)))))

(assert (=> d!160291 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35973) e!856135)))

(declare-fun b!1539119 () Bool)

(declare-fun e!856133 () Bool)

(declare-fun contains!10024 (List!35976 (_ BitVec 64)) Bool)

(assert (=> b!1539119 (= e!856133 (contains!10024 Nil!35973 (select (arr!49322 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68595 () Bool)

(assert (=> bm!68595 (= call!68598 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141005 (Cons!35972 (select (arr!49322 a!2792) #b00000000000000000000000000000000) Nil!35973) Nil!35973)))))

(declare-fun b!1539120 () Bool)

(assert (=> b!1539120 (= e!856135 e!856136)))

(declare-fun res!1056231 () Bool)

(assert (=> b!1539120 (=> (not res!1056231) (not e!856136))))

(assert (=> b!1539120 (= res!1056231 (not e!856133))))

(declare-fun res!1056230 () Bool)

(assert (=> b!1539120 (=> (not res!1056230) (not e!856133))))

(assert (=> b!1539120 (= res!1056230 (validKeyInArray!0 (select (arr!49322 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539121 () Bool)

(assert (=> b!1539121 (= e!856134 call!68598)))

(assert (= (and d!160291 (not res!1056229)) b!1539120))

(assert (= (and b!1539120 res!1056230) b!1539119))

(assert (= (and b!1539120 res!1056231) b!1539118))

(assert (= (and b!1539118 c!141005) b!1539117))

(assert (= (and b!1539118 (not c!141005)) b!1539121))

(assert (= (or b!1539117 b!1539121) bm!68595))

(declare-fun m!1421517 () Bool)

(assert (=> b!1539118 m!1421517))

(assert (=> b!1539118 m!1421517))

(declare-fun m!1421519 () Bool)

(assert (=> b!1539118 m!1421519))

(assert (=> b!1539119 m!1421517))

(assert (=> b!1539119 m!1421517))

(declare-fun m!1421521 () Bool)

(assert (=> b!1539119 m!1421521))

(assert (=> bm!68595 m!1421517))

(declare-fun m!1421523 () Bool)

(assert (=> bm!68595 m!1421523))

(assert (=> b!1539120 m!1421517))

(assert (=> b!1539120 m!1421517))

(assert (=> b!1539120 m!1421519))

(assert (=> b!1539071 d!160291))

(declare-fun b!1539144 () Bool)

(declare-fun e!856152 () SeekEntryResult!13471)

(assert (=> b!1539144 (= e!856152 (Found!13471 index!463))))

(declare-fun lt!664918 () SeekEntryResult!13471)

(declare-fun d!160293 () Bool)

(get-info :version)

(assert (=> d!160293 (and (or ((_ is Undefined!13471) lt!664918) (not ((_ is Found!13471) lt!664918)) (and (bvsge (index!56279 lt!664918) #b00000000000000000000000000000000) (bvslt (index!56279 lt!664918) (size!49873 a!2792)))) (or ((_ is Undefined!13471) lt!664918) ((_ is Found!13471) lt!664918) (not ((_ is MissingVacant!13471) lt!664918)) (not (= (index!56281 lt!664918) vacantIndex!5)) (and (bvsge (index!56281 lt!664918) #b00000000000000000000000000000000) (bvslt (index!56281 lt!664918) (size!49873 a!2792)))) (or ((_ is Undefined!13471) lt!664918) (ite ((_ is Found!13471) lt!664918) (= (select (arr!49322 a!2792) (index!56279 lt!664918)) (select (arr!49322 a!2792) j!64)) (and ((_ is MissingVacant!13471) lt!664918) (= (index!56281 lt!664918) vacantIndex!5) (= (select (arr!49322 a!2792) (index!56281 lt!664918)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!856153 () SeekEntryResult!13471)

(assert (=> d!160293 (= lt!664918 e!856153)))

(declare-fun c!141014 () Bool)

(assert (=> d!160293 (= c!141014 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!664917 () (_ BitVec 64))

(assert (=> d!160293 (= lt!664917 (select (arr!49322 a!2792) index!463))))

(assert (=> d!160293 (validMask!0 mask!2480)))

(assert (=> d!160293 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49322 a!2792) j!64) a!2792 mask!2480) lt!664918)))

(declare-fun b!1539145 () Bool)

(assert (=> b!1539145 (= e!856153 Undefined!13471)))

(declare-fun b!1539146 () Bool)

(declare-fun e!856151 () SeekEntryResult!13471)

(assert (=> b!1539146 (= e!856151 (MissingVacant!13471 vacantIndex!5))))

(declare-fun b!1539147 () Bool)

(assert (=> b!1539147 (= e!856153 e!856152)))

(declare-fun c!141015 () Bool)

(assert (=> b!1539147 (= c!141015 (= lt!664917 (select (arr!49322 a!2792) j!64)))))

(declare-fun b!1539148 () Bool)

(assert (=> b!1539148 (= e!856151 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49322 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1539149 () Bool)

(declare-fun c!141016 () Bool)

(assert (=> b!1539149 (= c!141016 (= lt!664917 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1539149 (= e!856152 e!856151)))

(assert (= (and d!160293 c!141014) b!1539145))

(assert (= (and d!160293 (not c!141014)) b!1539147))

(assert (= (and b!1539147 c!141015) b!1539144))

(assert (= (and b!1539147 (not c!141015)) b!1539149))

(assert (= (and b!1539149 c!141016) b!1539146))

(assert (= (and b!1539149 (not c!141016)) b!1539148))

(declare-fun m!1421527 () Bool)

(assert (=> d!160293 m!1421527))

(declare-fun m!1421529 () Bool)

(assert (=> d!160293 m!1421529))

(assert (=> d!160293 m!1421469))

(assert (=> d!160293 m!1421487))

(assert (=> b!1539148 m!1421479))

(assert (=> b!1539148 m!1421479))

(assert (=> b!1539148 m!1421471))

(declare-fun m!1421531 () Bool)

(assert (=> b!1539148 m!1421531))

(assert (=> b!1539076 d!160293))

(declare-fun d!160301 () Bool)

(assert (=> d!160301 (= (validKeyInArray!0 (select (arr!49322 a!2792) i!951)) (and (not (= (select (arr!49322 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49322 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539077 d!160301))

(declare-fun d!160303 () Bool)

(assert (=> d!160303 (= (validKeyInArray!0 (select (arr!49322 a!2792) j!64)) (and (not (= (select (arr!49322 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49322 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539072 d!160303))

(declare-fun d!160305 () Bool)

(declare-fun lt!664925 () (_ BitVec 32))

(assert (=> d!160305 (and (bvsge lt!664925 #b00000000000000000000000000000000) (bvslt lt!664925 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160305 (= lt!664925 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160305 (validMask!0 mask!2480)))

(assert (=> d!160305 (= (nextIndex!0 index!463 x!510 mask!2480) lt!664925)))

(declare-fun bs!44178 () Bool)

(assert (= bs!44178 d!160305))

(declare-fun m!1421541 () Bool)

(assert (=> bs!44178 m!1421541))

(assert (=> bs!44178 m!1421487))

(assert (=> b!1539078 d!160305))

(declare-fun b!1539193 () Bool)

(declare-fun e!856184 () Bool)

(declare-fun call!68607 () Bool)

(assert (=> b!1539193 (= e!856184 call!68607)))

(declare-fun b!1539194 () Bool)

(declare-fun e!856183 () Bool)

(assert (=> b!1539194 (= e!856183 e!856184)))

(declare-fun lt!664944 () (_ BitVec 64))

(assert (=> b!1539194 (= lt!664944 (select (arr!49322 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51352 0))(
  ( (Unit!51353) )
))
(declare-fun lt!664943 () Unit!51352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102224 (_ BitVec 64) (_ BitVec 32)) Unit!51352)

(assert (=> b!1539194 (= lt!664943 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!664944 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1539194 (arrayContainsKey!0 a!2792 lt!664944 #b00000000000000000000000000000000)))

(declare-fun lt!664945 () Unit!51352)

(assert (=> b!1539194 (= lt!664945 lt!664943)))

(declare-fun res!1056252 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102224 (_ BitVec 32)) SeekEntryResult!13471)

(assert (=> b!1539194 (= res!1056252 (= (seekEntryOrOpen!0 (select (arr!49322 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13471 #b00000000000000000000000000000000)))))

(assert (=> b!1539194 (=> (not res!1056252) (not e!856184))))

(declare-fun b!1539195 () Bool)

(assert (=> b!1539195 (= e!856183 call!68607)))

(declare-fun b!1539196 () Bool)

(declare-fun e!856182 () Bool)

(assert (=> b!1539196 (= e!856182 e!856183)))

(declare-fun c!141032 () Bool)

(assert (=> b!1539196 (= c!141032 (validKeyInArray!0 (select (arr!49322 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68604 () Bool)

(assert (=> bm!68604 (= call!68607 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun d!160309 () Bool)

(declare-fun res!1056251 () Bool)

(assert (=> d!160309 (=> res!1056251 e!856182)))

(assert (=> d!160309 (= res!1056251 (bvsge #b00000000000000000000000000000000 (size!49873 a!2792)))))

(assert (=> d!160309 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856182)))

(assert (= (and d!160309 (not res!1056251)) b!1539196))

(assert (= (and b!1539196 c!141032) b!1539194))

(assert (= (and b!1539196 (not c!141032)) b!1539195))

(assert (= (and b!1539194 res!1056252) b!1539193))

(assert (= (or b!1539193 b!1539195) bm!68604))

(assert (=> b!1539194 m!1421517))

(declare-fun m!1421557 () Bool)

(assert (=> b!1539194 m!1421557))

(declare-fun m!1421559 () Bool)

(assert (=> b!1539194 m!1421559))

(assert (=> b!1539194 m!1421517))

(declare-fun m!1421561 () Bool)

(assert (=> b!1539194 m!1421561))

(assert (=> b!1539196 m!1421517))

(assert (=> b!1539196 m!1421517))

(assert (=> b!1539196 m!1421519))

(declare-fun m!1421563 () Bool)

(assert (=> bm!68604 m!1421563))

(assert (=> b!1539074 d!160309))

(declare-fun d!160319 () Bool)

(assert (=> d!160319 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131232 d!160319))

(declare-fun d!160325 () Bool)

(assert (=> d!160325 (= (array_inv!38267 a!2792) (bvsge (size!49873 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131232 d!160325))

(check-sat (not b!1539194) (not b!1539148) (not b!1539196) (not b!1539120) (not d!160293) (not b!1539119) (not b!1539118) (not bm!68604) (not bm!68595) (not d!160305))
(check-sat)
