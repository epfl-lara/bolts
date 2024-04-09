; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28284 () Bool)

(assert start!28284)

(declare-fun b!289697 () Bool)

(declare-fun e!183397 () Bool)

(assert (=> b!289697 (= e!183397 false)))

(declare-datatypes ((Unit!9123 0))(
  ( (Unit!9124) )
))
(declare-fun lt!143041 () Unit!9123)

(declare-fun e!183392 () Unit!9123)

(assert (=> b!289697 (= lt!143041 e!183392)))

(declare-fun c!46795 () Bool)

(declare-datatypes ((SeekEntryResult!2080 0))(
  ( (MissingZero!2080 (index!10490 (_ BitVec 32))) (Found!2080 (index!10491 (_ BitVec 32))) (Intermediate!2080 (undefined!2892 Bool) (index!10492 (_ BitVec 32)) (x!28661 (_ BitVec 32))) (Undefined!2080) (MissingVacant!2080 (index!10493 (_ BitVec 32))) )
))
(declare-fun lt!143045 () SeekEntryResult!2080)

(declare-datatypes ((array!14587 0))(
  ( (array!14588 (arr!6920 (Array (_ BitVec 32) (_ BitVec 64))) (size!7272 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14587)

(declare-fun k0!2524 () (_ BitVec 64))

(get-info :version)

(assert (=> b!289697 (= c!46795 (or (and ((_ is Intermediate!2080) lt!143045) (undefined!2892 lt!143045)) (and ((_ is Intermediate!2080) lt!143045) (= (select (arr!6920 a!3312) (index!10492 lt!143045)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and ((_ is Intermediate!2080) lt!143045) (= (select (arr!6920 a!3312) (index!10492 lt!143045)) k0!2524))))))

(declare-fun b!289698 () Bool)

(declare-fun e!183396 () Bool)

(declare-fun e!183394 () Bool)

(assert (=> b!289698 (= e!183396 e!183394)))

(declare-fun res!151231 () Bool)

(assert (=> b!289698 (=> (not res!151231) (not e!183394))))

(declare-fun lt!143044 () SeekEntryResult!2080)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143040 () Bool)

(assert (=> b!289698 (= res!151231 (or lt!143040 (= lt!143044 (MissingVacant!2080 i!1256))))))

(assert (=> b!289698 (= lt!143040 (= lt!143044 (MissingZero!2080 i!1256)))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14587 (_ BitVec 32)) SeekEntryResult!2080)

(assert (=> b!289698 (= lt!143044 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289699 () Bool)

(declare-fun res!151234 () Bool)

(assert (=> b!289699 (=> (not res!151234) (not e!183396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289699 (= res!151234 (validKeyInArray!0 k0!2524))))

(declare-fun b!289700 () Bool)

(assert (=> b!289700 false))

(declare-fun e!183395 () Unit!9123)

(declare-fun Unit!9125 () Unit!9123)

(assert (=> b!289700 (= e!183395 Unit!9125)))

(declare-fun b!289701 () Bool)

(assert (=> b!289701 (= e!183392 e!183395)))

(declare-fun c!46796 () Bool)

(assert (=> b!289701 (= c!46796 ((_ is Intermediate!2080) lt!143045))))

(declare-fun b!289702 () Bool)

(declare-fun res!151232 () Bool)

(assert (=> b!289702 (=> (not res!151232) (not e!183394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14587 (_ BitVec 32)) Bool)

(assert (=> b!289702 (= res!151232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151235 () Bool)

(assert (=> start!28284 (=> (not res!151235) (not e!183396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28284 (= res!151235 (validMask!0 mask!3809))))

(assert (=> start!28284 e!183396))

(assert (=> start!28284 true))

(declare-fun array_inv!4874 (array!14587) Bool)

(assert (=> start!28284 (array_inv!4874 a!3312)))

(declare-fun b!289703 () Bool)

(declare-fun lt!143042 () SeekEntryResult!2080)

(assert (=> b!289703 (and (= lt!143042 lt!143045) (= (select (store (arr!6920 a!3312) i!1256 k0!2524) (index!10492 lt!143045)) k0!2524))))

(declare-fun lt!143043 () Unit!9123)

(declare-fun lt!143039 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14587 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9123)

(assert (=> b!289703 (= lt!143043 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!143039 (index!10492 lt!143045) (x!28661 lt!143045) mask!3809))))

(assert (=> b!289703 (and (= (select (arr!6920 a!3312) (index!10492 lt!143045)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10492 lt!143045) i!1256))))

(declare-fun Unit!9126 () Unit!9123)

(assert (=> b!289703 (= e!183395 Unit!9126)))

(declare-fun b!289704 () Bool)

(assert (=> b!289704 (= e!183394 e!183397)))

(declare-fun res!151230 () Bool)

(assert (=> b!289704 (=> (not res!151230) (not e!183397))))

(assert (=> b!289704 (= res!151230 lt!143040)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14587 (_ BitVec 32)) SeekEntryResult!2080)

(assert (=> b!289704 (= lt!143042 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143039 k0!2524 (array!14588 (store (arr!6920 a!3312) i!1256 k0!2524) (size!7272 a!3312)) mask!3809))))

(assert (=> b!289704 (= lt!143045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143039 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289704 (= lt!143039 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!289705 () Bool)

(declare-fun res!151236 () Bool)

(assert (=> b!289705 (=> (not res!151236) (not e!183396))))

(assert (=> b!289705 (= res!151236 (and (= (size!7272 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7272 a!3312))))))

(declare-fun b!289706 () Bool)

(declare-fun Unit!9127 () Unit!9123)

(assert (=> b!289706 (= e!183392 Unit!9127)))

(assert (=> b!289706 false))

(declare-fun b!289707 () Bool)

(declare-fun res!151233 () Bool)

(assert (=> b!289707 (=> (not res!151233) (not e!183396))))

(declare-fun arrayContainsKey!0 (array!14587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289707 (= res!151233 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28284 res!151235) b!289705))

(assert (= (and b!289705 res!151236) b!289699))

(assert (= (and b!289699 res!151234) b!289707))

(assert (= (and b!289707 res!151233) b!289698))

(assert (= (and b!289698 res!151231) b!289702))

(assert (= (and b!289702 res!151232) b!289704))

(assert (= (and b!289704 res!151230) b!289697))

(assert (= (and b!289697 c!46795) b!289706))

(assert (= (and b!289697 (not c!46795)) b!289701))

(assert (= (and b!289701 c!46796) b!289703))

(assert (= (and b!289701 (not c!46796)) b!289700))

(declare-fun m!303813 () Bool)

(assert (=> b!289704 m!303813))

(declare-fun m!303815 () Bool)

(assert (=> b!289704 m!303815))

(declare-fun m!303817 () Bool)

(assert (=> b!289704 m!303817))

(declare-fun m!303819 () Bool)

(assert (=> b!289704 m!303819))

(declare-fun m!303821 () Bool)

(assert (=> b!289699 m!303821))

(declare-fun m!303823 () Bool)

(assert (=> b!289702 m!303823))

(declare-fun m!303825 () Bool)

(assert (=> start!28284 m!303825))

(declare-fun m!303827 () Bool)

(assert (=> start!28284 m!303827))

(declare-fun m!303829 () Bool)

(assert (=> b!289698 m!303829))

(assert (=> b!289703 m!303813))

(declare-fun m!303831 () Bool)

(assert (=> b!289703 m!303831))

(declare-fun m!303833 () Bool)

(assert (=> b!289703 m!303833))

(declare-fun m!303835 () Bool)

(assert (=> b!289703 m!303835))

(assert (=> b!289697 m!303835))

(declare-fun m!303837 () Bool)

(assert (=> b!289707 m!303837))

(check-sat (not b!289703) (not b!289699) (not b!289702) (not b!289707) (not b!289698) (not start!28284) (not b!289704))
(check-sat)
