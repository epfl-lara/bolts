; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104256 () Bool)

(assert start!104256)

(declare-fun b!1245254 () Bool)

(declare-fun res!830862 () Bool)

(declare-fun e!706117 () Bool)

(assert (=> b!1245254 (=> (not res!830862) (not e!706117))))

(declare-datatypes ((array!80150 0))(
  ( (array!80151 (arr!38655 (Array (_ BitVec 32) (_ BitVec 64))) (size!39192 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80150)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245254 (= res!830862 (validKeyInArray!0 (select (arr!38655 a!3892) from!3270)))))

(declare-fun res!830863 () Bool)

(assert (=> start!104256 (=> (not res!830863) (not e!706117))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104256 (= res!830863 (and (bvslt (size!39192 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39192 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39192 a!3892))))))

(assert (=> start!104256 e!706117))

(declare-fun array_inv!29431 (array!80150) Bool)

(assert (=> start!104256 (array_inv!29431 a!3892)))

(assert (=> start!104256 true))

(declare-fun b!1245253 () Bool)

(declare-fun res!830861 () Bool)

(assert (=> b!1245253 (=> (not res!830861) (not e!706117))))

(assert (=> b!1245253 (= res!830861 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39192 a!3892)) (not (= newFrom!287 (size!39192 a!3892)))))))

(declare-fun b!1245252 () Bool)

(declare-fun res!830860 () Bool)

(assert (=> b!1245252 (=> (not res!830860) (not e!706117))))

(declare-datatypes ((List!27636 0))(
  ( (Nil!27633) (Cons!27632 (h!28841 (_ BitVec 64)) (t!41112 List!27636)) )
))
(declare-fun arrayNoDuplicates!0 (array!80150 (_ BitVec 32) List!27636) Bool)

(assert (=> b!1245252 (= res!830860 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27633))))

(declare-fun b!1245255 () Bool)

(assert (=> b!1245255 (= e!706117 (bvslt (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (= (and start!104256 res!830863) b!1245252))

(assert (= (and b!1245252 res!830860) b!1245253))

(assert (= (and b!1245253 res!830861) b!1245254))

(assert (= (and b!1245254 res!830862) b!1245255))

(declare-fun m!1147371 () Bool)

(assert (=> b!1245254 m!1147371))

(assert (=> b!1245254 m!1147371))

(declare-fun m!1147373 () Bool)

(assert (=> b!1245254 m!1147373))

(declare-fun m!1147375 () Bool)

(assert (=> start!104256 m!1147375))

(declare-fun m!1147377 () Bool)

(assert (=> b!1245252 m!1147377))

(push 1)

(assert (not b!1245254))

(assert (not b!1245252))

