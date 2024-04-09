; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113932 () Bool)

(assert start!113932)

(declare-fun b!1350509 () Bool)

(declare-fun res!896091 () Bool)

(declare-fun e!768313 () Bool)

(assert (=> b!1350509 (=> (not res!896091) (not e!768313))))

(declare-datatypes ((List!31683 0))(
  ( (Nil!31680) (Cons!31679 (h!32888 (_ BitVec 64)) (t!46348 List!31683)) )
))
(declare-fun acc!759 () List!31683)

(declare-fun noDuplicate!2127 (List!31683) Bool)

(assert (=> b!1350509 (= res!896091 (noDuplicate!2127 acc!759))))

(declare-fun b!1350511 () Bool)

(declare-fun res!896088 () Bool)

(assert (=> b!1350511 (=> (not res!896088) (not e!768313))))

(declare-fun contains!9248 (List!31683 (_ BitVec 64)) Bool)

(assert (=> b!1350511 (= res!896088 (not (contains!9248 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350510 () Bool)

(declare-fun res!896089 () Bool)

(assert (=> b!1350510 (=> (not res!896089) (not e!768313))))

(assert (=> b!1350510 (= res!896089 (not (contains!9248 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!896090 () Bool)

(assert (=> start!113932 (=> (not res!896090) (not e!768313))))

(declare-datatypes ((array!92037 0))(
  ( (array!92038 (arr!44462 (Array (_ BitVec 32) (_ BitVec 64))) (size!45013 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92037)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113932 (= res!896090 (and (bvslt (size!45013 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45013 a!3742))))))

(assert (=> start!113932 e!768313))

(declare-fun array_inv!33407 (array!92037) Bool)

(assert (=> start!113932 (array_inv!33407 a!3742)))

(assert (=> start!113932 true))

(declare-fun b!1350512 () Bool)

(assert (=> b!1350512 (= e!768313 false)))

(declare-fun lt!596939 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92037 (_ BitVec 32) List!31683) Bool)

(assert (=> b!1350512 (= lt!596939 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31680))))

(assert (= (and start!113932 res!896090) b!1350509))

(assert (= (and b!1350509 res!896091) b!1350510))

(assert (= (and b!1350510 res!896089) b!1350511))

(assert (= (and b!1350511 res!896088) b!1350512))

(declare-fun m!1237757 () Bool)

(assert (=> start!113932 m!1237757))

(declare-fun m!1237759 () Bool)

(assert (=> b!1350510 m!1237759))

(declare-fun m!1237761 () Bool)

(assert (=> b!1350512 m!1237761))

(declare-fun m!1237763 () Bool)

(assert (=> b!1350509 m!1237763))

(declare-fun m!1237765 () Bool)

(assert (=> b!1350511 m!1237765))

(check-sat (not b!1350512) (not start!113932) (not b!1350510) (not b!1350511) (not b!1350509))
(check-sat)
