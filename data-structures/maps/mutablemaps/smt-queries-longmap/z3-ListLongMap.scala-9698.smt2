; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114616 () Bool)

(assert start!114616)

(declare-fun b!1359467 () Bool)

(declare-fun res!904050 () Bool)

(declare-fun e!771419 () Bool)

(assert (=> b!1359467 (=> (not res!904050) (not e!771419))))

(declare-datatypes ((array!92484 0))(
  ( (array!92485 (arr!44678 (Array (_ BitVec 32) (_ BitVec 64))) (size!45229 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92484)

(declare-datatypes ((List!31899 0))(
  ( (Nil!31896) (Cons!31895 (h!33104 (_ BitVec 64)) (t!46579 List!31899)) )
))
(declare-fun arrayNoDuplicates!0 (array!92484 (_ BitVec 32) List!31899) Bool)

(assert (=> b!1359467 (= res!904050 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31896))))

(declare-fun b!1359468 () Bool)

(declare-fun res!904040 () Bool)

(assert (=> b!1359468 (=> (not res!904040) (not e!771419))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359468 (= res!904040 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45229 a!3742))))))

(declare-fun res!904047 () Bool)

(assert (=> start!114616 (=> (not res!904047) (not e!771419))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114616 (= res!904047 (and (bvslt (size!45229 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45229 a!3742))))))

(assert (=> start!114616 e!771419))

(assert (=> start!114616 true))

(declare-fun array_inv!33623 (array!92484) Bool)

(assert (=> start!114616 (array_inv!33623 a!3742)))

(declare-fun b!1359469 () Bool)

(declare-fun res!904048 () Bool)

(assert (=> b!1359469 (=> (not res!904048) (not e!771419))))

(declare-fun acc!759 () List!31899)

(declare-fun noDuplicate!2343 (List!31899) Bool)

(assert (=> b!1359469 (= res!904048 (noDuplicate!2343 acc!759))))

(declare-fun b!1359470 () Bool)

(declare-fun res!904044 () Bool)

(assert (=> b!1359470 (=> (not res!904044) (not e!771419))))

(assert (=> b!1359470 (= res!904044 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359471 () Bool)

(declare-datatypes ((Unit!44717 0))(
  ( (Unit!44718) )
))
(declare-fun e!771420 () Unit!44717)

(declare-fun Unit!44719 () Unit!44717)

(assert (=> b!1359471 (= e!771420 Unit!44719)))

(declare-fun b!1359472 () Bool)

(declare-fun e!771421 () Bool)

(assert (=> b!1359472 (= e!771421 (bvsge (bvsub (size!45229 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45229 a!3742) from!3120)))))

(declare-fun b!1359473 () Bool)

(declare-fun res!904041 () Bool)

(assert (=> b!1359473 (=> (not res!904041) (not e!771419))))

(assert (=> b!1359473 (= res!904041 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45229 a!3742)))))

(declare-fun b!1359474 () Bool)

(declare-fun lt!599574 () Unit!44717)

(assert (=> b!1359474 (= e!771420 lt!599574)))

(declare-fun lt!599575 () Unit!44717)

(declare-fun lemmaListSubSeqRefl!0 (List!31899) Unit!44717)

(assert (=> b!1359474 (= lt!599575 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!855 (List!31899 List!31899) Bool)

(assert (=> b!1359474 (subseq!855 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92484 List!31899 List!31899 (_ BitVec 32)) Unit!44717)

(declare-fun $colon$colon!860 (List!31899 (_ BitVec 64)) List!31899)

(assert (=> b!1359474 (= lt!599574 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!860 acc!759 (select (arr!44678 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359474 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359475 () Bool)

(declare-fun res!904046 () Bool)

(assert (=> b!1359475 (=> (not res!904046) (not e!771421))))

(assert (=> b!1359475 (= res!904046 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359476 () Bool)

(declare-fun res!904042 () Bool)

(assert (=> b!1359476 (=> (not res!904042) (not e!771419))))

(declare-fun contains!9464 (List!31899 (_ BitVec 64)) Bool)

(assert (=> b!1359476 (= res!904042 (not (contains!9464 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359477 () Bool)

(declare-fun res!904043 () Bool)

(assert (=> b!1359477 (=> (not res!904043) (not e!771419))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359477 (= res!904043 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359478 () Bool)

(assert (=> b!1359478 (= e!771419 e!771421)))

(declare-fun res!904049 () Bool)

(assert (=> b!1359478 (=> (not res!904049) (not e!771421))))

(assert (=> b!1359478 (= res!904049 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599576 () Unit!44717)

(assert (=> b!1359478 (= lt!599576 e!771420)))

(declare-fun c!127156 () Bool)

(assert (=> b!1359478 (= c!127156 (validKeyInArray!0 (select (arr!44678 a!3742) from!3120)))))

(declare-fun b!1359479 () Bool)

(declare-fun res!904045 () Bool)

(assert (=> b!1359479 (=> (not res!904045) (not e!771419))))

(assert (=> b!1359479 (= res!904045 (not (contains!9464 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114616 res!904047) b!1359469))

(assert (= (and b!1359469 res!904048) b!1359476))

(assert (= (and b!1359476 res!904042) b!1359479))

(assert (= (and b!1359479 res!904045) b!1359467))

(assert (= (and b!1359467 res!904050) b!1359470))

(assert (= (and b!1359470 res!904044) b!1359468))

(assert (= (and b!1359468 res!904040) b!1359477))

(assert (= (and b!1359477 res!904043) b!1359473))

(assert (= (and b!1359473 res!904041) b!1359478))

(assert (= (and b!1359478 c!127156) b!1359474))

(assert (= (and b!1359478 (not c!127156)) b!1359471))

(assert (= (and b!1359478 res!904049) b!1359475))

(assert (= (and b!1359475 res!904046) b!1359472))

(declare-fun m!1244885 () Bool)

(assert (=> b!1359477 m!1244885))

(declare-fun m!1244887 () Bool)

(assert (=> b!1359479 m!1244887))

(declare-fun m!1244889 () Bool)

(assert (=> b!1359474 m!1244889))

(declare-fun m!1244891 () Bool)

(assert (=> b!1359474 m!1244891))

(declare-fun m!1244893 () Bool)

(assert (=> b!1359474 m!1244893))

(declare-fun m!1244895 () Bool)

(assert (=> b!1359474 m!1244895))

(declare-fun m!1244897 () Bool)

(assert (=> b!1359474 m!1244897))

(assert (=> b!1359474 m!1244891))

(assert (=> b!1359474 m!1244893))

(declare-fun m!1244899 () Bool)

(assert (=> b!1359474 m!1244899))

(declare-fun m!1244901 () Bool)

(assert (=> b!1359476 m!1244901))

(declare-fun m!1244903 () Bool)

(assert (=> b!1359467 m!1244903))

(assert (=> b!1359475 m!1244897))

(assert (=> b!1359478 m!1244891))

(assert (=> b!1359478 m!1244891))

(declare-fun m!1244905 () Bool)

(assert (=> b!1359478 m!1244905))

(declare-fun m!1244907 () Bool)

(assert (=> start!114616 m!1244907))

(declare-fun m!1244909 () Bool)

(assert (=> b!1359469 m!1244909))

(declare-fun m!1244911 () Bool)

(assert (=> b!1359470 m!1244911))

(check-sat (not b!1359479) (not b!1359476) (not b!1359470) (not b!1359469) (not b!1359478) (not b!1359477) (not b!1359475) (not b!1359467) (not b!1359474) (not start!114616))
(check-sat)
