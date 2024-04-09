; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66804 () Bool)

(assert start!66804)

(declare-fun b!769865 () Bool)

(declare-fun res!520833 () Bool)

(declare-fun e!428688 () Bool)

(assert (=> b!769865 (=> (not res!520833) (not e!428688))))

(declare-datatypes ((array!42321 0))(
  ( (array!42322 (arr!20257 (Array (_ BitVec 32) (_ BitVec 64))) (size!20678 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42321)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769865 (= res!520833 (and (= (size!20678 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20678 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20678 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769866 () Bool)

(declare-fun res!520843 () Bool)

(declare-fun e!428687 () Bool)

(assert (=> b!769866 (=> (not res!520843) (not e!428687))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!769866 (= res!520843 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20678 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20678 a!3186))))))

(declare-fun b!769867 () Bool)

(declare-datatypes ((Unit!26492 0))(
  ( (Unit!26493) )
))
(declare-fun e!428686 () Unit!26492)

(declare-fun Unit!26494 () Unit!26492)

(assert (=> b!769867 (= e!428686 Unit!26494)))

(declare-datatypes ((SeekEntryResult!7864 0))(
  ( (MissingZero!7864 (index!33823 (_ BitVec 32))) (Found!7864 (index!33824 (_ BitVec 32))) (Intermediate!7864 (undefined!8676 Bool) (index!33825 (_ BitVec 32)) (x!64780 (_ BitVec 32))) (Undefined!7864) (MissingVacant!7864 (index!33826 (_ BitVec 32))) )
))
(declare-fun lt!342620 () SeekEntryResult!7864)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42321 (_ BitVec 32)) SeekEntryResult!7864)

(assert (=> b!769867 (= lt!342620 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20257 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342626 () (_ BitVec 32))

(assert (=> b!769867 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342626 resIntermediateIndex!5 (select (arr!20257 a!3186) j!159) a!3186 mask!3328) (Found!7864 j!159))))

(declare-fun b!769868 () Bool)

(declare-fun res!520830 () Bool)

(declare-fun e!428680 () Bool)

(assert (=> b!769868 (=> (not res!520830) (not e!428680))))

(assert (=> b!769868 (= res!520830 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20257 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!520837 () Bool)

(assert (=> start!66804 (=> (not res!520837) (not e!428688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66804 (= res!520837 (validMask!0 mask!3328))))

(assert (=> start!66804 e!428688))

(assert (=> start!66804 true))

(declare-fun array_inv!16031 (array!42321) Bool)

(assert (=> start!66804 (array_inv!16031 a!3186)))

(declare-fun b!769869 () Bool)

(declare-fun res!520828 () Bool)

(assert (=> b!769869 (=> (not res!520828) (not e!428680))))

(declare-fun e!428689 () Bool)

(assert (=> b!769869 (= res!520828 e!428689)))

(declare-fun c!84915 () Bool)

(assert (=> b!769869 (= c!84915 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769870 () Bool)

(declare-fun res!520838 () Bool)

(assert (=> b!769870 (=> (not res!520838) (not e!428688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769870 (= res!520838 (validKeyInArray!0 (select (arr!20257 a!3186) j!159)))))

(declare-fun b!769871 () Bool)

(assert (=> b!769871 (= e!428689 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20257 a!3186) j!159) a!3186 mask!3328) (Found!7864 j!159)))))

(declare-fun b!769872 () Bool)

(assert (=> b!769872 (= e!428687 e!428680)))

(declare-fun res!520835 () Bool)

(assert (=> b!769872 (=> (not res!520835) (not e!428680))))

(declare-fun lt!342621 () SeekEntryResult!7864)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42321 (_ BitVec 32)) SeekEntryResult!7864)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769872 (= res!520835 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20257 a!3186) j!159) mask!3328) (select (arr!20257 a!3186) j!159) a!3186 mask!3328) lt!342621))))

(assert (=> b!769872 (= lt!342621 (Intermediate!7864 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769873 () Bool)

(declare-fun e!428685 () Bool)

(declare-fun e!428681 () Bool)

(assert (=> b!769873 (= e!428685 (not e!428681))))

(declare-fun res!520831 () Bool)

(assert (=> b!769873 (=> res!520831 e!428681)))

(declare-fun lt!342628 () SeekEntryResult!7864)

(get-info :version)

(assert (=> b!769873 (= res!520831 (or (not ((_ is Intermediate!7864) lt!342628)) (bvsge x!1131 (x!64780 lt!342628))))))

(declare-fun e!428683 () Bool)

(assert (=> b!769873 e!428683))

(declare-fun res!520841 () Bool)

(assert (=> b!769873 (=> (not res!520841) (not e!428683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42321 (_ BitVec 32)) Bool)

(assert (=> b!769873 (= res!520841 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342618 () Unit!26492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26492)

(assert (=> b!769873 (= lt!342618 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769874 () Bool)

(declare-fun res!520836 () Bool)

(assert (=> b!769874 (=> (not res!520836) (not e!428688))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!769874 (= res!520836 (validKeyInArray!0 k0!2102))))

(declare-fun b!769875 () Bool)

(assert (=> b!769875 (= e!428688 e!428687)))

(declare-fun res!520842 () Bool)

(assert (=> b!769875 (=> (not res!520842) (not e!428687))))

(declare-fun lt!342619 () SeekEntryResult!7864)

(assert (=> b!769875 (= res!520842 (or (= lt!342619 (MissingZero!7864 i!1173)) (= lt!342619 (MissingVacant!7864 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42321 (_ BitVec 32)) SeekEntryResult!7864)

(assert (=> b!769875 (= lt!342619 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!769876 () Bool)

(declare-fun Unit!26495 () Unit!26492)

(assert (=> b!769876 (= e!428686 Unit!26495)))

(assert (=> b!769876 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342626 (select (arr!20257 a!3186) j!159) a!3186 mask!3328) lt!342621)))

(declare-fun b!769877 () Bool)

(declare-fun lt!342627 () SeekEntryResult!7864)

(declare-fun e!428682 () Bool)

(assert (=> b!769877 (= e!428682 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20257 a!3186) j!159) a!3186 mask!3328) lt!342627))))

(declare-fun b!769878 () Bool)

(assert (=> b!769878 (= e!428689 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20257 a!3186) j!159) a!3186 mask!3328) lt!342621))))

(declare-fun b!769879 () Bool)

(declare-fun res!520832 () Bool)

(assert (=> b!769879 (=> (not res!520832) (not e!428687))))

(declare-datatypes ((List!14312 0))(
  ( (Nil!14309) (Cons!14308 (h!15407 (_ BitVec 64)) (t!20635 List!14312)) )
))
(declare-fun arrayNoDuplicates!0 (array!42321 (_ BitVec 32) List!14312) Bool)

(assert (=> b!769879 (= res!520832 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14309))))

(declare-fun b!769880 () Bool)

(assert (=> b!769880 (= e!428680 e!428685)))

(declare-fun res!520839 () Bool)

(assert (=> b!769880 (=> (not res!520839) (not e!428685))))

(declare-fun lt!342622 () SeekEntryResult!7864)

(assert (=> b!769880 (= res!520839 (= lt!342622 lt!342628))))

(declare-fun lt!342625 () array!42321)

(declare-fun lt!342623 () (_ BitVec 64))

(assert (=> b!769880 (= lt!342628 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342623 lt!342625 mask!3328))))

(assert (=> b!769880 (= lt!342622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342623 mask!3328) lt!342623 lt!342625 mask!3328))))

(assert (=> b!769880 (= lt!342623 (select (store (arr!20257 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!769880 (= lt!342625 (array!42322 (store (arr!20257 a!3186) i!1173 k0!2102) (size!20678 a!3186)))))

(declare-fun b!769881 () Bool)

(assert (=> b!769881 (= e!428681 true)))

(declare-fun lt!342624 () Unit!26492)

(assert (=> b!769881 (= lt!342624 e!428686)))

(declare-fun c!84914 () Bool)

(assert (=> b!769881 (= c!84914 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769881 (= lt!342626 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769882 () Bool)

(declare-fun res!520829 () Bool)

(assert (=> b!769882 (=> (not res!520829) (not e!428688))))

(declare-fun arrayContainsKey!0 (array!42321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769882 (= res!520829 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769883 () Bool)

(declare-fun res!520840 () Bool)

(assert (=> b!769883 (=> (not res!520840) (not e!428687))))

(assert (=> b!769883 (= res!520840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769884 () Bool)

(assert (=> b!769884 (= e!428683 e!428682)))

(declare-fun res!520834 () Bool)

(assert (=> b!769884 (=> (not res!520834) (not e!428682))))

(assert (=> b!769884 (= res!520834 (= (seekEntryOrOpen!0 (select (arr!20257 a!3186) j!159) a!3186 mask!3328) lt!342627))))

(assert (=> b!769884 (= lt!342627 (Found!7864 j!159))))

(assert (= (and start!66804 res!520837) b!769865))

(assert (= (and b!769865 res!520833) b!769870))

(assert (= (and b!769870 res!520838) b!769874))

(assert (= (and b!769874 res!520836) b!769882))

(assert (= (and b!769882 res!520829) b!769875))

(assert (= (and b!769875 res!520842) b!769883))

(assert (= (and b!769883 res!520840) b!769879))

(assert (= (and b!769879 res!520832) b!769866))

(assert (= (and b!769866 res!520843) b!769872))

(assert (= (and b!769872 res!520835) b!769868))

(assert (= (and b!769868 res!520830) b!769869))

(assert (= (and b!769869 c!84915) b!769878))

(assert (= (and b!769869 (not c!84915)) b!769871))

(assert (= (and b!769869 res!520828) b!769880))

(assert (= (and b!769880 res!520839) b!769873))

(assert (= (and b!769873 res!520841) b!769884))

(assert (= (and b!769884 res!520834) b!769877))

(assert (= (and b!769873 (not res!520831)) b!769881))

(assert (= (and b!769881 c!84914) b!769876))

(assert (= (and b!769881 (not c!84914)) b!769867))

(declare-fun m!715283 () Bool)

(assert (=> b!769876 m!715283))

(assert (=> b!769876 m!715283))

(declare-fun m!715285 () Bool)

(assert (=> b!769876 m!715285))

(declare-fun m!715287 () Bool)

(assert (=> b!769873 m!715287))

(declare-fun m!715289 () Bool)

(assert (=> b!769873 m!715289))

(declare-fun m!715291 () Bool)

(assert (=> b!769875 m!715291))

(assert (=> b!769884 m!715283))

(assert (=> b!769884 m!715283))

(declare-fun m!715293 () Bool)

(assert (=> b!769884 m!715293))

(assert (=> b!769870 m!715283))

(assert (=> b!769870 m!715283))

(declare-fun m!715295 () Bool)

(assert (=> b!769870 m!715295))

(assert (=> b!769867 m!715283))

(assert (=> b!769867 m!715283))

(declare-fun m!715297 () Bool)

(assert (=> b!769867 m!715297))

(assert (=> b!769867 m!715283))

(declare-fun m!715299 () Bool)

(assert (=> b!769867 m!715299))

(declare-fun m!715301 () Bool)

(assert (=> b!769874 m!715301))

(assert (=> b!769872 m!715283))

(assert (=> b!769872 m!715283))

(declare-fun m!715303 () Bool)

(assert (=> b!769872 m!715303))

(assert (=> b!769872 m!715303))

(assert (=> b!769872 m!715283))

(declare-fun m!715305 () Bool)

(assert (=> b!769872 m!715305))

(assert (=> b!769877 m!715283))

(assert (=> b!769877 m!715283))

(declare-fun m!715307 () Bool)

(assert (=> b!769877 m!715307))

(declare-fun m!715309 () Bool)

(assert (=> b!769881 m!715309))

(declare-fun m!715311 () Bool)

(assert (=> b!769882 m!715311))

(declare-fun m!715313 () Bool)

(assert (=> start!66804 m!715313))

(declare-fun m!715315 () Bool)

(assert (=> start!66804 m!715315))

(declare-fun m!715317 () Bool)

(assert (=> b!769879 m!715317))

(declare-fun m!715319 () Bool)

(assert (=> b!769868 m!715319))

(declare-fun m!715321 () Bool)

(assert (=> b!769883 m!715321))

(assert (=> b!769871 m!715283))

(assert (=> b!769871 m!715283))

(assert (=> b!769871 m!715297))

(assert (=> b!769878 m!715283))

(assert (=> b!769878 m!715283))

(declare-fun m!715323 () Bool)

(assert (=> b!769878 m!715323))

(declare-fun m!715325 () Bool)

(assert (=> b!769880 m!715325))

(declare-fun m!715327 () Bool)

(assert (=> b!769880 m!715327))

(declare-fun m!715329 () Bool)

(assert (=> b!769880 m!715329))

(assert (=> b!769880 m!715325))

(declare-fun m!715331 () Bool)

(assert (=> b!769880 m!715331))

(declare-fun m!715333 () Bool)

(assert (=> b!769880 m!715333))

(check-sat (not b!769884) (not b!769882) (not b!769881) (not b!769876) (not b!769877) (not b!769867) (not b!769878) (not b!769879) (not b!769873) (not b!769880) (not start!66804) (not b!769883) (not b!769871) (not b!769870) (not b!769874) (not b!769875) (not b!769872))
(check-sat)
