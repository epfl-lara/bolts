; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104526 () Bool)

(assert start!104526)

(declare-fun b!1246630 () Bool)

(declare-datatypes ((Unit!41392 0))(
  ( (Unit!41393) )
))
(declare-fun e!707077 () Unit!41392)

(declare-fun lt!563110 () Unit!41392)

(assert (=> b!1246630 (= e!707077 lt!563110)))

(declare-datatypes ((array!80242 0))(
  ( (array!80243 (arr!38692 (Array (_ BitVec 32) (_ BitVec 64))) (size!39229 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80242)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27673 0))(
  ( (Nil!27670) (Cons!27669 (h!28878 (_ BitVec 64)) (t!41149 List!27673)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80242 List!27673 List!27673 (_ BitVec 32)) Unit!41392)

(assert (=> b!1246630 (= lt!563110 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27669 (select (arr!38692 a!3892) from!3270) Nil!27670) Nil!27670 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80242 (_ BitVec 32) List!27673) Bool)

(assert (=> b!1246630 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27670)))

(declare-fun res!831990 () Bool)

(declare-fun e!707078 () Bool)

(assert (=> start!104526 (=> (not res!831990) (not e!707078))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104526 (= res!831990 (and (bvslt (size!39229 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39229 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39229 a!3892))))))

(assert (=> start!104526 e!707078))

(declare-fun array_inv!29468 (array!80242) Bool)

(assert (=> start!104526 (array_inv!29468 a!3892)))

(assert (=> start!104526 true))

(declare-fun b!1246631 () Bool)

(declare-fun res!831991 () Bool)

(declare-fun e!707079 () Bool)

(assert (=> b!1246631 (=> (not res!831991) (not e!707079))))

(assert (=> b!1246631 (= res!831991 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27670))))

(declare-fun b!1246632 () Bool)

(declare-fun res!831994 () Bool)

(assert (=> b!1246632 (=> (not res!831994) (not e!707078))))

(assert (=> b!1246632 (= res!831994 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27670))))

(declare-fun b!1246633 () Bool)

(assert (=> b!1246633 (= e!707078 e!707079)))

(declare-fun res!831993 () Bool)

(assert (=> b!1246633 (=> (not res!831993) (not e!707079))))

(assert (=> b!1246633 (= res!831993 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!563111 () Unit!41392)

(assert (=> b!1246633 (= lt!563111 e!707077)))

(declare-fun c!122007 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246633 (= c!122007 (validKeyInArray!0 (select (arr!38692 a!3892) from!3270)))))

(declare-fun b!1246634 () Bool)

(declare-fun res!831992 () Bool)

(assert (=> b!1246634 (=> (not res!831992) (not e!707078))))

(assert (=> b!1246634 (= res!831992 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39229 a!3892)) (not (= newFrom!287 (size!39229 a!3892)))))))

(declare-fun b!1246635 () Bool)

(declare-fun Unit!41394 () Unit!41392)

(assert (=> b!1246635 (= e!707077 Unit!41394)))

(declare-fun b!1246636 () Bool)

(assert (=> b!1246636 (= e!707079 (bvsge (bvsub newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270)) (bvsub newFrom!287 from!3270)))))

(assert (= (and start!104526 res!831990) b!1246632))

(assert (= (and b!1246632 res!831994) b!1246634))

(assert (= (and b!1246634 res!831992) b!1246633))

(assert (= (and b!1246633 c!122007) b!1246630))

(assert (= (and b!1246633 (not c!122007)) b!1246635))

(assert (= (and b!1246633 res!831993) b!1246631))

(assert (= (and b!1246631 res!831991) b!1246636))

(declare-fun m!1148429 () Bool)

(assert (=> b!1246631 m!1148429))

(declare-fun m!1148431 () Bool)

(assert (=> b!1246632 m!1148431))

(declare-fun m!1148433 () Bool)

(assert (=> start!104526 m!1148433))

(declare-fun m!1148435 () Bool)

(assert (=> b!1246630 m!1148435))

(declare-fun m!1148437 () Bool)

(assert (=> b!1246630 m!1148437))

(assert (=> b!1246630 m!1148429))

(assert (=> b!1246633 m!1148435))

(assert (=> b!1246633 m!1148435))

(declare-fun m!1148439 () Bool)

(assert (=> b!1246633 m!1148439))

(check-sat (not b!1246630) (not b!1246631) (not b!1246633) (not start!104526) (not b!1246632))
(check-sat)
