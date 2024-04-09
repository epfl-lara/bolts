; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64484 () Bool)

(assert start!64484)

(declare-fun b!724838 () Bool)

(declare-fun res!486146 () Bool)

(declare-fun e!405993 () Bool)

(assert (=> b!724838 (=> (not res!486146) (not e!405993))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40955 0))(
  ( (array!40956 (arr!19595 (Array (_ BitVec 32) (_ BitVec 64))) (size!20016 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40955)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!724838 (= res!486146 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19595 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!724839 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405990 () Bool)

(declare-datatypes ((SeekEntryResult!7202 0))(
  ( (MissingZero!7202 (index!31175 (_ BitVec 32))) (Found!7202 (index!31176 (_ BitVec 32))) (Intermediate!7202 (undefined!8014 Bool) (index!31177 (_ BitVec 32)) (x!62197 (_ BitVec 32))) (Undefined!7202) (MissingVacant!7202 (index!31178 (_ BitVec 32))) )
))
(declare-fun lt!321149 () SeekEntryResult!7202)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40955 (_ BitVec 32)) SeekEntryResult!7202)

(assert (=> b!724839 (= e!405990 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19595 a!3186) j!159) a!3186 mask!3328) lt!321149))))

(declare-fun res!486134 () Bool)

(declare-fun e!405989 () Bool)

(assert (=> start!64484 (=> (not res!486134) (not e!405989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64484 (= res!486134 (validMask!0 mask!3328))))

(assert (=> start!64484 e!405989))

(assert (=> start!64484 true))

(declare-fun array_inv!15369 (array!40955) Bool)

(assert (=> start!64484 (array_inv!15369 a!3186)))

(declare-fun b!724840 () Bool)

(declare-fun res!486137 () Bool)

(declare-fun e!405988 () Bool)

(assert (=> b!724840 (=> (not res!486137) (not e!405988))))

(declare-datatypes ((List!13650 0))(
  ( (Nil!13647) (Cons!13646 (h!14703 (_ BitVec 64)) (t!19973 List!13650)) )
))
(declare-fun arrayNoDuplicates!0 (array!40955 (_ BitVec 32) List!13650) Bool)

(assert (=> b!724840 (= res!486137 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13647))))

(declare-fun b!724841 () Bool)

(declare-fun res!486145 () Bool)

(assert (=> b!724841 (=> (not res!486145) (not e!405989))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!724841 (= res!486145 (validKeyInArray!0 k!2102))))

(declare-fun e!405987 () Bool)

(declare-fun b!724842 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40955 (_ BitVec 32)) SeekEntryResult!7202)

(assert (=> b!724842 (= e!405987 (= (seekEntryOrOpen!0 (select (arr!19595 a!3186) j!159) a!3186 mask!3328) (Found!7202 j!159)))))

(declare-fun b!724843 () Bool)

(declare-fun e!405991 () Bool)

(assert (=> b!724843 (= e!405993 e!405991)))

(declare-fun res!486141 () Bool)

(assert (=> b!724843 (=> (not res!486141) (not e!405991))))

(declare-fun lt!321146 () (_ BitVec 64))

(declare-fun lt!321147 () array!40955)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!724843 (= res!486141 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321146 mask!3328) lt!321146 lt!321147 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321146 lt!321147 mask!3328)))))

(assert (=> b!724843 (= lt!321146 (select (store (arr!19595 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!724843 (= lt!321147 (array!40956 (store (arr!19595 a!3186) i!1173 k!2102) (size!20016 a!3186)))))

(declare-fun b!724844 () Bool)

(declare-fun res!486135 () Bool)

(assert (=> b!724844 (=> (not res!486135) (not e!405989))))

(assert (=> b!724844 (= res!486135 (and (= (size!20016 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20016 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20016 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!724845 () Bool)

(declare-fun res!486143 () Bool)

(assert (=> b!724845 (=> (not res!486143) (not e!405988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40955 (_ BitVec 32)) Bool)

(assert (=> b!724845 (= res!486143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!724846 () Bool)

(assert (=> b!724846 (= e!405991 (not true))))

(assert (=> b!724846 e!405987))

(declare-fun res!486138 () Bool)

(assert (=> b!724846 (=> (not res!486138) (not e!405987))))

(assert (=> b!724846 (= res!486138 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24722 0))(
  ( (Unit!24723) )
))
(declare-fun lt!321145 () Unit!24722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24722)

(assert (=> b!724846 (= lt!321145 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!724847 () Bool)

(assert (=> b!724847 (= e!405988 e!405993)))

(declare-fun res!486144 () Bool)

(assert (=> b!724847 (=> (not res!486144) (not e!405993))))

(assert (=> b!724847 (= res!486144 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19595 a!3186) j!159) mask!3328) (select (arr!19595 a!3186) j!159) a!3186 mask!3328) lt!321149))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!724847 (= lt!321149 (Intermediate!7202 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!724848 () Bool)

(declare-fun res!486140 () Bool)

(assert (=> b!724848 (=> (not res!486140) (not e!405989))))

(declare-fun arrayContainsKey!0 (array!40955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!724848 (= res!486140 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!724849 () Bool)

(declare-fun res!486147 () Bool)

(assert (=> b!724849 (=> (not res!486147) (not e!405993))))

(assert (=> b!724849 (= res!486147 e!405990)))

(declare-fun c!79725 () Bool)

(assert (=> b!724849 (= c!79725 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!724850 () Bool)

(declare-fun res!486139 () Bool)

(assert (=> b!724850 (=> (not res!486139) (not e!405989))))

(assert (=> b!724850 (= res!486139 (validKeyInArray!0 (select (arr!19595 a!3186) j!159)))))

(declare-fun b!724851 () Bool)

(assert (=> b!724851 (= e!405989 e!405988)))

(declare-fun res!486142 () Bool)

(assert (=> b!724851 (=> (not res!486142) (not e!405988))))

(declare-fun lt!321148 () SeekEntryResult!7202)

(assert (=> b!724851 (= res!486142 (or (= lt!321148 (MissingZero!7202 i!1173)) (= lt!321148 (MissingVacant!7202 i!1173))))))

(assert (=> b!724851 (= lt!321148 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!724852 () Bool)

(declare-fun res!486136 () Bool)

(assert (=> b!724852 (=> (not res!486136) (not e!405988))))

(assert (=> b!724852 (= res!486136 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20016 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20016 a!3186))))))

(declare-fun b!724853 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40955 (_ BitVec 32)) SeekEntryResult!7202)

(assert (=> b!724853 (= e!405990 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19595 a!3186) j!159) a!3186 mask!3328) (Found!7202 j!159)))))

(assert (= (and start!64484 res!486134) b!724844))

(assert (= (and b!724844 res!486135) b!724850))

(assert (= (and b!724850 res!486139) b!724841))

(assert (= (and b!724841 res!486145) b!724848))

(assert (= (and b!724848 res!486140) b!724851))

(assert (= (and b!724851 res!486142) b!724845))

(assert (= (and b!724845 res!486143) b!724840))

(assert (= (and b!724840 res!486137) b!724852))

(assert (= (and b!724852 res!486136) b!724847))

(assert (= (and b!724847 res!486144) b!724838))

(assert (= (and b!724838 res!486146) b!724849))

(assert (= (and b!724849 c!79725) b!724839))

(assert (= (and b!724849 (not c!79725)) b!724853))

(assert (= (and b!724849 res!486147) b!724843))

(assert (= (and b!724843 res!486141) b!724846))

(assert (= (and b!724846 res!486138) b!724842))

(declare-fun m!679145 () Bool)

(assert (=> b!724851 m!679145))

(declare-fun m!679147 () Bool)

(assert (=> b!724843 m!679147))

(declare-fun m!679149 () Bool)

(assert (=> b!724843 m!679149))

(assert (=> b!724843 m!679147))

(declare-fun m!679151 () Bool)

(assert (=> b!724843 m!679151))

(declare-fun m!679153 () Bool)

(assert (=> b!724843 m!679153))

(declare-fun m!679155 () Bool)

(assert (=> b!724843 m!679155))

(declare-fun m!679157 () Bool)

(assert (=> b!724848 m!679157))

(declare-fun m!679159 () Bool)

(assert (=> b!724838 m!679159))

(declare-fun m!679161 () Bool)

(assert (=> b!724846 m!679161))

(declare-fun m!679163 () Bool)

(assert (=> b!724846 m!679163))

(declare-fun m!679165 () Bool)

(assert (=> b!724850 m!679165))

(assert (=> b!724850 m!679165))

(declare-fun m!679167 () Bool)

(assert (=> b!724850 m!679167))

(declare-fun m!679169 () Bool)

(assert (=> b!724845 m!679169))

(assert (=> b!724853 m!679165))

(assert (=> b!724853 m!679165))

(declare-fun m!679171 () Bool)

(assert (=> b!724853 m!679171))

(declare-fun m!679173 () Bool)

(assert (=> b!724840 m!679173))

(declare-fun m!679175 () Bool)

(assert (=> start!64484 m!679175))

(declare-fun m!679177 () Bool)

(assert (=> start!64484 m!679177))

(declare-fun m!679179 () Bool)

(assert (=> b!724841 m!679179))

(assert (=> b!724847 m!679165))

(assert (=> b!724847 m!679165))

(declare-fun m!679181 () Bool)

(assert (=> b!724847 m!679181))

(assert (=> b!724847 m!679181))

(assert (=> b!724847 m!679165))

(declare-fun m!679183 () Bool)

(assert (=> b!724847 m!679183))

(assert (=> b!724842 m!679165))

(assert (=> b!724842 m!679165))

(declare-fun m!679185 () Bool)

(assert (=> b!724842 m!679185))

(assert (=> b!724839 m!679165))

(assert (=> b!724839 m!679165))

(declare-fun m!679187 () Bool)

(assert (=> b!724839 m!679187))

(push 1)

