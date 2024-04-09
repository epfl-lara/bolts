; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64296 () Bool)

(assert start!64296)

(declare-datatypes ((array!40830 0))(
  ( (array!40831 (arr!19534 (Array (_ BitVec 32) (_ BitVec 64))) (size!19955 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40830)

(declare-fun b!721726 () Bool)

(declare-datatypes ((SeekEntryResult!7141 0))(
  ( (MissingZero!7141 (index!30931 (_ BitVec 32))) (Found!7141 (index!30932 (_ BitVec 32))) (Intermediate!7141 (undefined!7953 Bool) (index!30933 (_ BitVec 32)) (x!61967 (_ BitVec 32))) (Undefined!7141) (MissingVacant!7141 (index!30934 (_ BitVec 32))) )
))
(declare-fun lt!320129 () SeekEntryResult!7141)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404669 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40830 (_ BitVec 32)) SeekEntryResult!7141)

(assert (=> b!721726 (= e!404669 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19534 a!3186) j!159) a!3186 mask!3328) lt!320129))))

(declare-fun b!721727 () Bool)

(declare-fun res!483670 () Bool)

(declare-fun e!404670 () Bool)

(assert (=> b!721727 (=> (not res!483670) (not e!404670))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!721727 (= res!483670 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19534 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721728 () Bool)

(declare-fun res!483661 () Bool)

(declare-fun e!404672 () Bool)

(assert (=> b!721728 (=> (not res!483661) (not e!404672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40830 (_ BitVec 32)) Bool)

(assert (=> b!721728 (= res!483661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721729 () Bool)

(declare-fun res!483667 () Bool)

(assert (=> b!721729 (=> (not res!483667) (not e!404670))))

(assert (=> b!721729 (= res!483667 e!404669)))

(declare-fun c!79404 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721729 (= c!79404 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721730 () Bool)

(declare-fun e!404671 () Bool)

(assert (=> b!721730 (= e!404671 e!404672)))

(declare-fun res!483662 () Bool)

(assert (=> b!721730 (=> (not res!483662) (not e!404672))))

(declare-fun lt!320128 () SeekEntryResult!7141)

(assert (=> b!721730 (= res!483662 (or (= lt!320128 (MissingZero!7141 i!1173)) (= lt!320128 (MissingVacant!7141 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40830 (_ BitVec 32)) SeekEntryResult!7141)

(assert (=> b!721730 (= lt!320128 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!721731 () Bool)

(declare-fun res!483664 () Bool)

(assert (=> b!721731 (=> (not res!483664) (not e!404671))))

(declare-fun arrayContainsKey!0 (array!40830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721731 (= res!483664 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721732 () Bool)

(declare-fun res!483663 () Bool)

(assert (=> b!721732 (=> (not res!483663) (not e!404671))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721732 (= res!483663 (validKeyInArray!0 (select (arr!19534 a!3186) j!159)))))

(declare-fun b!721733 () Bool)

(assert (=> b!721733 (= e!404670 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!721734 () Bool)

(declare-fun res!483671 () Bool)

(assert (=> b!721734 (=> (not res!483671) (not e!404671))))

(assert (=> b!721734 (= res!483671 (and (= (size!19955 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19955 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19955 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!721735 () Bool)

(declare-fun res!483669 () Bool)

(assert (=> b!721735 (=> (not res!483669) (not e!404672))))

(assert (=> b!721735 (= res!483669 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19955 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19955 a!3186))))))

(declare-fun b!721736 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40830 (_ BitVec 32)) SeekEntryResult!7141)

(assert (=> b!721736 (= e!404669 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19534 a!3186) j!159) a!3186 mask!3328) (Found!7141 j!159)))))

(declare-fun b!721737 () Bool)

(assert (=> b!721737 (= e!404672 e!404670)))

(declare-fun res!483665 () Bool)

(assert (=> b!721737 (=> (not res!483665) (not e!404670))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721737 (= res!483665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19534 a!3186) j!159) mask!3328) (select (arr!19534 a!3186) j!159) a!3186 mask!3328) lt!320129))))

(assert (=> b!721737 (= lt!320129 (Intermediate!7141 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!483666 () Bool)

(assert (=> start!64296 (=> (not res!483666) (not e!404671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64296 (= res!483666 (validMask!0 mask!3328))))

(assert (=> start!64296 e!404671))

(assert (=> start!64296 true))

(declare-fun array_inv!15308 (array!40830) Bool)

(assert (=> start!64296 (array_inv!15308 a!3186)))

(declare-fun b!721738 () Bool)

(declare-fun res!483672 () Bool)

(assert (=> b!721738 (=> (not res!483672) (not e!404671))))

(assert (=> b!721738 (= res!483672 (validKeyInArray!0 k0!2102))))

(declare-fun b!721739 () Bool)

(declare-fun res!483668 () Bool)

(assert (=> b!721739 (=> (not res!483668) (not e!404672))))

(declare-datatypes ((List!13589 0))(
  ( (Nil!13586) (Cons!13585 (h!14639 (_ BitVec 64)) (t!19912 List!13589)) )
))
(declare-fun arrayNoDuplicates!0 (array!40830 (_ BitVec 32) List!13589) Bool)

(assert (=> b!721739 (= res!483668 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13586))))

(assert (= (and start!64296 res!483666) b!721734))

(assert (= (and b!721734 res!483671) b!721732))

(assert (= (and b!721732 res!483663) b!721738))

(assert (= (and b!721738 res!483672) b!721731))

(assert (= (and b!721731 res!483664) b!721730))

(assert (= (and b!721730 res!483662) b!721728))

(assert (= (and b!721728 res!483661) b!721739))

(assert (= (and b!721739 res!483668) b!721735))

(assert (= (and b!721735 res!483669) b!721737))

(assert (= (and b!721737 res!483665) b!721727))

(assert (= (and b!721727 res!483670) b!721729))

(assert (= (and b!721729 c!79404) b!721726))

(assert (= (and b!721729 (not c!79404)) b!721736))

(assert (= (and b!721729 res!483667) b!721733))

(declare-fun m!676523 () Bool)

(assert (=> b!721738 m!676523))

(declare-fun m!676525 () Bool)

(assert (=> b!721728 m!676525))

(declare-fun m!676527 () Bool)

(assert (=> b!721737 m!676527))

(assert (=> b!721737 m!676527))

(declare-fun m!676529 () Bool)

(assert (=> b!721737 m!676529))

(assert (=> b!721737 m!676529))

(assert (=> b!721737 m!676527))

(declare-fun m!676531 () Bool)

(assert (=> b!721737 m!676531))

(assert (=> b!721732 m!676527))

(assert (=> b!721732 m!676527))

(declare-fun m!676533 () Bool)

(assert (=> b!721732 m!676533))

(declare-fun m!676535 () Bool)

(assert (=> b!721731 m!676535))

(assert (=> b!721736 m!676527))

(assert (=> b!721736 m!676527))

(declare-fun m!676537 () Bool)

(assert (=> b!721736 m!676537))

(declare-fun m!676539 () Bool)

(assert (=> b!721739 m!676539))

(declare-fun m!676541 () Bool)

(assert (=> start!64296 m!676541))

(declare-fun m!676543 () Bool)

(assert (=> start!64296 m!676543))

(declare-fun m!676545 () Bool)

(assert (=> b!721727 m!676545))

(declare-fun m!676547 () Bool)

(assert (=> b!721730 m!676547))

(assert (=> b!721726 m!676527))

(assert (=> b!721726 m!676527))

(declare-fun m!676549 () Bool)

(assert (=> b!721726 m!676549))

(check-sat (not b!721730) (not b!721726) (not b!721738) (not b!721739) (not b!721737) (not b!721736) (not b!721728) (not start!64296) (not b!721731) (not b!721732))
(check-sat)
