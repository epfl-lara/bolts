; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65184 () Bool)

(assert start!65184)

(declare-fun b!736626 () Bool)

(declare-fun e!412090 () Bool)

(declare-fun e!412093 () Bool)

(assert (=> b!736626 (= e!412090 e!412093)))

(declare-fun res!495190 () Bool)

(assert (=> b!736626 (=> (not res!495190) (not e!412093))))

(declare-datatypes ((SeekEntryResult!7372 0))(
  ( (MissingZero!7372 (index!31855 (_ BitVec 32))) (Found!7372 (index!31856 (_ BitVec 32))) (Intermediate!7372 (undefined!8184 Bool) (index!31857 (_ BitVec 32)) (x!62883 (_ BitVec 32))) (Undefined!7372) (MissingVacant!7372 (index!31858 (_ BitVec 32))) )
))
(declare-fun lt!326750 () SeekEntryResult!7372)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736626 (= res!495190 (or (= lt!326750 (MissingZero!7372 i!1173)) (= lt!326750 (MissingVacant!7372 i!1173))))))

(declare-datatypes ((array!41310 0))(
  ( (array!41311 (arr!19765 (Array (_ BitVec 32) (_ BitVec 64))) (size!20186 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41310)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41310 (_ BitVec 32)) SeekEntryResult!7372)

(assert (=> b!736626 (= lt!326750 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun e!412095 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!326744 () SeekEntryResult!7372)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!736627 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41310 (_ BitVec 32)) SeekEntryResult!7372)

(assert (=> b!736627 (= e!412095 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19765 a!3186) j!159) a!3186 mask!3328) lt!326744))))

(declare-fun b!736628 () Bool)

(declare-fun e!412085 () Bool)

(declare-fun e!412094 () Bool)

(assert (=> b!736628 (= e!412085 (not e!412094))))

(declare-fun res!495181 () Bool)

(assert (=> b!736628 (=> res!495181 e!412094)))

(declare-fun lt!326747 () SeekEntryResult!7372)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!736628 (= res!495181 (or (not ((_ is Intermediate!7372) lt!326747)) (bvsge x!1131 (x!62883 lt!326747))))))

(declare-fun lt!326752 () SeekEntryResult!7372)

(assert (=> b!736628 (= lt!326752 (Found!7372 j!159))))

(declare-fun e!412084 () Bool)

(assert (=> b!736628 e!412084))

(declare-fun res!495186 () Bool)

(assert (=> b!736628 (=> (not res!495186) (not e!412084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41310 (_ BitVec 32)) Bool)

(assert (=> b!736628 (= res!495186 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25106 0))(
  ( (Unit!25107) )
))
(declare-fun lt!326745 () Unit!25106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41310 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25106)

(assert (=> b!736628 (= lt!326745 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736629 () Bool)

(declare-fun res!495182 () Bool)

(assert (=> b!736629 (=> (not res!495182) (not e!412093))))

(assert (=> b!736629 (= res!495182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736630 () Bool)

(declare-fun res!495179 () Bool)

(assert (=> b!736630 (=> (not res!495179) (not e!412090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736630 (= res!495179 (validKeyInArray!0 (select (arr!19765 a!3186) j!159)))))

(declare-fun b!736631 () Bool)

(declare-fun res!495185 () Bool)

(assert (=> b!736631 (=> (not res!495185) (not e!412090))))

(assert (=> b!736631 (= res!495185 (and (= (size!20186 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20186 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20186 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736632 () Bool)

(declare-fun res!495178 () Bool)

(assert (=> b!736632 (=> (not res!495178) (not e!412090))))

(assert (=> b!736632 (= res!495178 (validKeyInArray!0 k0!2102))))

(declare-fun b!736633 () Bool)

(declare-fun res!495187 () Bool)

(declare-fun e!412089 () Bool)

(assert (=> b!736633 (=> (not res!495187) (not e!412089))))

(assert (=> b!736633 (= res!495187 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19765 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736634 () Bool)

(declare-fun res!495175 () Bool)

(declare-fun e!412091 () Bool)

(assert (=> b!736634 (=> res!495175 e!412091)))

(declare-fun e!412092 () Bool)

(assert (=> b!736634 (= res!495175 e!412092)))

(declare-fun c!81108 () Bool)

(declare-fun lt!326743 () Bool)

(assert (=> b!736634 (= c!81108 lt!326743)))

(declare-fun res!495180 () Bool)

(assert (=> start!65184 (=> (not res!495180) (not e!412090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65184 (= res!495180 (validMask!0 mask!3328))))

(assert (=> start!65184 e!412090))

(assert (=> start!65184 true))

(declare-fun array_inv!15539 (array!41310) Bool)

(assert (=> start!65184 (array_inv!15539 a!3186)))

(declare-fun b!736635 () Bool)

(declare-fun res!495192 () Bool)

(assert (=> b!736635 (=> (not res!495192) (not e!412090))))

(declare-fun arrayContainsKey!0 (array!41310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736635 (= res!495192 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736636 () Bool)

(declare-fun e!412088 () Unit!25106)

(declare-fun Unit!25108 () Unit!25106)

(assert (=> b!736636 (= e!412088 Unit!25108)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!326756 () SeekEntryResult!7372)

(assert (=> b!736636 (= lt!326756 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19765 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326754 () (_ BitVec 32))

(assert (=> b!736636 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326754 resIntermediateIndex!5 (select (arr!19765 a!3186) j!159) a!3186 mask!3328) lt!326752)))

(declare-fun b!736637 () Bool)

(assert (=> b!736637 (= e!412089 e!412085)))

(declare-fun res!495183 () Bool)

(assert (=> b!736637 (=> (not res!495183) (not e!412085))))

(declare-fun lt!326746 () SeekEntryResult!7372)

(assert (=> b!736637 (= res!495183 (= lt!326746 lt!326747))))

(declare-fun lt!326748 () array!41310)

(declare-fun lt!326751 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41310 (_ BitVec 32)) SeekEntryResult!7372)

(assert (=> b!736637 (= lt!326747 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326751 lt!326748 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736637 (= lt!326746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326751 mask!3328) lt!326751 lt!326748 mask!3328))))

(assert (=> b!736637 (= lt!326751 (select (store (arr!19765 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!736637 (= lt!326748 (array!41311 (store (arr!19765 a!3186) i!1173 k0!2102) (size!20186 a!3186)))))

(declare-fun b!736638 () Bool)

(declare-fun Unit!25109 () Unit!25106)

(assert (=> b!736638 (= e!412088 Unit!25109)))

(declare-fun lt!326753 () SeekEntryResult!7372)

(assert (=> b!736638 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326754 (select (arr!19765 a!3186) j!159) a!3186 mask!3328) lt!326753)))

(declare-fun b!736639 () Bool)

(assert (=> b!736639 (= e!412091 true)))

(declare-fun lt!326749 () SeekEntryResult!7372)

(assert (=> b!736639 (= lt!326749 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326754 lt!326751 lt!326748 mask!3328))))

(declare-fun e!412087 () Bool)

(declare-fun b!736640 () Bool)

(assert (=> b!736640 (= e!412087 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19765 a!3186) j!159) a!3186 mask!3328) (Found!7372 j!159)))))

(declare-fun b!736641 () Bool)

(declare-fun res!495177 () Bool)

(assert (=> b!736641 (=> (not res!495177) (not e!412093))))

(declare-datatypes ((List!13820 0))(
  ( (Nil!13817) (Cons!13816 (h!14888 (_ BitVec 64)) (t!20143 List!13820)) )
))
(declare-fun arrayNoDuplicates!0 (array!41310 (_ BitVec 32) List!13820) Bool)

(assert (=> b!736641 (= res!495177 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13817))))

(declare-fun b!736642 () Bool)

(declare-fun res!495189 () Bool)

(assert (=> b!736642 (=> (not res!495189) (not e!412089))))

(assert (=> b!736642 (= res!495189 e!412087)))

(declare-fun c!81107 () Bool)

(assert (=> b!736642 (= c!81107 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736643 () Bool)

(assert (=> b!736643 (= e!412093 e!412089)))

(declare-fun res!495191 () Bool)

(assert (=> b!736643 (=> (not res!495191) (not e!412089))))

(assert (=> b!736643 (= res!495191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19765 a!3186) j!159) mask!3328) (select (arr!19765 a!3186) j!159) a!3186 mask!3328) lt!326753))))

(assert (=> b!736643 (= lt!326753 (Intermediate!7372 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736644 () Bool)

(assert (=> b!736644 (= e!412092 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326754 resIntermediateIndex!5 (select (arr!19765 a!3186) j!159) a!3186 mask!3328) lt!326752)))))

(declare-fun b!736645 () Bool)

(assert (=> b!736645 (= e!412084 e!412095)))

(declare-fun res!495188 () Bool)

(assert (=> b!736645 (=> (not res!495188) (not e!412095))))

(assert (=> b!736645 (= res!495188 (= (seekEntryOrOpen!0 (select (arr!19765 a!3186) j!159) a!3186 mask!3328) lt!326744))))

(assert (=> b!736645 (= lt!326744 (Found!7372 j!159))))

(declare-fun b!736646 () Bool)

(assert (=> b!736646 (= e!412094 e!412091)))

(declare-fun res!495184 () Bool)

(assert (=> b!736646 (=> res!495184 e!412091)))

(assert (=> b!736646 (= res!495184 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326754 #b00000000000000000000000000000000) (bvsge lt!326754 (size!20186 a!3186))))))

(declare-fun lt!326755 () Unit!25106)

(assert (=> b!736646 (= lt!326755 e!412088)))

(declare-fun c!81106 () Bool)

(assert (=> b!736646 (= c!81106 lt!326743)))

(assert (=> b!736646 (= lt!326743 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736646 (= lt!326754 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736647 () Bool)

(assert (=> b!736647 (= e!412092 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326754 (select (arr!19765 a!3186) j!159) a!3186 mask!3328) lt!326753)))))

(declare-fun b!736648 () Bool)

(assert (=> b!736648 (= e!412087 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19765 a!3186) j!159) a!3186 mask!3328) lt!326753))))

(declare-fun b!736649 () Bool)

(declare-fun res!495176 () Bool)

(assert (=> b!736649 (=> (not res!495176) (not e!412093))))

(assert (=> b!736649 (= res!495176 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20186 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20186 a!3186))))))

(assert (= (and start!65184 res!495180) b!736631))

(assert (= (and b!736631 res!495185) b!736630))

(assert (= (and b!736630 res!495179) b!736632))

(assert (= (and b!736632 res!495178) b!736635))

(assert (= (and b!736635 res!495192) b!736626))

(assert (= (and b!736626 res!495190) b!736629))

(assert (= (and b!736629 res!495182) b!736641))

(assert (= (and b!736641 res!495177) b!736649))

(assert (= (and b!736649 res!495176) b!736643))

(assert (= (and b!736643 res!495191) b!736633))

(assert (= (and b!736633 res!495187) b!736642))

(assert (= (and b!736642 c!81107) b!736648))

(assert (= (and b!736642 (not c!81107)) b!736640))

(assert (= (and b!736642 res!495189) b!736637))

(assert (= (and b!736637 res!495183) b!736628))

(assert (= (and b!736628 res!495186) b!736645))

(assert (= (and b!736645 res!495188) b!736627))

(assert (= (and b!736628 (not res!495181)) b!736646))

(assert (= (and b!736646 c!81106) b!736638))

(assert (= (and b!736646 (not c!81106)) b!736636))

(assert (= (and b!736646 (not res!495184)) b!736634))

(assert (= (and b!736634 c!81108) b!736647))

(assert (= (and b!736634 (not c!81108)) b!736644))

(assert (= (and b!736634 (not res!495175)) b!736639))

(declare-fun m!688777 () Bool)

(assert (=> start!65184 m!688777))

(declare-fun m!688779 () Bool)

(assert (=> start!65184 m!688779))

(declare-fun m!688781 () Bool)

(assert (=> b!736645 m!688781))

(assert (=> b!736645 m!688781))

(declare-fun m!688783 () Bool)

(assert (=> b!736645 m!688783))

(assert (=> b!736640 m!688781))

(assert (=> b!736640 m!688781))

(declare-fun m!688785 () Bool)

(assert (=> b!736640 m!688785))

(declare-fun m!688787 () Bool)

(assert (=> b!736626 m!688787))

(declare-fun m!688789 () Bool)

(assert (=> b!736628 m!688789))

(declare-fun m!688791 () Bool)

(assert (=> b!736628 m!688791))

(assert (=> b!736644 m!688781))

(assert (=> b!736644 m!688781))

(declare-fun m!688793 () Bool)

(assert (=> b!736644 m!688793))

(declare-fun m!688795 () Bool)

(assert (=> b!736633 m!688795))

(declare-fun m!688797 () Bool)

(assert (=> b!736637 m!688797))

(declare-fun m!688799 () Bool)

(assert (=> b!736637 m!688799))

(assert (=> b!736637 m!688797))

(declare-fun m!688801 () Bool)

(assert (=> b!736637 m!688801))

(declare-fun m!688803 () Bool)

(assert (=> b!736637 m!688803))

(declare-fun m!688805 () Bool)

(assert (=> b!736637 m!688805))

(assert (=> b!736643 m!688781))

(assert (=> b!736643 m!688781))

(declare-fun m!688807 () Bool)

(assert (=> b!736643 m!688807))

(assert (=> b!736643 m!688807))

(assert (=> b!736643 m!688781))

(declare-fun m!688809 () Bool)

(assert (=> b!736643 m!688809))

(assert (=> b!736648 m!688781))

(assert (=> b!736648 m!688781))

(declare-fun m!688811 () Bool)

(assert (=> b!736648 m!688811))

(declare-fun m!688813 () Bool)

(assert (=> b!736639 m!688813))

(assert (=> b!736630 m!688781))

(assert (=> b!736630 m!688781))

(declare-fun m!688815 () Bool)

(assert (=> b!736630 m!688815))

(assert (=> b!736638 m!688781))

(assert (=> b!736638 m!688781))

(declare-fun m!688817 () Bool)

(assert (=> b!736638 m!688817))

(declare-fun m!688819 () Bool)

(assert (=> b!736635 m!688819))

(assert (=> b!736647 m!688781))

(assert (=> b!736647 m!688781))

(assert (=> b!736647 m!688817))

(assert (=> b!736627 m!688781))

(assert (=> b!736627 m!688781))

(declare-fun m!688821 () Bool)

(assert (=> b!736627 m!688821))

(declare-fun m!688823 () Bool)

(assert (=> b!736632 m!688823))

(assert (=> b!736636 m!688781))

(assert (=> b!736636 m!688781))

(assert (=> b!736636 m!688785))

(assert (=> b!736636 m!688781))

(assert (=> b!736636 m!688793))

(declare-fun m!688825 () Bool)

(assert (=> b!736641 m!688825))

(declare-fun m!688827 () Bool)

(assert (=> b!736629 m!688827))

(declare-fun m!688829 () Bool)

(assert (=> b!736646 m!688829))

(check-sat (not b!736627) (not b!736641) (not b!736638) (not b!736645) (not start!65184) (not b!736628) (not b!736629) (not b!736643) (not b!736646) (not b!736640) (not b!736630) (not b!736626) (not b!736632) (not b!736635) (not b!736648) (not b!736637) (not b!736639) (not b!736636) (not b!736647) (not b!736644))
(check-sat)
