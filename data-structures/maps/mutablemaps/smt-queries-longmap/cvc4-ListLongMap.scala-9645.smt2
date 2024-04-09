; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114048 () Bool)

(assert start!114048)

(declare-fun b!1352798 () Bool)

(declare-datatypes ((Unit!44324 0))(
  ( (Unit!44325) )
))
(declare-fun e!768930 () Unit!44324)

(declare-fun lt!597624 () Unit!44324)

(assert (=> b!1352798 (= e!768930 lt!597624)))

(declare-fun lt!597626 () Unit!44324)

(declare-datatypes ((List!31741 0))(
  ( (Nil!31738) (Cons!31737 (h!32946 (_ BitVec 64)) (t!46406 List!31741)) )
))
(declare-fun acc!759 () List!31741)

(declare-fun lemmaListSubSeqRefl!0 (List!31741) Unit!44324)

(assert (=> b!1352798 (= lt!597626 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!715 (List!31741 List!31741) Bool)

(assert (=> b!1352798 (subseq!715 acc!759 acc!759)))

(declare-datatypes ((array!92153 0))(
  ( (array!92154 (arr!44520 (Array (_ BitVec 32) (_ BitVec 64))) (size!45071 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92153)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92153 List!31741 List!31741 (_ BitVec 32)) Unit!44324)

(declare-fun $colon$colon!732 (List!31741 (_ BitVec 64)) List!31741)

(assert (=> b!1352798 (= lt!597624 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!732 acc!759 (select (arr!44520 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92153 (_ BitVec 32) List!31741) Bool)

(assert (=> b!1352798 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352799 () Bool)

(declare-fun res!898191 () Bool)

(declare-fun e!768928 () Bool)

(assert (=> b!1352799 (=> (not res!898191) (not e!768928))))

(declare-fun contains!9306 (List!31741 (_ BitVec 64)) Bool)

(assert (=> b!1352799 (= res!898191 (not (contains!9306 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352800 () Bool)

(declare-fun res!898189 () Bool)

(assert (=> b!1352800 (=> (not res!898189) (not e!768928))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352800 (= res!898189 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45071 a!3742))))))

(declare-fun b!1352801 () Bool)

(declare-fun res!898188 () Bool)

(assert (=> b!1352801 (=> (not res!898188) (not e!768928))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352801 (= res!898188 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352802 () Bool)

(declare-fun e!768931 () Bool)

(assert (=> b!1352802 (= e!768928 e!768931)))

(declare-fun res!898183 () Bool)

(assert (=> b!1352802 (=> (not res!898183) (not e!768931))))

(assert (=> b!1352802 (= res!898183 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597623 () Unit!44324)

(assert (=> b!1352802 (= lt!597623 e!768930)))

(declare-fun c!126751 () Bool)

(assert (=> b!1352802 (= c!126751 (validKeyInArray!0 (select (arr!44520 a!3742) from!3120)))))

(declare-fun b!1352803 () Bool)

(declare-fun res!898181 () Bool)

(assert (=> b!1352803 (=> (not res!898181) (not e!768928))))

(assert (=> b!1352803 (= res!898181 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45071 a!3742)))))

(declare-fun b!1352804 () Bool)

(assert (=> b!1352804 (= e!768931 (not true))))

(assert (=> b!1352804 (arrayNoDuplicates!0 (array!92154 (store (arr!44520 a!3742) i!1404 l!3587) (size!45071 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597625 () Unit!44324)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92153 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31741) Unit!44324)

(assert (=> b!1352804 (= lt!597625 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352806 () Bool)

(declare-fun res!898187 () Bool)

(assert (=> b!1352806 (=> (not res!898187) (not e!768928))))

(declare-fun noDuplicate!2185 (List!31741) Bool)

(assert (=> b!1352806 (= res!898187 (noDuplicate!2185 acc!759))))

(declare-fun b!1352807 () Bool)

(declare-fun res!898190 () Bool)

(assert (=> b!1352807 (=> (not res!898190) (not e!768931))))

(assert (=> b!1352807 (= res!898190 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352808 () Bool)

(declare-fun res!898186 () Bool)

(assert (=> b!1352808 (=> (not res!898186) (not e!768928))))

(assert (=> b!1352808 (= res!898186 (not (contains!9306 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352809 () Bool)

(declare-fun res!898182 () Bool)

(assert (=> b!1352809 (=> (not res!898182) (not e!768928))))

(assert (=> b!1352809 (= res!898182 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352810 () Bool)

(declare-fun Unit!44326 () Unit!44324)

(assert (=> b!1352810 (= e!768930 Unit!44326)))

(declare-fun b!1352805 () Bool)

(declare-fun res!898184 () Bool)

(assert (=> b!1352805 (=> (not res!898184) (not e!768928))))

(assert (=> b!1352805 (= res!898184 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31738))))

(declare-fun res!898185 () Bool)

(assert (=> start!114048 (=> (not res!898185) (not e!768928))))

(assert (=> start!114048 (= res!898185 (and (bvslt (size!45071 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45071 a!3742))))))

(assert (=> start!114048 e!768928))

(assert (=> start!114048 true))

(declare-fun array_inv!33465 (array!92153) Bool)

(assert (=> start!114048 (array_inv!33465 a!3742)))

(assert (= (and start!114048 res!898185) b!1352806))

(assert (= (and b!1352806 res!898187) b!1352808))

(assert (= (and b!1352808 res!898186) b!1352799))

(assert (= (and b!1352799 res!898191) b!1352805))

(assert (= (and b!1352805 res!898184) b!1352809))

(assert (= (and b!1352809 res!898182) b!1352800))

(assert (= (and b!1352800 res!898189) b!1352801))

(assert (= (and b!1352801 res!898188) b!1352803))

(assert (= (and b!1352803 res!898181) b!1352802))

(assert (= (and b!1352802 c!126751) b!1352798))

(assert (= (and b!1352802 (not c!126751)) b!1352810))

(assert (= (and b!1352802 res!898183) b!1352807))

(assert (= (and b!1352807 res!898190) b!1352804))

(declare-fun m!1239567 () Bool)

(assert (=> b!1352808 m!1239567))

(declare-fun m!1239569 () Bool)

(assert (=> b!1352798 m!1239569))

(declare-fun m!1239571 () Bool)

(assert (=> b!1352798 m!1239571))

(declare-fun m!1239573 () Bool)

(assert (=> b!1352798 m!1239573))

(declare-fun m!1239575 () Bool)

(assert (=> b!1352798 m!1239575))

(declare-fun m!1239577 () Bool)

(assert (=> b!1352798 m!1239577))

(assert (=> b!1352798 m!1239571))

(assert (=> b!1352798 m!1239573))

(declare-fun m!1239579 () Bool)

(assert (=> b!1352798 m!1239579))

(declare-fun m!1239581 () Bool)

(assert (=> b!1352806 m!1239581))

(declare-fun m!1239583 () Bool)

(assert (=> b!1352801 m!1239583))

(declare-fun m!1239585 () Bool)

(assert (=> b!1352809 m!1239585))

(declare-fun m!1239587 () Bool)

(assert (=> start!114048 m!1239587))

(declare-fun m!1239589 () Bool)

(assert (=> b!1352799 m!1239589))

(declare-fun m!1239591 () Bool)

(assert (=> b!1352804 m!1239591))

(declare-fun m!1239593 () Bool)

(assert (=> b!1352804 m!1239593))

(declare-fun m!1239595 () Bool)

(assert (=> b!1352804 m!1239595))

(assert (=> b!1352807 m!1239577))

(assert (=> b!1352802 m!1239571))

(assert (=> b!1352802 m!1239571))

(declare-fun m!1239597 () Bool)

(assert (=> b!1352802 m!1239597))

(declare-fun m!1239599 () Bool)

(assert (=> b!1352805 m!1239599))

(push 1)

