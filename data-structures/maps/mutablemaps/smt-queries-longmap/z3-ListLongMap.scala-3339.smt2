; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46038 () Bool)

(assert start!46038)

(declare-fun b!509481 () Bool)

(declare-fun res!310478 () Bool)

(declare-fun e!297919 () Bool)

(assert (=> b!509481 (=> (not res!310478) (not e!297919))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32709 0))(
  ( (array!32710 (arr!15730 (Array (_ BitVec 32) (_ BitVec 64))) (size!16094 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32709)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509481 (= res!310478 (and (= (size!16094 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16094 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16094 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509482 () Bool)

(declare-fun res!310476 () Bool)

(declare-fun e!297922 () Bool)

(assert (=> b!509482 (=> (not res!310476) (not e!297922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32709 (_ BitVec 32)) Bool)

(assert (=> b!509482 (= res!310476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509483 () Bool)

(declare-fun res!310481 () Bool)

(assert (=> b!509483 (=> (not res!310481) (not e!297919))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509483 (= res!310481 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509485 () Bool)

(declare-fun res!310483 () Bool)

(assert (=> b!509485 (=> (not res!310483) (not e!297922))))

(declare-datatypes ((List!9941 0))(
  ( (Nil!9938) (Cons!9937 (h!10814 (_ BitVec 64)) (t!16177 List!9941)) )
))
(declare-fun arrayNoDuplicates!0 (array!32709 (_ BitVec 32) List!9941) Bool)

(assert (=> b!509485 (= res!310483 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9938))))

(declare-fun b!509486 () Bool)

(assert (=> b!509486 (= e!297919 e!297922)))

(declare-fun res!310484 () Bool)

(assert (=> b!509486 (=> (not res!310484) (not e!297922))))

(declare-datatypes ((SeekEntryResult!4204 0))(
  ( (MissingZero!4204 (index!19004 (_ BitVec 32))) (Found!4204 (index!19005 (_ BitVec 32))) (Intermediate!4204 (undefined!5016 Bool) (index!19006 (_ BitVec 32)) (x!48000 (_ BitVec 32))) (Undefined!4204) (MissingVacant!4204 (index!19007 (_ BitVec 32))) )
))
(declare-fun lt!232840 () SeekEntryResult!4204)

(assert (=> b!509486 (= res!310484 (or (= lt!232840 (MissingZero!4204 i!1204)) (= lt!232840 (MissingVacant!4204 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32709 (_ BitVec 32)) SeekEntryResult!4204)

(assert (=> b!509486 (= lt!232840 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!509487 () Bool)

(declare-fun e!297920 () Bool)

(assert (=> b!509487 (= e!297920 (= (seekEntryOrOpen!0 (select (arr!15730 a!3235) j!176) a!3235 mask!3524) (Found!4204 j!176)))))

(declare-fun b!509488 () Bool)

(assert (=> b!509488 (= e!297922 (not true))))

(declare-fun lt!232836 () (_ BitVec 32))

(declare-fun lt!232837 () SeekEntryResult!4204)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32709 (_ BitVec 32)) SeekEntryResult!4204)

(assert (=> b!509488 (= lt!232837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232836 (select (store (arr!15730 a!3235) i!1204 k0!2280) j!176) (array!32710 (store (arr!15730 a!3235) i!1204 k0!2280) (size!16094 a!3235)) mask!3524))))

(declare-fun lt!232841 () (_ BitVec 32))

(declare-fun lt!232839 () SeekEntryResult!4204)

(assert (=> b!509488 (= lt!232839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232841 (select (arr!15730 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509488 (= lt!232836 (toIndex!0 (select (store (arr!15730 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509488 (= lt!232841 (toIndex!0 (select (arr!15730 a!3235) j!176) mask!3524))))

(assert (=> b!509488 e!297920))

(declare-fun res!310480 () Bool)

(assert (=> b!509488 (=> (not res!310480) (not e!297920))))

(assert (=> b!509488 (= res!310480 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15658 0))(
  ( (Unit!15659) )
))
(declare-fun lt!232838 () Unit!15658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15658)

(assert (=> b!509488 (= lt!232838 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509489 () Bool)

(declare-fun res!310479 () Bool)

(assert (=> b!509489 (=> (not res!310479) (not e!297919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509489 (= res!310479 (validKeyInArray!0 k0!2280))))

(declare-fun b!509484 () Bool)

(declare-fun res!310477 () Bool)

(assert (=> b!509484 (=> (not res!310477) (not e!297919))))

(assert (=> b!509484 (= res!310477 (validKeyInArray!0 (select (arr!15730 a!3235) j!176)))))

(declare-fun res!310482 () Bool)

(assert (=> start!46038 (=> (not res!310482) (not e!297919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46038 (= res!310482 (validMask!0 mask!3524))))

(assert (=> start!46038 e!297919))

(assert (=> start!46038 true))

(declare-fun array_inv!11504 (array!32709) Bool)

(assert (=> start!46038 (array_inv!11504 a!3235)))

(assert (= (and start!46038 res!310482) b!509481))

(assert (= (and b!509481 res!310478) b!509484))

(assert (= (and b!509484 res!310477) b!509489))

(assert (= (and b!509489 res!310479) b!509483))

(assert (= (and b!509483 res!310481) b!509486))

(assert (= (and b!509486 res!310484) b!509482))

(assert (= (and b!509482 res!310476) b!509485))

(assert (= (and b!509485 res!310483) b!509488))

(assert (= (and b!509488 res!310480) b!509487))

(declare-fun m!490483 () Bool)

(assert (=> b!509485 m!490483))

(declare-fun m!490485 () Bool)

(assert (=> b!509483 m!490485))

(declare-fun m!490487 () Bool)

(assert (=> b!509486 m!490487))

(declare-fun m!490489 () Bool)

(assert (=> b!509482 m!490489))

(declare-fun m!490491 () Bool)

(assert (=> b!509484 m!490491))

(assert (=> b!509484 m!490491))

(declare-fun m!490493 () Bool)

(assert (=> b!509484 m!490493))

(declare-fun m!490495 () Bool)

(assert (=> start!46038 m!490495))

(declare-fun m!490497 () Bool)

(assert (=> start!46038 m!490497))

(declare-fun m!490499 () Bool)

(assert (=> b!509489 m!490499))

(assert (=> b!509487 m!490491))

(assert (=> b!509487 m!490491))

(declare-fun m!490501 () Bool)

(assert (=> b!509487 m!490501))

(assert (=> b!509488 m!490491))

(declare-fun m!490503 () Bool)

(assert (=> b!509488 m!490503))

(declare-fun m!490505 () Bool)

(assert (=> b!509488 m!490505))

(declare-fun m!490507 () Bool)

(assert (=> b!509488 m!490507))

(declare-fun m!490509 () Bool)

(assert (=> b!509488 m!490509))

(declare-fun m!490511 () Bool)

(assert (=> b!509488 m!490511))

(assert (=> b!509488 m!490507))

(assert (=> b!509488 m!490491))

(declare-fun m!490513 () Bool)

(assert (=> b!509488 m!490513))

(assert (=> b!509488 m!490491))

(declare-fun m!490515 () Bool)

(assert (=> b!509488 m!490515))

(assert (=> b!509488 m!490507))

(declare-fun m!490517 () Bool)

(assert (=> b!509488 m!490517))

(check-sat (not b!509484) (not start!46038) (not b!509485) (not b!509483) (not b!509482) (not b!509488) (not b!509487) (not b!509489) (not b!509486))
(check-sat)
