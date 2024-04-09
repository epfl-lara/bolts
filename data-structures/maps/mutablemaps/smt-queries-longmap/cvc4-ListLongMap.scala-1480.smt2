; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28280 () Bool)

(assert start!28280)

(declare-fun b!289631 () Bool)

(declare-fun res!151191 () Bool)

(declare-fun e!183361 () Bool)

(assert (=> b!289631 (=> (not res!151191) (not e!183361))))

(declare-datatypes ((array!14583 0))(
  ( (array!14584 (arr!6918 (Array (_ BitVec 32) (_ BitVec 64))) (size!7270 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14583)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289631 (= res!151191 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289632 () Bool)

(declare-datatypes ((Unit!9113 0))(
  ( (Unit!9114) )
))
(declare-fun e!183359 () Unit!9113)

(declare-fun Unit!9115 () Unit!9113)

(assert (=> b!289632 (= e!183359 Unit!9115)))

(assert (=> b!289632 false))

(declare-datatypes ((SeekEntryResult!2078 0))(
  ( (MissingZero!2078 (index!10482 (_ BitVec 32))) (Found!2078 (index!10483 (_ BitVec 32))) (Intermediate!2078 (undefined!2890 Bool) (index!10484 (_ BitVec 32)) (x!28651 (_ BitVec 32))) (Undefined!2078) (MissingVacant!2078 (index!10485 (_ BitVec 32))) )
))
(declare-fun lt!142999 () SeekEntryResult!2078)

(declare-fun b!289633 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143000 () SeekEntryResult!2078)

(assert (=> b!289633 (and (= lt!142999 lt!143000) (= (select (store (arr!6918 a!3312) i!1256 k!2524) (index!10484 lt!143000)) k!2524))))

(declare-fun lt!143003 () Unit!9113)

(declare-fun lt!142997 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14583 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9113)

(assert (=> b!289633 (= lt!143003 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!142997 (index!10484 lt!143000) (x!28651 lt!143000) mask!3809))))

(assert (=> b!289633 (and (= (select (arr!6918 a!3312) (index!10484 lt!143000)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10484 lt!143000) i!1256))))

(declare-fun e!183358 () Unit!9113)

(declare-fun Unit!9116 () Unit!9113)

(assert (=> b!289633 (= e!183358 Unit!9116)))

(declare-fun b!289634 () Bool)

(declare-fun res!151190 () Bool)

(assert (=> b!289634 (=> (not res!151190) (not e!183361))))

(assert (=> b!289634 (= res!151190 (and (= (size!7270 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7270 a!3312))))))

(declare-fun b!289635 () Bool)

(declare-fun res!151192 () Bool)

(declare-fun e!183357 () Bool)

(assert (=> b!289635 (=> (not res!151192) (not e!183357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14583 (_ BitVec 32)) Bool)

(assert (=> b!289635 (= res!151192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289636 () Bool)

(declare-fun e!183356 () Bool)

(assert (=> b!289636 (= e!183356 false)))

(declare-fun lt!143001 () Unit!9113)

(assert (=> b!289636 (= lt!143001 e!183359)))

(declare-fun c!46784 () Bool)

(assert (=> b!289636 (= c!46784 (or (and (is-Intermediate!2078 lt!143000) (undefined!2890 lt!143000)) (and (is-Intermediate!2078 lt!143000) (= (select (arr!6918 a!3312) (index!10484 lt!143000)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2078 lt!143000) (= (select (arr!6918 a!3312) (index!10484 lt!143000)) k!2524))))))

(declare-fun res!151194 () Bool)

(assert (=> start!28280 (=> (not res!151194) (not e!183361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28280 (= res!151194 (validMask!0 mask!3809))))

(assert (=> start!28280 e!183361))

(assert (=> start!28280 true))

(declare-fun array_inv!4872 (array!14583) Bool)

(assert (=> start!28280 (array_inv!4872 a!3312)))

(declare-fun b!289637 () Bool)

(assert (=> b!289637 false))

(declare-fun Unit!9117 () Unit!9113)

(assert (=> b!289637 (= e!183358 Unit!9117)))

(declare-fun b!289638 () Bool)

(assert (=> b!289638 (= e!183357 e!183356)))

(declare-fun res!151189 () Bool)

(assert (=> b!289638 (=> (not res!151189) (not e!183356))))

(declare-fun lt!142998 () Bool)

(assert (=> b!289638 (= res!151189 lt!142998)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14583 (_ BitVec 32)) SeekEntryResult!2078)

(assert (=> b!289638 (= lt!142999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142997 k!2524 (array!14584 (store (arr!6918 a!3312) i!1256 k!2524) (size!7270 a!3312)) mask!3809))))

(assert (=> b!289638 (= lt!143000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142997 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289638 (= lt!142997 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289639 () Bool)

(assert (=> b!289639 (= e!183359 e!183358)))

(declare-fun c!46783 () Bool)

(assert (=> b!289639 (= c!46783 (is-Intermediate!2078 lt!143000))))

(declare-fun b!289640 () Bool)

(assert (=> b!289640 (= e!183361 e!183357)))

(declare-fun res!151188 () Bool)

(assert (=> b!289640 (=> (not res!151188) (not e!183357))))

(declare-fun lt!143002 () SeekEntryResult!2078)

(assert (=> b!289640 (= res!151188 (or lt!142998 (= lt!143002 (MissingVacant!2078 i!1256))))))

(assert (=> b!289640 (= lt!142998 (= lt!143002 (MissingZero!2078 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14583 (_ BitVec 32)) SeekEntryResult!2078)

(assert (=> b!289640 (= lt!143002 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289641 () Bool)

(declare-fun res!151193 () Bool)

(assert (=> b!289641 (=> (not res!151193) (not e!183361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289641 (= res!151193 (validKeyInArray!0 k!2524))))

(assert (= (and start!28280 res!151194) b!289634))

(assert (= (and b!289634 res!151190) b!289641))

(assert (= (and b!289641 res!151193) b!289631))

(assert (= (and b!289631 res!151191) b!289640))

(assert (= (and b!289640 res!151188) b!289635))

(assert (= (and b!289635 res!151192) b!289638))

(assert (= (and b!289638 res!151189) b!289636))

(assert (= (and b!289636 c!46784) b!289632))

(assert (= (and b!289636 (not c!46784)) b!289639))

(assert (= (and b!289639 c!46783) b!289633))

(assert (= (and b!289639 (not c!46783)) b!289637))

(declare-fun m!303761 () Bool)

(assert (=> b!289633 m!303761))

(declare-fun m!303763 () Bool)

(assert (=> b!289633 m!303763))

(declare-fun m!303765 () Bool)

(assert (=> b!289633 m!303765))

(declare-fun m!303767 () Bool)

(assert (=> b!289633 m!303767))

(assert (=> b!289636 m!303767))

(declare-fun m!303769 () Bool)

(assert (=> b!289640 m!303769))

(assert (=> b!289638 m!303761))

(declare-fun m!303771 () Bool)

(assert (=> b!289638 m!303771))

(declare-fun m!303773 () Bool)

(assert (=> b!289638 m!303773))

(declare-fun m!303775 () Bool)

(assert (=> b!289638 m!303775))

(declare-fun m!303777 () Bool)

(assert (=> b!289641 m!303777))

(declare-fun m!303779 () Bool)

(assert (=> b!289635 m!303779))

(declare-fun m!303781 () Bool)

(assert (=> start!28280 m!303781))

(declare-fun m!303783 () Bool)

(assert (=> start!28280 m!303783))

(declare-fun m!303785 () Bool)

(assert (=> b!289631 m!303785))

(push 1)

