; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93198 () Bool)

(assert start!93198)

(declare-fun b!1056442 () Bool)

(declare-fun res!705297 () Bool)

(declare-fun e!600653 () Bool)

(assert (=> b!1056442 (=> (not res!705297) (not e!600653))))

(declare-datatypes ((array!66617 0))(
  ( (array!66618 (arr!32029 (Array (_ BitVec 32) (_ BitVec 64))) (size!32566 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66617)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056442 (= res!705297 (= (select (arr!32029 a!3488) i!1381) k!2747))))

(declare-fun b!1056443 () Bool)

(declare-fun e!600652 () Bool)

(declare-fun e!600648 () Bool)

(assert (=> b!1056443 (= e!600652 e!600648)))

(declare-fun res!705296 () Bool)

(assert (=> b!1056443 (=> res!705296 e!600648)))

(declare-fun lt!466093 () (_ BitVec 32))

(assert (=> b!1056443 (= res!705296 (or (bvsgt lt!466093 i!1381) (bvsle i!1381 lt!466093)))))

(declare-fun b!1056444 () Bool)

(declare-fun arrayContainsKey!0 (array!66617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056444 (= e!600648 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056445 () Bool)

(declare-fun res!705298 () Bool)

(assert (=> b!1056445 (=> (not res!705298) (not e!600653))))

(declare-datatypes ((List!22472 0))(
  ( (Nil!22469) (Cons!22468 (h!23677 (_ BitVec 64)) (t!31786 List!22472)) )
))
(declare-fun arrayNoDuplicates!0 (array!66617 (_ BitVec 32) List!22472) Bool)

(assert (=> b!1056445 (= res!705298 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22469))))

(declare-fun b!1056447 () Bool)

(declare-fun e!600650 () Bool)

(assert (=> b!1056447 (= e!600650 (not true))))

(assert (=> b!1056447 e!600652))

(declare-fun res!705293 () Bool)

(assert (=> b!1056447 (=> (not res!705293) (not e!600652))))

(assert (=> b!1056447 (= res!705293 (= (select (store (arr!32029 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466093) k!2747))))

(declare-fun b!1056448 () Bool)

(declare-fun res!705300 () Bool)

(assert (=> b!1056448 (=> (not res!705300) (not e!600653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056448 (= res!705300 (validKeyInArray!0 k!2747))))

(declare-fun b!1056449 () Bool)

(declare-fun e!600649 () Bool)

(assert (=> b!1056449 (= e!600649 e!600650)))

(declare-fun res!705294 () Bool)

(assert (=> b!1056449 (=> (not res!705294) (not e!600650))))

(assert (=> b!1056449 (= res!705294 (not (= lt!466093 i!1381)))))

(declare-fun lt!466092 () array!66617)

(declare-fun arrayScanForKey!0 (array!66617 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056449 (= lt!466093 (arrayScanForKey!0 lt!466092 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!705295 () Bool)

(assert (=> start!93198 (=> (not res!705295) (not e!600653))))

(assert (=> start!93198 (= res!705295 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32566 a!3488)) (bvslt (size!32566 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93198 e!600653))

(assert (=> start!93198 true))

(declare-fun array_inv!24651 (array!66617) Bool)

(assert (=> start!93198 (array_inv!24651 a!3488)))

(declare-fun b!1056446 () Bool)

(assert (=> b!1056446 (= e!600653 e!600649)))

(declare-fun res!705299 () Bool)

(assert (=> b!1056446 (=> (not res!705299) (not e!600649))))

(assert (=> b!1056446 (= res!705299 (arrayContainsKey!0 lt!466092 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056446 (= lt!466092 (array!66618 (store (arr!32029 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32566 a!3488)))))

(assert (= (and start!93198 res!705295) b!1056445))

(assert (= (and b!1056445 res!705298) b!1056448))

(assert (= (and b!1056448 res!705300) b!1056442))

(assert (= (and b!1056442 res!705297) b!1056446))

(assert (= (and b!1056446 res!705299) b!1056449))

(assert (= (and b!1056449 res!705294) b!1056447))

(assert (= (and b!1056447 res!705293) b!1056443))

(assert (= (and b!1056443 (not res!705296)) b!1056444))

(declare-fun m!976419 () Bool)

(assert (=> b!1056444 m!976419))

(declare-fun m!976421 () Bool)

(assert (=> b!1056446 m!976421))

(declare-fun m!976423 () Bool)

(assert (=> b!1056446 m!976423))

(assert (=> b!1056447 m!976423))

(declare-fun m!976425 () Bool)

(assert (=> b!1056447 m!976425))

(declare-fun m!976427 () Bool)

(assert (=> b!1056448 m!976427))

(declare-fun m!976429 () Bool)

(assert (=> b!1056445 m!976429))

(declare-fun m!976431 () Bool)

(assert (=> start!93198 m!976431))

(declare-fun m!976433 () Bool)

(assert (=> b!1056442 m!976433))

(declare-fun m!976435 () Bool)

(assert (=> b!1056449 m!976435))

(push 1)

