; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114506 () Bool)

(assert start!114506)

(declare-fun b!1358353 () Bool)

(declare-fun e!770996 () Bool)

(assert (=> b!1358353 (= e!770996 false)))

(declare-datatypes ((Unit!44633 0))(
  ( (Unit!44634) )
))
(declare-fun lt!599276 () Unit!44633)

(declare-fun e!770997 () Unit!44633)

(assert (=> b!1358353 (= lt!599276 e!770997)))

(declare-fun c!127057 () Bool)

(declare-datatypes ((array!92425 0))(
  ( (array!92426 (arr!44650 (Array (_ BitVec 32) (_ BitVec 64))) (size!45201 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92425)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358353 (= c!127057 (validKeyInArray!0 (select (arr!44650 a!3742) from!3120)))))

(declare-fun b!1358354 () Bool)

(declare-fun res!903131 () Bool)

(assert (=> b!1358354 (=> (not res!903131) (not e!770996))))

(declare-datatypes ((List!31871 0))(
  ( (Nil!31868) (Cons!31867 (h!33076 (_ BitVec 64)) (t!46548 List!31871)) )
))
(declare-fun acc!759 () List!31871)

(declare-fun contains!9436 (List!31871 (_ BitVec 64)) Bool)

(assert (=> b!1358354 (= res!903131 (not (contains!9436 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358355 () Bool)

(declare-fun res!903125 () Bool)

(assert (=> b!1358355 (=> (not res!903125) (not e!770996))))

(declare-fun arrayNoDuplicates!0 (array!92425 (_ BitVec 32) List!31871) Bool)

(assert (=> b!1358355 (= res!903125 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31868))))

(declare-fun b!1358356 () Bool)

(declare-fun res!903124 () Bool)

(assert (=> b!1358356 (=> (not res!903124) (not e!770996))))

(assert (=> b!1358356 (= res!903124 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358357 () Bool)

(declare-fun res!903128 () Bool)

(assert (=> b!1358357 (=> (not res!903128) (not e!770996))))

(assert (=> b!1358357 (= res!903128 (not (contains!9436 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358358 () Bool)

(declare-fun lt!599275 () Unit!44633)

(assert (=> b!1358358 (= e!770997 lt!599275)))

(declare-fun lt!599274 () Unit!44633)

(declare-fun lemmaListSubSeqRefl!0 (List!31871) Unit!44633)

(assert (=> b!1358358 (= lt!599274 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!827 (List!31871 List!31871) Bool)

(assert (=> b!1358358 (subseq!827 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92425 List!31871 List!31871 (_ BitVec 32)) Unit!44633)

(declare-fun $colon$colon!832 (List!31871 (_ BitVec 64)) List!31871)

(assert (=> b!1358358 (= lt!599275 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!832 acc!759 (select (arr!44650 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358358 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358359 () Bool)

(declare-fun res!903132 () Bool)

(assert (=> b!1358359 (=> (not res!903132) (not e!770996))))

(declare-fun noDuplicate!2315 (List!31871) Bool)

(assert (=> b!1358359 (= res!903132 (noDuplicate!2315 acc!759))))

(declare-fun b!1358360 () Bool)

(declare-fun res!903127 () Bool)

(assert (=> b!1358360 (=> (not res!903127) (not e!770996))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358360 (= res!903127 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45201 a!3742))))))

(declare-fun b!1358362 () Bool)

(declare-fun Unit!44635 () Unit!44633)

(assert (=> b!1358362 (= e!770997 Unit!44635)))

(declare-fun b!1358363 () Bool)

(declare-fun res!903130 () Bool)

(assert (=> b!1358363 (=> (not res!903130) (not e!770996))))

(assert (=> b!1358363 (= res!903130 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45201 a!3742)))))

(declare-fun b!1358361 () Bool)

(declare-fun res!903126 () Bool)

(assert (=> b!1358361 (=> (not res!903126) (not e!770996))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358361 (= res!903126 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!903129 () Bool)

(assert (=> start!114506 (=> (not res!903129) (not e!770996))))

(assert (=> start!114506 (= res!903129 (and (bvslt (size!45201 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45201 a!3742))))))

(assert (=> start!114506 e!770996))

(assert (=> start!114506 true))

(declare-fun array_inv!33595 (array!92425) Bool)

(assert (=> start!114506 (array_inv!33595 a!3742)))

(assert (= (and start!114506 res!903129) b!1358359))

(assert (= (and b!1358359 res!903132) b!1358354))

(assert (= (and b!1358354 res!903131) b!1358357))

(assert (= (and b!1358357 res!903128) b!1358355))

(assert (= (and b!1358355 res!903125) b!1358356))

(assert (= (and b!1358356 res!903124) b!1358360))

(assert (= (and b!1358360 res!903127) b!1358361))

(assert (= (and b!1358361 res!903126) b!1358363))

(assert (= (and b!1358363 res!903130) b!1358353))

(assert (= (and b!1358353 c!127057) b!1358358))

(assert (= (and b!1358353 (not c!127057)) b!1358362))

(declare-fun m!1243975 () Bool)

(assert (=> b!1358359 m!1243975))

(declare-fun m!1243977 () Bool)

(assert (=> b!1358356 m!1243977))

(declare-fun m!1243979 () Bool)

(assert (=> b!1358354 m!1243979))

(declare-fun m!1243981 () Bool)

(assert (=> b!1358353 m!1243981))

(assert (=> b!1358353 m!1243981))

(declare-fun m!1243983 () Bool)

(assert (=> b!1358353 m!1243983))

(declare-fun m!1243985 () Bool)

(assert (=> b!1358358 m!1243985))

(assert (=> b!1358358 m!1243981))

(declare-fun m!1243987 () Bool)

(assert (=> b!1358358 m!1243987))

(declare-fun m!1243989 () Bool)

(assert (=> b!1358358 m!1243989))

(declare-fun m!1243991 () Bool)

(assert (=> b!1358358 m!1243991))

(assert (=> b!1358358 m!1243981))

(assert (=> b!1358358 m!1243987))

(declare-fun m!1243993 () Bool)

(assert (=> b!1358358 m!1243993))

(declare-fun m!1243995 () Bool)

(assert (=> b!1358357 m!1243995))

(declare-fun m!1243997 () Bool)

(assert (=> start!114506 m!1243997))

(declare-fun m!1243999 () Bool)

(assert (=> b!1358355 m!1243999))

(declare-fun m!1244001 () Bool)

(assert (=> b!1358361 m!1244001))

(push 1)

(assert (not b!1358353))

(assert (not b!1358354))

(assert (not b!1358361))

(assert (not start!114506))

(assert (not b!1358357))

(assert (not b!1358358))

(assert (not b!1358359))

(assert (not b!1358355))

(assert (not b!1358356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

