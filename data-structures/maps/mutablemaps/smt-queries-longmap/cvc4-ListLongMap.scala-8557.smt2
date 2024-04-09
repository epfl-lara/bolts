; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104534 () Bool)

(assert start!104534)

(declare-fun b!1246715 () Bool)

(declare-fun res!832051 () Bool)

(declare-fun e!707128 () Bool)

(assert (=> b!1246715 (=> (not res!832051) (not e!707128))))

(declare-datatypes ((array!80250 0))(
  ( (array!80251 (arr!38696 (Array (_ BitVec 32) (_ BitVec 64))) (size!39233 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80250)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27677 0))(
  ( (Nil!27674) (Cons!27673 (h!28882 (_ BitVec 64)) (t!41153 List!27677)) )
))
(declare-fun arrayNoDuplicates!0 (array!80250 (_ BitVec 32) List!27677) Bool)

(assert (=> b!1246715 (= res!832051 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27674))))

(declare-fun b!1246716 () Bool)

(declare-fun res!832050 () Bool)

(declare-fun e!707126 () Bool)

(assert (=> b!1246716 (=> (not res!832050) (not e!707126))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246716 (= res!832050 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39233 a!3892)) (not (= newFrom!287 (size!39233 a!3892)))))))

(declare-fun b!1246717 () Bool)

(assert (=> b!1246717 (= e!707126 e!707128)))

(declare-fun res!832054 () Bool)

(assert (=> b!1246717 (=> (not res!832054) (not e!707128))))

(assert (=> b!1246717 (= res!832054 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41404 0))(
  ( (Unit!41405) )
))
(declare-fun lt!563143 () Unit!41404)

(declare-fun e!707127 () Unit!41404)

(assert (=> b!1246717 (= lt!563143 e!707127)))

(declare-fun c!122019 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246717 (= c!122019 (validKeyInArray!0 (select (arr!38696 a!3892) from!3270)))))

(declare-fun b!1246718 () Bool)

(assert (=> b!1246718 (= e!707128 (not true))))

(assert (=> b!1246718 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27674)))

(declare-fun lt!563142 () Unit!41404)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80250 (_ BitVec 32) (_ BitVec 32)) Unit!41404)

(assert (=> b!1246718 (= lt!563142 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1246714 () Bool)

(declare-fun lt!563144 () Unit!41404)

(assert (=> b!1246714 (= e!707127 lt!563144)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80250 List!27677 List!27677 (_ BitVec 32)) Unit!41404)

(assert (=> b!1246714 (= lt!563144 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27673 (select (arr!38696 a!3892) from!3270) Nil!27674) Nil!27674 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246714 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27674)))

(declare-fun res!832053 () Bool)

(assert (=> start!104534 (=> (not res!832053) (not e!707126))))

(assert (=> start!104534 (= res!832053 (and (bvslt (size!39233 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39233 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39233 a!3892))))))

(assert (=> start!104534 e!707126))

(declare-fun array_inv!29472 (array!80250) Bool)

(assert (=> start!104534 (array_inv!29472 a!3892)))

(assert (=> start!104534 true))

(declare-fun b!1246719 () Bool)

(declare-fun res!832052 () Bool)

(assert (=> b!1246719 (=> (not res!832052) (not e!707126))))

(assert (=> b!1246719 (= res!832052 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27674))))

(declare-fun b!1246720 () Bool)

(declare-fun Unit!41406 () Unit!41404)

(assert (=> b!1246720 (= e!707127 Unit!41406)))

(assert (= (and start!104534 res!832053) b!1246719))

(assert (= (and b!1246719 res!832052) b!1246716))

(assert (= (and b!1246716 res!832050) b!1246717))

(assert (= (and b!1246717 c!122019) b!1246714))

(assert (= (and b!1246717 (not c!122019)) b!1246720))

(assert (= (and b!1246717 res!832054) b!1246715))

(assert (= (and b!1246715 res!832051) b!1246718))

(declare-fun m!1148485 () Bool)

(assert (=> b!1246715 m!1148485))

(declare-fun m!1148487 () Bool)

(assert (=> b!1246714 m!1148487))

(declare-fun m!1148489 () Bool)

(assert (=> b!1246714 m!1148489))

(assert (=> b!1246714 m!1148485))

(declare-fun m!1148491 () Bool)

(assert (=> b!1246718 m!1148491))

(declare-fun m!1148493 () Bool)

(assert (=> b!1246718 m!1148493))

(declare-fun m!1148495 () Bool)

(assert (=> b!1246719 m!1148495))

(assert (=> b!1246717 m!1148487))

(assert (=> b!1246717 m!1148487))

(declare-fun m!1148497 () Bool)

(assert (=> b!1246717 m!1148497))

(declare-fun m!1148499 () Bool)

(assert (=> start!104534 m!1148499))

(push 1)

(assert (not b!1246718))

(assert (not b!1246715))

(assert (not b!1246719))

(assert (not b!1246714))

(assert (not b!1246717))

(assert (not start!104534))

(check-sat)

