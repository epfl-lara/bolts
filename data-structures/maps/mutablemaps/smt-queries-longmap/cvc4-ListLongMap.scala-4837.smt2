; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66588 () Bool)

(assert start!66588)

(declare-datatypes ((array!42251 0))(
  ( (array!42252 (arr!20225 (Array (_ BitVec 32) (_ BitVec 64))) (size!20646 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42251)

(declare-fun b!766989 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!427134 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7832 0))(
  ( (MissingZero!7832 (index!33695 (_ BitVec 32))) (Found!7832 (index!33696 (_ BitVec 32))) (Intermediate!7832 (undefined!8644 Bool) (index!33697 (_ BitVec 32)) (x!64635 (_ BitVec 32))) (Undefined!7832) (MissingVacant!7832 (index!33698 (_ BitVec 32))) )
))
(declare-fun lt!341198 () SeekEntryResult!7832)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42251 (_ BitVec 32)) SeekEntryResult!7832)

(assert (=> b!766989 (= e!427134 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20225 a!3186) j!159) a!3186 mask!3328) lt!341198))))

(declare-fun b!766990 () Bool)

(declare-fun res!518958 () Bool)

(declare-fun e!427140 () Bool)

(assert (=> b!766990 (=> (not res!518958) (not e!427140))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766990 (= res!518958 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!766991 () Bool)

(declare-fun e!427135 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!341201 () SeekEntryResult!7832)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42251 (_ BitVec 32)) SeekEntryResult!7832)

(assert (=> b!766991 (= e!427135 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20225 a!3186) j!159) a!3186 mask!3328) lt!341201))))

(declare-fun b!766992 () Bool)

(declare-fun res!518964 () Bool)

(declare-fun e!427138 () Bool)

(assert (=> b!766992 (=> (not res!518964) (not e!427138))))

(assert (=> b!766992 (= res!518964 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20646 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20646 a!3186))))))

(declare-fun b!766993 () Bool)

(declare-fun e!427139 () Bool)

(declare-fun e!427141 () Bool)

(assert (=> b!766993 (= e!427139 (not e!427141))))

(declare-fun res!518952 () Bool)

(assert (=> b!766993 (=> res!518952 e!427141)))

(declare-fun lt!341206 () SeekEntryResult!7832)

(assert (=> b!766993 (= res!518952 (or (not (is-Intermediate!7832 lt!341206)) (bvsge x!1131 (x!64635 lt!341206))))))

(declare-fun e!427136 () Bool)

(assert (=> b!766993 e!427136))

(declare-fun res!518961 () Bool)

(assert (=> b!766993 (=> (not res!518961) (not e!427136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42251 (_ BitVec 32)) Bool)

(assert (=> b!766993 (= res!518961 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26390 0))(
  ( (Unit!26391) )
))
(declare-fun lt!341204 () Unit!26390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42251 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26390)

(assert (=> b!766993 (= lt!341204 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!518963 () Bool)

(assert (=> start!66588 (=> (not res!518963) (not e!427140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66588 (= res!518963 (validMask!0 mask!3328))))

(assert (=> start!66588 e!427140))

(assert (=> start!66588 true))

(declare-fun array_inv!15999 (array!42251) Bool)

(assert (=> start!66588 (array_inv!15999 a!3186)))

(declare-fun b!766994 () Bool)

(assert (=> b!766994 (= e!427141 true)))

(declare-fun lt!341202 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766994 (= lt!341202 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766995 () Bool)

(declare-fun e!427137 () Bool)

(assert (=> b!766995 (= e!427138 e!427137)))

(declare-fun res!518955 () Bool)

(assert (=> b!766995 (=> (not res!518955) (not e!427137))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766995 (= res!518955 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20225 a!3186) j!159) mask!3328) (select (arr!20225 a!3186) j!159) a!3186 mask!3328) lt!341198))))

(assert (=> b!766995 (= lt!341198 (Intermediate!7832 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766996 () Bool)

(assert (=> b!766996 (= e!427134 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20225 a!3186) j!159) a!3186 mask!3328) (Found!7832 j!159)))))

(declare-fun b!766997 () Bool)

(assert (=> b!766997 (= e!427137 e!427139)))

(declare-fun res!518959 () Bool)

(assert (=> b!766997 (=> (not res!518959) (not e!427139))))

(declare-fun lt!341203 () SeekEntryResult!7832)

(assert (=> b!766997 (= res!518959 (= lt!341203 lt!341206))))

(declare-fun lt!341199 () (_ BitVec 64))

(declare-fun lt!341200 () array!42251)

(assert (=> b!766997 (= lt!341206 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341199 lt!341200 mask!3328))))

(assert (=> b!766997 (= lt!341203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341199 mask!3328) lt!341199 lt!341200 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766997 (= lt!341199 (select (store (arr!20225 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!766997 (= lt!341200 (array!42252 (store (arr!20225 a!3186) i!1173 k!2102) (size!20646 a!3186)))))

(declare-fun b!766998 () Bool)

(declare-fun res!518962 () Bool)

(assert (=> b!766998 (=> (not res!518962) (not e!427140))))

(declare-fun arrayContainsKey!0 (array!42251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766998 (= res!518962 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766999 () Bool)

(declare-fun res!518957 () Bool)

(assert (=> b!766999 (=> (not res!518957) (not e!427140))))

(assert (=> b!766999 (= res!518957 (validKeyInArray!0 (select (arr!20225 a!3186) j!159)))))

(declare-fun b!767000 () Bool)

(declare-fun res!518951 () Bool)

(assert (=> b!767000 (=> (not res!518951) (not e!427138))))

(declare-datatypes ((List!14280 0))(
  ( (Nil!14277) (Cons!14276 (h!15369 (_ BitVec 64)) (t!20603 List!14280)) )
))
(declare-fun arrayNoDuplicates!0 (array!42251 (_ BitVec 32) List!14280) Bool)

(assert (=> b!767000 (= res!518951 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14277))))

(declare-fun b!767001 () Bool)

(assert (=> b!767001 (= e!427136 e!427135)))

(declare-fun res!518954 () Bool)

(assert (=> b!767001 (=> (not res!518954) (not e!427135))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42251 (_ BitVec 32)) SeekEntryResult!7832)

(assert (=> b!767001 (= res!518954 (= (seekEntryOrOpen!0 (select (arr!20225 a!3186) j!159) a!3186 mask!3328) lt!341201))))

(assert (=> b!767001 (= lt!341201 (Found!7832 j!159))))

(declare-fun b!767002 () Bool)

(assert (=> b!767002 (= e!427140 e!427138)))

(declare-fun res!518949 () Bool)

(assert (=> b!767002 (=> (not res!518949) (not e!427138))))

(declare-fun lt!341205 () SeekEntryResult!7832)

(assert (=> b!767002 (= res!518949 (or (= lt!341205 (MissingZero!7832 i!1173)) (= lt!341205 (MissingVacant!7832 i!1173))))))

(assert (=> b!767002 (= lt!341205 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!767003 () Bool)

(declare-fun res!518956 () Bool)

(assert (=> b!767003 (=> (not res!518956) (not e!427140))))

(assert (=> b!767003 (= res!518956 (and (= (size!20646 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20646 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20646 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767004 () Bool)

(declare-fun res!518953 () Bool)

(assert (=> b!767004 (=> (not res!518953) (not e!427137))))

(assert (=> b!767004 (= res!518953 e!427134)))

(declare-fun c!84411 () Bool)

(assert (=> b!767004 (= c!84411 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!767005 () Bool)

(declare-fun res!518960 () Bool)

(assert (=> b!767005 (=> (not res!518960) (not e!427137))))

(assert (=> b!767005 (= res!518960 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20225 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767006 () Bool)

(declare-fun res!518950 () Bool)

(assert (=> b!767006 (=> (not res!518950) (not e!427138))))

(assert (=> b!767006 (= res!518950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66588 res!518963) b!767003))

(assert (= (and b!767003 res!518956) b!766999))

(assert (= (and b!766999 res!518957) b!766990))

(assert (= (and b!766990 res!518958) b!766998))

(assert (= (and b!766998 res!518962) b!767002))

(assert (= (and b!767002 res!518949) b!767006))

(assert (= (and b!767006 res!518950) b!767000))

(assert (= (and b!767000 res!518951) b!766992))

(assert (= (and b!766992 res!518964) b!766995))

(assert (= (and b!766995 res!518955) b!767005))

(assert (= (and b!767005 res!518960) b!767004))

(assert (= (and b!767004 c!84411) b!766989))

(assert (= (and b!767004 (not c!84411)) b!766996))

(assert (= (and b!767004 res!518953) b!766997))

(assert (= (and b!766997 res!518959) b!766993))

(assert (= (and b!766993 res!518961) b!767001))

(assert (= (and b!767001 res!518954) b!766991))

(assert (= (and b!766993 (not res!518952)) b!766994))

(declare-fun m!712889 () Bool)

(assert (=> b!766997 m!712889))

(declare-fun m!712891 () Bool)

(assert (=> b!766997 m!712891))

(declare-fun m!712893 () Bool)

(assert (=> b!766997 m!712893))

(assert (=> b!766997 m!712891))

(declare-fun m!712895 () Bool)

(assert (=> b!766997 m!712895))

(declare-fun m!712897 () Bool)

(assert (=> b!766997 m!712897))

(declare-fun m!712899 () Bool)

(assert (=> b!767001 m!712899))

(assert (=> b!767001 m!712899))

(declare-fun m!712901 () Bool)

(assert (=> b!767001 m!712901))

(assert (=> b!766995 m!712899))

(assert (=> b!766995 m!712899))

(declare-fun m!712903 () Bool)

(assert (=> b!766995 m!712903))

(assert (=> b!766995 m!712903))

(assert (=> b!766995 m!712899))

(declare-fun m!712905 () Bool)

(assert (=> b!766995 m!712905))

(declare-fun m!712907 () Bool)

(assert (=> b!767002 m!712907))

(declare-fun m!712909 () Bool)

(assert (=> b!767006 m!712909))

(assert (=> b!766999 m!712899))

(assert (=> b!766999 m!712899))

(declare-fun m!712911 () Bool)

(assert (=> b!766999 m!712911))

(assert (=> b!766996 m!712899))

(assert (=> b!766996 m!712899))

(declare-fun m!712913 () Bool)

(assert (=> b!766996 m!712913))

(declare-fun m!712915 () Bool)

(assert (=> b!766990 m!712915))

(declare-fun m!712917 () Bool)

(assert (=> b!767000 m!712917))

(declare-fun m!712919 () Bool)

(assert (=> b!766993 m!712919))

(declare-fun m!712921 () Bool)

(assert (=> b!766993 m!712921))

(declare-fun m!712923 () Bool)

(assert (=> b!766994 m!712923))

(declare-fun m!712925 () Bool)

(assert (=> start!66588 m!712925))

(declare-fun m!712927 () Bool)

(assert (=> start!66588 m!712927))

(declare-fun m!712929 () Bool)

(assert (=> b!767005 m!712929))

(assert (=> b!766991 m!712899))

(assert (=> b!766991 m!712899))

(declare-fun m!712931 () Bool)

(assert (=> b!766991 m!712931))

(declare-fun m!712933 () Bool)

(assert (=> b!766998 m!712933))

(assert (=> b!766989 m!712899))

(assert (=> b!766989 m!712899))

(declare-fun m!712935 () Bool)

(assert (=> b!766989 m!712935))

(push 1)

