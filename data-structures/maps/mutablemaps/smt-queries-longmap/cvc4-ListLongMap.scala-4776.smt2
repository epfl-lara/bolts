; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65738 () Bool)

(assert start!65738)

(declare-datatypes ((array!41864 0))(
  ( (array!41865 (arr!20042 (Array (_ BitVec 32) (_ BitVec 64))) (size!20463 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41864)

(declare-fun e!420610 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!754123 () Bool)

(declare-datatypes ((SeekEntryResult!7649 0))(
  ( (MissingZero!7649 (index!32963 (_ BitVec 32))) (Found!7649 (index!32964 (_ BitVec 32))) (Intermediate!7649 (undefined!8461 Bool) (index!32965 (_ BitVec 32)) (x!63896 (_ BitVec 32))) (Undefined!7649) (MissingVacant!7649 (index!32966 (_ BitVec 32))) )
))
(declare-fun lt!335607 () SeekEntryResult!7649)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41864 (_ BitVec 32)) SeekEntryResult!7649)

(assert (=> b!754123 (= e!420610 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20042 a!3186) j!159) a!3186 mask!3328) lt!335607))))

(declare-fun b!754124 () Bool)

(declare-fun res!509653 () Bool)

(declare-fun e!420617 () Bool)

(assert (=> b!754124 (=> (not res!509653) (not e!420617))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754124 (= res!509653 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754125 () Bool)

(declare-fun e!420615 () Bool)

(declare-fun e!420608 () Bool)

(assert (=> b!754125 (= e!420615 e!420608)))

(declare-fun res!509659 () Bool)

(assert (=> b!754125 (=> res!509659 e!420608)))

(declare-fun lt!335615 () (_ BitVec 64))

(declare-fun lt!335610 () (_ BitVec 64))

(assert (=> b!754125 (= res!509659 (= lt!335615 lt!335610))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754125 (= lt!335615 (select (store (arr!20042 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!754126 () Bool)

(declare-fun res!509649 () Bool)

(assert (=> b!754126 (=> (not res!509649) (not e!420617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754126 (= res!509649 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!335609 () SeekEntryResult!7649)

(declare-fun b!754127 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!420618 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41864 (_ BitVec 32)) SeekEntryResult!7649)

(assert (=> b!754127 (= e!420618 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20042 a!3186) j!159) a!3186 mask!3328) lt!335609))))

(declare-fun b!754128 () Bool)

(declare-fun res!509664 () Bool)

(declare-fun e!420607 () Bool)

(assert (=> b!754128 (=> (not res!509664) (not e!420607))))

(assert (=> b!754128 (= res!509664 e!420610)))

(declare-fun c!82619 () Bool)

(assert (=> b!754128 (= c!82619 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754129 () Bool)

(declare-datatypes ((Unit!25998 0))(
  ( (Unit!25999) )
))
(declare-fun e!420609 () Unit!25998)

(declare-fun Unit!26000 () Unit!25998)

(assert (=> b!754129 (= e!420609 Unit!26000)))

(assert (=> b!754129 false))

(declare-fun b!754130 () Bool)

(declare-fun res!509650 () Bool)

(assert (=> b!754130 (=> (not res!509650) (not e!420617))))

(assert (=> b!754130 (= res!509650 (and (= (size!20463 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20463 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20463 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754132 () Bool)

(declare-fun e!420613 () Bool)

(assert (=> b!754132 (= e!420613 e!420615)))

(declare-fun res!509655 () Bool)

(assert (=> b!754132 (=> res!509655 e!420615)))

(declare-fun lt!335611 () SeekEntryResult!7649)

(assert (=> b!754132 (= res!509655 (not (= lt!335611 lt!335609)))))

(assert (=> b!754132 (= lt!335611 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20042 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754133 () Bool)

(declare-fun res!509647 () Bool)

(declare-fun e!420614 () Bool)

(assert (=> b!754133 (=> (not res!509647) (not e!420614))))

(assert (=> b!754133 (= res!509647 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20463 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20463 a!3186))))))

(declare-fun b!754134 () Bool)

(declare-fun e!420611 () Bool)

(assert (=> b!754134 (= e!420611 (not e!420613))))

(declare-fun res!509651 () Bool)

(assert (=> b!754134 (=> res!509651 e!420613)))

(declare-fun lt!335616 () SeekEntryResult!7649)

(assert (=> b!754134 (= res!509651 (or (not (is-Intermediate!7649 lt!335616)) (bvslt x!1131 (x!63896 lt!335616)) (not (= x!1131 (x!63896 lt!335616))) (not (= index!1321 (index!32965 lt!335616)))))))

(assert (=> b!754134 e!420618))

(declare-fun res!509654 () Bool)

(assert (=> b!754134 (=> (not res!509654) (not e!420618))))

(declare-fun lt!335617 () SeekEntryResult!7649)

(assert (=> b!754134 (= res!509654 (= lt!335617 lt!335609))))

(assert (=> b!754134 (= lt!335609 (Found!7649 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41864 (_ BitVec 32)) SeekEntryResult!7649)

(assert (=> b!754134 (= lt!335617 (seekEntryOrOpen!0 (select (arr!20042 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41864 (_ BitVec 32)) Bool)

(assert (=> b!754134 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335614 () Unit!25998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41864 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25998)

(assert (=> b!754134 (= lt!335614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754135 () Bool)

(declare-fun res!509657 () Bool)

(assert (=> b!754135 (=> (not res!509657) (not e!420617))))

(assert (=> b!754135 (= res!509657 (validKeyInArray!0 (select (arr!20042 a!3186) j!159)))))

(declare-fun b!754136 () Bool)

(declare-fun Unit!26001 () Unit!25998)

(assert (=> b!754136 (= e!420609 Unit!26001)))

(declare-fun b!754137 () Bool)

(declare-fun res!509660 () Bool)

(assert (=> b!754137 (=> (not res!509660) (not e!420614))))

(declare-datatypes ((List!14097 0))(
  ( (Nil!14094) (Cons!14093 (h!15165 (_ BitVec 64)) (t!20420 List!14097)) )
))
(declare-fun arrayNoDuplicates!0 (array!41864 (_ BitVec 32) List!14097) Bool)

(assert (=> b!754137 (= res!509660 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14094))))

(declare-fun b!754138 () Bool)

(declare-fun res!509652 () Bool)

(assert (=> b!754138 (=> (not res!509652) (not e!420607))))

(assert (=> b!754138 (= res!509652 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20042 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754139 () Bool)

(assert (=> b!754139 (= e!420614 e!420607)))

(declare-fun res!509656 () Bool)

(assert (=> b!754139 (=> (not res!509656) (not e!420607))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754139 (= res!509656 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20042 a!3186) j!159) mask!3328) (select (arr!20042 a!3186) j!159) a!3186 mask!3328) lt!335607))))

(assert (=> b!754139 (= lt!335607 (Intermediate!7649 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754140 () Bool)

(assert (=> b!754140 (= e!420617 e!420614)))

(declare-fun res!509658 () Bool)

(assert (=> b!754140 (=> (not res!509658) (not e!420614))))

(declare-fun lt!335618 () SeekEntryResult!7649)

(assert (=> b!754140 (= res!509658 (or (= lt!335618 (MissingZero!7649 i!1173)) (= lt!335618 (MissingVacant!7649 i!1173))))))

(assert (=> b!754140 (= lt!335618 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754141 () Bool)

(assert (=> b!754141 (= e!420607 e!420611)))

(declare-fun res!509661 () Bool)

(assert (=> b!754141 (=> (not res!509661) (not e!420611))))

(declare-fun lt!335608 () SeekEntryResult!7649)

(assert (=> b!754141 (= res!509661 (= lt!335608 lt!335616))))

(declare-fun lt!335613 () array!41864)

(assert (=> b!754141 (= lt!335616 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335610 lt!335613 mask!3328))))

(assert (=> b!754141 (= lt!335608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335610 mask!3328) lt!335610 lt!335613 mask!3328))))

(assert (=> b!754141 (= lt!335610 (select (store (arr!20042 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754141 (= lt!335613 (array!41865 (store (arr!20042 a!3186) i!1173 k!2102) (size!20463 a!3186)))))

(declare-fun b!754131 () Bool)

(declare-fun e!420612 () Bool)

(assert (=> b!754131 (= e!420612 (= lt!335617 lt!335611))))

(declare-fun res!509648 () Bool)

(assert (=> start!65738 (=> (not res!509648) (not e!420617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65738 (= res!509648 (validMask!0 mask!3328))))

(assert (=> start!65738 e!420617))

(assert (=> start!65738 true))

(declare-fun array_inv!15816 (array!41864) Bool)

(assert (=> start!65738 (array_inv!15816 a!3186)))

(declare-fun b!754142 () Bool)

(declare-fun res!509646 () Bool)

(assert (=> b!754142 (=> (not res!509646) (not e!420612))))

(assert (=> b!754142 (= res!509646 (= (seekEntryOrOpen!0 lt!335610 lt!335613 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335610 lt!335613 mask!3328)))))

(declare-fun b!754143 () Bool)

(assert (=> b!754143 (= e!420610 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20042 a!3186) j!159) a!3186 mask!3328) (Found!7649 j!159)))))

(declare-fun b!754144 () Bool)

(declare-fun res!509662 () Bool)

(assert (=> b!754144 (=> (not res!509662) (not e!420614))))

(assert (=> b!754144 (= res!509662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!754145 () Bool)

(assert (=> b!754145 (= e!420608 true)))

(assert (=> b!754145 e!420612))

(declare-fun res!509663 () Bool)

(assert (=> b!754145 (=> (not res!509663) (not e!420612))))

(assert (=> b!754145 (= res!509663 (= lt!335615 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335612 () Unit!25998)

(assert (=> b!754145 (= lt!335612 e!420609)))

(declare-fun c!82620 () Bool)

(assert (=> b!754145 (= c!82620 (= lt!335615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!65738 res!509648) b!754130))

(assert (= (and b!754130 res!509650) b!754135))

(assert (= (and b!754135 res!509657) b!754126))

(assert (= (and b!754126 res!509649) b!754124))

(assert (= (and b!754124 res!509653) b!754140))

(assert (= (and b!754140 res!509658) b!754144))

(assert (= (and b!754144 res!509662) b!754137))

(assert (= (and b!754137 res!509660) b!754133))

(assert (= (and b!754133 res!509647) b!754139))

(assert (= (and b!754139 res!509656) b!754138))

(assert (= (and b!754138 res!509652) b!754128))

(assert (= (and b!754128 c!82619) b!754123))

(assert (= (and b!754128 (not c!82619)) b!754143))

(assert (= (and b!754128 res!509664) b!754141))

(assert (= (and b!754141 res!509661) b!754134))

(assert (= (and b!754134 res!509654) b!754127))

(assert (= (and b!754134 (not res!509651)) b!754132))

(assert (= (and b!754132 (not res!509655)) b!754125))

(assert (= (and b!754125 (not res!509659)) b!754145))

(assert (= (and b!754145 c!82620) b!754129))

(assert (= (and b!754145 (not c!82620)) b!754136))

(assert (= (and b!754145 res!509663) b!754142))

(assert (= (and b!754142 res!509646) b!754131))

(declare-fun m!702717 () Bool)

(assert (=> b!754139 m!702717))

(assert (=> b!754139 m!702717))

(declare-fun m!702719 () Bool)

(assert (=> b!754139 m!702719))

(assert (=> b!754139 m!702719))

(assert (=> b!754139 m!702717))

(declare-fun m!702721 () Bool)

(assert (=> b!754139 m!702721))

(declare-fun m!702723 () Bool)

(assert (=> b!754126 m!702723))

(assert (=> b!754135 m!702717))

(assert (=> b!754135 m!702717))

(declare-fun m!702725 () Bool)

(assert (=> b!754135 m!702725))

(declare-fun m!702727 () Bool)

(assert (=> b!754144 m!702727))

(declare-fun m!702729 () Bool)

(assert (=> b!754125 m!702729))

(declare-fun m!702731 () Bool)

(assert (=> b!754125 m!702731))

(declare-fun m!702733 () Bool)

(assert (=> start!65738 m!702733))

(declare-fun m!702735 () Bool)

(assert (=> start!65738 m!702735))

(declare-fun m!702737 () Bool)

(assert (=> b!754137 m!702737))

(assert (=> b!754143 m!702717))

(assert (=> b!754143 m!702717))

(declare-fun m!702739 () Bool)

(assert (=> b!754143 m!702739))

(declare-fun m!702741 () Bool)

(assert (=> b!754140 m!702741))

(assert (=> b!754127 m!702717))

(assert (=> b!754127 m!702717))

(declare-fun m!702743 () Bool)

(assert (=> b!754127 m!702743))

(declare-fun m!702745 () Bool)

(assert (=> b!754138 m!702745))

(assert (=> b!754141 m!702729))

(declare-fun m!702747 () Bool)

(assert (=> b!754141 m!702747))

(declare-fun m!702749 () Bool)

(assert (=> b!754141 m!702749))

(declare-fun m!702751 () Bool)

(assert (=> b!754141 m!702751))

(assert (=> b!754141 m!702749))

(declare-fun m!702753 () Bool)

(assert (=> b!754141 m!702753))

(assert (=> b!754132 m!702717))

(assert (=> b!754132 m!702717))

(assert (=> b!754132 m!702739))

(declare-fun m!702755 () Bool)

(assert (=> b!754124 m!702755))

(assert (=> b!754123 m!702717))

(assert (=> b!754123 m!702717))

(declare-fun m!702757 () Bool)

(assert (=> b!754123 m!702757))

(declare-fun m!702759 () Bool)

(assert (=> b!754142 m!702759))

(declare-fun m!702761 () Bool)

(assert (=> b!754142 m!702761))

(assert (=> b!754134 m!702717))

(assert (=> b!754134 m!702717))

(declare-fun m!702763 () Bool)

(assert (=> b!754134 m!702763))

(declare-fun m!702765 () Bool)

(assert (=> b!754134 m!702765))

(declare-fun m!702767 () Bool)

(assert (=> b!754134 m!702767))

(push 1)

(assert (not b!754144))

(assert (not b!754139))

(assert (not b!754123))

(assert (not b!754124))

(assert (not b!754137))

(assert (not b!754141))

(assert (not b!754143))

(assert (not b!754140))

(assert (not b!754134))

(assert (not b!754127))

(assert (not b!754142))

(assert (not start!65738))

(assert (not b!754126))

(assert (not b!754132))

(assert (not b!754135))

(check-sat)

