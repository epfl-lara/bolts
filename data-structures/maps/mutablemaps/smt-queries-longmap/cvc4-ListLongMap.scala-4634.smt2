; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64526 () Bool)

(assert start!64526)

(declare-fun b!725908 () Bool)

(declare-fun res!487087 () Bool)

(declare-fun e!406497 () Bool)

(assert (=> b!725908 (=> (not res!487087) (not e!406497))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725908 (= res!487087 (validKeyInArray!0 k!2102))))

(declare-fun b!725909 () Bool)

(declare-fun e!406495 () Bool)

(declare-fun e!406492 () Bool)

(assert (=> b!725909 (= e!406495 e!406492)))

(declare-fun res!487078 () Bool)

(assert (=> b!725909 (=> (not res!487078) (not e!406492))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!321514 () (_ BitVec 64))

(declare-datatypes ((array!40997 0))(
  ( (array!40998 (arr!19616 (Array (_ BitVec 32) (_ BitVec 64))) (size!20037 (_ BitVec 32))) )
))
(declare-fun lt!321516 () array!40997)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7223 0))(
  ( (MissingZero!7223 (index!31259 (_ BitVec 32))) (Found!7223 (index!31260 (_ BitVec 32))) (Intermediate!7223 (undefined!8035 Bool) (index!31261 (_ BitVec 32)) (x!62274 (_ BitVec 32))) (Undefined!7223) (MissingVacant!7223 (index!31262 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40997 (_ BitVec 32)) SeekEntryResult!7223)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725909 (= res!487078 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321514 mask!3328) lt!321514 lt!321516 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321514 lt!321516 mask!3328)))))

(declare-fun a!3186 () array!40997)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725909 (= lt!321514 (select (store (arr!19616 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725909 (= lt!321516 (array!40998 (store (arr!19616 a!3186) i!1173 k!2102) (size!20037 a!3186)))))

(declare-fun b!725910 () Bool)

(declare-fun res!487080 () Bool)

(declare-fun e!406493 () Bool)

(assert (=> b!725910 (=> (not res!487080) (not e!406493))))

(declare-datatypes ((List!13671 0))(
  ( (Nil!13668) (Cons!13667 (h!14724 (_ BitVec 64)) (t!19994 List!13671)) )
))
(declare-fun arrayNoDuplicates!0 (array!40997 (_ BitVec 32) List!13671) Bool)

(assert (=> b!725910 (= res!487080 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13668))))

(declare-fun b!725911 () Bool)

(declare-fun res!487085 () Bool)

(assert (=> b!725911 (=> (not res!487085) (not e!406497))))

(declare-fun arrayContainsKey!0 (array!40997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725911 (= res!487085 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725912 () Bool)

(declare-fun e!406494 () Bool)

(declare-fun e!406491 () Bool)

(assert (=> b!725912 (= e!406494 e!406491)))

(declare-fun res!487086 () Bool)

(assert (=> b!725912 (=> (not res!487086) (not e!406491))))

(declare-fun lt!321518 () SeekEntryResult!7223)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40997 (_ BitVec 32)) SeekEntryResult!7223)

(assert (=> b!725912 (= res!487086 (= (seekEntryOrOpen!0 (select (arr!19616 a!3186) j!159) a!3186 mask!3328) lt!321518))))

(assert (=> b!725912 (= lt!321518 (Found!7223 j!159))))

(declare-fun b!725913 () Bool)

(declare-fun res!487091 () Bool)

(assert (=> b!725913 (=> (not res!487091) (not e!406495))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!725913 (= res!487091 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19616 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!725914 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40997 (_ BitVec 32)) SeekEntryResult!7223)

(assert (=> b!725914 (= e!406491 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19616 a!3186) j!159) a!3186 mask!3328) lt!321518))))

(declare-fun b!725915 () Bool)

(declare-fun e!406490 () Bool)

(assert (=> b!725915 (= e!406492 (not e!406490))))

(declare-fun res!487083 () Bool)

(assert (=> b!725915 (=> res!487083 e!406490)))

(assert (=> b!725915 (= res!487083 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!725915 e!406494))

(declare-fun res!487088 () Bool)

(assert (=> b!725915 (=> (not res!487088) (not e!406494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40997 (_ BitVec 32)) Bool)

(assert (=> b!725915 (= res!487088 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24764 0))(
  ( (Unit!24765) )
))
(declare-fun lt!321517 () Unit!24764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24764)

(assert (=> b!725915 (= lt!321517 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725916 () Bool)

(assert (=> b!725916 (= e!406497 e!406493)))

(declare-fun res!487081 () Bool)

(assert (=> b!725916 (=> (not res!487081) (not e!406493))))

(declare-fun lt!321513 () SeekEntryResult!7223)

(assert (=> b!725916 (= res!487081 (or (= lt!321513 (MissingZero!7223 i!1173)) (= lt!321513 (MissingVacant!7223 i!1173))))))

(assert (=> b!725916 (= lt!321513 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725917 () Bool)

(assert (=> b!725917 (= e!406490 (validKeyInArray!0 lt!321514))))

(declare-fun e!406489 () Bool)

(declare-fun b!725918 () Bool)

(assert (=> b!725918 (= e!406489 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19616 a!3186) j!159) a!3186 mask!3328) (Found!7223 j!159)))))

(declare-fun b!725919 () Bool)

(declare-fun res!487079 () Bool)

(assert (=> b!725919 (=> (not res!487079) (not e!406497))))

(assert (=> b!725919 (= res!487079 (validKeyInArray!0 (select (arr!19616 a!3186) j!159)))))

(declare-fun b!725920 () Bool)

(declare-fun res!487082 () Bool)

(assert (=> b!725920 (=> (not res!487082) (not e!406493))))

(assert (=> b!725920 (= res!487082 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20037 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20037 a!3186))))))

(declare-fun res!487089 () Bool)

(assert (=> start!64526 (=> (not res!487089) (not e!406497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64526 (= res!487089 (validMask!0 mask!3328))))

(assert (=> start!64526 e!406497))

(assert (=> start!64526 true))

(declare-fun array_inv!15390 (array!40997) Bool)

(assert (=> start!64526 (array_inv!15390 a!3186)))

(declare-fun b!725907 () Bool)

(declare-fun lt!321515 () SeekEntryResult!7223)

(assert (=> b!725907 (= e!406489 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19616 a!3186) j!159) a!3186 mask!3328) lt!321515))))

(declare-fun b!725921 () Bool)

(declare-fun res!487084 () Bool)

(assert (=> b!725921 (=> (not res!487084) (not e!406493))))

(assert (=> b!725921 (= res!487084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725922 () Bool)

(declare-fun res!487092 () Bool)

(assert (=> b!725922 (=> (not res!487092) (not e!406495))))

(assert (=> b!725922 (= res!487092 e!406489)))

(declare-fun c!79788 () Bool)

(assert (=> b!725922 (= c!79788 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725923 () Bool)

(assert (=> b!725923 (= e!406493 e!406495)))

(declare-fun res!487077 () Bool)

(assert (=> b!725923 (=> (not res!487077) (not e!406495))))

(assert (=> b!725923 (= res!487077 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19616 a!3186) j!159) mask!3328) (select (arr!19616 a!3186) j!159) a!3186 mask!3328) lt!321515))))

(assert (=> b!725923 (= lt!321515 (Intermediate!7223 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725924 () Bool)

(declare-fun res!487090 () Bool)

(assert (=> b!725924 (=> (not res!487090) (not e!406497))))

(assert (=> b!725924 (= res!487090 (and (= (size!20037 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20037 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20037 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64526 res!487089) b!725924))

(assert (= (and b!725924 res!487090) b!725919))

(assert (= (and b!725919 res!487079) b!725908))

(assert (= (and b!725908 res!487087) b!725911))

(assert (= (and b!725911 res!487085) b!725916))

(assert (= (and b!725916 res!487081) b!725921))

(assert (= (and b!725921 res!487084) b!725910))

(assert (= (and b!725910 res!487080) b!725920))

(assert (= (and b!725920 res!487082) b!725923))

(assert (= (and b!725923 res!487077) b!725913))

(assert (= (and b!725913 res!487091) b!725922))

(assert (= (and b!725922 c!79788) b!725907))

(assert (= (and b!725922 (not c!79788)) b!725918))

(assert (= (and b!725922 res!487092) b!725909))

(assert (= (and b!725909 res!487078) b!725915))

(assert (= (and b!725915 res!487088) b!725912))

(assert (= (and b!725912 res!487086) b!725914))

(assert (= (and b!725915 (not res!487083)) b!725917))

(declare-fun m!680107 () Bool)

(assert (=> b!725910 m!680107))

(declare-fun m!680109 () Bool)

(assert (=> b!725912 m!680109))

(assert (=> b!725912 m!680109))

(declare-fun m!680111 () Bool)

(assert (=> b!725912 m!680111))

(declare-fun m!680113 () Bool)

(assert (=> b!725916 m!680113))

(assert (=> b!725918 m!680109))

(assert (=> b!725918 m!680109))

(declare-fun m!680115 () Bool)

(assert (=> b!725918 m!680115))

(assert (=> b!725914 m!680109))

(assert (=> b!725914 m!680109))

(declare-fun m!680117 () Bool)

(assert (=> b!725914 m!680117))

(assert (=> b!725923 m!680109))

(assert (=> b!725923 m!680109))

(declare-fun m!680119 () Bool)

(assert (=> b!725923 m!680119))

(assert (=> b!725923 m!680119))

(assert (=> b!725923 m!680109))

(declare-fun m!680121 () Bool)

(assert (=> b!725923 m!680121))

(declare-fun m!680123 () Bool)

(assert (=> b!725908 m!680123))

(assert (=> b!725907 m!680109))

(assert (=> b!725907 m!680109))

(declare-fun m!680125 () Bool)

(assert (=> b!725907 m!680125))

(declare-fun m!680127 () Bool)

(assert (=> b!725913 m!680127))

(declare-fun m!680129 () Bool)

(assert (=> b!725921 m!680129))

(declare-fun m!680131 () Bool)

(assert (=> b!725911 m!680131))

(declare-fun m!680133 () Bool)

(assert (=> start!64526 m!680133))

(declare-fun m!680135 () Bool)

(assert (=> start!64526 m!680135))

(assert (=> b!725919 m!680109))

(assert (=> b!725919 m!680109))

(declare-fun m!680137 () Bool)

(assert (=> b!725919 m!680137))

(declare-fun m!680139 () Bool)

(assert (=> b!725909 m!680139))

(declare-fun m!680141 () Bool)

(assert (=> b!725909 m!680141))

(declare-fun m!680143 () Bool)

(assert (=> b!725909 m!680143))

(assert (=> b!725909 m!680141))

(declare-fun m!680145 () Bool)

(assert (=> b!725909 m!680145))

(declare-fun m!680147 () Bool)

(assert (=> b!725909 m!680147))

(declare-fun m!680149 () Bool)

(assert (=> b!725915 m!680149))

(declare-fun m!680151 () Bool)

(assert (=> b!725915 m!680151))

(declare-fun m!680153 () Bool)

(assert (=> b!725917 m!680153))

(push 1)

