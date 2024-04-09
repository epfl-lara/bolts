; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118596 () Bool)

(assert start!118596)

(declare-fun b!1385908 () Bool)

(declare-fun res!927271 () Bool)

(declare-fun e!785215 () Bool)

(assert (=> b!1385908 (=> (not res!927271) (not e!785215))))

(declare-datatypes ((array!94790 0))(
  ( (array!94791 (arr!45767 (Array (_ BitVec 32) (_ BitVec 64))) (size!46318 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94790)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385908 (= res!927271 (validKeyInArray!0 (select (arr!45767 a!2938) i!1065)))))

(declare-fun b!1385909 () Bool)

(declare-fun res!927272 () Bool)

(assert (=> b!1385909 (=> (not res!927272) (not e!785215))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385909 (= res!927272 (and (= (size!46318 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46318 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46318 a!2938))))))

(declare-fun b!1385910 () Bool)

(declare-fun res!927273 () Bool)

(assert (=> b!1385910 (=> (not res!927273) (not e!785215))))

(assert (=> b!1385910 (= res!927273 (validKeyInArray!0 (select (arr!45767 a!2938) startIndex!16)))))

(declare-fun b!1385911 () Bool)

(assert (=> b!1385911 (= e!785215 (not true))))

(declare-datatypes ((SeekEntryResult!10132 0))(
  ( (MissingZero!10132 (index!42898 (_ BitVec 32))) (Found!10132 (index!42899 (_ BitVec 32))) (Intermediate!10132 (undefined!10944 Bool) (index!42900 (_ BitVec 32)) (x!124528 (_ BitVec 32))) (Undefined!10132) (MissingVacant!10132 (index!42901 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94790 (_ BitVec 32)) SeekEntryResult!10132)

(assert (=> b!1385911 (= (seekEntryOrOpen!0 (select (arr!45767 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45767 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94791 (store (arr!45767 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46318 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46206 0))(
  ( (Unit!46207) )
))
(declare-fun lt!609295 () Unit!46206)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94790 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46206)

(assert (=> b!1385911 (= lt!609295 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1385912 () Bool)

(declare-fun res!927267 () Bool)

(assert (=> b!1385912 (=> (not res!927267) (not e!785215))))

(declare-datatypes ((List!32475 0))(
  ( (Nil!32472) (Cons!32471 (h!33680 (_ BitVec 64)) (t!47176 List!32475)) )
))
(declare-fun arrayNoDuplicates!0 (array!94790 (_ BitVec 32) List!32475) Bool)

(assert (=> b!1385912 (= res!927267 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32472))))

(declare-fun res!927270 () Bool)

(assert (=> start!118596 (=> (not res!927270) (not e!785215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118596 (= res!927270 (validMask!0 mask!2987))))

(assert (=> start!118596 e!785215))

(assert (=> start!118596 true))

(declare-fun array_inv!34712 (array!94790) Bool)

(assert (=> start!118596 (array_inv!34712 a!2938)))

(declare-fun b!1385913 () Bool)

(declare-fun res!927269 () Bool)

(assert (=> b!1385913 (=> (not res!927269) (not e!785215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94790 (_ BitVec 32)) Bool)

(assert (=> b!1385913 (= res!927269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385914 () Bool)

(declare-fun res!927268 () Bool)

(assert (=> b!1385914 (=> (not res!927268) (not e!785215))))

(assert (=> b!1385914 (= res!927268 (and (not (= (select (arr!45767 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45767 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(assert (= (and start!118596 res!927270) b!1385909))

(assert (= (and b!1385909 res!927272) b!1385908))

(assert (= (and b!1385908 res!927271) b!1385912))

(assert (= (and b!1385912 res!927267) b!1385913))

(assert (= (and b!1385913 res!927269) b!1385914))

(assert (= (and b!1385914 res!927268) b!1385910))

(assert (= (and b!1385910 res!927273) b!1385911))

(declare-fun m!1271257 () Bool)

(assert (=> b!1385910 m!1271257))

(assert (=> b!1385910 m!1271257))

(declare-fun m!1271259 () Bool)

(assert (=> b!1385910 m!1271259))

(declare-fun m!1271261 () Bool)

(assert (=> b!1385914 m!1271261))

(declare-fun m!1271263 () Bool)

(assert (=> b!1385912 m!1271263))

(declare-fun m!1271265 () Bool)

(assert (=> start!118596 m!1271265))

(declare-fun m!1271267 () Bool)

(assert (=> start!118596 m!1271267))

(declare-fun m!1271269 () Bool)

(assert (=> b!1385911 m!1271269))

(assert (=> b!1385911 m!1271269))

(declare-fun m!1271271 () Bool)

(assert (=> b!1385911 m!1271271))

(declare-fun m!1271273 () Bool)

(assert (=> b!1385911 m!1271273))

(declare-fun m!1271275 () Bool)

(assert (=> b!1385911 m!1271275))

(assert (=> b!1385911 m!1271257))

(assert (=> b!1385911 m!1271257))

(declare-fun m!1271277 () Bool)

(assert (=> b!1385911 m!1271277))

(assert (=> b!1385908 m!1271261))

(assert (=> b!1385908 m!1271261))

(declare-fun m!1271279 () Bool)

(assert (=> b!1385908 m!1271279))

(declare-fun m!1271281 () Bool)

(assert (=> b!1385913 m!1271281))

(check-sat (not b!1385908) (not b!1385911) (not start!118596) (not b!1385913) (not b!1385912) (not b!1385910))
