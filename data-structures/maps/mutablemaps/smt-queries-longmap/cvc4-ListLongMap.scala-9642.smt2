; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114030 () Bool)

(assert start!114030)

(declare-fun b!1352457 () Bool)

(declare-fun res!897900 () Bool)

(declare-fun e!768822 () Bool)

(assert (=> b!1352457 (=> (not res!897900) (not e!768822))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92135 0))(
  ( (array!92136 (arr!44511 (Array (_ BitVec 32) (_ BitVec 64))) (size!45062 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92135)

(assert (=> b!1352457 (= res!897900 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45062 a!3742))))))

(declare-fun b!1352458 () Bool)

(declare-fun res!897901 () Bool)

(assert (=> b!1352458 (=> (not res!897901) (not e!768822))))

(declare-datatypes ((List!31732 0))(
  ( (Nil!31729) (Cons!31728 (h!32937 (_ BitVec 64)) (t!46397 List!31732)) )
))
(declare-fun arrayNoDuplicates!0 (array!92135 (_ BitVec 32) List!31732) Bool)

(assert (=> b!1352458 (= res!897901 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31729))))

(declare-fun b!1352459 () Bool)

(declare-fun res!897896 () Bool)

(assert (=> b!1352459 (=> (not res!897896) (not e!768822))))

(declare-fun acc!759 () List!31732)

(declare-fun noDuplicate!2176 (List!31732) Bool)

(assert (=> b!1352459 (= res!897896 (noDuplicate!2176 acc!759))))

(declare-fun b!1352460 () Bool)

(declare-datatypes ((Unit!44297 0))(
  ( (Unit!44298) )
))
(declare-fun e!768823 () Unit!44297)

(declare-fun lt!597516 () Unit!44297)

(assert (=> b!1352460 (= e!768823 lt!597516)))

(declare-fun lt!597518 () Unit!44297)

(declare-fun lemmaListSubSeqRefl!0 (List!31732) Unit!44297)

(assert (=> b!1352460 (= lt!597518 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!706 (List!31732 List!31732) Bool)

(assert (=> b!1352460 (subseq!706 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92135 List!31732 List!31732 (_ BitVec 32)) Unit!44297)

(declare-fun $colon$colon!723 (List!31732 (_ BitVec 64)) List!31732)

(assert (=> b!1352460 (= lt!597516 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!723 acc!759 (select (arr!44511 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352460 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352461 () Bool)

(declare-fun res!897902 () Bool)

(assert (=> b!1352461 (=> (not res!897902) (not e!768822))))

(assert (=> b!1352461 (= res!897902 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45062 a!3742)))))

(declare-fun res!897903 () Bool)

(assert (=> start!114030 (=> (not res!897903) (not e!768822))))

(assert (=> start!114030 (= res!897903 (and (bvslt (size!45062 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45062 a!3742))))))

(assert (=> start!114030 e!768822))

(assert (=> start!114030 true))

(declare-fun array_inv!33456 (array!92135) Bool)

(assert (=> start!114030 (array_inv!33456 a!3742)))

(declare-fun b!1352462 () Bool)

(declare-fun res!897897 () Bool)

(assert (=> b!1352462 (=> (not res!897897) (not e!768822))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352462 (= res!897897 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352463 () Bool)

(declare-fun Unit!44299 () Unit!44297)

(assert (=> b!1352463 (= e!768823 Unit!44299)))

(declare-fun b!1352464 () Bool)

(declare-fun res!897894 () Bool)

(assert (=> b!1352464 (=> (not res!897894) (not e!768822))))

(assert (=> b!1352464 (= res!897894 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352465 () Bool)

(declare-fun e!768820 () Bool)

(assert (=> b!1352465 (= e!768820 false)))

(declare-fun lt!597517 () Bool)

(assert (=> b!1352465 (= lt!597517 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352466 () Bool)

(declare-fun res!897895 () Bool)

(assert (=> b!1352466 (=> (not res!897895) (not e!768822))))

(declare-fun contains!9297 (List!31732 (_ BitVec 64)) Bool)

(assert (=> b!1352466 (= res!897895 (not (contains!9297 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352467 () Bool)

(declare-fun res!897898 () Bool)

(assert (=> b!1352467 (=> (not res!897898) (not e!768822))))

(assert (=> b!1352467 (= res!897898 (not (contains!9297 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352468 () Bool)

(assert (=> b!1352468 (= e!768822 e!768820)))

(declare-fun res!897899 () Bool)

(assert (=> b!1352468 (=> (not res!897899) (not e!768820))))

(assert (=> b!1352468 (= res!897899 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597515 () Unit!44297)

(assert (=> b!1352468 (= lt!597515 e!768823)))

(declare-fun c!126724 () Bool)

(assert (=> b!1352468 (= c!126724 (validKeyInArray!0 (select (arr!44511 a!3742) from!3120)))))

(assert (= (and start!114030 res!897903) b!1352459))

(assert (= (and b!1352459 res!897896) b!1352467))

(assert (= (and b!1352467 res!897898) b!1352466))

(assert (= (and b!1352466 res!897895) b!1352458))

(assert (= (and b!1352458 res!897901) b!1352464))

(assert (= (and b!1352464 res!897894) b!1352457))

(assert (= (and b!1352457 res!897900) b!1352462))

(assert (= (and b!1352462 res!897897) b!1352461))

(assert (= (and b!1352461 res!897902) b!1352468))

(assert (= (and b!1352468 c!126724) b!1352460))

(assert (= (and b!1352468 (not c!126724)) b!1352463))

(assert (= (and b!1352468 res!897899) b!1352465))

(declare-fun m!1239285 () Bool)

(assert (=> b!1352465 m!1239285))

(declare-fun m!1239287 () Bool)

(assert (=> b!1352460 m!1239287))

(declare-fun m!1239289 () Bool)

(assert (=> b!1352460 m!1239289))

(declare-fun m!1239291 () Bool)

(assert (=> b!1352460 m!1239291))

(declare-fun m!1239293 () Bool)

(assert (=> b!1352460 m!1239293))

(assert (=> b!1352460 m!1239285))

(assert (=> b!1352460 m!1239289))

(assert (=> b!1352460 m!1239291))

(declare-fun m!1239295 () Bool)

(assert (=> b!1352460 m!1239295))

(declare-fun m!1239297 () Bool)

(assert (=> b!1352467 m!1239297))

(assert (=> b!1352468 m!1239289))

(assert (=> b!1352468 m!1239289))

(declare-fun m!1239299 () Bool)

(assert (=> b!1352468 m!1239299))

(declare-fun m!1239301 () Bool)

(assert (=> b!1352466 m!1239301))

(declare-fun m!1239303 () Bool)

(assert (=> b!1352464 m!1239303))

(declare-fun m!1239305 () Bool)

(assert (=> b!1352462 m!1239305))

(declare-fun m!1239307 () Bool)

(assert (=> b!1352458 m!1239307))

(declare-fun m!1239309 () Bool)

(assert (=> b!1352459 m!1239309))

(declare-fun m!1239311 () Bool)

(assert (=> start!114030 m!1239311))

(push 1)

(assert (not b!1352465))

