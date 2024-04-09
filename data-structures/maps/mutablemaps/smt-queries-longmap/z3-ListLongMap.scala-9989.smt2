; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117984 () Bool)

(assert start!117984)

(declare-fun b!1381651 () Bool)

(declare-fun e!783221 () Bool)

(assert (=> b!1381651 (= e!783221 false)))

(declare-fun lt!608212 () Bool)

(declare-datatypes ((array!94291 0))(
  ( (array!94292 (arr!45524 (Array (_ BitVec 32) (_ BitVec 64))) (size!46075 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94291)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94291 (_ BitVec 32)) Bool)

(assert (=> b!1381651 (= lt!608212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381648 () Bool)

(declare-fun res!923386 () Bool)

(assert (=> b!1381648 (=> (not res!923386) (not e!783221))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381648 (= res!923386 (and (= (size!46075 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46075 a!2971))))))

(declare-fun b!1381650 () Bool)

(declare-fun res!923387 () Bool)

(assert (=> b!1381650 (=> (not res!923387) (not e!783221))))

(declare-datatypes ((List!32238 0))(
  ( (Nil!32235) (Cons!32234 (h!33443 (_ BitVec 64)) (t!46939 List!32238)) )
))
(declare-fun arrayNoDuplicates!0 (array!94291 (_ BitVec 32) List!32238) Bool)

(assert (=> b!1381650 (= res!923387 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32235))))

(declare-fun b!1381649 () Bool)

(declare-fun res!923388 () Bool)

(assert (=> b!1381649 (=> (not res!923388) (not e!783221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381649 (= res!923388 (validKeyInArray!0 (select (arr!45524 a!2971) i!1094)))))

(declare-fun res!923385 () Bool)

(assert (=> start!117984 (=> (not res!923385) (not e!783221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117984 (= res!923385 (validMask!0 mask!3034))))

(assert (=> start!117984 e!783221))

(assert (=> start!117984 true))

(declare-fun array_inv!34469 (array!94291) Bool)

(assert (=> start!117984 (array_inv!34469 a!2971)))

(assert (= (and start!117984 res!923385) b!1381648))

(assert (= (and b!1381648 res!923386) b!1381649))

(assert (= (and b!1381649 res!923388) b!1381650))

(assert (= (and b!1381650 res!923387) b!1381651))

(declare-fun m!1266891 () Bool)

(assert (=> b!1381651 m!1266891))

(declare-fun m!1266893 () Bool)

(assert (=> b!1381650 m!1266893))

(declare-fun m!1266895 () Bool)

(assert (=> b!1381649 m!1266895))

(assert (=> b!1381649 m!1266895))

(declare-fun m!1266897 () Bool)

(assert (=> b!1381649 m!1266897))

(declare-fun m!1266899 () Bool)

(assert (=> start!117984 m!1266899))

(declare-fun m!1266901 () Bool)

(assert (=> start!117984 m!1266901))

(check-sat (not b!1381649) (not start!117984) (not b!1381650) (not b!1381651))
(check-sat)
