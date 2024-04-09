; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118418 () Bool)

(assert start!118418)

(declare-fun b!1384558 () Bool)

(declare-datatypes ((Unit!46137 0))(
  ( (Unit!46138) )
))
(declare-fun e!784581 () Unit!46137)

(declare-fun Unit!46139 () Unit!46137)

(assert (=> b!1384558 (= e!784581 Unit!46139)))

(declare-fun b!1384559 () Bool)

(declare-fun e!784583 () Bool)

(declare-fun e!784580 () Bool)

(assert (=> b!1384559 (= e!784583 e!784580)))

(declare-fun res!926070 () Bool)

(assert (=> b!1384559 (=> (not res!926070) (not e!784580))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-datatypes ((array!94639 0))(
  ( (array!94640 (arr!45693 (Array (_ BitVec 32) (_ BitVec 64))) (size!46244 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94639)

(assert (=> b!1384559 (= res!926070 (and (bvslt startIndex!16 (bvsub (size!46244 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608928 () Unit!46137)

(assert (=> b!1384559 (= lt!608928 e!784581)))

(declare-fun c!128690 () Bool)

(declare-fun e!784582 () Bool)

(assert (=> b!1384559 (= c!128690 e!784582)))

(declare-fun res!926068 () Bool)

(assert (=> b!1384559 (=> (not res!926068) (not e!784582))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384559 (= res!926068 (not (= startIndex!16 i!1065)))))

(declare-fun lt!608929 () array!94639)

(assert (=> b!1384559 (= lt!608929 (array!94640 (store (arr!45693 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46244 a!2938)))))

(declare-fun b!1384561 () Bool)

(declare-fun res!926066 () Bool)

(assert (=> b!1384561 (=> (not res!926066) (not e!784583))))

(assert (=> b!1384561 (= res!926066 (and (not (= (select (arr!45693 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45693 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384562 () Bool)

(declare-fun lt!608926 () Unit!46137)

(assert (=> b!1384562 (= e!784581 lt!608926)))

(declare-fun lt!608927 () Unit!46137)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46137)

(assert (=> b!1384562 (= lt!608927 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10107 0))(
  ( (MissingZero!10107 (index!42798 (_ BitVec 32))) (Found!10107 (index!42799 (_ BitVec 32))) (Intermediate!10107 (undefined!10919 Bool) (index!42800 (_ BitVec 32)) (x!124303 (_ BitVec 32))) (Undefined!10107) (MissingVacant!10107 (index!42801 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94639 (_ BitVec 32)) SeekEntryResult!10107)

(assert (=> b!1384562 (= (seekEntryOrOpen!0 (select (arr!45693 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45693 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608929 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46137)

(assert (=> b!1384562 (= lt!608926 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94639 (_ BitVec 32)) Bool)

(assert (=> b!1384562 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384563 () Bool)

(declare-fun res!926064 () Bool)

(assert (=> b!1384563 (=> (not res!926064) (not e!784583))))

(declare-datatypes ((List!32401 0))(
  ( (Nil!32398) (Cons!32397 (h!33606 (_ BitVec 64)) (t!47102 List!32401)) )
))
(declare-fun arrayNoDuplicates!0 (array!94639 (_ BitVec 32) List!32401) Bool)

(assert (=> b!1384563 (= res!926064 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32398))))

(declare-fun b!1384564 () Bool)

(assert (=> b!1384564 (= e!784580 (not true))))

(assert (=> b!1384564 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608929 mask!2987)))

(declare-fun lt!608925 () Unit!46137)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46137)

(assert (=> b!1384564 (= lt!608925 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384565 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384565 (= e!784582 (validKeyInArray!0 (select (arr!45693 a!2938) startIndex!16)))))

(declare-fun res!926069 () Bool)

(assert (=> start!118418 (=> (not res!926069) (not e!784583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118418 (= res!926069 (validMask!0 mask!2987))))

(assert (=> start!118418 e!784583))

(assert (=> start!118418 true))

(declare-fun array_inv!34638 (array!94639) Bool)

(assert (=> start!118418 (array_inv!34638 a!2938)))

(declare-fun b!1384560 () Bool)

(declare-fun res!926067 () Bool)

(assert (=> b!1384560 (=> (not res!926067) (not e!784583))))

(assert (=> b!1384560 (= res!926067 (and (= (size!46244 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46244 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46244 a!2938))))))

(declare-fun b!1384566 () Bool)

(declare-fun res!926063 () Bool)

(assert (=> b!1384566 (=> (not res!926063) (not e!784583))))

(assert (=> b!1384566 (= res!926063 (validKeyInArray!0 (select (arr!45693 a!2938) i!1065)))))

(declare-fun b!1384567 () Bool)

(declare-fun res!926065 () Bool)

(assert (=> b!1384567 (=> (not res!926065) (not e!784583))))

(assert (=> b!1384567 (= res!926065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118418 res!926069) b!1384560))

(assert (= (and b!1384560 res!926067) b!1384566))

(assert (= (and b!1384566 res!926063) b!1384563))

(assert (= (and b!1384563 res!926064) b!1384567))

(assert (= (and b!1384567 res!926065) b!1384561))

(assert (= (and b!1384561 res!926066) b!1384559))

(assert (= (and b!1384559 res!926068) b!1384565))

(assert (= (and b!1384559 c!128690) b!1384562))

(assert (= (and b!1384559 (not c!128690)) b!1384558))

(assert (= (and b!1384559 res!926070) b!1384564))

(declare-fun m!1269883 () Bool)

(assert (=> b!1384562 m!1269883))

(declare-fun m!1269885 () Bool)

(assert (=> b!1384562 m!1269885))

(declare-fun m!1269887 () Bool)

(assert (=> b!1384562 m!1269887))

(declare-fun m!1269889 () Bool)

(assert (=> b!1384562 m!1269889))

(assert (=> b!1384562 m!1269885))

(declare-fun m!1269891 () Bool)

(assert (=> b!1384562 m!1269891))

(declare-fun m!1269893 () Bool)

(assert (=> b!1384562 m!1269893))

(declare-fun m!1269895 () Bool)

(assert (=> b!1384562 m!1269895))

(assert (=> b!1384562 m!1269893))

(declare-fun m!1269897 () Bool)

(assert (=> b!1384562 m!1269897))

(declare-fun m!1269899 () Bool)

(assert (=> b!1384564 m!1269899))

(declare-fun m!1269901 () Bool)

(assert (=> b!1384564 m!1269901))

(assert (=> b!1384559 m!1269887))

(declare-fun m!1269903 () Bool)

(assert (=> b!1384563 m!1269903))

(declare-fun m!1269905 () Bool)

(assert (=> b!1384567 m!1269905))

(assert (=> b!1384565 m!1269893))

(assert (=> b!1384565 m!1269893))

(declare-fun m!1269907 () Bool)

(assert (=> b!1384565 m!1269907))

(declare-fun m!1269909 () Bool)

(assert (=> b!1384561 m!1269909))

(declare-fun m!1269911 () Bool)

(assert (=> start!118418 m!1269911))

(declare-fun m!1269913 () Bool)

(assert (=> start!118418 m!1269913))

(assert (=> b!1384566 m!1269909))

(assert (=> b!1384566 m!1269909))

(declare-fun m!1269915 () Bool)

(assert (=> b!1384566 m!1269915))

(push 1)

(assert (not b!1384562))

