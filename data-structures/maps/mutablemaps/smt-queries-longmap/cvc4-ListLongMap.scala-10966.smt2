; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128474 () Bool)

(assert start!128474)

(declare-fun b!1506247 () Bool)

(declare-fun res!1026680 () Bool)

(declare-fun e!841835 () Bool)

(assert (=> b!1506247 (=> (not res!1026680) (not e!841835))))

(declare-datatypes ((array!100432 0))(
  ( (array!100433 (arr!48456 (Array (_ BitVec 32) (_ BitVec 64))) (size!49007 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100432)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100432 (_ BitVec 32)) Bool)

(assert (=> b!1506247 (= res!1026680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506248 () Bool)

(declare-fun res!1026679 () Bool)

(assert (=> b!1506248 (=> (not res!1026679) (not e!841835))))

(declare-datatypes ((List!35119 0))(
  ( (Nil!35116) (Cons!35115 (h!36513 (_ BitVec 64)) (t!49820 List!35119)) )
))
(declare-fun arrayNoDuplicates!0 (array!100432 (_ BitVec 32) List!35119) Bool)

(assert (=> b!1506248 (= res!1026679 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35116))))

(declare-fun b!1506249 () Bool)

(declare-fun lt!654142 () (_ BitVec 32))

(assert (=> b!1506249 (= e!841835 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654142 #b00000000000000000000000000000000) (bvsge lt!654142 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506249 (= lt!654142 (toIndex!0 (select (arr!48456 a!2804) j!70) mask!2512))))

(declare-fun b!1506250 () Bool)

(declare-fun res!1026676 () Bool)

(assert (=> b!1506250 (=> (not res!1026676) (not e!841835))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506250 (= res!1026676 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49007 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49007 a!2804))))))

(declare-fun b!1506251 () Bool)

(declare-fun res!1026675 () Bool)

(assert (=> b!1506251 (=> (not res!1026675) (not e!841835))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506251 (= res!1026675 (and (= (size!49007 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49007 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49007 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506252 () Bool)

(declare-fun res!1026678 () Bool)

(assert (=> b!1506252 (=> (not res!1026678) (not e!841835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506252 (= res!1026678 (validKeyInArray!0 (select (arr!48456 a!2804) i!961)))))

(declare-fun b!1506253 () Bool)

(declare-fun res!1026681 () Bool)

(assert (=> b!1506253 (=> (not res!1026681) (not e!841835))))

(assert (=> b!1506253 (= res!1026681 (validKeyInArray!0 (select (arr!48456 a!2804) j!70)))))

(declare-fun res!1026677 () Bool)

(assert (=> start!128474 (=> (not res!1026677) (not e!841835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128474 (= res!1026677 (validMask!0 mask!2512))))

(assert (=> start!128474 e!841835))

(assert (=> start!128474 true))

(declare-fun array_inv!37401 (array!100432) Bool)

(assert (=> start!128474 (array_inv!37401 a!2804)))

(assert (= (and start!128474 res!1026677) b!1506251))

(assert (= (and b!1506251 res!1026675) b!1506252))

(assert (= (and b!1506252 res!1026678) b!1506253))

(assert (= (and b!1506253 res!1026681) b!1506247))

(assert (= (and b!1506247 res!1026680) b!1506248))

(assert (= (and b!1506248 res!1026679) b!1506250))

(assert (= (and b!1506250 res!1026676) b!1506249))

(declare-fun m!1389291 () Bool)

(assert (=> b!1506247 m!1389291))

(declare-fun m!1389293 () Bool)

(assert (=> b!1506249 m!1389293))

(assert (=> b!1506249 m!1389293))

(declare-fun m!1389295 () Bool)

(assert (=> b!1506249 m!1389295))

(declare-fun m!1389297 () Bool)

(assert (=> b!1506248 m!1389297))

(declare-fun m!1389299 () Bool)

(assert (=> b!1506252 m!1389299))

(assert (=> b!1506252 m!1389299))

(declare-fun m!1389301 () Bool)

(assert (=> b!1506252 m!1389301))

(declare-fun m!1389303 () Bool)

(assert (=> start!128474 m!1389303))

(declare-fun m!1389305 () Bool)

(assert (=> start!128474 m!1389305))

(assert (=> b!1506253 m!1389293))

(assert (=> b!1506253 m!1389293))

(declare-fun m!1389307 () Bool)

(assert (=> b!1506253 m!1389307))

(push 1)

(assert (not b!1506252))

(assert (not b!1506248))

(assert (not b!1506253))

(assert (not b!1506249))

(assert (not b!1506247))

(assert (not start!128474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1506286 () Bool)

(declare-fun e!841862 () Bool)

(declare-fun call!68229 () Bool)

(assert (=> b!1506286 (= e!841862 call!68229)))

(declare-fun b!1506287 () Bool)

(declare-fun e!841861 () Bool)

(declare-fun e!841860 () Bool)

(assert (=> b!1506287 (= e!841861 e!841860)))

(declare-fun c!139331 () Bool)

(assert (=> b!1506287 (= c!139331 (validKeyInArray!0 (select (arr!48456 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1506288 () Bool)

(assert (=> b!1506288 (= e!841860 call!68229)))

(declare-fun bm!68226 () Bool)

(assert (=> bm!68226 (= call!68229 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!158163 () Bool)

(declare-fun res!1026700 () Bool)

(assert (=> d!158163 (=> res!1026700 e!841861)))

(assert (=> d!158163 (= res!1026700 (bvsge #b00000000000000000000000000000000 (size!49007 a!2804)))))

(assert (=> d!158163 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841861)))

(declare-fun b!1506289 () Bool)

(assert (=> b!1506289 (= e!841860 e!841862)))

(declare-fun lt!654173 () (_ BitVec 64))

(assert (=> b!1506289 (= lt!654173 (select (arr!48456 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50270 0))(
  ( (Unit!50271) )
))
(declare-fun lt!654175 () Unit!50270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100432 (_ BitVec 64) (_ BitVec 32)) Unit!50270)

(assert (=> b!1506289 (= lt!654175 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654173 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1506289 (arrayContainsKey!0 a!2804 lt!654173 #b00000000000000000000000000000000)))

(declare-fun lt!654174 () Unit!50270)

(assert (=> b!1506289 (= lt!654174 lt!654175)))

(declare-fun res!1026699 () Bool)

(declare-datatypes ((SeekEntryResult!12654 0))(
  ( (MissingZero!12654 (index!53010 (_ BitVec 32))) (Found!12654 (index!53011 (_ BitVec 32))) (Intermediate!12654 (undefined!13466 Bool) (index!53012 (_ BitVec 32)) (x!134761 (_ BitVec 32))) (Undefined!12654) (MissingVacant!12654 (index!53013 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100432 (_ BitVec 32)) SeekEntryResult!12654)

(assert (=> b!1506289 (= res!1026699 (= (seekEntryOrOpen!0 (select (arr!48456 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12654 #b00000000000000000000000000000000)))))

(assert (=> b!1506289 (=> (not res!1026699) (not e!841862))))

(assert (= (and d!158163 (not res!1026700)) b!1506287))

(assert (= (and b!1506287 c!139331) b!1506289))

(assert (= (and b!1506287 (not c!139331)) b!1506288))

(assert (= (and b!1506289 res!1026699) b!1506286))

(assert (= (or b!1506286 b!1506288) bm!68226))

(declare-fun m!1389333 () Bool)

(assert (=> b!1506287 m!1389333))

(assert (=> b!1506287 m!1389333))

(declare-fun m!1389335 () Bool)

(assert (=> b!1506287 m!1389335))

(declare-fun m!1389337 () Bool)

(assert (=> bm!68226 m!1389337))

(assert (=> b!1506289 m!1389333))

(declare-fun m!1389339 () Bool)

(assert (=> b!1506289 m!1389339))

(declare-fun m!1389341 () Bool)

(assert (=> b!1506289 m!1389341))

(assert (=> b!1506289 m!1389333))

(declare-fun m!1389343 () Bool)

(assert (=> b!1506289 m!1389343))

(assert (=> b!1506247 d!158163))

(declare-fun d!158171 () Bool)

(assert (=> d!158171 (= (validKeyInArray!0 (select (arr!48456 a!2804) i!961)) (and (not (= (select (arr!48456 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48456 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506252 d!158171))

(declare-fun d!158173 () Bool)

(assert (=> d!158173 (= (validKeyInArray!0 (select (arr!48456 a!2804) j!70)) (and (not (= (select (arr!48456 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48456 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506253 d!158173))

(declare-fun bm!68232 () Bool)

(declare-fun call!68235 () Bool)

(declare-fun c!139337 () Bool)

(assert (=> bm!68232 (= call!68235 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139337 (Cons!35115 (select (arr!48456 a!2804) #b00000000000000000000000000000000) Nil!35116) Nil!35116)))))

(declare-fun b!1506315 () Bool)

(declare-fun e!841883 () Bool)

(declare-fun e!841886 () Bool)

(assert (=> b!1506315 (= e!841883 e!841886)))

(declare-fun res!1026719 () Bool)

(assert (=> b!1506315 (=> (not res!1026719) (not e!841886))))

(declare-fun e!841884 () Bool)

(assert (=> b!1506315 (= res!1026719 (not e!841884))))

(declare-fun res!1026717 () Bool)

(assert (=> b!1506315 (=> (not res!1026717) (not e!841884))))

(assert (=> b!1506315 (= res!1026717 (validKeyInArray!0 (select (arr!48456 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1506316 () Bool)

(declare-fun e!841885 () Bool)

(assert (=> b!1506316 (= e!841886 e!841885)))

(assert (=> b!1506316 (= c!139337 (validKeyInArray!0 (select (arr!48456 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158175 () Bool)

(declare-fun res!1026718 () Bool)

(assert (=> d!158175 (=> res!1026718 e!841883)))

(assert (=> d!158175 (= res!1026718 (bvsge #b00000000000000000000000000000000 (size!49007 a!2804)))))

(assert (=> d!158175 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35116) e!841883)))

(declare-fun b!1506317 () Bool)

(declare-fun contains!9975 (List!35119 (_ BitVec 64)) Bool)

(assert (=> b!1506317 (= e!841884 (contains!9975 Nil!35116 (select (arr!48456 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1506318 () Bool)

(assert (=> b!1506318 (= e!841885 call!68235)))

(declare-fun b!1506319 () Bool)

(assert (=> b!1506319 (= e!841885 call!68235)))

(assert (= (and d!158175 (not res!1026718)) b!1506315))

(assert (= (and b!1506315 res!1026717) b!1506317))

(assert (= (and b!1506315 res!1026719) b!1506316))

(assert (= (and b!1506316 c!139337) b!1506319))

(assert (= (and b!1506316 (not c!139337)) b!1506318))

(assert (= (or b!1506319 b!1506318) bm!68232))

(assert (=> bm!68232 m!1389333))

(declare-fun m!1389349 () Bool)

(assert (=> bm!68232 m!1389349))

(assert (=> b!1506315 m!1389333))

(assert (=> b!1506315 m!1389333))

(assert (=> b!1506315 m!1389335))

(assert (=> b!1506316 m!1389333))

(assert (=> b!1506316 m!1389333))

(assert (=> b!1506316 m!1389335))

(assert (=> b!1506317 m!1389333))

(assert (=> b!1506317 m!1389333))

(declare-fun m!1389351 () Bool)

(assert (=> b!1506317 m!1389351))

(assert (=> b!1506248 d!158175))

(declare-fun d!158187 () Bool)

(declare-fun lt!654187 () (_ BitVec 32))

(declare-fun lt!654186 () (_ BitVec 32))

(assert (=> d!158187 (= lt!654187 (bvmul (bvxor lt!654186 (bvlshr lt!654186 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158187 (= lt!654186 ((_ extract 31 0) (bvand (bvxor (select (arr!48456 a!2804) j!70) (bvlshr (select (arr!48456 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158187 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1026720 (let ((h!36516 ((_ extract 31 0) (bvand (bvxor (select (arr!48456 a!2804) j!70) (bvlshr (select (arr!48456 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134759 (bvmul (bvxor h!36516 (bvlshr h!36516 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134759 (bvlshr x!134759 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1026720 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1026720 #b00000000000000000000000000000000))))))

