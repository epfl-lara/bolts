; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69288 () Bool)

(assert start!69288)

(declare-fun b!808097 () Bool)

(declare-fun e!447363 () Bool)

(declare-fun x!1077 () (_ BitVec 32))

(assert (=> b!808097 (= e!447363 (bvsgt (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!362128 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808097 (= lt!362128 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!552393 () Bool)

(declare-fun e!447361 () Bool)

(assert (=> start!69288 (=> (not res!552393) (not e!447361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69288 (= res!552393 (validMask!0 mask!3266))))

(assert (=> start!69288 e!447361))

(assert (=> start!69288 true))

(declare-datatypes ((array!43939 0))(
  ( (array!43940 (arr!21043 (Array (_ BitVec 32) (_ BitVec 64))) (size!21464 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43939)

(declare-fun array_inv!16817 (array!43939) Bool)

(assert (=> start!69288 (array_inv!16817 a!3170)))

(declare-fun b!808098 () Bool)

(declare-fun res!552400 () Bool)

(assert (=> b!808098 (=> (not res!552400) (not e!447361))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808098 (= res!552400 (validKeyInArray!0 k0!2044))))

(declare-fun b!808099 () Bool)

(declare-fun res!552394 () Bool)

(declare-fun e!447362 () Bool)

(assert (=> b!808099 (=> (not res!552394) (not e!447362))))

(declare-datatypes ((List!15059 0))(
  ( (Nil!15056) (Cons!15055 (h!16184 (_ BitVec 64)) (t!21382 List!15059)) )
))
(declare-fun arrayNoDuplicates!0 (array!43939 (_ BitVec 32) List!15059) Bool)

(assert (=> b!808099 (= res!552394 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15056))))

(declare-fun b!808100 () Bool)

(assert (=> b!808100 (= e!447361 e!447362)))

(declare-fun res!552395 () Bool)

(assert (=> b!808100 (=> (not res!552395) (not e!447362))))

(declare-datatypes ((SeekEntryResult!8641 0))(
  ( (MissingZero!8641 (index!36931 (_ BitVec 32))) (Found!8641 (index!36932 (_ BitVec 32))) (Intermediate!8641 (undefined!9453 Bool) (index!36933 (_ BitVec 32)) (x!67758 (_ BitVec 32))) (Undefined!8641) (MissingVacant!8641 (index!36934 (_ BitVec 32))) )
))
(declare-fun lt!362124 () SeekEntryResult!8641)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!808100 (= res!552395 (or (= lt!362124 (MissingZero!8641 i!1163)) (= lt!362124 (MissingVacant!8641 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43939 (_ BitVec 32)) SeekEntryResult!8641)

(assert (=> b!808100 (= lt!362124 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!808101 () Bool)

(declare-fun e!447360 () Bool)

(assert (=> b!808101 (= e!447360 e!447363)))

(declare-fun res!552398 () Bool)

(assert (=> b!808101 (=> (not res!552398) (not e!447363))))

(declare-fun lt!362126 () SeekEntryResult!8641)

(declare-fun lt!362123 () SeekEntryResult!8641)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!808101 (= res!552398 (and (= lt!362123 lt!362126) (= lt!362126 (Found!8641 j!153)) (not (= (select (arr!21043 a!3170) index!1236) (select (arr!21043 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43939 (_ BitVec 32)) SeekEntryResult!8641)

(assert (=> b!808101 (= lt!362126 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21043 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!808101 (= lt!362123 (seekEntryOrOpen!0 (select (arr!21043 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808102 () Bool)

(declare-fun res!552392 () Bool)

(assert (=> b!808102 (=> (not res!552392) (not e!447362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43939 (_ BitVec 32)) Bool)

(assert (=> b!808102 (= res!552392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808103 () Bool)

(declare-fun res!552391 () Bool)

(assert (=> b!808103 (=> (not res!552391) (not e!447361))))

(declare-fun arrayContainsKey!0 (array!43939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808103 (= res!552391 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808104 () Bool)

(declare-fun res!552396 () Bool)

(assert (=> b!808104 (=> (not res!552396) (not e!447362))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!808104 (= res!552396 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21464 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21043 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21464 a!3170)) (= (select (arr!21043 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808105 () Bool)

(declare-fun res!552390 () Bool)

(assert (=> b!808105 (=> (not res!552390) (not e!447361))))

(assert (=> b!808105 (= res!552390 (and (= (size!21464 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21464 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21464 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808106 () Bool)

(declare-fun res!552397 () Bool)

(assert (=> b!808106 (=> (not res!552397) (not e!447361))))

(assert (=> b!808106 (= res!552397 (validKeyInArray!0 (select (arr!21043 a!3170) j!153)))))

(declare-fun b!808107 () Bool)

(assert (=> b!808107 (= e!447362 e!447360)))

(declare-fun res!552399 () Bool)

(assert (=> b!808107 (=> (not res!552399) (not e!447360))))

(declare-fun lt!362125 () array!43939)

(declare-fun lt!362127 () (_ BitVec 64))

(assert (=> b!808107 (= res!552399 (= (seekEntryOrOpen!0 lt!362127 lt!362125 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362127 lt!362125 mask!3266)))))

(assert (=> b!808107 (= lt!362127 (select (store (arr!21043 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!808107 (= lt!362125 (array!43940 (store (arr!21043 a!3170) i!1163 k0!2044) (size!21464 a!3170)))))

(assert (= (and start!69288 res!552393) b!808105))

(assert (= (and b!808105 res!552390) b!808106))

(assert (= (and b!808106 res!552397) b!808098))

(assert (= (and b!808098 res!552400) b!808103))

(assert (= (and b!808103 res!552391) b!808100))

(assert (= (and b!808100 res!552395) b!808102))

(assert (= (and b!808102 res!552392) b!808099))

(assert (= (and b!808099 res!552394) b!808104))

(assert (= (and b!808104 res!552396) b!808107))

(assert (= (and b!808107 res!552399) b!808101))

(assert (= (and b!808101 res!552398) b!808097))

(declare-fun m!750351 () Bool)

(assert (=> b!808099 m!750351))

(declare-fun m!750353 () Bool)

(assert (=> b!808107 m!750353))

(declare-fun m!750355 () Bool)

(assert (=> b!808107 m!750355))

(declare-fun m!750357 () Bool)

(assert (=> b!808107 m!750357))

(declare-fun m!750359 () Bool)

(assert (=> b!808107 m!750359))

(declare-fun m!750361 () Bool)

(assert (=> b!808103 m!750361))

(declare-fun m!750363 () Bool)

(assert (=> b!808102 m!750363))

(declare-fun m!750365 () Bool)

(assert (=> b!808097 m!750365))

(declare-fun m!750367 () Bool)

(assert (=> b!808106 m!750367))

(assert (=> b!808106 m!750367))

(declare-fun m!750369 () Bool)

(assert (=> b!808106 m!750369))

(declare-fun m!750371 () Bool)

(assert (=> b!808098 m!750371))

(declare-fun m!750373 () Bool)

(assert (=> b!808101 m!750373))

(assert (=> b!808101 m!750367))

(assert (=> b!808101 m!750367))

(declare-fun m!750375 () Bool)

(assert (=> b!808101 m!750375))

(assert (=> b!808101 m!750367))

(declare-fun m!750377 () Bool)

(assert (=> b!808101 m!750377))

(declare-fun m!750379 () Bool)

(assert (=> start!69288 m!750379))

(declare-fun m!750381 () Bool)

(assert (=> start!69288 m!750381))

(declare-fun m!750383 () Bool)

(assert (=> b!808100 m!750383))

(declare-fun m!750385 () Bool)

(assert (=> b!808104 m!750385))

(declare-fun m!750387 () Bool)

(assert (=> b!808104 m!750387))

(check-sat (not b!808097) (not b!808106) (not b!808102) (not b!808103) (not b!808099) (not b!808100) (not b!808107) (not start!69288) (not b!808098) (not b!808101))
(check-sat)
(get-model)

(declare-fun b!808153 () Bool)

(declare-fun e!447387 () SeekEntryResult!8641)

(declare-fun lt!362153 () SeekEntryResult!8641)

(assert (=> b!808153 (= e!447387 (Found!8641 (index!36933 lt!362153)))))

(declare-fun e!447386 () SeekEntryResult!8641)

(declare-fun b!808154 () Bool)

(assert (=> b!808154 (= e!447386 (seekKeyOrZeroReturnVacant!0 (x!67758 lt!362153) (index!36933 lt!362153) (index!36933 lt!362153) k0!2044 a!3170 mask!3266))))

(declare-fun b!808155 () Bool)

(declare-fun c!88272 () Bool)

(declare-fun lt!362155 () (_ BitVec 64))

(assert (=> b!808155 (= c!88272 (= lt!362155 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808155 (= e!447387 e!447386)))

(declare-fun b!808156 () Bool)

(declare-fun e!447388 () SeekEntryResult!8641)

(assert (=> b!808156 (= e!447388 e!447387)))

(assert (=> b!808156 (= lt!362155 (select (arr!21043 a!3170) (index!36933 lt!362153)))))

(declare-fun c!88271 () Bool)

(assert (=> b!808156 (= c!88271 (= lt!362155 k0!2044))))

(declare-fun d!103659 () Bool)

(declare-fun lt!362154 () SeekEntryResult!8641)

(get-info :version)

(assert (=> d!103659 (and (or ((_ is Undefined!8641) lt!362154) (not ((_ is Found!8641) lt!362154)) (and (bvsge (index!36932 lt!362154) #b00000000000000000000000000000000) (bvslt (index!36932 lt!362154) (size!21464 a!3170)))) (or ((_ is Undefined!8641) lt!362154) ((_ is Found!8641) lt!362154) (not ((_ is MissingZero!8641) lt!362154)) (and (bvsge (index!36931 lt!362154) #b00000000000000000000000000000000) (bvslt (index!36931 lt!362154) (size!21464 a!3170)))) (or ((_ is Undefined!8641) lt!362154) ((_ is Found!8641) lt!362154) ((_ is MissingZero!8641) lt!362154) (not ((_ is MissingVacant!8641) lt!362154)) (and (bvsge (index!36934 lt!362154) #b00000000000000000000000000000000) (bvslt (index!36934 lt!362154) (size!21464 a!3170)))) (or ((_ is Undefined!8641) lt!362154) (ite ((_ is Found!8641) lt!362154) (= (select (arr!21043 a!3170) (index!36932 lt!362154)) k0!2044) (ite ((_ is MissingZero!8641) lt!362154) (= (select (arr!21043 a!3170) (index!36931 lt!362154)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8641) lt!362154) (= (select (arr!21043 a!3170) (index!36934 lt!362154)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103659 (= lt!362154 e!447388)))

(declare-fun c!88270 () Bool)

(assert (=> d!103659 (= c!88270 (and ((_ is Intermediate!8641) lt!362153) (undefined!9453 lt!362153)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43939 (_ BitVec 32)) SeekEntryResult!8641)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103659 (= lt!362153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!103659 (validMask!0 mask!3266)))

(assert (=> d!103659 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!362154)))

(declare-fun b!808157 () Bool)

(assert (=> b!808157 (= e!447388 Undefined!8641)))

(declare-fun b!808158 () Bool)

(assert (=> b!808158 (= e!447386 (MissingZero!8641 (index!36933 lt!362153)))))

(assert (= (and d!103659 c!88270) b!808157))

(assert (= (and d!103659 (not c!88270)) b!808156))

(assert (= (and b!808156 c!88271) b!808153))

(assert (= (and b!808156 (not c!88271)) b!808155))

(assert (= (and b!808155 c!88272) b!808158))

(assert (= (and b!808155 (not c!88272)) b!808154))

(declare-fun m!750427 () Bool)

(assert (=> b!808154 m!750427))

(declare-fun m!750429 () Bool)

(assert (=> b!808156 m!750429))

(declare-fun m!750431 () Bool)

(assert (=> d!103659 m!750431))

(declare-fun m!750433 () Bool)

(assert (=> d!103659 m!750433))

(declare-fun m!750435 () Bool)

(assert (=> d!103659 m!750435))

(assert (=> d!103659 m!750435))

(declare-fun m!750437 () Bool)

(assert (=> d!103659 m!750437))

(declare-fun m!750439 () Bool)

(assert (=> d!103659 m!750439))

(assert (=> d!103659 m!750379))

(assert (=> b!808100 d!103659))

(declare-fun d!103667 () Bool)

(assert (=> d!103667 (= (validKeyInArray!0 (select (arr!21043 a!3170) j!153)) (and (not (= (select (arr!21043 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21043 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808106 d!103667))

(declare-fun b!808189 () Bool)

(declare-fun e!447406 () SeekEntryResult!8641)

(assert (=> b!808189 (= e!447406 (Found!8641 index!1236))))

(declare-fun e!447405 () SeekEntryResult!8641)

(declare-fun b!808190 () Bool)

(assert (=> b!808190 (= e!447405 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21043 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808191 () Bool)

(declare-fun e!447404 () SeekEntryResult!8641)

(assert (=> b!808191 (= e!447404 e!447406)))

(declare-fun lt!362166 () (_ BitVec 64))

(declare-fun c!88289 () Bool)

(assert (=> b!808191 (= c!88289 (= lt!362166 (select (arr!21043 a!3170) j!153)))))

(declare-fun b!808192 () Bool)

(assert (=> b!808192 (= e!447404 Undefined!8641)))

(declare-fun b!808193 () Bool)

(assert (=> b!808193 (= e!447405 (MissingVacant!8641 vacantBefore!23))))

(declare-fun b!808194 () Bool)

(declare-fun c!88290 () Bool)

(assert (=> b!808194 (= c!88290 (= lt!362166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808194 (= e!447406 e!447405)))

(declare-fun lt!362167 () SeekEntryResult!8641)

(declare-fun d!103669 () Bool)

(assert (=> d!103669 (and (or ((_ is Undefined!8641) lt!362167) (not ((_ is Found!8641) lt!362167)) (and (bvsge (index!36932 lt!362167) #b00000000000000000000000000000000) (bvslt (index!36932 lt!362167) (size!21464 a!3170)))) (or ((_ is Undefined!8641) lt!362167) ((_ is Found!8641) lt!362167) (not ((_ is MissingVacant!8641) lt!362167)) (not (= (index!36934 lt!362167) vacantBefore!23)) (and (bvsge (index!36934 lt!362167) #b00000000000000000000000000000000) (bvslt (index!36934 lt!362167) (size!21464 a!3170)))) (or ((_ is Undefined!8641) lt!362167) (ite ((_ is Found!8641) lt!362167) (= (select (arr!21043 a!3170) (index!36932 lt!362167)) (select (arr!21043 a!3170) j!153)) (and ((_ is MissingVacant!8641) lt!362167) (= (index!36934 lt!362167) vacantBefore!23) (= (select (arr!21043 a!3170) (index!36934 lt!362167)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103669 (= lt!362167 e!447404)))

(declare-fun c!88288 () Bool)

(assert (=> d!103669 (= c!88288 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103669 (= lt!362166 (select (arr!21043 a!3170) index!1236))))

(assert (=> d!103669 (validMask!0 mask!3266)))

(assert (=> d!103669 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21043 a!3170) j!153) a!3170 mask!3266) lt!362167)))

(assert (= (and d!103669 c!88288) b!808192))

(assert (= (and d!103669 (not c!88288)) b!808191))

(assert (= (and b!808191 c!88289) b!808189))

(assert (= (and b!808191 (not c!88289)) b!808194))

(assert (= (and b!808194 c!88290) b!808193))

(assert (= (and b!808194 (not c!88290)) b!808190))

(assert (=> b!808190 m!750365))

(assert (=> b!808190 m!750365))

(assert (=> b!808190 m!750367))

(declare-fun m!750447 () Bool)

(assert (=> b!808190 m!750447))

(declare-fun m!750449 () Bool)

(assert (=> d!103669 m!750449))

(declare-fun m!750451 () Bool)

(assert (=> d!103669 m!750451))

(assert (=> d!103669 m!750373))

(assert (=> d!103669 m!750379))

(assert (=> b!808101 d!103669))

(declare-fun b!808195 () Bool)

(declare-fun e!447408 () SeekEntryResult!8641)

(declare-fun lt!362168 () SeekEntryResult!8641)

(assert (=> b!808195 (= e!447408 (Found!8641 (index!36933 lt!362168)))))

(declare-fun e!447407 () SeekEntryResult!8641)

(declare-fun b!808196 () Bool)

(assert (=> b!808196 (= e!447407 (seekKeyOrZeroReturnVacant!0 (x!67758 lt!362168) (index!36933 lt!362168) (index!36933 lt!362168) (select (arr!21043 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808197 () Bool)

(declare-fun c!88293 () Bool)

(declare-fun lt!362170 () (_ BitVec 64))

(assert (=> b!808197 (= c!88293 (= lt!362170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808197 (= e!447408 e!447407)))

(declare-fun b!808198 () Bool)

(declare-fun e!447409 () SeekEntryResult!8641)

(assert (=> b!808198 (= e!447409 e!447408)))

(assert (=> b!808198 (= lt!362170 (select (arr!21043 a!3170) (index!36933 lt!362168)))))

(declare-fun c!88292 () Bool)

(assert (=> b!808198 (= c!88292 (= lt!362170 (select (arr!21043 a!3170) j!153)))))

(declare-fun d!103673 () Bool)

(declare-fun lt!362169 () SeekEntryResult!8641)

(assert (=> d!103673 (and (or ((_ is Undefined!8641) lt!362169) (not ((_ is Found!8641) lt!362169)) (and (bvsge (index!36932 lt!362169) #b00000000000000000000000000000000) (bvslt (index!36932 lt!362169) (size!21464 a!3170)))) (or ((_ is Undefined!8641) lt!362169) ((_ is Found!8641) lt!362169) (not ((_ is MissingZero!8641) lt!362169)) (and (bvsge (index!36931 lt!362169) #b00000000000000000000000000000000) (bvslt (index!36931 lt!362169) (size!21464 a!3170)))) (or ((_ is Undefined!8641) lt!362169) ((_ is Found!8641) lt!362169) ((_ is MissingZero!8641) lt!362169) (not ((_ is MissingVacant!8641) lt!362169)) (and (bvsge (index!36934 lt!362169) #b00000000000000000000000000000000) (bvslt (index!36934 lt!362169) (size!21464 a!3170)))) (or ((_ is Undefined!8641) lt!362169) (ite ((_ is Found!8641) lt!362169) (= (select (arr!21043 a!3170) (index!36932 lt!362169)) (select (arr!21043 a!3170) j!153)) (ite ((_ is MissingZero!8641) lt!362169) (= (select (arr!21043 a!3170) (index!36931 lt!362169)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8641) lt!362169) (= (select (arr!21043 a!3170) (index!36934 lt!362169)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103673 (= lt!362169 e!447409)))

(declare-fun c!88291 () Bool)

(assert (=> d!103673 (= c!88291 (and ((_ is Intermediate!8641) lt!362168) (undefined!9453 lt!362168)))))

(assert (=> d!103673 (= lt!362168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21043 a!3170) j!153) mask!3266) (select (arr!21043 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103673 (validMask!0 mask!3266)))

(assert (=> d!103673 (= (seekEntryOrOpen!0 (select (arr!21043 a!3170) j!153) a!3170 mask!3266) lt!362169)))

(declare-fun b!808199 () Bool)

(assert (=> b!808199 (= e!447409 Undefined!8641)))

(declare-fun b!808200 () Bool)

(assert (=> b!808200 (= e!447407 (MissingZero!8641 (index!36933 lt!362168)))))

(assert (= (and d!103673 c!88291) b!808199))

(assert (= (and d!103673 (not c!88291)) b!808198))

(assert (= (and b!808198 c!88292) b!808195))

(assert (= (and b!808198 (not c!88292)) b!808197))

(assert (= (and b!808197 c!88293) b!808200))

(assert (= (and b!808197 (not c!88293)) b!808196))

(assert (=> b!808196 m!750367))

(declare-fun m!750453 () Bool)

(assert (=> b!808196 m!750453))

(declare-fun m!750455 () Bool)

(assert (=> b!808198 m!750455))

(declare-fun m!750457 () Bool)

(assert (=> d!103673 m!750457))

(declare-fun m!750459 () Bool)

(assert (=> d!103673 m!750459))

(assert (=> d!103673 m!750367))

(declare-fun m!750461 () Bool)

(assert (=> d!103673 m!750461))

(assert (=> d!103673 m!750461))

(assert (=> d!103673 m!750367))

(declare-fun m!750463 () Bool)

(assert (=> d!103673 m!750463))

(declare-fun m!750465 () Bool)

(assert (=> d!103673 m!750465))

(assert (=> d!103673 m!750379))

(assert (=> b!808101 d!103673))

(declare-fun b!808201 () Bool)

(declare-fun e!447411 () SeekEntryResult!8641)

(declare-fun lt!362171 () SeekEntryResult!8641)

(assert (=> b!808201 (= e!447411 (Found!8641 (index!36933 lt!362171)))))

(declare-fun b!808202 () Bool)

(declare-fun e!447410 () SeekEntryResult!8641)

(assert (=> b!808202 (= e!447410 (seekKeyOrZeroReturnVacant!0 (x!67758 lt!362171) (index!36933 lt!362171) (index!36933 lt!362171) lt!362127 lt!362125 mask!3266))))

(declare-fun b!808203 () Bool)

(declare-fun c!88296 () Bool)

(declare-fun lt!362173 () (_ BitVec 64))

(assert (=> b!808203 (= c!88296 (= lt!362173 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808203 (= e!447411 e!447410)))

(declare-fun b!808204 () Bool)

(declare-fun e!447412 () SeekEntryResult!8641)

(assert (=> b!808204 (= e!447412 e!447411)))

(assert (=> b!808204 (= lt!362173 (select (arr!21043 lt!362125) (index!36933 lt!362171)))))

(declare-fun c!88295 () Bool)

(assert (=> b!808204 (= c!88295 (= lt!362173 lt!362127))))

(declare-fun d!103675 () Bool)

(declare-fun lt!362172 () SeekEntryResult!8641)

(assert (=> d!103675 (and (or ((_ is Undefined!8641) lt!362172) (not ((_ is Found!8641) lt!362172)) (and (bvsge (index!36932 lt!362172) #b00000000000000000000000000000000) (bvslt (index!36932 lt!362172) (size!21464 lt!362125)))) (or ((_ is Undefined!8641) lt!362172) ((_ is Found!8641) lt!362172) (not ((_ is MissingZero!8641) lt!362172)) (and (bvsge (index!36931 lt!362172) #b00000000000000000000000000000000) (bvslt (index!36931 lt!362172) (size!21464 lt!362125)))) (or ((_ is Undefined!8641) lt!362172) ((_ is Found!8641) lt!362172) ((_ is MissingZero!8641) lt!362172) (not ((_ is MissingVacant!8641) lt!362172)) (and (bvsge (index!36934 lt!362172) #b00000000000000000000000000000000) (bvslt (index!36934 lt!362172) (size!21464 lt!362125)))) (or ((_ is Undefined!8641) lt!362172) (ite ((_ is Found!8641) lt!362172) (= (select (arr!21043 lt!362125) (index!36932 lt!362172)) lt!362127) (ite ((_ is MissingZero!8641) lt!362172) (= (select (arr!21043 lt!362125) (index!36931 lt!362172)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8641) lt!362172) (= (select (arr!21043 lt!362125) (index!36934 lt!362172)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103675 (= lt!362172 e!447412)))

(declare-fun c!88294 () Bool)

(assert (=> d!103675 (= c!88294 (and ((_ is Intermediate!8641) lt!362171) (undefined!9453 lt!362171)))))

(assert (=> d!103675 (= lt!362171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362127 mask!3266) lt!362127 lt!362125 mask!3266))))

(assert (=> d!103675 (validMask!0 mask!3266)))

(assert (=> d!103675 (= (seekEntryOrOpen!0 lt!362127 lt!362125 mask!3266) lt!362172)))

(declare-fun b!808205 () Bool)

(assert (=> b!808205 (= e!447412 Undefined!8641)))

(declare-fun b!808206 () Bool)

(assert (=> b!808206 (= e!447410 (MissingZero!8641 (index!36933 lt!362171)))))

(assert (= (and d!103675 c!88294) b!808205))

(assert (= (and d!103675 (not c!88294)) b!808204))

(assert (= (and b!808204 c!88295) b!808201))

(assert (= (and b!808204 (not c!88295)) b!808203))

(assert (= (and b!808203 c!88296) b!808206))

(assert (= (and b!808203 (not c!88296)) b!808202))

(declare-fun m!750467 () Bool)

(assert (=> b!808202 m!750467))

(declare-fun m!750469 () Bool)

(assert (=> b!808204 m!750469))

(declare-fun m!750471 () Bool)

(assert (=> d!103675 m!750471))

(declare-fun m!750473 () Bool)

(assert (=> d!103675 m!750473))

(declare-fun m!750475 () Bool)

(assert (=> d!103675 m!750475))

(assert (=> d!103675 m!750475))

(declare-fun m!750477 () Bool)

(assert (=> d!103675 m!750477))

(declare-fun m!750479 () Bool)

(assert (=> d!103675 m!750479))

(assert (=> d!103675 m!750379))

(assert (=> b!808107 d!103675))

(declare-fun b!808207 () Bool)

(declare-fun e!447415 () SeekEntryResult!8641)

(assert (=> b!808207 (= e!447415 (Found!8641 index!1236))))

(declare-fun e!447414 () SeekEntryResult!8641)

(declare-fun b!808208 () Bool)

(assert (=> b!808208 (= e!447414 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362127 lt!362125 mask!3266))))

(declare-fun b!808209 () Bool)

(declare-fun e!447413 () SeekEntryResult!8641)

(assert (=> b!808209 (= e!447413 e!447415)))

(declare-fun c!88298 () Bool)

(declare-fun lt!362174 () (_ BitVec 64))

(assert (=> b!808209 (= c!88298 (= lt!362174 lt!362127))))

(declare-fun b!808210 () Bool)

(assert (=> b!808210 (= e!447413 Undefined!8641)))

(declare-fun b!808211 () Bool)

(assert (=> b!808211 (= e!447414 (MissingVacant!8641 vacantAfter!23))))

(declare-fun b!808212 () Bool)

(declare-fun c!88299 () Bool)

(assert (=> b!808212 (= c!88299 (= lt!362174 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808212 (= e!447415 e!447414)))

(declare-fun lt!362175 () SeekEntryResult!8641)

(declare-fun d!103677 () Bool)

(assert (=> d!103677 (and (or ((_ is Undefined!8641) lt!362175) (not ((_ is Found!8641) lt!362175)) (and (bvsge (index!36932 lt!362175) #b00000000000000000000000000000000) (bvslt (index!36932 lt!362175) (size!21464 lt!362125)))) (or ((_ is Undefined!8641) lt!362175) ((_ is Found!8641) lt!362175) (not ((_ is MissingVacant!8641) lt!362175)) (not (= (index!36934 lt!362175) vacantAfter!23)) (and (bvsge (index!36934 lt!362175) #b00000000000000000000000000000000) (bvslt (index!36934 lt!362175) (size!21464 lt!362125)))) (or ((_ is Undefined!8641) lt!362175) (ite ((_ is Found!8641) lt!362175) (= (select (arr!21043 lt!362125) (index!36932 lt!362175)) lt!362127) (and ((_ is MissingVacant!8641) lt!362175) (= (index!36934 lt!362175) vacantAfter!23) (= (select (arr!21043 lt!362125) (index!36934 lt!362175)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103677 (= lt!362175 e!447413)))

(declare-fun c!88297 () Bool)

(assert (=> d!103677 (= c!88297 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103677 (= lt!362174 (select (arr!21043 lt!362125) index!1236))))

(assert (=> d!103677 (validMask!0 mask!3266)))

(assert (=> d!103677 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362127 lt!362125 mask!3266) lt!362175)))

(assert (= (and d!103677 c!88297) b!808210))

(assert (= (and d!103677 (not c!88297)) b!808209))

(assert (= (and b!808209 c!88298) b!808207))

(assert (= (and b!808209 (not c!88298)) b!808212))

(assert (= (and b!808212 c!88299) b!808211))

(assert (= (and b!808212 (not c!88299)) b!808208))

(assert (=> b!808208 m!750365))

(assert (=> b!808208 m!750365))

(declare-fun m!750481 () Bool)

(assert (=> b!808208 m!750481))

(declare-fun m!750483 () Bool)

(assert (=> d!103677 m!750483))

(declare-fun m!750485 () Bool)

(assert (=> d!103677 m!750485))

(declare-fun m!750487 () Bool)

(assert (=> d!103677 m!750487))

(assert (=> d!103677 m!750379))

(assert (=> b!808107 d!103677))

(declare-fun b!808221 () Bool)

(declare-fun e!447423 () Bool)

(declare-fun call!35385 () Bool)

(assert (=> b!808221 (= e!447423 call!35385)))

(declare-fun b!808222 () Bool)

(declare-fun e!447422 () Bool)

(assert (=> b!808222 (= e!447422 call!35385)))

(declare-fun b!808223 () Bool)

(declare-fun e!447424 () Bool)

(assert (=> b!808223 (= e!447424 e!447422)))

(declare-fun c!88302 () Bool)

(assert (=> b!808223 (= c!88302 (validKeyInArray!0 (select (arr!21043 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103681 () Bool)

(declare-fun res!552439 () Bool)

(assert (=> d!103681 (=> res!552439 e!447424)))

(assert (=> d!103681 (= res!552439 (bvsge #b00000000000000000000000000000000 (size!21464 a!3170)))))

(assert (=> d!103681 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!447424)))

(declare-fun b!808224 () Bool)

(assert (=> b!808224 (= e!447422 e!447423)))

(declare-fun lt!362183 () (_ BitVec 64))

(assert (=> b!808224 (= lt!362183 (select (arr!21043 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27596 0))(
  ( (Unit!27597) )
))
(declare-fun lt!362182 () Unit!27596)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43939 (_ BitVec 64) (_ BitVec 32)) Unit!27596)

(assert (=> b!808224 (= lt!362182 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362183 #b00000000000000000000000000000000))))

(assert (=> b!808224 (arrayContainsKey!0 a!3170 lt!362183 #b00000000000000000000000000000000)))

(declare-fun lt!362184 () Unit!27596)

(assert (=> b!808224 (= lt!362184 lt!362182)))

(declare-fun res!552438 () Bool)

(assert (=> b!808224 (= res!552438 (= (seekEntryOrOpen!0 (select (arr!21043 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8641 #b00000000000000000000000000000000)))))

(assert (=> b!808224 (=> (not res!552438) (not e!447423))))

(declare-fun bm!35382 () Bool)

(assert (=> bm!35382 (= call!35385 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(assert (= (and d!103681 (not res!552439)) b!808223))

(assert (= (and b!808223 c!88302) b!808224))

(assert (= (and b!808223 (not c!88302)) b!808222))

(assert (= (and b!808224 res!552438) b!808221))

(assert (= (or b!808221 b!808222) bm!35382))

(declare-fun m!750489 () Bool)

(assert (=> b!808223 m!750489))

(assert (=> b!808223 m!750489))

(declare-fun m!750491 () Bool)

(assert (=> b!808223 m!750491))

(assert (=> b!808224 m!750489))

(declare-fun m!750493 () Bool)

(assert (=> b!808224 m!750493))

(declare-fun m!750495 () Bool)

(assert (=> b!808224 m!750495))

(assert (=> b!808224 m!750489))

(declare-fun m!750497 () Bool)

(assert (=> b!808224 m!750497))

(declare-fun m!750499 () Bool)

(assert (=> bm!35382 m!750499))

(assert (=> b!808102 d!103681))

(declare-fun d!103683 () Bool)

(declare-fun lt!362197 () (_ BitVec 32))

(assert (=> d!103683 (and (bvsge lt!362197 #b00000000000000000000000000000000) (bvslt lt!362197 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103683 (= lt!362197 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103683 (validMask!0 mask!3266)))

(assert (=> d!103683 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!362197)))

(declare-fun bs!22384 () Bool)

(assert (= bs!22384 d!103683))

(declare-fun m!750501 () Bool)

(assert (=> bs!22384 m!750501))

(assert (=> bs!22384 m!750379))

(assert (=> b!808097 d!103683))

(declare-fun d!103685 () Bool)

(declare-fun res!552444 () Bool)

(declare-fun e!447441 () Bool)

(assert (=> d!103685 (=> res!552444 e!447441)))

(assert (=> d!103685 (= res!552444 (= (select (arr!21043 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!103685 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!447441)))

(declare-fun b!808253 () Bool)

(declare-fun e!447442 () Bool)

(assert (=> b!808253 (= e!447441 e!447442)))

(declare-fun res!552445 () Bool)

(assert (=> b!808253 (=> (not res!552445) (not e!447442))))

(assert (=> b!808253 (= res!552445 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21464 a!3170)))))

(declare-fun b!808254 () Bool)

(assert (=> b!808254 (= e!447442 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103685 (not res!552444)) b!808253))

(assert (= (and b!808253 res!552445) b!808254))

(assert (=> d!103685 m!750489))

(declare-fun m!750503 () Bool)

(assert (=> b!808254 m!750503))

(assert (=> b!808103 d!103685))

(declare-fun d!103687 () Bool)

(assert (=> d!103687 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808098 d!103687))

(declare-fun d!103689 () Bool)

(assert (=> d!103689 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69288 d!103689))

(declare-fun d!103695 () Bool)

(assert (=> d!103695 (= (array_inv!16817 a!3170) (bvsge (size!21464 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69288 d!103695))

(declare-fun b!808299 () Bool)

(declare-fun e!447474 () Bool)

(declare-fun call!35393 () Bool)

(assert (=> b!808299 (= e!447474 call!35393)))

(declare-fun b!808300 () Bool)

(declare-fun e!447476 () Bool)

(assert (=> b!808300 (= e!447476 e!447474)))

(declare-fun c!88328 () Bool)

(assert (=> b!808300 (= c!88328 (validKeyInArray!0 (select (arr!21043 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!808301 () Bool)

(declare-fun e!447477 () Bool)

(assert (=> b!808301 (= e!447477 e!447476)))

(declare-fun res!552464 () Bool)

(assert (=> b!808301 (=> (not res!552464) (not e!447476))))

(declare-fun e!447475 () Bool)

(assert (=> b!808301 (= res!552464 (not e!447475))))

(declare-fun res!552465 () Bool)

(assert (=> b!808301 (=> (not res!552465) (not e!447475))))

(assert (=> b!808301 (= res!552465 (validKeyInArray!0 (select (arr!21043 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!808302 () Bool)

(declare-fun contains!4128 (List!15059 (_ BitVec 64)) Bool)

(assert (=> b!808302 (= e!447475 (contains!4128 Nil!15056 (select (arr!21043 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!808303 () Bool)

(assert (=> b!808303 (= e!447474 call!35393)))

(declare-fun d!103697 () Bool)

(declare-fun res!552466 () Bool)

(assert (=> d!103697 (=> res!552466 e!447477)))

(assert (=> d!103697 (= res!552466 (bvsge #b00000000000000000000000000000000 (size!21464 a!3170)))))

(assert (=> d!103697 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15056) e!447477)))

(declare-fun bm!35390 () Bool)

(assert (=> bm!35390 (= call!35393 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88328 (Cons!15055 (select (arr!21043 a!3170) #b00000000000000000000000000000000) Nil!15056) Nil!15056)))))

(assert (= (and d!103697 (not res!552466)) b!808301))

(assert (= (and b!808301 res!552465) b!808302))

(assert (= (and b!808301 res!552464) b!808300))

(assert (= (and b!808300 c!88328) b!808299))

(assert (= (and b!808300 (not c!88328)) b!808303))

(assert (= (or b!808299 b!808303) bm!35390))

(assert (=> b!808300 m!750489))

(assert (=> b!808300 m!750489))

(assert (=> b!808300 m!750491))

(assert (=> b!808301 m!750489))

(assert (=> b!808301 m!750489))

(assert (=> b!808301 m!750491))

(assert (=> b!808302 m!750489))

(assert (=> b!808302 m!750489))

(declare-fun m!750537 () Bool)

(assert (=> b!808302 m!750537))

(assert (=> bm!35390 m!750489))

(declare-fun m!750539 () Bool)

(assert (=> bm!35390 m!750539))

(assert (=> b!808099 d!103697))

(check-sat (not b!808224) (not b!808208) (not d!103669) (not b!808300) (not bm!35390) (not d!103675) (not b!808302) (not b!808202) (not b!808301) (not b!808223) (not b!808190) (not d!103677) (not bm!35382) (not b!808154) (not d!103683) (not b!808254) (not d!103659) (not b!808196) (not d!103673))
(check-sat)
