; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114704 () Bool)

(assert start!114704)

(declare-fun b!1360165 () Bool)

(declare-fun res!904612 () Bool)

(declare-fun e!771738 () Bool)

(assert (=> b!1360165 (=> (not res!904612) (not e!771738))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360165 (= res!904612 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360166 () Bool)

(declare-fun res!904620 () Bool)

(assert (=> b!1360166 (=> (not res!904620) (not e!771738))))

(declare-datatypes ((List!31913 0))(
  ( (Nil!31910) (Cons!31909 (h!33118 (_ BitVec 64)) (t!46596 List!31913)) )
))
(declare-fun acc!759 () List!31913)

(declare-fun noDuplicate!2357 (List!31913) Bool)

(assert (=> b!1360166 (= res!904620 (noDuplicate!2357 acc!759))))

(declare-fun res!904615 () Bool)

(assert (=> start!114704 (=> (not res!904615) (not e!771738))))

(declare-datatypes ((array!92515 0))(
  ( (array!92516 (arr!44692 (Array (_ BitVec 32) (_ BitVec 64))) (size!45243 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92515)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114704 (= res!904615 (and (bvslt (size!45243 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45243 a!3742))))))

(assert (=> start!114704 e!771738))

(assert (=> start!114704 true))

(declare-fun array_inv!33637 (array!92515) Bool)

(assert (=> start!114704 (array_inv!33637 a!3742)))

(declare-fun b!1360167 () Bool)

(declare-fun res!904619 () Bool)

(assert (=> b!1360167 (=> (not res!904619) (not e!771738))))

(declare-fun arrayNoDuplicates!0 (array!92515 (_ BitVec 32) List!31913) Bool)

(assert (=> b!1360167 (= res!904619 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31910))))

(declare-fun b!1360168 () Bool)

(assert (=> b!1360168 (= e!771738 false)))

(declare-datatypes ((Unit!44759 0))(
  ( (Unit!44760) )
))
(declare-fun lt!599766 () Unit!44759)

(declare-fun e!771737 () Unit!44759)

(assert (=> b!1360168 (= lt!599766 e!771737)))

(declare-fun c!127219 () Bool)

(assert (=> b!1360168 (= c!127219 (validKeyInArray!0 (select (arr!44692 a!3742) from!3120)))))

(declare-fun b!1360169 () Bool)

(declare-fun res!904618 () Bool)

(assert (=> b!1360169 (=> (not res!904618) (not e!771738))))

(declare-fun contains!9478 (List!31913 (_ BitVec 64)) Bool)

(assert (=> b!1360169 (= res!904618 (not (contains!9478 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360170 () Bool)

(declare-fun res!904616 () Bool)

(assert (=> b!1360170 (=> (not res!904616) (not e!771738))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360170 (= res!904616 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45243 a!3742))))))

(declare-fun b!1360171 () Bool)

(declare-fun Unit!44761 () Unit!44759)

(assert (=> b!1360171 (= e!771737 Unit!44761)))

(declare-fun b!1360172 () Bool)

(declare-fun res!904617 () Bool)

(assert (=> b!1360172 (=> (not res!904617) (not e!771738))))

(assert (=> b!1360172 (= res!904617 (not (contains!9478 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360173 () Bool)

(declare-fun res!904614 () Bool)

(assert (=> b!1360173 (=> (not res!904614) (not e!771738))))

(assert (=> b!1360173 (= res!904614 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360174 () Bool)

(declare-fun res!904613 () Bool)

(assert (=> b!1360174 (=> (not res!904613) (not e!771738))))

(assert (=> b!1360174 (= res!904613 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45243 a!3742)))))

(declare-fun b!1360175 () Bool)

(declare-fun lt!599768 () Unit!44759)

(assert (=> b!1360175 (= e!771737 lt!599768)))

(declare-fun lt!599767 () Unit!44759)

(declare-fun lemmaListSubSeqRefl!0 (List!31913) Unit!44759)

(assert (=> b!1360175 (= lt!599767 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!869 (List!31913 List!31913) Bool)

(assert (=> b!1360175 (subseq!869 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92515 List!31913 List!31913 (_ BitVec 32)) Unit!44759)

(declare-fun $colon$colon!874 (List!31913 (_ BitVec 64)) List!31913)

(assert (=> b!1360175 (= lt!599768 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!874 acc!759 (select (arr!44692 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360175 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114704 res!904615) b!1360166))

(assert (= (and b!1360166 res!904620) b!1360172))

(assert (= (and b!1360172 res!904617) b!1360169))

(assert (= (and b!1360169 res!904618) b!1360167))

(assert (= (and b!1360167 res!904619) b!1360173))

(assert (= (and b!1360173 res!904614) b!1360170))

(assert (= (and b!1360170 res!904616) b!1360165))

(assert (= (and b!1360165 res!904612) b!1360174))

(assert (= (and b!1360174 res!904613) b!1360168))

(assert (= (and b!1360168 c!127219) b!1360175))

(assert (= (and b!1360168 (not c!127219)) b!1360171))

(declare-fun m!1245505 () Bool)

(assert (=> b!1360167 m!1245505))

(declare-fun m!1245507 () Bool)

(assert (=> b!1360173 m!1245507))

(declare-fun m!1245509 () Bool)

(assert (=> b!1360172 m!1245509))

(declare-fun m!1245511 () Bool)

(assert (=> b!1360166 m!1245511))

(declare-fun m!1245513 () Bool)

(assert (=> b!1360165 m!1245513))

(declare-fun m!1245515 () Bool)

(assert (=> b!1360168 m!1245515))

(assert (=> b!1360168 m!1245515))

(declare-fun m!1245517 () Bool)

(assert (=> b!1360168 m!1245517))

(declare-fun m!1245519 () Bool)

(assert (=> b!1360175 m!1245519))

(assert (=> b!1360175 m!1245515))

(declare-fun m!1245521 () Bool)

(assert (=> b!1360175 m!1245521))

(declare-fun m!1245523 () Bool)

(assert (=> b!1360175 m!1245523))

(declare-fun m!1245525 () Bool)

(assert (=> b!1360175 m!1245525))

(assert (=> b!1360175 m!1245515))

(assert (=> b!1360175 m!1245521))

(declare-fun m!1245527 () Bool)

(assert (=> b!1360175 m!1245527))

(declare-fun m!1245529 () Bool)

(assert (=> b!1360169 m!1245529))

(declare-fun m!1245531 () Bool)

(assert (=> start!114704 m!1245531))

(push 1)

(assert (not b!1360165))

(assert (not b!1360173))

(assert (not b!1360175))

(assert (not b!1360166))

(assert (not b!1360169))

(assert (not start!114704))

(assert (not b!1360167))

(assert (not b!1360168))

(assert (not b!1360172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

