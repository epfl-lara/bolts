; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118372 () Bool)

(assert start!118372)

(declare-fun b!1383921 () Bool)

(declare-fun e!784289 () Bool)

(declare-datatypes ((array!94593 0))(
  ( (array!94594 (arr!45670 (Array (_ BitVec 32) (_ BitVec 64))) (size!46221 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94593)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383921 (= e!784289 (validKeyInArray!0 (select (arr!45670 a!2938) startIndex!16)))))

(declare-fun b!1383922 () Bool)

(declare-datatypes ((Unit!46068 0))(
  ( (Unit!46069) )
))
(declare-fun e!784286 () Unit!46068)

(declare-fun lt!608686 () Unit!46068)

(assert (=> b!1383922 (= e!784286 lt!608686)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!608684 () Unit!46068)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46068)

(assert (=> b!1383922 (= lt!608684 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10084 0))(
  ( (MissingZero!10084 (index!42706 (_ BitVec 32))) (Found!10084 (index!42707 (_ BitVec 32))) (Intermediate!10084 (undefined!10896 Bool) (index!42708 (_ BitVec 32)) (x!124224 (_ BitVec 32))) (Undefined!10084) (MissingVacant!10084 (index!42709 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94593 (_ BitVec 32)) SeekEntryResult!10084)

(assert (=> b!1383922 (= (seekEntryOrOpen!0 (select (arr!45670 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45670 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94594 (store (arr!45670 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46221 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46068)

(assert (=> b!1383922 (= lt!608686 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94593 (_ BitVec 32)) Bool)

(assert (=> b!1383922 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1383923 () Bool)

(declare-fun res!925567 () Bool)

(declare-fun e!784288 () Bool)

(assert (=> b!1383923 (=> (not res!925567) (not e!784288))))

(declare-datatypes ((List!32378 0))(
  ( (Nil!32375) (Cons!32374 (h!33583 (_ BitVec 64)) (t!47079 List!32378)) )
))
(declare-fun arrayNoDuplicates!0 (array!94593 (_ BitVec 32) List!32378) Bool)

(assert (=> b!1383923 (= res!925567 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32375))))

(declare-fun b!1383924 () Bool)

(declare-fun Unit!46070 () Unit!46068)

(assert (=> b!1383924 (= e!784286 Unit!46070)))

(declare-fun b!1383925 () Bool)

(declare-fun res!925566 () Bool)

(assert (=> b!1383925 (=> (not res!925566) (not e!784288))))

(assert (=> b!1383925 (= res!925566 (and (not (= (select (arr!45670 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45670 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1383926 () Bool)

(declare-fun res!925568 () Bool)

(assert (=> b!1383926 (=> (not res!925568) (not e!784288))))

(assert (=> b!1383926 (= res!925568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383920 () Bool)

(assert (=> b!1383920 (= e!784288 false)))

(declare-fun lt!608685 () Unit!46068)

(assert (=> b!1383920 (= lt!608685 e!784286)))

(declare-fun c!128621 () Bool)

(assert (=> b!1383920 (= c!128621 e!784289)))

(declare-fun res!925565 () Bool)

(assert (=> b!1383920 (=> (not res!925565) (not e!784289))))

(assert (=> b!1383920 (= res!925565 (not (= startIndex!16 i!1065)))))

(declare-fun res!925563 () Bool)

(assert (=> start!118372 (=> (not res!925563) (not e!784288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118372 (= res!925563 (validMask!0 mask!2987))))

(assert (=> start!118372 e!784288))

(assert (=> start!118372 true))

(declare-fun array_inv!34615 (array!94593) Bool)

(assert (=> start!118372 (array_inv!34615 a!2938)))

(declare-fun b!1383927 () Bool)

(declare-fun res!925564 () Bool)

(assert (=> b!1383927 (=> (not res!925564) (not e!784288))))

(assert (=> b!1383927 (= res!925564 (validKeyInArray!0 (select (arr!45670 a!2938) i!1065)))))

(declare-fun b!1383928 () Bool)

(declare-fun res!925569 () Bool)

(assert (=> b!1383928 (=> (not res!925569) (not e!784288))))

(assert (=> b!1383928 (= res!925569 (and (= (size!46221 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46221 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46221 a!2938))))))

(assert (= (and start!118372 res!925563) b!1383928))

(assert (= (and b!1383928 res!925569) b!1383927))

(assert (= (and b!1383927 res!925564) b!1383923))

(assert (= (and b!1383923 res!925567) b!1383926))

(assert (= (and b!1383926 res!925568) b!1383925))

(assert (= (and b!1383925 res!925566) b!1383920))

(assert (= (and b!1383920 res!925565) b!1383921))

(assert (= (and b!1383920 c!128621) b!1383922))

(assert (= (and b!1383920 (not c!128621)) b!1383924))

(declare-fun m!1269173 () Bool)

(assert (=> b!1383923 m!1269173))

(declare-fun m!1269175 () Bool)

(assert (=> b!1383921 m!1269175))

(assert (=> b!1383921 m!1269175))

(declare-fun m!1269177 () Bool)

(assert (=> b!1383921 m!1269177))

(declare-fun m!1269179 () Bool)

(assert (=> b!1383926 m!1269179))

(declare-fun m!1269181 () Bool)

(assert (=> b!1383925 m!1269181))

(declare-fun m!1269183 () Bool)

(assert (=> start!118372 m!1269183))

(declare-fun m!1269185 () Bool)

(assert (=> start!118372 m!1269185))

(assert (=> b!1383927 m!1269181))

(assert (=> b!1383927 m!1269181))

(declare-fun m!1269187 () Bool)

(assert (=> b!1383927 m!1269187))

(declare-fun m!1269189 () Bool)

(assert (=> b!1383922 m!1269189))

(declare-fun m!1269191 () Bool)

(assert (=> b!1383922 m!1269191))

(assert (=> b!1383922 m!1269191))

(declare-fun m!1269193 () Bool)

(assert (=> b!1383922 m!1269193))

(declare-fun m!1269195 () Bool)

(assert (=> b!1383922 m!1269195))

(declare-fun m!1269197 () Bool)

(assert (=> b!1383922 m!1269197))

(assert (=> b!1383922 m!1269175))

(declare-fun m!1269199 () Bool)

(assert (=> b!1383922 m!1269199))

(assert (=> b!1383922 m!1269175))

(declare-fun m!1269201 () Bool)

(assert (=> b!1383922 m!1269201))

(push 1)

(assert (not b!1383923))

(assert (not b!1383926))

(assert (not b!1383922))

(assert (not start!118372))

(assert (not b!1383927))

(assert (not b!1383921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

