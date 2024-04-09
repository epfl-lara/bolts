; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27324 () Bool)

(assert start!27324)

(declare-fun b!283035 () Bool)

(declare-datatypes ((array!14131 0))(
  ( (array!14132 (arr!6707 (Array (_ BitVec 32) (_ BitVec 64))) (size!7059 (_ BitVec 32))) )
))
(declare-fun lt!139934 () array!14131)

(declare-fun e!179586 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14131 (_ BitVec 32)) Bool)

(assert (=> b!283035 (= e!179586 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!139934 mask!3868))))

(assert (=> b!283035 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!139934 mask!3868)))

(declare-datatypes ((Unit!9015 0))(
  ( (Unit!9016) )
))
(declare-fun lt!139932 () Unit!9015)

(declare-fun a!3325 () array!14131)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9015)

(assert (=> b!283035 (= lt!139932 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!283036 () Bool)

(declare-fun res!146147 () Bool)

(declare-fun e!179588 () Bool)

(assert (=> b!283036 (=> (not res!146147) (not e!179588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283036 (= res!146147 (validKeyInArray!0 k0!2581))))

(declare-fun b!283037 () Bool)

(declare-fun res!146143 () Bool)

(assert (=> b!283037 (=> (not res!146143) (not e!179588))))

(declare-datatypes ((List!4536 0))(
  ( (Nil!4533) (Cons!4532 (h!5202 (_ BitVec 64)) (t!9626 List!4536)) )
))
(declare-fun arrayNoDuplicates!0 (array!14131 (_ BitVec 32) List!4536) Bool)

(assert (=> b!283037 (= res!146143 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4533))))

(declare-fun res!146149 () Bool)

(assert (=> start!27324 (=> (not res!146149) (not e!179588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27324 (= res!146149 (validMask!0 mask!3868))))

(assert (=> start!27324 e!179588))

(declare-fun array_inv!4661 (array!14131) Bool)

(assert (=> start!27324 (array_inv!4661 a!3325)))

(assert (=> start!27324 true))

(declare-fun b!283038 () Bool)

(declare-fun e!179590 () Bool)

(assert (=> b!283038 (= e!179590 (not e!179586))))

(declare-fun res!146146 () Bool)

(assert (=> b!283038 (=> res!146146 e!179586)))

(assert (=> b!283038 (= res!146146 (or (bvsge startIndex!26 (bvsub (size!7059 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!283038 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!139933 () Unit!9015)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14131 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9015)

(assert (=> b!283038 (= lt!139933 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1876 0))(
  ( (MissingZero!1876 (index!9674 (_ BitVec 32))) (Found!1876 (index!9675 (_ BitVec 32))) (Intermediate!1876 (undefined!2688 Bool) (index!9676 (_ BitVec 32)) (x!27850 (_ BitVec 32))) (Undefined!1876) (MissingVacant!1876 (index!9677 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14131 (_ BitVec 32)) SeekEntryResult!1876)

(assert (=> b!283038 (= (seekEntryOrOpen!0 (select (arr!6707 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6707 a!3325) i!1267 k0!2581) startIndex!26) lt!139934 mask!3868))))

(declare-fun lt!139930 () Unit!9015)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9015)

(assert (=> b!283038 (= lt!139930 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!283038 (arrayNoDuplicates!0 lt!139934 #b00000000000000000000000000000000 Nil!4533)))

(declare-fun lt!139931 () Unit!9015)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14131 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4536) Unit!9015)

(assert (=> b!283038 (= lt!139931 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4533))))

(declare-fun b!283039 () Bool)

(declare-fun res!146151 () Bool)

(assert (=> b!283039 (=> (not res!146151) (not e!179588))))

(assert (=> b!283039 (= res!146151 (and (= (size!7059 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7059 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7059 a!3325))))))

(declare-fun b!283040 () Bool)

(declare-fun res!146150 () Bool)

(assert (=> b!283040 (=> (not res!146150) (not e!179588))))

(declare-fun arrayContainsKey!0 (array!14131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283040 (= res!146150 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283041 () Bool)

(declare-fun res!146144 () Bool)

(declare-fun e!179589 () Bool)

(assert (=> b!283041 (=> (not res!146144) (not e!179589))))

(assert (=> b!283041 (= res!146144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!283042 () Bool)

(assert (=> b!283042 (= e!179588 e!179589)))

(declare-fun res!146145 () Bool)

(assert (=> b!283042 (=> (not res!146145) (not e!179589))))

(declare-fun lt!139929 () SeekEntryResult!1876)

(assert (=> b!283042 (= res!146145 (or (= lt!139929 (MissingZero!1876 i!1267)) (= lt!139929 (MissingVacant!1876 i!1267))))))

(assert (=> b!283042 (= lt!139929 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!283043 () Bool)

(declare-fun res!146148 () Bool)

(assert (=> b!283043 (=> (not res!146148) (not e!179590))))

(assert (=> b!283043 (= res!146148 (validKeyInArray!0 (select (arr!6707 a!3325) startIndex!26)))))

(declare-fun b!283044 () Bool)

(assert (=> b!283044 (= e!179589 e!179590)))

(declare-fun res!146142 () Bool)

(assert (=> b!283044 (=> (not res!146142) (not e!179590))))

(assert (=> b!283044 (= res!146142 (not (= startIndex!26 i!1267)))))

(assert (=> b!283044 (= lt!139934 (array!14132 (store (arr!6707 a!3325) i!1267 k0!2581) (size!7059 a!3325)))))

(assert (= (and start!27324 res!146149) b!283039))

(assert (= (and b!283039 res!146151) b!283036))

(assert (= (and b!283036 res!146147) b!283037))

(assert (= (and b!283037 res!146143) b!283040))

(assert (= (and b!283040 res!146150) b!283042))

(assert (= (and b!283042 res!146145) b!283041))

(assert (= (and b!283041 res!146144) b!283044))

(assert (= (and b!283044 res!146142) b!283043))

(assert (= (and b!283043 res!146148) b!283038))

(assert (= (and b!283038 (not res!146146)) b!283035))

(declare-fun m!297859 () Bool)

(assert (=> b!283042 m!297859))

(declare-fun m!297861 () Bool)

(assert (=> b!283036 m!297861))

(declare-fun m!297863 () Bool)

(assert (=> b!283037 m!297863))

(declare-fun m!297865 () Bool)

(assert (=> b!283038 m!297865))

(declare-fun m!297867 () Bool)

(assert (=> b!283038 m!297867))

(declare-fun m!297869 () Bool)

(assert (=> b!283038 m!297869))

(declare-fun m!297871 () Bool)

(assert (=> b!283038 m!297871))

(declare-fun m!297873 () Bool)

(assert (=> b!283038 m!297873))

(declare-fun m!297875 () Bool)

(assert (=> b!283038 m!297875))

(declare-fun m!297877 () Bool)

(assert (=> b!283038 m!297877))

(assert (=> b!283038 m!297873))

(declare-fun m!297879 () Bool)

(assert (=> b!283038 m!297879))

(assert (=> b!283038 m!297867))

(declare-fun m!297881 () Bool)

(assert (=> b!283038 m!297881))

(declare-fun m!297883 () Bool)

(assert (=> b!283038 m!297883))

(declare-fun m!297885 () Bool)

(assert (=> b!283040 m!297885))

(assert (=> b!283044 m!297883))

(declare-fun m!297887 () Bool)

(assert (=> b!283035 m!297887))

(declare-fun m!297889 () Bool)

(assert (=> b!283035 m!297889))

(declare-fun m!297891 () Bool)

(assert (=> b!283035 m!297891))

(declare-fun m!297893 () Bool)

(assert (=> start!27324 m!297893))

(declare-fun m!297895 () Bool)

(assert (=> start!27324 m!297895))

(declare-fun m!297897 () Bool)

(assert (=> b!283041 m!297897))

(assert (=> b!283043 m!297873))

(assert (=> b!283043 m!297873))

(declare-fun m!297899 () Bool)

(assert (=> b!283043 m!297899))

(check-sat (not b!283035) (not b!283042) (not b!283038) (not b!283043) (not b!283040) (not b!283036) (not start!27324) (not b!283037) (not b!283041))
(check-sat)
(get-model)

(declare-fun d!65169 () Bool)

(declare-fun e!179608 () Bool)

(assert (=> d!65169 e!179608))

(declare-fun res!146184 () Bool)

(assert (=> d!65169 (=> (not res!146184) (not e!179608))))

(assert (=> d!65169 (= res!146184 (and (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7059 a!3325)) (and (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7059 a!3325)))) (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7059 a!3325)) (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7059 a!3325)))) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7059 a!3325))))))

(declare-fun lt!139955 () Unit!9015)

(declare-fun choose!83 (array!14131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9015)

(assert (=> d!65169 (= lt!139955 (choose!83 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> d!65169 (validMask!0 mask!3868)))

(assert (=> d!65169 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868) lt!139955)))

(declare-fun b!283077 () Bool)

(assert (=> b!283077 (= e!179608 (= (seekEntryOrOpen!0 (select (arr!6707 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6707 a!3325) i!1267 k0!2581) startIndex!26) (array!14132 (store (arr!6707 a!3325) i!1267 k0!2581) (size!7059 a!3325)) mask!3868)))))

(assert (= (and d!65169 res!146184) b!283077))

(declare-fun m!297943 () Bool)

(assert (=> d!65169 m!297943))

(assert (=> d!65169 m!297893))

(assert (=> b!283077 m!297867))

(assert (=> b!283077 m!297867))

(declare-fun m!297945 () Bool)

(assert (=> b!283077 m!297945))

(assert (=> b!283077 m!297873))

(assert (=> b!283077 m!297879))

(assert (=> b!283077 m!297883))

(assert (=> b!283077 m!297873))

(assert (=> b!283038 d!65169))

(declare-fun lt!139963 () SeekEntryResult!1876)

(declare-fun d!65171 () Bool)

(get-info :version)

(assert (=> d!65171 (and (or ((_ is Undefined!1876) lt!139963) (not ((_ is Found!1876) lt!139963)) (and (bvsge (index!9675 lt!139963) #b00000000000000000000000000000000) (bvslt (index!9675 lt!139963) (size!7059 lt!139934)))) (or ((_ is Undefined!1876) lt!139963) ((_ is Found!1876) lt!139963) (not ((_ is MissingZero!1876) lt!139963)) (and (bvsge (index!9674 lt!139963) #b00000000000000000000000000000000) (bvslt (index!9674 lt!139963) (size!7059 lt!139934)))) (or ((_ is Undefined!1876) lt!139963) ((_ is Found!1876) lt!139963) ((_ is MissingZero!1876) lt!139963) (not ((_ is MissingVacant!1876) lt!139963)) (and (bvsge (index!9677 lt!139963) #b00000000000000000000000000000000) (bvslt (index!9677 lt!139963) (size!7059 lt!139934)))) (or ((_ is Undefined!1876) lt!139963) (ite ((_ is Found!1876) lt!139963) (= (select (arr!6707 lt!139934) (index!9675 lt!139963)) (select (store (arr!6707 a!3325) i!1267 k0!2581) startIndex!26)) (ite ((_ is MissingZero!1876) lt!139963) (= (select (arr!6707 lt!139934) (index!9674 lt!139963)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1876) lt!139963) (= (select (arr!6707 lt!139934) (index!9677 lt!139963)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!179615 () SeekEntryResult!1876)

(assert (=> d!65171 (= lt!139963 e!179615)))

(declare-fun c!46007 () Bool)

(declare-fun lt!139964 () SeekEntryResult!1876)

(assert (=> d!65171 (= c!46007 (and ((_ is Intermediate!1876) lt!139964) (undefined!2688 lt!139964)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14131 (_ BitVec 32)) SeekEntryResult!1876)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65171 (= lt!139964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6707 a!3325) i!1267 k0!2581) startIndex!26) mask!3868) (select (store (arr!6707 a!3325) i!1267 k0!2581) startIndex!26) lt!139934 mask!3868))))

(assert (=> d!65171 (validMask!0 mask!3868)))

(assert (=> d!65171 (= (seekEntryOrOpen!0 (select (store (arr!6707 a!3325) i!1267 k0!2581) startIndex!26) lt!139934 mask!3868) lt!139963)))

(declare-fun b!283090 () Bool)

(declare-fun e!179617 () SeekEntryResult!1876)

(assert (=> b!283090 (= e!179615 e!179617)))

(declare-fun lt!139962 () (_ BitVec 64))

(assert (=> b!283090 (= lt!139962 (select (arr!6707 lt!139934) (index!9676 lt!139964)))))

(declare-fun c!46006 () Bool)

(assert (=> b!283090 (= c!46006 (= lt!139962 (select (store (arr!6707 a!3325) i!1267 k0!2581) startIndex!26)))))

(declare-fun b!283091 () Bool)

(declare-fun e!179616 () SeekEntryResult!1876)

(assert (=> b!283091 (= e!179616 (MissingZero!1876 (index!9676 lt!139964)))))

(declare-fun b!283092 () Bool)

(assert (=> b!283092 (= e!179615 Undefined!1876)))

(declare-fun b!283093 () Bool)

(assert (=> b!283093 (= e!179617 (Found!1876 (index!9676 lt!139964)))))

(declare-fun b!283094 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14131 (_ BitVec 32)) SeekEntryResult!1876)

(assert (=> b!283094 (= e!179616 (seekKeyOrZeroReturnVacant!0 (x!27850 lt!139964) (index!9676 lt!139964) (index!9676 lt!139964) (select (store (arr!6707 a!3325) i!1267 k0!2581) startIndex!26) lt!139934 mask!3868))))

(declare-fun b!283095 () Bool)

(declare-fun c!46005 () Bool)

(assert (=> b!283095 (= c!46005 (= lt!139962 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283095 (= e!179617 e!179616)))

(assert (= (and d!65171 c!46007) b!283092))

(assert (= (and d!65171 (not c!46007)) b!283090))

(assert (= (and b!283090 c!46006) b!283093))

(assert (= (and b!283090 (not c!46006)) b!283095))

(assert (= (and b!283095 c!46005) b!283091))

(assert (= (and b!283095 (not c!46005)) b!283094))

(assert (=> d!65171 m!297867))

(declare-fun m!297947 () Bool)

(assert (=> d!65171 m!297947))

(declare-fun m!297949 () Bool)

(assert (=> d!65171 m!297949))

(assert (=> d!65171 m!297947))

(assert (=> d!65171 m!297867))

(declare-fun m!297951 () Bool)

(assert (=> d!65171 m!297951))

(declare-fun m!297953 () Bool)

(assert (=> d!65171 m!297953))

(assert (=> d!65171 m!297893))

(declare-fun m!297955 () Bool)

(assert (=> d!65171 m!297955))

(declare-fun m!297957 () Bool)

(assert (=> b!283090 m!297957))

(assert (=> b!283094 m!297867))

(declare-fun m!297959 () Bool)

(assert (=> b!283094 m!297959))

(assert (=> b!283038 d!65171))

(declare-fun d!65177 () Bool)

(declare-fun lt!139966 () SeekEntryResult!1876)

(assert (=> d!65177 (and (or ((_ is Undefined!1876) lt!139966) (not ((_ is Found!1876) lt!139966)) (and (bvsge (index!9675 lt!139966) #b00000000000000000000000000000000) (bvslt (index!9675 lt!139966) (size!7059 a!3325)))) (or ((_ is Undefined!1876) lt!139966) ((_ is Found!1876) lt!139966) (not ((_ is MissingZero!1876) lt!139966)) (and (bvsge (index!9674 lt!139966) #b00000000000000000000000000000000) (bvslt (index!9674 lt!139966) (size!7059 a!3325)))) (or ((_ is Undefined!1876) lt!139966) ((_ is Found!1876) lt!139966) ((_ is MissingZero!1876) lt!139966) (not ((_ is MissingVacant!1876) lt!139966)) (and (bvsge (index!9677 lt!139966) #b00000000000000000000000000000000) (bvslt (index!9677 lt!139966) (size!7059 a!3325)))) (or ((_ is Undefined!1876) lt!139966) (ite ((_ is Found!1876) lt!139966) (= (select (arr!6707 a!3325) (index!9675 lt!139966)) (select (arr!6707 a!3325) startIndex!26)) (ite ((_ is MissingZero!1876) lt!139966) (= (select (arr!6707 a!3325) (index!9674 lt!139966)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1876) lt!139966) (= (select (arr!6707 a!3325) (index!9677 lt!139966)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!179618 () SeekEntryResult!1876)

(assert (=> d!65177 (= lt!139966 e!179618)))

(declare-fun c!46010 () Bool)

(declare-fun lt!139967 () SeekEntryResult!1876)

(assert (=> d!65177 (= c!46010 (and ((_ is Intermediate!1876) lt!139967) (undefined!2688 lt!139967)))))

(assert (=> d!65177 (= lt!139967 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6707 a!3325) startIndex!26) mask!3868) (select (arr!6707 a!3325) startIndex!26) a!3325 mask!3868))))

(assert (=> d!65177 (validMask!0 mask!3868)))

(assert (=> d!65177 (= (seekEntryOrOpen!0 (select (arr!6707 a!3325) startIndex!26) a!3325 mask!3868) lt!139966)))

(declare-fun b!283096 () Bool)

(declare-fun e!179620 () SeekEntryResult!1876)

(assert (=> b!283096 (= e!179618 e!179620)))

(declare-fun lt!139965 () (_ BitVec 64))

(assert (=> b!283096 (= lt!139965 (select (arr!6707 a!3325) (index!9676 lt!139967)))))

(declare-fun c!46009 () Bool)

(assert (=> b!283096 (= c!46009 (= lt!139965 (select (arr!6707 a!3325) startIndex!26)))))

(declare-fun b!283097 () Bool)

(declare-fun e!179619 () SeekEntryResult!1876)

(assert (=> b!283097 (= e!179619 (MissingZero!1876 (index!9676 lt!139967)))))

(declare-fun b!283098 () Bool)

(assert (=> b!283098 (= e!179618 Undefined!1876)))

(declare-fun b!283099 () Bool)

(assert (=> b!283099 (= e!179620 (Found!1876 (index!9676 lt!139967)))))

(declare-fun b!283100 () Bool)

(assert (=> b!283100 (= e!179619 (seekKeyOrZeroReturnVacant!0 (x!27850 lt!139967) (index!9676 lt!139967) (index!9676 lt!139967) (select (arr!6707 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283101 () Bool)

(declare-fun c!46008 () Bool)

(assert (=> b!283101 (= c!46008 (= lt!139965 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283101 (= e!179620 e!179619)))

(assert (= (and d!65177 c!46010) b!283098))

(assert (= (and d!65177 (not c!46010)) b!283096))

(assert (= (and b!283096 c!46009) b!283099))

(assert (= (and b!283096 (not c!46009)) b!283101))

(assert (= (and b!283101 c!46008) b!283097))

(assert (= (and b!283101 (not c!46008)) b!283100))

(assert (=> d!65177 m!297873))

(declare-fun m!297961 () Bool)

(assert (=> d!65177 m!297961))

(declare-fun m!297963 () Bool)

(assert (=> d!65177 m!297963))

(assert (=> d!65177 m!297961))

(assert (=> d!65177 m!297873))

(declare-fun m!297965 () Bool)

(assert (=> d!65177 m!297965))

(declare-fun m!297967 () Bool)

(assert (=> d!65177 m!297967))

(assert (=> d!65177 m!297893))

(declare-fun m!297969 () Bool)

(assert (=> d!65177 m!297969))

(declare-fun m!297971 () Bool)

(assert (=> b!283096 m!297971))

(assert (=> b!283100 m!297873))

(declare-fun m!297973 () Bool)

(assert (=> b!283100 m!297973))

(assert (=> b!283038 d!65177))

(declare-fun d!65179 () Bool)

(declare-fun e!179623 () Bool)

(assert (=> d!65179 e!179623))

(declare-fun res!146187 () Bool)

(assert (=> d!65179 (=> (not res!146187) (not e!179623))))

(assert (=> d!65179 (= res!146187 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7059 a!3325))))))

(declare-fun lt!139970 () Unit!9015)

(declare-fun choose!41 (array!14131 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4536) Unit!9015)

(assert (=> d!65179 (= lt!139970 (choose!41 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4533))))

(assert (=> d!65179 (bvslt (size!7059 a!3325) #b01111111111111111111111111111111)))

(assert (=> d!65179 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4533) lt!139970)))

(declare-fun b!283104 () Bool)

(assert (=> b!283104 (= e!179623 (arrayNoDuplicates!0 (array!14132 (store (arr!6707 a!3325) i!1267 k0!2581) (size!7059 a!3325)) #b00000000000000000000000000000000 Nil!4533))))

(assert (= (and d!65179 res!146187) b!283104))

(declare-fun m!297975 () Bool)

(assert (=> d!65179 m!297975))

(assert (=> b!283104 m!297883))

(declare-fun m!297977 () Bool)

(assert (=> b!283104 m!297977))

(assert (=> b!283038 d!65179))

(declare-fun d!65181 () Bool)

(assert (=> d!65181 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!139982 () Unit!9015)

(declare-fun choose!38 (array!14131 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9015)

(assert (=> d!65181 (= lt!139982 (choose!38 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> d!65181 (validMask!0 mask!3868)))

(assert (=> d!65181 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26) lt!139982)))

(declare-fun bs!10063 () Bool)

(assert (= bs!10063 d!65181))

(assert (=> bs!10063 m!297871))

(declare-fun m!297983 () Bool)

(assert (=> bs!10063 m!297983))

(assert (=> bs!10063 m!297893))

(assert (=> b!283038 d!65181))

(declare-fun b!283136 () Bool)

(declare-fun e!179647 () Bool)

(declare-fun contains!1989 (List!4536 (_ BitVec 64)) Bool)

(assert (=> b!283136 (= e!179647 (contains!1989 Nil!4533 (select (arr!6707 lt!139934) #b00000000000000000000000000000000)))))

(declare-fun bm!25457 () Bool)

(declare-fun call!25460 () Bool)

(declare-fun c!46022 () Bool)

(assert (=> bm!25457 (= call!25460 (arrayNoDuplicates!0 lt!139934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46022 (Cons!4532 (select (arr!6707 lt!139934) #b00000000000000000000000000000000) Nil!4533) Nil!4533)))))

(declare-fun b!283137 () Bool)

(declare-fun e!179646 () Bool)

(assert (=> b!283137 (= e!179646 call!25460)))

(declare-fun b!283138 () Bool)

(declare-fun e!179645 () Bool)

(assert (=> b!283138 (= e!179645 e!179646)))

(assert (=> b!283138 (= c!46022 (validKeyInArray!0 (select (arr!6707 lt!139934) #b00000000000000000000000000000000)))))

(declare-fun b!283139 () Bool)

(assert (=> b!283139 (= e!179646 call!25460)))

(declare-fun b!283140 () Bool)

(declare-fun e!179644 () Bool)

(assert (=> b!283140 (= e!179644 e!179645)))

(declare-fun res!146199 () Bool)

(assert (=> b!283140 (=> (not res!146199) (not e!179645))))

(assert (=> b!283140 (= res!146199 (not e!179647))))

(declare-fun res!146198 () Bool)

(assert (=> b!283140 (=> (not res!146198) (not e!179647))))

(assert (=> b!283140 (= res!146198 (validKeyInArray!0 (select (arr!6707 lt!139934) #b00000000000000000000000000000000)))))

(declare-fun d!65185 () Bool)

(declare-fun res!146197 () Bool)

(assert (=> d!65185 (=> res!146197 e!179644)))

(assert (=> d!65185 (= res!146197 (bvsge #b00000000000000000000000000000000 (size!7059 lt!139934)))))

(assert (=> d!65185 (= (arrayNoDuplicates!0 lt!139934 #b00000000000000000000000000000000 Nil!4533) e!179644)))

(assert (= (and d!65185 (not res!146197)) b!283140))

(assert (= (and b!283140 res!146198) b!283136))

(assert (= (and b!283140 res!146199) b!283138))

(assert (= (and b!283138 c!46022) b!283137))

(assert (= (and b!283138 (not c!46022)) b!283139))

(assert (= (or b!283137 b!283139) bm!25457))

(declare-fun m!297999 () Bool)

(assert (=> b!283136 m!297999))

(assert (=> b!283136 m!297999))

(declare-fun m!298001 () Bool)

(assert (=> b!283136 m!298001))

(assert (=> bm!25457 m!297999))

(declare-fun m!298003 () Bool)

(assert (=> bm!25457 m!298003))

(assert (=> b!283138 m!297999))

(assert (=> b!283138 m!297999))

(declare-fun m!298005 () Bool)

(assert (=> b!283138 m!298005))

(assert (=> b!283140 m!297999))

(assert (=> b!283140 m!297999))

(assert (=> b!283140 m!298005))

(assert (=> b!283038 d!65185))

(declare-fun b!283161 () Bool)

(declare-fun e!179664 () Bool)

(declare-fun call!25466 () Bool)

(assert (=> b!283161 (= e!179664 call!25466)))

(declare-fun b!283162 () Bool)

(declare-fun e!179665 () Bool)

(assert (=> b!283162 (= e!179665 call!25466)))

(declare-fun b!283163 () Bool)

(declare-fun e!179663 () Bool)

(assert (=> b!283163 (= e!179663 e!179665)))

(declare-fun c!46028 () Bool)

(assert (=> b!283163 (= c!46028 (validKeyInArray!0 (select (arr!6707 a!3325) startIndex!26)))))

(declare-fun d!65191 () Bool)

(declare-fun res!146210 () Bool)

(assert (=> d!65191 (=> res!146210 e!179663)))

(assert (=> d!65191 (= res!146210 (bvsge startIndex!26 (size!7059 a!3325)))))

(assert (=> d!65191 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868) e!179663)))

(declare-fun b!283164 () Bool)

(assert (=> b!283164 (= e!179665 e!179664)))

(declare-fun lt!140002 () (_ BitVec 64))

(assert (=> b!283164 (= lt!140002 (select (arr!6707 a!3325) startIndex!26))))

(declare-fun lt!140001 () Unit!9015)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14131 (_ BitVec 64) (_ BitVec 32)) Unit!9015)

(assert (=> b!283164 (= lt!140001 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140002 startIndex!26))))

(assert (=> b!283164 (arrayContainsKey!0 a!3325 lt!140002 #b00000000000000000000000000000000)))

(declare-fun lt!140003 () Unit!9015)

(assert (=> b!283164 (= lt!140003 lt!140001)))

(declare-fun res!146211 () Bool)

(assert (=> b!283164 (= res!146211 (= (seekEntryOrOpen!0 (select (arr!6707 a!3325) startIndex!26) a!3325 mask!3868) (Found!1876 startIndex!26)))))

(assert (=> b!283164 (=> (not res!146211) (not e!179664))))

(declare-fun bm!25463 () Bool)

(assert (=> bm!25463 (= call!25466 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) a!3325 mask!3868))))

(assert (= (and d!65191 (not res!146210)) b!283163))

(assert (= (and b!283163 c!46028) b!283164))

(assert (= (and b!283163 (not c!46028)) b!283162))

(assert (= (and b!283164 res!146211) b!283161))

(assert (= (or b!283161 b!283162) bm!25463))

(assert (=> b!283163 m!297873))

(assert (=> b!283163 m!297873))

(assert (=> b!283163 m!297899))

(assert (=> b!283164 m!297873))

(declare-fun m!298019 () Bool)

(assert (=> b!283164 m!298019))

(declare-fun m!298021 () Bool)

(assert (=> b!283164 m!298021))

(assert (=> b!283164 m!297873))

(assert (=> b!283164 m!297879))

(declare-fun m!298023 () Bool)

(assert (=> bm!25463 m!298023))

(assert (=> b!283038 d!65191))

(declare-fun d!65195 () Bool)

(assert (=> d!65195 (= (validKeyInArray!0 (select (arr!6707 a!3325) startIndex!26)) (and (not (= (select (arr!6707 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6707 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283043 d!65195))

(declare-fun b!283165 () Bool)

(declare-fun e!179667 () Bool)

(declare-fun call!25467 () Bool)

(assert (=> b!283165 (= e!179667 call!25467)))

(declare-fun b!283166 () Bool)

(declare-fun e!179668 () Bool)

(assert (=> b!283166 (= e!179668 call!25467)))

(declare-fun b!283167 () Bool)

(declare-fun e!179666 () Bool)

(assert (=> b!283167 (= e!179666 e!179668)))

(declare-fun c!46029 () Bool)

(assert (=> b!283167 (= c!46029 (validKeyInArray!0 (select (arr!6707 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65197 () Bool)

(declare-fun res!146212 () Bool)

(assert (=> d!65197 (=> res!146212 e!179666)))

(assert (=> d!65197 (= res!146212 (bvsge #b00000000000000000000000000000000 (size!7059 a!3325)))))

(assert (=> d!65197 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!179666)))

(declare-fun b!283168 () Bool)

(assert (=> b!283168 (= e!179668 e!179667)))

(declare-fun lt!140005 () (_ BitVec 64))

(assert (=> b!283168 (= lt!140005 (select (arr!6707 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!140004 () Unit!9015)

(assert (=> b!283168 (= lt!140004 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140005 #b00000000000000000000000000000000))))

(assert (=> b!283168 (arrayContainsKey!0 a!3325 lt!140005 #b00000000000000000000000000000000)))

(declare-fun lt!140006 () Unit!9015)

(assert (=> b!283168 (= lt!140006 lt!140004)))

(declare-fun res!146213 () Bool)

(assert (=> b!283168 (= res!146213 (= (seekEntryOrOpen!0 (select (arr!6707 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1876 #b00000000000000000000000000000000)))))

(assert (=> b!283168 (=> (not res!146213) (not e!179667))))

(declare-fun bm!25464 () Bool)

(assert (=> bm!25464 (= call!25467 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(assert (= (and d!65197 (not res!146212)) b!283167))

(assert (= (and b!283167 c!46029) b!283168))

(assert (= (and b!283167 (not c!46029)) b!283166))

(assert (= (and b!283168 res!146213) b!283165))

(assert (= (or b!283165 b!283166) bm!25464))

(declare-fun m!298025 () Bool)

(assert (=> b!283167 m!298025))

(assert (=> b!283167 m!298025))

(declare-fun m!298027 () Bool)

(assert (=> b!283167 m!298027))

(assert (=> b!283168 m!298025))

(declare-fun m!298029 () Bool)

(assert (=> b!283168 m!298029))

(declare-fun m!298031 () Bool)

(assert (=> b!283168 m!298031))

(assert (=> b!283168 m!298025))

(declare-fun m!298033 () Bool)

(assert (=> b!283168 m!298033))

(declare-fun m!298035 () Bool)

(assert (=> bm!25464 m!298035))

(assert (=> b!283041 d!65197))

(declare-fun d!65199 () Bool)

(declare-fun res!146218 () Bool)

(declare-fun e!179673 () Bool)

(assert (=> d!65199 (=> res!146218 e!179673)))

(assert (=> d!65199 (= res!146218 (= (select (arr!6707 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!65199 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!179673)))

(declare-fun b!283173 () Bool)

(declare-fun e!179674 () Bool)

(assert (=> b!283173 (= e!179673 e!179674)))

(declare-fun res!146219 () Bool)

(assert (=> b!283173 (=> (not res!146219) (not e!179674))))

(assert (=> b!283173 (= res!146219 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7059 a!3325)))))

(declare-fun b!283174 () Bool)

(assert (=> b!283174 (= e!179674 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65199 (not res!146218)) b!283173))

(assert (= (and b!283173 res!146219) b!283174))

(assert (=> d!65199 m!298025))

(declare-fun m!298037 () Bool)

(assert (=> b!283174 m!298037))

(assert (=> b!283040 d!65199))

(declare-fun b!283175 () Bool)

(declare-fun e!179676 () Bool)

(declare-fun call!25468 () Bool)

(assert (=> b!283175 (= e!179676 call!25468)))

(declare-fun b!283176 () Bool)

(declare-fun e!179677 () Bool)

(assert (=> b!283176 (= e!179677 call!25468)))

(declare-fun b!283177 () Bool)

(declare-fun e!179675 () Bool)

(assert (=> b!283177 (= e!179675 e!179677)))

(declare-fun c!46030 () Bool)

(assert (=> b!283177 (= c!46030 (validKeyInArray!0 (select (arr!6707 lt!139934) startIndex!26)))))

(declare-fun d!65201 () Bool)

(declare-fun res!146220 () Bool)

(assert (=> d!65201 (=> res!146220 e!179675)))

(assert (=> d!65201 (= res!146220 (bvsge startIndex!26 (size!7059 lt!139934)))))

(assert (=> d!65201 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!139934 mask!3868) e!179675)))

(declare-fun b!283178 () Bool)

(assert (=> b!283178 (= e!179677 e!179676)))

(declare-fun lt!140008 () (_ BitVec 64))

(assert (=> b!283178 (= lt!140008 (select (arr!6707 lt!139934) startIndex!26))))

(declare-fun lt!140007 () Unit!9015)

(assert (=> b!283178 (= lt!140007 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!139934 lt!140008 startIndex!26))))

(assert (=> b!283178 (arrayContainsKey!0 lt!139934 lt!140008 #b00000000000000000000000000000000)))

(declare-fun lt!140009 () Unit!9015)

(assert (=> b!283178 (= lt!140009 lt!140007)))

(declare-fun res!146221 () Bool)

(assert (=> b!283178 (= res!146221 (= (seekEntryOrOpen!0 (select (arr!6707 lt!139934) startIndex!26) lt!139934 mask!3868) (Found!1876 startIndex!26)))))

(assert (=> b!283178 (=> (not res!146221) (not e!179676))))

(declare-fun bm!25465 () Bool)

(assert (=> bm!25465 (= call!25468 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!139934 mask!3868))))

(assert (= (and d!65201 (not res!146220)) b!283177))

(assert (= (and b!283177 c!46030) b!283178))

(assert (= (and b!283177 (not c!46030)) b!283176))

(assert (= (and b!283178 res!146221) b!283175))

(assert (= (or b!283175 b!283176) bm!25465))

(declare-fun m!298039 () Bool)

(assert (=> b!283177 m!298039))

(assert (=> b!283177 m!298039))

(declare-fun m!298041 () Bool)

(assert (=> b!283177 m!298041))

(assert (=> b!283178 m!298039))

(declare-fun m!298043 () Bool)

(assert (=> b!283178 m!298043))

(declare-fun m!298045 () Bool)

(assert (=> b!283178 m!298045))

(assert (=> b!283178 m!298039))

(declare-fun m!298047 () Bool)

(assert (=> b!283178 m!298047))

(declare-fun m!298049 () Bool)

(assert (=> bm!25465 m!298049))

(assert (=> b!283035 d!65201))

(declare-fun b!283179 () Bool)

(declare-fun e!179679 () Bool)

(declare-fun call!25469 () Bool)

(assert (=> b!283179 (= e!179679 call!25469)))

(declare-fun b!283180 () Bool)

(declare-fun e!179680 () Bool)

(assert (=> b!283180 (= e!179680 call!25469)))

(declare-fun b!283181 () Bool)

(declare-fun e!179678 () Bool)

(assert (=> b!283181 (= e!179678 e!179680)))

(declare-fun c!46031 () Bool)

(assert (=> b!283181 (= c!46031 (validKeyInArray!0 (select (arr!6707 lt!139934) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun d!65203 () Bool)

(declare-fun res!146222 () Bool)

(assert (=> d!65203 (=> res!146222 e!179678)))

(assert (=> d!65203 (= res!146222 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!7059 lt!139934)))))

(assert (=> d!65203 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!139934 mask!3868) e!179678)))

(declare-fun b!283182 () Bool)

(assert (=> b!283182 (= e!179680 e!179679)))

(declare-fun lt!140011 () (_ BitVec 64))

(assert (=> b!283182 (= lt!140011 (select (arr!6707 lt!139934) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!140010 () Unit!9015)

(assert (=> b!283182 (= lt!140010 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!139934 lt!140011 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!283182 (arrayContainsKey!0 lt!139934 lt!140011 #b00000000000000000000000000000000)))

(declare-fun lt!140012 () Unit!9015)

(assert (=> b!283182 (= lt!140012 lt!140010)))

(declare-fun res!146223 () Bool)

(assert (=> b!283182 (= res!146223 (= (seekEntryOrOpen!0 (select (arr!6707 lt!139934) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!139934 mask!3868) (Found!1876 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!283182 (=> (not res!146223) (not e!179679))))

(declare-fun bm!25466 () Bool)

(assert (=> bm!25466 (= call!25469 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!139934 mask!3868))))

(assert (= (and d!65203 (not res!146222)) b!283181))

(assert (= (and b!283181 c!46031) b!283182))

(assert (= (and b!283181 (not c!46031)) b!283180))

(assert (= (and b!283182 res!146223) b!283179))

(assert (= (or b!283179 b!283180) bm!25466))

(declare-fun m!298051 () Bool)

(assert (=> b!283181 m!298051))

(assert (=> b!283181 m!298051))

(declare-fun m!298053 () Bool)

(assert (=> b!283181 m!298053))

(assert (=> b!283182 m!298051))

(declare-fun m!298055 () Bool)

(assert (=> b!283182 m!298055))

(declare-fun m!298057 () Bool)

(assert (=> b!283182 m!298057))

(assert (=> b!283182 m!298051))

(declare-fun m!298059 () Bool)

(assert (=> b!283182 m!298059))

(declare-fun m!298061 () Bool)

(assert (=> bm!25466 m!298061))

(assert (=> b!283035 d!65203))

(declare-fun d!65205 () Bool)

(declare-fun e!179693 () Bool)

(assert (=> d!65205 e!179693))

(declare-fun res!146232 () Bool)

(assert (=> d!65205 (=> (not res!146232) (not e!179693))))

(assert (=> d!65205 (= res!146232 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7059 a!3325))))))

(declare-fun lt!140021 () Unit!9015)

(declare-fun choose!98 (array!14131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9015)

(assert (=> d!65205 (= lt!140021 (choose!98 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> d!65205 (validMask!0 mask!3868)))

(assert (=> d!65205 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) lt!140021)))

(declare-fun b!283197 () Bool)

(assert (=> b!283197 (= e!179693 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!14132 (store (arr!6707 a!3325) i!1267 k0!2581) (size!7059 a!3325)) mask!3868))))

(assert (= (and d!65205 res!146232) b!283197))

(declare-fun m!298063 () Bool)

(assert (=> d!65205 m!298063))

(assert (=> d!65205 m!297893))

(assert (=> b!283197 m!297883))

(declare-fun m!298065 () Bool)

(assert (=> b!283197 m!298065))

(assert (=> b!283035 d!65205))

(declare-fun d!65211 () Bool)

(declare-fun lt!140023 () SeekEntryResult!1876)

(assert (=> d!65211 (and (or ((_ is Undefined!1876) lt!140023) (not ((_ is Found!1876) lt!140023)) (and (bvsge (index!9675 lt!140023) #b00000000000000000000000000000000) (bvslt (index!9675 lt!140023) (size!7059 a!3325)))) (or ((_ is Undefined!1876) lt!140023) ((_ is Found!1876) lt!140023) (not ((_ is MissingZero!1876) lt!140023)) (and (bvsge (index!9674 lt!140023) #b00000000000000000000000000000000) (bvslt (index!9674 lt!140023) (size!7059 a!3325)))) (or ((_ is Undefined!1876) lt!140023) ((_ is Found!1876) lt!140023) ((_ is MissingZero!1876) lt!140023) (not ((_ is MissingVacant!1876) lt!140023)) (and (bvsge (index!9677 lt!140023) #b00000000000000000000000000000000) (bvslt (index!9677 lt!140023) (size!7059 a!3325)))) (or ((_ is Undefined!1876) lt!140023) (ite ((_ is Found!1876) lt!140023) (= (select (arr!6707 a!3325) (index!9675 lt!140023)) k0!2581) (ite ((_ is MissingZero!1876) lt!140023) (= (select (arr!6707 a!3325) (index!9674 lt!140023)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1876) lt!140023) (= (select (arr!6707 a!3325) (index!9677 lt!140023)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!179698 () SeekEntryResult!1876)

(assert (=> d!65211 (= lt!140023 e!179698)))

(declare-fun c!46042 () Bool)

(declare-fun lt!140024 () SeekEntryResult!1876)

(assert (=> d!65211 (= c!46042 (and ((_ is Intermediate!1876) lt!140024) (undefined!2688 lt!140024)))))

(assert (=> d!65211 (= lt!140024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!65211 (validMask!0 mask!3868)))

(assert (=> d!65211 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!140023)))

(declare-fun b!283208 () Bool)

(declare-fun e!179700 () SeekEntryResult!1876)

(assert (=> b!283208 (= e!179698 e!179700)))

(declare-fun lt!140022 () (_ BitVec 64))

(assert (=> b!283208 (= lt!140022 (select (arr!6707 a!3325) (index!9676 lt!140024)))))

(declare-fun c!46041 () Bool)

(assert (=> b!283208 (= c!46041 (= lt!140022 k0!2581))))

(declare-fun b!283209 () Bool)

(declare-fun e!179699 () SeekEntryResult!1876)

(assert (=> b!283209 (= e!179699 (MissingZero!1876 (index!9676 lt!140024)))))

(declare-fun b!283210 () Bool)

(assert (=> b!283210 (= e!179698 Undefined!1876)))

(declare-fun b!283211 () Bool)

(assert (=> b!283211 (= e!179700 (Found!1876 (index!9676 lt!140024)))))

(declare-fun b!283212 () Bool)

(assert (=> b!283212 (= e!179699 (seekKeyOrZeroReturnVacant!0 (x!27850 lt!140024) (index!9676 lt!140024) (index!9676 lt!140024) k0!2581 a!3325 mask!3868))))

(declare-fun b!283213 () Bool)

(declare-fun c!46040 () Bool)

(assert (=> b!283213 (= c!46040 (= lt!140022 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283213 (= e!179700 e!179699)))

(assert (= (and d!65211 c!46042) b!283210))

(assert (= (and d!65211 (not c!46042)) b!283208))

(assert (= (and b!283208 c!46041) b!283211))

(assert (= (and b!283208 (not c!46041)) b!283213))

(assert (= (and b!283213 c!46040) b!283209))

(assert (= (and b!283213 (not c!46040)) b!283212))

(declare-fun m!298067 () Bool)

(assert (=> d!65211 m!298067))

(declare-fun m!298069 () Bool)

(assert (=> d!65211 m!298069))

(assert (=> d!65211 m!298067))

(declare-fun m!298071 () Bool)

(assert (=> d!65211 m!298071))

(declare-fun m!298073 () Bool)

(assert (=> d!65211 m!298073))

(assert (=> d!65211 m!297893))

(declare-fun m!298075 () Bool)

(assert (=> d!65211 m!298075))

(declare-fun m!298077 () Bool)

(assert (=> b!283208 m!298077))

(declare-fun m!298079 () Bool)

(assert (=> b!283212 m!298079))

(assert (=> b!283042 d!65211))

(declare-fun b!283214 () Bool)

(declare-fun e!179704 () Bool)

(assert (=> b!283214 (= e!179704 (contains!1989 Nil!4533 (select (arr!6707 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25469 () Bool)

(declare-fun call!25472 () Bool)

(declare-fun c!46043 () Bool)

(assert (=> bm!25469 (= call!25472 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46043 (Cons!4532 (select (arr!6707 a!3325) #b00000000000000000000000000000000) Nil!4533) Nil!4533)))))

(declare-fun b!283215 () Bool)

(declare-fun e!179703 () Bool)

(assert (=> b!283215 (= e!179703 call!25472)))

(declare-fun b!283216 () Bool)

(declare-fun e!179702 () Bool)

(assert (=> b!283216 (= e!179702 e!179703)))

(assert (=> b!283216 (= c!46043 (validKeyInArray!0 (select (arr!6707 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283217 () Bool)

(assert (=> b!283217 (= e!179703 call!25472)))

(declare-fun b!283218 () Bool)

(declare-fun e!179701 () Bool)

(assert (=> b!283218 (= e!179701 e!179702)))

(declare-fun res!146235 () Bool)

(assert (=> b!283218 (=> (not res!146235) (not e!179702))))

(assert (=> b!283218 (= res!146235 (not e!179704))))

(declare-fun res!146234 () Bool)

(assert (=> b!283218 (=> (not res!146234) (not e!179704))))

(assert (=> b!283218 (= res!146234 (validKeyInArray!0 (select (arr!6707 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65213 () Bool)

(declare-fun res!146233 () Bool)

(assert (=> d!65213 (=> res!146233 e!179701)))

(assert (=> d!65213 (= res!146233 (bvsge #b00000000000000000000000000000000 (size!7059 a!3325)))))

(assert (=> d!65213 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4533) e!179701)))

(assert (= (and d!65213 (not res!146233)) b!283218))

(assert (= (and b!283218 res!146234) b!283214))

(assert (= (and b!283218 res!146235) b!283216))

(assert (= (and b!283216 c!46043) b!283215))

(assert (= (and b!283216 (not c!46043)) b!283217))

(assert (= (or b!283215 b!283217) bm!25469))

(assert (=> b!283214 m!298025))

(assert (=> b!283214 m!298025))

(declare-fun m!298081 () Bool)

(assert (=> b!283214 m!298081))

(assert (=> bm!25469 m!298025))

(declare-fun m!298083 () Bool)

(assert (=> bm!25469 m!298083))

(assert (=> b!283216 m!298025))

(assert (=> b!283216 m!298025))

(assert (=> b!283216 m!298027))

(assert (=> b!283218 m!298025))

(assert (=> b!283218 m!298025))

(assert (=> b!283218 m!298027))

(assert (=> b!283037 d!65213))

(declare-fun d!65215 () Bool)

(assert (=> d!65215 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283036 d!65215))

(declare-fun d!65217 () Bool)

(assert (=> d!65217 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27324 d!65217))

(declare-fun d!65223 () Bool)

(assert (=> d!65223 (= (array_inv!4661 a!3325) (bvsge (size!7059 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27324 d!65223))

(check-sat (not b!283164) (not d!65181) (not b!283104) (not b!283100) (not b!283197) (not b!283174) (not b!283181) (not b!283214) (not bm!25463) (not d!65205) (not b!283167) (not b!283168) (not b!283212) (not d!65169) (not bm!25469) (not b!283136) (not d!65211) (not b!283178) (not b!283140) (not b!283182) (not d!65177) (not bm!25465) (not b!283094) (not b!283218) (not d!65171) (not b!283216) (not b!283077) (not bm!25457) (not b!283177) (not b!283138) (not b!283163) (not bm!25464) (not d!65179) (not bm!25466))
(check-sat)
