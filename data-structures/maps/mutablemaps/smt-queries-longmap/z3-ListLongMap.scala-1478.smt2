; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28266 () Bool)

(assert start!28266)

(declare-fun b!289400 () Bool)

(declare-fun e!183232 () Bool)

(assert (=> b!289400 (= e!183232 false)))

(declare-datatypes ((Unit!9078 0))(
  ( (Unit!9079) )
))
(declare-fun lt!142855 () Unit!9078)

(declare-fun e!183234 () Unit!9078)

(assert (=> b!289400 (= lt!142855 e!183234)))

(declare-fun c!46742 () Bool)

(declare-datatypes ((SeekEntryResult!2071 0))(
  ( (MissingZero!2071 (index!10454 (_ BitVec 32))) (Found!2071 (index!10455 (_ BitVec 32))) (Intermediate!2071 (undefined!2883 Bool) (index!10456 (_ BitVec 32)) (x!28628 (_ BitVec 32))) (Undefined!2071) (MissingVacant!2071 (index!10457 (_ BitVec 32))) )
))
(declare-fun lt!142852 () SeekEntryResult!2071)

(declare-datatypes ((array!14569 0))(
  ( (array!14570 (arr!6911 (Array (_ BitVec 32) (_ BitVec 64))) (size!7263 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14569)

(declare-fun k0!2524 () (_ BitVec 64))

(get-info :version)

(assert (=> b!289400 (= c!46742 (or (and ((_ is Intermediate!2071) lt!142852) (undefined!2883 lt!142852)) (and ((_ is Intermediate!2071) lt!142852) (= (select (arr!6911 a!3312) (index!10456 lt!142852)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and ((_ is Intermediate!2071) lt!142852) (= (select (arr!6911 a!3312) (index!10456 lt!142852)) k0!2524))))))

(declare-fun b!289401 () Bool)

(declare-fun res!151046 () Bool)

(declare-fun e!183230 () Bool)

(assert (=> b!289401 (=> (not res!151046) (not e!183230))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289401 (= res!151046 (and (= (size!7263 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7263 a!3312))))))

(declare-fun b!289402 () Bool)

(declare-fun res!151045 () Bool)

(declare-fun e!183233 () Bool)

(assert (=> b!289402 (=> (not res!151045) (not e!183233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14569 (_ BitVec 32)) Bool)

(assert (=> b!289402 (= res!151045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289403 () Bool)

(assert (=> b!289403 (= e!183230 e!183233)))

(declare-fun res!151041 () Bool)

(assert (=> b!289403 (=> (not res!151041) (not e!183233))))

(declare-fun lt!142851 () SeekEntryResult!2071)

(declare-fun lt!142853 () Bool)

(assert (=> b!289403 (= res!151041 (or lt!142853 (= lt!142851 (MissingVacant!2071 i!1256))))))

(assert (=> b!289403 (= lt!142853 (= lt!142851 (MissingZero!2071 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14569 (_ BitVec 32)) SeekEntryResult!2071)

(assert (=> b!289403 (= lt!142851 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289404 () Bool)

(declare-fun res!151043 () Bool)

(assert (=> b!289404 (=> (not res!151043) (not e!183230))))

(declare-fun arrayContainsKey!0 (array!14569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289404 (= res!151043 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289405 () Bool)

(declare-fun e!183231 () Unit!9078)

(assert (=> b!289405 (= e!183234 e!183231)))

(declare-fun c!46741 () Bool)

(assert (=> b!289405 (= c!46741 ((_ is Intermediate!2071) lt!142852))))

(declare-fun lt!142850 () SeekEntryResult!2071)

(declare-fun b!289406 () Bool)

(assert (=> b!289406 (and (= lt!142850 lt!142852) (= (select (store (arr!6911 a!3312) i!1256 k0!2524) (index!10456 lt!142852)) k0!2524))))

(declare-fun lt!142854 () (_ BitVec 32))

(declare-fun lt!142856 () Unit!9078)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14569 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9078)

(assert (=> b!289406 (= lt!142856 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!142854 (index!10456 lt!142852) (x!28628 lt!142852) mask!3809))))

(assert (=> b!289406 (and (= (select (arr!6911 a!3312) (index!10456 lt!142852)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10456 lt!142852) i!1256))))

(declare-fun Unit!9080 () Unit!9078)

(assert (=> b!289406 (= e!183231 Unit!9080)))

(declare-fun b!289407 () Bool)

(declare-fun res!151044 () Bool)

(assert (=> b!289407 (=> (not res!151044) (not e!183230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289407 (= res!151044 (validKeyInArray!0 k0!2524))))

(declare-fun b!289408 () Bool)

(declare-fun Unit!9081 () Unit!9078)

(assert (=> b!289408 (= e!183234 Unit!9081)))

(assert (=> b!289408 false))

(declare-fun b!289409 () Bool)

(assert (=> b!289409 false))

(declare-fun Unit!9082 () Unit!9078)

(assert (=> b!289409 (= e!183231 Unit!9082)))

(declare-fun b!289410 () Bool)

(assert (=> b!289410 (= e!183233 e!183232)))

(declare-fun res!151047 () Bool)

(assert (=> b!289410 (=> (not res!151047) (not e!183232))))

(assert (=> b!289410 (= res!151047 lt!142853)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14569 (_ BitVec 32)) SeekEntryResult!2071)

(assert (=> b!289410 (= lt!142850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142854 k0!2524 (array!14570 (store (arr!6911 a!3312) i!1256 k0!2524) (size!7263 a!3312)) mask!3809))))

(assert (=> b!289410 (= lt!142852 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142854 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289410 (= lt!142854 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!151042 () Bool)

(assert (=> start!28266 (=> (not res!151042) (not e!183230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28266 (= res!151042 (validMask!0 mask!3809))))

(assert (=> start!28266 e!183230))

(assert (=> start!28266 true))

(declare-fun array_inv!4865 (array!14569) Bool)

(assert (=> start!28266 (array_inv!4865 a!3312)))

(assert (= (and start!28266 res!151042) b!289401))

(assert (= (and b!289401 res!151046) b!289407))

(assert (= (and b!289407 res!151044) b!289404))

(assert (= (and b!289404 res!151043) b!289403))

(assert (= (and b!289403 res!151041) b!289402))

(assert (= (and b!289402 res!151045) b!289410))

(assert (= (and b!289410 res!151047) b!289400))

(assert (= (and b!289400 c!46742) b!289408))

(assert (= (and b!289400 (not c!46742)) b!289405))

(assert (= (and b!289405 c!46741) b!289406))

(assert (= (and b!289405 (not c!46741)) b!289409))

(declare-fun m!303579 () Bool)

(assert (=> b!289407 m!303579))

(declare-fun m!303581 () Bool)

(assert (=> b!289406 m!303581))

(declare-fun m!303583 () Bool)

(assert (=> b!289406 m!303583))

(declare-fun m!303585 () Bool)

(assert (=> b!289406 m!303585))

(declare-fun m!303587 () Bool)

(assert (=> b!289406 m!303587))

(assert (=> b!289410 m!303581))

(declare-fun m!303589 () Bool)

(assert (=> b!289410 m!303589))

(declare-fun m!303591 () Bool)

(assert (=> b!289410 m!303591))

(declare-fun m!303593 () Bool)

(assert (=> b!289410 m!303593))

(assert (=> b!289400 m!303587))

(declare-fun m!303595 () Bool)

(assert (=> b!289403 m!303595))

(declare-fun m!303597 () Bool)

(assert (=> b!289404 m!303597))

(declare-fun m!303599 () Bool)

(assert (=> start!28266 m!303599))

(declare-fun m!303601 () Bool)

(assert (=> start!28266 m!303601))

(declare-fun m!303603 () Bool)

(assert (=> b!289402 m!303603))

(check-sat (not b!289404) (not b!289402) (not start!28266) (not b!289410) (not b!289406) (not b!289403) (not b!289407))
(check-sat)
