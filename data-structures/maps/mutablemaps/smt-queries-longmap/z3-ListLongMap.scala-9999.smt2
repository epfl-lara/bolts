; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118074 () Bool)

(assert start!118074)

(declare-fun b!1382171 () Bool)

(declare-fun res!923874 () Bool)

(declare-fun e!783464 () Bool)

(assert (=> b!1382171 (=> (not res!923874) (not e!783464))))

(declare-datatypes ((array!94354 0))(
  ( (array!94355 (arr!45554 (Array (_ BitVec 32) (_ BitVec 64))) (size!46105 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94354)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382171 (= res!923874 (validKeyInArray!0 (select (arr!45554 a!2971) i!1094)))))

(declare-fun b!1382173 () Bool)

(assert (=> b!1382173 (= e!783464 false)))

(declare-fun lt!608320 () Bool)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94354 (_ BitVec 32)) Bool)

(assert (=> b!1382173 (= lt!608320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382172 () Bool)

(declare-fun res!923871 () Bool)

(assert (=> b!1382172 (=> (not res!923871) (not e!783464))))

(declare-datatypes ((List!32268 0))(
  ( (Nil!32265) (Cons!32264 (h!33473 (_ BitVec 64)) (t!46969 List!32268)) )
))
(declare-fun arrayNoDuplicates!0 (array!94354 (_ BitVec 32) List!32268) Bool)

(assert (=> b!1382172 (= res!923871 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32265))))

(declare-fun res!923873 () Bool)

(assert (=> start!118074 (=> (not res!923873) (not e!783464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118074 (= res!923873 (validMask!0 mask!3034))))

(assert (=> start!118074 e!783464))

(assert (=> start!118074 true))

(declare-fun array_inv!34499 (array!94354) Bool)

(assert (=> start!118074 (array_inv!34499 a!2971)))

(declare-fun b!1382170 () Bool)

(declare-fun res!923872 () Bool)

(assert (=> b!1382170 (=> (not res!923872) (not e!783464))))

(assert (=> b!1382170 (= res!923872 (and (= (size!46105 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46105 a!2971))))))

(assert (= (and start!118074 res!923873) b!1382170))

(assert (= (and b!1382170 res!923872) b!1382171))

(assert (= (and b!1382171 res!923874) b!1382172))

(assert (= (and b!1382172 res!923871) b!1382173))

(declare-fun m!1267371 () Bool)

(assert (=> b!1382171 m!1267371))

(assert (=> b!1382171 m!1267371))

(declare-fun m!1267373 () Bool)

(assert (=> b!1382171 m!1267373))

(declare-fun m!1267375 () Bool)

(assert (=> b!1382173 m!1267375))

(declare-fun m!1267377 () Bool)

(assert (=> b!1382172 m!1267377))

(declare-fun m!1267379 () Bool)

(assert (=> start!118074 m!1267379))

(declare-fun m!1267381 () Bool)

(assert (=> start!118074 m!1267381))

(check-sat (not b!1382171) (not start!118074) (not b!1382172) (not b!1382173))
(check-sat)
