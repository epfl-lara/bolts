; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118670 () Bool)

(assert start!118670)

(declare-fun b!1386845 () Bool)

(declare-fun e!785599 () Bool)

(declare-datatypes ((array!94864 0))(
  ( (array!94865 (arr!45804 (Array (_ BitVec 32) (_ BitVec 64))) (size!46355 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94864)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386845 (= e!785599 (validKeyInArray!0 (select (arr!45804 a!2938) startIndex!16)))))

(declare-fun b!1386846 () Bool)

(declare-datatypes ((Unit!46306 0))(
  ( (Unit!46307) )
))
(declare-fun e!785598 () Unit!46306)

(declare-fun lt!609567 () Unit!46306)

(assert (=> b!1386846 (= e!785598 lt!609567)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!609568 () Unit!46306)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94864 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46306)

(assert (=> b!1386846 (= lt!609568 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10169 0))(
  ( (MissingZero!10169 (index!43046 (_ BitVec 32))) (Found!10169 (index!43047 (_ BitVec 32))) (Intermediate!10169 (undefined!10981 Bool) (index!43048 (_ BitVec 32)) (x!124661 (_ BitVec 32))) (Undefined!10169) (MissingVacant!10169 (index!43049 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94864 (_ BitVec 32)) SeekEntryResult!10169)

(assert (=> b!1386846 (= (seekEntryOrOpen!0 (select (arr!45804 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45804 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94865 (store (arr!45804 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46355 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94864 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46306)

(assert (=> b!1386846 (= lt!609567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94864 (_ BitVec 32)) Bool)

(assert (=> b!1386846 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386847 () Bool)

(declare-fun res!928046 () Bool)

(declare-fun e!785597 () Bool)

(assert (=> b!1386847 (=> (not res!928046) (not e!785597))))

(assert (=> b!1386847 (= res!928046 (and (= (size!46355 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46355 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46355 a!2938))))))

(declare-fun b!1386848 () Bool)

(assert (=> b!1386848 (= e!785597 false)))

(declare-fun lt!609566 () Unit!46306)

(assert (=> b!1386848 (= lt!609566 e!785598)))

(declare-fun c!128843 () Bool)

(assert (=> b!1386848 (= c!128843 e!785599)))

(declare-fun res!928048 () Bool)

(assert (=> b!1386848 (=> (not res!928048) (not e!785599))))

(assert (=> b!1386848 (= res!928048 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386849 () Bool)

(declare-fun Unit!46308 () Unit!46306)

(assert (=> b!1386849 (= e!785598 Unit!46308)))

(declare-fun b!1386851 () Bool)

(declare-fun res!928049 () Bool)

(assert (=> b!1386851 (=> (not res!928049) (not e!785597))))

(assert (=> b!1386851 (= res!928049 (validKeyInArray!0 (select (arr!45804 a!2938) i!1065)))))

(declare-fun b!1386852 () Bool)

(declare-fun res!928045 () Bool)

(assert (=> b!1386852 (=> (not res!928045) (not e!785597))))

(assert (=> b!1386852 (= res!928045 (and (not (= (select (arr!45804 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45804 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386853 () Bool)

(declare-fun res!928044 () Bool)

(assert (=> b!1386853 (=> (not res!928044) (not e!785597))))

(assert (=> b!1386853 (= res!928044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!928047 () Bool)

(assert (=> start!118670 (=> (not res!928047) (not e!785597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118670 (= res!928047 (validMask!0 mask!2987))))

(assert (=> start!118670 e!785597))

(assert (=> start!118670 true))

(declare-fun array_inv!34749 (array!94864) Bool)

(assert (=> start!118670 (array_inv!34749 a!2938)))

(declare-fun b!1386850 () Bool)

(declare-fun res!928050 () Bool)

(assert (=> b!1386850 (=> (not res!928050) (not e!785597))))

(declare-datatypes ((List!32512 0))(
  ( (Nil!32509) (Cons!32508 (h!33717 (_ BitVec 64)) (t!47213 List!32512)) )
))
(declare-fun arrayNoDuplicates!0 (array!94864 (_ BitVec 32) List!32512) Bool)

(assert (=> b!1386850 (= res!928050 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32509))))

(assert (= (and start!118670 res!928047) b!1386847))

(assert (= (and b!1386847 res!928046) b!1386851))

(assert (= (and b!1386851 res!928049) b!1386850))

(assert (= (and b!1386850 res!928050) b!1386853))

(assert (= (and b!1386853 res!928044) b!1386852))

(assert (= (and b!1386852 res!928045) b!1386848))

(assert (= (and b!1386848 res!928048) b!1386845))

(assert (= (and b!1386848 c!128843) b!1386846))

(assert (= (and b!1386848 (not c!128843)) b!1386849))

(declare-fun m!1272323 () Bool)

(assert (=> b!1386851 m!1272323))

(assert (=> b!1386851 m!1272323))

(declare-fun m!1272325 () Bool)

(assert (=> b!1386851 m!1272325))

(assert (=> b!1386852 m!1272323))

(declare-fun m!1272327 () Bool)

(assert (=> b!1386845 m!1272327))

(assert (=> b!1386845 m!1272327))

(declare-fun m!1272329 () Bool)

(assert (=> b!1386845 m!1272329))

(declare-fun m!1272331 () Bool)

(assert (=> b!1386853 m!1272331))

(declare-fun m!1272333 () Bool)

(assert (=> start!118670 m!1272333))

(declare-fun m!1272335 () Bool)

(assert (=> start!118670 m!1272335))

(declare-fun m!1272337 () Bool)

(assert (=> b!1386850 m!1272337))

(declare-fun m!1272339 () Bool)

(assert (=> b!1386846 m!1272339))

(declare-fun m!1272341 () Bool)

(assert (=> b!1386846 m!1272341))

(assert (=> b!1386846 m!1272341))

(declare-fun m!1272343 () Bool)

(assert (=> b!1386846 m!1272343))

(declare-fun m!1272345 () Bool)

(assert (=> b!1386846 m!1272345))

(declare-fun m!1272347 () Bool)

(assert (=> b!1386846 m!1272347))

(assert (=> b!1386846 m!1272327))

(declare-fun m!1272349 () Bool)

(assert (=> b!1386846 m!1272349))

(assert (=> b!1386846 m!1272327))

(declare-fun m!1272351 () Bool)

(assert (=> b!1386846 m!1272351))

(push 1)

(assert (not b!1386850))

(assert (not b!1386846))

(assert (not b!1386845))

(assert (not b!1386851))

(assert (not b!1386853))

(assert (not start!118670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

