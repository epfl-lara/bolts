; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92438 () Bool)

(assert start!92438)

(declare-fun res!699782 () Bool)

(declare-fun e!596225 () Bool)

(assert (=> start!92438 (=> (not res!699782) (not e!596225))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66187 0))(
  ( (array!66188 (arr!31829 (Array (_ BitVec 32) (_ BitVec 64))) (size!32366 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66187)

(assert (=> start!92438 (= res!699782 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32366 a!3488)) (bvslt (size!32366 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92438 e!596225))

(assert (=> start!92438 true))

(declare-fun array_inv!24451 (array!66187) Bool)

(assert (=> start!92438 (array_inv!24451 a!3488)))

(declare-fun b!1050543 () Bool)

(declare-fun res!699781 () Bool)

(assert (=> b!1050543 (=> (not res!699781) (not e!596225))))

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1050543 (= res!699781 (= (select (arr!31829 a!3488) i!1381) k0!2747))))

(declare-fun b!1050544 () Bool)

(declare-fun e!596223 () Bool)

(declare-fun e!596222 () Bool)

(assert (=> b!1050544 (= e!596223 e!596222)))

(declare-fun res!699778 () Bool)

(assert (=> b!1050544 (=> (not res!699778) (not e!596222))))

(declare-fun lt!463999 () (_ BitVec 32))

(assert (=> b!1050544 (= res!699778 (not (= lt!463999 i!1381)))))

(declare-fun lt!463998 () array!66187)

(declare-fun arrayScanForKey!0 (array!66187 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050544 (= lt!463999 (arrayScanForKey!0 lt!463998 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050545 () Bool)

(declare-fun res!699783 () Bool)

(assert (=> b!1050545 (=> (not res!699783) (not e!596225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050545 (= res!699783 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050546 () Bool)

(assert (=> b!1050546 (= e!596225 e!596223)))

(declare-fun res!699779 () Bool)

(assert (=> b!1050546 (=> (not res!699779) (not e!596223))))

(declare-fun arrayContainsKey!0 (array!66187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050546 (= res!699779 (arrayContainsKey!0 lt!463998 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050546 (= lt!463998 (array!66188 (store (arr!31829 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32366 a!3488)))))

(declare-fun b!1050547 () Bool)

(assert (=> b!1050547 (= e!596222 (not true))))

(assert (=> b!1050547 (= (select (store (arr!31829 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463999) k0!2747)))

(declare-fun b!1050548 () Bool)

(declare-fun res!699780 () Bool)

(assert (=> b!1050548 (=> (not res!699780) (not e!596225))))

(declare-datatypes ((List!22272 0))(
  ( (Nil!22269) (Cons!22268 (h!23477 (_ BitVec 64)) (t!31586 List!22272)) )
))
(declare-fun arrayNoDuplicates!0 (array!66187 (_ BitVec 32) List!22272) Bool)

(assert (=> b!1050548 (= res!699780 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22269))))

(assert (= (and start!92438 res!699782) b!1050548))

(assert (= (and b!1050548 res!699780) b!1050545))

(assert (= (and b!1050545 res!699783) b!1050543))

(assert (= (and b!1050543 res!699781) b!1050546))

(assert (= (and b!1050546 res!699779) b!1050544))

(assert (= (and b!1050544 res!699778) b!1050547))

(declare-fun m!971365 () Bool)

(assert (=> start!92438 m!971365))

(declare-fun m!971367 () Bool)

(assert (=> b!1050548 m!971367))

(declare-fun m!971369 () Bool)

(assert (=> b!1050544 m!971369))

(declare-fun m!971371 () Bool)

(assert (=> b!1050545 m!971371))

(declare-fun m!971373 () Bool)

(assert (=> b!1050543 m!971373))

(declare-fun m!971375 () Bool)

(assert (=> b!1050546 m!971375))

(declare-fun m!971377 () Bool)

(assert (=> b!1050546 m!971377))

(assert (=> b!1050547 m!971377))

(declare-fun m!971379 () Bool)

(assert (=> b!1050547 m!971379))

(check-sat (not b!1050545) (not b!1050544) (not b!1050548) (not start!92438) (not b!1050546))
(check-sat)
