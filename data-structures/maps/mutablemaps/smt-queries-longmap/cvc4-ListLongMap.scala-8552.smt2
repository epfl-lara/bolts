; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104480 () Bool)

(assert start!104480)

(declare-fun b!1246386 () Bool)

(declare-fun res!831838 () Bool)

(declare-fun e!706916 () Bool)

(assert (=> b!1246386 (=> (not res!831838) (not e!706916))))

(declare-datatypes ((array!80217 0))(
  ( (array!80218 (arr!38681 (Array (_ BitVec 32) (_ BitVec 64))) (size!39218 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80217)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1246386 (= res!831838 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39218 a!3892)) (not (= newFrom!287 (size!39218 a!3892)))))))

(declare-fun b!1246387 () Bool)

(assert (=> b!1246387 (= e!706916 (bvslt (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41359 0))(
  ( (Unit!41360) )
))
(declare-fun lt!563036 () Unit!41359)

(declare-fun e!706918 () Unit!41359)

(assert (=> b!1246387 (= lt!563036 e!706918)))

(declare-fun c!121962 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246387 (= c!121962 (validKeyInArray!0 (select (arr!38681 a!3892) from!3270)))))

(declare-fun b!1246389 () Bool)

(declare-fun Unit!41361 () Unit!41359)

(assert (=> b!1246389 (= e!706918 Unit!41361)))

(declare-fun b!1246390 () Bool)

(declare-fun lt!563035 () Unit!41359)

(assert (=> b!1246390 (= e!706918 lt!563035)))

(declare-datatypes ((List!27662 0))(
  ( (Nil!27659) (Cons!27658 (h!28867 (_ BitVec 64)) (t!41138 List!27662)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80217 List!27662 List!27662 (_ BitVec 32)) Unit!41359)

(assert (=> b!1246390 (= lt!563035 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27658 (select (arr!38681 a!3892) from!3270) Nil!27659) Nil!27659 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80217 (_ BitVec 32) List!27662) Bool)

(assert (=> b!1246390 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27659)))

(declare-fun b!1246388 () Bool)

(declare-fun res!831837 () Bool)

(assert (=> b!1246388 (=> (not res!831837) (not e!706916))))

(assert (=> b!1246388 (= res!831837 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27659))))

(declare-fun res!831836 () Bool)

(assert (=> start!104480 (=> (not res!831836) (not e!706916))))

(assert (=> start!104480 (= res!831836 (and (bvslt (size!39218 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39218 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39218 a!3892))))))

(assert (=> start!104480 e!706916))

(declare-fun array_inv!29457 (array!80217) Bool)

(assert (=> start!104480 (array_inv!29457 a!3892)))

(assert (=> start!104480 true))

(assert (= (and start!104480 res!831836) b!1246388))

(assert (= (and b!1246388 res!831837) b!1246386))

(assert (= (and b!1246386 res!831838) b!1246387))

(assert (= (and b!1246387 c!121962) b!1246390))

(assert (= (and b!1246387 (not c!121962)) b!1246389))

(declare-fun m!1148255 () Bool)

(assert (=> b!1246387 m!1148255))

(assert (=> b!1246387 m!1148255))

(declare-fun m!1148257 () Bool)

(assert (=> b!1246387 m!1148257))

(assert (=> b!1246390 m!1148255))

(declare-fun m!1148259 () Bool)

(assert (=> b!1246390 m!1148259))

(declare-fun m!1148261 () Bool)

(assert (=> b!1246390 m!1148261))

(declare-fun m!1148263 () Bool)

(assert (=> b!1246388 m!1148263))

(declare-fun m!1148265 () Bool)

(assert (=> start!104480 m!1148265))

(push 1)

(assert (not b!1246387))

(assert (not start!104480))

(assert (not b!1246390))

(assert (not b!1246388))

(check-sat)

(pop 1)

