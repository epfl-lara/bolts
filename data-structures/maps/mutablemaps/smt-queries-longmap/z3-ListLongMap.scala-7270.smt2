; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92876 () Bool)

(assert start!92876)

(declare-fun b!1054257 () Bool)

(declare-fun e!598964 () Bool)

(declare-fun e!598967 () Bool)

(assert (=> b!1054257 (= e!598964 e!598967)))

(declare-fun res!703306 () Bool)

(assert (=> b!1054257 (=> (not res!703306) (not e!598967))))

(declare-datatypes ((array!66484 0))(
  ( (array!66485 (arr!31970 (Array (_ BitVec 32) (_ BitVec 64))) (size!32507 (_ BitVec 32))) )
))
(declare-fun lt!465345 () array!66484)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054257 (= res!703306 (arrayContainsKey!0 lt!465345 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66484)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054257 (= lt!465345 (array!66485 (store (arr!31970 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32507 a!3488)))))

(declare-fun b!1054258 () Bool)

(declare-fun e!598961 () Bool)

(declare-fun e!598962 () Bool)

(assert (=> b!1054258 (= e!598961 (not e!598962))))

(declare-fun res!703312 () Bool)

(assert (=> b!1054258 (=> res!703312 e!598962)))

(declare-fun lt!465346 () (_ BitVec 32))

(assert (=> b!1054258 (= res!703312 (bvsle lt!465346 i!1381))))

(declare-fun e!598966 () Bool)

(assert (=> b!1054258 e!598966))

(declare-fun res!703314 () Bool)

(assert (=> b!1054258 (=> (not res!703314) (not e!598966))))

(assert (=> b!1054258 (= res!703314 (= (select (store (arr!31970 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465346) k0!2747))))

(declare-fun b!1054259 () Bool)

(declare-fun e!598965 () Bool)

(assert (=> b!1054259 (= e!598966 e!598965)))

(declare-fun res!703307 () Bool)

(assert (=> b!1054259 (=> res!703307 e!598965)))

(assert (=> b!1054259 (= res!703307 (bvsle lt!465346 i!1381))))

(declare-fun b!1054260 () Bool)

(declare-fun res!703310 () Bool)

(assert (=> b!1054260 (=> (not res!703310) (not e!598964))))

(assert (=> b!1054260 (= res!703310 (= (select (arr!31970 a!3488) i!1381) k0!2747))))

(declare-fun b!1054261 () Bool)

(declare-fun res!703311 () Bool)

(assert (=> b!1054261 (=> (not res!703311) (not e!598964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054261 (= res!703311 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054262 () Bool)

(assert (=> b!1054262 (= e!598965 (arrayContainsKey!0 a!3488 k0!2747 lt!465346))))

(declare-fun b!1054263 () Bool)

(assert (=> b!1054263 (= e!598962 true)))

(declare-datatypes ((List!22413 0))(
  ( (Nil!22410) (Cons!22409 (h!23618 (_ BitVec 64)) (t!31727 List!22413)) )
))
(declare-fun arrayNoDuplicates!0 (array!66484 (_ BitVec 32) List!22413) Bool)

(assert (=> b!1054263 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22410)))

(declare-datatypes ((Unit!34507 0))(
  ( (Unit!34508) )
))
(declare-fun lt!465344 () Unit!34507)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66484 (_ BitVec 32) (_ BitVec 32)) Unit!34507)

(assert (=> b!1054263 (= lt!465344 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!703309 () Bool)

(assert (=> start!92876 (=> (not res!703309) (not e!598964))))

(assert (=> start!92876 (= res!703309 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32507 a!3488)) (bvslt (size!32507 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92876 e!598964))

(assert (=> start!92876 true))

(declare-fun array_inv!24592 (array!66484) Bool)

(assert (=> start!92876 (array_inv!24592 a!3488)))

(declare-fun b!1054264 () Bool)

(declare-fun res!703313 () Bool)

(assert (=> b!1054264 (=> (not res!703313) (not e!598964))))

(assert (=> b!1054264 (= res!703313 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22410))))

(declare-fun b!1054265 () Bool)

(assert (=> b!1054265 (= e!598967 e!598961)))

(declare-fun res!703308 () Bool)

(assert (=> b!1054265 (=> (not res!703308) (not e!598961))))

(assert (=> b!1054265 (= res!703308 (not (= lt!465346 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66484 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054265 (= lt!465346 (arrayScanForKey!0 lt!465345 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92876 res!703309) b!1054264))

(assert (= (and b!1054264 res!703313) b!1054261))

(assert (= (and b!1054261 res!703311) b!1054260))

(assert (= (and b!1054260 res!703310) b!1054257))

(assert (= (and b!1054257 res!703306) b!1054265))

(assert (= (and b!1054265 res!703308) b!1054258))

(assert (= (and b!1054258 res!703314) b!1054259))

(assert (= (and b!1054259 (not res!703307)) b!1054262))

(assert (= (and b!1054258 (not res!703312)) b!1054263))

(declare-fun m!974491 () Bool)

(assert (=> start!92876 m!974491))

(declare-fun m!974493 () Bool)

(assert (=> b!1054264 m!974493))

(declare-fun m!974495 () Bool)

(assert (=> b!1054258 m!974495))

(declare-fun m!974497 () Bool)

(assert (=> b!1054258 m!974497))

(declare-fun m!974499 () Bool)

(assert (=> b!1054261 m!974499))

(declare-fun m!974501 () Bool)

(assert (=> b!1054262 m!974501))

(declare-fun m!974503 () Bool)

(assert (=> b!1054263 m!974503))

(declare-fun m!974505 () Bool)

(assert (=> b!1054263 m!974505))

(declare-fun m!974507 () Bool)

(assert (=> b!1054257 m!974507))

(assert (=> b!1054257 m!974495))

(declare-fun m!974509 () Bool)

(assert (=> b!1054265 m!974509))

(declare-fun m!974511 () Bool)

(assert (=> b!1054260 m!974511))

(check-sat (not b!1054264) (not b!1054265) (not b!1054261) (not b!1054262) (not start!92876) (not b!1054257) (not b!1054263))
(check-sat)
