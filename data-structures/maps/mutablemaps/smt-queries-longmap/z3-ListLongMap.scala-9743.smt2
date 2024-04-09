; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115480 () Bool)

(assert start!115480)

(declare-fun b!1365060 () Bool)

(declare-fun res!908763 () Bool)

(declare-fun e!774122 () Bool)

(assert (=> b!1365060 (=> (not res!908763) (not e!774122))))

(declare-datatypes ((List!32034 0))(
  ( (Nil!32031) (Cons!32030 (h!33239 (_ BitVec 64)) (t!46735 List!32034)) )
))
(declare-fun acc!866 () List!32034)

(declare-fun noDuplicate!2451 (List!32034) Bool)

(assert (=> b!1365060 (= res!908763 (noDuplicate!2451 acc!866))))

(declare-fun b!1365061 () Bool)

(declare-fun res!908757 () Bool)

(assert (=> b!1365061 (=> (not res!908757) (not e!774122))))

(declare-fun contains!9572 (List!32034 (_ BitVec 64)) Bool)

(assert (=> b!1365061 (= res!908757 (not (contains!9572 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365062 () Bool)

(declare-fun res!908760 () Bool)

(assert (=> b!1365062 (=> (not res!908760) (not e!774122))))

(declare-fun newAcc!98 () List!32034)

(declare-fun subseq!963 (List!32034 List!32034) Bool)

(assert (=> b!1365062 (= res!908760 (subseq!963 newAcc!98 acc!866))))

(declare-fun b!1365063 () Bool)

(declare-fun res!908768 () Bool)

(assert (=> b!1365063 (=> (not res!908768) (not e!774122))))

(assert (=> b!1365063 (= res!908768 (not (contains!9572 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365064 () Bool)

(declare-fun e!774121 () Bool)

(assert (=> b!1365064 (= e!774121 false)))

(declare-datatypes ((array!92724 0))(
  ( (array!92725 (arr!44786 (Array (_ BitVec 32) (_ BitVec 64))) (size!45337 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92724)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!601145 () Bool)

(declare-fun lt!601141 () List!32034)

(declare-fun arrayNoDuplicates!0 (array!92724 (_ BitVec 32) List!32034) Bool)

(assert (=> b!1365064 (= lt!601145 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601141))))

(declare-datatypes ((Unit!45007 0))(
  ( (Unit!45008) )
))
(declare-fun lt!601144 () Unit!45007)

(declare-fun lt!601142 () List!32034)

(declare-fun noDuplicateSubseq!150 (List!32034 List!32034) Unit!45007)

(assert (=> b!1365064 (= lt!601144 (noDuplicateSubseq!150 lt!601142 lt!601141))))

(declare-fun b!1365065 () Bool)

(declare-fun res!908766 () Bool)

(declare-fun e!774123 () Bool)

(assert (=> b!1365065 (=> (not res!908766) (not e!774123))))

(assert (=> b!1365065 (= res!908766 (not (contains!9572 acc!866 (select (arr!44786 a!3861) from!3239))))))

(declare-fun b!1365066 () Bool)

(assert (=> b!1365066 (= e!774122 e!774123)))

(declare-fun res!908761 () Bool)

(assert (=> b!1365066 (=> (not res!908761) (not e!774123))))

(assert (=> b!1365066 (= res!908761 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601143 () Unit!45007)

(assert (=> b!1365066 (= lt!601143 (noDuplicateSubseq!150 newAcc!98 acc!866))))

(declare-fun b!1365067 () Bool)

(declare-fun res!908759 () Bool)

(assert (=> b!1365067 (=> (not res!908759) (not e!774121))))

(assert (=> b!1365067 (= res!908759 (not (contains!9572 lt!601142 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365068 () Bool)

(declare-fun res!908771 () Bool)

(assert (=> b!1365068 (=> (not res!908771) (not e!774121))))

(assert (=> b!1365068 (= res!908771 (not (contains!9572 lt!601141 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365069 () Bool)

(declare-fun res!908767 () Bool)

(assert (=> b!1365069 (=> (not res!908767) (not e!774122))))

(assert (=> b!1365069 (= res!908767 (not (contains!9572 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365070 () Bool)

(declare-fun res!908769 () Bool)

(assert (=> b!1365070 (=> (not res!908769) (not e!774121))))

(assert (=> b!1365070 (= res!908769 (noDuplicate!2451 lt!601141))))

(declare-fun b!1365071 () Bool)

(declare-fun res!908758 () Bool)

(assert (=> b!1365071 (=> (not res!908758) (not e!774122))))

(assert (=> b!1365071 (= res!908758 (not (contains!9572 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908764 () Bool)

(assert (=> start!115480 (=> (not res!908764) (not e!774122))))

(assert (=> start!115480 (= res!908764 (and (bvslt (size!45337 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45337 a!3861))))))

(assert (=> start!115480 e!774122))

(declare-fun array_inv!33731 (array!92724) Bool)

(assert (=> start!115480 (array_inv!33731 a!3861)))

(assert (=> start!115480 true))

(declare-fun b!1365072 () Bool)

(declare-fun res!908765 () Bool)

(assert (=> b!1365072 (=> (not res!908765) (not e!774121))))

(assert (=> b!1365072 (= res!908765 (not (contains!9572 lt!601141 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365073 () Bool)

(declare-fun res!908770 () Bool)

(assert (=> b!1365073 (=> (not res!908770) (not e!774123))))

(assert (=> b!1365073 (= res!908770 (bvslt from!3239 (size!45337 a!3861)))))

(declare-fun b!1365074 () Bool)

(declare-fun res!908762 () Bool)

(assert (=> b!1365074 (=> (not res!908762) (not e!774123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365074 (= res!908762 (validKeyInArray!0 (select (arr!44786 a!3861) from!3239)))))

(declare-fun b!1365075 () Bool)

(declare-fun res!908772 () Bool)

(assert (=> b!1365075 (=> (not res!908772) (not e!774121))))

(assert (=> b!1365075 (= res!908772 (subseq!963 lt!601142 lt!601141))))

(declare-fun b!1365076 () Bool)

(declare-fun res!908755 () Bool)

(assert (=> b!1365076 (=> (not res!908755) (not e!774121))))

(assert (=> b!1365076 (= res!908755 (not (contains!9572 lt!601142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365077 () Bool)

(assert (=> b!1365077 (= e!774123 e!774121)))

(declare-fun res!908756 () Bool)

(assert (=> b!1365077 (=> (not res!908756) (not e!774121))))

(assert (=> b!1365077 (= res!908756 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365077 (= lt!601142 (Cons!32030 (select (arr!44786 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365077 (= lt!601141 (Cons!32030 (select (arr!44786 a!3861) from!3239) acc!866))))

(assert (= (and start!115480 res!908764) b!1365060))

(assert (= (and b!1365060 res!908763) b!1365061))

(assert (= (and b!1365061 res!908757) b!1365063))

(assert (= (and b!1365063 res!908768) b!1365069))

(assert (= (and b!1365069 res!908767) b!1365071))

(assert (= (and b!1365071 res!908758) b!1365062))

(assert (= (and b!1365062 res!908760) b!1365066))

(assert (= (and b!1365066 res!908761) b!1365073))

(assert (= (and b!1365073 res!908770) b!1365074))

(assert (= (and b!1365074 res!908762) b!1365065))

(assert (= (and b!1365065 res!908766) b!1365077))

(assert (= (and b!1365077 res!908756) b!1365070))

(assert (= (and b!1365070 res!908769) b!1365072))

(assert (= (and b!1365072 res!908765) b!1365068))

(assert (= (and b!1365068 res!908771) b!1365076))

(assert (= (and b!1365076 res!908755) b!1365067))

(assert (= (and b!1365067 res!908759) b!1365075))

(assert (= (and b!1365075 res!908772) b!1365064))

(declare-fun m!1249721 () Bool)

(assert (=> b!1365076 m!1249721))

(declare-fun m!1249723 () Bool)

(assert (=> b!1365062 m!1249723))

(declare-fun m!1249725 () Bool)

(assert (=> b!1365064 m!1249725))

(declare-fun m!1249727 () Bool)

(assert (=> b!1365064 m!1249727))

(declare-fun m!1249729 () Bool)

(assert (=> b!1365070 m!1249729))

(declare-fun m!1249731 () Bool)

(assert (=> b!1365072 m!1249731))

(declare-fun m!1249733 () Bool)

(assert (=> start!115480 m!1249733))

(declare-fun m!1249735 () Bool)

(assert (=> b!1365074 m!1249735))

(assert (=> b!1365074 m!1249735))

(declare-fun m!1249737 () Bool)

(assert (=> b!1365074 m!1249737))

(declare-fun m!1249739 () Bool)

(assert (=> b!1365060 m!1249739))

(declare-fun m!1249741 () Bool)

(assert (=> b!1365075 m!1249741))

(declare-fun m!1249743 () Bool)

(assert (=> b!1365071 m!1249743))

(declare-fun m!1249745 () Bool)

(assert (=> b!1365069 m!1249745))

(assert (=> b!1365065 m!1249735))

(assert (=> b!1365065 m!1249735))

(declare-fun m!1249747 () Bool)

(assert (=> b!1365065 m!1249747))

(declare-fun m!1249749 () Bool)

(assert (=> b!1365063 m!1249749))

(declare-fun m!1249751 () Bool)

(assert (=> b!1365066 m!1249751))

(declare-fun m!1249753 () Bool)

(assert (=> b!1365066 m!1249753))

(declare-fun m!1249755 () Bool)

(assert (=> b!1365061 m!1249755))

(declare-fun m!1249757 () Bool)

(assert (=> b!1365067 m!1249757))

(declare-fun m!1249759 () Bool)

(assert (=> b!1365068 m!1249759))

(assert (=> b!1365077 m!1249735))

(check-sat (not b!1365063) (not b!1365067) (not b!1365069) (not b!1365064) (not b!1365075) (not start!115480) (not b!1365070) (not b!1365074) (not b!1365065) (not b!1365061) (not b!1365068) (not b!1365076) (not b!1365066) (not b!1365072) (not b!1365060) (not b!1365062) (not b!1365071))
(check-sat)
