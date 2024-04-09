; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118804 () Bool)

(assert start!118804)

(declare-fun res!928554 () Bool)

(declare-fun e!786162 () Bool)

(assert (=> start!118804 (=> (not res!928554) (not e!786162))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118804 (= res!928554 (validMask!0 mask!2987))))

(assert (=> start!118804 e!786162))

(assert (=> start!118804 true))

(declare-datatypes ((array!94893 0))(
  ( (array!94894 (arr!45817 (Array (_ BitVec 32) (_ BitVec 64))) (size!46368 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94893)

(declare-fun array_inv!34762 (array!94893) Bool)

(assert (=> start!118804 (array_inv!34762 a!2938)))

(declare-fun b!1387804 () Bool)

(declare-datatypes ((Unit!46345 0))(
  ( (Unit!46346) )
))
(declare-fun e!786161 () Unit!46345)

(declare-fun lt!610021 () Unit!46345)

(assert (=> b!1387804 (= e!786161 lt!610021)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!610018 () Unit!46345)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46345)

(assert (=> b!1387804 (= lt!610018 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun lt!610020 () array!94893)

(declare-datatypes ((SeekEntryResult!10182 0))(
  ( (MissingZero!10182 (index!43098 (_ BitVec 32))) (Found!10182 (index!43099 (_ BitVec 32))) (Intermediate!10182 (undefined!10994 Bool) (index!43100 (_ BitVec 32)) (x!124723 (_ BitVec 32))) (Undefined!10182) (MissingVacant!10182 (index!43101 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94893 (_ BitVec 32)) SeekEntryResult!10182)

(assert (=> b!1387804 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610020 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46345)

(assert (=> b!1387804 (= lt!610021 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94893 (_ BitVec 32)) Bool)

(assert (=> b!1387804 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387805 () Bool)

(declare-fun res!928556 () Bool)

(assert (=> b!1387805 (=> (not res!928556) (not e!786162))))

(declare-datatypes ((List!32525 0))(
  ( (Nil!32522) (Cons!32521 (h!33733 (_ BitVec 64)) (t!47226 List!32525)) )
))
(declare-fun arrayNoDuplicates!0 (array!94893 (_ BitVec 32) List!32525) Bool)

(assert (=> b!1387805 (= res!928556 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32522))))

(declare-fun e!786163 () Bool)

(declare-fun b!1387806 () Bool)

(assert (=> b!1387806 (= e!786163 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!610020 mask!2987)))))

(declare-fun b!1387807 () Bool)

(declare-fun res!928552 () Bool)

(assert (=> b!1387807 (=> (not res!928552) (not e!786162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387807 (= res!928552 (validKeyInArray!0 (select (arr!45817 a!2938) i!1065)))))

(declare-fun b!1387808 () Bool)

(assert (=> b!1387808 (= e!786162 e!786163)))

(declare-fun res!928557 () Bool)

(assert (=> b!1387808 (=> (not res!928557) (not e!786163))))

(assert (=> b!1387808 (= res!928557 (bvsge startIndex!16 (bvsub (size!46368 a!2938) #b00000000000000000000000000000001)))))

(declare-fun lt!610019 () Unit!46345)

(assert (=> b!1387808 (= lt!610019 e!786161)))

(declare-fun c!129071 () Bool)

(declare-fun e!786164 () Bool)

(assert (=> b!1387808 (= c!129071 e!786164)))

(declare-fun res!928555 () Bool)

(assert (=> b!1387808 (=> (not res!928555) (not e!786164))))

(assert (=> b!1387808 (= res!928555 (not (= startIndex!16 i!1065)))))

(assert (=> b!1387808 (= lt!610020 (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)))))

(declare-fun b!1387809 () Bool)

(declare-fun res!928553 () Bool)

(assert (=> b!1387809 (=> (not res!928553) (not e!786162))))

(assert (=> b!1387809 (= res!928553 (and (not (= (select (arr!45817 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45817 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387810 () Bool)

(declare-fun res!928550 () Bool)

(assert (=> b!1387810 (=> (not res!928550) (not e!786162))))

(assert (=> b!1387810 (= res!928550 (and (= (size!46368 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46368 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46368 a!2938))))))

(declare-fun b!1387811 () Bool)

(declare-fun res!928551 () Bool)

(assert (=> b!1387811 (=> (not res!928551) (not e!786162))))

(assert (=> b!1387811 (= res!928551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387812 () Bool)

(declare-fun Unit!46347 () Unit!46345)

(assert (=> b!1387812 (= e!786161 Unit!46347)))

(declare-fun b!1387813 () Bool)

(assert (=> b!1387813 (= e!786164 (validKeyInArray!0 (select (arr!45817 a!2938) startIndex!16)))))

(assert (= (and start!118804 res!928554) b!1387810))

(assert (= (and b!1387810 res!928550) b!1387807))

(assert (= (and b!1387807 res!928552) b!1387805))

(assert (= (and b!1387805 res!928556) b!1387811))

(assert (= (and b!1387811 res!928551) b!1387809))

(assert (= (and b!1387809 res!928553) b!1387808))

(assert (= (and b!1387808 res!928555) b!1387813))

(assert (= (and b!1387808 c!129071) b!1387804))

(assert (= (and b!1387808 (not c!129071)) b!1387812))

(assert (= (and b!1387808 res!928557) b!1387806))

(declare-fun m!1273517 () Bool)

(assert (=> b!1387813 m!1273517))

(assert (=> b!1387813 m!1273517))

(declare-fun m!1273519 () Bool)

(assert (=> b!1387813 m!1273519))

(declare-fun m!1273521 () Bool)

(assert (=> b!1387807 m!1273521))

(assert (=> b!1387807 m!1273521))

(declare-fun m!1273523 () Bool)

(assert (=> b!1387807 m!1273523))

(declare-fun m!1273525 () Bool)

(assert (=> b!1387806 m!1273525))

(declare-fun m!1273527 () Bool)

(assert (=> b!1387804 m!1273527))

(declare-fun m!1273529 () Bool)

(assert (=> b!1387804 m!1273529))

(declare-fun m!1273531 () Bool)

(assert (=> b!1387804 m!1273531))

(assert (=> b!1387804 m!1273529))

(declare-fun m!1273533 () Bool)

(assert (=> b!1387804 m!1273533))

(declare-fun m!1273535 () Bool)

(assert (=> b!1387804 m!1273535))

(assert (=> b!1387804 m!1273517))

(declare-fun m!1273537 () Bool)

(assert (=> b!1387804 m!1273537))

(assert (=> b!1387804 m!1273517))

(declare-fun m!1273539 () Bool)

(assert (=> b!1387804 m!1273539))

(assert (=> b!1387809 m!1273521))

(assert (=> b!1387808 m!1273531))

(declare-fun m!1273541 () Bool)

(assert (=> start!118804 m!1273541))

(declare-fun m!1273543 () Bool)

(assert (=> start!118804 m!1273543))

(declare-fun m!1273545 () Bool)

(assert (=> b!1387811 m!1273545))

(declare-fun m!1273547 () Bool)

(assert (=> b!1387805 m!1273547))

(push 1)

(assert (not b!1387804))

(assert (not b!1387806))

(assert (not b!1387805))

(assert (not b!1387811))

(assert (not start!118804))

(assert (not b!1387807))

(assert (not b!1387813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1387926 () Bool)

(declare-fun e!786232 () Bool)

(declare-fun call!66606 () Bool)

(assert (=> b!1387926 (= e!786232 call!66606)))

(declare-fun b!1387927 () Bool)

(declare-fun e!786233 () Bool)

(declare-fun contains!9759 (List!32525 (_ BitVec 64)) Bool)

(assert (=> b!1387927 (= e!786233 (contains!9759 Nil!32522 (select (arr!45817 a!2938) #b00000000000000000000000000000000)))))

(declare-fun d!149665 () Bool)

(declare-fun res!928624 () Bool)

(declare-fun e!786230 () Bool)

(assert (=> d!149665 (=> res!928624 e!786230)))

(assert (=> d!149665 (= res!928624 (bvsge #b00000000000000000000000000000000 (size!46368 a!2938)))))

(assert (=> d!149665 (= (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32522) e!786230)))

(declare-fun b!1387928 () Bool)

(assert (=> b!1387928 (= e!786232 call!66606)))

(declare-fun b!1387929 () Bool)

(declare-fun e!786231 () Bool)

(assert (=> b!1387929 (= e!786231 e!786232)))

(declare-fun c!129095 () Bool)

(assert (=> b!1387929 (= c!129095 (validKeyInArray!0 (select (arr!45817 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387930 () Bool)

(assert (=> b!1387930 (= e!786230 e!786231)))

(declare-fun res!928626 () Bool)

(assert (=> b!1387930 (=> (not res!928626) (not e!786231))))

(assert (=> b!1387930 (= res!928626 (not e!786233))))

(declare-fun res!928625 () Bool)

(assert (=> b!1387930 (=> (not res!928625) (not e!786233))))

(assert (=> b!1387930 (= res!928625 (validKeyInArray!0 (select (arr!45817 a!2938) #b00000000000000000000000000000000)))))

(declare-fun bm!66603 () Bool)

(assert (=> bm!66603 (= call!66606 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129095 (Cons!32521 (select (arr!45817 a!2938) #b00000000000000000000000000000000) Nil!32522) Nil!32522)))))

(assert (= (and d!149665 (not res!928624)) b!1387930))

(assert (= (and b!1387930 res!928625) b!1387927))

(assert (= (and b!1387930 res!928626) b!1387929))

(assert (= (and b!1387929 c!129095) b!1387928))

(assert (= (and b!1387929 (not c!129095)) b!1387926))

(assert (= (or b!1387928 b!1387926) bm!66603))

(declare-fun m!1273647 () Bool)

(assert (=> b!1387927 m!1273647))

(assert (=> b!1387927 m!1273647))

(declare-fun m!1273649 () Bool)

(assert (=> b!1387927 m!1273649))

(assert (=> b!1387929 m!1273647))

(assert (=> b!1387929 m!1273647))

(declare-fun m!1273651 () Bool)

(assert (=> b!1387929 m!1273651))

(assert (=> b!1387930 m!1273647))

(assert (=> b!1387930 m!1273647))

(assert (=> b!1387930 m!1273651))

(assert (=> bm!66603 m!1273647))

(declare-fun m!1273653 () Bool)

(assert (=> bm!66603 m!1273653))

(assert (=> b!1387805 d!149665))

(declare-fun b!1387943 () Bool)

(declare-fun e!786245 () Bool)

(declare-fun call!66610 () Bool)

(assert (=> b!1387943 (= e!786245 call!66610)))

(declare-fun b!1387944 () Bool)

(declare-fun e!786243 () Bool)

(declare-fun e!786244 () Bool)

(assert (=> b!1387944 (= e!786243 e!786244)))

(declare-fun c!129099 () Bool)

(assert (=> b!1387944 (= c!129099 (validKeyInArray!0 (select (arr!45817 lt!610020) startIndex!16)))))

(declare-fun bm!66607 () Bool)

(assert (=> bm!66607 (= call!66610 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!610020 mask!2987))))

(declare-fun b!1387945 () Bool)

(assert (=> b!1387945 (= e!786244 call!66610)))

(declare-fun d!149673 () Bool)

(declare-fun res!928634 () Bool)

(assert (=> d!149673 (=> res!928634 e!786243)))

(assert (=> d!149673 (= res!928634 (bvsge startIndex!16 (size!46368 lt!610020)))))

(assert (=> d!149673 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!610020 mask!2987) e!786243)))

(declare-fun b!1387946 () Bool)

(assert (=> b!1387946 (= e!786244 e!786245)))

(declare-fun lt!610089 () (_ BitVec 64))

(assert (=> b!1387946 (= lt!610089 (select (arr!45817 lt!610020) startIndex!16))))

(declare-fun lt!610090 () Unit!46345)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94893 (_ BitVec 64) (_ BitVec 32)) Unit!46345)

(assert (=> b!1387946 (= lt!610090 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610020 lt!610089 startIndex!16))))

(declare-fun arrayContainsKey!0 (array!94893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1387946 (arrayContainsKey!0 lt!610020 lt!610089 #b00000000000000000000000000000000)))

(declare-fun lt!610088 () Unit!46345)

(assert (=> b!1387946 (= lt!610088 lt!610090)))

(declare-fun res!928633 () Bool)

(assert (=> b!1387946 (= res!928633 (= (seekEntryOrOpen!0 (select (arr!45817 lt!610020) startIndex!16) lt!610020 mask!2987) (Found!10182 startIndex!16)))))

(assert (=> b!1387946 (=> (not res!928633) (not e!786245))))

(assert (= (and d!149673 (not res!928634)) b!1387944))

(assert (= (and b!1387944 c!129099) b!1387946))

(assert (= (and b!1387944 (not c!129099)) b!1387945))

(assert (= (and b!1387946 res!928633) b!1387943))

(assert (= (or b!1387943 b!1387945) bm!66607))

(declare-fun m!1273663 () Bool)

(assert (=> b!1387944 m!1273663))

(assert (=> b!1387944 m!1273663))

(declare-fun m!1273665 () Bool)

(assert (=> b!1387944 m!1273665))

(declare-fun m!1273667 () Bool)

(assert (=> bm!66607 m!1273667))

(assert (=> b!1387946 m!1273663))

(declare-fun m!1273669 () Bool)

(assert (=> b!1387946 m!1273669))

(declare-fun m!1273671 () Bool)

(assert (=> b!1387946 m!1273671))

(assert (=> b!1387946 m!1273663))

(declare-fun m!1273673 () Bool)

(assert (=> b!1387946 m!1273673))

(assert (=> b!1387806 d!149673))

(declare-fun b!1387949 () Bool)

(declare-fun e!786250 () Bool)

(declare-fun call!66611 () Bool)

(assert (=> b!1387949 (= e!786250 call!66611)))

(declare-fun b!1387950 () Bool)

(declare-fun e!786248 () Bool)

(declare-fun e!786249 () Bool)

(assert (=> b!1387950 (= e!786248 e!786249)))

(declare-fun c!129100 () Bool)

(assert (=> b!1387950 (= c!129100 (validKeyInArray!0 (select (arr!45817 a!2938) #b00000000000000000000000000000000)))))

(declare-fun bm!66608 () Bool)

(assert (=> bm!66608 (= call!66611 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387951 () Bool)

(assert (=> b!1387951 (= e!786249 call!66611)))

(declare-fun d!149679 () Bool)

(declare-fun res!928638 () Bool)

(assert (=> d!149679 (=> res!928638 e!786248)))

(assert (=> d!149679 (= res!928638 (bvsge #b00000000000000000000000000000000 (size!46368 a!2938)))))

(assert (=> d!149679 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987) e!786248)))

(declare-fun b!1387952 () Bool)

(assert (=> b!1387952 (= e!786249 e!786250)))

(declare-fun lt!610094 () (_ BitVec 64))

(assert (=> b!1387952 (= lt!610094 (select (arr!45817 a!2938) #b00000000000000000000000000000000))))

(declare-fun lt!610095 () Unit!46345)

(assert (=> b!1387952 (= lt!610095 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610094 #b00000000000000000000000000000000))))

(assert (=> b!1387952 (arrayContainsKey!0 a!2938 lt!610094 #b00000000000000000000000000000000)))

(declare-fun lt!610093 () Unit!46345)

(assert (=> b!1387952 (= lt!610093 lt!610095)))

(declare-fun res!928637 () Bool)

(assert (=> b!1387952 (= res!928637 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) (Found!10182 #b00000000000000000000000000000000)))))

(assert (=> b!1387952 (=> (not res!928637) (not e!786250))))

(assert (= (and d!149679 (not res!928638)) b!1387950))

(assert (= (and b!1387950 c!129100) b!1387952))

(assert (= (and b!1387950 (not c!129100)) b!1387951))

(assert (= (and b!1387952 res!928637) b!1387949))

(assert (= (or b!1387949 b!1387951) bm!66608))

(assert (=> b!1387950 m!1273647))

(assert (=> b!1387950 m!1273647))

(assert (=> b!1387950 m!1273651))

(declare-fun m!1273675 () Bool)

(assert (=> bm!66608 m!1273675))

(assert (=> b!1387952 m!1273647))

(declare-fun m!1273677 () Bool)

(assert (=> b!1387952 m!1273677))

(declare-fun m!1273679 () Bool)

(assert (=> b!1387952 m!1273679))

(assert (=> b!1387952 m!1273647))

(declare-fun m!1273681 () Bool)

(assert (=> b!1387952 m!1273681))

(assert (=> b!1387811 d!149679))

(declare-fun d!149681 () Bool)

(assert (=> d!149681 (= (validKeyInArray!0 (select (arr!45817 a!2938) startIndex!16)) (and (not (= (select (arr!45817 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45817 a!2938) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387813 d!149681))

(declare-fun d!149683 () Bool)

(assert (=> d!149683 (= (validKeyInArray!0 (select (arr!45817 a!2938) i!1065)) (and (not (= (select (arr!45817 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45817 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387807 d!149683))

(declare-fun d!149685 () Bool)

(assert (=> d!149685 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun lt!610107 () Unit!46345)

(declare-fun choose!38 (array!94893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46345)

(assert (=> d!149685 (= lt!610107 (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> d!149685 (validMask!0 mask!2987)))

(assert (=> d!149685 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) lt!610107)))

(declare-fun bs!40336 () Bool)

(assert (= bs!40336 d!149685))

(assert (=> bs!40336 m!1273539))

(declare-fun m!1273713 () Bool)

(assert (=> bs!40336 m!1273713))

(assert (=> bs!40336 m!1273541))

(assert (=> b!1387804 d!149685))

(declare-fun b!1387967 () Bool)

(declare-fun e!786263 () Bool)

(declare-fun call!66613 () Bool)

(assert (=> b!1387967 (= e!786263 call!66613)))

(declare-fun b!1387968 () Bool)

(declare-fun e!786261 () Bool)

(declare-fun e!786262 () Bool)

(assert (=> b!1387968 (= e!786261 e!786262)))

(declare-fun c!129105 () Bool)

(assert (=> b!1387968 (= c!129105 (validKeyInArray!0 (select (arr!45817 a!2938) startIndex!16)))))

(declare-fun bm!66610 () Bool)

(assert (=> bm!66610 (= call!66613 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387969 () Bool)

(assert (=> b!1387969 (= e!786262 call!66613)))

(declare-fun d!149693 () Bool)

(declare-fun res!928646 () Bool)

(assert (=> d!149693 (=> res!928646 e!786261)))

(assert (=> d!149693 (= res!928646 (bvsge startIndex!16 (size!46368 a!2938)))))

(assert (=> d!149693 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987) e!786261)))

(declare-fun b!1387970 () Bool)

(assert (=> b!1387970 (= e!786262 e!786263)))

(declare-fun lt!610110 () (_ BitVec 64))

(assert (=> b!1387970 (= lt!610110 (select (arr!45817 a!2938) startIndex!16))))

(declare-fun lt!610111 () Unit!46345)

(assert (=> b!1387970 (= lt!610111 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610110 startIndex!16))))

(assert (=> b!1387970 (arrayContainsKey!0 a!2938 lt!610110 #b00000000000000000000000000000000)))

(declare-fun lt!610109 () Unit!46345)

(assert (=> b!1387970 (= lt!610109 lt!610111)))

(declare-fun res!928645 () Bool)

(assert (=> b!1387970 (= res!928645 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987) (Found!10182 startIndex!16)))))

(assert (=> b!1387970 (=> (not res!928645) (not e!786263))))

(assert (= (and d!149693 (not res!928646)) b!1387968))

(assert (= (and b!1387968 c!129105) b!1387970))

(assert (= (and b!1387968 (not c!129105)) b!1387969))

(assert (= (and b!1387970 res!928645) b!1387967))

(assert (= (or b!1387967 b!1387969) bm!66610))

(assert (=> b!1387968 m!1273517))

(assert (=> b!1387968 m!1273517))

(assert (=> b!1387968 m!1273519))

(declare-fun m!1273719 () Bool)

(assert (=> bm!66610 m!1273719))

(assert (=> b!1387970 m!1273517))

(declare-fun m!1273721 () Bool)

(assert (=> b!1387970 m!1273721))

(declare-fun m!1273723 () Bool)

(assert (=> b!1387970 m!1273723))

(assert (=> b!1387970 m!1273517))

(assert (=> b!1387970 m!1273537))

(assert (=> b!1387804 d!149693))

(declare-fun b!1388020 () Bool)

(declare-fun e!786295 () SeekEntryResult!10182)

(declare-fun lt!610131 () SeekEntryResult!10182)

(assert (=> b!1388020 (= e!786295 (Found!10182 (index!43100 lt!610131)))))

(declare-fun b!1388021 () Bool)

(declare-fun e!786294 () SeekEntryResult!10182)

(assert (=> b!1388021 (= e!786294 (MissingZero!10182 (index!43100 lt!610131)))))

(declare-fun b!1388022 () Bool)

(declare-fun c!129127 () Bool)

(declare-fun lt!610130 () (_ BitVec 64))

(assert (=> b!1388022 (= c!129127 (= lt!610130 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388022 (= e!786295 e!786294)))

(declare-fun b!1388023 () Bool)

(declare-fun e!786296 () SeekEntryResult!10182)

(assert (=> b!1388023 (= e!786296 e!786295)))

(assert (=> b!1388023 (= lt!610130 (select (arr!45817 lt!610020) (index!43100 lt!610131)))))

(declare-fun c!129125 () Bool)

(assert (=> b!1388023 (= c!129125 (= lt!610130 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1388024 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94893 (_ BitVec 32)) SeekEntryResult!10182)

(assert (=> b!1388024 (= e!786294 (seekKeyOrZeroReturnVacant!0 (x!124723 lt!610131) (index!43100 lt!610131) (index!43100 lt!610131) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610020 mask!2987))))

(declare-fun b!1388025 () Bool)

(assert (=> b!1388025 (= e!786296 Undefined!10182)))

(declare-fun lt!610132 () SeekEntryResult!10182)

(declare-fun d!149697 () Bool)

(assert (=> d!149697 (and (or (is-Undefined!10182 lt!610132) (not (is-Found!10182 lt!610132)) (and (bvsge (index!43099 lt!610132) #b00000000000000000000000000000000) (bvslt (index!43099 lt!610132) (size!46368 lt!610020)))) (or (is-Undefined!10182 lt!610132) (is-Found!10182 lt!610132) (not (is-MissingZero!10182 lt!610132)) (and (bvsge (index!43098 lt!610132) #b00000000000000000000000000000000) (bvslt (index!43098 lt!610132) (size!46368 lt!610020)))) (or (is-Undefined!10182 lt!610132) (is-Found!10182 lt!610132) (is-MissingZero!10182 lt!610132) (not (is-MissingVacant!10182 lt!610132)) (and (bvsge (index!43101 lt!610132) #b00000000000000000000000000000000) (bvslt (index!43101 lt!610132) (size!46368 lt!610020)))) (or (is-Undefined!10182 lt!610132) (ite (is-Found!10182 lt!610132) (= (select (arr!45817 lt!610020) (index!43099 lt!610132)) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite (is-MissingZero!10182 lt!610132) (= (select (arr!45817 lt!610020) (index!43098 lt!610132)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10182 lt!610132) (= (select (arr!45817 lt!610020) (index!43101 lt!610132)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149697 (= lt!610132 e!786296)))

(declare-fun c!129126 () Bool)

(assert (=> d!149697 (= c!129126 (and (is-Intermediate!10182 lt!610131) (undefined!10994 lt!610131)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94893 (_ BitVec 32)) SeekEntryResult!10182)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!149697 (= lt!610131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610020 mask!2987))))

(assert (=> d!149697 (validMask!0 mask!2987)))

(assert (=> d!149697 (= (seekEntryOrOpen!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610020 mask!2987) lt!610132)))

(assert (= (and d!149697 c!129126) b!1388025))

(assert (= (and d!149697 (not c!129126)) b!1388023))

(assert (= (and b!1388023 c!129125) b!1388020))

(assert (= (and b!1388023 (not c!129125)) b!1388022))

(assert (= (and b!1388022 c!129127) b!1388021))

(assert (= (and b!1388022 (not c!129127)) b!1388024))

(declare-fun m!1273749 () Bool)

(assert (=> b!1388023 m!1273749))

(assert (=> b!1388024 m!1273529))

(declare-fun m!1273755 () Bool)

(assert (=> b!1388024 m!1273755))

(declare-fun m!1273757 () Bool)

(assert (=> d!149697 m!1273757))

(assert (=> d!149697 m!1273541))

(declare-fun m!1273761 () Bool)

(assert (=> d!149697 m!1273761))

(declare-fun m!1273763 () Bool)

(assert (=> d!149697 m!1273763))

(assert (=> d!149697 m!1273529))

(declare-fun m!1273765 () Bool)

(assert (=> d!149697 m!1273765))

(assert (=> d!149697 m!1273765))

(assert (=> d!149697 m!1273529))

(declare-fun m!1273767 () Bool)

(assert (=> d!149697 m!1273767))

(assert (=> b!1387804 d!149697))

(declare-fun d!149711 () Bool)

(declare-fun e!786305 () Bool)

(assert (=> d!149711 e!786305))

(declare-fun res!928662 () Bool)

(assert (=> d!149711 (=> (not res!928662) (not e!786305))))

(assert (=> d!149711 (= res!928662 (and (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46368 a!2938)) (and (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46368 a!2938)))) (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46368 a!2938)) (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46368 a!2938)))) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46368 a!2938))))))

(declare-fun lt!610141 () Unit!46345)

(declare-fun choose!14 (array!94893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46345)

(assert (=> d!149711 (= lt!610141 (choose!14 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (=> d!149711 (validMask!0 mask!2987)))

(assert (=> d!149711 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987) lt!610141)))

(declare-fun b!1388038 () Bool)

(assert (=> b!1388038 (= e!786305 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)) mask!2987)))))

(assert (= (and d!149711 res!928662) b!1388038))

(declare-fun m!1273795 () Bool)

(assert (=> d!149711 m!1273795))

(assert (=> d!149711 m!1273541))

(assert (=> b!1388038 m!1273529))

(declare-fun m!1273797 () Bool)

(assert (=> b!1388038 m!1273797))

(assert (=> b!1388038 m!1273517))

(assert (=> b!1388038 m!1273531))

(assert (=> b!1388038 m!1273529))

(assert (=> b!1388038 m!1273517))

(assert (=> b!1388038 m!1273537))

(assert (=> b!1387804 d!149711))

(declare-fun b!1388039 () Bool)

(declare-fun e!786307 () SeekEntryResult!10182)

(declare-fun lt!610143 () SeekEntryResult!10182)

(assert (=> b!1388039 (= e!786307 (Found!10182 (index!43100 lt!610143)))))

(declare-fun b!1388040 () Bool)

(declare-fun e!786306 () SeekEntryResult!10182)

(assert (=> b!1388040 (= e!786306 (MissingZero!10182 (index!43100 lt!610143)))))

(declare-fun b!1388041 () Bool)

(declare-fun c!129134 () Bool)

(declare-fun lt!610142 () (_ BitVec 64))

(assert (=> b!1388041 (= c!129134 (= lt!610142 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388041 (= e!786307 e!786306)))

(declare-fun b!1388042 () Bool)

(declare-fun e!786308 () SeekEntryResult!10182)

(assert (=> b!1388042 (= e!786308 e!786307)))

(assert (=> b!1388042 (= lt!610142 (select (arr!45817 a!2938) (index!43100 lt!610143)))))

(declare-fun c!129132 () Bool)

(assert (=> b!1388042 (= c!129132 (= lt!610142 (select (arr!45817 a!2938) startIndex!16)))))

(declare-fun b!1388043 () Bool)

(assert (=> b!1388043 (= e!786306 (seekKeyOrZeroReturnVacant!0 (x!124723 lt!610143) (index!43100 lt!610143) (index!43100 lt!610143) (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1388044 () Bool)

(assert (=> b!1388044 (= e!786308 Undefined!10182)))

(declare-fun d!149723 () Bool)

(declare-fun lt!610144 () SeekEntryResult!10182)

(assert (=> d!149723 (and (or (is-Undefined!10182 lt!610144) (not (is-Found!10182 lt!610144)) (and (bvsge (index!43099 lt!610144) #b00000000000000000000000000000000) (bvslt (index!43099 lt!610144) (size!46368 a!2938)))) (or (is-Undefined!10182 lt!610144) (is-Found!10182 lt!610144) (not (is-MissingZero!10182 lt!610144)) (and (bvsge (index!43098 lt!610144) #b00000000000000000000000000000000) (bvslt (index!43098 lt!610144) (size!46368 a!2938)))) (or (is-Undefined!10182 lt!610144) (is-Found!10182 lt!610144) (is-MissingZero!10182 lt!610144) (not (is-MissingVacant!10182 lt!610144)) (and (bvsge (index!43101 lt!610144) #b00000000000000000000000000000000) (bvslt (index!43101 lt!610144) (size!46368 a!2938)))) (or (is-Undefined!10182 lt!610144) (ite (is-Found!10182 lt!610144) (= (select (arr!45817 a!2938) (index!43099 lt!610144)) (select (arr!45817 a!2938) startIndex!16)) (ite (is-MissingZero!10182 lt!610144) (= (select (arr!45817 a!2938) (index!43098 lt!610144)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10182 lt!610144) (= (select (arr!45817 a!2938) (index!43101 lt!610144)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149723 (= lt!610144 e!786308)))

(declare-fun c!129133 () Bool)

(assert (=> d!149723 (= c!129133 (and (is-Intermediate!10182 lt!610143) (undefined!10994 lt!610143)))))

(assert (=> d!149723 (= lt!610143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45817 a!2938) startIndex!16) mask!2987) (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987))))

(assert (=> d!149723 (validMask!0 mask!2987)))

(assert (=> d!149723 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987) lt!610144)))

(assert (= (and d!149723 c!129133) b!1388044))

(assert (= (and d!149723 (not c!129133)) b!1388042))

(assert (= (and b!1388042 c!129132) b!1388039))

(assert (= (and b!1388042 (not c!129132)) b!1388041))

(assert (= (and b!1388041 c!129134) b!1388040))

(assert (= (and b!1388041 (not c!129134)) b!1388043))

(declare-fun m!1273799 () Bool)

(assert (=> b!1388042 m!1273799))

(assert (=> b!1388043 m!1273517))

(declare-fun m!1273801 () Bool)

(assert (=> b!1388043 m!1273801))

(declare-fun m!1273803 () Bool)

(assert (=> d!149723 m!1273803))

(assert (=> d!149723 m!1273541))

(declare-fun m!1273805 () Bool)

(assert (=> d!149723 m!1273805))

(declare-fun m!1273807 () Bool)

(assert (=> d!149723 m!1273807))

(assert (=> d!149723 m!1273517))

(declare-fun m!1273809 () Bool)

(assert (=> d!149723 m!1273809))

(assert (=> d!149723 m!1273809))

(assert (=> d!149723 m!1273517))

(declare-fun m!1273811 () Bool)

(assert (=> d!149723 m!1273811))

(assert (=> b!1387804 d!149723))

(declare-fun d!149725 () Bool)

(assert (=> d!149725 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118804 d!149725))

(declare-fun d!149727 () Bool)

(assert (=> d!149727 (= (array_inv!34762 a!2938) (bvsge (size!46368 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118804 d!149727))

(push 1)

(assert (not d!149723))

(assert (not b!1387927))

(assert (not b!1387946))

(assert (not b!1387968))

(assert (not d!149697))

(assert (not b!1387944))

(assert (not b!1387952))

(assert (not bm!66603))

(assert (not b!1387930))

(assert (not b!1387970))

(assert (not bm!66607))

(assert (not b!1387929))

(assert (not b!1388038))

(assert (not b!1388043))

(assert (not d!149711))

(assert (not bm!66608))

(assert (not b!1388024))

(assert (not bm!66610))

(assert (not b!1387950))

(assert (not d!149685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1388189 () Bool)

(declare-fun lt!610200 () SeekEntryResult!10182)

(assert (=> b!1388189 (and (bvsge (index!43100 lt!610200) #b00000000000000000000000000000000) (bvslt (index!43100 lt!610200) (size!46368 a!2938)))))

(declare-fun res!928718 () Bool)

(assert (=> b!1388189 (= res!928718 (= (select (arr!45817 a!2938) (index!43100 lt!610200)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786402 () Bool)

(assert (=> b!1388189 (=> res!928718 e!786402)))

(declare-fun e!786401 () SeekEntryResult!10182)

(declare-fun b!1388190 () Bool)

(assert (=> b!1388190 (= e!786401 (Intermediate!10182 true (toIndex!0 (select (arr!45817 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1388191 () Bool)

(declare-fun e!786403 () Bool)

(declare-fun e!786404 () Bool)

(assert (=> b!1388191 (= e!786403 e!786404)))

(declare-fun res!928716 () Bool)

(assert (=> b!1388191 (= res!928716 (and (is-Intermediate!10182 lt!610200) (not (undefined!10994 lt!610200)) (bvslt (x!124723 lt!610200) #b01111111111111111111111111111110) (bvsge (x!124723 lt!610200) #b00000000000000000000000000000000) (bvsge (x!124723 lt!610200) #b00000000000000000000000000000000)))))

(assert (=> b!1388191 (=> (not res!928716) (not e!786404))))

(declare-fun b!1388192 () Bool)

(assert (=> b!1388192 (and (bvsge (index!43100 lt!610200) #b00000000000000000000000000000000) (bvslt (index!43100 lt!610200) (size!46368 a!2938)))))

(assert (=> b!1388192 (= e!786402 (= (select (arr!45817 a!2938) (index!43100 lt!610200)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388193 () Bool)

(declare-fun e!786405 () SeekEntryResult!10182)

(assert (=> b!1388193 (= e!786401 e!786405)))

(declare-fun c!129183 () Bool)

(declare-fun lt!610199 () (_ BitVec 64))

(assert (=> b!1388193 (= c!129183 (or (= lt!610199 (select (arr!45817 a!2938) startIndex!16)) (= (bvadd lt!610199 lt!610199) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1388194 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1388194 (= e!786405 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45817 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1388195 () Bool)

(assert (=> b!1388195 (= e!786405 (Intermediate!10182 false (toIndex!0 (select (arr!45817 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun d!149777 () Bool)

(assert (=> d!149777 e!786403))

(declare-fun c!129181 () Bool)

(assert (=> d!149777 (= c!129181 (and (is-Intermediate!10182 lt!610200) (undefined!10994 lt!610200)))))

(assert (=> d!149777 (= lt!610200 e!786401)))

(declare-fun c!129182 () Bool)

(assert (=> d!149777 (= c!129182 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!149777 (= lt!610199 (select (arr!45817 a!2938) (toIndex!0 (select (arr!45817 a!2938) startIndex!16) mask!2987)))))

(assert (=> d!149777 (validMask!0 mask!2987)))

(assert (=> d!149777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45817 a!2938) startIndex!16) mask!2987) (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987) lt!610200)))

(declare-fun b!1388196 () Bool)

(assert (=> b!1388196 (= e!786403 (bvsge (x!124723 lt!610200) #b01111111111111111111111111111110))))

(declare-fun b!1388197 () Bool)

(assert (=> b!1388197 (and (bvsge (index!43100 lt!610200) #b00000000000000000000000000000000) (bvslt (index!43100 lt!610200) (size!46368 a!2938)))))

(declare-fun res!928717 () Bool)

(assert (=> b!1388197 (= res!928717 (= (select (arr!45817 a!2938) (index!43100 lt!610200)) (select (arr!45817 a!2938) startIndex!16)))))

(assert (=> b!1388197 (=> res!928717 e!786402)))

(assert (=> b!1388197 (= e!786404 e!786402)))

(assert (= (and d!149777 c!129182) b!1388190))

(assert (= (and d!149777 (not c!129182)) b!1388193))

(assert (= (and b!1388193 c!129183) b!1388195))

(assert (= (and b!1388193 (not c!129183)) b!1388194))

(assert (= (and d!149777 c!129181) b!1388196))

(assert (= (and d!149777 (not c!129181)) b!1388191))

(assert (= (and b!1388191 res!928716) b!1388197))

(assert (= (and b!1388197 (not res!928717)) b!1388189))

(assert (= (and b!1388189 (not res!928718)) b!1388192))

(assert (=> b!1388194 m!1273809))

(declare-fun m!1273949 () Bool)

(assert (=> b!1388194 m!1273949))

(assert (=> b!1388194 m!1273949))

(assert (=> b!1388194 m!1273517))

(declare-fun m!1273951 () Bool)

(assert (=> b!1388194 m!1273951))

(declare-fun m!1273953 () Bool)

(assert (=> b!1388189 m!1273953))

(assert (=> d!149777 m!1273809))

(declare-fun m!1273955 () Bool)

(assert (=> d!149777 m!1273955))

(assert (=> d!149777 m!1273541))

(assert (=> b!1388197 m!1273953))

(assert (=> b!1388192 m!1273953))

(assert (=> d!149723 d!149777))

(declare-fun d!149779 () Bool)

(declare-fun lt!610206 () (_ BitVec 32))

(declare-fun lt!610205 () (_ BitVec 32))

(assert (=> d!149779 (= lt!610206 (bvmul (bvxor lt!610205 (bvlshr lt!610205 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149779 (= lt!610205 ((_ extract 31 0) (bvand (bvxor (select (arr!45817 a!2938) startIndex!16) (bvlshr (select (arr!45817 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149779 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928719 (let ((h!33737 ((_ extract 31 0) (bvand (bvxor (select (arr!45817 a!2938) startIndex!16) (bvlshr (select (arr!45817 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124730 (bvmul (bvxor h!33737 (bvlshr h!33737 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124730 (bvlshr x!124730 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928719 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928719 #b00000000000000000000000000000000))))))

(assert (=> d!149779 (= (toIndex!0 (select (arr!45817 a!2938) startIndex!16) mask!2987) (bvand (bvxor lt!610206 (bvlshr lt!610206 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149723 d!149779))

(assert (=> d!149723 d!149725))

(declare-fun d!149781 () Bool)

(assert (=> d!149781 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)) mask!2987))))

(assert (=> d!149781 true))

(declare-fun _$42!28 () Unit!46345)

(assert (=> d!149781 (= (choose!14 a!2938 i!1065 startIndex!16 mask!2987) _$42!28)))

(declare-fun bs!40342 () Bool)

(assert (= bs!40342 d!149781))

(assert (=> bs!40342 m!1273529))

(assert (=> bs!40342 m!1273517))

(assert (=> bs!40342 m!1273529))

(assert (=> bs!40342 m!1273797))

(assert (=> bs!40342 m!1273531))

(assert (=> bs!40342 m!1273517))

(assert (=> bs!40342 m!1273537))

(assert (=> d!149711 d!149781))

(assert (=> d!149711 d!149725))

(declare-fun d!149783 () Bool)

(assert (=> d!149783 (arrayContainsKey!0 a!2938 lt!610110 #b00000000000000000000000000000000)))

(declare-fun lt!610209 () Unit!46345)

(declare-fun choose!13 (array!94893 (_ BitVec 64) (_ BitVec 32)) Unit!46345)

(assert (=> d!149783 (= lt!610209 (choose!13 a!2938 lt!610110 startIndex!16))))

(assert (=> d!149783 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149783 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610110 startIndex!16) lt!610209)))

(declare-fun bs!40343 () Bool)

(assert (= bs!40343 d!149783))

(assert (=> bs!40343 m!1273723))

(declare-fun m!1273957 () Bool)

(assert (=> bs!40343 m!1273957))

(assert (=> b!1387970 d!149783))

(declare-fun d!149785 () Bool)

(declare-fun res!928724 () Bool)

(declare-fun e!786410 () Bool)

(assert (=> d!149785 (=> res!928724 e!786410)))

(assert (=> d!149785 (= res!928724 (= (select (arr!45817 a!2938) #b00000000000000000000000000000000) lt!610110))))

(assert (=> d!149785 (= (arrayContainsKey!0 a!2938 lt!610110 #b00000000000000000000000000000000) e!786410)))

(declare-fun b!1388202 () Bool)

(declare-fun e!786411 () Bool)

(assert (=> b!1388202 (= e!786410 e!786411)))

(declare-fun res!928725 () Bool)

(assert (=> b!1388202 (=> (not res!928725) (not e!786411))))

(assert (=> b!1388202 (= res!928725 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46368 a!2938)))))

(declare-fun b!1388203 () Bool)

(assert (=> b!1388203 (= e!786411 (arrayContainsKey!0 a!2938 lt!610110 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149785 (not res!928724)) b!1388202))

(assert (= (and b!1388202 res!928725) b!1388203))

(assert (=> d!149785 m!1273647))

(declare-fun m!1273959 () Bool)

(assert (=> b!1388203 m!1273959))

(assert (=> b!1387970 d!149785))

(assert (=> b!1387970 d!149723))

(declare-fun d!149787 () Bool)

(assert (=> d!149787 (= (validKeyInArray!0 (select (arr!45817 a!2938) #b00000000000000000000000000000000)) (and (not (= (select (arr!45817 a!2938) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45817 a!2938) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387930 d!149787))

(declare-fun b!1388204 () Bool)

(declare-fun e!786414 () Bool)

(declare-fun call!66626 () Bool)

(assert (=> b!1388204 (= e!786414 call!66626)))

(declare-fun b!1388205 () Bool)

(declare-fun e!786412 () Bool)

(declare-fun e!786413 () Bool)

(assert (=> b!1388205 (= e!786412 e!786413)))

(declare-fun c!129184 () Bool)

(assert (=> b!1388205 (= c!129184 (validKeyInArray!0 (select (arr!45817 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun bm!66623 () Bool)

(assert (=> bm!66623 (= call!66626 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1388206 () Bool)

(assert (=> b!1388206 (= e!786413 call!66626)))

(declare-fun d!149789 () Bool)

(declare-fun res!928727 () Bool)

(assert (=> d!149789 (=> res!928727 e!786412)))

(assert (=> d!149789 (= res!928727 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46368 a!2938)))))

(assert (=> d!149789 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987) e!786412)))

(declare-fun b!1388207 () Bool)

(assert (=> b!1388207 (= e!786413 e!786414)))

(declare-fun lt!610211 () (_ BitVec 64))

(assert (=> b!1388207 (= lt!610211 (select (arr!45817 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!610212 () Unit!46345)

(assert (=> b!1388207 (= lt!610212 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610211 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1388207 (arrayContainsKey!0 a!2938 lt!610211 #b00000000000000000000000000000000)))

(declare-fun lt!610210 () Unit!46345)

(assert (=> b!1388207 (= lt!610210 lt!610212)))

(declare-fun res!928726 () Bool)

(assert (=> b!1388207 (= res!928726 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)) a!2938 mask!2987) (Found!10182 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1388207 (=> (not res!928726) (not e!786414))))

(assert (= (and d!149789 (not res!928727)) b!1388205))

(assert (= (and b!1388205 c!129184) b!1388207))

(assert (= (and b!1388205 (not c!129184)) b!1388206))

(assert (= (and b!1388207 res!928726) b!1388204))

(assert (= (or b!1388204 b!1388206) bm!66623))

(declare-fun m!1273961 () Bool)

(assert (=> b!1388205 m!1273961))

(assert (=> b!1388205 m!1273961))

(declare-fun m!1273963 () Bool)

(assert (=> b!1388205 m!1273963))

(declare-fun m!1273965 () Bool)

(assert (=> bm!66623 m!1273965))

(assert (=> b!1388207 m!1273961))

(declare-fun m!1273967 () Bool)

(assert (=> b!1388207 m!1273967))

(declare-fun m!1273969 () Bool)

(assert (=> b!1388207 m!1273969))

(assert (=> b!1388207 m!1273961))

(declare-fun m!1273971 () Bool)

(assert (=> b!1388207 m!1273971))

(assert (=> bm!66610 d!149789))

(assert (=> b!1387968 d!149681))

(declare-fun b!1388208 () Bool)

(declare-fun e!786417 () Bool)

(declare-fun call!66627 () Bool)

(assert (=> b!1388208 (= e!786417 call!66627)))

(declare-fun b!1388209 () Bool)

(declare-fun e!786418 () Bool)

(assert (=> b!1388209 (= e!786418 (contains!9759 (ite c!129095 (Cons!32521 (select (arr!45817 a!2938) #b00000000000000000000000000000000) Nil!32522) Nil!32522) (select (arr!45817 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!149791 () Bool)

(declare-fun res!928728 () Bool)

(declare-fun e!786415 () Bool)

(assert (=> d!149791 (=> res!928728 e!786415)))

(assert (=> d!149791 (= res!928728 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46368 a!2938)))))

(assert (=> d!149791 (= (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129095 (Cons!32521 (select (arr!45817 a!2938) #b00000000000000000000000000000000) Nil!32522) Nil!32522)) e!786415)))

(declare-fun b!1388210 () Bool)

(assert (=> b!1388210 (= e!786417 call!66627)))

(declare-fun b!1388211 () Bool)

(declare-fun e!786416 () Bool)

(assert (=> b!1388211 (= e!786416 e!786417)))

(declare-fun c!129185 () Bool)

(assert (=> b!1388211 (= c!129185 (validKeyInArray!0 (select (arr!45817 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1388212 () Bool)

(assert (=> b!1388212 (= e!786415 e!786416)))

(declare-fun res!928730 () Bool)

(assert (=> b!1388212 (=> (not res!928730) (not e!786416))))

(assert (=> b!1388212 (= res!928730 (not e!786418))))

(declare-fun res!928729 () Bool)

(assert (=> b!1388212 (=> (not res!928729) (not e!786418))))

(assert (=> b!1388212 (= res!928729 (validKeyInArray!0 (select (arr!45817 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!66624 () Bool)

(assert (=> bm!66624 (= call!66627 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!129185 (Cons!32521 (select (arr!45817 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!129095 (Cons!32521 (select (arr!45817 a!2938) #b00000000000000000000000000000000) Nil!32522) Nil!32522)) (ite c!129095 (Cons!32521 (select (arr!45817 a!2938) #b00000000000000000000000000000000) Nil!32522) Nil!32522))))))

(assert (= (and d!149791 (not res!928728)) b!1388212))

(assert (= (and b!1388212 res!928729) b!1388209))

(assert (= (and b!1388212 res!928730) b!1388211))

(assert (= (and b!1388211 c!129185) b!1388210))

(assert (= (and b!1388211 (not c!129185)) b!1388208))

(assert (= (or b!1388210 b!1388208) bm!66624))

(declare-fun m!1273973 () Bool)

(assert (=> b!1388209 m!1273973))

(assert (=> b!1388209 m!1273973))

(declare-fun m!1273975 () Bool)

(assert (=> b!1388209 m!1273975))

(assert (=> b!1388211 m!1273973))

(assert (=> b!1388211 m!1273973))

(declare-fun m!1273977 () Bool)

(assert (=> b!1388211 m!1273977))

(assert (=> b!1388212 m!1273973))

(assert (=> b!1388212 m!1273973))

(assert (=> b!1388212 m!1273977))

(assert (=> bm!66624 m!1273973))

(declare-fun m!1273979 () Bool)

(assert (=> bm!66624 m!1273979))

(assert (=> bm!66603 d!149791))

(declare-fun d!149793 () Bool)

(assert (=> d!149793 (arrayContainsKey!0 lt!610020 lt!610089 #b00000000000000000000000000000000)))

(declare-fun lt!610213 () Unit!46345)

(assert (=> d!149793 (= lt!610213 (choose!13 lt!610020 lt!610089 startIndex!16))))

(assert (=> d!149793 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149793 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610020 lt!610089 startIndex!16) lt!610213)))

(declare-fun bs!40344 () Bool)

(assert (= bs!40344 d!149793))

(assert (=> bs!40344 m!1273671))

(declare-fun m!1273981 () Bool)

(assert (=> bs!40344 m!1273981))

(assert (=> b!1387946 d!149793))

(declare-fun d!149795 () Bool)

(declare-fun res!928731 () Bool)

(declare-fun e!786419 () Bool)

(assert (=> d!149795 (=> res!928731 e!786419)))

(assert (=> d!149795 (= res!928731 (= (select (arr!45817 lt!610020) #b00000000000000000000000000000000) lt!610089))))

(assert (=> d!149795 (= (arrayContainsKey!0 lt!610020 lt!610089 #b00000000000000000000000000000000) e!786419)))

(declare-fun b!1388213 () Bool)

(declare-fun e!786420 () Bool)

(assert (=> b!1388213 (= e!786419 e!786420)))

(declare-fun res!928732 () Bool)

(assert (=> b!1388213 (=> (not res!928732) (not e!786420))))

(assert (=> b!1388213 (= res!928732 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46368 lt!610020)))))

(declare-fun b!1388214 () Bool)

(assert (=> b!1388214 (= e!786420 (arrayContainsKey!0 lt!610020 lt!610089 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149795 (not res!928731)) b!1388213))

(assert (= (and b!1388213 res!928732) b!1388214))

(declare-fun m!1273983 () Bool)

(assert (=> d!149795 m!1273983))

(declare-fun m!1273985 () Bool)

(assert (=> b!1388214 m!1273985))

(assert (=> b!1387946 d!149795))

(declare-fun b!1388215 () Bool)

(declare-fun e!786422 () SeekEntryResult!10182)

(declare-fun lt!610215 () SeekEntryResult!10182)

(assert (=> b!1388215 (= e!786422 (Found!10182 (index!43100 lt!610215)))))

(declare-fun b!1388216 () Bool)

(declare-fun e!786421 () SeekEntryResult!10182)

(assert (=> b!1388216 (= e!786421 (MissingZero!10182 (index!43100 lt!610215)))))

(declare-fun b!1388217 () Bool)

(declare-fun c!129188 () Bool)

(declare-fun lt!610214 () (_ BitVec 64))

(assert (=> b!1388217 (= c!129188 (= lt!610214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388217 (= e!786422 e!786421)))

(declare-fun b!1388218 () Bool)

(declare-fun e!786423 () SeekEntryResult!10182)

(assert (=> b!1388218 (= e!786423 e!786422)))

(assert (=> b!1388218 (= lt!610214 (select (arr!45817 lt!610020) (index!43100 lt!610215)))))

(declare-fun c!129186 () Bool)

(assert (=> b!1388218 (= c!129186 (= lt!610214 (select (arr!45817 lt!610020) startIndex!16)))))

(declare-fun b!1388219 () Bool)

(assert (=> b!1388219 (= e!786421 (seekKeyOrZeroReturnVacant!0 (x!124723 lt!610215) (index!43100 lt!610215) (index!43100 lt!610215) (select (arr!45817 lt!610020) startIndex!16) lt!610020 mask!2987))))

(declare-fun b!1388220 () Bool)

(assert (=> b!1388220 (= e!786423 Undefined!10182)))

(declare-fun d!149797 () Bool)

(declare-fun lt!610216 () SeekEntryResult!10182)

(assert (=> d!149797 (and (or (is-Undefined!10182 lt!610216) (not (is-Found!10182 lt!610216)) (and (bvsge (index!43099 lt!610216) #b00000000000000000000000000000000) (bvslt (index!43099 lt!610216) (size!46368 lt!610020)))) (or (is-Undefined!10182 lt!610216) (is-Found!10182 lt!610216) (not (is-MissingZero!10182 lt!610216)) (and (bvsge (index!43098 lt!610216) #b00000000000000000000000000000000) (bvslt (index!43098 lt!610216) (size!46368 lt!610020)))) (or (is-Undefined!10182 lt!610216) (is-Found!10182 lt!610216) (is-MissingZero!10182 lt!610216) (not (is-MissingVacant!10182 lt!610216)) (and (bvsge (index!43101 lt!610216) #b00000000000000000000000000000000) (bvslt (index!43101 lt!610216) (size!46368 lt!610020)))) (or (is-Undefined!10182 lt!610216) (ite (is-Found!10182 lt!610216) (= (select (arr!45817 lt!610020) (index!43099 lt!610216)) (select (arr!45817 lt!610020) startIndex!16)) (ite (is-MissingZero!10182 lt!610216) (= (select (arr!45817 lt!610020) (index!43098 lt!610216)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10182 lt!610216) (= (select (arr!45817 lt!610020) (index!43101 lt!610216)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149797 (= lt!610216 e!786423)))

(declare-fun c!129187 () Bool)

(assert (=> d!149797 (= c!129187 (and (is-Intermediate!10182 lt!610215) (undefined!10994 lt!610215)))))

(assert (=> d!149797 (= lt!610215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45817 lt!610020) startIndex!16) mask!2987) (select (arr!45817 lt!610020) startIndex!16) lt!610020 mask!2987))))

(assert (=> d!149797 (validMask!0 mask!2987)))

(assert (=> d!149797 (= (seekEntryOrOpen!0 (select (arr!45817 lt!610020) startIndex!16) lt!610020 mask!2987) lt!610216)))

(assert (= (and d!149797 c!129187) b!1388220))

(assert (= (and d!149797 (not c!129187)) b!1388218))

(assert (= (and b!1388218 c!129186) b!1388215))

(assert (= (and b!1388218 (not c!129186)) b!1388217))

(assert (= (and b!1388217 c!129188) b!1388216))

(assert (= (and b!1388217 (not c!129188)) b!1388219))

(declare-fun m!1273987 () Bool)

(assert (=> b!1388218 m!1273987))

(assert (=> b!1388219 m!1273663))

(declare-fun m!1273989 () Bool)

(assert (=> b!1388219 m!1273989))

(declare-fun m!1273991 () Bool)

(assert (=> d!149797 m!1273991))

(assert (=> d!149797 m!1273541))

(declare-fun m!1273993 () Bool)

(assert (=> d!149797 m!1273993))

(declare-fun m!1273995 () Bool)

(assert (=> d!149797 m!1273995))

(assert (=> d!149797 m!1273663))

(declare-fun m!1273997 () Bool)

(assert (=> d!149797 m!1273997))

(assert (=> d!149797 m!1273997))

(assert (=> d!149797 m!1273663))

(declare-fun m!1273999 () Bool)

(assert (=> d!149797 m!1273999))

(assert (=> b!1387946 d!149797))

(assert (=> d!149685 d!149693))

(declare-fun d!149799 () Bool)

(assert (=> d!149799 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (=> d!149799 true))

(declare-fun _$72!137 () Unit!46345)

(assert (=> d!149799 (= (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) _$72!137)))

(declare-fun bs!40345 () Bool)

(assert (= bs!40345 d!149799))

(assert (=> bs!40345 m!1273539))

(assert (=> d!149685 d!149799))

(assert (=> d!149685 d!149725))

(declare-fun d!149801 () Bool)

(assert (=> d!149801 (arrayContainsKey!0 a!2938 lt!610094 #b00000000000000000000000000000000)))

(declare-fun lt!610217 () Unit!46345)

(assert (=> d!149801 (= lt!610217 (choose!13 a!2938 lt!610094 #b00000000000000000000000000000000))))

(assert (=> d!149801 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!149801 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610094 #b00000000000000000000000000000000) lt!610217)))

(declare-fun bs!40346 () Bool)

(assert (= bs!40346 d!149801))

(assert (=> bs!40346 m!1273679))

(declare-fun m!1274001 () Bool)

(assert (=> bs!40346 m!1274001))

(assert (=> b!1387952 d!149801))

(declare-fun d!149803 () Bool)

(declare-fun res!928733 () Bool)

(declare-fun e!786424 () Bool)

(assert (=> d!149803 (=> res!928733 e!786424)))

(assert (=> d!149803 (= res!928733 (= (select (arr!45817 a!2938) #b00000000000000000000000000000000) lt!610094))))

(assert (=> d!149803 (= (arrayContainsKey!0 a!2938 lt!610094 #b00000000000000000000000000000000) e!786424)))

(declare-fun b!1388221 () Bool)

(declare-fun e!786425 () Bool)

(assert (=> b!1388221 (= e!786424 e!786425)))

(declare-fun res!928734 () Bool)

(assert (=> b!1388221 (=> (not res!928734) (not e!786425))))

(assert (=> b!1388221 (= res!928734 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46368 a!2938)))))

(declare-fun b!1388222 () Bool)

(assert (=> b!1388222 (= e!786425 (arrayContainsKey!0 a!2938 lt!610094 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149803 (not res!928733)) b!1388221))

(assert (= (and b!1388221 res!928734) b!1388222))

(assert (=> d!149803 m!1273647))

(declare-fun m!1274003 () Bool)

(assert (=> b!1388222 m!1274003))

(assert (=> b!1387952 d!149803))

(declare-fun b!1388223 () Bool)

(declare-fun e!786427 () SeekEntryResult!10182)

(declare-fun lt!610219 () SeekEntryResult!10182)

(assert (=> b!1388223 (= e!786427 (Found!10182 (index!43100 lt!610219)))))

(declare-fun b!1388224 () Bool)

(declare-fun e!786426 () SeekEntryResult!10182)

(assert (=> b!1388224 (= e!786426 (MissingZero!10182 (index!43100 lt!610219)))))

(declare-fun b!1388225 () Bool)

(declare-fun c!129191 () Bool)

(declare-fun lt!610218 () (_ BitVec 64))

(assert (=> b!1388225 (= c!129191 (= lt!610218 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388225 (= e!786427 e!786426)))

(declare-fun b!1388226 () Bool)

(declare-fun e!786428 () SeekEntryResult!10182)

(assert (=> b!1388226 (= e!786428 e!786427)))

(assert (=> b!1388226 (= lt!610218 (select (arr!45817 a!2938) (index!43100 lt!610219)))))

(declare-fun c!129189 () Bool)

(assert (=> b!1388226 (= c!129189 (= lt!610218 (select (arr!45817 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1388227 () Bool)

(assert (=> b!1388227 (= e!786426 (seekKeyOrZeroReturnVacant!0 (x!124723 lt!610219) (index!43100 lt!610219) (index!43100 lt!610219) (select (arr!45817 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(declare-fun b!1388228 () Bool)

(assert (=> b!1388228 (= e!786428 Undefined!10182)))

(declare-fun d!149805 () Bool)

(declare-fun lt!610220 () SeekEntryResult!10182)

(assert (=> d!149805 (and (or (is-Undefined!10182 lt!610220) (not (is-Found!10182 lt!610220)) (and (bvsge (index!43099 lt!610220) #b00000000000000000000000000000000) (bvslt (index!43099 lt!610220) (size!46368 a!2938)))) (or (is-Undefined!10182 lt!610220) (is-Found!10182 lt!610220) (not (is-MissingZero!10182 lt!610220)) (and (bvsge (index!43098 lt!610220) #b00000000000000000000000000000000) (bvslt (index!43098 lt!610220) (size!46368 a!2938)))) (or (is-Undefined!10182 lt!610220) (is-Found!10182 lt!610220) (is-MissingZero!10182 lt!610220) (not (is-MissingVacant!10182 lt!610220)) (and (bvsge (index!43101 lt!610220) #b00000000000000000000000000000000) (bvslt (index!43101 lt!610220) (size!46368 a!2938)))) (or (is-Undefined!10182 lt!610220) (ite (is-Found!10182 lt!610220) (= (select (arr!45817 a!2938) (index!43099 lt!610220)) (select (arr!45817 a!2938) #b00000000000000000000000000000000)) (ite (is-MissingZero!10182 lt!610220) (= (select (arr!45817 a!2938) (index!43098 lt!610220)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10182 lt!610220) (= (select (arr!45817 a!2938) (index!43101 lt!610220)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149805 (= lt!610220 e!786428)))

(declare-fun c!129190 () Bool)

(assert (=> d!149805 (= c!129190 (and (is-Intermediate!10182 lt!610219) (undefined!10994 lt!610219)))))

(assert (=> d!149805 (= lt!610219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45817 a!2938) #b00000000000000000000000000000000) mask!2987) (select (arr!45817 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(assert (=> d!149805 (validMask!0 mask!2987)))

(assert (=> d!149805 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) lt!610220)))

(assert (= (and d!149805 c!129190) b!1388228))

(assert (= (and d!149805 (not c!129190)) b!1388226))

(assert (= (and b!1388226 c!129189) b!1388223))

(assert (= (and b!1388226 (not c!129189)) b!1388225))

(assert (= (and b!1388225 c!129191) b!1388224))

(assert (= (and b!1388225 (not c!129191)) b!1388227))

(declare-fun m!1274005 () Bool)

(assert (=> b!1388226 m!1274005))

(assert (=> b!1388227 m!1273647))

(declare-fun m!1274007 () Bool)

(assert (=> b!1388227 m!1274007))

(declare-fun m!1274009 () Bool)

(assert (=> d!149805 m!1274009))

(assert (=> d!149805 m!1273541))

(declare-fun m!1274011 () Bool)

(assert (=> d!149805 m!1274011))

(declare-fun m!1274013 () Bool)

(assert (=> d!149805 m!1274013))

(assert (=> d!149805 m!1273647))

(declare-fun m!1274015 () Bool)

(assert (=> d!149805 m!1274015))

(assert (=> d!149805 m!1274015))

(assert (=> d!149805 m!1273647))

(declare-fun m!1274017 () Bool)

(assert (=> d!149805 m!1274017))

(assert (=> b!1387952 d!149805))

(assert (=> b!1388038 d!149723))

(declare-fun b!1388229 () Bool)

(declare-fun e!786430 () SeekEntryResult!10182)

(declare-fun lt!610222 () SeekEntryResult!10182)

(assert (=> b!1388229 (= e!786430 (Found!10182 (index!43100 lt!610222)))))

(declare-fun b!1388230 () Bool)

(declare-fun e!786429 () SeekEntryResult!10182)

(assert (=> b!1388230 (= e!786429 (MissingZero!10182 (index!43100 lt!610222)))))

(declare-fun b!1388231 () Bool)

(declare-fun c!129194 () Bool)

(declare-fun lt!610221 () (_ BitVec 64))

(assert (=> b!1388231 (= c!129194 (= lt!610221 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388231 (= e!786430 e!786429)))

(declare-fun b!1388232 () Bool)

(declare-fun e!786431 () SeekEntryResult!10182)

(assert (=> b!1388232 (= e!786431 e!786430)))

(assert (=> b!1388232 (= lt!610221 (select (arr!45817 (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938))) (index!43100 lt!610222)))))

(declare-fun c!129192 () Bool)

(assert (=> b!1388232 (= c!129192 (= lt!610221 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1388233 () Bool)

(assert (=> b!1388233 (= e!786429 (seekKeyOrZeroReturnVacant!0 (x!124723 lt!610222) (index!43100 lt!610222) (index!43100 lt!610222) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)) mask!2987))))

(declare-fun b!1388234 () Bool)

(assert (=> b!1388234 (= e!786431 Undefined!10182)))

(declare-fun d!149807 () Bool)

(declare-fun lt!610223 () SeekEntryResult!10182)

(assert (=> d!149807 (and (or (is-Undefined!10182 lt!610223) (not (is-Found!10182 lt!610223)) (and (bvsge (index!43099 lt!610223) #b00000000000000000000000000000000) (bvslt (index!43099 lt!610223) (size!46368 (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)))))) (or (is-Undefined!10182 lt!610223) (is-Found!10182 lt!610223) (not (is-MissingZero!10182 lt!610223)) (and (bvsge (index!43098 lt!610223) #b00000000000000000000000000000000) (bvslt (index!43098 lt!610223) (size!46368 (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)))))) (or (is-Undefined!10182 lt!610223) (is-Found!10182 lt!610223) (is-MissingZero!10182 lt!610223) (not (is-MissingVacant!10182 lt!610223)) (and (bvsge (index!43101 lt!610223) #b00000000000000000000000000000000) (bvslt (index!43101 lt!610223) (size!46368 (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)))))) (or (is-Undefined!10182 lt!610223) (ite (is-Found!10182 lt!610223) (= (select (arr!45817 (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938))) (index!43099 lt!610223)) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite (is-MissingZero!10182 lt!610223) (= (select (arr!45817 (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938))) (index!43098 lt!610223)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10182 lt!610223) (= (select (arr!45817 (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938))) (index!43101 lt!610223)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149807 (= lt!610223 e!786431)))

(declare-fun c!129193 () Bool)

(assert (=> d!149807 (= c!129193 (and (is-Intermediate!10182 lt!610222) (undefined!10994 lt!610222)))))

(assert (=> d!149807 (= lt!610222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)) mask!2987))))

(assert (=> d!149807 (validMask!0 mask!2987)))

(assert (=> d!149807 (= (seekEntryOrOpen!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94894 (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46368 a!2938)) mask!2987) lt!610223)))

(assert (= (and d!149807 c!129193) b!1388234))

(assert (= (and d!149807 (not c!129193)) b!1388232))

(assert (= (and b!1388232 c!129192) b!1388229))

(assert (= (and b!1388232 (not c!129192)) b!1388231))

(assert (= (and b!1388231 c!129194) b!1388230))

(assert (= (and b!1388231 (not c!129194)) b!1388233))

(declare-fun m!1274019 () Bool)

(assert (=> b!1388232 m!1274019))

(assert (=> b!1388233 m!1273529))

(declare-fun m!1274021 () Bool)

(assert (=> b!1388233 m!1274021))

(declare-fun m!1274023 () Bool)

(assert (=> d!149807 m!1274023))

(assert (=> d!149807 m!1273541))

(declare-fun m!1274025 () Bool)

(assert (=> d!149807 m!1274025))

(declare-fun m!1274027 () Bool)

(assert (=> d!149807 m!1274027))

(assert (=> d!149807 m!1273529))

(assert (=> d!149807 m!1273765))

(assert (=> d!149807 m!1273765))

(assert (=> d!149807 m!1273529))

(declare-fun m!1274029 () Bool)

(assert (=> d!149807 m!1274029))

(assert (=> b!1388038 d!149807))

(declare-fun d!149809 () Bool)

(declare-fun lt!610226 () Bool)

(declare-fun content!769 (List!32525) (Set (_ BitVec 64)))

(assert (=> d!149809 (= lt!610226 (set.member (select (arr!45817 a!2938) #b00000000000000000000000000000000) (content!769 Nil!32522)))))

(declare-fun e!786436 () Bool)

(assert (=> d!149809 (= lt!610226 e!786436)))

(declare-fun res!928739 () Bool)

(assert (=> d!149809 (=> (not res!928739) (not e!786436))))

(assert (=> d!149809 (= res!928739 (is-Cons!32521 Nil!32522))))

(assert (=> d!149809 (= (contains!9759 Nil!32522 (select (arr!45817 a!2938) #b00000000000000000000000000000000)) lt!610226)))

(declare-fun b!1388239 () Bool)

(declare-fun e!786437 () Bool)

(assert (=> b!1388239 (= e!786436 e!786437)))

(declare-fun res!928740 () Bool)

(assert (=> b!1388239 (=> res!928740 e!786437)))

(assert (=> b!1388239 (= res!928740 (= (h!33733 Nil!32522) (select (arr!45817 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1388240 () Bool)

(assert (=> b!1388240 (= e!786437 (contains!9759 (t!47226 Nil!32522) (select (arr!45817 a!2938) #b00000000000000000000000000000000)))))

(assert (= (and d!149809 res!928739) b!1388239))

(assert (= (and b!1388239 (not res!928740)) b!1388240))

(declare-fun m!1274031 () Bool)

(assert (=> d!149809 m!1274031))

(assert (=> d!149809 m!1273647))

(declare-fun m!1274033 () Bool)

(assert (=> d!149809 m!1274033))

(assert (=> b!1388240 m!1273647))

(declare-fun m!1274035 () Bool)

(assert (=> b!1388240 m!1274035))

(assert (=> b!1387927 d!149809))

(declare-fun b!1388253 () Bool)

(declare-fun e!786445 () SeekEntryResult!10182)

(declare-fun e!786444 () SeekEntryResult!10182)

(assert (=> b!1388253 (= e!786445 e!786444)))

(declare-fun lt!610232 () (_ BitVec 64))

(declare-fun c!129203 () Bool)

(assert (=> b!1388253 (= c!129203 (= lt!610232 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun b!1388254 () Bool)

(assert (=> b!1388254 (= e!786444 (Found!10182 (index!43100 lt!610131)))))

(declare-fun e!786446 () SeekEntryResult!10182)

(declare-fun b!1388255 () Bool)

(assert (=> b!1388255 (= e!786446 (seekKeyOrZeroReturnVacant!0 (bvadd (x!124723 lt!610131) #b00000000000000000000000000000001) (nextIndex!0 (index!43100 lt!610131) (x!124723 lt!610131) mask!2987) (index!43100 lt!610131) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610020 mask!2987))))

(declare-fun b!1388256 () Bool)

(assert (=> b!1388256 (= e!786445 Undefined!10182)))

(declare-fun b!1388257 () Bool)

(declare-fun c!129202 () Bool)

(assert (=> b!1388257 (= c!129202 (= lt!610232 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388257 (= e!786444 e!786446)))

(declare-fun lt!610231 () SeekEntryResult!10182)

(declare-fun d!149811 () Bool)

(assert (=> d!149811 (and (or (is-Undefined!10182 lt!610231) (not (is-Found!10182 lt!610231)) (and (bvsge (index!43099 lt!610231) #b00000000000000000000000000000000) (bvslt (index!43099 lt!610231) (size!46368 lt!610020)))) (or (is-Undefined!10182 lt!610231) (is-Found!10182 lt!610231) (not (is-MissingVacant!10182 lt!610231)) (not (= (index!43101 lt!610231) (index!43100 lt!610131))) (and (bvsge (index!43101 lt!610231) #b00000000000000000000000000000000) (bvslt (index!43101 lt!610231) (size!46368 lt!610020)))) (or (is-Undefined!10182 lt!610231) (ite (is-Found!10182 lt!610231) (= (select (arr!45817 lt!610020) (index!43099 lt!610231)) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (and (is-MissingVacant!10182 lt!610231) (= (index!43101 lt!610231) (index!43100 lt!610131)) (= (select (arr!45817 lt!610020) (index!43101 lt!610231)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!149811 (= lt!610231 e!786445)))

(declare-fun c!129201 () Bool)

(assert (=> d!149811 (= c!129201 (bvsge (x!124723 lt!610131) #b01111111111111111111111111111110))))

(assert (=> d!149811 (= lt!610232 (select (arr!45817 lt!610020) (index!43100 lt!610131)))))

(assert (=> d!149811 (validMask!0 mask!2987)))

(assert (=> d!149811 (= (seekKeyOrZeroReturnVacant!0 (x!124723 lt!610131) (index!43100 lt!610131) (index!43100 lt!610131) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610020 mask!2987) lt!610231)))

(declare-fun b!1388258 () Bool)

(assert (=> b!1388258 (= e!786446 (MissingVacant!10182 (index!43100 lt!610131)))))

(assert (= (and d!149811 c!129201) b!1388256))

(assert (= (and d!149811 (not c!129201)) b!1388253))

(assert (= (and b!1388253 c!129203) b!1388254))

(assert (= (and b!1388253 (not c!129203)) b!1388257))

(assert (= (and b!1388257 c!129202) b!1388258))

(assert (= (and b!1388257 (not c!129202)) b!1388255))

(declare-fun m!1274037 () Bool)

(assert (=> b!1388255 m!1274037))

(assert (=> b!1388255 m!1274037))

(assert (=> b!1388255 m!1273529))

(declare-fun m!1274039 () Bool)

(assert (=> b!1388255 m!1274039))

(declare-fun m!1274041 () Bool)

(assert (=> d!149811 m!1274041))

(declare-fun m!1274043 () Bool)

(assert (=> d!149811 m!1274043))

(assert (=> d!149811 m!1273749))

(assert (=> d!149811 m!1273541))

(assert (=> b!1388024 d!149811))

(assert (=> b!1387929 d!149787))

(assert (=> b!1387950 d!149787))

(declare-fun d!149813 () Bool)

(assert (=> d!149813 (= (validKeyInArray!0 (select (arr!45817 lt!610020) startIndex!16)) (and (not (= (select (arr!45817 lt!610020) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45817 lt!610020) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387944 d!149813))

(declare-fun b!1388259 () Bool)

(declare-fun lt!610234 () SeekEntryResult!10182)

(assert (=> b!1388259 (and (bvsge (index!43100 lt!610234) #b00000000000000000000000000000000) (bvslt (index!43100 lt!610234) (size!46368 lt!610020)))))

(declare-fun res!928743 () Bool)

(assert (=> b!1388259 (= res!928743 (= (select (arr!45817 lt!610020) (index!43100 lt!610234)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786448 () Bool)

(assert (=> b!1388259 (=> res!928743 e!786448)))

(declare-fun b!1388260 () Bool)

(declare-fun e!786447 () SeekEntryResult!10182)

(assert (=> b!1388260 (= e!786447 (Intermediate!10182 true (toIndex!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1388261 () Bool)

(declare-fun e!786449 () Bool)

(declare-fun e!786450 () Bool)

(assert (=> b!1388261 (= e!786449 e!786450)))

(declare-fun res!928741 () Bool)

(assert (=> b!1388261 (= res!928741 (and (is-Intermediate!10182 lt!610234) (not (undefined!10994 lt!610234)) (bvslt (x!124723 lt!610234) #b01111111111111111111111111111110) (bvsge (x!124723 lt!610234) #b00000000000000000000000000000000) (bvsge (x!124723 lt!610234) #b00000000000000000000000000000000)))))

(assert (=> b!1388261 (=> (not res!928741) (not e!786450))))

(declare-fun b!1388262 () Bool)

(assert (=> b!1388262 (and (bvsge (index!43100 lt!610234) #b00000000000000000000000000000000) (bvslt (index!43100 lt!610234) (size!46368 lt!610020)))))

(assert (=> b!1388262 (= e!786448 (= (select (arr!45817 lt!610020) (index!43100 lt!610234)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388263 () Bool)

(declare-fun e!786451 () SeekEntryResult!10182)

(assert (=> b!1388263 (= e!786447 e!786451)))

(declare-fun c!129206 () Bool)

(declare-fun lt!610233 () (_ BitVec 64))

(assert (=> b!1388263 (= c!129206 (or (= lt!610233 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (= (bvadd lt!610233 lt!610233) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1388264 () Bool)

(assert (=> b!1388264 (= e!786451 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610020 mask!2987))))

(declare-fun b!1388265 () Bool)

(assert (=> b!1388265 (= e!786451 (Intermediate!10182 false (toIndex!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun d!149815 () Bool)

(assert (=> d!149815 e!786449))

(declare-fun c!129204 () Bool)

(assert (=> d!149815 (= c!129204 (and (is-Intermediate!10182 lt!610234) (undefined!10994 lt!610234)))))

(assert (=> d!149815 (= lt!610234 e!786447)))

(declare-fun c!129205 () Bool)

(assert (=> d!149815 (= c!129205 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!149815 (= lt!610233 (select (arr!45817 lt!610020) (toIndex!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987)))))

(assert (=> d!149815 (validMask!0 mask!2987)))

(assert (=> d!149815 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610020 mask!2987) lt!610234)))

(declare-fun b!1388266 () Bool)

(assert (=> b!1388266 (= e!786449 (bvsge (x!124723 lt!610234) #b01111111111111111111111111111110))))

(declare-fun b!1388267 () Bool)

(assert (=> b!1388267 (and (bvsge (index!43100 lt!610234) #b00000000000000000000000000000000) (bvslt (index!43100 lt!610234) (size!46368 lt!610020)))))

(declare-fun res!928742 () Bool)

(assert (=> b!1388267 (= res!928742 (= (select (arr!45817 lt!610020) (index!43100 lt!610234)) (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(assert (=> b!1388267 (=> res!928742 e!786448)))

(assert (=> b!1388267 (= e!786450 e!786448)))

(assert (= (and d!149815 c!129205) b!1388260))

(assert (= (and d!149815 (not c!129205)) b!1388263))

(assert (= (and b!1388263 c!129206) b!1388265))

(assert (= (and b!1388263 (not c!129206)) b!1388264))

(assert (= (and d!149815 c!129204) b!1388266))

(assert (= (and d!149815 (not c!129204)) b!1388261))

(assert (= (and b!1388261 res!928741) b!1388267))

(assert (= (and b!1388267 (not res!928742)) b!1388259))

(assert (= (and b!1388259 (not res!928743)) b!1388262))

(assert (=> b!1388264 m!1273765))

(declare-fun m!1274045 () Bool)

(assert (=> b!1388264 m!1274045))

(assert (=> b!1388264 m!1274045))

(assert (=> b!1388264 m!1273529))

(declare-fun m!1274047 () Bool)

(assert (=> b!1388264 m!1274047))

(declare-fun m!1274049 () Bool)

(assert (=> b!1388259 m!1274049))

(assert (=> d!149815 m!1273765))

(declare-fun m!1274051 () Bool)

(assert (=> d!149815 m!1274051))

(assert (=> d!149815 m!1273541))

(assert (=> b!1388267 m!1274049))

(assert (=> b!1388262 m!1274049))

(assert (=> d!149697 d!149815))

(declare-fun d!149817 () Bool)

(declare-fun lt!610236 () (_ BitVec 32))

(declare-fun lt!610235 () (_ BitVec 32))

(assert (=> d!149817 (= lt!610236 (bvmul (bvxor lt!610235 (bvlshr lt!610235 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149817 (= lt!610235 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (bvlshr (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149817 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928719 (let ((h!33737 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (bvlshr (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124730 (bvmul (bvxor h!33737 (bvlshr h!33737 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124730 (bvlshr x!124730 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928719 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928719 #b00000000000000000000000000000000))))))

(assert (=> d!149817 (= (toIndex!0 (select (store (arr!45817 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (bvand (bvxor lt!610236 (bvlshr lt!610236 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149697 d!149817))

(assert (=> d!149697 d!149725))

(declare-fun b!1388268 () Bool)

(declare-fun e!786454 () Bool)

(declare-fun call!66628 () Bool)

(assert (=> b!1388268 (= e!786454 call!66628)))

(declare-fun b!1388269 () Bool)

(declare-fun e!786452 () Bool)

(declare-fun e!786453 () Bool)

(assert (=> b!1388269 (= e!786452 e!786453)))

(declare-fun c!129207 () Bool)

(assert (=> b!1388269 (= c!129207 (validKeyInArray!0 (select (arr!45817 lt!610020) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun bm!66625 () Bool)

(assert (=> bm!66625 (= call!66628 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!610020 mask!2987))))

(declare-fun b!1388270 () Bool)

(assert (=> b!1388270 (= e!786453 call!66628)))

(declare-fun d!149819 () Bool)

(declare-fun res!928745 () Bool)

(assert (=> d!149819 (=> res!928745 e!786452)))

(assert (=> d!149819 (= res!928745 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46368 lt!610020)))))

(assert (=> d!149819 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!610020 mask!2987) e!786452)))

(declare-fun b!1388271 () Bool)

(assert (=> b!1388271 (= e!786453 e!786454)))

(declare-fun lt!610238 () (_ BitVec 64))

(assert (=> b!1388271 (= lt!610238 (select (arr!45817 lt!610020) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!610239 () Unit!46345)

(assert (=> b!1388271 (= lt!610239 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610020 lt!610238 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1388271 (arrayContainsKey!0 lt!610020 lt!610238 #b00000000000000000000000000000000)))

(declare-fun lt!610237 () Unit!46345)

(assert (=> b!1388271 (= lt!610237 lt!610239)))

(declare-fun res!928744 () Bool)

(assert (=> b!1388271 (= res!928744 (= (seekEntryOrOpen!0 (select (arr!45817 lt!610020) (bvadd startIndex!16 #b00000000000000000000000000000001)) lt!610020 mask!2987) (Found!10182 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1388271 (=> (not res!928744) (not e!786454))))

(assert (= (and d!149819 (not res!928745)) b!1388269))

(assert (= (and b!1388269 c!129207) b!1388271))

(assert (= (and b!1388269 (not c!129207)) b!1388270))

(assert (= (and b!1388271 res!928744) b!1388268))

(assert (= (or b!1388268 b!1388270) bm!66625))

(declare-fun m!1274053 () Bool)

(assert (=> b!1388269 m!1274053))

(assert (=> b!1388269 m!1274053))

(declare-fun m!1274055 () Bool)

(assert (=> b!1388269 m!1274055))

(declare-fun m!1274057 () Bool)

(assert (=> bm!66625 m!1274057))

(assert (=> b!1388271 m!1274053))

(declare-fun m!1274059 () Bool)

(assert (=> b!1388271 m!1274059))

(declare-fun m!1274061 () Bool)

(assert (=> b!1388271 m!1274061))

(assert (=> b!1388271 m!1274053))

(declare-fun m!1274063 () Bool)

(assert (=> b!1388271 m!1274063))

(assert (=> bm!66607 d!149819))

(declare-fun b!1388272 () Bool)

(declare-fun e!786456 () SeekEntryResult!10182)

(declare-fun e!786455 () SeekEntryResult!10182)

(assert (=> b!1388272 (= e!786456 e!786455)))

(declare-fun lt!610241 () (_ BitVec 64))

(declare-fun c!129210 () Bool)

(assert (=> b!1388272 (= c!129210 (= lt!610241 (select (arr!45817 a!2938) startIndex!16)))))

(declare-fun b!1388273 () Bool)

(assert (=> b!1388273 (= e!786455 (Found!10182 (index!43100 lt!610143)))))

(declare-fun b!1388274 () Bool)

(declare-fun e!786457 () SeekEntryResult!10182)

(assert (=> b!1388274 (= e!786457 (seekKeyOrZeroReturnVacant!0 (bvadd (x!124723 lt!610143) #b00000000000000000000000000000001) (nextIndex!0 (index!43100 lt!610143) (x!124723 lt!610143) mask!2987) (index!43100 lt!610143) (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1388275 () Bool)

(assert (=> b!1388275 (= e!786456 Undefined!10182)))

(declare-fun b!1388276 () Bool)

(declare-fun c!129209 () Bool)

(assert (=> b!1388276 (= c!129209 (= lt!610241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388276 (= e!786455 e!786457)))

(declare-fun lt!610240 () SeekEntryResult!10182)

(declare-fun d!149821 () Bool)

(assert (=> d!149821 (and (or (is-Undefined!10182 lt!610240) (not (is-Found!10182 lt!610240)) (and (bvsge (index!43099 lt!610240) #b00000000000000000000000000000000) (bvslt (index!43099 lt!610240) (size!46368 a!2938)))) (or (is-Undefined!10182 lt!610240) (is-Found!10182 lt!610240) (not (is-MissingVacant!10182 lt!610240)) (not (= (index!43101 lt!610240) (index!43100 lt!610143))) (and (bvsge (index!43101 lt!610240) #b00000000000000000000000000000000) (bvslt (index!43101 lt!610240) (size!46368 a!2938)))) (or (is-Undefined!10182 lt!610240) (ite (is-Found!10182 lt!610240) (= (select (arr!45817 a!2938) (index!43099 lt!610240)) (select (arr!45817 a!2938) startIndex!16)) (and (is-MissingVacant!10182 lt!610240) (= (index!43101 lt!610240) (index!43100 lt!610143)) (= (select (arr!45817 a!2938) (index!43101 lt!610240)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!149821 (= lt!610240 e!786456)))

(declare-fun c!129208 () Bool)

(assert (=> d!149821 (= c!129208 (bvsge (x!124723 lt!610143) #b01111111111111111111111111111110))))

(assert (=> d!149821 (= lt!610241 (select (arr!45817 a!2938) (index!43100 lt!610143)))))

(assert (=> d!149821 (validMask!0 mask!2987)))

(assert (=> d!149821 (= (seekKeyOrZeroReturnVacant!0 (x!124723 lt!610143) (index!43100 lt!610143) (index!43100 lt!610143) (select (arr!45817 a!2938) startIndex!16) a!2938 mask!2987) lt!610240)))

(declare-fun b!1388277 () Bool)

(assert (=> b!1388277 (= e!786457 (MissingVacant!10182 (index!43100 lt!610143)))))

(assert (= (and d!149821 c!129208) b!1388275))

(assert (= (and d!149821 (not c!129208)) b!1388272))

(assert (= (and b!1388272 c!129210) b!1388273))

(assert (= (and b!1388272 (not c!129210)) b!1388276))

(assert (= (and b!1388276 c!129209) b!1388277))

(assert (= (and b!1388276 (not c!129209)) b!1388274))

(declare-fun m!1274065 () Bool)

(assert (=> b!1388274 m!1274065))

(assert (=> b!1388274 m!1274065))

(assert (=> b!1388274 m!1273517))

(declare-fun m!1274067 () Bool)

(assert (=> b!1388274 m!1274067))

(declare-fun m!1274069 () Bool)

(assert (=> d!149821 m!1274069))

(declare-fun m!1274071 () Bool)

(assert (=> d!149821 m!1274071))

(assert (=> d!149821 m!1273799))

(assert (=> d!149821 m!1273541))

(assert (=> b!1388043 d!149821))

(declare-fun b!1388278 () Bool)

(declare-fun e!786460 () Bool)

(declare-fun call!66629 () Bool)

(assert (=> b!1388278 (= e!786460 call!66629)))

(declare-fun b!1388279 () Bool)

(declare-fun e!786458 () Bool)

(declare-fun e!786459 () Bool)

(assert (=> b!1388279 (= e!786458 e!786459)))

(declare-fun c!129211 () Bool)

(assert (=> b!1388279 (= c!129211 (validKeyInArray!0 (select (arr!45817 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!66626 () Bool)

(assert (=> bm!66626 (= call!66629 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1388280 () Bool)

(assert (=> b!1388280 (= e!786459 call!66629)))

(declare-fun d!149823 () Bool)

(declare-fun res!928747 () Bool)

(assert (=> d!149823 (=> res!928747 e!786458)))

(assert (=> d!149823 (= res!928747 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46368 a!2938)))))

(assert (=> d!149823 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987) e!786458)))

(declare-fun b!1388281 () Bool)

(assert (=> b!1388281 (= e!786459 e!786460)))

(declare-fun lt!610243 () (_ BitVec 64))

(assert (=> b!1388281 (= lt!610243 (select (arr!45817 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!610244 () Unit!46345)

(assert (=> b!1388281 (= lt!610244 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610243 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1388281 (arrayContainsKey!0 a!2938 lt!610243 #b00000000000000000000000000000000)))

(declare-fun lt!610242 () Unit!46345)

(assert (=> b!1388281 (= lt!610242 lt!610244)))

(declare-fun res!928746 () Bool)

(assert (=> b!1388281 (= res!928746 (= (seekEntryOrOpen!0 (select (arr!45817 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2938 mask!2987) (Found!10182 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1388281 (=> (not res!928746) (not e!786460))))

(assert (= (and d!149823 (not res!928747)) b!1388279))

(assert (= (and b!1388279 c!129211) b!1388281))

(assert (= (and b!1388279 (not c!129211)) b!1388280))

(assert (= (and b!1388281 res!928746) b!1388278))

(assert (= (or b!1388278 b!1388280) bm!66626))

(assert (=> b!1388279 m!1273973))

(assert (=> b!1388279 m!1273973))

(assert (=> b!1388279 m!1273977))

(declare-fun m!1274073 () Bool)

(assert (=> bm!66626 m!1274073))

(assert (=> b!1388281 m!1273973))

(declare-fun m!1274075 () Bool)

(assert (=> b!1388281 m!1274075))

(declare-fun m!1274077 () Bool)

(assert (=> b!1388281 m!1274077))

(assert (=> b!1388281 m!1273973))

(declare-fun m!1274079 () Bool)

(assert (=> b!1388281 m!1274079))

(assert (=> bm!66608 d!149823))

(push 1)

(assert (not b!1388214))

(assert (not d!149777))

(assert (not b!1388212))

(assert (not bm!66623))

(assert (not b!1388205))

(assert (not b!1388203))

(assert (not b!1388194))

(assert (not b!1388255))

(assert (not bm!66626))

(assert (not d!149793))

(assert (not b!1388219))

(assert (not d!149807))

(assert (not d!149811))

(assert (not b!1388271))

(assert (not d!149799))

(assert (not b!1388269))

(assert (not b!1388240))

(assert (not b!1388211))

(assert (not b!1388264))

(assert (not b!1388209))

(assert (not b!1388207))

(assert (not d!149781))

(assert (not d!149783))

(assert (not bm!66625))

(assert (not d!149821))

(assert (not d!149797))

(assert (not b!1388222))

(assert (not b!1388274))

(assert (not b!1388233))

(assert (not bm!66624))

(assert (not d!149801))

(assert (not b!1388279))

(assert (not b!1388227))

(assert (not d!149805))

(assert (not d!149815))

(assert (not b!1388281))

(assert (not d!149809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

