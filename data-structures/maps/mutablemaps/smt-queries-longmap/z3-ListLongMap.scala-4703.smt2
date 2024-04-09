; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65298 () Bool)

(assert start!65298)

(declare-datatypes ((SeekEntryResult!7429 0))(
  ( (MissingZero!7429 (index!32083 (_ BitVec 32))) (Found!7429 (index!32084 (_ BitVec 32))) (Intermediate!7429 (undefined!8241 Bool) (index!32085 (_ BitVec 32)) (x!63092 (_ BitVec 32))) (Undefined!7429) (MissingVacant!7429 (index!32086 (_ BitVec 32))) )
))
(declare-fun lt!329140 () SeekEntryResult!7429)

(declare-fun e!414142 () Bool)

(declare-fun lt!329150 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41424 0))(
  ( (array!41425 (arr!19822 (Array (_ BitVec 32) (_ BitVec 64))) (size!20243 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41424)

(declare-fun b!740767 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41424 (_ BitVec 32)) SeekEntryResult!7429)

(assert (=> b!740767 (= e!414142 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329150 (select (arr!19822 a!3186) j!159) a!3186 mask!3328) lt!329140)))))

(declare-fun b!740768 () Bool)

(declare-datatypes ((Unit!25334 0))(
  ( (Unit!25335) )
))
(declare-fun e!414145 () Unit!25334)

(declare-fun Unit!25336 () Unit!25334)

(assert (=> b!740768 (= e!414145 Unit!25336)))

(assert (=> b!740768 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329150 (select (arr!19822 a!3186) j!159) a!3186 mask!3328) lt!329140)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!740769 () Bool)

(declare-fun e!414150 () Bool)

(assert (=> b!740769 (= e!414150 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19822 a!3186) j!159) a!3186 mask!3328) lt!329140))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!740770 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41424 (_ BitVec 32)) SeekEntryResult!7429)

(assert (=> b!740770 (= e!414150 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19822 a!3186) j!159) a!3186 mask!3328) (Found!7429 j!159)))))

(declare-fun lt!329143 () SeekEntryResult!7429)

(declare-fun b!740771 () Bool)

(assert (=> b!740771 (= e!414142 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329150 resIntermediateIndex!5 (select (arr!19822 a!3186) j!159) a!3186 mask!3328) lt!329143)))))

(declare-fun b!740772 () Bool)

(declare-fun e!414153 () Bool)

(declare-fun e!414148 () Bool)

(assert (=> b!740772 (= e!414153 (not e!414148))))

(declare-fun res!498304 () Bool)

(assert (=> b!740772 (=> res!498304 e!414148)))

(declare-fun lt!329147 () SeekEntryResult!7429)

(get-info :version)

(assert (=> b!740772 (= res!498304 (or (not ((_ is Intermediate!7429) lt!329147)) (bvsge x!1131 (x!63092 lt!329147))))))

(assert (=> b!740772 (= lt!329143 (Found!7429 j!159))))

(declare-fun e!414143 () Bool)

(assert (=> b!740772 e!414143))

(declare-fun res!498297 () Bool)

(assert (=> b!740772 (=> (not res!498297) (not e!414143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41424 (_ BitVec 32)) Bool)

(assert (=> b!740772 (= res!498297 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!329142 () Unit!25334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41424 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25334)

(assert (=> b!740772 (= lt!329142 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!414152 () Bool)

(declare-fun lt!329146 () SeekEntryResult!7429)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!740773 () Bool)

(assert (=> b!740773 (= e!414152 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19822 a!3186) j!159) a!3186 mask!3328) lt!329146))))

(declare-fun b!740774 () Bool)

(declare-fun e!414151 () Bool)

(declare-fun e!414146 () Bool)

(assert (=> b!740774 (= e!414151 e!414146)))

(declare-fun res!498302 () Bool)

(assert (=> b!740774 (=> (not res!498302) (not e!414146))))

(declare-fun lt!329149 () SeekEntryResult!7429)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740774 (= res!498302 (or (= lt!329149 (MissingZero!7429 i!1173)) (= lt!329149 (MissingVacant!7429 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41424 (_ BitVec 32)) SeekEntryResult!7429)

(assert (=> b!740774 (= lt!329149 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!740775 () Bool)

(declare-fun res!498292 () Bool)

(assert (=> b!740775 (=> (not res!498292) (not e!414151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740775 (= res!498292 (validKeyInArray!0 (select (arr!19822 a!3186) j!159)))))

(declare-fun b!740776 () Bool)

(declare-fun res!498293 () Bool)

(assert (=> b!740776 (=> (not res!498293) (not e!414151))))

(assert (=> b!740776 (= res!498293 (validKeyInArray!0 k0!2102))))

(declare-fun b!740777 () Bool)

(declare-fun res!498296 () Bool)

(assert (=> b!740777 (=> (not res!498296) (not e!414146))))

(declare-datatypes ((List!13877 0))(
  ( (Nil!13874) (Cons!13873 (h!14945 (_ BitVec 64)) (t!20200 List!13877)) )
))
(declare-fun arrayNoDuplicates!0 (array!41424 (_ BitVec 32) List!13877) Bool)

(assert (=> b!740777 (= res!498296 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13874))))

(declare-fun b!740778 () Bool)

(declare-fun res!498295 () Bool)

(declare-fun e!414141 () Bool)

(assert (=> b!740778 (=> (not res!498295) (not e!414141))))

(assert (=> b!740778 (= res!498295 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19822 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740779 () Bool)

(assert (=> b!740779 (= e!414143 e!414152)))

(declare-fun res!498290 () Bool)

(assert (=> b!740779 (=> (not res!498290) (not e!414152))))

(assert (=> b!740779 (= res!498290 (= (seekEntryOrOpen!0 (select (arr!19822 a!3186) j!159) a!3186 mask!3328) lt!329146))))

(assert (=> b!740779 (= lt!329146 (Found!7429 j!159))))

(declare-fun b!740780 () Bool)

(declare-fun res!498309 () Bool)

(assert (=> b!740780 (=> (not res!498309) (not e!414151))))

(assert (=> b!740780 (= res!498309 (and (= (size!20243 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20243 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20243 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740781 () Bool)

(assert (=> b!740781 (= e!414141 e!414153)))

(declare-fun res!498303 () Bool)

(assert (=> b!740781 (=> (not res!498303) (not e!414153))))

(declare-fun lt!329145 () SeekEntryResult!7429)

(assert (=> b!740781 (= res!498303 (= lt!329145 lt!329147))))

(declare-fun lt!329139 () (_ BitVec 64))

(declare-fun lt!329148 () array!41424)

(assert (=> b!740781 (= lt!329147 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329139 lt!329148 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740781 (= lt!329145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329139 mask!3328) lt!329139 lt!329148 mask!3328))))

(assert (=> b!740781 (= lt!329139 (select (store (arr!19822 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!740781 (= lt!329148 (array!41425 (store (arr!19822 a!3186) i!1173 k0!2102) (size!20243 a!3186)))))

(declare-fun b!740782 () Bool)

(declare-fun e!414149 () Bool)

(assert (=> b!740782 (= e!414149 (validKeyInArray!0 lt!329139))))

(declare-fun b!740783 () Bool)

(assert (=> b!740783 (= e!414146 e!414141)))

(declare-fun res!498300 () Bool)

(assert (=> b!740783 (=> (not res!498300) (not e!414141))))

(assert (=> b!740783 (= res!498300 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19822 a!3186) j!159) mask!3328) (select (arr!19822 a!3186) j!159) a!3186 mask!3328) lt!329140))))

(assert (=> b!740783 (= lt!329140 (Intermediate!7429 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740784 () Bool)

(declare-fun Unit!25337 () Unit!25334)

(assert (=> b!740784 (= e!414145 Unit!25337)))

(declare-fun lt!329138 () SeekEntryResult!7429)

(assert (=> b!740784 (= lt!329138 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19822 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740784 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329150 resIntermediateIndex!5 (select (arr!19822 a!3186) j!159) a!3186 mask!3328) lt!329143)))

(declare-fun b!740785 () Bool)

(declare-fun e!414144 () Bool)

(assert (=> b!740785 (= e!414144 e!414149)))

(declare-fun res!498307 () Bool)

(assert (=> b!740785 (=> res!498307 e!414149)))

(assert (=> b!740785 (= res!498307 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!740785 (= (seekEntryOrOpen!0 lt!329139 lt!329148 mask!3328) lt!329143)))

(declare-fun lt!329141 () Unit!25334)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41424 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25334)

(assert (=> b!740785 (= lt!329141 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k0!2102 j!159 lt!329150 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun res!498294 () Bool)

(assert (=> start!65298 (=> (not res!498294) (not e!414151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65298 (= res!498294 (validMask!0 mask!3328))))

(assert (=> start!65298 e!414151))

(assert (=> start!65298 true))

(declare-fun array_inv!15596 (array!41424) Bool)

(assert (=> start!65298 (array_inv!15596 a!3186)))

(declare-fun b!740786 () Bool)

(assert (=> b!740786 (= e!414148 e!414144)))

(declare-fun res!498308 () Bool)

(assert (=> b!740786 (=> res!498308 e!414144)))

(assert (=> b!740786 (= res!498308 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!329150 #b00000000000000000000000000000000) (bvsge lt!329150 (size!20243 a!3186))))))

(declare-fun lt!329137 () Unit!25334)

(assert (=> b!740786 (= lt!329137 e!414145)))

(declare-fun c!81619 () Bool)

(declare-fun lt!329144 () Bool)

(assert (=> b!740786 (= c!81619 lt!329144)))

(assert (=> b!740786 (= lt!329144 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740786 (= lt!329150 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740787 () Bool)

(declare-fun res!498298 () Bool)

(assert (=> b!740787 (=> (not res!498298) (not e!414151))))

(declare-fun arrayContainsKey!0 (array!41424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740787 (= res!498298 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740788 () Bool)

(declare-fun res!498306 () Bool)

(assert (=> b!740788 (=> (not res!498306) (not e!414141))))

(assert (=> b!740788 (= res!498306 e!414150)))

(declare-fun c!81621 () Bool)

(assert (=> b!740788 (= c!81621 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740789 () Bool)

(declare-fun res!498301 () Bool)

(assert (=> b!740789 (=> res!498301 e!414144)))

(assert (=> b!740789 (= res!498301 (not (= lt!329145 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329150 lt!329139 lt!329148 mask!3328))))))

(declare-fun b!740790 () Bool)

(declare-fun res!498305 () Bool)

(assert (=> b!740790 (=> (not res!498305) (not e!414146))))

(assert (=> b!740790 (= res!498305 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20243 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20243 a!3186))))))

(declare-fun b!740791 () Bool)

(declare-fun res!498299 () Bool)

(assert (=> b!740791 (=> res!498299 e!414144)))

(assert (=> b!740791 (= res!498299 e!414142)))

(declare-fun c!81620 () Bool)

(assert (=> b!740791 (= c!81620 lt!329144)))

(declare-fun b!740792 () Bool)

(declare-fun res!498291 () Bool)

(assert (=> b!740792 (=> (not res!498291) (not e!414146))))

(assert (=> b!740792 (= res!498291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65298 res!498294) b!740780))

(assert (= (and b!740780 res!498309) b!740775))

(assert (= (and b!740775 res!498292) b!740776))

(assert (= (and b!740776 res!498293) b!740787))

(assert (= (and b!740787 res!498298) b!740774))

(assert (= (and b!740774 res!498302) b!740792))

(assert (= (and b!740792 res!498291) b!740777))

(assert (= (and b!740777 res!498296) b!740790))

(assert (= (and b!740790 res!498305) b!740783))

(assert (= (and b!740783 res!498300) b!740778))

(assert (= (and b!740778 res!498295) b!740788))

(assert (= (and b!740788 c!81621) b!740769))

(assert (= (and b!740788 (not c!81621)) b!740770))

(assert (= (and b!740788 res!498306) b!740781))

(assert (= (and b!740781 res!498303) b!740772))

(assert (= (and b!740772 res!498297) b!740779))

(assert (= (and b!740779 res!498290) b!740773))

(assert (= (and b!740772 (not res!498304)) b!740786))

(assert (= (and b!740786 c!81619) b!740768))

(assert (= (and b!740786 (not c!81619)) b!740784))

(assert (= (and b!740786 (not res!498308)) b!740791))

(assert (= (and b!740791 c!81620) b!740767))

(assert (= (and b!740791 (not c!81620)) b!740771))

(assert (= (and b!740791 (not res!498299)) b!740789))

(assert (= (and b!740789 (not res!498301)) b!740785))

(assert (= (and b!740785 (not res!498307)) b!740782))

(declare-fun m!691897 () Bool)

(assert (=> b!740785 m!691897))

(declare-fun m!691899 () Bool)

(assert (=> b!740785 m!691899))

(declare-fun m!691901 () Bool)

(assert (=> b!740774 m!691901))

(declare-fun m!691903 () Bool)

(assert (=> b!740781 m!691903))

(declare-fun m!691905 () Bool)

(assert (=> b!740781 m!691905))

(declare-fun m!691907 () Bool)

(assert (=> b!740781 m!691907))

(declare-fun m!691909 () Bool)

(assert (=> b!740781 m!691909))

(declare-fun m!691911 () Bool)

(assert (=> b!740781 m!691911))

(assert (=> b!740781 m!691903))

(declare-fun m!691913 () Bool)

(assert (=> b!740782 m!691913))

(declare-fun m!691915 () Bool)

(assert (=> b!740779 m!691915))

(assert (=> b!740779 m!691915))

(declare-fun m!691917 () Bool)

(assert (=> b!740779 m!691917))

(declare-fun m!691919 () Bool)

(assert (=> b!740777 m!691919))

(assert (=> b!740767 m!691915))

(assert (=> b!740767 m!691915))

(declare-fun m!691921 () Bool)

(assert (=> b!740767 m!691921))

(declare-fun m!691923 () Bool)

(assert (=> b!740772 m!691923))

(declare-fun m!691925 () Bool)

(assert (=> b!740772 m!691925))

(declare-fun m!691927 () Bool)

(assert (=> b!740778 m!691927))

(assert (=> b!740770 m!691915))

(assert (=> b!740770 m!691915))

(declare-fun m!691929 () Bool)

(assert (=> b!740770 m!691929))

(assert (=> b!740773 m!691915))

(assert (=> b!740773 m!691915))

(declare-fun m!691931 () Bool)

(assert (=> b!740773 m!691931))

(declare-fun m!691933 () Bool)

(assert (=> start!65298 m!691933))

(declare-fun m!691935 () Bool)

(assert (=> start!65298 m!691935))

(assert (=> b!740768 m!691915))

(assert (=> b!740768 m!691915))

(assert (=> b!740768 m!691921))

(declare-fun m!691937 () Bool)

(assert (=> b!740789 m!691937))

(declare-fun m!691939 () Bool)

(assert (=> b!740776 m!691939))

(declare-fun m!691941 () Bool)

(assert (=> b!740787 m!691941))

(assert (=> b!740771 m!691915))

(assert (=> b!740771 m!691915))

(declare-fun m!691943 () Bool)

(assert (=> b!740771 m!691943))

(declare-fun m!691945 () Bool)

(assert (=> b!740792 m!691945))

(assert (=> b!740783 m!691915))

(assert (=> b!740783 m!691915))

(declare-fun m!691947 () Bool)

(assert (=> b!740783 m!691947))

(assert (=> b!740783 m!691947))

(assert (=> b!740783 m!691915))

(declare-fun m!691949 () Bool)

(assert (=> b!740783 m!691949))

(assert (=> b!740775 m!691915))

(assert (=> b!740775 m!691915))

(declare-fun m!691951 () Bool)

(assert (=> b!740775 m!691951))

(assert (=> b!740769 m!691915))

(assert (=> b!740769 m!691915))

(declare-fun m!691953 () Bool)

(assert (=> b!740769 m!691953))

(assert (=> b!740784 m!691915))

(assert (=> b!740784 m!691915))

(assert (=> b!740784 m!691929))

(assert (=> b!740784 m!691915))

(assert (=> b!740784 m!691943))

(declare-fun m!691955 () Bool)

(assert (=> b!740786 m!691955))

(check-sat (not b!740792) (not b!740769) (not b!740767) (not b!740776) (not b!740786) (not b!740785) (not b!740771) (not b!740773) (not b!740783) (not b!740772) (not start!65298) (not b!740784) (not b!740787) (not b!740770) (not b!740774) (not b!740768) (not b!740777) (not b!740789) (not b!740782) (not b!740781) (not b!740779) (not b!740775))
(check-sat)
