; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69052 () Bool)

(assert start!69052)

(declare-fun b!805254 () Bool)

(declare-fun res!549947 () Bool)

(declare-fun e!445976 () Bool)

(assert (=> b!805254 (=> (not res!549947) (not e!445976))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805254 (= res!549947 (validKeyInArray!0 k!2044))))

(declare-fun b!805255 () Bool)

(declare-fun res!549951 () Bool)

(declare-fun e!445978 () Bool)

(assert (=> b!805255 (=> (not res!549951) (not e!445978))))

(declare-datatypes ((array!43793 0))(
  ( (array!43794 (arr!20973 (Array (_ BitVec 32) (_ BitVec 64))) (size!21394 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43793)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43793 (_ BitVec 32)) Bool)

(assert (=> b!805255 (= res!549951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805256 () Bool)

(declare-fun e!445977 () Bool)

(assert (=> b!805256 (= e!445978 e!445977)))

(declare-fun res!549950 () Bool)

(assert (=> b!805256 (=> (not res!549950) (not e!445977))))

(declare-datatypes ((SeekEntryResult!8571 0))(
  ( (MissingZero!8571 (index!36651 (_ BitVec 32))) (Found!8571 (index!36652 (_ BitVec 32))) (Intermediate!8571 (undefined!9383 Bool) (index!36653 (_ BitVec 32)) (x!67498 (_ BitVec 32))) (Undefined!8571) (MissingVacant!8571 (index!36654 (_ BitVec 32))) )
))
(declare-fun lt!360571 () SeekEntryResult!8571)

(declare-fun lt!360569 () SeekEntryResult!8571)

(assert (=> b!805256 (= res!549950 (= lt!360571 lt!360569))))

(declare-fun lt!360570 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360566 () array!43793)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43793 (_ BitVec 32)) SeekEntryResult!8571)

(assert (=> b!805256 (= lt!360569 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360570 lt!360566 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43793 (_ BitVec 32)) SeekEntryResult!8571)

(assert (=> b!805256 (= lt!360571 (seekEntryOrOpen!0 lt!360570 lt!360566 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805256 (= lt!360570 (select (store (arr!20973 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805256 (= lt!360566 (array!43794 (store (arr!20973 a!3170) i!1163 k!2044) (size!21394 a!3170)))))

(declare-fun b!805257 () Bool)

(declare-fun res!549945 () Bool)

(assert (=> b!805257 (=> (not res!549945) (not e!445976))))

(assert (=> b!805257 (= res!549945 (validKeyInArray!0 (select (arr!20973 a!3170) j!153)))))

(declare-fun b!805258 () Bool)

(assert (=> b!805258 (= e!445976 e!445978)))

(declare-fun res!549952 () Bool)

(assert (=> b!805258 (=> (not res!549952) (not e!445978))))

(declare-fun lt!360568 () SeekEntryResult!8571)

(assert (=> b!805258 (= res!549952 (or (= lt!360568 (MissingZero!8571 i!1163)) (= lt!360568 (MissingVacant!8571 i!1163))))))

(assert (=> b!805258 (= lt!360568 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805259 () Bool)

(declare-fun lt!360567 () SeekEntryResult!8571)

(declare-fun lt!360565 () SeekEntryResult!8571)

(assert (=> b!805259 (= e!445977 (and (= lt!360565 lt!360567) (= lt!360567 (Found!8571 j!153)) (= (select (arr!20973 a!3170) index!1236) (select (arr!20973 a!3170) j!153)) (not (= lt!360569 (Found!8571 index!1236)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!805259 (= lt!360567 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20973 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805259 (= lt!360565 (seekEntryOrOpen!0 (select (arr!20973 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805260 () Bool)

(declare-fun res!549948 () Bool)

(assert (=> b!805260 (=> (not res!549948) (not e!445976))))

(declare-fun arrayContainsKey!0 (array!43793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805260 (= res!549948 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805262 () Bool)

(declare-fun res!549949 () Bool)

(assert (=> b!805262 (=> (not res!549949) (not e!445976))))

(assert (=> b!805262 (= res!549949 (and (= (size!21394 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21394 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21394 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805263 () Bool)

(declare-fun res!549946 () Bool)

(assert (=> b!805263 (=> (not res!549946) (not e!445978))))

(assert (=> b!805263 (= res!549946 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21394 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20973 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21394 a!3170)) (= (select (arr!20973 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!549944 () Bool)

(assert (=> start!69052 (=> (not res!549944) (not e!445976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69052 (= res!549944 (validMask!0 mask!3266))))

(assert (=> start!69052 e!445976))

(assert (=> start!69052 true))

(declare-fun array_inv!16747 (array!43793) Bool)

(assert (=> start!69052 (array_inv!16747 a!3170)))

(declare-fun b!805261 () Bool)

(declare-fun res!549943 () Bool)

(assert (=> b!805261 (=> (not res!549943) (not e!445978))))

(declare-datatypes ((List!14989 0))(
  ( (Nil!14986) (Cons!14985 (h!16114 (_ BitVec 64)) (t!21312 List!14989)) )
))
(declare-fun arrayNoDuplicates!0 (array!43793 (_ BitVec 32) List!14989) Bool)

(assert (=> b!805261 (= res!549943 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14986))))

(assert (= (and start!69052 res!549944) b!805262))

(assert (= (and b!805262 res!549949) b!805257))

(assert (= (and b!805257 res!549945) b!805254))

(assert (= (and b!805254 res!549947) b!805260))

(assert (= (and b!805260 res!549948) b!805258))

(assert (= (and b!805258 res!549952) b!805255))

(assert (= (and b!805255 res!549951) b!805261))

(assert (= (and b!805261 res!549943) b!805263))

(assert (= (and b!805263 res!549946) b!805256))

(assert (= (and b!805256 res!549950) b!805259))

(declare-fun m!747295 () Bool)

(assert (=> b!805258 m!747295))

(declare-fun m!747297 () Bool)

(assert (=> b!805261 m!747297))

(declare-fun m!747299 () Bool)

(assert (=> b!805259 m!747299))

(declare-fun m!747301 () Bool)

(assert (=> b!805259 m!747301))

(assert (=> b!805259 m!747301))

(declare-fun m!747303 () Bool)

(assert (=> b!805259 m!747303))

(assert (=> b!805259 m!747301))

(declare-fun m!747305 () Bool)

(assert (=> b!805259 m!747305))

(declare-fun m!747307 () Bool)

(assert (=> start!69052 m!747307))

(declare-fun m!747309 () Bool)

(assert (=> start!69052 m!747309))

(declare-fun m!747311 () Bool)

(assert (=> b!805260 m!747311))

(declare-fun m!747313 () Bool)

(assert (=> b!805255 m!747313))

(declare-fun m!747315 () Bool)

(assert (=> b!805263 m!747315))

(declare-fun m!747317 () Bool)

(assert (=> b!805263 m!747317))

(assert (=> b!805257 m!747301))

(assert (=> b!805257 m!747301))

(declare-fun m!747319 () Bool)

(assert (=> b!805257 m!747319))

(declare-fun m!747321 () Bool)

(assert (=> b!805254 m!747321))

(declare-fun m!747323 () Bool)

(assert (=> b!805256 m!747323))

(declare-fun m!747325 () Bool)

(assert (=> b!805256 m!747325))

(declare-fun m!747327 () Bool)

(assert (=> b!805256 m!747327))

(declare-fun m!747329 () Bool)

(assert (=> b!805256 m!747329))

(push 1)

(assert (not b!805259))

(assert (not b!805260))

(assert (not start!69052))

(assert (not b!805257))

(assert (not b!805254))

(assert (not b!805258))

(assert (not b!805255))

(assert (not b!805256))

(assert (not b!805261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103475 () Bool)

(assert (=> d!103475 (= (validKeyInArray!0 (select (arr!20973 a!3170) j!153)) (and (not (= (select (arr!20973 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20973 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805257 d!103475))

(declare-fun b!805403 () Bool)

(declare-fun e!446055 () SeekEntryResult!8571)

(assert (=> b!805403 (= e!446055 Undefined!8571)))

(declare-fun b!805404 () Bool)

(declare-fun c!88096 () Bool)

(declare-fun lt!360637 () (_ BitVec 64))

(assert (=> b!805404 (= c!88096 (= lt!360637 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446053 () SeekEntryResult!8571)

(declare-fun e!446054 () SeekEntryResult!8571)

(assert (=> b!805404 (= e!446053 e!446054)))

(declare-fun b!805405 () Bool)

(declare-fun lt!360635 () SeekEntryResult!8571)

(assert (=> b!805405 (= e!446054 (MissingZero!8571 (index!36653 lt!360635)))))

(declare-fun b!805406 () Bool)

(assert (=> b!805406 (= e!446053 (Found!8571 (index!36653 lt!360635)))))

(declare-fun b!805407 () Bool)

(assert (=> b!805407 (= e!446055 e!446053)))

(assert (=> b!805407 (= lt!360637 (select (arr!20973 a!3170) (index!36653 lt!360635)))))

(declare-fun c!88097 () Bool)

(assert (=> b!805407 (= c!88097 (= lt!360637 k!2044))))

(declare-fun b!805408 () Bool)

(assert (=> b!805408 (= e!446054 (seekKeyOrZeroReturnVacant!0 (x!67498 lt!360635) (index!36653 lt!360635) (index!36653 lt!360635) k!2044 a!3170 mask!3266))))

(declare-fun d!103477 () Bool)

(declare-fun lt!360636 () SeekEntryResult!8571)

(assert (=> d!103477 (and (or (is-Undefined!8571 lt!360636) (not (is-Found!8571 lt!360636)) (and (bvsge (index!36652 lt!360636) #b00000000000000000000000000000000) (bvslt (index!36652 lt!360636) (size!21394 a!3170)))) (or (is-Undefined!8571 lt!360636) (is-Found!8571 lt!360636) (not (is-MissingZero!8571 lt!360636)) (and (bvsge (index!36651 lt!360636) #b00000000000000000000000000000000) (bvslt (index!36651 lt!360636) (size!21394 a!3170)))) (or (is-Undefined!8571 lt!360636) (is-Found!8571 lt!360636) (is-MissingZero!8571 lt!360636) (not (is-MissingVacant!8571 lt!360636)) (and (bvsge (index!36654 lt!360636) #b00000000000000000000000000000000) (bvslt (index!36654 lt!360636) (size!21394 a!3170)))) (or (is-Undefined!8571 lt!360636) (ite (is-Found!8571 lt!360636) (= (select (arr!20973 a!3170) (index!36652 lt!360636)) k!2044) (ite (is-MissingZero!8571 lt!360636) (= (select (arr!20973 a!3170) (index!36651 lt!360636)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8571 lt!360636) (= (select (arr!20973 a!3170) (index!36654 lt!360636)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103477 (= lt!360636 e!446055)))

(declare-fun c!88095 () Bool)

(assert (=> d!103477 (= c!88095 (and (is-Intermediate!8571 lt!360635) (undefined!9383 lt!360635)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43793 (_ BitVec 32)) SeekEntryResult!8571)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103477 (= lt!360635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103477 (validMask!0 mask!3266)))

(assert (=> d!103477 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!360636)))

(assert (= (and d!103477 c!88095) b!805403))

(assert (= (and d!103477 (not c!88095)) b!805407))

(assert (= (and b!805407 c!88097) b!805406))

(assert (= (and b!805407 (not c!88097)) b!805404))

(assert (= (and b!805404 c!88096) b!805405))

(assert (= (and b!805404 (not c!88096)) b!805408))

(declare-fun m!747439 () Bool)

(assert (=> b!805407 m!747439))

(declare-fun m!747441 () Bool)

(assert (=> b!805408 m!747441))

(declare-fun m!747443 () Bool)

(assert (=> d!103477 m!747443))

(declare-fun m!747445 () Bool)

(assert (=> d!103477 m!747445))

(assert (=> d!103477 m!747307))

(declare-fun m!747447 () Bool)

(assert (=> d!103477 m!747447))

(declare-fun m!747449 () Bool)

(assert (=> d!103477 m!747449))

(assert (=> d!103477 m!747447))

(declare-fun m!747451 () Bool)

(assert (=> d!103477 m!747451))

(assert (=> b!805258 d!103477))

(declare-fun b!805468 () Bool)

(declare-fun e!446095 () SeekEntryResult!8571)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!805468 (= e!446095 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!20973 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805469 () Bool)

(declare-fun e!446093 () SeekEntryResult!8571)

(assert (=> b!805469 (= e!446093 Undefined!8571)))

(declare-fun b!805470 () Bool)

(assert (=> b!805470 (= e!446095 (MissingVacant!8571 vacantBefore!23))))

(declare-fun b!805471 () Bool)

(declare-fun c!88122 () Bool)

(declare-fun lt!360664 () (_ BitVec 64))

(assert (=> b!805471 (= c!88122 (= lt!360664 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446094 () SeekEntryResult!8571)

(assert (=> b!805471 (= e!446094 e!446095)))

(declare-fun b!805473 () Bool)

(assert (=> b!805473 (= e!446094 (Found!8571 index!1236))))

(declare-fun b!805472 () Bool)

(assert (=> b!805472 (= e!446093 e!446094)))

(declare-fun c!88121 () Bool)

(assert (=> b!805472 (= c!88121 (= lt!360664 (select (arr!20973 a!3170) j!153)))))

(declare-fun lt!360663 () SeekEntryResult!8571)

(declare-fun d!103489 () Bool)

(assert (=> d!103489 (and (or (is-Undefined!8571 lt!360663) (not (is-Found!8571 lt!360663)) (and (bvsge (index!36652 lt!360663) #b00000000000000000000000000000000) (bvslt (index!36652 lt!360663) (size!21394 a!3170)))) (or (is-Undefined!8571 lt!360663) (is-Found!8571 lt!360663) (not (is-MissingVacant!8571 lt!360663)) (not (= (index!36654 lt!360663) vacantBefore!23)) (and (bvsge (index!36654 lt!360663) #b00000000000000000000000000000000) (bvslt (index!36654 lt!360663) (size!21394 a!3170)))) (or (is-Undefined!8571 lt!360663) (ite (is-Found!8571 lt!360663) (= (select (arr!20973 a!3170) (index!36652 lt!360663)) (select (arr!20973 a!3170) j!153)) (and (is-MissingVacant!8571 lt!360663) (= (index!36654 lt!360663) vacantBefore!23) (= (select (arr!20973 a!3170) (index!36654 lt!360663)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103489 (= lt!360663 e!446093)))

(declare-fun c!88120 () Bool)

(assert (=> d!103489 (= c!88120 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103489 (= lt!360664 (select (arr!20973 a!3170) index!1236))))

(assert (=> d!103489 (validMask!0 mask!3266)))

(assert (=> d!103489 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20973 a!3170) j!153) a!3170 mask!3266) lt!360663)))

(assert (= (and d!103489 c!88120) b!805469))

(assert (= (and d!103489 (not c!88120)) b!805472))

(assert (= (and b!805472 c!88121) b!805473))

(assert (= (and b!805472 (not c!88121)) b!805471))

(assert (= (and b!805471 c!88122) b!805470))

(assert (= (and b!805471 (not c!88122)) b!805468))

(declare-fun m!747497 () Bool)

(assert (=> b!805468 m!747497))

(assert (=> b!805468 m!747497))

(assert (=> b!805468 m!747301))

(declare-fun m!747499 () Bool)

(assert (=> b!805468 m!747499))

(declare-fun m!747501 () Bool)

(assert (=> d!103489 m!747501))

(declare-fun m!747503 () Bool)

(assert (=> d!103489 m!747503))

(assert (=> d!103489 m!747299))

(assert (=> d!103489 m!747307))

(assert (=> b!805259 d!103489))

(declare-fun b!805474 () Bool)

(declare-fun e!446098 () SeekEntryResult!8571)

(assert (=> b!805474 (= e!446098 Undefined!8571)))

(declare-fun b!805475 () Bool)

(declare-fun c!88124 () Bool)

(declare-fun lt!360667 () (_ BitVec 64))

(assert (=> b!805475 (= c!88124 (= lt!360667 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446096 () SeekEntryResult!8571)

(declare-fun e!446097 () SeekEntryResult!8571)

(assert (=> b!805475 (= e!446096 e!446097)))

(declare-fun b!805476 () Bool)

(declare-fun lt!360665 () SeekEntryResult!8571)

(assert (=> b!805476 (= e!446097 (MissingZero!8571 (index!36653 lt!360665)))))

(declare-fun b!805477 () Bool)

(assert (=> b!805477 (= e!446096 (Found!8571 (index!36653 lt!360665)))))

(declare-fun b!805478 () Bool)

(assert (=> b!805478 (= e!446098 e!446096)))

(assert (=> b!805478 (= lt!360667 (select (arr!20973 a!3170) (index!36653 lt!360665)))))

(declare-fun c!88125 () Bool)

(assert (=> b!805478 (= c!88125 (= lt!360667 (select (arr!20973 a!3170) j!153)))))

(declare-fun b!805479 () Bool)

(assert (=> b!805479 (= e!446097 (seekKeyOrZeroReturnVacant!0 (x!67498 lt!360665) (index!36653 lt!360665) (index!36653 lt!360665) (select (arr!20973 a!3170) j!153) a!3170 mask!3266))))

(declare-fun d!103507 () Bool)

(declare-fun lt!360666 () SeekEntryResult!8571)

(assert (=> d!103507 (and (or (is-Undefined!8571 lt!360666) (not (is-Found!8571 lt!360666)) (and (bvsge (index!36652 lt!360666) #b00000000000000000000000000000000) (bvslt (index!36652 lt!360666) (size!21394 a!3170)))) (or (is-Undefined!8571 lt!360666) (is-Found!8571 lt!360666) (not (is-MissingZero!8571 lt!360666)) (and (bvsge (index!36651 lt!360666) #b00000000000000000000000000000000) (bvslt (index!36651 lt!360666) (size!21394 a!3170)))) (or (is-Undefined!8571 lt!360666) (is-Found!8571 lt!360666) (is-MissingZero!8571 lt!360666) (not (is-MissingVacant!8571 lt!360666)) (and (bvsge (index!36654 lt!360666) #b00000000000000000000000000000000) (bvslt (index!36654 lt!360666) (size!21394 a!3170)))) (or (is-Undefined!8571 lt!360666) (ite (is-Found!8571 lt!360666) (= (select (arr!20973 a!3170) (index!36652 lt!360666)) (select (arr!20973 a!3170) j!153)) (ite (is-MissingZero!8571 lt!360666) (= (select (arr!20973 a!3170) (index!36651 lt!360666)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8571 lt!360666) (= (select (arr!20973 a!3170) (index!36654 lt!360666)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103507 (= lt!360666 e!446098)))

(declare-fun c!88123 () Bool)

(assert (=> d!103507 (= c!88123 (and (is-Intermediate!8571 lt!360665) (undefined!9383 lt!360665)))))

(assert (=> d!103507 (= lt!360665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20973 a!3170) j!153) mask!3266) (select (arr!20973 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103507 (validMask!0 mask!3266)))

(assert (=> d!103507 (= (seekEntryOrOpen!0 (select (arr!20973 a!3170) j!153) a!3170 mask!3266) lt!360666)))

(assert (= (and d!103507 c!88123) b!805474))

(assert (= (and d!103507 (not c!88123)) b!805478))

(assert (= (and b!805478 c!88125) b!805477))

(assert (= (and b!805478 (not c!88125)) b!805475))

(assert (= (and b!805475 c!88124) b!805476))

(assert (= (and b!805475 (not c!88124)) b!805479))

(declare-fun m!747505 () Bool)

(assert (=> b!805478 m!747505))

(assert (=> b!805479 m!747301))

(declare-fun m!747507 () Bool)

(assert (=> b!805479 m!747507))

(declare-fun m!747509 () Bool)

(assert (=> d!103507 m!747509))

(declare-fun m!747511 () Bool)

(assert (=> d!103507 m!747511))

(assert (=> d!103507 m!747307))

(assert (=> d!103507 m!747301))

(declare-fun m!747513 () Bool)

(assert (=> d!103507 m!747513))

(declare-fun m!747515 () Bool)

(assert (=> d!103507 m!747515))

(assert (=> d!103507 m!747513))

(assert (=> d!103507 m!747301))

(declare-fun m!747517 () Bool)

(assert (=> d!103507 m!747517))

(assert (=> b!805259 d!103507))

(declare-fun d!103509 () Bool)

(assert (=> d!103509 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!805254 d!103509))

(declare-fun d!103511 () Bool)

(declare-fun res!550053 () Bool)

(declare-fun e!446109 () Bool)

(assert (=> d!103511 (=> res!550053 e!446109)))

(assert (=> d!103511 (= res!550053 (= (select (arr!20973 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103511 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!446109)))

(declare-fun b!805496 () Bool)

(declare-fun e!446110 () Bool)

(assert (=> b!805496 (= e!446109 e!446110)))

(declare-fun res!550054 () Bool)

(assert (=> b!805496 (=> (not res!550054) (not e!446110))))

(assert (=> b!805496 (= res!550054 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21394 a!3170)))))

(declare-fun b!805497 () Bool)

(assert (=> b!805497 (= e!446110 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103511 (not res!550053)) b!805496))

(assert (= (and b!805496 res!550054) b!805497))

(declare-fun m!747519 () Bool)

(assert (=> d!103511 m!747519))

(declare-fun m!747521 () Bool)

(assert (=> b!805497 m!747521))

(assert (=> b!805260 d!103511))

(declare-fun b!805554 () Bool)

(declare-fun e!446146 () Bool)

(declare-fun e!446145 () Bool)

(assert (=> b!805554 (= e!446146 e!446145)))

(declare-fun lt!360702 () (_ BitVec 64))

(assert (=> b!805554 (= lt!360702 (select (arr!20973 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27586 0))(
  ( (Unit!27587) )
))
(declare-fun lt!360703 () Unit!27586)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43793 (_ BitVec 64) (_ BitVec 32)) Unit!27586)

(assert (=> b!805554 (= lt!360703 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!360702 #b00000000000000000000000000000000))))

(assert (=> b!805554 (arrayContainsKey!0 a!3170 lt!360702 #b00000000000000000000000000000000)))

(declare-fun lt!360704 () Unit!27586)

(assert (=> b!805554 (= lt!360704 lt!360703)))

(declare-fun res!550066 () Bool)

(assert (=> b!805554 (= res!550066 (= (seekEntryOrOpen!0 (select (arr!20973 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8571 #b00000000000000000000000000000000)))))

(assert (=> b!805554 (=> (not res!550066) (not e!446145))))

(declare-fun b!805555 () Bool)

(declare-fun e!446144 () Bool)

(assert (=> b!805555 (= e!446144 e!446146)))

(declare-fun c!88155 () Bool)

(assert (=> b!805555 (= c!88155 (validKeyInArray!0 (select (arr!20973 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!805556 () Bool)

(declare-fun call!35361 () Bool)

(assert (=> b!805556 (= e!446146 call!35361)))

(declare-fun d!103513 () Bool)

(declare-fun res!550065 () Bool)

(assert (=> d!103513 (=> res!550065 e!446144)))

(assert (=> d!103513 (= res!550065 (bvsge #b00000000000000000000000000000000 (size!21394 a!3170)))))

(assert (=> d!103513 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!446144)))

(declare-fun bm!35358 () Bool)

(assert (=> bm!35358 (= call!35361 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!805557 () Bool)

(assert (=> b!805557 (= e!446145 call!35361)))

(assert (= (and d!103513 (not res!550065)) b!805555))

(assert (= (and b!805555 c!88155) b!805554))

(assert (= (and b!805555 (not c!88155)) b!805556))

(assert (= (and b!805554 res!550066) b!805557))

(assert (= (or b!805557 b!805556) bm!35358))

(assert (=> b!805554 m!747519))

(declare-fun m!747595 () Bool)

(assert (=> b!805554 m!747595))

(declare-fun m!747597 () Bool)

(assert (=> b!805554 m!747597))

(assert (=> b!805554 m!747519))

(declare-fun m!747599 () Bool)

(assert (=> b!805554 m!747599))

(assert (=> b!805555 m!747519))

(assert (=> b!805555 m!747519))

(declare-fun m!747601 () Bool)

(assert (=> b!805555 m!747601))

(declare-fun m!747603 () Bool)

(assert (=> bm!35358 m!747603))

(assert (=> b!805255 d!103513))

(declare-fun d!103531 () Bool)

(assert (=> d!103531 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69052 d!103531))

(declare-fun d!103533 () Bool)

(assert (=> d!103533 (= (array_inv!16747 a!3170) (bvsge (size!21394 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69052 d!103533))

(declare-fun d!103535 () Bool)

(declare-fun res!550075 () Bool)

(declare-fun e!446157 () Bool)

(assert (=> d!103535 (=> res!550075 e!446157)))

(assert (=> d!103535 (= res!550075 (bvsge #b00000000000000000000000000000000 (size!21394 a!3170)))))

(assert (=> d!103535 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14986) e!446157)))

(declare-fun b!805568 () Bool)

(declare-fun e!446155 () Bool)

(declare-fun contains!4124 (List!14989 (_ BitVec 64)) Bool)

(assert (=> b!805568 (= e!446155 (contains!4124 Nil!14986 (select (arr!20973 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!805569 () Bool)

(declare-fun e!446156 () Bool)

(declare-fun call!35364 () Bool)

(assert (=> b!805569 (= e!446156 call!35364)))

(declare-fun b!805570 () Bool)

(declare-fun e!446158 () Bool)

(assert (=> b!805570 (= e!446157 e!446158)))

(declare-fun res!550073 () Bool)

(assert (=> b!805570 (=> (not res!550073) (not e!446158))))

(assert (=> b!805570 (= res!550073 (not e!446155))))

(declare-fun res!550074 () Bool)

(assert (=> b!805570 (=> (not res!550074) (not e!446155))))

(assert (=> b!805570 (= res!550074 (validKeyInArray!0 (select (arr!20973 a!3170) #b00000000000000000000000000000000)))))

(declare-fun bm!35361 () Bool)

(declare-fun c!88158 () Bool)

(assert (=> bm!35361 (= call!35364 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88158 (Cons!14985 (select (arr!20973 a!3170) #b00000000000000000000000000000000) Nil!14986) Nil!14986)))))

(declare-fun b!805571 () Bool)

(assert (=> b!805571 (= e!446158 e!446156)))

(assert (=> b!805571 (= c!88158 (validKeyInArray!0 (select (arr!20973 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!805572 () Bool)

(assert (=> b!805572 (= e!446156 call!35364)))

(assert (= (and d!103535 (not res!550075)) b!805570))

(assert (= (and b!805570 res!550074) b!805568))

(assert (= (and b!805570 res!550073) b!805571))

(assert (= (and b!805571 c!88158) b!805569))

(assert (= (and b!805571 (not c!88158)) b!805572))

(assert (= (or b!805569 b!805572) bm!35361))

(assert (=> b!805568 m!747519))

(assert (=> b!805568 m!747519))

(declare-fun m!747605 () Bool)

(assert (=> b!805568 m!747605))

(assert (=> b!805570 m!747519))

(assert (=> b!805570 m!747519))

(assert (=> b!805570 m!747601))

(assert (=> bm!35361 m!747519))

(declare-fun m!747607 () Bool)

(assert (=> bm!35361 m!747607))

(assert (=> b!805571 m!747519))

(assert (=> b!805571 m!747519))

(assert (=> b!805571 m!747601))

(assert (=> b!805261 d!103535))

(declare-fun b!805573 () Bool)

(declare-fun e!446161 () SeekEntryResult!8571)

(assert (=> b!805573 (= e!446161 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!360570 lt!360566 mask!3266))))

(declare-fun b!805574 () Bool)

(declare-fun e!446159 () SeekEntryResult!8571)

(assert (=> b!805574 (= e!446159 Undefined!8571)))

(declare-fun b!805575 () Bool)

(assert (=> b!805575 (= e!446161 (MissingVacant!8571 vacantAfter!23))))

(declare-fun b!805576 () Bool)

(declare-fun c!88161 () Bool)

(declare-fun lt!360706 () (_ BitVec 64))

(assert (=> b!805576 (= c!88161 (= lt!360706 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!446160 () SeekEntryResult!8571)

(assert (=> b!805576 (= e!446160 e!446161)))

(declare-fun b!805578 () Bool)

(assert (=> b!805578 (= e!446160 (Found!8571 index!1236))))

(declare-fun b!805577 () Bool)

(assert (=> b!805577 (= e!446159 e!446160)))

(declare-fun c!88160 () Bool)

(assert (=> b!805577 (= c!88160 (= lt!360706 lt!360570))))

(declare-fun d!103537 () Bool)

(declare-fun lt!360705 () SeekEntryResult!8571)

(assert (=> d!103537 (and (or (is-Undefined!8571 lt!360705) (not (is-Found!8571 lt!360705)) (and (bvsge (index!36652 lt!360705) #b00000000000000000000000000000000) (bvslt (index!36652 lt!360705) (size!21394 lt!360566)))) (or (is-Undefined!8571 lt!360705) (is-Found!8571 lt!360705) (not (is-MissingVacant!8571 lt!360705)) (not (= (index!36654 lt!360705) vacantAfter!23)) (and (bvsge (index!36654 lt!360705) #b00000000000000000000000000000000) (bvslt (index!36654 lt!360705) (size!21394 lt!360566)))) (or (is-Undefined!8571 lt!360705) (ite (is-Found!8571 lt!360705) (= (select (arr!20973 lt!360566) (index!36652 lt!360705)) lt!360570) (and (is-MissingVacant!8571 lt!360705) (= (index!36654 lt!360705) vacantAfter!23) (= (select (arr!20973 lt!360566) (index!36654 lt!360705)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103537 (= lt!360705 e!446159)))

(declare-fun c!88159 () Bool)

(assert (=> d!103537 (= c!88159 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103537 (= lt!360706 (select (arr!20973 lt!360566) index!1236))))

(assert (=> d!103537 (validMask!0 mask!3266)))

(assert (=> d!103537 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360570 lt!360566 mask!3266) lt!360705)))

(assert (= (and d!103537 c!88159) b!805574))

(assert (= (and d!103537 (not c!88159)) b!805577))

(assert (= (and b!805577 c!88160) b!805578))

(assert (= (and b!805577 (not c!88160)) b!805576))

(assert (= (and b!805576 c!88161) b!805575))

(assert (= (and b!805576 (not c!88161)) b!805573))

(assert (=> b!805573 m!747497))

(assert (=> b!805573 m!747497))

(declare-fun m!747609 () Bool)

(assert (=> b!805573 m!747609))

(declare-fun m!747611 () Bool)

