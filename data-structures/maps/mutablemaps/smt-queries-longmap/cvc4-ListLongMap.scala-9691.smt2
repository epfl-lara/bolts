; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114522 () Bool)

(assert start!114522)

(declare-fun b!1358617 () Bool)

(declare-fun res!903347 () Bool)

(declare-fun e!771069 () Bool)

(assert (=> b!1358617 (=> (not res!903347) (not e!771069))))

(declare-datatypes ((array!92441 0))(
  ( (array!92442 (arr!44658 (Array (_ BitVec 32) (_ BitVec 64))) (size!45209 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92441)

(declare-datatypes ((List!31879 0))(
  ( (Nil!31876) (Cons!31875 (h!33084 (_ BitVec 64)) (t!46556 List!31879)) )
))
(declare-fun arrayNoDuplicates!0 (array!92441 (_ BitVec 32) List!31879) Bool)

(assert (=> b!1358617 (= res!903347 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31876))))

(declare-fun b!1358618 () Bool)

(declare-fun res!903343 () Bool)

(assert (=> b!1358618 (=> (not res!903343) (not e!771069))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358618 (= res!903343 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45209 a!3742))))))

(declare-fun res!903342 () Bool)

(assert (=> start!114522 (=> (not res!903342) (not e!771069))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114522 (= res!903342 (and (bvslt (size!45209 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45209 a!3742))))))

(assert (=> start!114522 e!771069))

(assert (=> start!114522 true))

(declare-fun array_inv!33603 (array!92441) Bool)

(assert (=> start!114522 (array_inv!33603 a!3742)))

(declare-fun b!1358619 () Bool)

(declare-datatypes ((Unit!44657 0))(
  ( (Unit!44658) )
))
(declare-fun e!771068 () Unit!44657)

(declare-fun lt!599347 () Unit!44657)

(assert (=> b!1358619 (= e!771068 lt!599347)))

(declare-fun lt!599346 () Unit!44657)

(declare-fun acc!759 () List!31879)

(declare-fun lemmaListSubSeqRefl!0 (List!31879) Unit!44657)

(assert (=> b!1358619 (= lt!599346 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!835 (List!31879 List!31879) Bool)

(assert (=> b!1358619 (subseq!835 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92441 List!31879 List!31879 (_ BitVec 32)) Unit!44657)

(declare-fun $colon$colon!840 (List!31879 (_ BitVec 64)) List!31879)

(assert (=> b!1358619 (= lt!599347 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!840 acc!759 (select (arr!44658 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358619 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358620 () Bool)

(declare-fun res!903346 () Bool)

(assert (=> b!1358620 (=> (not res!903346) (not e!771069))))

(declare-fun noDuplicate!2323 (List!31879) Bool)

(assert (=> b!1358620 (= res!903346 (noDuplicate!2323 acc!759))))

(declare-fun b!1358621 () Bool)

(declare-fun res!903348 () Bool)

(assert (=> b!1358621 (=> (not res!903348) (not e!771069))))

(assert (=> b!1358621 (= res!903348 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45209 a!3742)))))

(declare-fun b!1358622 () Bool)

(declare-fun res!903341 () Bool)

(assert (=> b!1358622 (=> (not res!903341) (not e!771069))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358622 (= res!903341 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358623 () Bool)

(declare-fun res!903340 () Bool)

(assert (=> b!1358623 (=> (not res!903340) (not e!771069))))

(declare-fun contains!9444 (List!31879 (_ BitVec 64)) Bool)

(assert (=> b!1358623 (= res!903340 (not (contains!9444 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358624 () Bool)

(declare-fun res!903345 () Bool)

(assert (=> b!1358624 (=> (not res!903345) (not e!771069))))

(assert (=> b!1358624 (= res!903345 (not (contains!9444 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358625 () Bool)

(declare-fun Unit!44659 () Unit!44657)

(assert (=> b!1358625 (= e!771068 Unit!44659)))

(declare-fun b!1358626 () Bool)

(declare-fun res!903344 () Bool)

(assert (=> b!1358626 (=> (not res!903344) (not e!771069))))

(assert (=> b!1358626 (= res!903344 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358627 () Bool)

(assert (=> b!1358627 (= e!771069 false)))

(declare-fun lt!599348 () Unit!44657)

(assert (=> b!1358627 (= lt!599348 e!771068)))

(declare-fun c!127081 () Bool)

(assert (=> b!1358627 (= c!127081 (validKeyInArray!0 (select (arr!44658 a!3742) from!3120)))))

(assert (= (and start!114522 res!903342) b!1358620))

(assert (= (and b!1358620 res!903346) b!1358624))

(assert (= (and b!1358624 res!903345) b!1358623))

(assert (= (and b!1358623 res!903340) b!1358617))

(assert (= (and b!1358617 res!903347) b!1358626))

(assert (= (and b!1358626 res!903344) b!1358618))

(assert (= (and b!1358618 res!903343) b!1358622))

(assert (= (and b!1358622 res!903341) b!1358621))

(assert (= (and b!1358621 res!903348) b!1358627))

(assert (= (and b!1358627 c!127081) b!1358619))

(assert (= (and b!1358627 (not c!127081)) b!1358625))

(declare-fun m!1244199 () Bool)

(assert (=> b!1358617 m!1244199))

(declare-fun m!1244201 () Bool)

(assert (=> b!1358623 m!1244201))

(declare-fun m!1244203 () Bool)

(assert (=> b!1358626 m!1244203))

(declare-fun m!1244205 () Bool)

(assert (=> b!1358627 m!1244205))

(assert (=> b!1358627 m!1244205))

(declare-fun m!1244207 () Bool)

(assert (=> b!1358627 m!1244207))

(declare-fun m!1244209 () Bool)

(assert (=> start!114522 m!1244209))

(declare-fun m!1244211 () Bool)

(assert (=> b!1358620 m!1244211))

(declare-fun m!1244213 () Bool)

(assert (=> b!1358619 m!1244213))

(assert (=> b!1358619 m!1244205))

(declare-fun m!1244215 () Bool)

(assert (=> b!1358619 m!1244215))

(declare-fun m!1244217 () Bool)

(assert (=> b!1358619 m!1244217))

(declare-fun m!1244219 () Bool)

(assert (=> b!1358619 m!1244219))

(assert (=> b!1358619 m!1244205))

(assert (=> b!1358619 m!1244215))

(declare-fun m!1244221 () Bool)

(assert (=> b!1358619 m!1244221))

(declare-fun m!1244223 () Bool)

(assert (=> b!1358622 m!1244223))

(declare-fun m!1244225 () Bool)

(assert (=> b!1358624 m!1244225))

(push 1)

(assert (not b!1358620))

(assert (not start!114522))

(assert (not b!1358622))

(assert (not b!1358619))

(assert (not b!1358623))

(assert (not b!1358626))

(assert (not b!1358627))

(assert (not b!1358624))

(assert (not b!1358617))

(check-sat)

(pop 1)

