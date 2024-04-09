; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92354 () Bool)

(assert start!92354)

(declare-fun b!1049208 () Bool)

(declare-fun e!595301 () Bool)

(declare-fun e!595304 () Bool)

(assert (=> b!1049208 (= e!595301 e!595304)))

(declare-fun res!698446 () Bool)

(assert (=> b!1049208 (=> (not res!698446) (not e!595304))))

(declare-fun lt!463418 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049208 (= res!698446 (not (= lt!463418 i!1381)))))

(declare-datatypes ((array!66103 0))(
  ( (array!66104 (arr!31787 (Array (_ BitVec 32) (_ BitVec 64))) (size!32324 (_ BitVec 32))) )
))
(declare-fun lt!463419 () array!66103)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66103 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049208 (= lt!463418 (arrayScanForKey!0 lt!463419 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049209 () Bool)

(declare-fun e!595303 () Bool)

(declare-fun e!595302 () Bool)

(assert (=> b!1049209 (= e!595303 e!595302)))

(declare-fun res!698445 () Bool)

(assert (=> b!1049209 (=> res!698445 e!595302)))

(assert (=> b!1049209 (= res!698445 (bvsle lt!463418 i!1381))))

(declare-fun b!1049210 () Bool)

(declare-fun res!698450 () Bool)

(declare-fun e!595306 () Bool)

(assert (=> b!1049210 (=> (not res!698450) (not e!595306))))

(declare-fun a!3488 () array!66103)

(assert (=> b!1049210 (= res!698450 (= (select (arr!31787 a!3488) i!1381) k0!2747))))

(declare-fun b!1049211 () Bool)

(declare-fun e!595305 () Bool)

(assert (=> b!1049211 (= e!595304 (not e!595305))))

(declare-fun res!698444 () Bool)

(assert (=> b!1049211 (=> res!698444 e!595305)))

(assert (=> b!1049211 (= res!698444 (bvsle lt!463418 i!1381))))

(assert (=> b!1049211 e!595303))

(declare-fun res!698443 () Bool)

(assert (=> b!1049211 (=> (not res!698443) (not e!595303))))

(assert (=> b!1049211 (= res!698443 (= (select (store (arr!31787 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463418) k0!2747))))

(declare-fun res!698451 () Bool)

(assert (=> start!92354 (=> (not res!698451) (not e!595306))))

(assert (=> start!92354 (= res!698451 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32324 a!3488)) (bvslt (size!32324 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92354 e!595306))

(assert (=> start!92354 true))

(declare-fun array_inv!24409 (array!66103) Bool)

(assert (=> start!92354 (array_inv!24409 a!3488)))

(declare-fun b!1049212 () Bool)

(assert (=> b!1049212 (= e!595305 true)))

(declare-datatypes ((List!22230 0))(
  ( (Nil!22227) (Cons!22226 (h!23435 (_ BitVec 64)) (t!31544 List!22230)) )
))
(declare-fun arrayNoDuplicates!0 (array!66103 (_ BitVec 32) List!22230) Bool)

(assert (=> b!1049212 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22227)))

(declare-datatypes ((Unit!34303 0))(
  ( (Unit!34304) )
))
(declare-fun lt!463420 () Unit!34303)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66103 (_ BitVec 32) (_ BitVec 32)) Unit!34303)

(assert (=> b!1049212 (= lt!463420 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049213 () Bool)

(assert (=> b!1049213 (= e!595306 e!595301)))

(declare-fun res!698449 () Bool)

(assert (=> b!1049213 (=> (not res!698449) (not e!595301))))

(declare-fun arrayContainsKey!0 (array!66103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049213 (= res!698449 (arrayContainsKey!0 lt!463419 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049213 (= lt!463419 (array!66104 (store (arr!31787 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32324 a!3488)))))

(declare-fun b!1049214 () Bool)

(declare-fun res!698447 () Bool)

(assert (=> b!1049214 (=> (not res!698447) (not e!595306))))

(assert (=> b!1049214 (= res!698447 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22227))))

(declare-fun b!1049215 () Bool)

(assert (=> b!1049215 (= e!595302 (arrayContainsKey!0 a!3488 k0!2747 lt!463418))))

(declare-fun b!1049216 () Bool)

(declare-fun res!698448 () Bool)

(assert (=> b!1049216 (=> (not res!698448) (not e!595306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049216 (= res!698448 (validKeyInArray!0 k0!2747))))

(assert (= (and start!92354 res!698451) b!1049214))

(assert (= (and b!1049214 res!698447) b!1049216))

(assert (= (and b!1049216 res!698448) b!1049210))

(assert (= (and b!1049210 res!698450) b!1049213))

(assert (= (and b!1049213 res!698449) b!1049208))

(assert (= (and b!1049208 res!698446) b!1049211))

(assert (= (and b!1049211 res!698443) b!1049209))

(assert (= (and b!1049209 (not res!698445)) b!1049215))

(assert (= (and b!1049211 (not res!698444)) b!1049212))

(declare-fun m!970141 () Bool)

(assert (=> b!1049214 m!970141))

(declare-fun m!970143 () Bool)

(assert (=> b!1049208 m!970143))

(declare-fun m!970145 () Bool)

(assert (=> b!1049213 m!970145))

(declare-fun m!970147 () Bool)

(assert (=> b!1049213 m!970147))

(assert (=> b!1049211 m!970147))

(declare-fun m!970149 () Bool)

(assert (=> b!1049211 m!970149))

(declare-fun m!970151 () Bool)

(assert (=> start!92354 m!970151))

(declare-fun m!970153 () Bool)

(assert (=> b!1049216 m!970153))

(declare-fun m!970155 () Bool)

(assert (=> b!1049210 m!970155))

(declare-fun m!970157 () Bool)

(assert (=> b!1049212 m!970157))

(declare-fun m!970159 () Bool)

(assert (=> b!1049212 m!970159))

(declare-fun m!970161 () Bool)

(assert (=> b!1049215 m!970161))

(check-sat (not start!92354) (not b!1049213) (not b!1049216) (not b!1049212) (not b!1049208) (not b!1049215) (not b!1049214))
(check-sat)
