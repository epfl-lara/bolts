; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30290 () Bool)

(assert start!30290)

(declare-fun b!302950 () Bool)

(declare-fun res!160595 () Bool)

(declare-fun e!190764 () Bool)

(assert (=> b!302950 (=> (not res!160595) (not e!190764))))

(declare-datatypes ((array!15394 0))(
  ( (array!15395 (arr!7283 (Array (_ BitVec 32) (_ BitVec 64))) (size!7635 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15394)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2434 0))(
  ( (MissingZero!2434 (index!11912 (_ BitVec 32))) (Found!2434 (index!11913 (_ BitVec 32))) (Intermediate!2434 (undefined!3246 Bool) (index!11914 (_ BitVec 32)) (x!30142 (_ BitVec 32))) (Undefined!2434) (MissingVacant!2434 (index!11915 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15394 (_ BitVec 32)) SeekEntryResult!2434)

(assert (=> b!302950 (= res!160595 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2434 i!1240)))))

(declare-fun res!160599 () Bool)

(assert (=> start!30290 (=> (not res!160599) (not e!190764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30290 (= res!160599 (validMask!0 mask!3709))))

(assert (=> start!30290 e!190764))

(declare-fun array_inv!5237 (array!15394) Bool)

(assert (=> start!30290 (array_inv!5237 a!3293)))

(assert (=> start!30290 true))

(declare-fun b!302951 () Bool)

(declare-fun e!190765 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302951 (= e!190765 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7283 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7283 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7283 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!302952 () Bool)

(declare-fun res!160601 () Bool)

(assert (=> b!302952 (=> (not res!160601) (not e!190764))))

(assert (=> b!302952 (= res!160601 (and (= (size!7635 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7635 a!3293))))))

(declare-fun b!302953 () Bool)

(declare-fun res!160600 () Bool)

(assert (=> b!302953 (=> (not res!160600) (not e!190764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15394 (_ BitVec 32)) Bool)

(assert (=> b!302953 (= res!160600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302954 () Bool)

(declare-fun res!160602 () Bool)

(assert (=> b!302954 (=> (not res!160602) (not e!190765))))

(declare-fun lt!150134 () SeekEntryResult!2434)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15394 (_ BitVec 32)) SeekEntryResult!2434)

(assert (=> b!302954 (= res!160602 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150134))))

(declare-fun b!302955 () Bool)

(declare-fun res!160594 () Bool)

(assert (=> b!302955 (=> (not res!160594) (not e!190764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302955 (= res!160594 (validKeyInArray!0 k0!2441))))

(declare-fun b!302956 () Bool)

(assert (=> b!302956 (= e!190764 e!190765)))

(declare-fun res!160597 () Bool)

(assert (=> b!302956 (=> (not res!160597) (not e!190765))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302956 (= res!160597 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150134))))

(assert (=> b!302956 (= lt!150134 (Intermediate!2434 false resIndex!52 resX!52))))

(declare-fun b!302957 () Bool)

(declare-fun res!160598 () Bool)

(assert (=> b!302957 (=> (not res!160598) (not e!190765))))

(assert (=> b!302957 (= res!160598 (and (= (select (arr!7283 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7635 a!3293))))))

(declare-fun b!302958 () Bool)

(declare-fun res!160596 () Bool)

(assert (=> b!302958 (=> (not res!160596) (not e!190764))))

(declare-fun arrayContainsKey!0 (array!15394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302958 (= res!160596 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30290 res!160599) b!302952))

(assert (= (and b!302952 res!160601) b!302955))

(assert (= (and b!302955 res!160594) b!302958))

(assert (= (and b!302958 res!160596) b!302950))

(assert (= (and b!302950 res!160595) b!302953))

(assert (= (and b!302953 res!160600) b!302956))

(assert (= (and b!302956 res!160597) b!302957))

(assert (= (and b!302957 res!160598) b!302954))

(assert (= (and b!302954 res!160602) b!302951))

(declare-fun m!314393 () Bool)

(assert (=> b!302950 m!314393))

(declare-fun m!314395 () Bool)

(assert (=> b!302957 m!314395))

(declare-fun m!314397 () Bool)

(assert (=> start!30290 m!314397))

(declare-fun m!314399 () Bool)

(assert (=> start!30290 m!314399))

(declare-fun m!314401 () Bool)

(assert (=> b!302951 m!314401))

(declare-fun m!314403 () Bool)

(assert (=> b!302956 m!314403))

(assert (=> b!302956 m!314403))

(declare-fun m!314405 () Bool)

(assert (=> b!302956 m!314405))

(declare-fun m!314407 () Bool)

(assert (=> b!302954 m!314407))

(declare-fun m!314409 () Bool)

(assert (=> b!302955 m!314409))

(declare-fun m!314411 () Bool)

(assert (=> b!302958 m!314411))

(declare-fun m!314413 () Bool)

(assert (=> b!302953 m!314413))

(check-sat (not b!302958) (not b!302955) (not start!30290) (not b!302950) (not b!302953) (not b!302956) (not b!302954))
(check-sat)
