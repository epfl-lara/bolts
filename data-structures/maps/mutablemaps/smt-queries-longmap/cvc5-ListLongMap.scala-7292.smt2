; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93210 () Bool)

(assert start!93210)

(declare-fun b!1056597 () Bool)

(declare-fun res!705448 () Bool)

(declare-fun e!600772 () Bool)

(assert (=> b!1056597 (=> (not res!705448) (not e!600772))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056597 (= res!705448 (validKeyInArray!0 k!2747))))

(declare-fun b!1056598 () Bool)

(declare-fun e!600773 () Bool)

(declare-fun e!600770 () Bool)

(assert (=> b!1056598 (= e!600773 (not e!600770))))

(declare-fun res!705454 () Bool)

(assert (=> b!1056598 (=> res!705454 e!600770)))

(declare-fun lt!466140 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056598 (= res!705454 (or (bvsgt lt!466140 i!1381) (bvsle i!1381 lt!466140)))))

(declare-fun e!600769 () Bool)

(assert (=> b!1056598 e!600769))

(declare-fun res!705452 () Bool)

(assert (=> b!1056598 (=> (not res!705452) (not e!600769))))

(declare-datatypes ((array!66629 0))(
  ( (array!66630 (arr!32035 (Array (_ BitVec 32) (_ BitVec 64))) (size!32572 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66629)

(assert (=> b!1056598 (= res!705452 (= (select (store (arr!32035 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466140) k!2747))))

(declare-fun b!1056599 () Bool)

(declare-fun e!600767 () Bool)

(assert (=> b!1056599 (= e!600772 e!600767)))

(declare-fun res!705450 () Bool)

(assert (=> b!1056599 (=> (not res!705450) (not e!600767))))

(declare-fun lt!466139 () array!66629)

(declare-fun arrayContainsKey!0 (array!66629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056599 (= res!705450 (arrayContainsKey!0 lt!466139 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056599 (= lt!466139 (array!66630 (store (arr!32035 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32572 a!3488)))))

(declare-fun b!1056600 () Bool)

(declare-fun res!705456 () Bool)

(assert (=> b!1056600 (=> (not res!705456) (not e!600772))))

(declare-datatypes ((List!22478 0))(
  ( (Nil!22475) (Cons!22474 (h!23683 (_ BitVec 64)) (t!31792 List!22478)) )
))
(declare-fun arrayNoDuplicates!0 (array!66629 (_ BitVec 32) List!22478) Bool)

(assert (=> b!1056600 (= res!705456 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22475))))

(declare-fun b!1056601 () Bool)

(assert (=> b!1056601 (= e!600767 e!600773)))

(declare-fun res!705449 () Bool)

(assert (=> b!1056601 (=> (not res!705449) (not e!600773))))

(assert (=> b!1056601 (= res!705449 (not (= lt!466140 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66629 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056601 (= lt!466140 (arrayScanForKey!0 lt!466139 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056602 () Bool)

(assert (=> b!1056602 (= e!600770 true)))

(assert (=> b!1056602 (arrayNoDuplicates!0 a!3488 lt!466140 Nil!22475)))

(declare-datatypes ((Unit!34601 0))(
  ( (Unit!34602) )
))
(declare-fun lt!466141 () Unit!34601)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66629 (_ BitVec 32) (_ BitVec 32)) Unit!34601)

(assert (=> b!1056602 (= lt!466141 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466140))))

(declare-fun res!705451 () Bool)

(assert (=> start!93210 (=> (not res!705451) (not e!600772))))

(assert (=> start!93210 (= res!705451 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32572 a!3488)) (bvslt (size!32572 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93210 e!600772))

(assert (=> start!93210 true))

(declare-fun array_inv!24657 (array!66629) Bool)

(assert (=> start!93210 (array_inv!24657 a!3488)))

(declare-fun b!1056603 () Bool)

(declare-fun e!600771 () Bool)

(assert (=> b!1056603 (= e!600769 e!600771)))

(declare-fun res!705453 () Bool)

(assert (=> b!1056603 (=> res!705453 e!600771)))

(assert (=> b!1056603 (= res!705453 (or (bvsgt lt!466140 i!1381) (bvsle i!1381 lt!466140)))))

(declare-fun b!1056604 () Bool)

(assert (=> b!1056604 (= e!600771 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056605 () Bool)

(declare-fun res!705455 () Bool)

(assert (=> b!1056605 (=> (not res!705455) (not e!600772))))

(assert (=> b!1056605 (= res!705455 (= (select (arr!32035 a!3488) i!1381) k!2747))))

(assert (= (and start!93210 res!705451) b!1056600))

(assert (= (and b!1056600 res!705456) b!1056597))

(assert (= (and b!1056597 res!705448) b!1056605))

(assert (= (and b!1056605 res!705455) b!1056599))

(assert (= (and b!1056599 res!705450) b!1056601))

(assert (= (and b!1056601 res!705449) b!1056598))

(assert (= (and b!1056598 res!705452) b!1056603))

(assert (= (and b!1056603 (not res!705453)) b!1056604))

(assert (= (and b!1056598 (not res!705454)) b!1056602))

(declare-fun m!976539 () Bool)

(assert (=> b!1056597 m!976539))

(declare-fun m!976541 () Bool)

(assert (=> b!1056600 m!976541))

(declare-fun m!976543 () Bool)

(assert (=> b!1056602 m!976543))

(declare-fun m!976545 () Bool)

(assert (=> b!1056602 m!976545))

(declare-fun m!976547 () Bool)

(assert (=> b!1056599 m!976547))

(declare-fun m!976549 () Bool)

(assert (=> b!1056599 m!976549))

(declare-fun m!976551 () Bool)

(assert (=> b!1056604 m!976551))

(declare-fun m!976553 () Bool)

(assert (=> b!1056601 m!976553))

(declare-fun m!976555 () Bool)

(assert (=> b!1056605 m!976555))

(declare-fun m!976557 () Bool)

(assert (=> start!93210 m!976557))

(assert (=> b!1056598 m!976549))

(declare-fun m!976559 () Bool)

(assert (=> b!1056598 m!976559))

(push 1)

