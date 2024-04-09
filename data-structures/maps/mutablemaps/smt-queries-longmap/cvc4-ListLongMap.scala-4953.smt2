; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68204 () Bool)

(assert start!68204)

(declare-fun b!792348 () Bool)

(declare-fun res!537116 () Bool)

(declare-fun e!440279 () Bool)

(assert (=> b!792348 (=> (not res!537116) (not e!440279))))

(declare-datatypes ((array!42990 0))(
  ( (array!42991 (arr!20573 (Array (_ BitVec 32) (_ BitVec 64))) (size!20994 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42990)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42990 (_ BitVec 32)) Bool)

(assert (=> b!792348 (= res!537116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792349 () Bool)

(declare-fun res!537114 () Bool)

(declare-fun e!440278 () Bool)

(assert (=> b!792349 (=> (not res!537114) (not e!440278))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792349 (= res!537114 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792350 () Bool)

(declare-fun res!537117 () Bool)

(assert (=> b!792350 (=> (not res!537117) (not e!440278))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792350 (= res!537117 (and (= (size!20994 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20994 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20994 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792351 () Bool)

(assert (=> b!792351 (= e!440278 e!440279)))

(declare-fun res!537110 () Bool)

(assert (=> b!792351 (=> (not res!537110) (not e!440279))))

(declare-datatypes ((SeekEntryResult!8171 0))(
  ( (MissingZero!8171 (index!35051 (_ BitVec 32))) (Found!8171 (index!35052 (_ BitVec 32))) (Intermediate!8171 (undefined!8983 Bool) (index!35053 (_ BitVec 32)) (x!66026 (_ BitVec 32))) (Undefined!8171) (MissingVacant!8171 (index!35054 (_ BitVec 32))) )
))
(declare-fun lt!353437 () SeekEntryResult!8171)

(assert (=> b!792351 (= res!537110 (or (= lt!353437 (MissingZero!8171 i!1163)) (= lt!353437 (MissingVacant!8171 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42990 (_ BitVec 32)) SeekEntryResult!8171)

(assert (=> b!792351 (= lt!353437 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792352 () Bool)

(declare-fun res!537115 () Bool)

(assert (=> b!792352 (=> (not res!537115) (not e!440279))))

(assert (=> b!792352 (= res!537115 (and (bvsle #b00000000000000000000000000000000 (size!20994 a!3170)) (bvslt (size!20994 a!3170) #b01111111111111111111111111111111)))))

(declare-fun b!792353 () Bool)

(declare-fun res!537118 () Bool)

(assert (=> b!792353 (=> (not res!537118) (not e!440278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792353 (= res!537118 (validKeyInArray!0 (select (arr!20573 a!3170) j!153)))))

(declare-fun b!792354 () Bool)

(declare-fun e!440281 () Bool)

(declare-datatypes ((List!14589 0))(
  ( (Nil!14586) (Cons!14585 (h!15714 (_ BitVec 64)) (t!20912 List!14589)) )
))
(declare-fun contains!4121 (List!14589 (_ BitVec 64)) Bool)

(assert (=> b!792354 (= e!440281 (contains!4121 Nil!14586 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!792355 () Bool)

(declare-fun res!537109 () Bool)

(assert (=> b!792355 (=> (not res!537109) (not e!440278))))

(assert (=> b!792355 (= res!537109 (validKeyInArray!0 k!2044))))

(declare-fun b!792356 () Bool)

(assert (=> b!792356 (= e!440279 e!440281)))

(declare-fun res!537111 () Bool)

(assert (=> b!792356 (=> res!537111 e!440281)))

(assert (=> b!792356 (= res!537111 (contains!4121 Nil!14586 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!792357 () Bool)

(declare-fun res!537113 () Bool)

(assert (=> b!792357 (=> (not res!537113) (not e!440279))))

(declare-fun noDuplicate!1290 (List!14589) Bool)

(assert (=> b!792357 (= res!537113 (noDuplicate!1290 Nil!14586))))

(declare-fun res!537112 () Bool)

(assert (=> start!68204 (=> (not res!537112) (not e!440278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68204 (= res!537112 (validMask!0 mask!3266))))

(assert (=> start!68204 e!440278))

(assert (=> start!68204 true))

(declare-fun array_inv!16347 (array!42990) Bool)

(assert (=> start!68204 (array_inv!16347 a!3170)))

(assert (= (and start!68204 res!537112) b!792350))

(assert (= (and b!792350 res!537117) b!792353))

(assert (= (and b!792353 res!537118) b!792355))

(assert (= (and b!792355 res!537109) b!792349))

(assert (= (and b!792349 res!537114) b!792351))

(assert (= (and b!792351 res!537110) b!792348))

(assert (= (and b!792348 res!537116) b!792352))

(assert (= (and b!792352 res!537115) b!792357))

(assert (= (and b!792357 res!537113) b!792356))

(assert (= (and b!792356 (not res!537111)) b!792354))

(declare-fun m!732999 () Bool)

(assert (=> start!68204 m!732999))

(declare-fun m!733001 () Bool)

(assert (=> start!68204 m!733001))

(declare-fun m!733003 () Bool)

(assert (=> b!792355 m!733003))

(declare-fun m!733005 () Bool)

(assert (=> b!792351 m!733005))

(declare-fun m!733007 () Bool)

(assert (=> b!792356 m!733007))

(declare-fun m!733009 () Bool)

(assert (=> b!792354 m!733009))

(declare-fun m!733011 () Bool)

(assert (=> b!792353 m!733011))

(assert (=> b!792353 m!733011))

(declare-fun m!733013 () Bool)

(assert (=> b!792353 m!733013))

(declare-fun m!733015 () Bool)

(assert (=> b!792349 m!733015))

(declare-fun m!733017 () Bool)

(assert (=> b!792357 m!733017))

(declare-fun m!733019 () Bool)

(assert (=> b!792348 m!733019))

(push 1)

(assert (not b!792348))

(assert (not b!792353))

(assert (not b!792349))

(assert (not b!792355))

(assert (not start!68204))

(assert (not b!792354))

(assert (not b!792351))

(assert (not b!792356))

(assert (not b!792357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103145 () Bool)

(assert (=> d!103145 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!68204 d!103145))

(declare-fun d!103163 () Bool)

(assert (=> d!103163 (= (array_inv!16347 a!3170) (bvsge (size!20994 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!68204 d!103163))

(declare-fun d!103165 () Bool)

(declare-fun res!537159 () Bool)

(declare-fun e!440324 () Bool)

(assert (=> d!103165 (=> res!537159 e!440324)))

(assert (=> d!103165 (= res!537159 (is-Nil!14586 Nil!14586))))

(assert (=> d!103165 (= (noDuplicate!1290 Nil!14586) e!440324)))

(declare-fun b!792402 () Bool)

(declare-fun e!440325 () Bool)

(assert (=> b!792402 (= e!440324 e!440325)))

(declare-fun res!537160 () Bool)

(assert (=> b!792402 (=> (not res!537160) (not e!440325))))

(assert (=> b!792402 (= res!537160 (not (contains!4121 (t!20912 Nil!14586) (h!15714 Nil!14586))))))

(declare-fun b!792403 () Bool)

(assert (=> b!792403 (= e!440325 (noDuplicate!1290 (t!20912 Nil!14586)))))

(assert (= (and d!103165 (not res!537159)) b!792402))

(assert (= (and b!792402 res!537160) b!792403))

(declare-fun m!733049 () Bool)

(assert (=> b!792402 m!733049))

(declare-fun m!733051 () Bool)

(assert (=> b!792403 m!733051))

(assert (=> b!792357 d!103165))

(declare-fun d!103167 () Bool)

(declare-fun lt!353456 () Bool)

(declare-fun content!386 (List!14589) (Set (_ BitVec 64)))

(assert (=> d!103167 (= lt!353456 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!386 Nil!14586)))))

(declare-fun e!440333 () Bool)

(assert (=> d!103167 (= lt!353456 e!440333)))

(declare-fun res!537168 () Bool)

(assert (=> d!103167 (=> (not res!537168) (not e!440333))))

(assert (=> d!103167 (= res!537168 (is-Cons!14585 Nil!14586))))

(assert (=> d!103167 (= (contains!4121 Nil!14586 #b0000000000000000000000000000000000000000000000000000000000000000) lt!353456)))

(declare-fun b!792412 () Bool)

(declare-fun e!440334 () Bool)

(assert (=> b!792412 (= e!440333 e!440334)))

(declare-fun res!537167 () Bool)

(assert (=> b!792412 (=> res!537167 e!440334)))

(assert (=> b!792412 (= res!537167 (= (h!15714 Nil!14586) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!792413 () Bool)

(assert (=> b!792413 (= e!440334 (contains!4121 (t!20912 Nil!14586) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!103167 res!537168) b!792412))

(assert (= (and b!792412 (not res!537167)) b!792413))

(declare-fun m!733063 () Bool)

(assert (=> d!103167 m!733063))

(declare-fun m!733065 () Bool)

(assert (=> d!103167 m!733065))

(declare-fun m!733067 () Bool)

(assert (=> b!792413 m!733067))

(assert (=> b!792356 d!103167))

(declare-fun b!792446 () Bool)

(declare-fun e!440360 () SeekEntryResult!8171)

(assert (=> b!792446 (= e!440360 Undefined!8171)))

(declare-fun d!103171 () Bool)

(declare-fun lt!353475 () SeekEntryResult!8171)

(assert (=> d!103171 (and (or (is-Undefined!8171 lt!353475) (not (is-Found!8171 lt!353475)) (and (bvsge (index!35052 lt!353475) #b00000000000000000000000000000000) (bvslt (index!35052 lt!353475) (size!20994 a!3170)))) (or (is-Undefined!8171 lt!353475) (is-Found!8171 lt!353475) (not (is-MissingZero!8171 lt!353475)) (and (bvsge (index!35051 lt!353475) #b00000000000000000000000000000000) (bvslt (index!35051 lt!353475) (size!20994 a!3170)))) (or (is-Undefined!8171 lt!353475) (is-Found!8171 lt!353475) (is-MissingZero!8171 lt!353475) (not (is-MissingVacant!8171 lt!353475)) (and (bvsge (index!35054 lt!353475) #b00000000000000000000000000000000) (bvslt (index!35054 lt!353475) (size!20994 a!3170)))) (or (is-Undefined!8171 lt!353475) (ite (is-Found!8171 lt!353475) (= (select (arr!20573 a!3170) (index!35052 lt!353475)) k!2044) (ite (is-MissingZero!8171 lt!353475) (= (select (arr!20573 a!3170) (index!35051 lt!353475)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8171 lt!353475) (= (select (arr!20573 a!3170) (index!35054 lt!353475)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103171 (= lt!353475 e!440360)))

(declare-fun c!88042 () Bool)

(declare-fun lt!353473 () SeekEntryResult!8171)

(assert (=> d!103171 (= c!88042 (and (is-Intermediate!8171 lt!353473) (undefined!8983 lt!353473)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42990 (_ BitVec 32)) SeekEntryResult!8171)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103171 (= lt!353473 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103171 (validMask!0 mask!3266)))

(assert (=> d!103171 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!353475)))

(declare-fun b!792447 () Bool)

(declare-fun e!440359 () SeekEntryResult!8171)

(assert (=> b!792447 (= e!440359 (MissingZero!8171 (index!35053 lt!353473)))))

(declare-fun b!792448 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42990 (_ BitVec 32)) SeekEntryResult!8171)

(assert (=> b!792448 (= e!440359 (seekKeyOrZeroReturnVacant!0 (x!66026 lt!353473) (index!35053 lt!353473) (index!35053 lt!353473) k!2044 a!3170 mask!3266))))

(declare-fun b!792449 () Bool)

(declare-fun e!440358 () SeekEntryResult!8171)

(assert (=> b!792449 (= e!440360 e!440358)))

(declare-fun lt!353474 () (_ BitVec 64))

(assert (=> b!792449 (= lt!353474 (select (arr!20573 a!3170) (index!35053 lt!353473)))))

(declare-fun c!88043 () Bool)

(assert (=> b!792449 (= c!88043 (= lt!353474 k!2044))))

(declare-fun b!792450 () Bool)

(assert (=> b!792450 (= e!440358 (Found!8171 (index!35053 lt!353473)))))

(declare-fun b!792451 () Bool)

(declare-fun c!88044 () Bool)

(assert (=> b!792451 (= c!88044 (= lt!353474 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!792451 (= e!440358 e!440359)))

(assert (= (and d!103171 c!88042) b!792446))

(assert (= (and d!103171 (not c!88042)) b!792449))

(assert (= (and b!792449 c!88043) b!792450))

(assert (= (and b!792449 (not c!88043)) b!792451))

(assert (= (and b!792451 c!88044) b!792447))

(assert (= (and b!792451 (not c!88044)) b!792448))

(assert (=> d!103171 m!732999))

(declare-fun m!733087 () Bool)

(assert (=> d!103171 m!733087))

(declare-fun m!733089 () Bool)

(assert (=> d!103171 m!733089))

(declare-fun m!733091 () Bool)

(assert (=> d!103171 m!733091))

(declare-fun m!733093 () Bool)

(assert (=> d!103171 m!733093))

(declare-fun m!733095 () Bool)

(assert (=> d!103171 m!733095))

(assert (=> d!103171 m!733087))

(declare-fun m!733097 () Bool)

(assert (=> b!792448 m!733097))

(declare-fun m!733099 () Bool)

(assert (=> b!792449 m!733099))

(assert (=> b!792351 d!103171))

(declare-fun d!103189 () Bool)

(declare-fun lt!353476 () Bool)

(assert (=> d!103189 (= lt!353476 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!386 Nil!14586)))))

(declare-fun e!440361 () Bool)

(assert (=> d!103189 (= lt!353476 e!440361)))

(declare-fun res!537184 () Bool)

(assert (=> d!103189 (=> (not res!537184) (not e!440361))))

(assert (=> d!103189 (= res!537184 (is-Cons!14585 Nil!14586))))

(assert (=> d!103189 (= (contains!4121 Nil!14586 #b1000000000000000000000000000000000000000000000000000000000000000) lt!353476)))

(declare-fun b!792452 () Bool)

(declare-fun e!440362 () Bool)

(assert (=> b!792452 (= e!440361 e!440362)))

(declare-fun res!537183 () Bool)

(assert (=> b!792452 (=> res!537183 e!440362)))

(assert (=> b!792452 (= res!537183 (= (h!15714 Nil!14586) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!792453 () Bool)

(assert (=> b!792453 (= e!440362 (contains!4121 (t!20912 Nil!14586) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!103189 res!537184) b!792452))

(assert (= (and b!792452 (not res!537183)) b!792453))

(assert (=> d!103189 m!733063))

(declare-fun m!733101 () Bool)

(assert (=> d!103189 m!733101))

(declare-fun m!733103 () Bool)

(assert (=> b!792453 m!733103))

(assert (=> b!792354 d!103189))

(declare-fun d!103191 () Bool)

(declare-fun res!537189 () Bool)

(declare-fun e!440367 () Bool)

(assert (=> d!103191 (=> res!537189 e!440367)))

(assert (=> d!103191 (= res!537189 (= (select (arr!20573 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103191 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!440367)))

(declare-fun b!792458 () Bool)

(declare-fun e!440368 () Bool)

(assert (=> b!792458 (= e!440367 e!440368)))

(declare-fun res!537190 () Bool)

(assert (=> b!792458 (=> (not res!537190) (not e!440368))))

(assert (=> b!792458 (= res!537190 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20994 a!3170)))))

(declare-fun b!792459 () Bool)

(assert (=> b!792459 (= e!440368 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103191 (not res!537189)) b!792458))

(assert (= (and b!792458 res!537190) b!792459))

(declare-fun m!733105 () Bool)

(assert (=> d!103191 m!733105))

(declare-fun m!733107 () Bool)

(assert (=> b!792459 m!733107))

(assert (=> b!792349 d!103191))

(declare-fun d!103193 () Bool)

(assert (=> d!103193 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!792355 d!103193))

(declare-fun d!103195 () Bool)

(assert (=> d!103195 (= (validKeyInArray!0 (select (arr!20573 a!3170) j!153)) (and (not (= (select (arr!20573 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20573 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!792353 d!103195))

(declare-fun b!792504 () Bool)

(declare-fun e!440393 () Bool)

(declare-fun call!35346 () Bool)

(assert (=> b!792504 (= e!440393 call!35346)))

(declare-fun d!103197 () Bool)

(declare-fun res!537195 () Bool)

(declare-fun e!440394 () Bool)

(assert (=> d!103197 (=> res!537195 e!440394)))

(assert (=> d!103197 (= res!537195 (bvsge #b00000000000000000000000000000000 (size!20994 a!3170)))))

(assert (=> d!103197 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!440394)))

