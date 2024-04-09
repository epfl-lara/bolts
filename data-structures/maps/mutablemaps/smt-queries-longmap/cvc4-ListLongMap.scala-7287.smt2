; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93154 () Bool)

(assert start!93154)

(declare-datatypes ((array!66600 0))(
  ( (array!66601 (arr!32022 (Array (_ BitVec 32) (_ BitVec 64))) (size!32559 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66600)

(declare-fun b!1056187 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun e!600458 () Bool)

(declare-fun arrayContainsKey!0 (array!66600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056187 (= e!600458 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056188 () Bool)

(declare-fun e!600456 () Bool)

(assert (=> b!1056188 (= e!600456 (not true))))

(declare-fun e!600454 () Bool)

(assert (=> b!1056188 e!600454))

(declare-fun res!705081 () Bool)

(assert (=> b!1056188 (=> (not res!705081) (not e!600454))))

(declare-fun lt!466042 () (_ BitVec 32))

(assert (=> b!1056188 (= res!705081 (= (select (store (arr!32022 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466042) k!2747))))

(declare-fun b!1056189 () Bool)

(declare-fun e!600453 () Bool)

(declare-fun e!600457 () Bool)

(assert (=> b!1056189 (= e!600453 e!600457)))

(declare-fun res!705074 () Bool)

(assert (=> b!1056189 (=> (not res!705074) (not e!600457))))

(declare-fun lt!466041 () array!66600)

(assert (=> b!1056189 (= res!705074 (arrayContainsKey!0 lt!466041 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056189 (= lt!466041 (array!66601 (store (arr!32022 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32559 a!3488)))))

(declare-fun b!1056190 () Bool)

(assert (=> b!1056190 (= e!600454 e!600458)))

(declare-fun res!705079 () Bool)

(assert (=> b!1056190 (=> res!705079 e!600458)))

(assert (=> b!1056190 (= res!705079 (or (bvsgt lt!466042 i!1381) (bvsle i!1381 lt!466042)))))

(declare-fun b!1056191 () Bool)

(declare-fun res!705076 () Bool)

(assert (=> b!1056191 (=> (not res!705076) (not e!600453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056191 (= res!705076 (validKeyInArray!0 k!2747))))

(declare-fun b!1056192 () Bool)

(assert (=> b!1056192 (= e!600457 e!600456)))

(declare-fun res!705078 () Bool)

(assert (=> b!1056192 (=> (not res!705078) (not e!600456))))

(assert (=> b!1056192 (= res!705078 (not (= lt!466042 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66600 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056192 (= lt!466042 (arrayScanForKey!0 lt!466041 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056193 () Bool)

(declare-fun res!705080 () Bool)

(assert (=> b!1056193 (=> (not res!705080) (not e!600453))))

(declare-datatypes ((List!22465 0))(
  ( (Nil!22462) (Cons!22461 (h!23670 (_ BitVec 64)) (t!31779 List!22465)) )
))
(declare-fun arrayNoDuplicates!0 (array!66600 (_ BitVec 32) List!22465) Bool)

(assert (=> b!1056193 (= res!705080 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22462))))

(declare-fun res!705077 () Bool)

(assert (=> start!93154 (=> (not res!705077) (not e!600453))))

(assert (=> start!93154 (= res!705077 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32559 a!3488)) (bvslt (size!32559 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93154 e!600453))

(assert (=> start!93154 true))

(declare-fun array_inv!24644 (array!66600) Bool)

(assert (=> start!93154 (array_inv!24644 a!3488)))

(declare-fun b!1056194 () Bool)

(declare-fun res!705075 () Bool)

(assert (=> b!1056194 (=> (not res!705075) (not e!600453))))

(assert (=> b!1056194 (= res!705075 (= (select (arr!32022 a!3488) i!1381) k!2747))))

(assert (= (and start!93154 res!705077) b!1056193))

(assert (= (and b!1056193 res!705080) b!1056191))

(assert (= (and b!1056191 res!705076) b!1056194))

(assert (= (and b!1056194 res!705075) b!1056189))

(assert (= (and b!1056189 res!705074) b!1056192))

(assert (= (and b!1056192 res!705078) b!1056188))

(assert (= (and b!1056188 res!705081) b!1056190))

(assert (= (and b!1056190 (not res!705079)) b!1056187))

(declare-fun m!976239 () Bool)

(assert (=> b!1056189 m!976239))

(declare-fun m!976241 () Bool)

(assert (=> b!1056189 m!976241))

(declare-fun m!976243 () Bool)

(assert (=> b!1056193 m!976243))

(declare-fun m!976245 () Bool)

(assert (=> start!93154 m!976245))

(declare-fun m!976247 () Bool)

(assert (=> b!1056187 m!976247))

(declare-fun m!976249 () Bool)

(assert (=> b!1056194 m!976249))

(declare-fun m!976251 () Bool)

(assert (=> b!1056191 m!976251))

(assert (=> b!1056188 m!976241))

(declare-fun m!976253 () Bool)

(assert (=> b!1056188 m!976253))

(declare-fun m!976255 () Bool)

(assert (=> b!1056192 m!976255))

(push 1)

