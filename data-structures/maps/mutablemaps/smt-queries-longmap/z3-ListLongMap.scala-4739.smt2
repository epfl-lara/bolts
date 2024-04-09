; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65514 () Bool)

(assert start!65514)

(declare-fun b!746721 () Bool)

(declare-fun e!417004 () Bool)

(declare-fun e!417001 () Bool)

(assert (=> b!746721 (= e!417004 (not e!417001))))

(declare-fun res!503591 () Bool)

(assert (=> b!746721 (=> res!503591 e!417001)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7537 0))(
  ( (MissingZero!7537 (index!32515 (_ BitVec 32))) (Found!7537 (index!32516 (_ BitVec 32))) (Intermediate!7537 (undefined!8349 Bool) (index!32517 (_ BitVec 32)) (x!63488 (_ BitVec 32))) (Undefined!7537) (MissingVacant!7537 (index!32518 (_ BitVec 32))) )
))
(declare-fun lt!331914 () SeekEntryResult!7537)

(get-info :version)

(assert (=> b!746721 (= res!503591 (or (not ((_ is Intermediate!7537) lt!331914)) (bvslt x!1131 (x!63488 lt!331914)) (not (= x!1131 (x!63488 lt!331914))) (not (= index!1321 (index!32517 lt!331914)))))))

(declare-fun e!417009 () Bool)

(assert (=> b!746721 e!417009))

(declare-fun res!503587 () Bool)

(assert (=> b!746721 (=> (not res!503587) (not e!417009))))

(declare-fun lt!331911 () SeekEntryResult!7537)

(declare-fun lt!331916 () SeekEntryResult!7537)

(assert (=> b!746721 (= res!503587 (= lt!331911 lt!331916))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!746721 (= lt!331916 (Found!7537 j!159))))

(declare-datatypes ((array!41640 0))(
  ( (array!41641 (arr!19930 (Array (_ BitVec 32) (_ BitVec 64))) (size!20351 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41640)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41640 (_ BitVec 32)) SeekEntryResult!7537)

(assert (=> b!746721 (= lt!331911 (seekEntryOrOpen!0 (select (arr!19930 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41640 (_ BitVec 32)) Bool)

(assert (=> b!746721 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25554 0))(
  ( (Unit!25555) )
))
(declare-fun lt!331912 () Unit!25554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41640 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25554)

(assert (=> b!746721 (= lt!331912 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!503581 () Bool)

(declare-fun e!417008 () Bool)

(assert (=> start!65514 (=> (not res!503581) (not e!417008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65514 (= res!503581 (validMask!0 mask!3328))))

(assert (=> start!65514 e!417008))

(assert (=> start!65514 true))

(declare-fun array_inv!15704 (array!41640) Bool)

(assert (=> start!65514 (array_inv!15704 a!3186)))

(declare-fun e!417002 () Bool)

(declare-fun b!746722 () Bool)

(declare-fun lt!331910 () SeekEntryResult!7537)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41640 (_ BitVec 32)) SeekEntryResult!7537)

(assert (=> b!746722 (= e!417002 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19930 a!3186) j!159) a!3186 mask!3328) lt!331910))))

(declare-fun b!746723 () Bool)

(declare-fun e!417005 () Bool)

(assert (=> b!746723 (= e!417005 true)))

(declare-fun lt!331915 () SeekEntryResult!7537)

(assert (=> b!746723 (= lt!331911 lt!331915)))

(declare-fun b!746724 () Bool)

(declare-fun res!503595 () Bool)

(declare-fun e!417003 () Bool)

(assert (=> b!746724 (=> (not res!503595) (not e!417003))))

(declare-datatypes ((List!13985 0))(
  ( (Nil!13982) (Cons!13981 (h!15053 (_ BitVec 64)) (t!20308 List!13985)) )
))
(declare-fun arrayNoDuplicates!0 (array!41640 (_ BitVec 32) List!13985) Bool)

(assert (=> b!746724 (= res!503595 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13982))))

(declare-fun b!746725 () Bool)

(declare-fun e!417006 () Bool)

(assert (=> b!746725 (= e!417003 e!417006)))

(declare-fun res!503590 () Bool)

(assert (=> b!746725 (=> (not res!503590) (not e!417006))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746725 (= res!503590 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19930 a!3186) j!159) mask!3328) (select (arr!19930 a!3186) j!159) a!3186 mask!3328) lt!331910))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746725 (= lt!331910 (Intermediate!7537 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746726 () Bool)

(assert (=> b!746726 (= e!417001 e!417005)))

(declare-fun res!503586 () Bool)

(assert (=> b!746726 (=> res!503586 e!417005)))

(declare-fun lt!331913 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!746726 (= res!503586 (or (not (= lt!331915 lt!331916)) (= (select (store (arr!19930 a!3186) i!1173 k0!2102) index!1321) lt!331913) (not (= (select (store (arr!19930 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41640 (_ BitVec 32)) SeekEntryResult!7537)

(assert (=> b!746726 (= lt!331915 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19930 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746727 () Bool)

(declare-fun res!503592 () Bool)

(assert (=> b!746727 (=> (not res!503592) (not e!417008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746727 (= res!503592 (validKeyInArray!0 k0!2102))))

(declare-fun b!746728 () Bool)

(declare-fun res!503588 () Bool)

(assert (=> b!746728 (=> (not res!503588) (not e!417008))))

(assert (=> b!746728 (= res!503588 (and (= (size!20351 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20351 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20351 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746729 () Bool)

(declare-fun res!503583 () Bool)

(assert (=> b!746729 (=> (not res!503583) (not e!417006))))

(assert (=> b!746729 (= res!503583 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19930 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746730 () Bool)

(declare-fun res!503589 () Bool)

(assert (=> b!746730 (=> (not res!503589) (not e!417003))))

(assert (=> b!746730 (= res!503589 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20351 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20351 a!3186))))))

(declare-fun b!746731 () Bool)

(assert (=> b!746731 (= e!417008 e!417003)))

(declare-fun res!503594 () Bool)

(assert (=> b!746731 (=> (not res!503594) (not e!417003))))

(declare-fun lt!331909 () SeekEntryResult!7537)

(assert (=> b!746731 (= res!503594 (or (= lt!331909 (MissingZero!7537 i!1173)) (= lt!331909 (MissingVacant!7537 i!1173))))))

(assert (=> b!746731 (= lt!331909 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!746732 () Bool)

(declare-fun res!503585 () Bool)

(assert (=> b!746732 (=> (not res!503585) (not e!417008))))

(assert (=> b!746732 (= res!503585 (validKeyInArray!0 (select (arr!19930 a!3186) j!159)))))

(declare-fun b!746733 () Bool)

(assert (=> b!746733 (= e!417009 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19930 a!3186) j!159) a!3186 mask!3328) lt!331916))))

(declare-fun b!746734 () Bool)

(assert (=> b!746734 (= e!417006 e!417004)))

(declare-fun res!503580 () Bool)

(assert (=> b!746734 (=> (not res!503580) (not e!417004))))

(declare-fun lt!331907 () SeekEntryResult!7537)

(assert (=> b!746734 (= res!503580 (= lt!331907 lt!331914))))

(declare-fun lt!331908 () array!41640)

(assert (=> b!746734 (= lt!331914 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331913 lt!331908 mask!3328))))

(assert (=> b!746734 (= lt!331907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331913 mask!3328) lt!331913 lt!331908 mask!3328))))

(assert (=> b!746734 (= lt!331913 (select (store (arr!19930 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!746734 (= lt!331908 (array!41641 (store (arr!19930 a!3186) i!1173 k0!2102) (size!20351 a!3186)))))

(declare-fun b!746735 () Bool)

(assert (=> b!746735 (= e!417002 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19930 a!3186) j!159) a!3186 mask!3328) (Found!7537 j!159)))))

(declare-fun b!746736 () Bool)

(declare-fun res!503584 () Bool)

(assert (=> b!746736 (=> (not res!503584) (not e!417003))))

(assert (=> b!746736 (= res!503584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746737 () Bool)

(declare-fun res!503582 () Bool)

(assert (=> b!746737 (=> (not res!503582) (not e!417006))))

(assert (=> b!746737 (= res!503582 e!417002)))

(declare-fun c!81951 () Bool)

(assert (=> b!746737 (= c!81951 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746738 () Bool)

(declare-fun res!503593 () Bool)

(assert (=> b!746738 (=> (not res!503593) (not e!417008))))

(declare-fun arrayContainsKey!0 (array!41640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746738 (= res!503593 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65514 res!503581) b!746728))

(assert (= (and b!746728 res!503588) b!746732))

(assert (= (and b!746732 res!503585) b!746727))

(assert (= (and b!746727 res!503592) b!746738))

(assert (= (and b!746738 res!503593) b!746731))

(assert (= (and b!746731 res!503594) b!746736))

(assert (= (and b!746736 res!503584) b!746724))

(assert (= (and b!746724 res!503595) b!746730))

(assert (= (and b!746730 res!503589) b!746725))

(assert (= (and b!746725 res!503590) b!746729))

(assert (= (and b!746729 res!503583) b!746737))

(assert (= (and b!746737 c!81951) b!746722))

(assert (= (and b!746737 (not c!81951)) b!746735))

(assert (= (and b!746737 res!503582) b!746734))

(assert (= (and b!746734 res!503580) b!746721))

(assert (= (and b!746721 res!503587) b!746733))

(assert (= (and b!746721 (not res!503591)) b!746726))

(assert (= (and b!746726 (not res!503586)) b!746723))

(declare-fun m!697033 () Bool)

(assert (=> b!746735 m!697033))

(assert (=> b!746735 m!697033))

(declare-fun m!697035 () Bool)

(assert (=> b!746735 m!697035))

(declare-fun m!697037 () Bool)

(assert (=> b!746726 m!697037))

(declare-fun m!697039 () Bool)

(assert (=> b!746726 m!697039))

(assert (=> b!746726 m!697033))

(assert (=> b!746726 m!697033))

(assert (=> b!746726 m!697035))

(declare-fun m!697041 () Bool)

(assert (=> start!65514 m!697041))

(declare-fun m!697043 () Bool)

(assert (=> start!65514 m!697043))

(assert (=> b!746734 m!697037))

(declare-fun m!697045 () Bool)

(assert (=> b!746734 m!697045))

(declare-fun m!697047 () Bool)

(assert (=> b!746734 m!697047))

(declare-fun m!697049 () Bool)

(assert (=> b!746734 m!697049))

(assert (=> b!746734 m!697045))

(declare-fun m!697051 () Bool)

(assert (=> b!746734 m!697051))

(declare-fun m!697053 () Bool)

(assert (=> b!746724 m!697053))

(declare-fun m!697055 () Bool)

(assert (=> b!746738 m!697055))

(assert (=> b!746721 m!697033))

(assert (=> b!746721 m!697033))

(declare-fun m!697057 () Bool)

(assert (=> b!746721 m!697057))

(declare-fun m!697059 () Bool)

(assert (=> b!746721 m!697059))

(declare-fun m!697061 () Bool)

(assert (=> b!746721 m!697061))

(assert (=> b!746725 m!697033))

(assert (=> b!746725 m!697033))

(declare-fun m!697063 () Bool)

(assert (=> b!746725 m!697063))

(assert (=> b!746725 m!697063))

(assert (=> b!746725 m!697033))

(declare-fun m!697065 () Bool)

(assert (=> b!746725 m!697065))

(assert (=> b!746733 m!697033))

(assert (=> b!746733 m!697033))

(declare-fun m!697067 () Bool)

(assert (=> b!746733 m!697067))

(assert (=> b!746732 m!697033))

(assert (=> b!746732 m!697033))

(declare-fun m!697069 () Bool)

(assert (=> b!746732 m!697069))

(declare-fun m!697071 () Bool)

(assert (=> b!746731 m!697071))

(declare-fun m!697073 () Bool)

(assert (=> b!746729 m!697073))

(assert (=> b!746722 m!697033))

(assert (=> b!746722 m!697033))

(declare-fun m!697075 () Bool)

(assert (=> b!746722 m!697075))

(declare-fun m!697077 () Bool)

(assert (=> b!746727 m!697077))

(declare-fun m!697079 () Bool)

(assert (=> b!746736 m!697079))

(check-sat (not b!746736) (not b!746726) (not b!746734) (not start!65514) (not b!746731) (not b!746725) (not b!746732) (not b!746735) (not b!746727) (not b!746722) (not b!746738) (not b!746733) (not b!746724) (not b!746721))
(check-sat)
