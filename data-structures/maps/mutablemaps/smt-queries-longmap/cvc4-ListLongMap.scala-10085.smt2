; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118688 () Bool)

(assert start!118688)

(declare-fun b!1387105 () Bool)

(declare-datatypes ((Unit!46333 0))(
  ( (Unit!46334) )
))
(declare-fun e!785723 () Unit!46333)

(declare-fun lt!609685 () Unit!46333)

(assert (=> b!1387105 (= e!785723 lt!609685)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94882 0))(
  ( (array!94883 (arr!45813 (Array (_ BitVec 32) (_ BitVec 64))) (size!46364 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94882)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!609681 () Unit!46333)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46333)

(assert (=> b!1387105 (= lt!609681 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun lt!609683 () array!94882)

(declare-datatypes ((SeekEntryResult!10178 0))(
  ( (MissingZero!10178 (index!43082 (_ BitVec 32))) (Found!10178 (index!43083 (_ BitVec 32))) (Intermediate!10178 (undefined!10990 Bool) (index!43084 (_ BitVec 32)) (x!124694 (_ BitVec 32))) (Undefined!10178) (MissingVacant!10178 (index!43085 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94882 (_ BitVec 32)) SeekEntryResult!10178)

(assert (=> b!1387105 (= (seekEntryOrOpen!0 (select (arr!45813 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609683 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46333)

(assert (=> b!1387105 (= lt!609685 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94882 (_ BitVec 32)) Bool)

(assert (=> b!1387105 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387106 () Bool)

(declare-fun e!785725 () Bool)

(declare-fun e!785722 () Bool)

(assert (=> b!1387106 (= e!785725 e!785722)))

(declare-fun res!928251 () Bool)

(assert (=> b!1387106 (=> (not res!928251) (not e!785722))))

(assert (=> b!1387106 (= res!928251 (and (bvslt startIndex!16 (bvsub (size!46364 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609682 () Unit!46333)

(assert (=> b!1387106 (= lt!609682 e!785723)))

(declare-fun c!128870 () Bool)

(declare-fun e!785726 () Bool)

(assert (=> b!1387106 (= c!128870 e!785726)))

(declare-fun res!928253 () Bool)

(assert (=> b!1387106 (=> (not res!928253) (not e!785726))))

(assert (=> b!1387106 (= res!928253 (not (= startIndex!16 i!1065)))))

(assert (=> b!1387106 (= lt!609683 (array!94883 (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46364 a!2938)))))

(declare-fun b!1387107 () Bool)

(declare-fun res!928254 () Bool)

(assert (=> b!1387107 (=> (not res!928254) (not e!785725))))

(assert (=> b!1387107 (= res!928254 (and (not (= (select (arr!45813 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45813 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387108 () Bool)

(assert (=> b!1387108 (= e!785722 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!609683 mask!2987)))))

(assert (=> b!1387108 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609683 mask!2987)))

(declare-fun lt!609684 () Unit!46333)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46333)

(assert (=> b!1387108 (= lt!609684 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1387109 () Bool)

(declare-fun res!928255 () Bool)

(assert (=> b!1387109 (=> (not res!928255) (not e!785725))))

(assert (=> b!1387109 (= res!928255 (and (= (size!46364 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46364 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46364 a!2938))))))

(declare-fun res!928250 () Bool)

(assert (=> start!118688 (=> (not res!928250) (not e!785725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118688 (= res!928250 (validMask!0 mask!2987))))

(assert (=> start!118688 e!785725))

(assert (=> start!118688 true))

(declare-fun array_inv!34758 (array!94882) Bool)

(assert (=> start!118688 (array_inv!34758 a!2938)))

(declare-fun b!1387110 () Bool)

(declare-fun Unit!46335 () Unit!46333)

(assert (=> b!1387110 (= e!785723 Unit!46335)))

(declare-fun b!1387111 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387111 (= e!785726 (validKeyInArray!0 (select (arr!45813 a!2938) startIndex!16)))))

(declare-fun b!1387112 () Bool)

(declare-fun res!928256 () Bool)

(assert (=> b!1387112 (=> (not res!928256) (not e!785725))))

(declare-datatypes ((List!32521 0))(
  ( (Nil!32518) (Cons!32517 (h!33726 (_ BitVec 64)) (t!47222 List!32521)) )
))
(declare-fun arrayNoDuplicates!0 (array!94882 (_ BitVec 32) List!32521) Bool)

(assert (=> b!1387112 (= res!928256 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32518))))

(declare-fun b!1387113 () Bool)

(declare-fun res!928257 () Bool)

(assert (=> b!1387113 (=> (not res!928257) (not e!785725))))

(assert (=> b!1387113 (= res!928257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387114 () Bool)

(declare-fun res!928252 () Bool)

(assert (=> b!1387114 (=> (not res!928252) (not e!785725))))

(assert (=> b!1387114 (= res!928252 (validKeyInArray!0 (select (arr!45813 a!2938) i!1065)))))

(assert (= (and start!118688 res!928250) b!1387109))

(assert (= (and b!1387109 res!928255) b!1387114))

(assert (= (and b!1387114 res!928252) b!1387112))

(assert (= (and b!1387112 res!928256) b!1387113))

(assert (= (and b!1387113 res!928257) b!1387107))

(assert (= (and b!1387107 res!928254) b!1387106))

(assert (= (and b!1387106 res!928253) b!1387111))

(assert (= (and b!1387106 c!128870) b!1387105))

(assert (= (and b!1387106 (not c!128870)) b!1387110))

(assert (= (and b!1387106 res!928251) b!1387108))

(declare-fun m!1272617 () Bool)

(assert (=> b!1387114 m!1272617))

(assert (=> b!1387114 m!1272617))

(declare-fun m!1272619 () Bool)

(assert (=> b!1387114 m!1272619))

(declare-fun m!1272621 () Bool)

(assert (=> b!1387113 m!1272621))

(declare-fun m!1272623 () Bool)

(assert (=> b!1387108 m!1272623))

(declare-fun m!1272625 () Bool)

(assert (=> b!1387108 m!1272625))

(declare-fun m!1272627 () Bool)

(assert (=> b!1387108 m!1272627))

(declare-fun m!1272629 () Bool)

(assert (=> b!1387112 m!1272629))

(declare-fun m!1272631 () Bool)

(assert (=> start!118688 m!1272631))

(declare-fun m!1272633 () Bool)

(assert (=> start!118688 m!1272633))

(declare-fun m!1272635 () Bool)

(assert (=> b!1387111 m!1272635))

(assert (=> b!1387111 m!1272635))

(declare-fun m!1272637 () Bool)

(assert (=> b!1387111 m!1272637))

(declare-fun m!1272639 () Bool)

(assert (=> b!1387106 m!1272639))

(assert (=> b!1387107 m!1272617))

(declare-fun m!1272641 () Bool)

(assert (=> b!1387105 m!1272641))

(declare-fun m!1272643 () Bool)

(assert (=> b!1387105 m!1272643))

(assert (=> b!1387105 m!1272639))

(assert (=> b!1387105 m!1272643))

(declare-fun m!1272645 () Bool)

(assert (=> b!1387105 m!1272645))

(declare-fun m!1272647 () Bool)

(assert (=> b!1387105 m!1272647))

(assert (=> b!1387105 m!1272635))

(declare-fun m!1272649 () Bool)

(assert (=> b!1387105 m!1272649))

(assert (=> b!1387105 m!1272635))

(declare-fun m!1272651 () Bool)

(assert (=> b!1387105 m!1272651))

(push 1)

(assert (not b!1387105))

(assert (not b!1387112))

(assert (not b!1387113))

(assert (not start!118688))

(assert (not b!1387111))

(assert (not b!1387114))

(assert (not b!1387108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149395 () Bool)

(assert (=> d!149395 (= (validKeyInArray!0 (select (arr!45813 a!2938) i!1065)) (and (not (= (select (arr!45813 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45813 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387114 d!149395))

(declare-fun d!149397 () Bool)

(declare-fun res!928282 () Bool)

(declare-fun e!785762 () Bool)

(assert (=> d!149397 (=> res!928282 e!785762)))

(assert (=> d!149397 (= res!928282 (bvsge startIndex!16 (size!46364 lt!609683)))))

(assert (=> d!149397 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!609683 mask!2987) e!785762)))

(declare-fun b!1387157 () Bool)

(declare-fun e!785760 () Bool)

(declare-fun call!66562 () Bool)

(assert (=> b!1387157 (= e!785760 call!66562)))

(declare-fun b!1387158 () Bool)

(declare-fun e!785761 () Bool)

(assert (=> b!1387158 (= e!785762 e!785761)))

(declare-fun c!128880 () Bool)

(assert (=> b!1387158 (= c!128880 (validKeyInArray!0 (select (arr!45813 lt!609683) startIndex!16)))))

(declare-fun bm!66559 () Bool)

(assert (=> bm!66559 (= call!66562 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!609683 mask!2987))))

(declare-fun b!1387159 () Bool)

(assert (=> b!1387159 (= e!785761 e!785760)))

(declare-fun lt!609711 () (_ BitVec 64))

(assert (=> b!1387159 (= lt!609711 (select (arr!45813 lt!609683) startIndex!16))))

(declare-fun lt!609712 () Unit!46333)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94882 (_ BitVec 64) (_ BitVec 32)) Unit!46333)

(assert (=> b!1387159 (= lt!609712 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609683 lt!609711 startIndex!16))))

(declare-fun arrayContainsKey!0 (array!94882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1387159 (arrayContainsKey!0 lt!609683 lt!609711 #b00000000000000000000000000000000)))

(declare-fun lt!609710 () Unit!46333)

(assert (=> b!1387159 (= lt!609710 lt!609712)))

(declare-fun res!928283 () Bool)

(assert (=> b!1387159 (= res!928283 (= (seekEntryOrOpen!0 (select (arr!45813 lt!609683) startIndex!16) lt!609683 mask!2987) (Found!10178 startIndex!16)))))

(assert (=> b!1387159 (=> (not res!928283) (not e!785760))))

(declare-fun b!1387160 () Bool)

(assert (=> b!1387160 (= e!785761 call!66562)))

(assert (= (and d!149397 (not res!928282)) b!1387158))

(assert (= (and b!1387158 c!128880) b!1387159))

(assert (= (and b!1387158 (not c!128880)) b!1387160))

(assert (= (and b!1387159 res!928283) b!1387157))

(assert (= (or b!1387157 b!1387160) bm!66559))

(declare-fun m!1272691 () Bool)

(assert (=> b!1387158 m!1272691))

(assert (=> b!1387158 m!1272691))

(declare-fun m!1272693 () Bool)

(assert (=> b!1387158 m!1272693))

(declare-fun m!1272695 () Bool)

(assert (=> bm!66559 m!1272695))

(assert (=> b!1387159 m!1272691))

(declare-fun m!1272697 () Bool)

(assert (=> b!1387159 m!1272697))

(declare-fun m!1272699 () Bool)

(assert (=> b!1387159 m!1272699))

(assert (=> b!1387159 m!1272691))

(declare-fun m!1272701 () Bool)

(assert (=> b!1387159 m!1272701))

(assert (=> b!1387108 d!149397))

(declare-fun d!149409 () Bool)

(declare-fun res!928284 () Bool)

(declare-fun e!785765 () Bool)

(assert (=> d!149409 (=> res!928284 e!785765)))

(assert (=> d!149409 (= res!928284 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) (size!46364 lt!609683)))))

(assert (=> d!149409 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609683 mask!2987) e!785765)))

(declare-fun b!1387161 () Bool)

(declare-fun e!785763 () Bool)

(declare-fun call!66563 () Bool)

(assert (=> b!1387161 (= e!785763 call!66563)))

(declare-fun b!1387162 () Bool)

(declare-fun e!785764 () Bool)

(assert (=> b!1387162 (= e!785765 e!785764)))

(declare-fun c!128881 () Bool)

(assert (=> b!1387162 (= c!128881 (validKeyInArray!0 (select (arr!45813 lt!609683) (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(declare-fun bm!66560 () Bool)

(assert (=> bm!66560 (= call!66563 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001) lt!609683 mask!2987))))

(declare-fun b!1387163 () Bool)

(assert (=> b!1387163 (= e!785764 e!785763)))

(declare-fun lt!609714 () (_ BitVec 64))

(assert (=> b!1387163 (= lt!609714 (select (arr!45813 lt!609683) (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(declare-fun lt!609715 () Unit!46333)

(assert (=> b!1387163 (= lt!609715 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609683 lt!609714 (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(assert (=> b!1387163 (arrayContainsKey!0 lt!609683 lt!609714 #b00000000000000000000000000000000)))

(declare-fun lt!609713 () Unit!46333)

(assert (=> b!1387163 (= lt!609713 lt!609715)))

(declare-fun res!928285 () Bool)

(assert (=> b!1387163 (= res!928285 (= (seekEntryOrOpen!0 (select (arr!45813 lt!609683) (bvadd #b00000000000000000000000000000001 startIndex!16)) lt!609683 mask!2987) (Found!10178 (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(assert (=> b!1387163 (=> (not res!928285) (not e!785763))))

(declare-fun b!1387164 () Bool)

(assert (=> b!1387164 (= e!785764 call!66563)))

(assert (= (and d!149409 (not res!928284)) b!1387162))

(assert (= (and b!1387162 c!128881) b!1387163))

(assert (= (and b!1387162 (not c!128881)) b!1387164))

(assert (= (and b!1387163 res!928285) b!1387161))

(assert (= (or b!1387161 b!1387164) bm!66560))

(declare-fun m!1272703 () Bool)

(assert (=> b!1387162 m!1272703))

(assert (=> b!1387162 m!1272703))

(declare-fun m!1272705 () Bool)

(assert (=> b!1387162 m!1272705))

(declare-fun m!1272707 () Bool)

(assert (=> bm!66560 m!1272707))

(assert (=> b!1387163 m!1272703))

(declare-fun m!1272709 () Bool)

(assert (=> b!1387163 m!1272709))

(declare-fun m!1272711 () Bool)

(assert (=> b!1387163 m!1272711))

(assert (=> b!1387163 m!1272703))

(declare-fun m!1272713 () Bool)

(assert (=> b!1387163 m!1272713))

(assert (=> b!1387108 d!149409))

(declare-fun d!149411 () Bool)

(declare-fun e!785774 () Bool)

(assert (=> d!149411 e!785774))

(declare-fun res!928293 () Bool)

(assert (=> d!149411 (=> (not res!928293) (not e!785774))))

(assert (=> d!149411 (= res!928293 (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46364 a!2938))))))

(declare-fun lt!609727 () Unit!46333)

(declare-fun choose!23 (array!94882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46333)

(assert (=> d!149411 (= lt!609727 (choose!23 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(assert (=> d!149411 (validMask!0 mask!2987)))

(assert (=> d!149411 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987) lt!609727)))

(declare-fun b!1387174 () Bool)

(assert (=> b!1387174 (= e!785774 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) (array!94883 (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46364 a!2938)) mask!2987))))

(assert (= (and d!149411 res!928293) b!1387174))

(declare-fun m!1272727 () Bool)

(assert (=> d!149411 m!1272727))

(assert (=> d!149411 m!1272631))

(assert (=> b!1387174 m!1272639))

(declare-fun m!1272729 () Bool)

(assert (=> b!1387174 m!1272729))

(assert (=> b!1387108 d!149411))

(declare-fun d!149419 () Bool)

(declare-fun res!928294 () Bool)

(declare-fun e!785777 () Bool)

(assert (=> d!149419 (=> res!928294 e!785777)))

(assert (=> d!149419 (= res!928294 (bvsge #b00000000000000000000000000000000 (size!46364 a!2938)))))

(assert (=> d!149419 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987) e!785777)))

(declare-fun b!1387175 () Bool)

(declare-fun e!785775 () Bool)

(declare-fun call!66565 () Bool)

(assert (=> b!1387175 (= e!785775 call!66565)))

(declare-fun b!1387176 () Bool)

(declare-fun e!785776 () Bool)

(assert (=> b!1387176 (= e!785777 e!785776)))

(declare-fun c!128883 () Bool)

(assert (=> b!1387176 (= c!128883 (validKeyInArray!0 (select (arr!45813 a!2938) #b00000000000000000000000000000000)))))

(declare-fun bm!66562 () Bool)

(assert (=> bm!66562 (= call!66565 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387177 () Bool)

(assert (=> b!1387177 (= e!785776 e!785775)))

(declare-fun lt!609729 () (_ BitVec 64))

(assert (=> b!1387177 (= lt!609729 (select (arr!45813 a!2938) #b00000000000000000000000000000000))))

(declare-fun lt!609730 () Unit!46333)

(assert (=> b!1387177 (= lt!609730 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609729 #b00000000000000000000000000000000))))

(assert (=> b!1387177 (arrayContainsKey!0 a!2938 lt!609729 #b00000000000000000000000000000000)))

(declare-fun lt!609728 () Unit!46333)

(assert (=> b!1387177 (= lt!609728 lt!609730)))

(declare-fun res!928295 () Bool)

(assert (=> b!1387177 (= res!928295 (= (seekEntryOrOpen!0 (select (arr!45813 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) (Found!10178 #b00000000000000000000000000000000)))))

(assert (=> b!1387177 (=> (not res!928295) (not e!785775))))

(declare-fun b!1387178 () Bool)

(assert (=> b!1387178 (= e!785776 call!66565)))

(assert (= (and d!149419 (not res!928294)) b!1387176))

(assert (= (and b!1387176 c!128883) b!1387177))

(assert (= (and b!1387176 (not c!128883)) b!1387178))

(assert (= (and b!1387177 res!928295) b!1387175))

(assert (= (or b!1387175 b!1387178) bm!66562))

(declare-fun m!1272731 () Bool)

(assert (=> b!1387176 m!1272731))

(assert (=> b!1387176 m!1272731))

(declare-fun m!1272733 () Bool)

(assert (=> b!1387176 m!1272733))

(declare-fun m!1272735 () Bool)

(assert (=> bm!66562 m!1272735))

(assert (=> b!1387177 m!1272731))

(declare-fun m!1272737 () Bool)

(assert (=> b!1387177 m!1272737))

(declare-fun m!1272739 () Bool)

(assert (=> b!1387177 m!1272739))

(assert (=> b!1387177 m!1272731))

(declare-fun m!1272741 () Bool)

(assert (=> b!1387177 m!1272741))

(assert (=> b!1387113 d!149419))

(declare-fun d!149421 () Bool)

(assert (=> d!149421 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118688 d!149421))

(declare-fun d!149427 () Bool)

(assert (=> d!149427 (= (array_inv!34758 a!2938) (bvsge (size!46364 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118688 d!149427))

(declare-fun b!1387251 () Bool)

(declare-fun e!785824 () Bool)

(declare-fun call!66573 () Bool)

(assert (=> b!1387251 (= e!785824 call!66573)))

(declare-fun d!149429 () Bool)

(declare-fun res!928313 () Bool)

(declare-fun e!785822 () Bool)

(assert (=> d!149429 (=> res!928313 e!785822)))

(assert (=> d!149429 (= res!928313 (bvsge #b00000000000000000000000000000000 (size!46364 a!2938)))))

(assert (=> d!149429 (= (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32518) e!785822)))

(declare-fun b!1387252 () Bool)

(declare-fun e!785823 () Bool)

(declare-fun contains!9758 (List!32521 (_ BitVec 64)) Bool)

(assert (=> b!1387252 (= e!785823 (contains!9758 Nil!32518 (select (arr!45813 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387253 () Bool)

(declare-fun e!785825 () Bool)

(assert (=> b!1387253 (= e!785822 e!785825)))

(declare-fun res!928312 () Bool)

(assert (=> b!1387253 (=> (not res!928312) (not e!785825))))

(assert (=> b!1387253 (= res!928312 (not e!785823))))

(declare-fun res!928314 () Bool)

(assert (=> b!1387253 (=> (not res!928314) (not e!785823))))

(assert (=> b!1387253 (= res!928314 (validKeyInArray!0 (select (arr!45813 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387254 () Bool)

(assert (=> b!1387254 (= e!785824 call!66573)))

(declare-fun b!1387255 () Bool)

(assert (=> b!1387255 (= e!785825 e!785824)))

(declare-fun c!128912 () Bool)

(assert (=> b!1387255 (= c!128912 (validKeyInArray!0 (select (arr!45813 a!2938) #b00000000000000000000000000000000)))))

(declare-fun bm!66570 () Bool)

(assert (=> bm!66570 (= call!66573 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128912 (Cons!32517 (select (arr!45813 a!2938) #b00000000000000000000000000000000) Nil!32518) Nil!32518)))))

(assert (= (and d!149429 (not res!928313)) b!1387253))

(assert (= (and b!1387253 res!928314) b!1387252))

(assert (= (and b!1387253 res!928312) b!1387255))

(assert (= (and b!1387255 c!128912) b!1387254))

(assert (= (and b!1387255 (not c!128912)) b!1387251))

(assert (= (or b!1387254 b!1387251) bm!66570))

(assert (=> b!1387252 m!1272731))

(assert (=> b!1387252 m!1272731))

(declare-fun m!1272815 () Bool)

(assert (=> b!1387252 m!1272815))

(assert (=> b!1387253 m!1272731))

(assert (=> b!1387253 m!1272731))

(assert (=> b!1387253 m!1272733))

(assert (=> b!1387255 m!1272731))

(assert (=> b!1387255 m!1272731))

(assert (=> b!1387255 m!1272733))

(assert (=> bm!66570 m!1272731))

(declare-fun m!1272817 () Bool)

(assert (=> bm!66570 m!1272817))

(assert (=> b!1387112 d!149429))

(declare-fun d!149439 () Bool)

(assert (=> d!149439 (= (validKeyInArray!0 (select (arr!45813 a!2938) startIndex!16)) (and (not (= (select (arr!45813 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45813 a!2938) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387111 d!149439))

(declare-fun d!149441 () Bool)

(assert (=> d!149441 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun lt!609772 () Unit!46333)

(declare-fun choose!38 (array!94882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46333)

(assert (=> d!149441 (= lt!609772 (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> d!149441 (validMask!0 mask!2987)))

(assert (=> d!149441 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) lt!609772)))

(declare-fun bs!40306 () Bool)

(assert (= bs!40306 d!149441))

(assert (=> bs!40306 m!1272651))

(declare-fun m!1272823 () Bool)

(assert (=> bs!40306 m!1272823))

(assert (=> bs!40306 m!1272631))

(assert (=> b!1387105 d!149441))

(declare-fun d!149445 () Bool)

(declare-fun res!928318 () Bool)

(declare-fun e!785831 () Bool)

(assert (=> d!149445 (=> res!928318 e!785831)))

(assert (=> d!149445 (= res!928318 (bvsge startIndex!16 (size!46364 a!2938)))))

(assert (=> d!149445 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987) e!785831)))

(declare-fun b!1387259 () Bool)

(declare-fun e!785829 () Bool)

(declare-fun call!66574 () Bool)

(assert (=> b!1387259 (= e!785829 call!66574)))

(declare-fun b!1387260 () Bool)

(declare-fun e!785830 () Bool)

(assert (=> b!1387260 (= e!785831 e!785830)))

(declare-fun c!128913 () Bool)

(assert (=> b!1387260 (= c!128913 (validKeyInArray!0 (select (arr!45813 a!2938) startIndex!16)))))

(declare-fun bm!66571 () Bool)

(assert (=> bm!66571 (= call!66574 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387261 () Bool)

(assert (=> b!1387261 (= e!785830 e!785829)))

(declare-fun lt!609774 () (_ BitVec 64))

(assert (=> b!1387261 (= lt!609774 (select (arr!45813 a!2938) startIndex!16))))

(declare-fun lt!609775 () Unit!46333)

(assert (=> b!1387261 (= lt!609775 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609774 startIndex!16))))

(assert (=> b!1387261 (arrayContainsKey!0 a!2938 lt!609774 #b00000000000000000000000000000000)))

(declare-fun lt!609773 () Unit!46333)

(assert (=> b!1387261 (= lt!609773 lt!609775)))

(declare-fun res!928319 () Bool)

(assert (=> b!1387261 (= res!928319 (= (seekEntryOrOpen!0 (select (arr!45813 a!2938) startIndex!16) a!2938 mask!2987) (Found!10178 startIndex!16)))))

(assert (=> b!1387261 (=> (not res!928319) (not e!785829))))

(declare-fun b!1387262 () Bool)

(assert (=> b!1387262 (= e!785830 call!66574)))

(assert (= (and d!149445 (not res!928318)) b!1387260))

(assert (= (and b!1387260 c!128913) b!1387261))

(assert (= (and b!1387260 (not c!128913)) b!1387262))

(assert (= (and b!1387261 res!928319) b!1387259))

(assert (= (or b!1387259 b!1387262) bm!66571))

(assert (=> b!1387260 m!1272635))

(assert (=> b!1387260 m!1272635))

(assert (=> b!1387260 m!1272637))

(declare-fun m!1272825 () Bool)

(assert (=> bm!66571 m!1272825))

(assert (=> b!1387261 m!1272635))

(declare-fun m!1272827 () Bool)

(assert (=> b!1387261 m!1272827))

(declare-fun m!1272829 () Bool)

(assert (=> b!1387261 m!1272829))

(assert (=> b!1387261 m!1272635))

(assert (=> b!1387261 m!1272649))

(assert (=> b!1387105 d!149445))

(declare-fun d!149447 () Bool)

(declare-fun e!785858 () Bool)

(assert (=> d!149447 e!785858))

(declare-fun res!928338 () Bool)

(assert (=> d!149447 (=> (not res!928338) (not e!785858))))

(assert (=> d!149447 (= res!928338 (and (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46364 a!2938)) (and (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46364 a!2938)))) (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46364 a!2938)) (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46364 a!2938)))) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46364 a!2938))))))

(declare-fun lt!609790 () Unit!46333)

(declare-fun choose!14 (array!94882 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46333)

(assert (=> d!149447 (= lt!609790 (choose!14 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (=> d!149447 (validMask!0 mask!2987)))

(assert (=> d!149447 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987) lt!609790)))

(declare-fun b!1387297 () Bool)

(assert (=> b!1387297 (= e!785858 (= (seekEntryOrOpen!0 (select (arr!45813 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94883 (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46364 a!2938)) mask!2987)))))

(assert (= (and d!149447 res!928338) b!1387297))

(declare-fun m!1272873 () Bool)

(assert (=> d!149447 m!1272873))

(assert (=> d!149447 m!1272631))

(assert (=> b!1387297 m!1272643))

(declare-fun m!1272875 () Bool)

(assert (=> b!1387297 m!1272875))

(assert (=> b!1387297 m!1272639))

(assert (=> b!1387297 m!1272635))

(assert (=> b!1387297 m!1272643))

(assert (=> b!1387297 m!1272635))

(assert (=> b!1387297 m!1272649))

(assert (=> b!1387105 d!149447))

(declare-fun d!149463 () Bool)

(declare-fun lt!609798 () SeekEntryResult!10178)

(assert (=> d!149463 (and (or (is-Undefined!10178 lt!609798) (not (is-Found!10178 lt!609798)) (and (bvsge (index!43083 lt!609798) #b00000000000000000000000000000000) (bvslt (index!43083 lt!609798) (size!46364 a!2938)))) (or (is-Undefined!10178 lt!609798) (is-Found!10178 lt!609798) (not (is-MissingZero!10178 lt!609798)) (and (bvsge (index!43082 lt!609798) #b00000000000000000000000000000000) (bvslt (index!43082 lt!609798) (size!46364 a!2938)))) (or (is-Undefined!10178 lt!609798) (is-Found!10178 lt!609798) (is-MissingZero!10178 lt!609798) (not (is-MissingVacant!10178 lt!609798)) (and (bvsge (index!43085 lt!609798) #b00000000000000000000000000000000) (bvslt (index!43085 lt!609798) (size!46364 a!2938)))) (or (is-Undefined!10178 lt!609798) (ite (is-Found!10178 lt!609798) (= (select (arr!45813 a!2938) (index!43083 lt!609798)) (select (arr!45813 a!2938) startIndex!16)) (ite (is-MissingZero!10178 lt!609798) (= (select (arr!45813 a!2938) (index!43082 lt!609798)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10178 lt!609798) (= (select (arr!45813 a!2938) (index!43085 lt!609798)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!785867 () SeekEntryResult!10178)

(assert (=> d!149463 (= lt!609798 e!785867)))

(declare-fun c!128930 () Bool)

(declare-fun lt!609799 () SeekEntryResult!10178)

(assert (=> d!149463 (= c!128930 (and (is-Intermediate!10178 lt!609799) (undefined!10990 lt!609799)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94882 (_ BitVec 32)) SeekEntryResult!10178)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!149463 (= lt!609799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45813 a!2938) startIndex!16) mask!2987) (select (arr!45813 a!2938) startIndex!16) a!2938 mask!2987))))

(assert (=> d!149463 (validMask!0 mask!2987)))

(assert (=> d!149463 (= (seekEntryOrOpen!0 (select (arr!45813 a!2938) startIndex!16) a!2938 mask!2987) lt!609798)))

(declare-fun b!1387310 () Bool)

(declare-fun e!785866 () SeekEntryResult!10178)

(assert (=> b!1387310 (= e!785867 e!785866)))

(declare-fun lt!609797 () (_ BitVec 64))

(assert (=> b!1387310 (= lt!609797 (select (arr!45813 a!2938) (index!43084 lt!609799)))))

(declare-fun c!128928 () Bool)

(assert (=> b!1387310 (= c!128928 (= lt!609797 (select (arr!45813 a!2938) startIndex!16)))))

(declare-fun b!1387311 () Bool)

(declare-fun e!785865 () SeekEntryResult!10178)

(assert (=> b!1387311 (= e!785865 (MissingZero!10178 (index!43084 lt!609799)))))

(declare-fun b!1387312 () Bool)

(assert (=> b!1387312 (= e!785866 (Found!10178 (index!43084 lt!609799)))))

(declare-fun b!1387313 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94882 (_ BitVec 32)) SeekEntryResult!10178)

(assert (=> b!1387313 (= e!785865 (seekKeyOrZeroReturnVacant!0 (x!124694 lt!609799) (index!43084 lt!609799) (index!43084 lt!609799) (select (arr!45813 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1387314 () Bool)

(assert (=> b!1387314 (= e!785867 Undefined!10178)))

(declare-fun b!1387315 () Bool)

(declare-fun c!128929 () Bool)

(assert (=> b!1387315 (= c!128929 (= lt!609797 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1387315 (= e!785866 e!785865)))

(assert (= (and d!149463 c!128930) b!1387314))

(assert (= (and d!149463 (not c!128930)) b!1387310))

(assert (= (and b!1387310 c!128928) b!1387312))

(assert (= (and b!1387310 (not c!128928)) b!1387315))

(assert (= (and b!1387315 c!128929) b!1387311))

(assert (= (and b!1387315 (not c!128929)) b!1387313))

(assert (=> d!149463 m!1272631))

(assert (=> d!149463 m!1272635))

(declare-fun m!1272877 () Bool)

(assert (=> d!149463 m!1272877))

(assert (=> d!149463 m!1272877))

(assert (=> d!149463 m!1272635))

(declare-fun m!1272879 () Bool)

(assert (=> d!149463 m!1272879))

(declare-fun m!1272881 () Bool)

(assert (=> d!149463 m!1272881))

(declare-fun m!1272883 () Bool)

(assert (=> d!149463 m!1272883))

(declare-fun m!1272885 () Bool)

(assert (=> d!149463 m!1272885))

(declare-fun m!1272887 () Bool)

(assert (=> b!1387310 m!1272887))

(assert (=> b!1387313 m!1272635))

(declare-fun m!1272889 () Bool)

(assert (=> b!1387313 m!1272889))

(assert (=> b!1387105 d!149463))

(declare-fun d!149465 () Bool)

(declare-fun lt!609801 () SeekEntryResult!10178)

(assert (=> d!149465 (and (or (is-Undefined!10178 lt!609801) (not (is-Found!10178 lt!609801)) (and (bvsge (index!43083 lt!609801) #b00000000000000000000000000000000) (bvslt (index!43083 lt!609801) (size!46364 lt!609683)))) (or (is-Undefined!10178 lt!609801) (is-Found!10178 lt!609801) (not (is-MissingZero!10178 lt!609801)) (and (bvsge (index!43082 lt!609801) #b00000000000000000000000000000000) (bvslt (index!43082 lt!609801) (size!46364 lt!609683)))) (or (is-Undefined!10178 lt!609801) (is-Found!10178 lt!609801) (is-MissingZero!10178 lt!609801) (not (is-MissingVacant!10178 lt!609801)) (and (bvsge (index!43085 lt!609801) #b00000000000000000000000000000000) (bvslt (index!43085 lt!609801) (size!46364 lt!609683)))) (or (is-Undefined!10178 lt!609801) (ite (is-Found!10178 lt!609801) (= (select (arr!45813 lt!609683) (index!43083 lt!609801)) (select (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite (is-MissingZero!10178 lt!609801) (= (select (arr!45813 lt!609683) (index!43082 lt!609801)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10178 lt!609801) (= (select (arr!45813 lt!609683) (index!43085 lt!609801)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!785870 () SeekEntryResult!10178)

(assert (=> d!149465 (= lt!609801 e!785870)))

(declare-fun c!128933 () Bool)

(declare-fun lt!609802 () SeekEntryResult!10178)

(assert (=> d!149465 (= c!128933 (and (is-Intermediate!10178 lt!609802) (undefined!10990 lt!609802)))))

(assert (=> d!149465 (= lt!609802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609683 mask!2987))))

(assert (=> d!149465 (validMask!0 mask!2987)))

(assert (=> d!149465 (= (seekEntryOrOpen!0 (select (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609683 mask!2987) lt!609801)))

(declare-fun b!1387316 () Bool)

(declare-fun e!785869 () SeekEntryResult!10178)

(assert (=> b!1387316 (= e!785870 e!785869)))

(declare-fun lt!609800 () (_ BitVec 64))

(assert (=> b!1387316 (= lt!609800 (select (arr!45813 lt!609683) (index!43084 lt!609802)))))

(declare-fun c!128931 () Bool)

(assert (=> b!1387316 (= c!128931 (= lt!609800 (select (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1387317 () Bool)

(declare-fun e!785868 () SeekEntryResult!10178)

(assert (=> b!1387317 (= e!785868 (MissingZero!10178 (index!43084 lt!609802)))))

(declare-fun b!1387318 () Bool)

(assert (=> b!1387318 (= e!785869 (Found!10178 (index!43084 lt!609802)))))

(declare-fun b!1387319 () Bool)

(assert (=> b!1387319 (= e!785868 (seekKeyOrZeroReturnVacant!0 (x!124694 lt!609802) (index!43084 lt!609802) (index!43084 lt!609802) (select (store (arr!45813 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609683 mask!2987))))

(declare-fun b!1387320 () Bool)

(assert (=> b!1387320 (= e!785870 Undefined!10178)))

(declare-fun b!1387321 () Bool)

(declare-fun c!128932 () Bool)

(assert (=> b!1387321 (= c!128932 (= lt!609800 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1387321 (= e!785869 e!785868)))

(assert (= (and d!149465 c!128933) b!1387320))

(assert (= (and d!149465 (not c!128933)) b!1387316))

(assert (= (and b!1387316 c!128931) b!1387318))

(assert (= (and b!1387316 (not c!128931)) b!1387321))

(assert (= (and b!1387321 c!128932) b!1387317))

(assert (= (and b!1387321 (not c!128932)) b!1387319))

(assert (=> d!149465 m!1272631))

(assert (=> d!149465 m!1272643))

(declare-fun m!1272891 () Bool)

(assert (=> d!149465 m!1272891))

(assert (=> d!149465 m!1272891))

(assert (=> d!149465 m!1272643))

(declare-fun m!1272893 () Bool)

(assert (=> d!149465 m!1272893))

(declare-fun m!1272895 () Bool)

(assert (=> d!149465 m!1272895))

(declare-fun m!1272897 () Bool)

(assert (=> d!149465 m!1272897))

(declare-fun m!1272899 () Bool)

(assert (=> d!149465 m!1272899))

(declare-fun m!1272901 () Bool)

(assert (=> b!1387316 m!1272901))

(assert (=> b!1387319 m!1272643))

(declare-fun m!1272903 () Bool)

(assert (=> b!1387319 m!1272903))

(assert (=> b!1387105 d!149465))

(push 1)

(assert (not d!149411))

(assert (not b!1387297))

(assert (not d!149465))

(assert (not d!149441))

(assert (not b!1387319))

(assert (not b!1387174))

(assert (not b!1387252))

(assert (not bm!66571))

(assert (not b!1387253))

(assert (not b!1387313))

(assert (not d!149463))

(assert (not b!1387162))

(assert (not b!1387261))

(assert (not bm!66560))

(assert (not b!1387159))

(assert (not bm!66559))

(assert (not bm!66570))

(assert (not b!1387176))

(assert (not b!1387158))

(assert (not d!149447))

(assert (not b!1387177))

(assert (not b!1387163))

(assert (not bm!66562))

(assert (not b!1387255))

(assert (not b!1387260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

