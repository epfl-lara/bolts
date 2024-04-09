; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64566 () Bool)

(assert start!64566)

(declare-fun b!726951 () Bool)

(declare-fun e!406999 () Bool)

(declare-fun e!406995 () Bool)

(assert (=> b!726951 (= e!406999 e!406995)))

(declare-fun res!488009 () Bool)

(assert (=> b!726951 (=> (not res!488009) (not e!406995))))

(declare-datatypes ((array!41037 0))(
  ( (array!41038 (arr!19636 (Array (_ BitVec 32) (_ BitVec 64))) (size!20057 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41037)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7243 0))(
  ( (MissingZero!7243 (index!31339 (_ BitVec 32))) (Found!7243 (index!31340 (_ BitVec 32))) (Intermediate!7243 (undefined!8055 Bool) (index!31341 (_ BitVec 32)) (x!62350 (_ BitVec 32))) (Undefined!7243) (MissingVacant!7243 (index!31342 (_ BitVec 32))) )
))
(declare-fun lt!321982 () SeekEntryResult!7243)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41037 (_ BitVec 32)) SeekEntryResult!7243)

(assert (=> b!726951 (= res!488009 (= (seekEntryOrOpen!0 (select (arr!19636 a!3186) j!159) a!3186 mask!3328) lt!321982))))

(assert (=> b!726951 (= lt!321982 (Found!7243 j!159))))

(declare-fun b!726952 () Bool)

(declare-fun res!488007 () Bool)

(declare-fun e!406996 () Bool)

(assert (=> b!726952 (=> (not res!488007) (not e!406996))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726952 (= res!488007 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!726953 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41037 (_ BitVec 32)) SeekEntryResult!7243)

(assert (=> b!726953 (= e!406995 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19636 a!3186) j!159) a!3186 mask!3328) lt!321982))))

(declare-fun b!726955 () Bool)

(declare-fun res!488011 () Bool)

(assert (=> b!726955 (=> (not res!488011) (not e!406996))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726955 (= res!488011 (and (= (size!20057 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20057 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20057 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726956 () Bool)

(declare-fun res!488005 () Bool)

(assert (=> b!726956 (=> (not res!488005) (not e!406996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726956 (= res!488005 (validKeyInArray!0 k0!2102))))

(declare-fun b!726957 () Bool)

(declare-fun res!488002 () Bool)

(declare-fun e!406993 () Bool)

(assert (=> b!726957 (=> (not res!488002) (not e!406993))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!726957 (= res!488002 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20057 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20057 a!3186))))))

(declare-fun e!406997 () Bool)

(declare-fun b!726958 () Bool)

(assert (=> b!726958 (= e!406997 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19636 a!3186) j!159) a!3186 mask!3328) (Found!7243 j!159)))))

(declare-fun b!726959 () Bool)

(declare-fun res!488012 () Bool)

(declare-fun e!407001 () Bool)

(assert (=> b!726959 (=> (not res!488012) (not e!407001))))

(assert (=> b!726959 (= res!488012 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19636 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726960 () Bool)

(declare-fun lt!321979 () SeekEntryResult!7243)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41037 (_ BitVec 32)) SeekEntryResult!7243)

(assert (=> b!726960 (= e!406997 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19636 a!3186) j!159) a!3186 mask!3328) lt!321979))))

(declare-fun b!726961 () Bool)

(declare-fun e!407000 () Bool)

(assert (=> b!726961 (= e!407000 true)))

(declare-fun lt!321978 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726961 (= lt!321978 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!726962 () Bool)

(declare-fun res!488001 () Bool)

(assert (=> b!726962 (=> (not res!488001) (not e!407001))))

(assert (=> b!726962 (= res!488001 e!406997)))

(declare-fun c!79848 () Bool)

(assert (=> b!726962 (= c!79848 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726963 () Bool)

(declare-fun res!488004 () Bool)

(assert (=> b!726963 (=> (not res!488004) (not e!406993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41037 (_ BitVec 32)) Bool)

(assert (=> b!726963 (= res!488004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726954 () Bool)

(declare-fun e!406998 () Bool)

(assert (=> b!726954 (= e!406998 (not e!407000))))

(declare-fun res!488003 () Bool)

(assert (=> b!726954 (=> res!488003 e!407000)))

(declare-fun lt!321986 () SeekEntryResult!7243)

(get-info :version)

(assert (=> b!726954 (= res!488003 (or (not ((_ is Intermediate!7243) lt!321986)) (bvsge x!1131 (x!62350 lt!321986))))))

(assert (=> b!726954 e!406999))

(declare-fun res!488016 () Bool)

(assert (=> b!726954 (=> (not res!488016) (not e!406999))))

(assert (=> b!726954 (= res!488016 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24804 0))(
  ( (Unit!24805) )
))
(declare-fun lt!321984 () Unit!24804)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24804)

(assert (=> b!726954 (= lt!321984 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!488014 () Bool)

(assert (=> start!64566 (=> (not res!488014) (not e!406996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64566 (= res!488014 (validMask!0 mask!3328))))

(assert (=> start!64566 e!406996))

(assert (=> start!64566 true))

(declare-fun array_inv!15410 (array!41037) Bool)

(assert (=> start!64566 (array_inv!15410 a!3186)))

(declare-fun b!726964 () Bool)

(assert (=> b!726964 (= e!407001 e!406998)))

(declare-fun res!488015 () Bool)

(assert (=> b!726964 (=> (not res!488015) (not e!406998))))

(declare-fun lt!321980 () SeekEntryResult!7243)

(assert (=> b!726964 (= res!488015 (= lt!321980 lt!321986))))

(declare-fun lt!321985 () (_ BitVec 64))

(declare-fun lt!321983 () array!41037)

(assert (=> b!726964 (= lt!321986 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321985 lt!321983 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726964 (= lt!321980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321985 mask!3328) lt!321985 lt!321983 mask!3328))))

(assert (=> b!726964 (= lt!321985 (select (store (arr!19636 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!726964 (= lt!321983 (array!41038 (store (arr!19636 a!3186) i!1173 k0!2102) (size!20057 a!3186)))))

(declare-fun b!726965 () Bool)

(assert (=> b!726965 (= e!406993 e!407001)))

(declare-fun res!488008 () Bool)

(assert (=> b!726965 (=> (not res!488008) (not e!407001))))

(assert (=> b!726965 (= res!488008 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19636 a!3186) j!159) mask!3328) (select (arr!19636 a!3186) j!159) a!3186 mask!3328) lt!321979))))

(assert (=> b!726965 (= lt!321979 (Intermediate!7243 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726966 () Bool)

(assert (=> b!726966 (= e!406996 e!406993)))

(declare-fun res!488013 () Bool)

(assert (=> b!726966 (=> (not res!488013) (not e!406993))))

(declare-fun lt!321981 () SeekEntryResult!7243)

(assert (=> b!726966 (= res!488013 (or (= lt!321981 (MissingZero!7243 i!1173)) (= lt!321981 (MissingVacant!7243 i!1173))))))

(assert (=> b!726966 (= lt!321981 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!726967 () Bool)

(declare-fun res!488010 () Bool)

(assert (=> b!726967 (=> (not res!488010) (not e!406993))))

(declare-datatypes ((List!13691 0))(
  ( (Nil!13688) (Cons!13687 (h!14744 (_ BitVec 64)) (t!20014 List!13691)) )
))
(declare-fun arrayNoDuplicates!0 (array!41037 (_ BitVec 32) List!13691) Bool)

(assert (=> b!726967 (= res!488010 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13688))))

(declare-fun b!726968 () Bool)

(declare-fun res!488006 () Bool)

(assert (=> b!726968 (=> (not res!488006) (not e!406996))))

(assert (=> b!726968 (= res!488006 (validKeyInArray!0 (select (arr!19636 a!3186) j!159)))))

(assert (= (and start!64566 res!488014) b!726955))

(assert (= (and b!726955 res!488011) b!726968))

(assert (= (and b!726968 res!488006) b!726956))

(assert (= (and b!726956 res!488005) b!726952))

(assert (= (and b!726952 res!488007) b!726966))

(assert (= (and b!726966 res!488013) b!726963))

(assert (= (and b!726963 res!488004) b!726967))

(assert (= (and b!726967 res!488010) b!726957))

(assert (= (and b!726957 res!488002) b!726965))

(assert (= (and b!726965 res!488008) b!726959))

(assert (= (and b!726959 res!488012) b!726962))

(assert (= (and b!726962 c!79848) b!726960))

(assert (= (and b!726962 (not c!79848)) b!726958))

(assert (= (and b!726962 res!488001) b!726964))

(assert (= (and b!726964 res!488015) b!726954))

(assert (= (and b!726954 res!488016) b!726951))

(assert (= (and b!726951 res!488009) b!726953))

(assert (= (and b!726954 (not res!488003)) b!726961))

(declare-fun m!681043 () Bool)

(assert (=> b!726958 m!681043))

(assert (=> b!726958 m!681043))

(declare-fun m!681045 () Bool)

(assert (=> b!726958 m!681045))

(declare-fun m!681047 () Bool)

(assert (=> b!726954 m!681047))

(declare-fun m!681049 () Bool)

(assert (=> b!726954 m!681049))

(declare-fun m!681051 () Bool)

(assert (=> b!726963 m!681051))

(declare-fun m!681053 () Bool)

(assert (=> start!64566 m!681053))

(declare-fun m!681055 () Bool)

(assert (=> start!64566 m!681055))

(assert (=> b!726951 m!681043))

(assert (=> b!726951 m!681043))

(declare-fun m!681057 () Bool)

(assert (=> b!726951 m!681057))

(declare-fun m!681059 () Bool)

(assert (=> b!726952 m!681059))

(assert (=> b!726968 m!681043))

(assert (=> b!726968 m!681043))

(declare-fun m!681061 () Bool)

(assert (=> b!726968 m!681061))

(assert (=> b!726965 m!681043))

(assert (=> b!726965 m!681043))

(declare-fun m!681063 () Bool)

(assert (=> b!726965 m!681063))

(assert (=> b!726965 m!681063))

(assert (=> b!726965 m!681043))

(declare-fun m!681065 () Bool)

(assert (=> b!726965 m!681065))

(assert (=> b!726960 m!681043))

(assert (=> b!726960 m!681043))

(declare-fun m!681067 () Bool)

(assert (=> b!726960 m!681067))

(declare-fun m!681069 () Bool)

(assert (=> b!726964 m!681069))

(declare-fun m!681071 () Bool)

(assert (=> b!726964 m!681071))

(declare-fun m!681073 () Bool)

(assert (=> b!726964 m!681073))

(declare-fun m!681075 () Bool)

(assert (=> b!726964 m!681075))

(declare-fun m!681077 () Bool)

(assert (=> b!726964 m!681077))

(assert (=> b!726964 m!681075))

(declare-fun m!681079 () Bool)

(assert (=> b!726966 m!681079))

(assert (=> b!726953 m!681043))

(assert (=> b!726953 m!681043))

(declare-fun m!681081 () Bool)

(assert (=> b!726953 m!681081))

(declare-fun m!681083 () Bool)

(assert (=> b!726959 m!681083))

(declare-fun m!681085 () Bool)

(assert (=> b!726961 m!681085))

(declare-fun m!681087 () Bool)

(assert (=> b!726956 m!681087))

(declare-fun m!681089 () Bool)

(assert (=> b!726967 m!681089))

(check-sat (not b!726956) (not b!726953) (not b!726967) (not b!726960) (not start!64566) (not b!726968) (not b!726965) (not b!726964) (not b!726954) (not b!726961) (not b!726966) (not b!726963) (not b!726951) (not b!726952) (not b!726958))
(check-sat)
