; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65646 () Bool)

(assert start!65646)

(declare-fun b!750971 () Bool)

(declare-fun res!507062 () Bool)

(declare-fun e!418973 () Bool)

(assert (=> b!750971 (=> (not res!507062) (not e!418973))))

(declare-datatypes ((array!41772 0))(
  ( (array!41773 (arr!19996 (Array (_ BitVec 32) (_ BitVec 64))) (size!20417 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41772)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!750971 (= res!507062 (and (= (size!20417 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20417 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20417 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750972 () Bool)

(declare-fun e!418975 () Bool)

(declare-fun e!418983 () Bool)

(assert (=> b!750972 (= e!418975 (not e!418983))))

(declare-fun res!507056 () Bool)

(assert (=> b!750972 (=> res!507056 e!418983)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7603 0))(
  ( (MissingZero!7603 (index!32779 (_ BitVec 32))) (Found!7603 (index!32780 (_ BitVec 32))) (Intermediate!7603 (undefined!8415 Bool) (index!32781 (_ BitVec 32)) (x!63730 (_ BitVec 32))) (Undefined!7603) (MissingVacant!7603 (index!32782 (_ BitVec 32))) )
))
(declare-fun lt!333980 () SeekEntryResult!7603)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!750972 (= res!507056 (or (not ((_ is Intermediate!7603) lt!333980)) (bvslt x!1131 (x!63730 lt!333980)) (not (= x!1131 (x!63730 lt!333980))) (not (= index!1321 (index!32781 lt!333980)))))))

(declare-fun e!418979 () Bool)

(assert (=> b!750972 e!418979))

(declare-fun res!507059 () Bool)

(assert (=> b!750972 (=> (not res!507059) (not e!418979))))

(declare-fun lt!333983 () SeekEntryResult!7603)

(declare-fun lt!333982 () SeekEntryResult!7603)

(assert (=> b!750972 (= res!507059 (= lt!333983 lt!333982))))

(assert (=> b!750972 (= lt!333982 (Found!7603 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41772 (_ BitVec 32)) SeekEntryResult!7603)

(assert (=> b!750972 (= lt!333983 (seekEntryOrOpen!0 (select (arr!19996 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41772 (_ BitVec 32)) Bool)

(assert (=> b!750972 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25814 0))(
  ( (Unit!25815) )
))
(declare-fun lt!333973 () Unit!25814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41772 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25814)

(assert (=> b!750972 (= lt!333973 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750973 () Bool)

(declare-fun res!507050 () Bool)

(declare-fun e!418982 () Bool)

(assert (=> b!750973 (=> (not res!507050) (not e!418982))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750973 (= res!507050 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20417 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20417 a!3186))))))

(declare-fun b!750974 () Bool)

(declare-fun res!507051 () Bool)

(assert (=> b!750974 (=> (not res!507051) (not e!418973))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750974 (= res!507051 (validKeyInArray!0 k0!2102))))

(declare-fun b!750975 () Bool)

(declare-fun res!507048 () Bool)

(assert (=> b!750975 (=> (not res!507048) (not e!418973))))

(assert (=> b!750975 (= res!507048 (validKeyInArray!0 (select (arr!19996 a!3186) j!159)))))

(declare-fun res!507057 () Bool)

(assert (=> start!65646 (=> (not res!507057) (not e!418973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65646 (= res!507057 (validMask!0 mask!3328))))

(assert (=> start!65646 e!418973))

(assert (=> start!65646 true))

(declare-fun array_inv!15770 (array!41772) Bool)

(assert (=> start!65646 (array_inv!15770 a!3186)))

(declare-fun e!418980 () Bool)

(declare-fun b!750976 () Bool)

(declare-fun lt!333978 () array!41772)

(declare-fun lt!333981 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41772 (_ BitVec 32)) SeekEntryResult!7603)

(assert (=> b!750976 (= e!418980 (= (seekEntryOrOpen!0 lt!333981 lt!333978 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333981 lt!333978 mask!3328)))))

(declare-fun b!750977 () Bool)

(declare-fun res!507061 () Bool)

(assert (=> b!750977 (=> (not res!507061) (not e!418982))))

(declare-datatypes ((List!14051 0))(
  ( (Nil!14048) (Cons!14047 (h!15119 (_ BitVec 64)) (t!20374 List!14051)) )
))
(declare-fun arrayNoDuplicates!0 (array!41772 (_ BitVec 32) List!14051) Bool)

(assert (=> b!750977 (= res!507061 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14048))))

(declare-fun b!750978 () Bool)

(declare-fun res!507053 () Bool)

(declare-fun e!418977 () Bool)

(assert (=> b!750978 (=> (not res!507053) (not e!418977))))

(declare-fun e!418974 () Bool)

(assert (=> b!750978 (= res!507053 e!418974)))

(declare-fun c!82344 () Bool)

(assert (=> b!750978 (= c!82344 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750979 () Bool)

(declare-fun e!418981 () Unit!25814)

(declare-fun Unit!25816 () Unit!25814)

(assert (=> b!750979 (= e!418981 Unit!25816)))

(assert (=> b!750979 false))

(declare-fun b!750980 () Bool)

(declare-fun res!507058 () Bool)

(assert (=> b!750980 (=> res!507058 e!418983)))

(assert (=> b!750980 (= res!507058 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19996 a!3186) j!159) a!3186 mask!3328) lt!333982)))))

(declare-fun b!750981 () Bool)

(assert (=> b!750981 (= e!418977 e!418975)))

(declare-fun res!507060 () Bool)

(assert (=> b!750981 (=> (not res!507060) (not e!418975))))

(declare-fun lt!333975 () SeekEntryResult!7603)

(assert (=> b!750981 (= res!507060 (= lt!333975 lt!333980))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41772 (_ BitVec 32)) SeekEntryResult!7603)

(assert (=> b!750981 (= lt!333980 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333981 lt!333978 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750981 (= lt!333975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333981 mask!3328) lt!333981 lt!333978 mask!3328))))

(assert (=> b!750981 (= lt!333981 (select (store (arr!19996 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!750981 (= lt!333978 (array!41773 (store (arr!19996 a!3186) i!1173 k0!2102) (size!20417 a!3186)))))

(declare-fun b!750982 () Bool)

(declare-fun Unit!25817 () Unit!25814)

(assert (=> b!750982 (= e!418981 Unit!25817)))

(declare-fun b!750983 () Bool)

(declare-fun e!418978 () Bool)

(assert (=> b!750983 (= e!418983 e!418978)))

(declare-fun res!507047 () Bool)

(assert (=> b!750983 (=> res!507047 e!418978)))

(declare-fun lt!333977 () (_ BitVec 64))

(assert (=> b!750983 (= res!507047 (= lt!333977 lt!333981))))

(assert (=> b!750983 (= lt!333977 (select (store (arr!19996 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!750984 () Bool)

(assert (=> b!750984 (= e!418982 e!418977)))

(declare-fun res!507049 () Bool)

(assert (=> b!750984 (=> (not res!507049) (not e!418977))))

(declare-fun lt!333979 () SeekEntryResult!7603)

(assert (=> b!750984 (= res!507049 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19996 a!3186) j!159) mask!3328) (select (arr!19996 a!3186) j!159) a!3186 mask!3328) lt!333979))))

(assert (=> b!750984 (= lt!333979 (Intermediate!7603 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750985 () Bool)

(assert (=> b!750985 (= e!418974 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19996 a!3186) j!159) a!3186 mask!3328) lt!333979))))

(declare-fun b!750986 () Bool)

(declare-fun res!507052 () Bool)

(assert (=> b!750986 (=> (not res!507052) (not e!418973))))

(declare-fun arrayContainsKey!0 (array!41772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750986 (= res!507052 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750987 () Bool)

(declare-fun res!507054 () Bool)

(assert (=> b!750987 (=> (not res!507054) (not e!418977))))

(assert (=> b!750987 (= res!507054 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19996 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750988 () Bool)

(assert (=> b!750988 (= e!418979 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19996 a!3186) j!159) a!3186 mask!3328) lt!333982))))

(declare-fun b!750989 () Bool)

(assert (=> b!750989 (= e!418978 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!750989 e!418980))

(declare-fun res!507063 () Bool)

(assert (=> b!750989 (=> (not res!507063) (not e!418980))))

(assert (=> b!750989 (= res!507063 (= lt!333977 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333974 () Unit!25814)

(assert (=> b!750989 (= lt!333974 e!418981)))

(declare-fun c!82343 () Bool)

(assert (=> b!750989 (= c!82343 (= lt!333977 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750990 () Bool)

(assert (=> b!750990 (= e!418974 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19996 a!3186) j!159) a!3186 mask!3328) (Found!7603 j!159)))))

(declare-fun b!750991 () Bool)

(declare-fun res!507046 () Bool)

(assert (=> b!750991 (=> (not res!507046) (not e!418982))))

(assert (=> b!750991 (= res!507046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750992 () Bool)

(assert (=> b!750992 (= e!418973 e!418982)))

(declare-fun res!507055 () Bool)

(assert (=> b!750992 (=> (not res!507055) (not e!418982))))

(declare-fun lt!333976 () SeekEntryResult!7603)

(assert (=> b!750992 (= res!507055 (or (= lt!333976 (MissingZero!7603 i!1173)) (= lt!333976 (MissingVacant!7603 i!1173))))))

(assert (=> b!750992 (= lt!333976 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!65646 res!507057) b!750971))

(assert (= (and b!750971 res!507062) b!750975))

(assert (= (and b!750975 res!507048) b!750974))

(assert (= (and b!750974 res!507051) b!750986))

(assert (= (and b!750986 res!507052) b!750992))

(assert (= (and b!750992 res!507055) b!750991))

(assert (= (and b!750991 res!507046) b!750977))

(assert (= (and b!750977 res!507061) b!750973))

(assert (= (and b!750973 res!507050) b!750984))

(assert (= (and b!750984 res!507049) b!750987))

(assert (= (and b!750987 res!507054) b!750978))

(assert (= (and b!750978 c!82344) b!750985))

(assert (= (and b!750978 (not c!82344)) b!750990))

(assert (= (and b!750978 res!507053) b!750981))

(assert (= (and b!750981 res!507060) b!750972))

(assert (= (and b!750972 res!507059) b!750988))

(assert (= (and b!750972 (not res!507056)) b!750980))

(assert (= (and b!750980 (not res!507058)) b!750983))

(assert (= (and b!750983 (not res!507047)) b!750989))

(assert (= (and b!750989 c!82343) b!750979))

(assert (= (and b!750989 (not c!82343)) b!750982))

(assert (= (and b!750989 res!507063) b!750976))

(declare-fun m!700325 () Bool)

(assert (=> b!750986 m!700325))

(declare-fun m!700327 () Bool)

(assert (=> b!750990 m!700327))

(assert (=> b!750990 m!700327))

(declare-fun m!700329 () Bool)

(assert (=> b!750990 m!700329))

(declare-fun m!700331 () Bool)

(assert (=> b!750976 m!700331))

(declare-fun m!700333 () Bool)

(assert (=> b!750976 m!700333))

(assert (=> b!750975 m!700327))

(assert (=> b!750975 m!700327))

(declare-fun m!700335 () Bool)

(assert (=> b!750975 m!700335))

(assert (=> b!750980 m!700327))

(assert (=> b!750980 m!700327))

(assert (=> b!750980 m!700329))

(declare-fun m!700337 () Bool)

(assert (=> b!750992 m!700337))

(declare-fun m!700339 () Bool)

(assert (=> b!750981 m!700339))

(declare-fun m!700341 () Bool)

(assert (=> b!750981 m!700341))

(assert (=> b!750981 m!700339))

(declare-fun m!700343 () Bool)

(assert (=> b!750981 m!700343))

(declare-fun m!700345 () Bool)

(assert (=> b!750981 m!700345))

(declare-fun m!700347 () Bool)

(assert (=> b!750981 m!700347))

(declare-fun m!700349 () Bool)

(assert (=> b!750987 m!700349))

(declare-fun m!700351 () Bool)

(assert (=> b!750974 m!700351))

(assert (=> b!750972 m!700327))

(assert (=> b!750972 m!700327))

(declare-fun m!700353 () Bool)

(assert (=> b!750972 m!700353))

(declare-fun m!700355 () Bool)

(assert (=> b!750972 m!700355))

(declare-fun m!700357 () Bool)

(assert (=> b!750972 m!700357))

(assert (=> b!750983 m!700345))

(declare-fun m!700359 () Bool)

(assert (=> b!750983 m!700359))

(assert (=> b!750985 m!700327))

(assert (=> b!750985 m!700327))

(declare-fun m!700361 () Bool)

(assert (=> b!750985 m!700361))

(assert (=> b!750988 m!700327))

(assert (=> b!750988 m!700327))

(declare-fun m!700363 () Bool)

(assert (=> b!750988 m!700363))

(assert (=> b!750984 m!700327))

(assert (=> b!750984 m!700327))

(declare-fun m!700365 () Bool)

(assert (=> b!750984 m!700365))

(assert (=> b!750984 m!700365))

(assert (=> b!750984 m!700327))

(declare-fun m!700367 () Bool)

(assert (=> b!750984 m!700367))

(declare-fun m!700369 () Bool)

(assert (=> start!65646 m!700369))

(declare-fun m!700371 () Bool)

(assert (=> start!65646 m!700371))

(declare-fun m!700373 () Bool)

(assert (=> b!750977 m!700373))

(declare-fun m!700375 () Bool)

(assert (=> b!750991 m!700375))

(check-sat (not b!750986) (not b!750975) (not b!750972) (not b!750980) (not b!750988) (not b!750990) (not b!750992) (not b!750974) (not b!750984) (not b!750976) (not b!750977) (not b!750981) (not b!750985) (not b!750991) (not start!65646))
(check-sat)
