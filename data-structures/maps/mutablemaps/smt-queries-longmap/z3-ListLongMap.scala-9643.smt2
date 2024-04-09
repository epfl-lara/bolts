; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114034 () Bool)

(assert start!114034)

(declare-fun b!1352529 () Bool)

(declare-fun res!897962 () Bool)

(declare-fun e!768847 () Bool)

(assert (=> b!1352529 (=> (not res!897962) (not e!768847))))

(declare-datatypes ((List!31734 0))(
  ( (Nil!31731) (Cons!31730 (h!32939 (_ BitVec 64)) (t!46399 List!31734)) )
))
(declare-fun acc!759 () List!31734)

(declare-fun contains!9299 (List!31734 (_ BitVec 64)) Bool)

(assert (=> b!1352529 (= res!897962 (not (contains!9299 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352530 () Bool)

(declare-datatypes ((Unit!44303 0))(
  ( (Unit!44304) )
))
(declare-fun e!768846 () Unit!44303)

(declare-fun lt!597540 () Unit!44303)

(assert (=> b!1352530 (= e!768846 lt!597540)))

(declare-fun lt!597541 () Unit!44303)

(declare-fun lemmaListSubSeqRefl!0 (List!31734) Unit!44303)

(assert (=> b!1352530 (= lt!597541 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!708 (List!31734 List!31734) Bool)

(assert (=> b!1352530 (subseq!708 acc!759 acc!759)))

(declare-datatypes ((array!92139 0))(
  ( (array!92140 (arr!44513 (Array (_ BitVec 32) (_ BitVec 64))) (size!45064 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92139)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92139 List!31734 List!31734 (_ BitVec 32)) Unit!44303)

(declare-fun $colon$colon!725 (List!31734 (_ BitVec 64)) List!31734)

(assert (=> b!1352530 (= lt!597540 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!725 acc!759 (select (arr!44513 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92139 (_ BitVec 32) List!31734) Bool)

(assert (=> b!1352530 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352531 () Bool)

(declare-fun res!897958 () Bool)

(assert (=> b!1352531 (=> (not res!897958) (not e!768847))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352531 (= res!897958 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45064 a!3742))))))

(declare-fun b!1352532 () Bool)

(declare-fun Unit!44305 () Unit!44303)

(assert (=> b!1352532 (= e!768846 Unit!44305)))

(declare-fun b!1352533 () Bool)

(declare-fun res!897957 () Bool)

(assert (=> b!1352533 (=> (not res!897957) (not e!768847))))

(assert (=> b!1352533 (= res!897957 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352534 () Bool)

(declare-fun res!897960 () Bool)

(assert (=> b!1352534 (=> (not res!897960) (not e!768847))))

(assert (=> b!1352534 (= res!897960 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45064 a!3742)))))

(declare-fun b!1352535 () Bool)

(declare-fun res!897956 () Bool)

(assert (=> b!1352535 (=> (not res!897956) (not e!768847))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352535 (= res!897956 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352537 () Bool)

(declare-fun res!897963 () Bool)

(assert (=> b!1352537 (=> (not res!897963) (not e!768847))))

(assert (=> b!1352537 (= res!897963 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31731))))

(declare-fun b!1352538 () Bool)

(declare-fun e!768844 () Bool)

(assert (=> b!1352538 (= e!768844 false)))

(declare-fun lt!597542 () Bool)

(assert (=> b!1352538 (= lt!597542 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!897959 () Bool)

(assert (=> start!114034 (=> (not res!897959) (not e!768847))))

(assert (=> start!114034 (= res!897959 (and (bvslt (size!45064 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45064 a!3742))))))

(assert (=> start!114034 e!768847))

(assert (=> start!114034 true))

(declare-fun array_inv!33458 (array!92139) Bool)

(assert (=> start!114034 (array_inv!33458 a!3742)))

(declare-fun b!1352536 () Bool)

(declare-fun res!897954 () Bool)

(assert (=> b!1352536 (=> (not res!897954) (not e!768847))))

(declare-fun noDuplicate!2178 (List!31734) Bool)

(assert (=> b!1352536 (= res!897954 (noDuplicate!2178 acc!759))))

(declare-fun b!1352539 () Bool)

(assert (=> b!1352539 (= e!768847 e!768844)))

(declare-fun res!897961 () Bool)

(assert (=> b!1352539 (=> (not res!897961) (not e!768844))))

(assert (=> b!1352539 (= res!897961 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597539 () Unit!44303)

(assert (=> b!1352539 (= lt!597539 e!768846)))

(declare-fun c!126730 () Bool)

(assert (=> b!1352539 (= c!126730 (validKeyInArray!0 (select (arr!44513 a!3742) from!3120)))))

(declare-fun b!1352540 () Bool)

(declare-fun res!897955 () Bool)

(assert (=> b!1352540 (=> (not res!897955) (not e!768847))))

(assert (=> b!1352540 (= res!897955 (not (contains!9299 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114034 res!897959) b!1352536))

(assert (= (and b!1352536 res!897954) b!1352529))

(assert (= (and b!1352529 res!897962) b!1352540))

(assert (= (and b!1352540 res!897955) b!1352537))

(assert (= (and b!1352537 res!897963) b!1352533))

(assert (= (and b!1352533 res!897957) b!1352531))

(assert (= (and b!1352531 res!897958) b!1352535))

(assert (= (and b!1352535 res!897956) b!1352534))

(assert (= (and b!1352534 res!897960) b!1352539))

(assert (= (and b!1352539 c!126730) b!1352530))

(assert (= (and b!1352539 (not c!126730)) b!1352532))

(assert (= (and b!1352539 res!897961) b!1352538))

(declare-fun m!1239341 () Bool)

(assert (=> b!1352538 m!1239341))

(declare-fun m!1239343 () Bool)

(assert (=> b!1352533 m!1239343))

(declare-fun m!1239345 () Bool)

(assert (=> b!1352540 m!1239345))

(declare-fun m!1239347 () Bool)

(assert (=> b!1352536 m!1239347))

(declare-fun m!1239349 () Bool)

(assert (=> b!1352535 m!1239349))

(declare-fun m!1239351 () Bool)

(assert (=> b!1352530 m!1239351))

(declare-fun m!1239353 () Bool)

(assert (=> b!1352530 m!1239353))

(declare-fun m!1239355 () Bool)

(assert (=> b!1352530 m!1239355))

(declare-fun m!1239357 () Bool)

(assert (=> b!1352530 m!1239357))

(assert (=> b!1352530 m!1239341))

(assert (=> b!1352530 m!1239353))

(assert (=> b!1352530 m!1239355))

(declare-fun m!1239359 () Bool)

(assert (=> b!1352530 m!1239359))

(declare-fun m!1239361 () Bool)

(assert (=> b!1352529 m!1239361))

(declare-fun m!1239363 () Bool)

(assert (=> b!1352537 m!1239363))

(assert (=> b!1352539 m!1239353))

(assert (=> b!1352539 m!1239353))

(declare-fun m!1239365 () Bool)

(assert (=> b!1352539 m!1239365))

(declare-fun m!1239367 () Bool)

(assert (=> start!114034 m!1239367))

(check-sat (not b!1352538) (not b!1352535) (not start!114034) (not b!1352529) (not b!1352530) (not b!1352540) (not b!1352533) (not b!1352539) (not b!1352537) (not b!1352536))
(check-sat)
