; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118672 () Bool)

(assert start!118672)

(declare-fun b!1386872 () Bool)

(declare-datatypes ((Unit!46309 0))(
  ( (Unit!46310) )
))
(declare-fun e!785611 () Unit!46309)

(declare-fun Unit!46311 () Unit!46309)

(assert (=> b!1386872 (= e!785611 Unit!46311)))

(declare-fun b!1386873 () Bool)

(declare-fun res!928068 () Bool)

(declare-fun e!785610 () Bool)

(assert (=> b!1386873 (=> (not res!928068) (not e!785610))))

(declare-datatypes ((array!94866 0))(
  ( (array!94867 (arr!45805 (Array (_ BitVec 32) (_ BitVec 64))) (size!46356 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94866)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386873 (= res!928068 (and (not (= (select (arr!45805 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45805 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!928070 () Bool)

(assert (=> start!118672 (=> (not res!928070) (not e!785610))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118672 (= res!928070 (validMask!0 mask!2987))))

(assert (=> start!118672 e!785610))

(assert (=> start!118672 true))

(declare-fun array_inv!34750 (array!94866) Bool)

(assert (=> start!118672 (array_inv!34750 a!2938)))

(declare-fun b!1386874 () Bool)

(declare-fun e!785609 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386874 (= e!785609 (validKeyInArray!0 (select (arr!45805 a!2938) startIndex!16)))))

(declare-fun b!1386875 () Bool)

(declare-fun lt!609576 () Unit!46309)

(assert (=> b!1386875 (= e!785611 lt!609576)))

(declare-fun lt!609577 () Unit!46309)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46309)

(assert (=> b!1386875 (= lt!609577 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10170 0))(
  ( (MissingZero!10170 (index!43050 (_ BitVec 32))) (Found!10170 (index!43051 (_ BitVec 32))) (Intermediate!10170 (undefined!10982 Bool) (index!43052 (_ BitVec 32)) (x!124670 (_ BitVec 32))) (Undefined!10170) (MissingVacant!10170 (index!43053 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94866 (_ BitVec 32)) SeekEntryResult!10170)

(assert (=> b!1386875 (= (seekEntryOrOpen!0 (select (arr!45805 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45805 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94867 (store (arr!45805 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46356 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46309)

(assert (=> b!1386875 (= lt!609576 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94866 (_ BitVec 32)) Bool)

(assert (=> b!1386875 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386876 () Bool)

(declare-fun res!928071 () Bool)

(assert (=> b!1386876 (=> (not res!928071) (not e!785610))))

(assert (=> b!1386876 (= res!928071 (validKeyInArray!0 (select (arr!45805 a!2938) i!1065)))))

(declare-fun b!1386877 () Bool)

(assert (=> b!1386877 (= e!785610 (and (bvslt startIndex!16 (bvsub (size!46356 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000) (bvsge (bvsub (size!46356 a!2938) (bvadd #b00000000000000000000000000000001 startIndex!16)) (bvsub (size!46356 a!2938) startIndex!16))))))

(declare-fun lt!609575 () Unit!46309)

(assert (=> b!1386877 (= lt!609575 e!785611)))

(declare-fun c!128846 () Bool)

(assert (=> b!1386877 (= c!128846 e!785609)))

(declare-fun res!928069 () Bool)

(assert (=> b!1386877 (=> (not res!928069) (not e!785609))))

(assert (=> b!1386877 (= res!928069 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386878 () Bool)

(declare-fun res!928067 () Bool)

(assert (=> b!1386878 (=> (not res!928067) (not e!785610))))

(assert (=> b!1386878 (= res!928067 (and (= (size!46356 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46356 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46356 a!2938))))))

(declare-fun b!1386879 () Bool)

(declare-fun res!928065 () Bool)

(assert (=> b!1386879 (=> (not res!928065) (not e!785610))))

(assert (=> b!1386879 (= res!928065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386880 () Bool)

(declare-fun res!928066 () Bool)

(assert (=> b!1386880 (=> (not res!928066) (not e!785610))))

(declare-datatypes ((List!32513 0))(
  ( (Nil!32510) (Cons!32509 (h!33718 (_ BitVec 64)) (t!47214 List!32513)) )
))
(declare-fun arrayNoDuplicates!0 (array!94866 (_ BitVec 32) List!32513) Bool)

(assert (=> b!1386880 (= res!928066 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32510))))

(assert (= (and start!118672 res!928070) b!1386878))

(assert (= (and b!1386878 res!928067) b!1386876))

(assert (= (and b!1386876 res!928071) b!1386880))

(assert (= (and b!1386880 res!928066) b!1386879))

(assert (= (and b!1386879 res!928065) b!1386873))

(assert (= (and b!1386873 res!928068) b!1386877))

(assert (= (and b!1386877 res!928069) b!1386874))

(assert (= (and b!1386877 c!128846) b!1386875))

(assert (= (and b!1386877 (not c!128846)) b!1386872))

(declare-fun m!1272353 () Bool)

(assert (=> b!1386880 m!1272353))

(declare-fun m!1272355 () Bool)

(assert (=> b!1386876 m!1272355))

(assert (=> b!1386876 m!1272355))

(declare-fun m!1272357 () Bool)

(assert (=> b!1386876 m!1272357))

(declare-fun m!1272359 () Bool)

(assert (=> start!118672 m!1272359))

(declare-fun m!1272361 () Bool)

(assert (=> start!118672 m!1272361))

(declare-fun m!1272363 () Bool)

(assert (=> b!1386875 m!1272363))

(declare-fun m!1272365 () Bool)

(assert (=> b!1386875 m!1272365))

(assert (=> b!1386875 m!1272365))

(declare-fun m!1272367 () Bool)

(assert (=> b!1386875 m!1272367))

(declare-fun m!1272369 () Bool)

(assert (=> b!1386875 m!1272369))

(declare-fun m!1272371 () Bool)

(assert (=> b!1386875 m!1272371))

(declare-fun m!1272373 () Bool)

(assert (=> b!1386875 m!1272373))

(declare-fun m!1272375 () Bool)

(assert (=> b!1386875 m!1272375))

(assert (=> b!1386875 m!1272373))

(declare-fun m!1272377 () Bool)

(assert (=> b!1386875 m!1272377))

(assert (=> b!1386873 m!1272355))

(declare-fun m!1272379 () Bool)

(assert (=> b!1386879 m!1272379))

(assert (=> b!1386874 m!1272373))

(assert (=> b!1386874 m!1272373))

(declare-fun m!1272381 () Bool)

(assert (=> b!1386874 m!1272381))

(push 1)

(assert (not start!118672))

(assert (not b!1386880))

(assert (not b!1386879))

(assert (not b!1386875))

(assert (not b!1386876))

(assert (not b!1386874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

