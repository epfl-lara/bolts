; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67782 () Bool)

(assert start!67782)

(declare-fun b!786968 () Bool)

(declare-fun e!437477 () Bool)

(declare-fun e!437476 () Bool)

(assert (=> b!786968 (= e!437477 e!437476)))

(declare-fun res!533078 () Bool)

(assert (=> b!786968 (=> (not res!533078) (not e!437476))))

(declare-datatypes ((array!42777 0))(
  ( (array!42778 (arr!20473 (Array (_ BitVec 32) (_ BitVec 64))) (size!20894 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42777)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8080 0))(
  ( (MissingZero!8080 (index!34687 (_ BitVec 32))) (Found!8080 (index!34688 (_ BitVec 32))) (Intermediate!8080 (undefined!8892 Bool) (index!34689 (_ BitVec 32)) (x!65653 (_ BitVec 32))) (Undefined!8080) (MissingVacant!8080 (index!34690 (_ BitVec 32))) )
))
(declare-fun lt!351043 () SeekEntryResult!8080)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42777 (_ BitVec 32)) SeekEntryResult!8080)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786968 (= res!533078 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20473 a!3186) j!159) mask!3328) (select (arr!20473 a!3186) j!159) a!3186 mask!3328) lt!351043))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786968 (= lt!351043 (Intermediate!8080 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786969 () Bool)

(declare-fun res!533083 () Bool)

(declare-fun e!437480 () Bool)

(assert (=> b!786969 (=> (not res!533083) (not e!437480))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786969 (= res!533083 (validKeyInArray!0 k0!2102))))

(declare-fun b!786970 () Bool)

(declare-fun res!533074 () Bool)

(declare-fun e!437474 () Bool)

(assert (=> b!786970 (=> (not res!533074) (not e!437474))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!351040 () array!42777)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!351042 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42777 (_ BitVec 32)) SeekEntryResult!8080)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42777 (_ BitVec 32)) SeekEntryResult!8080)

(assert (=> b!786970 (= res!533074 (= (seekEntryOrOpen!0 lt!351042 lt!351040 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351042 lt!351040 mask!3328)))))

(declare-fun e!437482 () Bool)

(declare-fun b!786972 () Bool)

(declare-fun lt!351046 () SeekEntryResult!8080)

(assert (=> b!786972 (= e!437482 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20473 a!3186) j!159) a!3186 mask!3328) lt!351046))))

(declare-fun b!786973 () Bool)

(declare-fun res!533073 () Bool)

(assert (=> b!786973 (=> (not res!533073) (not e!437476))))

(declare-fun e!437473 () Bool)

(assert (=> b!786973 (= res!533073 e!437473)))

(declare-fun c!87360 () Bool)

(assert (=> b!786973 (= c!87360 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786974 () Bool)

(declare-fun res!533067 () Bool)

(assert (=> b!786974 (=> (not res!533067) (not e!437476))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!786974 (= res!533067 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20473 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786975 () Bool)

(declare-fun res!533079 () Bool)

(assert (=> b!786975 (=> (not res!533079) (not e!437477))))

(declare-datatypes ((List!14528 0))(
  ( (Nil!14525) (Cons!14524 (h!15647 (_ BitVec 64)) (t!20851 List!14528)) )
))
(declare-fun arrayNoDuplicates!0 (array!42777 (_ BitVec 32) List!14528) Bool)

(assert (=> b!786975 (= res!533079 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14525))))

(declare-fun b!786976 () Bool)

(assert (=> b!786976 (= e!437480 e!437477)))

(declare-fun res!533075 () Bool)

(assert (=> b!786976 (=> (not res!533075) (not e!437477))))

(declare-fun lt!351038 () SeekEntryResult!8080)

(assert (=> b!786976 (= res!533075 (or (= lt!351038 (MissingZero!8080 i!1173)) (= lt!351038 (MissingVacant!8080 i!1173))))))

(assert (=> b!786976 (= lt!351038 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!786977 () Bool)

(declare-fun e!437475 () Bool)

(assert (=> b!786977 (= e!437476 e!437475)))

(declare-fun res!533066 () Bool)

(assert (=> b!786977 (=> (not res!533066) (not e!437475))))

(declare-fun lt!351047 () SeekEntryResult!8080)

(declare-fun lt!351048 () SeekEntryResult!8080)

(assert (=> b!786977 (= res!533066 (= lt!351047 lt!351048))))

(assert (=> b!786977 (= lt!351048 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351042 lt!351040 mask!3328))))

(assert (=> b!786977 (= lt!351047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351042 mask!3328) lt!351042 lt!351040 mask!3328))))

(assert (=> b!786977 (= lt!351042 (select (store (arr!20473 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!786977 (= lt!351040 (array!42778 (store (arr!20473 a!3186) i!1173 k0!2102) (size!20894 a!3186)))))

(declare-fun b!786978 () Bool)

(declare-fun e!437481 () Bool)

(assert (=> b!786978 (= e!437481 true)))

(assert (=> b!786978 e!437474))

(declare-fun res!533071 () Bool)

(assert (=> b!786978 (=> (not res!533071) (not e!437474))))

(declare-fun lt!351041 () (_ BitVec 64))

(assert (=> b!786978 (= res!533071 (= lt!351041 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27230 0))(
  ( (Unit!27231) )
))
(declare-fun lt!351045 () Unit!27230)

(declare-fun e!437478 () Unit!27230)

(assert (=> b!786978 (= lt!351045 e!437478)))

(declare-fun c!87359 () Bool)

(assert (=> b!786978 (= c!87359 (= lt!351041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786979 () Bool)

(declare-fun e!437479 () Bool)

(declare-fun e!437472 () Bool)

(assert (=> b!786979 (= e!437479 e!437472)))

(declare-fun res!533077 () Bool)

(assert (=> b!786979 (=> res!533077 e!437472)))

(declare-fun lt!351039 () SeekEntryResult!8080)

(assert (=> b!786979 (= res!533077 (not (= lt!351039 lt!351046)))))

(assert (=> b!786979 (= lt!351039 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20473 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786980 () Bool)

(declare-fun res!533081 () Bool)

(assert (=> b!786980 (=> (not res!533081) (not e!437480))))

(declare-fun arrayContainsKey!0 (array!42777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786980 (= res!533081 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786981 () Bool)

(assert (=> b!786981 (= e!437472 e!437481)))

(declare-fun res!533080 () Bool)

(assert (=> b!786981 (=> res!533080 e!437481)))

(assert (=> b!786981 (= res!533080 (= lt!351041 lt!351042))))

(assert (=> b!786981 (= lt!351041 (select (store (arr!20473 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!786982 () Bool)

(assert (=> b!786982 (= e!437475 (not e!437479))))

(declare-fun res!533069 () Bool)

(assert (=> b!786982 (=> res!533069 e!437479)))

(get-info :version)

(assert (=> b!786982 (= res!533069 (or (not ((_ is Intermediate!8080) lt!351048)) (bvslt x!1131 (x!65653 lt!351048)) (not (= x!1131 (x!65653 lt!351048))) (not (= index!1321 (index!34689 lt!351048)))))))

(assert (=> b!786982 e!437482))

(declare-fun res!533072 () Bool)

(assert (=> b!786982 (=> (not res!533072) (not e!437482))))

(declare-fun lt!351044 () SeekEntryResult!8080)

(assert (=> b!786982 (= res!533072 (= lt!351044 lt!351046))))

(assert (=> b!786982 (= lt!351046 (Found!8080 j!159))))

(assert (=> b!786982 (= lt!351044 (seekEntryOrOpen!0 (select (arr!20473 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42777 (_ BitVec 32)) Bool)

(assert (=> b!786982 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351049 () Unit!27230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27230)

(assert (=> b!786982 (= lt!351049 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786983 () Bool)

(assert (=> b!786983 (= e!437473 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20473 a!3186) j!159) a!3186 mask!3328) (Found!8080 j!159)))))

(declare-fun b!786984 () Bool)

(assert (=> b!786984 (= e!437474 (= lt!351044 lt!351039))))

(declare-fun b!786985 () Bool)

(assert (=> b!786985 (= e!437473 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20473 a!3186) j!159) a!3186 mask!3328) lt!351043))))

(declare-fun b!786971 () Bool)

(declare-fun res!533082 () Bool)

(assert (=> b!786971 (=> (not res!533082) (not e!437477))))

(assert (=> b!786971 (= res!533082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!533076 () Bool)

(assert (=> start!67782 (=> (not res!533076) (not e!437480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67782 (= res!533076 (validMask!0 mask!3328))))

(assert (=> start!67782 e!437480))

(assert (=> start!67782 true))

(declare-fun array_inv!16247 (array!42777) Bool)

(assert (=> start!67782 (array_inv!16247 a!3186)))

(declare-fun b!786986 () Bool)

(declare-fun Unit!27232 () Unit!27230)

(assert (=> b!786986 (= e!437478 Unit!27232)))

(assert (=> b!786986 false))

(declare-fun b!786987 () Bool)

(declare-fun res!533068 () Bool)

(assert (=> b!786987 (=> (not res!533068) (not e!437480))))

(assert (=> b!786987 (= res!533068 (and (= (size!20894 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20894 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20894 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786988 () Bool)

(declare-fun res!533065 () Bool)

(assert (=> b!786988 (=> (not res!533065) (not e!437477))))

(assert (=> b!786988 (= res!533065 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20894 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20894 a!3186))))))

(declare-fun b!786989 () Bool)

(declare-fun Unit!27233 () Unit!27230)

(assert (=> b!786989 (= e!437478 Unit!27233)))

(declare-fun b!786990 () Bool)

(declare-fun res!533070 () Bool)

(assert (=> b!786990 (=> (not res!533070) (not e!437480))))

(assert (=> b!786990 (= res!533070 (validKeyInArray!0 (select (arr!20473 a!3186) j!159)))))

(assert (= (and start!67782 res!533076) b!786987))

(assert (= (and b!786987 res!533068) b!786990))

(assert (= (and b!786990 res!533070) b!786969))

(assert (= (and b!786969 res!533083) b!786980))

(assert (= (and b!786980 res!533081) b!786976))

(assert (= (and b!786976 res!533075) b!786971))

(assert (= (and b!786971 res!533082) b!786975))

(assert (= (and b!786975 res!533079) b!786988))

(assert (= (and b!786988 res!533065) b!786968))

(assert (= (and b!786968 res!533078) b!786974))

(assert (= (and b!786974 res!533067) b!786973))

(assert (= (and b!786973 c!87360) b!786985))

(assert (= (and b!786973 (not c!87360)) b!786983))

(assert (= (and b!786973 res!533073) b!786977))

(assert (= (and b!786977 res!533066) b!786982))

(assert (= (and b!786982 res!533072) b!786972))

(assert (= (and b!786982 (not res!533069)) b!786979))

(assert (= (and b!786979 (not res!533077)) b!786981))

(assert (= (and b!786981 (not res!533080)) b!786978))

(assert (= (and b!786978 c!87359) b!786986))

(assert (= (and b!786978 (not c!87359)) b!786989))

(assert (= (and b!786978 res!533071) b!786970))

(assert (= (and b!786970 res!533074) b!786984))

(declare-fun m!728705 () Bool)

(assert (=> b!786968 m!728705))

(assert (=> b!786968 m!728705))

(declare-fun m!728707 () Bool)

(assert (=> b!786968 m!728707))

(assert (=> b!786968 m!728707))

(assert (=> b!786968 m!728705))

(declare-fun m!728709 () Bool)

(assert (=> b!786968 m!728709))

(declare-fun m!728711 () Bool)

(assert (=> b!786981 m!728711))

(declare-fun m!728713 () Bool)

(assert (=> b!786981 m!728713))

(declare-fun m!728715 () Bool)

(assert (=> b!786980 m!728715))

(declare-fun m!728717 () Bool)

(assert (=> b!786975 m!728717))

(assert (=> b!786983 m!728705))

(assert (=> b!786983 m!728705))

(declare-fun m!728719 () Bool)

(assert (=> b!786983 m!728719))

(declare-fun m!728721 () Bool)

(assert (=> b!786970 m!728721))

(declare-fun m!728723 () Bool)

(assert (=> b!786970 m!728723))

(assert (=> b!786972 m!728705))

(assert (=> b!786972 m!728705))

(declare-fun m!728725 () Bool)

(assert (=> b!786972 m!728725))

(assert (=> b!786985 m!728705))

(assert (=> b!786985 m!728705))

(declare-fun m!728727 () Bool)

(assert (=> b!786985 m!728727))

(declare-fun m!728729 () Bool)

(assert (=> start!67782 m!728729))

(declare-fun m!728731 () Bool)

(assert (=> start!67782 m!728731))

(declare-fun m!728733 () Bool)

(assert (=> b!786974 m!728733))

(declare-fun m!728735 () Bool)

(assert (=> b!786971 m!728735))

(declare-fun m!728737 () Bool)

(assert (=> b!786977 m!728737))

(assert (=> b!786977 m!728737))

(declare-fun m!728739 () Bool)

(assert (=> b!786977 m!728739))

(assert (=> b!786977 m!728711))

(declare-fun m!728741 () Bool)

(assert (=> b!786977 m!728741))

(declare-fun m!728743 () Bool)

(assert (=> b!786977 m!728743))

(declare-fun m!728745 () Bool)

(assert (=> b!786976 m!728745))

(declare-fun m!728747 () Bool)

(assert (=> b!786969 m!728747))

(assert (=> b!786982 m!728705))

(assert (=> b!786982 m!728705))

(declare-fun m!728749 () Bool)

(assert (=> b!786982 m!728749))

(declare-fun m!728751 () Bool)

(assert (=> b!786982 m!728751))

(declare-fun m!728753 () Bool)

(assert (=> b!786982 m!728753))

(assert (=> b!786979 m!728705))

(assert (=> b!786979 m!728705))

(assert (=> b!786979 m!728719))

(assert (=> b!786990 m!728705))

(assert (=> b!786990 m!728705))

(declare-fun m!728755 () Bool)

(assert (=> b!786990 m!728755))

(check-sat (not b!786977) (not b!786971) (not b!786980) (not b!786979) (not b!786990) (not b!786975) (not b!786985) (not b!786983) (not b!786982) (not b!786969) (not b!786970) (not start!67782) (not b!786976) (not b!786972) (not b!786968))
(check-sat)
