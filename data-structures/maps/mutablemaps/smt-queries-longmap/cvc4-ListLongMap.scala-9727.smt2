; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115188 () Bool)

(assert start!115188)

(declare-fun b!1364104 () Bool)

(declare-fun res!907911 () Bool)

(declare-fun e!773589 () Bool)

(assert (=> b!1364104 (=> (not res!907911) (not e!773589))))

(declare-datatypes ((array!92681 0))(
  ( (array!92682 (arr!44766 (Array (_ BitVec 32) (_ BitVec 64))) (size!45317 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92681)

(declare-datatypes ((List!31987 0))(
  ( (Nil!31984) (Cons!31983 (h!33192 (_ BitVec 64)) (t!46688 List!31987)) )
))
(declare-fun arrayNoDuplicates!0 (array!92681 (_ BitVec 32) List!31987) Bool)

(assert (=> b!1364104 (= res!907911 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31984))))

(declare-fun res!907910 () Bool)

(assert (=> start!115188 (=> (not res!907910) (not e!773589))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!115188 (= res!907910 (and (bvslt (size!45317 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45317 a!3742))))))

(assert (=> start!115188 e!773589))

(declare-fun array_inv!33711 (array!92681) Bool)

(assert (=> start!115188 (array_inv!33711 a!3742)))

(assert (=> start!115188 true))

(declare-fun b!1364105 () Bool)

(declare-fun res!907909 () Bool)

(assert (=> b!1364105 (=> (not res!907909) (not e!773589))))

(declare-fun acc!759 () List!31987)

(declare-fun contains!9552 (List!31987 (_ BitVec 64)) Bool)

(assert (=> b!1364105 (= res!907909 (not (contains!9552 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364106 () Bool)

(assert (=> b!1364106 (= e!773589 false)))

(declare-fun lt!600956 () Bool)

(assert (=> b!1364106 (= lt!600956 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1364107 () Bool)

(declare-fun res!907907 () Bool)

(assert (=> b!1364107 (=> (not res!907907) (not e!773589))))

(declare-fun noDuplicate!2431 (List!31987) Bool)

(assert (=> b!1364107 (= res!907907 (noDuplicate!2431 acc!759))))

(declare-fun b!1364108 () Bool)

(declare-fun res!907908 () Bool)

(assert (=> b!1364108 (=> (not res!907908) (not e!773589))))

(assert (=> b!1364108 (= res!907908 (not (contains!9552 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115188 res!907910) b!1364107))

(assert (= (and b!1364107 res!907907) b!1364108))

(assert (= (and b!1364108 res!907908) b!1364105))

(assert (= (and b!1364105 res!907909) b!1364104))

(assert (= (and b!1364104 res!907911) b!1364106))

(declare-fun m!1248853 () Bool)

(assert (=> b!1364105 m!1248853))

(declare-fun m!1248855 () Bool)

(assert (=> b!1364108 m!1248855))

(declare-fun m!1248857 () Bool)

(assert (=> start!115188 m!1248857))

(declare-fun m!1248859 () Bool)

(assert (=> b!1364106 m!1248859))

(declare-fun m!1248861 () Bool)

(assert (=> b!1364107 m!1248861))

(declare-fun m!1248863 () Bool)

(assert (=> b!1364104 m!1248863))

(push 1)

(assert (not b!1364108))

(assert (not b!1364104))

(assert (not b!1364105))

(assert (not b!1364106))

(assert (not b!1364107))

(assert (not start!115188))

(check-sat)

