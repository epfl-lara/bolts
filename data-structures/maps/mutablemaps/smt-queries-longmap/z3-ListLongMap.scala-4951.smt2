; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68112 () Bool)

(assert start!68112)

(declare-fun b!791934 () Bool)

(declare-fun res!536845 () Bool)

(declare-fun e!440047 () Bool)

(assert (=> b!791934 (=> (not res!536845) (not e!440047))))

(declare-datatypes ((array!42970 0))(
  ( (array!42971 (arr!20566 (Array (_ BitVec 32) (_ BitVec 64))) (size!20987 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42970)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42970 (_ BitVec 32)) Bool)

(assert (=> b!791934 (= res!536845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!791935 () Bool)

(declare-fun res!536839 () Bool)

(declare-fun e!440046 () Bool)

(assert (=> b!791935 (=> (not res!536839) (not e!440046))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791935 (= res!536839 (validKeyInArray!0 k0!2044))))

(declare-fun res!536843 () Bool)

(assert (=> start!68112 (=> (not res!536843) (not e!440046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68112 (= res!536843 (validMask!0 mask!3266))))

(assert (=> start!68112 e!440046))

(assert (=> start!68112 true))

(declare-fun array_inv!16340 (array!42970) Bool)

(assert (=> start!68112 (array_inv!16340 a!3170)))

(declare-fun b!791936 () Bool)

(declare-fun res!536840 () Bool)

(assert (=> b!791936 (=> (not res!536840) (not e!440046))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791936 (= res!536840 (validKeyInArray!0 (select (arr!20566 a!3170) j!153)))))

(declare-fun b!791937 () Bool)

(assert (=> b!791937 (= e!440046 e!440047)))

(declare-fun res!536841 () Bool)

(assert (=> b!791937 (=> (not res!536841) (not e!440047))))

(declare-datatypes ((SeekEntryResult!8164 0))(
  ( (MissingZero!8164 (index!35023 (_ BitVec 32))) (Found!8164 (index!35024 (_ BitVec 32))) (Intermediate!8164 (undefined!8976 Bool) (index!35025 (_ BitVec 32)) (x!66003 (_ BitVec 32))) (Undefined!8164) (MissingVacant!8164 (index!35026 (_ BitVec 32))) )
))
(declare-fun lt!353308 () SeekEntryResult!8164)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791937 (= res!536841 (or (= lt!353308 (MissingZero!8164 i!1163)) (= lt!353308 (MissingVacant!8164 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42970 (_ BitVec 32)) SeekEntryResult!8164)

(assert (=> b!791937 (= lt!353308 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!791938 () Bool)

(declare-fun res!536842 () Bool)

(assert (=> b!791938 (=> (not res!536842) (not e!440046))))

(assert (=> b!791938 (= res!536842 (and (= (size!20987 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20987 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20987 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791939 () Bool)

(declare-fun res!536844 () Bool)

(assert (=> b!791939 (=> (not res!536844) (not e!440046))))

(declare-fun arrayContainsKey!0 (array!42970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791939 (= res!536844 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!791940 () Bool)

(assert (=> b!791940 (= e!440047 (and (bvsle #b00000000000000000000000000000000 (size!20987 a!3170)) (bvsge (size!20987 a!3170) #b01111111111111111111111111111111)))))

(assert (= (and start!68112 res!536843) b!791938))

(assert (= (and b!791938 res!536842) b!791936))

(assert (= (and b!791936 res!536840) b!791935))

(assert (= (and b!791935 res!536839) b!791939))

(assert (= (and b!791939 res!536844) b!791937))

(assert (= (and b!791937 res!536841) b!791934))

(assert (= (and b!791934 res!536845) b!791940))

(declare-fun m!732689 () Bool)

(assert (=> b!791936 m!732689))

(assert (=> b!791936 m!732689))

(declare-fun m!732691 () Bool)

(assert (=> b!791936 m!732691))

(declare-fun m!732693 () Bool)

(assert (=> start!68112 m!732693))

(declare-fun m!732695 () Bool)

(assert (=> start!68112 m!732695))

(declare-fun m!732697 () Bool)

(assert (=> b!791934 m!732697))

(declare-fun m!732699 () Bool)

(assert (=> b!791937 m!732699))

(declare-fun m!732701 () Bool)

(assert (=> b!791939 m!732701))

(declare-fun m!732703 () Bool)

(assert (=> b!791935 m!732703))

(check-sat (not b!791937) (not start!68112) (not b!791939) (not b!791935) (not b!791934) (not b!791936))
(check-sat)
(get-model)

(declare-fun d!103047 () Bool)

(assert (=> d!103047 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!791935 d!103047))

(declare-fun b!791970 () Bool)

(declare-fun e!440063 () Bool)

(declare-fun call!35322 () Bool)

(assert (=> b!791970 (= e!440063 call!35322)))

(declare-fun b!791971 () Bool)

(declare-fun e!440065 () Bool)

(assert (=> b!791971 (= e!440063 e!440065)))

(declare-fun lt!353318 () (_ BitVec 64))

(assert (=> b!791971 (= lt!353318 (select (arr!20566 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27424 0))(
  ( (Unit!27425) )
))
(declare-fun lt!353320 () Unit!27424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42970 (_ BitVec 64) (_ BitVec 32)) Unit!27424)

(assert (=> b!791971 (= lt!353320 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!353318 #b00000000000000000000000000000000))))

(assert (=> b!791971 (arrayContainsKey!0 a!3170 lt!353318 #b00000000000000000000000000000000)))

(declare-fun lt!353319 () Unit!27424)

(assert (=> b!791971 (= lt!353319 lt!353320)))

(declare-fun res!536871 () Bool)

(assert (=> b!791971 (= res!536871 (= (seekEntryOrOpen!0 (select (arr!20566 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8164 #b00000000000000000000000000000000)))))

(assert (=> b!791971 (=> (not res!536871) (not e!440065))))

(declare-fun d!103049 () Bool)

(declare-fun res!536872 () Bool)

(declare-fun e!440064 () Bool)

(assert (=> d!103049 (=> res!536872 e!440064)))

(assert (=> d!103049 (= res!536872 (bvsge #b00000000000000000000000000000000 (size!20987 a!3170)))))

(assert (=> d!103049 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!440064)))

(declare-fun bm!35319 () Bool)

(assert (=> bm!35319 (= call!35322 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!791972 () Bool)

(assert (=> b!791972 (= e!440064 e!440063)))

(declare-fun c!87960 () Bool)

(assert (=> b!791972 (= c!87960 (validKeyInArray!0 (select (arr!20566 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!791973 () Bool)

(assert (=> b!791973 (= e!440065 call!35322)))

(assert (= (and d!103049 (not res!536872)) b!791972))

(assert (= (and b!791972 c!87960) b!791971))

(assert (= (and b!791972 (not c!87960)) b!791970))

(assert (= (and b!791971 res!536871) b!791973))

(assert (= (or b!791973 b!791970) bm!35319))

(declare-fun m!732721 () Bool)

(assert (=> b!791971 m!732721))

(declare-fun m!732723 () Bool)

(assert (=> b!791971 m!732723))

(declare-fun m!732725 () Bool)

(assert (=> b!791971 m!732725))

(assert (=> b!791971 m!732721))

(declare-fun m!732727 () Bool)

(assert (=> b!791971 m!732727))

(declare-fun m!732729 () Bool)

(assert (=> bm!35319 m!732729))

(assert (=> b!791972 m!732721))

(assert (=> b!791972 m!732721))

(declare-fun m!732731 () Bool)

(assert (=> b!791972 m!732731))

(assert (=> b!791934 d!103049))

(declare-fun d!103053 () Bool)

(assert (=> d!103053 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!68112 d!103053))

(declare-fun d!103059 () Bool)

(assert (=> d!103059 (= (array_inv!16340 a!3170) (bvsge (size!20987 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!68112 d!103059))

(declare-fun d!103061 () Bool)

(declare-fun res!536883 () Bool)

(declare-fun e!440079 () Bool)

(assert (=> d!103061 (=> res!536883 e!440079)))

(assert (=> d!103061 (= res!536883 (= (select (arr!20566 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!103061 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!440079)))

(declare-fun b!791990 () Bool)

(declare-fun e!440080 () Bool)

(assert (=> b!791990 (= e!440079 e!440080)))

(declare-fun res!536884 () Bool)

(assert (=> b!791990 (=> (not res!536884) (not e!440080))))

(assert (=> b!791990 (= res!536884 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20987 a!3170)))))

(declare-fun b!791991 () Bool)

(assert (=> b!791991 (= e!440080 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103061 (not res!536883)) b!791990))

(assert (= (and b!791990 res!536884) b!791991))

(assert (=> d!103061 m!732721))

(declare-fun m!732745 () Bool)

(assert (=> b!791991 m!732745))

(assert (=> b!791939 d!103061))

(declare-fun b!792052 () Bool)

(declare-fun e!440116 () SeekEntryResult!8164)

(declare-fun e!440114 () SeekEntryResult!8164)

(assert (=> b!792052 (= e!440116 e!440114)))

(declare-fun lt!353363 () (_ BitVec 64))

(declare-fun lt!353364 () SeekEntryResult!8164)

(assert (=> b!792052 (= lt!353363 (select (arr!20566 a!3170) (index!35025 lt!353364)))))

(declare-fun c!87992 () Bool)

(assert (=> b!792052 (= c!87992 (= lt!353363 k0!2044))))

(declare-fun b!792053 () Bool)

(assert (=> b!792053 (= e!440114 (Found!8164 (index!35025 lt!353364)))))

(declare-fun d!103067 () Bool)

(declare-fun lt!353365 () SeekEntryResult!8164)

(get-info :version)

(assert (=> d!103067 (and (or ((_ is Undefined!8164) lt!353365) (not ((_ is Found!8164) lt!353365)) (and (bvsge (index!35024 lt!353365) #b00000000000000000000000000000000) (bvslt (index!35024 lt!353365) (size!20987 a!3170)))) (or ((_ is Undefined!8164) lt!353365) ((_ is Found!8164) lt!353365) (not ((_ is MissingZero!8164) lt!353365)) (and (bvsge (index!35023 lt!353365) #b00000000000000000000000000000000) (bvslt (index!35023 lt!353365) (size!20987 a!3170)))) (or ((_ is Undefined!8164) lt!353365) ((_ is Found!8164) lt!353365) ((_ is MissingZero!8164) lt!353365) (not ((_ is MissingVacant!8164) lt!353365)) (and (bvsge (index!35026 lt!353365) #b00000000000000000000000000000000) (bvslt (index!35026 lt!353365) (size!20987 a!3170)))) (or ((_ is Undefined!8164) lt!353365) (ite ((_ is Found!8164) lt!353365) (= (select (arr!20566 a!3170) (index!35024 lt!353365)) k0!2044) (ite ((_ is MissingZero!8164) lt!353365) (= (select (arr!20566 a!3170) (index!35023 lt!353365)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8164) lt!353365) (= (select (arr!20566 a!3170) (index!35026 lt!353365)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103067 (= lt!353365 e!440116)))

(declare-fun c!87991 () Bool)

(assert (=> d!103067 (= c!87991 (and ((_ is Intermediate!8164) lt!353364) (undefined!8976 lt!353364)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42970 (_ BitVec 32)) SeekEntryResult!8164)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103067 (= lt!353364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!103067 (validMask!0 mask!3266)))

(assert (=> d!103067 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!353365)))

(declare-fun b!792054 () Bool)

(declare-fun e!440115 () SeekEntryResult!8164)

(assert (=> b!792054 (= e!440115 (MissingZero!8164 (index!35025 lt!353364)))))

(declare-fun b!792055 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42970 (_ BitVec 32)) SeekEntryResult!8164)

(assert (=> b!792055 (= e!440115 (seekKeyOrZeroReturnVacant!0 (x!66003 lt!353364) (index!35025 lt!353364) (index!35025 lt!353364) k0!2044 a!3170 mask!3266))))

(declare-fun b!792056 () Bool)

(declare-fun c!87993 () Bool)

(assert (=> b!792056 (= c!87993 (= lt!353363 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!792056 (= e!440114 e!440115)))

(declare-fun b!792057 () Bool)

(assert (=> b!792057 (= e!440116 Undefined!8164)))

(assert (= (and d!103067 c!87991) b!792057))

(assert (= (and d!103067 (not c!87991)) b!792052))

(assert (= (and b!792052 c!87992) b!792053))

(assert (= (and b!792052 (not c!87992)) b!792056))

(assert (= (and b!792056 c!87993) b!792054))

(assert (= (and b!792056 (not c!87993)) b!792055))

(declare-fun m!732787 () Bool)

(assert (=> b!792052 m!732787))

(declare-fun m!732789 () Bool)

(assert (=> d!103067 m!732789))

(declare-fun m!732791 () Bool)

(assert (=> d!103067 m!732791))

(declare-fun m!732793 () Bool)

(assert (=> d!103067 m!732793))

(assert (=> d!103067 m!732693))

(assert (=> d!103067 m!732789))

(declare-fun m!732795 () Bool)

(assert (=> d!103067 m!732795))

(declare-fun m!732797 () Bool)

(assert (=> d!103067 m!732797))

(declare-fun m!732799 () Bool)

(assert (=> b!792055 m!732799))

(assert (=> b!791937 d!103067))

(declare-fun d!103075 () Bool)

(assert (=> d!103075 (= (validKeyInArray!0 (select (arr!20566 a!3170) j!153)) (and (not (= (select (arr!20566 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20566 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!791936 d!103075))

(check-sat (not bm!35319) (not d!103067) (not b!791971) (not b!791972) (not b!792055) (not b!791991))
(check-sat)
