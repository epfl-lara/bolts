; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92794 () Bool)

(assert start!92794)

(declare-fun b!1053571 () Bool)

(declare-fun e!598436 () Bool)

(declare-fun e!598437 () Bool)

(assert (=> b!1053571 (= e!598436 e!598437)))

(declare-fun res!702668 () Bool)

(assert (=> b!1053571 (=> res!702668 e!598437)))

(declare-fun lt!465156 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053571 (= res!702668 (bvsle lt!465156 i!1381))))

(declare-fun b!1053572 () Bool)

(declare-fun res!702666 () Bool)

(declare-fun e!598435 () Bool)

(assert (=> b!1053572 (=> (not res!702666) (not e!598435))))

(declare-datatypes ((array!66435 0))(
  ( (array!66436 (arr!31947 (Array (_ BitVec 32) (_ BitVec 64))) (size!32484 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66435)

(declare-datatypes ((List!22390 0))(
  ( (Nil!22387) (Cons!22386 (h!23595 (_ BitVec 64)) (t!31704 List!22390)) )
))
(declare-fun arrayNoDuplicates!0 (array!66435 (_ BitVec 32) List!22390) Bool)

(assert (=> b!1053572 (= res!702666 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22387))))

(declare-fun b!1053573 () Bool)

(declare-fun e!598438 () Bool)

(assert (=> b!1053573 (= e!598435 e!598438)))

(declare-fun res!702667 () Bool)

(assert (=> b!1053573 (=> (not res!702667) (not e!598438))))

(declare-fun lt!465157 () array!66435)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053573 (= res!702667 (arrayContainsKey!0 lt!465157 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053573 (= lt!465157 (array!66436 (store (arr!31947 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32484 a!3488)))))

(declare-fun b!1053574 () Bool)

(declare-fun e!598434 () Bool)

(assert (=> b!1053574 (= e!598438 e!598434)))

(declare-fun res!702665 () Bool)

(assert (=> b!1053574 (=> (not res!702665) (not e!598434))))

(assert (=> b!1053574 (= res!702665 (not (= lt!465156 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66435 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053574 (= lt!465156 (arrayScanForKey!0 lt!465157 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053575 () Bool)

(declare-fun res!702663 () Bool)

(assert (=> b!1053575 (=> (not res!702663) (not e!598435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053575 (= res!702663 (validKeyInArray!0 k!2747))))

(declare-fun res!702662 () Bool)

(assert (=> start!92794 (=> (not res!702662) (not e!598435))))

(assert (=> start!92794 (= res!702662 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32484 a!3488)) (bvslt (size!32484 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92794 e!598435))

(assert (=> start!92794 true))

(declare-fun array_inv!24569 (array!66435) Bool)

(assert (=> start!92794 (array_inv!24569 a!3488)))

(declare-fun b!1053576 () Bool)

(assert (=> b!1053576 (= e!598437 (arrayContainsKey!0 a!3488 k!2747 lt!465156))))

(declare-fun b!1053577 () Bool)

(declare-fun res!702669 () Bool)

(assert (=> b!1053577 (=> (not res!702669) (not e!598435))))

(assert (=> b!1053577 (= res!702669 (= (select (arr!31947 a!3488) i!1381) k!2747))))

(declare-fun b!1053578 () Bool)

(assert (=> b!1053578 (= e!598434 (not true))))

(assert (=> b!1053578 e!598436))

(declare-fun res!702664 () Bool)

(assert (=> b!1053578 (=> (not res!702664) (not e!598436))))

(assert (=> b!1053578 (= res!702664 (= (select (store (arr!31947 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465156) k!2747))))

(assert (= (and start!92794 res!702662) b!1053572))

(assert (= (and b!1053572 res!702666) b!1053575))

(assert (= (and b!1053575 res!702663) b!1053577))

(assert (= (and b!1053577 res!702669) b!1053573))

(assert (= (and b!1053573 res!702667) b!1053574))

(assert (= (and b!1053574 res!702665) b!1053578))

(assert (= (and b!1053578 res!702664) b!1053571))

(assert (= (and b!1053571 (not res!702668)) b!1053576))

(declare-fun m!973953 () Bool)

(assert (=> b!1053575 m!973953))

(declare-fun m!973955 () Bool)

(assert (=> b!1053576 m!973955))

(declare-fun m!973957 () Bool)

(assert (=> b!1053578 m!973957))

(declare-fun m!973959 () Bool)

(assert (=> b!1053578 m!973959))

(declare-fun m!973961 () Bool)

(assert (=> b!1053572 m!973961))

(declare-fun m!973963 () Bool)

(assert (=> start!92794 m!973963))

(declare-fun m!973965 () Bool)

(assert (=> b!1053574 m!973965))

(declare-fun m!973967 () Bool)

(assert (=> b!1053573 m!973967))

(assert (=> b!1053573 m!973957))

(declare-fun m!973969 () Bool)

(assert (=> b!1053577 m!973969))

(push 1)

(assert (not b!1053574))

(assert (not b!1053575))

(assert (not b!1053572))

(assert (not b!1053576))

(assert (not b!1053573))

(assert (not start!92794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

