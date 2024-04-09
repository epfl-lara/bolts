; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92402 () Bool)

(assert start!92402)

(declare-fun b!1050060 () Bool)

(declare-fun e!595878 () Bool)

(declare-fun e!595879 () Bool)

(assert (=> b!1050060 (= e!595878 (not e!595879))))

(declare-fun res!699300 () Bool)

(assert (=> b!1050060 (=> res!699300 e!595879)))

(declare-fun lt!463771 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050060 (= res!699300 (bvsle lt!463771 i!1381))))

(declare-fun e!595874 () Bool)

(assert (=> b!1050060 e!595874))

(declare-fun res!699306 () Bool)

(assert (=> b!1050060 (=> (not res!699306) (not e!595874))))

(declare-datatypes ((array!66151 0))(
  ( (array!66152 (arr!31811 (Array (_ BitVec 32) (_ BitVec 64))) (size!32348 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66151)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1050060 (= res!699306 (= (select (store (arr!31811 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463771) k0!2747))))

(declare-fun b!1050061 () Bool)

(declare-fun e!595873 () Bool)

(assert (=> b!1050061 (= e!595873 true)))

(declare-fun lt!463772 () Bool)

(declare-datatypes ((List!22254 0))(
  ( (Nil!22251) (Cons!22250 (h!23459 (_ BitVec 64)) (t!31568 List!22254)) )
))
(declare-fun contains!6146 (List!22254 (_ BitVec 64)) Bool)

(assert (=> b!1050061 (= lt!463772 (contains!6146 Nil!22251 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1050062 () Bool)

(declare-fun e!595880 () Bool)

(declare-fun arrayContainsKey!0 (array!66151 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050062 (= e!595880 (arrayContainsKey!0 a!3488 k0!2747 lt!463771))))

(declare-fun b!1050063 () Bool)

(declare-fun res!699304 () Bool)

(declare-fun e!595877 () Bool)

(assert (=> b!1050063 (=> (not res!699304) (not e!595877))))

(declare-fun arrayNoDuplicates!0 (array!66151 (_ BitVec 32) List!22254) Bool)

(assert (=> b!1050063 (= res!699304 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22251))))

(declare-fun b!1050064 () Bool)

(declare-fun e!595876 () Bool)

(assert (=> b!1050064 (= e!595876 e!595878)))

(declare-fun res!699305 () Bool)

(assert (=> b!1050064 (=> (not res!699305) (not e!595878))))

(assert (=> b!1050064 (= res!699305 (not (= lt!463771 i!1381)))))

(declare-fun lt!463774 () array!66151)

(declare-fun arrayScanForKey!0 (array!66151 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050064 (= lt!463771 (arrayScanForKey!0 lt!463774 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050065 () Bool)

(declare-fun res!699302 () Bool)

(assert (=> b!1050065 (=> (not res!699302) (not e!595877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050065 (= res!699302 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050066 () Bool)

(assert (=> b!1050066 (= e!595879 e!595873)))

(declare-fun res!699303 () Bool)

(assert (=> b!1050066 (=> res!699303 e!595873)))

(assert (=> b!1050066 (= res!699303 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32348 a!3488)))))

(assert (=> b!1050066 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34351 0))(
  ( (Unit!34352) )
))
(declare-fun lt!463773 () Unit!34351)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66151 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34351)

(assert (=> b!1050066 (= lt!463773 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463771 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1050066 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22251)))

(declare-fun lt!463770 () Unit!34351)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66151 (_ BitVec 32) (_ BitVec 32)) Unit!34351)

(assert (=> b!1050066 (= lt!463770 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050067 () Bool)

(declare-fun res!699299 () Bool)

(assert (=> b!1050067 (=> res!699299 e!595873)))

(declare-fun noDuplicate!1531 (List!22254) Bool)

(assert (=> b!1050067 (= res!699299 (not (noDuplicate!1531 Nil!22251)))))

(declare-fun b!1050068 () Bool)

(assert (=> b!1050068 (= e!595874 e!595880)))

(declare-fun res!699296 () Bool)

(assert (=> b!1050068 (=> res!699296 e!595880)))

(assert (=> b!1050068 (= res!699296 (bvsle lt!463771 i!1381))))

(declare-fun b!1050069 () Bool)

(declare-fun res!699298 () Bool)

(assert (=> b!1050069 (=> (not res!699298) (not e!595877))))

(assert (=> b!1050069 (= res!699298 (= (select (arr!31811 a!3488) i!1381) k0!2747))))

(declare-fun b!1050070 () Bool)

(declare-fun res!699297 () Bool)

(assert (=> b!1050070 (=> res!699297 e!595873)))

(assert (=> b!1050070 (= res!699297 (contains!6146 Nil!22251 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!699301 () Bool)

(assert (=> start!92402 (=> (not res!699301) (not e!595877))))

(assert (=> start!92402 (= res!699301 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32348 a!3488)) (bvslt (size!32348 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92402 e!595877))

(assert (=> start!92402 true))

(declare-fun array_inv!24433 (array!66151) Bool)

(assert (=> start!92402 (array_inv!24433 a!3488)))

(declare-fun b!1050071 () Bool)

(assert (=> b!1050071 (= e!595877 e!595876)))

(declare-fun res!699295 () Bool)

(assert (=> b!1050071 (=> (not res!699295) (not e!595876))))

(assert (=> b!1050071 (= res!699295 (arrayContainsKey!0 lt!463774 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050071 (= lt!463774 (array!66152 (store (arr!31811 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32348 a!3488)))))

(assert (= (and start!92402 res!699301) b!1050063))

(assert (= (and b!1050063 res!699304) b!1050065))

(assert (= (and b!1050065 res!699302) b!1050069))

(assert (= (and b!1050069 res!699298) b!1050071))

(assert (= (and b!1050071 res!699295) b!1050064))

(assert (= (and b!1050064 res!699305) b!1050060))

(assert (= (and b!1050060 res!699306) b!1050068))

(assert (= (and b!1050068 (not res!699296)) b!1050062))

(assert (= (and b!1050060 (not res!699300)) b!1050066))

(assert (= (and b!1050066 (not res!699303)) b!1050067))

(assert (= (and b!1050067 (not res!699299)) b!1050070))

(assert (= (and b!1050070 (not res!699297)) b!1050061))

(declare-fun m!970889 () Bool)

(assert (=> b!1050062 m!970889))

(declare-fun m!970891 () Bool)

(assert (=> b!1050061 m!970891))

(declare-fun m!970893 () Bool)

(assert (=> b!1050064 m!970893))

(declare-fun m!970895 () Bool)

(assert (=> b!1050071 m!970895))

(declare-fun m!970897 () Bool)

(assert (=> b!1050071 m!970897))

(declare-fun m!970899 () Bool)

(assert (=> b!1050065 m!970899))

(declare-fun m!970901 () Bool)

(assert (=> b!1050070 m!970901))

(declare-fun m!970903 () Bool)

(assert (=> b!1050069 m!970903))

(declare-fun m!970905 () Bool)

(assert (=> b!1050063 m!970905))

(declare-fun m!970907 () Bool)

(assert (=> start!92402 m!970907))

(assert (=> b!1050060 m!970897))

(declare-fun m!970909 () Bool)

(assert (=> b!1050060 m!970909))

(declare-fun m!970911 () Bool)

(assert (=> b!1050067 m!970911))

(declare-fun m!970913 () Bool)

(assert (=> b!1050066 m!970913))

(declare-fun m!970915 () Bool)

(assert (=> b!1050066 m!970915))

(declare-fun m!970917 () Bool)

(assert (=> b!1050066 m!970917))

(declare-fun m!970919 () Bool)

(assert (=> b!1050066 m!970919))

(check-sat (not b!1050071) (not b!1050067) (not b!1050064) (not b!1050061) (not b!1050065) (not start!92402) (not b!1050062) (not b!1050066) (not b!1050070) (not b!1050063))
(check-sat)
