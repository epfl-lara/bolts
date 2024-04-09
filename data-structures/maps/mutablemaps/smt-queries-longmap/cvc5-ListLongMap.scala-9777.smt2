; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115904 () Bool)

(assert start!115904)

(declare-fun b!1369580 () Bool)

(declare-fun res!913161 () Bool)

(declare-fun e!775864 () Bool)

(assert (=> b!1369580 (=> (not res!913161) (not e!775864))))

(declare-datatypes ((List!32135 0))(
  ( (Nil!32132) (Cons!32131 (h!33340 (_ BitVec 64)) (t!46836 List!32135)) )
))
(declare-fun newAcc!98 () List!32135)

(declare-fun acc!866 () List!32135)

(declare-fun subseq!1064 (List!32135 List!32135) Bool)

(assert (=> b!1369580 (= res!913161 (subseq!1064 newAcc!98 acc!866))))

(declare-fun b!1369581 () Bool)

(declare-fun res!913164 () Bool)

(assert (=> b!1369581 (=> (not res!913164) (not e!775864))))

(declare-fun contains!9673 (List!32135 (_ BitVec 64)) Bool)

(assert (=> b!1369581 (= res!913164 (not (contains!9673 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369582 () Bool)

(declare-fun res!913167 () Bool)

(assert (=> b!1369582 (=> (not res!913167) (not e!775864))))

(assert (=> b!1369582 (= res!913167 (not (contains!9673 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369583 () Bool)

(declare-fun res!913162 () Bool)

(assert (=> b!1369583 (=> (not res!913162) (not e!775864))))

(declare-fun noDuplicate!2552 (List!32135) Bool)

(assert (=> b!1369583 (= res!913162 (noDuplicate!2552 acc!866))))

(declare-fun b!1369584 () Bool)

(declare-fun res!913163 () Bool)

(assert (=> b!1369584 (=> (not res!913163) (not e!775864))))

(assert (=> b!1369584 (= res!913163 (not (contains!9673 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369585 () Bool)

(assert (=> b!1369585 (= e!775864 false)))

(declare-datatypes ((array!92941 0))(
  ( (array!92942 (arr!44887 (Array (_ BitVec 32) (_ BitVec 64))) (size!45438 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92941)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602248 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92941 (_ BitVec 32) List!32135) Bool)

(assert (=> b!1369585 (= lt!602248 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45209 0))(
  ( (Unit!45210) )
))
(declare-fun lt!602249 () Unit!45209)

(declare-fun noDuplicateSubseq!251 (List!32135 List!32135) Unit!45209)

(assert (=> b!1369585 (= lt!602249 (noDuplicateSubseq!251 newAcc!98 acc!866))))

(declare-fun res!913166 () Bool)

(assert (=> start!115904 (=> (not res!913166) (not e!775864))))

(assert (=> start!115904 (= res!913166 (and (bvslt (size!45438 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45438 a!3861))))))

(assert (=> start!115904 e!775864))

(declare-fun array_inv!33832 (array!92941) Bool)

(assert (=> start!115904 (array_inv!33832 a!3861)))

(assert (=> start!115904 true))

(declare-fun b!1369586 () Bool)

(declare-fun res!913165 () Bool)

(assert (=> b!1369586 (=> (not res!913165) (not e!775864))))

(assert (=> b!1369586 (= res!913165 (not (contains!9673 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115904 res!913166) b!1369583))

(assert (= (and b!1369583 res!913162) b!1369586))

(assert (= (and b!1369586 res!913165) b!1369582))

(assert (= (and b!1369582 res!913167) b!1369581))

(assert (= (and b!1369581 res!913164) b!1369584))

(assert (= (and b!1369584 res!913163) b!1369580))

(assert (= (and b!1369580 res!913161) b!1369585))

(declare-fun m!1253359 () Bool)

(assert (=> b!1369581 m!1253359))

(declare-fun m!1253361 () Bool)

(assert (=> start!115904 m!1253361))

(declare-fun m!1253363 () Bool)

(assert (=> b!1369582 m!1253363))

(declare-fun m!1253365 () Bool)

(assert (=> b!1369580 m!1253365))

(declare-fun m!1253367 () Bool)

(assert (=> b!1369583 m!1253367))

(declare-fun m!1253369 () Bool)

(assert (=> b!1369585 m!1253369))

(declare-fun m!1253371 () Bool)

(assert (=> b!1369585 m!1253371))

(declare-fun m!1253373 () Bool)

(assert (=> b!1369586 m!1253373))

(declare-fun m!1253375 () Bool)

(assert (=> b!1369584 m!1253375))

(push 1)

(assert (not b!1369583))

(assert (not b!1369580))

(assert (not b!1369584))

(assert (not b!1369585))

(assert (not start!115904))

(assert (not b!1369582))

(assert (not b!1369581))

(assert (not b!1369586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

