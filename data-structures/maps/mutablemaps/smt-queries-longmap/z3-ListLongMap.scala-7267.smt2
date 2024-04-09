; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92822 () Bool)

(assert start!92822)

(declare-fun b!1053912 () Bool)

(declare-fun e!598695 () Bool)

(declare-fun e!598696 () Bool)

(assert (=> b!1053912 (= e!598695 e!598696)))

(declare-fun res!703009 () Bool)

(assert (=> b!1053912 (=> (not res!703009) (not e!598696))))

(declare-datatypes ((array!66463 0))(
  ( (array!66464 (arr!31961 (Array (_ BitVec 32) (_ BitVec 64))) (size!32498 (_ BitVec 32))) )
))
(declare-fun lt!465247 () array!66463)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053912 (= res!703009 (arrayContainsKey!0 lt!465247 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66463)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053912 (= lt!465247 (array!66464 (store (arr!31961 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32498 a!3488)))))

(declare-fun lt!465245 () (_ BitVec 32))

(declare-fun b!1053913 () Bool)

(declare-fun e!598694 () Bool)

(assert (=> b!1053913 (= e!598694 (arrayContainsKey!0 a!3488 k0!2747 lt!465245))))

(declare-fun b!1053914 () Bool)

(declare-fun e!598697 () Bool)

(assert (=> b!1053914 (= e!598696 e!598697)))

(declare-fun res!703010 () Bool)

(assert (=> b!1053914 (=> (not res!703010) (not e!598697))))

(assert (=> b!1053914 (= res!703010 (not (= lt!465245 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66463 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053914 (= lt!465245 (arrayScanForKey!0 lt!465247 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053916 () Bool)

(declare-fun e!598693 () Bool)

(assert (=> b!1053916 (= e!598697 (not e!598693))))

(declare-fun res!703007 () Bool)

(assert (=> b!1053916 (=> res!703007 e!598693)))

(assert (=> b!1053916 (= res!703007 (bvsle lt!465245 i!1381))))

(declare-fun e!598691 () Bool)

(assert (=> b!1053916 e!598691))

(declare-fun res!703005 () Bool)

(assert (=> b!1053916 (=> (not res!703005) (not e!598691))))

(assert (=> b!1053916 (= res!703005 (= (select (store (arr!31961 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465245) k0!2747))))

(declare-fun b!1053917 () Bool)

(declare-fun res!703008 () Bool)

(assert (=> b!1053917 (=> (not res!703008) (not e!598695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053917 (= res!703008 (validKeyInArray!0 k0!2747))))

(declare-fun b!1053918 () Bool)

(assert (=> b!1053918 (= e!598693 (bvsge lt!465245 #b00000000000000000000000000000000))))

(declare-datatypes ((List!22404 0))(
  ( (Nil!22401) (Cons!22400 (h!23609 (_ BitVec 64)) (t!31718 List!22404)) )
))
(declare-fun arrayNoDuplicates!0 (array!66463 (_ BitVec 32) List!22404) Bool)

(assert (=> b!1053918 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22401)))

(declare-datatypes ((Unit!34489 0))(
  ( (Unit!34490) )
))
(declare-fun lt!465246 () Unit!34489)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66463 (_ BitVec 32) (_ BitVec 32)) Unit!34489)

(assert (=> b!1053918 (= lt!465246 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1053919 () Bool)

(declare-fun res!703003 () Bool)

(assert (=> b!1053919 (=> (not res!703003) (not e!598695))))

(assert (=> b!1053919 (= res!703003 (= (select (arr!31961 a!3488) i!1381) k0!2747))))

(declare-fun b!1053920 () Bool)

(declare-fun res!703011 () Bool)

(assert (=> b!1053920 (=> (not res!703011) (not e!598695))))

(assert (=> b!1053920 (= res!703011 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22401))))

(declare-fun b!1053915 () Bool)

(assert (=> b!1053915 (= e!598691 e!598694)))

(declare-fun res!703004 () Bool)

(assert (=> b!1053915 (=> res!703004 e!598694)))

(assert (=> b!1053915 (= res!703004 (bvsle lt!465245 i!1381))))

(declare-fun res!703006 () Bool)

(assert (=> start!92822 (=> (not res!703006) (not e!598695))))

(assert (=> start!92822 (= res!703006 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32498 a!3488)) (bvslt (size!32498 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92822 e!598695))

(assert (=> start!92822 true))

(declare-fun array_inv!24583 (array!66463) Bool)

(assert (=> start!92822 (array_inv!24583 a!3488)))

(assert (= (and start!92822 res!703006) b!1053920))

(assert (= (and b!1053920 res!703011) b!1053917))

(assert (= (and b!1053917 res!703008) b!1053919))

(assert (= (and b!1053919 res!703003) b!1053912))

(assert (= (and b!1053912 res!703009) b!1053914))

(assert (= (and b!1053914 res!703010) b!1053916))

(assert (= (and b!1053916 res!703005) b!1053915))

(assert (= (and b!1053915 (not res!703004)) b!1053913))

(assert (= (and b!1053916 (not res!703007)) b!1053918))

(declare-fun m!974209 () Bool)

(assert (=> b!1053917 m!974209))

(declare-fun m!974211 () Bool)

(assert (=> b!1053920 m!974211))

(declare-fun m!974213 () Bool)

(assert (=> b!1053914 m!974213))

(declare-fun m!974215 () Bool)

(assert (=> b!1053912 m!974215))

(declare-fun m!974217 () Bool)

(assert (=> b!1053912 m!974217))

(assert (=> b!1053916 m!974217))

(declare-fun m!974219 () Bool)

(assert (=> b!1053916 m!974219))

(declare-fun m!974221 () Bool)

(assert (=> b!1053919 m!974221))

(declare-fun m!974223 () Bool)

(assert (=> b!1053913 m!974223))

(declare-fun m!974225 () Bool)

(assert (=> start!92822 m!974225))

(declare-fun m!974227 () Bool)

(assert (=> b!1053918 m!974227))

(declare-fun m!974229 () Bool)

(assert (=> b!1053918 m!974229))

(check-sat (not b!1053918) (not b!1053912) (not b!1053917) (not b!1053914) (not start!92822) (not b!1053920) (not b!1053913))
(check-sat)
