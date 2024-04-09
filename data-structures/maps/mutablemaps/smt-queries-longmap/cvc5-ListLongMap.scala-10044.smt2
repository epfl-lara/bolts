; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118408 () Bool)

(assert start!118408)

(declare-fun b!1384408 () Bool)

(declare-fun res!925946 () Bool)

(declare-fun e!784507 () Bool)

(assert (=> b!1384408 (=> (not res!925946) (not e!784507))))

(declare-datatypes ((array!94629 0))(
  ( (array!94630 (arr!45688 (Array (_ BitVec 32) (_ BitVec 64))) (size!46239 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94629)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94629 (_ BitVec 32)) Bool)

(assert (=> b!1384408 (= res!925946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384409 () Bool)

(declare-fun res!925948 () Bool)

(assert (=> b!1384409 (=> (not res!925948) (not e!784507))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1384409 (= res!925948 (and (= (size!46239 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46239 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46239 a!2938))))))

(declare-fun b!1384410 () Bool)

(declare-fun e!784505 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384410 (= e!784505 (validKeyInArray!0 (select (arr!45688 a!2938) startIndex!16)))))

(declare-fun b!1384411 () Bool)

(declare-fun e!784508 () Bool)

(assert (=> b!1384411 (= e!784508 (not true))))

(declare-fun lt!608851 () array!94629)

(assert (=> b!1384411 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608851 mask!2987)))

(declare-datatypes ((Unit!46122 0))(
  ( (Unit!46123) )
))
(declare-fun lt!608852 () Unit!46122)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94629 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46122)

(assert (=> b!1384411 (= lt!608852 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384412 () Bool)

(declare-fun res!925947 () Bool)

(assert (=> b!1384412 (=> (not res!925947) (not e!784507))))

(assert (=> b!1384412 (= res!925947 (and (not (= (select (arr!45688 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45688 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384413 () Bool)

(assert (=> b!1384413 (= e!784507 e!784508)))

(declare-fun res!925943 () Bool)

(assert (=> b!1384413 (=> (not res!925943) (not e!784508))))

(assert (=> b!1384413 (= res!925943 (and (bvslt startIndex!16 (bvsub (size!46239 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608850 () Unit!46122)

(declare-fun e!784504 () Unit!46122)

(assert (=> b!1384413 (= lt!608850 e!784504)))

(declare-fun c!128675 () Bool)

(assert (=> b!1384413 (= c!128675 e!784505)))

(declare-fun res!925949 () Bool)

(assert (=> b!1384413 (=> (not res!925949) (not e!784505))))

(assert (=> b!1384413 (= res!925949 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384413 (= lt!608851 (array!94630 (store (arr!45688 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46239 a!2938)))))

(declare-fun b!1384414 () Bool)

(declare-fun Unit!46124 () Unit!46122)

(assert (=> b!1384414 (= e!784504 Unit!46124)))

(declare-fun res!925945 () Bool)

(assert (=> start!118408 (=> (not res!925945) (not e!784507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118408 (= res!925945 (validMask!0 mask!2987))))

(assert (=> start!118408 e!784507))

(assert (=> start!118408 true))

(declare-fun array_inv!34633 (array!94629) Bool)

(assert (=> start!118408 (array_inv!34633 a!2938)))

(declare-fun b!1384415 () Bool)

(declare-fun lt!608853 () Unit!46122)

(assert (=> b!1384415 (= e!784504 lt!608853)))

(declare-fun lt!608854 () Unit!46122)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94629 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46122)

(assert (=> b!1384415 (= lt!608854 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10102 0))(
  ( (MissingZero!10102 (index!42778 (_ BitVec 32))) (Found!10102 (index!42779 (_ BitVec 32))) (Intermediate!10102 (undefined!10914 Bool) (index!42780 (_ BitVec 32)) (x!124290 (_ BitVec 32))) (Undefined!10102) (MissingVacant!10102 (index!42781 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94629 (_ BitVec 32)) SeekEntryResult!10102)

(assert (=> b!1384415 (= (seekEntryOrOpen!0 (select (arr!45688 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45688 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608851 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94629 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46122)

(assert (=> b!1384415 (= lt!608853 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384415 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384416 () Bool)

(declare-fun res!925944 () Bool)

(assert (=> b!1384416 (=> (not res!925944) (not e!784507))))

(assert (=> b!1384416 (= res!925944 (validKeyInArray!0 (select (arr!45688 a!2938) i!1065)))))

(declare-fun b!1384417 () Bool)

(declare-fun res!925950 () Bool)

(assert (=> b!1384417 (=> (not res!925950) (not e!784507))))

(declare-datatypes ((List!32396 0))(
  ( (Nil!32393) (Cons!32392 (h!33601 (_ BitVec 64)) (t!47097 List!32396)) )
))
(declare-fun arrayNoDuplicates!0 (array!94629 (_ BitVec 32) List!32396) Bool)

(assert (=> b!1384417 (= res!925950 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32393))))

(assert (= (and start!118408 res!925945) b!1384409))

(assert (= (and b!1384409 res!925948) b!1384416))

(assert (= (and b!1384416 res!925944) b!1384417))

(assert (= (and b!1384417 res!925950) b!1384408))

(assert (= (and b!1384408 res!925946) b!1384412))

(assert (= (and b!1384412 res!925947) b!1384413))

(assert (= (and b!1384413 res!925949) b!1384410))

(assert (= (and b!1384413 c!128675) b!1384415))

(assert (= (and b!1384413 (not c!128675)) b!1384414))

(assert (= (and b!1384413 res!925943) b!1384411))

(declare-fun m!1269713 () Bool)

(assert (=> b!1384416 m!1269713))

(assert (=> b!1384416 m!1269713))

(declare-fun m!1269715 () Bool)

(assert (=> b!1384416 m!1269715))

(declare-fun m!1269717 () Bool)

(assert (=> start!118408 m!1269717))

(declare-fun m!1269719 () Bool)

(assert (=> start!118408 m!1269719))

(declare-fun m!1269721 () Bool)

(assert (=> b!1384411 m!1269721))

(declare-fun m!1269723 () Bool)

(assert (=> b!1384411 m!1269723))

(declare-fun m!1269725 () Bool)

(assert (=> b!1384408 m!1269725))

(declare-fun m!1269727 () Bool)

(assert (=> b!1384410 m!1269727))

(assert (=> b!1384410 m!1269727))

(declare-fun m!1269729 () Bool)

(assert (=> b!1384410 m!1269729))

(declare-fun m!1269731 () Bool)

(assert (=> b!1384413 m!1269731))

(declare-fun m!1269733 () Bool)

(assert (=> b!1384417 m!1269733))

(assert (=> b!1384412 m!1269713))

(declare-fun m!1269735 () Bool)

(assert (=> b!1384415 m!1269735))

(declare-fun m!1269737 () Bool)

(assert (=> b!1384415 m!1269737))

(assert (=> b!1384415 m!1269731))

(assert (=> b!1384415 m!1269737))

(declare-fun m!1269739 () Bool)

(assert (=> b!1384415 m!1269739))

(declare-fun m!1269741 () Bool)

(assert (=> b!1384415 m!1269741))

(assert (=> b!1384415 m!1269727))

(declare-fun m!1269743 () Bool)

(assert (=> b!1384415 m!1269743))

(assert (=> b!1384415 m!1269727))

(declare-fun m!1269745 () Bool)

(assert (=> b!1384415 m!1269745))

(push 1)

