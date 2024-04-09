; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93286 () Bool)

(assert start!93286)

(declare-fun b!1057239 () Bool)

(declare-fun e!601268 () Bool)

(declare-fun e!601274 () Bool)

(assert (=> b!1057239 (= e!601268 e!601274)))

(declare-fun res!706050 () Bool)

(assert (=> b!1057239 (=> (not res!706050) (not e!601274))))

(declare-datatypes ((array!66672 0))(
  ( (array!66673 (arr!32055 (Array (_ BitVec 32) (_ BitVec 64))) (size!32592 (_ BitVec 32))) )
))
(declare-fun lt!466371 () array!66672)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057239 (= res!706050 (arrayContainsKey!0 lt!466371 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66672)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057239 (= lt!466371 (array!66673 (store (arr!32055 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32592 a!3488)))))

(declare-fun b!1057240 () Bool)

(declare-fun e!601270 () Bool)

(assert (=> b!1057240 (= e!601270 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057241 () Bool)

(declare-fun e!601272 () Bool)

(assert (=> b!1057241 (= e!601274 e!601272)))

(declare-fun res!706049 () Bool)

(assert (=> b!1057241 (=> (not res!706049) (not e!601272))))

(declare-fun lt!466372 () (_ BitVec 32))

(assert (=> b!1057241 (= res!706049 (not (= lt!466372 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66672 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057241 (= lt!466372 (arrayScanForKey!0 lt!466371 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057242 () Bool)

(declare-fun res!706052 () Bool)

(assert (=> b!1057242 (=> (not res!706052) (not e!601268))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057242 (= res!706052 (validKeyInArray!0 k!2747))))

(declare-fun res!706053 () Bool)

(assert (=> start!93286 (=> (not res!706053) (not e!601268))))

(assert (=> start!93286 (= res!706053 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32592 a!3488)) (bvslt (size!32592 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93286 e!601268))

(assert (=> start!93286 true))

(declare-fun array_inv!24677 (array!66672) Bool)

(assert (=> start!93286 (array_inv!24677 a!3488)))

(declare-fun b!1057243 () Bool)

(declare-fun e!601269 () Bool)

(assert (=> b!1057243 (= e!601272 (not e!601269))))

(declare-fun res!706051 () Bool)

(assert (=> b!1057243 (=> res!706051 e!601269)))

(assert (=> b!1057243 (= res!706051 (or (bvsgt lt!466372 i!1381) (bvsle i!1381 lt!466372)))))

(declare-fun e!601273 () Bool)

(assert (=> b!1057243 e!601273))

(declare-fun res!706055 () Bool)

(assert (=> b!1057243 (=> (not res!706055) (not e!601273))))

(assert (=> b!1057243 (= res!706055 (= (select (store (arr!32055 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466372) k!2747))))

(declare-fun b!1057244 () Bool)

(declare-fun res!706056 () Bool)

(assert (=> b!1057244 (=> (not res!706056) (not e!601268))))

(declare-datatypes ((List!22498 0))(
  ( (Nil!22495) (Cons!22494 (h!23703 (_ BitVec 64)) (t!31812 List!22498)) )
))
(declare-fun arrayNoDuplicates!0 (array!66672 (_ BitVec 32) List!22498) Bool)

(assert (=> b!1057244 (= res!706056 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22495))))

(declare-fun b!1057245 () Bool)

(assert (=> b!1057245 (= e!601269 true)))

(declare-fun lt!466375 () (_ BitVec 32))

(assert (=> b!1057245 (arrayContainsKey!0 a!3488 k!2747 lt!466375)))

(declare-datatypes ((Unit!34641 0))(
  ( (Unit!34642) )
))
(declare-fun lt!466374 () Unit!34641)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66672 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34641)

(assert (=> b!1057245 (= lt!466374 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466375))))

(assert (=> b!1057245 (= lt!466375 (bvadd #b00000000000000000000000000000001 lt!466372))))

(assert (=> b!1057245 (arrayNoDuplicates!0 a!3488 lt!466372 Nil!22495)))

(declare-fun lt!466373 () Unit!34641)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66672 (_ BitVec 32) (_ BitVec 32)) Unit!34641)

(assert (=> b!1057245 (= lt!466373 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466372))))

(declare-fun b!1057246 () Bool)

(assert (=> b!1057246 (= e!601273 e!601270)))

(declare-fun res!706054 () Bool)

(assert (=> b!1057246 (=> res!706054 e!601270)))

(assert (=> b!1057246 (= res!706054 (or (bvsgt lt!466372 i!1381) (bvsle i!1381 lt!466372)))))

(declare-fun b!1057247 () Bool)

(declare-fun res!706048 () Bool)

(assert (=> b!1057247 (=> (not res!706048) (not e!601268))))

(assert (=> b!1057247 (= res!706048 (= (select (arr!32055 a!3488) i!1381) k!2747))))

(assert (= (and start!93286 res!706053) b!1057244))

(assert (= (and b!1057244 res!706056) b!1057242))

(assert (= (and b!1057242 res!706052) b!1057247))

(assert (= (and b!1057247 res!706048) b!1057239))

(assert (= (and b!1057239 res!706050) b!1057241))

(assert (= (and b!1057241 res!706049) b!1057243))

(assert (= (and b!1057243 res!706055) b!1057246))

(assert (= (and b!1057246 (not res!706054)) b!1057240))

(assert (= (and b!1057243 (not res!706051)) b!1057245))

(declare-fun m!977083 () Bool)

(assert (=> b!1057242 m!977083))

(declare-fun m!977085 () Bool)

(assert (=> b!1057245 m!977085))

(declare-fun m!977087 () Bool)

(assert (=> b!1057245 m!977087))

(declare-fun m!977089 () Bool)

(assert (=> b!1057245 m!977089))

(declare-fun m!977091 () Bool)

(assert (=> b!1057245 m!977091))

(declare-fun m!977093 () Bool)

(assert (=> b!1057239 m!977093))

(declare-fun m!977095 () Bool)

(assert (=> b!1057239 m!977095))

(declare-fun m!977097 () Bool)

(assert (=> b!1057244 m!977097))

(declare-fun m!977099 () Bool)

(assert (=> b!1057240 m!977099))

(declare-fun m!977101 () Bool)

(assert (=> b!1057247 m!977101))

(assert (=> b!1057243 m!977095))

(declare-fun m!977103 () Bool)

(assert (=> b!1057243 m!977103))

(declare-fun m!977105 () Bool)

(assert (=> b!1057241 m!977105))

(declare-fun m!977107 () Bool)

(assert (=> start!93286 m!977107))

(push 1)

