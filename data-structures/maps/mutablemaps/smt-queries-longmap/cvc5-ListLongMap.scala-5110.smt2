; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69286 () Bool)

(assert start!69286)

(declare-fun res!552359 () Bool)

(declare-fun e!447349 () Bool)

(assert (=> start!69286 (=> (not res!552359) (not e!447349))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69286 (= res!552359 (validMask!0 mask!3266))))

(assert (=> start!69286 e!447349))

(assert (=> start!69286 true))

(declare-datatypes ((array!43937 0))(
  ( (array!43938 (arr!21042 (Array (_ BitVec 32) (_ BitVec 64))) (size!21463 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43937)

(declare-fun array_inv!16816 (array!43937) Bool)

(assert (=> start!69286 (array_inv!16816 a!3170)))

(declare-fun b!808064 () Bool)

(declare-fun e!447345 () Bool)

(declare-fun e!447346 () Bool)

(assert (=> b!808064 (= e!447345 e!447346)))

(declare-fun res!552366 () Bool)

(assert (=> b!808064 (=> (not res!552366) (not e!447346))))

(declare-datatypes ((SeekEntryResult!8640 0))(
  ( (MissingZero!8640 (index!36927 (_ BitVec 32))) (Found!8640 (index!36928 (_ BitVec 32))) (Intermediate!8640 (undefined!9452 Bool) (index!36929 (_ BitVec 32)) (x!67757 (_ BitVec 32))) (Undefined!8640) (MissingVacant!8640 (index!36930 (_ BitVec 32))) )
))
(declare-fun lt!362109 () SeekEntryResult!8640)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362108 () SeekEntryResult!8640)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!808064 (= res!552366 (and (= lt!362109 lt!362108) (= lt!362108 (Found!8640 j!153)) (not (= (select (arr!21042 a!3170) index!1236) (select (arr!21042 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43937 (_ BitVec 32)) SeekEntryResult!8640)

(assert (=> b!808064 (= lt!362108 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21042 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43937 (_ BitVec 32)) SeekEntryResult!8640)

(assert (=> b!808064 (= lt!362109 (seekEntryOrOpen!0 (select (arr!21042 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808065 () Bool)

(declare-fun res!552367 () Bool)

(declare-fun e!447348 () Bool)

(assert (=> b!808065 (=> (not res!552367) (not e!447348))))

(declare-datatypes ((List!15058 0))(
  ( (Nil!15055) (Cons!15054 (h!16183 (_ BitVec 64)) (t!21381 List!15058)) )
))
(declare-fun arrayNoDuplicates!0 (array!43937 (_ BitVec 32) List!15058) Bool)

(assert (=> b!808065 (= res!552367 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15055))))

(declare-fun b!808066 () Bool)

(assert (=> b!808066 (= e!447348 e!447345)))

(declare-fun res!552362 () Bool)

(assert (=> b!808066 (=> (not res!552362) (not e!447345))))

(declare-fun lt!362105 () (_ BitVec 64))

(declare-fun lt!362110 () array!43937)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!808066 (= res!552362 (= (seekEntryOrOpen!0 lt!362105 lt!362110 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362105 lt!362110 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!808066 (= lt!362105 (select (store (arr!21042 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808066 (= lt!362110 (array!43938 (store (arr!21042 a!3170) i!1163 k!2044) (size!21463 a!3170)))))

(declare-fun b!808067 () Bool)

(assert (=> b!808067 (= e!447346 (bvsgt (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(declare-fun lt!362106 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808067 (= lt!362106 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808068 () Bool)

(declare-fun res!552363 () Bool)

(assert (=> b!808068 (=> (not res!552363) (not e!447349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808068 (= res!552363 (validKeyInArray!0 (select (arr!21042 a!3170) j!153)))))

(declare-fun b!808069 () Bool)

(declare-fun res!552361 () Bool)

(assert (=> b!808069 (=> (not res!552361) (not e!447349))))

(assert (=> b!808069 (= res!552361 (and (= (size!21463 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21463 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21463 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808070 () Bool)

(declare-fun res!552357 () Bool)

(assert (=> b!808070 (=> (not res!552357) (not e!447348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43937 (_ BitVec 32)) Bool)

(assert (=> b!808070 (= res!552357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808071 () Bool)

(declare-fun res!552360 () Bool)

(assert (=> b!808071 (=> (not res!552360) (not e!447349))))

(declare-fun arrayContainsKey!0 (array!43937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808071 (= res!552360 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808072 () Bool)

(declare-fun res!552365 () Bool)

(assert (=> b!808072 (=> (not res!552365) (not e!447348))))

(assert (=> b!808072 (= res!552365 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21463 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21042 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21463 a!3170)) (= (select (arr!21042 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808073 () Bool)

(assert (=> b!808073 (= e!447349 e!447348)))

(declare-fun res!552358 () Bool)

(assert (=> b!808073 (=> (not res!552358) (not e!447348))))

(declare-fun lt!362107 () SeekEntryResult!8640)

(assert (=> b!808073 (= res!552358 (or (= lt!362107 (MissingZero!8640 i!1163)) (= lt!362107 (MissingVacant!8640 i!1163))))))

(assert (=> b!808073 (= lt!362107 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808074 () Bool)

(declare-fun res!552364 () Bool)

(assert (=> b!808074 (=> (not res!552364) (not e!447349))))

(assert (=> b!808074 (= res!552364 (validKeyInArray!0 k!2044))))

(assert (= (and start!69286 res!552359) b!808069))

(assert (= (and b!808069 res!552361) b!808068))

(assert (= (and b!808068 res!552363) b!808074))

(assert (= (and b!808074 res!552364) b!808071))

(assert (= (and b!808071 res!552360) b!808073))

(assert (= (and b!808073 res!552358) b!808070))

(assert (= (and b!808070 res!552357) b!808065))

(assert (= (and b!808065 res!552367) b!808072))

(assert (= (and b!808072 res!552365) b!808066))

(assert (= (and b!808066 res!552362) b!808064))

(assert (= (and b!808064 res!552366) b!808067))

(declare-fun m!750313 () Bool)

(assert (=> b!808070 m!750313))

(declare-fun m!750315 () Bool)

(assert (=> b!808068 m!750315))

(assert (=> b!808068 m!750315))

(declare-fun m!750317 () Bool)

(assert (=> b!808068 m!750317))

(declare-fun m!750319 () Bool)

(assert (=> b!808072 m!750319))

(declare-fun m!750321 () Bool)

(assert (=> b!808072 m!750321))

(declare-fun m!750323 () Bool)

(assert (=> b!808067 m!750323))

(declare-fun m!750325 () Bool)

(assert (=> b!808065 m!750325))

(declare-fun m!750327 () Bool)

(assert (=> b!808066 m!750327))

(declare-fun m!750329 () Bool)

(assert (=> b!808066 m!750329))

(declare-fun m!750331 () Bool)

(assert (=> b!808066 m!750331))

(declare-fun m!750333 () Bool)

(assert (=> b!808066 m!750333))

(declare-fun m!750335 () Bool)

(assert (=> b!808073 m!750335))

(declare-fun m!750337 () Bool)

(assert (=> start!69286 m!750337))

(declare-fun m!750339 () Bool)

(assert (=> start!69286 m!750339))

(declare-fun m!750341 () Bool)

(assert (=> b!808074 m!750341))

(declare-fun m!750343 () Bool)

(assert (=> b!808071 m!750343))

(declare-fun m!750345 () Bool)

(assert (=> b!808064 m!750345))

(assert (=> b!808064 m!750315))

(assert (=> b!808064 m!750315))

(declare-fun m!750347 () Bool)

(assert (=> b!808064 m!750347))

(assert (=> b!808064 m!750315))

(declare-fun m!750349 () Bool)

(assert (=> b!808064 m!750349))

(push 1)

(assert (not b!808066))

(assert (not b!808073))

(assert (not start!69286))

(assert (not b!808065))

(assert (not b!808070))

(assert (not b!808071))

(assert (not b!808068))

(assert (not b!808064))

(assert (not b!808074))

(assert (not b!808067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103661 () Bool)

(assert (=> d!103661 (= (validKeyInArray!0 (select (arr!21042 a!3170) j!153)) (and (not (= (select (arr!21042 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21042 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808068 d!103661))

(declare-fun d!103663 () Bool)

(assert (=> d!103663 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808074 d!103663))

(declare-fun b!808183 () Bool)

(declare-fun e!447401 () SeekEntryResult!8640)

(assert (=> b!808183 (= e!447401 Undefined!8640)))

(declare-fun b!808184 () Bool)

(declare-fun e!447403 () SeekEntryResult!8640)

(assert (=> b!808184 (= e!447403 (MissingVacant!8640 vacantBefore!23))))

(declare-fun b!808185 () Bool)

(declare-fun c!88287 () Bool)

(declare-fun lt!362165 () (_ BitVec 64))

(assert (=> b!808185 (= c!88287 (= lt!362165 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447402 () SeekEntryResult!8640)

(assert (=> b!808185 (= e!447402 e!447403)))

(declare-fun b!808186 () Bool)

(assert (=> b!808186 (= e!447401 e!447402)))

(declare-fun c!88286 () Bool)

(assert (=> b!808186 (= c!88286 (= lt!362165 (select (arr!21042 a!3170) j!153)))))

(declare-fun d!103665 () Bool)

(declare-fun lt!362164 () SeekEntryResult!8640)

(assert (=> d!103665 (and (or (is-Undefined!8640 lt!362164) (not (is-Found!8640 lt!362164)) (and (bvsge (index!36928 lt!362164) #b00000000000000000000000000000000) (bvslt (index!36928 lt!362164) (size!21463 a!3170)))) (or (is-Undefined!8640 lt!362164) (is-Found!8640 lt!362164) (not (is-MissingVacant!8640 lt!362164)) (not (= (index!36930 lt!362164) vacantBefore!23)) (and (bvsge (index!36930 lt!362164) #b00000000000000000000000000000000) (bvslt (index!36930 lt!362164) (size!21463 a!3170)))) (or (is-Undefined!8640 lt!362164) (ite (is-Found!8640 lt!362164) (= (select (arr!21042 a!3170) (index!36928 lt!362164)) (select (arr!21042 a!3170) j!153)) (and (is-MissingVacant!8640 lt!362164) (= (index!36930 lt!362164) vacantBefore!23) (= (select (arr!21042 a!3170) (index!36930 lt!362164)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103665 (= lt!362164 e!447401)))

(declare-fun c!88285 () Bool)

(assert (=> d!103665 (= c!88285 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103665 (= lt!362165 (select (arr!21042 a!3170) index!1236))))

(assert (=> d!103665 (validMask!0 mask!3266)))

(assert (=> d!103665 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21042 a!3170) j!153) a!3170 mask!3266) lt!362164)))

(declare-fun b!808187 () Bool)

(assert (=> b!808187 (= e!447402 (Found!8640 index!1236))))

(declare-fun b!808188 () Bool)

(assert (=> b!808188 (= e!447403 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21042 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!103665 c!88285) b!808183))

(assert (= (and d!103665 (not c!88285)) b!808186))

(assert (= (and b!808186 c!88286) b!808187))

(assert (= (and b!808186 (not c!88286)) b!808185))

(assert (= (and b!808185 c!88287) b!808184))

(assert (= (and b!808185 (not c!88287)) b!808188))

(declare-fun m!750441 () Bool)

(assert (=> d!103665 m!750441))

(declare-fun m!750443 () Bool)

(assert (=> d!103665 m!750443))

(assert (=> d!103665 m!750345))

(assert (=> d!103665 m!750337))

(assert (=> b!808188 m!750323))

(assert (=> b!808188 m!750323))

(assert (=> b!808188 m!750315))

(declare-fun m!750445 () Bool)

(assert (=> b!808188 m!750445))

(assert (=> b!808064 d!103665))

(declare-fun b!808261 () Bool)

(declare-fun e!447447 () SeekEntryResult!8640)

(assert (=> b!808261 (= e!447447 Undefined!8640)))

(declare-fun b!808262 () Bool)

(declare-fun c!88320 () Bool)

(declare-fun lt!362202 () (_ BitVec 64))

(assert (=> b!808262 (= c!88320 (= lt!362202 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447446 () SeekEntryResult!8640)

(declare-fun e!447448 () SeekEntryResult!8640)

(assert (=> b!808262 (= e!447446 e!447448)))

(declare-fun b!808263 () Bool)

(declare-fun lt!362200 () SeekEntryResult!8640)

(assert (=> b!808263 (= e!447448 (seekKeyOrZeroReturnVacant!0 (x!67757 lt!362200) (index!36929 lt!362200) (index!36929 lt!362200) (select (arr!21042 a!3170) j!153) a!3170 mask!3266))))

(declare-fun d!103671 () Bool)

(declare-fun lt!362201 () SeekEntryResult!8640)

(assert (=> d!103671 (and (or (is-Undefined!8640 lt!362201) (not (is-Found!8640 lt!362201)) (and (bvsge (index!36928 lt!362201) #b00000000000000000000000000000000) (bvslt (index!36928 lt!362201) (size!21463 a!3170)))) (or (is-Undefined!8640 lt!362201) (is-Found!8640 lt!362201) (not (is-MissingZero!8640 lt!362201)) (and (bvsge (index!36927 lt!362201) #b00000000000000000000000000000000) (bvslt (index!36927 lt!362201) (size!21463 a!3170)))) (or (is-Undefined!8640 lt!362201) (is-Found!8640 lt!362201) (is-MissingZero!8640 lt!362201) (not (is-MissingVacant!8640 lt!362201)) (and (bvsge (index!36930 lt!362201) #b00000000000000000000000000000000) (bvslt (index!36930 lt!362201) (size!21463 a!3170)))) (or (is-Undefined!8640 lt!362201) (ite (is-Found!8640 lt!362201) (= (select (arr!21042 a!3170) (index!36928 lt!362201)) (select (arr!21042 a!3170) j!153)) (ite (is-MissingZero!8640 lt!362201) (= (select (arr!21042 a!3170) (index!36927 lt!362201)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8640 lt!362201) (= (select (arr!21042 a!3170) (index!36930 lt!362201)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103671 (= lt!362201 e!447447)))

(declare-fun c!88318 () Bool)

(assert (=> d!103671 (= c!88318 (and (is-Intermediate!8640 lt!362200) (undefined!9452 lt!362200)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43937 (_ BitVec 32)) SeekEntryResult!8640)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103671 (= lt!362200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21042 a!3170) j!153) mask!3266) (select (arr!21042 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103671 (validMask!0 mask!3266)))

(assert (=> d!103671 (= (seekEntryOrOpen!0 (select (arr!21042 a!3170) j!153) a!3170 mask!3266) lt!362201)))

(declare-fun b!808264 () Bool)

(assert (=> b!808264 (= e!447448 (MissingZero!8640 (index!36929 lt!362200)))))

(declare-fun b!808265 () Bool)

(assert (=> b!808265 (= e!447446 (Found!8640 (index!36929 lt!362200)))))

(declare-fun b!808266 () Bool)

(assert (=> b!808266 (= e!447447 e!447446)))

(assert (=> b!808266 (= lt!362202 (select (arr!21042 a!3170) (index!36929 lt!362200)))))

(declare-fun c!88319 () Bool)

(assert (=> b!808266 (= c!88319 (= lt!362202 (select (arr!21042 a!3170) j!153)))))

(assert (= (and d!103671 c!88318) b!808261))

(assert (= (and d!103671 (not c!88318)) b!808266))

(assert (= (and b!808266 c!88319) b!808265))

(assert (= (and b!808266 (not c!88319)) b!808262))

(assert (= (and b!808262 c!88320) b!808264))

(assert (= (and b!808262 (not c!88320)) b!808263))

(assert (=> b!808263 m!750315))

(declare-fun m!750511 () Bool)

(assert (=> b!808263 m!750511))

(declare-fun m!750513 () Bool)

(assert (=> d!103671 m!750513))

(declare-fun m!750515 () Bool)

(assert (=> d!103671 m!750515))

(assert (=> d!103671 m!750315))

(declare-fun m!750517 () Bool)

(assert (=> d!103671 m!750517))

(assert (=> d!103671 m!750315))

(assert (=> d!103671 m!750515))

(declare-fun m!750519 () Bool)

(assert (=> d!103671 m!750519))

(assert (=> d!103671 m!750337))

(declare-fun m!750521 () Bool)

(assert (=> d!103671 m!750521))

(declare-fun m!750523 () Bool)

(assert (=> b!808266 m!750523))

(assert (=> b!808064 d!103671))

(declare-fun bm!35385 () Bool)

(declare-fun call!35388 () Bool)

(assert (=> bm!35385 (= call!35388 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!808275 () Bool)

(declare-fun e!447457 () Bool)

(assert (=> b!808275 (= e!447457 call!35388)))

(declare-fun b!808276 () Bool)

(declare-fun e!447455 () Bool)

(declare-fun e!447456 () Bool)

(assert (=> b!808276 (= e!447455 e!447456)))

(declare-fun c!88323 () Bool)

(assert (=> b!808276 (= c!88323 (validKeyInArray!0 (select (arr!21042 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103693 () Bool)

(declare-fun res!552451 () Bool)

(assert (=> d!103693 (=> res!552451 e!447455)))

(assert (=> d!103693 (= res!552451 (bvsge #b00000000000000000000000000000000 (size!21463 a!3170)))))

(assert (=> d!103693 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!447455)))

(declare-fun b!808277 () Bool)

(assert (=> b!808277 (= e!447456 call!35388)))

(declare-fun b!808278 () Bool)

(assert (=> b!808278 (= e!447456 e!447457)))

(declare-fun lt!362209 () (_ BitVec 64))

(assert (=> b!808278 (= lt!362209 (select (arr!21042 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27594 0))(
  ( (Unit!27595) )
))
(declare-fun lt!362211 () Unit!27594)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43937 (_ BitVec 64) (_ BitVec 32)) Unit!27594)

(assert (=> b!808278 (= lt!362211 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362209 #b00000000000000000000000000000000))))

(assert (=> b!808278 (arrayContainsKey!0 a!3170 lt!362209 #b00000000000000000000000000000000)))

(declare-fun lt!362210 () Unit!27594)

(assert (=> b!808278 (= lt!362210 lt!362211)))

(declare-fun res!552450 () Bool)

(assert (=> b!808278 (= res!552450 (= (seekEntryOrOpen!0 (select (arr!21042 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8640 #b00000000000000000000000000000000)))))

(assert (=> b!808278 (=> (not res!552450) (not e!447457))))

(assert (= (and d!103693 (not res!552451)) b!808276))

(assert (= (and b!808276 c!88323) b!808278))

(assert (= (and b!808276 (not c!88323)) b!808277))

(assert (= (and b!808278 res!552450) b!808275))

(assert (= (or b!808275 b!808277) bm!35385))

(declare-fun m!750525 () Bool)

(assert (=> bm!35385 m!750525))

(declare-fun m!750527 () Bool)

(assert (=> b!808276 m!750527))

(assert (=> b!808276 m!750527))

(declare-fun m!750529 () Bool)

(assert (=> b!808276 m!750529))

(assert (=> b!808278 m!750527))

(declare-fun m!750531 () Bool)

(assert (=> b!808278 m!750531))

(declare-fun m!750533 () Bool)

(assert (=> b!808278 m!750533))

(assert (=> b!808278 m!750527))

(declare-fun m!750535 () Bool)

(assert (=> b!808278 m!750535))

(assert (=> b!808070 d!103693))

(declare-fun b!808304 () Bool)

(declare-fun e!447481 () Bool)

(declare-fun call!35394 () Bool)

(assert (=> b!808304 (= e!447481 call!35394)))

(declare-fun b!808305 () Bool)

(declare-fun e!447480 () Bool)

(declare-fun contains!4127 (List!15058 (_ BitVec 64)) Bool)

(assert (=> b!808305 (= e!447480 (contains!4127 Nil!15055 (select (arr!21042 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!808307 () Bool)

(declare-fun e!447478 () Bool)

(assert (=> b!808307 (= e!447478 e!447481)))

(declare-fun c!88329 () Bool)

(assert (=> b!808307 (= c!88329 (validKeyInArray!0 (select (arr!21042 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35391 () Bool)

(assert (=> bm!35391 (= call!35394 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88329 (Cons!15054 (select (arr!21042 a!3170) #b00000000000000000000000000000000) Nil!15055) Nil!15055)))))

(declare-fun b!808308 () Bool)

(assert (=> b!808308 (= e!447481 call!35394)))

(declare-fun b!808306 () Bool)

(declare-fun e!447479 () Bool)

(assert (=> b!808306 (= e!447479 e!447478)))

(declare-fun res!552467 () Bool)

(assert (=> b!808306 (=> (not res!552467) (not e!447478))))

(assert (=> b!808306 (= res!552467 (not e!447480))))

(declare-fun res!552468 () Bool)

(assert (=> b!808306 (=> (not res!552468) (not e!447480))))

(assert (=> b!808306 (= res!552468 (validKeyInArray!0 (select (arr!21042 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103699 () Bool)

(declare-fun res!552469 () Bool)

(assert (=> d!103699 (=> res!552469 e!447479)))

(assert (=> d!103699 (= res!552469 (bvsge #b00000000000000000000000000000000 (size!21463 a!3170)))))

(assert (=> d!103699 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15055) e!447479)))

(assert (= (and d!103699 (not res!552469)) b!808306))

(assert (= (and b!808306 res!552468) b!808305))

(assert (= (and b!808306 res!552467) b!808307))

(assert (= (and b!808307 c!88329) b!808304))

(assert (= (and b!808307 (not c!88329)) b!808308))

(assert (= (or b!808304 b!808308) bm!35391))

(assert (=> b!808305 m!750527))

(assert (=> b!808305 m!750527))

(declare-fun m!750541 () Bool)

(assert (=> b!808305 m!750541))

(assert (=> b!808307 m!750527))

(assert (=> b!808307 m!750527))

(assert (=> b!808307 m!750529))

(assert (=> bm!35391 m!750527))

(declare-fun m!750543 () Bool)

(assert (=> bm!35391 m!750543))

(assert (=> b!808306 m!750527))

(assert (=> b!808306 m!750527))

(assert (=> b!808306 m!750529))

(assert (=> b!808065 d!103699))

(declare-fun d!103701 () Bool)

(declare-fun res!552474 () Bool)

(declare-fun e!447492 () Bool)

(assert (=> d!103701 (=> res!552474 e!447492)))

(assert (=> d!103701 (= res!552474 (= (select (arr!21042 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103701 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!447492)))

(declare-fun b!808325 () Bool)

(declare-fun e!447493 () Bool)

(assert (=> b!808325 (= e!447492 e!447493)))

(declare-fun res!552475 () Bool)

(assert (=> b!808325 (=> (not res!552475) (not e!447493))))

(assert (=> b!808325 (= res!552475 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21463 a!3170)))))

(declare-fun b!808326 () Bool)

(assert (=> b!808326 (= e!447493 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103701 (not res!552474)) b!808325))

(assert (= (and b!808325 res!552475) b!808326))

(assert (=> d!103701 m!750527))

(declare-fun m!750545 () Bool)

(assert (=> b!808326 m!750545))

(assert (=> b!808071 d!103701))

(declare-fun d!103703 () Bool)

(assert (=> d!103703 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69286 d!103703))

(declare-fun d!103717 () Bool)

(assert (=> d!103717 (= (array_inv!16816 a!3170) (bvsge (size!21463 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69286 d!103717))

(declare-fun b!808351 () Bool)

(declare-fun e!447509 () SeekEntryResult!8640)

(assert (=> b!808351 (= e!447509 Undefined!8640)))

(declare-fun b!808352 () Bool)

(declare-fun c!88350 () Bool)

(declare-fun lt!362234 () (_ BitVec 64))

(assert (=> b!808352 (= c!88350 (= lt!362234 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447508 () SeekEntryResult!8640)

(declare-fun e!447510 () SeekEntryResult!8640)

(assert (=> b!808352 (= e!447508 e!447510)))

(declare-fun b!808353 () Bool)

(declare-fun lt!362232 () SeekEntryResult!8640)

(assert (=> b!808353 (= e!447510 (seekKeyOrZeroReturnVacant!0 (x!67757 lt!362232) (index!36929 lt!362232) (index!36929 lt!362232) lt!362105 lt!362110 mask!3266))))

(declare-fun d!103719 () Bool)

(declare-fun lt!362233 () SeekEntryResult!8640)

(assert (=> d!103719 (and (or (is-Undefined!8640 lt!362233) (not (is-Found!8640 lt!362233)) (and (bvsge (index!36928 lt!362233) #b00000000000000000000000000000000) (bvslt (index!36928 lt!362233) (size!21463 lt!362110)))) (or (is-Undefined!8640 lt!362233) (is-Found!8640 lt!362233) (not (is-MissingZero!8640 lt!362233)) (and (bvsge (index!36927 lt!362233) #b00000000000000000000000000000000) (bvslt (index!36927 lt!362233) (size!21463 lt!362110)))) (or (is-Undefined!8640 lt!362233) (is-Found!8640 lt!362233) (is-MissingZero!8640 lt!362233) (not (is-MissingVacant!8640 lt!362233)) (and (bvsge (index!36930 lt!362233) #b00000000000000000000000000000000) (bvslt (index!36930 lt!362233) (size!21463 lt!362110)))) (or (is-Undefined!8640 lt!362233) (ite (is-Found!8640 lt!362233) (= (select (arr!21042 lt!362110) (index!36928 lt!362233)) lt!362105) (ite (is-MissingZero!8640 lt!362233) (= (select (arr!21042 lt!362110) (index!36927 lt!362233)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8640 lt!362233) (= (select (arr!21042 lt!362110) (index!36930 lt!362233)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103719 (= lt!362233 e!447509)))

(declare-fun c!88348 () Bool)

(assert (=> d!103719 (= c!88348 (and (is-Intermediate!8640 lt!362232) (undefined!9452 lt!362232)))))

(assert (=> d!103719 (= lt!362232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362105 mask!3266) lt!362105 lt!362110 mask!3266))))

(assert (=> d!103719 (validMask!0 mask!3266)))

(assert (=> d!103719 (= (seekEntryOrOpen!0 lt!362105 lt!362110 mask!3266) lt!362233)))

(declare-fun b!808354 () Bool)

(assert (=> b!808354 (= e!447510 (MissingZero!8640 (index!36929 lt!362232)))))

(declare-fun b!808357 () Bool)

(assert (=> b!808357 (= e!447508 (Found!8640 (index!36929 lt!362232)))))

(declare-fun b!808358 () Bool)

(assert (=> b!808358 (= e!447509 e!447508)))

(assert (=> b!808358 (= lt!362234 (select (arr!21042 lt!362110) (index!36929 lt!362232)))))

(declare-fun c!88349 () Bool)

(assert (=> b!808358 (= c!88349 (= lt!362234 lt!362105))))

(assert (= (and d!103719 c!88348) b!808351))

(assert (= (and d!103719 (not c!88348)) b!808358))

(assert (= (and b!808358 c!88349) b!808357))

(assert (= (and b!808358 (not c!88349)) b!808352))

(assert (= (and b!808352 c!88350) b!808354))

(assert (= (and b!808352 (not c!88350)) b!808353))

(declare-fun m!750599 () Bool)

(assert (=> b!808353 m!750599))

(declare-fun m!750601 () Bool)

(assert (=> d!103719 m!750601))

(declare-fun m!750603 () Bool)

(assert (=> d!103719 m!750603))

(declare-fun m!750605 () Bool)

(assert (=> d!103719 m!750605))

(assert (=> d!103719 m!750603))

(declare-fun m!750607 () Bool)

(assert (=> d!103719 m!750607))

(assert (=> d!103719 m!750337))

(declare-fun m!750609 () Bool)

(assert (=> d!103719 m!750609))

(declare-fun m!750611 () Bool)

(assert (=> b!808358 m!750611))

(assert (=> b!808066 d!103719))

(declare-fun b!808361 () Bool)

(declare-fun e!447513 () SeekEntryResult!8640)

(assert (=> b!808361 (= e!447513 Undefined!8640)))

(declare-fun b!808362 () Bool)

(declare-fun e!447515 () SeekEntryResult!8640)

(assert (=> b!808362 (= e!447515 (MissingVacant!8640 vacantAfter!23))))

(declare-fun b!808363 () Bool)

(declare-fun c!88353 () Bool)

(declare-fun lt!362236 () (_ BitVec 64))

(assert (=> b!808363 (= c!88353 (= lt!362236 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447514 () SeekEntryResult!8640)

(assert (=> b!808363 (= e!447514 e!447515)))

(declare-fun b!808364 () Bool)

(assert (=> b!808364 (= e!447513 e!447514)))

(declare-fun c!88352 () Bool)

(assert (=> b!808364 (= c!88352 (= lt!362236 lt!362105))))

(declare-fun d!103721 () Bool)

(declare-fun lt!362235 () SeekEntryResult!8640)

(assert (=> d!103721 (and (or (is-Undefined!8640 lt!362235) (not (is-Found!8640 lt!362235)) (and (bvsge (index!36928 lt!362235) #b00000000000000000000000000000000) (bvslt (index!36928 lt!362235) (size!21463 lt!362110)))) (or (is-Undefined!8640 lt!362235) (is-Found!8640 lt!362235) (not (is-MissingVacant!8640 lt!362235)) (not (= (index!36930 lt!362235) vacantAfter!23)) (and (bvsge (index!36930 lt!362235) #b00000000000000000000000000000000) (bvslt (index!36930 lt!362235) (size!21463 lt!362110)))) (or (is-Undefined!8640 lt!362235) (ite (is-Found!8640 lt!362235) (= (select (arr!21042 lt!362110) (index!36928 lt!362235)) lt!362105) (and (is-MissingVacant!8640 lt!362235) (= (index!36930 lt!362235) vacantAfter!23) (= (select (arr!21042 lt!362110) (index!36930 lt!362235)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103721 (= lt!362235 e!447513)))

(declare-fun c!88351 () Bool)

(assert (=> d!103721 (= c!88351 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103721 (= lt!362236 (select (arr!21042 lt!362110) index!1236))))

(assert (=> d!103721 (validMask!0 mask!3266)))

(assert (=> d!103721 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362105 lt!362110 mask!3266) lt!362235)))

(declare-fun b!808365 () Bool)

(assert (=> b!808365 (= e!447514 (Found!8640 index!1236))))

(declare-fun b!808366 () Bool)

(assert (=> b!808366 (= e!447515 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362105 lt!362110 mask!3266))))

(assert (= (and d!103721 c!88351) b!808361))

(assert (= (and d!103721 (not c!88351)) b!808364))

(assert (= (and b!808364 c!88352) b!808365))

(assert (= (and b!808364 (not c!88352)) b!808363))

(assert (= (and b!808363 c!88353) b!808362))

(assert (= (and b!808363 (not c!88353)) b!808366))

(declare-fun m!750617 () Bool)

(assert (=> d!103721 m!750617))

(declare-fun m!750619 () Bool)

(assert (=> d!103721 m!750619))

(declare-fun m!750621 () Bool)

(assert (=> d!103721 m!750621))

(assert (=> d!103721 m!750337))

(assert (=> b!808366 m!750323))

(assert (=> b!808366 m!750323))

(declare-fun m!750623 () Bool)

(assert (=> b!808366 m!750623))

(assert (=> b!808066 d!103721))

(declare-fun d!103725 () Bool)

(declare-fun lt!362239 () (_ BitVec 32))

(assert (=> d!103725 (and (bvsge lt!362239 #b00000000000000000000000000000000) (bvslt lt!362239 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103725 (= lt!362239 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103725 (validMask!0 mask!3266)))

(assert (=> d!103725 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!362239)))

(declare-fun bs!22386 () Bool)

(assert (= bs!22386 d!103725))

(declare-fun m!750625 () Bool)

(assert (=> bs!22386 m!750625))

(assert (=> bs!22386 m!750337))

(assert (=> b!808067 d!103725))

(declare-fun b!808369 () Bool)

(declare-fun e!447519 () SeekEntryResult!8640)

(assert (=> b!808369 (= e!447519 Undefined!8640)))

(declare-fun b!808370 () Bool)

(declare-fun c!88356 () Bool)

(declare-fun lt!362242 () (_ BitVec 64))

(assert (=> b!808370 (= c!88356 (= lt!362242 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447518 () SeekEntryResult!8640)

(declare-fun e!447520 () SeekEntryResult!8640)

(assert (=> b!808370 (= e!447518 e!447520)))

(declare-fun b!808371 () Bool)

(declare-fun lt!362240 () SeekEntryResult!8640)

(assert (=> b!808371 (= e!447520 (seekKeyOrZeroReturnVacant!0 (x!67757 lt!362240) (index!36929 lt!362240) (index!36929 lt!362240) k!2044 a!3170 mask!3266))))

(declare-fun d!103727 () Bool)

(declare-fun lt!362241 () SeekEntryResult!8640)

(assert (=> d!103727 (and (or (is-Undefined!8640 lt!362241) (not (is-Found!8640 lt!362241)) (and (bvsge (index!36928 lt!362241) #b00000000000000000000000000000000) (bvslt (index!36928 lt!362241) (size!21463 a!3170)))) (or (is-Undefined!8640 lt!362241) (is-Found!8640 lt!362241) (not (is-MissingZero!8640 lt!362241)) (and (bvsge (index!36927 lt!362241) #b00000000000000000000000000000000) (bvslt (index!36927 lt!362241) (size!21463 a!3170)))) (or (is-Undefined!8640 lt!362241) (is-Found!8640 lt!362241) (is-MissingZero!8640 lt!362241) (not (is-MissingVacant!8640 lt!362241)) (and (bvsge (index!36930 lt!362241) #b00000000000000000000000000000000) (bvslt (index!36930 lt!362241) (size!21463 a!3170)))) (or (is-Undefined!8640 lt!362241) (ite (is-Found!8640 lt!362241) (= (select (arr!21042 a!3170) (index!36928 lt!362241)) k!2044) (ite (is-MissingZero!8640 lt!362241) (= (select (arr!21042 a!3170) (index!36927 lt!362241)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8640 lt!362241) (= (select (arr!21042 a!3170) (index!36930 lt!362241)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103727 (= lt!362241 e!447519)))

(declare-fun c!88354 () Bool)

(assert (=> d!103727 (= c!88354 (and (is-Intermediate!8640 lt!362240) (undefined!9452 lt!362240)))))

(assert (=> d!103727 (= lt!362240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103727 (validMask!0 mask!3266)))

(assert (=> d!103727 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!362241)))

(declare-fun b!808372 () Bool)

(assert (=> b!808372 (= e!447520 (MissingZero!8640 (index!36929 lt!362240)))))

(declare-fun b!808373 () Bool)

(assert (=> b!808373 (= e!447518 (Found!8640 (index!36929 lt!362240)))))

(declare-fun b!808374 () Bool)

(assert (=> b!808374 (= e!447519 e!447518)))

(assert (=> b!808374 (= lt!362242 (select (arr!21042 a!3170) (index!36929 lt!362240)))))

(declare-fun c!88355 () Bool)

(assert (=> b!808374 (= c!88355 (= lt!362242 k!2044))))

(assert (= (and d!103727 c!88354) b!808369))

(assert (= (and d!103727 (not c!88354)) b!808374))

(assert (= (and b!808374 c!88355) b!808373))

(assert (= (and b!808374 (not c!88355)) b!808370))

(assert (= (and b!808370 c!88356) b!808372))

(assert (= (and b!808370 (not c!88356)) b!808371))

(declare-fun m!750627 () Bool)

(assert (=> b!808371 m!750627))

(declare-fun m!750629 () Bool)

(assert (=> d!103727 m!750629))

(declare-fun m!750631 () Bool)

(assert (=> d!103727 m!750631))

(declare-fun m!750633 () Bool)

(assert (=> d!103727 m!750633))

(assert (=> d!103727 m!750631))

(declare-fun m!750635 () Bool)

(assert (=> d!103727 m!750635))

(assert (=> d!103727 m!750337))

(declare-fun m!750637 () Bool)

(assert (=> d!103727 m!750637))

(declare-fun m!750639 () Bool)

(assert (=> b!808374 m!750639))

(assert (=> b!808073 d!103727))

(push 1)

