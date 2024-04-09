; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118684 () Bool)

(assert start!118684)

(declare-fun b!1387045 () Bool)

(declare-fun e!785693 () Bool)

(declare-fun e!785692 () Bool)

(assert (=> b!1387045 (= e!785693 e!785692)))

(declare-fun res!928207 () Bool)

(assert (=> b!1387045 (=> (not res!928207) (not e!785692))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-datatypes ((array!94878 0))(
  ( (array!94879 (arr!45811 (Array (_ BitVec 32) (_ BitVec 64))) (size!46362 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94878)

(assert (=> b!1387045 (= res!928207 (and (bvslt startIndex!16 (bvsub (size!46362 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!46327 0))(
  ( (Unit!46328) )
))
(declare-fun lt!609654 () Unit!46327)

(declare-fun e!785696 () Unit!46327)

(assert (=> b!1387045 (= lt!609654 e!785696)))

(declare-fun c!128864 () Bool)

(declare-fun e!785695 () Bool)

(assert (=> b!1387045 (= c!128864 e!785695)))

(declare-fun res!928206 () Bool)

(assert (=> b!1387045 (=> (not res!928206) (not e!785695))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1387045 (= res!928206 (not (= startIndex!16 i!1065)))))

(declare-fun lt!609652 () array!94878)

(assert (=> b!1387045 (= lt!609652 (array!94879 (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46362 a!2938)))))

(declare-fun b!1387046 () Bool)

(declare-fun res!928202 () Bool)

(assert (=> b!1387046 (=> (not res!928202) (not e!785693))))

(declare-datatypes ((List!32519 0))(
  ( (Nil!32516) (Cons!32515 (h!33724 (_ BitVec 64)) (t!47220 List!32519)) )
))
(declare-fun arrayNoDuplicates!0 (array!94878 (_ BitVec 32) List!32519) Bool)

(assert (=> b!1387046 (= res!928202 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32516))))

(declare-fun b!1387047 () Bool)

(declare-fun res!928205 () Bool)

(assert (=> b!1387047 (=> (not res!928205) (not e!785693))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94878 (_ BitVec 32)) Bool)

(assert (=> b!1387047 (= res!928205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387048 () Bool)

(declare-fun lt!609655 () Unit!46327)

(assert (=> b!1387048 (= e!785696 lt!609655)))

(declare-fun lt!609653 () Unit!46327)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46327)

(assert (=> b!1387048 (= lt!609653 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10176 0))(
  ( (MissingZero!10176 (index!43074 (_ BitVec 32))) (Found!10176 (index!43075 (_ BitVec 32))) (Intermediate!10176 (undefined!10988 Bool) (index!43076 (_ BitVec 32)) (x!124692 (_ BitVec 32))) (Undefined!10176) (MissingVacant!10176 (index!43077 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94878 (_ BitVec 32)) SeekEntryResult!10176)

(assert (=> b!1387048 (= (seekEntryOrOpen!0 (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609652 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46327)

(assert (=> b!1387048 (= lt!609655 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1387048 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387049 () Bool)

(declare-fun Unit!46329 () Unit!46327)

(assert (=> b!1387049 (= e!785696 Unit!46329)))

(declare-fun b!1387051 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387051 (= e!785695 (validKeyInArray!0 (select (arr!45811 a!2938) startIndex!16)))))

(declare-fun b!1387052 () Bool)

(declare-fun res!928209 () Bool)

(assert (=> b!1387052 (=> (not res!928209) (not e!785693))))

(assert (=> b!1387052 (= res!928209 (and (not (= (select (arr!45811 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45811 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387053 () Bool)

(assert (=> b!1387053 (= e!785692 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!609652 mask!2987)))))

(assert (=> b!1387053 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609652 mask!2987)))

(declare-fun lt!609651 () Unit!46327)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46327)

(assert (=> b!1387053 (= lt!609651 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1387054 () Bool)

(declare-fun res!928208 () Bool)

(assert (=> b!1387054 (=> (not res!928208) (not e!785693))))

(assert (=> b!1387054 (= res!928208 (and (= (size!46362 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46362 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46362 a!2938))))))

(declare-fun res!928203 () Bool)

(assert (=> start!118684 (=> (not res!928203) (not e!785693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118684 (= res!928203 (validMask!0 mask!2987))))

(assert (=> start!118684 e!785693))

(assert (=> start!118684 true))

(declare-fun array_inv!34756 (array!94878) Bool)

(assert (=> start!118684 (array_inv!34756 a!2938)))

(declare-fun b!1387050 () Bool)

(declare-fun res!928204 () Bool)

(assert (=> b!1387050 (=> (not res!928204) (not e!785693))))

(assert (=> b!1387050 (= res!928204 (validKeyInArray!0 (select (arr!45811 a!2938) i!1065)))))

(assert (= (and start!118684 res!928203) b!1387054))

(assert (= (and b!1387054 res!928208) b!1387050))

(assert (= (and b!1387050 res!928204) b!1387046))

(assert (= (and b!1387046 res!928202) b!1387047))

(assert (= (and b!1387047 res!928205) b!1387052))

(assert (= (and b!1387052 res!928209) b!1387045))

(assert (= (and b!1387045 res!928206) b!1387051))

(assert (= (and b!1387045 c!128864) b!1387048))

(assert (= (and b!1387045 (not c!128864)) b!1387049))

(assert (= (and b!1387045 res!928207) b!1387053))

(declare-fun m!1272545 () Bool)

(assert (=> b!1387045 m!1272545))

(declare-fun m!1272547 () Bool)

(assert (=> b!1387053 m!1272547))

(declare-fun m!1272549 () Bool)

(assert (=> b!1387053 m!1272549))

(declare-fun m!1272551 () Bool)

(assert (=> b!1387053 m!1272551))

(declare-fun m!1272553 () Bool)

(assert (=> b!1387047 m!1272553))

(declare-fun m!1272555 () Bool)

(assert (=> b!1387046 m!1272555))

(declare-fun m!1272557 () Bool)

(assert (=> b!1387048 m!1272557))

(declare-fun m!1272559 () Bool)

(assert (=> b!1387048 m!1272559))

(assert (=> b!1387048 m!1272545))

(declare-fun m!1272561 () Bool)

(assert (=> b!1387048 m!1272561))

(declare-fun m!1272563 () Bool)

(assert (=> b!1387048 m!1272563))

(declare-fun m!1272565 () Bool)

(assert (=> b!1387048 m!1272565))

(assert (=> b!1387048 m!1272559))

(declare-fun m!1272567 () Bool)

(assert (=> b!1387048 m!1272567))

(assert (=> b!1387048 m!1272561))

(declare-fun m!1272569 () Bool)

(assert (=> b!1387048 m!1272569))

(declare-fun m!1272571 () Bool)

(assert (=> b!1387050 m!1272571))

(assert (=> b!1387050 m!1272571))

(declare-fun m!1272573 () Bool)

(assert (=> b!1387050 m!1272573))

(declare-fun m!1272575 () Bool)

(assert (=> start!118684 m!1272575))

(declare-fun m!1272577 () Bool)

(assert (=> start!118684 m!1272577))

(assert (=> b!1387052 m!1272571))

(assert (=> b!1387051 m!1272561))

(assert (=> b!1387051 m!1272561))

(declare-fun m!1272579 () Bool)

(assert (=> b!1387051 m!1272579))

(push 1)

(assert (not b!1387050))

(assert (not b!1387046))

(assert (not b!1387051))

(assert (not b!1387053))

(assert (not b!1387047))

(assert (not b!1387048))

(assert (not start!118684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149399 () Bool)

(assert (=> d!149399 (= (validKeyInArray!0 (select (arr!45811 a!2938) i!1065)) (and (not (= (select (arr!45811 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45811 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387050 d!149399))

(declare-fun d!149401 () Bool)

(assert (=> d!149401 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun lt!609703 () Unit!46327)

(declare-fun choose!38 (array!94878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46327)

(assert (=> d!149401 (= lt!609703 (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> d!149401 (validMask!0 mask!2987)))

(assert (=> d!149401 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) lt!609703)))

(declare-fun bs!40304 () Bool)

(assert (= bs!40304 d!149401))

(assert (=> bs!40304 m!1272569))

(declare-fun m!1272689 () Bool)

(assert (=> bs!40304 m!1272689))

(assert (=> bs!40304 m!1272575))

(assert (=> b!1387048 d!149401))

(declare-fun d!149403 () Bool)

(declare-fun e!785771 () Bool)

(assert (=> d!149403 e!785771))

(declare-fun res!928290 () Bool)

(assert (=> d!149403 (=> (not res!928290) (not e!785771))))

(assert (=> d!149403 (= res!928290 (and (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46362 a!2938)) (and (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46362 a!2938)))) (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46362 a!2938)) (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46362 a!2938)))) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46362 a!2938))))))

(declare-fun lt!609724 () Unit!46327)

(declare-fun choose!14 (array!94878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46327)

(assert (=> d!149403 (= lt!609724 (choose!14 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (=> d!149403 (validMask!0 mask!2987)))

(assert (=> d!149403 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987) lt!609724)))

(declare-fun b!1387171 () Bool)

(assert (=> b!1387171 (= e!785771 (= (seekEntryOrOpen!0 (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94879 (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46362 a!2938)) mask!2987)))))

(assert (= (and d!149403 res!928290) b!1387171))

(declare-fun m!1272723 () Bool)

(assert (=> d!149403 m!1272723))

(assert (=> d!149403 m!1272575))

(assert (=> b!1387171 m!1272545))

(assert (=> b!1387171 m!1272559))

(assert (=> b!1387171 m!1272561))

(assert (=> b!1387171 m!1272559))

(declare-fun m!1272725 () Bool)

(assert (=> b!1387171 m!1272725))

(assert (=> b!1387171 m!1272561))

(assert (=> b!1387171 m!1272563))

(assert (=> b!1387048 d!149403))

(declare-fun b!1387191 () Bool)

(declare-fun e!785786 () SeekEntryResult!10176)

(declare-fun lt!609738 () SeekEntryResult!10176)

(assert (=> b!1387191 (= e!785786 (MissingZero!10176 (index!43076 lt!609738)))))

(declare-fun b!1387192 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94878 (_ BitVec 32)) SeekEntryResult!10176)

(assert (=> b!1387192 (= e!785786 (seekKeyOrZeroReturnVacant!0 (x!124692 lt!609738) (index!43076 lt!609738) (index!43076 lt!609738) (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1387193 () Bool)

(declare-fun c!128891 () Bool)

(declare-fun lt!609739 () (_ BitVec 64))

(assert (=> b!1387193 (= c!128891 (= lt!609739 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785785 () SeekEntryResult!10176)

(assert (=> b!1387193 (= e!785785 e!785786)))

(declare-fun b!1387194 () Bool)

(assert (=> b!1387194 (= e!785785 (Found!10176 (index!43076 lt!609738)))))

(declare-fun d!149417 () Bool)

(declare-fun lt!609737 () SeekEntryResult!10176)

(assert (=> d!149417 (and (or (is-Undefined!10176 lt!609737) (not (is-Found!10176 lt!609737)) (and (bvsge (index!43075 lt!609737) #b00000000000000000000000000000000) (bvslt (index!43075 lt!609737) (size!46362 a!2938)))) (or (is-Undefined!10176 lt!609737) (is-Found!10176 lt!609737) (not (is-MissingZero!10176 lt!609737)) (and (bvsge (index!43074 lt!609737) #b00000000000000000000000000000000) (bvslt (index!43074 lt!609737) (size!46362 a!2938)))) (or (is-Undefined!10176 lt!609737) (is-Found!10176 lt!609737) (is-MissingZero!10176 lt!609737) (not (is-MissingVacant!10176 lt!609737)) (and (bvsge (index!43077 lt!609737) #b00000000000000000000000000000000) (bvslt (index!43077 lt!609737) (size!46362 a!2938)))) (or (is-Undefined!10176 lt!609737) (ite (is-Found!10176 lt!609737) (= (select (arr!45811 a!2938) (index!43075 lt!609737)) (select (arr!45811 a!2938) startIndex!16)) (ite (is-MissingZero!10176 lt!609737) (= (select (arr!45811 a!2938) (index!43074 lt!609737)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10176 lt!609737) (= (select (arr!45811 a!2938) (index!43077 lt!609737)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!785784 () SeekEntryResult!10176)

(assert (=> d!149417 (= lt!609737 e!785784)))

(declare-fun c!128890 () Bool)

(assert (=> d!149417 (= c!128890 (and (is-Intermediate!10176 lt!609738) (undefined!10988 lt!609738)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94878 (_ BitVec 32)) SeekEntryResult!10176)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!149417 (= lt!609738 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45811 a!2938) startIndex!16) mask!2987) (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987))))

(assert (=> d!149417 (validMask!0 mask!2987)))

(assert (=> d!149417 (= (seekEntryOrOpen!0 (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987) lt!609737)))

(declare-fun b!1387195 () Bool)

(assert (=> b!1387195 (= e!785784 Undefined!10176)))

(declare-fun b!1387196 () Bool)

(assert (=> b!1387196 (= e!785784 e!785785)))

(assert (=> b!1387196 (= lt!609739 (select (arr!45811 a!2938) (index!43076 lt!609738)))))

(declare-fun c!128892 () Bool)

(assert (=> b!1387196 (= c!128892 (= lt!609739 (select (arr!45811 a!2938) startIndex!16)))))

(assert (= (and d!149417 c!128890) b!1387195))

(assert (= (and d!149417 (not c!128890)) b!1387196))

(assert (= (and b!1387196 c!128892) b!1387194))

(assert (= (and b!1387196 (not c!128892)) b!1387193))

(assert (= (and b!1387193 c!128891) b!1387191))

(assert (= (and b!1387193 (not c!128891)) b!1387192))

(assert (=> b!1387192 m!1272561))

(declare-fun m!1272743 () Bool)

(assert (=> b!1387192 m!1272743))

(declare-fun m!1272745 () Bool)

(assert (=> d!149417 m!1272745))

(declare-fun m!1272747 () Bool)

(assert (=> d!149417 m!1272747))

(declare-fun m!1272749 () Bool)

(assert (=> d!149417 m!1272749))

(assert (=> d!149417 m!1272561))

(declare-fun m!1272751 () Bool)

(assert (=> d!149417 m!1272751))

(assert (=> d!149417 m!1272575))

(declare-fun m!1272753 () Bool)

(assert (=> d!149417 m!1272753))

(assert (=> d!149417 m!1272561))

(assert (=> d!149417 m!1272749))

(declare-fun m!1272755 () Bool)

(assert (=> b!1387196 m!1272755))

(assert (=> b!1387048 d!149417))

(declare-fun b!1387197 () Bool)

(declare-fun e!785789 () SeekEntryResult!10176)

(declare-fun lt!609741 () SeekEntryResult!10176)

(assert (=> b!1387197 (= e!785789 (MissingZero!10176 (index!43076 lt!609741)))))

(declare-fun b!1387198 () Bool)

(assert (=> b!1387198 (= e!785789 (seekKeyOrZeroReturnVacant!0 (x!124692 lt!609741) (index!43076 lt!609741) (index!43076 lt!609741) (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609652 mask!2987))))

(declare-fun b!1387199 () Bool)

(declare-fun c!128894 () Bool)

(declare-fun lt!609742 () (_ BitVec 64))

(assert (=> b!1387199 (= c!128894 (= lt!609742 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785788 () SeekEntryResult!10176)

(assert (=> b!1387199 (= e!785788 e!785789)))

(declare-fun b!1387200 () Bool)

(assert (=> b!1387200 (= e!785788 (Found!10176 (index!43076 lt!609741)))))

(declare-fun d!149423 () Bool)

(declare-fun lt!609740 () SeekEntryResult!10176)

(assert (=> d!149423 (and (or (is-Undefined!10176 lt!609740) (not (is-Found!10176 lt!609740)) (and (bvsge (index!43075 lt!609740) #b00000000000000000000000000000000) (bvslt (index!43075 lt!609740) (size!46362 lt!609652)))) (or (is-Undefined!10176 lt!609740) (is-Found!10176 lt!609740) (not (is-MissingZero!10176 lt!609740)) (and (bvsge (index!43074 lt!609740) #b00000000000000000000000000000000) (bvslt (index!43074 lt!609740) (size!46362 lt!609652)))) (or (is-Undefined!10176 lt!609740) (is-Found!10176 lt!609740) (is-MissingZero!10176 lt!609740) (not (is-MissingVacant!10176 lt!609740)) (and (bvsge (index!43077 lt!609740) #b00000000000000000000000000000000) (bvslt (index!43077 lt!609740) (size!46362 lt!609652)))) (or (is-Undefined!10176 lt!609740) (ite (is-Found!10176 lt!609740) (= (select (arr!45811 lt!609652) (index!43075 lt!609740)) (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite (is-MissingZero!10176 lt!609740) (= (select (arr!45811 lt!609652) (index!43074 lt!609740)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10176 lt!609740) (= (select (arr!45811 lt!609652) (index!43077 lt!609740)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!785787 () SeekEntryResult!10176)

(assert (=> d!149423 (= lt!609740 e!785787)))

(declare-fun c!128893 () Bool)

(assert (=> d!149423 (= c!128893 (and (is-Intermediate!10176 lt!609741) (undefined!10988 lt!609741)))))

(assert (=> d!149423 (= lt!609741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609652 mask!2987))))

(assert (=> d!149423 (validMask!0 mask!2987)))

(assert (=> d!149423 (= (seekEntryOrOpen!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609652 mask!2987) lt!609740)))

(declare-fun b!1387201 () Bool)

(assert (=> b!1387201 (= e!785787 Undefined!10176)))

(declare-fun b!1387202 () Bool)

(assert (=> b!1387202 (= e!785787 e!785788)))

(assert (=> b!1387202 (= lt!609742 (select (arr!45811 lt!609652) (index!43076 lt!609741)))))

(declare-fun c!128895 () Bool)

(assert (=> b!1387202 (= c!128895 (= lt!609742 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(assert (= (and d!149423 c!128893) b!1387201))

(assert (= (and d!149423 (not c!128893)) b!1387202))

(assert (= (and b!1387202 c!128895) b!1387200))

(assert (= (and b!1387202 (not c!128895)) b!1387199))

(assert (= (and b!1387199 c!128894) b!1387197))

(assert (= (and b!1387199 (not c!128894)) b!1387198))

(assert (=> b!1387198 m!1272559))

(declare-fun m!1272757 () Bool)

(assert (=> b!1387198 m!1272757))

(declare-fun m!1272759 () Bool)

(assert (=> d!149423 m!1272759))

(declare-fun m!1272761 () Bool)

(assert (=> d!149423 m!1272761))

(declare-fun m!1272763 () Bool)

(assert (=> d!149423 m!1272763))

(assert (=> d!149423 m!1272559))

(declare-fun m!1272765 () Bool)

(assert (=> d!149423 m!1272765))

(assert (=> d!149423 m!1272575))

(declare-fun m!1272767 () Bool)

(assert (=> d!149423 m!1272767))

(assert (=> d!149423 m!1272559))

(assert (=> d!149423 m!1272763))

(declare-fun m!1272769 () Bool)

(assert (=> b!1387202 m!1272769))

(assert (=> b!1387048 d!149423))

(declare-fun call!66570 () Bool)

(declare-fun bm!66567 () Bool)

(assert (=> bm!66567 (= call!66570 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387233 () Bool)

(declare-fun e!785810 () Bool)

(assert (=> b!1387233 (= e!785810 call!66570)))

(declare-fun b!1387234 () Bool)

(declare-fun e!785811 () Bool)

(assert (=> b!1387234 (= e!785811 e!785810)))

(declare-fun c!128906 () Bool)

(assert (=> b!1387234 (= c!128906 (validKeyInArray!0 (select (arr!45811 a!2938) startIndex!16)))))

(declare-fun b!1387235 () Bool)

(declare-fun e!785812 () Bool)

(assert (=> b!1387235 (= e!785810 e!785812)))

(declare-fun lt!609755 () (_ BitVec 64))

(assert (=> b!1387235 (= lt!609755 (select (arr!45811 a!2938) startIndex!16))))

(declare-fun lt!609757 () Unit!46327)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94878 (_ BitVec 64) (_ BitVec 32)) Unit!46327)

(assert (=> b!1387235 (= lt!609757 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609755 startIndex!16))))

(declare-fun arrayContainsKey!0 (array!94878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1387235 (arrayContainsKey!0 a!2938 lt!609755 #b00000000000000000000000000000000)))

(declare-fun lt!609756 () Unit!46327)

(assert (=> b!1387235 (= lt!609756 lt!609757)))

(declare-fun res!928306 () Bool)

(assert (=> b!1387235 (= res!928306 (= (seekEntryOrOpen!0 (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987) (Found!10176 startIndex!16)))))

(assert (=> b!1387235 (=> (not res!928306) (not e!785812))))

(declare-fun d!149425 () Bool)

(declare-fun res!928307 () Bool)

(assert (=> d!149425 (=> res!928307 e!785811)))

(assert (=> d!149425 (= res!928307 (bvsge startIndex!16 (size!46362 a!2938)))))

(assert (=> d!149425 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987) e!785811)))

(declare-fun b!1387236 () Bool)

(assert (=> b!1387236 (= e!785812 call!66570)))

(assert (= (and d!149425 (not res!928307)) b!1387234))

(assert (= (and b!1387234 c!128906) b!1387235))

(assert (= (and b!1387234 (not c!128906)) b!1387233))

(assert (= (and b!1387235 res!928306) b!1387236))

(assert (= (or b!1387236 b!1387233) bm!66567))

(declare-fun m!1272771 () Bool)

(assert (=> bm!66567 m!1272771))

(assert (=> b!1387234 m!1272561))

(assert (=> b!1387234 m!1272561))

(assert (=> b!1387234 m!1272579))

(assert (=> b!1387235 m!1272561))

(declare-fun m!1272773 () Bool)

(assert (=> b!1387235 m!1272773))

(declare-fun m!1272775 () Bool)

(assert (=> b!1387235 m!1272775))

(assert (=> b!1387235 m!1272561))

(assert (=> b!1387235 m!1272563))

(assert (=> b!1387048 d!149425))

(declare-fun bm!66568 () Bool)

(declare-fun call!66571 () Bool)

(assert (=> bm!66568 (= call!66571 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!609652 mask!2987))))

(declare-fun b!1387243 () Bool)

(declare-fun e!785816 () Bool)

(assert (=> b!1387243 (= e!785816 call!66571)))

(declare-fun b!1387244 () Bool)

(declare-fun e!785817 () Bool)

(assert (=> b!1387244 (= e!785817 e!785816)))

(declare-fun c!128910 () Bool)

(assert (=> b!1387244 (= c!128910 (validKeyInArray!0 (select (arr!45811 lt!609652) startIndex!16)))))

(declare-fun b!1387245 () Bool)

(declare-fun e!785818 () Bool)

(assert (=> b!1387245 (= e!785816 e!785818)))

(declare-fun lt!609761 () (_ BitVec 64))

(assert (=> b!1387245 (= lt!609761 (select (arr!45811 lt!609652) startIndex!16))))

(declare-fun lt!609763 () Unit!46327)

(assert (=> b!1387245 (= lt!609763 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609652 lt!609761 startIndex!16))))

(assert (=> b!1387245 (arrayContainsKey!0 lt!609652 lt!609761 #b00000000000000000000000000000000)))

(declare-fun lt!609762 () Unit!46327)

(assert (=> b!1387245 (= lt!609762 lt!609763)))

(declare-fun res!928308 () Bool)

(assert (=> b!1387245 (= res!928308 (= (seekEntryOrOpen!0 (select (arr!45811 lt!609652) startIndex!16) lt!609652 mask!2987) (Found!10176 startIndex!16)))))

(assert (=> b!1387245 (=> (not res!928308) (not e!785818))))

(declare-fun d!149431 () Bool)

(declare-fun res!928309 () Bool)

(assert (=> d!149431 (=> res!928309 e!785817)))

(assert (=> d!149431 (= res!928309 (bvsge startIndex!16 (size!46362 lt!609652)))))

(assert (=> d!149431 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!609652 mask!2987) e!785817)))

(declare-fun b!1387246 () Bool)

(assert (=> b!1387246 (= e!785818 call!66571)))

(assert (= (and d!149431 (not res!928309)) b!1387244))

(assert (= (and b!1387244 c!128910) b!1387245))

(assert (= (and b!1387244 (not c!128910)) b!1387243))

(assert (= (and b!1387245 res!928308) b!1387246))

(assert (= (or b!1387246 b!1387243) bm!66568))

(declare-fun m!1272777 () Bool)

(assert (=> bm!66568 m!1272777))

(declare-fun m!1272779 () Bool)

(assert (=> b!1387244 m!1272779))

(assert (=> b!1387244 m!1272779))

(declare-fun m!1272781 () Bool)

(assert (=> b!1387244 m!1272781))

(assert (=> b!1387245 m!1272779))

(declare-fun m!1272783 () Bool)

(assert (=> b!1387245 m!1272783))

(declare-fun m!1272785 () Bool)

(assert (=> b!1387245 m!1272785))

(assert (=> b!1387245 m!1272779))

(declare-fun m!1272787 () Bool)

(assert (=> b!1387245 m!1272787))

(assert (=> b!1387053 d!149431))

(declare-fun bm!66569 () Bool)

(declare-fun call!66572 () Bool)

(assert (=> bm!66569 (= call!66572 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16 #b00000000000000000000000000000001) lt!609652 mask!2987))))

(declare-fun b!1387247 () Bool)

(declare-fun e!785819 () Bool)

(assert (=> b!1387247 (= e!785819 call!66572)))

(declare-fun b!1387248 () Bool)

(declare-fun e!785820 () Bool)

(assert (=> b!1387248 (= e!785820 e!785819)))

(declare-fun c!128911 () Bool)

(assert (=> b!1387248 (= c!128911 (validKeyInArray!0 (select (arr!45811 lt!609652) (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(declare-fun b!1387249 () Bool)

(declare-fun e!785821 () Bool)

(assert (=> b!1387249 (= e!785819 e!785821)))

(declare-fun lt!609764 () (_ BitVec 64))

(assert (=> b!1387249 (= lt!609764 (select (arr!45811 lt!609652) (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(declare-fun lt!609766 () Unit!46327)

(assert (=> b!1387249 (= lt!609766 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609652 lt!609764 (bvadd #b00000000000000000000000000000001 startIndex!16)))))

(assert (=> b!1387249 (arrayContainsKey!0 lt!609652 lt!609764 #b00000000000000000000000000000000)))

(declare-fun lt!609765 () Unit!46327)

(assert (=> b!1387249 (= lt!609765 lt!609766)))

(declare-fun res!928310 () Bool)

(assert (=> b!1387249 (= res!928310 (= (seekEntryOrOpen!0 (select (arr!45811 lt!609652) (bvadd #b00000000000000000000000000000001 startIndex!16)) lt!609652 mask!2987) (Found!10176 (bvadd #b00000000000000000000000000000001 startIndex!16))))))

(assert (=> b!1387249 (=> (not res!928310) (not e!785821))))

(declare-fun d!149433 () Bool)

(declare-fun res!928311 () Bool)

(assert (=> d!149433 (=> res!928311 e!785820)))

(assert (=> d!149433 (= res!928311 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) (size!46362 lt!609652)))))

(assert (=> d!149433 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609652 mask!2987) e!785820)))

(declare-fun b!1387250 () Bool)

(assert (=> b!1387250 (= e!785821 call!66572)))

(assert (= (and d!149433 (not res!928311)) b!1387248))

(assert (= (and b!1387248 c!128911) b!1387249))

(assert (= (and b!1387248 (not c!128911)) b!1387247))

(assert (= (and b!1387249 res!928310) b!1387250))

(assert (= (or b!1387250 b!1387247) bm!66569))

(declare-fun m!1272801 () Bool)

(assert (=> bm!66569 m!1272801))

(declare-fun m!1272805 () Bool)

(assert (=> b!1387248 m!1272805))

(assert (=> b!1387248 m!1272805))

(declare-fun m!1272807 () Bool)

(assert (=> b!1387248 m!1272807))

(assert (=> b!1387249 m!1272805))

(declare-fun m!1272809 () Bool)

(assert (=> b!1387249 m!1272809))

(declare-fun m!1272811 () Bool)

(assert (=> b!1387249 m!1272811))

(assert (=> b!1387249 m!1272805))

(declare-fun m!1272813 () Bool)

(assert (=> b!1387249 m!1272813))

(assert (=> b!1387053 d!149433))

(declare-fun d!149437 () Bool)

(declare-fun e!785828 () Bool)

(assert (=> d!149437 e!785828))

(declare-fun res!928317 () Bool)

(assert (=> d!149437 (=> (not res!928317) (not e!785828))))

(assert (=> d!149437 (= res!928317 (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46362 a!2938))))))

(declare-fun lt!609769 () Unit!46327)

(declare-fun choose!23 (array!94878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46327)

(assert (=> d!149437 (= lt!609769 (choose!23 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(assert (=> d!149437 (validMask!0 mask!2987)))

(assert (=> d!149437 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987) lt!609769)))

(declare-fun b!1387258 () Bool)

(assert (=> b!1387258 (= e!785828 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) (array!94879 (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46362 a!2938)) mask!2987))))

(assert (= (and d!149437 res!928317) b!1387258))

(declare-fun m!1272819 () Bool)

(assert (=> d!149437 m!1272819))

(assert (=> d!149437 m!1272575))

(assert (=> b!1387258 m!1272545))

(declare-fun m!1272821 () Bool)

(assert (=> b!1387258 m!1272821))

(assert (=> b!1387053 d!149437))

(declare-fun d!149443 () Bool)

(assert (=> d!149443 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118684 d!149443))

(declare-fun d!149449 () Bool)

(assert (=> d!149449 (= (array_inv!34756 a!2938) (bvsge (size!46362 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118684 d!149449))

(declare-fun bm!66572 () Bool)

(declare-fun call!66575 () Bool)

(assert (=> bm!66572 (= call!66575 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387263 () Bool)

(declare-fun e!785832 () Bool)

(assert (=> b!1387263 (= e!785832 call!66575)))

(declare-fun b!1387264 () Bool)

(declare-fun e!785833 () Bool)

(assert (=> b!1387264 (= e!785833 e!785832)))

(declare-fun c!128914 () Bool)

(assert (=> b!1387264 (= c!128914 (validKeyInArray!0 (select (arr!45811 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387265 () Bool)

(declare-fun e!785834 () Bool)

(assert (=> b!1387265 (= e!785832 e!785834)))

(declare-fun lt!609776 () (_ BitVec 64))

(assert (=> b!1387265 (= lt!609776 (select (arr!45811 a!2938) #b00000000000000000000000000000000))))

(declare-fun lt!609778 () Unit!46327)

(assert (=> b!1387265 (= lt!609778 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609776 #b00000000000000000000000000000000))))

(assert (=> b!1387265 (arrayContainsKey!0 a!2938 lt!609776 #b00000000000000000000000000000000)))

(declare-fun lt!609777 () Unit!46327)

(assert (=> b!1387265 (= lt!609777 lt!609778)))

(declare-fun res!928320 () Bool)

(assert (=> b!1387265 (= res!928320 (= (seekEntryOrOpen!0 (select (arr!45811 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) (Found!10176 #b00000000000000000000000000000000)))))

(assert (=> b!1387265 (=> (not res!928320) (not e!785834))))

(declare-fun d!149451 () Bool)

(declare-fun res!928321 () Bool)

(assert (=> d!149451 (=> res!928321 e!785833)))

(assert (=> d!149451 (= res!928321 (bvsge #b00000000000000000000000000000000 (size!46362 a!2938)))))

(assert (=> d!149451 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987) e!785833)))

(declare-fun b!1387266 () Bool)

(assert (=> b!1387266 (= e!785834 call!66575)))

(assert (= (and d!149451 (not res!928321)) b!1387264))

(assert (= (and b!1387264 c!128914) b!1387265))

(assert (= (and b!1387264 (not c!128914)) b!1387263))

(assert (= (and b!1387265 res!928320) b!1387266))

(assert (= (or b!1387266 b!1387263) bm!66572))

(declare-fun m!1272831 () Bool)

(assert (=> bm!66572 m!1272831))

(declare-fun m!1272833 () Bool)

(assert (=> b!1387264 m!1272833))

(assert (=> b!1387264 m!1272833))

(declare-fun m!1272835 () Bool)

(assert (=> b!1387264 m!1272835))

(assert (=> b!1387265 m!1272833))

(declare-fun m!1272837 () Bool)

(assert (=> b!1387265 m!1272837))

(declare-fun m!1272839 () Bool)

(assert (=> b!1387265 m!1272839))

(assert (=> b!1387265 m!1272833))

(declare-fun m!1272841 () Bool)

(assert (=> b!1387265 m!1272841))

(assert (=> b!1387047 d!149451))

(declare-fun b!1387286 () Bool)

(declare-fun e!785850 () Bool)

(declare-fun e!785851 () Bool)

(assert (=> b!1387286 (= e!785850 e!785851)))

(declare-fun res!928333 () Bool)

(assert (=> b!1387286 (=> (not res!928333) (not e!785851))))

(declare-fun e!785852 () Bool)

(assert (=> b!1387286 (= res!928333 (not e!785852))))

(declare-fun res!928331 () Bool)

(assert (=> b!1387286 (=> (not res!928331) (not e!785852))))

(assert (=> b!1387286 (= res!928331 (validKeyInArray!0 (select (arr!45811 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387287 () Bool)

(declare-fun e!785849 () Bool)

(declare-fun call!66578 () Bool)

(assert (=> b!1387287 (= e!785849 call!66578)))

(declare-fun bm!66575 () Bool)

(declare-fun c!128920 () Bool)

(assert (=> bm!66575 (= call!66578 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128920 (Cons!32515 (select (arr!45811 a!2938) #b00000000000000000000000000000000) Nil!32516) Nil!32516)))))

(declare-fun b!1387288 () Bool)

(assert (=> b!1387288 (= e!785849 call!66578)))

(declare-fun b!1387289 () Bool)

(assert (=> b!1387289 (= e!785851 e!785849)))

(assert (=> b!1387289 (= c!128920 (validKeyInArray!0 (select (arr!45811 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387290 () Bool)

(declare-fun contains!9757 (List!32519 (_ BitVec 64)) Bool)

(assert (=> b!1387290 (= e!785852 (contains!9757 Nil!32516 (select (arr!45811 a!2938) #b00000000000000000000000000000000)))))

(declare-fun d!149453 () Bool)

(declare-fun res!928332 () Bool)

(assert (=> d!149453 (=> res!928332 e!785850)))

(assert (=> d!149453 (= res!928332 (bvsge #b00000000000000000000000000000000 (size!46362 a!2938)))))

(assert (=> d!149453 (= (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32516) e!785850)))

(assert (= (and d!149453 (not res!928332)) b!1387286))

(assert (= (and b!1387286 res!928331) b!1387290))

(assert (= (and b!1387286 res!928333) b!1387289))

(assert (= (and b!1387289 c!128920) b!1387288))

(assert (= (and b!1387289 (not c!128920)) b!1387287))

(assert (= (or b!1387288 b!1387287) bm!66575))

(assert (=> b!1387286 m!1272833))

(assert (=> b!1387286 m!1272833))

(assert (=> b!1387286 m!1272835))

(assert (=> bm!66575 m!1272833))

(declare-fun m!1272861 () Bool)

(assert (=> bm!66575 m!1272861))

(assert (=> b!1387289 m!1272833))

(assert (=> b!1387289 m!1272833))

(assert (=> b!1387289 m!1272835))

(assert (=> b!1387290 m!1272833))

(assert (=> b!1387290 m!1272833))

(declare-fun m!1272863 () Bool)

(assert (=> b!1387290 m!1272863))

(assert (=> b!1387046 d!149453))

(declare-fun d!149461 () Bool)

(assert (=> d!149461 (= (validKeyInArray!0 (select (arr!45811 a!2938) startIndex!16)) (and (not (= (select (arr!45811 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45811 a!2938) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387051 d!149461))

(push 1)

(assert (not b!1387249))

(assert (not b!1387290))

(assert (not b!1387198))

(assert (not b!1387235))

(assert (not d!149403))

(assert (not d!149401))

(assert (not bm!66567))

(assert (not b!1387244))

(assert (not b!1387245))

(assert (not b!1387171))

(assert (not b!1387234))

(assert (not bm!66572))

(assert (not b!1387286))

(assert (not b!1387248))

(assert (not b!1387192))

(assert (not bm!66575))

(assert (not bm!66569))

(assert (not d!149437))

(assert (not bm!66568))

(assert (not b!1387264))

(assert (not b!1387289))

(assert (not d!149417))

(assert (not b!1387265))

(assert (not d!149423))

(assert (not b!1387258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149521 () Bool)

(assert (=> d!149521 (arrayContainsKey!0 lt!609652 lt!609761 #b00000000000000000000000000000000)))

(declare-fun lt!609863 () Unit!46327)

(declare-fun choose!13 (array!94878 (_ BitVec 64) (_ BitVec 32)) Unit!46327)

(assert (=> d!149521 (= lt!609863 (choose!13 lt!609652 lt!609761 startIndex!16))))

(assert (=> d!149521 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149521 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609652 lt!609761 startIndex!16) lt!609863)))

(declare-fun bs!40314 () Bool)

(assert (= bs!40314 d!149521))

(assert (=> bs!40314 m!1272785))

(declare-fun m!1273071 () Bool)

(assert (=> bs!40314 m!1273071))

(assert (=> b!1387245 d!149521))

(declare-fun d!149529 () Bool)

(declare-fun res!928387 () Bool)

(declare-fun e!785956 () Bool)

(assert (=> d!149529 (=> res!928387 e!785956)))

(assert (=> d!149529 (= res!928387 (= (select (arr!45811 lt!609652) #b00000000000000000000000000000000) lt!609761))))

(assert (=> d!149529 (= (arrayContainsKey!0 lt!609652 lt!609761 #b00000000000000000000000000000000) e!785956)))

(declare-fun b!1387453 () Bool)

(declare-fun e!785957 () Bool)

(assert (=> b!1387453 (= e!785956 e!785957)))

(declare-fun res!928388 () Bool)

(assert (=> b!1387453 (=> (not res!928388) (not e!785957))))

(assert (=> b!1387453 (= res!928388 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46362 lt!609652)))))

(declare-fun b!1387454 () Bool)

(assert (=> b!1387454 (= e!785957 (arrayContainsKey!0 lt!609652 lt!609761 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149529 (not res!928387)) b!1387453))

(assert (= (and b!1387453 res!928388) b!1387454))

(declare-fun m!1273081 () Bool)

(assert (=> d!149529 m!1273081))

(declare-fun m!1273083 () Bool)

(assert (=> b!1387454 m!1273083))

(assert (=> b!1387245 d!149529))

(declare-fun b!1387455 () Bool)

(declare-fun e!785960 () SeekEntryResult!10176)

(declare-fun lt!609867 () SeekEntryResult!10176)

(assert (=> b!1387455 (= e!785960 (MissingZero!10176 (index!43076 lt!609867)))))

(declare-fun b!1387456 () Bool)

(assert (=> b!1387456 (= e!785960 (seekKeyOrZeroReturnVacant!0 (x!124692 lt!609867) (index!43076 lt!609867) (index!43076 lt!609867) (select (arr!45811 lt!609652) startIndex!16) lt!609652 mask!2987))))

(declare-fun b!1387457 () Bool)

(declare-fun c!128977 () Bool)

(declare-fun lt!609868 () (_ BitVec 64))

(assert (=> b!1387457 (= c!128977 (= lt!609868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785959 () SeekEntryResult!10176)

(assert (=> b!1387457 (= e!785959 e!785960)))

(declare-fun b!1387458 () Bool)

(assert (=> b!1387458 (= e!785959 (Found!10176 (index!43076 lt!609867)))))

(declare-fun d!149533 () Bool)

(declare-fun lt!609866 () SeekEntryResult!10176)

(assert (=> d!149533 (and (or (is-Undefined!10176 lt!609866) (not (is-Found!10176 lt!609866)) (and (bvsge (index!43075 lt!609866) #b00000000000000000000000000000000) (bvslt (index!43075 lt!609866) (size!46362 lt!609652)))) (or (is-Undefined!10176 lt!609866) (is-Found!10176 lt!609866) (not (is-MissingZero!10176 lt!609866)) (and (bvsge (index!43074 lt!609866) #b00000000000000000000000000000000) (bvslt (index!43074 lt!609866) (size!46362 lt!609652)))) (or (is-Undefined!10176 lt!609866) (is-Found!10176 lt!609866) (is-MissingZero!10176 lt!609866) (not (is-MissingVacant!10176 lt!609866)) (and (bvsge (index!43077 lt!609866) #b00000000000000000000000000000000) (bvslt (index!43077 lt!609866) (size!46362 lt!609652)))) (or (is-Undefined!10176 lt!609866) (ite (is-Found!10176 lt!609866) (= (select (arr!45811 lt!609652) (index!43075 lt!609866)) (select (arr!45811 lt!609652) startIndex!16)) (ite (is-MissingZero!10176 lt!609866) (= (select (arr!45811 lt!609652) (index!43074 lt!609866)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10176 lt!609866) (= (select (arr!45811 lt!609652) (index!43077 lt!609866)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!785958 () SeekEntryResult!10176)

(assert (=> d!149533 (= lt!609866 e!785958)))

(declare-fun c!128976 () Bool)

(assert (=> d!149533 (= c!128976 (and (is-Intermediate!10176 lt!609867) (undefined!10988 lt!609867)))))

(assert (=> d!149533 (= lt!609867 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45811 lt!609652) startIndex!16) mask!2987) (select (arr!45811 lt!609652) startIndex!16) lt!609652 mask!2987))))

(assert (=> d!149533 (validMask!0 mask!2987)))

(assert (=> d!149533 (= (seekEntryOrOpen!0 (select (arr!45811 lt!609652) startIndex!16) lt!609652 mask!2987) lt!609866)))

(declare-fun b!1387459 () Bool)

(assert (=> b!1387459 (= e!785958 Undefined!10176)))

(declare-fun b!1387460 () Bool)

(assert (=> b!1387460 (= e!785958 e!785959)))

(assert (=> b!1387460 (= lt!609868 (select (arr!45811 lt!609652) (index!43076 lt!609867)))))

(declare-fun c!128978 () Bool)

(assert (=> b!1387460 (= c!128978 (= lt!609868 (select (arr!45811 lt!609652) startIndex!16)))))

(assert (= (and d!149533 c!128976) b!1387459))

(assert (= (and d!149533 (not c!128976)) b!1387460))

(assert (= (and b!1387460 c!128978) b!1387458))

(assert (= (and b!1387460 (not c!128978)) b!1387457))

(assert (= (and b!1387457 c!128977) b!1387455))

(assert (= (and b!1387457 (not c!128977)) b!1387456))

(assert (=> b!1387456 m!1272779))

(declare-fun m!1273085 () Bool)

(assert (=> b!1387456 m!1273085))

(declare-fun m!1273087 () Bool)

(assert (=> d!149533 m!1273087))

(declare-fun m!1273089 () Bool)

(assert (=> d!149533 m!1273089))

(declare-fun m!1273091 () Bool)

(assert (=> d!149533 m!1273091))

(assert (=> d!149533 m!1272779))

(declare-fun m!1273093 () Bool)

(assert (=> d!149533 m!1273093))

(assert (=> d!149533 m!1272575))

(declare-fun m!1273095 () Bool)

(assert (=> d!149533 m!1273095))

(assert (=> d!149533 m!1272779))

(assert (=> d!149533 m!1273091))

(declare-fun m!1273097 () Bool)

(assert (=> b!1387460 m!1273097))

(assert (=> b!1387245 d!149533))

(declare-fun d!149535 () Bool)

(assert (=> d!149535 (arrayContainsKey!0 a!2938 lt!609776 #b00000000000000000000000000000000)))

(declare-fun lt!609869 () Unit!46327)

(assert (=> d!149535 (= lt!609869 (choose!13 a!2938 lt!609776 #b00000000000000000000000000000000))))

(assert (=> d!149535 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!149535 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609776 #b00000000000000000000000000000000) lt!609869)))

(declare-fun bs!40315 () Bool)

(assert (= bs!40315 d!149535))

(assert (=> bs!40315 m!1272839))

(declare-fun m!1273099 () Bool)

(assert (=> bs!40315 m!1273099))

(assert (=> b!1387265 d!149535))

(declare-fun d!149537 () Bool)

(declare-fun res!928389 () Bool)

(declare-fun e!785961 () Bool)

(assert (=> d!149537 (=> res!928389 e!785961)))

(assert (=> d!149537 (= res!928389 (= (select (arr!45811 a!2938) #b00000000000000000000000000000000) lt!609776))))

(assert (=> d!149537 (= (arrayContainsKey!0 a!2938 lt!609776 #b00000000000000000000000000000000) e!785961)))

(declare-fun b!1387461 () Bool)

(declare-fun e!785962 () Bool)

(assert (=> b!1387461 (= e!785961 e!785962)))

(declare-fun res!928390 () Bool)

(assert (=> b!1387461 (=> (not res!928390) (not e!785962))))

(assert (=> b!1387461 (= res!928390 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46362 a!2938)))))

(declare-fun b!1387462 () Bool)

(assert (=> b!1387462 (= e!785962 (arrayContainsKey!0 a!2938 lt!609776 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149537 (not res!928389)) b!1387461))

(assert (= (and b!1387461 res!928390) b!1387462))

(assert (=> d!149537 m!1272833))

(declare-fun m!1273101 () Bool)

(assert (=> b!1387462 m!1273101))

(assert (=> b!1387265 d!149537))

(declare-fun b!1387463 () Bool)

(declare-fun e!785965 () SeekEntryResult!10176)

(declare-fun lt!609871 () SeekEntryResult!10176)

(assert (=> b!1387463 (= e!785965 (MissingZero!10176 (index!43076 lt!609871)))))

(declare-fun b!1387464 () Bool)

(assert (=> b!1387464 (= e!785965 (seekKeyOrZeroReturnVacant!0 (x!124692 lt!609871) (index!43076 lt!609871) (index!43076 lt!609871) (select (arr!45811 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(declare-fun b!1387465 () Bool)

(declare-fun c!128980 () Bool)

(declare-fun lt!609872 () (_ BitVec 64))

(assert (=> b!1387465 (= c!128980 (= lt!609872 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785964 () SeekEntryResult!10176)

(assert (=> b!1387465 (= e!785964 e!785965)))

(declare-fun b!1387466 () Bool)

(assert (=> b!1387466 (= e!785964 (Found!10176 (index!43076 lt!609871)))))

(declare-fun d!149539 () Bool)

(declare-fun lt!609870 () SeekEntryResult!10176)

(assert (=> d!149539 (and (or (is-Undefined!10176 lt!609870) (not (is-Found!10176 lt!609870)) (and (bvsge (index!43075 lt!609870) #b00000000000000000000000000000000) (bvslt (index!43075 lt!609870) (size!46362 a!2938)))) (or (is-Undefined!10176 lt!609870) (is-Found!10176 lt!609870) (not (is-MissingZero!10176 lt!609870)) (and (bvsge (index!43074 lt!609870) #b00000000000000000000000000000000) (bvslt (index!43074 lt!609870) (size!46362 a!2938)))) (or (is-Undefined!10176 lt!609870) (is-Found!10176 lt!609870) (is-MissingZero!10176 lt!609870) (not (is-MissingVacant!10176 lt!609870)) (and (bvsge (index!43077 lt!609870) #b00000000000000000000000000000000) (bvslt (index!43077 lt!609870) (size!46362 a!2938)))) (or (is-Undefined!10176 lt!609870) (ite (is-Found!10176 lt!609870) (= (select (arr!45811 a!2938) (index!43075 lt!609870)) (select (arr!45811 a!2938) #b00000000000000000000000000000000)) (ite (is-MissingZero!10176 lt!609870) (= (select (arr!45811 a!2938) (index!43074 lt!609870)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10176 lt!609870) (= (select (arr!45811 a!2938) (index!43077 lt!609870)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!785963 () SeekEntryResult!10176)

(assert (=> d!149539 (= lt!609870 e!785963)))

(declare-fun c!128979 () Bool)

(assert (=> d!149539 (= c!128979 (and (is-Intermediate!10176 lt!609871) (undefined!10988 lt!609871)))))

(assert (=> d!149539 (= lt!609871 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45811 a!2938) #b00000000000000000000000000000000) mask!2987) (select (arr!45811 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(assert (=> d!149539 (validMask!0 mask!2987)))

(assert (=> d!149539 (= (seekEntryOrOpen!0 (select (arr!45811 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) lt!609870)))

(declare-fun b!1387467 () Bool)

(assert (=> b!1387467 (= e!785963 Undefined!10176)))

(declare-fun b!1387468 () Bool)

(assert (=> b!1387468 (= e!785963 e!785964)))

(assert (=> b!1387468 (= lt!609872 (select (arr!45811 a!2938) (index!43076 lt!609871)))))

(declare-fun c!128981 () Bool)

(assert (=> b!1387468 (= c!128981 (= lt!609872 (select (arr!45811 a!2938) #b00000000000000000000000000000000)))))

(assert (= (and d!149539 c!128979) b!1387467))

(assert (= (and d!149539 (not c!128979)) b!1387468))

(assert (= (and b!1387468 c!128981) b!1387466))

(assert (= (and b!1387468 (not c!128981)) b!1387465))

(assert (= (and b!1387465 c!128980) b!1387463))

(assert (= (and b!1387465 (not c!128980)) b!1387464))

(assert (=> b!1387464 m!1272833))

(declare-fun m!1273103 () Bool)

(assert (=> b!1387464 m!1273103))

(declare-fun m!1273105 () Bool)

(assert (=> d!149539 m!1273105))

(declare-fun m!1273107 () Bool)

(assert (=> d!149539 m!1273107))

(declare-fun m!1273109 () Bool)

(assert (=> d!149539 m!1273109))

(assert (=> d!149539 m!1272833))

(declare-fun m!1273111 () Bool)

(assert (=> d!149539 m!1273111))

(assert (=> d!149539 m!1272575))

(declare-fun m!1273113 () Bool)

(assert (=> d!149539 m!1273113))

(assert (=> d!149539 m!1272833))

(assert (=> d!149539 m!1273109))

(declare-fun m!1273115 () Bool)

(assert (=> b!1387468 m!1273115))

(assert (=> b!1387265 d!149539))

(declare-fun d!149541 () Bool)

(assert (=> d!149541 (= (validKeyInArray!0 (select (arr!45811 a!2938) #b00000000000000000000000000000000)) (and (not (= (select (arr!45811 a!2938) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45811 a!2938) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387264 d!149541))

(assert (=> b!1387286 d!149541))

(declare-fun d!149543 () Bool)

(assert (=> d!149543 (= (validKeyInArray!0 (select (arr!45811 lt!609652) startIndex!16)) (and (not (= (select (arr!45811 lt!609652) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45811 lt!609652) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387244 d!149543))

(declare-fun bm!66583 () Bool)

(declare-fun call!66586 () Bool)

(assert (=> bm!66583 (= call!66586 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387469 () Bool)

(declare-fun e!785966 () Bool)

(assert (=> b!1387469 (= e!785966 call!66586)))

(declare-fun b!1387470 () Bool)

(declare-fun e!785967 () Bool)

(assert (=> b!1387470 (= e!785967 e!785966)))

(declare-fun c!128982 () Bool)

(assert (=> b!1387470 (= c!128982 (validKeyInArray!0 (select (arr!45811 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1387471 () Bool)

(declare-fun e!785968 () Bool)

(assert (=> b!1387471 (= e!785966 e!785968)))

(declare-fun lt!609873 () (_ BitVec 64))

(assert (=> b!1387471 (= lt!609873 (select (arr!45811 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!609875 () Unit!46327)

(assert (=> b!1387471 (= lt!609875 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609873 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1387471 (arrayContainsKey!0 a!2938 lt!609873 #b00000000000000000000000000000000)))

(declare-fun lt!609874 () Unit!46327)

(assert (=> b!1387471 (= lt!609874 lt!609875)))

(declare-fun res!928391 () Bool)

(assert (=> b!1387471 (= res!928391 (= (seekEntryOrOpen!0 (select (arr!45811 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2938 mask!2987) (Found!10176 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1387471 (=> (not res!928391) (not e!785968))))

(declare-fun d!149545 () Bool)

(declare-fun res!928392 () Bool)

(assert (=> d!149545 (=> res!928392 e!785967)))

(assert (=> d!149545 (= res!928392 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46362 a!2938)))))

(assert (=> d!149545 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987) e!785967)))

(declare-fun b!1387472 () Bool)

(assert (=> b!1387472 (= e!785968 call!66586)))

(assert (= (and d!149545 (not res!928392)) b!1387470))

(assert (= (and b!1387470 c!128982) b!1387471))

(assert (= (and b!1387470 (not c!128982)) b!1387469))

(assert (= (and b!1387471 res!928391) b!1387472))

(assert (= (or b!1387472 b!1387469) bm!66583))

(declare-fun m!1273117 () Bool)

(assert (=> bm!66583 m!1273117))

(declare-fun m!1273119 () Bool)

(assert (=> b!1387470 m!1273119))

(assert (=> b!1387470 m!1273119))

(declare-fun m!1273121 () Bool)

(assert (=> b!1387470 m!1273121))

(assert (=> b!1387471 m!1273119))

(declare-fun m!1273123 () Bool)

(assert (=> b!1387471 m!1273123))

(declare-fun m!1273125 () Bool)

(assert (=> b!1387471 m!1273125))

(assert (=> b!1387471 m!1273119))

(declare-fun m!1273127 () Bool)

(assert (=> b!1387471 m!1273127))

(assert (=> bm!66572 d!149545))

(declare-fun b!1387491 () Bool)

(declare-fun lt!609880 () SeekEntryResult!10176)

(assert (=> b!1387491 (and (bvsge (index!43076 lt!609880) #b00000000000000000000000000000000) (bvslt (index!43076 lt!609880) (size!46362 a!2938)))))

(declare-fun res!928401 () Bool)

(assert (=> b!1387491 (= res!928401 (= (select (arr!45811 a!2938) (index!43076 lt!609880)) (select (arr!45811 a!2938) startIndex!16)))))

(declare-fun e!785981 () Bool)

(assert (=> b!1387491 (=> res!928401 e!785981)))

(declare-fun e!785983 () Bool)

(assert (=> b!1387491 (= e!785983 e!785981)))

(declare-fun d!149547 () Bool)

(declare-fun e!785980 () Bool)

(assert (=> d!149547 e!785980))

(declare-fun c!128990 () Bool)

(assert (=> d!149547 (= c!128990 (and (is-Intermediate!10176 lt!609880) (undefined!10988 lt!609880)))))

(declare-fun e!785979 () SeekEntryResult!10176)

(assert (=> d!149547 (= lt!609880 e!785979)))

(declare-fun c!128989 () Bool)

(assert (=> d!149547 (= c!128989 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!609881 () (_ BitVec 64))

(assert (=> d!149547 (= lt!609881 (select (arr!45811 a!2938) (toIndex!0 (select (arr!45811 a!2938) startIndex!16) mask!2987)))))

(assert (=> d!149547 (validMask!0 mask!2987)))

(assert (=> d!149547 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45811 a!2938) startIndex!16) mask!2987) (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987) lt!609880)))

(declare-fun b!1387492 () Bool)

(assert (=> b!1387492 (= e!785979 (Intermediate!10176 true (toIndex!0 (select (arr!45811 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1387493 () Bool)

(assert (=> b!1387493 (= e!785980 (bvsge (x!124692 lt!609880) #b01111111111111111111111111111110))))

(declare-fun b!1387494 () Bool)

(assert (=> b!1387494 (and (bvsge (index!43076 lt!609880) #b00000000000000000000000000000000) (bvslt (index!43076 lt!609880) (size!46362 a!2938)))))

(declare-fun res!928400 () Bool)

(assert (=> b!1387494 (= res!928400 (= (select (arr!45811 a!2938) (index!43076 lt!609880)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1387494 (=> res!928400 e!785981)))

(declare-fun b!1387495 () Bool)

(assert (=> b!1387495 (= e!785980 e!785983)))

(declare-fun res!928399 () Bool)

(assert (=> b!1387495 (= res!928399 (and (is-Intermediate!10176 lt!609880) (not (undefined!10988 lt!609880)) (bvslt (x!124692 lt!609880) #b01111111111111111111111111111110) (bvsge (x!124692 lt!609880) #b00000000000000000000000000000000) (bvsge (x!124692 lt!609880) #b00000000000000000000000000000000)))))

(assert (=> b!1387495 (=> (not res!928399) (not e!785983))))

(declare-fun e!785982 () SeekEntryResult!10176)

(declare-fun b!1387496 () Bool)

(assert (=> b!1387496 (= e!785982 (Intermediate!10176 false (toIndex!0 (select (arr!45811 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1387497 () Bool)

(assert (=> b!1387497 (and (bvsge (index!43076 lt!609880) #b00000000000000000000000000000000) (bvslt (index!43076 lt!609880) (size!46362 a!2938)))))

(assert (=> b!1387497 (= e!785981 (= (select (arr!45811 a!2938) (index!43076 lt!609880)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1387498 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1387498 (= e!785982 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45811 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1387499 () Bool)

(assert (=> b!1387499 (= e!785979 e!785982)))

(declare-fun c!128991 () Bool)

(assert (=> b!1387499 (= c!128991 (or (= lt!609881 (select (arr!45811 a!2938) startIndex!16)) (= (bvadd lt!609881 lt!609881) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!149547 c!128989) b!1387492))

(assert (= (and d!149547 (not c!128989)) b!1387499))

(assert (= (and b!1387499 c!128991) b!1387496))

(assert (= (and b!1387499 (not c!128991)) b!1387498))

(assert (= (and d!149547 c!128990) b!1387493))

(assert (= (and d!149547 (not c!128990)) b!1387495))

(assert (= (and b!1387495 res!928399) b!1387491))

(assert (= (and b!1387491 (not res!928401)) b!1387494))

(assert (= (and b!1387494 (not res!928400)) b!1387497))

(assert (=> b!1387498 m!1272749))

(declare-fun m!1273129 () Bool)

(assert (=> b!1387498 m!1273129))

(assert (=> b!1387498 m!1273129))

(assert (=> b!1387498 m!1272561))

(declare-fun m!1273131 () Bool)

(assert (=> b!1387498 m!1273131))

(assert (=> d!149547 m!1272749))

(declare-fun m!1273133 () Bool)

(assert (=> d!149547 m!1273133))

(assert (=> d!149547 m!1272575))

(declare-fun m!1273135 () Bool)

(assert (=> b!1387491 m!1273135))

(assert (=> b!1387497 m!1273135))

(assert (=> b!1387494 m!1273135))

(assert (=> d!149417 d!149547))

(declare-fun d!149549 () Bool)

(declare-fun lt!609887 () (_ BitVec 32))

(declare-fun lt!609886 () (_ BitVec 32))

(assert (=> d!149549 (= lt!609887 (bvmul (bvxor lt!609886 (bvlshr lt!609886 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149549 (= lt!609886 ((_ extract 31 0) (bvand (bvxor (select (arr!45811 a!2938) startIndex!16) (bvlshr (select (arr!45811 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149549 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928402 (let ((h!33728 ((_ extract 31 0) (bvand (bvxor (select (arr!45811 a!2938) startIndex!16) (bvlshr (select (arr!45811 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124699 (bvmul (bvxor h!33728 (bvlshr h!33728 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124699 (bvlshr x!124699 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928402 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928402 #b00000000000000000000000000000000))))))

(assert (=> d!149549 (= (toIndex!0 (select (arr!45811 a!2938) startIndex!16) mask!2987) (bvand (bvxor lt!609887 (bvlshr lt!609887 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149417 d!149549))

(assert (=> d!149417 d!149443))

(declare-fun b!1387500 () Bool)

(declare-fun lt!609888 () SeekEntryResult!10176)

(assert (=> b!1387500 (and (bvsge (index!43076 lt!609888) #b00000000000000000000000000000000) (bvslt (index!43076 lt!609888) (size!46362 lt!609652)))))

(declare-fun res!928405 () Bool)

(assert (=> b!1387500 (= res!928405 (= (select (arr!45811 lt!609652) (index!43076 lt!609888)) (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun e!785986 () Bool)

(assert (=> b!1387500 (=> res!928405 e!785986)))

(declare-fun e!785988 () Bool)

(assert (=> b!1387500 (= e!785988 e!785986)))

(declare-fun d!149551 () Bool)

(declare-fun e!785985 () Bool)

(assert (=> d!149551 e!785985))

(declare-fun c!128993 () Bool)

(assert (=> d!149551 (= c!128993 (and (is-Intermediate!10176 lt!609888) (undefined!10988 lt!609888)))))

(declare-fun e!785984 () SeekEntryResult!10176)

(assert (=> d!149551 (= lt!609888 e!785984)))

(declare-fun c!128992 () Bool)

(assert (=> d!149551 (= c!128992 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!609889 () (_ BitVec 64))

(assert (=> d!149551 (= lt!609889 (select (arr!45811 lt!609652) (toIndex!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987)))))

(assert (=> d!149551 (validMask!0 mask!2987)))

(assert (=> d!149551 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609652 mask!2987) lt!609888)))

(declare-fun b!1387501 () Bool)

(assert (=> b!1387501 (= e!785984 (Intermediate!10176 true (toIndex!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1387502 () Bool)

(assert (=> b!1387502 (= e!785985 (bvsge (x!124692 lt!609888) #b01111111111111111111111111111110))))

(declare-fun b!1387503 () Bool)

(assert (=> b!1387503 (and (bvsge (index!43076 lt!609888) #b00000000000000000000000000000000) (bvslt (index!43076 lt!609888) (size!46362 lt!609652)))))

(declare-fun res!928404 () Bool)

(assert (=> b!1387503 (= res!928404 (= (select (arr!45811 lt!609652) (index!43076 lt!609888)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1387503 (=> res!928404 e!785986)))

(declare-fun b!1387504 () Bool)

(assert (=> b!1387504 (= e!785985 e!785988)))

(declare-fun res!928403 () Bool)

(assert (=> b!1387504 (= res!928403 (and (is-Intermediate!10176 lt!609888) (not (undefined!10988 lt!609888)) (bvslt (x!124692 lt!609888) #b01111111111111111111111111111110) (bvsge (x!124692 lt!609888) #b00000000000000000000000000000000) (bvsge (x!124692 lt!609888) #b00000000000000000000000000000000)))))

(assert (=> b!1387504 (=> (not res!928403) (not e!785988))))

(declare-fun b!1387505 () Bool)

(declare-fun e!785987 () SeekEntryResult!10176)

(assert (=> b!1387505 (= e!785987 (Intermediate!10176 false (toIndex!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1387506 () Bool)

(assert (=> b!1387506 (and (bvsge (index!43076 lt!609888) #b00000000000000000000000000000000) (bvslt (index!43076 lt!609888) (size!46362 lt!609652)))))

(assert (=> b!1387506 (= e!785986 (= (select (arr!45811 lt!609652) (index!43076 lt!609888)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1387507 () Bool)

(assert (=> b!1387507 (= e!785987 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609652 mask!2987))))

(declare-fun b!1387508 () Bool)

(assert (=> b!1387508 (= e!785984 e!785987)))

(declare-fun c!128994 () Bool)

(assert (=> b!1387508 (= c!128994 (or (= lt!609889 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (= (bvadd lt!609889 lt!609889) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!149551 c!128992) b!1387501))

(assert (= (and d!149551 (not c!128992)) b!1387508))

(assert (= (and b!1387508 c!128994) b!1387505))

(assert (= (and b!1387508 (not c!128994)) b!1387507))

(assert (= (and d!149551 c!128993) b!1387502))

(assert (= (and d!149551 (not c!128993)) b!1387504))

(assert (= (and b!1387504 res!928403) b!1387500))

(assert (= (and b!1387500 (not res!928405)) b!1387503))

(assert (= (and b!1387503 (not res!928404)) b!1387506))

(assert (=> b!1387507 m!1272763))

(declare-fun m!1273137 () Bool)

(assert (=> b!1387507 m!1273137))

(assert (=> b!1387507 m!1273137))

(assert (=> b!1387507 m!1272559))

(declare-fun m!1273139 () Bool)

(assert (=> b!1387507 m!1273139))

(assert (=> d!149551 m!1272763))

(declare-fun m!1273141 () Bool)

(assert (=> d!149551 m!1273141))

(assert (=> d!149551 m!1272575))

(declare-fun m!1273143 () Bool)

(assert (=> b!1387500 m!1273143))

(assert (=> b!1387506 m!1273143))

(assert (=> b!1387503 m!1273143))

(assert (=> d!149423 d!149551))

(declare-fun d!149553 () Bool)

(declare-fun lt!609891 () (_ BitVec 32))

(declare-fun lt!609890 () (_ BitVec 32))

(assert (=> d!149553 (= lt!609891 (bvmul (bvxor lt!609890 (bvlshr lt!609890 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149553 (= lt!609890 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (bvlshr (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149553 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928402 (let ((h!33728 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (bvlshr (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124699 (bvmul (bvxor h!33728 (bvlshr h!33728 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124699 (bvlshr x!124699 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928402 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928402 #b00000000000000000000000000000000))))))

(assert (=> d!149553 (= (toIndex!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (bvand (bvxor lt!609891 (bvlshr lt!609891 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149423 d!149553))

(assert (=> d!149423 d!149443))

(declare-fun call!66587 () Bool)

(declare-fun bm!66584 () Bool)

(assert (=> bm!66584 (= call!66587 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!609652 mask!2987))))

(declare-fun b!1387509 () Bool)

(declare-fun e!785989 () Bool)

(assert (=> b!1387509 (= e!785989 call!66587)))

(declare-fun b!1387510 () Bool)

(declare-fun e!785990 () Bool)

(assert (=> b!1387510 (= e!785990 e!785989)))

(declare-fun c!128995 () Bool)

(assert (=> b!1387510 (= c!128995 (validKeyInArray!0 (select (arr!45811 lt!609652) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun b!1387511 () Bool)

(declare-fun e!785991 () Bool)

(assert (=> b!1387511 (= e!785989 e!785991)))

(declare-fun lt!609892 () (_ BitVec 64))

(assert (=> b!1387511 (= lt!609892 (select (arr!45811 lt!609652) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!609894 () Unit!46327)

(assert (=> b!1387511 (= lt!609894 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!609652 lt!609892 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1387511 (arrayContainsKey!0 lt!609652 lt!609892 #b00000000000000000000000000000000)))

(declare-fun lt!609893 () Unit!46327)

(assert (=> b!1387511 (= lt!609893 lt!609894)))

(declare-fun res!928406 () Bool)

(assert (=> b!1387511 (= res!928406 (= (seekEntryOrOpen!0 (select (arr!45811 lt!609652) (bvadd startIndex!16 #b00000000000000000000000000000001)) lt!609652 mask!2987) (Found!10176 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1387511 (=> (not res!928406) (not e!785991))))

(declare-fun d!149555 () Bool)

(declare-fun res!928407 () Bool)

(assert (=> d!149555 (=> res!928407 e!785990)))

(assert (=> d!149555 (= res!928407 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46362 lt!609652)))))

(assert (=> d!149555 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!609652 mask!2987) e!785990)))

(declare-fun b!1387512 () Bool)

(assert (=> b!1387512 (= e!785991 call!66587)))

(assert (= (and d!149555 (not res!928407)) b!1387510))

(assert (= (and b!1387510 c!128995) b!1387511))

(assert (= (and b!1387510 (not c!128995)) b!1387509))

(assert (= (and b!1387511 res!928406) b!1387512))

(assert (= (or b!1387512 b!1387509) bm!66584))

(declare-fun m!1273145 () Bool)

(assert (=> bm!66584 m!1273145))

(declare-fun m!1273147 () Bool)

(assert (=> b!1387510 m!1273147))

(assert (=> b!1387510 m!1273147))

(declare-fun m!1273149 () Bool)

(assert (=> b!1387510 m!1273149))

(assert (=> b!1387511 m!1273147))

(declare-fun m!1273151 () Bool)

(assert (=> b!1387511 m!1273151))

(declare-fun m!1273153 () Bool)

(assert (=> b!1387511 m!1273153))

(assert (=> b!1387511 m!1273147))

(declare-fun m!1273155 () Bool)

(assert (=> b!1387511 m!1273155))

(assert (=> bm!66568 d!149555))

(declare-fun b!1387525 () Bool)

(declare-fun e!786000 () SeekEntryResult!10176)

(declare-fun e!785998 () SeekEntryResult!10176)

(assert (=> b!1387525 (= e!786000 e!785998)))

(declare-fun lt!609900 () (_ BitVec 64))

(declare-fun c!129003 () Bool)

(assert (=> b!1387525 (= c!129003 (= lt!609900 (select (arr!45811 a!2938) startIndex!16)))))

(declare-fun b!1387526 () Bool)

(declare-fun c!129002 () Bool)

(assert (=> b!1387526 (= c!129002 (= lt!609900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!785999 () SeekEntryResult!10176)

(assert (=> b!1387526 (= e!785998 e!785999)))

(declare-fun b!1387527 () Bool)

(assert (=> b!1387527 (= e!785999 (MissingVacant!10176 (index!43076 lt!609738)))))

(declare-fun b!1387528 () Bool)

(assert (=> b!1387528 (= e!786000 Undefined!10176)))

(declare-fun lt!609899 () SeekEntryResult!10176)

(declare-fun d!149557 () Bool)

(assert (=> d!149557 (and (or (is-Undefined!10176 lt!609899) (not (is-Found!10176 lt!609899)) (and (bvsge (index!43075 lt!609899) #b00000000000000000000000000000000) (bvslt (index!43075 lt!609899) (size!46362 a!2938)))) (or (is-Undefined!10176 lt!609899) (is-Found!10176 lt!609899) (not (is-MissingVacant!10176 lt!609899)) (not (= (index!43077 lt!609899) (index!43076 lt!609738))) (and (bvsge (index!43077 lt!609899) #b00000000000000000000000000000000) (bvslt (index!43077 lt!609899) (size!46362 a!2938)))) (or (is-Undefined!10176 lt!609899) (ite (is-Found!10176 lt!609899) (= (select (arr!45811 a!2938) (index!43075 lt!609899)) (select (arr!45811 a!2938) startIndex!16)) (and (is-MissingVacant!10176 lt!609899) (= (index!43077 lt!609899) (index!43076 lt!609738)) (= (select (arr!45811 a!2938) (index!43077 lt!609899)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!149557 (= lt!609899 e!786000)))

(declare-fun c!129004 () Bool)

(assert (=> d!149557 (= c!129004 (bvsge (x!124692 lt!609738) #b01111111111111111111111111111110))))

(assert (=> d!149557 (= lt!609900 (select (arr!45811 a!2938) (index!43076 lt!609738)))))

(assert (=> d!149557 (validMask!0 mask!2987)))

(assert (=> d!149557 (= (seekKeyOrZeroReturnVacant!0 (x!124692 lt!609738) (index!43076 lt!609738) (index!43076 lt!609738) (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987) lt!609899)))

(declare-fun b!1387529 () Bool)

(assert (=> b!1387529 (= e!785998 (Found!10176 (index!43076 lt!609738)))))

(declare-fun b!1387530 () Bool)

(assert (=> b!1387530 (= e!785999 (seekKeyOrZeroReturnVacant!0 (bvadd (x!124692 lt!609738) #b00000000000000000000000000000001) (nextIndex!0 (index!43076 lt!609738) (x!124692 lt!609738) mask!2987) (index!43076 lt!609738) (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987))))

(assert (= (and d!149557 c!129004) b!1387528))

(assert (= (and d!149557 (not c!129004)) b!1387525))

(assert (= (and b!1387525 c!129003) b!1387529))

(assert (= (and b!1387525 (not c!129003)) b!1387526))

(assert (= (and b!1387526 c!129002) b!1387527))

(assert (= (and b!1387526 (not c!129002)) b!1387530))

(declare-fun m!1273157 () Bool)

(assert (=> d!149557 m!1273157))

(declare-fun m!1273159 () Bool)

(assert (=> d!149557 m!1273159))

(assert (=> d!149557 m!1272755))

(assert (=> d!149557 m!1272575))

(declare-fun m!1273161 () Bool)

(assert (=> b!1387530 m!1273161))

(assert (=> b!1387530 m!1273161))

(assert (=> b!1387530 m!1272561))

(declare-fun m!1273163 () Bool)

(assert (=> b!1387530 m!1273163))

(assert (=> b!1387192 d!149557))

(declare-fun d!149559 () Bool)

(assert (=> d!149559 (= (seekEntryOrOpen!0 (select (arr!45811 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94879 (store (arr!45811 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46362 a!2938)) mask!2987))))

(assert (=> d!149559 true))

(declare-fun _$42!19 () Unit!46327)

(assert (=> d!149559 (= (choose!14 a!2938 i!1065 startIndex!16 mask!2987) _$42!19)))

(declare-fun bs!40316 () Bool)

(assert (= bs!40316 d!149559))

(assert (=> bs!40316 m!1272561))

(assert (=> bs!40316 m!1272545))

(assert (=> bs!40316 m!1272559))

(assert (=> bs!40316 m!1272559))

(assert (=> bs!40316 m!1272725))

(assert (=> bs!40316 m!1272561))

(assert (=> bs!40316 m!1272563))

(assert (=> d!149403 d!149559))

(assert (=> d!149403 d!149443))

(declare-fun d!149561 () Bool)

(assert (=> d!149561 (arrayContainsKey!0 a!2938 lt!609755 #b00000000000000000000000000000000)))

(declare-fun lt!609901 () Unit!46327)

(assert (=> d!149561 (= lt!609901 (choose!13 a!2938 lt!609755 startIndex!16))))

(assert (=> d!149561 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149561 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609755 startIndex!16) lt!609901)))

(declare-fun bs!40317 () Bool)

(assert (= bs!40317 d!149561))

(assert (=> bs!40317 m!1272775))

(declare-fun m!1273165 () Bool)

(assert (=> bs!40317 m!1273165))

(assert (=> b!1387235 d!149561))

(declare-fun d!149563 () Bool)

(declare-fun res!928408 () Bool)

(declare-fun e!786001 () Bool)

(assert (=> d!149563 (=> res!928408 e!786001)))

(assert (=> d!149563 (= res!928408 (= (select (arr!45811 a!2938) #b00000000000000000000000000000000) lt!609755))))

(assert (=> d!149563 (= (arrayContainsKey!0 a!2938 lt!609755 #b00000000000000000000000000000000) e!786001)))

(declare-fun b!1387531 () Bool)

(declare-fun e!786002 () Bool)

(assert (=> b!1387531 (= e!786001 e!786002)))

(declare-fun res!928409 () Bool)

(assert (=> b!1387531 (=> (not res!928409) (not e!786002))))

(assert (=> b!1387531 (= res!928409 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46362 a!2938)))))

(declare-fun b!1387532 () Bool)

(assert (=> b!1387532 (= e!786002 (arrayContainsKey!0 a!2938 lt!609755 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149563 (not res!928408)) b!1387531))

(assert (= (and b!1387531 res!928409) b!1387532))

(assert (=> d!149563 m!1272833))

(declare-fun m!1273167 () Bool)

(assert (=> b!1387532 m!1273167))

(assert (=> b!1387235 d!149563))

(assert (=> b!1387235 d!149417))

(declare-fun d!149565 () Bool)

(declare-fun lt!609904 () Bool)

(declare-fun content!767 (List!32519) (Set (_ BitVec 64)))

(assert (=> d!149565 (= lt!609904 (set.member (select (arr!45811 a!2938) #b00000000000000000000000000000000) (content!767 Nil!32516)))))

(declare-fun e!786008 () Bool)

(assert (=> d!149565 (= lt!609904 e!786008)))

(declare-fun res!928414 () Bool)

(assert (=> d!149565 (=> (not res!928414) (not e!786008))))

(assert (=> d!149565 (= res!928414 (is-Cons!32515 Nil!32516))))

(assert (=> d!149565 (= (contains!9757 Nil!32516 (select (arr!45811 a!2938) #b00000000000000000000000000000000)) lt!609904)))

(declare-fun b!1387537 () Bool)

(declare-fun e!786007 () Bool)

(assert (=> b!1387537 (= e!786008 e!786007)))

(declare-fun res!928415 () Bool)

(assert (=> b!1387537 (=> res!928415 e!786007)))

(assert (=> b!1387537 (= res!928415 (= (h!33724 Nil!32516) (select (arr!45811 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387538 () Bool)

(assert (=> b!1387538 (= e!786007 (contains!9757 (t!47220 Nil!32516) (select (arr!45811 a!2938) #b00000000000000000000000000000000)))))

(assert (= (and d!149565 res!928414) b!1387537))

(assert (= (and b!1387537 (not res!928415)) b!1387538))

(declare-fun m!1273169 () Bool)

(assert (=> d!149565 m!1273169))

(assert (=> d!149565 m!1272833))

(declare-fun m!1273171 () Bool)

(assert (=> d!149565 m!1273171))

(assert (=> b!1387538 m!1272833))

(declare-fun m!1273173 () Bool)

(assert (=> b!1387538 m!1273173))

(assert (=> b!1387290 d!149565))

(assert (=> b!1387234 d!149461))

(assert (=> b!1387289 d!149541))

(declare-fun call!66588 () Bool)

(declare-fun bm!66585 () Bool)

(assert (=> bm!66585 (= call!66588 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387539 () Bool)

(declare-fun e!786009 () Bool)

(assert (=> b!1387539 (= e!786009 call!66588)))

(declare-fun b!1387540 () Bool)

(declare-fun e!786010 () Bool)

(assert (=> b!1387540 (= e!786010 e!786009)))

(declare-fun c!129005 () Bool)

(assert (=> b!1387540 (= c!129005 (validKeyInArray!0 (select (arr!45811 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun b!1387541 () Bool)

(declare-fun e!786011 () Bool)

(assert (=> b!1387541 (= e!786009 e!786011)))

(declare-fun lt!609905 () (_ BitVec 64))

(assert (=> b!1387541 (= lt!609905 (select (arr!45811 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!609907 () Unit!46327)

(assert (=> b!1387541 (= lt!609907 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609905 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1387541 (arrayContainsKey!0 a!2938 lt!609905 #b00000000000000000000000000000000)))

