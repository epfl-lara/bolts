; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115518 () Bool)

(assert start!115518)

(declare-fun b!1366086 () Bool)

(declare-fun res!909782 () Bool)

(declare-fun e!774351 () Bool)

(assert (=> b!1366086 (=> (not res!909782) (not e!774351))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92762 0))(
  ( (array!92763 (arr!44805 (Array (_ BitVec 32) (_ BitVec 64))) (size!45356 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92762)

(assert (=> b!1366086 (= res!909782 (bvslt from!3239 (size!45356 a!3861)))))

(declare-fun b!1366087 () Bool)

(declare-fun res!909783 () Bool)

(declare-fun e!774349 () Bool)

(assert (=> b!1366087 (=> (not res!909783) (not e!774349))))

(declare-datatypes ((List!32053 0))(
  ( (Nil!32050) (Cons!32049 (h!33258 (_ BitVec 64)) (t!46754 List!32053)) )
))
(declare-fun acc!866 () List!32053)

(declare-fun noDuplicate!2470 (List!32053) Bool)

(assert (=> b!1366087 (= res!909783 (noDuplicate!2470 acc!866))))

(declare-fun b!1366089 () Bool)

(declare-fun e!774352 () Bool)

(assert (=> b!1366089 (= e!774351 e!774352)))

(declare-fun res!909787 () Bool)

(assert (=> b!1366089 (=> (not res!909787) (not e!774352))))

(assert (=> b!1366089 (= res!909787 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun newAcc!98 () List!32053)

(declare-fun lt!601428 () List!32053)

(assert (=> b!1366089 (= lt!601428 (Cons!32049 (select (arr!44805 a!3861) from!3239) newAcc!98))))

(declare-fun lt!601429 () List!32053)

(assert (=> b!1366089 (= lt!601429 (Cons!32049 (select (arr!44805 a!3861) from!3239) acc!866))))

(declare-fun b!1366090 () Bool)

(declare-fun res!909792 () Bool)

(assert (=> b!1366090 (=> (not res!909792) (not e!774352))))

(declare-fun contains!9591 (List!32053 (_ BitVec 64)) Bool)

(assert (=> b!1366090 (= res!909792 (not (contains!9591 lt!601428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366091 () Bool)

(declare-fun res!909794 () Bool)

(assert (=> b!1366091 (=> (not res!909794) (not e!774349))))

(assert (=> b!1366091 (= res!909794 (not (contains!9591 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366092 () Bool)

(declare-fun res!909781 () Bool)

(assert (=> b!1366092 (=> (not res!909781) (not e!774352))))

(assert (=> b!1366092 (= res!909781 (not (contains!9591 lt!601428 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366093 () Bool)

(declare-fun res!909791 () Bool)

(assert (=> b!1366093 (=> (not res!909791) (not e!774349))))

(assert (=> b!1366093 (= res!909791 (not (contains!9591 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366094 () Bool)

(declare-fun res!909798 () Bool)

(assert (=> b!1366094 (=> (not res!909798) (not e!774349))))

(declare-fun subseq!982 (List!32053 List!32053) Bool)

(assert (=> b!1366094 (= res!909798 (subseq!982 newAcc!98 acc!866))))

(declare-fun res!909789 () Bool)

(assert (=> start!115518 (=> (not res!909789) (not e!774349))))

(assert (=> start!115518 (= res!909789 (and (bvslt (size!45356 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45356 a!3861))))))

(assert (=> start!115518 e!774349))

(declare-fun array_inv!33750 (array!92762) Bool)

(assert (=> start!115518 (array_inv!33750 a!3861)))

(assert (=> start!115518 true))

(declare-fun b!1366088 () Bool)

(declare-fun res!909795 () Bool)

(assert (=> b!1366088 (=> (not res!909795) (not e!774349))))

(assert (=> b!1366088 (= res!909795 (not (contains!9591 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366095 () Bool)

(assert (=> b!1366095 (= e!774349 e!774351)))

(declare-fun res!909788 () Bool)

(assert (=> b!1366095 (=> (not res!909788) (not e!774351))))

(declare-fun arrayNoDuplicates!0 (array!92762 (_ BitVec 32) List!32053) Bool)

(assert (=> b!1366095 (= res!909788 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45045 0))(
  ( (Unit!45046) )
))
(declare-fun lt!601430 () Unit!45045)

(declare-fun noDuplicateSubseq!169 (List!32053 List!32053) Unit!45045)

(assert (=> b!1366095 (= lt!601430 (noDuplicateSubseq!169 newAcc!98 acc!866))))

(declare-fun b!1366096 () Bool)

(declare-fun res!909785 () Bool)

(assert (=> b!1366096 (=> (not res!909785) (not e!774351))))

(assert (=> b!1366096 (= res!909785 (not (contains!9591 acc!866 (select (arr!44805 a!3861) from!3239))))))

(declare-fun b!1366097 () Bool)

(declare-fun res!909790 () Bool)

(assert (=> b!1366097 (=> (not res!909790) (not e!774349))))

(assert (=> b!1366097 (= res!909790 (not (contains!9591 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366098 () Bool)

(declare-fun res!909793 () Bool)

(assert (=> b!1366098 (=> (not res!909793) (not e!774351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366098 (= res!909793 (validKeyInArray!0 (select (arr!44805 a!3861) from!3239)))))

(declare-fun b!1366099 () Bool)

(declare-fun res!909786 () Bool)

(assert (=> b!1366099 (=> (not res!909786) (not e!774352))))

(assert (=> b!1366099 (= res!909786 (subseq!982 lt!601428 lt!601429))))

(declare-fun b!1366100 () Bool)

(declare-fun res!909797 () Bool)

(assert (=> b!1366100 (=> (not res!909797) (not e!774352))))

(assert (=> b!1366100 (= res!909797 (not (contains!9591 lt!601429 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366101 () Bool)

(assert (=> b!1366101 (= e!774352 false)))

(declare-fun lt!601427 () Bool)

(assert (=> b!1366101 (= lt!601427 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601429))))

(declare-fun lt!601426 () Unit!45045)

(assert (=> b!1366101 (= lt!601426 (noDuplicateSubseq!169 lt!601428 lt!601429))))

(declare-fun b!1366102 () Bool)

(declare-fun res!909784 () Bool)

(assert (=> b!1366102 (=> (not res!909784) (not e!774352))))

(assert (=> b!1366102 (= res!909784 (noDuplicate!2470 lt!601429))))

(declare-fun b!1366103 () Bool)

(declare-fun res!909796 () Bool)

(assert (=> b!1366103 (=> (not res!909796) (not e!774352))))

(assert (=> b!1366103 (= res!909796 (not (contains!9591 lt!601429 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115518 res!909789) b!1366087))

(assert (= (and b!1366087 res!909783) b!1366091))

(assert (= (and b!1366091 res!909794) b!1366088))

(assert (= (and b!1366088 res!909795) b!1366097))

(assert (= (and b!1366097 res!909790) b!1366093))

(assert (= (and b!1366093 res!909791) b!1366094))

(assert (= (and b!1366094 res!909798) b!1366095))

(assert (= (and b!1366095 res!909788) b!1366086))

(assert (= (and b!1366086 res!909782) b!1366098))

(assert (= (and b!1366098 res!909793) b!1366096))

(assert (= (and b!1366096 res!909785) b!1366089))

(assert (= (and b!1366089 res!909787) b!1366102))

(assert (= (and b!1366102 res!909784) b!1366100))

(assert (= (and b!1366100 res!909797) b!1366103))

(assert (= (and b!1366103 res!909796) b!1366090))

(assert (= (and b!1366090 res!909792) b!1366092))

(assert (= (and b!1366092 res!909781) b!1366099))

(assert (= (and b!1366099 res!909786) b!1366101))

(declare-fun m!1250481 () Bool)

(assert (=> b!1366088 m!1250481))

(declare-fun m!1250483 () Bool)

(assert (=> b!1366087 m!1250483))

(declare-fun m!1250485 () Bool)

(assert (=> b!1366095 m!1250485))

(declare-fun m!1250487 () Bool)

(assert (=> b!1366095 m!1250487))

(declare-fun m!1250489 () Bool)

(assert (=> b!1366099 m!1250489))

(declare-fun m!1250491 () Bool)

(assert (=> b!1366090 m!1250491))

(declare-fun m!1250493 () Bool)

(assert (=> b!1366097 m!1250493))

(declare-fun m!1250495 () Bool)

(assert (=> b!1366096 m!1250495))

(assert (=> b!1366096 m!1250495))

(declare-fun m!1250497 () Bool)

(assert (=> b!1366096 m!1250497))

(declare-fun m!1250499 () Bool)

(assert (=> b!1366094 m!1250499))

(assert (=> b!1366098 m!1250495))

(assert (=> b!1366098 m!1250495))

(declare-fun m!1250501 () Bool)

(assert (=> b!1366098 m!1250501))

(declare-fun m!1250503 () Bool)

(assert (=> b!1366091 m!1250503))

(declare-fun m!1250505 () Bool)

(assert (=> b!1366092 m!1250505))

(declare-fun m!1250507 () Bool)

(assert (=> b!1366093 m!1250507))

(declare-fun m!1250509 () Bool)

(assert (=> start!115518 m!1250509))

(declare-fun m!1250511 () Bool)

(assert (=> b!1366102 m!1250511))

(declare-fun m!1250513 () Bool)

(assert (=> b!1366100 m!1250513))

(declare-fun m!1250515 () Bool)

(assert (=> b!1366103 m!1250515))

(declare-fun m!1250517 () Bool)

(assert (=> b!1366101 m!1250517))

(declare-fun m!1250519 () Bool)

(assert (=> b!1366101 m!1250519))

(assert (=> b!1366089 m!1250495))

(push 1)

