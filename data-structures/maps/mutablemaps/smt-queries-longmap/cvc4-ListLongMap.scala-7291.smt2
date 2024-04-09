; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93208 () Bool)

(assert start!93208)

(declare-fun b!1056570 () Bool)

(declare-fun e!600746 () Bool)

(declare-fun e!600750 () Bool)

(assert (=> b!1056570 (= e!600746 (not e!600750))))

(declare-fun res!705426 () Bool)

(assert (=> b!1056570 (=> res!705426 e!600750)))

(declare-fun lt!466132 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056570 (= res!705426 (or (bvsgt lt!466132 i!1381) (bvsle i!1381 lt!466132)))))

(declare-fun e!600748 () Bool)

(assert (=> b!1056570 e!600748))

(declare-fun res!705422 () Bool)

(assert (=> b!1056570 (=> (not res!705422) (not e!600748))))

(declare-datatypes ((array!66627 0))(
  ( (array!66628 (arr!32034 (Array (_ BitVec 32) (_ BitVec 64))) (size!32571 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66627)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1056570 (= res!705422 (= (select (store (arr!32034 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466132) k!2747))))

(declare-fun b!1056571 () Bool)

(assert (=> b!1056571 (= e!600750 true)))

(declare-datatypes ((List!22477 0))(
  ( (Nil!22474) (Cons!22473 (h!23682 (_ BitVec 64)) (t!31791 List!22477)) )
))
(declare-fun arrayNoDuplicates!0 (array!66627 (_ BitVec 32) List!22477) Bool)

(assert (=> b!1056571 (arrayNoDuplicates!0 a!3488 lt!466132 Nil!22474)))

(declare-datatypes ((Unit!34599 0))(
  ( (Unit!34600) )
))
(declare-fun lt!466131 () Unit!34599)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66627 (_ BitVec 32) (_ BitVec 32)) Unit!34599)

(assert (=> b!1056571 (= lt!466131 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466132))))

(declare-fun b!1056572 () Bool)

(declare-fun e!600749 () Bool)

(assert (=> b!1056572 (= e!600749 e!600746)))

(declare-fun res!705429 () Bool)

(assert (=> b!1056572 (=> (not res!705429) (not e!600746))))

(assert (=> b!1056572 (= res!705429 (not (= lt!466132 i!1381)))))

(declare-fun lt!466130 () array!66627)

(declare-fun arrayScanForKey!0 (array!66627 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056572 (= lt!466132 (arrayScanForKey!0 lt!466130 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056573 () Bool)

(declare-fun res!705423 () Bool)

(declare-fun e!600751 () Bool)

(assert (=> b!1056573 (=> (not res!705423) (not e!600751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056573 (= res!705423 (validKeyInArray!0 k!2747))))

(declare-fun b!1056574 () Bool)

(declare-fun e!600752 () Bool)

(declare-fun arrayContainsKey!0 (array!66627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056574 (= e!600752 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056575 () Bool)

(declare-fun res!705427 () Bool)

(assert (=> b!1056575 (=> (not res!705427) (not e!600751))))

(assert (=> b!1056575 (= res!705427 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22474))))

(declare-fun res!705421 () Bool)

(assert (=> start!93208 (=> (not res!705421) (not e!600751))))

(assert (=> start!93208 (= res!705421 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32571 a!3488)) (bvslt (size!32571 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93208 e!600751))

(assert (=> start!93208 true))

(declare-fun array_inv!24656 (array!66627) Bool)

(assert (=> start!93208 (array_inv!24656 a!3488)))

(declare-fun b!1056576 () Bool)

(assert (=> b!1056576 (= e!600751 e!600749)))

(declare-fun res!705424 () Bool)

(assert (=> b!1056576 (=> (not res!705424) (not e!600749))))

(assert (=> b!1056576 (= res!705424 (arrayContainsKey!0 lt!466130 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056576 (= lt!466130 (array!66628 (store (arr!32034 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32571 a!3488)))))

(declare-fun b!1056577 () Bool)

(assert (=> b!1056577 (= e!600748 e!600752)))

(declare-fun res!705425 () Bool)

(assert (=> b!1056577 (=> res!705425 e!600752)))

(assert (=> b!1056577 (= res!705425 (or (bvsgt lt!466132 i!1381) (bvsle i!1381 lt!466132)))))

(declare-fun b!1056578 () Bool)

(declare-fun res!705428 () Bool)

(assert (=> b!1056578 (=> (not res!705428) (not e!600751))))

(assert (=> b!1056578 (= res!705428 (= (select (arr!32034 a!3488) i!1381) k!2747))))

(assert (= (and start!93208 res!705421) b!1056575))

(assert (= (and b!1056575 res!705427) b!1056573))

(assert (= (and b!1056573 res!705423) b!1056578))

(assert (= (and b!1056578 res!705428) b!1056576))

(assert (= (and b!1056576 res!705424) b!1056572))

(assert (= (and b!1056572 res!705429) b!1056570))

(assert (= (and b!1056570 res!705422) b!1056577))

(assert (= (and b!1056577 (not res!705425)) b!1056574))

(assert (= (and b!1056570 (not res!705426)) b!1056571))

(declare-fun m!976517 () Bool)

(assert (=> b!1056571 m!976517))

(declare-fun m!976519 () Bool)

(assert (=> b!1056571 m!976519))

(declare-fun m!976521 () Bool)

(assert (=> b!1056574 m!976521))

(declare-fun m!976523 () Bool)

(assert (=> b!1056576 m!976523))

(declare-fun m!976525 () Bool)

(assert (=> b!1056576 m!976525))

(declare-fun m!976527 () Bool)

(assert (=> start!93208 m!976527))

(declare-fun m!976529 () Bool)

(assert (=> b!1056575 m!976529))

(declare-fun m!976531 () Bool)

(assert (=> b!1056572 m!976531))

(declare-fun m!976533 () Bool)

(assert (=> b!1056578 m!976533))

(assert (=> b!1056570 m!976525))

(declare-fun m!976535 () Bool)

(assert (=> b!1056570 m!976535))

(declare-fun m!976537 () Bool)

(assert (=> b!1056573 m!976537))

(push 1)

(assert (not b!1056572))

