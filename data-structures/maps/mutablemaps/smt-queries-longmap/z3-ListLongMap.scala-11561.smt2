; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134678 () Bool)

(assert start!134678)

(declare-fun b!1571245 () Bool)

(declare-fun res!1073618 () Bool)

(declare-fun e!876111 () Bool)

(assert (=> b!1571245 (=> (not res!1073618) (not e!876111))))

(declare-fun k0!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571245 (= res!1073618 (validKeyInArray!0 k0!2731))))

(declare-fun b!1571246 () Bool)

(assert (=> b!1571246 (= e!876111 false)))

(declare-datatypes ((SeekEntryResult!13538 0))(
  ( (MissingZero!13538 (index!56549 (_ BitVec 32))) (Found!13538 (index!56550 (_ BitVec 32))) (Intermediate!13538 (undefined!14350 Bool) (index!56551 (_ BitVec 32)) (x!141253 (_ BitVec 32))) (Undefined!13538) (MissingVacant!13538 (index!56552 (_ BitVec 32))) )
))
(declare-fun lt!673480 () SeekEntryResult!13538)

(declare-fun mask!4043 () (_ BitVec 32))

(declare-datatypes ((array!104823 0))(
  ( (array!104824 (arr!50585 (Array (_ BitVec 32) (_ BitVec 64))) (size!51136 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104823)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104823 (_ BitVec 32)) SeekEntryResult!13538)

(assert (=> b!1571246 (= lt!673480 (seekEntryOrOpen!0 k0!2731 a!3462 mask!4043))))

(declare-fun b!1571243 () Bool)

(declare-fun res!1073621 () Bool)

(assert (=> b!1571243 (=> (not res!1073621) (not e!876111))))

(assert (=> b!1571243 (= res!1073621 (= (size!51136 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571244 () Bool)

(declare-fun res!1073620 () Bool)

(assert (=> b!1571244 (=> (not res!1073620) (not e!876111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104823 (_ BitVec 32)) Bool)

(assert (=> b!1571244 (= res!1073620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun res!1073619 () Bool)

(assert (=> start!134678 (=> (not res!1073619) (not e!876111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134678 (= res!1073619 (validMask!0 mask!4043))))

(assert (=> start!134678 e!876111))

(assert (=> start!134678 true))

(declare-fun array_inv!39230 (array!104823) Bool)

(assert (=> start!134678 (array_inv!39230 a!3462)))

(assert (= (and start!134678 res!1073619) b!1571243))

(assert (= (and b!1571243 res!1073621) b!1571244))

(assert (= (and b!1571244 res!1073620) b!1571245))

(assert (= (and b!1571245 res!1073618) b!1571246))

(declare-fun m!1445261 () Bool)

(assert (=> b!1571245 m!1445261))

(declare-fun m!1445263 () Bool)

(assert (=> b!1571246 m!1445263))

(declare-fun m!1445265 () Bool)

(assert (=> b!1571244 m!1445265))

(declare-fun m!1445267 () Bool)

(assert (=> start!134678 m!1445267))

(declare-fun m!1445269 () Bool)

(assert (=> start!134678 m!1445269))

(check-sat (not b!1571246) (not b!1571245) (not start!134678) (not b!1571244))
(check-sat)
