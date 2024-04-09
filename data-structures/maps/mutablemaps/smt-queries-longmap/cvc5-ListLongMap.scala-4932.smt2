; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67918 () Bool)

(assert start!67918)

(declare-fun b!789816 () Bool)

(declare-fun e!439008 () Bool)

(declare-fun e!439002 () Bool)

(assert (=> b!789816 (= e!439008 e!439002)))

(declare-fun res!535183 () Bool)

(assert (=> b!789816 (=> (not res!535183) (not e!439002))))

(declare-datatypes ((SeekEntryResult!8115 0))(
  ( (MissingZero!8115 (index!34827 (_ BitVec 32))) (Found!8115 (index!34828 (_ BitVec 32))) (Intermediate!8115 (undefined!8927 Bool) (index!34829 (_ BitVec 32)) (x!65793 (_ BitVec 32))) (Undefined!8115) (MissingVacant!8115 (index!34830 (_ BitVec 32))) )
))
(declare-fun lt!352544 () SeekEntryResult!8115)

(declare-fun lt!352543 () SeekEntryResult!8115)

(assert (=> b!789816 (= res!535183 (= lt!352544 lt!352543))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42850 0))(
  ( (array!42851 (arr!20508 (Array (_ BitVec 32) (_ BitVec 64))) (size!20929 (_ BitVec 32))) )
))
(declare-fun lt!352549 () array!42850)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!352542 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42850 (_ BitVec 32)) SeekEntryResult!8115)

(assert (=> b!789816 (= lt!352543 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352542 lt!352549 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789816 (= lt!352544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352542 mask!3328) lt!352542 lt!352549 mask!3328))))

(declare-fun a!3186 () array!42850)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!789816 (= lt!352542 (select (store (arr!20508 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789816 (= lt!352549 (array!42851 (store (arr!20508 a!3186) i!1173 k!2102) (size!20929 a!3186)))))

(declare-fun b!789817 () Bool)

(declare-fun e!439007 () Bool)

(declare-fun e!439010 () Bool)

(assert (=> b!789817 (= e!439007 e!439010)))

(declare-fun res!535178 () Bool)

(assert (=> b!789817 (=> res!535178 e!439010)))

(declare-fun lt!352547 () (_ BitVec 64))

(assert (=> b!789817 (= res!535178 (= lt!352547 lt!352542))))

(assert (=> b!789817 (= lt!352547 (select (store (arr!20508 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!789818 () Bool)

(declare-fun e!439006 () Bool)

(assert (=> b!789818 (= e!439002 (not e!439006))))

(declare-fun res!535179 () Bool)

(assert (=> b!789818 (=> res!535179 e!439006)))

(assert (=> b!789818 (= res!535179 (or (not (is-Intermediate!8115 lt!352543)) (bvslt x!1131 (x!65793 lt!352543)) (not (= x!1131 (x!65793 lt!352543))) (not (= index!1321 (index!34829 lt!352543)))))))

(declare-fun e!439003 () Bool)

(assert (=> b!789818 e!439003))

(declare-fun res!535180 () Bool)

(assert (=> b!789818 (=> (not res!535180) (not e!439003))))

(declare-fun lt!352551 () SeekEntryResult!8115)

(declare-fun lt!352546 () SeekEntryResult!8115)

(assert (=> b!789818 (= res!535180 (= lt!352551 lt!352546))))

(assert (=> b!789818 (= lt!352546 (Found!8115 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42850 (_ BitVec 32)) SeekEntryResult!8115)

(assert (=> b!789818 (= lt!352551 (seekEntryOrOpen!0 (select (arr!20508 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42850 (_ BitVec 32)) Bool)

(assert (=> b!789818 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27370 0))(
  ( (Unit!27371) )
))
(declare-fun lt!352538 () Unit!27370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42850 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27370)

(assert (=> b!789818 (= lt!352538 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!535176 () Bool)

(declare-fun e!439004 () Bool)

(assert (=> start!67918 (=> (not res!535176) (not e!439004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67918 (= res!535176 (validMask!0 mask!3328))))

(assert (=> start!67918 e!439004))

(assert (=> start!67918 true))

(declare-fun array_inv!16282 (array!42850) Bool)

(assert (=> start!67918 (array_inv!16282 a!3186)))

(declare-fun b!789819 () Bool)

(declare-fun res!535167 () Bool)

(declare-fun e!439005 () Bool)

(assert (=> b!789819 (=> (not res!535167) (not e!439005))))

(declare-datatypes ((List!14563 0))(
  ( (Nil!14560) (Cons!14559 (h!15685 (_ BitVec 64)) (t!20886 List!14563)) )
))
(declare-fun arrayNoDuplicates!0 (array!42850 (_ BitVec 32) List!14563) Bool)

(assert (=> b!789819 (= res!535167 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14560))))

(declare-fun b!789820 () Bool)

(declare-fun res!535175 () Bool)

(assert (=> b!789820 (=> (not res!535175) (not e!439004))))

(assert (=> b!789820 (= res!535175 (and (= (size!20929 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20929 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20929 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789821 () Bool)

(declare-fun res!535182 () Bool)

(assert (=> b!789821 (=> (not res!535182) (not e!439004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789821 (= res!535182 (validKeyInArray!0 k!2102))))

(declare-fun b!789822 () Bool)

(declare-fun res!535169 () Bool)

(assert (=> b!789822 (=> (not res!535169) (not e!439005))))

(assert (=> b!789822 (= res!535169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789823 () Bool)

(declare-fun e!439001 () Unit!27370)

(declare-fun Unit!27372 () Unit!27370)

(assert (=> b!789823 (= e!439001 Unit!27372)))

(assert (=> b!789823 false))

(declare-fun b!789824 () Bool)

(declare-fun res!535168 () Bool)

(assert (=> b!789824 (=> (not res!535168) (not e!439005))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789824 (= res!535168 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20929 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20929 a!3186))))))

(declare-fun b!789825 () Bool)

(declare-fun res!535166 () Bool)

(assert (=> b!789825 (=> (not res!535166) (not e!439008))))

(declare-fun e!439012 () Bool)

(assert (=> b!789825 (= res!535166 e!439012)))

(declare-fun c!87735 () Bool)

(assert (=> b!789825 (= c!87735 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789826 () Bool)

(declare-fun res!535173 () Bool)

(assert (=> b!789826 (=> (not res!535173) (not e!439008))))

(assert (=> b!789826 (= res!535173 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20508 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789827 () Bool)

(assert (=> b!789827 (= e!439005 e!439008)))

(declare-fun res!535177 () Bool)

(assert (=> b!789827 (=> (not res!535177) (not e!439008))))

(declare-fun lt!352540 () SeekEntryResult!8115)

(assert (=> b!789827 (= res!535177 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20508 a!3186) j!159) mask!3328) (select (arr!20508 a!3186) j!159) a!3186 mask!3328) lt!352540))))

(assert (=> b!789827 (= lt!352540 (Intermediate!8115 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789828 () Bool)

(declare-fun res!535174 () Bool)

(assert (=> b!789828 (=> (not res!535174) (not e!439004))))

(declare-fun arrayContainsKey!0 (array!42850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789828 (= res!535174 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789829 () Bool)

(declare-fun Unit!27373 () Unit!27370)

(assert (=> b!789829 (= e!439001 Unit!27373)))

(declare-fun b!789830 () Bool)

(assert (=> b!789830 (= e!439004 e!439005)))

(declare-fun res!535171 () Bool)

(assert (=> b!789830 (=> (not res!535171) (not e!439005))))

(declare-fun lt!352548 () SeekEntryResult!8115)

(assert (=> b!789830 (= res!535171 (or (= lt!352548 (MissingZero!8115 i!1173)) (= lt!352548 (MissingVacant!8115 i!1173))))))

(assert (=> b!789830 (= lt!352548 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789831 () Bool)

(declare-fun e!439011 () Bool)

(assert (=> b!789831 (= e!439011 true)))

(declare-fun lt!352539 () SeekEntryResult!8115)

(declare-fun lt!352545 () SeekEntryResult!8115)

(assert (=> b!789831 (= lt!352539 lt!352545)))

(declare-fun lt!352552 () Unit!27370)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42850 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27370)

(assert (=> b!789831 (= lt!352552 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789832 () Bool)

(declare-fun res!535172 () Bool)

(assert (=> b!789832 (=> (not res!535172) (not e!439004))))

(assert (=> b!789832 (= res!535172 (validKeyInArray!0 (select (arr!20508 a!3186) j!159)))))

(declare-fun b!789833 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42850 (_ BitVec 32)) SeekEntryResult!8115)

(assert (=> b!789833 (= e!439012 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20508 a!3186) j!159) a!3186 mask!3328) (Found!8115 j!159)))))

(declare-fun b!789834 () Bool)

(assert (=> b!789834 (= e!439006 e!439007)))

(declare-fun res!535170 () Bool)

(assert (=> b!789834 (=> res!535170 e!439007)))

(assert (=> b!789834 (= res!535170 (not (= lt!352545 lt!352546)))))

(assert (=> b!789834 (= lt!352545 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20508 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789835 () Bool)

(assert (=> b!789835 (= e!439003 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20508 a!3186) j!159) a!3186 mask!3328) lt!352546))))

(declare-fun b!789836 () Bool)

(assert (=> b!789836 (= e!439010 e!439011)))

(declare-fun res!535181 () Bool)

(assert (=> b!789836 (=> res!535181 e!439011)))

(assert (=> b!789836 (= res!535181 (or (not (= (select (arr!20508 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352550 () SeekEntryResult!8115)

(assert (=> b!789836 (and (= lt!352550 lt!352539) (= lt!352551 lt!352545))))

(assert (=> b!789836 (= lt!352539 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352542 lt!352549 mask!3328))))

(assert (=> b!789836 (= lt!352550 (seekEntryOrOpen!0 lt!352542 lt!352549 mask!3328))))

(assert (=> b!789836 (= lt!352547 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352541 () Unit!27370)

(assert (=> b!789836 (= lt!352541 e!439001)))

(declare-fun c!87734 () Bool)

(assert (=> b!789836 (= c!87734 (= lt!352547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789837 () Bool)

(assert (=> b!789837 (= e!439012 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20508 a!3186) j!159) a!3186 mask!3328) lt!352540))))

(assert (= (and start!67918 res!535176) b!789820))

(assert (= (and b!789820 res!535175) b!789832))

(assert (= (and b!789832 res!535172) b!789821))

(assert (= (and b!789821 res!535182) b!789828))

(assert (= (and b!789828 res!535174) b!789830))

(assert (= (and b!789830 res!535171) b!789822))

(assert (= (and b!789822 res!535169) b!789819))

(assert (= (and b!789819 res!535167) b!789824))

(assert (= (and b!789824 res!535168) b!789827))

(assert (= (and b!789827 res!535177) b!789826))

(assert (= (and b!789826 res!535173) b!789825))

(assert (= (and b!789825 c!87735) b!789837))

(assert (= (and b!789825 (not c!87735)) b!789833))

(assert (= (and b!789825 res!535166) b!789816))

(assert (= (and b!789816 res!535183) b!789818))

(assert (= (and b!789818 res!535180) b!789835))

(assert (= (and b!789818 (not res!535179)) b!789834))

(assert (= (and b!789834 (not res!535170)) b!789817))

(assert (= (and b!789817 (not res!535178)) b!789836))

(assert (= (and b!789836 c!87734) b!789823))

(assert (= (and b!789836 (not c!87734)) b!789829))

(assert (= (and b!789836 (not res!535181)) b!789831))

(declare-fun m!730885 () Bool)

(assert (=> b!789835 m!730885))

(assert (=> b!789835 m!730885))

(declare-fun m!730887 () Bool)

(assert (=> b!789835 m!730887))

(declare-fun m!730889 () Bool)

(assert (=> start!67918 m!730889))

(declare-fun m!730891 () Bool)

(assert (=> start!67918 m!730891))

(declare-fun m!730893 () Bool)

(assert (=> b!789831 m!730893))

(assert (=> b!789832 m!730885))

(assert (=> b!789832 m!730885))

(declare-fun m!730895 () Bool)

(assert (=> b!789832 m!730895))

(declare-fun m!730897 () Bool)

(assert (=> b!789817 m!730897))

(declare-fun m!730899 () Bool)

(assert (=> b!789817 m!730899))

(declare-fun m!730901 () Bool)

(assert (=> b!789836 m!730901))

(declare-fun m!730903 () Bool)

(assert (=> b!789836 m!730903))

(declare-fun m!730905 () Bool)

(assert (=> b!789836 m!730905))

(assert (=> b!789833 m!730885))

(assert (=> b!789833 m!730885))

(declare-fun m!730907 () Bool)

(assert (=> b!789833 m!730907))

(assert (=> b!789827 m!730885))

(assert (=> b!789827 m!730885))

(declare-fun m!730909 () Bool)

(assert (=> b!789827 m!730909))

(assert (=> b!789827 m!730909))

(assert (=> b!789827 m!730885))

(declare-fun m!730911 () Bool)

(assert (=> b!789827 m!730911))

(declare-fun m!730913 () Bool)

(assert (=> b!789826 m!730913))

(assert (=> b!789834 m!730885))

(assert (=> b!789834 m!730885))

(assert (=> b!789834 m!730907))

(declare-fun m!730915 () Bool)

(assert (=> b!789830 m!730915))

(declare-fun m!730917 () Bool)

(assert (=> b!789816 m!730917))

(declare-fun m!730919 () Bool)

(assert (=> b!789816 m!730919))

(declare-fun m!730921 () Bool)

(assert (=> b!789816 m!730921))

(assert (=> b!789816 m!730919))

(declare-fun m!730923 () Bool)

(assert (=> b!789816 m!730923))

(assert (=> b!789816 m!730897))

(assert (=> b!789837 m!730885))

(assert (=> b!789837 m!730885))

(declare-fun m!730925 () Bool)

(assert (=> b!789837 m!730925))

(declare-fun m!730927 () Bool)

(assert (=> b!789821 m!730927))

(declare-fun m!730929 () Bool)

(assert (=> b!789819 m!730929))

(declare-fun m!730931 () Bool)

(assert (=> b!789822 m!730931))

(declare-fun m!730933 () Bool)

(assert (=> b!789828 m!730933))

(assert (=> b!789818 m!730885))

(assert (=> b!789818 m!730885))

(declare-fun m!730935 () Bool)

(assert (=> b!789818 m!730935))

(declare-fun m!730937 () Bool)

(assert (=> b!789818 m!730937))

(declare-fun m!730939 () Bool)

(assert (=> b!789818 m!730939))

(push 1)

