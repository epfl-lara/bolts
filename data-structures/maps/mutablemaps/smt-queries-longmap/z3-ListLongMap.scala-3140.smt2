; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44274 () Bool)

(assert start!44274)

(declare-fun b!486572 () Bool)

(declare-fun res!290111 () Bool)

(declare-fun e!286406 () Bool)

(assert (=> b!486572 (=> (not res!290111) (not e!286406))))

(declare-datatypes ((array!31485 0))(
  ( (array!31486 (arr!15133 (Array (_ BitVec 32) (_ BitVec 64))) (size!15497 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31485)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486572 (= res!290111 (validKeyInArray!0 (select (arr!15133 a!3235) j!176)))))

(declare-fun b!486573 () Bool)

(declare-fun res!290114 () Bool)

(assert (=> b!486573 (=> (not res!290114) (not e!286406))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486573 (= res!290114 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486574 () Bool)

(declare-fun e!286408 () Bool)

(assert (=> b!486574 (= e!286406 e!286408)))

(declare-fun res!290113 () Bool)

(assert (=> b!486574 (=> (not res!290113) (not e!286408))))

(declare-datatypes ((SeekEntryResult!3607 0))(
  ( (MissingZero!3607 (index!16607 (_ BitVec 32))) (Found!3607 (index!16608 (_ BitVec 32))) (Intermediate!3607 (undefined!4419 Bool) (index!16609 (_ BitVec 32)) (x!45766 (_ BitVec 32))) (Undefined!3607) (MissingVacant!3607 (index!16610 (_ BitVec 32))) )
))
(declare-fun lt!219811 () SeekEntryResult!3607)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486574 (= res!290113 (or (= lt!219811 (MissingZero!3607 i!1204)) (= lt!219811 (MissingVacant!3607 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31485 (_ BitVec 32)) SeekEntryResult!3607)

(assert (=> b!486574 (= lt!219811 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!486575 () Bool)

(declare-fun res!290112 () Bool)

(assert (=> b!486575 (=> (not res!290112) (not e!286406))))

(assert (=> b!486575 (= res!290112 (and (= (size!15497 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15497 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15497 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486576 () Bool)

(declare-fun res!290110 () Bool)

(assert (=> b!486576 (=> (not res!290110) (not e!286406))))

(assert (=> b!486576 (= res!290110 (validKeyInArray!0 k0!2280))))

(declare-fun b!486578 () Bool)

(declare-fun res!290108 () Bool)

(assert (=> b!486578 (=> (not res!290108) (not e!286408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31485 (_ BitVec 32)) Bool)

(assert (=> b!486578 (= res!290108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486577 () Bool)

(assert (=> b!486577 (= e!286408 false)))

(declare-fun lt!219812 () Bool)

(declare-datatypes ((List!9344 0))(
  ( (Nil!9341) (Cons!9340 (h!10196 (_ BitVec 64)) (t!15580 List!9344)) )
))
(declare-fun arrayNoDuplicates!0 (array!31485 (_ BitVec 32) List!9344) Bool)

(assert (=> b!486577 (= lt!219812 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9341))))

(declare-fun res!290109 () Bool)

(assert (=> start!44274 (=> (not res!290109) (not e!286406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44274 (= res!290109 (validMask!0 mask!3524))))

(assert (=> start!44274 e!286406))

(assert (=> start!44274 true))

(declare-fun array_inv!10907 (array!31485) Bool)

(assert (=> start!44274 (array_inv!10907 a!3235)))

(assert (= (and start!44274 res!290109) b!486575))

(assert (= (and b!486575 res!290112) b!486572))

(assert (= (and b!486572 res!290111) b!486576))

(assert (= (and b!486576 res!290110) b!486573))

(assert (= (and b!486573 res!290114) b!486574))

(assert (= (and b!486574 res!290113) b!486578))

(assert (= (and b!486578 res!290108) b!486577))

(declare-fun m!466501 () Bool)

(assert (=> b!486574 m!466501))

(declare-fun m!466503 () Bool)

(assert (=> b!486577 m!466503))

(declare-fun m!466505 () Bool)

(assert (=> b!486576 m!466505))

(declare-fun m!466507 () Bool)

(assert (=> b!486573 m!466507))

(declare-fun m!466509 () Bool)

(assert (=> start!44274 m!466509))

(declare-fun m!466511 () Bool)

(assert (=> start!44274 m!466511))

(declare-fun m!466513 () Bool)

(assert (=> b!486572 m!466513))

(assert (=> b!486572 m!466513))

(declare-fun m!466515 () Bool)

(assert (=> b!486572 m!466515))

(declare-fun m!466517 () Bool)

(assert (=> b!486578 m!466517))

(check-sat (not b!486577) (not b!486576) (not start!44274) (not b!486572) (not b!486578) (not b!486573) (not b!486574))
(check-sat)
