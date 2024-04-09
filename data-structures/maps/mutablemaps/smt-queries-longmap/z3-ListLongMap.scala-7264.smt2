; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92804 () Bool)

(assert start!92804)

(declare-fun res!702785 () Bool)

(declare-fun e!598524 () Bool)

(assert (=> start!92804 (=> (not res!702785) (not e!598524))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66445 0))(
  ( (array!66446 (arr!31952 (Array (_ BitVec 32) (_ BitVec 64))) (size!32489 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66445)

(assert (=> start!92804 (= res!702785 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32489 a!3488)) (bvslt (size!32489 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92804 e!598524))

(assert (=> start!92804 true))

(declare-fun array_inv!24574 (array!66445) Bool)

(assert (=> start!92804 (array_inv!24574 a!3488)))

(declare-fun b!1053691 () Bool)

(declare-fun e!598526 () Bool)

(assert (=> b!1053691 (= e!598524 e!598526)))

(declare-fun res!702787 () Bool)

(assert (=> b!1053691 (=> (not res!702787) (not e!598526))))

(declare-fun lt!465187 () array!66445)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053691 (= res!702787 (arrayContainsKey!0 lt!465187 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053691 (= lt!465187 (array!66446 (store (arr!31952 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32489 a!3488)))))

(declare-fun b!1053692 () Bool)

(declare-fun e!598528 () Bool)

(assert (=> b!1053692 (= e!598526 e!598528)))

(declare-fun res!702786 () Bool)

(assert (=> b!1053692 (=> (not res!702786) (not e!598528))))

(declare-fun lt!465186 () (_ BitVec 32))

(assert (=> b!1053692 (= res!702786 (not (= lt!465186 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66445 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053692 (= lt!465186 (arrayScanForKey!0 lt!465187 k0!2747 #b00000000000000000000000000000000))))

(declare-fun e!598525 () Bool)

(declare-fun b!1053693 () Bool)

(assert (=> b!1053693 (= e!598525 (arrayContainsKey!0 a!3488 k0!2747 lt!465186))))

(declare-fun b!1053694 () Bool)

(declare-fun res!702789 () Bool)

(assert (=> b!1053694 (=> (not res!702789) (not e!598524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053694 (= res!702789 (validKeyInArray!0 k0!2747))))

(declare-fun b!1053695 () Bool)

(declare-fun res!702782 () Bool)

(assert (=> b!1053695 (=> (not res!702782) (not e!598524))))

(assert (=> b!1053695 (= res!702782 (= (select (arr!31952 a!3488) i!1381) k0!2747))))

(declare-fun b!1053696 () Bool)

(assert (=> b!1053696 (= e!598528 (not (or (bvsle lt!465186 i!1381) (bvsle #b00000000000000000000000000000000 (size!32489 a!3488)))))))

(declare-fun e!598529 () Bool)

(assert (=> b!1053696 e!598529))

(declare-fun res!702788 () Bool)

(assert (=> b!1053696 (=> (not res!702788) (not e!598529))))

(assert (=> b!1053696 (= res!702788 (= (select (store (arr!31952 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465186) k0!2747))))

(declare-fun b!1053697 () Bool)

(declare-fun res!702783 () Bool)

(assert (=> b!1053697 (=> (not res!702783) (not e!598524))))

(declare-datatypes ((List!22395 0))(
  ( (Nil!22392) (Cons!22391 (h!23600 (_ BitVec 64)) (t!31709 List!22395)) )
))
(declare-fun arrayNoDuplicates!0 (array!66445 (_ BitVec 32) List!22395) Bool)

(assert (=> b!1053697 (= res!702783 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22392))))

(declare-fun b!1053698 () Bool)

(assert (=> b!1053698 (= e!598529 e!598525)))

(declare-fun res!702784 () Bool)

(assert (=> b!1053698 (=> res!702784 e!598525)))

(assert (=> b!1053698 (= res!702784 (bvsle lt!465186 i!1381))))

(assert (= (and start!92804 res!702785) b!1053697))

(assert (= (and b!1053697 res!702783) b!1053694))

(assert (= (and b!1053694 res!702789) b!1053695))

(assert (= (and b!1053695 res!702782) b!1053691))

(assert (= (and b!1053691 res!702787) b!1053692))

(assert (= (and b!1053692 res!702786) b!1053696))

(assert (= (and b!1053696 res!702788) b!1053698))

(assert (= (and b!1053698 (not res!702784)) b!1053693))

(declare-fun m!974043 () Bool)

(assert (=> b!1053691 m!974043))

(declare-fun m!974045 () Bool)

(assert (=> b!1053691 m!974045))

(declare-fun m!974047 () Bool)

(assert (=> b!1053692 m!974047))

(declare-fun m!974049 () Bool)

(assert (=> start!92804 m!974049))

(declare-fun m!974051 () Bool)

(assert (=> b!1053695 m!974051))

(declare-fun m!974053 () Bool)

(assert (=> b!1053697 m!974053))

(assert (=> b!1053696 m!974045))

(declare-fun m!974055 () Bool)

(assert (=> b!1053696 m!974055))

(declare-fun m!974057 () Bool)

(assert (=> b!1053693 m!974057))

(declare-fun m!974059 () Bool)

(assert (=> b!1053694 m!974059))

(check-sat (not b!1053692) (not b!1053694) (not b!1053693) (not start!92804) (not b!1053691) (not b!1053697))
(check-sat)
