; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128472 () Bool)

(assert start!128472)

(declare-fun b!1506226 () Bool)

(declare-fun res!1026658 () Bool)

(declare-fun e!841828 () Bool)

(assert (=> b!1506226 (=> (not res!1026658) (not e!841828))))

(declare-datatypes ((array!100430 0))(
  ( (array!100431 (arr!48455 (Array (_ BitVec 32) (_ BitVec 64))) (size!49006 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100430)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506226 (= res!1026658 (validKeyInArray!0 (select (arr!48455 a!2804) i!961)))))

(declare-fun res!1026657 () Bool)

(assert (=> start!128472 (=> (not res!1026657) (not e!841828))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128472 (= res!1026657 (validMask!0 mask!2512))))

(assert (=> start!128472 e!841828))

(assert (=> start!128472 true))

(declare-fun array_inv!37400 (array!100430) Bool)

(assert (=> start!128472 (array_inv!37400 a!2804)))

(declare-fun b!1506227 () Bool)

(declare-fun res!1026655 () Bool)

(assert (=> b!1506227 (=> (not res!1026655) (not e!841828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100430 (_ BitVec 32)) Bool)

(assert (=> b!1506227 (= res!1026655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506228 () Bool)

(declare-fun res!1026654 () Bool)

(assert (=> b!1506228 (=> (not res!1026654) (not e!841828))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506228 (= res!1026654 (validKeyInArray!0 (select (arr!48455 a!2804) j!70)))))

(declare-fun b!1506229 () Bool)

(declare-fun res!1026659 () Bool)

(assert (=> b!1506229 (=> (not res!1026659) (not e!841828))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506229 (= res!1026659 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49006 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49006 a!2804))))))

(declare-fun b!1506230 () Bool)

(declare-fun res!1026660 () Bool)

(assert (=> b!1506230 (=> (not res!1026660) (not e!841828))))

(declare-datatypes ((List!35118 0))(
  ( (Nil!35115) (Cons!35114 (h!36512 (_ BitVec 64)) (t!49819 List!35118)) )
))
(declare-fun arrayNoDuplicates!0 (array!100430 (_ BitVec 32) List!35118) Bool)

(assert (=> b!1506230 (= res!1026660 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35115))))

(declare-fun b!1506231 () Bool)

(declare-fun res!1026656 () Bool)

(assert (=> b!1506231 (=> (not res!1026656) (not e!841828))))

(assert (=> b!1506231 (= res!1026656 (and (= (size!49006 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49006 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49006 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506232 () Bool)

(declare-fun lt!654139 () (_ BitVec 32))

(assert (=> b!1506232 (= e!841828 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654139 #b00000000000000000000000000000000) (bvsge lt!654139 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506232 (= lt!654139 (toIndex!0 (select (arr!48455 a!2804) j!70) mask!2512))))

(assert (= (and start!128472 res!1026657) b!1506231))

(assert (= (and b!1506231 res!1026656) b!1506226))

(assert (= (and b!1506226 res!1026658) b!1506228))

(assert (= (and b!1506228 res!1026654) b!1506227))

(assert (= (and b!1506227 res!1026655) b!1506230))

(assert (= (and b!1506230 res!1026660) b!1506229))

(assert (= (and b!1506229 res!1026659) b!1506232))

(declare-fun m!1389273 () Bool)

(assert (=> b!1506230 m!1389273))

(declare-fun m!1389275 () Bool)

(assert (=> b!1506228 m!1389275))

(assert (=> b!1506228 m!1389275))

(declare-fun m!1389277 () Bool)

(assert (=> b!1506228 m!1389277))

(declare-fun m!1389279 () Bool)

(assert (=> start!128472 m!1389279))

(declare-fun m!1389281 () Bool)

(assert (=> start!128472 m!1389281))

(declare-fun m!1389283 () Bool)

(assert (=> b!1506226 m!1389283))

(assert (=> b!1506226 m!1389283))

(declare-fun m!1389285 () Bool)

(assert (=> b!1506226 m!1389285))

(declare-fun m!1389287 () Bool)

(assert (=> b!1506227 m!1389287))

(assert (=> b!1506232 m!1389275))

(assert (=> b!1506232 m!1389275))

(declare-fun m!1389289 () Bool)

(assert (=> b!1506232 m!1389289))

(check-sat (not b!1506226) (not b!1506230) (not start!128472) (not b!1506228) (not b!1506232) (not b!1506227))
(check-sat)
(get-model)

(declare-fun b!1506262 () Bool)

(declare-fun e!841842 () Bool)

(declare-fun e!841843 () Bool)

(assert (=> b!1506262 (= e!841842 e!841843)))

(declare-fun lt!654151 () (_ BitVec 64))

(assert (=> b!1506262 (= lt!654151 (select (arr!48455 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50266 0))(
  ( (Unit!50267) )
))
(declare-fun lt!654150 () Unit!50266)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100430 (_ BitVec 64) (_ BitVec 32)) Unit!50266)

(assert (=> b!1506262 (= lt!654150 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654151 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1506262 (arrayContainsKey!0 a!2804 lt!654151 #b00000000000000000000000000000000)))

(declare-fun lt!654149 () Unit!50266)

(assert (=> b!1506262 (= lt!654149 lt!654150)))

(declare-fun res!1026687 () Bool)

(declare-datatypes ((SeekEntryResult!12652 0))(
  ( (MissingZero!12652 (index!53002 (_ BitVec 32))) (Found!12652 (index!53003 (_ BitVec 32))) (Intermediate!12652 (undefined!13464 Bool) (index!53004 (_ BitVec 32)) (x!134758 (_ BitVec 32))) (Undefined!12652) (MissingVacant!12652 (index!53005 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100430 (_ BitVec 32)) SeekEntryResult!12652)

(assert (=> b!1506262 (= res!1026687 (= (seekEntryOrOpen!0 (select (arr!48455 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12652 #b00000000000000000000000000000000)))))

(assert (=> b!1506262 (=> (not res!1026687) (not e!841843))))

(declare-fun b!1506263 () Bool)

(declare-fun call!68223 () Bool)

(assert (=> b!1506263 (= e!841842 call!68223)))

(declare-fun d!158153 () Bool)

(declare-fun res!1026686 () Bool)

(declare-fun e!841844 () Bool)

(assert (=> d!158153 (=> res!1026686 e!841844)))

(assert (=> d!158153 (= res!1026686 (bvsge #b00000000000000000000000000000000 (size!49006 a!2804)))))

(assert (=> d!158153 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841844)))

(declare-fun b!1506264 () Bool)

(assert (=> b!1506264 (= e!841843 call!68223)))

(declare-fun b!1506265 () Bool)

(assert (=> b!1506265 (= e!841844 e!841842)))

(declare-fun c!139325 () Bool)

(assert (=> b!1506265 (= c!139325 (validKeyInArray!0 (select (arr!48455 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68220 () Bool)

(assert (=> bm!68220 (= call!68223 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158153 (not res!1026686)) b!1506265))

(assert (= (and b!1506265 c!139325) b!1506262))

(assert (= (and b!1506265 (not c!139325)) b!1506263))

(assert (= (and b!1506262 res!1026687) b!1506264))

(assert (= (or b!1506264 b!1506263) bm!68220))

(declare-fun m!1389309 () Bool)

(assert (=> b!1506262 m!1389309))

(declare-fun m!1389311 () Bool)

(assert (=> b!1506262 m!1389311))

(declare-fun m!1389313 () Bool)

(assert (=> b!1506262 m!1389313))

(assert (=> b!1506262 m!1389309))

(declare-fun m!1389315 () Bool)

(assert (=> b!1506262 m!1389315))

(assert (=> b!1506265 m!1389309))

(assert (=> b!1506265 m!1389309))

(declare-fun m!1389317 () Bool)

(assert (=> b!1506265 m!1389317))

(declare-fun m!1389319 () Bool)

(assert (=> bm!68220 m!1389319))

(assert (=> b!1506227 d!158153))

(declare-fun d!158155 () Bool)

(declare-fun lt!654157 () (_ BitVec 32))

(declare-fun lt!654156 () (_ BitVec 32))

(assert (=> d!158155 (= lt!654157 (bvmul (bvxor lt!654156 (bvlshr lt!654156 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158155 (= lt!654156 ((_ extract 31 0) (bvand (bvxor (select (arr!48455 a!2804) j!70) (bvlshr (select (arr!48455 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158155 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1026688 (let ((h!36514 ((_ extract 31 0) (bvand (bvxor (select (arr!48455 a!2804) j!70) (bvlshr (select (arr!48455 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134756 (bvmul (bvxor h!36514 (bvlshr h!36514 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134756 (bvlshr x!134756 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1026688 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1026688 #b00000000000000000000000000000000))))))

(assert (=> d!158155 (= (toIndex!0 (select (arr!48455 a!2804) j!70) mask!2512) (bvand (bvxor lt!654157 (bvlshr lt!654157 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1506232 d!158155))

(declare-fun d!158159 () Bool)

(assert (=> d!158159 (= (validKeyInArray!0 (select (arr!48455 a!2804) j!70)) (and (not (= (select (arr!48455 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48455 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506228 d!158159))

(declare-fun d!158161 () Bool)

(assert (=> d!158161 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128472 d!158161))

(declare-fun d!158167 () Bool)

(assert (=> d!158167 (= (array_inv!37400 a!2804) (bvsge (size!49006 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128472 d!158167))

(declare-fun b!1506306 () Bool)

(declare-fun e!841878 () Bool)

(declare-fun contains!9973 (List!35118 (_ BitVec 64)) Bool)

(assert (=> b!1506306 (= e!841878 (contains!9973 Nil!35115 (select (arr!48455 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1506307 () Bool)

(declare-fun e!841880 () Bool)

(declare-fun call!68232 () Bool)

(assert (=> b!1506307 (= e!841880 call!68232)))

(declare-fun b!1506308 () Bool)

(assert (=> b!1506308 (= e!841880 call!68232)))

(declare-fun bm!68229 () Bool)

(declare-fun c!139334 () Bool)

(assert (=> bm!68229 (= call!68232 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139334 (Cons!35114 (select (arr!48455 a!2804) #b00000000000000000000000000000000) Nil!35115) Nil!35115)))))

(declare-fun b!1506309 () Bool)

(declare-fun e!841879 () Bool)

(declare-fun e!841877 () Bool)

(assert (=> b!1506309 (= e!841879 e!841877)))

(declare-fun res!1026715 () Bool)

(assert (=> b!1506309 (=> (not res!1026715) (not e!841877))))

(assert (=> b!1506309 (= res!1026715 (not e!841878))))

(declare-fun res!1026714 () Bool)

(assert (=> b!1506309 (=> (not res!1026714) (not e!841878))))

(assert (=> b!1506309 (= res!1026714 (validKeyInArray!0 (select (arr!48455 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158169 () Bool)

(declare-fun res!1026713 () Bool)

(assert (=> d!158169 (=> res!1026713 e!841879)))

(assert (=> d!158169 (= res!1026713 (bvsge #b00000000000000000000000000000000 (size!49006 a!2804)))))

(assert (=> d!158169 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35115) e!841879)))

(declare-fun b!1506310 () Bool)

(assert (=> b!1506310 (= e!841877 e!841880)))

(assert (=> b!1506310 (= c!139334 (validKeyInArray!0 (select (arr!48455 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158169 (not res!1026713)) b!1506309))

(assert (= (and b!1506309 res!1026714) b!1506306))

(assert (= (and b!1506309 res!1026715) b!1506310))

(assert (= (and b!1506310 c!139334) b!1506307))

(assert (= (and b!1506310 (not c!139334)) b!1506308))

(assert (= (or b!1506307 b!1506308) bm!68229))

(assert (=> b!1506306 m!1389309))

(assert (=> b!1506306 m!1389309))

(declare-fun m!1389345 () Bool)

(assert (=> b!1506306 m!1389345))

(assert (=> bm!68229 m!1389309))

(declare-fun m!1389347 () Bool)

(assert (=> bm!68229 m!1389347))

(assert (=> b!1506309 m!1389309))

(assert (=> b!1506309 m!1389309))

(assert (=> b!1506309 m!1389317))

(assert (=> b!1506310 m!1389309))

(assert (=> b!1506310 m!1389309))

(assert (=> b!1506310 m!1389317))

(assert (=> b!1506230 d!158169))

(declare-fun d!158181 () Bool)

(assert (=> d!158181 (= (validKeyInArray!0 (select (arr!48455 a!2804) i!961)) (and (not (= (select (arr!48455 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48455 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506226 d!158181))

(check-sat (not b!1506262) (not b!1506306) (not b!1506310) (not b!1506265) (not b!1506309) (not bm!68229) (not bm!68220))
(check-sat)
