; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93086 () Bool)

(assert start!93086)

(declare-fun b!1055610 () Bool)

(declare-fun res!704542 () Bool)

(declare-fun e!600023 () Bool)

(assert (=> b!1055610 (=> res!704542 e!600023)))

(declare-datatypes ((List!22446 0))(
  ( (Nil!22443) (Cons!22442 (h!23651 (_ BitVec 64)) (t!31760 List!22446)) )
))
(declare-fun contains!6204 (List!22446 (_ BitVec 64)) Bool)

(assert (=> b!1055610 (= res!704542 (contains!6204 Nil!22443 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055611 () Bool)

(declare-fun e!600017 () Bool)

(declare-fun e!600022 () Bool)

(assert (=> b!1055611 (= e!600017 (not e!600022))))

(declare-fun res!704539 () Bool)

(assert (=> b!1055611 (=> res!704539 e!600022)))

(declare-fun lt!465825 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055611 (= res!704539 (bvsle lt!465825 i!1381))))

(declare-fun e!600020 () Bool)

(assert (=> b!1055611 e!600020))

(declare-fun res!704543 () Bool)

(assert (=> b!1055611 (=> (not res!704543) (not e!600020))))

(declare-datatypes ((array!66559 0))(
  ( (array!66560 (arr!32003 (Array (_ BitVec 32) (_ BitVec 64))) (size!32540 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66559)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1055611 (= res!704543 (= (select (store (arr!32003 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465825) k0!2747))))

(declare-fun b!1055612 () Bool)

(declare-fun res!704540 () Bool)

(declare-fun e!600018 () Bool)

(assert (=> b!1055612 (=> (not res!704540) (not e!600018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055612 (= res!704540 (validKeyInArray!0 k0!2747))))

(declare-fun b!1055613 () Bool)

(assert (=> b!1055613 (= e!600022 e!600023)))

(declare-fun res!704536 () Bool)

(assert (=> b!1055613 (=> res!704536 e!600023)))

(assert (=> b!1055613 (= res!704536 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32540 a!3488)))))

(declare-fun arrayContainsKey!0 (array!66559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055613 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34573 0))(
  ( (Unit!34574) )
))
(declare-fun lt!465827 () Unit!34573)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66559 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34573)

(assert (=> b!1055613 (= lt!465827 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465825 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66559 (_ BitVec 32) List!22446) Bool)

(assert (=> b!1055613 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22443)))

(declare-fun lt!465828 () Unit!34573)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66559 (_ BitVec 32) (_ BitVec 32)) Unit!34573)

(assert (=> b!1055613 (= lt!465828 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055614 () Bool)

(declare-fun e!600021 () Bool)

(assert (=> b!1055614 (= e!600018 e!600021)))

(declare-fun res!704537 () Bool)

(assert (=> b!1055614 (=> (not res!704537) (not e!600021))))

(declare-fun lt!465826 () array!66559)

(assert (=> b!1055614 (= res!704537 (arrayContainsKey!0 lt!465826 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055614 (= lt!465826 (array!66560 (store (arr!32003 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32540 a!3488)))))

(declare-fun b!1055615 () Bool)

(declare-fun res!704541 () Bool)

(assert (=> b!1055615 (=> (not res!704541) (not e!600018))))

(assert (=> b!1055615 (= res!704541 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22443))))

(declare-fun b!1055617 () Bool)

(declare-fun e!600019 () Bool)

(assert (=> b!1055617 (= e!600020 e!600019)))

(declare-fun res!704544 () Bool)

(assert (=> b!1055617 (=> res!704544 e!600019)))

(assert (=> b!1055617 (= res!704544 (bvsle lt!465825 i!1381))))

(declare-fun b!1055618 () Bool)

(assert (=> b!1055618 (= e!600019 (arrayContainsKey!0 a!3488 k0!2747 lt!465825))))

(declare-fun b!1055619 () Bool)

(declare-fun res!704535 () Bool)

(assert (=> b!1055619 (=> (not res!704535) (not e!600018))))

(assert (=> b!1055619 (= res!704535 (= (select (arr!32003 a!3488) i!1381) k0!2747))))

(declare-fun b!1055620 () Bool)

(declare-fun res!704538 () Bool)

(assert (=> b!1055620 (=> res!704538 e!600023)))

(declare-fun noDuplicate!1573 (List!22446) Bool)

(assert (=> b!1055620 (= res!704538 (not (noDuplicate!1573 Nil!22443)))))

(declare-fun b!1055621 () Bool)

(assert (=> b!1055621 (= e!600023 true)))

(declare-fun lt!465829 () Bool)

(assert (=> b!1055621 (= lt!465829 (contains!6204 Nil!22443 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055616 () Bool)

(assert (=> b!1055616 (= e!600021 e!600017)))

(declare-fun res!704533 () Bool)

(assert (=> b!1055616 (=> (not res!704533) (not e!600017))))

(assert (=> b!1055616 (= res!704533 (not (= lt!465825 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66559 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055616 (= lt!465825 (arrayScanForKey!0 lt!465826 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!704534 () Bool)

(assert (=> start!93086 (=> (not res!704534) (not e!600018))))

(assert (=> start!93086 (= res!704534 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32540 a!3488)) (bvslt (size!32540 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93086 e!600018))

(assert (=> start!93086 true))

(declare-fun array_inv!24625 (array!66559) Bool)

(assert (=> start!93086 (array_inv!24625 a!3488)))

(assert (= (and start!93086 res!704534) b!1055615))

(assert (= (and b!1055615 res!704541) b!1055612))

(assert (= (and b!1055612 res!704540) b!1055619))

(assert (= (and b!1055619 res!704535) b!1055614))

(assert (= (and b!1055614 res!704537) b!1055616))

(assert (= (and b!1055616 res!704533) b!1055611))

(assert (= (and b!1055611 res!704543) b!1055617))

(assert (= (and b!1055617 (not res!704544)) b!1055618))

(assert (= (and b!1055611 (not res!704539)) b!1055613))

(assert (= (and b!1055613 (not res!704536)) b!1055620))

(assert (= (and b!1055620 (not res!704538)) b!1055610))

(assert (= (and b!1055610 (not res!704542)) b!1055621))

(declare-fun m!975725 () Bool)

(assert (=> b!1055619 m!975725))

(declare-fun m!975727 () Bool)

(assert (=> b!1055615 m!975727))

(declare-fun m!975729 () Bool)

(assert (=> b!1055610 m!975729))

(declare-fun m!975731 () Bool)

(assert (=> b!1055614 m!975731))

(declare-fun m!975733 () Bool)

(assert (=> b!1055614 m!975733))

(declare-fun m!975735 () Bool)

(assert (=> b!1055618 m!975735))

(declare-fun m!975737 () Bool)

(assert (=> b!1055620 m!975737))

(declare-fun m!975739 () Bool)

(assert (=> b!1055612 m!975739))

(declare-fun m!975741 () Bool)

(assert (=> start!93086 m!975741))

(assert (=> b!1055611 m!975733))

(declare-fun m!975743 () Bool)

(assert (=> b!1055611 m!975743))

(declare-fun m!975745 () Bool)

(assert (=> b!1055621 m!975745))

(declare-fun m!975747 () Bool)

(assert (=> b!1055616 m!975747))

(declare-fun m!975749 () Bool)

(assert (=> b!1055613 m!975749))

(declare-fun m!975751 () Bool)

(assert (=> b!1055613 m!975751))

(declare-fun m!975753 () Bool)

(assert (=> b!1055613 m!975753))

(declare-fun m!975755 () Bool)

(assert (=> b!1055613 m!975755))

(check-sat (not b!1055618) (not start!93086) (not b!1055610) (not b!1055614) (not b!1055616) (not b!1055613) (not b!1055621) (not b!1055615) (not b!1055612) (not b!1055620))
(check-sat)
