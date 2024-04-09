; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69124 () Bool)

(assert start!69124)

(declare-fun b!805906 () Bool)

(declare-fun e!446314 () Bool)

(declare-fun e!446312 () Bool)

(assert (=> b!805906 (= e!446314 e!446312)))

(declare-fun res!550407 () Bool)

(assert (=> b!805906 (=> (not res!550407) (not e!446312))))

(declare-datatypes ((array!43820 0))(
  ( (array!43821 (arr!20985 (Array (_ BitVec 32) (_ BitVec 64))) (size!21406 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43820)

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8583 0))(
  ( (MissingZero!8583 (index!36699 (_ BitVec 32))) (Found!8583 (index!36700 (_ BitVec 32))) (Intermediate!8583 (undefined!9395 Bool) (index!36701 (_ BitVec 32)) (x!67545 (_ BitVec 32))) (Undefined!8583) (MissingVacant!8583 (index!36702 (_ BitVec 32))) )
))
(declare-fun lt!360917 () SeekEntryResult!8583)

(declare-fun lt!360915 () SeekEntryResult!8583)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805906 (= res!550407 (and (= lt!360915 lt!360917) (= (select (arr!20985 a!3170) index!1236) (select (arr!20985 a!3170) j!153))))))

(assert (=> b!805906 (= lt!360917 (Found!8583 j!153))))

(declare-fun b!805907 () Bool)

(declare-fun res!550408 () Bool)

(declare-fun e!446313 () Bool)

(assert (=> b!805907 (=> (not res!550408) (not e!446313))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!805907 (= res!550408 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21406 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20985 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21406 a!3170)) (= (select (arr!20985 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805908 () Bool)

(declare-fun lt!360918 () SeekEntryResult!8583)

(assert (=> b!805908 (= e!446312 (not (= lt!360918 lt!360917)))))

(assert (=> b!805908 (= lt!360918 (Found!8583 index!1236))))

(declare-fun b!805909 () Bool)

(declare-fun res!550405 () Bool)

(declare-fun e!446317 () Bool)

(assert (=> b!805909 (=> (not res!550405) (not e!446317))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805909 (= res!550405 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805910 () Bool)

(declare-fun e!446315 () Bool)

(assert (=> b!805910 (= e!446315 e!446314)))

(declare-fun res!550398 () Bool)

(assert (=> b!805910 (=> (not res!550398) (not e!446314))))

(declare-fun lt!360916 () SeekEntryResult!8583)

(assert (=> b!805910 (= res!550398 (= lt!360916 lt!360915))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43820 (_ BitVec 32)) SeekEntryResult!8583)

(assert (=> b!805910 (= lt!360915 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20985 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43820 (_ BitVec 32)) SeekEntryResult!8583)

(assert (=> b!805910 (= lt!360916 (seekEntryOrOpen!0 (select (arr!20985 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805911 () Bool)

(declare-fun res!550399 () Bool)

(assert (=> b!805911 (=> (not res!550399) (not e!446313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43820 (_ BitVec 32)) Bool)

(assert (=> b!805911 (= res!550399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805913 () Bool)

(assert (=> b!805913 (= e!446313 e!446315)))

(declare-fun res!550404 () Bool)

(assert (=> b!805913 (=> (not res!550404) (not e!446315))))

(declare-fun lt!360921 () SeekEntryResult!8583)

(assert (=> b!805913 (= res!550404 (= lt!360921 lt!360918))))

(declare-fun lt!360920 () (_ BitVec 64))

(declare-fun lt!360919 () array!43820)

(assert (=> b!805913 (= lt!360918 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360920 lt!360919 mask!3266))))

(assert (=> b!805913 (= lt!360921 (seekEntryOrOpen!0 lt!360920 lt!360919 mask!3266))))

(assert (=> b!805913 (= lt!360920 (select (store (arr!20985 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805913 (= lt!360919 (array!43821 (store (arr!20985 a!3170) i!1163 k!2044) (size!21406 a!3170)))))

(declare-fun b!805914 () Bool)

(declare-fun res!550403 () Bool)

(assert (=> b!805914 (=> (not res!550403) (not e!446317))))

(assert (=> b!805914 (= res!550403 (and (= (size!21406 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21406 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21406 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805915 () Bool)

(declare-fun res!550406 () Bool)

(assert (=> b!805915 (=> (not res!550406) (not e!446317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805915 (= res!550406 (validKeyInArray!0 (select (arr!20985 a!3170) j!153)))))

(declare-fun b!805916 () Bool)

(assert (=> b!805916 (= e!446317 e!446313)))

(declare-fun res!550401 () Bool)

(assert (=> b!805916 (=> (not res!550401) (not e!446313))))

(declare-fun lt!360922 () SeekEntryResult!8583)

(assert (=> b!805916 (= res!550401 (or (= lt!360922 (MissingZero!8583 i!1163)) (= lt!360922 (MissingVacant!8583 i!1163))))))

(assert (=> b!805916 (= lt!360922 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805917 () Bool)

(declare-fun res!550402 () Bool)

(assert (=> b!805917 (=> (not res!550402) (not e!446313))))

(declare-datatypes ((List!15001 0))(
  ( (Nil!14998) (Cons!14997 (h!16126 (_ BitVec 64)) (t!21324 List!15001)) )
))
(declare-fun arrayNoDuplicates!0 (array!43820 (_ BitVec 32) List!15001) Bool)

(assert (=> b!805917 (= res!550402 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14998))))

(declare-fun res!550400 () Bool)

(assert (=> start!69124 (=> (not res!550400) (not e!446317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69124 (= res!550400 (validMask!0 mask!3266))))

(assert (=> start!69124 e!446317))

(assert (=> start!69124 true))

(declare-fun array_inv!16759 (array!43820) Bool)

(assert (=> start!69124 (array_inv!16759 a!3170)))

(declare-fun b!805912 () Bool)

(declare-fun res!550397 () Bool)

(assert (=> b!805912 (=> (not res!550397) (not e!446317))))

(assert (=> b!805912 (= res!550397 (validKeyInArray!0 k!2044))))

(assert (= (and start!69124 res!550400) b!805914))

(assert (= (and b!805914 res!550403) b!805915))

(assert (= (and b!805915 res!550406) b!805912))

(assert (= (and b!805912 res!550397) b!805909))

(assert (= (and b!805909 res!550405) b!805916))

(assert (= (and b!805916 res!550401) b!805911))

(assert (= (and b!805911 res!550399) b!805917))

(assert (= (and b!805917 res!550402) b!805907))

(assert (= (and b!805907 res!550408) b!805913))

(assert (= (and b!805913 res!550404) b!805910))

(assert (= (and b!805910 res!550398) b!805906))

(assert (= (and b!805906 res!550407) b!805908))

(declare-fun m!747955 () Bool)

(assert (=> b!805911 m!747955))

(declare-fun m!747957 () Bool)

(assert (=> b!805912 m!747957))

(declare-fun m!747959 () Bool)

(assert (=> start!69124 m!747959))

(declare-fun m!747961 () Bool)

(assert (=> start!69124 m!747961))

(declare-fun m!747963 () Bool)

(assert (=> b!805910 m!747963))

(assert (=> b!805910 m!747963))

(declare-fun m!747965 () Bool)

(assert (=> b!805910 m!747965))

(assert (=> b!805910 m!747963))

(declare-fun m!747967 () Bool)

(assert (=> b!805910 m!747967))

(declare-fun m!747969 () Bool)

(assert (=> b!805906 m!747969))

(assert (=> b!805906 m!747963))

(assert (=> b!805915 m!747963))

(assert (=> b!805915 m!747963))

(declare-fun m!747971 () Bool)

(assert (=> b!805915 m!747971))

(declare-fun m!747973 () Bool)

(assert (=> b!805907 m!747973))

(declare-fun m!747975 () Bool)

(assert (=> b!805907 m!747975))

(declare-fun m!747977 () Bool)

(assert (=> b!805909 m!747977))

(declare-fun m!747979 () Bool)

(assert (=> b!805913 m!747979))

(declare-fun m!747981 () Bool)

(assert (=> b!805913 m!747981))

(declare-fun m!747983 () Bool)

(assert (=> b!805913 m!747983))

(declare-fun m!747985 () Bool)

(assert (=> b!805913 m!747985))

(declare-fun m!747987 () Bool)

(assert (=> b!805917 m!747987))

(declare-fun m!747989 () Bool)

(assert (=> b!805916 m!747989))

(push 1)

(assert (not b!805910))

(assert (not b!805915))

(assert (not b!805913))

(assert (not b!805912))

(assert (not b!805916))

(assert (not b!805911))

(assert (not start!69124))

(assert (not b!805909))

(assert (not b!805917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103559 () Bool)

(declare-fun res!550491 () Bool)

(declare-fun e!446364 () Bool)

(assert (=> d!103559 (=> res!550491 e!446364)))

(assert (=> d!103559 (= res!550491 (= (select (arr!20985 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103559 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!446364)))

(declare-fun b!806000 () Bool)

(declare-fun e!446365 () Bool)

(assert (=> b!806000 (= e!446364 e!446365)))

(declare-fun res!550492 () Bool)

(assert (=> b!806000 (=> (not res!550492) (not e!446365))))

(assert (=> b!806000 (= res!550492 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21406 a!3170)))))

(declare-fun b!806001 () Bool)

(assert (=> b!806001 (= e!446365 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103559 (not res!550491)) b!806000))

(assert (= (and b!806000 res!550492) b!806001))

(declare-fun m!748067 () Bool)

(assert (=> d!103559 m!748067))

(declare-fun m!748069 () Bool)

(assert (=> b!806001 m!748069))

(assert (=> b!805909 d!103559))

(declare-fun d!103563 () Bool)

(assert (=> d!103563 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805912 d!103563))

(declare-fun d!103565 () Bool)

(declare-fun lt!360981 () SeekEntryResult!8583)

(assert (=> d!103565 (and (or (is-Undefined!8583 lt!360981) (not (is-Found!8583 lt!360981)) (and (bvsge (index!36700 lt!360981) #b00000000000000000000000000000000) (bvslt (index!36700 lt!360981) (size!21406 lt!360919)))) (or (is-Undefined!8583 lt!360981) (is-Found!8583 lt!360981) (not (is-MissingVacant!8583 lt!360981)) (not (= (index!36702 lt!360981) vacantAfter!23)) (and (bvsge (index!36702 lt!360981) #b00000000000000000000000000000000) (bvslt (index!36702 lt!360981) (size!21406 lt!360919)))) (or (is-Undefined!8583 lt!360981) (ite (is-Found!8583 lt!360981) (= (select (arr!20985 lt!360919) (index!36700 lt!360981)) lt!360920) (and (is-MissingVacant!8583 lt!360981) (= (index!36702 lt!360981) vacantAfter!23) (= (select (arr!20985 lt!360919) (index!36702 lt!360981)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!446380 () SeekEntryResult!8583)

(assert (=> d!103565 (= lt!360981 e!446380)))

(declare-fun c!88177 () Bool)

(assert (=> d!103565 (= c!88177 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!360982 () (_ BitVec 64))

(assert (=> d!103565 (= lt!360982 (select (arr!20985 lt!360919) index!1236))))

(assert (=> d!103565 (validMask!0 mask!3266)))

(assert (=> d!103565 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360920 lt!360919 mask!3266) lt!360981)))

(declare-fun b!806026 () Bool)

(declare-fun e!446379 () SeekEntryResult!8583)

(assert (=> b!806026 (= e!446379 (Found!8583 index!1236))))

(declare-fun b!806027 () Bool)

(declare-fun c!88179 () Bool)

(assert (=> b!806027 (= c!88179 (= lt!360982 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446378 () SeekEntryResult!8583)

(assert (=> b!806027 (= e!446379 e!446378)))

(declare-fun b!806028 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806028 (= e!446378 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!360920 lt!360919 mask!3266))))

(declare-fun b!806029 () Bool)

(assert (=> b!806029 (= e!446378 (MissingVacant!8583 vacantAfter!23))))

(declare-fun b!806030 () Bool)

(assert (=> b!806030 (= e!446380 Undefined!8583)))

(declare-fun b!806031 () Bool)

(assert (=> b!806031 (= e!446380 e!446379)))

(declare-fun c!88178 () Bool)

(assert (=> b!806031 (= c!88178 (= lt!360982 lt!360920))))

(assert (= (and d!103565 c!88177) b!806030))

(assert (= (and d!103565 (not c!88177)) b!806031))

(assert (= (and b!806031 c!88178) b!806026))

(assert (= (and b!806031 (not c!88178)) b!806027))

(assert (= (and b!806027 c!88179) b!806029))

(assert (= (and b!806027 (not c!88179)) b!806028))

(declare-fun m!748071 () Bool)

(assert (=> d!103565 m!748071))

(declare-fun m!748073 () Bool)

(assert (=> d!103565 m!748073))

(declare-fun m!748075 () Bool)

(assert (=> d!103565 m!748075))

(assert (=> d!103565 m!747959))

(declare-fun m!748077 () Bool)

(assert (=> b!806028 m!748077))

(assert (=> b!806028 m!748077))

(declare-fun m!748079 () Bool)

(assert (=> b!806028 m!748079))

(assert (=> b!805913 d!103565))

(declare-fun b!806098 () Bool)

(declare-fun c!88212 () Bool)

(declare-fun lt!361015 () (_ BitVec 64))

(assert (=> b!806098 (= c!88212 (= lt!361015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446419 () SeekEntryResult!8583)

(declare-fun e!446417 () SeekEntryResult!8583)

(assert (=> b!806098 (= e!446419 e!446417)))

(declare-fun b!806100 () Bool)

(declare-fun e!446418 () SeekEntryResult!8583)

(assert (=> b!806100 (= e!446418 Undefined!8583)))

(declare-fun b!806101 () Bool)

(declare-fun lt!361016 () SeekEntryResult!8583)

(assert (=> b!806101 (= e!446417 (seekKeyOrZeroReturnVacant!0 (x!67545 lt!361016) (index!36701 lt!361016) (index!36701 lt!361016) lt!360920 lt!360919 mask!3266))))

(declare-fun b!806102 () Bool)

(assert (=> b!806102 (= e!446417 (MissingZero!8583 (index!36701 lt!361016)))))

(declare-fun b!806103 () Bool)

(assert (=> b!806103 (= e!446419 (Found!8583 (index!36701 lt!361016)))))

(declare-fun d!103569 () Bool)

(declare-fun lt!361014 () SeekEntryResult!8583)

(assert (=> d!103569 (and (or (is-Undefined!8583 lt!361014) (not (is-Found!8583 lt!361014)) (and (bvsge (index!36700 lt!361014) #b00000000000000000000000000000000) (bvslt (index!36700 lt!361014) (size!21406 lt!360919)))) (or (is-Undefined!8583 lt!361014) (is-Found!8583 lt!361014) (not (is-MissingZero!8583 lt!361014)) (and (bvsge (index!36699 lt!361014) #b00000000000000000000000000000000) (bvslt (index!36699 lt!361014) (size!21406 lt!360919)))) (or (is-Undefined!8583 lt!361014) (is-Found!8583 lt!361014) (is-MissingZero!8583 lt!361014) (not (is-MissingVacant!8583 lt!361014)) (and (bvsge (index!36702 lt!361014) #b00000000000000000000000000000000) (bvslt (index!36702 lt!361014) (size!21406 lt!360919)))) (or (is-Undefined!8583 lt!361014) (ite (is-Found!8583 lt!361014) (= (select (arr!20985 lt!360919) (index!36700 lt!361014)) lt!360920) (ite (is-MissingZero!8583 lt!361014) (= (select (arr!20985 lt!360919) (index!36699 lt!361014)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8583 lt!361014) (= (select (arr!20985 lt!360919) (index!36702 lt!361014)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103569 (= lt!361014 e!446418)))

(declare-fun c!88211 () Bool)

(assert (=> d!103569 (= c!88211 (and (is-Intermediate!8583 lt!361016) (undefined!9395 lt!361016)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43820 (_ BitVec 32)) SeekEntryResult!8583)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103569 (= lt!361016 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!360920 mask!3266) lt!360920 lt!360919 mask!3266))))

(assert (=> d!103569 (validMask!0 mask!3266)))

(assert (=> d!103569 (= (seekEntryOrOpen!0 lt!360920 lt!360919 mask!3266) lt!361014)))

(declare-fun b!806099 () Bool)

(assert (=> b!806099 (= e!446418 e!446419)))

(assert (=> b!806099 (= lt!361015 (select (arr!20985 lt!360919) (index!36701 lt!361016)))))

(declare-fun c!88210 () Bool)

(assert (=> b!806099 (= c!88210 (= lt!361015 lt!360920))))

(assert (= (and d!103569 c!88211) b!806100))

(assert (= (and d!103569 (not c!88211)) b!806099))

(assert (= (and b!806099 c!88210) b!806103))

(assert (= (and b!806099 (not c!88210)) b!806098))

(assert (= (and b!806098 c!88212) b!806102))

(assert (= (and b!806098 (not c!88212)) b!806101))

(declare-fun m!748129 () Bool)

(assert (=> b!806101 m!748129))

(declare-fun m!748131 () Bool)

(assert (=> d!103569 m!748131))

(declare-fun m!748133 () Bool)

(assert (=> d!103569 m!748133))

(declare-fun m!748135 () Bool)

(assert (=> d!103569 m!748135))

(declare-fun m!748137 () Bool)

(assert (=> d!103569 m!748137))

(assert (=> d!103569 m!747959))

(declare-fun m!748139 () Bool)

(assert (=> d!103569 m!748139))

(assert (=> d!103569 m!748135))

(declare-fun m!748141 () Bool)

(assert (=> b!806099 m!748141))

(assert (=> b!805913 d!103569))

(declare-fun b!806104 () Bool)

(declare-fun c!88215 () Bool)

(declare-fun lt!361018 () (_ BitVec 64))

(assert (=> b!806104 (= c!88215 (= lt!361018 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446422 () SeekEntryResult!8583)

(declare-fun e!446420 () SeekEntryResult!8583)

(assert (=> b!806104 (= e!446422 e!446420)))

(declare-fun b!806106 () Bool)

(declare-fun e!446421 () SeekEntryResult!8583)

(assert (=> b!806106 (= e!446421 Undefined!8583)))

(declare-fun b!806107 () Bool)

(declare-fun lt!361019 () SeekEntryResult!8583)

(assert (=> b!806107 (= e!446420 (seekKeyOrZeroReturnVacant!0 (x!67545 lt!361019) (index!36701 lt!361019) (index!36701 lt!361019) k!2044 a!3170 mask!3266))))

(declare-fun b!806108 () Bool)

(assert (=> b!806108 (= e!446420 (MissingZero!8583 (index!36701 lt!361019)))))

(declare-fun b!806109 () Bool)

(assert (=> b!806109 (= e!446422 (Found!8583 (index!36701 lt!361019)))))

(declare-fun d!103579 () Bool)

(declare-fun lt!361017 () SeekEntryResult!8583)

(assert (=> d!103579 (and (or (is-Undefined!8583 lt!361017) (not (is-Found!8583 lt!361017)) (and (bvsge (index!36700 lt!361017) #b00000000000000000000000000000000) (bvslt (index!36700 lt!361017) (size!21406 a!3170)))) (or (is-Undefined!8583 lt!361017) (is-Found!8583 lt!361017) (not (is-MissingZero!8583 lt!361017)) (and (bvsge (index!36699 lt!361017) #b00000000000000000000000000000000) (bvslt (index!36699 lt!361017) (size!21406 a!3170)))) (or (is-Undefined!8583 lt!361017) (is-Found!8583 lt!361017) (is-MissingZero!8583 lt!361017) (not (is-MissingVacant!8583 lt!361017)) (and (bvsge (index!36702 lt!361017) #b00000000000000000000000000000000) (bvslt (index!36702 lt!361017) (size!21406 a!3170)))) (or (is-Undefined!8583 lt!361017) (ite (is-Found!8583 lt!361017) (= (select (arr!20985 a!3170) (index!36700 lt!361017)) k!2044) (ite (is-MissingZero!8583 lt!361017) (= (select (arr!20985 a!3170) (index!36699 lt!361017)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8583 lt!361017) (= (select (arr!20985 a!3170) (index!36702 lt!361017)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103579 (= lt!361017 e!446421)))

(declare-fun c!88214 () Bool)

(assert (=> d!103579 (= c!88214 (and (is-Intermediate!8583 lt!361019) (undefined!9395 lt!361019)))))

(assert (=> d!103579 (= lt!361019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103579 (validMask!0 mask!3266)))

(assert (=> d!103579 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!361017)))

(declare-fun b!806105 () Bool)

(assert (=> b!806105 (= e!446421 e!446422)))

(assert (=> b!806105 (= lt!361018 (select (arr!20985 a!3170) (index!36701 lt!361019)))))

(declare-fun c!88213 () Bool)

(assert (=> b!806105 (= c!88213 (= lt!361018 k!2044))))

(assert (= (and d!103579 c!88214) b!806106))

(assert (= (and d!103579 (not c!88214)) b!806105))

(assert (= (and b!806105 c!88213) b!806109))

(assert (= (and b!806105 (not c!88213)) b!806104))

(assert (= (and b!806104 c!88215) b!806108))

(assert (= (and b!806104 (not c!88215)) b!806107))

(declare-fun m!748143 () Bool)

(assert (=> b!806107 m!748143))

(declare-fun m!748145 () Bool)

(assert (=> d!103579 m!748145))

(declare-fun m!748147 () Bool)

(assert (=> d!103579 m!748147))

(declare-fun m!748149 () Bool)

(assert (=> d!103579 m!748149))

(declare-fun m!748151 () Bool)

(assert (=> d!103579 m!748151))

(assert (=> d!103579 m!747959))

(declare-fun m!748153 () Bool)

(assert (=> d!103579 m!748153))

(assert (=> d!103579 m!748149))

(declare-fun m!748155 () Bool)

(assert (=> b!806105 m!748155))

(assert (=> b!805916 d!103579))

(declare-fun d!103581 () Bool)

(declare-fun res!550510 () Bool)

(declare-fun e!446449 () Bool)

(assert (=> d!103581 (=> res!550510 e!446449)))

(assert (=> d!103581 (= res!550510 (bvsge #b00000000000000000000000000000000 (size!21406 a!3170)))))

(assert (=> d!103581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!446449)))

(declare-fun b!806148 () Bool)

(declare-fun e!446448 () Bool)

(declare-fun e!446447 () Bool)

(assert (=> b!806148 (= e!446448 e!446447)))

(declare-fun lt!361042 () (_ BitVec 64))

(assert (=> b!806148 (= lt!361042 (select (arr!20985 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27590 0))(
  ( (Unit!27591) )
))
(declare-fun lt!361044 () Unit!27590)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43820 (_ BitVec 64) (_ BitVec 32)) Unit!27590)

(assert (=> b!806148 (= lt!361044 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!361042 #b00000000000000000000000000000000))))

(assert (=> b!806148 (arrayContainsKey!0 a!3170 lt!361042 #b00000000000000000000000000000000)))

(declare-fun lt!361043 () Unit!27590)

(assert (=> b!806148 (= lt!361043 lt!361044)))

(declare-fun res!550509 () Bool)

(assert (=> b!806148 (= res!550509 (= (seekEntryOrOpen!0 (select (arr!20985 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8583 #b00000000000000000000000000000000)))))

(assert (=> b!806148 (=> (not res!550509) (not e!446447))))

(declare-fun b!806149 () Bool)

(declare-fun call!35373 () Bool)

(assert (=> b!806149 (= e!446447 call!35373)))

(declare-fun b!806150 () Bool)

(assert (=> b!806150 (= e!446449 e!446448)))

(declare-fun c!88230 () Bool)

(assert (=> b!806150 (= c!88230 (validKeyInArray!0 (select (arr!20985 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!806151 () Bool)

(assert (=> b!806151 (= e!446448 call!35373)))

(declare-fun bm!35370 () Bool)

(assert (=> bm!35370 (= call!35373 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(assert (= (and d!103581 (not res!550510)) b!806150))

(assert (= (and b!806150 c!88230) b!806148))

(assert (= (and b!806150 (not c!88230)) b!806151))

(assert (= (and b!806148 res!550509) b!806149))

(assert (= (or b!806149 b!806151) bm!35370))

(assert (=> b!806148 m!748067))

(declare-fun m!748199 () Bool)

(assert (=> b!806148 m!748199))

(declare-fun m!748201 () Bool)

(assert (=> b!806148 m!748201))

(assert (=> b!806148 m!748067))

(declare-fun m!748203 () Bool)

(assert (=> b!806148 m!748203))

(assert (=> b!806150 m!748067))

(assert (=> b!806150 m!748067))

(declare-fun m!748205 () Bool)

(assert (=> b!806150 m!748205))

(declare-fun m!748207 () Bool)

(assert (=> bm!35370 m!748207))

(assert (=> b!805911 d!103581))

(declare-fun b!806177 () Bool)

(declare-fun e!446471 () Bool)

(declare-fun call!35379 () Bool)

(assert (=> b!806177 (= e!446471 call!35379)))

(declare-fun b!806178 () Bool)

(assert (=> b!806178 (= e!446471 call!35379)))

(declare-fun b!806179 () Bool)

(declare-fun e!446473 () Bool)

(declare-fun e!446470 () Bool)

(assert (=> b!806179 (= e!446473 e!446470)))

(declare-fun res!550526 () Bool)

(assert (=> b!806179 (=> (not res!550526) (not e!446470))))

(declare-fun e!446472 () Bool)

(assert (=> b!806179 (= res!550526 (not e!446472))))

(declare-fun res!550528 () Bool)

(assert (=> b!806179 (=> (not res!550528) (not e!446472))))

(assert (=> b!806179 (= res!550528 (validKeyInArray!0 (select (arr!20985 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103591 () Bool)

(declare-fun res!550527 () Bool)

(assert (=> d!103591 (=> res!550527 e!446473)))

(assert (=> d!103591 (= res!550527 (bvsge #b00000000000000000000000000000000 (size!21406 a!3170)))))

(assert (=> d!103591 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14998) e!446473)))

(declare-fun bm!35376 () Bool)

(declare-fun c!88236 () Bool)

(assert (=> bm!35376 (= call!35379 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88236 (Cons!14997 (select (arr!20985 a!3170) #b00000000000000000000000000000000) Nil!14998) Nil!14998)))))

(declare-fun b!806180 () Bool)

(declare-fun contains!4125 (List!15001 (_ BitVec 64)) Bool)

(assert (=> b!806180 (= e!446472 (contains!4125 Nil!14998 (select (arr!20985 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!806181 () Bool)

(assert (=> b!806181 (= e!446470 e!446471)))

(assert (=> b!806181 (= c!88236 (validKeyInArray!0 (select (arr!20985 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103591 (not res!550527)) b!806179))

(assert (= (and b!806179 res!550528) b!806180))

(assert (= (and b!806179 res!550526) b!806181))

(assert (= (and b!806181 c!88236) b!806178))

(assert (= (and b!806181 (not c!88236)) b!806177))

(assert (= (or b!806178 b!806177) bm!35376))

(assert (=> b!806179 m!748067))

(assert (=> b!806179 m!748067))

(assert (=> b!806179 m!748205))

(assert (=> bm!35376 m!748067))

(declare-fun m!748213 () Bool)

(assert (=> bm!35376 m!748213))

(assert (=> b!806180 m!748067))

(assert (=> b!806180 m!748067))

(declare-fun m!748215 () Bool)

(assert (=> b!806180 m!748215))

(assert (=> b!806181 m!748067))

(assert (=> b!806181 m!748067))

(assert (=> b!806181 m!748205))

(assert (=> b!805917 d!103591))

(declare-fun d!103593 () Bool)

(assert (=> d!103593 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69124 d!103593))

(declare-fun d!103597 () Bool)

(assert (=> d!103597 (= (array_inv!16759 a!3170) (bvsge (size!21406 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69124 d!103597))

(declare-fun d!103599 () Bool)

(assert (=> d!103599 (= (validKeyInArray!0 (select (arr!20985 a!3170) j!153)) (and (not (= (select (arr!20985 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20985 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805915 d!103599))

(declare-fun d!103601 () Bool)

(declare-fun lt!361054 () SeekEntryResult!8583)

(assert (=> d!103601 (and (or (is-Undefined!8583 lt!361054) (not (is-Found!8583 lt!361054)) (and (bvsge (index!36700 lt!361054) #b00000000000000000000000000000000) (bvslt (index!36700 lt!361054) (size!21406 a!3170)))) (or (is-Undefined!8583 lt!361054) (is-Found!8583 lt!361054) (not (is-MissingVacant!8583 lt!361054)) (not (= (index!36702 lt!361054) vacantBefore!23)) (and (bvsge (index!36702 lt!361054) #b00000000000000000000000000000000) (bvslt (index!36702 lt!361054) (size!21406 a!3170)))) (or (is-Undefined!8583 lt!361054) (ite (is-Found!8583 lt!361054) (= (select (arr!20985 a!3170) (index!36700 lt!361054)) (select (arr!20985 a!3170) j!153)) (and (is-MissingVacant!8583 lt!361054) (= (index!36702 lt!361054) vacantBefore!23) (= (select (arr!20985 a!3170) (index!36702 lt!361054)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!446489 () SeekEntryResult!8583)

(assert (=> d!103601 (= lt!361054 e!446489)))

(declare-fun c!88246 () Bool)

(assert (=> d!103601 (= c!88246 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!361055 () (_ BitVec 64))

(assert (=> d!103601 (= lt!361055 (select (arr!20985 a!3170) index!1236))))

(assert (=> d!103601 (validMask!0 mask!3266)))

(assert (=> d!103601 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20985 a!3170) j!153) a!3170 mask!3266) lt!361054)))

(declare-fun b!806204 () Bool)

(declare-fun e!446488 () SeekEntryResult!8583)

(assert (=> b!806204 (= e!446488 (Found!8583 index!1236))))

(declare-fun b!806205 () Bool)

(declare-fun c!88248 () Bool)

(assert (=> b!806205 (= c!88248 (= lt!361055 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446487 () SeekEntryResult!8583)

(assert (=> b!806205 (= e!446488 e!446487)))

(declare-fun b!806206 () Bool)

(assert (=> b!806206 (= e!446487 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!20985 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806207 () Bool)

(assert (=> b!806207 (= e!446487 (MissingVacant!8583 vacantBefore!23))))

(declare-fun b!806208 () Bool)

(assert (=> b!806208 (= e!446489 Undefined!8583)))

(declare-fun b!806209 () Bool)

(assert (=> b!806209 (= e!446489 e!446488)))

(declare-fun c!88247 () Bool)

(assert (=> b!806209 (= c!88247 (= lt!361055 (select (arr!20985 a!3170) j!153)))))

(assert (= (and d!103601 c!88246) b!806208))

(assert (= (and d!103601 (not c!88246)) b!806209))

(assert (= (and b!806209 c!88247) b!806204))

(assert (= (and b!806209 (not c!88247)) b!806205))

(assert (= (and b!806205 c!88248) b!806207))

(assert (= (and b!806205 (not c!88248)) b!806206))

(declare-fun m!748231 () Bool)

(assert (=> d!103601 m!748231))

(declare-fun m!748233 () Bool)

(assert (=> d!103601 m!748233))

(assert (=> d!103601 m!747969))

(assert (=> d!103601 m!747959))

(assert (=> b!806206 m!748077))

(assert (=> b!806206 m!748077))

(assert (=> b!806206 m!747963))

(declare-fun m!748235 () Bool)

(assert (=> b!806206 m!748235))

(assert (=> b!805910 d!103601))

(declare-fun b!806215 () Bool)

(declare-fun c!88253 () Bool)

(declare-fun lt!361060 () (_ BitVec 64))

(assert (=> b!806215 (= c!88253 (= lt!361060 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446497 () SeekEntryResult!8583)

(declare-fun e!446493 () SeekEntryResult!8583)

(assert (=> b!806215 (= e!446497 e!446493)))

(declare-fun b!806219 () Bool)

(declare-fun e!446495 () SeekEntryResult!8583)

(assert (=> b!806219 (= e!446495 Undefined!8583)))

(declare-fun b!806221 () Bool)

(declare-fun lt!361061 () SeekEntryResult!8583)

(assert (=> b!806221 (= e!446493 (seekKeyOrZeroReturnVacant!0 (x!67545 lt!361061) (index!36701 lt!361061) (index!36701 lt!361061) (select (arr!20985 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806222 () Bool)

(assert (=> b!806222 (= e!446493 (MissingZero!8583 (index!36701 lt!361061)))))

(declare-fun b!806223 () Bool)

(assert (=> b!806223 (= e!446497 (Found!8583 (index!36701 lt!361061)))))

(declare-fun d!103603 () Bool)

(declare-fun lt!361059 () SeekEntryResult!8583)

(assert (=> d!103603 (and (or (is-Undefined!8583 lt!361059) (not (is-Found!8583 lt!361059)) (and (bvsge (index!36700 lt!361059) #b00000000000000000000000000000000) (bvslt (index!36700 lt!361059) (size!21406 a!3170)))) (or (is-Undefined!8583 lt!361059) (is-Found!8583 lt!361059) (not (is-MissingZero!8583 lt!361059)) (and (bvsge (index!36699 lt!361059) #b00000000000000000000000000000000) (bvslt (index!36699 lt!361059) (size!21406 a!3170)))) (or (is-Undefined!8583 lt!361059) (is-Found!8583 lt!361059) (is-MissingZero!8583 lt!361059) (not (is-MissingVacant!8583 lt!361059)) (and (bvsge (index!36702 lt!361059) #b00000000000000000000000000000000) (bvslt (index!36702 lt!361059) (size!21406 a!3170)))) (or (is-Undefined!8583 lt!361059) (ite (is-Found!8583 lt!361059) (= (select (arr!20985 a!3170) (index!36700 lt!361059)) (select (arr!20985 a!3170) j!153)) (ite (is-MissingZero!8583 lt!361059) (= (select (arr!20985 a!3170) (index!36699 lt!361059)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8583 lt!361059) (= (select (arr!20985 a!3170) (index!36702 lt!361059)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103603 (= lt!361059 e!446495)))

(declare-fun c!88251 () Bool)

(assert (=> d!103603 (= c!88251 (and (is-Intermediate!8583 lt!361061) (undefined!9395 lt!361061)))))

(assert (=> d!103603 (= lt!361061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20985 a!3170) j!153) mask!3266) (select (arr!20985 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103603 (validMask!0 mask!3266)))

(assert (=> d!103603 (= (seekEntryOrOpen!0 (select (arr!20985 a!3170) j!153) a!3170 mask!3266) lt!361059)))

(declare-fun b!806217 () Bool)

(assert (=> b!806217 (= e!446495 e!446497)))

(assert (=> b!806217 (= lt!361060 (select (arr!20985 a!3170) (index!36701 lt!361061)))))

(declare-fun c!88249 () Bool)

(assert (=> b!806217 (= c!88249 (= lt!361060 (select (arr!20985 a!3170) j!153)))))

(assert (= (and d!103603 c!88251) b!806219))

(assert (= (and d!103603 (not c!88251)) b!806217))

(assert (= (and b!806217 c!88249) b!806223))

(assert (= (and b!806217 (not c!88249)) b!806215))

(assert (= (and b!806215 c!88253) b!806222))

(assert (= (and b!806215 (not c!88253)) b!806221))

(assert (=> b!806221 m!747963))

(declare-fun m!748239 () Bool)

(assert (=> b!806221 m!748239))

(declare-fun m!748241 () Bool)

(assert (=> d!103603 m!748241))

(declare-fun m!748243 () Bool)

(assert (=> d!103603 m!748243))

(declare-fun m!748247 () Bool)

(assert (=> d!103603 m!748247))

(assert (=> d!103603 m!747963))

(declare-fun m!748249 () Bool)

(assert (=> d!103603 m!748249))

(assert (=> d!103603 m!747959))

(declare-fun m!748255 () Bool)

(assert (=> d!103603 m!748255))

(assert (=> d!103603 m!747963))

(assert (=> d!103603 m!748247))

(declare-fun m!748259 () Bool)

(assert (=> b!806217 m!748259))

(assert (=> b!805910 d!103603))

(push 1)

