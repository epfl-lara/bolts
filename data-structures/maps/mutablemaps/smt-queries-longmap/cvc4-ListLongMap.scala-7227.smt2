; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92464 () Bool)

(assert start!92464)

(declare-fun b!1050829 () Bool)

(declare-fun e!596430 () Bool)

(declare-fun e!596433 () Bool)

(assert (=> b!1050829 (= e!596430 e!596433)))

(declare-fun res!700067 () Bool)

(assert (=> b!1050829 (=> res!700067 e!596433)))

(declare-fun lt!464077 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050829 (= res!700067 (or (bvsgt lt!464077 i!1381) (bvsle i!1381 lt!464077)))))

(declare-fun b!1050830 () Bool)

(declare-datatypes ((array!66213 0))(
  ( (array!66214 (arr!31842 (Array (_ BitVec 32) (_ BitVec 64))) (size!32379 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66213)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050830 (= e!596433 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1050831 () Bool)

(declare-fun res!700071 () Bool)

(declare-fun e!596431 () Bool)

(assert (=> b!1050831 (=> (not res!700071) (not e!596431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050831 (= res!700071 (validKeyInArray!0 k!2747))))

(declare-fun b!1050832 () Bool)

(declare-fun res!700068 () Bool)

(assert (=> b!1050832 (=> (not res!700068) (not e!596431))))

(declare-datatypes ((List!22285 0))(
  ( (Nil!22282) (Cons!22281 (h!23490 (_ BitVec 64)) (t!31599 List!22285)) )
))
(declare-fun arrayNoDuplicates!0 (array!66213 (_ BitVec 32) List!22285) Bool)

(assert (=> b!1050832 (= res!700068 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22282))))

(declare-fun b!1050833 () Bool)

(declare-fun res!700070 () Bool)

(assert (=> b!1050833 (=> (not res!700070) (not e!596431))))

(assert (=> b!1050833 (= res!700070 (= (select (arr!31842 a!3488) i!1381) k!2747))))

(declare-fun b!1050835 () Bool)

(declare-fun e!596432 () Bool)

(assert (=> b!1050835 (= e!596432 (not true))))

(assert (=> b!1050835 e!596430))

(declare-fun res!700069 () Bool)

(assert (=> b!1050835 (=> (not res!700069) (not e!596430))))

(assert (=> b!1050835 (= res!700069 (= (select (store (arr!31842 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464077) k!2747))))

(declare-fun b!1050836 () Bool)

(declare-fun e!596435 () Bool)

(assert (=> b!1050836 (= e!596431 e!596435)))

(declare-fun res!700064 () Bool)

(assert (=> b!1050836 (=> (not res!700064) (not e!596435))))

(declare-fun lt!464076 () array!66213)

(assert (=> b!1050836 (= res!700064 (arrayContainsKey!0 lt!464076 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050836 (= lt!464076 (array!66214 (store (arr!31842 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32379 a!3488)))))

(declare-fun b!1050834 () Bool)

(assert (=> b!1050834 (= e!596435 e!596432)))

(declare-fun res!700066 () Bool)

(assert (=> b!1050834 (=> (not res!700066) (not e!596432))))

(assert (=> b!1050834 (= res!700066 (not (= lt!464077 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66213 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050834 (= lt!464077 (arrayScanForKey!0 lt!464076 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!700065 () Bool)

(assert (=> start!92464 (=> (not res!700065) (not e!596431))))

(assert (=> start!92464 (= res!700065 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32379 a!3488)) (bvslt (size!32379 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92464 e!596431))

(assert (=> start!92464 true))

(declare-fun array_inv!24464 (array!66213) Bool)

(assert (=> start!92464 (array_inv!24464 a!3488)))

(assert (= (and start!92464 res!700065) b!1050832))

(assert (= (and b!1050832 res!700068) b!1050831))

(assert (= (and b!1050831 res!700071) b!1050833))

(assert (= (and b!1050833 res!700070) b!1050836))

(assert (= (and b!1050836 res!700064) b!1050834))

(assert (= (and b!1050834 res!700066) b!1050835))

(assert (= (and b!1050835 res!700069) b!1050829))

(assert (= (and b!1050829 (not res!700067)) b!1050830))

(declare-fun m!971589 () Bool)

(assert (=> b!1050831 m!971589))

(declare-fun m!971591 () Bool)

(assert (=> b!1050832 m!971591))

(declare-fun m!971593 () Bool)

(assert (=> b!1050833 m!971593))

(declare-fun m!971595 () Bool)

(assert (=> b!1050835 m!971595))

(declare-fun m!971597 () Bool)

(assert (=> b!1050835 m!971597))

(declare-fun m!971599 () Bool)

(assert (=> b!1050834 m!971599))

(declare-fun m!971601 () Bool)

(assert (=> start!92464 m!971601))

(declare-fun m!971603 () Bool)

(assert (=> b!1050830 m!971603))

(declare-fun m!971605 () Bool)

(assert (=> b!1050836 m!971605))

(assert (=> b!1050836 m!971595))

(push 1)

(assert (not b!1050831))

(assert (not b!1050836))

