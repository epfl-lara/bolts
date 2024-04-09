; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113946 () Bool)

(assert start!113946)

(declare-fun b!1350780 () Bool)

(declare-fun res!896368 () Bool)

(declare-fun e!768373 () Bool)

(assert (=> b!1350780 (=> (not res!896368) (not e!768373))))

(declare-datatypes ((List!31690 0))(
  ( (Nil!31687) (Cons!31686 (h!32895 (_ BitVec 64)) (t!46355 List!31690)) )
))
(declare-fun acc!759 () List!31690)

(declare-fun contains!9255 (List!31690 (_ BitVec 64)) Bool)

(assert (=> b!1350780 (= res!896368 (not (contains!9255 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350781 () Bool)

(declare-fun res!896359 () Bool)

(assert (=> b!1350781 (=> (not res!896359) (not e!768373))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92051 0))(
  ( (array!92052 (arr!44469 (Array (_ BitVec 32) (_ BitVec 64))) (size!45020 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92051)

(assert (=> b!1350781 (= res!896359 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45020 a!3742)))))

(declare-fun b!1350782 () Bool)

(declare-fun e!768371 () Bool)

(assert (=> b!1350782 (= e!768373 (not e!768371))))

(declare-fun res!896361 () Bool)

(assert (=> b!1350782 (=> res!896361 e!768371)))

(assert (=> b!1350782 (= res!896361 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!597013 () List!31690)

(declare-fun $colon$colon!681 (List!31690 (_ BitVec 64)) List!31690)

(assert (=> b!1350782 (= lt!597013 ($colon$colon!681 acc!759 (select (arr!44469 a!3742) from!3120)))))

(declare-fun subseq!664 (List!31690 List!31690) Bool)

(assert (=> b!1350782 (subseq!664 acc!759 acc!759)))

(declare-datatypes ((Unit!44190 0))(
  ( (Unit!44191) )
))
(declare-fun lt!597011 () Unit!44190)

(declare-fun lemmaListSubSeqRefl!0 (List!31690) Unit!44190)

(assert (=> b!1350782 (= lt!597011 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1350783 () Bool)

(declare-fun res!896366 () Bool)

(assert (=> b!1350783 (=> (not res!896366) (not e!768373))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350783 (= res!896366 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!896360 () Bool)

(assert (=> start!113946 (=> (not res!896360) (not e!768373))))

(assert (=> start!113946 (= res!896360 (and (bvslt (size!45020 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45020 a!3742))))))

(assert (=> start!113946 e!768373))

(assert (=> start!113946 true))

(declare-fun array_inv!33414 (array!92051) Bool)

(assert (=> start!113946 (array_inv!33414 a!3742)))

(declare-fun b!1350784 () Bool)

(declare-fun res!896365 () Bool)

(assert (=> b!1350784 (=> res!896365 e!768371)))

(assert (=> b!1350784 (= res!896365 (contains!9255 lt!597013 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350785 () Bool)

(declare-fun res!896362 () Bool)

(assert (=> b!1350785 (=> res!896362 e!768371)))

(assert (=> b!1350785 (= res!896362 (contains!9255 lt!597013 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350786 () Bool)

(declare-fun res!896372 () Bool)

(assert (=> b!1350786 (=> (not res!896372) (not e!768373))))

(declare-fun arrayNoDuplicates!0 (array!92051 (_ BitVec 32) List!31690) Bool)

(assert (=> b!1350786 (= res!896372 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31687))))

(declare-fun b!1350787 () Bool)

(declare-fun res!896367 () Bool)

(assert (=> b!1350787 (=> (not res!896367) (not e!768373))))

(declare-fun noDuplicate!2134 (List!31690) Bool)

(assert (=> b!1350787 (= res!896367 (noDuplicate!2134 acc!759))))

(declare-fun b!1350788 () Bool)

(declare-fun res!896369 () Bool)

(assert (=> b!1350788 (=> (not res!896369) (not e!768373))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350788 (= res!896369 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45020 a!3742))))))

(declare-fun b!1350789 () Bool)

(declare-fun res!896363 () Bool)

(assert (=> b!1350789 (=> res!896363 e!768371)))

(assert (=> b!1350789 (= res!896363 (not (subseq!664 acc!759 lt!597013)))))

(declare-fun b!1350790 () Bool)

(declare-fun res!896364 () Bool)

(assert (=> b!1350790 (=> (not res!896364) (not e!768373))))

(assert (=> b!1350790 (= res!896364 (validKeyInArray!0 (select (arr!44469 a!3742) from!3120)))))

(declare-fun b!1350791 () Bool)

(declare-fun res!896373 () Bool)

(assert (=> b!1350791 (=> res!896373 e!768371)))

(assert (=> b!1350791 (= res!896373 (not (noDuplicate!2134 lt!597013)))))

(declare-fun b!1350792 () Bool)

(declare-fun res!896371 () Bool)

(assert (=> b!1350792 (=> (not res!896371) (not e!768373))))

(assert (=> b!1350792 (= res!896371 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1350793 () Bool)

(declare-fun res!896370 () Bool)

(assert (=> b!1350793 (=> (not res!896370) (not e!768373))))

(assert (=> b!1350793 (= res!896370 (not (contains!9255 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350794 () Bool)

(assert (=> b!1350794 (= e!768371 true)))

(declare-fun lt!597014 () Bool)

(assert (=> b!1350794 (= lt!597014 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597013))))

(declare-fun lt!597012 () Unit!44190)

(declare-fun noDuplicateSubseq!115 (List!31690 List!31690) Unit!44190)

(assert (=> b!1350794 (= lt!597012 (noDuplicateSubseq!115 acc!759 lt!597013))))

(assert (= (and start!113946 res!896360) b!1350787))

(assert (= (and b!1350787 res!896367) b!1350780))

(assert (= (and b!1350780 res!896368) b!1350793))

(assert (= (and b!1350793 res!896370) b!1350786))

(assert (= (and b!1350786 res!896372) b!1350792))

(assert (= (and b!1350792 res!896371) b!1350788))

(assert (= (and b!1350788 res!896369) b!1350783))

(assert (= (and b!1350783 res!896366) b!1350781))

(assert (= (and b!1350781 res!896359) b!1350790))

(assert (= (and b!1350790 res!896364) b!1350782))

(assert (= (and b!1350782 (not res!896361)) b!1350791))

(assert (= (and b!1350791 (not res!896373)) b!1350784))

(assert (= (and b!1350784 (not res!896365)) b!1350785))

(assert (= (and b!1350785 (not res!896362)) b!1350789))

(assert (= (and b!1350789 (not res!896363)) b!1350794))

(declare-fun m!1237957 () Bool)

(assert (=> start!113946 m!1237957))

(declare-fun m!1237959 () Bool)

(assert (=> b!1350783 m!1237959))

(declare-fun m!1237961 () Bool)

(assert (=> b!1350784 m!1237961))

(declare-fun m!1237963 () Bool)

(assert (=> b!1350793 m!1237963))

(declare-fun m!1237965 () Bool)

(assert (=> b!1350791 m!1237965))

(declare-fun m!1237967 () Bool)

(assert (=> b!1350780 m!1237967))

(declare-fun m!1237969 () Bool)

(assert (=> b!1350782 m!1237969))

(assert (=> b!1350782 m!1237969))

(declare-fun m!1237971 () Bool)

(assert (=> b!1350782 m!1237971))

(declare-fun m!1237973 () Bool)

(assert (=> b!1350782 m!1237973))

(declare-fun m!1237975 () Bool)

(assert (=> b!1350782 m!1237975))

(declare-fun m!1237977 () Bool)

(assert (=> b!1350786 m!1237977))

(declare-fun m!1237979 () Bool)

(assert (=> b!1350794 m!1237979))

(declare-fun m!1237981 () Bool)

(assert (=> b!1350794 m!1237981))

(assert (=> b!1350790 m!1237969))

(assert (=> b!1350790 m!1237969))

(declare-fun m!1237983 () Bool)

(assert (=> b!1350790 m!1237983))

(declare-fun m!1237985 () Bool)

(assert (=> b!1350792 m!1237985))

(declare-fun m!1237987 () Bool)

(assert (=> b!1350789 m!1237987))

(declare-fun m!1237989 () Bool)

(assert (=> b!1350787 m!1237989))

(declare-fun m!1237991 () Bool)

(assert (=> b!1350785 m!1237991))

(push 1)

(assert (not b!1350794))

(assert (not b!1350792))

(assert (not b!1350791))

(assert (not b!1350787))

(assert (not b!1350785))

(assert (not b!1350786))

(assert (not start!113946))

