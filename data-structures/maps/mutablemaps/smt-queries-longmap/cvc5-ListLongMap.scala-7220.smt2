; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92418 () Bool)

(assert start!92418)

(declare-fun e!596056 () Bool)

(declare-fun lt!463891 () (_ BitVec 32))

(declare-datatypes ((array!66167 0))(
  ( (array!66168 (arr!31819 (Array (_ BitVec 32) (_ BitVec 64))) (size!32356 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66167)

(declare-fun b!1050315 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050315 (= e!596056 (arrayContainsKey!0 a!3488 k!2747 lt!463891))))

(declare-fun b!1050316 () Bool)

(declare-fun e!596058 () Bool)

(declare-fun e!596055 () Bool)

(assert (=> b!1050316 (= e!596058 e!596055)))

(declare-fun res!699554 () Bool)

(assert (=> b!1050316 (=> (not res!699554) (not e!596055))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050316 (= res!699554 (not (= lt!463891 i!1381)))))

(declare-fun lt!463894 () array!66167)

(declare-fun arrayScanForKey!0 (array!66167 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050316 (= lt!463891 (arrayScanForKey!0 lt!463894 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050317 () Bool)

(declare-fun res!699550 () Bool)

(declare-fun e!596057 () Bool)

(assert (=> b!1050317 (=> (not res!699550) (not e!596057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050317 (= res!699550 (validKeyInArray!0 k!2747))))

(declare-fun res!699553 () Bool)

(assert (=> start!92418 (=> (not res!699553) (not e!596057))))

(assert (=> start!92418 (= res!699553 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32356 a!3488)) (bvslt (size!32356 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92418 e!596057))

(assert (=> start!92418 true))

(declare-fun array_inv!24441 (array!66167) Bool)

(assert (=> start!92418 (array_inv!24441 a!3488)))

(declare-fun b!1050318 () Bool)

(declare-fun e!596060 () Bool)

(assert (=> b!1050318 (= e!596055 (not e!596060))))

(declare-fun res!699556 () Bool)

(assert (=> b!1050318 (=> res!699556 e!596060)))

(assert (=> b!1050318 (= res!699556 (bvsle lt!463891 i!1381))))

(declare-fun e!596059 () Bool)

(assert (=> b!1050318 e!596059))

(declare-fun res!699558 () Bool)

(assert (=> b!1050318 (=> (not res!699558) (not e!596059))))

(assert (=> b!1050318 (= res!699558 (= (select (store (arr!31819 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463891) k!2747))))

(declare-fun b!1050319 () Bool)

(assert (=> b!1050319 (= e!596059 e!596056)))

(declare-fun res!699555 () Bool)

(assert (=> b!1050319 (=> res!699555 e!596056)))

(assert (=> b!1050319 (= res!699555 (bvsle lt!463891 i!1381))))

(declare-fun b!1050320 () Bool)

(assert (=> b!1050320 (= e!596060 true)))

(assert (=> b!1050320 false))

(declare-datatypes ((Unit!34367 0))(
  ( (Unit!34368) )
))
(declare-fun lt!463890 () Unit!34367)

(declare-datatypes ((List!22262 0))(
  ( (Nil!22259) (Cons!22258 (h!23467 (_ BitVec 64)) (t!31576 List!22262)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66167 (_ BitVec 64) (_ BitVec 32) List!22262) Unit!34367)

(assert (=> b!1050320 (= lt!463890 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22259))))

(assert (=> b!1050320 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463893 () Unit!34367)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66167 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34367)

(assert (=> b!1050320 (= lt!463893 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463891 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66167 (_ BitVec 32) List!22262) Bool)

(assert (=> b!1050320 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22259)))

(declare-fun lt!463892 () Unit!34367)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66167 (_ BitVec 32) (_ BitVec 32)) Unit!34367)

(assert (=> b!1050320 (= lt!463892 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050321 () Bool)

(declare-fun res!699551 () Bool)

(assert (=> b!1050321 (=> (not res!699551) (not e!596057))))

(assert (=> b!1050321 (= res!699551 (= (select (arr!31819 a!3488) i!1381) k!2747))))

(declare-fun b!1050322 () Bool)

(declare-fun res!699552 () Bool)

(assert (=> b!1050322 (=> (not res!699552) (not e!596057))))

(assert (=> b!1050322 (= res!699552 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22259))))

(declare-fun b!1050323 () Bool)

(assert (=> b!1050323 (= e!596057 e!596058)))

(declare-fun res!699557 () Bool)

(assert (=> b!1050323 (=> (not res!699557) (not e!596058))))

(assert (=> b!1050323 (= res!699557 (arrayContainsKey!0 lt!463894 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050323 (= lt!463894 (array!66168 (store (arr!31819 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32356 a!3488)))))

(assert (= (and start!92418 res!699553) b!1050322))

(assert (= (and b!1050322 res!699552) b!1050317))

(assert (= (and b!1050317 res!699550) b!1050321))

(assert (= (and b!1050321 res!699551) b!1050323))

(assert (= (and b!1050323 res!699557) b!1050316))

(assert (= (and b!1050316 res!699554) b!1050318))

(assert (= (and b!1050318 res!699558) b!1050319))

(assert (= (and b!1050319 (not res!699555)) b!1050315))

(assert (= (and b!1050318 (not res!699556)) b!1050320))

(declare-fun m!971133 () Bool)

(assert (=> start!92418 m!971133))

(declare-fun m!971135 () Bool)

(assert (=> b!1050322 m!971135))

(declare-fun m!971137 () Bool)

(assert (=> b!1050317 m!971137))

(declare-fun m!971139 () Bool)

(assert (=> b!1050315 m!971139))

(declare-fun m!971141 () Bool)

(assert (=> b!1050318 m!971141))

(declare-fun m!971143 () Bool)

(assert (=> b!1050318 m!971143))

(declare-fun m!971145 () Bool)

(assert (=> b!1050321 m!971145))

(declare-fun m!971147 () Bool)

(assert (=> b!1050316 m!971147))

(declare-fun m!971149 () Bool)

(assert (=> b!1050323 m!971149))

(assert (=> b!1050323 m!971141))

(declare-fun m!971151 () Bool)

(assert (=> b!1050320 m!971151))

(declare-fun m!971153 () Bool)

(assert (=> b!1050320 m!971153))

(declare-fun m!971155 () Bool)

(assert (=> b!1050320 m!971155))

(declare-fun m!971157 () Bool)

(assert (=> b!1050320 m!971157))

(declare-fun m!971159 () Bool)

(assert (=> b!1050320 m!971159))

(push 1)

