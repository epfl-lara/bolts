; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92964 () Bool)

(assert start!92964)

(declare-fun b!1054988 () Bool)

(declare-fun e!599535 () Bool)

(declare-fun e!599537 () Bool)

(assert (=> b!1054988 (= e!599535 e!599537)))

(declare-fun res!703998 () Bool)

(assert (=> b!1054988 (=> res!703998 e!599537)))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66533 0))(
  ( (array!66534 (arr!31993 (Array (_ BitVec 32) (_ BitVec 64))) (size!32530 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66533)

(assert (=> b!1054988 (= res!703998 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32530 a!3488)))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054988 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34553 0))(
  ( (Unit!34554) )
))
(declare-fun lt!465627 () Unit!34553)

(declare-fun lt!465625 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66533 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34553)

(assert (=> b!1054988 (= lt!465627 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465625 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22436 0))(
  ( (Nil!22433) (Cons!22432 (h!23641 (_ BitVec 64)) (t!31750 List!22436)) )
))
(declare-fun arrayNoDuplicates!0 (array!66533 (_ BitVec 32) List!22436) Bool)

(assert (=> b!1054988 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22433)))

(declare-fun lt!465628 () Unit!34553)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66533 (_ BitVec 32) (_ BitVec 32)) Unit!34553)

(assert (=> b!1054988 (= lt!465628 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054989 () Bool)

(declare-fun res!704002 () Bool)

(declare-fun e!599534 () Bool)

(assert (=> b!1054989 (=> (not res!704002) (not e!599534))))

(assert (=> b!1054989 (= res!704002 (= (select (arr!31993 a!3488) i!1381) k!2747))))

(declare-fun b!1054990 () Bool)

(declare-fun noDuplicate!1563 (List!22436) Bool)

(assert (=> b!1054990 (= e!599537 (noDuplicate!1563 Nil!22433))))

(declare-fun b!1054991 () Bool)

(declare-fun e!599539 () Bool)

(declare-fun e!599533 () Bool)

(assert (=> b!1054991 (= e!599539 e!599533)))

(declare-fun res!704004 () Bool)

(assert (=> b!1054991 (=> (not res!704004) (not e!599533))))

(assert (=> b!1054991 (= res!704004 (not (= lt!465625 i!1381)))))

(declare-fun lt!465626 () array!66533)

(declare-fun arrayScanForKey!0 (array!66533 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054991 (= lt!465625 (arrayScanForKey!0 lt!465626 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054992 () Bool)

(declare-fun res!703999 () Bool)

(assert (=> b!1054992 (=> (not res!703999) (not e!599534))))

(assert (=> b!1054992 (= res!703999 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22433))))

(declare-fun b!1054993 () Bool)

(assert (=> b!1054993 (= e!599533 (not e!599535))))

(declare-fun res!703995 () Bool)

(assert (=> b!1054993 (=> res!703995 e!599535)))

(assert (=> b!1054993 (= res!703995 (bvsle lt!465625 i!1381))))

(declare-fun e!599538 () Bool)

(assert (=> b!1054993 e!599538))

(declare-fun res!704003 () Bool)

(assert (=> b!1054993 (=> (not res!704003) (not e!599538))))

(assert (=> b!1054993 (= res!704003 (= (select (store (arr!31993 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465625) k!2747))))

(declare-fun res!704001 () Bool)

(assert (=> start!92964 (=> (not res!704001) (not e!599534))))

(assert (=> start!92964 (= res!704001 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32530 a!3488)) (bvslt (size!32530 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92964 e!599534))

(assert (=> start!92964 true))

(declare-fun array_inv!24615 (array!66533) Bool)

(assert (=> start!92964 (array_inv!24615 a!3488)))

(declare-fun b!1054994 () Bool)

(assert (=> b!1054994 (= e!599534 e!599539)))

(declare-fun res!703997 () Bool)

(assert (=> b!1054994 (=> (not res!703997) (not e!599539))))

(assert (=> b!1054994 (= res!703997 (arrayContainsKey!0 lt!465626 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054994 (= lt!465626 (array!66534 (store (arr!31993 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32530 a!3488)))))

(declare-fun b!1054995 () Bool)

(declare-fun e!599536 () Bool)

(assert (=> b!1054995 (= e!599536 (arrayContainsKey!0 a!3488 k!2747 lt!465625))))

(declare-fun b!1054996 () Bool)

(assert (=> b!1054996 (= e!599538 e!599536)))

(declare-fun res!703996 () Bool)

(assert (=> b!1054996 (=> res!703996 e!599536)))

(assert (=> b!1054996 (= res!703996 (bvsle lt!465625 i!1381))))

(declare-fun b!1054997 () Bool)

(declare-fun res!704000 () Bool)

(assert (=> b!1054997 (=> (not res!704000) (not e!599534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054997 (= res!704000 (validKeyInArray!0 k!2747))))

(assert (= (and start!92964 res!704001) b!1054992))

(assert (= (and b!1054992 res!703999) b!1054997))

(assert (= (and b!1054997 res!704000) b!1054989))

(assert (= (and b!1054989 res!704002) b!1054994))

(assert (= (and b!1054994 res!703997) b!1054991))

(assert (= (and b!1054991 res!704004) b!1054993))

(assert (= (and b!1054993 res!704003) b!1054996))

(assert (= (and b!1054996 (not res!703996)) b!1054995))

(assert (= (and b!1054993 (not res!703995)) b!1054988))

(assert (= (and b!1054988 (not res!703998)) b!1054990))

(declare-fun m!975159 () Bool)

(assert (=> b!1054994 m!975159))

(declare-fun m!975161 () Bool)

(assert (=> b!1054994 m!975161))

(declare-fun m!975163 () Bool)

(assert (=> b!1054997 m!975163))

(declare-fun m!975165 () Bool)

(assert (=> b!1054992 m!975165))

(declare-fun m!975167 () Bool)

(assert (=> b!1054990 m!975167))

(declare-fun m!975169 () Bool)

(assert (=> b!1054991 m!975169))

(declare-fun m!975171 () Bool)

(assert (=> b!1054995 m!975171))

(declare-fun m!975173 () Bool)

(assert (=> b!1054989 m!975173))

(declare-fun m!975175 () Bool)

(assert (=> start!92964 m!975175))

(assert (=> b!1054993 m!975161))

(declare-fun m!975177 () Bool)

(assert (=> b!1054993 m!975177))

(declare-fun m!975179 () Bool)

(assert (=> b!1054988 m!975179))

(declare-fun m!975181 () Bool)

(assert (=> b!1054988 m!975181))

(declare-fun m!975183 () Bool)

(assert (=> b!1054988 m!975183))

(declare-fun m!975185 () Bool)

(assert (=> b!1054988 m!975185))

(push 1)

(assert (not b!1054992))

(assert (not b!1054991))

(assert (not b!1054997))

(assert (not b!1054990))

(assert (not b!1054994))

(assert (not b!1054988))

(assert (not b!1054995))

(assert (not start!92964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128045 () Bool)

(assert (=> d!128045 (= (array_inv!24615 a!3488) (bvsge (size!32530 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92964 d!128045))

(declare-fun d!128047 () Bool)

(assert (=> d!128047 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1054997 d!128047))

(declare-fun d!128049 () Bool)

(declare-fun lt!465661 () (_ BitVec 32))

(assert (=> d!128049 (and (or (bvslt lt!465661 #b00000000000000000000000000000000) (bvsge lt!465661 (size!32530 lt!465626)) (and (bvsge lt!465661 #b00000000000000000000000000000000) (bvslt lt!465661 (size!32530 lt!465626)))) (bvsge lt!465661 #b00000000000000000000000000000000) (bvslt lt!465661 (size!32530 lt!465626)) (= (select (arr!31993 lt!465626) lt!465661) k!2747))))

(declare-fun e!599608 () (_ BitVec 32))

(assert (=> d!128049 (= lt!465661 e!599608)))

(declare-fun c!106964 () Bool)

(assert (=> d!128049 (= c!106964 (= (select (arr!31993 lt!465626) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128049 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32530 lt!465626)) (bvslt (size!32530 lt!465626) #b01111111111111111111111111111111))))

(assert (=> d!128049 (= (arrayScanForKey!0 lt!465626 k!2747 #b00000000000000000000000000000000) lt!465661)))

(declare-fun b!1055082 () Bool)

(assert (=> b!1055082 (= e!599608 #b00000000000000000000000000000000)))

(declare-fun b!1055083 () Bool)

(assert (=> b!1055083 (= e!599608 (arrayScanForKey!0 lt!465626 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128049 c!106964) b!1055082))

(assert (= (and d!128049 (not c!106964)) b!1055083))

(declare-fun m!975261 () Bool)

(assert (=> d!128049 m!975261))

(declare-fun m!975263 () Bool)

(assert (=> d!128049 m!975263))

(declare-fun m!975265 () Bool)

(assert (=> b!1055083 m!975265))

(assert (=> b!1054991 d!128049))

(declare-fun bm!44786 () Bool)

(declare-fun call!44789 () Bool)

(declare-fun c!106973 () Bool)

(assert (=> bm!44786 (= call!44789 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106973 (Cons!22432 (select (arr!31993 a!3488) #b00000000000000000000000000000000) Nil!22433) Nil!22433)))))

(declare-fun b!1055115 () Bool)

(declare-fun e!599632 () Bool)

(declare-fun e!599633 () Bool)

(assert (=> b!1055115 (= e!599632 e!599633)))

(declare-fun res!704095 () Bool)

(assert (=> b!1055115 (=> (not res!704095) (not e!599633))))

(declare-fun e!599634 () Bool)

(assert (=> b!1055115 (= res!704095 (not e!599634))))

(declare-fun res!704094 () Bool)

(assert (=> b!1055115 (=> (not res!704094) (not e!599634))))

(assert (=> b!1055115 (= res!704094 (validKeyInArray!0 (select (arr!31993 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128061 () Bool)

(declare-fun res!704096 () Bool)

(assert (=> d!128061 (=> res!704096 e!599632)))

(assert (=> d!128061 (= res!704096 (bvsge #b00000000000000000000000000000000 (size!32530 a!3488)))))

(assert (=> d!128061 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22433) e!599632)))

(declare-fun b!1055116 () Bool)

(declare-fun e!599635 () Bool)

(assert (=> b!1055116 (= e!599635 call!44789)))

(declare-fun b!1055117 () Bool)

(assert (=> b!1055117 (= e!599635 call!44789)))

(declare-fun b!1055118 () Bool)

(declare-fun contains!6196 (List!22436 (_ BitVec 64)) Bool)

(assert (=> b!1055118 (= e!599634 (contains!6196 Nil!22433 (select (arr!31993 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1055119 () Bool)

(assert (=> b!1055119 (= e!599633 e!599635)))

(assert (=> b!1055119 (= c!106973 (validKeyInArray!0 (select (arr!31993 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!128061 (not res!704096)) b!1055115))

(assert (= (and b!1055115 res!704094) b!1055118))

(assert (= (and b!1055115 res!704095) b!1055119))

(assert (= (and b!1055119 c!106973) b!1055117))

(assert (= (and b!1055119 (not c!106973)) b!1055116))

(assert (= (or b!1055117 b!1055116) bm!44786))

(declare-fun m!975279 () Bool)

(assert (=> bm!44786 m!975279))

(declare-fun m!975281 () Bool)

(assert (=> bm!44786 m!975281))

(assert (=> b!1055115 m!975279))

(assert (=> b!1055115 m!975279))

(declare-fun m!975285 () Bool)

(assert (=> b!1055115 m!975285))

(assert (=> b!1055118 m!975279))

(assert (=> b!1055118 m!975279))

(declare-fun m!975287 () Bool)

(assert (=> b!1055118 m!975287))

(assert (=> b!1055119 m!975279))

(assert (=> b!1055119 m!975279))

(assert (=> b!1055119 m!975285))

(assert (=> b!1054992 d!128061))

(declare-fun d!128071 () Bool)

(declare-fun res!704112 () Bool)

(declare-fun e!599652 () Bool)

(assert (=> d!128071 (=> res!704112 e!599652)))

(assert (=> d!128071 (= res!704112 (= (select (arr!31993 lt!465626) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128071 (= (arrayContainsKey!0 lt!465626 k!2747 #b00000000000000000000000000000000) e!599652)))

(declare-fun b!1055137 () Bool)

(declare-fun e!599653 () Bool)

(assert (=> b!1055137 (= e!599652 e!599653)))

(declare-fun res!704113 () Bool)

(assert (=> b!1055137 (=> (not res!704113) (not e!599653))))

(assert (=> b!1055137 (= res!704113 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32530 lt!465626)))))

(declare-fun b!1055138 () Bool)

(assert (=> b!1055138 (= e!599653 (arrayContainsKey!0 lt!465626 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128071 (not res!704112)) b!1055137))

(assert (= (and b!1055137 res!704113) b!1055138))

(assert (=> d!128071 m!975263))

(declare-fun m!975303 () Bool)

(assert (=> b!1055138 m!975303))

(assert (=> b!1054994 d!128071))

(declare-fun d!128077 () Bool)

(declare-fun res!704114 () Bool)

(declare-fun e!599654 () Bool)

(assert (=> d!128077 (=> res!704114 e!599654)))

(assert (=> d!128077 (= res!704114 (= (select (arr!31993 a!3488) (bvadd #b00000000000000000000000000000001 i!1381)) k!2747))))

(assert (=> d!128077 (= (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381)) e!599654)))

(declare-fun b!1055139 () Bool)

(declare-fun e!599655 () Bool)

(assert (=> b!1055139 (= e!599654 e!599655)))

(declare-fun res!704115 () Bool)

(assert (=> b!1055139 (=> (not res!704115) (not e!599655))))

(assert (=> b!1055139 (= res!704115 (bvslt (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001) (size!32530 a!3488)))))

(declare-fun b!1055140 () Bool)

(assert (=> b!1055140 (= e!599655 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128077 (not res!704114)) b!1055139))

(assert (= (and b!1055139 res!704115) b!1055140))

(declare-fun m!975305 () Bool)

(assert (=> d!128077 m!975305))

(declare-fun m!975307 () Bool)

(assert (=> b!1055140 m!975307))

(assert (=> b!1054988 d!128077))

(declare-fun d!128079 () Bool)

(assert (=> d!128079 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465670 () Unit!34553)

(declare-fun choose!114 (array!66533 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34553)

(assert (=> d!128079 (= lt!465670 (choose!114 a!3488 k!2747 lt!465625 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> d!128079 (bvsge lt!465625 #b00000000000000000000000000000000)))

(assert (=> d!128079 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465625 (bvadd #b00000000000000000000000000000001 i!1381)) lt!465670)))

(declare-fun bs!30923 () Bool)

(assert (= bs!30923 d!128079))

(assert (=> bs!30923 m!975179))

(declare-fun m!975309 () Bool)

(assert (=> bs!30923 m!975309))

(assert (=> b!1054988 d!128079))

(declare-fun call!44791 () Bool)

(declare-fun bm!44788 () Bool)

(declare-fun c!106975 () Bool)

(assert (=> bm!44788 (= call!44791 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106975 (Cons!22432 (select (arr!31993 a!3488) i!1381) Nil!22433) Nil!22433)))))

(declare-fun b!1055145 () Bool)

(declare-fun e!599660 () Bool)

(declare-fun e!599661 () Bool)

(assert (=> b!1055145 (= e!599660 e!599661)))

(declare-fun res!704121 () Bool)

(assert (=> b!1055145 (=> (not res!704121) (not e!599661))))

(declare-fun e!599662 () Bool)

(assert (=> b!1055145 (= res!704121 (not e!599662))))

(declare-fun res!704120 () Bool)

(assert (=> b!1055145 (=> (not res!704120) (not e!599662))))

(assert (=> b!1055145 (= res!704120 (validKeyInArray!0 (select (arr!31993 a!3488) i!1381)))))

(declare-fun d!128081 () Bool)

(declare-fun res!704122 () Bool)

(assert (=> d!128081 (=> res!704122 e!599660)))

(assert (=> d!128081 (= res!704122 (bvsge i!1381 (size!32530 a!3488)))))

(assert (=> d!128081 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22433) e!599660)))

(declare-fun b!1055146 () Bool)

(declare-fun e!599663 () Bool)

(assert (=> b!1055146 (= e!599663 call!44791)))

(declare-fun b!1055147 () Bool)

(assert (=> b!1055147 (= e!599663 call!44791)))

(declare-fun b!1055148 () Bool)

(assert (=> b!1055148 (= e!599662 (contains!6196 Nil!22433 (select (arr!31993 a!3488) i!1381)))))

(declare-fun b!1055149 () Bool)

(assert (=> b!1055149 (= e!599661 e!599663)))

(assert (=> b!1055149 (= c!106975 (validKeyInArray!0 (select (arr!31993 a!3488) i!1381)))))

(assert (= (and d!128081 (not res!704122)) b!1055145))

(assert (= (and b!1055145 res!704120) b!1055148))

(assert (= (and b!1055145 res!704121) b!1055149))

(assert (= (and b!1055149 c!106975) b!1055147))

(assert (= (and b!1055149 (not c!106975)) b!1055146))

(assert (= (or b!1055147 b!1055146) bm!44788))

(assert (=> bm!44788 m!975173))

(declare-fun m!975311 () Bool)

