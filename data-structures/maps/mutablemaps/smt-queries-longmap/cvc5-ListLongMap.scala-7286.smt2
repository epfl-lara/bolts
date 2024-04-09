; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93144 () Bool)

(assert start!93144)

(declare-fun b!1056067 () Bool)

(declare-fun e!600365 () Bool)

(declare-fun e!600367 () Bool)

(assert (=> b!1056067 (= e!600365 e!600367)))

(declare-fun res!704959 () Bool)

(assert (=> b!1056067 (=> (not res!704959) (not e!600367))))

(declare-fun lt!466011 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056067 (= res!704959 (not (= lt!466011 i!1381)))))

(declare-datatypes ((array!66590 0))(
  ( (array!66591 (arr!32017 (Array (_ BitVec 32) (_ BitVec 64))) (size!32554 (_ BitVec 32))) )
))
(declare-fun lt!466012 () array!66590)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66590 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056067 (= lt!466011 (arrayScanForKey!0 lt!466012 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056068 () Bool)

(declare-fun e!600368 () Bool)

(assert (=> b!1056068 (= e!600368 e!600365)))

(declare-fun res!704958 () Bool)

(assert (=> b!1056068 (=> (not res!704958) (not e!600365))))

(declare-fun arrayContainsKey!0 (array!66590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056068 (= res!704958 (arrayContainsKey!0 lt!466012 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66590)

(assert (=> b!1056068 (= lt!466012 (array!66591 (store (arr!32017 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32554 a!3488)))))

(declare-fun b!1056069 () Bool)

(declare-fun e!600366 () Bool)

(declare-fun e!600364 () Bool)

(assert (=> b!1056069 (= e!600366 e!600364)))

(declare-fun res!704960 () Bool)

(assert (=> b!1056069 (=> res!704960 e!600364)))

(assert (=> b!1056069 (= res!704960 (or (bvsgt lt!466011 i!1381) (bvsle i!1381 lt!466011)))))

(declare-fun b!1056070 () Bool)

(declare-fun res!704961 () Bool)

(assert (=> b!1056070 (=> (not res!704961) (not e!600368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056070 (= res!704961 (validKeyInArray!0 k!2747))))

(declare-fun res!704954 () Bool)

(assert (=> start!93144 (=> (not res!704954) (not e!600368))))

(assert (=> start!93144 (= res!704954 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32554 a!3488)) (bvslt (size!32554 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93144 e!600368))

(assert (=> start!93144 true))

(declare-fun array_inv!24639 (array!66590) Bool)

(assert (=> start!93144 (array_inv!24639 a!3488)))

(declare-fun b!1056071 () Bool)

(declare-fun res!704956 () Bool)

(assert (=> b!1056071 (=> (not res!704956) (not e!600368))))

(declare-datatypes ((List!22460 0))(
  ( (Nil!22457) (Cons!22456 (h!23665 (_ BitVec 64)) (t!31774 List!22460)) )
))
(declare-fun arrayNoDuplicates!0 (array!66590 (_ BitVec 32) List!22460) Bool)

(assert (=> b!1056071 (= res!704956 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22457))))

(declare-fun b!1056072 () Bool)

(assert (=> b!1056072 (= e!600364 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056073 () Bool)

(assert (=> b!1056073 (= e!600367 (not true))))

(assert (=> b!1056073 e!600366))

(declare-fun res!704957 () Bool)

(assert (=> b!1056073 (=> (not res!704957) (not e!600366))))

(assert (=> b!1056073 (= res!704957 (= (select (store (arr!32017 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466011) k!2747))))

(declare-fun b!1056074 () Bool)

(declare-fun res!704955 () Bool)

(assert (=> b!1056074 (=> (not res!704955) (not e!600368))))

(assert (=> b!1056074 (= res!704955 (= (select (arr!32017 a!3488) i!1381) k!2747))))

(assert (= (and start!93144 res!704954) b!1056071))

(assert (= (and b!1056071 res!704956) b!1056070))

(assert (= (and b!1056070 res!704961) b!1056074))

(assert (= (and b!1056074 res!704955) b!1056068))

(assert (= (and b!1056068 res!704958) b!1056067))

(assert (= (and b!1056067 res!704959) b!1056073))

(assert (= (and b!1056073 res!704957) b!1056069))

(assert (= (and b!1056069 (not res!704960)) b!1056072))

(declare-fun m!976149 () Bool)

(assert (=> start!93144 m!976149))

(declare-fun m!976151 () Bool)

(assert (=> b!1056073 m!976151))

(declare-fun m!976153 () Bool)

(assert (=> b!1056073 m!976153))

(declare-fun m!976155 () Bool)

(assert (=> b!1056067 m!976155))

(declare-fun m!976157 () Bool)

(assert (=> b!1056068 m!976157))

(assert (=> b!1056068 m!976151))

(declare-fun m!976159 () Bool)

(assert (=> b!1056072 m!976159))

(declare-fun m!976161 () Bool)

(assert (=> b!1056070 m!976161))

(declare-fun m!976163 () Bool)

(assert (=> b!1056074 m!976163))

(declare-fun m!976165 () Bool)

(assert (=> b!1056071 m!976165))

(push 1)

