; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114526 () Bool)

(assert start!114526)

(declare-fun b!1358683 () Bool)

(declare-fun res!903398 () Bool)

(declare-fun e!771088 () Bool)

(assert (=> b!1358683 (=> (not res!903398) (not e!771088))))

(declare-datatypes ((List!31881 0))(
  ( (Nil!31878) (Cons!31877 (h!33086 (_ BitVec 64)) (t!46558 List!31881)) )
))
(declare-fun acc!759 () List!31881)

(declare-fun contains!9446 (List!31881 (_ BitVec 64)) Bool)

(assert (=> b!1358683 (= res!903398 (not (contains!9446 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358684 () Bool)

(declare-datatypes ((Unit!44663 0))(
  ( (Unit!44664) )
))
(declare-fun e!771087 () Unit!44663)

(declare-fun Unit!44665 () Unit!44663)

(assert (=> b!1358684 (= e!771087 Unit!44665)))

(declare-fun b!1358685 () Bool)

(declare-fun res!903397 () Bool)

(assert (=> b!1358685 (=> (not res!903397) (not e!771088))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92445 0))(
  ( (array!92446 (arr!44660 (Array (_ BitVec 32) (_ BitVec 64))) (size!45211 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92445)

(assert (=> b!1358685 (= res!903397 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45211 a!3742))))))

(declare-fun b!1358686 () Bool)

(declare-fun res!903399 () Bool)

(assert (=> b!1358686 (=> (not res!903399) (not e!771088))))

(declare-fun arrayNoDuplicates!0 (array!92445 (_ BitVec 32) List!31881) Bool)

(assert (=> b!1358686 (= res!903399 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31878))))

(declare-fun res!903401 () Bool)

(assert (=> start!114526 (=> (not res!903401) (not e!771088))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114526 (= res!903401 (and (bvslt (size!45211 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45211 a!3742))))))

(assert (=> start!114526 e!771088))

(assert (=> start!114526 true))

(declare-fun array_inv!33605 (array!92445) Bool)

(assert (=> start!114526 (array_inv!33605 a!3742)))

(declare-fun b!1358687 () Bool)

(declare-fun res!903394 () Bool)

(assert (=> b!1358687 (=> (not res!903394) (not e!771088))))

(assert (=> b!1358687 (= res!903394 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358688 () Bool)

(assert (=> b!1358688 (= e!771088 false)))

(declare-fun lt!599366 () Unit!44663)

(assert (=> b!1358688 (= lt!599366 e!771087)))

(declare-fun c!127087 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358688 (= c!127087 (validKeyInArray!0 (select (arr!44660 a!3742) from!3120)))))

(declare-fun b!1358689 () Bool)

(declare-fun res!903400 () Bool)

(assert (=> b!1358689 (=> (not res!903400) (not e!771088))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358689 (= res!903400 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358690 () Bool)

(declare-fun lt!599364 () Unit!44663)

(assert (=> b!1358690 (= e!771087 lt!599364)))

(declare-fun lt!599365 () Unit!44663)

(declare-fun lemmaListSubSeqRefl!0 (List!31881) Unit!44663)

(assert (=> b!1358690 (= lt!599365 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!837 (List!31881 List!31881) Bool)

(assert (=> b!1358690 (subseq!837 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92445 List!31881 List!31881 (_ BitVec 32)) Unit!44663)

(declare-fun $colon$colon!842 (List!31881 (_ BitVec 64)) List!31881)

(assert (=> b!1358690 (= lt!599364 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!842 acc!759 (select (arr!44660 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358690 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358691 () Bool)

(declare-fun res!903396 () Bool)

(assert (=> b!1358691 (=> (not res!903396) (not e!771088))))

(declare-fun noDuplicate!2325 (List!31881) Bool)

(assert (=> b!1358691 (= res!903396 (noDuplicate!2325 acc!759))))

(declare-fun b!1358692 () Bool)

(declare-fun res!903395 () Bool)

(assert (=> b!1358692 (=> (not res!903395) (not e!771088))))

(assert (=> b!1358692 (= res!903395 (not (contains!9446 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358693 () Bool)

(declare-fun res!903402 () Bool)

(assert (=> b!1358693 (=> (not res!903402) (not e!771088))))

(assert (=> b!1358693 (= res!903402 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45211 a!3742)))))

(assert (= (and start!114526 res!903401) b!1358691))

(assert (= (and b!1358691 res!903396) b!1358692))

(assert (= (and b!1358692 res!903395) b!1358683))

(assert (= (and b!1358683 res!903398) b!1358686))

(assert (= (and b!1358686 res!903399) b!1358687))

(assert (= (and b!1358687 res!903394) b!1358685))

(assert (= (and b!1358685 res!903397) b!1358689))

(assert (= (and b!1358689 res!903400) b!1358693))

(assert (= (and b!1358693 res!903402) b!1358688))

(assert (= (and b!1358688 c!127087) b!1358690))

(assert (= (and b!1358688 (not c!127087)) b!1358684))

(declare-fun m!1244255 () Bool)

(assert (=> b!1358683 m!1244255))

(declare-fun m!1244257 () Bool)

(assert (=> b!1358686 m!1244257))

(declare-fun m!1244259 () Bool)

(assert (=> b!1358687 m!1244259))

(declare-fun m!1244261 () Bool)

(assert (=> start!114526 m!1244261))

(declare-fun m!1244263 () Bool)

(assert (=> b!1358692 m!1244263))

(declare-fun m!1244265 () Bool)

(assert (=> b!1358691 m!1244265))

(declare-fun m!1244267 () Bool)

(assert (=> b!1358689 m!1244267))

(declare-fun m!1244269 () Bool)

(assert (=> b!1358688 m!1244269))

(assert (=> b!1358688 m!1244269))

(declare-fun m!1244271 () Bool)

(assert (=> b!1358688 m!1244271))

(declare-fun m!1244273 () Bool)

(assert (=> b!1358690 m!1244273))

(assert (=> b!1358690 m!1244269))

(declare-fun m!1244275 () Bool)

(assert (=> b!1358690 m!1244275))

(declare-fun m!1244277 () Bool)

(assert (=> b!1358690 m!1244277))

(declare-fun m!1244279 () Bool)

(assert (=> b!1358690 m!1244279))

(assert (=> b!1358690 m!1244269))

(assert (=> b!1358690 m!1244275))

(declare-fun m!1244281 () Bool)

(assert (=> b!1358690 m!1244281))

(check-sat (not start!114526) (not b!1358690) (not b!1358689) (not b!1358691) (not b!1358686) (not b!1358692) (not b!1358683) (not b!1358688) (not b!1358687))
