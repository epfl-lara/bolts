; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117956 () Bool)

(assert start!117956)

(declare-fun b!1381481 () Bool)

(declare-fun res!923218 () Bool)

(declare-fun e!783136 () Bool)

(assert (=> b!1381481 (=> (not res!923218) (not e!783136))))

(declare-datatypes ((array!94263 0))(
  ( (array!94264 (arr!45510 (Array (_ BitVec 32) (_ BitVec 64))) (size!46061 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94263)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381481 (= res!923218 (validKeyInArray!0 (select (arr!45510 a!2971) i!1094)))))

(declare-fun b!1381480 () Bool)

(declare-fun res!923220 () Bool)

(assert (=> b!1381480 (=> (not res!923220) (not e!783136))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381480 (= res!923220 (and (= (size!46061 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46061 a!2971))))))

(declare-fun b!1381483 () Bool)

(assert (=> b!1381483 (= e!783136 false)))

(declare-fun lt!608170 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94263 (_ BitVec 32)) Bool)

(assert (=> b!1381483 (= lt!608170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381482 () Bool)

(declare-fun res!923217 () Bool)

(assert (=> b!1381482 (=> (not res!923217) (not e!783136))))

(declare-datatypes ((List!32224 0))(
  ( (Nil!32221) (Cons!32220 (h!33429 (_ BitVec 64)) (t!46925 List!32224)) )
))
(declare-fun arrayNoDuplicates!0 (array!94263 (_ BitVec 32) List!32224) Bool)

(assert (=> b!1381482 (= res!923217 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32221))))

(declare-fun res!923219 () Bool)

(assert (=> start!117956 (=> (not res!923219) (not e!783136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117956 (= res!923219 (validMask!0 mask!3034))))

(assert (=> start!117956 e!783136))

(assert (=> start!117956 true))

(declare-fun array_inv!34455 (array!94263) Bool)

(assert (=> start!117956 (array_inv!34455 a!2971)))

(assert (= (and start!117956 res!923219) b!1381480))

(assert (= (and b!1381480 res!923220) b!1381481))

(assert (= (and b!1381481 res!923218) b!1381482))

(assert (= (and b!1381482 res!923217) b!1381483))

(declare-fun m!1266723 () Bool)

(assert (=> b!1381481 m!1266723))

(assert (=> b!1381481 m!1266723))

(declare-fun m!1266725 () Bool)

(assert (=> b!1381481 m!1266725))

(declare-fun m!1266727 () Bool)

(assert (=> b!1381483 m!1266727))

(declare-fun m!1266729 () Bool)

(assert (=> b!1381482 m!1266729))

(declare-fun m!1266731 () Bool)

(assert (=> start!117956 m!1266731))

(declare-fun m!1266733 () Bool)

(assert (=> start!117956 m!1266733))

(push 1)

(assert (not start!117956))

(assert (not b!1381482))

(assert (not b!1381481))

(assert (not b!1381483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

