; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103966 () Bool)

(assert start!103966)

(declare-fun b!1243972 () Bool)

(declare-fun res!829861 () Bool)

(declare-fun e!705101 () Bool)

(assert (=> b!1243972 (=> (not res!829861) (not e!705101))))

(declare-datatypes ((array!80004 0))(
  ( (array!80005 (arr!38591 (Array (_ BitVec 32) (_ BitVec 64))) (size!39128 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80004)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27572 0))(
  ( (Nil!27569) (Cons!27568 (h!28777 (_ BitVec 64)) (t!41048 List!27572)) )
))
(declare-fun arrayNoDuplicates!0 (array!80004 (_ BitVec 32) List!27572) Bool)

(assert (=> b!1243972 (= res!829861 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27569))))

(declare-fun b!1243973 () Bool)

(declare-datatypes ((Unit!41263 0))(
  ( (Unit!41264) )
))
(declare-fun e!705100 () Unit!41263)

(declare-fun lt!562509 () Unit!41263)

(assert (=> b!1243973 (= e!705100 lt!562509)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80004 List!27572 List!27572 (_ BitVec 32)) Unit!41263)

(assert (=> b!1243973 (= lt!562509 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27568 (select (arr!38591 a!3892) from!3270) Nil!27569) Nil!27569 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1243973 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27569)))

(declare-fun b!1243974 () Bool)

(declare-fun res!829858 () Bool)

(assert (=> b!1243974 (=> (not res!829858) (not e!705101))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1243974 (= res!829858 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39128 a!3892)) (not (= newFrom!287 (size!39128 a!3892)))))))

(declare-fun res!829859 () Bool)

(assert (=> start!103966 (=> (not res!829859) (not e!705101))))

(assert (=> start!103966 (= res!829859 (and (bvslt (size!39128 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39128 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39128 a!3892))))))

(assert (=> start!103966 e!705101))

(declare-fun array_inv!29367 (array!80004) Bool)

(assert (=> start!103966 (array_inv!29367 a!3892)))

(assert (=> start!103966 true))

(declare-fun b!1243975 () Bool)

(declare-fun e!705099 () Bool)

(assert (=> b!1243975 (= e!705101 e!705099)))

(declare-fun res!829860 () Bool)

(assert (=> b!1243975 (=> (not res!829860) (not e!705099))))

(assert (=> b!1243975 (= res!829860 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562510 () Unit!41263)

(assert (=> b!1243975 (= lt!562510 e!705100)))

(declare-fun c!121744 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243975 (= c!121744 (validKeyInArray!0 (select (arr!38591 a!3892) from!3270)))))

(declare-fun b!1243976 () Bool)

(assert (=> b!1243976 (= e!705099 false)))

(declare-fun lt!562508 () Bool)

(assert (=> b!1243976 (= lt!562508 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27569))))

(declare-fun b!1243977 () Bool)

(declare-fun Unit!41265 () Unit!41263)

(assert (=> b!1243977 (= e!705100 Unit!41265)))

(assert (= (and start!103966 res!829859) b!1243972))

(assert (= (and b!1243972 res!829861) b!1243974))

(assert (= (and b!1243974 res!829858) b!1243975))

(assert (= (and b!1243975 c!121744) b!1243973))

(assert (= (and b!1243975 (not c!121744)) b!1243977))

(assert (= (and b!1243975 res!829860) b!1243976))

(declare-fun m!1146393 () Bool)

(assert (=> b!1243973 m!1146393))

(declare-fun m!1146395 () Bool)

(assert (=> b!1243973 m!1146395))

(declare-fun m!1146397 () Bool)

(assert (=> b!1243973 m!1146397))

(assert (=> b!1243975 m!1146393))

(assert (=> b!1243975 m!1146393))

(declare-fun m!1146399 () Bool)

(assert (=> b!1243975 m!1146399))

(assert (=> b!1243976 m!1146397))

(declare-fun m!1146401 () Bool)

(assert (=> b!1243972 m!1146401))

(declare-fun m!1146403 () Bool)

(assert (=> start!103966 m!1146403))

(push 1)

(assert (not b!1243973))

(assert (not b!1243976))

(assert (not start!103966))

(assert (not b!1243972))

(assert (not b!1243975))

