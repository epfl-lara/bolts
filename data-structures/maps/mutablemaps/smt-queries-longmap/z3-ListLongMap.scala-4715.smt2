; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65370 () Bool)

(assert start!65370)

(declare-fun b!742690 () Bool)

(declare-fun e!415058 () Bool)

(declare-fun e!415061 () Bool)

(assert (=> b!742690 (= e!415058 e!415061)))

(declare-fun res!499996 () Bool)

(assert (=> b!742690 (=> (not res!499996) (not e!415061))))

(declare-datatypes ((SeekEntryResult!7465 0))(
  ( (MissingZero!7465 (index!32227 (_ BitVec 32))) (Found!7465 (index!32228 (_ BitVec 32))) (Intermediate!7465 (undefined!8277 Bool) (index!32229 (_ BitVec 32)) (x!63224 (_ BitVec 32))) (Undefined!7465) (MissingVacant!7465 (index!32230 (_ BitVec 32))) )
))
(declare-fun lt!329953 () SeekEntryResult!7465)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742690 (= res!499996 (or (= lt!329953 (MissingZero!7465 i!1173)) (= lt!329953 (MissingVacant!7465 i!1173))))))

(declare-datatypes ((array!41496 0))(
  ( (array!41497 (arr!19858 (Array (_ BitVec 32) (_ BitVec 64))) (size!20279 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41496)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41496 (_ BitVec 32)) SeekEntryResult!7465)

(assert (=> b!742690 (= lt!329953 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!742691 () Bool)

(declare-fun res!499982 () Bool)

(assert (=> b!742691 (=> (not res!499982) (not e!415058))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!742691 (= res!499982 (and (= (size!20279 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20279 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20279 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742692 () Bool)

(declare-fun res!499991 () Bool)

(declare-fun e!415062 () Bool)

(assert (=> b!742692 (=> (not res!499991) (not e!415062))))

(declare-fun e!415064 () Bool)

(assert (=> b!742692 (= res!499991 e!415064)))

(declare-fun c!81735 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742692 (= c!81735 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742693 () Bool)

(declare-fun res!499989 () Bool)

(declare-fun e!415065 () Bool)

(assert (=> b!742693 (=> res!499989 e!415065)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41496 (_ BitVec 32)) SeekEntryResult!7465)

(assert (=> b!742693 (= res!499989 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19858 a!3186) j!159) a!3186 mask!3328) (Found!7465 j!159))))))

(declare-fun b!742694 () Bool)

(declare-fun res!499994 () Bool)

(assert (=> b!742694 (=> (not res!499994) (not e!415058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742694 (= res!499994 (validKeyInArray!0 k0!2102))))

(declare-fun b!742695 () Bool)

(declare-fun e!415059 () Bool)

(assert (=> b!742695 (= e!415059 (not e!415065))))

(declare-fun res!499993 () Bool)

(assert (=> b!742695 (=> res!499993 e!415065)))

(declare-fun lt!329955 () SeekEntryResult!7465)

(get-info :version)

(assert (=> b!742695 (= res!499993 (or (not ((_ is Intermediate!7465) lt!329955)) (bvslt x!1131 (x!63224 lt!329955)) (not (= x!1131 (x!63224 lt!329955))) (not (= index!1321 (index!32229 lt!329955)))))))

(declare-fun e!415057 () Bool)

(assert (=> b!742695 e!415057))

(declare-fun res!499985 () Bool)

(assert (=> b!742695 (=> (not res!499985) (not e!415057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41496 (_ BitVec 32)) Bool)

(assert (=> b!742695 (= res!499985 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25410 0))(
  ( (Unit!25411) )
))
(declare-fun lt!329956 () Unit!25410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25410)

(assert (=> b!742695 (= lt!329956 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742696 () Bool)

(declare-fun lt!329958 () SeekEntryResult!7465)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41496 (_ BitVec 32)) SeekEntryResult!7465)

(assert (=> b!742696 (= e!415064 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19858 a!3186) j!159) a!3186 mask!3328) lt!329958))))

(declare-fun b!742697 () Bool)

(assert (=> b!742697 (= e!415064 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19858 a!3186) j!159) a!3186 mask!3328) (Found!7465 j!159)))))

(declare-fun b!742698 () Bool)

(declare-fun res!499981 () Bool)

(assert (=> b!742698 (=> (not res!499981) (not e!415061))))

(assert (=> b!742698 (= res!499981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742699 () Bool)

(declare-fun res!499997 () Bool)

(assert (=> b!742699 (=> (not res!499997) (not e!415062))))

(assert (=> b!742699 (= res!499997 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19858 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742700 () Bool)

(declare-fun e!415063 () Bool)

(assert (=> b!742700 (= e!415057 e!415063)))

(declare-fun res!499988 () Bool)

(assert (=> b!742700 (=> (not res!499988) (not e!415063))))

(declare-fun lt!329959 () SeekEntryResult!7465)

(assert (=> b!742700 (= res!499988 (= (seekEntryOrOpen!0 (select (arr!19858 a!3186) j!159) a!3186 mask!3328) lt!329959))))

(assert (=> b!742700 (= lt!329959 (Found!7465 j!159))))

(declare-fun b!742701 () Bool)

(assert (=> b!742701 (= e!415063 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19858 a!3186) j!159) a!3186 mask!3328) lt!329959))))

(declare-fun b!742702 () Bool)

(assert (=> b!742702 (= e!415061 e!415062)))

(declare-fun res!499984 () Bool)

(assert (=> b!742702 (=> (not res!499984) (not e!415062))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742702 (= res!499984 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19858 a!3186) j!159) mask!3328) (select (arr!19858 a!3186) j!159) a!3186 mask!3328) lt!329958))))

(assert (=> b!742702 (= lt!329958 (Intermediate!7465 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!499990 () Bool)

(assert (=> start!65370 (=> (not res!499990) (not e!415058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65370 (= res!499990 (validMask!0 mask!3328))))

(assert (=> start!65370 e!415058))

(assert (=> start!65370 true))

(declare-fun array_inv!15632 (array!41496) Bool)

(assert (=> start!65370 (array_inv!15632 a!3186)))

(declare-fun b!742703 () Bool)

(declare-fun res!499987 () Bool)

(assert (=> b!742703 (=> (not res!499987) (not e!415061))))

(declare-datatypes ((List!13913 0))(
  ( (Nil!13910) (Cons!13909 (h!14981 (_ BitVec 64)) (t!20236 List!13913)) )
))
(declare-fun arrayNoDuplicates!0 (array!41496 (_ BitVec 32) List!13913) Bool)

(assert (=> b!742703 (= res!499987 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13910))))

(declare-fun b!742704 () Bool)

(declare-fun res!499983 () Bool)

(assert (=> b!742704 (=> (not res!499983) (not e!415058))))

(assert (=> b!742704 (= res!499983 (validKeyInArray!0 (select (arr!19858 a!3186) j!159)))))

(declare-fun b!742705 () Bool)

(declare-fun res!499995 () Bool)

(assert (=> b!742705 (=> (not res!499995) (not e!415058))))

(declare-fun arrayContainsKey!0 (array!41496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742705 (= res!499995 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742706 () Bool)

(declare-fun res!499986 () Bool)

(assert (=> b!742706 (=> res!499986 e!415065)))

(declare-fun lt!329960 () (_ BitVec 64))

(assert (=> b!742706 (= res!499986 (or (not (= (select (store (arr!19858 a!3186) i!1173 k0!2102) index!1321) lt!329960)) (undefined!8277 lt!329955) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!742707 () Bool)

(declare-fun res!499998 () Bool)

(assert (=> b!742707 (=> (not res!499998) (not e!415061))))

(assert (=> b!742707 (= res!499998 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20279 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20279 a!3186))))))

(declare-fun b!742708 () Bool)

(assert (=> b!742708 (= e!415065 (validKeyInArray!0 lt!329960))))

(declare-fun b!742709 () Bool)

(assert (=> b!742709 (= e!415062 e!415059)))

(declare-fun res!499992 () Bool)

(assert (=> b!742709 (=> (not res!499992) (not e!415059))))

(declare-fun lt!329957 () SeekEntryResult!7465)

(assert (=> b!742709 (= res!499992 (= lt!329957 lt!329955))))

(declare-fun lt!329954 () array!41496)

(assert (=> b!742709 (= lt!329955 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329960 lt!329954 mask!3328))))

(assert (=> b!742709 (= lt!329957 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329960 mask!3328) lt!329960 lt!329954 mask!3328))))

(assert (=> b!742709 (= lt!329960 (select (store (arr!19858 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!742709 (= lt!329954 (array!41497 (store (arr!19858 a!3186) i!1173 k0!2102) (size!20279 a!3186)))))

(assert (= (and start!65370 res!499990) b!742691))

(assert (= (and b!742691 res!499982) b!742704))

(assert (= (and b!742704 res!499983) b!742694))

(assert (= (and b!742694 res!499994) b!742705))

(assert (= (and b!742705 res!499995) b!742690))

(assert (= (and b!742690 res!499996) b!742698))

(assert (= (and b!742698 res!499981) b!742703))

(assert (= (and b!742703 res!499987) b!742707))

(assert (= (and b!742707 res!499998) b!742702))

(assert (= (and b!742702 res!499984) b!742699))

(assert (= (and b!742699 res!499997) b!742692))

(assert (= (and b!742692 c!81735) b!742696))

(assert (= (and b!742692 (not c!81735)) b!742697))

(assert (= (and b!742692 res!499991) b!742709))

(assert (= (and b!742709 res!499992) b!742695))

(assert (= (and b!742695 res!499985) b!742700))

(assert (= (and b!742700 res!499988) b!742701))

(assert (= (and b!742695 (not res!499993)) b!742693))

(assert (= (and b!742693 (not res!499989)) b!742706))

(assert (= (and b!742706 (not res!499986)) b!742708))

(declare-fun m!693591 () Bool)

(assert (=> b!742698 m!693591))

(declare-fun m!693593 () Bool)

(assert (=> b!742702 m!693593))

(assert (=> b!742702 m!693593))

(declare-fun m!693595 () Bool)

(assert (=> b!742702 m!693595))

(assert (=> b!742702 m!693595))

(assert (=> b!742702 m!693593))

(declare-fun m!693597 () Bool)

(assert (=> b!742702 m!693597))

(assert (=> b!742696 m!693593))

(assert (=> b!742696 m!693593))

(declare-fun m!693599 () Bool)

(assert (=> b!742696 m!693599))

(assert (=> b!742700 m!693593))

(assert (=> b!742700 m!693593))

(declare-fun m!693601 () Bool)

(assert (=> b!742700 m!693601))

(declare-fun m!693603 () Bool)

(assert (=> b!742690 m!693603))

(declare-fun m!693605 () Bool)

(assert (=> b!742706 m!693605))

(declare-fun m!693607 () Bool)

(assert (=> b!742706 m!693607))

(assert (=> b!742693 m!693593))

(assert (=> b!742693 m!693593))

(declare-fun m!693609 () Bool)

(assert (=> b!742693 m!693609))

(declare-fun m!693611 () Bool)

(assert (=> b!742694 m!693611))

(assert (=> b!742701 m!693593))

(assert (=> b!742701 m!693593))

(declare-fun m!693613 () Bool)

(assert (=> b!742701 m!693613))

(declare-fun m!693615 () Bool)

(assert (=> b!742709 m!693615))

(declare-fun m!693617 () Bool)

(assert (=> b!742709 m!693617))

(assert (=> b!742709 m!693605))

(assert (=> b!742709 m!693615))

(declare-fun m!693619 () Bool)

(assert (=> b!742709 m!693619))

(declare-fun m!693621 () Bool)

(assert (=> b!742709 m!693621))

(declare-fun m!693623 () Bool)

(assert (=> b!742699 m!693623))

(declare-fun m!693625 () Bool)

(assert (=> b!742703 m!693625))

(declare-fun m!693627 () Bool)

(assert (=> b!742695 m!693627))

(declare-fun m!693629 () Bool)

(assert (=> b!742695 m!693629))

(declare-fun m!693631 () Bool)

(assert (=> b!742708 m!693631))

(assert (=> b!742704 m!693593))

(assert (=> b!742704 m!693593))

(declare-fun m!693633 () Bool)

(assert (=> b!742704 m!693633))

(declare-fun m!693635 () Bool)

(assert (=> start!65370 m!693635))

(declare-fun m!693637 () Bool)

(assert (=> start!65370 m!693637))

(declare-fun m!693639 () Bool)

(assert (=> b!742705 m!693639))

(assert (=> b!742697 m!693593))

(assert (=> b!742697 m!693593))

(assert (=> b!742697 m!693609))

(check-sat (not b!742704) (not b!742695) (not b!742693) (not b!742709) (not b!742702) (not start!65370) (not b!742708) (not b!742703) (not b!742700) (not b!742698) (not b!742697) (not b!742701) (not b!742696) (not b!742705) (not b!742694) (not b!742690))
(check-sat)
