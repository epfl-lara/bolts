; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25890 () Bool)

(assert start!25890)

(declare-fun res!131842 () Bool)

(declare-fun e!172942 () Bool)

(assert (=> start!25890 (=> (not res!131842) (not e!172942))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25890 (= res!131842 (validMask!0 mask!3868))))

(assert (=> start!25890 e!172942))

(declare-datatypes ((array!12997 0))(
  ( (array!12998 (arr!6149 (Array (_ BitVec 32) (_ BitVec 64))) (size!6501 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!12997)

(declare-fun array_inv!4103 (array!12997) Bool)

(assert (=> start!25890 (array_inv!4103 a!3325)))

(assert (=> start!25890 true))

(declare-fun b!267508 () Bool)

(declare-fun res!131843 () Bool)

(assert (=> b!267508 (=> (not res!131843) (not e!172942))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267508 (= res!131843 (and (= (size!6501 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6501 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6501 a!3325))))))

(declare-fun b!267509 () Bool)

(declare-fun res!131844 () Bool)

(assert (=> b!267509 (=> (not res!131844) (not e!172942))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267509 (= res!131844 (validKeyInArray!0 k0!2581))))

(declare-fun b!267510 () Bool)

(assert (=> b!267510 (= e!172942 false)))

(declare-fun lt!134729 () Bool)

(declare-datatypes ((List!3978 0))(
  ( (Nil!3975) (Cons!3974 (h!4641 (_ BitVec 64)) (t!9068 List!3978)) )
))
(declare-fun arrayNoDuplicates!0 (array!12997 (_ BitVec 32) List!3978) Bool)

(assert (=> b!267510 (= lt!134729 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3975))))

(assert (= (and start!25890 res!131842) b!267508))

(assert (= (and b!267508 res!131843) b!267509))

(assert (= (and b!267509 res!131844) b!267510))

(declare-fun m!283899 () Bool)

(assert (=> start!25890 m!283899))

(declare-fun m!283901 () Bool)

(assert (=> start!25890 m!283901))

(declare-fun m!283903 () Bool)

(assert (=> b!267509 m!283903))

(declare-fun m!283905 () Bool)

(assert (=> b!267510 m!283905))

(check-sat (not start!25890) (not b!267510) (not b!267509))
