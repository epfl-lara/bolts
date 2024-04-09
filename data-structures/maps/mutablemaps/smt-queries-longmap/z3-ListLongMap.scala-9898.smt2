; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117178 () Bool)

(assert start!117178)

(declare-fun b!1378608 () Bool)

(declare-fun e!781015 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378608 (= e!781015 (and (bvsle from!3466 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451))))))

(declare-fun b!1378609 () Bool)

(declare-fun res!921255 () Bool)

(assert (=> b!1378609 (=> (not res!921255) (not e!781015))))

(declare-datatypes ((array!93711 0))(
  ( (array!93712 (arr!45251 (Array (_ BitVec 32) (_ BitVec 64))) (size!45802 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93711)

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93711 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378609 (= res!921255 (= (arrayCountValidKeys!0 (array!93712 (store (arr!45251 a!4094) i!1451 k0!2953) (size!45802 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun b!1378610 () Bool)

(declare-fun res!921253 () Bool)

(assert (=> b!1378610 (=> (not res!921253) (not e!781015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378610 (= res!921253 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378612 () Bool)

(declare-fun res!921254 () Bool)

(assert (=> b!1378612 (=> (not res!921254) (not e!781015))))

(assert (=> b!1378612 (= res!921254 (validKeyInArray!0 (select (arr!45251 a!4094) i!1451)))))

(declare-fun res!921251 () Bool)

(assert (=> start!117178 (=> (not res!921251) (not e!781015))))

(assert (=> start!117178 (= res!921251 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45802 a!4094))))))

(assert (=> start!117178 e!781015))

(assert (=> start!117178 true))

(declare-fun array_inv!34196 (array!93711) Bool)

(assert (=> start!117178 (array_inv!34196 a!4094)))

(declare-fun b!1378611 () Bool)

(declare-fun res!921252 () Bool)

(assert (=> b!1378611 (=> (not res!921252) (not e!781015))))

(assert (=> b!1378611 (= res!921252 (and (bvslt (size!45802 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45802 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117178 res!921251) b!1378612))

(assert (= (and b!1378612 res!921254) b!1378610))

(assert (= (and b!1378610 res!921253) b!1378611))

(assert (= (and b!1378611 res!921252) b!1378609))

(assert (= (and b!1378609 res!921255) b!1378608))

(declare-fun m!1263485 () Bool)

(assert (=> b!1378609 m!1263485))

(declare-fun m!1263487 () Bool)

(assert (=> b!1378609 m!1263487))

(declare-fun m!1263489 () Bool)

(assert (=> b!1378609 m!1263489))

(declare-fun m!1263491 () Bool)

(assert (=> b!1378610 m!1263491))

(declare-fun m!1263493 () Bool)

(assert (=> b!1378612 m!1263493))

(assert (=> b!1378612 m!1263493))

(declare-fun m!1263495 () Bool)

(assert (=> b!1378612 m!1263495))

(declare-fun m!1263497 () Bool)

(assert (=> start!117178 m!1263497))

(check-sat (not b!1378609) (not start!117178) (not b!1378612) (not b!1378610))
(check-sat)
