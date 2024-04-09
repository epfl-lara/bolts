; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103978 () Bool)

(assert start!103978)

(declare-fun b!1244080 () Bool)

(declare-fun res!829932 () Bool)

(declare-fun e!705171 () Bool)

(assert (=> b!1244080 (=> (not res!829932) (not e!705171))))

(declare-datatypes ((array!80016 0))(
  ( (array!80017 (arr!38597 (Array (_ BitVec 32) (_ BitVec 64))) (size!39134 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80016)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1244080 (= res!829932 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39134 a!3892)) (not (= newFrom!287 (size!39134 a!3892)))))))

(declare-fun b!1244081 () Bool)

(declare-fun res!829930 () Bool)

(assert (=> b!1244081 (=> (not res!829930) (not e!705171))))

(declare-datatypes ((List!27578 0))(
  ( (Nil!27575) (Cons!27574 (h!28783 (_ BitVec 64)) (t!41054 List!27578)) )
))
(declare-fun arrayNoDuplicates!0 (array!80016 (_ BitVec 32) List!27578) Bool)

(assert (=> b!1244081 (= res!829930 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27575))))

(declare-fun b!1244082 () Bool)

(declare-fun e!705170 () Bool)

(assert (=> b!1244082 (= e!705171 e!705170)))

(declare-fun res!829933 () Bool)

(assert (=> b!1244082 (=> (not res!829933) (not e!705170))))

(assert (=> b!1244082 (= res!829933 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41281 0))(
  ( (Unit!41282) )
))
(declare-fun lt!562563 () Unit!41281)

(declare-fun e!705173 () Unit!41281)

(assert (=> b!1244082 (= lt!562563 e!705173)))

(declare-fun c!121762 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244082 (= c!121762 (validKeyInArray!0 (select (arr!38597 a!3892) from!3270)))))

(declare-fun b!1244083 () Bool)

(assert (=> b!1244083 (= e!705170 false)))

(declare-fun lt!562564 () Bool)

(assert (=> b!1244083 (= lt!562564 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27575))))

(declare-fun b!1244084 () Bool)

(declare-fun Unit!41283 () Unit!41281)

(assert (=> b!1244084 (= e!705173 Unit!41283)))

(declare-fun b!1244085 () Bool)

(declare-fun lt!562562 () Unit!41281)

(assert (=> b!1244085 (= e!705173 lt!562562)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80016 List!27578 List!27578 (_ BitVec 32)) Unit!41281)

(assert (=> b!1244085 (= lt!562562 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27574 (select (arr!38597 a!3892) from!3270) Nil!27575) Nil!27575 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244085 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27575)))

(declare-fun res!829931 () Bool)

(assert (=> start!103978 (=> (not res!829931) (not e!705171))))

(assert (=> start!103978 (= res!829931 (and (bvslt (size!39134 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39134 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39134 a!3892))))))

(assert (=> start!103978 e!705171))

(declare-fun array_inv!29373 (array!80016) Bool)

(assert (=> start!103978 (array_inv!29373 a!3892)))

(assert (=> start!103978 true))

(assert (= (and start!103978 res!829931) b!1244081))

(assert (= (and b!1244081 res!829930) b!1244080))

(assert (= (and b!1244080 res!829932) b!1244082))

(assert (= (and b!1244082 c!121762) b!1244085))

(assert (= (and b!1244082 (not c!121762)) b!1244084))

(assert (= (and b!1244082 res!829933) b!1244083))

(declare-fun m!1146465 () Bool)

(assert (=> b!1244081 m!1146465))

(declare-fun m!1146467 () Bool)

(assert (=> b!1244083 m!1146467))

(declare-fun m!1146469 () Bool)

(assert (=> start!103978 m!1146469))

(declare-fun m!1146471 () Bool)

(assert (=> b!1244085 m!1146471))

(declare-fun m!1146473 () Bool)

(assert (=> b!1244085 m!1146473))

(assert (=> b!1244085 m!1146467))

(assert (=> b!1244082 m!1146471))

(assert (=> b!1244082 m!1146471))

(declare-fun m!1146475 () Bool)

(assert (=> b!1244082 m!1146475))

(push 1)

(assert (not b!1244082))

(assert (not b!1244083))

(assert (not b!1244085))

(assert (not b!1244081))

(assert (not start!103978))

(check-sat)

