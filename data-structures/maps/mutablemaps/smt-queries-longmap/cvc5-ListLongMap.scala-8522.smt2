; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103962 () Bool)

(assert start!103962)

(declare-fun b!1243936 () Bool)

(declare-datatypes ((Unit!41257 0))(
  ( (Unit!41258) )
))
(declare-fun e!705074 () Unit!41257)

(declare-fun Unit!41259 () Unit!41257)

(assert (=> b!1243936 (= e!705074 Unit!41259)))

(declare-fun b!1243937 () Bool)

(declare-fun res!829834 () Bool)

(declare-fun e!705075 () Bool)

(assert (=> b!1243937 (=> (not res!829834) (not e!705075))))

(declare-datatypes ((array!80000 0))(
  ( (array!80001 (arr!38589 (Array (_ BitVec 32) (_ BitVec 64))) (size!39126 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80000)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27570 0))(
  ( (Nil!27567) (Cons!27566 (h!28775 (_ BitVec 64)) (t!41046 List!27570)) )
))
(declare-fun arrayNoDuplicates!0 (array!80000 (_ BitVec 32) List!27570) Bool)

(assert (=> b!1243937 (= res!829834 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27567))))

(declare-fun b!1243938 () Bool)

(declare-fun e!705077 () Bool)

(assert (=> b!1243938 (= e!705075 e!705077)))

(declare-fun res!829836 () Bool)

(assert (=> b!1243938 (=> (not res!829836) (not e!705077))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1243938 (= res!829836 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562491 () Unit!41257)

(assert (=> b!1243938 (= lt!562491 e!705074)))

(declare-fun c!121738 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243938 (= c!121738 (validKeyInArray!0 (select (arr!38589 a!3892) from!3270)))))

(declare-fun b!1243939 () Bool)

(declare-fun res!829835 () Bool)

(assert (=> b!1243939 (=> (not res!829835) (not e!705075))))

(assert (=> b!1243939 (= res!829835 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39126 a!3892)) (not (= newFrom!287 (size!39126 a!3892)))))))

(declare-fun res!829837 () Bool)

(assert (=> start!103962 (=> (not res!829837) (not e!705075))))

(assert (=> start!103962 (= res!829837 (and (bvslt (size!39126 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39126 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39126 a!3892))))))

(assert (=> start!103962 e!705075))

(declare-fun array_inv!29365 (array!80000) Bool)

(assert (=> start!103962 (array_inv!29365 a!3892)))

(assert (=> start!103962 true))

(declare-fun b!1243940 () Bool)

(assert (=> b!1243940 (= e!705077 false)))

(declare-fun lt!562492 () Bool)

(assert (=> b!1243940 (= lt!562492 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27567))))

(declare-fun b!1243941 () Bool)

(declare-fun lt!562490 () Unit!41257)

(assert (=> b!1243941 (= e!705074 lt!562490)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80000 List!27570 List!27570 (_ BitVec 32)) Unit!41257)

(assert (=> b!1243941 (= lt!562490 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27566 (select (arr!38589 a!3892) from!3270) Nil!27567) Nil!27567 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1243941 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27567)))

(assert (= (and start!103962 res!829837) b!1243937))

(assert (= (and b!1243937 res!829834) b!1243939))

(assert (= (and b!1243939 res!829835) b!1243938))

(assert (= (and b!1243938 c!121738) b!1243941))

(assert (= (and b!1243938 (not c!121738)) b!1243936))

(assert (= (and b!1243938 res!829836) b!1243940))

(declare-fun m!1146369 () Bool)

(assert (=> start!103962 m!1146369))

(declare-fun m!1146371 () Bool)

(assert (=> b!1243938 m!1146371))

(assert (=> b!1243938 m!1146371))

(declare-fun m!1146373 () Bool)

(assert (=> b!1243938 m!1146373))

(declare-fun m!1146375 () Bool)

(assert (=> b!1243940 m!1146375))

(declare-fun m!1146377 () Bool)

(assert (=> b!1243937 m!1146377))

(assert (=> b!1243941 m!1146371))

(declare-fun m!1146379 () Bool)

(assert (=> b!1243941 m!1146379))

(assert (=> b!1243941 m!1146375))

(push 1)

(assert (not b!1243940))

(assert (not start!103962))

(assert (not b!1243938))

(assert (not b!1243937))

