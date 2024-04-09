; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114198 () Bool)

(assert start!114198)

(declare-fun b!1356029 () Bool)

(declare-fun res!900970 () Bool)

(declare-fun e!769945 () Bool)

(assert (=> b!1356029 (=> (not res!900970) (not e!769945))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356029 (= res!900970 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356030 () Bool)

(declare-fun res!900962 () Bool)

(assert (=> b!1356030 (=> (not res!900962) (not e!769945))))

(declare-datatypes ((array!92303 0))(
  ( (array!92304 (arr!44595 (Array (_ BitVec 32) (_ BitVec 64))) (size!45146 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92303)

(declare-datatypes ((List!31816 0))(
  ( (Nil!31813) (Cons!31812 (h!33021 (_ BitVec 64)) (t!46481 List!31816)) )
))
(declare-fun arrayNoDuplicates!0 (array!92303 (_ BitVec 32) List!31816) Bool)

(assert (=> b!1356030 (= res!900962 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31813))))

(declare-fun b!1356031 () Bool)

(declare-fun e!769948 () Bool)

(assert (=> b!1356031 (= e!769945 e!769948)))

(declare-fun res!900966 () Bool)

(assert (=> b!1356031 (=> (not res!900966) (not e!769948))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598849 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356031 (= res!900966 (and (not (= from!3120 i!1404)) (not lt!598849) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44549 0))(
  ( (Unit!44550) )
))
(declare-fun lt!598847 () Unit!44549)

(declare-fun e!769947 () Unit!44549)

(assert (=> b!1356031 (= lt!598847 e!769947)))

(declare-fun c!126976 () Bool)

(assert (=> b!1356031 (= c!126976 lt!598849)))

(assert (=> b!1356031 (= lt!598849 (validKeyInArray!0 (select (arr!44595 a!3742) from!3120)))))

(declare-fun b!1356032 () Bool)

(declare-fun res!900967 () Bool)

(assert (=> b!1356032 (=> (not res!900967) (not e!769945))))

(assert (=> b!1356032 (= res!900967 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45146 a!3742)))))

(declare-fun b!1356033 () Bool)

(declare-fun res!900963 () Bool)

(assert (=> b!1356033 (=> (not res!900963) (not e!769945))))

(declare-fun acc!759 () List!31816)

(declare-fun contains!9381 (List!31816 (_ BitVec 64)) Bool)

(assert (=> b!1356033 (= res!900963 (not (contains!9381 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900965 () Bool)

(assert (=> start!114198 (=> (not res!900965) (not e!769945))))

(assert (=> start!114198 (= res!900965 (and (bvslt (size!45146 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45146 a!3742))))))

(assert (=> start!114198 e!769945))

(assert (=> start!114198 true))

(declare-fun array_inv!33540 (array!92303) Bool)

(assert (=> start!114198 (array_inv!33540 a!3742)))

(declare-fun b!1356034 () Bool)

(declare-fun res!900964 () Bool)

(assert (=> b!1356034 (=> (not res!900964) (not e!769945))))

(declare-fun noDuplicate!2260 (List!31816) Bool)

(assert (=> b!1356034 (= res!900964 (noDuplicate!2260 acc!759))))

(declare-fun b!1356035 () Bool)

(declare-fun res!900972 () Bool)

(assert (=> b!1356035 (=> (not res!900972) (not e!769945))))

(assert (=> b!1356035 (= res!900972 (not (contains!9381 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356036 () Bool)

(assert (=> b!1356036 (= e!769948 (not (bvsle from!3120 (size!45146 a!3742))))))

(assert (=> b!1356036 (arrayNoDuplicates!0 (array!92304 (store (arr!44595 a!3742) i!1404 l!3587) (size!45146 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!598848 () Unit!44549)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92303 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31816) Unit!44549)

(assert (=> b!1356036 (= lt!598848 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1356037 () Bool)

(declare-fun Unit!44551 () Unit!44549)

(assert (=> b!1356037 (= e!769947 Unit!44551)))

(declare-fun b!1356038 () Bool)

(declare-fun res!900971 () Bool)

(assert (=> b!1356038 (=> (not res!900971) (not e!769945))))

(assert (=> b!1356038 (= res!900971 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356039 () Bool)

(declare-fun lt!598846 () Unit!44549)

(assert (=> b!1356039 (= e!769947 lt!598846)))

(declare-fun lt!598850 () Unit!44549)

(declare-fun lemmaListSubSeqRefl!0 (List!31816) Unit!44549)

(assert (=> b!1356039 (= lt!598850 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!790 (List!31816 List!31816) Bool)

(assert (=> b!1356039 (subseq!790 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92303 List!31816 List!31816 (_ BitVec 32)) Unit!44549)

(declare-fun $colon$colon!807 (List!31816 (_ BitVec 64)) List!31816)

(assert (=> b!1356039 (= lt!598846 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!807 acc!759 (select (arr!44595 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1356039 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1356040 () Bool)

(declare-fun res!900969 () Bool)

(assert (=> b!1356040 (=> (not res!900969) (not e!769945))))

(assert (=> b!1356040 (= res!900969 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45146 a!3742))))))

(declare-fun b!1356041 () Bool)

(declare-fun res!900968 () Bool)

(assert (=> b!1356041 (=> (not res!900968) (not e!769948))))

(assert (=> b!1356041 (= res!900968 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114198 res!900965) b!1356034))

(assert (= (and b!1356034 res!900964) b!1356035))

(assert (= (and b!1356035 res!900972) b!1356033))

(assert (= (and b!1356033 res!900963) b!1356030))

(assert (= (and b!1356030 res!900962) b!1356038))

(assert (= (and b!1356038 res!900971) b!1356040))

(assert (= (and b!1356040 res!900969) b!1356029))

(assert (= (and b!1356029 res!900970) b!1356032))

(assert (= (and b!1356032 res!900967) b!1356031))

(assert (= (and b!1356031 c!126976) b!1356039))

(assert (= (and b!1356031 (not c!126976)) b!1356037))

(assert (= (and b!1356031 res!900966) b!1356041))

(assert (= (and b!1356041 res!900968) b!1356036))

(declare-fun m!1242105 () Bool)

(assert (=> b!1356033 m!1242105))

(declare-fun m!1242107 () Bool)

(assert (=> b!1356041 m!1242107))

(declare-fun m!1242109 () Bool)

(assert (=> b!1356038 m!1242109))

(declare-fun m!1242111 () Bool)

(assert (=> b!1356029 m!1242111))

(declare-fun m!1242113 () Bool)

(assert (=> b!1356039 m!1242113))

(declare-fun m!1242115 () Bool)

(assert (=> b!1356039 m!1242115))

(declare-fun m!1242117 () Bool)

(assert (=> b!1356039 m!1242117))

(declare-fun m!1242119 () Bool)

(assert (=> b!1356039 m!1242119))

(assert (=> b!1356039 m!1242107))

(assert (=> b!1356039 m!1242115))

(assert (=> b!1356039 m!1242117))

(declare-fun m!1242121 () Bool)

(assert (=> b!1356039 m!1242121))

(declare-fun m!1242123 () Bool)

(assert (=> b!1356036 m!1242123))

(declare-fun m!1242125 () Bool)

(assert (=> b!1356036 m!1242125))

(declare-fun m!1242127 () Bool)

(assert (=> b!1356036 m!1242127))

(declare-fun m!1242129 () Bool)

(assert (=> b!1356030 m!1242129))

(assert (=> b!1356031 m!1242115))

(assert (=> b!1356031 m!1242115))

(declare-fun m!1242131 () Bool)

(assert (=> b!1356031 m!1242131))

(declare-fun m!1242133 () Bool)

(assert (=> b!1356035 m!1242133))

(declare-fun m!1242135 () Bool)

(assert (=> b!1356034 m!1242135))

(declare-fun m!1242137 () Bool)

(assert (=> start!114198 m!1242137))

(push 1)

(assert (not b!1356029))

(assert (not b!1356039))

(assert (not b!1356030))

(assert (not b!1356035))

(assert (not b!1356033))

(assert (not b!1356041))

(assert (not start!114198))

(assert (not b!1356038))

(assert (not b!1356036))

(assert (not b!1356034))

(assert (not b!1356031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

