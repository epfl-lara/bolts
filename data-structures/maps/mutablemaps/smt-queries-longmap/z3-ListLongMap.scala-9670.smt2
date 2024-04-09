; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114196 () Bool)

(assert start!114196)

(declare-fun b!1355990 () Bool)

(declare-fun res!900933 () Bool)

(declare-fun e!769935 () Bool)

(assert (=> b!1355990 (=> (not res!900933) (not e!769935))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355990 (= res!900933 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355991 () Bool)

(declare-fun res!900935 () Bool)

(assert (=> b!1355991 (=> (not res!900935) (not e!769935))))

(declare-datatypes ((List!31815 0))(
  ( (Nil!31812) (Cons!31811 (h!33020 (_ BitVec 64)) (t!46480 List!31815)) )
))
(declare-fun acc!759 () List!31815)

(declare-fun noDuplicate!2259 (List!31815) Bool)

(assert (=> b!1355991 (= res!900935 (noDuplicate!2259 acc!759))))

(declare-fun b!1355992 () Bool)

(declare-datatypes ((Unit!44546 0))(
  ( (Unit!44547) )
))
(declare-fun e!769936 () Unit!44546)

(declare-fun Unit!44548 () Unit!44546)

(assert (=> b!1355992 (= e!769936 Unit!44548)))

(declare-fun b!1355993 () Bool)

(declare-fun res!900937 () Bool)

(assert (=> b!1355993 (=> (not res!900937) (not e!769935))))

(declare-fun contains!9380 (List!31815 (_ BitVec 64)) Bool)

(assert (=> b!1355993 (= res!900937 (not (contains!9380 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355994 () Bool)

(declare-fun lt!598833 () Unit!44546)

(assert (=> b!1355994 (= e!769936 lt!598833)))

(declare-fun lt!598832 () Unit!44546)

(declare-fun lemmaListSubSeqRefl!0 (List!31815) Unit!44546)

(assert (=> b!1355994 (= lt!598832 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!789 (List!31815 List!31815) Bool)

(assert (=> b!1355994 (subseq!789 acc!759 acc!759)))

(declare-datatypes ((array!92301 0))(
  ( (array!92302 (arr!44594 (Array (_ BitVec 32) (_ BitVec 64))) (size!45145 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92301)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92301 List!31815 List!31815 (_ BitVec 32)) Unit!44546)

(declare-fun $colon$colon!806 (List!31815 (_ BitVec 64)) List!31815)

(assert (=> b!1355994 (= lt!598833 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!806 acc!759 (select (arr!44594 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92301 (_ BitVec 32) List!31815) Bool)

(assert (=> b!1355994 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355995 () Bool)

(declare-fun e!769933 () Bool)

(assert (=> b!1355995 (= e!769933 (not (bvsle from!3120 (size!45145 a!3742))))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355995 (arrayNoDuplicates!0 (array!92302 (store (arr!44594 a!3742) i!1404 l!3587) (size!45145 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!598835 () Unit!44546)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92301 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31815) Unit!44546)

(assert (=> b!1355995 (= lt!598835 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355996 () Bool)

(assert (=> b!1355996 (= e!769935 e!769933)))

(declare-fun res!900936 () Bool)

(assert (=> b!1355996 (=> (not res!900936) (not e!769933))))

(declare-fun lt!598831 () Bool)

(assert (=> b!1355996 (= res!900936 (and (not (= from!3120 i!1404)) (not lt!598831) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598834 () Unit!44546)

(assert (=> b!1355996 (= lt!598834 e!769936)))

(declare-fun c!126973 () Bool)

(assert (=> b!1355996 (= c!126973 lt!598831)))

(assert (=> b!1355996 (= lt!598831 (validKeyInArray!0 (select (arr!44594 a!3742) from!3120)))))

(declare-fun b!1355997 () Bool)

(declare-fun res!900934 () Bool)

(assert (=> b!1355997 (=> (not res!900934) (not e!769935))))

(assert (=> b!1355997 (= res!900934 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31812))))

(declare-fun b!1355998 () Bool)

(declare-fun res!900931 () Bool)

(assert (=> b!1355998 (=> (not res!900931) (not e!769933))))

(assert (=> b!1355998 (= res!900931 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355999 () Bool)

(declare-fun res!900929 () Bool)

(assert (=> b!1355999 (=> (not res!900929) (not e!769935))))

(assert (=> b!1355999 (= res!900929 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356000 () Bool)

(declare-fun res!900939 () Bool)

(assert (=> b!1356000 (=> (not res!900939) (not e!769935))))

(assert (=> b!1356000 (= res!900939 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45145 a!3742)))))

(declare-fun res!900938 () Bool)

(assert (=> start!114196 (=> (not res!900938) (not e!769935))))

(assert (=> start!114196 (= res!900938 (and (bvslt (size!45145 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45145 a!3742))))))

(assert (=> start!114196 e!769935))

(assert (=> start!114196 true))

(declare-fun array_inv!33539 (array!92301) Bool)

(assert (=> start!114196 (array_inv!33539 a!3742)))

(declare-fun b!1356001 () Bool)

(declare-fun res!900932 () Bool)

(assert (=> b!1356001 (=> (not res!900932) (not e!769935))))

(assert (=> b!1356001 (= res!900932 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45145 a!3742))))))

(declare-fun b!1356002 () Bool)

(declare-fun res!900930 () Bool)

(assert (=> b!1356002 (=> (not res!900930) (not e!769935))))

(assert (=> b!1356002 (= res!900930 (not (contains!9380 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114196 res!900938) b!1355991))

(assert (= (and b!1355991 res!900935) b!1356002))

(assert (= (and b!1356002 res!900930) b!1355993))

(assert (= (and b!1355993 res!900937) b!1355997))

(assert (= (and b!1355997 res!900934) b!1355999))

(assert (= (and b!1355999 res!900929) b!1356001))

(assert (= (and b!1356001 res!900932) b!1355990))

(assert (= (and b!1355990 res!900933) b!1356000))

(assert (= (and b!1356000 res!900939) b!1355996))

(assert (= (and b!1355996 c!126973) b!1355994))

(assert (= (and b!1355996 (not c!126973)) b!1355992))

(assert (= (and b!1355996 res!900936) b!1355998))

(assert (= (and b!1355998 res!900931) b!1355995))

(declare-fun m!1242071 () Bool)

(assert (=> b!1355990 m!1242071))

(declare-fun m!1242073 () Bool)

(assert (=> b!1355997 m!1242073))

(declare-fun m!1242075 () Bool)

(assert (=> b!1355994 m!1242075))

(declare-fun m!1242077 () Bool)

(assert (=> b!1355994 m!1242077))

(declare-fun m!1242079 () Bool)

(assert (=> b!1355994 m!1242079))

(declare-fun m!1242081 () Bool)

(assert (=> b!1355994 m!1242081))

(declare-fun m!1242083 () Bool)

(assert (=> b!1355994 m!1242083))

(assert (=> b!1355994 m!1242077))

(assert (=> b!1355994 m!1242079))

(declare-fun m!1242085 () Bool)

(assert (=> b!1355994 m!1242085))

(declare-fun m!1242087 () Bool)

(assert (=> b!1355993 m!1242087))

(assert (=> b!1355996 m!1242077))

(assert (=> b!1355996 m!1242077))

(declare-fun m!1242089 () Bool)

(assert (=> b!1355996 m!1242089))

(declare-fun m!1242091 () Bool)

(assert (=> b!1355995 m!1242091))

(declare-fun m!1242093 () Bool)

(assert (=> b!1355995 m!1242093))

(declare-fun m!1242095 () Bool)

(assert (=> b!1355995 m!1242095))

(declare-fun m!1242097 () Bool)

(assert (=> b!1356002 m!1242097))

(declare-fun m!1242099 () Bool)

(assert (=> b!1355999 m!1242099))

(declare-fun m!1242101 () Bool)

(assert (=> start!114196 m!1242101))

(assert (=> b!1355998 m!1242083))

(declare-fun m!1242103 () Bool)

(assert (=> b!1355991 m!1242103))

(check-sat (not b!1355993) (not b!1355999) (not b!1355995) (not b!1355997) (not b!1355998) (not b!1355990) (not b!1355991) (not b!1355996) (not start!114196) (not b!1355994) (not b!1356002))
(check-sat)
