; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114102 () Bool)

(assert start!114102)

(declare-fun b!1354037 () Bool)

(declare-fun e!769315 () Bool)

(declare-fun e!769318 () Bool)

(assert (=> b!1354037 (= e!769315 e!769318)))

(declare-fun res!899261 () Bool)

(assert (=> b!1354037 (=> (not res!899261) (not e!769318))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598076 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354037 (= res!899261 (and (not (= from!3120 i!1404)) lt!598076))))

(declare-datatypes ((Unit!44405 0))(
  ( (Unit!44406) )
))
(declare-fun lt!598075 () Unit!44405)

(declare-fun e!769314 () Unit!44405)

(assert (=> b!1354037 (= lt!598075 e!769314)))

(declare-fun c!126832 () Bool)

(assert (=> b!1354037 (= c!126832 lt!598076)))

(declare-datatypes ((array!92207 0))(
  ( (array!92208 (arr!44547 (Array (_ BitVec 32) (_ BitVec 64))) (size!45098 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92207)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354037 (= lt!598076 (validKeyInArray!0 (select (arr!44547 a!3742) from!3120)))))

(declare-fun b!1354038 () Bool)

(declare-fun res!899266 () Bool)

(declare-fun e!769317 () Bool)

(assert (=> b!1354038 (=> (not res!899266) (not e!769317))))

(declare-datatypes ((List!31768 0))(
  ( (Nil!31765) (Cons!31764 (h!32973 (_ BitVec 64)) (t!46433 List!31768)) )
))
(declare-fun lt!598071 () List!31768)

(declare-fun noDuplicate!2212 (List!31768) Bool)

(assert (=> b!1354038 (= res!899266 (noDuplicate!2212 lt!598071))))

(declare-fun b!1354039 () Bool)

(declare-fun res!899262 () Bool)

(assert (=> b!1354039 (=> (not res!899262) (not e!769315))))

(assert (=> b!1354039 (= res!899262 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45098 a!3742)))))

(declare-fun b!1354040 () Bool)

(declare-fun res!899270 () Bool)

(assert (=> b!1354040 (=> (not res!899270) (not e!769317))))

(declare-fun contains!9333 (List!31768 (_ BitVec 64)) Bool)

(assert (=> b!1354040 (= res!899270 (not (contains!9333 lt!598071 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354041 () Bool)

(declare-fun res!899264 () Bool)

(assert (=> b!1354041 (=> (not res!899264) (not e!769315))))

(declare-fun acc!759 () List!31768)

(declare-fun arrayNoDuplicates!0 (array!92207 (_ BitVec 32) List!31768) Bool)

(assert (=> b!1354041 (= res!899264 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354042 () Bool)

(declare-fun res!899263 () Bool)

(assert (=> b!1354042 (=> (not res!899263) (not e!769315))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354042 (= res!899263 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354043 () Bool)

(declare-fun res!899268 () Bool)

(assert (=> b!1354043 (=> (not res!899268) (not e!769315))))

(assert (=> b!1354043 (= res!899268 (noDuplicate!2212 acc!759))))

(declare-fun res!899265 () Bool)

(assert (=> start!114102 (=> (not res!899265) (not e!769315))))

(assert (=> start!114102 (= res!899265 (and (bvslt (size!45098 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45098 a!3742))))))

(assert (=> start!114102 e!769315))

(assert (=> start!114102 true))

(declare-fun array_inv!33492 (array!92207) Bool)

(assert (=> start!114102 (array_inv!33492 a!3742)))

(declare-fun b!1354044 () Bool)

(declare-fun res!899260 () Bool)

(assert (=> b!1354044 (=> (not res!899260) (not e!769315))))

(assert (=> b!1354044 (= res!899260 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31765))))

(declare-fun b!1354045 () Bool)

(declare-fun res!899267 () Bool)

(assert (=> b!1354045 (=> (not res!899267) (not e!769315))))

(assert (=> b!1354045 (= res!899267 (not (contains!9333 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354046 () Bool)

(assert (=> b!1354046 (= e!769317 false)))

(declare-fun lt!598073 () Bool)

(assert (=> b!1354046 (= lt!598073 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598071))))

(declare-fun b!1354047 () Bool)

(assert (=> b!1354047 (= e!769318 e!769317)))

(declare-fun res!899258 () Bool)

(assert (=> b!1354047 (=> (not res!899258) (not e!769317))))

(assert (=> b!1354047 (= res!899258 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!759 (List!31768 (_ BitVec 64)) List!31768)

(assert (=> b!1354047 (= lt!598071 ($colon$colon!759 acc!759 (select (arr!44547 a!3742) from!3120)))))

(declare-fun b!1354048 () Bool)

(declare-fun res!899259 () Bool)

(assert (=> b!1354048 (=> (not res!899259) (not e!769317))))

(assert (=> b!1354048 (= res!899259 (not (contains!9333 lt!598071 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354049 () Bool)

(declare-fun Unit!44407 () Unit!44405)

(assert (=> b!1354049 (= e!769314 Unit!44407)))

(declare-fun b!1354050 () Bool)

(declare-fun res!899271 () Bool)

(assert (=> b!1354050 (=> (not res!899271) (not e!769315))))

(assert (=> b!1354050 (= res!899271 (not (contains!9333 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354051 () Bool)

(declare-fun res!899269 () Bool)

(assert (=> b!1354051 (=> (not res!899269) (not e!769315))))

(assert (=> b!1354051 (= res!899269 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45098 a!3742))))))

(declare-fun b!1354052 () Bool)

(declare-fun lt!598074 () Unit!44405)

(assert (=> b!1354052 (= e!769314 lt!598074)))

(declare-fun lt!598072 () Unit!44405)

(declare-fun lemmaListSubSeqRefl!0 (List!31768) Unit!44405)

(assert (=> b!1354052 (= lt!598072 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!742 (List!31768 List!31768) Bool)

(assert (=> b!1354052 (subseq!742 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92207 List!31768 List!31768 (_ BitVec 32)) Unit!44405)

(assert (=> b!1354052 (= lt!598074 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!759 acc!759 (select (arr!44547 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354052 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114102 res!899265) b!1354043))

(assert (= (and b!1354043 res!899268) b!1354045))

(assert (= (and b!1354045 res!899267) b!1354050))

(assert (= (and b!1354050 res!899271) b!1354044))

(assert (= (and b!1354044 res!899260) b!1354041))

(assert (= (and b!1354041 res!899264) b!1354051))

(assert (= (and b!1354051 res!899269) b!1354042))

(assert (= (and b!1354042 res!899263) b!1354039))

(assert (= (and b!1354039 res!899262) b!1354037))

(assert (= (and b!1354037 c!126832) b!1354052))

(assert (= (and b!1354037 (not c!126832)) b!1354049))

(assert (= (and b!1354037 res!899261) b!1354047))

(assert (= (and b!1354047 res!899258) b!1354038))

(assert (= (and b!1354038 res!899266) b!1354048))

(assert (= (and b!1354048 res!899259) b!1354040))

(assert (= (and b!1354040 res!899270) b!1354046))

(declare-fun m!1240525 () Bool)

(assert (=> b!1354046 m!1240525))

(declare-fun m!1240527 () Bool)

(assert (=> b!1354047 m!1240527))

(assert (=> b!1354047 m!1240527))

(declare-fun m!1240529 () Bool)

(assert (=> b!1354047 m!1240529))

(declare-fun m!1240531 () Bool)

(assert (=> b!1354040 m!1240531))

(declare-fun m!1240533 () Bool)

(assert (=> b!1354042 m!1240533))

(declare-fun m!1240535 () Bool)

(assert (=> b!1354038 m!1240535))

(declare-fun m!1240537 () Bool)

(assert (=> b!1354043 m!1240537))

(declare-fun m!1240539 () Bool)

(assert (=> b!1354052 m!1240539))

(assert (=> b!1354052 m!1240527))

(assert (=> b!1354052 m!1240529))

(declare-fun m!1240541 () Bool)

(assert (=> b!1354052 m!1240541))

(declare-fun m!1240543 () Bool)

(assert (=> b!1354052 m!1240543))

(assert (=> b!1354052 m!1240527))

(assert (=> b!1354052 m!1240529))

(declare-fun m!1240545 () Bool)

(assert (=> b!1354052 m!1240545))

(declare-fun m!1240547 () Bool)

(assert (=> b!1354041 m!1240547))

(declare-fun m!1240549 () Bool)

(assert (=> b!1354045 m!1240549))

(declare-fun m!1240551 () Bool)

(assert (=> start!114102 m!1240551))

(declare-fun m!1240553 () Bool)

(assert (=> b!1354048 m!1240553))

(declare-fun m!1240555 () Bool)

(assert (=> b!1354044 m!1240555))

(assert (=> b!1354037 m!1240527))

(assert (=> b!1354037 m!1240527))

(declare-fun m!1240557 () Bool)

(assert (=> b!1354037 m!1240557))

(declare-fun m!1240559 () Bool)

(assert (=> b!1354050 m!1240559))

(push 1)

