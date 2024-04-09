; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115496 () Bool)

(assert start!115496)

(declare-fun b!1365492 () Bool)

(declare-fun res!909188 () Bool)

(declare-fun e!774218 () Bool)

(assert (=> b!1365492 (=> (not res!909188) (not e!774218))))

(declare-datatypes ((List!32042 0))(
  ( (Nil!32039) (Cons!32038 (h!33247 (_ BitVec 64)) (t!46743 List!32042)) )
))
(declare-fun lt!601265 () List!32042)

(declare-fun contains!9580 (List!32042 (_ BitVec 64)) Bool)

(assert (=> b!1365492 (= res!909188 (not (contains!9580 lt!601265 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365493 () Bool)

(declare-fun res!909201 () Bool)

(declare-fun e!774219 () Bool)

(assert (=> b!1365493 (=> (not res!909201) (not e!774219))))

(declare-fun newAcc!98 () List!32042)

(assert (=> b!1365493 (= res!909201 (not (contains!9580 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365494 () Bool)

(assert (=> b!1365494 (= e!774218 false)))

(declare-datatypes ((array!92740 0))(
  ( (array!92741 (arr!44794 (Array (_ BitVec 32) (_ BitVec 64))) (size!45345 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92740)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!601263 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92740 (_ BitVec 32) List!32042) Bool)

(assert (=> b!1365494 (= lt!601263 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601265))))

(declare-datatypes ((Unit!45023 0))(
  ( (Unit!45024) )
))
(declare-fun lt!601264 () Unit!45023)

(declare-fun lt!601262 () List!32042)

(declare-fun noDuplicateSubseq!158 (List!32042 List!32042) Unit!45023)

(assert (=> b!1365494 (= lt!601264 (noDuplicateSubseq!158 lt!601262 lt!601265))))

(declare-fun b!1365495 () Bool)

(declare-fun res!909198 () Bool)

(declare-fun e!774220 () Bool)

(assert (=> b!1365495 (=> (not res!909198) (not e!774220))))

(assert (=> b!1365495 (= res!909198 (bvslt from!3239 (size!45345 a!3861)))))

(declare-fun b!1365497 () Bool)

(declare-fun res!909196 () Bool)

(assert (=> b!1365497 (=> (not res!909196) (not e!774218))))

(assert (=> b!1365497 (= res!909196 (not (contains!9580 lt!601262 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365498 () Bool)

(declare-fun res!909191 () Bool)

(assert (=> b!1365498 (=> (not res!909191) (not e!774218))))

(declare-fun noDuplicate!2459 (List!32042) Bool)

(assert (=> b!1365498 (= res!909191 (noDuplicate!2459 lt!601265))))

(declare-fun b!1365499 () Bool)

(declare-fun res!909187 () Bool)

(assert (=> b!1365499 (=> (not res!909187) (not e!774219))))

(declare-fun acc!866 () List!32042)

(assert (=> b!1365499 (= res!909187 (not (contains!9580 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365500 () Bool)

(declare-fun res!909194 () Bool)

(assert (=> b!1365500 (=> (not res!909194) (not e!774219))))

(assert (=> b!1365500 (= res!909194 (not (contains!9580 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365501 () Bool)

(declare-fun res!909200 () Bool)

(assert (=> b!1365501 (=> (not res!909200) (not e!774220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365501 (= res!909200 (validKeyInArray!0 (select (arr!44794 a!3861) from!3239)))))

(declare-fun b!1365502 () Bool)

(assert (=> b!1365502 (= e!774220 e!774218)))

(declare-fun res!909202 () Bool)

(assert (=> b!1365502 (=> (not res!909202) (not e!774218))))

(assert (=> b!1365502 (= res!909202 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365502 (= lt!601262 (Cons!32038 (select (arr!44794 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365502 (= lt!601265 (Cons!32038 (select (arr!44794 a!3861) from!3239) acc!866))))

(declare-fun b!1365503 () Bool)

(declare-fun res!909193 () Bool)

(assert (=> b!1365503 (=> (not res!909193) (not e!774218))))

(declare-fun subseq!971 (List!32042 List!32042) Bool)

(assert (=> b!1365503 (= res!909193 (subseq!971 lt!601262 lt!601265))))

(declare-fun b!1365504 () Bool)

(declare-fun res!909199 () Bool)

(assert (=> b!1365504 (=> (not res!909199) (not e!774219))))

(assert (=> b!1365504 (= res!909199 (subseq!971 newAcc!98 acc!866))))

(declare-fun b!1365505 () Bool)

(declare-fun res!909195 () Bool)

(assert (=> b!1365505 (=> (not res!909195) (not e!774218))))

(assert (=> b!1365505 (= res!909195 (not (contains!9580 lt!601262 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!909203 () Bool)

(assert (=> start!115496 (=> (not res!909203) (not e!774219))))

(assert (=> start!115496 (= res!909203 (and (bvslt (size!45345 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45345 a!3861))))))

(assert (=> start!115496 e!774219))

(declare-fun array_inv!33739 (array!92740) Bool)

(assert (=> start!115496 (array_inv!33739 a!3861)))

(assert (=> start!115496 true))

(declare-fun b!1365496 () Bool)

(declare-fun res!909204 () Bool)

(assert (=> b!1365496 (=> (not res!909204) (not e!774219))))

(assert (=> b!1365496 (= res!909204 (noDuplicate!2459 acc!866))))

(declare-fun b!1365506 () Bool)

(declare-fun res!909189 () Bool)

(assert (=> b!1365506 (=> (not res!909189) (not e!774220))))

(assert (=> b!1365506 (= res!909189 (not (contains!9580 acc!866 (select (arr!44794 a!3861) from!3239))))))

(declare-fun b!1365507 () Bool)

(declare-fun res!909197 () Bool)

(assert (=> b!1365507 (=> (not res!909197) (not e!774218))))

(assert (=> b!1365507 (= res!909197 (not (contains!9580 lt!601265 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365508 () Bool)

(assert (=> b!1365508 (= e!774219 e!774220)))

(declare-fun res!909192 () Bool)

(assert (=> b!1365508 (=> (not res!909192) (not e!774220))))

(assert (=> b!1365508 (= res!909192 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601261 () Unit!45023)

(assert (=> b!1365508 (= lt!601261 (noDuplicateSubseq!158 newAcc!98 acc!866))))

(declare-fun b!1365509 () Bool)

(declare-fun res!909190 () Bool)

(assert (=> b!1365509 (=> (not res!909190) (not e!774219))))

(assert (=> b!1365509 (= res!909190 (not (contains!9580 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115496 res!909203) b!1365496))

(assert (= (and b!1365496 res!909204) b!1365509))

(assert (= (and b!1365509 res!909190) b!1365499))

(assert (= (and b!1365499 res!909187) b!1365500))

(assert (= (and b!1365500 res!909194) b!1365493))

(assert (= (and b!1365493 res!909201) b!1365504))

(assert (= (and b!1365504 res!909199) b!1365508))

(assert (= (and b!1365508 res!909192) b!1365495))

(assert (= (and b!1365495 res!909198) b!1365501))

(assert (= (and b!1365501 res!909200) b!1365506))

(assert (= (and b!1365506 res!909189) b!1365502))

(assert (= (and b!1365502 res!909202) b!1365498))

(assert (= (and b!1365498 res!909191) b!1365492))

(assert (= (and b!1365492 res!909188) b!1365507))

(assert (= (and b!1365507 res!909197) b!1365497))

(assert (= (and b!1365497 res!909196) b!1365505))

(assert (= (and b!1365505 res!909195) b!1365503))

(assert (= (and b!1365503 res!909193) b!1365494))

(declare-fun m!1250041 () Bool)

(assert (=> b!1365496 m!1250041))

(declare-fun m!1250043 () Bool)

(assert (=> b!1365505 m!1250043))

(declare-fun m!1250045 () Bool)

(assert (=> b!1365492 m!1250045))

(declare-fun m!1250047 () Bool)

(assert (=> b!1365501 m!1250047))

(assert (=> b!1365501 m!1250047))

(declare-fun m!1250049 () Bool)

(assert (=> b!1365501 m!1250049))

(declare-fun m!1250051 () Bool)

(assert (=> b!1365499 m!1250051))

(assert (=> b!1365502 m!1250047))

(declare-fun m!1250053 () Bool)

(assert (=> b!1365497 m!1250053))

(declare-fun m!1250055 () Bool)

(assert (=> b!1365493 m!1250055))

(declare-fun m!1250057 () Bool)

(assert (=> b!1365500 m!1250057))

(declare-fun m!1250059 () Bool)

(assert (=> b!1365494 m!1250059))

(declare-fun m!1250061 () Bool)

(assert (=> b!1365494 m!1250061))

(declare-fun m!1250063 () Bool)

(assert (=> b!1365509 m!1250063))

(declare-fun m!1250065 () Bool)

(assert (=> b!1365503 m!1250065))

(declare-fun m!1250067 () Bool)

(assert (=> b!1365508 m!1250067))

(declare-fun m!1250069 () Bool)

(assert (=> b!1365508 m!1250069))

(declare-fun m!1250071 () Bool)

(assert (=> start!115496 m!1250071))

(declare-fun m!1250073 () Bool)

(assert (=> b!1365507 m!1250073))

(declare-fun m!1250075 () Bool)

(assert (=> b!1365504 m!1250075))

(declare-fun m!1250077 () Bool)

(assert (=> b!1365498 m!1250077))

(assert (=> b!1365506 m!1250047))

(assert (=> b!1365506 m!1250047))

(declare-fun m!1250079 () Bool)

(assert (=> b!1365506 m!1250079))

(push 1)

