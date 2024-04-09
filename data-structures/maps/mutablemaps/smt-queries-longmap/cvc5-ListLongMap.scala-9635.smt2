; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113984 () Bool)

(assert start!113984)

(declare-fun b!1351629 () Bool)

(declare-datatypes ((Unit!44228 0))(
  ( (Unit!44229) )
))
(declare-fun e!768547 () Unit!44228)

(declare-fun lt!597242 () Unit!44228)

(assert (=> b!1351629 (= e!768547 lt!597242)))

(declare-fun lt!597239 () Unit!44228)

(declare-datatypes ((List!31709 0))(
  ( (Nil!31706) (Cons!31705 (h!32914 (_ BitVec 64)) (t!46374 List!31709)) )
))
(declare-fun acc!759 () List!31709)

(declare-fun lemmaListSubSeqRefl!0 (List!31709) Unit!44228)

(assert (=> b!1351629 (= lt!597239 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!683 (List!31709 List!31709) Bool)

(assert (=> b!1351629 (subseq!683 acc!759 acc!759)))

(declare-datatypes ((array!92089 0))(
  ( (array!92090 (arr!44488 (Array (_ BitVec 32) (_ BitVec 64))) (size!45039 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92089)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92089 List!31709 List!31709 (_ BitVec 32)) Unit!44228)

(declare-fun $colon$colon!700 (List!31709 (_ BitVec 64)) List!31709)

(assert (=> b!1351629 (= lt!597242 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!700 acc!759 (select (arr!44488 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92089 (_ BitVec 32) List!31709) Bool)

(assert (=> b!1351629 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1351630 () Bool)

(declare-fun res!897212 () Bool)

(declare-fun e!768546 () Bool)

(assert (=> b!1351630 (=> (not res!897212) (not e!768546))))

(assert (=> b!1351630 (= res!897212 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!897204 () Bool)

(assert (=> start!113984 (=> (not res!897204) (not e!768546))))

(assert (=> start!113984 (= res!897204 (and (bvslt (size!45039 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45039 a!3742))))))

(assert (=> start!113984 e!768546))

(assert (=> start!113984 true))

(declare-fun array_inv!33433 (array!92089) Bool)

(assert (=> start!113984 (array_inv!33433 a!3742)))

(declare-fun b!1351631 () Bool)

(declare-fun res!897206 () Bool)

(assert (=> b!1351631 (=> (not res!897206) (not e!768546))))

(declare-fun contains!9274 (List!31709 (_ BitVec 64)) Bool)

(assert (=> b!1351631 (= res!897206 (not (contains!9274 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351632 () Bool)

(declare-fun e!768544 () Bool)

(assert (=> b!1351632 (= e!768544 false)))

(declare-fun lt!597240 () Bool)

(assert (=> b!1351632 (= lt!597240 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1351633 () Bool)

(declare-fun res!897211 () Bool)

(assert (=> b!1351633 (=> (not res!897211) (not e!768546))))

(declare-fun noDuplicate!2153 (List!31709) Bool)

(assert (=> b!1351633 (= res!897211 (noDuplicate!2153 acc!759))))

(declare-fun b!1351634 () Bool)

(assert (=> b!1351634 (= e!768546 e!768544)))

(declare-fun res!897210 () Bool)

(assert (=> b!1351634 (=> (not res!897210) (not e!768544))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351634 (= res!897210 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597241 () Unit!44228)

(assert (=> b!1351634 (= lt!597241 e!768547)))

(declare-fun c!126655 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351634 (= c!126655 (validKeyInArray!0 (select (arr!44488 a!3742) from!3120)))))

(declare-fun b!1351635 () Bool)

(declare-fun res!897208 () Bool)

(assert (=> b!1351635 (=> (not res!897208) (not e!768546))))

(assert (=> b!1351635 (= res!897208 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31706))))

(declare-fun b!1351636 () Bool)

(declare-fun res!897207 () Bool)

(assert (=> b!1351636 (=> (not res!897207) (not e!768546))))

(assert (=> b!1351636 (= res!897207 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45039 a!3742))))))

(declare-fun b!1351637 () Bool)

(declare-fun res!897209 () Bool)

(assert (=> b!1351637 (=> (not res!897209) (not e!768546))))

(assert (=> b!1351637 (= res!897209 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45039 a!3742)))))

(declare-fun b!1351638 () Bool)

(declare-fun Unit!44230 () Unit!44228)

(assert (=> b!1351638 (= e!768547 Unit!44230)))

(declare-fun b!1351639 () Bool)

(declare-fun res!897205 () Bool)

(assert (=> b!1351639 (=> (not res!897205) (not e!768546))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351639 (= res!897205 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351640 () Bool)

(declare-fun res!897213 () Bool)

(assert (=> b!1351640 (=> (not res!897213) (not e!768546))))

(assert (=> b!1351640 (= res!897213 (not (contains!9274 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113984 res!897204) b!1351633))

(assert (= (and b!1351633 res!897211) b!1351640))

(assert (= (and b!1351640 res!897213) b!1351631))

(assert (= (and b!1351631 res!897206) b!1351635))

(assert (= (and b!1351635 res!897208) b!1351630))

(assert (= (and b!1351630 res!897212) b!1351636))

(assert (= (and b!1351636 res!897207) b!1351639))

(assert (= (and b!1351639 res!897205) b!1351637))

(assert (= (and b!1351637 res!897209) b!1351634))

(assert (= (and b!1351634 c!126655) b!1351629))

(assert (= (and b!1351634 (not c!126655)) b!1351638))

(assert (= (and b!1351634 res!897210) b!1351632))

(declare-fun m!1238641 () Bool)

(assert (=> b!1351630 m!1238641))

(declare-fun m!1238643 () Bool)

(assert (=> b!1351635 m!1238643))

(declare-fun m!1238645 () Bool)

(assert (=> b!1351639 m!1238645))

(declare-fun m!1238647 () Bool)

(assert (=> b!1351629 m!1238647))

(declare-fun m!1238649 () Bool)

(assert (=> b!1351629 m!1238649))

(declare-fun m!1238651 () Bool)

(assert (=> b!1351629 m!1238651))

(declare-fun m!1238653 () Bool)

(assert (=> b!1351629 m!1238653))

(declare-fun m!1238655 () Bool)

(assert (=> b!1351629 m!1238655))

(assert (=> b!1351629 m!1238649))

(assert (=> b!1351629 m!1238651))

(declare-fun m!1238657 () Bool)

(assert (=> b!1351629 m!1238657))

(declare-fun m!1238659 () Bool)

(assert (=> b!1351640 m!1238659))

(declare-fun m!1238661 () Bool)

(assert (=> b!1351633 m!1238661))

(declare-fun m!1238663 () Bool)

(assert (=> b!1351631 m!1238663))

(assert (=> b!1351632 m!1238655))

(assert (=> b!1351634 m!1238649))

(assert (=> b!1351634 m!1238649))

(declare-fun m!1238665 () Bool)

(assert (=> b!1351634 m!1238665))

(declare-fun m!1238667 () Bool)

(assert (=> start!113984 m!1238667))

(push 1)

