; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103986 () Bool)

(assert start!103986)

(declare-fun res!829980 () Bool)

(declare-fun e!705221 () Bool)

(assert (=> start!103986 (=> (not res!829980) (not e!705221))))

(declare-datatypes ((array!80024 0))(
  ( (array!80025 (arr!38601 (Array (_ BitVec 32) (_ BitVec 64))) (size!39138 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80024)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103986 (= res!829980 (and (bvslt (size!39138 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39138 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39138 a!3892))))))

(assert (=> start!103986 e!705221))

(declare-fun array_inv!29377 (array!80024) Bool)

(assert (=> start!103986 (array_inv!29377 a!3892)))

(assert (=> start!103986 true))

(declare-fun b!1244152 () Bool)

(declare-datatypes ((Unit!41293 0))(
  ( (Unit!41294) )
))
(declare-fun e!705219 () Unit!41293)

(declare-fun Unit!41295 () Unit!41293)

(assert (=> b!1244152 (= e!705219 Unit!41295)))

(declare-fun b!1244153 () Bool)

(declare-fun res!829978 () Bool)

(assert (=> b!1244153 (=> (not res!829978) (not e!705221))))

(assert (=> b!1244153 (= res!829978 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39138 a!3892)) (not (= newFrom!287 (size!39138 a!3892)))))))

(declare-fun b!1244154 () Bool)

(declare-fun lt!562600 () Unit!41293)

(assert (=> b!1244154 (= e!705219 lt!562600)))

(declare-datatypes ((List!27582 0))(
  ( (Nil!27579) (Cons!27578 (h!28787 (_ BitVec 64)) (t!41058 List!27582)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80024 List!27582 List!27582 (_ BitVec 32)) Unit!41293)

(assert (=> b!1244154 (= lt!562600 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27578 (select (arr!38601 a!3892) from!3270) Nil!27579) Nil!27579 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80024 (_ BitVec 32) List!27582) Bool)

(assert (=> b!1244154 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27579)))

(declare-fun b!1244155 () Bool)

(declare-fun res!829981 () Bool)

(assert (=> b!1244155 (=> (not res!829981) (not e!705221))))

(assert (=> b!1244155 (= res!829981 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27579))))

(declare-fun b!1244156 () Bool)

(declare-fun e!705220 () Bool)

(assert (=> b!1244156 (= e!705220 false)))

(declare-fun lt!562598 () Bool)

(assert (=> b!1244156 (= lt!562598 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27579))))

(declare-fun b!1244157 () Bool)

(assert (=> b!1244157 (= e!705221 e!705220)))

(declare-fun res!829979 () Bool)

(assert (=> b!1244157 (=> (not res!829979) (not e!705220))))

(assert (=> b!1244157 (= res!829979 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562599 () Unit!41293)

(assert (=> b!1244157 (= lt!562599 e!705219)))

(declare-fun c!121774 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244157 (= c!121774 (validKeyInArray!0 (select (arr!38601 a!3892) from!3270)))))

(assert (= (and start!103986 res!829980) b!1244155))

(assert (= (and b!1244155 res!829981) b!1244153))

(assert (= (and b!1244153 res!829978) b!1244157))

(assert (= (and b!1244157 c!121774) b!1244154))

(assert (= (and b!1244157 (not c!121774)) b!1244152))

(assert (= (and b!1244157 res!829979) b!1244156))

(declare-fun m!1146513 () Bool)

(assert (=> b!1244155 m!1146513))

(declare-fun m!1146515 () Bool)

(assert (=> start!103986 m!1146515))

(declare-fun m!1146517 () Bool)

(assert (=> b!1244157 m!1146517))

(assert (=> b!1244157 m!1146517))

(declare-fun m!1146519 () Bool)

(assert (=> b!1244157 m!1146519))

(assert (=> b!1244154 m!1146517))

(declare-fun m!1146521 () Bool)

(assert (=> b!1244154 m!1146521))

(declare-fun m!1146523 () Bool)

(assert (=> b!1244154 m!1146523))

(assert (=> b!1244156 m!1146523))

(push 1)

(assert (not b!1244157))

(assert (not b!1244154))

(assert (not start!103986))

(assert (not b!1244156))

(assert (not b!1244155))

(check-sat)

(pop 1)

