; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92896 () Bool)

(assert start!92896)

(declare-fun b!1054527 () Bool)

(declare-fun e!599175 () Bool)

(declare-fun e!599176 () Bool)

(assert (=> b!1054527 (= e!599175 (not e!599176))))

(declare-fun res!703579 () Bool)

(assert (=> b!1054527 (=> res!703579 e!599176)))

(declare-fun lt!465445 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054527 (= res!703579 (bvsle lt!465445 i!1381))))

(declare-fun e!599171 () Bool)

(assert (=> b!1054527 e!599171))

(declare-fun res!703582 () Bool)

(assert (=> b!1054527 (=> (not res!703582) (not e!599171))))

(declare-datatypes ((array!66504 0))(
  ( (array!66505 (arr!31980 (Array (_ BitVec 32) (_ BitVec 64))) (size!32517 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66504)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1054527 (= res!703582 (= (select (store (arr!31980 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465445) k!2747))))

(declare-fun b!1054528 () Bool)

(declare-fun e!599172 () Bool)

(assert (=> b!1054528 (= e!599171 e!599172)))

(declare-fun res!703580 () Bool)

(assert (=> b!1054528 (=> res!703580 e!599172)))

(assert (=> b!1054528 (= res!703580 (bvsle lt!465445 i!1381))))

(declare-fun b!1054529 () Bool)

(declare-fun res!703584 () Bool)

(declare-fun e!599177 () Bool)

(assert (=> b!1054529 (=> (not res!703584) (not e!599177))))

(assert (=> b!1054529 (= res!703584 (= (select (arr!31980 a!3488) i!1381) k!2747))))

(declare-fun b!1054530 () Bool)

(declare-fun res!703583 () Bool)

(assert (=> b!1054530 (=> (not res!703583) (not e!599177))))

(declare-datatypes ((List!22423 0))(
  ( (Nil!22420) (Cons!22419 (h!23628 (_ BitVec 64)) (t!31737 List!22423)) )
))
(declare-fun arrayNoDuplicates!0 (array!66504 (_ BitVec 32) List!22423) Bool)

(assert (=> b!1054530 (= res!703583 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22420))))

(declare-fun b!1054531 () Bool)

(assert (=> b!1054531 (= e!599176 true)))

(declare-fun arrayContainsKey!0 (array!66504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054531 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34527 0))(
  ( (Unit!34528) )
))
(declare-fun lt!465444 () Unit!34527)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66504 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34527)

(assert (=> b!1054531 (= lt!465444 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465445 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1054531 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22420)))

(declare-fun lt!465442 () Unit!34527)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66504 (_ BitVec 32) (_ BitVec 32)) Unit!34527)

(assert (=> b!1054531 (= lt!465442 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054532 () Bool)

(declare-fun e!599173 () Bool)

(assert (=> b!1054532 (= e!599177 e!599173)))

(declare-fun res!703576 () Bool)

(assert (=> b!1054532 (=> (not res!703576) (not e!599173))))

(declare-fun lt!465443 () array!66504)

(assert (=> b!1054532 (= res!703576 (arrayContainsKey!0 lt!465443 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054532 (= lt!465443 (array!66505 (store (arr!31980 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32517 a!3488)))))

(declare-fun b!1054534 () Bool)

(declare-fun res!703577 () Bool)

(assert (=> b!1054534 (=> (not res!703577) (not e!599177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054534 (= res!703577 (validKeyInArray!0 k!2747))))

(declare-fun b!1054535 () Bool)

(assert (=> b!1054535 (= e!599172 (arrayContainsKey!0 a!3488 k!2747 lt!465445))))

(declare-fun b!1054533 () Bool)

(assert (=> b!1054533 (= e!599173 e!599175)))

(declare-fun res!703581 () Bool)

(assert (=> b!1054533 (=> (not res!703581) (not e!599175))))

(assert (=> b!1054533 (= res!703581 (not (= lt!465445 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66504 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054533 (= lt!465445 (arrayScanForKey!0 lt!465443 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!703578 () Bool)

(assert (=> start!92896 (=> (not res!703578) (not e!599177))))

(assert (=> start!92896 (= res!703578 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32517 a!3488)) (bvslt (size!32517 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92896 e!599177))

(assert (=> start!92896 true))

(declare-fun array_inv!24602 (array!66504) Bool)

(assert (=> start!92896 (array_inv!24602 a!3488)))

(assert (= (and start!92896 res!703578) b!1054530))

(assert (= (and b!1054530 res!703583) b!1054534))

(assert (= (and b!1054534 res!703577) b!1054529))

(assert (= (and b!1054529 res!703584) b!1054532))

(assert (= (and b!1054532 res!703576) b!1054533))

(assert (= (and b!1054533 res!703581) b!1054527))

(assert (= (and b!1054527 res!703582) b!1054528))

(assert (= (and b!1054528 (not res!703580)) b!1054535))

(assert (= (and b!1054527 (not res!703579)) b!1054531))

(declare-fun m!974719 () Bool)

(assert (=> b!1054531 m!974719))

(declare-fun m!974721 () Bool)

(assert (=> b!1054531 m!974721))

(declare-fun m!974723 () Bool)

(assert (=> b!1054531 m!974723))

(declare-fun m!974725 () Bool)

(assert (=> b!1054531 m!974725))

(declare-fun m!974727 () Bool)

(assert (=> start!92896 m!974727))

(declare-fun m!974729 () Bool)

(assert (=> b!1054532 m!974729))

(declare-fun m!974731 () Bool)

(assert (=> b!1054532 m!974731))

(declare-fun m!974733 () Bool)

(assert (=> b!1054534 m!974733))

(declare-fun m!974735 () Bool)

(assert (=> b!1054535 m!974735))

(assert (=> b!1054527 m!974731))

(declare-fun m!974737 () Bool)

(assert (=> b!1054527 m!974737))

(declare-fun m!974739 () Bool)

(assert (=> b!1054529 m!974739))

(declare-fun m!974741 () Bool)

(assert (=> b!1054530 m!974741))

(declare-fun m!974743 () Bool)

(assert (=> b!1054533 m!974743))

(push 1)

