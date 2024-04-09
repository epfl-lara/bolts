; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104046 () Bool)

(assert start!104046)

(declare-fun b!1244505 () Bool)

(declare-fun res!830235 () Bool)

(declare-fun e!705455 () Bool)

(assert (=> b!1244505 (=> (not res!830235) (not e!705455))))

(declare-datatypes ((array!80051 0))(
  ( (array!80052 (arr!38613 (Array (_ BitVec 32) (_ BitVec 64))) (size!39150 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80051)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27594 0))(
  ( (Nil!27591) (Cons!27590 (h!28799 (_ BitVec 64)) (t!41070 List!27594)) )
))
(declare-fun arrayNoDuplicates!0 (array!80051 (_ BitVec 32) List!27594) Bool)

(assert (=> b!1244505 (= res!830235 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27591))))

(declare-fun b!1244506 () Bool)

(declare-fun res!830231 () Bool)

(declare-fun e!705457 () Bool)

(assert (=> b!1244506 (=> (not res!830231) (not e!705457))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244506 (= res!830231 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39150 a!3892)) (not (= newFrom!287 (size!39150 a!3892)))))))

(declare-fun b!1244507 () Bool)

(declare-datatypes ((Unit!41329 0))(
  ( (Unit!41330) )
))
(declare-fun e!705458 () Unit!41329)

(declare-fun lt!562725 () Unit!41329)

(assert (=> b!1244507 (= e!705458 lt!562725)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80051 List!27594 List!27594 (_ BitVec 32)) Unit!41329)

(assert (=> b!1244507 (= lt!562725 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27590 (select (arr!38613 a!3892) from!3270) Nil!27591) Nil!27591 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244507 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27591)))

(declare-fun b!1244508 () Bool)

(declare-fun Unit!41331 () Unit!41329)

(assert (=> b!1244508 (= e!705458 Unit!41331)))

(declare-fun b!1244509 () Bool)

(declare-fun e!705454 () Bool)

(assert (=> b!1244509 (= e!705455 (not e!705454))))

(declare-fun res!830233 () Bool)

(assert (=> b!1244509 (=> res!830233 e!705454)))

(assert (=> b!1244509 (= res!830233 (bvslt newFrom!287 #b00000000000000000000000000000000))))

(assert (=> b!1244509 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27591)))

(declare-fun lt!562724 () Unit!41329)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80051 (_ BitVec 32) (_ BitVec 32)) Unit!41329)

(assert (=> b!1244509 (= lt!562724 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244510 () Bool)

(assert (=> b!1244510 (= e!705457 e!705455)))

(declare-fun res!830230 () Bool)

(assert (=> b!1244510 (=> (not res!830230) (not e!705455))))

(assert (=> b!1244510 (= res!830230 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562726 () Unit!41329)

(assert (=> b!1244510 (= lt!562726 e!705458)))

(declare-fun c!121825 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244510 (= c!121825 (validKeyInArray!0 (select (arr!38613 a!3892) from!3270)))))

(declare-fun res!830236 () Bool)

(assert (=> start!104046 (=> (not res!830236) (not e!705457))))

(assert (=> start!104046 (= res!830236 (and (bvslt (size!39150 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39150 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39150 a!3892))))))

(assert (=> start!104046 e!705457))

(declare-fun array_inv!29389 (array!80051) Bool)

(assert (=> start!104046 (array_inv!29389 a!3892)))

(assert (=> start!104046 true))

(declare-fun b!1244511 () Bool)

(declare-fun e!705453 () Bool)

(assert (=> b!1244511 (= e!705454 e!705453)))

(declare-fun res!830229 () Bool)

(assert (=> b!1244511 (=> (not res!830229) (not e!705453))))

(declare-fun contains!7445 (List!27594 (_ BitVec 64)) Bool)

(assert (=> b!1244511 (= res!830229 (not (contains!7445 Nil!27591 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1244512 () Bool)

(assert (=> b!1244512 (= e!705453 (not (contains!7445 Nil!27591 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1244513 () Bool)

(declare-fun res!830234 () Bool)

(assert (=> b!1244513 (=> (not res!830234) (not e!705457))))

(assert (=> b!1244513 (= res!830234 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27591))))

(declare-fun b!1244514 () Bool)

(declare-fun res!830232 () Bool)

(assert (=> b!1244514 (=> res!830232 e!705454)))

(declare-fun noDuplicate!2035 (List!27594) Bool)

(assert (=> b!1244514 (= res!830232 (not (noDuplicate!2035 Nil!27591)))))

(assert (= (and start!104046 res!830236) b!1244513))

(assert (= (and b!1244513 res!830234) b!1244506))

(assert (= (and b!1244506 res!830231) b!1244510))

(assert (= (and b!1244510 c!121825) b!1244507))

(assert (= (and b!1244510 (not c!121825)) b!1244508))

(assert (= (and b!1244510 res!830230) b!1244505))

(assert (= (and b!1244505 res!830235) b!1244509))

(assert (= (and b!1244509 (not res!830233)) b!1244514))

(assert (= (and b!1244514 (not res!830232)) b!1244511))

(assert (= (and b!1244511 res!830229) b!1244512))

(declare-fun m!1146783 () Bool)

(assert (=> b!1244510 m!1146783))

(assert (=> b!1244510 m!1146783))

(declare-fun m!1146785 () Bool)

(assert (=> b!1244510 m!1146785))

(declare-fun m!1146787 () Bool)

(assert (=> b!1244511 m!1146787))

(assert (=> b!1244507 m!1146783))

(declare-fun m!1146789 () Bool)

(assert (=> b!1244507 m!1146789))

(declare-fun m!1146791 () Bool)

(assert (=> b!1244507 m!1146791))

(declare-fun m!1146793 () Bool)

(assert (=> start!104046 m!1146793))

(declare-fun m!1146795 () Bool)

(assert (=> b!1244513 m!1146795))

(declare-fun m!1146797 () Bool)

(assert (=> b!1244509 m!1146797))

(declare-fun m!1146799 () Bool)

(assert (=> b!1244509 m!1146799))

(assert (=> b!1244505 m!1146791))

(declare-fun m!1146801 () Bool)

(assert (=> b!1244512 m!1146801))

(declare-fun m!1146803 () Bool)

(assert (=> b!1244514 m!1146803))

(push 1)

(assert (not start!104046))

(assert (not b!1244510))

(assert (not b!1244507))

(assert (not b!1244511))

(assert (not b!1244513))

(assert (not b!1244514))

(assert (not b!1244512))

(assert (not b!1244509))

(assert (not b!1244505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137083 () Bool)

(declare-fun res!830301 () Bool)

(declare-fun e!705516 () Bool)

(assert (=> d!137083 (=> res!830301 e!705516)))

(assert (=> d!137083 (= res!830301 (bvsge from!3270 (size!39150 a!3892)))))

(assert (=> d!137083 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27591) e!705516)))

(declare-fun bm!61422 () Bool)

(declare-fun c!121837 () Bool)

(declare-fun call!61425 () Bool)

(assert (=> bm!61422 (= call!61425 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121837 (Cons!27590 (select (arr!38613 a!3892) from!3270) Nil!27591) Nil!27591)))))

(declare-fun b!1244600 () Bool)

(declare-fun e!705517 () Bool)

(assert (=> b!1244600 (= e!705517 call!61425)))

(declare-fun b!1244601 () Bool)

(declare-fun e!705518 () Bool)

(assert (=> b!1244601 (= e!705518 e!705517)))

(assert (=> b!1244601 (= c!121837 (validKeyInArray!0 (select (arr!38613 a!3892) from!3270)))))

(declare-fun b!1244602 () Bool)

(assert (=> b!1244602 (= e!705516 e!705518)))

(declare-fun res!830302 () Bool)

(assert (=> b!1244602 (=> (not res!830302) (not e!705518))))

(declare-fun e!705515 () Bool)

(assert (=> b!1244602 (= res!830302 (not e!705515))))

(declare-fun res!830300 () Bool)

(assert (=> b!1244602 (=> (not res!830300) (not e!705515))))

(assert (=> b!1244602 (= res!830300 (validKeyInArray!0 (select (arr!38613 a!3892) from!3270)))))

(declare-fun b!1244603 () Bool)

(assert (=> b!1244603 (= e!705517 call!61425)))

(declare-fun b!1244604 () Bool)

(assert (=> b!1244604 (= e!705515 (contains!7445 Nil!27591 (select (arr!38613 a!3892) from!3270)))))

(assert (= (and d!137083 (not res!830301)) b!1244602))

(assert (= (and b!1244602 res!830300) b!1244604))

(assert (= (and b!1244602 res!830302) b!1244601))

(assert (= (and b!1244601 c!121837) b!1244603))

(assert (= (and b!1244601 (not c!121837)) b!1244600))

(assert (= (or b!1244603 b!1244600) bm!61422))

(assert (=> bm!61422 m!1146783))

(declare-fun m!1146857 () Bool)

(assert (=> bm!61422 m!1146857))

(assert (=> b!1244601 m!1146783))

(assert (=> b!1244601 m!1146783))

(assert (=> b!1244601 m!1146785))

(assert (=> b!1244602 m!1146783))

(assert (=> b!1244602 m!1146783))

(assert (=> b!1244602 m!1146785))

(assert (=> b!1244604 m!1146783))

(assert (=> b!1244604 m!1146783))

(declare-fun m!1146859 () Bool)

(assert (=> b!1244604 m!1146859))

(assert (=> b!1244513 d!137083))

(declare-fun d!137089 () Bool)

(assert (=> d!137089 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27591)))

(declare-fun lt!562753 () Unit!41329)

(declare-fun choose!80 (array!80051 List!27594 List!27594 (_ BitVec 32)) Unit!41329)

(assert (=> d!137089 (= lt!562753 (choose!80 a!3892 (Cons!27590 (select (arr!38613 a!3892) from!3270) Nil!27591) Nil!27591 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> d!137089 (bvslt (size!39150 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137089 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27590 (select (arr!38613 a!3892) from!3270) Nil!27591) Nil!27591 (bvadd #b00000000000000000000000000000001 from!3270)) lt!562753)))

(declare-fun bs!35043 () Bool)

(assert (= bs!35043 d!137089))

(assert (=> bs!35043 m!1146791))

(declare-fun m!1146869 () Bool)

(assert (=> bs!35043 m!1146869))

(assert (=> b!1244507 d!137089))

(declare-fun d!137099 () Bool)

(declare-fun res!830307 () Bool)

(declare-fun e!705524 () Bool)

(assert (=> d!137099 (=> res!830307 e!705524)))

(assert (=> d!137099 (= res!830307 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39150 a!3892)))))

(assert (=> d!137099 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27591) e!705524)))

(declare-fun call!61427 () Bool)

(declare-fun bm!61424 () Bool)

(declare-fun c!121839 () Bool)

(assert (=> bm!61424 (= call!61427 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121839 (Cons!27590 (select (arr!38613 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27591) Nil!27591)))))

(declare-fun b!1244610 () Bool)

(declare-fun e!705525 () Bool)

(assert (=> b!1244610 (= e!705525 call!61427)))

(declare-fun b!1244611 () Bool)

(declare-fun e!705526 () Bool)

(assert (=> b!1244611 (= e!705526 e!705525)))

(assert (=> b!1244611 (= c!121839 (validKeyInArray!0 (select (arr!38613 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244612 () Bool)

(assert (=> b!1244612 (= e!705524 e!705526)))

(declare-fun res!830308 () Bool)

(assert (=> b!1244612 (=> (not res!830308) (not e!705526))))

(declare-fun e!705523 () Bool)

(assert (=> b!1244612 (= res!830308 (not e!705523))))

(declare-fun res!830306 () Bool)

(assert (=> b!1244612 (=> (not res!830306) (not e!705523))))

(assert (=> b!1244612 (= res!830306 (validKeyInArray!0 (select (arr!38613 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244613 () Bool)

(assert (=> b!1244613 (= e!705525 call!61427)))

(declare-fun b!1244614 () Bool)

(assert (=> b!1244614 (= e!705523 (contains!7445 Nil!27591 (select (arr!38613 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(assert (= (and d!137099 (not res!830307)) b!1244612))

(assert (= (and b!1244612 res!830306) b!1244614))

(assert (= (and b!1244612 res!830308) b!1244611))

(assert (= (and b!1244611 c!121839) b!1244613))

(assert (= (and b!1244611 (not c!121839)) b!1244610))

(assert (= (or b!1244613 b!1244610) bm!61424))

(declare-fun m!1146871 () Bool)

(assert (=> bm!61424 m!1146871))

(declare-fun m!1146873 () Bool)

(assert (=> bm!61424 m!1146873))

(assert (=> b!1244611 m!1146871))

(assert (=> b!1244611 m!1146871))

(declare-fun m!1146875 () Bool)

(assert (=> b!1244611 m!1146875))

(assert (=> b!1244612 m!1146871))

(assert (=> b!1244612 m!1146871))

(assert (=> b!1244612 m!1146875))

(assert (=> b!1244614 m!1146871))

(assert (=> b!1244614 m!1146871))

(declare-fun m!1146877 () Bool)

(assert (=> b!1244614 m!1146877))

(assert (=> b!1244507 d!137099))

(declare-fun d!137101 () Bool)

(declare-fun res!830310 () Bool)

(declare-fun e!705528 () Bool)

(assert (=> d!137101 (=> res!830310 e!705528)))

(assert (=> d!137101 (= res!830310 (bvsge newFrom!287 (size!39150 a!3892)))))

(assert (=> d!137101 (= (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27591) e!705528)))

(declare-fun c!121840 () Bool)

(declare-fun call!61428 () Bool)

(declare-fun bm!61425 () Bool)

(assert (=> bm!61425 (= call!61428 (arrayNoDuplicates!0 a!3892 (bvadd newFrom!287 #b00000000000000000000000000000001) (ite c!121840 (Cons!27590 (select (arr!38613 a!3892) newFrom!287) Nil!27591) Nil!27591)))))

(declare-fun b!1244615 () Bool)

(declare-fun e!705529 () Bool)

(assert (=> b!1244615 (= e!705529 call!61428)))

(declare-fun b!1244616 () Bool)

(declare-fun e!705530 () Bool)

(assert (=> b!1244616 (= e!705530 e!705529)))

(assert (=> b!1244616 (= c!121840 (validKeyInArray!0 (select (arr!38613 a!3892) newFrom!287)))))

(declare-fun b!1244617 () Bool)

(assert (=> b!1244617 (= e!705528 e!705530)))

(declare-fun res!830311 () Bool)

(assert (=> b!1244617 (=> (not res!830311) (not e!705530))))

(declare-fun e!705527 () Bool)

(assert (=> b!1244617 (= res!830311 (not e!705527))))

(declare-fun res!830309 () Bool)

(assert (=> b!1244617 (=> (not res!830309) (not e!705527))))

(assert (=> b!1244617 (= res!830309 (validKeyInArray!0 (select (arr!38613 a!3892) newFrom!287)))))

(declare-fun b!1244618 () Bool)

(assert (=> b!1244618 (= e!705529 call!61428)))

(declare-fun b!1244619 () Bool)

(assert (=> b!1244619 (= e!705527 (contains!7445 Nil!27591 (select (arr!38613 a!3892) newFrom!287)))))

(assert (= (and d!137101 (not res!830310)) b!1244617))

(assert (= (and b!1244617 res!830309) b!1244619))

(assert (= (and b!1244617 res!830311) b!1244616))

(assert (= (and b!1244616 c!121840) b!1244618))

(assert (= (and b!1244616 (not c!121840)) b!1244615))

(assert (= (or b!1244618 b!1244615) bm!61425))

(declare-fun m!1146879 () Bool)

(assert (=> bm!61425 m!1146879))

(declare-fun m!1146881 () Bool)

(assert (=> bm!61425 m!1146881))

(assert (=> b!1244616 m!1146879))

(assert (=> b!1244616 m!1146879))

(declare-fun m!1146883 () Bool)

(assert (=> b!1244616 m!1146883))

(assert (=> b!1244617 m!1146879))

(assert (=> b!1244617 m!1146879))

(assert (=> b!1244617 m!1146883))

(assert (=> b!1244619 m!1146879))

(assert (=> b!1244619 m!1146879))

(declare-fun m!1146885 () Bool)

(assert (=> b!1244619 m!1146885))

(assert (=> b!1244509 d!137101))

(declare-fun d!137103 () Bool)

(assert (=> d!137103 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27591)))

(declare-fun lt!562759 () Unit!41329)

(declare-fun choose!39 (array!80051 (_ BitVec 32) (_ BitVec 32)) Unit!41329)

(assert (=> d!137103 (= lt!562759 (choose!39 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(assert (=> d!137103 (bvslt (size!39150 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137103 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287) lt!562759)))

(declare-fun bs!35044 () Bool)

(assert (= bs!35044 d!137103))

(assert (=> bs!35044 m!1146797))

(declare-fun m!1146893 () Bool)

(assert (=> bs!35044 m!1146893))

(assert (=> b!1244509 d!137103))

(declare-fun d!137109 () Bool)

(declare-fun res!830337 () Bool)

(declare-fun e!705561 () Bool)

(assert (=> d!137109 (=> res!830337 e!705561)))

(assert (=> d!137109 (= res!830337 (is-Nil!27591 Nil!27591))))

(assert (=> d!137109 (= (noDuplicate!2035 Nil!27591) e!705561)))

(declare-fun b!1244655 () Bool)

(declare-fun e!705562 () Bool)

(assert (=> b!1244655 (= e!705561 e!705562)))

(declare-fun res!830338 () Bool)

(assert (=> b!1244655 (=> (not res!830338) (not e!705562))))

(assert (=> b!1244655 (= res!830338 (not (contains!7445 (t!41070 Nil!27591) (h!28799 Nil!27591))))))

(declare-fun b!1244656 () Bool)

(assert (=> b!1244656 (= e!705562 (noDuplicate!2035 (t!41070 Nil!27591)))))

(assert (= (and d!137109 (not res!830337)) b!1244655))

(assert (= (and b!1244655 res!830338) b!1244656))

(declare-fun m!1146913 () Bool)

(assert (=> b!1244655 m!1146913))

(declare-fun m!1146917 () Bool)

(assert (=> b!1244656 m!1146917))

(assert (=> b!1244514 d!137109))

(assert (=> b!1244505 d!137099))

(declare-fun d!137117 () Bool)

(assert (=> d!137117 (= (array_inv!29389 a!3892) (bvsge (size!39150 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104046 d!137117))

(declare-fun d!137121 () Bool)

(assert (=> d!137121 (= (validKeyInArray!0 (select (arr!38613 a!3892) from!3270)) (and (not (= (select (arr!38613 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38613 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1244510 d!137121))

(declare-fun d!137123 () Bool)

(declare-fun lt!562769 () Bool)

(declare-fun content!619 (List!27594) (Set (_ BitVec 64)))

(assert (=> d!137123 (= lt!562769 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!619 Nil!27591)))))

(declare-fun e!705586 () Bool)

(assert (=> d!137123 (= lt!562769 e!705586)))

(declare-fun res!830361 () Bool)

(assert (=> d!137123 (=> (not res!830361) (not e!705586))))

(assert (=> d!137123 (= res!830361 (is-Cons!27590 Nil!27591))))

(assert (=> d!137123 (= (contains!7445 Nil!27591 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562769)))

(declare-fun b!1244680 () Bool)

(declare-fun e!705585 () Bool)

(assert (=> b!1244680 (= e!705586 e!705585)))

(declare-fun res!830360 () Bool)

(assert (=> b!1244680 (=> res!830360 e!705585)))

(assert (=> b!1244680 (= res!830360 (= (h!28799 Nil!27591) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244681 () Bool)

(assert (=> b!1244681 (= e!705585 (contains!7445 (t!41070 Nil!27591) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137123 res!830361) b!1244680))

