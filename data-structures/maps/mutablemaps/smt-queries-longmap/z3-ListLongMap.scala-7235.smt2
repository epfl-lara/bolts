; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92510 () Bool)

(assert start!92510)

(declare-fun b!1051431 () Bool)

(declare-fun e!596894 () Bool)

(declare-fun e!596897 () Bool)

(assert (=> b!1051431 (= e!596894 e!596897)))

(declare-fun res!700669 () Bool)

(assert (=> b!1051431 (=> (not res!700669) (not e!596897))))

(declare-datatypes ((array!66259 0))(
  ( (array!66260 (arr!31865 (Array (_ BitVec 32) (_ BitVec 64))) (size!32402 (_ BitVec 32))) )
))
(declare-fun lt!464264 () array!66259)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051431 (= res!700669 (arrayContainsKey!0 lt!464264 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66259)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051431 (= lt!464264 (array!66260 (store (arr!31865 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32402 a!3488)))))

(declare-fun b!1051432 () Bool)

(declare-fun res!700674 () Bool)

(assert (=> b!1051432 (=> (not res!700674) (not e!596894))))

(assert (=> b!1051432 (= res!700674 (= (select (arr!31865 a!3488) i!1381) k0!2747))))

(declare-fun b!1051433 () Bool)

(declare-fun e!596896 () Bool)

(assert (=> b!1051433 (= e!596896 true)))

(declare-fun lt!464265 () (_ BitVec 32))

(declare-datatypes ((List!22308 0))(
  ( (Nil!22305) (Cons!22304 (h!23513 (_ BitVec 64)) (t!31622 List!22308)) )
))
(declare-fun arrayNoDuplicates!0 (array!66259 (_ BitVec 32) List!22308) Bool)

(assert (=> b!1051433 (arrayNoDuplicates!0 a!3488 lt!464265 Nil!22305)))

(declare-datatypes ((Unit!34411 0))(
  ( (Unit!34412) )
))
(declare-fun lt!464266 () Unit!34411)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66259 (_ BitVec 32) (_ BitVec 32)) Unit!34411)

(assert (=> b!1051433 (= lt!464266 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464265))))

(declare-fun b!1051434 () Bool)

(declare-fun res!700668 () Bool)

(assert (=> b!1051434 (=> (not res!700668) (not e!596894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051434 (= res!700668 (validKeyInArray!0 k0!2747))))

(declare-fun b!1051435 () Bool)

(declare-fun e!596895 () Bool)

(declare-fun e!596900 () Bool)

(assert (=> b!1051435 (= e!596895 e!596900)))

(declare-fun res!700673 () Bool)

(assert (=> b!1051435 (=> res!700673 e!596900)))

(assert (=> b!1051435 (= res!700673 (or (bvsgt lt!464265 i!1381) (bvsle i!1381 lt!464265)))))

(declare-fun b!1051436 () Bool)

(assert (=> b!1051436 (= e!596900 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051437 () Bool)

(declare-fun e!596899 () Bool)

(assert (=> b!1051437 (= e!596897 e!596899)))

(declare-fun res!700666 () Bool)

(assert (=> b!1051437 (=> (not res!700666) (not e!596899))))

(assert (=> b!1051437 (= res!700666 (not (= lt!464265 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66259 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051437 (= lt!464265 (arrayScanForKey!0 lt!464264 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051439 () Bool)

(assert (=> b!1051439 (= e!596899 (not e!596896))))

(declare-fun res!700670 () Bool)

(assert (=> b!1051439 (=> res!700670 e!596896)))

(assert (=> b!1051439 (= res!700670 (or (bvsgt lt!464265 i!1381) (bvsle i!1381 lt!464265)))))

(assert (=> b!1051439 e!596895))

(declare-fun res!700672 () Bool)

(assert (=> b!1051439 (=> (not res!700672) (not e!596895))))

(assert (=> b!1051439 (= res!700672 (= (select (store (arr!31865 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464265) k0!2747))))

(declare-fun b!1051438 () Bool)

(declare-fun res!700671 () Bool)

(assert (=> b!1051438 (=> (not res!700671) (not e!596894))))

(assert (=> b!1051438 (= res!700671 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22305))))

(declare-fun res!700667 () Bool)

(assert (=> start!92510 (=> (not res!700667) (not e!596894))))

(assert (=> start!92510 (= res!700667 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32402 a!3488)) (bvslt (size!32402 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92510 e!596894))

(assert (=> start!92510 true))

(declare-fun array_inv!24487 (array!66259) Bool)

(assert (=> start!92510 (array_inv!24487 a!3488)))

(assert (= (and start!92510 res!700667) b!1051438))

(assert (= (and b!1051438 res!700671) b!1051434))

(assert (= (and b!1051434 res!700668) b!1051432))

(assert (= (and b!1051432 res!700674) b!1051431))

(assert (= (and b!1051431 res!700669) b!1051437))

(assert (= (and b!1051437 res!700666) b!1051439))

(assert (= (and b!1051439 res!700672) b!1051435))

(assert (= (and b!1051435 (not res!700673)) b!1051436))

(assert (= (and b!1051439 (not res!700670)) b!1051433))

(declare-fun m!972067 () Bool)

(assert (=> start!92510 m!972067))

(declare-fun m!972069 () Bool)

(assert (=> b!1051434 m!972069))

(declare-fun m!972071 () Bool)

(assert (=> b!1051431 m!972071))

(declare-fun m!972073 () Bool)

(assert (=> b!1051431 m!972073))

(declare-fun m!972075 () Bool)

(assert (=> b!1051437 m!972075))

(declare-fun m!972077 () Bool)

(assert (=> b!1051432 m!972077))

(assert (=> b!1051439 m!972073))

(declare-fun m!972079 () Bool)

(assert (=> b!1051439 m!972079))

(declare-fun m!972081 () Bool)

(assert (=> b!1051436 m!972081))

(declare-fun m!972083 () Bool)

(assert (=> b!1051438 m!972083))

(declare-fun m!972085 () Bool)

(assert (=> b!1051433 m!972085))

(declare-fun m!972087 () Bool)

(assert (=> b!1051433 m!972087))

(check-sat (not b!1051438) (not b!1051434) (not b!1051433) (not start!92510) (not b!1051431) (not b!1051437) (not b!1051436))
(check-sat)
