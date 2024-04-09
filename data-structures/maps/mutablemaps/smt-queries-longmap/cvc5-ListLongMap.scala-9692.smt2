; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114524 () Bool)

(assert start!114524)

(declare-fun res!903374 () Bool)

(declare-fun e!771077 () Bool)

(assert (=> start!114524 (=> (not res!903374) (not e!771077))))

(declare-datatypes ((array!92443 0))(
  ( (array!92444 (arr!44659 (Array (_ BitVec 32) (_ BitVec 64))) (size!45210 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92443)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114524 (= res!903374 (and (bvslt (size!45210 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45210 a!3742))))))

(assert (=> start!114524 e!771077))

(assert (=> start!114524 true))

(declare-fun array_inv!33604 (array!92443) Bool)

(assert (=> start!114524 (array_inv!33604 a!3742)))

(declare-fun b!1358650 () Bool)

(declare-fun res!903371 () Bool)

(assert (=> b!1358650 (=> (not res!903371) (not e!771077))))

(declare-datatypes ((List!31880 0))(
  ( (Nil!31877) (Cons!31876 (h!33085 (_ BitVec 64)) (t!46557 List!31880)) )
))
(declare-fun acc!759 () List!31880)

(declare-fun contains!9445 (List!31880 (_ BitVec 64)) Bool)

(assert (=> b!1358650 (= res!903371 (not (contains!9445 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358651 () Bool)

(declare-datatypes ((Unit!44660 0))(
  ( (Unit!44661) )
))
(declare-fun e!771078 () Unit!44660)

(declare-fun lt!599357 () Unit!44660)

(assert (=> b!1358651 (= e!771078 lt!599357)))

(declare-fun lt!599356 () Unit!44660)

(declare-fun lemmaListSubSeqRefl!0 (List!31880) Unit!44660)

(assert (=> b!1358651 (= lt!599356 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!836 (List!31880 List!31880) Bool)

(assert (=> b!1358651 (subseq!836 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92443 List!31880 List!31880 (_ BitVec 32)) Unit!44660)

(declare-fun $colon$colon!841 (List!31880 (_ BitVec 64)) List!31880)

(assert (=> b!1358651 (= lt!599357 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!841 acc!759 (select (arr!44659 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92443 (_ BitVec 32) List!31880) Bool)

(assert (=> b!1358651 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358652 () Bool)

(declare-fun res!903369 () Bool)

(assert (=> b!1358652 (=> (not res!903369) (not e!771077))))

(assert (=> b!1358652 (= res!903369 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45210 a!3742)))))

(declare-fun b!1358653 () Bool)

(declare-fun Unit!44662 () Unit!44660)

(assert (=> b!1358653 (= e!771078 Unit!44662)))

(declare-fun b!1358654 () Bool)

(declare-fun res!903370 () Bool)

(assert (=> b!1358654 (=> (not res!903370) (not e!771077))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358654 (= res!903370 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358655 () Bool)

(declare-fun res!903373 () Bool)

(assert (=> b!1358655 (=> (not res!903373) (not e!771077))))

(assert (=> b!1358655 (= res!903373 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31877))))

(declare-fun b!1358656 () Bool)

(declare-fun res!903372 () Bool)

(assert (=> b!1358656 (=> (not res!903372) (not e!771077))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358656 (= res!903372 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45210 a!3742))))))

(declare-fun b!1358657 () Bool)

(declare-fun res!903368 () Bool)

(assert (=> b!1358657 (=> (not res!903368) (not e!771077))))

(declare-fun noDuplicate!2324 (List!31880) Bool)

(assert (=> b!1358657 (= res!903368 (noDuplicate!2324 acc!759))))

(declare-fun b!1358658 () Bool)

(assert (=> b!1358658 (= e!771077 false)))

(declare-fun lt!599355 () Unit!44660)

(assert (=> b!1358658 (= lt!599355 e!771078)))

(declare-fun c!127084 () Bool)

(assert (=> b!1358658 (= c!127084 (validKeyInArray!0 (select (arr!44659 a!3742) from!3120)))))

(declare-fun b!1358659 () Bool)

(declare-fun res!903367 () Bool)

(assert (=> b!1358659 (=> (not res!903367) (not e!771077))))

(assert (=> b!1358659 (= res!903367 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358660 () Bool)

(declare-fun res!903375 () Bool)

(assert (=> b!1358660 (=> (not res!903375) (not e!771077))))

(assert (=> b!1358660 (= res!903375 (not (contains!9445 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114524 res!903374) b!1358657))

(assert (= (and b!1358657 res!903368) b!1358660))

(assert (= (and b!1358660 res!903375) b!1358650))

(assert (= (and b!1358650 res!903371) b!1358655))

(assert (= (and b!1358655 res!903373) b!1358659))

(assert (= (and b!1358659 res!903367) b!1358656))

(assert (= (and b!1358656 res!903372) b!1358654))

(assert (= (and b!1358654 res!903370) b!1358652))

(assert (= (and b!1358652 res!903369) b!1358658))

(assert (= (and b!1358658 c!127084) b!1358651))

(assert (= (and b!1358658 (not c!127084)) b!1358653))

(declare-fun m!1244227 () Bool)

(assert (=> b!1358650 m!1244227))

(declare-fun m!1244229 () Bool)

(assert (=> b!1358655 m!1244229))

(declare-fun m!1244231 () Bool)

(assert (=> b!1358654 m!1244231))

(declare-fun m!1244233 () Bool)

(assert (=> b!1358657 m!1244233))

(declare-fun m!1244235 () Bool)

(assert (=> b!1358651 m!1244235))

(declare-fun m!1244237 () Bool)

(assert (=> b!1358651 m!1244237))

(declare-fun m!1244239 () Bool)

(assert (=> b!1358651 m!1244239))

(declare-fun m!1244241 () Bool)

(assert (=> b!1358651 m!1244241))

(declare-fun m!1244243 () Bool)

(assert (=> b!1358651 m!1244243))

(assert (=> b!1358651 m!1244237))

(assert (=> b!1358651 m!1244239))

(declare-fun m!1244245 () Bool)

(assert (=> b!1358651 m!1244245))

(assert (=> b!1358658 m!1244237))

(assert (=> b!1358658 m!1244237))

(declare-fun m!1244247 () Bool)

(assert (=> b!1358658 m!1244247))

(declare-fun m!1244249 () Bool)

(assert (=> b!1358659 m!1244249))

(declare-fun m!1244251 () Bool)

(assert (=> b!1358660 m!1244251))

(declare-fun m!1244253 () Bool)

(assert (=> start!114524 m!1244253))

(push 1)

(assert (not b!1358658))

(assert (not b!1358650))

(assert (not b!1358655))

(assert (not b!1358657))

(assert (not b!1358654))

(assert (not b!1358659))

(assert (not b!1358660))

(assert (not b!1358651))

(assert (not start!114524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

