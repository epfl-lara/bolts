; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46752 () Bool)

(assert start!46752)

(declare-fun b!515911 () Bool)

(declare-fun e!301146 () Bool)

(declare-fun e!301145 () Bool)

(assert (=> b!515911 (= e!301146 (not e!301145))))

(declare-fun res!315626 () Bool)

(assert (=> b!515911 (=> res!315626 e!301145)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33024 0))(
  ( (array!33025 (arr!15877 (Array (_ BitVec 32) (_ BitVec 64))) (size!16241 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33024)

(declare-datatypes ((SeekEntryResult!4351 0))(
  ( (MissingZero!4351 (index!19592 (_ BitVec 32))) (Found!4351 (index!19593 (_ BitVec 32))) (Intermediate!4351 (undefined!5163 Bool) (index!19594 (_ BitVec 32)) (x!48581 (_ BitVec 32))) (Undefined!4351) (MissingVacant!4351 (index!19595 (_ BitVec 32))) )
))
(declare-fun lt!236230 () SeekEntryResult!4351)

(declare-fun lt!236229 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33024 (_ BitVec 32)) SeekEntryResult!4351)

(assert (=> b!515911 (= res!315626 (= lt!236230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236229 (select (store (arr!15877 a!3235) i!1204 k0!2280) j!176) (array!33025 (store (arr!15877 a!3235) i!1204 k0!2280) (size!16241 a!3235)) mask!3524)))))

(declare-fun lt!236231 () (_ BitVec 32))

(assert (=> b!515911 (= lt!236230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236231 (select (arr!15877 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515911 (= lt!236229 (toIndex!0 (select (store (arr!15877 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515911 (= lt!236231 (toIndex!0 (select (arr!15877 a!3235) j!176) mask!3524))))

(declare-fun e!301147 () Bool)

(assert (=> b!515911 e!301147))

(declare-fun res!315631 () Bool)

(assert (=> b!515911 (=> (not res!315631) (not e!301147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33024 (_ BitVec 32)) Bool)

(assert (=> b!515911 (= res!315631 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15952 0))(
  ( (Unit!15953) )
))
(declare-fun lt!236227 () Unit!15952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33024 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15952)

(assert (=> b!515911 (= lt!236227 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515912 () Bool)

(declare-fun res!315632 () Bool)

(declare-fun e!301144 () Bool)

(assert (=> b!515912 (=> (not res!315632) (not e!301144))))

(assert (=> b!515912 (= res!315632 (and (= (size!16241 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16241 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16241 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515913 () Bool)

(declare-fun res!315634 () Bool)

(assert (=> b!515913 (=> (not res!315634) (not e!301146))))

(assert (=> b!515913 (= res!315634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515914 () Bool)

(assert (=> b!515914 (= e!301145 true)))

(assert (=> b!515914 (and (bvslt (x!48581 lt!236230) #b01111111111111111111111111111110) (or (= (select (arr!15877 a!3235) (index!19594 lt!236230)) (select (arr!15877 a!3235) j!176)) (= (select (arr!15877 a!3235) (index!19594 lt!236230)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15877 a!3235) (index!19594 lt!236230)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515915 () Bool)

(declare-fun res!315629 () Bool)

(assert (=> b!515915 (=> (not res!315629) (not e!301146))))

(declare-datatypes ((List!10088 0))(
  ( (Nil!10085) (Cons!10084 (h!10982 (_ BitVec 64)) (t!16324 List!10088)) )
))
(declare-fun arrayNoDuplicates!0 (array!33024 (_ BitVec 32) List!10088) Bool)

(assert (=> b!515915 (= res!315629 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10085))))

(declare-fun b!515916 () Bool)

(declare-fun res!315625 () Bool)

(assert (=> b!515916 (=> (not res!315625) (not e!301144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515916 (= res!315625 (validKeyInArray!0 k0!2280))))

(declare-fun res!315630 () Bool)

(assert (=> start!46752 (=> (not res!315630) (not e!301144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46752 (= res!315630 (validMask!0 mask!3524))))

(assert (=> start!46752 e!301144))

(assert (=> start!46752 true))

(declare-fun array_inv!11651 (array!33024) Bool)

(assert (=> start!46752 (array_inv!11651 a!3235)))

(declare-fun b!515917 () Bool)

(declare-fun res!315633 () Bool)

(assert (=> b!515917 (=> res!315633 e!301145)))

(get-info :version)

(assert (=> b!515917 (= res!315633 (or (undefined!5163 lt!236230) (not ((_ is Intermediate!4351) lt!236230))))))

(declare-fun b!515918 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33024 (_ BitVec 32)) SeekEntryResult!4351)

(assert (=> b!515918 (= e!301147 (= (seekEntryOrOpen!0 (select (arr!15877 a!3235) j!176) a!3235 mask!3524) (Found!4351 j!176)))))

(declare-fun b!515919 () Bool)

(declare-fun res!315635 () Bool)

(assert (=> b!515919 (=> (not res!315635) (not e!301144))))

(assert (=> b!515919 (= res!315635 (validKeyInArray!0 (select (arr!15877 a!3235) j!176)))))

(declare-fun b!515920 () Bool)

(declare-fun res!315628 () Bool)

(assert (=> b!515920 (=> (not res!315628) (not e!301144))))

(declare-fun arrayContainsKey!0 (array!33024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515920 (= res!315628 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515921 () Bool)

(assert (=> b!515921 (= e!301144 e!301146)))

(declare-fun res!315627 () Bool)

(assert (=> b!515921 (=> (not res!315627) (not e!301146))))

(declare-fun lt!236228 () SeekEntryResult!4351)

(assert (=> b!515921 (= res!315627 (or (= lt!236228 (MissingZero!4351 i!1204)) (= lt!236228 (MissingVacant!4351 i!1204))))))

(assert (=> b!515921 (= lt!236228 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!46752 res!315630) b!515912))

(assert (= (and b!515912 res!315632) b!515919))

(assert (= (and b!515919 res!315635) b!515916))

(assert (= (and b!515916 res!315625) b!515920))

(assert (= (and b!515920 res!315628) b!515921))

(assert (= (and b!515921 res!315627) b!515913))

(assert (= (and b!515913 res!315634) b!515915))

(assert (= (and b!515915 res!315629) b!515911))

(assert (= (and b!515911 res!315631) b!515918))

(assert (= (and b!515911 (not res!315626)) b!515917))

(assert (= (and b!515917 (not res!315633)) b!515914))

(declare-fun m!497385 () Bool)

(assert (=> b!515919 m!497385))

(assert (=> b!515919 m!497385))

(declare-fun m!497387 () Bool)

(assert (=> b!515919 m!497387))

(declare-fun m!497389 () Bool)

(assert (=> b!515911 m!497389))

(declare-fun m!497391 () Bool)

(assert (=> b!515911 m!497391))

(declare-fun m!497393 () Bool)

(assert (=> b!515911 m!497393))

(assert (=> b!515911 m!497389))

(assert (=> b!515911 m!497385))

(declare-fun m!497395 () Bool)

(assert (=> b!515911 m!497395))

(assert (=> b!515911 m!497385))

(declare-fun m!497397 () Bool)

(assert (=> b!515911 m!497397))

(assert (=> b!515911 m!497389))

(declare-fun m!497399 () Bool)

(assert (=> b!515911 m!497399))

(assert (=> b!515911 m!497385))

(declare-fun m!497401 () Bool)

(assert (=> b!515911 m!497401))

(declare-fun m!497403 () Bool)

(assert (=> b!515911 m!497403))

(declare-fun m!497405 () Bool)

(assert (=> b!515920 m!497405))

(declare-fun m!497407 () Bool)

(assert (=> start!46752 m!497407))

(declare-fun m!497409 () Bool)

(assert (=> start!46752 m!497409))

(declare-fun m!497411 () Bool)

(assert (=> b!515921 m!497411))

(declare-fun m!497413 () Bool)

(assert (=> b!515915 m!497413))

(declare-fun m!497415 () Bool)

(assert (=> b!515914 m!497415))

(assert (=> b!515914 m!497385))

(declare-fun m!497417 () Bool)

(assert (=> b!515913 m!497417))

(declare-fun m!497419 () Bool)

(assert (=> b!515916 m!497419))

(assert (=> b!515918 m!497385))

(assert (=> b!515918 m!497385))

(declare-fun m!497421 () Bool)

(assert (=> b!515918 m!497421))

(check-sat (not b!515911) (not b!515921) (not b!515916) (not b!515913) (not b!515919) (not b!515920) (not b!515918) (not start!46752) (not b!515915))
(check-sat)
