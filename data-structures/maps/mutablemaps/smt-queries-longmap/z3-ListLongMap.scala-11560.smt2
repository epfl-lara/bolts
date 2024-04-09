; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134672 () Bool)

(assert start!134672)

(declare-fun b!1571208 () Bool)

(declare-fun res!1073583 () Bool)

(declare-fun e!876093 () Bool)

(assert (=> b!1571208 (=> (not res!1073583) (not e!876093))))

(declare-datatypes ((array!104817 0))(
  ( (array!104818 (arr!50582 (Array (_ BitVec 32) (_ BitVec 64))) (size!51133 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104817)

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104817 (_ BitVec 32)) Bool)

(assert (=> b!1571208 (= res!1073583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571209 () Bool)

(declare-fun res!1073584 () Bool)

(assert (=> b!1571209 (=> (not res!1073584) (not e!876093))))

(declare-fun k0!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571209 (= res!1073584 (validKeyInArray!0 k0!2731))))

(declare-fun res!1073585 () Bool)

(assert (=> start!134672 (=> (not res!1073585) (not e!876093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134672 (= res!1073585 (validMask!0 mask!4043))))

(assert (=> start!134672 e!876093))

(assert (=> start!134672 true))

(declare-fun array_inv!39227 (array!104817) Bool)

(assert (=> start!134672 (array_inv!39227 a!3462)))

(declare-fun b!1571207 () Bool)

(declare-fun res!1073582 () Bool)

(assert (=> b!1571207 (=> (not res!1073582) (not e!876093))))

(assert (=> b!1571207 (= res!1073582 (= (size!51133 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571210 () Bool)

(assert (=> b!1571210 (= e!876093 false)))

(declare-datatypes ((SeekEntryResult!13535 0))(
  ( (MissingZero!13535 (index!56537 (_ BitVec 32))) (Found!13535 (index!56538 (_ BitVec 32))) (Intermediate!13535 (undefined!14347 Bool) (index!56539 (_ BitVec 32)) (x!141242 (_ BitVec 32))) (Undefined!13535) (MissingVacant!13535 (index!56540 (_ BitVec 32))) )
))
(declare-fun lt!673471 () SeekEntryResult!13535)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104817 (_ BitVec 32)) SeekEntryResult!13535)

(assert (=> b!1571210 (= lt!673471 (seekEntryOrOpen!0 k0!2731 a!3462 mask!4043))))

(assert (= (and start!134672 res!1073585) b!1571207))

(assert (= (and b!1571207 res!1073582) b!1571208))

(assert (= (and b!1571208 res!1073583) b!1571209))

(assert (= (and b!1571209 res!1073584) b!1571210))

(declare-fun m!1445231 () Bool)

(assert (=> b!1571208 m!1445231))

(declare-fun m!1445233 () Bool)

(assert (=> b!1571209 m!1445233))

(declare-fun m!1445235 () Bool)

(assert (=> start!134672 m!1445235))

(declare-fun m!1445237 () Bool)

(assert (=> start!134672 m!1445237))

(declare-fun m!1445239 () Bool)

(assert (=> b!1571210 m!1445239))

(check-sat (not b!1571210) (not b!1571208) (not b!1571209) (not start!134672))
