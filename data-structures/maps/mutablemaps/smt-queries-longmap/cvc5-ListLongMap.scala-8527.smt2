; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103992 () Bool)

(assert start!103992)

(declare-fun b!1244208 () Bool)

(declare-datatypes ((Unit!41302 0))(
  ( (Unit!41303) )
))
(declare-fun e!705254 () Unit!41302)

(declare-fun lt!562627 () Unit!41302)

(assert (=> b!1244208 (= e!705254 lt!562627)))

(declare-datatypes ((array!80030 0))(
  ( (array!80031 (arr!38604 (Array (_ BitVec 32) (_ BitVec 64))) (size!39141 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80030)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27585 0))(
  ( (Nil!27582) (Cons!27581 (h!28790 (_ BitVec 64)) (t!41061 List!27585)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80030 List!27585 List!27585 (_ BitVec 32)) Unit!41302)

(assert (=> b!1244208 (= lt!562627 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27581 (select (arr!38604 a!3892) from!3270) Nil!27582) Nil!27582 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80030 (_ BitVec 32) List!27585) Bool)

(assert (=> b!1244208 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27582)))

(declare-fun b!1244209 () Bool)

(declare-fun res!830018 () Bool)

(declare-fun e!705256 () Bool)

(assert (=> b!1244209 (=> (not res!830018) (not e!705256))))

(assert (=> b!1244209 (= res!830018 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27582))))

(declare-fun res!830019 () Bool)

(declare-fun e!705255 () Bool)

(assert (=> start!103992 (=> (not res!830019) (not e!705255))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103992 (= res!830019 (and (bvslt (size!39141 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39141 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39141 a!3892))))))

(assert (=> start!103992 e!705255))

(declare-fun array_inv!29380 (array!80030) Bool)

(assert (=> start!103992 (array_inv!29380 a!3892)))

(assert (=> start!103992 true))

(declare-fun b!1244210 () Bool)

(declare-fun Unit!41304 () Unit!41302)

(assert (=> b!1244210 (= e!705254 Unit!41304)))

(declare-fun b!1244211 () Bool)

(assert (=> b!1244211 (= e!705255 e!705256)))

(declare-fun res!830016 () Bool)

(assert (=> b!1244211 (=> (not res!830016) (not e!705256))))

(assert (=> b!1244211 (= res!830016 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562626 () Unit!41302)

(assert (=> b!1244211 (= lt!562626 e!705254)))

(declare-fun c!121783 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244211 (= c!121783 (validKeyInArray!0 (select (arr!38604 a!3892) from!3270)))))

(declare-fun b!1244212 () Bool)

(declare-fun res!830020 () Bool)

(assert (=> b!1244212 (=> (not res!830020) (not e!705255))))

(assert (=> b!1244212 (= res!830020 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39141 a!3892)) (not (= newFrom!287 (size!39141 a!3892)))))))

(declare-fun b!1244213 () Bool)

(assert (=> b!1244213 (= e!705256 (not (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(assert (=> b!1244213 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27582)))

(declare-fun lt!562625 () Unit!41302)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80030 (_ BitVec 32) (_ BitVec 32)) Unit!41302)

(assert (=> b!1244213 (= lt!562625 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244214 () Bool)

(declare-fun res!830017 () Bool)

(assert (=> b!1244214 (=> (not res!830017) (not e!705255))))

(assert (=> b!1244214 (= res!830017 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27582))))

(assert (= (and start!103992 res!830019) b!1244214))

(assert (= (and b!1244214 res!830017) b!1244212))

(assert (= (and b!1244212 res!830020) b!1244211))

(assert (= (and b!1244211 c!121783) b!1244208))

(assert (= (and b!1244211 (not c!121783)) b!1244210))

(assert (= (and b!1244211 res!830016) b!1244209))

(assert (= (and b!1244209 res!830018) b!1244213))

(declare-fun m!1146549 () Bool)

(assert (=> b!1244209 m!1146549))

(declare-fun m!1146551 () Bool)

(assert (=> start!103992 m!1146551))

(declare-fun m!1146553 () Bool)

(assert (=> b!1244208 m!1146553))

(declare-fun m!1146555 () Bool)

(assert (=> b!1244208 m!1146555))

(assert (=> b!1244208 m!1146549))

(declare-fun m!1146557 () Bool)

(assert (=> b!1244214 m!1146557))

(assert (=> b!1244211 m!1146553))

(assert (=> b!1244211 m!1146553))

(declare-fun m!1146559 () Bool)

(assert (=> b!1244211 m!1146559))

(declare-fun m!1146561 () Bool)

(assert (=> b!1244213 m!1146561))

(declare-fun m!1146563 () Bool)

(assert (=> b!1244213 m!1146563))

(push 1)

(assert (not b!1244209))

(assert (not b!1244208))

(assert (not b!1244213))

