; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93278 () Bool)

(assert start!93278)

(declare-fun b!1057131 () Bool)

(declare-fun e!601185 () Bool)

(declare-fun e!601187 () Bool)

(assert (=> b!1057131 (= e!601185 e!601187)))

(declare-fun res!705942 () Bool)

(assert (=> b!1057131 (=> (not res!705942) (not e!601187))))

(declare-datatypes ((array!66664 0))(
  ( (array!66665 (arr!32051 (Array (_ BitVec 32) (_ BitVec 64))) (size!32588 (_ BitVec 32))) )
))
(declare-fun lt!466312 () array!66664)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057131 (= res!705942 (arrayContainsKey!0 lt!466312 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66664)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057131 (= lt!466312 (array!66665 (store (arr!32051 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32588 a!3488)))))

(declare-fun b!1057133 () Bool)

(declare-fun e!601188 () Bool)

(assert (=> b!1057133 (= e!601188 true)))

(declare-fun lt!466315 () (_ BitVec 32))

(assert (=> b!1057133 (arrayContainsKey!0 a!3488 k0!2747 lt!466315)))

(declare-datatypes ((Unit!34633 0))(
  ( (Unit!34634) )
))
(declare-fun lt!466314 () Unit!34633)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66664 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34633)

(assert (=> b!1057133 (= lt!466314 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466315))))

(declare-fun lt!466311 () (_ BitVec 32))

(assert (=> b!1057133 (= lt!466315 (bvadd #b00000000000000000000000000000001 lt!466311))))

(declare-datatypes ((List!22494 0))(
  ( (Nil!22491) (Cons!22490 (h!23699 (_ BitVec 64)) (t!31808 List!22494)) )
))
(declare-fun arrayNoDuplicates!0 (array!66664 (_ BitVec 32) List!22494) Bool)

(assert (=> b!1057133 (arrayNoDuplicates!0 a!3488 lt!466311 Nil!22491)))

(declare-fun lt!466313 () Unit!34633)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66664 (_ BitVec 32) (_ BitVec 32)) Unit!34633)

(assert (=> b!1057133 (= lt!466313 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466311))))

(declare-fun b!1057134 () Bool)

(declare-fun res!705940 () Bool)

(assert (=> b!1057134 (=> (not res!705940) (not e!601185))))

(assert (=> b!1057134 (= res!705940 (= (select (arr!32051 a!3488) i!1381) k0!2747))))

(declare-fun b!1057135 () Bool)

(declare-fun e!601184 () Bool)

(declare-fun e!601190 () Bool)

(assert (=> b!1057135 (= e!601184 e!601190)))

(declare-fun res!705945 () Bool)

(assert (=> b!1057135 (=> res!705945 e!601190)))

(assert (=> b!1057135 (= res!705945 (or (bvsgt lt!466311 i!1381) (bvsle i!1381 lt!466311)))))

(declare-fun b!1057136 () Bool)

(declare-fun res!705948 () Bool)

(assert (=> b!1057136 (=> (not res!705948) (not e!601185))))

(assert (=> b!1057136 (= res!705948 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22491))))

(declare-fun b!1057137 () Bool)

(assert (=> b!1057137 (= e!601190 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1057138 () Bool)

(declare-fun e!601189 () Bool)

(assert (=> b!1057138 (= e!601189 (not e!601188))))

(declare-fun res!705943 () Bool)

(assert (=> b!1057138 (=> res!705943 e!601188)))

(assert (=> b!1057138 (= res!705943 (or (bvsgt lt!466311 i!1381) (bvsle i!1381 lt!466311)))))

(assert (=> b!1057138 e!601184))

(declare-fun res!705946 () Bool)

(assert (=> b!1057138 (=> (not res!705946) (not e!601184))))

(assert (=> b!1057138 (= res!705946 (= (select (store (arr!32051 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466311) k0!2747))))

(declare-fun b!1057139 () Bool)

(declare-fun res!705944 () Bool)

(assert (=> b!1057139 (=> (not res!705944) (not e!601185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057139 (= res!705944 (validKeyInArray!0 k0!2747))))

(declare-fun res!705947 () Bool)

(assert (=> start!93278 (=> (not res!705947) (not e!601185))))

(assert (=> start!93278 (= res!705947 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32588 a!3488)) (bvslt (size!32588 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93278 e!601185))

(assert (=> start!93278 true))

(declare-fun array_inv!24673 (array!66664) Bool)

(assert (=> start!93278 (array_inv!24673 a!3488)))

(declare-fun b!1057132 () Bool)

(assert (=> b!1057132 (= e!601187 e!601189)))

(declare-fun res!705941 () Bool)

(assert (=> b!1057132 (=> (not res!705941) (not e!601189))))

(assert (=> b!1057132 (= res!705941 (not (= lt!466311 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66664 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057132 (= lt!466311 (arrayScanForKey!0 lt!466312 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93278 res!705947) b!1057136))

(assert (= (and b!1057136 res!705948) b!1057139))

(assert (= (and b!1057139 res!705944) b!1057134))

(assert (= (and b!1057134 res!705940) b!1057131))

(assert (= (and b!1057131 res!705942) b!1057132))

(assert (= (and b!1057132 res!705941) b!1057138))

(assert (= (and b!1057138 res!705946) b!1057135))

(assert (= (and b!1057135 (not res!705945)) b!1057137))

(assert (= (and b!1057138 (not res!705943)) b!1057133))

(declare-fun m!976979 () Bool)

(assert (=> b!1057132 m!976979))

(declare-fun m!976981 () Bool)

(assert (=> b!1057133 m!976981))

(declare-fun m!976983 () Bool)

(assert (=> b!1057133 m!976983))

(declare-fun m!976985 () Bool)

(assert (=> b!1057133 m!976985))

(declare-fun m!976987 () Bool)

(assert (=> b!1057133 m!976987))

(declare-fun m!976989 () Bool)

(assert (=> start!93278 m!976989))

(declare-fun m!976991 () Bool)

(assert (=> b!1057138 m!976991))

(declare-fun m!976993 () Bool)

(assert (=> b!1057138 m!976993))

(declare-fun m!976995 () Bool)

(assert (=> b!1057136 m!976995))

(declare-fun m!976997 () Bool)

(assert (=> b!1057134 m!976997))

(declare-fun m!976999 () Bool)

(assert (=> b!1057131 m!976999))

(assert (=> b!1057131 m!976991))

(declare-fun m!977001 () Bool)

(assert (=> b!1057137 m!977001))

(declare-fun m!977003 () Bool)

(assert (=> b!1057139 m!977003))

(check-sat (not b!1057136) (not b!1057132) (not start!93278) (not b!1057131) (not b!1057133) (not b!1057139) (not b!1057137))
(check-sat)
