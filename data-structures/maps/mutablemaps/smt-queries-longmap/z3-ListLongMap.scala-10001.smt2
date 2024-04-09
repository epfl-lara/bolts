; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118086 () Bool)

(assert start!118086)

(declare-fun res!923946 () Bool)

(declare-fun e!783499 () Bool)

(assert (=> start!118086 (=> (not res!923946) (not e!783499))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118086 (= res!923946 (validMask!0 mask!3034))))

(assert (=> start!118086 e!783499))

(assert (=> start!118086 true))

(declare-datatypes ((array!94366 0))(
  ( (array!94367 (arr!45560 (Array (_ BitVec 32) (_ BitVec 64))) (size!46111 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94366)

(declare-fun array_inv!34505 (array!94366) Bool)

(assert (=> start!118086 (array_inv!34505 a!2971)))

(declare-fun b!1382245 () Bool)

(assert (=> b!1382245 (= e!783499 false)))

(declare-fun lt!608338 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94366 (_ BitVec 32)) Bool)

(assert (=> b!1382245 (= lt!608338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382242 () Bool)

(declare-fun res!923945 () Bool)

(assert (=> b!1382242 (=> (not res!923945) (not e!783499))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382242 (= res!923945 (and (= (size!46111 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46111 a!2971))))))

(declare-fun b!1382244 () Bool)

(declare-fun res!923944 () Bool)

(assert (=> b!1382244 (=> (not res!923944) (not e!783499))))

(declare-datatypes ((List!32274 0))(
  ( (Nil!32271) (Cons!32270 (h!33479 (_ BitVec 64)) (t!46975 List!32274)) )
))
(declare-fun arrayNoDuplicates!0 (array!94366 (_ BitVec 32) List!32274) Bool)

(assert (=> b!1382244 (= res!923944 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32271))))

(declare-fun b!1382243 () Bool)

(declare-fun res!923943 () Bool)

(assert (=> b!1382243 (=> (not res!923943) (not e!783499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382243 (= res!923943 (validKeyInArray!0 (select (arr!45560 a!2971) i!1094)))))

(assert (= (and start!118086 res!923946) b!1382242))

(assert (= (and b!1382242 res!923945) b!1382243))

(assert (= (and b!1382243 res!923943) b!1382244))

(assert (= (and b!1382244 res!923944) b!1382245))

(declare-fun m!1267443 () Bool)

(assert (=> start!118086 m!1267443))

(declare-fun m!1267445 () Bool)

(assert (=> start!118086 m!1267445))

(declare-fun m!1267447 () Bool)

(assert (=> b!1382245 m!1267447))

(declare-fun m!1267449 () Bool)

(assert (=> b!1382244 m!1267449))

(declare-fun m!1267451 () Bool)

(assert (=> b!1382243 m!1267451))

(assert (=> b!1382243 m!1267451))

(declare-fun m!1267453 () Bool)

(assert (=> b!1382243 m!1267453))

(check-sat (not start!118086) (not b!1382244) (not b!1382243) (not b!1382245))
