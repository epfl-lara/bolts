; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103980 () Bool)

(assert start!103980)

(declare-fun res!829943 () Bool)

(declare-fun e!705183 () Bool)

(assert (=> start!103980 (=> (not res!829943) (not e!705183))))

(declare-datatypes ((array!80018 0))(
  ( (array!80019 (arr!38598 (Array (_ BitVec 32) (_ BitVec 64))) (size!39135 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80018)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103980 (= res!829943 (and (bvslt (size!39135 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39135 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39135 a!3892))))))

(assert (=> start!103980 e!705183))

(declare-fun array_inv!29374 (array!80018) Bool)

(assert (=> start!103980 (array_inv!29374 a!3892)))

(assert (=> start!103980 true))

(declare-fun b!1244098 () Bool)

(declare-fun e!705184 () Bool)

(assert (=> b!1244098 (= e!705183 e!705184)))

(declare-fun res!829942 () Bool)

(assert (=> b!1244098 (=> (not res!829942) (not e!705184))))

(assert (=> b!1244098 (= res!829942 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41284 0))(
  ( (Unit!41285) )
))
(declare-fun lt!562571 () Unit!41284)

(declare-fun e!705185 () Unit!41284)

(assert (=> b!1244098 (= lt!562571 e!705185)))

(declare-fun c!121765 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244098 (= c!121765 (validKeyInArray!0 (select (arr!38598 a!3892) from!3270)))))

(declare-fun b!1244099 () Bool)

(declare-fun lt!562573 () Unit!41284)

(assert (=> b!1244099 (= e!705185 lt!562573)))

(declare-datatypes ((List!27579 0))(
  ( (Nil!27576) (Cons!27575 (h!28784 (_ BitVec 64)) (t!41055 List!27579)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80018 List!27579 List!27579 (_ BitVec 32)) Unit!41284)

(assert (=> b!1244099 (= lt!562573 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27575 (select (arr!38598 a!3892) from!3270) Nil!27576) Nil!27576 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80018 (_ BitVec 32) List!27579) Bool)

(assert (=> b!1244099 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27576)))

(declare-fun b!1244100 () Bool)

(declare-fun res!829945 () Bool)

(assert (=> b!1244100 (=> (not res!829945) (not e!705183))))

(assert (=> b!1244100 (= res!829945 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27576))))

(declare-fun b!1244101 () Bool)

(declare-fun Unit!41286 () Unit!41284)

(assert (=> b!1244101 (= e!705185 Unit!41286)))

(declare-fun b!1244102 () Bool)

(assert (=> b!1244102 (= e!705184 false)))

(declare-fun lt!562572 () Bool)

(assert (=> b!1244102 (= lt!562572 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27576))))

(declare-fun b!1244103 () Bool)

(declare-fun res!829944 () Bool)

(assert (=> b!1244103 (=> (not res!829944) (not e!705183))))

(assert (=> b!1244103 (= res!829944 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39135 a!3892)) (not (= newFrom!287 (size!39135 a!3892)))))))

(assert (= (and start!103980 res!829943) b!1244100))

(assert (= (and b!1244100 res!829945) b!1244103))

(assert (= (and b!1244103 res!829944) b!1244098))

(assert (= (and b!1244098 c!121765) b!1244099))

(assert (= (and b!1244098 (not c!121765)) b!1244101))

(assert (= (and b!1244098 res!829942) b!1244102))

(declare-fun m!1146477 () Bool)

(assert (=> b!1244098 m!1146477))

(assert (=> b!1244098 m!1146477))

(declare-fun m!1146479 () Bool)

(assert (=> b!1244098 m!1146479))

(declare-fun m!1146481 () Bool)

(assert (=> start!103980 m!1146481))

(declare-fun m!1146483 () Bool)

(assert (=> b!1244102 m!1146483))

(assert (=> b!1244099 m!1146477))

(declare-fun m!1146485 () Bool)

(assert (=> b!1244099 m!1146485))

(assert (=> b!1244099 m!1146483))

(declare-fun m!1146487 () Bool)

(assert (=> b!1244100 m!1146487))

(push 1)

(assert (not start!103980))

(assert (not b!1244098))

(assert (not b!1244100))

(assert (not b!1244102))

