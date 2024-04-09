; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69128 () Bool)

(assert start!69128)

(declare-fun b!805978 () Bool)

(declare-fun res!550480 () Bool)

(declare-fun e!446349 () Bool)

(assert (=> b!805978 (=> (not res!550480) (not e!446349))))

(declare-datatypes ((array!43824 0))(
  ( (array!43825 (arr!20987 (Array (_ BitVec 32) (_ BitVec 64))) (size!21408 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43824)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805978 (= res!550480 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805979 () Bool)

(declare-fun e!446348 () Bool)

(declare-fun e!446353 () Bool)

(assert (=> b!805979 (= e!446348 e!446353)))

(declare-fun res!550475 () Bool)

(assert (=> b!805979 (=> (not res!550475) (not e!446353))))

(declare-datatypes ((SeekEntryResult!8585 0))(
  ( (MissingZero!8585 (index!36707 (_ BitVec 32))) (Found!8585 (index!36708 (_ BitVec 32))) (Intermediate!8585 (undefined!9397 Bool) (index!36709 (_ BitVec 32)) (x!67547 (_ BitVec 32))) (Undefined!8585) (MissingVacant!8585 (index!36710 (_ BitVec 32))) )
))
(declare-fun lt!360963 () SeekEntryResult!8585)

(declare-fun lt!360970 () SeekEntryResult!8585)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805979 (= res!550475 (and (= lt!360970 lt!360963) (= (select (arr!20987 a!3170) index!1236) (select (arr!20987 a!3170) j!153))))))

(assert (=> b!805979 (= lt!360963 (Found!8585 j!153))))

(declare-fun b!805980 () Bool)

(declare-fun lt!360968 () SeekEntryResult!8585)

(assert (=> b!805980 (= e!446353 (not (= lt!360968 lt!360963)))))

(assert (=> b!805980 (= lt!360968 (Found!8585 index!1236))))

(declare-fun b!805981 () Bool)

(declare-fun res!550473 () Bool)

(declare-fun e!446351 () Bool)

(assert (=> b!805981 (=> (not res!550473) (not e!446351))))

(declare-datatypes ((List!15003 0))(
  ( (Nil!15000) (Cons!14999 (h!16128 (_ BitVec 64)) (t!21326 List!15003)) )
))
(declare-fun arrayNoDuplicates!0 (array!43824 (_ BitVec 32) List!15003) Bool)

(assert (=> b!805981 (= res!550473 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15000))))

(declare-fun b!805982 () Bool)

(declare-fun res!550479 () Bool)

(assert (=> b!805982 (=> (not res!550479) (not e!446349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805982 (= res!550479 (validKeyInArray!0 k!2044))))

(declare-fun res!550472 () Bool)

(assert (=> start!69128 (=> (not res!550472) (not e!446349))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69128 (= res!550472 (validMask!0 mask!3266))))

(assert (=> start!69128 e!446349))

(assert (=> start!69128 true))

(declare-fun array_inv!16761 (array!43824) Bool)

(assert (=> start!69128 (array_inv!16761 a!3170)))

(declare-fun b!805983 () Bool)

(declare-fun res!550476 () Bool)

(assert (=> b!805983 (=> (not res!550476) (not e!446349))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805983 (= res!550476 (and (= (size!21408 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21408 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21408 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805984 () Bool)

(declare-fun res!550471 () Bool)

(assert (=> b!805984 (=> (not res!550471) (not e!446351))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!805984 (= res!550471 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21408 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20987 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21408 a!3170)) (= (select (arr!20987 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805985 () Bool)

(declare-fun res!550477 () Bool)

(assert (=> b!805985 (=> (not res!550477) (not e!446351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43824 (_ BitVec 32)) Bool)

(assert (=> b!805985 (= res!550477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805986 () Bool)

(declare-fun e!446350 () Bool)

(assert (=> b!805986 (= e!446350 e!446348)))

(declare-fun res!550470 () Bool)

(assert (=> b!805986 (=> (not res!550470) (not e!446348))))

(declare-fun lt!360967 () SeekEntryResult!8585)

(assert (=> b!805986 (= res!550470 (= lt!360967 lt!360970))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43824 (_ BitVec 32)) SeekEntryResult!8585)

(assert (=> b!805986 (= lt!360970 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20987 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43824 (_ BitVec 32)) SeekEntryResult!8585)

(assert (=> b!805986 (= lt!360967 (seekEntryOrOpen!0 (select (arr!20987 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805987 () Bool)

(declare-fun res!550474 () Bool)

(assert (=> b!805987 (=> (not res!550474) (not e!446349))))

(assert (=> b!805987 (= res!550474 (validKeyInArray!0 (select (arr!20987 a!3170) j!153)))))

(declare-fun b!805988 () Bool)

(assert (=> b!805988 (= e!446351 e!446350)))

(declare-fun res!550478 () Bool)

(assert (=> b!805988 (=> (not res!550478) (not e!446350))))

(declare-fun lt!360969 () SeekEntryResult!8585)

(assert (=> b!805988 (= res!550478 (= lt!360969 lt!360968))))

(declare-fun lt!360966 () (_ BitVec 64))

(declare-fun lt!360965 () array!43824)

(assert (=> b!805988 (= lt!360968 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360966 lt!360965 mask!3266))))

(assert (=> b!805988 (= lt!360969 (seekEntryOrOpen!0 lt!360966 lt!360965 mask!3266))))

(assert (=> b!805988 (= lt!360966 (select (store (arr!20987 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805988 (= lt!360965 (array!43825 (store (arr!20987 a!3170) i!1163 k!2044) (size!21408 a!3170)))))

(declare-fun b!805989 () Bool)

(assert (=> b!805989 (= e!446349 e!446351)))

(declare-fun res!550469 () Bool)

(assert (=> b!805989 (=> (not res!550469) (not e!446351))))

(declare-fun lt!360964 () SeekEntryResult!8585)

(assert (=> b!805989 (= res!550469 (or (= lt!360964 (MissingZero!8585 i!1163)) (= lt!360964 (MissingVacant!8585 i!1163))))))

(assert (=> b!805989 (= lt!360964 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69128 res!550472) b!805983))

(assert (= (and b!805983 res!550476) b!805987))

(assert (= (and b!805987 res!550474) b!805982))

(assert (= (and b!805982 res!550479) b!805978))

(assert (= (and b!805978 res!550480) b!805989))

(assert (= (and b!805989 res!550469) b!805985))

(assert (= (and b!805985 res!550477) b!805981))

(assert (= (and b!805981 res!550473) b!805984))

(assert (= (and b!805984 res!550471) b!805988))

(assert (= (and b!805988 res!550478) b!805986))

(assert (= (and b!805986 res!550470) b!805979))

(assert (= (and b!805979 res!550475) b!805980))

(declare-fun m!748027 () Bool)

(assert (=> b!805988 m!748027))

(declare-fun m!748029 () Bool)

(assert (=> b!805988 m!748029))

(declare-fun m!748031 () Bool)

(assert (=> b!805988 m!748031))

(declare-fun m!748033 () Bool)

(assert (=> b!805988 m!748033))

(declare-fun m!748035 () Bool)

(assert (=> b!805978 m!748035))

(declare-fun m!748037 () Bool)

(assert (=> b!805981 m!748037))

(declare-fun m!748039 () Bool)

(assert (=> b!805985 m!748039))

(declare-fun m!748041 () Bool)

(assert (=> start!69128 m!748041))

(declare-fun m!748043 () Bool)

(assert (=> start!69128 m!748043))

(declare-fun m!748045 () Bool)

(assert (=> b!805979 m!748045))

(declare-fun m!748047 () Bool)

(assert (=> b!805979 m!748047))

(assert (=> b!805986 m!748047))

(assert (=> b!805986 m!748047))

(declare-fun m!748049 () Bool)

(assert (=> b!805986 m!748049))

(assert (=> b!805986 m!748047))

(declare-fun m!748051 () Bool)

(assert (=> b!805986 m!748051))

(declare-fun m!748053 () Bool)

(assert (=> b!805984 m!748053))

(declare-fun m!748055 () Bool)

(assert (=> b!805984 m!748055))

(assert (=> b!805987 m!748047))

(assert (=> b!805987 m!748047))

(declare-fun m!748057 () Bool)

(assert (=> b!805987 m!748057))

(declare-fun m!748059 () Bool)

(assert (=> b!805982 m!748059))

(declare-fun m!748061 () Bool)

(assert (=> b!805989 m!748061))

(push 1)

(assert (not b!805985))

(assert (not b!805978))

(assert (not b!805989))

(assert (not b!805987))

(assert (not b!805988))

(assert (not start!69128))

(assert (not b!805981))

(assert (not b!805982))

(assert (not b!805986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!806046 () Bool)

(declare-fun e!446392 () Bool)

(declare-fun call!35367 () Bool)

(assert (=> b!806046 (= e!446392 call!35367)))

(declare-fun d!103567 () Bool)

(declare-fun res!550497 () Bool)

(declare-fun e!446391 () Bool)

(assert (=> d!103567 (=> res!550497 e!446391)))

(assert (=> d!103567 (= res!550497 (bvsge #b00000000000000000000000000000000 (size!21408 a!3170)))))

(assert (=> d!103567 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!446391)))

(declare-fun b!806047 () Bool)

(declare-fun e!446390 () Bool)

(assert (=> b!806047 (= e!446391 e!446390)))

(declare-fun c!88185 () Bool)

(assert (=> b!806047 (= c!88185 (validKeyInArray!0 (select (arr!20987 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!806048 () Bool)

(assert (=> b!806048 (= e!446390 e!446392)))

(declare-fun lt!360993 () (_ BitVec 64))

(assert (=> b!806048 (= lt!360993 (select (arr!20987 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27592 0))(
  ( (Unit!27593) )
))
(declare-fun lt!360994 () Unit!27592)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43824 (_ BitVec 64) (_ BitVec 32)) Unit!27592)

(assert (=> b!806048 (= lt!360994 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!360993 #b00000000000000000000000000000000))))

(assert (=> b!806048 (arrayContainsKey!0 a!3170 lt!360993 #b00000000000000000000000000000000)))

(declare-fun lt!360992 () Unit!27592)

(assert (=> b!806048 (= lt!360992 lt!360994)))

(declare-fun res!550498 () Bool)

(assert (=> b!806048 (= res!550498 (= (seekEntryOrOpen!0 (select (arr!20987 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8585 #b00000000000000000000000000000000)))))

(assert (=> b!806048 (=> (not res!550498) (not e!446392))))

(declare-fun b!806049 () Bool)

(assert (=> b!806049 (= e!446390 call!35367)))

(declare-fun bm!35364 () Bool)

(assert (=> bm!35364 (= call!35367 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(assert (= (and d!103567 (not res!550497)) b!806047))

(assert (= (and b!806047 c!88185) b!806048))

(assert (= (and b!806047 (not c!88185)) b!806049))

(assert (= (and b!806048 res!550498) b!806046))

(assert (= (or b!806046 b!806049) bm!35364))

(declare-fun m!748095 () Bool)

(assert (=> b!806047 m!748095))

(assert (=> b!806047 m!748095))

(declare-fun m!748097 () Bool)

(assert (=> b!806047 m!748097))

(assert (=> b!806048 m!748095))

(declare-fun m!748099 () Bool)

(assert (=> b!806048 m!748099))

(declare-fun m!748101 () Bool)

(assert (=> b!806048 m!748101))

(assert (=> b!806048 m!748095))

(declare-fun m!748103 () Bool)

(assert (=> b!806048 m!748103))

(declare-fun m!748105 () Bool)

(assert (=> bm!35364 m!748105))

(assert (=> b!805985 d!103567))

(declare-fun b!806110 () Bool)

(declare-fun e!446423 () SeekEntryResult!8585)

(assert (=> b!806110 (= e!446423 (MissingVacant!8585 vacantAfter!23))))

(declare-fun d!103573 () Bool)

(declare-fun lt!361021 () SeekEntryResult!8585)

(assert (=> d!103573 (and (or (is-Undefined!8585 lt!361021) (not (is-Found!8585 lt!361021)) (and (bvsge (index!36708 lt!361021) #b00000000000000000000000000000000) (bvslt (index!36708 lt!361021) (size!21408 lt!360965)))) (or (is-Undefined!8585 lt!361021) (is-Found!8585 lt!361021) (not (is-MissingVacant!8585 lt!361021)) (not (= (index!36710 lt!361021) vacantAfter!23)) (and (bvsge (index!36710 lt!361021) #b00000000000000000000000000000000) (bvslt (index!36710 lt!361021) (size!21408 lt!360965)))) (or (is-Undefined!8585 lt!361021) (ite (is-Found!8585 lt!361021) (= (select (arr!20987 lt!360965) (index!36708 lt!361021)) lt!360966) (and (is-MissingVacant!8585 lt!361021) (= (index!36710 lt!361021) vacantAfter!23) (= (select (arr!20987 lt!360965) (index!36710 lt!361021)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!446425 () SeekEntryResult!8585)

(assert (=> d!103573 (= lt!361021 e!446425)))

(declare-fun c!88217 () Bool)

(assert (=> d!103573 (= c!88217 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!361020 () (_ BitVec 64))

(assert (=> d!103573 (= lt!361020 (select (arr!20987 lt!360965) index!1236))))

(assert (=> d!103573 (validMask!0 mask!3266)))

(assert (=> d!103573 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360966 lt!360965 mask!3266) lt!361021)))

(declare-fun b!806111 () Bool)

(declare-fun c!88218 () Bool)

(assert (=> b!806111 (= c!88218 (= lt!361020 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446424 () SeekEntryResult!8585)

(assert (=> b!806111 (= e!446424 e!446423)))

(declare-fun b!806112 () Bool)

(assert (=> b!806112 (= e!446425 e!446424)))

(declare-fun c!88216 () Bool)

(assert (=> b!806112 (= c!88216 (= lt!361020 lt!360966))))

(declare-fun b!806113 () Bool)

(assert (=> b!806113 (= e!446424 (Found!8585 index!1236))))

(declare-fun b!806114 () Bool)

(assert (=> b!806114 (= e!446425 Undefined!8585)))

(declare-fun b!806115 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806115 (= e!446423 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!360966 lt!360965 mask!3266))))

(assert (= (and d!103573 c!88217) b!806114))

(assert (= (and d!103573 (not c!88217)) b!806112))

(assert (= (and b!806112 c!88216) b!806113))

(assert (= (and b!806112 (not c!88216)) b!806111))

(assert (= (and b!806111 c!88218) b!806110))

(assert (= (and b!806111 (not c!88218)) b!806115))

(declare-fun m!748157 () Bool)

(assert (=> d!103573 m!748157))

(declare-fun m!748159 () Bool)

(assert (=> d!103573 m!748159))

(declare-fun m!748161 () Bool)

(assert (=> d!103573 m!748161))

(assert (=> d!103573 m!748041))

(declare-fun m!748163 () Bool)

(assert (=> b!806115 m!748163))

(assert (=> b!806115 m!748163))

(declare-fun m!748165 () Bool)

(assert (=> b!806115 m!748165))

(assert (=> b!805988 d!103573))

(declare-fun b!806194 () Bool)

(declare-fun e!446481 () SeekEntryResult!8585)

(declare-fun lt!361053 () SeekEntryResult!8585)

(assert (=> b!806194 (= e!446481 (MissingZero!8585 (index!36709 lt!361053)))))

(declare-fun b!806195 () Bool)

(declare-fun e!446480 () SeekEntryResult!8585)

(assert (=> b!806195 (= e!446480 (Found!8585 (index!36709 lt!361053)))))

(declare-fun b!806196 () Bool)

(assert (=> b!806196 (= e!446481 (seekKeyOrZeroReturnVacant!0 (x!67547 lt!361053) (index!36709 lt!361053) (index!36709 lt!361053) lt!360966 lt!360965 mask!3266))))

(declare-fun b!806197 () Bool)

(declare-fun e!446482 () SeekEntryResult!8585)

(assert (=> b!806197 (= e!446482 Undefined!8585)))

(declare-fun d!103583 () Bool)

(declare-fun lt!361051 () SeekEntryResult!8585)

(assert (=> d!103583 (and (or (is-Undefined!8585 lt!361051) (not (is-Found!8585 lt!361051)) (and (bvsge (index!36708 lt!361051) #b00000000000000000000000000000000) (bvslt (index!36708 lt!361051) (size!21408 lt!360965)))) (or (is-Undefined!8585 lt!361051) (is-Found!8585 lt!361051) (not (is-MissingZero!8585 lt!361051)) (and (bvsge (index!36707 lt!361051) #b00000000000000000000000000000000) (bvslt (index!36707 lt!361051) (size!21408 lt!360965)))) (or (is-Undefined!8585 lt!361051) (is-Found!8585 lt!361051) (is-MissingZero!8585 lt!361051) (not (is-MissingVacant!8585 lt!361051)) (and (bvsge (index!36710 lt!361051) #b00000000000000000000000000000000) (bvslt (index!36710 lt!361051) (size!21408 lt!360965)))) (or (is-Undefined!8585 lt!361051) (ite (is-Found!8585 lt!361051) (= (select (arr!20987 lt!360965) (index!36708 lt!361051)) lt!360966) (ite (is-MissingZero!8585 lt!361051) (= (select (arr!20987 lt!360965) (index!36707 lt!361051)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8585 lt!361051) (= (select (arr!20987 lt!360965) (index!36710 lt!361051)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103583 (= lt!361051 e!446482)))

(declare-fun c!88245 () Bool)

(assert (=> d!103583 (= c!88245 (and (is-Intermediate!8585 lt!361053) (undefined!9397 lt!361053)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43824 (_ BitVec 32)) SeekEntryResult!8585)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103583 (= lt!361053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!360966 mask!3266) lt!360966 lt!360965 mask!3266))))

(assert (=> d!103583 (validMask!0 mask!3266)))

(assert (=> d!103583 (= (seekEntryOrOpen!0 lt!360966 lt!360965 mask!3266) lt!361051)))

(declare-fun b!806198 () Bool)

(declare-fun c!88244 () Bool)

(declare-fun lt!361052 () (_ BitVec 64))

(assert (=> b!806198 (= c!88244 (= lt!361052 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!806198 (= e!446480 e!446481)))

(declare-fun b!806199 () Bool)

(assert (=> b!806199 (= e!446482 e!446480)))

(assert (=> b!806199 (= lt!361052 (select (arr!20987 lt!360965) (index!36709 lt!361053)))))

(declare-fun c!88243 () Bool)

(assert (=> b!806199 (= c!88243 (= lt!361052 lt!360966))))

(assert (= (and d!103583 c!88245) b!806197))

(assert (= (and d!103583 (not c!88245)) b!806199))

(assert (= (and b!806199 c!88243) b!806195))

(assert (= (and b!806199 (not c!88243)) b!806198))

(assert (= (and b!806198 c!88244) b!806194))

(assert (= (and b!806198 (not c!88244)) b!806196))

(declare-fun m!748217 () Bool)

(assert (=> b!806196 m!748217))

(declare-fun m!748219 () Bool)

(assert (=> d!103583 m!748219))

(declare-fun m!748221 () Bool)

(assert (=> d!103583 m!748221))

