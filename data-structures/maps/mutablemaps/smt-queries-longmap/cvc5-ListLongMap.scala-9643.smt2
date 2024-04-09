; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114032 () Bool)

(assert start!114032)

(declare-fun b!1352493 () Bool)

(declare-fun res!897933 () Bool)

(declare-fun e!768835 () Bool)

(assert (=> b!1352493 (=> (not res!897933) (not e!768835))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352493 (= res!897933 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352494 () Bool)

(declare-fun res!897932 () Bool)

(assert (=> b!1352494 (=> (not res!897932) (not e!768835))))

(declare-datatypes ((List!31733 0))(
  ( (Nil!31730) (Cons!31729 (h!32938 (_ BitVec 64)) (t!46398 List!31733)) )
))
(declare-fun acc!759 () List!31733)

(declare-fun contains!9298 (List!31733 (_ BitVec 64)) Bool)

(assert (=> b!1352494 (= res!897932 (not (contains!9298 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352495 () Bool)

(declare-fun res!897926 () Bool)

(assert (=> b!1352495 (=> (not res!897926) (not e!768835))))

(declare-datatypes ((array!92137 0))(
  ( (array!92138 (arr!44512 (Array (_ BitVec 32) (_ BitVec 64))) (size!45063 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92137)

(declare-fun arrayNoDuplicates!0 (array!92137 (_ BitVec 32) List!31733) Bool)

(assert (=> b!1352495 (= res!897926 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31730))))

(declare-fun b!1352496 () Bool)

(declare-fun e!768834 () Bool)

(assert (=> b!1352496 (= e!768835 e!768834)))

(declare-fun res!897928 () Bool)

(assert (=> b!1352496 (=> (not res!897928) (not e!768834))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352496 (= res!897928 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44300 0))(
  ( (Unit!44301) )
))
(declare-fun lt!597528 () Unit!44300)

(declare-fun e!768832 () Unit!44300)

(assert (=> b!1352496 (= lt!597528 e!768832)))

(declare-fun c!126727 () Bool)

(assert (=> b!1352496 (= c!126727 (validKeyInArray!0 (select (arr!44512 a!3742) from!3120)))))

(declare-fun b!1352497 () Bool)

(declare-fun Unit!44302 () Unit!44300)

(assert (=> b!1352497 (= e!768832 Unit!44302)))

(declare-fun res!897929 () Bool)

(assert (=> start!114032 (=> (not res!897929) (not e!768835))))

(assert (=> start!114032 (= res!897929 (and (bvslt (size!45063 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45063 a!3742))))))

(assert (=> start!114032 e!768835))

(assert (=> start!114032 true))

(declare-fun array_inv!33457 (array!92137) Bool)

(assert (=> start!114032 (array_inv!33457 a!3742)))

(declare-fun b!1352498 () Bool)

(assert (=> b!1352498 (= e!768834 false)))

(declare-fun lt!597529 () Bool)

(assert (=> b!1352498 (= lt!597529 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352499 () Bool)

(declare-fun res!897927 () Bool)

(assert (=> b!1352499 (=> (not res!897927) (not e!768835))))

(assert (=> b!1352499 (= res!897927 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352500 () Bool)

(declare-fun res!897924 () Bool)

(assert (=> b!1352500 (=> (not res!897924) (not e!768835))))

(assert (=> b!1352500 (= res!897924 (not (contains!9298 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352501 () Bool)

(declare-fun res!897925 () Bool)

(assert (=> b!1352501 (=> (not res!897925) (not e!768835))))

(declare-fun noDuplicate!2177 (List!31733) Bool)

(assert (=> b!1352501 (= res!897925 (noDuplicate!2177 acc!759))))

(declare-fun b!1352502 () Bool)

(declare-fun res!897930 () Bool)

(assert (=> b!1352502 (=> (not res!897930) (not e!768835))))

(assert (=> b!1352502 (= res!897930 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45063 a!3742)))))

(declare-fun b!1352503 () Bool)

(declare-fun lt!597527 () Unit!44300)

(assert (=> b!1352503 (= e!768832 lt!597527)))

(declare-fun lt!597530 () Unit!44300)

(declare-fun lemmaListSubSeqRefl!0 (List!31733) Unit!44300)

(assert (=> b!1352503 (= lt!597530 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!707 (List!31733 List!31733) Bool)

(assert (=> b!1352503 (subseq!707 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92137 List!31733 List!31733 (_ BitVec 32)) Unit!44300)

(declare-fun $colon$colon!724 (List!31733 (_ BitVec 64)) List!31733)

(assert (=> b!1352503 (= lt!597527 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!724 acc!759 (select (arr!44512 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352503 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352504 () Bool)

(declare-fun res!897931 () Bool)

(assert (=> b!1352504 (=> (not res!897931) (not e!768835))))

(assert (=> b!1352504 (= res!897931 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45063 a!3742))))))

(assert (= (and start!114032 res!897929) b!1352501))

(assert (= (and b!1352501 res!897925) b!1352494))

(assert (= (and b!1352494 res!897932) b!1352500))

(assert (= (and b!1352500 res!897924) b!1352495))

(assert (= (and b!1352495 res!897926) b!1352499))

(assert (= (and b!1352499 res!897927) b!1352504))

(assert (= (and b!1352504 res!897931) b!1352493))

(assert (= (and b!1352493 res!897933) b!1352502))

(assert (= (and b!1352502 res!897930) b!1352496))

(assert (= (and b!1352496 c!126727) b!1352503))

(assert (= (and b!1352496 (not c!126727)) b!1352497))

(assert (= (and b!1352496 res!897928) b!1352498))

(declare-fun m!1239313 () Bool)

(assert (=> b!1352493 m!1239313))

(declare-fun m!1239315 () Bool)

(assert (=> b!1352498 m!1239315))

(declare-fun m!1239317 () Bool)

(assert (=> b!1352501 m!1239317))

(declare-fun m!1239319 () Bool)

(assert (=> b!1352499 m!1239319))

(declare-fun m!1239321 () Bool)

(assert (=> b!1352495 m!1239321))

(declare-fun m!1239323 () Bool)

(assert (=> b!1352496 m!1239323))

(assert (=> b!1352496 m!1239323))

(declare-fun m!1239325 () Bool)

(assert (=> b!1352496 m!1239325))

(declare-fun m!1239327 () Bool)

(assert (=> b!1352494 m!1239327))

(declare-fun m!1239329 () Bool)

(assert (=> b!1352500 m!1239329))

(declare-fun m!1239331 () Bool)

(assert (=> start!114032 m!1239331))

(declare-fun m!1239333 () Bool)

(assert (=> b!1352503 m!1239333))

(assert (=> b!1352503 m!1239323))

(declare-fun m!1239335 () Bool)

(assert (=> b!1352503 m!1239335))

(declare-fun m!1239337 () Bool)

(assert (=> b!1352503 m!1239337))

(assert (=> b!1352503 m!1239315))

(assert (=> b!1352503 m!1239323))

(assert (=> b!1352503 m!1239335))

(declare-fun m!1239339 () Bool)

(assert (=> b!1352503 m!1239339))

(push 1)

