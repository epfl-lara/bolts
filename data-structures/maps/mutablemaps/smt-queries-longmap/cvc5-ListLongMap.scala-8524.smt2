; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103974 () Bool)

(assert start!103974)

(declare-fun b!1244044 () Bool)

(declare-datatypes ((Unit!41275 0))(
  ( (Unit!41276) )
))
(declare-fun e!705149 () Unit!41275)

(declare-fun lt!562546 () Unit!41275)

(assert (=> b!1244044 (= e!705149 lt!562546)))

(declare-datatypes ((array!80012 0))(
  ( (array!80013 (arr!38595 (Array (_ BitVec 32) (_ BitVec 64))) (size!39132 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80012)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27576 0))(
  ( (Nil!27573) (Cons!27572 (h!28781 (_ BitVec 64)) (t!41052 List!27576)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80012 List!27576 List!27576 (_ BitVec 32)) Unit!41275)

(assert (=> b!1244044 (= lt!562546 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27572 (select (arr!38595 a!3892) from!3270) Nil!27573) Nil!27573 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80012 (_ BitVec 32) List!27576) Bool)

(assert (=> b!1244044 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27573)))

(declare-fun res!829907 () Bool)

(declare-fun e!705148 () Bool)

(assert (=> start!103974 (=> (not res!829907) (not e!705148))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103974 (= res!829907 (and (bvslt (size!39132 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39132 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39132 a!3892))))))

(assert (=> start!103974 e!705148))

(declare-fun array_inv!29371 (array!80012) Bool)

(assert (=> start!103974 (array_inv!29371 a!3892)))

(assert (=> start!103974 true))

(declare-fun b!1244045 () Bool)

(declare-fun Unit!41277 () Unit!41275)

(assert (=> b!1244045 (= e!705149 Unit!41277)))

(declare-fun b!1244046 () Bool)

(declare-fun res!829908 () Bool)

(assert (=> b!1244046 (=> (not res!829908) (not e!705148))))

(assert (=> b!1244046 (= res!829908 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39132 a!3892)) (not (= newFrom!287 (size!39132 a!3892)))))))

(declare-fun b!1244047 () Bool)

(declare-fun e!705146 () Bool)

(assert (=> b!1244047 (= e!705146 false)))

(declare-fun lt!562545 () Bool)

(assert (=> b!1244047 (= lt!562545 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27573))))

(declare-fun b!1244048 () Bool)

(declare-fun res!829909 () Bool)

(assert (=> b!1244048 (=> (not res!829909) (not e!705148))))

(assert (=> b!1244048 (= res!829909 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27573))))

(declare-fun b!1244049 () Bool)

(assert (=> b!1244049 (= e!705148 e!705146)))

(declare-fun res!829906 () Bool)

(assert (=> b!1244049 (=> (not res!829906) (not e!705146))))

(assert (=> b!1244049 (= res!829906 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562544 () Unit!41275)

(assert (=> b!1244049 (= lt!562544 e!705149)))

(declare-fun c!121756 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244049 (= c!121756 (validKeyInArray!0 (select (arr!38595 a!3892) from!3270)))))

(assert (= (and start!103974 res!829907) b!1244048))

(assert (= (and b!1244048 res!829909) b!1244046))

(assert (= (and b!1244046 res!829908) b!1244049))

(assert (= (and b!1244049 c!121756) b!1244044))

(assert (= (and b!1244049 (not c!121756)) b!1244045))

(assert (= (and b!1244049 res!829906) b!1244047))

(declare-fun m!1146441 () Bool)

(assert (=> b!1244049 m!1146441))

(assert (=> b!1244049 m!1146441))

(declare-fun m!1146443 () Bool)

(assert (=> b!1244049 m!1146443))

(declare-fun m!1146445 () Bool)

(assert (=> b!1244048 m!1146445))

(declare-fun m!1146447 () Bool)

(assert (=> b!1244047 m!1146447))

(assert (=> b!1244044 m!1146441))

(declare-fun m!1146449 () Bool)

(assert (=> b!1244044 m!1146449))

(assert (=> b!1244044 m!1146447))

(declare-fun m!1146451 () Bool)

(assert (=> start!103974 m!1146451))

(push 1)

(assert (not b!1244049))

(assert (not b!1244047))

(assert (not start!103974))

(assert (not b!1244044))

(assert (not b!1244048))

(check-sat)

(pop 1)

