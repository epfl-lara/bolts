; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68476 () Bool)

(assert start!68476)

(declare-fun res!540261 () Bool)

(declare-fun e!441558 () Bool)

(assert (=> start!68476 (=> (not res!540261) (not e!441558))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68476 (= res!540261 (validMask!0 mask!3266))))

(assert (=> start!68476 e!441558))

(assert (=> start!68476 true))

(declare-datatypes ((array!43217 0))(
  ( (array!43218 (arr!20685 (Array (_ BitVec 32) (_ BitVec 64))) (size!21106 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43217)

(declare-fun array_inv!16459 (array!43217) Bool)

(assert (=> start!68476 (array_inv!16459 a!3170)))

(declare-fun b!795570 () Bool)

(declare-fun e!441557 () Bool)

(declare-fun e!441556 () Bool)

(assert (=> b!795570 (= e!441557 e!441556)))

(declare-fun res!540264 () Bool)

(assert (=> b!795570 (=> (not res!540264) (not e!441556))))

(declare-fun lt!354669 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354670 () array!43217)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8283 0))(
  ( (MissingZero!8283 (index!35499 (_ BitVec 32))) (Found!8283 (index!35500 (_ BitVec 32))) (Intermediate!8283 (undefined!9095 Bool) (index!35501 (_ BitVec 32)) (x!66442 (_ BitVec 32))) (Undefined!8283) (MissingVacant!8283 (index!35502 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43217 (_ BitVec 32)) SeekEntryResult!8283)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43217 (_ BitVec 32)) SeekEntryResult!8283)

(assert (=> b!795570 (= res!540264 (= (seekEntryOrOpen!0 lt!354669 lt!354670 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354669 lt!354670 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795570 (= lt!354669 (select (store (arr!20685 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795570 (= lt!354670 (array!43218 (store (arr!20685 a!3170) i!1163 k!2044) (size!21106 a!3170)))))

(declare-fun b!795571 () Bool)

(declare-fun res!540268 () Bool)

(assert (=> b!795571 (=> (not res!540268) (not e!441558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795571 (= res!540268 (validKeyInArray!0 (select (arr!20685 a!3170) j!153)))))

(declare-fun b!795572 () Bool)

(declare-fun res!540265 () Bool)

(assert (=> b!795572 (=> (not res!540265) (not e!441557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43217 (_ BitVec 32)) Bool)

(assert (=> b!795572 (= res!540265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795573 () Bool)

(declare-fun res!540262 () Bool)

(assert (=> b!795573 (=> (not res!540262) (not e!441558))))

(declare-fun arrayContainsKey!0 (array!43217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795573 (= res!540262 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun lt!354668 () SeekEntryResult!8283)

(declare-fun lt!354667 () SeekEntryResult!8283)

(declare-fun b!795574 () Bool)

(assert (=> b!795574 (= e!441556 (and (= lt!354668 lt!354667) (= lt!354667 (Found!8283 j!153)) (= (select (arr!20685 a!3170) index!1236) (select (arr!20685 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795574 (= lt!354667 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20685 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795574 (= lt!354668 (seekEntryOrOpen!0 (select (arr!20685 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795575 () Bool)

(declare-fun res!540267 () Bool)

(assert (=> b!795575 (=> (not res!540267) (not e!441558))))

(assert (=> b!795575 (= res!540267 (and (= (size!21106 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21106 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21106 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795576 () Bool)

(declare-fun res!540259 () Bool)

(assert (=> b!795576 (=> (not res!540259) (not e!441557))))

(declare-datatypes ((List!14701 0))(
  ( (Nil!14698) (Cons!14697 (h!15826 (_ BitVec 64)) (t!21024 List!14701)) )
))
(declare-fun arrayNoDuplicates!0 (array!43217 (_ BitVec 32) List!14701) Bool)

(assert (=> b!795576 (= res!540259 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14698))))

(declare-fun b!795577 () Bool)

(assert (=> b!795577 (= e!441558 e!441557)))

(declare-fun res!540266 () Bool)

(assert (=> b!795577 (=> (not res!540266) (not e!441557))))

(declare-fun lt!354666 () SeekEntryResult!8283)

(assert (=> b!795577 (= res!540266 (or (= lt!354666 (MissingZero!8283 i!1163)) (= lt!354666 (MissingVacant!8283 i!1163))))))

(assert (=> b!795577 (= lt!354666 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795578 () Bool)

(declare-fun res!540263 () Bool)

(assert (=> b!795578 (=> (not res!540263) (not e!441557))))

(assert (=> b!795578 (= res!540263 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21106 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20685 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21106 a!3170)) (= (select (arr!20685 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795579 () Bool)

(declare-fun res!540260 () Bool)

(assert (=> b!795579 (=> (not res!540260) (not e!441558))))

(assert (=> b!795579 (= res!540260 (validKeyInArray!0 k!2044))))

(assert (= (and start!68476 res!540261) b!795575))

(assert (= (and b!795575 res!540267) b!795571))

(assert (= (and b!795571 res!540268) b!795579))

(assert (= (and b!795579 res!540260) b!795573))

(assert (= (and b!795573 res!540262) b!795577))

(assert (= (and b!795577 res!540266) b!795572))

(assert (= (and b!795572 res!540265) b!795576))

(assert (= (and b!795576 res!540259) b!795578))

(assert (= (and b!795578 res!540263) b!795570))

(assert (= (and b!795570 res!540264) b!795574))

(declare-fun m!736351 () Bool)

(assert (=> b!795570 m!736351))

(declare-fun m!736353 () Bool)

(assert (=> b!795570 m!736353))

(declare-fun m!736355 () Bool)

(assert (=> b!795570 m!736355))

(declare-fun m!736357 () Bool)

(assert (=> b!795570 m!736357))

(declare-fun m!736359 () Bool)

(assert (=> b!795578 m!736359))

(declare-fun m!736361 () Bool)

(assert (=> b!795578 m!736361))

(declare-fun m!736363 () Bool)

(assert (=> b!795577 m!736363))

(declare-fun m!736365 () Bool)

(assert (=> b!795573 m!736365))

(declare-fun m!736367 () Bool)

(assert (=> b!795571 m!736367))

(assert (=> b!795571 m!736367))

(declare-fun m!736369 () Bool)

(assert (=> b!795571 m!736369))

(declare-fun m!736371 () Bool)

(assert (=> b!795579 m!736371))

(declare-fun m!736373 () Bool)

(assert (=> start!68476 m!736373))

(declare-fun m!736375 () Bool)

(assert (=> start!68476 m!736375))

(declare-fun m!736377 () Bool)

(assert (=> b!795576 m!736377))

(declare-fun m!736379 () Bool)

(assert (=> b!795572 m!736379))

(declare-fun m!736381 () Bool)

(assert (=> b!795574 m!736381))

(assert (=> b!795574 m!736367))

(assert (=> b!795574 m!736367))

(declare-fun m!736383 () Bool)

(assert (=> b!795574 m!736383))

(assert (=> b!795574 m!736367))

(declare-fun m!736385 () Bool)

(assert (=> b!795574 m!736385))

(push 1)

(assert (not b!795577))

(assert (not b!795573))

(assert (not b!795572))

(assert (not b!795574))

(assert (not b!795576))

(assert (not b!795571))

(assert (not start!68476))

(assert (not b!795570))

(assert (not b!795579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

