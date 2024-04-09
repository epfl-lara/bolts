; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92830 () Bool)

(assert start!92830)

(declare-fun b!1054020 () Bool)

(declare-fun res!703114 () Bool)

(declare-fun e!598776 () Bool)

(assert (=> b!1054020 (=> (not res!703114) (not e!598776))))

(declare-datatypes ((array!66471 0))(
  ( (array!66472 (arr!31965 (Array (_ BitVec 32) (_ BitVec 64))) (size!32502 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66471)

(declare-datatypes ((List!22408 0))(
  ( (Nil!22405) (Cons!22404 (h!23613 (_ BitVec 64)) (t!31722 List!22408)) )
))
(declare-fun arrayNoDuplicates!0 (array!66471 (_ BitVec 32) List!22408) Bool)

(assert (=> b!1054020 (= res!703114 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22405))))

(declare-fun b!1054021 () Bool)

(declare-fun lt!465282 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun e!598781 () Bool)

(declare-fun arrayContainsKey!0 (array!66471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054021 (= e!598781 (arrayContainsKey!0 a!3488 k!2747 lt!465282))))

(declare-fun b!1054022 () Bool)

(declare-fun e!598780 () Bool)

(assert (=> b!1054022 (= e!598780 e!598781)))

(declare-fun res!703117 () Bool)

(assert (=> b!1054022 (=> res!703117 e!598781)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054022 (= res!703117 (bvsle lt!465282 i!1381))))

(declare-fun b!1054023 () Bool)

(declare-fun e!598779 () Bool)

(assert (=> b!1054023 (= e!598776 e!598779)))

(declare-fun res!703111 () Bool)

(assert (=> b!1054023 (=> (not res!703111) (not e!598779))))

(declare-fun lt!465281 () array!66471)

(assert (=> b!1054023 (= res!703111 (arrayContainsKey!0 lt!465281 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054023 (= lt!465281 (array!66472 (store (arr!31965 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32502 a!3488)))))

(declare-fun b!1054024 () Bool)

(declare-fun e!598778 () Bool)

(declare-fun e!598775 () Bool)

(assert (=> b!1054024 (= e!598778 (not e!598775))))

(declare-fun res!703113 () Bool)

(assert (=> b!1054024 (=> res!703113 e!598775)))

(assert (=> b!1054024 (= res!703113 (bvsle lt!465282 i!1381))))

(assert (=> b!1054024 e!598780))

(declare-fun res!703115 () Bool)

(assert (=> b!1054024 (=> (not res!703115) (not e!598780))))

(assert (=> b!1054024 (= res!703115 (= (select (store (arr!31965 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465282) k!2747))))

(declare-fun b!1054025 () Bool)

(assert (=> b!1054025 (= e!598775 (or (bvslt lt!465282 #b00000000000000000000000000000000) (bvslt lt!465282 (size!32502 a!3488))))))

(assert (=> b!1054025 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22405)))

(declare-datatypes ((Unit!34497 0))(
  ( (Unit!34498) )
))
(declare-fun lt!465283 () Unit!34497)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66471 (_ BitVec 32) (_ BitVec 32)) Unit!34497)

(assert (=> b!1054025 (= lt!465283 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054026 () Bool)

(declare-fun res!703112 () Bool)

(assert (=> b!1054026 (=> (not res!703112) (not e!598776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054026 (= res!703112 (validKeyInArray!0 k!2747))))

(declare-fun res!703119 () Bool)

(assert (=> start!92830 (=> (not res!703119) (not e!598776))))

(assert (=> start!92830 (= res!703119 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32502 a!3488)) (bvslt (size!32502 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92830 e!598776))

(assert (=> start!92830 true))

(declare-fun array_inv!24587 (array!66471) Bool)

(assert (=> start!92830 (array_inv!24587 a!3488)))

(declare-fun b!1054027 () Bool)

(assert (=> b!1054027 (= e!598779 e!598778)))

(declare-fun res!703118 () Bool)

(assert (=> b!1054027 (=> (not res!703118) (not e!598778))))

(assert (=> b!1054027 (= res!703118 (not (= lt!465282 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66471 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054027 (= lt!465282 (arrayScanForKey!0 lt!465281 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054028 () Bool)

(declare-fun res!703116 () Bool)

(assert (=> b!1054028 (=> (not res!703116) (not e!598776))))

(assert (=> b!1054028 (= res!703116 (= (select (arr!31965 a!3488) i!1381) k!2747))))

(assert (= (and start!92830 res!703119) b!1054020))

(assert (= (and b!1054020 res!703114) b!1054026))

(assert (= (and b!1054026 res!703112) b!1054028))

(assert (= (and b!1054028 res!703116) b!1054023))

(assert (= (and b!1054023 res!703111) b!1054027))

(assert (= (and b!1054027 res!703118) b!1054024))

(assert (= (and b!1054024 res!703115) b!1054022))

(assert (= (and b!1054022 (not res!703117)) b!1054021))

(assert (= (and b!1054024 (not res!703113)) b!1054025))

(declare-fun m!974297 () Bool)

(assert (=> b!1054023 m!974297))

(declare-fun m!974299 () Bool)

(assert (=> b!1054023 m!974299))

(declare-fun m!974301 () Bool)

(assert (=> b!1054027 m!974301))

(declare-fun m!974303 () Bool)

(assert (=> b!1054021 m!974303))

(assert (=> b!1054024 m!974299))

(declare-fun m!974305 () Bool)

(assert (=> b!1054024 m!974305))

(declare-fun m!974307 () Bool)

(assert (=> b!1054020 m!974307))

(declare-fun m!974309 () Bool)

(assert (=> b!1054028 m!974309))

(declare-fun m!974311 () Bool)

(assert (=> b!1054026 m!974311))

(declare-fun m!974313 () Bool)

(assert (=> b!1054025 m!974313))

(declare-fun m!974315 () Bool)

(assert (=> b!1054025 m!974315))

(declare-fun m!974317 () Bool)

(assert (=> start!92830 m!974317))

(push 1)

(assert (not b!1054027))

(assert (not start!92830))

(assert (not b!1054020))

(assert (not b!1054026))

(assert (not b!1054023))

(assert (not b!1054025))

(assert (not b!1054021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127921 () Bool)

(declare-fun res!703153 () Bool)

(declare-fun e!598825 () Bool)

(assert (=> d!127921 (=> res!703153 e!598825)))

(assert (=> d!127921 (= res!703153 (= (select (arr!31965 lt!465281) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127921 (= (arrayContainsKey!0 lt!465281 k!2747 #b00000000000000000000000000000000) e!598825)))

(declare-fun b!1054082 () Bool)

(declare-fun e!598826 () Bool)

(assert (=> b!1054082 (= e!598825 e!598826)))

(declare-fun res!703154 () Bool)

(assert (=> b!1054082 (=> (not res!703154) (not e!598826))))

(assert (=> b!1054082 (= res!703154 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32502 lt!465281)))))

(declare-fun b!1054083 () Bool)

(assert (=> b!1054083 (= e!598826 (arrayContainsKey!0 lt!465281 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127921 (not res!703153)) b!1054082))

(assert (= (and b!1054082 res!703154) b!1054083))

(declare-fun m!974351 () Bool)

(assert (=> d!127921 m!974351))

(declare-fun m!974355 () Bool)

(assert (=> b!1054083 m!974355))

(assert (=> b!1054023 d!127921))

(declare-fun d!127927 () Bool)

(declare-fun lt!465295 () (_ BitVec 32))

(assert (=> d!127927 (and (or (bvslt lt!465295 #b00000000000000000000000000000000) (bvsge lt!465295 (size!32502 lt!465281)) (and (bvsge lt!465295 #b00000000000000000000000000000000) (bvslt lt!465295 (size!32502 lt!465281)))) (bvsge lt!465295 #b00000000000000000000000000000000) (bvslt lt!465295 (size!32502 lt!465281)) (= (select (arr!31965 lt!465281) lt!465295) k!2747))))

(declare-fun e!598836 () (_ BitVec 32))

(assert (=> d!127927 (= lt!465295 e!598836)))

(declare-fun c!106933 () Bool)

(assert (=> d!127927 (= c!106933 (= (select (arr!31965 lt!465281) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127927 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32502 lt!465281)) (bvslt (size!32502 lt!465281) #b01111111111111111111111111111111))))

(assert (=> d!127927 (= (arrayScanForKey!0 lt!465281 k!2747 #b00000000000000000000000000000000) lt!465295)))

(declare-fun b!1054099 () Bool)

(assert (=> b!1054099 (= e!598836 #b00000000000000000000000000000000)))

(declare-fun b!1054100 () Bool)

(assert (=> b!1054100 (= e!598836 (arrayScanForKey!0 lt!465281 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127927 c!106933) b!1054099))

(assert (= (and d!127927 (not c!106933)) b!1054100))

(declare-fun m!974371 () Bool)

(assert (=> d!127927 m!974371))

(assert (=> d!127927 m!974351))

(declare-fun m!974373 () Bool)

(assert (=> b!1054100 m!974373))

(assert (=> b!1054027 d!127927))

(declare-fun d!127935 () Bool)

(declare-fun res!703158 () Bool)

(declare-fun e!598837 () Bool)

(assert (=> d!127935 (=> res!703158 e!598837)))

(assert (=> d!127935 (= res!703158 (= (select (arr!31965 a!3488) lt!465282) k!2747))))

(assert (=> d!127935 (= (arrayContainsKey!0 a!3488 k!2747 lt!465282) e!598837)))

(declare-fun b!1054101 () Bool)

(declare-fun e!598838 () Bool)

(assert (=> b!1054101 (= e!598837 e!598838)))

(declare-fun res!703159 () Bool)

(assert (=> b!1054101 (=> (not res!703159) (not e!598838))))

(assert (=> b!1054101 (= res!703159 (bvslt (bvadd lt!465282 #b00000000000000000000000000000001) (size!32502 a!3488)))))

(declare-fun b!1054102 () Bool)

(assert (=> b!1054102 (= e!598838 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!465282 #b00000000000000000000000000000001)))))

(assert (= (and d!127935 (not res!703158)) b!1054101))

(assert (= (and b!1054101 res!703159) b!1054102))

(declare-fun m!974375 () Bool)

(assert (=> d!127935 m!974375))

(declare-fun m!974377 () Bool)

(assert (=> b!1054102 m!974377))

(assert (=> b!1054021 d!127935))

(declare-fun d!127937 () Bool)

(assert (=> d!127937 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1054026 d!127937))

(declare-fun bm!44767 () Bool)

(declare-fun call!44770 () Bool)

(declare-fun c!106936 () Bool)

(assert (=> bm!44767 (= call!44770 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106936 (Cons!22404 (select (arr!31965 a!3488) #b00000000000000000000000000000000) Nil!22405) Nil!22405)))))

(declare-fun b!1054121 () Bool)

(declare-fun e!598856 () Bool)

(declare-fun e!598855 () Bool)

(assert (=> b!1054121 (= e!598856 e!598855)))

(declare-fun res!703176 () Bool)

(assert (=> b!1054121 (=> (not res!703176) (not e!598855))))

(declare-fun e!598858 () Bool)

(assert (=> b!1054121 (= res!703176 (not e!598858))))

(declare-fun res!703175 () Bool)

(assert (=> b!1054121 (=> (not res!703175) (not e!598858))))

(assert (=> b!1054121 (= res!703175 (validKeyInArray!0 (select (arr!31965 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!127941 () Bool)

(declare-fun res!703174 () Bool)

(assert (=> d!127941 (=> res!703174 e!598856)))

(assert (=> d!127941 (= res!703174 (bvsge #b00000000000000000000000000000000 (size!32502 a!3488)))))

(assert (=> d!127941 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22405) e!598856)))

(declare-fun b!1054122 () Bool)

(declare-fun e!598857 () Bool)

(assert (=> b!1054122 (= e!598857 call!44770)))

(declare-fun b!1054123 () Bool)

(assert (=> b!1054123 (= e!598857 call!44770)))

(declare-fun b!1054124 () Bool)

(declare-fun contains!6191 (List!22408 (_ BitVec 64)) Bool)

(assert (=> b!1054124 (= e!598858 (contains!6191 Nil!22405 (select (arr!31965 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054125 () Bool)

(assert (=> b!1054125 (= e!598855 e!598857)))

(assert (=> b!1054125 (= c!106936 (validKeyInArray!0 (select (arr!31965 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!127941 (not res!703174)) b!1054121))

(assert (= (and b!1054121 res!703175) b!1054124))

(assert (= (and b!1054121 res!703176) b!1054125))

(assert (= (and b!1054125 c!106936) b!1054122))

(assert (= (and b!1054125 (not c!106936)) b!1054123))

(assert (= (or b!1054122 b!1054123) bm!44767))

(declare-fun m!974387 () Bool)

(assert (=> bm!44767 m!974387))

(declare-fun m!974389 () Bool)

(assert (=> bm!44767 m!974389))

(assert (=> b!1054121 m!974387))

(assert (=> b!1054121 m!974387))

(declare-fun m!974391 () Bool)

(assert (=> b!1054121 m!974391))

(assert (=> b!1054124 m!974387))

(assert (=> b!1054124 m!974387))

(declare-fun m!974393 () Bool)

(assert (=> b!1054124 m!974393))

(assert (=> b!1054125 m!974387))

(assert (=> b!1054125 m!974387))

(assert (=> b!1054125 m!974391))

(assert (=> b!1054020 d!127941))

(declare-fun call!44771 () Bool)

(declare-fun c!106937 () Bool)

(declare-fun bm!44768 () Bool)

(assert (=> bm!44768 (= call!44771 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106937 (Cons!22404 (select (arr!31965 a!3488) i!1381) Nil!22405) Nil!22405)))))

(declare-fun b!1054126 () Bool)

(declare-fun e!598860 () Bool)

(declare-fun e!598859 () Bool)

(assert (=> b!1054126 (= e!598860 e!598859)))

(declare-fun res!703179 () Bool)

(assert (=> b!1054126 (=> (not res!703179) (not e!598859))))

(declare-fun e!598862 () Bool)

(assert (=> b!1054126 (= res!703179 (not e!598862))))

(declare-fun res!703178 () Bool)

(assert (=> b!1054126 (=> (not res!703178) (not e!598862))))

(assert (=> b!1054126 (= res!703178 (validKeyInArray!0 (select (arr!31965 a!3488) i!1381)))))

(declare-fun d!127949 () Bool)

(declare-fun res!703177 () Bool)

(assert (=> d!127949 (=> res!703177 e!598860)))

(assert (=> d!127949 (= res!703177 (bvsge i!1381 (size!32502 a!3488)))))

(assert (=> d!127949 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22405) e!598860)))

(declare-fun b!1054127 () Bool)

(declare-fun e!598861 () Bool)

(assert (=> b!1054127 (= e!598861 call!44771)))

