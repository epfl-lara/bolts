; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68154 () Bool)

(assert start!68154)

(declare-fun b!792110 () Bool)

(declare-fun res!536944 () Bool)

(declare-fun e!440145 () Bool)

(assert (=> b!792110 (=> (not res!536944) (not e!440145))))

(declare-datatypes ((array!42979 0))(
  ( (array!42980 (arr!20569 (Array (_ BitVec 32) (_ BitVec 64))) (size!20990 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42979)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42979 (_ BitVec 32)) Bool)

(assert (=> b!792110 (= res!536944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792111 () Bool)

(declare-fun res!536949 () Bool)

(declare-fun e!440146 () Bool)

(assert (=> b!792111 (=> (not res!536949) (not e!440146))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792111 (= res!536949 (validKeyInArray!0 k0!2044))))

(declare-fun b!792112 () Bool)

(declare-fun res!536947 () Bool)

(assert (=> b!792112 (=> (not res!536947) (not e!440145))))

(assert (=> b!792112 (= res!536947 (and (bvsle #b00000000000000000000000000000000 (size!20990 a!3170)) (bvslt (size!20990 a!3170) #b01111111111111111111111111111111)))))

(declare-fun b!792113 () Bool)

(declare-datatypes ((List!14585 0))(
  ( (Nil!14582) (Cons!14581 (h!15710 (_ BitVec 64)) (t!20908 List!14585)) )
))
(declare-fun noDuplicate!1286 (List!14585) Bool)

(assert (=> b!792113 (= e!440145 (not (noDuplicate!1286 Nil!14582)))))

(declare-fun res!536945 () Bool)

(assert (=> start!68154 (=> (not res!536945) (not e!440146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68154 (= res!536945 (validMask!0 mask!3266))))

(assert (=> start!68154 e!440146))

(assert (=> start!68154 true))

(declare-fun array_inv!16343 (array!42979) Bool)

(assert (=> start!68154 (array_inv!16343 a!3170)))

(declare-fun b!792114 () Bool)

(declare-fun res!536950 () Bool)

(assert (=> b!792114 (=> (not res!536950) (not e!440146))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792114 (= res!536950 (and (= (size!20990 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20990 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20990 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792115 () Bool)

(assert (=> b!792115 (= e!440146 e!440145)))

(declare-fun res!536946 () Bool)

(assert (=> b!792115 (=> (not res!536946) (not e!440145))))

(declare-datatypes ((SeekEntryResult!8167 0))(
  ( (MissingZero!8167 (index!35035 (_ BitVec 32))) (Found!8167 (index!35036 (_ BitVec 32))) (Intermediate!8167 (undefined!8979 Bool) (index!35037 (_ BitVec 32)) (x!66014 (_ BitVec 32))) (Undefined!8167) (MissingVacant!8167 (index!35038 (_ BitVec 32))) )
))
(declare-fun lt!353371 () SeekEntryResult!8167)

(assert (=> b!792115 (= res!536946 (or (= lt!353371 (MissingZero!8167 i!1163)) (= lt!353371 (MissingVacant!8167 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42979 (_ BitVec 32)) SeekEntryResult!8167)

(assert (=> b!792115 (= lt!353371 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!792116 () Bool)

(declare-fun res!536948 () Bool)

(assert (=> b!792116 (=> (not res!536948) (not e!440146))))

(declare-fun arrayContainsKey!0 (array!42979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792116 (= res!536948 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792117 () Bool)

(declare-fun res!536943 () Bool)

(assert (=> b!792117 (=> (not res!536943) (not e!440146))))

(assert (=> b!792117 (= res!536943 (validKeyInArray!0 (select (arr!20569 a!3170) j!153)))))

(assert (= (and start!68154 res!536945) b!792114))

(assert (= (and b!792114 res!536950) b!792117))

(assert (= (and b!792117 res!536943) b!792111))

(assert (= (and b!792111 res!536949) b!792116))

(assert (= (and b!792116 res!536948) b!792115))

(assert (= (and b!792115 res!536946) b!792110))

(assert (= (and b!792110 res!536944) b!792112))

(assert (= (and b!792112 res!536947) b!792113))

(declare-fun m!732823 () Bool)

(assert (=> b!792116 m!732823))

(declare-fun m!732825 () Bool)

(assert (=> b!792111 m!732825))

(declare-fun m!732827 () Bool)

(assert (=> start!68154 m!732827))

(declare-fun m!732829 () Bool)

(assert (=> start!68154 m!732829))

(declare-fun m!732831 () Bool)

(assert (=> b!792113 m!732831))

(declare-fun m!732833 () Bool)

(assert (=> b!792110 m!732833))

(declare-fun m!732835 () Bool)

(assert (=> b!792115 m!732835))

(declare-fun m!732837 () Bool)

(assert (=> b!792117 m!732837))

(assert (=> b!792117 m!732837))

(declare-fun m!732839 () Bool)

(assert (=> b!792117 m!732839))

(check-sat (not b!792111) (not b!792117) (not b!792115) (not b!792110) (not start!68154) (not b!792116) (not b!792113))
(check-sat)
(get-model)

(declare-fun b!792166 () Bool)

(declare-fun e!440174 () SeekEntryResult!8167)

(declare-fun lt!353381 () SeekEntryResult!8167)

(assert (=> b!792166 (= e!440174 (MissingZero!8167 (index!35037 lt!353381)))))

(declare-fun b!792167 () Bool)

(declare-fun e!440176 () SeekEntryResult!8167)

(declare-fun e!440175 () SeekEntryResult!8167)

(assert (=> b!792167 (= e!440176 e!440175)))

(declare-fun lt!353382 () (_ BitVec 64))

(assert (=> b!792167 (= lt!353382 (select (arr!20569 a!3170) (index!35037 lt!353381)))))

(declare-fun c!88000 () Bool)

(assert (=> b!792167 (= c!88000 (= lt!353382 k0!2044))))

(declare-fun b!792168 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42979 (_ BitVec 32)) SeekEntryResult!8167)

(assert (=> b!792168 (= e!440174 (seekKeyOrZeroReturnVacant!0 (x!66014 lt!353381) (index!35037 lt!353381) (index!35037 lt!353381) k0!2044 a!3170 mask!3266))))

(declare-fun b!792169 () Bool)

(declare-fun c!88001 () Bool)

(assert (=> b!792169 (= c!88001 (= lt!353382 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!792169 (= e!440175 e!440174)))

(declare-fun d!103091 () Bool)

(declare-fun lt!353383 () SeekEntryResult!8167)

(get-info :version)

(assert (=> d!103091 (and (or ((_ is Undefined!8167) lt!353383) (not ((_ is Found!8167) lt!353383)) (and (bvsge (index!35036 lt!353383) #b00000000000000000000000000000000) (bvslt (index!35036 lt!353383) (size!20990 a!3170)))) (or ((_ is Undefined!8167) lt!353383) ((_ is Found!8167) lt!353383) (not ((_ is MissingZero!8167) lt!353383)) (and (bvsge (index!35035 lt!353383) #b00000000000000000000000000000000) (bvslt (index!35035 lt!353383) (size!20990 a!3170)))) (or ((_ is Undefined!8167) lt!353383) ((_ is Found!8167) lt!353383) ((_ is MissingZero!8167) lt!353383) (not ((_ is MissingVacant!8167) lt!353383)) (and (bvsge (index!35038 lt!353383) #b00000000000000000000000000000000) (bvslt (index!35038 lt!353383) (size!20990 a!3170)))) (or ((_ is Undefined!8167) lt!353383) (ite ((_ is Found!8167) lt!353383) (= (select (arr!20569 a!3170) (index!35036 lt!353383)) k0!2044) (ite ((_ is MissingZero!8167) lt!353383) (= (select (arr!20569 a!3170) (index!35035 lt!353383)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8167) lt!353383) (= (select (arr!20569 a!3170) (index!35038 lt!353383)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103091 (= lt!353383 e!440176)))

(declare-fun c!88002 () Bool)

(assert (=> d!103091 (= c!88002 (and ((_ is Intermediate!8167) lt!353381) (undefined!8979 lt!353381)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42979 (_ BitVec 32)) SeekEntryResult!8167)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103091 (= lt!353381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!103091 (validMask!0 mask!3266)))

(assert (=> d!103091 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!353383)))

(declare-fun b!792170 () Bool)

(assert (=> b!792170 (= e!440176 Undefined!8167)))

(declare-fun b!792171 () Bool)

(assert (=> b!792171 (= e!440175 (Found!8167 (index!35037 lt!353381)))))

(assert (= (and d!103091 c!88002) b!792170))

(assert (= (and d!103091 (not c!88002)) b!792167))

(assert (= (and b!792167 c!88000) b!792171))

(assert (= (and b!792167 (not c!88000)) b!792169))

(assert (= (and b!792169 c!88001) b!792166))

(assert (= (and b!792169 (not c!88001)) b!792168))

(declare-fun m!732867 () Bool)

(assert (=> b!792167 m!732867))

(declare-fun m!732869 () Bool)

(assert (=> b!792168 m!732869))

(declare-fun m!732871 () Bool)

(assert (=> d!103091 m!732871))

(declare-fun m!732873 () Bool)

(assert (=> d!103091 m!732873))

(declare-fun m!732875 () Bool)

(assert (=> d!103091 m!732875))

(assert (=> d!103091 m!732827))

(declare-fun m!732877 () Bool)

(assert (=> d!103091 m!732877))

(assert (=> d!103091 m!732871))

(declare-fun m!732879 () Bool)

(assert (=> d!103091 m!732879))

(assert (=> b!792115 d!103091))

(declare-fun d!103103 () Bool)

(declare-fun res!536991 () Bool)

(declare-fun e!440181 () Bool)

(assert (=> d!103103 (=> res!536991 e!440181)))

(assert (=> d!103103 (= res!536991 ((_ is Nil!14582) Nil!14582))))

(assert (=> d!103103 (= (noDuplicate!1286 Nil!14582) e!440181)))

(declare-fun b!792176 () Bool)

(declare-fun e!440182 () Bool)

(assert (=> b!792176 (= e!440181 e!440182)))

(declare-fun res!536992 () Bool)

(assert (=> b!792176 (=> (not res!536992) (not e!440182))))

(declare-fun contains!4117 (List!14585 (_ BitVec 64)) Bool)

(assert (=> b!792176 (= res!536992 (not (contains!4117 (t!20908 Nil!14582) (h!15710 Nil!14582))))))

(declare-fun b!792177 () Bool)

(assert (=> b!792177 (= e!440182 (noDuplicate!1286 (t!20908 Nil!14582)))))

(assert (= (and d!103103 (not res!536991)) b!792176))

(assert (= (and b!792176 res!536992) b!792177))

(declare-fun m!732881 () Bool)

(assert (=> b!792176 m!732881))

(declare-fun m!732883 () Bool)

(assert (=> b!792177 m!732883))

(assert (=> b!792113 d!103103))

(declare-fun d!103113 () Bool)

(assert (=> d!103113 (= (validKeyInArray!0 (select (arr!20569 a!3170) j!153)) (and (not (= (select (arr!20569 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20569 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!792117 d!103113))

(declare-fun b!792210 () Bool)

(declare-fun e!440204 () Bool)

(declare-fun call!35334 () Bool)

(assert (=> b!792210 (= e!440204 call!35334)))

(declare-fun b!792211 () Bool)

(declare-fun e!440205 () Bool)

(assert (=> b!792211 (= e!440205 call!35334)))

(declare-fun b!792212 () Bool)

(declare-fun e!440206 () Bool)

(assert (=> b!792212 (= e!440206 e!440205)))

(declare-fun c!88014 () Bool)

(assert (=> b!792212 (= c!88014 (validKeyInArray!0 (select (arr!20569 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!792213 () Bool)

(assert (=> b!792213 (= e!440205 e!440204)))

(declare-fun lt!353405 () (_ BitVec 64))

(assert (=> b!792213 (= lt!353405 (select (arr!20569 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27430 0))(
  ( (Unit!27431) )
))
(declare-fun lt!353407 () Unit!27430)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42979 (_ BitVec 64) (_ BitVec 32)) Unit!27430)

(assert (=> b!792213 (= lt!353407 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!353405 #b00000000000000000000000000000000))))

(assert (=> b!792213 (arrayContainsKey!0 a!3170 lt!353405 #b00000000000000000000000000000000)))

(declare-fun lt!353406 () Unit!27430)

(assert (=> b!792213 (= lt!353406 lt!353407)))

(declare-fun res!537004 () Bool)

(assert (=> b!792213 (= res!537004 (= (seekEntryOrOpen!0 (select (arr!20569 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8167 #b00000000000000000000000000000000)))))

(assert (=> b!792213 (=> (not res!537004) (not e!440204))))

(declare-fun d!103115 () Bool)

(declare-fun res!537003 () Bool)

(assert (=> d!103115 (=> res!537003 e!440206)))

(assert (=> d!103115 (= res!537003 (bvsge #b00000000000000000000000000000000 (size!20990 a!3170)))))

(assert (=> d!103115 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!440206)))

(declare-fun bm!35331 () Bool)

(assert (=> bm!35331 (= call!35334 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(assert (= (and d!103115 (not res!537003)) b!792212))

(assert (= (and b!792212 c!88014) b!792213))

(assert (= (and b!792212 (not c!88014)) b!792211))

(assert (= (and b!792213 res!537004) b!792210))

(assert (= (or b!792210 b!792211) bm!35331))

(declare-fun m!732895 () Bool)

(assert (=> b!792212 m!732895))

(assert (=> b!792212 m!732895))

(declare-fun m!732897 () Bool)

(assert (=> b!792212 m!732897))

(assert (=> b!792213 m!732895))

(declare-fun m!732899 () Bool)

(assert (=> b!792213 m!732899))

(declare-fun m!732901 () Bool)

(assert (=> b!792213 m!732901))

(assert (=> b!792213 m!732895))

(declare-fun m!732903 () Bool)

(assert (=> b!792213 m!732903))

(declare-fun m!732905 () Bool)

(assert (=> bm!35331 m!732905))

(assert (=> b!792110 d!103115))

(declare-fun d!103119 () Bool)

(assert (=> d!103119 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!792111 d!103119))

(declare-fun d!103121 () Bool)

(assert (=> d!103121 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!68154 d!103121))

(declare-fun d!103129 () Bool)

(assert (=> d!103129 (= (array_inv!16343 a!3170) (bvsge (size!20990 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!68154 d!103129))

(declare-fun d!103131 () Bool)

(declare-fun res!537021 () Bool)

(declare-fun e!440229 () Bool)

(assert (=> d!103131 (=> res!537021 e!440229)))

(assert (=> d!103131 (= res!537021 (= (select (arr!20569 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!103131 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!440229)))

(declare-fun b!792242 () Bool)

(declare-fun e!440230 () Bool)

(assert (=> b!792242 (= e!440229 e!440230)))

(declare-fun res!537022 () Bool)

(assert (=> b!792242 (=> (not res!537022) (not e!440230))))

(assert (=> b!792242 (= res!537022 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20990 a!3170)))))

(declare-fun b!792243 () Bool)

(assert (=> b!792243 (= e!440230 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103131 (not res!537021)) b!792242))

(assert (= (and b!792242 res!537022) b!792243))

(assert (=> d!103131 m!732895))

(declare-fun m!732927 () Bool)

(assert (=> b!792243 m!732927))

(assert (=> b!792116 d!103131))

(check-sat (not b!792168) (not b!792177) (not b!792176) (not b!792213) (not d!103091) (not b!792212) (not bm!35331) (not b!792243))
(check-sat)
