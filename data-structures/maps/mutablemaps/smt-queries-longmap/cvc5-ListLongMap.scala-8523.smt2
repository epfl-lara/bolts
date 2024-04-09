; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103968 () Bool)

(assert start!103968)

(declare-fun b!1243990 () Bool)

(declare-datatypes ((Unit!41266 0))(
  ( (Unit!41267) )
))
(declare-fun e!705112 () Unit!41266)

(declare-fun lt!562519 () Unit!41266)

(assert (=> b!1243990 (= e!705112 lt!562519)))

(declare-datatypes ((array!80006 0))(
  ( (array!80007 (arr!38592 (Array (_ BitVec 32) (_ BitVec 64))) (size!39129 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80006)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27573 0))(
  ( (Nil!27570) (Cons!27569 (h!28778 (_ BitVec 64)) (t!41049 List!27573)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80006 List!27573 List!27573 (_ BitVec 32)) Unit!41266)

(assert (=> b!1243990 (= lt!562519 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27569 (select (arr!38592 a!3892) from!3270) Nil!27570) Nil!27570 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80006 (_ BitVec 32) List!27573) Bool)

(assert (=> b!1243990 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27570)))

(declare-fun b!1243991 () Bool)

(declare-fun e!705111 () Bool)

(declare-fun e!705110 () Bool)

(assert (=> b!1243991 (= e!705111 e!705110)))

(declare-fun res!829871 () Bool)

(assert (=> b!1243991 (=> (not res!829871) (not e!705110))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1243991 (= res!829871 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562518 () Unit!41266)

(assert (=> b!1243991 (= lt!562518 e!705112)))

(declare-fun c!121747 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243991 (= c!121747 (validKeyInArray!0 (select (arr!38592 a!3892) from!3270)))))

(declare-fun b!1243992 () Bool)

(declare-fun Unit!41268 () Unit!41266)

(assert (=> b!1243992 (= e!705112 Unit!41268)))

(declare-fun b!1243993 () Bool)

(declare-fun res!829873 () Bool)

(assert (=> b!1243993 (=> (not res!829873) (not e!705111))))

(assert (=> b!1243993 (= res!829873 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39129 a!3892)) (not (= newFrom!287 (size!39129 a!3892)))))))

(declare-fun res!829872 () Bool)

(assert (=> start!103968 (=> (not res!829872) (not e!705111))))

(assert (=> start!103968 (= res!829872 (and (bvslt (size!39129 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39129 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39129 a!3892))))))

(assert (=> start!103968 e!705111))

(declare-fun array_inv!29368 (array!80006) Bool)

(assert (=> start!103968 (array_inv!29368 a!3892)))

(assert (=> start!103968 true))

(declare-fun b!1243994 () Bool)

(declare-fun res!829870 () Bool)

(assert (=> b!1243994 (=> (not res!829870) (not e!705111))))

(assert (=> b!1243994 (= res!829870 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27570))))

(declare-fun b!1243995 () Bool)

(assert (=> b!1243995 (= e!705110 false)))

(declare-fun lt!562517 () Bool)

(assert (=> b!1243995 (= lt!562517 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27570))))

(assert (= (and start!103968 res!829872) b!1243994))

(assert (= (and b!1243994 res!829870) b!1243993))

(assert (= (and b!1243993 res!829873) b!1243991))

(assert (= (and b!1243991 c!121747) b!1243990))

(assert (= (and b!1243991 (not c!121747)) b!1243992))

(assert (= (and b!1243991 res!829871) b!1243995))

(declare-fun m!1146405 () Bool)

(assert (=> b!1243990 m!1146405))

(declare-fun m!1146407 () Bool)

(assert (=> b!1243990 m!1146407))

(declare-fun m!1146409 () Bool)

(assert (=> b!1243990 m!1146409))

(assert (=> b!1243991 m!1146405))

(assert (=> b!1243991 m!1146405))

(declare-fun m!1146411 () Bool)

(assert (=> b!1243991 m!1146411))

(assert (=> b!1243995 m!1146409))

(declare-fun m!1146413 () Bool)

(assert (=> start!103968 m!1146413))

(declare-fun m!1146415 () Bool)

(assert (=> b!1243994 m!1146415))

(push 1)

(assert (not start!103968))

(assert (not b!1243991))

(assert (not b!1243994))

(assert (not b!1243995))

(assert (not b!1243990))

