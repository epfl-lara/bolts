; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93280 () Bool)

(assert start!93280)

(declare-fun b!1057158 () Bool)

(declare-fun e!601205 () Bool)

(declare-fun e!601206 () Bool)

(assert (=> b!1057158 (= e!601205 e!601206)))

(declare-fun res!705967 () Bool)

(assert (=> b!1057158 (=> (not res!705967) (not e!601206))))

(declare-fun lt!466329 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057158 (= res!705967 (not (= lt!466329 i!1381)))))

(declare-datatypes ((array!66666 0))(
  ( (array!66667 (arr!32052 (Array (_ BitVec 32) (_ BitVec 64))) (size!32589 (_ BitVec 32))) )
))
(declare-fun lt!466330 () array!66666)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66666 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057158 (= lt!466329 (arrayScanForKey!0 lt!466330 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057159 () Bool)

(declare-fun e!601207 () Bool)

(assert (=> b!1057159 (= e!601207 true)))

(declare-fun a!3488 () array!66666)

(declare-fun lt!466327 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057159 (arrayContainsKey!0 a!3488 k!2747 lt!466327)))

(declare-datatypes ((Unit!34635 0))(
  ( (Unit!34636) )
))
(declare-fun lt!466326 () Unit!34635)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34635)

(assert (=> b!1057159 (= lt!466326 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466327))))

(assert (=> b!1057159 (= lt!466327 (bvadd #b00000000000000000000000000000001 lt!466329))))

(declare-datatypes ((List!22495 0))(
  ( (Nil!22492) (Cons!22491 (h!23700 (_ BitVec 64)) (t!31809 List!22495)) )
))
(declare-fun arrayNoDuplicates!0 (array!66666 (_ BitVec 32) List!22495) Bool)

(assert (=> b!1057159 (arrayNoDuplicates!0 a!3488 lt!466329 Nil!22492)))

(declare-fun lt!466328 () Unit!34635)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66666 (_ BitVec 32) (_ BitVec 32)) Unit!34635)

(assert (=> b!1057159 (= lt!466328 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466329))))

(declare-fun b!1057160 () Bool)

(assert (=> b!1057160 (= e!601206 (not e!601207))))

(declare-fun res!705975 () Bool)

(assert (=> b!1057160 (=> res!705975 e!601207)))

(assert (=> b!1057160 (= res!705975 (or (bvsgt lt!466329 i!1381) (bvsle i!1381 lt!466329)))))

(declare-fun e!601210 () Bool)

(assert (=> b!1057160 e!601210))

(declare-fun res!705971 () Bool)

(assert (=> b!1057160 (=> (not res!705971) (not e!601210))))

(assert (=> b!1057160 (= res!705971 (= (select (store (arr!32052 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466329) k!2747))))

(declare-fun b!1057161 () Bool)

(declare-fun res!705969 () Bool)

(declare-fun e!601211 () Bool)

(assert (=> b!1057161 (=> (not res!705969) (not e!601211))))

(assert (=> b!1057161 (= res!705969 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22492))))

(declare-fun res!705974 () Bool)

(assert (=> start!93280 (=> (not res!705974) (not e!601211))))

(assert (=> start!93280 (= res!705974 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32589 a!3488)) (bvslt (size!32589 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93280 e!601211))

(assert (=> start!93280 true))

(declare-fun array_inv!24674 (array!66666) Bool)

(assert (=> start!93280 (array_inv!24674 a!3488)))

(declare-fun b!1057162 () Bool)

(declare-fun res!705973 () Bool)

(assert (=> b!1057162 (=> (not res!705973) (not e!601211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057162 (= res!705973 (validKeyInArray!0 k!2747))))

(declare-fun b!1057163 () Bool)

(declare-fun e!601208 () Bool)

(assert (=> b!1057163 (= e!601210 e!601208)))

(declare-fun res!705968 () Bool)

(assert (=> b!1057163 (=> res!705968 e!601208)))

(assert (=> b!1057163 (= res!705968 (or (bvsgt lt!466329 i!1381) (bvsle i!1381 lt!466329)))))

(declare-fun b!1057164 () Bool)

(declare-fun res!705970 () Bool)

(assert (=> b!1057164 (=> (not res!705970) (not e!601211))))

(assert (=> b!1057164 (= res!705970 (= (select (arr!32052 a!3488) i!1381) k!2747))))

(declare-fun b!1057165 () Bool)

(assert (=> b!1057165 (= e!601211 e!601205)))

(declare-fun res!705972 () Bool)

(assert (=> b!1057165 (=> (not res!705972) (not e!601205))))

(assert (=> b!1057165 (= res!705972 (arrayContainsKey!0 lt!466330 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057165 (= lt!466330 (array!66667 (store (arr!32052 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32589 a!3488)))))

(declare-fun b!1057166 () Bool)

(assert (=> b!1057166 (= e!601208 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!93280 res!705974) b!1057161))

(assert (= (and b!1057161 res!705969) b!1057162))

(assert (= (and b!1057162 res!705973) b!1057164))

(assert (= (and b!1057164 res!705970) b!1057165))

(assert (= (and b!1057165 res!705972) b!1057158))

(assert (= (and b!1057158 res!705967) b!1057160))

(assert (= (and b!1057160 res!705971) b!1057163))

(assert (= (and b!1057163 (not res!705968)) b!1057166))

(assert (= (and b!1057160 (not res!705975)) b!1057159))

(declare-fun m!977005 () Bool)

(assert (=> b!1057159 m!977005))

(declare-fun m!977007 () Bool)

(assert (=> b!1057159 m!977007))

(declare-fun m!977009 () Bool)

(assert (=> b!1057159 m!977009))

(declare-fun m!977011 () Bool)

(assert (=> b!1057159 m!977011))

(declare-fun m!977013 () Bool)

(assert (=> start!93280 m!977013))

(declare-fun m!977015 () Bool)

(assert (=> b!1057166 m!977015))

(declare-fun m!977017 () Bool)

(assert (=> b!1057160 m!977017))

(declare-fun m!977019 () Bool)

(assert (=> b!1057160 m!977019))

(declare-fun m!977021 () Bool)

(assert (=> b!1057162 m!977021))

(declare-fun m!977023 () Bool)

(assert (=> b!1057158 m!977023))

(declare-fun m!977025 () Bool)

(assert (=> b!1057161 m!977025))

(declare-fun m!977027 () Bool)

(assert (=> b!1057164 m!977027))

(declare-fun m!977029 () Bool)

(assert (=> b!1057165 m!977029))

(assert (=> b!1057165 m!977017))

(push 1)

(assert (not b!1057166))

(assert (not b!1057162))

(assert (not b!1057161))

(assert (not b!1057165))

(assert (not b!1057158))

(assert (not b!1057159))

(assert (not start!93280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

