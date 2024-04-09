; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93474 () Bool)

(assert start!93474)

(declare-fun b!1058305 () Bool)

(declare-fun e!602095 () Bool)

(declare-fun e!602098 () Bool)

(assert (=> b!1058305 (= e!602095 (not e!602098))))

(declare-fun res!706996 () Bool)

(assert (=> b!1058305 (=> res!706996 e!602098)))

(declare-fun lt!466818 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1058305 (= res!706996 (or (bvsgt lt!466818 i!1381) (bvsle i!1381 lt!466818)))))

(declare-fun e!602100 () Bool)

(assert (=> b!1058305 e!602100))

(declare-fun res!706988 () Bool)

(assert (=> b!1058305 (=> (not res!706988) (not e!602100))))

(declare-datatypes ((array!66725 0))(
  ( (array!66726 (arr!32077 (Array (_ BitVec 32) (_ BitVec 64))) (size!32614 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66725)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1058305 (= res!706988 (= (select (store (arr!32077 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466818) k!2747))))

(declare-fun e!602097 () Bool)

(declare-fun b!1058306 () Bool)

(declare-fun arrayContainsKey!0 (array!66725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058306 (= e!602097 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058307 () Bool)

(assert (=> b!1058307 (= e!602098 false)))

(assert (=> b!1058307 (not (= (select (arr!32077 a!3488) lt!466818) k!2747))))

(declare-datatypes ((Unit!34685 0))(
  ( (Unit!34686) )
))
(declare-fun lt!466817 () Unit!34685)

(declare-datatypes ((List!22520 0))(
  ( (Nil!22517) (Cons!22516 (h!23725 (_ BitVec 64)) (t!31834 List!22520)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66725 (_ BitVec 64) (_ BitVec 32) List!22520) Unit!34685)

(assert (=> b!1058307 (= lt!466817 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!466818 Nil!22517))))

(declare-fun lt!466819 () (_ BitVec 32))

(assert (=> b!1058307 (arrayContainsKey!0 a!3488 k!2747 lt!466819)))

(declare-fun lt!466814 () Unit!34685)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66725 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34685)

(assert (=> b!1058307 (= lt!466814 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466819))))

(assert (=> b!1058307 (= lt!466819 (bvadd #b00000000000000000000000000000001 lt!466818))))

(declare-fun arrayNoDuplicates!0 (array!66725 (_ BitVec 32) List!22520) Bool)

(assert (=> b!1058307 (arrayNoDuplicates!0 a!3488 lt!466818 Nil!22517)))

(declare-fun lt!466816 () Unit!34685)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66725 (_ BitVec 32) (_ BitVec 32)) Unit!34685)

(assert (=> b!1058307 (= lt!466816 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466818))))

(declare-fun res!706992 () Bool)

(declare-fun e!602094 () Bool)

(assert (=> start!93474 (=> (not res!706992) (not e!602094))))

(assert (=> start!93474 (= res!706992 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32614 a!3488)) (bvslt (size!32614 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93474 e!602094))

(assert (=> start!93474 true))

(declare-fun array_inv!24699 (array!66725) Bool)

(assert (=> start!93474 (array_inv!24699 a!3488)))

(declare-fun b!1058308 () Bool)

(declare-fun res!706991 () Bool)

(assert (=> b!1058308 (=> (not res!706991) (not e!602094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058308 (= res!706991 (validKeyInArray!0 k!2747))))

(declare-fun b!1058309 () Bool)

(assert (=> b!1058309 (= e!602100 e!602097)))

(declare-fun res!706990 () Bool)

(assert (=> b!1058309 (=> res!706990 e!602097)))

(assert (=> b!1058309 (= res!706990 (or (bvsgt lt!466818 i!1381) (bvsle i!1381 lt!466818)))))

(declare-fun b!1058310 () Bool)

(declare-fun res!706993 () Bool)

(assert (=> b!1058310 (=> (not res!706993) (not e!602094))))

(assert (=> b!1058310 (= res!706993 (= (select (arr!32077 a!3488) i!1381) k!2747))))

(declare-fun b!1058311 () Bool)

(declare-fun e!602096 () Bool)

(assert (=> b!1058311 (= e!602094 e!602096)))

(declare-fun res!706989 () Bool)

(assert (=> b!1058311 (=> (not res!706989) (not e!602096))))

(declare-fun lt!466815 () array!66725)

(assert (=> b!1058311 (= res!706989 (arrayContainsKey!0 lt!466815 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058311 (= lt!466815 (array!66726 (store (arr!32077 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32614 a!3488)))))

(declare-fun b!1058312 () Bool)

(declare-fun res!706995 () Bool)

(assert (=> b!1058312 (=> (not res!706995) (not e!602094))))

(assert (=> b!1058312 (= res!706995 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22517))))

(declare-fun b!1058313 () Bool)

(assert (=> b!1058313 (= e!602096 e!602095)))

(declare-fun res!706994 () Bool)

(assert (=> b!1058313 (=> (not res!706994) (not e!602095))))

(assert (=> b!1058313 (= res!706994 (not (= lt!466818 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66725 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058313 (= lt!466818 (arrayScanForKey!0 lt!466815 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93474 res!706992) b!1058312))

(assert (= (and b!1058312 res!706995) b!1058308))

(assert (= (and b!1058308 res!706991) b!1058310))

(assert (= (and b!1058310 res!706993) b!1058311))

(assert (= (and b!1058311 res!706989) b!1058313))

(assert (= (and b!1058313 res!706994) b!1058305))

(assert (= (and b!1058305 res!706988) b!1058309))

(assert (= (and b!1058309 (not res!706990)) b!1058306))

(assert (= (and b!1058305 (not res!706996)) b!1058307))

(declare-fun m!978069 () Bool)

(assert (=> b!1058305 m!978069))

(declare-fun m!978071 () Bool)

(assert (=> b!1058305 m!978071))

(declare-fun m!978073 () Bool)

(assert (=> b!1058308 m!978073))

(declare-fun m!978075 () Bool)

(assert (=> b!1058311 m!978075))

(assert (=> b!1058311 m!978069))

(declare-fun m!978077 () Bool)

(assert (=> b!1058307 m!978077))

(declare-fun m!978079 () Bool)

(assert (=> b!1058307 m!978079))

(declare-fun m!978081 () Bool)

(assert (=> b!1058307 m!978081))

(declare-fun m!978083 () Bool)

(assert (=> b!1058307 m!978083))

(declare-fun m!978085 () Bool)

(assert (=> b!1058307 m!978085))

(declare-fun m!978087 () Bool)

(assert (=> b!1058307 m!978087))

(declare-fun m!978089 () Bool)

(assert (=> start!93474 m!978089))

(declare-fun m!978091 () Bool)

(assert (=> b!1058310 m!978091))

(declare-fun m!978093 () Bool)

(assert (=> b!1058313 m!978093))

(declare-fun m!978095 () Bool)

(assert (=> b!1058306 m!978095))

(declare-fun m!978097 () Bool)

(assert (=> b!1058312 m!978097))

(push 1)

