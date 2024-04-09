; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93260 () Bool)

(assert start!93260)

(declare-datatypes ((array!66646 0))(
  ( (array!66647 (arr!32042 (Array (_ BitVec 32) (_ BitVec 64))) (size!32579 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66646)

(declare-fun b!1056888 () Bool)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun e!600995 () Bool)

(declare-fun arrayContainsKey!0 (array!66646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056888 (= e!600995 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056889 () Bool)

(declare-fun e!600999 () Bool)

(assert (=> b!1056889 (= e!600999 e!600995)))

(declare-fun res!705698 () Bool)

(assert (=> b!1056889 (=> res!705698 e!600995)))

(declare-fun lt!466220 () (_ BitVec 32))

(assert (=> b!1056889 (= res!705698 (or (bvsgt lt!466220 i!1381) (bvsle i!1381 lt!466220)))))

(declare-fun b!1056890 () Bool)

(declare-fun res!705701 () Bool)

(declare-fun e!601000 () Bool)

(assert (=> b!1056890 (=> (not res!705701) (not e!601000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056890 (= res!705701 (validKeyInArray!0 k0!2747))))

(declare-fun b!1056891 () Bool)

(declare-fun res!705703 () Bool)

(assert (=> b!1056891 (=> (not res!705703) (not e!601000))))

(assert (=> b!1056891 (= res!705703 (= (select (arr!32042 a!3488) i!1381) k0!2747))))

(declare-fun b!1056892 () Bool)

(declare-fun e!600997 () Bool)

(declare-fun e!600998 () Bool)

(assert (=> b!1056892 (= e!600997 e!600998)))

(declare-fun res!705697 () Bool)

(assert (=> b!1056892 (=> (not res!705697) (not e!600998))))

(assert (=> b!1056892 (= res!705697 (not (= lt!466220 i!1381)))))

(declare-fun lt!466222 () array!66646)

(declare-fun arrayScanForKey!0 (array!66646 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056892 (= lt!466220 (arrayScanForKey!0 lt!466222 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056893 () Bool)

(declare-fun res!705700 () Bool)

(assert (=> b!1056893 (=> (not res!705700) (not e!601000))))

(declare-datatypes ((List!22485 0))(
  ( (Nil!22482) (Cons!22481 (h!23690 (_ BitVec 64)) (t!31799 List!22485)) )
))
(declare-fun arrayNoDuplicates!0 (array!66646 (_ BitVec 32) List!22485) Bool)

(assert (=> b!1056893 (= res!705700 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22482))))

(declare-fun b!1056894 () Bool)

(declare-fun e!600996 () Bool)

(assert (=> b!1056894 (= e!600998 (not e!600996))))

(declare-fun res!705702 () Bool)

(assert (=> b!1056894 (=> res!705702 e!600996)))

(assert (=> b!1056894 (= res!705702 (or (bvsgt lt!466220 i!1381) (bvsle i!1381 lt!466220)))))

(assert (=> b!1056894 e!600999))

(declare-fun res!705699 () Bool)

(assert (=> b!1056894 (=> (not res!705699) (not e!600999))))

(assert (=> b!1056894 (= res!705699 (= (select (store (arr!32042 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466220) k0!2747))))

(declare-fun b!1056896 () Bool)

(assert (=> b!1056896 (= e!601000 e!600997)))

(declare-fun res!705704 () Bool)

(assert (=> b!1056896 (=> (not res!705704) (not e!600997))))

(assert (=> b!1056896 (= res!705704 (arrayContainsKey!0 lt!466222 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056896 (= lt!466222 (array!66647 (store (arr!32042 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32579 a!3488)))))

(declare-fun b!1056895 () Bool)

(assert (=> b!1056895 (= e!600996 true)))

(assert (=> b!1056895 (arrayNoDuplicates!0 a!3488 lt!466220 Nil!22482)))

(declare-datatypes ((Unit!34615 0))(
  ( (Unit!34616) )
))
(declare-fun lt!466221 () Unit!34615)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66646 (_ BitVec 32) (_ BitVec 32)) Unit!34615)

(assert (=> b!1056895 (= lt!466221 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466220))))

(declare-fun res!705705 () Bool)

(assert (=> start!93260 (=> (not res!705705) (not e!601000))))

(assert (=> start!93260 (= res!705705 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32579 a!3488)) (bvslt (size!32579 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93260 e!601000))

(assert (=> start!93260 true))

(declare-fun array_inv!24664 (array!66646) Bool)

(assert (=> start!93260 (array_inv!24664 a!3488)))

(assert (= (and start!93260 res!705705) b!1056893))

(assert (= (and b!1056893 res!705700) b!1056890))

(assert (= (and b!1056890 res!705701) b!1056891))

(assert (= (and b!1056891 res!705703) b!1056896))

(assert (= (and b!1056896 res!705704) b!1056892))

(assert (= (and b!1056892 res!705697) b!1056894))

(assert (= (and b!1056894 res!705699) b!1056889))

(assert (= (and b!1056889 (not res!705698)) b!1056888))

(assert (= (and b!1056894 (not res!705702)) b!1056895))

(declare-fun m!976777 () Bool)

(assert (=> b!1056895 m!976777))

(declare-fun m!976779 () Bool)

(assert (=> b!1056895 m!976779))

(declare-fun m!976781 () Bool)

(assert (=> b!1056893 m!976781))

(declare-fun m!976783 () Bool)

(assert (=> b!1056896 m!976783))

(declare-fun m!976785 () Bool)

(assert (=> b!1056896 m!976785))

(declare-fun m!976787 () Bool)

(assert (=> b!1056890 m!976787))

(declare-fun m!976789 () Bool)

(assert (=> start!93260 m!976789))

(declare-fun m!976791 () Bool)

(assert (=> b!1056891 m!976791))

(declare-fun m!976793 () Bool)

(assert (=> b!1056888 m!976793))

(assert (=> b!1056894 m!976785))

(declare-fun m!976795 () Bool)

(assert (=> b!1056894 m!976795))

(declare-fun m!976797 () Bool)

(assert (=> b!1056892 m!976797))

(check-sat (not b!1056888) (not b!1056893) (not b!1056890) (not start!93260) (not b!1056895) (not b!1056892) (not b!1056896))
(check-sat)
