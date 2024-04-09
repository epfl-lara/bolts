; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92420 () Bool)

(assert start!92420)

(declare-fun b!1050342 () Bool)

(declare-fun res!699582 () Bool)

(declare-fun e!596077 () Bool)

(assert (=> b!1050342 (=> (not res!699582) (not e!596077))))

(declare-datatypes ((array!66169 0))(
  ( (array!66170 (arr!31820 (Array (_ BitVec 32) (_ BitVec 64))) (size!32357 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66169)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050342 (= res!699582 (= (select (arr!31820 a!3488) i!1381) k0!2747))))

(declare-fun b!1050343 () Bool)

(declare-fun e!596078 () Bool)

(declare-fun e!596081 () Bool)

(assert (=> b!1050343 (= e!596078 e!596081)))

(declare-fun res!699583 () Bool)

(assert (=> b!1050343 (=> (not res!699583) (not e!596081))))

(declare-fun lt!463909 () (_ BitVec 32))

(assert (=> b!1050343 (= res!699583 (not (= lt!463909 i!1381)))))

(declare-fun lt!463906 () array!66169)

(declare-fun arrayScanForKey!0 (array!66169 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050343 (= lt!463909 (arrayScanForKey!0 lt!463906 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050344 () Bool)

(declare-fun e!596079 () Bool)

(declare-fun e!596075 () Bool)

(assert (=> b!1050344 (= e!596079 e!596075)))

(declare-fun res!699577 () Bool)

(assert (=> b!1050344 (=> res!699577 e!596075)))

(assert (=> b!1050344 (= res!699577 (bvsle lt!463909 i!1381))))

(declare-fun b!1050345 () Bool)

(declare-fun res!699578 () Bool)

(assert (=> b!1050345 (=> (not res!699578) (not e!596077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050345 (= res!699578 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050346 () Bool)

(declare-fun e!596076 () Bool)

(assert (=> b!1050346 (= e!596081 (not e!596076))))

(declare-fun res!699584 () Bool)

(assert (=> b!1050346 (=> res!699584 e!596076)))

(assert (=> b!1050346 (= res!699584 (bvsle lt!463909 i!1381))))

(assert (=> b!1050346 e!596079))

(declare-fun res!699579 () Bool)

(assert (=> b!1050346 (=> (not res!699579) (not e!596079))))

(assert (=> b!1050346 (= res!699579 (= (select (store (arr!31820 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463909) k0!2747))))

(declare-fun b!1050347 () Bool)

(declare-fun arrayContainsKey!0 (array!66169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050347 (= e!596075 (arrayContainsKey!0 a!3488 k0!2747 lt!463909))))

(declare-fun res!699585 () Bool)

(assert (=> start!92420 (=> (not res!699585) (not e!596077))))

(assert (=> start!92420 (= res!699585 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32357 a!3488)) (bvslt (size!32357 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92420 e!596077))

(assert (=> start!92420 true))

(declare-fun array_inv!24442 (array!66169) Bool)

(assert (=> start!92420 (array_inv!24442 a!3488)))

(declare-fun b!1050348 () Bool)

(declare-fun res!699581 () Bool)

(assert (=> b!1050348 (=> (not res!699581) (not e!596077))))

(declare-datatypes ((List!22263 0))(
  ( (Nil!22260) (Cons!22259 (h!23468 (_ BitVec 64)) (t!31577 List!22263)) )
))
(declare-fun arrayNoDuplicates!0 (array!66169 (_ BitVec 32) List!22263) Bool)

(assert (=> b!1050348 (= res!699581 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22260))))

(declare-fun b!1050349 () Bool)

(assert (=> b!1050349 (= e!596077 e!596078)))

(declare-fun res!699580 () Bool)

(assert (=> b!1050349 (=> (not res!699580) (not e!596078))))

(assert (=> b!1050349 (= res!699580 (arrayContainsKey!0 lt!463906 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050349 (= lt!463906 (array!66170 (store (arr!31820 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32357 a!3488)))))

(declare-fun b!1050350 () Bool)

(assert (=> b!1050350 (= e!596076 true)))

(assert (=> b!1050350 false))

(declare-datatypes ((Unit!34369 0))(
  ( (Unit!34370) )
))
(declare-fun lt!463907 () Unit!34369)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66169 (_ BitVec 64) (_ BitVec 32) List!22263) Unit!34369)

(assert (=> b!1050350 (= lt!463907 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 i!1381 Nil!22260))))

(assert (=> b!1050350 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463905 () Unit!34369)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66169 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34369)

(assert (=> b!1050350 (= lt!463905 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463909 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1050350 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22260)))

(declare-fun lt!463908 () Unit!34369)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66169 (_ BitVec 32) (_ BitVec 32)) Unit!34369)

(assert (=> b!1050350 (= lt!463908 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92420 res!699585) b!1050348))

(assert (= (and b!1050348 res!699581) b!1050345))

(assert (= (and b!1050345 res!699578) b!1050342))

(assert (= (and b!1050342 res!699582) b!1050349))

(assert (= (and b!1050349 res!699580) b!1050343))

(assert (= (and b!1050343 res!699583) b!1050346))

(assert (= (and b!1050346 res!699579) b!1050344))

(assert (= (and b!1050344 (not res!699577)) b!1050347))

(assert (= (and b!1050346 (not res!699584)) b!1050350))

(declare-fun m!971161 () Bool)

(assert (=> b!1050347 m!971161))

(declare-fun m!971163 () Bool)

(assert (=> b!1050345 m!971163))

(declare-fun m!971165 () Bool)

(assert (=> b!1050349 m!971165))

(declare-fun m!971167 () Bool)

(assert (=> b!1050349 m!971167))

(assert (=> b!1050346 m!971167))

(declare-fun m!971169 () Bool)

(assert (=> b!1050346 m!971169))

(declare-fun m!971171 () Bool)

(assert (=> b!1050342 m!971171))

(declare-fun m!971173 () Bool)

(assert (=> start!92420 m!971173))

(declare-fun m!971175 () Bool)

(assert (=> b!1050350 m!971175))

(declare-fun m!971177 () Bool)

(assert (=> b!1050350 m!971177))

(declare-fun m!971179 () Bool)

(assert (=> b!1050350 m!971179))

(declare-fun m!971181 () Bool)

(assert (=> b!1050350 m!971181))

(declare-fun m!971183 () Bool)

(assert (=> b!1050350 m!971183))

(declare-fun m!971185 () Bool)

(assert (=> b!1050348 m!971185))

(declare-fun m!971187 () Bool)

(assert (=> b!1050343 m!971187))

(check-sat (not b!1050345) (not b!1050349) (not b!1050348) (not b!1050347) (not b!1050350) (not start!92420) (not b!1050343))
(check-sat)
