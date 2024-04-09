; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114158 () Bool)

(assert start!114158)

(declare-fun res!900363 () Bool)

(declare-fun e!769706 () Bool)

(assert (=> start!114158 (=> (not res!900363) (not e!769706))))

(declare-datatypes ((array!92263 0))(
  ( (array!92264 (arr!44575 (Array (_ BitVec 32) (_ BitVec 64))) (size!45126 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92263)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114158 (= res!900363 (and (bvslt (size!45126 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45126 a!3742))))))

(assert (=> start!114158 e!769706))

(assert (=> start!114158 true))

(declare-fun array_inv!33520 (array!92263) Bool)

(assert (=> start!114158 (array_inv!33520 a!3742)))

(declare-fun b!1355301 () Bool)

(declare-datatypes ((Unit!44489 0))(
  ( (Unit!44490) )
))
(declare-fun e!769707 () Unit!44489)

(declare-fun lt!598550 () Unit!44489)

(assert (=> b!1355301 (= e!769707 lt!598550)))

(declare-fun lt!598549 () Unit!44489)

(declare-datatypes ((List!31796 0))(
  ( (Nil!31793) (Cons!31792 (h!33001 (_ BitVec 64)) (t!46461 List!31796)) )
))
(declare-fun acc!759 () List!31796)

(declare-fun lemmaListSubSeqRefl!0 (List!31796) Unit!44489)

(assert (=> b!1355301 (= lt!598549 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!770 (List!31796 List!31796) Bool)

(assert (=> b!1355301 (subseq!770 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92263 List!31796 List!31796 (_ BitVec 32)) Unit!44489)

(declare-fun $colon$colon!787 (List!31796 (_ BitVec 64)) List!31796)

(assert (=> b!1355301 (= lt!598550 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!787 acc!759 (select (arr!44575 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92263 (_ BitVec 32) List!31796) Bool)

(assert (=> b!1355301 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355302 () Bool)

(declare-fun res!900356 () Bool)

(assert (=> b!1355302 (=> (not res!900356) (not e!769706))))

(assert (=> b!1355302 (= res!900356 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31793))))

(declare-fun b!1355303 () Bool)

(declare-fun e!769705 () Bool)

(assert (=> b!1355303 (= e!769705 false)))

(declare-fun lt!598547 () Bool)

(assert (=> b!1355303 (= lt!598547 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355304 () Bool)

(declare-fun res!900359 () Bool)

(assert (=> b!1355304 (=> (not res!900359) (not e!769706))))

(assert (=> b!1355304 (= res!900359 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45126 a!3742)))))

(declare-fun b!1355305 () Bool)

(declare-fun res!900354 () Bool)

(assert (=> b!1355305 (=> (not res!900354) (not e!769706))))

(declare-fun contains!9361 (List!31796 (_ BitVec 64)) Bool)

(assert (=> b!1355305 (= res!900354 (not (contains!9361 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355306 () Bool)

(declare-fun res!900358 () Bool)

(assert (=> b!1355306 (=> (not res!900358) (not e!769706))))

(assert (=> b!1355306 (= res!900358 (not (contains!9361 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355307 () Bool)

(declare-fun res!900355 () Bool)

(assert (=> b!1355307 (=> (not res!900355) (not e!769706))))

(assert (=> b!1355307 (= res!900355 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355308 () Bool)

(declare-fun res!900361 () Bool)

(assert (=> b!1355308 (=> (not res!900361) (not e!769706))))

(declare-fun noDuplicate!2240 (List!31796) Bool)

(assert (=> b!1355308 (= res!900361 (noDuplicate!2240 acc!759))))

(declare-fun b!1355309 () Bool)

(declare-fun res!900360 () Bool)

(assert (=> b!1355309 (=> (not res!900360) (not e!769706))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355309 (= res!900360 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355310 () Bool)

(declare-fun Unit!44491 () Unit!44489)

(assert (=> b!1355310 (= e!769707 Unit!44491)))

(declare-fun b!1355311 () Bool)

(declare-fun res!900362 () Bool)

(assert (=> b!1355311 (=> (not res!900362) (not e!769706))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355311 (= res!900362 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45126 a!3742))))))

(declare-fun b!1355312 () Bool)

(assert (=> b!1355312 (= e!769706 e!769705)))

(declare-fun res!900357 () Bool)

(assert (=> b!1355312 (=> (not res!900357) (not e!769705))))

(declare-fun lt!598548 () Bool)

(assert (=> b!1355312 (= res!900357 (and (not (= from!3120 i!1404)) (not lt!598548) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598546 () Unit!44489)

(assert (=> b!1355312 (= lt!598546 e!769707)))

(declare-fun c!126916 () Bool)

(assert (=> b!1355312 (= c!126916 lt!598548)))

(assert (=> b!1355312 (= lt!598548 (validKeyInArray!0 (select (arr!44575 a!3742) from!3120)))))

(assert (= (and start!114158 res!900363) b!1355308))

(assert (= (and b!1355308 res!900361) b!1355305))

(assert (= (and b!1355305 res!900354) b!1355306))

(assert (= (and b!1355306 res!900358) b!1355302))

(assert (= (and b!1355302 res!900356) b!1355307))

(assert (= (and b!1355307 res!900355) b!1355311))

(assert (= (and b!1355311 res!900362) b!1355309))

(assert (= (and b!1355309 res!900360) b!1355304))

(assert (= (and b!1355304 res!900359) b!1355312))

(assert (= (and b!1355312 c!126916) b!1355301))

(assert (= (and b!1355312 (not c!126916)) b!1355310))

(assert (= (and b!1355312 res!900357) b!1355303))

(declare-fun m!1241533 () Bool)

(assert (=> b!1355307 m!1241533))

(declare-fun m!1241535 () Bool)

(assert (=> b!1355312 m!1241535))

(assert (=> b!1355312 m!1241535))

(declare-fun m!1241537 () Bool)

(assert (=> b!1355312 m!1241537))

(declare-fun m!1241539 () Bool)

(assert (=> b!1355301 m!1241539))

(assert (=> b!1355301 m!1241535))

(declare-fun m!1241541 () Bool)

(assert (=> b!1355301 m!1241541))

(declare-fun m!1241543 () Bool)

(assert (=> b!1355301 m!1241543))

(declare-fun m!1241545 () Bool)

(assert (=> b!1355301 m!1241545))

(assert (=> b!1355301 m!1241535))

(assert (=> b!1355301 m!1241541))

(declare-fun m!1241547 () Bool)

(assert (=> b!1355301 m!1241547))

(declare-fun m!1241549 () Bool)

(assert (=> b!1355306 m!1241549))

(declare-fun m!1241551 () Bool)

(assert (=> b!1355309 m!1241551))

(declare-fun m!1241553 () Bool)

(assert (=> start!114158 m!1241553))

(declare-fun m!1241555 () Bool)

(assert (=> b!1355305 m!1241555))

(declare-fun m!1241557 () Bool)

(assert (=> b!1355302 m!1241557))

(declare-fun m!1241559 () Bool)

(assert (=> b!1355308 m!1241559))

(assert (=> b!1355303 m!1241545))

(push 1)

