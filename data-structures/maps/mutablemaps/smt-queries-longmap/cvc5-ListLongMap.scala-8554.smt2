; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104488 () Bool)

(assert start!104488)

(declare-fun b!1246446 () Bool)

(declare-datatypes ((Unit!41371 0))(
  ( (Unit!41372) )
))
(declare-fun e!706954 () Unit!41371)

(declare-fun lt!563059 () Unit!41371)

(assert (=> b!1246446 (= e!706954 lt!563059)))

(declare-datatypes ((array!80225 0))(
  ( (array!80226 (arr!38685 (Array (_ BitVec 32) (_ BitVec 64))) (size!39222 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80225)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27666 0))(
  ( (Nil!27663) (Cons!27662 (h!28871 (_ BitVec 64)) (t!41142 List!27666)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80225 List!27666 List!27666 (_ BitVec 32)) Unit!41371)

(assert (=> b!1246446 (= lt!563059 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27662 (select (arr!38685 a!3892) from!3270) Nil!27663) Nil!27663 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80225 (_ BitVec 32) List!27666) Bool)

(assert (=> b!1246446 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27663)))

(declare-fun b!1246447 () Bool)

(declare-fun e!706952 () Bool)

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246447 (= e!706952 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvslt newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!563060 () Unit!41371)

(assert (=> b!1246447 (= lt!563060 e!706954)))

(declare-fun c!121974 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246447 (= c!121974 (validKeyInArray!0 (select (arr!38685 a!3892) from!3270)))))

(declare-fun b!1246448 () Bool)

(declare-fun Unit!41373 () Unit!41371)

(assert (=> b!1246448 (= e!706954 Unit!41373)))

(declare-fun b!1246449 () Bool)

(declare-fun res!831872 () Bool)

(assert (=> b!1246449 (=> (not res!831872) (not e!706952))))

(assert (=> b!1246449 (= res!831872 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39222 a!3892)) (not (= newFrom!287 (size!39222 a!3892)))))))

(declare-fun res!831873 () Bool)

(assert (=> start!104488 (=> (not res!831873) (not e!706952))))

(assert (=> start!104488 (= res!831873 (and (bvslt (size!39222 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39222 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39222 a!3892))))))

(assert (=> start!104488 e!706952))

(declare-fun array_inv!29461 (array!80225) Bool)

(assert (=> start!104488 (array_inv!29461 a!3892)))

(assert (=> start!104488 true))

(declare-fun b!1246450 () Bool)

(declare-fun res!831874 () Bool)

(assert (=> b!1246450 (=> (not res!831874) (not e!706952))))

(assert (=> b!1246450 (= res!831874 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27663))))

(assert (= (and start!104488 res!831873) b!1246450))

(assert (= (and b!1246450 res!831874) b!1246449))

(assert (= (and b!1246449 res!831872) b!1246447))

(assert (= (and b!1246447 c!121974) b!1246446))

(assert (= (and b!1246447 (not c!121974)) b!1246448))

(declare-fun m!1148303 () Bool)

(assert (=> b!1246446 m!1148303))

(declare-fun m!1148305 () Bool)

(assert (=> b!1246446 m!1148305))

(declare-fun m!1148307 () Bool)

(assert (=> b!1246446 m!1148307))

(assert (=> b!1246447 m!1148303))

(assert (=> b!1246447 m!1148303))

(declare-fun m!1148309 () Bool)

(assert (=> b!1246447 m!1148309))

(declare-fun m!1148311 () Bool)

(assert (=> start!104488 m!1148311))

(declare-fun m!1148313 () Bool)

(assert (=> b!1246450 m!1148313))

(push 1)

(assert (not start!104488))

(assert (not b!1246450))

(assert (not b!1246447))

(assert (not b!1246446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

