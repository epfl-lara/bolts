; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86940 () Bool)

(assert start!86940)

(declare-fun b!1007721 () Bool)

(declare-fun res!676775 () Bool)

(declare-fun e!567130 () Bool)

(assert (=> b!1007721 (=> (not res!676775) (not e!567130))))

(declare-datatypes ((array!63540 0))(
  ( (array!63541 (arr!30587 (Array (_ BitVec 32) (_ BitVec 64))) (size!31090 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63540)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007721 (= res!676775 (validKeyInArray!0 (select (arr!30587 a!3219) j!170)))))

(declare-fun b!1007722 () Bool)

(declare-fun res!676773 () Bool)

(declare-fun e!567134 () Bool)

(assert (=> b!1007722 (=> (not res!676773) (not e!567134))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1007722 (= res!676773 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007723 () Bool)

(declare-fun e!567133 () Bool)

(assert (=> b!1007723 (= e!567133 e!567134)))

(declare-fun res!676780 () Bool)

(assert (=> b!1007723 (=> (not res!676780) (not e!567134))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9519 0))(
  ( (MissingZero!9519 (index!40446 (_ BitVec 32))) (Found!9519 (index!40447 (_ BitVec 32))) (Intermediate!9519 (undefined!10331 Bool) (index!40448 (_ BitVec 32)) (x!87870 (_ BitVec 32))) (Undefined!9519) (MissingVacant!9519 (index!40449 (_ BitVec 32))) )
))
(declare-fun lt!445350 () SeekEntryResult!9519)

(declare-fun lt!445351 () array!63540)

(declare-fun lt!445353 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63540 (_ BitVec 32)) SeekEntryResult!9519)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007723 (= res!676780 (not (= lt!445350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445353 mask!3464) lt!445353 lt!445351 mask!3464))))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1007723 (= lt!445353 (select (store (arr!30587 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1007723 (= lt!445351 (array!63541 (store (arr!30587 a!3219) i!1194 k0!2224) (size!31090 a!3219)))))

(declare-fun b!1007724 () Bool)

(declare-fun res!676783 () Bool)

(declare-fun e!567129 () Bool)

(assert (=> b!1007724 (=> (not res!676783) (not e!567129))))

(declare-datatypes ((List!21389 0))(
  ( (Nil!21386) (Cons!21385 (h!22571 (_ BitVec 64)) (t!30398 List!21389)) )
))
(declare-fun arrayNoDuplicates!0 (array!63540 (_ BitVec 32) List!21389) Bool)

(assert (=> b!1007724 (= res!676783 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21386))))

(declare-fun b!1007726 () Bool)

(declare-fun e!567132 () Bool)

(assert (=> b!1007726 (= e!567129 e!567132)))

(declare-fun res!676781 () Bool)

(assert (=> b!1007726 (=> (not res!676781) (not e!567132))))

(declare-fun lt!445352 () SeekEntryResult!9519)

(assert (=> b!1007726 (= res!676781 (= lt!445350 lt!445352))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007726 (= lt!445352 (Intermediate!9519 false resIndex!38 resX!38))))

(assert (=> b!1007726 (= lt!445350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30587 a!3219) j!170) mask!3464) (select (arr!30587 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007727 () Bool)

(declare-fun res!676772 () Bool)

(assert (=> b!1007727 (=> (not res!676772) (not e!567130))))

(declare-fun arrayContainsKey!0 (array!63540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007727 (= res!676772 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007728 () Bool)

(assert (=> b!1007728 (= e!567132 e!567133)))

(declare-fun res!676770 () Bool)

(assert (=> b!1007728 (=> (not res!676770) (not e!567133))))

(declare-fun lt!445355 () SeekEntryResult!9519)

(assert (=> b!1007728 (= res!676770 (= lt!445355 lt!445352))))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1007728 (= lt!445355 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30587 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007725 () Bool)

(declare-fun res!676774 () Bool)

(assert (=> b!1007725 (=> (not res!676774) (not e!567129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63540 (_ BitVec 32)) Bool)

(assert (=> b!1007725 (= res!676774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!676777 () Bool)

(assert (=> start!86940 (=> (not res!676777) (not e!567130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86940 (= res!676777 (validMask!0 mask!3464))))

(assert (=> start!86940 e!567130))

(declare-fun array_inv!23577 (array!63540) Bool)

(assert (=> start!86940 (array_inv!23577 a!3219)))

(assert (=> start!86940 true))

(declare-fun b!1007729 () Bool)

(assert (=> b!1007729 (= e!567134 false)))

(declare-fun lt!445356 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007729 (= lt!445356 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007730 () Bool)

(declare-fun res!676771 () Bool)

(assert (=> b!1007730 (=> (not res!676771) (not e!567134))))

(assert (=> b!1007730 (= res!676771 (not (= lt!445355 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445353 lt!445351 mask!3464))))))

(declare-fun b!1007731 () Bool)

(declare-fun res!676779 () Bool)

(assert (=> b!1007731 (=> (not res!676779) (not e!567130))))

(assert (=> b!1007731 (= res!676779 (validKeyInArray!0 k0!2224))))

(declare-fun b!1007732 () Bool)

(declare-fun res!676782 () Bool)

(assert (=> b!1007732 (=> (not res!676782) (not e!567129))))

(assert (=> b!1007732 (= res!676782 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31090 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31090 a!3219))))))

(declare-fun b!1007733 () Bool)

(assert (=> b!1007733 (= e!567130 e!567129)))

(declare-fun res!676776 () Bool)

(assert (=> b!1007733 (=> (not res!676776) (not e!567129))))

(declare-fun lt!445354 () SeekEntryResult!9519)

(assert (=> b!1007733 (= res!676776 (or (= lt!445354 (MissingVacant!9519 i!1194)) (= lt!445354 (MissingZero!9519 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63540 (_ BitVec 32)) SeekEntryResult!9519)

(assert (=> b!1007733 (= lt!445354 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1007734 () Bool)

(declare-fun res!676778 () Bool)

(assert (=> b!1007734 (=> (not res!676778) (not e!567130))))

(assert (=> b!1007734 (= res!676778 (and (= (size!31090 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31090 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31090 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86940 res!676777) b!1007734))

(assert (= (and b!1007734 res!676778) b!1007721))

(assert (= (and b!1007721 res!676775) b!1007731))

(assert (= (and b!1007731 res!676779) b!1007727))

(assert (= (and b!1007727 res!676772) b!1007733))

(assert (= (and b!1007733 res!676776) b!1007725))

(assert (= (and b!1007725 res!676774) b!1007724))

(assert (= (and b!1007724 res!676783) b!1007732))

(assert (= (and b!1007732 res!676782) b!1007726))

(assert (= (and b!1007726 res!676781) b!1007728))

(assert (= (and b!1007728 res!676770) b!1007723))

(assert (= (and b!1007723 res!676780) b!1007730))

(assert (= (and b!1007730 res!676771) b!1007722))

(assert (= (and b!1007722 res!676773) b!1007729))

(declare-fun m!932667 () Bool)

(assert (=> b!1007723 m!932667))

(assert (=> b!1007723 m!932667))

(declare-fun m!932669 () Bool)

(assert (=> b!1007723 m!932669))

(declare-fun m!932671 () Bool)

(assert (=> b!1007723 m!932671))

(declare-fun m!932673 () Bool)

(assert (=> b!1007723 m!932673))

(declare-fun m!932675 () Bool)

(assert (=> b!1007726 m!932675))

(assert (=> b!1007726 m!932675))

(declare-fun m!932677 () Bool)

(assert (=> b!1007726 m!932677))

(assert (=> b!1007726 m!932677))

(assert (=> b!1007726 m!932675))

(declare-fun m!932679 () Bool)

(assert (=> b!1007726 m!932679))

(declare-fun m!932681 () Bool)

(assert (=> b!1007724 m!932681))

(declare-fun m!932683 () Bool)

(assert (=> b!1007731 m!932683))

(assert (=> b!1007721 m!932675))

(assert (=> b!1007721 m!932675))

(declare-fun m!932685 () Bool)

(assert (=> b!1007721 m!932685))

(assert (=> b!1007728 m!932675))

(assert (=> b!1007728 m!932675))

(declare-fun m!932687 () Bool)

(assert (=> b!1007728 m!932687))

(declare-fun m!932689 () Bool)

(assert (=> b!1007733 m!932689))

(declare-fun m!932691 () Bool)

(assert (=> start!86940 m!932691))

(declare-fun m!932693 () Bool)

(assert (=> start!86940 m!932693))

(declare-fun m!932695 () Bool)

(assert (=> b!1007729 m!932695))

(declare-fun m!932697 () Bool)

(assert (=> b!1007730 m!932697))

(declare-fun m!932699 () Bool)

(assert (=> b!1007727 m!932699))

(declare-fun m!932701 () Bool)

(assert (=> b!1007725 m!932701))

(check-sat (not b!1007726) (not start!86940) (not b!1007724) (not b!1007723) (not b!1007728) (not b!1007721) (not b!1007725) (not b!1007727) (not b!1007731) (not b!1007733) (not b!1007730) (not b!1007729))
(check-sat)
