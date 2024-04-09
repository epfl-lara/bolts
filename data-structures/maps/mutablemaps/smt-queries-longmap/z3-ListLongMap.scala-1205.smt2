; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25710 () Bool)

(assert start!25710)

(declare-fun b!266456 () Bool)

(declare-fun res!130791 () Bool)

(declare-fun e!172401 () Bool)

(assert (=> b!266456 (=> (not res!130791) (not e!172401))))

(declare-datatypes ((array!12876 0))(
  ( (array!12877 (arr!6092 (Array (_ BitVec 32) (_ BitVec 64))) (size!6444 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12876)

(assert (=> b!266456 (= res!130791 (bvslt #b00000000000000000000000000000000 (size!6444 a!3436)))))

(declare-fun b!266457 () Bool)

(declare-fun res!130793 () Bool)

(declare-fun e!172402 () Bool)

(assert (=> b!266457 (=> (not res!130793) (not e!172402))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266457 (= res!130793 (validKeyInArray!0 k0!2698))))

(declare-fun b!266458 () Bool)

(declare-fun res!130795 () Bool)

(assert (=> b!266458 (=> (not res!130795) (not e!172401))))

(declare-datatypes ((List!3927 0))(
  ( (Nil!3924) (Cons!3923 (h!4590 (_ BitVec 64)) (t!9017 List!3927)) )
))
(declare-fun arrayNoDuplicates!0 (array!12876 (_ BitVec 32) List!3927) Bool)

(assert (=> b!266458 (= res!130795 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3924))))

(declare-fun b!266459 () Bool)

(declare-fun res!130794 () Bool)

(assert (=> b!266459 (=> (not res!130794) (not e!172402))))

(declare-fun arrayContainsKey!0 (array!12876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266459 (= res!130794 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266460 () Bool)

(assert (=> b!266460 (= e!172402 e!172401)))

(declare-fun res!130790 () Bool)

(assert (=> b!266460 (=> (not res!130790) (not e!172401))))

(declare-datatypes ((SeekEntryResult!1294 0))(
  ( (MissingZero!1294 (index!7346 (_ BitVec 32))) (Found!1294 (index!7347 (_ BitVec 32))) (Intermediate!1294 (undefined!2106 Bool) (index!7348 (_ BitVec 32)) (x!25619 (_ BitVec 32))) (Undefined!1294) (MissingVacant!1294 (index!7349 (_ BitVec 32))) )
))
(declare-fun lt!134462 () SeekEntryResult!1294)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266460 (= res!130790 (or (= lt!134462 (MissingZero!1294 i!1355)) (= lt!134462 (MissingVacant!1294 i!1355))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12876 (_ BitVec 32)) SeekEntryResult!1294)

(assert (=> b!266460 (= lt!134462 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!130792 () Bool)

(assert (=> start!25710 (=> (not res!130792) (not e!172402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25710 (= res!130792 (validMask!0 mask!4002))))

(assert (=> start!25710 e!172402))

(assert (=> start!25710 true))

(declare-fun array_inv!4046 (array!12876) Bool)

(assert (=> start!25710 (array_inv!4046 a!3436)))

(declare-fun b!266461 () Bool)

(assert (=> b!266461 (= e!172401 (not (bvsle #b00000000000000000000000000000000 (size!6444 a!3436))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12876 (_ BitVec 32)) Bool)

(assert (=> b!266461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12877 (store (arr!6092 a!3436) i!1355 k0!2698) (size!6444 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8288 0))(
  ( (Unit!8289) )
))
(declare-fun lt!134461 () Unit!8288)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12876 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8288)

(assert (=> b!266461 (= lt!134461 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k0!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266462 () Bool)

(declare-fun res!130797 () Bool)

(assert (=> b!266462 (=> (not res!130797) (not e!172401))))

(assert (=> b!266462 (= res!130797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266463 () Bool)

(declare-fun res!130796 () Bool)

(assert (=> b!266463 (=> (not res!130796) (not e!172402))))

(assert (=> b!266463 (= res!130796 (and (= (size!6444 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6444 a!3436))))))

(assert (= (and start!25710 res!130792) b!266463))

(assert (= (and b!266463 res!130796) b!266457))

(assert (= (and b!266457 res!130793) b!266459))

(assert (= (and b!266459 res!130794) b!266460))

(assert (= (and b!266460 res!130790) b!266462))

(assert (= (and b!266462 res!130797) b!266458))

(assert (= (and b!266458 res!130795) b!266456))

(assert (= (and b!266456 res!130791) b!266461))

(declare-fun m!283081 () Bool)

(assert (=> start!25710 m!283081))

(declare-fun m!283083 () Bool)

(assert (=> start!25710 m!283083))

(declare-fun m!283085 () Bool)

(assert (=> b!266458 m!283085))

(declare-fun m!283087 () Bool)

(assert (=> b!266457 m!283087))

(declare-fun m!283089 () Bool)

(assert (=> b!266459 m!283089))

(declare-fun m!283091 () Bool)

(assert (=> b!266461 m!283091))

(declare-fun m!283093 () Bool)

(assert (=> b!266461 m!283093))

(declare-fun m!283095 () Bool)

(assert (=> b!266461 m!283095))

(declare-fun m!283097 () Bool)

(assert (=> b!266460 m!283097))

(declare-fun m!283099 () Bool)

(assert (=> b!266462 m!283099))

(check-sat (not b!266461) (not b!266459) (not start!25710) (not b!266458) (not b!266462) (not b!266460) (not b!266457))
(check-sat)
