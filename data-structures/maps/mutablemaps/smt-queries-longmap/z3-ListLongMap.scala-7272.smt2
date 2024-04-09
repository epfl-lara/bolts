; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92888 () Bool)

(assert start!92888)

(declare-fun b!1054420 () Bool)

(declare-fun e!599089 () Bool)

(declare-fun e!599092 () Bool)

(assert (=> b!1054420 (= e!599089 (not e!599092))))

(declare-fun res!703474 () Bool)

(assert (=> b!1054420 (=> res!703474 e!599092)))

(declare-fun lt!465399 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054420 (= res!703474 (bvsle lt!465399 i!1381))))

(declare-fun e!599091 () Bool)

(assert (=> b!1054420 e!599091))

(declare-fun res!703469 () Bool)

(assert (=> b!1054420 (=> (not res!703469) (not e!599091))))

(declare-datatypes ((array!66496 0))(
  ( (array!66497 (arr!31976 (Array (_ BitVec 32) (_ BitVec 64))) (size!32513 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66496)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1054420 (= res!703469 (= (select (store (arr!31976 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465399) k0!2747))))

(declare-fun b!1054421 () Bool)

(declare-fun e!599087 () Bool)

(assert (=> b!1054421 (= e!599091 e!599087)))

(declare-fun res!703471 () Bool)

(assert (=> b!1054421 (=> res!703471 e!599087)))

(assert (=> b!1054421 (= res!703471 (bvsle lt!465399 i!1381))))

(declare-fun res!703475 () Bool)

(declare-fun e!599090 () Bool)

(assert (=> start!92888 (=> (not res!703475) (not e!599090))))

(assert (=> start!92888 (= res!703475 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32513 a!3488)) (bvslt (size!32513 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92888 e!599090))

(assert (=> start!92888 true))

(declare-fun array_inv!24598 (array!66496) Bool)

(assert (=> start!92888 (array_inv!24598 a!3488)))

(declare-fun b!1054419 () Bool)

(assert (=> b!1054419 (= e!599092 true)))

(declare-datatypes ((List!22419 0))(
  ( (Nil!22416) (Cons!22415 (h!23624 (_ BitVec 64)) (t!31733 List!22419)) )
))
(declare-fun arrayNoDuplicates!0 (array!66496 (_ BitVec 32) List!22419) Bool)

(assert (=> b!1054419 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22416)))

(declare-datatypes ((Unit!34519 0))(
  ( (Unit!34520) )
))
(declare-fun lt!465400 () Unit!34519)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66496 (_ BitVec 32) (_ BitVec 32)) Unit!34519)

(assert (=> b!1054419 (= lt!465400 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054422 () Bool)

(declare-fun res!703473 () Bool)

(assert (=> b!1054422 (=> (not res!703473) (not e!599090))))

(assert (=> b!1054422 (= res!703473 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22416))))

(declare-fun b!1054423 () Bool)

(declare-fun e!599088 () Bool)

(assert (=> b!1054423 (= e!599090 e!599088)))

(declare-fun res!703476 () Bool)

(assert (=> b!1054423 (=> (not res!703476) (not e!599088))))

(declare-fun lt!465398 () array!66496)

(declare-fun arrayContainsKey!0 (array!66496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054423 (= res!703476 (arrayContainsKey!0 lt!465398 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054423 (= lt!465398 (array!66497 (store (arr!31976 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32513 a!3488)))))

(declare-fun b!1054424 () Bool)

(declare-fun res!703468 () Bool)

(assert (=> b!1054424 (=> (not res!703468) (not e!599090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054424 (= res!703468 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054425 () Bool)

(assert (=> b!1054425 (= e!599087 (arrayContainsKey!0 a!3488 k0!2747 lt!465399))))

(declare-fun b!1054426 () Bool)

(assert (=> b!1054426 (= e!599088 e!599089)))

(declare-fun res!703470 () Bool)

(assert (=> b!1054426 (=> (not res!703470) (not e!599089))))

(assert (=> b!1054426 (= res!703470 (not (= lt!465399 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66496 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054426 (= lt!465399 (arrayScanForKey!0 lt!465398 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054427 () Bool)

(declare-fun res!703472 () Bool)

(assert (=> b!1054427 (=> (not res!703472) (not e!599090))))

(assert (=> b!1054427 (= res!703472 (= (select (arr!31976 a!3488) i!1381) k0!2747))))

(assert (= (and start!92888 res!703475) b!1054422))

(assert (= (and b!1054422 res!703473) b!1054424))

(assert (= (and b!1054424 res!703468) b!1054427))

(assert (= (and b!1054427 res!703472) b!1054423))

(assert (= (and b!1054423 res!703476) b!1054426))

(assert (= (and b!1054426 res!703470) b!1054420))

(assert (= (and b!1054420 res!703469) b!1054421))

(assert (= (and b!1054421 (not res!703471)) b!1054425))

(assert (= (and b!1054420 (not res!703474)) b!1054419))

(declare-fun m!974623 () Bool)

(assert (=> b!1054424 m!974623))

(declare-fun m!974625 () Bool)

(assert (=> b!1054425 m!974625))

(declare-fun m!974627 () Bool)

(assert (=> b!1054427 m!974627))

(declare-fun m!974629 () Bool)

(assert (=> b!1054422 m!974629))

(declare-fun m!974631 () Bool)

(assert (=> start!92888 m!974631))

(declare-fun m!974633 () Bool)

(assert (=> b!1054423 m!974633))

(declare-fun m!974635 () Bool)

(assert (=> b!1054423 m!974635))

(declare-fun m!974637 () Bool)

(assert (=> b!1054419 m!974637))

(declare-fun m!974639 () Bool)

(assert (=> b!1054419 m!974639))

(declare-fun m!974641 () Bool)

(assert (=> b!1054426 m!974641))

(assert (=> b!1054420 m!974635))

(declare-fun m!974643 () Bool)

(assert (=> b!1054420 m!974643))

(check-sat (not b!1054422) (not b!1054426) (not b!1054425) (not start!92888) (not b!1054424) (not b!1054423) (not b!1054419))
(check-sat)
