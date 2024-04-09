; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103984 () Bool)

(assert start!103984)

(declare-fun b!1244134 () Bool)

(declare-fun e!705208 () Bool)

(declare-fun e!705209 () Bool)

(assert (=> b!1244134 (= e!705208 e!705209)))

(declare-fun res!829968 () Bool)

(assert (=> b!1244134 (=> (not res!829968) (not e!705209))))

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244134 (= res!829968 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41290 0))(
  ( (Unit!41291) )
))
(declare-fun lt!562590 () Unit!41290)

(declare-fun e!705206 () Unit!41290)

(assert (=> b!1244134 (= lt!562590 e!705206)))

(declare-fun c!121771 () Bool)

(declare-datatypes ((array!80022 0))(
  ( (array!80023 (arr!38600 (Array (_ BitVec 32) (_ BitVec 64))) (size!39137 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80022)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244134 (= c!121771 (validKeyInArray!0 (select (arr!38600 a!3892) from!3270)))))

(declare-fun b!1244135 () Bool)

(declare-fun lt!562591 () Unit!41290)

(assert (=> b!1244135 (= e!705206 lt!562591)))

(declare-datatypes ((List!27581 0))(
  ( (Nil!27578) (Cons!27577 (h!28786 (_ BitVec 64)) (t!41057 List!27581)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80022 List!27581 List!27581 (_ BitVec 32)) Unit!41290)

(assert (=> b!1244135 (= lt!562591 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27577 (select (arr!38600 a!3892) from!3270) Nil!27578) Nil!27578 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80022 (_ BitVec 32) List!27581) Bool)

(assert (=> b!1244135 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27578)))

(declare-fun b!1244137 () Bool)

(declare-fun res!829967 () Bool)

(assert (=> b!1244137 (=> (not res!829967) (not e!705208))))

(assert (=> b!1244137 (= res!829967 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27578))))

(declare-fun b!1244138 () Bool)

(assert (=> b!1244138 (= e!705209 false)))

(declare-fun lt!562589 () Bool)

(assert (=> b!1244138 (= lt!562589 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27578))))

(declare-fun b!1244139 () Bool)

(declare-fun Unit!41292 () Unit!41290)

(assert (=> b!1244139 (= e!705206 Unit!41292)))

(declare-fun b!1244136 () Bool)

(declare-fun res!829969 () Bool)

(assert (=> b!1244136 (=> (not res!829969) (not e!705208))))

(assert (=> b!1244136 (= res!829969 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39137 a!3892)) (not (= newFrom!287 (size!39137 a!3892)))))))

(declare-fun res!829966 () Bool)

(assert (=> start!103984 (=> (not res!829966) (not e!705208))))

(assert (=> start!103984 (= res!829966 (and (bvslt (size!39137 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39137 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39137 a!3892))))))

(assert (=> start!103984 e!705208))

(declare-fun array_inv!29376 (array!80022) Bool)

(assert (=> start!103984 (array_inv!29376 a!3892)))

(assert (=> start!103984 true))

(assert (= (and start!103984 res!829966) b!1244137))

(assert (= (and b!1244137 res!829967) b!1244136))

(assert (= (and b!1244136 res!829969) b!1244134))

(assert (= (and b!1244134 c!121771) b!1244135))

(assert (= (and b!1244134 (not c!121771)) b!1244139))

(assert (= (and b!1244134 res!829968) b!1244138))

(declare-fun m!1146501 () Bool)

(assert (=> b!1244134 m!1146501))

(assert (=> b!1244134 m!1146501))

(declare-fun m!1146503 () Bool)

(assert (=> b!1244134 m!1146503))

(declare-fun m!1146505 () Bool)

(assert (=> b!1244137 m!1146505))

(assert (=> b!1244135 m!1146501))

(declare-fun m!1146507 () Bool)

(assert (=> b!1244135 m!1146507))

(declare-fun m!1146509 () Bool)

(assert (=> b!1244135 m!1146509))

(assert (=> b!1244138 m!1146509))

(declare-fun m!1146511 () Bool)

(assert (=> start!103984 m!1146511))

(push 1)

(assert (not start!103984))

(assert (not b!1244137))

(assert (not b!1244134))

(assert (not b!1244138))

(assert (not b!1244135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

