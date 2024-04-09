; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118116 () Bool)

(assert start!118116)

(declare-fun b!1382433 () Bool)

(declare-fun res!924132 () Bool)

(declare-fun e!783589 () Bool)

(assert (=> b!1382433 (=> (not res!924132) (not e!783589))))

(declare-datatypes ((array!94396 0))(
  ( (array!94397 (arr!45575 (Array (_ BitVec 32) (_ BitVec 64))) (size!46126 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94396)

(declare-datatypes ((List!32289 0))(
  ( (Nil!32286) (Cons!32285 (h!33494 (_ BitVec 64)) (t!46990 List!32289)) )
))
(declare-fun arrayNoDuplicates!0 (array!94396 (_ BitVec 32) List!32289) Bool)

(assert (=> b!1382433 (= res!924132 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32286))))

(declare-fun b!1382431 () Bool)

(declare-fun res!924134 () Bool)

(assert (=> b!1382431 (=> (not res!924134) (not e!783589))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382431 (= res!924134 (and (= (size!46126 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46126 a!2971))))))

(declare-fun b!1382434 () Bool)

(assert (=> b!1382434 (= e!783589 false)))

(declare-fun lt!608374 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94396 (_ BitVec 32)) Bool)

(assert (=> b!1382434 (= lt!608374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382432 () Bool)

(declare-fun res!924133 () Bool)

(assert (=> b!1382432 (=> (not res!924133) (not e!783589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382432 (= res!924133 (validKeyInArray!0 (select (arr!45575 a!2971) i!1094)))))

(declare-fun res!924135 () Bool)

(assert (=> start!118116 (=> (not res!924135) (not e!783589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118116 (= res!924135 (validMask!0 mask!3034))))

(assert (=> start!118116 e!783589))

(assert (=> start!118116 true))

(declare-fun array_inv!34520 (array!94396) Bool)

(assert (=> start!118116 (array_inv!34520 a!2971)))

(assert (= (and start!118116 res!924135) b!1382431))

(assert (= (and b!1382431 res!924134) b!1382432))

(assert (= (and b!1382432 res!924133) b!1382433))

(assert (= (and b!1382433 res!924132) b!1382434))

(declare-fun m!1267623 () Bool)

(assert (=> b!1382433 m!1267623))

(declare-fun m!1267625 () Bool)

(assert (=> b!1382434 m!1267625))

(declare-fun m!1267627 () Bool)

(assert (=> b!1382432 m!1267627))

(assert (=> b!1382432 m!1267627))

(declare-fun m!1267629 () Bool)

(assert (=> b!1382432 m!1267629))

(declare-fun m!1267631 () Bool)

(assert (=> start!118116 m!1267631))

(declare-fun m!1267633 () Bool)

(assert (=> start!118116 m!1267633))

(check-sat (not b!1382432) (not b!1382434) (not start!118116) (not b!1382433))
