; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44280 () Bool)

(assert start!44280)

(declare-fun res!290173 () Bool)

(declare-fun e!286433 () Bool)

(assert (=> start!44280 (=> (not res!290173) (not e!286433))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44280 (= res!290173 (validMask!0 mask!3524))))

(assert (=> start!44280 e!286433))

(assert (=> start!44280 true))

(declare-datatypes ((array!31491 0))(
  ( (array!31492 (arr!15136 (Array (_ BitVec 32) (_ BitVec 64))) (size!15500 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31491)

(declare-fun array_inv!10910 (array!31491) Bool)

(assert (=> start!44280 (array_inv!10910 a!3235)))

(declare-fun b!486635 () Bool)

(declare-fun res!290174 () Bool)

(assert (=> b!486635 (=> (not res!290174) (not e!286433))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486635 (= res!290174 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486636 () Bool)

(declare-fun res!290176 () Bool)

(assert (=> b!486636 (=> (not res!290176) (not e!286433))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486636 (= res!290176 (and (= (size!15500 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15500 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15500 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486637 () Bool)

(declare-fun e!286435 () Bool)

(assert (=> b!486637 (= e!286433 e!286435)))

(declare-fun res!290171 () Bool)

(assert (=> b!486637 (=> (not res!290171) (not e!286435))))

(declare-datatypes ((SeekEntryResult!3610 0))(
  ( (MissingZero!3610 (index!16619 (_ BitVec 32))) (Found!3610 (index!16620 (_ BitVec 32))) (Intermediate!3610 (undefined!4422 Bool) (index!16621 (_ BitVec 32)) (x!45777 (_ BitVec 32))) (Undefined!3610) (MissingVacant!3610 (index!16622 (_ BitVec 32))) )
))
(declare-fun lt!219829 () SeekEntryResult!3610)

(assert (=> b!486637 (= res!290171 (or (= lt!219829 (MissingZero!3610 i!1204)) (= lt!219829 (MissingVacant!3610 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31491 (_ BitVec 32)) SeekEntryResult!3610)

(assert (=> b!486637 (= lt!219829 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!486638 () Bool)

(declare-fun res!290172 () Bool)

(assert (=> b!486638 (=> (not res!290172) (not e!286433))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486638 (= res!290172 (validKeyInArray!0 k0!2280))))

(declare-fun b!486639 () Bool)

(declare-fun res!290175 () Bool)

(assert (=> b!486639 (=> (not res!290175) (not e!286435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31491 (_ BitVec 32)) Bool)

(assert (=> b!486639 (= res!290175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486640 () Bool)

(declare-fun res!290177 () Bool)

(assert (=> b!486640 (=> (not res!290177) (not e!286433))))

(assert (=> b!486640 (= res!290177 (validKeyInArray!0 (select (arr!15136 a!3235) j!176)))))

(declare-fun b!486641 () Bool)

(assert (=> b!486641 (= e!286435 false)))

(declare-fun lt!219830 () Bool)

(declare-datatypes ((List!9347 0))(
  ( (Nil!9344) (Cons!9343 (h!10199 (_ BitVec 64)) (t!15583 List!9347)) )
))
(declare-fun arrayNoDuplicates!0 (array!31491 (_ BitVec 32) List!9347) Bool)

(assert (=> b!486641 (= lt!219830 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9344))))

(assert (= (and start!44280 res!290173) b!486636))

(assert (= (and b!486636 res!290176) b!486640))

(assert (= (and b!486640 res!290177) b!486638))

(assert (= (and b!486638 res!290172) b!486635))

(assert (= (and b!486635 res!290174) b!486637))

(assert (= (and b!486637 res!290171) b!486639))

(assert (= (and b!486639 res!290175) b!486641))

(declare-fun m!466555 () Bool)

(assert (=> b!486635 m!466555))

(declare-fun m!466557 () Bool)

(assert (=> start!44280 m!466557))

(declare-fun m!466559 () Bool)

(assert (=> start!44280 m!466559))

(declare-fun m!466561 () Bool)

(assert (=> b!486638 m!466561))

(declare-fun m!466563 () Bool)

(assert (=> b!486639 m!466563))

(declare-fun m!466565 () Bool)

(assert (=> b!486640 m!466565))

(assert (=> b!486640 m!466565))

(declare-fun m!466567 () Bool)

(assert (=> b!486640 m!466567))

(declare-fun m!466569 () Bool)

(assert (=> b!486637 m!466569))

(declare-fun m!466571 () Bool)

(assert (=> b!486641 m!466571))

(check-sat (not b!486641) (not start!44280) (not b!486639) (not b!486638) (not b!486635) (not b!486637) (not b!486640))
(check-sat)
