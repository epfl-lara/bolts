; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65818 () Bool)

(assert start!65818)

(declare-fun b!756883 () Bool)

(declare-fun e!422048 () Bool)

(declare-fun e!422056 () Bool)

(assert (=> b!756883 (= e!422048 e!422056)))

(declare-fun res!511938 () Bool)

(assert (=> b!756883 (=> res!511938 e!422056)))

(declare-fun lt!337056 () (_ BitVec 64))

(declare-fun lt!337049 () (_ BitVec 64))

(assert (=> b!756883 (= res!511938 (= lt!337056 lt!337049))))

(declare-datatypes ((array!41944 0))(
  ( (array!41945 (arr!20082 (Array (_ BitVec 32) (_ BitVec 64))) (size!20503 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41944)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!756883 (= lt!337056 (select (store (arr!20082 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!756884 () Bool)

(declare-fun res!511935 () Bool)

(declare-fun e!422057 () Bool)

(assert (=> b!756884 (=> (not res!511935) (not e!422057))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756884 (= res!511935 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20503 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20503 a!3186))))))

(declare-fun b!756885 () Bool)

(declare-fun res!511941 () Bool)

(declare-fun e!422052 () Bool)

(assert (=> b!756885 (=> (not res!511941) (not e!422052))))

(declare-fun lt!337052 () array!41944)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7689 0))(
  ( (MissingZero!7689 (index!33123 (_ BitVec 32))) (Found!7689 (index!33124 (_ BitVec 32))) (Intermediate!7689 (undefined!8501 Bool) (index!33125 (_ BitVec 32)) (x!64048 (_ BitVec 32))) (Undefined!7689) (MissingVacant!7689 (index!33126 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41944 (_ BitVec 32)) SeekEntryResult!7689)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41944 (_ BitVec 32)) SeekEntryResult!7689)

(assert (=> b!756885 (= res!511941 (= (seekEntryOrOpen!0 lt!337049 lt!337052 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337049 lt!337052 mask!3328)))))

(declare-fun b!756886 () Bool)

(declare-fun e!422047 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!756886 (= e!422047 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20082 a!3186) j!159) a!3186 mask!3328) (Found!7689 j!159)))))

(declare-fun lt!337047 () SeekEntryResult!7689)

(declare-fun b!756887 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41944 (_ BitVec 32)) SeekEntryResult!7689)

(assert (=> b!756887 (= e!422047 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20082 a!3186) j!159) a!3186 mask!3328) lt!337047))))

(declare-fun b!756888 () Bool)

(declare-fun e!422049 () Bool)

(assert (=> b!756888 (= e!422057 e!422049)))

(declare-fun res!511928 () Bool)

(assert (=> b!756888 (=> (not res!511928) (not e!422049))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756888 (= res!511928 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20082 a!3186) j!159) mask!3328) (select (arr!20082 a!3186) j!159) a!3186 mask!3328) lt!337047))))

(assert (=> b!756888 (= lt!337047 (Intermediate!7689 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756889 () Bool)

(declare-fun res!511942 () Bool)

(assert (=> b!756889 (=> (not res!511942) (not e!422057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41944 (_ BitVec 32)) Bool)

(assert (=> b!756889 (= res!511942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756890 () Bool)

(assert (=> b!756890 (= e!422056 true)))

(assert (=> b!756890 e!422052))

(declare-fun res!511933 () Bool)

(assert (=> b!756890 (=> (not res!511933) (not e!422052))))

(assert (=> b!756890 (= res!511933 (= lt!337056 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26158 0))(
  ( (Unit!26159) )
))
(declare-fun lt!337048 () Unit!26158)

(declare-fun e!422051 () Unit!26158)

(assert (=> b!756890 (= lt!337048 e!422051)))

(declare-fun c!82859 () Bool)

(assert (=> b!756890 (= c!82859 (= lt!337056 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756891 () Bool)

(declare-fun Unit!26160 () Unit!26158)

(assert (=> b!756891 (= e!422051 Unit!26160)))

(assert (=> b!756891 false))

(declare-fun b!756892 () Bool)

(declare-fun e!422055 () Bool)

(assert (=> b!756892 (= e!422055 e!422048)))

(declare-fun res!511937 () Bool)

(assert (=> b!756892 (=> res!511937 e!422048)))

(declare-fun lt!337057 () SeekEntryResult!7689)

(declare-fun lt!337053 () SeekEntryResult!7689)

(assert (=> b!756892 (= res!511937 (not (= lt!337057 lt!337053)))))

(assert (=> b!756892 (= lt!337057 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20082 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!511930 () Bool)

(declare-fun e!422053 () Bool)

(assert (=> start!65818 (=> (not res!511930) (not e!422053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65818 (= res!511930 (validMask!0 mask!3328))))

(assert (=> start!65818 e!422053))

(assert (=> start!65818 true))

(declare-fun array_inv!15856 (array!41944) Bool)

(assert (=> start!65818 (array_inv!15856 a!3186)))

(declare-fun b!756893 () Bool)

(declare-fun e!422054 () Bool)

(assert (=> b!756893 (= e!422054 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20082 a!3186) j!159) a!3186 mask!3328) lt!337053))))

(declare-fun b!756894 () Bool)

(declare-fun res!511926 () Bool)

(assert (=> b!756894 (=> (not res!511926) (not e!422053))))

(declare-fun arrayContainsKey!0 (array!41944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756894 (= res!511926 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756895 () Bool)

(declare-fun Unit!26161 () Unit!26158)

(assert (=> b!756895 (= e!422051 Unit!26161)))

(declare-fun b!756896 () Bool)

(declare-fun lt!337058 () SeekEntryResult!7689)

(assert (=> b!756896 (= e!422052 (= lt!337058 lt!337057))))

(declare-fun b!756897 () Bool)

(declare-fun res!511931 () Bool)

(assert (=> b!756897 (=> (not res!511931) (not e!422057))))

(declare-datatypes ((List!14137 0))(
  ( (Nil!14134) (Cons!14133 (h!15205 (_ BitVec 64)) (t!20460 List!14137)) )
))
(declare-fun arrayNoDuplicates!0 (array!41944 (_ BitVec 32) List!14137) Bool)

(assert (=> b!756897 (= res!511931 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14134))))

(declare-fun b!756898 () Bool)

(declare-fun res!511940 () Bool)

(assert (=> b!756898 (=> (not res!511940) (not e!422053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756898 (= res!511940 (validKeyInArray!0 (select (arr!20082 a!3186) j!159)))))

(declare-fun b!756899 () Bool)

(declare-fun res!511929 () Bool)

(assert (=> b!756899 (=> (not res!511929) (not e!422053))))

(assert (=> b!756899 (= res!511929 (validKeyInArray!0 k!2102))))

(declare-fun b!756900 () Bool)

(declare-fun res!511939 () Bool)

(assert (=> b!756900 (=> (not res!511939) (not e!422053))))

(assert (=> b!756900 (= res!511939 (and (= (size!20503 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20503 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20503 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756901 () Bool)

(declare-fun e!422058 () Bool)

(assert (=> b!756901 (= e!422049 e!422058)))

(declare-fun res!511932 () Bool)

(assert (=> b!756901 (=> (not res!511932) (not e!422058))))

(declare-fun lt!337050 () SeekEntryResult!7689)

(declare-fun lt!337055 () SeekEntryResult!7689)

(assert (=> b!756901 (= res!511932 (= lt!337050 lt!337055))))

(assert (=> b!756901 (= lt!337055 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337049 lt!337052 mask!3328))))

(assert (=> b!756901 (= lt!337050 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337049 mask!3328) lt!337049 lt!337052 mask!3328))))

(assert (=> b!756901 (= lt!337049 (select (store (arr!20082 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756901 (= lt!337052 (array!41945 (store (arr!20082 a!3186) i!1173 k!2102) (size!20503 a!3186)))))

(declare-fun b!756902 () Bool)

(declare-fun res!511927 () Bool)

(assert (=> b!756902 (=> (not res!511927) (not e!422049))))

(assert (=> b!756902 (= res!511927 e!422047)))

(declare-fun c!82860 () Bool)

(assert (=> b!756902 (= c!82860 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756903 () Bool)

(assert (=> b!756903 (= e!422053 e!422057)))

(declare-fun res!511943 () Bool)

(assert (=> b!756903 (=> (not res!511943) (not e!422057))))

(declare-fun lt!337051 () SeekEntryResult!7689)

(assert (=> b!756903 (= res!511943 (or (= lt!337051 (MissingZero!7689 i!1173)) (= lt!337051 (MissingVacant!7689 i!1173))))))

(assert (=> b!756903 (= lt!337051 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!756904 () Bool)

(assert (=> b!756904 (= e!422058 (not e!422055))))

(declare-fun res!511944 () Bool)

(assert (=> b!756904 (=> res!511944 e!422055)))

(assert (=> b!756904 (= res!511944 (or (not (is-Intermediate!7689 lt!337055)) (bvslt x!1131 (x!64048 lt!337055)) (not (= x!1131 (x!64048 lt!337055))) (not (= index!1321 (index!33125 lt!337055)))))))

(assert (=> b!756904 e!422054))

(declare-fun res!511934 () Bool)

(assert (=> b!756904 (=> (not res!511934) (not e!422054))))

(assert (=> b!756904 (= res!511934 (= lt!337058 lt!337053))))

(assert (=> b!756904 (= lt!337053 (Found!7689 j!159))))

(assert (=> b!756904 (= lt!337058 (seekEntryOrOpen!0 (select (arr!20082 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756904 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337054 () Unit!26158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41944 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26158)

(assert (=> b!756904 (= lt!337054 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756905 () Bool)

(declare-fun res!511936 () Bool)

(assert (=> b!756905 (=> (not res!511936) (not e!422049))))

(assert (=> b!756905 (= res!511936 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20082 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65818 res!511930) b!756900))

(assert (= (and b!756900 res!511939) b!756898))

(assert (= (and b!756898 res!511940) b!756899))

(assert (= (and b!756899 res!511929) b!756894))

(assert (= (and b!756894 res!511926) b!756903))

(assert (= (and b!756903 res!511943) b!756889))

(assert (= (and b!756889 res!511942) b!756897))

(assert (= (and b!756897 res!511931) b!756884))

(assert (= (and b!756884 res!511935) b!756888))

(assert (= (and b!756888 res!511928) b!756905))

(assert (= (and b!756905 res!511936) b!756902))

(assert (= (and b!756902 c!82860) b!756887))

(assert (= (and b!756902 (not c!82860)) b!756886))

(assert (= (and b!756902 res!511927) b!756901))

(assert (= (and b!756901 res!511932) b!756904))

(assert (= (and b!756904 res!511934) b!756893))

(assert (= (and b!756904 (not res!511944)) b!756892))

(assert (= (and b!756892 (not res!511937)) b!756883))

(assert (= (and b!756883 (not res!511938)) b!756890))

(assert (= (and b!756890 c!82859) b!756891))

(assert (= (and b!756890 (not c!82859)) b!756895))

(assert (= (and b!756890 res!511933) b!756885))

(assert (= (and b!756885 res!511941) b!756896))

(declare-fun m!704797 () Bool)

(assert (=> b!756901 m!704797))

(declare-fun m!704799 () Bool)

(assert (=> b!756901 m!704799))

(assert (=> b!756901 m!704797))

(declare-fun m!704801 () Bool)

(assert (=> b!756901 m!704801))

(declare-fun m!704803 () Bool)

(assert (=> b!756901 m!704803))

(declare-fun m!704805 () Bool)

(assert (=> b!756901 m!704805))

(declare-fun m!704807 () Bool)

(assert (=> b!756886 m!704807))

(assert (=> b!756886 m!704807))

(declare-fun m!704809 () Bool)

(assert (=> b!756886 m!704809))

(declare-fun m!704811 () Bool)

(assert (=> b!756889 m!704811))

(declare-fun m!704813 () Bool)

(assert (=> start!65818 m!704813))

(declare-fun m!704815 () Bool)

(assert (=> start!65818 m!704815))

(assert (=> b!756898 m!704807))

(assert (=> b!756898 m!704807))

(declare-fun m!704817 () Bool)

(assert (=> b!756898 m!704817))

(declare-fun m!704819 () Bool)

(assert (=> b!756899 m!704819))

(declare-fun m!704821 () Bool)

(assert (=> b!756894 m!704821))

(declare-fun m!704823 () Bool)

(assert (=> b!756885 m!704823))

(declare-fun m!704825 () Bool)

(assert (=> b!756885 m!704825))

(assert (=> b!756883 m!704799))

(declare-fun m!704827 () Bool)

(assert (=> b!756883 m!704827))

(assert (=> b!756888 m!704807))

(assert (=> b!756888 m!704807))

(declare-fun m!704829 () Bool)

(assert (=> b!756888 m!704829))

(assert (=> b!756888 m!704829))

(assert (=> b!756888 m!704807))

(declare-fun m!704831 () Bool)

(assert (=> b!756888 m!704831))

(declare-fun m!704833 () Bool)

(assert (=> b!756897 m!704833))

(assert (=> b!756904 m!704807))

(assert (=> b!756904 m!704807))

(declare-fun m!704835 () Bool)

(assert (=> b!756904 m!704835))

(declare-fun m!704837 () Bool)

(assert (=> b!756904 m!704837))

(declare-fun m!704839 () Bool)

(assert (=> b!756904 m!704839))

(declare-fun m!704841 () Bool)

(assert (=> b!756905 m!704841))

(assert (=> b!756893 m!704807))

(assert (=> b!756893 m!704807))

(declare-fun m!704843 () Bool)

(assert (=> b!756893 m!704843))

(declare-fun m!704845 () Bool)

(assert (=> b!756903 m!704845))

(assert (=> b!756892 m!704807))

(assert (=> b!756892 m!704807))

(assert (=> b!756892 m!704809))

(assert (=> b!756887 m!704807))

(assert (=> b!756887 m!704807))

(declare-fun m!704847 () Bool)

(assert (=> b!756887 m!704847))

(push 1)

