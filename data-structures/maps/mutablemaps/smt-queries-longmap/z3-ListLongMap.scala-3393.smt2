; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46782 () Bool)

(assert start!46782)

(declare-fun b!516406 () Bool)

(declare-fun res!316122 () Bool)

(declare-fun e!301369 () Bool)

(assert (=> b!516406 (=> res!316122 e!301369)))

(declare-datatypes ((SeekEntryResult!4366 0))(
  ( (MissingZero!4366 (index!19652 (_ BitVec 32))) (Found!4366 (index!19653 (_ BitVec 32))) (Intermediate!4366 (undefined!5178 Bool) (index!19654 (_ BitVec 32)) (x!48636 (_ BitVec 32))) (Undefined!4366) (MissingVacant!4366 (index!19655 (_ BitVec 32))) )
))
(declare-fun lt!236453 () SeekEntryResult!4366)

(get-info :version)

(assert (=> b!516406 (= res!316122 (or (undefined!5178 lt!236453) (not ((_ is Intermediate!4366) lt!236453))))))

(declare-fun b!516408 () Bool)

(declare-fun res!316127 () Bool)

(declare-fun e!301370 () Bool)

(assert (=> b!516408 (=> (not res!316127) (not e!301370))))

(declare-datatypes ((array!33054 0))(
  ( (array!33055 (arr!15892 (Array (_ BitVec 32) (_ BitVec 64))) (size!16256 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33054)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33054 (_ BitVec 32)) Bool)

(assert (=> b!516408 (= res!316127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516409 () Bool)

(declare-fun e!301371 () Bool)

(assert (=> b!516409 (= e!301371 e!301370)))

(declare-fun res!316120 () Bool)

(assert (=> b!516409 (=> (not res!316120) (not e!301370))))

(declare-fun lt!236454 () SeekEntryResult!4366)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516409 (= res!316120 (or (= lt!236454 (MissingZero!4366 i!1204)) (= lt!236454 (MissingVacant!4366 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33054 (_ BitVec 32)) SeekEntryResult!4366)

(assert (=> b!516409 (= lt!236454 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!516410 () Bool)

(assert (=> b!516410 (= e!301370 (not e!301369))))

(declare-fun res!316124 () Bool)

(assert (=> b!516410 (=> res!316124 e!301369)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!236456 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33054 (_ BitVec 32)) SeekEntryResult!4366)

(assert (=> b!516410 (= res!316124 (= lt!236453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236456 (select (store (arr!15892 a!3235) i!1204 k0!2280) j!176) (array!33055 (store (arr!15892 a!3235) i!1204 k0!2280) (size!16256 a!3235)) mask!3524)))))

(declare-fun lt!236455 () (_ BitVec 32))

(assert (=> b!516410 (= lt!236453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236455 (select (arr!15892 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516410 (= lt!236456 (toIndex!0 (select (store (arr!15892 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!516410 (= lt!236455 (toIndex!0 (select (arr!15892 a!3235) j!176) mask!3524))))

(declare-fun e!301372 () Bool)

(assert (=> b!516410 e!301372))

(declare-fun res!316125 () Bool)

(assert (=> b!516410 (=> (not res!316125) (not e!301372))))

(assert (=> b!516410 (= res!316125 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15982 0))(
  ( (Unit!15983) )
))
(declare-fun lt!236452 () Unit!15982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33054 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15982)

(assert (=> b!516410 (= lt!236452 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516411 () Bool)

(assert (=> b!516411 (= e!301372 (= (seekEntryOrOpen!0 (select (arr!15892 a!3235) j!176) a!3235 mask!3524) (Found!4366 j!176)))))

(declare-fun b!516412 () Bool)

(declare-fun res!316130 () Bool)

(assert (=> b!516412 (=> (not res!316130) (not e!301370))))

(declare-datatypes ((List!10103 0))(
  ( (Nil!10100) (Cons!10099 (h!10997 (_ BitVec 64)) (t!16339 List!10103)) )
))
(declare-fun arrayNoDuplicates!0 (array!33054 (_ BitVec 32) List!10103) Bool)

(assert (=> b!516412 (= res!316130 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10100))))

(declare-fun res!316129 () Bool)

(assert (=> start!46782 (=> (not res!316129) (not e!301371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46782 (= res!316129 (validMask!0 mask!3524))))

(assert (=> start!46782 e!301371))

(assert (=> start!46782 true))

(declare-fun array_inv!11666 (array!33054) Bool)

(assert (=> start!46782 (array_inv!11666 a!3235)))

(declare-fun b!516407 () Bool)

(declare-fun res!316126 () Bool)

(assert (=> b!516407 (=> (not res!316126) (not e!301371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516407 (= res!316126 (validKeyInArray!0 (select (arr!15892 a!3235) j!176)))))

(declare-fun b!516413 () Bool)

(assert (=> b!516413 (= e!301369 (or (not (= (select (arr!15892 a!3235) (index!19654 lt!236453)) (select (arr!15892 a!3235) j!176))) (bvsle (x!48636 lt!236453) #b01111111111111111111111111111110)))))

(assert (=> b!516413 (and (bvslt (x!48636 lt!236453) #b01111111111111111111111111111110) (or (= (select (arr!15892 a!3235) (index!19654 lt!236453)) (select (arr!15892 a!3235) j!176)) (= (select (arr!15892 a!3235) (index!19654 lt!236453)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15892 a!3235) (index!19654 lt!236453)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516414 () Bool)

(declare-fun res!316121 () Bool)

(assert (=> b!516414 (=> (not res!316121) (not e!301371))))

(assert (=> b!516414 (= res!316121 (validKeyInArray!0 k0!2280))))

(declare-fun b!516415 () Bool)

(declare-fun res!316128 () Bool)

(assert (=> b!516415 (=> (not res!316128) (not e!301371))))

(assert (=> b!516415 (= res!316128 (and (= (size!16256 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16256 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16256 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516416 () Bool)

(declare-fun res!316123 () Bool)

(assert (=> b!516416 (=> (not res!316123) (not e!301371))))

(declare-fun arrayContainsKey!0 (array!33054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516416 (= res!316123 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46782 res!316129) b!516415))

(assert (= (and b!516415 res!316128) b!516407))

(assert (= (and b!516407 res!316126) b!516414))

(assert (= (and b!516414 res!316121) b!516416))

(assert (= (and b!516416 res!316123) b!516409))

(assert (= (and b!516409 res!316120) b!516408))

(assert (= (and b!516408 res!316127) b!516412))

(assert (= (and b!516412 res!316130) b!516410))

(assert (= (and b!516410 res!316125) b!516411))

(assert (= (and b!516410 (not res!316124)) b!516406))

(assert (= (and b!516406 (not res!316122)) b!516413))

(declare-fun m!497955 () Bool)

(assert (=> b!516412 m!497955))

(declare-fun m!497957 () Bool)

(assert (=> start!46782 m!497957))

(declare-fun m!497959 () Bool)

(assert (=> start!46782 m!497959))

(declare-fun m!497961 () Bool)

(assert (=> b!516413 m!497961))

(declare-fun m!497963 () Bool)

(assert (=> b!516413 m!497963))

(declare-fun m!497965 () Bool)

(assert (=> b!516409 m!497965))

(declare-fun m!497967 () Bool)

(assert (=> b!516414 m!497967))

(assert (=> b!516411 m!497963))

(assert (=> b!516411 m!497963))

(declare-fun m!497969 () Bool)

(assert (=> b!516411 m!497969))

(declare-fun m!497971 () Bool)

(assert (=> b!516408 m!497971))

(assert (=> b!516410 m!497963))

(declare-fun m!497973 () Bool)

(assert (=> b!516410 m!497973))

(declare-fun m!497975 () Bool)

(assert (=> b!516410 m!497975))

(declare-fun m!497977 () Bool)

(assert (=> b!516410 m!497977))

(declare-fun m!497979 () Bool)

(assert (=> b!516410 m!497979))

(assert (=> b!516410 m!497963))

(declare-fun m!497981 () Bool)

(assert (=> b!516410 m!497981))

(assert (=> b!516410 m!497963))

(assert (=> b!516410 m!497979))

(declare-fun m!497983 () Bool)

(assert (=> b!516410 m!497983))

(assert (=> b!516410 m!497979))

(declare-fun m!497985 () Bool)

(assert (=> b!516410 m!497985))

(declare-fun m!497987 () Bool)

(assert (=> b!516410 m!497987))

(declare-fun m!497989 () Bool)

(assert (=> b!516416 m!497989))

(assert (=> b!516407 m!497963))

(assert (=> b!516407 m!497963))

(declare-fun m!497991 () Bool)

(assert (=> b!516407 m!497991))

(check-sat (not b!516409) (not b!516412) (not b!516410) (not b!516411) (not b!516408) (not start!46782) (not b!516416) (not b!516407) (not b!516414))
(check-sat)
