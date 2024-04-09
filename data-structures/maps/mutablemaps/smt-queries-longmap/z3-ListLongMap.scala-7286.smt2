; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93146 () Bool)

(assert start!93146)

(declare-fun b!1056091 () Bool)

(declare-fun res!704979 () Bool)

(declare-fun e!600384 () Bool)

(assert (=> b!1056091 (=> (not res!704979) (not e!600384))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056091 (= res!704979 (validKeyInArray!0 k0!2747))))

(declare-fun b!1056092 () Bool)

(declare-fun e!600381 () Bool)

(declare-fun e!600383 () Bool)

(assert (=> b!1056092 (= e!600381 e!600383)))

(declare-fun res!704985 () Bool)

(assert (=> b!1056092 (=> res!704985 e!600383)))

(declare-fun lt!466017 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056092 (= res!704985 (or (bvsgt lt!466017 i!1381) (bvsle i!1381 lt!466017)))))

(declare-fun b!1056093 () Bool)

(declare-fun e!600385 () Bool)

(declare-fun e!600386 () Bool)

(assert (=> b!1056093 (= e!600385 e!600386)))

(declare-fun res!704984 () Bool)

(assert (=> b!1056093 (=> (not res!704984) (not e!600386))))

(assert (=> b!1056093 (= res!704984 (not (= lt!466017 i!1381)))))

(declare-datatypes ((array!66592 0))(
  ( (array!66593 (arr!32018 (Array (_ BitVec 32) (_ BitVec 64))) (size!32555 (_ BitVec 32))) )
))
(declare-fun lt!466018 () array!66592)

(declare-fun arrayScanForKey!0 (array!66592 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056093 (= lt!466017 (arrayScanForKey!0 lt!466018 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056094 () Bool)

(declare-fun res!704982 () Bool)

(assert (=> b!1056094 (=> (not res!704982) (not e!600384))))

(declare-fun a!3488 () array!66592)

(assert (=> b!1056094 (= res!704982 (= (select (arr!32018 a!3488) i!1381) k0!2747))))

(declare-fun b!1056096 () Bool)

(assert (=> b!1056096 (= e!600386 (not true))))

(assert (=> b!1056096 e!600381))

(declare-fun res!704978 () Bool)

(assert (=> b!1056096 (=> (not res!704978) (not e!600381))))

(assert (=> b!1056096 (= res!704978 (= (select (store (arr!32018 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466017) k0!2747))))

(declare-fun b!1056097 () Bool)

(assert (=> b!1056097 (= e!600384 e!600385)))

(declare-fun res!704981 () Bool)

(assert (=> b!1056097 (=> (not res!704981) (not e!600385))))

(declare-fun arrayContainsKey!0 (array!66592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056097 (= res!704981 (arrayContainsKey!0 lt!466018 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056097 (= lt!466018 (array!66593 (store (arr!32018 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32555 a!3488)))))

(declare-fun b!1056098 () Bool)

(assert (=> b!1056098 (= e!600383 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056095 () Bool)

(declare-fun res!704983 () Bool)

(assert (=> b!1056095 (=> (not res!704983) (not e!600384))))

(declare-datatypes ((List!22461 0))(
  ( (Nil!22458) (Cons!22457 (h!23666 (_ BitVec 64)) (t!31775 List!22461)) )
))
(declare-fun arrayNoDuplicates!0 (array!66592 (_ BitVec 32) List!22461) Bool)

(assert (=> b!1056095 (= res!704983 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22458))))

(declare-fun res!704980 () Bool)

(assert (=> start!93146 (=> (not res!704980) (not e!600384))))

(assert (=> start!93146 (= res!704980 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32555 a!3488)) (bvslt (size!32555 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93146 e!600384))

(assert (=> start!93146 true))

(declare-fun array_inv!24640 (array!66592) Bool)

(assert (=> start!93146 (array_inv!24640 a!3488)))

(assert (= (and start!93146 res!704980) b!1056095))

(assert (= (and b!1056095 res!704983) b!1056091))

(assert (= (and b!1056091 res!704979) b!1056094))

(assert (= (and b!1056094 res!704982) b!1056097))

(assert (= (and b!1056097 res!704981) b!1056093))

(assert (= (and b!1056093 res!704984) b!1056096))

(assert (= (and b!1056096 res!704978) b!1056092))

(assert (= (and b!1056092 (not res!704985)) b!1056098))

(declare-fun m!976167 () Bool)

(assert (=> b!1056097 m!976167))

(declare-fun m!976169 () Bool)

(assert (=> b!1056097 m!976169))

(declare-fun m!976171 () Bool)

(assert (=> b!1056095 m!976171))

(declare-fun m!976173 () Bool)

(assert (=> b!1056091 m!976173))

(declare-fun m!976175 () Bool)

(assert (=> start!93146 m!976175))

(declare-fun m!976177 () Bool)

(assert (=> b!1056094 m!976177))

(assert (=> b!1056096 m!976169))

(declare-fun m!976179 () Bool)

(assert (=> b!1056096 m!976179))

(declare-fun m!976181 () Bool)

(assert (=> b!1056093 m!976181))

(declare-fun m!976183 () Bool)

(assert (=> b!1056098 m!976183))

(check-sat (not b!1056095) (not b!1056097) (not b!1056091) (not b!1056093) (not b!1056098) (not start!93146))
(check-sat)
