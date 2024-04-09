; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93200 () Bool)

(assert start!93200)

(declare-fun b!1056466 () Bool)

(declare-fun e!600669 () Bool)

(assert (=> b!1056466 (= e!600669 (not true))))

(declare-fun e!600666 () Bool)

(assert (=> b!1056466 e!600666))

(declare-fun res!705322 () Bool)

(assert (=> b!1056466 (=> (not res!705322) (not e!600666))))

(declare-datatypes ((array!66619 0))(
  ( (array!66620 (arr!32030 (Array (_ BitVec 32) (_ BitVec 64))) (size!32567 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66619)

(declare-fun lt!466098 () (_ BitVec 32))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056466 (= res!705322 (= (select (store (arr!32030 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466098) k0!2747))))

(declare-fun b!1056467 () Bool)

(declare-fun res!705324 () Bool)

(declare-fun e!600670 () Bool)

(assert (=> b!1056467 (=> (not res!705324) (not e!600670))))

(assert (=> b!1056467 (= res!705324 (= (select (arr!32030 a!3488) i!1381) k0!2747))))

(declare-fun b!1056468 () Bool)

(declare-fun e!600667 () Bool)

(assert (=> b!1056468 (= e!600666 e!600667)))

(declare-fun res!705319 () Bool)

(assert (=> b!1056468 (=> res!705319 e!600667)))

(assert (=> b!1056468 (= res!705319 (or (bvsgt lt!466098 i!1381) (bvsle i!1381 lt!466098)))))

(declare-fun b!1056469 () Bool)

(declare-fun res!705318 () Bool)

(assert (=> b!1056469 (=> (not res!705318) (not e!600670))))

(declare-datatypes ((List!22473 0))(
  ( (Nil!22470) (Cons!22469 (h!23678 (_ BitVec 64)) (t!31787 List!22473)) )
))
(declare-fun arrayNoDuplicates!0 (array!66619 (_ BitVec 32) List!22473) Bool)

(assert (=> b!1056469 (= res!705318 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22470))))

(declare-fun res!705321 () Bool)

(assert (=> start!93200 (=> (not res!705321) (not e!600670))))

(assert (=> start!93200 (= res!705321 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32567 a!3488)) (bvslt (size!32567 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93200 e!600670))

(assert (=> start!93200 true))

(declare-fun array_inv!24652 (array!66619) Bool)

(assert (=> start!93200 (array_inv!24652 a!3488)))

(declare-fun b!1056470 () Bool)

(declare-fun e!600671 () Bool)

(assert (=> b!1056470 (= e!600671 e!600669)))

(declare-fun res!705320 () Bool)

(assert (=> b!1056470 (=> (not res!705320) (not e!600669))))

(assert (=> b!1056470 (= res!705320 (not (= lt!466098 i!1381)))))

(declare-fun lt!466099 () array!66619)

(declare-fun arrayScanForKey!0 (array!66619 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056470 (= lt!466098 (arrayScanForKey!0 lt!466099 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056471 () Bool)

(declare-fun arrayContainsKey!0 (array!66619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056471 (= e!600667 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056472 () Bool)

(declare-fun res!705317 () Bool)

(assert (=> b!1056472 (=> (not res!705317) (not e!600670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056472 (= res!705317 (validKeyInArray!0 k0!2747))))

(declare-fun b!1056473 () Bool)

(assert (=> b!1056473 (= e!600670 e!600671)))

(declare-fun res!705323 () Bool)

(assert (=> b!1056473 (=> (not res!705323) (not e!600671))))

(assert (=> b!1056473 (= res!705323 (arrayContainsKey!0 lt!466099 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056473 (= lt!466099 (array!66620 (store (arr!32030 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32567 a!3488)))))

(assert (= (and start!93200 res!705321) b!1056469))

(assert (= (and b!1056469 res!705318) b!1056472))

(assert (= (and b!1056472 res!705317) b!1056467))

(assert (= (and b!1056467 res!705324) b!1056473))

(assert (= (and b!1056473 res!705323) b!1056470))

(assert (= (and b!1056470 res!705320) b!1056466))

(assert (= (and b!1056466 res!705322) b!1056468))

(assert (= (and b!1056468 (not res!705319)) b!1056471))

(declare-fun m!976437 () Bool)

(assert (=> start!93200 m!976437))

(declare-fun m!976439 () Bool)

(assert (=> b!1056469 m!976439))

(declare-fun m!976441 () Bool)

(assert (=> b!1056472 m!976441))

(declare-fun m!976443 () Bool)

(assert (=> b!1056467 m!976443))

(declare-fun m!976445 () Bool)

(assert (=> b!1056470 m!976445))

(declare-fun m!976447 () Bool)

(assert (=> b!1056471 m!976447))

(declare-fun m!976449 () Bool)

(assert (=> b!1056466 m!976449))

(declare-fun m!976451 () Bool)

(assert (=> b!1056466 m!976451))

(declare-fun m!976453 () Bool)

(assert (=> b!1056473 m!976453))

(assert (=> b!1056473 m!976449))

(check-sat (not start!93200) (not b!1056471) (not b!1056473) (not b!1056472) (not b!1056470) (not b!1056469))
(check-sat)
