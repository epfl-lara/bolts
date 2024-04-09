; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86104 () Bool)

(assert start!86104)

(declare-fun b!996972 () Bool)

(declare-fun res!667252 () Bool)

(declare-fun e!562386 () Bool)

(assert (=> b!996972 (=> (not res!667252) (not e!562386))))

(declare-datatypes ((array!63061 0))(
  ( (array!63062 (arr!30358 (Array (_ BitVec 32) (_ BitVec 64))) (size!30861 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63061)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996972 (= res!667252 (and (= (size!30861 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30861 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30861 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!667251 () Bool)

(assert (=> start!86104 (=> (not res!667251) (not e!562386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86104 (= res!667251 (validMask!0 mask!3464))))

(assert (=> start!86104 e!562386))

(declare-fun array_inv!23348 (array!63061) Bool)

(assert (=> start!86104 (array_inv!23348 a!3219)))

(assert (=> start!86104 true))

(declare-fun b!996973 () Bool)

(declare-fun res!667243 () Bool)

(declare-fun e!562388 () Bool)

(assert (=> b!996973 (=> (not res!667243) (not e!562388))))

(declare-datatypes ((List!21160 0))(
  ( (Nil!21157) (Cons!21156 (h!22321 (_ BitVec 64)) (t!30169 List!21160)) )
))
(declare-fun arrayNoDuplicates!0 (array!63061 (_ BitVec 32) List!21160) Bool)

(assert (=> b!996973 (= res!667243 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21157))))

(declare-fun b!996974 () Bool)

(declare-fun e!562385 () Bool)

(assert (=> b!996974 (= e!562385 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(declare-fun b!996975 () Bool)

(declare-fun res!667246 () Bool)

(assert (=> b!996975 (=> (not res!667246) (not e!562388))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996975 (= res!667246 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30861 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30861 a!3219))))))

(declare-fun b!996976 () Bool)

(assert (=> b!996976 (= e!562386 e!562388)))

(declare-fun res!667248 () Bool)

(assert (=> b!996976 (=> (not res!667248) (not e!562388))))

(declare-datatypes ((SeekEntryResult!9290 0))(
  ( (MissingZero!9290 (index!39530 (_ BitVec 32))) (Found!9290 (index!39531 (_ BitVec 32))) (Intermediate!9290 (undefined!10102 Bool) (index!39532 (_ BitVec 32)) (x!86991 (_ BitVec 32))) (Undefined!9290) (MissingVacant!9290 (index!39533 (_ BitVec 32))) )
))
(declare-fun lt!441294 () SeekEntryResult!9290)

(assert (=> b!996976 (= res!667248 (or (= lt!441294 (MissingVacant!9290 i!1194)) (= lt!441294 (MissingZero!9290 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63061 (_ BitVec 32)) SeekEntryResult!9290)

(assert (=> b!996976 (= lt!441294 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!996977 () Bool)

(declare-fun res!667249 () Bool)

(assert (=> b!996977 (=> (not res!667249) (not e!562386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996977 (= res!667249 (validKeyInArray!0 (select (arr!30358 a!3219) j!170)))))

(declare-fun b!996978 () Bool)

(declare-fun res!667242 () Bool)

(assert (=> b!996978 (=> (not res!667242) (not e!562388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63061 (_ BitVec 32)) Bool)

(assert (=> b!996978 (= res!667242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996979 () Bool)

(declare-fun res!667245 () Bool)

(assert (=> b!996979 (=> (not res!667245) (not e!562386))))

(declare-fun arrayContainsKey!0 (array!63061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996979 (= res!667245 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996980 () Bool)

(declare-fun res!667244 () Bool)

(assert (=> b!996980 (=> (not res!667244) (not e!562385))))

(declare-fun lt!441293 () SeekEntryResult!9290)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63061 (_ BitVec 32)) SeekEntryResult!9290)

(assert (=> b!996980 (= res!667244 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30358 a!3219) j!170) a!3219 mask!3464) lt!441293))))

(declare-fun b!996981 () Bool)

(assert (=> b!996981 (= e!562388 e!562385)))

(declare-fun res!667250 () Bool)

(assert (=> b!996981 (=> (not res!667250) (not e!562385))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996981 (= res!667250 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30358 a!3219) j!170) mask!3464) (select (arr!30358 a!3219) j!170) a!3219 mask!3464) lt!441293))))

(assert (=> b!996981 (= lt!441293 (Intermediate!9290 false resIndex!38 resX!38))))

(declare-fun b!996982 () Bool)

(declare-fun res!667247 () Bool)

(assert (=> b!996982 (=> (not res!667247) (not e!562386))))

(assert (=> b!996982 (= res!667247 (validKeyInArray!0 k!2224))))

(assert (= (and start!86104 res!667251) b!996972))

(assert (= (and b!996972 res!667252) b!996977))

(assert (= (and b!996977 res!667249) b!996982))

(assert (= (and b!996982 res!667247) b!996979))

(assert (= (and b!996979 res!667245) b!996976))

(assert (= (and b!996976 res!667248) b!996978))

(assert (= (and b!996978 res!667242) b!996973))

(assert (= (and b!996973 res!667243) b!996975))

(assert (= (and b!996975 res!667246) b!996981))

(assert (= (and b!996981 res!667250) b!996980))

(assert (= (and b!996980 res!667244) b!996974))

(declare-fun m!924045 () Bool)

(assert (=> b!996979 m!924045))

(declare-fun m!924047 () Bool)

(assert (=> b!996982 m!924047))

(declare-fun m!924049 () Bool)

(assert (=> b!996973 m!924049))

(declare-fun m!924051 () Bool)

(assert (=> b!996978 m!924051))

(declare-fun m!924053 () Bool)

(assert (=> b!996977 m!924053))

(assert (=> b!996977 m!924053))

(declare-fun m!924055 () Bool)

(assert (=> b!996977 m!924055))

(assert (=> b!996980 m!924053))

(assert (=> b!996980 m!924053))

(declare-fun m!924057 () Bool)

(assert (=> b!996980 m!924057))

(declare-fun m!924059 () Bool)

(assert (=> start!86104 m!924059))

(declare-fun m!924061 () Bool)

(assert (=> start!86104 m!924061))

(declare-fun m!924063 () Bool)

(assert (=> b!996976 m!924063))

(assert (=> b!996981 m!924053))

(assert (=> b!996981 m!924053))

(declare-fun m!924065 () Bool)

(assert (=> b!996981 m!924065))

(assert (=> b!996981 m!924065))

(assert (=> b!996981 m!924053))

(declare-fun m!924067 () Bool)

(assert (=> b!996981 m!924067))

(push 1)

(assert (not b!996981))

(assert (not b!996976))

(assert (not start!86104))

(assert (not b!996982))

(assert (not b!996977))

(assert (not b!996978))

(assert (not b!996980))

(assert (not b!996973))

(assert (not b!996979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118975 () Bool)

(assert (=> d!118975 (= (validKeyInArray!0 (select (arr!30358 a!3219) j!170)) (and (not (= (select (arr!30358 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30358 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!996977 d!118975))

(declare-fun d!118977 () Bool)

(assert (=> d!118977 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!996982 d!118977))

(declare-fun e!562468 () SeekEntryResult!9290)

(declare-fun b!997130 () Bool)

(assert (=> b!997130 (= e!562468 (Intermediate!9290 false (toIndex!0 (select (arr!30358 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!997131 () Bool)

(declare-fun lt!441338 () SeekEntryResult!9290)

(assert (=> b!997131 (and (bvsge (index!39532 lt!441338) #b00000000000000000000000000000000) (bvslt (index!39532 lt!441338) (size!30861 a!3219)))))

(declare-fun e!562471 () Bool)

(assert (=> b!997131 (= e!562471 (= (select (arr!30358 a!3219) (index!39532 lt!441338)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!118981 () Bool)

(declare-fun e!562469 () Bool)

(assert (=> d!118981 e!562469))

(declare-fun c!101032 () Bool)

(assert (=> d!118981 (= c!101032 (and (is-Intermediate!9290 lt!441338) (undefined!10102 lt!441338)))))

(declare-fun e!562470 () SeekEntryResult!9290)

(assert (=> d!118981 (= lt!441338 e!562470)))

(declare-fun c!101033 () Bool)

(assert (=> d!118981 (= c!101033 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!441339 () (_ BitVec 64))

(assert (=> d!118981 (= lt!441339 (select (arr!30358 a!3219) (toIndex!0 (select (arr!30358 a!3219) j!170) mask!3464)))))

(assert (=> d!118981 (validMask!0 mask!3464)))

(assert (=> d!118981 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30358 a!3219) j!170) mask!3464) (select (arr!30358 a!3219) j!170) a!3219 mask!3464) lt!441338)))

(declare-fun b!997132 () Bool)

(assert (=> b!997132 (= e!562470 (Intermediate!9290 true (toIndex!0 (select (arr!30358 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!997133 () Bool)

(assert (=> b!997133 (and (bvsge (index!39532 lt!441338) #b00000000000000000000000000000000) (bvslt (index!39532 lt!441338) (size!30861 a!3219)))))

(declare-fun res!667354 () Bool)

(assert (=> b!997133 (= res!667354 (= (select (arr!30358 a!3219) (index!39532 lt!441338)) (select (arr!30358 a!3219) j!170)))))

(assert (=> b!997133 (=> res!667354 e!562471)))

(declare-fun e!562472 () Bool)

(assert (=> b!997133 (= e!562472 e!562471)))

(declare-fun b!997134 () Bool)

(assert (=> b!997134 (= e!562469 (bvsge (x!86991 lt!441338) #b01111111111111111111111111111110))))

(declare-fun b!997135 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997135 (= e!562468 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30358 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30358 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997136 () Bool)

(assert (=> b!997136 (= e!562469 e!562472)))

(declare-fun res!667352 () Bool)

(assert (=> b!997136 (= res!667352 (and (is-Intermediate!9290 lt!441338) (not (undefined!10102 lt!441338)) (bvslt (x!86991 lt!441338) #b01111111111111111111111111111110) (bvsge (x!86991 lt!441338) #b00000000000000000000000000000000) (bvsge (x!86991 lt!441338) #b00000000000000000000000000000000)))))

(assert (=> b!997136 (=> (not res!667352) (not e!562472))))

(declare-fun b!997137 () Bool)

(assert (=> b!997137 (= e!562470 e!562468)))

(declare-fun c!101034 () Bool)

(assert (=> b!997137 (= c!101034 (or (= lt!441339 (select (arr!30358 a!3219) j!170)) (= (bvadd lt!441339 lt!441339) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!997138 () Bool)

(assert (=> b!997138 (and (bvsge (index!39532 lt!441338) #b00000000000000000000000000000000) (bvslt (index!39532 lt!441338) (size!30861 a!3219)))))

(declare-fun res!667353 () Bool)

(assert (=> b!997138 (= res!667353 (= (select (arr!30358 a!3219) (index!39532 lt!441338)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997138 (=> res!667353 e!562471)))

(assert (= (and d!118981 c!101033) b!997132))

(assert (= (and d!118981 (not c!101033)) b!997137))

(assert (= (and b!997137 c!101034) b!997130))

(assert (= (and b!997137 (not c!101034)) b!997135))

(assert (= (and d!118981 c!101032) b!997134))

(assert (= (and d!118981 (not c!101032)) b!997136))

(assert (= (and b!997136 res!667352) b!997133))

(assert (= (and b!997133 (not res!667354)) b!997138))

(assert (= (and b!997138 (not res!667353)) b!997131))

(declare-fun m!924161 () Bool)

(assert (=> b!997133 m!924161))

(assert (=> b!997131 m!924161))

(assert (=> d!118981 m!924065))

(declare-fun m!924163 () Bool)

(assert (=> d!118981 m!924163))

(assert (=> d!118981 m!924059))

(assert (=> b!997135 m!924065))

(declare-fun m!924165 () Bool)

(assert (=> b!997135 m!924165))

(assert (=> b!997135 m!924165))

(assert (=> b!997135 m!924053))

(declare-fun m!924167 () Bool)

(assert (=> b!997135 m!924167))

(assert (=> b!997138 m!924161))

(assert (=> b!996981 d!118981))

(declare-fun d!118997 () Bool)

(declare-fun lt!441345 () (_ BitVec 32))

(declare-fun lt!441344 () (_ BitVec 32))

(assert (=> d!118997 (= lt!441345 (bvmul (bvxor lt!441344 (bvlshr lt!441344 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!118997 (= lt!441344 ((_ extract 31 0) (bvand (bvxor (select (arr!30358 a!3219) j!170) (bvlshr (select (arr!30358 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!118997 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!667355 (let ((h!22324 ((_ extract 31 0) (bvand (bvxor (select (arr!30358 a!3219) j!170) (bvlshr (select (arr!30358 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!86995 (bvmul (bvxor h!22324 (bvlshr h!22324 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!86995 (bvlshr x!86995 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!667355 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!667355 #b00000000000000000000000000000000))))))

(assert (=> d!118997 (= (toIndex!0 (select (arr!30358 a!3219) j!170) mask!3464) (bvand (bvxor lt!441345 (bvlshr lt!441345 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!996981 d!118997))

(declare-fun b!997205 () Bool)

(declare-fun e!562508 () SeekEntryResult!9290)

(declare-fun lt!441377 () SeekEntryResult!9290)

(assert (=> b!997205 (= e!562508 (Found!9290 (index!39532 lt!441377)))))

(declare-fun b!997206 () Bool)

(declare-fun e!562509 () SeekEntryResult!9290)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63061 (_ BitVec 32)) SeekEntryResult!9290)

(assert (=> b!997206 (= e!562509 (seekKeyOrZeroReturnVacant!0 (x!86991 lt!441377) (index!39532 lt!441377) (index!39532 lt!441377) k!2224 a!3219 mask!3464))))

(declare-fun d!118999 () Bool)

(declare-fun lt!441376 () SeekEntryResult!9290)

(assert (=> d!118999 (and (or (is-Undefined!9290 lt!441376) (not (is-Found!9290 lt!441376)) (and (bvsge (index!39531 lt!441376) #b00000000000000000000000000000000) (bvslt (index!39531 lt!441376) (size!30861 a!3219)))) (or (is-Undefined!9290 lt!441376) (is-Found!9290 lt!441376) (not (is-MissingZero!9290 lt!441376)) (and (bvsge (index!39530 lt!441376) #b00000000000000000000000000000000) (bvslt (index!39530 lt!441376) (size!30861 a!3219)))) (or (is-Undefined!9290 lt!441376) (is-Found!9290 lt!441376) (is-MissingZero!9290 lt!441376) (not (is-MissingVacant!9290 lt!441376)) (and (bvsge (index!39533 lt!441376) #b00000000000000000000000000000000) (bvslt (index!39533 lt!441376) (size!30861 a!3219)))) (or (is-Undefined!9290 lt!441376) (ite (is-Found!9290 lt!441376) (= (select (arr!30358 a!3219) (index!39531 lt!441376)) k!2224) (ite (is-MissingZero!9290 lt!441376) (= (select (arr!30358 a!3219) (index!39530 lt!441376)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9290 lt!441376) (= (select (arr!30358 a!3219) (index!39533 lt!441376)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!562510 () SeekEntryResult!9290)

(assert (=> d!118999 (= lt!441376 e!562510)))

(declare-fun c!101063 () Bool)

(assert (=> d!118999 (= c!101063 (and (is-Intermediate!9290 lt!441377) (undefined!10102 lt!441377)))))

(assert (=> d!118999 (= lt!441377 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!118999 (validMask!0 mask!3464)))

(assert (=> d!118999 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441376)))

(declare-fun b!997207 () Bool)

(declare-fun c!101062 () Bool)

(declare-fun lt!441375 () (_ BitVec 64))

(assert (=> b!997207 (= c!101062 (= lt!441375 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997207 (= e!562508 e!562509)))

(declare-fun b!997208 () Bool)

(assert (=> b!997208 (= e!562509 (MissingZero!9290 (index!39532 lt!441377)))))

(declare-fun b!997209 () Bool)

(assert (=> b!997209 (= e!562510 Undefined!9290)))

(declare-fun b!997210 () Bool)

(assert (=> b!997210 (= e!562510 e!562508)))

(assert (=> b!997210 (= lt!441375 (select (arr!30358 a!3219) (index!39532 lt!441377)))))

(declare-fun c!101064 () Bool)

(assert (=> b!997210 (= c!101064 (= lt!441375 k!2224))))

(assert (= (and d!118999 c!101063) b!997209))

(assert (= (and d!118999 (not c!101063)) b!997210))

(assert (= (and b!997210 c!101064) b!997205))

(assert (= (and b!997210 (not c!101064)) b!997207))

(assert (= (and b!997207 c!101062) b!997208))

(assert (= (and b!997207 (not c!101062)) b!997206))

(declare-fun m!924199 () Bool)

(assert (=> b!997206 m!924199))

(assert (=> d!118999 m!924059))

(declare-fun m!924201 () Bool)

(assert (=> d!118999 m!924201))

(declare-fun m!924203 () Bool)

(assert (=> d!118999 m!924203))

(declare-fun m!924205 () Bool)

(assert (=> d!118999 m!924205))

(assert (=> d!118999 m!924203))

(declare-fun m!924207 () Bool)

(assert (=> d!118999 m!924207))

(declare-fun m!924209 () Bool)

(assert (=> d!118999 m!924209))

(declare-fun m!924211 () Bool)

(assert (=> b!997210 m!924211))

(assert (=> b!996976 d!118999))

(declare-fun b!997221 () Bool)

(declare-fun e!562519 () SeekEntryResult!9290)

(assert (=> b!997221 (= e!562519 (Intermediate!9290 false index!1507 x!1245))))

(declare-fun b!997222 () Bool)

(declare-fun lt!441378 () SeekEntryResult!9290)

(assert (=> b!997222 (and (bvsge (index!39532 lt!441378) #b00000000000000000000000000000000) (bvslt (index!39532 lt!441378) (size!30861 a!3219)))))

(declare-fun e!562522 () Bool)

(assert (=> b!997222 (= e!562522 (= (select (arr!30358 a!3219) (index!39532 lt!441378)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119017 () Bool)

(declare-fun e!562520 () Bool)

(assert (=> d!119017 e!562520))

(declare-fun c!101067 () Bool)

(assert (=> d!119017 (= c!101067 (and (is-Intermediate!9290 lt!441378) (undefined!10102 lt!441378)))))

(declare-fun e!562521 () SeekEntryResult!9290)

(assert (=> d!119017 (= lt!441378 e!562521)))

(declare-fun c!101068 () Bool)

(assert (=> d!119017 (= c!101068 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!441379 () (_ BitVec 64))

(assert (=> d!119017 (= lt!441379 (select (arr!30358 a!3219) index!1507))))

(assert (=> d!119017 (validMask!0 mask!3464)))

(assert (=> d!119017 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30358 a!3219) j!170) a!3219 mask!3464) lt!441378)))

(declare-fun b!997223 () Bool)

(assert (=> b!997223 (= e!562521 (Intermediate!9290 true index!1507 x!1245))))

(declare-fun b!997224 () Bool)

(assert (=> b!997224 (and (bvsge (index!39532 lt!441378) #b00000000000000000000000000000000) (bvslt (index!39532 lt!441378) (size!30861 a!3219)))))

(declare-fun res!667377 () Bool)

(assert (=> b!997224 (= res!667377 (= (select (arr!30358 a!3219) (index!39532 lt!441378)) (select (arr!30358 a!3219) j!170)))))

(assert (=> b!997224 (=> res!667377 e!562522)))

(declare-fun e!562523 () Bool)

(assert (=> b!997224 (= e!562523 e!562522)))

(declare-fun b!997225 () Bool)

(assert (=> b!997225 (= e!562520 (bvsge (x!86991 lt!441378) #b01111111111111111111111111111110))))

(declare-fun b!997226 () Bool)

(assert (=> b!997226 (= e!562519 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30358 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997227 () Bool)

(assert (=> b!997227 (= e!562520 e!562523)))

(declare-fun res!667375 () Bool)

(assert (=> b!997227 (= res!667375 (and (is-Intermediate!9290 lt!441378) (not (undefined!10102 lt!441378)) (bvslt (x!86991 lt!441378) #b01111111111111111111111111111110) (bvsge (x!86991 lt!441378) #b00000000000000000000000000000000) (bvsge (x!86991 lt!441378) x!1245)))))

(assert (=> b!997227 (=> (not res!667375) (not e!562523))))

(declare-fun b!997228 () Bool)

(assert (=> b!997228 (= e!562521 e!562519)))

(declare-fun c!101069 () Bool)

(assert (=> b!997228 (= c!101069 (or (= lt!441379 (select (arr!30358 a!3219) j!170)) (= (bvadd lt!441379 lt!441379) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!997229 () Bool)

(assert (=> b!997229 (and (bvsge (index!39532 lt!441378) #b00000000000000000000000000000000) (bvslt (index!39532 lt!441378) (size!30861 a!3219)))))

(declare-fun res!667376 () Bool)

(assert (=> b!997229 (= res!667376 (= (select (arr!30358 a!3219) (index!39532 lt!441378)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997229 (=> res!667376 e!562522)))

(assert (= (and d!119017 c!101068) b!997223))

(assert (= (and d!119017 (not c!101068)) b!997228))

(assert (= (and b!997228 c!101069) b!997221))

(assert (= (and b!997228 (not c!101069)) b!997226))

(assert (= (and d!119017 c!101067) b!997225))

(assert (= (and d!119017 (not c!101067)) b!997227))

(assert (= (and b!997227 res!667375) b!997224))

(assert (= (and b!997224 (not res!667377)) b!997229))

(assert (= (and b!997229 (not res!667376)) b!997222))

(declare-fun m!924213 () Bool)

(assert (=> b!997224 m!924213))

(assert (=> b!997222 m!924213))

(declare-fun m!924215 () Bool)

(assert (=> d!119017 m!924215))

(assert (=> d!119017 m!924059))

(declare-fun m!924217 () Bool)

(assert (=> b!997226 m!924217))

(assert (=> b!997226 m!924217))

(assert (=> b!997226 m!924053))

(declare-fun m!924219 () Bool)

(assert (=> b!997226 m!924219))

(assert (=> b!997229 m!924213))

(assert (=> b!996980 d!119017))

(declare-fun d!119019 () Bool)

(declare-fun res!667385 () Bool)

(declare-fun e!562534 () Bool)

(assert (=> d!119019 (=> res!667385 e!562534)))

(assert (=> d!119019 (= res!667385 (= (select (arr!30358 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119019 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!562534)))

(declare-fun b!997247 () Bool)

(declare-fun e!562536 () Bool)

(assert (=> b!997247 (= e!562534 e!562536)))

(declare-fun res!667386 () Bool)

(assert (=> b!997247 (=> (not res!667386) (not e!562536))))

(assert (=> b!997247 (= res!667386 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30861 a!3219)))))

(declare-fun b!997248 () Bool)

(assert (=> b!997248 (= e!562536 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119019 (not res!667385)) b!997247))

(assert (= (and b!997247 res!667386) b!997248))

(declare-fun m!924225 () Bool)

(assert (=> d!119019 m!924225))

(declare-fun m!924227 () Bool)

(assert (=> b!997248 m!924227))

(assert (=> b!996979 d!119019))

(declare-fun b!997278 () Bool)

(declare-fun e!562558 () Bool)

(declare-fun contains!5878 (List!21160 (_ BitVec 64)) Bool)

(assert (=> b!997278 (= e!562558 (contains!5878 Nil!21157 (select (arr!30358 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997279 () Bool)

(declare-fun e!562560 () Bool)

(declare-fun e!562559 () Bool)

(assert (=> b!997279 (= e!562560 e!562559)))

(declare-fun c!101082 () Bool)

(assert (=> b!997279 (= c!101082 (validKeyInArray!0 (select (arr!30358 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997280 () Bool)

(declare-fun call!42256 () Bool)

(assert (=> b!997280 (= e!562559 call!42256)))

(declare-fun d!119023 () Bool)

(declare-fun res!667403 () Bool)

(declare-fun e!562557 () Bool)

(assert (=> d!119023 (=> res!667403 e!562557)))

(assert (=> d!119023 (= res!667403 (bvsge #b00000000000000000000000000000000 (size!30861 a!3219)))))

(assert (=> d!119023 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21157) e!562557)))

(declare-fun bm!42253 () Bool)

(assert (=> bm!42253 (= call!42256 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101082 (Cons!21156 (select (arr!30358 a!3219) #b00000000000000000000000000000000) Nil!21157) Nil!21157)))))

(declare-fun b!997281 () Bool)

(assert (=> b!997281 (= e!562559 call!42256)))

(declare-fun b!997282 () Bool)

(assert (=> b!997282 (= e!562557 e!562560)))

(declare-fun res!667404 () Bool)

(assert (=> b!997282 (=> (not res!667404) (not e!562560))))

(assert (=> b!997282 (= res!667404 (not e!562558))))

(declare-fun res!667402 () Bool)

(assert (=> b!997282 (=> (not res!667402) (not e!562558))))

(assert (=> b!997282 (= res!667402 (validKeyInArray!0 (select (arr!30358 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119023 (not res!667403)) b!997282))

(assert (= (and b!997282 res!667402) b!997278))

(assert (= (and b!997282 res!667404) b!997279))

(assert (= (and b!997279 c!101082) b!997281))

(assert (= (and b!997279 (not c!101082)) b!997280))

(assert (= (or b!997281 b!997280) bm!42253))

(assert (=> b!997278 m!924225))

(assert (=> b!997278 m!924225))

(declare-fun m!924237 () Bool)

(assert (=> b!997278 m!924237))

(assert (=> b!997279 m!924225))

(assert (=> b!997279 m!924225))

(declare-fun m!924239 () Bool)

(assert (=> b!997279 m!924239))

(assert (=> bm!42253 m!924225))

(declare-fun m!924241 () Bool)

(assert (=> bm!42253 m!924241))

(assert (=> b!997282 m!924225))

(assert (=> b!997282 m!924225))

(assert (=> b!997282 m!924239))

(assert (=> b!996973 d!119023))

(declare-fun bm!42256 () Bool)

(declare-fun call!42259 () Bool)

(assert (=> bm!42256 (= call!42259 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!997306 () Bool)

(declare-fun e!562578 () Bool)

(declare-fun e!562580 () Bool)

(assert (=> b!997306 (= e!562578 e!562580)))

(declare-fun lt!441402 () (_ BitVec 64))

(assert (=> b!997306 (= lt!441402 (select (arr!30358 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32924 0))(
  ( (Unit!32925) )
))
(declare-fun lt!441401 () Unit!32924)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63061 (_ BitVec 64) (_ BitVec 32)) Unit!32924)

(assert (=> b!997306 (= lt!441401 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441402 #b00000000000000000000000000000000))))

(assert (=> b!997306 (arrayContainsKey!0 a!3219 lt!441402 #b00000000000000000000000000000000)))

(declare-fun lt!441400 () Unit!32924)

(assert (=> b!997306 (= lt!441400 lt!441401)))

(declare-fun res!667420 () Bool)

(assert (=> b!997306 (= res!667420 (= (seekEntryOrOpen!0 (select (arr!30358 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9290 #b00000000000000000000000000000000)))))

(assert (=> b!997306 (=> (not res!667420) (not e!562580))))

(declare-fun b!997307 () Bool)

(assert (=> b!997307 (= e!562578 call!42259)))

(declare-fun b!997308 () Bool)

(declare-fun e!562579 () Bool)

(assert (=> b!997308 (= e!562579 e!562578)))

(declare-fun c!101088 () Bool)

(assert (=> b!997308 (= c!101088 (validKeyInArray!0 (select (arr!30358 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997309 () Bool)

(assert (=> b!997309 (= e!562580 call!42259)))

(declare-fun d!119027 () Bool)

(declare-fun res!667419 () Bool)

(assert (=> d!119027 (=> res!667419 e!562579)))

(assert (=> d!119027 (= res!667419 (bvsge #b00000000000000000000000000000000 (size!30861 a!3219)))))

(assert (=> d!119027 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!562579)))

(assert (= (and d!119027 (not res!667419)) b!997308))

(assert (= (and b!997308 c!101088) b!997306))

(assert (= (and b!997308 (not c!101088)) b!997307))

(assert (= (and b!997306 res!667420) b!997309))

(assert (= (or b!997309 b!997307) bm!42256))

(declare-fun m!924253 () Bool)

(assert (=> bm!42256 m!924253))

(assert (=> b!997306 m!924225))

(declare-fun m!924255 () Bool)

(assert (=> b!997306 m!924255))

(declare-fun m!924257 () Bool)

(assert (=> b!997306 m!924257))

(assert (=> b!997306 m!924225))

(declare-fun m!924259 () Bool)

(assert (=> b!997306 m!924259))

(assert (=> b!997308 m!924225))

(assert (=> b!997308 m!924225))

(assert (=> b!997308 m!924239))

(assert (=> b!996978 d!119027))

(declare-fun d!119033 () Bool)

(assert (=> d!119033 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86104 d!119033))

(declare-fun d!119035 () Bool)

(assert (=> d!119035 (= (array_inv!23348 a!3219) (bvsge (size!30861 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86104 d!119035))

(push 1)

