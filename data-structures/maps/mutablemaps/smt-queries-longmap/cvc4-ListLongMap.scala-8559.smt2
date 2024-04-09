; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104558 () Bool)

(assert start!104558)

(declare-fun res!832142 () Bool)

(declare-fun e!707211 () Bool)

(assert (=> start!104558 (=> (not res!832142) (not e!707211))))

(declare-datatypes ((array!80265 0))(
  ( (array!80266 (arr!38702 (Array (_ BitVec 32) (_ BitVec 64))) (size!39239 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80265)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104558 (= res!832142 (and (bvslt (size!39239 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39239 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39239 a!3892))))))

(assert (=> start!104558 e!707211))

(declare-fun array_inv!29478 (array!80265) Bool)

(assert (=> start!104558 (array_inv!29478 a!3892)))

(assert (=> start!104558 true))

(declare-fun b!1246832 () Bool)

(declare-fun res!832144 () Bool)

(assert (=> b!1246832 (=> (not res!832144) (not e!707211))))

(declare-datatypes ((List!27683 0))(
  ( (Nil!27680) (Cons!27679 (h!28888 (_ BitVec 64)) (t!41159 List!27683)) )
))
(declare-fun arrayNoDuplicates!0 (array!80265 (_ BitVec 32) List!27683) Bool)

(assert (=> b!1246832 (= res!832144 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27680))))

(declare-fun b!1246833 () Bool)

(declare-fun res!832143 () Bool)

(assert (=> b!1246833 (=> (not res!832143) (not e!707211))))

(assert (=> b!1246833 (= res!832143 (= from!3270 newFrom!287))))

(declare-fun b!1246834 () Bool)

(assert (=> b!1246834 (= e!707211 (not (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27680)))))

(assert (= (and start!104558 res!832142) b!1246832))

(assert (= (and b!1246832 res!832144) b!1246833))

(assert (= (and b!1246833 res!832143) b!1246834))

(declare-fun m!1148579 () Bool)

(assert (=> start!104558 m!1148579))

(declare-fun m!1148581 () Bool)

(assert (=> b!1246832 m!1148581))

(declare-fun m!1148583 () Bool)

(assert (=> b!1246834 m!1148583))

(push 1)

