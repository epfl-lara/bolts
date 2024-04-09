; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113958 () Bool)

(assert start!113958)

(declare-fun b!1351050 () Bool)

(declare-fun res!896642 () Bool)

(declare-fun e!768425 () Bool)

(assert (=> b!1351050 (=> (not res!896642) (not e!768425))))

(declare-datatypes ((array!92063 0))(
  ( (array!92064 (arr!44475 (Array (_ BitVec 32) (_ BitVec 64))) (size!45026 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92063)

(declare-datatypes ((List!31696 0))(
  ( (Nil!31693) (Cons!31692 (h!32901 (_ BitVec 64)) (t!46361 List!31696)) )
))
(declare-fun arrayNoDuplicates!0 (array!92063 (_ BitVec 32) List!31696) Bool)

(assert (=> b!1351050 (= res!896642 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31693))))

(declare-fun b!1351051 () Bool)

(declare-fun res!896639 () Bool)

(assert (=> b!1351051 (=> (not res!896639) (not e!768425))))

(declare-fun acc!759 () List!31696)

(declare-fun contains!9261 (List!31696 (_ BitVec 64)) Bool)

(assert (=> b!1351051 (= res!896639 (not (contains!9261 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351052 () Bool)

(declare-fun res!896630 () Bool)

(declare-fun e!768427 () Bool)

(assert (=> b!1351052 (=> res!896630 e!768427)))

(declare-fun lt!597084 () List!31696)

(assert (=> b!1351052 (= res!896630 (contains!9261 lt!597084 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351053 () Bool)

(declare-fun res!896632 () Bool)

(assert (=> b!1351053 (=> (not res!896632) (not e!768425))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351053 (= res!896632 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45026 a!3742))))))

(declare-fun b!1351054 () Bool)

(declare-fun res!896631 () Bool)

(assert (=> b!1351054 (=> res!896631 e!768427)))

(assert (=> b!1351054 (= res!896631 (contains!9261 lt!597084 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351055 () Bool)

(declare-fun res!896637 () Bool)

(assert (=> b!1351055 (=> (not res!896637) (not e!768425))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351055 (= res!896637 (validKeyInArray!0 (select (arr!44475 a!3742) from!3120)))))

(declare-fun res!896641 () Bool)

(assert (=> start!113958 (=> (not res!896641) (not e!768425))))

(assert (=> start!113958 (= res!896641 (and (bvslt (size!45026 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45026 a!3742))))))

(assert (=> start!113958 e!768425))

(assert (=> start!113958 true))

(declare-fun array_inv!33420 (array!92063) Bool)

(assert (=> start!113958 (array_inv!33420 a!3742)))

(declare-fun b!1351056 () Bool)

(declare-fun res!896636 () Bool)

(assert (=> b!1351056 (=> res!896636 e!768427)))

(declare-fun subseq!670 (List!31696 List!31696) Bool)

(assert (=> b!1351056 (= res!896636 (not (subseq!670 acc!759 lt!597084)))))

(declare-fun b!1351057 () Bool)

(assert (=> b!1351057 (= e!768427 true)))

(declare-fun lt!597085 () Bool)

(assert (=> b!1351057 (= lt!597085 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597084))))

(declare-datatypes ((Unit!44202 0))(
  ( (Unit!44203) )
))
(declare-fun lt!597086 () Unit!44202)

(declare-fun noDuplicateSubseq!121 (List!31696 List!31696) Unit!44202)

(assert (=> b!1351057 (= lt!597086 (noDuplicateSubseq!121 acc!759 lt!597084))))

(declare-fun b!1351058 () Bool)

(declare-fun res!896634 () Bool)

(assert (=> b!1351058 (=> (not res!896634) (not e!768425))))

(assert (=> b!1351058 (= res!896634 (not (contains!9261 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351059 () Bool)

(declare-fun res!896640 () Bool)

(assert (=> b!1351059 (=> (not res!896640) (not e!768425))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351059 (= res!896640 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351060 () Bool)

(declare-fun res!896635 () Bool)

(assert (=> b!1351060 (=> (not res!896635) (not e!768425))))

(assert (=> b!1351060 (= res!896635 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351061 () Bool)

(declare-fun res!896629 () Bool)

(assert (=> b!1351061 (=> res!896629 e!768427)))

(declare-fun noDuplicate!2140 (List!31696) Bool)

(assert (=> b!1351061 (= res!896629 (not (noDuplicate!2140 lt!597084)))))

(declare-fun b!1351062 () Bool)

(assert (=> b!1351062 (= e!768425 (not e!768427))))

(declare-fun res!896643 () Bool)

(assert (=> b!1351062 (=> res!896643 e!768427)))

(assert (=> b!1351062 (= res!896643 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!687 (List!31696 (_ BitVec 64)) List!31696)

(assert (=> b!1351062 (= lt!597084 ($colon$colon!687 acc!759 (select (arr!44475 a!3742) from!3120)))))

(assert (=> b!1351062 (subseq!670 acc!759 acc!759)))

(declare-fun lt!597083 () Unit!44202)

(declare-fun lemmaListSubSeqRefl!0 (List!31696) Unit!44202)

(assert (=> b!1351062 (= lt!597083 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351063 () Bool)

(declare-fun res!896638 () Bool)

(assert (=> b!1351063 (=> (not res!896638) (not e!768425))))

(assert (=> b!1351063 (= res!896638 (noDuplicate!2140 acc!759))))

(declare-fun b!1351064 () Bool)

(declare-fun res!896633 () Bool)

(assert (=> b!1351064 (=> (not res!896633) (not e!768425))))

(assert (=> b!1351064 (= res!896633 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45026 a!3742)))))

(assert (= (and start!113958 res!896641) b!1351063))

(assert (= (and b!1351063 res!896638) b!1351058))

(assert (= (and b!1351058 res!896634) b!1351051))

(assert (= (and b!1351051 res!896639) b!1351050))

(assert (= (and b!1351050 res!896642) b!1351060))

(assert (= (and b!1351060 res!896635) b!1351053))

(assert (= (and b!1351053 res!896632) b!1351059))

(assert (= (and b!1351059 res!896640) b!1351064))

(assert (= (and b!1351064 res!896633) b!1351055))

(assert (= (and b!1351055 res!896637) b!1351062))

(assert (= (and b!1351062 (not res!896643)) b!1351061))

(assert (= (and b!1351061 (not res!896629)) b!1351052))

(assert (= (and b!1351052 (not res!896630)) b!1351054))

(assert (= (and b!1351054 (not res!896631)) b!1351056))

(assert (= (and b!1351056 (not res!896636)) b!1351057))

(declare-fun m!1238173 () Bool)

(assert (=> b!1351060 m!1238173))

(declare-fun m!1238175 () Bool)

(assert (=> b!1351051 m!1238175))

(declare-fun m!1238177 () Bool)

(assert (=> b!1351063 m!1238177))

(declare-fun m!1238179 () Bool)

(assert (=> b!1351050 m!1238179))

(declare-fun m!1238181 () Bool)

(assert (=> b!1351056 m!1238181))

(declare-fun m!1238183 () Bool)

(assert (=> start!113958 m!1238183))

(declare-fun m!1238185 () Bool)

(assert (=> b!1351058 m!1238185))

(declare-fun m!1238187 () Bool)

(assert (=> b!1351052 m!1238187))

(declare-fun m!1238189 () Bool)

(assert (=> b!1351061 m!1238189))

(declare-fun m!1238191 () Bool)

(assert (=> b!1351059 m!1238191))

(declare-fun m!1238193 () Bool)

(assert (=> b!1351055 m!1238193))

(assert (=> b!1351055 m!1238193))

(declare-fun m!1238195 () Bool)

(assert (=> b!1351055 m!1238195))

(assert (=> b!1351062 m!1238193))

(assert (=> b!1351062 m!1238193))

(declare-fun m!1238197 () Bool)

(assert (=> b!1351062 m!1238197))

(declare-fun m!1238199 () Bool)

(assert (=> b!1351062 m!1238199))

(declare-fun m!1238201 () Bool)

(assert (=> b!1351062 m!1238201))

(declare-fun m!1238203 () Bool)

(assert (=> b!1351054 m!1238203))

(declare-fun m!1238205 () Bool)

(assert (=> b!1351057 m!1238205))

(declare-fun m!1238207 () Bool)

(assert (=> b!1351057 m!1238207))

(push 1)

(assert (not b!1351050))

(assert (not b!1351052))

(assert (not b!1351054))

(assert (not b!1351059))

(assert (not b!1351058))

(assert (not b!1351056))

(assert (not start!113958))

(assert (not b!1351051))

(assert (not b!1351055))

(assert (not b!1351061))

