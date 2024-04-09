; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93292 () Bool)

(assert start!93292)

(declare-fun b!1057320 () Bool)

(declare-fun e!601336 () Bool)

(declare-fun e!601332 () Bool)

(assert (=> b!1057320 (= e!601336 e!601332)))

(declare-fun res!706137 () Bool)

(assert (=> b!1057320 (=> (not res!706137) (not e!601332))))

(declare-datatypes ((array!66678 0))(
  ( (array!66679 (arr!32058 (Array (_ BitVec 32) (_ BitVec 64))) (size!32595 (_ BitVec 32))) )
))
(declare-fun lt!466419 () array!66678)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057320 (= res!706137 (arrayContainsKey!0 lt!466419 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66678)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057320 (= lt!466419 (array!66679 (store (arr!32058 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32595 a!3488)))))

(declare-fun res!706130 () Bool)

(assert (=> start!93292 (=> (not res!706130) (not e!601336))))

(assert (=> start!93292 (= res!706130 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32595 a!3488)) (bvslt (size!32595 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93292 e!601336))

(assert (=> start!93292 true))

(declare-fun array_inv!24680 (array!66678) Bool)

(assert (=> start!93292 (array_inv!24680 a!3488)))

(declare-fun b!1057321 () Bool)

(declare-fun res!706132 () Bool)

(assert (=> b!1057321 (=> (not res!706132) (not e!601336))))

(assert (=> b!1057321 (= res!706132 (= (select (arr!32058 a!3488) i!1381) k!2747))))

(declare-fun b!1057322 () Bool)

(declare-fun e!601331 () Bool)

(declare-fun lt!466420 () (_ BitVec 32))

(assert (=> b!1057322 (= e!601331 (bvsge lt!466420 #b00000000000000000000000000000000))))

(declare-fun lt!466417 () (_ BitVec 32))

(assert (=> b!1057322 (arrayContainsKey!0 a!3488 k!2747 lt!466417)))

(declare-datatypes ((Unit!34647 0))(
  ( (Unit!34648) )
))
(declare-fun lt!466416 () Unit!34647)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66678 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34647)

(assert (=> b!1057322 (= lt!466416 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466417))))

(assert (=> b!1057322 (= lt!466417 (bvadd #b00000000000000000000000000000001 lt!466420))))

(declare-datatypes ((List!22501 0))(
  ( (Nil!22498) (Cons!22497 (h!23706 (_ BitVec 64)) (t!31815 List!22501)) )
))
(declare-fun arrayNoDuplicates!0 (array!66678 (_ BitVec 32) List!22501) Bool)

(assert (=> b!1057322 (arrayNoDuplicates!0 a!3488 lt!466420 Nil!22498)))

(declare-fun lt!466418 () Unit!34647)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66678 (_ BitVec 32) (_ BitVec 32)) Unit!34647)

(assert (=> b!1057322 (= lt!466418 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466420))))

(declare-fun b!1057323 () Bool)

(declare-fun res!706135 () Bool)

(assert (=> b!1057323 (=> (not res!706135) (not e!601336))))

(assert (=> b!1057323 (= res!706135 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22498))))

(declare-fun e!601333 () Bool)

(declare-fun b!1057324 () Bool)

(assert (=> b!1057324 (= e!601333 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057325 () Bool)

(declare-fun e!601337 () Bool)

(assert (=> b!1057325 (= e!601337 e!601333)))

(declare-fun res!706131 () Bool)

(assert (=> b!1057325 (=> res!706131 e!601333)))

(assert (=> b!1057325 (= res!706131 (or (bvsgt lt!466420 i!1381) (bvsle i!1381 lt!466420)))))

(declare-fun b!1057326 () Bool)

(declare-fun e!601335 () Bool)

(assert (=> b!1057326 (= e!601332 e!601335)))

(declare-fun res!706134 () Bool)

(assert (=> b!1057326 (=> (not res!706134) (not e!601335))))

(assert (=> b!1057326 (= res!706134 (not (= lt!466420 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66678 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057326 (= lt!466420 (arrayScanForKey!0 lt!466419 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057327 () Bool)

(declare-fun res!706129 () Bool)

(assert (=> b!1057327 (=> (not res!706129) (not e!601336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057327 (= res!706129 (validKeyInArray!0 k!2747))))

(declare-fun b!1057328 () Bool)

(assert (=> b!1057328 (= e!601335 (not e!601331))))

(declare-fun res!706136 () Bool)

(assert (=> b!1057328 (=> res!706136 e!601331)))

(assert (=> b!1057328 (= res!706136 (or (bvsgt lt!466420 i!1381) (bvsle i!1381 lt!466420)))))

(assert (=> b!1057328 e!601337))

(declare-fun res!706133 () Bool)

(assert (=> b!1057328 (=> (not res!706133) (not e!601337))))

(assert (=> b!1057328 (= res!706133 (= (select (store (arr!32058 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466420) k!2747))))

(assert (= (and start!93292 res!706130) b!1057323))

(assert (= (and b!1057323 res!706135) b!1057327))

(assert (= (and b!1057327 res!706129) b!1057321))

(assert (= (and b!1057321 res!706132) b!1057320))

(assert (= (and b!1057320 res!706137) b!1057326))

(assert (= (and b!1057326 res!706134) b!1057328))

(assert (= (and b!1057328 res!706133) b!1057325))

(assert (= (and b!1057325 (not res!706131)) b!1057324))

(assert (= (and b!1057328 (not res!706136)) b!1057322))

(declare-fun m!977161 () Bool)

(assert (=> start!93292 m!977161))

(declare-fun m!977163 () Bool)

(assert (=> b!1057321 m!977163))

(declare-fun m!977165 () Bool)

(assert (=> b!1057327 m!977165))

(declare-fun m!977167 () Bool)

(assert (=> b!1057323 m!977167))

(declare-fun m!977169 () Bool)

(assert (=> b!1057328 m!977169))

(declare-fun m!977171 () Bool)

(assert (=> b!1057328 m!977171))

(declare-fun m!977173 () Bool)

(assert (=> b!1057322 m!977173))

(declare-fun m!977175 () Bool)

(assert (=> b!1057322 m!977175))

(declare-fun m!977177 () Bool)

(assert (=> b!1057322 m!977177))

(declare-fun m!977179 () Bool)

(assert (=> b!1057322 m!977179))

(declare-fun m!977181 () Bool)

(assert (=> b!1057324 m!977181))

(declare-fun m!977183 () Bool)

(assert (=> b!1057320 m!977183))

(assert (=> b!1057320 m!977169))

(declare-fun m!977185 () Bool)

(assert (=> b!1057326 m!977185))

(push 1)

(assert (not b!1057326))

(assert (not b!1057324))

(assert (not b!1057327))

(assert (not b!1057320))

(assert (not b!1057322))

(assert (not start!93292))

(assert (not b!1057323))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

