; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116788 () Bool)

(assert start!116788)

(declare-fun b!1375844 () Bool)

(declare-fun res!918908 () Bool)

(declare-fun e!779460 () Bool)

(assert (=> b!1375844 (=> (not res!918908) (not e!779460))))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93375 0))(
  ( (array!93376 (arr!45086 (Array (_ BitVec 32) (_ BitVec 64))) (size!45637 (_ BitVec 32))) )
))
(declare-fun lt!604909 () array!93375)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun a!4032 () array!93375)

(declare-fun arrayCountValidKeys!0 (array!93375 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375844 (= res!918908 (= (arrayCountValidKeys!0 lt!604909 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206))))))

(declare-fun b!1375845 () Bool)

(declare-fun e!779458 () Bool)

(assert (=> b!1375845 (= e!779458 e!779460)))

(declare-fun res!918904 () Bool)

(assert (=> b!1375845 (=> (not res!918904) (not e!779460))))

(assert (=> b!1375845 (= res!918904 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45637 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45535 0))(
  ( (Unit!45536) )
))
(declare-fun lt!604915 () Unit!45535)

(declare-fun e!779459 () Unit!45535)

(assert (=> b!1375845 (= lt!604915 e!779459)))

(declare-fun c!127913 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375845 (= c!127913 (validKeyInArray!0 (select (arr!45086 a!4032) to!206)))))

(declare-fun b!1375846 () Bool)

(declare-fun res!918909 () Bool)

(declare-fun e!779461 () Bool)

(assert (=> b!1375846 (=> (not res!918909) (not e!779461))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375846 (= res!918909 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375847 () Bool)

(declare-fun res!918903 () Bool)

(assert (=> b!1375847 (=> (not res!918903) (not e!779461))))

(assert (=> b!1375847 (= res!918903 (and (bvslt (size!45637 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45637 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375848 () Bool)

(declare-fun res!918907 () Bool)

(assert (=> b!1375848 (=> (not res!918907) (not e!779461))))

(assert (=> b!1375848 (= res!918907 (validKeyInArray!0 (select (arr!45086 a!4032) i!1445)))))

(declare-fun bm!65786 () Bool)

(declare-fun call!65789 () (_ BitVec 32))

(assert (=> bm!65786 (= call!65789 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375849 () Bool)

(declare-fun lt!604912 () Unit!45535)

(assert (=> b!1375849 (= e!779459 lt!604912)))

(declare-fun lt!604911 () Unit!45535)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93375 (_ BitVec 32) (_ BitVec 32)) Unit!45535)

(assert (=> b!1375849 (= lt!604911 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!604910 () (_ BitVec 32))

(assert (=> b!1375849 (= call!65789 lt!604910)))

(assert (=> b!1375849 (= lt!604912 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604909 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65790 () (_ BitVec 32))

(declare-fun lt!604913 () (_ BitVec 32))

(assert (=> b!1375849 (= call!65790 lt!604913)))

(declare-fun bm!65787 () Bool)

(assert (=> bm!65787 (= call!65790 (arrayCountValidKeys!0 lt!604909 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375850 () Bool)

(assert (=> b!1375850 (= e!779461 e!779458)))

(declare-fun res!918905 () Bool)

(assert (=> b!1375850 (=> (not res!918905) (not e!779458))))

(assert (=> b!1375850 (= res!918905 (and (= lt!604913 lt!604910) (not (= to!206 (size!45637 a!4032)))))))

(assert (=> b!1375850 (= lt!604910 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375850 (= lt!604913 (arrayCountValidKeys!0 lt!604909 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375850 (= lt!604909 (array!93376 (store (arr!45086 a!4032) i!1445 k0!2947) (size!45637 a!4032)))))

(declare-fun b!1375851 () Bool)

(assert (=> b!1375851 (= e!779460 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (=> b!1375851 (= (arrayCountValidKeys!0 lt!604909 (bvadd #b00000000000000000000000000000001 i!1445) (size!45637 a!4032)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (size!45637 a!4032)))))

(declare-fun lt!604914 () Unit!45535)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93375 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45535)

(assert (=> b!1375851 (= lt!604914 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4032 i!1445 k0!2947 (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375852 () Bool)

(declare-fun lt!604908 () Unit!45535)

(assert (=> b!1375852 (= e!779459 lt!604908)))

(declare-fun lt!604907 () Unit!45535)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93375 (_ BitVec 32) (_ BitVec 32)) Unit!45535)

(assert (=> b!1375852 (= lt!604907 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375852 (= call!65789 (bvadd #b00000000000000000000000000000001 lt!604910))))

(assert (=> b!1375852 (= lt!604908 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604909 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375852 (= call!65790 (bvadd #b00000000000000000000000000000001 lt!604913))))

(declare-fun res!918906 () Bool)

(assert (=> start!116788 (=> (not res!918906) (not e!779461))))

(assert (=> start!116788 (= res!918906 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45637 a!4032))))))

(assert (=> start!116788 e!779461))

(assert (=> start!116788 true))

(declare-fun array_inv!34031 (array!93375) Bool)

(assert (=> start!116788 (array_inv!34031 a!4032)))

(assert (= (and start!116788 res!918906) b!1375848))

(assert (= (and b!1375848 res!918907) b!1375846))

(assert (= (and b!1375846 res!918909) b!1375847))

(assert (= (and b!1375847 res!918903) b!1375850))

(assert (= (and b!1375850 res!918905) b!1375845))

(assert (= (and b!1375845 c!127913) b!1375852))

(assert (= (and b!1375845 (not c!127913)) b!1375849))

(assert (= (or b!1375852 b!1375849) bm!65786))

(assert (= (or b!1375852 b!1375849) bm!65787))

(assert (= (and b!1375845 res!918904) b!1375844))

(assert (= (and b!1375844 res!918908) b!1375851))

(declare-fun m!1259855 () Bool)

(assert (=> b!1375845 m!1259855))

(assert (=> b!1375845 m!1259855))

(declare-fun m!1259857 () Bool)

(assert (=> b!1375845 m!1259857))

(declare-fun m!1259859 () Bool)

(assert (=> b!1375846 m!1259859))

(declare-fun m!1259861 () Bool)

(assert (=> b!1375851 m!1259861))

(declare-fun m!1259863 () Bool)

(assert (=> b!1375851 m!1259863))

(declare-fun m!1259865 () Bool)

(assert (=> b!1375851 m!1259865))

(declare-fun m!1259867 () Bool)

(assert (=> b!1375844 m!1259867))

(declare-fun m!1259869 () Bool)

(assert (=> b!1375844 m!1259869))

(declare-fun m!1259871 () Bool)

(assert (=> b!1375848 m!1259871))

(assert (=> b!1375848 m!1259871))

(declare-fun m!1259873 () Bool)

(assert (=> b!1375848 m!1259873))

(assert (=> bm!65787 m!1259867))

(declare-fun m!1259875 () Bool)

(assert (=> b!1375849 m!1259875))

(declare-fun m!1259877 () Bool)

(assert (=> b!1375849 m!1259877))

(declare-fun m!1259879 () Bool)

(assert (=> b!1375852 m!1259879))

(declare-fun m!1259881 () Bool)

(assert (=> b!1375852 m!1259881))

(assert (=> bm!65786 m!1259869))

(declare-fun m!1259883 () Bool)

(assert (=> b!1375850 m!1259883))

(declare-fun m!1259885 () Bool)

(assert (=> b!1375850 m!1259885))

(declare-fun m!1259887 () Bool)

(assert (=> b!1375850 m!1259887))

(declare-fun m!1259889 () Bool)

(assert (=> start!116788 m!1259889))

(check-sat (not bm!65787) (not b!1375851) (not b!1375848) (not b!1375852) (not bm!65786) (not b!1375844) (not start!116788) (not b!1375846) (not b!1375850) (not b!1375845) (not b!1375849))
(check-sat)
