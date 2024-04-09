; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104528 () Bool)

(assert start!104528)

(declare-fun b!1246651 () Bool)

(declare-datatypes ((Unit!41395 0))(
  ( (Unit!41396) )
))
(declare-fun e!707089 () Unit!41395)

(declare-fun Unit!41397 () Unit!41395)

(assert (=> b!1246651 (= e!707089 Unit!41397)))

(declare-fun b!1246652 () Bool)

(declare-fun res!832009 () Bool)

(declare-fun e!707092 () Bool)

(assert (=> b!1246652 (=> (not res!832009) (not e!707092))))

(declare-datatypes ((array!80244 0))(
  ( (array!80245 (arr!38693 (Array (_ BitVec 32) (_ BitVec 64))) (size!39230 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80244)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1246652 (= res!832009 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39230 a!3892)) (not (= newFrom!287 (size!39230 a!3892)))))))

(declare-fun res!832008 () Bool)

(assert (=> start!104528 (=> (not res!832008) (not e!707092))))

(assert (=> start!104528 (= res!832008 (and (bvslt (size!39230 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39230 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39230 a!3892))))))

(assert (=> start!104528 e!707092))

(declare-fun array_inv!29469 (array!80244) Bool)

(assert (=> start!104528 (array_inv!29469 a!3892)))

(assert (=> start!104528 true))

(declare-fun b!1246653 () Bool)

(declare-fun res!832005 () Bool)

(declare-fun e!707090 () Bool)

(assert (=> b!1246653 (=> (not res!832005) (not e!707090))))

(declare-datatypes ((List!27674 0))(
  ( (Nil!27671) (Cons!27670 (h!28879 (_ BitVec 64)) (t!41150 List!27674)) )
))
(declare-fun arrayNoDuplicates!0 (array!80244 (_ BitVec 32) List!27674) Bool)

(assert (=> b!1246653 (= res!832005 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27671))))

(declare-fun b!1246654 () Bool)

(assert (=> b!1246654 (= e!707092 e!707090)))

(declare-fun res!832006 () Bool)

(assert (=> b!1246654 (=> (not res!832006) (not e!707090))))

(assert (=> b!1246654 (= res!832006 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!563116 () Unit!41395)

(assert (=> b!1246654 (= lt!563116 e!707089)))

(declare-fun c!122010 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246654 (= c!122010 (validKeyInArray!0 (select (arr!38693 a!3892) from!3270)))))

(declare-fun b!1246655 () Bool)

(declare-fun lt!563117 () Unit!41395)

(assert (=> b!1246655 (= e!707089 lt!563117)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80244 List!27674 List!27674 (_ BitVec 32)) Unit!41395)

(assert (=> b!1246655 (= lt!563117 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27670 (select (arr!38693 a!3892) from!3270) Nil!27671) Nil!27671 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246655 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27671)))

(declare-fun b!1246656 () Bool)

(assert (=> b!1246656 (= e!707090 (bvsge (bvsub newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270)) (bvsub newFrom!287 from!3270)))))

(declare-fun b!1246657 () Bool)

(declare-fun res!832007 () Bool)

(assert (=> b!1246657 (=> (not res!832007) (not e!707092))))

(assert (=> b!1246657 (= res!832007 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27671))))

(assert (= (and start!104528 res!832008) b!1246657))

(assert (= (and b!1246657 res!832007) b!1246652))

(assert (= (and b!1246652 res!832009) b!1246654))

(assert (= (and b!1246654 c!122010) b!1246655))

(assert (= (and b!1246654 (not c!122010)) b!1246651))

(assert (= (and b!1246654 res!832006) b!1246653))

(assert (= (and b!1246653 res!832005) b!1246656))

(declare-fun m!1148441 () Bool)

(assert (=> b!1246657 m!1148441))

(declare-fun m!1148443 () Bool)

(assert (=> start!104528 m!1148443))

(declare-fun m!1148445 () Bool)

(assert (=> b!1246653 m!1148445))

(declare-fun m!1148447 () Bool)

(assert (=> b!1246654 m!1148447))

(assert (=> b!1246654 m!1148447))

(declare-fun m!1148449 () Bool)

(assert (=> b!1246654 m!1148449))

(assert (=> b!1246655 m!1148447))

(declare-fun m!1148451 () Bool)

(assert (=> b!1246655 m!1148451))

(assert (=> b!1246655 m!1148445))

(push 1)

(assert (not b!1246653))

(assert (not b!1246655))

(assert (not start!104528))

(assert (not b!1246654))

(assert (not b!1246657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

