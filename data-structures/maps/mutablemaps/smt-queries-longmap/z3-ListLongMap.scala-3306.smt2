; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45792 () Bool)

(assert start!45792)

(declare-fun b!506491 () Bool)

(declare-fun res!307610 () Bool)

(declare-fun e!296445 () Bool)

(assert (=> b!506491 (=> (not res!307610) (not e!296445))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32508 0))(
  ( (array!32509 (arr!15631 (Array (_ BitVec 32) (_ BitVec 64))) (size!15995 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32508)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!506491 (= res!307610 (and (= (size!15995 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15995 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15995 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506492 () Bool)

(declare-fun e!296444 () Bool)

(declare-fun e!296448 () Bool)

(assert (=> b!506492 (= e!296444 (not e!296448))))

(declare-fun res!307609 () Bool)

(assert (=> b!506492 (=> res!307609 e!296448)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4105 0))(
  ( (MissingZero!4105 (index!18608 (_ BitVec 32))) (Found!4105 (index!18609 (_ BitVec 32))) (Intermediate!4105 (undefined!4917 Bool) (index!18610 (_ BitVec 32)) (x!47637 (_ BitVec 32))) (Undefined!4105) (MissingVacant!4105 (index!18611 (_ BitVec 32))) )
))
(declare-fun lt!231189 () SeekEntryResult!4105)

(declare-fun lt!231191 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32508 (_ BitVec 32)) SeekEntryResult!4105)

(assert (=> b!506492 (= res!307609 (= lt!231189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231191 (select (store (arr!15631 a!3235) i!1204 k0!2280) j!176) (array!32509 (store (arr!15631 a!3235) i!1204 k0!2280) (size!15995 a!3235)) mask!3524)))))

(declare-fun lt!231193 () (_ BitVec 32))

(assert (=> b!506492 (= lt!231189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231193 (select (arr!15631 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506492 (= lt!231191 (toIndex!0 (select (store (arr!15631 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!506492 (= lt!231193 (toIndex!0 (select (arr!15631 a!3235) j!176) mask!3524))))

(declare-fun e!296446 () Bool)

(assert (=> b!506492 e!296446))

(declare-fun res!307608 () Bool)

(assert (=> b!506492 (=> (not res!307608) (not e!296446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32508 (_ BitVec 32)) Bool)

(assert (=> b!506492 (= res!307608 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15490 0))(
  ( (Unit!15491) )
))
(declare-fun lt!231190 () Unit!15490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15490)

(assert (=> b!506492 (= lt!231190 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506493 () Bool)

(declare-fun e!296447 () Bool)

(assert (=> b!506493 (= e!296447 true)))

(assert (=> b!506493 false))

(declare-fun b!506494 () Bool)

(declare-fun res!307600 () Bool)

(assert (=> b!506494 (=> (not res!307600) (not e!296445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506494 (= res!307600 (validKeyInArray!0 (select (arr!15631 a!3235) j!176)))))

(declare-fun b!506495 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32508 (_ BitVec 32)) SeekEntryResult!4105)

(assert (=> b!506495 (= e!296446 (= (seekEntryOrOpen!0 (select (arr!15631 a!3235) j!176) a!3235 mask!3524) (Found!4105 j!176)))))

(declare-fun b!506496 () Bool)

(declare-fun res!307603 () Bool)

(assert (=> b!506496 (=> (not res!307603) (not e!296445))))

(assert (=> b!506496 (= res!307603 (validKeyInArray!0 k0!2280))))

(declare-fun b!506497 () Bool)

(declare-fun res!307604 () Bool)

(assert (=> b!506497 (=> (not res!307604) (not e!296444))))

(declare-datatypes ((List!9842 0))(
  ( (Nil!9839) (Cons!9838 (h!10715 (_ BitVec 64)) (t!16078 List!9842)) )
))
(declare-fun arrayNoDuplicates!0 (array!32508 (_ BitVec 32) List!9842) Bool)

(assert (=> b!506497 (= res!307604 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9839))))

(declare-fun b!506498 () Bool)

(declare-fun res!307601 () Bool)

(assert (=> b!506498 (=> (not res!307601) (not e!296445))))

(declare-fun arrayContainsKey!0 (array!32508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506498 (= res!307601 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506499 () Bool)

(assert (=> b!506499 (= e!296448 e!296447)))

(declare-fun res!307605 () Bool)

(assert (=> b!506499 (=> res!307605 e!296447)))

(declare-fun lt!231192 () Bool)

(assert (=> b!506499 (= res!307605 (or (and (not lt!231192) (undefined!4917 lt!231189)) (and (not lt!231192) (not (undefined!4917 lt!231189)))))))

(get-info :version)

(assert (=> b!506499 (= lt!231192 (not ((_ is Intermediate!4105) lt!231189)))))

(declare-fun res!307602 () Bool)

(assert (=> start!45792 (=> (not res!307602) (not e!296445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45792 (= res!307602 (validMask!0 mask!3524))))

(assert (=> start!45792 e!296445))

(assert (=> start!45792 true))

(declare-fun array_inv!11405 (array!32508) Bool)

(assert (=> start!45792 (array_inv!11405 a!3235)))

(declare-fun b!506500 () Bool)

(declare-fun res!307606 () Bool)

(assert (=> b!506500 (=> (not res!307606) (not e!296444))))

(assert (=> b!506500 (= res!307606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506501 () Bool)

(assert (=> b!506501 (= e!296445 e!296444)))

(declare-fun res!307607 () Bool)

(assert (=> b!506501 (=> (not res!307607) (not e!296444))))

(declare-fun lt!231194 () SeekEntryResult!4105)

(assert (=> b!506501 (= res!307607 (or (= lt!231194 (MissingZero!4105 i!1204)) (= lt!231194 (MissingVacant!4105 i!1204))))))

(assert (=> b!506501 (= lt!231194 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45792 res!307602) b!506491))

(assert (= (and b!506491 res!307610) b!506494))

(assert (= (and b!506494 res!307600) b!506496))

(assert (= (and b!506496 res!307603) b!506498))

(assert (= (and b!506498 res!307601) b!506501))

(assert (= (and b!506501 res!307607) b!506500))

(assert (= (and b!506500 res!307606) b!506497))

(assert (= (and b!506497 res!307604) b!506492))

(assert (= (and b!506492 res!307608) b!506495))

(assert (= (and b!506492 (not res!307609)) b!506499))

(assert (= (and b!506499 (not res!307605)) b!506493))

(declare-fun m!487213 () Bool)

(assert (=> b!506500 m!487213))

(declare-fun m!487215 () Bool)

(assert (=> b!506498 m!487215))

(declare-fun m!487217 () Bool)

(assert (=> b!506492 m!487217))

(declare-fun m!487219 () Bool)

(assert (=> b!506492 m!487219))

(declare-fun m!487221 () Bool)

(assert (=> b!506492 m!487221))

(declare-fun m!487223 () Bool)

(assert (=> b!506492 m!487223))

(assert (=> b!506492 m!487219))

(declare-fun m!487225 () Bool)

(assert (=> b!506492 m!487225))

(assert (=> b!506492 m!487219))

(declare-fun m!487227 () Bool)

(assert (=> b!506492 m!487227))

(declare-fun m!487229 () Bool)

(assert (=> b!506492 m!487229))

(declare-fun m!487231 () Bool)

(assert (=> b!506492 m!487231))

(assert (=> b!506492 m!487229))

(assert (=> b!506492 m!487229))

(declare-fun m!487233 () Bool)

(assert (=> b!506492 m!487233))

(assert (=> b!506495 m!487219))

(assert (=> b!506495 m!487219))

(declare-fun m!487235 () Bool)

(assert (=> b!506495 m!487235))

(assert (=> b!506494 m!487219))

(assert (=> b!506494 m!487219))

(declare-fun m!487237 () Bool)

(assert (=> b!506494 m!487237))

(declare-fun m!487239 () Bool)

(assert (=> b!506496 m!487239))

(declare-fun m!487241 () Bool)

(assert (=> b!506501 m!487241))

(declare-fun m!487243 () Bool)

(assert (=> start!45792 m!487243))

(declare-fun m!487245 () Bool)

(assert (=> start!45792 m!487245))

(declare-fun m!487247 () Bool)

(assert (=> b!506497 m!487247))

(check-sat (not b!506498) (not b!506492) (not b!506501) (not b!506497) (not start!45792) (not b!506494) (not b!506496) (not b!506500) (not b!506495))
(check-sat)
