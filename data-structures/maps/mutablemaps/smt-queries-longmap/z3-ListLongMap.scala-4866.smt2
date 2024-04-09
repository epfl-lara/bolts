; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67128 () Bool)

(assert start!67128)

(declare-fun b!774651 () Bool)

(declare-datatypes ((Unit!26708 0))(
  ( (Unit!26709) )
))
(declare-fun e!431216 () Unit!26708)

(declare-fun Unit!26710 () Unit!26708)

(assert (=> b!774651 (= e!431216 Unit!26710)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42438 0))(
  ( (array!42439 (arr!20311 (Array (_ BitVec 32) (_ BitVec 64))) (size!20732 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42438)

(declare-datatypes ((SeekEntryResult!7918 0))(
  ( (MissingZero!7918 (index!34039 (_ BitVec 32))) (Found!7918 (index!34040 (_ BitVec 32))) (Intermediate!7918 (undefined!8730 Bool) (index!34041 (_ BitVec 32)) (x!65014 (_ BitVec 32))) (Undefined!7918) (MissingVacant!7918 (index!34042 (_ BitVec 32))) )
))
(declare-fun lt!345041 () SeekEntryResult!7918)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42438 (_ BitVec 32)) SeekEntryResult!7918)

(assert (=> b!774651 (= lt!345041 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20311 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!345035 () (_ BitVec 32))

(declare-fun lt!345043 () SeekEntryResult!7918)

(assert (=> b!774651 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345035 resIntermediateIndex!5 (select (arr!20311 a!3186) j!159) a!3186 mask!3328) lt!345043)))

(declare-fun b!774652 () Bool)

(declare-fun res!523903 () Bool)

(declare-fun e!431207 () Bool)

(assert (=> b!774652 (=> res!523903 e!431207)))

(declare-fun lt!345042 () array!42438)

(declare-fun lt!345046 () SeekEntryResult!7918)

(declare-fun lt!345038 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42438 (_ BitVec 32)) SeekEntryResult!7918)

(assert (=> b!774652 (= res!523903 (not (= lt!345046 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345035 lt!345038 lt!345042 mask!3328))))))

(declare-fun b!774653 () Bool)

(declare-fun e!431209 () Bool)

(assert (=> b!774653 (= e!431209 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20311 a!3186) j!159) a!3186 mask!3328) (Found!7918 j!159)))))

(declare-fun b!774654 () Bool)

(declare-fun res!523909 () Bool)

(declare-fun e!431214 () Bool)

(assert (=> b!774654 (=> (not res!523909) (not e!431214))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774654 (= res!523909 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774655 () Bool)

(declare-fun res!523904 () Bool)

(assert (=> b!774655 (=> (not res!523904) (not e!431214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774655 (= res!523904 (validKeyInArray!0 k0!2102))))

(declare-fun b!774656 () Bool)

(declare-fun e!431211 () Bool)

(assert (=> b!774656 (= e!431211 e!431207)))

(declare-fun res!523914 () Bool)

(assert (=> b!774656 (=> res!523914 e!431207)))

(assert (=> b!774656 (= res!523914 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345035 #b00000000000000000000000000000000) (bvsge lt!345035 (size!20732 a!3186))))))

(declare-fun lt!345033 () Unit!26708)

(assert (=> b!774656 (= lt!345033 e!431216)))

(declare-fun c!85774 () Bool)

(declare-fun lt!345036 () Bool)

(assert (=> b!774656 (= c!85774 lt!345036)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!774656 (= lt!345036 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774656 (= lt!345035 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774657 () Bool)

(declare-fun res!523905 () Bool)

(assert (=> b!774657 (=> (not res!523905) (not e!431214))))

(assert (=> b!774657 (= res!523905 (validKeyInArray!0 (select (arr!20311 a!3186) j!159)))))

(declare-fun b!774658 () Bool)

(declare-fun lt!345045 () SeekEntryResult!7918)

(declare-fun e!431208 () Bool)

(assert (=> b!774658 (= e!431208 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20311 a!3186) j!159) a!3186 mask!3328) lt!345045))))

(declare-fun b!774659 () Bool)

(declare-fun res!523912 () Bool)

(declare-fun e!431215 () Bool)

(assert (=> b!774659 (=> (not res!523912) (not e!431215))))

(assert (=> b!774659 (= res!523912 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20732 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20732 a!3186))))))

(declare-fun b!774660 () Bool)

(declare-fun e!431210 () Bool)

(declare-fun e!431212 () Bool)

(assert (=> b!774660 (= e!431210 e!431212)))

(declare-fun res!523911 () Bool)

(assert (=> b!774660 (=> (not res!523911) (not e!431212))))

(declare-fun lt!345034 () SeekEntryResult!7918)

(assert (=> b!774660 (= res!523911 (= lt!345046 lt!345034))))

(assert (=> b!774660 (= lt!345034 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345038 lt!345042 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774660 (= lt!345046 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345038 mask!3328) lt!345038 lt!345042 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!774660 (= lt!345038 (select (store (arr!20311 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!774660 (= lt!345042 (array!42439 (store (arr!20311 a!3186) i!1173 k0!2102) (size!20732 a!3186)))))

(declare-fun b!774661 () Bool)

(declare-fun res!523907 () Bool)

(assert (=> b!774661 (=> (not res!523907) (not e!431215))))

(declare-datatypes ((List!14366 0))(
  ( (Nil!14363) (Cons!14362 (h!15470 (_ BitVec 64)) (t!20689 List!14366)) )
))
(declare-fun arrayNoDuplicates!0 (array!42438 (_ BitVec 32) List!14366) Bool)

(assert (=> b!774661 (= res!523907 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14363))))

(declare-fun b!774663 () Bool)

(assert (=> b!774663 (= e!431207 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42438 (_ BitVec 32)) SeekEntryResult!7918)

(assert (=> b!774663 (= (seekEntryOrOpen!0 lt!345038 lt!345042 mask!3328) lt!345043)))

(declare-fun lt!345040 () Unit!26708)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26708)

(assert (=> b!774663 (= lt!345040 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k0!2102 j!159 lt!345035 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!774664 () Bool)

(declare-fun res!523916 () Bool)

(assert (=> b!774664 (=> res!523916 e!431207)))

(declare-fun e!431218 () Bool)

(assert (=> b!774664 (= res!523916 e!431218)))

(declare-fun c!85775 () Bool)

(assert (=> b!774664 (= c!85775 lt!345036)))

(declare-fun b!774665 () Bool)

(assert (=> b!774665 (= e!431212 (not e!431211))))

(declare-fun res!523910 () Bool)

(assert (=> b!774665 (=> res!523910 e!431211)))

(get-info :version)

(assert (=> b!774665 (= res!523910 (or (not ((_ is Intermediate!7918) lt!345034)) (bvsge x!1131 (x!65014 lt!345034))))))

(assert (=> b!774665 (= lt!345043 (Found!7918 j!159))))

(declare-fun e!431217 () Bool)

(assert (=> b!774665 e!431217))

(declare-fun res!523918 () Bool)

(assert (=> b!774665 (=> (not res!523918) (not e!431217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42438 (_ BitVec 32)) Bool)

(assert (=> b!774665 (= res!523918 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345037 () Unit!26708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26708)

(assert (=> b!774665 (= lt!345037 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!774666 () Bool)

(declare-fun res!523906 () Bool)

(assert (=> b!774666 (=> (not res!523906) (not e!431214))))

(assert (=> b!774666 (= res!523906 (and (= (size!20732 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20732 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20732 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774667 () Bool)

(declare-fun res!523915 () Bool)

(assert (=> b!774667 (=> (not res!523915) (not e!431210))))

(assert (=> b!774667 (= res!523915 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20311 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774668 () Bool)

(assert (=> b!774668 (= e!431215 e!431210)))

(declare-fun res!523919 () Bool)

(assert (=> b!774668 (=> (not res!523919) (not e!431210))))

(declare-fun lt!345039 () SeekEntryResult!7918)

(assert (=> b!774668 (= res!523919 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20311 a!3186) j!159) mask!3328) (select (arr!20311 a!3186) j!159) a!3186 mask!3328) lt!345039))))

(assert (=> b!774668 (= lt!345039 (Intermediate!7918 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!774669 () Bool)

(assert (=> b!774669 (= e!431214 e!431215)))

(declare-fun res!523921 () Bool)

(assert (=> b!774669 (=> (not res!523921) (not e!431215))))

(declare-fun lt!345044 () SeekEntryResult!7918)

(assert (=> b!774669 (= res!523921 (or (= lt!345044 (MissingZero!7918 i!1173)) (= lt!345044 (MissingVacant!7918 i!1173))))))

(assert (=> b!774669 (= lt!345044 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!774670 () Bool)

(assert (=> b!774670 (= e!431217 e!431208)))

(declare-fun res!523920 () Bool)

(assert (=> b!774670 (=> (not res!523920) (not e!431208))))

(assert (=> b!774670 (= res!523920 (= (seekEntryOrOpen!0 (select (arr!20311 a!3186) j!159) a!3186 mask!3328) lt!345045))))

(assert (=> b!774670 (= lt!345045 (Found!7918 j!159))))

(declare-fun b!774671 () Bool)

(assert (=> b!774671 (= e!431218 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345035 (select (arr!20311 a!3186) j!159) a!3186 mask!3328) lt!345039)))))

(declare-fun b!774672 () Bool)

(declare-fun Unit!26711 () Unit!26708)

(assert (=> b!774672 (= e!431216 Unit!26711)))

(assert (=> b!774672 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345035 (select (arr!20311 a!3186) j!159) a!3186 mask!3328) lt!345039)))

(declare-fun res!523908 () Bool)

(assert (=> start!67128 (=> (not res!523908) (not e!431214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67128 (= res!523908 (validMask!0 mask!3328))))

(assert (=> start!67128 e!431214))

(assert (=> start!67128 true))

(declare-fun array_inv!16085 (array!42438) Bool)

(assert (=> start!67128 (array_inv!16085 a!3186)))

(declare-fun b!774662 () Bool)

(declare-fun res!523913 () Bool)

(assert (=> b!774662 (=> (not res!523913) (not e!431215))))

(assert (=> b!774662 (= res!523913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!774673 () Bool)

(assert (=> b!774673 (= e!431209 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20311 a!3186) j!159) a!3186 mask!3328) lt!345039))))

(declare-fun b!774674 () Bool)

(declare-fun res!523917 () Bool)

(assert (=> b!774674 (=> (not res!523917) (not e!431210))))

(assert (=> b!774674 (= res!523917 e!431209)))

(declare-fun c!85776 () Bool)

(assert (=> b!774674 (= c!85776 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774675 () Bool)

(assert (=> b!774675 (= e!431218 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345035 resIntermediateIndex!5 (select (arr!20311 a!3186) j!159) a!3186 mask!3328) lt!345043)))))

(assert (= (and start!67128 res!523908) b!774666))

(assert (= (and b!774666 res!523906) b!774657))

(assert (= (and b!774657 res!523905) b!774655))

(assert (= (and b!774655 res!523904) b!774654))

(assert (= (and b!774654 res!523909) b!774669))

(assert (= (and b!774669 res!523921) b!774662))

(assert (= (and b!774662 res!523913) b!774661))

(assert (= (and b!774661 res!523907) b!774659))

(assert (= (and b!774659 res!523912) b!774668))

(assert (= (and b!774668 res!523919) b!774667))

(assert (= (and b!774667 res!523915) b!774674))

(assert (= (and b!774674 c!85776) b!774673))

(assert (= (and b!774674 (not c!85776)) b!774653))

(assert (= (and b!774674 res!523917) b!774660))

(assert (= (and b!774660 res!523911) b!774665))

(assert (= (and b!774665 res!523918) b!774670))

(assert (= (and b!774670 res!523920) b!774658))

(assert (= (and b!774665 (not res!523910)) b!774656))

(assert (= (and b!774656 c!85774) b!774672))

(assert (= (and b!774656 (not c!85774)) b!774651))

(assert (= (and b!774656 (not res!523914)) b!774664))

(assert (= (and b!774664 c!85775) b!774671))

(assert (= (and b!774664 (not c!85775)) b!774675))

(assert (= (and b!774664 (not res!523916)) b!774652))

(assert (= (and b!774652 (not res!523903)) b!774663))

(declare-fun m!719099 () Bool)

(assert (=> b!774668 m!719099))

(assert (=> b!774668 m!719099))

(declare-fun m!719101 () Bool)

(assert (=> b!774668 m!719101))

(assert (=> b!774668 m!719101))

(assert (=> b!774668 m!719099))

(declare-fun m!719103 () Bool)

(assert (=> b!774668 m!719103))

(declare-fun m!719105 () Bool)

(assert (=> start!67128 m!719105))

(declare-fun m!719107 () Bool)

(assert (=> start!67128 m!719107))

(declare-fun m!719109 () Bool)

(assert (=> b!774663 m!719109))

(declare-fun m!719111 () Bool)

(assert (=> b!774663 m!719111))

(declare-fun m!719113 () Bool)

(assert (=> b!774655 m!719113))

(declare-fun m!719115 () Bool)

(assert (=> b!774652 m!719115))

(assert (=> b!774671 m!719099))

(assert (=> b!774671 m!719099))

(declare-fun m!719117 () Bool)

(assert (=> b!774671 m!719117))

(assert (=> b!774658 m!719099))

(assert (=> b!774658 m!719099))

(declare-fun m!719119 () Bool)

(assert (=> b!774658 m!719119))

(declare-fun m!719121 () Bool)

(assert (=> b!774661 m!719121))

(declare-fun m!719123 () Bool)

(assert (=> b!774662 m!719123))

(assert (=> b!774672 m!719099))

(assert (=> b!774672 m!719099))

(assert (=> b!774672 m!719117))

(declare-fun m!719125 () Bool)

(assert (=> b!774654 m!719125))

(declare-fun m!719127 () Bool)

(assert (=> b!774660 m!719127))

(declare-fun m!719129 () Bool)

(assert (=> b!774660 m!719129))

(declare-fun m!719131 () Bool)

(assert (=> b!774660 m!719131))

(declare-fun m!719133 () Bool)

(assert (=> b!774660 m!719133))

(assert (=> b!774660 m!719131))

(declare-fun m!719135 () Bool)

(assert (=> b!774660 m!719135))

(assert (=> b!774673 m!719099))

(assert (=> b!774673 m!719099))

(declare-fun m!719137 () Bool)

(assert (=> b!774673 m!719137))

(assert (=> b!774653 m!719099))

(assert (=> b!774653 m!719099))

(declare-fun m!719139 () Bool)

(assert (=> b!774653 m!719139))

(declare-fun m!719141 () Bool)

(assert (=> b!774669 m!719141))

(assert (=> b!774670 m!719099))

(assert (=> b!774670 m!719099))

(declare-fun m!719143 () Bool)

(assert (=> b!774670 m!719143))

(assert (=> b!774675 m!719099))

(assert (=> b!774675 m!719099))

(declare-fun m!719145 () Bool)

(assert (=> b!774675 m!719145))

(declare-fun m!719147 () Bool)

(assert (=> b!774667 m!719147))

(assert (=> b!774651 m!719099))

(assert (=> b!774651 m!719099))

(assert (=> b!774651 m!719139))

(assert (=> b!774651 m!719099))

(assert (=> b!774651 m!719145))

(assert (=> b!774657 m!719099))

(assert (=> b!774657 m!719099))

(declare-fun m!719149 () Bool)

(assert (=> b!774657 m!719149))

(declare-fun m!719151 () Bool)

(assert (=> b!774665 m!719151))

(declare-fun m!719153 () Bool)

(assert (=> b!774665 m!719153))

(declare-fun m!719155 () Bool)

(assert (=> b!774656 m!719155))

(check-sat (not b!774654) (not b!774670) (not b!774651) (not b!774660) (not b!774662) (not b!774668) (not b!774669) (not start!67128) (not b!774663) (not b!774675) (not b!774673) (not b!774652) (not b!774653) (not b!774655) (not b!774658) (not b!774672) (not b!774665) (not b!774656) (not b!774671) (not b!774657) (not b!774661))
(check-sat)
