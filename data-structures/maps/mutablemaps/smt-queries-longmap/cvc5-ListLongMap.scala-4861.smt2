; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67024 () Bool)

(assert start!67024)

(declare-datatypes ((array!42403 0))(
  ( (array!42404 (arr!20295 (Array (_ BitVec 32) (_ BitVec 64))) (size!20716 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42403)

(declare-datatypes ((SeekEntryResult!7902 0))(
  ( (MissingZero!7902 (index!33975 (_ BitVec 32))) (Found!7902 (index!33976 (_ BitVec 32))) (Intermediate!7902 (undefined!8714 Bool) (index!33977 (_ BitVec 32)) (x!64946 (_ BitVec 32))) (Undefined!7902) (MissingVacant!7902 (index!33978 (_ BitVec 32))) )
))
(declare-fun lt!344250 () SeekEntryResult!7902)

(declare-fun e!430374 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!773069 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42403 (_ BitVec 32)) SeekEntryResult!7902)

(assert (=> b!773069 (= e!430374 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20295 a!3186) j!159) a!3186 mask!3328) lt!344250))))

(declare-fun b!773070 () Bool)

(declare-fun res!522923 () Bool)

(declare-fun e!430375 () Bool)

(assert (=> b!773070 (=> (not res!522923) (not e!430375))))

(declare-datatypes ((List!14350 0))(
  ( (Nil!14347) (Cons!14346 (h!15451 (_ BitVec 64)) (t!20673 List!14350)) )
))
(declare-fun arrayNoDuplicates!0 (array!42403 (_ BitVec 32) List!14350) Bool)

(assert (=> b!773070 (= res!522923 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14347))))

(declare-fun b!773071 () Bool)

(declare-fun res!522937 () Bool)

(declare-fun e!430381 () Bool)

(assert (=> b!773071 (=> (not res!522937) (not e!430381))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773071 (= res!522937 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!773072 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42403 (_ BitVec 32)) SeekEntryResult!7902)

(assert (=> b!773072 (= e!430374 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20295 a!3186) j!159) a!3186 mask!3328) (Found!7902 j!159)))))

(declare-fun b!773073 () Bool)

(declare-fun e!430372 () Bool)

(declare-fun e!430380 () Bool)

(assert (=> b!773073 (= e!430372 e!430380)))

(declare-fun res!522928 () Bool)

(assert (=> b!773073 (=> (not res!522928) (not e!430380))))

(declare-fun lt!344252 () SeekEntryResult!7902)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42403 (_ BitVec 32)) SeekEntryResult!7902)

(assert (=> b!773073 (= res!522928 (= (seekEntryOrOpen!0 (select (arr!20295 a!3186) j!159) a!3186 mask!3328) lt!344252))))

(assert (=> b!773073 (= lt!344252 (Found!7902 j!159))))

(declare-fun b!773074 () Bool)

(declare-fun res!522932 () Bool)

(assert (=> b!773074 (=> (not res!522932) (not e!430381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773074 (= res!522932 (validKeyInArray!0 k!2102))))

(declare-fun b!773075 () Bool)

(declare-fun e!430378 () Bool)

(declare-fun e!430373 () Bool)

(assert (=> b!773075 (= e!430378 (not e!430373))))

(declare-fun res!522934 () Bool)

(assert (=> b!773075 (=> res!522934 e!430373)))

(declare-fun lt!344245 () SeekEntryResult!7902)

(assert (=> b!773075 (= res!522934 (or (not (is-Intermediate!7902 lt!344245)) (bvsge x!1131 (x!64946 lt!344245))))))

(assert (=> b!773075 e!430372))

(declare-fun res!522929 () Bool)

(assert (=> b!773075 (=> (not res!522929) (not e!430372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42403 (_ BitVec 32)) Bool)

(assert (=> b!773075 (= res!522929 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26644 0))(
  ( (Unit!26645) )
))
(declare-fun lt!344249 () Unit!26644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26644)

(assert (=> b!773075 (= lt!344249 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773076 () Bool)

(declare-fun res!522924 () Bool)

(assert (=> b!773076 (=> (not res!522924) (not e!430381))))

(assert (=> b!773076 (= res!522924 (validKeyInArray!0 (select (arr!20295 a!3186) j!159)))))

(declare-fun b!773077 () Bool)

(declare-fun res!522927 () Bool)

(declare-fun e!430377 () Bool)

(assert (=> b!773077 (=> (not res!522927) (not e!430377))))

(assert (=> b!773077 (= res!522927 e!430374)))

(declare-fun c!85472 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773077 (= c!85472 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!522922 () Bool)

(assert (=> start!67024 (=> (not res!522922) (not e!430381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67024 (= res!522922 (validMask!0 mask!3328))))

(assert (=> start!67024 e!430381))

(assert (=> start!67024 true))

(declare-fun array_inv!16069 (array!42403) Bool)

(assert (=> start!67024 (array_inv!16069 a!3186)))

(declare-fun b!773078 () Bool)

(assert (=> b!773078 (= e!430381 e!430375)))

(declare-fun res!522935 () Bool)

(assert (=> b!773078 (=> (not res!522935) (not e!430375))))

(declare-fun lt!344251 () SeekEntryResult!7902)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773078 (= res!522935 (or (= lt!344251 (MissingZero!7902 i!1173)) (= lt!344251 (MissingVacant!7902 i!1173))))))

(assert (=> b!773078 (= lt!344251 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!773079 () Bool)

(declare-fun res!522926 () Bool)

(assert (=> b!773079 (=> (not res!522926) (not e!430381))))

(assert (=> b!773079 (= res!522926 (and (= (size!20716 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20716 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20716 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773080 () Bool)

(assert (=> b!773080 (= e!430373 true)))

(declare-fun lt!344244 () Unit!26644)

(declare-fun e!430376 () Unit!26644)

(assert (=> b!773080 (= lt!344244 e!430376)))

(declare-fun c!85473 () Bool)

(assert (=> b!773080 (= c!85473 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!344248 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773080 (= lt!344248 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773081 () Bool)

(declare-fun Unit!26646 () Unit!26644)

(assert (=> b!773081 (= e!430376 Unit!26646)))

(declare-fun lt!344247 () SeekEntryResult!7902)

(assert (=> b!773081 (= lt!344247 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20295 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773081 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344248 resIntermediateIndex!5 (select (arr!20295 a!3186) j!159) a!3186 mask!3328) (Found!7902 j!159))))

(declare-fun b!773082 () Bool)

(assert (=> b!773082 (= e!430375 e!430377)))

(declare-fun res!522925 () Bool)

(assert (=> b!773082 (=> (not res!522925) (not e!430377))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773082 (= res!522925 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20295 a!3186) j!159) mask!3328) (select (arr!20295 a!3186) j!159) a!3186 mask!3328) lt!344250))))

(assert (=> b!773082 (= lt!344250 (Intermediate!7902 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773083 () Bool)

(declare-fun Unit!26647 () Unit!26644)

(assert (=> b!773083 (= e!430376 Unit!26647)))

(assert (=> b!773083 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344248 (select (arr!20295 a!3186) j!159) a!3186 mask!3328) lt!344250)))

(declare-fun b!773084 () Bool)

(declare-fun res!522931 () Bool)

(assert (=> b!773084 (=> (not res!522931) (not e!430375))))

(assert (=> b!773084 (= res!522931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773085 () Bool)

(declare-fun res!522930 () Bool)

(assert (=> b!773085 (=> (not res!522930) (not e!430377))))

(assert (=> b!773085 (= res!522930 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20295 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773086 () Bool)

(assert (=> b!773086 (= e!430380 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20295 a!3186) j!159) a!3186 mask!3328) lt!344252))))

(declare-fun b!773087 () Bool)

(assert (=> b!773087 (= e!430377 e!430378)))

(declare-fun res!522936 () Bool)

(assert (=> b!773087 (=> (not res!522936) (not e!430378))))

(declare-fun lt!344253 () SeekEntryResult!7902)

(assert (=> b!773087 (= res!522936 (= lt!344253 lt!344245))))

(declare-fun lt!344246 () (_ BitVec 64))

(declare-fun lt!344254 () array!42403)

(assert (=> b!773087 (= lt!344245 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344246 lt!344254 mask!3328))))

(assert (=> b!773087 (= lt!344253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344246 mask!3328) lt!344246 lt!344254 mask!3328))))

(assert (=> b!773087 (= lt!344246 (select (store (arr!20295 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773087 (= lt!344254 (array!42404 (store (arr!20295 a!3186) i!1173 k!2102) (size!20716 a!3186)))))

(declare-fun b!773088 () Bool)

(declare-fun res!522933 () Bool)

(assert (=> b!773088 (=> (not res!522933) (not e!430375))))

(assert (=> b!773088 (= res!522933 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20716 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20716 a!3186))))))

(assert (= (and start!67024 res!522922) b!773079))

(assert (= (and b!773079 res!522926) b!773076))

(assert (= (and b!773076 res!522924) b!773074))

(assert (= (and b!773074 res!522932) b!773071))

(assert (= (and b!773071 res!522937) b!773078))

(assert (= (and b!773078 res!522935) b!773084))

(assert (= (and b!773084 res!522931) b!773070))

(assert (= (and b!773070 res!522923) b!773088))

(assert (= (and b!773088 res!522933) b!773082))

(assert (= (and b!773082 res!522925) b!773085))

(assert (= (and b!773085 res!522930) b!773077))

(assert (= (and b!773077 c!85472) b!773069))

(assert (= (and b!773077 (not c!85472)) b!773072))

(assert (= (and b!773077 res!522927) b!773087))

(assert (= (and b!773087 res!522936) b!773075))

(assert (= (and b!773075 res!522929) b!773073))

(assert (= (and b!773073 res!522928) b!773086))

(assert (= (and b!773075 (not res!522934)) b!773080))

(assert (= (and b!773080 c!85473) b!773083))

(assert (= (and b!773080 (not c!85473)) b!773081))

(declare-fun m!717907 () Bool)

(assert (=> b!773072 m!717907))

(assert (=> b!773072 m!717907))

(declare-fun m!717909 () Bool)

(assert (=> b!773072 m!717909))

(assert (=> b!773073 m!717907))

(assert (=> b!773073 m!717907))

(declare-fun m!717911 () Bool)

(assert (=> b!773073 m!717911))

(declare-fun m!717913 () Bool)

(assert (=> start!67024 m!717913))

(declare-fun m!717915 () Bool)

(assert (=> start!67024 m!717915))

(assert (=> b!773083 m!717907))

(assert (=> b!773083 m!717907))

(declare-fun m!717917 () Bool)

(assert (=> b!773083 m!717917))

(declare-fun m!717919 () Bool)

(assert (=> b!773084 m!717919))

(declare-fun m!717921 () Bool)

(assert (=> b!773085 m!717921))

(declare-fun m!717923 () Bool)

(assert (=> b!773071 m!717923))

(assert (=> b!773076 m!717907))

(assert (=> b!773076 m!717907))

(declare-fun m!717925 () Bool)

(assert (=> b!773076 m!717925))

(declare-fun m!717927 () Bool)

(assert (=> b!773074 m!717927))

(declare-fun m!717929 () Bool)

(assert (=> b!773078 m!717929))

(declare-fun m!717931 () Bool)

(assert (=> b!773075 m!717931))

(declare-fun m!717933 () Bool)

(assert (=> b!773075 m!717933))

(declare-fun m!717935 () Bool)

(assert (=> b!773070 m!717935))

(assert (=> b!773081 m!717907))

(assert (=> b!773081 m!717907))

(assert (=> b!773081 m!717909))

(assert (=> b!773081 m!717907))

(declare-fun m!717937 () Bool)

(assert (=> b!773081 m!717937))

(assert (=> b!773082 m!717907))

(assert (=> b!773082 m!717907))

(declare-fun m!717939 () Bool)

(assert (=> b!773082 m!717939))

(assert (=> b!773082 m!717939))

(assert (=> b!773082 m!717907))

(declare-fun m!717941 () Bool)

(assert (=> b!773082 m!717941))

(assert (=> b!773086 m!717907))

(assert (=> b!773086 m!717907))

(declare-fun m!717943 () Bool)

(assert (=> b!773086 m!717943))

(declare-fun m!717945 () Bool)

(assert (=> b!773080 m!717945))

(declare-fun m!717947 () Bool)

(assert (=> b!773087 m!717947))

(declare-fun m!717949 () Bool)

(assert (=> b!773087 m!717949))

(declare-fun m!717951 () Bool)

(assert (=> b!773087 m!717951))

(assert (=> b!773087 m!717949))

(declare-fun m!717953 () Bool)

(assert (=> b!773087 m!717953))

(declare-fun m!717955 () Bool)

(assert (=> b!773087 m!717955))

(assert (=> b!773069 m!717907))

(assert (=> b!773069 m!717907))

(declare-fun m!717957 () Bool)

(assert (=> b!773069 m!717957))

(push 1)

