; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31832 () Bool)

(assert start!31832)

(declare-fun b!317859 () Bool)

(declare-fun e!197565 () Bool)

(declare-fun e!197567 () Bool)

(assert (=> b!317859 (= e!197565 e!197567)))

(declare-fun res!172600 () Bool)

(assert (=> b!317859 (=> (not res!172600) (not e!197567))))

(declare-datatypes ((array!16201 0))(
  ( (array!16202 (arr!7664 (Array (_ BitVec 32) (_ BitVec 64))) (size!8016 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16201)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2815 0))(
  ( (MissingZero!2815 (index!13436 (_ BitVec 32))) (Found!2815 (index!13437 (_ BitVec 32))) (Intermediate!2815 (undefined!3627 Bool) (index!13438 (_ BitVec 32)) (x!31659 (_ BitVec 32))) (Undefined!2815) (MissingVacant!2815 (index!13439 (_ BitVec 32))) )
))
(declare-fun lt!155161 () SeekEntryResult!2815)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16201 (_ BitVec 32)) SeekEntryResult!2815)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317859 (= res!172600 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155161))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317859 (= lt!155161 (Intermediate!2815 false resIndex!52 resX!52))))

(declare-fun lt!155162 () array!16201)

(declare-fun b!317860 () Bool)

(declare-fun e!197569 () Bool)

(declare-fun lt!155160 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317860 (= e!197569 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155162 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155160 k0!2441 lt!155162 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317860 (= lt!155162 (array!16202 (store (arr!7664 a!3293) i!1240 k0!2441) (size!8016 a!3293)))))

(declare-fun b!317861 () Bool)

(declare-fun res!172602 () Bool)

(assert (=> b!317861 (=> (not res!172602) (not e!197565))))

(assert (=> b!317861 (= res!172602 (and (= (size!8016 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8016 a!3293))))))

(declare-fun b!317862 () Bool)

(declare-fun e!197566 () Bool)

(assert (=> b!317862 (= e!197567 e!197566)))

(declare-fun res!172599 () Bool)

(assert (=> b!317862 (=> (not res!172599) (not e!197566))))

(declare-fun lt!155159 () SeekEntryResult!2815)

(assert (=> b!317862 (= res!172599 (and (= lt!155159 lt!155161) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7664 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317862 (= lt!155159 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!317863 () Bool)

(declare-fun res!172598 () Bool)

(assert (=> b!317863 (=> (not res!172598) (not e!197565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16201 (_ BitVec 32)) Bool)

(assert (=> b!317863 (= res!172598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317864 () Bool)

(declare-fun res!172601 () Bool)

(assert (=> b!317864 (=> (not res!172601) (not e!197567))))

(assert (=> b!317864 (= res!172601 (and (= (select (arr!7664 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8016 a!3293))))))

(declare-fun b!317865 () Bool)

(declare-fun res!172603 () Bool)

(assert (=> b!317865 (=> (not res!172603) (not e!197565))))

(declare-fun arrayContainsKey!0 (array!16201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317865 (= res!172603 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!172596 () Bool)

(assert (=> start!31832 (=> (not res!172596) (not e!197565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31832 (= res!172596 (validMask!0 mask!3709))))

(assert (=> start!31832 e!197565))

(declare-fun array_inv!5618 (array!16201) Bool)

(assert (=> start!31832 (array_inv!5618 a!3293)))

(assert (=> start!31832 true))

(declare-fun b!317866 () Bool)

(declare-fun res!172605 () Bool)

(assert (=> b!317866 (=> (not res!172605) (not e!197565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317866 (= res!172605 (validKeyInArray!0 k0!2441))))

(declare-fun b!317867 () Bool)

(declare-fun res!172597 () Bool)

(assert (=> b!317867 (=> (not res!172597) (not e!197565))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16201 (_ BitVec 32)) SeekEntryResult!2815)

(assert (=> b!317867 (= res!172597 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2815 i!1240)))))

(declare-fun b!317868 () Bool)

(assert (=> b!317868 (= e!197566 (not true))))

(assert (=> b!317868 e!197569))

(declare-fun res!172604 () Bool)

(assert (=> b!317868 (=> (not res!172604) (not e!197569))))

(assert (=> b!317868 (= res!172604 (= lt!155159 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155160 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317868 (= lt!155160 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!31832 res!172596) b!317861))

(assert (= (and b!317861 res!172602) b!317866))

(assert (= (and b!317866 res!172605) b!317865))

(assert (= (and b!317865 res!172603) b!317867))

(assert (= (and b!317867 res!172597) b!317863))

(assert (= (and b!317863 res!172598) b!317859))

(assert (= (and b!317859 res!172600) b!317864))

(assert (= (and b!317864 res!172601) b!317862))

(assert (= (and b!317862 res!172599) b!317868))

(assert (= (and b!317868 res!172604) b!317860))

(declare-fun m!326577 () Bool)

(assert (=> b!317860 m!326577))

(declare-fun m!326579 () Bool)

(assert (=> b!317860 m!326579))

(declare-fun m!326581 () Bool)

(assert (=> b!317860 m!326581))

(declare-fun m!326583 () Bool)

(assert (=> b!317866 m!326583))

(declare-fun m!326585 () Bool)

(assert (=> b!317865 m!326585))

(declare-fun m!326587 () Bool)

(assert (=> b!317862 m!326587))

(declare-fun m!326589 () Bool)

(assert (=> b!317862 m!326589))

(declare-fun m!326591 () Bool)

(assert (=> b!317864 m!326591))

(declare-fun m!326593 () Bool)

(assert (=> b!317863 m!326593))

(declare-fun m!326595 () Bool)

(assert (=> start!31832 m!326595))

(declare-fun m!326597 () Bool)

(assert (=> start!31832 m!326597))

(declare-fun m!326599 () Bool)

(assert (=> b!317867 m!326599))

(declare-fun m!326601 () Bool)

(assert (=> b!317868 m!326601))

(declare-fun m!326603 () Bool)

(assert (=> b!317868 m!326603))

(declare-fun m!326605 () Bool)

(assert (=> b!317859 m!326605))

(assert (=> b!317859 m!326605))

(declare-fun m!326607 () Bool)

(assert (=> b!317859 m!326607))

(check-sat (not b!317865) (not start!31832) (not b!317867) (not b!317862) (not b!317859) (not b!317860) (not b!317863) (not b!317866) (not b!317868))
