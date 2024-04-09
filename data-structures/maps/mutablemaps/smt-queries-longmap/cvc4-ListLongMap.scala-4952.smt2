; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68156 () Bool)

(assert start!68156)

(declare-fun b!792134 () Bool)

(declare-fun res!536972 () Bool)

(declare-fun e!440154 () Bool)

(assert (=> b!792134 (=> (not res!536972) (not e!440154))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792134 (= res!536972 (validKeyInArray!0 k!2044))))

(declare-fun b!792135 () Bool)

(declare-fun res!536970 () Bool)

(assert (=> b!792135 (=> (not res!536970) (not e!440154))))

(declare-datatypes ((array!42981 0))(
  ( (array!42982 (arr!20570 (Array (_ BitVec 32) (_ BitVec 64))) (size!20991 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42981)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792135 (= res!536970 (validKeyInArray!0 (select (arr!20570 a!3170) j!153)))))

(declare-fun b!792136 () Bool)

(declare-fun e!440155 () Bool)

(declare-datatypes ((List!14586 0))(
  ( (Nil!14583) (Cons!14582 (h!15711 (_ BitVec 64)) (t!20909 List!14586)) )
))
(declare-fun noDuplicate!1287 (List!14586) Bool)

(assert (=> b!792136 (= e!440155 (not (noDuplicate!1287 Nil!14583)))))

(declare-fun b!792138 () Bool)

(declare-fun res!536969 () Bool)

(assert (=> b!792138 (=> (not res!536969) (not e!440155))))

(assert (=> b!792138 (= res!536969 (and (bvsle #b00000000000000000000000000000000 (size!20991 a!3170)) (bvslt (size!20991 a!3170) #b01111111111111111111111111111111)))))

(declare-fun b!792139 () Bool)

(declare-fun res!536971 () Bool)

(assert (=> b!792139 (=> (not res!536971) (not e!440154))))

(declare-fun arrayContainsKey!0 (array!42981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792139 (= res!536971 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792140 () Bool)

(declare-fun res!536967 () Bool)

(assert (=> b!792140 (=> (not res!536967) (not e!440155))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42981 (_ BitVec 32)) Bool)

(assert (=> b!792140 (= res!536967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792141 () Bool)

(assert (=> b!792141 (= e!440154 e!440155)))

(declare-fun res!536973 () Bool)

(assert (=> b!792141 (=> (not res!536973) (not e!440155))))

(declare-datatypes ((SeekEntryResult!8168 0))(
  ( (MissingZero!8168 (index!35039 (_ BitVec 32))) (Found!8168 (index!35040 (_ BitVec 32))) (Intermediate!8168 (undefined!8980 Bool) (index!35041 (_ BitVec 32)) (x!66015 (_ BitVec 32))) (Undefined!8168) (MissingVacant!8168 (index!35042 (_ BitVec 32))) )
))
(declare-fun lt!353374 () SeekEntryResult!8168)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792141 (= res!536973 (or (= lt!353374 (MissingZero!8168 i!1163)) (= lt!353374 (MissingVacant!8168 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42981 (_ BitVec 32)) SeekEntryResult!8168)

(assert (=> b!792141 (= lt!353374 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792137 () Bool)

(declare-fun res!536974 () Bool)

(assert (=> b!792137 (=> (not res!536974) (not e!440154))))

(assert (=> b!792137 (= res!536974 (and (= (size!20991 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20991 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20991 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!536968 () Bool)

(assert (=> start!68156 (=> (not res!536968) (not e!440154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68156 (= res!536968 (validMask!0 mask!3266))))

(assert (=> start!68156 e!440154))

(assert (=> start!68156 true))

(declare-fun array_inv!16344 (array!42981) Bool)

(assert (=> start!68156 (array_inv!16344 a!3170)))

(assert (= (and start!68156 res!536968) b!792137))

(assert (= (and b!792137 res!536974) b!792135))

(assert (= (and b!792135 res!536970) b!792134))

(assert (= (and b!792134 res!536972) b!792139))

(assert (= (and b!792139 res!536971) b!792141))

(assert (= (and b!792141 res!536973) b!792140))

(assert (= (and b!792140 res!536967) b!792138))

(assert (= (and b!792138 res!536969) b!792136))

(declare-fun m!732841 () Bool)

(assert (=> b!792141 m!732841))

(declare-fun m!732843 () Bool)

(assert (=> b!792139 m!732843))

(declare-fun m!732845 () Bool)

(assert (=> b!792136 m!732845))

(declare-fun m!732847 () Bool)

(assert (=> b!792140 m!732847))

(declare-fun m!732849 () Bool)

(assert (=> start!68156 m!732849))

(declare-fun m!732851 () Bool)

(assert (=> start!68156 m!732851))

(declare-fun m!732853 () Bool)

(assert (=> b!792135 m!732853))

(assert (=> b!792135 m!732853))

(declare-fun m!732855 () Bool)

(assert (=> b!792135 m!732855))

(declare-fun m!732857 () Bool)

(assert (=> b!792134 m!732857))

(push 1)

(assert (not b!792141))

(assert (not b!792139))

(assert (not b!792140))

(assert (not b!792134))

(assert (not b!792135))

(assert (not start!68156))

(assert (not b!792136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103095 () Bool)

(assert (=> d!103095 (= (validKeyInArray!0 (select (arr!20570 a!3170) j!153)) (and (not (= (select (arr!20570 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20570 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!792135 d!103095))

(declare-fun d!103097 () Bool)

(declare-fun res!536985 () Bool)

(declare-fun e!440166 () Bool)

(assert (=> d!103097 (=> res!536985 e!440166)))

(assert (=> d!103097 (= res!536985 (is-Nil!14583 Nil!14583))))

(assert (=> d!103097 (= (noDuplicate!1287 Nil!14583) e!440166)))

(declare-fun b!792152 () Bool)

(declare-fun e!440167 () Bool)

(assert (=> b!792152 (= e!440166 e!440167)))

(declare-fun res!536986 () Bool)

(assert (=> b!792152 (=> (not res!536986) (not e!440167))))

(declare-fun contains!4118 (List!14586 (_ BitVec 64)) Bool)

(assert (=> b!792152 (= res!536986 (not (contains!4118 (t!20909 Nil!14583) (h!15711 Nil!14583))))))

(declare-fun b!792153 () Bool)

(assert (=> b!792153 (= e!440167 (noDuplicate!1287 (t!20909 Nil!14583)))))

(assert (= (and d!103097 (not res!536985)) b!792152))

(assert (= (and b!792152 res!536986) b!792153))

(declare-fun m!732863 () Bool)

(assert (=> b!792152 m!732863))

(declare-fun m!732865 () Bool)

(assert (=> b!792153 m!732865))

(assert (=> b!792136 d!103097))

(declare-fun b!792214 () Bool)

(declare-fun e!440209 () SeekEntryResult!8168)

(declare-fun lt!353408 () SeekEntryResult!8168)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42981 (_ BitVec 32)) SeekEntryResult!8168)

(assert (=> b!792214 (= e!440209 (seekKeyOrZeroReturnVacant!0 (x!66015 lt!353408) (index!35041 lt!353408) (index!35041 lt!353408) k!2044 a!3170 mask!3266))))

(declare-fun b!792215 () Bool)

(declare-fun c!88017 () Bool)

(declare-fun lt!353410 () (_ BitVec 64))

(assert (=> b!792215 (= c!88017 (= lt!353410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!440208 () SeekEntryResult!8168)

(assert (=> b!792215 (= e!440208 e!440209)))

(declare-fun b!792217 () Bool)

(assert (=> b!792217 (= e!440209 (MissingZero!8168 (index!35041 lt!353408)))))

(declare-fun b!792218 () Bool)

(assert (=> b!792218 (= e!440208 (Found!8168 (index!35041 lt!353408)))))

(declare-fun b!792219 () Bool)

(declare-fun e!440207 () SeekEntryResult!8168)

(assert (=> b!792219 (= e!440207 Undefined!8168)))

(declare-fun b!792216 () Bool)

(assert (=> b!792216 (= e!440207 e!440208)))

(assert (=> b!792216 (= lt!353410 (select (arr!20570 a!3170) (index!35041 lt!353408)))))

(declare-fun c!88016 () Bool)

(assert (=> b!792216 (= c!88016 (= lt!353410 k!2044))))

(declare-fun d!103101 () Bool)

(declare-fun lt!353409 () SeekEntryResult!8168)

(assert (=> d!103101 (and (or (is-Undefined!8168 lt!353409) (not (is-Found!8168 lt!353409)) (and (bvsge (index!35040 lt!353409) #b00000000000000000000000000000000) (bvslt (index!35040 lt!353409) (size!20991 a!3170)))) (or (is-Undefined!8168 lt!353409) (is-Found!8168 lt!353409) (not (is-MissingZero!8168 lt!353409)) (and (bvsge (index!35039 lt!353409) #b00000000000000000000000000000000) (bvslt (index!35039 lt!353409) (size!20991 a!3170)))) (or (is-Undefined!8168 lt!353409) (is-Found!8168 lt!353409) (is-MissingZero!8168 lt!353409) (not (is-MissingVacant!8168 lt!353409)) (and (bvsge (index!35042 lt!353409) #b00000000000000000000000000000000) (bvslt (index!35042 lt!353409) (size!20991 a!3170)))) (or (is-Undefined!8168 lt!353409) (ite (is-Found!8168 lt!353409) (= (select (arr!20570 a!3170) (index!35040 lt!353409)) k!2044) (ite (is-MissingZero!8168 lt!353409) (= (select (arr!20570 a!3170) (index!35039 lt!353409)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8168 lt!353409) (= (select (arr!20570 a!3170) (index!35042 lt!353409)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103101 (= lt!353409 e!440207)))

(declare-fun c!88015 () Bool)

(assert (=> d!103101 (= c!88015 (and (is-Intermediate!8168 lt!353408) (undefined!8980 lt!353408)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42981 (_ BitVec 32)) SeekEntryResult!8168)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103101 (= lt!353408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103101 (validMask!0 mask!3266)))

(assert (=> d!103101 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!353409)))

(assert (= (and d!103101 c!88015) b!792219))

(assert (= (and d!103101 (not c!88015)) b!792216))

(assert (= (and b!792216 c!88016) b!792218))

(assert (= (and b!792216 (not c!88016)) b!792215))

(assert (= (and b!792215 c!88017) b!792217))

(assert (= (and b!792215 (not c!88017)) b!792214))

(declare-fun m!732907 () Bool)

(assert (=> b!792214 m!732907))

(declare-fun m!732909 () Bool)

(assert (=> b!792216 m!732909))

(assert (=> d!103101 m!732849))

(declare-fun m!732911 () Bool)

(assert (=> d!103101 m!732911))

(declare-fun m!732913 () Bool)

(assert (=> d!103101 m!732913))

(declare-fun m!732915 () Bool)

(assert (=> d!103101 m!732915))

(declare-fun m!732917 () Bool)

(assert (=> d!103101 m!732917))

(declare-fun m!732919 () Bool)

(assert (=> d!103101 m!732919))

(assert (=> d!103101 m!732913))

(assert (=> b!792141 d!103101))

(declare-fun d!103123 () Bool)

(assert (=> d!103123 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!792134 d!103123))

(declare-fun d!103125 () Bool)

(declare-fun res!537009 () Bool)

(declare-fun e!440214 () Bool)

(assert (=> d!103125 (=> res!537009 e!440214)))

(assert (=> d!103125 (= res!537009 (= (select (arr!20570 a!3170) #b00000000000000000000000000000000) k!2044))))

