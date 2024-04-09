; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115656 () Bool)

(assert start!115656)

(declare-fun b!1367207 () Bool)

(declare-fun res!910857 () Bool)

(declare-fun e!774891 () Bool)

(assert (=> b!1367207 (=> (not res!910857) (not e!774891))))

(declare-datatypes ((List!32074 0))(
  ( (Nil!32071) (Cons!32070 (h!33279 (_ BitVec 64)) (t!46775 List!32074)) )
))
(declare-fun acc!866 () List!32074)

(declare-fun contains!9612 (List!32074 (_ BitVec 64)) Bool)

(assert (=> b!1367207 (= res!910857 (not (contains!9612 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!910854 () Bool)

(assert (=> start!115656 (=> (not res!910854) (not e!774891))))

(declare-datatypes ((array!92810 0))(
  ( (array!92811 (arr!44826 (Array (_ BitVec 32) (_ BitVec 64))) (size!45377 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92810)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115656 (= res!910854 (and (bvslt (size!45377 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45377 a!3861))))))

(assert (=> start!115656 e!774891))

(declare-fun array_inv!33771 (array!92810) Bool)

(assert (=> start!115656 (array_inv!33771 a!3861)))

(assert (=> start!115656 true))

(declare-fun b!1367208 () Bool)

(declare-fun e!774892 () Bool)

(assert (=> b!1367208 (= e!774891 e!774892)))

(declare-fun res!910859 () Bool)

(assert (=> b!1367208 (=> (not res!910859) (not e!774892))))

(declare-fun arrayNoDuplicates!0 (array!92810 (_ BitVec 32) List!32074) Bool)

(assert (=> b!1367208 (= res!910859 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45087 0))(
  ( (Unit!45088) )
))
(declare-fun lt!601799 () Unit!45087)

(declare-fun newAcc!98 () List!32074)

(declare-fun noDuplicateSubseq!190 (List!32074 List!32074) Unit!45087)

(assert (=> b!1367208 (= lt!601799 (noDuplicateSubseq!190 newAcc!98 acc!866))))

(declare-fun b!1367209 () Bool)

(declare-fun res!910863 () Bool)

(assert (=> b!1367209 (=> (not res!910863) (not e!774891))))

(assert (=> b!1367209 (= res!910863 (not (contains!9612 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367210 () Bool)

(declare-fun res!910858 () Bool)

(assert (=> b!1367210 (=> (not res!910858) (not e!774891))))

(assert (=> b!1367210 (= res!910858 (not (contains!9612 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367211 () Bool)

(declare-fun res!910860 () Bool)

(assert (=> b!1367211 (=> (not res!910860) (not e!774891))))

(assert (=> b!1367211 (= res!910860 (not (contains!9612 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367212 () Bool)

(assert (=> b!1367212 (= e!774892 false)))

(declare-fun lt!601798 () Bool)

(assert (=> b!1367212 (= lt!601798 (contains!9612 acc!866 (select (arr!44826 a!3861) from!3239)))))

(declare-fun b!1367213 () Bool)

(declare-fun res!910861 () Bool)

(assert (=> b!1367213 (=> (not res!910861) (not e!774891))))

(declare-fun subseq!1003 (List!32074 List!32074) Bool)

(assert (=> b!1367213 (= res!910861 (subseq!1003 newAcc!98 acc!866))))

(declare-fun b!1367214 () Bool)

(declare-fun res!910856 () Bool)

(assert (=> b!1367214 (=> (not res!910856) (not e!774891))))

(declare-fun noDuplicate!2491 (List!32074) Bool)

(assert (=> b!1367214 (= res!910856 (noDuplicate!2491 acc!866))))

(declare-fun b!1367215 () Bool)

(declare-fun res!910862 () Bool)

(assert (=> b!1367215 (=> (not res!910862) (not e!774892))))

(assert (=> b!1367215 (= res!910862 (bvslt from!3239 (size!45377 a!3861)))))

(declare-fun b!1367216 () Bool)

(declare-fun res!910855 () Bool)

(assert (=> b!1367216 (=> (not res!910855) (not e!774892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367216 (= res!910855 (validKeyInArray!0 (select (arr!44826 a!3861) from!3239)))))

(assert (= (and start!115656 res!910854) b!1367214))

(assert (= (and b!1367214 res!910856) b!1367210))

(assert (= (and b!1367210 res!910858) b!1367207))

(assert (= (and b!1367207 res!910857) b!1367209))

(assert (= (and b!1367209 res!910863) b!1367211))

(assert (= (and b!1367211 res!910860) b!1367213))

(assert (= (and b!1367213 res!910861) b!1367208))

(assert (= (and b!1367208 res!910859) b!1367215))

(assert (= (and b!1367215 res!910862) b!1367216))

(assert (= (and b!1367216 res!910855) b!1367212))

(declare-fun m!1251499 () Bool)

(assert (=> b!1367208 m!1251499))

(declare-fun m!1251501 () Bool)

(assert (=> b!1367208 m!1251501))

(declare-fun m!1251503 () Bool)

(assert (=> b!1367212 m!1251503))

(assert (=> b!1367212 m!1251503))

(declare-fun m!1251505 () Bool)

(assert (=> b!1367212 m!1251505))

(declare-fun m!1251507 () Bool)

(assert (=> b!1367213 m!1251507))

(declare-fun m!1251509 () Bool)

(assert (=> start!115656 m!1251509))

(declare-fun m!1251511 () Bool)

(assert (=> b!1367209 m!1251511))

(declare-fun m!1251513 () Bool)

(assert (=> b!1367210 m!1251513))

(assert (=> b!1367216 m!1251503))

(assert (=> b!1367216 m!1251503))

(declare-fun m!1251515 () Bool)

(assert (=> b!1367216 m!1251515))

(declare-fun m!1251517 () Bool)

(assert (=> b!1367214 m!1251517))

(declare-fun m!1251519 () Bool)

(assert (=> b!1367207 m!1251519))

(declare-fun m!1251521 () Bool)

(assert (=> b!1367211 m!1251521))

(push 1)

(assert (not start!115656))

(assert (not b!1367208))

(assert (not b!1367212))

(assert (not b!1367213))

