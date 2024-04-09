; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104532 () Bool)

(assert start!104532)

(declare-fun b!1246693 () Bool)

(declare-fun res!832036 () Bool)

(declare-fun e!707113 () Bool)

(assert (=> b!1246693 (=> (not res!832036) (not e!707113))))

(declare-datatypes ((array!80248 0))(
  ( (array!80249 (arr!38695 (Array (_ BitVec 32) (_ BitVec 64))) (size!39232 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80248)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1246693 (= res!832036 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39232 a!3892)) (not (= newFrom!287 (size!39232 a!3892)))))))

(declare-fun b!1246694 () Bool)

(declare-datatypes ((Unit!41401 0))(
  ( (Unit!41402) )
))
(declare-fun e!707114 () Unit!41401)

(declare-fun Unit!41403 () Unit!41401)

(assert (=> b!1246694 (= e!707114 Unit!41403)))

(declare-fun b!1246695 () Bool)

(declare-fun e!707115 () Bool)

(assert (=> b!1246695 (= e!707113 e!707115)))

(declare-fun res!832038 () Bool)

(assert (=> b!1246695 (=> (not res!832038) (not e!707115))))

(assert (=> b!1246695 (= res!832038 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!563133 () Unit!41401)

(assert (=> b!1246695 (= lt!563133 e!707114)))

(declare-fun c!122016 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246695 (= c!122016 (validKeyInArray!0 (select (arr!38695 a!3892) from!3270)))))

(declare-fun b!1246696 () Bool)

(declare-fun lt!563134 () Unit!41401)

(assert (=> b!1246696 (= e!707114 lt!563134)))

(declare-datatypes ((List!27676 0))(
  ( (Nil!27673) (Cons!27672 (h!28881 (_ BitVec 64)) (t!41152 List!27676)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80248 List!27676 List!27676 (_ BitVec 32)) Unit!41401)

(assert (=> b!1246696 (= lt!563134 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27672 (select (arr!38695 a!3892) from!3270) Nil!27673) Nil!27673 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80248 (_ BitVec 32) List!27676) Bool)

(assert (=> b!1246696 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27673)))

(declare-fun b!1246697 () Bool)

(declare-fun res!832035 () Bool)

(assert (=> b!1246697 (=> (not res!832035) (not e!707113))))

(assert (=> b!1246697 (= res!832035 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27673))))

(declare-fun res!832039 () Bool)

(assert (=> start!104532 (=> (not res!832039) (not e!707113))))

(assert (=> start!104532 (= res!832039 (and (bvslt (size!39232 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39232 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39232 a!3892))))))

(assert (=> start!104532 e!707113))

(declare-fun array_inv!29471 (array!80248) Bool)

(assert (=> start!104532 (array_inv!29471 a!3892)))

(assert (=> start!104532 true))

(declare-fun b!1246698 () Bool)

(declare-fun res!832037 () Bool)

(assert (=> b!1246698 (=> (not res!832037) (not e!707115))))

(assert (=> b!1246698 (= res!832037 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27673))))

(declare-fun b!1246699 () Bool)

(assert (=> b!1246699 (= e!707115 (not true))))

(assert (=> b!1246699 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27673)))

(declare-fun lt!563135 () Unit!41401)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80248 (_ BitVec 32) (_ BitVec 32)) Unit!41401)

(assert (=> b!1246699 (= lt!563135 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(assert (= (and start!104532 res!832039) b!1246697))

(assert (= (and b!1246697 res!832035) b!1246693))

(assert (= (and b!1246693 res!832036) b!1246695))

(assert (= (and b!1246695 c!122016) b!1246696))

(assert (= (and b!1246695 (not c!122016)) b!1246694))

(assert (= (and b!1246695 res!832038) b!1246698))

(assert (= (and b!1246698 res!832037) b!1246699))

(declare-fun m!1148469 () Bool)

(assert (=> b!1246696 m!1148469))

(declare-fun m!1148471 () Bool)

(assert (=> b!1246696 m!1148471))

(declare-fun m!1148473 () Bool)

(assert (=> b!1246696 m!1148473))

(declare-fun m!1148475 () Bool)

(assert (=> b!1246697 m!1148475))

(assert (=> b!1246695 m!1148469))

(assert (=> b!1246695 m!1148469))

(declare-fun m!1148477 () Bool)

(assert (=> b!1246695 m!1148477))

(declare-fun m!1148479 () Bool)

(assert (=> start!104532 m!1148479))

(declare-fun m!1148481 () Bool)

(assert (=> b!1246699 m!1148481))

(declare-fun m!1148483 () Bool)

(assert (=> b!1246699 m!1148483))

(assert (=> b!1246698 m!1148473))

(check-sat (not b!1246697) (not b!1246699) (not b!1246696) (not b!1246698) (not b!1246695) (not start!104532))
(check-sat)
