; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44664 () Bool)

(assert start!44664)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!489726 () Bool)

(declare-datatypes ((array!31683 0))(
  ( (array!31684 (arr!15226 (Array (_ BitVec 32) (_ BitVec 64))) (size!15590 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31683)

(declare-fun e!287971 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3700 0))(
  ( (MissingZero!3700 (index!16979 (_ BitVec 32))) (Found!3700 (index!16980 (_ BitVec 32))) (Intermediate!3700 (undefined!4512 Bool) (index!16981 (_ BitVec 32)) (x!46113 (_ BitVec 32))) (Undefined!3700) (MissingVacant!3700 (index!16982 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31683 (_ BitVec 32)) SeekEntryResult!3700)

(assert (=> b!489726 (= e!287971 (= (seekEntryOrOpen!0 (select (arr!15226 a!3235) j!176) a!3235 mask!3524) (Found!3700 j!176)))))

(declare-fun res!292817 () Bool)

(declare-fun e!287969 () Bool)

(assert (=> start!44664 (=> (not res!292817) (not e!287969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44664 (= res!292817 (validMask!0 mask!3524))))

(assert (=> start!44664 e!287969))

(assert (=> start!44664 true))

(declare-fun array_inv!11000 (array!31683) Bool)

(assert (=> start!44664 (array_inv!11000 a!3235)))

(declare-fun b!489727 () Bool)

(declare-fun res!292814 () Bool)

(assert (=> b!489727 (=> (not res!292814) (not e!287969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489727 (= res!292814 (validKeyInArray!0 (select (arr!15226 a!3235) j!176)))))

(declare-fun b!489728 () Bool)

(declare-fun res!292819 () Bool)

(assert (=> b!489728 (=> (not res!292819) (not e!287969))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489728 (= res!292819 (and (= (size!15590 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15590 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15590 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489729 () Bool)

(declare-fun res!292812 () Bool)

(declare-fun e!287970 () Bool)

(assert (=> b!489729 (=> (not res!292812) (not e!287970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31683 (_ BitVec 32)) Bool)

(assert (=> b!489729 (= res!292812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489730 () Bool)

(declare-fun res!292816 () Bool)

(assert (=> b!489730 (=> (not res!292816) (not e!287969))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489730 (= res!292816 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489731 () Bool)

(declare-fun res!292815 () Bool)

(assert (=> b!489731 (=> (not res!292815) (not e!287969))))

(assert (=> b!489731 (= res!292815 (validKeyInArray!0 k0!2280))))

(declare-fun b!489732 () Bool)

(declare-fun res!292820 () Bool)

(assert (=> b!489732 (=> (not res!292820) (not e!287970))))

(declare-datatypes ((List!9437 0))(
  ( (Nil!9434) (Cons!9433 (h!10295 (_ BitVec 64)) (t!15673 List!9437)) )
))
(declare-fun arrayNoDuplicates!0 (array!31683 (_ BitVec 32) List!9437) Bool)

(assert (=> b!489732 (= res!292820 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9434))))

(declare-fun b!489733 () Bool)

(assert (=> b!489733 (= e!287969 e!287970)))

(declare-fun res!292818 () Bool)

(assert (=> b!489733 (=> (not res!292818) (not e!287970))))

(declare-fun lt!221109 () SeekEntryResult!3700)

(assert (=> b!489733 (= res!292818 (or (= lt!221109 (MissingZero!3700 i!1204)) (= lt!221109 (MissingVacant!3700 i!1204))))))

(assert (=> b!489733 (= lt!221109 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489734 () Bool)

(assert (=> b!489734 (= e!287970 (not true))))

(declare-fun lt!221111 () (_ BitVec 32))

(declare-fun lt!221113 () SeekEntryResult!3700)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31683 (_ BitVec 32)) SeekEntryResult!3700)

(assert (=> b!489734 (= lt!221113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221111 (select (store (arr!15226 a!3235) i!1204 k0!2280) j!176) (array!31684 (store (arr!15226 a!3235) i!1204 k0!2280) (size!15590 a!3235)) mask!3524))))

(declare-fun lt!221112 () (_ BitVec 32))

(declare-fun lt!221110 () SeekEntryResult!3700)

(assert (=> b!489734 (= lt!221110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221112 (select (arr!15226 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489734 (= lt!221111 (toIndex!0 (select (store (arr!15226 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489734 (= lt!221112 (toIndex!0 (select (arr!15226 a!3235) j!176) mask!3524))))

(assert (=> b!489734 e!287971))

(declare-fun res!292813 () Bool)

(assert (=> b!489734 (=> (not res!292813) (not e!287971))))

(assert (=> b!489734 (= res!292813 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14338 0))(
  ( (Unit!14339) )
))
(declare-fun lt!221114 () Unit!14338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14338)

(assert (=> b!489734 (= lt!221114 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44664 res!292817) b!489728))

(assert (= (and b!489728 res!292819) b!489727))

(assert (= (and b!489727 res!292814) b!489731))

(assert (= (and b!489731 res!292815) b!489730))

(assert (= (and b!489730 res!292816) b!489733))

(assert (= (and b!489733 res!292818) b!489729))

(assert (= (and b!489729 res!292812) b!489732))

(assert (= (and b!489732 res!292820) b!489734))

(assert (= (and b!489734 res!292813) b!489726))

(declare-fun m!469699 () Bool)

(assert (=> start!44664 m!469699))

(declare-fun m!469701 () Bool)

(assert (=> start!44664 m!469701))

(declare-fun m!469703 () Bool)

(assert (=> b!489734 m!469703))

(declare-fun m!469705 () Bool)

(assert (=> b!489734 m!469705))

(declare-fun m!469707 () Bool)

(assert (=> b!489734 m!469707))

(assert (=> b!489734 m!469707))

(declare-fun m!469709 () Bool)

(assert (=> b!489734 m!469709))

(declare-fun m!469711 () Bool)

(assert (=> b!489734 m!469711))

(declare-fun m!469713 () Bool)

(assert (=> b!489734 m!469713))

(assert (=> b!489734 m!469711))

(declare-fun m!469715 () Bool)

(assert (=> b!489734 m!469715))

(assert (=> b!489734 m!469711))

(declare-fun m!469717 () Bool)

(assert (=> b!489734 m!469717))

(assert (=> b!489734 m!469707))

(declare-fun m!469719 () Bool)

(assert (=> b!489734 m!469719))

(declare-fun m!469721 () Bool)

(assert (=> b!489731 m!469721))

(declare-fun m!469723 () Bool)

(assert (=> b!489729 m!469723))

(assert (=> b!489726 m!469711))

(assert (=> b!489726 m!469711))

(declare-fun m!469725 () Bool)

(assert (=> b!489726 m!469725))

(assert (=> b!489727 m!469711))

(assert (=> b!489727 m!469711))

(declare-fun m!469727 () Bool)

(assert (=> b!489727 m!469727))

(declare-fun m!469729 () Bool)

(assert (=> b!489732 m!469729))

(declare-fun m!469731 () Bool)

(assert (=> b!489733 m!469731))

(declare-fun m!469733 () Bool)

(assert (=> b!489730 m!469733))

(check-sat (not b!489729) (not b!489733) (not b!489731) (not b!489730) (not b!489732) (not start!44664) (not b!489726) (not b!489734) (not b!489727))
(check-sat)
