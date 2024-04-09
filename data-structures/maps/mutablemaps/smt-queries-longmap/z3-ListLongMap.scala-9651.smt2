; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114082 () Bool)

(assert start!114082)

(declare-fun b!1353557 () Bool)

(declare-fun e!769165 () Bool)

(declare-fun e!769167 () Bool)

(assert (=> b!1353557 (= e!769165 e!769167)))

(declare-fun res!898845 () Bool)

(assert (=> b!1353557 (=> (not res!898845) (not e!769167))))

(declare-fun lt!597892 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353557 (= res!898845 (and (not (= from!3120 i!1404)) lt!597892))))

(declare-datatypes ((Unit!44375 0))(
  ( (Unit!44376) )
))
(declare-fun lt!597893 () Unit!44375)

(declare-fun e!769166 () Unit!44375)

(assert (=> b!1353557 (= lt!597893 e!769166)))

(declare-fun c!126802 () Bool)

(assert (=> b!1353557 (= c!126802 lt!597892)))

(declare-datatypes ((array!92187 0))(
  ( (array!92188 (arr!44537 (Array (_ BitVec 32) (_ BitVec 64))) (size!45088 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92187)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353557 (= lt!597892 (validKeyInArray!0 (select (arr!44537 a!3742) from!3120)))))

(declare-fun b!1353558 () Bool)

(declare-fun e!769164 () Bool)

(assert (=> b!1353558 (= e!769167 e!769164)))

(declare-fun res!898846 () Bool)

(assert (=> b!1353558 (=> (not res!898846) (not e!769164))))

(assert (=> b!1353558 (= res!898846 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31758 0))(
  ( (Nil!31755) (Cons!31754 (h!32963 (_ BitVec 64)) (t!46423 List!31758)) )
))
(declare-fun acc!759 () List!31758)

(declare-fun lt!597896 () List!31758)

(declare-fun $colon$colon!749 (List!31758 (_ BitVec 64)) List!31758)

(assert (=> b!1353558 (= lt!597896 ($colon$colon!749 acc!759 (select (arr!44537 a!3742) from!3120)))))

(declare-fun b!1353559 () Bool)

(declare-fun res!898842 () Bool)

(assert (=> b!1353559 (=> (not res!898842) (not e!769165))))

(declare-fun noDuplicate!2202 (List!31758) Bool)

(assert (=> b!1353559 (= res!898842 (noDuplicate!2202 acc!759))))

(declare-fun b!1353560 () Bool)

(declare-fun res!898847 () Bool)

(assert (=> b!1353560 (=> (not res!898847) (not e!769165))))

(declare-fun contains!9323 (List!31758 (_ BitVec 64)) Bool)

(assert (=> b!1353560 (= res!898847 (not (contains!9323 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353561 () Bool)

(declare-fun Unit!44377 () Unit!44375)

(assert (=> b!1353561 (= e!769166 Unit!44377)))

(declare-fun b!1353562 () Bool)

(declare-fun res!898841 () Bool)

(assert (=> b!1353562 (=> (not res!898841) (not e!769165))))

(assert (=> b!1353562 (= res!898841 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45088 a!3742))))))

(declare-fun b!1353563 () Bool)

(declare-fun res!898848 () Bool)

(assert (=> b!1353563 (=> (not res!898848) (not e!769165))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353563 (= res!898848 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353565 () Bool)

(assert (=> b!1353565 (= e!769164 false)))

(declare-fun lt!597894 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92187 (_ BitVec 32) List!31758) Bool)

(assert (=> b!1353565 (= lt!597894 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597896))))

(declare-fun b!1353566 () Bool)

(declare-fun res!898839 () Bool)

(assert (=> b!1353566 (=> (not res!898839) (not e!769164))))

(assert (=> b!1353566 (= res!898839 (not (contains!9323 lt!597896 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353567 () Bool)

(declare-fun res!898850 () Bool)

(assert (=> b!1353567 (=> (not res!898850) (not e!769165))))

(assert (=> b!1353567 (= res!898850 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31755))))

(declare-fun b!1353568 () Bool)

(declare-fun res!898843 () Bool)

(assert (=> b!1353568 (=> (not res!898843) (not e!769165))))

(assert (=> b!1353568 (= res!898843 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353564 () Bool)

(declare-fun res!898849 () Bool)

(assert (=> b!1353564 (=> (not res!898849) (not e!769164))))

(assert (=> b!1353564 (= res!898849 (not (contains!9323 lt!597896 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!898838 () Bool)

(assert (=> start!114082 (=> (not res!898838) (not e!769165))))

(assert (=> start!114082 (= res!898838 (and (bvslt (size!45088 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45088 a!3742))))))

(assert (=> start!114082 e!769165))

(assert (=> start!114082 true))

(declare-fun array_inv!33482 (array!92187) Bool)

(assert (=> start!114082 (array_inv!33482 a!3742)))

(declare-fun b!1353569 () Bool)

(declare-fun res!898840 () Bool)

(assert (=> b!1353569 (=> (not res!898840) (not e!769165))))

(assert (=> b!1353569 (= res!898840 (not (contains!9323 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353570 () Bool)

(declare-fun res!898851 () Bool)

(assert (=> b!1353570 (=> (not res!898851) (not e!769165))))

(assert (=> b!1353570 (= res!898851 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45088 a!3742)))))

(declare-fun b!1353571 () Bool)

(declare-fun res!898844 () Bool)

(assert (=> b!1353571 (=> (not res!898844) (not e!769164))))

(assert (=> b!1353571 (= res!898844 (noDuplicate!2202 lt!597896))))

(declare-fun b!1353572 () Bool)

(declare-fun lt!597895 () Unit!44375)

(assert (=> b!1353572 (= e!769166 lt!597895)))

(declare-fun lt!597891 () Unit!44375)

(declare-fun lemmaListSubSeqRefl!0 (List!31758) Unit!44375)

(assert (=> b!1353572 (= lt!597891 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!732 (List!31758 List!31758) Bool)

(assert (=> b!1353572 (subseq!732 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92187 List!31758 List!31758 (_ BitVec 32)) Unit!44375)

(assert (=> b!1353572 (= lt!597895 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!749 acc!759 (select (arr!44537 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353572 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114082 res!898838) b!1353559))

(assert (= (and b!1353559 res!898842) b!1353569))

(assert (= (and b!1353569 res!898840) b!1353560))

(assert (= (and b!1353560 res!898847) b!1353567))

(assert (= (and b!1353567 res!898850) b!1353568))

(assert (= (and b!1353568 res!898843) b!1353562))

(assert (= (and b!1353562 res!898841) b!1353563))

(assert (= (and b!1353563 res!898848) b!1353570))

(assert (= (and b!1353570 res!898851) b!1353557))

(assert (= (and b!1353557 c!126802) b!1353572))

(assert (= (and b!1353557 (not c!126802)) b!1353561))

(assert (= (and b!1353557 res!898845) b!1353558))

(assert (= (and b!1353558 res!898846) b!1353571))

(assert (= (and b!1353571 res!898844) b!1353564))

(assert (= (and b!1353564 res!898849) b!1353566))

(assert (= (and b!1353566 res!898839) b!1353565))

(declare-fun m!1240165 () Bool)

(assert (=> b!1353571 m!1240165))

(declare-fun m!1240167 () Bool)

(assert (=> start!114082 m!1240167))

(declare-fun m!1240169 () Bool)

(assert (=> b!1353558 m!1240169))

(assert (=> b!1353558 m!1240169))

(declare-fun m!1240171 () Bool)

(assert (=> b!1353558 m!1240171))

(declare-fun m!1240173 () Bool)

(assert (=> b!1353566 m!1240173))

(declare-fun m!1240175 () Bool)

(assert (=> b!1353560 m!1240175))

(declare-fun m!1240177 () Bool)

(assert (=> b!1353563 m!1240177))

(declare-fun m!1240179 () Bool)

(assert (=> b!1353572 m!1240179))

(assert (=> b!1353572 m!1240169))

(assert (=> b!1353572 m!1240171))

(declare-fun m!1240181 () Bool)

(assert (=> b!1353572 m!1240181))

(declare-fun m!1240183 () Bool)

(assert (=> b!1353572 m!1240183))

(assert (=> b!1353572 m!1240169))

(assert (=> b!1353572 m!1240171))

(declare-fun m!1240185 () Bool)

(assert (=> b!1353572 m!1240185))

(declare-fun m!1240187 () Bool)

(assert (=> b!1353565 m!1240187))

(declare-fun m!1240189 () Bool)

(assert (=> b!1353559 m!1240189))

(declare-fun m!1240191 () Bool)

(assert (=> b!1353568 m!1240191))

(declare-fun m!1240193 () Bool)

(assert (=> b!1353567 m!1240193))

(declare-fun m!1240195 () Bool)

(assert (=> b!1353564 m!1240195))

(declare-fun m!1240197 () Bool)

(assert (=> b!1353569 m!1240197))

(assert (=> b!1353557 m!1240169))

(assert (=> b!1353557 m!1240169))

(declare-fun m!1240199 () Bool)

(assert (=> b!1353557 m!1240199))

(check-sat (not b!1353567) (not b!1353557) (not b!1353566) (not b!1353569) (not start!114082) (not b!1353563) (not b!1353571) (not b!1353564) (not b!1353568) (not b!1353558) (not b!1353565) (not b!1353559) (not b!1353560) (not b!1353572))
(check-sat)
