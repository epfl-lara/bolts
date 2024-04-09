; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114086 () Bool)

(assert start!114086)

(declare-fun b!1353653 () Bool)

(declare-fun res!898923 () Bool)

(declare-fun e!769198 () Bool)

(assert (=> b!1353653 (=> (not res!898923) (not e!769198))))

(declare-datatypes ((List!31760 0))(
  ( (Nil!31757) (Cons!31756 (h!32965 (_ BitVec 64)) (t!46425 List!31760)) )
))
(declare-fun lt!597929 () List!31760)

(declare-fun contains!9325 (List!31760 (_ BitVec 64)) Bool)

(assert (=> b!1353653 (= res!898923 (not (contains!9325 lt!597929 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353654 () Bool)

(declare-fun res!898927 () Bool)

(declare-fun e!769197 () Bool)

(assert (=> b!1353654 (=> (not res!898927) (not e!769197))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92191 0))(
  ( (array!92192 (arr!44539 (Array (_ BitVec 32) (_ BitVec 64))) (size!45090 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92191)

(assert (=> b!1353654 (= res!898927 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45090 a!3742))))))

(declare-fun b!1353655 () Bool)

(assert (=> b!1353655 (= e!769198 false)))

(declare-fun lt!597931 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92191 (_ BitVec 32) List!31760) Bool)

(assert (=> b!1353655 (= lt!597931 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597929))))

(declare-fun b!1353656 () Bool)

(declare-fun res!898932 () Bool)

(assert (=> b!1353656 (=> (not res!898932) (not e!769197))))

(declare-fun acc!759 () List!31760)

(assert (=> b!1353656 (= res!898932 (not (contains!9325 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353657 () Bool)

(declare-fun res!898926 () Bool)

(assert (=> b!1353657 (=> (not res!898926) (not e!769197))))

(assert (=> b!1353657 (= res!898926 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31757))))

(declare-fun b!1353658 () Bool)

(declare-fun res!898933 () Bool)

(assert (=> b!1353658 (=> (not res!898933) (not e!769197))))

(assert (=> b!1353658 (= res!898933 (not (contains!9325 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353659 () Bool)

(declare-fun res!898924 () Bool)

(assert (=> b!1353659 (=> (not res!898924) (not e!769197))))

(assert (=> b!1353659 (= res!898924 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353660 () Bool)

(declare-datatypes ((Unit!44381 0))(
  ( (Unit!44382) )
))
(declare-fun e!769194 () Unit!44381)

(declare-fun lt!597930 () Unit!44381)

(assert (=> b!1353660 (= e!769194 lt!597930)))

(declare-fun lt!597928 () Unit!44381)

(declare-fun lemmaListSubSeqRefl!0 (List!31760) Unit!44381)

(assert (=> b!1353660 (= lt!597928 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!734 (List!31760 List!31760) Bool)

(assert (=> b!1353660 (subseq!734 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92191 List!31760 List!31760 (_ BitVec 32)) Unit!44381)

(declare-fun $colon$colon!751 (List!31760 (_ BitVec 64)) List!31760)

(assert (=> b!1353660 (= lt!597930 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!751 acc!759 (select (arr!44539 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353660 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353661 () Bool)

(declare-fun res!898929 () Bool)

(assert (=> b!1353661 (=> (not res!898929) (not e!769197))))

(assert (=> b!1353661 (= res!898929 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45090 a!3742)))))

(declare-fun b!1353662 () Bool)

(declare-fun Unit!44383 () Unit!44381)

(assert (=> b!1353662 (= e!769194 Unit!44383)))

(declare-fun res!898934 () Bool)

(assert (=> start!114086 (=> (not res!898934) (not e!769197))))

(assert (=> start!114086 (= res!898934 (and (bvslt (size!45090 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45090 a!3742))))))

(assert (=> start!114086 e!769197))

(assert (=> start!114086 true))

(declare-fun array_inv!33484 (array!92191) Bool)

(assert (=> start!114086 (array_inv!33484 a!3742)))

(declare-fun b!1353663 () Bool)

(declare-fun res!898922 () Bool)

(assert (=> b!1353663 (=> (not res!898922) (not e!769198))))

(assert (=> b!1353663 (= res!898922 (not (contains!9325 lt!597929 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353664 () Bool)

(declare-fun res!898930 () Bool)

(assert (=> b!1353664 (=> (not res!898930) (not e!769198))))

(declare-fun noDuplicate!2204 (List!31760) Bool)

(assert (=> b!1353664 (= res!898930 (noDuplicate!2204 lt!597929))))

(declare-fun b!1353665 () Bool)

(declare-fun res!898928 () Bool)

(assert (=> b!1353665 (=> (not res!898928) (not e!769197))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353665 (= res!898928 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353666 () Bool)

(declare-fun e!769196 () Bool)

(assert (=> b!1353666 (= e!769197 e!769196)))

(declare-fun res!898931 () Bool)

(assert (=> b!1353666 (=> (not res!898931) (not e!769196))))

(declare-fun lt!597932 () Bool)

(assert (=> b!1353666 (= res!898931 (and (not (= from!3120 i!1404)) lt!597932))))

(declare-fun lt!597927 () Unit!44381)

(assert (=> b!1353666 (= lt!597927 e!769194)))

(declare-fun c!126808 () Bool)

(assert (=> b!1353666 (= c!126808 lt!597932)))

(assert (=> b!1353666 (= lt!597932 (validKeyInArray!0 (select (arr!44539 a!3742) from!3120)))))

(declare-fun b!1353667 () Bool)

(assert (=> b!1353667 (= e!769196 e!769198)))

(declare-fun res!898925 () Bool)

(assert (=> b!1353667 (=> (not res!898925) (not e!769198))))

(assert (=> b!1353667 (= res!898925 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353667 (= lt!597929 ($colon$colon!751 acc!759 (select (arr!44539 a!3742) from!3120)))))

(declare-fun b!1353668 () Bool)

(declare-fun res!898935 () Bool)

(assert (=> b!1353668 (=> (not res!898935) (not e!769197))))

(assert (=> b!1353668 (= res!898935 (noDuplicate!2204 acc!759))))

(assert (= (and start!114086 res!898934) b!1353668))

(assert (= (and b!1353668 res!898935) b!1353656))

(assert (= (and b!1353656 res!898932) b!1353658))

(assert (= (and b!1353658 res!898933) b!1353657))

(assert (= (and b!1353657 res!898926) b!1353659))

(assert (= (and b!1353659 res!898924) b!1353654))

(assert (= (and b!1353654 res!898927) b!1353665))

(assert (= (and b!1353665 res!898928) b!1353661))

(assert (= (and b!1353661 res!898929) b!1353666))

(assert (= (and b!1353666 c!126808) b!1353660))

(assert (= (and b!1353666 (not c!126808)) b!1353662))

(assert (= (and b!1353666 res!898931) b!1353667))

(assert (= (and b!1353667 res!898925) b!1353664))

(assert (= (and b!1353664 res!898930) b!1353653))

(assert (= (and b!1353653 res!898923) b!1353663))

(assert (= (and b!1353663 res!898922) b!1353655))

(declare-fun m!1240237 () Bool)

(assert (=> b!1353663 m!1240237))

(declare-fun m!1240239 () Bool)

(assert (=> b!1353659 m!1240239))

(declare-fun m!1240241 () Bool)

(assert (=> b!1353660 m!1240241))

(declare-fun m!1240243 () Bool)

(assert (=> b!1353660 m!1240243))

(declare-fun m!1240245 () Bool)

(assert (=> b!1353660 m!1240245))

(declare-fun m!1240247 () Bool)

(assert (=> b!1353660 m!1240247))

(declare-fun m!1240249 () Bool)

(assert (=> b!1353660 m!1240249))

(assert (=> b!1353660 m!1240243))

(assert (=> b!1353660 m!1240245))

(declare-fun m!1240251 () Bool)

(assert (=> b!1353660 m!1240251))

(declare-fun m!1240253 () Bool)

(assert (=> b!1353657 m!1240253))

(declare-fun m!1240255 () Bool)

(assert (=> b!1353655 m!1240255))

(declare-fun m!1240257 () Bool)

(assert (=> start!114086 m!1240257))

(declare-fun m!1240259 () Bool)

(assert (=> b!1353653 m!1240259))

(assert (=> b!1353667 m!1240243))

(assert (=> b!1353667 m!1240243))

(assert (=> b!1353667 m!1240245))

(declare-fun m!1240261 () Bool)

(assert (=> b!1353656 m!1240261))

(declare-fun m!1240263 () Bool)

(assert (=> b!1353658 m!1240263))

(declare-fun m!1240265 () Bool)

(assert (=> b!1353668 m!1240265))

(assert (=> b!1353666 m!1240243))

(assert (=> b!1353666 m!1240243))

(declare-fun m!1240267 () Bool)

(assert (=> b!1353666 m!1240267))

(declare-fun m!1240269 () Bool)

(assert (=> b!1353664 m!1240269))

(declare-fun m!1240271 () Bool)

(assert (=> b!1353665 m!1240271))

(push 1)

