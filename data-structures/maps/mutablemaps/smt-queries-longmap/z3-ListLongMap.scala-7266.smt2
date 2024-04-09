; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92816 () Bool)

(assert start!92816)

(declare-fun b!1053835 () Bool)

(declare-fun res!702927 () Bool)

(declare-fun e!598635 () Bool)

(assert (=> b!1053835 (=> (not res!702927) (not e!598635))))

(declare-datatypes ((array!66457 0))(
  ( (array!66458 (arr!31958 (Array (_ BitVec 32) (_ BitVec 64))) (size!32495 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66457)

(declare-datatypes ((List!22401 0))(
  ( (Nil!22398) (Cons!22397 (h!23606 (_ BitVec 64)) (t!31715 List!22401)) )
))
(declare-fun arrayNoDuplicates!0 (array!66457 (_ BitVec 32) List!22401) Bool)

(assert (=> b!1053835 (= res!702927 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22398))))

(declare-fun b!1053836 () Bool)

(declare-fun e!598636 () Bool)

(declare-fun e!598637 () Bool)

(assert (=> b!1053836 (= e!598636 e!598637)))

(declare-fun res!702932 () Bool)

(assert (=> b!1053836 (=> (not res!702932) (not e!598637))))

(declare-fun lt!465222 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053836 (= res!702932 (not (= lt!465222 i!1381)))))

(declare-fun lt!465223 () array!66457)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66457 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053836 (= lt!465222 (arrayScanForKey!0 lt!465223 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053837 () Bool)

(declare-fun e!598633 () Bool)

(declare-fun arrayContainsKey!0 (array!66457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053837 (= e!598633 (arrayContainsKey!0 a!3488 k0!2747 lt!465222))))

(declare-fun b!1053838 () Bool)

(declare-fun res!702928 () Bool)

(assert (=> b!1053838 (=> (not res!702928) (not e!598635))))

(assert (=> b!1053838 (= res!702928 (= (select (arr!31958 a!3488) i!1381) k0!2747))))

(declare-fun res!702933 () Bool)

(assert (=> start!92816 (=> (not res!702933) (not e!598635))))

(assert (=> start!92816 (= res!702933 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32495 a!3488)) (bvslt (size!32495 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92816 e!598635))

(assert (=> start!92816 true))

(declare-fun array_inv!24580 (array!66457) Bool)

(assert (=> start!92816 (array_inv!24580 a!3488)))

(declare-fun b!1053839 () Bool)

(declare-fun e!598634 () Bool)

(assert (=> b!1053839 (= e!598634 e!598633)))

(declare-fun res!702931 () Bool)

(assert (=> b!1053839 (=> res!702931 e!598633)))

(assert (=> b!1053839 (= res!702931 (bvsle lt!465222 i!1381))))

(declare-fun b!1053840 () Bool)

(declare-fun res!702930 () Bool)

(assert (=> b!1053840 (=> (not res!702930) (not e!598635))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053840 (= res!702930 (validKeyInArray!0 k0!2747))))

(declare-fun b!1053841 () Bool)

(assert (=> b!1053841 (= e!598637 (not true))))

(assert (=> b!1053841 e!598634))

(declare-fun res!702926 () Bool)

(assert (=> b!1053841 (=> (not res!702926) (not e!598634))))

(assert (=> b!1053841 (= res!702926 (= (select (store (arr!31958 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465222) k0!2747))))

(declare-fun b!1053842 () Bool)

(assert (=> b!1053842 (= e!598635 e!598636)))

(declare-fun res!702929 () Bool)

(assert (=> b!1053842 (=> (not res!702929) (not e!598636))))

(assert (=> b!1053842 (= res!702929 (arrayContainsKey!0 lt!465223 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053842 (= lt!465223 (array!66458 (store (arr!31958 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32495 a!3488)))))

(assert (= (and start!92816 res!702933) b!1053835))

(assert (= (and b!1053835 res!702927) b!1053840))

(assert (= (and b!1053840 res!702930) b!1053838))

(assert (= (and b!1053838 res!702928) b!1053842))

(assert (= (and b!1053842 res!702929) b!1053836))

(assert (= (and b!1053836 res!702932) b!1053841))

(assert (= (and b!1053841 res!702926) b!1053839))

(assert (= (and b!1053839 (not res!702931)) b!1053837))

(declare-fun m!974151 () Bool)

(assert (=> b!1053835 m!974151))

(declare-fun m!974153 () Bool)

(assert (=> b!1053840 m!974153))

(declare-fun m!974155 () Bool)

(assert (=> b!1053841 m!974155))

(declare-fun m!974157 () Bool)

(assert (=> b!1053841 m!974157))

(declare-fun m!974159 () Bool)

(assert (=> start!92816 m!974159))

(declare-fun m!974161 () Bool)

(assert (=> b!1053836 m!974161))

(declare-fun m!974163 () Bool)

(assert (=> b!1053842 m!974163))

(assert (=> b!1053842 m!974155))

(declare-fun m!974165 () Bool)

(assert (=> b!1053837 m!974165))

(declare-fun m!974167 () Bool)

(assert (=> b!1053838 m!974167))

(check-sat (not b!1053836) (not b!1053837) (not b!1053840) (not b!1053842) (not b!1053835) (not start!92816))
(check-sat)
