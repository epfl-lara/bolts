; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118616 () Bool)

(assert start!118616)

(declare-fun b!1386118 () Bool)

(declare-fun res!927481 () Bool)

(declare-fun e!785276 () Bool)

(assert (=> b!1386118 (=> (not res!927481) (not e!785276))))

(declare-datatypes ((array!94810 0))(
  ( (array!94811 (arr!45777 (Array (_ BitVec 32) (_ BitVec 64))) (size!46328 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94810)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386118 (= res!927481 (validKeyInArray!0 (select (arr!45777 a!2938) startIndex!16)))))

(declare-fun b!1386119 () Bool)

(declare-fun res!927478 () Bool)

(assert (=> b!1386119 (=> (not res!927478) (not e!785276))))

(declare-datatypes ((List!32485 0))(
  ( (Nil!32482) (Cons!32481 (h!33690 (_ BitVec 64)) (t!47186 List!32485)) )
))
(declare-fun arrayNoDuplicates!0 (array!94810 (_ BitVec 32) List!32485) Bool)

(assert (=> b!1386119 (= res!927478 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32482))))

(declare-fun b!1386120 () Bool)

(assert (=> b!1386120 (= e!785276 (not true))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10142 0))(
  ( (MissingZero!10142 (index!42938 (_ BitVec 32))) (Found!10142 (index!42939 (_ BitVec 32))) (Intermediate!10142 (undefined!10954 Bool) (index!42940 (_ BitVec 32)) (x!124562 (_ BitVec 32))) (Undefined!10142) (MissingVacant!10142 (index!42941 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94810 (_ BitVec 32)) SeekEntryResult!10142)

(assert (=> b!1386120 (= (seekEntryOrOpen!0 (select (arr!45777 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45777 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94811 (store (arr!45777 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46328 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46226 0))(
  ( (Unit!46227) )
))
(declare-fun lt!609325 () Unit!46226)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94810 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46226)

(assert (=> b!1386120 (= lt!609325 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1386121 () Bool)

(declare-fun res!927480 () Bool)

(assert (=> b!1386121 (=> (not res!927480) (not e!785276))))

(assert (=> b!1386121 (= res!927480 (validKeyInArray!0 (select (arr!45777 a!2938) i!1065)))))

(declare-fun res!927482 () Bool)

(assert (=> start!118616 (=> (not res!927482) (not e!785276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118616 (= res!927482 (validMask!0 mask!2987))))

(assert (=> start!118616 e!785276))

(assert (=> start!118616 true))

(declare-fun array_inv!34722 (array!94810) Bool)

(assert (=> start!118616 (array_inv!34722 a!2938)))

(declare-fun b!1386122 () Bool)

(declare-fun res!927479 () Bool)

(assert (=> b!1386122 (=> (not res!927479) (not e!785276))))

(assert (=> b!1386122 (= res!927479 (and (not (= (select (arr!45777 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45777 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1386123 () Bool)

(declare-fun res!927483 () Bool)

(assert (=> b!1386123 (=> (not res!927483) (not e!785276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94810 (_ BitVec 32)) Bool)

(assert (=> b!1386123 (= res!927483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386124 () Bool)

(declare-fun res!927477 () Bool)

(assert (=> b!1386124 (=> (not res!927477) (not e!785276))))

(assert (=> b!1386124 (= res!927477 (and (= (size!46328 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46328 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46328 a!2938))))))

(assert (= (and start!118616 res!927482) b!1386124))

(assert (= (and b!1386124 res!927477) b!1386121))

(assert (= (and b!1386121 res!927480) b!1386119))

(assert (= (and b!1386119 res!927478) b!1386123))

(assert (= (and b!1386123 res!927483) b!1386122))

(assert (= (and b!1386122 res!927479) b!1386118))

(assert (= (and b!1386118 res!927481) b!1386120))

(declare-fun m!1271517 () Bool)

(assert (=> b!1386119 m!1271517))

(declare-fun m!1271519 () Bool)

(assert (=> start!118616 m!1271519))

(declare-fun m!1271521 () Bool)

(assert (=> start!118616 m!1271521))

(declare-fun m!1271523 () Bool)

(assert (=> b!1386122 m!1271523))

(declare-fun m!1271525 () Bool)

(assert (=> b!1386123 m!1271525))

(declare-fun m!1271527 () Bool)

(assert (=> b!1386118 m!1271527))

(assert (=> b!1386118 m!1271527))

(declare-fun m!1271529 () Bool)

(assert (=> b!1386118 m!1271529))

(declare-fun m!1271531 () Bool)

(assert (=> b!1386120 m!1271531))

(assert (=> b!1386120 m!1271531))

(declare-fun m!1271533 () Bool)

(assert (=> b!1386120 m!1271533))

(declare-fun m!1271535 () Bool)

(assert (=> b!1386120 m!1271535))

(declare-fun m!1271537 () Bool)

(assert (=> b!1386120 m!1271537))

(assert (=> b!1386120 m!1271527))

(assert (=> b!1386120 m!1271527))

(declare-fun m!1271539 () Bool)

(assert (=> b!1386120 m!1271539))

(assert (=> b!1386121 m!1271523))

(assert (=> b!1386121 m!1271523))

(declare-fun m!1271541 () Bool)

(assert (=> b!1386121 m!1271541))

(push 1)

(assert (not b!1386118))

(assert (not b!1386123))

(assert (not b!1386121))

(assert (not b!1386120))

(assert (not start!118616))

(assert (not b!1386119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

