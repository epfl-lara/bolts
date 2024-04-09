; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92504 () Bool)

(assert start!92504)

(declare-fun b!1051351 () Bool)

(declare-fun e!596835 () Bool)

(declare-fun e!596833 () Bool)

(assert (=> b!1051351 (= e!596835 e!596833)))

(declare-fun res!700589 () Bool)

(assert (=> b!1051351 (=> (not res!700589) (not e!596833))))

(declare-fun lt!464238 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051351 (= res!700589 (not (= lt!464238 i!1381)))))

(declare-datatypes ((array!66253 0))(
  ( (array!66254 (arr!31862 (Array (_ BitVec 32) (_ BitVec 64))) (size!32399 (_ BitVec 32))) )
))
(declare-fun lt!464237 () array!66253)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66253 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051351 (= lt!464238 (arrayScanForKey!0 lt!464237 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051352 () Bool)

(declare-fun res!700585 () Bool)

(declare-fun e!596836 () Bool)

(assert (=> b!1051352 (=> (not res!700585) (not e!596836))))

(declare-fun a!3488 () array!66253)

(assert (=> b!1051352 (= res!700585 (= (select (arr!31862 a!3488) i!1381) k0!2747))))

(declare-fun b!1051353 () Bool)

(declare-fun e!596834 () Bool)

(assert (=> b!1051353 (= e!596834 true)))

(declare-datatypes ((List!22305 0))(
  ( (Nil!22302) (Cons!22301 (h!23510 (_ BitVec 64)) (t!31619 List!22305)) )
))
(declare-fun arrayNoDuplicates!0 (array!66253 (_ BitVec 32) List!22305) Bool)

(assert (=> b!1051353 (arrayNoDuplicates!0 a!3488 lt!464238 Nil!22302)))

(declare-datatypes ((Unit!34405 0))(
  ( (Unit!34406) )
))
(declare-fun lt!464239 () Unit!34405)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66253 (_ BitVec 32) (_ BitVec 32)) Unit!34405)

(assert (=> b!1051353 (= lt!464239 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464238))))

(declare-fun e!596832 () Bool)

(declare-fun b!1051354 () Bool)

(declare-fun arrayContainsKey!0 (array!66253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051354 (= e!596832 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051355 () Bool)

(assert (=> b!1051355 (= e!596833 (not e!596834))))

(declare-fun res!700592 () Bool)

(assert (=> b!1051355 (=> res!700592 e!596834)))

(assert (=> b!1051355 (= res!700592 (or (bvsgt lt!464238 i!1381) (bvsle i!1381 lt!464238)))))

(declare-fun e!596831 () Bool)

(assert (=> b!1051355 e!596831))

(declare-fun res!700586 () Bool)

(assert (=> b!1051355 (=> (not res!700586) (not e!596831))))

(assert (=> b!1051355 (= res!700586 (= (select (store (arr!31862 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464238) k0!2747))))

(declare-fun b!1051356 () Bool)

(assert (=> b!1051356 (= e!596836 e!596835)))

(declare-fun res!700591 () Bool)

(assert (=> b!1051356 (=> (not res!700591) (not e!596835))))

(assert (=> b!1051356 (= res!700591 (arrayContainsKey!0 lt!464237 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051356 (= lt!464237 (array!66254 (store (arr!31862 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32399 a!3488)))))

(declare-fun res!700590 () Bool)

(assert (=> start!92504 (=> (not res!700590) (not e!596836))))

(assert (=> start!92504 (= res!700590 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32399 a!3488)) (bvslt (size!32399 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92504 e!596836))

(assert (=> start!92504 true))

(declare-fun array_inv!24484 (array!66253) Bool)

(assert (=> start!92504 (array_inv!24484 a!3488)))

(declare-fun b!1051350 () Bool)

(declare-fun res!700588 () Bool)

(assert (=> b!1051350 (=> (not res!700588) (not e!596836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051350 (= res!700588 (validKeyInArray!0 k0!2747))))

(declare-fun b!1051357 () Bool)

(declare-fun res!700587 () Bool)

(assert (=> b!1051357 (=> (not res!700587) (not e!596836))))

(assert (=> b!1051357 (= res!700587 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22302))))

(declare-fun b!1051358 () Bool)

(assert (=> b!1051358 (= e!596831 e!596832)))

(declare-fun res!700593 () Bool)

(assert (=> b!1051358 (=> res!700593 e!596832)))

(assert (=> b!1051358 (= res!700593 (or (bvsgt lt!464238 i!1381) (bvsle i!1381 lt!464238)))))

(assert (= (and start!92504 res!700590) b!1051357))

(assert (= (and b!1051357 res!700587) b!1051350))

(assert (= (and b!1051350 res!700588) b!1051352))

(assert (= (and b!1051352 res!700585) b!1051356))

(assert (= (and b!1051356 res!700591) b!1051351))

(assert (= (and b!1051351 res!700589) b!1051355))

(assert (= (and b!1051355 res!700586) b!1051358))

(assert (= (and b!1051358 (not res!700593)) b!1051354))

(assert (= (and b!1051355 (not res!700592)) b!1051353))

(declare-fun m!972001 () Bool)

(assert (=> b!1051353 m!972001))

(declare-fun m!972003 () Bool)

(assert (=> b!1051353 m!972003))

(declare-fun m!972005 () Bool)

(assert (=> b!1051354 m!972005))

(declare-fun m!972007 () Bool)

(assert (=> b!1051356 m!972007))

(declare-fun m!972009 () Bool)

(assert (=> b!1051356 m!972009))

(declare-fun m!972011 () Bool)

(assert (=> b!1051351 m!972011))

(assert (=> b!1051355 m!972009))

(declare-fun m!972013 () Bool)

(assert (=> b!1051355 m!972013))

(declare-fun m!972015 () Bool)

(assert (=> b!1051352 m!972015))

(declare-fun m!972017 () Bool)

(assert (=> start!92504 m!972017))

(declare-fun m!972019 () Bool)

(assert (=> b!1051357 m!972019))

(declare-fun m!972021 () Bool)

(assert (=> b!1051350 m!972021))

(check-sat (not b!1051350) (not b!1051351) (not b!1051353) (not b!1051354) (not b!1051357) (not b!1051356) (not start!92504))
(check-sat)
