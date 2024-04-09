; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69290 () Bool)

(assert start!69290)

(declare-fun b!808130 () Bool)

(declare-fun res!552430 () Bool)

(declare-fun e!447377 () Bool)

(assert (=> b!808130 (=> (not res!552430) (not e!447377))))

(declare-datatypes ((array!43941 0))(
  ( (array!43942 (arr!21044 (Array (_ BitVec 32) (_ BitVec 64))) (size!21465 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43941)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808130 (= res!552430 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808131 () Bool)

(declare-fun res!552426 () Bool)

(declare-fun e!447375 () Bool)

(assert (=> b!808131 (=> (not res!552426) (not e!447375))))

(declare-datatypes ((List!15060 0))(
  ( (Nil!15057) (Cons!15056 (h!16185 (_ BitVec 64)) (t!21383 List!15060)) )
))
(declare-fun arrayNoDuplicates!0 (array!43941 (_ BitVec 32) List!15060) Bool)

(assert (=> b!808131 (= res!552426 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15057))))

(declare-fun b!808132 () Bool)

(declare-fun e!447378 () Bool)

(declare-fun e!447376 () Bool)

(assert (=> b!808132 (= e!447378 e!447376)))

(declare-fun res!552427 () Bool)

(assert (=> b!808132 (=> (not res!552427) (not e!447376))))

(declare-datatypes ((SeekEntryResult!8642 0))(
  ( (MissingZero!8642 (index!36935 (_ BitVec 32))) (Found!8642 (index!36936 (_ BitVec 32))) (Intermediate!8642 (undefined!9454 Bool) (index!36937 (_ BitVec 32)) (x!67759 (_ BitVec 32))) (Undefined!8642) (MissingVacant!8642 (index!36938 (_ BitVec 32))) )
))
(declare-fun lt!362146 () SeekEntryResult!8642)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!362145 () SeekEntryResult!8642)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!808132 (= res!552427 (and (= lt!362146 lt!362145) (= lt!362145 (Found!8642 j!153)) (not (= (select (arr!21044 a!3170) index!1236) (select (arr!21044 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43941 (_ BitVec 32)) SeekEntryResult!8642)

(assert (=> b!808132 (= lt!362145 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21044 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43941 (_ BitVec 32)) SeekEntryResult!8642)

(assert (=> b!808132 (= lt!362146 (seekEntryOrOpen!0 (select (arr!21044 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808133 () Bool)

(assert (=> b!808133 (= e!447377 e!447375)))

(declare-fun res!552433 () Bool)

(assert (=> b!808133 (=> (not res!552433) (not e!447375))))

(declare-fun lt!362141 () SeekEntryResult!8642)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!808133 (= res!552433 (or (= lt!362141 (MissingZero!8642 i!1163)) (= lt!362141 (MissingVacant!8642 i!1163))))))

(assert (=> b!808133 (= lt!362141 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808134 () Bool)

(assert (=> b!808134 (= e!447375 e!447378)))

(declare-fun res!552423 () Bool)

(assert (=> b!808134 (=> (not res!552423) (not e!447378))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362144 () array!43941)

(declare-fun lt!362142 () (_ BitVec 64))

(assert (=> b!808134 (= res!552423 (= (seekEntryOrOpen!0 lt!362142 lt!362144 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362142 lt!362144 mask!3266)))))

(assert (=> b!808134 (= lt!362142 (select (store (arr!21044 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808134 (= lt!362144 (array!43942 (store (arr!21044 a!3170) i!1163 k!2044) (size!21465 a!3170)))))

(declare-fun b!808135 () Bool)

(declare-fun res!552429 () Bool)

(assert (=> b!808135 (=> (not res!552429) (not e!447375))))

(assert (=> b!808135 (= res!552429 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21465 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21044 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21465 a!3170)) (= (select (arr!21044 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808136 () Bool)

(declare-fun res!552424 () Bool)

(assert (=> b!808136 (=> (not res!552424) (not e!447375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43941 (_ BitVec 32)) Bool)

(assert (=> b!808136 (= res!552424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808138 () Bool)

(declare-fun res!552431 () Bool)

(assert (=> b!808138 (=> (not res!552431) (not e!447377))))

(assert (=> b!808138 (= res!552431 (and (= (size!21465 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21465 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21465 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808139 () Bool)

(assert (=> b!808139 (= e!447376 (bvsgt (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(declare-fun lt!362143 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808139 (= lt!362143 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808140 () Bool)

(declare-fun res!552425 () Bool)

(assert (=> b!808140 (=> (not res!552425) (not e!447377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808140 (= res!552425 (validKeyInArray!0 (select (arr!21044 a!3170) j!153)))))

(declare-fun res!552432 () Bool)

(assert (=> start!69290 (=> (not res!552432) (not e!447377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69290 (= res!552432 (validMask!0 mask!3266))))

(assert (=> start!69290 e!447377))

(assert (=> start!69290 true))

(declare-fun array_inv!16818 (array!43941) Bool)

(assert (=> start!69290 (array_inv!16818 a!3170)))

(declare-fun b!808137 () Bool)

(declare-fun res!552428 () Bool)

(assert (=> b!808137 (=> (not res!552428) (not e!447377))))

(assert (=> b!808137 (= res!552428 (validKeyInArray!0 k!2044))))

(assert (= (and start!69290 res!552432) b!808138))

(assert (= (and b!808138 res!552431) b!808140))

(assert (= (and b!808140 res!552425) b!808137))

(assert (= (and b!808137 res!552428) b!808130))

(assert (= (and b!808130 res!552430) b!808133))

(assert (= (and b!808133 res!552433) b!808136))

(assert (= (and b!808136 res!552424) b!808131))

(assert (= (and b!808131 res!552426) b!808135))

(assert (= (and b!808135 res!552429) b!808134))

(assert (= (and b!808134 res!552423) b!808132))

(assert (= (and b!808132 res!552427) b!808139))

(declare-fun m!750389 () Bool)

(assert (=> b!808140 m!750389))

(assert (=> b!808140 m!750389))

(declare-fun m!750391 () Bool)

(assert (=> b!808140 m!750391))

(declare-fun m!750393 () Bool)

(assert (=> b!808132 m!750393))

(assert (=> b!808132 m!750389))

(assert (=> b!808132 m!750389))

(declare-fun m!750395 () Bool)

(assert (=> b!808132 m!750395))

(assert (=> b!808132 m!750389))

(declare-fun m!750397 () Bool)

(assert (=> b!808132 m!750397))

(declare-fun m!750399 () Bool)

(assert (=> b!808139 m!750399))

(declare-fun m!750401 () Bool)

(assert (=> b!808137 m!750401))

(declare-fun m!750403 () Bool)

(assert (=> start!69290 m!750403))

(declare-fun m!750405 () Bool)

(assert (=> start!69290 m!750405))

(declare-fun m!750407 () Bool)

(assert (=> b!808130 m!750407))

(declare-fun m!750409 () Bool)

(assert (=> b!808131 m!750409))

(declare-fun m!750411 () Bool)

(assert (=> b!808133 m!750411))

(declare-fun m!750413 () Bool)

(assert (=> b!808135 m!750413))

(declare-fun m!750415 () Bool)

(assert (=> b!808135 m!750415))

(declare-fun m!750417 () Bool)

(assert (=> b!808136 m!750417))

(declare-fun m!750419 () Bool)

(assert (=> b!808134 m!750419))

(declare-fun m!750421 () Bool)

(assert (=> b!808134 m!750421))

(declare-fun m!750423 () Bool)

(assert (=> b!808134 m!750423))

(declare-fun m!750425 () Bool)

(assert (=> b!808134 m!750425))

(push 1)

(assert (not b!808133))

(assert (not b!808131))

(assert (not b!808134))

(assert (not b!808137))

(assert (not b!808139))

(assert (not start!69290))

(assert (not b!808136))

(assert (not b!808140))

(assert (not b!808132))

(assert (not b!808130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!808255 () Bool)

(declare-fun c!88316 () Bool)

(declare-fun lt!362199 () (_ BitVec 64))

(assert (=> b!808255 (= c!88316 (= lt!362199 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447444 () SeekEntryResult!8642)

(declare-fun e!447443 () SeekEntryResult!8642)

(assert (=> b!808255 (= e!447444 e!447443)))

(declare-fun b!808256 () Bool)

(declare-fun e!447445 () SeekEntryResult!8642)

(assert (=> b!808256 (= e!447445 Undefined!8642)))

(declare-fun lt!362198 () SeekEntryResult!8642)

(declare-fun d!103679 () Bool)

(assert (=> d!103679 (and (or (is-Undefined!8642 lt!362198) (not (is-Found!8642 lt!362198)) (and (bvsge (index!36936 lt!362198) #b00000000000000000000000000000000) (bvslt (index!36936 lt!362198) (size!21465 a!3170)))) (or (is-Undefined!8642 lt!362198) (is-Found!8642 lt!362198) (not (is-MissingVacant!8642 lt!362198)) (not (= (index!36938 lt!362198) vacantBefore!23)) (and (bvsge (index!36938 lt!362198) #b00000000000000000000000000000000) (bvslt (index!36938 lt!362198) (size!21465 a!3170)))) (or (is-Undefined!8642 lt!362198) (ite (is-Found!8642 lt!362198) (= (select (arr!21044 a!3170) (index!36936 lt!362198)) (select (arr!21044 a!3170) j!153)) (and (is-MissingVacant!8642 lt!362198) (= (index!36938 lt!362198) vacantBefore!23) (= (select (arr!21044 a!3170) (index!36938 lt!362198)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103679 (= lt!362198 e!447445)))

(declare-fun c!88317 () Bool)

(assert (=> d!103679 (= c!88317 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103679 (= lt!362199 (select (arr!21044 a!3170) index!1236))))

(assert (=> d!103679 (validMask!0 mask!3266)))

(assert (=> d!103679 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21044 a!3170) j!153) a!3170 mask!3266) lt!362198)))

(declare-fun b!808257 () Bool)

(assert (=> b!808257 (= e!447445 e!447444)))

(declare-fun c!88315 () Bool)

(assert (=> b!808257 (= c!88315 (= lt!362199 (select (arr!21044 a!3170) j!153)))))

(declare-fun b!808258 () Bool)

(assert (=> b!808258 (= e!447443 (MissingVacant!8642 vacantBefore!23))))

(declare-fun b!808259 () Bool)

(assert (=> b!808259 (= e!447444 (Found!8642 index!1236))))

(declare-fun b!808260 () Bool)

(assert (=> b!808260 (= e!447443 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21044 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!103679 c!88317) b!808256))

(assert (= (and d!103679 (not c!88317)) b!808257))

(assert (= (and b!808257 c!88315) b!808259))

(assert (= (and b!808257 (not c!88315)) b!808255))

(assert (= (and b!808255 c!88316) b!808258))

(assert (= (and b!808255 (not c!88316)) b!808260))

(declare-fun m!750505 () Bool)

(assert (=> d!103679 m!750505))

(declare-fun m!750507 () Bool)

(assert (=> d!103679 m!750507))

(assert (=> d!103679 m!750393))

(assert (=> d!103679 m!750403))

(assert (=> b!808260 m!750399))

(assert (=> b!808260 m!750399))

(assert (=> b!808260 m!750389))

(declare-fun m!750509 () Bool)

(assert (=> b!808260 m!750509))

(assert (=> b!808132 d!103679))

(declare-fun b!808327 () Bool)

(declare-fun e!447495 () SeekEntryResult!8642)

(declare-fun lt!362219 () SeekEntryResult!8642)

(assert (=> b!808327 (= e!447495 (seekKeyOrZeroReturnVacant!0 (x!67759 lt!362219) (index!36937 lt!362219) (index!36937 lt!362219) (select (arr!21044 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808328 () Bool)

(assert (=> b!808328 (= e!447495 (MissingZero!8642 (index!36937 lt!362219)))))

(declare-fun b!808329 () Bool)

(declare-fun e!447494 () SeekEntryResult!8642)

(assert (=> b!808329 (= e!447494 (Found!8642 (index!36937 lt!362219)))))

(declare-fun b!808330 () Bool)

(declare-fun e!447496 () SeekEntryResult!8642)

(assert (=> b!808330 (= e!447496 e!447494)))

(declare-fun lt!362218 () (_ BitVec 64))

(assert (=> b!808330 (= lt!362218 (select (arr!21044 a!3170) (index!36937 lt!362219)))))

(declare-fun c!88337 () Bool)

(assert (=> b!808330 (= c!88337 (= lt!362218 (select (arr!21044 a!3170) j!153)))))

(declare-fun d!103691 () Bool)

(declare-fun lt!362220 () SeekEntryResult!8642)

(assert (=> d!103691 (and (or (is-Undefined!8642 lt!362220) (not (is-Found!8642 lt!362220)) (and (bvsge (index!36936 lt!362220) #b00000000000000000000000000000000) (bvslt (index!36936 lt!362220) (size!21465 a!3170)))) (or (is-Undefined!8642 lt!362220) (is-Found!8642 lt!362220) (not (is-MissingZero!8642 lt!362220)) (and (bvsge (index!36935 lt!362220) #b00000000000000000000000000000000) (bvslt (index!36935 lt!362220) (size!21465 a!3170)))) (or (is-Undefined!8642 lt!362220) (is-Found!8642 lt!362220) (is-MissingZero!8642 lt!362220) (not (is-MissingVacant!8642 lt!362220)) (and (bvsge (index!36938 lt!362220) #b00000000000000000000000000000000) (bvslt (index!36938 lt!362220) (size!21465 a!3170)))) (or (is-Undefined!8642 lt!362220) (ite (is-Found!8642 lt!362220) (= (select (arr!21044 a!3170) (index!36936 lt!362220)) (select (arr!21044 a!3170) j!153)) (ite (is-MissingZero!8642 lt!362220) (= (select (arr!21044 a!3170) (index!36935 lt!362220)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8642 lt!362220) (= (select (arr!21044 a!3170) (index!36938 lt!362220)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103691 (= lt!362220 e!447496)))

(declare-fun c!88336 () Bool)

(assert (=> d!103691 (= c!88336 (and (is-Intermediate!8642 lt!362219) (undefined!9454 lt!362219)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43941 (_ BitVec 32)) SeekEntryResult!8642)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103691 (= lt!362219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21044 a!3170) j!153) mask!3266) (select (arr!21044 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103691 (validMask!0 mask!3266)))

(assert (=> d!103691 (= (seekEntryOrOpen!0 (select (arr!21044 a!3170) j!153) a!3170 mask!3266) lt!362220)))

(declare-fun b!808331 () Bool)

(assert (=> b!808331 (= e!447496 Undefined!8642)))

(declare-fun b!808332 () Bool)

(declare-fun c!88338 () Bool)

(assert (=> b!808332 (= c!88338 (= lt!362218 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808332 (= e!447494 e!447495)))

(assert (= (and d!103691 c!88336) b!808331))

(assert (= (and d!103691 (not c!88336)) b!808330))

(assert (= (and b!808330 c!88337) b!808329))

(assert (= (and b!808330 (not c!88337)) b!808332))

(assert (= (and b!808332 c!88338) b!808328))

(assert (= (and b!808332 (not c!88338)) b!808327))

(assert (=> b!808327 m!750389))

(declare-fun m!750547 () Bool)

(assert (=> b!808327 m!750547))

(declare-fun m!750549 () Bool)

(assert (=> b!808330 m!750549))

(declare-fun m!750551 () Bool)

(assert (=> d!103691 m!750551))

(assert (=> d!103691 m!750403))

(declare-fun m!750553 () Bool)

(assert (=> d!103691 m!750553))

(assert (=> d!103691 m!750389))

(declare-fun m!750555 () Bool)

(assert (=> d!103691 m!750555))

(assert (=> d!103691 m!750389))

(assert (=> d!103691 m!750553))

(declare-fun m!750557 () Bool)

(assert (=> d!103691 m!750557))

(declare-fun m!750559 () Bool)

(assert (=> d!103691 m!750559))

(assert (=> b!808132 d!103691))

(declare-fun b!808333 () Bool)

(declare-fun e!447498 () SeekEntryResult!8642)

(declare-fun lt!362222 () SeekEntryResult!8642)

(assert (=> b!808333 (= e!447498 (seekKeyOrZeroReturnVacant!0 (x!67759 lt!362222) (index!36937 lt!362222) (index!36937 lt!362222) k!2044 a!3170 mask!3266))))

(declare-fun b!808334 () Bool)

(assert (=> b!808334 (= e!447498 (MissingZero!8642 (index!36937 lt!362222)))))

(declare-fun b!808335 () Bool)

(declare-fun e!447497 () SeekEntryResult!8642)

(assert (=> b!808335 (= e!447497 (Found!8642 (index!36937 lt!362222)))))

(declare-fun b!808336 () Bool)

(declare-fun e!447499 () SeekEntryResult!8642)

(assert (=> b!808336 (= e!447499 e!447497)))

(declare-fun lt!362221 () (_ BitVec 64))

(assert (=> b!808336 (= lt!362221 (select (arr!21044 a!3170) (index!36937 lt!362222)))))

(declare-fun c!88340 () Bool)

(assert (=> b!808336 (= c!88340 (= lt!362221 k!2044))))

(declare-fun d!103705 () Bool)

(declare-fun lt!362223 () SeekEntryResult!8642)

(assert (=> d!103705 (and (or (is-Undefined!8642 lt!362223) (not (is-Found!8642 lt!362223)) (and (bvsge (index!36936 lt!362223) #b00000000000000000000000000000000) (bvslt (index!36936 lt!362223) (size!21465 a!3170)))) (or (is-Undefined!8642 lt!362223) (is-Found!8642 lt!362223) (not (is-MissingZero!8642 lt!362223)) (and (bvsge (index!36935 lt!362223) #b00000000000000000000000000000000) (bvslt (index!36935 lt!362223) (size!21465 a!3170)))) (or (is-Undefined!8642 lt!362223) (is-Found!8642 lt!362223) (is-MissingZero!8642 lt!362223) (not (is-MissingVacant!8642 lt!362223)) (and (bvsge (index!36938 lt!362223) #b00000000000000000000000000000000) (bvslt (index!36938 lt!362223) (size!21465 a!3170)))) (or (is-Undefined!8642 lt!362223) (ite (is-Found!8642 lt!362223) (= (select (arr!21044 a!3170) (index!36936 lt!362223)) k!2044) (ite (is-MissingZero!8642 lt!362223) (= (select (arr!21044 a!3170) (index!36935 lt!362223)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8642 lt!362223) (= (select (arr!21044 a!3170) (index!36938 lt!362223)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103705 (= lt!362223 e!447499)))

(declare-fun c!88339 () Bool)

(assert (=> d!103705 (= c!88339 (and (is-Intermediate!8642 lt!362222) (undefined!9454 lt!362222)))))

(assert (=> d!103705 (= lt!362222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103705 (validMask!0 mask!3266)))

(assert (=> d!103705 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!362223)))

(declare-fun b!808337 () Bool)

(assert (=> b!808337 (= e!447499 Undefined!8642)))

(declare-fun b!808338 () Bool)

(declare-fun c!88341 () Bool)

(assert (=> b!808338 (= c!88341 (= lt!362221 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808338 (= e!447497 e!447498)))

(assert (= (and d!103705 c!88339) b!808337))

(assert (= (and d!103705 (not c!88339)) b!808336))

(assert (= (and b!808336 c!88340) b!808335))

(assert (= (and b!808336 (not c!88340)) b!808338))

(assert (= (and b!808338 c!88341) b!808334))

(assert (= (and b!808338 (not c!88341)) b!808333))

(declare-fun m!750561 () Bool)

(assert (=> b!808333 m!750561))

