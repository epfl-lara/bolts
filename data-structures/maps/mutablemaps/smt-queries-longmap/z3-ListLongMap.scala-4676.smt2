; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65136 () Bool)

(assert start!65136)

(declare-fun e!411234 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41262 0))(
  ( (array!41263 (arr!19741 (Array (_ BitVec 32) (_ BitVec 64))) (size!20162 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41262)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!734918 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7348 0))(
  ( (MissingZero!7348 (index!31759 (_ BitVec 32))) (Found!7348 (index!31760 (_ BitVec 32))) (Intermediate!7348 (undefined!8160 Bool) (index!31761 (_ BitVec 32)) (x!62795 (_ BitVec 32))) (Undefined!7348) (MissingVacant!7348 (index!31762 (_ BitVec 32))) )
))
(declare-fun lt!325759 () SeekEntryResult!7348)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41262 (_ BitVec 32)) SeekEntryResult!7348)

(assert (=> b!734918 (= e!411234 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19741 a!3186) j!159) a!3186 mask!3328) lt!325759))))

(declare-fun b!734919 () Bool)

(declare-fun e!411231 () Bool)

(declare-fun e!411233 () Bool)

(assert (=> b!734919 (= e!411231 (not e!411233))))

(declare-fun res!493886 () Bool)

(assert (=> b!734919 (=> res!493886 e!411233)))

(declare-fun lt!325760 () SeekEntryResult!7348)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!734919 (= res!493886 (or (not ((_ is Intermediate!7348) lt!325760)) (bvsge x!1131 (x!62795 lt!325760))))))

(declare-fun e!411232 () Bool)

(assert (=> b!734919 e!411232))

(declare-fun res!493894 () Bool)

(assert (=> b!734919 (=> (not res!493894) (not e!411232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41262 (_ BitVec 32)) Bool)

(assert (=> b!734919 (= res!493894 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25014 0))(
  ( (Unit!25015) )
))
(declare-fun lt!325752 () Unit!25014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41262 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25014)

(assert (=> b!734919 (= lt!325752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!325758 () SeekEntryResult!7348)

(declare-fun b!734920 () Bool)

(declare-fun e!411235 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41262 (_ BitVec 32)) SeekEntryResult!7348)

(assert (=> b!734920 (= e!411235 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19741 a!3186) j!159) a!3186 mask!3328) lt!325758))))

(declare-fun b!734921 () Bool)

(declare-fun e!411237 () Bool)

(assert (=> b!734921 (= e!411237 e!411231)))

(declare-fun res!493899 () Bool)

(assert (=> b!734921 (=> (not res!493899) (not e!411231))))

(declare-fun lt!325756 () SeekEntryResult!7348)

(assert (=> b!734921 (= res!493899 (= lt!325756 lt!325760))))

(declare-fun lt!325754 () array!41262)

(declare-fun lt!325757 () (_ BitVec 64))

(assert (=> b!734921 (= lt!325760 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325757 lt!325754 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734921 (= lt!325756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325757 mask!3328) lt!325757 lt!325754 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!734921 (= lt!325757 (select (store (arr!19741 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!734921 (= lt!325754 (array!41263 (store (arr!19741 a!3186) i!1173 k0!2102) (size!20162 a!3186)))))

(declare-fun b!734922 () Bool)

(declare-fun e!411228 () Bool)

(assert (=> b!734922 (= e!411228 true)))

(declare-fun lt!325755 () SeekEntryResult!7348)

(assert (=> b!734922 (= lt!325755 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19741 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734923 () Bool)

(declare-fun e!411230 () Bool)

(declare-fun e!411236 () Bool)

(assert (=> b!734923 (= e!411230 e!411236)))

(declare-fun res!493893 () Bool)

(assert (=> b!734923 (=> (not res!493893) (not e!411236))))

(declare-fun lt!325753 () SeekEntryResult!7348)

(assert (=> b!734923 (= res!493893 (or (= lt!325753 (MissingZero!7348 i!1173)) (= lt!325753 (MissingVacant!7348 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41262 (_ BitVec 32)) SeekEntryResult!7348)

(assert (=> b!734923 (= lt!325753 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!734924 () Bool)

(declare-fun res!493895 () Bool)

(assert (=> b!734924 (=> (not res!493895) (not e!411237))))

(assert (=> b!734924 (= res!493895 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19741 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!493888 () Bool)

(assert (=> start!65136 (=> (not res!493888) (not e!411230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65136 (= res!493888 (validMask!0 mask!3328))))

(assert (=> start!65136 e!411230))

(assert (=> start!65136 true))

(declare-fun array_inv!15515 (array!41262) Bool)

(assert (=> start!65136 (array_inv!15515 a!3186)))

(declare-fun b!734925 () Bool)

(declare-fun res!493883 () Bool)

(assert (=> b!734925 (=> (not res!493883) (not e!411230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734925 (= res!493883 (validKeyInArray!0 k0!2102))))

(declare-fun b!734926 () Bool)

(assert (=> b!734926 (= e!411236 e!411237)))

(declare-fun res!493885 () Bool)

(assert (=> b!734926 (=> (not res!493885) (not e!411237))))

(assert (=> b!734926 (= res!493885 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19741 a!3186) j!159) mask!3328) (select (arr!19741 a!3186) j!159) a!3186 mask!3328) lt!325758))))

(assert (=> b!734926 (= lt!325758 (Intermediate!7348 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!734927 () Bool)

(declare-fun res!493897 () Bool)

(assert (=> b!734927 (=> (not res!493897) (not e!411230))))

(declare-fun arrayContainsKey!0 (array!41262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734927 (= res!493897 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734928 () Bool)

(declare-fun res!493889 () Bool)

(assert (=> b!734928 (=> (not res!493889) (not e!411236))))

(assert (=> b!734928 (= res!493889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!734929 () Bool)

(assert (=> b!734929 (= e!411233 e!411228)))

(declare-fun res!493891 () Bool)

(assert (=> b!734929 (=> res!493891 e!411228)))

(assert (=> b!734929 (= res!493891 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!325751 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734929 (= lt!325751 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!734930 () Bool)

(declare-fun res!493887 () Bool)

(assert (=> b!734930 (=> (not res!493887) (not e!411230))))

(assert (=> b!734930 (= res!493887 (validKeyInArray!0 (select (arr!19741 a!3186) j!159)))))

(declare-fun b!734931 () Bool)

(declare-fun res!493898 () Bool)

(assert (=> b!734931 (=> (not res!493898) (not e!411237))))

(assert (=> b!734931 (= res!493898 e!411235)))

(declare-fun c!80898 () Bool)

(assert (=> b!734931 (= c!80898 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734932 () Bool)

(declare-fun res!493890 () Bool)

(assert (=> b!734932 (=> (not res!493890) (not e!411236))))

(declare-datatypes ((List!13796 0))(
  ( (Nil!13793) (Cons!13792 (h!14864 (_ BitVec 64)) (t!20119 List!13796)) )
))
(declare-fun arrayNoDuplicates!0 (array!41262 (_ BitVec 32) List!13796) Bool)

(assert (=> b!734932 (= res!493890 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13793))))

(declare-fun b!734933 () Bool)

(declare-fun res!493896 () Bool)

(assert (=> b!734933 (=> (not res!493896) (not e!411230))))

(assert (=> b!734933 (= res!493896 (and (= (size!20162 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20162 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20162 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734934 () Bool)

(assert (=> b!734934 (= e!411232 e!411234)))

(declare-fun res!493892 () Bool)

(assert (=> b!734934 (=> (not res!493892) (not e!411234))))

(assert (=> b!734934 (= res!493892 (= (seekEntryOrOpen!0 (select (arr!19741 a!3186) j!159) a!3186 mask!3328) lt!325759))))

(assert (=> b!734934 (= lt!325759 (Found!7348 j!159))))

(declare-fun b!734935 () Bool)

(assert (=> b!734935 (= e!411235 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19741 a!3186) j!159) a!3186 mask!3328) (Found!7348 j!159)))))

(declare-fun b!734936 () Bool)

(declare-fun res!493884 () Bool)

(assert (=> b!734936 (=> (not res!493884) (not e!411236))))

(assert (=> b!734936 (= res!493884 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20162 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20162 a!3186))))))

(assert (= (and start!65136 res!493888) b!734933))

(assert (= (and b!734933 res!493896) b!734930))

(assert (= (and b!734930 res!493887) b!734925))

(assert (= (and b!734925 res!493883) b!734927))

(assert (= (and b!734927 res!493897) b!734923))

(assert (= (and b!734923 res!493893) b!734928))

(assert (= (and b!734928 res!493889) b!734932))

(assert (= (and b!734932 res!493890) b!734936))

(assert (= (and b!734936 res!493884) b!734926))

(assert (= (and b!734926 res!493885) b!734924))

(assert (= (and b!734924 res!493895) b!734931))

(assert (= (and b!734931 c!80898) b!734920))

(assert (= (and b!734931 (not c!80898)) b!734935))

(assert (= (and b!734931 res!493898) b!734921))

(assert (= (and b!734921 res!493899) b!734919))

(assert (= (and b!734919 res!493894) b!734934))

(assert (= (and b!734934 res!493892) b!734918))

(assert (= (and b!734919 (not res!493886)) b!734929))

(assert (= (and b!734929 (not res!493891)) b!734922))

(declare-fun m!687493 () Bool)

(assert (=> b!734918 m!687493))

(assert (=> b!734918 m!687493))

(declare-fun m!687495 () Bool)

(assert (=> b!734918 m!687495))

(declare-fun m!687497 () Bool)

(assert (=> b!734923 m!687497))

(assert (=> b!734922 m!687493))

(assert (=> b!734922 m!687493))

(declare-fun m!687499 () Bool)

(assert (=> b!734922 m!687499))

(assert (=> b!734930 m!687493))

(assert (=> b!734930 m!687493))

(declare-fun m!687501 () Bool)

(assert (=> b!734930 m!687501))

(assert (=> b!734920 m!687493))

(assert (=> b!734920 m!687493))

(declare-fun m!687503 () Bool)

(assert (=> b!734920 m!687503))

(assert (=> b!734926 m!687493))

(assert (=> b!734926 m!687493))

(declare-fun m!687505 () Bool)

(assert (=> b!734926 m!687505))

(assert (=> b!734926 m!687505))

(assert (=> b!734926 m!687493))

(declare-fun m!687507 () Bool)

(assert (=> b!734926 m!687507))

(declare-fun m!687509 () Bool)

(assert (=> start!65136 m!687509))

(declare-fun m!687511 () Bool)

(assert (=> start!65136 m!687511))

(declare-fun m!687513 () Bool)

(assert (=> b!734919 m!687513))

(declare-fun m!687515 () Bool)

(assert (=> b!734919 m!687515))

(declare-fun m!687517 () Bool)

(assert (=> b!734924 m!687517))

(declare-fun m!687519 () Bool)

(assert (=> b!734929 m!687519))

(assert (=> b!734935 m!687493))

(assert (=> b!734935 m!687493))

(assert (=> b!734935 m!687499))

(declare-fun m!687521 () Bool)

(assert (=> b!734927 m!687521))

(declare-fun m!687523 () Bool)

(assert (=> b!734921 m!687523))

(declare-fun m!687525 () Bool)

(assert (=> b!734921 m!687525))

(declare-fun m!687527 () Bool)

(assert (=> b!734921 m!687527))

(assert (=> b!734921 m!687525))

(declare-fun m!687529 () Bool)

(assert (=> b!734921 m!687529))

(declare-fun m!687531 () Bool)

(assert (=> b!734921 m!687531))

(declare-fun m!687533 () Bool)

(assert (=> b!734928 m!687533))

(declare-fun m!687535 () Bool)

(assert (=> b!734925 m!687535))

(assert (=> b!734934 m!687493))

(assert (=> b!734934 m!687493))

(declare-fun m!687537 () Bool)

(assert (=> b!734934 m!687537))

(declare-fun m!687539 () Bool)

(assert (=> b!734932 m!687539))

(check-sat (not b!734932) (not b!734930) (not b!734920) (not b!734923) (not b!734929) (not b!734935) (not b!734921) (not b!734926) (not b!734918) (not b!734928) (not start!65136) (not b!734925) (not b!734927) (not b!734922) (not b!734934) (not b!734919))
(check-sat)
