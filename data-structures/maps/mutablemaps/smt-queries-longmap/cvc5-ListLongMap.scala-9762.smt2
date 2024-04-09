; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115730 () Bool)

(assert start!115730)

(declare-fun res!911511 () Bool)

(declare-fun e!775183 () Bool)

(assert (=> start!115730 (=> (not res!911511) (not e!775183))))

(declare-datatypes ((array!92845 0))(
  ( (array!92846 (arr!44842 (Array (_ BitVec 32) (_ BitVec 64))) (size!45393 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92845)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115730 (= res!911511 (and (bvslt (size!45393 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45393 a!3861))))))

(assert (=> start!115730 e!775183))

(declare-fun array_inv!33787 (array!92845) Bool)

(assert (=> start!115730 (array_inv!33787 a!3861)))

(assert (=> start!115730 true))

(declare-fun b!1367881 () Bool)

(declare-fun res!911516 () Bool)

(assert (=> b!1367881 (=> (not res!911516) (not e!775183))))

(declare-datatypes ((List!32090 0))(
  ( (Nil!32087) (Cons!32086 (h!33295 (_ BitVec 64)) (t!46791 List!32090)) )
))
(declare-fun newAcc!98 () List!32090)

(declare-fun acc!866 () List!32090)

(declare-fun subseq!1019 (List!32090 List!32090) Bool)

(assert (=> b!1367881 (= res!911516 (subseq!1019 newAcc!98 acc!866))))

(declare-fun b!1367882 () Bool)

(declare-fun e!775182 () Bool)

(assert (=> b!1367882 (= e!775183 e!775182)))

(declare-fun res!911510 () Bool)

(assert (=> b!1367882 (=> (not res!911510) (not e!775182))))

(declare-fun arrayNoDuplicates!0 (array!92845 (_ BitVec 32) List!32090) Bool)

(assert (=> b!1367882 (= res!911510 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45119 0))(
  ( (Unit!45120) )
))
(declare-fun lt!601916 () Unit!45119)

(declare-fun noDuplicateSubseq!206 (List!32090 List!32090) Unit!45119)

(assert (=> b!1367882 (= lt!601916 (noDuplicateSubseq!206 newAcc!98 acc!866))))

(declare-fun b!1367883 () Bool)

(declare-fun res!911517 () Bool)

(assert (=> b!1367883 (=> (not res!911517) (not e!775182))))

(assert (=> b!1367883 (= res!911517 (bvslt from!3239 (size!45393 a!3861)))))

(declare-fun b!1367884 () Bool)

(declare-fun res!911518 () Bool)

(assert (=> b!1367884 (=> (not res!911518) (not e!775183))))

(declare-fun noDuplicate!2507 (List!32090) Bool)

(assert (=> b!1367884 (= res!911518 (noDuplicate!2507 acc!866))))

(declare-fun b!1367885 () Bool)

(declare-fun res!911519 () Bool)

(assert (=> b!1367885 (=> (not res!911519) (not e!775183))))

(declare-fun contains!9628 (List!32090 (_ BitVec 64)) Bool)

(assert (=> b!1367885 (= res!911519 (not (contains!9628 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367886 () Bool)

(declare-fun res!911515 () Bool)

(assert (=> b!1367886 (=> (not res!911515) (not e!775182))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367886 (= res!911515 (not (validKeyInArray!0 (select (arr!44842 a!3861) from!3239))))))

(declare-fun b!1367887 () Bool)

(declare-fun res!911514 () Bool)

(assert (=> b!1367887 (=> (not res!911514) (not e!775183))))

(assert (=> b!1367887 (= res!911514 (not (contains!9628 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367888 () Bool)

(declare-fun res!911512 () Bool)

(assert (=> b!1367888 (=> (not res!911512) (not e!775183))))

(assert (=> b!1367888 (= res!911512 (not (contains!9628 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367889 () Bool)

(declare-fun res!911520 () Bool)

(assert (=> b!1367889 (=> (not res!911520) (not e!775182))))

(assert (=> b!1367889 (= res!911520 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367890 () Bool)

(declare-fun res!911513 () Bool)

(assert (=> b!1367890 (=> (not res!911513) (not e!775183))))

(assert (=> b!1367890 (= res!911513 (not (contains!9628 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367891 () Bool)

(assert (=> b!1367891 (= e!775182 false)))

(declare-fun lt!601915 () Bool)

(assert (=> b!1367891 (= lt!601915 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(assert (= (and start!115730 res!911511) b!1367884))

(assert (= (and b!1367884 res!911518) b!1367887))

(assert (= (and b!1367887 res!911514) b!1367890))

(assert (= (and b!1367890 res!911513) b!1367888))

(assert (= (and b!1367888 res!911512) b!1367885))

(assert (= (and b!1367885 res!911519) b!1367881))

(assert (= (and b!1367881 res!911516) b!1367882))

(assert (= (and b!1367882 res!911510) b!1367883))

(assert (= (and b!1367883 res!911517) b!1367886))

(assert (= (and b!1367886 res!911515) b!1367889))

(assert (= (and b!1367889 res!911520) b!1367891))

(declare-fun m!1252015 () Bool)

(assert (=> start!115730 m!1252015))

(declare-fun m!1252017 () Bool)

(assert (=> b!1367884 m!1252017))

(declare-fun m!1252019 () Bool)

(assert (=> b!1367891 m!1252019))

(declare-fun m!1252021 () Bool)

(assert (=> b!1367887 m!1252021))

(declare-fun m!1252023 () Bool)

(assert (=> b!1367888 m!1252023))

(declare-fun m!1252025 () Bool)

(assert (=> b!1367881 m!1252025))

(declare-fun m!1252027 () Bool)

(assert (=> b!1367885 m!1252027))

(declare-fun m!1252029 () Bool)

(assert (=> b!1367890 m!1252029))

(declare-fun m!1252031 () Bool)

(assert (=> b!1367886 m!1252031))

(assert (=> b!1367886 m!1252031))

(declare-fun m!1252033 () Bool)

(assert (=> b!1367886 m!1252033))

(declare-fun m!1252035 () Bool)

(assert (=> b!1367882 m!1252035))

(declare-fun m!1252037 () Bool)

(assert (=> b!1367882 m!1252037))

(push 1)

