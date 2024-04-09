; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128038 () Bool)

(assert start!128038)

(declare-fun b!1503629 () Bool)

(declare-fun res!1024582 () Bool)

(declare-fun e!840674 () Bool)

(assert (=> b!1503629 (=> (not res!1024582) (not e!840674))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100266 0))(
  ( (array!100267 (arr!48385 (Array (_ BitVec 32) (_ BitVec 64))) (size!48936 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100266)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12602 0))(
  ( (MissingZero!12602 (index!52799 (_ BitVec 32))) (Found!12602 (index!52800 (_ BitVec 32))) (Intermediate!12602 (undefined!13414 Bool) (index!52801 (_ BitVec 32)) (x!134495 (_ BitVec 32))) (Undefined!12602) (MissingVacant!12602 (index!52802 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100266 (_ BitVec 32)) SeekEntryResult!12602)

(assert (=> b!1503629 (= res!1024582 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48385 a!2850) j!87) a!2850 mask!2661) (Found!12602 j!87)))))

(declare-fun b!1503630 () Bool)

(declare-fun res!1024580 () Bool)

(assert (=> b!1503630 (=> (not res!1024580) (not e!840674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100266 (_ BitVec 32)) Bool)

(assert (=> b!1503630 (= res!1024580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503631 () Bool)

(assert (=> b!1503631 (= e!840674 (or (bvslt (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110)))))

(declare-fun lt!653515 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503631 (= lt!653515 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503632 () Bool)

(declare-fun res!1024585 () Bool)

(assert (=> b!1503632 (=> (not res!1024585) (not e!840674))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503632 (= res!1024585 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48936 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48936 a!2850)) (= (select (arr!48385 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48385 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48936 a!2850))))))

(declare-fun b!1503633 () Bool)

(declare-fun res!1024587 () Bool)

(assert (=> b!1503633 (=> (not res!1024587) (not e!840674))))

(assert (=> b!1503633 (= res!1024587 (not (= (select (arr!48385 a!2850) index!625) (select (arr!48385 a!2850) j!87))))))

(declare-fun b!1503634 () Bool)

(declare-fun res!1024584 () Bool)

(assert (=> b!1503634 (=> (not res!1024584) (not e!840674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503634 (= res!1024584 (validKeyInArray!0 (select (arr!48385 a!2850) i!996)))))

(declare-fun b!1503635 () Bool)

(declare-fun res!1024581 () Bool)

(assert (=> b!1503635 (=> (not res!1024581) (not e!840674))))

(assert (=> b!1503635 (= res!1024581 (validKeyInArray!0 (select (arr!48385 a!2850) j!87)))))

(declare-fun b!1503636 () Bool)

(declare-fun res!1024583 () Bool)

(assert (=> b!1503636 (=> (not res!1024583) (not e!840674))))

(declare-datatypes ((List!35057 0))(
  ( (Nil!35054) (Cons!35053 (h!36451 (_ BitVec 64)) (t!49758 List!35057)) )
))
(declare-fun arrayNoDuplicates!0 (array!100266 (_ BitVec 32) List!35057) Bool)

(assert (=> b!1503636 (= res!1024583 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35054))))

(declare-fun res!1024579 () Bool)

(assert (=> start!128038 (=> (not res!1024579) (not e!840674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128038 (= res!1024579 (validMask!0 mask!2661))))

(assert (=> start!128038 e!840674))

(assert (=> start!128038 true))

(declare-fun array_inv!37330 (array!100266) Bool)

(assert (=> start!128038 (array_inv!37330 a!2850)))

(declare-fun b!1503637 () Bool)

(declare-fun res!1024586 () Bool)

(assert (=> b!1503637 (=> (not res!1024586) (not e!840674))))

(assert (=> b!1503637 (= res!1024586 (and (= (size!48936 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48936 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48936 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128038 res!1024579) b!1503637))

(assert (= (and b!1503637 res!1024586) b!1503634))

(assert (= (and b!1503634 res!1024584) b!1503635))

(assert (= (and b!1503635 res!1024581) b!1503630))

(assert (= (and b!1503630 res!1024580) b!1503636))

(assert (= (and b!1503636 res!1024583) b!1503632))

(assert (= (and b!1503632 res!1024585) b!1503629))

(assert (= (and b!1503629 res!1024582) b!1503633))

(assert (= (and b!1503633 res!1024587) b!1503631))

(declare-fun m!1386945 () Bool)

(assert (=> b!1503630 m!1386945))

(declare-fun m!1386947 () Bool)

(assert (=> b!1503636 m!1386947))

(declare-fun m!1386949 () Bool)

(assert (=> b!1503632 m!1386949))

(declare-fun m!1386951 () Bool)

(assert (=> b!1503632 m!1386951))

(declare-fun m!1386953 () Bool)

(assert (=> b!1503632 m!1386953))

(declare-fun m!1386955 () Bool)

(assert (=> b!1503634 m!1386955))

(assert (=> b!1503634 m!1386955))

(declare-fun m!1386957 () Bool)

(assert (=> b!1503634 m!1386957))

(declare-fun m!1386959 () Bool)

(assert (=> b!1503629 m!1386959))

(assert (=> b!1503629 m!1386959))

(declare-fun m!1386961 () Bool)

(assert (=> b!1503629 m!1386961))

(declare-fun m!1386963 () Bool)

(assert (=> b!1503633 m!1386963))

(assert (=> b!1503633 m!1386959))

(declare-fun m!1386965 () Bool)

(assert (=> start!128038 m!1386965))

(declare-fun m!1386967 () Bool)

(assert (=> start!128038 m!1386967))

(assert (=> b!1503635 m!1386959))

(assert (=> b!1503635 m!1386959))

(declare-fun m!1386969 () Bool)

(assert (=> b!1503635 m!1386969))

(declare-fun m!1386971 () Bool)

(assert (=> b!1503631 m!1386971))

(push 1)

(assert (not b!1503634))

(assert (not b!1503630))

(assert (not b!1503635))

(assert (not b!1503636))

(assert (not b!1503631))

(assert (not b!1503629))

(assert (not start!128038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157751 () Bool)

(declare-fun lt!653527 () (_ BitVec 32))

(assert (=> d!157751 (and (bvsge lt!653527 #b00000000000000000000000000000000) (bvslt lt!653527 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157751 (= lt!653527 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157751 (validMask!0 mask!2661)))

(assert (=> d!157751 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653527)))

(declare-fun bs!43170 () Bool)

(assert (= bs!43170 d!157751))

(declare-fun m!1387039 () Bool)

(assert (=> bs!43170 m!1387039))

(assert (=> bs!43170 m!1386965))

(assert (=> b!1503631 d!157751))

(declare-fun b!1503744 () Bool)

(declare-fun e!840730 () Bool)

(declare-fun e!840729 () Bool)

(assert (=> b!1503744 (= e!840730 e!840729)))

(declare-fun c!139073 () Bool)

(assert (=> b!1503744 (= c!139073 (validKeyInArray!0 (select (arr!48385 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1503745 () Bool)

(declare-fun e!840728 () Bool)

(assert (=> b!1503745 (= e!840728 e!840730)))

(declare-fun res!1024674 () Bool)

(assert (=> b!1503745 (=> (not res!1024674) (not e!840730))))

(declare-fun e!840731 () Bool)

(assert (=> b!1503745 (= res!1024674 (not e!840731))))

(declare-fun res!1024673 () Bool)

(assert (=> b!1503745 (=> (not res!1024673) (not e!840731))))

(assert (=> b!1503745 (= res!1024673 (validKeyInArray!0 (select (arr!48385 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157755 () Bool)

(declare-fun res!1024672 () Bool)

(assert (=> d!157755 (=> res!1024672 e!840728)))

(assert (=> d!157755 (= res!1024672 (bvsge #b00000000000000000000000000000000 (size!48936 a!2850)))))

(assert (=> d!157755 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35054) e!840728)))

(declare-fun b!1503746 () Bool)

(declare-fun call!68115 () Bool)

(assert (=> b!1503746 (= e!840729 call!68115)))

(declare-fun bm!68112 () Bool)

(assert (=> bm!68112 (= call!68115 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139073 (Cons!35053 (select (arr!48385 a!2850) #b00000000000000000000000000000000) Nil!35054) Nil!35054)))))

(declare-fun b!1503747 () Bool)

(declare-fun contains!9958 (List!35057 (_ BitVec 64)) Bool)

(assert (=> b!1503747 (= e!840731 (contains!9958 Nil!35054 (select (arr!48385 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1503748 () Bool)

(assert (=> b!1503748 (= e!840729 call!68115)))

(assert (= (and d!157755 (not res!1024672)) b!1503745))

(assert (= (and b!1503745 res!1024673) b!1503747))

(assert (= (and b!1503745 res!1024674) b!1503744))

(assert (= (and b!1503744 c!139073) b!1503746))

(assert (= (and b!1503744 (not c!139073)) b!1503748))

(assert (= (or b!1503746 b!1503748) bm!68112))

(declare-fun m!1387057 () Bool)

(assert (=> b!1503744 m!1387057))

(assert (=> b!1503744 m!1387057))

(declare-fun m!1387059 () Bool)

(assert (=> b!1503744 m!1387059))

(assert (=> b!1503745 m!1387057))

(assert (=> b!1503745 m!1387057))

(assert (=> b!1503745 m!1387059))

(assert (=> bm!68112 m!1387057))

(declare-fun m!1387061 () Bool)

(assert (=> bm!68112 m!1387061))

(assert (=> b!1503747 m!1387057))

(assert (=> b!1503747 m!1387057))

(declare-fun m!1387063 () Bool)

(assert (=> b!1503747 m!1387063))

(assert (=> b!1503636 d!157755))

(declare-fun b!1503769 () Bool)

(declare-fun e!840748 () Bool)

(declare-fun call!68121 () Bool)

(assert (=> b!1503769 (= e!840748 call!68121)))

(declare-fun b!1503770 () Bool)

(declare-fun e!840747 () Bool)

(assert (=> b!1503770 (= e!840747 e!840748)))

(declare-fun lt!653556 () (_ BitVec 64))

(assert (=> b!1503770 (= lt!653556 (select (arr!48385 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50210 0))(
  ( (Unit!50211) )
))
(declare-fun lt!653555 () Unit!50210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100266 (_ BitVec 64) (_ BitVec 32)) Unit!50210)

(assert (=> b!1503770 (= lt!653555 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653556 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1503770 (arrayContainsKey!0 a!2850 lt!653556 #b00000000000000000000000000000000)))

(declare-fun lt!653557 () Unit!50210)

(assert (=> b!1503770 (= lt!653557 lt!653555)))

(declare-fun res!1024686 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100266 (_ BitVec 32)) SeekEntryResult!12602)

(assert (=> b!1503770 (= res!1024686 (= (seekEntryOrOpen!0 (select (arr!48385 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12602 #b00000000000000000000000000000000)))))

(assert (=> b!1503770 (=> (not res!1024686) (not e!840748))))

(declare-fun bm!68118 () Bool)

(assert (=> bm!68118 (= call!68121 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun d!157761 () Bool)

(declare-fun res!1024685 () Bool)

(declare-fun e!840749 () Bool)

(assert (=> d!157761 (=> res!1024685 e!840749)))

(assert (=> d!157761 (= res!1024685 (bvsge #b00000000000000000000000000000000 (size!48936 a!2850)))))

(assert (=> d!157761 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840749)))

(declare-fun b!1503771 () Bool)

(assert (=> b!1503771 (= e!840747 call!68121)))

(declare-fun b!1503772 () Bool)

(assert (=> b!1503772 (= e!840749 e!840747)))

(declare-fun c!139079 () Bool)

(assert (=> b!1503772 (= c!139079 (validKeyInArray!0 (select (arr!48385 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157761 (not res!1024685)) b!1503772))

(assert (= (and b!1503772 c!139079) b!1503770))

(assert (= (and b!1503772 (not c!139079)) b!1503771))

(assert (= (and b!1503770 res!1024686) b!1503769))

(assert (= (or b!1503769 b!1503771) bm!68118))

(assert (=> b!1503770 m!1387057))

(declare-fun m!1387075 () Bool)

(assert (=> b!1503770 m!1387075))

(declare-fun m!1387077 () Bool)

(assert (=> b!1503770 m!1387077))

(assert (=> b!1503770 m!1387057))

(declare-fun m!1387079 () Bool)

(assert (=> b!1503770 m!1387079))

(declare-fun m!1387081 () Bool)

(assert (=> bm!68118 m!1387081))

(assert (=> b!1503772 m!1387057))

(assert (=> b!1503772 m!1387057))

(assert (=> b!1503772 m!1387059))

(assert (=> b!1503630 d!157761))

(declare-fun d!157771 () Bool)

(assert (=> d!157771 (= (validKeyInArray!0 (select (arr!48385 a!2850) j!87)) (and (not (= (select (arr!48385 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48385 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1503635 d!157771))

(declare-fun b!1503821 () Bool)

(declare-fun e!840776 () SeekEntryResult!12602)

(assert (=> b!1503821 (= e!840776 (MissingVacant!12602 vacantBefore!10))))

(declare-fun b!1503822 () Bool)

(declare-fun c!139105 () Bool)

(declare-fun lt!653575 () (_ BitVec 64))

(assert (=> b!1503822 (= c!139105 (= lt!653575 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!840774 () SeekEntryResult!12602)

(assert (=> b!1503822 (= e!840774 e!840776)))

(declare-fun d!157773 () Bool)

(declare-fun lt!653574 () SeekEntryResult!12602)

(assert (=> d!157773 (and (or (is-Undefined!12602 lt!653574) (not (is-Found!12602 lt!653574)) (and (bvsge (index!52800 lt!653574) #b00000000000000000000000000000000) (bvslt (index!52800 lt!653574) (size!48936 a!2850)))) (or (is-Undefined!12602 lt!653574) (is-Found!12602 lt!653574) (not (is-MissingVacant!12602 lt!653574)) (not (= (index!52802 lt!653574) vacantBefore!10)) (and (bvsge (index!52802 lt!653574) #b00000000000000000000000000000000) (bvslt (index!52802 lt!653574) (size!48936 a!2850)))) (or (is-Undefined!12602 lt!653574) (ite (is-Found!12602 lt!653574) (= (select (arr!48385 a!2850) (index!52800 lt!653574)) (select (arr!48385 a!2850) j!87)) (and (is-MissingVacant!12602 lt!653574) (= (index!52802 lt!653574) vacantBefore!10) (= (select (arr!48385 a!2850) (index!52802 lt!653574)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!840775 () SeekEntryResult!12602)

(assert (=> d!157773 (= lt!653574 e!840775)))

(declare-fun c!139106 () Bool)

(assert (=> d!157773 (= c!139106 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157773 (= lt!653575 (select (arr!48385 a!2850) index!625))))

(assert (=> d!157773 (validMask!0 mask!2661)))

(assert (=> d!157773 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48385 a!2850) j!87) a!2850 mask!2661) lt!653574)))

(declare-fun b!1503823 () Bool)

(assert (=> b!1503823 (= e!840774 (Found!12602 index!625))))

(declare-fun b!1503824 () Bool)

(assert (=> b!1503824 (= e!840776 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48385 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1503825 () Bool)

(assert (=> b!1503825 (= e!840775 Undefined!12602)))

(declare-fun b!1503826 () Bool)

(assert (=> b!1503826 (= e!840775 e!840774)))

(declare-fun c!139104 () Bool)

(assert (=> b!1503826 (= c!139104 (= lt!653575 (select (arr!48385 a!2850) j!87)))))

(assert (= (and d!157773 c!139106) b!1503825))

(assert (= (and d!157773 (not c!139106)) b!1503826))

(assert (= (and b!1503826 c!139104) b!1503823))

(assert (= (and b!1503826 (not c!139104)) b!1503822))

(assert (= (and b!1503822 c!139105) b!1503821))

(assert (= (and b!1503822 (not c!139105)) b!1503824))

(declare-fun m!1387095 () Bool)

(assert (=> d!157773 m!1387095))

(declare-fun m!1387097 () Bool)

(assert (=> d!157773 m!1387097))

(assert (=> d!157773 m!1386963))

(assert (=> d!157773 m!1386965))

(assert (=> b!1503824 m!1386971))

(assert (=> b!1503824 m!1386971))

(assert (=> b!1503824 m!1386959))

(declare-fun m!1387099 () Bool)

(assert (=> b!1503824 m!1387099))

(assert (=> b!1503629 d!157773))

(declare-fun d!157777 () Bool)

(assert (=> d!157777 (= (validKeyInArray!0 (select (arr!48385 a!2850) i!996)) (and (not (= (select (arr!48385 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48385 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1503634 d!157777))

(declare-fun d!157779 () Bool)

(assert (=> d!157779 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!128038 d!157779))

(declare-fun d!157781 () Bool)

(assert (=> d!157781 (= (array_inv!37330 a!2850) (bvsge (size!48936 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!128038 d!157781))

(push 1)

