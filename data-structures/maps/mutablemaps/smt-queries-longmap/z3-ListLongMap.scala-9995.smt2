; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118020 () Bool)

(assert start!118020)

(declare-fun b!1381910 () Bool)

(declare-fun res!923647 () Bool)

(declare-fun e!783329 () Bool)

(assert (=> b!1381910 (=> (not res!923647) (not e!783329))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94327 0))(
  ( (array!94328 (arr!45542 (Array (_ BitVec 32) (_ BitVec 64))) (size!46093 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94327)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381910 (= res!923647 (and (= (size!46093 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46093 a!2971))))))

(declare-fun b!1381911 () Bool)

(declare-fun res!923648 () Bool)

(assert (=> b!1381911 (=> (not res!923648) (not e!783329))))

(declare-datatypes ((List!32256 0))(
  ( (Nil!32253) (Cons!32252 (h!33461 (_ BitVec 64)) (t!46957 List!32256)) )
))
(declare-fun arrayNoDuplicates!0 (array!94327 (_ BitVec 32) List!32256) Bool)

(assert (=> b!1381911 (= res!923648 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32253))))

(declare-fun b!1381912 () Bool)

(declare-fun res!923650 () Bool)

(assert (=> b!1381912 (=> (not res!923650) (not e!783329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381912 (= res!923650 (validKeyInArray!0 (select (arr!45542 a!2971) i!1094)))))

(declare-fun b!1381913 () Bool)

(declare-fun res!923652 () Bool)

(assert (=> b!1381913 (=> (not res!923652) (not e!783329))))

(assert (=> b!1381913 (= res!923652 (and (not (= (select (arr!45542 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45542 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46093 a!2971))))))

(declare-fun b!1381914 () Bool)

(assert (=> b!1381914 (= e!783329 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94327 (_ BitVec 32)) Bool)

(assert (=> b!1381914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94328 (store (arr!45542 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46093 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45985 0))(
  ( (Unit!45986) )
))
(declare-fun lt!608266 () Unit!45985)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94327 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45985)

(assert (=> b!1381914 (= lt!608266 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun res!923651 () Bool)

(assert (=> start!118020 (=> (not res!923651) (not e!783329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118020 (= res!923651 (validMask!0 mask!3034))))

(assert (=> start!118020 e!783329))

(assert (=> start!118020 true))

(declare-fun array_inv!34487 (array!94327) Bool)

(assert (=> start!118020 (array_inv!34487 a!2971)))

(declare-fun b!1381915 () Bool)

(declare-fun res!923649 () Bool)

(assert (=> b!1381915 (=> (not res!923649) (not e!783329))))

(assert (=> b!1381915 (= res!923649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118020 res!923651) b!1381910))

(assert (= (and b!1381910 res!923647) b!1381912))

(assert (= (and b!1381912 res!923650) b!1381911))

(assert (= (and b!1381911 res!923648) b!1381915))

(assert (= (and b!1381915 res!923649) b!1381913))

(assert (= (and b!1381913 res!923652) b!1381914))

(declare-fun m!1267149 () Bool)

(assert (=> b!1381912 m!1267149))

(assert (=> b!1381912 m!1267149))

(declare-fun m!1267151 () Bool)

(assert (=> b!1381912 m!1267151))

(declare-fun m!1267153 () Bool)

(assert (=> b!1381911 m!1267153))

(assert (=> b!1381913 m!1267149))

(declare-fun m!1267155 () Bool)

(assert (=> start!118020 m!1267155))

(declare-fun m!1267157 () Bool)

(assert (=> start!118020 m!1267157))

(declare-fun m!1267159 () Bool)

(assert (=> b!1381914 m!1267159))

(declare-fun m!1267161 () Bool)

(assert (=> b!1381914 m!1267161))

(declare-fun m!1267163 () Bool)

(assert (=> b!1381914 m!1267163))

(declare-fun m!1267165 () Bool)

(assert (=> b!1381915 m!1267165))

(check-sat (not start!118020) (not b!1381912) (not b!1381914) (not b!1381915) (not b!1381911))
