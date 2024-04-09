; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117966 () Bool)

(assert start!117966)

(declare-fun res!923279 () Bool)

(declare-fun e!783166 () Bool)

(assert (=> start!117966 (=> (not res!923279) (not e!783166))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117966 (= res!923279 (validMask!0 mask!3034))))

(assert (=> start!117966 e!783166))

(assert (=> start!117966 true))

(declare-datatypes ((array!94273 0))(
  ( (array!94274 (arr!45515 (Array (_ BitVec 32) (_ BitVec 64))) (size!46066 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94273)

(declare-fun array_inv!34460 (array!94273) Bool)

(assert (=> start!117966 (array_inv!34460 a!2971)))

(declare-fun b!1381542 () Bool)

(declare-fun res!923280 () Bool)

(assert (=> b!1381542 (=> (not res!923280) (not e!783166))))

(declare-datatypes ((List!32229 0))(
  ( (Nil!32226) (Cons!32225 (h!33434 (_ BitVec 64)) (t!46930 List!32229)) )
))
(declare-fun arrayNoDuplicates!0 (array!94273 (_ BitVec 32) List!32229) Bool)

(assert (=> b!1381542 (= res!923280 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32226))))

(declare-fun b!1381540 () Bool)

(declare-fun res!923277 () Bool)

(assert (=> b!1381540 (=> (not res!923277) (not e!783166))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381540 (= res!923277 (and (= (size!46066 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46066 a!2971))))))

(declare-fun b!1381541 () Bool)

(declare-fun res!923278 () Bool)

(assert (=> b!1381541 (=> (not res!923278) (not e!783166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381541 (= res!923278 (validKeyInArray!0 (select (arr!45515 a!2971) i!1094)))))

(declare-fun b!1381543 () Bool)

(assert (=> b!1381543 (= e!783166 false)))

(declare-fun lt!608185 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94273 (_ BitVec 32)) Bool)

(assert (=> b!1381543 (= lt!608185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117966 res!923279) b!1381540))

(assert (= (and b!1381540 res!923277) b!1381541))

(assert (= (and b!1381541 res!923278) b!1381542))

(assert (= (and b!1381542 res!923280) b!1381543))

(declare-fun m!1266783 () Bool)

(assert (=> start!117966 m!1266783))

(declare-fun m!1266785 () Bool)

(assert (=> start!117966 m!1266785))

(declare-fun m!1266787 () Bool)

(assert (=> b!1381542 m!1266787))

(declare-fun m!1266789 () Bool)

(assert (=> b!1381541 m!1266789))

(assert (=> b!1381541 m!1266789))

(declare-fun m!1266791 () Bool)

(assert (=> b!1381541 m!1266791))

(declare-fun m!1266793 () Bool)

(assert (=> b!1381543 m!1266793))

(check-sat (not b!1381543) (not b!1381541) (not start!117966) (not b!1381542))
(check-sat)
