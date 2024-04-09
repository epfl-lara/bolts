; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104492 () Bool)

(assert start!104492)

(declare-fun res!831892 () Bool)

(declare-fun e!706972 () Bool)

(assert (=> start!104492 (=> (not res!831892) (not e!706972))))

(declare-datatypes ((array!80229 0))(
  ( (array!80230 (arr!38687 (Array (_ BitVec 32) (_ BitVec 64))) (size!39224 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80229)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104492 (= res!831892 (and (bvslt (size!39224 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39224 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39224 a!3892))))))

(assert (=> start!104492 e!706972))

(declare-fun array_inv!29463 (array!80229) Bool)

(assert (=> start!104492 (array_inv!29463 a!3892)))

(assert (=> start!104492 true))

(declare-fun b!1246476 () Bool)

(declare-datatypes ((Unit!41377 0))(
  ( (Unit!41378) )
))
(declare-fun e!706971 () Unit!41377)

(declare-fun lt!563071 () Unit!41377)

(assert (=> b!1246476 (= e!706971 lt!563071)))

(declare-datatypes ((List!27668 0))(
  ( (Nil!27665) (Cons!27664 (h!28873 (_ BitVec 64)) (t!41144 List!27668)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80229 List!27668 List!27668 (_ BitVec 32)) Unit!41377)

(assert (=> b!1246476 (= lt!563071 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27664 (select (arr!38687 a!3892) from!3270) Nil!27665) Nil!27665 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80229 (_ BitVec 32) List!27668) Bool)

(assert (=> b!1246476 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27665)))

(declare-fun b!1246477 () Bool)

(assert (=> b!1246477 (= e!706972 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvslt newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!563072 () Unit!41377)

(assert (=> b!1246477 (= lt!563072 e!706971)))

(declare-fun c!121980 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246477 (= c!121980 (validKeyInArray!0 (select (arr!38687 a!3892) from!3270)))))

(declare-fun b!1246478 () Bool)

(declare-fun res!831891 () Bool)

(assert (=> b!1246478 (=> (not res!831891) (not e!706972))))

(assert (=> b!1246478 (= res!831891 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39224 a!3892)) (not (= newFrom!287 (size!39224 a!3892)))))))

(declare-fun b!1246479 () Bool)

(declare-fun res!831890 () Bool)

(assert (=> b!1246479 (=> (not res!831890) (not e!706972))))

(assert (=> b!1246479 (= res!831890 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27665))))

(declare-fun b!1246480 () Bool)

(declare-fun Unit!41379 () Unit!41377)

(assert (=> b!1246480 (= e!706971 Unit!41379)))

(assert (= (and start!104492 res!831892) b!1246479))

(assert (= (and b!1246479 res!831890) b!1246478))

(assert (= (and b!1246478 res!831891) b!1246477))

(assert (= (and b!1246477 c!121980) b!1246476))

(assert (= (and b!1246477 (not c!121980)) b!1246480))

(declare-fun m!1148327 () Bool)

(assert (=> start!104492 m!1148327))

(declare-fun m!1148329 () Bool)

(assert (=> b!1246476 m!1148329))

(declare-fun m!1148331 () Bool)

(assert (=> b!1246476 m!1148331))

(declare-fun m!1148333 () Bool)

(assert (=> b!1246476 m!1148333))

(assert (=> b!1246477 m!1148329))

(assert (=> b!1246477 m!1148329))

(declare-fun m!1148335 () Bool)

(assert (=> b!1246477 m!1148335))

(declare-fun m!1148337 () Bool)

(assert (=> b!1246479 m!1148337))

(push 1)

(assert (not b!1246476))

(assert (not start!104492))

(assert (not b!1246479))

(assert (not b!1246477))

(check-sat)

(pop 1)

(push 1)

(check-sat)

