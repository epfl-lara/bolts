; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67198 () Bool)

(assert start!67198)

(declare-fun b!776753 () Bool)

(declare-fun e!432244 () Bool)

(declare-fun e!432237 () Bool)

(assert (=> b!776753 (= e!432244 e!432237)))

(declare-fun res!525671 () Bool)

(assert (=> b!776753 (=> (not res!525671) (not e!432237))))

(declare-datatypes ((SeekEntryResult!7953 0))(
  ( (MissingZero!7953 (index!34179 (_ BitVec 32))) (Found!7953 (index!34180 (_ BitVec 32))) (Intermediate!7953 (undefined!8765 Bool) (index!34181 (_ BitVec 32)) (x!65145 (_ BitVec 32))) (Undefined!7953) (MissingVacant!7953 (index!34182 (_ BitVec 32))) )
))
(declare-fun lt!346107 () SeekEntryResult!7953)

(declare-fun lt!346105 () SeekEntryResult!7953)

(assert (=> b!776753 (= res!525671 (= lt!346107 lt!346105))))

(declare-fun lt!346108 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42508 0))(
  ( (array!42509 (arr!20346 (Array (_ BitVec 32) (_ BitVec 64))) (size!20767 (_ BitVec 32))) )
))
(declare-fun lt!346110 () array!42508)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42508 (_ BitVec 32)) SeekEntryResult!7953)

(assert (=> b!776753 (= lt!346105 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346108 lt!346110 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776753 (= lt!346107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346108 mask!3328) lt!346108 lt!346110 mask!3328))))

(declare-fun a!3186 () array!42508)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!776753 (= lt!346108 (select (store (arr!20346 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!776753 (= lt!346110 (array!42509 (store (arr!20346 a!3186) i!1173 k!2102) (size!20767 a!3186)))))

(declare-fun b!776754 () Bool)

(declare-fun e!432240 () Bool)

(declare-fun e!432239 () Bool)

(assert (=> b!776754 (= e!432240 e!432239)))

(declare-fun res!525683 () Bool)

(assert (=> b!776754 (=> (not res!525683) (not e!432239))))

(declare-fun lt!346104 () SeekEntryResult!7953)

(assert (=> b!776754 (= res!525683 (or (= lt!346104 (MissingZero!7953 i!1173)) (= lt!346104 (MissingVacant!7953 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42508 (_ BitVec 32)) SeekEntryResult!7953)

(assert (=> b!776754 (= lt!346104 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!525679 () Bool)

(assert (=> start!67198 (=> (not res!525679) (not e!432240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67198 (= res!525679 (validMask!0 mask!3328))))

(assert (=> start!67198 e!432240))

(assert (=> start!67198 true))

(declare-fun array_inv!16120 (array!42508) Bool)

(assert (=> start!67198 (array_inv!16120 a!3186)))

(declare-fun b!776755 () Bool)

(declare-fun res!525674 () Bool)

(assert (=> b!776755 (=> (not res!525674) (not e!432239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42508 (_ BitVec 32)) Bool)

(assert (=> b!776755 (= res!525674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776756 () Bool)

(declare-fun res!525685 () Bool)

(assert (=> b!776756 (=> (not res!525685) (not e!432239))))

(declare-datatypes ((List!14401 0))(
  ( (Nil!14398) (Cons!14397 (h!15505 (_ BitVec 64)) (t!20724 List!14401)) )
))
(declare-fun arrayNoDuplicates!0 (array!42508 (_ BitVec 32) List!14401) Bool)

(assert (=> b!776756 (= res!525685 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14398))))

(declare-fun b!776757 () Bool)

(declare-fun e!432236 () Bool)

(declare-fun e!432238 () Bool)

(assert (=> b!776757 (= e!432236 e!432238)))

(declare-fun res!525682 () Bool)

(assert (=> b!776757 (=> (not res!525682) (not e!432238))))

(declare-fun lt!346109 () SeekEntryResult!7953)

(assert (=> b!776757 (= res!525682 (= (seekEntryOrOpen!0 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346109))))

(assert (=> b!776757 (= lt!346109 (Found!7953 j!159))))

(declare-fun lt!346111 () SeekEntryResult!7953)

(declare-fun e!432243 () Bool)

(declare-fun b!776758 () Bool)

(assert (=> b!776758 (= e!432243 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346111))))

(declare-fun b!776759 () Bool)

(declare-fun res!525673 () Bool)

(assert (=> b!776759 (=> (not res!525673) (not e!432240))))

(assert (=> b!776759 (= res!525673 (and (= (size!20767 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20767 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20767 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776760 () Bool)

(declare-fun res!525676 () Bool)

(assert (=> b!776760 (=> (not res!525676) (not e!432240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776760 (= res!525676 (validKeyInArray!0 (select (arr!20346 a!3186) j!159)))))

(declare-fun b!776761 () Bool)

(declare-fun res!525672 () Bool)

(assert (=> b!776761 (=> (not res!525672) (not e!432240))))

(assert (=> b!776761 (= res!525672 (validKeyInArray!0 k!2102))))

(declare-fun b!776762 () Bool)

(assert (=> b!776762 (= e!432239 e!432244)))

(declare-fun res!525677 () Bool)

(assert (=> b!776762 (=> (not res!525677) (not e!432244))))

(assert (=> b!776762 (= res!525677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20346 a!3186) j!159) mask!3328) (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346111))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776762 (= lt!346111 (Intermediate!7953 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776763 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42508 (_ BitVec 32)) SeekEntryResult!7953)

(assert (=> b!776763 (= e!432238 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346109))))

(declare-fun b!776764 () Bool)

(declare-fun res!525688 () Bool)

(assert (=> b!776764 (=> (not res!525688) (not e!432240))))

(declare-fun arrayContainsKey!0 (array!42508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776764 (= res!525688 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776765 () Bool)

(declare-fun res!525675 () Bool)

(assert (=> b!776765 (=> (not res!525675) (not e!432239))))

(assert (=> b!776765 (= res!525675 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20767 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20767 a!3186))))))

(declare-fun b!776766 () Bool)

(declare-fun res!525686 () Bool)

(declare-fun e!432242 () Bool)

(assert (=> b!776766 (=> res!525686 e!432242)))

(assert (=> b!776766 (= res!525686 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) (Found!7953 j!159))))))

(declare-fun b!776767 () Bool)

(declare-fun res!525680 () Bool)

(assert (=> b!776767 (=> (not res!525680) (not e!432244))))

(assert (=> b!776767 (= res!525680 e!432243)))

(declare-fun c!85941 () Bool)

(assert (=> b!776767 (= c!85941 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776768 () Bool)

(assert (=> b!776768 (= e!432242 (= (seekEntryOrOpen!0 lt!346108 lt!346110 mask!3328) (Found!7953 index!1321)))))

(declare-fun b!776769 () Bool)

(assert (=> b!776769 (= e!432237 (not e!432242))))

(declare-fun res!525684 () Bool)

(assert (=> b!776769 (=> res!525684 e!432242)))

(assert (=> b!776769 (= res!525684 (or (not (is-Intermediate!7953 lt!346105)) (bvslt x!1131 (x!65145 lt!346105)) (not (= x!1131 (x!65145 lt!346105))) (not (= index!1321 (index!34181 lt!346105)))))))

(assert (=> b!776769 e!432236))

(declare-fun res!525678 () Bool)

(assert (=> b!776769 (=> (not res!525678) (not e!432236))))

(assert (=> b!776769 (= res!525678 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26800 0))(
  ( (Unit!26801) )
))
(declare-fun lt!346106 () Unit!26800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26800)

(assert (=> b!776769 (= lt!346106 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776770 () Bool)

(declare-fun res!525681 () Bool)

(assert (=> b!776770 (=> (not res!525681) (not e!432244))))

(assert (=> b!776770 (= res!525681 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20346 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776771 () Bool)

(declare-fun res!525687 () Bool)

(assert (=> b!776771 (=> res!525687 e!432242)))

(assert (=> b!776771 (= res!525687 (or (not (= (select (store (arr!20346 a!3186) i!1173 k!2102) index!1321) lt!346108)) (undefined!8765 lt!346105)))))

(declare-fun b!776772 () Bool)

(assert (=> b!776772 (= e!432243 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) (Found!7953 j!159)))))

(assert (= (and start!67198 res!525679) b!776759))

(assert (= (and b!776759 res!525673) b!776760))

(assert (= (and b!776760 res!525676) b!776761))

(assert (= (and b!776761 res!525672) b!776764))

(assert (= (and b!776764 res!525688) b!776754))

(assert (= (and b!776754 res!525683) b!776755))

(assert (= (and b!776755 res!525674) b!776756))

(assert (= (and b!776756 res!525685) b!776765))

(assert (= (and b!776765 res!525675) b!776762))

(assert (= (and b!776762 res!525677) b!776770))

(assert (= (and b!776770 res!525681) b!776767))

(assert (= (and b!776767 c!85941) b!776758))

(assert (= (and b!776767 (not c!85941)) b!776772))

(assert (= (and b!776767 res!525680) b!776753))

(assert (= (and b!776753 res!525671) b!776769))

(assert (= (and b!776769 res!525678) b!776757))

(assert (= (and b!776757 res!525682) b!776763))

(assert (= (and b!776769 (not res!525684)) b!776766))

(assert (= (and b!776766 (not res!525686)) b!776771))

(assert (= (and b!776771 (not res!525687)) b!776768))

(declare-fun m!720841 () Bool)

(assert (=> b!776764 m!720841))

(declare-fun m!720843 () Bool)

(assert (=> start!67198 m!720843))

(declare-fun m!720845 () Bool)

(assert (=> start!67198 m!720845))

(declare-fun m!720847 () Bool)

(assert (=> b!776760 m!720847))

(assert (=> b!776760 m!720847))

(declare-fun m!720849 () Bool)

(assert (=> b!776760 m!720849))

(declare-fun m!720851 () Bool)

(assert (=> b!776768 m!720851))

(assert (=> b!776772 m!720847))

(assert (=> b!776772 m!720847))

(declare-fun m!720853 () Bool)

(assert (=> b!776772 m!720853))

(assert (=> b!776762 m!720847))

(assert (=> b!776762 m!720847))

(declare-fun m!720855 () Bool)

(assert (=> b!776762 m!720855))

(assert (=> b!776762 m!720855))

(assert (=> b!776762 m!720847))

(declare-fun m!720857 () Bool)

(assert (=> b!776762 m!720857))

(declare-fun m!720859 () Bool)

(assert (=> b!776753 m!720859))

(declare-fun m!720861 () Bool)

(assert (=> b!776753 m!720861))

(declare-fun m!720863 () Bool)

(assert (=> b!776753 m!720863))

(assert (=> b!776753 m!720861))

(declare-fun m!720865 () Bool)

(assert (=> b!776753 m!720865))

(declare-fun m!720867 () Bool)

(assert (=> b!776753 m!720867))

(declare-fun m!720869 () Bool)

(assert (=> b!776769 m!720869))

(declare-fun m!720871 () Bool)

(assert (=> b!776769 m!720871))

(declare-fun m!720873 () Bool)

(assert (=> b!776754 m!720873))

(assert (=> b!776757 m!720847))

(assert (=> b!776757 m!720847))

(declare-fun m!720875 () Bool)

(assert (=> b!776757 m!720875))

(declare-fun m!720877 () Bool)

(assert (=> b!776756 m!720877))

(declare-fun m!720879 () Bool)

(assert (=> b!776755 m!720879))

(declare-fun m!720881 () Bool)

(assert (=> b!776761 m!720881))

(assert (=> b!776771 m!720867))

(declare-fun m!720883 () Bool)

(assert (=> b!776771 m!720883))

(assert (=> b!776758 m!720847))

(assert (=> b!776758 m!720847))

(declare-fun m!720885 () Bool)

(assert (=> b!776758 m!720885))

(declare-fun m!720887 () Bool)

(assert (=> b!776770 m!720887))

(assert (=> b!776766 m!720847))

(assert (=> b!776766 m!720847))

(assert (=> b!776766 m!720853))

(assert (=> b!776763 m!720847))

(assert (=> b!776763 m!720847))

(declare-fun m!720889 () Bool)

(assert (=> b!776763 m!720889))

(push 1)

(assert (not b!776760))

(assert (not b!776764))

(assert (not b!776753))

(assert (not b!776758))

(assert (not b!776761))

(assert (not b!776762))

(assert (not start!67198))

(assert (not b!776772))

(assert (not b!776769))

(assert (not b!776763))

(assert (not b!776766))

(assert (not b!776755))

(assert (not b!776768))

(assert (not b!776754))

(assert (not b!776756))

(assert (not b!776757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!432346 () SeekEntryResult!7953)

(declare-fun b!776977 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776977 (= e!432346 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20346 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776978 () Bool)

(declare-fun e!432345 () SeekEntryResult!7953)

(assert (=> b!776978 (= e!432345 (Found!7953 resIntermediateIndex!5))))

(declare-fun b!776979 () Bool)

(declare-fun e!432344 () SeekEntryResult!7953)

(assert (=> b!776979 (= e!432344 Undefined!7953)))

(declare-fun lt!346191 () SeekEntryResult!7953)

(declare-fun d!102069 () Bool)

(assert (=> d!102069 (and (or (is-Undefined!7953 lt!346191) (not (is-Found!7953 lt!346191)) (and (bvsge (index!34180 lt!346191) #b00000000000000000000000000000000) (bvslt (index!34180 lt!346191) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346191) (is-Found!7953 lt!346191) (not (is-MissingVacant!7953 lt!346191)) (not (= (index!34182 lt!346191) resIntermediateIndex!5)) (and (bvsge (index!34182 lt!346191) #b00000000000000000000000000000000) (bvslt (index!34182 lt!346191) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346191) (ite (is-Found!7953 lt!346191) (= (select (arr!20346 a!3186) (index!34180 lt!346191)) (select (arr!20346 a!3186) j!159)) (and (is-MissingVacant!7953 lt!346191) (= (index!34182 lt!346191) resIntermediateIndex!5) (= (select (arr!20346 a!3186) (index!34182 lt!346191)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102069 (= lt!346191 e!432344)))

(declare-fun c!85981 () Bool)

(assert (=> d!102069 (= c!85981 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!346190 () (_ BitVec 64))

(assert (=> d!102069 (= lt!346190 (select (arr!20346 a!3186) resIntermediateIndex!5))))

(assert (=> d!102069 (validMask!0 mask!3328)))

(assert (=> d!102069 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346191)))

(declare-fun b!776980 () Bool)

(declare-fun c!85982 () Bool)

(assert (=> b!776980 (= c!85982 (= lt!346190 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!776980 (= e!432345 e!432346)))

(declare-fun b!776981 () Bool)

(assert (=> b!776981 (= e!432346 (MissingVacant!7953 resIntermediateIndex!5))))

(declare-fun b!776982 () Bool)

(assert (=> b!776982 (= e!432344 e!432345)))

(declare-fun c!85983 () Bool)

(assert (=> b!776982 (= c!85983 (= lt!346190 (select (arr!20346 a!3186) j!159)))))

(assert (= (and d!102069 c!85981) b!776979))

(assert (= (and d!102069 (not c!85981)) b!776982))

(assert (= (and b!776982 c!85983) b!776978))

(assert (= (and b!776982 (not c!85983)) b!776980))

(assert (= (and b!776980 c!85982) b!776981))

(assert (= (and b!776980 (not c!85982)) b!776977))

(declare-fun m!721027 () Bool)

(assert (=> b!776977 m!721027))

(assert (=> b!776977 m!721027))

(assert (=> b!776977 m!720847))

(declare-fun m!721029 () Bool)

(assert (=> b!776977 m!721029))

(declare-fun m!721031 () Bool)

(assert (=> d!102069 m!721031))

(declare-fun m!721033 () Bool)

(assert (=> d!102069 m!721033))

(assert (=> d!102069 m!720887))

(assert (=> d!102069 m!720843))

(assert (=> b!776763 d!102069))

(declare-fun d!102079 () Bool)

(assert (=> d!102079 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67198 d!102079))

(declare-fun d!102083 () Bool)

(assert (=> d!102083 (= (array_inv!16120 a!3186) (bvsge (size!20767 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67198 d!102083))

(declare-fun b!777058 () Bool)

(declare-fun e!432393 () Bool)

(declare-fun e!432394 () Bool)

(assert (=> b!777058 (= e!432393 e!432394)))

(declare-fun res!525832 () Bool)

(declare-fun lt!346215 () SeekEntryResult!7953)

(assert (=> b!777058 (= res!525832 (and (is-Intermediate!7953 lt!346215) (not (undefined!8765 lt!346215)) (bvslt (x!65145 lt!346215) #b01111111111111111111111111111110) (bvsge (x!65145 lt!346215) #b00000000000000000000000000000000) (bvsge (x!65145 lt!346215) #b00000000000000000000000000000000)))))

(assert (=> b!777058 (=> (not res!525832) (not e!432394))))

(declare-fun e!432391 () SeekEntryResult!7953)

(declare-fun b!777059 () Bool)

(assert (=> b!777059 (= e!432391 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20346 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20346 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!777060 () Bool)

(assert (=> b!777060 (and (bvsge (index!34181 lt!346215) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346215) (size!20767 a!3186)))))

(declare-fun res!525833 () Bool)

(assert (=> b!777060 (= res!525833 (= (select (arr!20346 a!3186) (index!34181 lt!346215)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432390 () Bool)

(assert (=> b!777060 (=> res!525833 e!432390)))

(declare-fun b!777062 () Bool)

(assert (=> b!777062 (= e!432393 (bvsge (x!65145 lt!346215) #b01111111111111111111111111111110))))

(declare-fun b!777063 () Bool)

(declare-fun e!432392 () SeekEntryResult!7953)

(assert (=> b!777063 (= e!432392 e!432391)))

(declare-fun lt!346214 () (_ BitVec 64))

(declare-fun c!86015 () Bool)

(assert (=> b!777063 (= c!86015 (or (= lt!346214 (select (arr!20346 a!3186) j!159)) (= (bvadd lt!346214 lt!346214) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777064 () Bool)

(assert (=> b!777064 (= e!432391 (Intermediate!7953 false (toIndex!0 (select (arr!20346 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102085 () Bool)

(assert (=> d!102085 e!432393))

(declare-fun c!86016 () Bool)

(assert (=> d!102085 (= c!86016 (and (is-Intermediate!7953 lt!346215) (undefined!8765 lt!346215)))))

(assert (=> d!102085 (= lt!346215 e!432392)))

(declare-fun c!86014 () Bool)

(assert (=> d!102085 (= c!86014 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102085 (= lt!346214 (select (arr!20346 a!3186) (toIndex!0 (select (arr!20346 a!3186) j!159) mask!3328)))))

(assert (=> d!102085 (validMask!0 mask!3328)))

(assert (=> d!102085 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20346 a!3186) j!159) mask!3328) (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346215)))

(declare-fun b!777061 () Bool)

(assert (=> b!777061 (and (bvsge (index!34181 lt!346215) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346215) (size!20767 a!3186)))))

(assert (=> b!777061 (= e!432390 (= (select (arr!20346 a!3186) (index!34181 lt!346215)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!777065 () Bool)

(assert (=> b!777065 (and (bvsge (index!34181 lt!346215) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346215) (size!20767 a!3186)))))

(declare-fun res!525831 () Bool)

(assert (=> b!777065 (= res!525831 (= (select (arr!20346 a!3186) (index!34181 lt!346215)) (select (arr!20346 a!3186) j!159)))))

(assert (=> b!777065 (=> res!525831 e!432390)))

(assert (=> b!777065 (= e!432394 e!432390)))

(declare-fun b!777066 () Bool)

(assert (=> b!777066 (= e!432392 (Intermediate!7953 true (toIndex!0 (select (arr!20346 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102085 c!86014) b!777066))

(assert (= (and d!102085 (not c!86014)) b!777063))

(assert (= (and b!777063 c!86015) b!777064))

(assert (= (and b!777063 (not c!86015)) b!777059))

(assert (= (and d!102085 c!86016) b!777062))

(assert (= (and d!102085 (not c!86016)) b!777058))

(assert (= (and b!777058 res!525832) b!777065))

(assert (= (and b!777065 (not res!525831)) b!777060))

(assert (= (and b!777060 (not res!525833)) b!777061))

(assert (=> b!777059 m!720855))

(declare-fun m!721075 () Bool)

(assert (=> b!777059 m!721075))

(assert (=> b!777059 m!721075))

(assert (=> b!777059 m!720847))

(declare-fun m!721077 () Bool)

(assert (=> b!777059 m!721077))

(declare-fun m!721079 () Bool)

(assert (=> b!777060 m!721079))

(assert (=> b!777065 m!721079))

(assert (=> b!777061 m!721079))

(assert (=> d!102085 m!720855))

(declare-fun m!721081 () Bool)

(assert (=> d!102085 m!721081))

(assert (=> d!102085 m!720843))

(assert (=> b!776762 d!102085))

(declare-fun d!102097 () Bool)

(declare-fun lt!346233 () (_ BitVec 32))

(declare-fun lt!346232 () (_ BitVec 32))

(assert (=> d!102097 (= lt!346233 (bvmul (bvxor lt!346232 (bvlshr lt!346232 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102097 (= lt!346232 ((_ extract 31 0) (bvand (bvxor (select (arr!20346 a!3186) j!159) (bvlshr (select (arr!20346 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102097 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!525834 (let ((h!15509 ((_ extract 31 0) (bvand (bvxor (select (arr!20346 a!3186) j!159) (bvlshr (select (arr!20346 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65154 (bvmul (bvxor h!15509 (bvlshr h!15509 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65154 (bvlshr x!65154 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!525834 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!525834 #b00000000000000000000000000000000))))))

(assert (=> d!102097 (= (toIndex!0 (select (arr!20346 a!3186) j!159) mask!3328) (bvand (bvxor lt!346233 (bvlshr lt!346233 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!776762 d!102097))

(declare-fun d!102099 () Bool)

(declare-fun res!525845 () Bool)

(declare-fun e!432417 () Bool)

(assert (=> d!102099 (=> res!525845 e!432417)))

(assert (=> d!102099 (= res!525845 (= (select (arr!20346 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102099 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!432417)))

(declare-fun b!777101 () Bool)

(declare-fun e!432418 () Bool)

(assert (=> b!777101 (= e!432417 e!432418)))

(declare-fun res!525846 () Bool)

(assert (=> b!777101 (=> (not res!525846) (not e!432418))))

(assert (=> b!777101 (= res!525846 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20767 a!3186)))))

(declare-fun b!777102 () Bool)

(assert (=> b!777102 (= e!432418 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102099 (not res!525845)) b!777101))

(assert (= (and b!777101 res!525846) b!777102))

(declare-fun m!721093 () Bool)

(assert (=> d!102099 m!721093))

(declare-fun m!721097 () Bool)

(assert (=> b!777102 m!721097))

(assert (=> b!776764 d!102099))

(declare-fun b!777103 () Bool)

(declare-fun e!432422 () Bool)

(declare-fun e!432423 () Bool)

(assert (=> b!777103 (= e!432422 e!432423)))

(declare-fun res!525848 () Bool)

(declare-fun lt!346241 () SeekEntryResult!7953)

(assert (=> b!777103 (= res!525848 (and (is-Intermediate!7953 lt!346241) (not (undefined!8765 lt!346241)) (bvslt (x!65145 lt!346241) #b01111111111111111111111111111110) (bvsge (x!65145 lt!346241) #b00000000000000000000000000000000) (bvsge (x!65145 lt!346241) x!1131)))))

(assert (=> b!777103 (=> (not res!525848) (not e!432423))))

(declare-fun b!777104 () Bool)

(declare-fun e!432420 () SeekEntryResult!7953)

(assert (=> b!777104 (= e!432420 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!346108 lt!346110 mask!3328))))

(declare-fun b!777105 () Bool)

(assert (=> b!777105 (and (bvsge (index!34181 lt!346241) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346241) (size!20767 lt!346110)))))

(declare-fun res!525849 () Bool)

(assert (=> b!777105 (= res!525849 (= (select (arr!20346 lt!346110) (index!34181 lt!346241)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432419 () Bool)

(assert (=> b!777105 (=> res!525849 e!432419)))

(declare-fun b!777107 () Bool)

(assert (=> b!777107 (= e!432422 (bvsge (x!65145 lt!346241) #b01111111111111111111111111111110))))

(declare-fun b!777108 () Bool)

(declare-fun e!432421 () SeekEntryResult!7953)

(assert (=> b!777108 (= e!432421 e!432420)))

(declare-fun c!86030 () Bool)

(declare-fun lt!346240 () (_ BitVec 64))

(assert (=> b!777108 (= c!86030 (or (= lt!346240 lt!346108) (= (bvadd lt!346240 lt!346240) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777109 () Bool)

(assert (=> b!777109 (= e!432420 (Intermediate!7953 false index!1321 x!1131))))

(declare-fun d!102103 () Bool)

(assert (=> d!102103 e!432422))

(declare-fun c!86031 () Bool)

(assert (=> d!102103 (= c!86031 (and (is-Intermediate!7953 lt!346241) (undefined!8765 lt!346241)))))

(assert (=> d!102103 (= lt!346241 e!432421)))

(declare-fun c!86029 () Bool)

(assert (=> d!102103 (= c!86029 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102103 (= lt!346240 (select (arr!20346 lt!346110) index!1321))))

(assert (=> d!102103 (validMask!0 mask!3328)))

(assert (=> d!102103 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346108 lt!346110 mask!3328) lt!346241)))

(declare-fun b!777106 () Bool)

(assert (=> b!777106 (and (bvsge (index!34181 lt!346241) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346241) (size!20767 lt!346110)))))

(assert (=> b!777106 (= e!432419 (= (select (arr!20346 lt!346110) (index!34181 lt!346241)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!777110 () Bool)

(assert (=> b!777110 (and (bvsge (index!34181 lt!346241) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346241) (size!20767 lt!346110)))))

(declare-fun res!525847 () Bool)

(assert (=> b!777110 (= res!525847 (= (select (arr!20346 lt!346110) (index!34181 lt!346241)) lt!346108))))

(assert (=> b!777110 (=> res!525847 e!432419)))

(assert (=> b!777110 (= e!432423 e!432419)))

(declare-fun b!777111 () Bool)

(assert (=> b!777111 (= e!432421 (Intermediate!7953 true index!1321 x!1131))))

(assert (= (and d!102103 c!86029) b!777111))

(assert (= (and d!102103 (not c!86029)) b!777108))

(assert (= (and b!777108 c!86030) b!777109))

(assert (= (and b!777108 (not c!86030)) b!777104))

(assert (= (and d!102103 c!86031) b!777107))

(assert (= (and d!102103 (not c!86031)) b!777103))

(assert (= (and b!777103 res!525848) b!777110))

(assert (= (and b!777110 (not res!525847)) b!777105))

(assert (= (and b!777105 (not res!525849)) b!777106))

(declare-fun m!721105 () Bool)

(assert (=> b!777104 m!721105))

(assert (=> b!777104 m!721105))

(declare-fun m!721107 () Bool)

(assert (=> b!777104 m!721107))

(declare-fun m!721109 () Bool)

(assert (=> b!777105 m!721109))

(assert (=> b!777110 m!721109))

(assert (=> b!777106 m!721109))

(declare-fun m!721111 () Bool)

(assert (=> d!102103 m!721111))

(assert (=> d!102103 m!720843))

(assert (=> b!776753 d!102103))

(declare-fun b!777116 () Bool)

(declare-fun e!432431 () Bool)

(declare-fun e!432432 () Bool)

(assert (=> b!777116 (= e!432431 e!432432)))

(declare-fun res!525855 () Bool)

(declare-fun lt!346243 () SeekEntryResult!7953)

(assert (=> b!777116 (= res!525855 (and (is-Intermediate!7953 lt!346243) (not (undefined!8765 lt!346243)) (bvslt (x!65145 lt!346243) #b01111111111111111111111111111110) (bvsge (x!65145 lt!346243) #b00000000000000000000000000000000) (bvsge (x!65145 lt!346243) #b00000000000000000000000000000000)))))

(assert (=> b!777116 (=> (not res!525855) (not e!432432))))

(declare-fun b!777117 () Bool)

(declare-fun e!432429 () SeekEntryResult!7953)

(assert (=> b!777117 (= e!432429 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!346108 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!346108 lt!346110 mask!3328))))

(declare-fun b!777118 () Bool)

(assert (=> b!777118 (and (bvsge (index!34181 lt!346243) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346243) (size!20767 lt!346110)))))

(declare-fun res!525856 () Bool)

(assert (=> b!777118 (= res!525856 (= (select (arr!20346 lt!346110) (index!34181 lt!346243)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432428 () Bool)

(assert (=> b!777118 (=> res!525856 e!432428)))

(declare-fun b!777120 () Bool)

(assert (=> b!777120 (= e!432431 (bvsge (x!65145 lt!346243) #b01111111111111111111111111111110))))

(declare-fun b!777121 () Bool)

(declare-fun e!432430 () SeekEntryResult!7953)

(assert (=> b!777121 (= e!432430 e!432429)))

(declare-fun c!86033 () Bool)

(declare-fun lt!346242 () (_ BitVec 64))

(assert (=> b!777121 (= c!86033 (or (= lt!346242 lt!346108) (= (bvadd lt!346242 lt!346242) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777122 () Bool)

(assert (=> b!777122 (= e!432429 (Intermediate!7953 false (toIndex!0 lt!346108 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102107 () Bool)

(assert (=> d!102107 e!432431))

(declare-fun c!86034 () Bool)

(assert (=> d!102107 (= c!86034 (and (is-Intermediate!7953 lt!346243) (undefined!8765 lt!346243)))))

(assert (=> d!102107 (= lt!346243 e!432430)))

(declare-fun c!86032 () Bool)

(assert (=> d!102107 (= c!86032 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102107 (= lt!346242 (select (arr!20346 lt!346110) (toIndex!0 lt!346108 mask!3328)))))

(assert (=> d!102107 (validMask!0 mask!3328)))

(assert (=> d!102107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346108 mask!3328) lt!346108 lt!346110 mask!3328) lt!346243)))

(declare-fun b!777119 () Bool)

(assert (=> b!777119 (and (bvsge (index!34181 lt!346243) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346243) (size!20767 lt!346110)))))

(assert (=> b!777119 (= e!432428 (= (select (arr!20346 lt!346110) (index!34181 lt!346243)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!777123 () Bool)

(assert (=> b!777123 (and (bvsge (index!34181 lt!346243) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346243) (size!20767 lt!346110)))))

(declare-fun res!525854 () Bool)

(assert (=> b!777123 (= res!525854 (= (select (arr!20346 lt!346110) (index!34181 lt!346243)) lt!346108))))

(assert (=> b!777123 (=> res!525854 e!432428)))

(assert (=> b!777123 (= e!432432 e!432428)))

(declare-fun b!777124 () Bool)

(assert (=> b!777124 (= e!432430 (Intermediate!7953 true (toIndex!0 lt!346108 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102107 c!86032) b!777124))

(assert (= (and d!102107 (not c!86032)) b!777121))

(assert (= (and b!777121 c!86033) b!777122))

(assert (= (and b!777121 (not c!86033)) b!777117))

(assert (= (and d!102107 c!86034) b!777120))

(assert (= (and d!102107 (not c!86034)) b!777116))

(assert (= (and b!777116 res!525855) b!777123))

(assert (= (and b!777123 (not res!525854)) b!777118))

(assert (= (and b!777118 (not res!525856)) b!777119))

(assert (=> b!777117 m!720861))

(declare-fun m!721115 () Bool)

(assert (=> b!777117 m!721115))

(assert (=> b!777117 m!721115))

(declare-fun m!721117 () Bool)

(assert (=> b!777117 m!721117))

(declare-fun m!721119 () Bool)

(assert (=> b!777118 m!721119))

(assert (=> b!777123 m!721119))

(assert (=> b!777119 m!721119))

(assert (=> d!102107 m!720861))

(declare-fun m!721121 () Bool)

(assert (=> d!102107 m!721121))

(assert (=> d!102107 m!720843))

(assert (=> b!776753 d!102107))

(declare-fun d!102111 () Bool)

(declare-fun lt!346247 () (_ BitVec 32))

(declare-fun lt!346246 () (_ BitVec 32))

(assert (=> d!102111 (= lt!346247 (bvmul (bvxor lt!346246 (bvlshr lt!346246 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102111 (= lt!346246 ((_ extract 31 0) (bvand (bvxor lt!346108 (bvlshr lt!346108 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102111 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!525834 (let ((h!15509 ((_ extract 31 0) (bvand (bvxor lt!346108 (bvlshr lt!346108 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65154 (bvmul (bvxor h!15509 (bvlshr h!15509 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65154 (bvlshr x!65154 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!525834 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!525834 #b00000000000000000000000000000000))))))

(assert (=> d!102111 (= (toIndex!0 lt!346108 mask!3328) (bvand (bvxor lt!346247 (bvlshr lt!346247 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!776753 d!102111))

(declare-fun d!102113 () Bool)

(assert (=> d!102113 (= (validKeyInArray!0 (select (arr!20346 a!3186) j!159)) (and (not (= (select (arr!20346 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20346 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!776760 d!102113))

(declare-fun b!777139 () Bool)

(declare-fun e!432443 () SeekEntryResult!7953)

(assert (=> b!777139 (= e!432443 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20346 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!777140 () Bool)

(declare-fun e!432442 () SeekEntryResult!7953)

(assert (=> b!777140 (= e!432442 (Found!7953 index!1321))))

(declare-fun b!777141 () Bool)

(declare-fun e!432441 () SeekEntryResult!7953)

(assert (=> b!777141 (= e!432441 Undefined!7953)))

(declare-fun lt!346252 () SeekEntryResult!7953)

(declare-fun d!102117 () Bool)

(assert (=> d!102117 (and (or (is-Undefined!7953 lt!346252) (not (is-Found!7953 lt!346252)) (and (bvsge (index!34180 lt!346252) #b00000000000000000000000000000000) (bvslt (index!34180 lt!346252) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346252) (is-Found!7953 lt!346252) (not (is-MissingVacant!7953 lt!346252)) (not (= (index!34182 lt!346252) resIntermediateIndex!5)) (and (bvsge (index!34182 lt!346252) #b00000000000000000000000000000000) (bvslt (index!34182 lt!346252) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346252) (ite (is-Found!7953 lt!346252) (= (select (arr!20346 a!3186) (index!34180 lt!346252)) (select (arr!20346 a!3186) j!159)) (and (is-MissingVacant!7953 lt!346252) (= (index!34182 lt!346252) resIntermediateIndex!5) (= (select (arr!20346 a!3186) (index!34182 lt!346252)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102117 (= lt!346252 e!432441)))

(declare-fun c!86041 () Bool)

(assert (=> d!102117 (= c!86041 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!346251 () (_ BitVec 64))

(assert (=> d!102117 (= lt!346251 (select (arr!20346 a!3186) index!1321))))

(assert (=> d!102117 (validMask!0 mask!3328)))

(assert (=> d!102117 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346252)))

(declare-fun b!777142 () Bool)

(declare-fun c!86042 () Bool)

(assert (=> b!777142 (= c!86042 (= lt!346251 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!777142 (= e!432442 e!432443)))

(declare-fun b!777143 () Bool)

(assert (=> b!777143 (= e!432443 (MissingVacant!7953 resIntermediateIndex!5))))

(declare-fun b!777144 () Bool)

(assert (=> b!777144 (= e!432441 e!432442)))

(declare-fun c!86043 () Bool)

(assert (=> b!777144 (= c!86043 (= lt!346251 (select (arr!20346 a!3186) j!159)))))

(assert (= (and d!102117 c!86041) b!777141))

(assert (= (and d!102117 (not c!86041)) b!777144))

(assert (= (and b!777144 c!86043) b!777140))

(assert (= (and b!777144 (not c!86043)) b!777142))

(assert (= (and b!777142 c!86042) b!777143))

(assert (= (and b!777142 (not c!86042)) b!777139))

(assert (=> b!777139 m!721105))

(assert (=> b!777139 m!721105))

(assert (=> b!777139 m!720847))

(declare-fun m!721143 () Bool)

(assert (=> b!777139 m!721143))

(declare-fun m!721149 () Bool)

(assert (=> d!102117 m!721149))

(declare-fun m!721151 () Bool)

(assert (=> d!102117 m!721151))

(declare-fun m!721153 () Bool)

(assert (=> d!102117 m!721153))

(assert (=> d!102117 m!720843))

(assert (=> b!776772 d!102117))

(declare-fun d!102123 () Bool)

(assert (=> d!102123 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!776761 d!102123))

(declare-fun b!777179 () Bool)

(declare-fun e!432465 () SeekEntryResult!7953)

(declare-fun lt!346269 () SeekEntryResult!7953)

(assert (=> b!777179 (= e!432465 (Found!7953 (index!34181 lt!346269)))))

(declare-fun b!777180 () Bool)

(declare-fun c!86059 () Bool)

(declare-fun lt!346270 () (_ BitVec 64))

(assert (=> b!777180 (= c!86059 (= lt!346270 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432464 () SeekEntryResult!7953)

(assert (=> b!777180 (= e!432465 e!432464)))

(declare-fun b!777181 () Bool)

(declare-fun e!432463 () SeekEntryResult!7953)

(assert (=> b!777181 (= e!432463 e!432465)))

(assert (=> b!777181 (= lt!346270 (select (arr!20346 lt!346110) (index!34181 lt!346269)))))

(declare-fun c!86058 () Bool)

(assert (=> b!777181 (= c!86058 (= lt!346270 lt!346108))))

(declare-fun b!777182 () Bool)

(assert (=> b!777182 (= e!432464 (MissingZero!7953 (index!34181 lt!346269)))))

(declare-fun b!777183 () Bool)

(assert (=> b!777183 (= e!432464 (seekKeyOrZeroReturnVacant!0 (x!65145 lt!346269) (index!34181 lt!346269) (index!34181 lt!346269) lt!346108 lt!346110 mask!3328))))

(declare-fun d!102125 () Bool)

(declare-fun lt!346271 () SeekEntryResult!7953)

(assert (=> d!102125 (and (or (is-Undefined!7953 lt!346271) (not (is-Found!7953 lt!346271)) (and (bvsge (index!34180 lt!346271) #b00000000000000000000000000000000) (bvslt (index!34180 lt!346271) (size!20767 lt!346110)))) (or (is-Undefined!7953 lt!346271) (is-Found!7953 lt!346271) (not (is-MissingZero!7953 lt!346271)) (and (bvsge (index!34179 lt!346271) #b00000000000000000000000000000000) (bvslt (index!34179 lt!346271) (size!20767 lt!346110)))) (or (is-Undefined!7953 lt!346271) (is-Found!7953 lt!346271) (is-MissingZero!7953 lt!346271) (not (is-MissingVacant!7953 lt!346271)) (and (bvsge (index!34182 lt!346271) #b00000000000000000000000000000000) (bvslt (index!34182 lt!346271) (size!20767 lt!346110)))) (or (is-Undefined!7953 lt!346271) (ite (is-Found!7953 lt!346271) (= (select (arr!20346 lt!346110) (index!34180 lt!346271)) lt!346108) (ite (is-MissingZero!7953 lt!346271) (= (select (arr!20346 lt!346110) (index!34179 lt!346271)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7953 lt!346271) (= (select (arr!20346 lt!346110) (index!34182 lt!346271)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102125 (= lt!346271 e!432463)))

(declare-fun c!86057 () Bool)

(assert (=> d!102125 (= c!86057 (and (is-Intermediate!7953 lt!346269) (undefined!8765 lt!346269)))))

(assert (=> d!102125 (= lt!346269 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346108 mask!3328) lt!346108 lt!346110 mask!3328))))

(assert (=> d!102125 (validMask!0 mask!3328)))

(assert (=> d!102125 (= (seekEntryOrOpen!0 lt!346108 lt!346110 mask!3328) lt!346271)))

(declare-fun b!777184 () Bool)

(assert (=> b!777184 (= e!432463 Undefined!7953)))

(assert (= (and d!102125 c!86057) b!777184))

(assert (= (and d!102125 (not c!86057)) b!777181))

(assert (= (and b!777181 c!86058) b!777179))

(assert (= (and b!777181 (not c!86058)) b!777180))

(assert (= (and b!777180 c!86059) b!777182))

(assert (= (and b!777180 (not c!86059)) b!777183))

(declare-fun m!721157 () Bool)

(assert (=> b!777181 m!721157))

(declare-fun m!721159 () Bool)

(assert (=> b!777183 m!721159))

(declare-fun m!721161 () Bool)

(assert (=> d!102125 m!721161))

(assert (=> d!102125 m!720861))

(assert (=> d!102125 m!720865))

(declare-fun m!721163 () Bool)

(assert (=> d!102125 m!721163))

(assert (=> d!102125 m!720843))

(assert (=> d!102125 m!720861))

(declare-fun m!721165 () Bool)

(assert (=> d!102125 m!721165))

(assert (=> b!776768 d!102125))

(declare-fun b!777194 () Bool)

(declare-fun e!432473 () SeekEntryResult!7953)

(declare-fun lt!346274 () SeekEntryResult!7953)

(assert (=> b!777194 (= e!432473 (Found!7953 (index!34181 lt!346274)))))

(declare-fun b!777195 () Bool)

(declare-fun c!86065 () Bool)

(declare-fun lt!346275 () (_ BitVec 64))

(assert (=> b!777195 (= c!86065 (= lt!346275 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432472 () SeekEntryResult!7953)

(assert (=> b!777195 (= e!432473 e!432472)))

(declare-fun b!777196 () Bool)

(declare-fun e!432471 () SeekEntryResult!7953)

(assert (=> b!777196 (= e!432471 e!432473)))

(assert (=> b!777196 (= lt!346275 (select (arr!20346 a!3186) (index!34181 lt!346274)))))

(declare-fun c!86064 () Bool)

(assert (=> b!777196 (= c!86064 (= lt!346275 (select (arr!20346 a!3186) j!159)))))

(declare-fun b!777197 () Bool)

(assert (=> b!777197 (= e!432472 (MissingZero!7953 (index!34181 lt!346274)))))

(declare-fun b!777198 () Bool)

(assert (=> b!777198 (= e!432472 (seekKeyOrZeroReturnVacant!0 (x!65145 lt!346274) (index!34181 lt!346274) (index!34181 lt!346274) (select (arr!20346 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!102127 () Bool)

(declare-fun lt!346276 () SeekEntryResult!7953)

(assert (=> d!102127 (and (or (is-Undefined!7953 lt!346276) (not (is-Found!7953 lt!346276)) (and (bvsge (index!34180 lt!346276) #b00000000000000000000000000000000) (bvslt (index!34180 lt!346276) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346276) (is-Found!7953 lt!346276) (not (is-MissingZero!7953 lt!346276)) (and (bvsge (index!34179 lt!346276) #b00000000000000000000000000000000) (bvslt (index!34179 lt!346276) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346276) (is-Found!7953 lt!346276) (is-MissingZero!7953 lt!346276) (not (is-MissingVacant!7953 lt!346276)) (and (bvsge (index!34182 lt!346276) #b00000000000000000000000000000000) (bvslt (index!34182 lt!346276) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346276) (ite (is-Found!7953 lt!346276) (= (select (arr!20346 a!3186) (index!34180 lt!346276)) (select (arr!20346 a!3186) j!159)) (ite (is-MissingZero!7953 lt!346276) (= (select (arr!20346 a!3186) (index!34179 lt!346276)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7953 lt!346276) (= (select (arr!20346 a!3186) (index!34182 lt!346276)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102127 (= lt!346276 e!432471)))

(declare-fun c!86063 () Bool)

(assert (=> d!102127 (= c!86063 (and (is-Intermediate!7953 lt!346274) (undefined!8765 lt!346274)))))

(assert (=> d!102127 (= lt!346274 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20346 a!3186) j!159) mask!3328) (select (arr!20346 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102127 (validMask!0 mask!3328)))

(assert (=> d!102127 (= (seekEntryOrOpen!0 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346276)))

(declare-fun b!777199 () Bool)

(assert (=> b!777199 (= e!432471 Undefined!7953)))

(assert (= (and d!102127 c!86063) b!777199))

(assert (= (and d!102127 (not c!86063)) b!777196))

(assert (= (and b!777196 c!86064) b!777194))

(assert (= (and b!777196 (not c!86064)) b!777195))

(assert (= (and b!777195 c!86065) b!777197))

(assert (= (and b!777195 (not c!86065)) b!777198))

(declare-fun m!721167 () Bool)

(assert (=> b!777196 m!721167))

(assert (=> b!777198 m!720847))

(declare-fun m!721169 () Bool)

(assert (=> b!777198 m!721169))

(declare-fun m!721171 () Bool)

(assert (=> d!102127 m!721171))

(assert (=> d!102127 m!720855))

(assert (=> d!102127 m!720847))

(assert (=> d!102127 m!720857))

(declare-fun m!721175 () Bool)

(assert (=> d!102127 m!721175))

(assert (=> d!102127 m!720843))

(assert (=> d!102127 m!720847))

(assert (=> d!102127 m!720855))

(declare-fun m!721177 () Bool)

(assert (=> d!102127 m!721177))

(assert (=> b!776757 d!102127))

(declare-fun call!35182 () Bool)

(declare-fun bm!35179 () Bool)

(assert (=> bm!35179 (= call!35182 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!777214 () Bool)

(declare-fun e!432484 () Bool)

(declare-fun e!432483 () Bool)

(assert (=> b!777214 (= e!432484 e!432483)))

(declare-fun c!86071 () Bool)

(assert (=> b!777214 (= c!86071 (validKeyInArray!0 (select (arr!20346 a!3186) j!159)))))

(declare-fun b!777215 () Bool)

(declare-fun e!432485 () Bool)

(assert (=> b!777215 (= e!432485 call!35182)))

(declare-fun d!102129 () Bool)

(declare-fun res!525875 () Bool)

(assert (=> d!102129 (=> res!525875 e!432484)))

(assert (=> d!102129 (= res!525875 (bvsge j!159 (size!20767 a!3186)))))

(assert (=> d!102129 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!432484)))

(declare-fun b!777216 () Bool)

(assert (=> b!777216 (= e!432483 e!432485)))

(declare-fun lt!346294 () (_ BitVec 64))

(assert (=> b!777216 (= lt!346294 (select (arr!20346 a!3186) j!159))))

(declare-fun lt!346293 () Unit!26800)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42508 (_ BitVec 64) (_ BitVec 32)) Unit!26800)

(assert (=> b!777216 (= lt!346293 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346294 j!159))))

(assert (=> b!777216 (arrayContainsKey!0 a!3186 lt!346294 #b00000000000000000000000000000000)))

(declare-fun lt!346292 () Unit!26800)

(assert (=> b!777216 (= lt!346292 lt!346293)))

(declare-fun res!525876 () Bool)

(assert (=> b!777216 (= res!525876 (= (seekEntryOrOpen!0 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) (Found!7953 j!159)))))

(assert (=> b!777216 (=> (not res!525876) (not e!432485))))

(declare-fun b!777217 () Bool)

(assert (=> b!777217 (= e!432483 call!35182)))

(assert (= (and d!102129 (not res!525875)) b!777214))

(assert (= (and b!777214 c!86071) b!777216))

(assert (= (and b!777214 (not c!86071)) b!777217))

(assert (= (and b!777216 res!525876) b!777215))

(assert (= (or b!777215 b!777217) bm!35179))

(declare-fun m!721187 () Bool)

(assert (=> bm!35179 m!721187))

(assert (=> b!777214 m!720847))

(assert (=> b!777214 m!720847))

(assert (=> b!777214 m!720849))

(assert (=> b!777216 m!720847))

(declare-fun m!721193 () Bool)

(assert (=> b!777216 m!721193))

(declare-fun m!721195 () Bool)

(assert (=> b!777216 m!721195))

(assert (=> b!777216 m!720847))

(assert (=> b!777216 m!720875))

(assert (=> b!776769 d!102129))

(declare-fun d!102135 () Bool)

(assert (=> d!102135 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!346302 () Unit!26800)

(declare-fun choose!38 (array!42508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26800)

(assert (=> d!102135 (= lt!346302 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102135 (validMask!0 mask!3328)))

(assert (=> d!102135 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!346302)))

(declare-fun bs!21668 () Bool)

(assert (= bs!21668 d!102135))

(assert (=> bs!21668 m!720869))

(declare-fun m!721215 () Bool)

(assert (=> bs!21668 m!721215))

(assert (=> bs!21668 m!720843))

(assert (=> b!776769 d!102135))

(declare-fun b!777230 () Bool)

(declare-fun e!432495 () Bool)

(declare-fun e!432496 () Bool)

(assert (=> b!777230 (= e!432495 e!432496)))

(declare-fun res!525878 () Bool)

(declare-fun lt!346304 () SeekEntryResult!7953)

(assert (=> b!777230 (= res!525878 (and (is-Intermediate!7953 lt!346304) (not (undefined!8765 lt!346304)) (bvslt (x!65145 lt!346304) #b01111111111111111111111111111110) (bvsge (x!65145 lt!346304) #b00000000000000000000000000000000) (bvsge (x!65145 lt!346304) x!1131)))))

(assert (=> b!777230 (=> (not res!525878) (not e!432496))))

(declare-fun b!777231 () Bool)

(declare-fun e!432493 () SeekEntryResult!7953)

(assert (=> b!777231 (= e!432493 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20346 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!777232 () Bool)

(assert (=> b!777232 (and (bvsge (index!34181 lt!346304) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346304) (size!20767 a!3186)))))

(declare-fun res!525879 () Bool)

(assert (=> b!777232 (= res!525879 (= (select (arr!20346 a!3186) (index!34181 lt!346304)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432492 () Bool)

(assert (=> b!777232 (=> res!525879 e!432492)))

(declare-fun b!777234 () Bool)

(assert (=> b!777234 (= e!432495 (bvsge (x!65145 lt!346304) #b01111111111111111111111111111110))))

(declare-fun b!777235 () Bool)

(declare-fun e!432494 () SeekEntryResult!7953)

(assert (=> b!777235 (= e!432494 e!432493)))

(declare-fun c!86079 () Bool)

(declare-fun lt!346303 () (_ BitVec 64))

(assert (=> b!777235 (= c!86079 (or (= lt!346303 (select (arr!20346 a!3186) j!159)) (= (bvadd lt!346303 lt!346303) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777236 () Bool)

(assert (=> b!777236 (= e!432493 (Intermediate!7953 false index!1321 x!1131))))

(declare-fun d!102143 () Bool)

(assert (=> d!102143 e!432495))

(declare-fun c!86080 () Bool)

(assert (=> d!102143 (= c!86080 (and (is-Intermediate!7953 lt!346304) (undefined!8765 lt!346304)))))

(assert (=> d!102143 (= lt!346304 e!432494)))

(declare-fun c!86078 () Bool)

(assert (=> d!102143 (= c!86078 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102143 (= lt!346303 (select (arr!20346 a!3186) index!1321))))

(assert (=> d!102143 (validMask!0 mask!3328)))

(assert (=> d!102143 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20346 a!3186) j!159) a!3186 mask!3328) lt!346304)))

(declare-fun b!777233 () Bool)

(assert (=> b!777233 (and (bvsge (index!34181 lt!346304) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346304) (size!20767 a!3186)))))

(assert (=> b!777233 (= e!432492 (= (select (arr!20346 a!3186) (index!34181 lt!346304)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!777237 () Bool)

(assert (=> b!777237 (and (bvsge (index!34181 lt!346304) #b00000000000000000000000000000000) (bvslt (index!34181 lt!346304) (size!20767 a!3186)))))

(declare-fun res!525877 () Bool)

(assert (=> b!777237 (= res!525877 (= (select (arr!20346 a!3186) (index!34181 lt!346304)) (select (arr!20346 a!3186) j!159)))))

(assert (=> b!777237 (=> res!525877 e!432492)))

(assert (=> b!777237 (= e!432496 e!432492)))

(declare-fun b!777238 () Bool)

(assert (=> b!777238 (= e!432494 (Intermediate!7953 true index!1321 x!1131))))

(assert (= (and d!102143 c!86078) b!777238))

(assert (= (and d!102143 (not c!86078)) b!777235))

(assert (= (and b!777235 c!86079) b!777236))

(assert (= (and b!777235 (not c!86079)) b!777231))

(assert (= (and d!102143 c!86080) b!777234))

(assert (= (and d!102143 (not c!86080)) b!777230))

(assert (= (and b!777230 res!525878) b!777237))

(assert (= (and b!777237 (not res!525877)) b!777232))

(assert (= (and b!777232 (not res!525879)) b!777233))

(assert (=> b!777231 m!721105))

(assert (=> b!777231 m!721105))

(assert (=> b!777231 m!720847))

(declare-fun m!721227 () Bool)

(assert (=> b!777231 m!721227))

(declare-fun m!721229 () Bool)

(assert (=> b!777232 m!721229))

(assert (=> b!777237 m!721229))

(assert (=> b!777233 m!721229))

(assert (=> d!102143 m!721153))

(assert (=> d!102143 m!720843))

(assert (=> b!776758 d!102143))

(declare-fun bm!35180 () Bool)

(declare-fun call!35183 () Bool)

(assert (=> bm!35180 (= call!35183 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!777239 () Bool)

(declare-fun e!432498 () Bool)

(declare-fun e!432497 () Bool)

(assert (=> b!777239 (= e!432498 e!432497)))

(declare-fun c!86081 () Bool)

(assert (=> b!777239 (= c!86081 (validKeyInArray!0 (select (arr!20346 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!777240 () Bool)

(declare-fun e!432499 () Bool)

(assert (=> b!777240 (= e!432499 call!35183)))

(declare-fun d!102147 () Bool)

(declare-fun res!525880 () Bool)

(assert (=> d!102147 (=> res!525880 e!432498)))

(assert (=> d!102147 (= res!525880 (bvsge #b00000000000000000000000000000000 (size!20767 a!3186)))))

(assert (=> d!102147 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!432498)))

(declare-fun b!777241 () Bool)

(assert (=> b!777241 (= e!432497 e!432499)))

(declare-fun lt!346307 () (_ BitVec 64))

(assert (=> b!777241 (= lt!346307 (select (arr!20346 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!346306 () Unit!26800)

(assert (=> b!777241 (= lt!346306 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346307 #b00000000000000000000000000000000))))

(assert (=> b!777241 (arrayContainsKey!0 a!3186 lt!346307 #b00000000000000000000000000000000)))

(declare-fun lt!346305 () Unit!26800)

(assert (=> b!777241 (= lt!346305 lt!346306)))

(declare-fun res!525881 () Bool)

(assert (=> b!777241 (= res!525881 (= (seekEntryOrOpen!0 (select (arr!20346 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7953 #b00000000000000000000000000000000)))))

(assert (=> b!777241 (=> (not res!525881) (not e!432499))))

(declare-fun b!777242 () Bool)

(assert (=> b!777242 (= e!432497 call!35183)))

(assert (= (and d!102147 (not res!525880)) b!777239))

(assert (= (and b!777239 c!86081) b!777241))

(assert (= (and b!777239 (not c!86081)) b!777242))

(assert (= (and b!777241 res!525881) b!777240))

(assert (= (or b!777240 b!777242) bm!35180))

(declare-fun m!721231 () Bool)

(assert (=> bm!35180 m!721231))

(assert (=> b!777239 m!721093))

(assert (=> b!777239 m!721093))

(declare-fun m!721233 () Bool)

(assert (=> b!777239 m!721233))

(assert (=> b!777241 m!721093))

(declare-fun m!721235 () Bool)

(assert (=> b!777241 m!721235))

(declare-fun m!721237 () Bool)

(assert (=> b!777241 m!721237))

(assert (=> b!777241 m!721093))

(declare-fun m!721239 () Bool)

(assert (=> b!777241 m!721239))

(assert (=> b!776755 d!102147))

(declare-fun b!777243 () Bool)

(declare-fun e!432502 () SeekEntryResult!7953)

(declare-fun lt!346308 () SeekEntryResult!7953)

(assert (=> b!777243 (= e!432502 (Found!7953 (index!34181 lt!346308)))))

(declare-fun b!777244 () Bool)

(declare-fun c!86084 () Bool)

(declare-fun lt!346309 () (_ BitVec 64))

(assert (=> b!777244 (= c!86084 (= lt!346309 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432501 () SeekEntryResult!7953)

(assert (=> b!777244 (= e!432502 e!432501)))

(declare-fun b!777245 () Bool)

(declare-fun e!432500 () SeekEntryResult!7953)

(assert (=> b!777245 (= e!432500 e!432502)))

(assert (=> b!777245 (= lt!346309 (select (arr!20346 a!3186) (index!34181 lt!346308)))))

(declare-fun c!86083 () Bool)

(assert (=> b!777245 (= c!86083 (= lt!346309 k!2102))))

(declare-fun b!777246 () Bool)

(assert (=> b!777246 (= e!432501 (MissingZero!7953 (index!34181 lt!346308)))))

(declare-fun b!777247 () Bool)

(assert (=> b!777247 (= e!432501 (seekKeyOrZeroReturnVacant!0 (x!65145 lt!346308) (index!34181 lt!346308) (index!34181 lt!346308) k!2102 a!3186 mask!3328))))

(declare-fun d!102149 () Bool)

(declare-fun lt!346310 () SeekEntryResult!7953)

(assert (=> d!102149 (and (or (is-Undefined!7953 lt!346310) (not (is-Found!7953 lt!346310)) (and (bvsge (index!34180 lt!346310) #b00000000000000000000000000000000) (bvslt (index!34180 lt!346310) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346310) (is-Found!7953 lt!346310) (not (is-MissingZero!7953 lt!346310)) (and (bvsge (index!34179 lt!346310) #b00000000000000000000000000000000) (bvslt (index!34179 lt!346310) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346310) (is-Found!7953 lt!346310) (is-MissingZero!7953 lt!346310) (not (is-MissingVacant!7953 lt!346310)) (and (bvsge (index!34182 lt!346310) #b00000000000000000000000000000000) (bvslt (index!34182 lt!346310) (size!20767 a!3186)))) (or (is-Undefined!7953 lt!346310) (ite (is-Found!7953 lt!346310) (= (select (arr!20346 a!3186) (index!34180 lt!346310)) k!2102) (ite (is-MissingZero!7953 lt!346310) (= (select (arr!20346 a!3186) (index!34179 lt!346310)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7953 lt!346310) (= (select (arr!20346 a!3186) (index!34182 lt!346310)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102149 (= lt!346310 e!432500)))

(declare-fun c!86082 () Bool)

(assert (=> d!102149 (= c!86082 (and (is-Intermediate!7953 lt!346308) (undefined!8765 lt!346308)))))

(assert (=> d!102149 (= lt!346308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102149 (validMask!0 mask!3328)))

(assert (=> d!102149 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!346310)))

(declare-fun b!777248 () Bool)

(assert (=> b!777248 (= e!432500 Undefined!7953)))

(assert (= (and d!102149 c!86082) b!777248))

(assert (= (and d!102149 (not c!86082)) b!777245))

(assert (= (and b!777245 c!86083) b!777243))

(assert (= (and b!777245 (not c!86083)) b!777244))

(assert (= (and b!777244 c!86084) b!777246))

(assert (= (and b!777244 (not c!86084)) b!777247))

(declare-fun m!721241 () Bool)

(assert (=> b!777245 m!721241))

(declare-fun m!721243 () Bool)

(assert (=> b!777247 m!721243))

(declare-fun m!721245 () Bool)

(assert (=> d!102149 m!721245))

(declare-fun m!721247 () Bool)

(assert (=> d!102149 m!721247))

(declare-fun m!721249 () Bool)

(assert (=> d!102149 m!721249))

(declare-fun m!721251 () Bool)

(assert (=> d!102149 m!721251))

(assert (=> d!102149 m!720843))

(assert (=> d!102149 m!721247))

(declare-fun m!721253 () Bool)

(assert (=> d!102149 m!721253))

(assert (=> b!776754 d!102149))

(declare-fun b!777265 () Bool)

(declare-fun e!432517 () Bool)

(declare-fun contains!4099 (List!14401 (_ BitVec 64)) Bool)

(assert (=> b!777265 (= e!432517 (contains!4099 Nil!14398 (select (arr!20346 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!777266 () Bool)

(declare-fun e!432515 () Bool)

(declare-fun call!35186 () Bool)

(assert (=> b!777266 (= e!432515 call!35186)))

(declare-fun b!777267 () Bool)

(declare-fun e!432516 () Bool)

(declare-fun e!432518 () Bool)

(assert (=> b!777267 (= e!432516 e!432518)))

(declare-fun res!525890 () Bool)

(assert (=> b!777267 (=> (not res!525890) (not e!432518))))

(assert (=> b!777267 (= res!525890 (not e!432517))))

(declare-fun res!525892 () Bool)

(assert (=> b!777267 (=> (not res!525892) (not e!432517))))

(assert (=> b!777267 (= res!525892 (validKeyInArray!0 (select (arr!20346 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!777268 () Bool)

(assert (=> b!777268 (= e!432518 e!432515)))

(declare-fun c!86089 () Bool)

(assert (=> b!777268 (= c!86089 (validKeyInArray!0 (select (arr!20346 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!777269 () Bool)

(assert (=> b!777269 (= e!432515 call!35186)))

(declare-fun d!102151 () Bool)

(declare-fun res!525891 () Bool)

(assert (=> d!102151 (=> res!525891 e!432516)))

(assert (=> d!102151 (= res!525891 (bvsge #b00000000000000000000000000000000 (size!20767 a!3186)))))

(assert (=> d!102151 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14398) e!432516)))

(declare-fun bm!35183 () Bool)

(assert (=> bm!35183 (= call!35186 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86089 (Cons!14397 (select (arr!20346 a!3186) #b00000000000000000000000000000000) Nil!14398) Nil!14398)))))

(assert (= (and d!102151 (not res!525891)) b!777267))

(assert (= (and b!777267 res!525892) b!777265))

(assert (= (and b!777267 res!525890) b!777268))

(assert (= (and b!777268 c!86089) b!777266))

(assert (= (and b!777268 (not c!86089)) b!777269))

(assert (= (or b!777266 b!777269) bm!35183))

(assert (=> b!777265 m!721093))

(assert (=> b!777265 m!721093))

(declare-fun m!721255 () Bool)

(assert (=> b!777265 m!721255))

(assert (=> b!777267 m!721093))

(assert (=> b!777267 m!721093))

(assert (=> b!777267 m!721233))

(assert (=> b!777268 m!721093))

(assert (=> b!777268 m!721093))

(assert (=> b!777268 m!721233))

(assert (=> bm!35183 m!721093))

(declare-fun m!721257 () Bool)

(assert (=> bm!35183 m!721257))

(assert (=> b!776756 d!102151))

(assert (=> b!776766 d!102117))

(push 1)

