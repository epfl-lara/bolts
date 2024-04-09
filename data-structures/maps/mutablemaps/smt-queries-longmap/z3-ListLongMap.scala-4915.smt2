; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67752 () Bool)

(assert start!67752)

(declare-fun b!785933 () Bool)

(declare-fun res!532227 () Bool)

(declare-fun e!436937 () Bool)

(assert (=> b!785933 (=> (not res!532227) (not e!436937))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42747 0))(
  ( (array!42748 (arr!20458 (Array (_ BitVec 32) (_ BitVec 64))) (size!20879 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42747)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!785933 (= res!532227 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20879 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20879 a!3186))))))

(declare-fun b!785934 () Bool)

(declare-fun res!532217 () Bool)

(declare-fun e!436931 () Bool)

(assert (=> b!785934 (=> (not res!532217) (not e!436931))))

(declare-fun e!436939 () Bool)

(assert (=> b!785934 (= res!532217 e!436939)))

(declare-fun c!87270 () Bool)

(assert (=> b!785934 (= c!87270 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785935 () Bool)

(declare-fun e!436936 () Bool)

(declare-fun e!436935 () Bool)

(assert (=> b!785935 (= e!436936 e!436935)))

(declare-fun res!532218 () Bool)

(assert (=> b!785935 (=> res!532218 e!436935)))

(declare-fun lt!350503 () (_ BitVec 64))

(declare-fun lt!350502 () (_ BitVec 64))

(assert (=> b!785935 (= res!532218 (= lt!350503 lt!350502))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785935 (= lt!350503 (select (store (arr!20458 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!785936 () Bool)

(declare-fun res!532212 () Bool)

(declare-fun e!436941 () Bool)

(assert (=> b!785936 (=> (not res!532212) (not e!436941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785936 (= res!532212 (validKeyInArray!0 k0!2102))))

(declare-fun b!785937 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8065 0))(
  ( (MissingZero!8065 (index!34627 (_ BitVec 32))) (Found!8065 (index!34628 (_ BitVec 32))) (Intermediate!8065 (undefined!8877 Bool) (index!34629 (_ BitVec 32)) (x!65598 (_ BitVec 32))) (Undefined!8065) (MissingVacant!8065 (index!34630 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42747 (_ BitVec 32)) SeekEntryResult!8065)

(assert (=> b!785937 (= e!436939 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20458 a!3186) j!159) a!3186 mask!3328) (Found!8065 j!159)))))

(declare-fun b!785938 () Bool)

(declare-fun res!532219 () Bool)

(assert (=> b!785938 (=> (not res!532219) (not e!436937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42747 (_ BitVec 32)) Bool)

(assert (=> b!785938 (= res!532219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!532223 () Bool)

(assert (=> start!67752 (=> (not res!532223) (not e!436941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67752 (= res!532223 (validMask!0 mask!3328))))

(assert (=> start!67752 e!436941))

(assert (=> start!67752 true))

(declare-fun array_inv!16232 (array!42747) Bool)

(assert (=> start!67752 (array_inv!16232 a!3186)))

(declare-fun b!785939 () Bool)

(declare-fun e!436938 () Bool)

(declare-fun e!436942 () Bool)

(assert (=> b!785939 (= e!436938 (not e!436942))))

(declare-fun res!532214 () Bool)

(assert (=> b!785939 (=> res!532214 e!436942)))

(declare-fun lt!350505 () SeekEntryResult!8065)

(get-info :version)

(assert (=> b!785939 (= res!532214 (or (not ((_ is Intermediate!8065) lt!350505)) (bvslt x!1131 (x!65598 lt!350505)) (not (= x!1131 (x!65598 lt!350505))) (not (= index!1321 (index!34629 lt!350505)))))))

(declare-fun e!436940 () Bool)

(assert (=> b!785939 e!436940))

(declare-fun res!532220 () Bool)

(assert (=> b!785939 (=> (not res!532220) (not e!436940))))

(declare-fun lt!350498 () SeekEntryResult!8065)

(declare-fun lt!350501 () SeekEntryResult!8065)

(assert (=> b!785939 (= res!532220 (= lt!350498 lt!350501))))

(assert (=> b!785939 (= lt!350501 (Found!8065 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42747 (_ BitVec 32)) SeekEntryResult!8065)

(assert (=> b!785939 (= lt!350498 (seekEntryOrOpen!0 (select (arr!20458 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!785939 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27170 0))(
  ( (Unit!27171) )
))
(declare-fun lt!350504 () Unit!27170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27170)

(assert (=> b!785939 (= lt!350504 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785940 () Bool)

(declare-fun e!436932 () Bool)

(declare-fun lt!350506 () SeekEntryResult!8065)

(assert (=> b!785940 (= e!436932 (= lt!350498 lt!350506))))

(declare-fun b!785941 () Bool)

(declare-fun res!532221 () Bool)

(assert (=> b!785941 (=> (not res!532221) (not e!436941))))

(declare-fun arrayContainsKey!0 (array!42747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785941 (= res!532221 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785942 () Bool)

(declare-fun res!532225 () Bool)

(assert (=> b!785942 (=> (not res!532225) (not e!436932))))

(declare-fun lt!350509 () array!42747)

(assert (=> b!785942 (= res!532225 (= (seekEntryOrOpen!0 lt!350502 lt!350509 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350502 lt!350509 mask!3328)))))

(declare-fun b!785943 () Bool)

(assert (=> b!785943 (= e!436942 e!436936)))

(declare-fun res!532222 () Bool)

(assert (=> b!785943 (=> res!532222 e!436936)))

(assert (=> b!785943 (= res!532222 (not (= lt!350506 lt!350501)))))

(assert (=> b!785943 (= lt!350506 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20458 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785944 () Bool)

(declare-fun res!532211 () Bool)

(assert (=> b!785944 (=> (not res!532211) (not e!436941))))

(assert (=> b!785944 (= res!532211 (validKeyInArray!0 (select (arr!20458 a!3186) j!159)))))

(declare-fun b!785945 () Bool)

(assert (=> b!785945 (= e!436935 true)))

(assert (=> b!785945 e!436932))

(declare-fun res!532215 () Bool)

(assert (=> b!785945 (=> (not res!532215) (not e!436932))))

(assert (=> b!785945 (= res!532215 (= lt!350503 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350508 () Unit!27170)

(declare-fun e!436934 () Unit!27170)

(assert (=> b!785945 (= lt!350508 e!436934)))

(declare-fun c!87269 () Bool)

(assert (=> b!785945 (= c!87269 (= lt!350503 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!785946 () Bool)

(declare-fun Unit!27172 () Unit!27170)

(assert (=> b!785946 (= e!436934 Unit!27172)))

(assert (=> b!785946 false))

(declare-fun b!785947 () Bool)

(assert (=> b!785947 (= e!436931 e!436938)))

(declare-fun res!532224 () Bool)

(assert (=> b!785947 (=> (not res!532224) (not e!436938))))

(declare-fun lt!350507 () SeekEntryResult!8065)

(assert (=> b!785947 (= res!532224 (= lt!350507 lt!350505))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42747 (_ BitVec 32)) SeekEntryResult!8065)

(assert (=> b!785947 (= lt!350505 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350502 lt!350509 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785947 (= lt!350507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350502 mask!3328) lt!350502 lt!350509 mask!3328))))

(assert (=> b!785947 (= lt!350502 (select (store (arr!20458 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!785947 (= lt!350509 (array!42748 (store (arr!20458 a!3186) i!1173 k0!2102) (size!20879 a!3186)))))

(declare-fun b!785948 () Bool)

(declare-fun res!532213 () Bool)

(assert (=> b!785948 (=> (not res!532213) (not e!436937))))

(declare-datatypes ((List!14513 0))(
  ( (Nil!14510) (Cons!14509 (h!15632 (_ BitVec 64)) (t!20836 List!14513)) )
))
(declare-fun arrayNoDuplicates!0 (array!42747 (_ BitVec 32) List!14513) Bool)

(assert (=> b!785948 (= res!532213 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14510))))

(declare-fun b!785949 () Bool)

(assert (=> b!785949 (= e!436941 e!436937)))

(declare-fun res!532216 () Bool)

(assert (=> b!785949 (=> (not res!532216) (not e!436937))))

(declare-fun lt!350500 () SeekEntryResult!8065)

(assert (=> b!785949 (= res!532216 (or (= lt!350500 (MissingZero!8065 i!1173)) (= lt!350500 (MissingVacant!8065 i!1173))))))

(assert (=> b!785949 (= lt!350500 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!785950 () Bool)

(declare-fun res!532210 () Bool)

(assert (=> b!785950 (=> (not res!532210) (not e!436931))))

(assert (=> b!785950 (= res!532210 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20458 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785951 () Bool)

(declare-fun lt!350499 () SeekEntryResult!8065)

(assert (=> b!785951 (= e!436939 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20458 a!3186) j!159) a!3186 mask!3328) lt!350499))))

(declare-fun b!785952 () Bool)

(assert (=> b!785952 (= e!436937 e!436931)))

(declare-fun res!532226 () Bool)

(assert (=> b!785952 (=> (not res!532226) (not e!436931))))

(assert (=> b!785952 (= res!532226 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20458 a!3186) j!159) mask!3328) (select (arr!20458 a!3186) j!159) a!3186 mask!3328) lt!350499))))

(assert (=> b!785952 (= lt!350499 (Intermediate!8065 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785953 () Bool)

(declare-fun res!532228 () Bool)

(assert (=> b!785953 (=> (not res!532228) (not e!436941))))

(assert (=> b!785953 (= res!532228 (and (= (size!20879 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20879 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20879 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785954 () Bool)

(assert (=> b!785954 (= e!436940 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20458 a!3186) j!159) a!3186 mask!3328) lt!350501))))

(declare-fun b!785955 () Bool)

(declare-fun Unit!27173 () Unit!27170)

(assert (=> b!785955 (= e!436934 Unit!27173)))

(assert (= (and start!67752 res!532223) b!785953))

(assert (= (and b!785953 res!532228) b!785944))

(assert (= (and b!785944 res!532211) b!785936))

(assert (= (and b!785936 res!532212) b!785941))

(assert (= (and b!785941 res!532221) b!785949))

(assert (= (and b!785949 res!532216) b!785938))

(assert (= (and b!785938 res!532219) b!785948))

(assert (= (and b!785948 res!532213) b!785933))

(assert (= (and b!785933 res!532227) b!785952))

(assert (= (and b!785952 res!532226) b!785950))

(assert (= (and b!785950 res!532210) b!785934))

(assert (= (and b!785934 c!87270) b!785951))

(assert (= (and b!785934 (not c!87270)) b!785937))

(assert (= (and b!785934 res!532217) b!785947))

(assert (= (and b!785947 res!532224) b!785939))

(assert (= (and b!785939 res!532220) b!785954))

(assert (= (and b!785939 (not res!532214)) b!785943))

(assert (= (and b!785943 (not res!532222)) b!785935))

(assert (= (and b!785935 (not res!532218)) b!785945))

(assert (= (and b!785945 c!87269) b!785946))

(assert (= (and b!785945 (not c!87269)) b!785955))

(assert (= (and b!785945 res!532215) b!785942))

(assert (= (and b!785942 res!532225) b!785940))

(declare-fun m!727925 () Bool)

(assert (=> b!785937 m!727925))

(assert (=> b!785937 m!727925))

(declare-fun m!727927 () Bool)

(assert (=> b!785937 m!727927))

(assert (=> b!785952 m!727925))

(assert (=> b!785952 m!727925))

(declare-fun m!727929 () Bool)

(assert (=> b!785952 m!727929))

(assert (=> b!785952 m!727929))

(assert (=> b!785952 m!727925))

(declare-fun m!727931 () Bool)

(assert (=> b!785952 m!727931))

(declare-fun m!727933 () Bool)

(assert (=> b!785948 m!727933))

(declare-fun m!727935 () Bool)

(assert (=> b!785942 m!727935))

(declare-fun m!727937 () Bool)

(assert (=> b!785942 m!727937))

(declare-fun m!727939 () Bool)

(assert (=> b!785941 m!727939))

(declare-fun m!727941 () Bool)

(assert (=> b!785949 m!727941))

(assert (=> b!785943 m!727925))

(assert (=> b!785943 m!727925))

(assert (=> b!785943 m!727927))

(declare-fun m!727943 () Bool)

(assert (=> b!785935 m!727943))

(declare-fun m!727945 () Bool)

(assert (=> b!785935 m!727945))

(declare-fun m!727947 () Bool)

(assert (=> b!785936 m!727947))

(assert (=> b!785954 m!727925))

(assert (=> b!785954 m!727925))

(declare-fun m!727949 () Bool)

(assert (=> b!785954 m!727949))

(assert (=> b!785939 m!727925))

(assert (=> b!785939 m!727925))

(declare-fun m!727951 () Bool)

(assert (=> b!785939 m!727951))

(declare-fun m!727953 () Bool)

(assert (=> b!785939 m!727953))

(declare-fun m!727955 () Bool)

(assert (=> b!785939 m!727955))

(declare-fun m!727957 () Bool)

(assert (=> b!785947 m!727957))

(assert (=> b!785947 m!727943))

(declare-fun m!727959 () Bool)

(assert (=> b!785947 m!727959))

(assert (=> b!785947 m!727957))

(declare-fun m!727961 () Bool)

(assert (=> b!785947 m!727961))

(declare-fun m!727963 () Bool)

(assert (=> b!785947 m!727963))

(assert (=> b!785951 m!727925))

(assert (=> b!785951 m!727925))

(declare-fun m!727965 () Bool)

(assert (=> b!785951 m!727965))

(declare-fun m!727967 () Bool)

(assert (=> b!785950 m!727967))

(assert (=> b!785944 m!727925))

(assert (=> b!785944 m!727925))

(declare-fun m!727969 () Bool)

(assert (=> b!785944 m!727969))

(declare-fun m!727971 () Bool)

(assert (=> b!785938 m!727971))

(declare-fun m!727973 () Bool)

(assert (=> start!67752 m!727973))

(declare-fun m!727975 () Bool)

(assert (=> start!67752 m!727975))

(check-sat (not b!785936) (not b!785937) (not b!785952) (not b!785949) (not b!785941) (not b!785944) (not b!785948) (not b!785954) (not b!785943) (not b!785938) (not start!67752) (not b!785942) (not b!785951) (not b!785947) (not b!785939))
(check-sat)
