; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93282 () Bool)

(assert start!93282)

(declare-fun b!1057185 () Bool)

(declare-fun res!706002 () Bool)

(declare-fun e!601230 () Bool)

(assert (=> b!1057185 (=> (not res!706002) (not e!601230))))

(declare-datatypes ((array!66668 0))(
  ( (array!66669 (arr!32053 (Array (_ BitVec 32) (_ BitVec 64))) (size!32590 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66668)

(declare-datatypes ((List!22496 0))(
  ( (Nil!22493) (Cons!22492 (h!23701 (_ BitVec 64)) (t!31810 List!22496)) )
))
(declare-fun arrayNoDuplicates!0 (array!66668 (_ BitVec 32) List!22496) Bool)

(assert (=> b!1057185 (= res!706002 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22493))))

(declare-fun b!1057186 () Bool)

(declare-fun e!601232 () Bool)

(assert (=> b!1057186 (= e!601232 true)))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun lt!466345 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057186 (arrayContainsKey!0 a!3488 k!2747 lt!466345)))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((Unit!34637 0))(
  ( (Unit!34638) )
))
(declare-fun lt!466342 () Unit!34637)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66668 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34637)

(assert (=> b!1057186 (= lt!466342 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466345))))

(declare-fun lt!466343 () (_ BitVec 32))

(assert (=> b!1057186 (= lt!466345 (bvadd #b00000000000000000000000000000001 lt!466343))))

(assert (=> b!1057186 (arrayNoDuplicates!0 a!3488 lt!466343 Nil!22493)))

(declare-fun lt!466341 () Unit!34637)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66668 (_ BitVec 32) (_ BitVec 32)) Unit!34637)

(assert (=> b!1057186 (= lt!466341 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466343))))

(declare-fun b!1057187 () Bool)

(declare-fun res!705997 () Bool)

(assert (=> b!1057187 (=> (not res!705997) (not e!601230))))

(assert (=> b!1057187 (= res!705997 (= (select (arr!32053 a!3488) i!1381) k!2747))))

(declare-fun b!1057188 () Bool)

(declare-fun e!601229 () Bool)

(assert (=> b!1057188 (= e!601229 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057189 () Bool)

(declare-fun e!601226 () Bool)

(assert (=> b!1057189 (= e!601226 e!601229)))

(declare-fun res!705996 () Bool)

(assert (=> b!1057189 (=> res!705996 e!601229)))

(assert (=> b!1057189 (= res!705996 (or (bvsgt lt!466343 i!1381) (bvsle i!1381 lt!466343)))))

(declare-fun b!1057190 () Bool)

(declare-fun e!601227 () Bool)

(declare-fun e!601228 () Bool)

(assert (=> b!1057190 (= e!601227 e!601228)))

(declare-fun res!706000 () Bool)

(assert (=> b!1057190 (=> (not res!706000) (not e!601228))))

(assert (=> b!1057190 (= res!706000 (not (= lt!466343 i!1381)))))

(declare-fun lt!466344 () array!66668)

(declare-fun arrayScanForKey!0 (array!66668 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057190 (= lt!466343 (arrayScanForKey!0 lt!466344 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057191 () Bool)

(assert (=> b!1057191 (= e!601228 (not e!601232))))

(declare-fun res!705995 () Bool)

(assert (=> b!1057191 (=> res!705995 e!601232)))

(assert (=> b!1057191 (= res!705995 (or (bvsgt lt!466343 i!1381) (bvsle i!1381 lt!466343)))))

(assert (=> b!1057191 e!601226))

(declare-fun res!705998 () Bool)

(assert (=> b!1057191 (=> (not res!705998) (not e!601226))))

(assert (=> b!1057191 (= res!705998 (= (select (store (arr!32053 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466343) k!2747))))

(declare-fun b!1057192 () Bool)

(assert (=> b!1057192 (= e!601230 e!601227)))

(declare-fun res!706001 () Bool)

(assert (=> b!1057192 (=> (not res!706001) (not e!601227))))

(assert (=> b!1057192 (= res!706001 (arrayContainsKey!0 lt!466344 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057192 (= lt!466344 (array!66669 (store (arr!32053 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32590 a!3488)))))

(declare-fun res!705994 () Bool)

(assert (=> start!93282 (=> (not res!705994) (not e!601230))))

(assert (=> start!93282 (= res!705994 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32590 a!3488)) (bvslt (size!32590 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93282 e!601230))

(assert (=> start!93282 true))

(declare-fun array_inv!24675 (array!66668) Bool)

(assert (=> start!93282 (array_inv!24675 a!3488)))

(declare-fun b!1057193 () Bool)

(declare-fun res!705999 () Bool)

(assert (=> b!1057193 (=> (not res!705999) (not e!601230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057193 (= res!705999 (validKeyInArray!0 k!2747))))

(assert (= (and start!93282 res!705994) b!1057185))

(assert (= (and b!1057185 res!706002) b!1057193))

(assert (= (and b!1057193 res!705999) b!1057187))

(assert (= (and b!1057187 res!705997) b!1057192))

(assert (= (and b!1057192 res!706001) b!1057190))

(assert (= (and b!1057190 res!706000) b!1057191))

(assert (= (and b!1057191 res!705998) b!1057189))

(assert (= (and b!1057189 (not res!705996)) b!1057188))

(assert (= (and b!1057191 (not res!705995)) b!1057186))

(declare-fun m!977031 () Bool)

(assert (=> b!1057188 m!977031))

(declare-fun m!977033 () Bool)

(assert (=> b!1057191 m!977033))

(declare-fun m!977035 () Bool)

(assert (=> b!1057191 m!977035))

(declare-fun m!977037 () Bool)

(assert (=> b!1057187 m!977037))

(declare-fun m!977039 () Bool)

(assert (=> b!1057192 m!977039))

(assert (=> b!1057192 m!977033))

(declare-fun m!977041 () Bool)

(assert (=> start!93282 m!977041))

(declare-fun m!977043 () Bool)

(assert (=> b!1057185 m!977043))

(declare-fun m!977045 () Bool)

(assert (=> b!1057186 m!977045))

(declare-fun m!977047 () Bool)

(assert (=> b!1057186 m!977047))

(declare-fun m!977049 () Bool)

(assert (=> b!1057186 m!977049))

(declare-fun m!977051 () Bool)

(assert (=> b!1057186 m!977051))

(declare-fun m!977053 () Bool)

(assert (=> b!1057193 m!977053))

(declare-fun m!977055 () Bool)

(assert (=> b!1057190 m!977055))

(push 1)

