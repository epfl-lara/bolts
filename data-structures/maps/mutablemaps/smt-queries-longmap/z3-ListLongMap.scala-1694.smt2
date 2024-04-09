; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31058 () Bool)

(assert start!31058)

(declare-fun b!312144 () Bool)

(declare-fun res!168762 () Bool)

(declare-fun e!194663 () Bool)

(assert (=> b!312144 (=> (not res!168762) (not e!194663))))

(declare-datatypes ((array!15958 0))(
  ( (array!15959 (arr!7559 (Array (_ BitVec 32) (_ BitVec 64))) (size!7911 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15958)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312144 (= res!168762 (and (= (select (arr!7559 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7911 a!3293))))))

(declare-fun b!312145 () Bool)

(declare-fun e!194664 () Bool)

(declare-fun e!194665 () Bool)

(assert (=> b!312145 (= e!194664 (not e!194665))))

(declare-fun res!168759 () Bool)

(assert (=> b!312145 (=> res!168759 e!194665)))

(declare-fun lt!152919 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2710 0))(
  ( (MissingZero!2710 (index!13016 (_ BitVec 32))) (Found!2710 (index!13017 (_ BitVec 32))) (Intermediate!2710 (undefined!3522 Bool) (index!13018 (_ BitVec 32)) (x!31190 (_ BitVec 32))) (Undefined!2710) (MissingVacant!2710 (index!13019 (_ BitVec 32))) )
))
(declare-fun lt!152915 () SeekEntryResult!2710)

(declare-fun lt!152916 () SeekEntryResult!2710)

(assert (=> b!312145 (= res!168759 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152919 #b00000000000000000000000000000000) (bvsge lt!152919 (size!7911 a!3293)) (not (= lt!152915 lt!152916))))))

(declare-fun lt!152921 () SeekEntryResult!2710)

(declare-fun lt!152914 () SeekEntryResult!2710)

(assert (=> b!312145 (= lt!152921 lt!152914)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152918 () array!15958)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15958 (_ BitVec 32)) SeekEntryResult!2710)

(assert (=> b!312145 (= lt!152914 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152919 k0!2441 lt!152918 mask!3709))))

(assert (=> b!312145 (= lt!152921 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152918 mask!3709))))

(assert (=> b!312145 (= lt!152918 (array!15959 (store (arr!7559 a!3293) i!1240 k0!2441) (size!7911 a!3293)))))

(declare-fun lt!152920 () SeekEntryResult!2710)

(assert (=> b!312145 (= lt!152920 lt!152915)))

(assert (=> b!312145 (= lt!152915 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152919 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312145 (= lt!152919 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312146 () Bool)

(declare-fun res!168756 () Bool)

(declare-fun e!194661 () Bool)

(assert (=> b!312146 (=> (not res!168756) (not e!194661))))

(declare-fun arrayContainsKey!0 (array!15958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312146 (= res!168756 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312147 () Bool)

(declare-fun res!168757 () Bool)

(assert (=> b!312147 (=> (not res!168757) (not e!194661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312147 (= res!168757 (validKeyInArray!0 k0!2441))))

(declare-fun b!312148 () Bool)

(declare-fun res!168763 () Bool)

(assert (=> b!312148 (=> (not res!168763) (not e!194661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15958 (_ BitVec 32)) Bool)

(assert (=> b!312148 (= res!168763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312149 () Bool)

(declare-fun res!168764 () Bool)

(assert (=> b!312149 (=> (not res!168764) (not e!194661))))

(assert (=> b!312149 (= res!168764 (and (= (size!7911 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7911 a!3293))))))

(declare-fun res!168760 () Bool)

(assert (=> start!31058 (=> (not res!168760) (not e!194661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31058 (= res!168760 (validMask!0 mask!3709))))

(assert (=> start!31058 e!194661))

(declare-fun array_inv!5513 (array!15958) Bool)

(assert (=> start!31058 (array_inv!5513 a!3293)))

(assert (=> start!31058 true))

(declare-fun b!312150 () Bool)

(declare-fun res!168765 () Bool)

(assert (=> b!312150 (=> (not res!168765) (not e!194661))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15958 (_ BitVec 32)) SeekEntryResult!2710)

(assert (=> b!312150 (= res!168765 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2710 i!1240)))))

(declare-fun b!312151 () Bool)

(assert (=> b!312151 (= e!194665 true)))

(assert (=> b!312151 (= lt!152914 lt!152915)))

(declare-datatypes ((Unit!9618 0))(
  ( (Unit!9619) )
))
(declare-fun lt!152917 () Unit!9618)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15958 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9618)

(assert (=> b!312151 (= lt!152917 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152919 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312152 () Bool)

(assert (=> b!312152 (= e!194661 e!194663)))

(declare-fun res!168761 () Bool)

(assert (=> b!312152 (=> (not res!168761) (not e!194663))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312152 (= res!168761 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152916))))

(assert (=> b!312152 (= lt!152916 (Intermediate!2710 false resIndex!52 resX!52))))

(declare-fun b!312153 () Bool)

(assert (=> b!312153 (= e!194663 e!194664)))

(declare-fun res!168758 () Bool)

(assert (=> b!312153 (=> (not res!168758) (not e!194664))))

(assert (=> b!312153 (= res!168758 (and (= lt!152920 lt!152916) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7559 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312153 (= lt!152920 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(assert (= (and start!31058 res!168760) b!312149))

(assert (= (and b!312149 res!168764) b!312147))

(assert (= (and b!312147 res!168757) b!312146))

(assert (= (and b!312146 res!168756) b!312150))

(assert (= (and b!312150 res!168765) b!312148))

(assert (= (and b!312148 res!168763) b!312152))

(assert (= (and b!312152 res!168761) b!312144))

(assert (= (and b!312144 res!168762) b!312153))

(assert (= (and b!312153 res!168758) b!312145))

(assert (= (and b!312145 (not res!168759)) b!312151))

(declare-fun m!322259 () Bool)

(assert (=> b!312145 m!322259))

(declare-fun m!322261 () Bool)

(assert (=> b!312145 m!322261))

(declare-fun m!322263 () Bool)

(assert (=> b!312145 m!322263))

(declare-fun m!322265 () Bool)

(assert (=> b!312145 m!322265))

(declare-fun m!322267 () Bool)

(assert (=> b!312145 m!322267))

(declare-fun m!322269 () Bool)

(assert (=> b!312148 m!322269))

(declare-fun m!322271 () Bool)

(assert (=> b!312146 m!322271))

(declare-fun m!322273 () Bool)

(assert (=> b!312150 m!322273))

(declare-fun m!322275 () Bool)

(assert (=> b!312153 m!322275))

(declare-fun m!322277 () Bool)

(assert (=> b!312153 m!322277))

(declare-fun m!322279 () Bool)

(assert (=> b!312152 m!322279))

(assert (=> b!312152 m!322279))

(declare-fun m!322281 () Bool)

(assert (=> b!312152 m!322281))

(declare-fun m!322283 () Bool)

(assert (=> start!31058 m!322283))

(declare-fun m!322285 () Bool)

(assert (=> start!31058 m!322285))

(declare-fun m!322287 () Bool)

(assert (=> b!312144 m!322287))

(declare-fun m!322289 () Bool)

(assert (=> b!312151 m!322289))

(declare-fun m!322291 () Bool)

(assert (=> b!312147 m!322291))

(check-sat (not b!312145) (not b!312152) (not b!312146) (not b!312148) (not start!31058) (not b!312151) (not b!312147) (not b!312150) (not b!312153))
(check-sat)
