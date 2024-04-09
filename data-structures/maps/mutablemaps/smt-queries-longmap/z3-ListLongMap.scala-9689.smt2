; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114508 () Bool)

(assert start!114508)

(declare-fun b!1358386 () Bool)

(declare-fun res!903151 () Bool)

(declare-fun e!771005 () Bool)

(assert (=> b!1358386 (=> (not res!903151) (not e!771005))))

(declare-datatypes ((List!31872 0))(
  ( (Nil!31869) (Cons!31868 (h!33077 (_ BitVec 64)) (t!46549 List!31872)) )
))
(declare-fun acc!759 () List!31872)

(declare-datatypes ((array!92427 0))(
  ( (array!92428 (arr!44651 (Array (_ BitVec 32) (_ BitVec 64))) (size!45202 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92427)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92427 (_ BitVec 32) List!31872) Bool)

(assert (=> b!1358386 (= res!903151 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358387 () Bool)

(declare-fun res!903154 () Bool)

(assert (=> b!1358387 (=> (not res!903154) (not e!771005))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358387 (= res!903154 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358388 () Bool)

(declare-fun res!903155 () Bool)

(assert (=> b!1358388 (=> (not res!903155) (not e!771005))))

(assert (=> b!1358388 (= res!903155 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31869))))

(declare-fun b!1358389 () Bool)

(declare-fun res!903159 () Bool)

(assert (=> b!1358389 (=> (not res!903159) (not e!771005))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358389 (= res!903159 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45202 a!3742))))))

(declare-fun b!1358390 () Bool)

(declare-datatypes ((Unit!44636 0))(
  ( (Unit!44637) )
))
(declare-fun e!771007 () Unit!44636)

(declare-fun Unit!44638 () Unit!44636)

(assert (=> b!1358390 (= e!771007 Unit!44638)))

(declare-fun b!1358391 () Bool)

(declare-fun res!903156 () Bool)

(assert (=> b!1358391 (=> (not res!903156) (not e!771005))))

(declare-fun contains!9437 (List!31872 (_ BitVec 64)) Bool)

(assert (=> b!1358391 (= res!903156 (not (contains!9437 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358392 () Bool)

(declare-fun res!903152 () Bool)

(assert (=> b!1358392 (=> (not res!903152) (not e!771005))))

(assert (=> b!1358392 (= res!903152 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45202 a!3742)))))

(declare-fun b!1358393 () Bool)

(assert (=> b!1358393 (= e!771005 false)))

(declare-fun lt!599284 () Unit!44636)

(assert (=> b!1358393 (= lt!599284 e!771007)))

(declare-fun c!127060 () Bool)

(assert (=> b!1358393 (= c!127060 (validKeyInArray!0 (select (arr!44651 a!3742) from!3120)))))

(declare-fun b!1358394 () Bool)

(declare-fun res!903153 () Bool)

(assert (=> b!1358394 (=> (not res!903153) (not e!771005))))

(declare-fun noDuplicate!2316 (List!31872) Bool)

(assert (=> b!1358394 (= res!903153 (noDuplicate!2316 acc!759))))

(declare-fun res!903158 () Bool)

(assert (=> start!114508 (=> (not res!903158) (not e!771005))))

(assert (=> start!114508 (= res!903158 (and (bvslt (size!45202 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45202 a!3742))))))

(assert (=> start!114508 e!771005))

(assert (=> start!114508 true))

(declare-fun array_inv!33596 (array!92427) Bool)

(assert (=> start!114508 (array_inv!33596 a!3742)))

(declare-fun b!1358395 () Bool)

(declare-fun lt!599285 () Unit!44636)

(assert (=> b!1358395 (= e!771007 lt!599285)))

(declare-fun lt!599283 () Unit!44636)

(declare-fun lemmaListSubSeqRefl!0 (List!31872) Unit!44636)

(assert (=> b!1358395 (= lt!599283 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!828 (List!31872 List!31872) Bool)

(assert (=> b!1358395 (subseq!828 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92427 List!31872 List!31872 (_ BitVec 32)) Unit!44636)

(declare-fun $colon$colon!833 (List!31872 (_ BitVec 64)) List!31872)

(assert (=> b!1358395 (= lt!599285 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!833 acc!759 (select (arr!44651 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358395 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358396 () Bool)

(declare-fun res!903157 () Bool)

(assert (=> b!1358396 (=> (not res!903157) (not e!771005))))

(assert (=> b!1358396 (= res!903157 (not (contains!9437 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114508 res!903158) b!1358394))

(assert (= (and b!1358394 res!903153) b!1358391))

(assert (= (and b!1358391 res!903156) b!1358396))

(assert (= (and b!1358396 res!903157) b!1358388))

(assert (= (and b!1358388 res!903155) b!1358386))

(assert (= (and b!1358386 res!903151) b!1358389))

(assert (= (and b!1358389 res!903159) b!1358387))

(assert (= (and b!1358387 res!903154) b!1358392))

(assert (= (and b!1358392 res!903152) b!1358393))

(assert (= (and b!1358393 c!127060) b!1358395))

(assert (= (and b!1358393 (not c!127060)) b!1358390))

(declare-fun m!1244003 () Bool)

(assert (=> b!1358387 m!1244003))

(declare-fun m!1244005 () Bool)

(assert (=> start!114508 m!1244005))

(declare-fun m!1244007 () Bool)

(assert (=> b!1358391 m!1244007))

(declare-fun m!1244009 () Bool)

(assert (=> b!1358393 m!1244009))

(assert (=> b!1358393 m!1244009))

(declare-fun m!1244011 () Bool)

(assert (=> b!1358393 m!1244011))

(declare-fun m!1244013 () Bool)

(assert (=> b!1358386 m!1244013))

(declare-fun m!1244015 () Bool)

(assert (=> b!1358388 m!1244015))

(declare-fun m!1244017 () Bool)

(assert (=> b!1358395 m!1244017))

(assert (=> b!1358395 m!1244009))

(declare-fun m!1244019 () Bool)

(assert (=> b!1358395 m!1244019))

(declare-fun m!1244021 () Bool)

(assert (=> b!1358395 m!1244021))

(declare-fun m!1244023 () Bool)

(assert (=> b!1358395 m!1244023))

(assert (=> b!1358395 m!1244009))

(assert (=> b!1358395 m!1244019))

(declare-fun m!1244025 () Bool)

(assert (=> b!1358395 m!1244025))

(declare-fun m!1244027 () Bool)

(assert (=> b!1358396 m!1244027))

(declare-fun m!1244029 () Bool)

(assert (=> b!1358394 m!1244029))

(check-sat (not b!1358394) (not b!1358395) (not b!1358387) (not b!1358396) (not b!1358391) (not b!1358393) (not start!114508) (not b!1358388) (not b!1358386))
