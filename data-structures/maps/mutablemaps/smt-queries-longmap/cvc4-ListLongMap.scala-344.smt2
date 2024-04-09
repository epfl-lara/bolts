; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6284 () Bool)

(assert start!6284)

(declare-fun res!25274 () Bool)

(declare-fun e!26937 () Bool)

(assert (=> start!6284 (=> (not res!25274) (not e!26937))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6284 (= res!25274 (validMask!0 mask!853))))

(assert (=> start!6284 e!26937))

(assert (=> start!6284 true))

(declare-fun b!42520 () Bool)

(declare-fun e!26935 () Bool)

(assert (=> b!42520 (= e!26937 (not e!26935))))

(declare-fun res!25275 () Bool)

(assert (=> b!42520 (=> res!25275 e!26935)))

(assert (=> b!42520 (= res!25275 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2819 0))(
  ( (array!2820 (arr!1353 (Array (_ BitVec 32) (_ BitVec 64))) (size!1526 (_ BitVec 32))) )
))
(declare-fun lt!17695 () array!2819)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2819 (_ BitVec 32)) Bool)

(assert (=> b!42520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17695 mask!853)))

(declare-datatypes ((Unit!1143 0))(
  ( (Unit!1144) )
))
(declare-fun lt!17693 () Unit!1143)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2819 (_ BitVec 32) (_ BitVec 32)) Unit!1143)

(assert (=> b!42520 (= lt!17693 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17695 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2819 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42520 (= (arrayCountValidKeys!0 lt!17695 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17694 () Unit!1143)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2819 (_ BitVec 32) (_ BitVec 32)) Unit!1143)

(assert (=> b!42520 (= lt!17694 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17695 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42520 (= lt!17695 (array!2820 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42521 () Bool)

(declare-fun e!26936 () Bool)

(assert (=> b!42521 (= e!26935 e!26936)))

(declare-fun res!25276 () Bool)

(assert (=> b!42521 (=> (not res!25276) (not e!26936))))

(declare-datatypes ((List!1160 0))(
  ( (Nil!1157) (Cons!1156 (h!1733 (_ BitVec 64)) (t!4115 List!1160)) )
))
(declare-fun contains!557 (List!1160 (_ BitVec 64)) Bool)

(assert (=> b!42521 (= res!25276 (not (contains!557 Nil!1157 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!42522 () Bool)

(assert (=> b!42522 (= e!26936 (not (contains!557 Nil!1157 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!6284 res!25274) b!42520))

(assert (= (and b!42520 (not res!25275)) b!42521))

(assert (= (and b!42521 res!25276) b!42522))

(declare-fun m!36189 () Bool)

(assert (=> start!6284 m!36189))

(declare-fun m!36191 () Bool)

(assert (=> b!42520 m!36191))

(declare-fun m!36193 () Bool)

(assert (=> b!42520 m!36193))

(declare-fun m!36195 () Bool)

(assert (=> b!42520 m!36195))

(declare-fun m!36197 () Bool)

(assert (=> b!42520 m!36197))

(declare-fun m!36199 () Bool)

(assert (=> b!42521 m!36199))

(declare-fun m!36201 () Bool)

(assert (=> b!42522 m!36201))

(push 1)

(assert (not b!42521))

(assert (not b!42520))

(assert (not start!6284))

(assert (not b!42522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7743 () Bool)

(declare-fun lt!17704 () Bool)

(declare-fun content!36 (List!1160) (Set (_ BitVec 64)))

(assert (=> d!7743 (= lt!17704 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!36 Nil!1157)))))

(declare-fun e!26954 () Bool)

(assert (=> d!7743 (= lt!17704 e!26954)))

(declare-fun res!25293 () Bool)

(assert (=> d!7743 (=> (not res!25293) (not e!26954))))

(assert (=> d!7743 (= res!25293 (is-Cons!1156 Nil!1157))))

(assert (=> d!7743 (= (contains!557 Nil!1157 #b0000000000000000000000000000000000000000000000000000000000000000) lt!17704)))

(declare-fun b!42539 () Bool)

(declare-fun e!26955 () Bool)

(assert (=> b!42539 (= e!26954 e!26955)))

(declare-fun res!25294 () Bool)

(assert (=> b!42539 (=> res!25294 e!26955)))

(assert (=> b!42539 (= res!25294 (= (h!1733 Nil!1157) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42540 () Bool)

(assert (=> b!42540 (= e!26955 (contains!557 (t!4115 Nil!1157) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!7743 res!25293) b!42539))

(assert (= (and b!42539 (not res!25294)) b!42540))

(declare-fun m!36215 () Bool)

(assert (=> d!7743 m!36215))

(declare-fun m!36217 () Bool)

(assert (=> d!7743 m!36217))

(declare-fun m!36219 () Bool)

(assert (=> b!42540 m!36219))

(assert (=> b!42521 d!7743))

(declare-fun b!42573 () Bool)

(declare-fun e!26982 () Bool)

(declare-fun e!26981 () Bool)

(assert (=> b!42573 (= e!26982 e!26981)))

(declare-fun lt!17729 () (_ BitVec 64))

(assert (=> b!42573 (= lt!17729 (select (arr!1353 lt!17695) #b00000000000000000000000000000000))))

(declare-fun lt!17730 () Unit!1143)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2819 (_ BitVec 64) (_ BitVec 32)) Unit!1143)

(assert (=> b!42573 (= lt!17730 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17695 lt!17729 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42573 (arrayContainsKey!0 lt!17695 lt!17729 #b00000000000000000000000000000000)))

(declare-fun lt!17731 () Unit!1143)

(assert (=> b!42573 (= lt!17731 lt!17730)))

(declare-fun res!25312 () Bool)

(declare-datatypes ((SeekEntryResult!200 0))(
  ( (MissingZero!200 (index!2922 (_ BitVec 32))) (Found!200 (index!2923 (_ BitVec 32))) (Intermediate!200 (undefined!1012 Bool) (index!2924 (_ BitVec 32)) (x!8133 (_ BitVec 32))) (Undefined!200) (MissingVacant!200 (index!2925 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2819 (_ BitVec 32)) SeekEntryResult!200)

(assert (=> b!42573 (= res!25312 (= (seekEntryOrOpen!0 (select (arr!1353 lt!17695) #b00000000000000000000000000000000) lt!17695 mask!853) (Found!200 #b00000000000000000000000000000000)))))

(assert (=> b!42573 (=> (not res!25312) (not e!26981))))

(declare-fun b!42574 () Bool)

(declare-fun call!3341 () Bool)

(assert (=> b!42574 (= e!26981 call!3341)))

(declare-fun b!42575 () Bool)

(assert (=> b!42575 (= e!26982 call!3341)))

(declare-fun bm!3338 () Bool)

(assert (=> bm!3338 (= call!3341 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17695 mask!853))))

(declare-fun b!42576 () Bool)

(declare-fun e!26980 () Bool)

(assert (=> b!42576 (= e!26980 e!26982)))

(declare-fun c!5380 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42576 (= c!5380 (validKeyInArray!0 (select (arr!1353 lt!17695) #b00000000000000000000000000000000)))))

(declare-fun d!7749 () Bool)

(declare-fun res!25311 () Bool)

(assert (=> d!7749 (=> res!25311 e!26980)))

(assert (=> d!7749 (= res!25311 (bvsge #b00000000000000000000000000000000 (size!1526 lt!17695)))))

(assert (=> d!7749 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17695 mask!853) e!26980)))

(assert (= (and d!7749 (not res!25311)) b!42576))

(assert (= (and b!42576 c!5380) b!42573))

(assert (= (and b!42576 (not c!5380)) b!42575))

(assert (= (and b!42573 res!25312) b!42574))

(assert (= (or b!42574 b!42575) bm!3338))

(declare-fun m!36245 () Bool)

(assert (=> b!42573 m!36245))

(declare-fun m!36247 () Bool)

(assert (=> b!42573 m!36247))

(declare-fun m!36249 () Bool)

(assert (=> b!42573 m!36249))

(assert (=> b!42573 m!36245))

(declare-fun m!36251 () Bool)

(assert (=> b!42573 m!36251))

(declare-fun m!36253 () Bool)

(assert (=> bm!3338 m!36253))

(assert (=> b!42576 m!36245))

(assert (=> b!42576 m!36245))

(declare-fun m!36255 () Bool)

(assert (=> b!42576 m!36255))

(assert (=> b!42520 d!7749))

(declare-fun d!7755 () Bool)

(assert (=> d!7755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17695 mask!853)))

(declare-fun lt!17740 () Unit!1143)

(declare-fun choose!34 (array!2819 (_ BitVec 32) (_ BitVec 32)) Unit!1143)

(assert (=> d!7755 (= lt!17740 (choose!34 lt!17695 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7755 (validMask!0 mask!853)))

(assert (=> d!7755 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17695 mask!853 #b00000000000000000000000000000000) lt!17740)))

(declare-fun bs!1878 () Bool)

(assert (= bs!1878 d!7755))

(assert (=> bs!1878 m!36191))

(declare-fun m!36261 () Bool)

(assert (=> bs!1878 m!36261))

(assert (=> bs!1878 m!36189))

(assert (=> b!42520 d!7755))

(declare-fun b!42609 () Bool)

(declare-fun e!27000 () (_ BitVec 32))

(declare-fun call!3350 () (_ BitVec 32))

(assert (=> b!42609 (= e!27000 call!3350)))

(declare-fun b!42611 () Bool)

(declare-fun e!26999 () (_ BitVec 32))

(assert (=> b!42611 (= e!26999 #b00000000000000000000000000000000)))

(declare-fun bm!3347 () Bool)

(assert (=> bm!3347 (= call!3350 (arrayCountValidKeys!0 lt!17695 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42612 () Bool)

(assert (=> b!42612 (= e!27000 (bvadd #b00000000000000000000000000000001 call!3350))))

(declare-fun b!42610 () Bool)

(assert (=> b!42610 (= e!26999 e!27000)))

(declare-fun c!5397 () Bool)

(assert (=> b!42610 (= c!5397 (validKeyInArray!0 (select (arr!1353 lt!17695) #b00000000000000000000000000000000)))))

(declare-fun d!7761 () Bool)

(declare-fun lt!17749 () (_ BitVec 32))

(assert (=> d!7761 (and (bvsge lt!17749 #b00000000000000000000000000000000) (bvsle lt!17749 (bvsub (size!1526 lt!17695) #b00000000000000000000000000000000)))))

(assert (=> d!7761 (= lt!17749 e!26999)))

(declare-fun c!5398 () Bool)

(assert (=> d!7761 (= c!5398 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7761 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1526 lt!17695)))))

(assert (=> d!7761 (= (arrayCountValidKeys!0 lt!17695 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17749)))

(assert (= (and d!7761 c!5398) b!42611))

(assert (= (and d!7761 (not c!5398)) b!42610))

(assert (= (and b!42610 c!5397) b!42612))

(assert (= (and b!42610 (not c!5397)) b!42609))

(assert (= (or b!42612 b!42609) bm!3347))

(declare-fun m!36267 () Bool)

(assert (=> bm!3347 m!36267))

(assert (=> b!42610 m!36245))

(assert (=> b!42610 m!36245))

(assert (=> b!42610 m!36255))

(assert (=> b!42520 d!7761))

(declare-fun d!7767 () Bool)

(assert (=> d!7767 (= (arrayCountValidKeys!0 lt!17695 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17758 () Unit!1143)

(declare-fun choose!59 (array!2819 (_ BitVec 32) (_ BitVec 32)) Unit!1143)

(assert (=> d!7767 (= lt!17758 (choose!59 lt!17695 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7767 (bvslt (size!1526 lt!17695) #b01111111111111111111111111111111)))

(assert (=> d!7767 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17695 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17758)))

(declare-fun bs!1881 () Bool)

(assert (= bs!1881 d!7767))

(assert (=> bs!1881 m!36195))

(declare-fun m!36273 () Bool)

(assert (=> bs!1881 m!36273))

(assert (=> b!42520 d!7767))

(declare-fun d!7773 () Bool)

