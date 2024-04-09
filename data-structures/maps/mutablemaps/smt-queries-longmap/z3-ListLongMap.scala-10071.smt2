; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118602 () Bool)

(assert start!118602)

(declare-fun b!1385971 () Bool)

(declare-fun res!927331 () Bool)

(declare-fun e!785233 () Bool)

(assert (=> b!1385971 (=> (not res!927331) (not e!785233))))

(declare-datatypes ((array!94796 0))(
  ( (array!94797 (arr!45770 (Array (_ BitVec 32) (_ BitVec 64))) (size!46321 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94796)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385971 (= res!927331 (validKeyInArray!0 (select (arr!45770 a!2938) i!1065)))))

(declare-fun res!927333 () Bool)

(assert (=> start!118602 (=> (not res!927333) (not e!785233))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118602 (= res!927333 (validMask!0 mask!2987))))

(assert (=> start!118602 e!785233))

(assert (=> start!118602 true))

(declare-fun array_inv!34715 (array!94796) Bool)

(assert (=> start!118602 (array_inv!34715 a!2938)))

(declare-fun b!1385972 () Bool)

(declare-fun res!927330 () Bool)

(assert (=> b!1385972 (=> (not res!927330) (not e!785233))))

(declare-datatypes ((List!32478 0))(
  ( (Nil!32475) (Cons!32474 (h!33683 (_ BitVec 64)) (t!47179 List!32478)) )
))
(declare-fun arrayNoDuplicates!0 (array!94796 (_ BitVec 32) List!32478) Bool)

(assert (=> b!1385972 (= res!927330 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32475))))

(declare-fun b!1385973 () Bool)

(declare-fun res!927334 () Bool)

(assert (=> b!1385973 (=> (not res!927334) (not e!785233))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385973 (= res!927334 (and (= (size!46321 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46321 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46321 a!2938))))))

(declare-fun b!1385974 () Bool)

(assert (=> b!1385974 (= e!785233 (not (bvsle #b00000000000000000000000000000000 (size!46321 a!2938))))))

(declare-datatypes ((SeekEntryResult!10135 0))(
  ( (MissingZero!10135 (index!42910 (_ BitVec 32))) (Found!10135 (index!42911 (_ BitVec 32))) (Intermediate!10135 (undefined!10947 Bool) (index!42912 (_ BitVec 32)) (x!124539 (_ BitVec 32))) (Undefined!10135) (MissingVacant!10135 (index!42913 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94796 (_ BitVec 32)) SeekEntryResult!10135)

(assert (=> b!1385974 (= (seekEntryOrOpen!0 (select (arr!45770 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45770 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94797 (store (arr!45770 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46321 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46212 0))(
  ( (Unit!46213) )
))
(declare-fun lt!609304 () Unit!46212)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94796 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46212)

(assert (=> b!1385974 (= lt!609304 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1385975 () Bool)

(declare-fun res!927332 () Bool)

(assert (=> b!1385975 (=> (not res!927332) (not e!785233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94796 (_ BitVec 32)) Bool)

(assert (=> b!1385975 (= res!927332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385976 () Bool)

(declare-fun res!927335 () Bool)

(assert (=> b!1385976 (=> (not res!927335) (not e!785233))))

(assert (=> b!1385976 (= res!927335 (validKeyInArray!0 (select (arr!45770 a!2938) startIndex!16)))))

(declare-fun b!1385977 () Bool)

(declare-fun res!927336 () Bool)

(assert (=> b!1385977 (=> (not res!927336) (not e!785233))))

(assert (=> b!1385977 (= res!927336 (and (not (= (select (arr!45770 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45770 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(assert (= (and start!118602 res!927333) b!1385973))

(assert (= (and b!1385973 res!927334) b!1385971))

(assert (= (and b!1385971 res!927331) b!1385972))

(assert (= (and b!1385972 res!927330) b!1385975))

(assert (= (and b!1385975 res!927332) b!1385977))

(assert (= (and b!1385977 res!927336) b!1385976))

(assert (= (and b!1385976 res!927335) b!1385974))

(declare-fun m!1271335 () Bool)

(assert (=> b!1385975 m!1271335))

(declare-fun m!1271337 () Bool)

(assert (=> b!1385971 m!1271337))

(assert (=> b!1385971 m!1271337))

(declare-fun m!1271339 () Bool)

(assert (=> b!1385971 m!1271339))

(assert (=> b!1385977 m!1271337))

(declare-fun m!1271341 () Bool)

(assert (=> b!1385972 m!1271341))

(declare-fun m!1271343 () Bool)

(assert (=> start!118602 m!1271343))

(declare-fun m!1271345 () Bool)

(assert (=> start!118602 m!1271345))

(declare-fun m!1271347 () Bool)

(assert (=> b!1385974 m!1271347))

(assert (=> b!1385974 m!1271347))

(declare-fun m!1271349 () Bool)

(assert (=> b!1385974 m!1271349))

(declare-fun m!1271351 () Bool)

(assert (=> b!1385974 m!1271351))

(declare-fun m!1271353 () Bool)

(assert (=> b!1385974 m!1271353))

(declare-fun m!1271355 () Bool)

(assert (=> b!1385974 m!1271355))

(assert (=> b!1385974 m!1271355))

(declare-fun m!1271357 () Bool)

(assert (=> b!1385974 m!1271357))

(assert (=> b!1385976 m!1271355))

(assert (=> b!1385976 m!1271355))

(declare-fun m!1271359 () Bool)

(assert (=> b!1385976 m!1271359))

(check-sat (not b!1385976) (not b!1385974) (not b!1385975) (not start!118602) (not b!1385972) (not b!1385971))
(check-sat)
