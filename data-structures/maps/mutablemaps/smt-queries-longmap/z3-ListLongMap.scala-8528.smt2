; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104000 () Bool)

(assert start!104000)

(declare-fun b!1244292 () Bool)

(declare-fun res!830076 () Bool)

(declare-fun e!705302 () Bool)

(assert (=> b!1244292 (=> (not res!830076) (not e!705302))))

(declare-datatypes ((array!80038 0))(
  ( (array!80039 (arr!38608 (Array (_ BitVec 32) (_ BitVec 64))) (size!39145 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80038)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244292 (= res!830076 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39145 a!3892)) (not (= newFrom!287 (size!39145 a!3892)))))))

(declare-fun b!1244293 () Bool)

(declare-fun e!705303 () Bool)

(assert (=> b!1244293 (= e!705303 (not true))))

(declare-datatypes ((List!27589 0))(
  ( (Nil!27586) (Cons!27585 (h!28794 (_ BitVec 64)) (t!41065 List!27589)) )
))
(declare-fun arrayNoDuplicates!0 (array!80038 (_ BitVec 32) List!27589) Bool)

(assert (=> b!1244293 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27586)))

(declare-datatypes ((Unit!41314 0))(
  ( (Unit!41315) )
))
(declare-fun lt!562662 () Unit!41314)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80038 (_ BitVec 32) (_ BitVec 32)) Unit!41314)

(assert (=> b!1244293 (= lt!562662 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244294 () Bool)

(assert (=> b!1244294 (= e!705302 e!705303)))

(declare-fun res!830077 () Bool)

(assert (=> b!1244294 (=> (not res!830077) (not e!705303))))

(assert (=> b!1244294 (= res!830077 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562661 () Unit!41314)

(declare-fun e!705305 () Unit!41314)

(assert (=> b!1244294 (= lt!562661 e!705305)))

(declare-fun c!121795 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244294 (= c!121795 (validKeyInArray!0 (select (arr!38608 a!3892) from!3270)))))

(declare-fun b!1244295 () Bool)

(declare-fun res!830079 () Bool)

(assert (=> b!1244295 (=> (not res!830079) (not e!705302))))

(assert (=> b!1244295 (= res!830079 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27586))))

(declare-fun b!1244296 () Bool)

(declare-fun lt!562663 () Unit!41314)

(assert (=> b!1244296 (= e!705305 lt!562663)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80038 List!27589 List!27589 (_ BitVec 32)) Unit!41314)

(assert (=> b!1244296 (= lt!562663 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27585 (select (arr!38608 a!3892) from!3270) Nil!27586) Nil!27586 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244296 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27586)))

(declare-fun res!830080 () Bool)

(assert (=> start!104000 (=> (not res!830080) (not e!705302))))

(assert (=> start!104000 (= res!830080 (and (bvslt (size!39145 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39145 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39145 a!3892))))))

(assert (=> start!104000 e!705302))

(declare-fun array_inv!29384 (array!80038) Bool)

(assert (=> start!104000 (array_inv!29384 a!3892)))

(assert (=> start!104000 true))

(declare-fun b!1244297 () Bool)

(declare-fun Unit!41316 () Unit!41314)

(assert (=> b!1244297 (= e!705305 Unit!41316)))

(declare-fun b!1244298 () Bool)

(declare-fun res!830078 () Bool)

(assert (=> b!1244298 (=> (not res!830078) (not e!705303))))

(assert (=> b!1244298 (= res!830078 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27586))))

(assert (= (and start!104000 res!830080) b!1244295))

(assert (= (and b!1244295 res!830079) b!1244292))

(assert (= (and b!1244292 res!830076) b!1244294))

(assert (= (and b!1244294 c!121795) b!1244296))

(assert (= (and b!1244294 (not c!121795)) b!1244297))

(assert (= (and b!1244294 res!830077) b!1244298))

(assert (= (and b!1244298 res!830078) b!1244293))

(declare-fun m!1146613 () Bool)

(assert (=> start!104000 m!1146613))

(declare-fun m!1146615 () Bool)

(assert (=> b!1244293 m!1146615))

(declare-fun m!1146617 () Bool)

(assert (=> b!1244293 m!1146617))

(declare-fun m!1146619 () Bool)

(assert (=> b!1244294 m!1146619))

(assert (=> b!1244294 m!1146619))

(declare-fun m!1146621 () Bool)

(assert (=> b!1244294 m!1146621))

(declare-fun m!1146623 () Bool)

(assert (=> b!1244295 m!1146623))

(assert (=> b!1244296 m!1146619))

(declare-fun m!1146625 () Bool)

(assert (=> b!1244296 m!1146625))

(declare-fun m!1146627 () Bool)

(assert (=> b!1244296 m!1146627))

(assert (=> b!1244298 m!1146627))

(check-sat (not start!104000) (not b!1244293) (not b!1244294) (not b!1244298) (not b!1244295) (not b!1244296))
(check-sat)
