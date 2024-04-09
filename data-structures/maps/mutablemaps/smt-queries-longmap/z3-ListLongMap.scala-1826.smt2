; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33020 () Bool)

(assert start!33020)

(declare-fun res!181070 () Bool)

(declare-fun e!201958 () Bool)

(assert (=> start!33020 (=> (not res!181070) (not e!201958))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33020 (= res!181070 (validMask!0 mask!3777))))

(assert (=> start!33020 e!201958))

(declare-datatypes ((array!16822 0))(
  ( (array!16823 (arr!7955 (Array (_ BitVec 32) (_ BitVec 64))) (size!8307 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16822)

(declare-fun array_inv!5909 (array!16822) Bool)

(assert (=> start!33020 (array_inv!5909 a!3305)))

(assert (=> start!33020 true))

(declare-fun b!328586 () Bool)

(declare-fun res!181077 () Bool)

(assert (=> b!328586 (=> (not res!181077) (not e!201958))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3097 0))(
  ( (MissingZero!3097 (index!14564 (_ BitVec 32))) (Found!3097 (index!14565 (_ BitVec 32))) (Intermediate!3097 (undefined!3909 Bool) (index!14566 (_ BitVec 32)) (x!32795 (_ BitVec 32))) (Undefined!3097) (MissingVacant!3097 (index!14567 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16822 (_ BitVec 32)) SeekEntryResult!3097)

(assert (=> b!328586 (= res!181077 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3097 i!1250)))))

(declare-fun b!328587 () Bool)

(declare-fun res!181071 () Bool)

(assert (=> b!328587 (=> (not res!181071) (not e!201958))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!328587 (= res!181071 (and (= (select (arr!7955 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8307 a!3305))))))

(declare-fun b!328588 () Bool)

(declare-fun res!181074 () Bool)

(assert (=> b!328588 (=> (not res!181074) (not e!201958))))

(declare-fun arrayContainsKey!0 (array!16822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328588 (= res!181074 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328589 () Bool)

(declare-fun res!181073 () Bool)

(assert (=> b!328589 (=> (not res!181073) (not e!201958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16822 (_ BitVec 32)) Bool)

(assert (=> b!328589 (= res!181073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328590 () Bool)

(assert (=> b!328590 (= e!201958 false)))

(declare-fun lt!157985 () SeekEntryResult!3097)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16822 (_ BitVec 32)) SeekEntryResult!3097)

(assert (=> b!328590 (= lt!157985 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!328591 () Bool)

(declare-fun res!181076 () Bool)

(assert (=> b!328591 (=> (not res!181076) (not e!201958))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328591 (= res!181076 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!3097 false resIndex!58 resX!58)))))

(declare-fun b!328592 () Bool)

(declare-fun res!181075 () Bool)

(assert (=> b!328592 (=> (not res!181075) (not e!201958))))

(assert (=> b!328592 (= res!181075 (and (= (size!8307 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8307 a!3305))))))

(declare-fun b!328593 () Bool)

(declare-fun res!181072 () Bool)

(assert (=> b!328593 (=> (not res!181072) (not e!201958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328593 (= res!181072 (validKeyInArray!0 k0!2497))))

(assert (= (and start!33020 res!181070) b!328592))

(assert (= (and b!328592 res!181075) b!328593))

(assert (= (and b!328593 res!181072) b!328588))

(assert (= (and b!328588 res!181074) b!328586))

(assert (= (and b!328586 res!181077) b!328589))

(assert (= (and b!328589 res!181073) b!328591))

(assert (= (and b!328591 res!181076) b!328587))

(assert (= (and b!328587 res!181071) b!328590))

(declare-fun m!334485 () Bool)

(assert (=> b!328591 m!334485))

(assert (=> b!328591 m!334485))

(declare-fun m!334487 () Bool)

(assert (=> b!328591 m!334487))

(declare-fun m!334489 () Bool)

(assert (=> start!33020 m!334489))

(declare-fun m!334491 () Bool)

(assert (=> start!33020 m!334491))

(declare-fun m!334493 () Bool)

(assert (=> b!328590 m!334493))

(declare-fun m!334495 () Bool)

(assert (=> b!328589 m!334495))

(declare-fun m!334497 () Bool)

(assert (=> b!328593 m!334497))

(declare-fun m!334499 () Bool)

(assert (=> b!328587 m!334499))

(declare-fun m!334501 () Bool)

(assert (=> b!328586 m!334501))

(declare-fun m!334503 () Bool)

(assert (=> b!328588 m!334503))

(check-sat (not b!328593) (not b!328588) (not b!328591) (not b!328590) (not b!328589) (not start!33020) (not b!328586))
