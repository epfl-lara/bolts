; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114000 () Bool)

(assert start!114000)

(declare-fun b!1351917 () Bool)

(declare-fun res!897451 () Bool)

(declare-fun e!768640 () Bool)

(assert (=> b!1351917 (=> (not res!897451) (not e!768640))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92105 0))(
  ( (array!92106 (arr!44496 (Array (_ BitVec 32) (_ BitVec 64))) (size!45047 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92105)

(assert (=> b!1351917 (= res!897451 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45047 a!3742))))))

(declare-fun b!1351918 () Bool)

(declare-fun res!897446 () Bool)

(assert (=> b!1351918 (=> (not res!897446) (not e!768640))))

(declare-datatypes ((List!31717 0))(
  ( (Nil!31714) (Cons!31713 (h!32922 (_ BitVec 64)) (t!46382 List!31717)) )
))
(declare-fun acc!759 () List!31717)

(declare-fun contains!9282 (List!31717 (_ BitVec 64)) Bool)

(assert (=> b!1351918 (= res!897446 (not (contains!9282 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351919 () Bool)

(declare-fun res!897444 () Bool)

(assert (=> b!1351919 (=> (not res!897444) (not e!768640))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351919 (= res!897444 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351920 () Bool)

(declare-fun e!768641 () Bool)

(assert (=> b!1351920 (= e!768640 e!768641)))

(declare-fun res!897449 () Bool)

(assert (=> b!1351920 (=> (not res!897449) (not e!768641))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1351920 (= res!897449 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44252 0))(
  ( (Unit!44253) )
))
(declare-fun lt!597336 () Unit!44252)

(declare-fun e!768642 () Unit!44252)

(assert (=> b!1351920 (= lt!597336 e!768642)))

(declare-fun c!126679 () Bool)

(assert (=> b!1351920 (= c!126679 (validKeyInArray!0 (select (arr!44496 a!3742) from!3120)))))

(declare-fun b!1351921 () Bool)

(assert (=> b!1351921 (= e!768641 false)))

(declare-fun lt!597335 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92105 (_ BitVec 32) List!31717) Bool)

(assert (=> b!1351921 (= lt!597335 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!897452 () Bool)

(assert (=> start!114000 (=> (not res!897452) (not e!768640))))

(assert (=> start!114000 (= res!897452 (and (bvslt (size!45047 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45047 a!3742))))))

(assert (=> start!114000 e!768640))

(assert (=> start!114000 true))

(declare-fun array_inv!33441 (array!92105) Bool)

(assert (=> start!114000 (array_inv!33441 a!3742)))

(declare-fun b!1351922 () Bool)

(declare-fun res!897445 () Bool)

(assert (=> b!1351922 (=> (not res!897445) (not e!768640))))

(assert (=> b!1351922 (= res!897445 (not (contains!9282 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351923 () Bool)

(declare-fun lt!597337 () Unit!44252)

(assert (=> b!1351923 (= e!768642 lt!597337)))

(declare-fun lt!597338 () Unit!44252)

(declare-fun lemmaListSubSeqRefl!0 (List!31717) Unit!44252)

(assert (=> b!1351923 (= lt!597338 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!691 (List!31717 List!31717) Bool)

(assert (=> b!1351923 (subseq!691 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92105 List!31717 List!31717 (_ BitVec 32)) Unit!44252)

(declare-fun $colon$colon!708 (List!31717 (_ BitVec 64)) List!31717)

(assert (=> b!1351923 (= lt!597337 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!708 acc!759 (select (arr!44496 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1351923 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351924 () Bool)

(declare-fun Unit!44254 () Unit!44252)

(assert (=> b!1351924 (= e!768642 Unit!44254)))

(declare-fun b!1351925 () Bool)

(declare-fun res!897448 () Bool)

(assert (=> b!1351925 (=> (not res!897448) (not e!768640))))

(assert (=> b!1351925 (= res!897448 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45047 a!3742)))))

(declare-fun b!1351926 () Bool)

(declare-fun res!897450 () Bool)

(assert (=> b!1351926 (=> (not res!897450) (not e!768640))))

(assert (=> b!1351926 (= res!897450 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351927 () Bool)

(declare-fun res!897453 () Bool)

(assert (=> b!1351927 (=> (not res!897453) (not e!768640))))

(assert (=> b!1351927 (= res!897453 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31714))))

(declare-fun b!1351928 () Bool)

(declare-fun res!897447 () Bool)

(assert (=> b!1351928 (=> (not res!897447) (not e!768640))))

(declare-fun noDuplicate!2161 (List!31717) Bool)

(assert (=> b!1351928 (= res!897447 (noDuplicate!2161 acc!759))))

(assert (= (and start!114000 res!897452) b!1351928))

(assert (= (and b!1351928 res!897447) b!1351918))

(assert (= (and b!1351918 res!897446) b!1351922))

(assert (= (and b!1351922 res!897445) b!1351927))

(assert (= (and b!1351927 res!897453) b!1351926))

(assert (= (and b!1351926 res!897450) b!1351917))

(assert (= (and b!1351917 res!897451) b!1351919))

(assert (= (and b!1351919 res!897444) b!1351925))

(assert (= (and b!1351925 res!897448) b!1351920))

(assert (= (and b!1351920 c!126679) b!1351923))

(assert (= (and b!1351920 (not c!126679)) b!1351924))

(assert (= (and b!1351920 res!897449) b!1351921))

(declare-fun m!1238865 () Bool)

(assert (=> b!1351919 m!1238865))

(declare-fun m!1238867 () Bool)

(assert (=> b!1351918 m!1238867))

(declare-fun m!1238869 () Bool)

(assert (=> b!1351922 m!1238869))

(declare-fun m!1238871 () Bool)

(assert (=> b!1351923 m!1238871))

(declare-fun m!1238873 () Bool)

(assert (=> b!1351923 m!1238873))

(declare-fun m!1238875 () Bool)

(assert (=> b!1351923 m!1238875))

(declare-fun m!1238877 () Bool)

(assert (=> b!1351923 m!1238877))

(declare-fun m!1238879 () Bool)

(assert (=> b!1351923 m!1238879))

(assert (=> b!1351923 m!1238873))

(assert (=> b!1351923 m!1238875))

(declare-fun m!1238881 () Bool)

(assert (=> b!1351923 m!1238881))

(declare-fun m!1238883 () Bool)

(assert (=> b!1351927 m!1238883))

(assert (=> b!1351921 m!1238879))

(assert (=> b!1351920 m!1238873))

(assert (=> b!1351920 m!1238873))

(declare-fun m!1238885 () Bool)

(assert (=> b!1351920 m!1238885))

(declare-fun m!1238887 () Bool)

(assert (=> b!1351926 m!1238887))

(declare-fun m!1238889 () Bool)

(assert (=> b!1351928 m!1238889))

(declare-fun m!1238891 () Bool)

(assert (=> start!114000 m!1238891))

(push 1)

(assert (not b!1351919))

