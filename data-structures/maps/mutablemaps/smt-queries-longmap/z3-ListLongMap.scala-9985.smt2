; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117960 () Bool)

(assert start!117960)

(declare-fun b!1381505 () Bool)

(declare-fun res!923242 () Bool)

(declare-fun e!783148 () Bool)

(assert (=> b!1381505 (=> (not res!923242) (not e!783148))))

(declare-datatypes ((array!94267 0))(
  ( (array!94268 (arr!45512 (Array (_ BitVec 32) (_ BitVec 64))) (size!46063 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94267)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381505 (= res!923242 (validKeyInArray!0 (select (arr!45512 a!2971) i!1094)))))

(declare-fun b!1381504 () Bool)

(declare-fun res!923243 () Bool)

(assert (=> b!1381504 (=> (not res!923243) (not e!783148))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381504 (= res!923243 (and (= (size!46063 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46063 a!2971))))))

(declare-fun res!923241 () Bool)

(assert (=> start!117960 (=> (not res!923241) (not e!783148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117960 (= res!923241 (validMask!0 mask!3034))))

(assert (=> start!117960 e!783148))

(assert (=> start!117960 true))

(declare-fun array_inv!34457 (array!94267) Bool)

(assert (=> start!117960 (array_inv!34457 a!2971)))

(declare-fun b!1381507 () Bool)

(assert (=> b!1381507 (= e!783148 false)))

(declare-fun lt!608176 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94267 (_ BitVec 32)) Bool)

(assert (=> b!1381507 (= lt!608176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381506 () Bool)

(declare-fun res!923244 () Bool)

(assert (=> b!1381506 (=> (not res!923244) (not e!783148))))

(declare-datatypes ((List!32226 0))(
  ( (Nil!32223) (Cons!32222 (h!33431 (_ BitVec 64)) (t!46927 List!32226)) )
))
(declare-fun arrayNoDuplicates!0 (array!94267 (_ BitVec 32) List!32226) Bool)

(assert (=> b!1381506 (= res!923244 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32223))))

(assert (= (and start!117960 res!923241) b!1381504))

(assert (= (and b!1381504 res!923243) b!1381505))

(assert (= (and b!1381505 res!923242) b!1381506))

(assert (= (and b!1381506 res!923244) b!1381507))

(declare-fun m!1266747 () Bool)

(assert (=> b!1381505 m!1266747))

(assert (=> b!1381505 m!1266747))

(declare-fun m!1266749 () Bool)

(assert (=> b!1381505 m!1266749))

(declare-fun m!1266751 () Bool)

(assert (=> start!117960 m!1266751))

(declare-fun m!1266753 () Bool)

(assert (=> start!117960 m!1266753))

(declare-fun m!1266755 () Bool)

(assert (=> b!1381507 m!1266755))

(declare-fun m!1266757 () Bool)

(assert (=> b!1381506 m!1266757))

(check-sat (not b!1381507) (not start!117960) (not b!1381506) (not b!1381505))
(check-sat)
