; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114190 () Bool)

(assert start!114190)

(declare-fun b!1355877 () Bool)

(declare-fun res!900839 () Bool)

(declare-fun e!769897 () Bool)

(assert (=> b!1355877 (=> (not res!900839) (not e!769897))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355877 (= res!900839 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355878 () Bool)

(declare-fun res!900837 () Bool)

(assert (=> b!1355878 (=> (not res!900837) (not e!769897))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92295 0))(
  ( (array!92296 (arr!44591 (Array (_ BitVec 32) (_ BitVec 64))) (size!45142 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92295)

(assert (=> b!1355878 (= res!900837 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45142 a!3742)))))

(declare-fun b!1355880 () Bool)

(declare-datatypes ((Unit!44537 0))(
  ( (Unit!44538) )
))
(declare-fun e!769900 () Unit!44537)

(declare-fun lt!598787 () Unit!44537)

(assert (=> b!1355880 (= e!769900 lt!598787)))

(declare-fun lt!598786 () Unit!44537)

(declare-datatypes ((List!31812 0))(
  ( (Nil!31809) (Cons!31808 (h!33017 (_ BitVec 64)) (t!46477 List!31812)) )
))
(declare-fun acc!759 () List!31812)

(declare-fun lemmaListSubSeqRefl!0 (List!31812) Unit!44537)

(assert (=> b!1355880 (= lt!598786 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!786 (List!31812 List!31812) Bool)

(assert (=> b!1355880 (subseq!786 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92295 List!31812 List!31812 (_ BitVec 32)) Unit!44537)

(declare-fun $colon$colon!803 (List!31812 (_ BitVec 64)) List!31812)

(assert (=> b!1355880 (= lt!598787 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!803 acc!759 (select (arr!44591 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92295 (_ BitVec 32) List!31812) Bool)

(assert (=> b!1355880 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355881 () Bool)

(declare-fun res!900838 () Bool)

(assert (=> b!1355881 (=> (not res!900838) (not e!769897))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355881 (= res!900838 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45142 a!3742))))))

(declare-fun b!1355882 () Bool)

(declare-fun res!900836 () Bool)

(assert (=> b!1355882 (=> (not res!900836) (not e!769897))))

(assert (=> b!1355882 (= res!900836 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355883 () Bool)

(declare-fun e!769899 () Bool)

(assert (=> b!1355883 (= e!769897 e!769899)))

(declare-fun res!900835 () Bool)

(assert (=> b!1355883 (=> (not res!900835) (not e!769899))))

(declare-fun lt!598788 () Bool)

(assert (=> b!1355883 (= res!900835 (and (not (= from!3120 i!1404)) (not lt!598788) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598790 () Unit!44537)

(assert (=> b!1355883 (= lt!598790 e!769900)))

(declare-fun c!126964 () Bool)

(assert (=> b!1355883 (= c!126964 lt!598788)))

(assert (=> b!1355883 (= lt!598788 (validKeyInArray!0 (select (arr!44591 a!3742) from!3120)))))

(declare-fun b!1355884 () Bool)

(declare-fun res!900840 () Bool)

(assert (=> b!1355884 (=> (not res!900840) (not e!769897))))

(assert (=> b!1355884 (= res!900840 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31809))))

(declare-fun b!1355885 () Bool)

(declare-fun res!900842 () Bool)

(assert (=> b!1355885 (=> (not res!900842) (not e!769897))))

(declare-fun contains!9377 (List!31812 (_ BitVec 64)) Bool)

(assert (=> b!1355885 (= res!900842 (not (contains!9377 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355886 () Bool)

(assert (=> b!1355886 (= e!769899 false)))

(declare-fun lt!598789 () Bool)

(assert (=> b!1355886 (= lt!598789 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355887 () Bool)

(declare-fun res!900843 () Bool)

(assert (=> b!1355887 (=> (not res!900843) (not e!769897))))

(declare-fun noDuplicate!2256 (List!31812) Bool)

(assert (=> b!1355887 (= res!900843 (noDuplicate!2256 acc!759))))

(declare-fun b!1355888 () Bool)

(declare-fun res!900834 () Bool)

(assert (=> b!1355888 (=> (not res!900834) (not e!769897))))

(assert (=> b!1355888 (= res!900834 (not (contains!9377 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900841 () Bool)

(assert (=> start!114190 (=> (not res!900841) (not e!769897))))

(assert (=> start!114190 (= res!900841 (and (bvslt (size!45142 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45142 a!3742))))))

(assert (=> start!114190 e!769897))

(assert (=> start!114190 true))

(declare-fun array_inv!33536 (array!92295) Bool)

(assert (=> start!114190 (array_inv!33536 a!3742)))

(declare-fun b!1355879 () Bool)

(declare-fun Unit!44539 () Unit!44537)

(assert (=> b!1355879 (= e!769900 Unit!44539)))

(assert (= (and start!114190 res!900841) b!1355887))

(assert (= (and b!1355887 res!900843) b!1355885))

(assert (= (and b!1355885 res!900842) b!1355888))

(assert (= (and b!1355888 res!900834) b!1355884))

(assert (= (and b!1355884 res!900840) b!1355882))

(assert (= (and b!1355882 res!900836) b!1355881))

(assert (= (and b!1355881 res!900838) b!1355877))

(assert (= (and b!1355877 res!900839) b!1355878))

(assert (= (and b!1355878 res!900837) b!1355883))

(assert (= (and b!1355883 c!126964) b!1355880))

(assert (= (and b!1355883 (not c!126964)) b!1355879))

(assert (= (and b!1355883 res!900835) b!1355886))

(declare-fun m!1241981 () Bool)

(assert (=> b!1355888 m!1241981))

(declare-fun m!1241983 () Bool)

(assert (=> b!1355886 m!1241983))

(declare-fun m!1241985 () Bool)

(assert (=> start!114190 m!1241985))

(declare-fun m!1241987 () Bool)

(assert (=> b!1355884 m!1241987))

(declare-fun m!1241989 () Bool)

(assert (=> b!1355883 m!1241989))

(assert (=> b!1355883 m!1241989))

(declare-fun m!1241991 () Bool)

(assert (=> b!1355883 m!1241991))

(declare-fun m!1241993 () Bool)

(assert (=> b!1355877 m!1241993))

(declare-fun m!1241995 () Bool)

(assert (=> b!1355887 m!1241995))

(declare-fun m!1241997 () Bool)

(assert (=> b!1355880 m!1241997))

(assert (=> b!1355880 m!1241989))

(declare-fun m!1241999 () Bool)

(assert (=> b!1355880 m!1241999))

(declare-fun m!1242001 () Bool)

(assert (=> b!1355880 m!1242001))

(assert (=> b!1355880 m!1241983))

(assert (=> b!1355880 m!1241989))

(assert (=> b!1355880 m!1241999))

(declare-fun m!1242003 () Bool)

(assert (=> b!1355880 m!1242003))

(declare-fun m!1242005 () Bool)

(assert (=> b!1355885 m!1242005))

(declare-fun m!1242007 () Bool)

(assert (=> b!1355882 m!1242007))

(check-sat (not b!1355886) (not b!1355885) (not start!114190) (not b!1355887) (not b!1355877) (not b!1355884) (not b!1355880) (not b!1355883) (not b!1355882) (not b!1355888))
(check-sat)
