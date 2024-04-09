; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104524 () Bool)

(assert start!104524)

(declare-fun b!1246609 () Bool)

(declare-fun res!831977 () Bool)

(declare-fun e!707068 () Bool)

(assert (=> b!1246609 (=> (not res!831977) (not e!707068))))

(declare-datatypes ((array!80240 0))(
  ( (array!80241 (arr!38691 (Array (_ BitVec 32) (_ BitVec 64))) (size!39228 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80240)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27672 0))(
  ( (Nil!27669) (Cons!27668 (h!28877 (_ BitVec 64)) (t!41148 List!27672)) )
))
(declare-fun arrayNoDuplicates!0 (array!80240 (_ BitVec 32) List!27672) Bool)

(assert (=> b!1246609 (= res!831977 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27669))))

(declare-fun b!1246610 () Bool)

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1246610 (= e!707068 (bvsge (bvsub newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270)) (bvsub newFrom!287 from!3270)))))

(declare-fun b!1246612 () Bool)

(declare-datatypes ((Unit!41389 0))(
  ( (Unit!41390) )
))
(declare-fun e!707065 () Unit!41389)

(declare-fun lt!563105 () Unit!41389)

(assert (=> b!1246612 (= e!707065 lt!563105)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80240 List!27672 List!27672 (_ BitVec 32)) Unit!41389)

(assert (=> b!1246612 (= lt!563105 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27668 (select (arr!38691 a!3892) from!3270) Nil!27669) Nil!27669 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246612 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27669)))

(declare-fun b!1246613 () Bool)

(declare-fun res!831975 () Bool)

(declare-fun e!707067 () Bool)

(assert (=> b!1246613 (=> (not res!831975) (not e!707067))))

(assert (=> b!1246613 (= res!831975 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27669))))

(declare-fun b!1246614 () Bool)

(declare-fun res!831976 () Bool)

(assert (=> b!1246614 (=> (not res!831976) (not e!707067))))

(assert (=> b!1246614 (= res!831976 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39228 a!3892)) (not (= newFrom!287 (size!39228 a!3892)))))))

(declare-fun b!1246615 () Bool)

(declare-fun Unit!41391 () Unit!41389)

(assert (=> b!1246615 (= e!707065 Unit!41391)))

(declare-fun b!1246611 () Bool)

(assert (=> b!1246611 (= e!707067 e!707068)))

(declare-fun res!831978 () Bool)

(assert (=> b!1246611 (=> (not res!831978) (not e!707068))))

(assert (=> b!1246611 (= res!831978 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!563104 () Unit!41389)

(assert (=> b!1246611 (= lt!563104 e!707065)))

(declare-fun c!122004 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246611 (= c!122004 (validKeyInArray!0 (select (arr!38691 a!3892) from!3270)))))

(declare-fun res!831979 () Bool)

(assert (=> start!104524 (=> (not res!831979) (not e!707067))))

(assert (=> start!104524 (= res!831979 (and (bvslt (size!39228 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39228 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39228 a!3892))))))

(assert (=> start!104524 e!707067))

(declare-fun array_inv!29467 (array!80240) Bool)

(assert (=> start!104524 (array_inv!29467 a!3892)))

(assert (=> start!104524 true))

(assert (= (and start!104524 res!831979) b!1246613))

(assert (= (and b!1246613 res!831975) b!1246614))

(assert (= (and b!1246614 res!831976) b!1246611))

(assert (= (and b!1246611 c!122004) b!1246612))

(assert (= (and b!1246611 (not c!122004)) b!1246615))

(assert (= (and b!1246611 res!831978) b!1246609))

(assert (= (and b!1246609 res!831977) b!1246610))

(declare-fun m!1148417 () Bool)

(assert (=> b!1246609 m!1148417))

(declare-fun m!1148419 () Bool)

(assert (=> b!1246612 m!1148419))

(declare-fun m!1148421 () Bool)

(assert (=> b!1246612 m!1148421))

(assert (=> b!1246612 m!1148417))

(assert (=> b!1246611 m!1148419))

(assert (=> b!1246611 m!1148419))

(declare-fun m!1148423 () Bool)

(assert (=> b!1246611 m!1148423))

(declare-fun m!1148425 () Bool)

(assert (=> b!1246613 m!1148425))

(declare-fun m!1148427 () Bool)

(assert (=> start!104524 m!1148427))

(push 1)

(assert (not start!104524))

(assert (not b!1246613))

(assert (not b!1246612))

(assert (not b!1246609))

(assert (not b!1246611))

(check-sat)

(pop 1)

(push 1)

(check-sat)

