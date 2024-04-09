; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92312 () Bool)

(assert start!92312)

(declare-fun b!1048654 () Bool)

(declare-fun res!697890 () Bool)

(declare-fun e!594878 () Bool)

(assert (=> b!1048654 (=> (not res!697890) (not e!594878))))

(declare-datatypes ((array!66061 0))(
  ( (array!66062 (arr!31766 (Array (_ BitVec 32) (_ BitVec 64))) (size!32303 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66061)

(declare-datatypes ((List!22209 0))(
  ( (Nil!22206) (Cons!22205 (h!23414 (_ BitVec 64)) (t!31523 List!22209)) )
))
(declare-fun arrayNoDuplicates!0 (array!66061 (_ BitVec 32) List!22209) Bool)

(assert (=> b!1048654 (= res!697890 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22206))))

(declare-fun b!1048655 () Bool)

(declare-fun res!697892 () Bool)

(assert (=> b!1048655 (=> (not res!697892) (not e!594878))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048655 (= res!697892 (= (select (arr!31766 a!3488) i!1381) k0!2747))))

(declare-fun e!594877 () Bool)

(declare-fun lt!463242 () (_ BitVec 32))

(declare-fun b!1048656 () Bool)

(declare-fun arrayContainsKey!0 (array!66061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048656 (= e!594877 (arrayContainsKey!0 a!3488 k0!2747 lt!463242))))

(declare-fun b!1048657 () Bool)

(declare-fun e!594875 () Bool)

(assert (=> b!1048657 (= e!594875 (not true))))

(declare-fun e!594876 () Bool)

(assert (=> b!1048657 e!594876))

(declare-fun res!697896 () Bool)

(assert (=> b!1048657 (=> (not res!697896) (not e!594876))))

(assert (=> b!1048657 (= res!697896 (= (select (store (arr!31766 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463242) k0!2747))))

(declare-fun b!1048658 () Bool)

(assert (=> b!1048658 (= e!594876 e!594877)))

(declare-fun res!697891 () Bool)

(assert (=> b!1048658 (=> res!697891 e!594877)))

(assert (=> b!1048658 (= res!697891 (bvsle lt!463242 i!1381))))

(declare-fun res!697893 () Bool)

(assert (=> start!92312 (=> (not res!697893) (not e!594878))))

(assert (=> start!92312 (= res!697893 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32303 a!3488)) (bvslt (size!32303 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92312 e!594878))

(assert (=> start!92312 true))

(declare-fun array_inv!24388 (array!66061) Bool)

(assert (=> start!92312 (array_inv!24388 a!3488)))

(declare-fun b!1048659 () Bool)

(declare-fun e!594873 () Bool)

(assert (=> b!1048659 (= e!594873 e!594875)))

(declare-fun res!697894 () Bool)

(assert (=> b!1048659 (=> (not res!697894) (not e!594875))))

(assert (=> b!1048659 (= res!697894 (not (= lt!463242 i!1381)))))

(declare-fun lt!463243 () array!66061)

(declare-fun arrayScanForKey!0 (array!66061 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048659 (= lt!463242 (arrayScanForKey!0 lt!463243 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048660 () Bool)

(declare-fun res!697895 () Bool)

(assert (=> b!1048660 (=> (not res!697895) (not e!594878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048660 (= res!697895 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048661 () Bool)

(assert (=> b!1048661 (= e!594878 e!594873)))

(declare-fun res!697889 () Bool)

(assert (=> b!1048661 (=> (not res!697889) (not e!594873))))

(assert (=> b!1048661 (= res!697889 (arrayContainsKey!0 lt!463243 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048661 (= lt!463243 (array!66062 (store (arr!31766 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32303 a!3488)))))

(assert (= (and start!92312 res!697893) b!1048654))

(assert (= (and b!1048654 res!697890) b!1048660))

(assert (= (and b!1048660 res!697895) b!1048655))

(assert (= (and b!1048655 res!697892) b!1048661))

(assert (= (and b!1048661 res!697889) b!1048659))

(assert (= (and b!1048659 res!697894) b!1048657))

(assert (= (and b!1048657 res!697896) b!1048658))

(assert (= (and b!1048658 (not res!697891)) b!1048656))

(declare-fun m!969699 () Bool)

(assert (=> b!1048659 m!969699))

(declare-fun m!969701 () Bool)

(assert (=> b!1048660 m!969701))

(declare-fun m!969703 () Bool)

(assert (=> b!1048657 m!969703))

(declare-fun m!969705 () Bool)

(assert (=> b!1048657 m!969705))

(declare-fun m!969707 () Bool)

(assert (=> b!1048655 m!969707))

(declare-fun m!969709 () Bool)

(assert (=> start!92312 m!969709))

(declare-fun m!969711 () Bool)

(assert (=> b!1048661 m!969711))

(assert (=> b!1048661 m!969703))

(declare-fun m!969713 () Bool)

(assert (=> b!1048654 m!969713))

(declare-fun m!969715 () Bool)

(assert (=> b!1048656 m!969715))

(check-sat (not b!1048656) (not b!1048660) (not b!1048654) (not b!1048661) (not b!1048659) (not start!92312))
(check-sat)
