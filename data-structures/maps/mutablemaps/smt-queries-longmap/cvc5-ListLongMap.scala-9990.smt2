; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117988 () Bool)

(assert start!117988)

(declare-fun res!923410 () Bool)

(declare-fun e!783232 () Bool)

(assert (=> start!117988 (=> (not res!923410) (not e!783232))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117988 (= res!923410 (validMask!0 mask!3034))))

(assert (=> start!117988 e!783232))

(assert (=> start!117988 true))

(declare-datatypes ((array!94295 0))(
  ( (array!94296 (arr!45526 (Array (_ BitVec 32) (_ BitVec 64))) (size!46077 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94295)

(declare-fun array_inv!34471 (array!94295) Bool)

(assert (=> start!117988 (array_inv!34471 a!2971)))

(declare-fun b!1381673 () Bool)

(declare-fun res!923409 () Bool)

(assert (=> b!1381673 (=> (not res!923409) (not e!783232))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381673 (= res!923409 (validKeyInArray!0 (select (arr!45526 a!2971) i!1094)))))

(declare-fun b!1381674 () Bool)

(declare-fun res!923412 () Bool)

(assert (=> b!1381674 (=> (not res!923412) (not e!783232))))

(declare-datatypes ((List!32240 0))(
  ( (Nil!32237) (Cons!32236 (h!33445 (_ BitVec 64)) (t!46941 List!32240)) )
))
(declare-fun arrayNoDuplicates!0 (array!94295 (_ BitVec 32) List!32240) Bool)

(assert (=> b!1381674 (= res!923412 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32237))))

(declare-fun b!1381675 () Bool)

(assert (=> b!1381675 (= e!783232 false)))

(declare-fun lt!608218 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94295 (_ BitVec 32)) Bool)

(assert (=> b!1381675 (= lt!608218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381672 () Bool)

(declare-fun res!923411 () Bool)

(assert (=> b!1381672 (=> (not res!923411) (not e!783232))))

(assert (=> b!1381672 (= res!923411 (and (= (size!46077 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46077 a!2971))))))

(assert (= (and start!117988 res!923410) b!1381672))

(assert (= (and b!1381672 res!923411) b!1381673))

(assert (= (and b!1381673 res!923409) b!1381674))

(assert (= (and b!1381674 res!923412) b!1381675))

(declare-fun m!1266915 () Bool)

(assert (=> start!117988 m!1266915))

(declare-fun m!1266917 () Bool)

(assert (=> start!117988 m!1266917))

(declare-fun m!1266919 () Bool)

(assert (=> b!1381673 m!1266919))

(assert (=> b!1381673 m!1266919))

(declare-fun m!1266921 () Bool)

(assert (=> b!1381673 m!1266921))

(declare-fun m!1266923 () Bool)

(assert (=> b!1381674 m!1266923))

(declare-fun m!1266925 () Bool)

(assert (=> b!1381675 m!1266925))

(push 1)

(assert (not b!1381673))

(assert (not b!1381675))

(assert (not start!117988))

(assert (not b!1381674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

