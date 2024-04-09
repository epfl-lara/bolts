; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64200 () Bool)

(assert start!64200)

(declare-fun res!482919 () Bool)

(declare-fun e!404199 () Bool)

(assert (=> start!64200 (=> (not res!482919) (not e!404199))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64200 (= res!482919 (validMask!0 mask!3328))))

(assert (=> start!64200 e!404199))

(assert (=> start!64200 true))

(declare-datatypes ((array!40791 0))(
  ( (array!40792 (arr!19516 (Array (_ BitVec 32) (_ BitVec 64))) (size!19937 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40791)

(declare-fun array_inv!15290 (array!40791) Bool)

(assert (=> start!64200 (array_inv!15290 a!3186)))

(declare-fun b!720655 () Bool)

(declare-fun res!482918 () Bool)

(assert (=> b!720655 (=> (not res!482918) (not e!404199))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720655 (= res!482918 (and (= (size!19937 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19937 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19937 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!720656 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404196 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7123 0))(
  ( (MissingZero!7123 (index!30859 (_ BitVec 32))) (Found!7123 (index!30860 (_ BitVec 32))) (Intermediate!7123 (undefined!7935 Bool) (index!30861 (_ BitVec 32)) (x!61892 (_ BitVec 32))) (Undefined!7123) (MissingVacant!7123 (index!30862 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40791 (_ BitVec 32)) SeekEntryResult!7123)

(assert (=> b!720656 (= e!404196 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19516 a!3186) j!159) a!3186 mask!3328) (Found!7123 j!159)))))

(declare-fun lt!319853 () SeekEntryResult!7123)

(declare-fun b!720657 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40791 (_ BitVec 32)) SeekEntryResult!7123)

(assert (=> b!720657 (= e!404196 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19516 a!3186) j!159) a!3186 mask!3328) lt!319853))))

(declare-fun b!720658 () Bool)

(declare-fun res!482917 () Bool)

(assert (=> b!720658 (=> (not res!482917) (not e!404199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720658 (= res!482917 (validKeyInArray!0 (select (arr!19516 a!3186) j!159)))))

(declare-fun b!720659 () Bool)

(declare-fun res!482911 () Bool)

(assert (=> b!720659 (=> (not res!482911) (not e!404199))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720659 (= res!482911 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720660 () Bool)

(declare-fun res!482912 () Bool)

(declare-fun e!404198 () Bool)

(assert (=> b!720660 (=> (not res!482912) (not e!404198))))

(declare-datatypes ((List!13571 0))(
  ( (Nil!13568) (Cons!13567 (h!14618 (_ BitVec 64)) (t!19894 List!13571)) )
))
(declare-fun arrayNoDuplicates!0 (array!40791 (_ BitVec 32) List!13571) Bool)

(assert (=> b!720660 (= res!482912 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13568))))

(declare-fun b!720661 () Bool)

(declare-fun e!404195 () Bool)

(assert (=> b!720661 (= e!404195 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!319852 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720661 (= lt!319852 (toIndex!0 (select (store (arr!19516 a!3186) i!1173 k0!2102) j!159) mask!3328))))

(declare-fun b!720662 () Bool)

(assert (=> b!720662 (= e!404199 e!404198)))

(declare-fun res!482920 () Bool)

(assert (=> b!720662 (=> (not res!482920) (not e!404198))))

(declare-fun lt!319851 () SeekEntryResult!7123)

(assert (=> b!720662 (= res!482920 (or (= lt!319851 (MissingZero!7123 i!1173)) (= lt!319851 (MissingVacant!7123 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40791 (_ BitVec 32)) SeekEntryResult!7123)

(assert (=> b!720662 (= lt!319851 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!720663 () Bool)

(declare-fun res!482916 () Bool)

(assert (=> b!720663 (=> (not res!482916) (not e!404199))))

(assert (=> b!720663 (= res!482916 (validKeyInArray!0 k0!2102))))

(declare-fun b!720664 () Bool)

(declare-fun res!482921 () Bool)

(assert (=> b!720664 (=> (not res!482921) (not e!404195))))

(assert (=> b!720664 (= res!482921 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19516 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720665 () Bool)

(declare-fun res!482915 () Bool)

(assert (=> b!720665 (=> (not res!482915) (not e!404195))))

(assert (=> b!720665 (= res!482915 e!404196)))

(declare-fun c!79242 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720665 (= c!79242 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720666 () Bool)

(assert (=> b!720666 (= e!404198 e!404195)))

(declare-fun res!482913 () Bool)

(assert (=> b!720666 (=> (not res!482913) (not e!404195))))

(assert (=> b!720666 (= res!482913 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19516 a!3186) j!159) mask!3328) (select (arr!19516 a!3186) j!159) a!3186 mask!3328) lt!319853))))

(assert (=> b!720666 (= lt!319853 (Intermediate!7123 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720667 () Bool)

(declare-fun res!482914 () Bool)

(assert (=> b!720667 (=> (not res!482914) (not e!404198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40791 (_ BitVec 32)) Bool)

(assert (=> b!720667 (= res!482914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720668 () Bool)

(declare-fun res!482922 () Bool)

(assert (=> b!720668 (=> (not res!482922) (not e!404198))))

(assert (=> b!720668 (= res!482922 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19937 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19937 a!3186))))))

(assert (= (and start!64200 res!482919) b!720655))

(assert (= (and b!720655 res!482918) b!720658))

(assert (= (and b!720658 res!482917) b!720663))

(assert (= (and b!720663 res!482916) b!720659))

(assert (= (and b!720659 res!482911) b!720662))

(assert (= (and b!720662 res!482920) b!720667))

(assert (= (and b!720667 res!482914) b!720660))

(assert (= (and b!720660 res!482912) b!720668))

(assert (= (and b!720668 res!482922) b!720666))

(assert (= (and b!720666 res!482913) b!720664))

(assert (= (and b!720664 res!482921) b!720665))

(assert (= (and b!720665 c!79242) b!720657))

(assert (= (and b!720665 (not c!79242)) b!720656))

(assert (= (and b!720665 res!482915) b!720661))

(declare-fun m!675767 () Bool)

(assert (=> b!720663 m!675767))

(declare-fun m!675769 () Bool)

(assert (=> b!720661 m!675769))

(declare-fun m!675771 () Bool)

(assert (=> b!720661 m!675771))

(assert (=> b!720661 m!675771))

(declare-fun m!675773 () Bool)

(assert (=> b!720661 m!675773))

(declare-fun m!675775 () Bool)

(assert (=> start!64200 m!675775))

(declare-fun m!675777 () Bool)

(assert (=> start!64200 m!675777))

(declare-fun m!675779 () Bool)

(assert (=> b!720664 m!675779))

(declare-fun m!675781 () Bool)

(assert (=> b!720659 m!675781))

(declare-fun m!675783 () Bool)

(assert (=> b!720666 m!675783))

(assert (=> b!720666 m!675783))

(declare-fun m!675785 () Bool)

(assert (=> b!720666 m!675785))

(assert (=> b!720666 m!675785))

(assert (=> b!720666 m!675783))

(declare-fun m!675787 () Bool)

(assert (=> b!720666 m!675787))

(assert (=> b!720658 m!675783))

(assert (=> b!720658 m!675783))

(declare-fun m!675789 () Bool)

(assert (=> b!720658 m!675789))

(declare-fun m!675791 () Bool)

(assert (=> b!720660 m!675791))

(assert (=> b!720656 m!675783))

(assert (=> b!720656 m!675783))

(declare-fun m!675793 () Bool)

(assert (=> b!720656 m!675793))

(assert (=> b!720657 m!675783))

(assert (=> b!720657 m!675783))

(declare-fun m!675795 () Bool)

(assert (=> b!720657 m!675795))

(declare-fun m!675797 () Bool)

(assert (=> b!720662 m!675797))

(declare-fun m!675799 () Bool)

(assert (=> b!720667 m!675799))

(check-sat (not b!720660) (not b!720658) (not b!720667) (not b!720663) (not b!720656) (not b!720666) (not b!720661) (not b!720659) (not start!64200) (not b!720662) (not b!720657))
(check-sat)
