; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65190 () Bool)

(assert start!65190)

(declare-fun b!736842 () Bool)

(declare-fun e!412200 () Bool)

(declare-fun e!412193 () Bool)

(assert (=> b!736842 (= e!412200 e!412193)))

(declare-fun res!495350 () Bool)

(assert (=> b!736842 (=> res!495350 e!412193)))

(declare-datatypes ((array!41316 0))(
  ( (array!41317 (arr!19768 (Array (_ BitVec 32) (_ BitVec 64))) (size!20189 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41316)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!326879 () (_ BitVec 32))

(assert (=> b!736842 (= res!495350 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326879 #b00000000000000000000000000000000) (bvsge lt!326879 (size!20189 a!3186))))))

(declare-datatypes ((Unit!25118 0))(
  ( (Unit!25119) )
))
(declare-fun lt!326875 () Unit!25118)

(declare-fun e!412203 () Unit!25118)

(assert (=> b!736842 (= lt!326875 e!412203)))

(declare-fun c!81134 () Bool)

(declare-fun lt!326877 () Bool)

(assert (=> b!736842 (= c!81134 lt!326877)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736842 (= lt!326877 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736842 (= lt!326879 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736843 () Bool)

(assert (=> b!736843 (= e!412193 true)))

(declare-datatypes ((SeekEntryResult!7375 0))(
  ( (MissingZero!7375 (index!31867 (_ BitVec 32))) (Found!7375 (index!31868 (_ BitVec 32))) (Intermediate!7375 (undefined!8187 Bool) (index!31869 (_ BitVec 32)) (x!62894 (_ BitVec 32))) (Undefined!7375) (MissingVacant!7375 (index!31870 (_ BitVec 32))) )
))
(declare-fun lt!326880 () SeekEntryResult!7375)

(declare-fun lt!326878 () (_ BitVec 64))

(declare-fun lt!326872 () array!41316)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41316 (_ BitVec 32)) SeekEntryResult!7375)

(assert (=> b!736843 (= lt!326880 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326879 lt!326878 lt!326872 mask!3328))))

(declare-fun lt!326876 () SeekEntryResult!7375)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!412194 () Bool)

(declare-fun b!736844 () Bool)

(assert (=> b!736844 (= e!412194 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19768 a!3186) j!159) a!3186 mask!3328) lt!326876))))

(declare-fun b!736845 () Bool)

(declare-fun e!412199 () Bool)

(declare-fun e!412192 () Bool)

(assert (=> b!736845 (= e!412199 e!412192)))

(declare-fun res!495338 () Bool)

(assert (=> b!736845 (=> (not res!495338) (not e!412192))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736845 (= res!495338 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19768 a!3186) j!159) mask!3328) (select (arr!19768 a!3186) j!159) a!3186 mask!3328) lt!326876))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!736845 (= lt!326876 (Intermediate!7375 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736846 () Bool)

(declare-fun e!412201 () Bool)

(declare-fun e!412202 () Bool)

(assert (=> b!736846 (= e!412201 e!412202)))

(declare-fun res!495344 () Bool)

(assert (=> b!736846 (=> (not res!495344) (not e!412202))))

(declare-fun lt!326870 () SeekEntryResult!7375)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41316 (_ BitVec 32)) SeekEntryResult!7375)

(assert (=> b!736846 (= res!495344 (= (seekEntryOrOpen!0 (select (arr!19768 a!3186) j!159) a!3186 mask!3328) lt!326870))))

(assert (=> b!736846 (= lt!326870 (Found!7375 j!159))))

(declare-fun b!736847 () Bool)

(declare-fun e!412197 () Bool)

(assert (=> b!736847 (= e!412192 e!412197)))

(declare-fun res!495342 () Bool)

(assert (=> b!736847 (=> (not res!495342) (not e!412197))))

(declare-fun lt!326869 () SeekEntryResult!7375)

(declare-fun lt!326882 () SeekEntryResult!7375)

(assert (=> b!736847 (= res!495342 (= lt!326869 lt!326882))))

(assert (=> b!736847 (= lt!326882 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326878 lt!326872 mask!3328))))

(assert (=> b!736847 (= lt!326869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326878 mask!3328) lt!326878 lt!326872 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!736847 (= lt!326878 (select (store (arr!19768 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!736847 (= lt!326872 (array!41317 (store (arr!19768 a!3186) i!1173 k0!2102) (size!20189 a!3186)))))

(declare-fun res!495345 () Bool)

(declare-fun e!412198 () Bool)

(assert (=> start!65190 (=> (not res!495345) (not e!412198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65190 (= res!495345 (validMask!0 mask!3328))))

(assert (=> start!65190 e!412198))

(assert (=> start!65190 true))

(declare-fun array_inv!15542 (array!41316) Bool)

(assert (=> start!65190 (array_inv!15542 a!3186)))

(declare-fun b!736848 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41316 (_ BitVec 32)) SeekEntryResult!7375)

(assert (=> b!736848 (= e!412194 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19768 a!3186) j!159) a!3186 mask!3328) (Found!7375 j!159)))))

(declare-fun b!736849 () Bool)

(declare-fun res!495352 () Bool)

(assert (=> b!736849 (=> (not res!495352) (not e!412199))))

(declare-datatypes ((List!13823 0))(
  ( (Nil!13820) (Cons!13819 (h!14891 (_ BitVec 64)) (t!20146 List!13823)) )
))
(declare-fun arrayNoDuplicates!0 (array!41316 (_ BitVec 32) List!13823) Bool)

(assert (=> b!736849 (= res!495352 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13820))))

(declare-fun b!736850 () Bool)

(assert (=> b!736850 (= e!412198 e!412199)))

(declare-fun res!495349 () Bool)

(assert (=> b!736850 (=> (not res!495349) (not e!412199))))

(declare-fun lt!326873 () SeekEntryResult!7375)

(assert (=> b!736850 (= res!495349 (or (= lt!326873 (MissingZero!7375 i!1173)) (= lt!326873 (MissingVacant!7375 i!1173))))))

(assert (=> b!736850 (= lt!326873 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!736851 () Bool)

(declare-fun res!495340 () Bool)

(assert (=> b!736851 (=> (not res!495340) (not e!412192))))

(assert (=> b!736851 (= res!495340 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19768 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736852 () Bool)

(declare-fun res!495354 () Bool)

(assert (=> b!736852 (=> (not res!495354) (not e!412198))))

(declare-fun arrayContainsKey!0 (array!41316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736852 (= res!495354 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736853 () Bool)

(declare-fun Unit!25120 () Unit!25118)

(assert (=> b!736853 (= e!412203 Unit!25120)))

(declare-fun lt!326881 () SeekEntryResult!7375)

(assert (=> b!736853 (= lt!326881 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19768 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326874 () SeekEntryResult!7375)

(assert (=> b!736853 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326879 resIntermediateIndex!5 (select (arr!19768 a!3186) j!159) a!3186 mask!3328) lt!326874)))

(declare-fun b!736854 () Bool)

(declare-fun res!495348 () Bool)

(assert (=> b!736854 (=> (not res!495348) (not e!412198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736854 (= res!495348 (validKeyInArray!0 k0!2102))))

(declare-fun b!736855 () Bool)

(assert (=> b!736855 (= e!412197 (not e!412200))))

(declare-fun res!495346 () Bool)

(assert (=> b!736855 (=> res!495346 e!412200)))

(get-info :version)

(assert (=> b!736855 (= res!495346 (or (not ((_ is Intermediate!7375) lt!326882)) (bvsge x!1131 (x!62894 lt!326882))))))

(assert (=> b!736855 (= lt!326874 (Found!7375 j!159))))

(assert (=> b!736855 e!412201))

(declare-fun res!495343 () Bool)

(assert (=> b!736855 (=> (not res!495343) (not e!412201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41316 (_ BitVec 32)) Bool)

(assert (=> b!736855 (= res!495343 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326871 () Unit!25118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41316 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25118)

(assert (=> b!736855 (= lt!326871 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736856 () Bool)

(declare-fun res!495351 () Bool)

(assert (=> b!736856 (=> (not res!495351) (not e!412199))))

(assert (=> b!736856 (= res!495351 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20189 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20189 a!3186))))))

(declare-fun b!736857 () Bool)

(assert (=> b!736857 (= e!412202 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19768 a!3186) j!159) a!3186 mask!3328) lt!326870))))

(declare-fun e!412196 () Bool)

(declare-fun b!736858 () Bool)

(assert (=> b!736858 (= e!412196 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326879 (select (arr!19768 a!3186) j!159) a!3186 mask!3328) lt!326876)))))

(declare-fun b!736859 () Bool)

(declare-fun res!495339 () Bool)

(assert (=> b!736859 (=> (not res!495339) (not e!412199))))

(assert (=> b!736859 (= res!495339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736860 () Bool)

(declare-fun res!495347 () Bool)

(assert (=> b!736860 (=> (not res!495347) (not e!412192))))

(assert (=> b!736860 (= res!495347 e!412194)))

(declare-fun c!81133 () Bool)

(assert (=> b!736860 (= c!81133 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736861 () Bool)

(declare-fun res!495337 () Bool)

(assert (=> b!736861 (=> (not res!495337) (not e!412198))))

(assert (=> b!736861 (= res!495337 (and (= (size!20189 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20189 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20189 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736862 () Bool)

(declare-fun res!495353 () Bool)

(assert (=> b!736862 (=> (not res!495353) (not e!412198))))

(assert (=> b!736862 (= res!495353 (validKeyInArray!0 (select (arr!19768 a!3186) j!159)))))

(declare-fun b!736863 () Bool)

(assert (=> b!736863 (= e!412196 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326879 resIntermediateIndex!5 (select (arr!19768 a!3186) j!159) a!3186 mask!3328) lt!326874)))))

(declare-fun b!736864 () Bool)

(declare-fun Unit!25121 () Unit!25118)

(assert (=> b!736864 (= e!412203 Unit!25121)))

(assert (=> b!736864 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326879 (select (arr!19768 a!3186) j!159) a!3186 mask!3328) lt!326876)))

(declare-fun b!736865 () Bool)

(declare-fun res!495341 () Bool)

(assert (=> b!736865 (=> res!495341 e!412193)))

(assert (=> b!736865 (= res!495341 e!412196)))

(declare-fun c!81135 () Bool)

(assert (=> b!736865 (= c!81135 lt!326877)))

(assert (= (and start!65190 res!495345) b!736861))

(assert (= (and b!736861 res!495337) b!736862))

(assert (= (and b!736862 res!495353) b!736854))

(assert (= (and b!736854 res!495348) b!736852))

(assert (= (and b!736852 res!495354) b!736850))

(assert (= (and b!736850 res!495349) b!736859))

(assert (= (and b!736859 res!495339) b!736849))

(assert (= (and b!736849 res!495352) b!736856))

(assert (= (and b!736856 res!495351) b!736845))

(assert (= (and b!736845 res!495338) b!736851))

(assert (= (and b!736851 res!495340) b!736860))

(assert (= (and b!736860 c!81133) b!736844))

(assert (= (and b!736860 (not c!81133)) b!736848))

(assert (= (and b!736860 res!495347) b!736847))

(assert (= (and b!736847 res!495342) b!736855))

(assert (= (and b!736855 res!495343) b!736846))

(assert (= (and b!736846 res!495344) b!736857))

(assert (= (and b!736855 (not res!495346)) b!736842))

(assert (= (and b!736842 c!81134) b!736864))

(assert (= (and b!736842 (not c!81134)) b!736853))

(assert (= (and b!736842 (not res!495350)) b!736865))

(assert (= (and b!736865 c!81135) b!736858))

(assert (= (and b!736865 (not c!81135)) b!736863))

(assert (= (and b!736865 (not res!495341)) b!736843))

(declare-fun m!688939 () Bool)

(assert (=> b!736844 m!688939))

(assert (=> b!736844 m!688939))

(declare-fun m!688941 () Bool)

(assert (=> b!736844 m!688941))

(declare-fun m!688943 () Bool)

(assert (=> b!736842 m!688943))

(assert (=> b!736858 m!688939))

(assert (=> b!736858 m!688939))

(declare-fun m!688945 () Bool)

(assert (=> b!736858 m!688945))

(assert (=> b!736864 m!688939))

(assert (=> b!736864 m!688939))

(assert (=> b!736864 m!688945))

(assert (=> b!736857 m!688939))

(assert (=> b!736857 m!688939))

(declare-fun m!688947 () Bool)

(assert (=> b!736857 m!688947))

(assert (=> b!736862 m!688939))

(assert (=> b!736862 m!688939))

(declare-fun m!688949 () Bool)

(assert (=> b!736862 m!688949))

(assert (=> b!736845 m!688939))

(assert (=> b!736845 m!688939))

(declare-fun m!688951 () Bool)

(assert (=> b!736845 m!688951))

(assert (=> b!736845 m!688951))

(assert (=> b!736845 m!688939))

(declare-fun m!688953 () Bool)

(assert (=> b!736845 m!688953))

(declare-fun m!688955 () Bool)

(assert (=> b!736852 m!688955))

(declare-fun m!688957 () Bool)

(assert (=> b!736855 m!688957))

(declare-fun m!688959 () Bool)

(assert (=> b!736855 m!688959))

(assert (=> b!736848 m!688939))

(assert (=> b!736848 m!688939))

(declare-fun m!688961 () Bool)

(assert (=> b!736848 m!688961))

(declare-fun m!688963 () Bool)

(assert (=> b!736851 m!688963))

(declare-fun m!688965 () Bool)

(assert (=> b!736850 m!688965))

(declare-fun m!688967 () Bool)

(assert (=> b!736843 m!688967))

(declare-fun m!688969 () Bool)

(assert (=> b!736849 m!688969))

(declare-fun m!688971 () Bool)

(assert (=> b!736847 m!688971))

(declare-fun m!688973 () Bool)

(assert (=> b!736847 m!688973))

(declare-fun m!688975 () Bool)

(assert (=> b!736847 m!688975))

(declare-fun m!688977 () Bool)

(assert (=> b!736847 m!688977))

(assert (=> b!736847 m!688973))

(declare-fun m!688979 () Bool)

(assert (=> b!736847 m!688979))

(declare-fun m!688981 () Bool)

(assert (=> b!736854 m!688981))

(declare-fun m!688983 () Bool)

(assert (=> b!736859 m!688983))

(assert (=> b!736846 m!688939))

(assert (=> b!736846 m!688939))

(declare-fun m!688985 () Bool)

(assert (=> b!736846 m!688985))

(assert (=> b!736853 m!688939))

(assert (=> b!736853 m!688939))

(assert (=> b!736853 m!688961))

(assert (=> b!736853 m!688939))

(declare-fun m!688987 () Bool)

(assert (=> b!736853 m!688987))

(assert (=> b!736863 m!688939))

(assert (=> b!736863 m!688939))

(assert (=> b!736863 m!688987))

(declare-fun m!688989 () Bool)

(assert (=> start!65190 m!688989))

(declare-fun m!688991 () Bool)

(assert (=> start!65190 m!688991))

(check-sat (not b!736857) (not b!736863) (not b!736844) (not b!736864) (not b!736850) (not b!736845) (not b!736843) (not b!736855) (not b!736849) (not b!736862) (not b!736848) (not b!736842) (not b!736853) (not b!736847) (not start!65190) (not b!736846) (not b!736858) (not b!736859) (not b!736852) (not b!736854))
(check-sat)
