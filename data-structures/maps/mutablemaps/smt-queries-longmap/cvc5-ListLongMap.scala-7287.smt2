; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93150 () Bool)

(assert start!93150)

(declare-fun b!1056139 () Bool)

(declare-fun res!705027 () Bool)

(declare-fun e!600420 () Bool)

(assert (=> b!1056139 (=> (not res!705027) (not e!600420))))

(declare-datatypes ((array!66596 0))(
  ( (array!66597 (arr!32020 (Array (_ BitVec 32) (_ BitVec 64))) (size!32557 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66596)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056139 (= res!705027 (= (select (arr!32020 a!3488) i!1381) k!2747))))

(declare-fun b!1056141 () Bool)

(declare-fun res!705028 () Bool)

(assert (=> b!1056141 (=> (not res!705028) (not e!600420))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056141 (= res!705028 (validKeyInArray!0 k!2747))))

(declare-fun b!1056142 () Bool)

(declare-fun e!600421 () Bool)

(declare-fun e!600417 () Bool)

(assert (=> b!1056142 (= e!600421 e!600417)))

(declare-fun res!705032 () Bool)

(assert (=> b!1056142 (=> (not res!705032) (not e!600417))))

(declare-fun lt!466029 () (_ BitVec 32))

(assert (=> b!1056142 (= res!705032 (not (= lt!466029 i!1381)))))

(declare-fun lt!466030 () array!66596)

(declare-fun arrayScanForKey!0 (array!66596 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056142 (= lt!466029 (arrayScanForKey!0 lt!466030 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056143 () Bool)

(declare-fun e!600422 () Bool)

(declare-fun arrayContainsKey!0 (array!66596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056143 (= e!600422 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056144 () Bool)

(assert (=> b!1056144 (= e!600420 e!600421)))

(declare-fun res!705030 () Bool)

(assert (=> b!1056144 (=> (not res!705030) (not e!600421))))

(assert (=> b!1056144 (= res!705030 (arrayContainsKey!0 lt!466030 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056144 (= lt!466030 (array!66597 (store (arr!32020 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32557 a!3488)))))

(declare-fun b!1056145 () Bool)

(assert (=> b!1056145 (= e!600417 (not true))))

(declare-fun e!600419 () Bool)

(assert (=> b!1056145 e!600419))

(declare-fun res!705033 () Bool)

(assert (=> b!1056145 (=> (not res!705033) (not e!600419))))

(assert (=> b!1056145 (= res!705033 (= (select (store (arr!32020 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466029) k!2747))))

(declare-fun b!1056146 () Bool)

(declare-fun res!705031 () Bool)

(assert (=> b!1056146 (=> (not res!705031) (not e!600420))))

(declare-datatypes ((List!22463 0))(
  ( (Nil!22460) (Cons!22459 (h!23668 (_ BitVec 64)) (t!31777 List!22463)) )
))
(declare-fun arrayNoDuplicates!0 (array!66596 (_ BitVec 32) List!22463) Bool)

(assert (=> b!1056146 (= res!705031 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22460))))

(declare-fun res!705029 () Bool)

(assert (=> start!93150 (=> (not res!705029) (not e!600420))))

(assert (=> start!93150 (= res!705029 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32557 a!3488)) (bvslt (size!32557 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93150 e!600420))

(assert (=> start!93150 true))

(declare-fun array_inv!24642 (array!66596) Bool)

(assert (=> start!93150 (array_inv!24642 a!3488)))

(declare-fun b!1056140 () Bool)

(assert (=> b!1056140 (= e!600419 e!600422)))

(declare-fun res!705026 () Bool)

(assert (=> b!1056140 (=> res!705026 e!600422)))

(assert (=> b!1056140 (= res!705026 (or (bvsgt lt!466029 i!1381) (bvsle i!1381 lt!466029)))))

(assert (= (and start!93150 res!705029) b!1056146))

(assert (= (and b!1056146 res!705031) b!1056141))

(assert (= (and b!1056141 res!705028) b!1056139))

(assert (= (and b!1056139 res!705027) b!1056144))

(assert (= (and b!1056144 res!705030) b!1056142))

(assert (= (and b!1056142 res!705032) b!1056145))

(assert (= (and b!1056145 res!705033) b!1056140))

(assert (= (and b!1056140 (not res!705026)) b!1056143))

(declare-fun m!976203 () Bool)

(assert (=> b!1056143 m!976203))

(declare-fun m!976205 () Bool)

(assert (=> b!1056141 m!976205))

(declare-fun m!976207 () Bool)

(assert (=> b!1056145 m!976207))

(declare-fun m!976209 () Bool)

(assert (=> b!1056145 m!976209))

(declare-fun m!976211 () Bool)

(assert (=> b!1056139 m!976211))

(declare-fun m!976213 () Bool)

(assert (=> b!1056142 m!976213))

(declare-fun m!976215 () Bool)

(assert (=> b!1056146 m!976215))

(declare-fun m!976217 () Bool)

(assert (=> b!1056144 m!976217))

(assert (=> b!1056144 m!976207))

(declare-fun m!976219 () Bool)

(assert (=> start!93150 m!976219))

(push 1)

