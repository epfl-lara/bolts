; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92802 () Bool)

(assert start!92802)

(declare-fun b!1053667 () Bool)

(declare-fun res!702764 () Bool)

(declare-fun e!598507 () Bool)

(assert (=> b!1053667 (=> (not res!702764) (not e!598507))))

(declare-datatypes ((array!66443 0))(
  ( (array!66444 (arr!31951 (Array (_ BitVec 32) (_ BitVec 64))) (size!32488 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66443)

(declare-datatypes ((List!22394 0))(
  ( (Nil!22391) (Cons!22390 (h!23599 (_ BitVec 64)) (t!31708 List!22394)) )
))
(declare-fun arrayNoDuplicates!0 (array!66443 (_ BitVec 32) List!22394) Bool)

(assert (=> b!1053667 (= res!702764 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22391))))

(declare-fun res!702759 () Bool)

(assert (=> start!92802 (=> (not res!702759) (not e!598507))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92802 (= res!702759 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32488 a!3488)) (bvslt (size!32488 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92802 e!598507))

(assert (=> start!92802 true))

(declare-fun array_inv!24573 (array!66443) Bool)

(assert (=> start!92802 (array_inv!24573 a!3488)))

(declare-fun b!1053668 () Bool)

(declare-fun e!598510 () Bool)

(assert (=> b!1053668 (= e!598507 e!598510)))

(declare-fun res!702763 () Bool)

(assert (=> b!1053668 (=> (not res!702763) (not e!598510))))

(declare-fun lt!465181 () array!66443)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053668 (= res!702763 (arrayContainsKey!0 lt!465181 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053668 (= lt!465181 (array!66444 (store (arr!31951 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32488 a!3488)))))

(declare-fun b!1053669 () Bool)

(declare-fun res!702761 () Bool)

(assert (=> b!1053669 (=> (not res!702761) (not e!598507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053669 (= res!702761 (validKeyInArray!0 k!2747))))

(declare-fun b!1053670 () Bool)

(declare-fun e!598509 () Bool)

(declare-fun e!598506 () Bool)

(assert (=> b!1053670 (= e!598509 e!598506)))

(declare-fun res!702760 () Bool)

(assert (=> b!1053670 (=> res!702760 e!598506)))

(declare-fun lt!465180 () (_ BitVec 32))

(assert (=> b!1053670 (= res!702760 (bvsle lt!465180 i!1381))))

(declare-fun b!1053671 () Bool)

(declare-fun e!598508 () Bool)

(assert (=> b!1053671 (= e!598508 (not (or (bvsle lt!465180 i!1381) (bvsle #b00000000000000000000000000000000 (size!32488 a!3488)))))))

(assert (=> b!1053671 e!598509))

(declare-fun res!702758 () Bool)

(assert (=> b!1053671 (=> (not res!702758) (not e!598509))))

(assert (=> b!1053671 (= res!702758 (= (select (store (arr!31951 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465180) k!2747))))

(declare-fun b!1053672 () Bool)

(assert (=> b!1053672 (= e!598510 e!598508)))

(declare-fun res!702762 () Bool)

(assert (=> b!1053672 (=> (not res!702762) (not e!598508))))

(assert (=> b!1053672 (= res!702762 (not (= lt!465180 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66443 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053672 (= lt!465180 (arrayScanForKey!0 lt!465181 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053673 () Bool)

(declare-fun res!702765 () Bool)

(assert (=> b!1053673 (=> (not res!702765) (not e!598507))))

(assert (=> b!1053673 (= res!702765 (= (select (arr!31951 a!3488) i!1381) k!2747))))

(declare-fun b!1053674 () Bool)

(assert (=> b!1053674 (= e!598506 (arrayContainsKey!0 a!3488 k!2747 lt!465180))))

(assert (= (and start!92802 res!702759) b!1053667))

(assert (= (and b!1053667 res!702764) b!1053669))

(assert (= (and b!1053669 res!702761) b!1053673))

(assert (= (and b!1053673 res!702765) b!1053668))

(assert (= (and b!1053668 res!702763) b!1053672))

(assert (= (and b!1053672 res!702762) b!1053671))

(assert (= (and b!1053671 res!702758) b!1053670))

(assert (= (and b!1053670 (not res!702760)) b!1053674))

(declare-fun m!974025 () Bool)

(assert (=> b!1053674 m!974025))

(declare-fun m!974027 () Bool)

(assert (=> b!1053669 m!974027))

(declare-fun m!974029 () Bool)

(assert (=> b!1053667 m!974029))

(declare-fun m!974031 () Bool)

(assert (=> start!92802 m!974031))

(declare-fun m!974033 () Bool)

(assert (=> b!1053668 m!974033))

(declare-fun m!974035 () Bool)

(assert (=> b!1053668 m!974035))

(declare-fun m!974037 () Bool)

(assert (=> b!1053673 m!974037))

(assert (=> b!1053671 m!974035))

(declare-fun m!974039 () Bool)

(assert (=> b!1053671 m!974039))

(declare-fun m!974041 () Bool)

(assert (=> b!1053672 m!974041))

(push 1)

