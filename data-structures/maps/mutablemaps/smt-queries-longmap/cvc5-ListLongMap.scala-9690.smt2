; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114512 () Bool)

(assert start!114512)

(declare-fun b!1358452 () Bool)

(declare-fun res!903205 () Bool)

(declare-fun e!771024 () Bool)

(assert (=> b!1358452 (=> (not res!903205) (not e!771024))))

(declare-datatypes ((List!31874 0))(
  ( (Nil!31871) (Cons!31870 (h!33079 (_ BitVec 64)) (t!46551 List!31874)) )
))
(declare-fun acc!759 () List!31874)

(declare-fun noDuplicate!2318 (List!31874) Bool)

(assert (=> b!1358452 (= res!903205 (noDuplicate!2318 acc!759))))

(declare-fun b!1358453 () Bool)

(declare-fun res!903206 () Bool)

(assert (=> b!1358453 (=> (not res!903206) (not e!771024))))

(declare-fun contains!9439 (List!31874 (_ BitVec 64)) Bool)

(assert (=> b!1358453 (= res!903206 (not (contains!9439 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358454 () Bool)

(declare-fun res!903209 () Bool)

(assert (=> b!1358454 (=> (not res!903209) (not e!771024))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358454 (= res!903209 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358455 () Bool)

(declare-fun res!903212 () Bool)

(assert (=> b!1358455 (=> (not res!903212) (not e!771024))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92431 0))(
  ( (array!92432 (arr!44653 (Array (_ BitVec 32) (_ BitVec 64))) (size!45204 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92431)

(assert (=> b!1358455 (= res!903212 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45204 a!3742))))))

(declare-fun b!1358456 () Bool)

(declare-fun res!903208 () Bool)

(assert (=> b!1358456 (=> (not res!903208) (not e!771024))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1358456 (= res!903208 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45204 a!3742)))))

(declare-fun b!1358457 () Bool)

(declare-datatypes ((Unit!44642 0))(
  ( (Unit!44643) )
))
(declare-fun e!771025 () Unit!44642)

(declare-fun lt!599303 () Unit!44642)

(assert (=> b!1358457 (= e!771025 lt!599303)))

(declare-fun lt!599302 () Unit!44642)

(declare-fun lemmaListSubSeqRefl!0 (List!31874) Unit!44642)

(assert (=> b!1358457 (= lt!599302 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!830 (List!31874 List!31874) Bool)

(assert (=> b!1358457 (subseq!830 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92431 List!31874 List!31874 (_ BitVec 32)) Unit!44642)

(declare-fun $colon$colon!835 (List!31874 (_ BitVec 64)) List!31874)

(assert (=> b!1358457 (= lt!599303 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!835 acc!759 (select (arr!44653 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92431 (_ BitVec 32) List!31874) Bool)

(assert (=> b!1358457 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358458 () Bool)

(declare-fun res!903210 () Bool)

(assert (=> b!1358458 (=> (not res!903210) (not e!771024))))

(assert (=> b!1358458 (= res!903210 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31871))))

(declare-fun b!1358459 () Bool)

(declare-fun res!903213 () Bool)

(assert (=> b!1358459 (=> (not res!903213) (not e!771024))))

(assert (=> b!1358459 (= res!903213 (not (contains!9439 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358460 () Bool)

(declare-fun res!903207 () Bool)

(assert (=> b!1358460 (=> (not res!903207) (not e!771024))))

(assert (=> b!1358460 (= res!903207 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!903211 () Bool)

(assert (=> start!114512 (=> (not res!903211) (not e!771024))))

(assert (=> start!114512 (= res!903211 (and (bvslt (size!45204 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45204 a!3742))))))

(assert (=> start!114512 e!771024))

(assert (=> start!114512 true))

(declare-fun array_inv!33598 (array!92431) Bool)

(assert (=> start!114512 (array_inv!33598 a!3742)))

(declare-fun b!1358461 () Bool)

(declare-fun Unit!44644 () Unit!44642)

(assert (=> b!1358461 (= e!771025 Unit!44644)))

(declare-fun b!1358462 () Bool)

(assert (=> b!1358462 (= e!771024 (and (= from!3120 i!1404) (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599301 () Unit!44642)

(assert (=> b!1358462 (= lt!599301 e!771025)))

(declare-fun c!127066 () Bool)

(assert (=> b!1358462 (= c!127066 (validKeyInArray!0 (select (arr!44653 a!3742) from!3120)))))

(assert (= (and start!114512 res!903211) b!1358452))

(assert (= (and b!1358452 res!903205) b!1358459))

(assert (= (and b!1358459 res!903213) b!1358453))

(assert (= (and b!1358453 res!903206) b!1358458))

(assert (= (and b!1358458 res!903210) b!1358460))

(assert (= (and b!1358460 res!903207) b!1358455))

(assert (= (and b!1358455 res!903212) b!1358454))

(assert (= (and b!1358454 res!903209) b!1358456))

(assert (= (and b!1358456 res!903208) b!1358462))

(assert (= (and b!1358462 c!127066) b!1358457))

(assert (= (and b!1358462 (not c!127066)) b!1358461))

(declare-fun m!1244059 () Bool)

(assert (=> b!1358458 m!1244059))

(declare-fun m!1244061 () Bool)

(assert (=> b!1358459 m!1244061))

(declare-fun m!1244063 () Bool)

(assert (=> b!1358457 m!1244063))

(declare-fun m!1244065 () Bool)

(assert (=> b!1358457 m!1244065))

(declare-fun m!1244067 () Bool)

(assert (=> b!1358457 m!1244067))

(declare-fun m!1244069 () Bool)

(assert (=> b!1358457 m!1244069))

(declare-fun m!1244071 () Bool)

(assert (=> b!1358457 m!1244071))

(assert (=> b!1358457 m!1244065))

(assert (=> b!1358457 m!1244067))

(declare-fun m!1244073 () Bool)

(assert (=> b!1358457 m!1244073))

(assert (=> b!1358462 m!1244065))

(assert (=> b!1358462 m!1244065))

(declare-fun m!1244075 () Bool)

(assert (=> b!1358462 m!1244075))

(declare-fun m!1244077 () Bool)

(assert (=> b!1358454 m!1244077))

(declare-fun m!1244079 () Bool)

(assert (=> b!1358453 m!1244079))

(declare-fun m!1244081 () Bool)

(assert (=> b!1358452 m!1244081))

(declare-fun m!1244083 () Bool)

(assert (=> b!1358460 m!1244083))

(declare-fun m!1244085 () Bool)

(assert (=> start!114512 m!1244085))

(push 1)

