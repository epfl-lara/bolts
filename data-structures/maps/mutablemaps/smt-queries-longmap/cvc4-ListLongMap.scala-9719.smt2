; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115026 () Bool)

(assert start!115026)

(declare-fun b!1362934 () Bool)

(declare-datatypes ((Unit!44909 0))(
  ( (Unit!44910) )
))
(declare-fun e!773018 () Unit!44909)

(declare-fun lt!600589 () Unit!44909)

(assert (=> b!1362934 (= e!773018 lt!600589)))

(declare-fun lt!600588 () Unit!44909)

(declare-datatypes ((List!31963 0))(
  ( (Nil!31960) (Cons!31959 (h!33168 (_ BitVec 64)) (t!46658 List!31963)) )
))
(declare-fun acc!759 () List!31963)

(declare-fun lemmaListSubSeqRefl!0 (List!31963) Unit!44909)

(assert (=> b!1362934 (= lt!600588 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!919 (List!31963 List!31963) Bool)

(assert (=> b!1362934 (subseq!919 acc!759 acc!759)))

(declare-datatypes ((array!92627 0))(
  ( (array!92628 (arr!44742 (Array (_ BitVec 32) (_ BitVec 64))) (size!45293 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92627)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92627 List!31963 List!31963 (_ BitVec 32)) Unit!44909)

(declare-fun $colon$colon!924 (List!31963 (_ BitVec 64)) List!31963)

(assert (=> b!1362934 (= lt!600589 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!924 acc!759 (select (arr!44742 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92627 (_ BitVec 32) List!31963) Bool)

(assert (=> b!1362934 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362935 () Bool)

(declare-fun res!906940 () Bool)

(declare-fun e!773020 () Bool)

(assert (=> b!1362935 (=> (not res!906940) (not e!773020))))

(declare-fun contains!9528 (List!31963 (_ BitVec 64)) Bool)

(assert (=> b!1362935 (= res!906940 (not (contains!9528 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362936 () Bool)

(assert (=> b!1362936 (= e!773020 false)))

(declare-fun lt!600590 () Unit!44909)

(assert (=> b!1362936 (= lt!600590 e!773018)))

(declare-fun c!127441 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362936 (= c!127441 (validKeyInArray!0 (select (arr!44742 a!3742) from!3120)))))

(declare-fun b!1362937 () Bool)

(declare-fun res!906939 () Bool)

(assert (=> b!1362937 (=> (not res!906939) (not e!773020))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362937 (= res!906939 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45293 a!3742))))))

(declare-fun b!1362938 () Bool)

(declare-fun res!906937 () Bool)

(assert (=> b!1362938 (=> (not res!906937) (not e!773020))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362938 (= res!906937 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362939 () Bool)

(declare-fun res!906941 () Bool)

(assert (=> b!1362939 (=> (not res!906941) (not e!773020))))

(declare-fun noDuplicate!2407 (List!31963) Bool)

(assert (=> b!1362939 (= res!906941 (noDuplicate!2407 acc!759))))

(declare-fun b!1362940 () Bool)

(declare-fun res!906945 () Bool)

(assert (=> b!1362940 (=> (not res!906945) (not e!773020))))

(assert (=> b!1362940 (= res!906945 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45293 a!3742)))))

(declare-fun b!1362941 () Bool)

(declare-fun res!906943 () Bool)

(assert (=> b!1362941 (=> (not res!906943) (not e!773020))))

(assert (=> b!1362941 (= res!906943 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31960))))

(declare-fun b!1362942 () Bool)

(declare-fun res!906942 () Bool)

(assert (=> b!1362942 (=> (not res!906942) (not e!773020))))

(assert (=> b!1362942 (= res!906942 (not (contains!9528 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!906944 () Bool)

(assert (=> start!115026 (=> (not res!906944) (not e!773020))))

(assert (=> start!115026 (= res!906944 (and (bvslt (size!45293 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45293 a!3742))))))

(assert (=> start!115026 e!773020))

(assert (=> start!115026 true))

(declare-fun array_inv!33687 (array!92627) Bool)

(assert (=> start!115026 (array_inv!33687 a!3742)))

(declare-fun b!1362943 () Bool)

(declare-fun res!906938 () Bool)

(assert (=> b!1362943 (=> (not res!906938) (not e!773020))))

(assert (=> b!1362943 (= res!906938 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362944 () Bool)

(declare-fun Unit!44911 () Unit!44909)

(assert (=> b!1362944 (= e!773018 Unit!44911)))

(assert (= (and start!115026 res!906944) b!1362939))

(assert (= (and b!1362939 res!906941) b!1362935))

(assert (= (and b!1362935 res!906940) b!1362942))

(assert (= (and b!1362942 res!906942) b!1362941))

(assert (= (and b!1362941 res!906943) b!1362943))

(assert (= (and b!1362943 res!906938) b!1362937))

(assert (= (and b!1362937 res!906939) b!1362938))

(assert (= (and b!1362938 res!906937) b!1362940))

(assert (= (and b!1362940 res!906945) b!1362936))

(assert (= (and b!1362936 c!127441) b!1362934))

(assert (= (and b!1362936 (not c!127441)) b!1362944))

(declare-fun m!1247859 () Bool)

(assert (=> b!1362942 m!1247859))

(declare-fun m!1247861 () Bool)

(assert (=> start!115026 m!1247861))

(declare-fun m!1247863 () Bool)

(assert (=> b!1362935 m!1247863))

(declare-fun m!1247865 () Bool)

(assert (=> b!1362936 m!1247865))

(assert (=> b!1362936 m!1247865))

(declare-fun m!1247867 () Bool)

(assert (=> b!1362936 m!1247867))

(declare-fun m!1247869 () Bool)

(assert (=> b!1362941 m!1247869))

(declare-fun m!1247871 () Bool)

(assert (=> b!1362939 m!1247871))

(declare-fun m!1247873 () Bool)

(assert (=> b!1362934 m!1247873))

(assert (=> b!1362934 m!1247865))

(declare-fun m!1247875 () Bool)

(assert (=> b!1362934 m!1247875))

(declare-fun m!1247877 () Bool)

(assert (=> b!1362934 m!1247877))

(declare-fun m!1247879 () Bool)

(assert (=> b!1362934 m!1247879))

(assert (=> b!1362934 m!1247865))

(assert (=> b!1362934 m!1247875))

(declare-fun m!1247881 () Bool)

(assert (=> b!1362934 m!1247881))

(declare-fun m!1247883 () Bool)

(assert (=> b!1362938 m!1247883))

(declare-fun m!1247885 () Bool)

(assert (=> b!1362943 m!1247885))

(push 1)

(assert (not b!1362941))

(assert (not b!1362935))

(assert (not b!1362942))

(assert (not b!1362938))

(assert (not b!1362943))

(assert (not b!1362936))

(assert (not b!1362939))

(assert (not start!115026))

(assert (not b!1362934))

(check-sat)

(pop 1)

(push 1)

