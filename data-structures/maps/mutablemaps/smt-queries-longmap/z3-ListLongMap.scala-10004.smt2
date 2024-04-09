; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118104 () Bool)

(assert start!118104)

(declare-fun res!924051 () Bool)

(declare-fun e!783554 () Bool)

(assert (=> start!118104 (=> (not res!924051) (not e!783554))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118104 (= res!924051 (validMask!0 mask!3034))))

(assert (=> start!118104 e!783554))

(assert (=> start!118104 true))

(declare-datatypes ((array!94384 0))(
  ( (array!94385 (arr!45569 (Array (_ BitVec 32) (_ BitVec 64))) (size!46120 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94384)

(declare-fun array_inv!34514 (array!94384) Bool)

(assert (=> start!118104 (array_inv!34514 a!2971)))

(declare-fun b!1382351 () Bool)

(declare-fun res!924052 () Bool)

(assert (=> b!1382351 (=> (not res!924052) (not e!783554))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382351 (= res!924052 (validKeyInArray!0 (select (arr!45569 a!2971) i!1094)))))

(declare-fun b!1382352 () Bool)

(declare-fun res!924053 () Bool)

(assert (=> b!1382352 (=> (not res!924053) (not e!783554))))

(declare-datatypes ((List!32283 0))(
  ( (Nil!32280) (Cons!32279 (h!33488 (_ BitVec 64)) (t!46984 List!32283)) )
))
(declare-fun arrayNoDuplicates!0 (array!94384 (_ BitVec 32) List!32283) Bool)

(assert (=> b!1382352 (= res!924053 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32280))))

(declare-fun b!1382350 () Bool)

(declare-fun res!924054 () Bool)

(assert (=> b!1382350 (=> (not res!924054) (not e!783554))))

(assert (=> b!1382350 (= res!924054 (and (= (size!46120 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46120 a!2971))))))

(declare-fun b!1382353 () Bool)

(assert (=> b!1382353 (= e!783554 false)))

(declare-fun lt!608365 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94384 (_ BitVec 32)) Bool)

(assert (=> b!1382353 (= lt!608365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118104 res!924051) b!1382350))

(assert (= (and b!1382350 res!924054) b!1382351))

(assert (= (and b!1382351 res!924052) b!1382352))

(assert (= (and b!1382352 res!924053) b!1382353))

(declare-fun m!1267551 () Bool)

(assert (=> start!118104 m!1267551))

(declare-fun m!1267553 () Bool)

(assert (=> start!118104 m!1267553))

(declare-fun m!1267555 () Bool)

(assert (=> b!1382351 m!1267555))

(assert (=> b!1382351 m!1267555))

(declare-fun m!1267557 () Bool)

(assert (=> b!1382351 m!1267557))

(declare-fun m!1267559 () Bool)

(assert (=> b!1382352 m!1267559))

(declare-fun m!1267561 () Bool)

(assert (=> b!1382353 m!1267561))

(check-sat (not b!1382353) (not start!118104) (not b!1382352) (not b!1382351))
