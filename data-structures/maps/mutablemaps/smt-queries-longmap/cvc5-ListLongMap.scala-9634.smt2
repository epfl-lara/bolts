; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113978 () Bool)

(assert start!113978)

(declare-fun b!1351500 () Bool)

(declare-fun res!897084 () Bool)

(declare-fun e!768515 () Bool)

(assert (=> b!1351500 (=> (not res!897084) (not e!768515))))

(declare-datatypes ((List!31706 0))(
  ( (Nil!31703) (Cons!31702 (h!32911 (_ BitVec 64)) (t!46371 List!31706)) )
))
(declare-fun acc!759 () List!31706)

(declare-fun contains!9271 (List!31706 (_ BitVec 64)) Bool)

(assert (=> b!1351500 (= res!897084 (not (contains!9271 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351501 () Bool)

(declare-fun res!897087 () Bool)

(declare-fun e!768517 () Bool)

(assert (=> b!1351501 (=> res!897087 e!768517)))

(declare-fun lt!597203 () List!31706)

(declare-fun noDuplicate!2150 (List!31706) Bool)

(assert (=> b!1351501 (= res!897087 (not (noDuplicate!2150 lt!597203)))))

(declare-fun b!1351502 () Bool)

(assert (=> b!1351502 (= e!768517 true)))

(declare-fun lt!597205 () Bool)

(declare-datatypes ((array!92083 0))(
  ( (array!92084 (arr!44485 (Array (_ BitVec 32) (_ BitVec 64))) (size!45036 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92083)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92083 (_ BitVec 32) List!31706) Bool)

(assert (=> b!1351502 (= lt!597205 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597203))))

(declare-datatypes ((Unit!44222 0))(
  ( (Unit!44223) )
))
(declare-fun lt!597204 () Unit!44222)

(declare-fun noDuplicateSubseq!131 (List!31706 List!31706) Unit!44222)

(assert (=> b!1351502 (= lt!597204 (noDuplicateSubseq!131 acc!759 lt!597203))))

(declare-fun b!1351503 () Bool)

(declare-fun res!897082 () Bool)

(assert (=> b!1351503 (=> (not res!897082) (not e!768515))))

(assert (=> b!1351503 (= res!897082 (noDuplicate!2150 acc!759))))

(declare-fun b!1351504 () Bool)

(declare-fun res!897079 () Bool)

(assert (=> b!1351504 (=> res!897079 e!768517)))

(declare-fun subseq!680 (List!31706 List!31706) Bool)

(assert (=> b!1351504 (= res!897079 (not (subseq!680 acc!759 lt!597203)))))

(declare-fun b!1351505 () Bool)

(declare-fun res!897089 () Bool)

(assert (=> b!1351505 (=> (not res!897089) (not e!768515))))

(assert (=> b!1351505 (= res!897089 (not (contains!9271 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351506 () Bool)

(declare-fun res!897093 () Bool)

(assert (=> b!1351506 (=> (not res!897093) (not e!768515))))

(assert (=> b!1351506 (= res!897093 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31703))))

(declare-fun b!1351507 () Bool)

(declare-fun res!897090 () Bool)

(assert (=> b!1351507 (=> (not res!897090) (not e!768515))))

(assert (=> b!1351507 (= res!897090 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45036 a!3742)))))

(declare-fun b!1351508 () Bool)

(assert (=> b!1351508 (= e!768515 (not e!768517))))

(declare-fun res!897085 () Bool)

(assert (=> b!1351508 (=> res!897085 e!768517)))

(assert (=> b!1351508 (= res!897085 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!697 (List!31706 (_ BitVec 64)) List!31706)

(assert (=> b!1351508 (= lt!597203 ($colon$colon!697 acc!759 (select (arr!44485 a!3742) from!3120)))))

(assert (=> b!1351508 (subseq!680 acc!759 acc!759)))

(declare-fun lt!597206 () Unit!44222)

(declare-fun lemmaListSubSeqRefl!0 (List!31706) Unit!44222)

(assert (=> b!1351508 (= lt!597206 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351509 () Bool)

(declare-fun res!897080 () Bool)

(assert (=> b!1351509 (=> res!897080 e!768517)))

(assert (=> b!1351509 (= res!897080 (contains!9271 lt!597203 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351510 () Bool)

(declare-fun res!897092 () Bool)

(assert (=> b!1351510 (=> (not res!897092) (not e!768515))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351510 (= res!897092 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45036 a!3742))))))

(declare-fun res!897083 () Bool)

(assert (=> start!113978 (=> (not res!897083) (not e!768515))))

(assert (=> start!113978 (= res!897083 (and (bvslt (size!45036 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45036 a!3742))))))

(assert (=> start!113978 e!768515))

(assert (=> start!113978 true))

(declare-fun array_inv!33430 (array!92083) Bool)

(assert (=> start!113978 (array_inv!33430 a!3742)))

(declare-fun b!1351511 () Bool)

(declare-fun res!897086 () Bool)

(assert (=> b!1351511 (=> res!897086 e!768517)))

(assert (=> b!1351511 (= res!897086 (contains!9271 lt!597203 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351512 () Bool)

(declare-fun res!897091 () Bool)

(assert (=> b!1351512 (=> (not res!897091) (not e!768515))))

(assert (=> b!1351512 (= res!897091 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351513 () Bool)

(declare-fun res!897081 () Bool)

(assert (=> b!1351513 (=> (not res!897081) (not e!768515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351513 (= res!897081 (validKeyInArray!0 (select (arr!44485 a!3742) from!3120)))))

(declare-fun b!1351514 () Bool)

(declare-fun res!897088 () Bool)

(assert (=> b!1351514 (=> (not res!897088) (not e!768515))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351514 (= res!897088 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!113978 res!897083) b!1351503))

(assert (= (and b!1351503 res!897082) b!1351500))

(assert (= (and b!1351500 res!897084) b!1351505))

(assert (= (and b!1351505 res!897089) b!1351506))

(assert (= (and b!1351506 res!897093) b!1351512))

(assert (= (and b!1351512 res!897091) b!1351510))

(assert (= (and b!1351510 res!897092) b!1351514))

(assert (= (and b!1351514 res!897088) b!1351507))

(assert (= (and b!1351507 res!897090) b!1351513))

(assert (= (and b!1351513 res!897081) b!1351508))

(assert (= (and b!1351508 (not res!897085)) b!1351501))

(assert (= (and b!1351501 (not res!897087)) b!1351509))

(assert (= (and b!1351509 (not res!897080)) b!1351511))

(assert (= (and b!1351511 (not res!897086)) b!1351504))

(assert (= (and b!1351504 (not res!897079)) b!1351502))

(declare-fun m!1238533 () Bool)

(assert (=> b!1351505 m!1238533))

(declare-fun m!1238535 () Bool)

(assert (=> b!1351503 m!1238535))

(declare-fun m!1238537 () Bool)

(assert (=> start!113978 m!1238537))

(declare-fun m!1238539 () Bool)

(assert (=> b!1351514 m!1238539))

(declare-fun m!1238541 () Bool)

(assert (=> b!1351512 m!1238541))

(declare-fun m!1238543 () Bool)

(assert (=> b!1351504 m!1238543))

(declare-fun m!1238545 () Bool)

(assert (=> b!1351502 m!1238545))

(declare-fun m!1238547 () Bool)

(assert (=> b!1351502 m!1238547))

(declare-fun m!1238549 () Bool)

(assert (=> b!1351508 m!1238549))

(assert (=> b!1351508 m!1238549))

(declare-fun m!1238551 () Bool)

(assert (=> b!1351508 m!1238551))

(declare-fun m!1238553 () Bool)

(assert (=> b!1351508 m!1238553))

(declare-fun m!1238555 () Bool)

(assert (=> b!1351508 m!1238555))

(declare-fun m!1238557 () Bool)

(assert (=> b!1351506 m!1238557))

(declare-fun m!1238559 () Bool)

(assert (=> b!1351509 m!1238559))

(declare-fun m!1238561 () Bool)

(assert (=> b!1351501 m!1238561))

(assert (=> b!1351513 m!1238549))

(assert (=> b!1351513 m!1238549))

(declare-fun m!1238563 () Bool)

(assert (=> b!1351513 m!1238563))

(declare-fun m!1238565 () Bool)

(assert (=> b!1351500 m!1238565))

(declare-fun m!1238567 () Bool)

(assert (=> b!1351511 m!1238567))

(push 1)

(assert (not b!1351511))

(assert (not b!1351500))

(assert (not b!1351503))

(assert (not b!1351509))

(assert (not b!1351508))

(assert (not b!1351506))

(assert (not b!1351514))

(assert (not b!1351505))

(assert (not b!1351512))

(assert (not start!113978))

(assert (not b!1351501))

(assert (not b!1351502))

(assert (not b!1351513))

(assert (not b!1351504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

