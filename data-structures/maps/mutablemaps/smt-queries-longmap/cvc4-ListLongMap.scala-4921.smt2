; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67790 () Bool)

(assert start!67790)

(declare-fun b!787244 () Bool)

(declare-fun res!533297 () Bool)

(declare-fun e!437626 () Bool)

(assert (=> b!787244 (=> (not res!533297) (not e!437626))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42785 0))(
  ( (array!42786 (arr!20477 (Array (_ BitVec 32) (_ BitVec 64))) (size!20898 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42785)

(assert (=> b!787244 (= res!533297 (and (= (size!20898 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20898 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20898 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787245 () Bool)

(declare-fun e!437619 () Bool)

(declare-fun e!437616 () Bool)

(assert (=> b!787245 (= e!437619 e!437616)))

(declare-fun res!533311 () Bool)

(assert (=> b!787245 (=> (not res!533311) (not e!437616))))

(declare-datatypes ((SeekEntryResult!8084 0))(
  ( (MissingZero!8084 (index!34703 (_ BitVec 32))) (Found!8084 (index!34704 (_ BitVec 32))) (Intermediate!8084 (undefined!8896 Bool) (index!34705 (_ BitVec 32)) (x!65665 (_ BitVec 32))) (Undefined!8084) (MissingVacant!8084 (index!34706 (_ BitVec 32))) )
))
(declare-fun lt!351193 () SeekEntryResult!8084)

(declare-fun lt!351191 () SeekEntryResult!8084)

(assert (=> b!787245 (= res!533311 (= lt!351193 lt!351191))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!351190 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!351182 () array!42785)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42785 (_ BitVec 32)) SeekEntryResult!8084)

(assert (=> b!787245 (= lt!351191 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351190 lt!351182 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787245 (= lt!351193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351190 mask!3328) lt!351190 lt!351182 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!787245 (= lt!351190 (select (store (arr!20477 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787245 (= lt!351182 (array!42786 (store (arr!20477 a!3186) i!1173 k!2102) (size!20898 a!3186)))))

(declare-fun b!787246 () Bool)

(declare-fun e!437623 () Bool)

(declare-fun e!437617 () Bool)

(assert (=> b!787246 (= e!437623 e!437617)))

(declare-fun res!533303 () Bool)

(assert (=> b!787246 (=> res!533303 e!437617)))

(declare-fun lt!351184 () (_ BitVec 64))

(assert (=> b!787246 (= res!533303 (= lt!351184 lt!351190))))

(assert (=> b!787246 (= lt!351184 (select (store (arr!20477 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787247 () Bool)

(declare-fun e!437621 () Bool)

(assert (=> b!787247 (= e!437616 (not e!437621))))

(declare-fun res!533300 () Bool)

(assert (=> b!787247 (=> res!533300 e!437621)))

(assert (=> b!787247 (= res!533300 (or (not (is-Intermediate!8084 lt!351191)) (bvslt x!1131 (x!65665 lt!351191)) (not (= x!1131 (x!65665 lt!351191))) (not (= index!1321 (index!34705 lt!351191)))))))

(declare-fun e!437620 () Bool)

(assert (=> b!787247 e!437620))

(declare-fun res!533293 () Bool)

(assert (=> b!787247 (=> (not res!533293) (not e!437620))))

(declare-fun lt!351189 () SeekEntryResult!8084)

(declare-fun lt!351192 () SeekEntryResult!8084)

(assert (=> b!787247 (= res!533293 (= lt!351189 lt!351192))))

(assert (=> b!787247 (= lt!351192 (Found!8084 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42785 (_ BitVec 32)) SeekEntryResult!8084)

(assert (=> b!787247 (= lt!351189 (seekEntryOrOpen!0 (select (arr!20477 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42785 (_ BitVec 32)) Bool)

(assert (=> b!787247 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27246 0))(
  ( (Unit!27247) )
))
(declare-fun lt!351185 () Unit!27246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27246)

(assert (=> b!787247 (= lt!351185 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787248 () Bool)

(declare-fun res!533306 () Bool)

(declare-fun e!437624 () Bool)

(assert (=> b!787248 (=> (not res!533306) (not e!437624))))

(declare-datatypes ((List!14532 0))(
  ( (Nil!14529) (Cons!14528 (h!15651 (_ BitVec 64)) (t!20855 List!14532)) )
))
(declare-fun arrayNoDuplicates!0 (array!42785 (_ BitVec 32) List!14532) Bool)

(assert (=> b!787248 (= res!533306 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14529))))

(declare-fun e!437625 () Bool)

(declare-fun lt!351188 () SeekEntryResult!8084)

(declare-fun b!787249 () Bool)

(assert (=> b!787249 (= e!437625 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20477 a!3186) j!159) a!3186 mask!3328) lt!351188))))

(declare-fun b!787250 () Bool)

(declare-fun e!437615 () Unit!27246)

(declare-fun Unit!27248 () Unit!27246)

(assert (=> b!787250 (= e!437615 Unit!27248)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!787251 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42785 (_ BitVec 32)) SeekEntryResult!8084)

(assert (=> b!787251 (= e!437625 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20477 a!3186) j!159) a!3186 mask!3328) (Found!8084 j!159)))))

(declare-fun b!787252 () Bool)

(declare-fun res!533310 () Bool)

(assert (=> b!787252 (=> (not res!533310) (not e!437619))))

(assert (=> b!787252 (= res!533310 e!437625)))

(declare-fun c!87383 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787252 (= c!87383 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787253 () Bool)

(declare-fun Unit!27249 () Unit!27246)

(assert (=> b!787253 (= e!437615 Unit!27249)))

(assert (=> b!787253 false))

(declare-fun b!787254 () Bool)

(declare-fun res!533298 () Bool)

(assert (=> b!787254 (=> (not res!533298) (not e!437626))))

(declare-fun arrayContainsKey!0 (array!42785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787254 (= res!533298 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787255 () Bool)

(assert (=> b!787255 (= e!437621 e!437623)))

(declare-fun res!533308 () Bool)

(assert (=> b!787255 (=> res!533308 e!437623)))

(declare-fun lt!351183 () SeekEntryResult!8084)

(assert (=> b!787255 (= res!533308 (not (= lt!351183 lt!351192)))))

(assert (=> b!787255 (= lt!351183 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20477 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787256 () Bool)

(assert (=> b!787256 (= e!437626 e!437624)))

(declare-fun res!533295 () Bool)

(assert (=> b!787256 (=> (not res!533295) (not e!437624))))

(declare-fun lt!351186 () SeekEntryResult!8084)

(assert (=> b!787256 (= res!533295 (or (= lt!351186 (MissingZero!8084 i!1173)) (= lt!351186 (MissingVacant!8084 i!1173))))))

(assert (=> b!787256 (= lt!351186 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787257 () Bool)

(assert (=> b!787257 (= e!437617 true)))

(declare-fun e!437622 () Bool)

(assert (=> b!787257 e!437622))

(declare-fun res!533302 () Bool)

(assert (=> b!787257 (=> (not res!533302) (not e!437622))))

(assert (=> b!787257 (= res!533302 (= lt!351184 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351187 () Unit!27246)

(assert (=> b!787257 (= lt!351187 e!437615)))

(declare-fun c!87384 () Bool)

(assert (=> b!787257 (= c!87384 (= lt!351184 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787258 () Bool)

(declare-fun res!533299 () Bool)

(assert (=> b!787258 (=> (not res!533299) (not e!437619))))

(assert (=> b!787258 (= res!533299 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20477 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787259 () Bool)

(declare-fun res!533307 () Bool)

(assert (=> b!787259 (=> (not res!533307) (not e!437624))))

(assert (=> b!787259 (= res!533307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787260 () Bool)

(assert (=> b!787260 (= e!437622 (= lt!351189 lt!351183))))

(declare-fun res!533296 () Bool)

(assert (=> start!67790 (=> (not res!533296) (not e!437626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67790 (= res!533296 (validMask!0 mask!3328))))

(assert (=> start!67790 e!437626))

(assert (=> start!67790 true))

(declare-fun array_inv!16251 (array!42785) Bool)

(assert (=> start!67790 (array_inv!16251 a!3186)))

(declare-fun b!787261 () Bool)

(declare-fun res!533309 () Bool)

(assert (=> b!787261 (=> (not res!533309) (not e!437626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787261 (= res!533309 (validKeyInArray!0 (select (arr!20477 a!3186) j!159)))))

(declare-fun b!787262 () Bool)

(declare-fun res!533301 () Bool)

(assert (=> b!787262 (=> (not res!533301) (not e!437624))))

(assert (=> b!787262 (= res!533301 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20898 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20898 a!3186))))))

(declare-fun b!787263 () Bool)

(declare-fun res!533294 () Bool)

(assert (=> b!787263 (=> (not res!533294) (not e!437622))))

(assert (=> b!787263 (= res!533294 (= (seekEntryOrOpen!0 lt!351190 lt!351182 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351190 lt!351182 mask!3328)))))

(declare-fun b!787264 () Bool)

(declare-fun res!533304 () Bool)

(assert (=> b!787264 (=> (not res!533304) (not e!437626))))

(assert (=> b!787264 (= res!533304 (validKeyInArray!0 k!2102))))

(declare-fun b!787265 () Bool)

(assert (=> b!787265 (= e!437624 e!437619)))

(declare-fun res!533305 () Bool)

(assert (=> b!787265 (=> (not res!533305) (not e!437619))))

(assert (=> b!787265 (= res!533305 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20477 a!3186) j!159) mask!3328) (select (arr!20477 a!3186) j!159) a!3186 mask!3328) lt!351188))))

(assert (=> b!787265 (= lt!351188 (Intermediate!8084 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787266 () Bool)

(assert (=> b!787266 (= e!437620 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20477 a!3186) j!159) a!3186 mask!3328) lt!351192))))

(assert (= (and start!67790 res!533296) b!787244))

(assert (= (and b!787244 res!533297) b!787261))

(assert (= (and b!787261 res!533309) b!787264))

(assert (= (and b!787264 res!533304) b!787254))

(assert (= (and b!787254 res!533298) b!787256))

(assert (= (and b!787256 res!533295) b!787259))

(assert (= (and b!787259 res!533307) b!787248))

(assert (= (and b!787248 res!533306) b!787262))

(assert (= (and b!787262 res!533301) b!787265))

(assert (= (and b!787265 res!533305) b!787258))

(assert (= (and b!787258 res!533299) b!787252))

(assert (= (and b!787252 c!87383) b!787249))

(assert (= (and b!787252 (not c!87383)) b!787251))

(assert (= (and b!787252 res!533310) b!787245))

(assert (= (and b!787245 res!533311) b!787247))

(assert (= (and b!787247 res!533293) b!787266))

(assert (= (and b!787247 (not res!533300)) b!787255))

(assert (= (and b!787255 (not res!533308)) b!787246))

(assert (= (and b!787246 (not res!533303)) b!787257))

(assert (= (and b!787257 c!87384) b!787253))

(assert (= (and b!787257 (not c!87384)) b!787250))

(assert (= (and b!787257 res!533302) b!787263))

(assert (= (and b!787263 res!533294) b!787260))

(declare-fun m!728913 () Bool)

(assert (=> b!787249 m!728913))

(assert (=> b!787249 m!728913))

(declare-fun m!728915 () Bool)

(assert (=> b!787249 m!728915))

(assert (=> b!787255 m!728913))

(assert (=> b!787255 m!728913))

(declare-fun m!728917 () Bool)

(assert (=> b!787255 m!728917))

(declare-fun m!728919 () Bool)

(assert (=> b!787259 m!728919))

(declare-fun m!728921 () Bool)

(assert (=> b!787254 m!728921))

(declare-fun m!728923 () Bool)

(assert (=> b!787258 m!728923))

(declare-fun m!728925 () Bool)

(assert (=> b!787263 m!728925))

(declare-fun m!728927 () Bool)

(assert (=> b!787263 m!728927))

(declare-fun m!728929 () Bool)

(assert (=> b!787248 m!728929))

(assert (=> b!787247 m!728913))

(assert (=> b!787247 m!728913))

(declare-fun m!728931 () Bool)

(assert (=> b!787247 m!728931))

(declare-fun m!728933 () Bool)

(assert (=> b!787247 m!728933))

(declare-fun m!728935 () Bool)

(assert (=> b!787247 m!728935))

(assert (=> b!787251 m!728913))

(assert (=> b!787251 m!728913))

(assert (=> b!787251 m!728917))

(assert (=> b!787261 m!728913))

(assert (=> b!787261 m!728913))

(declare-fun m!728937 () Bool)

(assert (=> b!787261 m!728937))

(assert (=> b!787266 m!728913))

(assert (=> b!787266 m!728913))

(declare-fun m!728939 () Bool)

(assert (=> b!787266 m!728939))

(assert (=> b!787265 m!728913))

(assert (=> b!787265 m!728913))

(declare-fun m!728941 () Bool)

(assert (=> b!787265 m!728941))

(assert (=> b!787265 m!728941))

(assert (=> b!787265 m!728913))

(declare-fun m!728943 () Bool)

(assert (=> b!787265 m!728943))

(declare-fun m!728945 () Bool)

(assert (=> b!787264 m!728945))

(declare-fun m!728947 () Bool)

(assert (=> start!67790 m!728947))

(declare-fun m!728949 () Bool)

(assert (=> start!67790 m!728949))

(declare-fun m!728951 () Bool)

(assert (=> b!787256 m!728951))

(declare-fun m!728953 () Bool)

(assert (=> b!787246 m!728953))

(declare-fun m!728955 () Bool)

(assert (=> b!787246 m!728955))

(declare-fun m!728957 () Bool)

(assert (=> b!787245 m!728957))

(declare-fun m!728959 () Bool)

(assert (=> b!787245 m!728959))

(assert (=> b!787245 m!728953))

(declare-fun m!728961 () Bool)

(assert (=> b!787245 m!728961))

(assert (=> b!787245 m!728957))

(declare-fun m!728963 () Bool)

(assert (=> b!787245 m!728963))

(push 1)

