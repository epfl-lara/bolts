; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93092 () Bool)

(assert start!93092)

(declare-fun b!1055703 () Bool)

(declare-fun e!600083 () Bool)

(assert (=> b!1055703 (= e!600083 true)))

(assert (=> b!1055703 false))

(declare-datatypes ((array!66565 0))(
  ( (array!66566 (arr!32006 (Array (_ BitVec 32) (_ BitVec 64))) (size!32543 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66565)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((Unit!34579 0))(
  ( (Unit!34580) )
))
(declare-fun lt!465874 () Unit!34579)

(declare-datatypes ((List!22449 0))(
  ( (Nil!22446) (Cons!22445 (h!23654 (_ BitVec 64)) (t!31763 List!22449)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66565 (_ BitVec 64) (_ BitVec 32) List!22449) Unit!34579)

(assert (=> b!1055703 (= lt!465874 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 i!1381 Nil!22446))))

(declare-fun arrayContainsKey!0 (array!66565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055703 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465870 () Unit!34579)

(declare-fun lt!465873 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66565 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34579)

(assert (=> b!1055703 (= lt!465870 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465873 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66565 (_ BitVec 32) List!22449) Bool)

(assert (=> b!1055703 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22446)))

(declare-fun lt!465872 () Unit!34579)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66565 (_ BitVec 32) (_ BitVec 32)) Unit!34579)

(assert (=> b!1055703 (= lt!465872 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055704 () Bool)

(declare-fun res!704632 () Bool)

(declare-fun e!600085 () Bool)

(assert (=> b!1055704 (=> (not res!704632) (not e!600085))))

(assert (=> b!1055704 (= res!704632 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22446))))

(declare-fun b!1055705 () Bool)

(declare-fun res!704634 () Bool)

(assert (=> b!1055705 (=> (not res!704634) (not e!600085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055705 (= res!704634 (validKeyInArray!0 k0!2747))))

(declare-fun b!1055706 () Bool)

(declare-fun e!600087 () Bool)

(declare-fun e!600084 () Bool)

(assert (=> b!1055706 (= e!600087 e!600084)))

(declare-fun res!704631 () Bool)

(assert (=> b!1055706 (=> res!704631 e!600084)))

(assert (=> b!1055706 (= res!704631 (bvsle lt!465873 i!1381))))

(declare-fun b!1055707 () Bool)

(declare-fun e!600088 () Bool)

(assert (=> b!1055707 (= e!600085 e!600088)))

(declare-fun res!704630 () Bool)

(assert (=> b!1055707 (=> (not res!704630) (not e!600088))))

(declare-fun lt!465871 () array!66565)

(assert (=> b!1055707 (= res!704630 (arrayContainsKey!0 lt!465871 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055707 (= lt!465871 (array!66566 (store (arr!32006 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32543 a!3488)))))

(declare-fun b!1055708 () Bool)

(assert (=> b!1055708 (= e!600084 (arrayContainsKey!0 a!3488 k0!2747 lt!465873))))

(declare-fun b!1055709 () Bool)

(declare-fun e!600086 () Bool)

(assert (=> b!1055709 (= e!600086 (not e!600083))))

(declare-fun res!704627 () Bool)

(assert (=> b!1055709 (=> res!704627 e!600083)))

(assert (=> b!1055709 (= res!704627 (bvsle lt!465873 i!1381))))

(assert (=> b!1055709 e!600087))

(declare-fun res!704629 () Bool)

(assert (=> b!1055709 (=> (not res!704629) (not e!600087))))

(assert (=> b!1055709 (= res!704629 (= (select (store (arr!32006 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465873) k0!2747))))

(declare-fun b!1055710 () Bool)

(assert (=> b!1055710 (= e!600088 e!600086)))

(declare-fun res!704626 () Bool)

(assert (=> b!1055710 (=> (not res!704626) (not e!600086))))

(assert (=> b!1055710 (= res!704626 (not (= lt!465873 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66565 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055710 (= lt!465873 (arrayScanForKey!0 lt!465871 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!704628 () Bool)

(assert (=> start!93092 (=> (not res!704628) (not e!600085))))

(assert (=> start!93092 (= res!704628 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32543 a!3488)) (bvslt (size!32543 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93092 e!600085))

(assert (=> start!93092 true))

(declare-fun array_inv!24628 (array!66565) Bool)

(assert (=> start!93092 (array_inv!24628 a!3488)))

(declare-fun b!1055711 () Bool)

(declare-fun res!704633 () Bool)

(assert (=> b!1055711 (=> (not res!704633) (not e!600085))))

(assert (=> b!1055711 (= res!704633 (= (select (arr!32006 a!3488) i!1381) k0!2747))))

(assert (= (and start!93092 res!704628) b!1055704))

(assert (= (and b!1055704 res!704632) b!1055705))

(assert (= (and b!1055705 res!704634) b!1055711))

(assert (= (and b!1055711 res!704633) b!1055707))

(assert (= (and b!1055707 res!704630) b!1055710))

(assert (= (and b!1055710 res!704626) b!1055709))

(assert (= (and b!1055709 res!704629) b!1055706))

(assert (= (and b!1055706 (not res!704631)) b!1055708))

(assert (= (and b!1055709 (not res!704627)) b!1055703))

(declare-fun m!975817 () Bool)

(assert (=> b!1055705 m!975817))

(declare-fun m!975819 () Bool)

(assert (=> b!1055707 m!975819))

(declare-fun m!975821 () Bool)

(assert (=> b!1055707 m!975821))

(declare-fun m!975823 () Bool)

(assert (=> b!1055704 m!975823))

(declare-fun m!975825 () Bool)

(assert (=> b!1055711 m!975825))

(assert (=> b!1055709 m!975821))

(declare-fun m!975827 () Bool)

(assert (=> b!1055709 m!975827))

(declare-fun m!975829 () Bool)

(assert (=> b!1055710 m!975829))

(declare-fun m!975831 () Bool)

(assert (=> start!93092 m!975831))

(declare-fun m!975833 () Bool)

(assert (=> b!1055708 m!975833))

(declare-fun m!975835 () Bool)

(assert (=> b!1055703 m!975835))

(declare-fun m!975837 () Bool)

(assert (=> b!1055703 m!975837))

(declare-fun m!975839 () Bool)

(assert (=> b!1055703 m!975839))

(declare-fun m!975841 () Bool)

(assert (=> b!1055703 m!975841))

(declare-fun m!975843 () Bool)

(assert (=> b!1055703 m!975843))

(check-sat (not b!1055705) (not b!1055707) (not b!1055703) (not b!1055710) (not start!93092) (not b!1055704) (not b!1055708))
(check-sat)
