; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67580 () Bool)

(assert start!67580)

(declare-fun res!529161 () Bool)

(declare-fun e!434853 () Bool)

(assert (=> start!67580 (=> (not res!529161) (not e!434853))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67580 (= res!529161 (validMask!0 mask!3328))))

(assert (=> start!67580 e!434853))

(assert (=> start!67580 true))

(declare-datatypes ((array!42638 0))(
  ( (array!42639 (arr!20405 (Array (_ BitVec 32) (_ BitVec 64))) (size!20826 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42638)

(declare-fun array_inv!16179 (array!42638) Bool)

(assert (=> start!67580 (array_inv!16179 a!3186)))

(declare-fun b!781906 () Bool)

(declare-fun res!529148 () Bool)

(declare-fun e!434849 () Bool)

(assert (=> b!781906 (=> (not res!529148) (not e!434849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42638 (_ BitVec 32)) Bool)

(assert (=> b!781906 (= res!529148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!781907 () Bool)

(declare-fun e!434846 () Bool)

(declare-fun e!434851 () Bool)

(assert (=> b!781907 (= e!434846 (not e!434851))))

(declare-fun res!529155 () Bool)

(assert (=> b!781907 (=> res!529155 e!434851)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8012 0))(
  ( (MissingZero!8012 (index!34415 (_ BitVec 32))) (Found!8012 (index!34416 (_ BitVec 32))) (Intermediate!8012 (undefined!8824 Bool) (index!34417 (_ BitVec 32)) (x!65392 (_ BitVec 32))) (Undefined!8012) (MissingVacant!8012 (index!34418 (_ BitVec 32))) )
))
(declare-fun lt!348478 () SeekEntryResult!8012)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!781907 (= res!529155 (or (not (is-Intermediate!8012 lt!348478)) (bvslt x!1131 (x!65392 lt!348478)) (not (= x!1131 (x!65392 lt!348478))) (not (= index!1321 (index!34417 lt!348478)))))))

(declare-fun e!434847 () Bool)

(assert (=> b!781907 e!434847))

(declare-fun res!529160 () Bool)

(assert (=> b!781907 (=> (not res!529160) (not e!434847))))

(declare-fun lt!348482 () SeekEntryResult!8012)

(declare-fun lt!348483 () SeekEntryResult!8012)

(assert (=> b!781907 (= res!529160 (= lt!348482 lt!348483))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!781907 (= lt!348483 (Found!8012 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42638 (_ BitVec 32)) SeekEntryResult!8012)

(assert (=> b!781907 (= lt!348482 (seekEntryOrOpen!0 (select (arr!20405 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!781907 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26958 0))(
  ( (Unit!26959) )
))
(declare-fun lt!348479 () Unit!26958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26958)

(assert (=> b!781907 (= lt!348479 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781908 () Bool)

(declare-fun e!434854 () Unit!26958)

(declare-fun Unit!26960 () Unit!26958)

(assert (=> b!781908 (= e!434854 Unit!26960)))

(declare-fun b!781909 () Bool)

(declare-fun res!529153 () Bool)

(assert (=> b!781909 (=> res!529153 e!434851)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42638 (_ BitVec 32)) SeekEntryResult!8012)

(assert (=> b!781909 (= res!529153 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20405 a!3186) j!159) a!3186 mask!3328) lt!348483)))))

(declare-fun b!781910 () Bool)

(declare-fun Unit!26961 () Unit!26958)

(assert (=> b!781910 (= e!434854 Unit!26961)))

(assert (=> b!781910 false))

(declare-fun b!781911 () Bool)

(assert (=> b!781911 (= e!434851 true)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!781911 (= (select (store (arr!20405 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348476 () Unit!26958)

(assert (=> b!781911 (= lt!348476 e!434854)))

(declare-fun c!86787 () Bool)

(assert (=> b!781911 (= c!86787 (= (select (store (arr!20405 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781912 () Bool)

(declare-fun res!529151 () Bool)

(assert (=> b!781912 (=> (not res!529151) (not e!434853))))

(declare-fun arrayContainsKey!0 (array!42638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781912 (= res!529151 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!434850 () Bool)

(declare-fun lt!348481 () SeekEntryResult!8012)

(declare-fun b!781913 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42638 (_ BitVec 32)) SeekEntryResult!8012)

(assert (=> b!781913 (= e!434850 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20405 a!3186) j!159) a!3186 mask!3328) lt!348481))))

(declare-fun b!781914 () Bool)

(declare-fun res!529158 () Bool)

(assert (=> b!781914 (=> (not res!529158) (not e!434853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781914 (= res!529158 (validKeyInArray!0 k!2102))))

(declare-fun b!781915 () Bool)

(declare-fun res!529156 () Bool)

(assert (=> b!781915 (=> (not res!529156) (not e!434853))))

(assert (=> b!781915 (= res!529156 (and (= (size!20826 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20826 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20826 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781916 () Bool)

(declare-fun res!529157 () Bool)

(assert (=> b!781916 (=> res!529157 e!434851)))

(declare-fun lt!348480 () (_ BitVec 64))

(assert (=> b!781916 (= res!529157 (= (select (store (arr!20405 a!3186) i!1173 k!2102) index!1321) lt!348480))))

(declare-fun b!781917 () Bool)

(declare-fun res!529159 () Bool)

(assert (=> b!781917 (=> (not res!529159) (not e!434853))))

(assert (=> b!781917 (= res!529159 (validKeyInArray!0 (select (arr!20405 a!3186) j!159)))))

(declare-fun b!781918 () Bool)

(declare-fun e!434848 () Bool)

(assert (=> b!781918 (= e!434849 e!434848)))

(declare-fun res!529152 () Bool)

(assert (=> b!781918 (=> (not res!529152) (not e!434848))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781918 (= res!529152 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20405 a!3186) j!159) mask!3328) (select (arr!20405 a!3186) j!159) a!3186 mask!3328) lt!348481))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781918 (= lt!348481 (Intermediate!8012 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781919 () Bool)

(declare-fun res!529149 () Bool)

(assert (=> b!781919 (=> (not res!529149) (not e!434848))))

(assert (=> b!781919 (= res!529149 e!434850)))

(declare-fun c!86786 () Bool)

(assert (=> b!781919 (= c!86786 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781920 () Bool)

(assert (=> b!781920 (= e!434848 e!434846)))

(declare-fun res!529154 () Bool)

(assert (=> b!781920 (=> (not res!529154) (not e!434846))))

(declare-fun lt!348477 () SeekEntryResult!8012)

(assert (=> b!781920 (= res!529154 (= lt!348477 lt!348478))))

(declare-fun lt!348475 () array!42638)

(assert (=> b!781920 (= lt!348478 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348480 lt!348475 mask!3328))))

(assert (=> b!781920 (= lt!348477 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348480 mask!3328) lt!348480 lt!348475 mask!3328))))

(assert (=> b!781920 (= lt!348480 (select (store (arr!20405 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781920 (= lt!348475 (array!42639 (store (arr!20405 a!3186) i!1173 k!2102) (size!20826 a!3186)))))

(declare-fun b!781921 () Bool)

(assert (=> b!781921 (= e!434847 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20405 a!3186) j!159) a!3186 mask!3328) lt!348483))))

(declare-fun b!781922 () Bool)

(declare-fun res!529147 () Bool)

(assert (=> b!781922 (=> (not res!529147) (not e!434849))))

(assert (=> b!781922 (= res!529147 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20826 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20826 a!3186))))))

(declare-fun b!781923 () Bool)

(declare-fun res!529162 () Bool)

(assert (=> b!781923 (=> (not res!529162) (not e!434849))))

(declare-datatypes ((List!14460 0))(
  ( (Nil!14457) (Cons!14456 (h!15576 (_ BitVec 64)) (t!20783 List!14460)) )
))
(declare-fun arrayNoDuplicates!0 (array!42638 (_ BitVec 32) List!14460) Bool)

(assert (=> b!781923 (= res!529162 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14457))))

(declare-fun b!781924 () Bool)

(assert (=> b!781924 (= e!434853 e!434849)))

(declare-fun res!529150 () Bool)

(assert (=> b!781924 (=> (not res!529150) (not e!434849))))

(declare-fun lt!348484 () SeekEntryResult!8012)

(assert (=> b!781924 (= res!529150 (or (= lt!348484 (MissingZero!8012 i!1173)) (= lt!348484 (MissingVacant!8012 i!1173))))))

(assert (=> b!781924 (= lt!348484 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!781925 () Bool)

(assert (=> b!781925 (= e!434850 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20405 a!3186) j!159) a!3186 mask!3328) (Found!8012 j!159)))))

(declare-fun b!781926 () Bool)

(declare-fun res!529146 () Bool)

(assert (=> b!781926 (=> (not res!529146) (not e!434848))))

(assert (=> b!781926 (= res!529146 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20405 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67580 res!529161) b!781915))

(assert (= (and b!781915 res!529156) b!781917))

(assert (= (and b!781917 res!529159) b!781914))

(assert (= (and b!781914 res!529158) b!781912))

(assert (= (and b!781912 res!529151) b!781924))

(assert (= (and b!781924 res!529150) b!781906))

(assert (= (and b!781906 res!529148) b!781923))

(assert (= (and b!781923 res!529162) b!781922))

(assert (= (and b!781922 res!529147) b!781918))

(assert (= (and b!781918 res!529152) b!781926))

(assert (= (and b!781926 res!529146) b!781919))

(assert (= (and b!781919 c!86786) b!781913))

(assert (= (and b!781919 (not c!86786)) b!781925))

(assert (= (and b!781919 res!529149) b!781920))

(assert (= (and b!781920 res!529154) b!781907))

(assert (= (and b!781907 res!529160) b!781921))

(assert (= (and b!781907 (not res!529155)) b!781909))

(assert (= (and b!781909 (not res!529153)) b!781916))

(assert (= (and b!781916 (not res!529157)) b!781911))

(assert (= (and b!781911 c!86787) b!781910))

(assert (= (and b!781911 (not c!86787)) b!781908))

(declare-fun m!724867 () Bool)

(assert (=> b!781912 m!724867))

(declare-fun m!724869 () Bool)

(assert (=> b!781918 m!724869))

(assert (=> b!781918 m!724869))

(declare-fun m!724871 () Bool)

(assert (=> b!781918 m!724871))

(assert (=> b!781918 m!724871))

(assert (=> b!781918 m!724869))

(declare-fun m!724873 () Bool)

(assert (=> b!781918 m!724873))

(declare-fun m!724875 () Bool)

(assert (=> start!67580 m!724875))

(declare-fun m!724877 () Bool)

(assert (=> start!67580 m!724877))

(declare-fun m!724879 () Bool)

(assert (=> b!781911 m!724879))

(declare-fun m!724881 () Bool)

(assert (=> b!781911 m!724881))

(assert (=> b!781920 m!724879))

(declare-fun m!724883 () Bool)

(assert (=> b!781920 m!724883))

(declare-fun m!724885 () Bool)

(assert (=> b!781920 m!724885))

(declare-fun m!724887 () Bool)

(assert (=> b!781920 m!724887))

(assert (=> b!781920 m!724887))

(declare-fun m!724889 () Bool)

(assert (=> b!781920 m!724889))

(assert (=> b!781921 m!724869))

(assert (=> b!781921 m!724869))

(declare-fun m!724891 () Bool)

(assert (=> b!781921 m!724891))

(assert (=> b!781913 m!724869))

(assert (=> b!781913 m!724869))

(declare-fun m!724893 () Bool)

(assert (=> b!781913 m!724893))

(assert (=> b!781917 m!724869))

(assert (=> b!781917 m!724869))

(declare-fun m!724895 () Bool)

(assert (=> b!781917 m!724895))

(assert (=> b!781907 m!724869))

(assert (=> b!781907 m!724869))

(declare-fun m!724897 () Bool)

(assert (=> b!781907 m!724897))

(declare-fun m!724899 () Bool)

(assert (=> b!781907 m!724899))

(declare-fun m!724901 () Bool)

(assert (=> b!781907 m!724901))

(declare-fun m!724903 () Bool)

(assert (=> b!781923 m!724903))

(declare-fun m!724905 () Bool)

(assert (=> b!781906 m!724905))

(declare-fun m!724907 () Bool)

(assert (=> b!781924 m!724907))

(declare-fun m!724909 () Bool)

(assert (=> b!781914 m!724909))

(assert (=> b!781925 m!724869))

(assert (=> b!781925 m!724869))

(declare-fun m!724911 () Bool)

(assert (=> b!781925 m!724911))

(declare-fun m!724913 () Bool)

(assert (=> b!781926 m!724913))

(assert (=> b!781916 m!724879))

(assert (=> b!781916 m!724881))

(assert (=> b!781909 m!724869))

(assert (=> b!781909 m!724869))

(assert (=> b!781909 m!724911))

(push 1)

