; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104472 () Bool)

(assert start!104472)

(declare-fun b!1246326 () Bool)

(declare-fun res!831802 () Bool)

(declare-fun e!706880 () Bool)

(assert (=> b!1246326 (=> (not res!831802) (not e!706880))))

(declare-datatypes ((array!80209 0))(
  ( (array!80210 (arr!38677 (Array (_ BitVec 32) (_ BitVec 64))) (size!39214 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80209)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27658 0))(
  ( (Nil!27655) (Cons!27654 (h!28863 (_ BitVec 64)) (t!41134 List!27658)) )
))
(declare-fun arrayNoDuplicates!0 (array!80209 (_ BitVec 32) List!27658) Bool)

(assert (=> b!1246326 (= res!831802 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27655))))

(declare-fun b!1246327 () Bool)

(declare-fun res!831800 () Bool)

(assert (=> b!1246327 (=> (not res!831800) (not e!706880))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246327 (= res!831800 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39214 a!3892)) (not (= newFrom!287 (size!39214 a!3892)))))))

(declare-fun b!1246328 () Bool)

(declare-datatypes ((Unit!41347 0))(
  ( (Unit!41348) )
))
(declare-fun e!706882 () Unit!41347)

(declare-fun Unit!41349 () Unit!41347)

(assert (=> b!1246328 (= e!706882 Unit!41349)))

(declare-fun res!831801 () Bool)

(assert (=> start!104472 (=> (not res!831801) (not e!706880))))

(assert (=> start!104472 (= res!831801 (and (bvslt (size!39214 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39214 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39214 a!3892))))))

(assert (=> start!104472 e!706880))

(declare-fun array_inv!29453 (array!80209) Bool)

(assert (=> start!104472 (array_inv!29453 a!3892)))

(assert (=> start!104472 true))

(declare-fun b!1246329 () Bool)

(declare-fun lt!563011 () Unit!41347)

(assert (=> b!1246329 (= e!706882 lt!563011)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80209 List!27658 List!27658 (_ BitVec 32)) Unit!41347)

(assert (=> b!1246329 (= lt!563011 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27654 (select (arr!38677 a!3892) from!3270) Nil!27655) Nil!27655 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246329 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27655)))

(declare-fun b!1246330 () Bool)

(assert (=> b!1246330 (= e!706880 false)))

(declare-fun lt!563012 () Unit!41347)

(assert (=> b!1246330 (= lt!563012 e!706882)))

(declare-fun c!121950 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246330 (= c!121950 (validKeyInArray!0 (select (arr!38677 a!3892) from!3270)))))

(assert (= (and start!104472 res!831801) b!1246326))

(assert (= (and b!1246326 res!831802) b!1246327))

(assert (= (and b!1246327 res!831800) b!1246330))

(assert (= (and b!1246330 c!121950) b!1246329))

(assert (= (and b!1246330 (not c!121950)) b!1246328))

(declare-fun m!1148207 () Bool)

(assert (=> b!1246326 m!1148207))

(declare-fun m!1148209 () Bool)

(assert (=> start!104472 m!1148209))

(declare-fun m!1148211 () Bool)

(assert (=> b!1246329 m!1148211))

(declare-fun m!1148213 () Bool)

(assert (=> b!1246329 m!1148213))

(declare-fun m!1148215 () Bool)

(assert (=> b!1246329 m!1148215))

(assert (=> b!1246330 m!1148211))

(assert (=> b!1246330 m!1148211))

(declare-fun m!1148217 () Bool)

(assert (=> b!1246330 m!1148217))

(check-sat (not b!1246329) (not b!1246330) (not start!104472) (not b!1246326))
