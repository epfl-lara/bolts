; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93470 () Bool)

(assert start!93470)

(declare-fun b!1058239 () Bool)

(declare-fun e!602048 () Bool)

(declare-fun e!602053 () Bool)

(assert (=> b!1058239 (= e!602048 (not e!602053))))

(declare-fun res!706927 () Bool)

(assert (=> b!1058239 (=> res!706927 e!602053)))

(declare-fun lt!466778 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058239 (= res!706927 (or (bvsgt lt!466778 i!1381) (bvsle i!1381 lt!466778)))))

(declare-fun e!602054 () Bool)

(assert (=> b!1058239 e!602054))

(declare-fun res!706930 () Bool)

(assert (=> b!1058239 (=> (not res!706930) (not e!602054))))

(declare-datatypes ((array!66721 0))(
  ( (array!66722 (arr!32075 (Array (_ BitVec 32) (_ BitVec 64))) (size!32612 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66721)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1058239 (= res!706930 (= (select (store (arr!32075 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466778) k0!2747))))

(declare-fun b!1058240 () Bool)

(declare-fun e!602051 () Bool)

(assert (=> b!1058240 (= e!602054 e!602051)))

(declare-fun res!706925 () Bool)

(assert (=> b!1058240 (=> res!706925 e!602051)))

(assert (=> b!1058240 (= res!706925 (or (bvsgt lt!466778 i!1381) (bvsle i!1381 lt!466778)))))

(declare-fun b!1058241 () Bool)

(declare-fun arrayContainsKey!0 (array!66721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058241 (= e!602051 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1058242 () Bool)

(declare-fun res!706932 () Bool)

(declare-fun e!602055 () Bool)

(assert (=> b!1058242 (=> res!706932 e!602055)))

(declare-datatypes ((List!22518 0))(
  ( (Nil!22515) (Cons!22514 (h!23723 (_ BitVec 64)) (t!31832 List!22518)) )
))
(declare-fun contains!6224 (List!22518 (_ BitVec 64)) Bool)

(assert (=> b!1058242 (= res!706932 (contains!6224 Nil!22515 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058243 () Bool)

(declare-fun res!706923 () Bool)

(declare-fun e!602049 () Bool)

(assert (=> b!1058243 (=> (not res!706923) (not e!602049))))

(declare-fun arrayNoDuplicates!0 (array!66721 (_ BitVec 32) List!22518) Bool)

(assert (=> b!1058243 (= res!706923 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22515))))

(declare-fun res!706931 () Bool)

(assert (=> start!93470 (=> (not res!706931) (not e!602049))))

(assert (=> start!93470 (= res!706931 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32612 a!3488)) (bvslt (size!32612 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93470 e!602049))

(assert (=> start!93470 true))

(declare-fun array_inv!24697 (array!66721) Bool)

(assert (=> start!93470 (array_inv!24697 a!3488)))

(declare-fun b!1058244 () Bool)

(declare-fun res!706933 () Bool)

(assert (=> b!1058244 (=> (not res!706933) (not e!602049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058244 (= res!706933 (validKeyInArray!0 k0!2747))))

(declare-fun b!1058245 () Bool)

(declare-fun res!706926 () Bool)

(assert (=> b!1058245 (=> (not res!706926) (not e!602049))))

(assert (=> b!1058245 (= res!706926 (= (select (arr!32075 a!3488) i!1381) k0!2747))))

(declare-fun b!1058246 () Bool)

(assert (=> b!1058246 (= e!602055 true)))

(declare-fun lt!466783 () Bool)

(assert (=> b!1058246 (= lt!466783 (contains!6224 Nil!22515 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058247 () Bool)

(assert (=> b!1058247 (= e!602053 e!602055)))

(declare-fun res!706922 () Bool)

(assert (=> b!1058247 (=> res!706922 e!602055)))

(declare-fun lt!466781 () (_ BitVec 32))

(assert (=> b!1058247 (= res!706922 (or (bvslt lt!466778 #b00000000000000000000000000000000) (bvsge lt!466781 (size!32612 a!3488)) (bvsge lt!466778 (size!32612 a!3488))))))

(assert (=> b!1058247 (arrayContainsKey!0 a!3488 k0!2747 lt!466781)))

(declare-datatypes ((Unit!34681 0))(
  ( (Unit!34682) )
))
(declare-fun lt!466782 () Unit!34681)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66721 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34681)

(assert (=> b!1058247 (= lt!466782 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466781))))

(assert (=> b!1058247 (= lt!466781 (bvadd #b00000000000000000000000000000001 lt!466778))))

(assert (=> b!1058247 (arrayNoDuplicates!0 a!3488 lt!466778 Nil!22515)))

(declare-fun lt!466780 () Unit!34681)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66721 (_ BitVec 32) (_ BitVec 32)) Unit!34681)

(assert (=> b!1058247 (= lt!466780 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466778))))

(declare-fun b!1058248 () Bool)

(declare-fun e!602052 () Bool)

(assert (=> b!1058248 (= e!602049 e!602052)))

(declare-fun res!706928 () Bool)

(assert (=> b!1058248 (=> (not res!706928) (not e!602052))))

(declare-fun lt!466779 () array!66721)

(assert (=> b!1058248 (= res!706928 (arrayContainsKey!0 lt!466779 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058248 (= lt!466779 (array!66722 (store (arr!32075 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32612 a!3488)))))

(declare-fun b!1058249 () Bool)

(assert (=> b!1058249 (= e!602052 e!602048)))

(declare-fun res!706929 () Bool)

(assert (=> b!1058249 (=> (not res!706929) (not e!602048))))

(assert (=> b!1058249 (= res!706929 (not (= lt!466778 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66721 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058249 (= lt!466778 (arrayScanForKey!0 lt!466779 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058250 () Bool)

(declare-fun res!706924 () Bool)

(assert (=> b!1058250 (=> res!706924 e!602055)))

(declare-fun noDuplicate!1585 (List!22518) Bool)

(assert (=> b!1058250 (= res!706924 (not (noDuplicate!1585 Nil!22515)))))

(assert (= (and start!93470 res!706931) b!1058243))

(assert (= (and b!1058243 res!706923) b!1058244))

(assert (= (and b!1058244 res!706933) b!1058245))

(assert (= (and b!1058245 res!706926) b!1058248))

(assert (= (and b!1058248 res!706928) b!1058249))

(assert (= (and b!1058249 res!706929) b!1058239))

(assert (= (and b!1058239 res!706930) b!1058240))

(assert (= (and b!1058240 (not res!706925)) b!1058241))

(assert (= (and b!1058239 (not res!706927)) b!1058247))

(assert (= (and b!1058247 (not res!706922)) b!1058250))

(assert (= (and b!1058250 (not res!706924)) b!1058242))

(assert (= (and b!1058242 (not res!706932)) b!1058246))

(declare-fun m!978005 () Bool)

(assert (=> b!1058246 m!978005))

(declare-fun m!978007 () Bool)

(assert (=> b!1058247 m!978007))

(declare-fun m!978009 () Bool)

(assert (=> b!1058247 m!978009))

(declare-fun m!978011 () Bool)

(assert (=> b!1058247 m!978011))

(declare-fun m!978013 () Bool)

(assert (=> b!1058247 m!978013))

(declare-fun m!978015 () Bool)

(assert (=> start!93470 m!978015))

(declare-fun m!978017 () Bool)

(assert (=> b!1058245 m!978017))

(declare-fun m!978019 () Bool)

(assert (=> b!1058243 m!978019))

(declare-fun m!978021 () Bool)

(assert (=> b!1058248 m!978021))

(declare-fun m!978023 () Bool)

(assert (=> b!1058248 m!978023))

(declare-fun m!978025 () Bool)

(assert (=> b!1058249 m!978025))

(declare-fun m!978027 () Bool)

(assert (=> b!1058244 m!978027))

(assert (=> b!1058239 m!978023))

(declare-fun m!978029 () Bool)

(assert (=> b!1058239 m!978029))

(declare-fun m!978031 () Bool)

(assert (=> b!1058250 m!978031))

(declare-fun m!978033 () Bool)

(assert (=> b!1058241 m!978033))

(declare-fun m!978035 () Bool)

(assert (=> b!1058242 m!978035))

(check-sat (not b!1058250) (not b!1058248) (not b!1058246) (not start!93470) (not b!1058243) (not b!1058247) (not b!1058241) (not b!1058249) (not b!1058244) (not b!1058242))
(check-sat)
