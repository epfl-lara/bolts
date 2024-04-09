; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44286 () Bool)

(assert start!44286)

(declare-fun b!486698 () Bool)

(declare-fun res!290239 () Bool)

(declare-fun e!286461 () Bool)

(assert (=> b!486698 (=> (not res!290239) (not e!286461))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486698 (= res!290239 (validKeyInArray!0 k0!2280))))

(declare-fun res!290235 () Bool)

(assert (=> start!44286 (=> (not res!290235) (not e!286461))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44286 (= res!290235 (validMask!0 mask!3524))))

(assert (=> start!44286 e!286461))

(assert (=> start!44286 true))

(declare-datatypes ((array!31497 0))(
  ( (array!31498 (arr!15139 (Array (_ BitVec 32) (_ BitVec 64))) (size!15503 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31497)

(declare-fun array_inv!10913 (array!31497) Bool)

(assert (=> start!44286 (array_inv!10913 a!3235)))

(declare-fun b!486699 () Bool)

(declare-fun e!286460 () Bool)

(assert (=> b!486699 (= e!286460 false)))

(declare-fun lt!219848 () Bool)

(declare-datatypes ((List!9350 0))(
  ( (Nil!9347) (Cons!9346 (h!10202 (_ BitVec 64)) (t!15586 List!9350)) )
))
(declare-fun arrayNoDuplicates!0 (array!31497 (_ BitVec 32) List!9350) Bool)

(assert (=> b!486699 (= lt!219848 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9347))))

(declare-fun b!486700 () Bool)

(declare-fun res!290238 () Bool)

(assert (=> b!486700 (=> (not res!290238) (not e!286461))))

(declare-fun arrayContainsKey!0 (array!31497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486700 (= res!290238 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486701 () Bool)

(declare-fun res!290240 () Bool)

(assert (=> b!486701 (=> (not res!290240) (not e!286461))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486701 (= res!290240 (and (= (size!15503 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15503 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15503 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486702 () Bool)

(assert (=> b!486702 (= e!286461 e!286460)))

(declare-fun res!290237 () Bool)

(assert (=> b!486702 (=> (not res!290237) (not e!286460))))

(declare-datatypes ((SeekEntryResult!3613 0))(
  ( (MissingZero!3613 (index!16631 (_ BitVec 32))) (Found!3613 (index!16632 (_ BitVec 32))) (Intermediate!3613 (undefined!4425 Bool) (index!16633 (_ BitVec 32)) (x!45788 (_ BitVec 32))) (Undefined!3613) (MissingVacant!3613 (index!16634 (_ BitVec 32))) )
))
(declare-fun lt!219847 () SeekEntryResult!3613)

(assert (=> b!486702 (= res!290237 (or (= lt!219847 (MissingZero!3613 i!1204)) (= lt!219847 (MissingVacant!3613 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31497 (_ BitVec 32)) SeekEntryResult!3613)

(assert (=> b!486702 (= lt!219847 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!486703 () Bool)

(declare-fun res!290236 () Bool)

(assert (=> b!486703 (=> (not res!290236) (not e!286461))))

(assert (=> b!486703 (= res!290236 (validKeyInArray!0 (select (arr!15139 a!3235) j!176)))))

(declare-fun b!486704 () Bool)

(declare-fun res!290234 () Bool)

(assert (=> b!486704 (=> (not res!290234) (not e!286460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31497 (_ BitVec 32)) Bool)

(assert (=> b!486704 (= res!290234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!44286 res!290235) b!486701))

(assert (= (and b!486701 res!290240) b!486703))

(assert (= (and b!486703 res!290236) b!486698))

(assert (= (and b!486698 res!290239) b!486700))

(assert (= (and b!486700 res!290238) b!486702))

(assert (= (and b!486702 res!290237) b!486704))

(assert (= (and b!486704 res!290234) b!486699))

(declare-fun m!466609 () Bool)

(assert (=> start!44286 m!466609))

(declare-fun m!466611 () Bool)

(assert (=> start!44286 m!466611))

(declare-fun m!466613 () Bool)

(assert (=> b!486704 m!466613))

(declare-fun m!466615 () Bool)

(assert (=> b!486702 m!466615))

(declare-fun m!466617 () Bool)

(assert (=> b!486699 m!466617))

(declare-fun m!466619 () Bool)

(assert (=> b!486698 m!466619))

(declare-fun m!466621 () Bool)

(assert (=> b!486703 m!466621))

(assert (=> b!486703 m!466621))

(declare-fun m!466623 () Bool)

(assert (=> b!486703 m!466623))

(declare-fun m!466625 () Bool)

(assert (=> b!486700 m!466625))

(check-sat (not b!486703) (not b!486698) (not b!486700) (not b!486704) (not b!486702) (not start!44286) (not b!486699))
(check-sat)
