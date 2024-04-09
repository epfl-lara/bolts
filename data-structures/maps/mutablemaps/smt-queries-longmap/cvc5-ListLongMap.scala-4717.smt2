; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65380 () Bool)

(assert start!65380)

(declare-fun b!742992 () Bool)

(declare-fun e!415192 () Bool)

(declare-fun e!415194 () Bool)

(assert (=> b!742992 (= e!415192 e!415194)))

(declare-fun res!500259 () Bool)

(assert (=> b!742992 (=> (not res!500259) (not e!415194))))

(declare-datatypes ((array!41506 0))(
  ( (array!41507 (arr!19863 (Array (_ BitVec 32) (_ BitVec 64))) (size!20284 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41506)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7470 0))(
  ( (MissingZero!7470 (index!32247 (_ BitVec 32))) (Found!7470 (index!32248 (_ BitVec 32))) (Intermediate!7470 (undefined!8282 Bool) (index!32249 (_ BitVec 32)) (x!63245 (_ BitVec 32))) (Undefined!7470) (MissingVacant!7470 (index!32250 (_ BitVec 32))) )
))
(declare-fun lt!330089 () SeekEntryResult!7470)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41506 (_ BitVec 32)) SeekEntryResult!7470)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742992 (= res!500259 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19863 a!3186) j!159) mask!3328) (select (arr!19863 a!3186) j!159) a!3186 mask!3328) lt!330089))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742992 (= lt!330089 (Intermediate!7470 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742993 () Bool)

(declare-fun res!500268 () Bool)

(declare-fun e!415195 () Bool)

(assert (=> b!742993 (=> res!500268 e!415195)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!330082 () (_ BitVec 64))

(declare-fun lt!330087 () SeekEntryResult!7470)

(assert (=> b!742993 (= res!500268 (or (not (= (select (store (arr!19863 a!3186) i!1173 k!2102) index!1321) lt!330082)) (undefined!8282 lt!330087)))))

(declare-fun b!742994 () Bool)

(declare-fun e!415200 () Bool)

(declare-fun lt!330086 () SeekEntryResult!7470)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41506 (_ BitVec 32)) SeekEntryResult!7470)

(assert (=> b!742994 (= e!415200 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19863 a!3186) j!159) a!3186 mask!3328) lt!330086))))

(declare-fun b!742995 () Bool)

(declare-fun res!500260 () Bool)

(assert (=> b!742995 (=> res!500260 e!415195)))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!742995 (= res!500260 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19863 a!3186) j!159) a!3186 mask!3328) (Found!7470 j!159))))))

(declare-fun res!500263 () Bool)

(declare-fun e!415197 () Bool)

(assert (=> start!65380 (=> (not res!500263) (not e!415197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65380 (= res!500263 (validMask!0 mask!3328))))

(assert (=> start!65380 e!415197))

(assert (=> start!65380 true))

(declare-fun array_inv!15637 (array!41506) Bool)

(assert (=> start!65380 (array_inv!15637 a!3186)))

(declare-fun b!742996 () Bool)

(declare-fun e!415198 () Bool)

(assert (=> b!742996 (= e!415198 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19863 a!3186) j!159) a!3186 mask!3328) (Found!7470 j!159)))))

(declare-fun b!742997 () Bool)

(declare-fun res!500270 () Bool)

(assert (=> b!742997 (=> (not res!500270) (not e!415192))))

(assert (=> b!742997 (= res!500270 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20284 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20284 a!3186))))))

(declare-fun b!742998 () Bool)

(declare-fun e!415193 () Bool)

(assert (=> b!742998 (= e!415194 e!415193)))

(declare-fun res!500271 () Bool)

(assert (=> b!742998 (=> (not res!500271) (not e!415193))))

(declare-fun lt!330084 () SeekEntryResult!7470)

(assert (=> b!742998 (= res!500271 (= lt!330084 lt!330087))))

(declare-fun lt!330088 () array!41506)

(assert (=> b!742998 (= lt!330087 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330082 lt!330088 mask!3328))))

(assert (=> b!742998 (= lt!330084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330082 mask!3328) lt!330082 lt!330088 mask!3328))))

(assert (=> b!742998 (= lt!330082 (select (store (arr!19863 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742998 (= lt!330088 (array!41507 (store (arr!19863 a!3186) i!1173 k!2102) (size!20284 a!3186)))))

(declare-fun b!742999 () Bool)

(declare-fun res!500265 () Bool)

(assert (=> b!742999 (=> (not res!500265) (not e!415197))))

(assert (=> b!742999 (= res!500265 (and (= (size!20284 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20284 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20284 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743000 () Bool)

(declare-fun res!500261 () Bool)

(assert (=> b!743000 (=> (not res!500261) (not e!415197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743000 (= res!500261 (validKeyInArray!0 k!2102))))

(declare-fun b!743001 () Bool)

(declare-fun res!500258 () Bool)

(assert (=> b!743001 (=> (not res!500258) (not e!415194))))

(assert (=> b!743001 (= res!500258 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19863 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743002 () Bool)

(assert (=> b!743002 (= e!415198 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19863 a!3186) j!159) a!3186 mask!3328) lt!330089))))

(declare-fun b!743003 () Bool)

(assert (=> b!743003 (= e!415197 e!415192)))

(declare-fun res!500254 () Bool)

(assert (=> b!743003 (=> (not res!500254) (not e!415192))))

(declare-fun lt!330085 () SeekEntryResult!7470)

(assert (=> b!743003 (= res!500254 (or (= lt!330085 (MissingZero!7470 i!1173)) (= lt!330085 (MissingVacant!7470 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41506 (_ BitVec 32)) SeekEntryResult!7470)

(assert (=> b!743003 (= lt!330085 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!743004 () Bool)

(declare-fun res!500269 () Bool)

(assert (=> b!743004 (=> (not res!500269) (not e!415197))))

(assert (=> b!743004 (= res!500269 (validKeyInArray!0 (select (arr!19863 a!3186) j!159)))))

(declare-fun b!743005 () Bool)

(declare-fun res!500255 () Bool)

(assert (=> b!743005 (=> (not res!500255) (not e!415192))))

(declare-datatypes ((List!13918 0))(
  ( (Nil!13915) (Cons!13914 (h!14986 (_ BitVec 64)) (t!20241 List!13918)) )
))
(declare-fun arrayNoDuplicates!0 (array!41506 (_ BitVec 32) List!13918) Bool)

(assert (=> b!743005 (= res!500255 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13915))))

(declare-fun b!743006 () Bool)

(declare-fun res!500267 () Bool)

(assert (=> b!743006 (=> res!500267 e!415195)))

(assert (=> b!743006 (= res!500267 (not (= (seekEntryOrOpen!0 lt!330082 lt!330088 mask!3328) (Found!7470 index!1321))))))

(declare-fun b!743007 () Bool)

(declare-fun res!500266 () Bool)

(assert (=> b!743007 (=> (not res!500266) (not e!415194))))

(assert (=> b!743007 (= res!500266 e!415198)))

(declare-fun c!81750 () Bool)

(assert (=> b!743007 (= c!81750 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743008 () Bool)

(assert (=> b!743008 (= e!415195 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!743009 () Bool)

(assert (=> b!743009 (= e!415193 (not e!415195))))

(declare-fun res!500264 () Bool)

(assert (=> b!743009 (=> res!500264 e!415195)))

(assert (=> b!743009 (= res!500264 (or (not (is-Intermediate!7470 lt!330087)) (bvslt x!1131 (x!63245 lt!330087)) (not (= x!1131 (x!63245 lt!330087))) (not (= index!1321 (index!32249 lt!330087)))))))

(declare-fun e!415199 () Bool)

(assert (=> b!743009 e!415199))

(declare-fun res!500256 () Bool)

(assert (=> b!743009 (=> (not res!500256) (not e!415199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41506 (_ BitVec 32)) Bool)

(assert (=> b!743009 (= res!500256 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25420 0))(
  ( (Unit!25421) )
))
(declare-fun lt!330083 () Unit!25420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25420)

(assert (=> b!743009 (= lt!330083 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743010 () Bool)

(declare-fun res!500253 () Bool)

(assert (=> b!743010 (=> (not res!500253) (not e!415192))))

(assert (=> b!743010 (= res!500253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743011 () Bool)

(declare-fun res!500257 () Bool)

(assert (=> b!743011 (=> (not res!500257) (not e!415197))))

(declare-fun arrayContainsKey!0 (array!41506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743011 (= res!500257 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743012 () Bool)

(assert (=> b!743012 (= e!415199 e!415200)))

(declare-fun res!500262 () Bool)

(assert (=> b!743012 (=> (not res!500262) (not e!415200))))

(assert (=> b!743012 (= res!500262 (= (seekEntryOrOpen!0 (select (arr!19863 a!3186) j!159) a!3186 mask!3328) lt!330086))))

(assert (=> b!743012 (= lt!330086 (Found!7470 j!159))))

(assert (= (and start!65380 res!500263) b!742999))

(assert (= (and b!742999 res!500265) b!743004))

(assert (= (and b!743004 res!500269) b!743000))

(assert (= (and b!743000 res!500261) b!743011))

(assert (= (and b!743011 res!500257) b!743003))

(assert (= (and b!743003 res!500254) b!743010))

(assert (= (and b!743010 res!500253) b!743005))

(assert (= (and b!743005 res!500255) b!742997))

(assert (= (and b!742997 res!500270) b!742992))

(assert (= (and b!742992 res!500259) b!743001))

(assert (= (and b!743001 res!500258) b!743007))

(assert (= (and b!743007 c!81750) b!743002))

(assert (= (and b!743007 (not c!81750)) b!742996))

(assert (= (and b!743007 res!500266) b!742998))

(assert (= (and b!742998 res!500271) b!743009))

(assert (= (and b!743009 res!500256) b!743012))

(assert (= (and b!743012 res!500262) b!742994))

(assert (= (and b!743009 (not res!500264)) b!742995))

(assert (= (and b!742995 (not res!500260)) b!742993))

(assert (= (and b!742993 (not res!500268)) b!743006))

(assert (= (and b!743006 (not res!500267)) b!743008))

(declare-fun m!693841 () Bool)

(assert (=> b!743003 m!693841))

(declare-fun m!693843 () Bool)

(assert (=> b!743010 m!693843))

(declare-fun m!693845 () Bool)

(assert (=> b!743004 m!693845))

(assert (=> b!743004 m!693845))

(declare-fun m!693847 () Bool)

(assert (=> b!743004 m!693847))

(declare-fun m!693849 () Bool)

(assert (=> start!65380 m!693849))

(declare-fun m!693851 () Bool)

(assert (=> start!65380 m!693851))

(declare-fun m!693853 () Bool)

(assert (=> b!743006 m!693853))

(declare-fun m!693855 () Bool)

(assert (=> b!743001 m!693855))

(declare-fun m!693857 () Bool)

(assert (=> b!743005 m!693857))

(assert (=> b!742994 m!693845))

(assert (=> b!742994 m!693845))

(declare-fun m!693859 () Bool)

(assert (=> b!742994 m!693859))

(declare-fun m!693861 () Bool)

(assert (=> b!743009 m!693861))

(declare-fun m!693863 () Bool)

(assert (=> b!743009 m!693863))

(declare-fun m!693865 () Bool)

(assert (=> b!743000 m!693865))

(assert (=> b!742995 m!693845))

(assert (=> b!742995 m!693845))

(declare-fun m!693867 () Bool)

(assert (=> b!742995 m!693867))

(declare-fun m!693869 () Bool)

(assert (=> b!742998 m!693869))

(declare-fun m!693871 () Bool)

(assert (=> b!742998 m!693871))

(declare-fun m!693873 () Bool)

(assert (=> b!742998 m!693873))

(declare-fun m!693875 () Bool)

(assert (=> b!742998 m!693875))

(assert (=> b!742998 m!693875))

(declare-fun m!693877 () Bool)

(assert (=> b!742998 m!693877))

(declare-fun m!693879 () Bool)

(assert (=> b!743011 m!693879))

(assert (=> b!742996 m!693845))

(assert (=> b!742996 m!693845))

(assert (=> b!742996 m!693867))

(assert (=> b!743002 m!693845))

(assert (=> b!743002 m!693845))

(declare-fun m!693881 () Bool)

(assert (=> b!743002 m!693881))

(assert (=> b!742993 m!693869))

(declare-fun m!693883 () Bool)

(assert (=> b!742993 m!693883))

(assert (=> b!742992 m!693845))

(assert (=> b!742992 m!693845))

(declare-fun m!693885 () Bool)

(assert (=> b!742992 m!693885))

(assert (=> b!742992 m!693885))

(assert (=> b!742992 m!693845))

(declare-fun m!693887 () Bool)

(assert (=> b!742992 m!693887))

(assert (=> b!743012 m!693845))

(assert (=> b!743012 m!693845))

(declare-fun m!693889 () Bool)

(assert (=> b!743012 m!693889))

(push 1)

