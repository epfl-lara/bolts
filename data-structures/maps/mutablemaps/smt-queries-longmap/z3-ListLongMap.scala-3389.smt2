; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46758 () Bool)

(assert start!46758)

(declare-fun b!516010 () Bool)

(declare-fun e!301190 () Bool)

(assert (=> b!516010 (= e!301190 true)))

(declare-datatypes ((SeekEntryResult!4354 0))(
  ( (MissingZero!4354 (index!19604 (_ BitVec 32))) (Found!4354 (index!19605 (_ BitVec 32))) (Intermediate!4354 (undefined!5166 Bool) (index!19606 (_ BitVec 32)) (x!48592 (_ BitVec 32))) (Undefined!4354) (MissingVacant!4354 (index!19607 (_ BitVec 32))) )
))
(declare-fun lt!236276 () SeekEntryResult!4354)

(declare-datatypes ((array!33030 0))(
  ( (array!33031 (arr!15880 (Array (_ BitVec 32) (_ BitVec 64))) (size!16244 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33030)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!516010 (and (bvslt (x!48592 lt!236276) #b01111111111111111111111111111110) (or (= (select (arr!15880 a!3235) (index!19606 lt!236276)) (select (arr!15880 a!3235) j!176)) (= (select (arr!15880 a!3235) (index!19606 lt!236276)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15880 a!3235) (index!19606 lt!236276)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516011 () Bool)

(declare-fun res!315728 () Bool)

(declare-fun e!301188 () Bool)

(assert (=> b!516011 (=> (not res!315728) (not e!301188))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516011 (= res!315728 (and (= (size!16244 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16244 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16244 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516012 () Bool)

(declare-fun e!301189 () Bool)

(assert (=> b!516012 (= e!301189 (not e!301190))))

(declare-fun res!315730 () Bool)

(assert (=> b!516012 (=> res!315730 e!301190)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!236273 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33030 (_ BitVec 32)) SeekEntryResult!4354)

(assert (=> b!516012 (= res!315730 (= lt!236276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236273 (select (store (arr!15880 a!3235) i!1204 k0!2280) j!176) (array!33031 (store (arr!15880 a!3235) i!1204 k0!2280) (size!16244 a!3235)) mask!3524)))))

(declare-fun lt!236274 () (_ BitVec 32))

(assert (=> b!516012 (= lt!236276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236274 (select (arr!15880 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516012 (= lt!236273 (toIndex!0 (select (store (arr!15880 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!516012 (= lt!236274 (toIndex!0 (select (arr!15880 a!3235) j!176) mask!3524))))

(declare-fun e!301192 () Bool)

(assert (=> b!516012 e!301192))

(declare-fun res!315727 () Bool)

(assert (=> b!516012 (=> (not res!315727) (not e!301192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33030 (_ BitVec 32)) Bool)

(assert (=> b!516012 (= res!315727 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15958 0))(
  ( (Unit!15959) )
))
(declare-fun lt!236272 () Unit!15958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33030 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15958)

(assert (=> b!516012 (= lt!236272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!315729 () Bool)

(assert (=> start!46758 (=> (not res!315729) (not e!301188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46758 (= res!315729 (validMask!0 mask!3524))))

(assert (=> start!46758 e!301188))

(assert (=> start!46758 true))

(declare-fun array_inv!11654 (array!33030) Bool)

(assert (=> start!46758 (array_inv!11654 a!3235)))

(declare-fun b!516013 () Bool)

(declare-fun res!315726 () Bool)

(assert (=> b!516013 (=> res!315726 e!301190)))

(get-info :version)

(assert (=> b!516013 (= res!315726 (or (undefined!5166 lt!236276) (not ((_ is Intermediate!4354) lt!236276))))))

(declare-fun b!516014 () Bool)

(declare-fun res!315734 () Bool)

(assert (=> b!516014 (=> (not res!315734) (not e!301189))))

(assert (=> b!516014 (= res!315734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516015 () Bool)

(declare-fun res!315732 () Bool)

(assert (=> b!516015 (=> (not res!315732) (not e!301188))))

(declare-fun arrayContainsKey!0 (array!33030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516015 (= res!315732 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516016 () Bool)

(declare-fun res!315725 () Bool)

(assert (=> b!516016 (=> (not res!315725) (not e!301188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516016 (= res!315725 (validKeyInArray!0 (select (arr!15880 a!3235) j!176)))))

(declare-fun b!516017 () Bool)

(assert (=> b!516017 (= e!301188 e!301189)))

(declare-fun res!315724 () Bool)

(assert (=> b!516017 (=> (not res!315724) (not e!301189))))

(declare-fun lt!236275 () SeekEntryResult!4354)

(assert (=> b!516017 (= res!315724 (or (= lt!236275 (MissingZero!4354 i!1204)) (= lt!236275 (MissingVacant!4354 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33030 (_ BitVec 32)) SeekEntryResult!4354)

(assert (=> b!516017 (= lt!236275 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!516018 () Bool)

(declare-fun res!315733 () Bool)

(assert (=> b!516018 (=> (not res!315733) (not e!301189))))

(declare-datatypes ((List!10091 0))(
  ( (Nil!10088) (Cons!10087 (h!10985 (_ BitVec 64)) (t!16327 List!10091)) )
))
(declare-fun arrayNoDuplicates!0 (array!33030 (_ BitVec 32) List!10091) Bool)

(assert (=> b!516018 (= res!315733 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10088))))

(declare-fun b!516019 () Bool)

(assert (=> b!516019 (= e!301192 (= (seekEntryOrOpen!0 (select (arr!15880 a!3235) j!176) a!3235 mask!3524) (Found!4354 j!176)))))

(declare-fun b!516020 () Bool)

(declare-fun res!315731 () Bool)

(assert (=> b!516020 (=> (not res!315731) (not e!301188))))

(assert (=> b!516020 (= res!315731 (validKeyInArray!0 k0!2280))))

(assert (= (and start!46758 res!315729) b!516011))

(assert (= (and b!516011 res!315728) b!516016))

(assert (= (and b!516016 res!315725) b!516020))

(assert (= (and b!516020 res!315731) b!516015))

(assert (= (and b!516015 res!315732) b!516017))

(assert (= (and b!516017 res!315724) b!516014))

(assert (= (and b!516014 res!315734) b!516018))

(assert (= (and b!516018 res!315733) b!516012))

(assert (= (and b!516012 res!315727) b!516019))

(assert (= (and b!516012 (not res!315730)) b!516013))

(assert (= (and b!516013 (not res!315726)) b!516010))

(declare-fun m!497499 () Bool)

(assert (=> b!516014 m!497499))

(declare-fun m!497501 () Bool)

(assert (=> b!516017 m!497501))

(declare-fun m!497503 () Bool)

(assert (=> b!516019 m!497503))

(assert (=> b!516019 m!497503))

(declare-fun m!497505 () Bool)

(assert (=> b!516019 m!497505))

(declare-fun m!497507 () Bool)

(assert (=> b!516020 m!497507))

(declare-fun m!497509 () Bool)

(assert (=> b!516015 m!497509))

(declare-fun m!497511 () Bool)

(assert (=> b!516018 m!497511))

(assert (=> b!516016 m!497503))

(assert (=> b!516016 m!497503))

(declare-fun m!497513 () Bool)

(assert (=> b!516016 m!497513))

(declare-fun m!497515 () Bool)

(assert (=> b!516012 m!497515))

(declare-fun m!497517 () Bool)

(assert (=> b!516012 m!497517))

(declare-fun m!497519 () Bool)

(assert (=> b!516012 m!497519))

(assert (=> b!516012 m!497503))

(declare-fun m!497521 () Bool)

(assert (=> b!516012 m!497521))

(assert (=> b!516012 m!497503))

(declare-fun m!497523 () Bool)

(assert (=> b!516012 m!497523))

(assert (=> b!516012 m!497503))

(assert (=> b!516012 m!497519))

(declare-fun m!497525 () Bool)

(assert (=> b!516012 m!497525))

(declare-fun m!497527 () Bool)

(assert (=> b!516012 m!497527))

(assert (=> b!516012 m!497519))

(declare-fun m!497529 () Bool)

(assert (=> b!516012 m!497529))

(declare-fun m!497531 () Bool)

(assert (=> b!516010 m!497531))

(assert (=> b!516010 m!497503))

(declare-fun m!497533 () Bool)

(assert (=> start!46758 m!497533))

(declare-fun m!497535 () Bool)

(assert (=> start!46758 m!497535))

(check-sat (not b!516012) (not start!46758) (not b!516017) (not b!516016) (not b!516015) (not b!516018) (not b!516019) (not b!516020) (not b!516014))
(check-sat)
