; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118588 () Bool)

(assert start!118588)

(declare-fun b!1385824 () Bool)

(declare-fun res!927185 () Bool)

(declare-fun e!785191 () Bool)

(assert (=> b!1385824 (=> (not res!927185) (not e!785191))))

(declare-datatypes ((array!94782 0))(
  ( (array!94783 (arr!45763 (Array (_ BitVec 32) (_ BitVec 64))) (size!46314 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94782)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94782 (_ BitVec 32)) Bool)

(assert (=> b!1385824 (= res!927185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!927184 () Bool)

(assert (=> start!118588 (=> (not res!927184) (not e!785191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118588 (= res!927184 (validMask!0 mask!2987))))

(assert (=> start!118588 e!785191))

(assert (=> start!118588 true))

(declare-fun array_inv!34708 (array!94782) Bool)

(assert (=> start!118588 (array_inv!34708 a!2938)))

(declare-fun b!1385825 () Bool)

(assert (=> b!1385825 (= e!785191 (not true))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10128 0))(
  ( (MissingZero!10128 (index!42882 (_ BitVec 32))) (Found!10128 (index!42883 (_ BitVec 32))) (Intermediate!10128 (undefined!10940 Bool) (index!42884 (_ BitVec 32)) (x!124516 (_ BitVec 32))) (Undefined!10128) (MissingVacant!10128 (index!42885 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94782 (_ BitVec 32)) SeekEntryResult!10128)

(assert (=> b!1385825 (= (seekEntryOrOpen!0 (select (arr!45763 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45763 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94783 (store (arr!45763 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46314 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46198 0))(
  ( (Unit!46199) )
))
(declare-fun lt!609283 () Unit!46198)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94782 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46198)

(assert (=> b!1385825 (= lt!609283 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1385826 () Bool)

(declare-fun res!927188 () Bool)

(assert (=> b!1385826 (=> (not res!927188) (not e!785191))))

(assert (=> b!1385826 (= res!927188 (and (not (= (select (arr!45763 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45763 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385827 () Bool)

(declare-fun res!927189 () Bool)

(assert (=> b!1385827 (=> (not res!927189) (not e!785191))))

(assert (=> b!1385827 (= res!927189 (and (= (size!46314 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46314 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46314 a!2938))))))

(declare-fun b!1385828 () Bool)

(declare-fun res!927186 () Bool)

(assert (=> b!1385828 (=> (not res!927186) (not e!785191))))

(declare-datatypes ((List!32471 0))(
  ( (Nil!32468) (Cons!32467 (h!33676 (_ BitVec 64)) (t!47172 List!32471)) )
))
(declare-fun arrayNoDuplicates!0 (array!94782 (_ BitVec 32) List!32471) Bool)

(assert (=> b!1385828 (= res!927186 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32468))))

(declare-fun b!1385829 () Bool)

(declare-fun res!927183 () Bool)

(assert (=> b!1385829 (=> (not res!927183) (not e!785191))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385829 (= res!927183 (validKeyInArray!0 (select (arr!45763 a!2938) startIndex!16)))))

(declare-fun b!1385830 () Bool)

(declare-fun res!927187 () Bool)

(assert (=> b!1385830 (=> (not res!927187) (not e!785191))))

(assert (=> b!1385830 (= res!927187 (validKeyInArray!0 (select (arr!45763 a!2938) i!1065)))))

(assert (= (and start!118588 res!927184) b!1385827))

(assert (= (and b!1385827 res!927189) b!1385830))

(assert (= (and b!1385830 res!927187) b!1385828))

(assert (= (and b!1385828 res!927186) b!1385824))

(assert (= (and b!1385824 res!927185) b!1385826))

(assert (= (and b!1385826 res!927188) b!1385829))

(assert (= (and b!1385829 res!927183) b!1385825))

(declare-fun m!1271153 () Bool)

(assert (=> b!1385828 m!1271153))

(declare-fun m!1271155 () Bool)

(assert (=> b!1385830 m!1271155))

(assert (=> b!1385830 m!1271155))

(declare-fun m!1271157 () Bool)

(assert (=> b!1385830 m!1271157))

(assert (=> b!1385826 m!1271155))

(declare-fun m!1271159 () Bool)

(assert (=> b!1385829 m!1271159))

(assert (=> b!1385829 m!1271159))

(declare-fun m!1271161 () Bool)

(assert (=> b!1385829 m!1271161))

(declare-fun m!1271163 () Bool)

(assert (=> b!1385825 m!1271163))

(assert (=> b!1385825 m!1271163))

(declare-fun m!1271165 () Bool)

(assert (=> b!1385825 m!1271165))

(declare-fun m!1271167 () Bool)

(assert (=> b!1385825 m!1271167))

(declare-fun m!1271169 () Bool)

(assert (=> b!1385825 m!1271169))

(assert (=> b!1385825 m!1271159))

(assert (=> b!1385825 m!1271159))

(declare-fun m!1271171 () Bool)

(assert (=> b!1385825 m!1271171))

(declare-fun m!1271173 () Bool)

(assert (=> b!1385824 m!1271173))

(declare-fun m!1271175 () Bool)

(assert (=> start!118588 m!1271175))

(declare-fun m!1271177 () Bool)

(assert (=> start!118588 m!1271177))

(push 1)

(assert (not b!1385829))

(assert (not start!118588))

(assert (not b!1385830))

(assert (not b!1385824))

(assert (not b!1385825))

(assert (not b!1385828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

