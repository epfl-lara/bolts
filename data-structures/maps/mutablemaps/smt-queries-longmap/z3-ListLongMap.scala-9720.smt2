; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115030 () Bool)

(assert start!115030)

(declare-fun b!1363000 () Bool)

(declare-fun res!906992 () Bool)

(declare-fun e!773038 () Bool)

(assert (=> b!1363000 (=> (not res!906992) (not e!773038))))

(declare-datatypes ((List!31965 0))(
  ( (Nil!31962) (Cons!31961 (h!33170 (_ BitVec 64)) (t!46660 List!31965)) )
))
(declare-fun acc!759 () List!31965)

(declare-fun contains!9530 (List!31965 (_ BitVec 64)) Bool)

(assert (=> b!1363000 (= res!906992 (not (contains!9530 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363001 () Bool)

(declare-fun res!906998 () Bool)

(assert (=> b!1363001 (=> (not res!906998) (not e!773038))))

(assert (=> b!1363001 (= res!906998 (not (contains!9530 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363002 () Bool)

(declare-datatypes ((Unit!44915 0))(
  ( (Unit!44916) )
))
(declare-fun e!773036 () Unit!44915)

(declare-fun lt!600606 () Unit!44915)

(assert (=> b!1363002 (= e!773036 lt!600606)))

(declare-fun lt!600607 () Unit!44915)

(declare-fun lemmaListSubSeqRefl!0 (List!31965) Unit!44915)

(assert (=> b!1363002 (= lt!600607 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!921 (List!31965 List!31965) Bool)

(assert (=> b!1363002 (subseq!921 acc!759 acc!759)))

(declare-datatypes ((array!92631 0))(
  ( (array!92632 (arr!44744 (Array (_ BitVec 32) (_ BitVec 64))) (size!45295 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92631)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92631 List!31965 List!31965 (_ BitVec 32)) Unit!44915)

(declare-fun $colon$colon!926 (List!31965 (_ BitVec 64)) List!31965)

(assert (=> b!1363002 (= lt!600606 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!926 acc!759 (select (arr!44744 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92631 (_ BitVec 32) List!31965) Bool)

(assert (=> b!1363002 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363003 () Bool)

(declare-fun res!906994 () Bool)

(assert (=> b!1363003 (=> (not res!906994) (not e!773038))))

(assert (=> b!1363003 (= res!906994 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363004 () Bool)

(declare-fun res!906995 () Bool)

(assert (=> b!1363004 (=> (not res!906995) (not e!773038))))

(assert (=> b!1363004 (= res!906995 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31962))))

(declare-fun b!1363005 () Bool)

(declare-fun Unit!44917 () Unit!44915)

(assert (=> b!1363005 (= e!773036 Unit!44917)))

(declare-fun b!1363007 () Bool)

(declare-fun res!906991 () Bool)

(assert (=> b!1363007 (=> (not res!906991) (not e!773038))))

(assert (=> b!1363007 (= res!906991 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45295 a!3742)))))

(declare-fun b!1363008 () Bool)

(declare-fun res!906993 () Bool)

(assert (=> b!1363008 (=> (not res!906993) (not e!773038))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363008 (= res!906993 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363009 () Bool)

(declare-fun res!906996 () Bool)

(assert (=> b!1363009 (=> (not res!906996) (not e!773038))))

(declare-fun noDuplicate!2409 (List!31965) Bool)

(assert (=> b!1363009 (= res!906996 (noDuplicate!2409 acc!759))))

(declare-fun b!1363010 () Bool)

(declare-fun res!906999 () Bool)

(assert (=> b!1363010 (=> (not res!906999) (not e!773038))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363010 (= res!906999 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45295 a!3742))))))

(declare-fun b!1363006 () Bool)

(assert (=> b!1363006 (= e!773038 false)))

(declare-fun lt!600608 () Unit!44915)

(assert (=> b!1363006 (= lt!600608 e!773036)))

(declare-fun c!127447 () Bool)

(assert (=> b!1363006 (= c!127447 (validKeyInArray!0 (select (arr!44744 a!3742) from!3120)))))

(declare-fun res!906997 () Bool)

(assert (=> start!115030 (=> (not res!906997) (not e!773038))))

(assert (=> start!115030 (= res!906997 (and (bvslt (size!45295 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45295 a!3742))))))

(assert (=> start!115030 e!773038))

(assert (=> start!115030 true))

(declare-fun array_inv!33689 (array!92631) Bool)

(assert (=> start!115030 (array_inv!33689 a!3742)))

(assert (= (and start!115030 res!906997) b!1363009))

(assert (= (and b!1363009 res!906996) b!1363001))

(assert (= (and b!1363001 res!906998) b!1363000))

(assert (= (and b!1363000 res!906992) b!1363004))

(assert (= (and b!1363004 res!906995) b!1363003))

(assert (= (and b!1363003 res!906994) b!1363010))

(assert (= (and b!1363010 res!906999) b!1363008))

(assert (= (and b!1363008 res!906993) b!1363007))

(assert (= (and b!1363007 res!906991) b!1363006))

(assert (= (and b!1363006 c!127447) b!1363002))

(assert (= (and b!1363006 (not c!127447)) b!1363005))

(declare-fun m!1247915 () Bool)

(assert (=> b!1363009 m!1247915))

(declare-fun m!1247917 () Bool)

(assert (=> b!1363003 m!1247917))

(declare-fun m!1247919 () Bool)

(assert (=> b!1363004 m!1247919))

(declare-fun m!1247921 () Bool)

(assert (=> start!115030 m!1247921))

(declare-fun m!1247923 () Bool)

(assert (=> b!1363006 m!1247923))

(assert (=> b!1363006 m!1247923))

(declare-fun m!1247925 () Bool)

(assert (=> b!1363006 m!1247925))

(declare-fun m!1247927 () Bool)

(assert (=> b!1363000 m!1247927))

(declare-fun m!1247929 () Bool)

(assert (=> b!1363008 m!1247929))

(declare-fun m!1247931 () Bool)

(assert (=> b!1363002 m!1247931))

(assert (=> b!1363002 m!1247923))

(declare-fun m!1247933 () Bool)

(assert (=> b!1363002 m!1247933))

(declare-fun m!1247935 () Bool)

(assert (=> b!1363002 m!1247935))

(declare-fun m!1247937 () Bool)

(assert (=> b!1363002 m!1247937))

(assert (=> b!1363002 m!1247923))

(assert (=> b!1363002 m!1247933))

(declare-fun m!1247939 () Bool)

(assert (=> b!1363002 m!1247939))

(declare-fun m!1247941 () Bool)

(assert (=> b!1363001 m!1247941))

(check-sat (not b!1363008) (not b!1363000) (not b!1363006) (not start!115030) (not b!1363003) (not b!1363001) (not b!1363004) (not b!1363002) (not b!1363009))
