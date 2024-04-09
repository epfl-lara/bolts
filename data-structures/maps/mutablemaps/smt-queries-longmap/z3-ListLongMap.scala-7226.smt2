; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92456 () Bool)

(assert start!92456)

(declare-fun res!699975 () Bool)

(declare-fun e!596359 () Bool)

(assert (=> start!92456 (=> (not res!699975) (not e!596359))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66205 0))(
  ( (array!66206 (arr!31838 (Array (_ BitVec 32) (_ BitVec 64))) (size!32375 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66205)

(assert (=> start!92456 (= res!699975 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32375 a!3488)) (bvslt (size!32375 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92456 e!596359))

(assert (=> start!92456 true))

(declare-fun array_inv!24460 (array!66205) Bool)

(assert (=> start!92456 (array_inv!24460 a!3488)))

(declare-fun e!596358 () Bool)

(declare-fun b!1050733 () Bool)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050733 (= e!596358 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1050734 () Bool)

(declare-fun res!699970 () Bool)

(assert (=> b!1050734 (=> (not res!699970) (not e!596359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050734 (= res!699970 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050735 () Bool)

(declare-fun res!699973 () Bool)

(assert (=> b!1050735 (=> (not res!699973) (not e!596359))))

(assert (=> b!1050735 (= res!699973 (= (select (arr!31838 a!3488) i!1381) k0!2747))))

(declare-fun b!1050736 () Bool)

(declare-fun e!596363 () Bool)

(assert (=> b!1050736 (= e!596363 (not true))))

(declare-fun e!596360 () Bool)

(assert (=> b!1050736 e!596360))

(declare-fun res!699972 () Bool)

(assert (=> b!1050736 (=> (not res!699972) (not e!596360))))

(declare-fun lt!464053 () (_ BitVec 32))

(assert (=> b!1050736 (= res!699972 (= (select (store (arr!31838 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464053) k0!2747))))

(declare-fun b!1050737 () Bool)

(declare-fun res!699968 () Bool)

(assert (=> b!1050737 (=> (not res!699968) (not e!596359))))

(declare-datatypes ((List!22281 0))(
  ( (Nil!22278) (Cons!22277 (h!23486 (_ BitVec 64)) (t!31595 List!22281)) )
))
(declare-fun arrayNoDuplicates!0 (array!66205 (_ BitVec 32) List!22281) Bool)

(assert (=> b!1050737 (= res!699968 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22278))))

(declare-fun b!1050738 () Bool)

(declare-fun e!596362 () Bool)

(assert (=> b!1050738 (= e!596359 e!596362)))

(declare-fun res!699969 () Bool)

(assert (=> b!1050738 (=> (not res!699969) (not e!596362))))

(declare-fun lt!464052 () array!66205)

(assert (=> b!1050738 (= res!699969 (arrayContainsKey!0 lt!464052 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050738 (= lt!464052 (array!66206 (store (arr!31838 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32375 a!3488)))))

(declare-fun b!1050739 () Bool)

(assert (=> b!1050739 (= e!596360 e!596358)))

(declare-fun res!699971 () Bool)

(assert (=> b!1050739 (=> res!699971 e!596358)))

(assert (=> b!1050739 (= res!699971 (or (bvsgt lt!464053 i!1381) (bvsle i!1381 lt!464053)))))

(declare-fun b!1050740 () Bool)

(assert (=> b!1050740 (= e!596362 e!596363)))

(declare-fun res!699974 () Bool)

(assert (=> b!1050740 (=> (not res!699974) (not e!596363))))

(assert (=> b!1050740 (= res!699974 (not (= lt!464053 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66205 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050740 (= lt!464053 (arrayScanForKey!0 lt!464052 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92456 res!699975) b!1050737))

(assert (= (and b!1050737 res!699968) b!1050734))

(assert (= (and b!1050734 res!699970) b!1050735))

(assert (= (and b!1050735 res!699973) b!1050738))

(assert (= (and b!1050738 res!699969) b!1050740))

(assert (= (and b!1050740 res!699974) b!1050736))

(assert (= (and b!1050736 res!699972) b!1050739))

(assert (= (and b!1050739 (not res!699971)) b!1050733))

(declare-fun m!971517 () Bool)

(assert (=> b!1050736 m!971517))

(declare-fun m!971519 () Bool)

(assert (=> b!1050736 m!971519))

(declare-fun m!971521 () Bool)

(assert (=> b!1050735 m!971521))

(declare-fun m!971523 () Bool)

(assert (=> b!1050733 m!971523))

(declare-fun m!971525 () Bool)

(assert (=> b!1050738 m!971525))

(assert (=> b!1050738 m!971517))

(declare-fun m!971527 () Bool)

(assert (=> b!1050740 m!971527))

(declare-fun m!971529 () Bool)

(assert (=> b!1050734 m!971529))

(declare-fun m!971531 () Bool)

(assert (=> start!92456 m!971531))

(declare-fun m!971533 () Bool)

(assert (=> b!1050737 m!971533))

(check-sat (not b!1050740) (not b!1050738) (not start!92456) (not b!1050734) (not b!1050733) (not b!1050737))
(check-sat)
