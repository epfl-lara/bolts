; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30914 () Bool)

(assert start!30914)

(declare-fun b!309984 () Bool)

(declare-fun res!166601 () Bool)

(declare-fun e!193584 () Bool)

(assert (=> b!309984 (=> (not res!166601) (not e!193584))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309984 (= res!166601 (validKeyInArray!0 k0!2441))))

(declare-fun b!309985 () Bool)

(declare-fun e!193581 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!309985 (= e!193581 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun e!193582 () Bool)

(assert (=> b!309985 e!193582))

(declare-fun res!166599 () Bool)

(assert (=> b!309985 (=> (not res!166599) (not e!193582))))

(declare-datatypes ((array!15814 0))(
  ( (array!15815 (arr!7487 (Array (_ BitVec 32) (_ BitVec 64))) (size!7839 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15814)

(declare-datatypes ((SeekEntryResult!2638 0))(
  ( (MissingZero!2638 (index!12728 (_ BitVec 32))) (Found!2638 (index!12729 (_ BitVec 32))) (Intermediate!2638 (undefined!3450 Bool) (index!12730 (_ BitVec 32)) (x!30926 (_ BitVec 32))) (Undefined!2638) (MissingVacant!2638 (index!12731 (_ BitVec 32))) )
))
(declare-fun lt!151816 () SeekEntryResult!2638)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!151814 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15814 (_ BitVec 32)) SeekEntryResult!2638)

(assert (=> b!309985 (= res!166599 (= lt!151816 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151814 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309985 (= lt!151814 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!309986 () Bool)

(declare-fun res!166600 () Bool)

(assert (=> b!309986 (=> (not res!166600) (not e!193584))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15814 (_ BitVec 32)) SeekEntryResult!2638)

(assert (=> b!309986 (= res!166600 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2638 i!1240)))))

(declare-fun b!309987 () Bool)

(declare-fun res!166598 () Bool)

(assert (=> b!309987 (=> (not res!166598) (not e!193584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15814 (_ BitVec 32)) Bool)

(assert (=> b!309987 (= res!166598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!166596 () Bool)

(assert (=> start!30914 (=> (not res!166596) (not e!193584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30914 (= res!166596 (validMask!0 mask!3709))))

(assert (=> start!30914 e!193584))

(declare-fun array_inv!5441 (array!15814) Bool)

(assert (=> start!30914 (array_inv!5441 a!3293)))

(assert (=> start!30914 true))

(declare-fun b!309988 () Bool)

(declare-fun lt!151817 () array!15814)

(assert (=> b!309988 (= e!193582 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!151817 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151814 k0!2441 lt!151817 mask!3709)))))

(assert (=> b!309988 (= lt!151817 (array!15815 (store (arr!7487 a!3293) i!1240 k0!2441) (size!7839 a!3293)))))

(declare-fun b!309989 () Bool)

(declare-fun res!166604 () Bool)

(assert (=> b!309989 (=> (not res!166604) (not e!193584))))

(assert (=> b!309989 (= res!166604 (and (= (size!7839 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7839 a!3293))))))

(declare-fun b!309990 () Bool)

(declare-fun e!193583 () Bool)

(assert (=> b!309990 (= e!193583 e!193581)))

(declare-fun res!166603 () Bool)

(assert (=> b!309990 (=> (not res!166603) (not e!193581))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!151815 () SeekEntryResult!2638)

(assert (=> b!309990 (= res!166603 (and (= lt!151816 lt!151815) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7487 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309990 (= lt!151816 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!309991 () Bool)

(assert (=> b!309991 (= e!193584 e!193583)))

(declare-fun res!166605 () Bool)

(assert (=> b!309991 (=> (not res!166605) (not e!193583))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309991 (= res!166605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151815))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!309991 (= lt!151815 (Intermediate!2638 false resIndex!52 resX!52))))

(declare-fun b!309992 () Bool)

(declare-fun res!166602 () Bool)

(assert (=> b!309992 (=> (not res!166602) (not e!193583))))

(assert (=> b!309992 (= res!166602 (and (= (select (arr!7487 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7839 a!3293))))))

(declare-fun b!309993 () Bool)

(declare-fun res!166597 () Bool)

(assert (=> b!309993 (=> (not res!166597) (not e!193584))))

(declare-fun arrayContainsKey!0 (array!15814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309993 (= res!166597 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30914 res!166596) b!309989))

(assert (= (and b!309989 res!166604) b!309984))

(assert (= (and b!309984 res!166601) b!309993))

(assert (= (and b!309993 res!166597) b!309986))

(assert (= (and b!309986 res!166600) b!309987))

(assert (= (and b!309987 res!166598) b!309991))

(assert (= (and b!309991 res!166605) b!309992))

(assert (= (and b!309992 res!166602) b!309990))

(assert (= (and b!309990 res!166603) b!309985))

(assert (= (and b!309985 res!166599) b!309988))

(declare-fun m!319917 () Bool)

(assert (=> b!309984 m!319917))

(declare-fun m!319919 () Bool)

(assert (=> b!309992 m!319919))

(declare-fun m!319921 () Bool)

(assert (=> start!30914 m!319921))

(declare-fun m!319923 () Bool)

(assert (=> start!30914 m!319923))

(declare-fun m!319925 () Bool)

(assert (=> b!309988 m!319925))

(declare-fun m!319927 () Bool)

(assert (=> b!309988 m!319927))

(declare-fun m!319929 () Bool)

(assert (=> b!309988 m!319929))

(declare-fun m!319931 () Bool)

(assert (=> b!309991 m!319931))

(assert (=> b!309991 m!319931))

(declare-fun m!319933 () Bool)

(assert (=> b!309991 m!319933))

(declare-fun m!319935 () Bool)

(assert (=> b!309985 m!319935))

(declare-fun m!319937 () Bool)

(assert (=> b!309985 m!319937))

(declare-fun m!319939 () Bool)

(assert (=> b!309993 m!319939))

(declare-fun m!319941 () Bool)

(assert (=> b!309987 m!319941))

(declare-fun m!319943 () Bool)

(assert (=> b!309990 m!319943))

(declare-fun m!319945 () Bool)

(assert (=> b!309990 m!319945))

(declare-fun m!319947 () Bool)

(assert (=> b!309986 m!319947))

(check-sat (not b!309986) (not b!309987) (not b!309990) (not start!30914) (not b!309993) (not b!309988) (not b!309984) (not b!309985) (not b!309991))
(check-sat)
