; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93276 () Bool)

(assert start!93276)

(declare-fun b!1057104 () Bool)

(declare-fun res!705913 () Bool)

(declare-fun e!601164 () Bool)

(assert (=> b!1057104 (=> (not res!705913) (not e!601164))))

(declare-datatypes ((array!66662 0))(
  ( (array!66663 (arr!32050 (Array (_ BitVec 32) (_ BitVec 64))) (size!32587 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66662)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057104 (= res!705913 (= (select (arr!32050 a!3488) i!1381) k!2747))))

(declare-fun b!1057105 () Bool)

(declare-fun e!601166 () Bool)

(assert (=> b!1057105 (= e!601164 e!601166)))

(declare-fun res!705914 () Bool)

(assert (=> b!1057105 (=> (not res!705914) (not e!601166))))

(declare-fun lt!466298 () array!66662)

(declare-fun arrayContainsKey!0 (array!66662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057105 (= res!705914 (arrayContainsKey!0 lt!466298 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057105 (= lt!466298 (array!66663 (store (arr!32050 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32587 a!3488)))))

(declare-fun b!1057106 () Bool)

(declare-fun res!705916 () Bool)

(assert (=> b!1057106 (=> (not res!705916) (not e!601164))))

(declare-datatypes ((List!22493 0))(
  ( (Nil!22490) (Cons!22489 (h!23698 (_ BitVec 64)) (t!31807 List!22493)) )
))
(declare-fun arrayNoDuplicates!0 (array!66662 (_ BitVec 32) List!22493) Bool)

(assert (=> b!1057106 (= res!705916 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22490))))

(declare-fun b!1057107 () Bool)

(declare-fun e!601167 () Bool)

(assert (=> b!1057107 (= e!601166 e!601167)))

(declare-fun res!705921 () Bool)

(assert (=> b!1057107 (=> (not res!705921) (not e!601167))))

(declare-fun lt!466300 () (_ BitVec 32))

(assert (=> b!1057107 (= res!705921 (not (= lt!466300 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66662 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057107 (= lt!466300 (arrayScanForKey!0 lt!466298 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!705919 () Bool)

(assert (=> start!93276 (=> (not res!705919) (not e!601164))))

(assert (=> start!93276 (= res!705919 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32587 a!3488)) (bvslt (size!32587 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93276 e!601164))

(assert (=> start!93276 true))

(declare-fun array_inv!24672 (array!66662) Bool)

(assert (=> start!93276 (array_inv!24672 a!3488)))

(declare-fun e!601169 () Bool)

(declare-fun b!1057108 () Bool)

(assert (=> b!1057108 (= e!601169 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057109 () Bool)

(declare-fun e!601165 () Bool)

(assert (=> b!1057109 (= e!601165 e!601169)))

(declare-fun res!705917 () Bool)

(assert (=> b!1057109 (=> res!705917 e!601169)))

(assert (=> b!1057109 (= res!705917 (or (bvsgt lt!466300 i!1381) (bvsle i!1381 lt!466300)))))

(declare-fun b!1057110 () Bool)

(declare-fun e!601163 () Bool)

(assert (=> b!1057110 (= e!601167 (not e!601163))))

(declare-fun res!705918 () Bool)

(assert (=> b!1057110 (=> res!705918 e!601163)))

(assert (=> b!1057110 (= res!705918 (or (bvsgt lt!466300 i!1381) (bvsle i!1381 lt!466300)))))

(assert (=> b!1057110 e!601165))

(declare-fun res!705915 () Bool)

(assert (=> b!1057110 (=> (not res!705915) (not e!601165))))

(assert (=> b!1057110 (= res!705915 (= (select (store (arr!32050 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466300) k!2747))))

(declare-fun b!1057111 () Bool)

(declare-fun res!705920 () Bool)

(assert (=> b!1057111 (=> (not res!705920) (not e!601164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057111 (= res!705920 (validKeyInArray!0 k!2747))))

(declare-fun b!1057112 () Bool)

(assert (=> b!1057112 (= e!601163 true)))

(declare-fun lt!466296 () (_ BitVec 32))

(assert (=> b!1057112 (arrayContainsKey!0 a!3488 k!2747 lt!466296)))

(declare-datatypes ((Unit!34631 0))(
  ( (Unit!34632) )
))
(declare-fun lt!466297 () Unit!34631)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34631)

(assert (=> b!1057112 (= lt!466297 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466296))))

(assert (=> b!1057112 (= lt!466296 (bvadd #b00000000000000000000000000000001 lt!466300))))

(assert (=> b!1057112 (arrayNoDuplicates!0 a!3488 lt!466300 Nil!22490)))

(declare-fun lt!466299 () Unit!34631)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66662 (_ BitVec 32) (_ BitVec 32)) Unit!34631)

(assert (=> b!1057112 (= lt!466299 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466300))))

(assert (= (and start!93276 res!705919) b!1057106))

(assert (= (and b!1057106 res!705916) b!1057111))

(assert (= (and b!1057111 res!705920) b!1057104))

(assert (= (and b!1057104 res!705913) b!1057105))

(assert (= (and b!1057105 res!705914) b!1057107))

(assert (= (and b!1057107 res!705921) b!1057110))

(assert (= (and b!1057110 res!705915) b!1057109))

(assert (= (and b!1057109 (not res!705917)) b!1057108))

(assert (= (and b!1057110 (not res!705918)) b!1057112))

(declare-fun m!976953 () Bool)

(assert (=> b!1057104 m!976953))

(declare-fun m!976955 () Bool)

(assert (=> b!1057108 m!976955))

(declare-fun m!976957 () Bool)

(assert (=> start!93276 m!976957))

(declare-fun m!976959 () Bool)

(assert (=> b!1057110 m!976959))

(declare-fun m!976961 () Bool)

(assert (=> b!1057110 m!976961))

(declare-fun m!976963 () Bool)

(assert (=> b!1057112 m!976963))

(declare-fun m!976965 () Bool)

(assert (=> b!1057112 m!976965))

(declare-fun m!976967 () Bool)

(assert (=> b!1057112 m!976967))

(declare-fun m!976969 () Bool)

(assert (=> b!1057112 m!976969))

(declare-fun m!976971 () Bool)

(assert (=> b!1057107 m!976971))

(declare-fun m!976973 () Bool)

(assert (=> b!1057105 m!976973))

(assert (=> b!1057105 m!976959))

(declare-fun m!976975 () Bool)

(assert (=> b!1057111 m!976975))

(declare-fun m!976977 () Bool)

(assert (=> b!1057106 m!976977))

(push 1)

