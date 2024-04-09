; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118668 () Bool)

(assert start!118668)

(declare-fun b!1386818 () Bool)

(declare-datatypes ((Unit!46303 0))(
  ( (Unit!46304) )
))
(declare-fun e!785586 () Unit!46303)

(declare-fun lt!609557 () Unit!46303)

(assert (=> b!1386818 (= e!785586 lt!609557)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!609559 () Unit!46303)

(declare-datatypes ((array!94862 0))(
  ( (array!94863 (arr!45803 (Array (_ BitVec 32) (_ BitVec 64))) (size!46354 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94862)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46303)

(assert (=> b!1386818 (= lt!609559 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10168 0))(
  ( (MissingZero!10168 (index!43042 (_ BitVec 32))) (Found!10168 (index!43043 (_ BitVec 32))) (Intermediate!10168 (undefined!10980 Bool) (index!43044 (_ BitVec 32)) (x!124660 (_ BitVec 32))) (Undefined!10168) (MissingVacant!10168 (index!43045 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94862 (_ BitVec 32)) SeekEntryResult!10168)

(assert (=> b!1386818 (= (seekEntryOrOpen!0 (select (arr!45803 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45803 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94863 (store (arr!45803 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46354 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46303)

(assert (=> b!1386818 (= lt!609557 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94862 (_ BitVec 32)) Bool)

(assert (=> b!1386818 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386819 () Bool)

(declare-fun res!928023 () Bool)

(declare-fun e!785587 () Bool)

(assert (=> b!1386819 (=> (not res!928023) (not e!785587))))

(declare-datatypes ((List!32511 0))(
  ( (Nil!32508) (Cons!32507 (h!33716 (_ BitVec 64)) (t!47212 List!32511)) )
))
(declare-fun arrayNoDuplicates!0 (array!94862 (_ BitVec 32) List!32511) Bool)

(assert (=> b!1386819 (= res!928023 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32508))))

(declare-fun b!1386820 () Bool)

(declare-fun res!928029 () Bool)

(assert (=> b!1386820 (=> (not res!928029) (not e!785587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386820 (= res!928029 (validKeyInArray!0 (select (arr!45803 a!2938) i!1065)))))

(declare-fun b!1386821 () Bool)

(declare-fun e!785588 () Bool)

(assert (=> b!1386821 (= e!785588 (validKeyInArray!0 (select (arr!45803 a!2938) startIndex!16)))))

(declare-fun b!1386822 () Bool)

(assert (=> b!1386822 (= e!785587 false)))

(declare-fun lt!609558 () Unit!46303)

(assert (=> b!1386822 (= lt!609558 e!785586)))

(declare-fun c!128840 () Bool)

(assert (=> b!1386822 (= c!128840 e!785588)))

(declare-fun res!928027 () Bool)

(assert (=> b!1386822 (=> (not res!928027) (not e!785588))))

(assert (=> b!1386822 (= res!928027 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386823 () Bool)

(declare-fun Unit!46305 () Unit!46303)

(assert (=> b!1386823 (= e!785586 Unit!46305)))

(declare-fun b!1386824 () Bool)

(declare-fun res!928025 () Bool)

(assert (=> b!1386824 (=> (not res!928025) (not e!785587))))

(assert (=> b!1386824 (= res!928025 (and (not (= (select (arr!45803 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45803 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!928026 () Bool)

(assert (=> start!118668 (=> (not res!928026) (not e!785587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118668 (= res!928026 (validMask!0 mask!2987))))

(assert (=> start!118668 e!785587))

(assert (=> start!118668 true))

(declare-fun array_inv!34748 (array!94862) Bool)

(assert (=> start!118668 (array_inv!34748 a!2938)))

(declare-fun b!1386825 () Bool)

(declare-fun res!928024 () Bool)

(assert (=> b!1386825 (=> (not res!928024) (not e!785587))))

(assert (=> b!1386825 (= res!928024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386826 () Bool)

(declare-fun res!928028 () Bool)

(assert (=> b!1386826 (=> (not res!928028) (not e!785587))))

(assert (=> b!1386826 (= res!928028 (and (= (size!46354 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46354 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46354 a!2938))))))

(assert (= (and start!118668 res!928026) b!1386826))

(assert (= (and b!1386826 res!928028) b!1386820))

(assert (= (and b!1386820 res!928029) b!1386819))

(assert (= (and b!1386819 res!928023) b!1386825))

(assert (= (and b!1386825 res!928024) b!1386824))

(assert (= (and b!1386824 res!928025) b!1386822))

(assert (= (and b!1386822 res!928027) b!1386821))

(assert (= (and b!1386822 c!128840) b!1386818))

(assert (= (and b!1386822 (not c!128840)) b!1386823))

(declare-fun m!1272293 () Bool)

(assert (=> b!1386819 m!1272293))

(declare-fun m!1272295 () Bool)

(assert (=> b!1386825 m!1272295))

(declare-fun m!1272297 () Bool)

(assert (=> b!1386820 m!1272297))

(assert (=> b!1386820 m!1272297))

(declare-fun m!1272299 () Bool)

(assert (=> b!1386820 m!1272299))

(assert (=> b!1386824 m!1272297))

(declare-fun m!1272301 () Bool)

(assert (=> start!118668 m!1272301))

(declare-fun m!1272303 () Bool)

(assert (=> start!118668 m!1272303))

(declare-fun m!1272305 () Bool)

(assert (=> b!1386821 m!1272305))

(assert (=> b!1386821 m!1272305))

(declare-fun m!1272307 () Bool)

(assert (=> b!1386821 m!1272307))

(declare-fun m!1272309 () Bool)

(assert (=> b!1386818 m!1272309))

(declare-fun m!1272311 () Bool)

(assert (=> b!1386818 m!1272311))

(assert (=> b!1386818 m!1272311))

(declare-fun m!1272313 () Bool)

(assert (=> b!1386818 m!1272313))

(declare-fun m!1272315 () Bool)

(assert (=> b!1386818 m!1272315))

(declare-fun m!1272317 () Bool)

(assert (=> b!1386818 m!1272317))

(assert (=> b!1386818 m!1272305))

(declare-fun m!1272319 () Bool)

(assert (=> b!1386818 m!1272319))

(assert (=> b!1386818 m!1272305))

(declare-fun m!1272321 () Bool)

(assert (=> b!1386818 m!1272321))

(check-sat (not b!1386819) (not start!118668) (not b!1386825) (not b!1386821) (not b!1386818) (not b!1386820))
