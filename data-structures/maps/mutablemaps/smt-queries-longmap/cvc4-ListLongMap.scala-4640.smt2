; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64562 () Bool)

(assert start!64562)

(declare-fun b!726843 () Bool)

(declare-fun e!406944 () Bool)

(declare-fun e!406941 () Bool)

(assert (=> b!726843 (= e!406944 e!406941)))

(declare-fun res!487917 () Bool)

(assert (=> b!726843 (=> (not res!487917) (not e!406941))))

(declare-datatypes ((SeekEntryResult!7241 0))(
  ( (MissingZero!7241 (index!31331 (_ BitVec 32))) (Found!7241 (index!31332 (_ BitVec 32))) (Intermediate!7241 (undefined!8053 Bool) (index!31333 (_ BitVec 32)) (x!62340 (_ BitVec 32))) (Undefined!7241) (MissingVacant!7241 (index!31334 (_ BitVec 32))) )
))
(declare-fun lt!321927 () SeekEntryResult!7241)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726843 (= res!487917 (or (= lt!321927 (MissingZero!7241 i!1173)) (= lt!321927 (MissingVacant!7241 i!1173))))))

(declare-datatypes ((array!41033 0))(
  ( (array!41034 (arr!19634 (Array (_ BitVec 32) (_ BitVec 64))) (size!20055 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41033)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41033 (_ BitVec 32)) SeekEntryResult!7241)

(assert (=> b!726843 (= lt!321927 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726844 () Bool)

(declare-fun res!487916 () Bool)

(declare-fun e!406940 () Bool)

(assert (=> b!726844 (=> (not res!487916) (not e!406940))))

(declare-fun e!406943 () Bool)

(assert (=> b!726844 (= res!487916 e!406943)))

(declare-fun c!79842 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726844 (= c!79842 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726845 () Bool)

(declare-fun e!406946 () Bool)

(assert (=> b!726845 (= e!406940 e!406946)))

(declare-fun res!487913 () Bool)

(assert (=> b!726845 (=> (not res!487913) (not e!406946))))

(declare-fun lt!321924 () SeekEntryResult!7241)

(declare-fun lt!321931 () SeekEntryResult!7241)

(assert (=> b!726845 (= res!487913 (= lt!321924 lt!321931))))

(declare-fun lt!321930 () array!41033)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321926 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41033 (_ BitVec 32)) SeekEntryResult!7241)

(assert (=> b!726845 (= lt!321931 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321926 lt!321930 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726845 (= lt!321924 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321926 mask!3328) lt!321926 lt!321930 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!726845 (= lt!321926 (select (store (arr!19634 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726845 (= lt!321930 (array!41034 (store (arr!19634 a!3186) i!1173 k!2102) (size!20055 a!3186)))))

(declare-fun b!726846 () Bool)

(declare-fun res!487919 () Bool)

(assert (=> b!726846 (=> (not res!487919) (not e!406940))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!726846 (= res!487919 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19634 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726847 () Bool)

(declare-fun res!487912 () Bool)

(assert (=> b!726847 (=> (not res!487912) (not e!406944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726847 (= res!487912 (validKeyInArray!0 (select (arr!19634 a!3186) j!159)))))

(declare-fun b!726848 () Bool)

(declare-fun e!406945 () Bool)

(declare-fun e!406947 () Bool)

(assert (=> b!726848 (= e!406945 e!406947)))

(declare-fun res!487908 () Bool)

(assert (=> b!726848 (=> (not res!487908) (not e!406947))))

(declare-fun lt!321925 () SeekEntryResult!7241)

(assert (=> b!726848 (= res!487908 (= (seekEntryOrOpen!0 (select (arr!19634 a!3186) j!159) a!3186 mask!3328) lt!321925))))

(assert (=> b!726848 (= lt!321925 (Found!7241 j!159))))

(declare-fun b!726849 () Bool)

(declare-fun res!487914 () Bool)

(assert (=> b!726849 (=> (not res!487914) (not e!406941))))

(declare-datatypes ((List!13689 0))(
  ( (Nil!13686) (Cons!13685 (h!14742 (_ BitVec 64)) (t!20012 List!13689)) )
))
(declare-fun arrayNoDuplicates!0 (array!41033 (_ BitVec 32) List!13689) Bool)

(assert (=> b!726849 (= res!487914 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13686))))

(declare-fun res!487920 () Bool)

(assert (=> start!64562 (=> (not res!487920) (not e!406944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64562 (= res!487920 (validMask!0 mask!3328))))

(assert (=> start!64562 e!406944))

(assert (=> start!64562 true))

(declare-fun array_inv!15408 (array!41033) Bool)

(assert (=> start!64562 (array_inv!15408 a!3186)))

(declare-fun b!726850 () Bool)

(declare-fun res!487905 () Bool)

(assert (=> b!726850 (=> (not res!487905) (not e!406944))))

(assert (=> b!726850 (= res!487905 (validKeyInArray!0 k!2102))))

(declare-fun b!726851 () Bool)

(declare-fun res!487918 () Bool)

(assert (=> b!726851 (=> (not res!487918) (not e!406941))))

(assert (=> b!726851 (= res!487918 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20055 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20055 a!3186))))))

(declare-fun b!726852 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41033 (_ BitVec 32)) SeekEntryResult!7241)

(assert (=> b!726852 (= e!406943 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19634 a!3186) j!159) a!3186 mask!3328) (Found!7241 j!159)))))

(declare-fun b!726853 () Bool)

(declare-fun res!487915 () Bool)

(assert (=> b!726853 (=> (not res!487915) (not e!406941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41033 (_ BitVec 32)) Bool)

(assert (=> b!726853 (= res!487915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!321928 () SeekEntryResult!7241)

(declare-fun b!726854 () Bool)

(assert (=> b!726854 (= e!406943 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19634 a!3186) j!159) a!3186 mask!3328) lt!321928))))

(declare-fun b!726855 () Bool)

(declare-fun e!406939 () Bool)

(assert (=> b!726855 (= e!406946 (not e!406939))))

(declare-fun res!487910 () Bool)

(assert (=> b!726855 (=> res!487910 e!406939)))

(assert (=> b!726855 (= res!487910 (or (not (is-Intermediate!7241 lt!321931)) (bvsge x!1131 (x!62340 lt!321931))))))

(assert (=> b!726855 e!406945))

(declare-fun res!487909 () Bool)

(assert (=> b!726855 (=> (not res!487909) (not e!406945))))

(assert (=> b!726855 (= res!487909 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24800 0))(
  ( (Unit!24801) )
))
(declare-fun lt!321932 () Unit!24800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24800)

(assert (=> b!726855 (= lt!321932 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726856 () Bool)

(assert (=> b!726856 (= e!406941 e!406940)))

(declare-fun res!487907 () Bool)

(assert (=> b!726856 (=> (not res!487907) (not e!406940))))

(assert (=> b!726856 (= res!487907 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19634 a!3186) j!159) mask!3328) (select (arr!19634 a!3186) j!159) a!3186 mask!3328) lt!321928))))

(assert (=> b!726856 (= lt!321928 (Intermediate!7241 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726857 () Bool)

(assert (=> b!726857 (= e!406939 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun lt!321929 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726857 (= lt!321929 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!726858 () Bool)

(assert (=> b!726858 (= e!406947 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19634 a!3186) j!159) a!3186 mask!3328) lt!321925))))

(declare-fun b!726859 () Bool)

(declare-fun res!487906 () Bool)

(assert (=> b!726859 (=> (not res!487906) (not e!406944))))

(assert (=> b!726859 (= res!487906 (and (= (size!20055 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20055 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20055 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726860 () Bool)

(declare-fun res!487911 () Bool)

(assert (=> b!726860 (=> (not res!487911) (not e!406944))))

(declare-fun arrayContainsKey!0 (array!41033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726860 (= res!487911 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64562 res!487920) b!726859))

(assert (= (and b!726859 res!487906) b!726847))

(assert (= (and b!726847 res!487912) b!726850))

(assert (= (and b!726850 res!487905) b!726860))

(assert (= (and b!726860 res!487911) b!726843))

(assert (= (and b!726843 res!487917) b!726853))

(assert (= (and b!726853 res!487915) b!726849))

(assert (= (and b!726849 res!487914) b!726851))

(assert (= (and b!726851 res!487918) b!726856))

(assert (= (and b!726856 res!487907) b!726846))

(assert (= (and b!726846 res!487919) b!726844))

(assert (= (and b!726844 c!79842) b!726854))

(assert (= (and b!726844 (not c!79842)) b!726852))

(assert (= (and b!726844 res!487916) b!726845))

(assert (= (and b!726845 res!487913) b!726855))

(assert (= (and b!726855 res!487909) b!726848))

(assert (= (and b!726848 res!487908) b!726858))

(assert (= (and b!726855 (not res!487910)) b!726857))

(declare-fun m!680947 () Bool)

(assert (=> b!726850 m!680947))

(declare-fun m!680949 () Bool)

(assert (=> b!726845 m!680949))

(declare-fun m!680951 () Bool)

(assert (=> b!726845 m!680951))

(declare-fun m!680953 () Bool)

(assert (=> b!726845 m!680953))

(assert (=> b!726845 m!680949))

(declare-fun m!680955 () Bool)

(assert (=> b!726845 m!680955))

(declare-fun m!680957 () Bool)

(assert (=> b!726845 m!680957))

(declare-fun m!680959 () Bool)

(assert (=> b!726852 m!680959))

(assert (=> b!726852 m!680959))

(declare-fun m!680961 () Bool)

(assert (=> b!726852 m!680961))

(assert (=> b!726858 m!680959))

(assert (=> b!726858 m!680959))

(declare-fun m!680963 () Bool)

(assert (=> b!726858 m!680963))

(declare-fun m!680965 () Bool)

(assert (=> b!726843 m!680965))

(assert (=> b!726847 m!680959))

(assert (=> b!726847 m!680959))

(declare-fun m!680967 () Bool)

(assert (=> b!726847 m!680967))

(declare-fun m!680969 () Bool)

(assert (=> b!726853 m!680969))

(assert (=> b!726854 m!680959))

(assert (=> b!726854 m!680959))

(declare-fun m!680971 () Bool)

(assert (=> b!726854 m!680971))

(assert (=> b!726848 m!680959))

(assert (=> b!726848 m!680959))

(declare-fun m!680973 () Bool)

(assert (=> b!726848 m!680973))

(declare-fun m!680975 () Bool)

(assert (=> b!726860 m!680975))

(assert (=> b!726856 m!680959))

(assert (=> b!726856 m!680959))

(declare-fun m!680977 () Bool)

(assert (=> b!726856 m!680977))

(assert (=> b!726856 m!680977))

(assert (=> b!726856 m!680959))

(declare-fun m!680979 () Bool)

(assert (=> b!726856 m!680979))

(declare-fun m!680981 () Bool)

(assert (=> b!726857 m!680981))

(declare-fun m!680983 () Bool)

(assert (=> b!726855 m!680983))

(declare-fun m!680985 () Bool)

(assert (=> b!726855 m!680985))

(declare-fun m!680987 () Bool)

(assert (=> b!726849 m!680987))

(declare-fun m!680989 () Bool)

(assert (=> start!64562 m!680989))

(declare-fun m!680991 () Bool)

(assert (=> start!64562 m!680991))

(declare-fun m!680993 () Bool)

(assert (=> b!726846 m!680993))

(push 1)

(assert (not b!726850))

(assert (not b!726852))

(assert (not b!726855))

