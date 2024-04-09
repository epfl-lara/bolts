; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117990 () Bool)

(assert start!117990)

(declare-fun b!1381686 () Bool)

(declare-fun res!923424 () Bool)

(declare-fun e!783239 () Bool)

(assert (=> b!1381686 (=> (not res!923424) (not e!783239))))

(declare-datatypes ((array!94297 0))(
  ( (array!94298 (arr!45527 (Array (_ BitVec 32) (_ BitVec 64))) (size!46078 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94297)

(declare-datatypes ((List!32241 0))(
  ( (Nil!32238) (Cons!32237 (h!33446 (_ BitVec 64)) (t!46942 List!32241)) )
))
(declare-fun arrayNoDuplicates!0 (array!94297 (_ BitVec 32) List!32241) Bool)

(assert (=> b!1381686 (= res!923424 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32238))))

(declare-fun b!1381687 () Bool)

(assert (=> b!1381687 (= e!783239 false)))

(declare-fun lt!608221 () Bool)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94297 (_ BitVec 32)) Bool)

(assert (=> b!1381687 (= lt!608221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381684 () Bool)

(declare-fun res!923421 () Bool)

(assert (=> b!1381684 (=> (not res!923421) (not e!783239))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381684 (= res!923421 (and (= (size!46078 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46078 a!2971))))))

(declare-fun b!1381685 () Bool)

(declare-fun res!923423 () Bool)

(assert (=> b!1381685 (=> (not res!923423) (not e!783239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381685 (= res!923423 (validKeyInArray!0 (select (arr!45527 a!2971) i!1094)))))

(declare-fun res!923422 () Bool)

(assert (=> start!117990 (=> (not res!923422) (not e!783239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117990 (= res!923422 (validMask!0 mask!3034))))

(assert (=> start!117990 e!783239))

(assert (=> start!117990 true))

(declare-fun array_inv!34472 (array!94297) Bool)

(assert (=> start!117990 (array_inv!34472 a!2971)))

(assert (= (and start!117990 res!923422) b!1381684))

(assert (= (and b!1381684 res!923421) b!1381685))

(assert (= (and b!1381685 res!923423) b!1381686))

(assert (= (and b!1381686 res!923424) b!1381687))

(declare-fun m!1266927 () Bool)

(assert (=> b!1381686 m!1266927))

(declare-fun m!1266929 () Bool)

(assert (=> b!1381687 m!1266929))

(declare-fun m!1266931 () Bool)

(assert (=> b!1381685 m!1266931))

(assert (=> b!1381685 m!1266931))

(declare-fun m!1266933 () Bool)

(assert (=> b!1381685 m!1266933))

(declare-fun m!1266935 () Bool)

(assert (=> start!117990 m!1266935))

(declare-fun m!1266937 () Bool)

(assert (=> start!117990 m!1266937))

(check-sat (not start!117990) (not b!1381686) (not b!1381685) (not b!1381687))
