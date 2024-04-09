; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44166 () Bool)

(assert start!44166)

(declare-fun b!486076 () Bool)

(declare-fun res!289763 () Bool)

(declare-fun e!286112 () Bool)

(assert (=> b!486076 (=> (not res!289763) (not e!286112))))

(declare-datatypes ((array!31461 0))(
  ( (array!31462 (arr!15124 (Array (_ BitVec 32) (_ BitVec 64))) (size!15488 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31461)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31461 (_ BitVec 32)) Bool)

(assert (=> b!486076 (= res!289763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486077 () Bool)

(declare-fun res!289759 () Bool)

(declare-fun e!286113 () Bool)

(assert (=> b!486077 (=> (not res!289759) (not e!286113))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486077 (= res!289759 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486078 () Bool)

(assert (=> b!486078 (= e!286113 e!286112)))

(declare-fun res!289761 () Bool)

(assert (=> b!486078 (=> (not res!289761) (not e!286112))))

(declare-datatypes ((SeekEntryResult!3598 0))(
  ( (MissingZero!3598 (index!16571 (_ BitVec 32))) (Found!3598 (index!16572 (_ BitVec 32))) (Intermediate!3598 (undefined!4410 Bool) (index!16573 (_ BitVec 32)) (x!45733 (_ BitVec 32))) (Undefined!3598) (MissingVacant!3598 (index!16574 (_ BitVec 32))) )
))
(declare-fun lt!219650 () SeekEntryResult!3598)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486078 (= res!289761 (or (= lt!219650 (MissingZero!3598 i!1204)) (= lt!219650 (MissingVacant!3598 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31461 (_ BitVec 32)) SeekEntryResult!3598)

(assert (=> b!486078 (= lt!219650 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!289758 () Bool)

(assert (=> start!44166 (=> (not res!289758) (not e!286113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44166 (= res!289758 (validMask!0 mask!3524))))

(assert (=> start!44166 e!286113))

(assert (=> start!44166 true))

(declare-fun array_inv!10898 (array!31461) Bool)

(assert (=> start!44166 (array_inv!10898 a!3235)))

(declare-fun b!486079 () Bool)

(declare-fun res!289760 () Bool)

(assert (=> b!486079 (=> (not res!289760) (not e!286113))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486079 (= res!289760 (and (= (size!15488 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15488 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15488 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486080 () Bool)

(declare-fun res!289757 () Bool)

(assert (=> b!486080 (=> (not res!289757) (not e!286113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486080 (= res!289757 (validKeyInArray!0 (select (arr!15124 a!3235) j!176)))))

(declare-fun b!486081 () Bool)

(declare-fun res!289762 () Bool)

(assert (=> b!486081 (=> (not res!289762) (not e!286112))))

(assert (=> b!486081 (= res!289762 (and (bvsle #b00000000000000000000000000000000 (size!15488 a!3235)) (bvslt (size!15488 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!486082 () Bool)

(declare-fun res!289756 () Bool)

(assert (=> b!486082 (=> (not res!289756) (not e!286113))))

(assert (=> b!486082 (= res!289756 (validKeyInArray!0 k0!2280))))

(declare-fun b!486083 () Bool)

(declare-datatypes ((List!9335 0))(
  ( (Nil!9332) (Cons!9331 (h!10187 (_ BitVec 64)) (t!15571 List!9335)) )
))
(declare-fun noDuplicate!209 (List!9335) Bool)

(assert (=> b!486083 (= e!286112 (not (noDuplicate!209 Nil!9332)))))

(assert (= (and start!44166 res!289758) b!486079))

(assert (= (and b!486079 res!289760) b!486080))

(assert (= (and b!486080 res!289757) b!486082))

(assert (= (and b!486082 res!289756) b!486077))

(assert (= (and b!486077 res!289759) b!486078))

(assert (= (and b!486078 res!289761) b!486076))

(assert (= (and b!486076 res!289763) b!486081))

(assert (= (and b!486081 res!289762) b!486083))

(declare-fun m!466105 () Bool)

(assert (=> b!486077 m!466105))

(declare-fun m!466107 () Bool)

(assert (=> b!486080 m!466107))

(assert (=> b!486080 m!466107))

(declare-fun m!466109 () Bool)

(assert (=> b!486080 m!466109))

(declare-fun m!466111 () Bool)

(assert (=> b!486082 m!466111))

(declare-fun m!466113 () Bool)

(assert (=> b!486076 m!466113))

(declare-fun m!466115 () Bool)

(assert (=> b!486078 m!466115))

(declare-fun m!466117 () Bool)

(assert (=> start!44166 m!466117))

(declare-fun m!466119 () Bool)

(assert (=> start!44166 m!466119))

(declare-fun m!466121 () Bool)

(assert (=> b!486083 m!466121))

(check-sat (not b!486082) (not b!486076) (not b!486080) (not b!486083) (not b!486078) (not b!486077) (not start!44166))
(check-sat)
(get-model)

(declare-fun b!486122 () Bool)

(declare-fun e!286137 () Bool)

(declare-fun call!31265 () Bool)

(assert (=> b!486122 (= e!286137 call!31265)))

(declare-fun b!486123 () Bool)

(declare-fun e!286138 () Bool)

(assert (=> b!486123 (= e!286138 e!286137)))

(declare-fun lt!219661 () (_ BitVec 64))

(assert (=> b!486123 (= lt!219661 (select (arr!15124 a!3235) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14162 0))(
  ( (Unit!14163) )
))
(declare-fun lt!219662 () Unit!14162)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31461 (_ BitVec 64) (_ BitVec 32)) Unit!14162)

(assert (=> b!486123 (= lt!219662 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219661 #b00000000000000000000000000000000))))

(assert (=> b!486123 (arrayContainsKey!0 a!3235 lt!219661 #b00000000000000000000000000000000)))

(declare-fun lt!219660 () Unit!14162)

(assert (=> b!486123 (= lt!219660 lt!219662)))

(declare-fun res!289798 () Bool)

(assert (=> b!486123 (= res!289798 (= (seekEntryOrOpen!0 (select (arr!15124 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3598 #b00000000000000000000000000000000)))))

(assert (=> b!486123 (=> (not res!289798) (not e!286137))))

(declare-fun d!77377 () Bool)

(declare-fun res!289799 () Bool)

(declare-fun e!286136 () Bool)

(assert (=> d!77377 (=> res!289799 e!286136)))

(assert (=> d!77377 (= res!289799 (bvsge #b00000000000000000000000000000000 (size!15488 a!3235)))))

(assert (=> d!77377 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286136)))

(declare-fun bm!31262 () Bool)

(assert (=> bm!31262 (= call!31265 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!486124 () Bool)

(assert (=> b!486124 (= e!286138 call!31265)))

(declare-fun b!486125 () Bool)

(assert (=> b!486125 (= e!286136 e!286138)))

(declare-fun c!58430 () Bool)

(assert (=> b!486125 (= c!58430 (validKeyInArray!0 (select (arr!15124 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77377 (not res!289799)) b!486125))

(assert (= (and b!486125 c!58430) b!486123))

(assert (= (and b!486125 (not c!58430)) b!486124))

(assert (= (and b!486123 res!289798) b!486122))

(assert (= (or b!486122 b!486124) bm!31262))

(declare-fun m!466145 () Bool)

(assert (=> b!486123 m!466145))

(declare-fun m!466147 () Bool)

(assert (=> b!486123 m!466147))

(declare-fun m!466149 () Bool)

(assert (=> b!486123 m!466149))

(assert (=> b!486123 m!466145))

(declare-fun m!466151 () Bool)

(assert (=> b!486123 m!466151))

(declare-fun m!466153 () Bool)

(assert (=> bm!31262 m!466153))

(assert (=> b!486125 m!466145))

(assert (=> b!486125 m!466145))

(declare-fun m!466155 () Bool)

(assert (=> b!486125 m!466155))

(assert (=> b!486076 d!77377))

(declare-fun d!77385 () Bool)

(declare-fun res!289804 () Bool)

(declare-fun e!286143 () Bool)

(assert (=> d!77385 (=> res!289804 e!286143)))

(assert (=> d!77385 (= res!289804 (= (select (arr!15124 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!77385 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!286143)))

(declare-fun b!486130 () Bool)

(declare-fun e!286144 () Bool)

(assert (=> b!486130 (= e!286143 e!286144)))

(declare-fun res!289805 () Bool)

(assert (=> b!486130 (=> (not res!289805) (not e!286144))))

(assert (=> b!486130 (= res!289805 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15488 a!3235)))))

(declare-fun b!486131 () Bool)

(assert (=> b!486131 (= e!286144 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77385 (not res!289804)) b!486130))

(assert (= (and b!486130 res!289805) b!486131))

(assert (=> d!77385 m!466145))

(declare-fun m!466157 () Bool)

(assert (=> b!486131 m!466157))

(assert (=> b!486077 d!77385))

(declare-fun d!77389 () Bool)

(assert (=> d!77389 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44166 d!77389))

(declare-fun d!77399 () Bool)

(assert (=> d!77399 (= (array_inv!10898 a!3235) (bvsge (size!15488 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44166 d!77399))

(declare-fun d!77401 () Bool)

(assert (=> d!77401 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!486082 d!77401))

(declare-fun d!77405 () Bool)

(declare-fun res!289834 () Bool)

(declare-fun e!286179 () Bool)

(assert (=> d!77405 (=> res!289834 e!286179)))

(get-info :version)

(assert (=> d!77405 (= res!289834 ((_ is Nil!9332) Nil!9332))))

(assert (=> d!77405 (= (noDuplicate!209 Nil!9332) e!286179)))

(declare-fun b!486172 () Bool)

(declare-fun e!286180 () Bool)

(assert (=> b!486172 (= e!286179 e!286180)))

(declare-fun res!289835 () Bool)

(assert (=> b!486172 (=> (not res!289835) (not e!286180))))

(declare-fun contains!2696 (List!9335 (_ BitVec 64)) Bool)

(assert (=> b!486172 (= res!289835 (not (contains!2696 (t!15571 Nil!9332) (h!10187 Nil!9332))))))

(declare-fun b!486173 () Bool)

(assert (=> b!486173 (= e!286180 (noDuplicate!209 (t!15571 Nil!9332)))))

(assert (= (and d!77405 (not res!289834)) b!486172))

(assert (= (and b!486172 res!289835) b!486173))

(declare-fun m!466187 () Bool)

(assert (=> b!486172 m!466187))

(declare-fun m!466189 () Bool)

(assert (=> b!486173 m!466189))

(assert (=> b!486083 d!77405))

(declare-fun b!486204 () Bool)

(declare-fun e!286198 () SeekEntryResult!3598)

(declare-fun lt!219698 () SeekEntryResult!3598)

(assert (=> b!486204 (= e!286198 (MissingZero!3598 (index!16573 lt!219698)))))

(declare-fun b!486205 () Bool)

(declare-fun c!58454 () Bool)

(declare-fun lt!219697 () (_ BitVec 64))

(assert (=> b!486205 (= c!58454 (= lt!219697 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!286197 () SeekEntryResult!3598)

(assert (=> b!486205 (= e!286197 e!286198)))

(declare-fun b!486206 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31461 (_ BitVec 32)) SeekEntryResult!3598)

(assert (=> b!486206 (= e!286198 (seekKeyOrZeroReturnVacant!0 (x!45733 lt!219698) (index!16573 lt!219698) (index!16573 lt!219698) k0!2280 a!3235 mask!3524))))

(declare-fun b!486208 () Bool)

(declare-fun e!286196 () SeekEntryResult!3598)

(assert (=> b!486208 (= e!286196 Undefined!3598)))

(declare-fun b!486209 () Bool)

(assert (=> b!486209 (= e!286197 (Found!3598 (index!16573 lt!219698)))))

(declare-fun b!486207 () Bool)

(assert (=> b!486207 (= e!286196 e!286197)))

(assert (=> b!486207 (= lt!219697 (select (arr!15124 a!3235) (index!16573 lt!219698)))))

(declare-fun c!58453 () Bool)

(assert (=> b!486207 (= c!58453 (= lt!219697 k0!2280))))

(declare-fun d!77407 () Bool)

(declare-fun lt!219696 () SeekEntryResult!3598)

(assert (=> d!77407 (and (or ((_ is Undefined!3598) lt!219696) (not ((_ is Found!3598) lt!219696)) (and (bvsge (index!16572 lt!219696) #b00000000000000000000000000000000) (bvslt (index!16572 lt!219696) (size!15488 a!3235)))) (or ((_ is Undefined!3598) lt!219696) ((_ is Found!3598) lt!219696) (not ((_ is MissingZero!3598) lt!219696)) (and (bvsge (index!16571 lt!219696) #b00000000000000000000000000000000) (bvslt (index!16571 lt!219696) (size!15488 a!3235)))) (or ((_ is Undefined!3598) lt!219696) ((_ is Found!3598) lt!219696) ((_ is MissingZero!3598) lt!219696) (not ((_ is MissingVacant!3598) lt!219696)) (and (bvsge (index!16574 lt!219696) #b00000000000000000000000000000000) (bvslt (index!16574 lt!219696) (size!15488 a!3235)))) (or ((_ is Undefined!3598) lt!219696) (ite ((_ is Found!3598) lt!219696) (= (select (arr!15124 a!3235) (index!16572 lt!219696)) k0!2280) (ite ((_ is MissingZero!3598) lt!219696) (= (select (arr!15124 a!3235) (index!16571 lt!219696)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3598) lt!219696) (= (select (arr!15124 a!3235) (index!16574 lt!219696)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77407 (= lt!219696 e!286196)))

(declare-fun c!58452 () Bool)

(assert (=> d!77407 (= c!58452 (and ((_ is Intermediate!3598) lt!219698) (undefined!4410 lt!219698)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31461 (_ BitVec 32)) SeekEntryResult!3598)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77407 (= lt!219698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!77407 (validMask!0 mask!3524)))

(assert (=> d!77407 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!219696)))

(assert (= (and d!77407 c!58452) b!486208))

(assert (= (and d!77407 (not c!58452)) b!486207))

(assert (= (and b!486207 c!58453) b!486209))

(assert (= (and b!486207 (not c!58453)) b!486205))

(assert (= (and b!486205 c!58454) b!486204))

(assert (= (and b!486205 (not c!58454)) b!486206))

(declare-fun m!466205 () Bool)

(assert (=> b!486206 m!466205))

(declare-fun m!466207 () Bool)

(assert (=> b!486207 m!466207))

(declare-fun m!466209 () Bool)

(assert (=> d!77407 m!466209))

(declare-fun m!466211 () Bool)

(assert (=> d!77407 m!466211))

(declare-fun m!466213 () Bool)

(assert (=> d!77407 m!466213))

(declare-fun m!466215 () Bool)

(assert (=> d!77407 m!466215))

(assert (=> d!77407 m!466211))

(declare-fun m!466217 () Bool)

(assert (=> d!77407 m!466217))

(assert (=> d!77407 m!466117))

(assert (=> b!486078 d!77407))

(declare-fun d!77419 () Bool)

(assert (=> d!77419 (= (validKeyInArray!0 (select (arr!15124 a!3235) j!176)) (and (not (= (select (arr!15124 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15124 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!486080 d!77419))

(check-sat (not b!486206) (not b!486125) (not b!486131) (not b!486172) (not d!77407) (not bm!31262) (not b!486123) (not b!486173))
(check-sat)
