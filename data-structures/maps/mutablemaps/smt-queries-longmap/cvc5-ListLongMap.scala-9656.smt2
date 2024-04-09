; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114110 () Bool)

(assert start!114110)

(declare-fun b!1354229 () Bool)

(declare-fun e!769377 () Bool)

(declare-fun e!769375 () Bool)

(assert (=> b!1354229 (= e!769377 e!769375)))

(declare-fun res!899426 () Bool)

(assert (=> b!1354229 (=> (not res!899426) (not e!769375))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598144 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354229 (= res!899426 (and (not (= from!3120 i!1404)) lt!598144))))

(declare-datatypes ((Unit!44417 0))(
  ( (Unit!44418) )
))
(declare-fun lt!598146 () Unit!44417)

(declare-fun e!769378 () Unit!44417)

(assert (=> b!1354229 (= lt!598146 e!769378)))

(declare-fun c!126844 () Bool)

(assert (=> b!1354229 (= c!126844 lt!598144)))

(declare-datatypes ((array!92215 0))(
  ( (array!92216 (arr!44551 (Array (_ BitVec 32) (_ BitVec 64))) (size!45102 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92215)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354229 (= lt!598144 (validKeyInArray!0 (select (arr!44551 a!3742) from!3120)))))

(declare-fun b!1354230 () Bool)

(declare-fun res!899439 () Bool)

(assert (=> b!1354230 (=> (not res!899439) (not e!769377))))

(declare-datatypes ((List!31772 0))(
  ( (Nil!31769) (Cons!31768 (h!32977 (_ BitVec 64)) (t!46437 List!31772)) )
))
(declare-fun acc!759 () List!31772)

(declare-fun noDuplicate!2216 (List!31772) Bool)

(assert (=> b!1354230 (= res!899439 (noDuplicate!2216 acc!759))))

(declare-fun b!1354231 () Bool)

(declare-fun res!899435 () Bool)

(declare-fun e!769374 () Bool)

(assert (=> b!1354231 (=> (not res!899435) (not e!769374))))

(declare-fun lt!598143 () List!31772)

(declare-fun contains!9337 (List!31772 (_ BitVec 64)) Bool)

(assert (=> b!1354231 (= res!899435 (not (contains!9337 lt!598143 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!899431 () Bool)

(assert (=> start!114110 (=> (not res!899431) (not e!769377))))

(assert (=> start!114110 (= res!899431 (and (bvslt (size!45102 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45102 a!3742))))))

(assert (=> start!114110 e!769377))

(assert (=> start!114110 true))

(declare-fun array_inv!33496 (array!92215) Bool)

(assert (=> start!114110 (array_inv!33496 a!3742)))

(declare-fun b!1354232 () Bool)

(declare-fun res!899430 () Bool)

(assert (=> b!1354232 (=> (not res!899430) (not e!769374))))

(assert (=> b!1354232 (= res!899430 (noDuplicate!2216 lt!598143))))

(declare-fun b!1354233 () Bool)

(declare-fun res!899432 () Bool)

(assert (=> b!1354233 (=> (not res!899432) (not e!769377))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354233 (= res!899432 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354234 () Bool)

(declare-fun res!899437 () Bool)

(assert (=> b!1354234 (=> (not res!899437) (not e!769374))))

(assert (=> b!1354234 (= res!899437 (not (contains!9337 lt!598143 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354235 () Bool)

(declare-fun res!899436 () Bool)

(assert (=> b!1354235 (=> (not res!899436) (not e!769377))))

(assert (=> b!1354235 (= res!899436 (not (contains!9337 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354236 () Bool)

(declare-fun res!899434 () Bool)

(assert (=> b!1354236 (=> (not res!899434) (not e!769377))))

(assert (=> b!1354236 (= res!899434 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45102 a!3742)))))

(declare-fun b!1354237 () Bool)

(assert (=> b!1354237 (= e!769374 false)))

(declare-fun lt!598148 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92215 (_ BitVec 32) List!31772) Bool)

(assert (=> b!1354237 (= lt!598148 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598143))))

(declare-fun b!1354238 () Bool)

(declare-fun res!899433 () Bool)

(assert (=> b!1354238 (=> (not res!899433) (not e!769377))))

(assert (=> b!1354238 (= res!899433 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45102 a!3742))))))

(declare-fun b!1354239 () Bool)

(declare-fun res!899427 () Bool)

(assert (=> b!1354239 (=> (not res!899427) (not e!769377))))

(assert (=> b!1354239 (= res!899427 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354240 () Bool)

(declare-fun lt!598145 () Unit!44417)

(assert (=> b!1354240 (= e!769378 lt!598145)))

(declare-fun lt!598147 () Unit!44417)

(declare-fun lemmaListSubSeqRefl!0 (List!31772) Unit!44417)

(assert (=> b!1354240 (= lt!598147 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!746 (List!31772 List!31772) Bool)

(assert (=> b!1354240 (subseq!746 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92215 List!31772 List!31772 (_ BitVec 32)) Unit!44417)

(declare-fun $colon$colon!763 (List!31772 (_ BitVec 64)) List!31772)

(assert (=> b!1354240 (= lt!598145 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!763 acc!759 (select (arr!44551 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354240 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354241 () Bool)

(assert (=> b!1354241 (= e!769375 e!769374)))

(declare-fun res!899428 () Bool)

(assert (=> b!1354241 (=> (not res!899428) (not e!769374))))

(assert (=> b!1354241 (= res!899428 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354241 (= lt!598143 ($colon$colon!763 acc!759 (select (arr!44551 a!3742) from!3120)))))

(declare-fun b!1354242 () Bool)

(declare-fun res!899429 () Bool)

(assert (=> b!1354242 (=> (not res!899429) (not e!769377))))

(assert (=> b!1354242 (= res!899429 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31769))))

(declare-fun b!1354243 () Bool)

(declare-fun res!899438 () Bool)

(assert (=> b!1354243 (=> (not res!899438) (not e!769377))))

(assert (=> b!1354243 (= res!899438 (not (contains!9337 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354244 () Bool)

(declare-fun Unit!44419 () Unit!44417)

(assert (=> b!1354244 (= e!769378 Unit!44419)))

(assert (= (and start!114110 res!899431) b!1354230))

(assert (= (and b!1354230 res!899439) b!1354235))

(assert (= (and b!1354235 res!899436) b!1354243))

(assert (= (and b!1354243 res!899438) b!1354242))

(assert (= (and b!1354242 res!899429) b!1354239))

(assert (= (and b!1354239 res!899427) b!1354238))

(assert (= (and b!1354238 res!899433) b!1354233))

(assert (= (and b!1354233 res!899432) b!1354236))

(assert (= (and b!1354236 res!899434) b!1354229))

(assert (= (and b!1354229 c!126844) b!1354240))

(assert (= (and b!1354229 (not c!126844)) b!1354244))

(assert (= (and b!1354229 res!899426) b!1354241))

(assert (= (and b!1354241 res!899428) b!1354232))

(assert (= (and b!1354232 res!899430) b!1354231))

(assert (= (and b!1354231 res!899435) b!1354234))

(assert (= (and b!1354234 res!899437) b!1354237))

(declare-fun m!1240669 () Bool)

(assert (=> b!1354230 m!1240669))

(declare-fun m!1240671 () Bool)

(assert (=> b!1354235 m!1240671))

(declare-fun m!1240673 () Bool)

(assert (=> b!1354234 m!1240673))

(declare-fun m!1240675 () Bool)

(assert (=> b!1354242 m!1240675))

(declare-fun m!1240677 () Bool)

(assert (=> b!1354241 m!1240677))

(assert (=> b!1354241 m!1240677))

(declare-fun m!1240679 () Bool)

(assert (=> b!1354241 m!1240679))

(declare-fun m!1240681 () Bool)

(assert (=> b!1354243 m!1240681))

(assert (=> b!1354229 m!1240677))

(assert (=> b!1354229 m!1240677))

(declare-fun m!1240683 () Bool)

(assert (=> b!1354229 m!1240683))

(declare-fun m!1240685 () Bool)

(assert (=> b!1354239 m!1240685))

(declare-fun m!1240687 () Bool)

(assert (=> start!114110 m!1240687))

(declare-fun m!1240689 () Bool)

(assert (=> b!1354233 m!1240689))

(declare-fun m!1240691 () Bool)

(assert (=> b!1354237 m!1240691))

(declare-fun m!1240693 () Bool)

(assert (=> b!1354240 m!1240693))

(assert (=> b!1354240 m!1240677))

(assert (=> b!1354240 m!1240679))

(declare-fun m!1240695 () Bool)

(assert (=> b!1354240 m!1240695))

(declare-fun m!1240697 () Bool)

(assert (=> b!1354240 m!1240697))

(assert (=> b!1354240 m!1240677))

(assert (=> b!1354240 m!1240679))

(declare-fun m!1240699 () Bool)

(assert (=> b!1354240 m!1240699))

(declare-fun m!1240701 () Bool)

(assert (=> b!1354232 m!1240701))

(declare-fun m!1240703 () Bool)

(assert (=> b!1354231 m!1240703))

(push 1)

