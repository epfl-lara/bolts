; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104470 () Bool)

(assert start!104470)

(declare-fun b!1246311 () Bool)

(declare-datatypes ((Unit!41344 0))(
  ( (Unit!41345) )
))
(declare-fun e!706873 () Unit!41344)

(declare-fun lt!563005 () Unit!41344)

(assert (=> b!1246311 (= e!706873 lt!563005)))

(declare-datatypes ((array!80207 0))(
  ( (array!80208 (arr!38676 (Array (_ BitVec 32) (_ BitVec 64))) (size!39213 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80207)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27657 0))(
  ( (Nil!27654) (Cons!27653 (h!28862 (_ BitVec 64)) (t!41133 List!27657)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80207 List!27657 List!27657 (_ BitVec 32)) Unit!41344)

(assert (=> b!1246311 (= lt!563005 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27653 (select (arr!38676 a!3892) from!3270) Nil!27654) Nil!27654 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80207 (_ BitVec 32) List!27657) Bool)

(assert (=> b!1246311 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27654)))

(declare-fun b!1246312 () Bool)

(declare-fun res!831791 () Bool)

(declare-fun e!706871 () Bool)

(assert (=> b!1246312 (=> (not res!831791) (not e!706871))))

(assert (=> b!1246312 (= res!831791 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27654))))

(declare-fun res!831792 () Bool)

(assert (=> start!104470 (=> (not res!831792) (not e!706871))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104470 (= res!831792 (and (bvslt (size!39213 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39213 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39213 a!3892))))))

(assert (=> start!104470 e!706871))

(declare-fun array_inv!29452 (array!80207) Bool)

(assert (=> start!104470 (array_inv!29452 a!3892)))

(assert (=> start!104470 true))

(declare-fun b!1246313 () Bool)

(assert (=> b!1246313 (= e!706871 false)))

(declare-fun lt!563006 () Unit!41344)

(assert (=> b!1246313 (= lt!563006 e!706873)))

(declare-fun c!121947 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246313 (= c!121947 (validKeyInArray!0 (select (arr!38676 a!3892) from!3270)))))

(declare-fun b!1246314 () Bool)

(declare-fun Unit!41346 () Unit!41344)

(assert (=> b!1246314 (= e!706873 Unit!41346)))

(declare-fun b!1246315 () Bool)

(declare-fun res!831793 () Bool)

(assert (=> b!1246315 (=> (not res!831793) (not e!706871))))

(assert (=> b!1246315 (= res!831793 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39213 a!3892)) (not (= newFrom!287 (size!39213 a!3892)))))))

(assert (= (and start!104470 res!831792) b!1246312))

(assert (= (and b!1246312 res!831791) b!1246315))

(assert (= (and b!1246315 res!831793) b!1246313))

(assert (= (and b!1246313 c!121947) b!1246311))

(assert (= (and b!1246313 (not c!121947)) b!1246314))

(declare-fun m!1148195 () Bool)

(assert (=> b!1246311 m!1148195))

(declare-fun m!1148197 () Bool)

(assert (=> b!1246311 m!1148197))

(declare-fun m!1148199 () Bool)

(assert (=> b!1246311 m!1148199))

(declare-fun m!1148201 () Bool)

(assert (=> b!1246312 m!1148201))

(declare-fun m!1148203 () Bool)

(assert (=> start!104470 m!1148203))

(assert (=> b!1246313 m!1148195))

(assert (=> b!1246313 m!1148195))

(declare-fun m!1148205 () Bool)

(assert (=> b!1246313 m!1148205))

(push 1)

(assert (not b!1246312))

(assert (not b!1246313))

(assert (not start!104470))

(assert (not b!1246311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

