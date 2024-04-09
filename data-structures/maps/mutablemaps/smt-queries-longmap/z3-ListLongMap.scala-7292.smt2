; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93212 () Bool)

(assert start!93212)

(declare-fun b!1056624 () Bool)

(declare-fun res!705479 () Bool)

(declare-fun e!600794 () Bool)

(assert (=> b!1056624 (=> (not res!705479) (not e!600794))))

(declare-datatypes ((array!66631 0))(
  ( (array!66632 (arr!32036 (Array (_ BitVec 32) (_ BitVec 64))) (size!32573 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66631)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056624 (= res!705479 (= (select (arr!32036 a!3488) i!1381) k0!2747))))

(declare-fun b!1056625 () Bool)

(declare-fun e!600791 () Bool)

(declare-fun e!600792 () Bool)

(assert (=> b!1056625 (= e!600791 e!600792)))

(declare-fun res!705477 () Bool)

(assert (=> b!1056625 (=> (not res!705477) (not e!600792))))

(declare-fun lt!466150 () (_ BitVec 32))

(assert (=> b!1056625 (= res!705477 (not (= lt!466150 i!1381)))))

(declare-fun lt!466149 () array!66631)

(declare-fun arrayScanForKey!0 (array!66631 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056625 (= lt!466150 (arrayScanForKey!0 lt!466149 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056626 () Bool)

(declare-fun e!600793 () Bool)

(assert (=> b!1056626 (= e!600792 (not e!600793))))

(declare-fun res!705481 () Bool)

(assert (=> b!1056626 (=> res!705481 e!600793)))

(assert (=> b!1056626 (= res!705481 (or (bvsgt lt!466150 i!1381) (bvsle i!1381 lt!466150)))))

(declare-fun e!600789 () Bool)

(assert (=> b!1056626 e!600789))

(declare-fun res!705483 () Bool)

(assert (=> b!1056626 (=> (not res!705483) (not e!600789))))

(assert (=> b!1056626 (= res!705483 (= (select (store (arr!32036 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466150) k0!2747))))

(declare-fun res!705476 () Bool)

(assert (=> start!93212 (=> (not res!705476) (not e!600794))))

(assert (=> start!93212 (= res!705476 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32573 a!3488)) (bvslt (size!32573 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93212 e!600794))

(assert (=> start!93212 true))

(declare-fun array_inv!24658 (array!66631) Bool)

(assert (=> start!93212 (array_inv!24658 a!3488)))

(declare-fun b!1056627 () Bool)

(assert (=> b!1056627 (= e!600793 true)))

(declare-datatypes ((List!22479 0))(
  ( (Nil!22476) (Cons!22475 (h!23684 (_ BitVec 64)) (t!31793 List!22479)) )
))
(declare-fun arrayNoDuplicates!0 (array!66631 (_ BitVec 32) List!22479) Bool)

(assert (=> b!1056627 (arrayNoDuplicates!0 a!3488 lt!466150 Nil!22476)))

(declare-datatypes ((Unit!34603 0))(
  ( (Unit!34604) )
))
(declare-fun lt!466148 () Unit!34603)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66631 (_ BitVec 32) (_ BitVec 32)) Unit!34603)

(assert (=> b!1056627 (= lt!466148 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466150))))

(declare-fun b!1056628 () Bool)

(declare-fun e!600788 () Bool)

(declare-fun arrayContainsKey!0 (array!66631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056628 (= e!600788 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056629 () Bool)

(declare-fun res!705478 () Bool)

(assert (=> b!1056629 (=> (not res!705478) (not e!600794))))

(assert (=> b!1056629 (= res!705478 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22476))))

(declare-fun b!1056630 () Bool)

(assert (=> b!1056630 (= e!600789 e!600788)))

(declare-fun res!705475 () Bool)

(assert (=> b!1056630 (=> res!705475 e!600788)))

(assert (=> b!1056630 (= res!705475 (or (bvsgt lt!466150 i!1381) (bvsle i!1381 lt!466150)))))

(declare-fun b!1056631 () Bool)

(assert (=> b!1056631 (= e!600794 e!600791)))

(declare-fun res!705482 () Bool)

(assert (=> b!1056631 (=> (not res!705482) (not e!600791))))

(assert (=> b!1056631 (= res!705482 (arrayContainsKey!0 lt!466149 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056631 (= lt!466149 (array!66632 (store (arr!32036 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32573 a!3488)))))

(declare-fun b!1056632 () Bool)

(declare-fun res!705480 () Bool)

(assert (=> b!1056632 (=> (not res!705480) (not e!600794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056632 (= res!705480 (validKeyInArray!0 k0!2747))))

(assert (= (and start!93212 res!705476) b!1056629))

(assert (= (and b!1056629 res!705478) b!1056632))

(assert (= (and b!1056632 res!705480) b!1056624))

(assert (= (and b!1056624 res!705479) b!1056631))

(assert (= (and b!1056631 res!705482) b!1056625))

(assert (= (and b!1056625 res!705477) b!1056626))

(assert (= (and b!1056626 res!705483) b!1056630))

(assert (= (and b!1056630 (not res!705475)) b!1056628))

(assert (= (and b!1056626 (not res!705481)) b!1056627))

(declare-fun m!976561 () Bool)

(assert (=> b!1056632 m!976561))

(declare-fun m!976563 () Bool)

(assert (=> start!93212 m!976563))

(declare-fun m!976565 () Bool)

(assert (=> b!1056625 m!976565))

(declare-fun m!976567 () Bool)

(assert (=> b!1056629 m!976567))

(declare-fun m!976569 () Bool)

(assert (=> b!1056627 m!976569))

(declare-fun m!976571 () Bool)

(assert (=> b!1056627 m!976571))

(declare-fun m!976573 () Bool)

(assert (=> b!1056628 m!976573))

(declare-fun m!976575 () Bool)

(assert (=> b!1056626 m!976575))

(declare-fun m!976577 () Bool)

(assert (=> b!1056626 m!976577))

(declare-fun m!976579 () Bool)

(assert (=> b!1056631 m!976579))

(assert (=> b!1056631 m!976575))

(declare-fun m!976581 () Bool)

(assert (=> b!1056624 m!976581))

(check-sat (not start!93212) (not b!1056631) (not b!1056627) (not b!1056632) (not b!1056625) (not b!1056628) (not b!1056629))
(check-sat)
