; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92422 () Bool)

(assert start!92422)

(declare-fun b!1050369 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-datatypes ((array!66171 0))(
  ( (array!66172 (arr!31821 (Array (_ BitVec 32) (_ BitVec 64))) (size!32358 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66171)

(declare-fun e!596102 () Bool)

(declare-fun lt!463922 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050369 (= e!596102 (arrayContainsKey!0 a!3488 k!2747 lt!463922))))

(declare-fun res!699607 () Bool)

(declare-fun e!596096 () Bool)

(assert (=> start!92422 (=> (not res!699607) (not e!596096))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92422 (= res!699607 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32358 a!3488)) (bvslt (size!32358 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92422 e!596096))

(assert (=> start!92422 true))

(declare-fun array_inv!24443 (array!66171) Bool)

(assert (=> start!92422 (array_inv!24443 a!3488)))

(declare-fun b!1050370 () Bool)

(declare-fun e!596098 () Bool)

(declare-fun e!596100 () Bool)

(assert (=> b!1050370 (= e!596098 (not e!596100))))

(declare-fun res!699608 () Bool)

(assert (=> b!1050370 (=> res!699608 e!596100)))

(assert (=> b!1050370 (= res!699608 (bvsle lt!463922 i!1381))))

(declare-fun e!596101 () Bool)

(assert (=> b!1050370 e!596101))

(declare-fun res!699611 () Bool)

(assert (=> b!1050370 (=> (not res!699611) (not e!596101))))

(assert (=> b!1050370 (= res!699611 (= (select (store (arr!31821 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463922) k!2747))))

(declare-fun b!1050371 () Bool)

(declare-fun res!699604 () Bool)

(assert (=> b!1050371 (=> (not res!699604) (not e!596096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050371 (= res!699604 (validKeyInArray!0 k!2747))))

(declare-fun b!1050372 () Bool)

(assert (=> b!1050372 (= e!596101 e!596102)))

(declare-fun res!699606 () Bool)

(assert (=> b!1050372 (=> res!699606 e!596102)))

(assert (=> b!1050372 (= res!699606 (bvsle lt!463922 i!1381))))

(declare-fun b!1050373 () Bool)

(assert (=> b!1050373 (= e!596100 true)))

(assert (=> b!1050373 false))

(declare-datatypes ((Unit!34371 0))(
  ( (Unit!34372) )
))
(declare-fun lt!463921 () Unit!34371)

(declare-datatypes ((List!22264 0))(
  ( (Nil!22261) (Cons!22260 (h!23469 (_ BitVec 64)) (t!31578 List!22264)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66171 (_ BitVec 64) (_ BitVec 32) List!22264) Unit!34371)

(assert (=> b!1050373 (= lt!463921 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22261))))

(assert (=> b!1050373 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463924 () Unit!34371)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66171 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34371)

(assert (=> b!1050373 (= lt!463924 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463922 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66171 (_ BitVec 32) List!22264) Bool)

(assert (=> b!1050373 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22261)))

(declare-fun lt!463920 () Unit!34371)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66171 (_ BitVec 32) (_ BitVec 32)) Unit!34371)

(assert (=> b!1050373 (= lt!463920 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050374 () Bool)

(declare-fun res!699610 () Bool)

(assert (=> b!1050374 (=> (not res!699610) (not e!596096))))

(assert (=> b!1050374 (= res!699610 (= (select (arr!31821 a!3488) i!1381) k!2747))))

(declare-fun b!1050375 () Bool)

(declare-fun e!596099 () Bool)

(assert (=> b!1050375 (= e!596096 e!596099)))

(declare-fun res!699605 () Bool)

(assert (=> b!1050375 (=> (not res!699605) (not e!596099))))

(declare-fun lt!463923 () array!66171)

(assert (=> b!1050375 (= res!699605 (arrayContainsKey!0 lt!463923 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050375 (= lt!463923 (array!66172 (store (arr!31821 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32358 a!3488)))))

(declare-fun b!1050376 () Bool)

(assert (=> b!1050376 (= e!596099 e!596098)))

(declare-fun res!699609 () Bool)

(assert (=> b!1050376 (=> (not res!699609) (not e!596098))))

(assert (=> b!1050376 (= res!699609 (not (= lt!463922 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66171 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050376 (= lt!463922 (arrayScanForKey!0 lt!463923 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050377 () Bool)

(declare-fun res!699612 () Bool)

(assert (=> b!1050377 (=> (not res!699612) (not e!596096))))

(assert (=> b!1050377 (= res!699612 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22261))))

(assert (= (and start!92422 res!699607) b!1050377))

(assert (= (and b!1050377 res!699612) b!1050371))

(assert (= (and b!1050371 res!699604) b!1050374))

(assert (= (and b!1050374 res!699610) b!1050375))

(assert (= (and b!1050375 res!699605) b!1050376))

(assert (= (and b!1050376 res!699609) b!1050370))

(assert (= (and b!1050370 res!699611) b!1050372))

(assert (= (and b!1050372 (not res!699606)) b!1050369))

(assert (= (and b!1050370 (not res!699608)) b!1050373))

(declare-fun m!971189 () Bool)

(assert (=> b!1050376 m!971189))

(declare-fun m!971191 () Bool)

(assert (=> b!1050373 m!971191))

(declare-fun m!971193 () Bool)

(assert (=> b!1050373 m!971193))

(declare-fun m!971195 () Bool)

(assert (=> b!1050373 m!971195))

(declare-fun m!971197 () Bool)

(assert (=> b!1050373 m!971197))

(declare-fun m!971199 () Bool)

(assert (=> b!1050373 m!971199))

(declare-fun m!971201 () Bool)

(assert (=> b!1050375 m!971201))

(declare-fun m!971203 () Bool)

(assert (=> b!1050375 m!971203))

(declare-fun m!971205 () Bool)

(assert (=> start!92422 m!971205))

(declare-fun m!971207 () Bool)

(assert (=> b!1050369 m!971207))

(declare-fun m!971209 () Bool)

(assert (=> b!1050371 m!971209))

(assert (=> b!1050370 m!971203))

(declare-fun m!971211 () Bool)

(assert (=> b!1050370 m!971211))

(declare-fun m!971213 () Bool)

(assert (=> b!1050377 m!971213))

(declare-fun m!971215 () Bool)

(assert (=> b!1050374 m!971215))

(push 1)

