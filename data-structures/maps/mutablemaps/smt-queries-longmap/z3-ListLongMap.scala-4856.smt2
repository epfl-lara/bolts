; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66924 () Bool)

(assert start!66924)

(declare-fun b!771767 () Bool)

(declare-datatypes ((Unit!26588 0))(
  ( (Unit!26589) )
))
(declare-fun e!429679 () Unit!26588)

(declare-fun Unit!26590 () Unit!26588)

(assert (=> b!771767 (= e!429679 Unit!26590)))

(declare-datatypes ((array!42372 0))(
  ( (array!42373 (arr!20281 (Array (_ BitVec 32) (_ BitVec 64))) (size!20702 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42372)

(declare-fun lt!343604 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7888 0))(
  ( (MissingZero!7888 (index!33919 (_ BitVec 32))) (Found!7888 (index!33920 (_ BitVec 32))) (Intermediate!7888 (undefined!8700 Bool) (index!33921 (_ BitVec 32)) (x!64880 (_ BitVec 32))) (Undefined!7888) (MissingVacant!7888 (index!33922 (_ BitVec 32))) )
))
(declare-fun lt!343597 () SeekEntryResult!7888)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42372 (_ BitVec 32)) SeekEntryResult!7888)

(assert (=> b!771767 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343604 (select (arr!20281 a!3186) j!159) a!3186 mask!3328) lt!343597)))

(declare-fun b!771768 () Bool)

(declare-fun e!429676 () Bool)

(declare-fun e!429682 () Bool)

(assert (=> b!771768 (= e!429676 e!429682)))

(declare-fun res!522122 () Bool)

(assert (=> b!771768 (=> (not res!522122) (not e!429682))))

(declare-fun lt!343606 () SeekEntryResult!7888)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771768 (= res!522122 (or (= lt!343606 (MissingZero!7888 i!1173)) (= lt!343606 (MissingVacant!7888 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42372 (_ BitVec 32)) SeekEntryResult!7888)

(assert (=> b!771768 (= lt!343606 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!771769 () Bool)

(declare-fun res!522117 () Bool)

(declare-fun e!429683 () Bool)

(assert (=> b!771769 (=> (not res!522117) (not e!429683))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!771769 (= res!522117 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20281 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!522120 () Bool)

(assert (=> start!66924 (=> (not res!522120) (not e!429676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66924 (= res!522120 (validMask!0 mask!3328))))

(assert (=> start!66924 e!429676))

(assert (=> start!66924 true))

(declare-fun array_inv!16055 (array!42372) Bool)

(assert (=> start!66924 (array_inv!16055 a!3186)))

(declare-fun b!771770 () Bool)

(declare-fun e!429684 () Bool)

(declare-fun e!429678 () Bool)

(assert (=> b!771770 (= e!429684 e!429678)))

(declare-fun res!522126 () Bool)

(assert (=> b!771770 (=> (not res!522126) (not e!429678))))

(declare-fun lt!343600 () SeekEntryResult!7888)

(assert (=> b!771770 (= res!522126 (= (seekEntryOrOpen!0 (select (arr!20281 a!3186) j!159) a!3186 mask!3328) lt!343600))))

(assert (=> b!771770 (= lt!343600 (Found!7888 j!159))))

(declare-fun b!771771 () Bool)

(declare-fun res!522124 () Bool)

(assert (=> b!771771 (=> (not res!522124) (not e!429682))))

(declare-datatypes ((List!14336 0))(
  ( (Nil!14333) (Cons!14332 (h!15434 (_ BitVec 64)) (t!20659 List!14336)) )
))
(declare-fun arrayNoDuplicates!0 (array!42372 (_ BitVec 32) List!14336) Bool)

(assert (=> b!771771 (= res!522124 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14333))))

(declare-fun b!771772 () Bool)

(declare-fun e!429677 () Bool)

(assert (=> b!771772 (= e!429677 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000)))))

(declare-fun lt!343596 () Unit!26588)

(assert (=> b!771772 (= lt!343596 e!429679)))

(declare-fun c!85223 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!771772 (= c!85223 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771772 (= lt!343604 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771773 () Bool)

(declare-fun e!429681 () Bool)

(assert (=> b!771773 (= e!429681 (not e!429677))))

(declare-fun res!522125 () Bool)

(assert (=> b!771773 (=> res!522125 e!429677)))

(declare-fun lt!343603 () SeekEntryResult!7888)

(get-info :version)

(assert (=> b!771773 (= res!522125 (or (not ((_ is Intermediate!7888) lt!343603)) (bvsge x!1131 (x!64880 lt!343603))))))

(assert (=> b!771773 e!429684))

(declare-fun res!522121 () Bool)

(assert (=> b!771773 (=> (not res!522121) (not e!429684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42372 (_ BitVec 32)) Bool)

(assert (=> b!771773 (= res!522121 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343601 () Unit!26588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42372 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26588)

(assert (=> b!771773 (= lt!343601 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!771774 () Bool)

(assert (=> b!771774 (= e!429682 e!429683)))

(declare-fun res!522130 () Bool)

(assert (=> b!771774 (=> (not res!522130) (not e!429683))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771774 (= res!522130 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20281 a!3186) j!159) mask!3328) (select (arr!20281 a!3186) j!159) a!3186 mask!3328) lt!343597))))

(assert (=> b!771774 (= lt!343597 (Intermediate!7888 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!771775 () Bool)

(declare-fun res!522115 () Bool)

(assert (=> b!771775 (=> (not res!522115) (not e!429676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771775 (= res!522115 (validKeyInArray!0 k0!2102))))

(declare-fun b!771776 () Bool)

(declare-fun res!522128 () Bool)

(assert (=> b!771776 (=> (not res!522128) (not e!429683))))

(declare-fun e!429685 () Bool)

(assert (=> b!771776 (= res!522128 e!429685)))

(declare-fun c!85224 () Bool)

(assert (=> b!771776 (= c!85224 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!771777 () Bool)

(assert (=> b!771777 (= e!429685 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20281 a!3186) j!159) a!3186 mask!3328) lt!343597))))

(declare-fun b!771778 () Bool)

(declare-fun Unit!26591 () Unit!26588)

(assert (=> b!771778 (= e!429679 Unit!26591)))

(declare-fun lt!343598 () SeekEntryResult!7888)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42372 (_ BitVec 32)) SeekEntryResult!7888)

(assert (=> b!771778 (= lt!343598 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20281 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!771778 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343604 resIntermediateIndex!5 (select (arr!20281 a!3186) j!159) a!3186 mask!3328) (Found!7888 j!159))))

(declare-fun b!771779 () Bool)

(declare-fun res!522119 () Bool)

(assert (=> b!771779 (=> (not res!522119) (not e!429676))))

(assert (=> b!771779 (= res!522119 (validKeyInArray!0 (select (arr!20281 a!3186) j!159)))))

(declare-fun b!771780 () Bool)

(assert (=> b!771780 (= e!429685 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20281 a!3186) j!159) a!3186 mask!3328) (Found!7888 j!159)))))

(declare-fun b!771781 () Bool)

(assert (=> b!771781 (= e!429683 e!429681)))

(declare-fun res!522129 () Bool)

(assert (=> b!771781 (=> (not res!522129) (not e!429681))))

(declare-fun lt!343605 () SeekEntryResult!7888)

(assert (=> b!771781 (= res!522129 (= lt!343605 lt!343603))))

(declare-fun lt!343602 () (_ BitVec 64))

(declare-fun lt!343599 () array!42372)

(assert (=> b!771781 (= lt!343603 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343602 lt!343599 mask!3328))))

(assert (=> b!771781 (= lt!343605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343602 mask!3328) lt!343602 lt!343599 mask!3328))))

(assert (=> b!771781 (= lt!343602 (select (store (arr!20281 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!771781 (= lt!343599 (array!42373 (store (arr!20281 a!3186) i!1173 k0!2102) (size!20702 a!3186)))))

(declare-fun b!771782 () Bool)

(declare-fun res!522127 () Bool)

(assert (=> b!771782 (=> (not res!522127) (not e!429676))))

(assert (=> b!771782 (= res!522127 (and (= (size!20702 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20702 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20702 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!771783 () Bool)

(assert (=> b!771783 (= e!429678 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20281 a!3186) j!159) a!3186 mask!3328) lt!343600))))

(declare-fun b!771784 () Bool)

(declare-fun res!522116 () Bool)

(assert (=> b!771784 (=> (not res!522116) (not e!429682))))

(assert (=> b!771784 (= res!522116 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20702 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20702 a!3186))))))

(declare-fun b!771785 () Bool)

(declare-fun res!522118 () Bool)

(assert (=> b!771785 (=> (not res!522118) (not e!429676))))

(declare-fun arrayContainsKey!0 (array!42372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771785 (= res!522118 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771786 () Bool)

(declare-fun res!522123 () Bool)

(assert (=> b!771786 (=> (not res!522123) (not e!429682))))

(assert (=> b!771786 (= res!522123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66924 res!522120) b!771782))

(assert (= (and b!771782 res!522127) b!771779))

(assert (= (and b!771779 res!522119) b!771775))

(assert (= (and b!771775 res!522115) b!771785))

(assert (= (and b!771785 res!522118) b!771768))

(assert (= (and b!771768 res!522122) b!771786))

(assert (= (and b!771786 res!522123) b!771771))

(assert (= (and b!771771 res!522124) b!771784))

(assert (= (and b!771784 res!522116) b!771774))

(assert (= (and b!771774 res!522130) b!771769))

(assert (= (and b!771769 res!522117) b!771776))

(assert (= (and b!771776 c!85224) b!771777))

(assert (= (and b!771776 (not c!85224)) b!771780))

(assert (= (and b!771776 res!522128) b!771781))

(assert (= (and b!771781 res!522129) b!771773))

(assert (= (and b!771773 res!522121) b!771770))

(assert (= (and b!771770 res!522126) b!771783))

(assert (= (and b!771773 (not res!522125)) b!771772))

(assert (= (and b!771772 c!85223) b!771767))

(assert (= (and b!771772 (not c!85223)) b!771778))

(declare-fun m!716855 () Bool)

(assert (=> b!771780 m!716855))

(assert (=> b!771780 m!716855))

(declare-fun m!716857 () Bool)

(assert (=> b!771780 m!716857))

(declare-fun m!716859 () Bool)

(assert (=> b!771773 m!716859))

(declare-fun m!716861 () Bool)

(assert (=> b!771773 m!716861))

(declare-fun m!716863 () Bool)

(assert (=> b!771771 m!716863))

(declare-fun m!716865 () Bool)

(assert (=> b!771775 m!716865))

(assert (=> b!771774 m!716855))

(assert (=> b!771774 m!716855))

(declare-fun m!716867 () Bool)

(assert (=> b!771774 m!716867))

(assert (=> b!771774 m!716867))

(assert (=> b!771774 m!716855))

(declare-fun m!716869 () Bool)

(assert (=> b!771774 m!716869))

(assert (=> b!771777 m!716855))

(assert (=> b!771777 m!716855))

(declare-fun m!716871 () Bool)

(assert (=> b!771777 m!716871))

(assert (=> b!771770 m!716855))

(assert (=> b!771770 m!716855))

(declare-fun m!716873 () Bool)

(assert (=> b!771770 m!716873))

(assert (=> b!771778 m!716855))

(assert (=> b!771778 m!716855))

(assert (=> b!771778 m!716857))

(assert (=> b!771778 m!716855))

(declare-fun m!716875 () Bool)

(assert (=> b!771778 m!716875))

(assert (=> b!771767 m!716855))

(assert (=> b!771767 m!716855))

(declare-fun m!716877 () Bool)

(assert (=> b!771767 m!716877))

(declare-fun m!716879 () Bool)

(assert (=> b!771781 m!716879))

(declare-fun m!716881 () Bool)

(assert (=> b!771781 m!716881))

(declare-fun m!716883 () Bool)

(assert (=> b!771781 m!716883))

(assert (=> b!771781 m!716879))

(declare-fun m!716885 () Bool)

(assert (=> b!771781 m!716885))

(declare-fun m!716887 () Bool)

(assert (=> b!771781 m!716887))

(declare-fun m!716889 () Bool)

(assert (=> b!771769 m!716889))

(declare-fun m!716891 () Bool)

(assert (=> start!66924 m!716891))

(declare-fun m!716893 () Bool)

(assert (=> start!66924 m!716893))

(assert (=> b!771783 m!716855))

(assert (=> b!771783 m!716855))

(declare-fun m!716895 () Bool)

(assert (=> b!771783 m!716895))

(declare-fun m!716897 () Bool)

(assert (=> b!771768 m!716897))

(declare-fun m!716899 () Bool)

(assert (=> b!771772 m!716899))

(declare-fun m!716901 () Bool)

(assert (=> b!771785 m!716901))

(declare-fun m!716903 () Bool)

(assert (=> b!771786 m!716903))

(assert (=> b!771779 m!716855))

(assert (=> b!771779 m!716855))

(declare-fun m!716905 () Bool)

(assert (=> b!771779 m!716905))

(check-sat (not b!771770) (not b!771772) (not b!771768) (not b!771781) (not b!771779) (not start!66924) (not b!771775) (not b!771780) (not b!771773) (not b!771771) (not b!771778) (not b!771783) (not b!771785) (not b!771786) (not b!771767) (not b!771777) (not b!771774))
(check-sat)
