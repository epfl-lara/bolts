; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118414 () Bool)

(assert start!118414)

(declare-fun b!1384498 () Bool)

(declare-fun e!784549 () Bool)

(declare-datatypes ((array!94635 0))(
  ( (array!94636 (arr!45691 (Array (_ BitVec 32) (_ BitVec 64))) (size!46242 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94635)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384498 (= e!784549 (validKeyInArray!0 (select (arr!45691 a!2938) startIndex!16)))))

(declare-fun b!1384499 () Bool)

(declare-fun res!926021 () Bool)

(declare-fun e!784551 () Bool)

(assert (=> b!1384499 (=> (not res!926021) (not e!784551))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94635 (_ BitVec 32)) Bool)

(assert (=> b!1384499 (= res!926021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384500 () Bool)

(declare-fun e!784552 () Bool)

(assert (=> b!1384500 (= e!784552 (not true))))

(declare-fun lt!608897 () array!94635)

(assert (=> b!1384500 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608897 mask!2987)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((Unit!46131 0))(
  ( (Unit!46132) )
))
(declare-fun lt!608895 () Unit!46131)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46131)

(assert (=> b!1384500 (= lt!608895 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384501 () Bool)

(declare-fun res!926016 () Bool)

(assert (=> b!1384501 (=> (not res!926016) (not e!784551))))

(assert (=> b!1384501 (= res!926016 (and (not (= (select (arr!45691 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45691 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384502 () Bool)

(assert (=> b!1384502 (= e!784551 e!784552)))

(declare-fun res!926020 () Bool)

(assert (=> b!1384502 (=> (not res!926020) (not e!784552))))

(assert (=> b!1384502 (= res!926020 (and (bvslt startIndex!16 (bvsub (size!46242 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608898 () Unit!46131)

(declare-fun e!784553 () Unit!46131)

(assert (=> b!1384502 (= lt!608898 e!784553)))

(declare-fun c!128684 () Bool)

(assert (=> b!1384502 (= c!128684 e!784549)))

(declare-fun res!926022 () Bool)

(assert (=> b!1384502 (=> (not res!926022) (not e!784549))))

(assert (=> b!1384502 (= res!926022 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384502 (= lt!608897 (array!94636 (store (arr!45691 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46242 a!2938)))))

(declare-fun res!926018 () Bool)

(assert (=> start!118414 (=> (not res!926018) (not e!784551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118414 (= res!926018 (validMask!0 mask!2987))))

(assert (=> start!118414 e!784551))

(assert (=> start!118414 true))

(declare-fun array_inv!34636 (array!94635) Bool)

(assert (=> start!118414 (array_inv!34636 a!2938)))

(declare-fun b!1384503 () Bool)

(declare-fun lt!608896 () Unit!46131)

(assert (=> b!1384503 (= e!784553 lt!608896)))

(declare-fun lt!608899 () Unit!46131)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46131)

(assert (=> b!1384503 (= lt!608899 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10105 0))(
  ( (MissingZero!10105 (index!42790 (_ BitVec 32))) (Found!10105 (index!42791 (_ BitVec 32))) (Intermediate!10105 (undefined!10917 Bool) (index!42792 (_ BitVec 32)) (x!124301 (_ BitVec 32))) (Undefined!10105) (MissingVacant!10105 (index!42793 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94635 (_ BitVec 32)) SeekEntryResult!10105)

(assert (=> b!1384503 (= (seekEntryOrOpen!0 (select (arr!45691 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45691 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608897 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46131)

(assert (=> b!1384503 (= lt!608896 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384503 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384504 () Bool)

(declare-fun res!926017 () Bool)

(assert (=> b!1384504 (=> (not res!926017) (not e!784551))))

(assert (=> b!1384504 (= res!926017 (and (= (size!46242 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46242 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46242 a!2938))))))

(declare-fun b!1384505 () Bool)

(declare-fun res!926019 () Bool)

(assert (=> b!1384505 (=> (not res!926019) (not e!784551))))

(assert (=> b!1384505 (= res!926019 (validKeyInArray!0 (select (arr!45691 a!2938) i!1065)))))

(declare-fun b!1384506 () Bool)

(declare-fun Unit!46133 () Unit!46131)

(assert (=> b!1384506 (= e!784553 Unit!46133)))

(declare-fun b!1384507 () Bool)

(declare-fun res!926015 () Bool)

(assert (=> b!1384507 (=> (not res!926015) (not e!784551))))

(declare-datatypes ((List!32399 0))(
  ( (Nil!32396) (Cons!32395 (h!33604 (_ BitVec 64)) (t!47100 List!32399)) )
))
(declare-fun arrayNoDuplicates!0 (array!94635 (_ BitVec 32) List!32399) Bool)

(assert (=> b!1384507 (= res!926015 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32396))))

(assert (= (and start!118414 res!926018) b!1384504))

(assert (= (and b!1384504 res!926017) b!1384505))

(assert (= (and b!1384505 res!926019) b!1384507))

(assert (= (and b!1384507 res!926015) b!1384499))

(assert (= (and b!1384499 res!926021) b!1384501))

(assert (= (and b!1384501 res!926016) b!1384502))

(assert (= (and b!1384502 res!926022) b!1384498))

(assert (= (and b!1384502 c!128684) b!1384503))

(assert (= (and b!1384502 (not c!128684)) b!1384506))

(assert (= (and b!1384502 res!926020) b!1384500))

(declare-fun m!1269815 () Bool)

(assert (=> b!1384500 m!1269815))

(declare-fun m!1269817 () Bool)

(assert (=> b!1384500 m!1269817))

(declare-fun m!1269819 () Bool)

(assert (=> b!1384507 m!1269819))

(declare-fun m!1269821 () Bool)

(assert (=> b!1384498 m!1269821))

(assert (=> b!1384498 m!1269821))

(declare-fun m!1269823 () Bool)

(assert (=> b!1384498 m!1269823))

(declare-fun m!1269825 () Bool)

(assert (=> b!1384501 m!1269825))

(declare-fun m!1269827 () Bool)

(assert (=> b!1384499 m!1269827))

(assert (=> b!1384505 m!1269825))

(assert (=> b!1384505 m!1269825))

(declare-fun m!1269829 () Bool)

(assert (=> b!1384505 m!1269829))

(declare-fun m!1269831 () Bool)

(assert (=> b!1384503 m!1269831))

(declare-fun m!1269833 () Bool)

(assert (=> b!1384503 m!1269833))

(declare-fun m!1269835 () Bool)

(assert (=> b!1384503 m!1269835))

(declare-fun m!1269837 () Bool)

(assert (=> b!1384503 m!1269837))

(assert (=> b!1384503 m!1269833))

(declare-fun m!1269839 () Bool)

(assert (=> b!1384503 m!1269839))

(assert (=> b!1384503 m!1269821))

(declare-fun m!1269841 () Bool)

(assert (=> b!1384503 m!1269841))

(assert (=> b!1384503 m!1269821))

(declare-fun m!1269843 () Bool)

(assert (=> b!1384503 m!1269843))

(assert (=> b!1384502 m!1269835))

(declare-fun m!1269845 () Bool)

(assert (=> start!118414 m!1269845))

(declare-fun m!1269847 () Bool)

(assert (=> start!118414 m!1269847))

(push 1)

