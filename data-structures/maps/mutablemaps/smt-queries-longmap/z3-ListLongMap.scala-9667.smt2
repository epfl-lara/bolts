; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114178 () Bool)

(assert start!114178)

(declare-fun b!1355661 () Bool)

(declare-fun res!900661 () Bool)

(declare-fun e!769828 () Bool)

(assert (=> b!1355661 (=> (not res!900661) (not e!769828))))

(declare-datatypes ((List!31806 0))(
  ( (Nil!31803) (Cons!31802 (h!33011 (_ BitVec 64)) (t!46471 List!31806)) )
))
(declare-fun acc!759 () List!31806)

(declare-fun noDuplicate!2250 (List!31806) Bool)

(assert (=> b!1355661 (= res!900661 (noDuplicate!2250 acc!759))))

(declare-fun b!1355662 () Bool)

(declare-fun res!900660 () Bool)

(assert (=> b!1355662 (=> (not res!900660) (not e!769828))))

(declare-datatypes ((array!92283 0))(
  ( (array!92284 (arr!44585 (Array (_ BitVec 32) (_ BitVec 64))) (size!45136 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92283)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92283 (_ BitVec 32) List!31806) Bool)

(assert (=> b!1355662 (= res!900660 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!900656 () Bool)

(assert (=> start!114178 (=> (not res!900656) (not e!769828))))

(assert (=> start!114178 (= res!900656 (and (bvslt (size!45136 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45136 a!3742))))))

(assert (=> start!114178 e!769828))

(assert (=> start!114178 true))

(declare-fun array_inv!33530 (array!92283) Bool)

(assert (=> start!114178 (array_inv!33530 a!3742)))

(declare-fun b!1355663 () Bool)

(declare-fun res!900658 () Bool)

(assert (=> b!1355663 (=> (not res!900658) (not e!769828))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355663 (= res!900658 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45136 a!3742))))))

(declare-fun b!1355664 () Bool)

(declare-fun e!769827 () Bool)

(assert (=> b!1355664 (= e!769828 e!769827)))

(declare-fun res!900659 () Bool)

(assert (=> b!1355664 (=> (not res!900659) (not e!769827))))

(declare-fun lt!598696 () Bool)

(assert (=> b!1355664 (= res!900659 (and (not (= from!3120 i!1404)) (not lt!598696) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44519 0))(
  ( (Unit!44520) )
))
(declare-fun lt!598697 () Unit!44519)

(declare-fun e!769826 () Unit!44519)

(assert (=> b!1355664 (= lt!598697 e!769826)))

(declare-fun c!126946 () Bool)

(assert (=> b!1355664 (= c!126946 lt!598696)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355664 (= lt!598696 (validKeyInArray!0 (select (arr!44585 a!3742) from!3120)))))

(declare-fun b!1355665 () Bool)

(declare-fun res!900654 () Bool)

(assert (=> b!1355665 (=> (not res!900654) (not e!769828))))

(declare-fun contains!9371 (List!31806 (_ BitVec 64)) Bool)

(assert (=> b!1355665 (= res!900654 (not (contains!9371 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355666 () Bool)

(declare-fun lt!598700 () Unit!44519)

(assert (=> b!1355666 (= e!769826 lt!598700)))

(declare-fun lt!598699 () Unit!44519)

(declare-fun lemmaListSubSeqRefl!0 (List!31806) Unit!44519)

(assert (=> b!1355666 (= lt!598699 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!780 (List!31806 List!31806) Bool)

(assert (=> b!1355666 (subseq!780 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92283 List!31806 List!31806 (_ BitVec 32)) Unit!44519)

(declare-fun $colon$colon!797 (List!31806 (_ BitVec 64)) List!31806)

(assert (=> b!1355666 (= lt!598700 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!797 acc!759 (select (arr!44585 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355666 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355667 () Bool)

(declare-fun Unit!44521 () Unit!44519)

(assert (=> b!1355667 (= e!769826 Unit!44521)))

(declare-fun b!1355668 () Bool)

(declare-fun res!900663 () Bool)

(assert (=> b!1355668 (=> (not res!900663) (not e!769828))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355668 (= res!900663 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355669 () Bool)

(assert (=> b!1355669 (= e!769827 false)))

(declare-fun lt!598698 () Bool)

(assert (=> b!1355669 (= lt!598698 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355670 () Bool)

(declare-fun res!900662 () Bool)

(assert (=> b!1355670 (=> (not res!900662) (not e!769828))))

(assert (=> b!1355670 (= res!900662 (not (contains!9371 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355671 () Bool)

(declare-fun res!900655 () Bool)

(assert (=> b!1355671 (=> (not res!900655) (not e!769828))))

(assert (=> b!1355671 (= res!900655 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31803))))

(declare-fun b!1355672 () Bool)

(declare-fun res!900657 () Bool)

(assert (=> b!1355672 (=> (not res!900657) (not e!769828))))

(assert (=> b!1355672 (= res!900657 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45136 a!3742)))))

(assert (= (and start!114178 res!900656) b!1355661))

(assert (= (and b!1355661 res!900661) b!1355670))

(assert (= (and b!1355670 res!900662) b!1355665))

(assert (= (and b!1355665 res!900654) b!1355671))

(assert (= (and b!1355671 res!900655) b!1355662))

(assert (= (and b!1355662 res!900660) b!1355663))

(assert (= (and b!1355663 res!900658) b!1355668))

(assert (= (and b!1355668 res!900663) b!1355672))

(assert (= (and b!1355672 res!900657) b!1355664))

(assert (= (and b!1355664 c!126946) b!1355666))

(assert (= (and b!1355664 (not c!126946)) b!1355667))

(assert (= (and b!1355664 res!900659) b!1355669))

(declare-fun m!1241813 () Bool)

(assert (=> start!114178 m!1241813))

(declare-fun m!1241815 () Bool)

(assert (=> b!1355668 m!1241815))

(declare-fun m!1241817 () Bool)

(assert (=> b!1355661 m!1241817))

(declare-fun m!1241819 () Bool)

(assert (=> b!1355665 m!1241819))

(declare-fun m!1241821 () Bool)

(assert (=> b!1355669 m!1241821))

(declare-fun m!1241823 () Bool)

(assert (=> b!1355662 m!1241823))

(declare-fun m!1241825 () Bool)

(assert (=> b!1355671 m!1241825))

(declare-fun m!1241827 () Bool)

(assert (=> b!1355670 m!1241827))

(declare-fun m!1241829 () Bool)

(assert (=> b!1355664 m!1241829))

(assert (=> b!1355664 m!1241829))

(declare-fun m!1241831 () Bool)

(assert (=> b!1355664 m!1241831))

(declare-fun m!1241833 () Bool)

(assert (=> b!1355666 m!1241833))

(assert (=> b!1355666 m!1241829))

(declare-fun m!1241835 () Bool)

(assert (=> b!1355666 m!1241835))

(declare-fun m!1241837 () Bool)

(assert (=> b!1355666 m!1241837))

(assert (=> b!1355666 m!1241821))

(assert (=> b!1355666 m!1241829))

(assert (=> b!1355666 m!1241835))

(declare-fun m!1241839 () Bool)

(assert (=> b!1355666 m!1241839))

(check-sat (not b!1355669) (not b!1355668) (not b!1355670) (not b!1355671) (not b!1355665) (not b!1355664) (not b!1355661) (not b!1355662) (not start!114178) (not b!1355666))
(check-sat)
