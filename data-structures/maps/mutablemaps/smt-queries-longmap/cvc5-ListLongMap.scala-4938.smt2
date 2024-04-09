; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68020 () Bool)

(assert start!68020)

(declare-fun b!791231 () Bool)

(declare-fun res!536155 () Bool)

(declare-fun e!439751 () Bool)

(assert (=> b!791231 (=> (not res!536155) (not e!439751))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791231 (= res!536155 (validKeyInArray!0 k!2102))))

(declare-fun res!536157 () Bool)

(assert (=> start!68020 (=> (not res!536157) (not e!439751))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68020 (= res!536157 (validMask!0 mask!3328))))

(assert (=> start!68020 e!439751))

(assert (=> start!68020 true))

(declare-datatypes ((array!42889 0))(
  ( (array!42890 (arr!20526 (Array (_ BitVec 32) (_ BitVec 64))) (size!20947 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42889)

(declare-fun array_inv!16300 (array!42889) Bool)

(assert (=> start!68020 (array_inv!16300 a!3186)))

(declare-fun b!791232 () Bool)

(declare-fun res!536161 () Bool)

(declare-fun e!439754 () Bool)

(assert (=> b!791232 (=> (not res!536161) (not e!439754))))

(declare-fun e!439753 () Bool)

(assert (=> b!791232 (= res!536161 e!439753)))

(declare-fun c!87951 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!791232 (= c!87951 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!791233 () Bool)

(declare-fun e!439755 () Bool)

(declare-fun e!439749 () Bool)

(assert (=> b!791233 (= e!439755 e!439749)))

(declare-fun res!536151 () Bool)

(assert (=> b!791233 (=> (not res!536151) (not e!439749))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8133 0))(
  ( (MissingZero!8133 (index!34899 (_ BitVec 32))) (Found!8133 (index!34900 (_ BitVec 32))) (Intermediate!8133 (undefined!8945 Bool) (index!34901 (_ BitVec 32)) (x!65868 (_ BitVec 32))) (Undefined!8133) (MissingVacant!8133 (index!34902 (_ BitVec 32))) )
))
(declare-fun lt!353192 () SeekEntryResult!8133)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42889 (_ BitVec 32)) SeekEntryResult!8133)

(assert (=> b!791233 (= res!536151 (= (seekEntryOrOpen!0 (select (arr!20526 a!3186) j!159) a!3186 mask!3328) lt!353192))))

(assert (=> b!791233 (= lt!353192 (Found!8133 j!159))))

(declare-fun b!791234 () Bool)

(declare-fun res!536164 () Bool)

(assert (=> b!791234 (=> (not res!536164) (not e!439751))))

(declare-fun arrayContainsKey!0 (array!42889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791234 (= res!536164 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!791235 () Bool)

(declare-fun res!536158 () Bool)

(declare-fun e!439752 () Bool)

(assert (=> b!791235 (=> (not res!536158) (not e!439752))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!791235 (= res!536158 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20947 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20947 a!3186))))))

(declare-fun b!791236 () Bool)

(assert (=> b!791236 (= e!439752 e!439754)))

(declare-fun res!536156 () Bool)

(assert (=> b!791236 (=> (not res!536156) (not e!439754))))

(declare-fun lt!353190 () SeekEntryResult!8133)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42889 (_ BitVec 32)) SeekEntryResult!8133)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!791236 (= res!536156 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20526 a!3186) j!159) mask!3328) (select (arr!20526 a!3186) j!159) a!3186 mask!3328) lt!353190))))

(assert (=> b!791236 (= lt!353190 (Intermediate!8133 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!791237 () Bool)

(declare-fun e!439756 () Bool)

(assert (=> b!791237 (= e!439754 e!439756)))

(declare-fun res!536160 () Bool)

(assert (=> b!791237 (=> (not res!536160) (not e!439756))))

(declare-fun lt!353189 () (_ BitVec 64))

(declare-fun lt!353193 () array!42889)

(assert (=> b!791237 (= res!536160 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353189 mask!3328) lt!353189 lt!353193 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353189 lt!353193 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!791237 (= lt!353189 (select (store (arr!20526 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!791237 (= lt!353193 (array!42890 (store (arr!20526 a!3186) i!1173 k!2102) (size!20947 a!3186)))))

(declare-fun b!791238 () Bool)

(declare-fun res!536150 () Bool)

(assert (=> b!791238 (=> (not res!536150) (not e!439752))))

(declare-datatypes ((List!14581 0))(
  ( (Nil!14578) (Cons!14577 (h!15706 (_ BitVec 64)) (t!20904 List!14581)) )
))
(declare-fun arrayNoDuplicates!0 (array!42889 (_ BitVec 32) List!14581) Bool)

(assert (=> b!791238 (= res!536150 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14578))))

(declare-fun b!791239 () Bool)

(declare-fun res!536154 () Bool)

(assert (=> b!791239 (=> (not res!536154) (not e!439751))))

(assert (=> b!791239 (= res!536154 (validKeyInArray!0 (select (arr!20526 a!3186) j!159)))))

(declare-fun b!791240 () Bool)

(assert (=> b!791240 (= e!439756 (not true))))

(assert (=> b!791240 e!439755))

(declare-fun res!536163 () Bool)

(assert (=> b!791240 (=> (not res!536163) (not e!439755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42889 (_ BitVec 32)) Bool)

(assert (=> b!791240 (= res!536163 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27418 0))(
  ( (Unit!27419) )
))
(declare-fun lt!353191 () Unit!27418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27418)

(assert (=> b!791240 (= lt!353191 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!791241 () Bool)

(declare-fun res!536153 () Bool)

(assert (=> b!791241 (=> (not res!536153) (not e!439754))))

(assert (=> b!791241 (= res!536153 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20526 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!791242 () Bool)

(declare-fun res!536159 () Bool)

(assert (=> b!791242 (=> (not res!536159) (not e!439751))))

(assert (=> b!791242 (= res!536159 (and (= (size!20947 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20947 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20947 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!791243 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42889 (_ BitVec 32)) SeekEntryResult!8133)

(assert (=> b!791243 (= e!439753 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20526 a!3186) j!159) a!3186 mask!3328) (Found!8133 j!159)))))

(declare-fun b!791244 () Bool)

(assert (=> b!791244 (= e!439753 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20526 a!3186) j!159) a!3186 mask!3328) lt!353190))))

(declare-fun b!791245 () Bool)

(declare-fun res!536152 () Bool)

(assert (=> b!791245 (=> (not res!536152) (not e!439752))))

(assert (=> b!791245 (= res!536152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!791246 () Bool)

(assert (=> b!791246 (= e!439751 e!439752)))

(declare-fun res!536162 () Bool)

(assert (=> b!791246 (=> (not res!536162) (not e!439752))))

(declare-fun lt!353194 () SeekEntryResult!8133)

(assert (=> b!791246 (= res!536162 (or (= lt!353194 (MissingZero!8133 i!1173)) (= lt!353194 (MissingVacant!8133 i!1173))))))

(assert (=> b!791246 (= lt!353194 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!791247 () Bool)

(assert (=> b!791247 (= e!439749 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20526 a!3186) j!159) a!3186 mask!3328) lt!353192))))

(assert (= (and start!68020 res!536157) b!791242))

(assert (= (and b!791242 res!536159) b!791239))

(assert (= (and b!791239 res!536154) b!791231))

(assert (= (and b!791231 res!536155) b!791234))

(assert (= (and b!791234 res!536164) b!791246))

(assert (= (and b!791246 res!536162) b!791245))

(assert (= (and b!791245 res!536152) b!791238))

(assert (= (and b!791238 res!536150) b!791235))

(assert (= (and b!791235 res!536158) b!791236))

(assert (= (and b!791236 res!536156) b!791241))

(assert (= (and b!791241 res!536153) b!791232))

(assert (= (and b!791232 c!87951) b!791244))

(assert (= (and b!791232 (not c!87951)) b!791243))

(assert (= (and b!791232 res!536161) b!791237))

(assert (= (and b!791237 res!536160) b!791240))

(assert (= (and b!791240 res!536163) b!791233))

(assert (= (and b!791233 res!536151) b!791247))

(declare-fun m!732055 () Bool)

(assert (=> b!791244 m!732055))

(assert (=> b!791244 m!732055))

(declare-fun m!732057 () Bool)

(assert (=> b!791244 m!732057))

(declare-fun m!732059 () Bool)

(assert (=> b!791240 m!732059))

(declare-fun m!732061 () Bool)

(assert (=> b!791240 m!732061))

(declare-fun m!732063 () Bool)

(assert (=> b!791238 m!732063))

(declare-fun m!732065 () Bool)

(assert (=> b!791241 m!732065))

(assert (=> b!791243 m!732055))

(assert (=> b!791243 m!732055))

(declare-fun m!732067 () Bool)

(assert (=> b!791243 m!732067))

(assert (=> b!791247 m!732055))

(assert (=> b!791247 m!732055))

(declare-fun m!732069 () Bool)

(assert (=> b!791247 m!732069))

(declare-fun m!732071 () Bool)

(assert (=> b!791245 m!732071))

(declare-fun m!732073 () Bool)

(assert (=> b!791231 m!732073))

(assert (=> b!791239 m!732055))

(assert (=> b!791239 m!732055))

(declare-fun m!732075 () Bool)

(assert (=> b!791239 m!732075))

(assert (=> b!791236 m!732055))

(assert (=> b!791236 m!732055))

(declare-fun m!732077 () Bool)

(assert (=> b!791236 m!732077))

(assert (=> b!791236 m!732077))

(assert (=> b!791236 m!732055))

(declare-fun m!732079 () Bool)

(assert (=> b!791236 m!732079))

(declare-fun m!732081 () Bool)

(assert (=> start!68020 m!732081))

(declare-fun m!732083 () Bool)

(assert (=> start!68020 m!732083))

(declare-fun m!732085 () Bool)

(assert (=> b!791237 m!732085))

(declare-fun m!732087 () Bool)

(assert (=> b!791237 m!732087))

(assert (=> b!791237 m!732085))

(declare-fun m!732089 () Bool)

(assert (=> b!791237 m!732089))

(declare-fun m!732091 () Bool)

(assert (=> b!791237 m!732091))

(declare-fun m!732093 () Bool)

(assert (=> b!791237 m!732093))

(declare-fun m!732095 () Bool)

(assert (=> b!791234 m!732095))

(assert (=> b!791233 m!732055))

(assert (=> b!791233 m!732055))

(declare-fun m!732097 () Bool)

(assert (=> b!791233 m!732097))

(declare-fun m!732099 () Bool)

(assert (=> b!791246 m!732099))

(push 1)

