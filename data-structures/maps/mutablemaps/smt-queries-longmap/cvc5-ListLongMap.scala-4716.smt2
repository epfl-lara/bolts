; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65374 () Bool)

(assert start!65374)

(declare-fun b!742810 () Bool)

(declare-fun res!500098 () Bool)

(declare-fun e!415111 () Bool)

(assert (=> b!742810 (=> res!500098 e!415111)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7467 0))(
  ( (MissingZero!7467 (index!32235 (_ BitVec 32))) (Found!7467 (index!32236 (_ BitVec 32))) (Intermediate!7467 (undefined!8279 Bool) (index!32237 (_ BitVec 32)) (x!63234 (_ BitVec 32))) (Undefined!7467) (MissingVacant!7467 (index!32238 (_ BitVec 32))) )
))
(declare-fun lt!330004 () SeekEntryResult!7467)

(declare-fun lt!330005 () (_ BitVec 64))

(declare-datatypes ((array!41500 0))(
  ( (array!41501 (arr!19860 (Array (_ BitVec 32) (_ BitVec 64))) (size!20281 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41500)

(assert (=> b!742810 (= res!500098 (or (not (= (select (store (arr!19860 a!3186) i!1173 k!2102) index!1321) lt!330005)) (undefined!8279 lt!330004)))))

(declare-fun b!742811 () Bool)

(assert (=> b!742811 (= e!415111 true)))

(declare-fun lt!330009 () SeekEntryResult!7467)

(declare-fun lt!330003 () array!41500)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41500 (_ BitVec 32)) SeekEntryResult!7467)

(assert (=> b!742811 (= lt!330009 (seekEntryOrOpen!0 lt!330005 lt!330003 mask!3328))))

(declare-fun b!742812 () Bool)

(declare-fun res!500094 () Bool)

(assert (=> b!742812 (=> res!500094 e!415111)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41500 (_ BitVec 32)) SeekEntryResult!7467)

(assert (=> b!742812 (= res!500094 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19860 a!3186) j!159) a!3186 mask!3328) (Found!7467 j!159))))))

(declare-fun b!742813 () Bool)

(declare-fun e!415114 () Bool)

(assert (=> b!742813 (= e!415114 (not e!415111))))

(declare-fun res!500102 () Bool)

(assert (=> b!742813 (=> res!500102 e!415111)))

(assert (=> b!742813 (= res!500102 (or (not (is-Intermediate!7467 lt!330004)) (bvslt x!1131 (x!63234 lt!330004)) (not (= x!1131 (x!63234 lt!330004))) (not (= index!1321 (index!32237 lt!330004)))))))

(declare-fun e!415118 () Bool)

(assert (=> b!742813 e!415118))

(declare-fun res!500101 () Bool)

(assert (=> b!742813 (=> (not res!500101) (not e!415118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41500 (_ BitVec 32)) Bool)

(assert (=> b!742813 (= res!500101 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25414 0))(
  ( (Unit!25415) )
))
(declare-fun lt!330011 () Unit!25414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25414)

(assert (=> b!742813 (= lt!330011 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742815 () Bool)

(declare-fun res!500092 () Bool)

(declare-fun e!415117 () Bool)

(assert (=> b!742815 (=> (not res!500092) (not e!415117))))

(declare-fun e!415113 () Bool)

(assert (=> b!742815 (= res!500092 e!415113)))

(declare-fun c!81741 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742815 (= c!81741 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742816 () Bool)

(declare-fun res!500104 () Bool)

(declare-fun e!415115 () Bool)

(assert (=> b!742816 (=> (not res!500104) (not e!415115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742816 (= res!500104 (validKeyInArray!0 k!2102))))

(declare-fun b!742817 () Bool)

(declare-fun res!500106 () Bool)

(assert (=> b!742817 (=> (not res!500106) (not e!415115))))

(assert (=> b!742817 (= res!500106 (validKeyInArray!0 (select (arr!19860 a!3186) j!159)))))

(declare-fun b!742818 () Bool)

(declare-fun e!415116 () Bool)

(assert (=> b!742818 (= e!415116 e!415117)))

(declare-fun res!500089 () Bool)

(assert (=> b!742818 (=> (not res!500089) (not e!415117))))

(declare-fun lt!330010 () SeekEntryResult!7467)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41500 (_ BitVec 32)) SeekEntryResult!7467)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742818 (= res!500089 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19860 a!3186) j!159) mask!3328) (select (arr!19860 a!3186) j!159) a!3186 mask!3328) lt!330010))))

(assert (=> b!742818 (= lt!330010 (Intermediate!7467 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742819 () Bool)

(declare-fun res!500099 () Bool)

(assert (=> b!742819 (=> (not res!500099) (not e!415115))))

(declare-fun arrayContainsKey!0 (array!41500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742819 (= res!500099 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742820 () Bool)

(declare-fun res!500091 () Bool)

(assert (=> b!742820 (=> (not res!500091) (not e!415117))))

(assert (=> b!742820 (= res!500091 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19860 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742821 () Bool)

(declare-fun res!500093 () Bool)

(assert (=> b!742821 (=> (not res!500093) (not e!415115))))

(assert (=> b!742821 (= res!500093 (and (= (size!20281 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20281 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20281 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742822 () Bool)

(declare-fun res!500096 () Bool)

(assert (=> b!742822 (=> (not res!500096) (not e!415116))))

(assert (=> b!742822 (= res!500096 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20281 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20281 a!3186))))))

(declare-fun res!500103 () Bool)

(assert (=> start!65374 (=> (not res!500103) (not e!415115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65374 (= res!500103 (validMask!0 mask!3328))))

(assert (=> start!65374 e!415115))

(assert (=> start!65374 true))

(declare-fun array_inv!15634 (array!41500) Bool)

(assert (=> start!65374 (array_inv!15634 a!3186)))

(declare-fun b!742814 () Bool)

(assert (=> b!742814 (= e!415115 e!415116)))

(declare-fun res!500105 () Bool)

(assert (=> b!742814 (=> (not res!500105) (not e!415116))))

(declare-fun lt!330007 () SeekEntryResult!7467)

(assert (=> b!742814 (= res!500105 (or (= lt!330007 (MissingZero!7467 i!1173)) (= lt!330007 (MissingVacant!7467 i!1173))))))

(assert (=> b!742814 (= lt!330007 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742823 () Bool)

(declare-fun e!415119 () Bool)

(assert (=> b!742823 (= e!415118 e!415119)))

(declare-fun res!500090 () Bool)

(assert (=> b!742823 (=> (not res!500090) (not e!415119))))

(declare-fun lt!330008 () SeekEntryResult!7467)

(assert (=> b!742823 (= res!500090 (= (seekEntryOrOpen!0 (select (arr!19860 a!3186) j!159) a!3186 mask!3328) lt!330008))))

(assert (=> b!742823 (= lt!330008 (Found!7467 j!159))))

(declare-fun b!742824 () Bool)

(assert (=> b!742824 (= e!415113 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19860 a!3186) j!159) a!3186 mask!3328) lt!330010))))

(declare-fun b!742825 () Bool)

(declare-fun res!500097 () Bool)

(assert (=> b!742825 (=> (not res!500097) (not e!415116))))

(assert (=> b!742825 (= res!500097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742826 () Bool)

(assert (=> b!742826 (= e!415113 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19860 a!3186) j!159) a!3186 mask!3328) (Found!7467 j!159)))))

(declare-fun b!742827 () Bool)

(declare-fun res!500100 () Bool)

(assert (=> b!742827 (=> (not res!500100) (not e!415116))))

(declare-datatypes ((List!13915 0))(
  ( (Nil!13912) (Cons!13911 (h!14983 (_ BitVec 64)) (t!20238 List!13915)) )
))
(declare-fun arrayNoDuplicates!0 (array!41500 (_ BitVec 32) List!13915) Bool)

(assert (=> b!742827 (= res!500100 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13912))))

(declare-fun b!742828 () Bool)

(assert (=> b!742828 (= e!415117 e!415114)))

(declare-fun res!500095 () Bool)

(assert (=> b!742828 (=> (not res!500095) (not e!415114))))

(declare-fun lt!330006 () SeekEntryResult!7467)

(assert (=> b!742828 (= res!500095 (= lt!330006 lt!330004))))

(assert (=> b!742828 (= lt!330004 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330005 lt!330003 mask!3328))))

(assert (=> b!742828 (= lt!330006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330005 mask!3328) lt!330005 lt!330003 mask!3328))))

(assert (=> b!742828 (= lt!330005 (select (store (arr!19860 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742828 (= lt!330003 (array!41501 (store (arr!19860 a!3186) i!1173 k!2102) (size!20281 a!3186)))))

(declare-fun b!742829 () Bool)

(assert (=> b!742829 (= e!415119 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19860 a!3186) j!159) a!3186 mask!3328) lt!330008))))

(assert (= (and start!65374 res!500103) b!742821))

(assert (= (and b!742821 res!500093) b!742817))

(assert (= (and b!742817 res!500106) b!742816))

(assert (= (and b!742816 res!500104) b!742819))

(assert (= (and b!742819 res!500099) b!742814))

(assert (= (and b!742814 res!500105) b!742825))

(assert (= (and b!742825 res!500097) b!742827))

(assert (= (and b!742827 res!500100) b!742822))

(assert (= (and b!742822 res!500096) b!742818))

(assert (= (and b!742818 res!500089) b!742820))

(assert (= (and b!742820 res!500091) b!742815))

(assert (= (and b!742815 c!81741) b!742824))

(assert (= (and b!742815 (not c!81741)) b!742826))

(assert (= (and b!742815 res!500092) b!742828))

(assert (= (and b!742828 res!500095) b!742813))

(assert (= (and b!742813 res!500101) b!742823))

(assert (= (and b!742823 res!500090) b!742829))

(assert (= (and b!742813 (not res!500102)) b!742812))

(assert (= (and b!742812 (not res!500094)) b!742810))

(assert (= (and b!742810 (not res!500098)) b!742811))

(declare-fun m!693691 () Bool)

(assert (=> b!742814 m!693691))

(declare-fun m!693693 () Bool)

(assert (=> b!742817 m!693693))

(assert (=> b!742817 m!693693))

(declare-fun m!693695 () Bool)

(assert (=> b!742817 m!693695))

(declare-fun m!693697 () Bool)

(assert (=> b!742811 m!693697))

(declare-fun m!693699 () Bool)

(assert (=> b!742810 m!693699))

(declare-fun m!693701 () Bool)

(assert (=> b!742810 m!693701))

(assert (=> b!742818 m!693693))

(assert (=> b!742818 m!693693))

(declare-fun m!693703 () Bool)

(assert (=> b!742818 m!693703))

(assert (=> b!742818 m!693703))

(assert (=> b!742818 m!693693))

(declare-fun m!693705 () Bool)

(assert (=> b!742818 m!693705))

(assert (=> b!742812 m!693693))

(assert (=> b!742812 m!693693))

(declare-fun m!693707 () Bool)

(assert (=> b!742812 m!693707))

(declare-fun m!693709 () Bool)

(assert (=> start!65374 m!693709))

(declare-fun m!693711 () Bool)

(assert (=> start!65374 m!693711))

(declare-fun m!693713 () Bool)

(assert (=> b!742827 m!693713))

(assert (=> b!742824 m!693693))

(assert (=> b!742824 m!693693))

(declare-fun m!693715 () Bool)

(assert (=> b!742824 m!693715))

(declare-fun m!693717 () Bool)

(assert (=> b!742813 m!693717))

(declare-fun m!693719 () Bool)

(assert (=> b!742813 m!693719))

(assert (=> b!742826 m!693693))

(assert (=> b!742826 m!693693))

(assert (=> b!742826 m!693707))

(declare-fun m!693721 () Bool)

(assert (=> b!742820 m!693721))

(assert (=> b!742828 m!693699))

(declare-fun m!693723 () Bool)

(assert (=> b!742828 m!693723))

(declare-fun m!693725 () Bool)

(assert (=> b!742828 m!693725))

(declare-fun m!693727 () Bool)

(assert (=> b!742828 m!693727))

(declare-fun m!693729 () Bool)

(assert (=> b!742828 m!693729))

(assert (=> b!742828 m!693725))

(assert (=> b!742823 m!693693))

(assert (=> b!742823 m!693693))

(declare-fun m!693731 () Bool)

(assert (=> b!742823 m!693731))

(declare-fun m!693733 () Bool)

(assert (=> b!742819 m!693733))

(declare-fun m!693735 () Bool)

(assert (=> b!742825 m!693735))

(declare-fun m!693737 () Bool)

(assert (=> b!742816 m!693737))

(assert (=> b!742829 m!693693))

(assert (=> b!742829 m!693693))

(declare-fun m!693739 () Bool)

(assert (=> b!742829 m!693739))

(push 1)

